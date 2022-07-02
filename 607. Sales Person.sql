# Write your MySQL query statement below
SELECT 
  SalesPerson.name
FROM Orders 
JOIN Company
  ON (Company.com_id = Orders.com_id and Company.name = 'RED')
RIGHT JOIN SalesPerson
  ON Salesperson.sales_id = Orders.sales_id
WHERE Orders.sales_id is NULL; 

