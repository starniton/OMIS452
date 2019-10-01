-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2019 at 06:21 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ex03`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `ProjectID` int(11) NOT NULL,
  `EmployeeNumber` int(11) NOT NULL,
  `HoursWorked` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`ProjectID`, `EmployeeNumber`, `HoursWorked`) VALUES
(100, 1, '30.00'),
(100, 3, '75.00'),
(100, 16, '75.00'),
(100, 17, '50.00'),
(100, 18, '50.00'),
(100, 19, '30.00'),
(110, 2, '75.00'),
(110, 10, '55.00'),
(110, 11, '55.00'),
(110, 14, '30.00'),
(120, 3, '20.00'),
(120, 6, '40.00'),
(120, 7, '45.00'),
(120, 8, '45.00'),
(130, 3, '25.00'),
(130, 6, '40.00'),
(130, 8, '50.00'),
(130, 9, '50.00'),
(140, 1, '30.00'),
(140, 6, '50.00'),
(140, 10, '50.00'),
(140, 16, '75.00'),
(140, 17, '75.00'),
(150, 1, '30.00'),
(150, 6, '75.00'),
(150, 10, '55.00'),
(150, 11, '55.00'),
(160, 3, '20.00'),
(160, 6, '40.00'),
(160, 7, '45.00'),
(160, 8, '45.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`ProjectID`,`EmployeeNumber`),
  ADD KEY `ASSIGN_EMP_FK` (`EmployeeNumber`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignment`
--
ALTER TABLE `assignment`
  ADD CONSTRAINT `ASSIGN_EMP_FK` FOREIGN KEY (`EmployeeNumber`) REFERENCES `employee` (`EmployeeNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ASSIGN_PROJ_FK` FOREIGN KEY (`ProjectID`) REFERENCES `project` (`ProjectID`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
