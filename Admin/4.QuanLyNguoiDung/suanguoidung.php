<?php
    include("../.././config/connect.php");
    include ("./layout/header.php");
    $id = '';
    $id = $_GET['id'];
    $sql = "select *from nguoidung where id = $id";
    $result = mysqli_query($conn,$sql);
    $row = mysqli_fetch_assoc($result);
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

    .hide {
        display: none;
    }
    </style>
</head>

<body>
    <div class="container">
        <div class="row">
            <form action="./xylysua.php" method="POST">
                <h2>Sửa Người Dùng</h2>
                <div class="form-group hide">
                    <label for="number">ID:</label>
                    <input type="number" class="form-control" id="number" name="txtid" value="<?php echo $row["id"]; ?>"
                        readonly>
                </div>
                <div class="form-group">
                    <label for="number">Email:</label>
                    <input type="Email" class="form-control" id="Email" name="txtEmail"
                        value="<?php echo $row["email"]; ?>">
                </div>
                <div class="form-group">
                    <label for="password">Mật Khẩu:</label>
                    <input type="password" class="form-control" id="password" name="txtMatKhau"
                        value="<?php echo $row["matkhau"]; ?>">
                </div>
                <div class="form-group">
                    <label for="text">Họ Tên:</label>
                    <input type="text" class="form-control" id="text" name="txtHoTen"
                        value="<?php echo $row["hoten"]; ?>">
                </div>
                <div class="form-group">
                    <label for="text">Trạng Thái:</label>
                    <select name="optTrangThai" id="">
                        <option value="1">Hoạt Động</option>
                        <option value="0">Khóa</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary" name="submit">Sửa</button>
            </form>
        </div>
    </div>
</body>

</html>