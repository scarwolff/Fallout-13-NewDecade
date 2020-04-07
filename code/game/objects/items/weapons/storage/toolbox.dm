/obj/item/weapon/storage/toolbox
	name = "���� ��� ������������"
	desc = "������. ����� ���������."
	icon_state = "red"
	item_state = "toolbox_red"
	flags = CONDUCT
	force = 12
	throwforce = 12
	throw_speed = 2
	throw_range = 7
	w_class = WEIGHT_CLASS_BULKY
	materials = list(MAT_METAL = 500)
	origin_tech = "combat=1;engineering=1"
	attack_verb = list("robusted")
	hitsound = 'sound/weapons/smash.ogg'

/obj/item/weapon/storage/toolbox/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] robusts [user.p_them()]self with [src]! It looks like [user.p_theyre()] trying to commit suicide!</span>")
	return (BRUTELOSS)

/obj/item/weapon/storage/toolbox/emergency
	name = "���� ��� ������������"
	icon_state = "red"
	item_state = "toolbox_red"

/obj/item/weapon/storage/toolbox/emergency/New()
	..()
	new /obj/item/weapon/crowbar/red(src)
	new /obj/item/weapon/weldingtool/mini(src)
	new /obj/item/weapon/extinguisher/mini(src)
	if(prob(50))
		new /obj/item/device/flashlight(src)
	else
		new /obj/item/device/flashlight/torch/flare(src)
	new /obj/item/device/radio/off(src)

/obj/item/weapon/storage/toolbox/mechanical
	name = "���� ��� ������������ ��������"
	icon_state = "blue"
	item_state = "toolbox_blue"

/obj/item/weapon/storage/toolbox/mechanical/New()
	..()
	new /obj/item/weapon/screwdriver(src)
	new /obj/item/weapon/wrench(src)
	new /obj/item/weapon/weldingtool(src)
	new /obj/item/weapon/crowbar(src)
	new /obj/item/weapon/wirecutters(src)

/obj/item/weapon/storage/toolbox/electrical
	name = "���� ��� ������������ ���������"
	icon_state = "yellow"
	item_state = "toolbox_yellow"

/obj/item/weapon/storage/toolbox/electrical/New()
	..()
	var/pickedcolor = pick("red","yellow","green","blue","pink","orange","cyan","white")
	new /obj/item/weapon/screwdriver(src)
	new /obj/item/weapon/wirecutters(src)
	new /obj/item/weapon/crowbar(src)
	new /obj/item/stack/cable_coil(src,30,pickedcolor)
	new /obj/item/stack/cable_coil(src,30,pickedcolor)
	if(prob(5))
		new /obj/item/clothing/gloves/color/yellow(src)
	else
		new /obj/item/stack/cable_coil(src,30,pickedcolor)

/obj/item/weapon/storage/toolbox/syndicate
	name = "������������� ���������� ���� ��� �����������"
	icon_state = "syndicate"
	item_state = "toolbox_syndi"
	origin_tech = "combat=2;syndicate=1;engineering=2"
	silent = 1
	force = 15
	throwforce = 18

/obj/item/weapon/storage/toolbox/syndicate/New()
	..()
	new /obj/item/weapon/screwdriver/nuke(src)
	new /obj/item/weapon/wrench(src)
	new /obj/item/weapon/weldingtool/largetank(src)
	new /obj/item/weapon/crowbar/red(src)
	new /obj/item/weapon/wirecutters(src, "red")
	new /obj/item/device/multitool(src)
	new /obj/item/clothing/gloves/combat(src)

/obj/item/weapon/storage/toolbox/drone
	name = "mechanical toolbox"
	icon_state = "blue"
	item_state = "toolbox_blue"

/obj/item/weapon/storage/toolbox/drone/New()
	..()
	var/pickedcolor = pick("red","yellow","green","blue","pink","orange","cyan","white")
	new /obj/item/weapon/screwdriver(src)
	new /obj/item/weapon/wrench(src)
	new /obj/item/weapon/weldingtool(src)
	new /obj/item/weapon/crowbar(src)
	new /obj/item/stack/cable_coil(src,30,pickedcolor)
	new /obj/item/weapon/wirecutters(src)
	new /obj/item/device/multitool(src)

/obj/item/weapon/storage/toolbox/brass
	name = "brass box"
	desc = "A huge brass box with several indentations in its surface."
	icon_state = "brassbox"
	w_class = WEIGHT_CLASS_HUGE
	max_w_class = WEIGHT_CLASS_NORMAL
	max_combined_w_class = 28
	storage_slots = 28
	slowdown = 1
	flags = HANDSLOW
	attack_verb = list("robusted", "crushed", "smashed")
	var/proselytizer_type = /obj/item/clockwork/clockwork_proselytizer/scarab

/obj/item/weapon/storage/toolbox/brass/prefilled/New()
	..()
	new proselytizer_type(src)
	new /obj/item/weapon/screwdriver/brass(src)
	new /obj/item/weapon/wirecutters/brass(src)
	new /obj/item/weapon/wrench/brass(src)
	new /obj/item/weapon/crowbar/brass(src)
	new /obj/item/weapon/weldingtool/experimental/brass(src)

/obj/item/weapon/storage/toolbox/brass/prefilled/ratvar
	var/slab_type = /obj/item/clockwork/slab/scarab

/obj/item/weapon/storage/toolbox/brass/prefilled/ratvar/New()
	..()
	new slab_type(src)

/obj/item/weapon/storage/toolbox/brass/prefilled/ratvar/admin
	slab_type = /obj/item/clockwork/slab/debug
	proselytizer_type = /obj/item/clockwork/clockwork_proselytizer/scarab/debug

/obj/item/weapon/storage/toolbox/rusty
	name = "������ ���� ��� ������������"
	desc = "������. ����� ������."
	icon_state = "toolbox_rusty"
	item_state = "toolbox_rusty"
	materials = list(MAT_METAL = 300)
	origin_tech = "combat=1;engineering=1"
	attack_verb = list("�������� ������")

/obj/item/weapon/storage/toolbox/rusty/New()
	..()
	new /obj/item/weapon/screwdriver(src)
	new /obj/item/weapon/wrench(src)
	new /obj/item/weapon/weldingtool(src)
	new /obj/item/weapon/crowbar(src)
	new /obj/item/weapon/wirecutters(src)