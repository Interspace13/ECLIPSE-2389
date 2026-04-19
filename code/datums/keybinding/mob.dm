/datum/keybinding/mob
	category = CATEGORY_INTERACTION

/datum/keybinding/mob/face_north
	hotkey_binds = list("CTRL+W", "CTRL+NORTH")
	classic_binds = list("CTRL+NORTH")
	name = "face_north"
	full_name = "Face North"

/datum/keybinding/mob/face_north/down(client/user)
	if(user.mob)
		user.mob.northface()
	return TRUE

/datum/keybinding/mob/face_south
	hotkey_binds = list("CTRL+S", "CTRL+SOUTH")
	classic_binds = list("CTRL+SOUTH")
	name = "face_south"
	full_name = "Face South"

/datum/keybinding/mob/face_south/down(client/user)
	if(user.mob)
		user.mob.southface()
	return TRUE

/datum/keybinding/mob/face_east
	hotkey_binds = list("CTRL+D", "CTRL+EAST")
	classic_binds = list("CTRL+EAST")
	name = "face_east"
	full_name = "Face East"

/datum/keybinding/mob/face_east/down(client/user)
	if(user.mob)
		user.mob.eastface()
	return TRUE

/datum/keybinding/mob/face_west
	hotkey_binds = list("CTRL+A", "CTRL+WEST")
	classic_binds = list("CTRL+WEST")
	name = "face_west"
	full_name = "Face West"

/datum/keybinding/mob/face_west/down(client/user)
	if(user.mob)
		user.mob.westface()
	return TRUE


/datum/keybinding/mob/face_north_perm
	hotkey_binds = list("ALT+W", "ALT+NORTH")
	classic_binds = list("ALT+NORTH")
	name = "face_north_perm"
	full_name = "Face North (Perm)"

/datum/keybinding/mob/face_north_perm/down(client/user)
	if(user.mob)
		user.mob.northfaceperm()
	return TRUE

/datum/keybinding/mob/face_south_perm
	hotkey_binds = list("ALT+S", "ALT+SOUTH")
	classic_binds = list("ALT+SOUTH")
	name = "face_south_perm"
	full_name = "Face South (Perm)"

/datum/keybinding/mob/face_south_perm/down(client/user)
	if(user.mob)
		user.mob.southfaceperm()
	return TRUE

/datum/keybinding/mob/face_east_perm
	hotkey_binds = list("ALT+D", "ALT+EAST")
	classic_binds = list("ALT+EAST")
	name = "face_east_perm"
	full_name = "Face East (Perm)"

/datum/keybinding/mob/face_east_perm/down(client/user)
	if(user.mob)
		user.mob.eastfaceperm()
	return TRUE

/datum/keybinding/mob/face_west_perm
	hotkey_binds = list("ALT+A", "ALT+WEST")
	classic_binds = list("ALT+WEST")
	name = "face_west_perm"
	full_name = "Face West (Perm)"

/datum/keybinding/mob/face_west_perm/down(client/user)
	if(user.mob)
		user.mob.westfaceperm()
	return TRUE


/datum/keybinding/mob/intent_cycle_right
	hotkey_binds = list("G")
	classic_binds = list("CTRL+G")
	name = "intent_cycle_right"
	full_name = "Intent: Cycle Right"

/datum/keybinding/mob/intent_cycle_right/down(client/user)
	if(user.mob)
		user.mob.a_intent_change("right")
	return TRUE

/datum/keybinding/mob/intent_cycle_left
	hotkey_binds = list("F")
	classic_binds = list("CTRL+F")
	name = "intent_cycle_left"
	full_name = "Intent: Cycle Left"

/datum/keybinding/mob/intent_cycle_left/down(client/user)
	if(user.mob)
		user.mob.a_intent_change("left")
	return TRUE

/datum/keybinding/mob/intent_help
	hotkey_binds = list("1")
	classic_binds = list("CTRL+1")
	bind_flags = KB_ALL
	name = "intent_help"
	full_name = "Intent: Help"

/datum/keybinding/mob/intent_help/down(client/user)
	if(user.mob)
		user.mob.a_intent_change("help")
	return TRUE

/datum/keybinding/mob/intent_disarm
	hotkey_binds = list("2")
	classic_binds = list("CTRL+2")
	bind_flags = KB_HUMAN
	name = "intent_disarm"
	full_name = "Intent: Disarm"

/datum/keybinding/mob/intent_disarm/down(client/user)
	if(user.mob)
		user.mob.a_intent_change("disarm")
	return TRUE

/datum/keybinding/mob/intent_grab
	hotkey_binds = list("3")
	classic_binds = list("CTRL+3")
	bind_flags = KB_HUMAN
	name = "intent_grab"
	full_name = "Intent: Grab"

/datum/keybinding/mob/intent_grab/down(client/user)
	if(user.mob)
		user.mob.a_intent_change("grab")
	return TRUE

/datum/keybinding/mob/intent_harm
	hotkey_binds = list("4")
	classic_binds = list("CTRL+4")
	bind_flags = KB_ALL
	name = "intent_harm"
	full_name = "Intent: Harm"

/datum/keybinding/mob/intent_harm/down(client/user)
	if(user.mob)
		user.mob.a_intent_change("harm")
	return TRUE


/datum/keybinding/mob/target_head
	hotkey_binds = list("NUMPAD8")
	classic_binds = list("CTRL+NUMPAD8")
	category = CATEGORY_TARGETING
	name = "target_head"
	full_name = "Target: Head"

/datum/keybinding/mob/target_head/down(client/user)
	user.body_toggle_head()
	return TRUE

/datum/keybinding/mob/target_chest
	hotkey_binds = list("NUMPAD5")
	classic_binds = list("CTRL+NUMPAD5")
	category = CATEGORY_TARGETING
	name = "target_chest"
	full_name = "Target: Chest"

/datum/keybinding/mob/target_chest/down(client/user)
	user.body_chest()
	return TRUE

/datum/keybinding/mob/target_groin
	hotkey_binds = list("NUMPAD2")
	classic_binds = list("CTRL+NUMPAD2")
	category = CATEGORY_TARGETING
	name = "target_groin"
	full_name = "Target: Groin"

/datum/keybinding/mob/target_groin/down(client/user)
	user.body_groin()
	return TRUE

/datum/keybinding/mob/target_r_arm
	hotkey_binds = list("NUMPAD4")
	classic_binds = list("CTRL+NUMPAD4")
	category = CATEGORY_TARGETING
	name = "target_r_arm"
	full_name = "Target: R.Arm"

/datum/keybinding/mob/target_r_arm/down(client/user)
	user.body_r_arm()
	return TRUE

/datum/keybinding/mob/target_l_arm
	hotkey_binds = list("NUMPAD6")
	classic_binds = list("CTRL+NUMPAD6")
	category = CATEGORY_TARGETING
	name = "target_l_arm"
	full_name = "Target: L.Arm"

/datum/keybinding/mob/target_l_arm/down(client/user)
	user.body_l_arm()
	return TRUE

/datum/keybinding/mob/target_r_leg
	hotkey_binds = list("NUMPAD1")
	classic_binds = list("CTRL+NUMPAD1")
	category = CATEGORY_TARGETING
	name = "target_r_leg"
	full_name = "Target: R.Leg"

/datum/keybinding/mob/target_r_leg/down(client/user)
	user.body_r_leg()
	return TRUE

/datum/keybinding/mob/target_l_leg
	hotkey_binds = list("NUMPAD3")
	classic_binds = list("CTRL+NUMPAD3")
	category = CATEGORY_TARGETING
	name = "target_l_leg"
	full_name = "Target: L.Leg"

/datum/keybinding/mob/target_l_leg/down(client/user)
	user.body_l_leg()
	return TRUE


/datum/keybinding/mob/stop_pulling
	hotkey_binds = list("Q")
	classic_binds = list("CTRL+Q")
	name = "stop_pulling"
	full_name = "Stop Pulling"

/datum/keybinding/mob/stop_pulling/down(client/user)
	user.delete_key_pressed()
	return TRUE

/datum/keybinding/mob/activate_held
	hotkey_binds = list("Z")
	classic_binds = list("CTRL+Z")
	name = "activate_held"
	full_name = "Activate Held Object"

/datum/keybinding/mob/activate_held/down(client/user)
	if(user.mob)
		user.mob.mode()
	return TRUE

/datum/keybinding/mob/toggle_gun_mode
	hotkey_binds = list("J")
	classic_binds = list("CTRL+J")
	name = "toggle_gun_mode"
	full_name = "Toggle Gun Mode"

/datum/keybinding/mob/toggle_gun_mode/down(client/user)
	if(user.mob)
		user.mob.toggle_gun_mode()
	return TRUE


/datum/keybinding/mob/resist
	hotkey_binds = list("SPACE")
	name = "resist"
	full_name = "Resist"
	description = "Break free of restraints, extinguish yourself, and more."

/datum/keybinding/mob/resist/down(client/user)
	var/mob/living/L = user.mob
	if(istype(L))
		L.resist()
	return TRUE

/datum/keybinding/mob/swap_hand
	hotkey_binds = list("X")
	classic_binds = list()
	name = "swap_hand"
	full_name = "Swap Hands"
	description = "Switch your active hand."

/datum/keybinding/mob/swap_hand/down(client/user)
	if(user.mob)
		user.mob.swap_hand()
	return TRUE

/datum/keybinding/mob/lay_down
	hotkey_binds = list("V")
	classic_binds = list()
	name = "lay_down"
	full_name = "Lay Down / Get Up"
	description = "Toggle between standing and laying down."

/datum/keybinding/mob/lay_down/down(client/user)
	var/mob/living/L = user.mob
	if(istype(L))
		L.lay_down()
	return TRUE

/datum/keybinding/mob/drop_item
	hotkey_binds = list("Q")
	classic_binds = list("CTRL+Q")
	bind_flags = KB_HUMAN
	name = "drop_item"
	full_name = "Drop Item"
	description = "Drop the item in your active hand."

/datum/keybinding/mob/drop_item/down(client/user)
	if(user.mob)
		user.mob.drop_item()
	return TRUE
