<?php
if (isset($_GET['loc_id'])) {
include("../config.php");
$loc_id = $_GET['loc_id'];
$sql = "DELETE FROM location WHERE loc_id='$loc_id'";
if(mysqli_query($conn,$sql)){
    session_start();
    $_SESSION["delete"] = "Location Deleted Successfully!";
    header("Location:index.php");
}else{
    die("Something went wrong");
}
}else{
    echo "Book does not exist";
}
?>