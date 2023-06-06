<?php
if (isset($_POST['submit']))
{
    $username = $_POST['username'];
    $password = $_POST['password'];

    if (empty($username) || empty($password)) {
        header('location: ../sign-in.php?error=empty-fields');
        exit();
    }
    
    include('../includes/database.inc.php');

    $sql = 'SELECT * FROM users WHERE username = ?';

    $stmt = mysqli_prepare($conn, $sql);

    mysqli_stmt_bind_param($stmt, "s", $username);

    mysqli_stmt_execute($stmt);

    $result = mysqli_stmt_get_result($stmt);

    if ($row = mysqli_fetch_assoc($result))
    {
        if (strcmp($password, $row['password']) != 0)
        {
            header('location: ../sign-in.php?error=incorrect-password');
            exit();
        }
        else
        {
            session_start();
            $_SESSION['user'] = $username;
            header('location: ../home.php');
            exit();
        }
    }
    else
    {
        header('location: ../sign-in.php?error=incorrect-username');
        exit();
    }
}
else
{
    if(isset($_POST['redirect-sign-up']))
    {
        header('location: ../sign-up.php');
        exit();
    }
}
?>