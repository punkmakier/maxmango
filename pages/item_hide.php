<?php
include '../includes/connection.php';


if(isset($_GET['action']) == "hide"){
    $query = 'UPDATE product SET HIDE = 1 WHERE product_id = ' . $_GET['id'];
    $result = mysqli_query($db, $query) or die (mysqli_error($db));
    if($result){
        header("location: inventory.php");
    }
}








?>