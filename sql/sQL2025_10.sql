--Excercise 1:
SELECT CustomerID, COUNT(*) AS TotalOrders
FROM dbo.Orders
GROUP BY CustomerID;

--Excercise 2:
SELECT SupplierID, AVG(UnitPrice) AS AvgUnitPrice
FROM dbo.Products
GROUP BY SupplierID

--Excercise 3:
SELECT CategoryID, SUM(UnitsInStock) AS TotalUnitsInStock
FROM dbo.Products
GROUP BY CategoryID;

--Excercise 4:
SELECT ShipCountry, ShipCity, MIN(Freight) AS MinFreight, MAX(Freight) AS MaxFreight
FROM dbo.Orders
GROUP BY ShipCountry, ShipCity
ORDER BY ShipCountry ASC;

--Excercise 5:
SELECT Country, COUNT(EmployeeID) AS TotalEmployees
FROM dbo.Employees
GROUP BY Country;

--Excercise 6:
SELECT TitleOfCourtesy, COUNT(*)
FROM dbo.Employees
WHERE Country LIKE '%a%'
GROUP BY TitleOfCourtesy;

--Excercise 7:
SELECT CustomerID, COUNT(OrderID) AS TotalOrdersIn199
FROM dbo.Orders
WHERE YEAR(OrderDate) = 1997
GROUP BY CustomerID;

--Excercise 8:
SELECT * 
FROM dbo.Orders
WHERE MONTH(OrderDate) = 5 AND YEAR(OrderDate) = 1997;

--Excercise 9:
SELECT * 
FROM dbo.Orders
WHERE DAY(OrderDate) = 4 AND MONTH(OrderDate) = 9 AND YEAR(OrderDate) = 1996;

--Excercise 10:
SELECT CustomerID, MONTH(OrderDate) AS [Month], COUNT(*) AS TotalOrders
FROM dbo.Orders
WHERE YEAR(OrderDate) = 1998
GROUP BY CustomerID, MONTH(OrderDate)
ORDER BY MONTH(OrderDate) ASC;

--Excercise 11:
SELECT *
FROM dbo.Orders
WHERE MONTH(ShippedDate)=5
ORDER BY YEAR(ShippedDate) ASC;

--Excercise 12:
SELECT MONTH(OrderDate) AS [Month], COUNT(OrderID) AS TotalOrders
FROM dbo.Orders
WHERE MONTH(OrderDate)=5
GROUP BY MONTH(OrderDate);