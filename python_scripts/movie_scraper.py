import requests
import mysql.connector
import json

with open("../data/include.json") as json_file:
    json_data = json_file.read()

data = json.loads(json_data)

api_key = data['api_key']
db_server = data['db_server']
db_user = data['db_user']
db_pass = data['db_pass']
db_name = data['db_name']

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
    host=db_server,
    user=db_user,
    password=db_pass,
    database=db_name
)

cursor = cnx.cursor()

insert_query = "INSERT INTO films (id, title, description, duration, director, poster_url) VALUES (%s, %s, %s, %s, %s, %s)"

cursor.executemany(insert_query, results)

cnx.commit()
cursor.close()
cnx.close()