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
-- Table structure for table `ftcd_settings_notification`
--

CREATE TABLE `ftcd_settings_notification` (
  `notification_aid` int(11) NOT NULL,
  `notification_is_active` tinyint(1) NOT NULL,
  `notification_name` varchar(128) NOT NULL,
  `notification_email` varchar(128) NOT NULL,
  `notification_purpose` varchar(128) NOT NULL,
  `notification_created` datetime NOT NULL,
  `notification_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ftcd_settings_notification`
--

INSERT INTO `ftcd_settings_notification` (`notification_aid`, `notification_is_active`, `notification_name`, `notification_email`, `notification_purpose`, `notification_created`, `notification_updated`) VALUES
(1, 1, 'yayan', 'bitch@gmail.com', 'New Donor', '2025-05-14 15:05:28', '2025-05-15 07:31:37'),
(4, 1, 'yayayu', 'nono@gmail.com', 'New Donor', '2025-05-15 07:06:06', '2025-05-15 07:29:11'),
(5, 1, 'gags', 'gags@gmail.com', 'New Donor', '2025-05-15 07:30:29', '2025-05-15 07:31:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ftcd_settings_notification`
--
ALTER TABLE `ftcd_settings_notification`
  ADD PRIMARY KEY (`notification_aid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ftcd_settings_notification`
--
ALTER TABLE `ftcd_settings_notification`
  MODIFY `notification_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
