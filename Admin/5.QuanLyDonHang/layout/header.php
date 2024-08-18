<?php
    require_once "../../config/connect.php";
    $sql = "SELECT *FROM tbl_danhmuc";
    $danhmuc = mysqli_query($conn,$sql);
?>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lĩnh Vực</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="./css/styles.css">

    <style>
    .icon {
        width: 20px;
        height: 20px;
        object-fit: contain;
    }

    * {
        box-sizing: border-box;
    }

    .label {
        font-size: 30px;
        display: block;
        text-align: center;
    }

    .btn-danhmuc {
        display: block;
        margin: 20px auto 0;
    }

    img {
        width: 100px;
        height: 100px;
        object-fit: contain;
    }
    </style>
</head>

<body>
    <header>
        <nav class="navbar navbar-expand-sm bg-light navbar-light shadow">
            <div class="container">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href=".././index.php">Trang chính</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./">Quản lý Danh Mục</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href=".././2.QuanLySanPham/index.php">Quản lý Sản Phẩm</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href=".././3.QuanLyNhaSanXuat">Quản lý Nhà Sản Xuất</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href=".././4.QuanLyNguoiDung">Quản lý Người DÙng</a>
                    </li>
                </ul>

                <ul class="navbar-nav text-end">
                    <?php if(isset($_SESSION["nguoidung"])){ ?>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            Xin chào <?php echo $_SESSION["nguoidung"]["hoten"]; ?>!
                        </a>
                    </li>
                    <?php } ?>

                    <li class="nav-item">
                        <a class="nav-link" href="./dangxuat.php">Đăng xuất</a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
</body>