-- 🔹 Definition

-- The MIN() function is an aggregate function used to return the smallest (minimum) value from a column.

-- Syntax:
SELECT MIN(column_name)
FROM table_name;

-- Example 1: Basic Usage
SELECT MIN(salary)
FROM employees;

-- Returns the lowest salary from the employees table.

-- Example 2: With WHERE Clause
SELECT MIN(salary)
FROM employees
WHERE department = 'IT';

-- Returns the minimum salary in the IT department.

-- Example 3: With GROUP BY
SELECT department, MIN(salary)
FROM employees
GROUP BY department;

-- Returns the minimum salary for each department.

-- Example 4: Using Alias
SELECT MIN(salary) AS lowest_salary
FROM employees;

-- Renames the output column to lowest_salary.

-- Key Points:
-- 1. Works with numeric, date, and even text columns
-- 2. Ignores NULL values
-- 3. Often used with:

-- MIN() with HAVING
SELECT department, MIN(salary)
FROM employees
GROUP BY department
HAVING MIN(salary) > 30000;

-- Shows departments where minimum salary is greater than 30000.

-- Important Note:
-- MIN() does not sort data — it directly finds the smallest value.

