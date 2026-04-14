/singleton/psionic_power/grip
	name = "Grip"
	desc = "Grip a victim with psionic energy, immobilising them as long as you sustain the hold. \
			Activate the spell in your hand to squeeze your grip and crush them. Click a held victim again to release them."
	icon_state = "ling_bioelectrogenesis"
	point_cost = 3
	ability_flags = PSI_FLAG_ANTAG
	spell_path = /obj/item/spell/grip

/obj/item/spell/grip
	name = "grip"
	desc = "General Kenobi..."
	icon_state = "blink"
	cast_methods = CAST_RANGED|CAST_USE
	aspect = ASPECT_PSIONIC
	cooldown = 20
	psi_cost = 10
	/// The mob we are currently holding.
	var/mob/living/victim
	/// Timestamp guard for the squeeze ability.
	var/next_squeeze_time = 0
	/// Sustain cost in psi stamina per second
	var/sustain_cost = 3

/obj/item/spell/grip/Destroy()
	release_victim()
	return ..()

/// Cleans up the victim reference and removes the immobilisation effect.
/obj/item/spell/grip/proc/release_victim()
	STOP_PROCESSING(SSprocessing, src)
	if(victim)
		victim.SetStunned(0)
		victim.update_canmove()
		victim = null

/// Sends a release message and cleans up.
/obj/item/spell/grip/proc/release(mob/user)
	if(!victim)
		return
	var/mob/living/old_victim = victim
	release_victim()
	if(user)
		to_chat(user, SPAN_NOTICE("You release your psionic grip."))
	to_chat(old_victim, SPAN_DANGER("The invisible force holding you vanishes!"))
	old_victim.visible_message(SPAN_WARNING("[old_victim] sags as the invisible force releases [old_victim.get_pronoun("him")]!"),
								SPAN_WARNING(""))

/obj/item/spell/grip/on_ranged_cast(atom/hit_atom, mob/user, bypass_psi_check)
	if(!isliving(hit_atom))
		return
	if(victim)
		// Clicking the current victim again releases the grip.
		if(hit_atom == victim)
			release(user)
			return
		to_chat(user, SPAN_WARNING("You can't grip more than one person at a time!"))
		return
	. = ..()
	if(!.)
		return

	var/mob/living/M = hit_atom

	if(!is_in_sight(user, M))
		to_chat(user, SPAN_WARNING("You don't have a direct line of sight to \the [M]!"))
		return

	victim = M
	START_PROCESSING(SSprocessing, src)

	user.visible_message(SPAN_DANGER("[user] extends [user.get_pronoun("his")] arm and makes a grab motion towards [M]!"),
						SPAN_DANGER("You extend your arm and grab [M] with your psionic energy!"))
	to_chat(M, SPAN_DANGER("You feel an invisible force tighten around you!"))

/obj/item/spell/grip/on_use_cast(mob/user, bypass_psi_check)
	if(!victim)
		to_chat(user, SPAN_WARNING("You need to grip someone first!"))
		return
	if(world.time < next_squeeze_time)
		return
	var/rangecheck = length(get_line(user, victim))
	if(!rangecheck || rangecheck > 8)
		to_chat(user, SPAN_WARNING("You've lost your grip on \the [victim] — they're too far away!"))
		release(user)
		return
	// Bypass the base psi check here so we can use pay_energy instead.
	. = ..(user, TRUE)
	if(!.)
		return

	if(!owner.psi.spend_power(10))
		to_chat(user, SPAN_WARNING("You don't have enough psionic energy to squeeze!"))
		return

	if(!is_in_sight(user, victim))
		to_chat(user, SPAN_WARNING("You don't have a direct line of sight to \the [victim]!"))
		return

	user.visible_message(SPAN_WARNING("[user] squeezes [user.get_pronoun("his")] hand!"),
						SPAN_WARNING("You squeeze your hand to tighten the psionic force around [victim]."))
	log_and_message_admins("[key_name(owner)] has psionically crushed [victim]", owner, get_turf(owner))
	to_chat(victim, SPAN_DANGER(FONT_HUGE("You are crushed by an invisible force!")))
	victim.apply_damage(20, DAMAGE_BRUTE, armor_pen = 15, def_zone = BP_HEAD)
	victim.SetStunned(20)
	apply_cooldown(user)
	next_squeeze_time = world.time + 2 SECONDS

/obj/item/spell/grip/process(seconds_per_tick)
	if(!victim || !owner)
		release_victim()
		return

	// Drop if the victim has died or gone unconscious in a way that makes continuing pointless.
	if(victim.stat == DEAD)
		release(owner)
		return

	// Drop if out of range or LOS.
	var/rangecheck = length(get_line(owner, victim))
	if(!rangecheck || rangecheck > 8 || !is_in_sight(owner, victim))
		to_chat(owner, SPAN_WARNING("You've lost your psionic grip on \the [victim] — your line of sight was broken!"))
		release(owner)
		return

	// Spend sustain cost. If we can't afford it, release.
	if(!owner.psi.spend_power(sustain_cost * seconds_per_tick))
		to_chat(owner, SPAN_DANGER("Your concentration falters — your grip slips!"))
		release(owner)
		return

	// Keep the victim immobilised.
	victim.SetStunned(30)
	victim.update_canmove()
