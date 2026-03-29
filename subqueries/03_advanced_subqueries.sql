-- ADVANCED SUBQUERIES 
-- Defination:
  
-- Advanced subqueries are subqueries that use complex logic like nested queries, correlated queries, aggregate functions, or operators such as EXISTS, ANY, and ALL to solve more advanced data problems.

-- Tables:
-- employees(id, name, salary, department_id)
-- departments(id, dept_name)
-- orders(id, customer_id)
-- customers(id, name)

-- 1. Second highest salary
SELECT MAX(salary) AS second_highest
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);

-- 2. Third highest salary
SELECT MAX(salary)
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
    WHERE salary < (
        SELECT MAX(salary)
        FROM employees
    )
);

-- 3. Customers who never placed orders
SELECT name
FROM customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.customer_id = c.id
);

-- 4. Departments with more employees than average department size
SELECT department_id
FROM employees
GROUP BY department_id
HAVING COUNT(*) > (
    SELECT AVG(emp_count)
    FROM (
        SELECT COUNT(*) AS emp_count
        FROM employees
        GROUP BY department_id
    ) AS dept_counts
);

-- 5. Employees working in departments with highest avg salary
SELECT name
FROM employees
WHERE department_id = (
    SELECT department_id
    FROM employees
    GROUP BY department_id
    ORDER BY AVG(salary) DESC
    LIMIT 1
);

-- 6. Using ANY
SELECT name, salary
FROM employees
WHERE salary > ANY (
    SELECT salary
    FROM employees
    WHERE department_id = 2
);

-- 7. Using ALL
SELECT name, salary
FROM employees
WHERE salary > ALL (
    SELECT salary
    FROM employees
    WHERE department_id = 2
);

-- 8. Employees whose salary is above average of all departments
SELECT name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

-- 9. Find duplicate salaries
SELECT salary
FROM employees
GROUP BY salary
HAVING COUNT(*) > 1;

-- 10. Employees with duplicate salaries (using subquery)
SELECT name, salary
FROM employees
WHERE salary IN (
    SELECT salary
    FROM employees
    GROUP BY salary
    HAVING COUNT(*) > 1
);
