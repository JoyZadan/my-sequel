/*
Returns Total value for invoice number 2 from `Invoice` table
*/
SELECT TOTAL FROM Invoice
WHERE InvoiceId = 2;

/*
Gets Total value for invoice number 2 from `Invoice` table
Multiples the UnitPrice by Quantity from `InvoiceLine` table
Returns the sum Total for Invoice 2
*/
SELECT SUM(UnitPrice * Quantity) FROM InvoiceLine
WHERE InvoiceId = 2;