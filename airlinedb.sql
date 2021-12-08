-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2021 at 07:31 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airlinedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookingtbl`
--

CREATE TABLE `bookingtbl` (
  `TicketId` int(11) NOT NULL,
  `PName` varchar(20) NOT NULL,
  `FlCode` varchar(20) NOT NULL,
  `PGen` varchar(10) NOT NULL,
  `PPass` varchar(20) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Nationality` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookingtbl`
--

INSERT INTO `bookingtbl` (`TicketId`, `PName`, `FlCode`, `PGen`, `PPass`, `Amount`, `Nationality`) VALUES
(1, 'Al', 'PK9909', 'Male', 'AXN009', 22560, 'Pakistani');

-- --------------------------------------------------------

--
-- Table structure for table `cancellationtbl`
--

CREATE TABLE `cancellationtbl` (
  `CancId` int(11) NOT NULL,
  `TickId` int(11) NOT NULL,
  `FlCode` varchar(20) NOT NULL,
  `CancDate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cancellationtbl`
--

INSERT INTO `cancellationtbl` (`CancId`, `TickId`, `FlCode`, `CancDate`) VALUES
(1, 2, 'PK9909', 'Thu Dec 16 01:57:19 PKT 2021'),
(2, 2, 'PK9909', 'Mon Dec 06 00:00:00 PKT 2021'),
(3, 2, 'PK9909', 'Mon Dec 06 02:06:35 PKT 2021');

-- --------------------------------------------------------

--
-- Table structure for table `flighttbl`
--

CREATE TABLE `flighttbl` (
  `FlCode` varchar(10) NOT NULL,
  `FlSource` varchar(20) NOT NULL,
  `FlDest` varchar(20) NOT NULL,
  `FlDate` varchar(50) NOT NULL,
  `FlSeats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flighttbl`
--

INSERT INTO `flighttbl` (`FlCode`, `FlSource`, `FlDest`, `FlDate`, `FlSeats`) VALUES
('AB007', 'Karachi', 'Skardu', 'Wed Dec 08 02:41:46 PKT 2021', 4),
('PK9909', 'Karachi', 'Lahore', 'Fri Dec 23 00:00:00 PKT 2022', 2);

-- --------------------------------------------------------

--
-- Table structure for table `passengerstbl`
--

CREATE TABLE `passengerstbl` (
  `PId` int(11) NOT NULL,
  `PName` varchar(20) NOT NULL,
  `PNat` varchar(15) NOT NULL,
  `PGen` varchar(10) NOT NULL,
  `PPass` varchar(20) NOT NULL,
  `PPhone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passengerstbl`
--

INSERT INTO `passengerstbl` (`PId`, `PName`, `PNat`, `PGen`, `PPass`, `PPhone`) VALUES
(1, 'Al', 'Pakistani', 'Male', 'AXN009', '0335'),
(2, 'Murtaza', 'Pakistani', 'Male', 'AXD00', '0331');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookingtbl`
--
ALTER TABLE `bookingtbl`
  ADD PRIMARY KEY (`TicketId`);

--
-- Indexes for table `cancellationtbl`
--
ALTER TABLE `cancellationtbl`
  ADD PRIMARY KEY (`CancId`);

--
-- Indexes for table `flighttbl`
--
ALTER TABLE `flighttbl`
  ADD PRIMARY KEY (`FlCode`);

--
-- Indexes for table `passengerstbl`
--
ALTER TABLE `passengerstbl`
  ADD PRIMARY KEY (`PId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
