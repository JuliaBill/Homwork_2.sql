1. Вывести товары из категорий 1 и 4 с ценой от 50 до 150 EUR

SELECT * 
FROM Products
WHERE 
CategoryID IN (1, 4)
AND 
Price BETWEEN 50 AND 150

2. Вывести товары (проекция: название, ценасоскидкой0.5процента)

SELECT 
ProductName,
Price,
Price * .995 AS Price_down_0,5
FROM Products

3. Вывести заказы менеджеров 2 и 5

SELECT OrderID
FROM Orders
WHERE EmployeeID IN (2, 5)

4. Проекция в БД нужна для более понятного отоброжения названия определенного столбца