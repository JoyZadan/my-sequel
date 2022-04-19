/*
Get the average of the total column in the invoice table.
And round the result to two decimal places.
*/
SELECT ROUND(AVG(Total), 2) FROM Invoice;