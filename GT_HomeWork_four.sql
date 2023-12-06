1. Вывести название и стоимость в USD одного самого дорогого проданного товара

SELECT 
ProductName,
Price
FROM OrderDetails
JOIN Products ON Products.ProductID = OrderDetails.ProductID
JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
ORDER BY Price DESC
LIMIT 1 OFFSET 1

2. Вывести два самых дорогих товара из категории Beverages из USA

SELECT ProductName
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
ORDER BY Price DESC
LIMIT 2 OFFSET 1
WHERE CategoryName = 'Beverages'
AND 
Country = 'USA'

3.Вывести список стран, которые поставляют морепродукты

SELECT Country 
FROM Products
JOIN Categories ON Categories.CategoryID = Products.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE CategoryName = "Seafood"