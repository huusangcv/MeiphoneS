<?php
    include("../.././config/connect.php");
    include ("./layout/header.php");
    //Thêm 
    if(isset($_POST["txtEmail"])){
        $email = $_POST["txtEmail"];
        $matkhau =  md5($_POST["txtMatKhau"]);
        $hoten = $_POST["txtHoTen"];
        $trangthai =  $_POST["optTrangThai"];
        $sql = "INSERT INTO nguoidung(email,matkhau,hoten,trangthai) VALUES('$email','$matkhau','$hoten','$trangthai')";
        mysqli_query($conn,$sql);
        header("Location:index.php");
    }
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm Người Dùng</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <style>
    input {
        width: 300px !important;
    }
    </style>
</head>

<body>
    <div class="container">
        <div class="row">
            <form action="./themnguoidung.php" method="POST">
                <h2>Thêm Người Dùng</h2>
                <div class="form-group">
                    <label for="Email">Email:</label>
                    <input type="Email" class="form-control" id="Email" name="txtEmail">
                </div>
                <div class="form-group">
                    <label for="password">Mật Khẩu:</label>
                    <input type="password" class="form-control" id="password" name="txtMatKhau">
                </div>
                <div class="form-group">
                    <label for="text">Họ Tên:</label>
                    <input type="text" class="form-control" id="text" name="txtHoTen">
                </div>
                <div class="form-group">
                    <label for="text">Trạng Thái:</label>
                    <select name="optTrangThai" id="">
                        <option value="1">Hoạt Động</option>
                        <option value="0">Khóa</option>
                    </select>

                </div>
                <button type="submit" class="btn btn-primary">Thêm</button>
            </form>
        </div>
    </div>
</body>

</html>