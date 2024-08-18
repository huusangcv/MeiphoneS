<?php
    $conn = mysqli_connect( "localhost","root","","quanlybanhang");
    if (!$conn) {
        die("Lỗi kết nối: " . mysqli_connect_error());
    }
    //Sửa 
    $ten = $_POST["txtNhaSanXuat"];
    $IdNhaSanXuat = $_POST["txtID"];
    if(trim($ten) == ""){
        echo "Tên Không Được Bỏ Trống!!";
    }
    else
    {
        $sql2 = "UPDATE tbl_nhasanxuat SET  TenNhaSanXuat = '$ten'
                                    where IdNhaSanXuat = $IdNhaSanXuat";
        $result2 = mysqli_query($conn, $sql2);
        if($result2 == true){
       header("Location:index.php");
    }else
    {
        echo "Lỗi, không sửa được!" . "</br>" .$conn->error;
    }
    $conn->close();
    }
?>