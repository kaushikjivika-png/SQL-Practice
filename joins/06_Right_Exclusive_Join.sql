-- Definition:

-- A Right Exclusive Join returns only those records from the right table that do NOT have any matching records in the left table.

-- Syntax:
SELECT *
FROM table1
RIGHT JOIN table2
ON table1.common_column = table2.common_column
WHERE table1.common_column IS NULL;

-- Example:
-- Tables:

table1 (Employees)

id	name
1  	 A
2  	 B
3	   C

table2 (Projects)

id	project
2	    X
3	    Y
4	    Z

-- Query:
SELECT *
FROM Employees e
RIGHT JOIN Projects p
ON e.id = p.id
WHERE e.id IS NULL;

-- Output:
id	project
4	    Z

-- Key Points:
  
-- 1. Based on RIGHT JOIN + filter
-- 2. Uses WHERE left_table.column IS NULL
-- 3. Opposite of Left Exclusive Join
-- 4. Useful for finding unmatched data in right table
