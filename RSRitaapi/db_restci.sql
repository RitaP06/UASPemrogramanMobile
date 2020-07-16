-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2020 at 11:31 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_restci`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_debitur`
--

CREATE TABLE `tb_debitur` (
  `id` int(10) UNSIGNED NOT NULL,
  `foto_ktp_nasabah` text COLLATE utf8_unicode_ci,
  `foto_ktp_pasangan` text COLLATE utf8_unicode_ci,
  `nik` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama` text COLLATE utf8_unicode_ci,
  `jk` enum('L','P') COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_kawin` enum('Belum Kawin','Kawin','Janda','Duda') COLLATE utf8_unicode_ci DEFAULT NULL,
  `tempat_lahir` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `nm_ibu` text COLLATE utf8_unicode_ci,
  `agama` enum('ISLAM','KATOLIK','PROTESTAN','HINDU','BUDHA','KEPERCAYAAN') COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_hp` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bidang_usaha` text COLLATE utf8_unicode_ci,
  `bidang_usaha_lain` text COLLATE utf8_unicode_ci,
  `nik_pasangan` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama_pasangan` text COLLATE utf8_unicode_ci,
  `jk_pasangan` enum('L','P') COLLATE utf8_unicode_ci DEFAULT NULL,
  `tgl_lahir_pasangan` date DEFAULT NULL,
  `tanggungan` int(11) DEFAULT NULL,
  `alamat` text COLLATE utf8_unicode_ci,
  `rt` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rw` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kodepos` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prov` text COLLATE utf8_unicode_ci,
  `kota` text COLLATE utf8_unicode_ci,
  `kec` text COLLATE utf8_unicode_ci,
  `kel` text COLLATE utf8_unicode_ci,
  `alamat_pasangan` text COLLATE utf8_unicode_ci,
  `rt_pasangan` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rw_pasangan` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kodepos_pasangan` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prov_pasangan` text COLLATE utf8_unicode_ci,
  `kota_pasangan` text COLLATE utf8_unicode_ci,
  `kec_pasangan` text COLLATE utf8_unicode_ci,
  `kel_pasangan` text COLLATE utf8_unicode_ci,
  `pekerjaan` enum('Karyawan Swasta','Pegawai Negeri Sipil','Wirausaha','Lainnya') COLLATE utf8_unicode_ci DEFAULT NULL,
  `gelar` text COLLATE utf8_unicode_ci,
  `fasilitas_pinj` text COLLATE utf8_unicode_ci,
  `penghasilan` text COLLATE utf8_unicode_ci,
  `user_id` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_debitur`
--

INSERT INTO `tb_debitur` (`id`, `foto_ktp_nasabah`, `foto_ktp_pasangan`, `nik`, `nama`, `jk`, `status_kawin`, `tempat_lahir`, `tgl_lahir`, `nm_ibu`, `agama`, `no_hp`, `email`, `bidang_usaha`, `bidang_usaha_lain`, `nik_pasangan`, `nama_pasangan`, `jk_pasangan`, `tgl_lahir_pasangan`, `tanggungan`, `alamat`, `rt`, `rw`, `kodepos`, `prov`, `kota`, `kec`, `kel`, `alamat_pasangan`, `rt_pasangan`, `rw_pasangan`, `kodepos_pasangan`, `prov_pasangan`, `kota_pasangan`, `kec_pasangan`, `kel_pasangan`, `pekerjaan`, `gelar`, `fasilitas_pinj`, `penghasilan`, `user_id`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mr3g3n');

-- --------------------------------------------------------

--
-- Table structure for table `tb_person`
--

CREATE TABLE `tb_person` (
  `id` int(20) NOT NULL,
  `name` text,
  `address` text,
  `phone` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_person`
--

INSERT INTO `tb_person` (`id`, `name`, `address`, `phone`) VALUES
(4, '1233', 'asda', '3333'),
(5, 'Fhgv', 'Cv ', 'Hhb'),
(6, 'Fhgv', 'Cv ', 'Hhb'),
(7, 'Hxgshjs', 'Svzbmzz', 'Bnznz'),
(8, 'Vjxbxs', 'Bnnsbz', 'Vbvzbz'),
(9, 'Gjzvnkx', ' Nxkx', 'Bnxkx'),
(10, 'Isjskjs', 'Dbdbbd', 'Bzbzb');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tempat_tinggal`
--

CREATE TABLE `tb_tempat_tinggal` (
  `id` int(10) UNSIGNED NOT NULL,
  `foto` text COLLATE utf8_unicode_ci,
  `long` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `maps` text COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `alamat` text COLLATE utf8_unicode_ci,
  `rt` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rw` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kodepos` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prov` text COLLATE utf8_unicode_ci,
  `kota` text COLLATE utf8_unicode_ci,
  `kec` text COLLATE utf8_unicode_ci,
  `kel` text COLLATE utf8_unicode_ci,
  `statusrumah` text COLLATE utf8_unicode_ci,
  `lamatinggal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tempat_usaha`
--

CREATE TABLE `tb_tempat_usaha` (
  `id` int(10) UNSIGNED NOT NULL,
  `foto` text COLLATE utf8_unicode_ci,
  `long` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `map` text COLLATE utf8_unicode_ci,
  `identitas_usaha` text COLLATE utf8_unicode_ci,
  `siup` text COLLATE utf8_unicode_ci,
  `tgl_usaha` date DEFAULT NULL,
  `npwp` text COLLATE utf8_unicode_ci,
  `alamat` text COLLATE utf8_unicode_ci,
  `rt` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rw` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kodepos` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prov` text COLLATE utf8_unicode_ci,
  `kota` text COLLATE utf8_unicode_ci,
  `kec` text COLLATE utf8_unicode_ci,
  `kel` text COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `email`) VALUES
(2, 'mr3g3n', '12345', 'mr3g3n@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_debitur`
--
ALTER TABLE `tb_debitur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_person`
--
ALTER TABLE `tb_person`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tempat_tinggal`
--
ALTER TABLE `tb_tempat_tinggal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tempat_usaha`
--
ALTER TABLE `tb_tempat_usaha`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_debitur`
--
ALTER TABLE `tb_debitur`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_person`
--
ALTER TABLE `tb_person`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_tempat_tinggal`
--
ALTER TABLE `tb_tempat_tinggal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_tempat_usaha`
--
ALTER TABLE `tb_tempat_usaha`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
