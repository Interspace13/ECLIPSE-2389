area/shuttle/transport1/centcom
	icon_state = "shuttle"
	name = "\improper Transport Shuttle Centcom"

//torch large pods
/area/shuttle/escape_pod1/station
	name = "Escape Pod One"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod2/station
	name = "Escape Pod Two"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod3/station
	name = "Escape Pod Three"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod4/station
	name = "Escape Pod Four"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod5/station
	name = "Escape Pod Five"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod6/station
	name = "Escape Pod Six"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

//torch small pods
/area/shuttle/escape_pod7/station
	name = "Escape Pod Seven"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod8/station
	name = "Escape Pod Eight"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod10/station
	name = "Escape Pod Ten"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod11/station
	name = "Escape Pod Twelve"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT


//Charon

/area/exploration_shuttle/
	name = "\improper SGEV Gaunt"
	icon_state = "shuttlered"
	base_turf = /turf/simulated/floor/plating
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/exploration_shuttle/cockpit
	name = "\improper SGEV Gaunt - Cockpit"
	req_access = list(access_expedition_shuttle)

/area/exploration_shuttle/atmos
	name = "\improper SGEV Gaunt - Atmos Compartment"

/area/exploration_shuttle/power
	name = "\improper SGEV Gaunt - Power Compartment"

/area/exploration_shuttle/crew
	name = "\improper SGEV Gaunt - Crew Compartment"

/area/exploration_shuttle/cargo
	name = "\improper SGEV Gaunt - Cargo Bay"

/area/exploration_shuttle/airlock
	name = "\improper SGEV Gaunt - Airlock Compartment"

//Aquila

/area/aquila
	name = "\improper SGGS Byakhee"
	icon_state = "shuttlered"
	base_turf = /turf/simulated/floor/reinforced/airless
	requires_power = 1
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/aquila/cockpit
	name = "\improper SGGS Byakhee - Cockpit"
	req_access = list(access_aquila)

/area/aquila/maintenance
	name = "\improper SGGS Byakhee - Maintenance"
	req_access = list(access_solgov_crew)

/area/aquila/storage
	name = "\improper SGGS Byakhee - Storage"
	req_access = list(access_solgov_crew)

/area/aquila/secure_storage
	name = "\improper SGGS Byakhee - Secure Storage"
	req_access = list(access_aquila)

/area/aquila/mess
	name = "\improper SGGS Byakhee - Mess Hall"

/area/aquila/passenger
	name = "\improper SGGS Byakhee - Passenger Compartment"

/area/aquila/medical
	name = "\improper SGGS Byakhee - Medical"

/area/aquila/head
	name = "\improper SGGS Byakhee - Cannon"

/area/aquila/airlock
	name = "\improper SGGS Byakhee - Airlock Compartment"
	req_access = list(access_solgov_crew)

//Guppy

/area/guppy_hangar/start
	name = "\improper SGRP Garuda"
	icon_state = "shuttlered"
	requires_power = 1
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	req_access = list(access_guppy)


//Petrov

/area/shuttle/petrov
	name = "\improper NTRL Polyp"
	requires_power = 1
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	req_access = list(access_petrov)

/area/shuttle/petrov/cell1
	name = "\improper NTRL Polyp - Isolation Cell 1"
	icon_state = "shuttle"
/area/shuttle/petrov/cell2
	name = "\improper NTRL Polyp - Isolation Cell 2"
	icon_state = "shuttlegrn"
/area/shuttle/petrov/cell3
	name = "\improper NTRL Polyp - Isolation Cell 3"
	icon_state = "shuttle"

/area/shuttle/petrov/hallwaya
	name = "\improper NTRL Polyp - Lower Hallway"
	icon_state = "hallA"

/area/shuttle/petrov/security
	name = "\improper NTRL Polyp - Security Office"
	icon_state = "checkpoint1"
	req_access = list(access_petrov_security)

/area/shuttle/petrov/rd
	icon_state = "heads_rd"
	name = "\improper NTRL Polyp - CSO's Office"
	icon_state = "head_quarters"
	req_access = list(access_petrov_rd)

/area/shuttle/petrov/cockpit
	name = "\improper NTRL Polyp - Cockpit"
	icon_state = "shuttlered"
	req_access = list(access_petrov_helm)

/area/shuttle/petrov/maint
	name = "\improper NTRL Polyp - Maintenance"
	icon_state = "engine"
	req_access = list(access_petrov_maint)

/area/shuttle/petrov/analysis
	name = "\improper NTRL Polyp - Analysis Lab"
	icon_state = "devlab"
	req_access = list(access_petrov_analysis)

/area/shuttle/petrov/toxins
	name = "\improper NTRL Polyp - Storage and Range"
	icon_state = "toxstorage"
	req_access = list(access_petrov_toxins)

/area/shuttle/petrov/rnd
	name = "\improper NTRL Polyp - Fabricator Lab"
	icon_state = "devlab"

/area/shuttle/petrov/isolation
	name = "\improper NTRL Polyp - Isolation Lab"
	icon_state = "xeno_lab"

/area/shuttle/petrov/phoron
	name = "\improper NTRL Polyp - Heavy Containment"
	icon_state = "toxstorage"
	req_access = list(access_petrov_phoron)

/area/shuttle/petrov/custodial
	name = "\improper NTRL Polyp - Custodial"
	icon_state = "decontamination"

/area/shuttle/petrov/equipment
	name = "\improper NTRL Polyp - Equipment Storage"
	icon_state = "locker"

/area/shuttle/petrov/eva
	name = "\improper NTRL Polyp - EVA Storage"
	icon_state = "locker"

//Turbolift
/area/turbolift
	name = "\improper Turbolift"
	icon_state = "shuttle"
	requires_power = 0
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	req_access = list(access_maint_tunnels)

/area/turbolift/start
	name = "\improper Turbolift Start"

/area/turbolift/bridge
	name = "\improper bridge"
	base_turf = /turf/simulated/open

/area/turbolift/firstdeck
	name = "\improper first deck"
	base_turf = /turf/simulated/open

/area/turbolift/seconddeck
	name = "\improper second deck"
	base_turf = /turf/simulated/open

/area/turbolift/thirddeck
	name = "\improper third deck"
	base_turf = /turf/simulated/open

/area/turbolift/fourthdeck
	name = "\improper fourth deck"
	base_turf = /turf/simulated/floor/plating

/area/turbolift/cargo_lift
	name = "\improper Cargo Lift"
	icon_state = "shuttle3"
	base_turf = /turf/simulated/open

/area/turbolift/robotics_lift
	name = "\improper Robotics Lift"
	icon_state = "shuttle3"
	base_turf = /turf/simulated/open

/area/turbolift/missiles_lift
	name = "\improper Missiles Lift"
	icon_state = "shuttle3"
	base_turf = /turf/simulated/open

//Merchant

/area/shuttle/merchant/home
	name = "\improper Merchant Vessel"
	icon_state = "shuttlegrn"
	req_access = list(access_merchant)
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

// Elevator areas.
/area/turbolift/torch_top
	name = "lift (bridge)"
	lift_floor_label = "Bridge"
	lift_floor_name = "Bridge"
	lift_announce_str = "Arriving at Command Deck: Bridge. Meeting Room. Command Offices. AI Core. Landing Area. Auxiliary EVA."

/area/turbolift/torch_fourth
	name = "lift (first deck)"
	lift_floor_label = "Deck 1"
	lift_floor_name = "Operations Deck"
	lift_announce_str = "Arriving at Operations Deck: Infirmary. Security Wing. Research Wing. Auxiliary Cryogenic Storage. Emergency Armory."

/area/turbolift/torch_third
	name = "lift (second deck)"
	lift_floor_label = "Deck 2"
	lift_floor_name = "Maintenance Deck"
	lift_announce_str = "Arriving at Maintenance Deck: Engineering. Atmospherics. Sanitation. Storage."

/area/turbolift/torch_second
	name = "lift (third deck)"
	lift_floor_label = "Deck 3"
	lift_floor_name = "Habitation Deck"
	lift_announce_str = "Arriving at Habitation Deck: EVA. Telecommunications. Mess Hall. Officer's Mess. Lounge. Diplomatic Quarters. Hydroponics. Cryogenic Storage. Holodeck. Gym."

/area/turbolift/torch_first
	name = "lift (fourth deck)"
	lift_floor_label = "Deck 4"
	lift_floor_name = "Supply Deck"
	lift_announce_str = "Arriving at Supply Deck: Shuttle Docks. Pathfinder's Office. Cargo Storage. Supply Office. Laundry."

/area/turbolift/torch_ground
	name = "lift (fifth deck)"
	lift_floor_label = "Deck 5"
	lift_floor_name = "Hangar Deck"
	lift_announce_str = "Arriving at Hangar Deck: Main Hangar. Supply Warehouse. Expedition Preparation. Mineral Processing."
	base_turf = /turf/simulated/floor
