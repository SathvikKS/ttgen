-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 08, 2022 at 04:23 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Timetable_generator`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE `Admin` (
  `a_id` varchar(10) NOT NULL,
  `a_name` varchar(20) NOT NULL,
  `a_pass` varchar(10) NOT NULL DEFAULT 'ad001'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`a_id`, `a_name`, `a_pass`) VALUES
('AD01', 'Peter', 'ad001');

-- --------------------------------------------------------

--
-- Table structure for table `Course`
--

CREATE TABLE `Course` (
  `c_id` varchar(10) NOT NULL,
  `c_name` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Course`
--

INSERT INTO `Course` (`c_id`, `c_name`, `semester`) VALUES
('CS01', 'DBMS', 5),
('CS02', 'CNS', 5),
('CS03', 'DS', 3),
('CS04', 'ADE', 3),
('CS05', 'OS', 7),
('CS06', 'ELE', 7),
('CS07', 'UP', 5),
('CS08', 'ADP', 5),
('CS09', 'CN LAB', 5),
('CS10', 'DB LAB', 5),
('CS11', 'DMS', 3),
('CS12', 'ADE LAB', 3),
('CS13', 'DS LAB', 3),
('CS14', 'OS LAB', 7),
('CS15', 'ELE LAB', 7),
('CS16', 'EME', 7);

-- --------------------------------------------------------

--
-- Table structure for table `Grievance`
--

CREATE TABLE `Grievance` (
  `grv_id` varchar(10) NOT NULL,
  `issue` text NOT NULL,
  `solution taken` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Guest`
--

CREATE TABLE `Guest` (
  `g_id` varchar(10) NOT NULL,
  `g_name` varchar(20) NOT NULL,
  `topic` varchar(30) NOT NULL,
  `phno` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Guest`
--

INSERT INTO `Guest` (`g_id`, `g_name`, `topic`, `phno`) VALUES
('GS01', 'Sam', 'Network Security', 10923435),
('GS02', 'John', 'Big Data', 20214325);

-- --------------------------------------------------------

--
-- Table structure for table `Login`
--

CREATE TABLE `Login` (
  `L_id` varchar(10) NOT NULL,
  `L_pass` varchar(10) NOT NULL DEFAULT 'ad001'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Login`
--

INSERT INTO `Login` (`L_id`, `L_pass`) VALUES
('AD01', 'ad001'),
('CR01', 'ad001'),
('CR02', 'ad001'),
('CR03', 'ad001'),
('CR04', 'ad001'),
('CR05', 'ad001'),
('CR06', 'ad001'),
('ST01', 'ad001'),
('ST02', 'ad001'),
('ST03', 'ad001'),
('ST04', 'ad001'),
('ST05', 'ad001');

-- --------------------------------------------------------

--
-- Table structure for table `Staff`
--

CREATE TABLE `Staff` (
  `s_id` varchar(10) NOT NULL,
  `c_id` varchar(10) NOT NULL,
  `s_name` varchar(20) NOT NULL,
  `adv_id` varchar(10) NOT NULL,
  `section` varchar(3) NOT NULL,
  `s_pass` varchar(10) NOT NULL DEFAULT 'ad001'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Staff`
--

INSERT INTO `Staff` (`s_id`, `c_id`, `s_name`, `adv_id`, `section`, `s_pass`) VALUES
('ST01', 'CS01', 'Annabella', '', '5A', 'ad001'),
('ST02', 'CS02', 'Mark', '', '5B', 'ad001'),
('ST02', 'CS05', 'Annabella', '', '5B', 'ad001'),
('ST02', 'CS09', 'Mark', '', '5A', 'ad001'),
('ST03', 'CS03', 'Steven', '', '3A', 'ad001'),
('ST04', 'CS07', 'Ram', '', '5B', 'ad001'),
('ST04', 'CS15', 'Ram', '', '7B', 'ad001'),
('ST05', 'CS04', 'Julia', '', '3A', 'ad001'),
('ST05', 'CS06', 'Julia', '', '7A', 'ad001'),
('ST05', 'CS11', 'Julia', '', '3B', 'ad001');

-- --------------------------------------------------------

--
-- Table structure for table `Student`
--

CREATE TABLE `Student` (
  `st_id` varchar(10) NOT NULL,
  `s_name` varchar(20) NOT NULL,
  `section` varchar(3) NOT NULL,
  `semester` int(11) NOT NULL,
  `st_pass` varchar(10) NOT NULL DEFAULT 'ad001'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Student`
--

INSERT INTO `Student` (`st_id`, `s_name`, `section`, `semester`, `st_pass`) VALUES
('CR01', 'Samuel', '3A', 3, 'ad001'),
('CR02', 'Jenny', '3B', 3, 'ad001'),
('CR03', 'Lisa', '5A', 5, 'ad001'),
('CR04', 'Jackson', '5B', 5, 'ad001'),
('CR05', 'Mason', '7A', 7, 'ad001'),
('CR06', 'Nathan', '7B', 7, 'ad001');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `Course`
--
ALTER TABLE `Course`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `Grievance`
--
ALTER TABLE `Grievance`
  ADD PRIMARY KEY (`grv_id`);

--
-- Indexes for table `Guest`
--
ALTER TABLE `Guest`
  ADD PRIMARY KEY (`g_id`);

--
-- Indexes for table `Login`
--
ALTER TABLE `Login`
  ADD PRIMARY KEY (`L_id`);

--
-- Indexes for table `Staff`
--
ALTER TABLE `Staff`
  ADD PRIMARY KEY (`s_id`,`c_id`),
  ADD KEY `staff_ibfk_2` (`c_id`);

--
-- Indexes for table `Student`
--
ALTER TABLE `Student`
  ADD PRIMARY KEY (`st_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Admin`
--
ALTER TABLE `Admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `Login` (`L_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Staff`
--
ALTER TABLE `Staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `Login` (`L_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `Course` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Student`
--
ALTER TABLE `Student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`st_id`) REFERENCES `Login` (`L_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
