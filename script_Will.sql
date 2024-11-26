USE Projet1;

CREATE TABLE [dbo].[ToutesTransactions] (
[Transaction_ID] float NOT NULL,
[Date] datetime NOT NULL,
[Customer_Name] nvarchar(255) NOT NULL,
[Product] nvarchar(255) NOT NULL,
[Total_Items] float NOT NULL,
[Total_Cost] decimal(10,2) NOT NULL,
[Payment_Method] nvarchar(255) NOT NULL,
[City] nvarchar(255) NOT NULL,
[Store_Type] nvarchar(255) NOT NULL,
[Discount_Applied] bit NOT NULL,
[Customer_Category] nvarchar(255) NOT NULL,
[Season] nvarchar(255) NOT NULL,
[Promotion] nvarchar(255)
);

/*
 Exercice 3.1 - Importation des données
     Les données ont été importés à l'aide de SSMS
 */

--1)
SELECT DISTINCT
    COUNT(Product) AS nbProduitsDistinct
FROM ToutesTransactions;

--2)
SELECT DISTINCT
    City
FROM ToutesTransactions;

--3)
SELECT DISTINCT
    Payment_Method
FROM ToutesTransactions;

--4)
SELECT
    Customer_Category,
    COUNT(Customer_Name) AS NbClientsParCategorie
FROM ToutesTransactions
GROUP BY Customer_Category
ORDER BY Customer_Category;
