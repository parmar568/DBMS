-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2024 at 02:29 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mca2024milan`
--

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `Dept_Id` int(11) NOT NULL,
  `Dept_name` varchar(30) NOT NULL,
  `Dept_Location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`Dept_Id`, `Dept_name`, `Dept_Location`) VALUES
(1, 'computer', 'Ahmadabad'),
(2, 'micro biology', 'sadra'),
(3, 'management ', 'randnesa'),
(4, 'man office', 'Ahmadabad');

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(35) NOT NULL,
  `emp_Dept_id` int(11) NOT NULL,
  `emp_boss_id` int(11) NOT NULL,
  `emp_salary` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`emp_id`, `emp_name`, `emp_Dept_id`, `emp_boss_id`, `emp_salary`) VALUES
(101, 'nikhil', 1, 101, 200000),
(102, 'satish', 1, 101, 210000),
(103, 'vinshali', 1, 101, 175000),
(201, 'archana', 2, 201, 200000);

-- --------------------------------------------------------

--
-- Table structure for table `p`
--

CREATE TABLE `p` (
  `pno` char(3) NOT NULL,
  `pname` varchar(30) NOT NULL,
  `color` varchar(10) NOT NULL,
  `weight` float NOT NULL,
  `p_city` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p`
--

INSERT INTO `p` (`pno`, `pname`, `color`, `weight`, `p_city`) VALUES
('P1', 'NUT', 'RED', 12, 'London'),
('P2', 'BOLT', 'GREEN', 17, 'Paris'),
('P3', 'SCREW', 'BLUE', 17, 'Oslo'),
('P4', 'SCREW', 'RED', 14, 'London'),
('P5', 'CAM', 'BLUE', 15, 'Paris'),
('p6', 'cg', 'Red', 19, 'London');

-- --------------------------------------------------------

--
-- Table structure for table `s`
--

CREATE TABLE `s` (
  `sno` char(3) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `s_status` int(11) NOT NULL,
  `s_city` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s`
--

INSERT INTO `s` (`sno`, `sname`, `s_status`, `s_city`) VALUES
('S1', 'smith', 20, 'London'),
('S2', 'jones', 10, 'Paris'),
('S3', 'Blake', 30, 'Paris'),
('S4', 'Clark', 20, 'London'),
('S5', 'Adam', 30, 'Athens');

-- --------------------------------------------------------

--
-- Table structure for table `sp`
--

CREATE TABLE `sp` (
  `sno` char(3) NOT NULL,
  `pno` char(3) NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sp`
--

INSERT INTO `sp` (`sno`, `pno`, `qty`) VALUES
('S1', 'P1', 300),
('S1', 'P2', 200),
('S1', 'P3', 400),
('S1', 'P4', 200),
('S1', 'P5', 100),
('S1', 'p6', 100),
('S2', 'P1', 300),
('S2', 'P2', 400),
('S3', 'P2', 200),
('S4', 'P2', 200),
('S4', 'P4', 300),
('S4', 'P5', 400);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`Dept_Id`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `emp_Dept_id` (`emp_Dept_id`);

--
-- Indexes for table `p`
--
ALTER TABLE `p`
  ADD PRIMARY KEY (`pno`);

--
-- Indexes for table `s`
--
ALTER TABLE `s`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `sp`
--
ALTER TABLE `sp`
  ADD PRIMARY KEY (`sno`,`pno`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `emp`
--
ALTER TABLE `emp`
  ADD CONSTRAINT `emp_ibfk_1` FOREIGN KEY (`emp_Dept_id`) REFERENCES `dept` (`Dept_Id`),
  ADD CONSTRAINT `emp_ibfk_2` FOREIGN KEY (`emp_Dept_id`) REFERENCES `dept` (`Dept_Id`);

--
-- Constraints for table `sp`
--
ALTER TABLE `sp`
  ADD CONSTRAINT `sp_ibfk_1` FOREIGN KEY (`sno`) REFERENCES `s` (`sno`),
  ADD CONSTRAINT `sp_ibfk_2` FOREIGN KEY (`pno`) REFERENCES `p` (`pno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
