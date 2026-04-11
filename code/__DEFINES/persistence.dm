/*#############################################
	Constants for the persistence subsystem
#############################################*/

#define PERSISTENT_DEFAULT_EXPIRATION_DAYS 30 // Default expire timespan for newly created persistent objects
#define PERSISTENT_EXPIRATION_CLEANUP_DELAY_DAYS 30 // Grace period for expired database entries before they get cleaned up.

/*#############################################
	Type definitions
#############################################*/

// These are hardcoded in database table ss13_persistent_type_definitions
#define PERSISTENT_TYPE_DEFINITION_GENERIC 1
#define PERSISTENT_TYPE_DEFINITION_HISTORY 2

/singleton/persistency_type_definition
	var/title = ""
	var/description = ""
	var/definition_type = 0

// Macro to create a new persistent type definition.
#define CREATE_PERSISTENT_TYPE_DEFINITION(TYPE, TITLE, DESCRIPTION, DEFINITION_TYPE) \
	/singleton/persistency_type_definition/##TYPE \
	{ \
		title = #TITLE; \
		description = #DESCRIPTION; \
		definition_type = #DEFINITION_TYPE; \
	}

// Singleton list of persistent type definitions, created by the macro above.
CREATE_PERSISTENT_TYPE_DEFINITION(generic, "Title", "A generic persistent object with no special properties.", PERSISTENT_TYPE_DEFINITION_GENERIC)
