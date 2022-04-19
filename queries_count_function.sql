/*
Get a count of all of the records or rows in the `Customer` table
*/
SELECT COUNT(*) FROM Customer;

/*
Get a count of all of the records in the `Customer` table
*/
SELECT COUNT(FirstName) FROM Customer;

/*
Get a count of all of the records in the `Customer` table
where the customer's `FirstName` is "Frank"
*/
SELECT COUNT(*) FROM Customer WHERE FirstName = 'Frank';

/*
Challenge 1 Solution - How Many Customers is Employee 4 the Sales Support Agent For?
*/
SELECT COUNT(*) FROM Customer WHERE SupportRepId = 4;

/*
Challenge 2 Solution - How Many Customers is Jane Peacock the Sales Support Agent For?
*/
SELECT Employee.FirstName AS Employee, COUNT(Customer.FirstName) AS Customer FROM Employee
JOIN Customer ON Customer.SupportRepId = Employee.EmployeeId
WHERE Employee.FirstName = 'Jane';

/*
Challenge 4 Solution - Which Media Type is most popular? How could you answer this with a single query?
You probably cannot based on what you know so far. We will get there.
*/