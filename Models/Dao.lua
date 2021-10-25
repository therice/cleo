--- @type AddOn
local _, AddOn = ...
local C = AddOn.Constants
--- @type LibUtil
local Util = AddOn:GetLibrary("Util")
--- @type LibLogging
local Logging = AddOn:GetLibrary("Logging")
--- @type Models.Versioned
local Versioned = AddOn.Package('Models').Versioned
--- @type Models.Referenceable
local Referenceable = AddOn.Require('Models.Referenceable')
--- @type Models.SemanticVersion
local SemanticVersion = AddOn.Package('Models').SemanticVersion
--- @type CallbackHandler
local Cbh = AddOn:GetLibrary("CallbackHandler")

local Events = {
	EntityCreated   =   "EntityCreated",
	EntityDeleted   =   "EntityDeleted",
	EntityUpdated   =   "EntityUpdated",
}

--- @class Models.Dao
local Dao = AddOn.Package('Models'):Class('Dao')
Dao.Events = Events

function Dao:initialize(module, db, entityClass)
	self.module = module
	self.db = db
	self.entityClass = entityClass
	self.callbacks = Cbh:New(self)
end

function Dao.Key(entity, attr)
	return entity.id .. '.' .. attr
end

function Dao:Create(...)
	if self.entityClass.CreateInstance then
		return self.entityClass.CreateInstance(...)
	end
	return self.entityClass(...)
end

function Dao:Reconstitute(id, attrs)
	local entity = self.entityClass:reconstitute(attrs)
	entity.id = id
	Logging:Trace("Dao.Reconstitute[%s](%s) : %s", tostring(self.entityClass), tostring(id), Util.Objects.ToString(entity:toTable()))
	return entity
end

function Dao:ShouldPersist()
	-- don't apply to persistence storage in test mode or if persistence mode is disabled
	return (not AddOn:TestModeEnabled() and AddOn:PersistenceModeEnabled()) or AddOn._IsTestContext()
end


-- C(reate)
function Dao:Add(entity)
	local asTable = entity:toTable()
	asTable['id'] = nil
	Logging:Trace("Dao.Add[%s](%s) : %s", tostring(self.entityClass), entity.id, Util.Objects.ToString(asTable))
	if self:ShouldPersist() then
		self.module:SetDbValue(self.db, entity.id, asTable)
	end
	self.callbacks:Fire(Events.EntityCreated, entity)
end

-- R(ead)
function Dao:Get(id)
	local attrs = self.db[id]
	if attrs then
		return self:Reconstitute(id, self.db[id])
	else
		Logging:Warn("Dao.Get[%s](%s) : No instance found", tostring(self.entityClass), id)
		return nil
	end
end

-- YES, you need to copy the backing db elements... otherwise, mutations occur without explicit persistence
function Dao:GetAll(filter, sort)
	Logging:Debug("Dao.GetAll[%s](%s, %s)", tostring(self.entityClass), Util.Objects.ToString(filter), Util.Objects.ToString(sort))

	filter = Util.Objects.IsFunction(filter) and filter or Util.Functions.True
	sort = Util.Objects.IsFunction(sort) and sort or function(a, b) return a.name < b.name end

	return Util(self.db)
			:Copy()
			:Filter(
				function(...) return filter(...) end
			)
			:Map(
				function(value, key)
					return self:Reconstitute(key, value)
				end,
				true
			)
			:Sort(function(a, b) return sort(a, b) end)()
end

-- U(pdate)
function Dao:Update(entity, attr)
	local key = self.Key(entity, attr)
	local asTable, asRef = entity:toTable(), nil
	local curVal, prevVal, diff = asTable[attr], nil, nil

	-- if the entity is Referenceable, capture it for any needed callbacks.
	-- this is done before mutations in order to provide a reference point for update
	if Referenceable.IsReferenceable(entity) then
		asRef = entity:ToRef(false)
	end

	-- generate the diff of the two values
	if Util.Objects.IsTable(curVal) then
		prevVal = self.module:GetDbValue(self.db, key)
		diff = Util.Patch.diff(prevVal, curVal)
		Logging:Trace(
			"Dao.Update(%s)[%s] : %s / %s => %s [ %s ]",
			tostring(self.entityClass), entity.id,
			attr, Util.Objects.ToString(prevVal), Util.Objects.ToString(curVal),
			Util.Objects.ToString(diff)
		)
	else
		diff = curVal
	end

	local shouldPersist = self:ShouldPersist()

	if shouldPersist then
		self.module:SetDbValue(
			self.db,
			key,
			curVal
		)
	end

	-- for versioned entities, trigger a new revision if attribute is marked as such
	if Util.Objects.IsInstanceOf(entity, Versioned) then
		if entity:TriggersNewRevision(attr) then
			entity:NewRevision()
			if shouldPersist then
				self.module:SetDbValue(
					self.db,
					self.Key(entity, 'revision'),
					entity.revision
				)
			end
		end

		-- check on stored version vs current version
		local version, storedVersion =
		entity.version,
		self.module:GetDbValue(self.db, self.Key(entity, 'version'))

		if not Util.Objects.IsNil(storedVersion) then
			_, storedVersion = SemanticVersion.Create(storedVersion)
		end

		-- if the version is not stored or it's less than current version, update it
		if Util.Objects.IsNil(storedVersion) or (storedVersion < version) then
			if shouldPersist then
				self.module:SetDbValue(
					self.db,
					self.Key(entity, 'version'),
					version:toTable()
				)
			end
		end
	end

	self.callbacks:Fire(Events.EntityUpdated, entity, attr, diff, asRef)
end

-- D(elete)
function Dao:Remove(entity)
	Logging:Trace("Dao.Remove[%s](%s)", tostring(self.entityClass), entity.id)
	if self:ShouldPersist() then
		self.module:SetDbValue(self.db, entity.id, nil)
	end
	self.callbacks:Fire(Events.EntityDeleted, entity)
end

