<?php
    include("../.././config/connect.php");
    include ("./layout/header.php");
    $id = $_GET["id"];
    $sql = "select * from tbl_bill where id = $id";
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
        <h1 class="text-primary text-center">Chi tiết đơn hàng</h1>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên khách hàng</th>
                    <th>Địa chỉ</th>
                    <th>Số điện thoại</th>
                    <th>Email</th>
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
                    <td><?php echo $row["name"]; ?></td>
                    <td><?php echo $row["address"]; ?></td>
                    <td><?php echo $row["tel"]; ?></td>
                    <td><?php echo $row["email"]; ?></td>
                    <td><?php echo $row["total"]; ?></td>
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