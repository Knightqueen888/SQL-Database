SELECT
Employee.EmployeeId,
Employee.FirstName,
Employee.LastName
FROM Employee
LEFT JOIN Customer
ON Employee.EmployeeId = Customer.SupportRepId
WHERE Customer.SupportRepId IS NULL;
