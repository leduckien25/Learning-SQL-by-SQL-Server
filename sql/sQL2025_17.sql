--Excercise 1:
WITH short_e AS (
	SELECT e.EmployeeID, e.FirstName, e.LastName
FROM dbo.Employees AS e )
SELECT * FROM short_e;

--Excercise 2:
WITH short_c AS (
	SELECT c.CategoryID
	FROM dbo.Categories c
	WHERE c.CategoryName = 'Beverages'
)
SELECT p.ProductID, p.ProductName
FROM short_c
JOIN dbo.Products p
ON short_c.CategoryID = p.CategoryID;

--Excercise 3:
WITH temp AS (
	SELECT od.OrderID, SUM(od.Quantity* od.UnitPrice) AS TotalPrice
	FROM dbo.[Order Details] od
	GROUP BY od.OrderID
)
SELECT o.OrderID, o.OrderDate, temp.TotalPrice, o.Freight , temp.TotalPrice/o.Freight AS Ratio
FROM dbo.Orders AS o
JOIN temp ON o.OrderID = temp.OrderID
