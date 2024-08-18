<?php
    include (".././config/connect.php");
    include ("./layout/header.php");

    $sql = "SELECT *FROM tbl_sanpham LIMIT 8";

    $sanpham = mysqli_query($conn, $sql);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <div class="container">
        <h1 class="text-primary text-center" style="margin-top: 50px;">DANH SÁCH SẢN PHẨM BÁN CHẠY</h1>
        <div class="row gy-4">
            <?php
        while ($row_sp = mysqli_fetch_assoc($sanpham)) {?>
            <div class="col">
                <div class="card" style="width: 18rem;">
                    <img src="./images/<?php echo $row_sp["HinhAnh"]; ?>" class="card-img-top" alt="...">
                    <div class="card-body">
                        <p class="card-text"><?php echo $row_sp["TenSanPham"]; ?>"</p>
                    </div>
                </div>
            </div>
            <?php
        }
        ?>

        </div>
    </div>
    </div>

    <footer class="py-3 my-4">
        <ul class="nav justify-content-center border-bottom pb-3 mb-3">
            <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">
                    <font style="vertical-align: inherit;">
                        <font style="vertical-align: inherit;">Trang chủ</font>
                    </font>
                </a></li>
            <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">
                    <font style="vertical-align: inherit;">
                        <font style="vertical-align: inherit;">Đặc trưng</font>
                    </font>
                </a></li>
            <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">
                    <font style="vertical-align: inherit;">
                        <font style="vertical-align: inherit;">Định giá</font>
                    </font>
                </a></li>
            <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">
                    <font style="vertical-align: inherit;">
                        <font style="vertical-align: inherit;">Câu hỏi thường gặp</font>
                    </font>
                </a></li>
            <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">
                    <font style="vertical-align: inherit;">
                        <font style="vertical-align: inherit;">Về</font>
                    </font>
                </a></li>
        </ul>
        <p class="text-center text-muted">
            <font style="vertical-align: inherit;">
                <font style="vertical-align: inherit;">Mydu</font>
            </font>
        </p>
    </footer>
</body>

</html>