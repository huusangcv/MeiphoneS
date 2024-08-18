<?php
    session_start();
    $conn = mysqli_connect("localhost","root","","quanlybanhang");
    if(!$conn){
    die("Lỗi kết nối: " . mysqli_connect_error());
    }

   // Lấy thông tin từ FORM
    if(isset($_POST["dangnhap"])){
        $TenDangNhap = $_POST["TenDangNhap"];
        $MatKhau = md5($_POST["MatKhau"]); // mã hóa mật khẩu
        $sql ="SELECT * from nguoidung WHERE email = '$TenDangNhap' AND matkhau = '$MatKhau' LIMIT 1";	
        $kq = mysqli_query($conn, $sql);
        $count = mysqli_num_rows($kq);
        if($count > 0){
        if ( $count > 0) {
            $_SESSION["nguoidung"] = $TenDangNhap;
            // cho truy cập vào trang chính quản trị
            echo "<script>alert('Đăng nhập thành công');
            window.location.href = './index.php';
            </script>";
        }
        }else{
            echo "<script>alert('Sai mật khẩu hoặc tài khoản');
            window.location.href = './dangnhap.php';
            </script>";
        }
    }
    
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DoAn</title>
    <style>
    body {
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        background-color: rgb(163, 197, 242);
        font-family: sans-serif;
    }

    .Login {
        width: 300px;
        height: 350px;
        background-color: white;
        border: 1px solid grey;
        border-radius: 10px;
        text-align: center;


    }

    .Login h2 {
        display: inline-block;
        color: grey;
    }

    .Login input {
        width: 200px;
        height: 40px;
        border-radius: 5px;
        border: 1px solid grey;
        padding-left: 20px;
        margin-bottom: 10opx;
        margin-top: 5px;
    }

    .check input {
        margin-top: 8px;
        width: 10px;
        height: 10px;
    }

    .Login button {
        margin-top: 15px;
        width: 200px;
        height: 40px;
        border: none;
        border-radius: 10px;
        background-color: rgb(163, 197, 242);
        color: white;
    }

    p {
        display: inline-block;
        float: left;
        padding-left: 40px;
        margin: 0px;
    }

    a {
        margin-top: 20px;
        display: block;
    }
    </style>
</head>

<body>

    <div class="Login">
        <form action="./dangnhap.php" method="POST">
            <h2>ĐĂNG NHẬP</h2>
            <br>
            <p>Email</p>
            <input type="email" class="form-control" id="TenDangNhap" name="TenDangNhap" required>
            <br>
            <p>Mật Khẩu</p>
            <input type="password" class="form-control" id="MatKhau" name="MatKhau" required>
            <br>
            <div class="check">
                <input type="checkbox"> Nhớ mật khẩu
            </div>
            <button type="submit" class="btn btn-primary" name="dangnhap">Đăng nhập</button>
            <a href="#!">Quên Mật Khẩu</a>
        </form>
    </div>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</body>

</html>