/*
////////////////////////////
/  =--------------------=  /
/  ==  Body Markings   ==  /
/  =--------------------=  /
////////////////////////////

includes scars and tattoos
*/
/datum/sprite_accessory/marking
	icon = 'icons/mob/sprite_accessories/markings.dmi'
	do_colouration = TRUE //Almost all of them have it, COLOR_ADD

	icon_blend_mode = ICON_ADD
	species_allowed = list()
	var/body_parts = list()

	var/is_genetic = TRUE	// If TRUE, the marking is considered genetic and is embedded into DNA.
	var/is_painted = FALSE	// If TRUE, the marking can be put on prosthetics/robolimbs.
	/* soon
	var/digitigrade_acceptance = MARKING_NONDIGI_ONLY
	var/digitigrade_icon = 'icons/mob/human_races/markings_digi.dmi'
	*/
//Tattoos

/datum/sprite_accessory/marking/tat_rheart
	name = "Tattoo (Heart, R. Arm)"
	icon_state = "tat_rheart"
	body_parts = list(BP_R_ARM)

/datum/sprite_accessory/marking/tat_lheart
	name = "Tattoo (Heart, L. Arm)"
	icon_state = "tat_lheart"
	body_parts = list(BP_L_ARM)

/datum/sprite_accessory/marking/tat_hive
	name = "Tattoo (Hive, Back)"
	icon_state = "tat_hive"
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/tat_nightling
	name = "Tattoo (Nightling, Back)"
	icon_state = "tat_nightling"
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/tat_campbell_full
	name = "Tattoo (Campbell, Arms/Legs)"
	icon_state = "tat_campbell"
	body_parts = list (BP_R_ARM,BP_L_ARM,BP_R_LEG,BP_L_LEG)

//TODO: remove these in a few months?
/datum/sprite_accessory/marking/tat_campbell
	name = "Tattoo (Campbell, R.Arm)"
	icon_state = "tat_campbell"
	body_parts = list(BP_R_ARM)

/datum/sprite_accessory/marking/tat_campbell/left
	name = "Tattoo (Campbell, L.Arm)"
	body_parts = list(BP_L_ARM)

/datum/sprite_accessory/marking/tat_campbell/rightleg
	name = "Tattoo (Campbell, R.Leg)"
	body_parts = list(BP_R_LEG)

/datum/sprite_accessory/marking/tat_campbell/leftleg
	name = "Tattoo (Campbell, L.Leg)"
	body_parts = list (BP_L_LEG)
//END TODO

/datum/sprite_accessory/marking/tat_zigs
	name = "Tattoo (Zigs)"
	icon_state = "tat_zigs"
	body_parts = list(BP_L_LEG, BP_R_LEG)

/datum/sprite_accessory/marking/tat_circle/legs
	name = "Modified Tattoo (Circle, Legs)"
	icon_state = "tat_circle"
	body_parts = list(BP_R_LEG,BP_L_LEG)

/datum/sprite_accessory/marking/tat_silverburgh
	name = "Tattoo (Silverburgh, R.Leg)"
	icon_state = "tat_silverburgh"
	body_parts = list (BP_R_LEG)

/datum/sprite_accessory/marking/tat_silverburgh/left
	name = "Tattoo (Silverburgh, L.Leg)"
	icon_state = "tat_silverburgh"
	body_parts = list (BP_L_LEG)

/datum/sprite_accessory/marking/tat_tiger
	name = "Tattoo (Tiger Stripes, Body)"
	icon_state = "tat_tiger"
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_CHEST,BP_GROIN)

//New tats

/datum/sprite_accessory/marking/tat_belly
	name = "Tattoo (Belly)"
	icon_state = "tat_belly"
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/tat_forrest_left
	name = "Tattoo (Forrest, Left Eye)"
	icon_state = "tat_forrest_l"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/tat_forrest_right
	name = "Tattoo (Forrest, Right Eye)"
	icon_state = "tat_forrest_r"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/tat_hunter_left
	name = "Tattoo (Hunter, Left Eye)"
	icon_state = "tat_hunter_l"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/tat_hunter_right
	name = "Tattoo (Hunter, Right Eye)"
	icon_state = "tat_hunter_r"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/tat_jaeger_left
	name = "Tattoo (Jaeger, Left Eye)"
	icon_state = "tat_jaeger_l"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/tat_jaeger_right
	name = "Tattoo (Jaeger, Right Eye)"
	icon_state = "tat_jaeger_r"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/tat_kater_left
	name = "Tattoo (Kater, Left Eye)"
	icon_state = "tat_kater_l"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/tat_kater_right
	name = "Tattoo (Kater, Right Eye)"
	icon_state = "tat_kater_r"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/tat_lujan_left
	name = "Tattoo (Lujan, Left Eye)"
	icon_state = "tat_lujan_l"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/tat_lujan_right
	name = "Tattoo (Lujan, Right Eye)"
	icon_state = "tat_lujan_r"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/tat_montana_left
	name = "Tattoo (Montana, Left Face)"
	icon_state = "tat_montana_l"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/tat_montana_right
	name = "Tattoo (Montana, Right Face)"
	icon_state = "tat_montana_r"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/tat_natasha_left
	name = "Tattoo (Natasha, Left Eye)"
	icon_state = "tat_natasha_l"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/tat_natasha_right
	name = "Tattoo (Natasha, Right Eye)"
	icon_state = "tat_natasha_r"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/tat_tamoko
	name = "Tattoo (Ta Moko, Face)"
	icon_state = "tat_tamoko"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/tat_toshi_left
	name = "Tattoo (Toshi, Left Eye)"
	icon_state = "tat_toshi_l"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/tat_toshi_right
	name = "Tattoo (Volgin, Right Eye)"
	icon_state = "tat_toshi_r"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/tat_wings_back
	name = "Tattoo (Wings, Lower Back)"
	icon_state = "tat_wingsback"
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/tilaka
	name = "Tilaka"
	icon_state = "tilaka"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/bands
	name = "Color Bands"
	icon_state = "bands"
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_CHEST,BP_GROIN)

/datum/sprite_accessory/marking/bandsface
	name = "Color Bands (Face)"
	icon_state = "bandsface"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/bandsface_human
	name = "Color Bands (Face) (Human)"
	icon_state = "bandshumanface"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/tiger_stripes
	name = "Tiger Stripes"
	icon_state = "tiger"
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_CHEST,BP_GROIN)

/datum/sprite_accessory/marking/tigerhead
	name = "Tiger Stripes (Head, Minor)"
	icon_state = "tigerhead"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/tigerface
	name = "Tiger Stripes (Head, Major)"
	icon_state = "tigerface"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/backstripe
	name = "Back Stripe"
	icon_state = "backstripe"
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/bindi
	name = "Bindi"
	icon_state = "bindi"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/blush
	name = "Blush"
	icon_state= "blush"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/bridge
	name = "Bridge"
	icon_state = "bridge"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/brow_left
	name = "Brow Left"
	icon_state = "brow_l"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/brow_right
	name = "Brow Right"
	icon_state = "brow_r"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/cheekspot_left
	name = "Cheek Spot (Left Cheek)"
	icon_state = "cheekspot_l"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/cheekspot_right
	name = "Cheek Spot (Right Cheek)"
	icon_state = "cheekspot_r"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/cheshire_left
	name = "Cheshire (Left Cheek)"
	icon_state = "cheshire_l"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/cheshire_right
	name = "Cheshire (Right Cheek)"
	icon_state = "cheshire_r"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/eyestripe
	name = "Eye Stripe"
	icon_state = "eyestripe"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/eyecorner_left
	name = "Eye Corner Left"
	icon_state = "eyecorner_l"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/eyecorner_right
	name = "Eye Corner Right"
	icon_state = "eyecorner_r"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/fullfacepaint
	name = "Full Face Paint"
	icon_state = "fullface"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/lips
	name = "Lips"
	icon_state = "lips"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/lowercheek_left
	name = "Lower Cheek Left"
	icon_state = "lowercheek_l"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/lowercheek_left
	name = "Lower Cheek Right"
	icon_state = "lowercheek_r"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/neck
	name = "Neck Cover"
	icon_state = "neck"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/neckthick
	name = "Neck Cover (Thick)"
	icon_state = "neckthick"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/nosestripe
	name = "Nose Stripe"
	icon_state = "nosestripe"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/nosetape
	name = "Nose Tape"
	icon_state = "nosetape"
	body_parts = list(BP_HEAD)
	is_genetic = FALSE

/datum/sprite_accessory/marking/scar_abdomen_left
	name = "Scar, Abdomen Left"
	icon_state = "scar_abdomen_l"
	body_parts = list(BP_GROIN)

/datum/sprite_accessory/marking/scar_abdomen_right
	name = "Scar, Abdomen Right"
	icon_state = "scar_abdomen_r"
	body_parts = list(BP_GROIN)

/datum/sprite_accessory/marking/scar_abdomen_small_left
	name = "Scar, Abdomen Small Left"
	icon_state = "scar_abdomensmall_l"
	body_parts = list(BP_GROIN)

/datum/sprite_accessory/marking/scar_abdomen_small_right
	name = "Scar, Abdomen Small Right"
	icon_state = "scar_abdomensmall_r"
	body_parts = list(BP_GROIN)

/datum/sprite_accessory/marking/scar_back_large
	name = "Scar, Back Large"
	icon_state = "scar_back_large"
	body_parts = list(BP_GROIN)


/datum/sprite_accessory/marking/scar_back_small_upper_right
	name = "Scar, Back Small (Upper Right)"
	icon_state = "scar_back_small_ur"
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/scar_back_small_upper_left
	name = "Scar, Back Small (Upper Left)"
	icon_state = "scar_back_small_ul"
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/scar_back_small_lower_right
	name = "Scar, Back Small (Lower Right)"
	icon_state = "scar_back_small_lr"
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/scar_back_small_lower_left
	name = "Scar, Back Small (Lower Left)"
	icon_state = "scar_back_small_ll"
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/scar_chest_large_left
	name = "Scar, Chest Large (Left)"
	icon_state = "scar_chest_large_l"
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/scar_chest_large_right
	name = "Scar, Chest Large (Right)"
	icon_state = "scar_chest_large_r"
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/scar_chest_small_left
	name = "Scar, Chest Small (Left)"
	icon_state = "scar_chest_small_l"
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/scar_chest_small_right
	name = "Scar, Chest Small (Right)"
	icon_state = "scar_chest_small_r"
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/scar_belly
	name = "Scar, Belly"
	icon_state = "scar_belly"
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/scar_cheek_left
	name = "Scar, Cheek (Left)"
	icon_state = "scar_cheek_l"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/scar_cheek_right
	name = "Scar, Cheek (Right)"
	icon_state = "scar_cheek_r"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/scar_forehead_left
	name = "Scar, Forehead (Left)"
	icon_state = "scar_forehead_l"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/scar_forehead_right
	name = "Scar, Forehead (Right)"
	icon_state = "scar_forehead_r"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/scar_chin
	name = "Scar, Chin"
	icon_state = "scar_chin"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/scar_eye_left
	name = "Scar, Over Eye (Left)"
	icon_state = "scar_eye_l"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/scar_eye_right
	name = "Scar, Over Eye (Right)"
	icon_state = "scar_eye_r"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/scar_left_arm_upper
	name = "Scar, Left Arm (Upper)"
	icon_state = "scar_arm_left_u"
	body_parts = list(BP_L_ARM)

/datum/sprite_accessory/marking/scar_left_arm_lower
	name = "Scar, Left Arm (Lower)"
	icon_state = "scar_arm_left_l"
	body_parts = list(BP_L_ARM)

/datum/sprite_accessory/marking/scar_left_arm_rear
	name = "Scar, Left Arm (Rear)"
	icon_state = "scar_arm_left_rear"
	body_parts = list(BP_L_ARM)

/datum/sprite_accessory/marking/scar_left_hand
	name = "Scar, Left Hand"
	icon_state = "scar_hand_left"
	body_parts = list(BP_L_HAND)

/datum/sprite_accessory/marking/scar_right_arm_upper
	name = "Scar, Right Arm (Upper)"
	icon_state = "scar_arm_right_u"
	body_parts = list(BP_R_ARM)

/datum/sprite_accessory/marking/scar_right_arm_lower
	name = "Scar, Right Arm (Lower)"
	icon_state = "scar_arm_right_l"
	body_parts = list(BP_R_ARM)

/datum/sprite_accessory/marking/scar_right_arm_rear
	name = "Scar, Right Arm (Rear)"
	icon_state = "scar_arm_right_rear"
	body_parts = list(BP_R_ARM)

/datum/sprite_accessory/marking/scar_right_hand
	name = "Scar, Right Hand"
	icon_state = "scar_hand_right"
	body_parts = list(BP_R_HAND)

/datum/sprite_accessory/marking/scar_left_leg_upper
	name = "Scar, Left Leg (Upper)"
	icon_state = "scar_leg_left_u"
	body_parts = list(BP_L_LEG)

/datum/sprite_accessory/marking/scar_left_leg_lower
	name = "Scar, Left Leg (Lower)"
	icon_state = "scar_leg_left_l"
	body_parts = list(BP_L_LEG)

/datum/sprite_accessory/marking/scar_left_leg_rear
	name = "Scar, Left Leg (Rear)"
	icon_state = "scar_leg_left_rear"
	body_parts = list(BP_L_LEG)

/datum/sprite_accessory/marking/scar_left_foot
	name = "Scar, Left Foot"
	icon_state = "scar_left_foot"
	body_parts = list(BP_L_FOOT)

/datum/sprite_accessory/marking/scar_right_leg_upper
	name = "Scar, Right Leg (Upper)"
	icon_state = "scar_right_leg_u"
	body_parts = list(BP_R_LEG)

/datum/sprite_accessory/marking/scar_right_leg_lower
	name = "Scar, Right Leg (Lower)"
	icon_state = "scar_right_leg_l"
	body_parts = list(BP_R_LEG)

/datum/sprite_accessory/marking/scar_right_leg_rear
	name = "Scar, Right Leg (Rear)"
	icon_state = "scar_right_leg_rear"
	body_parts = list(BP_R_LEG)

/datum/sprite_accessory/marking/scar_right_foot
	name = "Scar, Right Foot"
	icon_state = "scar_right_foot"
	body_parts = list(BP_R_FOOT)

/datum/sprite_accessory/marking/skull_paint
	name = "Skull Paint"
	icon_state = "skull"
	body_parts = list(BP_HEAD)
	is_genetic = FALSE

//Heterochromia

/datum/sprite_accessory/marking/heterochromia
	name = "Heterochromia (right eye)"
	icon_state = "heterochromia"
	body_parts = list(BP_HEAD)

//Taj/Unathi shared markings

/datum/sprite_accessory/marking/taj_paw_socks
	name = "Socks Coloration (Taj)"
	icon_state = "taj_pawsocks"
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND)

/datum/sprite_accessory/marking/una_paw_socks
	name = "Socks Coloration (Una)"
	icon_state = "una_pawsocks"
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND)

/datum/sprite_accessory/marking/paw_socks
	name = "Socks Coloration (Generic)"
	icon_state = "pawsocks"
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND)

/datum/sprite_accessory/marking/paw_socks_belly
	name = "Socks,Belly Coloration (Generic)"
	icon_state = "pawsocksbelly"
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_GROIN,BP_CHEST)

/datum/sprite_accessory/marking/belly_hands_feet
	name = "Hands,Feet,Belly Color (Minor)"
	icon_state = "bellyhandsfeetsmall"
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_GROIN,BP_CHEST)

/datum/sprite_accessory/marking/hands_feet_belly_full
	name = "Hands,Feet,Belly Color (Major)"
	icon_state = "bellyhandsfeet"
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_GROIN,BP_CHEST)

/datum/sprite_accessory/marking/hands_feet_belly_full_female
	name = "Hands,Feet,Belly Color (Major, Female)"
	icon_state = "bellyhandsfeet_female"
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_GROIN,BP_CHEST)

/datum/sprite_accessory/marking/patches
	name = "Color Patches"
	icon_state = "patches"
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_CHEST,BP_GROIN)

/datum/sprite_accessory/marking/patchesface
	name = "Color Patches (Face)"
	icon_state = "patchesface"
	body_parts = list(BP_HEAD)

//Taj specific stuff
/datum/sprite_accessory/marking/taj_belly
	name = "Belly Fur (Taj)"
	icon_state = "taj_belly"
	body_parts = list(BP_CHEST,BP_GROIN)

/datum/sprite_accessory/marking/taj_bellyfull
	name = "Belly Fur Wide (Taj)"
	icon_state = "taj_bellyfull"
	body_parts = list(BP_CHEST,BP_GROIN)

/datum/sprite_accessory/marking/taj_earsout
	name = "Outer Ear (Taj)"
	icon_state = "taj_earsout"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/taj_earsin
	name = "Inner Ear (Taj)"
	icon_state = "taj_earsin"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/taj_nose
	name = "Nose Color (Taj)"
	icon_state = "taj_nose"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/taj_crest
	name = "Chest Fur Crest (Taj)"
	icon_state = "taj_crest"
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/taj_muzzle
	name = "Muzzle Color (Taj)"
	icon_state = "taj_muzzle"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/taj_face
	name = "Cheeks Color (Taj)"
	icon_state = "taj_face"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/taj_all
	name = "All Taj Head (Taj)"
	icon_state = "taj_all"
	body_parts = list(BP_HEAD)

//Una specific stuff
/datum/sprite_accessory/marking/una_face
	name = "Face Color (Una)"
	icon_state = "una_face"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/una_facelow
	name = "Face Color Low (Una)"
	icon_state = "una_facelow"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/una_scutes
	name = "Scutes (Una)"
	icon_state = "una_scutes"
	body_parts = list(BP_CHEST)

	//Diona stuff.

/datum/sprite_accessory/marking/diona_leaves
	name = "Leaves (Diona)"
	icon_state = "diona_leaves"
	body_parts = list(BP_L_FOOT, BP_R_FOOT, BP_L_LEG, BP_R_LEG, BP_L_ARM, BP_R_ARM, BP_CHEST, BP_GROIN, BP_HEAD)

/datum/sprite_accessory/marking/diona_thorns
	name = "Thorns (Diona)"
	icon_state = "diona_thorns"
	body_parts =list(BP_CHEST, BP_HEAD)
	do_colouration = 0

/datum/sprite_accessory/marking/diona_flowers
	name = "Flowers (Diona)"
	icon_state = "diona_flowers"
	body_parts =list(BP_CHEST, BP_HEAD)
	do_colouration = 0

/datum/sprite_accessory/marking/diona_moss
	name = "Moss (Diona)"
	icon_state = "diona_moss"
	body_parts =list(BP_CHEST)
	do_colouration = 0

/datum/sprite_accessory/marking/diona_mushroom
	name = "Mushroom (Diona)"
	icon_state = "diona_mushroom"
	body_parts =list(BP_HEAD)
	do_colouration = 0

/datum/sprite_accessory/marking/diona_antennae
	name = "Antennae (Diona)"
	icon_state = "diona_antennae"
	body_parts =list(BP_HEAD)
	do_colouration = 0

//Skrell stuff.
/datum/sprite_accessory/marking/skrell
	name = "Countershading (Skrell)"
	icon_state = "skr_shade"
	body_parts = list(BP_CHEST, BP_GROIN, BP_HEAD)

/datum/sprite_accessory/marking/skrell/stripes
	name = "Poison Dart Stripes (Skrell)"
	icon_state = "skr_stripes"
	body_parts = list(BP_L_LEG, BP_R_LEG, BP_L_ARM, BP_R_ARM, BP_CHEST)

//Cybernetic Augments, some species-limited due to sprite misalignment. /aug/ types are excluded from dna.
/datum/sprite_accessory/marking/aug
	name = "Augment (Backports, Back)"
	icon_state = "aug_backports"
	is_genetic = FALSE
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/aug/diode
	name = "Augment (Backports Diode, Back)"
	icon_state = "aug_backportsdiode"

/datum/sprite_accessory/marking/aug/backportswide
	name = "Augment (Backports Wide, Back)"
	icon_state = "aug_backportswide"
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/aug/backportswide/diode
	name = "Augment (Backports Wide Diode, Back)"
	icon_state = "aug_backportswidediode"

/datum/sprite_accessory/marking/aug/headcase
	name = "Augment (Headcase, Head)"
	icon_state = "aug_headcase"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/aug/skullmask
	name = "Augment (Skull Mask, Head)"
	icon_state = "aug_skullmask"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/aug/headcase_light
	name = "Augment (Headcase Light, Head)"
	icon_state = "aug_headcaselight"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/aug/headport
	name = "Augment (Headport, Head)"
	icon_state = "aug_headport"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/aug/headport/diode
	name = "Augment (Headport Diode, Head)"
	icon_state = "aug_headplugdiode"

/datum/sprite_accessory/marking/aug/lowerjaw
	name = "Augment (Lower Jaw, Head)"
	icon_state = "aug_lowerjaw"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/aug/scalpports
	name = "Augment (Scalp Ports)"
	icon_state = "aug_scalpports"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/aug/scalpports/vertex_left
	name = "Augment (Scalp Port, Vertex Left)"
	icon_state = "aug_vertexport_l"

/datum/sprite_accessory/marking/aug/scalpports/vertex_right
	name = "Augment (Scalp Port, Vertex Right)"
	icon_state = "aug_vertexport_r"

/datum/sprite_accessory/marking/aug/scalpports/occipital_left
	name = "Augment (Scalp Port, Occipital Left)"
	icon_state = "aug_occipitalport_l"

/datum/sprite_accessory/marking/aug/scalpports/occipital_right
	name = "Augment (Scalp Port, Occipital Right)"
	icon_state = "aug_occipitalport_r"

/datum/sprite_accessory/marking/aug/scalpportsdiode
	name = "Augment (Scalp Ports Diode)"
	icon_state = "aug_scalpportsdiode"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/aug/scalpportsdiode/vertex_left
	name = "Augment (Scalp Port Diode, Vertex Left)"
	icon_state = "aug_vertexportdiode_l"

/datum/sprite_accessory/marking/aug/scalpportsdiode/vertex_right
	name = "Augment (Scalp Port Diode, Vertex Right)"
	icon_state = "aug_vertexportdiode_r"

/datum/sprite_accessory/marking/aug/scalpportsdiode/occipital_left
	name = "Augment (Scalp Port Diode, Occipital Left)"
	icon_state = "aug_occipitalportdiode_l"

/datum/sprite_accessory/marking/aug/scalpportsdiode/occipital_right
	name = "Augment (Scalp Port Diode, Occipital Right)"
	icon_state = "aug_occipitalportdiode_r"

/datum/sprite_accessory/marking/aug/backside_left
	name = "Augment (Backside Left, Head)"
	icon_state = "aug_backside_l"
	body_parts = list(BP_HEAD)


/datum/sprite_accessory/marking/aug/backside_left/side_diode
	name = "Augment (Backside Left Diode, Head)"
	icon_state = "aug_sidediode_l"
	body_parts = list(BP_HEAD)


/datum/sprite_accessory/marking/aug/backside_right
	name = "Augment (Backside Right, Head)"
	icon_state = "aug_backside_r"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/aug/backside_right/side_diode
	name = "Augment (Backside Right Diode, Head)"
	icon_state = "aug_sidediode_r"

/datum/sprite_accessory/marking/aug/side_deunan_left
	name = "Augment (Deunan, Side Left)"
	icon_state = "aug_sidedeunan_l"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/aug/side_deunan_right
	name = "Augment (Deunan, Side Right)"
	icon_state = "aug_sidedeunan_r"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/aug/side_kuze_left
	name = "Augment (Kuze, Side Left)"
	icon_state = "aug_sidekuze_l"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/aug/side_kuze_left/side_diode
	name = "Augment (Kuze Diode, Side Left)"
	icon_state = "aug_sidekuzediode_l"

/datum/sprite_accessory/marking/aug/side_kuze_right
	name = "Augment (Kuze, Side Right)"
	icon_state = "aug_sidekuze_r"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/aug/side_kuze_right/side_diode
	name = "Augment (Kuze Diode, Side Right)"
	icon_state = "aug_sidekuzediode_r"

/datum/sprite_accessory/marking/aug/side_kinzie_left
	name = "Augment (Kinzie, Side Left)"
	icon_state = "aug_sidekinzie_l"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/aug/side_kinzie_right
	name = "Augment (Kinzie, Side Right)"
	icon_state = "aug_sidekinzie_r"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/aug/side_shelly_left
	name = "Augment (Shelly, Side Left)"
	icon_state = "aug_sideshelly_l"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/aug/side_shelly_right
	name = "Augment (Shelly, Side Right)"
	icon_state = "aug_sideshelly_r"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/aug/chestports
	name = "Augment (Chest Ports)"
	icon_state = "aug_chestports"
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/aug/abdomenports
	name = "Augment (Abdomen Ports)"
	icon_state = "aug_abdomenports"
	body_parts = list(BP_CHEST)

//bandages

/datum/sprite_accessory/marking/bandage
	name = "Bandage, Head 1"
	icon_state = "bandage1"
	body_parts = list(BP_HEAD)
	is_genetic = FALSE
	do_colouration = FALSE

/datum/sprite_accessory/marking/bandage/head2
	name = "Bandage, Head 2"
	icon_state = "bandage2"

/datum/sprite_accessory/marking/bandage/head3
	name = "Bandage, Head 3"
	icon_state = "bandage3"

/datum/sprite_accessory/marking/bandage/torso
	name = "Bandage, Torso 1"
	icon_state = "bandage1"
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/bandage/torso/torso2
	name = "Bandage, Torso 2"
	icon_state = "bandage2"

/datum/sprite_accessory/marking/bandage/torso/torso3
	name = "Bandage, Torso 3"
	icon_state = "bandage3" //someone needs to make a proper torso sprite

/datum/sprite_accessory/marking/bandage/groin
	name = "Bandage, Groin 1"
	icon_state = "bandage1"
	body_parts = list(BP_GROIN)

/datum/sprite_accessory/marking/bandage/groin/groin2
	name = "Bandage, Groin 2"
	icon_state = "bandage2"

/datum/sprite_accessory/marking/bandage/groin/groin3
	name = "Bandage, Groin 3"
	icon_state = "bandage3"

/datum/sprite_accessory/marking/bandage/l_arm
	name = "Bandage, Left Arm 1"
	icon_state = "bandage1"
	body_parts = list(BP_L_ARM)

/datum/sprite_accessory/marking/bandage/l_arm/l_arm2
	name = "Bandage, Left Arm 2"
	icon_state = "bandage2"

/datum/sprite_accessory/marking/bandage/l_arm/l_arm3
	name = "Bandage, Left Arm 3"
	icon_state = "bandage3"

/datum/sprite_accessory/marking/bandage/l_hand
	name = "Bandage, Left Hand 1"
	icon_state = "bandage1"
	body_parts = list(BP_L_HAND)

/datum/sprite_accessory/marking/bandage/l_hand/l_hand_2
	name = "Bandage, Left Hand 2"
	icon_state = "bandage2"

/datum/sprite_accessory/marking/bandage/l_hand/l_hand3
	name = "Bandage, Left Hand 3"
	icon_state = "bandage3"

/datum/sprite_accessory/marking/bandage/r_arm
	name = "Bandage, Right Arm 1"
	icon_state = "bandage1"
	body_parts = list(BP_R_ARM)

/datum/sprite_accessory/marking/bandage/r_arm/r_arm2
	name = "Bandage, Right Arm 2"
	icon_state = "bandage2"

/datum/sprite_accessory/marking/bandage/r_arm/r_arm3
	name = "Bandage, Right Arm 3"
	icon_state = "bandage3"

/datum/sprite_accessory/marking/bandage/r_hand
	name = "Bandage, Right Hand 1"
	icon_state = "bandage1"
	body_parts = list(BP_R_HAND)

/datum/sprite_accessory/marking/bandage/r_hand/r_hand2
	name = "Bandage, Right Hand 2"
	icon_state = "bandage2"

/datum/sprite_accessory/marking/bandage/r_hand/r_hand3
	name = "Bandage, Right Hand 3"
	icon_state = "bandage3"

/datum/sprite_accessory/marking/bandage/l_leg
	name = "Bandage, Left Leg 1"
	icon_state = "bandage1"
	body_parts = list(BP_L_LEG)

/datum/sprite_accessory/marking/bandage/l_leg/l_leg2
	name = "Bandage, Left Leg 2"
	icon_state = "bandage2"

/datum/sprite_accessory/marking/bandage/l_leg/l_leg3
	name = "Bandage, Left Leg 3"
	icon_state = "bandage3"

/datum/sprite_accessory/marking/bandage/l_foot
	name = "Bandage, Left Foot 1"
	icon_state = "bandage1"
	body_parts = list(BP_L_FOOT)

/datum/sprite_accessory/marking/bandage/l_foot/l_foot_2
	name = "Bandage, Left Foot 2"
	icon_state = "bandage2"

/datum/sprite_accessory/marking/bandage/l_foot/l_foot_3
	name = "Bandage, Left Foot 3"
	icon_state = "bandage3"

/datum/sprite_accessory/marking/bandage/r_leg
	name = "Bandage, Right Leg 1"
	icon_state = "bandage1"
	body_parts = list(BP_R_LEG)

/datum/sprite_accessory/marking/bandage/r_leg/r_leg2
	name = "Bandage, Right Leg 2"
	icon_state = "bandage2"

/datum/sprite_accessory/marking/bandage/r_leg/r_leg3
	name = "Bandage, Right Leg 3"
	icon_state = "bandage3"

/datum/sprite_accessory/marking/bandage/r_foot
	name = "Bandage, Right Foot 1"
	icon_state = "bandage1"
	body_parts = list(BP_R_FOOT)

/datum/sprite_accessory/marking/bandage/r_foot/r_foot2
	name = "Bandage, Right Foot 2"
	icon_state = "bandage2"

/datum/sprite_accessory/marking/bandage/r_foot/r_foot3
	name = "Bandage, Right Foot 3"
	icon_state = "bandage3"

/datum/sprite_accessory/marking/vr_inner_thigh
	name = "inner thighs"
	icon_state = "inner_thigh"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_LEG,BP_R_LEG)

/datum/sprite_accessory/marking/vr_inner_arms
	name = "inner arms"
	icon_state = "inner_arm"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_ARM,BP_R_ARM)

/datum/sprite_accessory/marking/vr_vulp_belly
	name = "belly fur (Vulp)"
	icon_state = "vulp_belly"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST,BP_GROIN)

/datum/sprite_accessory/marking/vr_vulp_fullbelly
	name = "full belly fur (Vulp)"
	icon_state = "vulp_fullbelly"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST,BP_GROIN)

/datum/sprite_accessory/marking/vr_vulp_fullbellyplus
	name = "full wide chest fur (Vulp)"
	icon_state = "vulp_fullchestplus"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST,BP_GROIN)

/datum/sprite_accessory/marking/vr_vulp_crest
	name = "belly crest (Vulp)"
	icon_state = "vulp_crest"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST,BP_GROIN)

/datum/sprite_accessory/marking/vr_vulp_nose
	name = "nose (Vulp)"
	icon_state = "vulp_nose"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_vulp_short_nose
	name = "nose, short (Vulp)"
	icon_state = "vulp_short_nose"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_snoutstripe
	name = "snout stripe (Vulp)"
	icon_state = "snoutstripe"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_vulp_face
	name = "face (Vulp)"
	icon_state = "vulp_face"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_vulp_facealt
	name = "face, alt. (Vulp)"
	icon_state = "vulp_facealt"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_vulp_earsface
	name = "ears and face (Vulp)"
	icon_state = "vulp_earsface"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_vulp_all
	name = "all head highlights (Vulp)"
	icon_state = "vulp_all"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_sergal_full
	name = "Sergal Markings"
	icon_state = "sergal_full"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_GROIN,BP_CHEST,BP_HEAD)
	//species_allowed = list("Sergal")			//Removing Polaris whitelits

/datum/sprite_accessory/marking/vr_sergal_full_female
	name = "Sergal Markings (Female)"
	icon_state = "sergal_full_female"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_GROIN,BP_CHEST,BP_HEAD)
	//("Sergal")

/datum/sprite_accessory/marking/vr_monoeye
	name = "Monoeye"
	icon_state = "monoeye"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_spidereyes
	name = "Spider Eyes"
	icon_state = "spidereyes"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_sergaleyes
	name = "Sergal Eyes"
	icon_state = "eyes_sergal"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_closedeyes
	name = "Closed Eyes"
	icon_state = "eyes_closed"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_brows
	name = "Eyebrows"
	icon_state = "brows"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_nevrean_female
	name = "Female Nevrean beak"
	icon_state = "nevrean_f"
	body_parts = list(BP_HEAD)
	icon_blend_mode = ICON_MULTIPLY
	gender = FEMALE

/datum/sprite_accessory/marking/vr_nevrean_male
	name = "Male Nevrean beak"
	icon_state = "nevrean_m"
	body_parts = list(BP_HEAD)
	icon_blend_mode = ICON_MULTIPLY
	gender = MALE

/datum/sprite_accessory/marking/vr_spots
	name = "Spots"
	icon_state = "spots"
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_GROIN,BP_CHEST)

/datum/sprite_accessory/marking/vr_shaggy_mane
	name = "Shaggy mane/feathers"
	icon_state = "shaggy"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/vr_jagged_teeth
	name = "Jagged teeth"
	icon_state = "jagged"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_blank_face
	name = "Blank round face (use with monster mouth)"
	icon_state = "blankface"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_monster_mouth
	name = "Monster mouth"
	icon_state = "monster"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_saber_teeth
	name = "Saber teeth"
	icon_state = "saber"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_fangs
	name = "Fangs"
	icon_state = "fangs"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_tusks
	name = "Tusks"
	icon_state = "tusks"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_otie_face
	name = "Otie face"
	icon_state = "otieface"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_otie_nose
	name = "Otie nose"
	icon_state = "otie_nose"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_otienose_lite
	name = "Short otie nose"
	icon_state = "otienose_lite"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_backstripes
	name = "Back stripes"
	icon_state = "otiestripes"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST,BP_HEAD)

/datum/sprite_accessory/marking/vr_belly_butt
	name = "Belly and butt"
	icon_state = "bellyandbutt"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_GROIN,BP_CHEST)

/datum/sprite_accessory/marking/vr_fingers_toes
	name = "Fingers and toes"
	icon_state = "fingerstoes"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_HAND,BP_R_HAND)

/datum/sprite_accessory/marking/vr_otie_socks
	name = "Fingerless socks"
	icon_state = "otiesocks"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND)

/datum/sprite_accessory/marking/vr_corvid_beak
	name = "Corvid beak"
	icon_state = "corvidbeak"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_corvid_belly
	name = "Corvid belly"
	icon_state = "corvidbelly"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_GROIN,BP_CHEST,BP_HEAD)

/datum/sprite_accessory/marking/vr_cow_body
	name = "Cow markings"
	icon_state = "cowbody"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_GROIN,BP_CHEST,BP_HEAD)

/datum/sprite_accessory/marking/vr_cow_nose
	name = "Cow nose"
	icon_state = "cownose"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_zmask
	name = "Eye mask"
	icon_state = "zmask"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_zbody
	name = "Thick jagged stripes"
	icon_state = "zbody"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_LEG,BP_R_LEG,BP_GROIN,BP_CHEST)

/datum/sprite_accessory/marking/vr_znose
	name = "Jagged snout"
	icon_state = "znose"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_otter_nose
	name = "Otter nose"
	icon_state = "otternose"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_otter_face
	name = "Otter face"
	icon_state = "otterface"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_deer_face
	name = "Deer face"
	icon_state = "deerface"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_sharkface
	name = "Akula snout"
	icon_state = "sharkface"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_sheppy_face
	name = "Shepherd snout"
	icon_state = "shepface"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_sheppy_back
	name = "Shepherd back"
	icon_state = "shepback"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST,BP_GROIN)

/datum/sprite_accessory/marking/vr_zorren_belly_male
	name = "Zorren Male Torso"
	icon_state = "zorren_belly"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST,BP_GROIN)

/datum/sprite_accessory/marking/vr_zorren_belly_female
	name = "Zorren Female Torso"
	icon_state = "zorren_belly_female"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST,BP_GROIN)

/datum/sprite_accessory/marking/vr_zorren_back_patch
	name = "Zorren Back Patch"
	icon_state = "zorren_backpatch"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/vr_zorren_face_male
	name = "Zorren Male Face"
	icon_state = "zorren_face"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)
	gender = MALE

/datum/sprite_accessory/marking/vr_zorren_face_female
	name = "Zorren Female Face"
	icon_state = "zorren_face_female"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)
	gender = FEMALE

/datum/sprite_accessory/marking/vr_zorren_muzzle_male
	name = "Zorren Male Muzzle"
	icon_state = "zorren_muzzle"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)
	gender = MALE

/datum/sprite_accessory/marking/vr_zorren_muzzle_female
	name = "Zorren Female Muzzle"
	icon_state = "zorren_muzzle_female"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)
	gender = FEMALE

/datum/sprite_accessory/marking/vr_zorren_socks
	name = "Zorren Socks"
	icon_state = "zorren_socks"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND)

/datum/sprite_accessory/marking/vr_zorren_longsocks
	name = "Zorren Longsocks"
	icon_state = "zorren_longsocks"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND)


/datum/sprite_accessory/marking/vr_harpy_feathers
	name = "Rapala leg Feather"
	icon_state = "harpy-feathers"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_LEG,BP_R_LEG)

/datum/sprite_accessory/marking/vr_harpy_legs
	name = "Rapala leg coloring"
	icon_state = "harpy-leg"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG)

/datum/sprite_accessory/marking/vr_chooves
	name = "Cloven hooves"
	icon_state = "chooves"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_FOOT,BP_R_FOOT)

/datum/sprite_accessory/marking/vr_topscars
	name = "Top surgery scars"
	icon_state = "topscars"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/vr_body_tonage
	name = "Body tonage"
	icon_state = "tonage"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/vr_body_tone
	name = "Body toning (for emergency contrast loss)"
	icon_state = "btone"
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_GROIN,BP_CHEST)

/datum/sprite_accessory/marking/vr_gloss
	name = "Full body gloss"
	icon_state = "gloss"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_GROIN,BP_CHEST,BP_HEAD)

/datum/sprite_accessory/marking/bust_definition

	name = "Bust definition"
	icon_state = "bust_def"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/bust_definition_light

	name = "Bust definition translucent"
	icon_state = "bust_def_light"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/bust_definition_outline

	name = "Bust definition outline only"
	icon_state = "bust_def_outline"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/bustier_definition

	name = "Bustier definition"
	icon_state = "bust_def2"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/bustier_definition_light

	name = "Bustier definition translucent"
	icon_state = "bust_def2_light"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/bustier_definition_outline

	name = "Bustier definition outline only"
	icon_state = "bust_def2_outline"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/abs_definition

	name = "Abs definition"
	icon_state = "abs"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/bust_nips

	name = "Nipples"
	icon_state = "nips"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/bust_nips_lower

	name = "Nipples (lower)"
	icon_state = "nips2"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/bust_nips_closer

	name = "Nipples (closer)"
	icon_state = "nips3"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/vr_eboop_panels
	name = "Eggnerd FBP panels"
	icon_state = "eboop"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_GROIN,BP_CHEST,BP_HEAD)

/datum/sprite_accessory/marking/vr_osocks_complete
	name = "Modular Longsocks"
	icon_state = "osocks"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_R_ARM,BP_R_HAND,BP_L_ARM,BP_L_HAND,BP_R_FOOT,BP_R_LEG,BP_L_FOOT,BP_L_LEG)

//TODO: remove these in a few months?
/datum/sprite_accessory/marking/vr_osocks_rarm
	name = "Modular Longsock (right arm)"
	icon_state = "osocks"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_R_ARM,BP_R_HAND)

/datum/sprite_accessory/marking/vr_osocks_larm
	name = "Modular Longsock (left arm)"
	icon_state = "osocks"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_ARM,BP_L_HAND)

/datum/sprite_accessory/marking/vr_osocks_rleg
	name = "Modular Longsock (right leg)"
	icon_state = "osocks"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_R_FOOT,BP_R_LEG)

/datum/sprite_accessory/marking/vr_osocks_lleg
	name = "Modular Longsock (left leg)"
	icon_state = "osocks"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_FOOT,BP_L_LEG)
//END TODO

/datum/sprite_accessory/marking/vr_gradient
	name = "Gradient (Arms and Legs)"
	icon_state = "gradient"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_R_ARM,BP_R_HAND,BP_L_ARM,BP_L_HAND,BP_R_FOOT,BP_R_LEG,BP_L_FOOT,BP_L_LEG)

/datum/sprite_accessory/marking/vr_animeeyesinner
	name = "Anime Eyes Inner"
	icon_state = "animeeyesinner"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_animeeyesouter
	name = "Anime Eyes Outer"
	icon_state = "animeeyesouter"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_panda_eye_marks
	name = "Panda Eye Markings"
	icon_state = "eyes_panda"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_catwomantorso
	name = "Catwoman chest stripes"
	icon_state = "catwomanchest"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/vr_catwomangroin
	name = "Catwoman groin stripes"
	icon_state = "catwomangroin"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_GROIN)

/datum/sprite_accessory/marking/vr_catwoman_rleg
	name = "Catwoman right leg stripes"
	icon_state = "catwomanright"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_R_LEG)

/datum/sprite_accessory/marking/vr_catwoman_lleg
	name = "Catwoman left leg stripes"
	icon_state = "catwomanleft"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_LEG)


/datum/sprite_accessory/marking/vr_spirit_lights
	name = "Ward - Spirit FBP Lights"
	icon_state = "lights"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_CHEST,BP_HEAD)

/datum/sprite_accessory/marking/vr_spirit_lights_body
	name = "Ward - Spirit FBP Lights (body)"
	icon_state = "lights"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_CHEST)

/datum/sprite_accessory/marking/vr_spirit_lights_head
	name = "Ward - Spirit FBP Lights (head)"
	icon_state = "lights"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_spirit_panels
	name = "Ward - Spirit FBP Panels"
	icon_state = "panels"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_GROIN,BP_CHEST,BP_HEAD)

/datum/sprite_accessory/marking/vr_spirit_panels_body
	name = "Ward - Spirit FBP Panels (body)"
	icon_state = "panels"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_GROIN,BP_CHEST)

/datum/sprite_accessory/marking/vr_spirit_panels_head
	name = "Ward - Spirit FBP Panels (head)"
	icon_state = "panels"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_tentacle_head
	name = "Squid Head"
	icon_state = "tentaclehead"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_tentacle_mouth
	name = "Tentacle Mouth"
	icon_state = "tentaclemouth"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_rosette
	name = "Rosettes"
	icon_state = "rosette"
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND,BP_GROIN,BP_CHEST,BP_HEAD)

/datum/sprite_accessory/marking/vr_taj_nose_alt
	name = "Nose Color, alt. (Taj)"
	icon_state = "taj_nosealt"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_talons
	name = "Talons"
	icon_state = "talons"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG)

/datum/sprite_accessory/marking/vr_claws
	name = "Claws"
	icon_state = "claws"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_HAND,BP_R_HAND)

/datum/sprite_accessory/marking/vr_equine_snout //Why the long face? Works best with sergal bodytype.
	name = "Equine Snout"
	icon_state = "donkey"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_equine_nose
	name = "Equine Nose"
	icon_state = "dnose"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_bee_stripes
	name = "bee stripes"
	icon_state = "beestripes"
	body_parts = list(BP_CHEST,BP_GROIN)

/datum/sprite_accessory/marking/vr_vas_toes
	name = "Bug Paws (Vasilissan)"
	icon_state = "vas_toes"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_FOOT,BP_R_FOOT)

/datum/sprite_accessory/marking/vr_vulp_skull
	name = "Vulpkanin Skull Face"
	icon_state = "vulp_skull"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_una_skull
	name = "Unathi Skull Face"
	icon_state = "una_skull"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_bellyspiral
	name = "Belly Spiral"
	icon_state = "bellyspiral"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST,BP_GROIN)

/datum/sprite_accessory/marking/vr_fluffy_cuffs
	name = "Wrist Fluff"
	icon_state = "fluffy_cuffs"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_ARM,BP_R_ARM)

/datum/sprite_accessory/marking/vr_chubby_belly
	name = "Chubby Belly"
	icon_state = "chubby_belly"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST,BP_GROIN)

/datum/sprite_accessory/marking/vr_chubby_belly_s
	name = "Smooth Chubby Belly"
	icon_state = "chubby_belly_s"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST,BP_GROIN)

/datum/sprite_accessory/marking/vr_r_belly_fluff
	name = "Belly Fluff"
	icon_state = "belly_fluff"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/vr_r_chest_fluff
	name = "Chest Fluff"
	icon_state = "chest_fluff"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST)


/datum/sprite_accessory/marking/vr_shoulder_fluff
	name = "Shoulder Fluff"
	icon_state = "shoulder_markings"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_ARM,BP_R_ARM)

//CitRP stuff

/datum/sprite_accessory/marking/vr_c_beast_body
	name = "Cyber Body"
	icon_state = "c_beast_body"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM,BP_CHEST,BP_GROIN)

/datum/sprite_accessory/marking/vr_c_beast_plating
	name = "Cyber Plating (Use w/ Cyber Body)"
	icon_state = "c_beast_plating"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_LEG,BP_R_LEG,BP_L_ARM,BP_R_ARM)

/datum/sprite_accessory/marking/vr_c_beast_band
	name = "Cyber Band (Use w/ Cybertech head)"
	icon_state = "c_beast_band"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_c_beast_cheek_a
	name = "Cyber Beast Cheeks A (Use A, B and C)"
	icon_state = "c_beast_a"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_c_beast_cheek_b
	name = "Cyber Beast Cheeks B (Use A, B and C)"
	icon_state = "c_beast_b"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_c_beast_cheek_c
	name = "Cyber Beast Cheeks C (Use A, B and C)"
	icon_state = "c_beast_c"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_unathihood
	name = "Cobra hood (small)"
	icon_state = "unathihood"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_unathidoublehorns
	name = "Double Unathi Horns"
	icon_state = "unathidoublehorns"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_unathihorns
	name = "Unathi Horns"
	icon_state = "unathihorns"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_unathiramhorns
	name = "Unathi Ram Horns"
	icon_state = "unathiramhorns"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_unathishortspines
	name = "Unathi Short Spines"
	icon_state = "unathishortspines"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_unathilongspines
	name = "Unathi Long Spines"
	icon_state = "unathilongspines"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_unathishortfrills
	name = "Unathi Short Frills"
	icon_state = "unathishortfrills"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_unathilongfrills
	name = "Unathi Long Frills"
	icon_state = "unathilongfrills"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_thunderthighs
	name = "Boosted Thighs"
	icon_state = "thunderthighs"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_LEG,BP_R_LEG)

/datum/sprite_accessory/marking/vr_altevian_snout
	name = "Altevian Snout"
	icon_state = "altevian-snout"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_altevian_chin
	name = "Altevian Chin"
	icon_state = "altevian-chin"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_altevian_nose
	name = "Altevian Nose"
	icon_state = "altevian-nose"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_altevian_fangs
	name = "Altevian Fangs"
	icon_state = "altevian-fangs"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_altevian_incisors
	name = "Altevian Incisors"
	icon_state = "altevian-incisors"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_eldritch_markings
	name = "Eldritch Markings"
	icon_state = "perrinmarkings"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD,BP_L_ARM,BP_L_HAND,BP_R_ARM,BP_R_HAND,BP_L_LEG,BP_L_FOOT,BP_R_LEG,BP_R_FOOT)


/datum/sprite_accessory/marking/vr_unathi_blocky_head_eyes
	name = "Unathi alt head eyes (Blocky)"
	icon_state = "unathi_blocky_head_eyes"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_manedwolf1
	name = "Maned Wolf Primary Markings"
	icon_state = "manedwolf1"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD,BP_CHEST,BP_R_ARM,BP_L_ARM,BP_R_HAND,BP_L_HAND,BP_R_LEG,BP_L_LEG,BP_R_FOOT,BP_L_FOOT)

/datum/sprite_accessory/marking/vr_manedwolf2
	name = "Maned Wolf Secondary Markings"
	icon_state = "manedwolf2"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD,BP_CHEST,BP_GROIN)

/datum/sprite_accessory/marking/vr_head_paint_front
	name = "Head Paint Front"
	icon_state = "paintfront"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_head_paint_back
	name = "Head Paint"
	icon_state = "paint"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_knees_to_chest
	name = "knees to chest"
	icon_state = "knees_to_chest"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST,BP_GROIN,BP_L_LEG,BP_R_LEG)


/datum/sprite_accessory/marking/vr_zaprat_cheeks
	name = "Cheek Marks"
	icon_state = "zaprat_cheeks"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_secbirbfeathers
	name = "Secretary Bird Feathers"
	icon_state = "secbirbfeathers"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_zmaskanime
	name = "eye mask (anime eyes)"
	icon_state = "zmaskanime"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_birdpants
	name = "leg coverings (nev/rap)"
	icon_state = "birdpants"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_R_LEG, BP_L_LEG, BP_GROIN)

/datum/sprite_accessory/marking/vr_nevrean_long
	name = "Long Snout"
	icon_state = "nevrean_long"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_heterochromia_l
	name = "Heterochromia (left eye)"
	icon_state = "heterochromia_l"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_nevrean_beak //that's right, its bird rework time
	name = "nevrean beak"
	icon_state = "nevrean_beak"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_parrot_beak
	name = "parrot beak (nev)"
	icon_state = "parrot_beak"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_thin_beak //kiwis and hummingbirds
	name = "thin beak (nev)"
	icon_state = "thin_beak"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_finch_beak
	name = "finch beak (nev)"
	icon_state = "finch_beak"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_pelican_beak
	name = "pelican beak (nev)"
	icon_state = "pelican_beak"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_pelican_beak_pouch //recolor the pouch
	name = "pelican beak pouch (nev)"
	icon_state = "pelican_beak_pouch"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_toucan_beak
	name = "toucan beak (nev)"
	icon_state = "toucan_beak"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_toucan_beak_tip //recolor the tip
	name = "toucan beak tip (nev)"
	icon_state = "toucan_beak_tip"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_raptor_beak_small
	name = "bird of prey beak, small (nev)"
	icon_state = "raptor_beak_small"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_raptor_beak_large
	name = "bird of prey beak, large (nev)"
	icon_state = "raptor_beak_large"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_nev_heartface
	name = "heart face (nev)"
	icon_state = "heartface"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_nev_fullhead
	name = "full head recolor (nev)"
	icon_state = "full_head_nev"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_nev_tophead
	name = "top of the head recolor (nev)"
	icon_state = "top_head_nev"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_nev_cheeks //the face ones
	name = "bird face cheeks (nev)"
	icon_state = "cheeks_nev"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

// Dino stuff
/datum/sprite_accessory/marking/vr_dino_horn
	name = "dino horn"
	icon_state = "dino_horn"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_dino_plates
	name = "stegosaurus plates"
	icon_state = "stegoplates"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/vr_triceratops_beak
	name = "triceratops beak"
	icon_state = "triceratops_beak"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_triceratops_horn
	name = "triceratops horn"
	icon_state = "triceratops_horn"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/vr_backsail
	name = "backsail"
	icon_state = "backsail"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST)

//Replikant-specific markings

/datum/sprite_accessory/marking/replikant

/datum/sprite_accessory/marking/replikant/replika_r_thigh
	name = "Replikant Stripe - Right Thigh"
	icon_state = "replika"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_R_LEG)

/datum/sprite_accessory/marking/replikant/replika_r_knee
	name = "Replikant Stripe - Right Knee"
	icon_state = "replika"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_R_FOOT)

/datum/sprite_accessory/marking/replikant/replika_l_thigh
	name = "Replikant Stripe - Left Thigh"
	icon_state = "replika"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_LEG)

/datum/sprite_accessory/marking/replikant/replika_l_knee
	name = "Replikant Stripe - Left Knee"
	icon_state = "replika"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_FOOT)

/datum/sprite_accessory/marking/replikant/replika_panels_body
	name = "Replikant Paneling - SynthFlesh (body)"
	icon_state = "replika"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/replikant/replika_panels_groin
	name = "Replikant Paneling - SynthFlesh (groin)"
	icon_state = "replika"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_GROIN)
/*
//Digitigrade markings
/datum/sprite_accessory/marking/digi
	icon = 'icons/mob/human_races/markings_digi.dmi'
	digitigrade_acceptance = MARKING_DIGITIGRADE_ONLY

/datum/sprite_accessory/marking/digi/fullleft
	name = "Digitigrade Full Left Leg(Only works with digitigrade legs)"
	icon_state = "full"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_LEG,BP_L_FOOT)

/datum/sprite_accessory/marking/digi/fullright
	name = "Digitigrade Full Right Leg(Only works with digitigrade legs)"
	icon_state = "full"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_R_LEG,BP_R_FOOT)

/datum/sprite_accessory/marking/digi/longsockleft
	name = "Digitigrade Long Socks Left(Only works with digitigrade legs)"
	icon_state = "longsock"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_LEG,BP_L_FOOT)

/datum/sprite_accessory/marking/digi/longsockright
	name = "Digitigrade Long Socks Right(Only works with digitigrade legs)"
	icon_state = "longsock"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_R_LEG,BP_R_FOOT)

/datum/sprite_accessory/marking/digi/medsockleft
	name = "Digitigrade Medium Socks Left(Only works with digitigrade legs)"
	icon_state = "medsock"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_LEG,BP_L_FOOT)

/datum/sprite_accessory/marking/digi/medsockright
	name = "Digitigrade Medium Socks Right(Only works with digitigrade legs)"
	icon_state = "medsock"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_R_LEG,BP_R_FOOT)

/datum/sprite_accessory/marking/digi/shortsockleft
	name = "Digitigrade Short Socks Left(Only works with digitigrade legs)"
	icon_state = "shortsock"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_FOOT)

/datum/sprite_accessory/marking/digi/shortsockright
	name = "Digitigrade Short Socks Right(Only works with digitigrade legs)"
	icon_state = "shortsock"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_R_FOOT)

/datum/sprite_accessory/marking/digi/toesleft
	name = "Digitigrade Toes Left(Only works with digitigrade legs)"
	icon_state = "toes"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_FOOT)

/datum/sprite_accessory/marking/digi/toesright
	name = "Digitigrade Toes Right(Only works with digitigrade legs)"
	icon_state = "toes"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_R_FOOT)

/datum/sprite_accessory/marking/digi/stripesleft
	name = "Digitigrade Stripes Left(Only works with digitigrade legs)"
	icon_state = "stripes"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_LEG,BP_L_FOOT)

/datum/sprite_accessory/marking/digi/stripesright
	name = "Digitigrade Stripes Right(Only works with digitigrade legs)"
	icon_state = "stripes"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_R_LEG,BP_R_FOOT)

/datum/sprite_accessory/marking/digi/smallspotsleft
	name = "Digitigrade Small Spots Left(Only works with digitigrade legs)"
	icon_state = "smallspots"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_LEG,BP_L_FOOT)

/datum/sprite_accessory/marking/digi/smallspotsright
	name = "Digitigrade Small Spots Right(Only works with digitigrade legs)"
	icon_state = "smallspots"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_R_LEG,BP_R_FOOT)

/datum/sprite_accessory/marking/digi/bigspotsleft
	name = "Digitigrade Big Spots Left(Only works with digitigrade legs)"
	icon_state = "bigspots"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_LEG,BP_L_FOOT)

/datum/sprite_accessory/marking/digi/bigspotsright
	name = "Digitigrade Big Spots Right(Only works with digitigrade legs)"
	icon_state = "bigspots"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_R_LEG,BP_R_FOOT)

/datum/sprite_accessory/marking/digi/inner_thigh
	name = "inner thighs (digitigrade)"
	icon_state = "digi_inner"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_LEG,BP_R_LEG)

/datum/sprite_accessory/marking/digi/gradient
	name = "Digitigrade Gradient, Legs (Only works with digitigrade legs)"
	icon_state = "digigradient"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_LEG,BP_L_FOOT,BP_R_LEG,BP_R_FOOT)

/datum/sprite_accessory/marking/digi/hooves
	name = "Digitigrade Hooves (Only works with digitigrade legs)"
	icon_state = "deerhoof"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_FOOT,BP_R_FOOT)

/datum/sprite_accessory/marking/digi/fox
	name = "Digitigrade fox legs (Only works with digitigrade legs)"
	icon_state = "fox"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_LEG,BP_L_FOOT,BP_R_LEG,BP_R_FOOT)

/datum/sprite_accessory/marking/digi/tiger
	name = "Digitigrade tiger legs (Only works with digitigrade legs)"
	icon_state = "tiger"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_LEG,BP_L_FOOT,BP_R_LEG,BP_R_FOOT)

/datum/sprite_accessory/marking/digi/gloss
	name = "Digitigrade leg and foot gloss (Only works with digitigrade legs)"
	icon_state = "gloss"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_LEG,BP_L_FOOT,BP_R_LEG,BP_R_FOOT)

/datum/sprite_accessory/marking/digi/bonyplates
	name = "Digitigrade Bony Plates(Only works with digitigrade legs)"
	icon_state = "bonyplatesdigitigrade"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_LEG,BP_L_FOOT,BP_R_LEG,BP_R_FOOT)

//Big Leggies!
/datum/sprite_accessory/marking/bigleggy
	name = "Big Leggies - Legs"
	icon_state = "bigleggy"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_R_LEG, BP_L_LEG)
	digitigrade_acceptance = MARKING_DIGITIGRADE_ONLY
	hide_body_parts = list(BP_R_LEG, BP_L_LEG)
	digitigrade_icon = 'icons/mob/human_races/markings.dmi'

/datum/sprite_accessory/marking/bigleggy/stanced
	name = "Big Leggies - Legs (Stanced)"
	icon_state = "bigleggy_stanced"

/datum/sprite_accessory/marking/bigleggy/feet
	name = "Big Leggies - Feet"
	icon_state = "bigleggy_markings"
	body_parts = list(BP_R_FOOT, BP_L_FOOT)
	hide_body_parts = list(BP_R_FOOT, BP_L_FOOT)

/datum/sprite_accessory/marking/bigleggy/feet/stanced
	name = "Big Leggies - Feet (Stanced)"
	icon_state = "bigleggy_markings_stanced"

/datum/sprite_accessory/marking/bigleggy/feet/bird
	name = "Big Leggies - Feet (Bird)"
	icon_state = "bigleggy_m_bird"

/datum/sprite_accessory/marking/bigleggy/feet/bird/stanced
	name = "Big Leggies - Feet (Bird, Stanced)"
	icon_state = "bigleggy_m_bird_stanced"

//Big leggy end!
*/
/datum/sprite_accessory/marking/moth_eyes
	name = "Moth Eyes"
	icon_state = "motheyes"
	icon_blend_mode = ICON_ADD
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/thirdeye
	name = "Third Eye (low)"
	icon_state = "thirdeye"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/thirdeye_high
	name = "Third Eye (high)"
	icon_state = "thirdeye_h"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/animeeyeshuge
	name = "Anime Eyes Bulging" // UWUiiieeee~~~~
	icon_state = "animeeyeshuge"
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/anteater_muzzle
	name = "Anteater Muzzle"
	icon_state = "anteater_muzzle"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/qaavos_muzzle
	name = "Qaavos Head"
	icon_state = "qaavos_face"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/qaavos_eyes
	name = "Qaavos Eyes"
	icon_state = "qaavos_eyes"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/gatorsnout
	name = "Gator Snout"
	icon_state = "gator_snout"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/sharpsnout
	name = "Sharp Snout"
	icon_state = "sharpsnout"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/longsnout
	name = "Long, Sharp Snout"
	icon_state = "longsharpsnout"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/longersnout
	name = "Longer, Sharp Snout"
	icon_state = "longersharpsnout"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/longerthinsnout
	name = "Longer, Thin Snout"
	icon_state = "longerthinsnout"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/longthinsnout
	name = "Long, Thin Snout"
	icon_state = "longthinsnout"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/thinsnout
	name = "Thin Snout"
	icon_state = "thinsnout"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/snoutteeth
	name = "Snout Teeth"
	icon_state = "snoutteeth"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/longsnoutteeth
	name = "Long Snout Teeth"
	icon_state = "longsnoutteeth"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/longersnoutteeth
	name = "Longer Snout Teeth"
	icon_state = "longersnoutteeth"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/longerthinsnoutlower
	name = "Longer, Thin Snout(lower)"
	icon_state = "lowerlongerthinsnout"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/longthinsnoutlower
	name = "Long, Thin Snout(lower)"
	icon_state = "lowerlongthinsnout"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/thinsnoutlower
	name = "Thin Snout(lower)"
	icon_state = "lowerthinsnout"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/sharpsnoutlower
	name = "Sharp Snout(lower)"
	icon_state = "lowersharpsnout"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/longsnoutlower
	name = "Long, Sharp Snout(lower)"
	icon_state = "lowerlongsharpsnout"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/longersnoutlower
	name = "Longer, Sharp Snout(lower)"
	icon_state = "lowerlongersharpsnout"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)


/datum/sprite_accessory/marking/snouttop
	name = "Top of Snout"
	icon_state = "topofsnout"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/nosering
	name = "Snout Ring (Use with Sharp Snout)"
	icon_state = "nosering"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/snouthorn
	name = "Snout Horn (Use with Long, Thin Snout)"
	icon_state = "thinsnouthorn"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_HEAD)

/datum/sprite_accessory/marking/bigsoftbelly
	name = "Big Soft Belly"
	icon_state = "bigsoftbelly"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST,BP_GROIN)

/datum/sprite_accessory/marking/fluffruff
	name = "Fluffy Neck Ruff"
	icon_state = "fluffruff"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_CHEST)

/datum/sprite_accessory/marking/gauntlets
	name = "Clawed Gauntlets"
	icon_state = "gauntlets"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND)

/datum/sprite_accessory/marking/boneplates
	name = "Bony Leg Plates"
	icon_state = "bonyplatesplantigrade"
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_FOOT,BP_R_FOOT,BP_L_LEG,BP_R_LEG)

/datum/sprite_accessory/marking/boneplatesarms
	name = "Bony Arm Plates"
	icon_state = "bonyplateswrist"
	icon = 'icons/mob/human_races/markings.dmi'
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_ARM,BP_R_ARM,BP_L_HAND,BP_R_HAND)


/datum/sprite_accessory/marking/underarmpixel
	name = "Under Arms Pixels"
	icon_state = "underarmpixel"
	icon = 'icons/mob/human_races/markings.dmi'
	icon_blend_mode = ICON_MULTIPLY
	body_parts = list(BP_L_ARM,BP_R_ARM)

/datum/sprite_accessory/marking/scug_shelter
	name = "Catslug Belly Mark, Shelter"
	icon_state = "scug_shelter"
	body_parts = list(BP_GROIN)
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/marking/scug_gate
	name = "Catslug Belly Mark, Gate"
	icon_state = "scug_gate"
	body_parts = list(BP_GROIN)
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/marking/scug_door
	name = "Catslug Belly Mark, Door"
	icon_state = "scug_door"
	body_parts = list(BP_GROIN)
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/marking/moreeyes
	name = "More Eyes"
	icon_state = "moreeyes"
	body_parts = list(BP_HEAD)
	icon_blend_mode = ICON_MULTIPLY
