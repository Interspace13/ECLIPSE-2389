/datum/keybinding/movement
	category = CATEGORY_MOVEMENT

/datum/keybinding/movement/move_up
	hotkey_binds = list("NORTH+REP", "W+REP")
	classic_binds = list("NORTH+REP", "CTRL+W+REP")
	name = "move_up"
	full_name = "Move North"
	clientside = ".moveup"

/datum/keybinding/movement/move_down
	hotkey_binds = list("SOUTH+REP", "S+REP")
	classic_binds = list("SOUTH+REP", "CTRL+S+REP")
	name = "move_down"
	full_name = "Move South"
	clientside = ".movedown"

/datum/keybinding/movement/move_left
	hotkey_binds = list("WEST+REP", "A+REP")
	classic_binds = list("WEST+REP", "CTRL+A+REP")
	name = "move_left"
	full_name = "Move West"
	clientside = ".moveleft"

/datum/keybinding/movement/move_right
	hotkey_binds = list("EAST+REP", "D+REP")
	classic_binds = list("EAST+REP", "CTRL+D+REP")
	name = "move_right"
	full_name = "Move East"
	clientside = ".moveright"

/datum/keybinding/movement/move_up_z
	hotkey_binds = list(",")
	name = "move_up_z"
	full_name = "Move Up Z-Level"

/datum/keybinding/movement/move_up_z/down(client/user)
	if(user.mob)
		user.mob.up()
	return TRUE

/datum/keybinding/movement/move_down_z
	hotkey_binds = list(".")
	name = "move_down_z"
	full_name = "Move Down Z-Level"

/datum/keybinding/movement/move_down_z/down(client/user)
	if(user.mob)
		user.mob.down()
	return TRUE
