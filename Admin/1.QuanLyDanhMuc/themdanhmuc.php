<?php
    include("../.././config/connect.php");
    include ("./layout/header.php");
    //Thêm 
    if(isset($_POST["txtTenDanhMuc"])){
        $ten = $_POST["txtTenDanhMuc"];
        $sql = "INSERT INTO tbl_danhmuc(tendanhmuc) VALUES ('$ten')";
        mysqli_query($conn,$sql);
        header("Location:index.php");
    }
?>

<body>
    <div class="container">
        <form action="./themdanhmuc.php" method="POST">
            <h2 class="text-primary text-center">Thêm Danh Mục</h2>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Nhập Tên Danh Mục" id="text" name="txtTenDanhMuc">
            </div>
            <button type="submit" class="btn btn-primary btn-danhmuc">Thêm</button>
        </form>
    </div>
</body>

</html>