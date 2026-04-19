/*
 *
 *  HOW IT WORKS:
 *    Each keybind is a /datum/keybinding subtype. At login, the system iterates
 *    every datum, resolves the effective keys (defaults or player overrides),
 *    and writes BYOND macros via winset(). Non-clientside actions dispatch
 *    through the "keybind" client verb, which looks up the datum by name and
 *    calls its down() proc.
 *
 * 	WHAT'S CLIENTSIDE/NON-CLIENTSIDE?:
 * 	  Stuff like moving, camera-centering, say/ooc/me are built-in BYOND and handled
 * 	  seperately to custom procs. Pretty much to guarantee instant output as clientside
 *    commands are generally crucial.
 * 	  Clientside is run via `.command` macros usually, or are verbs.
 *    Non-clientside actions need winset to make macro entries for procs in skin.dmf.
 *
 *  HOW TO ADD A NEW KEYBIND:
 *    1. Create a new subtype of /datum/keybinding. Pleeeeeeeeeeeeease put it in the right file (or make a new one).
 *    2. Define the required vars on your datum:
 *    3. Override the down() or up() proc
 *    4a. For clientside commands (movement, camera, say), set it like - clientside = ".say", for example
 *    4b. For non-clientside commands, utilise down().
 *    5. hotkey_binds are used for all hotkey macrosets.
 *       classic_binds are used for all non-hotkey mode macroset.
 *
 *	Check DM docs for key formats.
 *
 */

/datum/preferences
	/// Assoc list of keybind overrides. Keys are datum names ("name" for hotkey, "name.classic" for classic).
	/// Values are either a list of key strings or KB_UNBOUND.
	var/list/kb_overrides

/// Returns the global list of all keybinding datum instances.
/proc/keybind_datums()
	var/static/list/cache
	if(cache)
		return cache
	cache = list()
	for(var/T in subtypesof(/datum/keybinding))
		var/datum/keybinding/kb = new T
		if(!kb.name)
			qdel(kb)
			continue
		cache += kb
	return cache

/// Returns a global assoc list mapping datum name to datum instance.
/proc/named_keybind()
	var/static/list/cache
	if(cache)
		return cache
	cache = list()
	for(var/datum/keybinding/kb in keybind_datums())
		cache[kb.name] = kb
	return cache

/// Proper display name for the keybinds.
/proc/display_keybind(key_name)
	var/static/list/display_names = list(
		"NORTH" = "\u2191",
		"SOUTH" = "\u2193",
		"WEST" = "\u2190",
		"EAST" = "\u2192",
		"NORTHEAST" = "PgUp",
		"SOUTHEAST" = "PgDn",
		"SOUTHWEST" = "End",
		"NORTHWEST" = "Home",
		"CENTER" = "Center",
		"RETURN" = "Enter",
		"SPACE" = "Space",
		"BACK" = "Backspace",
		"DELETE" = "Del",
		"INSERT" = "Ins",
		"ESCAPE" = "Esc"
	)
	var/list/parts = splittext(key_name, "+")
	var/list/display_parts = list()
	for(var/part in parts)
		if(part == "REP")
			continue
		if(display_names[part])
			display_parts += display_names[part]
		else
			display_parts += part
	return jointext(display_parts, "+")

/// Handles both clientside (via winset) and server-side (via down()) datums.
/// Is used to take IDs of the keys pressed and calls the datum down()/winset proc.
/client/verb/keybind(id as command_text)
	set hidden = TRUE
	set name = "keybind"
	var/list/lookup = named_keybind()
	for(var/single_id in splittext(id, ","))
		var/datum/keybinding/kb = lookup[single_id]
		if(!kb)
			continue
		if(kb.clientside)
			winset(src, null, "command=[kb.clientside]")
		else
			kb.down(src)

/// Sanitises loaded overrides for invalid entries.
/datum/preferences/proc/sanitize_keybinds()
	if(!LAZYLEN(kb_overrides))
		kb_overrides = null
		return
	var/list/lookup = named_keybind()
	var/list/cleaned = list()
	for(var/n in kb_overrides)
		var/base_name = n
		if(findtext(n, ".classic"))
			base_name = copytext(n, 1, findtext(n, ".classic"))
		if(!(base_name in lookup))
			continue
		var/val = kb_overrides[n]
		cleaned[n] = (istext(val) && val != KB_UNBOUND) ? list(val) : val
	kb_overrides = LAZYLEN(cleaned) ? cleaned : null

/// Maps keys to commands from default/overrides then writes BYOND macros via winset().
/client
	/// Tracks macro count per macroset, in case previous list is bigger than new one (whenever the player unbinds).
	var/kb_count = 0

/client/proc/apply_keybinds()
	if(!prefs)
		return
	var/list/datums = keybind_datums()
	var/list/overrides = prefs.kb_overrides

	var/list/macrosets = list("hotkeymode", "macro", "borghotkeymode", "borgmacro")

	var/list/tab_commands = list(
		"hotkeymode" = ".winset \"mainwindow.macro=macro hotkey_toggle.is-checked=false input.focus=true \"",
		"macro" = ".winset \"mainwindow.macro=hotkeymode hotkey_toggle.is-checked=true mapwindow.map.focus=true \"",
		"borghotkeymode" = ".winset \"mainwindow.macro=borgmacro hotkey_toggle.is-checked=false input.focus=true \"",
		"borgmacro" = ".winset \"mainwindow.macro=borghotkeymode hotkey_toggle.is-checked=true mapwindow.map.focus=true\""
	)

	for(var/macroset in macrosets)
		for(var/i in 1 to kb_count)
			winset(src, "[macroset].kb[i]", "parent=[macroset];name=;command=")

	var/new_count = 0

	for(var/macroset in macrosets)
		winset(src, "[macroset].tab_toggle", "parent=[macroset];name=TAB;command=[tab_commands[macroset]]")

		var/list/key_cmds = list()

		for(var/datum/keybinding/kb in datums)
			if(!kb.applies_to(macroset))
				continue
			var/is_classic = (macroset == "macro" || macroset == "borgmacro")
			var/classic_id = "[kb.name].classic"
			var/override
			if(is_classic && LAZYLEN(overrides) && (classic_id in overrides))
				override = overrides[classic_id]
			else if(LAZYLEN(overrides))
				override = overrides[kb.name]
			if(override == KB_UNBOUND)
				continue
			var/list/keys
			if(islist(override))
				keys = override
			else if(is_classic)
				keys = kb.keys_for_set(macroset)
			else
				keys = kb.keys_for_set(macroset)
			if(!LAZYLEN(keys))
				continue
			for(var/key in keys)
				if(!key_cmds[key])
					key_cmds[key] = list()
				key_cmds[key] |= kb.name

		var/idx = 0
		var/list/lookup = named_keybind()
		for(var/key in key_cmds)
			idx++
			var/list/names = key_cmds[key]

			var/final_cmd
			if(length(names) == 1)
				var/datum/keybinding/kb = lookup[names[1]]
				if(kb?.clientside)
					final_cmd = kb.clientside
				else
					final_cmd = "keybind [names[1]]"
			else
				final_cmd = "keybind [jointext(names, ",")]"

			winset(src, "[macroset].kb[idx]", "parent=[macroset];name=[key];command=\"[final_cmd]\"")

		new_count = max(new_count, idx)

	kb_count = new_count

/// Returns the effective key list for a datum.
/datum/preferences/proc/keybind_keys(datum/keybinding/kb, classic = FALSE)
	var/override_id = classic ? "[kb.name].classic" : kb.name
	if(LAZYLEN(kb_overrides) && kb_overrides[override_id])
		var/val = kb_overrides[override_id]
		if(val == KB_UNBOUND)
			return list()
		return islist(val) ? val : list(val)
	var/list/defaults = classic ? kb.keys_for_set("macro") : kb.hotkey_binds
	if(LAZYLEN(defaults))
		return defaults.Copy()
	return list()

/// Keybind panel.
/datum/preferences/proc/show_keybinds(mob/user)
	var/list/datums = keybind_datums()
	var/list/html = list()
	html += {"<!DOCTYPE html>
<html><head><title>Keybind Settings</title>
<style>
body { font-family: Verdana, sans-serif; font-size: 12px; background: #272727; color: #eee; margin: 8px; }
h3 { color: #ccc; background: #363636; padding: 4px 8px; margin: 12px 0 4px; border-left: 3px solid #e94560; }
table { border-collapse: collapse; width: 100%; margin-bottom: 8px; table-layout: fixed; }
th, td { padding: 4px 8px; text-align: left; overflow: hidden; }
th { background: #2f2f2f; color: #e94560; }
td { border-bottom: 1px solid #222; }
th:nth-child(1), td:nth-child(1) { width: 25%; }
th:nth-child(2), td:nth-child(2) { width: 30%; }
th:nth-child(3), td:nth-child(3) { width: 30%; }
th:nth-child(4), td:nth-child(4) { width: 15%; }
tr:hover { background: #16213e; }
a { color: #4db8ff; text-decoration: none; cursor: pointer; }
a:hover { text-decoration: underline; }
.key-badge { display: inline-block; background: #16213e; border: 1px solid #444; color: #eee; padding: 2px 8px; margin: 1px 2px; border-radius: 3px; cursor: pointer; font-size: 11px; }
.key-badge:hover { background: #e94560; border-color: #e94560; color: #fff; }
.key-badge.modified { border-color: #ffd700; color: #ffd700; }
.add-btn { display: inline-block; background: #0f3460; border: 1px dashed #4db8ff; color: #4db8ff; padding: 2px 8px; margin: 1px 2px; border-radius: 3px; cursor: pointer; font-size: 11px; }
.add-btn:hover { background: #16213e; border-color: #e94560; color: #e94560; }
.actions { text-align: right; white-space: nowrap; }
#capture-overlay { display:none; position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0,0,0,0.85); z-index:999; justify-content:center; align-items:center; }
#capture-overlay.active { display:flex; }
#capture-box { background:#272727; border:2px solid #e94560; padding:24px; border-radius:8px; text-align:center; min-width:300px; }
#capture-box h3 { color:#e94560; margin:0 0 8px; background:none; border:none; padding:0; }
#capture-display { font-size:20px; color:#ffd700; margin:12px 0; min-height:28px; }
#capture-box .hint { color:#888; font-size:11px; }
</style>
</head><body>
<div id='capture-overlay'>
<div id='capture-box'>
<h3>Rebinding: <span id='capture-name'></span></h3>
<div id='capture-display'>Press a key...</div>
<div class='hint'>CTRL/SHIFT/ALT combos are allowed.<br>Press Escape to cancel.</div>
</div>
</div>
"}

	var/current_cat = ""
	for(var/datum/keybinding/kb in datums)
		if(kb.category != current_cat)
			if(current_cat != "")
				html += "</table>"
			current_cat = kb.category
			html += "<h3>[current_cat]</h3>"
			html += "<table><tr><th>Action</th><th>Hotkey</th><th>Classic</th><th></th></tr>"

		var/list/current_keys = keybind_keys(kb)
		var/is_modified = FALSE
		if(LAZYLEN(kb_overrides) && kb_overrides[kb.name])
			is_modified = TRUE

		var/bindings_html = ""
		if(!LAZYLEN(current_keys))
			bindings_html = "<span style='color:#888; font-style:italic;'>No bindings</span>"
		else
			for(var/bkey in current_keys)
				var/display = display_keybind(bkey)
				var/badge_class = is_modified ? "key-badge modified" : "key-badge"
				bindings_html += "<span class='[badge_class]' onclick=\"window.location='byond://?src=\ref[src];keybind_action=remove_key;keybind_id=[kb.name];keybind_key=[url_encode(bkey)];keybind_mode=hotkey'\" title='Click to remove'>[display]</span>"

		bindings_html += "<span class='add-btn' onclick=\"startCapture('[kb.name]','\ref[src]','hotkey')\" title='Add binding'>+</span>"

		var/classic_html = ""
		var/list/classic_keys = keybind_keys(kb, TRUE)
		var/classic_id = "[kb.name].classic"
		var/is_classic_modified = FALSE
		if(LAZYLEN(kb_overrides) && kb_overrides[classic_id])
			is_classic_modified = TRUE

		if(!LAZYLEN(classic_keys))
			classic_html = "<span style='color:#888; font-style:italic;'>No bindings</span>"
		else
			for(var/ckey in classic_keys)
				var/cdisplay = display_keybind(ckey)
				var/cbadge_class = is_classic_modified ? "key-badge modified" : "key-badge"
				classic_html += "<span class='[cbadge_class]' onclick=\"window.location='byond://?src=\ref[src];keybind_action=remove_key;keybind_id=[kb.name];keybind_key=[url_encode(ckey)];keybind_mode=classic'\" title='Click to remove'>[cdisplay]</span>"

		classic_html += "<span class='add-btn' onclick=\"startCapture('[kb.name]','\ref[src]','classic')\" title='Add binding'>+</span>"

		var/scope = ""
		if(kb.bind_flags == KB_HUMAN)
			scope = " <small>(Human)</small>"
		else if(kb.bind_flags == KB_BORG)
			scope = " <small>(Cyborg)</small>"

		var/actions = ""
		if(is_modified || is_classic_modified)
			actions = "<a href='byond://?src=\ref[src];keybind_action=reset;keybind_id=[kb.name]'>Reset</a>"

		html += "<tr><td><span id='name-[kb.name]'>[kb.full_name]</span>[scope]</td><td>[bindings_html]</td><td>[classic_html]</td><td class='actions'>[actions]</td></tr>"

	if(current_cat != "")
		html += "</table>"

	html += "</body></html>"

	var/datum/browser/popup = new(user, "keybindings", "Keybind Settings", 700, 600)
	popup.add_script("keybindings", 'html/keybindings.js')
	popup.set_content(html.Join(""))
	popup.open()

/// Topic handler for keybind browser links.
/datum/preferences/proc/handle_keybind(mob/user, list/href_list)
	if(!href_list["keybind_action"])
		return FALSE

	var/action = href_list["keybind_action"]
	var/kb_id = href_list["keybind_id"]

	var/list/lookup = named_keybind()
	var/datum/keybinding/kb = kb_id ? lookup[kb_id] : null

	switch(action)
		if("reset")
			if(!kb_id)
				return TRUE
			LAZYREMOVE(kb_overrides, kb_id)
			LAZYREMOVE(kb_overrides, "[kb_id].classic")
			if(!LAZYLEN(kb_overrides))
				kb_overrides = null
			save_preferences()
			to_chat(user, SPAN_NOTICE("Keybinding reset to default."))

		if("remove_key")
			var/remove_key = uppertext(trim(href_list["keybind_key"]))
			var/classic = href_list["keybind_mode"] == "classic"
			if(!kb || !remove_key)
				return TRUE
			var/list/current = keybind_keys(kb, classic)
			current -= remove_key
			save_keybind(kb_id, kb, current, classic)
			to_chat(user, SPAN_NOTICE("Removed [display_keybind(remove_key)] from [kb.full_name]."))

		if("rebind")
			var/new_key = uppertext(trim(href_list["keybind_key"]))
			var/classic = href_list["keybind_mode"] == "classic"
			if(!kb || !length(new_key))
				return TRUE
			var/has_rep = FALSE
			for(var/keylist in list(kb.hotkey_binds, kb.classic_binds))
				for(var/k in keylist)
					if(!findtext(k, "+REP"))
						continue
					has_rep = TRUE
					break
				if(has_rep)
					break
			if(has_rep && !findtext(new_key, "+REP"))
				new_key = "[new_key]+REP"
			var/list/current = keybind_keys(kb, classic)
			current |= new_key
			save_keybind(kb_id, kb, current, classic)
			to_chat(user, SPAN_NOTICE("Added [display_keybind(new_key)] to [kb.full_name]."))

		else
			return FALSE

	if(user.client)
		user.client.apply_keybinds()
	show_keybinds(user)
	return TRUE

/// Keybind saving. Stores override if changed from default, removes if matching default.
/datum/preferences/proc/save_keybind(kb_id, datum/keybinding/kb, list/keys, classic = FALSE)
	var/override_id = classic ? "[kb_id].classic" : kb_id
	var/list/defaults = classic ? kb.keys_for_set("macro") : kb.hotkey_binds
	if(!length(keys))
		LAZYSET(kb_overrides, override_id, KB_UNBOUND)
		save_preferences()
		return
	if(compare_list(keys, defaults))
		LAZYREMOVE(kb_overrides, override_id)
		if(!LAZYLEN(kb_overrides))
			kb_overrides = null
		save_preferences()
		return
	LAZYSET(kb_overrides, override_id, keys)
	save_preferences()


