SELECT c.Name FROM customers c WHERE 
(SELECT COUNT(*) FROM Orders o WHERE c.Id = o.CustomerId) = 0;
SELECT Name FROM Customers c WHERE c.Id NOT IN (SELECT CustomerId FROM Orders o);
SELECT Name FROM Customers c WHERE NOT EXISTS (SELECT CustomerId FROM Orders o WHERE o.CustomerId = c.id);
SELECT Name FROM Customers c LEFT JOIN Orders o ON c.Id = o.CustomerId WHERE o.Id IS NULL;
