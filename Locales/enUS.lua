local name, _ = ...
local name_lower = name:lower()
local name_colored = "|cFF9DDAE6" .. name .. "|r"

local L = LibStub("AceLocale-3.0"):NewLocale(name, "enUS", true, true)
if not L then return end

L["abort"] = "Abort"
L["accept_whispers"] = "Accept Whispers"
L["accept_whispers_desc"] = "Allows players to use whispers to indicate their response for an item"
L["action"] = "Action"
L["active"] = "Active"
L["activated_configuration"] = "Activated configuration [|cfffcd400%s|r]"
L["active_configs_desc"] = "Only active configurations are available for selection.\nInactive configurations are not displayed."
L["active_desc"] = "Disables " .. name .. " when unchecked. Note: This resets on every logout or UI reload."
L["actor"] = "Actor"
L["add"] = "Add"
L["added"] = "Added"
L["add_all"] = "Add All"
L["add_item"] = "Add Item"
L["add_rolls"] = "Add Rolls"
L["addon_name_colored"] = name_colored
L["administrators"] = "Administrator(s)"
L["after"] = "After"
L["all"] = "All"
L["all_unawarded_items"] = "All un-awarded items"
L["always_show_tooltip_howto"] = "Double click to toggle tooltip"
L["announce_&i_desc"] = "|cfffcd400 &i|r: item link"
L["announce_&l_desc"] = "|cfffcd400 &l|r: item level"
L["announce_&p_desc"] = "|cfffcd400 &p|r: name of the player"
L["announce_&r_desc"] = "|cfffcd400 &r|r: reason"
L["announce_&s_desc"] = "|cfffcd400 &s|r: session id"
L["announce_&t_desc"] = "|cfffcd400 &t|r: item type"
L["announce_&n_desc"] = "|cfffcd400 &n|r: roll, if supplied"
L["announce_&ln_desc"] = "|cfffcd400 &ln|r: item list"
L["announce_&lp_desc"] = "|cfffcd400 &lp|r: item list priority"
L["announced_awaiting_answer"] = "Loot announced, waiting for answer"
L["announcements"] = "Announcements"
L["announce_awards"] = "Announce Awards"
L["announce_awards_desc"] = "Enables the announcement of awards in configured channel(s)"
L["announce_awards_desc_detail"] = "\nChoose the channel to which awards will be announced, along with the announcement text. The following keyword substitutions are available:\n"
L["announce_items"] = "Announce Items"
L["announce_items_desc"] = "Enables the announcement of items under consideration, in the configured channel(s), whenever a session starts"
L["announce_items_desc_detail"] = "\nChoose the channel to which items will be announced, along with the announcement header."
L["announce_items_desc_detail2"] = "\nEnter the message to announce for each item. The following keyword substitutions are available:\n"
L["announce_responses"] = "Announce Responses"
L["announce_responses_desc"] = "Enables the announcement of player's responses in configured channel(s)"
L["announce_responses_desc_detail"] = "\nChoose the channel to which player's responses will be announced, along with the announcement text. The following keyword substitutions are available:\n"
L["attribute"] = "Attribute"
L["auto_add_boe_desc"] = "Automatically add all eligible BOE (Bind On Equip) items to a loot session"
L["auto_add_items"] =  "Automatically Add Items"
L["auto_add_items_desc"] =  "Automatically add all eligible equipable items to a loot session"
L["auto_add_non_equipable_desc"] = "Automatically add all eligible non-equipable items to a loot session"
L["auto_add_x_items"] =  "Automatically Add %s Items"
L["auto_awards"] = "Automatic Awards"
L["auto_award_desc"] = "Enables automatic awarding of items meeting defined criteria"
L["auto_award_invalid_mode"] = "Invalid mode %s for automatic awards"
L["auto_award_to_desc"] = "The player to which items will be automatically awarded"
L["auto_award_reason_desc"] = "The award reason to use when auto awarding."
L["auto_award_type"] = "Item Type(s)"
L["auto_award_type_desc"] = "The type of items that should be automatically awarded. Currently limited to equippablity of the item."
L["auto_extracted_from_whisper"] = "Automatically extracted from whisper"
L["auto_pass"] = "Autopass"
L["auto_passed_on_item"] = "Auto-passed on %s"
L["author"] = "Author"
L["auto_start"] = "Automatic Session Start"
L["auto_start_desc"] = "Skips the Loot Session Setup Interface. This results in a session starting with all eligible items without an opportunity to edit the list"
L["available"] = "Available"
L["award"] = "Award"
L["award_for"] = "Award for"
L["award_to"] = "Award To"
L["awarded"] = "Awarded"
L["awards"] = "Awards"
L["bank"] = "Bank"
L["before"] = "Before"
L["candidate_no_response_in_time"] = "Player didn't respond in time"
L["candidate_removed"] = "Player removed"
L["candidate_selecting_response"] = "Player is selecting response, please wait"
L["candidates_cannot_use"] = "Players that cannot use the item"
L["cannot_auto_award"] = "Cannot automatically award:"
L["cannot_start_loot_session_in_combat"] = "You cannot start a loot session while in combat"
L["category"] = "Category"
L["change_log"] = "Change Log"
L["change_response"] = "Change Response"
L["changes"] = "Change(s)"
L["channel"] = "Channel"
L["channel_desc"] = "Select a channel to which announcements will be made"
L["chat"] = "Chat"
L["chat_commands_config"]  = "Open the configuration interface"
L["chat_commands_dev"]  = "Toggle development mode"
L["chat_commands_pm"]  = "Toggle persistence mode"
L["chat_commands_version"] = "Open the version checker (alternatives 'v' or 'ver') - can specify boolean as argument to show outdated clients"
L["chat_version"] = "|cFF87CEFA" .. name .. "|r |cFFFFFFFFversion|r|cFFFFA500 %s|r"
L["clear"] = "Clear"
L["clear_item_cache"] = "Clear Item Cache"
L["clear_item_cache_desc"] = "Clears the item cache"
L["clear_player_cache"] = "Clear Player Cache"
L["clear_player_cache_desc"] = "Clears the player information cache"
L["clear_selection"] = "Clear Selection"
L["clear_x_filter"] = "Clear %s filter"
L["click_more_info"] = "Click to expand/collapse display of additional information"
L["click_to_switch_item"] = "Click to switch to %s"
L["configuration"] = "Configuration"
L["confirm_abort"] = "Are you certain you want to abort?"
L["confirm_award_item_to_player"] = "Are you certain you want to give %s to %s?"
L["confirm_delete_entry"] = "Are you certain you want to delete %s?"
L["confirm_usage_text"] = "|cFF87CEFA " .. name .. " |r\n\nWould you like to use " .. name .. " with this group?"
L["confirm_rolls"] = "Are you certain you want to request rolls for all un-awarded items from %s?"
L["confirm_unawarded"] = "Are you certain you want to re-announce all un-awarded items to %s?"
L["custom_items"] = "Custom Items"
L["custom_items_desc"] = "Customization of Item(s)"
L["custom_items_help"] = "Configure custom items and associated attributes(e.g. Magtheridon's Head)"
L["could_not_auto_award_item"] =  "Could not automatically award %s because the loot threshold is too high."
L["could_not_find_player_in_group"] = "Could not find %s in the group."
L["count"] = "Count"
L["date"] = "Date"
L["default"] = "Default"
L["delete"] = "Delete"
L["deselect_all"] = "(De)select All"
L["deselect_responses"] = "Deselect responses to filter them"
L["diff"] = "Diff"
L["disabled_addon"] = "Player has disabled " .. name .. ""
L["disenchant"] = "Disenchant"
L["double_click_to_delete_this_entry"] = "Double click to delete %s"
L["dropped_by"] = "Dropped by"
L["enable"] = "Enable"
L["enabled_desc"] = "Disables " .. name .. " when unchecked.\nNote: This resets on every logout or UI reload."
L["enabled_generic_desc"] = "Disables %s when unchecked."
L["enchanter_select"] = "Select player for disenchanting"
L["equipable"] = "Equipable"
L["equipable_not"] = "Not Equipable"
L["equipment"] = "Equipment"
L["equipment_loc"] = "Equipment Location"
L["equipment_types"] = "Equipment Type(s)"
L["equipment_loc_desc"] = "The type of the item, which includes where it can be equipped"
L["equipment_type_avail_desc"] = "Available item types"
L["equipment_type_desc"] = "The item types to which the list is applied"
L["error_x"] = "|cFFC41E3AError|r : %s"
L["error_test_as_non_leader"] = "You cannot initiate a test while in a group without being the group leader."
L["everyone_up_to_date"] = "Everyone is up to date"
L["frame_add_custom_item"] = "" .. name_colored .. " : Add Custom Item"
L["frame_logging"] = "" .. name_colored .. " : Logging"
L["frame_loot"] = "" .. name_colored .. " : Loot"
L["frame_loot_allocate"] = "" .. name_colored .. " Loot Allocation"
L["frame_loot_session"] = "" .. name_colored .. " : Loot Session Setup"
L["frame_version_check"] = "" .. name_colored .. " : Version Checker"
L["free"] = "Free"
L["general"] = "General"
L["general_desc"] = "General configuration settings"
L["guild"] = "Guild"
L["g1"] = "g1"
L["g2"] = "g2"
L["hash"] = "Hash"
L["insert"] = "Insert"
L["insert_first"] = "First"
L["insert_last"] = "Last"
L["insert_random"] = "Random"
L["instance"] = "Instance"
L["invalid_item_id"] = "Item Id must be a number"
L["invalid_configuration"] = "No valid active configuration available"
L["invalid_configuration_ml"] = "No valid active configuration provided. " .. name_colored .. " will *not* handle loot."
L["invalid_configuration_ml_owner_admin"] = "Current player is not an admin/owner for configuration [|cfffcd400%s|r] - cannot use. " .. name_colored .. " will *not* handle loot."
L["is_not_active_in_this_raid"] = "NOT active in this raid"
L["item"] = "Item"
L["items"] = "Items"
L["item_add_search_desc"] = "Enter the id of the item you wish to add.\nIf found, attributes will automatically be populated."
L["item_awarded_to"] = "Item was awarded to"
L["item_awarded_to_click_to_view"] = "Item awarded to %s\nClick to view"
L["item_id"] = "Item Id"
L["item_lvl"] = "Item Level"
L["item_lvl_desc"] = "A rough indicator of the power and usefulness of an item, designed to reflect the overall benefit of using the item."
L["item_only_able_to_be_looted_by_you_bop"] = "The item can only be looted by you and is not bind on pick up"
L["item_quality_below_threshold"] = "Item quality is below the loot threshold"
L["item_response_ack_from_s"] = "Response for item %s received and acknowledged from %s"
L["latest_items_won"] = "Latest item(s) won"
L["left_click"] = "Left Click"
L["list"] = "List"
L["lists"] = "Lists"
L["list_alts"] = "Alt(s)"
L["list_alts_desc"] = "Associate alternative characters with a player's main character"
L["list_configuration"] = "Configuration Selection"
L["list_configuration_desc"] = "|cfffcd400List(s)|r, which specify player priorities by equipment type(s), are bound to a |cfffcd400Configuration|r. The following setting determines how a |cfffcd400Configuration|r is selected when a player is the Master Looter."
L["list_configuration_selection_desc"] = "Choose how to select a Configuration"
L["list_config_administrators_avail_desc"] = "Player(s) without administrator permissions"
L["list_config_administrators_desc"] = "Player(s) with permissions to alter the list(s) associated with the configuration"
L["list_config_dd_desc"] = "Select the configuration to display"
L["list_config_default_desc"] = "If checked, specifies the configuration as the default. This can be used when selecting the active configuration when handling loot."
L["list_config_name_desc"] = "The name of the configuration"
L["list_config_owner_desc"] = "Player who owns the configuration - grants administrative permissions and ability to alter configuration"
L["list_config_select_ask"] = "Prompt me to select the configuration"
L["list_config_select_default"] = "Automatically select the default configuration"
L["list_config_status_desc"] = "The configuration status, which controls whether it is usable and published"
L["list_configs"] = "Configuration(s)"
L["list_configs_desc"] = "A configuration is a collection of lists, with an associated owner and admin(s)"
L["list_lists"] = "List(s)"
L["list_lists_desc"] = "A prioritized list of players, associated with one or more item types"
L["list_list_equipment_desc"] = "Equipment to which the list is applicable"
L["list_list_name_desc"] = "The name of the list"
L["list_list_priority_desc"] = "Players and their priority (position) in the list"
L["list_priority_announcement"] = "(%s) %s priority : [Raid] %s -> %s [Overall] %s -> %s"
L["logging"] = "Logging"
L["logging_desc"] = "Logging configuration"
L["logging_help"] = "Configuration settings for logging, such as threshold at which logging is emitted."
L["logging_threshold"] = "Logging threshold"
L["logging_threshold_desc"] = "All logging events with an associated level less than this threshold are ignored"
L["logging_window_toggle"] = "Toggle Logging Window"
L["logging_window_toggle_desc"] = "Toggle the display of the logging output window"
L["loot"] = "Loot"
L["loot_audit"] = "Loot History"
L["loot_won"] = "Loot won"
L["lower_quality_limit"] = "Lower Quality Limit"
L["lower_quality_limit_desc"] =  "Select the lower quality limit of items to auto award (inclusive).\nNote: This overrides the normal loot threshold."
L["master_looter"] = "Master Looter"
L["mean"] = "Mean"
L["median"] = "Median"
L["message"] = "Message"
L["message_desc"] = "The message to send to the selected channel"
L["message_header"] = "Header"
L["message_header_desc"] = "The message used as the header for item announcements"
L["metric"] = "Metric"
L["metrics"] = "Metrics"
L["metrics_comms"] = "Communication(s)"
L["metrics_comms_desc"] = ""
L["metrics_events"] = "Event(s)"
L["metrics_events_desc"] = ""
L["minimize_in_combat"] = "Minimize while in combat"
L["minimize_in_combat_desc"] = "Enable to minimize all frames when entering combat"
L["modes"] = "Mode(s)"
L["ms_need"] = "Need"
L["na"] = "N/A"
L["name"] = "Name"
L["n_ago"] = "%s ago"
L["n_days"] = "%s day(s)"
L["n_months_and_n_days"] = "%d month(s) and %s"
L["n_years_and_n_months_and_n_days"] = "%d year(s) and %d month(s) and %s"
L["nobody"] = "Nobody"
L["no_enchanters_found"] = "No enchanters found"
L["no_entries_in_loot_history"] = "No entries in the loot history"
L["not_announced"] = "Not announced"
L["not_installed"] = "Not installed"
L["not_in_instance"] = "Player is not in the instance"
L["number_of_raids_from_which_loot_was_received"] = "Number of raids from which loot was received"
L["offline_or_not_installed"] = "Offline or " .. name .. " not installed"
L["only_use_in_raids"] = "Only use in raids"
L["only_use_in_raids_desc"] = "Check to disable " .. name .. " in parties"
L["open_config"] = "Open/Close Configuration"
L["open_standings"] = "Open/Close Standings"
L["os_greed"] = "Open"
L["out_of_instance"] = "Out of instance"
L["out_of_raid"] = "Out of raid support"
L["out_of_raid_desc"] = "When enabled and in a group of 8 or more members, anyone that isn't in the\ninstance when a session starts will automatically send an 'Out of Raid' response"
L["owner"] = "Owner"
L["player_ended_session"] = "The loot session is now complete (completed by %s)"
L["player_handles_looting"] = "%s now handles looting"
L["player_ineligible_for_item"] = "Player is ineligible for this item"
L["player_not_in_group"] = "Player is not in the group"
L["player_not_in_instance"] = "Player is not in the instance"
L["player_offline"] = "Player is offline"
L["player_requested_reroll"] = "%s has asked you to re-roll"
L["priorities"] = "Priorities"
L["priority"] = "Priority"
L["priority_active"] = "Priority (Raid)"
L["priority_overall"] = "Priority (Overall)"
L["quality"] = "Quality"
L["quality_desc"] = "The relationship of the item level (which determines the sizes of the stat bonuses on it) to the required level to equip it.\nIt also determines the number of different stat bonuses."
L["raid"] = "Raid"
L["rate"] = "Rate"
L["record"] = "record"
L["reannounce"] = "Re-announce"
L["reannounced_i_to_t"] = "Re-announced '%s' to '%s'"
L["reason"] = "Reason"
L["remove"] = "Remove"
L["removed"] = "Removed"
L["remove_all"] = "Remove All"
L["remove_from_consideration"] = "Remove from consideration"
L["requested_rolls_for_i_from_t"] = "Requested rolls for '%s' from '%s'"
L['resource'] = "Resource"
L["response"] = "Response"
L["responses"] = "Responses"
L["response_to_item"] = "Response to %s"
L["response_to_item_detailed"] = "%s specified '%s' for %s"
L["response_unavailable"] = "Response isn't available. Please upgrade " .. name .. "."
L["responses"] = "Responses"
L["responses_from_chat_desc"] = "If a player doesn't have " .. name .. " installed, the following whisper responses are supported for item(s). \nExample: \"/w ML_NAME !item 1 need\" would (by default) register as 'needing' on the first item in the session.\nBelow you can choose keywords for the individual buttons. Only A-Z, a-z and 0-9 are accepted for keywords, everything else is considered a delimiter.\nPlayers can receive the keyword list by messaging '!help' to the Master Looter."
L["responses_visible_enable"] = "Enable loot response transparency"
L["responses_visible_desc"] = "Enables the display of other players response(s) for an item in the loot dialogue.\nWhen a player hovers over a response for an item, a tooltip will be displayed that shows all players who responded with that response."
L["revert"] = "Revert"
L["revision"] = "Revision"
L["right_click"] = "Right Click"
L["right_click_reset"] = "Right Click to reset"
L["roll_pass"] = "%s has passed on roll for %s"
L["roll_result"] = "%s has rolled %d for %s"
L["save"] = "Save"
L["select"] = "Select"
L["select_configuration"] = "Select active configuration"
L["selected"] = "Selected"
L["session_error"] = "An unexpected condition was encountered - please restart the session"
L["session_in_combat"] = "You cannot start a session while in combat."
L["shift_left_click"] = "Shift + Left Click"
L["status"] = "Status"
L["stddev"] = "StdDev"
L["sum"] = "Sum"
L["sync"] = "Synchronize"
L["sync_desc"] = "Allows synchronization of settings between guild or group members"
L["test_desc"] = "Click to simulate the master looting of items for yourself and anyone in your group/raid\nEquivalent to /" .. name_lower .. " test #"
L["test"] = "Test"
L["the_following_versions_are_out_of_date"] = "The following versions are out of date"
L["the_following_are_not_installed"] = "The following players don't have the addon installed"
L["this_item"] = "This item"
L["timeout"] = "Timeout"
L["timeout_duration"] = "Duration"
L["timeout_duration_desc"] = "The timeout duration, in seconds"
L["timeout_enable"] = "Enable Timeout"
L["timeout_enable_desc"] = "Enables a timeout (upper threshold) for players to respond to an item"
L["todo"] = "TODO"
L["total_awards"] = "Total awards"
L["total_items_won"] = "Total items won"
L["traffic_audit"] = "Traffic History"
L["ui_scale"] = "UI Scale"
L["unable_to_give_loot_without_loot_window_open"] = "Unable to assign loot without the loot window being open"
L["unable_to_give_item_to_player"] =  "Unable to give %s to %s"
L["unguilded"] = "Unguilded"
L["unknown"] = "Unknown"
L["upper_quality_limit"] = "Upper Quality Limit"
L["upper_quality_limit_desc"] =  "Select the upper quality limit of items to auto award (inclusive).\nNote: This overrides the normal loot threshold."
L["usage"] = "Usage"
L["usage_ask_ml"] = "Ask me every time I become Master Looter"
L["usage_desc"] = "Choose when to use " .. name .. ""
L["usage_leader_always"] = "Always use when leader"
L["usage_leader_ask"] = "Ask me when leader"
L["usage_leader_desc"] = "Should the same usage setting be used when entering an instance as the leader"
L["usage_ml"] = "Always use when I am the Master Looter"
L["usage_never"] = "Never use"
L["value"] = "Value"
L["version"] = "Version"
L["version_check"] = "Version Check"
L["version_check_desc"] = "Query what version(s) of " .. name .. " each group or guild member has installed"
L["visibility"] = "Visibility"
L["waiting_for_response"] = "Waiting for response"
L["warning_persistence_disabled"] = "Persistence mode is disabled, no changes will be saved"
L["warning_record_filter_applied"] = "A record filter is applied, clear via"
L["warning_unsaved_changes"] = "There are unsaved changes, use the right-click menu to save or revert"
L["whisper_guide_1"] = "[" .. name .. "]: !item item_number response - 'item_number' is the item session id, 'response' is one of the keywords below. You can whisper '!items' to get a list of items with numbers. E.G. '!item 1 greed' would greed on item #1"
L["whisper_guide_2"] = "[" .. name .. "]: You'll get a confirmation message if you were successfully added"
L["whisper_items"] = "[" .. name .. "]: Currently available items ([item_number] : item_link)"
L["whisper_items_none"] = "[" .. name .. "]: No items currently available"
L["whisper_item_ack"] = "[" .. name .. "]: Response to %s acknowledged as \"%s\""
L["whispers"] = "Whispers"
L["whisperkey_ms_need"] = "ms, need, bid, 1"
L["whisperkey_os_greed"] = "os, greed, open, free, 2"
L["you_are_not_in_instance"] = "You are not in the instance"