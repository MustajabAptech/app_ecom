<?php
require_once('db.php');
$id = $_GET['prod_id'];
$sqlQuery = "DELETE FROM `products` WHERE prod_id=".$id;
$result  = mysqli_query($connection,$sqlQuery);

//die("IDhar aya hun");
if($result){
    header('location:products.php?msg=Data Deleted Successfully');
}else{
    header('location:products.php?msg=Please try again later');
}