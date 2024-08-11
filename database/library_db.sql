-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2024 at 06:51 PM
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
-- Database: `library_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`email`, `password`) VALUES
('admin123@gmail.com', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `e_book`
--

CREATE TABLE `e_book` (
  `CALLNO` varchar(100) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `AUTHOR` varchar(200) NOT NULL,
  `PUBLISHER` varchar(200) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `ISSUED` int(11) NOT NULL,
  `ADDED_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `e_book`
--

INSERT INTO `e_book` (`CALLNO`, `NAME`, `AUTHOR`, `PUBLISHER`, `QUANTITY`, `ISSUED`, `ADDED_DATE`) VALUES
('a@123', 'zha', 'anbs', 'sbs', 2, 3, '2024-06-26'),
('A@4', 'Java', 'Abbas', 'Sushant Kumar', 4, 3, '2024-06-12'),
('B@2', 'Abbas', 'Rahul', 'Rohan', 12, 11, '2024-06-14'),
('C@12', 'ABCD', 'PPPU', 'GGGG', 67, 76, '2024-06-28'),
('c@32', 'Maahin', 'abced', 'efbdg', 4, 5, '2024-06-12'),
('d@12', 'aaaa', 'bbbb', 'cccc', 12, 11, '2024-06-20'),
('d@123', 'story book', 'Abbas', 'Sushant Kumar', 12, 4, '2024-06-23'),
('d@143', 'Ram', 'atdbd', 'avsns', 23, 34, '2024-06-13'),
('n@123', 'Kalidas', 'pappu', 'Ram', 21, 3, '2024-06-28'),
('n@211', 'asif', 'kumer', 'koli', 6, 8, '2024-08-01'),
('w@123', 'admin', 'pappu', 'GGGG', 3, 6, '2024-06-27');

-- --------------------------------------------------------

--
-- Table structure for table `e_issuedbook`
--

CREATE TABLE `e_issuedbook` (
  `CALLNO` varchar(100) NOT NULL,
  `STUDENTID` int(11) NOT NULL,
  `STUDENTNAME` varchar(100) NOT NULL,
  `STUDENTCONTRACT` varchar(100) NOT NULL,
  `ISSUEDDATE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `e_issuedbook`
--

INSERT INTO `e_issuedbook` (`CALLNO`, `STUDENTID`, `STUDENTNAME`, `STUDENTCONTRACT`, `ISSUEDDATE`) VALUES
('c@32', 12, 'Maahin', '628195334', '2024-06-12'),
('B@2', 23, 'SOMA', '6212345678', '2024-06-12'),
('C@12', 25, 'titly', '123426784', '2024-06-20'),
('d@123', 66, 'Mahikhan', '6212345677', '2024-06-29'),
('A@4', 555, 'abbas', '6212345678', '2024-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `e_librarian`
--

CREATE TABLE `e_librarian` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `PASSWORD` varchar(200) NOT NULL,
  `EMAIL` varchar(200) NOT NULL,
  `ADDRESS` varchar(200) NOT NULL,
  `CITY` varchar(200) NOT NULL,
  `MOBILE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `e_librarian`
--

INSERT INTO `e_librarian` (`ID`, `NAME`, `PASSWORD`, `EMAIL`, `ADDRESS`, `CITY`, `MOBILE`) VALUES
(2, 'jasmina', 'jas123', 'jasmina123@gmail.com', 'newtown', 'elrue', '6294006578'),
(4, 'Asif ali', 'asif123', 'asif12@gmail.com', '91b Road Kolkata', 'Kolkata', '3839239272'),
(56, 'abbas', '1234567', 'abbas@gmail.com', 'newtown', 'rajarhat', '980438291');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `e_book`
--
ALTER TABLE `e_book`
  ADD PRIMARY KEY (`CALLNO`);

--
-- Indexes for table `e_issuedbook`
--
ALTER TABLE `e_issuedbook`
  ADD PRIMARY KEY (`STUDENTID`);

--
-- Indexes for table `e_librarian`
--
ALTER TABLE `e_librarian`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `e_librarian`
--
ALTER TABLE `e_librarian`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
