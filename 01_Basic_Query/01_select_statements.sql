/*
========================================
Topic: SELECT Statements
Description: Basic data retrieval queries in SQL
========================================

/*
Note:
- SELECT is used to retrieve data from a table.
*/

-- 1️⃣ Select all columns from a table
SELECT * FROM students;

-- 2️⃣ Select specific columns
SELECT name, age FROM students;

-- 3️⃣ Select with condition (WHERE)
SELECT name FROM students
WHERE age > 18;

-- 4️⃣ Select with ORDER BY
SELECT name, marks FROM students
ORDER BY marks DESC;

-- 5️⃣ Select with DISTINCT (remove duplicates)
SELECT DISTINCT city FROM students;

-- 6️⃣ Select with LIMIT (Top N records)
SELECT * FROM students
LIMIT 5;

-- 7️⃣ Select with alias
SELECT name AS student_name, marks AS student_marks
FROM students;

Examples:

Question:
Display all columns from the students table.

query - SELECT * FROM students;

Question:
Display only name and age from the students table.

query - SELECT name, age FROM students;

Question:
Display names of students who are older than 18.

query - SELECT name 
        FROM students
        WHERE age > 18;
