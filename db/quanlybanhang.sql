-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2021 at 11:31 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlybanhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdondathang`
--

CREATE TABLE `chitietdondathang` (
  `MaChiTietDonDatHang` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `GiaBan` int(11) DEFAULT NULL,
  `MaDonDatHang` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `MaSanPham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietdondathang`
--

INSERT INTO `chitietdondathang` (`MaChiTietDonDatHang`, `SoLuong`, `GiaBan`, `MaDonDatHang`, `MaSanPham`) VALUES
('08101200100', 4, 260000, '081012001', 11),
('08101200101', 3, 160000, '081012001', 4),
('08101200102', 30, 220000, '081012001', 10),
('08101200103', 1, 380000, '081012001', 9),
('08101200200', 1, 380000, '081012002', 9),
('08101200300', 2, 220000, '081012003', 10),
('13121200100', 4, 160000, '131212001', 4),
('13121200200', 1, 180000, '131212002', 5),
('13121200201', 2, 260000, '131212002', 11);

-- --------------------------------------------------------

--
-- Table structure for table `dondathang`
--

CREATE TABLE `dondathang` (
  `MaDonDatHang` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `NgayLap` datetime DEFAULT NULL,
  `TongThanhTien` int(11) DEFAULT NULL,
  `MaTaiKhoan` int(11) NOT NULL,
  `MaTinhTrang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dondathang`
--

INSERT INTO `dondathang` (`MaDonDatHang`, `NgayLap`, `TongThanhTien`, `MaTaiKhoan`, `MaTinhTrang`) VALUES
('081012001', '2012-10-08 00:00:00', 380000, 1, 1),
('081012002', '2012-10-08 00:00:00', 380000, 1, 1),
('081012003', '2012-10-08 00:00:00', 440000, 1, 1),
('131212001', '2012-12-13 00:00:00', 640000, 1, 1),
('131212002', '2012-12-13 00:00:00', 700000, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hangsanxuat`
--

CREATE TABLE `hangsanxuat` (
  `MaHangSanXuat` int(11) NOT NULL,
  `TenHangSanXuat` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LogoURL` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hangsanxuat`
--

INSERT INTO `hangsanxuat` (`MaHangSanXuat`, `TenHangSanXuat`, `LogoURL`, `BiXoa`) VALUES
(1, 'Nokia', 'nokia.png', 0),
(2, 'OPPO', 'oppo.png', 0),
(3, 'Vivo', 'vivo.png', 0),
(4, 'XiaoMi', 'xiaomi.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLoaiSanPham` int(11) NOT NULL,
  `TenLoaiSanPham` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLoaiSanPham`, `TenLoaiSanPham`, `BiXoa`) VALUES
(1, 'Điện thoại cảm ứng', 0),
(2, 'Điện thoại phím', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loaitaikhoan`
--

CREATE TABLE `loaitaikhoan` (
  `MaLoaiTaiKhoan` int(11) NOT NULL,
  `TenLoaiTaiKhoan` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaitaikhoan`
--

INSERT INTO `loaitaikhoan` (`MaLoaiTaiKhoan`, `TenLoaiTaiKhoan`) VALUES
(1, 'User'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSanPham` int(11) NOT NULL,
  `TenSanPham` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhURL` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiaSanPham` int(11) DEFAULT NULL,
  `NgayNhap` datetime DEFAULT NULL,
  `SoLuongTon` int(11) DEFAULT NULL,
  `SoLuongBan` int(11) DEFAULT NULL,
  `SoLuocXem` int(11) DEFAULT NULL,
  `MoTa` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` tinyint(1) DEFAULT 0,
  `MaLoaiSanPham` int(11) NOT NULL,
  `MaHangSanXuat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSanPham`, `TenSanPham`, `HinhURL`, `GiaSanPham`, `NgayNhap`, `SoLuongTon`, `SoLuongBan`, `SoLuocXem`, `MoTa`, `BiXoa`, `MaLoaiSanPham`, `MaHangSanXuat`) VALUES
(4, 'Điện thoại Nokia 5.4', 'nokia-54-1.jpg', 160000, '2012-08-25 00:00:00', 14, 9, 25, 'Sau Nokia 5.3, HMD Global tiếp tục cho ra mắt chiếc điện thoại Nokia 5.4 với nhiều nâng cấp thiết kế, cấu hình cùng camera mạnh mẽ hứa hẹn sẽ làm hài lòng người sử dụng, ngay cả những người khó tính nhất.\r\nThiết kế nguyên khối bền bỉ chắc chắn\r\nMặc dù là một chiếc smartphone được sản xuất trong phân khúc giá tầm trung nhưng Nokia 5.4 không hề lỗi thời với lối thiết kế nguyên khối vô cùng cứng cáp, mặt lưng làm từ nhựa phủ bóng giả kính vô cùng sang trọng và bắt mắt.', 0, 1, 1),
(5, 'Điện thoại Nokia 3.4', 'nokia-34-1-1.jpg', 180000, '2012-05-01 00:00:00', 14, 6, 4, 'Nokia 3.4 sở hữu màn hình IPS LCD kích thước 6.39 inch độ phân giải HD+, màn hình có thiết kế theo kiểu đục lỗ đang là xu hướng, với một màn hình lớn thì bạn có thể tận dụng được tối đa khả năng hiển thị để phục vụ các nhu cầu như vui chơi, giải trí và làm việc.', 0, 1, 1),
(7, 'Điện thoại Nokia C20', 'nokia-c20-vang-1-1-org.jpg', 480000, '2012-09-12 00:00:00', 25, 2, 9, 'Nokia C20 được hoàn thiện từ chất liệu vỏ polycarbonate cứng cáp mang đến độ bền cao, bạn sẽ yên tâm hơn khi sử dụng hay mang đi trong mọi hoạt động hằng ngày.', 0, 1, 1),
(8, 'Điện thoại Nokia 2.4', 'nokia-24-xam-1-2-org.jpg', 300000, '2012-07-03 00:00:00', 30, 0, 8, 'Thiết kế mới, trẻ trung, năng động nhiều màu sắc\r\nNokia 2.4 mang ngôn ngữ thiết kế hoàn toàn khác với các thế hệ Nokia 2.2 hay Nokia 2.3 khi được trang bị mặt lưng 3D họa tiết phay xước độc đáo kết hợp cùng hiệu ứng chuyển đổi màu gradient đẹp mắt ấn tượng từ cái nhìn đầu tiên.', 0, 1, 1),
(9, 'Điện thoại Nokia 8000 4G', 'nokia-8000-4g-den-1-org.jpg', 380000, '2012-01-01 00:00:00', 24, 6, 14, 'Điểm nhấn phong cách\r\nChiếc điện thoại có khung và mặt lưng được làm từ nhựa với lớp vỏ sáng bóng như thủy tinh cao cấp và các màu sắc lấy cảm hứng từ đá quý, Nokia 8000 4G được thiết kế để tỏa sáng. Lớp hoàn thiện khung giữa mạ chrome sang trọng hoàn thiện vẻ ngoài.', 0, 2, 1),
(10, 'Điện thoại Nokia 6300 4G', 'nokia-6300-4g-1-1-org.jpg', 220000, '2012-08-15 00:00:00', 28, 7, 8, 'Giá trị cổ điển “hồi sinh”\r\nNokia 6300 4G vẫn mang dáng dấp của Nokia 6300 năm nào, chính là thiết kế cổ điển với những cải tiến mới hợp xu hướng người dùng. Tổng thể của chiếc máy nhỏ gọn cho việc cầm nằm chắc chắn và mang đến cảm giác thoải mái cho người dùng khi sử dụng.', 0, 2, 1),
(11, 'Điện thoại Nokia 210', 'nokia-210-den-1-org.jpg', 260000, '2012-09-01 00:00:00', 38, 3, 38, 'Màn hình:\r\n\r\nTFT LCD2.4\"65.536 màu\r\nSIM:\r\n\r\n2 SIM thườngHỗ trợ 2G\r\nDanh bạ:\r\n\r\n500 số\r\nThẻ nhớ:\r\n\r\nMicroSD, hỗ trợ tối đa 32 GB\r\nCamera sau:\r\n\r\n0.3 MP\r\nRadio FM:\r\n\r\nCó\r\nJack cắm tai nghe:\r\n\r\n3.5 mm\r\nPin:\r\n\r\n1020 mAh', 0, 2, 1),
(12, 'Điện thoại Nokia 150 (2020)', 'nokia-150-2020-den-1-org.jpg', 260000, '2012-10-02 00:00:00', 20, 0, 0, 'Cấu hình Điện thoại Nokia 150 (2020)\r\n\r\nMàn hình:\r\n\r\nTFT LCD2.4\"65.536 màu\r\nSIM:\r\n\r\n2 SIM thườngHỗ trợ 2G\r\nDanh bạ:\r\n\r\n800 số\r\nThẻ nhớ:\r\n\r\nMicroSD, hỗ trợ tối đa 32 GB\r\nCamera sau:\r\n\r\nVGA (480 x 640 pixels)\r\nRadio FM:\r\n\r\nCó\r\nJack cắm tai nghe:\r\n\r\n3.5 mm\r\nPin:\r\n\r\n1020 mAh', 0, 2, 1),
(13, 'Điện thoại Nokia 105 Single SIM', 'nokia-105-single-sim-2019-den-1-org.jpg', 920000, '2012-10-04 00:00:00', 10, 2, 14, 'Cấu hình Điện thoại Nokia 105 Single SIM\r\n\r\nMàn hình:\r\n\r\nTFT LCD1.77\"65.536 màu\r\nSIM:\r\n\r\n1 SIM thườngHỗ trợ 2G\r\nDanh bạ:\r\n\r\n2000 số\r\nRadio FM:\r\n\r\nCó\r\nJack cắm tai nghe:\r\n\r\n3.5 mm\r\nPin:\r\n\r\n800 mAh', 0, 2, 1),
(14, 'Điện thoại Nokia 5310 (2020)', 'nokia-5310-2020-trang-1-org.jpg', 240000, '2012-09-25 00:00:00', 5, 5, 1, 'Cấu hình Điện thoại Nokia 5310 (2020)\r\n\r\nMàn hình:\r\n\r\nTFT LCD2.4\"\r\nSIM:\r\n\r\n2 SIM thườngHỗ trợ 2G\r\nDanh bạ:\r\n\r\n2000 số\r\nThẻ nhớ:\r\n\r\nMicroSD, hỗ trợ tối đa 32 GB\r\nCamera sau:\r\n\r\nVGA (480 x 640 pixels)\r\nRadio FM:\r\n\r\nCó\r\nJack cắm tai nghe:\r\n\r\n3.5 mm\r\nPin:\r\n\r\n1200 mAh', 0, 2, 1),
(15, 'Điện thoại OPPO A74', 'oppo-a74-xanh-duong-1-org.jpg', 270000, '2012-08-27 00:00:00', 19, 3, 3, 'Cấu hình Điện thoại OPPO A74\r\n\r\nMàn hình:\r\n\r\nAMOLED6.43\"Full HD+\r\nHệ điều hành:\r\n\r\nAndroid 11\r\nCamera sau:\r\n\r\nChính 48 MP & Phụ 2 MP, 2 MP\r\nCamera trước:\r\n\r\n16 MP\r\nChip:\r\n\r\nSnapdragon 662\r\nRAM: 8 GB\r\nBộ nhớ trong:\r\n\r\n128 GB\r\nSIM:\r\n\r\n2 Nano SIMHỗ trợ 4G\r\nPin, Sạc:\r\n\r\n5000 mAh33 W', 0, 1, 2),
(16, 'Điện thoại OPPO Reno5', 'oppo-reno5-den-1-org.jpg', 190000, '2012-07-13 00:00:00', 50, 3, 5, 'Cấu hình Điện thoại OPPO Reno5\r\n\r\nMàn hình:\r\n\r\nAMOLED6.43\"Full HD+\r\nHệ điều hành:\r\n\r\nAndroid 11\r\nCamera sau:\r\n\r\nChính 64 MP & Phụ 8 MP, 2 MP, 2 MP\r\nCamera trước:\r\n\r\n44 MP\r\nChip:\r\n\r\nSnapdragon 720G\r\nRAM:\r\n\r\n8 GB\r\nBộ nhớ trong:\r\n\r\n128 GB\r\nSIM:\r\n\r\n2 Nano SIMHỗ trợ 4G\r\nPin, Sạc:\r\n\r\n4310 mAh50 W', 0, 1, 2),
(17, 'Điện thoại OPPO Find X3 Pro 5G', 'oppo-find-x3-pro-den-1-org.jpg', 180000, '2012-09-15 00:00:00', 60, 3, 2, 'Cấu hình Điện thoại OPPO Find X3 Pro 5G\r\n\r\nMàn hình:\r\n\r\nAMOLED6.7\"Quad HD+ (2K+)\r\nHệ điều hành:\r\n\r\nAndroid 11\r\nCamera sau:\r\n\r\nChính 50 MP & Phụ 50 MP, 13 MP, 3 MP\r\nCamera trước:\r\n\r\n32 MP\r\nChip:\r\n\r\nSnapdragon 888\r\nRAM:\r\n\r\n12 GB\r\nBộ nhớ trong:\r\n\r\n256 GB\r\nSIM:\r\n\r\n2 Nano SIMHỗ trợ 5G\r\nPin, Sạc:\r\n\r\n4500 mAh65 W', 0, 1, 2),
(18, 'Điện thoại OPPO Reno5 5G', 'oppo-reno5-5g-den--org.jpg', 200000, '2012-09-14 00:00:00', 30, 30, 22, 'Cấu hình Điện thoại OPPO Reno5 5G\r\n\r\nMàn hình:\r\n\r\nAMOLED6.43\"Full HD+\r\nHệ điều hành:\r\n\r\nAndroid 11\r\nCamera sau:\r\n\r\nChính 64 MP & Phụ 8 MP, 2 MP, 2 MP\r\nCamera trước:\r\n\r\n32 MP\r\nChip:\r\n\r\nSnapdragon 765G\r\nRAM:\r\n\r\n8 GB\r\nBộ nhớ trong:\r\n\r\n128 GB\r\nSIM:\r\n\r\n2 Nano SIMHỗ trợ 5G\r\nPin, Sạc:\r\n\r\n4300 mAh65 W', 0, 1, 2),
(19, 'Điện thoại OPPO Reno4 Pro', 'oppo-reno4-pro-trang-1-org.jpg', 110000, '2012-06-12 00:00:00', 19, 13, 24, 'Cấu hình Điện thoại OPPO Reno4 Pro\r\n\r\nMàn hình:\r\n\r\nAMOLED6.5\"Full HD+\r\nHệ điều hành:\r\n\r\nAndroid 10\r\nCamera sau:\r\n\r\nChính 48 MP & Phụ 8 MP, 2 MP, 2 MP\r\nCamera trước:\r\n\r\n32 MP\r\nChip:\r\n\r\nSnapdragon 720G\r\nRAM:\r\n\r\n8 GB\r\nBộ nhớ trong:\r\n\r\n256 GB\r\nSIM:\r\n\r\n2 Nano SIMHỗ trợ 4G\r\nPin, Sạc:\r\n\r\n4000 mAh65 W', 0, 1, 2),
(20, 'Điện thoại OPPO A94', 'oppo-a94-den-11-org.jpg', 160000, '2012-07-12 00:00:00', 20, 12, 13, 'Cấu hình Điện thoại OPPO A94\r\n\r\nMàn hình:\r\n\r\nAMOLED6.43\"Full HD+\r\nHệ điều hành:\r\n\r\nAndroid 11\r\nCamera sau:\r\n\r\nChính 48 MP & Phụ 8 MP, 2 MP, 2 MP\r\nCamera trước:\r\n\r\n32 MP\r\nChip:\r\n\r\nMediaTek Helio P95\r\nRAM:\r\n\r\n8 GB\r\nBộ nhớ trong:\r\n\r\n128 GB\r\nSIM:\r\n\r\n2 Nano SIMHỗ trợ 4G\r\nPin, Sạc:\r\n\r\n4310 mAh30 W', 0, 1, 2),
(21, 'Điện thoại OPPO A74 5G', 'oppo-a74-5g-bac-4-org.jpg', 140000, '2012-08-17 00:00:00', 35, 12, 12, 'Cấu hình Điện thoại OPPO A74 5G\r\n\r\nMàn hình:\r\n\r\nIPS LCD6.5\"Full HD+\r\nHệ điều hành:\r\n\r\nAndroid 11\r\nCamera sau:\r\n\r\nChính 48 MP & Phụ 8 MP, 2 MP, 2 MP\r\nCamera trước:\r\n\r\n16 MP\r\nChip:\r\n\r\nSnapdragon 480 8 nhân 5G\r\nRAM:\r\n\r\n6 GB\r\nBộ nhớ trong:\r\n\r\n128 GB\r\nSIM:\r\n\r\n2 Nano SIMHỗ trợ 5G\r\nPin, Sạc:\r\n\r\n5000 mAh18 W', 0, 1, 2),
(22, 'Điện thoại OPPO Reno4', 'oppo-reno4-xanh-duong-1-org.jpg', 500000, '2012-10-05 00:00:00', 24, 28, 30, 'Cấu hình Điện thoại OPPO Reno4\r\n\r\nMàn hình:\r\n\r\nAMOLED6.4\"Full HD+\r\nHệ điều hành:\r\n\r\nAndroid 10\r\nCamera sau:\r\n\r\nChính 48 MP & Phụ 8 MP, 2 MP, 2 MP\r\nCamera trước:\r\n\r\nChính 32 MP & Phụ cảm biến thông minh A.I\r\nChip:\r\n\r\nSnapdragon 720G\r\nRAM:\r\n\r\n8 GB\r\nBộ nhớ trong:\r\n\r\n128 GB\r\nSIM:\r\n\r\n2 Nano SIMHỗ trợ 4G\r\nPin, Sạc:\r\n\r\n4015 mAh30 W', 0, 1, 2),
(23, 'Điện thoại OPPO A93', 'oppo-a93-den-4-org.jpg', 950000, '2012-10-07 00:00:00', 30, 2, 24, 'Cấu hình Điện thoại OPPO A93\r\n\r\nMàn hình:\r\n\r\nAMOLED6.43\"Full HD+\r\nHệ điều hành:\r\n\r\nAndroid 10\r\nCamera sau:\r\n\r\nChính 48 MP & Phụ 8 MP, 2 MP, 2 MP\r\nCamera trước:\r\n\r\nChính 16 MP & Phụ 2 MP\r\nChip:\r\n\r\nMediaTek Helio P95\r\nRAM:\r\n\r\n8 GB\r\nBộ nhớ trong:\r\n\r\n128 GB\r\nSIM:\r\n\r\n2 Nano SIMHỗ trợ 4G\r\nPin, Sạc:\r\n\r\n4000 mAh18 W', 0, 1, 2),
(24, 'Điện thoại OPPO A54', 'oppo-a54-den-5-org.jpg', 150000, '2012-10-08 00:00:00', 39, 2, 6, 'Cấu hình Điện thoại OPPO A54\r\n\r\nMàn hình:\r\n\r\nIPS LCD6.5\"HD+\r\nHệ điều hành:\r\n\r\nAndroid 10\r\nCamera sau:\r\n\r\nChính 13 MP & Phụ 2 MP, 2 MP\r\nCamera trước:\r\n\r\n16 MP\r\nChip:\r\n\r\nMediaTek Helio P35\r\nRAM:\r\n\r\n4 GB\r\nBộ nhớ trong:\r\n\r\n128 GB\r\nSIM:\r\n\r\n2 Nano SIMHỗ trợ 4G\r\nPin, Sạc:\r\n\r\n5000 mAh18 W', 0, 1, 2),
(25, 'Điện thoại OPPO A15s', 'oppo-a15s-xanh-1-org.jpg', 240000, '2012-09-07 00:00:00', 38, 2, 4, 'Cấu hình Điện thoại OPPO A15s\r\n\r\nMàn hình:\r\n\r\nLCD6.52\"HD+\r\nHệ điều hành:\r\n\r\nAndroid 10\r\nCamera sau:\r\n\r\nChính 13 MP & Phụ 2 MP, 2 MP\r\nCamera trước:\r\n\r\n8 MP\r\nChip:\r\n\r\nMediaTek Helio P35\r\nRAM:\r\n\r\n4 GB\r\nBộ nhớ trong:\r\n\r\n64 GB\r\nSIM:\r\n\r\n2 Nano SIMHỗ trợ 4G\r\nPin, Sạc:\r\n\r\n4230 mAh10 W', 0, 1, 2),
(26, 'Điện thoại Vivo Y53s', 'vivo-y53s-xanh-tim-1-org.jpg', 620000, '2012-10-07 00:00:00', 20, 12, 30, 'Cấu hình Điện thoại Vivo Y53s\r\n\r\nMàn hình:\r\n\r\nIPS LCD6.58\"Full HD+\r\nHệ điều hành:\r\n\r\nAndroid 11\r\nCamera sau:\r\n\r\nChính 64 MP & Phụ 2 MP, 2 MP\r\nCamera trước:\r\n\r\n16 MP\r\nChip:\r\n\r\nMediaTek Helio G80\r\nRAM:\r\n\r\n8 GB\r\nBộ nhớ trong:\r\n\r\n128 GB\r\nSIM:\r\n\r\n2 Nano SIMHỗ trợ 4G\r\nPin, Sạc:\r\n\r\n5000 mAh33 W', 0, 1, 3),
(27, 'Điện thoại Vivo V21 5G', 'vivo-v21-5g-tim-hong-1-3-org.jpg', 223000, '2012-10-02 00:00:00', 20, 12, 3, 'Cấu hình Điện thoại Vivo V21 5G\r\n\r\nMàn hình:\r\n\r\nAMOLED6.44\"Full HD+\r\nHệ điều hành:\r\n\r\nAndroid 11\r\nCamera sau:\r\n\r\nChính 64 MP & Phụ 8 MP, 2 MP\r\nCamera trước:\r\n\r\n44 MP\r\nChip:\r\n\r\nMediaTek Dimensity 800U 5G\r\nRAM:\r\n\r\n8 GB\r\nBộ nhớ trong:\r\n\r\n128 GB\r\nSIM:\r\n\r\n2 Nano SIMHỗ trợ 5G\r\nPin, Sạc:\r\n\r\n4000 mAh33 W', 0, 1, 3),
(28, 'Điện thoại Vivo V20 (2021)', 'vivo-v20-2021-xanh-hong-1-org.jpg', 300000, '2012-10-01 00:00:00', 10, 1, 2, 'Cấu hình Điện thoại Vivo V20 (2021)\r\n\r\nMàn hình:\r\n\r\nAMOLED6.44\"Full HD+\r\nHệ điều hành:\r\n\r\nAndroid 11\r\nCamera sau:\r\n\r\nChính 64 MP & Phụ 8 MP, 2 MP\r\nCamera trước:\r\n\r\n44 MP\r\nChip:\r\n\r\nSnapdragon 730\r\nRAM:\r\n\r\n8 GB\r\nBộ nhớ trong:\r\n\r\n128 GB\r\nSIM:\r\n\r\n2 Nano SIMHỗ trợ 4G\r\nPin, Sạc:\r\n\r\n4000 mAh33 W', 0, 1, 3),
(29, 'Điện thoại Vivo Y72 5G', 'vivo-y72-5g-den-1-org.jpg', 320000, '2012-09-30 00:00:00', 10, 3, 2, 'Cấu hình Điện thoại Vivo Y72 5G\r\n\r\nMàn hình:\r\n\r\nIPS LCD6.58\"Full HD+\r\nHệ điều hành:\r\n\r\nAndroid 11\r\nCamera sau:\r\n\r\nChính 64 MP & Phụ 8 MP, 2 MP\r\nCamera trước:\r\n\r\n16 MP\r\nChip:\r\n\r\nMediaTek Dimensity 700\r\nRAM:\r\n\r\n8 GB\r\nBộ nhớ trong:\r\n\r\n128 GB\r\nSIM:\r\n\r\n2 Nano SIM (SIM 2 chung khe thẻ nhớ)Hỗ trợ 5G\r\nPin, Sạc:\r\n\r\n5000 mAh18 W', 0, 1, 3),
(30, 'Điện thoại Vivo V20 SE', 'vivo-v20-se-xanh-duong-nhat-1-org.jpg', 625000, '2012-10-01 00:00:00', 4, 2, 1, 'Cấu hình Điện thoại Vivo V20 SE\r\n\r\nMàn hình:\r\n\r\nAMOLED6.44\"Full HD+\r\nHệ điều hành:\r\n\r\nAndroid 10\r\nCamera sau:\r\n\r\nChính 48 MP & Phụ 8 MP, 2 MP\r\nCamera trước:\r\n\r\n32 MP\r\nChip:\r\n\r\nSnapdragon 665\r\nRAM:\r\n\r\n8 GB\r\nBộ nhớ trong:\r\n\r\n128 GB\r\nSIM:\r\n\r\n2 Nano SIMHỗ trợ 4G\r\nPin, Sạc:\r\n\r\n4100 mAh33 W', 0, 1, 3),
(31, 'Điện thoại Vivo Y51 (2020) ', 'vivo-y51-2020-tim-bac-4-org.jpg', 560000, '2012-10-05 00:00:00', 2, 6, 5, 'Cấu hình Điện thoại Vivo Y51 (2020)\r\n\r\nMàn hình:\r\n\r\nIPS LCD6.58\"Full HD+\r\nHệ điều hành:\r\n\r\nAndroid 11\r\nCamera sau:\r\n\r\nChính 48 MP & Phụ 8 MP, 2 MP\r\nCamera trước:\r\n\r\n16 MP\r\nChip:\r\n\r\nSnapdragon 662\r\nRAM:\r\n\r\n8 GB\r\nBộ nhớ trong:\r\n\r\n128 GB\r\nSIM:\r\n\r\n2 Nano SIMHỗ trợ 4G\r\nPin, Sạc:\r\n\r\n5000 mAh18 W', 0, 1, 3),
(32, 'Điện thoại Xiaomi Redmi Note 10 8GB ', 'xiaomi-redmi-note-10-5g-bac-1-org.jpg', 410000, '2012-10-06 00:00:00', 3, 0, 0, 'Cấu hình Điện thoại Xiaomi Redmi Note 10 5G 8GB\r\n\r\nMàn hình:\r\n\r\nIPS LCD6.5\"Full HD+\r\nHệ điều hành:\r\n\r\nAndroid 11\r\nCamera sau:\r\n\r\nChính 48 MP & Phụ 2 MP, 2 MP\r\nCamera trước:\r\n\r\n8 MP\r\nChip:\r\n\r\nMediaTek Dimensity 700\r\nRAM:\r\n\r\n8 GB\r\nBộ nhớ trong:\r\n\r\n128 GB\r\nSIM:\r\n\r\n2 Nano SIMHỗ trợ 5G\r\nPin, Sạc:\r\n\r\n5000 mAh18 W', 0, 1, 4),
(33, 'Điện thoại Xiaomi Mi 11 5G', 'xiaomi-mi-11-xanhduong-1-org.jpg', 600000, '2012-10-06 00:00:00', 4, 0, 15, 'Cấu hình Điện thoại Xiaomi Mi 11 5G\r\n\r\nMàn hình:\r\n\r\nAMOLED6.81\"Quad HD+ (2K+)\r\nHệ điều hành:\r\n\r\nAndroid 11\r\nCamera sau:\r\n\r\nChính 108 MP & Phụ 13 MP, 5 MP\r\nCamera trước:\r\n\r\n20 MP\r\nChip:\r\n\r\nSnapdragon 888\r\nRAM:\r\n\r\n8 GB\r\nBộ nhớ trong:\r\n\r\n256 GB\r\nSIM:\r\n\r\n2 Nano SIMHỗ trợ 5G\r\nPin, Sạc:\r\n\r\n4600 mAh55 W', 0, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `MaTaiKhoan` int(11) NOT NULL,
  `TenDangNhap` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MatKhau` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TenHienThi` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DiaChi` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DienThoai` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` tinyint(1) DEFAULT 0,
  `MaLoaiTaiKhoan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`MaTaiKhoan`, `TenDangNhap`, `MatKhau`, `TenHienThi`, `DiaChi`, `DienThoai`, `Email`, `BiXoa`, `MaLoaiTaiKhoan`) VALUES
(1, 'ndhuy', 'ndhuy', 'Đức Huy', '227 - Nguyễn Văn Cừ - Q.5', '01234567890', 'ndhuy@gmail.com', 1, 1),
(5, 'admin', 'admin', 'Admin website', 'Baby Shop', '0909123456', 'admin@babyshop.vn', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tinhtrang`
--

CREATE TABLE `tinhtrang` (
  `MaTinhTrang` int(11) NOT NULL,
  `TenTinhTrang` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tinhtrang`
--

INSERT INTO `tinhtrang` (`MaTinhTrang`, `TenTinhTrang`) VALUES
(1, 'Đặt hàng'),
(2, 'Đang giao hàng'),
(3, 'Thanh toán'),
(4, 'Hủy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  ADD PRIMARY KEY (`MaChiTietDonDatHang`),
  ADD KEY `fk_ChiTietDonDatHang_DonDatHang1_idx` (`MaDonDatHang`),
  ADD KEY `fk_ChiTietDonDatHang_SanPham1_idx` (`MaSanPham`);

--
-- Indexes for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`MaDonDatHang`),
  ADD KEY `fk_DonDatHang_TaiKhoan1_idx` (`MaTaiKhoan`),
  ADD KEY `fk_DonDatHang_TinhTrang1_idx` (`MaTinhTrang`);

--
-- Indexes for table `hangsanxuat`
--
ALTER TABLE `hangsanxuat`
  ADD PRIMARY KEY (`MaHangSanXuat`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLoaiSanPham`);

--
-- Indexes for table `loaitaikhoan`
--
ALTER TABLE `loaitaikhoan`
  ADD PRIMARY KEY (`MaLoaiTaiKhoan`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSanPham`),
  ADD KEY `fk_SanPham_LoaiSanPham1_idx` (`MaLoaiSanPham`),
  ADD KEY `fk_SanPham_HangSanXuat1_idx` (`MaHangSanXuat`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`MaTaiKhoan`),
  ADD KEY `fk_TaiKhoan_LoaiTaiKhoan_idx` (`MaLoaiTaiKhoan`);

--
-- Indexes for table `tinhtrang`
--
ALTER TABLE `tinhtrang`
  ADD PRIMARY KEY (`MaTinhTrang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hangsanxuat`
--
ALTER TABLE `hangsanxuat`
  MODIFY `MaHangSanXuat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLoaiSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `loaitaikhoan`
--
ALTER TABLE `loaitaikhoan`
  MODIFY `MaLoaiTaiKhoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `MaTaiKhoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tinhtrang`
--
ALTER TABLE `tinhtrang`
  MODIFY `MaTinhTrang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  ADD CONSTRAINT `fk_ChiTietDonDatHang_DonDatHang1` FOREIGN KEY (`MaDonDatHang`) REFERENCES `dondathang` (`MaDonDatHang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ChiTietDonDatHang_SanPham1` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD CONSTRAINT `fk_DonDatHang_TaiKhoan1` FOREIGN KEY (`MaTaiKhoan`) REFERENCES `taikhoan` (`MaTaiKhoan`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_DonDatHang_TinhTrang1` FOREIGN KEY (`MaTinhTrang`) REFERENCES `tinhtrang` (`MaTinhTrang`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_SanPham_HangSanXuat1` FOREIGN KEY (`MaHangSanXuat`) REFERENCES `hangsanxuat` (`MaHangSanXuat`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_SanPham_LoaiSanPham1` FOREIGN KEY (`MaLoaiSanPham`) REFERENCES `loaisanpham` (`MaLoaiSanPham`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `fk_TaiKhoan_LoaiTaiKhoan` FOREIGN KEY (`MaLoaiTaiKhoan`) REFERENCES `loaitaikhoan` (`MaLoaiTaiKhoan`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
