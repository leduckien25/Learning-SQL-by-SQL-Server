--Excercise 1:
SELECT CustomerID, COUNT(OrderID) AS TotalOrders
FROM dbo.Orders
GROUP BY CustomerID
HAVING COUNT(OrderID)>20
ORDER BY COUNT(OrderID) DESC;

--Excercise 2:
SELECT SupplierID,
	   SUM(UnitsInStock) AS TotalUnitsInStock,
	   AVG(UnitPrice) AS AvgUnitPrice
FROM dbo.Products
GROUP BY SupplierID
HAVING SUM(UnitsInStock)>30 AND AVG(UnitPrice)<50

--Excercise 3:
SELECT MONTH(ShippedDate) AS Month,
	   SUM(Freight) AS TotalFreight
FROM dbo.Orders
WHERE ShippedDate BETWEEN '1996-07-01' AND '1996-12-31'
GROUP BY MONTH(ShippedDate)
HAVING SUM(Freight)>1000
ORDER BY MONTH(ShippedDate) ASC;

--Excercise 4:
SELECT ShipCity,
	   COUNT(OrderID) AS TotalOrders
FROM dbo.Orders
GROUP BY ShipCity
HAVING COUNT(OrderID)>16 
ORDER BY COUNT(OrderID) ASC;
