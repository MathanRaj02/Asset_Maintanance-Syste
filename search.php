<?php

include 'config.php';



$search = mysqli_real_escape_string($conn, $_POST['search']);

$query = "SELECT * FROM asset_entry 
          WHERE id LIKE '%$search%' OR 
                asset_name LIKE '%$search%' OR 
                asset_loc LIKE '%$search%' OR 
                dop LIKE '%$search%' OR 
                remarks LIKE '%$search%'";

$result = mysqli_query($conn, $query);

while ($row = mysqli_fetch_assoc($result)) {
    echo "<tr>";
    echo "<td>" . $row['id'] . "</td>";
    echo "<td>" . $row['asset_name'] . "</td>";
    echo "<td>" . $row['asset_loc'] . "</td>";
    echo "<td>" . $row['dop'] . "</td>";
    echo "<td>" . $row['remarks'] . "</td>";
    echo "</tr>";
}

mysqli_close($conn);



?>
