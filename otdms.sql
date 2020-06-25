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
-- Database: `otdms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'BBrain', '29-05-2020 04:18:54 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bld_rec`
--

CREATE TABLE `bld_rec` (
  `id` int(50) NOT NULL,
  `Name_of_Donor` varchar(75) NOT NULL,
  `Name_of_Collector` varchar(75) NOT NULL,
  `Place_of_Collection` varchar(50) NOT NULL,
  `Blood_Type` varchar(10) NOT NULL,
  `Blood_Tag_number` varchar(25) NOT NULL,
  `Blood_Volume` int(10) NOT NULL,
  `Date_of_Collection` date NOT NULL,
  `Date_of_Expiry` date NOT NULL,
  `tele` bigint(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `b_collector`
--

CREATE TABLE `b_collector` (
  `id` int(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `uniqueID` varchar(25) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `department` varchar(50) NOT NULL,
  `mobileno` int(20) NOT NULL,
  `password` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `b_collector`
--

INSERT INTO `b_collector` (`id`, `Name`, `uniqueID`, `Email`, `gender`, `department`, `mobileno`, `password`) VALUES
(2, 'Godfred Adu-sarfo', 'OPD 22-44', 'gadusarfo99@gmail.com', 'Male', 'OPD', 547950211, '5f4dcc3b5aa765d61d8327deb882cf99'),
(3, 'Samuel Sarfo', 'DEN-23-90', 'Samsarfo122@gmail.com', 'Male', 'Delivery', 547950288, '9dc59f9065e8b288e3b7a5705'),
(4, 'Sanjay Danso', 'OPD 23-55', 'sdanso@gmail.com', 'Male', 'OPD', 501590889, '9dc59f9065e8b288e3b7a5705');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Heart surgeon', 'Dr.Robert Akwante', 'Santasi-Kumasi', 'GHS 1200', 245768248, 'kakwante22@gmail.com', '9dc59f9065e8b288e3b7a570555a13eb', '2020-05-21 23:51:24', NULL),
(13, 'Lung surgeon', 'Dr.Emmanuel Asante', 'Abrepo-Kumasi', 'GHS 1000', 547958766, 'easante11@gmail.com', '9dc59f9065e8b288e3b7a570555a13eb', '2020-06-08 01:40:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 43, 'DOC AKWANTE', 0xbb001100000000000000000000000000, '2020-05-21 17:46:18', 'DOC AKWANTE', 1),
(30, NULL, NULL, NULL, '2020-05-21 17:46:18', NULL, NULL),
(33, NULL, 'Ziggy', 0x3a3a3100000000000000000000000000, '2020-05-21 17:48:46', NULL, 0),
(34, NULL, 'Ziggy', 0x3a3a3100000000000000000000000000, '2020-05-21 17:49:00', NULL, 0),
(35, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-05-21 17:50:16', NULL, 1),
(36, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-05-21 23:52:34', NULL, 0),
(37, NULL, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-21 23:53:18', NULL, 0),
(38, NULL, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-21 23:54:31', NULL, 0),
(39, NULL, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-21 23:57:59', NULL, 0),
(40, NULL, 'Dr.Robert Akwante', 0x3a3a3100000000000000000000000000, '2020-05-21 23:59:20', NULL, 0),
(41, NULL, 'Dr.Robert Akwante', 0x3a3a3100000000000000000000000000, '2020-05-21 23:59:38', NULL, 0),
(42, 1, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-22 00:05:57', '22-05-2020 05:37:26 AM', 1),
(43, 1, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-22 15:20:10', '22-05-2020 09:03:14 PM', 1),
(44, 1, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-18 03:50:42', NULL, 1),
(45, 1, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-26 09:47:47', '26-05-2020 03:18:54 PM', 1),
(46, 1, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-26 11:15:17', NULL, 1),
(47, 1, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-26 12:59:23', '26-05-2020 06:33:16 PM', 1),
(48, 1, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-28 23:47:41', NULL, 1),
(49, 1, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-11 11:26:29', NULL, 1),
(50, 1, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-11 11:33:37', NULL, 1),
(51, 1, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-11 11:37:12', '11-06-2020 05:29:51 PM', 1),
(52, 1, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-11 12:03:12', '11-06-2020 05:33:18 PM', 1),
(53, 1, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-11 12:04:20', '11-06-2020 05:34:26 PM', 1),
(54, 1, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-11 12:05:27', '11-06-2020 05:35:32 PM', 1),
(55, 1, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-11 12:06:05', '11-06-2020 05:36:48 PM', 1),
(56, 1, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-08 01:21:34', '08-06-2020 07:07:23 AM', 1),
(57, NULL, '   easante11@gmail.com         ', 0x3a3a3100000000000000000000000000, '2020-06-08 01:42:40', NULL, 0),
(58, NULL, 'easante11@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-08 01:42:59', NULL, 0),
(59, NULL, 'easante11@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-08 01:43:21', NULL, 0),
(60, NULL, 'easante11@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-08 01:44:20', NULL, 0),
(61, NULL, 'easante11@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-08 01:45:10', NULL, 0),
(62, 13, 'easante11@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-08 01:45:26', NULL, 1),
(63, 1, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-16 08:58:42', NULL, 1),
(64, 1, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-18 17:32:25', NULL, 1),
(65, NULL, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-19 14:02:12', NULL, 0),
(66, 1, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-19 14:02:25', '19-06-2020 07:33:44 PM', 1),
(67, 1, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-20 09:12:06', NULL, 1),
(68, 1, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-20 10:33:44', NULL, 1),
(69, 1, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-20 12:19:11', '20-06-2020 06:01:33 PM', 1),
(70, 1, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-20 13:15:34', '20-06-2020 06:47:17 PM', 1),
(71, 1, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-20 11:35:13', NULL, 1),
(72, 1, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-20 11:26:33', '20-06-2020 05:05:15 PM', 1),
(73, 1, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-21 05:06:38', '21-06-2020 10:36:53 AM', 1),
(74, 1, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-21 05:08:45', '21-06-2020 10:38:52 AM', 1),
(75, 1, 'kakwante22@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-20 13:06:30', '20-06-2020 06:37:15 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Lung surgeon', '2016-12-28 06:37:25', '2020-05-22 15:09:58'),
(2, 'Pancreas surgeon', '2016-12-28 06:38:12', '2020-05-22 15:10:40'),
(3, 'Trachea surgeon', '2016-12-28 06:38:48', '2020-05-22 15:11:29'),
(4, 'Kidney surgeon', '2016-12-28 06:39:26', '2020-05-22 15:11:57'),
(5, 'Skin surgeon', '2016-12-28 06:39:51', '2020-06-08 07:09:03'),
(6, 'Heart surgeon', '2016-12-28 06:40:08', '2020-05-22 15:13:20'),
(7, 'Liver surgeon', '2016-12-28 06:41:18', '2020-05-22 15:13:44'),
(9, 'Vascular tissue surgeon', '2016-12-28 07:37:39', '2020-05-22 15:14:24');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) NOT NULL,
  `name` varchar(150) NOT NULL,
  `address` varchar(255) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lon` float(10,6) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `org_rec`
--

CREATE TABLE `org_rec` (
  `id` int(50) NOT NULL,
  `Name_of_Donor` varchar(75) NOT NULL,
  `Name_of_Collector` varchar(75) NOT NULL,
  `Place_of_Collection` varchar(50) NOT NULL,
  `Organ_Type` varchar(10) NOT NULL,
  `Organ_Tag_number` varchar(25) NOT NULL,
  `Date_of_Collection` date NOT NULL,
  `Date_of_Expiry` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `o_collector`
--

CREATE TABLE `o_collector` (
  `id` int(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `uniqueID` varchar(25) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `department` varchar(30) NOT NULL,
  `mobileno` int(20) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `o_collector`
--

INSERT INTO `o_collector` (`id`, `Name`, `uniqueID`, `Email`, `gender`, `department`, `mobileno`, `password`) VALUES
(1, 'Bismark Sarfo', 'OPD 33-55', 'bismark22@gmail.com', 'Male', 'OPD', 501365434, '9dc59f9065e8b288e3b7a5705');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(50) NOT NULL,
  `organ` varchar(50) NOT NULL,
  `nationality` varchar(100) NOT NULL,
  `telephone` int(50) NOT NULL,
  `time_of_request` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `request2`
--

CREATE TABLE `request2` (
  `id` int(50) NOT NULL,
  `blood_type` varchar(50) NOT NULL,
  `nationality` varchar(100) NOT NULL,
  `telephone` int(50) NOT NULL,
  `time_of_request` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request2`
--

INSERT INTO `request2` (`id`, `blood_type`, `nationality`, `telephone`, `time_of_request`) VALUES
(1, 'AB-', 'Ghanaian', 2147483647, '2020-06-25 15:28:46');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'test user', 'test@gmail.com', 2523523522523523, ' This is sample text for the test.', '2019-06-29 19:03:08', 'Test Admin Remark', '2019-06-30 12:55:23', 1),
(2, 'Anuj kumar', 'phpgurukulofficial@gmail.com', 1111111111111111, ' This is sample text for testing.  This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing.', '2019-06-30 13:06:50', NULL, NULL, NULL),
(3, 'fdsfsdf', 'fsdfsd@ghashhgs.com', 3264826346, 'sample text   sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  ', '2019-11-10 18:53:48', 'vfdsfgfd', '2019-11-10 18:54:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(2, 3, '120/185', '80/120', '85 Kg', '101 degree', '#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n', '2019-11-06 04:20:07'),
(3, 2, '90/120', '92/190', '86 kg', '99 deg', '#Sugar High\r\n1.Petz 30', '2019-11-06 04:31:24'),
(4, 1, '125/200', '86/120', '56 kg', '98 deg', '# blood pressure is high\r\n1.koil cipla', '2019-11-06 04:52:42'),
(5, 1, '96/120', '98/120', '57 kg', '102 deg', '#Viral\r\n1.gjgjh-1Ml\r\n2.kjhuiy-2M', '2019-11-06 04:56:55'),
(6, 4, '90/120', '120', '56', '98 F', '#blood sugar high\r\n#Asthma problem', '2019-11-06 14:38:33'),
(7, 5, '80/120', '120', '85', '98.6', 'Rx\r\n\r\nAbc tab\r\nxyz Syrup', '2019-11-10 18:50:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblorgandonars`
--

CREATE TABLE `tblorgandonars` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL,
  `Organ` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorgandonars`
--

INSERT INTO `tblorgandonars` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Gender`, `Age`, `Address`, `Message`, `PostingDate`, `status`, `Organ`) VALUES
(11, 'Sandra Owusu', '0245262875', 'sowusu22@gmail.com', 'Female', 24, 'Kumasi', ' ', '2020-04-02 12:58:18', 1, 'Lung');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Shantel Owusu', 547592014, 'adwoaowusu223@gmail.com', 'Female', 'Kumasi -Pankrono', 26, 'She is diabetic patient', '2019-11-04 21:38:06', '2020-05-29 00:20:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbltranstype`
--

CREATE TABLE `tbltranstype` (
  `id` int(15) NOT NULL,
  `Transplant` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbltranstype`
--

INSERT INTO `tbltranstype` (`id`, `Transplant`) VALUES
(1, 'Lung'),
(3, 'Pancreas'),
(4, 'Cornea'),
(5, 'Trachea'),
(6, 'Kidney'),
(7, 'Skin'),
(8, 'Heart'),
(9, 'Vascular Tissues'),
(10, 'Liver');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-22 00:43:42', NULL, 1),
(25, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-22 00:50:56', NULL, 1),
(26, 2, 'adwoaowusu223@gmail.com', 0x3132372e302e302e3100000000000000, '2020-05-22 01:55:43', NULL, 1),
(27, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-22 15:37:47', NULL, 1),
(28, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-23 11:41:40', NULL, 1),
(29, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-18 03:58:32', NULL, 1),
(30, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-18 03:59:41', NULL, 1),
(31, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-18 08:38:04', NULL, 1),
(32, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-26 11:20:30', NULL, 1),
(33, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-26 12:51:13', NULL, 1),
(34, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-26 13:03:39', NULL, 1),
(35, NULL, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-26 20:13:25', NULL, 0),
(36, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-26 20:13:39', NULL, 1),
(37, NULL, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-28 23:45:49', NULL, 0),
(38, NULL, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-28 23:46:05', NULL, 0),
(39, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-28 23:46:20', NULL, 1),
(40, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-29 00:11:11', NULL, 1),
(41, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-05-29 00:22:40', NULL, 1),
(42, NULL, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-11 12:33:45', NULL, 0),
(43, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-11 12:34:03', NULL, 1),
(44, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-08 01:46:12', NULL, 1),
(45, NULL, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-16 08:41:50', NULL, 0),
(46, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-16 08:42:00', NULL, 1),
(47, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-16 08:56:41', NULL, 1),
(48, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-20 09:01:48', NULL, 1),
(49, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-20 09:30:32', NULL, 1),
(50, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-20 10:07:56', NULL, 1),
(51, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-20 10:22:21', NULL, 1),
(52, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-20 10:44:22', NULL, 1),
(53, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-20 11:20:56', NULL, 1),
(54, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-20 11:40:05', NULL, 1),
(55, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-20 11:51:27', NULL, 1),
(56, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-20 12:32:24', NULL, 1),
(57, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-20 13:39:53', NULL, 1),
(58, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-20 13:50:28', NULL, 1),
(59, NULL, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-20 12:57:19', NULL, 0),
(60, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-20 12:57:51', NULL, 1),
(61, NULL, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-20 23:38:55', NULL, 0),
(62, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-20 23:39:12', NULL, 1),
(63, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-21 00:08:38', NULL, 1),
(64, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-21 02:02:57', NULL, 1),
(65, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-21 02:03:54', '21-06-2020 07:34:00 AM', 1),
(66, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-21 02:04:12', '21-06-2020 07:34:39 AM', 1),
(67, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-21 18:31:45', NULL, 1),
(68, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-20 13:10:15', '20-06-2020 06:45:27 PM', 1),
(69, NULL, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-25 18:36:46', NULL, 0),
(70, 2, 'adwoaowusu223@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-25 18:37:02', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(2, 'Shantel Owusu', 'Accra-Ghana', 'Accra', 'female', 'adwoaowusu223@gmail.com', '9dc59f9065e8b288e3b7a570555a13eb', '2016-12-30 05:34:39', '0000-00-00 00:00:00'),
(3, 'Amit', 'New Delhi', 'New delhi', 'male', 'amit@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 06:36:53', '0000-00-00 00:00:00'),
(4, 'Rahul Singh', 'New Delhi', 'New delhi', 'male', 'rahul@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:41:14', '0000-00-00 00:00:00'),
(5, 'Amit kumar', 'New Delhi India', 'Delhi', 'male', 'amit12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 08:00:26', '0000-00-00 00:00:00'),
(6, 'Test user', 'New Delhi', 'Delhi', 'male', 'tetuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-06-23 18:24:53', '2019-06-23 18:36:09'),
(7, 'John', 'USA', 'Newyork', 'male', 'john@test.com', 'f925916e2754e5e03f75dd58a5733251', '2019-11-10 18:40:21', '2019-11-10 18:40:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bld_rec`
--
ALTER TABLE `bld_rec`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b_collector`
--
ALTER TABLE `b_collector`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `org_rec`
--
ALTER TABLE `org_rec`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `o_collector`
--
ALTER TABLE `o_collector`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request2`
--
ALTER TABLE `request2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblorgandonars`
--
ALTER TABLE `tblorgandonars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbltranstype`
--
ALTER TABLE `tbltranstype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bld_rec`
--
ALTER TABLE `bld_rec`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `b_collector`
--
ALTER TABLE `b_collector`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `org_rec`
--
ALTER TABLE `org_rec`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `o_collector`
--
ALTER TABLE `o_collector`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request2`
--
ALTER TABLE `request2`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblorgandonars`
--
ALTER TABLE `tblorgandonars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbltranstype`
--
ALTER TABLE `tbltranstype`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
