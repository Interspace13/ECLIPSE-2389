/singleton/psionic_power/mend
	name = "Mend"
	desc = "Mend a creature's most critical wound. Each cast addresses the single most life-threatening injury present, \
			prioritising organ failure, arterial bleeding, and internal damage before surface wounds. \
			Repeated casts or conventional medicine are needed for full recovery."
	icon_state = "tech_biomedaura"
	point_cost = 2
	ability_flags = PSI_FLAG_ANTAG
	spell_path = /obj/item/spell/mend

/obj/item/spell/mend
	name = "mend"
	desc = "Clear!"
	icon_state = "mend_wounds"
	item_icons = null
	cast_methods = CAST_MELEE
	aspect = ASPECT_PSIONIC
	cooldown = 30 SECONDS
	psi_cost = 30

/obj/item/spell/mend/on_melee_cast(atom/hit_atom, mob/living/user, def_zone)
	if(!ishuman(hit_atom))
		return

	var/mob/living/carbon/human/H = hit_atom
	if(!H.has_zona_bovinae())
		to_chat(user, SPAN_WARNING("Psionic power cannot flow through this being."))
		return

	if(H.stat == DEAD || H.status_flags & FAKEDEATH)
		to_chat(user, SPAN_WARNING("Psionic power does not flow through a dead person."))
		return

	. = ..()
	if(!.)
		return

	var/self_heal = (H == user)
	if(self_heal)
		user.visible_message(SPAN_NOTICE("[user] presses a palm to [user.get_pronoun("his")] own chest, [user.get_pronoun("his")] eyes going distant."),
							SPAN_NOTICE("You press a palm to your chest and pour your psionic energy inward..."))
	else
		user.visible_message(SPAN_NOTICE("[user] lays a palm on [H]..."), SPAN_NOTICE("You lay your palm on [H] and get to work."))

	if(!do_mob(user, H, 3 SECONDS))
		return

	// Second check for death in case the target died DURING the doafter. You just weren't fast enough.
	if(H.stat == DEAD || H.status_flags & FAKEDEATH)
		to_chat(SPAN_WARNING("You sense [H]'s life slip through your fingers like water through a sieve, they are gone..."))
		return

	// Mend will prioritize and heal first whatever is most urgently going to cause your imminent death.
	// It does so by checking 5 different tiers of effect, in decreasing order of lethality timescales.
	// If it finds a suitable target to treat at each tier, it will treat that tier and then immediately stop.

	// TIER 1: Dead internal organs (max 1 per cast — heart failure kills fastest)
	// Fully reverses die(): clears the flag, zeroes damage via rejuvenate() (bypasses
	// can_recover()'s ORGAN_DEAD guard), and restarts SSprocessing which die() stopped.
	// Robotic organs (e.g. circulatory pumps) are skipped — psionic healing doesn't fix machines.
	for(var/obj/item/organ/O in H.internal_organs)
		if(BP_IS_ROBOTIC(O) || !(O.status & ORGAN_DEAD))
			continue

		O.status &= ~ORGAN_DEAD
		O.rejuvenate()
		START_PROCESSING(SSprocessing, O)
		finish_mend(user, H, self_heal, "failing [O.name]")
		return

	// Tiers 2-4 are each capped at the caster's psi rank to prevent a single cast
	// from being a full-body restore. PSI_RANK_HARMONIOUS (2) is the standard antag rank.
	var/rank_limit = owner.psi.get_rank()

	// TIER 2: Arterial cuts (up to rank_limit — blood loss kills fast)
	var/list/fixed = list()
	for(var/obj/item/organ/external/O in H.bad_external_organs)
		if(length(fixed) >= rank_limit)
			break

		if(BP_IS_ROBOTIC(O) || !(O.status & ORGAN_ARTERY_CUT))
			continue

		O.status &= ~ORGAN_ARTERY_CUT
		fixed += "spliced artery in [O.name]"
	if(length(fixed))
		finish_mend(user, H, self_heal, english_list(fixed))
		return

	// TIER 3: Internal organ damage (up to rank_limit organs healed)
	var/healed_count = 0
	for(var/obj/item/organ/O in H.internal_organs)
		if(healed_count >= rank_limit)
			break

		if(BP_IS_ROBOTIC(O) || O.damage <= 0 && !(O.status & ORGAN_BROKEN))
			continue

		if(O.damage > 0)
			O.heal_damage(O.damage)
		if(O.status & ORGAN_BROKEN)
			O.status &= ~ORGAN_BROKEN
		if(O.organ_tag == BP_EYES && O.damage <= 5)
			H.sdisabilities &= ~BLIND
		healed_count++
	if(healed_count)
		finish_mend(user, H, self_heal, "[healed_count] internal organ\s")
		return

	// TIER 4: Broken bones (up to rank_limit — painful but not immediately deadly)
	for(var/obj/item/organ/external/O in H.bad_external_organs)
		if(length(fixed) >= rank_limit)
			break

		if(BP_IS_ROBOTIC(O) || !(O.status & ORGAN_BROKEN) || O.damage >= O.min_broken_damage * GLOB.config.organ_health_multiplier)
			continue

		O.status &= ~ORGAN_BROKEN
		fixed += "broken [O.name]"
	if(length(fixed))
		finish_mend(user, H, self_heal, english_list(fixed))
		return

	// TIER 5: Surface brute and burn (the least immediately lethal)
	var/healed_brute = 0
	var/healed_burn = 0
	for(var/obj/item/organ/external/O in H.organs)
		if(BP_IS_ROBOTIC(O))
			continue
		var/brute_before = O.brute_dam
		var/burn_before = O.burn_dam
		O.heal_damage(30, 30, internal = TRUE, robo_repair = FALSE)
		healed_brute += brute_before - O.brute_dam
		healed_burn += burn_before - O.burn_dam
	if(healed_brute > 0 || healed_burn > 0)
		finish_mend(user, H, self_heal, "physical trauma ([round(healed_brute)] brute, [round(healed_burn)] burn)")
		return

	// Nothing to heal.
	if(self_heal)
		to_chat(user, SPAN_NOTICE("You find nothing in yourself that needs mending."))
	else
		to_chat(user, SPAN_NOTICE("[H] has no injuries you can mend."))
	user.visible_message(SPAN_NOTICE("[user] raises their palm, looking unsatisfied."), SPAN_NOTICE(""))

/// Shared end-of-cast messaging for a successful mend.
/obj/item/spell/mend/proc/finish_mend(mob/living/user, mob/living/carbon/human/H, self_heal, what)
	if(self_heal)
		to_chat(user, SPAN_NOTICE("You mend your own [what]."))
		user.visible_message(SPAN_NOTICE("[user] raises their palm, looking more composed."), SPAN_NOTICE(""))
	else
		to_chat(user, SPAN_NOTICE("You mend [H]'s [what]."))
		user.visible_message(SPAN_NOTICE("[user] raises their palm from [H]."), SPAN_NOTICE("You raise your palm from [H], having finished your work."))
