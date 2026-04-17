
//
// ------------------------------------------- horizon
//

/obj/effect/overmap/visitable/ship/shinohara
	class = "IXS"
	designation = "Shinohara"
	desc = "A bluespace-capable corvette bearing markings of the NanoTrasen Surveyor Corps."
	icon_state = "venator"
	moving_state = "venator_moving"
	colors = list("#cfd4ff", "#78adf8")
	fore_dir = WEST
	vessel_mass = 70000
	burn_delay = 2 SECONDS
	base = TRUE

	scanimage = "horizon.png"
	designer = "Stellar Corporate Conglomerate, Vickers Shipwright Dock - Valkyrie"
	volume = "97 meters length, 161 meters beam/width, 48 meters vertical height"
	drive = "First-Gen Warp Capable, Hybrid Phoron Bluespace Drive"
	propulsion = "Superheated Composite Gas Thrust"
	weapons = "Two extruding naval ballistic weapon mounts, unidentifiable spinal artillery mount"
	sizeclass = "Torch Class Cruiser"
	shiptype = "Prototype exploration and survey vessel"

	initial_restricted_waypoints = list(
		"SGEV Gaunt" = list("nav_hangar_calypso"), 	//can't have random shuttles popping inside the ship
		"SGRP Garuda" = list("nav_hangar_guppy"),
		"SGGS Byakhee" = list("nav_hangar_aquila"),
	)

	initial_generic_waypoints = list(
		//start Bridge Deck
		"nav_merc_deck5",
		"nav_ninja_deck5",
		"nav_skipjack_deck5",
		"nav_ert_deck5",
		"nav_bridge_calypso",
		"nav_bridge_guppy",
		"nav_bridge_aquila",

		//start First Deck
		"nav_merc_deck1",
		"nav_ninja_deck1",
		"nav_skipjack_deck1",
		"nav_ert_deck4",
		"nav_deck4_calypso",
		"nav_deck4_guppy",
		"nav_deck4_aquila",

		//start Second Deck
		"nav_merc_deck2",
		"nav_ninja_deck2",
		"nav_skipjack_deck2",
		"nav_ert_deck3",
		"nav_deck3_calypso",
		"nav_deck3_guppy",
		"nav_deck3_aquila",

		//start Third Deck
		"nav_merc_deck3",
		"nav_ninja_deck3",
		"nav_skipjack_deck3",
		"nav_ert_deck2",
		"nav_deck2_calypso",
		"nav_deck2_guppy",
		"nav_deck2_aquila",

		//start Forth Deck
		"nav_merc_deck4",
		"nav_ninja_deck4",
		"nav_skipjack_deck4",
		"nav_ert_deck1",
		"nav_deck1_calypso",
		"nav_deck1_guppy",
		"nav_deck1_aquila",

		//start Hanger Deck
		"nav_merc_hanger",
		"nav_ninja_hanger",
		"nav_skipjack_hanger",
		"nav_ert_hanger"
	)

	tracked_dock_tags = list(
		"nav_hangar_mining",
		"nav_hangar_intrepid",
		"nav_hangar_canary",
		"nav_hangar_quark",
		"nav_cargo_shuttle_dock",
		"nav_horizon_hangar_1",
		"nav_burglar_hangar",
		"nav_horizon_hangar_2",
		"nav_distress_blue",
		"nav_merchant_dock",
		"nav_ccia_dock",
		NAV_HORIZON_DOCK_ALL,
	)

/obj/effect/overmap/visitable/ship/shinohara/get_skybox_representation()
	var/image/skybox_image = image('icons/skybox/subcapital_ships.dmi', "horizon")
	skybox_image.pixel_x = rand(0,64)
	skybox_image.pixel_y = rand(128,256)
	return skybox_image

//
// ------------------------------------------- Gaunt
//

/obj/effect/overmap/visitable/ship/landable/gaunt
	name = "SGEV Gaunt"
	desc = "A medium-sized long-range shuttle. It bears markings of the SolGov Fleet."
	shuttle = "SGEV Gaunt"
	max_speed = 1/(2 SECONDS)
	burn_delay = 1 SECONDS
	vessel_mass = 5000
	fore_dir = NORTH
	vessel_size = SHIP_SIZE_SMALL

/obj/machinery/computer/shuttle_control/explore/gaunt
	name = "shuttle control console"
	shuttle_tag = "SGEV Gaunt"


//
// ------------------------------------------- Aquila
//


/obj/effect/overmap/visitable/ship/landable/aquila
	name = "SGGS Byakhee"
	desc = "A vessel escort gunship. It bears markings of the SolGov Fleet."
	shuttle = "SGGS Byakhee"
	vessel_mass = 20000
	max_speed = 1/(1 SECONDS)
	burn_delay = 0.5 SECONDS //spammable, but expensive
	fore_dir = NORTH
	vessel_size = SHIP_SIZE_SMALL

/obj/machinery/computer/shuttle_control/explore/aquila
	name = "Byakhee control console"
	shuttle_tag = "SGGS Byakhee"

//
// ------------------------------------------- Guppy
//

/obj/effect/overmap/visitable/ship/landable/guppy
	name = "SGRP Garuda"
	desc = "A small recovery pod. It's capable of limited independant space travel. It's marked as 'SGRP Garuda'."
	shuttle = "SGRP Garuda"
	max_speed = 1/(3 SECONDS)
	burn_delay = 2 SECONDS
	vessel_mass = 3000 //very inefficient pod
	fore_dir = SOUTH
	vessel_size = SHIP_SIZE_TINY

/obj/machinery/computer/shuttle_control/explore/guppy
	name = "Garuda control console"
	shuttle_tag = "SGRP Garuda"
