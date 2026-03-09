-- Keys are used to identity the Table uniquely

-- 1. Primary Key :  It is used to identify the columns/rows uniquely. It does not accept Null and Duplicate values.
-- Syntax

CREATE TABLE students (
  id INT PRIMARY KEY,
  name VARCHAR(50)
);

-- 2. Foreign Key :   Foreign key is the primary of another Table. It creates relationship between two Tables.
-- syntax

CREATE TABLE Fees (
  Fee_id INT,
  student_id INT,
  FOREIGN KEY ( student_id)
  REFERENCE student (student_id)
);

-- 3. Unique Key :      In unique key no duplicates of values allowed. Mostly one Null value allowed.
-- syntax

CREATE TABLE user (
  user_id INT,
  email_id VARCHAR(50) UNIQUE
);
