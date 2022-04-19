# SQL in Action queries walkthrough from Code Institute

## Introduction to using the MySQL shell
## SQL in Action - The SELECT Statement
    What is it?
    A statement for querying data from a relational database.
    What does it do?
    Retrieves data from a specified list of columns in a table
## SQL in Action - The WHERE Clause
    What is it?
    A command that allows the results of a SQL statement to be filtered
    What does it do?
    Restricts the scope of a SQL statement to only the rows that match the where clause
    How do you use it?
    In SELECT, UPDATE and DELETE statements, add a where clause that contains a boolean expression. Only rows where true are affected
## SQL in Action - The JOIN Statement
    What is it?
    A way of linking multiple tables together so that a SELECT can pull data from all of them
    What does it do?
    Identifies the columns that must match in order for two rows in different tables to be considered "related"
    How do you use it?
    In the FROM part of a SELECT statement, after naming a table to pull data from, then use the JOIN and ON keywords to link to another table
## SQL in Action - The ORDER BY Clause
    What is it?
    An SQL command to sort tables
    What does it do?
    Sorts ascending or descending
    How do you use it?
    Use the ORDER BY command
## SQL in Action - The COUNT Function
    What is it?
    An aggregate function
    What does it do?
    Returns the number of rows in a query result, or group
    How do you use it?
    count(column) or count(*)
## SQL in Action - The MIN Function
    What is it?
    An aggregate function
    What does it do?
    Returns the minimum value from a specified column in a query result or group (for ex: sorting alphabetically)
    How do you use it?
    MIN(column) or MIN(expression)
## SQL in Action - The MAX Function
    What is it?
    An aggregate function
    What does it do?
    Returns the maximum value from a specified column in a query result or group (for ex: sorting alphabetically)
    How do you use it?
    MAX(column) or MAX(expression)
## SQL in Action - The AVG Function
    What is it?
    An aggregate function
    What does it do?
    Returns the average value from a specified column in a query result or group
    How do you use it?
    AVG(column) or AVG(expression)
## SQL in Action - The ROUND Function
    What is it?
    An aggregate function
    What does it do?
    Returns a specified value, rounded to a specified number of decimal places
    How do you use it?
    ROUND(column, precision) or ROUND(expression, precision)
## SQL in Action - The SUM Function
    What is it?
    An aggregate function
    What does it do?
    Returns the sum of the values of a specified column in a query result or group
    How do you use it?
    SUM(column) or SUM(expression)
## SQL in Action - The GROUP BY Clause
    What is it?
    A clause that groups records in a query result
    What does it do?
    Allows aggregate functions to be applied to subsets of records within a result, rather than to all records
    How do you use it?
    Group by a column or columns of repeating data