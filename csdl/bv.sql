-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2016 at 12:03 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bv`
--

-- --------------------------------------------------------

--
-- Table structure for table `bao_hiem`
--

CREATE TABLE `bao_hiem` (
  `MSBH` char(10) COLLATE utf16_bin NOT NULL,
  `MSNV` char(5) COLLATE utf16_bin NOT NULL,
  `MA_LOAI_BH` char(2) COLLATE utf16_bin NOT NULL,
  `NGAY_LAP` datetime NOT NULL,
  `NGAY_HET_HAN` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `bao_hiem`
--

INSERT INTO `bao_hiem` (`MSBH`, `MSNV`, `MA_LOAI_BH`, `NGAY_LAP`, `NGAY_HET_HAN`) VALUES
('BH00000001', 'NV001', '01', '2015-01-12 00:00:00', '2016-01-12'),
('BH00000002', 'NV002', '01', '2015-01-12 00:00:00', '2016-01-12'),
('BH00000003', 'NV003', '01', '2015-01-12 00:00:00', '2016-01-12'),
('BH00000004', 'NV004', '01', '2015-01-12 00:00:00', '2016-01-12'),
('BH00000005', 'NV005', '01', '2015-01-12 00:00:00', '2016-01-12'),
('BH00000006', 'NV006', '01', '2015-01-12 00:00:00', '2016-01-12'),
('BH00000007', 'NV007', '01', '2015-01-12 00:00:00', '2016-01-12'),
('BH00000008', 'NV008', '01', '2015-01-12 00:00:00', '2016-01-12'),
('BH00000009', 'NV009', '01', '2015-01-12 00:00:00', '2016-01-12'),
('BH00000010', 'NV010', '01', '2015-01-12 00:00:00', '2016-01-12'),
('BH00000011', 'NV001', '02', '2015-01-12 00:00:00', '2016-01-12'),
('BH00000012', 'NV002', '02', '2015-01-12 00:00:00', '2016-01-12'),
('BH00000013', 'NV003', '02', '2015-01-12 00:00:00', '2016-01-12'),
('BH00000014', 'NV004', '02', '2015-01-12 00:00:00', '2016-01-12'),
('BH00000015', 'NV005', '02', '2015-01-12 00:00:00', '2016-01-12'),
('BH00000016', 'NV006', '02', '2015-01-12 00:00:00', '2016-01-12'),
('BH00000017', 'NV007', '02', '2015-01-12 00:00:00', '2016-01-12'),
('BH00000018', 'NV008', '02', '2015-01-12 00:00:00', '2016-01-12'),
('BH00000019', 'NV009', '02', '2015-01-12 00:00:00', '2016-01-12'),
('BH00000020', 'NV010', '02', '2015-01-12 00:00:00', '2016-01-12');

-- --------------------------------------------------------

--
-- Table structure for table `benh`
--

CREATE TABLE `benh` (
  `MS_BENH` char(5) COLLATE utf16_bin NOT NULL,
  `TEN_BENH` varchar(256) COLLATE utf16_bin NOT NULL,
  `TEN_ANH` varchar(256) COLLATE utf16_bin NOT NULL,
  `MO_TA_BENH` text COLLATE utf16_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `benh`
--

INSERT INTO `benh` (`MS_BENH`, `TEN_BENH`, `TEN_ANH`, `MO_TA_BENH`) VALUES
('B0001', 'Bệnh 1', 'a', ''),
('B0002', 'Bệnh 2', 'b', ''),
('B0003', 'Bệnh 3', 'c', ''),
('B0004', 'Bệnh 4', 'd', ''),
('B0005', 'Bệnh 5', 'e', ''),
('B0006', 'Bệnh 6', 'f', ''),
('B0007', 'Bệnh 7', 'g', ''),
('B0008', 'Bệnh 8', 'h', ''),
('B0009', 'Bệnh 9', 'i', ''),
('B0010', 'Bệnh 10', 'k', ''),
('B0011', 'Bệnh 11', 'm', ''),
('B0012', 'Bệnh 12', 'n', ''),
('B0013', 'Bệnh 13', 'o', ''),
('B0014', 'Bệnh 14', 'p', ''),
('B0015', 'Bệnh 15', 'q', ''),
('B0016', 'Bệnh 16', 'r', ''),
('B0017', 'Bệnh 17', 't', ''),
('B0018', 'Bệnh 18', 'h', ''),
('B0019', 'Bệnh 19', 'u', ''),
('B0020', 'Bệnh 20', 'w', '');

-- --------------------------------------------------------

--
-- Table structure for table `benh_nhan`
--

CREATE TABLE `benh_nhan` (
  `MSBN` char(10) COLLATE utf16_bin NOT NULL,
  `TEN_BN` varchar(256) COLLATE utf16_bin NOT NULL,
  `CMND` char(12) COLLATE utf16_bin DEFAULT NULL,
  `NGAY_SINH` date DEFAULT NULL,
  `DC` varchar(256) COLLATE utf16_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `benh_nhan`
--

INSERT INTO `benh_nhan` (`MSBN`, `TEN_BN`, `CMND`, `NGAY_SINH`, `DC`) VALUES
('BN001', 'Nguyễn Lan Chi', '123456780', '1992-01-01', 'Cần Thơ'),
('BN002', 'Trần Văn Khoa', '123456781', '1992-01-02', 'Cần Thơ'),
('BN003', 'Nguyễn Ngọc Nữ', '123456782', '1992-01-03', 'Cần Thơ'),
('BN004', 'Ngô Thị Thanh', '123456783', '1992-01-04', 'Cần Thơ'),
('BN005', 'Nguyễn Nam', '123456784', '1992-01-05', 'Cần Thơ'),
('BN006', 'Phạm Kim Chi', '123456785', '1992-01-06', 'Cần Thơ'),
('BN007', 'Ngô Thu Thảo', '123456786', '1992-01-07', 'Cần Thơ'),
('BN008', 'Phan Thị Kim Ngân', '123456787', '1992-01-08', 'Cần Thơ'),
('BN009', 'Nguyễn Mai Phương Thảo', '123456788', '1992-01-09', 'Cần Thơ'),
('BN010', 'Hoàng Nam', '123456789', '1992-01-10', 'Cần Thơ'),
('BN011', 'Trần nam Thư', '123456790', '1992-01-11', 'Cần Thơ'),
('BN012', 'Nguyễn Việt Tùng', '123456791', '1992-01-12', 'Cần Thơ'),
('BN013', 'Nguyễn Thị Thu Thảo', '123456792', '1992-01-13', 'Cần Thơ'),
('BN014', 'Trần Minh', '123456793', '1992-01-14', 'Cần Thơ'),
('BN015', 'Nguyễn A', '123456794', '1992-01-15', 'Cần Thơ'),
('BN016', 'Trần B', '123456795', '1992-01-16', 'Cần Thơ'),
('BN017', 'Trương Thị Phượng', '123456796', '1992-01-17', 'Cần Thơ'),
('BN018', 'Huỳnh Hoa', '123456797', '1992-01-18', 'Cần Thơ'),
('BN019', 'Ngô Tuệ An', '123456798', '1992-01-19', 'Cần Thơ'),
('BN020', 'Phạm Bình', '123456799', '1992-01-20', 'Cần Thơ');

-- --------------------------------------------------------

--
-- Table structure for table `bhyt`
--

CREATE TABLE `bhyt` (
  `MS_BH_BN` char(15) COLLATE utf16_bin NOT NULL,
  `MSBN` char(10) COLLATE utf16_bin NOT NULL,
  `THOI_HAN_TU` date NOT NULL,
  `NGAY_HET_HAN` date NOT NULL,
  `NOI_DK_KHAM` varchar(200) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `bo_phan`
--

CREATE TABLE `bo_phan` (
  `MA_BP` char(5) COLLATE utf16_bin NOT NULL,
  `MADV` char(5) COLLATE utf16_bin NOT NULL,
  `TEN_BP` varchar(256) COLLATE utf16_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `bo_phan`
--

INSERT INTO `bo_phan` (`MA_BP`, `MADV`, `TEN_BP`) VALUES
('BP01', 'DV01', 'Khoa khám bệnh'),
('BP010', 'DV01', 'Khoa sơ sinh'),
('BP011', 'DV02', 'Khoa xét nghiệm -  di truyền học'),
('BP012', 'DV02', 'Khoa kiểm soát nhiễm khuẩn'),
('BP013', 'DV02', 'Khoa chuẩn đoán hình ảnh'),
('BP014', 'DV02', 'Khoa dinh dưỡng - tiết chế'),
('BP015', 'DV02', 'Khoa dược'),
('BP016', 'DV03', 'Phòng kế hoạch tổng hợp'),
('BP017', 'DV03', 'Phòng tài chính kế toán'),
('BP018', 'DV03', 'Phòng điều dưỡng'),
('BP019', 'DV03', 'Phòng tổ chức cán bộ'),
('BP02', 'DV01', 'Khoa sanh'),
('BP020', 'DV03', 'Phòng hành chính quản trị'),
('BP021', 'DV04', 'Trung tâm sàng lọc - chuẩn đoán trước sinh và sơ sinh'),
('BP03', 'DV01', 'Khoa hậu sản'),
('BP04', 'DV01', 'Hậu phẫu'),
('BP05', 'DV01', 'Khoa sản bệnh'),
('BP06', 'DV01', 'Khoa cấp cứu'),
('BP07', 'DV01', 'Khoa phụ'),
('BP08', 'DV01', 'Khoa hiếm muộn'),
('BP09', 'DV01', 'Khoa nhi');

-- --------------------------------------------------------

--
-- Table structure for table `chuc_vu`
--

CREATE TABLE `chuc_vu` (
  `MACV` char(5) COLLATE utf16_bin NOT NULL,
  `TEN_CV` varchar(100) COLLATE utf16_bin NOT NULL,
  `HS_PHU_CAP` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `chuc_vu`
--

INSERT INTO `chuc_vu` (`MACV`, `TEN_CV`, `HS_PHU_CAP`) VALUES
('CV001', 'Giám đốc', 3),
('CV002', 'P. Giám đốc', 2.5),
('CV003', 'Trưởng Khoa ', 1.75),
('CV004', 'P. Khoa', 1.5),
('CV005', 'Nhân viên', 0);

-- --------------------------------------------------------

--
-- Table structure for table `co_trinh_do`
--

CREATE TABLE `co_trinh_do` (
  `TEN_TRINH_DO` varchar(50) COLLATE utf16_bin NOT NULL,
  `MSNV` char(5) COLLATE utf16_bin NOT NULL,
  `THOI_DIEM` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `co_trinh_do`
--

INSERT INTO `co_trinh_do` (`TEN_TRINH_DO`, `MSNV`, `THOI_DIEM`) VALUES
('Cao đẳng', 'NV004', '0000-00-00 00:00:00'),
('Cao đẳng', 'NV007', '0000-00-00 00:00:00'),
('Thạc sĩ', 'NV002', '0000-00-00 00:00:00'),
('Thạc sĩ', 'NV009', '0000-00-00 00:00:00'),
('Thạc sĩ', 'NV010', '0000-00-00 00:00:00'),
('Tiến sĩ', 'NV001', '0000-00-00 00:00:00'),
('Trung cấp', 'NV003', '0000-00-00 00:00:00'),
('Đại học', 'NV005', '0000-00-00 00:00:00'),
('Đại học', 'NV006', '0000-00-00 00:00:00'),
('Đại học', 'NV008', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ct_don_thuoc`
--

CREATE TABLE `ct_don_thuoc` (
  `MA_THUOC` char(5) COLLATE utf16_bin NOT NULL,
  `ID_DON_THUOC` char(10) COLLATE utf16_bin NOT NULL,
  `SL` tinyint(4) NOT NULL,
  `DON_GIA` float(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `ct_kham_dv`
--

CREATE TABLE `ct_kham_dv` (
  `MSDV` char(10) COLLATE utf16_bin NOT NULL,
  `ID_KHAM` char(10) COLLATE utf16_bin NOT NULL,
  `THOI_DIEM_KHAM` datetime NOT NULL,
  `CHUAN_DOAN` varchar(256) COLLATE utf16_bin NOT NULL,
  `DIEN_GIAI` text COLLATE utf16_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `don_thuoc`
--

CREATE TABLE `don_thuoc` (
  `ID_DON_THUOC` char(10) COLLATE utf16_bin NOT NULL,
  `ID_KHAM` char(10) COLLATE utf16_bin NOT NULL,
  `LIEU_DUNG` tinyint(4) NOT NULL,
  `NGAY_TAI_KHAM` date DEFAULT NULL,
  `CHE_DO_AN` text COLLATE utf16_bin,
  `SINH_HOAT` text COLLATE utf16_bin,
  `DIEN_GIAI` text COLLATE utf16_bin,
  `NGAY_LAP` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `don_vi`
--

CREATE TABLE `don_vi` (
  `MADV` char(5) COLLATE utf16_bin NOT NULL,
  `TEN_DV` varchar(200) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `don_vi`
--

INSERT INTO `don_vi` (`MADV`, `TEN_DV`) VALUES
('DV01', 'Khoa lâm sàng'),
('DV02', 'Khoa cận lâm sàng'),
('DV03', 'Phòng'),
('DV04', 'Trung tâm');

-- --------------------------------------------------------

--
-- Table structure for table `dv_y_te`
--

CREATE TABLE `dv_y_te` (
  `MSDV` char(10) COLLATE utf16_bin NOT NULL,
  `TEN_DV` varchar(200) COLLATE utf16_bin NOT NULL,
  `DON_GIA` float(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `dv_y_te`
--

INSERT INTO `dv_y_te` (`MSDV`, `TEN_DV`, `DON_GIA`) VALUES
('DV01', 'Sàng lọc chuẩn đoán trước sinh', 0.00),
('DV010', 'Siêu âm', 0.00),
('DV02', 'Sàng lọc sơ sinh', 0.00),
('DV03', 'Tiêm ngừa', 0.00),
('DV04', 'Khám - chăm sóc thai', 0.00),
('DV05', 'Khám - điều trị phụ khoa', 0.00),
('DV06', 'Khám hiếm muộn', 0.00),
('DV07', 'Khám nội nhi - sơ sinh', 0.00),
('DV08', 'Xét nghiệm di truyền', 0.00),
('DV09', 'Xét nghiệm kĩ thuật cao', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `giuong`
--

CREATE TABLE `giuong` (
  `SO_GIUONG` char(5) COLLATE utf16_bin NOT NULL,
  `SO_PHONG` char(5) COLLATE utf16_bin NOT NULL,
  `HOAT_DONG` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `giuong`
--

INSERT INTO `giuong` (`SO_GIUONG`, `SO_PHONG`, `HOAT_DONG`) VALUES
('G0001', 'P0001', 1),
('G0002', 'P0002', 1),
('G0003', 'P0003', 1),
('G0004', 'P0004', 1),
('G0005', 'P0005', 1),
('G0006', 'P0006', 1),
('G0007', 'P0007', 1),
('G0008', 'P0008', 1),
('G0009', 'P0009', 1),
('G0010', 'P0010', 1),
('G0011', 'P0011', 1),
('G0012', 'P0012', 1),
('G0013', 'P0013', 1),
('G0014', 'P0014', 1),
('G0015', 'P0015', 1),
('G0016', 'P0016', 1),
('G0017', 'P0001', 1),
('G0018', 'P0002', 1),
('G0019', 'P0003', 1),
('G0020', 'P0004', 1),
('G0021', 'P0005', 1),
('G0022', 'P0006', 1),
('G0023', 'P0007', 1),
('G0024', 'P0008', 1),
('G0025', 'P0009', 1),
('G0026', 'P0010', 1),
('G0027', 'P0011', 1),
('G0028', 'P0012', 1),
('G0029', 'P0013', 1),
('G0030', 'P0014', 1),
('G0031', 'P0015', 1),
('G0032', 'P0016', 1),
('G0033', 'P0001', 1),
('G0034', 'P0002', 1),
('G0035', 'P0003', 1),
('G0036', 'P0004', 1),
('G0037', 'P0005', 1),
('G0038', 'P0006', 1),
('G0039', 'P0007', 1),
('G0040', 'P0008', 1),
('G0041', 'P0009', 1),
('G0042', 'P0010', 1),
('G0043', 'P0011', 1),
('G0044', 'P0012', 1),
('G0045', 'P0013', 1),
('G0046', 'P0014', 1),
('G0047', 'P0015', 1),
('G0048', 'P0016', 1),
('G0049', 'P0001', 1),
('G0050', 'P0002', 1),
('G0051', 'P0003', 1),
('G0052', 'P0004', 1),
('G0053', 'P0005', 1),
('G0054', 'P0006', 1),
('G0055', 'P0007', 1),
('G0056', 'P0008', 1),
('G0057', 'P0009', 1),
('G0058', 'P0010', 1),
('G0059', 'P0011', 1),
('G0060', 'P0012', 1),
('G0061', 'P0013', 1),
('G0062', 'P0014', 1),
('G0063', 'P0015', 1),
('G0064', 'P0016', 1),
('G0065', 'P0001', 1),
('G0066', 'P0002', 1),
('G0067', 'P0003', 1),
('G0068', 'P0004', 1),
('G0069', 'P0005', 1),
('G0070', 'P0006', 1),
('G0071', 'P0007', 1),
('G0072', 'P0008', 1),
('G0073', 'P0009', 1),
('G0074', 'P0010', 1),
('G0075', 'P0011', 1),
('G0076', 'P0012', 1),
('G0077', 'P0013', 1),
('G0078', 'P0014', 1),
('G0079', 'P0015', 1),
('G0080', 'P0016', 1);

-- --------------------------------------------------------

--
-- Table structure for table `he_so_luong`
--

CREATE TABLE `he_so_luong` (
  `MACV` char(5) COLLATE utf16_bin NOT NULL,
  `TEN_TRINH_DO` varchar(50) COLLATE utf16_bin NOT NULL,
  `HE_SO` float NOT NULL,
  `DIEN_GIAI` text COLLATE utf16_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `he_so_luong`
--

INSERT INTO `he_so_luong` (`MACV`, `TEN_TRINH_DO`, `HE_SO`, `DIEN_GIAI`) VALUES
('CV001', 'Tiến sĩ', 3.5, NULL),
('CV002', 'Thạc sĩ', 3, NULL),
('CV003', 'Thạc sĩ', 2.75, NULL),
('CV004', 'Thạc sĩ', 2.5, NULL),
('CV005', 'Cao đẳng', 1.75, NULL),
('CV005', 'Phổ thông', 1, NULL),
('CV005', 'Trung cấp', 1.5, NULL),
('CV005', 'Đại học', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kham`
--

CREATE TABLE `kham` (
  `ID_KHAM` char(10) COLLATE utf16_bin NOT NULL,
  `MS_BH_BN` char(15) COLLATE utf16_bin DEFAULT NULL,
  `MSNV` char(5) COLLATE utf16_bin NOT NULL,
  `MSBN` char(10) COLLATE utf16_bin NOT NULL,
  `MS_BENH` char(5) COLLATE utf16_bin NOT NULL,
  `THOI_DIEM` datetime NOT NULL,
  `CHUAN_DOAN` varchar(256) COLLATE utf16_bin NOT NULL,
  `LAN` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `loai_bao_hiem`
--

CREATE TABLE `loai_bao_hiem` (
  `MA_LOAI_BH` char(2) COLLATE utf16_bin NOT NULL,
  `TEN_LOAI_BH` varchar(150) COLLATE utf16_bin NOT NULL,
  `MO_TA_LOAI_BH` varchar(512) COLLATE utf16_bin NOT NULL,
  `DON_GIA` float(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `loai_bao_hiem`
--

INSERT INTO `loai_bao_hiem` (`MA_LOAI_BH`, `TEN_LOAI_BH`, `MO_TA_LOAI_BH`, `DON_GIA`) VALUES
('01', 'Bảo hiểm y tế', '', 600000.00),
('02', 'Bảo hiểm tai nạn', '', 250000.00);

-- --------------------------------------------------------

--
-- Table structure for table `loai_nv`
--

CREATE TABLE `loai_nv` (
  `MA_LOAI_NV` char(5) COLLATE utf16_bin NOT NULL,
  `TEN_LOAI_NV` varchar(100) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `loai_nv`
--

INSERT INTO `loai_nv` (`MA_LOAI_NV`, `TEN_LOAI_NV`) VALUES
('LNV01', 'Bác sĩ'),
('LNV02', 'Nhân viên y tế'),
('LNV03', 'Y tá'),
('LNV04', 'Kế toán'),
('LNV05', 'Hộ sinh');

-- --------------------------------------------------------

--
-- Table structure for table `luong_cb`
--

CREATE TABLE `luong_cb` (
  `THOI_DIEM_BD_HIEU_LUC` date NOT NULL,
  `THOI_DIEM_KT_HIEU_LUC` date NOT NULL,
  `LUONG_CB` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `luong_cb`
--

INSERT INTO `luong_cb` (`THOI_DIEM_BD_HIEU_LUC`, `THOI_DIEM_KT_HIEU_LUC`, `LUONG_CB`) VALUES
('2016-01-01', '2016-01-01', 1050000.00);

-- --------------------------------------------------------

--
-- Table structure for table `nam_giuong`
--

CREATE TABLE `nam_giuong` (
  `SO_GIUONG` char(5) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `MSBN` char(10) CHARACTER SET utf16 COLLATE utf16_bin NOT NULL,
  `THOI_DIEM` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `nhan_vien`
--

CREATE TABLE `nhan_vien` (
  `MSNV` char(5) COLLATE utf16_bin NOT NULL,
  `HO_TEN` varchar(256) COLLATE utf16_bin NOT NULL,
  `LA_NAM` tinyint(1) NOT NULL,
  `NGAY_SINH` date NOT NULL,
  `NGAY_BD_LAM` date NOT NULL,
  `NGAY_THOI_VIEC` date DEFAULT NULL,
  `DIEN_GIAI` text COLLATE utf16_bin,
  `TAI_KHOAN` varchar(100) COLLATE utf16_bin DEFAULT NULL,
  `MAT_KHAU` varchar(200) COLLATE utf16_bin NOT NULL,
  `QUYEN_SD` varchar(10) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `nhan_vien`
--

INSERT INTO `nhan_vien` (`MSNV`, `HO_TEN`, `LA_NAM`, `NGAY_SINH`, `NGAY_BD_LAM`, `NGAY_THOI_VIEC`, `DIEN_GIAI`, `TAI_KHOAN`, `MAT_KHAU`, `QUYEN_SD`) VALUES
('NV001', 'Nguyễn Văn Nam', 1, '1972-01-01', '1995-01-01', '0000-00-00', '', 'quantri', '202cb962ac59075b964b07152d234b70', '1'),
('NV002', 'Trần Thanh Bình', 1, '1972-01-02', '1995-01-02', '0000-00-00', '', 'bacsi1', '202cb962ac59075b964b07152d234b70', '1'),
('NV003', 'Nguyễn Thị Kim Tiến', 0, '1972-01-03', '1995-01-03', '0000-00-00', '', 'tiepnhan', '202cb962ac59075b964b07152d234b70', '3'),
('NV004', 'Võ Hoàng Khải', 1, '1972-01-04', '1995-01-04', '0000-00-00', '', '', '', ''),
('NV005', 'Trịnh Tấn Phát', 1, '1972-01-05', '1995-01-05', '0000-00-00', '', '', '', ''),
('NV006', 'Phan Như Hảo', 0, '1972-01-06', '1995-01-06', '0000-00-00', '', 'tiepnhan1', '202cb962ac59075b964b07152d234b70', '3'),
('NV007', 'Phạm Cao Hiền', 1, '1972-01-07', '1995-01-07', '0000-00-00', '', '', '', ''),
('NV008', 'Trần Thị Thanh Ngọc', 0, '1972-01-08', '1995-01-08', '0000-00-00', '', '', '', ''),
('NV009', 'Nguyễn Hoàng Tấn', 1, '1972-01-09', '1995-01-09', '0000-00-00', '', 'bacsi2', '202cb962ac59075b964b07152d234b70', '2'),
('NV010', 'Cao Xuân Sơn', 1, '1972-01-10', '1995-01-10', '0000-00-00', '', 'bacsi3', '202cb962ac59075b964b07152d234b70', '2');

-- --------------------------------------------------------

--
-- Table structure for table `nv_co_cv`
--

CREATE TABLE `nv_co_cv` (
  `MACV` char(5) COLLATE utf16_bin NOT NULL,
  `MA_BP` char(5) COLLATE utf16_bin NOT NULL,
  `MSNV` char(5) COLLATE utf16_bin NOT NULL,
  `THOI_DIEM` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `nv_co_cv`
--

INSERT INTO `nv_co_cv` (`MACV`, `MA_BP`, `MSNV`, `THOI_DIEM`) VALUES
('CV001', 'BP01', 'NV001', '0000-00-00 00:00:00'),
('CV002', 'BP01', 'NV004', '0000-00-00 00:00:00'),
('CV003', 'BP01', 'NV002', '0000-00-00 00:00:00'),
('CV004', 'BP01', 'NV007', '0000-00-00 00:00:00'),
('CV005', 'BP01', 'NV006', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `phong_benh`
--

CREATE TABLE `phong_benh` (
  `SO_PHONG` char(5) COLLATE utf16_bin NOT NULL,
  `MADV` char(5) COLLATE utf16_bin NOT NULL,
  `TEN_PHONG` varchar(200) COLLATE utf16_bin NOT NULL,
  `MO_TA` text COLLATE utf16_bin,
  `HOAT_DONG` tinyint(1) NOT NULL,
  `LOAI_THUONG` tinyint(1) NOT NULL,
  `GIA` float(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `phong_benh`
--

INSERT INTO `phong_benh` (`SO_PHONG`, `MADV`, `TEN_PHONG`, `MO_TA`, `HOAT_DONG`, `LOAI_THUONG`, `GIA`) VALUES
('P0001', 'DV01', 'Phòng 1', '', 1, 1, 500000.00),
('P0002', 'DV02', 'Phòng 2', '', 1, 1, 500000.00),
('P0003', 'DV03', 'Phòng 3', '', 1, 1, 500000.00),
('P0004', 'DV04', 'Phòng 4', '', 1, 1, 500000.00),
('P0005', 'DV01', 'Phòng 5', '', 1, 1, 500000.00),
('P0006', 'DV02', 'Phòng 6', '', 1, 1, 500000.00),
('P0007', 'DV03', 'Phòng 7', '', 1, 1, 500000.00),
('P0008', 'DV04', 'Phòng 8', '', 1, 1, 500000.00),
('P0009', 'DV01', 'Phòng 9', '', 1, 1, 500000.00),
('P0010', 'DV02', 'Phòng 10', '', 1, 1, 500000.00),
('P0011', 'DV03', 'Phòng 11', '', 1, 1, 500000.00),
('P0012', 'DV04', 'Phòng 12', '', 1, 1, 500000.00),
('P0013', 'DV01', 'Phòng 13', '', 1, 1, 500000.00),
('P0014', 'DV02', 'Phòng 14', '', 1, 1, 500000.00),
('P0015', 'DV03', 'Phòng 15', '', 1, 1, 500000.00),
('P0016', 'DV04', 'Phòng 16', '', 1, 1, 500000.00);

-- --------------------------------------------------------

--
-- Table structure for table `phu_cap_cv`
--

CREATE TABLE `phu_cap_cv` (
  `MACV` char(5) COLLATE utf16_bin NOT NULL,
  `THOI_DIEM_HIEU_LUC` date NOT NULL,
  `TIEN_PHU_CAP` float(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `phu_cap_cv`
--

INSERT INTO `phu_cap_cv` (`MACV`, `THOI_DIEM_HIEU_LUC`, `TIEN_PHU_CAP`) VALUES
('CV001', '2016-01-01', 500000.00),
('CV002', '2016-01-01', 450000.00),
('CV003', '2016-01-01', 350000.00),
('CV004', '2016-01-01', 300000.00),
('CV005', '2016-01-01', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `thoi_diem`
--

CREATE TABLE `thoi_diem` (
  `THOI_DIEM_HIEU_LUC` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `thoi_diem`
--

INSERT INTO `thoi_diem` (`THOI_DIEM_HIEU_LUC`) VALUES
('2016-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `thuoc`
--

CREATE TABLE `thuoc` (
  `MA_THUOC` char(5) COLLATE utf16_bin NOT NULL,
  `TEN_THUOC` varchar(256) COLLATE utf16_bin DEFAULT NULL,
  `MO_TA_THUOC` text COLLATE utf16_bin,
  `GIA_BH` float(8,2) DEFAULT NULL,
  `GIA_THUONG` float(8,2) DEFAULT NULL,
  `DVT` varchar(100) COLLATE utf16_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `thuoc`
--

INSERT INTO `thuoc` (`MA_THUOC`, `TEN_THUOC`, `MO_TA_THUOC`, `GIA_BH`, `GIA_THUONG`, `DVT`) VALUES
('T0001', 'Thuốc 1', 'Mô tả thuốc 1', 0.00, 55000.00, 'vỉ'),
('T0002', 'Thuốc 2', 'Mô tả thuốc 2', 0.00, 60000.00, 'vỉ'),
('T0003', 'Thuốc 3', 'Mô tả thuốc 3', 0.00, 65000.00, 'vỉ'),
('T0004', 'Thuốc 4', 'Mô tả thuốc 4', 0.00, 70000.00, 'vỉ'),
('T0005', 'Thuốc 5', 'Mô tả thuốc 5', 0.00, 75000.00, 'vỉ'),
('T0006', 'Thuốc 6', 'Mô tả thuốc 6', 0.00, 80000.00, 'vỉ'),
('T0007', 'Thuốc 7', 'Mô tả thuốc 7', 0.00, 85000.00, 'vỉ'),
('T0008', 'Thuốc 8', 'Mô tả thuốc 8', 0.00, 90000.00, 'vỉ'),
('T0009', 'Thuốc 9', 'Mô tả thuốc 9', 0.00, 95000.00, 'vỉ'),
('T0010', 'Thuốc 10', 'Mô tả thuốc 10', 0.00, 100000.00, 'vỉ'),
('T0011', 'Thuốc 11', 'Mô tả thuốc 11', 21000.00, 105000.00, 'vỉ'),
('T0012', 'Thuốc 12', 'Mô tả thuốc 12', 22000.00, 110000.00, 'vỉ'),
('T0013', 'Thuốc 13', 'Mô tả thuốc 13', 23000.00, 115000.00, 'vỉ'),
('T0014', 'Thuốc 14', 'Mô tả thuốc 14', 24000.00, 120000.00, 'vỉ'),
('T0015', 'Thuốc 15', 'Mô tả thuốc 15', 25000.00, 125000.00, 'vỉ'),
('T0016', 'Thuốc 16', 'Mô tả thuốc 16', 26000.00, 130000.00, 'vỉ'),
('T0017', 'Thuốc 17', 'Mô tả thuốc 17', 27000.00, 135000.00, 'vỉ'),
('T0018', 'Thuốc 18', 'Mô tả thuốc 18', 28000.00, 140000.00, 'vỉ'),
('T0019', 'Thuốc 19', 'Mô tả thuốc 19', 29000.00, 145000.00, 'vỉ'),
('T0020', 'Thuốc 20', 'Mô tả thuốc 20', 30000.00, 150000.00, 'vỉ');

-- --------------------------------------------------------

--
-- Table structure for table `thuoc_loai_nv`
--

CREATE TABLE `thuoc_loai_nv` (
  `MA_LOAI_NV` char(5) COLLATE utf16_bin NOT NULL,
  `MSNV` char(5) COLLATE utf16_bin NOT NULL,
  `THOI_DIEM` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `thuoc_loai_nv`
--

INSERT INTO `thuoc_loai_nv` (`MA_LOAI_NV`, `MSNV`, `THOI_DIEM`) VALUES
('LNV01', 'NV001', '2016-05-01 12:05:17'),
('LNV01', 'NV002', '2016-05-01 11:55:26'),
('LNV01', 'NV009', '2016-05-01 12:04:35'),
('LNV01', 'NV010', '2016-05-01 12:04:18'),
('LNV02', 'NV003', '2016-05-01 12:02:48'),
('LNV02', 'NV004', '2016-05-01 11:58:48'),
('LNV03', 'NV006', '2016-05-01 12:00:39'),
('LNV04', 'NV007', '2016-05-01 12:01:02'),
('LNV05', 'NV005', '2016-05-01 12:03:38'),
('LNV05', 'NV008', '2016-05-01 12:01:41');

-- --------------------------------------------------------

--
-- Table structure for table `tiep_nhan`
--

CREATE TABLE `tiep_nhan` (
  `MSNV` char(5) COLLATE utf16_bin NOT NULL,
  `MSBN` char(10) COLLATE utf16_bin NOT NULL,
  `TD_TIEP_NHAN` datetime NOT NULL,
  `DIEN_GIAI` text COLLATE utf16_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `tiep_nhan`
--

INSERT INTO `tiep_nhan` (`MSNV`, `MSBN`, `TD_TIEP_NHAN`, `DIEN_GIAI`) VALUES
('NV003', 'BN001', '2016-04-03 12:13:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trinh_do_hoc_van`
--

CREATE TABLE `trinh_do_hoc_van` (
  `TEN_TRINH_DO` varchar(50) COLLATE utf16_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `trinh_do_hoc_van`
--

INSERT INTO `trinh_do_hoc_van` (`TEN_TRINH_DO`) VALUES
('Cao đẳng'),
('Phổ thông'),
('Thạc sĩ'),
('Tiến sĩ'),
('Trung cấp'),
('Đại học');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bao_hiem`
--
ALTER TABLE `bao_hiem`
  ADD PRIMARY KEY (`MSBH`),
  ADD KEY `FK_NV_CO_BH` (`MSNV`),
  ADD KEY `FK_THUOC_LOAI` (`MA_LOAI_BH`);

--
-- Indexes for table `benh`
--
ALTER TABLE `benh`
  ADD PRIMARY KEY (`MS_BENH`);

--
-- Indexes for table `benh_nhan`
--
ALTER TABLE `benh_nhan`
  ADD PRIMARY KEY (`MSBN`);

--
-- Indexes for table `bhyt`
--
ALTER TABLE `bhyt`
  ADD PRIMARY KEY (`MS_BH_BN`),
  ADD KEY `FK_BN_CO_BHYT` (`MSBN`);

--
-- Indexes for table `bo_phan`
--
ALTER TABLE `bo_phan`
  ADD PRIMARY KEY (`MA_BP`),
  ADD KEY `FK_CO_BO_PHAN` (`MADV`);

--
-- Indexes for table `chuc_vu`
--
ALTER TABLE `chuc_vu`
  ADD PRIMARY KEY (`MACV`);

--
-- Indexes for table `co_trinh_do`
--
ALTER TABLE `co_trinh_do`
  ADD PRIMARY KEY (`TEN_TRINH_DO`,`MSNV`),
  ADD KEY `FK_CO_TRINH_DO2` (`MSNV`);

--
-- Indexes for table `ct_don_thuoc`
--
ALTER TABLE `ct_don_thuoc`
  ADD PRIMARY KEY (`MA_THUOC`,`ID_DON_THUOC`),
  ADD KEY `FK_CT_DON_THUOC2` (`ID_DON_THUOC`);

--
-- Indexes for table `ct_kham_dv`
--
ALTER TABLE `ct_kham_dv`
  ADD PRIMARY KEY (`MSDV`,`ID_KHAM`),
  ADD KEY `FK_CT_KHAM_DV2` (`ID_KHAM`);

--
-- Indexes for table `don_thuoc`
--
ALTER TABLE `don_thuoc`
  ADD PRIMARY KEY (`ID_DON_THUOC`),
  ADD KEY `FK_CO_DON_THUOC` (`ID_KHAM`);

--
-- Indexes for table `don_vi`
--
ALTER TABLE `don_vi`
  ADD PRIMARY KEY (`MADV`);

--
-- Indexes for table `dv_y_te`
--
ALTER TABLE `dv_y_te`
  ADD PRIMARY KEY (`MSDV`);

--
-- Indexes for table `giuong`
--
ALTER TABLE `giuong`
  ADD PRIMARY KEY (`SO_GIUONG`),
  ADD KEY `FK_CO_GIUONG` (`SO_PHONG`);

--
-- Indexes for table `he_so_luong`
--
ALTER TABLE `he_so_luong`
  ADD PRIMARY KEY (`MACV`,`TEN_TRINH_DO`),
  ADD KEY `FK_HE_SO_LUONG2` (`TEN_TRINH_DO`);

--
-- Indexes for table `kham`
--
ALTER TABLE `kham`
  ADD PRIMARY KEY (`ID_KHAM`),
  ADD KEY `FK_BN_DUOC_KHAM` (`MSBN`),
  ADD KEY `FK_BS_KHAM` (`MSNV`),
  ADD KEY `FK_KHAM_BENH` (`MS_BENH`),
  ADD KEY `FK_KHAM_CO_BHYT` (`MS_BH_BN`);

--
-- Indexes for table `loai_bao_hiem`
--
ALTER TABLE `loai_bao_hiem`
  ADD PRIMARY KEY (`MA_LOAI_BH`);

--
-- Indexes for table `loai_nv`
--
ALTER TABLE `loai_nv`
  ADD PRIMARY KEY (`MA_LOAI_NV`);

--
-- Indexes for table `luong_cb`
--
ALTER TABLE `luong_cb`
  ADD PRIMARY KEY (`THOI_DIEM_BD_HIEU_LUC`,`THOI_DIEM_KT_HIEU_LUC`),
  ADD KEY `FK_THOI_DIEM_KT` (`THOI_DIEM_KT_HIEU_LUC`);

--
-- Indexes for table `nam_giuong`
--
ALTER TABLE `nam_giuong`
  ADD PRIMARY KEY (`SO_GIUONG`,`MSBN`),
  ADD KEY `FK_BENH_NHAN` (`MSBN`);

--
-- Indexes for table `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD PRIMARY KEY (`MSNV`);

--
-- Indexes for table `nv_co_cv`
--
ALTER TABLE `nv_co_cv`
  ADD PRIMARY KEY (`MACV`,`MA_BP`,`MSNV`),
  ADD KEY `FK_NV_CO_CV2` (`MA_BP`),
  ADD KEY `FK_NV_CO_CV3` (`MSNV`);

--
-- Indexes for table `phong_benh`
--
ALTER TABLE `phong_benh`
  ADD PRIMARY KEY (`SO_PHONG`),
  ADD KEY `FK_CO_PHONG_BENH` (`MADV`);

--
-- Indexes for table `phu_cap_cv`
--
ALTER TABLE `phu_cap_cv`
  ADD PRIMARY KEY (`MACV`,`THOI_DIEM_HIEU_LUC`),
  ADD KEY `FK_PHU_CAP_CV2` (`THOI_DIEM_HIEU_LUC`);

--
-- Indexes for table `thoi_diem`
--
ALTER TABLE `thoi_diem`
  ADD PRIMARY KEY (`THOI_DIEM_HIEU_LUC`);

--
-- Indexes for table `thuoc`
--
ALTER TABLE `thuoc`
  ADD PRIMARY KEY (`MA_THUOC`);

--
-- Indexes for table `thuoc_loai_nv`
--
ALTER TABLE `thuoc_loai_nv`
  ADD PRIMARY KEY (`MA_LOAI_NV`,`MSNV`),
  ADD KEY `FK_THUOC_LOAI_NV2` (`MSNV`);

--
-- Indexes for table `tiep_nhan`
--
ALTER TABLE `tiep_nhan`
  ADD PRIMARY KEY (`MSNV`,`MSBN`),
  ADD KEY `FK_TIEP_NHAN2` (`MSBN`);

--
-- Indexes for table `trinh_do_hoc_van`
--
ALTER TABLE `trinh_do_hoc_van`
  ADD PRIMARY KEY (`TEN_TRINH_DO`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bao_hiem`
--
ALTER TABLE `bao_hiem`
  ADD CONSTRAINT `FK_NV_CO_BH` FOREIGN KEY (`MSNV`) REFERENCES `nhan_vien` (`MSNV`),
  ADD CONSTRAINT `FK_THUOC_LOAI` FOREIGN KEY (`MA_LOAI_BH`) REFERENCES `loai_bao_hiem` (`MA_LOAI_BH`);

--
-- Constraints for table `bhyt`
--
ALTER TABLE `bhyt`
  ADD CONSTRAINT `FK_BN_CO_BHYT` FOREIGN KEY (`MSBN`) REFERENCES `benh_nhan` (`MSBN`);

--
-- Constraints for table `bo_phan`
--
ALTER TABLE `bo_phan`
  ADD CONSTRAINT `FK_CO_BO_PHAN` FOREIGN KEY (`MADV`) REFERENCES `don_vi` (`MADV`);

--
-- Constraints for table `co_trinh_do`
--
ALTER TABLE `co_trinh_do`
  ADD CONSTRAINT `FK_CO_TRINH_DO` FOREIGN KEY (`TEN_TRINH_DO`) REFERENCES `trinh_do_hoc_van` (`TEN_TRINH_DO`),
  ADD CONSTRAINT `FK_CO_TRINH_DO2` FOREIGN KEY (`MSNV`) REFERENCES `nhan_vien` (`MSNV`);

--
-- Constraints for table `ct_don_thuoc`
--
ALTER TABLE `ct_don_thuoc`
  ADD CONSTRAINT `FK_CT_DON_THUOC` FOREIGN KEY (`MA_THUOC`) REFERENCES `thuoc` (`MA_THUOC`),
  ADD CONSTRAINT `FK_CT_DON_THUOC2` FOREIGN KEY (`ID_DON_THUOC`) REFERENCES `don_thuoc` (`ID_DON_THUOC`);

--
-- Constraints for table `ct_kham_dv`
--
ALTER TABLE `ct_kham_dv`
  ADD CONSTRAINT `FK_CT_KHAM_DV` FOREIGN KEY (`MSDV`) REFERENCES `dv_y_te` (`MSDV`),
  ADD CONSTRAINT `FK_CT_KHAM_DV2` FOREIGN KEY (`ID_KHAM`) REFERENCES `kham` (`ID_KHAM`);

--
-- Constraints for table `don_thuoc`
--
ALTER TABLE `don_thuoc`
  ADD CONSTRAINT `FK_CO_DON_THUOC` FOREIGN KEY (`ID_KHAM`) REFERENCES `kham` (`ID_KHAM`);

--
-- Constraints for table `giuong`
--
ALTER TABLE `giuong`
  ADD CONSTRAINT `FK_CO_GIUONG` FOREIGN KEY (`SO_PHONG`) REFERENCES `phong_benh` (`SO_PHONG`);

--
-- Constraints for table `he_so_luong`
--
ALTER TABLE `he_so_luong`
  ADD CONSTRAINT `FK_HE_SO_LUONG` FOREIGN KEY (`MACV`) REFERENCES `chuc_vu` (`MACV`),
  ADD CONSTRAINT `FK_HE_SO_LUONG2` FOREIGN KEY (`TEN_TRINH_DO`) REFERENCES `trinh_do_hoc_van` (`TEN_TRINH_DO`);

--
-- Constraints for table `kham`
--
ALTER TABLE `kham`
  ADD CONSTRAINT `FK_BN_DUOC_KHAM` FOREIGN KEY (`MSBN`) REFERENCES `benh_nhan` (`MSBN`),
  ADD CONSTRAINT `FK_BS_KHAM` FOREIGN KEY (`MSNV`) REFERENCES `nhan_vien` (`MSNV`),
  ADD CONSTRAINT `FK_KHAM_BENH` FOREIGN KEY (`MS_BENH`) REFERENCES `benh` (`MS_BENH`),
  ADD CONSTRAINT `FK_KHAM_CO_BHYT` FOREIGN KEY (`MS_BH_BN`) REFERENCES `bhyt` (`MS_BH_BN`);

--
-- Constraints for table `luong_cb`
--
ALTER TABLE `luong_cb`
  ADD CONSTRAINT `FK_THOI_DIEM_BD` FOREIGN KEY (`THOI_DIEM_BD_HIEU_LUC`) REFERENCES `thoi_diem` (`THOI_DIEM_HIEU_LUC`),
  ADD CONSTRAINT `FK_THOI_DIEM_KT` FOREIGN KEY (`THOI_DIEM_KT_HIEU_LUC`) REFERENCES `thoi_diem` (`THOI_DIEM_HIEU_LUC`);

--
-- Constraints for table `nam_giuong`
--
ALTER TABLE `nam_giuong`
  ADD CONSTRAINT `FK_BENH_NHAN` FOREIGN KEY (`MSBN`) REFERENCES `benh_nhan` (`MSBN`),
  ADD CONSTRAINT `FK_NAM_GIUONG` FOREIGN KEY (`SO_GIUONG`) REFERENCES `giuong` (`SO_GIUONG`);

--
-- Constraints for table `nv_co_cv`
--
ALTER TABLE `nv_co_cv`
  ADD CONSTRAINT `FK_NV_CO_CV` FOREIGN KEY (`MACV`) REFERENCES `chuc_vu` (`MACV`),
  ADD CONSTRAINT `FK_NV_CO_CV2` FOREIGN KEY (`MA_BP`) REFERENCES `bo_phan` (`MA_BP`),
  ADD CONSTRAINT `FK_NV_CO_CV3` FOREIGN KEY (`MSNV`) REFERENCES `nhan_vien` (`MSNV`);

--
-- Constraints for table `phong_benh`
--
ALTER TABLE `phong_benh`
  ADD CONSTRAINT `FK_CO_PHONG_BENH` FOREIGN KEY (`MADV`) REFERENCES `don_vi` (`MADV`);

--
-- Constraints for table `phu_cap_cv`
--
ALTER TABLE `phu_cap_cv`
  ADD CONSTRAINT `FK_PHU_CAP_CV` FOREIGN KEY (`MACV`) REFERENCES `chuc_vu` (`MACV`),
  ADD CONSTRAINT `FK_PHU_CAP_CV2` FOREIGN KEY (`THOI_DIEM_HIEU_LUC`) REFERENCES `thoi_diem` (`THOI_DIEM_HIEU_LUC`);

--
-- Constraints for table `thuoc_loai_nv`
--
ALTER TABLE `thuoc_loai_nv`
  ADD CONSTRAINT `FK_THUOC_LOAI_NV` FOREIGN KEY (`MA_LOAI_NV`) REFERENCES `loai_nv` (`MA_LOAI_NV`),
  ADD CONSTRAINT `FK_THUOC_LOAI_NV2` FOREIGN KEY (`MSNV`) REFERENCES `nhan_vien` (`MSNV`);

--
-- Constraints for table `tiep_nhan`
--
ALTER TABLE `tiep_nhan`
  ADD CONSTRAINT `FK_TIEP_NHAN` FOREIGN KEY (`MSNV`) REFERENCES `nhan_vien` (`MSNV`),
  ADD CONSTRAINT `FK_TIEP_NHAN2` FOREIGN KEY (`MSBN`) REFERENCES `benh_nhan` (`MSBN`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
