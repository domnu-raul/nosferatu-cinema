<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <?php include("includes/head-imports.inc.php")?>
    <link rel="stylesheet" href="styles/movies.css">
    <title>Movies - Nosferatu Cinema</title>
</head>
<body>
    <?php include('includes/header.inc.php'); ?>
    <script> set_active('movies-button'); </script>
    <main>
        <div class="wrapper">
            <div></div>
            <div class="wrapper-head">
                <h2>
                    <?php
                    include ("includes/database.inc.php");

                    if (isset($_GET["id"]))
                    {
                        $selected_movie = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM films WHERE id = {$_GET['id']}"));
                        echo "Screenings this week for " . $selected_movie['title'];
                    }
                    else echo "Screenings this week";
                    mysqli_close($conn);
                    ?>
                </h2>
            </div>
            <div class="movie-list">
                <div class="list-header">
                    <h2>Poster</h2>
                    <h2>Title</h2>
                    <h2>Date</h2>
                    <h2>Time</h2>
                </div>
                <?php
                    include("includes/database.inc.php");

                    if (isset($_GET["id"]))
                    {
                        $movie_id = $_GET["id"];
                        $sql = "SELECT * FROM screenings WHERE movie_id = {$movie_id} AND screening_date  BETWEEN '{$startDate}' AND '{$endDate}' ORDER BY screening_date, screening_time";
                    }
                    else
                    {
                        $sql = "SELECT * FROM screenings WHERE screening_date BETWEEN '{$startDate}' AND '{$endDate}' ORDER BY screening_date, screening_time";
                    }

                    $result = mysqli_query($conn, $sql);

                    if (mysqli_num_rows($result) > 0)
                    {
                        while ($row = mysqli_fetch_assoc($result))
                        {
                            $query = "SELECT * FROM films WHERE id = {$row['movie_id']}";
                            $movie = mysqli_fetch_assoc(mysqli_query($conn, $query));

                            $formatted_date = date("F j", strtotime($row['screening_date']));
                            $formatted_time = date("g:i A", strtotime($row['screening_time']));
                            echo "<a href=\"movies.php?id={$row['movie_id']}\">";
                            echo "<div class=\"list-row\">";
                                echo "<img class=\"poster\" src=\"" . $movie['poster_url'] . "\">"; 
                                echo "<p>" . $movie['title'] . "</p>";
                                echo "<p>" . $formatted_date . "</p>";
                                echo "<p>" . $formatted_time . "</p>";
                            echo "</div>";
                            echo "</a>";
                        }
                    }
                    
                    mysqli_close($conn);
                ?>
            </div>
            <div class="footer">
            </div>
        </div>
    </main>
</body>
</html>