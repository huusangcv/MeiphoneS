<?php
    include("../.././config/connect.php");
    include ("./layout/header.php");
    $IdSanPham  = $_GET['id'];
	$sql = "delete from `tbl_sanpham` where IdSanPham  = '$IdSanPham'";
	$result = mysqli_query($conn, $sql);
	
	//Nếu kết quả kết nối không được thì xuất báo lỗi và thoát
	if (!$result) {
		die("Không thể thực hiện câu lệnh SQL: " . $connect->connect_error);
		exit();
	}
	else
	{
		header("Location: sanpham.php");
	}	
?>