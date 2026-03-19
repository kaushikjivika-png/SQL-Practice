-- ============================================
-- INNER JOIN - SQL Practice
-- Author: Jivika
-- Description: INNER JOIN returns only matching
-- records from both tables
-- ============================================

-- 🔹 Example 1: Students & Courses

-- Table: students
-- student_id | name     | course_id
-- -----------|----------|----------
-- 1          | Aman     | 101
-- 2          | Riya     | 102
-- 3          | Kunal    | 103

-- Table: courses
-- course_id | course_name
-- ----------|--------------
-- 101       | SQL
-- 102       | Python
-- 104       | Data Science

SELECT 
    s.student_id,
    s.name,
    c.course_name
FROM students s
INNER JOIN courses c
ON s.course_id = c.course_id;


-- 🔹 Example 2: Orders & Customers

SELECT 
    o.order_id,
    c.customer_name,
    o.amount
FROM orders o
INNER JOIN customers c
ON o.customer_id = c.customer_id;


-- 🔹 Example 3: Employees & Departments

SELECT 
    e.emp_name,
    d.department_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;


-- ============================================
-- Notes:
-- INNER JOIN only returns rows where match exists
-- No match = row excluded
-- ============================================
