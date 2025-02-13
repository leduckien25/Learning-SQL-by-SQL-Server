--Excercise 1:
SELECT *
FROM dbo.Products
WHERE UnitPrice BETWEEN 10 AND 20
ORDER BY UnitPrice ASC;

--Excercise 2:
SELECT *
FROM dbo.Orders
WHERE RequiredDate BETWEEN '1996-07-01' AND '1996-07-31';

--Excercise 3:
SELECT SUM(Freight) AS TotalJulyFreight
FROM dbo.Orders
WHERE RequiredDate BETWEEN '1996-07-01' AND '1996-07-31';

--Excercise 4:
SELECT *
FROM dbo.Orders
WHERE (OrderDate BETWEEN '1997-01-01' AND '1997-12-31') AND ShipVia = 3;

--Excercise 5:
SELECT *
FROM dbo.Customers
WHERE Country LIKE 'a%';

--Excercise 6:
SELECT *
FROM dbo.Orders
WHERE ShipCity LIKE '%a%';

--Excercise 7:
SELECT *
FROM dbo.Suppliers
WHERE CompanyName LIKE '%b%';