<?php session_start() ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <?php include("includes/head-imports.inc.php") ?>
    <link rel="stylesheet" href="styles/home.css">
    <title>Home - Nosferatu Cinema</title>
</head>

<body>
    <?php include('includes/header.inc.php'); ?>
    <script>
        set_active('home-button');
    </script>
    <main>
        <div class="wrapper">
            <div></div>
            <h2>This week</h2>
            <div class="this-week">
                <?php
                include("includes/database.inc.php");

                $sql = "SELECT s.id, s.movie_id, s.screening_date,
                        m.title, m.director, m.poster_url, m.description, m.duration
                        FROM screenings s
                        INNER JOIN films m ON s.movie_id = m.id
                        WHERE screening_date BETWEEN '{$start_date}' AND '{$end_date}'
                        GROUP BY s.movie_id";
                $result = $conn->query($sql);

                while ($row = $result->fetch_assoc()) {
                    echo "<a class=\"movie\" href=\"movies.php?id=" . $row["movie_id"] . "\">";
                    echo "<img src=\"{$row['poster_url']}\" class=\"poster\">";
                    echo "<p class=\"description\">{$row['description']}</p>";
                    echo "<h2 class=\"title\">{$row['title']}</h2>";
                    echo "<h2 class=\"director\">directed by<br>{$row['director']}</h2>";
                    echo "<h2 class=\"runtime\">Runtime<br>{$row['duration']} minutes</h2>";
                    echo "</a>";
                }
                $conn->close();
                ?>
            </div>
            <div class="footer"></div>
        </div>
    </main>
</body>

</html>