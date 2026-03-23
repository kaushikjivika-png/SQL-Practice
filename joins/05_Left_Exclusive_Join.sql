-- Definition:

-- A LEFT EXCLUSIVE JOIN returns only those records from the left table that do NOT have a matching record in the right table.

-- Syntax:
SELECT *
FROM table1 t1
LEFT JOIN table2 t2
ON t1.common_column = t2.common_column
WHERE t2.common_column IS NULL;

-- Example:
-- Table1 (Students)
id	name
1    A
2 	 B
3 	 C

-- Table2 (Marks)
id	marks
1	   90
2	   80

-- Query:
SELECT s.*
FROM Students s
LEFT JOIN Marks m
ON s.id = m.id
WHERE m.id IS NULL;

-- Output:
id	name
3	   C

-- Key Points:
-- 1. Uses LEFT JOIN + WHERE right_table.column IS NULL
-- 2. Returns non-matching rows from left table only
-- 3. Useful for:
-- * Finding missing data
-- * Identifying unmatched records

