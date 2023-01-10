-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2023 at 05:12 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lagunahillsdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `homeownerdb`
--

CREATE TABLE `homeownerdb` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `age` int(10) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homeownerdb`
--

INSERT INTO `homeownerdb` (`id`, `firstname`, `lastname`, `age`, `address`) VALUES
(1, 'Gmark', 'De cuz', 22, 'BLK 100 LOT 99 PHASE 7'),
(2, 'Dyan Reynah', 'Pampie', 22, 'BLK 88 LOT 7 PHASE 5'),
(3, 'Mark Anthony', 'Pako', 22, 'BLK 76 LOT 6 PHASE 4'),
(4, 'Vennays', 'Cosina', 18, 'BLK 13 LOT 3 PHASE 1'),
(5, 'Manny', 'Pangilinan', 35, 'BLK 67 LOT 2 PHASE 2'),
(6, 'El Vincent', 'Monday', 23, 'BLK 44 LOT 5 PHASE 2'),
(7, 'Ana Reyna', 'Tyler', 40, 'BLK 57 LOT 4 PHASE 5'),
(8, 'Ron marie', 'De Joselito', 24, 'BLK 91 LOT 2 PHASE 2'),
(9, 'Benty', 'Maduga', 67, 'BLK 88 LOT 4 PHASE 3'),
(10, 'Maya Tarah', 'Kapeh', 18, 'BLK 17 LOT 7 PHASE 3');

-- --------------------------------------------------------

--
-- Table structure for table `homeownerdb2`
--

CREATE TABLE `homeownerdb2` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `age` int(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homeownerdb2`
--

INSERT INTO `homeownerdb2` (`id`, `firstname`, `lastname`, `age`, `address`, `created_at`) VALUES
(1, 'Gmark', 'De cuz', 22, 'BLK 100 LOT 99 PHASE 7', '2022-11-30 06:00:24'),
(2, 'Dyan Reynah', 'Pampie', 22, 'BLK 88 LOT 7 PHASE 5', '2022-11-30 06:00:24'),
(3, 'Mark Anthony', 'Pako', 22, 'BLK 76 LOT 6 PHASE 4', '2022-11-30 06:00:24'),
(4, 'Vennays', 'Cosina', 18, 'BLK 13 LOT 3 PHASE 1', '2022-11-30 06:00:24'),
(5, 'Manny', 'Pangilinan', 35, 'BLK 67 LOT 2 PHASE 2', '2022-11-30 06:00:24'),
(6, 'El Vincent', 'Monday', 23, 'BLK 44 LOT 5 PHASE 2', '2022-11-30 06:00:24'),
(7, 'Ana Reyna', 'Tyler', 40, 'BLK 57 LOT 4 PHASE 5', '2022-11-30 06:00:24'),
(8, 'Ron marie', 'De Joselito', 24, 'BLK 91 LOT 2 PHASE 2', '2022-11-30 06:00:24'),
(9, 'Benty', 'Maduga', 67, 'BLK 88 LOT 4 PHASE 3', '2022-11-30 06:00:24'),
(10, 'Maya Tarah', 'Kapeh', 18, 'BLK 17 LOT 7 PHASE 3', '2022-11-30 06:00:24'),
(11, 'marites', 'nako', 32, 'BLK 18 LOT 6 PHASE 3', '2022-11-30 06:28:49'),
(12, 'SALAMAT', 'SHOPEEE', 56, 'BLK 78 LOT 55 PHASE 11', '2022-11-30 06:29:42'),
(13, 'isapa', 'please', 16, 'BLK 90 LOT 7 PHASE 6', '2022-11-30 06:30:52'),
(14, 'anadah', 'one', 45, 'BLK 88 LOT 5 PHASE 2', '2022-11-30 06:32:02'),
(15, 'bing', 'chilling', 25, 'BLK 77 LOT 11 PHASE 7', '2022-11-30 06:40:24'),
(16, 'Hey', 'CallMeMaybe', 28, 'BLK 100 LOT 6 PHASE 2', '2022-11-30 06:41:36'),
(17, '123', 'ASAWANIMARI', 99, 'BLK 22 LOT 2 PHASE 2', '2022-11-30 06:44:10'),
(18, 'drink', 'palagi', 37, 'BLK 99 LOT 7 PHASE 6', '2022-11-30 06:57:06'),
(19, 'TQWE', 'ASGE', 12, 'BLK 18 LOT 6 PHASE 4', '2022-11-30 07:00:04'),
(20, 'MANG', 'THOMAS', 76, 'BLK 90 LOT 6 PHASE 5', '2022-11-30 07:28:42'),
(21, 'BENG BENG', 'Chelleng', 30, 'BLK 44 LOT 9 PHASE 6', '2022-11-30 07:35:21'),
(22, 'HOY', 'BULOY', 88, 'BLK 199 LOT 8 PHASE 7', '2022-11-30 07:37:09'),
(23, 'ino', 'mari', 22, 'BLK 82 LOT 2 PHASE 5', '2022-12-04 06:55:40');

-- --------------------------------------------------------

--
-- Table structure for table `homeownerdb3`
--

CREATE TABLE `homeownerdb3` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `age` int(10) NOT NULL,
  `gender` int(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homeownerdb3`
--

INSERT INTO `homeownerdb3` (`id`, `firstname`, `lastname`, `age`, `gender`, `address`, `created_at`) VALUES
(1, 'Gmark', 'De cuz', 22, 0, 'BLK 100 LOT 99 PHASE 7', '2022-11-30 06:00:24'),
(2, 'Dyan Reynah', 'Pampie', 22, 0, 'BLK 88 LOT 7 PHASE 5', '2022-11-30 06:00:24'),
(3, 'Mark Anthony', 'Pako', 22, 0, 'BLK 76 LOT 6 PHASE 4', '2022-11-30 06:00:24'),
(4, 'Vennays', 'Cosina', 18, 0, 'BLK 13 LOT 3 PHASE 1', '2022-11-30 06:00:24'),
(5, 'Manny', 'Pangilinan', 35, 0, 'BLK 67 LOT 2 PHASE 2', '2022-11-30 06:00:24'),
(6, 'El Vincent', 'Monday', 23, 0, 'BLK 44 LOT 5 PHASE 2', '2022-11-30 06:00:24'),
(7, 'Ana Reyna', 'Tyler', 40, 0, 'BLK 57 LOT 4 PHASE 5', '2022-11-30 06:00:24'),
(8, 'Ron marie', 'De Joselito', 24, 0, 'BLK 91 LOT 2 PHASE 2', '2022-11-30 06:00:24'),
(9, 'Benty', 'Maduga', 67, 0, 'BLK 88 LOT 4 PHASE 3', '2022-11-30 06:00:24'),
(10, 'Maya Tarah', 'Kapeh', 18, 0, 'BLK 17 LOT 7 PHASE 3', '2022-11-30 06:00:24'),
(11, 'marites', 'nako', 32, 0, 'BLK 18 LOT 6 PHASE 3', '2022-11-30 06:28:49'),
(12, 'SALAMAT', 'SHOPEEE', 56, 0, 'BLK 78 LOT 55 PHASE 11', '2022-11-30 06:29:42'),
(13, 'isapa', 'please', 16, 0, 'BLK 90 LOT 7 PHASE 6', '2022-11-30 06:30:52'),
(14, 'anadah', 'one', 45, 0, 'BLK 88 LOT 5 PHASE 2', '2022-11-30 06:32:02'),
(15, 'bing', 'chilling', 25, 0, 'BLK 77 LOT 11 PHASE 7', '2022-11-30 06:40:24'),
(16, 'Hey', 'CallMeMaybe', 28, 0, 'BLK 100 LOT 6 PHASE 2', '2022-11-30 06:41:36'),
(17, '123', 'ASAWANIMARI', 99, 0, 'BLK 22 LOT 2 PHASE 2', '2022-11-30 06:44:10'),
(18, 'drink', 'palagi', 37, 0, 'BLK 99 LOT 7 PHASE 6', '2022-11-30 06:57:06'),
(19, 'TQWE', 'ASGE', 12, 0, 'BLK 18 LOT 6 PHASE 4', '2022-11-30 07:00:04'),
(20, 'MANG', 'THOMAS', 76, 0, 'BLK 90 LOT 6 PHASE 5', '2022-11-30 07:28:42'),
(21, 'BENG BENG', 'Chelleng', 30, 0, 'BLK 44 LOT 9 PHASE 6', '2022-11-30 07:35:21'),
(22, 'HOY', 'BULOY', 88, 0, 'BLK 199 LOT 8 PHASE 7', '2022-11-30 07:37:09'),
(23, 'ino', 'mari', 22, 0, 'BLK 82 LOT 2 PHASE 5', '2022-12-04 06:55:40'),
(24, 'OPEN', 'CLOSE', 22, 0, 'BLK 80 LOT 2 PHASE 2', '2022-12-04 13:59:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `homeownerdb`
--
ALTER TABLE `homeownerdb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homeownerdb2`
--
ALTER TABLE `homeownerdb2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homeownerdb3`
--
ALTER TABLE `homeownerdb3`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `homeownerdb`
--
ALTER TABLE `homeownerdb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `homeownerdb2`
--
ALTER TABLE `homeownerdb2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `homeownerdb3`
--
ALTER TABLE `homeownerdb3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
