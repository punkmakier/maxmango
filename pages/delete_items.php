<?php
include '../includes/connection.php';


if(isset($_POST['prodId'])){


    $query = 'DELETE FROM product WHERE product_id = ' . $_POST['prodId'];
    $result = mysqli_query($db, $query) or die (mysqli_error($db));
    if($result){
        echo "success";
    }else{
        echo "fail";
    }
}

?>