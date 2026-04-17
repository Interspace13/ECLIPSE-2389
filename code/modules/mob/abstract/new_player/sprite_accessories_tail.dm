/*
////////////////////////////
/  =--------------------=  /
/  == Tail Definitions ==  /
/  =--------------------=  /
////////////////////////////
*/
/datum/sprite_accessory/tail
	icon = 'icons/mob/sprite_accessories/tails.dmi'
	do_colouration = 0 //Set to 1 to enable coloration using the tail color.

	icon_blend_mode = ICON_ADD // Only appliciable if do_coloration = 1
	em_block = TRUE
	var/extra_overlay // Icon state of an additional overlay to blend in.
	var/extra_overlay2 //Tertiary.
	var/show_species_tail = 0 // If false, do not render species' tail.
	var/clothing_can_hide = 1 // If true, clothing with HIDETAIL hides it
	var/ani_state // State when wagging/animated
	var/extra_overlay_w // Wagging state for extra overlay
	var/extra_overlay2_w // Tertiary wagging.
	var/icon/clip_mask_icon = null //Icon file used for clip mask.
	var/clip_mask_state = null //Icon state to generate clip mask. Clip mask is used to 'clip' off the lower part of clothing such as jumpsuits & full suits.
	var/icon/clip_mask = null //Instantiated clip mask of given icon and state
	var/offset_x = 0
	var/offset_y = 0
	var/mob_offset_x = 0
	var/mob_offset_y = 0

/datum/sprite_accessory/tail/New()
	. = ..()
	if(clip_mask_state)
		clip_mask = icon(icon = (clip_mask_icon ? clip_mask_icon : icon), icon_state = clip_mask_state)

// Everyone tails

/datum/sprite_accessory/tail/alien_slug
	name = "Alien slug tail"
	icon_state = "alien_slug"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "alien_slug_markings"

/datum/sprite_accessory/tail/invisible
	name = "hide species-sprite tail"
	icon = null
	icon_state = null

/datum/sprite_accessory/tail/squirrel_orange
	name = "squirrel, orange"
	desc = ""
	icon_state = "squirrel-orange"

/datum/sprite_accessory/tail/squirrel_red
	name = "squirrel, red"
	desc = ""
	icon_state = "squirrel-red"

/datum/sprite_accessory/tail/squirrel
	name = "squirrel, colorable"
	desc = ""
	icon_state = "squirrel"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/kitty
	name = "kitty, colorable, downwards"
	desc = ""
	icon_state = "kittydown"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/kittyup
	name = "kitty, colorable, upwards"
	desc = ""
	icon_state = "kittyup"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/tiger_white
	name = "tiger, colorable"
	desc = ""
	icon_state = "tiger"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "tigerinnerwhite"

/datum/sprite_accessory/tail/stripey
	name = "stripey taj, colorable"
	desc = ""
	icon_state = "stripeytail"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "stripeytail_mark"

/datum/sprite_accessory/tail/stripeytail_brown
	name = "stripey taj, brown"
	desc = ""
	icon_state = "stripeytail-brown"

/datum/sprite_accessory/tail/chameleon
	name = "Chameleon, colorable"
	desc = ""
	icon_state = "chameleon"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/bunny
	name = "bunny, colorable"
	desc = ""
	icon_state = "bunny"
	do_colouration = 1

/datum/sprite_accessory/tail/rabbit
	name = "rabbit, colourable (vwag)"
	desc = ""
	icon_state = "rabbit"
	do_colouration = TRUE
	icon_blend_mode = ICON_MULTIPLY
	ani_state = "rabbit_w"

/datum/sprite_accessory/tail/rabbitalt
	name = "rabbit, dual color (vwag)"
	desc = ""
	icon_state = "rabbitalt"
	extra_overlay = "rabbitalt-tips"
	do_colouration = TRUE
	icon_blend_mode = ICON_MULTIPLY
	ani_state = "rabbitalt_w"
	extra_overlay_w = "rabbitalt-tips_w"

/datum/sprite_accessory/tail/bear_brown
	name = "bear, brown"
	desc = ""
	icon_state = "bear-brown"

/datum/sprite_accessory/tail/bear
	name = "bear, colorable"
	desc = ""
	icon_state = "bear"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/dragon
	name = "dragon, colorable"
	desc = ""
	icon_state = "dragon"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/wolf_grey
	name = "wolf, grey"
	desc = ""
	icon_state = "wolf-grey"

/datum/sprite_accessory/tail/wolf_green
	name = "wolf, green"
	desc = ""
	icon_state = "wolf-green"

/datum/sprite_accessory/tail/wisewolf
	name = "wolf, wise"
	desc = ""
	icon_state = "wolf-wise"

/datum/sprite_accessory/tail/blackwolf
	name = "wolf, black"
	desc = ""
	icon_state = "wolf"

/datum/sprite_accessory/tail/wolf
	name = "wolf, colorable"
	desc = ""
	icon_state = "wolf"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "wolfinner"

/datum/sprite_accessory/tail/mouse_pink
	name = "mouse, pink"
	desc = ""
	icon_state = "mouse-pink"

/datum/sprite_accessory/tail/mouse
	name = "mouse, colorable"
	desc = ""
	icon_state = "mouse"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/horse
	name = "horse tail, colorable"
	desc = ""
	icon_state = "horse"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/cow
	name = "cow tail, colorable"
	desc = ""
	icon_state = "cow"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/fantail
	name = "avian fantail, colorable"
	desc = ""
	icon_state = "fantail"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/wagtail
	name = "avian wagtail, colorable"
	desc = ""
	icon_state = "wagtail"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/nevreandc
	name = "nevrean tail, dual-color"
	desc = ""
	icon_state = "nevreantail_dc"
	extra_overlay = "nevreantail_dc_tail"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/nevreanwagdc
	name = "nevrean wagtail, dual-color"
	desc = ""
	icon_state = "wagtail"
	extra_overlay = "wagtail_dc_tail"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/nevreanwagdc_alt
	name = "nevrean wagtail, marked, dual-color"
	desc = ""
	icon_state = "wagtail2_dc"
	extra_overlay = "wagtail2_dc_mark"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/crossfox
	name = "cross fox"
	desc = ""
	icon_state = "crossfox"

/datum/sprite_accessory/tail/beethorax
	name = "bee thorax"
	desc = ""
	icon_state = "beethorax"

/datum/sprite_accessory/tail/spade_color
	name = "spade-tail (colorable)"
	desc = ""
	icon_state = "spadetail-black"
	do_colouration = 1

/datum/sprite_accessory/tail/snag
	name = "xenomorph tail 1"
	desc = ""
	icon_state = "snag"

/datum/sprite_accessory/tail/xenotail
	name = "xenomorph tail 2"
	desc = ""
	icon_state = "xenotail"

/datum/sprite_accessory/tail/eboop
	name = "EGN mech tail (dual color)"
	desc = ""
	icon_state = "eboop"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "eboop_mark"

/datum/sprite_accessory/tail/ketrai_wag
	name = "fennix tail (vwag)"
	desc = ""
	icon_state = "ketraitail"
	ani_state = "ketraitail_w"

/datum/sprite_accessory/tail/ketrainew_wag
	name = "new fennix tail (vwag)"
	desc = ""
	icon_state = "ketraitailnew"
	ani_state = "ketraitailnew_w"

/datum/sprite_accessory/tail/redpanda
	name = "red panda"
	desc = ""
	icon_state = "redpanda"

/datum/sprite_accessory/tail/ringtail
	name = "ringtail, colorable"
	desc = ""
	icon_state = "ringtail"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "ringtail_mark"

/datum/sprite_accessory/tail/raccoon
	name = "raccoon tail (vwag)"
	desc = ""
	icon_state = "raccoon"
	ani_state = "raccoon_w"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "raccoon-stripes"
	extra_overlay_w = "raccoon-stripes_w"

/datum/sprite_accessory/tail/ringtailwag
	name = "ringtail (vwag)"
	desc = ""
	icon_state = "wah"
	ani_state = "wah_w"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "wah-stripes"
	extra_overlay_w = "wah-stripes_w"

/datum/sprite_accessory/tail/tailmaw
	name = "tailmaw, colorable"
	desc = ""
	icon_state = "tailmaw"
	icon_blend_mode = ICON_MULTIPLY
	do_colouration = 1

/datum/sprite_accessory/tail/curltail
	name = "curltail (vwag)"
	desc = ""
	icon_state = "curltail"
	ani_state = "curltail_w"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "curltail_mark"
	extra_overlay_w = "curltail_mark_w"

/datum/sprite_accessory/tail/shorttail
	name = "shorttail (vwag)"
	desc = ""
	icon_state = "straighttail"
	ani_state = "straighttail_w"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/sneptail
	name = "Snep/Furry Tail (vwag) (old)"
	desc = ""
	icon_state = "sneptail"
	ani_state = "sneptail_w"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "sneptail_mark"
	extra_overlay_w = "sneptail_mark_w"

/datum/sprite_accessory/tail/sneptail_new //From Skyrat
	name = "Snep/Furry Tail (vwag) (new)"
	desc = ""
	icon_state = "sneptail_new"
	ani_state = "sneptail_new_w"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "sneptail_new_mark"
	extra_overlay_w = "sneptail_new_mark_w"

/datum/sprite_accessory/tail/tiger_new
	name = "tiger tail (vwag)"
	desc = ""
	icon_state = "tigertail"
	ani_state = "tigertail_w"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "tigertail_mark"
	extra_overlay_w = "tigertail_mark_w"

/datum/sprite_accessory/tail/tigeralt
	name = "tiger tail, alt (vwag)"
	desc = ""
	icon_state = "tigeralt"
	extra_overlay = "tigeralt-tips"
	extra_overlay2 = "tigeralt-tips2"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	ani_state = "tigeralt_w"
	extra_overlay_w = "tigeralt-tips_w"
	extra_overlay2_w = "tigeralt-tips2_w"

/datum/sprite_accessory/tail/twotiger
	name = "tiger tail, double (vwag)"
	desc = ""
	icon_state = "twotiger"
	extra_overlay = "twotiger-tips"
	extra_overlay2 = "twotiger-tips2"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	ani_state = "twotiger_w"
	extra_overlay_w = "twotiger-tips_w"
	extra_overlay2_w = "twotiger-tips2_w"

/datum/sprite_accessory/tail/twocat
	name = "cat tail, double (vwag)"
	desc = ""
	icon_state = "twocat"
	ani_state = "twocat_w"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/threecat
	name = "cat tail, triple (vwag)"
	desc = ""
	icon_state = "threecat"
	ani_state = "threecat_w"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/vulp_new
	name = "new vulp tail (vwag)"
	desc = ""
	icon_state = "vulptail"
	ani_state = "vulptail_w"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "vulptail_mark"
	extra_overlay_w = "vulptail_mark_w"

/datum/sprite_accessory/tail/otietail
	name = "otie tail (vwag)"
	desc = ""
	icon_state = "otie"
	ani_state = "otie_w"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/newtailmaw
	name = "new tailmaw (vwag)"
	desc = ""
	icon_state = "newtailmaw"
	ani_state = "newtailmaw_w"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/ztail
	name = "jagged flufftail"
	desc = ""
	icon_state = "ztail"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/snaketail
	name = "snake tail, colorable"
	desc = ""
	icon_state = "snaketail"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/bigsnaketail
	name = "large snake tail (vwag)"
	desc = ""
	icon_state = "bigsnaketail"
	do_colouration = TRUE
	icon_blend_mode = ICON_MULTIPLY
	ani_state = "bigsnaketail_w"

/datum/sprite_accessory/tail/bigsnaketailstripes
	name = "large snake tail, striped (vwag)"
	desc = ""
	icon_state = "bigsnaketailstripes"
	extra_overlay = "bigsnaketailstripes-tips"
	do_colouration = TRUE
	icon_blend_mode = ICON_MULTIPLY
	ani_state = "bigsnaketailstripes_w"
	extra_overlay_w = "bigsnaketailstripes-tips_w"

/datum/sprite_accessory/tail/bigsnaketailstripes_alt
	name = "large snake tail, striped, alt (vwag)"
	desc = ""
	icon_state = "bigsnaketailstripesalt"
	extra_overlay = "bigsnaketailstripesalt-tips"
	do_colouration = TRUE
	icon_blend_mode = ICON_MULTIPLY
	ani_state = "bigsnaketailstripesalt_w"
	extra_overlay_w = "bigsnaketailstripesalt-tips_w"

/datum/sprite_accessory/tail/bigsnaketaildual
	name = "large snake tail, dual color (vwag)"
	desc = ""
	icon_state = "bigsnaketaildual"
	extra_overlay = "bigsnaketaildual-tips"
	do_colouration = TRUE
	icon_blend_mode = ICON_MULTIPLY
	ani_state = "bigsnaketaildual_w"
	extra_overlay_w = "bigsnaketaildual-tips_w"

/datum/sprite_accessory/tail/bigsnaketailunder
	name = "large snake tail, under (vwag)"
	desc = ""
	icon_state = "bigsnaketailunder"
	extra_overlay = "bigsnaketailunder-tips"
	do_colouration = TRUE
	icon_blend_mode = ICON_MULTIPLY
	ani_state = "bigsnaketailunder_w"
	extra_overlay_w = "bigsnaketailunder-tips_w"

/datum/sprite_accessory/tail/vulpan_alt
	name = "vulpkanin alt style, colorable"
	desc = ""
	icon_state = "vulptail_alt"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/sergaltaildc
	name = "sergal, dual-color"
	desc = ""
	icon_state = "sergal"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "sergal_mark"

/datum/sprite_accessory/tail/skunktail
	name = "skunk, dual-color"
	desc = ""
	icon_state = "skunktail"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "skunktail_mark"

/datum/sprite_accessory/tail/deertail
	name = "deer, dual-color"
	desc = ""
	icon_state = "deertail"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "deertail_mark"

/datum/sprite_accessory/tail/deeralt
	name = "deer alt, colorable (vwag)"
	desc = ""
	icon_state = "deeralt"
	ani_state = "deeralt_w"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/tesh_feathered
	name = "Teshari tail"
	desc = ""
	icon_state = "teshtail_s"
	do_colouration = 1
	extra_overlay = "teshtail_feathers_s"
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/teshari_fluffytail
	name = "Teshari alternative, colorable"
	desc = ""
	icon_state = "teshari_fluffytail"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "teshari_fluffytail_mark"

/datum/sprite_accessory/tail/tesh_pattern_male
	name = "Teshari male tail pattern"
	desc = ""
	icon_state = "teshtail_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "teshpattern_male_tail"

/datum/sprite_accessory/tail/tesh_pattern_male_alt
	name = "Teshari male tail alt. pattern"
	desc = ""
	icon_state = "teshtail_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "teshpattern_male_alt"

/datum/sprite_accessory/tail/tesh_pattern_fem
	name = "Teshari female tail pattern"
	desc = ""
	icon_state = "teshtail_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "teshpattern_fem_tail"

/datum/sprite_accessory/tail/tesh_pattern_fem_alt
	name = "Teshari fem tail alt. pattern"
	desc = ""
	icon_state = "teshtail_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "teshpattern_fem_alt"

/datum/sprite_accessory/tail/nightstalker
	name = "Nightstalker, colorable"
	desc = ""
	icon_state = "nightstalker"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY


//Taurs moved to a separate file due to extra code around them

//Buggo Abdomens!

/datum/sprite_accessory/tail/buggo
	name = "Bug abdomen, colorable"
	desc = ""
	icon_state = "buggo_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/buggobee
	name = "Bug abdomen, bee top, dual-colorable"
	desc = ""
	icon_state = "buggo_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggobee_markings"

/datum/sprite_accessory/tail/buggobeefull
	name = "Bug abdomen, bee full, dual-colorable"
	desc = ""
	icon_state = "buggo_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggobeefull_markings"

/datum/sprite_accessory/tail/buggounder
	name = "Bug abdomen, underside, dual-colorable"
	desc = ""
	icon_state = "buggo_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggounder_markings"

/datum/sprite_accessory/tail/buggofirefly
	name = "Bug abdomen, firefly, dual-colorable"
	desc = ""
	icon_state = "buggo_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggofirefly_markings"

/datum/sprite_accessory/tail/buggofat
	name = "Fat bug abdomen, colorable"
	desc = ""
	icon_state = "buggofat_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/buggofatbee
	name = "Fat bug abdomen, bee top, dual-colorable"
	desc = ""
	icon_state = "buggofat_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggofatbee_markings"

/datum/sprite_accessory/tail/buggofatbeefull
	name = "Fat bug abdomen, bee full, dual-colorable"
	desc = ""
	icon_state = "buggofat_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggofatbeefull_markings"

/datum/sprite_accessory/tail/buggofatunder
	name = "Fat bug abdomen, underside, dual-colorable"
	desc = ""
	icon_state = "buggofat_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggofatunder_markings"

/datum/sprite_accessory/tail/buggofatfirefly
	name = "Fat bug abdomen, firefly, dual-colorable"
	desc = ""
	icon_state = "buggofat_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggofatfirefly_markings"

/datum/sprite_accessory/tail/buggowag
	name = "Bug abdomen, colorable, vwag change"
	desc = ""
	icon_state = "buggo_s"
	ani_state = "buggofat_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/buggobeewag
	name = "Bug abdomen, bee top, dual color, vwag"
	desc = ""
	icon_state = "buggo_s"
	ani_state = "buggofat_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggobee_markings"
	extra_overlay_w = "buggofatbee_markings"

/datum/sprite_accessory/tail/buggobeefullwag
	name = "Bug abdomen, bee full, dual color, vwag"
	desc = ""
	icon_state = "buggo_s"
	ani_state = "buggofat_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggobeefull_markings"
	extra_overlay_w = "buggofatbeefull_markings"

/datum/sprite_accessory/tail/buggounderwag
	name = "Bug abdomen, underside, dual color, vwag"
	desc = ""
	icon_state = "buggo_s"
	ani_state = "buggofat_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggounder_markings"
	extra_overlay_w = "buggofatunder_markings"

/datum/sprite_accessory/tail/buggofireflywag
	name = "Bug abdomen, firefly, dual color, vwag"
	desc = ""
	icon_state = "buggo_s"
	ani_state = "buggofat_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggofirefly_markings"
	extra_overlay_w = "buggofatfirefly_markings"

//Vass buggo variants!

/datum/sprite_accessory/tail/buggovass
	name = "Bug abdomen, vass, colorable"
	desc = ""
	icon_state = "buggo_vass_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/buggovassbee
	name = "Bug abdomen, bee top, dc, vass"
	desc = ""
	icon_state = "buggo_vass_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggobee_vass_markings"

/datum/sprite_accessory/tail/buggovassbeefull
	name = "Bug abdomen, bee full, dc, vass"
	desc = ""
	icon_state = "buggo_vass_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggobeefull_vass_markings"

/datum/sprite_accessory/tail/buggovassunder
	name = "Bug abdomen, underside, dc, vass"
	desc = ""
	icon_state = "buggo_vass_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggounder_vass_markings"

/datum/sprite_accessory/tail/buggovassfirefly
	name = "Bug abdomen, firefly, dc, vass"
	desc = ""
	icon_state = "buggo_vass_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggofirefly_vass_markings"

/datum/sprite_accessory/tail/buggovassfat
	name = "Fat bug abdomen, vass, colorable"
	desc = ""
	icon_state = "buggofat_vass_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/buggovassfatbee
	name = "Fat bug abdomen, bee top, dc, vass"
	desc = ""
	icon_state = "buggofat_vass_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggofatbee_vass_markings"

/datum/sprite_accessory/tail/buggovassfatbeefull
	name = "Fat bug abdomen, bee full, dc, vass"
	desc = ""
	icon_state = "buggofat_vass_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggofatbeefull_vass_markings"

/datum/sprite_accessory/tail/buggovassfatunder
	name = "Fat bug abdomen, underside, dc, vass"
	desc = ""
	icon_state = "buggofat_vass_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggofatunder_vass_markings"

/datum/sprite_accessory/tail/buggovassfatfirefly
	name = "Fat bug abdomen, firefly, dc, vass"
	desc = ""
	icon_state = "buggofat_vass_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggofatfirefly_vass_markings"

/datum/sprite_accessory/tail/buggovasswag
	name = "Bug abdomen, vass, colorable, vwag change"
	desc = ""
	icon_state = "buggo_vass_s"
	ani_state = "buggofat_vass_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/buggovassbeewag
	name = "Bug abdomen, bee top, dc, vass, vwag"
	desc = ""
	icon_state = "buggo_vass_s"
	ani_state = "buggofat_vass_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggobee_vass_markings"
	extra_overlay_w = "buggofatbee_vass_markings"

/datum/sprite_accessory/tail/buggovassbeefullwag
	name = "Bug abdomen, bee full, dc, vass, vwag"
	desc = ""
	icon_state = "buggo_vass_s"
	ani_state = "buggofat_vass_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggobeefull_vass_markings"
	extra_overlay_w = "buggofatbeefull_vass_markings"

/datum/sprite_accessory/tail/buggovassunderwag
	name = "Bug abdomen, underside, dc, vass, vwag"
	desc = ""
	icon_state = "buggo_vass_s"
	ani_state = "buggofat_vass_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggounder_vass_markings"
	extra_overlay_w = "buggofatunder_vass_markings"

/datum/sprite_accessory/tail/buggovassfireflywag
	name = "Bug abdomen, firefly, dc, vass, vwag"
	desc = ""
	icon_state = "buggo_vass_s"
	ani_state = "buggofat_vass_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "buggofirefly_vass_markings"
	extra_overlay_w = "buggofatfirefly_vass_markings"

/datum/sprite_accessory/tail/tail_smooth
	name = "Smooth Lizard Tail, colorable"
	desc = ""
	icon_state = "tail_smooth"
	ani_state = "tail_smooth_w"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/tail_smooth_dual
	name = "Smooth Lizard Tail, dual color"
	desc = ""
	icon_state = "tail_smooth"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "tail_smooth_markings"

/datum/sprite_accessory/tail/fennec_tail
	name = "Fennec tail"
	desc = ""
	icon_state = "fennec_tail_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/fox_tail
	name = "Fox tail, colorable"
	desc = ""
	icon_state = "fox_tail_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/fox_tail_plain
	name = "Fox tail, colorable, plain"
	desc = ""
	icon_state = "fox_tail_plain_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/foxtail
	name = "Fox tail, colourable (vwag)"
	desc = ""
	icon_state = "foxtail"
	extra_overlay = "foxtail-tips"
	do_colouration = TRUE
	icon_blend_mode = ICON_MULTIPLY
	ani_state = "foxtail_w"
	extra_overlay_w = "foxtail-tips_w"

/datum/sprite_accessory/tail/doublekitsune
	name = "Kitsune 2 tails, colorable"
	desc = ""
	icon_state = "doublekitsune"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/doublekitsunealt
	name = "Kitsune 2 tails, colorable, alt"
	desc = ""
	icon_state = "doublekitsunealt"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "doublekitsunealt-tips"

/datum/sprite_accessory/tail/triplekitsune_colorable
	name = "Kitsune 3 tails, colorable"
	desc = ""
	icon_state = "triplekitsune"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "triplekitsune_tips"

/datum/sprite_accessory/tail/sevenkitsune_colorable
	name = "Kitsune 7 tails, colorable"
	desc = ""
	icon_state = "sevenkitsune"
	extra_overlay = "sevenkitsune-tips"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/ninekitsune_colorable
	name = "Kitsune 9 tails, colorable"
	desc = ""
	icon_state = "ninekitsune"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "ninekitsune-tips"

/datum/sprite_accessory/tail/hideableninetails
	name = "Kitsune 9-in-1 tail, colourable (vwag)"
	desc = ""
	icon_state = "ninekitsune"
	extra_overlay = "ninekitsune-tips"
	do_colouration = TRUE
	icon_blend_mode = ICON_MULTIPLY
	ani_state = "foxtail_w"
	extra_overlay_w = "foxtail-tips_w"

/datum/sprite_accessory/tail/shadekin_short
	name = "Shadekin Short Tail, colorable"
	desc = ""
	icon_state = "shadekin-short"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	//species_allowed = list(SPECIES_SHADEKIN, SPECIES_SHADEKIN_CREW)

/datum/sprite_accessory/tail/wartacosushi_tail //brightened +20RGB from matching roboparts
	name = "Ward-Takahashi Tail"
	desc = ""
	icon_state = "wardtakahashi_vulp"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/wartacosushi_tail_dc
	name = "Ward-Takahashi Tail, dual-color"
	desc = ""
	icon_state = "wardtakahashi_vulp_dc"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "wardtakahashi_vulp_dc_mark"

/datum/sprite_accessory/tail/zorgoia
	name = "Zorgoia tail, dual-color"
	desc = ""
	icon = 'icons/mob/sprite_accessories/tails.dmi'
	icon_state = "zorgoia"
	extra_overlay = "zorgoia_fluff"
	extra_overlay2 = "zorgoia_fluff_top"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY



/datum/sprite_accessory/tail/Easterntail
	name = "Eastern Dragon (Animated)"
	desc = ""
	icon_state = "Easterntail"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "EasterntailColorTip"
	ani_state = "Easterntail_w"
	extra_overlay_w = "EasterntailColorTip_w"

/datum/sprite_accessory/tail/synthtail_static
	name = "Synthetic lizard tail"
	desc = ""
	icon_state = "synthtail"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/synthtail_vwag
	name = "Synthetic lizard tail (vwag)"
	desc = ""
	icon_state = "synthtail"
	ani_state = "synthtail_w"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/Plugtail
	name = "Synthetic plug tail"
	desc = ""
	icon_state = "Plugtail"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "PlugtailMarking"
	extra_overlay2 = "PlugtailMarking2"

/datum/sprite_accessory/tail/Segmentedtail
	name = "Segmented tail, animated"
	desc = ""
	icon_state = "Segmentedtail"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "Segmentedtailmarking"
	ani_state = "Segmentedtail_w"
	extra_overlay_w = "Segmentedtailmarking_w"

/datum/sprite_accessory/tail/Segmentedlights
	name = "Segmented tail, animated synth"
	desc = ""
	icon_state = "Segmentedtail"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "Segmentedlights"
	ani_state = "Segmentedtail_w"
	extra_overlay_w = "Segmentedlights_w"

/datum/sprite_accessory/tail/lizard_tail_smooth
	name = "Lizard Tail (Smooth)"
	desc = ""
	icon_state = "lizard_tail_smooth"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/lizard_tail_dark_tiger
	name = "Lizard Tail (Dark Tiger)"
	desc = ""
	icon_state = "lizard_tail_dark_tiger"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/lizard_tail_light_tiger
	name = "Lizard Tail (Light Tiger)"
	desc = ""
	icon_state = "lizard_tail_light_tiger"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/lizard_tail_spiked
	name = "Lizard Tail (Spiked)"
	desc = ""
	icon_state = "lizard_tail_spiked"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/xenotail_fullcolour
	name = "xenomorph tail (fully colourable)"
	desc = ""
	icon_state = "xenotail_fullcolour"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/xenotailalt_fullcolour
	name = "xenomorph tail alt. (fully colourable)"
	desc = ""
	icon_state = "xenotailalt_fullcolour"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/shark_finless
	name = "shark tail, finless (colorable)"
	desc = ""
	icon_state = "sharktail_finless"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/tentacle
	name = "Tentacle, colorable (vwag)"
	desc = ""
	icon_state = "tentacle"
	ani_state = "tentacle_w"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/teshbeethorax
	name = "Teshari bee thorax"
	desc = ""
	icon_state = "beethorax_tesh"

/datum/sprite_accessory/tail/teshbuggo
	name = "Teshari bug abdomen, colorable"
	desc = ""
	icon_state = "teshbug_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/teshbuggobee
	name = "Teshari bug abdomen, bee top, dual-colorable"
	desc = ""
	icon_state = "teshbug_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "teshbee_markings"

/datum/sprite_accessory/tail/teshbeefull
	name = "Teshari bug abdomen, bee full, dual-colorable"
	desc = ""
	icon_state = "teshbug_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "teshbeefull_markings"

/datum/sprite_accessory/tail/teshbuggounder
	name = "Teshari bug abdomen, underside, dual-colorable"
	desc = ""
	icon_state = "teshbug_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "teshunder_markings"

/datum/sprite_accessory/tail/teshbuggofirefly
	name = "Teshari bug abdomen, firefly, dual-colorable"
	desc = ""
	icon_state = "teshbug_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "teshfirefly_markings"

/datum/sprite_accessory/tail/fatteshbuggo
	name = "Teshari fat bug abdomen, colorable"
	desc = ""
	icon_state = "teshbugfat_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/fatteshbuggobee
	name = "Teshari fat bug abdomen, bee top, dual-colorable"
	desc = ""
	icon_state = "teshbugfat_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "teshfatbee_markings"

/datum/sprite_accessory/tail/fatteshbeefull
	name = "Teshari fat bug abdomen, bee full, dual-colorable"
	desc = ""
	icon_state = "teshbugfat_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "teshfatbeefull_markings"

/datum/sprite_accessory/tail/fatteshbuggounder
	name = "Teshari fat bug abdomen, underside, dual-colorable"
	desc = ""
	icon_state = "teshbugfat_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "teshfatunder_markings"

/datum/sprite_accessory/tail/fatteshbuggofirefly
	name = "Teshari fat bug abdomen, firefly, dual-colorable"
	desc = ""
	icon_state = "teshbugfat_s"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "teshfatfirefly_markings"

/datum/sprite_accessory/tail/blade_like_tail
	name = "Blade-like Tail"
	icon_state = "blade-like-tail"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/sectdrone_tail
	name = "Sect Drone Tail (To use with bodytype-marking)"
	icon_state = "sectdrone_tail"
	extra_overlay = "sectdrone_tail_mark"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/turkey //Would have been a really good thing for Thanksgiving probably but I'm not going to wait that long.
	name = "turkey"
	desc = ""
	icon_state = "turkey"

/datum/sprite_accessory/tail/shark_markings
	name = "akula tail, colorable, tail and fins"
	desc = ""
	icon_state = "sharktail"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "sharktail_markings"

/datum/sprite_accessory/tail/shark_stripes
	name = "akula tail, colorable, stripe"
	desc = ""
	icon_state = "sharktail"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "sharktail_stripemarkings"

/datum/sprite_accessory/tail/shark_tips
	name = "akula tail, colorable, tips"
	desc = ""
	icon_state = "sharktail"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "sharktail_tipmarkings"

/datum/sprite_accessory/tail/narrow_tail
	name = "feathered narrow tail, colorable"
	desc = ""
	icon_state = "narrowtail"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/narrow_tail2
	name = "feathered narrow tail, 2 colors"
	desc = ""
	icon_state = "narrowtail_2color"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "narrowtail_2color-1"

/datum/sprite_accessory/tail/demi_tesh_feathered
	name = "Demi-Teshari tail"
	desc = ""
	icon_state = "demi-tesh-kit-tail"
	do_colouration = 1
	extra_overlay = "demi-tesh-kit-tail_floof"
	icon_blend_mode = ICON_MULTIPLY

// Dino Tails

/datum/sprite_accessory/tail/clubtail
	name = "dino clubtail, colorable"
	desc = ""
	icon_state = "clubtail"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "clubtail-1"

/datum/sprite_accessory/tail/spiketail
	name = "dino spiketail, colorable"
	desc = ""
	icon_state = "spiketail"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "spiketail-1"

/datum/sprite_accessory/tail/kururak
	name = "kururak tail"
	desc = ""
	icon_state = "kururak"

/datum/sprite_accessory/tail/small_bugbum
	name = "Bug Abdomen, Alt, Small (Dual-Color)"
	icon_state = "smallbug1"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "smallbug2"

/datum/sprite_accessory/tail/mid_bugbum
	name = "Bug Abdomen, Alt, Medium (Dual-Color)"
	icon_state = "midbug1"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "midbug2"

/datum/sprite_accessory/tail/big_bugbum
	name = "Bug Abdomen, Alt, Big (Dual-Color)"
	icon_state = "bigbug1"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "bigbug2"

/datum/sprite_accessory/tail/succubustail
	name = "Succubus Tail"
	icon_state = "Succubustail"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/snaketail_stripes
	name = "snake tail with stripes, dual-color"
	desc = ""
	icon_state = "snaketail"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "snaketail_stripes"

/datum/sprite_accessory/tail/leopard
	name = "Leopard tail, dual-color (vwag)"
	icon_state = "leopard"
	ani_state = "leopard_w"
	extra_overlay = "leopard_spots"
	extra_overlay_w = "leopard_spots_w"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/vale_tail
	name = "Vale Tail, dual color (vwag)"
	desc = ""
	icon_state = "valetail"
	ani_state = "valetail_w"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "valetail_mark"
	extra_overlay_w = "valetail_mark_w"

/datum/sprite_accessory/tail/orca_f
	name = "Orca tail (Female)"
	icon_state = "orca_tail_f"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "orca_tail_markings"

/datum/sprite_accessory/tail/anthrovirus_tail
	name = "Anthro Virus Tail"
	icon_state = "anthrovirustail_mark"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "anthrovirustail"

/datum/sprite_accessory/tail/tyranid_tail
	name = "Tyranid"
	icon_state = "tyranid"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/bigsnaketeshari
	name = "Large snake tail, Teshari"
	icon_state = "snaketailteshari"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/featheredraptor
	name = "feathered Raptor"
	icon_state = "feathered_raptor"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/featheredraptor/twotone
	name = "feathered Raptor, dual colorable"
	extra_overlay = "feather_raptor-overlay"

/datum/sprite_accessory/tail/wolf_tail
	name = "Wolf Tail"
	desc = ""
	icon_state = "wolf_tail"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/vulpkanin_alt_color
	name = "Vulpkanin alt"
	desc = ""
	icon_state = "vulpkanin_alt_color"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "vulpkanin_alt_color_tips"
	ani_state = "vulpkanin_alt_color_w"
	extra_overlay_w = "vulpkanin_alt_color_tips_w"

/datum/sprite_accessory/tail/raccoon_tail
	name = "Raccoon gray tail"
	desc = ""
	icon_state = "raccoon_tail"
	do_colouration = 0
	icon_blend_mode = ICON_MULTIPLY

/datum/sprite_accessory/tail/striped_tail
	name = "Striped tail, colorable"
	desc = ""
	icon_state = "stripedtail_colorable"
	do_colouration = 1
	icon_blend_mode = ICON_MULTIPLY
	extra_overlay = "stripedtail_colorable_w"
