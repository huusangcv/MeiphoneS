-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 22, 2024 lúc 03:54 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlybanhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `acc_khachhang`
--

CREATE TABLE `acc_khachhang` (
  `IdKhachHang` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `HoVaTen` varchar(255) DEFAULT NULL,
  `SoDienThoai` int(11) DEFAULT NULL,
  `NgaySinh` varchar(255) DEFAULT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `HinhAnh` varchar(255) DEFAULT NULL,
  `MatKhau` varchar(255) NOT NULL,
  `TrangThai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `acc_khachhang`
--

INSERT INTO `acc_khachhang` (`IdKhachHang`, `Email`, `HoVaTen`, `SoDienThoai`, `NgaySinh`, `DiaChi`, `HinhAnh`, `MatKhau`, `TrangThai`) VALUES
(1, 'huusangvn@gmail.com', NULL, NULL, NULL, '', NULL, '4297f44b13955235245b2497399d7a93', 1),
(8, 'mydu@gmail.com', NULL, NULL, NULL, '', NULL, '4297f44b13955235245b2497399d7a93', 1),
(9, 'nam@gmail.com', NULL, NULL, NULL, '', NULL, '4297f44b13955235245b2497399d7a93', 1),
(10, 'namm@gmail.com', NULL, NULL, NULL, '', NULL, '4297f44b13955235245b2497399d7a93', 1),
(11, 'Hoannam@gmail.com', NULL, NULL, NULL, '', NULL, '4297f44b13955235245b2497399d7a93', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `matkhau` varchar(255) NOT NULL,
  `hoten` varchar(50) DEFAULT NULL,
  `hinhanh` varchar(255) DEFAULT NULL,
  `trangthai` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `email`, `matkhau`, `hoten`, `hinhanh`, `trangthai`) VALUES
(23, 'sang@gmail.cm', '4297f44b13955235245b2497399d7a93', NULL, NULL, 1),
(25, 'sang@gmail.cm', '4297f44b13955235245b2497399d7a93', NULL, NULL, 1),
(26, 'sang@gmail.cm', '4297f44b13955235245b2497399d7a93', NULL, NULL, 1),
(27, 'sang@gmail.cm213', '4297f44b13955235245b2497399d7a93', NULL, NULL, 1),
(29, 'nam@gmail.com', '4297f44b13955235245b2497399d7a93', 'NamBlues', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_bill`
--

CREATE TABLE `tbl_bill` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `pttt` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: tiền mặt, 1: chuyển khoản'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_bill`
--

INSERT INTO `tbl_bill` (`id`, `name`, `address`, `tel`, `email`, `total`, `pttt`) VALUES
(7, 'Nam', 'Bình Hòa An Giang', '0342142214', 'bluesnnam@gmail.com', 10190000, 0),
(13, '', 'Chợ mới An Giang', '123123111111111111111', 'sang_dth215782@student.agu.edu.vn', 25990000, 0),
(14, 'Nam', 'Chợ mới An Giang', '0337977652', 'Hoannam@gmail.com', 25990000, 0),
(15, 'Mydu', 'Phú hÒa', '1231231231', 'huusangvn@gmail.com', 25990000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` int(11) NOT NULL,
  `tensp` varchar(255) NOT NULL,
  `hinhsp` varchar(255) NOT NULL,
  `dongia` int(11) NOT NULL DEFAULT 0,
  `soluong` int(11) NOT NULL DEFAULT 0,
  `thanhtien` int(11) NOT NULL DEFAULT 0,
  `idbill` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`id`, `tensp`, `hinhsp`, `dongia`, `soluong`, `thanhtien`, `idbill`) VALUES
(1, 'Laptop Lenovo Yoga Slim 7 14IMH9 83CV001UVN', 'Laptop Lenovo Yoga Slim 7 14IMH9 83CV001UVN.webp', 28290000, 1, 28290000, 2),
(2, 'Laptop Lenovo Yoga Slim 7 14IMH9 83CV001UVN', 'Laptop Lenovo Yoga Slim 7 14IMH9 83CV001UVN.webp', 28290000, 1, 28290000, 3),
(3, 'Samsung Galaxy M14 5G 4GB 128GB', 'Samsung Galaxy M14 5G 4GB 128GB.webp', 3890000, 1, 3890000, 4),
(4, 'Laptop Lenovo Yoga Duet 7 13ITL6 82MA009PVN', 'Laptop Lenovo Yoga Duet 7 13ITL6 82MA009PVN.webp', 25990000, 1, 25990000, 5),
(5, 'Laptop Lenovo Yoga Duet 7 13ITL6 82MA009PVN', 'Laptop Lenovo Yoga Duet 7 13ITL6 82MA009PVN.webp', 25990000, 1, 25990000, 6),
(6, 'Laptop Lenovo V14 G4 AMN 82YT00M8VN', 'Laptop Lenovo V14 G4 AMN 82YT00M8VN.webp', 10190000, 1, 10190000, 7),
(7, 'Laptop Lenovo V14 G4 AMN 82YT00M8VN', 'Laptop Lenovo V14 G4 AMN 82YT00M8VN.webp', 10190000, 1, 10190000, 8),
(8, 'Laptop Lenovo Yoga Duet 7 13ITL6 82MA009PVN', 'Laptop Lenovo Yoga Duet 7 13ITL6 82MA009PVN.webp', 25990000, 2, 51980000, 9),
(9, 'Laptop Lenovo V14 G4 AMN 82YT00M8VN', 'Laptop Lenovo V14 G4 AMN 82YT00M8VN.webp', 10190000, 1, 10190000, 10),
(10, 'Ai Phôn 11', 'iPhone 11 64GB.webp', 99999, 1, 99999, 11),
(11, 'Samsung Galaxy S24 Ultra 12GB 512GB', 'Samsung Galaxy S24 Ultra 12GB 512GB.webp', 30490000, 1, 30490000, 12),
(12, 'Laptop Lenovo Yoga Duet 7 13ITL6 82MA009PVN', 'Laptop Lenovo Yoga Duet 7 13ITL6 82MA009PVN.webp', 25990000, 1, 25990000, 13),
(13, 'Laptop Lenovo Yoga Duet 7 13ITL6 82MA009PVN', 'Laptop Lenovo Yoga Duet 7 13ITL6 82MA009PVN.webp', 25990000, 1, 25990000, 14),
(14, 'Laptop Lenovo Yoga Duet 7 13ITL6 82MA009PVN', 'Laptop Lenovo Yoga Duet 7 13ITL6 82MA009PVN.webp', 25990000, 1, 25990000, 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id` int(11) NOT NULL,
  `tendanhmuc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id`, `tendanhmuc`) VALUES
(19, 'Âm thanh'),
(12, 'Camera'),
(18, 'Điện thoại '),
(6, 'Đồng Hồ Thông Minh'),
(22, 'Gia Dụng, SmartHome'),
(23, 'Khuyến Mãi'),
(1, 'LAPTOP'),
(15, 'Máy Hút Bụi'),
(21, 'PC, Màn Hình'),
(20, 'Phụ Kiện'),
(24, 'Thu cũ đổi mới'),
(25, 'TV');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_nhasanxuat`
--

CREATE TABLE `tbl_nhasanxuat` (
  `IdNhaSanXuat` int(20) NOT NULL,
  `TenNhaSanXuat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_nhasanxuat`
--

INSERT INTO `tbl_nhasanxuat` (`IdNhaSanXuat`, `TenNhaSanXuat`) VALUES
(1, 'Dell'),
(2, 'Acer'),
(3, 'Lenovo'),
(4, 'Asus'),
(5, 'MacBook'),
(6, 'HP'),
(9, 'Apple'),
(11, 'Vivo'),
(12, 'Samsung'),
(13, 'Realme'),
(14, 'Iphone'),
(15, 'Oppo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `IdSanPham` int(10) NOT NULL,
  `MaSanPham` varchar(50) NOT NULL,
  `TenSanPham` varchar(200) NOT NULL,
  `IdNhaSanXuat` int(20) NOT NULL,
  `IdDanhMuc` int(11) NOT NULL,
  `HinhAnh` varchar(200) NOT NULL,
  `DonGia` int(10) NOT NULL,
  `MoTa` varchar(250) NOT NULL,
  `SoLuong` int(10) NOT NULL,
  `TiLeGiamGia` int(4) NOT NULL,
  `CauHinh` varchar(250) NOT NULL,
  `GhiChu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`IdSanPham`, `MaSanPham`, `TenSanPham`, `IdNhaSanXuat`, `IdDanhMuc`, `HinhAnh`, `DonGia`, `MoTa`, `SoLuong`, `TiLeGiamGia`, `CauHinh`, `GhiChu`) VALUES
(17, 'Laptop Acer Aspire 3 A315-58-529V NX.ADDSV.00N', 'Laptop Acer Aspire 3 A315-58-529V NX.ADDSV.00N', 2, 1, 'Laptop Acer Aspire 3 A315-58-53S6 NX.AM0SV.005.webp', 7790000, 'Laptop Acer Aspire 3 A315-58-53S6  – Laptop thế hệ mới\r\nLaptop Acer Aspire 3 A315-58-53S6  là một trong những mẫu laptop thịnh hành nhất hiện nay mà bạn có thể sở hữu để làm việc và giải trí một cách chất lượng nhất. Các tính năng và thông số của chi', 1, 5, 'Thoải mái lưu trữ - 256GB SSD + 1 khe HDD trống cho phép nâng cấp\r\n4GB onboard + 4GB trên khe cho khả năng nâng cấp tối đa 12GB\r\nThoả sức giải trí với các bộ phim hay edit hình ảnh - Màn hình Full HD, kích thước 15.6 inch\r\nChơi game nhẹ nhàng với car', NULL),
(18, 'Laptop Acer Aspire 3 A315-58-53S6 NX.AM0SV.005', 'Laptop Acer Aspire 3 A315-58-53S6 NX.AM0SV.005', 2, 1, 'Laptop Acer Aspire 3 A315-58-529V NX.ADDSV.00N.webp', 7790000, 'Laptop Acer Aspire 3 A315-58-53S6  – Laptop thế hệ mới\r\nLaptop Acer Aspire 3 A315-58-53S6  là một trong những mẫu laptop thịnh hành nhất hiện nay mà bạn có thể sở hữu để làm việc và giải trí một cách chất lượng nhất. Các tính năng và thông số của chi', 1, 5, 'Thoải mái lưu trữ - 256GB SSD + 1 khe HDD trống cho phép nâng cấp\r\n4GB onboard + 4GB trên khe cho khả năng nâng cấp tối đa 12GB\r\nThoả sức giải trí với các bộ phim hay edit hình ảnh - Màn hình Full HD, kích thước 15.6 inch\r\nChơi game nhẹ nhàng với car', NULL),
(19, 'Laptop Acer Aspire 3 A315-59-381E', 'Laptop Acer Aspire 3 A315-59-381E', 2, 1, 'Laptop Acer Aspire 3 A315-59-381E.webp', 9790000, 'Laptop Acer Aspire 3 A315-59-381E - Chipset thế hệ 12, màn hình Full HD sắc nét\r\nLaptop Acer Aspire 3 A315-59-381E mang đến một diện mạo thanh lịch với cấu hình ổn định trong phân khúc tầm trung. Với CPU Intel Core i3-1215U và ổ cứng SSD dung lượng 5', 1, 5, 'CPU Intel Core i3-1215U cùng RAM 8 GB và ổ cứng 512 GB đem lại hiệu suất mạnh mẽ, phù hợp với nhiều nhu cầu từ làm việc, học tập đến giải trí nhẹ nhàng\r\nSản phẩm có màn hình 15.6 inch Full HD rộng lớn, cho hình ảnh sắc nét và rõ ràng\r\nVới thiết kế gọ', NULL),
(20, 'Laptop Acer Aspire 5 A515-58GM-59LJ', 'Laptop Acer Aspire 5 A515-58GM-59LJ', 2, 1, 'Laptop Acer Aspire 5 A515-58GM-59LJ.webp', 16490000, 'Laptop Acer Aspire 5 A515 58GM 59LJ – đáp ứng tác vụ mượt mà\r\nLaptop Acer Aspire 5 A515 58GM 59LJ là dòng máy tính xách tay học tập, làm việc, chơi game phổ biến đến từ thường hiệu Acer vừa mới ra mắt. Sản phẩm laptop Acer Aspire trang bị con chip In', 1, 5, 'Sở hữu thiết kế hiện đại với lớp vỏ phủ lớp sơn màu xám trung tính, tạo cảm giác hài hòa cho mọi không gian làm việc\r\nCPU Intel Core 5 13420H xử lý trơn tru mọi tác vụ thường ngày hay sử dụng Word, Excel, PowerPoint,....\r\nCard NVIDIA GeForce RTX 2050', NULL),
(21, 'Laptop Acer Aspire 5 Spin 14 A5SP14-51MTN-78JH', 'Laptop Acer Aspire 5 Spin 14 A5SP14-51MTN-78JH', 2, 1, 'Laptop Acer Aspire 5 Spin 14 A5SP14-51MTN-78JH.webp', 13590000, 'Laptop Acer Aspire 5 Spin 14 A5SP14-51MTN-78JH mạnh mẽ, ổn định\r\nLaptop Acer Aspire 5 Spin 14 A5SP14-51MTN-78JH là lựa chọn hàng đầu cho học sinh, sinh viên, nhân viên văn phòng hiện nay. Mang trên mình thiết kế tối giản, kích thước mỏng nhẹ cùng với', 1, 5, 'Sở hữu thiết kế tối giản vỏ xám sang trọng, cùng trọng lượng gọn nhẹ chỉ 1.6 kg cho phép bạn mang theo bất kỳ đâu.\r\nIntel Core i7-1355U xử lý nhanh các tác vụ văn phòng, hay giải trí, xem phim mượt mà.\r\nRAM 16GB đa nhiệm, mở nhiều tab trình duyệt khô', NULL),
(22, 'Laptop Acer Aspire 5 Spin 14 A5SP14-51MTN-573X', 'Laptop Acer Aspire 5 Spin 14 A5SP14-51MTN-573X', 2, 1, 'Laptop Acer Aspire 5 Spin 14 A5SP14-51MTN-573X.webp', 18990000, 'Laptop Acer Aspire 5 Spin 14 A5SP14-51MTN-573X - Đa nhiệm hiệu quả, thiết kế mỏng nhẹ\r\nLaptop Acer Aspire 5 Spin 14 A5SP14-51MTN-573X là chiếc laptop Acer Aspire dành cho dân văn phòng được nhiều người đánh giá cao bởi cấu hình mạnh mẽ. Máy được tran', 1, 5, 'Sở hữu thiết kế tối giản vỏ xám cùng trọng lượng rất nhẹ chỉ 1.6 kg cho phép bạn mang theo đi học tập hay làm việc.\r\nIntel Core i5-1335U xử lý nhanh các tác vụ văn phòng, thuyết trình như Word, Excel, Powerpoint sẽ luôn chạy mượt mà.\r\nRAM 16GB chạy t', NULL),
(23, 'Laptop Acer Aspire 7 A715-76G-59MW', 'Laptop Acer Aspire 7 A715-76G-59MW', 2, 1, 'Laptop Acer Aspire 7 A715-76G-59MW.webp', 17990000, 'Laptop Acer Aspire 7 Gaming A715 76G 59MW i5 chất lượng, ấn tượng từ thiết kế tới hiệu năng\r\nLaptop Acer Aspire 7 Gaming A715 76G 59MW i5 là dòng sản phẩm được thiết kế độc đáo và ấn tượng. Với thiết kế sang trọng, cùng với đó là hiệu năng mạnh mẽ, b', 2, 5, 'Chip Intel Core i5 12450H cùng card RTX 2050 4 GB không chỉ mượt mà mọi tác vụ văn phòng, mà còn cho bạn thoả sức chiến các tựa game yêu thích\r\nRAM 8 GB được hỗ trợ nâng cấp tối đa 32 GB thoải mái thao tác với nhiều tác vụ, chơi game\r\nỔ cứng SSD 512 ', NULL),
(24, 'Laptop Acer Aspire 7 A715-76G-5806', 'Laptop Acer Aspire 7 A715-76G-5806', 2, 1, 'Laptop Acer Aspire 7 A715-76G-5806.webp', 19990000, 'Laptop Acer Aspire 7 A715 76G 5806 - Hiệu năng mạnh mẽ, đồ họa mượt mà\r\nLaptop Acer Aspire 7 A715 76G 5806 là chiếc máy gaming sở hữu hiệu năng mạnh mẽ, dung lượng lưu trữ lớn và màn hình sắc nét đỉnh cao. Ngoài ra, laptop còn nổi bật với thiết kế bề', 1, 5, 'Màn hình 15.6 inch Full HD cho không gian hiển thị tương đối rộng và rõ nét, màu sắc sống động\r\nCPU Intel Core i5 12450H cùng card RTX 3050 cân mọi tác vụ văn phòng, thoả sức chiến các tựa game yêu thích\r\nRAM 16 GB hỗ trợ nâng cấp tối đa 32 GB thoải ', NULL),
(25, 'Laptop Acer Gaming Aspire 7 A715-76-53PJ', 'Laptop Acer Gaming Aspire 7 A715-76-53PJ', 2, 1, 'Laptop Acer Gaming Aspire 7 A715-76-53PJ.webp', 14990000, 'Laptop Acer Gaming Aspire 7 A715-76-53PJ - Chơi game đỉnh cao\r\nLaptop Acer Gaming Aspire 7 A715-76-53PJ là một chiếc laptop Acer Aspire phổ thông hiệu năng cao hàng đầu trong phân khúc giá tầm trung. Sở hữu thiết kế trung tính phổ theo phong cách học', 1, 5, 'CPU Intel Core i5-12450H dễ dàng xử lý mọi tác vụ làm việc học tập, làm việc thường ngày.\r\nRAM 16GB DDR4 cùng ổ cứng dung lượng 512GB PCIe NVMe SSD có tốc độ đọc ghi siêu cao, thời gian mở máy, truy cập tệp, copy tệp,... nhanh chóng.\r\nMàn hình 15.6 i', NULL),
(26, 'Laptop Acer Gaming Nitro 16 Phoenix AN16-41-R50Z', 'Laptop Acer Gaming Nitro 16 Phoenix AN16-41-R50Z', 2, 1, 'Laptop Acer Gaming Nitro 16 Phoenix AN16-41-R50Z.webp', 27490000, 'Laptop Acer Gaming Nitro 16 Phoenix AN16-41-R50Z - Hiển thị siêu thực, cấu hình mạnh mẽ, chiến game mượt\r\nLaptop Acer Gaming Nitro 16 Phoenix AN16-41-R50Z đánh dấu một bước tiến đột phá trong ngành công nghệ máy tính xách tay của Acer trên thị trường', 1, 5, 'Màn hình 16 inch WUXGA IPS và tần số quét 165Hz mang lại trải nghiệm hình ảnh tuyệt vời, với màu sắc chân thực và độ tương phản cao.\r\nHiệu năng mạnh mẽ - đảm bảo hiệu suất gaming mạnh mẽ và khả năng xử lý đồ họa tốt, mang lại trải nghiệm chơi game mư', NULL),
(27, 'Laptop Acer Swift 3 SF314-512-56QN NX.K0FSV.002', 'Laptop Acer Swift 3 SF314-512-56QN NX.K0FSV.002', 2, 1, 'Laptop Acer Swift 3 SF314-512-56QN NX.K0FSV.002.webp', 18490000, 'Laptop Acer Swift 3 SF314-512-56QN NX.K0FSV.002 – Hiệu năng đột phá\r\nLaptop Acer Swift 3 SF314-512-56QN NX.K0FSV.002 là một laptop di động với thiết kế gọn nhẹ. Với hiệu suất vượt trội, phiên bản laptop Acer Swift có khả năng xử lý tốt các công việc ', 1, 5, 'Thiết kế với trọng lượng nhẹ 1.25 kg dễ dàng mang theo mọi nơi\r\nCPU Intel Core i5-1240P mạnh mẽ cân mọi tác vụ làm việc, học tập\r\nRAM 16GB đa nhiệm hỗ trợ mở hàng chục tabs web cùng lúc không lo lag, giật\r\nỔ cứng 512GB SSD rộng rãi giúp lưu trữ file,', NULL),
(28, 'Laptop Gaming Acer Nitro 5 AN515 58 52SP', 'Laptop Gaming Acer Nitro 5 AN515 58 52SP', 2, 1, 'Laptop Gaming Acer Nitro 5 AN515 58 52SP.webp', 20990000, 'Laptop Acer Nitro 5 Tiger AN515-58-52SP - Thủ lĩnh laptop gaming\r\nLaptop Acer Nitro 5 Tiger AN515-58-52SP mang vẻ ngoài phong thái sắc sảo, tích hợp hàng loạt công nghệ phần mềm đời mới và đặc biệt là bộ vi xử lý Intel ổn định.', 1, 5, 'Chip Core i5-12500H cùng card rời RTX 3050 cho khả năng chiến các tựa game nặng, chỉnh sửa hình ảnh trên PTS, Render video ngắn mượt mà.\r\nRam 8GB, ổ cứng SSD 512GB mang đến tốc độ xử lý nhanh cùng đa nhiệm mượt mà.\r\nMàn hình 15.6 inch độ phân giải Fu', NULL),
(29, 'Laptop Gaming Acer Nitro V ANV15-51-55CA', 'Laptop Gaming Acer Nitro V ANV15-51-55CA', 2, 1, 'Laptop Gaming Acer Nitro V ANV15-51-55CA.webp', 26990000, 'Laptop Nitro V ANV15-51-55CA - Hiệu năng xử lý mượt mà, chất lượng hình ảnh sắc nét\r\nDòng laptop Acer Nitrolà một lựa chọn phù hợp dành cho game thủ yêu thích sự kết hợp giữa hiệu năng mạnh mẽ và thiết kế sang trọng. Với vẻ ngoài mới lạ, nhẹ nhàng hơ', 1, 5, 'Trang bị CPU Intel Core i5-13420H xử lý nhanh chóng mọi tác vụ văn phòng hay tận hưởng các tựa game từ AAA đến game Esport.\r\nBộ nhớ RAM 16 GB DDR5 cho khả năng xử lý đa nhiệm và đa tác vụ của máy càng được tăng tốc tối đa.\r\nCard đồ họa RTX 4050 tối ư', NULL),
(30, 'Laptop Gaming Acer Nitro V ANV15-51-57B2', 'Laptop Gaming Acer Nitro V ANV15-51-57B2', 2, 1, 'Laptop Gaming Acer Nitro V ANV15-51-57B2.webp', 23990000, 'Laptop Gaming Acer Nitro V ANV15-51-57B2 mạnh mẽ bứt phá mọi giới hạn\r\nLaptop Gaming Acer Nitro V là sản phẩm độc đáo, chất lượng từ thiết kế tới hiệu năng. Với những gì trang bị, laptop mang tới cho người dùng trải nghiệm hoàn hảo, giúp bạn xử lý cô', 1, 5, 'CPU Intel Core i5 3420H và card đồ họa RTX 4050 hỗ trợ thiết kế đồ họa, chỉnh sửa hình ảnh, video, render 2D, 3D,... dễ dàng.\r\nThoải mái chơi game, giải trí sống động trên màn hình 15.6 inch, độ phân giải FHD, tần số quét 144 Hz.\r\nRAM 8GB đa nhiệm gi', NULL),
(31, 'Laptop Gaming Acer Nitro V ANV15-51-58AN', 'Laptop Gaming Acer Nitro V ANV15-51-58AN', 2, 1, 'Laptop Gaming Acer Nitro V ANV15-51-58AN.webp', 19990000, 'Laptop Acer Nitro V – Cấu hình mạnh mẽ, đậm chất chiến binh\r\nLaptop Acer Nitro V ANV15 là mẫu laptop quốc dân vừa cân mọi tựa game, vừa có thể làm việc với hiệu suất tối ưu khi được trang bị cấu hình mạnh mẽ từ chip Intel thế hệ 13 mới nhất. Cùng đó ', 1, 5, 'CPU Intel Core i5-13420H cân mọi tựa game từ AAA đến game Esport.\r\nGPU GeForce RTX 2050 mới nhất cho đồ họa cực đỉnh, chiến mọi tựa game với mức cài đặt cao.\r\nRAM 8 GB DDR5 5200Mhz, khả năng xử lý đa nhiệm và đa tác vụ của máy càng được tăng tốc tối ', NULL),
(32, 'Laptop Gaming Acer Nitro V ANV15-51-72VS NH.QNASV.', 'Laptop Gaming Acer Nitro V ANV15-51-72VS NH.QNASV.004', 2, 1, 'Laptop Gaming Acer Nitro V ANV15-51-72VS NH.QNASV.004.webp', 24490000, 'Laptop gaming Nitro V ANV15-51-72VS - Sự kết hợp hoàn hảo giữa sức mạnh và phong cách\r\nLaptop gaming Acer Nitro V ANV15-51-72VS là sự kết hợp hoàn hảo giữa hiệu năng mạnh mẽ cùng phong cách ấn tượng. Với bộ vi xử lý Core i7 Gen 13th, card đồ họa RTX ', 4, 5, 'Trang bị CPU Intel Core i7-13620H xử lý nhanh chóng mọi tác vụ văn phòng hay tận hưởng các tựa game từ AAA đến game Esport.\r\nBộ nhớ RAM 16 GB DDR5 cho khả năng xử lý đa nhiệm và đa tác vụ của máy càng được tăng tốc tối đa.\r\nCard đồ họa RTX 2050 tối ư', NULL),
(35, 'Laptop ASUS Gaming ROG Zephyrus G14 GA402NJ-L4056W', 'Laptop ASUS Gaming ROG Zephyrus G14 GA402NJ-L4056W', 4, 1, 'Laptop ASUS Gaming ROG Zephyrus G14 GA402NJ-L4056W.webp', 30490000, 'Laptop Asus Gaming ROG Zephyrus G14 GA402NJ-L4056W - Laptop sở hữu bộ cấu hình ấn tượng\r\nLaptop Asus Gaming ROG Zephyrus G14 GA402NJ-L4056W nổi bật với kích thước thon gọn đi kèm với hiệu suất hoạt động mạnh mẽ. Cấu hình laptop Asus gaming này được t', 2, 5, 'Laptop gaming mạnh mẽ với CPU AMD Ryzen 7 7735HS xử lý mọi ứng dụng và trò chơi\r\nGPU GeForce RTX 3050 mang lại hiệu suất tối thượng cho game thủ và nhà sáng tạo video\r\nRAM 16GB cùng ổ cứng 512GB cho khả năng xử lý đa nhiệm, hỗ trợ lưu trữ game, tài l', NULL),
(36, 'Laptop Asus ROG Zephyrus M16 GU604VI-NM779W', 'Laptop Asus ROG Zephyrus M16 GU604VI-NM779W', 4, 1, 'Laptop Asus ROG Zephyrus M16 GU604VI-NM779W.webp', 67890000, 'Laptop Asus ROG Zephyrus M16 GU604VI-NM779W - Tận hưởng hiệu suất mạnh mẽ và ổn định\r\nLaptop Asus ROG Zephyrus M16 GU604VI-NM779W không chỉ đáp ứng đầy đủ các tiêu chí hiển thị của người dùng đặt ra mà còn mang đến sức mạnh đồ họa đỉnh cao. Là một ga', 2, 5, 'Sở hữu thiết kế mạnh mẽ với lớp vỏ màu đen cá tính\r\nCPU Intel Core i9-13900H cân mọi tác vụ học tập, văn phòng\r\nRAM DDR5 4800Mhz tăng tốc độ xử lý mọi tác vụ từ gaming, duyệt web và giải trí\r\nỔ cứng SSD PCIe 4.0 1TB cho phép bạn lưu trữ hàng trăm tựa', NULL),
(37, 'Laptop ASUS TUF Gaming A15 FA506NF-HN005W', 'Laptop ASUS TUF Gaming A15 FA506NF-HN005W', 4, 1, 'Laptop ASUS TUF Gaming A15 FA506NF-HN005W.webp', 16490000, 'Laptop Asus TUF gaming A15 FA506NF-HN005W – Hiệu năng vượt trội\r\nLaptop Asus TUF gaming A15 FA506NF-HN005W được trang bị một cấu hình mạnh đáp ứng tốt các nhu cầu sử dụng từ chơi game đến làm việc. Vậy chính xác cấu hình laptop Asus gaming này có gì,', 2, 5, 'Bộ xử lý AMD Ryzen™ 5 mang tới hiệu năng mạnh mẽ cho mọi tác vụ\r\nMàn hình Full HD, tần số quét 144Hz hỗ trợ chơi game sống động với tốc độ nhanh\r\nCard Geforce RTX 2050 cải thiện hiệu suất xử lý đồ họa và đảm bảo trải nghiệm chơi game tuyệt vời\r\nRAM 8', NULL),
(38, 'Laptop ASUS TUF Gaming A15 FA507NU-LP140W', 'Laptop ASUS TUF Gaming A15 FA507NU-LP140W', 4, 1, 'Laptop ASUS TUF Gaming A15 FA507NU-LP140W.webp', 16490000, 'Laptop Asus TUF Gaming A15 FA507NU-LP140W - Hiệu năng đỉnh cao, chất lượng hình ảnh sắc nét\r\nLaptop Asus TUF Gaming A15 FA507NU-LP140W không chỉ nổi bật với cấu hình khủng mà còn thu hút người dùng bởi thiết kế độc đáo và hiện đại. Sở hữu một kiểu dá', 2, 5, 'Một chiếc laptop dành cho game thủ, với cấu hình khủng và thiết kế độc đáo\r\nBộ vi xử lý AMD R5-7535HS và card đồ họa NVIDIA Geforce RTX 4050 giúp bạn chinh phục mọi tựa game nặng và đòi hỏi cao về đồ họa\r\nRAM 8 GB cùng ổ cứng SSD 512 GB cho không gia', NULL),
(39, 'Laptop ASUS TUF Gaming A15 FA507NU-LP131W', 'Laptop ASUS TUF Gaming A15 FA507NU-LP131W', 4, 1, '', 22490000, 'Laptop Asus TUF Gaming A15 FA507NU-LP113W - Hiệu năng xử lý mượt mà, chất lượng hiển thị sắc nét\r\nLaptop Asus TUF Gaming A15 FA507NU-LP113W nổi bật với thiết kế thời thượng và sang trọng, cùng khối lượng chỉ 2.2kg, khá thuận tiện trong quá trình di c', 2, 5, 'Bộ vi xử lý AMD Ryzen R5-7535HS cho hiệu suất tối đa, hỗ trợ làm việc, chơi game đa nhiệm.\r\nCard đồ họa NVIDIA GeForce RTX 4050 xử lý đồ họa cao, giúp chỉnh sửa ảnh, 2D, 3D,... trơn tru, mượt mà.\r\nMàn hình 15.6 inch cùng tần số quét 144 Hz giảm độ tr', NULL),
(40, 'Laptop ASUS TUF GAMING F15 FX506HF-HN014W', 'Laptop ASUS TUF GAMING F15 FX506HF-HN014W', 4, 1, 'Laptop ASUS TUF GAMING F15 FX506HF-HN014W.webp', 16290000, 'Laptop ASUS TUF Gaming F15 nhỏ gọn hơn, mạnh mẽ hơn\r\nLaptop ASUS TUF Gaming F15 là sản phẩm được thiết kế với những ưu điểm nổi bật về hiệu năng vô cùng mạnh mẽ và ấn tượng. Bên cạnh đó, laptop sở hữu vẻ ngoài vô cùng nhỏ gọn và tinh tế giúp cho các ', 2, 5, 'Thiết kế laptop sang trọng thích hợp giúp bạn bỏ vào balo mang theo bên mình\r\nCPU Intel Core i5-11400H cho phép bạn thỏa thích chiến các tựa game nặng\r\nỔ cứng SSD 512GB giúp bạn lưu trữ nhiều thông tin, dữ liệu mà không cần sao chép quá USB\r\nMàn hình', NULL),
(41, 'Laptop ASUS TUF Gaming F15 FX506HF-HN078W', 'Laptop ASUS TUF Gaming F15 FX506HF-HN078W', 4, 1, 'Laptop ASUS TUF Gaming F15 FX506HF-HN078W.webp', 17290000, 'Laptop Asus Tuf Gaming F15 FX506HF-HN078W – Mạnh mẽ, đẳng cấp, siêu tốc độ\r\nLaptop Asus Tuf Gaming F15 FX506HF-HN078W chính là siêu phẩm nhận được lượt tìm hiểu và bàn luận khá nhiều của người dùng trong không gian gần đây. Nhờ vào các tiện ích, chất', 2, 5, 'CPU Intel Core i5 11260H đáp ứng tốt các tác vụ, mang lại trải nghiệm sử dụng tuyệt vời trong cả công việc lẫn giải trí, chiến game.\r\nCard đồ họa NVIDIA GeForce RTX 2050 đáp ứng tốt nhu cầu chơi game cấu hình cao và xử lý các file thiết kế nặng.\r\nRAM', NULL),
(42, 'Laptop ASUS TUF Gaming F15 FX507VV-LP157W', 'Laptop ASUS TUF Gaming F15 FX507VV-LP157W', 4, 1, 'Laptop ASUS TUF Gaming F15 FX507VV-LP157W.webp', 29990000, 'Laptop ASUS TUF Gaming F15 FX507VV-LP157W – Mạnh mẽ, bền bỉ, chiến game đỉnh cao\r\nLaptop ASUS TUF Gaming F15 FX507VV-LP157W quả thật là một chiếc laptop ASUS gaming mạnh mẽ và bền bỉ, đáp ứng tốt các nhu cầu của người dùng. Nếu bạn đang tìm kiếm một ', 2, 5, 'Sở hữu thiết kế thời thượng, sang trọng, khối lượng 2.2kg dễ dàng bỏ vào balo mang theo ra ngoài.\r\nCPU Intel Core i7 13620H dễ dàng xử lý các tác vụ đồ họa nặng và chơi game AAA cấu hình cao.\r\nCard NVIDIA GeForce RTX 4060 cho hiệu suất xử lý đồ họa c', NULL),
(43, 'Laptop ASUS TUF Gaming F15 FX507ZC4-HN074W', 'Laptop ASUS TUF Gaming F15 FX507ZC4-HN074W', 4, 1, 'Laptop ASUS TUF Gaming F15 FX507ZC4-HN074W.webp', 14990000, 'Laptop Asus Tuf Gaming F15 FX507ZC4-HN074W - Thoải mái chiến game, lưu trữ đã đời \r\nLaptop Asus Tuf Gaming F15 FX507ZC4-HN074W là dòng laptop gaming có hiệu năng vượt trội, nhiều tính năng tân tiến và tuyệt vời cho game thủ. Mẫu laptop này không chỉ ', 2, 5, 'CPU Intel Core i5 12500H dễ dàng xử lý các tác vụ nặng và chơi game AAA cấu hình cao\r\nCard NVIDIA GeForce RTX 3050 cải thiện hiệu suất xử lý đồ họa và đảm bảo trải nghiệm chơi game tuyệt vời\r\nMàn hình 15.6 inch Full HD cùng tần số quét 144 Hz hỗ trợ ', NULL),
(44, 'Laptop ASUS VivoBook 14 OLED A1405VA-KM095W', 'Laptop ASUS VivoBook 14 OLED A1405VA-KM095W', 4, 1, 'Laptop ASUS VivoBook 14 OLED A1405VA-KM095W.webp', 17590000, 'Laptop Asus Vivobook 14 OLED A1405VA-KM095W - Màn hình rộng, sắc nét\r\nLaptop Asus Vivobook 14 OLED A1405VA-KM095W có sự nổi bật nhất là màn hình OLED, chuẩn điện ảnh, đem lại trải nghiệm về thị giác cực kỳ tốt. Bên cạnh đó, chiếc laptop Asus Vivobook', 2, 5, 'Sở hữu thiết kế gọn nhẹ cùng tông màu bạc sang trọng, chắc hẳn là một sản phẩm được mọi người yêu thích\r\nMàn hình 14 inch đi kèm với độ phủ màu 100% DCI-P3 chắc hẳn sẽ đem lại trải nghiệm tuyệt vời về hình ảnh, video\r\nTrang bị CPU Intel Core i5-13500', NULL),
(45, 'Laptop HP 14-DQ2055WM 39K15UA - Nhập khẩu chính hã', 'Laptop HP 14-DQ2055WM 39K15UA - Nhập khẩu chính hãng', 6, 1, 'Laptop HP 14-DQ2055WM 39K15UA - Nhập khẩu chính hãng.webp', 11490000, 'Laptop HP 14-DQ2055WM 39K15UA - Cân bằng mọi thao tác\r\nĐể phục vụ các tác vụ cơ bản, bạn chỉ cần một chiếc laptop phổ thông. Một chuẩn mực về kiểu dáng lẫn hiệu năng không thể không kể đến cái tênlaptop HP14-DQ2055WM 39K15UA. Hãy tham khảo thêm một v', 2, 5, 'Đáp ứng tốt cho các tác vụ văn phòng - Ram 4GB, Core i3 thế hệ 11 xử lý tốt các phần mềm như word, exel, power point hay lướt web trên trình duyệt\r\nBền bỉ, cứng cáp - Thiết kế vỏ nhôm chắc chắn\r\nCảm giác gõ thoải mái - bàn phím kích thước lớn, độ nảy', NULL),
(46, 'Laptop HP 14-EP0112TU 8C5L1PA', 'Laptop HP 14-EP0112TU 8C5L1PA', 6, 1, 'Laptop HP 14-EP0112TU 8C5L1PA.webp', 16790000, 'Laptop HP 14-EP0112TU 8C5L1PA sang trọng, tinh tế với hiệu năng vượt trội\r\nLaptop HP 14-EP0112TU 8C5L1PA là mẫu laptop có cấu hình mạnh mẽ với chip i5 cùng RAM dung lượng lớn. Với thiết kế sang trọng, nhỏ gọn, đây chính là người bạn đồng hành giúp bạ', 2, 5, 'Sở hữu thiết kế thanh lịch và sang trọng với gam màu tinh tế\r\nMàn hình 14 inch Full HD, mang đến hình ảnh sắc nét và màu sắc sống động\r\nBộ xử lý Intel Core i5-1335U cho khả năng xử lý tác vụ đa nhiệm và các ứng dụng đòi hỏi hiệu suất cao một cách mượ', NULL),
(47, 'Laptop HP 15 250 G8 85C69EA', 'Laptop HP 15 250 G8 85C69EA', 6, 1, 'Laptop HP 15 250 G8 85C69EA.webp', 11990000, 'Laptop HP 15 250 G8 85C69EA - Hiệu suất và tính di động cao\r\nLaptop HP 15 250 G8 85C69EA là dòng máy được làm gọn nhẹ cho tính di động cao, phù hợp dùng được ở mọi nơi. Hiệu suất của máy được duy trì ổn định nhờ vào cấu hình tầm trung cùng thời lượng', 2, 5, 'Sở hữu thiết kế thanh lịch, lớp vỏ tone màu xám sang trọng\r\nMàn hình 15.6 inch Full HD cho hình ảnh sắc nét, màu sắc sống động\r\nCPU Intel Core i5 1135G7 cho tốc độ xử lý mọi dữ liệu nhanh chóng, tiết kiệm pin hiệu quả\r\n8GB RAM hỗ trợ mở cùng lúc trên', NULL),
(48, 'Laptop HP 15-DW3033DX 405F6UA', 'Laptop HP 15-DW3033DX 405F6UA', 6, 1, 'Laptop HP 15-DW3033DX 405F6UA.webp', 9990000, 'Laptop HP 15-dw3033dx 405F6UA - Làm việc siêu tiện và siêu nhanh\r\nChứa đựng vi xử lý thế hệ 11 của dòng Intel Core cùng với RAM dung lớn, gói gọn bên trong thân máy nhẹ mỏng di chuyển dễ dàng,laptop HP 15-dw3033dx 405F6UA chính', 2, 5, 'Chip Intel Core i3 1215U vận hành nhanh chóng các tác vụ văn phòng, doanh nghiệp trên Word, Excel,...\r\nCard Intel UHD Graphics dễ dàng tinh chỉnh hình ảnh, video cơ bản hay chơi một số tựa game nhẹ\r\nRAM 8 GB đa nhiệm thêm hiệu quả, mở nhiều tab Chrom', NULL),
(49, 'Laptop HP 15S-FQ5231TU 8U241PA', 'Laptop HP 15S-FQ5231TU 8U241PA', 6, 1, 'Laptop HP 15S-FQ5231TU 8U241PA.webp', 9990000, 'Laptop HP 15S-FQ5231TU 8U241PA – Bứt phá trải nghiệm\r\nLaptop HP 15S-FQ5231TU 8U241PA thuộc phân khúc laptop giá rẻ nhưng vẫn mang trong mình đầy đủ tính năng cần thiết để đáp ứng nhu cầu người dùng. Chiếc máy tính xách tay này rất thích hợp dành cho ', 3, 5, 'Sở hữu thiết kế hiện đại với lớp vỏ bạc đẹp mắt, tạo cảm giác hài hòa cho mọi không gian làm việc.\r\nCPU Intel Core i3 1215U xử lý trơn tru mọi tác vụ thường ngày hay sử dụng Word, Excel, PowerPoint,...\r\nRAM 8 GB cho khả năng đa nhiệm mượt mà, mở cùng', NULL),
(50, 'Laptop HP 245 G9 6L1N8PA', 'Laptop HP 245 G9 6L1N8PA', 6, 1, 'Laptop HP 245 G9 6L1N8PA.webp', 10990000, 'Laptop HP 245 G9 6L1N8PA - Sang trọng, linh hoạt cùng góc nhìn rộng\r\nLaptop HP 245 G9 6L1N8PA là chiếc laptop 14 inch khá phù hợp với nhiều người sử dụng. Màn hình sắc nét cùng những thiết kế linh hoạt giúp cho sản phẩm hỗ trợ được người dùng tốt hơn', 2, 5, 'Phù hợp sinh viên - nhân viên văn phòng với thiết kế mỏng nhẹ, màn hình 14 inch Full HD\r\nCân mọi tác vụ học tập, văn phòng với CPU AMD Ryzen 5-5625U\r\nRAM 8 GB đa nhiệm hỗ trợ mở hàng chục tab duyệt web mà không lo lag, giật\r\nỔ cứng 256GB SSD thoải má', NULL),
(51, 'Laptop HP 348 G7 9PH19PA', 'Laptop HP 348 G7 9PH19PA', 6, 1, 'Laptop HP 348 G7 9PH19PA.webp', 15990000, 'Laptop HP 348 G7 9PH19PA – Mở ra thế giới giải trí\r\nCó rất nhiều công việc mà bạn cần phải hoàn thành, nhưng một chiếc máy cũ hoặc yếu thì làm sao có thể giải quyết được nhanh chóng. Đó là lý do mà bạn cần chiếc laptop HP 348 G7 9PH19PA.', 2, 5, 'Xử lý mượt mà các tác vụ văn phòng như Word, Exel, Powerpoint. Có thể chỉnh sửa ảnh nhẹ nhàng trên PTS, AI\r\nGiải trí nhẹ nhàng - Card màn hình intel UHD chiến mượt các tự game như Fifa online, LMHT\r\nĐa nhiệm tốt - Trang bị sẵn 1 thanh ram 8GB cùng 1 ', NULL),
(52, 'Laptop HP Elitebook 630 G9 6M142PA', 'Laptop HP Elitebook 630 G9 6M142PA', 6, 1, 'Laptop HP Elitebook 630 G9 6M142PA.webp', 16990000, 'Laptop HP Elitebook 630 G9 6M142PA – Hiệu năng tối đa, tối ưu trải nghiệm\r\nLaptop HP Elitebook 630 G9 6M142PA được giới doanh nhân ưu ái lựa chọn với những đặc điểm vượt bậc. Thông qua loạt công nghệ hiện đại cùng bộ vi xử lý i5 thế hệ 12, phiên bản ', 2, 5, 'Sở hữu thiết kế thời thượng với các đường nét thiết kế mềm mại, sang trọng\r\nMàn hình 13.3 inch Full HD mang đến cho bạn những khung hình sắc nét, sống động\r\nCPU Intel Core i5-1235U cho bạn khả năng vận hành xử lý nhanh chóng, mượt mà\r\nChất lượng đồ h', NULL),
(53, 'Laptop HP Envy X360 2IN1 14-ES0013', 'Laptop HP Envy X360 2IN1 14-ES0013', 6, 1, 'Laptop HP Envy X360 2IN1 14-ES0013.webp', 17990000, 'Laptop HP Envy X360 2IN1 14-ES0013 - Laptop văn phòng với dung lượng bộ nhớ vượt trội\r\nLaptop HP Envy X360 2IN1 14-ES0013 thuộc bộ sưu tập sản phẩm dành cho giới văn phòng khi sở hữu dung lượng bộ nhớ vượt trội cùng thiết kế gập tiện lợi. Theo đó, la', 3, 5, 'Sử dụng con chip i5 Gen 13 đem lại hiệu năng mạnh mẽ cho phép xử lý tốt các tác vụ văn phòng\r\nRAM 8 GB cùng ổ cứng SSD 512 GB đem lại không gian lưu trữ lớn nhưng mở nhiều tab vẫn mượt mà\r\nMàn hình 14 inch Full HD cho ra hình ảnh chân thật, sắc nét\r\n', NULL),
(54, 'Laptop HP Envy X360 BF0112TU 7C0N9PA', 'Laptop HP Envy X360 BF0112TU 7C0N9PA', 6, 1, 'Laptop HP Envy X360 BF0112TU 7C0N9PA.webp', 23190000, 'Laptop HP Envy X360 - Màn đẹp sắc nét, gập 360 tiện lợi\r\nLaptop HP ENVY X360 đứng trong hàng ngũ những thiết bị 2 trong 1 tiên tiến và độc đáo. Mặc dù có thiết kế mỏng nhẹ, máy vẫn đáp ứng tốt nhu cầu công việc hàng ngày với khả năng xử lý tác vụ nặn', 2, 5, 'Khối lượng nhẹ chỉ 1.34 kg dễ dàng mang theo nó bất cứ đâu.\r\nMàn hình cảm ứng nhỏ gọn 13.3 inch, độ phân giải 2.8K cho màu sắc chân thực, sống động.\r\nCPU Intel Core i5 - 1230U đi kèm RAM 16 GB và ổ cứng 512 GB SSD xử lý trơn tru các tác vụ nặng từ là', NULL),
(55, 'Laptop HP Evy 13 BA1047 290F5UA Nhập Khẩu chính hã', 'Laptop HP Evy 13 BA1047 290F5UA Nhập Khẩu chính hãng', 6, 1, 'Laptop HP Evy 13 BA1047 290F5UA Nhập Khẩu chính hãng.webp', 15990000, 'Laptop HP Envy 13-BA1047 290F5UA - Lịch lãm cho nhiều công việc\r\nLaptop HP Envy 13-BA1047 290F5UA được ra mắt với mong muốn mang đến thiết bị vi tính tiện dụng cho nhiều công việc.  Sản phẩm laptop HP Envy với vẻ ngoài lịch lãm c', 2, 5, 'Là trợ thủ đắc lực cho mọi công việc từ văn phòng cho đến giải trí, chỉnh sửa hình ảnh với CPU Intel Core i5 - 1135G7.\r\nĐa nhiệm vượt bậc với RAM 8 GB cho mọi thao tác được tối ưu mà không lo xảy ra tình trạng giật, lag máy.\r\nSSD 256 GB NVMe PCle mở ', NULL),
(56, 'Laptop HP 245 G9 6L1N8PA', 'Laptop HP 245 G9 6L1N8PA', 6, 1, 'Laptop HP 245 G9 6L1N8PA.webp', 10990000, 'Laptop HP 245 G9 6L1N8PA - Sang trọng, linh hoạt cùng góc nhìn rộng\r\nLaptop HP 245 G9 6L1N8PA là chiếc laptop 14 inch khá phù hợp với nhiều người sử dụng. Màn hình sắc nét cùng những thiết kế linh hoạt giúp cho sản phẩm hỗ trợ được người dùng tốt hơn', 2, 5, 'Phù hợp sinh viên - nhân viên văn phòng với thiết kế mỏng nhẹ, màn hình 14 inch Full HD\r\nCân mọi tác vụ học tập, văn phòng với CPU AMD Ryzen 5-5625U\r\nRAM 8 GB đa nhiệm hỗ trợ mở hàng chục tab duyệt web mà không lo lag, giật\r\nỔ cứng 256GB SSD thoải má', NULL),
(57, 'Laptop HP Pavilion 15-EG3093TU 8C5L4PA', 'Laptop HP Pavilion 15-EG3093TU 8C5L4PA', 6, 1, 'Laptop HP Pavilion 15-EG3093TU 8C5L4PA.webp', 18590000, 'Laptop HP Pavilion 15-EG3093TU 8C5L4PA - Đáp ứng mọi tác vụ văn phòng \r\nLaptop HP Pavilion 15-EG3093TU 8C5L4PA là một thiết bị có hiệu năng mạnh mẽ, đáp ứng đa dạng nhu cầu sử dụng của người dùng. Đây là một lựa chọn hấp dẫn cho những người dùng đòi ', 2, 5, 'Laptop thu hút ánh nhìn với thiết kế tông màu vàng nổi bật\r\nMàn hình rộng rãi 15.6 inch Full HD cho bạn không gian làm việc, học tập hay giải trí vô cùng đã mắt\r\nCPU Intel Core i5-1335U đáp ứng tốt các tác vụ học tập và làm việc hay chỉnh sửa hình ản', NULL),
(58, 'Laptop HP Pavilion 15-EG3095TU 8C5L6PA', 'Laptop HP Pavilion 15-EG3095TU 8C5L6PA', 6, 1, 'Laptop HP Pavilion 15-EG3095TU 8C5L6PA.webp', 17790000, 'Laptop HP Pavilion 14-DV2073TU 7C0P2PA - Thiết kế thanh lịch, hiệu năng cao\r\nLaptop HP Pavilion 14-DV2073TU 7C0P2PA vẫn giữ nguyên nét đặc trưng thiết kế của hãng laptop HP Pavilion. Với ngoại hình đẹp mắt, màu vàng bên ngoài tạo nên vẻ ngoài đơn giả', 2, 5, 'Mang phong cách tối giản nhưng đầy sang trọng đặc trưng của các dòng máy đến từ nhà HP\r\nMàn hình 15.6 inch Full HD mang đến chất lượng hình ảnh sắc nét, tận hưởng màn hình lớn vô cùng đã mắt\r\nCPU Intel Core i5-1335U đáp ứng tốt các tác vụ học tập và ', NULL),
(59, 'Laptop HP Pavilion X360 14-EK1047TU 80R25PA', 'Laptop HP Pavilion X360 14-EK1047TU 80R25PA', 6, 1, 'Laptop HP Pavilion X360 14-EK1047TU 80R25PA.webp', 24390000, 'Laptop HP Pavilion X360 14 EK1047TU 80R25PA - Thiết kế gập 360 độ, vi xử lý i7 thế hệ 13\r\nLaptop HP Pavilion X360 14 EK1047TU 80R25PA là một sự kết hợp hoàn hảo giữa thiết kế đẹp và hiệu suất mạnh mẽ. Với thiết kế gập xoay 360 độ, laptop HP Pavilion ', 2, 5, 'CPU Intel Core i7 - 1355U mạnh mẽ, cho phép bạn hoàn thành tốt các công việc văn phòng, xem phim, giải trí\r\nCard đồ họa tích hợp Intel Iris Xe Graphics hỗ trợ chỉnh sửa ảnh, render video ngắn,...\r\nRAM 16 GB biến việc mở nhiều tab trở nên dễ dàng, trơ', NULL),
(60, 'Laptop HP Victus 15-FA1155TX 952R1PA', 'Laptop HP Victus 15-FA1155TX 952R1PA', 6, 1, 'Laptop HP Victus 15-FA1155TX 952R1PA.webp', 17990000, 'Laptop HP Victus 15-FA1155TX 952R1PA - Cấu hình ấn tượng với thiết kế bắt mắt\r\nLaptop HP Victus 15-FA1155TX 952R1PA thuộc bộ sưu tập các sản phẩm dành cho game thủ khi có hiệu năng vượt trội cùng nhiều công nghệ tiên tiến. Điểm đặc biệt ở dòng máy là', 2, 5, 'Sở hữu thiết kế thời thượng, màu sắc sang trọng, phù hợp sử dụng cho cả nam và nữ.\r\nCPU Intel Core i5 12450H xử lý nhanh gọn mọi tác vụ học tập, văn phòng.\r\nCard đồ họa Nvidia GeForce RTX 2050 4GB GDDR6 cân mọi tựa game phổ biến hiện nay.\r\nRAM 8 GB c', NULL),
(61, 'Laptop Lenovo IdeaPad 3 14ITL6 82H701QWVN', 'Laptop Lenovo IdeaPad 3 14ITL6 82H701QWVN', 3, 1, 'Laptop Lenovo IdeaPad 3 14ITL6 82H701QWVN.webp', 8990000, 'Laptop Lenovo Ideapad 3 14ILT6 82H701QWVN - Thiết kế hiện đại, lưu trữ rộng rãi\r\nLaptop Lenovo Ideapad 3 14ILT6 82H701QWVN là phân khúc máy tính xách tay đa năng và cực kỳ tiện ích trong công việc và giải trí hàng ngày. Sở hữu thông số ghi nhớ ổn địn', 1, 5, 'Mang thiết kế thanh lịch, tao nhã với cân nặng chỉ nhẹ vỏn vẹn 1.41 kg\r\nMàn hình 14 inch Full HD cùng viền máy đã được thu nhỏ tạo cảm giác góc nhìn mở rộng hơn\r\nCân mọi tác vụ học tập, làm việc trên các phần mềm của nhà Office như Word, Excel, Power', NULL),
(62, 'Laptop Lenovo Ideapad 3 15IAU7 82RK001PVN', 'Laptop Lenovo Ideapad 3 15IAU7 82RK001PVN', 3, 1, 'Laptop Lenovo Ideapad 3 15IAU7 82RK001PVN.webp', 11390000, 'Laptop Lenovo Ideapad 3 15IAU7 82RK001PVN - Laptop có kiểu dáng mỏng nhẹ cùng hiệu năng vượt trội\r\nLaptop Lenovo Ideapad 3 15IAU7 82RK001PVN là sản phẩm phù hợp với giới văn phòng và học sinh, sinh viên khi sở hữu kiểu dáng gọn nhẹ cùng các thông số ', 1, 5, 'Thiết kế mỏng nhẹ, sang trọng và tinh tế, phù hợp cho các công việc học tập, văn phòng hay giải trí cơ bản\r\nTrang bị bộ vi xử lý Intel Core i5-1235U mạnh mẽ, cho phép xử lý mượt mà nhiều tác vụ cùng lúc\r\nMàn hình rộng 15.6 inch cho chất lượng hình ản', NULL),
(63, 'Laptop Lenovo Ideapad Flex 5 14ALC7 82R900ECVN', 'Laptop Lenovo Ideapad Flex 5 14ALC7 82R900ECVN', 3, 1, 'Laptop Lenovo Ideapad Flex 5 14ALC7 82R900ECVN.webp', 14990000, 'Laptop Lenovo Ideapad Flex 5 14ALC7 82R900ECVN – Mỏng nhẹ, ưu việt\r\nLaptop Lenovo Ideapad Flex 5 14ALC7 82R900ECVN là một chiếc laptop Lenovo Ideapad được thiết kế mỏng nhẹ để đáp ứng nhu cầu di động của người dùng hiện đại. Đây quả thực là sự lựa ch', 2, 5, 'Thiết kế thanh mãng, thời thượng với trọng lượng nhe chỉ 1.55 kg.\r\nMàn hình 14 inch cùng độ phân giải WUXGA, mang đến hình ảnh hiển thị mượt êm, rõ nét.\r\nCPU AMD Ryzen 7 5700U cho tốc độ phản hồi nhanh và xử lý đa nhiệm, tiết kiệm điện tối ưu, làm vi', NULL),
(64, 'Laptop Lenovo IdeaPad 3 15ITL6 82H80388VN', 'Laptop Lenovo IdeaPad 3 15ITL6 82H80388VN', 3, 1, 'Laptop Lenovo IdeaPad 3 15ITL6 82H80388VN.webp', 11090000, 'Laptop Lenovo Ideapad 3 15ITL6 82H80388VN - Mỏng nhẹ với bộ cấu hình mạnh mẽ\r\nLaptop Lenovo Ideapad 3 15ITL6 82H80388VN được đánh giá cao khi sở hữu thiết kế thanh lịch và bộ cấu hình mạnh mẽ. Được tích hợp bộ vi xử lý thế hệ mới của Intel, laptop có', 2, 5, 'Mang thiết kế hiện đại với tone màu xám thanh lịch\r\nCPU Intel Core i5-1135G7 chinh phục nhanh chóng các tác vụ văn phòng\r\nCard đồ họa Intel Iris Xe Graphics hỗ trợ chỉnh sửa hình ảnh cơ bản\r\nRAM 8 GB và ổ cứng SSD 256 GB đa nhiệm mượt mà, hỗ trợ truy', NULL),
(65, 'Laptop Lenovo IdeaPad Flex 5 14IAU7 82R700JLVN', 'Laptop Lenovo IdeaPad Flex 5 14IAU7 82R700JLVN', 3, 1, 'Laptop Lenovo IdeaPad Flex 5 14IAU7 82R700JLVN.webp', 16490000, 'Laptop Lenovo Ideapad Flex 5 14IAU7 82R700JLVN - Hiệu năng mạnh mẽ, thiết kế mỏng nhẹ\r\nLaptop Lenovo Ideapad Flex 5 14IAU7 82R700JLVN là chiếc laptop văn phòng cực kỳ mạnh mẽ đến từ thương hiệu Lenovo. Chiếc laptop Ideapad được đánh giá cao bởi hiệu ', 1, 5, 'Sở hữu thiết kế tinh tế với tone màu xám đẹp mắt\r\nCân mọi tác vụ học tập, văn phòng với CPU Intel i5-1235U\r\nMàn hình cảm ứng 14 inch 2.2K cực sắc nét hỗ trợ học tập, làm việc, sáng tạo thỏa thích\r\nRAM 16GB đa nhiệm cùng ổ cứng 512GB rộng rãi hỗ trợ l', NULL),
(66, 'Laptop Lenovo IdeaPad Slim 3 14IAH8 83EQ0005VN', 'Laptop Lenovo IdeaPad Slim 3 14IAH8 83EQ0005VN', 3, 1, 'Laptop Lenovo IdeaPad Slim 3 14IAH8 83EQ0005VN.webp', 13890000, 'Laptop Lenovo IdeaPad Slim 3 14IAH8 83EQ0005VN - Thiết kế nhỏ gọn, hiệu năng mạnh mẽ\r\nLà mẫu laptop có thiết kế nhỏ gọn, Laptop Lenovo IdeaPad Slim 3 14IAH8 83EQ0005VN mang tới cho người dùng cảm giác tiện lợi và di động. Đặc biệt, sản phẩm laptop Le', 2, 5, 'Mang thiết kế tối ưu và di động với trọng lượng nhẹ nhàng chỉ 1.37 kg\r\nCPU Intel Core i5-12450H mạnh mẽ, xử lý từ những tác vụ văn phòng đơn giản tới những công việc thiết kế hình ảnh\r\n16GB RAM đa nhiệm giúp làm việc với nhiều ứng dụng mà không lo lắ', NULL),
(67, 'Laptop Lenovo IdeaPad Slim 3 14IAH8 83EQ0009VN', 'Laptop Lenovo IdeaPad Slim 3 14IAH8 83EQ0009VN', 3, 1, 'Laptop Lenovo IdeaPad Slim 3 14IAH8 83EQ0009VN.webp', 16290000, 'Laptop Lenovo IdeaPad Slim 3 14IAH8 83EQ0009VN: đa nhiệm mượt mà, siêu linh hoạt\r\nLaptop Lenovo Ideapad Slim 3 14IAH8 83EQ0009VN có thiết kế gọn nhẹ, trang nhã là sự lựa chọn lý tưởng cho học sinh, sinh viên hay dân văn phòng. Không những vậy, chiếc ', 2, 5, 'Trọng lượng cực nhẹ chỉ 1.37 kg, dễ dàng bỏ vào balo và mang theo bất cứ đâu.\r\nCPU Intel Core i5-12450H xử lý từ những tác vụ văn phòng đơn giản tới những công việc thiết kế đồ họa đơn giản.\r\n16GB RAM đa nhiệm, làm việc đồng thời với nhiều ứng dụng m', NULL),
(68, 'Laptop Lenovo Ideapad Slim 3 14IRH8 83EL0023VN', 'Laptop Lenovo Ideapad Slim 3 14IRH8 83EL0023VN', 3, 1, 'Laptop Lenovo Ideapad Slim 3 14IRH8 83EL0023VN.webp', 16990000, 'Laptop Lenovo Ideapad Slim 3 14IRH8 83EL0023VN hiệu năng mạnh mẽ đáp ứng tốt cho nhu cầu văn phòng, học tập\r\nLaptop Lenovo Ideapad Slim 3 14IRH8 83EL0023VN là sản phẩm laptop Lenovo Ideapad phù hợp đáp ứng cho nhu cầu sử dụng cơ bản của đa số người d', 2, 5, 'Trang bị bộ vi xử lý Intel Core i7-11320H cho phép bạn chạy mượt mà các ứng dụng nặng và đòi hỏi nhiều sức mạnh xử lý\r\nRAM 16GB cho phép bạn xử lý nhiều tác vụ cùng một lúc mà không gặp bất kỳ vấn đề nào về độ trễ\r\nỔ cứng SSD PCIe dung lượng 512GB cu', NULL),
(70, 'Laptop Lenovo Ideapad Slim 5 14IAH8 83BF002NVN', 'Laptop Lenovo Ideapad Slim 5 14IAH8 83BF002NVN', 3, 1, 'Laptop Lenovo Ideapad Slim 5 14IAH8 83BF002NVN.webp', 15190000, 'Laptop Lenovo Ideapad Slim 5 14IAH8 83BF002NVN – Xử lý ổn định mọi tác vụ văn phòng\r\nLaptop Lenovo Ideapad Slim 5 14IAH8 83BF002NVN là một lựa chọn đáng cân nhắc trong phân khúc tầm trung. Với thiết kế hiện đại, mỏng nhẹ cùng bộ nhớ ấn tượng, sản phẩ', 3, 5, 'Sở hữu thiết kế tinh tế với lớp vỏ nhôm sáng bóng, sang trọng\r\nMàn hình 14 inch WUXGA cực sắc nét, hỗ trợ làm việc, giải trí dễ dàng\r\nCPU Intel Core i5-12450H mạnh mẽ, giải quyết nhanh mọi tác vụ học tập, văn phòng\r\nRAM 16GB cùng ổ cứng 512GB SSD đa ', NULL),
(71, 'Laptop Lenovo Ideapad Slim 5 14IMH9 83DA001NVN', 'Laptop Lenovo Ideapad Slim 5 14IMH9 83DA001NVN', 3, 1, 'Laptop Lenovo Ideapad Slim 5 14IMH9 83DA001NVN.webp', 22990000, 'Laptop Lenovo Ideapad Slim 5 14IMH9 83DA001NVN: Chip Core Ultra 5, màn hình OLED 14”\r\nNếu bạn đang tìm một người bạn đồng hành trong mọi công việc học tập với hiệu năng ổn định cùng kích thước nhỏ gọn thì đừng bỏ qua IdeaPad Slim 5 14IMH9. Mẫu laptop', 3, 4, 'Trang bị bộ vi xử lý Intel Core U5-125H cho phép bạn xử lý mượt mà các tác vụ hàng ngày\r\nRAM 16GB hỗ trợ thực hiện nhiều công việc một cách mượt mà từ làm việc đến chơi các tựa game nhẹ\r\nỔ cứng SSD PCIe dung lượng 512GB, cho phép bạn lưu trữ và truy ', NULL),
(72, 'Laptop Lenovo IdeaPad Slim 5 14IRL8 82XD008LVN', 'Laptop Lenovo IdeaPad Slim 5 14IRL8 82XD008LVN', 3, 1, 'Laptop Lenovo IdeaPad Slim 5 14IRL8 82XD008LVN.webp', 14490000, 'Laptop Lenovo Ideapad Slim 5 14IRL8 82XD008LVN - Dung lượng lưu trữ 16GB/1TB\r\nLaptop Lenovo Ideapad Slim 5 14IRL8 82XD008LVN có thiết kế hiện đại và cấu hình nổi trội, mang đến trải nghiệm ấn tượng khi sử dụng. Sản phẩm laptop Lenovo Ideapad này được', 3, 5, 'Hiệu suất mạnh mẽ với bộ xử lý Intel® Core™ i5-13500H mang lại sức mạnh xử lý ấn tượng cho việc đa nhiệm và các ứng dụng đòi hỏi cao.\r\nĐồ họa xuất sắc tích hợp Intel® Iris® Xe để hiển thị mượt mà và trải nghiệm hình ảnh tốt hơn, phục vụ cả nhu cầu cô', NULL),
(73, 'Laptop Lenovo Ideapad Slim 5 Light 14ABR8 82XS002J', 'Laptop Lenovo Ideapad Slim 5 Light 14ABR8 82XS002JVN', 3, 1, 'Laptop Lenovo Ideapad Slim 5 Light 14ABR8 82XS002JVN.webp', 15590000, 'Laptop Lenovo Ideapad Slim 5 Light 14ABR8-82XS002JVN – Siêu nhẹ, siêu mạnh mẽ\r\nVới trọng lượng chỉ chưa đến 2kg và độ dày chỉ 17.1mm, laptop Lenovo Ideapad Slim 5 Light 14ABR8-82XS002JVN cho phép bạn dễ dàng mang theo bên mình mọi lúc mọi nơi. Thiết ', 2, 5, 'Hiệu Năng Mạnh Mẽ với Bộ Xử Lý AMD Ryzen™ 7 7730U mang lại hiệu suất ấn tượng.\r\nĐồ Họa Mạnh Mẽ với AMD Radeon™ Graphics mang đến trải nghiệm đồ họa mượt mà và chất lượng.\r\nKhông gian lưu trữ lên đến 16GB tích hợp và ổ SSD 512GB, đảm bảo khả năng đáp ', NULL),
(74, 'Laptop Lenovo LOQ 15IAX9 83GS000FVN', 'Laptop Lenovo LOQ 15IAX9 83GS000FVN', 3, 1, 'Laptop Lenovo LOQ 15IAX9 83GS000FVN.webp', 17990000, 'Laptop Lenovo LOQ 15IAX9 83GS000FVN – Siêu phẩm tầm trung, gaming mạnh mẽ\r\nLaptop Lenovo LOQ 15IAX9 83GS000FVN là một lựa chọn tuyệt vời cho những ai đang tìm kiếm một chiếc laptop gaming tầm trung nhưng lại sở hữu sức mạnh mạnh mẽ. Với hiệu năng ấn ', 1, 5, 'Trang bị bộ vi xử lý Intel Core I5-12450HX cân mọi tác vụ từ văn phòng cho đến chơi game.\r\nCard đồ họa RTX 2050 hỗ trợ chỉnh sửa ảnh, video 3D, chơi game mượt mà.\r\nRAM 8GB DDR5-4800 SO-DIMM cùng ổ cứng 512GB SSD cho không gian lưu trữ rộng rãi, hỗ tr', NULL),
(75, 'Laptop Lenovo LOQ 15IAX9 83GS001RVN', 'Laptop Lenovo LOQ 15IAX9 83GS001RVN', 3, 1, 'Laptop Lenovo LOQ 15IAX9 83GS001RVN.webp', 20190000, 'Laptop Lenovo LOQ 15IAX9 83GS001RVN: hiệu năng mạnh mẽ, màn hình hiển thị sắc nét\r\nNếu bạn đang tìm kiếm mẫu laptop gaming được trang bị CPU tối thiểu Core i5 với thiết kế đẹp mắt thì đừng bỏ qua LOQ 15IAX9 83GS001RVN. Sản phẩm đến từ thương hiệu Len', 2, 5, 'Trang bị bộ vi xử lý Intel Core i5-12450HX giúp xử lý tác vụ nhanh chóng và mượt mà\r\nCard đồ họa NVIDIA GeForce RTX 3050 cho trải nghiệm gaming mượt mà với mức đồ họa cao\r\nBộ nhớ RAM 12GB DDR5 đảm bảo hiệu suất ổn định và đáp ứng nhu cầu đa nhiệm\r\nỔ ', NULL),
(76, 'Laptop Lenovo LOQ 15IAX9 83GS001SVN', 'Laptop Lenovo LOQ 15IAX9 83GS001SVN', 3, 1, 'Laptop Lenovo LOQ 15IAX9 83GS001SVN.webp', 18190000, 'Laptop Lenovo LOQ 15IAX9 83GS001SVN - Cấu hình khủng, thiết kế chuẩn gaming\r\nVới thiết kế hiện đại, tinh tế được thừa hưởng từ dòng Legion và hiệu năng hoạt động mạnh mẽ, vượt trội mà laptop Lenovo LOQ 15IAX9 được đánh giá là một trong những chiếc la', 3, 5, 'Chip i5 12450HX phù hợp với các tác vụ nặng như PTS, chơi game,...\r\nRam 12GB và ổ cứng SSD 512 mang đến tốc độ xử lí nhanh và khả năng lưu trữ lớn.\r\nMàn hình 15.6 inches với độ phân giải Full HD cho hình ảnh sống động, chân thực\r\nTần số quét 144Hz ch', NULL),
(77, 'Laptop Lenovo ThinkBook 15 G5 IRL 21JD002FVN', 'Laptop Lenovo ThinkBook 15 G5 IRL 21JD002FVN', 3, 1, 'Laptop Lenovo ThinkBook 15 G5 IRL 21JD002FVN.webp', 16290000, 'Laptop Lenovo Thinkbook 15 G5 IRL 21JD002FVN - Khả năng hoạt động đa nhiệm tuyệt vời\r\nLaptop Lenovo Thinkbook 15 G5 IRL 21JD002FVN là mẫu máy tính xách tay sở hữu hiệu năng ấn tượng khi được trang bị một trong những thế hệ chip Intel Core i5 mới cùng', 3, 5, 'Màn hình 15.6 inch Full HD cho khả năng hiển thị rõ nét, màu sắc chân thực.\r\nCPU Intel Core i5 1335U xử lý tốt và mượt mà mọi tác vụ văn phòng trên các ứng dụng của Office như Word, Excel, PowerPoint,...\r\nCard tích hợp Intel Iris Xe Graphics hỗ trợ l', NULL),
(78, 'Laptop Lenovo V14 G4 AMN 82YT00M8VN', 'Laptop Lenovo V14 G4 AMN 82YT00M8VN', 3, 1, 'Laptop Lenovo V14 G4 AMN 82YT00M8VN.webp', 10190000, 'Laptop Lenovo V14 G4 AMN 82YT00M8VN - Hiệu năng vượt trội, thiết kế lịch sự\r\nLaptop Lenovo V14 G4 AMN 82YT00M8VN với thiết kế tối giản, lịch sự cùng kích thước nhỏ gọn sẽ phù hợp với đa số đối tượng người dùng là học sinh, sinh viên, người làm văn ph', 2, 5, 'CPU AMD Ryzen 5 7520U cung cấp hiệu suất đủ mạnh để xử lý các tác vụ hàng ngày và văn phòng một cách mượt mà\r\nBộ nhớ RAM lên đến 16GB và ổ cứng SSD PCIe 512GB, cung cấp không gian lưu trữ đủ rộng rãi và tốc độ truy cập nhanh cho người dùng\r\nMàn hình ', NULL),
(79, 'Laptop Lenovo Yoga Duet 7 13ITL6 82MA009PVN', 'Laptop Lenovo Yoga Duet 7 13ITL6 82MA009PVN', 3, 1, 'Laptop Lenovo Yoga Duet 7 13ITL6 82MA009PVN.webp', 25990000, 'Laptop Lenovo Yoga Duet 7 13ITL6 82MA009PVN - Cấu hình vượt trội, siêu thiết kế\r\nLaptop Lenovo Yoga Duet 7 13ITL6 82MA009PVN chính là sự kết hợp hoàn hảo mà bạn có thể lựa chọn để sở hữu cho mình một con máy có cả Windows và Tablet với chất lượng và ', 3, 5, 'Thiết kế mỏng nhẹ vẻ ngoài cao cấp với khối lượng chỉ vỏn vẹn 1.168 kg\r\nBộ vi xử lý Intel Core i7 1165G7 kết hợp cùng card tích hợp Intel Iris Xe Graphics hỗ trợ giải quyết nhanh gọn tác vụ văn phòng như Word, Excel, PowerPoint,...\r\nRAM 16GB kết hợp ', NULL),
(80, 'Laptop Lenovo Yoga Slim 7 14IMH9 83CV001UVN', 'Laptop Lenovo Yoga Slim 7 14IMH9 83CV001UVN', 3, 1, 'Laptop Lenovo Yoga Slim 7 14IMH9 83CV001UVN.webp', 28290000, 'Laptop Lenovo Yoga Slim 7 14IMH9 83CV001UVN: Core Ultra 7, SSD 512GB, mỏng nhẹ\r\nNếu bạn đang tìm kiếm chiếc laptop có thiết kế linh hoạt nhưng vẫn phải đảm bảo hiệu năng ổn định thì đừng bỏ qua Lenovo Yoga Slim 7 14IMH9 83CV001UVN. Mẫu laptop Lenovo ', 3, 5, 'Trang bị vi xử lý Intel Core U7-155H đặc biệt mạnh mẽ, cùng với 32GB RAM, đảm bảo hiệu suất cao cung cấp tốc độ xử lý nhạy bén và đa nhiệm mượt mà\r\nỔ cứng SSD PCIe 512GB cung cấp không gian lưu trữ lớn và tốc độ truy cập dữ liệu nhanh chóng\r\nMàn hình', NULL),
(82, 'iPhone 11 64GB', 'iPhone 11 64GB', 14, 18, 'iPhone 11 64GB.webp', 8690000, 'iPhone 11 sở hữu hiệu năng khá mạnh mẽ, ổn định trong thời gian dài nhờ được trang bị chipset A13 Bionic. Màn hình LCD 6.1 inch sắc nét cùng chất lượng hiển thị Full HD của máy cho trải nghiệm hình ảnh mượt mà và có độ tương phản cao. Hệ thống camera', 3, 20, 'Màu sắc phù hợp cá tính - 6 màu sắc bắt mắt để lựa chọn\r\nHiệu năng mượt mà, ổn định - Chip A13, RAM 4GB\r\nBắt trọn khung hình - Camera kép hỗ trợ góc rộng, chế độ Night Mode\r\nYên tâm sử dụng - Kháng nước, kháng bụi IP68, kính cường lực Gorilla', NULL),
(83, 'iPhone 12 64GB', 'iPhone 12 64GB', 14, 18, 'iPhone 12 64GB.webp', 11790000, 'Dù Apple vừa giới thiệu dòng điện thoại iPhone 13 series tuy nhiên iPhone 12 vẫn đang là một trong những sự lựa chọn hàng đầu ở thời điểm hiện tại. Chiếc flagship năm 2020 của \"Táo khuyết\" đang nhận được rất nhiều sự quan tâm của người dùng bởi mức g', 2, 20, 'Mạnh mẽ, siêu nhanh với chip A14, RAM 4GB, mạng 5G tốc độ cao\r\nRực rỡ, sắc nét, độ sáng cao - Màn hình OLED cao cấp, Super Retina XDR hỗ trợ HDR10, Dolby Vision\r\nChụp đêm ấn tượng - Night Mode cho 2 camera, thuật toán Deep Fusion, Smart HDR 3\r\nBền bỉ', NULL),
(84, 'iPhone 12 Pro 128GB', 'iPhone 12 Pro 128GB', 14, 18, 'iPhone 12 Pro 128GB.webp', 15690000, '', 3, 20, '', NULL),
(85, 'iPhone 12 Pro Max 128GB ', 'iPhone 12 Pro Max 128GB ', 14, 18, 'iPhone 12 Pro Max 128GB.webp', 15890000, '', 2, 20, '', NULL),
(86, 'iPhone 13 128GB', 'iPhone 13 128GB', 14, 18, 'iPhone 13 128GB.webp', 13690000, 'Đánh giá iPhone 13 - Flagship được mong chờ năm 2021\r\nCuối năm 2020, bộ 4 iPhone 12 đã được ra mắt với nhiều cái tiến. Sau đó, mọi sự quan tâm lại đổ dồn vào sản phẩm tiếp theo – iPhone 13. Vậy iP 13 sẽ có những gì nổi bật.', 2, 20, 'Hiệu năng vượt trội - Chip Apple A15 Bionic mạnh mẽ, hỗ trợ mạng 5G tốc độ cao\r\nKhông gian hiển thị sống động - Màn hình 6.1\" Super Retina XDR độ sáng cao, sắc nét\r\nTrải nghiệm điện ảnh đỉnh cao - Camera kép 12MP, hỗ trợ ổn định hình ảnh quang học\r\nT', NULL),
(87, 'iPhone 13 256GB', 'iPhone 13 256GB', 14, 18, 'iPhone 13 256GB.webp', 17490000, 'iPhone 13 256GB được đánh giá là dòng iPhone mang một thiết kế ấn tượng, gợi lên nét đẹp sang trọng, ấn tượng cùng khả năng xử lý đồ họa vượt trội, trở thành phiên bản cuốn hút, tạo điểm nhất độc đáo cho người dùng', 3, 20, 'Hiệu năng vượt trội - Chip Apple A15 Bionic mạnh mẽ, hỗ trợ mạng 5G tốc độ cao\r\nKhông gian hiển thị sống động - Màn hình 6.1\" Super Retina XDR độ sáng cao, sắc nét\r\nTrải nghiệm điện ảnh đỉnh cao - Camera kép 12MP, hỗ trợ ổn định hình ảnh quang học\r\nT', NULL),
(88, 'iPhone 13 Pro Max 128GB', 'iPhone 13 Pro Max 128GB', 14, 18, 'iPhone 13 Pro Max 128GB.webp', 17090000, '', 2, 20, '', NULL),
(89, 'iPhone 13 Pro Max 256GB', 'iPhone 13 Pro Max 256GB', 14, 18, 'iPhone 13 Pro Max 256GB.webp', 17290000, '', 3, 20, '', NULL),
(90, 'iPhone 14 Plus 128GB', 'iPhone 14 Plus 128GB', 14, 18, 'iPhone 14 Plus 128GB.webp', 19350000, 'iPhone 14 Plus sở hữu màn hình Super Retina XDR OLED thiết kế tai thỏ, kích thước 6.7 inch, kết hợp công nghệ True Tone, HDR, Haptic Touch, Không chỉ vậy, sản phẩm còn trang bị chip A15 Bionic mạnh mẽ, RAM 6GB, bộ nhớ trong 128GB và chạy trên hệ điều', 3, 20, 'Trải nghiệm thị giác ấn tượng - Màn hình lớn 6.7\" sắc nét với công nghệ Super Retina XDR\r\nSử dụng lâu dài với viên pin lớn giúp phát video liên tục lên tới 26 giờ\r\nTuyệt đỉnh thiết kế, tỉ mỉ từng đường nét - Nâng cấp toàn diện với kiểu dáng mới, nhiề', NULL),
(91, 'iPhone 14 Pro Max 128GB', 'iPhone 14 Pro Max 128GB', 14, 18, 'iPhone 14 Pro Max 128GB.webp', 22490000, 'Màn hình Dynamic Island - Sự biến mất của màn hình tai thỏ thay thế bằng thiết kế viên thuốc, OLED 6,7 inch, hỗ trợ always-on display\r\nCấu hình iPhone 14 Pro Max mạnh mẽ, hiệu năng cực khủng từ chipset A16 Bionic\r\nLàm chủ công nghệ nhiếp ảnh - Camera', 2, 20, 'Màn hình Dynamic Island - Sự biến mất của màn hình tai thỏ thay thế bằng thiết kế viên thuốc, OLED 6,7 inch, hỗ trợ always-on display\r\nCấu hình iPhone 14 Pro Max mạnh mẽ, hiệu năng cực khủng từ chipset A16 Bionic\r\nLàm chủ công nghệ nhiếp ảnh - Camera', NULL),
(92, 'iPhone 15 128GB', 'iPhone 15 128GB', 14, 18, 'iPhone 15 128GB.webp', 19290000, 'Thiết kế thời thượng và bền bỉ - Mặt lưng kính được pha màu xu hướng cùng khung viền nhôm bền bỉ\r\nDynamic Island hiển thị linh động mọi thông báo ngay lập tức giúp bạn nắm bắt mọi thông tin\r\nChụp ảnh đẹp nức lòng - Camera chính 48MP, Độ phân giải lên', 2, 20, 'Thiết kế thời thượng và bền bỉ - Mặt lưng kính được pha màu xu hướng cùng khung viền nhôm bền bỉ\r\nDynamic Island hiển thị linh động mọi thông báo ngay lập tức giúp bạn nắm bắt mọi thông tin\r\nChụp ảnh đẹp nức lòng - Camera chính 48MP, Độ phân giải lên', NULL),
(93, 'OPPO A15', 'OPPO A15', 15, 18, 'OPPO A15.webp', 3990000, 'Đắm chìm giải trí tuyệt đỉnh - Màn hình lớn 6.52 inch, độ phân giải HD+\r\nBắt trọn khoảnh khắc - Bộ 3 camera AI 13MP, camera trước 8MP tích hợp AI làm đẹp\r\nTốc độ mượt mà, lưu trữ nhiều hơn - Vi xử lý 8 nhân, hỗ trợ mở rộng lên đến 256GB\r\nTrải nghiệm ', 2, 20, 'Đắm chìm giải trí tuyệt đỉnh - Màn hình lớn 6.52 inch, độ phân giải HD+\r\nBắt trọn khoảnh khắc - Bộ 3 camera AI 13MP, camera trước 8MP tích hợp AI làm đẹp\r\nTốc độ mượt mà, lưu trữ nhiều hơn - Vi xử lý 8 nhân, hỗ trợ mở rộng lên đến 256GB\r\nTrải nghiệm ', NULL),
(94, 'OPPO A16', 'OPPO A16', 15, 18, 'OPPO A16.webp', 2790000, 'Tối ưu trải nghiệm giải trí - Màn hình lớn 6.52\", tích hợp công nghệ bảo vệ mắt AI\r\nNhân 3 sức mạnh chụp ảnh chuyên nghiệp - Cụm 3 camera sau 13MP, hỗ trợ Ai thông minh cho ảnh đẹp tự nhiên\r\nNăng lượng bền bỉ cả ngày lẫn đêm - Viên pin dung lượng lớn', 2, 20, 'Tối ưu trải nghiệm giải trí - Màn hình lớn 6.52\", tích hợp công nghệ bảo vệ mắt AI\r\nNhân 3 sức mạnh chụp ảnh chuyên nghiệp - Cụm 3 camera sau 13MP, hỗ trợ Ai thông minh cho ảnh đẹp tự nhiên\r\nNăng lượng bền bỉ cả ngày lẫn đêm - Viên pin dung lượng lớn', NULL),
(95, 'OPPO A17K', 'OPPO A17K', 15, 18, 'OPPO A17K.webp', 2790000, 'Chuẩn nét từng khung hình - Trang bị màn hình LCD 6.56 inch với độ phân giải HD+\r\nHiệu năng cải tiến, bứt phá tốc độ - Chip Helio G35, RAM 3GB và bộ nhớ trong 64GB\r\nTrọn vẹn năng lượng suốt cả ngày - Viên pin lớn 5000 mAh, sạc 10W\r\nBảo mật nâng cao v', 2, 20, 'Chuẩn nét từng khung hình - Trang bị màn hình LCD 6.56 inch với độ phân giải HD+\r\nHiệu năng cải tiến, bứt phá tốc độ - Chip Helio G35, RAM 3GB và bộ nhớ trong 64GB\r\nTrọn vẹn năng lượng suốt cả ngày - Viên pin lớn 5000 mAh, sạc 10W\r\nBảo mật nâng cao v', NULL),
(96, 'OPPO Find N2 Flip 8Gb 256GB', 'OPPO Find N2 Flip 8Gb 256GB', 15, 18, 'OPPO Find N2 Flip 8Gb 256GB.webp', 9890000, 'Thiết kế bền bỉ cho phép gập đến 400.000 lần, giúp dễ dàng gấp gọn và mang theo\r\nMàn hình phụ kích thước 3.26 inch cho khả năng hiển thị trực quan và nhiều chi tiết\r\nHệ thống ống kính chất lượng cao với cảm biến Sony IMX890 có độ phân giải 50MP\r\nHiệu', 3, 10, 'Thiết kế bền bỉ cho phép gập đến 400.000 lần, giúp dễ dàng gấp gọn và mang theo\r\nMàn hình phụ kích thước 3.26 inch cho khả năng hiển thị trực quan và nhiều chi tiết\r\nHệ thống ống kính chất lượng cao với cảm biến Sony IMX890 có độ phân giải 50MP\r\nHiệu', NULL),
(97, 'OPPO Reno8 T 5G (8GB - 128GB)', '', 15, 18, 'OPPO Reno8 T 5G (8GB - 128GB).webp', 7890000, 'Thiết kế thời thượng - Tràn viền, mỏng nhẹ đặc biệt phù hợp với các bạn trẻ, yêu khám phá xu hướng mới\r\nGiải trí ấn tượng - Màn hình 1 tỉ màu, tần số quét 120Hz ấn tượng\r\nChụp ảnh chân dung chuyên nghiệp - Camera 108MP sắc nét đi kèm thuật toán AI\r\nP', 1, 10, 'Thiết kế thời thượng - Tràn viền, mỏng nhẹ đặc biệt phù hợp với các bạn trẻ, yêu khám phá xu hướng mới\r\nGiải trí ấn tượng - Màn hình 1 tỉ màu, tần số quét 120Hz ấn tượng\r\nChụp ảnh chân dung chuyên nghiệp - Camera 108MP sắc nét đi kèm thuật toán AI\r\nP', NULL);
INSERT INTO `tbl_sanpham` (`IdSanPham`, `MaSanPham`, `TenSanPham`, `IdNhaSanXuat`, `IdDanhMuc`, `HinhAnh`, `DonGia`, `MoTa`, `SoLuong`, `TiLeGiamGia`, `CauHinh`, `GhiChu`) VALUES
(98, 'realme 10 8GB 256GB', 'realme 10 8GB 256GB', 13, 18, 'realme 10 8GB 256GB.webp', 7190000, 'RAM mở rộng lên đến 16GB - Xử lí đa tác vụ mượt mà\r\nGiải trí cực đỉnh - Màn hình AMOLED 90Hz cuộn cuộn lướt và chuyển cảnh khi chơi game không giật lag\r\nXem YouTube liên tục đến 21h với viên pin 5000mAh\r\nThiết kế vi hạt ánh sáng lấp lánh kiêu sa phù ', 1, 10, 'RAM mở rộng lên đến 16GB - Xử lí đa tác vụ mượt mà\r\nGiải trí cực đỉnh - Màn hình AMOLED 90Hz cuộn cuộn lướt và chuyển cảnh khi chơi game không giật lag\r\nXem YouTube liên tục đến 21h với viên pin 5000mAh\r\nThiết kế vi hạt ánh sáng lấp lánh kiêu sa phù ', NULL),
(99, 'realme 10 Pro Plus', 'realme 10 Pro Plus', 13, 18, 'realme 10 Pro Plus.webp', 8900000, 'realme 10 Pro Plus phiên bản điện thoại realme cao cấp nhất thuộc dòng sản phẩm realme 10 Series sắp được ra mắt trong tháng 11 2022, sẽ được tích hợp các công nghệ đột phá mới như màn hình AMOLED 6.7 inch với các cạnh cong và tốc độ lấy mẫu lên đến ', 1, 20, 'realme 10 Pro Plus phiên bản điện thoại realme cao cấp nhất thuộc dòng sản phẩm realme 10 Series sắp được ra mắt trong tháng 11 2022, sẽ được tích hợp các công nghệ đột phá mới như màn hình AMOLED 6.7 inch với các cạnh cong và tốc độ lấy mẫu lên đến ', NULL),
(100, 'realme 11 8GB 128GB', 'realme 11 8GB 128GB', 13, 18, 'realme 11 8GB 128GB.webp', 5190000, 'Nâng cao trải nghiệm với màn hình Super AMOLED - Màu sắc rực rỡ và độ tương phản cao, hình ảnh sắc nét và chi tiết.\r\nTrang bị camera Prolight 108MP và nhiều tính năng quay chụp - Tạo ra những bức ảnh sắc nét và chân thực nhờ độ phân giải cao.\r\nSử dụn', 1, 20, 'Nâng cao trải nghiệm với màn hình Super AMOLED - Màu sắc rực rỡ và độ tương phản cao, hình ảnh sắc nét và chi tiết.\r\nTrang bị camera Prolight 108MP và nhiều tính năng quay chụp - Tạo ra những bức ảnh sắc nét và chân thực nhờ độ phân giải cao.\r\nSử dụn', NULL),
(101, 'realme 11 Pro (8GB - 256GB)', 'realme 11 Pro (8GB - 256GB)', 13, 18, 'realme 11 Pro (8GB - 256GB).webp', 7600000, 'Màn hình hiển thị cong đục lỗ ở chính giữa - cao cấp từ trong ra ngoài cùng tần số quét 120Hz.\r\nCông nghệ thu phóng trong cảm biến tiên tiến mang lại ảnh ảnh chi tiết cực kỳ rõ ràng.\r\nVi xử lý MediaTek Dimensity 7050 mang lại hiệu năng mạnh mẽ sẵn sà', 3, 10, 'Màn hình hiển thị cong đục lỗ ở chính giữa - cao cấp từ trong ra ngoài cùng tần số quét 120Hz.\r\nCông nghệ thu phóng trong cảm biến tiên tiến mang lại ảnh ảnh chi tiết cực kỳ rõ ràng.\r\nVi xử lý MediaTek Dimensity 7050 mang lại hiệu năng mạnh mẽ sẵn sà', NULL),
(102, 'realme C30s 3GB 64GB', 'realme C30s 3GB 64GB', 13, 18, 'realme C30s 3GB 64GB.webp', 2790000, 'Khung hình hiển thị chất lượng từng chi tiết - Màm hình 6.5\" IPS LCD với độ phân giải HD+, 16,7 triệu màu\r\nDuy trì ổn định cho nhiều tác vụ cơ bản hàng ngày - Chip Unisoc SC9863A1 cùng RAM 4GB\r\nThoải mái sử dụng với viên pin khủng - Viên pin 5000 mAh', 2, 20, 'Khung hình hiển thị chất lượng từng chi tiết - Màm hình 6.5\" IPS LCD với độ phân giải HD+, 16,7 triệu màu\r\nDuy trì ổn định cho nhiều tác vụ cơ bản hàng ngày - Chip Unisoc SC9863A1 cùng RAM 4GB\r\nThoải mái sử dụng với viên pin khủng - Viên pin 5000 mAh', NULL),
(103, 'Samsung Galaxy Z Fold5 12GB 256GB', 'Samsung Galaxy Z Fold5 12GB 256GB', 12, 18, 'Samsung Galaxy Z Fold5 12GB 256GB.webp', 30490000, 'Galaxy AI tiện ích - Khoanh vùng search đa năng, là trợ lý chỉnh ảnh, trợ lý note thông minh, phiên dịch trực tiếp\r\nThiết kế tinh tế với nếp gấp vô hình - Cải tiến nếp gấp thẩm mĩ hơn và gập không kẽ hở\r\nBền bỉ bất chấp mọi tình huống - Đạt chuẩn khá', 1, 10, 'Galaxy AI tiện ích - Khoanh vùng search đa năng, là trợ lý chỉnh ảnh, trợ lý note thông minh, phiên dịch trực tiếp\r\nThiết kế tinh tế với nếp gấp vô hình - Cải tiến nếp gấp thẩm mĩ hơn và gập không kẽ hở\r\nBền bỉ bất chấp mọi tình huống - Đạt chuẩn khá', NULL),
(104, 'Samsung Galaxy Z Fold5 12GB 512GB', 'Samsung Galaxy Z Fold5 12GB 512GB', 12, 18, 'Samsung Galaxy Z Fold5 12GB 512GB.webp', 31490000, 'Galaxy AI tiện ích - Khoanh vùng search đa năng, là trợ lý chỉnh ảnh, trợ lý note thông minh, phiên dịch trực tiếp\r\nThiết kế tinh tế với nếp gấp vô hình - Cải tiến nếp gấp thẩm mĩ hơn và gập không kẽ hở\r\nBền bỉ bất chấp mọi tình huống - Đạt chuẩn khá', 4, 20, 'Galaxy AI tiện ích - Khoanh vùng search đa năng, là trợ lý chỉnh ảnh, trợ lý note thông minh, phiên dịch trực tiếp\r\nThiết kế tinh tế với nếp gấp vô hình - Cải tiến nếp gấp thẩm mĩ hơn và gập không kẽ hở\r\nBền bỉ bất chấp mọi tình huống - Đạt chuẩn khá', NULL),
(105, 'Samsung Galaxy S24 Ultra 12GB 512GB', 'Samsung Galaxy S24 Ultra 12GB 512GB', 12, 18, 'Samsung Galaxy S24 Ultra 12GB 512GB.webp', 30490000, 'Mở khoá giới hạn tiềm năng với AI - Hỗ trợ phiên dịch cuộc gọi, khoanh vùng tìm kiếm, Trợ lí Note và chình sửa anh\r\nTuyệt tác thiết kế bền bỉ và hoàn hảo - Vỏ ngoài bằng titan mới cùng màu sắc lấy cảm hứng từ chất liệu đá tự nhiên\r\nTích hợp S-Pen cực', 2, 20, 'Mở khoá giới hạn tiềm năng với AI - Hỗ trợ phiên dịch cuộc gọi, khoanh vùng tìm kiếm, Trợ lí Note và chình sửa anh\r\nTuyệt tác thiết kế bền bỉ và hoàn hảo - Vỏ ngoài bằng titan mới cùng màu sắc lấy cảm hứng từ chất liệu đá tự nhiên\r\nTích hợp S-Pen cực', NULL),
(106, 'Samsung Galaxy S23 FE 5G 8GB 128GB', 'Samsung Galaxy S23 FE 5G 8GB 128GB', 12, 18, 'Samsung Galaxy S23 FE 5G 8GB 128GB.webp', 11990000, 'Galaxy AI tiện ích - Khoanh vùng search đa năng, là trợ lý chỉnh ảnh, chat thông minh, phiên dịch trực tiếp\r\nGiải trí với khung hình và âm thanh sống động - Màn hình Dynamic AMOLED 2X, 120Hz cùng công nghệ âm thanh nổi\r\nChụp ảnh chuyên nghiệp trong b', 2, 20, 'Galaxy AI tiện ích - Khoanh vùng search đa năng, là trợ lý chỉnh ảnh, chat thông minh, phiên dịch trực tiếp\r\nGiải trí với khung hình và âm thanh sống động - Màn hình Dynamic AMOLED 2X, 120Hz cùng công nghệ âm thanh nổi\r\nChụp ảnh chuyên nghiệp trong b', NULL),
(107, 'Samsung Galaxy ', 'Samsung Galaxy ', 12, 18, 'Samsung Galaxy M14 5G 4GB 128GB.webp', 3890000, 'Kiểu dáng hiện đại cùng nhiều lựa chọn về màu sắc giúp phù hợp với nhiều người\r\nKhông gian hiển thị rộng lớn với màn hình 6.6 inch cùng tấm nền LCD thế hệ mới\r\nChip Exynos 1330 độc quyền cùng RAM 4 GB và kết nối 5G giúp xử lý nhanh và ổn định các tác', 3, 20, 'Kiểu dáng hiện đại cùng nhiều lựa chọn về màu sắc giúp phù hợp với nhiều người\r\nKhông gian hiển thị rộng lớn với màn hình 6.6 inch cùng tấm nền LCD thế hệ mới\r\nChip Exynos 1330 độc quyền cùng RAM 4 GB và kết nối 5G giúp xử lý nhanh và ổn định các tác', NULL),
(109, 'Ai Phôn 11', 'Ai Phôn 11', 14, 18, 'iPhone 11 64GB.webp', 99999, 'Ai Phôn 11 form china', 1, 20, '123123', 'Ai Phôn 11 from Chinese');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `acc_khachhang`
--
ALTER TABLE `acc_khachhang`
  ADD PRIMARY KEY (`IdKhachHang`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_bill`
--
ALTER TABLE `tbl_bill`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tendanhmuc` (`tendanhmuc`);

--
-- Chỉ mục cho bảng `tbl_nhasanxuat`
--
ALTER TABLE `tbl_nhasanxuat`
  ADD PRIMARY KEY (`IdNhaSanXuat`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`IdSanPham`),
  ADD KEY `IdDanhMuc` (`IdDanhMuc`),
  ADD KEY `IdNhaSanXuat` (`IdNhaSanXuat`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `acc_khachhang`
--
ALTER TABLE `acc_khachhang`
  MODIFY `IdKhachHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `tbl_bill`
--
ALTER TABLE `tbl_bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `tbl_nhasanxuat`
--
ALTER TABLE `tbl_nhasanxuat`
  MODIFY `IdNhaSanXuat` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `IdSanPham` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD CONSTRAINT `tbl_sanpham_ibfk_1` FOREIGN KEY (`IdDanhMuc`) REFERENCES `tbl_danhmuc` (`id`),
  ADD CONSTRAINT `tbl_sanpham_ibfk_2` FOREIGN KEY (`IdNhaSanXuat`) REFERENCES `tbl_nhasanxuat` (`IdNhaSanXuat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
