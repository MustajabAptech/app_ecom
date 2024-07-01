<?php
    require_once('db.php');


    $temp_name  = $_FILES['prod_image']['tmp_name'];
    $fileName = $_FILES['prod_image']['name'];
    $prod_image = "prod_image/".$fileName;
    if(move_uploaded_file($temp_name,$prod_image)){
        session_start();
        $prod_name = $_POST['prod_name'];
        $prod_price = $_POST['prod_price'];
        $prod_stock = $_POST['prod_stock'];
        $created_at = date('Y-m-d H:i:s',time());
        $added_by = $_SESSION['user']['id'];
        $sqlQuery = "INSERT INTO products (prod_name,prod_price,prod_stock,prod_img,created_at,added_by) VALUES('". $prod_name."','".$prod_price."','".$prod_stock."','".$prod_image."','".$created_at."',".$added_by.")";
        $result  = mysqli_query($connection,$sqlQuery);
        if($result){
            header('location:products.php?msg=Data Inserted Successfully');
        }else{
            header('location:addProduct.php?msg=Please try again later');
        }
    }else{
        header('location:addProduct.php?msg=Image not Uploaded');
    }
   