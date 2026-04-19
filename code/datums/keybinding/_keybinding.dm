/datum/keybinding
	/// Default keys for hotkey mode.
	var/list/hotkey_binds
	/// Default keys for classic (non-hotkey) mode. null inherits from hotkey_binds.
	/// Set to list() to explicitly exclude from classic mode.
	var/list/classic_binds
	var/name
	/// Display name.
	var/full_name
	/// Description shown in the keybind UI.
	var/description = ""
	/// UI category grouping.
	var/category = CATEGORY_MOVEMENT
	/// Which mob types this applies to (KB_HUMAN, KB_BORG, KB_ALL).
	var/bind_flags = KB_ALL
	/// To differentiate between clientside commands (movement, cams) and everything else.
	/// They utilise different proc call methods, check comments in keybindings.dm.
	var/clientside

/// Actual proc for when the key is pressed.
/datum/keybinding/proc/down(client/user)
	return FALSE

/// Returns the key list for a given macroset name.
/datum/keybinding/proc/keys_for_set(macroset)
	switch(macroset)
		if("hotkeymode", "borghotkeymode")
			return hotkey_binds
		if("macro", "borgmacro")
			if(!isnull(classic_binds))
				return classic_binds
			return hotkey_binds
	return null

/// Returns TRUE if this datum applies to the given macroset and has keys for it.
/datum/keybinding/proc/applies_to(macroset)
	switch(macroset)
		if("hotkeymode", "macro")
			if(!(bind_flags & KB_HUMAN))
				return FALSE
		if("borghotkeymode", "borgmacro")
			if(!(bind_flags & KB_BORG))
				return FALSE
	return LAZYLEN(keys_for_set(macroset)) > 0
