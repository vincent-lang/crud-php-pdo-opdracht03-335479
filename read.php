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

$sql = "SELECT Id
            ,naam_achtbaan
        FROM achtbaan
        ORDER BY Id ASC";

$statement = $pdo->prepare($sql);

$statement->execute();

$result = $statement->fetchAll(PDO::FETCH_OBJ);

$rows = "";
foreach ($result as $info) {
    $rows .= "<tr>
                <td>$info->Id</td>
                <td>$info->naam_achtbaan</td>
                <td>
                    <a href='delete.php?id={$info->Id}'>
                        <img src='img/b_drop.png' alt='Drop'</img>
                    </a>
                </td>
                <td>
                    <a href='update.php?id={$info->Id}'>
                        <img src='img/b_edit.png' alt='Edit'</img>
                    </a>
                </td>
            </tr>";
}

?>


<h3>Tabel achtbaan</h3>
<a href="index.php"><button>nieuwe achtbaan</button></a>
<table border="1">
    <thead>
        <th>Id</th>
        <th>naam_achtbaan</th>
        <th></th>
        <th></th>
    </thead>
    <tbody>
        <?= $rows; ?>
    </tbody>
</table>