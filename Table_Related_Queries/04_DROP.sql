-- What is DROP?
-- DROP is used to delete database objects permanently like:

-- 1. Tables
-- 2. Columns
-- 3. Constraints
-- 4. Database

-- 1. DROP COLUMN:
-- ➤ Syntax:
ALTER TABLE table_name
DROP COLUMN column_name;

-- Example:
ALTER TABLE students
DROP COLUMN age;

-- 👉 Deletes column + all its data

-- 2. DROP TABLE:
-- ➤ Syntax:
DROP TABLE table_name;

--  Example:
DROP TABLE students;

-- 👉 Deletes entire table + all data

-- 3. DROP DATABASE:
DROP DATABASE database_name;

-- ⚠️ Deletes full database

-- 4. DROP CONSTRAINTS:

-- ➤ Drop PRIMARY KEY:
ALTER TABLE table_name
DROP PRIMARY KEY;

-- ➤ Drop FOREIGN KEY:
ALTER TABLE table_name
DROP FOREIGN KEY fk_name;

-- 5. DROP INDEX:
DROP INDEX index_name ON table_name;
