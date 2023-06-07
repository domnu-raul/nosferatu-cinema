<?php
$username = $_POST['username'];
$password = $_POST['password'];
$password_repeat = $_POST['password-confirm'];

if (empty($username) || empty($password) || empty($password_repeat)) {
    header('location: ../sign-up.php?error=empty-fields');
    exit();
}

include('../includes/database.inc.php');

$sql = "SELECT * FROM users WHERE username = '{$username}'";
$result = $conn->query($sql);

if ($row = $result->fetch_assoc()) {
    header('Location: ../sign-up.php?error=user-already-exists');
    exit();
}

if (strcmp($password, $password_repeat) != 0) {
    header('location: ../sign-up.php?error=password-not-matching');
    exit();
}

$stmt = $conn->prepare("INSERT INTO users (username, password) VALUES (?, ?)");
$stmt->bind_param("ss", $username, $password);

$stmt->execute();

$stmt->close();
$conn->close();

session_start();
$_SESSION['user'] = $username;
header('location: ../home.php');
?>