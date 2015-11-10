SELECT c.Name FROM customers c WHERE 
(SELECT COUNT(*) FROM Orders o WHERE c.Id = o.CustomerId) = 0
