<?php
include 'config.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get data from the POST request
    $aname = $_POST['aname'];
    $aloc = $_POST['aloc'];
    $dop = $_POST['dop'];
    $remarks = $_POST['remarks'];
    $cost = $_POST['cost'];


    
            $sql = "INSERT INTO asset_entry (asset_name, asset_loc, dop, remarks, cost) 
                    VALUES ('$aname','$aloc', '$dop', '$remarks','$cost')";
            if ($conn->query($sql) === TRUE) {
                echo '<script>
                        alert("Assert inserted successfully!");
                        window.location.href = "index.php";
                     </script>';
        exit();
            } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }
            $conn->close();
    
}        
?>
