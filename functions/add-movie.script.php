<?php
include("../includes/database.inc.php");

$tmdb_id = $_POST['id'];
if (!is_numeric($tmdb_id))
{
    echo "error;Invalid Movie ID.";
    exit();
}

$query = "SELECT * FROM films WHERE id = {$tmdb_id}";
$result = mysqli_query($conn, $query);

if ($_ = mysqli_fetch_assoc($result))
{
    echo "error;Movie already in database.";
    exit();
}

$api_key = "64971d742285741b35e7a6716621400c";
$movie_url = "https://api.themoviedb.org/3/movie/{$tmdb_id}?api_key={$api_key}";
$credits_url = "https://api.themoviedb.org/3/movie/{$tmdb_id}/credits?api_key={$api_key}";

$ch = curl_init();

curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

curl_setopt($ch, CURLOPT_URL, $movie_url);
$movie_data = curl_exec($ch);

curl_setopt($ch, CURLOPT_URL, $credits_url);
$credits_data = curl_exec($ch);

curl_close($ch);

$movie_data = json_decode($movie_data, true);
$credits_data = json_decode($credits_data, true);

if (isset($movie_data['success']))
{
    echo "error;Invalid Movie ID.";
    exit();
}

$title = $movie_data['title'];
$description = $movie_data['overview'];
$duration = $movie_data['runtime'];
$director = '';

foreach ($credits_data['crew'] as $person) {
    if ($person['job'] == 'Director') {
        $director = $person['name'];
        break;
    }
}

$poster_url = "https://image.tmdb.org/t/p/w342{$movie_data['poster_path']}";
$stmt = $conn->prepare("INSERT INTO films (id, title, description, duration, director, poster_url) VALUES (?, ?, ?, ?, ?, ?)");
$stmt->bind_param("isssss", $tmdb_id, $title, $description, $duration, $director, $poster_url);
$stmt->execute();

$stmt->close();
$conn->close();

echo "{$tmdb_id};{$title};{$director};{$duration};{$poster_url}";
?>