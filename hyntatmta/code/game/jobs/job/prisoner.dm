/datum/job/prisoner
	title = "D-Class Prisoner"
	flag = PRISONER
	department_flag = CIVILIAN
	total_positions = -1
	spawn_positions = -1
	supervisors = "security officers"
	selection_color = "#dddddd"
	access = list()
	minimal_access = list()
	prisonlist_job = 1
	outfit_type = /decl/hierarchy/outfit/job/prisoner

/decl/hierarchy/outfit/job/prisoner
	name = OUTFIT_JOB_NAME("D-class")
	shoes = /obj/item/clothing/shoes/orange
	uniform = /obj/item/clothing/under/color/orange
	pda_slot = slot_belt
	pda_type = /obj/item/device/pda