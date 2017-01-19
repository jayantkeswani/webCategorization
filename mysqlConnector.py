import mysql.connector

def Connection():
    conn = mysql.connector.connect(host='localhost', database='websiteData', user='root', password='')

    if conn.is_connected():
        print("Connection to mysql established")
    else:
        print("Connection to mysql failed")

    return conn


