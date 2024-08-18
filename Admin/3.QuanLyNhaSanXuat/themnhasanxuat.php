<?php
    include("../.././config/connect.php");
    include ("./layout/header.php");
    //Thêm 
    if(isset($_POST["txtNhaSanXuat"])){
        $ten = $_POST["txtNhaSanXuat"];
        $sql = "INSERT INTO tbl_nhasanxuat(TenNhaSanXuat) VALUES ('$ten')";
        mysqli_query($conn,$sql);
        header("Location:index.php");
    }
?>

<body>
    <div class="container">
        <form action="./themnhasanxuat.php" method="POST">
            <h2 class="text-primary text-center">Thêm Nhà Sản Xuất</h2>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Nhập Tên Nhà Sản Xuất" id="text"
                    name="txtNhaSanXuat">
            </div>
            <button type="submit" class="btn btn-primary btn-danhmuc">Thêm</button>
        </form>
    </div>
</body>

</html>