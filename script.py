DB_HOST ='localhost'
DB_NAME='dbmsproj'
DB_USER='postgres'
DB_PASS= '1612'

import psycopg2

conn= psycopg2.connect(dbname=DB_NAME, user=DB_USER, password=DB_PASS, host=DB_HOST)

cur= conn.cursor()

cur.execute("Select * from order_det;")
print(cur.fetchall())

conn.commit()

cur.close()
conn.close()