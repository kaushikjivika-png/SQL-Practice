-- Definition:

-- The AVG() function is used to calculate the average (mean) value of a numeric column.

-- Syntax:
SELECT AVG(column_name)
FROM table_name;

-- Example:
SELECT AVG(salary)
FROM employees;

-- This returns the average salary of all employees.

-- Using with WHERE:
SELECT AVG(salary)
FROM employees
WHERE department = 'IT';

-- Average salary of employees in the IT department.

-- Using with GROUP BY:
SELECT department, AVG(salary)
FROM employees
GROUP BY department;

-- Average salary for each department.

-- Using with ROUND:
SELECT ROUND(AVG(salary), 2)
FROM employees;

-- Rounds the average to 2 decimal places.

-- AVG with DISTINCT:
SELECT AVG(DISTINCT salary)
FROM employees;

-- Calculates average of unique salary values only

-- Practice Example:
SELECT department, ROUND(AVG(salary), 1) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;
