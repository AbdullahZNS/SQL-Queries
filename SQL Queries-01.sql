/*
Practice Question: "Library Management System"

Task:
1. Create a database named academia (use a safety check so that it doesn't throw an error if it already exists).
2. Select the academia database to use.
3. Create a table named books inside this database with the following columns:
* book_id: Integer, Primary Key, and Auto Increment.
* title: Text/Name of the book (VARCHAR, max 100 characters), cannot be empty (NOT NULL).
* author: Author's name (VARCHAR, max 50 characters).
* price: Exact decimal number for book price (DECIMAL with total 5 digits and 2 digits after the decimal point).
* published_date: Date when the book was published (DATE).


4. Check the structure of the books table using the description command.
5. Insert at least two books into the books table with your own choice of values.
6. Write a query to view all columns and rows of the books table.

*/

CREATE DATABASE IF NOT EXISTS academia; 

USE academia;

CREATE TABLE books(
book_id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(100) NOT NULL,
author VARCHAR(50),
price DECIMAL(5,2),
published_date DATE
);

DESCRIBE books;

INSERT INTO books(title, author, price, published_date)
VALUES('Learning SQL', 'Alan Beaulieu', 45.00, '2020-04-16');

INSERT INTO books(title, author, price, published_date)
VALUES('SQL in 10 Minutes', 'Ben Forta', 30.00, '2019-12-20');

SELECT * FROM books;





