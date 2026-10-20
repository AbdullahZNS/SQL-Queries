/*
====================================================================
Practice Question: "Electronics Store Advanced Filtering"
====================================================================

Task Setup:
1. Create a database named electronics_store (use a safety check so that it doesn't throw an error if it already exists).
2. Select the electronics_store database to use.
3. Create a table named products inside this database with the following columns:
   - product_id: Integer, Primary Key, and Auto Increment.
   - product_name: Name of the product (VARCHAR, max 100 characters), cannot be empty (NOT NULL).
   - category: Category of the product (VARCHAR, max 50 characters).
   - brand: Brand/Manufacturer name (VARCHAR, max 50 characters).
   - price: Exact decimal number for product price (DECIMAL with total 7 digits and 2 digits after decimal).

4. Check the structure of the products table using the description command.
5. Insert the following real products into the products table:
   - 'Logitech MX Master 3S Mouse', 'Accessories', 'Logitech', 99.99
   - 'Mechanical Gaming Keyboard', 'Accessories', 'Redragon', 45.00
   - 'Dell XPS 15 Laptop', 'Laptop', 'Dell', 1500.00
   - 'Apple MacBook Pro 14', 'Laptop', 'Apple', 1999.00
   - 'Sony WH-1000XM5 Headphones', 'Audio', 'Sony', 399.99
   - 'Anker USB-C Fast Charger', 'Accessories', 'Anker', 20.00
   - 'Samsung Curved Gaming Monitor', 'Display', 'Samsung', 280.00
   - 'Apple iPad Air', 'Tablet', 'Apple', 599.00

Level 2 Advanced Filtering Tasks:
1. Task 1 (AND Operator):
   - Write a query to find all products in the 'Accessories' category AND priced under $50.00.

2. Task 2 (BETWEEN Operator):
   - Write a query to display the product_name, brand, and price of products priced BETWEEN $100.00 and $600.00.

3. Task 3 (LIKE Operator):
   - Write a query to find all products whose product_name contains the word 'Gaming'.

4. Task 4 (ORDER BY + LIMIT):
   - Write a query to display the product_name and price of the TOP 3 most expensive products in the store.
====================================================================
*/

CREATE DATABASE IF NOT EXISTS electronics_store;

USE electronics_store;

CREATE TABLE products(
product_id INT PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR(100) NOT NULL,
category VARCHAR(50),
brand VARCHAR(50),
price DECIMAL(7,2)
);

DESCRIBE products;

INSERT INTO products(product_name, category, brand, price)
VALUES('Logitech MX Master 3S Mouse', 'Accessories', 'Logitech', 99.99);

INSERT INTO products(product_name, category, brand, price)
VALUES('Mechanical Gaming Keyboard', 'Accessories', 'Redragon', 45.00);

INSERT INTO products(product_name, category, brand, price)
VALUES('Dell XPS 15 Laptop', 'Laptop', 'Dell', 1500.00);

INSERT INTO products(product_name, category, brand, price)
VALUES('Apple MacBook Pro 14', 'Laptop', 'Apple', 1999.00);

INSERT INTO products(product_name, category, brand, price)
VALUES('Sony WH-1000XM5 Headphones', 'Audio', 'Sony', 399.99);

INSERT INTO products(product_name, category, brand, price)
VALUES('Anker USB-C Fast Charger', 'Accessories', 'Anker', 20.00);

INSERT INTO products(product_name, category, brand, price)
VALUES( 'Samsung Curved Gaming Monitor', 'Display', 'Samsung', 280.00);

INSERT INTO products(product_name, category, brand, price)
VALUES('Apple iPad Air', 'Tablet', 'Apple', 599.00);

SELECT * FROM products;

SELECT * FROM products
WHERE category = 'Accessories' && price < 50.00;

SELECT product_name, brand, price 
FROM products
WHERE price BETWEEN 100.00 AND 600.00;

SELECT * 
FROM products 
WHERE product_name LIKE '%Gaming%';

SELECT product_name, price 
FROM products
ORDER BY price DESC
LIMIT 3;











