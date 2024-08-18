<?php
    $conn = mysqli_connect( "localhost","root","","quanlybanhang");
    if (!$conn) {
        die("Lỗi kết nối: " . mysqli_connect_error());
    }
    //Sửa 
     //---- xử lý sửa
    // Lấy thông tin từ FORM
	$IdSanPham = $_POST['IdSanPham']; 
	$MaSanPham = $_POST['MaSanPham'];
	$IdNhaSanXuat = $_POST['IdNhaSanXuat'];
	$TenSanPham = $_POST['TenSanPham'];
	$MoTa = $_POST['MoTa'];
	$DonGia = $_POST['DonGia'];
	$SoLuong = $_POST['SoLuong'];
	$TiLeGiamGia = $_POST['TiLeGiamGia'];
	$CauHinh = $_POST['CauHinh'];	
	// Kiểm tra
	if(trim($MaSanPham) != "")
	{	
		$sql = "update	tbl_sanpham
				SET		MaSanPham = '$MaSanPham',
						TenSanPham = '$TenSanPham',
						IdNhaSanXuat = '$IdNhaSanXuat',
						DonGia = $DonGia,
						MoTa = '$MoTa',
						SoLuong = $SoLuong,
						TiLeGiamGia = $TiLeGiamGia,
						CauHinh = '$CauHinh'
				WHERE	IdSanPham = $IdSanPham";
		
		$danhsach = mysqli_query($conn,$sql);
        header("Location:index.php");
		//Nếu kết quả kết nối không được thì xuất báo lỗi và thoát
		if (!$danhsach) {
			die("Không thể thực hiện câu lệnh SQL: " . $connect->connect_error);
			exit();
		}else{
            ThongBao("Chỉnh sửa bài viết thành công!");
        }
		
		
	}
?>