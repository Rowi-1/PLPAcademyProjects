--Employees
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID) VALUES
(1, 'John', 'Doe', 1),
(2, 'Jane', 'Smith', 2),
(3, 'Alice', 'Johnson', NULL),
(4, 'Bob', 'Brown', 3),
(5, 'Eve', 'Davis', 2);

--Departments
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'HR'),
(2, 'Engineering'),
(3, 'Marketing');

--salaries

CREATE TABLE Salaries (
    EmployeeID INT,
    Salary DECIMAL(10, 2),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

INSERT INTO Salaries (EmployeeID, Salary) VALUES
(1, 50000.00),
(2, 75000.00),
(3, 60000.00),
(4, 90000.00),
(5, 85000.00);


