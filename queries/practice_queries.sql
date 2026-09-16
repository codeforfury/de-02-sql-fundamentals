-- =====================================================
-- SQL Fundamentals Practice
-- Database: practice.db (customers, orders tables)
-- =====================================================

-- 1. Basic SELECT: view all customers
SELECT * 
FROM customers;

-- 2. Basic SELECT: view all orders
SELECT * 
FROM orders;

-- 3. WHERE: find customers from Mumbai
SELECT * 
FROM customers 
WHERE city = 'Mumbai';

-- 4. WHERE: find orders above 5000
SELECT * 
FROM orders 
WHERE amount > 5000;

-- 5. ORDER BY: sort orders by amount, highest first
SELECT * 
FROM orders 
ORDER BY amount DESC;

-- 6. GROUP BY: total amount spent per customer
SELECT customer_id, SUM(amount) as total_spent
FROM orders
GROUP BY customer_id;

-- 7. GROUP BY + COUNT: how many orders each customer has made
SELECT customer_id, COUNT(*) AS num_orders
FROM orders
GROUP BY customer_id;

-- 8. GROUP BY + AVG: average order amount per customer
SELECT customer_id, AVG(amount) AS avg_amt_per_customer
FROM orders
GROUP BY customer_id;

-- 9. GROUP BY + MIN/MAX: smallest and largest order per customer
SELECT customer_id, MIN(amount) AS min_amount, MAX(amount) AS max_amount
FROM orders
GROUP BY customer_id;

-- 10. GROUP BY + HAVING: customers with more than 1 order
SELECT customer_id, COUNT(*) AS num_of_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- 11. INNER JOIN: show each order with customer name and city
SELECT C.customer_id, C.name, O.order_id, O.product, C.city
FROM customers C INNER JOIN orders O 
ON C.customer_id = O.customer_id;

-- 12. LEFT JOIN: show all customers, with orders of they exist 
SELECT C.customer_id, C.name, O.order_id, O.product 
FROM customers C LEFT JOIN orders O 
ON C.customer_id = O.customer_id;