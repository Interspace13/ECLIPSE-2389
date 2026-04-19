/datum/keybinding/human
	category = CATEGORY_INTERACTION
	bind_flags = KB_HUMAN

/datum/keybinding/human/quick_equip
	hotkey_binds = list("E")
	classic_binds = list("CTRL+E")
	name = "quick_equip"
	full_name = "Quick Equip"

/datum/keybinding/human/quick_equip/down(client/user)
	var/mob/living/carbon/human/H = user.mob
	if(istype(H))
		H.quick_equip()
	return TRUE

/datum/keybinding/human/holster
	hotkey_binds = list("H")
	classic_binds = list()
	name = "holster"
	full_name = "Holster"
	clientside = "holster"

/datum/keybinding/human/throw_toggle
	hotkey_binds = list("R")
	name = "throw_toggle"
	full_name = "Toggle Throw"

/datum/keybinding/human/throw_toggle/down(client/user)
	var/mob/living/L = user.mob
	if(istype(L))
		L.throw_intent_toggle()
	return TRUE
