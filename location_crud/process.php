<?php
include('../config.php');
if (isset($_POST["create"])) {
   
    $location = mysqli_real_escape_string($conn, $_POST["type"]);
    $description = mysqli_real_escape_string($conn, $_POST["description"]);
    $sqlInsert = "INSERT INTO location(val_loc ,asset_loc, description) VALUES ('$location','$location','$description')";
    if(mysqli_query($conn,$sqlInsert)){
        session_start();
        $_SESSION["create"] = "Location Added Successfully!";
        header("Location:index.php");
    }else{
        die("Something went wrong");
    }
}
if (isset($_POST["edit"])) {
    $location = mysqli_real_escape_string($conn, $_POST["type"]);
    $description = mysqli_real_escape_string($conn, $_POST["description"]);
    $loc_id = mysqli_real_escape_string($conn, $_POST["loc_id"]);

    // Use prepared statement to avoid SQL injection
    $sqlUpdate = "UPDATE location SET val_loc = ?, asset_loc = ?, description = ? WHERE loc_id = ?";
    $stmt = $conn->prepare($sqlUpdate);

    if ($stmt) {
        // Bind parameters
        $stmt->bind_param("sssi", $location, $location, $description, $loc_id);

        // Execute the statement
        if ($stmt->execute()) {
            session_start();
            $_SESSION["update"] = "Location updated successfully!";
            header("Location: index.php");
            exit(); // Always exit after a header redirect
        } else {
            // Handle execution error
            die("Execution error: " . $stmt->error);
        }

        // Close the statement
        $stmt->close();
    } else {
        // Handle prepared statement error
        die("Prepared statement error: " . $conn->error);
    }
} else {
    // Handle the case where $_POST["edit"] is not set
    die("Invalid request");
}

?>