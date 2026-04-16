-- SQL FOREIGN KEY:

-- Definition:
-- A Foreign Key is a column (or set of columns) that creates a relationship between two tables by referring to the Primary Key of another table.

-- Properties:
-- 1. Maintains referential integrity  
-- 2. Can contain NULL values  
-- 3. Duplicate values are allowed  
-- 4. A table can have multiple foreign keys  
-- 5. Value must exist in the referenced (parent) table  

-- Syntax:

-- While Creating Table:
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Using CONSTRAINT:
CREATE TABLE orders (
    order_id INT,
    user_id INT,
    CONSTRAINT fk_user
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Example:
CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- `user_id` in orders must match `id` in users

-- Adding Foreign Key:

ALTER TABLE orders
ADD CONSTRAINT fk_user
FOREIGN KEY (user_id) REFERENCES users(id);

-- CASCADE:
FOREIGN KEY (user_id) REFERENCES users(id)
ON DELETE CASCADE

-- Deletes child rows automatically

-- SET NULL:
FOREIGN KEY (user_id) REFERENCES users(id)
ON DELETE SET NULL

-- Sets foreign key to NULL

ferential integrity  
