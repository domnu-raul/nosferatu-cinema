<?php
include("../includes/database.inc.php");

$movie_id = $_POST['id'];
if (!is_numeric($movie_id)) {
    echo "error";
    exit();
}

$sql = "SELECT * FROM films WHERE id = {$movie_id}";
$result = $conn->query($sql);

if ($movie_row = $result->fetch_assoc()) {
    $sql = "SELECT MAX(id) AS max_id FROM screenings";
    $result = $conn->query($sql);

    $screening_id = $result->fetch_assoc()['max_id'] + 1;

    $screening_time = $_POST['time'];
    $screening_date = $_POST['date'];

    $stmt = $conn->prepare("INSERT INTO screenings (id, movie_id, screening_date, screening_time)
                            VALUES (?, ?, ?, ?)");

    $stmt->bind_param("iiss", $screening_id, $movie_id, $screening_date, $screening_time);
    $stmt->execute();

    $stmt->close();
    $conn->close();

    $movie_title = $movie_row['title'];
    $poster_url = $movie_row['poster_url'];
    $formatted_date = date("F j", strtotime($screening_date));
    $formatted_time = date("g:i A", strtotime($screening_time));
    echo "{$screening_id};{$movie_id};{$movie_title};{$formatted_date};{$formatted_time};{$poster_url}";
} else echo "error";
