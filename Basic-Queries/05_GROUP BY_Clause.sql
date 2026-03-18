-- The GROUP BY clause in SQL is used to group rows that have the same values in specified columns into summary rows.

-- It is commonly used with aggregate functions like:

-- COUNT()

-- SUM()

-- AVG()

-- MAX()

-- MIN()

-- Basic Syntax:
SELECT column_name, AGGREGATE_FUNCTION(column_name)
FROM table_name
GROUP BY column_name;

-- Example Table: Employees
  
-- ID	  Name	  Department	  Salary
-- 1   	Aman	      HR	       30000
-- 2   	Riya	      IT	       50000
-- 3   	Kunal	      HR	       35000
-- 4   	Simran	    IT	       60000

-- Example 1: Count employees in each department

SELECT Department, COUNT(*) AS Total_Employees
FROM Employees
GROUP BY Department;

-- Example 2: Average salary per department

SELECT Department, AVG(Salary) AS Avg_Salary
FROM Employees
GROUP BY Department;

-- Example 3: Multiple Columns in GROUP BY

SELECT Department, Salary
FROM Employees
GROUP BY Department, Salary;

-- GROUP BY with ORDER BY

SELECT Department, COUNT(*) AS Total
FROM Employees
GROUP BY Department
ORDER BY Total DESC;

-- GROUP BY with HAVING

SELECT Department, COUNT(*) AS Total
FROM Employees
GROUP BY Department
HAVING COUNT(*) > 1;

-- Important Rules:

-- 1. Every column in SELECT must either be:

-- * in the GROUP BY clause, or

-- * used inside an aggregate function.

-- 2. WHERE filters rows before grouping.

-- 3. HAVING filters rows after grouping.
