"""
Imports
"""
import os
import datetime
import pymysql

# Our username is stored in the Gitpod workspace as an environment variable
# We are going to use that OS to get our username from C9_USER
username = os.getenv('C9_USER')

# Connect to the database
connection = pymysql.connect(host='localhost',
                             user=username,
                             password='',
                             db='Chinook')

try:
    # Run a query
    # To return data to the application, we need to fetch the data
    # By using a cursor method
    # To retrieve the data into a variable which is iterable
    # Use for each which returns the data where each row is a tuple
    # Change type of cursor by passing pymysql.cursors.DictCursor
    # As an argument when creating the cursor
    # Using DictCursor returns rows that include the column names
    # This format also lends itself to being converted into JSON
    # Lines 30 to 33 must be indented if not commented out
    # with connection.cursor(pymysql.cursors.DictCursor) as cursor:
    # SEQUEL = "SELECT * FROM Genre;"
    # cursor.execute(SEQUEL)
    # for row in cursor:
    # print(row)
    # Creates a table (replaced code from walkthrough with below)
    with connection.cursor() as cursor:
        SEQUEL = """CREATE TABLE IF NOT EXISTS
                    Friends(name char(20), age int, DOB datetime);"""
        row = ("Bob", 21, "1990-02-06 23:04:56")
        cursor.execute("INSERT INTO Friends VALUES (%s, %s, %s);", row)
        connection.commit()
        # Note that the above will still display a warning (not error) if the
        # table already exists
finally:
    # Close the connection, regardless of whether the above was successful
    connection.close()
