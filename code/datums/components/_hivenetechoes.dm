/datum/component/HiveEchoes
	var/islive = FALSE //Checks for living vaurcae on other side of procs
/datum/component/HiveEchoes/Initialize()
	. = ..()
	START_PROCESSING(SSprocessing, src)
	if(!parent)
		return
/datum/component/HiveEchoes/process(seconds_per_tick)
	var/static/last_broadcastEcho = 0
	var/static/last_projectionEcho = 0
	if(world.time >= (last_broadcastEcho + rand(180,300) SECONDS))
		GetBroadcastEcho(islive)
		last_broadcastEcho = world.time
	if(world.time >= (last_projectionEcho + rand(240,480) SECONDS))
		GetProjectionEcho(islive)
		last_projectionEcho = world.time
//This is really a performance trigger for the actual code at controllers/subsystems/processing/HivenetEchoes
