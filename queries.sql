-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

select c.CategoryName, p.ProductName
from categories as c
join products as p on c.categoryId = p.categoryId


-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

select o.OrderID, s.ShipperName
from orders as o 
join shippers as s on o.ShipperId = o.ShipperId
where o.OrderDate > 2012-08-09

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select p.ProductName, o.Quantity
from products as p
join orderDetails as o on p.ProductId = o.ProductId
where o.OrderId = 10251
group by p.ProductName



-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

select o.OrderId, c.CustomerName, e.LastName
from orders as o
join customers as c on o.CustomerId = c.CustomerId
join employees as e on o.EmployeeId = e.EmployeeId