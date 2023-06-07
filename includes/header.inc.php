<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<header>
    <div class="logo">
        <a href="home.php"><img src="assets/logo.png" alt="site-logo"></a>
    </div>

    <ul class="header-right">
        <li name="home-button"><a href="home.php">Home</a></li>
        <li name="about-button"><a href="#about">About</a></li>
        <li name="movies-button"><a href="movies.php">Movies</a></li>
        <?php
        if (isset($_SESSION['user'])) {
            if ($_SESSION['user'] === 'admin') {
                echo "<li name=\"dashboard-button\"><a href=\"dashboard.php\">Dashboard</a></li>";
            }
            echo "<li><a href=\"functions/sign-out.script.php\">Sign Out</a></li>";
        } else {
            echo "<li name=\"sign-in-button\"><a href=\"sign-in.php\">Sign In</a></li>";
        }
        ?>
    </ul>
</header>