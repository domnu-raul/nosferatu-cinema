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

    $sql = "SELECT * FROM users WHERE username = '{$username}'";
    $result = $conn->query($sql);

    if ($row = $result->fetch_assoc())
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