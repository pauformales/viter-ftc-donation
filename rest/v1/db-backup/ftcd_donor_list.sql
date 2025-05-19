-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2025 at 12:55 AM
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
-- Table structure for table `ftcd_donor_list`
--

CREATE TABLE `ftcd_donor_list` (
  `donor_list_aid` int(11) NOT NULL,
  `donor_list_is_active` tinyint(1) NOT NULL,
  `donor_list_first_name` varchar(128) NOT NULL,
  `donor_list_last_name` varchar(128) NOT NULL,
  `donor_list_email` varchar(128) NOT NULL,
  `donor_list_contact_number` varchar(20) NOT NULL,
  `donor_list_address` text NOT NULL,
  `donor_list_city` varchar(128) NOT NULL,
  `donor_list_state_province` varchar(128) NOT NULL,
  `donor_list_country` varchar(128) NOT NULL,
  `donor_list_zip` varchar(20) NOT NULL,
  `donor_list_created` datetime NOT NULL,
  `donor_list_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ftcd_donor_list`
--

INSERT INTO `ftcd_donor_list` (`donor_list_aid`, `donor_list_is_active`, `donor_list_first_name`, `donor_list_last_name`, `donor_list_email`, `donor_list_contact_number`, `donor_list_address`, `donor_list_city`, `donor_list_state_province`, `donor_list_country`, `donor_list_zip`, `donor_list_created`, `donor_list_updated`) VALUES
(1, 0, 'testing', 'test', 'test@gmail.com', '0922344555', 'test address', 'testing city', 'testing province', 'testing country', '4000', '2025-05-15 06:41:54', '2025-05-15 06:41:54'),
(2, 1, 'wwww', 'wawawa', 'www@gmail.com', '', 'awawaw', '', '', '', '', '2025-05-15 06:46:07', '2025-05-15 06:46:07'),
(3, 1, 'testing', 'test', 'test@gmail.com', '0922344555', 'test address', 'testing city', 'testing province', 'testing country', '4000', '2025-05-15 06:41:54', '2025-05-15 06:41:54'),
(4, 1, 'wwww', 'wawawa', 'www@gmail.com', '', 'awawaw', '', '', '', '', '2025-05-15 06:46:07', '2025-05-15 06:46:07'),
(5, 1, 'testing', 'test', 'test@gmail.com', '0922344555', 'test address', 'testing city', 'testing province', 'testing country', '4000', '2025-05-15 06:41:54', '2025-05-15 06:41:54'),
(6, 1, 'wwww', 'wawawa', 'www@gmail.com', '', 'awawaw', '', '', '', '', '2025-05-15 06:46:07', '2025-05-15 06:46:07'),
(7, 1, 'testing', 'test', 'test@gmail.com', '0922344555', 'test address', 'testing city', 'testing province', 'testing country', '4000', '2025-05-15 06:41:54', '2025-05-15 06:41:54'),
(8, 1, 'wwww', 'wawawa', 'www@gmail.com', '', 'awawaw', '', '', '', '', '2025-05-15 06:46:07', '2025-05-15 06:46:07'),
(9, 1, 'wwww', 'wawawa', 'www@gmail.com', '', 'awawaw', '', '', '', '', '2025-05-15 06:46:07', '2025-05-15 06:46:07'),
(10, 1, 'testing', 'test', 'test@gmail.com', '0922344555', 'test address', 'testing city', 'testing province', 'testing country', '4000', '2025-05-15 06:41:54', '2025-05-15 06:41:54'),
(11, 1, 'wwww', 'wawawa', 'www@gmail.com', '', 'awawaw', '', '', '', '', '2025-05-15 06:46:07', '2025-05-15 06:46:07'),
(12, 1, 'testing', 'test', 'test@gmail.com', '0922344555', 'test address', 'testing city', 'testing province', 'testing country', '4000', '2025-05-15 06:41:54', '2025-05-15 06:41:54'),
(13, 1, 'wwww', 'wawawa', 'www@gmail.com', '', 'awawaw', '', '', '', '', '2025-05-15 06:46:07', '2025-05-15 06:46:07'),
(14, 1, 'testing', 'test', 'test@gmail.com', '0922344555', 'test address', 'testing city', 'testing province', 'testing country', '4000', '2025-05-15 06:41:54', '2025-05-15 06:41:54'),
(15, 1, 'wwww', 'wawawa', 'www@gmail.com', '', 'awawaw', '', '', '', '', '2025-05-15 06:46:07', '2025-05-15 06:46:07'),
(16, 1, 'testing', 'test', 'test@gmail.com', '0922344555', 'test address', 'testing city', 'testing province', 'testing country', '4000', '2025-05-15 06:41:54', '2025-05-15 06:41:54'),
(17, 1, 'wwww', 'wawawa', 'www@gmail.com', '', 'awawaw', '', '', '', '', '2025-05-15 06:46:07', '2025-05-15 06:46:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ftcd_donor_list`
--
ALTER TABLE `ftcd_donor_list`
  ADD PRIMARY KEY (`donor_list_aid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ftcd_donor_list`
--
ALTER TABLE `ftcd_donor_list`
  MODIFY `donor_list_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
