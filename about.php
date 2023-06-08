<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <?php include('includes/head-imports.inc.php') ?>
    <link rel="stylesheet" href="styles/about.css">
    <title>About - Nosferatu Cinema</title>
</head>

<body>
    <?php include('includes/header.inc.php') ?>
    <script>
        set_active('about-button');
    </script>
    <div class="wrapper">
        <span></span>

        <section>
            <h2>About</h2>
            <p>At Nosferatu Cinema, we try to offer the best services possible to our customers. This is why there are over 50 screenings per week, and why we put so much effort in designing this website. In this about page, you will learn about the functionalities of this website and the process of developing it.</p>
        </section>

        <section>
            <h2>Functionalities</h2>
            <p>The user experience was carefully developed to provide a satisfying experience for the visitors of the website. Navigation can be done with ease using the header buttons, and filtering information was made easily accesible by just clicking on a movie in the <b>home</b> or <b>movies</b> pages.</p>
            <p>Meanwhile, our dedicated <b>dashboard</b> page empowers our admins with all functionalities needed to manage the database in an easy and intuitive manner. Improving our user experience by enabling fast updates.</p>
        </section>

        <section>
            <h2>Technologies Used</h2>
            <p>To ensure flawless functionality and an intuitive user interface, our website was developed with a blend of cutting-edge technologies. To ensure efficient data management and retrieval, we used a MySQL database to store all information, for communicating with this database, PHP and Apache(XAMPP) were used to perform the server-side operations. For the front end, JavaScript and jQuery were used to provide dynamic functionality, especially jQuery's AJAX functionality, which enabled our admins to modify data in real-time, without the need of reloading the page.</p>
        </section>

        <section>
            <h2>Powered by TMDB API</h2>
            <p>All of this would not have been possible without the help of the TMDB API. We integrated this API to fetch all movie data displayed, ensuring you have quick access to all the essential details when choosing a movie to watch. With the power of this API, our administrators are able to append movie details to the database blazingly fast, further improving the user experience.</p>
        </section>

        <section>
            <h2>Note from the Author</h2>
            <p>Nosferatu Cinema is one of my most ambitious projects yet. If you want to learn more about why and how I developed it, visit the <a href="https://github.com/domnu-raul/nosferatu-cinema">Github</a> page, where you can also see the <a href="https://github.com/domnu-raul/nosferatu-cinema/tree/main/documentation-tex">documentation</a>.</p>
        </section>
        <footer>
            
        </footer>
    </div>
</body>
</html>