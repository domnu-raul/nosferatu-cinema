<?php
include("../includes/database.inc.php");
$tmdb_id = $_POST['id'];
$sql = "DELETE FROM films WHERE id = {$tmdb_id}";
$conn->query($sql);
$sql = "DELETE FROM screenings WHERE movie_id = {$tmdb_id}";
$conn->query($sql);

mysqli_close($conn);

echo "success";
?>