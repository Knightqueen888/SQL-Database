SELECT
Invoice.InvoiceId,
Invoice.CustomerId,
Invoice.InvoiceDate,
Invoice.Total
FROM Invoice
WHERE Invoice.Total >(SELECT AVG(Invoice.Total) FROM Invoice);