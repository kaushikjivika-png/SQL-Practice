-- What is UNIQUE?
-- The UNIQUE constraint ensures that all values in a column (or combination of columns) are distinct (no duplicates allowed).

-- It maintains data uniqueness in a table.

-- Syntax:
-- While Creating Table:
CREATE TABLE users (
    id INT,
    email VARCHAR(100) UNIQUE
);

-- Table-Level UNIQUE:
CREATE TABLE users (
    id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    CONSTRAINT unique_name UNIQUE (first_name, last_name)
);

-- Example:
CREATE TABLE students (
    id INT PRIMARY KEY,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15) UNIQUE
);
-- No two students can have same:

-- Email
-- Phone

-- Adding UNIQUE to Existing Table:
ALTER TABLE students
ADD CONSTRAINT unique_email UNIQUE (email);

