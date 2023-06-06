import requests
import mysql.connector

api_key = '64971d742285741b35e7a6716621400c'
popular_movies_url = f'https://api.themoviedb.org/3/movie/popular?api_key={api_key}'


results = list()

for page in range(1, 6):
    popular_movies_data = requests.get(f"{popular_movies_url}&page={page}").json()

    for movie in popular_movies_data["results"]:
        movie_id = movie["id"]
        movie_url = f'https://api.themoviedb.org/3/movie/{movie_id}?api_key={api_key}'
        credits_url = f'https://api.themoviedb.org/3/movie/{movie_id}/credits?api_key={api_key}'

        movie_data = requests.get(movie_url).json()
        credits_data = requests.get(credits_url).json()

        title, description, duration = movie_data['title'], movie_data['overview'], movie_data['runtime']
        director = next((person['name'] for person in credits_data['crew'] if person['job'] == 'Director'), '')
        poster_url = f"https://image.tmdb.org/t/p/w342{movie_data['poster_path']}"

        r = [movie_id, title, description, duration, director, poster_url]
        results.append(r)

cnx = mysql.connector.connect(
    host='localhost',
    user='root',
    password='',
    database='cinemadb'
)

cursor = cnx.cursor()

insert_query = "INSERT INTO films (id, title, description, duration, director, poster_url) VALUES (%s, %s, %s, %s, %s, %s)"

cursor.executemany(insert_query, results)

cnx.commit()
cursor.close()
cnx.close()