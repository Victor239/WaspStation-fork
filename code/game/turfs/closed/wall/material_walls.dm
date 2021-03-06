/turf/closed/wall/material
	name = "wall"
	desc = "A solid wall made out of a certain material"
	icon = 'icons/turf/walls/materialwall.dmi'
	icon_state = "wall"
	canSmoothWith = list(/turf/closed/wall/material)
	smooth = SMOOTH_TRUE
	material_flags = MATERIAL_ADD_PREFIX | MATERIAL_COLOR | MATERIAL_AFFECT_STATISTICS

/turf/closed/wall/material/break_wall()
	for(var/i in custom_materials)
		var/datum/material/M = i
		new M.sheet_type(src, FLOOR(custom_materials[M] / MINERAL_MATERIAL_AMOUNT, 1))
	return new girder_type(src)

/turf/closed/wall/material/devastate_wall()
	for(var/i in custom_materials)
		var/datum/material/M = i
		new M.sheet_type(src, FLOOR(custom_materials[M] / MINERAL_MATERIAL_AMOUNT, 1))
