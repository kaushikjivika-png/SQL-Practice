-- Defination:
-- SUM() is an aggregate function used to calculate the total (addition) of a numeric column.

-- 🔹 Basic Syntax:
SELECT SUM(column_name)
FROM table_name;

-- Example:
SELECT SUM(salary)
FROM employees;

-- Returns total salary of all employees

-- SUM with WHERE condition:
SELECT SUM(salary)
FROM employees
WHERE department = 'IT';

-- Returns total salary of IT department only

-- SUM with GROUP BY:
SELECT department, SUM(salary)
FROM employees
GROUP BY department;

-- Returns total salary for each department

-- SUM with HAVING:
SELECT department, SUM(salary)
FROM employees
GROUP BY department
HAVING SUM(salary) > 50000;

-- Filters groups based on total sum

-- Handling NULL Values:
-- SUM() automatically ignores NULL values
SELECT SUM(COALESCE(salary, 0))
FROM employees;

-- SUM with DISTINCT:
SELECT SUM(DISTINCT salary)
FROM employees;

-- Adds only unique values

-- Key Points:
-- 1. Works only with numeric data
-- 2. Ignores NULL values
-- 3. Often used with GROUP BY
-- 4. Can be combined with WHERE and HAVING
