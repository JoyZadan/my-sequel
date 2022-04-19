/*
Get a count of all of the records or rows in the `Customer` table
*/
SELECT MIN(LastName) FROM Customer;

/*
Challenge 1 Solution - What is the date of birth of our oldest employee?
*/
SELECT MIN(BirthDate) FROM Employee;