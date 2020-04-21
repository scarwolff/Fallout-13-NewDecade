///signs///

/obj/machinery/light/kebab
	name = "Kebabtown sign"
	desc = "Р’С‹РіР»СЏРґРёС‚ РѕС‚РІСЂР°С‚РёС‚РµР»СЊРЅРѕ."
	eng_desc = "So awful..."
	icon_state = "Kebab0"
	base_state = "Kebab"
	icon = 'icons/fallout/objects/structures/kebabtown.dmi'
	fitting = "sign"
	brightness = 4
	active_power_usage = 50
	density = 1
	pass_flags = LETPASSTHROW
	light_color = LIGHT_COLOR_YELLOW
	light_type = null

/obj/machinery/light/kebab/break_light_tube()
	return 0

/obj/machinery/light/kebab_sign
	name = "Kebabtown"
	desc = "Р’С‹РіР»СЏРґРёС‚ РѕС‚РІСЂР°С‚РёС‚РµР»СЊРЅРѕ."
	eng_desc = "So awful..."
	icon_state = "kebab_sign0"
	base_state = "kebab_sign"
	icon = 'icons/fallout/objects/structures/kebabtown.dmi'
	fitting = "sign"
	brightness = 4
	active_power_usage = 50
	density = 0
	pass_flags = LETPASSTHROW
	light_color = LIGHT_COLOR_YELLOW
	light_type = null

/obj/machinery/light/kebab_sign/break_light_tube()
	return 0