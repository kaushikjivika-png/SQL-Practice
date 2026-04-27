-- What is RENAME?
-- RENAME is used to change the name of:

-- Table
-- Column
-- Constraint

-- It does NOT affect data, only the name

-- 1. RENAME TABLE:

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

-- Example:
DROP TABLE students;

-- 👉 Deletes entire table + all data

-- 4. DROP CONSTRAINTS:

-- Drop PRIMARY KEY:
ALTER TABLE table_name
DROP PRIMARY KEY;

-- 5. DROP INDEX:
DROP INDEX index_name ON table_name;

-- 6. CASCADE:
ALTER TABLE students
DROP COLUMN dept_id CASCADE;
