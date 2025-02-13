--Excercise 1:
SELECT MIN(UnitPrice) AS MinPrice
FROM dbo.Products;

--Excercise 2:
SELECT MAX(OrderDate) AS MaxOrderDate
FROM dbo.Orders;

--Excercise 3:
SELECT MIN(UnitsInStock)
FROM dbo.Products;

--Excercise 4:
SELECT MIN(BirthDate) AS Oldest
FROM dbo.Employees;

--Excercise 5:
SELECT COUNT(*) AS NumberOfCustomers
FROM dbo.Customers;

--Excercise 6:
SELECT SUM(Freight) AS TotalFee
FROM dbo.Orders;

--Excercise 7:
SELECT AVG(Quantity) AS AvgQuantity
FROM dbo.[Order Details];

--EXcercise 8:
SELECT COUNT(*) AS NumberOfProducts,
	   SUM(UnitsInStock) AS TotalUnitsInStock,
	   AVG(UnitPrice) AS AvgUnitPrice
FROM dbo.Products;

--Excercise 9:
SELECT COUNT(*) AS TotalOrders,
	   COUNT(OrderID) AS TotalOrdersID
FROM dbo.Orders;

--Excercise 10:
SELECT AVG(UnitPrice) AS AvgUnitPrice,
	   SUM(Quantity) AS TotalQuantity
FROM dbo.[Order Details];