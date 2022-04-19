/*
Order all of the `Album` records by the `Title` field in
ascending order
*/
SELECT * FROM Album ORDER BY Title;

/*
Order all of the `Album` records by the `Title` field in
descending order
*/
SELECT * FROM Album ORDER BY Title DESC;

/*
Order all of the `Album` records by the `ArtistId` field in
ascending order, and within that, order by `Title`
*/
SELECT * FROM Album ORDER BY ArtistId, Title;

/*
Select the Track name and the Album title and order them
by the Album title, and then by the track name
*/
SELECT Track.Name, Album.Title FROM Track
INNER JOIN Album on Track.AlbumId = Album.AlbumId
ORDER BY Album.Title, Track.Name;

/*
Select the `InvoiceDate`, `BillingCity` and `Total` from the
`Invoice` table. Order them descendingly and limit the results
to 5
*/
SELECT InvoiceDate, BillingCity, Total FROM Invoice
ORDER BY Total DESC
LIMIT 5;

/*
Challenge 1 and Solution - Select the InvoiceDate, BillingAddress, and Total from the Invoices table,
Ordered by InvoiceDate Descending
*/
SELECT InvoiceDate, BillingAddress, Total FROM Invoice
ORDER BY InvoiceDate DESC;

/*
Challenge 2 and Solution - We need to fire the last three people hired.
Select the EmployeeId, LastName, FirstName and HireDate of the
3 Employees with the most recent HireDate
*/
SELECT EmployeeId, LastName, FirstName, HireDate FROM Employee
ORDER BY HireDate DESC
LIMIT 3;

/*
Challenge 3 and Solution - Disaster, we've heard from Steve Johnson's lawyers.
He claims that Michael Mitchell was hired on the same day as him, but was hired later in the day.
Mitchell should have been let go, not him.
Confirm this by extending the number of results and make sure nobody else was hired on that day.
Then modify the query to return the correct 3 people.
Continue to use HireDate as the primary sort column, but use EmployeeId as the tie breaker.
Assume that a higher EmployeeId means they were hired later.
*/
SELECT EmployeeId, LastName, FirstName, HireDate FROM Employee
ORDER BY HireDate DESC, EmployeeId Desc
LIMIT 3;

/*
Challenge 4 and Solution - Create a query that shows our 10 biggest invoices by Total value, in descending order.
If two invoices have the same Total, the more recent should appear first.
The query should also show the Name of the Customer
*/
SELECT
    concat(Customer.FirstName, " ", Customer.LastName) as Name,
    Invoice.InvoiceDate as Date,
    Invoice.Total
FROM Invoice
INNER JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
ORDER BY Total DESC, InvoiceDate DESC
LIMIT 10;