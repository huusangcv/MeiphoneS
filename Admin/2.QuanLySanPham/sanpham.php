<?php
    include("../.././config/connect.php");
    include ("./layout/header.php");
    $sql = "select *
			from tbl_sanpham A, tbl_nhasanxuat B
			where A.IdNhaSanXuat = B.IdNhaSanXuat ORDER by `IdSanPham` DESC";
    $sanpham = mysqli_query($conn,$sql);
?>

<body>
    <div class="container">
        <a href="./themsanpham.php" style="position: fixed;">Thêm Sản Phẩm</a>
        <form action="./timkiemsanpham.php" class="filter__form form">
            <div class="form_input text-end">
                <input type="text" class="filter__form-input" name="txtTop-act__search"
                    placeholder="Tìm kiếm sản phẩm" />
                <button type="submit" class="btn btn-primary">Tìm</button>
            </div>
        </form>
        <h1 class="text-primary text-center">DANH SÁCH SẢN PHẨM</h1>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Mã sản phẩm</th>
                    <th>Tên sản phẩm</th>
                    <th>Nhà sản xuất</th>
                    <th>Hình ảnh</th>
                    <th>Ghi chú</th>
                    <th>Xóa</th>
                    <th>Sửa</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $stt = 1;
                    while ($row = mysqli_fetch_array($sanpham)){
                ?>
                <tr>
                    <td><?php echo $stt; ?></td>
                    <td><?php echo $row["MaSanPham"]; ?></td>
                    <td><?php echo $row["TenSanPham"]; ?></td>
                    <td><?php echo $row["TenNhaSanXuat"]; ?></td>
                    <td><img src="../images/<?php echo $row["HinhAnh"];?>" alt=""></td>
                    <td><?php echo $row["GhiChu"]; ?></td>
                    <td><a onclick="return Xoa('<?php echo $row['TenSanPham']; ?>')"
                            href="./xoasanpham.php?id=<?php echo $row["IdSanPham"];?>"><img
                                src="../images/icon/delete.svg" alt="" class="icon"></a>
                    </td>
                    <td><a href="./suasanpham.php?id=<?php echo $row["IdSanPham"];?>"><img src="../images/icon/fix.svg"
                                alt="" class="icon"></a></td>
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