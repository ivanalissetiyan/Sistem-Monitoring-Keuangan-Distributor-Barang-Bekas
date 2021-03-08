-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2020 at 05:26 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sanriyajaya`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_besi`
--

CREATE TABLE `tb_besi` (
  `id_besi` int(11) NOT NULL,
  `uri_brg` varchar(100) NOT NULL,
  `tmpt_brg` varchar(100) NOT NULL,
  `tgl_brg` date NOT NULL,
  `masuk` int(11) NOT NULL,
  `keluar` int(11) NOT NULL,
  `jenis` enum('masuk','keluar','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_besi`
--

INSERT INTO `tb_besi` (`id_besi`, `uri_brg`, `tmpt_brg`, `tgl_brg`, `masuk`, `keluar`, `jenis`) VALUES
(1, 'Barang nya masih bagus dan masih layak di pakai', 'PT Mouse Jaya, Punggur', '2020-11-24', 100000, 0, 'masuk');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kardus`
--

CREATE TABLE `tb_kardus` (
  `id_krds` int(11) NOT NULL,
  `uri_brg` varchar(100) NOT NULL,
  `tmpt_brg` varchar(100) NOT NULL,
  `tgl_brg` date NOT NULL,
  `masuk` int(11) NOT NULL,
  `keluar` int(11) NOT NULL,
  `jenis` enum('masuk','keluar','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kardus`
--

INSERT INTO `tb_kardus` (`id_krds`, `uri_brg`, `tmpt_brg`, `tgl_brg`, `masuk`, `keluar`, `jenis`) VALUES
(1, 'Kardus ini akan di daur ulang 1 bulan kemudian', 'Batu Ampar, di indomaret', '2020-11-24', 50000, 0, 'masuk'),
(2, 'kardus masih layak di pakai', 'Batu Aji', '2020-11-24', 500000, 0, 'masuk'),
(4, 'kardus masih bagus', 'Alfamart Tembesi', '2020-11-24', 250000, 0, 'masuk'),
(6, 'Kardus yang harus dikeluarkaan', 'PT Santiya Jaya Abadi', '0000-00-00', 0, 230000, 'keluar');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_pengguna` char(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `level` enum('Administrator','Akuntansi','Manager','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id_pengguna`, `nama_pengguna`, `username`, `password`, `level`) VALUES
(1, 'agus maidi', 'agus', 'akuntansi', 'Akuntansi'),
(2, 'muhammad agus maidi', 'agusmaidi', 'admin', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tb_plastik`
--

CREATE TABLE `tb_plastik` (
  `id_plastik` int(11) NOT NULL,
  `uri_brg` varchar(100) NOT NULL,
  `tmpt_brg` varchar(100) NOT NULL,
  `tgl_brg` date NOT NULL,
  `masuk` int(11) NOT NULL,
  `keluar` int(11) NOT NULL,
  `jenis` enum('masuk','keluar','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_plastik`
--

INSERT INTO `tb_plastik` (`id_plastik`, `uri_brg`, `tmpt_brg`, `tgl_brg`, `masuk`, `keluar`, `jenis`) VALUES
(1, 'Plastik yang dapat di daur ulang', 'Tanjung Piayu', '2020-11-24', 150000, 0, 'masuk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_besi`
--
ALTER TABLE `tb_besi`
  ADD PRIMARY KEY (`id_besi`);

--
-- Indexes for table `tb_kardus`
--
ALTER TABLE `tb_kardus`
  ADD PRIMARY KEY (`id_krds`);

--
-- Indexes for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `tb_plastik`
--
ALTER TABLE `tb_plastik`
  ADD PRIMARY KEY (`id_plastik`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_besi`
--
ALTER TABLE `tb_besi`
  MODIFY `id_besi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_kardus`
--
ALTER TABLE `tb_kardus`
  MODIFY `id_krds` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_plastik`
--
ALTER TABLE `tb_plastik`
  MODIFY `id_plastik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
