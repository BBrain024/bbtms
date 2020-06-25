-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2020 at 09:36 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `users`
--

-- --------------------------------------------------------

--
-- Table structure for table `usersu`
--

CREATE TABLE `usersu` (
  `id` int(15) NOT NULL,
  `Firstname` varchar(50) NOT NULL,
  `Surname` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Gender` varchar(15) NOT NULL,
  `code` varchar(10) NOT NULL,
  `Phonenumber` int(15) NOT NULL,
  `Region` varchar(50) NOT NULL,
  `Locality` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Confirmpassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usersu`
--

INSERT INTO `usersu` (`id`, `Firstname`, `Surname`, `Email`, `Gender`, `code`, `Phonenumber`, `Region`, `Locality`, `Username`, `Password`, `Confirmpassword`) VALUES
(1, 'Samuel', 'Adu-sarfo', 'samueladusarfo024@gmail.com', '', '+233', 545262863, 'Ashanti', '', 'BiggyBrain', '580281074ce98cb61c3ec62d0df88c83', '580281074ce98cb61c3ec62d0df88c83'),
(2, 'Emmanuel', 'Boakye', 'emma234@gmail.com', '', '+233', 546376528, 'Ashanti', '', 'Ziggy', '289dff07669d7a23de0ef88d2f7129e7', '289dff07669d7a23de0ef88d2f7129e7'),
(19, 'Jeffery', 'Asante', 'Jasante@gmail.com', 'Male', '+233', 547765876, 'Central', '', 'JASA', '9dc59f9065e8b288e3b7a570555a13eb', '9dc59f9065e8b288e3b7a570555a13eb'),
(20, 'Lucy', 'Boahemaa', 'lucymaa@gmail.com', 'Female', '+233', 245276876, 'Ashanti', 'Afrancho', 'Boany', 'b0a72b50991d1ee68f287a67a03eed5c', 'b0a72b50991d1ee68f287a67a03eed5c'),
(21, 'Fred', 'Adu', 'fadu12@gmail.com', 'Male', '+233', 245678987, 'Eastern', 'Koforidua', 'fadu', '514f1b439f404f86f77090fa9edc96ce', '514f1b439f404f86f77090fa9edc96ce'),
(22, 'Bismark', 'Boakye', 'bisboakye22@gmail.com', 'Male', '+233', 547985433, 'Ashanti', 'Afrancho', 'BBoa', '21ad0bd836b90d08f4cf640b4c298e7c', '21ad0bd836b90d08f4cf640b4c298e7c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usersu`
--
ALTER TABLE `usersu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usersu`
--
ALTER TABLE `usersu`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
