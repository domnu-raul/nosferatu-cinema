<?php
if (isset($_POST['submit'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $password_repeat = $_POST['password-confirm'];

    if (empty($username) || empty($password) || empty($password_repeat)) {
        header('location: ../sign-up.php?error=empty-fields');
        exit();
    }

    include('../includes/database.inc.php');

    $sql = "SELECT * FROM users WHERE username = ?";
    $stmt = mysqli_prepare($conn, $sql);
    mysqli_stmt_bind_param($stmt, "s", $username);
    mysqli_stmt_execute($stmt);
    mysqli_stmt_store_result($stmt);

    if (mysqli_stmt_num_rows($stmt) > 0) {
        header('Location: ../sign-up.php?error=user-already-exists');
        exit();
    }

    if (strcmp($password, $password_repeat) != 0) {
        header('location: ../sign-up.php?error=password-not-matching');
        exit();
    }

    $sql = "INSERT INTO users (username, password) VALUES (?, ?)";
    
    $stmt = mysqli_prepare($conn, $sql);
    
    mysqli_stmt_bind_param($stmt, "ss", $username, $password);
    
    mysqli_stmt_execute($stmt);

    session_start();
    $_SESSION['user'] = $username;
    unset($_POST['username']);
    unset($_POST['password']);
    unset($_POST['password-confirm']);
    header('location: ../home.php');
}
else
{
    header('location: ../sign-up.php');
    exit();
}
?>
