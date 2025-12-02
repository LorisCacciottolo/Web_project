CREATE DATABASE IF NOT EXISTS CommercialDB;
USE CommercialDB;

CREATE TABLE Customers (
    CustID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(20),
    LastName VARCHAR(20),
    Email VARCHAR(50) NOT NULL UNIQUE,
    Province VARCHAR(40) NOT NULL,
    BirthDate DATE NOT NULL,
    City VARCHAR(40) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE Invoices (
    InvoiceID INT AUTO_INCREMENT PRIMARY KEY,
    CustID INT NOT NULL,
    InvoiceDate DATE NOT NULL,
    InvoiceNote TEXT,
    InvoiceDiscount DECIMAL(10,2),
    InvoiceTotal DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (CustID) REFERENCES Customers(CustID) ON DELETE CASCADE
) ENGINE=InnoDB;

INSERT INTO Customers (FirstName, LastName, Email, Province, BirthDate, City)
VALUES
('Alice','Moreau','alice.moreau@example.com','Ontario','1985-02-10','Toronto'),
('Bruno','Lefevre','bruno.lefevre@example.com','Quebec','1978-11-22','Montreal'),
('Clara','Nguyen','clara.nguyen@example.com','Ontario','1992-06-05','Ottawa'),
('David','Rossi','david.rossi@example.com','British Columbia','1980-09-30','Vancouver');

INSERT INTO Invoices (CustID, InvoiceDate, InvoiceNote, InvoiceDiscount, InvoiceTotal)
VALUES
(1,'2024-01-15','Website hosting','10.00',150.00),
(1,'2024-03-20','Domain renewal','0.00',20.00),
(2,'2024-02-10','Product purchase','5.00',250.00),
(3,'2024-04-01','Service fee','0.00',75.50),
(4,'2024-05-12','Subscription','0.00',99.99),
(2,'2024-06-18','Additional items','0.00',45.00);

ALTER TABLE Invoices DROP COLUMN InvoiceDiscount;

ALTER TABLE Customers MODIFY FirstName VARCHAR(40) NOT NULL;
ALTER TABLE Customers MODIFY LastName VARCHAR(40) NOT NULL;
ALTER TABLE Customers ADD Phone VARCHAR(20) NULL AFTER Email;

INSERT INTO Customers (FirstName, LastName, Email, Province, BirthDate, City, Phone)
VALUES
('Elena','Garcia','elena.garcia@example.com','Ontario','1995-12-11','Hamilton','(555) 111-2222');

INSERT INTO Invoices (CustID, InvoiceDate, InvoiceNote, InvoiceTotal)
VALUES
(5,'2024-07-01','Special order',199.95);

UPDATE Customers
SET City = 'Saint-Laurent'
WHERE CustID = 2;

UPDATE Invoices
SET InvoiceNote = 'Adjusted service fee', InvoiceTotal = 80.00
WHERE InvoiceID = 4;

SELECT CONCAT(FirstName, ' ', LastName) AS `Full Name`, i.InvoiceID, i.InvoiceDate, i.InvoiceNote, i.InvoiceTotal
FROM Customers c
INNER JOIN Invoices i ON c.CustID = i.CustID;

SELECT CONCAT(c.FirstName, ' ', c.LastName) AS `Full Name`, i.InvoiceTotal
FROM Invoices i
INNER JOIN Customers c ON i.CustID = c.CustID
WHERE i.InvoiceTotal = (SELECT MAX(InvoiceTotal) FROM Invoices);

SELECT CONCAT(FirstName, ' ', LastName) AS `Full Name`, BirthDate
FROM Customers
ORDER BY BirthDate ASC;

SELECT c.CustID, CONCAT(c.FirstName, ' ', c.LastName) AS `Full Name`, COUNT(i.InvoiceID) AS InvoiceCount
FROM Customers c
INNER JOIN Invoices i ON c.CustID = i.CustID
GROUP BY c.CustID, c.FirstName, c.LastName;

SELECT i.InvoiceID, i.InvoiceDate, i.InvoiceTotal, c.Email, c.Phone
FROM Invoices i
INNER JOIN Customers c ON i.CustID = c.CustID
WHERE i.InvoiceTotal > 100.00;
