--Excercise 1:
SELECT c.CategoryID, c.CategoryName, p.ProductID, p.ProductName
FROM dbo.Categories AS c
FULL JOIN dbo.Products AS p
ON c.CategoryID =p.CategoryID

--Excercise 2:
SELECT c.CategoryID, c.CategoryName, COUNT(p.ProductID) AS TotalProducts
FROM dbo.Categories AS c
LEFT JOIN dbo.Products AS p
ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryID, c.CategoryName

--Excercise 3:
SELECT c.CompanyName, COUNT(o.OrderID)
FROM dbo.Orders AS o
JOIN dbo.Customers AS c
ON o.CustomerID = c.CustomerID
GROUP BY c.CompanyName

--Excercise 4:
SELECT o.OrderID, e.FirstName, e.LastName, o.ShipName
FROM dbo.Orders AS o
JOIN dbo.Employees AS e
ON e.EmployeeID = o.EmployeeID

--Excercise 5:
SELECT s.CompanyName, p.ProductName
FROM dbo.Products AS p
LEFT JOIN dbo.Suppliers AS s
ON p.SupplierID = s.SupplierID

--Excercise 6:
SELECT c.CompanyName, o.OrderID
FROM dbo.Orders AS o
RIGHT JOIN dbo.Customers AS c
ON o.CustomerID = c.CustomerID

--Excercise 7:
SELECT c.CategoryName, s.CompanyName
FROM dbo.Products AS p
FULL JOIN dbo.Suppliers AS s 
ON p.SupplierID = s.SupplierID
FULL JOIN dbo.Categories AS c 
ON p.CategoryID = c.CategoryID

--Excercise 8:
SELECT DISTINCT p.ProductID, p.ProductName, s.CompanyName
FROM dbo.[Order Details] AS od
JOIN dbo.Products AS p
ON od.ProductID = p.ProductID
JOIN dbo.Suppliers AS s
ON p.SupplierID = s.SupplierID

--Excercise 9:
SELECT o.OrderID, c.CompanyName, e.LastName, e.FirstName
FROM dbo.Orders AS o
LEFT JOIN dbo.Employees AS e
ON o.EmployeeID = e.EmployeeID
LEFT JOIN dbo.Customers AS c
ON o.CustomerID = c.CustomerID

--Excercise 10:
SELECT o.OrderID, e.FirstName, e.LastName, c.CompanyName
FROM dbo.Orders AS o
RIGHT JOIN dbo.Customers AS c
ON o.CustomerID =c.CustomerID
RIGHT JOIN dbo.Employees AS e
ON o.EmployeeID = e.EmployeeID

--Excercise 11:
SELECT p.ProductID, p.ProductName, s.CompanyName, c.CategoryName
FROM dbo.Products AS p
FULL JOIN dbo.Categories AS c
ON p.CategoryID = c.CategoryID
FULL JOIN dbo.Suppliers AS s
ON p.SupplierID = s.SupplierID

--Excercise 12:
SELECT o.OrderID, c.CompanyName, p.ProductName
FROM dbo.Orders AS o
JOIN dbo.[Order Details] AS od
ON o.OrderID = od.OrderID
JOIN dbo.Customers AS c
ON o.CustomerID = c.CustomerID
JOIN dbo.Products AS p
ON od.ProductID = p.ProductID

--Excercise 13:
SELECT o.OrderID, e.FirstName, e.LastName, c.CompanyName
FROM dbo.Orders AS o
FULL JOIN dbo.Employees AS e
ON o.EmployeeID = e.EmployeeID
FULL JOIN dbo.Customers AS c
ON o.CustomerID = c.CustomerID