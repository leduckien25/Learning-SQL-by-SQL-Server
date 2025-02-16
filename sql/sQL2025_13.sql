--Excercise 1:
SELECT p.CategoryID, c.CategoryName, p.ProductID, p.ProductName
FROM dbo.Products AS p, dbo.Categories AS c
WHERE p.CategoryID = c.CategoryID;

--Excercise 2:
SELECT e.EmployeeID, e.LastName, e.FirstName,
	   COUNT(o.OrderID) AS TotalOrders
FROM dbo.Employees AS e,dbo.Orders AS o
WHERE e.EmployeeID = o.EmployeeID
GROUP BY e.EmployeeID, e.LastName, e.FirstName;

--Excercise 3:
SELECT c.CustomerID, c.CompanyName, c.ContactName, 
	   COUNT(o.OrderID) AS TotalOrders
FROM dbo.Customers AS c, dbo.Orders AS o
WHERE c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.CompanyName, c.ContactName;

--Excercise 4:
SELECT s.ShipperID, s.CompanyName, SUM(o.Freight) AS TotalFreight
FROM dbo.Orders AS o, dbo.Shippers AS s
WHERE o.ShipVia = s.ShipperID
GROUP BY s.ShipperID, s.CompanyName
ORDER BY SUM(o.Freight) DESC;

--Excercise 5:
SELECT TOP 1 p.SupplierID, s.CompanyName, 
			 COUNT(p.ProductID) AS TotalProducts
FROM dbo.Products AS p, dbo.Suppliers AS s
WHERE p.SupplierID = s.SupplierID
GROUP BY p.SupplierID, s.CompanyName
ORDER BY COUNT(p.ProductID) DESC

--Excercise 6:
SELECT o.OrderID, SUM(od.UnitPrice * od.Quantity) AS TotalPrice
FROM dbo.Orders AS o, dbo.[Order Details] AS od
WHERE o.OrderID = od.OrderID
GROUP BY o.OrderID

--Excercise 7:
SELECT o.OrderID, e.LastName, e.FirstName, SUM(od.Quantity * od.UnitPrice) AS TotalPrice
FROM dbo.Orders AS o,
	 dbo.[Order Details] AS od,
	 dbo.Employees AS e
WHERE o.EmployeeID = e.EmployeeID AND o.OrderID = od.OrderID
GROUP BY o.OrderID, e.LastName, e.FirstName

--Excercise 8:
SELECT o.OrderID, c.CompanyName, s.CompanyName
FROM dbo.Orders AS o,
	 dbo.Customers AS c,
	 dbo.Shippers AS s
WHERE o.CustomerID = c.CustomerID 
	  AND o.ShipVia =s.ShipperID 
	  AND o.ShipCountry = 'UK' 
	  AND YEAR(ShippedDate) = 1997;
