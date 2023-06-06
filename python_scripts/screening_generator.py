import random
import datetime
import mysql.connector

cnx = mysql.connector.connect(
    host='localhost',
    user='root',
    password='',
    database='cinemadb'
)

cursor = cnx.cursor()

movies_count = 30
cursor.execute("SELECT id FROM films")
movie_ids = [row[0] for row in cursor.fetchall()]
while len(movie_ids) > 30:
    movie_ids.remove(random.choice(movie_ids))
print(len(movie_ids))

screening_id = 0
for movie_id in movie_ids:
    screening_count = random.randint(3, 10)
    for _ in range(screening_count):
        screening_date = datetime.date.today() + datetime.timedelta(days=random.randint(1, 30))
        screening_time = datetime.time(hour=random.randint(9, 21), minute=random.choice([0, 30]))

        insert_query = "INSERT INTO screenings (id, movie_id, screening_date, screening_time) VALUES (%s, %s, %s, %s)"
        data = (screening_id, movie_id, screening_date, screening_time)

        cursor.execute(insert_query, data)
        screening_id += 1

cnx.commit()

cursor.close()
cnx.close()

print("Screenings data inserted into the database.")
