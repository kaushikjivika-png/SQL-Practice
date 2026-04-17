-- CREATE TABLE

-- Definition:

-- CREATE TABLE is used to create a new table in a database.

-- Basic Syntax:
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype
);

-- Example:
CREATE TABLE students (
    id INT,
    name VARCHAR(50),
    age INT
);

-- With Constraints:
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT,
    email VARCHAR(100) UNIQUE
);

-- Common Constraints:
-- 1. PRIMARY KEY → Unique + Not Null
-- 2. NOT NULL → Cannot be empty
-- 3. UNIQUE → No duplicate values
-- 4. DEFAULT → Default value set
-- 5. FOREIGN KEY → Link with another table

-- Example with DEFAULT:
CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    status VARCHAR(20) DEFAULT 'active'
);
