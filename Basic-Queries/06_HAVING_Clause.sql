-- The HAVING clause is used in SQL to filter results after aggregation (like COUNT, SUM, AVG, etc.). It’s usually used with GROUP BY.
-- The HAVING clause is used to filter groups of rows after applying aggregate functions.
-- It is used with the GROUP BY statement.

-- Syntax
SELECT column_name, AGG_FUNCTION(column_name)
FROM table_name
GROUP BY column_name
HAVING condition;

-- Example 1: Find departments with more than 2 employees
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;

-- Example 2: Find customers whose total purchase > 5000
SELECT customer_id, SUM(amount) AS total_spent
FROM orders
GROUP BY customer_id
HAVING SUM(amount) > 5000;

