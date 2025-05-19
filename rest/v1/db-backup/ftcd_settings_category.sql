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
-- Table structure for table `ftcd_settings_category`
--

CREATE TABLE `ftcd_settings_category` (
  `category_aid` int(11) NOT NULL,
  `category_is_active` tinyint(1) NOT NULL,
  `category_name` varchar(128) NOT NULL,
  `category_description` text NOT NULL,
  `category_created` datetime NOT NULL,
  `category_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ftcd_settings_category`
--

INSERT INTO `ftcd_settings_category` (`category_aid`, `category_is_active`, `category_name`, `category_description`, `category_created`, `category_updated`) VALUES
(52, 1, 'asdsdsa', 'dsdsadsdsad', '2025-05-13 12:53:19', '2025-05-14 12:38:32'),
(59, 0, 'Children Sponsorship', 'sddssdsd', '2025-05-13 12:54:55', '2025-05-14 12:56:14'),
(65, 1, 'baba', 'sss1', '2025-05-13 14:17:33', '2025-05-14 12:40:46'),
(66, 1, 'sasa', 'aaaaa', '2025-05-14 08:07:01', '2025-05-14 12:42:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ftcd_settings_category`
--
ALTER TABLE `ftcd_settings_category`
  ADD PRIMARY KEY (`category_aid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ftcd_settings_category`
--
ALTER TABLE `ftcd_settings_category`
  MODIFY `category_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
