-- Step 1: Create a new MySQL database named "UniversityDB"
CREATE DATABASE UniversityDB;

-- Use the newly created database
USE UniversityDB;

-- Step 2: Design the "Students" table with the specified attributes
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,          -- Unique identifier for each student
    FirstName VARCHAR(50),              -- First name of the student
    LastName VARCHAR(50),               -- Last name of the student
    Age INT,                            -- Age of the student
    Major VARCHAR(50)                   -- Major field of study
);

-- Step 3: Insert at least 5 records into the "Students" table with sample data
INSERT INTO Students (StudentID, FirstName, LastName, Age, Major) VALUES
(1, 'John', 'Doe', 20, 'Computer Science'),
(2, 'Jane', 'Smith', 22, 'Biology'),
(3, 'Alice', 'Johnson', 21, 'Mathematics'),
(4, 'Bob', 'Brown', 23, 'History'),
(5, 'Carol', 'Davis', 19, 'Physics');

-- Step 4: Alter the "Students" table to add a new column named "GPA"
ALTER TABLE Students ADD COLUMN GPA DECIMAL(3, 2); -- GPA with 2 decimal precision

-- Step 5: Insert GPA values for the existing records in the "Students" table
UPDATE Students SET GPA = 3.5 WHERE StudentID = 1;
UPDATE Students SET GPA = 3.8 WHERE StudentID = 2;
UPDATE Students SET GPA = 3.6 WHERE StudentID = 3;
UPDATE Students SET GPA = 3.2 WHERE StudentID = 4;
UPDATE Students SET GPA = 3.9 WHERE StudentID = 5;

-- Step 6: Rename the table from "Students" to "EnrolledStudents"
ALTER TABLE Students RENAME TO EnrolledStudents;

-- Step 7: Create a new table named "Courses" with the specified attributes
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,           -- Unique identifier for each course
    CourseName VARCHAR(100),            -- Name of the course
    Instructor VARCHAR(100),            -- Instructor's name
    Credits INT                         -- Number of credits for the course
);

-- Step 8: Insert at least 3 records into the "Courses" table with sample data
INSERT INTO Courses (CourseID, CourseName, Instructor, Credits) VALUES
(1, 'Introduction to Computer Science', 'Dr. Alan Turing', 4),
(2, 'Organic Chemistry', 'Dr. Marie Curie', 3),
(3, 'Calculus I', 'Dr. Isaac Newton', 4);

-- Step 9: Drop the "EnrolledStudents" table from the database
DROP TABLE EnrolledStudents;
