<?php
    include("../.././config/connect.php");
    include ("./layout/header.php");
    //Thêm 
    $MaSP = $_GET['id'];
	$sql = "select * from `tbl_sanpham` where IdSanPham = '$MaSP'";
    $danhsach = mysqli_query($conn,$sql);
    //Nếu kết quả kết nối không được thì xuất báo lỗi và thoát
	if (!$danhsach) {
		die("Không thể thực hiện câu lệnh SQL: " . $connect->connect_error);
		exit();
	}
	
    $dong = $danhsach->fetch_array(MYSQLI_ASSOC);
?>


<div class="container">
    <h3>Sửa Sản Phẩm</h3>
    <form enctype="multipart/form-data" action="./xylysua.php" method="POST">
        <div class="form-group">
            <input type="hidden" name="IdSanPham" value="<?php echo $dong['IdSanPham']; ?>" />
        </div>
        <div class="form-group">
            <label class="MyFormLabel">Mã sản phẩm:</label>
            <input type="text" name="MaSanPham" size=" 60" class="form-control"
                value="<?php echo $dong["MaSanPham"];?>" />
        </div>
        <div class="form-group">
            <label class="MyFormLabel">Tên sản phẩm:</label>
            <input type="text" name="TenSanPham" size=" 60" class="form-control"
                value="<?php echo $dong["TenSanPham"];?>" />
        </div>
        <div class="form-group">
            <label for="exampleFormControlSelect2">Nhà Sản Xuất:</label>
            <select multiple class="form-control" id="exampleFormControlSelect2" name="IdNhaSanXuat">
                <option value="">-- Chọn --</option>
                <?php
						$sql = "select * from `tbl_nhasanxuat` where 1 ORDER BY TenNhaSanXuat";
						$danhsach = mysqli_query($conn,$sql);
						//Nếu kết quả kết nối không được thì xuất báo lỗi và thoát
						if (!$danhsach) {
							die("Không thể thực hiện câu lệnh SQL: " . $connect->connect_error);
							exit();
						}
						
						while($dong_nsx = $danhsach->fetch_array(MYSQLI_ASSOC))
						{
							if($dong['IdNhaSanXuat'] == $dong_nsx['IdNhaSanXuat'])
								echo "<option value='" . $dong_nsx['IdNhaSanXuat'] . "' selected='selected'>" . $dong_nsx['TenNhaSanXuat'] . "</option>";
							else
								echo "<option value='" . $dong_nsx['IdNhaSanXuat'] . "'>" . $dong_nsx['TenNhaSanXuat'] . "</option>";
						}
					?>
            </select>
        </div>
        <div class="form-group">
            <label for="exampleFormControlSelect2">Danh Mục</label>
            <select multiple class="form-control" id="exampleFormControlSelect2" name="IdDanhMuc">
                <option value="">-- Chọn --</option>
                <?php
						$sql = "select * from `tbl_danhmuc` where 1 ORDER BY tendanhmuc";
						$danhsach = mysqli_query($conn,$sql);
						//Nếu kết quả kết nối không được thì xuất báo lỗi và thoát
						if (!$danhsach) {
							die("Không thể thực hiện câu lệnh SQL: " . $connect->connect_error);
							exit();
						}
						
						while($dong_nsx = $danhsach->fetch_array(MYSQLI_ASSOC))
						{
							if($dong['IdDanhMuc'] == $dong_nsx['id'])
								echo "<option value='" . $dong_nsx['id'] . "' selected='selected'>" . $dong_nsx['tendanhmuc'] . "</option>";
							else
								echo "<option value='" . $dong_nsx['id'] . "'>" . $dong_nsx['tendanhmuc'] . "</option>";
						}
					?>
            </select>
        </div>
        <div class="form-group">
            <label for="exampleFormControlTextarea1">Mô Tả</label>
            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"
                name="MoTa"><?php echo $dong["MoTa"];?></textarea>
        </div>
        <div class="form-group">
            <label for="exampleFormControlFile1">Hình ảnh</label>
            <input type="file" class="form-control-file" id="exampleFormControlFile1" name="filehinhanh">
        </div>
        <div class="form-group">
            <label class="MyFormLabel">Đơn Giá</label>
            <input type="text" name="DonGia" size="50" class="form-control form-control-sm"
                value="<?php echo $dong['DonGia']; ?>" />
        </div>
        <div class=" form-group">
            <label class="MyFormLabel">Số Lượng</label>
            <input type="number" name="SoLuong" size="50" class="form-control form-control-sm"
                value="<?php echo $dong['SoLuong']; ?>" />
        </div>
        <div class=" form-group">
            <label class="MyFormLabel">Tỉ lệ giảm giá</label>
            <input type="number" name="TiLeGiamGia" size="50" class="form-control form-control-sm"
                value="<?php echo $dong['TiLeGiamGia']; ?>" />
        </div>
        <div class=" form-group">
            <label class="MyFormLabel">Cấu Hình</label>
            <textarea class="form-control" id="exampleFormControlTextarea1 CauHinh" rows="3"
                name="CauHinh"><?php echo $dong['CauHinh']; ?></textarea>
            <script>
            CKEDITOR.replace('CauHinh');
            </script>
        </div>
        <button type="submit" class="btn btn-primary">Thêm</button>
    </form>
</div>

</html>