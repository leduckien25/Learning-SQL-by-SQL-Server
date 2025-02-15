--Excercise 1:
SELECT CustomerID,
	   COUNT(OrderID) AS TotalOrders
FROM dbo.Orders
GROUP BY CustomerID
HAVING COUNT(OrderID)>20
ORDER BY COUNT(OrderID) DESC;

--Excercise 2:
SELECT EmployeeID, 
	   COUNT(OrderID) AS TotalOrders
FROM dbo.Orders
GROUP BY EmployeeID
HAVING COUNT(OrderID) >= 100
ORDER BY COUNT(OrderID) DESC;

--Excercise 3:
SELECT CategoryID,
	   COUNT(ProductID) AS TotalProducts
FROM dbo.Products
GROUP BY CategoryID
HAVING COUNT(ProductID) > 11;

--Excercise 4:
SELECT CategoryID,
	   SUM(UnitsInStock) AS TotalUnitsInStock
FROM dbo.Products
GROUP BY CategoryID
HAVING SUM(UnitsInStock) > 350;

--Excercise 5:
SELECT Country,
	   COUNT(CustomerID) AS TotalCustomers
FROM dbo.Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 7;

--Excercise 6:
SELECT ShippedDate,
	   COUNT(OrderID) AS TotalOrders
FROM dbo.Orders
WHERE ShippedDate IS NOT NULL
GROUP BY ShippedDate 
HAVING COUNT(OrderID) > 5
ORDER BY ShippedDate ASC;

--Excercise 7:
SELECT ShipCountry,
	   COUNT(OrderID) AS TotalOrders
FROM dbo.Orders
WHERE ShipCountry LIKE '[A,G]%'
GROUP BY ShipCountry 
HAVING COUNT(OrderID) > 29
ORDER BY COUNT(OrderID) DESC;

--Excercise 8:
SELECT ShipCity,
	   COUNT(OrderID) AS TotalOrders
FROM dbo.Orders
WHERE OrderDate IN ('1997-04-01','1997-08-31') 
GROUP BY ShipCity
HAVING COUNT(OrderID) NOT IN (1, 2);
