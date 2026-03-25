-- Definition:

-- A Self Join is used to combine rows from the same table by treating it as two separate tables using aliases.

-- Why use Self Join?

-- 1. Compare rows within the same table
-- 2. Find relationships (like manager–employee)
-- 3. Detect duplicates
-- 4. Hierarchical data handling

-- Syntax:
SELECT a.column_name, b.column_name
FROM table_name a
JOIN table_name b
ON a.common_column = b.common_column;
-- a and b are aliase of same table

-- Example 1: Employee–Manager Relationship

-- Table: Employees

-- emp_id	 name 	manager_id
-- 1      	A	     NULL
-- 2 	      B       1
-- 3	      C       1
-- 4	      D	      2

-- Query:
SELECT e.name AS Employee, m.name AS Manager
FROM Employees e
LEFT JOIN Employees m
ON e.manager_id = m.emp_id;

-- Example 2: Finding Duplicate Records

SELECT a.name
FROM Employees a
JOIN Employees b
ON a.name = b.name AND a.emp_id <> b.emp_id;

👉 Finds duplicate names in the same table.

-- Key Points:
  
-- 1. Uses same table twice
-- 2. Requires aliases (very important)
-- 3. Works with any join type (INNER, LEFT, etc.)
-- 4. Common in real-world data analysis

