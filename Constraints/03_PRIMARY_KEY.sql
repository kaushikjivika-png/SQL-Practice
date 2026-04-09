-- SQL PRIMARY KEY (Notes):

-- Definition:
-- A Primary Key is a column (or set of columns) that uniquely identifies each row in a table.

---

-- Properties:
-- - Must be UNIQUE  
-- - Cannot contain NULL values  
-- - Only one Primary Key per table  
-- - Automatically creates an index  
-- - Can be single column or multiple columns (composite)  

---

-- Syntax:
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);
---

-- Composite Primary Key:

-- Syntax:
CREATE TABLE orders (
    user_id INT,
    product_id INT,
    PRIMARY KEY (user_id, product_id)
);
---

-- Example:
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100)
);

-- Important Points:

-- Primary Key = UNIQUE + NOT NULL  
-- Each table can have only one primary key  
-- Can consist of multiple columns  
-- Used to identify records uniquely  

---
