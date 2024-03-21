<?php
if (isset($_GET['id'])) {
include("config.php");
$ass_id = $_GET['id'];
$sql = "DELETE FROM asset_entry WHERE id='$ass_id'";
if(mysqli_query($conn,$sql)){
    session_start();
    $_SESSION["delete"] = "Asset Deleted Successfully!";
    header("Location:view.php");
}else{
    die("Something went wrong");
}
}else{
    echo "Asset does not exist";
}
?>