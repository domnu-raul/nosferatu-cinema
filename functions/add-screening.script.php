<?php
include ("../includes/database.inc.php");

$movie_id = $_POST['id'];
if (!is_numeric($movie_id))
{
    echo "error";
    exit();
}

$query = "SELECT * FROM films WHERE id = {$movie_id}";
$result = mysqli_query($conn, $query);
if ($movie_row = mysqli_fetch_assoc($result))
{
    $query = "SELECT MAX(id) AS max_id FROM screenings";
    $result = mysqli_query($conn, $query);

    $screening_id = mysqli_fetch_assoc($result)['max_id'] + 1;

    $screening_time = $_POST['time'];
    $screening_date = $_POST['date'];

    $stmt = $conn->prepare("INSERT INTO screenings (id, movie_id, screening_date, screening_time) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("iiss", $screening_id, $movie_id, $screening_date, $screening_time);
    $stmt->execute();

    $movie_title = $movie_row['title'];
    $poster_url = $movie_row['poster_url'];
    $formatted_date = date("F j", strtotime($screening_date));
    $formatted_time = date("g:i A", strtotime($screening_time));
    echo "{$screening_id};{$movie_id};{$movie_title};{$formatted_date};{$formatted_time};{$poster_url}";
}
else echo "error";
?>