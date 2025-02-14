--Excercise 1:
SELECT *
FROM dbo.Customers
WHERE ContactName LIKE 'a%';

--Excercise 2:
SELECT *
FROM dbo.Customers
WHERE ContactName LIKE 'h_%';

--Excercise 3:
SELECT OrderID,ShipCity
FROM dbo.Orders
WHERE ShipCity LIKE 'L[u,o]%';

--Excercise 4:
SELECT *
FROM dbo.Orders
WHERE ShipCity LIKE 'L[^u,o]%';

--Excercise 5:
SELECT *
FROM dbo.Orders
WHERE ShipCity LIKE 'L[a-e]%';

--Excercise 6:
SELECT *
FROM dbo.Suppliers
WHERE CompanyName LIKE 'A%' AND CompanyName LIKE '%[^b%]';

--Excercise 7:
SELECT *
FROM dbo.Customers
WHERE Address LIKE 'H_';

--Excercise 8:
SELECT *
FROM dbo.Orders
WHERE ShipAddress LIKE '[^A,H][s,g]%';