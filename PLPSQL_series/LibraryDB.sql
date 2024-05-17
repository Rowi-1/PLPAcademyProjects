-- Step 1: Create the database
CREATE DATABASE IF NOT EXISTS LibraryDB;

-- Step 2: Use the newly created database
USE LibraryDB;

-- Step 3: Create the table "Books"
CREATE TABLE IF NOT EXISTS Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(255),
    Author VARCHAR(255),
    Genre VARCHAR(50),
    PublicationYear INT
);

-- Step 4: Populate the table with sample data
INSERT INTO Books (BookID, Title, Author, Genre, PublicationYear) VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 1925),
(2, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1960),
(3, '1984', 'George Orwell', 'Science Fiction', 1949),
(4, 'Harry Potter and the Philosopher''s Stone', 'J.K. Rowling', 'Fantasy', 1997),
(5, 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 1951),
(6, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 1937),
(7, 'Pride and Prejudice', 'Jane Austen', 'Romance', 1813),
(8, 'The Hunger Games', 'Suzanne Collins', 'Science Fiction', 2008),
(9, 'The Lord of the Rings', 'J.R.R. Tolkien', 'Fantasy', 1954),
(10, 'Brave New World', 'Aldous Huxley', 'Science Fiction', 1932),
(11, 'The Da Vinci Code', 'Dan Brown', 'Thriller', 2003),
(12, 'Wuthering Heights', 'Emily Bronte', 'Romance', 1847),
(13, 'The Picture of Dorian Gray', 'Oscar Wilde', 'Gothic Fiction', 1890),
(14, 'The Adventures of Sherlock Holmes', 'Arthur Conan Doyle', 'Mystery', 1892),
(15, 'Frankenstein', 'Mary Shelley', 'Gothic Fiction', 1818);

-- Task 1: Retrieve all columns for books published in the year 2020
SELECT * FROM Books WHERE PublicationYear = 2020;

-- Task 2: Find the distinct genres available in the Books table
SELECT DISTINCT Genre FROM Books;

-- Task 3: Alias the column Author as BookAuthor in a query result
SELECT BookID, Title, Author AS BookAuthor, Genre, PublicationYear FROM Books;
