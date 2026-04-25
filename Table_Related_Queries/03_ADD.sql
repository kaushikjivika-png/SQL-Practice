-- What is ADD?
-- ADD is used with ALTER TABLE to add new columns, constraints, or indexes to an existing table.

-- 1. ADD Column:

-- Basic Syntax
ALTER TABLE table_name
ADD column_name datatype;

-- Example:
ALTER TABLE students
ADD age INT;

-- Add Multiple Columns:
ALTER TABLE table_name
ADD (col1 datatype, col2 datatype);

-- Example:
ALTER TABLE students
ADD (city VARCHAR(50), phone VARCHAR(15));

-- Add Column with DEFAULT:
ALTER TABLE table_name
ADD column_name datatype DEFAULT value;

-- Example:
ALTER TABLE students
ADD country VARCHAR(50) DEFAULT 'India';

-- 2. ADD Constraints:

-- Add PRIMARY KEY:
ALTER TABLE table_name
ADD PRIMARY KEY (column_name);

-- Add FOREIGN KEY:
ALTER TABLE table_name
ADD CONSTRAINT fk_name
FOREIGN KEY (column_name)
REFERENCES parent_table(column_name);

-- Add UNIQUE:
ALTER TABLE table_name
ADD UNIQUE (column_name);

-- 3. ADD Index:

-- Basic Index:
ALTER TABLE table_name
ADD INDEX index_name (column_name);

-- Unique Index:
ALTER TABLE table_name
ADD UNIQUE index_name (column_name);
