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

/// SCCV Shinohara master areas
/area/Shinohara
	name = "Shinohara (PARENT AREA - DON'T USE)"
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

/area/Shinohara/exterior
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
