-- 🔹 What is CHANGE COLUMN?
-- Used to modify an existing column, including:

-- 1. Rename column
-- 2. Change datatype
-- 3. Change constraints

-- 1. CHANGE COLUMN (MySQL):

-- ➤ Syntax:
ALTER TABLE table_name
CHANGE old_column new_column datatype;

-- 👉 You MUST specify datatype (even if not changing it)

-- ➤ Example (Rename column):
ALTER TABLE students
CHANGE marks score INT;

-- 2. MODIFY COLUMN (MySQL):

-- ➤ Syntax:
ALTER TABLE table_name
MODIFY column_name new_datatype;

-- 👉 Used when:

-- 1. You don’t want to rename
-- 2. Only change datatype or constraints

-- ➤ Example:
ALTER TABLE students
MODIFY age INT NOT NULL;

-- 3. ALTER COLUMN (PostgreSQL / SQL Server):

-- 👉 In PostgreSQL and SQL Server

-- ➤ Change datatype:
ALTER TABLE table_name
ALTER COLUMN column_name TYPE new_datatype;

-- ➤ Add NOT NULL:
ALTER TABLE table_name
ALTER COLUMN column_name SET NOT NULL;

-- ➤ Remove NOT NULL:
ALTER TABLE table_name
ALTER COLUMN column_name DROP NOT NULL;

-- 4. CHANGE DEFAULT Value:

-- ➤ Add default:
ALTER TABLE students
ALTER COLUMN age SET DEFAULT 18;

-- ➤ Remove default:
ALTER TABLE students
ALTER COLUMN age DROP DEFAULT;

-- 5. Add AUTO INCREMENT / IDENTITY:

-- ➤ MySQL:
ALTER TABLE students
MODIFY id INT AUTO_INCREMENT;

-- ➤ PostgreSQL:
ALTER TABLE students
ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY;
