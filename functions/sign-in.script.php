<?php
if (!isset($_POST['submit'])) {
    if (isset($_POST['redirect-sign-up'])) {
        header('location: ../sign-up.php');
        exit();
    }
}

$username = $_POST['username'];
$password = $_POST['password'];

if (empty($username) || empty($password)) {
    header('location: ../sign-in.php?error=empty-fields');
    exit();
}

require('../includes/database.inc.php');

$sql = "SELECT * FROM users WHERE username = '{$username}'";
$result = $conn->query($sql);

if ($row = $result->fetch_assoc()) {
    if (password_verify($password, $row['password'])) {
        session_start();
        $_SESSION['user'] = $username;
        header('location: ../home.php');
    }
    else header('location: ../sign-in.php?error=incorrect-password');
} else header('location: ../sign-in.php?error=incorrect-username');
?>
