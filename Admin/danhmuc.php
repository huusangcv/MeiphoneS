<?php
    include ("./layout/header.php");
    $severName = "localhost";
    $userName = "root";
    $password = "";
    $dataBase = "quanlybanhang";
    $conn = mysqli_connect($severName,$userName,$password,$dataBase);
    if (!$conn) {
        die("Lỗi kết nối: " . mysqli_connect_error());
    }
?>

<body>
    <div class="container">
        <h1 class="text-primary text-center">Danh Mục</h1>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên Danh Mục</th>
                    <th>Xóa</th>
                    <th>Sửa</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $stt = 1;
                    while ($row = mysqli_fetch_array($danhmuc)){
                ?>
                <tr>
                    <td><?php echo $stt; ?></td>
                    <td><?php echo $row["tendanhmuc"]; ?></td>
                    <td><a onclick="return Xoa('<?php echo $row['tendanhmuc']; ?>')"
                            href="./xoadanhmuc.php?id=<?php echo $row["id"];?>"><img src=".././images/icon/delete.svg"
                                alt="" class="icon"></a>
                    </td>
                    <td><a href="./suadanhmuc.php?id=<?php echo $row["id"];?>"><img src=".././images/icon/fix.svg"
                                alt="" class="icon"></a></td>
                </tr>
                <?php
                $stt++;
                }    $conn->close();
                ?>
            </tbody>
        </table>
        <a href="./themdanhmuc.php">Thêm Danh Mục</a>
    </div>

    <script>
    function Xoa(name) {
        return confirm("Bạn có chắc chắn muốn xóa lĩnh vực: " + name + "?");
    }
    </script>
</body>

</html>