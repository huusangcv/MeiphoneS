<?php
    include("../.././config/connect.php");
    include ("./layout/header.php");
    if(isset($_GET["txtTop-act__search"])){
        $nameSearch = $_GET["txtTop-act__search"];
    }
    $sql_search = "SELECT *FROM tbl_sanpham,tbl_nhasanxuat where TenSanPham like '%$nameSearch%' and tbl_sanpham.IdNhaSanXuat = tbl_nhasanxuat.IdNhaSanXuat";
    $query_search = mysqli_query($conn, $sql_search);
?>

<body>
<div class="container">
<a href="./index.php" style="position: fixed;">Trở lại</a>
<h1 class="text-primary text-center">DANH SÁCH SẢN PHẨM</h1>
<table class="table table-striped">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Mã sản phẩm</th>
                    <th>Tên sản phẩm</th>
                    <th>Nhà sản xuất</th>
                    <th>Hình ảnh</th>
                    <th>Xóa</th>
                    <th>Sửa</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $stt = 1;
                    while ($row = mysqli_fetch_array($query_search)){
                ?>
                <tr>
                    <td><?php echo $stt; ?></td>
                    <td><?php echo $row["MaSanPham"]; ?></td>
                    <td><?php echo $row["TenSanPham"]; ?></td>
                    <td><?php echo $row["TenNhaSanXuat"]; ?></td>
                    <td><img src="../images/<?php echo $row["HinhAnh"];?>" alt=""></td>
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

</body>
