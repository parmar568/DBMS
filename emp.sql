-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2024 at 11:57 PM
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
(101, 'Nikhil', 1, 401, 210000),
(102, 'Satish', 1, 101, 210000),
(103, 'Vrushali', 1, 101, 175000),
(201, 'Archna', 2, 401, 200000),
(202, 'Tanvi', 2, 201, 135000),
(203, 'Dharti', 2, 201, 175000),
(301, 'Hemali', 3, 401, 235000),
(302, 'Vishal', 3, 301, 180000),
(303, 'Nafish', 3, 302, 199000),
(401, 'Registar', 4, 401, 500000),
(402, 'Bipin', 4, 401, 490000),
(403, 'Narendra', 4, 402, 1000000),
(404, 'Mohan', 4, 402, 800000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `emp_Dept_id` (`emp_Dept_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `emp`
--
ALTER TABLE `emp`
  ADD CONSTRAINT `emp_ibfk_1` FOREIGN KEY (`emp_Dept_id`) REFERENCES `dept` (`Dept_Id`),
  ADD CONSTRAINT `emp_ibfk_2` FOREIGN KEY (`emp_Dept_id`) REFERENCES `dept` (`Dept_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
