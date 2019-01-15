--1. zadatak.
CREATE TABLE Titles(
ID INT IDENTITY(1,1),
Title nvarchar(30),
)
INSERT INTO Titles
(Title)
Values
('Director'),('Vice President'),('Investment associate'),('Investment analyst')

CREATE TABLE Users(
ID INT IDENTITY(1,1),
FirstName nvarchar(30),
LastName nvarchar(30),
Oib nvarchar(11),
MobilePhoneNumber nvarchar(15),
Address nvarchar(50),
City nvarchar(30),
Country nvarchar(30),
PostalNumber nvarchar(50)
)

CREATE TABLE Transactions(
ID INT IDENTITY(1,1),
Date DateTime,
State bit not null
)
CREATE TABLE Employees(
ID INT IDENTITY(1,1),
FirstName nvarchar(30),
LastName nvarchar(30),
Title nvarchar(30),
Email nvarchar(50)
)
ALTER TABLE Users
ADD UNIQUE(Oib)

ALTER TABLE Transactions
ADD Description nvarchar(50)

ALTER TABLE Employees
ADD NotesOf nvarchar(100)

INSERT INTO Users
(FirstName,LastName,Oib,MobilePhoneNumber,Address1,City,Country,PostalNumber)
VALUES
('Bruce','Wayne','12345678901','0958157124',N'Krstulovića dvori 4','Gotham city','USA','21000'),
('Mali','Zeus','32132132101','0951231233','Put gitku 25','Split','Croatia','20000'),
('Jaca','Kosor','2131231231230','099666666','cesta bijelih udovica 69',N'Mokošica','Croatia','13332')

UPDATE Users
set
Address1 = 'Cesta sijedih udovica 69'
WHERE Oib='2131231231230'

INSERT INTO Transactions
(Date,State,Description)
VALUES
(2018/12/25,0,'Transaction not done'),
(2017/10/20,1,'Transaction done')

INSERT INTO Employees
(FirstName,LastName,Title,Email,Notes)
VALUES
('Stjepan',N'Mesić','Director','bratstipe@skole.hr','funny guy,likes to tell jokes'),
('Kristian', N'Žolo', 'Vice president','asassino94@gmail.com','great vice president')

DELETE FROM Users
WHERE Oib=12345678901

SELECT FirstName FROM Employees
WHERE FirstName LIKE '[a-g]%'
ORDER BY FirstName 



--2.Zadatak
SELECT TOP 50 CompanyName, ContactName, ContactTitle, Address, City, Phone FROM Customers

SELECT COUNT(CustomerID) CountOfCustomersWithDefinedFaxAndRegion FROM Customers
WHERE Fax IS NOT NULL AND Region IS NOT NULL

SELECT TOP 2 FirstName, LastName, Title,BirthDate FROM Employees
ORDER BY BirthDate ASC

SELECT * FROM Customers
WHERE CompanyName LIKE '__a%' AND  Address LIKE '[0-9]%'
ORDER BY Country ASC


SELECT TOP 1*FROM [Order Details]
ORDER BY Quantity DESC

SELECT COUNT(CustomerID) NumberOfCustomersWithoutOrders FROM Customers
WHERE not exists
(SELECT* FROM Orders WHERE Orders.CustomerID=Customers.CustomerID)

 








