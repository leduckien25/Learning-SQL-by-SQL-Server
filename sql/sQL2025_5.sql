--Excercise 1:
SELECT *
FROM dbo.Suppliers
ORDER BY CompanyName ASC;

--Excercise 2:
SELECT *
FROM dbo.Products
ORDER BY UnitPrice DESC;

--Excercise 3:
SELECT *
FROM dbo.Employees
ORDER BY LastName, FirstName ASC;

--Excercise 4:
SELECT TOP 1 *
FROM dbo.[Order Details]
ORDER BY Quantity DESC;

--Excercise 5:
SELECT OrderID
FROM dbo.Orders
ORDER BY OrderDate DESC

--Excercise 6:
SELECT ProductName, UnitPrice, UnitsInStock
FROM dbo.Products
ORDER BY UnitsInStock DESC;

--Excercise 7:
SELECT ProductID, ProductName, (UnitsInStock - UnitsOnOrder) AS StockRemaining
FROM dbo.Products;

--Excercise 8:
SELECT OrderID, ProductID, UnitPrice, Quantity, UnitPrice * Quantity AS OrderDetailValue
FROM dbo.[Order Details];

--Excercise 9:
SELECT AVG(Freight) / MAX(Freight) AS FreightRatio
FROM dbo.Orders;

--Excercise 10:
SELECT *, UnitPrice*90/100
FROM dbo.Products;