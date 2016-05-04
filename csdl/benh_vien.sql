-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2016 at 05:14 AM
-- Server version: 5.6.11
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `benh_vien`
--
CREATE DATABASE IF NOT EXISTS `benh_vien` DEFAULT CHARACTER SET utf16 COLLATE utf16_bin;
USE `benh_vien`;

-- --------------------------------------------------------

--
-- Table structure for table `bao_hiem`
--

CREATE TABLE IF NOT EXISTS `bao_hiem` (
  `MSBH` char(10) COLLATE utf16_bin NOT NULL,
  `MSNV` char(5) COLLATE utf16_bin NOT NULL,
  `MA_LOAI_BH` char(2) COLLATE utf16_bin NOT NULL,
  `NGAY_LAP` datetime NOT NULL,
  `NGAY_HET_HAN` date NOT NULL,
  PRIMARY KEY (`MSBH`),
  KEY `FK_NV_CO_BH` (`MSNV`),
  KEY `FK_THUOC_LOAI` (`MA_LOAI_BH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `benh`
--

CREATE TABLE IF NOT EXISTS `benh` (
  `MS_BENH` char(5) COLLATE utf16_bin NOT NULL,
  `TEN_BENH` varchar(256) COLLATE utf16_bin NOT NULL,
  `TEN_ANH` varchar(256) COLLATE utf16_bin NOT NULL,
  `MO_TA_BENH` text COLLATE utf16_bin,
  PRIMARY KEY (`MS_BENH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `benh_nhan`
--

CREATE TABLE IF NOT EXISTS `benh_nhan` (
  `MSBN` char(10) COLLATE utf16_bin NOT NULL,
  `TEN_BN` varchar(256) COLLATE utf16_bin NOT NULL,
  `CMND` char(12) COLLATE utf16_bin DEFAULT NULL,
  `LA_NAM` tinyint(1) DEFAULT NULL,
  `NGAY_SINH` date DEFAULT NULL,
  `DC` varchar(256) COLLATE utf16_bin DEFAULT NULL,
  PRIMARY KEY (`MSBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `bhyt`
--

CREATE TABLE IF NOT EXISTS `bhyt` (
  `MS_BH_BN` char(15) COLLATE utf16_bin NOT NULL,
  `MSBN` char(10) COLLATE utf16_bin NOT NULL,
  `THOI_HAN_TU` date NOT NULL,
  `NGAY_HET_HAN` date NOT NULL,
  `NOI_DK_KHAM` varchar(200) COLLATE utf16_bin NOT NULL,
  PRIMARY KEY (`MS_BH_BN`),
  KEY `FK_BN_CO_BHYT` (`MSBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `bo_phan`
--

CREATE TABLE IF NOT EXISTS `bo_phan` (
  `MA_BP` char(5) COLLATE utf16_bin NOT NULL,
  `MADV` char(5) COLLATE utf16_bin NOT NULL,
  `TEN_BP` varchar(256) COLLATE utf16_bin DEFAULT NULL,
  PRIMARY KEY (`MA_BP`),
  KEY `FK_CO_BO_PHAN` (`MADV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `chuc_vu`
--

CREATE TABLE IF NOT EXISTS `chuc_vu` (
  `MACV` char(5) COLLATE utf16_bin NOT NULL,
  `TEN_CV` varchar(100) COLLATE utf16_bin NOT NULL,
  `HS_PHU_CAP` float NOT NULL,
  PRIMARY KEY (`MACV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `co_trinh_do`
--

CREATE TABLE IF NOT EXISTS `co_trinh_do` (
  `TEN_TRINH_DO` varchar(50) COLLATE utf16_bin NOT NULL,
  `MSNV` char(5) COLLATE utf16_bin NOT NULL,
  `THOI_DIEM` datetime NOT NULL,
  PRIMARY KEY (`TEN_TRINH_DO`,`MSNV`),
  KEY `FK_CO_TRINH_DO2` (`MSNV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `ct_don_thuoc`
--

CREATE TABLE IF NOT EXISTS `ct_don_thuoc` (
  `MA_THUOC` char(5) COLLATE utf16_bin NOT NULL,
  `ID_DON_THUOC` char(10) COLLATE utf16_bin NOT NULL,
  `SL` tinyint(4) NOT NULL,
  `DON_GIA` float(8,2) NOT NULL,
  PRIMARY KEY (`MA_THUOC`,`ID_DON_THUOC`),
  KEY `FK_CT_DON_THUOC2` (`ID_DON_THUOC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `ct_kham_dv`
--

CREATE TABLE IF NOT EXISTS `ct_kham_dv` (
  `MSDV` char(10) COLLATE utf16_bin NOT NULL,
  `ID_KHAM` char(10) COLLATE utf16_bin NOT NULL,
  `THOI_DIEM_KHAM` datetime NOT NULL,
  `CHUAN_DOAN` varchar(256) COLLATE utf16_bin NOT NULL,
  `DIEN_GIAI` text COLLATE utf16_bin,
  PRIMARY KEY (`MSDV`,`ID_KHAM`),
  KEY `FK_CT_KHAM_DV2` (`ID_KHAM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `don_thuoc`
--

CREATE TABLE IF NOT EXISTS `don_thuoc` (
  `ID_DON_THUOC` char(10) COLLATE utf16_bin NOT NULL,
  `ID_KHAM` char(10) COLLATE utf16_bin NOT NULL,
  `LIEU_DUNG` tinyint(4) NOT NULL,
  `NGAY_TAI_KHAM` date DEFAULT NULL,
  `CHE_DO_AN` text COLLATE utf16_bin,
  `SINH_HOAT` text COLLATE utf16_bin,
  `DIEN_GIAI` text COLLATE utf16_bin,
  `NGAY_LAP` datetime NOT NULL,
  PRIMARY KEY (`ID_DON_THUOC`),
  KEY `FK_CO_DON_THUOC` (`ID_KHAM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `don_vi`
--

CREATE TABLE IF NOT EXISTS `don_vi` (
  `MADV` char(5) COLLATE utf16_bin NOT NULL,
  `TEN_DV` varchar(200) COLLATE utf16_bin NOT NULL,
  PRIMARY KEY (`MADV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `dv_y_te`
--

CREATE TABLE IF NOT EXISTS `dv_y_te` (
  `MSDV` char(10) COLLATE utf16_bin NOT NULL,
  `TEN_DV` varchar(200) COLLATE utf16_bin NOT NULL,
  `DON_GIA` float(8,2) NOT NULL,
  PRIMARY KEY (`MSDV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `giuong`
--

CREATE TABLE IF NOT EXISTS `giuong` (
  `SO_GIUONG` char(6) COLLATE utf16_bin NOT NULL,
  `SO_PHONG` char(5) COLLATE utf16_bin NOT NULL,
  `HOAT_DONG` tinyint(1) NOT NULL,
  PRIMARY KEY (`SO_GIUONG`),
  KEY `FK_CO_GIUONG` (`SO_PHONG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `he_so_luong`
--

CREATE TABLE IF NOT EXISTS `he_so_luong` (
  `MACV` char(5) COLLATE utf16_bin NOT NULL,
  `TEN_TRINH_DO` varchar(50) COLLATE utf16_bin NOT NULL,
  `HE_SO` float NOT NULL,
  `DIEN_GIAI` text COLLATE utf16_bin,
  PRIMARY KEY (`MACV`,`TEN_TRINH_DO`),
  KEY `FK_HE_SO_LUONG2` (`TEN_TRINH_DO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `kham`
--

CREATE TABLE IF NOT EXISTS `kham` (
  `ID_KHAM` char(10) COLLATE utf16_bin NOT NULL,
  `MS_BH_BN` char(15) COLLATE utf16_bin DEFAULT NULL,
  `MSNV` char(5) COLLATE utf16_bin NOT NULL,
  `MSBN` char(10) COLLATE utf16_bin NOT NULL,
  `MS_BENH` char(5) COLLATE utf16_bin NOT NULL,
  `THOI_DIEM` datetime NOT NULL,
  `CHUAN_DOAN` varchar(256) COLLATE utf16_bin NOT NULL,
  `LAN` tinyint(4) NOT NULL,
  PRIMARY KEY (`ID_KHAM`),
  KEY `FK_BN_DUOC_KHAM` (`MSBN`),
  KEY `FK_BS_KHAM` (`MSNV`),
  KEY `FK_KHAM_BENH` (`MS_BENH`),
  KEY `FK_KHAM_CO_BHYT` (`MS_BH_BN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `loai_bao_hiem`
--

CREATE TABLE IF NOT EXISTS `loai_bao_hiem` (
  `MA_LOAI_BH` char(2) COLLATE utf16_bin NOT NULL,
  `TEN_LOAI_BH` varchar(150) COLLATE utf16_bin NOT NULL,
  `MO_TA_LOAI_BH` varchar(512) COLLATE utf16_bin NOT NULL,
  `DON_GIA` float(8,2) NOT NULL,
  PRIMARY KEY (`MA_LOAI_BH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `loai_nv`
--

CREATE TABLE IF NOT EXISTS `loai_nv` (
  `MA_LOAI_NV` char(5) COLLATE utf16_bin NOT NULL,
  `TEN_LOAI_NV` varchar(100) COLLATE utf16_bin NOT NULL,
  PRIMARY KEY (`MA_LOAI_NV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `luong_cb`
--

CREATE TABLE IF NOT EXISTS `luong_cb` (
  `THOI_DIEM_BD_HIEU_LUC` date NOT NULL,
  `THOI_DIEM_KT_HIEU_LUC` date NOT NULL,
  `LUONG_CB` float(8,2) NOT NULL,
  PRIMARY KEY (`THOI_DIEM_BD_HIEU_LUC`,`THOI_DIEM_KT_HIEU_LUC`),
  KEY `FK_THOI_DIEM_KT` (`THOI_DIEM_KT_HIEU_LUC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `nhan_vien`
--

CREATE TABLE IF NOT EXISTS `nhan_vien` (
  `MSNV` char(5) COLLATE utf16_bin NOT NULL,
  `HO_TEN` varchar(256) COLLATE utf16_bin NOT NULL,
  `LA_NAM` tinyint(1) NOT NULL,
  `NGAY_SINH` date NOT NULL,
  `NGAY_BD_LAM` date NOT NULL,
  `NGAY_THOI_VIEC` date DEFAULT NULL,
  `DIEN_GIAI` text COLLATE utf16_bin,
  `TAI_KHOAN` varchar(100) COLLATE utf16_bin NOT NULL,
  `MAT_KHAU` varchar(200) COLLATE utf16_bin NOT NULL,
  `QUYEN_SD` varchar(10) COLLATE utf16_bin NOT NULL,
  PRIMARY KEY (`MSNV`),
  UNIQUE KEY `UNIQUE_TAI_KHOAN` (`TAI_KHOAN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `nv_co_cv`
--

CREATE TABLE IF NOT EXISTS `nv_co_cv` (
  `MACV` char(5) COLLATE utf16_bin NOT NULL,
  `MA_BP` char(5) COLLATE utf16_bin NOT NULL,
  `MSNV` char(5) COLLATE utf16_bin NOT NULL,
  `THOI_DIEM` datetime NOT NULL,
  PRIMARY KEY (`MACV`,`MA_BP`,`MSNV`),
  KEY `FK_NV_CO_CV2` (`MA_BP`),
  KEY `FK_NV_CO_CV3` (`MSNV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phong_benh`
--

CREATE TABLE IF NOT EXISTS `phong_benh` (
  `SO_PHONG` char(5) COLLATE utf16_bin NOT NULL,
  `MADV` char(5) COLLATE utf16_bin NOT NULL,
  `TEN_PHONG` varchar(200) COLLATE utf16_bin NOT NULL,
  `MO_TA` text COLLATE utf16_bin,
  `HOAT_DONG` tinyint(1) NOT NULL,
  `LOAI_THUONG` tinyint(1) NOT NULL,
  `GIA` float(8,2) NOT NULL,
  PRIMARY KEY (`SO_PHONG`),
  KEY `FK_CO_PHONG_BENH` (`MADV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phu_cap_cv`
--

CREATE TABLE IF NOT EXISTS `phu_cap_cv` (
  `MACV` char(5) COLLATE utf16_bin NOT NULL,
  `THOI_DIEM_HIEU_LUC` date NOT NULL,
  `TIEN_PHU_CAP` float(8,2) NOT NULL,
  PRIMARY KEY (`MACV`,`THOI_DIEM_HIEU_LUC`),
  KEY `FK_PHU_CAP_CV2` (`THOI_DIEM_HIEU_LUC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `thoi_diem`
--

CREATE TABLE IF NOT EXISTS `thoi_diem` (
  `THOI_DIEM_HIEU_LUC` date NOT NULL,
  PRIMARY KEY (`THOI_DIEM_HIEU_LUC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `thuoc`
--

CREATE TABLE IF NOT EXISTS `thuoc` (
  `MA_THUOC` char(5) COLLATE utf16_bin NOT NULL,
  `TEN_THUOC` varchar(256) COLLATE utf16_bin DEFAULT NULL,
  `MO_TA_THUOC` text COLLATE utf16_bin,
  `GIA_BH` float(8,2) DEFAULT NULL,
  `GIA_THUONG` float(8,2) DEFAULT NULL,
  `DVT` varchar(100) COLLATE utf16_bin DEFAULT NULL,
  PRIMARY KEY (`MA_THUOC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `thuoc_loai_nv`
--

CREATE TABLE IF NOT EXISTS `thuoc_loai_nv` (
  `MA_LOAI_NV` char(5) COLLATE utf16_bin NOT NULL,
  `MSNV` char(5) COLLATE utf16_bin NOT NULL,
  `THOI_DIEM` datetime NOT NULL,
  PRIMARY KEY (`MA_LOAI_NV`,`MSNV`),
  KEY `FK_THUOC_LOAI_NV2` (`MSNV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `tiep_nhan`
--

CREATE TABLE IF NOT EXISTS `tiep_nhan` (
  `MSNV` char(5) COLLATE utf16_bin NOT NULL,
  `MSBN` char(10) COLLATE utf16_bin NOT NULL,
  `TD_TIEP_NHAN` datetime NOT NULL,
  `DIEN_GIAI` text COLLATE utf16_bin,
  PRIMARY KEY (`MSNV`,`MSBN`),
  KEY `FK_TIEP_NHAN2` (`MSBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

-- --------------------------------------------------------

--
-- Table structure for table `trinh_do_hoc_van`
--

CREATE TABLE IF NOT EXISTS `trinh_do_hoc_van` (
  `TEN_TRINH_DO` varchar(50) COLLATE utf16_bin NOT NULL,
  PRIMARY KEY (`TEN_TRINH_DO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bao_hiem`
--
ALTER TABLE `bao_hiem`
  ADD CONSTRAINT `FK_THUOC_LOAI` FOREIGN KEY (`MA_LOAI_BH`) REFERENCES `loai_bao_hiem` (`MA_LOAI_BH`),
  ADD CONSTRAINT `FK_NV_CO_BH` FOREIGN KEY (`MSNV`) REFERENCES `nhan_vien` (`MSNV`);

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
  ADD CONSTRAINT `FK_CO_TRINH_DO2` FOREIGN KEY (`MSNV`) REFERENCES `nhan_vien` (`MSNV`),
  ADD CONSTRAINT `FK_CO_TRINH_DO` FOREIGN KEY (`TEN_TRINH_DO`) REFERENCES `trinh_do_hoc_van` (`TEN_TRINH_DO`);

--
-- Constraints for table `ct_don_thuoc`
--
ALTER TABLE `ct_don_thuoc`
  ADD CONSTRAINT `FK_CT_DON_THUOC2` FOREIGN KEY (`ID_DON_THUOC`) REFERENCES `don_thuoc` (`ID_DON_THUOC`),
  ADD CONSTRAINT `FK_CT_DON_THUOC` FOREIGN KEY (`MA_THUOC`) REFERENCES `thuoc` (`MA_THUOC`);

--
-- Constraints for table `ct_kham_dv`
--
ALTER TABLE `ct_kham_dv`
  ADD CONSTRAINT `FK_CT_KHAM_DV2` FOREIGN KEY (`ID_KHAM`) REFERENCES `kham` (`ID_KHAM`),
  ADD CONSTRAINT `FK_CT_KHAM_DV` FOREIGN KEY (`MSDV`) REFERENCES `dv_y_te` (`MSDV`);

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
  ADD CONSTRAINT `FK_HE_SO_LUONG2` FOREIGN KEY (`TEN_TRINH_DO`) REFERENCES `trinh_do_hoc_van` (`TEN_TRINH_DO`),
  ADD CONSTRAINT `FK_HE_SO_LUONG` FOREIGN KEY (`MACV`) REFERENCES `chuc_vu` (`MACV`);

--
-- Constraints for table `kham`
--
ALTER TABLE `kham`
  ADD CONSTRAINT `FK_KHAM_CO_BHYT` FOREIGN KEY (`MS_BH_BN`) REFERENCES `bhyt` (`MS_BH_BN`),
  ADD CONSTRAINT `FK_BN_DUOC_KHAM` FOREIGN KEY (`MSBN`) REFERENCES `benh_nhan` (`MSBN`),
  ADD CONSTRAINT `FK_BS_KHAM` FOREIGN KEY (`MSNV`) REFERENCES `nhan_vien` (`MSNV`),
  ADD CONSTRAINT `FK_KHAM_BENH` FOREIGN KEY (`MS_BENH`) REFERENCES `benh` (`MS_BENH`);

--
-- Constraints for table `luong_cb`
--
ALTER TABLE `luong_cb`
  ADD CONSTRAINT `FK_THOI_DIEM_KT` FOREIGN KEY (`THOI_DIEM_KT_HIEU_LUC`) REFERENCES `thoi_diem` (`THOI_DIEM_HIEU_LUC`),
  ADD CONSTRAINT `FK_THOI_DIEM_BD` FOREIGN KEY (`THOI_DIEM_BD_HIEU_LUC`) REFERENCES `thoi_diem` (`THOI_DIEM_HIEU_LUC`);

--
-- Constraints for table `nv_co_cv`
--
ALTER TABLE `nv_co_cv`
  ADD CONSTRAINT `FK_NV_CO_CV3` FOREIGN KEY (`MSNV`) REFERENCES `nhan_vien` (`MSNV`),
  ADD CONSTRAINT `FK_NV_CO_CV` FOREIGN KEY (`MACV`) REFERENCES `chuc_vu` (`MACV`),
  ADD CONSTRAINT `FK_NV_CO_CV2` FOREIGN KEY (`MA_BP`) REFERENCES `bo_phan` (`MA_BP`);

--
-- Constraints for table `phong_benh`
--
ALTER TABLE `phong_benh`
  ADD CONSTRAINT `FK_CO_PHONG_BENH` FOREIGN KEY (`MADV`) REFERENCES `don_vi` (`MADV`);

--
-- Constraints for table `phu_cap_cv`
--
ALTER TABLE `phu_cap_cv`
  ADD CONSTRAINT `FK_PHU_CAP_CV2` FOREIGN KEY (`THOI_DIEM_HIEU_LUC`) REFERENCES `thoi_diem` (`THOI_DIEM_HIEU_LUC`),
  ADD CONSTRAINT `FK_PHU_CAP_CV` FOREIGN KEY (`MACV`) REFERENCES `chuc_vu` (`MACV`);

--
-- Constraints for table `thuoc_loai_nv`
--
ALTER TABLE `thuoc_loai_nv`
  ADD CONSTRAINT `FK_THUOC_LOAI_NV2` FOREIGN KEY (`MSNV`) REFERENCES `nhan_vien` (`MSNV`),
  ADD CONSTRAINT `FK_THUOC_LOAI_NV` FOREIGN KEY (`MA_LOAI_NV`) REFERENCES `loai_nv` (`MA_LOAI_NV`);

--
-- Constraints for table `tiep_nhan`
--
ALTER TABLE `tiep_nhan`
  ADD CONSTRAINT `FK_TIEP_NHAN2` FOREIGN KEY (`MSBN`) REFERENCES `benh_nhan` (`MSBN`),
  ADD CONSTRAINT `FK_TIEP_NHAN` FOREIGN KEY (`MSNV`) REFERENCES `nhan_vien` (`MSNV`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
