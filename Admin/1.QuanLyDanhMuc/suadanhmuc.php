<?php
    include("../.././config/connect.php");
    include (".././layout/header.php");
    //Thêm 
    $id = $_GET['id'];
    $sql = "select *from tbl_danhmuc where id = $id";
    $result = mysqli_query($conn,$sql);
    $row = mysqli_fetch_assoc($result);
?>


<body>
    <div class="container">
        <form action="./xylysua.php" method="POST">
            <h2 class="text-primary text-center">Sửa Danh Mục</h2>
            <input type="text" class="form-control" id="text" name="txtID" value="<?php echo $row["id"]; ?>" hidden>
            <div class="form-group">
                <input type="text" class="form-control" id="text" name="txtTenDanhMuc"
                    value="<?php echo $row["tendanhmuc"]; ?>">
            </div>
            <button type="submit" class="btn btn-primary btn-danhmuc">Sửa</button>
        </form>
    </div>
</body>

</html>