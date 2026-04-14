/**
 * Insert or update a type definition in the database. If a type with the same name already exists, it will be updated with the new title and description.
 */
/datum/controller/subsystem/persistence/proc/typeDefinitionDatabaseUpsertType(type, title, description, definition_type)
	PRIVATE_PROC(TRUE)
	if(!databaseCheckConnection("upsertTypeDefinition"))
		return

	var/datum/db_query/upsert_query = SSdbcore.NewQuery(
		"INSERT INTO ss13_persistent_type_definitions (type, title, description, definition_type) VALUES (:type, :title, :description, :definition_type) \
		ON DUPLICATE KEY UPDATE title = VALUES(title), description = VALUES(description)",
		list(
			"type" = type,
			"title" = title,
			"description" = description,
			"definition_type" = definition_type
		)
	)
	upsert_query.Execute()

	databaseCheckQueryResult(upsert_query, "typesDatabaseUpsertTypeDefinition")
	qdel(upsert_query)
