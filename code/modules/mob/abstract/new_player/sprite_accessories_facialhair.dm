/*
///////////////////////////////////
/  =---------------------------=  /
/  == Facial Hair Definitions ==  /
/  =---------------------------=  /
///////////////////////////////////
*/

/datum/sprite_accessory/facial_hair
	icon = 'icons/mob/human_face/facial_hair.dmi'
	gender = MALE // barf (unless you're a dorf, dorfs dig chix /w beards :P)
	///Should a skeleton keep this beard?
	var/keep_as_skeleton = FALSE

/datum/sprite_accessory/facial_hair/shaved
	name = "Shaved"
	icon_state = "bald"
	gender = NEUTER
	species_allowed = list(/datum/species/human,/datum/species/human/offworlder,/datum/species/machine/shell,/datum/species/machine/shell/rogue,/datum/species/zombie,/datum/species/unathi,/datum/species/zombie/unathi,
		/datum/species/tajaran,/datum/species/tajaran/zhan_khazan,/datum/species/tajaran/m_sai,/datum/species/tajaran/tesla_body,/datum/species/zombie/tajara,/datum/species/skrell,/datum/species/skrell/axiori,/datum/species/zombie/skrell,/datum/species/diona,
		/datum/species/diona/coeu, /datum/species/bug/type_b)

/datum/sprite_accessory/facial_hair/threeOclock
	name = "3 O'clock Shadow"
	icon_state = "facial_3oclock"

/datum/sprite_accessory/facial_hair/threeOclockstache
	name = "3 O'clock Shadow and Moustache"
	icon_state = "facial_3oclockmoustache"

/datum/sprite_accessory/facial_hair/fiveOclock
	name = "5 O'clock Shadow"
	icon_state = "facial_5oclock"

/datum/sprite_accessory/facial_hair/fiveOclockstache
	name = "5 O'clock Shadow and Moustache"
	icon_state = "facial_5oclockmoustache"

/datum/sprite_accessory/facial_hair/sevenOclock
	name = "7 O'clock Shadow"
	icon_state = "facial_7oclock"

/datum/sprite_accessory/facial_hair/sevenOclockstache
	name = "7 O'clock Shadow and Moustache"
	icon_state = "facial_7oclockmoustache"

/datum/sprite_accessory/facial_hair/threeOclockstubble
	name = "3 O'clock Stubble"
	icon_state = "facial_3oclock_stubble"

/datum/sprite_accessory/facial_hair/threeOclockstachestubble
	name = "3 O'clock Stubble and Moustache"
	icon_state = "facial_3oclockmoustache_stubble"

/datum/sprite_accessory/facial_hair/fiveOclockstubble
	name = "5 O'clock Stubble"
	icon_state = "facial_5oclock_stubble"

/datum/sprite_accessory/facial_hair/fiveOclockstachestubble
	name = "5 O'clock Stubble and Moustache"
	icon_state = "facial_5oclockmoustache_stubble"

/datum/sprite_accessory/facial_hair/sevenOclockstubble
	name = "7 O'clock Stubble"
	icon_state = "facial_7oclock_stubble"

/datum/sprite_accessory/facial_hair/sevenOclockstachestubble
	name = "7 O'clock Stubble and Moustache"
	icon_state = "facial_7oclockmoustache_stubble"

/datum/sprite_accessory/facial_hair/abe
	name = "Abraham Lincoln Beard"
	icon_state = "facial_abe"

/datum/sprite_accessory/facial_hair/biker
	name = "Biker Beard"
	icon_state = "facial_biker"

/datum/sprite_accessory/facial_hair/britstache
	name = "Britstache"
	icon_state = "facial_britstache"

/datum/sprite_accessory/facial_hair/chaplin
	name = "Square Mustache"
	icon_state = "facial_chaplin"

/datum/sprite_accessory/facial_hair/chinless
	name = "Chinless Beard"
	icon_state = "facial_chinlessbeard"

/datum/sprite_accessory/facial_hair/chinstrap
	name = "Chinstrap"
	icon_state = "facial_chinstrap"

/datum/sprite_accessory/facial_hair/croppedbeard
	name = "Full Cropped Beard"
	icon_state = "facial_croppedfullbeard"

/datum/sprite_accessory/facial_hair/dwarf
	name = "Dwarf Beard"
	icon_state = "facial_dwarf"

/datum/sprite_accessory/facial_hair/elvis
	name = "Elvis Sideburns"
	icon_state = "facial_elvis"
	species_allowed = list(/datum/species/human,/datum/species/human/offworlder,/datum/species/machine/shell,/datum/species/machine/shell/rogue,/datum/species/zombie)

/datum/sprite_accessory/facial_hair/fullbeard
	name = "Full Beard"
	icon_state = "facial_fullbeard"

/datum/sprite_accessory/facial_hair/gt
	name = "Goatee"
	icon_state = "facial_gt"

/datum/sprite_accessory/facial_hair/gt2
	name = "Goatee 2"
	icon_state = "facial_gt2"

/datum/sprite_accessory/facial_hair/gt3
	name = "Goatee 3"
	icon_state = "facial_gt3"

/datum/sprite_accessory/facial_hair/hip
	name = "Hipster Beard"
	icon_state = "facial_hip"

/datum/sprite_accessory/facial_hair/hogan
	name = "Hulk Hogan Mustache"
	icon_state = "facial_hogan" //-Neek

/datum/sprite_accessory/facial_hair/horseshoe
	name = "Horseshoe Mustache"
	icon_state = "facial_horseshoe"

/datum/sprite_accessory/facial_hair/jensen
	name = "Jensen Beard"
	icon_state = "facial_jensen"

/datum/sprite_accessory/facial_hair/longbeard
	name = "Long Beard"
	icon_state = "facial_longbeard"

/datum/sprite_accessory/facial_hair/lumberjack
	name = "Lumberjack"
	icon_state = "facial_lumberjack"

/datum/sprite_accessory/facial_hair/martial_artist
	name = "Martial Artist"
	icon_state = "facial_martialartist"

/datum/sprite_accessory/facial_hair/moonshiner
	name = "Moonshiner"
	icon_state = "facial_moonshiner"

/datum/sprite_accessory/facial_hair/mutton
	name = "Mutton Chops"
	icon_state = "facial_mutton"

/datum/sprite_accessory/facial_hair/muttonstache
	name = "Mutton Chops and Moustache"
	icon_state = "facial_muttonmus"

/datum/sprite_accessory/facial_hair/neckbeard
	name = "Neckbeard"
	icon_state = "facial_neckbeard"

/datum/sprite_accessory/facial_hair/seadog
	name = "Sea Dog"
	icon_state = "facial_seadog"

/datum/sprite_accessory/facial_hair/selleck
	name = "Selleck Mustache"
	icon_state = "facial_selleck"

/datum/sprite_accessory/facial_hair/sideburns
	name = "Sideburns"
	icon_state = "facial_sideburns"

/datum/sprite_accessory/facial_hair/tribeard
	name = "Tribeard"
	icon_state = "facial_tribeard"

/datum/sprite_accessory/facial_hair/volaju
	name = "Volaju"
	icon_state = "facial_volaju"

/datum/sprite_accessory/facial_hair/walrus
	name = "Walrus Moustache"
	icon_state = "facial_walrus"

/datum/sprite_accessory/facial_hair/watson
	name = "Watson Mustache"
	icon_state = "facial_watson"

/datum/sprite_accessory/facial_hair/wise
	name = "Wise Beard"
	icon_state = "facial_wise"

/datum/sprite_accessory/facial_hair/chinstrap2
	icon = 'icons/mob/human_face/facial_hair_multiply.dmi'
	name = "Chinstrap, Alt"
	icon_state = "facial_chinstrap_ii"
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/facial_hair/chinstrap2/stark
	name = "Stark"
	icon_state = "facial_stark"

/datum/sprite_accessory/facial_hair/chinstrap2/swire
	name = "Swire"
	icon_state = "facial_swire"

/datum/sprite_accessory/facial_hair/chinstrap2/vandyke
	name = "Van Dyke Mustache"
	icon_state = "facial_vandyke"

/datum/sprite_accessory/facial_hair/taj_goatee
	icon = 'icons/mob/human_face/tajara_facial_hair.dmi'
	name = "Tajara Goatee"
	icon_state = "facial_goatee"
	species_allowed = list(/datum/species/tajaran,/datum/species/tajaran/zhan_khazan,/datum/species/tajaran/m_sai,/datum/species/zombie/tajara)

/datum/sprite_accessory/facial_hair/taj_goatee/taj_goatee_faded
	name = "Tajara Goatee Faded"
	icon_state = "facial_goatee_faded"

/datum/sprite_accessory/facial_hair/taj_goatee/taj_moustache
	name = "Tajara Moustache"
	icon_state = "facial_moustache"

/datum/sprite_accessory/facial_hair/taj_goatee/taj_mutton
	name = "Tajara Mutton"
	icon_state = "facial_mutton"

/datum/sprite_accessory/facial_hair/taj_goatee/taj_pencilstache
	name = "Tajara Pencilstache"
	icon_state = "facial_pencilstache"

/datum/sprite_accessory/facial_hair/taj_goatee/taj_sideburns
	name = "Tajara Sideburns"
	icon_state = "facial_sideburns"

/datum/sprite_accessory/facial_hair/taj_goatee/taj_smallstache
	name = "Tajara Smallsatche"
	icon_state = "facial_smallstache"


/datum/sprite_accessory/facial_hair/tesla_body_goatee
	icon = 'icons/mob/human_face/tesla_body_facial_hair.dmi'
	name = "Tesla Rejuvenation Suit Goatee"
	icon_state = "facial_goatee"
	species_allowed = list(/datum/species/tajaran/tesla_body)

/datum/sprite_accessory/facial_hair/tesla_body_goatee/tesla_body_goatee_faded
	name = "Tesla Rejuvenation Suit Goatee Faded"
	icon_state = "facial_goatee_faded"

/datum/sprite_accessory/facial_hair/tesla_body_goatee/tesla_body_moustache
	name = "Tesla Rejuvenation Suit Moustache"
	icon_state = "facial_moustache"

/datum/sprite_accessory/facial_hair/tesla_body_goatee/tesla_body_mutton
	name = "Tesla Rejuvenation Suit Mutton"
	icon_state = "facial_mutton"

/datum/sprite_accessory/facial_hair/tesla_body_goatee/tesla_body_pencilstache
	name = "Tesla Rejuvenation Suit Pencilstache"
	icon_state = "facial_pencilstache"

/datum/sprite_accessory/facial_hair/tesla_body_goatee/tesla_body_sideburns
	name = "Tesla Rejuvenation Suit Sideburns"
	icon_state = "facial_sideburns"

/datum/sprite_accessory/facial_hair/tesla_body_goatee/tesla_body_smallstache
	name = "Tesla Rejuvenation Suit Smallsatche"
	icon_state = "facial_smallstache"

//unathi horn beards and the like

/datum/sprite_accessory/facial_hair/una_aquaticfrill
	icon = 'icons/mob/human_face/unathi_hair.dmi'
	name = "Unathi Aquatic Frills"
	icon_state = "facial_aquaticfrills"
	species_allowed = list(/datum/species/unathi,/datum/species/zombie/unathi)
	gender = NEUTER

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_bighorns
	name = "Unathi Big Horns"
	icon_state = "facial_bighorn"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_chinhorn
	name = "Unathi Chin Horn"
	icon_state = "facial_chinhorns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_curlhorn
	name = "Unathi Curled Horns"
	icon_state = "facial_curledhorn"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_dorsalfrill
	name = "Unathi Dorsal Frill"
	icon_state = "facial_dorsalfrill"

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_dracfrills
	name = "Unathi Draconic Frills"
	icon_state = "facial_dracfrills"

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_drachorn
	name = "Unathi Draconic Horns"
	icon_state = "facial_drachorn"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_hornadorns
	name = "Unathi Horn Adorns"
	icon_state = "facial_hornadorns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_longdorsal
	name = "Unathi Long Dorsal Frill"
	icon_state = "facial_longdorsal"

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_longfrill
	name = "Unathi Long Frills"
	icon_state = "facial_longfrills"

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_longfrill2
	name = "Unathi Long Frills 2"
	icon_state = "facial_longfrills2"

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_longspines
	name = "Unathi Long Spines"
	icon_state = "facial_longspines"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_lowerhorn
	name = "Unathi Lower Horns"
	icon_state = "facial_lowerhorn"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_mohawk
	name = "Unathi Mohawk"
	icon_state = "facial_mohawk"

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_ramhornshort
	name = "Unathi Short Ram Horns"
	icon_state = "facial_ramhorn"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_ramhornlong
	name = "Unathi Long Ram Horns"
	icon_state = "facial_ramhorn2"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_shortfrill
	name = "Unathi Short Frills"
	icon_state = "facial_shortfrills"

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_shortfrill2
	name = "Unathi Short Frills 2"
	icon_state = "facial_shortfrills2"

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_shorthorn
	name = "Unathi Short Horns"
	icon_state = "facial_shorthorn"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_shortspines
	name = "Unathi Short Spines"
	icon_state = "facial_shortspines"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_sidefrills
	name = "Unathi Side Frills"
	icon_state = "facial_sidefrills"

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_horns
	name = "Unathi Horns"
	icon_state = "facial_simplehorn"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_smallhorns
	name = "Unathi Small Horns"
	icon_state = "facial_smallhorn"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_spikehorn
	name = "Unathi Spike Horns"
	icon_state = "facial_spikehorn"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_swepthorns
	name = "Unathi Swept-Forward Horns"
	icon_state = "facial_swepthorn"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_swepthorns2
	name = "Unathi Swept-Forward Horns 2"
	icon_state = "facial_swepthorn2"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_demonforward
	name = "Unathi Forward Demon Horns"
	icon_state = "facial_demonforward"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_bullhorns
	name = "Unathi Bull Horns"
	icon_state = "facial_bullhorn"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_longhorns
	name = "Unathi Long Bull Horns"
	icon_state = "facial_longhorn"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_faun
	name = "Unathi Faun Horns"
	icon_state = "facial_faun"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_double
	name = "Unathi Double Horns"
	icon_state = "facial_dubhorns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_hood
	name = "Unathi Cobra Hood"
	icon_state = "facial_hood"

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_skewers
	name = "Unathi Super Long Horns"
	icon_state = "facial_skewers"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_chameleon
	name = "Unathi Chameleon Horns"
	icon_state = "facial_chameleon"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_dilocrest
	name = "Unathi Dilo Crest"
	icon_state = "dilocrest"

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_monocrest
	name = "Unathi Mono Crest"
	icon_state = "monocrest"

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_cryocrest
	name = "Unathi Cryo Crest"
	icon_state = "cryocrest"

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_corycrest
	name = "Unathi Cory Crest"
	icon_state = "corycrest"

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_albertahorns
	name = "Unathi Alberta Horns"
	icon_state = "albertahorns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_styrahorn
	name = "Unathi Styra Horn"
	icon_state = "styrahorn"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_styracrest
	name = "Unathi Styra Frill"
	icon_state = "styrafrill"

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_pachyboss
	name = "Unathi Pachy Boss"
	icon_state = "pachylump"

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_droopy
	name = "Unathi Droopy Dorsal Frill"
	icon_state = "unathi_droopydorsal"

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_regal
	name = "Unathi Regal Frills"
	icon_state = "unathi_regalfrills"

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_hornsbusted
	name = "Unathi Horns-Busted"
	icon_state = "unathi_simplehornbusted"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_ramhornshortbusted
	name = "Unathi Short Ram Horns-Busted"
	icon_state = "unathi_ramhornbusted"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_shorthornbusted
	name = "Unathi Short Horns-Busted"
	icon_state = "unathi_shorthornbusted"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_drachornbusted
	name = "Unathi Draconic Horns-Busted"
	icon_state = "unathi_drachornbusted"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_shortfrill2busted
	name = "Unathi Short Frills 2-Busted"
	icon_state = "unathi_shortfrills2busted"

/datum/sprite_accessory/facial_hair/una_aquaticfrill/una_styrahornbusted
	name = "Unathi Styra Horn-Busted"
	icon_state = "styrahornbusted"
	keep_as_skeleton = TRUE

//ipc screens

/datum/sprite_accessory/facial_hair/ipc_screen_blank
	icon = 'icons/mob/human_face/ipc_screens.dmi'
	name = "blank IPC screen"
	icon_state = "ipc_blank"
	species_allowed = list(/datum/species/machine)
	robotize_type_required = list()
	required_organ = BP_HEAD
	gender = NEUTER

/datum/sprite_accessory/facial_hair/ipc_screen_blank/none
	name = "no IPC screen"
	icon_state = "none"
	species_allowed = list(/datum/species/machine, /datum/species/machine/bishop)
	robotize_type_required = list(PROSTHETIC_HOPLAN, PROSTHETIC_RAXUS, PROSTHETIC_INDRICUS, PROSTHETIC_SELEN)

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_blue
	name = "blue IPC screen"
	icon_state = "ipc_blue"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_breakout
	name = "breakout IPC screen"
	icon_state = "ipc_breakout"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_cancel
	name = "cancel IPC screen"
	icon_state = "ipc_cancel"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_console
	name = "console IPC screen"
	icon_state = "ipc_console"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_database
	name = "database IPC screen"
	icon_state = "ipc_database"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_eight
	name = "eight IPC screen"
	icon_state = "ipc_eight"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_eye
	name = "eye IPC screen"
	icon_state = "ipc_eye"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_goggles
	name = "goggles IPC screen"
	icon_state = "ipc_goggles"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_gol_glider
	name = "GoL glider IPC screen"
	icon_state = "ipc_gol_glider"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_green
	name = "green IPC screen"
	icon_state = "ipc_green"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_heart
	name = "heart IPC screen"
	icon_state = "ipc_heart"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_heartrate
	name = "heartrate IPC screen"
	icon_state = "ipc_heartrate"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_lumi_eyes
	name = "lumi eyes IPC screen"
	icon_state = "ipc_lumi_eyes"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_monoeye
	name = "monoeye IPC screen"
	icon_state = "ipc_monoeye"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_scren_music
	name = "music IPC screen"
	icon_state = "ipc_music"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_nature
	name = "nature IPC screen"
	icon_state = "ipc_nature"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_orange
	name = "orange IPC screen"
	icon_state = "ipc_orange"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_pink
	name = "pink IPC screen"
	icon_state = "ipc_pink"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_purple
	name = "purple IPC screen"
	icon_state = "ipc_purple"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_rainbow
	name = "rainbow IPC screen"
	icon_state = "ipc_rainbow"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_red
	name = "red IPC screen"
	icon_state = "ipc_red"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_rgb
	name = "RGB IPC screen"
	icon_state = "ipc_rgb"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_scroll
	name = "scroll IPC screen"
	icon_state = "ipc_scroll"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_shower
	name = "shower IPC screen"
	icon_state = "ipc_shower"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_smiley
	name = "smiley IPC screen"
	icon_state = "ipc_smiley"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_static
	name = "static IPC screen"
	icon_state = "ipc_static"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_static2
	name = "static2 IPC screen"
	icon_state = "ipc_static2"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_static3
	name = "static3 IPC screen"
	icon_state = "ipc_static3"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_testcard
	name = "testcard IPC screen"
	icon_state = "ipc_testcard"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_waiting
	name = "waiting IPC screen"
	icon_state = "ipc_waiting"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_yellow
	name = "yellow IPC screen"
	icon_state = "ipc_yellow"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_nanotrasen
	name = "nanotrasen IPC screen"
	icon_state = "ipc_nt"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_hephaestus
	name = "hephaestus IPC screen"
	icon_state = "ipc_heph"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_idris
	name = "idris IPC screen"
	icon_state = "ipc_idris"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_zavodskoi
	name = "zavodskoi IPC screen"
	icon_state = "ipc_zavod"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_zenghu
	name = "zeng-hu IPC screen"
	icon_state = "ipc_zenghu"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_scc
	name = "scc IPC screen"
	icon_state = "ipc_scc"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_biesel
	name = "republic of biesel IPC screen"
	icon_state = "ipc_biesel"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_sol
	name = "sol alliance IPC screen"
	icon_state = "ipc_sol"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_coalition
	name = "coalition of colonies IPC screen"
	icon_state = "ipc_coc"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_elyra
	name = "republic of elyra IPC screen"
	icon_state = "ipc_elyra"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_eridani
	name = "eridani IPC screen"
	icon_state = "ipc_eridani"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_burzsia
	name = "burzsia IPC screen"
	icon_state = "ipc_burzsia"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_tp
	name = "trinary perfection IPC screen"
	icon_state = "ipc_tp"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_gd
	name = "golden deep IPC screen"
	icon_state = "ipc_gd"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_slot_machine
	name = "slot machine IPC screen"
	icon_state = "ipc_slotmachine"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_confirm
	name = "confirm IPC screen"
	icon_state = "ipc_confirm"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_orion
	name = "orion express IPC screen"
	icon_state = "ipc_orion"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_konyang
	name = "konyang IPC screen"
	icon_state = "ipc_konyang"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_mictlan
	name = "mictlan IPC screen"
	icon_state = "ipc_mictlan"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_himeo
	name = "himean globe IPC screen"
	icon_state = "ipc_himeo"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_himeo2
	name = "himeo IPC screen"
	icon_state = "ipc_himeo2"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_xanu
	name = "xanu IPC screen"
	icon_state = "ipc_xanu"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_xanu2
	name = "xanan banner IPC screen"
	icon_state = "ipc_xanu2"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_assunzione
	name = "assunzione IPC screen"
	icon_state = "ipc_assunzione"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_luceism
	name = "luceist eye IPC screen"
	icon_state = "ipc_luceism"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_caution
	name = "caution sign IPC screen"
	icon_state = "ipc_caution"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_caution2
	name = "black caution sign IPC screen"
	icon_state = "ipc_caution2"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_face
	name = "face IPC screen"
	icon_state = "ipc_face"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_phalanx
	name = "Ve'katak Phalanx IPC screen"
	icon_state = "ipc_phalanx"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_facecig
	name = "cigarette IPC screen"
	icon_state = "ipc_facecig"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_star
	name = "star IPC screen"
	icon_state = "ipc_star"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_starinverse
	name = "inversed star IPC screen"
	icon_state = "ipc_starinverse"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_tcaf
	name = "tcaf IPC screen"
	icon_state = "ipc_tcaf"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_crosshair
	name = "crosshair IPC screen"
	icon_state = "ipc_crosshair"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_coin
	name = "coin IPC screen"
	icon_state = "ipc_coin"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_vysoka
	name = "vysoka IPC screen"
	icon_state = "ipc_vysoka"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_ouroboros
	name = "ouroboros IPC screen"
	icon_state = "ipc_ouroboros"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_valkyrie
	name = "valkyrie IPC screen"
	icon_state = "ipc_valkyrie"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_gibson
	name = "New Gibson IPC screen"
	icon_state = "ipc_gibson"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_temple
	name = "Templeism IPC screen"
	icon_state = "ipc_temple"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_orbit
	name = "orbit IPC screen"
	icon_state = "ipc_orbit"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_orbit2
	name = "orbit2 IPC screen"
	icon_state = "ipc_orbit2"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_screen_question_mark
	name = "question mark IPC screen"
	icon_state = "ipc_question"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_green_eyes
	name = "green eyes IPC screen"
	icon_state = "ipc_green_eyes"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_red_eyes
	name = "red eyes IPC screen"
	icon_state = "ipc_red_eyes"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_yellow_eyes
	name = "yellow eyes IPC screen"
	icon_state = "ipc_yellow_eyes"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_pink_eyes
	name = "pink eyes IPC screen"
	icon_state = "ipc_pink_eyes"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_orange_eyes
	name = "orange eyes IPC screen"
	icon_state = "ipc_orange_eyes"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/ipc_blue_eyes
	name = "blue eyes IPC screen"
	icon_state = "ipc_blue_eyes"

//bishop screens
/datum/sprite_accessory/facial_hair/ipc_screen_blank/bishop
	icon = 'icons/mob/human_face/ipc_screens.dmi'
	name = "Bishop Face"
	icon_state = "bishop_face"
	species_allowed = list(/datum/species/machine/bishop)
	robotize_type_required = list()
	required_organ = BP_HEAD
	gender = NEUTER

/datum/sprite_accessory/facial_hair/ipc_screen_blank/bishop/bishop_cross
	name = "Bishop Cross"
	icon_state = "bishop_cross"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/bishop/bishop_surprise
	name = "Bishop Exclamation Mark"
	icon_state = "bishop_surprise"

/datum/sprite_accessory/facial_hair/ipc_screen_blank/bishop/siseyo_lights
	name = "Siseyo Lights"
	icon_state = "siseyo_lights"
	robotize_type_required = list(PROSTHETIC_SISEYO)

/datum/sprite_accessory/facial_hair/ipc_screen_blank/bishop/sienna_lights
	name = "Sienna Lights"
	icon_state = "sienna_lights"
	robotize_type_required = list(PROSTHETIC_SIENNA)

/datum/sprite_accessory/facial_hair/ipc_screen_blank/bishop/selen_lights
	name = "Selen Lights"
	icon_state = "selen_lights"
	robotize_type_required = list(PROSTHETIC_SELEN)

//diona stuff

/datum/sprite_accessory/facial_hair/diona_eye
	icon = 'icons/mob/human_face/dionae_hair.dmi'
	name = "Mono Eye"
	icon_state = "monoeye"
	species_allowed = list(/datum/species/diona, /datum/species/diona/coeu)
	gender = NEUTER

/datum/sprite_accessory/facial_hair/diona_eye/trioptics
	name = "Trioptics"
	icon_state = "trioptics"

/datum/sprite_accessory/facial_hair/diona_eye/lopsided
	name = "Lopsided Eyes"
	icon_state = "lopsided"

/datum/sprite_accessory/facial_hair/diona_eye/helmethead
	name = "Helmethead"
	icon_state = "helmethead"

/datum/sprite_accessory/facial_hair/diona_eye/eyestalk
	name = "Eyestalk"
	icon_state = "eyestalk"

/datum/sprite_accessory/facial_hair/diona_eye/treebeard
	name = "Treebeard"
	icon_state = "treebeard"

/datum/sprite_accessory/facial_hair/diona_eye/bug_eyes
	name = "Bug Eyes"
	icon_state = "bugeyes"

/datum/sprite_accessory/facial_hair/diona_eye/human_eyes
	name = "Human Eyes"
	icon_state = "humaneyes"

/datum/sprite_accessory/facial_hair/diona_eye/skrell_eyes
	name = "Skrell Eyes"
	icon_state = "skrelleyes"

/datum/sprite_accessory/facial_hair/diona_eye/skrell_eyes_2
	name = "Skrell Eyes 2"
	icon_state = "skrelleyes2"

/datum/sprite_accessory/facial_hair/diona_eye/tiny_eye
	name = "Tiny Eye"
	icon_state = "tinyeye"

/datum/sprite_accessory/facial_hair/diona_eye/eyebrow
	name = "Eyebrow"
	icon_state = "eyebrow"

/datum/sprite_accessory/facial_hair/diona_eye/blinkinghelmethead
	name = "Blinking Helmethead"
	icon_state = "blinkinghelmethead"

/datum/sprite_accessory/facial_hair/diona_eye/periscope
	name = "Periscope"
	icon_state = "periscope"

/datum/sprite_accessory/facial_hair/diona_eye/glorp
	name = "Glorp"
	icon_state = "glorp"

/datum/sprite_accessory/facial_hair/diona_eye/snout
	name = "Snout"
	icon_state = "snout"

/datum/sprite_accessory/facial_hair/tuux_whiskers
	icon = 'icons/mob/human_face/skrell_beards.dmi'
	name = "Tuux Tentacle Whiskers"
	icon_state = "Tuux_Whiskers"
	species_allowed = list(/datum/species/skrell, /datum/species/skrell/axiori)
	gender = NEUTER

/datum/sprite_accessory/facial_hair/tuux_whiskers_chin
	icon = 'icons/mob/human_face/skrell_beards.dmi'
	name = "Tuux Tentacle Whiskers w/Chin"
	icon_state = "Tuux_Whiskers_Chin"
	species_allowed = list(/datum/species/skrell, /datum/species/skrell/axiori)
	gender = NEUTER

/datum/sprite_accessory/facial_hair/tuux_patch
	icon = 'icons/mob/human_face/skrell_beards.dmi'
	name = "Tuux Chin Patch"
	icon_state = "Tuux_Patch"
	species_allowed = list(/datum/species/skrell, /datum/species/skrell/axiori)
	gender = NEUTER

/datum/sprite_accessory/facial_hair/tuux_patch/tuux_goatee
	name = "Tuux Goatee"
	icon_state = "Tuux_Goatee"

/datum/sprite_accessory/facial_hair/tuux_patch/tuux_tri_point
	name = "Tuux Tri-Point"
	icon_state = "Tuux_Tri-Point"

/datum/sprite_accessory/facial_hair/tuux_patch/tuux_strap
	name = "Tuux Chin Strap"
	icon_state = "Tuux_Strap"

/datum/sprite_accessory/facial_hair/tuux_patch/tuux_monotail
	name = "Tuux Monotail"
	icon_state = "Tuux_Monotail"

/datum/sprite_accessory/facial_hair/tuux_patch/tuux_monotail_long
	name = "Tuux Monotail (Long)"
	icon_state = "Tuux_Monotail_Long"

/datum/sprite_accessory/facial_hair/tuux_patch/tuux_full
	name = "Tuux Full Beard"
	icon_state = "Tuux_Full"

/datum/sprite_accessory/facial_hair/tuux_patch/tuux_chops
	name = "Tuux Chops"
	icon_state = "Tuux_Chops"

/datum/sprite_accessory/facial_hair/tuux_patch/tuux_chops_big
	name = "Tuux Chops (Big)"
	icon_state = "Tuux_Chops_Big"

/datum/sprite_accessory/facial_hair/tuux_patch/tuux_adorns
	name = "Tuux Face Adorns"
	icon_state = "Tuux_Adorns"

/datum/sprite_accessory/facial_hair/tuux_patch/tuux_handlebar
	name = "Tuux Handlebar"
	icon_state = "Tuux_Handlebar"

/datum/sprite_accessory/facial_hair/tuux_patch/tuux_fumanchu
	name = "Tuux FuManChu"
	icon_state = "Tuux_FuManChu"

/datum/sprite_accessory/facial_hair/tuux_patch/tuux_overeye_left
	name = "Tuux Overeye (Left)"
	icon_state = "Tuux_Overeye_Left"

/datum/sprite_accessory/facial_hair/tuux_patch/tuux_overeye_right
	name = "Tuux Overeye (Right)"
	icon_state = "Tuux_Overeye_Right"

/datum/sprite_accessory/facial_hair/tuux_patch/tuux_mustache
	name = "Tuux Stache"
	icon_state = "Tuux_Mustache"

/datum/sprite_accessory/facial_hair/tuux_patch/tuux_overgrown
	name = "Tuux Overgrown"
	icon_state = "Tuux_Overgrown"

/datum/sprite_accessory/facial_hair/tuux_patch/tuux_braided
	name = "Tuux Braided"
	icon_state = "Tuux_Braided"

/datum/sprite_accessory/facial_hair/tuux_patch/tuux_braided_long
	name = "Tuux Braided (Long)"
	icon_state = "Tuux_Braided_Long"

/datum/sprite_accessory/facial_hair/tuux_patch/tuux_braided_double
	name = "Tuux Braided (Double)"
	icon_state = "Tuux_Braided_Double"

//Vaurca mandibles
/datum/sprite_accessory/facial_hair/clicky
	icon = 'icons/mob/human_face/vaurca_facial_hair.dmi'
	name = "Clicky Mandibles"
	icon_state = "vaurca_clicky"
	species_allowed = list(/datum/species/bug/type_b)
	gender = NEUTER

/datum/sprite_accessory/facial_hair/clicky/clacky
	name = "Clacky Mandibles"
	icon_state = "vaurca_clacky"

/datum/sprite_accessory/facial_hair/clicky/bulldog
	name = "Bulldog Mandibles"
	icon_state = "vaurca_bulldog"

/datum/sprite_accessory/facial_hair/clicky/mantis
	name = "Mantis Mandibles"
	icon_state = "vaurca_mantis"

/datum/sprite_accessory/facial_hair/clicky/stag
	name = "Stag Mandibles"
	icon_state = "vaurca_stag"

/datum/sprite_accessory/facial_hair/clicky/ectatomma
	name = "Ectatomma Mandibles"
	icon_state = "vaurca_ectatomma"

/datum/sprite_accessory/facial_hair/clicky/horridus
	name = "Horridus Mandibles"
	icon_state = "vaurca_horridus"

/datum/sprite_accessory/facial_hair/clicky/tusks
	name = "Tusk Mandibles"
	icon_state = "vaurca_tusks"

/datum/sprite_accessory/facial_hair/clicky/acanthognathus
	name = "Acanthognathus Mandibles"
	icon_state = "vaurca_acanthognathus"

/datum/sprite_accessory/facial_hair/clicky/myrmoteras
	name = "Myrmoteras Mandibles"
	icon_state = "vaurca_myrmoteras"

