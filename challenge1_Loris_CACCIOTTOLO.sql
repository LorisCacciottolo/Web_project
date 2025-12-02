CREATE DATABASE ChallengeDB;
USE ChallengeDB;

CREATE TABLE Employees (
    EmpID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(40) NOT NULL,
    LastName VARCHAR(40) NOT NULL,
    Email VARCHAR(50) NOT NULL UNIQUE,
    JobTitle VARCHAR(40) NOT NULL,
    HireDate DATE NOT NULL,
    Salary DECIMAL(10,2) NOT NULL,
    CHECK (Salary >= 15000 AND Salary <= 50000)
);

CREATE TABLE Customers (
    CustID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(40) NOT NULL,
    LastName VARCHAR(40) NOT NULL,
    Email VARCHAR(50) NOT NULL UNIQUE,
    Province VARCHAR(40) NOT NULL DEFAULT 'Ontario',
    City VARCHAR(40) NOT NULL
);


INSERT INTO Employees (FirstName, LastName, Email, JobTitle, HireDate, Salary)
VALUES
('John', 'Smith', 'john.smith@email.com', 'Manager', '2020-03-15', 42000),
('Emma', 'Jones', 'emma.jones@email.com', 'Developer', '2021-08-10', 35000),
('Lucas', 'Brown', 'lucas.brown@email.com', 'Sales Rep', '2019-05-20', 28000);

INSERT INTO Customers (FirstName, LastName, Email, Province, City)
VALUES
('Laura', 'Miller', 'laura.miller@email.com', 'Ontario', 'Toronto'),
('Adam', 'Wilson', 'adam.wilson@email.com', 'Quebec', 'Montreal'),
('Sophie', 'Martin', 'sophie.martin@email.com', 'Ontario', 'Ottawa');

SELECT * FROM Employees;

SELECT AVG(Salary) AS AverageSalary
FROM Employees;


SELECT JobTitle, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY JobTitle;

UPDATE Customers
SET City = 'Quebec City'
WHERE CustID = 2;
