USE CognizantDB;

-- Clear previous tables if they exist
DROP TABLE IF EXISTS online_orders;
DROP TABLE IF EXISTS customers;

-- 1. Create the parent Customer table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    city VARCHAR(50)
);

-- 2. Create the child Orders table (Connected via customer_id)
CREATE TABLE online_orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- 3. Insert mock data
INSERT INTO customers (first_name, city) VALUES 
('Megha', 'Delhi'), ('Amit', 'Mumbai'), ('Rohan', 'Delhi'), ('Sneha', 'Bangalore');

INSERT INTO online_orders (customer_id, order_date, amount) VALUES 
(1, '2026-05-10', 1500.00),
(1, '2026-05-12', 750.00),
(2, '2026-05-15', 3200.00),
(3, '2026-05-18', 450.00);