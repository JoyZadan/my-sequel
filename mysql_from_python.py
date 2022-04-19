"""
Imports
"""
import os
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
    with connection.cursor() as cursor:
        SEQUEL = "SELECT * FROM Artist;"
        cursor.execute(SEQUEL)
        result = cursor.fetchall()
        print(result)
finally:
    # Close the connection, regardless of whether the above was successful
    connection.close()
