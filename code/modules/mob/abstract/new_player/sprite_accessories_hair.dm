/*
////////////////////////////
/  =--------------------=  /
/  == Hair Definitions ==  /
/  =--------------------=  /
////////////////////////////
*/

/datum/sprite_accessory/hair
	icon = 'icons/mob/human_face/hair.dmi'	  // default icon for all hairs
	var/length = 1
	///Should this hairstyle be kept on a skeleton?
	var/keep_as_skeleton = FALSE

/datum/sprite_accessory/hair/bald
	name = "Bald"   // try to capitalize the names please~
	icon_state = "bald" // you do not need to define _s or _l sub-states, game automatically does this for you
	species_allowed = list(/datum/species/human,/datum/species/human/offworlder,/datum/species/machine/shell,/datum/species/machine/shell/rogue,/datum/species/zombie,/datum/species/unathi,/datum/species/zombie/unathi,/datum/species/diona, /datum/species/diona/coeu, /datum/species/machine, /datum/species/machine/industrial, /datum/species/machine/industrial/hephaestus, /datum/species/machine/industrial/xion, /datum/species/machine/zenghu, /datum/species/machine/bishop)
	length = 0
	chatname = "bald head" //aim to keep these lowercase so they fit into the hair tugging message

/datum/sprite_accessory/hair/eighties
	name = "80's"
	icon_state = "hair_80s"
	length = 3
	chatname = "long hair"

/datum/sprite_accessory/hair/eighties_ponytail
	name = "80's Ponytail"
	icon_state = "hair_80s_ponytail"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/eighties_ponytail_alt
	name = "80's Ponytail Alt"
	icon_state = "hair_80s_ponytail_alt"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/afro
	name = "Afro"
	icon_state = "hair_afro"
	length = 3
	chatname = "afro"

/datum/sprite_accessory/hair/afro2
	name = "Afro 2"
	icon_state = "hair_afro2"
	length = 3
	chatname = "afro"

/datum/sprite_accessory/hair/afro3
	name = "Afro, Big"
	icon_state = "hair_afrobig"
	length = 3
	chatname = "big afro"

/datum/sprite_accessory/hair/amanita
	name = "Amanita"
	icon_state = "hair_amanita"
	chatname = "short curls"

/datum/sprite_accessory/hair/amanita_long
	name = "Amanita, Long"
	icon_state = "hair_amanita_long"
	length = 3
	chatname = "long curls"

/datum/sprite_accessory/hair/amanita_long_alt
	name = "Amanita, Long Alt"
	icon_state = "hair_amanita_long_alt"
	length = 3
	chatname = "long curls"

/datum/sprite_accessory/hair/amazon
	name = "Amazon"
	icon_state = "hair_amazon"
	length = 2
	chatname = "long hair"

/datum/sprite_accessory/hair/averagejoe
	name = "Average Joe"
	icon_state = "hair_averagejoe"
	chatname = "short hair"

/datum/sprite_accessory/hair/baldingfade
	name = "Balding Fade"
	icon_state = "hair_baldingfade"
	length = 0
	chatname = "bald head"

/datum/sprite_accessory/hair/baldinghair
	name = "Balding Hair"
	icon_state = "hair_baldinghair" //hair_e
	length = 0
	chatname = "balding hair"

/datum/sprite_accessory/hair/bangs
	name = "Bangs"
	icon_state = "hair_bangs"
	length = 3
	chatname = "fringe"

/datum/sprite_accessory/hair/bangs_short
	name = "Bangs, Short"
	icon_state = "hair_bangs_short"
	length = 2
	chatname = "fringe"

/datum/sprite_accessory/hair/bangs_veryshort
	name = "Bangs, Very Short"
	icon_state = "hair_bangs_veryshort"
	chatname = "fringe"

/datum/sprite_accessory/hair/bedhead
	name = "Bedhead"
	icon_state = "hair_bedhead"
	chatname = "messy locks"

/datum/sprite_accessory/hair/bedhead2
	name = "Bedhead 2"
	icon_state = "hair_bedhead2"
	chatname = "messy locks"

/datum/sprite_accessory/hair/bedhead3
	name = "Bedhead 3"
	icon_state = "hair_bedhead3"
	chatname = "wavy hair"

/datum/sprite_accessory/hair/bedhead4
	name = "Bedhead 4"
	icon_state = "hair_bedhead4"
	length = 4
	chatname = "messy locks"

/datum/sprite_accessory/hair/beehive
	name = "Beehive"
	icon_state = "hair_beehive"
	length = 2
	chatname = "beehive hairdo"

/datum/sprite_accessory/hair/beehive2
	name = "Beehive 2"
	icon_state = "hair_beehive2"
	length = 2
	chatname = "beehive hairdo"

/datum/sprite_accessory/hair/beehive3
	name = "Beehive 3"
	icon_state = "hair_beehive3"
	length = 2
	chatname = "beehive hairdo"

/datum/sprite_accessory/hair/belenko
	name = "Belenko"
	icon_state = "hair_belenko"
	length = 2
	chatname = "messy hair"

/datum/sprite_accessory/hair/belenko_tied
	name = "Belenko (Tied)"
	icon_state = "hair_belenkotied"
	length = 2
	chatname = "messy ponytail"

/datum/sprite_accessory/hair/bob
	name = "Bob"
	icon_state = "hair_bob"
	species_allowed = list(/datum/species/human,/datum/species/human/offworlder,/datum/species/machine/shell,/datum/species/machine/shell/rogue,/datum/species/zombie)
	chatname = "short hair"

/datum/sprite_accessory/hair/bob_chin
	name = "Bob, Chin Length"
	icon_state = "hair_bob_chin"
	chatname = "short hair"

/datum/sprite_accessory/hair/bob_kusanagi
	name = "Bob, Kusanagi"
	icon_state = "hair_bob_kusanagi"
	chatname = "short hair"

/datum/sprite_accessory/hair/bob_shoulder
	name = "Bob, Shoulder Length"
	icon_state = "hair_bob_shoulder"
	chatname = "short hair"

/datum/sprite_accessory/hair/bobcurl
	name = "Bobcurl"
	icon_state = "hair_bobcurl"
	species_allowed = list(/datum/species/human,/datum/species/human/offworlder,/datum/species/machine/shell,/datum/species/machine/shell/rogue,/datum/species/zombie)
	chatname = "curls"

/datum/sprite_accessory/hair/bobcurl2
	name = "Bobcurl 2"
	icon_state = "hair_bobcurl2"
	chatname = "curls"

/datum/sprite_accessory/hair/bookish
	name = "Bookish"
	icon_state = "hair_bookish"
	chatname = "short hair"

/datum/sprite_accessory/hair/bowl
	name = "Bowl"
	icon_state = "hair_bowlcut"
	chatname = "bowl cut"

/datum/sprite_accessory/hair/bowlcut2
	name = "Bowl 2"
	icon_state = "hair_bowlcut2"
	chatname = "bowl cut"

/datum/sprite_accessory/hair/bowlcut_birdnest
	name = "Bowl, Birdnest"
	icon_state = "hair_bowlcut_birdnest"
	length = 4
	chatname = "bowl cut"

/datum/sprite_accessory/hair/braid_grande
	name = "Braid, Grande"
	icon_state = "hair_braid_grande"
	length = 3
	chatname = "braid"

/datum/sprite_accessory/hair/braid_medium
	name = "Braid, Medium"
	icon_state = "hair_braid_medium"
	length = 2
	chatname = "braid"

/datum/sprite_accessory/hair/braided
	name = "Braided"
	icon_state = "hair_braided"
	length = 3
	chatname = "braids"

/datum/sprite_accessory/hair/braided_alt
	name = "Braided, Alt"
	icon_state = "hair_braided_alt"
	length = 3
	chatname = "braids"

/datum/sprite_accessory/hair/braided_hipster
	name = "Braided, Hipster"
	icon_state = "hair_braided_hipster"
	length = 3
	chatname = "braids"

/datum/sprite_accessory/hair/bun
	name = "Bun"
	icon_state = "hair_bun"
	length = 2
	chatname = "hair bun"

/datum/sprite_accessory/hair/bun_casual
	name = "Bun, Casual"
	icon_state = "hair_bun_casual"
	length = 2
	chatname = "hair bun"

/datum/sprite_accessory/hair/bun_donut
	name = "Bun, Donut"
	icon_state = "hair_bun_donut"
	length = 2
	chatname = "hair bun"

/datum/sprite_accessory/hair/bun_double
	name = "Bun, Double"
	icon_state = "hair_bun_double"
	length = 3
	chatname = "hair buns"

/datum/sprite_accessory/hair/bun_low
	name = "Bun, Low"
	icon_state = "hair_bun_low"
	length = 2
	chatname = "hair bun"

/datum/sprite_accessory/hair/bun_manbun
	name = "Bun, Manbun"
	icon_state = "hair_bun_manbun"
	length = 2
	chatname = "manbun"

/datum/sprite_accessory/hair/bun_odango
	name = "Bun, Odango"
	icon_state = "hair_bun_odango"
	length = 2
	chatname = "hair buns"

/datum/sprite_accessory/hair/bun_odango2
	name = "Bun, Odango 2"
	icon_state = "hair_bun_odango2"
	length = 2
	chatname = "hair buns"

/datum/sprite_accessory/hair/bun_odango3
	name = "Bun, Odango 3"
	icon_state = "hair_bun_odango3"
	length = 3
	chatname = "hair buns"

/datum/sprite_accessory/hair/bun_overeye
	name = "Bun, Overeye"
	icon_state = "hair_bun_overeye"
	length = 2
	chatname = "hair bun"

/datum/sprite_accessory/hair/bun_short
	name = "Bun, Short"
	icon_state = "hair_bun_short"
	length = 2
	chatname = "hair bun"

/datum/sprite_accessory/hair/bun_short2
	name = "Bun, Short 2"
	icon_state = "hair_bun_short2"
	length = 2
	chatname = "hair bun"

/datum/sprite_accessory/hair/bun_tight
	name = "Bun, Tight"
	icon_state = "hair_bun_tight"
	length = 2
	chatname = "hair bun"

/datum/sprite_accessory/hair/bun_topknot
	name = "Bun, Topknot"
	icon_state = "hair_bun_topknot"
	length = 2
	chatname = "hair bun"

/datum/sprite_accessory/hair/buzzcut
	name = "Buzzcut"
	icon_state = "hair_buzzcut"
	species_allowed = list(/datum/species/human,/datum/species/human/offworlder,/datum/species/machine/shell,/datum/species/machine/shell/rogue,/datum/species/zombie)
	chatname = "unbuzzed hair"	//grabbing the grabbable hair

/datum/sprite_accessory/hair/buzzcut2
	name = "Buzzcut 2"
	icon_state = "hair_buzzcut2"
	species_allowed = list(/datum/species/human,/datum/species/human/offworlder,/datum/species/machine/shell,/datum/species/machine/shell/rogue,/datum/species/zombie)
	chatname = "unbuzzed hair"

/datum/sprite_accessory/hair/bobcut_overeye
	name = "Bobcut, overeye"
	icon_state = "hair_bobcut_overeye"
	length = 2
	chatname = "bobcut"

/datum/sprite_accessory/hair/chop
	name = "Chop"
	icon_state = "hair_chop"
	length = 1
	chatname = "short hair"

/datum/sprite_accessory/hair/chrono
	name = "Chrono"
	icon_state = "hair_chrono"
	length = 4
	chatname = "spiked hair"

/datum/sprite_accessory/hair/cia
	name = "CIA"
	icon_state = "hair_cia"
	chatname = "short hair"

/datum/sprite_accessory/hair/coffeehouse
	name = "Coffee House Cut"
	icon_state = "hair_coffeehouse"
	chatname = "coffee house haircut"

/datum/sprite_accessory/hair/coffeehouse_shave
	name = "Coffee House Shave"
	icon_state = "hair_coffeehouse_shave"
	chatname = "coffee house haircut"

/datum/sprite_accessory/hair/combover
	name = "Combover"
	icon_state = "hair_combover"
	chatname = "groomed hair"

/datum/sprite_accessory/hair/country
	name = "Country"
	icon_state = "hair_country"
	chatname = "ponytail"

/datum/sprite_accessory/hair/crew
	name = "Crewcut"
	icon_state = "hair_crewcut"
	chatname = "short hair"

/datum/sprite_accessory/hair/curls
	name = "Curls"
	icon_state = "hair_curls"
	chatname = "curls"

/datum/sprite_accessory/hair/cut
	name = "Cut Hair"
	icon_state = "hair_cuthair" //hair_c
	chatname = "short hair"

/datum/sprite_accessory/hair/devillock
	name = "Devil Lock"
	icon_state = "hair_devilock"
	chatname = "devil locks"

/datum/sprite_accessory/hair/dreadlocks
	name = "Dreadlocks"
	icon_state = "hair_dreads"
	length = 4
	chatname = "dreadlocks"

/datum/sprite_accessory/hair/drills_drillruru
	name = "Drills, Drillruru"
	icon_state = "hair_drills_drillruru"
	length = 2
	chatname = "hair drills"

/datum/sprite_accessory/hair/drills_drillruru_long
	name = "Drills, Drillruru Long"
	icon_state = "hair_drills_drillruru_long"
	length = 3
	chatname = "hair drills"

/datum/sprite_accessory/hair/diagonal_bangs
	name = "Diagonal Bangs"
	icon_state = "hair_diagonal_bangs"
	length = 2
	chatname = "bangs"

/datum/sprite_accessory/hair/eagle
	name = "Eagle"
	icon_state = "hair_eagle"
	length = 1
	chatname = "short hair"

/datum/sprite_accessory/hair/emo
	name = "Emo"
	icon_state = "hair_emo"
	chatname = "fringe"

/datum/sprite_accessory/hair/emo_alt
	name = "Emo, Alt"
	icon_state = "hair_emo_alt"
	chatname = "fringe"

/datum/sprite_accessory/hair/emo_long
	name = "Emo, Long"
	icon_state = "hair_emo_long"
	chatname = "long fringe"
	length = 2

/datum/sprite_accessory/hair/emofringe
	name = "Emo Fringe"
	icon_state = "hair_emofringe"
	chatname = "fringe"

/datum/sprite_accessory/hair/emofringe_long
	name = "Emo Fringe Long"
	icon_state = "hair_emofringe_long"
	length = 3
	chatname = "long fringe"

/datum/sprite_accessory/hair/emofringe_longbun
	name = "Emo Fringe Long Bun"
	icon_state = "hair_emofringe_longbun"
	length = 3
	chatname = "hair bun"

/datum/sprite_accessory/hair/emorightfringe_long
	name = "Emo Right Fringe Long"
	icon_state = "hair_emofringe_long"
	length = 3
	chatname = "long fringe"

/datum/sprite_accessory/hair/emofringe_long_alt
	name = "Emo Fringe Long Alt"
	icon_state = "hair_emofringe_longalt"
	length = 3
	chatname = "long fringe"

/datum/sprite_accessory/hair/emorightfringe_long_alt
	name = "Emo Right Fringe Long Alt"
	icon_state = "hair_emorightfringe_longalt"
	length = 3
	chatname = "long fringe"

/datum/sprite_accessory/hair/fade_clean
	name = "Fade, Clean"
	icon_state = "hair_fade_clean"
	chatname = "short hair"

/datum/sprite_accessory/hair/fade_cleanlow
	name = "Fade, Clean Low"
	icon_state = "hair_fade_cleanlow"
	chatname = "short hair"

/datum/sprite_accessory/hair/fade_high
	name = "Fade, High"
	icon_state = "hair_fade_high"
	chatname = "unshaved hair"

/datum/sprite_accessory/hair/fade_low
	name = "Fade, Low"
	icon_state = "hair_fade_low"
	chatname = "short hair"

/datum/sprite_accessory/hair/fade_manbun
	name = "Fade, Manbun"
	icon_state = "hair_fade_manbun"
	chatname = "short hair"

/datum/sprite_accessory/hair/fade_medium
	name = "Fade, Medium"
	icon_state = "hair_fade_medium"
	chatname = "unshaved hair"

/datum/sprite_accessory/hair/fade_none
	name = "Fade, None"
	icon_state = "hair_fade_none"
	chatname = "short hair"

/datum/sprite_accessory/hair/falcon
	name = "Falcon"
	icon_state = "hair_falcon"
	length = 3
	chatname = "very long hair"

/datum/sprite_accessory/hair/father
	name = "Father"
	icon_state = "hair_father"
	chatname = "short hair"

/datum/sprite_accessory/hair/feather
	name = "Feather"
	icon_state = "hair_feather"
	length = 2
	chatname = "short hair"

/datum/sprite_accessory/hair/flat_top
	name = "Flat Top"
	icon_state = "hair_flattop"
	chatname = "flat top hair"

/datum/sprite_accessory/hair/flair
	name = "Flaired Hair"
	icon_state = "hair_flair"
	length = 2
	chatname = "flaired hair"

/datum/sprite_accessory/hair/flow
	name = "Flow Hair"
	icon_state = "hair_flow" //hair_f
	chatname = "short hair"

/datum/sprite_accessory/hair/gelled
	name = "Gelled Back"
	icon_state = "hair_gelled"
	length = 2
	chatname = "gelled-back hair"

/datum/sprite_accessory/hair/gentle
	name = "Gentle"
	icon_state = "hair_gentle"
	length = 3
	chatname = "long hair"

/datum/sprite_accessory/hair/gentlealt
	name = "Gentle Alt"
	icon_state = "hair_gentlealt"
	length = 3
	chatname = "long hair"

/datum/sprite_accessory/hair/gentle2
	name = "Gentle 2"
	icon_state = "hair_gentle2"
	length = 2
	chatname = "long hair"

/datum/sprite_accessory/hair/gentle2_alt
	name = "Gentle 2, Alt"
	icon_state = "hair_gentle2_alt"
	length = 2
	chatname = "long hair"

/datum/sprite_accessory/hair/gentle2_long
	name = "Gentle 2, Long"
	icon_state = "hair_gentle2_long"
	length = 3
	chatname = "long hair"

/datum/sprite_accessory/hair/gentle2_longalt
	name = "Gentle 2, Long Alt"
	icon_state = "hair_gentle2_longalt"
	length = 3
	chatname = "long hair"

/datum/sprite_accessory/hair/gentle3
	name = "Gentle 3"
	icon_state = "hair_gentle3"
	length = 3
	chatname = "long hair"

/datum/sprite_accessory/hair/gentle3_alt
	name = "Gentle 3, Alt"
	icon_state = "hair_gentle3_alt"
	length = 3
	chatname = "long hair"

/datum/sprite_accessory/hair/glossy
	name = "Glossy"
	icon_state = "hair_glossy"
	length = 2
	chatname = "short hair"

/datum/sprite_accessory/hair/halfbang
	name = "Half-banged Hair"
	icon_state = "hair_halfbang"
	chatname = "short hair"

/datum/sprite_accessory/hair/halfbangalt
	name = "Half-banged Hair, Alt"
	icon_state = "hair_halfbang_alt"
	chatname = "short hair"

/datum/sprite_accessory/hair/himecut
	name = "Hime Cut"
	icon_state = "hair_himecut"
	length = 3
	chatname = "long hair"

/datum/sprite_accessory/hair/himecut_alt
	name = "Hime Cut, Alt"
	icon_state = "hair_himecut_alt"
	length = 3
	chatname = "long hair"

/datum/sprite_accessory/hair/himecut_alt2
	name = "Hime Cut, Alt 2"
	icon_state = "hair_himecut_alt2"
	length = 3
	chatname = "long hair"

/datum/sprite_accessory/hair/himecut_long
	name = "Hime Cut, Long"
	icon_state = "hair_himecut_long"
	length = 3
	chatname = "long hair"

/datum/sprite_accessory/hair/himecut_long_ponytail
	name = "Hime Cut, Long Ponytail"
	icon_state = "hair_himecut_long_ponytail"
	length = 3
	chatname = "long hair"

/datum/sprite_accessory/hair/himecut_ponytail
	name = "Hime Cut, Ponytail"
	icon_state = "hair_himecut_ponytail"
	length = 3
	chatname = "long hair"

/datum/sprite_accessory/hair/himecut_ponytail_up
	name = "Hime Cut, Ponytail Up"
	icon_state = "hair_himecut_ponytail_up"
	length = 2
	chatname = "long hair"

/datum/sprite_accessory/hair/himecut_short
	name = "Hime Cut, Short"
	icon_state = "hair_himecut_short"
	chatname = "short hair"

/datum/sprite_accessory/hair/hitop
	name = "Hitop"
	icon_state = "hair_hitop"
	chatname = "hitop"

/datum/sprite_accessory/hair/hummingbird
	name = "Hummingbird"
	icon_state = "hair_hummingbird"
	length = 2
	chatname = "long hair"

/datum/sprite_accessory/hair/jade
	name = "Jade"
	icon_state = "hair_jade"
	length = 2
	chatname = "messy hair"

/datum/sprite_accessory/hair/jaeger
	name = "Jaeger"
	icon_state = "hair_jaeger"
	chatname = "short hair"

/datum/sprite_accessory/hair/jensen
	name = "Jensen Hair"  // Removing Videogame References
	icon_state = "hair_jensen"
	chatname = "short hair"

/datum/sprite_accessory/hair/joestar
	name = "Joestar"
	icon_state = "hair_joestar"
	chatname = "short hair"

/datum/sprite_accessory/hair/longfringe
	name = "Long Fringe"
	icon_state = "hair_longfringe"
	length = 2
	chatname = "long hair"

/datum/sprite_accessory/hair/longfringe_longer
	name = "Long Fringe, Longer"
	icon_state = "hair_longfringe_longer"
	length = 3
	chatname = "long hair"

/datum/sprite_accessory/hair/long
	name = "Long Hair"
	icon_state = "hair_long"
	length = 3
	chatname = "long hair"

/datum/sprite_accessory/hair/long_alt
	name = "Long Hair, Alt"
	icon_state = "hair_long_alt"
	length = 2
	chatname = "long hair"

/datum/sprite_accessory/hair/long_shoulder
	name = "Long Hair, Shoulder-length"
	icon_state = "hair_long_shoulder" //hair_b
	length = 2
	chatname = "shoulder-length hair"

/datum/sprite_accessory/hair/long_verylong
	name = "Long Hair, Very Long"
	icon_state = "hair_long_verylong"
	length = 4
	chatname = "very long hair"

/datum/sprite_accessory/hair/long_wavy
	name = "Long Hair, Wavy"
	icon_state = "hair_long_wavy"
	length = 3
	chatname = "long hair"

/datum/sprite_accessory/hair/macaw
	name = "Macaw"
	icon_state = "hair_macaw"
	length = 2
	chatname = "long hair"

/datum/sprite_accessory/hair/magpie
	name = "Magpie, 1"
	icon_state = "hair_magpie"

/datum/sprite_accessory/hair/magpie/two
	name = "Magpie, 2"
	icon_state = "hair_magpie2"

/datum/sprite_accessory/hair/magpie/three
	name = "Magpie, 3"
	icon_state = "hair_magpie3"

/datum/sprite_accessory/hair/magpie/four
	name = "Magpie, 4"
	icon_state = "hair_magpie4"

/datum/sprite_accessory/hair/marysue
	name = "Mary Sue"
	icon_state = "hair_marysue"
	length = 3
	chatname = "long hair"

/datum/sprite_accessory/hair/messy
	name = "Messy"
	icon_state = "hair_messy"
	length = 2
	chatname = "messy hair"

/datum/sprite_accessory/hair/messy_alt
	name = "Messy, Alt"
	icon_state = "hair_messy_alt"
	length = 2
	chatname = "messy hair"

/datum/sprite_accessory/hair/messy_alt_rounded
	name = "Messy, Alt (Rounded)"
	icon_state = "hair_messy_alt_rounded"
	length = 2
	chatname = "messy hair"

/datum/sprite_accessory/hair/modern
	name = "Modern"
	icon_state = "hair_modern"
	length = 3
	chatname = "long hair"

/datum/sprite_accessory/hair/mohawk
	name = "Mohawk"
	icon_state = "hair_mohawk"
	chatname = "mohawk"

/datum/sprite_accessory/hair/mohawk_big
	name = "Mohawk, Big"
	icon_state = "hair_mohawk_big"
	chatname = "mohawk"

/datum/sprite_accessory/hair/mohawk_high
	name = "Mohawk, High"
	icon_state = "hair_mohawk_high" //hair_d
	chatname = "mohawk"

/datum/sprite_accessory/hair/mohawk_hightight
	name = "Mohawk, High and Tight"
	icon_state = "hair_mohawk_hightight"
	chatname = "mohawk"

/datum/sprite_accessory/hair/mohawk_naomi
	name = "Mohawk, Naomi"
	icon_state = "hair_mohawk_naomi" //slightly longer on the side icons, in case you were wondering
	chatname = "mohawk"

/datum/sprite_accessory/hair/mohawk_reverse
	name = "Mohawk, Reverse"
	icon_state = "hair_mohawk_reverse"
	chatname = "short hair"

/datum/sprite_accessory/hair/mohawk_shaved
	name = "Mohawk, Shaved"
	icon_state = "hair_mohawk_shaved"
	chatname = "mohawk"

/datum/sprite_accessory/hair/mohawk_shavedlong
	name = "Mohawk, Shaved and Long"
	icon_state = "hair_mohawk_shavedlong"
	chatname = "mohawk"

/datum/sprite_accessory/hair/mohawk_shavedback
	name = "Mohawk, Shaved Back"
	icon_state = "hair_mohawk_shavedback"
	chatname = "mohawk"

/datum/sprite_accessory/hair/mohawk_shavedbacklong
	name = "Mohawk, Shaved Back and Long"
	icon_state = "hair_mohawk_shavedbacklong"
	chatname = "mohawk"

/datum/sprite_accessory/hair/mohawk_shavedtight
	name = "Mohawk, Shaved and Tight"
	icon_state = "hair_mohawk_shavedtight"
	chatname = "mohawk"

/datum/sprite_accessory/hair/mulder
	name = "Mulder"
	icon_state = "hair_mulder"
	chatname = "short hair"

/datum/sprite_accessory/hair/neat
	name = "Neat"
	icon_state = "hair_neat"
	chatname = "groomed hair"

/datum/sprite_accessory/hair/neatlong
	name = "Neat (Long)"
	icon_state = "hair_neatlong"
	length = 2
	chatname = "long hair"

/datum/sprite_accessory/hair/newyou
	name = "New You"
	icon_state = "hair_newyou"
	length = 3
	chatname = "ponytail"

/datum/sprite_accessory/hair/nia
	name = "Nia"
	icon_state = "hair_nia"
	length = 3
	chatname = "long hair"

/datum/sprite_accessory/hair/ombre
	name = "Ombre"
	icon_state = "hair_ombre"
	length = 2
	chatname = "short hair"

/datum/sprite_accessory/hair/oneshoulder
	name = "One Shoulder"
	icon_state = "hair_oneshoulder"
	length = 2
	chatname = "one shoulder hairstyle"

/datum/sprite_accessory/hair/overeye_long
	name = "Overeye, Long"
	icon_state = "hair_overeye_long"
	length = 3
	chatname = "long hair"

/datum/sprite_accessory/hair/overeye_short
	name = "Overeye, Short"
	icon_state = "hair_overeye_short"
	chatname = "long hair"
	length = 2

/datum/sprite_accessory/hair/overeye_verylong
	name = "Overeye, Very Long"
	icon_state = "hair_overeye_verylong"
	length = 3
	chatname = "long hair"

/datum/sprite_accessory/hair/overeye_veryshort
	name = "Overeye, Very Short"
	icon_state = "hair_overeye_veryshort"
	chatname = "short hair"

/datum/sprite_accessory/hair/overeye_veryshort_alt
	name = "Overeye, Very Short Alt"
	icon_state = "hair_overeye_veryshort_alt"
	chatname = "short hair"

/datum/sprite_accessory/hair/oxton
	name = "Oxton"
	icon_state = "hair_oxton"
	chatname = "short hair"

/datum/sprite_accessory/hair/parted
	name = "Parted"
	icon_state = "hair_parted"
	chatname = "short hair"

/datum/sprite_accessory/hair/parted_alt
	name = "Parted, Alt"
	icon_state = "hair_parted_alt"
	chatname = "short hair"

/datum/sprite_accessory/hair/parted_swept
	name = "Parted, Swept"
	icon_state = "hair_parted_swept"
	chatname = "short hair"

/datum/sprite_accessory/hair/pigtails_belle
	name = "Pigtails, Belle"
	icon_state = "hair_pigtails_belle"
	gender = FEMALE
	length = 2
	chatname = "pigtails"

/datum/sprite_accessory/hair/pigtails_kagami
	name = "Pigtails, Kagami"
	icon_state = "hair_pigtails_kagami"
	length = 2
	chatname = "pigtails"

/datum/sprite_accessory/hair/pigtails_low
	name = "Pigtails, Low"
	icon_state = "hair_pigtails_low"
	length = 2
	chatname = "pigtails"

/datum/sprite_accessory/hair/pigtails_nitori
	name = "Pigtails, Nitori"
	icon_state = "hair_pigtails_nitori"
	length = 2
	chatname = "pigtails"

/datum/sprite_accessory/hair/pigtails_twintail
	name = "Pigtails, Twintail"
	icon_state = "hair_pigtails_twintail"
	length = 2
	chatname = "pigtails"

/datum/sprite_accessory/hair/pigtails_twintail_ombre
	name = "Pigtails, Twintail Ombre"
	icon_state = "hair_pigtails_twintail_ombre"
	length = 2
	chatname = "pigtails"

/datum/sprite_accessory/hair/pigtails_twintail_ombre_alt
	name = "Pigtails, Twintail Ombre Alt"
	icon_state = "hair_pigtails_twintail_ombre_alt"
	length = 3
	chatname = "pigtails"

/datum/sprite_accessory/hair/pompadour
	name = "Pompadour"
	icon_state = "hair_pompadour"
	length = 3
	chatname = "pompadour"

/datum/sprite_accessory/hair/pompadour_dandy
	name = "Pompadour, Dandy"
	icon_state = "hair_pompadour_dandy"
	length = 3
	chatname = "pompadour"

/datum/sprite_accessory/hair/ponytail1
	name = "Ponytail 1"
	icon_state = "hair_ponytail1"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/ponytail2
	name = "Ponytail 2"
	icon_state = "hair_ponytail2" //hair_pa
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/ponytail3
	name = "Ponytail 3"
	icon_state = "hair_ponytail3"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/ponytail4
	name = "Ponytail 4"
	icon_state = "hair_ponytail4"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/ponytail5
	name = "Ponytail 5"
	icon_state = "hair_ponytail5"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/ponytail6
	name = "Ponytail 6"
	icon_state = "hair_ponytail6"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/ponytail7
	name = "Ponytail 7"
	icon_state = "hair_ponytail7"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/ponytail7_notie
	name = "Ponytail 7, No Tie"
	icon_state = "hair_ponytail7_notie"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/ponytail8
	name = "Ponytail 8"
	icon_state = "hair_ponytail8"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/ponytail9
	name = "Ponytail 9"
	icon_state = "hair_ponytail9"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/ponytail_short
	name = "Ponytail, Short"
	icon_state = "hair_ponytail_short"
	length = 2
	chatname = "short ponytail"

/datum/sprite_accessory/hair/ponytail_short2
	name = "Ponytail, Short 2"
	icon_state = "hair_ponytail_short2"
	length = 2
	chatname = "short ponytail"

/datum/sprite_accessory/hair/ponytail_short3
	name = "Ponytail, Short 3"
	icon_state = "hair_ponytail_short3"
	length = 2
	chatname = "short ponytail"

/datum/sprite_accessory/hair/ponytail_short3_notie
	name = "Ponytail, Short 3, No Tie"
	icon_state = "hair_ponytail_short3_notie"
	length = 2
	chatname = "short ponytail"

/datum/sprite_accessory/hair/ponytail_short4
	name = "Ponytail, Short 4"
	icon_state = "hair_ponytail_short4"
	length = 2
	chatname = "short ponytail"

/datum/sprite_accessory/hair/ponytail_short5
	name = "Ponytail, Short 5"
	icon_state = "hair_ponytail_short5"
	length = 2
	chatname = "short ponytail"

/datum/sprite_accessory/hair/ponytail_short5_alt
	name = "Ponytail, Short 5, Alt"
	icon_state = "hair_ponytail_short5_alt"
	length = 2
	chatname = "short ponytail"

/datum/sprite_accessory/hair/ponytail_fringetail
	name = "Ponytail, Fringetail"
	icon_state = "hair_ponytail_fringetail"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/ponytail_fringetail_notie
	name = "Ponytail, Fringetail, No Tie"
	icon_state = "hair_ponytail_fringetail_notie"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/ponytail_high
	name = "Ponytail, High"
	icon_state = "hair_ponytail_high"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/ponytail_high_notie
	name = "Ponytail, High, No Tie"
	icon_state = "hair_ponytail_high_notie"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/ponytail_side
	name = "Ponytail, Side"
	icon_state = "hair_ponytail_side"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/ponytail_side_notie
	name = "Ponytail, Side, No Tie"
	icon_state = "hair_ponytail_side_notie"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/ponytail_side2
	name = "Ponytail, Side 2"
	icon_state = "hair_ponytail_side2"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/ponytail_side2_notie
	name = "Ponytail, Side 2, No Tie"
	icon_state = "hair_ponytail_side2_notie"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/ponytail_side3
	name = "Ponytail, Side 3"
	icon_state = "hair_ponytail_side3"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/ponytail_side3_notie
	name = "Ponytail, Side 3, No Tie"
	icon_state = "hair_ponytail_side3_notie"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/ponytail_side4
	name = "Ponytail, Side 4"
	icon_state = "hair_ponytail_side4"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/ponytail_side4_notie
	name = "Ponytail, Side 4, No Tie"
	icon_state = "hair_ponytail_side4_notie"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/ponytail_spiky
	name = "Ponytail, Spiky"
	icon_state = "hair_ponytail_spiky"
	length = 4
	chatname = "ponytail"

/datum/sprite_accessory/hair/ponytail_wisp
	name = "Ponytail, Wisp"
	icon_state = "hair_ponytail_wisp"
	length = 3
	chatname = "ponytail"

/datum/sprite_accessory/hair/ponytail_zieglertail
	name = "Ponytail, Zieglertail"
	icon_state = "hair_ponytail_ziegler"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/ponytail_zieglertail_notie
	name = "Ponytail, Zieglertail, No Tie"
	icon_state = "hair_ponytail_ziegler_notie"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/bunlarge2
	name = "Bun, Large 2"
	icon_state = "hair_bun_large2"
	length = 2
	chatname = "large bun"

/datum/sprite_accessory/hair/bunlarge2_notie
	name = "Bun, Large 2, No Tie"
	icon_state = "hair_bun_large2_notie"
	length = 2
	chatname = "large bun"

/datum/sprite_accessory/hair/poofy
	name = "Poofy"
	icon_state = "hair_poofy"
	length = 2
	chatname = "poofy hair"

/datum/sprite_accessory/hair/poofy2
	name = "Poofy 2"
	icon_state = "hair_poofy2"
	length = 2
	chatname = "poofy hair"

/datum/sprite_accessory/hair/poofy3
	name = "Poofy 3"
	icon_state = "hair_poofy3"
	length = 2
	chatname = "poofy hair"

/datum/sprite_accessory/hair/poofy4
	name = "Poofy 4"
	icon_state = "hair_poofy4"
	length = 2
	chatname = "poofy hair"

/datum/sprite_accessory/hair/punk_chelsea
	name = "Punk Shave, Chelsea"
	icon_state = "hair_punk_chelsea"
	chatname = "fringe"

/datum/sprite_accessory/hair/punk_chelsea_bighawk
	name = "Punk Shave, Chelsea Big Hawk"
	icon_state = "hair_punk_chelsea_bighawk"
	chatname = "mohawk"

/datum/sprite_accessory/hair/punk_chelsea_smallhawk
	name = "Punk Shave, Chelsea Small Hawk"
	icon_state = "hair_punk_chelsea_smallhawk"
	chatname = "mohawk"

/datum/sprite_accessory/hair/punk_chelsea_ponytail
	name = "Punk Shave, Chelsea Ponytail"
	icon_state = "hair_punk_chelsea_ponytail"
	chatname = "ponytail"

/datum/sprite_accessory/hair/punk_chelseafringe
	name = "Punk Shave, Chelsea Fringe"
	icon_state = "hair_punk_chelseafringe"
	chatname = "fringe"

/datum/sprite_accessory/hair/punk_chelseafringealt
	name = "Punk Shave, Chelsea Fringe Alt"
	icon_state = "hair_punk_chelseafringe_alt"
	chatname = "fringe"

/datum/sprite_accessory/hair/punk_chelseafringe_bighawk
	name = "Punk Shave, Chelsea Big Hawk"
	icon_state = "hair_punk_chelseafringe_bighawk"
	chatname = "mohawk"

/datum/sprite_accessory/hair/punk_chelseafringe_smallhawk
	name = "Punk Shave, Chelsea Small Hawk"
	icon_state = "hair_punk_chelseafringe_smallhawk"
	chatname = "mohawk"

/datum/sprite_accessory/hair/punk_chelseafringe_ponytail
	name = "Punk Shave, Chelsea Ponytail"
	icon_state = "hair_punk_chelseafringe_ponytail"
	chatname = "ponytail"

/datum/sprite_accessory/hair/punk_halfshaved
	name = "Punk Shave, Half-Shaved"
	icon_state = "hair_punk_halfshaved"
	chatname = "unshaved hair"		// grabbing the parts that can be grabbed

/datum/sprite_accessory/hair/punk_halfshaved_alt
	name = "Punk Shave, Half-Shaved Alt"
	icon_state = "hair_punk_halfshaved_alt"
	chatname = "unshaved hair"

/datum/sprite_accessory/hair/punk_halfshaved_bun
	name = "Punk Shave, Half-Shaved Bun"
	icon_state = "hair_punk_halfshaved_bun"
	length = 2
	chatname = "hair bun"

/datum/sprite_accessory/hair/punk_halfshaved_bun_alt
	name = "Punk Shave, Half-Shaved Bun Alt"
	icon_state = "hair_punk_halfshaved_bun_alt"
	length = 2
	chatname = "hair bun"

/datum/sprite_accessory/hair/punk_halfshaved_emo
	name = "Punk Shave, Half-Shaved Emo"
	icon_state = "hair_punk_halfshaved_emo"
	length = 2
	chatname = "unshaved hair"

/datum/sprite_accessory/hair/punk_sidecut_left
	name = "Punk Shave, Sidecut Left"
	icon_state = "hair_punk_sideleft"
	length = 2
	chatname = "unshaved hair"

/datum/sprite_accessory/hair/punk_sidecut_left_sh
	name = "Punk Shave, Sidecut Short Left"
	icon_state = "hair_punk_sideleft_sh"
	chatname = "unshaved hair"

/datum/sprite_accessory/hair/punk_sidecut_right
	name = "Punk Shave, Sidecut Right"
	icon_state = "hair_punk_sideright"
	length = 2
	chatname = "unshaved hair"

/datum/sprite_accessory/hair/punk_sidecut_right_sh
	name = "Punk Shave, Sidecut Short Right"
	icon_state = "hair_punk_sideright_sh"
	chatname = "unshaved hair"

/datum/sprite_accessory/hair/quiff
	name = "Quiff"
	icon_state = "hair_quiff"
	length = 2
	chatname = "quiff"

/datum/sprite_accessory/hair/ronin
	name = "Ronin"
	icon_state = "hair_ronin"
	length = 2
	chatname = "long hair"

/datum/sprite_accessory/hair/rosa
	name = "Rosa"
	icon_state = "hair_rosa"
	chatname = "short hair"

/datum/sprite_accessory/hair/rows
	name = "Rows"
	icon_state = "hair_rows"
	length = 2
	chatname = "cornrows"

/datum/sprite_accessory/hair/rows_braid
	name = "Rows, Braid"
	icon_state = "hair_rows_braid"
	length = 2
	chatname = "cornrows"

/datum/sprite_accessory/hair/rows_bun
	name = "Rows, Bun"
	icon_state = "hair_rows_bun"
	length = 2
	chatname = "cornrows"

/datum/sprite_accessory/hair/rows_dualtail
	name = "Rows, Dual Tail"
	icon_state = "hair_rows_dualtail"
	length = 2
	chatname = "cornrows"

/datum/sprite_accessory/hair/rows_long
	name = "Rows, Long"
	icon_state = "hair_rows_long"
	length = 2
	chatname = "cornrows"

/datum/sprite_accessory/hair/scully
	name = "Scully"
	icon_state = "hair_scully"
	chatname = "short hair"

/datum/sprite_accessory/hair/shaved
	name = "Shaved"
	icon_state = "hair_shaved"
	length = 0
	chatname = "shaved head"

/datum/sprite_accessory/hair/short
	name = "Short Hair"
	icon_state = "hair_shorthair" //hair_a
	chatname = "short hair"

/datum/sprite_accessory/hair/short2
	name = "Short Hair 2"
	icon_state = "hair_shorthair2"
	chatname = "short hair"

/datum/sprite_accessory/hair/short3
	name = "Short Hair 3"
	icon_state = "hair_shorthair3"
	chatname = "short hair"

/datum/sprite_accessory/hair/short4
	name = "Short Hair 4"
	icon_state = "hair_shorthair4"
	chatname = "short hair"

/datum/sprite_accessory/hair/sideswept
	name = "Sideswept Hair"
	icon_state = "hair_sideswept"
	chatname = "short hair"

/datum/sprite_accessory/hair/skinhead
	name = "Skinhead"
	icon_state = "hair_skinhead"
	chatname = "matted shaved hair"

/datum/sprite_accessory/hair/sleeze
	name = "Sleeze"
	icon_state = "hair_sleeze"
	chatname = "short hair"

/datum/sprite_accessory/hair/slick
	name = "Slick"
	icon_state = "hair_slick"
	chatname = "slicked hair"

/datum/sprite_accessory/hair/spiky
	name = "Spiky"
	icon_state = "hair_spiky"
	species_allowed = list(/datum/species/human,/datum/species/human/offworlder,/datum/species/machine/shell,/datum/species/machine/shell/rogue,/datum/species/zombie)
	chatname = "mighty spikes"

/datum/sprite_accessory/hair/straightlong
	name = "Straight Long"
	icon_state = "hair_straightlong"
	length = 3
	chatname = "long hair"

/datum/sprite_accessory/hair/surfer
	name = "Surfer"
	icon_state = "hair_surfer"
	length = 2
	chatname = "short hair"

/datum/sprite_accessory/hair/thinning
	name = "Thinning"
	icon_state = "hair_thinning"
	chatname = "short hair"

/datum/sprite_accessory/hair/thinningback
	name = "Thinning Back"
	icon_state = "hair_thinningback"
	chatname = "short hair"

/datum/sprite_accessory/hair/thinningfront
	name = "Thinning Front"
	icon_state = "hair_thinningfront"
	chatname = "short hair"

/datum/sprite_accessory/hair/tresshoulder
	name = "Tress Shoulder"
	icon_state = "hair_tressshoulder"
	length = 2
	chatname = "curls"

/datum/sprite_accessory/hair/tresshoulderdouble
	name = "Tress Shoulder Double"
	icon_state = "hair_tressshoulder_double"
	length = 2
	chatname = "curls"

/datum/sprite_accessory/hair/trimmed
	name = "Trimmed"
	icon_state = "hair_trimmed"
	chatname = "trimmed hair"

/datum/sprite_accessory/hair/trimmedflat
	name = "Trimmed Flat Top"
	icon_state = "hair_trimmedflat"
	chatname = "trimmed hair"

/datum/sprite_accessory/hair/twincurls
	name = "Twincurls"
	icon_state = "hair_twincurls"
	length = 2
	chatname = "curls"

/datum/sprite_accessory/hair/twincurls2
	name = "Twincurls 2"
	icon_state = "hair_twincurls2"
	length = 2
	chatname = "curls"

/datum/sprite_accessory/hair/undercut
	name = "Undercut"
	icon_state = "hair_undercut"
	chatname = "unshaved hair"

/datum/sprite_accessory/hair/undercut2
	name = "Undercut 2"
	icon_state = "hair_undercut2"
	chatname = "undercut"

/datum/sprite_accessory/hair/undercut3
	chatname = "unshaved hair"
	name = "Undercut 3"
	icon_state = "hair_undercut3"

/datum/sprite_accessory/hair/undercut4
	name = "Undercut 4"
	icon_state = "hair_undercut4"
	chatname = "unshaved hair"

/datum/sprite_accessory/hair/undercut5
	name = "Undercut 5"
	icon_state = "hair_undercut5"
	chatname = "unshaved hair"

/datum/sprite_accessory/hair/curtain
	name = "Short Curtain"
	icon_state = "hair_curtain"
	chatname = "unshaved hair"

/datum/sprite_accessory/hair/unkept
	name = "Unkept"
	icon_state = "hair_unkept"
	length = 3
	chatname = "unkept hairdo"

/datum/sprite_accessory/hair/updo
	name = "Updo"
	icon_state = "hair_updo"
	length = 2
	chatname = "updo"

/datum/sprite_accessory/hair/vegeta
	name = "Vegeta"
	icon_state = "hair_vegeta"
	length = 4
	chatname = "mighty spikes"

/datum/sprite_accessory/hair/volaju
	name = "Volaju"
	icon_state = "hair_volaju"
	length = 2
	chatname = "long hair"

/datum/sprite_accessory/hair/wheeler
	name = "Wheeler"
	icon_state = "hair_wheeler"
	chatname = "short hair"

/datum/sprite_accessory/hair/wolfcut
	name = "Wolfcut"
	icon_state = "hair_wolfcut"
	length = 3
	chatname = "long hair"

/datum/sprite_accessory/hair/wolfcut_alt
	name = "Wolfcut, Alt"
	icon_state = "hair_wolfcut_alt"
	length = 3
	chatname = "long hair"

/datum/sprite_accessory/hair/fingerwave
	name = "Fingerwave"
	icon_state = "hair_fingercurl"
	chatname = "fluffy hair"

/datum/sprite_accessory/hair/mullet
	name = "Mullet"
	icon_state = "hair_mullet"
	chatname = "mullet"

/datum/sprite_accessory/hair/bug_eyes
	icon = 'icons/mob/human_face/dionae_hair.dmi'
	name = "Bug Eyes"
	icon_state = "bugeyes"
	species_allowed = list(/datum/species/diona, /datum/species/diona/coeu)
	gender = NEUTER

/datum/sprite_accessory/hair/bug_eyes/human_eyes
	name = "Human Eyes"
	icon_state = "humaneyes"

/datum/sprite_accessory/hair/bug_eyes/skrell_eyes
	name = "Skrell Eyes"
	icon_state = "skrelleyes"

/datum/sprite_accessory/hair/bug_eyes/skrell_eyes_2
	name = "Skrell Eyes 2"
	icon_state = "skrelleyes2"

/datum/sprite_accessory/hair/bug_eyes/small_horns
	name = "Small Horns"
	icon_state = "smallhorns"

/datum/sprite_accessory/hair/bug_eyes/horny
	name = "Horny"
	icon_state = "horny"

/datum/sprite_accessory/hair/bug_eyes/headtails
	name = "Head tails"
	icon_state = "headtails"

/datum/sprite_accessory/hair/bug_eyes/headtails_2
	name = "Head tails 2"
	icon_state = "headtails2"

/datum/sprite_accessory/hair/bug_eyes/tiny_eye
	name = "Tiny Eye"
	icon_state = "tinyeye"

/datum/sprite_accessory/hair/bug_eyes/eyebrow
	name = "Eyebrow"
	icon_state = "eyebrow"

/datum/sprite_accessory/hair/bug_eyes/bullhorn
	name = "Bullhorn"
	icon_state = "bullhorn"

/datum/sprite_accessory/hair/bug_eyes/blinkinghelmethead
	name = "Blinking Helmethead"
	icon_state = "blinkinghelmethead"

/datum/sprite_accessory/hair/bug_eyes/periscope
	name = "Periscope"
	icon_state = "periscope"

/datum/sprite_accessory/hair/bug_eyes/glorp
	name = "Glorp"
	icon_state = "glorp"

/datum/sprite_accessory/hair/bug_eyes/mellow_cap
	name = "Mellow Cap"
	icon_state = "mellowcap"

/datum/sprite_accessory/hair/bug_eyes/red_cap
	name = "Red Cap"
	icon_state = "redcap"

/datum/sprite_accessory/hair/bug_eyes/fun_guy
	name = "Fun Guy"
	icon_state = "funguy"

/datum/sprite_accessory/hair/bug_eyes/spanish_moss
	name = "Spanish Moss"
	icon_state = "spanishmoss"

/datum/sprite_accessory/hair/bug_eyes/shelflife
	name = "Shelflife"
	icon_state = "shelflife"
	do_colouration = TRUE

/datum/sprite_accessory/hair/bug_eyes/oak
	name = "Oak"
	icon_state = "oak"

/datum/sprite_accessory/hair/bug_eyes/thorns
	name = "Thorns"
	icon_state = "thorns"

/datum/sprite_accessory/hair/bug_eyes/stump
	name = "Stump"
	icon_state = "stump"

// TG-format hair - uses ICON_MULTIPLY instead of ICON_ADD
/datum/sprite_accessory/hair/balding
	icon = 'icons/mob/human_face/hair_multiply.dmi'
	icon_blend_mode = ICON_MULTIPLY
	name = "Balding"
	icon_state = "hair_balding"
	length = 0
	chatname = "balding hair"

/datum/sprite_accessory/hair/balding/balding_boddicker
	name = "Balding, Boddicker"
	icon_state = "hair_balding_boddicker"
	length = 1
	chatname = "balding hair"

/datum/sprite_accessory/hair/balding/bangs_light
	name = "Bangs, Light"
	icon_state = "hair_bangs_light"
	length = 2
	chatname = "long hair"

/datum/sprite_accessory/hair/balding/bob_alt
	name = "Bob, Alt"
	icon_state = "hair_bob_alt"
	length = 1
	chatname = "short hair"

/datum/sprite_accessory/hair/balding/braided_tail
	name = "Braided, Tail"
	icon_state = "hair_braided_tail"
	length = 2
	chatname = "braids"

/datum/sprite_accessory/hair/balding/bun_large
	name = "Bun, Large"
	icon_state = "hair_bun_large"
	length = 2
	chatname = "hair bun"

/datum/sprite_accessory/hair/balding/bun_librarian
	name = "Bun, Librarian"
	icon_state = "hair_bun_librarian"
	length = 2
	chatname = "hair bun"

/datum/sprite_accessory/hair/balding/bun_quad
	name = "Bun, Quad"
	icon_state = "hair_bun_quad"
	length = 2
	chatname = "hair buns"

/datum/sprite_accessory/hair/balding/bun_uniter
	name = "Bun, Uniter"
	icon_state = "hair_bun_uniter"
	length = 2
	chatname = "hair bun"

/datum/sprite_accessory/hair/balding/business
	name = "Business"
	icon_state = "hair_business"
	length = 1
	chatname = "short hair"

/datum/sprite_accessory/hair/balding/business2
	name = "Business 2"
	icon_state = "hair_business2"
	length = 1
	chatname = "short hair"

/datum/sprite_accessory/hair/balding/business3
	name = "Business 3"
	icon_state = "hair_business3"
	length = 1
	chatname = "short hair"

/datum/sprite_accessory/hair/balding/business4
	name = "Business 4"
	icon_state = "hair_business4"
	length = 1
	chatname = "short hair"

/datum/sprite_accessory/hair/balding/cactus
	name = "Cactus"
	icon_state = "hair_cactus"
	length = 3
	chatname = "very long hair"

/datum/sprite_accessory/hair/balding/choppy
	name = "Choppy"
	icon_state = "hair_choppy"
	length = 1
	chatname = "choppy hair"

/datum/sprite_accessory/hair/balding/fade
	name = "Fade"
	icon_state = "hair_fade"
	length = 1
	chatname = "groomed hair"

/datum/sprite_accessory/hair/balding/fade_grown
	name = "Fade, Grown"
	icon_state = "hair_fade_grown"
	length = 1
	chatname = "groomed hair"

/datum/sprite_accessory/hair/balding/floof
	name = "Floof"
	icon_state = "hair_floof"
	length = 2
	chatname = "fluffy hair"

/datum/sprite_accessory/hair/balding/floof_short
	name = "Floof, Short"
	icon_state = "hair_floof_short"
	length = 1
	chatname = "fluffy hair"

/datum/sprite_accessory/hair/balding/hair_antenna
	name = "Hair Antenna"
	icon_state = "hair_hairantenna"
	length = 2
	chatname = "long hair"

/datum/sprite_accessory/hair/balding/hedgehog
	name = "Hedgehog"
	icon_state = "hair_hedgehog"
	length = 1
	chatname = "short hair"

/datum/sprite_accessory/hair/balding/keanu
	name = "Keanu"
	icon_state = "hair_keanu"
	length = 1
	chatname = "short hair"

/datum/sprite_accessory/hair/balding/krewcut
	name = "Krewcut"
	icon_state = "hair_krewcut"
	length = 1
	chatname = "fringe"

/datum/sprite_accessory/hair/balding/poofy5
	name = "Poofy 5"
	icon_state = "hair_poofy5"
	length = 2
	chatname = "poofy hair"

/datum/sprite_accessory/hair/balding/nia2
	name = "Nia 2"
	icon_state = "hair_nia2"
	length = 3
	chatname = "long hair"

/datum/sprite_accessory/hair/balding/nia3
	name = "Nia 3"
	icon_state = "hair_nia3"
	length = 3
	chatname = "long hair"

/datum/sprite_accessory/hair/balding/parted_short
	name = "Parted, Short"
	icon_state = "hair_parted_short"
	length = 1
	chatname = "short hair"

/datum/sprite_accessory/hair/balding/pigtails_simple
	name = "Pigtails, Simple"
	icon_state = "hair_pigtails_simple"
	length = 2
	chatname = "pigtails"

/datum/sprite_accessory/hair/balding/pixie
	name = "Pixie"
	icon_state = "hair_pixie"
	length = 1
	chatname = "short hair"

/datum/sprite_accessory/hair/balding/pompadour_iii
	name = "Pompadour, Pomp III"
	icon_state = "hair_pomp_iii"
	length = 3
	chatname = "pompadour"

/datum/sprite_accessory/hair/balding/ponytail_high2
	name = "Ponytail, High 2"
	icon_state = "hair_ponytail_high2"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/balding/ponytail_jenjen
	name = "Ponytail, Jenjen"
	icon_state = "hair_ponytail_jenjen"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/balding/ponytail_side5
	name = "Ponytail, Side 5"
	icon_state = "hair_ponytail_side5"
	length  = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/balding/ponytail_side6
	name = "Ponytail, Side 6"
	icon_state = "hair_ponytail_side6"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/balding/ponytail_side7
	name = "Ponytail, Side 7"
	icon_state = "hair_ponytail_side7"
	length = 2
	chatname = "braided ponytail"

/datum/sprite_accessory/hair/balding/ponytail_straight
	name = "Ponytail, Straight"
	icon_state = "hair_ponytail_straight"
	length = 2
	chatname = "ponytail"

/datum/sprite_accessory/hair/balding/protagonist
	name = "Protagonist"
	icon_state = "hair_protagonist"
	length = 1
	chatname = "short hair"

/datum/sprite_accessory/hair/balding/punk_sideshaved
	name = "Punk Shave, Sideshaved"
	icon_state = "hair_punk_sideshaved"
	length = 1
	chatname = "unshaved hair"		//in reference to tugging the unshaved parts

/datum/sprite_accessory/hair/balding/short_spiked
	name = "Short Spiked"
	icon_state = "hair_short_spiked"
	length = 1
	chatname = "spiked hair"

/datum/sprite_accessory/hair/balding/sidepart
	name = "Sidepart"
	icon_state = "hair_sidepart"
	length = 1
	chatname = "short hair"

/datum/sprite_accessory/hair/balding/sidepart_long
	name = "Sidepart, Long"
	icon_state = "hair_sidepart_long"
	length = 3
	chatname = "long hair"

/datum/sprite_accessory/hair/balding/swept
	name = "Swept"
	icon_state = "hair_swept"
	length = 1
	chatname = "short hair"

/datum/sprite_accessory/hair/balding/swept_short
	name = "Swept, Short"
	icon_state = "hair_swept_short"
	length = 1
	chatname = "short hair"

/datum/sprite_accessory/hair/balding/swept_back
	name = "Swept, Back"
	icon_state = "hair_swept_back"
	length = 1
	chatname = "short hair"

/datum/sprite_accessory/hair/balding/superbowl
	name = "Bowl, Superbowl"
	icon_state = "hair_bowlcut_superbowl"
	length = 1
	chatname = "bowl cut"

/datum/sprite_accessory/hair/balding/taro
	name = "Taro"
	icon_state = "hair_taro"
	length = 2
	chatname = "long hair"

/datum/sprite_accessory/hair/balding/waxed
	name = "Waxed"
	icon_state = "hair_waxed"
	chatname = "bald head"

/datum/sprite_accessory/hair/balding/wavyshoulder
	name = "Wavy Shoulder (Down)"
	icon_state = "hair_wavyshoulder_down"
	length = 2
	chatname = "wavy hair"

/datum/sprite_accessory/hair/balding/wavyshoulder_pt
	name = "Wavy Shoulder (Ponytail)"
	icon_state = "hair_wavyshoulder_up"
	length = 2
	chatname = "ponytail"


/*
///////////////////////////////////
/  =---------------------------=  /
/  == Alien Style Definitions ==  /
/  =---------------------------=  /
///////////////////////////////////
*/

//Unathi Head-Bits

/datum/sprite_accessory/hair/una
	name = "Long Unathi Spines"
	icon_state = "soghun_longspines"

/datum/sprite_accessory/hair/una/spines_short
	name = "Short Unathi Spines"
	icon_state = "soghun_shortspines"

/datum/sprite_accessory/hair/una/frills_long
	name = "Long Unathi Frills"
	icon_state = "soghun_longfrills"

/datum/sprite_accessory/hair/una/frills_short
	name = "Short Unathi Frills"
	icon_state = "soghun_shortfrills"

/datum/sprite_accessory/hair/una/horns
	name = "Unathi Horns"
	icon_state = "soghun_horns"

/datum/sprite_accessory/hair/una/bighorns
	name = "Unathi Big Horns"
	icon_state = "unathi_bighorn"

/datum/sprite_accessory/hair/una/smallhorns
	name = "Unathi Small Horns"
	icon_state = "unathi_smallhorn"

/datum/sprite_accessory/hair/una/ramhorns
	name = "Unathi Ram Horns"
	icon_state = "unathi_ramhorn"

/datum/sprite_accessory/hair/una/sidefrills
	name = "Unathi Side Frills"
	icon_state = "unathi_sidefrills"

//Skrell 'hairstyles'

/datum/sprite_accessory/hair/skr
	name = "Skrell Average Tentacles"
	icon_state = "skrell_hair_average"

/datum/sprite_accessory/hair/skr/tentacle_veryshort
	name = "Skrell Short Tentacles"
	icon_state = "skrell_hair_short"

/datum/sprite_accessory/hair/skr/tentacle_average
	name = "Skrell Long Tentacles"
	icon_state = "skrell_hair_long"

/datum/sprite_accessory/hair/skr/tentacle_verylong
	name = "Skrell Very Long Tentacles"
	icon_state = "skrell_hair_verylong"

//Tajaran hairstyles
/datum/sprite_accessory/hair/taj
	name = "Tajaran Ears"
	icon_state = "ears_plain"

/datum/sprite_accessory/hair/taj/bangs
	name = "Tajaran Bangs"
	icon_state = "hair_bangs"

/datum/sprite_accessory/hair/taj/bangs_alt
	name = "Tajaran Bangs (Alt)"
	icon_state = "hair_bangs_alt"

/datum/sprite_accessory/hair/taj/short_fringe
	name = "Tajaran Short Fringe"
	icon_state = "hair_shortfringe"

/datum/sprite_accessory/hair/taj/braid
	name = "Tajaran Braid"
	icon_state = "hair_tbraid"

/datum/sprite_accessory/hair/taj/clean
	name = "Tajaran Clean"
	icon_state = "hair_clean"

/datum/sprite_accessory/hair/taj/gman
	name = "Tajaran G-Man"
	icon_state = "hair_gman"

/datum/sprite_accessory/hair/taj/greaser
	name = "Tajaran Greaser"
	icon_state = "hair_greaser"

/datum/sprite_accessory/hair/taj/bun
	name = "Tajaran Bun"
	icon_state = "hair_tajbun"

/datum/sprite_accessory/hair/taj/bunsmall
	name = "Tajaran Bun (Small)"
	icon_state = "hair_tajsmallbun"

/datum/sprite_accessory/hair/taj/bunlow
	name = "Tajaran Bun (Low)"
	icon_state = "hair_tajbunlow"

/datum/sprite_accessory/hair/taj/bunlowsmall
	name = "Tajaran Bun (Low, Small)"
	icon_state = "hair_tajbunlowsmall"

/datum/sprite_accessory/hair/taj/_wedge
	name = "Tajaran Wedge"
	icon_state = "hair_wedge"

/datum/sprite_accessory/hair/taj/shaggy
	name = "Tajaran Shaggy"
	icon_state = "hair_shaggy"

/datum/sprite_accessory/hair/taj/mohawk
	name = "Tajaran Mohawk"
	icon_state = "hair_mohawk"

/datum/sprite_accessory/hair/taj/plait
	name = "Tajaran Plait"
	icon_state = "hair_plait"

/datum/sprite_accessory/hair/taj/_sidepony
	name = "Tajaran Side Ponytail"
	icon_state = "hair_sidepony"

/datum/sprite_accessory/hair/taj/straight
	name = "Tajaran Straight"
	icon_state = "hair_straight"

/datum/sprite_accessory/hair/taj/long
	name = "Tajaran Long"
	icon_state = "hair_long"

/datum/sprite_accessory/hair/taj/tresses
	name = "Tajaran Tresses"
	icon_state = "hair_tresses"

/datum/sprite_accessory/hair/taj/shoulderparted
	name = "Tajaran Shoulder Parted"
	icon_state = "hair_shoulderparted"

/datum/sprite_accessory/hair/taj/shoulderpartedsmall
	name = "Tajaran Shoulder Parted (Small)"
	icon_state = "hair_shoulderpartedsmall"

/datum/sprite_accessory/hair/taj/shoulderpartedlong
	name = "Tajaran Shoulder Parted (Long)"
	icon_state = "hair_shoulderpartedlong"

/datum/sprite_accessory/hair/taj/sidepartedleft
	name = "Tajaran Side Parted (Left)"
	icon_state = "hair_sidepartedleft"

/datum/sprite_accessory/hair/taj/sidepartedright
	name = "Tajaran Side Parted (Right)"
	icon_state = "hair_sidepartedright"

/datum/sprite_accessory/hair/taj/shoulderlength
	name = "Tajaran Shoulder Length"
	icon_state = "hair_shoulderlength"

/datum/sprite_accessory/hair/taj/shoulderlengthalt
	name = "Tajaran Shoulder Length (Alt)"
	icon_state = "hair_shoulderlengthalt"

/datum/sprite_accessory/hair/taj/cascading
	name = "Tajaran Cascading"
	icon_state = "hair_cascading"

/datum/sprite_accessory/hair/taj/cascadingalt
	name = "Tajaran Cascading (Alt)"
	icon_state = "hair_cascadingalt"

/datum/sprite_accessory/hair/taj/rattail
	name = "Tajaran Rat Tail"
	icon_state = "hair_rattail"

/datum/sprite_accessory/hair/taj/spiky
	name = "Tajaran Spiky"
	icon_state = "hair_tajspiky"

/datum/sprite_accessory/hair/taj/fringeup
	name = "Tajaran Fringe Spike"
	icon_state = "hair_fringeup"

/datum/sprite_accessory/hair/taj/messy
	name = "Tajaran Messy"
	icon_state = "hair_messy"

/datum/sprite_accessory/hair/taj/curls
	name = "Tajaran Curly"
	icon_state = "hair_curly"

/datum/sprite_accessory/hair/taj/curlsalt
	name = "Tajaran Curly, alt"
	icon_state = "hair_curlyalt"

/datum/sprite_accessory/hair/taj/mane
	name = "Tajaran Mane"
	icon_state = "hair_mane"

/datum/sprite_accessory/hair/taj/wife
	name = "Tajaran Housewife"
	icon_state = "hair_wife"

/datum/sprite_accessory/hair/taj/victory
	name = "Tajaran Victory Curls"
	icon_state = "hair_victory"

/datum/sprite_accessory/hair/taj/bob
	name = "Tajaran Bob"
	icon_state = "hair_tbob"

/datum/sprite_accessory/hair/taj_ears_fingercurl
	name = "Tajaran Finger Curls"
	icon_state = "hair_fingerwave"

/datum/sprite_accessory/hair/dragonmane
	name = "Dragon Mane"
	icon_state = "hair_dragonmane"

/datum/sprite_accessory/hair/dragonmaneshort
	name = "Short Dragon Mane"
	icon_state = "hair_dragonmaneshort"

/datum/sprite_accessory/facial_hair
	icon = 'icons/mob/human_face_or_alt.dmi'
	icon_blend_mode = ICON_MULTIPLY

