-- Task 22: SQL Filtering Practice
-- Database: MySQL + Northwind sample database
-- Run each query separately. Confirm table/column names against your Northwind version.

USE northwind;

-- 1. WHERE: customers in a specific city
SELECT customer_id, company_name, city, country
FROM customers
WHERE city = 'London';

-- 2. WHERE with numeric comparison: products above a unit price
SELECT product_id, product_name, unit_price
FROM products
WHERE unit_price > 20
ORDER BY unit_price DESC;

-- 3. WHERE with AND: products in stock and not discontinued
SELECT product_id, product_name, units_in_stock, discontinued
FROM products
WHERE units_in_stock > 0 AND discontinued = 0
ORDER BY product_name;

-- 4. WHERE with OR: customers in either of two countries
SELECT customer_id, company_name, country
FROM customers
WHERE country = 'Germany' OR country = 'France'
ORDER BY country, company_name;

-- 5. IN: orders from selected ship countries
SELECT order_id, customer_id, ship_country, order_date
FROM orders
WHERE ship_country IN ('USA', 'Canada', 'Mexico')
ORDER BY order_date;

-- 6. IN: products in selected categories (Northwind category IDs)
SELECT product_id, product_name, category_id
FROM products
WHERE category_id IN (1, 2, 3)
ORDER BY category_id, product_name;

-- 7. BETWEEN: products within a price range
SELECT product_id, product_name, unit_price
FROM products
WHERE unit_price BETWEEN 10 AND 30
ORDER BY unit_price;

-- 8. BETWEEN: orders placed during calendar year 1997
SELECT order_id, customer_id, order_date
FROM orders
WHERE order_date BETWEEN '1997-01-01' AND '1997-12-31'
ORDER BY order_date;

-- 9. LIKE: customer company names beginning with A
SELECT customer_id, company_name
FROM customers
WHERE company_name LIKE 'A%'
ORDER BY company_name;

-- 10. LIKE: products containing 'choc' in the name
SELECT product_id, product_name
FROM products
WHERE product_name LIKE '%choc%'
ORDER BY product_name;

-- 11. LIKE: customers whose contact title contains 'Sales'
SELECT customer_id, company_name, contact_title
FROM customers
WHERE contact_title LIKE '%Sales%'
ORDER BY company_name;

-- 12. Combined filtering: affordable, available products with names beginning with C
SELECT product_id, product_name, unit_price, units_in_stock
FROM products
WHERE unit_price BETWEEN 5 AND 25
  AND units_in_stock > 0
  AND product_name LIKE 'C%'
ORDER BY unit_price, product_name;
