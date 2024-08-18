<?php
    $severName = "localhost";
    $userName = "root";
    $password = "";
    $dataBase = "bai7";
    $conn = mysqli_connect($severName,$userName,$password,$dataBase);
    if (!$conn) {
        die("Lỗi kết nối: " . mysqli_connect_error());
    }
?>