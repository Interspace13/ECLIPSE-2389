/datum/keybinding/admin
	category = CATEGORY_ADMIN

/datum/keybinding/admin/adminhelp
	hotkey_binds = list("F1")
	name = "adminhelp"
	full_name = "Admin Help"
	clientside = "adminhelp"

/datum/keybinding/admin/admin_pm
	hotkey_binds = list("F2")
	name = "admin_pm"
	full_name = "Admin PM"
	clientside = "Admin-PM"

/datum/keybinding/admin/player_panel
	hotkey_binds = list("F3")
	name = "player_panel"
	full_name = "Player Panel"
	clientside = "Player-Panel"

/datum/keybinding/admin/asay
	hotkey_binds = list("F4")
	name = "asay"
	full_name = "Admin Say"
	clientside = "Asay"

/datum/keybinding/admin/invisimin
	hotkey_binds = list("F5")
	name = "invisimin"
	full_name = "Invisimin"
	clientside = "Invisimin"


/datum/keybinding/comm
	category = CATEGORY_COMMUNICATION

/datum/keybinding/comm/say
	hotkey_binds = list("T")
	classic_binds = list("F6")
	name = "say"
	full_name = "Say"
	clientside = ".say"

/datum/keybinding/comm/looc
	hotkey_binds = list("Y")
	classic_binds = list("F7")
	name = "looc"
	full_name = "LOOC"
	clientside = "looc"

/datum/keybinding/comm/ooc
	hotkey_binds = list("O")
	classic_binds = list("F8")
	name = "ooc"
	full_name = "OOC"
	clientside = ".ooc"

/datum/keybinding/comm/emote
	hotkey_binds = list("M")
	classic_binds = list("F9")
	name = "emote"
	full_name = "Emote"
	clientside = ".me"

/datum/keybinding/comm/whisper
	hotkey_binds = list("U")
	classic_binds = list("F10")
	name = "whisper"
	full_name = "Whisper"
	description = "Opens the whisper input."
	bind_flags = KB_HUMAN
	clientside = "Whisper"
