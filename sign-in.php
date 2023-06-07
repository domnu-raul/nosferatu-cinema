<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <?php include("includes/head-imports.inc.php") ?>
    <title>Sign In - Nosferatu Cinema</title>
    <link rel="stylesheet" href="styles/form.css">
    <style>
        .wrapper {
            grid-template-rows: 100px .7fr 1fr 1fr;
        }

        .form p {
            margin: 0;
            padding-top: 10px;
            margin-bottom: -5px;
            color: var(--red-color);
            font-size: small;
            font-weight: bold;
        }
    </style>
</head>

<body>
    <main>
        <?php include('includes/header.inc.php'); ?>
        <script>
            set_active('sign-in-button');
        </script>
        <div class="wrapper">
            <section class="form">
                <h2>Sign In</h2>
                <form action="./functions/sign-in.script.php" method="post">
                    <input type="text" name="username" placeholder="Enter username...">
                    <input type="password" name="password" placeholder="Enter password...">
                    <button type="submit" name="submit">Submit</button>
                    <button name="redirect-sign-up">Sign Up</button>
                </form>
                <?php
                if (isset($_GET['error'])) {
                    if (strcmp($_GET['error'], 'empty-fields') == 0) {
                        echo "<p>Please fill in all fields.</p>";
                    } else if (strcmp($_GET['error'], 'incorrect-password') == 0) {
                        echo "<p>Incorrect password.</p>";
                    } else if (strcmp($_GET['error'], 'incorrect-username') == 0) {
                        echo '<p>Username not found.</p>';
                    }
                }
                ?>
            </section>
        </div>
    </main>
</body>

</html>