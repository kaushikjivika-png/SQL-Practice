-- FULL JOIN (or FULL OUTER JOIN) returns all records from both tables:

-- Matching records from both tables are combined
-- Non-matching records from left table → NULL in right columns
-- Non-matching records from right table → NULL in left columns

-- Syntax:
SELECT * FROM Students
LEFT JOIN Marks ON Students.ID = Marks.ID

UNION

SELECT * FROM Students
RIGHT JOIN Marks ON Students.ID = Marks.ID;

-- Example Tables:

-- Table: Students
--  ID  |  Name
--  1   |  Aman
--  2   |  Riya
--  3   |  Kunal
  
-- Table: Marks
--  ID |  Marks
--  2  |  85
--  3  |  90
--  4  |  75

-- Query:

SELECT * FROM Students
LEFT JOIN Marks ON Students.ID = Marks.ID

UNION

SELECT * FROM Students
RIGHT JOIN Marks ON Students.ID = Marks.ID;

-- Output:

ID | Name  | Marks
1  | Aman  | NULL
2  | Riya  | 85
3  | Kunal | 90
4  | NULL  | 75
