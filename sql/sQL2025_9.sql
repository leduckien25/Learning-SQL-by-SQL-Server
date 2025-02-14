--Excercise 1:
SELECT *
FROM dbo.Orders
WHERE ShipCountry IN ('Germany','UK','Brazil');

--Excercise 2:
SELECT *
FROM dbo.Orders
WHERE ShipCountry NOT IN ('Germany','UK','Brazil');

--Excercise 3:
SELECT *
FROM dbo.Products
WHERE CategoryID NOT IN (2,3,4);

--Excercise 4:
SELECT *
FROM dbo.Employees
WHERE TitleOfCourtesy NOT IN ('Ms.','Mrs.');

--Excercise 5:
SELECT *
FROM dbo.Customers
WHERE City IN ('Berlin','London','Warszawa');

 --Excercise 6:
SELECT *
FROM dbo.Orders
WHERE ShippedDate IS NULL;
 
--Excercise 7:
SELECT *
FROM dbo.Customers
WHERE Region IS NOT NULL;

--Excercise 8:
SELECT *
FROM dbo.Customers
WHERE CompanyName IS NULL;

--Excercise 9:
SELECT *
FROM dbo.Orders
WHERE ShippedDate IS NULL AND ShipRegion IS NOT NULL;