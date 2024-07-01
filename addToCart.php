<?php

    session_start();
    $_SESSION['cart'][] = $_POST;
    header('location:productDetails.php?id='.$_POST['prod_id']);
        