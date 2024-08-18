<?php
// hủy biến session
unset($_SESSION["nguoidung"]);
// chuyển về trang đăng nhập
header("Location:dangnhap.php");
?>