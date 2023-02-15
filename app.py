import psycopg2
connection=psycopg2.connect(user="postgres",database="lol",password="sad@2600")
cursor=connection.cursor()




cursor.commit()