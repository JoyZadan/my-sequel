/*
Groups album by AlbumId from the `Track` table and returns the number of tracks
on each album
*/
SELECT COUNT(*) FROM  Track
GROUP BY AlbumId;

/*
Groups album by AlbumId from the `Track` table, returns the number of tracks
for each AlbumId
*/
SELECT AlbumId, COUNT(*) FROM Track
GROUP BY AlbumId;

/*
Groups album by AlbumTitle from the `Track` table, returns the number of tracks
for each AlbumTitle
*/
SELECT Album.Title, COUNT(*) FROM Track
INNER JOIN Album ON Track.AlbumId = Album.AlbumId
GROUP BY Track.AlbumId;

/*
Groups album by AlbumId from the `Track` table, returns the cheapest track
on each album
*/
SELECT AlbumId, MIN(UnitPrice) FROM Track
GROUP BY AlbumId;

/*
Groups album by AlbumId from the `Track` table, returns the most expensive track
on each album
*/
SELECT AlbumId, MAX(UnitPrice) FROM Track
GROUP BY AlbumId;

/*
Groups album by AlbumId from the `Track` table, returns the total cost of each album
*/
SELECT AlbumId, ROUND(SUM(UnitPrice), 2) FROM Track
GROUP BY AlbumId;

/*
Groups album by AlbumTitle from the `Track` table, returns the total cost of each album
with the album Title
*/
SELECT Album.Title, ROUND(SUM(UnitPrice), 2) FROM Track
INNER JOIN Album ON Track.AlbumId = Album.AlbumId
GROUP BY Track.AlbumId;

/*
Challenge 1 and Solution - How many customers do we have in the City of Berlin Expected : 2
Alt: SELECT COUNT(City) FROM Customer
*/
SELECT COUNT(*) FROM Customer
WHERE City = 'Berlin';

/*
Challenge 2 and Solution - How much has been made in sales for the track "The Woman King". Expected : 3.98
You'll need to find how many sales there are for each track in the InvoiceLine table, multiply by the
Unit Price, join to the Track table to bring in the Track Name, and filter to find the details for
"The Woman King"
*/
SELECT SUM(InvoiceLine.UnitPrice * InvoiceLine.Quantity), Track.Name AS Track FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
WHERE Track.Name = "The Woman King";

/*
Challenge 3 and Solution - Create a list of the top 5 acts by number of tracks. The table should include the
name of the artist and the number of tracks they have.
*/
SELECT Artist.Name AS Artist, COUNT(Track.TrackId) AS Track FROM Artist
JOIN Album ON Artist.ArtistId = Album.ArtistId
JOIN Track ON Album.AlbumId = Track.AlbumId
GROUP BY Artist.Name
ORDER BY COUNT(Artist.Name)
DESC LIMIT 5;