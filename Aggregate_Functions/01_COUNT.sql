-- Defination:
-- An aggregate function in SQL is a function that performs a calculation on a set of values and returns a single summarized result.

-- Common Aggregate Functions:

-- 1. COUNT() → counts number of rows
-- 2. SUM() → adds values
-- 3. AVG() → finds average
-- 4. MIN() → smallest value
-- 5. MAX() → largest value

-- COUNT Function:

-- Syntax:
SELECT AGGREGATE_FUNCTION(column_name)
FROM table_name;

-- COUNT() Function Examples

-- 1. Total number of rows
SELECT COUNT(*) 
FROM employees;

-- 2. Count of non-null values
SELECT COUNT(salary) 
FROM employees;

-- 3. Count distinct values
SELECT COUNT(DISTINCT department) 
FROM employees;

-- DISTINCT is used to remove duplicates from the table

-- 4. Using COUNT with condition
SELECT COUNT(*) 
FROM employees
WHERE salary > 50000;
