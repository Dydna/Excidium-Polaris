#define NISHTYAK_DELAY 1200
/obj/structure/toilet/parasha
  name = "BIDLOparasha X-1337"
  desc = "Cоздано при помощи древней технологии, чье истинное назначение так и осталось неопознанным. Чистите вилкой и получите свою награду."
  icon = 'hyntatmta/icons/obj/parasha.dmi'
  var/nishtyak_cooldown

/obj/structure/toilet/parasha/attackby(obj/item/I, mob/living/user, params)
	..()
	if(istype(I, /obj/item/weapon/kitchen/utensil/fork))
		if(!open)
			user.visible_message("<span class='notice'><B>[user]</B> скребет вилкой по зассанной крышке...</span>", "<span class='notice'>Ты поскреб вилкой по крышке сортира. Наверное, стоит ее открыть?</span>")
			return
		to_chat(user, "<span class='notice'>Вы начали чистить парашу вилкой. ЧИСТИ, ЧИСТИ!</span>")
		playsound(loc, 'sound/effects/slime_squish.ogg', 50, 1)
		if(do_after(user, 30, target = src))
			user.visible_message("<span class='notice'><B>[user]</B> чистит парашу!</span>", "<span class='notice'>Ты почистил парашу! Молодец! Чище она не стала...</span>")
			spawnloot(user)
			return

/obj/structure/toilet/parasha/proc/spawnloot(var/mob/living/petuh)
  var/chosen_nishtyak
  var/list/nishtyaks = list (
 //useless shit below
    prob(50);/obj/item/weapon/flame/lighter,
    prob(50);/obj/item/weapon/reagent_containers/glass/rag,
    prob(50);/obj/item/weapon/bedsheet,
    prob(50);/obj/item/weapon/coin/silver,
    prob(50);/obj/item/toy/balloon,
    prob(50);/obj/item/weapon/bikehorn,
    prob(50);/obj/item/weapon/pen/crayon/rainbow,
    prob(50);/obj/item/clothing/glasses/sunglasses,
    prob(50);/obj/item/weapon/cane,
    prob(50);/obj/item/clothing/head/collectable/tophat,
    prob(50);/obj/item/clothing/mask/balaclava,
    prob(50);/obj/item/weapon/storage/belt/champion,
    prob(50);/obj/item/clothing/head/ushanka,
    prob(50);/obj/item/clothing/mask/luchador,
    prob(50);/obj/item/clothing/head/bearpelt,
    prob(50);/obj/item/toy/balloon,
    prob(50);/obj/item/toy/syndicateballoon,
    prob(50);/obj/item/toy/katana,
    prob(50);/obj/item/clothing/gloves/color/yellow/fake,
    prob(50);/obj/item/weapon/reagent_containers/food/snacks/donkpocket,
    prob(50);/obj/item/clothing/head/cueball,
    prob(50);/obj/item/clothing/head/fedora,
    prob(50);/obj/item/clothing/head/fez,
    prob(50);/obj/item/pizzabox/meat,
    prob(50);/obj/item/clothing/head/kitty,
    prob(50);/obj/item/clothing/mask/fakemoustache,
    prob(50);/obj/item/clothing/mask/pig,
    prob(50);/obj/item/clothing/mask/horsehead,
//some of this maybe alright
    prob(30);/obj/item/weapon/material/kitchen/utensil/fork,
    prob(30);/obj/item/weapon/reagent_containers/food/drinks/bottle/rum,
    prob(30);/obj/item/weapon/reagent_containers/food/drinks/bottle/whiskey,
    prob(30);/obj/item/weapon/reagent_containers/food/drinks/cans/cola,
    prob(30);/obj/item/weapon/reagent_containers/food/drinks/cans/grape_juice,
    prob(30);/obj/item/weapon/reagent_containers/food/drinks/cans/sodawater,
    prob(20);/obj/item/weapon/material/knife/machete/hatchet,
    prob(30);/obj/item/clothing/gloves/yellow,
    prob(20);/obj/item/clothing/mask/breath,
    prob(20);/obj/item/weapon/screwdriver,
    prob(20);/obj/item/clothing/head/welding,
    prob(20);/obj/item/weapon/storage/backpack/clown,
//And this usefull or nice and shiny
    prob(13);/obj/item/device/pda,
    prob(12);/obj/item/device/assembly/prox_sensor,
    prob(12);/obj/item/device/assembly/timer,
    prob(12);/obj/item/device/assembly/igniter,
    prob(12);/obj/item/device/flashlight,
    prob(12);/obj/item/weapon/weldingtool/mini,
    prob(14);/obj/item/weapon/melee/classic_baton,
    prob(12);/obj/item/clothing/head/helmet/space,
    prob(11);/obj/item/weapon/tank/emergency_oxygen,
    prob(17);/obj/item/weapon/reagent_containers/food/snacks/monkeycube,
//Rare things
    prob(10);/obj/item/weapon/storage/box/monkeycubes,
    prob(10);/obj/item/clothing/head/collectable/petehat,
    prob(6);/obj/item/device/radio/off,
    prob(8);/obj/item/clothing/suit/space,
    prob(8);/obj/item/clothing/mask/gas,
    prob(6);/obj/item/weapon/grenade/smokebomb,
//FUCKING DANGEROUS SHIT
    prob(3);/obj/item/weapon/card/emag_broken,
    prob(3);/obj/item/clothing/under/contortionist/worn,
    prob(3);/obj/item/weapon/weldingtool/hugetank,
    prob(3);/obj/item/weapon/melee/baton/cattleprod,
    prob(1);/obj/item/weapon/material/twohanded/spear/foam,
    prob(1);/obj/item/weapon/storage/box/syndie_kit/space
  )

  if(nishtyak_cooldown > world.time)
    return

  chosen_nishtyak = pickweight(nishtyaks)
  new chosen_nishtyak(src.loc)
  petuh.visible_message("Вы слышите пронзительный стук со стороны параши.", "<span class='notice'>Ты услышал странный шум в бочке. Из параши что-то выплыло.</span>")
  playsound(src.loc, 'sound/effects/slosh.ogg', 50, 1)
  nishtyak_cooldown = world.time + NISHTYAK_DELAY
  return 1

#undef NISHTYAK_DELAY
