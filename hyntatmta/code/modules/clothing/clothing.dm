//Glasses
/obj/item/clothing/glasses/atmta
	icon = 'hyntatmta/icons/obj/clothing/glasses.dmi'
	icon_override = 'hyntatmta/icons/mob/eyes.dmi'

//Gloves
/obj/item/clothing/gloves/atmta
	icon = 'hyntatmta/icons/obj/clothing/gloves.dmi'
	icon_override = 'hyntatmta/icons/mob/hands.dmi'

//Head
/obj/item/clothing/head/atmta
	icon = 'hyntatmta/icons/obj/clothing/hats.dmi'
	icon_override = 'hyntatmta/icons/mob/head.dmi'

//Mask
/obj/item/clothing/mask/atmta
	icon = 'hyntatmta/icons/obj/clothing/masks.dmi'
	icon_override = 'hyntatmta/icons/mob/mask.dmi'

//Shoes
/obj/item/clothing/shoes/atmta
	icon = 'hyntatmta/icons/obj/clothing/shoes.dmi'
	icon_override = 'hyntatmta/icons/mob/feet.dmi'

//Suit
/obj/item/clothing/suit/atmta
	icon = 'hyntatmta/icons/obj/clothing/suits.dmi'
	icon_override = 'hyntatmta/icons/mob/suit.dmi'

//Under clothing
/obj/item/clothing/under/atmta
	icon = 'hyntatmta/icons/obj/clothing/uniforms.dmi'
	icon_override = 'hyntatmta/icons/mob/uniform.dmi'

//Spacesuit
//Note: Everything in modules/clothing/spacesuits should have the entire suit grouped together.
//      Meaning the the suit is defined directly after the corrisponding helmet. Just like below!
/obj/item/clothing/head/atmta/helmet/space
	name = "Space helmet"
	icon_state = "space"
	desc = "A special helmet designed for work in a hazardous, low-pressure environment."
	item_flags = STOPPRESSUREDAMAGE | THICKMATERIAL | AIRTIGHT
	item_state = "s_helmet"
	permeability_coefficient = 0.01
	armor = list(melee = 0, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 100, rad = 50)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELMET_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_SUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	species_restricted = list("exclude","Diona","Vox","Wryn")
	flash_protection = FLASH_PROTECTION_MAJOR
	//strip_delay = 50
	//put_on_delay = 50

/obj/item/clothing/suit/atmta/space
	name = "Space suit"
	desc = "A suit that protects against low pressure environments. Has a big 13 on the back."
	icon_state = "space"
	item_state = "s_suit"
	w_class = 4//bulky item
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.02
	item_flags = STOPPRESSUREDAMAGE | THICKMATERIAL
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	allowed = list(/obj/item/device/flashlight,/obj/item/weapon/tank)
	slowdown = 1
	armor = list(melee = 0, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 100, rad = 50)
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT|HIDETAIL
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	max_heat_protection_temperature = SPACE_SUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	//strip_delay = 80
	//put_on_delay = 80
	species_restricted = list("exclude","Diona","Vox","Wryn")

