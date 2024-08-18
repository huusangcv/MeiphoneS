<?php
        require_once "./connect.php";
        if(isset($_POST["submit"])){
        $id = $_POST["txtid"];
        $email = $_POST["txtEmail"];
        $matkhau =  $_POST["txtMatKhau"];
        $hoten = $_POST["txtHoTen"];
        $trangthai = $_POST["optTrangThai"];
        }
        
        if(trim($email) == "" || trim($matkhau) == "" || trim($hoten) == "" || !is_numeric($trangthai)){
            echo "Không được bỏ trống";
        }
        else
        {
            $sql2 = "UPDATE nguoidung SET email = '$email', 
                                        matkhau = '$matkhau',
                                        hoten = '$hoten', 
                                        trangthai = $trangthai
                                        where id = $id";
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