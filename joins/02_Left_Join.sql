-- LEFT JOIN returns:

-- 1. All records from left table

-- 2. Matching records from right table

-- 3. If no match → NULL values

-- 01_basic_left_join.sql
-- Basic LEFT JOIN

CREATE TABLE Students (
    student_id INT,
    name VARCHAR(50)
);

INSERT INTO Students VALUES
(1, 'Aman'),
(2, 'Riya'),
(3, 'Kunal');

CREATE TABLE Courses (
    student_id INT,
    course VARCHAR(50)
);

INSERT INTO Courses VALUES
(1, 'SQL'),
(2, 'Python');

SELECT 
    Students.name,
    Courses.course
FROM Students
LEFT JOIN Courses
ON Students.student_id = Courses.student_id;

-- 02_left_join_with_where.sql
-- LEFT JOIN with WHERE condition

SELECT 
    Students.name,
    Courses.course
FROM Students
LEFT JOIN Courses
ON Students.student_id = Courses.student_id
WHERE Courses.course IS NOT NULL;

-- 03_left_join_multiple_tables.sql
-- LEFT JOIN with multiple tables

CREATE TABLE Fees (
    student_id INT,
    fees_paid VARCHAR(10)
);

INSERT INTO Fees VALUES
(1, 'Yes'),
(2, 'No');

SELECT 
    Students.name,
    Courses.course,
    Fees.fees_paid
FROM Students
LEFT JOIN Courses
ON Students.student_id = Courses.student_id
LEFT JOIN Fees
ON Students.student_id = Fees.student_id;

-- 04_left_join_with_aggregation.sql
-- LEFT JOIN with COUNT

SELECT 
    Students.name,
    COUNT(Courses.course) AS total_courses
FROM Students
LEFT JOIN Courses
ON Students.student_id = Courses.student_id
GROUP BY Students.name;

-- 05_left_join_real_world.sql
-- Real-world example (Customers & Orders)

CREATE TABLE Customers (
    customer_id INT,
    name VARCHAR(50)
);

INSERT INTO Customers VALUES
(1, 'Rahul'),
(2, 'Sneha'),
(3, 'Amit');

CREATE TABLE Orders (
    order_id INT,
    customer_id INT,
    amount INT
);

INSERT INTO Orders VALUES
(101, 1, 500),
(102, 1, 300),
(103, 2, 700);

SELECT 
    Customers.name,
    Orders.order_id,
    Orders.amount
FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.customer_id;

-- ✅ Key Points

-- * All records from LEFT table are included

-- * Non-matching rows → NULL

-- * Useful for finding missing data
