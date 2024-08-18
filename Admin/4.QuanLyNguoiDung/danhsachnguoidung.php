<?php
    include("../.././config/connect.php");
    include ("./layout/header.php");
    $sql = "SELECT *FROM nguoidung";
    $nguoidung = mysqli_query($conn,$sql);
?>
<div class="container">
    <h3 class="text-primary text-center">Danh sách người dùng</h3>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Id</th>
                <th>Email</th>
                <th>Mật Khẩu</th>
                <th>Họ Tên</th>
                <th>Trạng Thái</th>
                <th>Xóa</th>
                <th>Sửa</th>
            </tr>
        </thead>
        <tbody>
            <?php
                    while ($row = mysqli_fetch_array($nguoidung)){
                ?>
            <tr>
                <td><?php echo $row["id"]; ?></td>
                <td><?php echo $row["email"]; ?></td>
                <td><?php echo $row["matkhau"]; ?></td>
                <td><?php echo $row["hoten"]; ?></td>
                <td><?php echo (($row["trangthai"]==1)?"Đang hoạt
động":"Khóa"); ?></td>
                <td><a onclick="return Xoa('<?php echo $row['hoten']; ?>')"
                        href="./xoanguoidung.php?id=<?php echo $row["id"]; ?>"><img src="images/icon/delete.svg" alt=""
                            class="icon"></a></td>
                <td><a href="./suanguoidung.php?id=<?php echo $row["id"]; ?>"><img src="images/icon/fix.svg" alt=""
                            class="icon"></a>
                </td>
            </tr>
            <?php
                }    $conn->close();
                ?>
        </tbody>
    </table>
    <a href="./themnguoidung.php">Thêm Người Dùng</a>
</div>

<script>
function Xoa(name) {
    return confirm("Bạn có chắc chắn muốn xóa người dùng: " + name + "?");
}
</script>
</body>

</html>