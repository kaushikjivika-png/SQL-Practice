-- =========================================
-- 📌 SELECT STATEMENT IN SQL
-- =========================================

-- 🔹 Definition:
-- SELECT statement is used to retrieve (fetch)
-- data from a database table.

-- It is the most commonly used SQL command.

-- =========================================
-- 🔹 Basic Syntax
-- =========================================
SELECT column_name
FROM table_name;

-- =========================================
-- 🔹 Select All Columns
-- =========================================
SELECT *
FROM employees;

-- 👉 Returns all columns from the table


-- =========================================
-- 🔹 Select Specific Columns
-- =========================================
SELECT name, salary
FROM employees;

-- 👉 Returns only selected columns


-- =========================================
-- 🔹 Using DISTINCT
-- =========================================
-- Removes duplicate values

SELECT DISTINCT department
FROM employees;

-- 👉 Returns unique department names


-- =========================================
-- 🔹 Using Aliases (AS)
-- =========================================
-- Renaming column names in output

SELECT name AS employee_name, salary AS emp_salary
FROM employees;


-- =========================================
-- 🔹 Using Expressions
-- =========================================
-- Perform calculations

SELECT name, salary, salary * 12 AS annual_salary
FROM employees;


-- =========================================
-- 🔹 Using WHERE with SELECT
-- =========================================
-- Filter records

SELECT *
FROM employees
WHERE salary > 50000;


-- =========================================
-- 🔹 Using ORDER BY
-- =========================================
-- Sort results

SELECT name, salary
FROM employees
ORDER BY salary ASC;   -- ascending

SELECT name, salary
FROM employees
ORDER BY salary DESC;  -- descending


-- =========================================
-- 🔹 Using LIMIT (MySQL / PostgreSQL)
-- =========================================
-- Restrict number of rows

SELECT *
FROM employees
LIMIT 5;

-- =========================================
-- 🔹 Using TOP (SQL Server)
-- =========================================
SELECT TOP 5 *
FROM employees;


-- =========================================
-- 🔹 Combining Clauses
-- =========================================
SELECT name, salary
FROM employees
WHERE department = 'IT'
ORDER BY salary DESC;


-- =========================================
-- 🔹 Important Points
-- =========================================
-- 1. SELECT is used to fetch data
-- 2. * means all columns
-- 3. DISTINCT removes duplicates
-- 4. WHERE filters rows
-- 5. ORDER BY sorts data
-- 6. LIMIT/TOP restrict output


-- =========================================
-- 🔹 Execution Order (Important for Interviews)
-- =========================================
-- FROM → WHERE → SELECT → ORDER BY → LIMIT


-- =========================================
-- 🔹 Practice Query
-- =========================================
SELECT name, salary
FROM employees
WHERE salary > 40000
ORDER BY salary DESC;
