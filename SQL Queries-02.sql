/* 
====================================================================
Practice Question: "Online Tech Shop Management System"
====================================================================

Task:
1. Create a database named tech_shop (use a safety check so that it doesn't throw an error if it already exists).
2. Select the tech_shop database to use.
3. Create a table named products inside this database with the following columns:
   - product_id: Integer, Primary Key, and Auto Increment.
   - product_name: Name of the product (VARCHAR, max 100 characters), cannot be empty (NOT NULL).
   - category: Type/Category of the product (VARCHAR, max 50 characters).
   - price: Exact decimal number for product price (DECIMAL with total 7 digits and 2 digits after the decimal point).

4. Check the structure of the products table using the description command.
5. Insert the following real products into the products table:
   - 'Logitech Wireless Mouse', 'Accessories', 25.50
   - 'Mechanical Gaming Keyboard', 'Accessories', 85.00
   - 'Dell XPS 13 Laptop', 'Laptop', 1200.00
   - 'Sony Noise Canceling Headphones', 'Audio', 350.00
   - 'USB-C Fast Charger', 'Accessories', 15.00

6. Level 2 Filtering & Sorting Tasks:
   - Write a query to find all products with a price less than $50.00.
   - Write a query to view all products belonging to the 'Accessories' category.
   - Write a query to display product_name and price sorted from highest to lowest price.
*/


CREATE DATABASE IF NOT EXISTS tech_shop;

USE tech_shop;

CREATE TABLE products(
product_id INT PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR(100) NOT NULL,
category VARCHAR(50),
price DECIMAL(7,2)

);

DESCRIBE products;

INSERT INTO products(product_name, category, price)
VALUES('Logitech Wireless Mouse', 'Accessories', 25.50);

INSERT INTO products(product_name, category, price)
VALUES('Mechanical Gaming Keyboard', 'Accessories', 85.00);

INSERT INTO products(product_name, category, price)
VALUES( 'Dell XPS 13 Laptop', 'Laptop', 1200.00);


INSERT INTO products(product_name, category, price)
VALUES('Sony Noise Canceling Headphones', 'Audio', 350.00);

INSERT INTO products(product_name, category, price)
VALUES('USB-C Fast Charger', 'Accessories', 15.00);

SELECT * FROM products;

SELECT product_name, price
FROM products
WHERE price < 50.00;

SELECT * FROM products
WHERE category = 'Accessories';

SELECT product_name , price
FROM products 
ORDER BY price DESC;






