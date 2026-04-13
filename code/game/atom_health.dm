/// The health of this atom. If this is null, it will set health to maxhealth on Initialize. Otherwise, you can set a custom health value to use at initialize.
/atom/var/health
/// The maximum health of this atom. If null, health is not used.
/atom/var/maxhealth
/// The sound played when this object is destroyed.
/atom/var/destroy_sound

/**
 * This proc is called to add damage to an atom. If there is no health left, it calls on_death().
 */
/atom/proc/add_damage(damage, damage_flags, damage_type, armor_penetration, obj/weapon)
	if(!damage || !maxhealth || (damage < 1))
		return FALSE

	var/datum/component/armor/armor = GetComponent(/datum/component/armor)
	if(armor)
		var/blocked = armor.get_blocked(damage_type, damage_flags, armor_penetration, damage)
		damage *= 1 - blocked

	health = max(health - damage, 0)
	update_health()
	if(!health)
		if(destroy_sound)
			playsound(src, destroy_sound, 75)
		on_death()
	return TRUE

/obj/condition_hints(mob/user, distance, is_adjacent)
	. += ..()
	if(health < maxhealth)
		. += get_damage_condition_hints(user, distance, is_adjacent)

/**
 * For custom damage condition hints. Some structures may want different ones than the default, like the cult crystal.
 */
/atom/proc/get_damage_condition_hints(mob/user, distance, is_adjacent)
	if(health < maxhealth * 0.25)
		. = SPAN_DANGER("\The [src] looks like it's about to break!")
	else if(health < maxhealth * 0.5)
		. = SPAN_ALERT("\The [src] looks seriously damaged!")
	else if(health < maxhealth * 0.75)
		. = SPAN_WARNING("\The [src] shows signs of damage!")

/**
 * This proc is called when atom health changes. Use this to set custom states, do messages, etc.
 */
/atom/proc/update_health()
	return

/**
 * This proc is called by update_health() when the health of the atom hits zero. Handles the destruction of the atom, or you can override it to do different effects.
 */
/atom/proc/on_death(damage, damage_flags, damage_type, armor_penetration, obj/weapon)
	qdel(src)

/**
 * This proc is called to set the atom's health directly.
 */
/atom/proc/change_health(new_health)
	if(!maxhealth)
		return

	if(health >= maxhealth)
		return FALSE

	health = min(new_health, maxhealth)
	return TRUE

/**
 * This proc is called to directly add to an atom's health (basically, to add it).
 */
/atom/proc/add_health(repair_amount)
	if(!maxhealth)
		return

	if(health >= maxhealth)
		return FALSE

	health = min(health + repair_amount, maxhealth)
	return TRUE
