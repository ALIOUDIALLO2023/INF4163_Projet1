-- Creation de la table transaction 
CREATE TABLE Transactions (
    Transaction_ID FLOAT PRIMARY KEY,
    Date DATETIME NOT NULL,
    Product NVARCHAR(255) NOT NULL,
    Total_Items INT NOT NULL,
    Total_Cost DECIMAL(10, 2) NOT NULL,
    Payment_Method NVARCHAR(255) NOT NULL,
    Season NVARCHAR(255) NOT NULL
);
-- Importation des transactions effectuer dans la table transaction 
INSERT INTO Transactions ( Transaction_ID , Date ,Product , Total_Items ,Total_Cost , Payment_Method , Season )
SELECT 
	Transaction_ID,
	Date,
	Product,
	Total_Items,
	Total_Cost,
	Payment_Method,
	Season
 FROM ToutesTransactions ;

 -- verification de la table transaction 
SELECT * FROM ToutesTransactions;
SELECT * FROM Transactions;

-- importation des villes dans la table citt
CREATE TABLE City (
    City_ID INT PRIMARY KEY IDENTITY (1,1),
    Name NVARCHAR(255) NOT NULL 
);

INSERT INTO City ( Name)
SELECT DISTINCT 
    City 
FROM ToutesTransactions;
-- verification de la table city 
SELECT * FROM CITY ;

-- creation de la table Product 
CREATE TABLE Product (
    Product_ID INT PRIMARY KEY IDENTITY(1,1), 
    Name NVARCHAR(255) NOT NULL, 
    Promotion NVARCHAR(255) 
	);
-- importation des produit dans la table Product
INSERT INTO Product (Name , Promotion)
SELECT DISTINCT 
 Product , Promotion
FROM ToutesTransactions;

-- Verification 
SELECT * FROM Product;

-- creation de la table Customer 
CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY IDENTITY(1,1), 
    Name VARCHAR(255) NOT NULL, 
    Customer_Category NVARCHAR(255) 
);

-- Importation des donnee 
INSERT INTO Customer (Name, Customer_Category)
SELECT DISTINCT Customer_Name, Customer_Category
FROM ToutesTransactions;

-- verification 
SELECT * FROM Customer;

-- creation de la table store 
CREATE TABLE Store  (
    Store_ID INT PRIMARY KEY IDENTITY(1,1), 
    Type NVARCHAR(255) NOT NULL 
);

-- importation des donnees 
INSERT INTO Store (Type)
SELECT DISTINCT Store_Type
FROM ToutesTransactions;

-- verification 
SELECT * FROM Store ;
