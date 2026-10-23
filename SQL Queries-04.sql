/*
====================================================================
Practice Question: "Library Store DISTINCT, AS & OFFSET Practice"
====================================================================

Task Setup:
1. Create a database named library_store (use a safety check IF NOT EXISTS).
2. Select the library_store database to use.
3. Create a table named books inside this database with the following columns:
   - book_id: Integer, Primary Key.
   - title: Book title (VARCHAR, max 100 characters).
   - author: Author name (VARCHAR, max 50 characters).
   - genre: Book genre (VARCHAR, max 50 characters).
   - price: Book price (DECIMAL with total 6 digits and 2 digits after decimal).
   - stock: Available stock quantity (INT).

4. Insert the following books into the books table:
   - (1, 'Atomic Habits', 'James Clear', 'Self-Help', 15.99, 50)
   - (2, 'The Alchemist', 'Paulo Coelho', 'Fiction', 12.50, 40)
   - (3, 'Clean Code', 'Robert C. Martin', 'Programming', 35.00, 20)
   - (4, 'Deep Work', 'Cal Newport', 'Self-Help', 18.99, 30)
   - (5, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 'Finance', 14.99, 60)
   - (6, 'The Pragmatic Programmer', 'Andrew Hunt', 'Programming', 40.00, 15)
   - (7, 'Psychology of Money', 'Morgan Housel', 'Finance', 16.50, 45)
   - (8, 'JavaScript: The Good Parts', 'Douglas Crockford', 'Programming', 25.00, 25)

Practice Tasks:
1. Task 1 (DISTINCT):
   - Write a query to find all unique (`DISTINCT`) genres available in the books table.

2. Task 2 (AS / Alias):
   - Write a query to display `title` as `book_name` and `price` as `book_cost` for all books.

3. Task 3 (ORDER BY + LIMIT + OFFSET):
   - Write a query to sort all books by `price` in descending order, then skip the first 2 books and display the next 3 books.
====================================================================
*/

CREATE DATABASE IF NOT EXISTS library_store;

USE library_store;

DROP TABLE IF EXISTS books;
CREATE TABLE books(
book_id INT PRIMARY KEY,
title VARCHAR(100),
author VARCHAR(50),
genre VARCHAR(50),
price DECIMAL(6,2),
stock INT
);

INSERT INTO books(book_id, title, author, genre, price, stock)
VALUES(1, 'Atomic Habits', 'James Clear', 'Self-Help', 15.99, 50);

INSERT INTO  books(book_id, title, author, genre, price, stock)
VALUES(2, 'The Alchemist', 'Paulo Coelho', 'Fiction', 12.50, 40);

INSERT INTO  books(book_id, title, author, genre, price, stock)
VALUES(3, 'Clean Code', 'Robert C. Martin', 'Programming', 35.00, 20);

INSERT INTO  books(book_id, title, author, genre, price, stock)
VALUES(4, 'Deep Work', 'Cal Newport', 'Self-Help', 18.99, 30);

INSERT INTO  books(book_id, title, author, genre, price, stock)
VALUES(5, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 'Finance', 14.99, 60);

INSERT INTO books(book_id, title, author, genre, price, stock)
VALUES(6, 'The Pragmatic Programmer', 'Andrew Hunt', 'Programming', 40.00, 15);

INSERT INTO  books(book_id, title, author, genre, price, stock)
VALUES(7, 'Psychology of Money', 'Morgan Housel', 'Finance', 16.50, 45);

INSERT INTO  books(book_id, title, author, genre, price, stock)
VALUES(8, 'JavaScript: The Good Parts', 'Douglas Crockford', 'Programming', 25.00, 25);

SELECT * FROM books;

SELECT DISTINCT genre
FROM books;

SELECT title AS book_name, price AS book_cost
FROM books;

SELECT * FROM books
ORDER BY price DESC
LIMIT 3 OFFSET 2;

