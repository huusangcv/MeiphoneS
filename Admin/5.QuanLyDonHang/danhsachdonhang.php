<?php
    include("../.././config/connect.php");
    include ("./layout/header.php");
    $sql = "select * from tbl_cart";
    $sanpham = mysqli_query($conn,$sql);
?>

<body>
    <div class="container">
        <form action="./timkiemsanpham.php" class="filter__form form form__search">
            <div class="form_input text-end">
                <input type="text" class="filter__form-input" name="txtTop-act__search"
                    placeholder="Tìm kiếm sản phẩm" />
                <button type="submit" class="btn btn-primary">Tìm</button>
            </div>
        </form>
        <h1 class="text-primary text-center">DANH SÁCH ĐƠN ĐẶT HÀNG</h1>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên sản phẩm</th>
                    <th>Hình ảnh</th>
                    <th>Đơn giá</th>
                    <th>Số lượng</th>
                    <th>Thành tiền</th>

                </tr>
            </thead>
            <tbody>
                <?php
                $stt = 1;
                    while ($row = mysqli_fetch_array($sanpham)){
                ?>
                <tr>
                    <td><?php echo $stt; ?></td>
                    <td><?php echo $row["tensp"]; ?></td>
                    <td><img src="../images/<?php echo $row["hinhsp"];?>" alt=""></td>
                    <td><?php echo $row["dongia"]; ?></td>
                    <td><?php echo $row["soluong"]; ?></td>
                    <td><?php echo $row["thanhtien"]; ?></td>
                    <td><a href="./chitietdonhang.php?id=<?php echo $row["idbill"];?>">Chi tiết đơn hàng</a></td>
                </tr>

                <?php
                $stt++;
                }    $conn->close();
                ?>
            </tbody>
        </table>

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

    <script>
    function Xoa(name) {
        return confirm("Bạn có chắc chắn muốn xóa lĩnh vực: " + name + "?");
    }
    </script>


</body>

</html>