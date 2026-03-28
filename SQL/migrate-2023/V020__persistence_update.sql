-- Updates to existing objects table
ALTER TABLE ss13_persistent_objects MODIFY COLUMN x int NOT NULL;
ALTER TABLE ss13_persistent_objects MODIFY COLUMN y int NOT NULL;
ALTER TABLE ss13_persistent_objects MODIFY COLUMN z int NOT NULL;
ALTER TABLE ss13_persistent_objects MODIFY COLUMN content MEDIUMTEXT NULL;
