<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <?php include("includes/head-imports.inc.php")?>
    <title>Sign Up - Nosferatu Cinema</title>
    <link rel="stylesheet" href="styles/form.css">
    <style>
        .wrapper {
            grid-template-rows: 100px .5fr 1fr 1fr;
        }
        .form button {
            grid-column: 1 / span 2;
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
        <script> set_active('sign-in-button'); </script>
        <div class="wrapper">
            <section class="form">
                <h2>Sign Up</h2>
                <form action="php_scripts/sign-up.script.php" method="post">
                    <input type="text" name="username" placeholder="Enter username..." id="uid">
                    <input type="password" name="password" placeholder="Enter password..." id="pass">
                    <input type="password" name="password-confirm" placeholder="Confirm password..." id="pass">
                    <button type="submit" name="submit">Submit</button>
                </form>
                <?php
                if(isset($_GET['error']))
                {
                    if (strcmp($_GET['error'], 'empty-fields') == 0)
                    {
                        echo "<p>Please fill in all fields.</p>";
                    }
                    else if (strcmp($_GET['error'], 'password-not-matching') == 0)
                    {
                        echo "<p>Passwords don't match.</p>";
                    }
                    else if (strcmp($_GET['error'], 'user-already-exists') == 0)
                    {

                        echo "<p>Username already taken.</p>";
                    }
                }
                ?>
            </section>
        </div>
    </main>
</body>
</html>