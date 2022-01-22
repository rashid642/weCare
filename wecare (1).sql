-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2022 at 07:22 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wecare`
--

-- --------------------------------------------------------

--
-- Table structure for table `connections`
--

CREATE TABLE `connections` (
  `id` int(11) NOT NULL,
  `dremail` varchar(30) NOT NULL,
  `patientemail` varchar(30) NOT NULL,
  `status` text NOT NULL,
  `Date` varchar(255) DEFAULT NULL,
  `tate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `connections`
--

INSERT INTO `connections` (`id`, `dremail`, `patientemail`, `status`, `Date`, `tate`) VALUES
(12, 'mahesh@wecare.com', 'md.r.a.n.786@gmail.com', 'connected', NULL, NULL),
(13, 'ankit@wecare.com', 'md.r.a.n.786@gmail.com', 'connected', NULL, NULL),
(15, 'mahesh@wecare.com', 'ankit@gmail.com', 'connected', NULL, NULL),
(16, 'muskan@wecare.com', 'md.r.a.n.786@gmail.com', 'Request Sent', NULL, NULL),
(17, 'sureshyadac@wecare.com', 'md.r.a.n.786@gmail.com', 'connected', NULL, NULL),
(18, 'zubiya@wecare.com', 'lettry5@gmail.com', 'connected', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `drdetail`
--

CREATE TABLE `drdetail` (
  `id` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `speciality` varchar(50) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `experience` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `certificate` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drdetail`
--

INSERT INTO `drdetail` (`id`, `fullname`, `email`, `speciality`, `qualification`, `experience`, `address`, `certificate`, `password`, `date`) VALUES
(6, 'Rashid Aziz', 'md.r.a.n.786@gmail.com', 'Physician', 'MBBS', '12yr', 'Mumbai', 'C:UsersDellDesktop\nawab\rubixsrcuploads/Screenshot ', '123', '2022-01-16 14:45:26'),
(7, 'Rashid Aziz', 'md.r.a.n.786@gmail.com', 'Physician', 'MBBS', '12yr', 'Mumbai', 'C:UsersDellDesktop\nawab\rubixsrcuploads/Screenshot ', '123', '2022-01-16 14:46:23'),
(8, 'Rashid Aziz', 'md.r.a.n.786@gmail.com', 'Physician', 'MBBS', '12yr', 'Mumbai', 'C:UsersDellDesktop\nawab\rubixsrcuploads/Screenshot ', '123', '2022-01-16 14:49:07'),
(9, 'Rashid Aziz', 'md.r.a.n.786@gmail.com', 'Physician', 'bohot padha likha', '12yr', 'Mumbai', 'C:UsersDellDesktop\nawab\rubixsrcuploads/Screenshot ', '1234', '2022-01-16 15:18:14');

-- --------------------------------------------------------

--
-- Table structure for table `userdetail`
--

CREATE TABLE `userdetail` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdetail`
--

INSERT INTO `userdetail` (`id`, `name`, `email`, `password`, `status`) VALUES
(7, 'Dr. Suresh Yadav', 'sureshyadac@wecare.com', '123', 'doctor'),
(8, 'Dr. Mahesh Sancheti', 'mahesh@wecare.com', '123', 'doctor'),
(29, 'Rashid Aziz', 'md.r.a.n.786@gmail.com', '123', 'patient'),
(32, 'Ankit Pandey', 'ankit@gmail.com', '123', 'patient'),
(33, 'Dr. Zubiya Alvi', 'zubiya@wecare.com', '123', 'doctor'),
(34, 'Rashid Aziz', 'md.r.a.n.@gmail.com', '$2b$10$HllKVuyXBS/PTKttQ/DpNuAOJDJLk52/XFFpJAvLvtt', 'patient'),
(35, 'a', 'a@w', '$2b$10$jYdwkTMQntqlfI0B.ghEjONKGqVT8Ri2OM8/45ZURXw', 'patient'),
(36, 'Rashid Aziz', 'rashid@gmail.com', '$2b$10$yXTalgJCDke1Fxd9Ssj51u5oIrIl6qOK.NLunnccRNk', 'patient'),
(37, 'Rashid', 'lettry5@gmail.com', '123', 'patient');

-- --------------------------------------------------------

--
-- Table structure for table `vconnection`
--

CREATE TABLE `vconnection` (
  `idVconnection` int(11) NOT NULL,
  `dremail` varchar(45) NOT NULL,
  `patientemail` varchar(45) NOT NULL,
  `status` text NOT NULL,
  `uuid` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vconnection`
--

INSERT INTO `vconnection` (`idVconnection`, `dremail`, `patientemail`, `status`, `uuid`) VALUES
(1, 'mahesh@wecare.com', 'md.r.a.n.786@gmail.com', 'Request Sent', ''),
(2, 'sureshyadac@wecare.com', 'md.r.a.n.786@gmail.com', 'Request Sent', ''),
(3, 'zubiya@wecare.com', 'lettry5@gmail.com', 'connected', '79bac184-da82-4b7c-9d3c-df4a234c05b0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `connections`
--
ALTER TABLE `connections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drdetail`
--
ALTER TABLE `drdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdetail`
--
ALTER TABLE `userdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vconnection`
--
ALTER TABLE `vconnection`
  ADD PRIMARY KEY (`idVconnection`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `connections`
--
ALTER TABLE `connections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `drdetail`
--
ALTER TABLE `drdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `userdetail`
--
ALTER TABLE `userdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `vconnection`
--
ALTER TABLE `vconnection`
  MODIFY `idVconnection` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
