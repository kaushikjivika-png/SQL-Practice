-- 🔥 CORRELATED SUBQUERIES 

-- A correlated subquery is a subquery that refers to columns from the outer query and is executed repeatedly for each row processed by the outer query.

-- Syntax:
SELECT column1, column2
FROM table_name outer_alias
WHERE column_name operator (
    SELECT column_name
    FROM table_name inner_alias
    WHERE inner_alias.column = outer_alias.column
);

-- Table: employees(id, name, salary, department_id)

-- 1. Employees earning above their department average
SELECT e.name, e.salary, e.department_id
FROM employees e
WHERE e.salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department_id = e.department_id
);

-- 2. Highest salary in each department
SELECT e.name, e.salary, e.department_id
FROM employees e
WHERE e.salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE department_id = e.department_id
);

-- 3. Employees who are the lowest paid in their department
SELECT e.name, e.salary, e.department_id
FROM employees e
WHERE e.salary = (
    SELECT MIN(salary)
    FROM employees
    WHERE department_id = e.department_id
);

-- 4. Employees whose salary is above company average AND dept avg
SELECT e.name, e.salary
FROM employees e
WHERE e.salary > (
    SELECT AVG(salary) FROM employees
)
AND e.salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department_id = e.department_id
);

-- 5. Employees who have same salary as someone in their department
SELECT e.name
FROM employees e
WHERE EXISTS (
    SELECT 1
    FROM employees e2
    WHERE e.department_id = e2.department_id
    AND e.salary = e2.salary
    AND e.id <> e2.id
);
