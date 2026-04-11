/**
 * Retrieve persistent data entries that haven't expired.
 * RETURN: List of JSON, with ID, author_ckey, type, content, x, y, z
 */
/datum/controller/subsystem/persistence/proc/upsertTypeDefinition(type, title, description, definition_type)
	PRIVATE_PROC(TRUE)
	if(!databaseCheckConnection("upsertTypeDefinition"))
		return

	var/datum/db_query/upsert_query = SSdbcore.NewQuery(
		"INSERT INTO ss13_persistent_type_definitions (type, title, description, definition_type) VALUES (:type, :title, :description, :definition_type) " +
		"ON DUPLICATE KEY UPDATE title = VALUES(title), description = VALUES(description)",
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
