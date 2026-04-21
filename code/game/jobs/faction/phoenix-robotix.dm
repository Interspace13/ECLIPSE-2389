/datum/faction/phoenix_robotix
	name = "Phoenix-Robotix"
	description = {"
	Phoenix-Robotix is the leading voice in robotics and cybernetics, recently credited with the
	invention of near-perfect human-like artificial ingelligence.<br>
	They are also well-known and well-respected for their expansive private military branch,
	with a storied history in the application of their own technology.<br><br>
	Recently, the Solar Federation has been relying upon the Private Military sectors to fill out holes in their frontier-facing security,
	with Phoenix-Robotix being their main contractor. It's no surprise that P-R would jump to securing
	a truly concrete security deal with the Federation underneath the newly-formed Hyperian.
	"}
	departments = list(DEPARTMENT_SCIENCE, DEPARTMENT_SECURITY)
	title_suffix = "PHR"
	wiki_page = "Private_Military_Contracting_Group"

	allowed_role_types = PHR_ROLES

	allowed_species_types = list(
		/datum/species/human,
		/datum/species/skrell,
		/datum/species/tajaran,
		/datum/species/unathi,
		/datum/species/machine
	)

	job_species_blacklist = list(
		"Corporate Liaison" = list(
			SPECIES_DIONA,
			SPECIES_DIONA_COEUS,
			SPECIES_VAURCA_WORKER,
			SPECIES_VAURCA_WARRIOR,
			SPECIES_VAURCA_ATTENDANT
		)
	)

	titles_to_loadout = list(
		"Security Officer" = /obj/outfit/job/officer/pmc,
		"Warden" = /obj/outfit/job/warden/pmc,
		"Security Cadet" = /obj/outfit/job/intern_sec/officer/pmc,
		"Investigator Intern" = /obj/outfit/job/intern_sec/forensics/pmc,
		"Investigator" =/obj/outfit/job/forensics/pmc,
		"Physician" = /obj/outfit/job/doctor/pmc,
		"Surgeon" = /obj/outfit/job/doctor/surgeon/pmc,
		"Pharmacist" = /obj/outfit/job/pharmacist/pmc,
		"Psychiatrist" = /obj/outfit/job/psychiatrist/pmc,
		"Psychologist" = /obj/outfit/job/psychiatrist/pmc,
		"Paramedic" = /obj/outfit/job/med_tech/pmc,
		"Medical Intern" = /obj/outfit/job/intern_med/pmc,
		"Corporate Reporter" = /obj/outfit/job/journalist/pmc,
		"Corporate Liaison" = /obj/outfit/job/representative/pmc,
		"Corporate Aide" = /obj/outfit/job/corporate_aide/pmc,
		"Assistant" = /obj/outfit/job/assistant/pmc,
		"Medical Orderly" = /obj/outfit/job/assistant/med_assistant/pmc,
		"Off-Duty Crew Member" = /obj/outfit/job/visitor/pmc,
		"Security Personnel" = /obj/outfit/job/officer/event/pmc,
		"Medical Personnel" = /obj/outfit/job/med_tech/event/pmc
	)

/obj/outfit/job/officer/pmc
	name = "Security Officer - PMC"

	uniform = /obj/item/clothing/under/rank/security/pmc
	id = /obj/item/card/id/pmc

	backpack_faction = /obj/item/storage/backpack/pmcg
	satchel_faction = /obj/item/storage/backpack/satchel/pmcg
	dufflebag_faction = /obj/item/storage/backpack/duffel/pmcg
	messengerbag_faction = /obj/item/storage/backpack/messenger/pmcg

/obj/outfit/job/warden/pmc
	name = "Warden - PMC"

	head = /obj/item/clothing/head/warden/pmc
	uniform = /obj/item/clothing/under/rank/warden/pmc
	suit = /obj/item/clothing/suit/storage/toggle/warden/pmc
	id = /obj/item/card/id/pmc
	glasses = /obj/item/clothing/glasses/sunglasses/sechud/aviator/pmc

	backpack_faction = /obj/item/storage/backpack/pmcg
	satchel_faction = /obj/item/storage/backpack/satchel/pmcg
	dufflebag_faction = /obj/item/storage/backpack/duffel/pmcg
	messengerbag_faction = /obj/item/storage/backpack/messenger/pmcg

/obj/outfit/job/intern_sec/officer/pmc
	name = "Security Cadet - PMC"

	uniform = /obj/item/clothing/under/rank/cadet/pmc
	id = /obj/item/card/id/pmc

	backpack_faction = /obj/item/storage/backpack/pmcg
	satchel_faction = /obj/item/storage/backpack/satchel/pmcg
	dufflebag_faction = /obj/item/storage/backpack/duffel/pmcg
	messengerbag_faction = /obj/item/storage/backpack/messenger/pmcg

/obj/outfit/job/intern_sec/forensics/pmc
	name = "Investigator Intern - PMC"

	uniform = /obj/item/clothing/under/rank/cadet/pmc
	id = /obj/item/card/id/pmc

	backpack_faction = /obj/item/storage/backpack/pmcg
	satchel_faction = /obj/item/storage/backpack/satchel/pmcg
	dufflebag_faction = /obj/item/storage/backpack/duffel/pmcg
	messengerbag_faction = /obj/item/storage/backpack/messenger/pmcg

/obj/outfit/job/forensics/pmc
	name = "Investigator - PMC"

	uniform = /obj/item/clothing/under/det/pmc
	suit = /obj/item/clothing/suit/storage/security/investigator/pmc
	id = /obj/item/card/id/pmc

	backpack_faction = /obj/item/storage/backpack/pmcg
	satchel_faction = /obj/item/storage/backpack/satchel/pmcg
	dufflebag_faction = /obj/item/storage/backpack/duffel/pmcg
	messengerbag_faction = /obj/item/storage/backpack/messenger/pmcg

/obj/outfit/job/doctor/pmc
	name = "Physician - PMC"

	uniform = /obj/item/clothing/under/rank/medical/pmc
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/pmc
	id = /obj/item/card/id/pmc
	shoes = /obj/item/clothing/shoes/sneakers/medsci/pmc

	backpack_faction = /obj/item/storage/backpack/pmcg
	satchel_faction = /obj/item/storage/backpack/satchel/pmcg
	dufflebag_faction = /obj/item/storage/backpack/duffel/pmcg
	messengerbag_faction = /obj/item/storage/backpack/messenger/pmcg

/obj/outfit/job/doctor/surgeon/pmc
	name = "Surgeon - PMC"

	uniform = /obj/item/clothing/under/rank/medical/surgeon/pmc
	suit = /obj/item/clothing/suit/storage/surgical_gown/pmc/alt
	id = /obj/item/card/id/pmc
	shoes = /obj/item/clothing/shoes/sneakers/medsci/pmc

	backpack_faction = /obj/item/storage/backpack/pmcg
	satchel_faction = /obj/item/storage/backpack/satchel/pmcg
	dufflebag_faction = /obj/item/storage/backpack/duffel/pmcg
	messengerbag_faction = /obj/item/storage/backpack/messenger/pmcg

/obj/outfit/job/pharmacist/pmc
	name = "Pharmacist - PMC"

	uniform = /obj/item/clothing/under/rank/medical/pharmacist/pmc
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/pmc
	id = /obj/item/card/id/pmc
	shoes = /obj/item/clothing/shoes/sneakers/medsci/pmc

	backpack_faction = /obj/item/storage/backpack/pmcg
	satchel_faction = /obj/item/storage/backpack/satchel/pmcg
	dufflebag_faction = /obj/item/storage/backpack/duffel/pmcg
	messengerbag_faction = /obj/item/storage/backpack/messenger/pmcg

/obj/outfit/job/psychiatrist/pmc
	name = "Psychiatrist - PMC"

	uniform = /obj/item/clothing/under/rank/medical/psych/pmc
	id = /obj/item/card/id/pmc
	shoes = /obj/item/clothing/shoes/sneakers/medsci/pmc

	backpack_faction = /obj/item/storage/backpack/pmcg
	satchel_faction = /obj/item/storage/backpack/satchel/pmcg
	dufflebag_faction = /obj/item/storage/backpack/duffel/pmcg
	messengerbag_faction = /obj/item/storage/backpack/messenger/pmcg

/obj/outfit/job/med_tech/pmc
	name = "Paramedic - PMC"

	head = /obj/item/clothing/head/softcap/pmc
	uniform = /obj/item/clothing/under/rank/medical/paramedic/pmc
	suit = /obj/item/clothing/suit/storage/toggle/para_jacket/pmc
	id = /obj/item/card/id/pmc

	backpack_faction = /obj/item/storage/backpack/pmcg
	satchel_faction = /obj/item/storage/backpack/satchel/pmcg
	dufflebag_faction = /obj/item/storage/backpack/duffel/pmcg
	messengerbag_faction = /obj/item/storage/backpack/messenger/pmcg

/obj/outfit/job/intern_med/pmc
	name = "Medical Intern - PMC"

	uniform = /obj/item/clothing/under/rank/medical/intern/pmc
	id = /obj/item/card/id/pmc
	shoes = /obj/item/clothing/shoes/sneakers/medsci/pmc

	backpack_faction = /obj/item/storage/backpack/pmcg
	satchel_faction = /obj/item/storage/backpack/satchel/pmcg
	dufflebag_faction = /obj/item/storage/backpack/duffel/pmcg
	messengerbag_faction = /obj/item/storage/backpack/messenger/pmcg

/obj/outfit/job/representative/pmc
	name = "PMC Corporate Liaison"

	head =  /obj/item/clothing/head/beret/corporate/pmc
	uniform = /obj/item/clothing/under/rank/liaison/pmc
	suit = /obj/item/clothing/suit/storage/liaison/pmc
	id = /obj/item/card/id/pmc
	accessory = /obj/item/clothing/accessory/tie/corporate/pmc
	suit_accessory = /obj/item/clothing/accessory/pin/corporate/pmc

	backpack_faction = /obj/item/storage/backpack/pmcg
	satchel_faction = /obj/item/storage/backpack/satchel/pmcg
	dufflebag_faction = /obj/item/storage/backpack/duffel/pmcg
	messengerbag_faction = /obj/item/storage/backpack/messenger/pmcg

/obj/outfit/job/corporate_aide/pmc
	name = "PMC Corporate Aide"

	id = /obj/item/card/id/pmc
	head = /obj/item/clothing/head/beret/corporate/pmc
	suit = /obj/item/clothing/suit/storage/toggle/corp/pmc

	backpack_faction = /obj/item/storage/backpack/pmcg
	satchel_faction = /obj/item/storage/backpack/satchel/pmcg
	dufflebag_faction = /obj/item/storage/backpack/duffel/pmcg
	messengerbag_faction = /obj/item/storage/backpack/messenger/pmcg

/obj/outfit/job/journalist/pmc
	name = "Corporate Reporter - PMC"

	uniform = /obj/item/clothing/under/librarian/pmc
	id = /obj/item/card/id/pmc

	backpack_faction = /obj/item/storage/backpack/pmcg
	satchel_faction = /obj/item/storage/backpack/satchel/pmcg
	dufflebag_faction = /obj/item/storage/backpack/duffel/pmcg
	messengerbag_faction = /obj/item/storage/backpack/messenger/pmcg

/obj/outfit/job/assistant/pmc
	name = "Assistant - PMC"

	id = /obj/item/card/id/pmc

	backpack_faction = /obj/item/storage/backpack/pmcg
	satchel_faction = /obj/item/storage/backpack/satchel/pmcg
	dufflebag_faction = /obj/item/storage/backpack/duffel/pmcg
	messengerbag_faction = /obj/item/storage/backpack/messenger/pmcg

/obj/outfit/job/assistant/med_assistant/pmc
	name = "Medical Orderly - PMC"

	id = /obj/item/card/id/pmc

	backpack_faction = /obj/item/storage/backpack/pmcg
	satchel_faction = /obj/item/storage/backpack/satchel/pmcg
	dufflebag_faction = /obj/item/storage/backpack/duffel/pmcg
	messengerbag_faction = /obj/item/storage/backpack/messenger/pmcg

/obj/outfit/job/visitor/pmc
	name = "Off-Duty Crew Member - PMC"

	id = /obj/item/card/id/pmc

	backpack_faction = /obj/item/storage/backpack/pmcg
	satchel_faction = /obj/item/storage/backpack/satchel/pmcg
	dufflebag_faction = /obj/item/storage/backpack/duffel/pmcg
	messengerbag_faction = /obj/item/storage/backpack/messenger/pmcg

/obj/outfit/job/officer/event/pmc
	name = "Security Personnel - PMC"

	uniform = /obj/item/clothing/under/rank/security/pmc
	id = /obj/item/card/id/pmc

	backpack_faction = /obj/item/storage/backpack/pmcg
	satchel_faction = /obj/item/storage/backpack/satchel/pmcg
	dufflebag_faction = /obj/item/storage/backpack/duffel/pmcg
	messengerbag_faction = /obj/item/storage/backpack/messenger/pmcg

/obj/outfit/job/med_tech/event/pmc
	name = "Medical Personnel - PMC"

	head = /obj/item/clothing/head/softcap/pmc
	uniform = /obj/item/clothing/under/rank/medical/paramedic/pmc
	suit = /obj/item/clothing/suit/storage/toggle/para_jacket/pmc
	id = /obj/item/card/id/pmc

	backpack_faction = /obj/item/storage/backpack/pmcg
	satchel_faction = /obj/item/storage/backpack/satchel/pmcg
	dufflebag_faction = /obj/item/storage/backpack/duffel/pmcg
	messengerbag_faction = /obj/item/storage/backpack/messenger/pmcg
