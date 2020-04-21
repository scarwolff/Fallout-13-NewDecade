/mob/living/simple_animal/hostile/eyebot/virtual
	var/mob/living/carbon/human/pilot

/mob/living/simple_animal/hostile/eyebot/virtual/New()
	..()
	eyebots += src
	src.verbs += /mob/living/simple_animal/hostile/eyebot/virtual/proc/leave

/mob/living/simple_animal/hostile/eyebot/virtual/Del()
	..()
	eyebots -= src

/mob/living/simple_animal/hostile/eyebot/virtual/proc/enter(var/mob/user)
	if(ckey)
		if(client && (client.prefs.chat_toggles & CHAT_LANGUAGE))
			to_chat(user, "Eyebot already under control!")
			return
		else
			to_chat(user, "Р РѕР±РѕРіР»Р°Р· СѓР¶Рµ СѓРїСЂР°РІР»СЏРµС‚СЃСЏ РєРµРј-С‚Рѕ!")
			return

	pilot = user
	ckey = user.ckey

/mob/living/simple_animal/hostile/eyebot/virtual/proc/leave()
	set name = "Stop Control"
	set category = "EYEBOT"
	pilot.ckey = ckey

/mob/living/simple_animal/hostile/eyebot/virtual/death(gibbed)
	if(ckey)
		leave()

	eyebots -= src

	..(gibbed)