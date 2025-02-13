--Excercise 1:
SELECT TOP 5 *
FROM dbo.Customers;

--Excercise 2:
SELECT TOP 30 PERCENT *
FROM dbo.Employees;

--Excercise 3:
SELECT DISTINCT TOP 5 CustomerID
FROM dbo.Orders;

--Excercise 4:
SELECT DISTINCT TOP 3 CategoryID
FROM dbo.Products;

--Excercise 5:
SELECT CompanyName AS "Tên công ty",
	   PostalCode AS "Mã bưu điện",
	   City AS "Thành phố"
FROM dbo.Customers;

--Excercise 6:
SELECT LastName "Họ",
	   FirstName "Tên"
FROM dbo.Employees;

--Excercise 7:
SELECT TOP 15 o.*
FROM dbo.Orders AS "o";

--Excercise 8:
SELECT TOP 5 p.ProductName AS "Tên sản phẩm",
	   p.SupplierID AS "Mã nhà cung cấp",
	   p.CategoryID AS "Mã thể loại"
FROM dbo.Products AS "p";