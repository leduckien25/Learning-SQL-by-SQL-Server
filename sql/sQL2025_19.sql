--Excercise 1:
WITH CategoryTable AS (
	SELECT p.CategoryID, p.ProductName 
	FROM dbo.Products p
	WHERE p.ProductName = 'Pavlova'
)
SELECT *
FROM dbo.Products p
JOIN CategoryTable ct
ON p.CategoryID = ct.CategoryID
WHERE p.ProductName <> ct.ProductName

--Excercise 2:
WITH OrderTotals AS (
	SELECT o.OrderID,
		   SUM(od.UnitPrice * od.Quantity) TotalPrice
	FROM dbo.Orders o
	JOIN dbo.[Order Details] od
	ON o.OrderID = od.OrderID
	GROUP BY o.OrderID
)
SELECT o.*,
	   ot.TotalPrice,
   	   ot.TotalPrice / o.Freight Ratio
FROM OrderTotals ot
JOIN dbo.Orders o
ON ot.OrderID = o.OrderID

--Excercise 3:
WITH TotalRevenue AS (
	SELECT p.ProductID, SUM(od.Quantity * od.UnitPrice)  Total
	FROM dbo.Products p
	JOIN dbo.[Order Details] od
	ON p.ProductID = od.ProductID
	GROUP BY p.ProductID
)
SELECT p.*, tp.Total
FROM TotalRevenue tp
JOIN dbo.Products p
ON tp.ProductID = p.ProductID

--Excercise 4:
WITH TotalRevenue AS (
	SELECT O.CustomerID, SUM(od.Quantity * od.UnitPrice) Total 
	FROM dbo.Orders o
	JOIN dbo.[Order Details] od
	ON o.OrderID = od.OrderID
	GROUP BY o.CustomerID
)
SELECT c.*, tr.Total
FROM dbo.Customers c
JOIN TotalRevenue tr
ON c.CustomerID = tr.CustomerID
ORDER BY tr.Total DESC

--Excercise 5:
WITH TotalRevenue AS (
	SELECT YEAR(o.OrderDate) AS Year,
		   SUM(od.Quantity * od.UnitPrice) Total 
	FROM dbo.Orders o
	JOIN dbo.[Order Details] od
	ON o.OrderID = od.OrderID
	GROUP BY YEAR(o.OrderDate)
)
SELECT *
FROM TotalRevenue tr
ORDER BY tr.Year ASC

