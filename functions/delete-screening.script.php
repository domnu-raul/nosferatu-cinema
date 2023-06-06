<?php
include ("../includes/database.inc.php");

$id = $_POST['id'];
$sql = "DELETE FROM screenings WHERE id = {$id}";
$conn->query($sql);

$conn->close();

echo 'success';
?>