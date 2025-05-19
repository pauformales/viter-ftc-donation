-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2025 at 12:56 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `viter_ftc_donation_v1`
--

-- --------------------------------------------------------

--
-- Table structure for table `ftcd_settings_designation`
--

CREATE TABLE `ftcd_settings_designation` (
  `designation_aid` int(11) NOT NULL,
  `designation_is_active` tinyint(1) NOT NULL,
  `designation_name` varchar(128) NOT NULL,
  `designation_category_id` int(11) NOT NULL,
  `designation_created` datetime NOT NULL,
  `designation_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ftcd_settings_designation`
--

INSERT INTO `ftcd_settings_designation` (`designation_aid`, `designation_is_active`, `designation_name`, `designation_category_id`, `designation_created`, `designation_updated`) VALUES
(9, 1, 'sample', 67, '2025-05-14 07:19:48', '2025-05-15 07:02:10'),
(10, 1, 'sample', 65, '2025-05-14 09:23:50', '2025-05-14 12:49:00'),
(11, 1, 'SAMPLE2', 59, '2025-05-14 09:24:24', '2025-05-15 07:20:56'),
(12, 1, 'SAMPLE2', 59, '2025-05-14 09:25:01', '2025-05-14 10:07:47'),
(13, 1, 'SAMPLE3', 59, '2025-05-14 09:25:32', '2025-05-14 11:49:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ftcd_settings_designation`
--
ALTER TABLE `ftcd_settings_designation`
  ADD PRIMARY KEY (`designation_aid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ftcd_settings_designation`
--
ALTER TABLE `ftcd_settings_designation`
  MODIFY `designation_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
