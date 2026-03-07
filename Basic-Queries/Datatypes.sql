1️⃣ Numeric Data Types

-- Integer type
CREATE TABLE numbers_example (
    id INT,
    age INT
);
-- SMALLINT

-- BIGINT

-- Decimal / Float type
CREATE TABLE salary_example (
    salary DECIMAL(10,2),
    percentage FLOAT
);

2️⃣ String Data Types

-- String Data Types

CREATE TABLE users (
    name VARCHAR(50),
    city CHAR(20),
    description TEXT
);

-- CHAR

-- VARCHAR

-- TEXT

3️⃣ Date and Time Data Types

-- Date and Time Data Types

CREATE TABLE orders (
    order_date DATE,
    order_time TIME,
    created_at DATETIME
);

-- DATE

-- TIME

-- DATETIME

-- TIMESTAMP

4️⃣ Boolean Data Type

-- Boolean Data Type

CREATE TABLE status_example (
    is_active BOOLEAN
);

-- Example: Student Table

CREATE TABLE students (
    student_id INT,
    name VARCHAR(50),
    age INT,
    marks DECIMAL(5,2),
    admission_date DATE
);
