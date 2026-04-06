-- What are Constraints?
-- Constraints in SQL are rules applied to table columns to ensure data integrity, accuracy, and consistency.

-- NOT NULL:
-- The NOT NULL constraint ensures that a column cannot store NULL (empty) values.

-- Syntax:
CREATE TABLE students (
    id INT,
    name VARCHAR(50) NOT NULL
);

-- Example:
CREATE TABLE users (
    id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);

-- Key Points:
-- 1. NOT NULL is a column-level constraint
-- 2. It does not prevent duplicate values (use UNIQUE for that)
-- 3. A PRIMARY KEY column is automatically NOT NULL
-- 4. Default value can be used with NOT NULL

-- Using with DEFAULT:
CREATE TABLE employees (
    id INT,
    status VARCHAR(20) NOT NULL DEFAULT 'active'
);

