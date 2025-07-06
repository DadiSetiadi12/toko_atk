-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2025 at 10:18 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokoatk1`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` varchar(16) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `jenis` varchar(16) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama`, `jenis`, `harga`) VALUES
('0001', 'pulpen', 'alat tulis', 2000),
('0003', 'penghapus', 'alat tulis', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `salesd`
--

CREATE TABLE `salesd` (
  `id` int(11) NOT NULL,
  `salesId` varchar(16) DEFAULT NULL,
  `barangId` varchar(16) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salesd`
--

INSERT INTO `salesd` (`id`, `salesId`, `barangId`, `qty`, `harga`) VALUES
(1, NULL, '0001', 2, 10000),
(2, NULL, '0002', 12, 1000),
(3, NULL, '0002', 12, 1000),
(4, NULL, '0002', 12, 1000),
(5, NULL, '0001', 12, 1000),
(6, NULL, '0003', 12, 1000),
(7, NULL, '0003', 12, 1000),
(8, NULL, '0003', 12, 1000),
(9, NULL, '0003', 12, 1000),
(10, NULL, '0003', 1000, 12),
(11, NULL, '0001', 1000, 12),
(12, NULL, '0001', 12, 12000),
(13, NULL, '0001', 12, 12000),
(14, NULL, '0001', 12, 12000),
(15, '2506041518041', '0001', 12, 12000),
(16, '2507051355299', '0001', 2, 2000),
(17, '2507051355299', '0002', 1, 20000),
(18, '2507051355299', '0002', 1, 20000),
(19, '2507051411305', '0001', 1, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `salesm`
--

CREATE TABLE `salesm` (
  `id` varchar(16) NOT NULL,
  `waktu` datetime DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salesm`
--

INSERT INTO `salesm` (`id`, `waktu`, `username`) VALUES
('2506101956206', NULL, 'Administrator'),
('2506101956365', NULL, 'Administrator'),
('2506101956580', NULL, 'Administrator'),
('2507051343159', NULL, 'Administrator'),
('2507051347484', NULL, 'Administrator'),
('2507051349585', NULL, 'Administrator'),
('2507051350054', NULL, 'Administrator'),
('2507051353196', NULL, 'Administrator'),
('2507051353306', NULL, 'Administrator'),
('2507051355299', NULL, 'Administrator'),
('2507051411305', NULL, 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `stockd`
--

CREATE TABLE `stockd` (
  `id` int(11) NOT NULL,
  `stockId` varchar(16) DEFAULT NULL,
  `barangId` varchar(16) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stockd`
--

INSERT INTO `stockd` (`id`, `stockId`, `barangId`, `qty`, `harga`) VALUES
(1, '2506111138575', '0001', 1, 10000),
(2, '2507051428073', '0001', 2, 2000),
(3, '2507051430512', '0001', 2, 2000),
(4, '2507051433538', '0001', 2, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `stockm`
--

CREATE TABLE `stockm` (
  `id` varchar(16) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp(),
  `username` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stockm`
--

INSERT INTO `stockm` (`id`, `waktu`, `username`) VALUES
('2506111138575', '2025-07-05 07:33:41', 'admin'),
('2507051428073', '2025-07-05 07:33:41', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `fullname` varchar(30) DEFAULT NULL,
  `password` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `fullname`, `password`) VALUES
('admin', 'Administrator', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salesd`
--
ALTER TABLE `salesd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salesm`
--
ALTER TABLE `salesm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stockd`
--
ALTER TABLE `stockd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stockId` (`stockId`);

--
-- Indexes for table `stockm`
--
ALTER TABLE `stockm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `salesd`
--
ALTER TABLE `salesd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `stockd`
--
ALTER TABLE `stockd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
