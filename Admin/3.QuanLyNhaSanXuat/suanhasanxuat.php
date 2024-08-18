<?php
    include("../.././config/connect.php");
    include ("./layout/header.php");
    //Sửa
    $id = $_GET['id'];
    $sql = "select *from tbl_nhasanxuat where IdNhaSanXuat = $id";
    $result = mysqli_query($conn,$sql);
    $row = mysqli_fetch_assoc($result);
?>


<body>
    <div class="container">
        <form action="./xylysua.php" method="POST">
            <h2 class="text-primary text-center">Sửa Nhà Sản Xuất</h2>
            <input type="text" class="form-control" id="text" name="txtID" value="<?php echo $row["IdNhaSanXuat"]; ?>"
                hidden>
            <div class="form-group">
                <input type="text" class="form-control" id="text" name="txtNhaSanXuat"
                    value="<?php echo $row["TenNhaSanXuat"]; ?>">
            </div>
            <button type="submit" class="btn btn-primary btn-danhmuc">Sửa</button>
        </form>
    </div>
</body>

</html>