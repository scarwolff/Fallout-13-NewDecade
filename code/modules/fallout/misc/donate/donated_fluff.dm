/mob/living/carbon/human/New()
	//AWWARE ITEMS
	spawn(10)
		SpawnItemByCKEYs(src)
	..()

//Ckey - ������ � ��������� �����.
/mob/proc/SpawnItemByCKEYs(mob/user)
	var/turf/T = get_turf(user.loc)
	if(user.ckey == "drnuke")
		to_chat(user, "������� ��� ���������� ������.")
		new /obj/item/weapon/gun/energy/disabler/fluff/angelofmercy(T)
		sleep(10)
	if(user.ckey == "ladyrainicorn")
		to_chat(user, "������� ��� ���������� ������.")
		new /obj/item/clothing/suit/jacket/sophie(T)
		sleep(10)
		new /obj/item/clothing/glasses/sunglasses(T)
		sleep(10)
		new /obj/item/weapon/melee/curator_whip/black(T)
		sleep(10)
		new /obj/item/weapon/gun/medbeam(T)
		sleep(10)
	if(user.ckey == "iwuna")
		to_chat(user, "DEBUG TEST - FLUFF SYSTEM.")
		new /obj/item/clothing/suit/jacket/sophie(T)
		sleep(10)
		new /obj/item/clothing/glasses/sunglasses(T)
		sleep(10)