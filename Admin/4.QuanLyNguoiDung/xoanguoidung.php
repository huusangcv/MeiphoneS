<?php
   include("../.././config/connect.php");
   include ("./layout/header.php");


    $id = $_GET['id'];
    $sql = "delete from nguoidung where id = $id";
    $result = mysqli_query($conn, $sql);

    if($result == true){
       header("Location:index.php");
    }else
    {
        echo "Lỗi, không xóa được!" . "</br>" .$conn->error;
    }
    $conn->close();
?>