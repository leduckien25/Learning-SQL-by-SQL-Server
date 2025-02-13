--Excercise 1:
SELECT * 
FROM dbo.Employees
WHERE City='London'
ORDER BY LastName ASC;

--Excercise 2:
SELECT COUNT(*) AS 'Số đơn giao hàng muộn'
FROM dbo.Orders
WHERE RequiredDate<ShippedDate

--Excercise 3:
SELECT *
FROM dbo.[Order Details]
WHERE Discount > 0.1 AND Discount < 0.2

--Excercise 4:
SELECT *
FROM dbo.Orders
WHERE ShipCountry='France'

--Excercise 5:
SELECT *
FROM dbo.Products
WHERE UnitsInStock > 20

--Excercise 6:
SELECT *, DATEDIFF(YEAR, BirthDate, GETDATE()) AS Old
FROM dbo.Employees
WHERE DATEDIFF(YEAR, BirthDate, GETDATE()) > 20;

--Excercise 7:
SELECT *
FROM dbo.Products
WHERE UnitsInStock < 50 OR UnitsInStock > 100;

--Excercise 8:
SELECT *
FROM dbo.Orders
WHERE ShipCountry='Brazil' AND RequiredDate < ShippedDate;

--Excercise 9:
SELECT *
FROM Products
WHERE UnitPrice < 100 AND CategoryID != 1

--Excercise 10:
SELECT *
FROM Orders
WHERE Freight> 50 AND Freight < 100;

--Excercise 11:
SELECT *
FROM Products
WHERE UnitsInStock > 20 AND UnitsOnOrder < 20