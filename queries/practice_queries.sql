-- =====================================================
-- SQL Fundamentals Practice
-- Database: practice.db (customers, orders tables)
-- =====================================================

-- 1. Basic SELECT: view all customers
SELECT * FROM customers;

-- 2. Basic SELECT: view all orders
SELECT * FROM orders;

-- 3. WHERE: find customers from Mumbai
SELECT * FROM customers WHERE city = 'Mumbai';

-- 4. WHERE: find orders above 5000
SELECT * FROM orders WHERE amount > 5000;

-- 5. ORDER BY: sort orders by amount, highest first
SELECT * FROM orders ORDER BY amount DESC;