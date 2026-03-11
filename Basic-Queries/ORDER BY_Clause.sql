-- The ORDER BY clause in SQL is used to sort the result of a query in either ascending or descending order.
-- By default, SQL sorts data in ascending order (ASC).

-- Basic Syntax:
SELECT column1, column2
FROM table_name
ORDER BY column_name;

-- Sorting in Ascending Order (ASC)
SELECT name, marks
FROM students
ORDER BY marks ASC;

-- Sorting in Descending Order (DESC)
SELECT name, marks
FROM students
ORDER BY marks DESC;

-- Ordering by Multiple Columns
SELECT name, city, marks
FROM students
ORDER BY city ASC, marks DESC;

-- Ordering by Column Position
SELECT name, age, marks
FROM students
ORDER BY 3 DESC;

-- Using ORDER BY with WHERE
SELECT name, marks
FROM students
WHERE marks > 70
ORDER BY marks DESC;

-- Using ORDER BY with LIMIT
SELECT name, marks
FROM students
ORDER BY marks DESC
LIMIT 5;

-- Ordering Text Data
SELECT name
FROM students
ORDER BY name ASC;

-- Ordering by Calculated Values
SELECT name, marks, marks + 5 AS updated_marks
FROM students
ORDER BY updated_marks DESC;

-- Using ORDER BY with GROUP BY
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
ORDER BY avg_salary DESC;


-- Example Table

-- id	  name	  marks
-- 1	  Aman	   78
-- 2	  Riya	   90
-- 3	  Kunal	   65

-- Query:
SELECT * FROM students
ORDER BY marks DESC;


