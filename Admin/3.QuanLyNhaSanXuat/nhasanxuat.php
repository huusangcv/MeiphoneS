<?php
    include("../.././config/connect.php");
    include ("./layout/header.php");
    $sql = "SELECT *FROM tbl_nhasanxuat";
    $nhasanxuat = mysqli_query($conn,$sql);
?>

<body>
    <div class="container">
        <h1 class="text-primary text-center">DANH SÁCH NHÀ SẢN XUẤT</h1>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên Nhà Sản Xuất</th>
                    <th>Xóa</th>
                    <th>Sửa</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $stt = 1;
                    while ($row = mysqli_fetch_array($nhasanxuat)){
                ?>
                <tr>
                    <td><?php echo $stt; ?></td>
                    <td><?php echo $row["TenNhaSanXuat"]; ?></td>
                    <td><a onclick="return Xoa('<?php echo $row['TenNhaSanXuat']; ?>')"
                            href="./xoanhasanxuat.php?id=<?php echo $row["IdNhaSanXuat"];?>"><img
                                src=".././images/icon/delete.svg" alt="" class="icon"></a>
                    </td>
                    <td><a href="./suanhasanxuat.php?id=<?php echo $row["IdNhaSanXuat"];?>"><img
                                src=".././images/icon/fix.svg" alt="" class="icon"></a></td>
                </tr>
                <?php
                $stt++;
                }    $conn->close();
                ?>
            </tbody>
        </table>
        <a href="./themnhasanxuat.php">Thêm Nhà Sản Xuất</a>
    </div>

    <script>
    function Xoa(name) {
        return confirm("Bạn có chắc chắn muốn xóa lĩnh vực: " + name + "?");
    }
    </script>
</body>

</html>