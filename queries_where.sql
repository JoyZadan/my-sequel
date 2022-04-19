/*
Select all `Track` records where the `Composer` is `U2`
*/
select * from Track
where Composer = 'U2';

/*
Select all `Album` records where the `AlbumId` is 232;
*/
select * from Album
where AlbumId = 232;

/*
Challenge 1 and Solution - Select the 'FirstName', 'LastName' and 'Title' Columns
from the 'Employee' Table. Filtering the results to only those with a Title of
'IT Staff'.
*/
select FirstName, LastName, Title from Employee
where Title = "IT Staff";