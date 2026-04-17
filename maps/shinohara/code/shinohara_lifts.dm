/obj/turbolift_map_holder/shinohara
	depth = 6
	lift_size_x = 4
	lift_size_y = 4
	clear_objects = 0

//Primary Lift
/obj/turbolift_map_holder/shinohara/primary
	name = "IXS Shinohara Lift - Primary"
	dir = SOUTH

	depth = 6
	lift_size_x = 4
	lift_size_y = 4

	areas_to_use = list(
		/area/turbolift/shinohara/primary/deck_1,
		/area/turbolift/shinohara/primary/deck_2,
		/area/turbolift/shinohara/primary/deck_3,
		/area/turbolift/shinohara/primary/deck_4,
		/area/turbolift/shinohara/primary/deck_5,
		/area/turbolift/shinohara/primary/deck_6
		)

/area/turbolift/shinohara/primary/deck_1
	name = "Primary Lift - Deck 1"
	lift_announce_str = "Arriving at Deck 1."

	lift_floor_label = "Deck 1"
	lift_floor_name = "First Deck"

	base_turf = /turf/simulated/floor/plating

/area/turbolift/shinohara/primary/deck_2
	name = "Primary Lift - Deck 2"
	lift_announce_str = "Arriving at Deck 2."

	lift_floor_label = "Deck 2"
	lift_floor_name = "Second Deck"

/area/turbolift/shinohara/primary/deck_3
	name = "Primary Lift - Deck 3"
	lift_announce_str = "Arriving at Deck 3."

	lift_floor_label = "Deck 3"
	lift_floor_name = "Third Deck"

/area/turbolift/shinohara/primary/deck_4
	name = "Primary Lift - Deck 4"
	lift_announce_str = "Arriving at Deck 4."

	lift_floor_label = "Deck 4"
	lift_floor_name = "Fourth Deck"

/area/turbolift/shinohara/primary/deck_5
	name = "Primary Lift - Deck 5"
	lift_announce_str = "Arriving at Deck 5."

	lift_floor_label = "Deck 5"
	lift_floor_name = "Fifth Deck"

/area/turbolift/shinohara/primary/deck_6
	name = "Primary Lift - Deck 6"
	lift_announce_str = "Arriving at the Bridge."

	lift_floor_label = "Deck 6"
	lift_floor_name = "Bridge"
