<?php
    $conn = mysqli_connect( "localhost","root","","quanlybanhang");
    if (!$conn) {
        die("Lỗi kết nối: " . mysqli_connect_error());
    }
    //Sửa 
    $id = $_GET['id'];
    $ten = $_POST["txtTenDanhMuc"];
    $idDanhMuc = $_POST["txtID"];
    if(trim($ten) == ""){
        echo "Tên Không Được Bỏ Trống!!";
    }
    else
    {
        $sql2 = "UPDATE tbl_danhmuc SET  tendanhmuc = '$ten'
                                    where id = $idDanhMuc";
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