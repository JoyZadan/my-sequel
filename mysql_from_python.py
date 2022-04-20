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
        list_of_names = ['fred', 'Fred', 'jane', 'anne']
        # Prepare a string with same number of placeholders as in list_of_names
        format_strings = ','.join(['%s'] * len(list_of_names))
        cursor.execute(
            "DELETE FROM Friends WHERE name in ({});".format(format_strings),
            list_of_names)

        connection.commit()
finally:
    # Close the connection, regardless of whether the above was successful
    connection.close()
