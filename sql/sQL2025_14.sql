--Excercise 1:
SELECT p.CategoryID,  c.CategoryName, p.ProductID, p.ProductName
FROM dbo.Products AS p, dbo.Categories AS c
WHERE p.CategoryID = c.CategoryID AND c.CategoryName = 'Seafood';

--Excercise 2:
SELECT s.SupplierID, s.Country, p.ProductID, p.ProductName
FROM dbo.Products AS p, dbo.Suppliers AS s
WHERE p.SupplierID = s.SupplierID AND s.Country = 'Germany';

--Excercise 3:
SELECT o.OrderID, c.ContactName, s.CompanyName
FROM dbo.Orders AS o, dbo.Customers AS c, dbo.Shippers AS s
WHERE o.CustomerID = c.CustomerID AND o.ShipVia = s.ShipperID AND c.City = 'London';

--Excercise 4:
SELECT o.OrderID, c.ContactName, s.CompanyName, o.RequiredDate, o.ShippedDate
FROM dbo.Orders AS o, dbo.Customers AS c, dbo.Shippers AS s
WHERE o.CustomerID = c.CustomerID AND o.ShipVia = s.ShipperID
	  AND o.RequiredDate < o.ShippedDate;

--Excercise 5:
SELECT o.ShipCountry, COUNT(o.OrderID) AS TotalOrders
FROM dbo.Orders AS o, dbo.Customers AS c, dbo.Shippers AS s
WHERE o.CustomerID = c.CustomerID AND o.ShipVia = s.ShipperID
	  AND c.Country <> 'USA'
GROUP BY o.ShipCountry
HAVING COUNT(o.OrderID) > 100;

--Excercise 6:
SELECT DISTINCT OrderID
FROM dbo.[Order Details]
WHERE (UnitPrice BETWEEN 100 AND 200) OR Quantity IN (10,20);

--Excercise 7:
SELECT DISTINCT Country
FROM dbo.Suppliers
UNION
SELECT DISTINCT Country
FROM dbo.Customers;

--Excercise 8:
SELECT City, Country
FROM dbo.Suppliers
WHERE City = 'London'
UNION
SELECT ShipCity, ShipCountry
FROM dbo.Orders
WHERE ShipCity = 'USA'
UNION
SELECT City, Country
FROM dbo.Customers
WHERE Country = 'U%';

--Excercise 9:
SELECT DISTINCT Phone AS PhoneNumber  FROM dbo.Customers AS c
UNION 
SELECT DISTINCT Phone AS PhoneNumber  FROM dbo.Suppliers
UNION 
SELECT DISTINCT HomePhone AS PhoneNumber  FROM dbo.Employees
UNION
SELECT DISTINCT Phone AS PhoneNumber FROM dbo.Shippers;