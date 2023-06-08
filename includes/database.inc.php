<?php
    $json = file_get_contents(__DIR__ . "/../data/include.json");

    $data = json_decode($json, true);
  
    $db_server = $data['db_server'];
    $db_user = $data['db_user'];
    $db_pass = $data['db_pass'];
    $db_name = $data['db_name'];
    $api_key = $data['api_key'];

    $conn = mysqli_connect($db_server, $db_user, $db_pass, $db_name);
    if (!$conn) die("Connection failed: " . mysqli_connect_error());

    $start_date = date("Y-m-d");
    $end_date = date("Y-m-d", strtotime("+7 days"));
?>
