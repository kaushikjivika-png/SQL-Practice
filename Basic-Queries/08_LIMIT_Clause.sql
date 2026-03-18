-- The LIMIT clause is used to restrict the number of rows returned in a query result.

-- It is commonly used when you want to:

--1. Show only a few records

--2. Display top N results

--3. Improve query performance by limiting output

-- Basic Syntax:
SELECT column1, column2
FROM table_name
LIMIT number_of_rows;

-- Example

SELECT *
FROM employees
LIMIT 5;
-- This query returns only the first 5 rows from the employees table.

-- 3. LIMIT with ORDER BY

-- LIMIT is often used with ORDER BY to get top or bottom records.

-- Example

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 3;

-- 4. LIMIT with OFFSET

-- OFFSET is used to skip rows before starting to return rows.

-- Syntax

SELECT column_name
FROM table_name
LIMIT number_of_rows OFFSET number_of_rows_to_skip;

-- 5. Alternative Syntax (MySQL)

SELECT *
FROM employees
LIMIT offset, row_count;

-- 8. Example Table

id	 name	     salary
1	   Aman	     50000
2	   Riya	     60000
3  	 Kunal	   55000
4	   Simran	   70000

-- Query

SELECT *
FROM employees
LIMIT 2;

Query:
