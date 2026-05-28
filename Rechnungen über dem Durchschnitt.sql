SELECT
Customer.CustomerId,
Customer.FirstName,
Customer.LastName,
SUM(Invoice.Total) AS TotalRevenue
FROM Customer
INNER JOIN Invoice
ON Customer.CustomerId = Invoice.CustomerId
GROUP BY
Customer.CustomerId,
Customer.FirstName,
Customer.LastName
ORDER BY
TotalRevenue DESC;
