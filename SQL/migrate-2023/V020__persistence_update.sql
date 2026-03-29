-- Updates to existing objects table
ALTER TABLE ss13_persistent_objects MODIFY COLUMN x int NOT NULL;
ALTER TABLE ss13_persistent_objects MODIFY COLUMN y int NOT NULL;
ALTER TABLE ss13_persistent_objects MODIFY COLUMN z int NOT NULL;
ALTER TABLE ss13_persistent_objects MODIFY COLUMN content MEDIUMTEXT NULL;

-- New persistent content types - Generics and records
CREATE TABLE ss13_persistent_type_definitions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR(128) NOT NULL UNIQUE,
    description varchar(256) NOT NULL,
    definition_type INT NOT NULL -- '1' for GENERIC, '2' for HISTORY
);

CREATE TABLE ss13_persistent_generics (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type int NOT NULL,
    attribute varchar(64) NULL,
    created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    expires_at datetime NOT NULL,
    content mediumtext NOT NULL,

    FOREIGN KEY 'fk_type_definition' (`type`) REFERENCES ss13_persistent_type_definitions(id),
    UNIQUE 'unique_record_source' (`type`, `attribute`),
    INDEX 'idx_attribute' ('attribute'),
    INDEX 'idx_expires_at' ('expires_at')
);

CREATE TABLE ss13_persistent_history (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type int NOT NULL,
    created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    attribute varchar(64) NULL,
    value varchar(64) NOT NULL,
    game_id varchar(30) NOT NULL,

    FOREIGN KEY 'fk_type_definition' (`type`) REFERENCES ss13_persistent_type_definitions(id),
    UNIQUE 'unique_record_source' (`created_at`, `value`),
    INDEX 'idx_created_at' ('created_at'),
    INDEX 'idx_attribute' ('attribute')
);
