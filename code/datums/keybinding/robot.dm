/datum/keybinding/robot
	category = CATEGORY_ROBOT
	bind_flags = KB_BORG

/datum/keybinding/robot/toggle_module_1
	hotkey_binds = list("1")
	classic_binds = list("CTRL+1")
	name = "toggle_module_1"
	full_name = "Toggle Module 1"

/datum/keybinding/robot/toggle_module_1/down(client/user)
	var/mob/living/silicon/robot/R = user.mob
	if(istype(R))
		R.cmd_toggle_module(1)
	return TRUE

/datum/keybinding/robot/toggle_module_2
	hotkey_binds = list("2")
	classic_binds = list("CTRL+2")
	name = "toggle_module_2"
	full_name = "Toggle Module 2"

/datum/keybinding/robot/toggle_module_2/down(client/user)
	var/mob/living/silicon/robot/R = user.mob
	if(istype(R))
		R.cmd_toggle_module(2)
	return TRUE

/datum/keybinding/robot/toggle_module_3
	hotkey_binds = list("3")
	classic_binds = list("CTRL+3")
	name = "toggle_module_3"
	full_name = "Toggle Module 3"

/datum/keybinding/robot/toggle_module_3/down(client/user)
	var/mob/living/silicon/robot/R = user.mob
	if(istype(R))
		R.cmd_toggle_module(3)
	return TRUE

/datum/keybinding/robot/unequip_module
	hotkey_binds = list("Q")
	classic_binds = list()
	name = "unequip_module"
	full_name = "Unequip Module"

/datum/keybinding/robot/unequip_module/down(client/user)
	var/mob/living/silicon/robot/R = user.mob
	if(istype(R))
		R.cmd_unequip_module()
	return TRUE
