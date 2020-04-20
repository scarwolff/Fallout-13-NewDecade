/obj/vertibird_exit_door
	name = "��� ������"
	eng_name = "Exit Hatch"
	icon = 'icons/obj/doors/airlocks/survival/horizontal/survival.dmi'
	icon_state = "closed"
	anchored = 1
	density = 1

/obj/vertibird_exit_door/proc/eject(obj/I)
	if(!vertibird)
		return

	if(istype(I, /obj/vertibird_exit_door))
		if(usr.client && (usr.client.prefs.chat_toggles & CHAT_LANGUAGE))
			to_chat(usr, "Nice try.")
			return
		else
			to_chat(usr, "������� �������.")
			return

	if(vertibird:locked)
		if(usr.client && (usr.client.prefs.chat_toggles & CHAT_LANGUAGE))
			to_chat(usr, "Locked!")
			return
		else
			to_chat(usr, "�������!")
			return

	if(vertibird:inFly)
		if(usr.client && (usr.client.prefs.chat_toggles & CHAT_LANGUAGE))
			to_chat(usr, "YOU CAN'T GO OUT WHILE FLYING!")
			return
		else
			to_chat(usr, "�� �� ������ ����� ���� � ������!")
			return

	I.forceMove(vertibird:ejectTurf())

/obj/vertibird_exit_door/attack_hand(mob/user)
	eject(user)

/obj/vertibird_exit_door/MouseDrop_T(obj/O, mob/user)
	eject(O)