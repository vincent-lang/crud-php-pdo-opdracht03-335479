<?php

require("config.php");

$dsn = "mysql:host=$dbHost;dbname=$dbName;charset=UTF8";

try {
    $pdo = new PDO($dsn, $dbUser, $dbPass);
    if ($pdo) {
    } else {
    }
} catch (PDOException $e) {
    echo $e->getMessage();
}

$sql = "INSERT INTO achtbaan (Id
                        ,naam_achtbaan)
            VALUES      (NULL
                        ,:naam_achtbaan);";
$statement = $pdo->prepare($sql);

$statement->bindValue(":naam_achtbaan", $_POST["naam_achtbaan"], PDO::PARAM_STR);

$statement->execute();

// header("location: read.php");
