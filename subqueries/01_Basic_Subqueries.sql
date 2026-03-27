-- Defination:
-- A subquery is a query inside another query.

-- Syntax:
SELECT name
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

-- 🔹 BASIC SUBQUERIES PRACTICE

-- Table assumed: employees(id, name, salary, department_id)

-- 1. Employees earning more than average salary
SELECT name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

-- 2. Employee with highest salary
SELECT name, salary
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);

-- 3. Employees working in department 'Sales'
SELECT name
FROM employees
WHERE department_id = (
    SELECT id
    FROM departments
    WHERE dept_name = 'Sales'
);

-- 4. Employees with salary less than minimum salary
SELECT name, salary
FROM employees
WHERE salary < (
    SELECT AVG(salary)
    FROM employees
);

-- 5. Find employees whose salary equals department average
SELECT name, salary
FROM employees
WHERE salary = (
    SELECT AVG(salary)
    FROM employees
);
