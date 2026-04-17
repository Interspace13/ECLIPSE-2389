/**
 * Definitions for every area used on the ISX Shinohara map.
 *
 * This file is only to contain definitions for the master Shinohara and Shinohara exterior areas, and this documentation.
 * The other files in this subfolder ('maps/shinohara/code/_shinohara_areas') are the remaining ISX Shinohara areas,
 * divided broadly by deck.
 *
 * Whenever areas are added or removed from the Shinohara, it should be handled within this subfolder.
 *
 * GUIDELINES:
 * * The Shinohara should not have any areas mapped to it which are defined outside this file.
 * * Any PR that removes all areas of a given definition should also remove or comment out that definition from here.
 * * No area should exist across multiple decks. Ex., an elevator vestibule on all three decks should have three child definitions, one for each deck. This is both for organization and for managing area objects like APCs etc.
 * * Update the groupings list if anything is added/removed.
 */

/// ISX Shinohara master areas
/area/shinohara
	name = "Shinohara (PARENT AREA - DON'T USE)"
	icon = 'icons/turf/areas_shinohara.dmi'
	icon_state = "unknown"
	station_area = TRUE
	ambience = AMBIENCE_GENERIC
	// Remember to set this for new areas!!
	// Shinohara_deck = 1, 2, or 3
	// Remember to set this for new areas!!
	// department = constant in '\_DEFINES\departments.dm'
	// Remember to set this for new areas!!
	// subdepartment = constant in '\_DEFINES\departments.dm'
	area_blurb = "One of the compartments of the ISX Shinohara."

/area/shinohara/exterior
	name = "Shinohara - Exterior"
	icon_state = "exterior"
	base_turf = /turf/space
	requires_power = FALSE
	// This area will place starlight on any turf it's put on!
	needs_starlight = TRUE
	has_gravity = FALSE
	no_light_control = TRUE
	allow_nightmode = FALSE
	ambience = AMBIENCE_SPACE
	area_flags = AREA_FLAG_HIDE_FROM_HOLOMAP | AREA_FLAG_PREVENT_PERSISTENT_TRASH
	area_blurb = "The sheer scale of the ISX Shinohara is never more apparent when crawling across its hull like an ant."

// Command
/area/shinohara/command/conference
	name = "Briefing Room"
	icon_state = "head_quarters"

/area/shinohara/command/captainmess
	name = "Officer's Mess"
	icon_state = "bar"

/area/shinohara/command/pathfinder
	name = "\improper Pathfinder's Office"
	icon_state = "head_quarters"

/area/shinohara/command/pilot
	name = "\improper Pilot's Lounge"
	icon_state = "head_quarters"

/area/shinohara/command/armoury
	name = "\improper Emergency Armory"
	icon_state = "Warden"

/area/shinohara/command/armoury/access
	name = "\improper Emergency Armory - Access"

/area/shinohara/command/armoury/tactical
	name = "\improper Emergency Armory - Tactical"
	icon_state = "Tactical"

/area/shinohara/command/disperser
	name = "\improper Obstruction Field Disperser"
	icon_state = "disperser"

/area/shinohara/command/disperser/odst
	name = "\improper Drop-Pod Bays"
	icon_state = "disperser"

/area/shinohara/crew_quarters/heads
	icon_state = "heads"

/area/shinohara/crew_quarters/heads/cobed
	icon_state = "heads_cap"
	name = "\improper Command - CO's Quarters"

/area/shinohara/crew_quarters/heads/office/co
	icon_state = "heads_cap"
	name = "\improper Command - CO's Office"

/area/shinohara/crew_quarters/heads/office/xo
	icon_state = "heads_hop"
	name = "\improper Command - XO's Office"

/area/shinohara/crew_quarters/heads/office/rd
	icon_state = "heads_rd"
	name = "\improper Command - CSO's Office"

/area/shinohara/crew_quarters/heads/office/cmo
	icon_state = "heads_cmo"
	name = "\improper Command - CMO's Office"

/area/shinohara/crew_quarters/heads/office/ce
	icon_state = "heads_ce"
	name = "\improper Engineering - CE's Office"

/area/shinohara/crew_quarters/heads/office/cos
	icon_state = "heads_hos"
	name = "\improper Command - CoS' Office"

/area/shinohara/crew_quarters/heads/office/cl
	icon_state = "heads_cl"
	name = "\improper Command - CL's Office"

/area/shinohara/crew_quarters/heads/office/solrep
	icon_state = "heads_sol"
	name = "\improper Command - Rep's Office"

/area/shinohara/crew_quarters/heads/office/solrep/backroom
	icon_state = "heads_sol"
	name = "\improper Command - Rep's Backroom"

/area/shinohara/crew_quarters/heads/office/sea
	icon_state = "heads_sea"
	name = "\improper Command - Fleet SEA's Office"

/area/shinohara/crew_quarters/heads/office/sea/marine
	name = "\improper Command - Marine SEA's Office"

// Engineering

/area/shinohara/engineering/shieldbay
	name = "Shield Bay"
	icon_state = "engineering"

/area/shinohara/engineering/bluespace
	name = "Bluespace Drive Monitoring"
	icon_state = "engineering"
	color = COLOR_BLUE_GRAY

/area/shinohara/engineering/bluespace/containment
	name = "Bluespace Drive Containment"
	color = COLOR_BLUE_LIGHT

/area/shinohara/engineering/atmos/aux
	name = "\improper Auxiliary Atmospherics"
	icon_state = "atmos"

/area/shinohara/engineering/auxpower
	name = "\improper Auxiliary Power Storage"
	icon_state = "engine_smes"

/area/shinohara/engineering/hardstorage
	name = "\improper Engineering Hard Storage"
	icon_state = "engineering_storage"

/area/shinohara/engineering/hardstorage/aux
	name = "\improper Auxiliary Engineering Hard Storage"
	icon_state = "engineering_storage"

//Vacant Areas
/area/shinohara/vacant
	name = "\improper Vacant Area"
	icon_state = "construction"

/area/shinohara/vacant/armory
	name = "\improper Auxiliary Armory"
	icon_state = "Tactical"

/area/shinohara/vacant/mess
	name = "\improper Old Mess"
	icon_state = "bar"

/area/shinohara/vacant/chapel
	name = "\improper Unused Chapel"
	icon_state = "chapel"

/area/shinohara/vacant/prototype

/area/shinohara/vacant/prototype/control
	name = "\improper Prototype Fusion Reactor Control Room"
	icon_state = "engine_monitoring"

/area/shinohara/vacant/prototype/engine
	name = "\improper Prototype Fusion Reactor Chamber"
	icon_state = "toxstorage"

/area/shinohara/vacant/cargo
	name = "\improper Requisitions Office"
	icon_state = "quart"

/area/shinohara/vacant/bar
	name = "\improper Hidden Bar"
	icon_state = "bar"

// Storage
/area/shinohara/storage/auxillary

/area/shinohara/storage/auxillary/port
	name = "Port Auxillary Storage"
	icon_state = "auxstorage"

/area/shinohara/storage/auxillary/starboard
	name = "Starboard Auxillary Storage"
	icon_state = "auxstorage"

/area/shinohara/storage/cargo
	name = "Cargo Storage"
	icon_state = "quartstorage"

/area/shinohara/storage/expedition
	name = "Auxiliary Expedition Storage"
	icon_state = "storage"

/area/shinohara/medical/storage
	name = "Medical Storage"
	icon_state = "medbay4"

/area/shinohara/storage/research
	name = "Research Storage"
	icon_state = "toxstorage"

// Supply

/area/shinohara/quartermaster

/area/shinohara/quartermaster/office
	name = "\improper Supply Office"
	icon_state = "quartoffice"

/area/shinohara/quartermaster/storage
	name = "\improper Supply Warehouse"
	icon_state = "quartstorage"

/area/shinohara/quartermaster/sorting
	name ="\improper Supply Sorting"
	icon_state = "quartstorage"

/area/shinohara/quartermaster/storage/upper
	name = "\improper Supply Upper Warehouse"

/area/shinohara/quartermaster/deckchief
	name = "\improper Deck Officer's Office"
	icon_state = "quart"

/area/shinohara/quartermaster/expedition
	name = "\improper Expedition Preparation"
	icon_state = "mining"

/area/shinohara/quartermaster/expedition/eva
	name = "\improper Expedition EVA"
	icon_state = "mining"

/area/shinohara/quartermaster/expedition/storage
	name = "\improper Hangar Expedition Storage"
	icon_state = "mining"

/area/shinohara/quartermaster/expedition/atmos
	name = "\improper Hangar Atmospheric Storage"
	icon_state = "mining"

/area/shinohara/quartermaster/exploration
	name = "\improper Exploration Equipment"
	icon_state = "exploration"

/area/shinohara/quartermaster/shuttlefuel
	name = "\improper Shuttle Fuel Bay"
	icon_state = "toxstorage"

/area/shinohara/quartermaster/hangar
	name = "\improper Hangar Deck"
	icon_state = "hangar"

/area/shinohara/quartermaster/hangar/top
	name = "\improper Hangar Upper Walkway"

/area/shinohara/quartermaster/flightcontrol
	name = "\improper Flight Control Tower"
	icon_state = "hangar"

// Research
/area/shinohara/rnd/canister
	name = "\improper Canister Storage"
	icon_state = "toxstorage"

/area/shinohara/rnd/development
	name = "\improper Fabricator Lab"
	icon_state = "devlab"

/area/shinohara/rnd/entry
	name = "\improper Research and Development Access"
	icon_state = "decontamination"

/area/shinohara/rnd/locker
	name = "\improper Research Locker Room"
	icon_state = "locker"

/area/shinohara/rnd/xenobiology
	name = "\improper Xenobiology Lab"
	icon_state = "xeno_lab"

/area/shinohara/rnd/xenobiology/entry
	name = "\improper Xenobiology Access"
	icon_state = "xeno_lab"

/area/shinohara/rnd/xenobiology/xenoflora
	name = "\improper Xenoflora Lab"
	icon_state = "xeno_f_lab"

// Crew areas
/area/shinohara/crew_quarters/bar
	name = "\improper Bar"

// Crew areas
/area/shinohara/crew_quarters/bar/storage
	name = "\improper Service Storage"

/area/shinohara/crew_quarters/cryolocker
	name = "\improper Cryogenic Storage Wardrobe"
	icon_state = "locker"

/area/shinohara/crew_quarters/head
	name = "\improper Deck 3 Head"
	icon_state = "toilet"

/area/shinohara/crew_quarters/head/aux
	name = "\improper First Deck Head"

/area/shinohara/crew_quarters/head/sauna
	name = "\improper Sauna"
	icon_state = "sauna"

/area/shinohara/crew_quarters/mess
	name = "\improper Mess Hall"
	icon_state = "cafeteria"

/area/shinohara/crew_quarters/galley
	name = "\improper Galley"
	icon_state = "kitchen"

/area/shinohara/crew_quarters/galleybackroom
	name = "\improper Galley Cold Storage"
	icon_state = "locker"

/area/shinohara/crew_quarters/commissary
	name = "\improper Commissary"
	icon_state = "crew_quarters"

/area/shinohara/crew_quarters/lounge
	name = "\improper Lounge"
	icon_state = "crew_quarters"

/area/shinohara/crew_quarters/safe_room
	name = "\improper Safe Room"
	icon_state = "crew_quarters"

/area/shinohara/crew_quarters/adherent
	name = "\improper Adherent Maintenence"
	icon_state = "robotics"

/area/shinohara/holocontrol
	name = "\improper Holodeck Control"
	icon_state = "Holodeck"

// Tcomms
/area/shinohara/tcommsat/storage
	name = "\improper Telecoms Storage"
	icon_state = "tcomsatstore"

// Security

/area/shinohara/security/bo
	name = "\improper Security - Brig Chief"
	icon_state = "Warden"

/area/shinohara/security/storage
	name = "\improper Security - Equipment Storage"
	icon_state = "security"

/area/shinohara/security/armoury
	name = "\improper Security - Armory"
	icon_state = "Warden"

/area/shinohara/security/detectives_office
	name = "\improper Security - Investigations Office"
	icon_state = "detective"

/area/shinohara/security/locker
	name = "\improper Security - Locker Room"
	icon_state = "security"

/area/shinohara/security/evidence
	name = "\improper Security - Evidence Storage"
	icon_state = "security"

/area/shinohara/security/processing
	name = "\improper Security - Processing"
	icon_state = "security"

/area/shinohara/security/questioning
	name = "\improper Security - Interview Room"
	icon_state = "security"

/area/shinohara/security/wing
	name = "\improper Security Wing"
	icon_state = "security"

/area/shinohara/security/bridgecheck
	name = "\improper Bridge Deck Security Checkpoint"
	icon_state = "checkpoint"

/area/shinohara/security/opscheck
	name = "\improper First Deck Security Checkpoint"
	icon_state = "checkpoint"

/area/shinohara/security/habcheck
	name = "\improper Deck 3 Security Checkpoint"
	icon_state = "checkpoint"

/area/shinohara/security/hangcheck
	name = "\improper Deck 2 Security Checkpoint"
	icon_state = "checkpoint"

/area/shinohara/security/brig/perma
	name = "\improper Permanent Brig"
	icon_state = "brig"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/shinohara/security/brig/psionic
	name = "\improper Psionic Holding"
	icon_state = "misclab"
	area_flags = AREA_FLAG_RAD_SHIELDED

// AI
/area/shinohara/turret_protected/ai_foyer
	name = "\improper AI Chamber Foyer"
	icon_state = "ai_foyer"

/area/shinohara/turret_protected/ai_outer_chamber
	name = "\improper Outer AI Chamber"
	icon_state = "checkpoint"

/area/shinohara/turret_protected/ai_data_chamber
	name = "\improper AI Data Chamber"
	icon_state = "ai_foyer"

// Medbay

/area/shinohara/medical/equipstorage
	name = "\improper Infirmary Equipment Storage"
	icon_state = "medbay4"
	ambience = list('sound/ambience/signal.ogg')

/area/shinohara/medical/infirmary
	name = "\improper Infirmary Hallway"
	icon_state = "medbay"

/area/shinohara/medical/infirmreception
	name = "\improper Infirmary Reception"
	icon_state = "medbay2"
	ambience = list('sound/ambience/signal.ogg')

/area/shinohara/medical/locker
	name = "\improper Infirmary Locker Room"
	icon_state = "locker"

/area/shinohara/medical/counselor
	name = "\improper Counselor's Office"
	icon_state = "medbay3"
	ambience = list('sound/ambience/signal.ogg')

/area/shinohara/medical/washroom
	name = "\improper Infirmary Washroom"
	icon_state = "toilet"

/area/shinohara/chapel/crematorium
	name = "\improper Crematorium"
	icon_state = "chapel"

/area/shinohara/medical/triage
	name = "\improper Triage"
	icon_state = "medbay"

/area/shinohara/medical/reslab
	name = "\improper Resuscitation Lab"

/area/shinohara/medical/virology
	name = "\improper Virology"

/area/shinohara/medical/virology/access
	name = "\improper Virology Access"

/area/shinohara/crew_quarters/safe_room/medical
	name = "\improper Medical Safe Room"

// Shield Rooms
/area/shinohara/shield
	name = "\improper Shield Generator"
	icon_state = "engineering"

/area/shinohara/shield/bridge
	name = "\improper Bridge Shield Generator"

// Misc
/area/shinohara/teleporter
	name = "\improper Teleporter"
	icon_state = "teleporter"

/area/shinohara/maintenance/auxsolarbridge
	name = "Solar Maintenance - Bridge"
	icon_state = "SolarcontrolS"

/area/shinohara/solar/bridge
	name = "\improper Bridge Solar Array"
	icon_state = "panelsS"

/area/shinohara/aux_eva
	name = "\improper Command EVA Storage"
	icon_state = "eva"

/area/shinohara/thruster
	icon_state = "thruster"

/area/shinohara/thruster/d5port
	name = "\improper Deck 5 Port Nacelle"

/area/shinohara/thruster/d5starboard
	name = "\improper Deck 5 Starboard Nacelle"

/area/shinohara/thruster/d3port
	name = "\improper Deck 3 Port Nacelle"

/area/shinohara/thruster/d3starboard
	name = "\improper Deck 3 Starboard Nacelle"

/area/shinohara/engineering/fuelbay
	name = "\improper Fuel Bay"
	icon_state = "engineering"

/area/shinohara/engineering/wastetank
	name = "\improper Waste Tank"
	icon_state = "engineering"

// Command

/area/shinohara/bridge
	name = "\improper SGV Dagon Bridge"
	icon_state = "bridge"

/area/shinohara/bridge/hallway
	name = "\improper Bridge Access Hallway"
	icon_state = "bridge_hallway"

/area/shinohara/bridge/hallway/port
	name = "\improper Bridge Port Access Hallway"

/area/shinohara/bridge/hallway/starboard
	name = "\improper Bridge Starboard Access Hallway"

/area/shinohara/bridge/meeting_room
	name = "\improper Command Meeting Room"
	icon_state = "bridge_meeting"

/area/shinohara/crew_quarters/heads
	icon_state = "head_quarters"

/area/shinohara/maintenance/substation
	name = "Substation"
	icon_state = "substation"

/area/shinohara/maintenance/exterior
	name = "\improper Exterior Reinforcements"
	icon_state = "maint_exterior"
	has_gravity = FALSE

/area/shinohara/crew_quarters_boh/cabin_main/officerbunk
	name = "\improper Officer Quarters"
	icon_state = "Sleep"
	area_flags = AREA_FLAG_RAD_SHIELDED

// CentCom

/area/shinohara/centcom/control
	name = "\improper Centcom Control"

/area/shinohara/centcom/creed
	name = "Creed's Office"

/area/shinohara/centcom/evac
	name = "\improper Centcom Emergency Shuttle"

/area/shinohara/centcom/ferry
	name = "\improper Centcom Transport Shuttle"

/area/shinohara/centcom/living
	name = "\improper Centcom Living Quarters"

/area/shinohara/centcom/suppy
	name = "\improper Centcom Supply Shuttle"

/area/shinohara/centcom/test
	name = "\improper Centcom Testing Facility"

// Solars
/area/shinohara/maintenance/auxsolarport
	name = "Solar Maintenance - Port"
	icon_state = "SolarcontrolP"

/area/shinohara/maintenance/auxsolarstarboard
	name = "Solar Maintenance - Starboard"
	icon_state = "SolarcontrolS"

/area/shinohara/solar
	requires_power = 1
	always_unpowered = 1
	has_gravity = FALSE
	base_turf = /turf/space

/area/shinohara/solar/auxstarboard
	name = "\improper Fore Starboard Solar Array"
	icon_state = "panelsA"

/area/shinohara/solar/port
	name = "\improper Port Auxiliary Solar Array"
	icon_state = "panelsP"

// Maintenance

/area/shinohara/maintenance/disposal
	name = "Waste Disposal"
	icon_state = "disposal"

/area/shinohara/maintenance/incinerator
	name = "\improper Incinerator"
	icon_state = "disposal"

/area/shinohara/maintenance/waterstore
	name = "\improper Cistern"
	icon_state = "disposal"

/area/shinohara/maintenance/aux_med
	name = "\improper Aux. Medical"
	icon_state = "disposal"

// Storage

/area/shinohara/storage/primary
	name = "Primary Tool Storage"
	icon_state = "primarystorage"

/area/shinohara/storage/tech
	name = "Technical Storage"
	icon_state = "storage"

/area/shinohara/storage/tools
	name = "Auxiliary Tool Storage"
	icon_state = "auxstorage"

// Holodecks

/area/shinohara/holodeck
	name = "\improper Holodeck"
	icon_state = "Holodeck"

/area/shinohara/holodeck/alphadeck
	name = "\improper Holodeck Alpha"

/area/shinohara/holodeck/source_plating
	name = "\improper Holodeck - Off"

/area/shinohara/holodeck/source_emptycourt
	name = "\improper Holodeck - Empty Court"

/area/shinohara/holodeck/source_boxingcourt
	name = "\improper Holodeck - Boxing Court"

/area/shinohara/holodeck/source_basketball
	name = "\improper Holodeck - Basketball Court"

/area/shinohara/holodeck/source_thunderdomecourt
	name = "\improper Holodeck - Thunderdome Court"

/area/shinohara/holodeck/source_courtroom
	name = "\improper Holodeck - Courtroom"

/area/shinohara/holodeck/source_beach
	name = "\improper Holodeck - Beach"

/area/shinohara/holodeck/source_wildlife
	name = "\improper Holodeck - Wildlife Simulation"

/area/shinohara/holodeck/source_meetinghall
	name = "\improper Holodeck - Meeting Hall"

/area/shinohara/holodeck/source_theatre
	name = "\improper Holodeck - Theatre"

/area/shinohara/holodeck/source_picnicarea
	name = "\improper Holodeck - Picnic Area"

/area/shinohara/holodeck/source_snowfield
	name = "\improper Holodeck - Snow Field"

/area/shinohara/holodeck/source_desert
	name = "\improper Holodeck - Desert"

/area/shinohara/holodeck/source_space
	name = "\improper Holodeck - Space"
	has_gravity = 0

/area/shinohara/holodeck/source_cafe
	name = "\improper Holodeck - Cafe"

/area/shinohara/holodeck/source_volleyball
	name = "\improper Holodeck - Volleyball"

/area/shinohara/holodeck/source_temple
	name = "\improper Holodeck - Temple"

/area/shinohara/holodeck/source_plaza
	name = "\improper Holodeck - Plaza"

// Engineering

/area/shinohara/engineering/atmos/storage
	name = "\improper Atmospherics Storage"
	icon_state = "atmos_storage"

/area/shinohara/engineering/engine_room
	name = "\improper Engine Room"
	icon_state = "engine"

/area/shinohara/engineering/drone_fabrication
	name = "\improper Engineering Drone Fabrication"
	icon_state = "drone_fab"
/area/shinohara/engineering/engine_monitoring
	name = "\improper Engine Monitoring Room"
	icon_state = "engine_monitoring"

/area/shinohara/engineering/engine_smes
	name = "\improper Engineering SMES"
	icon_state = "engine_smes"

/area/shinohara/engineering/engineering_monitoring
	name = "\improper Engineering Monitoring Room"
	icon_state = "engine_monitoring"

/area/shinohara/engineering/foyer
	name = "\improper Engineering Foyer"
	icon_state = "engineering_foyer"

/area/shinohara/engineering/locker_room
	name = "\improper Engineering Locker Room"
	icon_state = "engineering_locker"

/area/shinohara/engineering/storage
	name = "\improper Engineering Storage"
	icon_state = "engineering_storage"

/area/shinohara/engineering/atmos
	name = "\improper Atmospherics"
	icon_state = "atmos"

// Medical
/area/shinohara/medical/chemistry
	name = "\improper Chemistry"
	icon_state = "chem"

/area/shinohara/medical/morgue
	name = "\improper Morgue"
	icon_state = "morgue"

/area/shinohara/medical/morgue/autopsy
	name = "\improper Autopsy"
	icon_state = "autopsy"

/area/shinohara/medical/sleeper
	name = "\improper Emergency Treatment Centre"
	icon_state = "exam_room"

/area/shinohara/medical/surgery
	name = "\improper Operating Theatre 1"
	icon_state = "surgery"

/area/shinohara/medical/surgery2
	name = "\improper Operating Theatre 2"
	icon_state = "surgery"

// Research
/area/shinohara/assembly

/area/shinohara/assembly/chargebay
	name = "\improper Mech Bay"
	icon_state = "mechbay"

/area/shinohara/assembly/robotics
	name = "\improper Robotics Lab"
	icon_state = "robotics"

/area/shinohara/assembly/robotics/lower
	name = "\improper Lower Robotics Lab"

/area/shinohara/assembly/robotics/surgery
	name = "\improper Robotics Operating Theatre"

/area/shinohara/rnd/misc_lab
	name = "\improper Miscellaneous Research"
	icon_state = "misclab"

/area/shinohara/rnd/research
	name = "\improper Research Hallway"
	icon_state = "research"

/area/shinohara/rnd/breakroom
	name = "\improper Research Break Room"
	icon_state = "researchbreak"

// Shuttles
/area/shinohara/shuttle/administration/centcom
	name = "\improper Administration Shuttle"
	icon_state = "shuttlered"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/shinohara/shuttle/escape_pod1/centcom
	icon_state = "shuttle"

/area/shinohara/shuttle/escape_pod2/centcom
	icon_state = "shuttle"

/area/shinohara/shuttle/escape_pod3/centcom
	icon_state = "shuttle"

/area/shinohara/shuttle/escape_pod5/centcom
	icon_state = "shuttle"

/area/shinohara/supply/dock
	name = "Supply Shuttle"
	icon_state = "shuttle3"
	requires_power = 0

// Secure

/area/shinohara/prison/solitary
	name = "Solitary Confinement"
	icon_state = "brig"

/area/shinohara/security/nuke_storage
	name = "\improper Vault"
	icon_state = "nuke_storage"

// Crew

/area/shinohara/crew_quarters/sleep/cryo
	name = "\improper Deck 3 Cryogenic Storage"
	icon_state = "Sleep"

/area/shinohara/hydroponics
	name = "\improper Hydroponics"
	icon_state = "hydro"

/area/shinohara/janitor
	name = "\improper Custodial Closet"
	icon_state = "janitor"


/area/shinohara/janitor/aux
	name = "\improper Aux Custodial Closet"

// Tcomm
/area/shinohara/tcommsat/

/area/shinohara/tcommsat/chamber
	name = "\improper Telecoms Central Compartment"
	icon_state = "tcomsatcham"

/area/shinohara/tcommsat/computer
	name = "\improper Telecoms Control Room"
	icon_state = "tcomsatcomp"

// AI

/area/shinohara/ai_monitored
	name = "AI Monitored Area"

/area/shinohara/ai_monitored/storage/eva
	name = "\improper EVA Storage"
	icon_state = "eva"

/area/shinohara/turret_protected/ai
	name = "\improper AI Chamber"
	icon_state = "ai_chamber"
/area/shinohara/turret_protected/ai_upload
	name = "\improper AI Upload Chamber"
	icon_state = "ai_upload"

/area/shinohara/turret_protected/ai_upload_foyer
	name = "\improper  AI Upload Access"
	icon_state = "ai_foyer"

// Chapel

/area/shinohara/chapel/main
	name = "\improper Chapel"
	icon_state = "chapel"

/area/shinohara/chapel/office
	name = "\improper Chaplain's Office"
	color = COLOR_GRAY80

// Merchant

/area/shinohara/merchant_station
	name = "\improper Merchant Station"
	icon_state = "LP"

// ACTORS GUILD
/area/shinohara/acting
	name = "\improper Centcom Acting Guild"
	icon_state = "red"
	requires_power = 0

/area/shinohara/acting/backstage
	name = "\improper Backstage"

/area/shinohara/acting/stage
	name = "\improper Stage"
	icon_state = "yellow"

// Thunderdome

/area/shinohara/tdome
	name = "\improper Thunderdome"
	icon_state = "thunder"
	requires_power = 0

/area/shinohara/tdome/tdome1
	name = "\improper Thunderdome (Team 1)"
	icon_state = "green"

/area/shinohara/tdome/tdome2
	name = "\improper Thunderdome (Team 2)"
	icon_state = "yellow"

/area/shinohara/tdome/tdomeadmin
	name = "\improper Thunderdome (Admin.)"
	icon_state = "purple"

/area/shinohara/tdome/tdomeobserve
	name = "\improper Thunderdome (Observer.)"
	icon_state = "purple"

/area/shinohara/command/gunnery
	name = "\improper Weapon Mounts"
	icon_state = "guntemp"

/area/shinohara/command/gunnery/missiles
	name = "\improper Missile Pod Exterior"
	icon_state = "kosmag1"

/area/shinohara/command/gunnery/missiles/inside
	name = "\improper Missile Pod Interior"
	icon_state = "kosmag2"

/area/shinohara/command/gunnery/missiles/storage
	name = "\improper Weapon Mounts"
	icon_state = "guntemp"

/area/shinohara/command/gunnery/missiles/storage/lower
	name = "\improper Weapon Mounts"

/area/shinohara/command/gunnery/mim
	name = "\improper Tactical Operations Center"
	icon_state = "guntemp"

/area/shinohara/command/gunnery/mim/door
	name = "\improper Tactical Operations Center Door"
	icon_state = "guntemp"

/////////
// Cabins
/////////

/area/shinohara/crew_quarters_boh/cabin_main
	name = "\improper Cabin Primary"
	icon_state = "crew_quarters"

/area/shinohara/crew_quarters_boh/cabin_main/c1
	name = "\improper Cabin One"
	icon_state = "Sleep"

/area/shinohara/crew_quarters_boh/cabin_main/c2
	name = "\improper Cabin Two"
	icon_state = "Sleep"

/area/shinohara/crew_quarters_boh/cabin_main/janitorial
	name = "\improper Cabin Janitorial"
	icon_state = "janitor"

//Psionic Advisor
/area/shinohara/crew_quarters/heads/office/psiadvisor
	name = "\improper Psionic Advisor"
	icon_state = "heads"

/*
/area/shinohara/crew_quarters/courtroom
	name = "\improper Courtroom"

/area/shinohara/crew_quarters/courtroom_private
	name = "\improper Courtroom Private"
//	req_access = list(access_lawyer)
*/

/////////
// Infantry
/////////
/area/shinohara/security/infantry
	name = "\improper Infantry Prep"
	icon_state = "crew_quarters"

/area/shinohara/security/infantry/gear
	name = "\improper Technician Prep"
	icon_state = "triage"
//	req_access = list(access_inftech, access_infmed)

/area/shinohara/security/infantry/com
	name = "\improper Squad Leader Prep"
	icon_state = "triage"

/area/shinohara/security/infantry/armory
	name = "\improper Infantry Hard Storage"
	icon_state = "triage"

/area/shinohara/security/infantry/bunk
	name = "\improper Infantry Barracks"
	icon_state = "Sleep"

/area/shinohara/security/infantry/exterior
	name = "\improper Infantry Barracks Exterior"
	icon_state = "Sleep"

/////////
// Anom
/////////
/area/shinohara/rnd/anom_storage
	name = "\improper Anomaly LTS"
	icon_state = "misclab"

/area/shinohara/rnd/anom_storage/gas
	name = "\improper LTS Gas Runoff"
	icon_state = "misclab"

/area/shinohara/rnd/anom_storage/living
	name = "\improper Biological LTS"
	icon_state = "triage"
