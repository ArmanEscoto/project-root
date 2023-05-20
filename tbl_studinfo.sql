-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 20, 2023 at 05:18 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studinfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_studinfo`
--

CREATE TABLE `tbl_studinfo` (
  `id` int NOT NULL,
  `student_name` text NOT NULL,
  `student_id` text NOT NULL,
  `student_section` text NOT NULL,
  `student_courses` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `student_batch` text NOT NULL,
  `student_grade_level` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_studinfo`
--

INSERT INTO `tbl_studinfo` (`id`, `student_name`, `student_id`, `student_section`, `student_courses`, `student_batch`, `student_grade_level`) VALUES
(1, 'Arman Escoto', '20000_64672eca74cd4', '5', 'BSCS', '2023', '3'),
(2, 'Arman Domingo', '20000_6467842f2c921', '2', 'it', '2023', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_studinfo`
--
ALTER TABLE `tbl_studinfo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_studinfo`
--
ALTER TABLE `tbl_studinfo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
