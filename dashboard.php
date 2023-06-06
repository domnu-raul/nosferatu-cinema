<?php
    session_start();
    if (isset($_SESSION['user']))
    {
        if ($_SESSION['user'] !== 'admin')
        {
            header('location: home.php');
            exit();
        }
    }
    else
    {
        header('location: home.php');
        exit();
    }

    if (!isset($_GET['table']))
    {
        header('location: dashboard.php?table=movies');
        exit();
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <?php include("includes/head-imports.inc.php")?>
    <link rel="stylesheet" href="styles/dashboard.css">
    <title>Dashboard - Nosferatu Cinema</title>
</head>
<body>
    <?php include('includes/header.inc.php'); ?>
    <script> set_active('dashboard-button'); </script>
    <main>
        <div class="wrapper">
            <span></span>
            <div id="table-selector">
                <a name="movies-table-btn" href="dashboard.php?table=movies">Movies</a>
                <a name="screenings-table-btn" href="dashboard.php?table=screenings">Screenings</a>
            </div>
            <?php
                if($_GET['table'] === 'movies') include("includes/movie-table.inc.php");
                else include("includes/screenings-table.inc.php");
            ?>
        </div>
    </main>
</body>
</html>