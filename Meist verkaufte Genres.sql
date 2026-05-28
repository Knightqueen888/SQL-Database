SELECT Genre.Name AS Genre_Name,
SUM(InvoiceLine.Quantity) AS Gesamtanzahl_verkaufter_Titel
FROM Genre
JOIN Track 
ON Genre.GenreId = Track.GenreId
JOIN InvoiceLine 
ON Track.TrackId = InvoiceLine.TrackId
GROUP BY Genre.Name
ORDER BY Gesamtanzahl_verkaufter_Titel DESC;