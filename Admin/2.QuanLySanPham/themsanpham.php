<?php
    include("../.././config/connect.php");
    include ("./layout/header.php");
    $sql = "SELECT * FROM tbl_danhmuc";
    $danhsach = mysqli_query($conn,$sql);

    $sql2 = "SELECT * FROM tbl_nhasanxuat";
    $danhsach_nsx = mysqli_query($conn,$sql2);


    //------------------------------------------------------------
    	// Lấy thông tin từ FORM
	
	
	
	// Kiểm tra
    if(isset($_POST["MaSanPham"])){
        $MaSanPham = $_POST['MaSanPham'];
        $TenSanPham = $_POST['TenSanPham'];
        $IdNhaSanXuat = $_POST['IdNhaSanXuat'];
        $IdDanhMuc = $_POST['IdDanhMuc'];
        $MoTa = $_POST['MoTa'];	
        $DonGia = $_POST['DonGia'];
        $SoLuong = $_POST['SoLuong'];
        $TiLeGiamGia = $_POST['TiLeGiamGia'];
        $CauHinh = $_POST['CauHinh'];
        $GhiChu = $_POST['GhiChu'];
	
		//Lưu tập tin upload vào thư mục hinhanh
		 if(isset($_FILES["filehinhanh"]["name"]) &&
        move_uploaded_file($_FILES["filehinhanh"]["tmp_name"], "../images/" .
        $_FILES["filehinhanh"]["name"])){
            $hinhanh = $_FILES["filehinhanh"]["name"];
        }
				
		
		$sql_sanpham = "insert into `tbl_sanpham`(`MaSanPham`, `TenSanPham`, `IdNhaSanXuat`,`IdDanhMuc`, `HinhAnh`, `DonGia`, `MoTa`, `SoLuong`, `TiLeGiamGia`, `CauHinh`,`GhiChu`)
				VALUES ('$MaSanPham', '$TenSanPham', $IdNhaSanXuat,$IdDanhMuc,'$hinhanh', $DonGia, '$MoTa', $SoLuong, $TiLeGiamGia, '$CauHinh','$GhiChu')";
		
		$sanpham = mysqli_query($conn, $sql_sanpham);;
		//Nếu kết quả kết nối không được thì xuất báo lỗi và thoát
		if (!$sanpham) {
			die("Không thể thực hiện câu lệnh SQL: " . $connect->connect_error);
			exit();
		}
		else
		{
            header("Location: index.php");
		}
	}
?>

<body>
    <div class="container">
        <h3>Thêm Sản Phẩm Mới</h3>
        <form enctype="multipart/form-data" action="./themsanpham.php" method="POST">
            <div class="form-group">
                <label class="MyFormLabel">Mã sản phẩm:</label>
                <input type="text" name="MaSanPham" size=" 60" class="form-control" />
            </div>
            <div class="form-group">
                <label class="MyFormLabel">Tên sản phẩm:</label>
                <input type="text" name="TenSanPham" size=" 60" class="form-control" />
            </div>
            <div class="form-group">
                <label for="exampleFormControlSelect2">Danh Mục</label>
                <select multiple class="form-control" id="exampleFormControlSelect2" name="IdDanhMuc">
                    <option value="">-- Chọn --</option>
                    <?php
						
						//Nếu kết quả kết nối không được thì xuất báo lỗi và thoát
						if (!$danhsach) {
							die("Không thể thực hiện câu lệnh SQL: " . $connect->connect_error);
							exit();
						}
						foreach($danhsach as $row):?>
                    <option value="<?php echo $row["id"]; ?>"><?php echo $row["tendanhmuc"];?></option>
                    <?php
                endforeach;
					?>
                </select>
            </div>
            <div class="form-group">
                <label for="exampleFormControlSelect2">Nhà Sản Xuất</label>
                <select multiple class="form-control" id="exampleFormControlSelect2" name="IdNhaSanXuat">
                    <option value="">-- Chọn --</option>
                    <?php
						
						//Nếu kết quả kết nối không được thì xuất báo lỗi và thoát
						if (!$danhsach_nsx) {
							die("Không thể thực hiện câu lệnh SQL: " . $connect->connect_error);
							exit();
						}
						while($row = mysqli_fetch_array($danhsach_nsx)){?>
                    <option value="<?php echo $row["IdNhaSanXuat"]; ?>"><?php echo $row["TenNhaSanXuat"];?></option>
                    <?php
                    }
                    ?>
                </select>
            </div>
            <div class="form-group">
                <label for="exampleFormControlTextarea1">Mô Tả</label>
                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="MoTa"></textarea>
            </div>
            <div class="form-group">
                <label for="exampleFormControlFile1">Hình ảnh</label>
                <input type="file" class="form-control-file" id="exampleFormControlFile1" name="filehinhanh">
            </div>
            <div class="form-group">
                <label class="MyFormLabel">Đơn Giá</label>
                <input type="text" name="DonGia" size="50" class="form-control form-control-sm" />
            </div>
            <div class=" form-group">
                <label class="MyFormLabel">Số Lượng</label>
                <input type="number" name="SoLuong" size="50" class="form-control form-control-sm" />
            </div>
            <div class=" form-group">
                <label class="MyFormLabel">Tỉ lệ giảm giá</label>
                <input type="number" name="TiLeGiamGia" size="50" class="form-control form-control-sm" />
            </div>
            <div class=" form-group">
                <label class="MyFormLabel">Ghi chú</label>
                <input type="text" name="GhiChu" size="50" class="form-control form-control-sm" />
            </div>
            <div class=" form-group">
                <label class="MyFormLabel">Cấu Hình</label>
                <textarea class="form-control" id="exampleFormControlTextarea1 CauHinh" rows="3"
                    name="CauHinh"></textarea>
                <script>
                CKEDITOR.replace('CauHinh');
                </script>
            </div>
            <button type="submit" class="btn btn-primary">Thêm</button>
        </form>
    </div>
</body>