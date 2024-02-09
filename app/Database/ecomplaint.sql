-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2024 at 10:51 AM
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
-- Database: `ecomplaint`
--

-- --------------------------------------------------------

--
-- Table structure for table `assign_hardware`
--

CREATE TABLE `assign_hardware` (
  `assign_id` int(10) NOT NULL,
  `uid` int(20) NOT NULL,
  `hardware_id` int(20) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assign_hardware`
--

INSERT INTO `assign_hardware` (`assign_id`, `uid`, `hardware_id`, `dt`, `status`) VALUES
(1, 23, 62, '2023-04-16 09:42:53', 0),
(2, 24, 64, '2023-04-16 09:44:52', 0),
(3, 24, 63, '2023-04-16 09:45:48', 0),
(4, 23, 65, '2023-04-19 13:17:58', 0),
(5, 23, 61, '2023-04-19 13:17:59', 0),
(6, 23, 68, '2023-04-19 13:17:59', 0),
(7, 23, 67, '2023-04-19 13:17:59', 0),
(8, 23, 66, '2023-04-19 13:17:59', 0),
(9, 24, 69, '2023-04-19 13:25:23', 0),
(10, 26, 70, '2023-04-19 13:29:33', 0);

-- --------------------------------------------------------

--
-- Table structure for table `complaint_detail`
--

CREATE TABLE `complaint_detail` (
  `complaint_id` int(20) NOT NULL,
  `complaint` varchar(220) NOT NULL,
  `username` varchar(220) NOT NULL,
  `city` varchar(20) NOT NULL,
  `photo` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaint_detail`
--

INSERT INTO `complaint_detail` (`complaint_id`, `complaint`, `username`, `city`, `photo`) VALUES
(61, '', '138', 'mouse', ''),
(63, 'laptop', '138', 'laptop', ''),
(64, 'desktop', 'Latitude E5580', 'desktop', ''),
(65, 'keyboard', 'Hp3540', 'keyboard', ''),
(66, 'others', '355', 'others', ''),
(67, 'laptop', '355', 'laptop', ''),
(68, 'desktop', '155', 'desktop', ''),
(69, 'laptop', 'Latitude6540', 'laptop', ''),
(70, 'others', 'JBL885', 'others', ''),
(71, 'mouse', '155', 'mouse', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `uid` int(20) NOT NULL COMMENT 'This will store\r\nuser id.',
  `fullname` varchar(120) NOT NULL COMMENT 'This will store\r\nuser full name.',
  `email` varchar(120) NOT NULL COMMENT 'This will store\r\nuser email.',
  `pwd` varchar(220) NOT NULL COMMENT 'This will store\r\nuser\r\npassword.',
  `user_level` int(10) NOT NULL COMMENT 'This will store\r\nuser level.This will store\r\nuser level.This will store\r\nuser level.1 - admin,0 - Employe)',
  `branch` varchar(60) NOT NULL COMMENT 'This will store\r\nbranch of\r\nuser.',
  `position` varchar(30) NOT NULL COMMENT 'This will store\r\nuser position.',
  `photo` varchar(220) NOT NULL COMMENT 'This will store\r\nuser photo.',
  `joining_date` date NOT NULL COMMENT 'This will store\r\nuser joining\r\ndate.',
  `dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'This will store\r\ncreated date',
  `modt` datetime NOT NULL COMMENT 'This will store\r\nlast modified\r\ndate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`uid`, `fullname`, `email`, `pwd`, `user_level`, `branch`, `position`, `photo`, `joining_date`, `dt`, `modt`) VALUES
(22, 'Jack', 'admin@demo.com', '9e285ef5f34736cb0c949511d94046d3', 0, 'Ahmedbad', 'Admin', '1707384782.jpg', '2024-02-10', '2024-02-08 09:33:01', '2022-08-31 12:29:01'),
(23, 'Kalathiya Kirtan ', 'kalathiyakirtan118@gmail.com', 'e7c6274a16b207ddd8906b19ef1339f8', 1, 'Ahmedbad', 'Employee', '1681909459.png', '2023-03-01', '2023-04-19 13:04:18', '0000-00-00 00:00:00'),
(24, 'Akshar  Dobariya', 'akshardobariya000@gmail.com', '87ee1a5bb1db05e9b06addeac244dfb4', 1, 'Rajkot', 'Employee', '150-26.jpg', '2023-03-02', '2023-04-17 13:09:53', '0000-00-00 00:00:00'),
(26, 'Kaushal Bodara', 'kaushalbodara0505@gmail.com', 'aa7b317014bf9d95f7cdf9af66c2ce09', 1, 'Rajkot', 'Employee', '150-26.jpg', '2022-09-02', '2023-03-02 13:47:52', '0000-00-00 00:00:00'),
(30, 'Nirav Kalathiya', 'niravkalathiya000@gmail.com ', '77994f33b305cc02515c057e54640c47', 1, 'Ahmedbad', 'Employee', '150-26.jpg', '2023-04-17', '2023-04-17 14:02:17', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assign_hardware`
--
ALTER TABLE `assign_hardware`
  ADD PRIMARY KEY (`assign_id`),
  ADD KEY `uid_fk` (`uid`),
  ADD KEY `hardware_id` (`hardware_id`);

--
-- Indexes for table `complaint_detail`
--
ALTER TABLE `complaint_detail`
  ADD PRIMARY KEY (`complaint_id`),
  ADD KEY `hardware_id` (`complaint_id`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assign_hardware`
--
ALTER TABLE `assign_hardware`
  MODIFY `assign_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `complaint_detail`
--
ALTER TABLE `complaint_detail`
  MODIFY `complaint_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `uid` int(20) NOT NULL AUTO_INCREMENT COMMENT 'This will store\r\nuser id.', AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
