-- The WHERE clause is used to filter rows from a table based on a condition.
-- It means:
-- "Show only the rows that satisfy this condition."

-- General Syntax:

SELECT column1, column2
FROM table_name
WHERE condition;

Example Table (Students)
  
ID	 NAME	   MARKS	   CITY
1	   Aman	    85	     Delhi
2	   Riya	    72	     Mumbai
3	   Kunal    90	     Delhi
4	   Simran   65	     Jaipur

-- Basic WHERE
-- ques - Show students from Delhi.

-- Query:

SELECT *
FROM students
WHERE CITY = 'Delhi';

-- WHERE with Numbers
-- ques - Show students with marks greater than 80

-- Query:

SELECT NAME, MARKS
FROM students
WHERE MARKS > 80;

-- WHERE with AND
-- ques - Find students who are from Delhi AND have marks above 80

-- Query:

SELECT *
FROM students
WHERE CITY = 'Delhi' AND MARKS > 80;

-- WHERE with OR
-- ques - Students from Delhi OR Mumbai

-- Query:

SELECT *
FROM students
WHERE CITY = 'Delhi' OR CITY = 'Mumbai';

-- WHERE with LIKE
-- ques - Find students whose name starts with "A".

-- Query:

SELECT *
FROM students
WHERE NAME LIKE 'A%';

-- WHERE with BETWEEN
-- ques - Students with marks between 70 and 90.

-- Query:

SELECT *
FROM students
WHERE MARKS BETWEEN 70 AND 90;
