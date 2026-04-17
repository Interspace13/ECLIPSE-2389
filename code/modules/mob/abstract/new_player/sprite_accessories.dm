/*

	Hello and welcome to sprite_accessories: For sprite accessories, such as hair,
	facial hair, and possibly tattoos and stuff somewhere along the line. This file is
	intended to be friendly for people with little to no actual coding experience.
	The process of adding in new hairstyles has been made pain-free and easy to do.
	Enjoy! - Doohl


	Notice: This all gets automatically compiled in a list in dna2.dm, so you do not
	have to define any UI values for sprite accessories manually for hair and facial
	hair. Just add in new hair types and the game will naturally adapt.

	Notice for novices: Don't use identical variables *twice*, the most recent one written
	in an indented string will overwrite all the other ones preceding it.

*/
GLOBAL_LIST_INIT(fancy_sprite_accessory_color_channel_names, list("Primary", "Secondary", "Tertiary", "Quaternary"))

/datum/sprite_accessory
	/// The icon file the accessory is located in.
	var/icon
	/// The icon_state of the accessory.
	var/icon_state
	/// A custom preview state if wanted.
	var/preview_state
	/// The name of the accessory.
	var/name
	/// Determines if the accessory will be skipped or included in random hair generation.
	var/gender = NEUTER
	/// Restrict some styles to specific species. This requires the type path of the datum of the species in question, as well as all children if applicable.
	var/list/species_allowed = list(
		/datum/species/human,
		/datum/species/human/offworlder,
		/datum/species/machine/shell,
		/datum/species/machine/shell/rogue,
		/datum/species/zombie
	)
	/// Whether or not the accessory can be affected by colouration.
	var/do_colouration = TRUE
	/// The blend mode to use when blending this icon with its color. May not apply to all sprite_accessory types, and must be a ICON_* blend mode, not BLEND_*!
	var/icon_blend_mode = ICON_ADD
	/// This is to provide safe names to use for hair/sprite to text. See Skrell tentacles for an example.
	var/chatname
	/// The organ the markings go over. Used to check if a marking can go over a certain organ. Must be an organ tag.
	var/required_organ
	/// Required prosthetic types to use this marking, if any. List is "any of". Null means no robotize type required. Empty list means there must be NO robotize type.
	var/list/robotize_type_required
	//
	var/can_be_selected = TRUE
	var/desc
	var/em_block = FALSE

/datum/sprite_accessory/proc/get_color_channel_count()
	return do_colouration ? 1 : 0

/*
////////////////////////////
/  =--------------------=  /
/  == Hair Definitions ==  /
/  =--------------------=  /
////////////////////////////

Before you add any new hairstyles, make sure to define them in dna.dm in defines.
Follow by example and make good judgement based on length which list to include it in - Drago

0- No hair
1- Medium/semi short hair
2- Average Hair
3- Longish Hair
4- Very long hair
5- Unathi Horns
6- Skrell Tentacles


*/

/*
/////////////////////////////////////
/  =-----------------------------=  /
/  == Hair Gradient Definitions ==  /
/  =-----------------------------=  /
/////////////////////////////////////
*/

/datum/sprite_accessory/hair_gradients
	icon = 'icons/mob/hair_gradients.dmi'
	species_allowed = list(/datum/species/human,/datum/species/human/offworlder,/datum/species/machine/shell,/datum/species/machine/shell/rogue,/datum/species/zombie,
		/datum/species/tajaran,/datum/species/tajaran/zhan_khazan,/datum/species/tajaran/m_sai,/datum/species/zombie/tajara,
		/datum/species/skrell, /datum/species/skrell/axiori, /datum/species/zombie/skrell, /datum/species/bug, /datum/species/bug/type_b, /datum/species/bug/type_b/type_bb, /datum/species/unathi, /datum/species/zombie/unathi)

/datum/sprite_accessory/hair_gradients/none
	name = "None"
	icon_state = "none"
	species_allowed = list(/datum/species/human,/datum/species/human/offworlder,/datum/species/machine/shell,/datum/species/machine/shell/rogue,/datum/species/zombie,/datum/species/unathi,/datum/species/zombie/unathi,
		/datum/species/tajaran,/datum/species/tajaran/zhan_khazan,/datum/species/tajaran/m_sai,/datum/species/zombie/tajara,/datum/species/skrell,/datum/species/skrell/axiori,/datum/species/zombie/skrell, /datum/species/bug,
		/datum/species/bug/type_b, /datum/species/bug/type_b/type_bb)

/datum/sprite_accessory/hair_gradients/none_48
	name = "None (Vaurca Type C/E)"
	icon = 'icons/mob/base_48.dmi'
	icon_state = "none"
	species_allowed = list(/datum/species/bug/type_e, /datum/species/bug/type_c)

/datum/sprite_accessory/hair_gradients/fade_up
	name = "Fade (Up)"
	icon_state = "fadeup"

/datum/sprite_accessory/hair_gradients/fade_down
	name = "Fade (Down)"
	icon_state = "fadedown"

/datum/sprite_accessory/hair_gradients/fade_right
	name = "Fade (Right)"
	icon_state = "faderight"

/datum/sprite_accessory/hair_gradients/fade_left
	name = "Fade (Left)"
	icon_state = "fadeleft"

/datum/sprite_accessory/hair_gradients/vertical_split_right
	name = "Vertical Split (Right)"
	icon_state = "vsplit_right"

/datum/sprite_accessory/hair_gradients/vertical_split_left
	name = "Vertical Split (Left)"
	icon_state = "vsplit_left"

/datum/sprite_accessory/hair_gradients/horizontal
	name = "Horizontal Split"
	icon_state = "hsplit"

/datum/sprite_accessory/hair_gradients/short_highlights
	name = "Short Highlights"
	icon_state = "short_highlights"

/datum/sprite_accessory/hair_gradients/short_highlights/upshift
	name = "Short Highlights (+1 Upshift)"
	icon_state = "short_highlights+1"

/datum/sprite_accessory/hair_gradients/short_highlights/downshift
	name = "Short Highlights (-1 Downshift)"
	icon_state = "short_highlights-1"

/datum/sprite_accessory/hair_gradients/taj_inner_ear_fur
	name = "Inner Ear Fur"
	icon_state = "taj_innerearfur"
	species_allowed = list(/datum/species/tajaran,/datum/species/tajaran/zhan_khazan, /datum/species/zombie/tajara)

/datum/sprite_accessory/hair_gradients/taj_msai_inner_ear_fur
	name = "M'sai Inner Ear Fur"
	icon_state = "taj_msai_innerearfur"
	species_allowed = list(/datum/species/tajaran/m_sai)

/datum/sprite_accessory/hair_gradients/skrell_spots
	name = "Skrell Spots"
	icon_state = "skrell_gradient_spots"
	species_allowed = list(/datum/species/skrell, /datum/species/skrell/axiori, /datum/species/zombie/skrell)

/datum/sprite_accessory/hair_gradients/skrell_stripes
	name = "Skrell Headtail Blotches"
	icon_state = "skr_headtail_stripes"
	species_allowed = list(/datum/species/skrell, /datum/species/skrell/axiori, /datum/species/zombie/skrell)

/datum/sprite_accessory/hair_gradients/skrell_headtail_middle
	name = "Skrell Headtail Middle"
	icon_state = "skr_headtail_mid"
	species_allowed = list(/datum/species/skrell, /datum/species/skrell/axiori, /datum/species/zombie/skrell)

/datum/sprite_accessory/hair_gradients/skrell_headtail_hfade
	name = "Skrell Headtail Hard Fade"
	icon_state = "skr_headtail_hfade"
	species_allowed = list(/datum/species/skrell, /datum/species/skrell/axiori, /datum/species/zombie/skrell)


/*
///////////////////////////////////
/  =---------------------------=  /
/  == Alien Style Definitions ==  /
/  =---------------------------=  /
///////////////////////////////////
*/

//unathi hair


/datum/sprite_accessory/hair/una_aquaticfrill
	icon = 'icons/mob/human_face/unathi_hair.dmi'
	name = "Unathi Aquatic Frills"
	icon_state = "unathi_aquaticfrills"
	species_allowed = list(/datum/species/unathi,/datum/species/zombie/unathi)
	length = 0
	chatname = "frills"

/datum/sprite_accessory/hair/una_aquaticfrill/una_bighorns
	name = "Unathi Big Horns"
	icon_state = "unathi_bighorn"
	length = 5
	chatname = "horns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/una_bighorns/una_bighorns_noside
	name = "Unathi Big Horns (No Sides)"
	icon_state = "unathi_bighorn_nosides"

/datum/sprite_accessory/hair/una_aquaticfrill/una_chinhorn
	name = "Unathi Chin Horn"
	icon_state = "unathi_chinhorns"
	length = 0
	chatname = "horns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/una_curlhorn
	name = "Unathi Curled Horns"
	icon_state = "unathi_curledhorn"
	length = 5
	chatname = "horns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/una_dorsalfrill
	name = "Unathi Dorsal Frill"
	icon_state = "unathi_dorsalfrill"
	length = 0
	chatname = "frills"

/datum/sprite_accessory/hair/una_aquaticfrill/una_dracfrills
	name = "Unathi Draconic Frills"
	icon_state = "unathi_dracfrills"
	length = 0
	chatname = "frills"

/datum/sprite_accessory/hair/una_aquaticfrill/una_drachorn
	name = "Unathi Draconic Horns"
	icon_state = "unathi_drachorn"
	length = 5
	chatname = "horns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/una_hornadorns
	name = "Unathi Horn Adorns"
	icon_state = "unathi_hornadorns"
	length = 0
	chatname = "horns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/una_longdorsal
	name = "Unathi Long Dorsal Frill"
	icon_state = "unathi_longdorsal"
	length = 0
	chatname = "frills"

/datum/sprite_accessory/hair/una_aquaticfrill/una_longfrill
	name = "Unathi Long Frills"
	icon_state = "unathi_longfrills"
	length = 0
	chatname = "frills"

/datum/sprite_accessory/hair/una_aquaticfrill/una_longfrill2
	name = "Unathi Long Frills 2"
	icon_state = "unathi_longfrills2"
	length = 0
	chatname = "frills"

/datum/sprite_accessory/hair/una_aquaticfrill/una_longspines
	name = "Unathi Long Spines"
	icon_state = "unathi_longspines"
	length = 0
	chatname = "spines"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/una_lowerhorn
	name = "Unathi Lower Horns"
	icon_state = "unathi_lowerhorn"
	length = 5
	chatname = "horns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/una_mohawk
	name = "Unathi Mohawk"
	icon_state = "unathi_mohawk"
	length = 5
	chatname = "mohawk"

/datum/sprite_accessory/hair/una_aquaticfrill/una_ramhornshort
	name = "Unathi Short Ram Horns"
	icon_state = "unathi_ramhorn"
	length = 5
	chatname = "horns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/una_ramhornlong
	name = "Unathi Long Ram Horns"
	icon_state = "unathi_ramhorn2"
	length = 5
	chatname = "horns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/una_shortfrill
	name = "Unathi Short Frills"
	icon_state = "unathi_shortfrills"
	length = 0
	chatname = "frills"

/datum/sprite_accessory/hair/una_aquaticfrill/una_shortfrill2
	name = "Unathi Short Frills 2"
	icon_state = "unathi_shortfrills2"
	length = 0
	chatname = "frills"

/datum/sprite_accessory/hair/una_aquaticfrill/una_shorthorn
	name = "Unathi Short Horns"
	icon_state = "unathi_shorthorn"
	length = 5
	chatname = "horns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/una_shortspines
	name = "Unathi Short Spines"
	icon_state = "unathi_shortspines"
	length = 0
	chatname = "spines"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/una_sidefrills
	name = "Unathi Side Frills"
	icon_state = "unathi_sidefrills"
	length = 0
	chatname = "frills"

/datum/sprite_accessory/hair/una_aquaticfrill/una_horns
	name = "Unathi Horns"
	icon_state = "unathi_simplehorn"
	length = 5
	chatname = "horns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/una_smallhorns
	name = "Unathi Small Horns"
	icon_state = "unathi_smallhorn"
	length = 5
	chatname = "horns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/una_spikehorn
	name = "Unathi Spike Horns"
	icon_state = "unathi_spikehorn"
	length = 5
	chatname = "spiked horns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/una_swepthorns
	name = "Unathi Swept-Forward Horns"
	icon_state = "unathi_swepthorn"
	length = 0
	chatname = "horns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/una_swepthorns2
	name = "Unathi Swept-Forward Horns 2"
	icon_state = "unathi_swepthorn2"
	length = 0
	chatname = "horns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/una_demonforward
	name = "Unathi Forward Demon Horns"
	icon_state = "unathi_demonforward"
	length = 5
	chatname = "horns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/una_bullhorns
	name = "Unathi Bull Horns"
	icon_state = "unathi_bullhorn"
	length = 5
	chatname = "horns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/una_longhorns
	name = "Unathi Long Bull Horns"
	icon_state = "unathi_longhorn"
	length = 5
	chatname = "horns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/una_faun
	name = "Unathi Faun Horns"
	icon_state = "unathi_faun"
	length = 5
	chatname = "horns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/una_double
	name = "Unathi Double Horns"
	icon_state = "unathi_dubhorns"
	length = 5
	chatname = "horns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/una_hood
	name = "Unathi Cobra Hood"
	icon_state = "unathi_hood"
	length = 5
	chatname = "hood"

/datum/sprite_accessory/hair/una_aquaticfrill/una_skewers
	name = "Unathi Super Long Horns"
	icon_state = "unathi_skewers"
	length = 6
	chatname = "huge horns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/una_chameleon
	name = "Unathi Chameleon Horns"
	icon_state = "unathi_chameleon"
	length = 3
	chatname = "small horns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/una_dilocrest
	name = "Unathi Dilo Crest"
	icon_state = "dilocrest"
	length = 0
	chatname = "crests"

/datum/sprite_accessory/hair/una_aquaticfrill/una_monocrest
	name = "Unathi Mono Crest"
	icon_state = "monocrest"
	length = 0
	chatname = "crest"

/datum/sprite_accessory/hair/una_aquaticfrill/una_cryocrest
	name = "Unathi Cryo Crest"
	icon_state = "cryocrest"
	length = 0
	chatname = "crest"

/datum/sprite_accessory/hair/una_aquaticfrill/una_corycrest
	name = "Unathi Cory Crest"
	icon_state = "corycrest"
	length = 0
	chatname = "crest"

/datum/sprite_accessory/hair/una_aquaticfrill/una_albertahorns
	name = "Unathi Alberta Horns"
	icon_state = "albertahorns"
	length = 5
	chatname = "small horns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/una_styrahorn
	name = "Unathi Styra Horn"
	icon_state = "styrahorn"
	length = 5
	chatname = "massive horn"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/una_styracrest
	name = "Unathi Styra Frill"
	icon_state = "styrafrill"
	length = 0
	chatname = "frill"

/datum/sprite_accessory/hair/una_aquaticfrill/una_pachyboss
	name = "Unathi Pachy Boss"
	icon_state = "pachylump"
	length = 0
	chatname = "lump"

/datum/sprite_accessory/hair/una_aquaticfrill/una_droopy
	name = "Unathi Droopy Dorsal Frill"
	icon_state = "unathi_droopydorsal"
	length = 0
	chatname = "droopy frill"

/datum/sprite_accessory/hair/una_aquaticfrill/una_regal
	name = "Unathi Regal Frills"
	icon_state = "unathi_regalfrills"
	length = 6
	chatname = "massive frills"

/datum/sprite_accessory/hair/una_aquaticfrill/una_hornsbusted
	name = "Unathi Horns-Busted"
	icon_state = "unathi_simplehornbusted"
	length = 5
	chatname = "horns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/una_ramhornshortbusted
	name = "Unathi Short Ram Horns-Busted"
	icon_state = "unathi_ramhornbusted"
	length = 5
	chatname = "horns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/una_shorthornbusted
	name = "Unathi Short Horns-Busted"
	icon_state = "unathi_shorthornbusted"
	length = 5
	chatname = "horns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/una_drachornbusted
	name = "Unathi Draconic Horns-Busted"
	icon_state = "unathi_drachornbusted"
	length = 5
	chatname = "horns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/una_shortfrill2busted
	name = "Unathi Short Frills 2-Busted"
	icon_state = "unathi_shortfrills2busted"
	length = 0
	chatname = "frills"

/datum/sprite_accessory/hair/una_aquaticfrill/una_styrahornbusted
	name = "Unathi Styra Horn-Busted"
	icon_state = "styrahornbusted"
	length = 2
	chatname = "horn stub"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/finhawk
	name = "Unathi Mohawk Fin"
	icon_state = "fin_hawk"
	length = 0
	chatname = "fin"

/datum/sprite_accessory/hair/una_aquaticfrill/big
	name = "Unathi Big Frills"
	icon_state = "big_frills"
	length = 0
	chatname = "frills"

/datum/sprite_accessory/hair/una_aquaticfrill/quintuple
	name = "Unathi Quintuple Horns"
	icon_state = "quintuple_horns"
	length = 5
	chatname = "horns"

/datum/sprite_accessory/hair/una_aquaticfrill/curved
	name = "Unathi Curved-Up Horns"
	icon_state = "curved_up"
	length = 5
	chatname = "horns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/curved/down
	name = "Unathi Curved-Down Horns"
	icon_state = "curved_down"

/datum/sprite_accessory/hair/una_aquaticfrill/samurai
	name = "Unathi Samurai Horns"
	icon_state = "samurai"
	length = 5
	chatname = "horns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/headspikes
	name = "Unathi Head Spikes"
	icon_state = "head_spikes"
	length = 5
	chatname = "spiked horns"
	keep_as_skeleton = TRUE

/datum/sprite_accessory/hair/una_aquaticfrill/headspikes/overgrown
	name = "Unathi Overgrown Head Spikes"
	icon_state = "overgrown_head_spikes"
	keep_as_skeleton = TRUE

//skrell tentacles

/datum/sprite_accessory/hair/skr_tentacle_damaged_long_r
	icon = 'icons/mob/human_face/skrell_hair.dmi'
	name = "Long Headtails, damaged (right)"
	icon_state = "verylong_s_dmg_r"
	species_allowed = list(/datum/species/skrell,/datum/species/skrell/axiori,/datum/species/zombie/skrell)
	length = 6
	chatname = "long headtails"

/datum/sprite_accessory/hair/skr_tentacle_damaged_long_l
	icon = 'icons/mob/human_face/skrell_hair.dmi'
	name = "Long Headtails, damaged (left)"
	icon_state = "verylong_s_dmg_l"
	species_allowed = list(/datum/species/skrell,/datum/species/skrell/axiori,/datum/species/zombie/skrell)
	length = 6
	chatname = "long headtails"

/datum/sprite_accessory/hair/skr_tentacle_damaged_r
	icon = 'icons/mob/human_face/skrell_hair.dmi'
	name = "Headtails, damaged (right)"
	icon_state = "skrell_hair_f_dmg_r"
	species_allowed = list(/datum/species/skrell,/datum/species/skrell/axiori,/datum/species/zombie/skrell)
	length = 4
	chatname = "headtails"

/datum/sprite_accessory/hair/skr_tentacle_damaged_l
	icon = 'icons/mob/human_face/skrell_hair.dmi'
	name = "Headtails, damaged (left)"
	icon_state = "skrell_hair_f_dmg_l"
	species_allowed = list(/datum/species/skrell,/datum/species/skrell/axiori,/datum/species/zombie/skrell)
	length = 4
	chatname = "headtails"

/datum/sprite_accessory/hair/skr_tentacle_damaged_b_r
	icon = 'icons/mob/human_face/skrell_hair.dmi'
	name = "Headtails, damaged behind (right)"
	icon_state = "skrell_both_behind_dmg_r"
	species_allowed = list(/datum/species/skrell,/datum/species/skrell/axiori,/datum/species/zombie/skrell)
	length = 4
	chatname = "headtails"

/datum/sprite_accessory/hair/skr_tentacle_damaged_b_l
	icon = 'icons/mob/human_face/skrell_hair.dmi'
	name = "Headtails, damaged behind (left)"
	icon_state = "skrell_both_behind_dmg_l"
	species_allowed = list(/datum/species/skrell,/datum/species/skrell/axiori,/datum/species/zombie/skrell)
	length = 4
	chatname = "headtails"

/datum/sprite_accessory/hair/skr_tentacle_damaged_blong_l
	icon = 'icons/mob/human_face/skrell_hair.dmi'
	name = "Long Headtails, damaged behind (left)"
	icon_state = "skrell_both_behind_long_dmg_l"
	species_allowed = list(/datum/species/skrell,/datum/species/skrell/axiori,/datum/species/zombie/skrell)
	length = 6
	chatname = "long headtails"

/datum/sprite_accessory/hair/skr_tentacle_damaged_blong_r
	icon = 'icons/mob/human_face/skrell_hair.dmi'
	name = "Long Headtails, damaged behind (right)"
	icon_state = "skrell_both_behind_long_dmg_r"
	species_allowed = list(/datum/species/skrell,/datum/species/skrell/axiori,/datum/species/zombie/skrell)
	length = 6
	chatname = "long headtails"

/datum/sprite_accessory/hair/skr_tentacle_m
	icon = 'icons/mob/human_face/skrell_hair.dmi'
	name = "Short Headtails"
	icon_state = "skrell_hair_m"
	species_allowed = list(/datum/species/skrell,/datum/species/skrell/axiori,/datum/species/zombie/skrell)
	length = 2
	chatname = "short headtails"
	var/scrunchy_style = "seaweed" // seaweed fits the normal tentacles pretty well

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_f
	name = "Headtails"
	icon_state = "skrell_hair_f"
	length = 4
	chatname = "headtails"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_short
	name = "Very Short Headtails"
	icon_state = "veryshort_s"
	length = 1
	chatname = "short headtails"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_long
	name = "Long Headtails"
	icon_state = "verylong_s"
	length = 6
	chatname = "long headtails"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_doubletail
	name = "Headtails, ponytail (hoop)"
	icon_state = "skrell_hoop"
	length = 5
	chatname = "headtails"
	scrunchy_style = "hoop"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_flb
	name = "Headtails, ponytail (reef)"
	icon_state = "skrell_reef"
	length = 5
	chatname = "headtails"
	scrunchy_style = "reef"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_backwater
	name = "Headtails, ponytail (backwater)"
	icon_state = "skrell_backwater"
	length = 5
	chatname = "headtails"
	scrunchy_style = "backwater"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_braided
	name = "Headtails, braided"
	icon_state = "skrell_loose_braid"
	length = 5
	chatname = "headtails"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_reserved
	name = "Expressive Headtails, reserved"
	icon_state = "skrell_reserved"
	length = 6
	chatname = "headtails"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_reserved_long
	name = "Expressive Headtails, reserved (long)"
	icon_state = "skrell_reserved_long"
	length = 6
	chatname = "long headtails"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_excited
	name = "Expressive Headtails, excited"
	icon_state = "skrell_excited"
	length = 6
	chatname = "headtails"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_excited_long
	name = "Expressive Headtails, excited (long)"
	icon_state = "skrell_excited_long"
	length = 6
	chatname = "long headtails"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_insulted
	name = "Expressive Headtails, insulted"
	icon_state = "skrell_insulted"
	length = 6
	chatname = "headtails"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_insulted_long
	name = "Expressive Headtails, insulted (long)"
	icon_state = "skrell_insulted_long"
	length = 6
	chatname = "long headtails"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_tucked
	name = "Short Headtails, tucked"
	icon_state = "skrell_tucked"
	length = 2
	chatname = "short headtails"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_bun_short
	name = "Short Headtails, bun"
	icon_state = "skrell_short_mid_bun"
	length = 3
	chatname = "short headtails"
	scrunchy_style = "short bun"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_bun
	name = "Headtails, bun"
	icon_state = "skrell_mid_bun"
	length = 4
	chatname = "headtails"
	scrunchy_style = "bun"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_bun_long
	name = "Long Headtails, bun"
	icon_state = "skrell_long_mid_bun"
	length = 6
	chatname = "long headtails"
	scrunchy_style = "long bun"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_low_bun
	name = "Headtails, low bun"
	icon_state = "skrell_low_bun"
	length = 4
	chatname = "headtails"
	scrunchy_style = "low bun"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_tuux_wavy
	name = "Headtails, wavy tuux"
	icon_state = "skrell_long_tuux"
	length = 5
	chatname = "headtails"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_tuux_straight
	name = "Headtails, straight tuux"
	icon_state = "skrell_straight_tuux"
	length = 5
	chatname = "headtails"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_tuux_short
	name = "Short Headtails, tuux"
	icon_state = "skrell_short_tuux"
	length = 3
	chatname = "short headtails"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_tuux_straight_l
	name = "Long Headtails, tuux"
	icon_state = "skrell_straight_tuux_long"
	length = 6
	chatname = "long headtails"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_slicked
	name = "Short Headtails, slicked"
	icon_state = "skrell_slicked"
	length = 2
	chatname = "short headtails"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_mullet
	name = "Headtails, mullet"
	icon_state = "skrell_mullet"
	length = 4
	chatname = "headtails"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_behind_r
	name = "Headtails, behind (right)"
	icon_state = "skrell_right_behind"
	length = 4
	chatname = "headtails"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_behind_l
	name = "Headtails, behind (left)"
	icon_state = "skrell_left_behind"
	length = 4
	chatname = "headtails"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_behind_b
	name = "Headtails, behind"
	icon_state = "skrell_both_behind"
	length = 4
	chatname = "headtails"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_behind_b_s
	name = "Short Headtails, behind"
	icon_state = "skrell_both_behind_short"
	length = 2
	chatname = "short headtails"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_behind_b_l
	name = "Long Headtails, behind"
	icon_state = "skrell_both_behind_long"
	length = 6
	chatname = "long headtails"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_behind_l_l
	name = "Long Headtails, behind (left)"
	icon_state = "skrell_left_behind_long"
	length = 6
	chatname = "long headtails"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_behind_r_l
	name = "Long Headtails, behind (right)"
	icon_state = "skrell_right_behind_long"
	length = 6
	chatname = "long headtails"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_reef
	name = "Short Headtails, ponytail (reef)"
	icon_state = "skrell_reef_short"
	length = 3
	chatname = "short headtails"
	scrunchy_style = "reef_short"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_emo_l_l
	name = "Long Headtails, emo (left)"
	icon_state = "skrell_left_emo_long"
	length = 6
	chatname = "long headtails"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_emo_r_l
	name = "Long Headtails, emo (right)"
	icon_state = "skrell_right_emo_long"
	length = 6
	chatname = "long headtails"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_emo_l
	name = "Headtails, emo (left)"
	icon_state = "skrell_left_emo"
	length = 4
	chatname = "headtails"

/datum/sprite_accessory/hair/skr_tentacle_m/skr_tentacle_emo_r
	name = "Headtails, emo (right)"
	icon_state = "skrell_right_emo"
	length = 4
	chatname = "headtails"


//tajaran hair

/datum/sprite_accessory/hair/taj_ears
	icon = 'icons/mob/human_face/tajara_hair.dmi'
	name = "Tajaran Ears"
	icon_state = "ears_plain"
	length = 1
	species_allowed = list(/datum/species/tajaran,/datum/species/tajaran/zhan_khazan,/datum/species/zombie/tajara)

/datum/sprite_accessory/hair/taj_ears/taj_ears_bangs
	name = "Tajara Bangs"
	icon_state = "hair_bangs"
	length = 3
	chatname = "bangs"

/datum/sprite_accessory/hair/taj_ears/taj_ears_bangs_alt
	name = "Tajara Bangs Alt"
	icon_state = "hair_bangs_alt"
	length = 3
	chatname = "short bangs"

/datum/sprite_accessory/hair/taj_ears/taj_ears_shortfringe
	name = "Tajara Short Fringe"
	icon_state = "hair_shortfringe"
	length = 2
	chatname = "short fringe"

/datum/sprite_accessory/hair/taj_ears/taj_ears_bob
	name = "Tajara Bob"
	icon_state = "hair_bob"
	length = 2
	chatname = "groomed short mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_bobcut_overeye
	name = "Tajara Bobcut, overeye"
	icon_state = "hair_bobcut_overeye"
	length = 2
	chatname = "bobcut"

/datum/sprite_accessory/hair/taj_ears/taj_ears_braid
	name = "Tajara Braid"
	icon_state = "hair_braid"
	length = 3
	chatname = "braid"

/datum/sprite_accessory/hair/taj_ears/taj_ears_braid_alt
	name = "Tajara Braid Alt"
	icon_state = "hair_braid_alt"
	length = 3
	chatname = "braid"

/datum/sprite_accessory/hair/taj_ears/taj_ears_clean
	name = "Tajara Clean"
	icon_state = "hair_clean"
	length = 1
	chatname = "short mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_curls
	name = "Tajara Curly"
	icon_state = "hair_curly"
	length = 3
	chatname = "curly mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_curlsalt
	name = "Tajara Curly Alt"
	icon_state = "hair_curlyalt"
	length = 3
	chatname = "curly mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_fingercurl
	name = "Tajara Finger Curls"
	icon_state = "hair_fingerwave"
	length = 2
	chatname = "curls"

/datum/sprite_accessory/hair/taj_ears/taj_ears_pompadour
	name = "Tajara Greaser"
	icon_state = "hair_greaser"
	length = 2
	chatname = "pompadour"

/datum/sprite_accessory/hair/taj_ears/taj_ears_housewife
	name = "Tajara Housewife"
	icon_state = "hair_housewife"
	length = 2
	chatname = "long mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_long
	name = "Tajara Long"
	icon_state = "hair_long"
	length = 3
	chatname = "long mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_messy
	name = "Tajara Messy"
	icon_state = "hair_messy"
	length = 1
	chatname = "messy mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_mohawk
	name = "Tajara Mohawk"
	icon_state = "hair_mohawk"
	length = 1
	chatname = "mohawk"

/datum/sprite_accessory/hair/taj_ears/taj_ears_plait
	name = "Tajara Plait"
	icon_state = "hair_plait"
	length = 1
	chatname = "braid"

/datum/sprite_accessory/hair/taj_ears/taj_ears_rattail
	name = "Tajara Rat Tail"
	icon_state = "hair_rattail"
	length = 2
	chatname = "thin ponytail"

/datum/sprite_accessory/hair/taj_ears/taj_ears_shaggy
	name = "Tajara Shaggy"
	icon_state = "hair_shaggy"
	length = 1
	chatname = "messy mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_straight
	name = "Tajara Straight"
	icon_state = "hair_straight"
	length = 3
	chatname = "short mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_spiky
	name = "Tajara Spiky"
	icon_state = "hair_spiky"
	length = 1
	chatname = "spiky mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_victory
	name = "Tajara Victory Curls"
	icon_state = "hair_victory"
	length = 3
	chatname = "curls"

/datum/sprite_accessory/hair/taj_ears/taj_ears_mane
	name = "Tajara Mane"
	icon_state = "hair_mane"
	length = 3
	gender = MALE
	chatname = "long mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_sidepony
	name = "Tajara Side Ponytail"
	icon_state = "hair_sidepony"
	length = 3
	chatname = "sideponytail"

/datum/sprite_accessory/hair/taj_ears/taj_ears_governmentman
	name = "Tajara Government Man"
	icon_state = "hair_gman"
	length = 1
	chatname = "styled mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_bun
	name = "Tajara Bun"
	icon_state = "hair_bun"
	length = 2
	chatname = "hair bun"

/datum/sprite_accessory/hair/taj_ears/taj_ears_smallbun
	name = "Tajara Bun (Small)"
	icon_state = "hair_bunsmall"
	length = 2
	chatname = "hair bun"

/datum/sprite_accessory/hair/taj_ears/taj_ears_lowbun
	name = "Tajara Bun (Low)"
	icon_state = "hair_lowbun"
	length = 2
	chatname = "hair bun"

/datum/sprite_accessory/hair/taj_ears/taj_ears_smalllowbun
	name = "Tajara Bun (Low, Small)"
	icon_state = "hair_lowbunsmall"
	length = 2
	chatname = "hair bun"

/datum/sprite_accessory/hair/taj_ears/taj_ears_bunshort
	name = "Tajara Bun (Short)"
	icon_state = "hair_bunshort"
	length = 2
	chatname = "hair bun"

/datum/sprite_accessory/hair/taj_ears/taj_ears_wedge
	name = "Tajara Wedge"
	icon_state = "hair_wedge"
	length = 2
	chatname = "styled mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_tresses
	name = "Tajara Tresses"
	icon_state = "hair_tresses"
	length = 3
	chatname = "styled mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_shoulderparted
	name = "Tajara Shoulder Parted"
	icon_state = "hair_shoulderparted"
	length = 3
	chatname = "styled mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_shoulderpartedsmall
	name = "Tajara Shoulder Parted Small"
	icon_state = "hair_shoulderpartedsmall"
	length = 3
	chatname = "styled mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_shoulderpartedlong
	name = "Tajara Shoulder Parted Long"
	icon_state = "hair_shoulderpartedlong"
	length = 3
	chatname = "styled mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_shoulderlength
	name = "Tajara Shoulderlength"
	icon_state = "hair_shoulderlength"
	length = 2
	chatname = "styled mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_shoulderlengthalt
	name = "Tajara Shoulderlength Alt"
	icon_state = "hair_shoulderlengthalt"
	length = 2
	chatname = "styled mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_sidepartedleft
	name = "Tajara Sideparted Left"
	icon_state = "hair_sidepartedleft"
	length = 3
	chatname = "styled mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_sidepartedright
	name = "Tajara Sideparted Right"
	icon_state = "hair_sidepartedright"
	length = 3
	chatname = "styled mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_fringeup
	name = "Tajara Fringe Up"
	icon_state = "hair_fringeup"
	length = 2
	chatname = "styled mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_cascading
	name = "Tajara Cascading"
	icon_state = "hair_cascading"
	length = 3
	chatname = "styled mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_cascadingalt
	name = "Tajara Cascading Alt"
	icon_state = "hair_cascadingalt"
	length = 3
	chatname = "styled mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_swoop
	name = "Tajara Swoop"
	icon_state = "hair_swoop"
	length = 2
	chatname = "styled mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_swoop_alt
	name = "Tajara Swoop Alt"
	icon_state = "hair_swoop_alt"
	length = 2
	chatname = "styled mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_swoop_bangs
	name = "Tajara Swoop Bangs"
	icon_state = "hair_swoop_bangs"
	length = 2
	chatname = "styled mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_swoop_long
	name = "Tajara Swoop Long"
	icon_state = "hair_longswoop"
	length = 3
	chatname = "styled mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_swoop_long_alt
	name = "Tajara Swoop Long Alt"
	icon_state = "hair_longswoop_alt"
	length = 3
	chatname = "styled mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_diagonal_bangs
	name = "Tajara Diagonal Bangs"
	icon_state = "hair_diagonal_bangs"
	length = 2
	chatname = "bangs"

/datum/sprite_accessory/hair/taj_ears/taj_ears_ponytail_one
	name = "Tajara Ponytail 1"
	icon_state = "hair_ponytail1"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/taj_ears/taj_ears_ponytail_two
	name = "Tajara Ponytail 2"
	icon_state = "hair_ponytail2"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/taj_ears/taj_ears_ponytail_spiky
	name = "Tajara Ponytail, Spiky"
	icon_state = "hair_ponytail_spiky"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/taj_ears/taj_ears_ponytail_wisp
	name = "Tajara Ponytail, Wisp"
	icon_state = "hair_ponytail_wisp"
	length = 3
	chatname = "ponytail"

/datum/sprite_accessory/hair/taj_ears/taj_ears_ponytail_zieglertail
	name = "Tajara Ponytail, Zieglertail"
	icon_state = "hair_ponytail_ziegler"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/taj_ears/taj_ears_longfringe
	name = "Tajara Long Fringe"
	icon_state = "hair_longfringe"
	length = 3
	chatname = "long mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_longfringe_longer
	name = "Tajara Long Fringe, Longer"
	icon_state = "hair_longfringe_longer"
	length = 4
	chatname = "long mane"

/datum/sprite_accessory/hair/taj_ears/taj_ears_long_wavy
	name = "Tajara Long Wavy"
	icon_state = "hair_long_wavy"
	length = 3
	chatname = "long mane"

//msai hair, longer ears
/datum/sprite_accessory/hair/msai_ears
	icon = 'icons/mob/human_face/msai_hair.dmi'
	name = "M'sai Ears"
	icon_state = "msai_plain"
	length = 1
	species_allowed = list(/datum/species/tajaran/m_sai)

/datum/sprite_accessory/hair/msai_ears/msai_ears_bangs
	name = "M'sai Bangs"
	icon_state = "msai_bangs"
	length = 3
	chatname = "bangs"

/datum/sprite_accessory/hair/msai_ears/msai_ears_bangs_alt
	name = "M'sai Bangs Alt"
	icon_state = "msai_bangs_alt"
	length = 3
	chatname = "smallbangs"

/datum/sprite_accessory/hair/msai_ears/msai_ears_shortfringe
	name = "M'sai Short Fringe"
	icon_state = "msai_shortfringe"
	length = 2
	chatname = "short fringe"

/datum/sprite_accessory/hair/msai_ears/msai_ears_bob
	name = "M'sai Bob"
	icon_state = "msai_bob"
	length = 2
	chatname = "groomed short mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_bobcut_overeye
	name = "M'sai Bobcut, overeye"
	icon_state = "msai_bobcut_overeye"
	length = 2
	chatname = "bobcut"

/datum/sprite_accessory/hair/msai_ears/msai_ears_braid
	name = "M'sai Braid"
	icon_state = "msai_braid"
	length = 3
	chatname = "braid"

/datum/sprite_accessory/hair/msai_ears/msai_ears_braid_alt
	name = "M'sai Braid Alt"
	icon_state = "msai_braid_alt"
	length = 3
	chatname = "braid"

/datum/sprite_accessory/hair/msai_ears/msai_ears_clean
	name = "M'sai Clean"
	icon_state = "msai_clean"
	length = 1
	chatname = "short mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_curls
	name = "M'sai Curly"
	icon_state = "msai_curly"
	length = 3
	chatname = "curly mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_curlsalt
	name = "M'sai Curly Alt"
	icon_state = "msai_curlyalt"
	length = 3
	chatname = "curly mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_fingercurl
	name = "M'sai Finger Curls"
	icon_state = "msai_fingerwave"
	length = 2
	chatname = "curls"

/datum/sprite_accessory/hair/msai_ears/msai_ears_pompadour
	name = "M'sai Greaser"
	icon_state = "msai_greaser"
	length = 2
	chatname = "pompadour"

/datum/sprite_accessory/hair/msai_ears/msai_ears_housewife
	name = "M'sai Housewife"
	icon_state = "msai_housewife"
	length = 2
	chatname = "long mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_long
	name = "M'sai Long"
	icon_state = "msai_long"
	length = 3
	chatname = "long mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_messy
	name = "M'sai Messy"
	icon_state = "msai_messy"
	length = 1
	chatname = "messy mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_mohawk
	name = "M'sai Mohawk"
	icon_state = "msai_mohawk"
	length = 1
	chatname = "mohawk"

/datum/sprite_accessory/hair/msai_ears/msai_ears_plait
	name = "M'sai Plait"
	icon_state = "msai_plait"
	length = 1
	chatname = "braid"

/datum/sprite_accessory/hair/msai_ears/msai_ears_rattail
	name = "M'sai Rat Tail"
	icon_state = "msai_rattail"
	length = 2
	chatname = "thin ponytail"

/datum/sprite_accessory/hair/msai_ears/msai_ears_shaggy
	name = "M'sai Shaggy"
	icon_state = "msai_shaggy"
	length = 1
	chatname = "messy mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_straight
	name = "M'sai Straight"
	icon_state = "msai_straight"
	length = 3
	chatname = "short mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_spiky
	name = "M'sai Spiky"
	icon_state = "msai_spiky"
	length = 1
	chatname = "spiky mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_victory
	name = "M'sai Victory Curls"
	icon_state = "msai_victory"
	length = 2
	chatname = "curls"

/datum/sprite_accessory/hair/msai_ears/msai_ears_mane
	name = "M'sai Mane"
	icon_state = "msai_mane"
	length = 3
	gender = MALE
	chatname = "long mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_sidepony
	name = "M'sai Side Ponytail"
	icon_state = "msai_sidepony"
	length = 3
	chatname = "sideponytail"

/datum/sprite_accessory/hair/msai_ears/msai_ears_governmentman
	name = "M'sai Government Man"
	icon_state = "msai_gman"
	length = 2
	chatname = "styled mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_bun
	name = "M'sai Bun"
	icon_state = "msai_bun"
	length = 2
	chatname = "hair bun"

/datum/sprite_accessory/hair/msai_ears/taj_ears_smallbun
	name = "M'sai Bun (Small)"
	icon_state = "msai_bunsmall"
	length = 2
	chatname = "hair bun"

/datum/sprite_accessory/hair/msai_ears/msai_ears_lowbun
	name = "M'sai Bun (Low)"
	icon_state = "msai_lowbun"
	length = 2
	chatname = "hair bun"

/datum/sprite_accessory/hair/msai_ears/msai_ears_lowsmallbun
	name = "M'sai Bun (Low, Small)"
	icon_state = "msai_lowbunsmall"
	length = 2
	chatname = "hair bun"

/datum/sprite_accessory/hair/msai_ears/msai_ears_bunshort
	name = "M'sai Bun (Short)"
	icon_state = "msai_bunshort"
	length = 2
	chatname = "hair bun"

/datum/sprite_accessory/hair/msai_ears/msai_ears_wedge
	name = "M'sai Wedge"
	icon_state = "msai_wedge"
	length = 2
	chatname = "styled mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_tresses
	name = "M'sai Tresses"
	icon_state = "msai_tresses"
	length = 3
	chatname = "styled mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_shoulderparted
	name = "M'sai Shoulderparted"
	icon_state = "msai_shoulderparted"
	length = 3
	chatname = "styled mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_shoulderpartedsmall
	name = "M'sai Shoulderparted Small"
	icon_state = "msai_shoulderpartedsmall"
	length = 3
	chatname = "styled mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_shoulderpartedlong
	name = "M'sai Shoulderparted Long"
	icon_state = "msai_shoulderpartedlong"
	length = 3
	chatname = "styled mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_sidepartedleft
	name = "M'sai Sideparted Left"
	icon_state = "msai_sidepartedleft"
	length = 3
	chatname = "styled mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_sidepartedright
	name = "M'sai Sideparted Right"
	icon_state = "msai_sidepartedright"
	length = 3
	chatname = "styled mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_shoulderlength
	name = "M'sai Shoulderlength"
	icon_state = "msai_shoulderlength"
	length = 2
	chatname = "styled mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_shoulderlengthalt
	name = "M'sai Shoulderlength Alt"
	icon_state = "msai_shoulderlengthalt"
	length = 2
	chatname = "styled mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_fringeup
	name = "M'sai Fringe Up"
	icon_state = "msai_fringeup"
	length = 2
	chatname = "styled mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_cascading
	name = "M'sai Cascading"
	icon_state = "msai_cascading"
	length = 3
	chatname = "styled mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_cascadingalt
	name = "M'sai Cascading Alt"
	icon_state = "msai_cascadingalt"
	length = 3
	chatname = "styled mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_swoop
	name = "M'sai Swoop"
	icon_state = "msai_swoop"
	length = 2
	chatname = "styled mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_swoop_alt
	name = "M'sai Swoop Alt"
	icon_state = "msai_swoop_alt"
	length = 2
	chatname = "styled mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_swoop_bangs
	name = "M'sai Swoop Bangs"
	icon_state = "msai_swoop_bangs"
	length = 2
	chatname = "styled mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_swoop_long
	name = "M'sai Swoop Long"
	icon_state = "msai_longswoop"
	length = 3
	chatname = "styled mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_swoop_long_alt
	name = "M'sai Swoop Long Alt"
	icon_state = "msai_longswoop_alt"
	length = 3
	chatname = "styled mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_diagonal_bangs
	name = "M'sai Diagonal Bangs"
	icon_state = "msai_diagonal_bangs"
	length = 2
	chatname = "bangs"

/datum/sprite_accessory/hair/msai_ears/msai_ears_ponytail_one
	name = "M'sai Ponytail 1"
	icon_state = "msai_ponytail1"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/msai_ears/msai_ears_ponytail_two
	name = "M'sai Ponytail 2"
	icon_state = "msai_ponytail2"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/msai_ears/msai_ears_ponytail_spiky
	name = "M'sai Ponytail, Spiky"
	icon_state = "msai_ponytail_spiky"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/msai_ears/msai_ears_ponytail_wisp
	name = "M'sai Ponytail, Wisp"
	icon_state = "msai_ponytail_wisp"
	length = 3
	chatname = "ponytail"

/datum/sprite_accessory/hair/msai_ears/msai_ears_ponytail_zieglertail
	name = "M'sai Ponytail, Zieglertail"
	icon_state = "msai_ponytail_ziegler"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/msai_ears/msai_ears_longfringe
	name = "M'sai Long Fringe"
	icon_state = "msai_longfringe"
	length = 3
	chatname = "long mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_longfringe_longer
	name = "M'sai Long Fringe, Longer"
	icon_state = "msai_longfringe_longer"
	length = 4
	chatname = "long mane"

/datum/sprite_accessory/hair/msai_ears/msai_ears_long_wavy
	name = "M'sai Long Wavy"
	icon_state = "msai_long_wavy"
	length = 3
	chatname = "long mane"

//tesla rejuvenation suit hair
/datum/sprite_accessory/hair/tesla_ears
	icon = 'icons/mob/human_face/tesla_body_hair.dmi'
	name = "Tesla Rejuvenation Suit Ears"
	icon_state = "ears_plain"
	length = 1
	species_allowed = list(/datum/species/tajaran/tesla_body)

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_bangs
	name = "Tesla Rejuvenation Suit Bangs"
	icon_state = "hair_bangs"
	length = 3
	chatname = "bangs"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_bangs_alt
	name = "Tesla Rejuvenation Suit Bangs Alt"
	icon_state = "hair_bangs_alt"
	length = 3
	chatname = "short bangs"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_shortfringe
	name = "Tesla Rejuvenation Suit Short Fringe"
	icon_state = "hair_shortfringe"
	length = 2
	chatname = "short fringe"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_bob
	name = "Tesla Rejuvenation Suit Bob"
	icon_state = "hair_bob"
	length = 2
	chatname = "groomed short mane"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_braid
	name = "Tesla Rejuvenation Suit Braid"
	icon_state = "hair_braid"
	length = 3
	chatname = "braid"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_braid_alt
	name = "Tesla Rejuvenation Suit Braid Alt"
	icon_state = "hair_braid_alt"
	length = 3
	chatname = "braid"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_clean
	name = "Tesla Rejuvenation Suit Clean"
	icon_state = "hair_clean"
	length = 1
	chatname = "short mane"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_curls
	name = "Tesla Rejuvenation Suit Curly"
	icon_state = "hair_curly"
	length = 3
	chatname = "curly mane"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_curlsalt
	name = "Tesla Rejuvenation Suit Curly Alt"
	icon_state = "hair_curlyalt"
	length = 3
	chatname = "curly mane"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_fingercurl
	name = "Tesla Rejuvenation Suit Finger Curls"
	icon_state = "hair_fingerwave"
	length = 2
	chatname = "curls"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_housewife
	name = "Tesla Rejuvenation Suit Housewife"
	icon_state = "hair_housewife"
	length = 2
	chatname = "long mane"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_long
	name = "Tesla Rejuvenation Suit Long"
	icon_state = "hair_long"
	length = 3
	chatname = "long mane"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_messy
	name = "Tesla Rejuvenation Suit Messy"
	icon_state = "hair_messy"
	length = 1
	chatname = "messy mane"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_mohawk
	name = "Tesla Rejuvenation Suit Mohawk"
	icon_state = "hair_mohawk"
	length = 1
	chatname = "mohawk"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_plait
	name = "Tesla Rejuvenation Suit Plait"
	icon_state = "hair_plait"
	length = 1
	chatname = "braid"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_rattail
	name = "Tesla Rejuvenation Suit Rat Tail"
	icon_state = "hair_rattail"
	length = 2
	chatname = "thin ponytail"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_shaggy
	name = "Tesla Rejuvenation Suit Shaggy"
	icon_state = "hair_shaggy"
	length = 1
	chatname = "messy mane"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_straight
	name = "Tesla Rejuvenation Suit Straight"
	icon_state = "hair_straight"
	length = 3
	chatname = "short mane"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_spiky
	name = "Tesla Rejuvenation Suit Spiky"
	icon_state = "hair_spiky"
	length = 1
	chatname = "spiky mane"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_victory
	name = "Tesla Rejuvenation Suit Victory Curls"
	icon_state = "hair_victory"
	length = 3
	chatname = "curls"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_mane
	name = "Tesla Rejuvenation Suit Mane"
	icon_state = "hair_mane"
	length = 3
	gender = MALE
	chatname = "long mane"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_sidepony
	name = "Tesla Rejuvenation Suit Side Ponytail"
	icon_state = "hair_sidepony"
	length = 3
	chatname = "sideponytail"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_governmentman
	name = "Tesla Rejuvenation Suit Government Man"
	icon_state = "hair_gman"
	length = 1
	chatname = "styled mane"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_bun
	name = "Tesla Rejuvenation Suit Bun"
	icon_state = "hair_bun"
	length = 2
	chatname = "hair bun"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_smallbun
	name = "Tesla Rejuvenation Suit Bun (Small)"
	icon_state = "hair_bunsmall"
	length = 2
	chatname = "hair bun"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_lowbun
	name = "Tesla Rejuvenation Suit Bun (Low)"
	icon_state = "hair_lowbun"
	length = 2
	chatname = "hair bun"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_smalllowbun
	name = "Tesla Rejuvenation Suit Bun (Low, Small)"
	icon_state = "hair_lowbunsmall"
	length = 2
	chatname = "hair bun"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_bunshort
	name = "Tesla Rejuvenation Suit Bun (Short)"
	icon_state = "hair_bunshort"
	length = 2
	chatname = "hair bun"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_wedge
	name = "Tesla Rejuvenation Suit Wedge"
	icon_state = "hair_wedge"
	length = 2
	chatname = "styled mane"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_tresses
	name = "Tesla Rejuvenation Suit Tresses"
	icon_state = "hair_tresses"
	length = 3
	chatname = "styled mane"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_shoulderparted
	name = "Tesla Rejuvenation Suit Shoulder Parted"
	icon_state = "hair_shoulderparted"
	length = 3
	chatname = "styled mane"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_shoulderpartedsmall
	name = "Tesla Rejuvenation Suit Shoulder Parted Small"
	icon_state = "hair_shoulderpartedsmall"
	length = 3
	chatname = "styled mane"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_shoulderpartedlong
	name = "Tesla Rejuvenation Suit Shoulder Parted Long"
	icon_state = "hair_shoulderpartedlong"
	length = 3
	chatname = "styled mane"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_shoulderlength
	name = "Tesla Rejuvenation Suit Shoulderlength"
	icon_state = "hair_shoulderlength"
	length = 2
	chatname = "styled mane"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_shoulderlengthalt
	name = "Tesla Rejuvenation Suit Shoulderlength Alt"
	icon_state = "hair_shoulderlengthalt"
	length = 2
	chatname = "styled mane"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_sidepartedleft
	name = "Tesla Rejuvenation Suit Sideparted Left"
	icon_state = "hair_sidepartedleft"
	length = 3
	chatname = "styled mane"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_sidepartedright
	name = "Tesla Rejuvenation Suit Sideparted Right"
	icon_state = "hair_sidepartedright"
	length = 3
	chatname = "styled mane"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_fringeup
	name = "Tesla Rejuvenation Suit Fringe Up"
	icon_state = "hair_fringeup"
	length = 2
	chatname = "styled mane"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_cascading
	name = "Tesla Rejuvenation Suit Cascading"
	icon_state = "hair_cascading"
	length = 3
	chatname = "styled mane"

/datum/sprite_accessory/hair/tesla_ears/taj_ears_cascadingalt
	name = "Tesla Rejuvenation Suit Cascading Alt"
	icon_state = "hair_cascadingalt"
	length = 3
	chatname = "styled mane"

/datum/sprite_accessory/hair/tesla_ears/taj_ears_swoop
	name = "Tesla Rejuvenation Suit Swoop"
	icon_state = "hair_swoop"
	length = 2
	chatname = "styled mane"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_swoop_alt
	name = "Tesla Rejuvenation Suit Swoop Alt"
	icon_state = "hair_swoop_alt"
	length = 2
	chatname = "styled mane"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_swoop_bangs
	name = "Tesla Rejuvenation Suit Swoop Bangs"
	icon_state = "hair_swoop_bangs"
	length = 2
	chatname = "styled mane"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_swoop_long
	name = "Tesla Rejuvenation Suit Swoop Long"
	icon_state = "hair_longswoop"
	length = 3
	chatname = "styled mane"

/datum/sprite_accessory/hair/tesla_ears/tesla_ears_swoop_long_alt
	name = "Tesla Rejuvenation Suit Swoop Long Alt"
	icon_state = "hair_longswoop_alt"
	length = 3
	chatname = "styled mane"

//vaurca antennae
/datum/sprite_accessory/hair/vaurca_classic
	icon = 'icons/mob/human_face/vaurca_hair.dmi'
	name = "Classic Antennae"
	icon_state = "vaurca_classic"
	species_allowed = list(/datum/species/bug, /datum/species/bug/type_b, /datum/species/bug/type_b/type_bb)
	gender = NEUTER
	chatname = "antennae"

/datum/sprite_accessory/hair/vaurca_classic/vaurca_braided
	name = "Braided Antennae"
	icon_state = "vaurca_braided"
	chatname = "antennae"
	length = 3

/datum/sprite_accessory/hair/vaurca_classic/vaurca_catfish
	name = "Catfish Antennae"
	icon_state = "vaurca_catfish"
	chatname = "antennae"
	length = 2

/datum/sprite_accessory/hair/vaurca_classic/vaurca_dipole
	name = "Dipole Antennae"
	icon_state = "vaurca_dipole"
	chatname = "antennae"
	length = 2

/datum/sprite_accessory/hair/vaurca_classic/vaurca_droop
	name = "Droopy Antennae"
	icon_state = "vaurca_droop"
	chatname = "antennae"
	length = 2

/datum/sprite_accessory/hair/vaurca_classic/vaurca_fla
	name = "Floor Length Antennae"
	icon_state = "vaurca_fla"
	chatname = "long antennae"
	length = 4

/datum/sprite_accessory/hair/vaurca_classic/vaurca_formic
	name = "Formic Antennae"
	icon_state = "vaurca_formic"
	chatname = "antennae"
	length = 2

/datum/sprite_accessory/hair/vaurca_classic/vaurca_damaged_left
	name = "Injured Antenna, Left"
	icon_state = "vaurca_inj_left"
	chatname = "antenna"
	length = 1

/datum/sprite_accessory/hair/vaurca_classic/vaurca_damaged_right
	name = "Injured Antenna, Right"
	icon_state = "vaurca_inj_right"
	chatname = "antenna"
	length = 1

/datum/sprite_accessory/hair/vaurca_classic/vaurca_knight
	name = "Knight Antennae"
	icon_state = "vaurca_knight"
	chatname = "antennae"
	length = 2

/datum/sprite_accessory/hair/vaurca_classic/vaurca_mid
	name = "Mid Length Antennae"
	icon_state = "vaurca_mid"
	chatname = "antennae"
	length = 2

/datum/sprite_accessory/hair/vaurca_classic/vaurca_parabolic
	name = "Parabolic Antennae"
	icon_state = "vaurca_parabolic"
	chatname = "antennae"
	length = 2

/datum/sprite_accessory/hair/vaurca_classic/vaurca_zappy
	name = "Zappy Antennae"
	icon_state = "vaurca_zappy"
	chatname = "antennae"
	length = 2

//Bulwark antennae
/datum/sprite_accessory/hair/bulwark_classic
	icon = 'icons/mob/human_face/bulwark_hair.dmi'
	name = "Bulwark Classic Antennae"
	icon_state = "bully_classic"
	species_allowed = list(/datum/species/bug/type_e)
	gender = NEUTER
	chatname = "antennae"

/datum/sprite_accessory/hair/bulwark_classic/bulwark_damaged_left
	name = "Bulwark Injured Antenna, Left"
	icon_state = "bully_inj_left"
	chatname = "antenna"
	length = 1

/datum/sprite_accessory/hair/bulwark_classic/bulwark_damaged_right
	name = "Bulwark Injured Antenna, Right"
	icon_state = "bully_inj_right"
	chatname = "antenna"
	length = 1

/datum/sprite_accessory/hair/bulwark_classic/bulwark_knight
	name = "Bulwark Knight Antennae"
	icon_state = "bully_knight"
	chatname = "antennae"
	length = 2

/datum/sprite_accessory/hair/bulwark_classic/bulwark_pointy
	name = "Pointy Antennae"
	icon_state = "bully_pointy"
	chatname = "antennae"
	length = 2

/datum/sprite_accessory/hair/bulwark_classic/bulwark_original
	name = "Original Antennae"
	icon_state = "bully_original"
	chatname = "antennae"
	length = 2

/datum/sprite_accessory/hair/bulwark_classic/bulwark_islero
	name = "Islero Antennae"
	icon_state = "bully_islero"
	chatname = "antennae"
	length = 3

/datum/sprite_accessory/hair/bulwark_classic/bulwark_tall
	name = "Tall Antennae"
	icon_state = "bully_tall"
	chatname = "antennae"
	length = 4

/datum/sprite_accessory/hair/bulwark_classic/bulwark_stag
	name = "Stag Antennae"
	icon_state = "bully_stag"
	chatname = "antennae"
	length = 5

/datum/sprite_accessory/hair/bulwark_classic/bulwark_rhino
	name = "Rhinoceros Antenna"
	icon_state = "bully_rhino"
	chatname = "antenna"
	length = 5

/datum/sprite_accessory/hair/bulwark_classic/bulwark_ladybug
	name = "Ladybug Antennae"
	icon_state = "bully_ladybug"
	chatname = "antennae"
	length = 6

//Breeder antennae
/datum/sprite_accessory/hair/breeder_standard
	icon = 'icons/mob/human_face/breeder_hair.dmi'
	name = "Breeder Standard Antennae"
	icon_state = "breeder_standard"
	species_allowed = list(/datum/species/bug/type_c)
	gender = NEUTER
	chatname = "antennae"
	length = 3

/datum/sprite_accessory/hair/breeder_standard/breeder_quad
	name = "Breeder Quad Antennae"
	icon_state = "breeder_quad"
	length = 3

/datum/sprite_accessory/hair/breeder_standard/breeder_crownedcrest
	name = "Breeder Crowned Crest"
	icon_state = "breeder_crownedcrest"
	length = 1

/datum/sprite_accessory/hair/breeder_standard/breeder_hammerhead
	name = "Breeder Hammerhead"
	icon_state = "breeder_hammerhead"
	length = 1

/datum/sprite_accessory/hair/breeder_standard/breeder_princess
	name = "Breeder Princess Antennae"
	icon_state = "breeder_princess"
	length = 2
