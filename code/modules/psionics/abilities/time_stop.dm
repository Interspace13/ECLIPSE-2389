/singleton/psionic_power/time_stop
	name = "Time Stop"
	desc = "Freeze living beings around you in a 5x5 area. This ability is very expensive, so be careful."
	icon_state = "tech_control"
	point_cost = 2
	ability_flags = PSI_FLAG_ANTAG
	spell_path = /obj/item/spell/time_stop

/obj/item/spell/time_stop
	name = "time stop"
	desc = "Stop time around you."
	icon_state = "track"
	cast_methods = CAST_USE
	aspect = ASPECT_PSIONIC
	cooldown = 10
	psi_cost = 30
	/// Whether the time stop effect is currently active.
	var/active = FALSE

/obj/item/spell/time_stop/Destroy()
	if(active)
		active = FALSE
		STOP_PROCESSING(SSprocessing, src)
		for(var/mob/living/L in get_hearers_in_view(5, owner))
			if(L == owner)
				continue
			to_chat(L, SPAN_DANGER("Time around you returns to normal!"))
			L.AdjustStunned(-30)
			L.silent = max(0, L.silent - 30)
	return ..()

/obj/item/spell/time_stop/on_use_cast(mob/user)
	// Prevent queuing multiple activations.
	if(active)
		active = FALSE
		STOP_PROCESSING(SSprocessing, src)
		to_chat(user, SPAN_NOTICE("You release your hold on time."))
		for(var/mob/living/L in get_hearers_in_view(5, user))
			if(L == user)
				continue
			to_chat(L, SPAN_DANGER("Time around you returns to normal!"))
			L.AdjustStunned(-30)
			L.silent = max(0, L.silent - 30)
		return

	. = ..()
	if(!.)
		return

	user.visible_message(SPAN_DANGER(FONT_HUGE("[user] extends [user.get_pronoun("his")] arms to [user.get_pronoun("his")] sides!")),
						SPAN_DANGER("You extend your arms to your side and crystallize the Nlom around you!"))
	active = TRUE
	START_PROCESSING(SSprocessing, src)

/obj/item/spell/time_stop/process(seconds_per_tick)
	if(!active || !owner)
		active = FALSE
		STOP_PROCESSING(SSprocessing, src)
		return

	// Spend psi each tick. If we can't afford it, the effect ends.
	if(!owner.psi.spend_power(5 * seconds_per_tick))
		active = FALSE
		STOP_PROCESSING(SSprocessing, src)
		to_chat(owner, SPAN_DANGER("Your concentration falters — time resumes!"))
		for(var/mob/living/L in get_hearers_in_view(5, owner))
			if(L == owner)
				continue
			to_chat(L, SPAN_DANGER("Time around you returns to normal!"))
			L.SetStunned(0)
			L.silent = max(0, L.silent - 30)
		return

	// Freeze everyone nearby.
	for(var/mob/living/L in get_hearers_in_view(5, owner))
		if(L == owner)
			continue
		to_chat(L, SPAN_DANGER("Time around you slows down to a crawl..."))
		L.SetStunned(30)
		L.silent += 2
