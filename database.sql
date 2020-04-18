-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2020 at 06:39 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `almajaya`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_syllabus`
--

CREATE TABLE `academic_syllabus` (
  `academic_syllabus_id` int(11) NOT NULL,
  `academic_syllabus_code` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `uploader_type` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `uploader_id` int(11) DEFAULT NULL,
  `year` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `academic_syllabus`
--

INSERT INTO `academic_syllabus` (`academic_syllabus_id`, `academic_syllabus_code`, `title`, `description`, `class_id`, `uploader_type`, `uploader_id`, `year`, `timestamp`, `file_name`, `subject_id`) VALUES
(1, 'c5387a6', 'farmakologi', NULL, 1, 'admin', 1, '2018-2019', '1560705285', 'Sertifikat Akreditasi PAI II.PDF', 1);

-- --------------------------------------------------------

--
-- Table structure for table `accountant`
--

CREATE TABLE `accountant` (
  `accountant_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `accountant`
--

INSERT INTO `accountant` (`accountant_id`, `name`, `email`, `password`) VALUES
(1, 'Kamal', 'kamal', 'f865b53623b121fd34ee5426c792e5c33af8c227');

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `log_id` int(11) NOT NULL,
  `log_time` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `log_akses` varchar(100) DEFAULT NULL,
  `log_user` int(10) DEFAULT NULL,
  `log_name` varchar(255) DEFAULT NULL,
  `log_tipe` varchar(50) DEFAULT NULL,
  `log_desc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`log_id`, `log_time`, `log_akses`, `log_user`, `log_name`, `log_tipe`, `log_desc`) VALUES
(49, '2020-02-24 06:15:03', 'admin', 1, 'Administrator', 'logout', 'Logout Portal'),
(50, '2020-02-24 06:15:20', 'marketing', 1, 'marketing', 'login', 'Login Portal'),
(51, '2020-02-24 06:17:33', 'marketing', 1, 'marketing', 'add', 'Menambah Data Primary School'),
(52, '2020-02-24 06:18:05', 'marketing', 1, 'marketing', 'add', 'Menambah Data Primary School'),
(53, '2020-02-24 06:18:49', 'marketing', 1, 'marketing', 'add', 'Menambah Data Marketing Time'),
(54, '2020-02-24 06:37:32', 'marketing', 1, 'marketing', 'add', 'Menambah Data Middle School'),
(55, '2020-02-24 06:46:50', 'marketing', 1, 'marketing', 'logout', 'Logout Portal'),
(56, '2020-02-24 07:11:57', 'marketing', 1, 'marketing', 'login', 'Login Portal'),
(57, '2020-02-26 01:19:52', 'admin', 1, 'Administrator', 'login', 'Login Portal'),
(58, '2020-03-04 00:39:11', 'teacher', 84, 'Mukhlis', 'login', 'Login Portal'),
(59, '2020-03-05 00:18:56', 'marketing', 1, 'marketing', 'add', 'Menambah Data elementary School'),
(60, '2020-03-05 00:35:00', 'marketing', 1, 'marketing', 'logout', 'Logout Portal'),
(61, '2020-03-05 00:36:22', 'marketing', 1, 'marketing', 'add', 'Menambah Data elementary School'),
(62, '2020-03-06 01:04:53', 'teacher', 90, 'Renanda N. Bilianti', 'login', 'Login Portal'),
(63, '2020-03-06 01:54:52', 'teacher', 90, 'Renanda N. Bilianti', 'logout', 'Logout Portal'),
(64, '2020-03-06 02:24:41', 'teacher', 90, 'Renanda N. Bilianti', 'login', 'Login Portal'),
(65, '2020-03-06 05:29:47', NULL, NULL, NULL, 'logout', 'Logout Portal'),
(66, '2020-03-06 05:29:59', 'teacher', 87, 'Herliana', 'login', 'Login Portal'),
(67, '2020-03-06 07:26:11', 'teacher', 87, 'Herliana', 'logout', 'Logout Portal'),
(68, '2020-03-09 02:35:23', 'teacher', 102, 'Muhammad Nasir', 'login', 'Login Portal'),
(69, '2020-03-09 07:05:08', 'teacher', 87, 'Herliana', 'login', 'Login Portal'),
(70, '2020-03-09 07:21:29', NULL, NULL, NULL, 'logout', 'Logout Portal'),
(71, '2020-03-13 05:35:38', 'teacher', 86, 'Rido Ansyori', 'login', 'Login Portal'),
(72, '2020-03-13 05:35:47', 'teacher', 86, 'Rido Ansyori', 'logout', 'Logout Portal'),
(73, '2020-03-16 02:03:11', 'teacher', 90, 'Renanda N. Bilianti', 'logout', 'Logout Portal'),
(74, '2020-04-01 04:04:40', 'marketing', 1, 'marketing', 'login', 'Login Portal'),
(75, '2020-04-01 04:39:26', 'marketing', 1, 'marketing', 'logout', 'Logout Portal'),
(76, '2020-04-01 05:45:12', 'marketing', 1, 'marketing', 'login', 'Login Portal'),
(77, '2020-04-01 06:06:03', 'marketing', 1, 'marketing', 'logout', 'Logout Portal'),
(78, '2020-04-01 06:09:22', 'marketing', 1, 'marketing', 'login', 'Login Portal'),
(79, '2020-04-01 06:57:47', 'marketing', 1, 'marketing', 'login', 'Login Portal'),
(80, '2020-04-01 07:30:57', 'marketing', 1, 'marketing', 'logout', 'Logout Portal'),
(81, '2020-04-01 07:31:03', 'admin', 1, 'Administrator', 'login', 'Login Portal'),
(82, '2020-04-01 07:32:55', 'admin', 1, 'Administrator', 'logout', 'Logout Portal'),
(83, '2020-04-01 07:33:01', 'marketing', 1, 'marketing', 'login', 'Login Portal'),
(84, '2020-04-02 05:48:51', 'marketing', 1, 'marketing', 'logout', 'Logout Portal'),
(85, '2020-04-02 05:50:13', 'marketing', 1, 'marketing', 'login', 'Login Portal'),
(86, '2020-04-02 05:50:38', 'marketing', 1, 'marketing', 'logout', 'Logout Portal'),
(87, '2020-04-02 05:50:51', 'marketing', 1, 'marketing', 'login', 'Login Portal'),
(88, '2020-04-04 06:46:08', 'marketing', 1, 'marketing', 'add', 'Menambah Data elementary School'),
(89, '2020-04-04 06:46:30', 'marketing', 1, 'marketing', 'add', 'Menambah Data elementary School'),
(90, '2020-04-04 06:47:11', 'marketing', 1, 'marketing', 'add', 'Menambah Data elementary School'),
(91, '2020-04-04 06:47:37', 'marketing', 1, 'marketing', 'add', 'Menambah Data elementary School'),
(92, '2020-04-04 06:48:02', 'marketing', 1, 'marketing', 'add', 'Menambah Data elementary School'),
(93, '2020-04-04 06:48:36', 'marketing', 1, 'marketing', 'add', 'Menambah Data elementary School'),
(94, '2020-04-04 06:55:36', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(95, '2020-04-04 07:00:06', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(96, '2020-04-04 07:05:13', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(97, '2020-04-04 07:07:43', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(98, '2020-04-04 07:11:34', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(99, '2020-04-04 07:14:05', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(100, '2020-04-04 07:19:31', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(101, '2020-04-04 07:23:00', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(102, '2020-04-04 07:29:31', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(103, '2020-04-04 07:34:32', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(104, '2020-04-04 07:38:30', 'marketing', 1, 'marketing', 'add', 'Menambah Data elementary School'),
(105, '2020-04-04 07:38:46', 'marketing', 1, 'marketing', 'add', 'Menambah Data elementary School'),
(106, '2020-04-04 07:39:06', 'marketing', 1, 'marketing', 'add', 'Menambah Data elementary School'),
(107, '2020-04-04 07:44:23', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(108, '2020-04-04 07:49:35', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(109, '2020-04-04 07:54:23', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(110, '2020-04-04 07:59:57', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(111, '2020-04-04 08:02:16', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(112, '2020-04-04 08:10:56', 'marketing', 1, 'marketing', 'logout', 'Logout Portal'),
(113, '2020-04-06 01:06:17', 'marketing', 1, 'marketing', 'login', 'Login Portal'),
(114, '2020-04-06 01:18:59', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(115, '2020-04-06 01:20:07', 'marketing', 1, 'marketing', 'add', 'Menambah Data elementary School'),
(116, '2020-04-06 01:20:28', 'marketing', 1, 'marketing', 'add', 'Menambah Data elementary School'),
(117, '2020-04-06 01:21:06', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(118, '2020-04-06 01:21:43', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(119, '2020-04-06 01:23:58', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(120, '2020-04-06 01:26:22', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(121, '2020-04-06 01:28:32', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(122, '2020-04-06 01:31:54', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(123, '2020-04-06 01:33:05', 'marketing', 1, 'marketing', 'add', 'Menambah Data elementary School'),
(124, '2020-04-06 01:33:39', 'marketing', 1, 'marketing', 'add', 'Menambah Data elementary School'),
(125, '2020-04-06 01:34:00', 'marketing', 1, 'marketing', 'add', 'Menambah Data elementary School'),
(126, '2020-04-06 01:36:50', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(127, '2020-04-06 01:39:07', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(128, '2020-04-06 01:41:06', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(129, '2020-04-06 01:43:53', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(130, '2020-04-06 01:45:59', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(131, '2020-04-06 01:48:13', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(132, '2020-04-06 01:52:18', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(133, '2020-04-06 01:55:21', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(134, '2020-04-06 02:48:30', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(135, '2020-04-06 02:49:30', 'marketing', 1, 'marketing', 'add', 'Menambah Data elementary School'),
(136, '2020-04-06 03:03:30', 'marketing', 1, 'marketing', 'add', 'Menambah Data elementary School'),
(137, '2020-04-06 03:05:31', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(138, '2020-04-06 03:09:31', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(139, '2020-04-06 03:20:27', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(140, '2020-04-06 03:28:15', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(141, '2020-04-06 03:30:45', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(142, '2020-04-06 03:43:54', 'marketing', 1, 'marketing', 'add', 'Menambah Data Junior High School'),
(143, '2020-04-06 03:44:09', 'marketing', 1, 'marketing', 'add', 'Menambah Data Junior High School'),
(144, '2020-04-06 03:44:25', 'marketing', 1, 'marketing', 'add', 'Menambah Data Junior High School'),
(145, '2020-04-06 03:44:45', 'marketing', 1, 'marketing', 'add', 'Menambah Data Junior High School'),
(146, '2020-04-06 03:45:00', 'marketing', 1, 'marketing', 'add', 'Menambah Data Junior High School'),
(147, '2020-04-06 03:46:51', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(148, '2020-04-06 03:47:54', 'marketing', 1, 'marketing', 'logout', 'Logout Portal'),
(149, '2020-04-07 03:00:05', 'marketing', 1, 'marketing', 'login', 'Login Portal'),
(150, '2020-04-07 03:10:20', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(151, '2020-04-07 03:12:01', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(152, '2020-04-07 03:16:42', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(153, '2020-04-07 03:18:39', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(154, '2020-04-07 03:20:27', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(155, '2020-04-07 03:21:14', 'marketing', 1, 'marketing', 'add', 'Menambahkan Data Pendaftaran Siswa'),
(156, '2020-04-07 07:31:49', NULL, NULL, NULL, 'logout', 'Logout Portal'),
(157, '2020-04-08 03:24:56', 'admin', 1, 'Administrator', 'login', 'Login Portal'),
(158, '2020-04-08 04:02:10', 'admin', 1, 'Administrator', 'logout', 'Logout Portal'),
(159, '2020-04-13 15:01:53', 'admin', 1, 'Administrator', 'login', 'Login Portal'),
(160, '2020-04-13 15:02:09', 'admin', 1, 'Administrator', 'logout', 'Logout Portal'),
(161, '2020-04-13 15:02:14', 'marketing', 1, 'marketing', 'login', 'Login Portal'),
(162, '2020-04-13 15:20:36', 'marketing', 1, 'marketing', 'logout', 'Logout Portal'),
(163, '2020-04-13 15:20:45', 'admin', 1, 'Administrator', 'login', 'Login Portal'),
(164, '2020-04-13 15:42:38', 'admin', 1, 'Administrator', 'logout', 'Logout Portal'),
(165, '2020-04-13 15:42:47', 'marketing', 1, 'marketing', 'login', 'Login Portal'),
(166, '2020-04-17 06:32:53', 'admin', 1, 'Administrator', 'login', 'Login Portal');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `authentication_key` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `username`, `password`, `level`, `authentication_key`, `phone`, `address`) VALUES
(1, 'Administrator', 'sma@almajaya.com', 'admin', 'f865b53623b121fd34ee5426c792e5c33af8c227', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `administration`
--

CREATE TABLE `administration` (
  `administration_id` int(11) NOT NULL,
  `name` longtext DEFAULT NULL,
  `username` longtext DEFAULT NULL,
  `password` longtext DEFAULT NULL,
  `email` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administration`
--

INSERT INTO `administration` (`administration_id`, `name`, `username`, `password`, `email`) VALUES
(1, 'administration', 'administration', 'f865b53623b121fd34ee5426c792e5c33af8c227', 'administation@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_routine_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `timestamp`, `year`, `class_id`, `section_id`, `student_id`, `class_routine_id`, `status`) VALUES
(1, '1559930400', '2018-2019', 1, 1, 1, NULL, 1),
(2, '1560708000', '2018-2019', 1, 1, 1, NULL, 2),
(3, '1560708000', '2018-2019', 1, 1, 3, NULL, 3),
(4, '1561226400', '2018-2019', 1, 1, 1, NULL, 1),
(5, '1561226400', '2018-2019', 1, 1, 3, NULL, 1),
(6, '1585670400', '2019-2020', 4, 1, 12, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_copies` int(11) DEFAULT NULL,
  `issued_copies` int(11) DEFAULT NULL,
  `status` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_request`
--

CREATE TABLE `book_request` (
  `book_request_id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `issue_start_date` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `issue_end_date` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('056bsdca7i41qvps1k5gs6kbi57a4hr7', '192.168.20.167', 1586576992, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363537363939323b),
('0ahqugr3cm98qg9sodk162kq478n80ph', '192.168.20.167', 1586229675, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363232393430323b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b666c6173685f6d6573736167657c733a32333a2244617461204164646564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('1vuqq3ecc0vifh78cu2u1d1j6p1bvraa', '192.168.20.167', 1586137748, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363133373734383b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b666c6173685f6d6573736167657c733a32333a2244617461204164646564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('221eqc8t01nc1df6orbojaobhi66eq2b', '192.168.10.55', 1586316640, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363331363634303b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('29bivgbp8ttedg5e5heikcfdlfg5m441', '192.168.20.167', 1585985278, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538353938353237383b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b666c6173685f6d6573736167657c733a32333a2244617461204164646564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('2apri69322m3o4k7h762m7fi1qc9h5gq', '192.168.20.167', 1585982882, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538353938323838323b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b),
('4a3mngrlhh6ldjj8s88rjc9itilui3kd', '192.168.20.167', 1585984063, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538353938343036333b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b),
('54i6g2ef6ogr92mlld47p7fpanhvql9r', '192.168.20.167', 1585987197, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538353938373139373b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b),
('5oq54vbrtu8pn0v3eggkkksqvaso6npm', '::1', 1586791200, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363739313230303b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b),
('64urhlkj3uikmql2l3u71o0lojfi8982', '192.168.20.167', 1585986394, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538353938363339343b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b666c6173685f6d6573736167657c733a32333a2244617461204164646564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('75f5mh449iqqr20ed5s02c0p03aefs9a', '192.168.20.167', 1586142210, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363134323231303b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b),
('84jas6kql8gttdv49jlckl2gd2t5nn8s', '::1', 1586792575, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363739323535383b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b),
('8nbud6pto87atueo6bun2pnn75f4ao02', '192.168.20.167', 1586311153, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363331313135333b),
('8nqdr3761ahtk7kumlmbrpadbl4q9cis', '192.168.20.167', 1585983336, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538353938333333363b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b),
('95dfnhnbpkk0c03palbocnb3o5ir09og', '192.168.20.167', 1586229020, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363232393032303b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b),
('9bjdthoq0sm1ng6jeei8dh6j1hdpo8g9', '192.168.20.167', 1585987856, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538353938373835363b),
('9trup4mei9jm05fbb1kni9f8pdes778c', '192.168.20.167', 1585983646, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538353938333634363b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b),
('ae3kuo6vqr0hbk4j90j8lkef3k56j2cj', '192.168.20.167', 1586229402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363232393430323b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b),
('b0fi4t8empbtd7igreqp2u99jknop7su', '192.168.20.167', 1586228390, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363232383339303b),
('bqmrrltdsnfi1upq67hdmpbkrgqqrtj3', '192.168.10.55', 1586318615, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363331383533313b),
('cig0sq5kglmt9m2sgesapbh6ef2aqf1g', '192.168.20.167', 1585985999, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538353938353939393b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b666c6173685f6d6573736167657c733a32333a2244617461204164646564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('dnoj2qkais7i7qfhnu3ibj8pejqujb20', '192.168.20.167', 1585985672, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538353938353637323b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b),
('e72flcoq66lalpgc7k8egsrvn8refqko', '192.168.20.167', 1586576992, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363537363939323b),
('encundurlonmai3ojoijthg586mlk93s', '192.168.10.55', 1586316333, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363331363230323b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b),
('ep35v7s61pea660grq6776eh0qah8j6a', '192.168.20.167', 1586142571, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363134323537313b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b),
('es9nkt78b3lbollig7ep91lng752g546', '192.168.20.167', 1585984771, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538353938343737313b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b),
('esv83935hhmtsf5ooofbvflb25r147jj', '192.168.10.55', 1585990633, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538353939303631393b),
('faa9etoijlg8560hog57r0gs5m311e4n', '192.168.20.167', 1586144875, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363134343837343b),
('hv2h14qamc62d62lqvqe1brikr4brnr1', '192.168.20.167', 1585987856, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538353938373835363b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b),
('k4it96tl4nak87jkuoad6fjn6bocui2h', '192.168.20.167', 1586135719, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363133353731393b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b),
('lkf5lnlq1ajboeht1baurilvqptj53jn', '192.168.20.167', 1585984445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538353938343434353b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b),
('lthjjsjek116udtaheu0kmnhuan594os', '::1', 1586792558, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363739323535383b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('mc62ufg5tvks7olmktj2upvao1lo8v1r', '192.168.20.167', 1586144569, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363134343536393b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b666c6173685f6d6573736167657c733a32333a2244617461204164646564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('n41m1m180m06bpdj8ll04301j7t18mvu', '192.168.10.55', 1585879929, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538353837393932333b),
('n9ntbvgbk2er44130rofpik6pt3ncscn', '192.168.20.167', 1585986863, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538353938363836333b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b),
('ntfus5osaj5pi17tukvk58mvjmknhoeq', '::1', 1587141350, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538373134313135343b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b),
('o09rampvdb6nn5lpmn6adachr8l3h00a', '192.168.20.167', 1586136382, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363133363338323b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b),
('platfra4s7j1imnnvrl25qtl8saunpnh', '::1', 1587105231, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538373130353136313b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('plht4b44tgbj6s8kfcbu8v96dim3kur1', '192.168.20.167', 1586137027, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363133373032373b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b666c6173685f6d6573736167657c733a32333a2244617461204164646564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('plje6bce2s5r7446mcbnq0saktfeh1eu', '192.168.20.167', 1586142953, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363134323935333b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b666c6173685f6d6573736167657c733a32333a2244617461204164646564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('qtm793082il7r21cu3led9ufgslhtl0m', '192.168.10.251', 1585887764, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538353837393035323b),
('r578j58m7tu709qpuhitnagphpmbho24', '192.168.20.167', 1586144874, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363134343837343b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b666c6173685f6d6573736167657c733a32333a2244617461204164646564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('sltafh2d4icd9eqc56hhgvuh8f0purqi', '192.168.20.167', 1586141142, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363134313134323b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b666c6173685f6d6573736167657c733a32333a2244617461204164646564205375636365737366756c6c79223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('sr2fd7q48im1ggu5g4osdkj4md1j4l5m', '192.168.10.55', 1586317526, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363331373532363b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('st5q2qt5ovg16371kt6prjop88k3ogj8', '192.168.20.167', 1586136028, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363133363032383b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b),
('tgser7ufh9jk60qn0kns1vo9hm7nov1q', '192.168.20.167', 1586138121, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363133383132313b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b),
('tjnur1g2t4p97hnplbjeda7ft4njh9mn', '192.168.10.55', 1586318530, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363331383533303b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a31333a2241646d696e6973747261746f72223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('tkr2ebfm5ihi3qgdnar1r6l82nc9pqvt', '192.168.20.167', 1586244709, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363234343730393b),
('vghinadaeeob2m1pptoeqjfhh1ajka6j', '192.168.20.167', 1586143695, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363134333639353b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b),
('vu9ssjg2kguervevb24n946v4pos1ber', '192.168.20.167', 1586137433, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363133373433333b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b),
('vudgvcg8i52s2ui5719dimbig8l466e8', '192.168.20.167', 1586136713, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538363133363731333b6d61726b6574696e675f6c6f67696e7c733a313a2231223b6d61726b6574696e675f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a393a226d61726b6574696e67223b6c6f67696e5f747970657c733a393a226d61726b6574696e67223b);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `name` varchar(11) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `name`) VALUES
(4, '7'),
(5, '8'),
(6, '9'),
(7, 'X'),
(8, 'XI'),
(9, 'XII');

-- --------------------------------------------------------

--
-- Table structure for table `class_routine`
--

CREATE TABLE `class_routine` (
  `class_routine_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_end` int(11) DEFAULT NULL,
  `time_start_min` int(11) DEFAULT NULL,
  `time_end_min` int(11) DEFAULT NULL,
  `day` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class_routine`
--

INSERT INTO `class_routine` (`class_routine_id`, `class_id`, `section_id`, `subject_id`, `time_start`, `time_end`, `time_start_min`, `time_end_min`, `day`, `year`) VALUES
(1, 1, 1, 1, 7, 10, 0, 0, 'sunday', '2018-2019'),
(2, 1, 4, 2, 10, 11, 0, 0, 'tuesday', '2018-2019'),
(19, 4, 1, 133, 8, 9, 40, 20, 'monday', '2019-2020'),
(20, 4, 1, 123, 9, 10, 21, 0, 'monday', '2019-2020'),
(21, 4, 1, 124, 10, 11, 31, 10, 'monday', '2019-2020'),
(22, 4, 1, 124, 11, 11, 11, 50, 'monday', '2019-2020'),
(25, 4, 1, 125, 14, 15, 21, 0, 'monday', '2019-2020'),
(26, 4, 1, 125, 15, 15, 1, 40, 'monday', '2019-2020'),
(27, 4, 1, 126, 8, 9, 40, 20, 'tuesday', '2019-2020'),
(28, 4, 1, 126, 9, 10, 21, 0, 'tuesday', '2019-2020'),
(29, 4, 1, 124, 10, 11, 30, 10, 'tuesday', '2019-2020'),
(30, 4, 1, 124, 11, 11, 11, 50, 'tuesday', '2019-2020'),
(31, 4, 1, 123, 13, 13, 0, 40, 'tuesday', '2019-2020'),
(32, 4, 1, 123, 13, 14, 41, 20, 'tuesday', '2019-2020'),
(33, 4, 1, 127, 14, 15, 21, 0, 'tuesday', '2019-2020'),
(34, 4, 1, 127, 15, 15, 1, 40, 'tuesday', '2019-2020'),
(35, 4, 1, 125, 8, 9, 40, 20, 'wednesday', '2019-2020'),
(36, 4, 1, 125, 9, 10, 21, 0, 'wednesday', '2019-2020'),
(37, 4, 1, 123, 10, 11, 30, 10, 'wednesday', '2019-2020'),
(38, 4, 1, 123, 11, 11, 11, 50, 'wednesday', '2019-2020'),
(39, 4, 1, 128, 13, 13, 0, 40, 'wednesday', '2019-2020'),
(40, 4, 1, 128, 13, 14, 41, 20, 'wednesday', '2019-2020'),
(41, 4, 1, 124, 14, 15, 21, 0, 'wednesday', '2019-2020'),
(42, 4, 1, 124, 15, 15, 1, 40, 'wednesday', '2019-2020'),
(43, 4, 1, 127, 8, 9, 40, 20, 'thursday', '2019-2020'),
(44, 4, 1, 127, 9, 10, 21, 0, 'thursday', '2019-2020'),
(45, 4, 1, 123, 10, 11, 30, 10, 'thursday', '2019-2020'),
(46, 4, 1, 123, 11, 11, 11, 50, 'thursday', '2019-2020'),
(47, 4, 1, 125, 13, 13, 0, 40, 'thursday', '2019-2020'),
(48, 4, 1, 125, 13, 14, 41, 20, 'thursday', '2019-2020'),
(49, 4, 1, 129, 14, 15, 21, 0, 'thursday', '2019-2020'),
(50, 4, 1, 129, 15, 15, 1, 40, 'thursday', '2019-2020'),
(51, 4, 1, 130, 8, 9, 40, 10, 'friday', '2019-2020'),
(52, 4, 1, 130, 9, 9, 11, 40, 'friday', '2019-2020'),
(53, 4, 1, 127, 9, 10, 41, 10, 'friday', '2019-2020'),
(54, 4, 1, 127, 13, 13, 0, 40, 'friday', '2019-2020'),
(55, 4, 1, 127, 13, 14, 41, 20, 'friday', '2019-2020'),
(56, 4, 2, 136, 8, 9, 40, 20, 'monday', '2019-2020'),
(57, 4, 2, 136, 9, 10, 21, 0, 'monday', '2019-2020'),
(58, 4, 2, 125, 10, 11, 30, 10, 'monday', '2019-2020'),
(59, 4, 2, 123, 13, 13, 0, 40, 'monday', '2019-2020'),
(60, 4, 2, 129, 14, 15, 21, 0, 'monday', '2019-2020'),
(61, 4, 2, 129, 15, 15, 1, 40, 'monday', '2019-2020'),
(62, 4, 2, 123, 8, 9, 40, 20, 'tuesday', '2019-2020'),
(63, 4, 2, 123, 9, 10, 21, 0, 'tuesday', '2019-2020'),
(64, 4, 2, 126, 10, 11, 30, 10, 'tuesday', '2019-2020'),
(65, 4, 2, 126, 11, 11, 11, 50, 'tuesday', '2019-2020'),
(66, 4, 2, 127, 13, 13, 0, 40, 'tuesday', '2019-2020'),
(67, 4, 2, 127, 13, 14, 41, 20, 'tuesday', '2019-2020'),
(68, 4, 2, 125, 14, 15, 21, 0, 'tuesday', '2019-2020'),
(69, 4, 2, 125, 15, 15, 1, 40, 'tuesday', '2019-2020'),
(70, 4, 2, 127, 8, 9, 40, 20, 'wednesday', '2019-2020'),
(71, 4, 2, 127, 9, 10, 20, 0, 'wednesday', '2019-2020'),
(72, 4, 2, 131, 10, 11, 30, 10, 'wednesday', '2019-2020'),
(73, 4, 2, 131, 11, 11, 10, 50, 'wednesday', '2019-2020'),
(74, 4, 2, 123, 13, 13, 0, 40, 'wednesday', '2019-2020'),
(75, 4, 2, 123, 13, 14, 40, 20, 'wednesday', '2019-2020'),
(76, 4, 2, 128, 14, 15, 20, 0, 'wednesday', '2019-2020'),
(77, 4, 2, 128, 15, 15, 0, 40, 'wednesday', '2019-2020'),
(78, 4, 2, 125, 8, 9, 40, 20, 'thursday', '2019-2020'),
(79, 4, 2, 125, 9, 10, 20, 0, 'thursday', '2019-2020'),
(80, 4, 2, 127, 10, 11, 30, 10, 'thursday', '2019-2020'),
(81, 4, 2, 127, 11, 11, 10, 50, 'thursday', '2019-2020'),
(82, 4, 2, 131, 13, 13, 0, 40, 'thursday', '2019-2020'),
(83, 4, 2, 131, 13, 14, 40, 20, 'thursday', '2019-2020'),
(84, 4, 2, 131, 14, 15, 20, 0, 'thursday', '2019-2020'),
(85, 4, 2, 131, 15, 15, 0, 40, 'thursday', '2019-2020'),
(86, 4, 2, 123, 8, 9, 40, 10, 'friday', '2019-2020'),
(87, 4, 2, 123, 9, 9, 11, 40, 'friday', '2019-2020'),
(88, 4, 2, 125, 9, 10, 41, 10, 'friday', '2019-2020'),
(89, 4, 2, 130, 13, 13, 0, 40, 'friday', '2019-2020'),
(90, 4, 2, 130, 13, 14, 41, 20, 'friday', '2019-2020'),
(91, 4, 3, 125, 8, 9, 40, 20, 'monday', '2019-2020'),
(92, 4, 3, 125, 9, 10, 21, 0, 'monday', '2019-2020'),
(93, 4, 3, 123, 10, 11, 30, 10, 'monday', '2019-2020'),
(94, 4, 3, 123, 11, 11, 11, 50, 'monday', '2019-2020'),
(95, 4, 3, 127, 13, 13, 0, 40, 'monday', '2019-2020'),
(96, 4, 3, 127, 13, 14, 41, 20, 'monday', '2019-2020'),
(97, 4, 3, 127, 14, 15, 21, 0, 'monday', '2019-2020'),
(98, 4, 3, 127, 15, 15, 1, 40, 'monday', '2019-2020'),
(99, 4, 3, 131, 8, 9, 40, 20, 'tuesday', '2019-2020'),
(100, 4, 3, 131, 9, 10, 21, 0, 'tuesday', '2019-2020'),
(101, 4, 3, 123, 10, 11, 30, 10, 'tuesday', '2019-2020'),
(102, 4, 3, 126, 13, 13, 0, 40, 'tuesday', '2019-2020'),
(103, 4, 3, 123, 11, 11, 11, 50, 'tuesday', '2019-2020'),
(104, 4, 3, 126, 13, 14, 41, 20, 'tuesday', '2019-2020'),
(105, 4, 3, 129, 14, 15, 21, 0, 'tuesday', '2019-2020'),
(106, 4, 3, 129, 15, 15, 1, 40, 'tuesday', '2019-2020'),
(107, 4, 3, 123, 8, 9, 40, 20, 'wednesday', '2019-2020'),
(108, 4, 3, 123, 9, 10, 21, 0, 'wednesday', '2019-2020'),
(109, 4, 3, 128, 10, 11, 30, 10, 'wednesday', '2019-2020'),
(110, 4, 3, 127, 13, 13, 0, 40, 'wednesday', '2019-2020'),
(111, 4, 3, 128, 11, 11, 10, 50, 'wednesday', '2019-2020'),
(112, 4, 3, 127, 13, 14, 41, 20, 'wednesday', '2019-2020'),
(113, 4, 3, 125, 14, 15, 21, 0, 'wednesday', '2019-2020'),
(114, 4, 3, 125, 15, 15, 1, 40, 'wednesday', '2019-2020'),
(115, 4, 3, 131, 8, 9, 40, 20, 'thursday', '2019-2020'),
(116, 4, 3, 131, 9, 10, 20, 0, 'thursday', '2019-2020'),
(117, 4, 3, 125, 10, 11, 30, 10, 'thursday', '2019-2020'),
(118, 4, 3, 125, 11, 11, 10, 50, 'thursday', '2019-2020'),
(119, 4, 3, 123, 13, 13, 0, 40, 'thursday', '2019-2020'),
(120, 4, 3, 123, 13, 14, 41, 20, 'thursday', '2019-2020'),
(121, 4, 3, 127, 14, 15, 21, 0, 'thursday', '2019-2020'),
(122, 4, 3, 127, 15, 15, 1, 40, 'thursday', '2019-2020'),
(123, 4, 3, 125, 8, 9, 40, 10, 'friday', '2019-2020'),
(124, 4, 3, 125, 9, 9, 11, 40, 'friday', '2019-2020'),
(125, 4, 3, 130, 9, 10, 41, 10, 'friday', '2019-2020'),
(126, 4, 3, 131, 13, 13, 0, 40, 'friday', '2019-2020'),
(127, 4, 3, 131, 13, 14, 41, 20, 'friday', '2019-2020'),
(128, 5, 4, 150, 8, 9, 40, 20, 'monday', '2019-2020'),
(129, 5, 4, 150, 9, 10, 21, 0, 'monday', '2019-2020'),
(130, 5, 4, 147, 10, 11, 30, 10, 'monday', '2019-2020'),
(131, 5, 4, 147, 11, 11, 11, 50, 'monday', '2019-2020'),
(132, 5, 4, 152, 13, 13, 0, 40, 'monday', '2019-2020'),
(133, 5, 4, 152, 13, 14, 41, 20, 'monday', '2019-2020'),
(134, 5, 4, 154, 14, 15, 21, 0, 'monday', '2019-2020'),
(135, 5, 4, 154, 15, 15, 1, 40, 'monday', '2019-2020'),
(136, 5, 4, 147, 8, 9, 40, 20, 'tuesday', '2019-2020'),
(137, 5, 4, 147, 9, 10, 21, 0, 'tuesday', '2019-2020'),
(138, 5, 4, 152, 10, 11, 30, 10, 'tuesday', '2019-2020'),
(139, 5, 4, 152, 11, 11, 11, 50, 'tuesday', '2019-2020'),
(140, 5, 4, 150, 13, 13, 0, 40, 'tuesday', '2019-2020'),
(141, 5, 4, 150, 13, 14, 41, 20, 'tuesday', '2019-2020'),
(142, 5, 4, 154, 14, 15, 21, 0, 'tuesday', '2019-2020'),
(143, 5, 4, 154, 15, 15, 1, 40, 'tuesday', '2019-2020'),
(146, 5, 4, 148, 8, 9, 40, 20, 'wednesday', '2019-2020'),
(147, 5, 4, 148, 9, 10, 21, 0, 'wednesday', '2019-2020'),
(148, 5, 4, 147, 13, 13, 0, 40, 'wednesday', '2019-2020'),
(149, 5, 4, 147, 13, 14, 41, 20, 'wednesday', '2019-2020'),
(150, 5, 4, 150, 14, 15, 21, 0, 'wednesday', '2019-2020'),
(151, 5, 4, 150, 15, 15, 1, 40, 'wednesday', '2019-2020'),
(152, 5, 4, 148, 8, 9, 40, 20, 'thursday', '2019-2020'),
(153, 5, 4, 148, 9, 10, 21, 0, 'thursday', '2019-2020'),
(154, 5, 4, 153, 10, 11, 30, 10, 'thursday', '2019-2020'),
(155, 5, 4, 153, 11, 11, 11, 50, 'thursday', '2019-2020'),
(156, 5, 4, 150, 13, 13, 0, 40, 'thursday', '2019-2020'),
(157, 5, 4, 150, 13, 14, 41, 20, 'thursday', '2019-2020'),
(158, 5, 4, 149, 14, 15, 21, 0, 'thursday', '2019-2020'),
(159, 5, 4, 149, 15, 15, 1, 40, 'thursday', '2019-2020'),
(160, 5, 4, 147, 8, 9, 40, 10, 'friday', '2019-2020'),
(161, 5, 4, 154, 9, 9, 11, 40, 'friday', '2019-2020'),
(162, 5, 4, 154, 9, 10, 41, 10, 'friday', '2019-2020'),
(163, 5, 4, 151, 13, 13, 0, 40, 'friday', '2019-2020'),
(164, 5, 4, 151, 13, 14, 41, 20, 'friday', '2019-2020'),
(165, 5, 5, 162, 8, 9, 40, 20, 'monday', '2019-2020'),
(166, 5, 5, 162, 9, 10, 21, 0, 'monday', '2019-2020'),
(167, 5, 5, 158, 10, 11, 30, 10, 'monday', '2019-2020'),
(168, 5, 5, 158, 11, 11, 11, 50, 'monday', '2019-2020'),
(169, 5, 5, 162, 13, 13, 0, 40, 'monday', '2019-2020'),
(170, 5, 5, 162, 13, 14, 41, 20, 'monday', '2019-2020'),
(171, 5, 5, 160, 14, 15, 21, 0, 'monday', '2019-2020'),
(172, 5, 5, 160, 15, 15, 1, 40, 'monday', '2019-2020'),
(173, 5, 5, 158, 8, 9, 40, 20, 'tuesday', '2019-2020'),
(174, 5, 5, 158, 9, 10, 21, 0, 'tuesday', '2019-2020'),
(175, 5, 5, 155, 10, 11, 30, 10, 'tuesday', '2019-2020'),
(176, 5, 5, 155, 11, 11, 11, 50, 'tuesday', '2019-2020'),
(177, 5, 5, 162, 13, 13, 0, 40, 'tuesday', '2019-2020'),
(178, 5, 5, 162, 13, 14, 41, 20, 'tuesday', '2019-2020'),
(179, 5, 5, 160, 14, 15, 21, 0, 'tuesday', '2019-2020'),
(180, 5, 5, 160, 15, 15, 1, 40, 'tuesday', '2019-2020'),
(183, 5, 5, 158, 10, 11, 30, 10, 'wednesday', '2019-2020'),
(184, 5, 5, 158, 11, 11, 11, 50, 'wednesday', '2019-2020'),
(185, 5, 5, 160, 13, 13, 0, 40, 'wednesday', '2019-2020'),
(186, 5, 5, 160, 13, 14, 40, 20, 'wednesday', '2019-2020'),
(187, 5, 5, 155, 14, 15, 20, 0, 'wednesday', '2019-2020'),
(188, 5, 5, 155, 15, 15, 0, 40, 'wednesday', '2019-2020'),
(189, 5, 5, 159, 8, 9, 40, 20, 'thursday', '2019-2020'),
(190, 5, 5, 159, 9, 10, 20, 0, 'thursday', '2019-2020'),
(191, 5, 5, 156, 10, 11, 30, 10, 'thursday', '2019-2020'),
(192, 5, 5, 156, 11, 11, 10, 50, 'thursday', '2019-2020'),
(193, 5, 5, 155, 13, 13, 0, 40, 'thursday', '2019-2020'),
(194, 5, 5, 155, 13, 14, 40, 20, 'thursday', '2019-2020'),
(195, 5, 5, 161, 14, 15, 20, 0, 'thursday', '2019-2020'),
(196, 5, 5, 161, 15, 15, 0, 40, 'thursday', '2019-2020'),
(197, 5, 5, 158, 8, 9, 40, 10, 'friday', '2019-2020'),
(198, 5, 5, 155, 9, 9, 10, 40, 'friday', '2019-2020'),
(199, 5, 5, 155, 9, 10, 40, 10, 'friday', '2019-2020'),
(200, 5, 5, 157, 13, 13, 0, 40, 'friday', '2019-2020'),
(201, 5, 5, 157, 13, 14, 40, 20, 'friday', '2019-2020'),
(202, 5, 6, 155, 8, 9, 40, 20, 'monday', '2019-2020'),
(203, 5, 6, 155, 9, 10, 20, 0, 'monday', '2019-2020'),
(204, 5, 6, 162, 10, 11, 30, 10, 'monday', '2019-2020'),
(205, 5, 6, 162, 11, 11, 10, 50, 'monday', '2019-2020'),
(206, 5, 6, 158, 13, 13, 0, 40, 'monday', '2019-2020'),
(207, 5, 6, 158, 13, 14, 40, 20, 'monday', '2019-2020'),
(208, 5, 6, 155, 14, 15, 20, 0, 'monday', '2019-2020'),
(209, 5, 6, 155, 15, 15, 0, 40, 'monday', '2019-2020'),
(210, 5, 6, 160, 8, 9, 40, 20, 'tuesday', '2019-2020'),
(211, 5, 6, 160, 9, 10, 20, 0, 'tuesday', '2019-2020'),
(212, 5, 6, 162, 10, 11, 30, 10, 'tuesday', '2019-2020'),
(213, 5, 6, 162, 11, 11, 10, 50, 'tuesday', '2019-2020'),
(214, 5, 6, 155, 13, 13, 0, 40, 'tuesday', '2019-2020'),
(215, 5, 6, 155, 13, 14, 40, 20, 'tuesday', '2019-2020'),
(216, 5, 6, 158, 14, 15, 20, 0, 'tuesday', '2019-2020'),
(217, 5, 6, 158, 15, 15, 0, 40, 'tuesday', '2019-2020'),
(220, 5, 6, 159, 10, 11, 30, 10, 'wednesday', '2019-2020'),
(221, 5, 6, 159, 11, 11, 10, 50, 'wednesday', '2019-2020'),
(222, 5, 6, 158, 13, 13, 0, 40, 'wednesday', '2019-2020'),
(223, 5, 6, 158, 13, 14, 40, 20, 'wednesday', '2019-2020'),
(224, 5, 6, 156, 14, 15, 20, 0, 'wednesday', '2019-2020'),
(225, 5, 6, 156, 15, 15, 0, 40, 'wednesday', '2019-2020'),
(226, 5, 6, 160, 8, 9, 40, 20, 'thursday', '2019-2020'),
(227, 5, 6, 160, 9, 10, 20, 0, 'thursday', '2019-2020'),
(228, 5, 6, 157, 10, 11, 30, 10, 'thursday', '2019-2020'),
(229, 5, 6, 157, 11, 11, 10, 50, 'thursday', '2019-2020'),
(230, 5, 6, 161, 13, 13, 0, 40, 'thursday', '2019-2020'),
(231, 5, 6, 161, 13, 14, 40, 20, 'thursday', '2019-2020'),
(232, 5, 6, 158, 14, 15, 20, 0, 'thursday', '2019-2020'),
(233, 5, 6, 158, 15, 15, 0, 40, 'thursday', '2019-2020'),
(234, 5, 6, 162, 8, 9, 40, 10, 'friday', '2019-2020'),
(235, 5, 6, 162, 9, 9, 10, 40, 'friday', '2019-2020'),
(236, 5, 6, 160, 9, 10, 40, 10, 'friday', '2019-2020'),
(237, 5, 6, 155, 13, 13, 0, 40, 'friday', '2019-2020'),
(238, 5, 6, 155, 13, 14, 40, 20, 'friday', '2019-2020'),
(239, 6, 7, 173, 8, 9, 40, 20, 'monday', '2019-2020'),
(240, 6, 7, 173, 9, 10, 20, 0, 'monday', '2019-2020'),
(241, 6, 7, 174, 10, 11, 30, 10, 'monday', '2019-2020'),
(242, 6, 7, 174, 11, 11, 10, 50, 'monday', '2019-2020'),
(243, 6, 7, 172, 13, 13, 0, 40, 'monday', '2019-2020'),
(244, 6, 7, 172, 13, 14, 40, 20, 'monday', '2019-2020'),
(245, 6, 7, 176, 14, 15, 20, 0, 'monday', '2019-2020'),
(246, 6, 7, 176, 15, 15, 0, 40, 'monday', '2019-2020'),
(247, 6, 7, 177, 8, 9, 40, 20, 'tuesday', '2019-2020'),
(248, 6, 7, 177, 9, 10, 20, 0, 'tuesday', '2019-2020'),
(249, 6, 7, 176, 10, 11, 30, 10, 'tuesday', '2019-2020'),
(250, 6, 7, 176, 11, 11, 10, 50, 'tuesday', '2019-2020'),
(251, 6, 7, 173, 13, 13, 0, 40, 'tuesday', '2019-2020'),
(252, 6, 7, 173, 13, 14, 40, 20, 'tuesday', '2019-2020'),
(253, 6, 7, 172, 14, 15, 20, 0, 'tuesday', '2019-2020'),
(254, 6, 7, 172, 15, 15, 0, 40, 'tuesday', '2019-2020'),
(257, 6, 7, 173, 10, 11, 30, 10, 'wednesday', '2019-2020'),
(258, 6, 7, 173, 11, 11, 10, 50, 'wednesday', '2019-2020'),
(259, 6, 7, 172, 13, 13, 0, 40, 'wednesday', '2019-2020'),
(260, 6, 7, 172, 13, 14, 40, 20, 'wednesday', '2019-2020'),
(261, 6, 7, 177, 14, 15, 20, 0, 'wednesday', '2019-2020'),
(262, 6, 7, 177, 15, 15, 0, 40, 'wednesday', '2019-2020'),
(265, 6, 7, 172, 10, 11, 30, 10, 'thursday', '2019-2020'),
(266, 6, 7, 172, 11, 11, 10, 50, 'thursday', '2019-2020'),
(267, 6, 7, 174, 13, 13, 0, 40, 'thursday', '2019-2020'),
(268, 6, 7, 174, 13, 14, 40, 20, 'thursday', '2019-2020'),
(269, 6, 7, 173, 14, 15, 20, 0, 'thursday', '2019-2020'),
(270, 6, 7, 173, 15, 15, 0, 40, 'thursday', '2019-2020'),
(271, 6, 7, 173, 8, 9, 40, 10, 'friday', '2019-2020'),
(272, 6, 7, 173, 9, 9, 10, 40, 'friday', '2019-2020'),
(273, 6, 7, 176, 9, 10, 40, 10, 'friday', '2019-2020'),
(276, 6, 7, 172, 14, 15, 30, 0, 'friday', '2019-2020'),
(278, 6, 7, 176, 15, 16, 30, 0, 'friday', '2019-2020'),
(280, 6, 8, 172, 8, 9, 40, 20, 'monday', '2019-2020'),
(281, 6, 8, 172, 9, 10, 20, 0, 'monday', '2019-2020'),
(282, 6, 8, 176, 10, 11, 30, 10, 'monday', '2019-2020'),
(283, 6, 8, 176, 11, 11, 10, 50, 'monday', '2019-2020'),
(284, 6, 8, 173, 13, 13, 0, 40, 'monday', '2019-2020'),
(285, 6, 8, 173, 13, 14, 40, 20, 'monday', '2019-2020'),
(286, 6, 8, 174, 14, 15, 20, 0, 'monday', '2019-2020'),
(287, 6, 8, 185, 15, 15, 0, 40, 'monday', '2019-2020'),
(288, 6, 8, 172, 8, 9, 40, 20, 'tuesday', '2019-2020'),
(289, 6, 8, 172, 9, 10, 20, 0, 'tuesday', '2019-2020'),
(290, 6, 8, 173, 10, 11, 30, 10, 'tuesday', '2019-2020'),
(291, 6, 8, 173, 11, 11, 10, 50, 'tuesday', '2019-2020'),
(292, 6, 8, 176, 13, 13, 0, 40, 'tuesday', '2019-2020'),
(293, 6, 8, 176, 13, 14, 40, 20, 'tuesday', '2019-2020'),
(294, 6, 8, 177, 14, 15, 20, 0, 'tuesday', '2019-2020'),
(295, 6, 8, 177, 15, 15, 0, 40, 'tuesday', '2019-2020'),
(298, 6, 8, 187, 10, 11, 30, 10, 'wednesday', '2019-2020'),
(299, 6, 8, 187, 11, 11, 10, 50, 'wednesday', '2019-2020'),
(300, 6, 8, 173, 13, 13, 0, 40, 'wednesday', '2019-2020'),
(301, 6, 8, 173, 13, 14, 40, 20, 'wednesday', '2019-2020'),
(302, 6, 8, 174, 14, 15, 20, 0, 'wednesday', '2019-2020'),
(303, 6, 8, 174, 15, 15, 0, 40, 'wednesday', '2019-2020'),
(306, 6, 8, 177, 10, 11, 30, 10, 'thursday', '2019-2020'),
(307, 6, 8, 177, 11, 11, 10, 50, 'thursday', '2019-2020'),
(308, 6, 8, 173, 13, 13, 0, 40, 'thursday', '2019-2020'),
(309, 6, 8, 173, 13, 14, 40, 20, 'thursday', '2019-2020'),
(310, 6, 8, 183, 14, 15, 20, 0, 'thursday', '2019-2020'),
(311, 6, 8, 183, 15, 15, 0, 40, 'thursday', '2019-2020'),
(312, 6, 8, 176, 8, 9, 40, 10, 'friday', '2019-2020'),
(313, 6, 8, 183, 11, 11, 10, 40, 'friday', '2019-2020'),
(314, 6, 8, 185, 9, 10, 40, 10, 'friday', '2019-2020'),
(315, 6, 8, 172, 10, 11, 40, 10, 'friday', '2019-2020'),
(321, 6, 9, 187, 8, 9, 40, 20, 'monday', '2019-2020'),
(322, 6, 9, 176, 9, 10, 20, 0, 'monday', '2019-2020'),
(323, 6, 9, 183, 10, 11, 30, 10, 'monday', '2019-2020'),
(324, 6, 9, 194, 11, 11, 10, 50, 'monday', '2019-2020'),
(325, 6, 9, 188, 13, 13, 0, 40, 'monday', '2019-2020'),
(326, 6, 9, 188, 13, 14, 40, 20, 'monday', '2019-2020'),
(327, 6, 9, 195, 14, 15, 20, 0, 'monday', '2019-2020'),
(328, 6, 9, 195, 15, 15, 0, 40, 'monday', '2019-2020'),
(329, 6, 9, 195, 8, 9, 40, 20, 'tuesday', '2019-2020'),
(330, 6, 9, 195, 9, 10, 20, 0, 'tuesday', '2019-2020'),
(331, 6, 9, 188, 10, 11, 30, 10, 'tuesday', '2019-2020'),
(332, 6, 9, 188, 11, 11, 10, 50, 'tuesday', '2019-2020'),
(333, 6, 9, 194, 13, 13, 0, 40, 'tuesday', '2019-2020'),
(334, 6, 9, 194, 13, 14, 40, 20, 'tuesday', '2019-2020'),
(335, 6, 9, 198, 14, 15, 20, 0, 'tuesday', '2019-2020'),
(336, 6, 9, 198, 15, 15, 0, 40, 'tuesday', '2019-2020'),
(339, 6, 9, 183, 10, 11, 30, 10, 'wednesday', '2019-2020'),
(340, 6, 9, 183, 11, 11, 10, 50, 'wednesday', '2019-2020'),
(341, 6, 9, 185, 13, 13, 0, 40, 'wednesday', '2019-2020'),
(342, 6, 9, 185, 13, 14, 40, 20, 'wednesday', '2019-2020'),
(343, 6, 9, 187, 14, 15, 20, 0, 'wednesday', '2019-2020'),
(344, 6, 9, 187, 15, 15, 0, 40, 'wednesday', '2019-2020'),
(347, 6, 9, 195, 10, 11, 30, 10, 'thursday', '2019-2020'),
(350, 6, 9, 183, 13, 14, 40, 20, 'thursday', '2019-2020'),
(351, 6, 9, 196, 14, 15, 20, 0, 'thursday', '2019-2020'),
(352, 6, 9, 196, 15, 15, 0, 40, 'thursday', '2019-2020'),
(353, 6, 9, 172, 8, 9, 40, 10, 'friday', '2019-2020'),
(355, 6, 9, 184, 9, 10, 40, 10, 'friday', '2019-2020'),
(356, 6, 9, 187, 10, 11, 40, 10, 'friday', '2019-2020'),
(357, 6, 9, 187, 11, 11, 10, 40, 'friday', '2019-2020'),
(362, 7, 11, 204, 8, 10, 30, 0, 'friday', '2019-2020'),
(363, 7, 11, 264, 8, 9, 40, 20, 'monday', '2019-2020'),
(364, 7, 11, 264, 9, 10, 20, 0, 'monday', '2019-2020'),
(365, 7, 11, 268, 10, 11, 30, 10, 'monday', '2019-2020'),
(366, 7, 11, 268, 11, 11, 10, 50, 'monday', '2019-2020'),
(367, 7, 11, 282, 13, 13, 0, 40, 'monday', '2019-2020'),
(368, 7, 11, 282, 13, 14, 40, 20, 'monday', '2019-2020'),
(369, 7, 11, 266, 14, 15, 20, 0, 'monday', '2019-2020'),
(370, 7, 11, 266, 15, 15, 0, 40, 'monday', '2019-2020'),
(371, 7, 11, 282, 8, 9, 40, 20, 'tuesday', '2019-2020'),
(372, 7, 11, 282, 9, 10, 20, 0, 'tuesday', '2019-2020'),
(373, 7, 11, 265, 10, 11, 30, 10, 'tuesday', '2019-2020'),
(374, 7, 11, 265, 11, 11, 10, 50, 'tuesday', '2019-2020'),
(375, 7, 11, 266, 13, 13, 0, 40, 'tuesday', '2019-2020'),
(376, 7, 11, 266, 13, 14, 40, 20, 'tuesday', '2019-2020'),
(377, 7, 11, 268, 14, 15, 20, 0, 'tuesday', '2019-2020'),
(378, 7, 11, 268, 15, 15, 0, 40, 'tuesday', '2019-2020'),
(379, 7, 11, 267, 8, 9, 40, 20, 'wednesday', '2019-2020'),
(380, 7, 11, 267, 9, 10, 20, 0, 'wednesday', '2019-2020'),
(381, 7, 11, 264, 10, 11, 30, 10, 'wednesday', '2019-2020'),
(382, 7, 11, 264, 11, 11, 10, 50, 'wednesday', '2019-2020'),
(383, 7, 11, 263, 13, 13, 0, 40, 'wednesday', '2019-2020'),
(384, 7, 11, 263, 13, 14, 40, 20, 'wednesday', '2019-2020'),
(385, 7, 11, 268, 14, 15, 20, 0, 'wednesday', '2019-2020'),
(386, 7, 11, 268, 15, 15, 0, 40, 'wednesday', '2019-2020'),
(387, 7, 11, 266, 8, 9, 40, 20, 'thursday', '2019-2020'),
(388, 7, 11, 266, 9, 10, 20, 0, 'thursday', '2019-2020'),
(389, 7, 11, 262, 10, 11, 30, 10, 'thursday', '2019-2020'),
(390, 7, 11, 262, 11, 11, 10, 50, 'thursday', '2019-2020'),
(391, 7, 11, 262, 13, 13, 0, 40, 'thursday', '2019-2020'),
(392, 7, 11, 262, 13, 14, 40, 20, 'thursday', '2019-2020'),
(393, 7, 11, 270, 14, 15, 20, 0, 'thursday', '2019-2020'),
(394, 7, 11, 270, 15, 15, 0, 40, 'thursday', '2019-2020'),
(395, 7, 11, 271, 8, 9, 40, 20, 'friday', '2019-2020'),
(396, 7, 11, 271, 9, 10, 20, 0, 'friday', '2019-2020'),
(397, 7, 11, 263, 10, 11, 30, 10, 'friday', '2019-2020'),
(398, 7, 11, 263, 11, 11, 10, 50, 'friday', '2019-2020'),
(399, 7, 11, 266, 12, 13, 40, 20, 'friday', '2019-2020'),
(400, 7, 10, 264, 8, 9, 40, 20, 'monday', '2019-2020'),
(401, 7, 10, 264, 9, 10, 20, 0, 'monday', '2019-2020'),
(402, 7, 10, 268, 10, 11, 30, 10, 'monday', '2019-2020'),
(403, 7, 10, 268, 11, 11, 10, 50, 'monday', '2019-2020'),
(404, 7, 10, 272, 13, 13, 0, 40, 'monday', '2019-2020'),
(405, 7, 10, 272, 13, 14, 40, 20, 'monday', '2019-2020'),
(406, 7, 10, 281, 14, 15, 20, 0, 'monday', '2019-2020'),
(407, 7, 10, 281, 15, 15, 0, 40, 'monday', '2019-2020'),
(408, 7, 10, 278, 8, 9, 40, 20, 'tuesday', '2019-2020'),
(409, 7, 10, 278, 9, 10, 20, 0, 'tuesday', '2019-2020'),
(410, 7, 10, 279, 10, 11, 30, 10, 'tuesday', '2019-2020'),
(411, 7, 10, 279, 11, 11, 10, 50, 'tuesday', '2019-2020'),
(412, 7, 10, 280, 13, 13, 0, 40, 'tuesday', '2019-2020'),
(413, 7, 10, 280, 13, 14, 40, 20, 'tuesday', '2019-2020'),
(414, 7, 10, 281, 14, 15, 20, 0, 'tuesday', '2019-2020'),
(415, 7, 10, 281, 15, 15, 0, 40, 'tuesday', '2019-2020'),
(416, 7, 10, 272, 8, 9, 40, 20, 'wednesday', '2019-2020'),
(417, 7, 10, 272, 9, 10, 20, 0, 'wednesday', '2019-2020'),
(418, 7, 10, 274, 10, 11, 30, 10, 'wednesday', '2019-2020'),
(419, 7, 10, 274, 11, 11, 10, 50, 'wednesday', '2019-2020'),
(420, 7, 10, 274, 13, 13, 0, 40, 'wednesday', '2019-2020'),
(421, 7, 10, 274, 13, 14, 40, 20, 'wednesday', '2019-2020'),
(422, 7, 10, 275, 14, 15, 20, 0, 'wednesday', '2019-2020'),
(423, 7, 10, 275, 15, 15, 0, 40, 'wednesday', '2019-2020'),
(424, 7, 10, 276, 8, 9, 40, 20, 'thursday', '2019-2020'),
(425, 7, 10, 276, 9, 10, 20, 0, 'thursday', '2019-2020'),
(426, 7, 10, 280, 10, 11, 30, 10, 'thursday', '2019-2020'),
(427, 7, 10, 280, 11, 11, 10, 50, 'thursday', '2019-2020'),
(428, 7, 10, 274, 13, 13, 0, 20, 'thursday', '2019-2020'),
(429, 7, 10, 274, 13, 14, 20, 0, 'thursday', '2019-2020'),
(430, 7, 10, 279, 14, 15, 20, 0, 'thursday', '2019-2020'),
(431, 7, 10, 279, 15, 15, 0, 40, 'thursday', '2019-2020'),
(432, 7, 10, 274, 8, 9, 40, 20, 'friday', '2019-2020'),
(433, 7, 10, 274, 9, 10, 20, 0, 'friday', '2019-2020'),
(434, 7, 10, 275, 10, 11, 30, 10, 'friday', '2019-2020'),
(435, 7, 10, 276, 11, 11, 10, 50, 'friday', '2019-2020'),
(436, 7, 10, 276, 12, 13, 40, 20, 'friday', '2019-2020'),
(437, 8, 13, 214, 8, 9, 40, 20, 'monday', '2019-2020'),
(438, 8, 13, 214, 9, 10, 20, 0, 'monday', '2019-2020'),
(439, 8, 13, 207, 10, 11, 30, 10, 'monday', '2019-2020'),
(440, 8, 13, 207, 11, 11, 10, 50, 'monday', '2019-2020'),
(441, 8, 13, 213, 13, 13, 0, 40, 'monday', '2019-2020'),
(442, 8, 13, 213, 13, 14, 40, 20, 'monday', '2019-2020'),
(443, 8, 13, 212, 14, 15, 20, 0, 'monday', '2019-2020'),
(444, 8, 13, 212, 15, 15, 0, 40, 'monday', '2019-2020'),
(445, 8, 13, 205, 8, 9, 40, 20, 'tuesday', '2019-2020'),
(446, 8, 13, 205, 9, 10, 20, 0, 'tuesday', '2019-2020'),
(447, 8, 13, 215, 10, 11, 30, 10, 'tuesday', '2019-2020'),
(448, 8, 13, 215, 11, 11, 10, 50, 'tuesday', '2019-2020'),
(449, 8, 13, 214, 13, 13, 0, 40, 'tuesday', '2019-2020'),
(450, 8, 13, 214, 13, 14, 40, 20, 'tuesday', '2019-2020'),
(451, 8, 13, 208, 14, 15, 20, 0, 'tuesday', '2019-2020'),
(452, 8, 13, 208, 15, 15, 0, 40, 'tuesday', '2019-2020'),
(453, 8, 13, 209, 8, 9, 40, 20, 'wednesday', '2019-2020'),
(454, 8, 13, 209, 9, 10, 20, 0, 'wednesday', '2019-2020'),
(455, 8, 13, 206, 10, 11, 30, 10, 'wednesday', '2019-2020'),
(456, 8, 13, 206, 11, 11, 10, 50, 'wednesday', '2019-2020'),
(457, 8, 13, 212, 13, 13, 0, 40, 'wednesday', '2019-2020'),
(458, 8, 13, 212, 13, 14, 40, 20, 'wednesday', '2019-2020'),
(459, 8, 13, 210, 14, 15, 20, 0, 'wednesday', '2019-2020'),
(460, 8, 13, 210, 15, 15, 0, 40, 'wednesday', '2019-2020'),
(461, 8, 13, 205, 8, 9, 40, 20, 'thursday', '2019-2020'),
(462, 8, 13, 205, 9, 10, 20, 0, 'thursday', '2019-2020'),
(463, 8, 13, 209, 10, 11, 30, 10, 'thursday', '2019-2020'),
(464, 8, 13, 209, 11, 11, 10, 50, 'thursday', '2019-2020'),
(465, 8, 13, 211, 13, 13, 0, 40, 'thursday', '2019-2020'),
(466, 8, 13, 211, 13, 14, 40, 20, 'thursday', '2019-2020'),
(467, 8, 13, 212, 14, 15, 20, 0, 'thursday', '2019-2020'),
(468, 8, 13, 212, 15, 15, 0, 40, 'thursday', '2019-2020'),
(469, 8, 13, 206, 8, 9, 40, 20, 'friday', '2019-2020'),
(470, 8, 13, 206, 9, 10, 20, 0, 'friday', '2019-2020'),
(471, 8, 13, 209, 10, 11, 30, 10, 'friday', '2019-2020'),
(472, 8, 13, 207, 11, 11, 10, 50, 'friday', '2019-2020'),
(473, 8, 13, 207, 12, 13, 40, 20, 'friday', '2019-2020'),
(474, 8, 12, 216, 8, 9, 40, 20, 'monday', '2019-2020'),
(475, 8, 12, 216, 9, 10, 20, 0, 'monday', '2019-2020'),
(476, 8, 12, 219, 10, 11, 30, 10, 'monday', '2019-2020'),
(477, 8, 12, 219, 11, 11, 10, 50, 'monday', '2019-2020'),
(478, 8, 12, 224, 13, 13, 0, 40, 'monday', '2019-2020'),
(479, 8, 12, 224, 13, 14, 40, 20, 'monday', '2019-2020'),
(480, 8, 12, 223, 14, 15, 20, 0, 'monday', '2019-2020'),
(481, 8, 12, 223, 15, 15, 0, 40, 'monday', '2019-2020'),
(482, 8, 12, 220, 8, 9, 40, 20, 'tuesday', '2019-2020'),
(483, 8, 12, 220, 9, 10, 20, 0, 'tuesday', '2019-2020'),
(484, 8, 12, 219, 10, 11, 30, 10, 'tuesday', '2019-2020'),
(485, 8, 12, 219, 11, 11, 10, 50, 'tuesday', '2019-2020'),
(486, 8, 12, 225, 13, 13, 0, 40, 'tuesday', '2019-2020'),
(487, 8, 12, 225, 13, 14, 40, 20, 'tuesday', '2019-2020'),
(488, 8, 12, 222, 14, 15, 20, 0, 'tuesday', '2019-2020'),
(489, 8, 12, 222, 15, 15, 0, 40, 'tuesday', '2019-2020'),
(490, 8, 12, 220, 8, 9, 40, 20, 'wednesday', '2019-2020'),
(491, 8, 12, 220, 9, 10, 20, 0, 'wednesday', '2019-2020'),
(492, 8, 12, 218, 10, 11, 30, 10, 'wednesday', '2019-2020'),
(493, 8, 12, 218, 11, 11, 10, 50, 'wednesday', '2019-2020'),
(494, 8, 12, 216, 13, 13, 0, 40, 'wednesday', '2019-2020'),
(495, 8, 12, 216, 13, 14, 40, 20, 'wednesday', '2019-2020'),
(496, 8, 12, 283, 14, 15, 20, 0, 'wednesday', '2019-2020'),
(497, 8, 12, 283, 15, 15, 0, 40, 'wednesday', '2019-2020'),
(498, 8, 12, 217, 8, 9, 40, 20, 'thursday', '2019-2020'),
(499, 8, 12, 217, 9, 10, 20, 0, 'thursday', '2019-2020'),
(500, 8, 12, 222, 10, 11, 30, 10, 'thursday', '2019-2020'),
(501, 8, 12, 222, 11, 11, 10, 50, 'thursday', '2019-2020'),
(502, 8, 12, 224, 13, 13, 0, 40, 'thursday', '2019-2020'),
(503, 8, 12, 224, 13, 14, 40, 20, 'thursday', '2019-2020'),
(504, 8, 12, 221, 14, 15, 20, 0, 'thursday', '2019-2020'),
(505, 8, 12, 221, 15, 15, 0, 40, 'thursday', '2019-2020'),
(506, 8, 12, 221, 8, 9, 40, 20, 'friday', '2019-2020'),
(507, 8, 12, 221, 9, 10, 20, 0, 'friday', '2019-2020'),
(508, 8, 12, 221, 10, 11, 30, 10, 'friday', '2019-2020'),
(509, 8, 12, 218, 11, 11, 10, 50, 'friday', '2019-2020'),
(510, 8, 12, 218, 12, 13, 40, 20, 'friday', '2019-2020'),
(511, 9, 15, 241, 8, 9, 40, 20, 'monday', '2019-2020'),
(512, 9, 15, 241, 9, 10, 20, 0, 'monday', '2019-2020'),
(513, 9, 15, 238, 10, 11, 30, 10, 'monday', '2019-2020'),
(514, 9, 15, 238, 11, 11, 10, 50, 'monday', '2019-2020'),
(515, 9, 15, 241, 13, 13, 0, 40, 'monday', '2019-2020'),
(516, 9, 15, 241, 13, 14, 40, 20, 'monday', '2019-2020'),
(517, 9, 15, 237, 14, 15, 20, 0, 'monday', '2019-2020'),
(518, 9, 15, 237, 15, 15, 0, 40, 'monday', '2019-2020'),
(519, 9, 15, 244, 8, 9, 40, 20, 'tuesday', '2019-2020'),
(520, 9, 15, 244, 9, 10, 20, 0, 'tuesday', '2019-2020'),
(521, 9, 15, 244, 10, 11, 30, 10, 'tuesday', '2019-2020'),
(522, 9, 15, 244, 11, 11, 10, 50, 'tuesday', '2019-2020'),
(523, 9, 15, 238, 13, 13, 0, 40, 'tuesday', '2019-2020'),
(524, 9, 15, 238, 13, 14, 40, 20, 'tuesday', '2019-2020'),
(525, 9, 15, 237, 14, 15, 20, 0, 'tuesday', '2019-2020'),
(526, 9, 15, 237, 15, 15, 0, 40, 'tuesday', '2019-2020'),
(527, 9, 15, 238, 8, 9, 40, 20, 'wednesday', '2019-2020'),
(528, 9, 15, 238, 9, 10, 20, 0, 'wednesday', '2019-2020'),
(529, 9, 15, 246, 10, 11, 30, 10, 'wednesday', '2019-2020'),
(530, 9, 15, 246, 11, 11, 10, 50, 'wednesday', '2019-2020'),
(531, 9, 15, 239, 13, 13, 0, 40, 'wednesday', '2019-2020'),
(532, 9, 15, 239, 13, 14, 40, 20, 'wednesday', '2019-2020'),
(533, 9, 15, 242, 14, 15, 20, 0, 'wednesday', '2019-2020'),
(534, 9, 15, 242, 15, 15, 0, 40, 'wednesday', '2019-2020'),
(535, 9, 15, 247, 8, 9, 40, 20, 'thursday', '2019-2020'),
(536, 9, 15, 247, 9, 10, 20, 0, 'thursday', '2019-2020'),
(537, 9, 15, 244, 10, 11, 30, 10, 'thursday', '2019-2020'),
(538, 9, 15, 244, 11, 11, 10, 50, 'thursday', '2019-2020'),
(539, 9, 15, 239, 13, 13, 0, 40, 'thursday', '2019-2020'),
(540, 9, 15, 239, 13, 14, 40, 20, 'thursday', '2019-2020'),
(541, 9, 15, 241, 14, 15, 20, 0, 'thursday', '2019-2020'),
(542, 9, 15, 241, 15, 15, 0, 40, 'thursday', '2019-2020'),
(543, 9, 15, 246, 8, 9, 40, 20, 'friday', '2019-2020'),
(544, 9, 15, 246, 9, 10, 20, 0, 'friday', '2019-2020'),
(545, 9, 15, 237, 10, 11, 30, 10, 'friday', '2019-2020'),
(546, 9, 15, 237, 11, 11, 10, 50, 'friday', '2019-2020'),
(547, 9, 15, 244, 12, 13, 40, 20, 'friday', '2019-2020'),
(548, 9, 15, 244, 13, 14, 20, 0, 'friday', '2019-2020'),
(549, 9, 14, 252, 8, 9, 40, 20, 'monday', '2019-2020'),
(550, 9, 14, 252, 9, 10, 20, 0, 'monday', '2019-2020'),
(551, 9, 14, 258, 10, 11, 30, 10, 'monday', '2019-2020'),
(552, 9, 14, 258, 11, 11, 10, 50, 'monday', '2019-2020'),
(553, 9, 14, 252, 13, 13, 0, 40, 'monday', '2019-2020'),
(554, 9, 14, 252, 13, 14, 40, 20, 'monday', '2019-2020'),
(555, 9, 14, 249, 14, 15, 20, 0, 'monday', '2019-2020'),
(556, 9, 14, 249, 15, 15, 0, 40, 'monday', '2019-2020'),
(557, 9, 14, 254, 8, 9, 40, 20, 'tuesday', '2019-2020'),
(558, 9, 14, 254, 9, 10, 20, 0, 'tuesday', '2019-2020'),
(559, 9, 14, 258, 10, 11, 30, 10, 'tuesday', '2019-2020'),
(560, 9, 14, 258, 11, 11, 10, 50, 'tuesday', '2019-2020'),
(561, 9, 14, 256, 13, 13, 0, 40, 'tuesday', '2019-2020'),
(562, 9, 14, 256, 13, 14, 40, 20, 'tuesday', '2019-2020'),
(563, 9, 14, 249, 14, 15, 20, 0, 'tuesday', '2019-2020'),
(564, 9, 14, 249, 15, 15, 0, 40, 'tuesday', '2019-2020'),
(565, 9, 14, 251, 8, 9, 40, 20, 'wednesday', '2019-2020'),
(566, 9, 14, 256, 9, 10, 20, 0, 'wednesday', '2019-2020'),
(567, 9, 14, 256, 10, 11, 30, 10, 'wednesday', '2019-2020'),
(568, 9, 14, 251, 11, 11, 10, 50, 'wednesday', '2019-2020'),
(569, 9, 14, 251, 13, 13, 0, 40, 'wednesday', '2019-2020'),
(570, 9, 14, 251, 13, 14, 40, 20, 'wednesday', '2019-2020'),
(571, 9, 14, 253, 14, 15, 20, 0, 'wednesday', '2019-2020'),
(572, 9, 14, 253, 15, 15, 0, 40, 'wednesday', '2019-2020'),
(573, 9, 14, 259, 8, 9, 40, 20, 'thursday', '2019-2020'),
(574, 9, 14, 259, 9, 10, 20, 0, 'thursday', '2019-2020'),
(575, 9, 14, 255, 10, 11, 30, 10, 'thursday', '2019-2020'),
(576, 9, 14, 255, 11, 11, 10, 50, 'thursday', '2019-2020'),
(577, 9, 14, 255, 13, 13, 0, 40, 'thursday', '2019-2020'),
(578, 9, 14, 255, 13, 14, 40, 20, 'thursday', '2019-2020'),
(579, 9, 14, 252, 14, 15, 20, 0, 'thursday', '2019-2020'),
(580, 9, 14, 252, 15, 15, 0, 40, 'thursday', '2019-2020'),
(581, 9, 14, 256, 8, 9, 40, 20, 'friday', '2019-2020'),
(582, 9, 14, 256, 9, 10, 20, 0, 'friday', '2019-2020'),
(583, 9, 14, 249, 10, 11, 30, 10, 'friday', '2019-2020'),
(584, 9, 14, 249, 11, 11, 10, 50, 'friday', '2019-2020'),
(585, 9, 14, 254, 12, 13, 40, 20, 'friday', '2019-2020'),
(586, 9, 14, 254, 13, 14, 20, 0, 'friday', '2019-2020'),
(587, 4, 1, 125, 13, 13, 0, 40, 'monday', '2019-2020'),
(588, 4, 1, 125, 13, 14, 41, 20, 'monday', '2019-2020'),
(589, 4, 2, 132, 11, 11, 11, 50, 'monday', '2019-2020'),
(590, 4, 2, 133, 13, 14, 41, 20, 'monday', '2019-2020'),
(591, 6, 9, 173, 11, 11, 10, 50, 'thursday', '2019-2020'),
(592, 6, 9, 183, 13, 13, 0, 40, 'thursday', '2019-2020'),
(594, 5, 4, 152, 10, 11, 30, 10, 'wednesday', '2019-2020'),
(595, 5, 4, 152, 11, 11, 11, 50, 'wednesday', '2019-2020'),
(596, 5, 5, 151, 8, 9, 40, 20, 'wednesday', '2019-2020'),
(597, 5, 5, 151, 9, 10, 21, 0, 'wednesday', '2019-2020'),
(598, 5, 6, 152, 8, 9, 40, 20, 'wednesday', '2019-2020'),
(599, 5, 6, 152, 9, 10, 20, 0, 'wednesday', '2019-2020'),
(600, 6, 7, 176, 8, 9, 40, 20, 'wednesday', '2019-2020'),
(601, 6, 7, 176, 9, 10, 20, 0, 'wednesday', '2019-2020'),
(602, 6, 7, 174, 10, 11, 40, 10, 'friday', '2019-2020'),
(603, 6, 7, 174, 11, 11, 10, 40, 'friday', '2019-2020'),
(604, 6, 8, 172, 8, 9, 40, 20, 'wednesday', '2019-2020'),
(605, 6, 8, 172, 9, 10, 20, 0, 'wednesday', '2019-2020'),
(606, 6, 8, 173, 14, 15, 30, 0, 'friday', '2019-2020'),
(607, 6, 8, 173, 15, 15, 0, 30, 'friday', '2019-2020'),
(608, 6, 9, 173, 8, 9, 40, 20, 'wednesday', '2019-2020'),
(609, 6, 9, 173, 9, 10, 20, 0, 'wednesday', '2019-2020'),
(610, 6, 9, 187, 14, 15, 30, 0, 'friday', '2019-2020'),
(611, 6, 9, 176, 15, 15, 0, 30, 'friday', '2019-2020');

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `document_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_type` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`document_id`, `title`, `description`, `file_name`, `file_type`, `class_id`, `teacher_id`, `timestamp`, `subject_id`) VALUES
(1, 'BAB 1', 'testing &lt;b&gt;&lt;u&gt;upload&lt;/u&gt;&lt;/b&gt;', 'format_import_data_mahasiswa.xls', 'excel', '1', NULL, '1560708000', 1),
(2, 'Pertemuan 1', 'Pertemuan 1 membahas tentang materi ....', '', '', '1', 2, '1562163540', 2),
(3, 'Pertemuan 2', 'tentang ini', 'Template Import Buku.xlsx', 'excel', '1', 2, '1562854740', 2),
(4, 'BAB 1', 'dsfjndfmdf', 'SAMPUL.docx', 'doc', '1', 2, '1562781600', 2),
(5, 'Pertemuan 3', 'isi', '', '', '1', 2, '1562090400', 2),
(6, 'farmakologi', 'input contoh', '99988888_document_20190742.docx', 'doc', '1', 4, '1562695200', 1),
(7, 'Tes', 'tes', 'at0057_document_20200120.docx', 'doc', '4', 6, '1577901600', 14),
(8, 'Contoh ', 'contoh materi', 'at0057_document_20200136.xlsx', 'excel', '6', 83, '1578672000', 180),
(9, 'Cause and effect', '', 'at00183_document_20200114.pptm', 'other', '8', 101, '0', 209),
(10, NULL, NULL, 'at00113_document_20200115.', NULL, NULL, 91, '0', NULL),
(11, 'Latihan soal sosiologi kelas 11', '', 'at00204_document_20200256.docx', 'doc', '8', 104, '0', 224),
(12, 'Metode Penelitian', '', 'at00204_document_20200240.ppt', 'other', '7', 104, '0', 281),
(13, 'Puisi Rakyat ', 'Mengenal dan Memahami Puisi Rakyat', 'at00134_document_20200252.pptx', 'other', '4', 94, '-28800', 131),
(14, 'Laporan Hasil Observasi', '', 'at00134_document_20200208.pptx', 'other', '4', 94, '0', 131),
(15, NULL, NULL, 'at00134_document_20200236.', NULL, NULL, 94, '0', NULL),
(16, NULL, NULL, 'at00134_document_20200240.', NULL, NULL, 94, '0', NULL),
(17, NULL, NULL, 'at00134_document_20200241.', NULL, NULL, 94, '0', NULL),
(18, NULL, NULL, 'at00134_document_20200241.', NULL, NULL, 94, '0', NULL),
(19, 'Teks Ulasan', '', 'at00134_document_20200231.pptx', 'other', '5', 94, '0', 154);

-- --------------------------------------------------------

--
-- Table structure for table `dormitory`
--

CREATE TABLE `dormitory` (
  `dormitory_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_of_room` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enroll`
--

CREATE TABLE `enroll` (
  `enroll_id` int(11) NOT NULL,
  `enroll_code` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `roll` int(11) DEFAULT NULL,
  `date_added` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `enroll`
--

INSERT INTO `enroll` (`enroll_id`, `enroll_code`, `student_id`, `class_id`, `section_id`, `roll`, `date_added`, `year`) VALUES
(4, 'f55db2c', 3, 1, 1, NULL, '1559967006', '2018-2019'),
(5, 'ee90f69', 4, 1, 1, NULL, '1561502077', '2018-2019'),
(6, '1817d22', 5, 1, 4, NULL, '1561570949', '2018-2019'),
(7, 'ec55da8', 6, 1, 1, NULL, '1561651385', '2018-2019'),
(8, '7df4912', 7, 1, 4, NULL, '1561873620', '2018-2019'),
(9, '9827b3f', 8, 1, 4, NULL, '1561953341', '2018-2019'),
(10, 'd99c261', 9, 1, 4, NULL, '1562037456', '2018-2019'),
(11, 'b6799b9', 10, 1, 1, NULL, '1562050563', '2018-2019'),
(12, 'e06b640', 11, 1, 1, NULL, '1562050563', '2018-2019'),
(13, '1d77752', 12, 4, 1, NULL, '1565414432', '2018-2019'),
(14, 'ac4dcec', 13, 9, 14, NULL, '1572430158', '2019-2020'),
(15, '0c8ee4d', 12, 4, 1, NULL, '1575358388', '2019-2020');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `exam_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exam_id`, `name`, `date`, `year`, `comment`) VALUES
(1, 'ujian 1', '06/04/2019', '2018-2019', NULL),
(2, 'Ujian mat', '12/17/2019', '2019-2020', 'ujian matematika');

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

CREATE TABLE `expense_category` (
  `expense_category_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `expense_category`
--

INSERT INTO `expense_category` (`expense_category_id`, `name`) VALUES
(1, 'Uang Spp'),
(2, 'Uang Pembinaan'),
(3, 'Uang Pangkal');

-- --------------------------------------------------------

--
-- Table structure for table `fingerprint`
--

CREATE TABLE `fingerprint` (
  `id` int(100) NOT NULL,
  `pin` varchar(100) NOT NULL,
  `date_time` datetime NOT NULL,
  `ver` int(10) NOT NULL,
  `status` int(200) NOT NULL COMMENT '0 = masuk, 1 = pulang',
  `note` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fingerprint`
--

INSERT INTO `fingerprint` (`id`, `pin`, `date_time`, `ver`, `status`, `note`) VALUES
(63, '00552211', '2019-06-28 23:33:00', 1, 0, NULL),
(64, '00552211', '2019-06-30 23:38:00', 1, 1, NULL),
(65, '00552211', '2019-06-28 23:36:00', 1, 0, NULL),
(66, '00552211', '2019-06-30 23:37:00', 1, 0, NULL),
(67, '7364837', '2019-06-28 23:39:00', 1, 0, NULL),
(68, '7364837', '2019-06-28 23:40:00', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fingerprint_options`
--

CREATE TABLE `fingerprint_options` (
  `id` int(10) NOT NULL,
  `class_id` int(5) DEFAULT NULL,
  `section_id` int(5) DEFAULT NULL,
  `ip` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_mesin` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fingerprint_options`
--

INSERT INTO `fingerprint_options` (`id`, `class_id`, `section_id`, `ip`, `password`, `nama_mesin`) VALUES
(1, 1, 4, '192.168.100.10', '123456', NULL),
(2, 1, 1, '192.168.100.20', '123456', '');

-- --------------------------------------------------------

--
-- Table structure for table `frontend_events`
--

CREATE TABLE `frontend_events` (
  `frontend_events_id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_gallery`
--

CREATE TABLE `frontend_gallery` (
  `frontend_gallery_id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `show_on_website` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_gallery_image`
--

CREATE TABLE `frontend_gallery_image` (
  `frontend_gallery_image_id` int(11) NOT NULL,
  `frontend_gallery_id` int(11) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_general_settings`
--

CREATE TABLE `frontend_general_settings` (
  `frontend_general_settings_id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `frontend_general_settings`
--

INSERT INTO `frontend_general_settings` (`frontend_general_settings_id`, `type`, `description`) VALUES
(1, 'about_us', ''),
(2, 'terms_conditions', ''),
(3, 'privacy_policy', ''),
(4, 'social_links', '[{\"facebook\":\"http:\\/\\/facebook.com\",\"twitter\":\"http:\\/\\/twitter.com\",\"linkedin\":\"http:\\/\\/linkedin.com\",\"google\":\"http:\\/\\/google.com\",\"youtube\":\"http:\\/\\/youtube.com\",\"instagram\":\"http:\\/\\/instagram.com\"}]'),
(5, 'school_title', 'SMA Al-Mazaya Islamic School '),
(6, 'school_logo', ''),
(7, 'school_location', '51.7548164,-1.2565555'),
(8, 'address', ''),
(9, 'phone', ''),
(10, 'email', ''),
(11, 'fax', ''),
(12, 'header_logo', 'header_almazaya.png'),
(13, 'footer_logo', 'footer_almazaya.png'),
(14, 'copyright_text', ''),
(15, 'about_us_image', 'about_us.png'),
(16, 'slider_images', '[{\"title\":\"We rock the big stage\",\"description\":\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected \",\"image\":\"1.jpg\"},{\"title\":\"Making this the first true generator on the Internet\",\"description\":\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected \",\"image\":\"2.jpg\"},{\"title\":\"There are many variations of passages of Lorem Ipsum\",\"description\":\"There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected \",\"image\":\"3.jpg\"}]'),
(17, 'theme', 'ultimate'),
(18, 'homepage_note_title', ''),
(19, 'homepage_note_description', ''),
(20, 'recaptcha_site_key', '');

-- --------------------------------------------------------

--
-- Table structure for table `frontend_news`
--

CREATE TABLE `frontend_news` (
  `frontend_news_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` int(11) DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `grade_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `grade_point` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark_from` int(11) DEFAULT NULL,
  `mark_upto` int(11) DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`grade_id`, `name`, `grade_point`, `mark_from`, `mark_upto`, `comment`) VALUES
(1, 'kelas ujian 1', '100', 1, 100, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `group_message`
--

CREATE TABLE `group_message` (
  `group_message_id` int(11) NOT NULL,
  `group_message_thread_code` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `read_status` int(11) DEFAULT NULL,
  `attached_file_name` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `group_message`
--

INSERT INTO `group_message` (`group_message_id`, `group_message_thread_code`, `sender`, `message`, `timestamp`, `read_status`, `attached_file_name`) VALUES
(1, 'd41d8cd98f00b20', 'admin-1', 'kepada para guru silahkan anda login dan cek pesan yang saya kirimkan', '1565523467', NULL, NULL),
(2, 'd41d8cd98f00b20', 'teacher-17', 'siap pak', '1565523598', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `group_message_thread`
--

CREATE TABLE `group_message_thread` (
  `group_message_thread_id` int(11) NOT NULL,
  `group_message_thread_code` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `members` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_message_timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `group_message_thread`
--

INSERT INTO `group_message_thread` (`group_message_thread_id`, `group_message_thread_code`, `members`, `group_name`, `last_message_timestamp`, `created_timestamp`) VALUES
(1, 'd41d8cd98f00b20', '[\"teacher_6\",\"teacher_8\",\"teacher_9\",\"teacher_11\",\"teacher_12\",\"teacher_13\",\"teacher_14\",\"teacher_15\",\"teacher_16\",\"teacher_17\",\"teacher_18\",\"teacher_19\",\"teacher_20\",\"teacher_21\",\"teacher_22\",\"teacher_23\",\"teacher_24\",\"teacher_25\",\"teacher_26\",\"teacher_27\",\"teacher_28\",\"admin_1\"]', 'guru', NULL, '1565523428');

-- --------------------------------------------------------

--
-- Table structure for table `ideskripsi`
--

CREATE TABLE `ideskripsi` (
  `IDIde` bigint(20) NOT NULL,
  `IDIdeMahasiswa` bigint(20) NOT NULL,
  `JudulIde` varchar(100) NOT NULL,
  `DeskripsiIde` text NOT NULL,
  `TanggalIde` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `amount_paid` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `due` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `creation_timestamp` int(11) DEFAULT NULL,
  `payment_timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_details` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `student_id`, `title`, `description`, `amount`, `amount_paid`, `due`, `creation_timestamp`, `payment_timestamp`, `payment_method`, `payment_details`, `status`, `year`) VALUES
(1, 12, 'Spp', 'spp', 100000, '100000', '0', 1576519200, NULL, NULL, NULL, 'paid', '2019-2020'),
(2, 12, 'Pembayaran Uang Pangkal', NULL, 150000, '150000', '0', 1576519200, NULL, NULL, NULL, 'paid', '2019-2020');

-- --------------------------------------------------------

--
-- Table structure for table `journal`
--

CREATE TABLE `journal` (
  `journal_id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `submain_material` longtext DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `lesson_material` longtext DEFAULT NULL,
  `implementation` longtext DEFAULT NULL,
  `reference_source` longtext DEFAULT NULL,
  `teaching_method` longtext DEFAULT NULL,
  `student_present` int(11) DEFAULT NULL,
  `student_absent` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `time_end` time DEFAULT NULL,
  `file` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `journal`
--

INSERT INTO `journal` (`journal_id`, `teacher_id`, `class_id`, `section_id`, `subject_id`, `submain_material`, `duration`, `lesson_material`, `implementation`, `reference_source`, `teaching_method`, `student_present`, `student_absent`, `description`, `date`, `time`, `date_end`, `time_end`, `file`) VALUES
(1, 5, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mahasiswa'),
(2, 1, 4, 1, 0, 'aaa', 221, 'chgvgvg', '3', 'fhfhgvf', '2', NULL, NULL, 'nothing', '0000-00-00', NULL, NULL, NULL, 'Mahasiswa'),
(3, 1, 7, 10, 0, 'tvhgbh', 45, 'ykhbjnm', '5fthj', '65', 'ytvjhkjh,', NULL, NULL, 'fhcgvbnhjn', '0000-00-00', NULL, NULL, NULL, 'Mahasiswa'),
(4, 6, 9, 15, 0, 'b', 1, 'c', 'd', 'e', 'f', NULL, NULL, 'g', '0000-00-00', NULL, NULL, NULL, 'Mahasiswa'),
(5, 6, 4, 1, 0, 'fhcgv', 1, 'gvgv', 'gv', 'hg', 'vbgjh', NULL, NULL, 'vbh', '0000-00-00', NULL, NULL, NULL, 'Mahasiswa'),
(6, NULL, 4, 3, 121, 'tes', 2, 'belajar', 'Direct Learning', 'reference', 'Lecture', NULL, NULL, 'note', NULL, NULL, NULL, NULL, 'Mahasiswa'),
(7, 6, 4, 3, 121, 'submain material', 2, 'submain material', 'Direct Learning', 'reference source', 'Lecture', NULL, NULL, 'not', '2019-08-22', '00:52:25', NULL, NULL, 'Mahasiswa'),
(8, 6, 4, 3, 121, 'bagus', 4657, 'bagus', 'Inquiry Learning', 'bagus', 'Group Discussion', NULL, NULL, 'noting', '2019-08-22', '03:21:01', NULL, NULL, 'Mahasiswa'),
(9, 83, 6, 7, 180, 'TIK Web Server', 2, 'HTML PHP&amp;nbsp;', 'Direct Learning', 'Internet', 'Lecture', 26, 3, 'Aman terkendali', '2020-01-10', '15:27:25', NULL, NULL, '0'),
(10, 83, 6, 7, 180, 'tes', 2, 'Pelajaran', 'Direct Learning', 'buku', 'Lecture', 50, 0, 'kosong', '2020-01-13', '12:24:54', NULL, NULL, '8'),
(11, 84, 4, 1, 126, 'penggunaan jurnal harian ', 2, '.', 'Direct Learning', '.', 'Group Discussion', 20, 0, '.', '2020-01-14', '08:13:27', NULL, NULL, '0'),
(12, 84, 4, 1, 126, 'Workshop penggunaan jurnal harian ', 2, 'Workshop penggunaan jurnal harian', 'Direct Learning', '', 'Group Discussion', 20, 0, '', '2020-01-14', '08:13:27', NULL, NULL, '0'),
(13, 84, 4, 1, 126, '.', 2, '.', 'Direct Learning', '.', 'Group Discussion', 20, 0, '.', '2020-01-14', '08:13:27', NULL, NULL, '0'),
(14, 91, 6, 7, 177, 'KISI UN (Gejala Alam Abiotik dan BIotik)', 2, 'Gejala Alam terdiri atas Gejala Alam Abiotik dan Biotik&lt;br&gt;&lt;br&gt;Abiotik: lingkungan, benda mati&lt;br&gt;Biotik, makhluk hidup&lt;br&gt;&lt;br&gt;Ciri Makhluk Hidup dan Interaksi Makhluk Hidup', 'Direct Learning', 'Kisi UN SMP', 'Lecture', 19, 2, 'Auladini HAfizah (Sakit)\r\nM. Nafis Ishaq (Sakit)', '2020-01-14', '08:51:15', NULL, NULL, '0'),
(15, 88, 6, 9, 196, 'Kemagnetan', 2, 'Magnet Bumi, Garis Gaya Magnet, Pembuatan Magnet, Elektromagnet, Pembagian Kelompok Tata Surya&lt;br&gt;', 'Direct Learning', 'Powerpoint, ebook, internet', 'Group Discussion', 23, 2, 'alhamdulillah', '2020-01-14', '08:51:40', NULL, NULL, '0'),
(16, 87, 6, 8, 184, 'Bilangan Berpangkat dan Bentuk Akar', 2, 'Bentuk Akar', 'Direct Learning', 'Buku Detik-Detik UN Matematika', 'Lecture', 19, 5, 'M. Rezka Bagus I, Na&#039;diana Putri. Putri Salsabila, Riski Amalia R. Sakit. \r\n\r\nM. Farhan S. izin', '2020-01-14', '08:53:44', NULL, NULL, '0'),
(17, 90, 6, 7, 176, 'long functional text', 2, 'narrative text, descriptive text, procedure&amp;nbsp; text, report text, recount text', 'Project Based Learning', 'Buku detik detik 2020', 'Group Discussion', 19, 2, 'alhamdulillah anak anak tdk ada yang terlambat masuk kelas (unusual)', '2020-01-14', '10:49:56', NULL, NULL, '0'),
(18, 86, 6, 8, 183, 'Grafik', 2, 'Menjabarkan grafik menjadi uraian. Membuat grafik, tabel, dan bagan dari kalimat yang disajikan.', 'Direct Learning', 'Ebook', 'Demonstration', 19, 5, 'Beberapa siswa ada yang belum mengerti, tetapi ketika dijelaskan kembal sudah paham.', '2020-01-14', '10:42:27', NULL, NULL, '0'),
(19, 87, 6, 9, 195, 'Bilangan Berpangkat dan Bentuk Akar', 2, 'Bentuk Akar', 'Direct Learning', 'Buku Detik-Detik UN Matematika 2020', 'Group Discussion', 23, 2, 'Nawawi sakit\r\nArif izin\r\n\r\nRunning well', '2020-01-14', '10:41:58', NULL, NULL, '0'),
(20, 91, 9, 15, 238, 'UJIAN PRAKTIKUM', 2, '', 'Inquiry Learning', '', 'Demonstration', 9, 1, 'Rizky (Sakit)\r\n\r\ntudak sempat login saat jam ke-5 karena langsung ke laboratorium', '2020-01-14', '13:15:58', NULL, NULL, '0'),
(21, 88, 8, 13, 214, 'Suhu dan Kalor', 2, 'Contoh Soal Kalor, Pemuaian Zat', 'Discovery Learning', 'ppt, ebook, Buku Detik-Detik UN', 'Group Discussion', 26, 1, '', '2020-01-14', '13:36:16', NULL, NULL, '0'),
(22, 93, 8, 13, 208, 'politik luar negeri Indonesia', 2, 'politik luar negeri Indonesia &lt;b&gt;Bebas dan Aktif&lt;/b&gt;', 'Direct Learning', 'PPKn untuk SMA/MA PT Intan Pariwara', 'Group Discussion', 26, 1, 'membuat kelompok untuk presentasi Organisasi Internasional', '2020-01-14', '14:03:23', NULL, NULL, '0'),
(23, 95, 9, 15, 237, 'pembahasan detik detik ujian nasional', 2, 'pembahasan kisi-kisi', NULL, 'Buku detik detik', 'Demonstration', 9, 1, 'a.n riski tidak hadir', '2020-01-14', '14:06:17', NULL, NULL, '0'),
(24, 95, 9, 14, 249, 'Pembahasan detik-detik ujian nasional', 2, 'pembahasan ujian nasional', 'Inquiry Learning', '', NULL, 6, 0, 'hadir semua', '2020-01-14', '14:09:02', NULL, NULL, '0'),
(25, 86, 6, 9, 194, 'Grafik', 2, 'Menjabarkan grafik menjadi uraian.', 'Direct Learning', '', 'Demonstration', 23, 2, '', '2020-01-14', '13:05:15', NULL, NULL, '0'),
(26, 87, 6, 7, 173, 'Bilangan Berpangkat dan Bentuk Akar', 2, 'Bilangan Berpangkat', 'Inquiry Learning', 'LKS Matematika Kelas 9', 'Group Discussion', 19, 2, 'Running Well', '2020-01-14', '13:10:03', NULL, NULL, '0'),
(27, 90, 6, 9, 198, 'long functional text', 2, 'narrative text, report text, recount text, procedure text, descriptive text', 'Project Based Learning', 'buku detik detik 2020', 'Group Discussion', 23, 2, 'alhamdulillah tdk ada yg berkeliaran di luar kelas pada saat masuk kelas (unusual)', '2020-01-14', '14:41:50', NULL, NULL, '0'),
(28, 86, 6, 7, 172, 'Grafik', 2, 'Menjabarkan grafik dalam bentuk uraian.', 'Direct Learning', '', 'Demonstration', 19, 2, '', '2020-01-14', '14:40:01', NULL, NULL, '0'),
(29, 91, 9, 15, 238, 'KISI UN', 2, 'KISI UN&lt;br&gt;&lt;b&gt;Virus&lt;/b&gt; adalah parasit berukuran mikroskopik yang menginfeksi sel \r\norganisme biologis. Virus bersifat parasit obligat, hal tersebut \r\ndisebabkan karena virus hanya dapat bereproduksi di dalam material hidup\r\n dengan menginvasi dan memanfaatkan sel makhluk hidup karena virus tidak\r\n memiliki perlengkapan selular untuk bereproduksi sendiri. Biasanya \r\nvirus mengandung sejumlah kecil asam nukleat (DNA atau RNA, tetapi tidak\r\n kombinasi keduanya) yang diselubungi semacam bahan pelindung yang \r\nterdiri atas protein, lipid, glikoprotein, atau kombinasi ketiganya.&lt;br&gt;&lt;h2&gt;Karakteristik Bakteri&lt;/h2&gt;Secera umum ciri-cici bakteri adalah sebagai berikut:&lt;ol&gt;&lt;li&gt;Ciri\r\n umum bakteri yang pertama, mereka adalah Organisme prokariota (inti sel\r\n tidak diselimuti membran khusus) juga uniseluler (atau bersel tunggal)&lt;/li&gt;&lt;li&gt;Bakteri memiliki dinding sel seperti tumbuhan yang tersusun atau peptidoglikan dan mukopolisakarida.&lt;/li&gt;&lt;li&gt;Bakteri\r\n mamiliki endospora yaitu kapsul yang muncul jika kondisi yang tidak \r\nmenguntungkan sebagai perisai terhadap panas dan gangguan alam.&lt;/li&gt;&lt;li&gt;Dari\r\n segi ukuran, bakteri pada umumnya bakteri terlalu kecil seperti \r\nMycoplasma untuk dilihat mata telanjang yakni sekitar 0,5 mikrometer \r\ntapi dan ada juga yang sedikit lebih besar yakni Epulopiscium fishelsoni\r\n mencapai ukuran yaitu sekitar 10-100 mikrometer.&lt;/li&gt;&lt;li&gt;Ciri umum \r\nlainnya dari bakteri hidup adalah mereka makhluk yang parasit \r\n(membutuhkan inang seperti manusia atau hewan) tapi ada juga yang hidup \r\nbebas.&lt;/li&gt;&lt;li&gt;Secara umum bakteri tidak berklorofil.&lt;/li&gt;&lt;li&gt;Habitat bakteri dapat tinggal dilingkungan yang keras seperti air panas, kawah, gambut.&lt;/li&gt;&lt;li&gt;Dilihat\r\n dari bentuk penampakan, sel bakteri bisa terlihat seperti basil (atau \r\nbatang), kokus (berbentuk bola), spirilum (spiral seperti pembuka tutup \r\nbotol), kokobasil (bulat dan batang), dan Vibrio (seperti koma).&lt;/li&gt;&lt;li&gt;Sebagai\r\n bagian dari perlindungan, bakteri dapat mensekresikan lendir ke \r\npermukaan dinding sel. 8-10 % fosfolipid dan protein adalah penyusun \r\nmembran&amp;nbsp; sitoplasma dan bakteri.&lt;/li&gt;&lt;/ol&gt;', 'Direct Learning', 'Detik-detik Biologi', 'Lecture', 10, 0, '', '2020-01-15', '08:44:07', NULL, NULL, '0'),
(30, 95, 7, 10, 272, 'TEKS NEGOSIASI', 1, 'LATIHAN TEKS NEGOSIASI', 'Inquiry Learning', 'E-BOOK, INTERNET', 'Lecture', 13, 3, 'LATIHAN TEKS NEGOSIASI', '2020-01-15', '08:51:03', NULL, NULL, '0'),
(31, 98, 7, 11, 267, 'Pedagang, Penguasaan dan Pujangga pada Masa Klasik', 2, '', NULL, '', NULL, 0, 0, 'Muhammad Rafii ( Sakit)', '2020-01-15', '09:01:23', NULL, NULL, '0'),
(32, 97, 9, 14, 256, 'pembahasan soal UN', 2, '&lt;b&gt;&lt;span class=&quot;wysiwyg-color-red&quot;&gt;pembahasan soal UN&lt;/span&gt;&lt;/b&gt;', 'Discovery Learning', 'detik-detik UN', 'Group Discussion', 5, 1, 'M. Ibnu Rabi&#039; tidak hadir tanpa keterangan', '2020-01-15', '09:19:39', NULL, NULL, '0'),
(33, 104, 8, 12, 220, 'Bonus demografi dan kualitas penduduk', 2, '', 'Direct Learning', 'Buku paket geografi dan internet', 'Lecture', 0, 0, '', '2020-01-15', '08:43:09', NULL, NULL, '0'),
(34, 88, 9, 15, 246, 'Listrik Magnet', 2, 'Tranformator', 'Direct Learning', 'internet, ebook', 'Group Discussion', 0, 10, '', '2020-01-15', '09:32:36', NULL, NULL, '0'),
(35, 96, 7, 11, 264, 'Gerak melingkar', 2, '', 'Direct Learning', '', 'Group Discussion', 18, 1, '', '2020-01-15', '09:37:24', NULL, NULL, '0'),
(36, 98, 8, 12, 218, 'APBN dan APBD', 2, 'Jenis pendapatan negara dan belanja negara', NULL, '', NULL, 0, 0, '', '2020-01-15', '09:38:15', NULL, NULL, '0'),
(37, 91, 8, 13, 206, 'Sistem Pencernaan- Alat dan Proses Pencernaan', 2, '', 'Direct Learning', 'PPT\r\nBuku Biologi kelas XI K13', 'Lecture', 24, 3, 'Aisya Novrida P (Izin)\r\nNorhidayah  (Izin)\r\nAnnisa Razak (Izin)', '2020-01-15', '09:35:03', NULL, NULL, '0'),
(38, 86, 6, 9, 194, 'Gagasan Utama, Kalimat utama, dan Simpulan.', 2, 'Gagasan Utama', 'Direct Learning', '', 'Demonstration', 22, 3, '', '2020-01-15', '08:54:12', NULL, NULL, '0'),
(39, 98, 8, 12, 218, 'APBN DAN APBD', 2, 'APBN DAN APBD', NULL, '', NULL, 0, 0, '', '2020-01-15', '11:05:22', NULL, NULL, '0'),
(40, 101, 7, 11, 266, 'simple past &amp; Present Perfect', 2, '', 'Direct Learning', '', 'Lecture', 13, 3, 'silva: absent, monica: izin, lukman: izin ', '2020-01-15', '11:27:13', NULL, NULL, '0'),
(41, 86, 6, 8, 183, 'Gagasan Utama, kalimat utama, dan simpulan.', 2, 'Gagasan Utama', 'Direct Learning', '', 'Experiment', 19, 4, 'Jam pertama ada kendala e-journal tidak bisa disimpan. Thalita sakit di UKS.', '2020-01-15', '11:48:13', NULL, NULL, '0'),
(42, 96, 9, 15, 239, 'pembahasan soal-soal UN', 2, '', 'Direct Learning', '', 'Lecture', 11, 0, '', '2020-01-15', '11:49:23', NULL, NULL, '0'),
(43, 97, 8, 13, 212, 'transformasi', 1, 'rotasi dan dilatasi', 'Discovery Learning', 'paket matematika kelas 11 IPA', 'Demonstration', 24, 3, 'Aisya Novrida, Norhidayah, Anisa Razak izin', '2020-01-15', '11:51:44', NULL, NULL, '0'),
(44, 91, 7, 11, 263, 'Plantae - Tumbuhan Paku ', 2, '', 'Direct Learning', 'PPT\r\nBuku Biologi (Erlangga) kelas X K13', 'Lecture', 17, 1, '', '2020-01-15', '11:50:07', NULL, NULL, '0'),
(45, 87, 6, 7, 173, 'Bilangan Berpangkat dan Bentuk Akar', 2, 'Bentuk Akar (Bahan PPT)', 'Inquiry Learning', 'buku detik-detik unbk 2020', 'Lecture', 19, 2, '  Running Well', '2020-01-15', '11:10:31', NULL, NULL, '0'),
(46, 95, 8, 12, 216, 'Proposal', 1, 'laihan menentukan unsur dalam proposal', 'Inquiry Learning', 'e-book', 'Experiment', 25, 0, '', '2020-01-15', '12:09:40', NULL, NULL, '0'),
(47, 88, 6, 8, 185, 'Soal UN SMP IPA 2019', 2, 'soal no 1-10', 'Direct Learning', 'internet', 'Group Discussion', 20, 4, 'Bagus &amp; Affine terlambat 10 menit', '2020-01-15', '13:09:21', NULL, NULL, '0'),
(48, 97, 8, 13, 212, 'transformasi (lanjutan)', 1, 'rotasi dan dilatasi (latihan)', 'Discovery Learning', 'buku paket 11 IPA', 'Group Discussion', 24, 3, 'Aisya Novrida, Norhidayah, Anisa Razak izin', '2020-01-15', '13:23:04', NULL, NULL, '0'),
(49, 95, 8, 12, 216, 'Teks Proposal', 1, 'latihan teks proposal', 'Inquiry Learning', 'e-book', 'Experiment', 25, 0, '', '2020-01-15', '13:27:29', NULL, NULL, '0'),
(50, 87, 6, 9, 195, 'Bilangan berpangkat dan bentuk akar ', 2, 'Bilangan Berpangkat (latihan soal)', 'Discovery Learning', 'Buku detik-detik UNBK tahun 2020', 'Group Discussion', 24, 1, 'Arif izin \r\n\r\nthe lesson is running well', '2020-01-15', '13:17:41', NULL, NULL, '0'),
(51, 97, 7, 11, 268, 'fungsi', 2, 'menentukan domain dan kodomain fungsi', 'Discovery Learning', 'pakey matematika kelas 10 wajib', 'Demonstration', 18, 1, 'M. Rafi&#039;i sakit', '2020-01-15', '14:08:42', NULL, NULL, '0'),
(52, 86, 6, 7, 172, 'Gagasan Utama', 2, 'gagasan utama', 'Direct Learning', '', 'Demonstration', 17, 4, 'Ada beberapa anak keluar ruangan', '2020-01-15', '13:24:06', NULL, NULL, '0'),
(53, 87, 6, 8, 184, 'Bilangan Berpangkat dan Bentuk Akar', 2, 'Latihan Soal Bentuk Akar', 'Inquiry Learning', 'Buku Detik-Detik UNBK 2020', 'Lecture', 20, 4, 'Running Well', '2020-01-15', '14:20:03', NULL, NULL, '0'),
(54, 88, 6, 9, 196, 'Soal UN SMP 2019 ', 2, 'Soal no 1-11', 'Direct Learning', '', 'Group Discussion', 20, 5, 'Arif Rakhman izin\r\nNaufal Rizqi sakit\r\nNawawi, Rezwan, Ryan, alfa', '2020-01-15', '14:28:30', NULL, NULL, '0'),
(55, 91, 6, 7, 177, 'Struktur dan Fungsi Makhluk Hidup', 2, 'Bagian sel dan fungsinya', 'Direct Learning', '', 'Lecture', 19, 2, 'Alwi (Alfa)\r\nDiva (Sakit)\r\n', '2020-01-15', '14:24:52', NULL, NULL, '0'),
(56, 95, 8, 13, 205, 'Teks proposal', 2, 'latihan teks proposal', 'Inquiry Learning', '', 'Experiment', 23, 4, '', '2020-01-16', '08:48:43', NULL, NULL, '0'),
(57, 102, 7, 10, 276, 'fungsi komposisi', 2, 'fungsi komposisi', 'Direct Learning', 'Intan Pariwara Matematika Wajib Kelas X', 'Group Discussion', 16, 2, 'dua orang sakit', '2020-01-16', '09:06:28', NULL, NULL, '0'),
(58, 91, 6, 9, 199, 'Dampak Pencemaran Lingkungan \r\nStruktur Makhluk Hidup', 2, 'Dampak Pencemaran Lingkungan &lt;br&gt;Pencemaran Lingkungan (tanah, udara, air) dan Kerusakan Lingkungan (akibat alam dan aktivitas manusia)&lt;br&gt;&lt;br&gt;Struktur makhluk Hidup&lt;br&gt;-sistem organ tubuh&amp;nbsp;&lt;br&gt;&amp;nbsp; (sistem pernapasan: alat, jalan udara, mekanisme pernapasan)', 'Direct Learning', 'Kisi-kisi UN IPA SMP\r\nBuku Detik-detik UN', 'Lecture', 21, 4, 'Azkia (sakit)\r\nNaufal (-)\r\nNasywa ( - )\r\nArif (izin)\r\n', '2020-01-16', '09:11:03', NULL, NULL, '0'),
(59, 93, 8, 12, 217, 'politik luar negeri', 2, 'politik luar negeri Indonesia&lt;b&gt; Bebas dan Aktif&lt;/b&gt;', 'Problem Based Learning', 'buku PPKn \r\nPT Intan Pariwara', 'Group Discussion', 22, 2, 'make groups for next meeting', '2020-01-16', '08:32:49', NULL, NULL, '0'),
(60, 95, 7, 11, 262, 'TEKS NEGOSIASI', 1, 'TEKS LATIHAN NEGOSIASI', 'Inquiry Learning', 'E-BOOK', 'Experiment', 18, 1, '', '2020-01-16', '09:42:00', NULL, NULL, '0'),
(61, 87, 6, 7, 173, 'Bilangan Berpangkat dan Bentuk Akar', 2, 'Latihan Soal Bentuk Akar&amp;nbsp;', 'Inquiry Learning', 'Buku Detik-Detik UNBK Matematika 2020', 'Lecture', 1, 20, 'The lesson is running well', '2020-01-16', '08:52:09', NULL, NULL, '0'),
(62, 86, 6, 8, 183, 'Gagasan Utama', 2, 'Latihan gagasan utama', 'Direct Learning', '', 'Demonstration', 23, 1, '', '2020-01-16', '08:53:56', NULL, NULL, '0'),
(63, 97, 9, 15, 244, '1. pertidaksamaan eksponen dan logaritma\r\n2. latihan soal UN\r\n(10.15-11.45)', 2, '1. pertidaksamaan eksponen dan logaritma\r\n2. latihan soal UN\r\n(10.15-11.45)', 'Discovery Learning', 'paket matematika ipa kelas 12 KTSP\r\nDetik-detik UN', 'Group Discussion', 10, 1, 'yoga izin. \r\njadwal 09.30-10.15 &amp; 11.00-11.45 (2 jp) move jadi 10.15-11.45 (2 jp)', '2020-01-16', '10:09:26', NULL, NULL, '0'),
(64, 104, 7, 10, 280, 'Litosfer, Tenaga Endogen', 1, '', NULL, 'Buku', NULL, 13, 2, 'Lukman Nul Hakim izin. Ihsan marketing SMA.\r\n\r\nPeserta didik mengerjakan latihan soal 1.', '2020-01-16', '09:43:16', NULL, NULL, '0'),
(65, 91, 6, 8, 188, 'Pencemaran Lingkungan\r\nStruktur Makhluk Hidup', 2, 'Pencemaran Lingkungan dan kerusakan lingkungan&lt;br&gt;ada pencemaran tanah, air, dan udara&lt;br&gt;kerusakan lingkungan disebabkan oleh alam atau aktivitas manusia&lt;br&gt;&lt;br&gt;Struktur Mkahluk Hidup&lt;br&gt;Sistem organ pada manusia dan fungsinya&lt;br&gt;&lt;br&gt;', 'Direct Learning', 'Detik-detik UN', 'Lecture', 23, 1, 'farhan izin\r\nbeberapa siswa keluar kelas', '2020-01-16', '11:34:26', NULL, NULL, '0'),
(66, 87, 6, 9, 195, 'Bilangan Berpangkat dan Bentuk Akar', 2, 'Latihan Soal Bilangan Berpangkat', 'Inquiry Learning', 'Buku Detik-Detik UNBK Matematika 2020', 'Group Discussion', 21, 4, 'Running Well but some student ask permission to meet the principal', '2020-01-16', '10:41:14', NULL, NULL, '0'),
(67, 96, 9, 15, 239, 'Pembahasan soal-soal UN', 1, '', 'Direct Learning', '', 'Lecture', 10, 0, '', '2020-01-16', '11:45:41', NULL, NULL, '0'),
(68, 104, 7, 10, 280, 'tenaga endogen, latihan soal', 1, '', NULL, '', NULL, 13, 3, 'hakim, ihsan, dan monica izin.', '2020-01-16', '11:03:59', NULL, NULL, '0'),
(69, 90, 6, 7, 176, 'long functional text', 2, 'descriptive text - recount text', 'Project Based Learning', 'ppt siswa', 'Group Discussion', 19, 1, 'Anis datang terlambat. lika, marsya, dan zahro serta anis izin keluar dan tidak kembali sampai pembelajaran usai', '2020-01-16', '10:41:13', NULL, NULL, '0'),
(70, 95, 7, 11, 262, 'TEKS NEGOSIASI', 2, 'LATIHAN NEGOSIASI', 'Inquiry Learning', 'E-BOOK', 'Experiment', 18, 1, '', '2020-01-16', '11:54:05', NULL, NULL, '0'),
(71, 98, 8, 13, 211, 'Pembuatan PPT kelompok sejarah', 2, '', NULL, '', NULL, 0, 0, 'yang tidak hadir :\r\n1. Prista (Sakit)\r\n2. Ais (Izin)\r\n3. Maya ( Sakit)\r\n4. Taufik ( Alfa)', '2020-01-16', '12:00:51', NULL, NULL, '0'),
(72, 101, 7, 10, 274, 'types of text', 1, 'recount text', 'Direct Learning', '', 'Lecture', 3, 3, 'lukman: izin, Ihsan: izin, Monica: izin', '2020-01-16', '12:01:48', NULL, NULL, '0'),
(73, 104, 8, 12, 224, 'Konflik sosial (bentuk-bentuk konflik sosial)', 1, '', 'Direct Learning', '', NULL, 23, 2, 'Wafa dan Caroline sakit', '2020-01-16', '11:51:10', NULL, NULL, '0'),
(74, 96, 9, 15, 239, 'pembahasan soal-soal UN', 1, '', 'Direct Learning', '', 'Lecture', 9, 1, 'Rizky tidak hadir', '2020-01-16', '13:18:48', NULL, NULL, '0'),
(75, 95, 7, 11, 262, 'Teks Negosiasi', 1, 'latihan membuat teks negosiasi', 'Inquiry Learning', 'e-book', 'Experiment', 18, 1, '', '2020-01-16', '13:24:14', NULL, NULL, '0'),
(76, 98, 8, 13, 211, 'Melanjutkan jam ke  5', 1, '', NULL, '', NULL, 0, 0, '', '2020-01-16', '13:26:34', NULL, NULL, '0'),
(77, 90, 6, 9, 198, 'long functional text', 2, '5 kinds of text', 'Project Based Learning', '', 'Group Discussion', 21, 4, '', '2020-01-16', '13:14:21', NULL, NULL, '0'),
(78, 84, 8, 13, 213, 'Al-Qur&#039;an dan Hadits adalah pedoman hidup', 2, 'Al-Qur&#039;an dan Hadits adalah pedoman hidup', 'Direct Learning', 'buku PAI kelas 10', 'Demonstration', 18, 1, 'Raihan muzaki tidak hadir', '2020-01-16', '14:03:00', NULL, NULL, '0'),
(79, 97, 8, 13, 212, 'polinomial (suku banyak)', 2, 'polinomial (suku banyak)', 'Discovery Learning', 'matematika peminatan kelas 11 ', NULL, 23, 4, 'Noor Maya (sakit), Prista (sakit), Taufik (tanpa keterangan), Aisya Novrida (izin)', '2020-01-16', '14:08:05', NULL, NULL, '0'),
(80, 87, 6, 8, 184, 'Bilangan Berpangkat dan Bentuk Akar', 2, 'Bentuk Akar', 'Direct Learning', 'Buku Detik-Detik UNBK Matematika 2020', 'Lecture', 23, 1, 'the lesson is running well', '2020-01-16', '13:16:25', NULL, NULL, '0'),
(81, 86, 6, 8, 183, 'Gagasan Utama', 2, 'Latihan gagasan utama', 'Direct Learning', '', 'Experiment', 20, 1, '', '2020-01-16', '13:15:57', NULL, NULL, '0'),
(82, 98, 7, 10, 279, 'Keseimbangan Pasar', 0, 'Pengaruh Pajak terhadap Keseimbangan pasar&lt;br&gt;Pengaruh Subsidi terhadap Keseimbangan pasar', NULL, '', NULL, 0, 0, '', '2020-01-16', '14:14:08', NULL, NULL, '0'),
(83, 90, 6, 8, 187, 'long functional text', 2, 'all text', 'Project Based Learning', '', 'Group Discussion', 23, 1, '', '2020-01-16', '14:34:21', NULL, NULL, '0'),
(84, 88, 6, 7, 174, 'Tata Surya', 2, 'Pembagian Kelompok Tata Surya, Pembahasan Materi Trafo ditunda', 'Discovery Learning', '', 'Group Discussion', 20, 1, 'Anis terlambat masuk', '2020-01-16', '14:38:44', NULL, NULL, '0'),
(85, 86, 6, 9, 194, 'Gagasan Utama', 2, 'Latihan Gagasan Utama', 'Direct Learning', '', 'Experiment', 21, 4, '', '2020-01-16', '14:30:38', NULL, NULL, '0'),
(86, 97, 9, 14, 256, 'pembahasan soal UN', 2, 'soal UN', 'Discovery Learning', 'detik-detik UN IPS', 'Group Discussion', 6, 0, 'LENGKAP', '2020-01-17', '08:45:05', NULL, NULL, '0'),
(87, 101, 7, 10, 274, 'types of text', 2, 'recount text (exercise)', 'Direct Learning', '', 'Lecture', 2, 4, 'lukman: izin, akbar: izin, ami: izin, monica: izin.', '2020-01-17', '08:47:57', NULL, NULL, '0'),
(88, 90, 6, 8, 187, 'long fundtional text', 1, 'all texts', 'Project Based Learning', '', 'Group Discussion', 19, 5, '', '2020-01-17', '08:54:30', NULL, NULL, '0'),
(89, 91, 8, 13, 206, 'Alat Pencernaan', 2, '&lt;ul&gt;&lt;li&gt;Review alat dan fungsi alat pencernaan makanan&lt;/li&gt;&lt;li&gt;fenomena seputar pencernaan makanan (sendawa, flatus, sendawa)&lt;/li&gt;&lt;li&gt;Pencernaan ruminansia&lt;/li&gt;&lt;/ul&gt;&lt;br&gt;', 'Direct Learning', 'PPT\r\nBuku Biologi Erlangga kelas XI K13', 'Lecture', 21, 6, 'Affan (izin)\r\nAisya Novrida (izin)\r\nAurellia (izin)\r\nFikri (sakit)\r\nPrista (sakit)\r\nIlviani ( - )', '2020-01-17', '08:44:05', NULL, NULL, '0'),
(90, 86, 6, 9, 194, 'Makna kata dan makna tersurat dalam cerpen dan Fabel.', 2, 'cara menemukan makna kata dan makna tersurat dalam cerpen dan Fabel.', 'Problem Based Learning', '', 'Demonstration', 21, 4, '', '2020-01-17', '08:53:46', NULL, NULL, '0'),
(91, 95, 8, 13, 205, 'Pembahasan materi UN', 1, 'Pembahasan UN', 'Inquiry Learning', 'PUEBI, Buku detik-detik UN', 'Group Discussion', 8, 2, '', '2020-01-17', '09:26:18', NULL, NULL, '0'),
(92, 95, 9, 14, 249, 'Pembahasan materi UN', 1, 'Pembahasan materi UN', 'Inquiry Learning', '', 'Group Discussion', 6, 0, '', '2020-01-17', '09:28:52', NULL, NULL, '0'),
(93, 88, 6, 8, 185, 'Pembahasan Soal UN 2019', 2, 'soal no 11-16', 'Direct Learning', 'internet', 'Group Discussion', 18, 6, '', '2020-01-17', '09:34:02', NULL, NULL, '0'),
(94, 87, 6, 7, 173, 'Bilangan Berpangkat dan Bentuk Akar', 2, 'Bentuk Akar&amp;nbsp;', 'Inquiry Learning', 'Buku detik-detik', 'Lecture', 1, 20, 'Running Well ', '2020-01-17', '09:01:17', NULL, NULL, '0'),
(95, 90, 6, 7, 176, 'long functional text', 1, 'all texts', 'Project Based Learning', '', 'Group Discussion', 20, 1, '', '2020-01-17', '09:36:56', NULL, NULL, '0'),
(96, 91, 7, 11, 263, 'Plantae - Tumbuhan Berbiji', 2, 'Plantae - Tumbuhan Berbiji&lt;br&gt;Tumbuhan berbiji terbuka (Gymnospermae)&lt;br&gt;- Cycadinae : &lt;i&gt;Cycas rumphii&lt;/i&gt;&lt;br&gt;- Coniferae : &lt;i&gt;Agathis dammara&lt;/i&gt;&lt;br&gt;- Gnetinae :&lt;i&gt; Gnetum gnemon&lt;/i&gt;&lt;br&gt;- Ginkgoinae : &lt;i&gt;Ginkgo biloba&lt;/i&gt;', 'Direct Learning', 'PPT', 'Lecture', 17, 1, 'Rayhan (izin)\r\n\r\n\r\nAdit izin di jam ke-3 dan masuk jam ke-4\r\n\r\n\r\nLatihan mencari contoh spesies dan manfaat dari Gymnospermae', '2020-01-17', '09:30:52', NULL, NULL, '0'),
(97, 87, 6, 9, 195, 'Bilangan Berpangkat dan Bentuk Akar', 2, 'Bentuk Akar (PPT)', 'Direct Learning', 'Buku detik-detik', 'Lecture', 21, 4, 'Running Well', '2020-01-17', '10:06:31', NULL, NULL, '0'),
(98, 102, 7, 10, 276, 'invers fungsi', 2, 'invers fungsi', 'Discovery Learning', 'Intan Pariwara Matematika Wajib Kelas X', 'Group Discussion', 16, 4, '4 orang siswa izin', '2020-01-17', '10:32:53', NULL, NULL, '0'),
(99, 96, 8, 13, 207, 'titrasi asam basa', 2, 'titrasi asam basa', 'Direct Learning', 'ppt', 'Lecture', 20, 7, 'Affan dan Aurell izin karena marketing. (Aurell masuk kelas saat jam pelajaran ke 5)\r\nAis izin masih acara keluarga.\r\nPrista, Fikri dan Jihan sakit.\r\nIlviani alpa.', '2020-01-17', '10:34:40', NULL, NULL, '0'),
(100, 95, 9, 15, 237, 'pemabahasan UN', 1, 'latihan pembahasan kisi-kisi', 'Problem Based Learning', 'buku detik-detik UN', 'Experiment', 8, 2, '', '2020-01-17', '10:37:49', NULL, NULL, '0'),
(101, 95, 9, 14, 249, 'materi UN', 1, 'latihan kisi-kisi UN', 'Problem Based Learning', 'buku detik-detik UN', 'Experiment', 6, 0, '', '2020-01-17', '10:39:32', NULL, NULL, '0'),
(102, 98, 8, 12, 218, 'Ulangan Harian APBN dan APBD', 2, '', NULL, '', NULL, 0, 0, 'Tidak hadir hari ini, melly, asyfa, dana (sakit) dan najwa (Izin)', '2020-01-17', '10:39:26', NULL, NULL, '0'),
(103, 90, 6, 9, 198, 'long functional text', 2, 'all texts', 'Project Based Learning', '', 'Group Discussion', 21, 4, '', '2020-01-17', '10:55:37', NULL, NULL, '0'),
(104, 97, 9, 15, 244, 'persamaan dan pertidaksamaan logaritma', 1, 'persamaan dan pertidaksamaan logaritma', 'Discovery Learning', 'buku paket kelas 12 IPA', 'Group Discussion', 9, 2, 'Dhea Kamila izin, M. Rizky R sakit', '2020-01-17', '11:13:37', NULL, NULL, '0'),
(105, 88, 6, 7, 174, 'pembahasan soal UN 2019', 2, 'pembahasan soal UN 2019 no 1-8', 'Direct Learning', 'internet', 'Lecture', 20, 1, 'Anis di luar', '2020-01-17', '11:15:48', NULL, NULL, '0'),
(106, 86, 6, 8, 183, 'Makna kata dan makna tersurat dalam cerpen dan fabel', 2, 'Makna kata dan makna tersurat dalam cerpen dan fabel', 'Direct Learning', '', 'Demonstration', 19, 5, '', '2020-01-17', '10:56:38', NULL, NULL, '0'),
(107, 84, 6, 9, 193, 'Optimis, ikhtiar dan tawakkal', 2, 'Optimis, ikhtiar dan tawakkal', 'Direct Learning', 'Buku PAI kelas 9', 'Group Discussion', 21, 4, 'yang tidak : M Arif rakhman, Azkia, thabina, Ahmad Yusuf Riantoro', '2020-01-17', '13:30:45', NULL, NULL, '0'),
(108, 97, 9, 15, 244, 'persamaan dan pertidaksamaan logaritma ', 1, 'persamaan dan pertidaksamaan logaritma', 'Discovery Learning', '', 'Group Discussion', 9, 2, 'Dhea Kamila izin, M. RIzky Rahmatullah sakit', '2020-01-17', '14:01:40', NULL, NULL, '0'),
(109, 104, 6, 8, 192, 'materi USBN', 2, '', 'Direct Learning', '', NULL, 16, 8, 'affine, haikal, bagus dan mussafa telat.\r\nputri salsabila, raysha dan yona alpa.', '2020-01-17', '14:22:13', NULL, NULL, '0'),
(110, 93, 6, 7, 179, 'preparation USBN &quot;NORMS&quot;', 1, '1. macam-macam norma&lt;br&gt;2. implementasi di masyarakat&lt;br&gt;&lt;br&gt;soal no: 1, 3,&amp;nbsp;&lt;br&gt;&lt;br&gt;', 'Problem Based Learning', '', 'Group Discussion', 16, 5, '', '2020-01-17', '13:44:57', NULL, NULL, '0'),
(111, 88, 6, 9, 196, 'Soal UN 2019', 2, 'soal no 12-16', 'Direct Learning', '', 'Lecture', 21, 4, '', '2020-01-17', '14:49:55', NULL, NULL, '0'),
(112, 86, 6, 7, 172, 'Makna Kata dan makna tersurat dalam cerpen dan fabel', 2, 'menemukan makna Kata dan makna tersurat dalam cerpen dan fabel', 'Direct Learning', '', 'Demonstration', 20, 1, '', '2020-01-17', '14:49:06', NULL, NULL, '0'),
(113, 87, 6, 8, 184, 'Bilangan Berpangkat dan Bentuk Akar', 2, 'Latihan soal merasionalkan bentuk akar', 'Inquiry Learning', 'Buku detik-detik UNBK Matematika 2020', 'Lecture', 18, 6, '', '2020-01-17', '14:44:43', NULL, NULL, '0'),
(114, 84, 7, 10, 277, 'Al-Qur&#039;an dan Hadits adalah pedoman hidup', 2, 'Al-Qur&#039;an dan Hadits adalah pedoman hidup', 'Direct Learning', 'Buku PAI kelas x', 'Group Discussion', 15, 1, 'yang tidak hadir : monica', '2020-01-20', '08:43:56', NULL, NULL, '0'),
(115, 88, 8, 13, 214, 'Pemuaian Zat', 2, 'Padat, Cair, Gas, serta contoh soal. Mengumpul tugas kelompok', 'Direct Learning', '', 'Lecture', 26, 1, '', '2020-01-20', '08:48:37', NULL, NULL, '0'),
(116, 90, 6, 9, 198, 'review', 2, '', 'Direct Learning', '', 'Lecture', 23, 2, '', '2020-01-20', '08:57:08', NULL, NULL, '0'),
(117, 95, 8, 12, 216, 'proposal', 1, 'pembahasan pembuatan proposal', 'Inquiry Learning', 'e-book', 'Group Discussion', 25, 5, '', '2020-01-20', '09:09:48', NULL, NULL, '0'),
(118, 97, 7, 11, 268, 'fungsi dna relasi', 2, 'macam fungsi khusus dan latihan', 'Discovery Learning', 'buku paket matematika kelas 10', 'Group Discussion', 18, 1, 'A. Rayhan Muzaki izin', '2020-01-20', '09:38:14', NULL, NULL, '0'),
(119, 86, 6, 8, 183, 'Resensi Buku', 2, 'Keunggulan dan Kelemahan Buku', 'Direct Learning', '', 'Group Discussion', 20, 4, 'Latihan dan pembahasan Soal UN.', '2020-01-20', '08:59:19', NULL, NULL, '0'),
(120, 87, 6, 7, 173, 'Bilangan Berpangkat dan Bentuk Akar', 2, 'Latihan soal rasional akar', 'Direct Learning', 'Buku detik-detik', 'Lecture', 2, 19, 'Beberapa siswa tidak fokus dan hanya bermain tab', '2020-01-20', '09:16:26', NULL, NULL, '0'),
(121, 104, 9, 14, 258, 'Materi UN', 1, '', 'Direct Learning', 'Buku detik-detik Intan Pariwara', 'Lecture', 6, 0, 'Terlambat login karena komputer update windows.\r\nberjalan dengan lancar. ', '2020-01-20', '09:36:07', NULL, NULL, '0'),
(122, 88, 6, 7, 174, 'Pembahasan Soal UN 2019', 2, 'Pembahasan Soal UN 2019', 'Direct Learning', 'internet', 'Lecture', 17, 2, 'Inayah and Zahra are sleeping sangat nyenyak :D', '2020-01-20', '10:38:43', NULL, NULL, '0'),
(123, 90, 6, 8, 187, 'review', 2, '', 'Direct Learning', '', 'Lecture', 20, 4, '', '2020-01-20', '10:40:09', NULL, NULL, '0'),
(124, 93, 7, 10, 273, 'presentasi', 2, '', 'Problem Based Learning', '', NULL, 11, 0, '', '2020-01-20', '11:09:30', NULL, NULL, '0'),
(125, 93, 7, 10, 273, 'presentasi', 2, '', 'Problem Based Learning', '', NULL, 11, 0, '', '2020-01-20', '11:09:30', NULL, NULL, '0'),
(126, 104, 9, 14, 258, '', 1, '', 'Direct Learning', '', 'Lecture', 6, 0, '', '2020-01-20', '11:11:19', NULL, NULL, '0'),
(127, 84, 8, 13, 213, 'perilaku jujur', 2, 'perilaku jujur', 'Discovery Learning', 'Buku  PAI kelas 11', 'Group Discussion', 26, 1, 'hayuna amelia sakit', '2020-01-20', '11:46:22', NULL, NULL, '0'),
(128, 86, 6, 8, 183, 'Latihan Soal Makna Kata', 2, 'Latihan mencari makna kata', 'Project Based Learning', '', 'Experiment', 23, 2, '', '2020-01-20', '10:45:17', NULL, NULL, '0'),
(129, 95, 7, 10, 272, 'teks negosiasi', 1, 'latihan teks negosiasi', 'Inquiry Learning', 'e-book', 'Experiment', 11, 5, '', '2020-01-20', '12:13:10', NULL, NULL, '0'),
(130, 95, 7, 10, 272, 'teks negosiasi', 1, 'latihan teks negosiasi', 'Problem Based Learning', 'e-book', 'Experiment', 11, 5, '', '2020-01-20', '13:18:17', NULL, NULL, '0'),
(131, 87, 6, 8, 184, 'Bilangan Berpangkat dan Bentuk Akar ', 2, 'Latihan soal tryout&amp;nbsp;', 'Discovery Learning', 'Buku Detik-Detik', 'Group Discussion', 20, 4, 'Running Well', '2020-01-20', '13:16:41', NULL, NULL, '0'),
(132, 88, 6, 9, 196, 'Environment (replacing Ms Diah)', 2, 'Membuat tabel pembuluh darah dan sel darah', 'Discovery Learning', 'ebook, internet', 'Lecture', 23, 2, '', '2020-01-20', '13:30:42', NULL, NULL, '0'),
(133, 97, 8, 13, 212, 'barisan dan deret', 2, 'barisan dan deret aritmatika &amp;amp; geometri', 'Discovery Learning', 'buku paket matematika wajib kelas 11 ', 'Group Discussion', 26, 1, 'Hayyuna izin', '2020-01-20', '14:01:31', NULL, NULL, '0'),
(134, 95, 9, 15, 237, 'latihan UN', 2, 'latihan UN', 'Inquiry Learning', 'buku detik-detik UN', 'Experiment', 10, 0, '', '2020-01-20', '14:08:34', NULL, NULL, '0'),
(135, 95, 9, 14, 249, 'latihan UN', 2, 'latihan soal UN', 'Problem Based Learning', 'detik-detik UN', 'Experiment', 7, 0, '', '2020-01-20', '14:11:12', NULL, NULL, '0'),
(136, 88, 6, 9, 196, 'Presentation about Solar System', 2, '', 'Discovery Learning', 'internet, ebook, ppt', 'Group Discussion', 23, 2, '', '2020-01-20', '14:21:34', NULL, NULL, '0'),
(137, 86, 6, 7, 172, 'Latihan Makna Kata', 2, 'Latihan menemukan makna kata', 'Project Based Learning', '', 'Experiment', 17, 4, 'Anis keluar masuk kelas.', '2020-01-20', '13:16:31', NULL, NULL, '0'),
(138, 87, 6, 9, 195, 'Bilangan Berpangkat dan Bentuk Akar', 2, 'Bentuk Akar', 'Direct Learning', 'Buku detik-detik', 'Group Discussion', 23, 2, '', '2020-01-20', '14:34:24', NULL, NULL, '0'),
(139, 88, 6, 8, 185, 'Preparation for presentation', 2, 'Solar System', 'Discovery Learning', 'internet , ebook', 'Group Discussion', 20, 4, '', '2020-01-20', '14:36:07', NULL, NULL, '0'),
(140, 104, 7, 10, 281, 'penelitian sosial', 2, '', NULL, '', NULL, 11, 5, 'siswa yang izin: akbar, keyla, naila, raja dan monic.\r\nmenjawab soal untuk perbaikan nilai.', '2020-01-20', '14:41:55', NULL, NULL, '0'),
(141, 90, 6, 7, 176, 'review', 2, '', 'Direct Learning', '', 'Lecture', 21, 2, '', '2020-01-20', '15:38:44', NULL, NULL, '0'),
(142, 96, 7, 11, 264, 'reduksi oksidasi', 2, '', 'Direct Learning', 'buku', 'Group Discussion', 19, 0, '', '2020-01-21', '08:42:00', NULL, NULL, '0'),
(143, 97, 9, 15, 244, 'pertidaksamaan logaritma', 4, 'logaritma + pembahasan soal UN', 'Discovery Learning', 'buku paket matematika kelas 12 IPA, Detik-detik UN Matematika', 'Group Discussion', 18, 1, 'M. Rizky tdk ada keterangan', '2020-01-21', '08:47:06', NULL, NULL, '0'),
(144, 88, 6, 9, 196, 'Presentation', 2, '', NULL, '', NULL, 0, 0, '', '2020-01-21', '08:51:30', NULL, NULL, '0'),
(145, 95, 8, 13, 205, 'TEKS PROPOSAL', 2, 'LATIHAN MEMBUAT PROPOSAL', 'Inquiry Learning', '', 'Experiment', 24, 3, '', '2020-01-21', '08:51:47', NULL, NULL, '0'),
(146, 87, 6, 8, 184, 'Bilangan Berpangkat dan Bentuk Akar', 2, 'Latihan Soal Bilangan Berpangkat dan Bentuk Akar', 'Inquiry Learning', 'Buku Detik-Detik', 'Group Discussion', 22, 2, '', '2020-01-21', '08:51:51', NULL, NULL, '0'),
(147, 104, 8, 12, 220, 'mobilitas penduduk', 2, '', 'Discovery Learning', 'buku paket geografi', NULL, 24, 1, 'wahyu sakit', '2020-01-21', '08:51:31', NULL, NULL, '0'),
(148, 98, 7, 10, 279, 'Keseimbangan pasar', 2, 'Elastisitas Permintaan dan Penawaran', NULL, '', NULL, 0, 0, 'Tidak hadir: Dayen (Tidak ada keterangan)', '2020-01-21', '09:48:06', NULL, NULL, '0'),
(149, 93, 7, 11, 265, '1st hour: review previous meeting (Group 1: Otonomi Daerah)\r\n2nd hours: presentation Group 2 n 3 about: susunan n kewenangan pemerintah daerah)', 2, 'asas otonomi daerah:&lt;br&gt;1. asas sentralisasi&lt;br&gt;2. asas desentralisasi&lt;br&gt;3. asas dekonsentrasi&lt;br&gt;4. medebewind', 'Problem Based Learning', '', 'Group Discussion', 19, 0, 'all groups already presentasi, alhamdulillah', '2020-01-21', '09:35:54', NULL, NULL, '0'),
(150, 90, 6, 7, 176, 'review', 2, 'review', 'Direct Learning', '', 'Lecture', 20, 1, 'late students:\r\nvalentino agusta\r\nmarsya m. r.\r\nsiti zulaikha', '2020-01-21', '10:44:34', NULL, NULL, '0'),
(151, 87, 6, 9, 195, 'Bilangan Berpangkat dan Bentuk Akar ', 2, 'Latihan Soal Bentuk Akar', 'Direct Learning', 'Buku LKS Matematika Kelas 9 ', 'Lecture', 24, 1, 'Najma : izin ', '2020-01-21', '10:50:13', NULL, NULL, '0'),
(152, 86, 6, 8, 183, 'Perbandingan penggunaan bahasa dan pola penyajian beberapa jenis teks.', 2, 'Latihan Perbandingan\r\npenggunaan\r\nbahasa dan pola penyajian beberapa jenis teks', 'Project Based Learning', '', 'Group Discussion', 22, 2, '', '2020-01-21', '10:49:06', NULL, NULL, '0'),
(153, 97, 9, 14, 256, 'pembahasan soal UN', 2, 'pembahasan soal UN', 'Discovery Learning', 'detik-detik UN Matematika IPA', 'Group Discussion', 6, 1, 'M. Ibnu Rabi&#039; sakit. 11.45-12.20 &amp; 13.15-14.00', '2020-01-21', '11:49:40', NULL, NULL, '0'),
(154, 104, 7, 10, 281, 'penelitian sosial (fungsi manfaat penelitian dan rancangan penelitian sosial)', 1, '', NULL, '', NULL, 14, 2, '', '2020-01-21', '12:14:07', NULL, NULL, '0'),
(155, 101, 8, 12, 219, 'Cause and effect', 1, 'making script by choosing one of topics that prepared', 'Project Based Learning', '', 'Group Discussion', 24, 1, 'Wahyu Hidayat (sakit)', '2020-01-21', '12:08:42', NULL, NULL, '0'),
(156, 90, 6, 8, 187, 'review', 2, '', 'Direct Learning', '', 'Lecture', 22, 2, 'ahmad affine\r\nhaekal\r\nare late coming into the class\r\nmussafa&#039;\r\nrezka bagus\r\nare outside the class', '2020-01-21', '13:16:13', NULL, NULL, '0'),
(157, 101, 7, 11, 266, 'Recount text', 1, 'retelling recount text with title &quot;meeting my idol&quot;', NULL, 'English book for grade 10', NULL, 19, 0, 'students come forward to retell the story ', '2020-01-21', '13:19:37', NULL, NULL, '0'),
(158, 104, 7, 10, 281, 'penelitian sosial', 1, '', NULL, '', NULL, 14, 2, '', '2020-01-21', '13:26:51', NULL, NULL, '0'),
(159, 95, 9, 15, 237, 'PEMBAHASAN SOAL-SOAL UJIAN NASIONAL', 2, 'PEMBAHASAN SOAL TRY OUT 1 DETIK DETIK UJIAN NASIONAL', 'Project Based Learning', '', 'Experiment', 9, 1, '', '2020-01-21', '14:04:45', NULL, NULL, '0'),
(160, 95, 8, 12, 216, 'PEMBAHASAN SOAL UJIAN NASIONAL', 2, 'PEMBAHASAN SOAL TRY OUT 1 DETIK DETIK UJIAN NASIONAL', 'Inquiry Learning', 'BUKU DETIK DETIK UJIAN NASIONAL', 'Experiment', 5, 1, '', '2020-01-21', '14:07:00', NULL, NULL, '0'),
(161, 97, 7, 11, 268, 'vektor (matematika peminatan)', 2, 'vektor (matematika peminatan)', 'Discovery Learning', 'matematika peminatan kelas 10', 'Group Discussion', 19, 0, '(1) siswa hadir semua. (2) telat login jurnal karena guru pada jam sebelumnya terlambat keluar kelas', '2020-01-21', '14:10:58', NULL, NULL, '0'),
(162, 86, 6, 9, 194, 'Resensi Buku', 2, 'Latihan resensi buku', 'Direct Learning', '', 'Experiment', 24, 1, '', '2020-01-21', '13:17:12', NULL, NULL, '0'),
(163, 93, 8, 13, 208, 'organisasi Internasional', 2, '', 'Problem Based Learning', 'intan pariwara', 'Group Discussion', 24, 3, '', '2020-01-21', '14:24:02', NULL, NULL, '0'),
(164, 90, 6, 9, 198, 'review', 2, '', 'Direct Learning', '', 'Lecture', 24, 1, '', '2020-01-21', '14:31:00', NULL, NULL, '0'),
(165, 88, 6, 8, 185, 'Environment (replacing Ms Diah)', 2, 'membuat tabel perbedaan pembuluh darah arteri dan vena, serta tabel perbedaan sel darah merah dan putih', 'Discovery Learning', 'internet, ebook', 'Group Discussion', 22, 2, '', '2020-01-21', '14:51:20', NULL, NULL, '0'),
(166, 104, 7, 10, 280, 'tenaga eksogen dan faktor pembentuk tanah', 0, '', NULL, '', NULL, 14, 2, '', '2020-01-21', '14:14:40', NULL, NULL, '0'),
(167, 86, 6, 7, 172, 'Resensi Buku', 2, 'Latihan resensi buku', 'Direct Learning', '', 'Experiment', 20, 1, '', '2020-01-21', '14:32:32', NULL, NULL, '0'),
(168, 97, 9, 14, 256, 'pembahasan soal UN', 2, 'latihan soal UN', 'Discovery Learning', '', 'Group Discussion', 6, 0, 'siswa hadir semua. jam pelajaran 08.45-10.15', '2020-01-22', '08:42:45', NULL, NULL, '0'),
(169, 104, 8, 12, 220, 'menghitung jumlah penduduk ', 0, '', NULL, '', NULL, 25, 0, '', '2020-01-22', '08:50:04', NULL, NULL, '0'),
(170, 98, 8, 12, 218, 'Perpajakan', 2, 'Pengertian, Manfaat dan tarif Pajak', NULL, '', NULL, 0, 0, 'Hadir Semua', '2020-01-22', '09:40:26', NULL, NULL, '0'),
(171, 96, 7, 11, 264, 'kecepatan sudut', 1, '', 'Direct Learning', '', 'Lecture', 19, 0, '', '2020-01-22', '09:42:31', NULL, NULL, '0'),
(172, 86, 6, 9, 194, 'Perbandingan penggunaan bahasa dan pola penyajian beberapa jenis teks.', 2, 'Latihan&amp;nbsp;Perbandingan\r\npenggunaan\r\nbahasa dan pola penyajian beberapa jenis teks', 'Direct Learning', '', 'Group Discussion', 23, 2, '', '2020-01-22', '08:58:50', NULL, NULL, '0'),
(173, 96, 7, 11, 264, 'kecepatan sudut (II)', 1, '', 'Direct Learning', '', 'Lecture', 19, 0, '', '2020-01-22', '11:06:37', NULL, NULL, '0'),
(174, 88, 9, 15, 246, 'Rangkaian RLC', 2, 'pengenalan, rumus', 'Direct Learning', 'ebook, internet, ppt', 'Lecture', 0, 10, '', '2020-01-22', '11:12:49', NULL, NULL, '0'),
(175, 88, 9, 15, 246, 'Rangkaian RLC', 2, 'penerapan rangkaian RLC', 'Direct Learning', 'internet, ebook', 'Lecture', 0, 10, '', '2020-01-22', '11:12:49', NULL, NULL, '0'),
(176, 96, 9, 15, 239, 'materi ujian praktik', 1, '', 'Direct Learning', '', 'Lecture', 10, 0, '', '2020-01-22', '11:50:37', NULL, NULL, '0'),
(177, 86, 6, 8, 183, 'Pembahasan Soal', 2, 'Pembahasan Soal Perbandingan pola teks', 'Direct Learning', '', 'Demonstration', 21, 3, '', '2020-01-22', '11:51:31', NULL, NULL, '0'),
(178, 87, 6, 7, 173, 'Bilangan Berpangkat dan Bentuk Akar', 2, 'Latihan soal Bab 5', 'Inquiry Learning', 'Buku Detik-Detik', 'Group Discussion', 21, 0, '', '2020-01-22', '11:53:11', NULL, NULL, '0'),
(179, 95, 8, 12, 216, 'proposal', 1, 'proposal', 'Project Based Learning', '', 'Experiment', 25, 0, '', '2020-01-22', '11:54:12', NULL, NULL, '0'),
(180, 97, 8, 13, 212, 'barisan dan deret', 2, 'barisan dan deret', 'Discovery Learning', 'paket matematika wajib kelas 11', 'Group Discussion', 25, 2, 'Hayyuna Amelia tanpa keterangan, Taufik R tanpa keterangan', '2020-01-22', '11:53:26', NULL, NULL, '0'),
(181, 88, 6, 8, 185, '', 2, '', NULL, '', NULL, 0, 0, '', '2020-01-22', '13:14:52', NULL, NULL, '0'),
(182, 95, 8, 12, 216, 'proposal', 1, 'latihan soal', 'Inquiry Learning', '', 'Experiment', 27, 0, '', '2020-01-22', '13:28:33', NULL, NULL, '0'),
(183, 97, 7, 11, 268, 'fungsi dan komposisi      ', 2, 'jenis-jenis fungsi dan operasi aljabar pada fungsi', 'Discovery Learning', '', 'Demonstration', 19, 0, 'siswa hadir semua (lengkap)', '2020-01-22', '14:07:07', NULL, NULL, '0'),
(184, 87, 6, 9, 195, 'Bilangan Berpangkat dan Bentuk Akar', 2, 'Rasional Akar', 'Direct Learning', 'Buku Detik-Detik UNBK Matematika', 'Lecture', 23, 2, 'Running Well', '2020-01-22', '14:19:39', NULL, NULL, '0'),
(185, 87, 6, 8, 184, 'Bilangan Berpangkat dan Bentuk Akar', 2, 'Ulangan Harian Bab.5 Bilangan Berpangkat dan Bentuk Akar', 'Direct Learning', 'Buku Detik-Detik UNBK Matematika', 'Lecture', 21, 3, 'Running Well :) 9.2 selalu jadi kelas yang paling kondusif ', '2020-01-22', '14:53:07', NULL, NULL, '0'),
(186, 102, 7, 10, 276, 'invers komposisi fungsi', 2, 'invers komposisi fungsi', NULL, 'intan pariwara kelas 11 matematika wajib', 'Group Discussion', 16, 2, '2 orang siswa sakit', '2020-01-23', '08:42:40', NULL, NULL, '0'),
(187, 95, 8, 13, 205, 'PROPOSAL', 1, 'LATIHAN KUMPULAN PROPOSAL', 'Inquiry Learning', '', 'Experiment', 26, 1, '', '2020-01-23', '08:47:31', NULL, NULL, '0'),
(188, 87, 6, 7, 173, 'Bilangan Berpangkat dan Bentuk Akar', 2, 'Ulangan Bab 5', 'Direct Learning', 'Buku Detik-Detik ', 'Lecture', 21, 1, 'Running Well', '2020-01-23', '09:15:05', NULL, NULL, '0'),
(189, 93, 8, 12, 217, 'organisasi Internasional', 2, '', 'Problem Based Learning', '', 'Group Discussion', 24, 0, '', '2020-01-23', '09:17:00', NULL, NULL, '0'),
(190, 95, 7, 11, 262, 'negosiasi', 1, 'pembuatan naskah negosiasi', 'Inquiry Learning', 'e-book', 'Experiment', 18, 1, '', '2020-01-23', '09:44:11', NULL, NULL, '0'),
(191, 86, 6, 8, 183, 'Cerpen', 2, 'Latihan SOAL UN', 'Direct Learning', '', 'Group Discussion', 21, 3, '', '2020-01-23', '09:15:53', NULL, NULL, '0'),
(192, 104, 7, 10, 280, 'Pengenalan Dinamika Atmosfer', 1, '', NULL, '', NULL, 2, 14, 'Akbar sakit\r\nHakim izin', '2020-01-23', '09:43:48', NULL, NULL, '0'),
(193, 90, 6, 7, 176, 'latihan soal', 2, 'detik detik 2020 TO 1', 'Direct Learning', '', 'Lecture', 20, 2, 'siti zulaikha izin pulang sakit', '2020-01-23', '10:44:12', NULL, NULL, '0'),
(194, 95, 7, 11, 262, 'negosiasi', 2, 'latihan praktik', NULL, 'e-book', 'Experiment', 17, 1, '', '2020-01-23', '11:05:05', NULL, NULL, '0'),
(195, 104, 7, 10, 280, 'DINAMIKA ATMOSFER, TROPOSFER', 1, '', 'Problem Based Learning', '', NULL, 14, 2, 'hakim izin\r\nakbar sakit', '2020-01-23', '11:53:43', NULL, NULL, '0'),
(196, 87, 6, 9, 195, 'Bilangan Berpangkat dan Bentuk Akar', 2, 'Latihan soal bab 5', 'Inquiry Learning', '', 'Group Discussion', 24, 0, 'Listriknya mati terus', '2020-01-23', '11:59:07', NULL, NULL, '0'),
(197, 101, 7, 10, 274, 'type of text', 1, 'recount text chapter 9', 'Direct Learning', '', 'Lecture', 14, 2, 'akbar: izin, lukman: izin', '2020-01-23', '11:59:25', NULL, NULL, '0'),
(198, 98, 8, 13, 211, 'Tirani Matahari Terbit\r\n', 2, '', NULL, '', NULL, 0, 0, 'Taufik ( alfa/sakit) ', '2020-01-23', '13:26:09', NULL, NULL, '0'),
(199, 95, 7, 11, 262, 'TEKS NEGOSIASI', 1, 'PEMBAHASAN MATERI ULANGAN HARIAN', 'Inquiry Learning', 'E-BOOK', 'Experiment', 18, 1, '', '2020-01-23', '13:27:57', NULL, NULL, '0'),
(200, 101, 7, 10, 274, 'type of text', 1, 'recount text historical place', 'Direct Learning', '', 'Lecture', 14, 2, 'lukman: izin, akbar:sakit', '2020-01-23', '13:26:58', NULL, NULL, '0'),
(201, 90, 6, 9, 198, 'latihan soal', 2, '', 'Direct Learning', '', 'Lecture', 24, 0, 'lengkap', '2020-01-23', '13:19:03', NULL, NULL, '0'),
(202, 84, 7, 11, 270, 'Meneladani perjuangan Rasulullah SAW', 2, 'Meneladani perjuangan Rasulullah SAW', 'Discovery Learning', 'BUKU PAI Kelas X', 'Group Discussion', 18, 1, 'siswa yang tidak hadir : nadia ', '2020-01-23', '14:01:29', NULL, NULL, '0'),
(203, 97, 8, 13, 212, 'polinomial suku banyak (matematika peminatan)', 2, 'menentukan nilai polinomial dengan cara substitusi dan cara horner', 'Discovery Learning', 'buku matematika peminatan kelas 11 ', 'Group Discussion', 26, 1, 'Taufik M Riady tanpa keterangan', '2020-01-23', '14:02:07', NULL, NULL, '0'),
(204, 86, 6, 7, 172, 'Pola penyajian', 2, 'Pembahasan soal pola penyajian', NULL, '', NULL, 20, 2, '', '2020-01-23', '13:18:12', NULL, NULL, '0'),
(205, 90, 6, 8, 187, 'latihan soal', 2, '', 'Direct Learning', '', 'Lecture', 21, 3, '', '2020-01-23', '14:37:54', NULL, NULL, '0'),
(206, 88, 6, 7, 174, 'Tata Surya', 2, 'Presentation Group 2,3,5,6', 'Discovery Learning', 'internet, ebook', 'Group Discussion', 19, 3, '', '2020-01-23', '15:34:36', NULL, NULL, '0'),
(207, 86, 6, 9, 194, 'Pola pengembangan teks', 2, 'Pembahasan soal pola pengembangan', 'Direct Learning', '', 'Group Discussion', 24, 0, '', '2020-01-23', '14:31:57', NULL, NULL, '0'),
(208, 97, 9, 14, 256, 'pembahasan soal UN', 2, 'Latihan soal UN', 'Discovery Learning', 'Detik-detik UN Matematika IPS', 'Group Discussion', 6, 0, '', '2020-01-24', '08:37:56', NULL, NULL, '0'),
(209, 101, 7, 10, 274, 'type of text', 2, 'recount text (historical place)&amp;nbsp;&lt;br&gt;exercise grammar review', 'Direct Learning', 'e-book', 'Lecture', 15, 1, 'lukman: izin', '2020-01-24', '08:41:58', NULL, NULL, '0'),
(210, 90, 6, 8, 187, 'latihan soal', 1, 'to 1 p98 detikdetik 2019', 'Direct Learning', '', 'Lecture', 22, 2, '', '2020-01-24', '09:04:34', NULL, NULL, '0'),
(211, 91, 8, 13, 206, 'review sistem pencernaan\r\nsistem pernapasan', 2, '', 'Direct Learning', 'PPT\r\nBuku Erlangga Kelas XI K13', 'Lecture', 25, 2, 'Belin (sakit)\r\nTaufik ( - )', '2020-01-24', '08:48:11', NULL, NULL, '0'),
(212, 95, 9, 15, 237, 'LATIHAN SOAL UN', 2, 'LATIHAN SOAL UN', 'Inquiry Learning', '', 'Experiment', 9, 1, '', '2020-01-24', '09:28:53', NULL, NULL, '0'),
(213, 95, 9, 14, 249, 'LATIHAN SOAL UN', 2, 'LATIHAN SOAL UN', 'Inquiry Learning', 'DETIK-DETIK UN', 'Experiment', 6, 0, '', '2020-01-24', '09:29:40', NULL, NULL, '0'),
(214, 86, 6, 9, 194, 'Cerpen', 2, 'Contoh soal cerpen', 'Direct Learning', '', 'Demonstration', 24, 0, '', '2020-01-24', '09:03:41', NULL, NULL, '0'),
(215, 90, 6, 7, 176, 'latihan soal', 1, 'to 1 p98 detikdetik 2019', 'Direct Learning', '', 'Lecture', 19, 2, 'anis tanjaya terlambat masuk kelas', '2020-01-24', '09:38:36', NULL, NULL, '0'),
(216, 101, 8, 13, 209, 'Cause and effect', 1, 'continue perform drama about cause and effect based on the certain topic', 'Project Based Learning', '', 'Group Discussion', 25, 2, 'Belinda (s)\r\nTaufik M Riady (a)', '2020-01-24', '09:30:34', NULL, NULL, '9'),
(217, 98, 8, 12, 218, 'Perpajakan', 2, 'Perpajakan', NULL, '', NULL, 0, 0, 'Charoline (izin) rizka (sakit) rizqi (izin) lulu (izin)\r\nasyfa ( nonton di hp) nabila dan olya (ngobrol) haikal (main HP tapi mencatat di hp) azwar (main hp) tsabit, syarif, azwar dan wafa (mengobrol dan mengganggu kelas. dana (main hp)', '2020-01-24', '10:33:51', NULL, NULL, '0'),
(218, 102, 7, 10, 276, 'invers fungsi komposisi', 2, 'invers fungsi komposisi', 'Discovery Learning', 'intan pariwara kelas X social', 'Group Discussion', 16, 1, 'satu orang siswa izin', '2020-01-24', '10:32:58', NULL, NULL, '0'),
(219, 91, 7, 11, 263, 'Spermatophyta', 2, 'Tumbuhan Berbiji Tertutup', 'Direct Learning', 'Buku Erlangga Kelas X K13', 'Lecture', 18, 1, 'Rafly (Sakit)', '2020-01-24', '10:37:57', NULL, NULL, '0'),
(220, 90, 6, 9, 198, 'latihan soal', 2, 'to 1 detikdetik 2019 p98', 'Direct Learning', '', 'Lecture', 24, 0, '', '2020-01-24', '10:49:09', NULL, NULL, '0'),
(221, 96, 8, 13, 207, 'pH garam', 2, '', 'Direct Learning', 'ppt', 'Group Discussion', 25, 2, '', '2020-01-24', '10:34:41', NULL, NULL, '0'),
(222, 86, 6, 8, 183, 'Cerpen', 2, 'Latihan Cerpen', 'Direct Learning', '', 'Experiment', 22, 2, '', '2020-01-24', '10:50:20', NULL, NULL, '0'),
(223, 101, 7, 11, 266, 'simple past and present perfect tense ', 1, 'find regular and irregular verb in the puzzle provided', 'Inquiry Learning', 'e-book kelas X', NULL, 2, 0, 'M. Rafly (S)\r\nNur Aini Hanifah (izin)', '2020-01-24', '11:17:08', NULL, NULL, '0'),
(224, 84, 6, 7, 171, 'Shalat Jenazah', 2, 'Shalat Jenazah', 'Direct Learning', 'Buku PAI', 'Demonstration', 18, 2, 'yang tidak hadir: siti zulaikha, diva daniswara', '2020-01-24', '13:32:22', NULL, NULL, '0'),
(225, 97, 9, 15, 244, 'pembahasan soal UN', 2, 'Latihan soal UN', 'Direct Learning', 'Detik-detik UN Matematika IPA', 'Group Discussion', 8, 2, 'Magriyani izin. M. Rizki R tanpa keterangan. jam pelajaran 11.10-11.50 di kafe, jam pelajaran 14.00-14.40 di lab bahasa (baru bisa login)', '2020-01-24', '14:05:35', NULL, NULL, '0'),
(226, 104, 6, 9, 203, 'materi USBN', 2, '', NULL, '', NULL, 0, 0, '', '2020-01-24', '14:26:15', NULL, NULL, '0'),
(227, 84, 9, 15, 245, 'shalat jenazah dan prakteknya', 2, 'shalat jenazah dan prakteknya', 'Direct Learning', 'Buku PAI', 'Group Discussion', 16, 0, '', '2020-01-24', '14:39:04', NULL, NULL, '0'),
(228, 84, 9, 14, 257, 'shalat jenazah dan prakteknya', 2, 'shalat jenazah dan prakteknya', 'Direct Learning', 'Buku PAI', 'Group Discussion', 16, 0, '', '2020-01-24', '14:40:40', NULL, NULL, '0'),
(229, 86, 6, 7, 172, 'Cerpen', 2, 'Latihan cerpen soal UN', 'Direct Learning', '', 'Demonstration', 20, 2, 'Anis izin dan tidak ada kembali lagi.', '2020-01-24', '14:37:55', NULL, NULL, '0'),
(230, 84, 7, 10, 277, 'meniti hidup dengan kemuliaan', 2, 'meniti hidup dengan kemuliaan', 'Direct Learning', '', 'Lecture', 15, 1, 'yang tidak hadir: M Hafidz', '2020-01-27', '08:19:18', NULL, NULL, '0'),
(231, 96, 7, 11, 264, 'bilangan oksidasi', 2, '', NULL, 'buku', 'Group Discussion', 19, 0, '', '2020-01-27', '08:47:10', NULL, NULL, '0');
INSERT INTO `journal` (`journal_id`, `teacher_id`, `class_id`, `section_id`, `subject_id`, `submain_material`, `duration`, `lesson_material`, `implementation`, `reference_source`, `teaching_method`, `student_present`, `student_absent`, `description`, `date`, `time`, `date_end`, `time_end`, `file`) VALUES
(232, 95, 8, 12, 216, 'TEKS PROPOSAL', 1, 'TEKS PROPOSAL', 'Inquiry Learning', 'E-BOOK, BUKU PAKET', 'Experiment', 23, 3, '', '2020-01-27', '08:50:15', NULL, NULL, '0'),
(233, 88, 8, 13, 214, 'Daily Test', 2, 'Suhu, Kalor, dan Pemuaian', NULL, '', NULL, 26, 1, '', '2020-01-27', '09:22:43', NULL, NULL, '0'),
(234, 91, 9, 15, 238, 'KISI UN Protista dan Jamur', 2, 'KISI UN Protista dan Jamur', 'Direct Learning', 'Detik-detik UN', 'Lecture', 9, 1, '15 menit  di 1 jam pertama ada kegiatan foto ijazah (seluruh siswa)\r\nrossanda sakit', '2020-01-27', '09:33:24', NULL, NULL, '0'),
(235, 96, 8, 13, 207, 'pH garam lanjutan', 2, '', 'Direct Learning', 'ppt', 'Group Discussion', 26, 1, 'putri ', '2020-01-27', '09:42:28', NULL, NULL, '0'),
(236, 104, 9, 14, 258, 'Materi un', 1, '', NULL, '', NULL, 2, 4, 'Menjawab soal UN\r\n\r\nIbnu Izin\r\n\r\nLala, Wafa dan Fitria mengurus foto', '2020-01-27', '09:34:37', NULL, NULL, '0'),
(237, 93, 7, 10, 273, 'bentuk dan susunan pemerintah daerah', 2, 'grup akbar n dyah', 'Problem Based Learning', '', 'Group Discussion', 15, 1, 'next week examination chapter 1', '2020-01-27', '11:44:16', NULL, NULL, '0'),
(238, 96, 7, 11, 264, 'biloks', 2, 'biloks', 'Discovery Learning', 'soal-soal di buku', 'Group Discussion', 19, 0, '', '2020-01-27', '11:46:40', NULL, NULL, '0'),
(239, 101, 8, 12, 219, 'Cause and effect', 2, 'Daily Test about cause and effect', NULL, '', NULL, 22, 3, 'Lulu Nadira (izin)\r\nNajwa S. (sakit)\r\nM. Iskandar', '2020-01-27', '09:56:44', NULL, NULL, '0'),
(240, 84, 8, 13, 213, 'Rasul itu kekasih Allah', 2, 'Rasul itu kekasih Allah', 'Direct Learning', 'Buku PAI kelas 11', 'Demonstration', 26, 1, 'yang tidak hadir : putri ariyani', '2020-01-27', '11:46:08', NULL, NULL, '0'),
(241, 104, 9, 14, 258, 'materi un', 1, '', NULL, '', NULL, 5, 1, 'Ibnu izin', '2020-01-27', '11:49:22', NULL, NULL, '0'),
(242, 95, 7, 10, 272, 'TEKS NEGOSIASI', 1, 'ULANGAN HARIAN', 'Inquiry Learning', '', 'Experiment', 15, 1, '', '2020-01-27', '11:51:28', NULL, NULL, '0'),
(243, 104, 8, 12, 224, 'Konflik sosial\r\npresentasi', 1, '', NULL, '', NULL, 0, 2, 'Lulu, najwa dan ajay sakit', '2020-01-27', '11:58:09', NULL, NULL, '0'),
(244, 95, 7, 10, 272, 'TEKS NEGOSIASI', 1, 'ULANGAN HARIAN', 'Inquiry Learning', '', 'Experiment', 15, 1, '', '2020-01-27', '13:17:48', NULL, NULL, '0'),
(245, 104, 8, 12, 224, 'presentasi', 1, '', NULL, '', NULL, 22, 3, 'Lulu, Jeje dan ajay izin', '2020-01-27', '13:52:58', NULL, NULL, '0'),
(246, 84, 8, 12, 223, 'rasul itu kekasih Allah', 2, 'rasul itu kekasih Allah', 'Direct Learning', 'Buku PAI 10', 'Group Discussion', 24, 3, 'yangf tidak hadir : iskandar zailani, Lulu nadira, nazwa', '2020-01-27', '14:07:04', NULL, NULL, '0'),
(247, 95, 9, 15, 237, 'DETIK DETIK UJIAN NASIONAL', 2, 'PEMBAHASAN MATERI UJIAN NASIONAL', 'Inquiry Learning', '', 'Experiment', 9, 1, '', '2020-01-27', '14:12:34', NULL, NULL, '0'),
(248, 95, 9, 14, 249, 'DETIK-DETIK UJIAN NASIONAL', 2, 'PEMBAHASAN MATERI UJIAN NASIONAL', 'Inquiry Learning', 'DETIK-DETIK UJIAN NASIONAL', 'Experiment', 5, 1, '', '2020-01-27', '14:14:35', NULL, NULL, '0'),
(249, 101, 7, 11, 266, 'Simple Past Tense and present perfect tense', 2, 'Daily test Simple Past Tense and present perfect tense&lt;br&gt;1. change the verb in the bracket into simple past tense&lt;br&gt;2. make sentences in the form of simple past and present perfect tense (2 senteces/each tense)&lt;br&gt;3. choose the tenses that used in sentences, then change it&amp;nbsp; into simple past/present perfect tense', NULL, 'internet', NULL, 19, 0, '', '2020-01-27', '14:31:34', NULL, NULL, '0'),
(250, 104, 7, 10, 281, 'Penelitian sosial\r\nJudul (Variabel terikat dan variabel bebas)', 2, '', NULL, '', NULL, 15, 1, 'Hafiz izin', '2020-01-27', '15:32:01', NULL, NULL, '0'),
(251, 97, 9, 15, 244, 'pembahasan soal UN', 4, 'pembahasan soal UN', 'Direct Learning', 'Detik-detik UN Matematika IPA', 'Group Discussion', 8, 2, 'Rossanda Okta sakit. M. Rizky Rahmatullah tanpa keterangan', '2020-01-28', '08:35:38', NULL, NULL, '0'),
(252, 96, 7, 11, 282, 'roda-roda pada gerak melingkar', 2, '', 'Direct Learning', '', 'Lecture', 19, 0, '', '2020-01-28', '08:53:50', NULL, NULL, '0'),
(253, 95, 8, 13, 205, 'TEKS PROPOSAL', 2, 'ULANGAN HARIAN', 'Inquiry Learning', 'E-BOOK', 'Experiment', 25, 2, '', '2020-01-28', '08:53:36', NULL, NULL, '0'),
(254, 104, 8, 12, 220, 'faktor yang memengaruhi keragaman budaya Indonesia', 2, '', 'Inquiry Learning', '', NULL, 20, 4, 'Haikal sakit magh\r\nLulu izin\r\nMelly izin\r\nasyifa tanpa keterangan', '2020-01-28', '08:44:19', NULL, NULL, '0'),
(255, 104, 9, 14, 258, 'Daily Test', 2, '', NULL, '', NULL, 4, 2, 'Daily test 12 grader.\r\nbersambung waktu istirahat.\r\ndilakukan di kafetaria.', '2020-01-28', '09:32:20', NULL, NULL, '0'),
(256, 93, 7, 11, 265, 'urusan pemerintahan pusat dan pemerintahan daerah', 2, '1st meeting: they are taking foto&lt;br&gt;2nd meeting: &lt;br&gt;a. review previous meeting&lt;br&gt;b. identification about responsibility between central gouvenment n regional gouvernment&lt;br&gt;&lt;br&gt;', 'Problem Based Learning', 'intan pariwara', 'Group Discussion', 21, 0, 'all groups already done presentation and today continue our material abaout responsibility between central gouvernment n regional gouvernment', '2020-01-28', '09:31:45', NULL, NULL, '0'),
(257, 98, 7, 10, 279, 'Mekanisme Pasar dan Elastisitas', 2, 'Ulangan Harian', NULL, '', NULL, 0, 0, '', '2020-01-28', '09:43:13', NULL, NULL, '0'),
(258, 97, 9, 14, 256, 'pembahasan soal UN', 2, 'pembahasan soal UN', 'Direct Learning', 'Detik-detik UN Matematika IPS', 'Group Discussion', 5, 1, 'Wafa Lettysia Gianti sakit, M. Ibnu Rabi&#039; izin', '2020-01-28', '11:47:58', NULL, NULL, '0'),
(259, 91, 9, 15, 238, 'Kisi UN Plantae dan Animalia', 2, '', NULL, '', NULL, 8, 2, 'Rizky (tidak hadir, alpa)\r\nRossanda (sakit)', '2020-01-28', '11:51:34', NULL, NULL, '0'),
(260, 104, 7, 10, 280, 'Membuat mindmaping dinamika litosfer\r\n', 1, '', NULL, '', NULL, 16, 0, '', '2020-01-28', '11:44:30', NULL, NULL, '0'),
(261, 88, 8, 13, 214, 'Suhu, Kalor, Pemuaian', 2, 'remedial ulangan harian', NULL, 'internet, ppt', 'Group Discussion', 2, 27, '', '2020-01-28', '13:34:07', NULL, NULL, '0'),
(262, 95, 9, 15, 237, 'PERSIAPAN UN', 2, 'LATIHAN SOAL UN', 'Inquiry Learning', 'BUKU DETIK-DETIK UN', 'Experiment', 8, 2, '', '2020-01-28', '14:08:35', NULL, NULL, '0'),
(263, 95, 9, 14, 249, 'PERSIAPAN UN', 2, 'LATIHAN SOAL UN', 'Inquiry Learning', 'BUKU DETIK-DETIK UN', 'Experiment', 4, 2, '', '2020-01-28', '14:10:13', NULL, NULL, '0'),
(264, 104, 7, 10, 280, 'melanjutkan tugas', 1, '', NULL, '', NULL, 0, 0, '', '2020-01-28', '15:01:37', NULL, NULL, '0'),
(265, 97, 7, 11, 268, 'vektor', 2, 'menentukan panjang 2 vektor', 'Discovery Learning', 'buku matematika peminatan kelas 10', 'Group Discussion', 19, 0, 'siswa lengkap', '2020-01-28', '14:09:51', NULL, NULL, '0'),
(266, 104, 7, 10, 281, 'give quetions to the students', 2, '', NULL, '', NULL, 16, 0, '', '2020-01-28', '15:02:03', NULL, NULL, '0'),
(267, 93, 8, 13, 208, 'organisasi internasional part2', 2, 'ASEAN&lt;br&gt;GNB&lt;br&gt;OKI', 'Problem Based Learning', '', 'Group Discussion', 25, 2, '', '2020-01-28', '15:31:25', NULL, NULL, '0'),
(268, 103, 8, 12, 222, 'Limit Fungsi', 2, 'Limit Bentuk Tertentu, Limit Bentuk Tak Tentu, Limit Ketakhinggan', 'Direct Learning', 'Buku LKS Intan Pariwara', 'Lecture', 25, 4, 'Siswa yang tidak berhadir:\r\nAsyfa (Alfa)\r\nLulu (Izin)\r\nMelly (Sakit)\r\nHaikal (Sakit)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ', '2020-01-28', '14:00:15', NULL, NULL, '0'),
(269, 97, 9, 14, 256, 'pembahasan soal UN (08.35-10.15)', 2, 'Latihan soal UN', 'Discovery Learning', 'detik-detik UN Matematika IPS', 'Group Discussion', 4, 2, 'Wafa Lettysia Gianti sakit, M. Ibnu Rabi&#039; izin', '2020-01-29', '08:38:54', NULL, NULL, '0'),
(270, 98, 7, 11, 267, 'Pengaruh India dan masuknya keraan-kerajaan ke Indonesia', 2, 'Latihan&amp;nbsp;', NULL, '', NULL, 0, 0, '', '2020-01-29', '08:43:54', NULL, NULL, '0'),
(271, 96, 9, 15, 239, 'Soal UN', 2, '', 'Direct Learning', 'buku detik-detik', 'Group Discussion', 10, 0, 'Rizky ujian praktik bio di lab', '2020-01-29', '08:48:10', NULL, NULL, '0'),
(272, 104, 8, 12, 220, 'Budaya nasional dan budaya lokal', 2, '', NULL, '', NULL, 24, 1, 'lulu sakit', '2020-01-29', '08:47:09', NULL, NULL, '0'),
(273, 96, 7, 11, 282, 'Hukum Newton 1', 1, '', 'Discovery Learning', 'ppt', 'Lecture', 19, 0, '', '2020-01-29', '09:37:12', NULL, NULL, '0'),
(274, 91, 8, 13, 206, 'sistem pernapasan', 2, 'sistem pernapasan', 'Direct Learning', '', 'Lecture', 26, 1, 'Maolin sakit', '2020-01-29', '09:41:51', NULL, NULL, '0'),
(275, 98, 8, 12, 218, 'Perpajakan', 2, 'Asas-asas Pajak&lt;br&gt;Jenis-jenis Pajak', NULL, '', NULL, 0, 0, '', '2020-01-29', '09:51:27', NULL, NULL, '0'),
(276, 88, 9, 15, 246, 'Rangkaian RLC', 2, 'contoh soal rangkaian RLC', 'Discovery Learning', 'internet, ebook', 'Group Discussion', 0, 0, '', '2020-01-29', '11:07:43', NULL, NULL, '0'),
(277, 96, 7, 11, 282, 'Hukum Newton II dan III', 1, '', 'Direct Learning', 'ppt', 'Lecture', 19, 0, '', '2020-01-29', '11:13:50', NULL, NULL, '0'),
(278, 96, 9, 15, 239, 'Pembahasan soal-soal UN', 2, '', 'Direct Learning', 'detik2 UN', NULL, 10, 0, '', '2020-01-29', '11:56:57', NULL, NULL, '0'),
(279, 97, 8, 13, 212, 'limit fungsi', 2, 'definisi dan penyelesaian limit fungsi', 'Discovery Learning', 'paket matematika wajib kelas 11 ', 'Group Discussion', 26, 1, 'Maolin Bintang J sakit', '2020-01-29', '11:57:26', NULL, NULL, '0'),
(280, 97, 7, 11, 268, 'fungsi komposisi (matematika wajib)', 2, 'operasi aljabar pada fungsi', 'Discovery Learning', 'buku paket matematika wajib kelas 10', 'Lecture', 19, 0, '', '2020-01-29', '14:10:18', NULL, NULL, '0'),
(281, 102, 7, 10, 276, 'Fungsi Komposisi dan Invers Fungsi', 2, 'Fungsi Komposisi dan Invers Fungsi', NULL, 'Intan Pariwara, matematika kelas X 2019/2020', 'Group Discussion', 16, 2, 'Dayen sakit\r\nHakim Izin', '2020-01-30', '08:41:35', NULL, NULL, '0'),
(282, 95, 8, 13, 205, 'KARYA ILMIAH', 2, 'MATERI', 'Inquiry Learning', 'E-BOOK', 'Demonstration', 26, 1, '', '2020-01-30', '08:51:35', NULL, NULL, '0'),
(283, 93, 8, 12, 217, 'organisasi Internasional', 2, 'organisasi Internasional', 'Problem Based Learning', '', 'Group Discussion', 23, 2, 'OKI kelompok ASYFA belum presentasi, their reason is PPT in Lulu&#039;s macbook but Lulu in Bandung, and macboook in banjar -_-', '2020-01-30', '08:34:43', NULL, NULL, '0'),
(284, 95, 7, 11, 262, 'TEKS NEGOSIASI', 1, 'ULANGAN HARIAN', 'Inquiry Learning', 'E-BOOK', 'Experiment', 19, 0, '', '2020-01-30', '09:44:34', NULL, NULL, '0'),
(285, 104, 7, 10, 280, 'lapisan atmosfer', 1, '', NULL, '', NULL, 14, 2, 'Dayeen dan Hakim izin', '2020-01-30', '09:28:01', NULL, NULL, '0'),
(286, 103, 8, 12, 222, 'Limit Fungsi', 1, 'Limit Fungsi di Ketakhinggaan Bentuk Irasional', 'Direct Learning', 'Buku 1700 Bank Soal\r\nLks Intan Pariwara kelas 11\r\nEbook Matematika Wajib', 'Lecture', 25, 2, 'Lulu Nadira (Izin)\r\nMuhammad Rizqi (Sakit)', '2020-01-30', '09:35:28', NULL, NULL, '0'),
(287, 97, 9, 15, 244, 'pembahasan soal UN', 2, 'pembahasan soal UN', 'Discovery Learning', 'Detik-detik UN Matematika IPA', 'Group Discussion', 9, 1, 'M. Rizki Rahmatullah tanpa keterangan', '2020-01-30', '10:12:51', NULL, NULL, '0'),
(288, 95, 7, 11, 262, 'TEKS NEGOSIASI', 2, 'ULANGAN HARIAN', 'Inquiry Learning', '', 'Experiment', 19, 0, '', '2020-01-30', '11:02:51', NULL, NULL, '0'),
(289, 104, 7, 10, 280, 'Tugas mandiri tentang fenomena di atmosfer', 1, '', NULL, '', NULL, 14, 2, 'Deyeen dan Hakim izin', '2020-01-30', '11:44:53', NULL, NULL, '0'),
(290, 103, 8, 12, 222, 'Limit Fungsi ', 1, 'Limit Fungsi di Ketakhinggaan Bentuk Irasional Lanjutan', 'Direct Learning', 'Buku 1700 Bank Soal\r\nLks Intan Pariwara\r\nEbook Matematika Kelas 11', 'Lecture', 25, 2, 'Lulu Nadira (Izin)\r\nMuhammad Rizqi (Sakit)', '2020-01-30', '11:04:43', NULL, NULL, '0'),
(291, 96, 9, 15, 239, 'pembahasan soal-soal UN', 2, 'no soal 26-33', 'Direct Learning', 'buku detik-detik', 'Group Discussion', 8, 1, 'Rizky (a), jam ke 5 : Dhea, Dheya, Khodijah, Rossanda dan Nevrila tidak masuk ke kelas (tanpa keterangan), jam ke 6: masuk semua.', '2020-01-30', '11:50:46', NULL, NULL, '0'),
(292, 98, 8, 13, 211, 'Tirani Matahari Terbit', 2, 'C. Pengarahan&amp;nbsp; di Bidang Pendidikan dan kebudayaan&lt;br&gt;D. Drama Akhir Sang Tirani', NULL, '', NULL, 0, 0, 'nunur (Izin)', '2020-01-30', '11:53:52', NULL, NULL, '0'),
(293, 101, 7, 10, 274, 'Tenses', 1, 'Simple Past and Present Perfect Review', 'Direct Learning', '', 'Lecture', 14, 2, 'lukman: izin, dayen: sakit', '2020-01-30', '12:00:25', NULL, NULL, '0'),
(294, 104, 8, 12, 224, 'cara penyelesaian konflik', 1, '', NULL, '', NULL, 23, 2, 'Lulu izin\r\nrizki', '2020-01-30', '12:00:16', NULL, NULL, '0'),
(295, 101, 7, 10, 274, 'Tenses', 1, 'Daily Test (simple Past and Present Perfect)', 'Direct Learning', '', 'Lecture', 14, 2, 'Lukman: izin, Dayen: sakit', '2020-01-30', '13:06:21', NULL, NULL, '0'),
(296, 95, 7, 11, 262, 'DEBAT', 1, 'PEMBAHASAN MATERI', 'Inquiry Learning', 'E-BOOK', 'Experiment', 19, 0, '', '2020-01-30', '13:31:05', NULL, NULL, '0'),
(297, 84, 7, 11, 270, 'meniti hidup dengan kemuliaan', 2, 'meniti hidup dengan kemuliaan', 'Direct Learning', 'Buku PAI kelas 10', 'Group Discussion', 19, 0, 'hadir semua', '2020-01-30', '14:00:55', NULL, NULL, '0'),
(298, 97, 8, 13, 212, 'suku banyak (matematika peminatan)', 2, 'menentukan hasil bagi dan sisa pembagian suku banyak&amp;nbsp;', 'Inquiry Learning', 'buku matematika peminatan kelas 11', 'Group Discussion', 26, 1, 'Norhidayah Sukmadewi izin', '2020-01-30', '14:02:11', NULL, NULL, '0'),
(299, 104, 8, 12, 224, 'penyelesaian konflik dan masyarakat multikultural', 1, '', NULL, '', NULL, 24, 2, 'Lulu izin\r\nrizqi ', '2020-01-30', '14:05:47', NULL, NULL, '0'),
(300, 98, 7, 10, 279, 'Mekanisme Pasar dan Elastisitas', 2, '', NULL, '', NULL, 0, 0, 'Dayen (alfa) Hakim (Izin)', '2020-01-30', '14:07:17', NULL, NULL, '0'),
(301, 104, 8, 12, 221, 'Latihan soal', 2, '', NULL, '', NULL, 14, 2, '', '2020-01-30', '14:11:49', NULL, NULL, '0'),
(302, 101, 9, 15, 241, 'Pembahasan buku detik-detik UN', 2, 'Pembahasan buku detik-detik UN', NULL, '', NULL, 0, 0, 'Ibnu (izin)\r\nWafa (sakit)\r\nRizky ', '2020-01-30', '14:11:07', NULL, NULL, '0'),
(303, 97, 9, 14, 256, 'pembahasan soal UN', 2, '&lt;b&gt;pembahasan soal UN&lt;/b&gt;', 'Discovery Learning', 'Detik-detik UN Matematika IPS', 'Group Discussion', 4, 2, 'M. Ibnu R izin, Wafa Lettysia G sakit. telat masuk 24 menit karena rapat', '2020-01-31', '08:54:20', NULL, NULL, '0'),
(304, 91, 8, 13, 206, 'pernapasan', 2, 'pernapasan', 'Direct Learning', '', 'Lecture', 23, 4, 'Aisya Izin\r\nPrista Izin\r\nNurul Annisa Sakit\r\nTaufik sakit', '2020-01-31', '09:17:56', NULL, NULL, '0'),
(305, 90, 6, 8, 187, 'english speech preparation', 1, '', 'Direct Learning', 'ppt', 'Lecture', 10, 14, 'siswa yg masuk kelas:\r\n1. faiza\r\n2. farida\r\n3. kabitha\r\n4. kayla\r\n5. chelo\r\n6. farhan\r\n7. nadiana\r\n8. najwa\r\n9. andini\r\n10. riski amaliah r.', '2020-01-31', '09:19:50', NULL, NULL, '0'),
(306, 95, 9, 15, 237, 'PERSIAPAN UN', 2, 'mengerjakan latihan soal', 'Inquiry Learning', '', 'Experiment', 7, 3, '', '2020-01-31', '09:32:18', NULL, NULL, '0'),
(307, 95, 9, 14, 249, 'PERSIAPAN UJIAN NASIONAL', 2, 'LATIHAN SOAL', 'Inquiry Learning', 'BUKU DETIK-DETIK UN', 'Experiment', 4, 2, '', '2020-01-31', '09:34:49', NULL, NULL, '0'),
(308, 104, 8, 12, 220, 'Ulangan harian', 2, '', NULL, '', NULL, 23, 2, '', '2020-01-31', '08:59:11', NULL, NULL, '0'),
(309, 90, 6, 7, 176, 'english speech preparation', 1, '', 'Direct Learning', 'ppt', 'Lecture', 8, 15, '2 sakit, 1 izin\r\nyg hadir di kelas:\r\n1. Ajir\r\n2. Andi\r\n3. Arya\r\n4. Daiva\r\n5. Hafiz Nazwa\r\n6. Inayah\r\n7. M.Alwi\r\n8. Yunita', '2020-01-31', '09:54:46', NULL, NULL, '0'),
(310, 91, 7, 11, 263, 'Animalia', 2, '', 'Direct Learning', '', 'Lecture', 19, 0, '', '2020-01-31', '10:00:39', NULL, NULL, '0'),
(311, 101, 8, 13, 209, 'Cause and effect', 1, '&lt;b&gt;exercise about cause and effect&lt;/b&gt;&lt;br&gt;complete the dialog with suitable connectors showing causes or effect. then, practice the complete dialog with your friend.', 'Inquiry Learning', '', NULL, 25, 2, 'Nurul Anisa (sakit)\r\nTaufik M Riady', '2020-01-31', '09:28:42', NULL, NULL, '0'),
(312, 102, 7, 10, 276, 'Trigonometri (Radian-Derajat)', 2, 'Radian-Derajat', 'Problem Based Learning', 'Intan Pariwara Matematika Kelas X Social 2019/2020', 'Group Discussion', 16, 1, 'hakim izin', '2020-01-31', '10:39:03', NULL, NULL, '0'),
(313, 98, 8, 12, 218, 'Perpajakan', 2, 'Latihan', NULL, '', NULL, 0, 0, 'Lulu (Izin) Olin (izin) ', '2020-01-31', '10:42:12', NULL, NULL, '0'),
(314, 97, 9, 15, 244, 'pembahasan soal UN', 2, 'pembahasan soal UN', 'Direct Learning', 'Detik-detik UN Matematika IPA ', 'Group Discussion', 9, 1, '11.10-11.50 &amp; 14.00-14.40 (di kafe jd tdk bisa login)', '2020-01-31', '11:07:42', NULL, NULL, '0'),
(315, 86, 6, 8, 183, 'Soal', 2, 'Pembahasan', 'Direct Learning', '', 'Demonstration', 10, 14, '', '2020-01-31', '10:36:49', NULL, NULL, '0'),
(316, 101, 7, 11, 266, 'Recount text', 1, 'Answer the question based on text &quot; The Battle of Surabaya&quot;', 'Inquiry Learning', '', NULL, 19, 0, '', '2020-01-31', '11:18:31', NULL, NULL, '0'),
(317, 101, 7, 11, 266, 'Recount text', 1, 'Answer the question based on text &quot; The Battle of Surabaya&quot;', 'Inquiry Learning', '', NULL, 19, 0, '', '2020-01-31', '11:18:31', NULL, NULL, '0'),
(318, 90, 6, 9, 198, 'speech preparation', 2, '', 'Direct Learning', '', 'Lecture', 13, 10, '1 sakit', '2020-01-31', '12:03:47', NULL, NULL, '0'),
(319, 84, 6, 8, 182, 'kehadiran islam mendamaikan bumi nusantara', 2, 'kehadiran islam mendamaikan bumi nusantara', 'Direct Learning', 'Buku PAi kelas 9', 'Lecture', 10, 14, 'yang tidak masuk: Ahmad afine N, ailen, ando, alfi, padikiya, haikal, bagus, mushaffa, nabila hana,yona, talita, raisya, putri', '2020-01-31', '13:31:43', NULL, NULL, '0'),
(320, 93, 6, 9, 201, 'ham', 1, '', 'Problem Based Learning', '', NULL, 14, 10, '', '2020-01-31', '13:43:55', NULL, NULL, '0'),
(321, 104, 6, 7, 181, 'Masa pra aksara', 2, '', NULL, '', NULL, 8, 22, '', '2020-01-31', '14:29:02', NULL, NULL, '0'),
(322, 93, 9, 15, 240, 'ART', 2, 'ART', 'Project Based Learning', '', 'Experiment', 7, 3, 'PROJECT: membuat hiasan di atas meja', '2020-01-31', '15:02:39', NULL, NULL, '0'),
(323, 93, 9, 15, 240, 'ART', 2, '', 'Project Based Learning', '', 'Experiment', 12, 4, 'PROJECT: membuat hiasan di atas meja', '2020-01-31', '15:02:39', NULL, NULL, '0'),
(324, 93, 9, 14, 250, 'ART', 2, '', 'Project Based Learning', '', 'Experiment', 5, 1, 'PROJECT: Membuat hiasan di atas meja', '2020-01-31', '15:06:09', NULL, NULL, '0'),
(325, 86, 6, 7, 172, 'Soal', 2, 'Pembahasan', 'Direct Learning', '', NULL, 8, 14, '', '2020-01-31', '14:44:58', NULL, NULL, '0'),
(326, 90, 6, 9, 198, 'english examoination practice', 2, 'speech', 'Direct Learning', '', 'Demonstration', 24, 0, '', '2020-02-03', '08:53:21', NULL, NULL, '0'),
(327, 96, 7, 11, 264, 'rumus kimia', 2, '', 'Direct Learning', 'ppt', 'Lecture', 13, 7, '6 org izin foto osis, 1 orang sakit', '2020-02-03', '09:09:54', NULL, NULL, '0'),
(328, 88, 8, 13, 214, 'Proses dalam Termodinamika', 2, 'definisi dari proses adiabatik isokhorik isotermik isobarik', 'Discovery Learning', 'internet', 'Group Discussion', 26, 1, '', '2020-02-03', '09:12:01', NULL, NULL, '0'),
(329, 96, 8, 13, 207, 'konsep penyangga', 2, '', 'Direct Learning', 'ppt', 'Lecture', 26, 1, 'taufik sakit', '2020-02-03', '09:51:03', NULL, NULL, '0'),
(330, 104, 9, 14, 258, 'Materi', 1, '', NULL, '', NULL, 6, 0, '', '2020-02-03', '10:23:15', NULL, NULL, '0'),
(331, 97, 7, 11, 268, 'fungsi komposisi', 2, 'fungsi komposisi pada 2 fungsi', 'Discovery Learning', 'buku matematika wajib kelas 10', 'Group Discussion', 18, 1, 'Nadia Rahma Tri A sakit (10.15-11.45) baru login karena pc error', '2020-02-03', '10:53:25', NULL, NULL, '0'),
(332, 90, 6, 8, 187, 'english examination practice', 2, '', 'Direct Learning', '', 'Demonstration', 22, 2, 'outseide the class\r\n1. yona\r\n2. raysha\r\n3. putri salsabila', '2020-02-03', '10:51:02', NULL, NULL, '0'),
(333, 104, 9, 14, 258, 'Materi UN Ciri, Hakikat dan Kajian Sosiologi', 1, '', NULL, '', NULL, 6, 0, '', '2020-02-03', '11:25:33', NULL, NULL, '0'),
(334, 84, 8, 13, 213, 'hormati dan sayangi orang tua dan gurumu', 2, 'hormati dan sayangi orang tua dan gurumu', NULL, 'Buku PAI kelas 11', 'Demonstration', 26, 1, 'Yang tidak hadir: Taufiq M,R sakit', '2020-02-03', '11:45:16', NULL, NULL, '0'),
(335, 96, 7, 11, 264, 'tata nama senyawa kimia', 2, '', 'Direct Learning', '', 'Lecture', 18, 1, 'Nadia sakit', '2020-02-03', '11:49:57', NULL, NULL, '0'),
(336, 86, 6, 9, 194, 'Soal Cerpen', 2, 'Soal Cerpen', 'Direct Learning', '', 'Group Discussion', 24, 0, 'Banyak siiswanya sedang di ruangan Bu Waheni.', '2020-02-03', '10:46:18', NULL, NULL, '0'),
(337, 88, 6, 7, 174, 'bahas kisi-kis UN 1', 2, 'pengukuran', 'Direct Learning', 'detik-detik', 'Group Discussion', 18, 4, '', '2020-02-03', '11:56:51', NULL, NULL, '0'),
(338, 104, 8, 12, 224, 'Latihan soal', 1, 'Latihan soal', NULL, 'b uku', NULL, 22, 3, 'Asyifa Sakit\r\nBadali dan Rizqi sakit (tanpa surat)', '2020-02-03', '12:20:59', NULL, NULL, '11'),
(339, 88, 6, 9, 196, 'replacing Ms Diah', 2, 'persilangan', 'Discovery Learning', 'internet, ebook', 'Group Discussion', 24, 1, '', '2020-02-03', '13:33:07', NULL, NULL, '0'),
(340, 97, 8, 13, 212, 'limit fungsi', 2, 'menentukan nilai limit suatu fungsi', NULL, 'buku matematika wajib kelas 11', 'Group Discussion', 26, 1, 'Taufik M R sakit', '2020-02-03', '14:03:52', NULL, NULL, '0'),
(341, 84, 8, 12, 223, 'hormati dan sayangi orang tua dan gurumu', 2, 'hormati dan sayangi orang tua dan gurumu', 'Direct Learning', 'Buku PAI kelas 11', 'Lecture', 24, 2, 'yang tidak hadir : badali dan rizki ', '2020-02-03', '14:03:01', NULL, NULL, '0'),
(342, 86, 6, 7, 172, 'Cerpen', 2, 'Pembahasan soal cerpen', 'Direct Learning', '', 'Group Discussion', 20, 2, 'Anis keluar ruangan, kembali jam 13.37.', '2020-02-03', '13:29:22', NULL, NULL, '0'),
(343, 90, 6, 7, 176, 'english examination practice', 2, '', 'Direct Learning', '', 'Demonstration', 19, 1, 'alle late ', '2020-02-03', '14:30:27', NULL, NULL, '0'),
(344, 88, 6, 8, 185, 'soal praktikum massa jenis', 2, '', NULL, 'internet , hasil praktikum', 'Group Discussion', 18, 6, '', '2020-02-03', '15:17:14', NULL, NULL, '0'),
(345, 101, 7, 11, 266, 'Historical recount text', 2, 'Answer the questions based on title &quot; The Battle of Surabaya&quot;&lt;br&gt;checking together student&#039;s answer', 'Inquiry Learning', '', NULL, 18, 1, 'Nadia (sakit)', '2020-02-03', '14:09:21', NULL, NULL, '0'),
(346, 104, 7, 10, 281, 'Perencanaan penelitian sosial', 2, '', NULL, '', NULL, 12, 4, 'Jihad, Hakim, Ihsan dan Daeyeen Izin', '2020-02-03', '15:39:57', NULL, NULL, '0'),
(347, 96, 7, 11, 282, 'gerak melingkar', 2, 'Membahas soal-soal', 'Direct Learning', 'ppt', 'Lecture', 18, 1, 'Adit (ijin)', '2020-02-04', '08:38:41', NULL, NULL, '0'),
(348, 97, 9, 15, 244, 'pembahasan soal UN', 4, '&lt;b&gt;Latihan soal UN&lt;/b&gt;', 'Discovery Learning', 'Detik-detik UN Matematika IPA', 'Group Discussion', 9, 1, 'M. Rizky izin', '2020-02-04', '08:41:58', NULL, NULL, '0'),
(349, 95, 8, 13, 205, 'KARYA ILMIAH', 2, 'PEMBAHASAN MATERI', 'Inquiry Learning', '', 'Group Discussion', 27, 0, '', '2020-02-04', '08:41:56', NULL, NULL, '0'),
(350, 87, 6, 8, 184, 'Latihan soal unbk', 2, 'Latihan soal to 1', 'Direct Learning', 'Buku Detik-Detik', 'Lecture', 22, 2, '', '2020-02-04', '08:48:11', NULL, NULL, '0'),
(351, 104, 8, 12, 220, 'Kearifan Lokal Kalimantan selatan', 2, '', NULL, '', NULL, 24, 1, 'Azwar izin telat, jam ke 2 baru datang.\r\nbadali tanpa keterangan', '2020-02-04', '09:33:49', NULL, NULL, '0'),
(352, 98, 8, 12, 218, 'Pasar Dalam Perekonomian', 2, 'A. Pengertian Pasar&lt;br&gt;B. Macam-macam Pasar', NULL, '', NULL, 0, 0, '', '2020-02-04', '09:49:53', NULL, NULL, '0'),
(353, 90, 6, 7, 176, 'english examiation practice', 2, 'speech', 'Direct Learning', '', 'Demonstration', 20, 2, 'anis outside', '2020-02-04', '10:44:04', NULL, NULL, '0'),
(354, 86, 6, 8, 183, 'Membaca cepat', 2, 'Latihan membaca cepat', 'Direct Learning', '', 'Demonstration', 22, 2, '', '2020-02-04', '10:50:36', NULL, NULL, '0'),
(355, 88, 8, 13, 214, 'Teori Gas dan Termodinamika', 2, 'Teori Gas dan Termodinamika', 'Direct Learning', 'internet, ppt', 'Lecture', 27, 0, '', '2020-02-04', '11:50:45', NULL, NULL, '0'),
(356, 104, 7, 10, 280, 'tugas mandiri', 1, '', NULL, '', NULL, 12, 4, 'Hakim, daeyeen, Silva dan Ami tidak hadir', '2020-02-04', '11:59:38', NULL, NULL, '0'),
(357, 97, 9, 14, 256, 'pembahasan soal UN', 2, 'latihan soal UN', 'Discovery Learning', 'Detik-detik UN Matematika IPS', 'Group Discussion', 6, 0, '11.45-12.20 di kafe jadi tidak bisa login. 13.15-14.00 di lab bahasa', '2020-02-04', '13:21:43', NULL, NULL, '0'),
(358, 90, 6, 8, 187, 'english examination practice', 0, 'speech', 'Direct Learning', '', 'Demonstration', 22, 2, '', '2020-02-04', '13:27:26', NULL, NULL, '0'),
(359, 104, 7, 10, 280, 'Cuaca dan iklim', 1, '', NULL, '', NULL, 12, 4, '', '2020-02-04', '14:06:02', NULL, NULL, '0'),
(360, 95, 9, 14, 249, 'PEMBAHASAN SOAL TRY OUT 4', 2, 'PEMBAHASAN SOAL-SOAL UJIAN NASIONAL', 'Inquiry Learning', '', 'Demonstration', 6, 0, '', '2020-02-04', '14:11:09', NULL, NULL, '0'),
(361, 97, 7, 11, 268, 'vektor', 2, 'perbandingan vektor', 'Discovery Learning', 'buku matematika peminatan kelas 10', 'Group Discussion', 18, 1, 'Aditya Septian izin. telat login karena pc lelet', '2020-02-04', '14:11:37', NULL, NULL, '0'),
(362, 97, 7, 11, 268, 'vektor', 2, 'perbandingan vektor', 'Discovery Learning', 'buku matematika peminatan kelas 10', 'Group Discussion', 18, 1, 'Aditya Septian izin. telat login karena pc lelet', '2020-02-04', '14:11:37', NULL, NULL, '0'),
(363, 95, 9, 15, 237, 'PEMBAHASAN TRY OUT 4', 2, 'PEMBAHASAN TRY OUT 4', 'Inquiry Learning', '', 'Demonstration', 9, 1, '', '2020-02-04', '14:12:31', NULL, NULL, '0'),
(364, 86, 6, 9, 194, 'Soal Cerpen unsur intrinsik', 2, 'Soal Pendalaman membahas unsur intrinsik cerpen', 'Direct Learning', '', 'Group Discussion', 24, 0, 'Nawawi ke luar ruangan tanpa izin dan tidak kembali.', '2020-02-04', '13:30:52', NULL, NULL, '0'),
(365, 87, 6, 7, 173, 'Refresing after exam', 2, '', 'Direct Learning', '', 'Lecture', 20, 2, '', '2020-02-04', '14:26:15', NULL, NULL, '0'),
(366, 88, 6, 8, 185, 'pewarisan sifat', 2, 'replacing ms diah', 'Discovery Learning', 'ebook, internet', 'Group Discussion', 22, 2, '', '2020-02-04', '14:40:10', NULL, NULL, '0'),
(367, 90, 6, 9, 198, 'english examination practice', 2, 'speech', 'Direct Learning', '', 'Demonstration', 24, 0, '', '2020-02-04', '14:58:54', NULL, NULL, '0'),
(368, 104, 7, 10, 281, 'rumusan masalah dan pengumpulan data', 2, '', NULL, '', NULL, 12, 4, '', '2020-02-04', '15:26:35', NULL, NULL, '0'),
(369, 86, 6, 7, 172, 'Soal unsur intrinsik cerpen', 2, 'Pembahasan soal', 'Direct Learning', '', 'Group Discussion', 20, 2, '', '2020-02-04', '15:25:11', NULL, NULL, '0'),
(370, 97, 9, 14, 256, 'pembahasan soal UN', 2, '&lt;b&gt;pembahasan soal UN&lt;/b&gt;', 'Discovery Learning', 'Detik-detik UN Matematika IPS', 'Group Discussion', 5, 1, 'M. Ibnu Rabi&#039; tanpa keterangan', '2020-02-05', '08:51:12', NULL, NULL, '0'),
(371, 91, 9, 15, 238, 'Latihan UN', 2, 'Latihan soal UN', 'Direct Learning', '', 'Lecture', 9, 0, 'Khodijah sakit', '2020-02-05', '08:53:08', NULL, NULL, '0'),
(372, 98, 7, 11, 267, 'BAB II PERDAGANGAN, PENGUASA DAN PUJANGGA PADA MASA KLASIK (HINDU DAN BUDDHA)', 2, '&lt;div&gt;1.Terbentuknya\r\njaringan Nusantara melalui perdagangan&lt;/div&gt;\r\n\r\n&lt;div&gt;2.Akulturasi\r\nkebudayaan Nusantara dan Hindu- Buddha&lt;/div&gt;', NULL, '', NULL, 0, 0, 'Aditya Septian (Izin) Rafii (Alfa) Diva (alfa)', '2020-02-05', '08:51:31', NULL, NULL, '0'),
(373, 95, 7, 10, 272, 'TEKS DEBAT', 1, 'PEMBAHASAN MATERI', 'Inquiry Learning', 'E-BOOK', 'Demonstration', 11, 5, '', '2020-02-05', '09:18:37', NULL, NULL, '0'),
(374, 104, 8, 12, 220, 'Kearifan lokal di Indonesia', 2, '', NULL, '', NULL, 0, 0, '', '2020-02-05', '09:38:02', NULL, NULL, '0'),
(375, 88, 9, 15, 246, 'Rangkaian RLC', 2, 'Latihan Soal', 'Direct Learning', '', 'Group Discussion', 9, 1, '', '2020-02-05', '09:40:36', NULL, NULL, '0'),
(376, 96, 7, 11, 282, 'pembahasan soal hk newton', 2, 'pembahasan soal hk newton', 'Direct Learning', '', NULL, 17, 2, 'Adit (i) Diva (s), rafii (a)', '2020-02-05', '09:40:49', NULL, NULL, '0'),
(377, 98, 8, 12, 218, 'Perpajakan', 2, '1. Objek Pajak dan Peran Pajak', NULL, '', NULL, 0, 0, 'Lesmana Perdana (Izin)', '2020-02-05', '09:43:43', NULL, NULL, '0'),
(378, 86, 6, 9, 194, 'Unsur intrinsik cerpen', 2, 'Pembahasan soal hari kedua', 'Direct Learning', '', 'Group Discussion', 24, 0, '', '2020-02-05', '09:02:15', NULL, NULL, '0'),
(379, 91, 8, 13, 206, 'Pernapasan', 2, 'Pernapasan&lt;br&gt;dampak rokok terhadap kesehaan&lt;br&gt;&lt;br&gt;diskusi mengenai&lt;br&gt;1. kandungan rokok yang berbahaya bagi kesehatan&lt;br&gt;2. penyakit yang disebabkan oleh rokok&lt;br&gt;3. menentukan mana yang lebih bahaya rokok tembakau atau rokok elektrik&lt;br&gt;4. membuat poster sederhana', NULL, 'internet, buku biologi kelas X', 'Group Discussion', 26, 1, 'Prista Sakit', '2020-02-05', '09:59:47', NULL, NULL, '0'),
(380, 97, 8, 13, 212, 'limit', 2, 'limit pemfaktoran dan limit tak hingga', 'Discovery Learning', 'paket matematika wajib kelas 11', 'Group Discussion', 26, 1, 'Prista Oksarnalia sakit', '2020-02-05', '11:53:03', NULL, NULL, '0'),
(381, 95, 8, 12, 216, 'KARYA ILMIAH', 2, 'PEMBAHASAN KARYA ILMIAH', 'Inquiry Learning', '', 'Demonstration', 24, 1, '', '2020-02-05', '11:52:27', NULL, NULL, '0'),
(382, 96, 9, 15, 239, 'Soal UN', 2, '', 'Direct Learning', '', 'Group Discussion', 9, 1, 'Khodijah (s)', '2020-02-05', '11:56:55', NULL, NULL, '0'),
(383, 91, 7, 11, 263, 'Animalia', 2, 'Invertebrata&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;', 'Direct Learning', '', 'Lecture', 16, 3, 'Adit Izin\r\nRafii Alfa\r\nDiva Sakit', '2020-02-05', '11:57:55', NULL, NULL, '0'),
(384, 87, 6, 7, 173, 'latihan soal TO 2', 2, 'materi soal un', 'Discovery Learning', 'Buku Detik-Detik UNBK', 'Group Discussion', 22, 0, '', '2020-02-05', '12:03:07', NULL, NULL, '0'),
(385, 95, 8, 12, 216, 'KARYA ILMIAH', 1, 'MENULIS KARYA ILMIAH. PEMBERIAN MATERI', 'Inquiry Learning', 'E-BOOK', 'Demonstration', 24, 1, '', '2020-02-05', '13:20:02', NULL, NULL, '0'),
(386, 87, 6, 9, 195, 'Ulangan Harian Bab 5', 2, 'Bilangan Berpangkat dan Bentuk Akar', 'Direct Learning', 'Buku detik-detik unbk dan lks matematika kelas IX', 'Lecture', 24, 0, '', '2020-02-05', '13:36:25', NULL, NULL, '0'),
(387, 86, 6, 7, 172, 'Membaca cepat', 2, 'Latihan membaca cepat', 'Direct Learning', '', 'Experiment', 22, 0, '', '2020-02-05', '13:24:49', NULL, NULL, '0'),
(388, 87, 6, 8, 184, 'Latihan Soal TO 1', 2, 'Latihan Soal TO 1', 'Direct Learning', 'Buku Detik-Detik ', 'Lecture', 21, 3, '', '2020-02-05', '14:37:15', NULL, NULL, '0'),
(389, 91, 6, 7, 177, 'Latihan UN (soal Detik-detik)', 2, 'Ciri makhluk hidup bdan klasifikasi makhluk hidup', 'Direct Learning', '', 'Lecture', 21, 0, '', '2020-02-05', '14:31:28', NULL, NULL, '0'),
(390, 88, 6, 9, 196, 'Soal UN Pengukuran', 2, 'Detik-detik 2020', 'Direct Learning', 'buku detk-detik, internet', 'Group Discussion', 24, 0, '', '2020-02-05', '15:46:50', NULL, NULL, '0'),
(391, 102, 7, 10, 276, 'Trigonometri pada segitiga', 2, 'Trigonometri pada segitiga', 'Problem Based Learning', 'Intan Pariwara Matematika SMA Kelas X tahun 2019/2020', 'Group Discussion', 16, 2, 'Hakim Izin', '2020-02-06', '08:40:36', NULL, NULL, '0'),
(392, 95, 8, 13, 205, 'KARYA ILMIAH', 2, 'PEMAHAMAN DAN MATERI MENGENAI KARYA ILMIAH', 'Inquiry Learning', 'E-BOOK', 'Group Discussion', 26, 1, '', '2020-02-06', '08:45:52', NULL, NULL, '0'),
(393, 93, 8, 12, 217, 'uh', 0, '', NULL, '', NULL, 25, 0, '', '2020-02-06', '09:26:25', NULL, NULL, '0'),
(394, 87, 6, 7, 173, 'Latihan Tryout 1', 2, 'Latihan Tryout 1', 'Inquiry Learning', 'Buku Detik-Detik UNBK', 'Group Discussion', 21, 1, '', '2020-02-06', '08:58:48', NULL, NULL, '0'),
(395, 95, 7, 11, 262, 'DEBAT', 2, 'DEBAT', 'Inquiry Learning', 'E-BOOK', 'Group Discussion', 19, 0, '', '2020-02-06', '09:46:04', NULL, NULL, '0'),
(396, 86, 6, 8, 183, 'Sebab-akibat cerpen', 2, 'soal sebab-akibat', 'Direct Learning', '', 'Group Discussion', 22, 2, '', '2020-02-06', '09:05:17', NULL, NULL, '0'),
(397, 91, 6, 9, 199, 'Sistem pernapasn dan sistem pencernaan', 2, '', 'Direct Learning', '', 'Lecture', 23, 1, 'Ryantoro', '2020-02-06', '09:59:56', NULL, NULL, '0'),
(398, 103, 8, 12, 222, 'Limit Fungsi', 1, 'Ulangan Akhir Bab Limit Fungsi Sesi 1', 'Direct Learning', 'Buku Lks Intan Pariwara', 'Lecture', 25, 0, 'UH Sesi 1 Berjalan dengan lancar', '2020-02-06', '09:32:26', NULL, NULL, '0'),
(399, 104, 7, 10, 281, 'Penelitian sosial ', 1, '', NULL, '', NULL, 15, 1, 'Hakim izin.\r\npendalaman materi untuk ulangan harian', '2020-02-06', '10:15:45', NULL, NULL, '0'),
(400, 97, 9, 15, 244, 'pembahasan soal UN', 2, 'pembahasan soal UN', 'Discovery Learning', 'Detik-detik UN Matematika IPA', 'Group Discussion', 9, 1, 'Saripudin tanpa keterangan', '2020-02-06', '10:18:16', NULL, NULL, '0'),
(401, 87, 6, 9, 195, 'Refreshing after daily test', 2, '', 'Direct Learning', '', 'Lecture', 23, 1, '', '2020-02-06', '10:41:37', NULL, NULL, '0'),
(402, 90, 6, 7, 176, 'pembahasan dan latihan soal', 2, '', 'Direct Learning', 'detidetik', 'Lecture', 22, 1, '', '2020-02-06', '10:52:36', NULL, NULL, '0'),
(403, 103, 8, 12, 222, 'Limit Fungsi', 1, 'Ulangan Harian Limit Fungsi Sesi 2', 'Direct Learning', 'Buku LKS Intan Pariwara', 'Lecture', 25, 0, 'Ulangan Harian Sesi 2 Berjalan Dengan Lancar', '2020-02-06', '11:00:47', NULL, NULL, '0'),
(404, 95, 7, 11, 262, 'DEBAT', 1, 'PEMBAHASAN DAN MATERI DEBAT', 'Inquiry Learning', 'E-BOOK', 'Group Discussion', 19, 0, '', '2020-02-06', '11:06:19', NULL, NULL, '0'),
(405, 91, 6, 8, 188, 'Sistem Pencernaan dan Sistem Pernapasan ', 2, '', 'Direct Learning', '', 'Lecture', 21, 3, 'mussafa&#039;a sakit\r\nputri salsabila sakit\r\nnurhaliza izin', '2020-02-06', '11:10:00', NULL, NULL, '0'),
(406, 96, 9, 15, 239, 'Soal prediksi UN 1', 2, 'Soal prediksi UN 1', 'Direct Learning', 'buku detik-detik', 'Lecture', 9, 1, 'Saripudin (alpa)', '2020-02-06', '11:49:39', NULL, NULL, '0'),
(407, 104, 7, 10, 281, 'penelitian sosial (sampel)', 1, '', NULL, '', NULL, 15, 1, 'Hakim izin', '2020-02-06', '11:53:12', NULL, NULL, '0'),
(408, 88, 8, 13, 214, 'replacing Ms Jariah', 1, '', 'Discovery Learning', '', 'Group Discussion', 26, 1, '', '2020-02-06', '11:54:52', NULL, NULL, '0'),
(409, 104, 8, 12, 224, 'pengertian dan bentuk integrasi sosial', 1, '', NULL, '', NULL, 23, 2, 'Badali dan Azwar izin', '2020-02-06', '12:17:09', NULL, NULL, '0'),
(410, 90, 6, 9, 198, 'latihan soal', 2, '', 'Direct Learning', '', 'Lecture', 24, 1, '2 ijin:\r\n1. melysa\r\n2. tabina', '2020-02-06', '13:25:13', NULL, NULL, '0'),
(411, 95, 7, 11, 262, 'DEBAT', 1, 'PEMBAHASAN MARTERI DAN PENJELASAN DEBAT', 'Discovery Learning', 'E-BOOK', 'Demonstration', 19, 0, '', '2020-02-06', '13:26:56', NULL, NULL, '0'),
(412, 87, 6, 8, 184, 'Latihan TO 1', 2, 'Latihan TO 1', 'Direct Learning', 'Buku Detik-Detik UNBK Matematika', 'Lecture', 21, 3, 'Raysha and Yona are outside', '2020-02-06', '13:22:51', NULL, NULL, '0'),
(413, 104, 8, 12, 224, 'pengertian dan bentuk integrasi sosial', 1, '', NULL, '', NULL, 25, 0, '', '2020-02-06', '13:59:01', NULL, NULL, '0'),
(414, 104, 8, 12, 221, 'Respon bangsa Indonesia terhadap kependudukan Jepang', 2, '', NULL, '', NULL, 25, 0, '', '2020-02-06', '13:59:34', NULL, NULL, '0'),
(415, 84, 7, 11, 270, 'Hikmah ibadah haji, zakat dan waqaf dalam kehidupan', 2, 'Hikmah ibadah haji, zakat dan waqaf dalam kehidupan', 'Discovery Learning', 'Buku PAI', 'Group Discussion', 19, 0, '', '2020-02-06', '14:00:49', NULL, NULL, '0'),
(416, 86, 6, 7, 172, 'Unsur Intrinsik cerpen', 2, 'Pembahasan unsur intrinsik cerpen', 'Direct Learning', '', 'Group Discussion', 21, 1, '', '2020-02-06', '13:26:45', NULL, NULL, '0'),
(417, 98, 7, 10, 279, 'Pasar dalam Perekonomian', 2, '1. Pasar Persaiangan Sempurna&lt;br&gt;2. Pasar Persaingan Tidak Sempurna', NULL, '', NULL, 0, 0, 'Lukman (Izin) ', '2020-02-06', '14:09:01', NULL, NULL, '0'),
(418, 97, 8, 13, 212, 'polinomial', 2, 'teorema sisa polinomial', 'Discovery Learning', 'buku peminatan kelas 11', 'Lecture', 26, 1, 'Taufik M Riady tanpa keterangan', '2020-02-06', '14:07:54', NULL, NULL, '0'),
(419, 86, 6, 9, 194, 'Membaca cepat', 2, 'Membaca cepat', 'Direct Learning', '', 'Demonstration', 0, 0, '', '2020-02-06', '14:30:22', NULL, NULL, '0'),
(420, 90, 6, 8, 187, 'latihan soal', 2, '', 'Direct Learning', '', 'Lecture', 21, 3, '', '2020-02-06', '14:27:45', NULL, NULL, '0'),
(421, 101, 9, 15, 241, 'pembahasan soal detik-detik UN', 2, 'PEMBAHASAN TRYOUT 3', 'Direct Learning', '', NULL, 14, 2, 'Saripudin is not come', '2020-02-06', '14:09:54', NULL, NULL, '0'),
(422, 88, 6, 7, 174, '', 2, '', 'Direct Learning', '', 'Lecture', 21, 1, '', '2020-02-06', '15:31:59', NULL, NULL, '0'),
(423, 97, 9, 14, 256, 'pembahasan soal UN', 2, '&lt;b&gt;pembahasan soal UN&lt;/b&gt;', 'Discovery Learning', 'Detik-detik UN Matematika IPS', 'Lecture', 6, 0, '', '2020-02-07', '08:35:21', NULL, NULL, '0');
INSERT INTO `journal` (`journal_id`, `teacher_id`, `class_id`, `section_id`, `subject_id`, `submain_material`, `duration`, `lesson_material`, `implementation`, `reference_source`, `teaching_method`, `student_present`, `student_absent`, `description`, `date`, `time`, `date_end`, `time_end`, `file`) VALUES
(424, 101, 7, 10, 274, 'type of text', 2, 'historical recount', 'Direct Learning', '', 'Lecture', 14, 2, 'lukman: izin, Silva: sakit', '2020-02-07', '08:48:58', NULL, NULL, '0'),
(425, 90, 6, 8, 187, 'latihan soal', 1, 'to 2 questions', 'Direct Learning', '', 'Lecture', 14, 8, '2 alpa', '2020-02-07', '08:53:41', NULL, NULL, '0'),
(426, 88, 9, 15, 246, 'Rangkaian RLC', 2, 'Ulangan', NULL, '', NULL, 10, 0, '', '2020-02-07', '08:58:39', NULL, NULL, '0'),
(427, 91, 8, 13, 206, 'Pernapasan', 2, 'Pengendalian dan kecepatanPernapasan', NULL, '', NULL, 26, 1, '', '2020-02-07', '08:43:01', NULL, NULL, '0'),
(428, 90, 6, 7, 176, 'latihan soal', 1, 'detikdetik', 'Direct Learning', 'moodle tryout 2', 'Lecture', 17, 4, '4 iizin', '2020-02-07', '09:33:43', NULL, NULL, '0'),
(429, 88, 6, 8, 185, 'Detik-detik 2020', 2, '', NULL, '', NULL, 0, 0, '', '2020-02-07', '09:39:54', NULL, NULL, '0'),
(430, 95, 9, 15, 237, 'UN', 2, 'PEMBAHASAN SOAL UN', 'Inquiry Learning', '', 'Demonstration', 9, 1, '', '2020-02-07', '09:40:16', NULL, NULL, '0'),
(431, 95, 9, 15, 237, 'UN', 2, 'PEMBAHASAN SOAL UN', 'Inquiry Learning', '', 'Demonstration', 9, 1, '', '2020-02-07', '09:40:16', NULL, NULL, '0'),
(432, 95, 9, 14, 249, 'DETIK-DETIK UN', 2, 'PEMBAHASAN SOAL UN', 'Inquiry Learning', '', 'Experiment', 6, 0, '', '2020-02-07', '09:42:04', NULL, NULL, '0'),
(433, 104, 8, 12, 221, 'biografi tokoh nasional dan daerah dalam memperjuangkan kemerdekaan', 3, '', NULL, '', NULL, 23, 2, 'Lulu dan Linda sakit, namun tidak ada konfimasi wali kelas', '2020-02-07', '09:43:34', NULL, NULL, '0'),
(434, 102, 7, 10, 276, 'Sudut Istimewa Pada Trigonometri', 2, 'Sudut Istimewa Pada Trigonometri', 'Problem Based Learning', 'Intan Pariwara Matematika SMA kelas X 2019/2020', 'Group Discussion', 16, 2, 'Hakim Izin\r\nSilva Sakit', '2020-02-07', '10:32:54', NULL, NULL, '0'),
(435, 96, 8, 13, 207, 'pH larutan penyangga', 2, '', 'Direct Learning', '', 'Group Discussion', 25, 2, 'Prista (a), Anisa (s)', '2020-02-07', '10:37:33', NULL, NULL, '0'),
(436, 88, 6, 7, 174, 'Latihan Soal', 2, '', NULL, '', NULL, 0, 0, '', '2020-02-07', '10:50:47', NULL, NULL, '0'),
(437, 90, 6, 9, 198, 'latihan soal', 2, 'middle test tryout 2', 'Direct Learning', '', 'Lecture', 21, 3, '2 izin tari saman\r\n1. nasywa\r\n2.azkia\r\n\r\n1 ijin keluar kota\r\nryantoro', '2020-02-07', '10:56:29', NULL, NULL, '0'),
(438, 97, 9, 15, 244, 'pembahasan soal UN', 2, 'pembahasan soal UN', 'Direct Learning', 'Detik-detik UN Matematika IPA', 'Group Discussion', 9, 1, 'M. Rizky Rahmatullah tanpa keterangan', '2020-02-07', '11:16:37', NULL, NULL, '0'),
(439, 84, 6, 9, 193, 'Alur perjalanan dakwah di nusantara', 2, 'Alur perjalanan dakwah di nusantara', 'Discovery Learning', '', 'Group Discussion', 22, 2, 'yang tidak hadir: riantoro (izin) dan nasywa yasyifa (saman)', '2020-02-07', '13:27:53', NULL, NULL, '0'),
(440, 93, 6, 7, 179, '', 0, '', NULL, '', NULL, 18, 4, '4 orang ijin excercise saman:\r\naula dini, zahro, nashwa, liz zahra', '2020-02-07', '13:46:09', NULL, NULL, '0'),
(441, 104, 6, 8, 192, 'Kehidupan masa pra aksara', 2, '', NULL, '', NULL, 0, 0, 'Alfi sakit\r\nFaiza, Kabitha, Nabila, izin, namun hadir di jam ke-8.\r\nHaikal, Na&#039;diana, Nurhaliza.', '2020-02-07', '14:28:12', NULL, NULL, '0'),
(442, 84, 9, 15, 245, 'rahmat islam bagi nusantara', 2, 'rahmat islam bagi nusantara', 'Discovery Learning', 'Buku PAi kelas 12', 'Lecture', 0, 0, '', '2020-02-07', '14:42:52', NULL, NULL, '0'),
(443, 88, 6, 9, 196, '', 2, '', NULL, '', NULL, 0, 0, '', '2020-02-07', '14:42:49', NULL, NULL, '0'),
(444, 84, 9, 14, 257, 'rahmat islam bagi nusantara', 2, 'rahmat islam bagi nusantara', 'Discovery Learning', '', 'Lecture', 0, 0, '', '2020-02-07', '14:44:38', NULL, NULL, '0'),
(445, 84, 7, 10, 277, 'malaikat selalu bersamaku', 2, 'malaikat selalu bersamaku', 'Discovery Learning', 'Buku PAI kelas 10', 'Demonstration', 13, 3, 'yang tidak hadir: rafli putra fedayen, zihat paturrahman, lukmanul Hakim', '2020-02-10', '08:47:47', NULL, NULL, '0'),
(446, 87, 6, 7, 173, 'Latihan TO 2', 2, 'Latihan TO 2', 'Direct Learning', 'Buku Detik-detik UNBK Mtk', 'Lecture', 21, 1, '', '2020-02-10', '08:49:22', NULL, NULL, '0'),
(447, 95, 8, 12, 216, 'KARYA ILMIAH', 2, 'KARYA ILMIAH', 'Inquiry Learning', '', 'Demonstration', 0, 0, '', '2020-02-10', '08:50:44', NULL, NULL, '0'),
(448, 96, 7, 11, 264, 'tata nama  (II)', 2, 'latihan tata nama', 'Inquiry Learning', 'ppt', 'Lecture', 19, 0, '', '2020-02-10', '09:06:56', NULL, NULL, '0'),
(449, 90, 6, 9, 198, 'latihan soal', 2, 'to 3 detik 2018 - to 2 english moodle', 'Direct Learning', '', 'Lecture', 24, 0, '', '2020-02-10', '09:11:22', NULL, NULL, '0'),
(450, 97, 7, 11, 268, 'fungsi dan komposisi', 2, 'Ulangan Harian', 'Discovery Learning', 'Paket Matematika Wajib Kelas 10', 'Lecture', 19, 0, 'siswa hadir lengkap', '2020-02-10', '09:31:00', NULL, NULL, '0'),
(451, 96, 8, 13, 207, 'Latihan pH Penyangga', 2, '', 'Inquiry Learning', '', 'Group Discussion', 27, 0, '', '2020-02-10', '09:39:46', NULL, NULL, '0'),
(452, 91, 9, 15, 238, 'Latihan UN', 2, 'transport membran sel', 'Direct Learning', '', 'Lecture', 9, 1, 'Rizky sakit', '2020-02-10', '09:40:36', NULL, NULL, '0'),
(453, 93, 7, 10, 273, 'daily test ', 2, '', 'Direct Learning', '', 'Lecture', 0, 3, '1. jihad (Sakit, operasi usus buntu)\r\n2. dayeen\r\n3. hakim\r\n\r\ntim marketing:\r\n1. naila, keyla, silva, monica, ami, ', '2020-02-10', '09:35:47', NULL, NULL, '0'),
(454, 86, 6, 8, 183, 'Sebab dan akibat cerpen', 2, 'Pembahasan soal sebab dan akibat cerpen', 'Direct Learning', '', 'Lecture', 20, 4, '', '2020-02-10', '08:54:37', NULL, NULL, '0'),
(455, 104, 9, 14, 258, 'Nilai dan Norma Sosial', 1, '', NULL, '', NULL, 6, 0, '', '2020-02-10', '10:17:15', NULL, NULL, '0'),
(456, 90, 6, 8, 187, 'latihan soal', 2, 'detikdetik 2018 to 3 moodle to 2', 'Direct Learning', '', 'Lecture', 20, 4, '', '2020-02-10', '10:56:57', NULL, NULL, '0'),
(457, 86, 6, 9, 194, 'Sebab dan Akibat dalam teks cerpen', 2, 'Pembahasan soal sebab dan akibat', 'Direct Learning', '', 'Experiment', 24, 0, '', '2020-02-10', '10:49:12', NULL, NULL, '0'),
(458, 104, 9, 14, 258, 'Norma dan Sosialisasi', 1, '', NULL, '', NULL, 6, 0, '', '2020-02-10', '11:47:45', NULL, NULL, '0'),
(459, 96, 7, 11, 264, 'latihan rumus kimia', 2, 'latihan rumus kimia', 'Direct Learning', '', 'Group Discussion', 19, 0, 'Pembelajaran jam ke-6 lambat dimulai karena anka-anak baru istirahat hampir pukul 13 lebih.', '2020-02-10', '11:47:44', NULL, NULL, '0'),
(460, 84, 8, 13, 213, 'prinsip dan praktik ekonomi islam', 2, 'prinsip dan praktik ekonomi islam', 'Discovery Learning', '', 'Demonstration', 25, 2, 'yang izin: latif dan yasir,', '2020-02-10', '11:46:21', NULL, NULL, '0'),
(461, 88, 6, 7, 174, 'pembahasan soal UN', 2, 'Gaya dan Hukum Newton&lt;br&gt;', 'Discovery Learning', 'detik-detik 2020', 'Group Discussion', 0, 20, '', '2020-02-10', '11:53:24', NULL, NULL, '0'),
(462, 95, 7, 10, 272, 'DEBAT', 2, 'PEMBERIAN MATERI', 'Inquiry Learning', '', 'Demonstration', 0, 0, '', '2020-02-10', '11:57:02', NULL, NULL, '0'),
(463, 104, 8, 12, 224, 'proses integrasi sosial dan faktornya', 1, '', NULL, '', NULL, 17, 8, 'sakit: asyfa, badali, nabila salma, rizka \r\nizin: charoline, dhafin, wida, dan ferdy', '2020-02-10', '11:56:12', NULL, NULL, '0'),
(464, 95, 7, 10, 272, 'DEBAT', 1, 'PEMBAHASAN MATERI', 'Inquiry Learning', '', 'Experiment', 13, 3, '', '2020-02-10', '13:27:47', NULL, NULL, '0'),
(465, 87, 6, 8, 184, 'Himpunan', 2, 'Himpunan', 'Direct Learning', 'Buku detik-detik ', 'Lecture', 18, 6, '', '2020-02-10', '13:17:22', NULL, NULL, '0'),
(466, 91, 6, 9, 199, 'Review Sistem Gerak', 2, 'Review Sistem Gerak&lt;br&gt;Terdiri atas:&lt;br&gt;&lt;ul&gt;&lt;li&gt;otot (alat gerak aktif)&lt;/li&gt;&lt;li&gt;tulang (alat gerak pasif)&lt;/li&gt;&lt;li&gt;sendi (hubungan antar tulang)&lt;/li&gt;&lt;/ul&gt;&lt;br&gt;Sendi&lt;br&gt;Diartrosis (sendi utk gerak tubuh)&lt;br&gt;&lt;br&gt;Tulang&lt;br&gt;Kepala, badan, dan alat gerak atas dan bawah', 'Direct Learning', 'Detik-detik IPA', 'Lecture', 24, 0, '', '2020-02-10', '13:14:48', NULL, NULL, '0'),
(467, 104, 8, 12, 224, 'kasus', 1, '', NULL, '', NULL, 19, 6, 'sakit: asyifa, badali, nabila salma, rizka\r\nizin: wida dan ferdy', '2020-02-10', '13:51:32', NULL, NULL, '0'),
(468, 84, 8, 12, 223, 'Prinsip dan praktik ekonomi islam', 2, 'Prinsip dan praktik ekonomi islam', 'Discovery Learning', 'Buku PAI kelas 11', 'Demonstration', 19, 7, 'yang sakit : Asyifa, Badali, nabila, rizka talia,\r\n\r\nyang izin :charolin,wida dan ferdi', '2020-02-10', '14:02:31', NULL, NULL, '0'),
(469, 86, 6, 7, 172, 'Sebab dan akibat dalam cerpen', 2, 'Soal sebab dan akibat dalam cerpen', 'Direct Learning', '', 'Experiment', 21, 1, '', '2020-02-10', '13:18:37', NULL, NULL, '0'),
(470, 95, 9, 15, 237, 'PEMBAHASAN SOAL UJIAN NASIONAL', 2, 'DISKUSI MENGENAI UJIAN NASIONAL BUKU DETIK-DETIK', 'Inquiry Learning', '', 'Demonstration', 9, 1, '', '2020-02-10', '14:12:14', NULL, NULL, '0'),
(471, 95, 9, 14, 249, 'PEMBAHASAN MATERI UJIAN NASIONAL', 2, 'PEMBAHASAN KISI-KISI UJIAN NASIONAL 2019', 'Inquiry Learning', '', 'Group Discussion', 6, 0, '', '2020-02-10', '14:14:21', NULL, NULL, '0'),
(472, 97, 8, 13, 212, 'limit fungsi', 2, 'limit tak hingga dalam bentuk akar', 'Discovery Learning', 'matematika wajib kelas 11', 'Group Discussion', 27, 0, 'siswa hadir lengkap', '2020-02-10', '14:08:11', NULL, NULL, '0'),
(473, 88, 6, 8, 185, 'Wujud Zat dan pH Asam Basa', 2, 'soal UN', 'Direct Learning', 'detik-detik 2020', 'Group Discussion', 17, 7, '', '2020-02-10', '14:30:49', NULL, NULL, '0'),
(474, 90, 6, 7, 176, 'latihan soal', 2, 'detik 2018 to 3', 'Direct Learning', '', 'Lecture', 22, 1, '', '2020-02-10', '14:47:50', NULL, NULL, '0'),
(475, 87, 6, 9, 195, 'latihan soal', 2, '', 'Direct Learning', '', 'Lecture', 24, 0, '', '2020-02-10', '14:33:03', NULL, NULL, '0'),
(476, 104, 7, 10, 281, 'Pendalaman materi', 2, '', NULL, '', NULL, 13, 3, 'Izin: Dayeen, Jihat dan hakim', '2020-02-10', '14:14:47', NULL, NULL, '0'),
(477, 101, 7, 11, 266, 'historical recount text', 2, 'retelling story', NULL, '', NULL, 0, 0, '', '2020-02-10', '14:13:12', NULL, NULL, '0'),
(478, 96, 7, 11, 282, 'impuls momentum', 2, '', 'Direct Learning', '', 'Group Discussion', 19, 0, '', '2020-02-11', '08:40:02', NULL, NULL, '0'),
(479, 95, 8, 13, 205, 'KARYA ILMIAH', 2, 'LATIHAN KARYA ILMIAH', 'Inquiry Learning', '', 'Demonstration', 26, 1, '', '2020-02-11', '08:41:22', NULL, NULL, '0'),
(480, 97, 9, 15, 244, 'pembahasan soal UN', 4, 'pembahasan soal UN', 'Discovery Learning', 'detik-detik UN Matematika IPA', 'Group Discussion', 8, 2, 'dheyarani sakit, M. Rizky tanpa keterangan', '2020-02-11', '08:44:31', NULL, NULL, '0'),
(481, 104, 8, 12, 220, 'peta budaya daerah dan budaya nasional', 2, '', NULL, '', NULL, 20, 5, 'Badali , wida, azwar, ferdy, asyifa', '2020-02-11', '09:20:06', NULL, NULL, '0'),
(482, 98, 7, 10, 279, 'Pasar dalam Perekonomian', 2, '1. Pasar Oligopoli&lt;br&gt;2. Peran IPTEK dalam pasar', NULL, '', NULL, 0, 0, 'JIhad (sakit) hakim (Izin)', '2020-02-11', '09:23:20', NULL, NULL, '0'),
(483, 93, 7, 11, 265, 'daily test otonomi daerah', 2, '', 'Direct Learning', '', 'Lecture', 18, 1, 'rizqon ijin', '2020-02-11', '09:41:37', NULL, NULL, '0'),
(484, 91, 6, 7, 177, 'review pencernaan', 2, 'review pencernaan', 'Direct Learning', '', 'Lecture', 20, 2, 'Siti Zulaikha\r\nDiva', '2020-02-11', '08:56:57', NULL, NULL, '0'),
(485, 87, 6, 9, 195, 'Latihan Soal', 2, 'latihan soal', 'Direct Learning', 'Buku detik-detik', 'Lecture', 20, 4, '', '2020-02-11', '08:56:35', NULL, NULL, '0'),
(486, 90, 6, 7, 176, 'discuss to 3 detikdetik moodle', 2, 'discuss', 'Direct Learning', '', 'Lecture', 21, 1, '', '2020-02-11', '10:52:07', NULL, NULL, '0'),
(487, 91, 6, 9, 199, 'Review Peredaran Darah', 2, '', 'Direct Learning', '', 'Group Discussion', 20, 4, 'Azkia dan Mellysa (tanpa keterangan)\r\nNasywa dan Natasya (Sakit)', '2020-02-11', '10:44:54', NULL, NULL, '0'),
(488, 87, 6, 8, 184, 'Latihan soal unbk', 2, 'Latihan soal unbk', 'Direct Learning', 'Buku detik-detik unbk', NULL, 24, 0, '', '2020-02-11', '10:49:37', NULL, NULL, '0'),
(489, 97, 9, 14, 256, 'pembahasan soal UN', 2, 'pembahasan soal UN', 'Discovery Learning', 'detik-detik UN Matematika IPS', 'Group Discussion', 4, 2, 'Fitria sakit, Sapta sakit', '2020-02-11', '11:47:02', NULL, NULL, '0'),
(490, 91, 9, 15, 238, 'latihan UN', 2, 'Materi review&lt;br&gt;&lt;ol&gt;&lt;li&gt;sistem pencernaan&lt;/li&gt;&lt;li&gt;sistem pernapasan&lt;/li&gt;&lt;/ol&gt;', 'Direct Learning', '', 'Lecture', 8, 2, 'Rizky Sakit\r\nDheyarani Sakit', '2020-02-11', '11:56:29', NULL, NULL, '0'),
(491, 88, 8, 13, 214, 'Termodinamika', 2, 'siklus carnot dan mesin pendingin', 'Direct Learning', '', 'Group Discussion', 26, 1, '', '2020-02-11', '13:23:37', NULL, NULL, '0'),
(492, 90, 6, 8, 187, 'lat soal', 2, 'detikdetik to 3', 'Direct Learning', '', 'Lecture', 24, 0, '', '2020-02-11', '13:25:24', NULL, NULL, '0'),
(493, 95, 9, 15, 237, 'MATERI UN', 2, 'LATIHAN SOAL', 'Inquiry Learning', 'BUKU DETIK-DETIK', 'Group Discussion', 8, 2, '', '2020-02-11', '14:10:51', NULL, NULL, '0'),
(494, 95, 9, 14, 249, 'MATERI UN', 2, 'PEMBAHASAN SOAL UN', 'Inquiry Learning', '', 'Group Discussion', 4, 2, '', '2020-02-11', '14:13:18', NULL, NULL, '0'),
(495, 93, 8, 13, 208, 'daily test kerja sama internasional', 2, '', 'Direct Learning', '', 'Lecture', 25, 1, 'aswin ijin', '2020-02-11', '14:25:44', NULL, NULL, '0'),
(496, 86, 6, 9, 194, 'Analisis cerpen', 2, 'Latihan analisis cerpen', 'Direct Learning', '', 'Lecture', 20, 4, '', '2020-02-11', '13:23:03', NULL, NULL, '0'),
(497, 87, 6, 7, 173, 'latihan soal unbk', 2, 'latihan soal unbk', 'Direct Learning', 'Buku detik-detik', 'Lecture', 21, 1, '', '2020-02-11', '13:35:06', NULL, NULL, '0'),
(498, 90, 6, 9, 198, '', 2, '', 'Direct Learning', '', 'Lecture', 20, 0, '', '2020-02-11', '14:39:49', NULL, NULL, '0'),
(499, 104, 7, 10, 281, 'UH 1', 3, 'UH 1', NULL, '', NULL, 14, 2, 'Jihad dan Hakim', '2020-02-11', '15:29:57', NULL, NULL, '0'),
(500, 86, 6, 7, 172, 'Sebab dan akibat cerpen', 2, 'Pembahasan soal sebab dan akibat dalam cerpen', 'Direct Learning', '', 'Lecture', 21, 1, 'Nafis membantu menegur ketika ada yang ribut.', '2020-02-11', '14:32:23', NULL, NULL, '0'),
(501, 91, 6, 8, 188, 'Latihan Soal (Pencernaan, Peredaran darah)', 2, '', 'Direct Learning', '', 'Lecture', 24, 0, '', '2020-02-11', '14:32:38', NULL, NULL, '0'),
(502, 103, 8, 12, 222, 'Turunan Fungsi', 2, 'Menentukan turunan fungsi aljabar menggunakan definisi turunan', 'Direct Learning', 'Buku Lks Intan Pariwara Matematika Wajib Kelas 11 Semester 2\r\nBuku Paket Erlangga Kelas 11 Semester 2\r\n', 'Lecture', 25, 21, 'Asyfa (Sakit)\r\nBadali (Izin)\r\nWida (Izin)\r\nFerdi (Izin)', '2020-02-11', '14:00:29', NULL, NULL, '0'),
(503, 84, 5, 4, 148, 'Q.S An Nahl : 114 dan Hadits terkait perilaku-perilaku mengonsumsi makanan dan minuman yang halal dan bergizi', 2, 'Q.S An Nahl : 114 dan Hadits terkait perilaku-perilaku mengonsumsi makanan dan minuman yang halal dan bergizi', 'Discovery Learning', 'Buku PAI kelas 8', 'Demonstration', 13, 9, 'yang tidak hadir: arsya, rafa, nurul,lia, syifa, chaty, mirabel, vira, dhiya', '2020-02-12', '08:39:40', NULL, NULL, '0'),
(504, 102, 4, 3, 140, 'Perbandingan', 2, 'konsep perbandingan', 'Discovery Learning', 'Intan Pariwara Matematika Kelas 7 tahun 2019/2020', 'Group Discussion', 19, 3, 'Nandira sakit\r\nAzumi Izin\r\nBagas Tanpa keterangan\r\n', '2020-02-12', '08:43:20', NULL, NULL, '0'),
(505, 98, 7, 11, 267, 'BAB II PERDAGANGAN, PENGUASA DAN PUJANGGA PADA MASA KLASIK (HINDU DAN BUDDHA)', 2, 'A. Terbentuknya jaringan nusantara melalui perdagangan&lt;br&gt;B.&amp;nbsp; Akulturasi', NULL, '', NULL, 0, 0, 'Hadir Semua', '2020-02-12', '08:46:23', NULL, NULL, '0'),
(506, 92, 5, 6, 168, 'Tenses', 2, 'Simple Present Tense', 'Direct Learning', 'ebook/internet', 'Lecture', 13, 11, 'many students  did not come today', '2020-02-12', '08:45:12', NULL, NULL, '0'),
(507, 97, 9, 14, 256, 'pembahasan soal UN', 2, '&lt;b&gt;Pembahasan soal UN&lt;/b&gt;', 'Discovery Learning', 'Detik-detik Matematika IPS', 'Group Discussion', 4, 3, 'Azmi sakit, Ibnu izin', '2020-02-12', '08:49:12', NULL, NULL, '0'),
(508, 95, 7, 10, 272, 'debat', 2, 'penjelasan mengenai materi', 'Inquiry Learning', '', 'Demonstration', 11, 5, '', '2020-02-12', '08:50:53', NULL, NULL, '0'),
(509, 85, 4, 1, 125, 'energi', 2, '', 'Direct Learning', '', 'Demonstration', 15, 4, 'caca alfa, rakha alfa, padil alfa, nina sakit', '2020-02-12', '08:50:30', NULL, NULL, '0'),
(510, 91, 9, 15, 238, 'review materi:\r\n1. sistem peredaran darah', 2, '', 'Direct Learning', 'Detik-derik\r\nBuku kelas 11 Biologi', 'Lecture', 9, 1, 'Rizky sakit', '2020-02-12', '08:53:44', NULL, NULL, '0'),
(511, 90, 6, 7, 176, 'discussion', 2, '', 'Direct Learning', '', 'Lecture', 21, 2, '', '2020-02-12', '08:52:40', NULL, NULL, '0'),
(512, 87, 6, 9, 195, 'Latihan soal', 2, 'Latihan soal', 'Direct Learning', 'Buku detik-detik', 'Lecture', 19, 5, '', '2020-02-12', '09:02:22', NULL, NULL, '0'),
(513, 104, 8, 12, 220, 'Pembentukan kebudayaan nasional Indonesia', 2, '', NULL, '', NULL, 22, 2, 'Wida dan ferdy izin', '2020-02-12', '08:50:10', NULL, NULL, '0'),
(514, 101, 8, 13, 209, 'cause and effect                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ', 1, 'the different between due to and because of', 'Direct Learning', 'youtube\r\nEnglish book by Intan pariwara', 'Lecture', 24, 3, 'Hayyuna Amelia (sick)\r\nAnnisa Razak\r\nIlviani                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ', '2020-02-12', '08:47:12', NULL, NULL, '0'),
(515, 96, 7, 11, 282, 'usaha', 2, '', NULL, '', 'Lecture', 19, 0, '', '2020-02-12', '09:40:39', NULL, NULL, '0'),
(516, 98, 8, 12, 218, 'Perpajakan', 2, '1. Objek Pajak&lt;br&gt;2. Perhitungan Pajak', NULL, '', NULL, 0, 0, '', '2020-02-12', '09:42:11', NULL, NULL, '0'),
(517, 86, 6, 8, 183, 'Mengomentari cerpen', 2, 'Siswa diberikan satu cerpen kemudian disuruh mengomentari cerpen tersebut. Unsur intrinsik, bahasa, fisik, dan ringkasan.', 'Problem Based Learning', '', 'Group Discussion', 23, 1, '', '2020-02-12', '09:09:28', NULL, NULL, '0'),
(518, 91, 8, 13, 206, '  Pernapasan dan Ekskresi', 2, '', 'Direct Learning', '', 'Lecture', 24, 3, '', '2020-02-12', '09:38:09', NULL, NULL, '0'),
(519, 84, 7, 10, 277, 'hikmah ibadah haji, zakat dan wakaf dalam kehidupan', 2, 'hikmah ibadah haji, zakat dan wakaf dalam kehidupan', 'Discovery Learning', 'Buku PAI kelas 10', 'Demonstration', 11, 5, 'yang tidak hadir izin: hakim, kayla, raja rafli dan jihat\r\n\r\nyang Alpa : nizmi', '2020-02-12', '10:17:07', NULL, NULL, '0'),
(520, 102, 4, 1, 123, 'Perbandingan', 2, 'Perbandingan', 'Discovery Learning', 'Intan Pariwara Matematika SMP kelas 7 Tahun ajaran 2019/2020', 'Group Discussion', 19, 4, 'Raka sakit\r\nYusuf tanpa keterangan\r\ncaca izin\r\nhafiz telat\r\nadit telat\r\nnina sakit\r\ntaufik telat\r\nzaidan makan', '2020-02-12', '10:32:59', NULL, NULL, '0'),
(521, 92, 5, 4, 152, 'Tenses', 2, 'Simple Present Tense', 'Direct Learning', 'ebook/internet', 'Lecture', 13, 9, 'some students didn&#039;t come today', '2020-02-12', '10:40:34', NULL, NULL, '0'),
(522, 89, 5, 5, 158, 'tekanan', 2, 'tekanan zat cair', 'Direct Learning', 'ebook', 'Lecture', 16, 7, 'tertib', '2020-02-12', '10:42:09', NULL, NULL, '0'),
(523, 94, 4, 2, 131, 'Puisi Rakyat', 2, 'Pengantar dan Mengenal Puisi Rakyat', 'Problem Based Learning', 'Internet dan buku siswa', 'Group Discussion', 18, 1, 'Berjalan dengan lancar.\r\nSiswa bernama Akhtar tidak masuk karena sakit.', '2020-02-12', '10:58:31', NULL, NULL, '13'),
(524, 86, 6, 8, 183, 'Mengomentari Cerpen', 2, 'Mengomentari cerpen yang disajikan guru. Hal yang dikomentari yaitu unsur intrinsik, bahasa, fisik, dan ringkasan.', 'Problem Based Learning', '', 'Group Discussion', 19, 5, '', '2020-02-12', '10:51:41', NULL, NULL, '0'),
(525, 97, 8, 13, 212, 'turunan fungsi', 2, 'definisi turunan fungsi dan soal', 'Discovery Learning', 'paket matematika wajib kelas 11', 'Group Discussion', 24, 3, 'Ilviani tanpa keterangan, Anisa Razak tanpa keterangan, Hayyuna Amelia sakit', '2020-02-12', '11:51:19', NULL, NULL, '0'),
(526, 96, 9, 15, 239, 'Prediksi 2 UN (4 soal)', 2, '', 'Direct Learning', '', 'Group Discussion', 8, 2, 'Rizky (s), Yoga izin ikut marketing jam ke 5', '2020-02-12', '11:52:00', NULL, NULL, '0'),
(527, 87, 6, 7, 173, 'latihan soal ', 2, 'Latihan soal', 'Inquiry Learning', 'Buku detik-detik unbk', NULL, 19, 3, '', '2020-02-12', '10:43:58', NULL, NULL, '0'),
(528, 91, 7, 11, 263, 'Invertebrata \r\nArthropoda', 2, '', 'Direct Learning', '', 'Lecture', 19, 0, '', '2020-02-12', '11:55:39', NULL, NULL, '0'),
(529, 95, 8, 12, 216, 'KARYA ILMIAH', 2, 'LATIHAN MATERI', 'Direct Learning', '', 'Experiment', 0, 0, '', '2020-02-12', '11:55:09', NULL, NULL, '0'),
(530, 92, 5, 5, 160, 'Tenses', 2, 'Simple Present Tense', 'Direct Learning', '', 'Lecture', 16, 7, '', '2020-02-12', '13:07:33', NULL, NULL, '0'),
(531, 89, 5, 6, 166, 'tekanan zat cair', 2, '', 'Direct Learning', 'ebook', 'Lecture', 12, 12, '', '2020-02-12', '13:12:55', NULL, NULL, '0'),
(532, 102, 4, 2, 133, 'perbandingan', 2, 'perbandingan', 'Discovery Learning', 'intan pariwara matematika kelas 7 tahun 2019/2020', 'Group Discussion', 19, 1, 'akhtar tanpa keterangan', '2020-02-12', '13:16:33', NULL, NULL, '0'),
(533, 95, 8, 12, 216, 'karya ilmiah', 1, 'latihan', 'Inquiry Learning', '', 'Experiment', 0, 0, '', '2020-02-12', '13:25:58', NULL, NULL, '0'),
(534, 103, 5, 4, 147, 'Teorema Phytagoras', 2, 'Pengantar Teorema Phytagoras', 'Direct Learning', 'Buku Lks Intan Pariwara Kelas 8 Semester 2\r\nBuku Ganeca Kelas 8', 'Lecture', 22, 9, 'Arsha (Sakit)\r\nChaty (Alfa)\r\nDhiya (Sakit)\r\nFira (Alfa)\r\nMirabel (Izin)\r\nRafa (Sakit)\r\nNazlia (Alfa)\r\nNurul (Sakit)\r\nSyifa (Izin)', '2020-02-12', '13:05:49', NULL, NULL, '0'),
(535, 87, 6, 8, 184, 'Latihan soal', 2, 'Latihan soal', 'Inquiry Learning', 'Buku detik-detik', 'Group Discussion', 23, 1, '', '2020-02-12', '13:18:09', NULL, NULL, '0'),
(536, 84, 5, 6, 164, 'perilaku mengonsumsi makanan dan minuman yang halal dan bergizi', 2, 'perilaku mengonsumsi makanan dan minuman yang halal dan bergizi', 'Discovery Learning', 'Buku PAI kelas 8', 'Demonstration', 12, 12, 'yang tidak hadir: mazaya, amel, ridho, yauma, rafli, niha, sania, dina, dolvina,ica, ', '2020-02-12', '14:18:41', NULL, NULL, '0'),
(537, 86, 6, 7, 172, 'Mwngomentari cerpen', 2, 'Siswa diberika satu buah cerpen yang dikerjakan berkelompok. Hal yang dianalisis yaitu unsur intrinsik cerpen, bahasa, fisik, dan ringkasan.', 'Problem Based Learning', '', 'Group Discussion', 19, 3, '', '2020-02-12', '13:13:17', NULL, NULL, '0'),
(538, 97, 7, 11, 268, 'fungsi dan komposisi', 2, '&lt;b&gt;fungsi invers&lt;/b&gt;', 'Discovery Learning', 'buku matematika wajib kelas 10', 'Group Discussion', 19, 0, 'Siswa hadir lengkap. Terlambat login karena guru sebelumnya terlambat keluar', '2020-02-12', '14:13:13', NULL, NULL, '0'),
(539, 89, 5, 4, 150, 'tekanan zat cair', 2, '', 'Direct Learning', 'ebook', 'Lecture', 13, 9, '', '2020-02-12', '14:26:34', NULL, NULL, '0'),
(540, 85, 4, 3, 139, 'energi', 2, 'energi potensial dan energi kinetik', NULL, 'ppt dan ebook', 'Demonstration', 19, 15, 'bagas sakit\r\nnandira sakit\r\nazumi ijin\r\nreyvaldi ijin\r\nbisma ijin\r\nrifqiy ijin\r\nrohid ijin', '2020-02-12', '14:31:12', NULL, NULL, '0'),
(541, 95, 4, 1, 124, 'PUISI RAKYAT', 2, 'PEMBELEJARAN MATERI', 'Inquiry Learning', 'E-BOOK', 'Demonstration', 15, 4, '', '2020-02-12', '14:51:47', NULL, NULL, '0'),
(542, 91, 6, 7, 177, 'Review sistem pencernaan', 2, '', 'Direct Learning', '', 'Lecture', 18, 3, '', '2020-02-12', '15:17:28', NULL, NULL, '0'),
(543, 88, 6, 8, 185, 'Latihan Soal Gaya, Hukum Newton', 2, 'sebagian Pesawat Sederhana', 'Discovery Learning', 'buku detik-detik', 'Lecture', 23, 1, '', '2020-02-12', '15:36:21', NULL, NULL, '0'),
(544, 103, 5, 5, 155, 'Teorema Phytagoras', 2, 'Pengantar Teorema Phytagoras', 'Direct Learning', 'Lks Intan Pariwara Kelas 8 Semester 2', 'Lecture', 23, 7, 'Rizky Syarif (Alfa)\r\nBaim (Izin)\r\nSalma (Izin)\r\nNabil (Izin)\r\nShafa (Sakit)\r\nAndini (Sakit)\r\nRifat (Sakit)', '2020-02-12', '15:45:48', NULL, NULL, '0'),
(545, 88, 9, 15, 246, 'Fisika Inti', 2, 'Teori Atom', 'Direct Learning', 'ebook, internet, ppt                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ', 'Lecture', 9, 1, '', '2020-02-13', '08:56:08', NULL, NULL, '0'),
(546, 95, 8, 13, 205, 'KARYA ILMIAH', 2, 'PEMBAHASAN MATERI DAN LATIHAN', 'Inquiry Learning', '', 'Group Discussion', 23, 4, '', '2020-02-13', '08:57:35', NULL, NULL, '0'),
(547, 85, 4, 2, 132, 'energi', 2, 'energi potensial, energi kinetik', 'Direct Learning', 'ppt, ebook', 'Demonstration', 19, 0, '', '2020-02-13', '09:05:03', NULL, NULL, '0'),
(548, 93, 8, 12, 217, 'excerise', 2, '-already done hubungan internasional-', 'Problem Based Learning', '', 'Group Discussion', 24, 1, 'wida ijin karantina tahfiz', '2020-02-13', '08:35:46', NULL, NULL, '0'),
(549, 104, 7, 10, 281, 'Menyusun Laporan Penelitian', 1, '', NULL, '', NULL, 14, 2, 'Lukman Hakim dan Jihad Faturahman sakit', '2020-02-13', '09:06:57', NULL, NULL, '0'),
(550, 104, 7, 10, 281, 'Menyusun Rancangan Penelitian', 1, '', NULL, '', NULL, 14, 2, 'Hakim izin\r\nJihad sakit', '2020-02-13', '09:20:18', NULL, NULL, '0'),
(551, 95, 7, 11, 262, 'DEBAT', 1, 'MATERI', 'Inquiry Learning', 'E-BOOK', 'Lecture', 18, 1, '', '2020-02-13', '09:45:54', NULL, NULL, '0'),
(552, 103, 8, 12, 222, 'Turunan Fungsi', 1, 'Sifat-Sifat Turunan Fungsi Aljabar:&lt;br&gt;- Sifat Konstanta&lt;br&gt;- Sifat Pangkat&lt;br&gt;- Sifat Penjumlahan dan Pengurangan', 'Direct Learning', 'Buku Lks Intan Pariwara Kelas 11 Semester 2', 'Lecture', 25, 1, 'Wida (Izin)', '2020-02-13', '09:31:35', NULL, NULL, '0'),
(553, 104, 7, 10, 280, 'Awan', 1, '', NULL, '', NULL, 14, 2, 'Jihad dan hakim', '2020-02-13', '10:15:57', NULL, NULL, '0');
INSERT INTO `journal` (`journal_id`, `teacher_id`, `class_id`, `section_id`, `subject_id`, `submain_material`, `duration`, `lesson_material`, `implementation`, `reference_source`, `teaching_method`, `student_present`, `student_absent`, `description`, `date`, `time`, `date_end`, `time_end`, `file`) VALUES
(554, 102, 4, 1, 123, 'Perbandingan Senilai', 2, 'perbandingan senilai', 'Discovery Learning', 'Intan Pariwara matematika kelas 7 tahun ajaran 2019/2020', 'Group Discussion', 19, 3, 'aisha humaira izin\r\nnisrina sakit\r\nnur annisa sakit', '2020-02-13', '10:36:10', NULL, NULL, '0'),
(555, 85, 4, 3, 139, 'energi', 2, 'lstihan 1', 'Direct Learning', '', 'Demonstration', 18, 1, 'bagas sakit', '2020-02-13', '10:38:07', NULL, NULL, '0'),
(556, 88, 6, 8, 185, 'replacing ms diah', 2, 'soal bioteknologi dan otot', 'Discovery Learning', 'internet, ebook', 'Group Discussion', 23, 1, '', '2020-02-13', '10:41:07', NULL, NULL, '0'),
(557, 95, 7, 11, 262, 'DEBAT', 2, 'MATERI DAN LATIHAN', 'Inquiry Learning', 'E-BOOK', 'Experiment', 18, 1, '', '2020-02-13', '11:06:48', NULL, NULL, '0'),
(558, 104, 7, 10, 280, 'LATIHAN SOAL', 1, '', NULL, '', NULL, 14, 2, 'HAKIM DAN JIHAT', '2020-02-13', '11:07:11', NULL, NULL, '0'),
(559, 103, 8, 12, 222, 'Turunan Fungsi', 1, 'Soal Latihan Turunan Fungsi Aljabar dengan sifat-sifatnya', 'Direct Learning', 'Buku Intan Pariwara Kelas 11 Semester 2', 'Lecture', 25, 1, 'Wida (Izin) ', '2020-02-13', '11:09:40', NULL, NULL, '0'),
(560, 86, 6, 7, 172, 'Mengomentari cerpen', 2, 'Melanjutkan mengomentari cerpen', 'Direct Learning', '', 'Group Discussion', 18, 4, '', '2020-02-13', '10:44:54', NULL, NULL, '0'),
(561, 84, 5, 5, 156, 'Hidup Sehat dengan Makanan dan\r\nMinuman yang Halal serta Bergizi', 2, 'Hidup Sehat dengan Makanan dan\r\nMinuman yang Halal serta Bergizi', 'Discovery Learning', '', 'Group Discussion', 14, 10, '', '2020-02-13', '10:26:27', NULL, NULL, '0'),
(562, 87, 6, 9, 195, 'Latihan soal operasi hitung bilangan bulat', 2, 'Latihan soal operasi hitung bilangan bulat', 'Direct Learning', 'Buku detik-detik', 'Lecture', 16, 4, '', '2020-02-13', '10:48:29', NULL, NULL, '0'),
(563, 96, 9, 15, 239, 'Soal Latihan Standar UN', 2, '6 soal', 'Direct Learning', '', 'Lecture', 9, 1, 'Yoga (s)', '2020-02-13', '11:51:19', NULL, NULL, '0'),
(564, 101, 7, 10, 274, 'type of text', 1, 'recount text BJ. Habibie', 'Direct Learning', '', 'Lecture', 14, 2, 'lukman: izin, Jihad: sakit', '2020-02-13', '11:55:24', NULL, NULL, '0'),
(565, 93, 5, 4, 153, 'kebangkitan nasional', 2, 'jembatan berfikir', 'Project Based Learning', '', 'Group Discussion', 18, 4, 'dhiya\r\nraffarel\r\nnazlia\r\nnurul jena', '2020-02-13', '11:55:27', NULL, NULL, '0'),
(566, 102, 4, 3, 140, 'Perbandingan Senilai', 2, 'Perbandingan Senilai', 'Discovery Learning', 'Intan Pariwara Matematika Kelas 7 tahun ajaran 2019/2020', 'Group Discussion', 19, 1, 'Bagas Sakit', '2020-02-13', '13:04:58', NULL, NULL, '0'),
(567, 89, 5, 4, 150, 'tekanan zat cair', 2, '', 'Direct Learning', 'ebook', 'Lecture', 18, 4, '', '2020-02-13', '13:08:29', NULL, NULL, '0'),
(568, 85, 4, 1, 125, 'energi', 2, 'latihan soal energi potensial, energi kinetik, energi mekanik', 'Direct Learning', '', 'Demonstration', 16, 3, 'caca ijin\r\nannisa  sakit\r\nnina sakit', '2020-02-13', '13:15:24', NULL, NULL, '0'),
(569, 88, 6, 7, 174, 'latihan soal UN 2020', 2, 'latihan soal UN 2020', 'Discovery Learning', 'internet, detik-detik', 'Group Discussion', 18, 4, '', '2020-02-13', '13:18:04', NULL, NULL, '0'),
(570, 101, 7, 10, 274, 'type of text', 1, 'recount text BJ Habibie', 'Direct Learning', '', 'Lecture', 14, 2, 'lukman: izin, Jihad: sakit', '2020-02-13', '13:21:09', NULL, NULL, '0'),
(571, 87, 6, 8, 184, 'Latihan soal operasi hitung bilangan bulat', 2, 'Latihan soal operasi hitung bilangan bulat', 'Direct Learning', 'Buku detik-detik', 'Lecture', 23, 1, '', '2020-02-13', '13:17:10', NULL, NULL, '0'),
(572, 98, 8, 13, 211, 'Tirani Matahari Terbit', 2, 'Dampak Kedatangan Jepang ke Indonesia', NULL, '', NULL, 0, 0, 'Prista (Izin), Yaya (sakit), Ayu (sakit), Taufik (sakit)', '2020-02-13', '13:22:07', NULL, NULL, '0'),
(573, 95, 7, 11, 262, 'Debat', 1, 'materi dan latihan', 'Inquiry Learning', 'e-book', 'Demonstration', 18, 1, '', '2020-02-13', '13:25:22', NULL, NULL, '0'),
(574, 84, 7, 11, 270, 'meneladani perjuangan dakwah rasul di madinah', 2, 'meneladani perjuangan dakwah rasul di madinah', 'Discovery Learning', '', 'Group Discussion', 21, 0, '', '2020-02-13', '14:01:13', NULL, NULL, '0'),
(575, 98, 7, 10, 279, 'Ulangan Harian', 2, 'Ulangan Harian', NULL, '', NULL, 0, 0, '', '2020-02-13', '14:22:58', NULL, NULL, '0'),
(576, 93, 5, 6, 169, 'kebangkitan nasional', 2, '', 'Project Based Learning', '', 'Group Discussion', 18, 7, '', '2020-02-13', '14:22:55', NULL, NULL, '0'),
(577, 103, 5, 5, 155, 'Teorema Phytagoras', 2, 'Teorema Phytagoras berbasis masalah', 'Direct Learning', 'Buku Lks Intan Pariwara Kelas 8 Semester 2', 'Lecture', 23, 8, 'Aziz (Sakit)\r\nKiki (Sakit)\r\nBaim (Izin)\r\nRifat (Sakit)\r\nAndini (Sakit)\r\nShafa (Sakit)\r\nSaditya (Sakit)\r\nSalma (Izin)', '2020-02-13', '13:05:57', NULL, NULL, '0'),
(578, 86, 6, 9, 194, 'Mengomentari Cerpen', 2, 'Melanjutkan tugas kemaren, mengomentari cerpen.', 'Direct Learning', '', 'Group Discussion', 20, 4, '', '2020-02-13', '13:23:02', NULL, NULL, '0'),
(579, 89, 5, 6, 166, 'tekanan zat padat', 2, '', 'Direct Learning', '', 'Lecture', 7, 7, '', '2020-02-13', '14:31:30', NULL, NULL, '0'),
(580, 88, 6, 9, 196, 'latihan soal un 2020', 2, 'asam-basa, perubahan wujud zat', 'Discovery Learning', 'buku detik-detik', 'Lecture', 21, 4, '', '2020-02-13', '14:39:21', NULL, NULL, '0'),
(581, 104, 8, 12, 224, 'Proses integrasi sosial', 1, '', NULL, '', NULL, 24, 1, 'Wida izin', '2020-02-13', '15:11:09', NULL, NULL, '0'),
(582, 104, 8, 12, 221, 'Peran tokoh nasional dan global', 2, '', NULL, '', NULL, 24, 1, 'Wida izin', '2020-02-13', '15:12:48', NULL, NULL, '0'),
(583, 101, 9, 14, 252, 'Buku detik-detik UN', 2, 'TRYOUT 4', 'Inquiry Learning', '', 'Group Discussion', 2, 2, 'Yoga\r\n', '2020-02-13', '14:04:53', NULL, NULL, '0'),
(584, 86, 6, 8, 183, 'Mengomentari Cerpen', 2, 'Mengomentari cerpen, melanjutkan tugas kemaren.', 'Direct Learning', '', 'Group Discussion', 23, 1, '', '2020-02-13', '14:40:34', NULL, NULL, '0'),
(585, 87, 6, 7, 173, 'Latihan soal', 2, 'Latihan soal', 'Direct Learning', 'Buku detik-detik', 'Lecture', 18, 4, '', '2020-02-13', '14:37:44', NULL, NULL, '0'),
(586, 102, 4, 2, 133, 'Perbandingan Senilai', 2, 'Perbandingan Senilai', 'Discovery Learning', 'Intan Pariwara Matemtika Kelas 7 tahun ajaran 2019/2020', 'Group Discussion', 19, 1, 'alif sakit', '2020-02-14', '08:44:33', NULL, NULL, '0'),
(587, 89, 5, 5, 158, 'tekanan zat padat', 1, '', 'Direct Learning', 'ebook', 'Lecture', 19, 4, '', '2020-02-14', '08:46:37', NULL, NULL, '0'),
(588, 87, 6, 7, 173, 'LATIHAN SOAL ', 2, 'LATIHAN SOAL', 'Direct Learning', 'BUKU DETIK-DETIK', 'Lecture', 16, 6, '', '2020-02-14', '08:48:46', NULL, NULL, '0'),
(589, 90, 6, 8, 187, ':)', 1, '', 'Direct Learning', '', 'Lecture', 21, 3, '', '2020-02-14', '08:57:57', NULL, NULL, '0'),
(590, 103, 5, 4, 147, 'Teorema Phytagoras', 1, 'Teorema Phytagoras berbasis masalah', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 22, 3, 'Nurul (Sakit)\r\nNazlia (Sakit)\r\nAric (Sakit)', '2020-02-14', '08:46:35', NULL, NULL, '0'),
(591, 94, 5, 6, 170, 'Teks Ulasan', 1, 'Pengertian dan tujuan teks ulasan', 'Problem Based Learning', 'Buku', 'Lecture', 9, 15, 'Lancar', '2020-02-14', '08:46:17', NULL, NULL, '0'),
(592, 92, 5, 6, 168, 'Tenses', 2, 'Simple Present Tense Review and Exercise', 'Direct Learning', '', 'Lecture', 16, 8, 'some students are sick and absent', '2020-02-14', '09:22:39', NULL, NULL, '0'),
(593, 86, 6, 9, 194, 'Cerpen', 1, 'Pembahasan cerpen', 'Direct Learning', '', 'Demonstration', 17, 7, '', '2020-02-14', '09:03:46', NULL, NULL, '0'),
(594, 97, 9, 15, 244, 'pembahasan soal UN', 2, 'pembahasan soal UN', 'Discovery Learning', 'detik-detik UN Matematika IPA', 'Group Discussion', 9, 1, 'Rosanda Okta K tanpa keterangan', '2020-02-14', '09:13:51', NULL, NULL, '0'),
(595, 96, 8, 13, 207, 'Latihan asbs-garam', 1, '', 'Discovery Learning', '', 'Lecture', 26, 1, 'Taufik (s)', '2020-02-14', '09:33:43', NULL, NULL, '0'),
(596, 87, 6, 9, 195, '', 2, '', 'Direct Learning', '', 'Lecture', 17, 7, '', '2020-02-14', '09:31:52', NULL, NULL, '0'),
(597, 85, 4, 2, 132, 'energi', 1, 'latihan', NULL, 'drill', 'Demonstration', 18, 0, '', '2020-02-14', '10:04:37', NULL, NULL, '0'),
(598, 101, 7, 10, 274, 'historical recount', 1, 'reading text', NULL, '', NULL, 12, 4, '', '2020-02-14', '09:24:54', NULL, NULL, '0'),
(599, 94, 5, 4, 154, 'Teks Ulasan', 2, 'Pengertian, tujuan, dan struktur teks ulasan.', 'Problem Based Learning', 'Buku', 'Lecture', 20, 3, 'Semua berjalan lancar.', '2020-02-14', '09:24:53', NULL, NULL, '19'),
(600, 93, 4, 3, 146, 'KEBERAGAMAN', 2, '', 'Direct Learning', '', 'Lecture', 18, 1, '', '2020-02-14', '10:15:15', NULL, NULL, '0'),
(601, 103, 5, 5, 155, 'Teorema Phytagoras', 2, 'Soal-Soal Latihan Teorema Phytagoras', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 23, 3, 'Salma (Izin)\r\nAndini (Sakit)\r\nFudayl (Izin)', '2020-02-14', '10:13:11', NULL, NULL, '0'),
(602, 102, 7, 10, 276, 'Trigonometri Sudut berelasi', 2, 'Trigonometri Sudut berelasi', 'Discovery Learning', '', NULL, 16, 7, 'Akbar Izin\r\nDayen Sakit\r\nJihat Sakit\r\nHakim Izin\r\nSilva Tanpa keterangan\r\nKayla Izin marketing\r\nRaja Izin Marketing', '2020-02-14', '10:32:45', NULL, NULL, '0'),
(603, 88, 6, 7, 174, 'soal Tata Surya', 2, 'Soal UN Detik-Detik 2020', 'Discovery Learning', 'buku detik-detik', 'Group Discussion', 16, 6, '', '2020-02-14', '10:52:29', NULL, NULL, '0'),
(604, 101, 8, 13, 209, 'cause and effect', 1, 'complete the chart based on the dialog in activity 8', 'Inquiry Learning', '', 'Lecture', 26, 1, 'Taufik M Riady (sakit)', '2020-02-14', '10:32:37', NULL, NULL, '0'),
(605, 95, 9, 15, 237, 'LATIHAN SOAL UN', 1, 'LATIHAN DAN PEMBAHASAN SOAL UN', NULL, 'BUKU DETIK-DETIK UN', 'Experiment', 10, 0, '', '2020-02-14', '11:32:02', NULL, NULL, '0'),
(606, 95, 9, 14, 249, 'LATIHAN SOAL UN', 1, 'LATIHAN DAN PEMBAHASAN SOAL UN', 'Inquiry Learning', 'BUKU DETIK DETIK UN', NULL, 6, 0, '', '2020-02-14', '11:33:21', NULL, NULL, '0'),
(607, 103, 5, 6, 163, 'Teorema Phytagoras', 2, 'Pengantar Teorema Phytagoras', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 24, 8, 'Amel (Sakit)\r\nRido (Sakit)\r\nAulia (Alfa)\r\nIndriana (Sakit)\r\nMazaya (Alfa)\r\nNiha (Alfa)\r\nNabila (Sakit)\r\nSania (Sakit)', '2020-02-14', '10:50:27', NULL, NULL, '0'),
(608, 88, 6, 8, 185, 'Cerpen', 2, 'Pembahasan cerpen', 'Direct Learning', '', 'Group Discussion', 21, 3, '', '2020-02-14', '10:58:36', NULL, NULL, '0'),
(609, 93, 4, 2, 138, 'keberagaman', 2, '', 'Direct Learning', '', 'Lecture', 17, 1, '', '2020-02-14', '11:47:03', NULL, NULL, '0'),
(610, 84, 6, 7, 171, 'Menelusuri Tradisi Islam di nusantara', 2, 'Menelusuri Tradisi Islam di nusantara', 'Discovery Learning', 'Buku PAI kelas 9', 'Experiment', 17, 6, 'yang tidak hadir: Daiva, Hafiz nazwa nugraha, marsa, naura,  zahro dan siti zulaikha ', '2020-02-14', '13:30:11', NULL, NULL, '0'),
(611, 96, 8, 13, 207, 'Latihan asam basa-garam', 2, '', NULL, '', NULL, 26, 1, 'Taufik (s)', '2020-02-14', '14:10:21', NULL, NULL, '0'),
(612, 95, 9, 14, 249, 'Latihan UN', 1, 'Latihan dan pembahasan UN', 'Inquiry Learning', 'buku detik-detik', 'Experiment', 6, 0, '', '2020-02-14', '14:11:41', NULL, NULL, '0'),
(613, 95, 9, 15, 237, 'UN', 1, 'Pembahasan Soal', 'Inquiry Learning', 'Buku detik-detik', 'Experiment', 10, 0, '', '2020-02-14', '14:14:06', NULL, NULL, '0'),
(614, 93, 6, 8, 190, '', 0, '', NULL, '', NULL, 21, 3, '', '2020-02-14', '13:43:57', NULL, NULL, '0'),
(615, 93, 9, 14, 250, '', 0, '', NULL, '', NULL, 6, 0, '', '2020-02-14', '14:42:42', NULL, NULL, '0'),
(616, 88, 6, 9, 196, 'soal UN tata surya', 2, 'latihan soal dan video', 'Direct Learning', 'internet, buku detik-detik 2020', 'Group Discussion', 16, 8, '', '2020-02-14', '14:44:03', NULL, NULL, '0'),
(617, 86, 6, 7, 172, 'Cerpen', 2, 'Pembahasan cerpen', 'Direct Learning', '', 'Demonstration', 16, 6, '', '2020-02-14', '14:41:25', NULL, NULL, '0'),
(618, 93, 9, 15, 240, 'kisi-kisi usbn', 0, '', 'Problem Based Learning', '', 'Group Discussion', 9, 1, '', '2020-02-14', '15:40:15', NULL, NULL, '0'),
(619, 87, 6, 8, 184, '', 2, '', 'Direct Learning', '', 'Lecture', 21, 3, '', '2020-02-14', '15:47:44', NULL, NULL, '0'),
(620, 96, 7, 11, 264, 'Latihan Persamaan Reaksi', 2, '', 'Direct Learning', 'buku latihan', 'Group Discussion', 19, 0, '', '2020-02-17', '08:43:21', NULL, NULL, '0'),
(621, 85, 4, 3, 139, 'sistem organisasi kehidupan', 2, 'sel', 'Discovery Learning', 'pdf, ebook, video', 'Demonstration', 18, 1, 'fasya sakit', '2020-02-17', '08:46:08', NULL, NULL, '0'),
(622, 89, 5, 4, 150, 'tekanan', 2, '', 'Direct Learning', 'ebook', 'Lecture', 23, 0, '', '2020-02-17', '08:48:29', NULL, NULL, '0'),
(623, 102, 4, 1, 123, 'Skala, Jarak pada peta, dan jarak sebenarnya', 2, 'Skala, Jarak pada peta, dan jarak sebenarnya', 'Problem Based Learning', 'Intan Pariwara Matematika kelas 7 tahun 2019/2020', 'Group Discussion', 19, 0, '-', '2020-02-17', '08:49:15', NULL, NULL, '0'),
(624, 101, 7, 10, 274, 'type of text', 2, 'recount text (jigsaw reading) R.A. Kartini', 'Direct Learning', '', 'Lecture', 14, 2, 'lukman:izin, Dhiya: sakit', '2020-02-17', '08:57:46', NULL, NULL, '0'),
(625, 96, 8, 13, 207, 'latihan uts (buffer)', 2, 'latihan uts (buffer)', 'Discovery Learning', '', 'Group Discussion', 26, 1, 'Anisa (s)', '2020-02-17', '09:33:48', NULL, NULL, '0'),
(626, 93, 7, 10, 273, 'susulan otda + integrasi nasional', 2, '', 'Direct Learning', '', 'Lecture', 14, 2, 'dhiya sakit\r\nhakim ijin', '2020-02-17', '09:44:01', NULL, NULL, '0'),
(627, 101, 8, 12, 219, 'cause and effect', 1, 'exercise based on the dialogue', 'Direct Learning', '', 'Lecture', 23, 3, 'there are three students who didn&#039;t come ', '2020-02-17', '09:50:54', NULL, NULL, '0'),
(628, 94, 5, 5, 162, 'Teks Ulasan', 2, 'Identifikasi teks ulasan&amp;nbsp;', 'Direct Learning', 'Buku', 'Lecture', 23, 1, 'Semua berjalan lancar.', '2020-02-17', '08:47:44', NULL, NULL, '0'),
(629, 103, 5, 6, 163, 'Teorema Phytagoras', 2, 'Teorema Phytagoras Pada Soal Berbasis Masalah', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 24, 2, 'Dhelvina (Tanpa Keterangan)\r\nMazaya (Tanpa Keterangan)', '2020-02-17', '08:42:27', NULL, NULL, '0'),
(630, 102, 4, 3, 140, 'Skala, Jarak pada peta, dan jarak sebenarnya', 2, 'Skala, Jarak pada peta, dan jarak sebenarnya', 'Problem Based Learning', 'Intan Pariwara matematika kelas 7 tahun 2019/2020', 'Group Discussion', 19, 1, 'Fasya Sakit', '2020-02-17', '10:36:59', NULL, NULL, '0'),
(631, 89, 5, 5, 158, 'hukum pascal', 2, '', 'Direct Learning', 'ebook', 'Lecture', 22, 1, '', '2020-02-17', '10:38:33', NULL, NULL, '0'),
(632, 95, 4, 1, 124, 'puisi rakyat', 2, 'penjelasan materi', 'Inquiry Learning', 'e-book', 'Group Discussion', 19, 0, '', '2020-02-17', '10:41:59', NULL, NULL, '0'),
(633, 85, 4, 2, 132, 'energi', 2, 'latihan', NULL, 'drill', 'Demonstration', 18, 1, 'rossana tanpa keterangan', '2020-02-17', '10:45:00', NULL, NULL, '0'),
(634, 101, 8, 12, 219, 'cause and effect', 1, 'exercise based on the dialog (cause and effect)', 'Direct Learning', '', 'Lecture', 24, 2, 'two students didn&#039;t come today.', '2020-02-17', '11:05:33', NULL, NULL, '0'),
(635, 84, 8, 13, 213, 'bangun dan bangkitlah wahai pejuang islam', 2, 'bangun dan bangkitlah wahai pejuang islam', 'Discovery Learning', 'Buku PAI kelas 11', 'Group Discussion', 27, 0, '', '2020-02-17', '11:47:41', NULL, NULL, '0'),
(636, 94, 5, 6, 170, 'Teks Ulasan', 2, 'Teks Ulasan', 'Problem Based Learning', 'Buku', 'Demonstration', 22, 2, '1. Kelas masih sulit diatur\r\n2. Dua orang tidak hadir tanpa keterangan\r\n3. Selebihnya berjalan lancar', '2020-02-17', '10:37:21', NULL, NULL, '0'),
(637, 103, 5, 4, 147, 'Teorema Phytagoras', 2, 'Soal-Soal Latihan Teorema Phytagoras', 'Direct Learning', 'Buku Lks Intan Pariwara Kelas 8 Semester 2', 'Lecture', 22, 1, 'Fadhil (Izin Keluar Kota)', '2020-02-17', '10:37:24', NULL, NULL, '0'),
(638, 96, 7, 11, 264, 'Latihan persamaan reaksi (II)', 2, '', 'Direct Learning', '', 'Group Discussion', 19, 0, '', '2020-02-17', '11:55:10', NULL, NULL, '0'),
(639, 96, 7, 11, 264, 'Latihan persamaan reaksi (II)', 2, '', 'Direct Learning', '', 'Group Discussion', 19, 0, '', '2020-02-17', '11:55:10', NULL, NULL, '0'),
(640, 104, 8, 12, 224, 'Faktor-faktor pendorong integrasi sosial', 1, '', 'Direct Learning', '', NULL, 23, 2, 'Badali dan Nabila Salma sakit', '2020-02-17', '12:13:22', NULL, NULL, '0'),
(641, 102, 4, 2, 133, 'Skala, jarak Pada peta dan jarak sebenarnya', 2, 'Skala, jarak Pada peta dan jarak sebenarnya', 'Problem Based Learning', 'Intan Pariwara Matematika kelas 7 tahun 2019/2020', 'Group Discussion', 19, 1, 'Rosana Sakit', '2020-02-17', '13:06:39', NULL, NULL, '0'),
(642, 89, 5, 6, 166, 'hukum archimedes', 2, '', 'Discovery Learning', '', 'Demonstration', 22, 2, '', '2020-02-17', '13:15:48', NULL, NULL, '0'),
(643, 92, 5, 4, 152, 'Tenses', 2, 'Simple Present Tense Review and Exercise', 'Direct Learning', '', 'Lecture', 21, 1, 'Fadhil: izin ', '2020-02-17', '13:18:47', NULL, NULL, '0'),
(644, 85, 4, 1, 125, 'sistem organisasi kehidupan', 4, 'sel', 'Problem Based Learning', 'ebook, ppt video', 'Demonstration', 19, 0, '', '2020-02-17', '13:15:55', NULL, NULL, '0'),
(645, 95, 7, 10, 272, 'DEBAT', 2, 'DEBAT', 'Inquiry Learning', 'E-BOOK', 'Experiment', 14, 2, '', '2020-02-17', '13:33:10', NULL, NULL, '0'),
(646, 104, 8, 12, 224, 'Pengertian reintegrasi sosial', 1, '', NULL, '', NULL, 22, 2, 'Badali dan Nabila Salma sakit', '2020-02-17', '14:01:51', NULL, NULL, '0'),
(647, 84, 8, 12, 223, 'bangun dan bangkitlah wahai pejuang islam', 2, 'bangun dan bangkitlah wahai pejuang islam', 'Discovery Learning', '', 'Demonstration', 26, 0, '', '2020-02-17', '14:03:53', NULL, NULL, '0'),
(648, 97, 8, 13, 212, 'turunan fungsi', 2, 'turunan fungsi', 'Discovery Learning', 'matematika wajib kelas 11 ', 'Group Discussion', 26, 1, 'Hayyuna Amelia', '2020-02-17', '14:05:27', NULL, NULL, '0'),
(649, 94, 5, 5, 162, 'Teks Ulasan', 2, '1. Menjelaskan kembali teks ulasan (kelebihan dan kekurangan teks ulasan)&lt;br&gt;2. Mengidentifikasi struktur teks ulasan', 'Problem Based Learning', 'Buku', 'Lecture', 22, 1, 'Berjalan lancar.', '2020-02-17', '13:11:01', NULL, NULL, '0'),
(650, 92, 5, 5, 160, 'Tenses', 2, 'Simple Present Tense Review and Exercise', 'Direct Learning', 'ebook and internet', 'Lecture', 22, 1, 'Fudayl: izin', '2020-02-17', '14:29:28', NULL, NULL, '0'),
(651, 103, 5, 6, 163, 'Teorema Phytagoras', 2, 'Soal-Soal Latihan Teorema Phytagoras', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 24, 2, 'Dhelvina (Tanpa Keterangan)\r\nMazaya (Tanpa Keterangan)', '2020-02-17', '14:25:39', NULL, NULL, '0'),
(652, 94, 5, 4, 154, 'Teks Ulasan', 2, 'Mengidentifikasi struktur teks ulasan', 'Direct Learning', 'Buku', 'Lecture', 21, 1, '1. Fadhil izin\r\n2. Berjalan lancar', '2020-02-17', '14:27:35', NULL, NULL, '19'),
(653, 84, 4, 1, 126, 'shalat jum&#039;at dan ketentuannya', 2, 'shalat jum&#039;at dan ketentuannya', 'Discovery Learning', 'Buku PAI kelas 7', 'Demonstration', 19, 0, '', '2020-02-18', '08:41:13', NULL, NULL, '0'),
(654, 89, 5, 5, 158, 'tekanan pada gas', 2, '', 'Discovery Learning', 'ebook', 'Group Discussion', 22, 1, '', '2020-02-18', '08:43:31', NULL, NULL, '0'),
(655, 102, 4, 2, 133, 'Perbandingan Berbalik Nilai', 2, 'Perbandingan Berbalik Nilai', 'Problem Based Learning', 'Intan Pariwara Matematika Kelas 7 Tahun Pelajaran 2019/2020', 'Group Discussion', 19, 1, 'Maurel Sakt', '2020-02-18', '08:44:43', NULL, NULL, '0'),
(656, 92, 5, 6, 168, 'tenses', 2, 'Nominal Sentence (Simple Present Tense)&lt;br&gt;Listening exercise', 'Direct Learning', 'ebook and internet', 'Lecture', 23, 1, 'amel: izin', '2020-02-18', '08:44:33', NULL, NULL, '0'),
(657, 90, 6, 8, 187, 'pretest day 2', 1, '', NULL, '', NULL, 0, 0, 'banyak cowok yg telat masuk kedalam kelas', '2020-02-18', '08:48:22', NULL, NULL, '0'),
(658, 95, 8, 13, 205, 'KARYA ILMIAH', 1, 'latihan soal', 'Inquiry Learning', 'BUKU BANK SOAL', 'Experiment', 25, 2, '', '2020-02-18', '08:55:19', NULL, NULL, '0'),
(659, 104, 8, 12, 220, 'Latihan soal', 2, '', NULL, '', NULL, 0, 0, 'Rizka izin\r\nalfi izin latihan untuk olimpiade\r\nbadali, ferdy dan nabila salma sakit', '2020-02-18', '09:04:00', NULL, NULL, '0'),
(660, 103, 5, 4, 147, 'Teorema Phytagoras', 2, 'Menentukan Jenis-Jenis Segitiga menggunakan Teorema Phytagoras dan Tripel Phytagoras', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 22, 5, 'Fadhil (Izin)\r\nBintang (Sakit)\r\nAric (Tanpa Keterangan)\r\nMirabel (Izin)\r\nNawal (Izin)', '2020-02-18', '10:03:28', NULL, NULL, '0'),
(661, 93, 7, 11, 265, 'integrasi nasional', 2, '', 'Problem Based Learning', '', 'Group Discussion', 16, 3, 'arida\r\ndiva\r\nrafii', '2020-02-18', '09:34:56', NULL, NULL, '0'),
(662, 98, 7, 10, 279, 'Bank sentral dan bank lainnya', 2, '1. Pengertian Bank sentral&lt;br&gt;2. Sejarah bank sentral&lt;br&gt;3. Peran Bank sentral', NULL, '', NULL, 0, 0, 'Monica (sakit) Silva (alfa)', '2020-02-18', '10:16:34', NULL, NULL, '0'),
(663, 84, 4, 2, 135, 'shalat jum&#039;at dan ketentuannnya', 2, 'shalat jum&#039;at dan ketentuannnya', 'Discovery Learning', 'buku PAI kelas 7', NULL, 19, 0, '', '2020-02-18', '10:31:55', NULL, NULL, '0'),
(664, 92, 5, 4, 152, 'Tenses', 2, 'simple present Tense&amp;nbsp;', 'Direct Learning', '', 'Lecture', 19, 3, 'nawal: izin, fadhil: izin, mirabel: izin, binang: sakit, aric: absen', '2020-02-18', '10:37:14', NULL, NULL, '0'),
(665, 102, 4, 3, 140, 'Perbandingan Berballik Nilai', 2, 'Perbandingan Berballik Nilai', 'Problem Based Learning', 'Intan pariwara matematika kelas 7 tahun ajaran 2019/2020', 'Group Discussion', 19, 1, 'Rohid terlambat masuk kelas\r\nReyvaldy terlambut masuk kelas\r\nWulan terlambat masuk kelas\r\nnandira\r\nbagas sakit', '2020-02-18', '10:37:54', NULL, NULL, '0'),
(666, 95, 4, 1, 124, 'puisi lama', 2, 'latihan menganalisis puisi, pantun, gurinam, dan syair', 'Inquiry Learning', '', 'Experiment', 19, 0, '', '2020-02-18', '10:50:06', NULL, NULL, '0'),
(667, 94, 5, 6, 170, 'Teks ulasan', 2, 'Latihan menyimpulkan teks ulasan&amp;nbsp;', 'Problem Based Learning', 'Buku', 'Group Discussion', 24, 0, '1. Sempat terkendala listrik mati\r\n2. Susah ditegur saat keluar kelas\r\n3. Berjalan lancar', '2020-02-18', '11:53:04', NULL, NULL, '0'),
(668, 103, 5, 5, 155, 'Teorema Phytagoras', 2, 'Menentukan jenis-jenis segitiga dan tripel phytagoras', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 21, 2, 'Kiki (Sakit)\r\nFudayl (Izin)', '2020-02-18', '11:56:26', NULL, NULL, '0'),
(669, 104, 7, 10, 280, 'Faktor pembentuk cuaca dan iklim', 1, '', NULL, '', NULL, 12, 4, 'Hakim, silva,monic izin\r\nraja', '2020-02-18', '12:21:06', NULL, NULL, '0'),
(670, 84, 4, 3, 143, 'shalat jum&#039;at dan ketentuannya', 2, 'shalat jum&#039;at dan ketentuannya', 'Discovery Learning', 'Buku PAI kelas 7', 'Demonstration', 18, 1, 'bagas zikri sakit', '2020-02-18', '13:01:01', NULL, NULL, '0'),
(671, 89, 5, 4, 150, 'hukum pascal', 2, '', 'Direct Learning', '', 'Lecture', 17, 5, '', '2020-02-18', '13:13:22', NULL, NULL, '0'),
(672, 102, 4, 1, 123, 'perbandingan berbalik nilai ', 2, 'perbandingan berbalik nilai&amp;nbsp;', 'Problem Based Learning', 'matematika kelas 7', 'Group Discussion', 19, 0, '', '2020-02-18', '13:13:55', NULL, NULL, '0'),
(673, 104, 7, 10, 280, 'cuaca dan faktor yang mempengaruhi iklim', 1, 'cuaca dan faktor yang mempengaruhi iklim', NULL, '', NULL, 12, 4, 'Silva, monic, dan hakim izin\r\ndayeen dan ihsan ikut belajar ekonomi. ihsan kembali, dayeen kembali 4 menit sebelum pembelajaran berakhir. ihsan dan dayeen tidak ada izin dengan guru yang  mengajar sebelum ikut belajar ekonomi', '2020-02-18', '13:53:06', NULL, NULL, '0'),
(674, 102, 7, 10, 276, 'Trigonometri', 2, 'Trigonometri', 'Problem Based Learning', 'Intan pariwara Matematika kelas X', 'Group Discussion', 16, 3, 'raja izin\r\nmonica Sakit\r\nSilva Izin\r\nHakim izin\r\nakbar izin', '2020-02-18', '14:12:11', NULL, NULL, '0'),
(675, 103, 5, 6, 163, 'Teorema Phytagoras', 2, 'Menentukan jenis segitiga dan tripel phytagoras', 'Direct Learning', 'Buku Intan Pariwara Kelas 8 Semester 2', 'Lecture', 24, 0, 'Lengkap dan berjalan dengan lancar', '2020-02-18', '13:13:32', NULL, NULL, '0'),
(676, 94, 5, 5, 162, 'Teks ulasan', 2, 'Latihan menyimpulkan teks ulasan', 'Problem Based Learning', 'Buku', NULL, 21, 2, 'Beberapa siswa terlambat dan diberi poin.\r\nSelebihnya berjalan lancar.', '2020-02-18', '13:15:32', NULL, NULL, '0'),
(677, 89, 5, 6, 166, 'hukum pascal', 2, '', 'Direct Learning', '', 'Lecture', 24, 0, '', '2020-02-18', '14:27:18', NULL, NULL, '0'),
(678, 85, 4, 2, 132, 'sistem organisasi kehidupan', 2, 'sel, sel prokariotik dan sel eukariotik', 'Discovery Learning', '', 'Demonstration', 18, 1, 'maurel sakit', '2020-02-18', '14:26:42', NULL, NULL, '0'),
(679, 92, 5, 5, 160, 'tenses', 2, 'asking about someone&#039;s daily activity (Simple Present)', 'Direct Learning', 'ebook and internet', 'Lecture', 21, 2, 'kiki: sakit, fudayl: izin', '2020-02-18', '14:28:06', NULL, NULL, '0'),
(680, 94, 5, 4, 154, 'Teks ulasan', 2, 'Latihan menyimpulkan teks ulasan', 'Problem Based Learning', 'Buku', 'Group Discussion', 19, 4, 'Ada dua siswa bernama Nurul dan Lia izin keluar untuk bertanding basket 30 menit sebelum pembelajaran  berakhir. Selebihnya berjalan normal.', '2020-02-18', '14:28:30', NULL, NULL, '0'),
(681, 103, 8, 12, 222, 'Turunan Fungsi', 2, 'Turunan Hasil Kali Fungsi&lt;br&gt;Turunan Hasil Bagi Fungsi', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 11 Semester 2', 'Lecture', 22, 3, 'Badali (Sakit)\r\nNabila (Sakit)\r\nRizka (Izin)                       ', '2020-02-18', '14:30:58', NULL, NULL, '0'),
(682, 90, 6, 8, 187, 'tugas terstruktur 2', 2, '', NULL, '', NULL, 0, 0, '', '2020-02-18', '14:07:35', NULL, NULL, '0'),
(683, 102, 4, 3, 140, 'Daily Test Math Perbandingan', 2, 'Daily Test Math Perbandingan', 'Problem Based Learning', 'Intan Pariwara matematika kelas 7', 'Lecture', 19, 1, 'Bagas tanpa keterangan', '2020-02-19', '08:42:35', NULL, NULL, '0'),
(684, 98, 7, 11, 267, 'Indonesia Kedatangan Hindu Buddha', 2, 'Indonesia Kedatangan Hindu Buddha', NULL, '', NULL, 0, 0, 'Rafly (S)', '2020-02-19', '08:53:07', NULL, NULL, '0'),
(685, 92, 5, 6, 168, 'Tenses', 1, 'asking about someone&#039;s daily activity', 'Direct Learning', 'ebook and internet', 'Lecture', 24, 0, 'niha :izin datang terlambat', '2020-02-19', '08:51:37', NULL, NULL, '0'),
(686, 85, 4, 1, 125, 'sistem organisasi kehidupan', 2, 'sel prokariotik dan eukariotik', 'Project Based Learning', '', 'Demonstration', 19, 0, 'siswa hadir', '2020-02-19', '08:55:33', NULL, NULL, '0'),
(687, 90, 6, 9, 198, 'pretest', 1, '', NULL, '', NULL, 0, 0, '', '2020-02-19', '08:57:35', NULL, NULL, '0'),
(688, 84, 5, 4, 148, 'menghindari minuman keras, judi dan pertengkaran', 2, 'menghindari minuman keras, judi dan pertengkaran', 'Discovery Learning', 'Buku PAI kelas 8', 'Demonstration', 20, 2, 'yang tidak hadir; fadhil (izin), dan ahamad (alfa)', '2020-02-19', '08:50:37', NULL, NULL, '0'),
(689, 104, 8, 12, 220, 'Saluran globalisasi dan pengaruh globalisasi', 2, '', NULL, '', NULL, 22, 3, 'Ferdy, Badali, Nabila Salma sakit', '2020-02-19', '09:29:17', NULL, NULL, '0'),
(690, 98, 8, 12, 218, 'Perpajakan', 2, 'Perpajakan', NULL, '', NULL, 0, 0, 'Bibil (Sakit) Badali (Sakit)  Ferdy (Sakit)', '2020-02-19', '09:30:02', NULL, NULL, '0'),
(691, 91, 8, 13, 206, 'ekskresi', 2, '', 'Direct Learning', '', 'Lecture', 26, 1, 'annisa (S)', '2020-02-19', '09:42:56', NULL, NULL, '0'),
(692, 101, 7, 10, 274, 'historical recount', 2, 'Retelling story about one of the topics that student gets based on the lottery.&lt;br&gt;The story such as :&lt;br&gt;1. Bandung as Sea of Fire&lt;br&gt;2. General Offensive 1 March&lt;br&gt;3. The Battle of Ambarawa', 'Project Based Learning', 'internet', 'Demonstration', 11, 4, 'Akbaruddin Wijaya (izin)\r\nLukman Nul Hakim (izin)\r\nNijmiyatillail\r\nMonica Sabrina', '2020-02-19', '09:42:52', NULL, NULL, '0'),
(693, 102, 4, 1, 123, 'Daily test Bab 1', 2, 'Daily test Bab 1', 'Discovery Learning', 'Intan Pariwara Matematika kelas 7', 'Group Discussion', 19, 0, '', '2020-02-19', '10:31:25', NULL, NULL, '0'),
(694, 89, 5, 5, 158, 'latihan', 1, '', 'Direct Learning', 'ebook', 'Lecture', 21, 2, '', '2020-02-19', '10:36:19', NULL, NULL, '0'),
(695, 92, 5, 4, 152, 'Tenses', 2, 'simple present daily activity', 'Direct Learning', 'ebook and internet', 'Lecture', 20, 2, 'ahmad rayhan: sakit, fadhil: izin', '2020-02-19', '10:34:51', NULL, NULL, '0'),
(696, 96, 7, 11, 264, 'UH 1 ', 2, '', NULL, '', 'Group Discussion', 18, 18, 'Rafly (s)', '2020-02-19', '11:08:03', NULL, NULL, '0'),
(697, 84, 7, 10, 277, 'meneladani perjuangan dakwah rasulullah SAW di Madinah', 2, 'meneladani perjuangan dakwah rasulullah SAW di Madinah', NULL, 'Buku PAI kelas 10', 'Lecture', 11, 5, 'yang tidak hadir: jihat, akbar, hakim, monica dan ami', '2020-02-19', '11:42:25', NULL, NULL, '0'),
(698, 94, 4, 2, 131, 'Puisi Rakyat', 2, 'Soal dan pembahasan menyimpulkan isi puisi rakyat', 'Problem Based Learning', 'Buku', 'Group Discussion', 19, 0, 'Semua berjalan lancar.', '2020-02-19', '10:42:09', NULL, NULL, '0'),
(699, 97, 8, 13, 212, 'turunan fungsi', 2, 'turunan fungsi', 'Discovery Learning', 'buku matematika wajib kelas 11', 'Group Discussion', 26, 1, 'Anisa Razak sakit. (terlambat login karena guru sebelumnya terlambat keluar kelas)', '2020-02-19', '11:52:57', NULL, NULL, '0'),
(700, 94, 4, 2, 131, 'Puisi rakyat', 4, 'Mengidentifikasi puisi rakyat:&lt;br&gt;1. Jenis&lt;br&gt;2. Kata Berirama&lt;br&gt;3. Ciri-ciri&lt;br&gt;Diskusi kelompok untuk memahami puisi rakyat', 'Problem Based Learning', 'Buku dan internet', 'Group Discussion', 19, 0, 'Jurnal Kamis lalu tanggal 13 Februari 2020 tidak ada. Mungkin lupa disimpan atau bagaimana. Terima kasih.', '2020-02-19', '11:57:06', NULL, NULL, '0'),
(701, 91, 7, 11, 263, 'vertebrata', 2, '', 'Direct Learning', '', 'Lecture', 18, 1, '', '2020-02-19', '12:27:42', NULL, NULL, '0'),
(702, 92, 5, 5, 160, 'Tenses', 2, 'ordering someone&#039;s daily activity', 'Direct Learning', 'ebook and internet', 'Lecture', 21, 2, 'fudayl: izin, andin: absen', '2020-02-19', '13:15:40', NULL, NULL, '0'),
(703, 89, 5, 6, 166, 'latihan', 2, '', 'Direct Learning', '', 'Lecture', 0, 0, '', '2020-02-19', '13:20:53', NULL, NULL, '0'),
(704, 95, 8, 12, 216, 'KARYA ILMIAH', 2, 'LATIHAN TUGAS', 'Inquiry Learning', 'E-BOOK', 'Experiment', 22, 3, '', '2020-02-19', '13:43:01', NULL, NULL, '0'),
(705, 88, 6, 7, 174, 'Tugas Terstruktur 1', 2, '', 'Discovery Learning', 'internet, ebook, ', 'Group Discussion', 0, 0, '', '2020-02-19', '14:10:30', NULL, NULL, '0'),
(706, 103, 5, 4, 147, 'Teorema Phytagoras', 2, 'Panjang Diagonal menggunakan Teorema Phytagoras', 'Direct Learning', 'Buku LKS  Intan Pariwara Kelas 8 Semester 2', 'Lecture', 20, 2, 'Fadhil (Izin)\r\nAhmad (Sakit)', '2020-02-19', '13:13:14', NULL, NULL, '0'),
(707, 84, 5, 6, 164, 'menghindari minuman keras, judi dan pertengkaran', 2, 'menghindari minuman keras, judi dan pertengkaran', 'Discovery Learning', '', 'Demonstration', 24, 0, '', '2020-02-19', '14:19:11', NULL, NULL, '0'),
(708, 89, 5, 4, 150, 'latihan', 2, '', 'Direct Learning', 'ebook', 'Lecture', 20, 2, '', '2020-02-19', '14:29:33', NULL, NULL, '0'),
(709, 95, 4, 1, 124, 'puisi lama', 2, 'latihan', 'Inquiry Learning', 'ebook', 'Lecture', 19, 0, '', '2020-02-19', '14:30:38', NULL, NULL, '0'),
(710, 85, 4, 3, 139, 'sistem organisasi kehidupan', 2, 'fungsi sel', 'Direct Learning', 'ppt. ebook', 'Demonstration', 18, 1, 'bagas sakit', '2020-02-19', '14:28:30', NULL, NULL, '0'),
(711, 103, 5, 5, 155, 'Teorema Phytagoras', 2, 'Panjang Diagonal menggunakan Teorema Phytagoras', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 21, 2, 'Fudayl (Izin)\r\nAndini (Sakit)', '2020-02-19', '15:44:00', NULL, NULL, '0'),
(712, 95, 8, 13, 205, 'KARYA ILMIAH', 2, 'LATIHAN', 'Inquiry Learning', 'E-BOOK', 'Experiment', 26, 1, '', '2020-02-20', '08:48:01', NULL, NULL, '0'),
(713, 85, 4, 2, 132, 'sistem organisasi kehidupan', 2, 'sistem organisasi kehidupan', 'Problem Based Learning', 'ppt, video, ebook', 'Demonstration', 19, 1, 'alif tanpa keterangan', '2020-02-20', '08:48:04', NULL, NULL, '0'),
(714, 100, 4, 1, 127, 'Memeriksa tugas', 2, 'Memeriksa tugas Bab 5', 'Direct Learning', 'Ebook english', 'Lecture', 19, 0, '', '2020-02-20', '08:50:29', NULL, NULL, '0'),
(715, 90, 6, 9, 198, 'pre test day 2', 2, '', 'Direct Learning', '', 'Lecture', 0, 0, '', '2020-02-20', '08:57:24', NULL, NULL, '0'),
(716, 93, 8, 12, 217, 'kasus ancaman ipoleksosbudhankam', 2, 'kasus ancaman ipoleksosbudhankam&lt;br&gt;&lt;br&gt;ancaman sesuatu yang berbahaya&amp;nbsp;', 'Problem Based Learning', '', 'Lecture', 20, 5, '1. haikal fazar\r\n2. m. badali\r\n3. m.rizki\r\n&#039;4. nabila\r\n5. ferdy sakit\r\n\r\ntugas definisi dan kasus perdimensi', '2020-02-20', '09:18:06', NULL, NULL, '0'),
(717, 101, 7, 11, 266, 'Historical recount', 1, 'Answer the questions about BJ. Habibie&amp;nbsp;', 'Inquiry Learning', 'ebook ', NULL, 19, 0, 'complete students&#039; presence', '2020-02-20', '08:41:52', NULL, NULL, '0'),
(718, 104, 7, 10, 281, 'Sampel Penelitian', 2, '', NULL, '', NULL, 13, 3, 'Akbar, Raja izin latihan olimpiade\r\nHakim Izin', '2020-02-20', '09:31:29', NULL, NULL, '0'),
(719, 95, 7, 11, 262, 'DEBAT', 4, 'LATIHAN DEBAT', 'Inquiry Learning', 'E-BOOK', 'Experiment', 19, 0, '', '2020-02-20', '09:37:20', NULL, NULL, '0'),
(720, 104, 7, 10, 280, 'Jenis-jenis klasifikasi iklim', 1, '', NULL, '', NULL, 13, 3, 'Hakim iziin\r\nAkbar dan Raja latihan OSK', '2020-02-20', '09:51:14', NULL, NULL, '0'),
(721, 103, 8, 12, 222, 'Turunan Fungsi', 1, 'Aturan Rantai dalam turunan fungsi komposisi', 'Direct Learning', 'Buku Lks Intan Pariwara Kelas 8 Semester 2', 'Lecture', 20, 5, 'Haikal (Tanpa Kabar)\r\nBadali (Sakit)\r\nRizki (Tanpa Kabar)\r\nNabila (Sakit)\r\nFerdi (Sakit)', '2020-02-20', '09:38:29', NULL, NULL, '0'),
(722, 84, 5, 5, 156, 'perilaku menghindari minuman keras, judi dan pertengkaran', 2, 'perilaku menghindari minuman keras, judi dan pertengkaran', 'Discovery Learning', 'BUKU PAI kelas 8', 'Demonstration', 21, 2, 'yang tidak hadir : fudhail,rizky andini', '2020-02-20', '10:28:46', NULL, NULL, '0'),
(723, 102, 4, 1, 123, 'untung dan rugi', 2, 'untung dan rugi', 'Problem Based Learning', 'Intan Pariwara matematika kelas 7', 'Group Discussion', 19, 0, '', '2020-02-20', '10:34:00', NULL, NULL, '0'),
(724, 85, 4, 3, 139, 'sistem organisasi kehidupan', 2, 'menggambar sel prokariotik dan sel eukariotik', 'Project Based Learning', 'google, ppt', 'Demonstration', 18, 1, 'bagas sakit', '2020-02-20', '10:38:44', NULL, NULL, '0'),
(725, 104, 7, 10, 280, 'Jenis-jenis dan klasifikasi iklim', 1, '', NULL, '', NULL, 15, 1, 'Hakim izin', '2020-02-20', '11:47:02', NULL, NULL, '0'),
(726, 93, 5, 4, 153, '', 0, '', 'Project Based Learning', '', NULL, 21, 1, '', '2020-02-20', '10:44:26', NULL, NULL, '0'),
(727, 101, 7, 10, 274, 'Recount Text', 2, 'Find out simple past sentence in the recount text', 'Direct Learning', 'internet', 'Lecture', 15, 1, 'lukman: izin', '2020-02-20', '11:53:58', NULL, NULL, '0'),
(728, 101, 7, 10, 274, 'Recount Text', 2, 'Find out simple past sentence in the recount text', 'Direct Learning', 'internet', 'Lecture', 15, 1, 'lukman: izin', '2020-02-20', '11:53:58', NULL, NULL, '0'),
(729, 98, 8, 13, 211, 'Indonesia Merdeka', 2, 'A. Dari Rengasdengkiok Hingga Pegangsaan Timur&lt;br&gt;&lt;br&gt;', NULL, '', NULL, 0, 1, 'Taufik (Tidak ada keterangan)', '2020-02-20', '11:54:28', NULL, NULL, '0'),
(730, 103, 8, 12, 222, 'Turunan Fungsi', 1, 'Latihan Aturan Rantai', 'Direct Learning', 'Buku Lks Intan Pariwara Kelas 8 Semester 2', 'Lecture', 22, 3, 'Badali (Sakit)\r\nNabila (Sakit)\r\nRizki (Sakit)', '2020-02-20', '10:22:14', NULL, NULL, '0'),
(731, 102, 4, 3, 140, 'Untung dan Rugi', 2, 'Untung dan Rugi', 'Problem Based Learning', 'Intan Pariwara matematika kelas 7', 'Group Discussion', 19, 1, 'Bagas Sakit', '2020-02-20', '13:02:09', NULL, NULL, '0'),
(732, 85, 4, 1, 125, 'sistem organisasi sel', 2, 'menggambar sel prokariotik dan sel eukariotik', 'Project Based Learning', '', 'Demonstration', 19, 0, '', '2020-02-20', '13:11:24', NULL, NULL, '0'),
(733, 89, 5, 4, 150, 'soal', 2, '', 'Direct Learning', '', 'Lecture', 22, 0, '', '2020-02-20', '13:14:49', NULL, NULL, '0'),
(734, 104, 8, 12, 224, 'Latihan soal II', 1, '', NULL, '', NULL, 21, 4, 'Tsabit izin osis\r\nBadali, Rizki, Nabila Salma sakit', '2020-02-20', '13:49:46', NULL, NULL, '0'),
(735, 97, 8, 13, 212, 'polinomial (matematika peminatan)', 2, 'latihan menentukan sisa pembagian suku banyak', 'Discovery Learning', 'buku matematika peminatan dan game quizziz', 'Group Discussion', 26, 1, 'Taufik M Riady tanpa keterangan', '2020-02-20', '14:02:22', NULL, NULL, '0'),
(736, 84, 7, 11, 270, 'nikmati mencari ilmu dan indahnya berbagi pengetahuan', 2, 'nikmati mencari ilmu dan indahnya berbagi pengetahuan', 'Direct Learning', 'Buku PAI kelas 10', 'Demonstration', 19, 0, '', '2020-02-20', '14:00:51', NULL, NULL, '0'),
(737, 98, 7, 10, 279, 'Bank sentral serta alat dan sistem pembayaran', 2, 'Fungsi dan Wewenang Bank', NULL, '', NULL, 0, 1, 'Hakim Izin', '2020-02-20', '14:08:44', NULL, NULL, '0'),
(738, 103, 5, 5, 155, 'Teorema Phytagoras', 2, 'Panjang Diagonal', 'Direct Learning', 'Buku Lks Intan Pariwara Kelas 8 Semester 2', 'Lecture', 21, 2, 'Fudayl (Izin)\r\nAndini (Sakit)', '2020-02-20', '14:13:51', NULL, NULL, '0'),
(739, 93, 5, 6, 169, 'kebangkitan nasional', 2, '', 'Project Based Learning', '', 'Group Discussion', 11, 0, '', '2020-02-20', '14:25:18', NULL, NULL, '0'),
(740, 89, 5, 6, 166, 'latihan', 2, '', 'Direct Learning', 'ebook', 'Lecture', 23, 1, '', '2020-02-20', '14:30:57', NULL, NULL, '0'),
(741, 100, 4, 3, 141, 'checking assignment and word square', 2, '', 'Direct Learning', 'Ebook', 'Lecture', 17, 1, '1 student absent. Bagas Zikri', '2020-02-20', '14:32:58', NULL, NULL, '0'),
(742, 93, 5, 5, 161, 'kebangkitan nasional', 2, 'kebangkitan nasional', 'Project Based Learning', '', 'Group Discussion', 20, 0, 'sebagian latihan senam', '2020-02-20', '14:39:21', NULL, NULL, '0'),
(743, 104, 8, 12, 221, 'TTS', 2, '', NULL, '', NULL, 23, 3, 'Rizki, Badali, dan Nabila izin', '2020-02-20', '14:49:03', NULL, NULL, '0'),
(744, 94, 4, 2, 131, 'Puisi Rakyat', 4, '1. Latihan mandiri dan pembahasan&lt;br&gt;2. Pembahasan struktur dan kebahasaan puisi rakyat&lt;br&gt;3. Menulis kreatif', 'Direct Learning', 'Buku', 'Lecture', 18, 1, '1. Siswa bernama Alif tidak hadir karena sakit\r\n2. Rafida, Maurel, Almira, dan Adzra izin keluar latihan senam selama 2 jp.\r\n\r\nNote: saat saya save journal otomatis logout, jadi saya login ulang saat mata pelajaran berakhir.', '2020-02-20', '15:30:41', NULL, NULL, '0'),
(745, 91, 8, 13, 206, 'ekskresi (gangguan)', 2, '', 'Direct Learning', '', 'Lecture', 25, 2, 'Yasir (izin)\r\nBelinda (izin)', '2020-02-21', '08:51:05', NULL, NULL, '0'),
(746, 89, 5, 5, 158, 'soal', 1, '', 'Direct Learning', 'ebook', 'Lecture', 23, 0, '', '2020-02-21', '08:55:30', NULL, NULL, '0'),
(747, 85, 4, 3, 139, 'sistrem organisasi kehidupan', 2, 'enggambar sel prokariotik dan sel eukariotik', 'Project Based Learning', '', NULL, 19, 0, '', '2020-02-21', '08:53:30', NULL, NULL, '0'),
(748, 94, 5, 6, 170, 'Teks ulasan', 1, 'Kaidah kebahasaan teks ulasan', 'Direct Learning', '', 'Lecture', 24, 0, 'Lancar.', '2020-02-21', '08:55:45', NULL, NULL, '0'),
(749, 103, 5, 4, 147, 'Teorema Phytagoras', 1, 'Menyederhanakan Bentuk Akar', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 18, 4, 'Nazlia (Sakit)\r\nFadhil (Izin)\r\nYazid (Sakit)\r\nFira (Tanpa Keterangan)', '2020-02-21', '08:56:46', NULL, NULL, '0'),
(750, 92, 5, 6, 168, 'Tenses (Daily Activity)', 2, 'Simple present (ordering someone&#039;s daily activity)', 'Direct Learning', '', 'Lecture', 24, 0, 'complete', '2020-02-21', '09:21:19', NULL, NULL, '0'),
(751, 93, 4, 1, 130, 'keberagaman', 2, 'making poster', 'Project Based Learning', '', 'Group Discussion', 18, 0, 'alhamdulillah. all student come to school', '2020-02-21', '09:23:54', NULL, NULL, '0'),
(752, 96, 8, 13, 207, 'Sambungan Latihan Garam', 1, '', 'Direct Learning', '', NULL, 27, 0, '', '2020-02-21', '09:36:22', NULL, NULL, '0'),
(753, 91, 7, 11, 263, 'vertebrata', 2, '', 'Direct Learning', '', 'Lecture', 18, 1, 'Rizki izin', '2020-02-21', '09:37:38', NULL, NULL, '0'),
(754, 104, 8, 12, 221, 'Proklamasi kemerdekaan Indonesia', 3, 'Proklamasi kemerdekaan Indonesia', NULL, '', NULL, 21, 4, 'Badali, Dana dan Nabila salma sakit\r\nWahyu', '2020-02-21', '09:41:27', NULL, NULL, '0'),
(755, 100, 4, 1, 127, 'Word square dan describe people', 3, '', 'Direct Learning', '', 'Group Discussion', 19, 0, '', '2020-02-21', '09:42:51', NULL, NULL, '0'),
(756, 85, 4, 2, 132, 'sistem organisasi kehidupan', 2, 'fungsi dari bagian sel', 'Direct Learning', '', 'Demonstration', 0, 0, '', '2020-02-21', '09:52:25', NULL, NULL, '0'),
(757, 94, 5, 4, 154, 'Teks ulasan', 2, 'Kaidan kebahasaan dan langkah-langkah menyusun teks ulasan', 'Direct Learning', 'Buku', 'Lecture', 19, 4, 'Lancar.', '2020-02-21', '09:25:37', NULL, NULL, '0'),
(758, 101, 7, 10, 274, 'recount text', 1, 'some students retelling story', 'Project Based Learning', '', 'Demonstration', 15, 1, 'Lukman Nul Hakim (izin)\r\nAda masalah dengan keyboard sehingga telat login e-journal', '2020-02-21', '09:42:51', NULL, NULL, '0'),
(759, 103, 5, 5, 155, 'Teorema Phytagoras', 2, 'Menyederhanakan Bentuk Akar', 'Direct Learning', 'Buku Lks Intan Pariwara Kelas 8  Semester 2', 'Lecture', 20, 3, 'Fudayl (Izin)\r\nBaim (Izin)\r\nAndini (Sakit)', '2020-02-21', '09:28:07', NULL, NULL, '0'),
(760, 101, 8, 13, 209, 'cause and effect', 1, 'Make a dialog with using of because, as a result, and so.&lt;br&gt;Do it in group consists of 3 students. Perform on wednesday', 'Project Based Learning', '', 'Group Discussion', 27, 0, '', '2020-02-21', '10:36:41', NULL, NULL, '0'),
(761, 86, 6, 9, 194, 'UN Quarantine  II', 8, 'UN Quarantine  II', NULL, '', NULL, 23, 1, '', '2020-02-21', '11:18:22', NULL, NULL, '0'),
(762, 96, 8, 13, 207, 'Continue Hydrolysis Exercise', 1, '', 'Direct Learning', '', 'Lecture', 27, 0, '', '2020-02-21', '11:47:06', NULL, NULL, '0'),
(763, 93, 4, 2, 138, 'keberagaman', 2, '', 'Project Based Learning', '', 'Group Discussion', 19, 0, '', '2020-02-21', '11:48:42', NULL, NULL, '0'),
(764, 93, 4, 2, 138, 'keberagaman', 2, '', 'Project Based Learning', '', 'Group Discussion', 19, 0, '', '2020-02-21', '11:48:42', NULL, NULL, '0'),
(765, 103, 5, 6, 163, 'Teorema Phytagoras', 2, 'Menyederhanakan Bentuk Akar', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 25, 0, 'Pembelajaran berjalan dengan lancar', '2020-02-21', '10:48:49', NULL, NULL, '0'),
(766, 101, 7, 11, 266, 'biographical recount', 1, 'Analyze the simple past sentence based on biographical recount text that students create on the last meeting.&lt;br&gt;Write at least 10 sentences in the form of simple past tense based on the text.', NULL, '', NULL, 18, 1, 'Rizky (izin) menjaga ibunya yang sakit', '2020-02-21', '11:21:41', NULL, NULL, '0'),
(767, 98, 8, 12, 218, 'Perpajakan', 2, 'Menghitung pajak PBB', NULL, '', NULL, 0, 4, 'Lesmana Perdana ( Sakit) Badali (Sakit) Nabila (Sakit) Wahyu (Izin)', '2020-02-21', '13:59:40', NULL, NULL, '0'),
(768, 96, 8, 13, 207, 'latihan garam', 2, '', 'Inquiry Learning', '', 'Lecture', 27, 0, '', '2020-02-21', '14:51:56', NULL, NULL, '0'),
(769, 96, 7, 11, 264, 'review  materi uts', 1, '', 'Direct Learning', '', 'Lecture', 19, 0, '', '2020-02-24', '08:33:39', NULL, NULL, '0'),
(770, 102, 4, 1, 123, 'Aritmetika sosial persentasi untung dan rugi', 2, 'Aritmetika sosial persentasi untung dan rugi', 'Problem Based Learning', 'Intan pariwara matematika kelas 7 tahun 2019/2020', 'Group Discussion', 19, 0, 'lengkap', '2020-02-24', '08:44:10', NULL, NULL, '0'),
(771, 100, 4, 2, 136, 'Word square', 2, '', 'Discovery Learning', 'Internet', 'Group Discussion', 18, 1, 'Akhtarul Zikri is sick', '2020-02-24', '08:44:53', NULL, NULL, '0'),
(772, 85, 4, 3, 139, 'sistem organisasi kehiduoan', 2, 'menggambar sel prokariotik, sel hewan, sel tumbuhan', 'Project Based Learning', 'google', 'Demonstration', 0, 0, '', '2020-02-24', '08:48:46', NULL, NULL, '0'),
(773, 101, 7, 10, 274, 'type of text', 2, 'narative text', 'Direct Learning', '', 'Lecture', 15, 1, 'lukman: izin', '2020-02-24', '08:44:20', NULL, NULL, '0'),
(774, 95, 8, 12, 216, 'karya ilmiah', 2, 'latihan&amp;nbsp;', 'Inquiry Learning', '', 'Experiment', 22, 3, '', '2020-02-24', '08:59:48', NULL, NULL, '0'),
(775, 88, 8, 13, 214, 'Termodinamika (Mesin Pemanas dan Mesin Pendingin)', 2, 'Termodinamika (Mesin Pemanas dan Mesin Pendingin)', 'Direct Learning', 'ppt ebook', 'Lecture', 0, 0, '', '2020-02-24', '09:05:46', NULL, NULL, '0'),
(776, 94, 5, 5, 162, 'Teks ulasan', 2, 'Kebahasaan teks ulasan', 'Problem Based Learning', 'Buku', 'Group Discussion', 22, 1, '1. Rizky Syarif tidak hadir tanpa keterangan\r\n2. Jam terpotong karena pemeriksaan dari puskesmas', '2020-02-24', '08:42:09', NULL, NULL, '0'),
(777, 96, 8, 13, 207, 'review materi uts', 2, '', 'Direct Learning', '', 'Lecture', 27, 0, '', '2020-02-24', '09:58:03', NULL, NULL, '0'),
(778, 103, 5, 6, 163, 'Senin, 24 Februari 2020', 2, 'Menghitung Perbandingan sisi-sisi segitiga siku-siku Khusus', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 24, 0, 'Lengkap', '2020-02-24', '08:48:05', NULL, NULL, '0'),
(779, 102, 4, 3, 140, 'Aritmetika sosial persentase untung dan persentase rugi', 2, 'Aritmetika sosial persentase untung dan persentase rugi', 'Problem Based Learning', 'Intan Pariwara Matematika kelas 7', 'Group Discussion', 19, 0, '', '2020-02-24', '10:28:18', NULL, NULL, '0'),
(780, 95, 4, 1, 124, 'puisi lama', 2, 'pembahsaan dan latihan', 'Inquiry Learning', 'e-book', 'Experiment', 19, 0, '', '2020-02-24', '10:37:15', NULL, NULL, '0'),
(781, 85, 4, 2, 132, 'sistem organisasi kehidupan', 2, 'menggambar sel prokariotik dan sel eukariotik', 'Project Based Learning', 'hp, google', 'Demonstration', 18, 1, 'akhtar tanpa keterangan', '2020-02-24', '10:40:15', NULL, NULL, '0'),
(782, 89, 5, 5, 158, 'ulangan', 1, '', 'Direct Learning', 'PPT', 'Lecture', 22, 1, '', '2020-02-24', '11:32:45', NULL, NULL, '0'),
(783, 84, 8, 13, 213, 'toleransi sebagai alat pemersatu bangsa', 2, 'toleransi sebagai alat pemersatu bangsa', 'Discovery Learning', '', 'Demonstration', 27, 0, '', '2020-02-24', '11:47:57', NULL, NULL, '0'),
(784, 103, 5, 4, 147, 'Teorema Phytagoras', 2, 'Menghitung Perbandingan sisi-sisi segitiga siku-siku khusus (45, 90, 45)', 'Direct Learning', 'Buku Intan Pariwara Kelas 8 Semester 2', 'Lecture', 21, 1, 'Nazlia (Sakit)', '2020-02-24', '10:42:50', NULL, NULL, '0'),
(785, 96, 7, 11, 264, 'Latihan soal-soal materi uts', 2, '', 'Direct Learning', '', 'Group Discussion', 19, 0, '', '2020-02-24', '11:54:50', NULL, NULL, '0'),
(786, 95, 7, 10, 272, 'debat', 2, '', 'Inquiry Learning', '', 'Experiment', 16, 1, '', '2020-02-24', '11:56:06', NULL, NULL, '0'),
(787, 94, 5, 6, 170, 'Teks ulasan', 2, 'Kaidah dan rencana penyusunan teks ulasan', 'Problem Based Learning', 'Buku', NULL, 20, 4, 'Dhelvina izin ke UKS\r\nFristy, M. Rayhan, dan Raihan Ibni izin latihan senam', '2020-02-24', '10:42:56', NULL, NULL, '0'),
(788, 102, 4, 2, 133, 'Untung dan Rugi', 2, 'Untung dan Rugi', 'Problem Based Learning', 'Intan Pariwara Matematika Kelas 7', 'Group Discussion', 19, 1, 'akhtar Sakit', '2020-02-24', '13:03:49', NULL, NULL, '0'),
(789, 100, 4, 3, 141, 'word square and adjective clause', 4, '', 'Direct Learning', 'Ebook and internet', 'Group Discussion', 19, 0, 'Complete', '2020-02-24', '13:10:57', NULL, NULL, '0'),
(790, 85, 4, 1, 125, 'sistem organisasi kehidupan', 4, 'menggambar sel prokariotik dan sel eukariotik&lt;br&gt;&lt;br&gt;jaringan tumbuhan dan hewan', 'Project Based Learning', 'ppt, google, ebook', 'Demonstration', 19, 0, '', '2020-02-24', '13:19:38', NULL, NULL, '0'),
(791, 92, 5, 4, 152, 'tenses (simple present)', 2, 'Practice th&amp;nbsp; dialog about daily activity', 'Direct Learning', 'ebook', 'Lecture', 21, 0, 'nazlia: izin', '2020-02-24', '13:16:02', NULL, NULL, '0'),
(792, 84, 8, 13, 213, 'lanjutan toleransi sbagai alat pemersatu bangsa', 1, 'toleransi sbagai alat pemersatu bangsa', 'Discovery Learning', '', 'Demonstration', 27, 0, '', '2020-02-24', '13:22:51', NULL, NULL, '0'),
(793, 89, 5, 6, 166, 'latihan', 2, '', 'Direct Learning', 'ebook', 'Lecture', 24, 0, '', '2020-02-24', '13:49:29', NULL, NULL, '0'),
(794, 104, 8, 12, 224, 'beradaptasi dengan nilai dan norma sosial yang baru', 1, '', NULL, '', NULL, 23, 2, 'Olin dan dana sakit', '2020-02-24', '14:01:27', NULL, NULL, '0'),
(795, 84, 8, 12, 223, 'tokoh pembaru dalam islam', 2, 'tokoh pembaru dalam islam', 'Discovery Learning', 'Buku PAI kelas 11', 'Demonstration', 20, 2, 'yang sakit : lesmana, carolin, ', '2020-02-24', '14:04:13', NULL, NULL, '0'),
(796, 94, 5, 5, 162, 'tekks ulasan', 2, 'Rencana menyusun teks ulasan', 'Direct Learning', '', 'Group Discussion', 22, 1, 'Lancar', '2020-02-24', '13:12:35', NULL, NULL, '0'),
(797, 92, 5, 4, 152, 'simple present tense', 2, 'practicing the dialogue about daily activity', 'Direct Learning', 'ebook', 'Lecture', 23, 0, '', '2020-02-24', '14:25:58', NULL, NULL, '0'),
(798, 104, 7, 10, 281, 'Metode pengumpulan data', 2, '', NULL, '', NULL, 15, 1, 'Hakim izin', '2020-02-24', '15:29:46', NULL, NULL, '0'),
(799, 94, 5, 4, 154, 'Teks ulasan', 2, 'Menulis kreatif teks ulasan', 'Problem Based Learning', '', 'Group Discussion', 21, 1, 'Nazlia=sakit', '2020-02-24', '15:30:32', NULL, NULL, '0'),
(800, 103, 5, 6, 163, 'Teorema Phytagoras', 2, 'Menghitung sisi segitiga dengan sudut (45, 90, 45)', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 24, 0, 'Lengkap', '2020-02-24', '14:33:03', NULL, NULL, '0');
INSERT INTO `journal` (`journal_id`, `teacher_id`, `class_id`, `section_id`, `subject_id`, `submain_material`, `duration`, `lesson_material`, `implementation`, `reference_source`, `teaching_method`, `student_present`, `student_absent`, `description`, `date`, `time`, `date_end`, `time_end`, `file`) VALUES
(801, 84, 4, 1, 126, 'praktek shalat', 2, 'praktek shalat', 'Direct Learning', 'Buku PAI', 'Demonstration', 19, 0, '', '2020-02-25', '08:41:14', NULL, NULL, '0'),
(802, 102, 4, 2, 133, 'Persentase Untung dan rugi', 2, 'Persentase Untung dan rugi', 'Problem Based Learning', 'Intan Pariwara Matematika kelas 7', 'Group Discussion', 19, 1, 'Akhtar Izin', '2020-02-25', '08:43:58', NULL, NULL, '0'),
(803, 89, 5, 5, 158, 'latihan', 2, '', 'Direct Learning', 'ebook', 'Lecture', 23, 0, '', '2020-02-25', '08:48:47', NULL, NULL, '0'),
(804, 96, 7, 11, 282, 'review materi uts', 2, '', 'Direct Learning', '', 'Group Discussion', 18, 1, 'Diva (a)', '2020-02-25', '08:50:14', NULL, NULL, '0'),
(805, 95, 8, 13, 205, 'karya ilmiah', 2, 'latihan', 'Inquiry Learning', '', NULL, 27, 0, '', '2020-02-25', '08:47:09', NULL, NULL, '0'),
(806, 92, 5, 6, 168, 'tenses', 2, 'daily test', 'Direct Learning', '', 'Lecture', 24, 0, '', '2020-02-25', '09:03:54', NULL, NULL, '0'),
(807, 93, 7, 11, 265, 'ATHG (ancaman, Tantangan, Hambatan dan Gangguan) terhadap Integrasi nasional', 0, 'ATHG (ancaman, Tantangan, Hambatan dan Gangguan) terhadap Integrasi nasional&lt;br&gt;ATHG ( Ancaman,\r\nTantangan, Hambatan dan Gangguan) Terhadap Integrasi Nasional\r\n\r\n&amp;nbsp;\r\n\r\n&lt;br&gt;Soal latihan:\r\n\r\n&lt;br&gt;&lt;span&gt;1.&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;\r\nSebutkan\r\nisi dari pasal:&lt;br&gt;&lt;/span&gt;\r\n\r\n&lt;span&gt;a.&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;\r\n27\r\nayat (3)&lt;/span&gt;\r\n\r\n&lt;br&gt;&lt;span&gt;b.&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;\r\n30\r\nayat (1)&lt;br&gt;&lt;/span&gt;\r\n\r\n&lt;span&gt;&lt;span&gt;&lt;br&gt;2.&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;\r\n&lt;/span&gt;Sebutkan\r\npengertian dari:&lt;/span&gt;\r\n\r\n&lt;br&gt;&lt;span&gt;a.&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;\r\nAncaman&lt;/span&gt;\r\n&lt;br&gt;b. tantangan&lt;br&gt;&lt;span&gt;c.&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;Hambatan&lt;/span&gt;&amp;nbsp;&lt;br&gt;&lt;span&gt;d.&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;\r\ngangguan&lt;/span&gt;&lt;br&gt;', 'Problem Based Learning', '', 'Lecture', 18, 1, '', '2020-02-25', '09:32:51', NULL, NULL, '0'),
(808, 104, 8, 12, 220, 'pengaruh globalisasi terhadap budaya global (culture lag dan culture shock)', 2, '', NULL, '', NULL, 24, 1, 'azwar izin mengerjakan tugas', '2020-02-25', '09:24:47', NULL, NULL, '0'),
(809, 103, 5, 4, 147, 'Teorema Phytagoras', 2, '- Perbandingan sisi-sisi segitiga siku-siku dengan sudut (45,90,45) dan (30,90,60)&lt;br&gt;- Kuis Perbandingan sisi-sisi segitiga siku-siku', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 22, 0, 'Lengkap dan Kuis berjalan dengan lancar', '2020-02-25', '09:57:11', NULL, NULL, '0'),
(810, 84, 4, 2, 135, 'materi shalat dan prakteknya', 2, 'materi shalat dan prakteknya', 'Direct Learning', '', 'Demonstration', 18, 1, 'yang tidak hadir athar', '2020-02-25', '10:30:37', NULL, NULL, '0'),
(811, 102, 4, 3, 140, 'Persentase Untung dan Rugi II', 2, 'Persentase Untung dan Rugi II', 'Problem Based Learning', 'Intan Pariwara matematika kelas 7', 'Group Discussion', 19, 1, '', '2020-02-25', '10:36:40', NULL, NULL, '0'),
(812, 95, 4, 1, 124, 'Puisi Lama', 2, 'praktik membaca pantun atau gurindam dan review materi untuk ulangan', 'Inquiry Learning', 'e-book', 'Demonstration', 19, 0, '', '2020-02-25', '10:36:53', NULL, NULL, '0'),
(813, 92, 5, 4, 152, 'tenses', 2, 'daily test', 'Direct Learning', '', 'Lecture', 22, 0, '', '2020-02-25', '10:52:22', NULL, NULL, '0'),
(814, 94, 5, 6, 170, 'Teks ulasan', 2, 'Membuat teks ulasan', 'Problem Based Learning', 'Buku', 'Group Discussion', 24, 0, 'Belajar di luar.', '2020-02-25', '10:41:12', NULL, NULL, '0'),
(815, 103, 5, 5, 155, 'Teorema Phytagoras', 2, '- Perbandingan sisi-sisi segitiga siku-siku dengan sudut (45,90,45) dan (30, 60,90)&lt;br&gt;- Kuis&amp;nbsp;', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 22, 1, 'Baim (Tanpa Kabar)', '2020-02-25', '11:57:07', NULL, NULL, '0'),
(816, 88, 8, 13, 214, 'latihan soal Termodinamika', 2, 'latihan soal Termodinamika', 'Discovery Learning', 'internet, ppt, ebook', 'Group Discussion', 25, 2, '', '2020-02-25', '12:29:50', NULL, NULL, '0'),
(817, 84, 4, 3, 143, 'materi dan praktek shalat', 2, 'materi dan praktek shalat', 'Direct Learning', '', 'Demonstration', 18, 1, 'm rasyad fikri izin', '2020-02-25', '12:59:51', NULL, NULL, '0'),
(818, 102, 4, 1, 123, 'Bunga tunggal', 2, 'Bunga tunggal', 'Problem Based Learning', 'Intan Pariwara matematika kelas 7', 'Group Discussion', 19, 0, '', '2020-02-25', '13:03:55', NULL, NULL, '0'),
(819, 100, 4, 2, 136, 'Describe people', 2, '', 'Direct Learning', 'Ebook and internet', 'Lecture', 18, 1, 'Akhtarul Zikri izin', '2020-02-25', '13:08:36', NULL, NULL, '0'),
(820, 89, 5, 4, 150, 'latihan', 2, '', 'Direct Learning', 'ebook', 'Lecture', 22, 0, '', '2020-02-25', '13:15:48', NULL, NULL, '0'),
(821, 103, 5, 6, 163, 'Teorema Phytagoras', 2, '- Perbandingan sisi-sisi segitiga siku-siku sudut (45,90,45) dan (30,60,90)&lt;br&gt;- Kuis', 'Direct Learning', 'Buku Lks Intan Pariwara Kelas 8 Semester 2', 'Lecture', 24, 0, 'Lengkap dan Kuis berjalan dengan lancar', '2020-02-25', '14:10:48', NULL, NULL, '0'),
(822, 93, 8, 13, 208, 'ancaman terhadap IPOLEKSOSBUDHANKAM', 0, 'Presentasi kelompok&amp;nbsp;&lt;br&gt;ideologi&lt;br&gt;politik&lt;br&gt;ekonomi&lt;br&gt;sosial &amp;amp; budaya&lt;br&gt;pertahanan &amp;amp; keamanan', 'Problem Based Learning', '', 'Group Discussion', 26, 1, 'latief ijin persiapan osn kimia', '2020-02-25', '14:12:58', NULL, NULL, '0'),
(823, 94, 5, 5, 162, 'Teks ulasan', 2, 'Membuat teks ulasan', 'Problem Based Learning', 'Buku', 'Group Discussion', 22, 1, 'Iberahim Risyad tidak hadir tanpa keterangan', '2020-02-25', '13:35:23', NULL, NULL, '0'),
(824, 100, 4, 1, 127, 'Describing someone', 2, '', 'Direct Learning', '', 'Group Discussion', 19, 0, 'Complete', '2020-02-25', '14:27:23', NULL, NULL, '0'),
(825, 102, 7, 10, 276, 'Trigonometri', 2, 'Trigonometri', 'Problem Based Learning', 'Intan pariwara', NULL, 19, 0, '', '2020-02-25', '14:30:11', NULL, NULL, '0'),
(826, 92, 5, 5, 160, 'tenses', 2, 'daily test', 'Direct Learning', '', 'Lecture', 23, 0, '', '2020-02-25', '14:43:54', NULL, NULL, '0'),
(827, 94, 5, 4, 154, 'Teks ulasan', 2, 'Membuat teks ulasan dan review pembelajaran untuk daily test', 'Problem Based Learning', 'Buku', 'Group Discussion', 22, 0, 'Lancar.', '2020-02-25', '14:28:37', NULL, NULL, '0'),
(828, 103, 8, 12, 222, 'Turunan Fungsi', 2, 'Fungsi Naik dan Fungsi Turun', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 11 Semester 2', 'Lecture', 25, 0, 'Lengkap ', '2020-02-25', '15:19:45', NULL, NULL, '0'),
(829, 102, 4, 3, 140, 'Bunga Tunggal', 2, 'Bunga Tunggal', 'Problem Based Learning', 'Intan pariwara Matrematika Kelas 7', 'Group Discussion', 19, 0, '', '2020-02-26', '08:43:32', NULL, NULL, '0'),
(830, 92, 5, 6, 168, 'tenses', 2, 'Present Continuous Tense&lt;br&gt;(Verbal Senetnce)', 'Direct Learning', 'ebook', 'Lecture', 24, 0, '', '2020-02-26', '08:50:33', NULL, NULL, '0'),
(831, 85, 4, 1, 125, 'organ dan sistem organ ', 2, 'organ dan sistem organ', 'Project Based Learning', 'video, papan tulis', 'Demonstration', 19, 0, '', '2020-02-26', '08:56:01', NULL, NULL, '0'),
(832, 95, 7, 10, 272, 'debat', 1, 'praktik debat', 'Inquiry Learning', 'e-book', 'Experiment', 14, 2, '', '2020-02-26', '08:58:22', NULL, NULL, '0'),
(833, 100, 4, 2, 136, 'Draw and describe people', 2, '', 'Direct Learning', 'Ebook and internet', 'Group Discussion', 17, 2, 'Akmira sakit, Akhtar izin', '2020-02-26', '09:23:34', NULL, NULL, '0'),
(834, 101, 8, 13, 209, 'cause and effect', 2, 'Perform dialog using cause and effect relationship', 'Project Based Learning', 'English book', 'Group Discussion', 25, 1, 'Prista (sick)', '2020-02-26', '08:47:59', NULL, NULL, '0'),
(835, 101, 8, 13, 209, 'cause and effect', 2, 'Perform dialog using cause and effect relationship', 'Project Based Learning', 'English book', 'Group Discussion', 25, 1, 'Prista (sick)', '2020-02-26', '08:47:59', NULL, NULL, '0'),
(836, 91, 8, 13, 206, 'materi sistem ekskresi, pencernaan\r\nlatihan 1', 2, '', 'Discovery Learning', 'Erlangga kelas XI', 'Group Discussion', 25, 2, 'Yasir izin\r\nPrista sakit', '2020-02-26', '09:51:21', NULL, NULL, '0'),
(837, 102, 4, 1, 123, 'Bunga tunggal II', 2, 'Bunga tunggal II', 'Problem Based Learning', 'Intan pariwara matematika kelas 7', 'Group Discussion', 19, 0, '', '2020-02-26', '10:38:26', NULL, NULL, '0'),
(838, 92, 5, 4, 152, 'tenses', 2, 'Present Continuous Tense&lt;br&gt;&lt;br&gt;', 'Direct Learning', 'ebook', 'Lecture', 22, 0, '', '2020-02-26', '10:41:02', NULL, NULL, '0'),
(839, 96, 7, 11, 282, 'Energi Potensial dan Gaya Konservatif', 1, '', 'Discovery Learning', '', 'Group Discussion', 16, 3, 'Nisa (s), Neha (s), Maulana (i)', '2020-02-26', '11:24:00', NULL, NULL, '0'),
(840, 94, 4, 2, 131, 'Puisi Rakyat', 2, 'Membacakan karya masing-masing.&lt;br&gt;1. Pantun&lt;br&gt;2. Gurindam&lt;br&gt;3. Syair', 'Problem Based Learning', 'Buku', 'Demonstration', 17, 2, 'Almira dan Akhtar sakit', '2020-02-26', '10:36:13', NULL, NULL, '0'),
(841, 84, 7, 10, 277, 'materi shalat dan prakteknya', 2, 'materi shalat dan prakteknya', 'Direct Learning', '', 'Demonstration', 14, 2, 'raja rafli dan hakim izin', '2020-02-26', '11:45:15', NULL, NULL, '0'),
(842, 89, 5, 5, 158, 'sistem pernapasan manusia', 2, '', 'Discovery Learning', '', 'Demonstration', 0, 0, '', '2020-02-26', '11:52:13', NULL, NULL, '0'),
(843, 95, 8, 12, 216, 'KARYA ILMIAH', 2, 'ULANGAN HARIAN', 'Inquiry Learning', 'E-BOOK', 'Experiment', 24, 1, '', '2020-02-26', '11:55:43', NULL, NULL, '0'),
(844, 91, 7, 11, 263, 'Animalia Latihan 1', 2, '', 'Discovery Learning', '', 'Group Discussion', 16, 3, 'maulana izin\r\nneha sakit\r\nnisa sakit', '2020-02-26', '12:23:24', NULL, NULL, '0'),
(845, 100, 4, 3, 141, 'draw and describe people', 2, '', 'Direct Learning', 'ebook and internet', 'Group Discussion', 19, 0, '', '2020-02-26', '13:09:58', NULL, NULL, '0'),
(846, 92, 5, 5, 160, 'tenses', 2, 'Present Continuous tense&amp;nbsp;', 'Direct Learning', 'ebook\r\n', 'Lecture', 23, 0, '', '2020-02-26', '13:12:41', NULL, NULL, '0'),
(847, 102, 4, 2, 133, 'Bunga Tunggal', 2, 'Bunga Tunggal', 'Problem Based Learning', 'Intan Pariwara matematika kelas 7', 'Group Discussion', 19, 0, '', '2020-02-26', '13:16:20', NULL, NULL, '0'),
(848, 103, 5, 4, 147, 'Teorema Phytagoras', 2, 'Soal-soal pemantapan perbandingan sisi-sisi segitiga', 'Direct Learning', 'Buku Paket Ganeca Kelas 8', 'Lecture', 22, 0, 'Pembelajaran berjalan dengan lancar dan para siswa aktif mengerjakan soal-soal pemantapan', '2020-02-26', '13:10:27', NULL, NULL, '0'),
(849, 89, 5, 4, 150, 'ulangan', 2, '', 'Direct Learning', 'ebook', 'Lecture', 22, 0, '', '2020-02-26', '14:29:32', NULL, NULL, '0'),
(850, 85, 4, 3, 139, 'sistem organisasi kehidupan', 2, 'jaringan dan organ', 'Direct Learning', '', 'Demonstration', 19, 0, '', '2020-02-26', '14:32:56', NULL, NULL, '0'),
(851, 95, 4, 1, 124, 'puisi lama', 2, 'ulangan harian', 'Inquiry Learning', 'e-book', 'Experiment', 19, 0, '', '2020-02-26', '14:37:47', NULL, NULL, '0'),
(852, 84, 5, 6, 164, 'materi shalat dan prakteknya', 2, 'materi shalat dan prakteknya', 'Discovery Learning', 'Buku PAI', 'Demonstration', 19, 0, 'yang izin latihan senam : raihan, m raihan, dolvina, pristi', '2020-02-26', '14:26:20', NULL, NULL, '0'),
(853, 103, 5, 5, 155, 'Teorema Phytagoras ', 2, 'Pemantapan soal-soal perbandingan sisi-sisi segitiga', 'Direct Learning', 'Buku Lks Intan Pariwara Kelas 8 Semester 2', 'Lecture', 23, 0, 'Lengkap dan siswa aktif mengerjakan soal-soal pemantapan ', '2020-02-26', '15:48:28', NULL, NULL, '0'),
(854, 100, 4, 3, 141, 'drawing and describe animals', 2, '', 'Direct Learning', 'Ebook and internet', 'Lecture', 19, 0, 'Complete', '2020-02-27', '08:47:30', NULL, NULL, '0'),
(855, 95, 8, 13, 205, 'Karya Ilmiah', 2, 'ulangan harian', 'Inquiry Learning', 'e-book', 'Experiment', 26, 1, '', '2020-02-27', '08:54:27', NULL, NULL, '0'),
(856, 85, 4, 2, 132, 'sistem organisasi kehidupan', 2, 'menggambar sel prokariotik dan sel eukariotik', 'Project Based Learning', 'google, hp', NULL, 19, 0, '', '2020-02-27', '08:50:50', NULL, NULL, '0'),
(857, 95, 7, 11, 262, 'debat', 4, 'pembagian mosi dan kelompok&lt;br&gt;praktik debat', 'Inquiry Learning', '', 'Experiment', 19, 1, '', '2020-02-27', '09:43:57', NULL, NULL, '0'),
(858, 104, 7, 10, 281, 'Metode kuesioner', 2, '', NULL, '', NULL, 14, 2, 'Hakim dan raja izin', '2020-02-27', '10:12:29', NULL, NULL, '0'),
(859, 104, 7, 10, 280, 'Iklim di Indonesia, Jenis, Perubahan dan Pengaruhnya terhadap kehidupan', 1, '', NULL, '', NULL, 14, 2, 'Hakim dan Raja izin', '2020-02-27', '10:13:04', NULL, NULL, '0'),
(860, 103, 8, 12, 222, 'Turunan Fungsi', 1, 'Persamaan garis singgung dan garis normal kurva menggunakan turunan pertama fungsi', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 11 Semester 2', 'Lecture', 23, 2, 'Melly (Sakit)\r\nBadali (Sakit)', '2020-02-27', '09:30:44', NULL, NULL, '0'),
(861, 102, 4, 1, 123, 'Bruto, Neto, Tara', 2, 'Bruto, Neto, Tara', 'Problem Based Learning', 'Intan pariwara matematika kelas 7', 'Group Discussion', 19, 0, '', '2020-02-27', '10:34:40', NULL, NULL, '0'),
(862, 100, 4, 2, 136, 'Describe and draw animal', 2, '', 'Direct Learning', 'Ebook and Internet', 'Group Discussion', 19, 0, 'Complete', '2020-02-27', '10:36:22', NULL, NULL, '0'),
(863, 85, 4, 3, 139, 'sistem organisasi kehidupan', 2, 'organ dan sistem organ', 'Direct Learning', '', 'Demonstration', 19, 0, '', '2020-02-27', '10:37:17', NULL, NULL, '0'),
(864, 87, 6, 9, 195, '', 2, '', 'Direct Learning', '', 'Lecture', 19, 5, '', '2020-02-27', '10:37:51', NULL, NULL, '0'),
(865, 87, 6, 9, 195, '', 2, '', 'Direct Learning', '', 'Lecture', 19, 5, '', '2020-02-27', '10:37:51', NULL, NULL, '0'),
(866, 87, 6, 9, 195, 'Latihan soal ', 2, '', 'Direct Learning', '', 'Lecture', 19, 5, '', '2020-02-27', '10:37:51', NULL, NULL, '0'),
(867, 84, 5, 5, 156, 'materi shalat dan prakteknya', 2, 'materi shalat dan prakteknya', 'Direct Learning', 'materi shalat dan prakteknya', 'Demonstration', 24, 0, '', '2020-02-27', '10:30:59', NULL, NULL, '0'),
(868, 91, 6, 8, 188, 'sel dan Jaringan tumbuhan', 2, '', 'Direct Learning', '', 'Lecture', 17, 6, 'Aileen\r\nFadhikya\r\nKabitha\r\nHaekal\r\nPutri \r\nRaysha\r\nTalitha', '2020-02-27', '11:05:16', NULL, NULL, '0'),
(869, 104, 7, 10, 280, 'KUIS tentang atmosfer', 1, '', NULL, '', NULL, 13, 3, 'Ami, Raja dan hakim izin', '2020-02-27', '11:35:14', NULL, NULL, '0'),
(870, 103, 8, 12, 222, 'Teorema Phytagoras', 1, 'Latihan Persamaan Garis Singgung dan Garis Normal Menggunakan Turunan Pertama', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 11 Semester 2', 'Lecture', 23, 2, 'Melly (Sakit)\r\nBadali (Sakit)', '2020-02-27', '11:10:42', NULL, NULL, '0'),
(871, 86, 6, 7, 172, 'Variasi kata dan kalimat', 2, '', 'Direct Learning', '', 'Lecture', 15, 7, '', '2020-02-27', '10:49:20', NULL, NULL, '0'),
(872, 101, 7, 10, 274, 'type of text', 2, 'narrative text (legend)', 'Direct Learning', 'ebook', 'Lecture', 14, 2, 'lukman:izin, raja: izin', '2020-02-27', '11:51:34', NULL, NULL, '0'),
(873, 102, 4, 3, 140, 'Bunga Tunggal II', 2, 'Bunga Tunggal II', 'Problem Based Learning', 'Intan Pariwara Matematika kelas 7\r\n', 'Demonstration', 19, 0, '', '2020-02-27', '13:03:50', NULL, NULL, '0'),
(874, 85, 4, 1, 125, 'sistem organisasi kehidupan', 2, 'sistem organ manusia', 'Direct Learning', 'ppt', 'Demonstration', 19, 0, '', '2020-02-27', '13:13:57', NULL, NULL, '0'),
(875, 88, 6, 7, 174, 'Latihan soal', 2, '', 'Discovery Learning', '', 'Lecture', 14, 7, '', '2020-02-27', '13:48:11', NULL, NULL, '0'),
(876, 89, 5, 4, 150, 'sistem pernapasan', 2, '', 'Direct Learning', 'ebook', 'Lecture', 22, 0, '', '2020-02-27', '13:55:27', NULL, NULL, '0'),
(877, 84, 7, 11, 270, 'Materi Shalat dan Prakteknya', 2, 'Materi PAI dan Prakteknya', 'Discovery Learning', 'Buku PAi', 'Demonstration', 18, 1, 'yang tidak hadir : shafa neha afifah sakit', '2020-02-27', '14:01:50', NULL, NULL, '0'),
(878, 86, 6, 9, 194, 'Variasi kata dan kalimat', 2, '', 'Direct Learning', '', 'Lecture', 19, 5, '', '2020-02-27', '13:12:55', NULL, NULL, '0'),
(879, 103, 5, 5, 155, 'Teorema Phytagoras', 2, 'Soal-Soal Latihan Akhir Bab', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 22, 1, 'Andini (Sakit)', '2020-02-27', '14:21:24', NULL, NULL, '0'),
(880, 87, 6, 8, 184, '', 0, '', 'Direct Learning', '', 'Lecture', 17, 7, '', '2020-02-27', '13:08:33', NULL, NULL, '0'),
(881, 89, 5, 6, 166, 'sistem pernapasan manusia', 2, '', 'Direct Learning', 'ebook', 'Lecture', 23, 1, '', '2020-02-27', '14:27:47', NULL, NULL, '0'),
(882, 100, 4, 3, 141, 'draw and describe  animal', 2, '', 'Direct Learning', 'Ebook and internet', 'Lecture', 15, 4, 'Rifqiy, Rohid, Bisma dan Reyvaldi iizin sparing', '2020-02-27', '14:34:37', NULL, NULL, '0'),
(883, 88, 6, 9, 196, 'latihan soal', 2, '', NULL, '', NULL, 0, 0, '', '2020-02-27', '14:41:22', NULL, NULL, '0'),
(884, 86, 6, 8, 183, 'Variasi kata dan kalimat', 2, '', NULL, '', NULL, 18, 7, '', '2020-02-27', '15:05:04', NULL, NULL, '0'),
(885, 94, 4, 2, 131, 'Fabel', 4, 'Mengidentifikasi fabel', 'Problem Based Learning', 'Buku', 'Group Discussion', 13, 6, 'Yovie, Khairil, Arva, Radit, Hammam, dan Arif izin jam 2 karena sparing.', '2020-02-27', '15:34:11', NULL, NULL, '0'),
(886, 87, 6, 7, 173, 'latihan soal', 0, '', 'Direct Learning', '', 'Lecture', 15, 7, '', '2020-02-27', '15:37:34', NULL, NULL, '0'),
(887, 102, 4, 2, 133, 'Bunga Tunggal II', 2, 'Bunga Tunggal II', 'Problem Based Learning', 'Intan pariwara matematika kelas 7', 'Group Discussion', 19, 1, 'Azra Izin', '2020-02-28', '08:45:40', NULL, NULL, '0'),
(888, 89, 5, 5, 158, 'organ pernapasan manusia', 1, '', 'Direct Learning', '', 'Group Discussion', 23, 0, '', '2020-02-28', '08:45:55', NULL, NULL, '0'),
(889, 91, 8, 13, 206, 'Regulasi', 2, 'Regulasi', 'Direct Learning', '', 'Lecture', 25, 2, 'taufik\r\nilviani', '2020-02-28', '08:47:14', NULL, NULL, '0'),
(890, 85, 4, 3, 139, 'sistem organisasi kehidupan', 2, 'sistem organ manusia', 'Direct Learning', '', 'Demonstration', 18, 1, 'nabillah sakit', '2020-02-28', '08:50:09', NULL, NULL, '0'),
(891, 85, 4, 3, 139, 'sistem organisasi kehidupan', 2, 'sistem organ manusia', 'Direct Learning', '', 'Demonstration', 18, 1, 'nabillah sakit', '2020-02-28', '08:50:09', NULL, NULL, '0'),
(892, 87, 6, 7, 173, 'latihan soal simulasi', 2, 'latihan soal simulasi', 'Direct Learning', 'soal dinas', 'Lecture', 12, 10, '', '2020-02-28', '08:55:20', NULL, NULL, '0'),
(893, 94, 5, 6, 170, 'Teks ulasan', 1, 'Review pembelajaran', 'Direct Learning', 'Buku', 'Lecture', 20, 4, 'Indriani dan Sania=Izin\r\nMazaya=sakit\r\nHafiz=tanpa keterangan', '2020-02-28', '08:45:45', NULL, NULL, '0'),
(894, 103, 5, 4, 147, 'Lingkaran', 1, 'Unsur-unsur Lingkaran', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 20, 2, 'Athaya (Izin)\r\nFadhil (Sakit)', '2020-02-28', '09:16:30', NULL, NULL, '0'),
(895, 92, 5, 6, 168, 'tenses', 2, 'exercise present continuous tense', 'Direct Learning', 'ebook', 'Lecture', 21, 3, '', '2020-02-28', '09:17:09', NULL, NULL, '0'),
(896, 86, 6, 9, 194, 'Variasi kata dan kalimat part 2', 1, '', 'Direct Learning', '', 'Lecture', 17, 7, '', '2020-02-28', '08:52:42', NULL, NULL, '0'),
(897, 96, 8, 13, 207, 'review materi bab asam basa', 1, '', NULL, '', 'Lecture', 25, 2, 'Ilviani (i), Taufik (i)', '2020-02-28', '09:40:16', NULL, NULL, '0'),
(898, 85, 4, 2, 132, 'sistem organisasi kehidupan', 1, 'jaringan tumbuhan dan hewan', 'Direct Learning', '', 'Demonstration', 18, 1, 'adzra izin', '2020-02-28', '09:44:25', NULL, NULL, '0'),
(899, 104, 8, 12, 221, 'KUIS tentang kependudukan Jepang', 3, '', NULL, '', NULL, 24, 1, 'Haikal sakit\r\ntsabit terlambat, katanya ke RS', '2020-02-28', '09:46:10', NULL, NULL, '0'),
(900, 88, 6, 8, 185, 'Review materi', 2, '', NULL, '', NULL, 14, 10, '', '2020-02-28', '09:57:37', NULL, NULL, '0'),
(901, 101, 7, 10, 274, 'narrative text', 1, 'kinds of narrative text :&lt;br&gt;1. fairytale&lt;br&gt;2. myths&lt;br&gt;3. legend&lt;br&gt;4. fabel', 'Inquiry Learning', '', 'Lecture', 14, 2, 'Lukman Nul Hakim (izin)\r\nJihad Faturrahman (sakit)', '2020-02-28', '09:28:22', NULL, NULL, '0'),
(902, 94, 5, 4, 154, 'Teks ulasan', 2, 'Presentasi hasil karya tulis ulasan', 'Problem Based Learning', 'Buku', 'Demonstration', 20, 2, 'Lancar.', '2020-02-28', '09:24:39', NULL, NULL, '0'),
(903, 87, 6, 9, 195, 'latihan soal simulasi', 2, 'latihan soal simulasi', 'Direct Learning', 'soal dinas', 'Lecture', 17, 7, 'maaf mr lupa login.. langsung ngajar aja tadi.. :))', '2020-02-28', '10:10:26', NULL, NULL, '0'),
(904, 103, 5, 5, 155, 'Lingkaran', 2, 'Unsur-Unsur Lingkaran', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 23, 1, 'Baim (Tanpa Kabar)', '2020-02-28', '10:16:04', NULL, NULL, '0'),
(905, 93, 4, 3, 146, 'latihan soal', 2, '', 'Problem Based Learning', '', 'Lecture', 17, 2, '', '2020-02-28', '10:17:20', NULL, NULL, '0'),
(906, 102, 7, 10, 276, 'Daily Exam Math', 2, 'Daily Exam Math', 'Problem Based Learning', 'Intan pariwara matematika kelas 7', 'Group Discussion', 16, 2, 'Jihat Sakit\r\nHakim Izin', '2020-02-28', '10:32:57', NULL, NULL, '0'),
(907, 102, 7, 10, 276, 'Daily Exam Math', 2, 'Daily Exam Math', 'Problem Based Learning', 'Intan pariwara matematika kelas x', 'Group Discussion', 16, 2, 'Jihat Sakit\r\nHakim Izin', '2020-02-28', '10:36:00', NULL, NULL, '0'),
(908, 91, 7, 11, 263, 'animalia (latihan vertebrata)', 0, '', 'Direct Learning', '', 'Lecture', 15, 4, 'Adzim sakit :(\r\nRafii (?)\r\nNadia (izin)\r\nArini putri (sakit)', '2020-02-28', '10:22:23', NULL, NULL, '0'),
(909, 96, 8, 13, 207, 'lanjut review materi garam', 1, '', 'Direct Learning', '', 'Lecture', 25, 2, 'Ilviani (i), Taufik (i)', '2020-02-28', '11:20:41', NULL, NULL, '0'),
(910, 93, 4, 2, 138, 'ulangan harian', 2, '', 'Problem Based Learning', '', 'Lecture', 18, 1, '', '2020-02-28', '11:40:44', NULL, NULL, '0'),
(911, 88, 6, 8, 185, 'Variasi kata dan kalimat', 2, '', 'Direct Learning', '', 'Lecture', 14, 10, '', '2020-02-28', '10:57:27', NULL, NULL, '0'),
(912, 103, 5, 6, 163, 'Teorema Phytagoras', 2, 'Soal Latihan Akhir Bab', 'Direct Learning', 'Buku Intan Pariwara Kelas 8 Semester 2', 'Lecture', 22, 2, 'Hafiz (Tanpa Keterangan)\r\nMazaya (Sakit)', '2020-02-28', '11:52:58', NULL, NULL, '0'),
(913, 101, 7, 11, 266, 'Narrative text', 1, '1. Purpose of Narrative text&amp;nbsp;&lt;br&gt;2. Characteristics of narrative text', 'Inquiry Learning', '', NULL, 15, 4, 'Nadia Rahma (izin)\r\nArini Putri (sakit)\r\nM. Fauzan Adzim (sakit)\r\nM. Rafii', '2020-02-28', '11:19:42', NULL, NULL, '0'),
(914, 84, 6, 8, 182, 'materi shalat dan prakteknya', 2, 'materi shalat dan prakteknya', 'Direct Learning', 'Buku PAI', 'Demonstration', 21, 0, '', '2020-02-28', '13:31:15', NULL, NULL, '0'),
(915, 93, 6, 9, 201, 'sistem hukum indonesia\r\nnilai dasar Pancasila', 0, '', NULL, '', NULL, 15, 9, '', '2020-02-28', '13:46:21', NULL, NULL, '0'),
(916, 96, 8, 13, 207, 'lanjut review materi buffer', 2, '', NULL, '', 'Lecture', 24, 3, 'Taufik (i), Ilviani (i), dan Anisa (s)', '2020-02-28', '14:09:29', NULL, NULL, '0'),
(917, 104, 6, 7, 181, 'Interaksi sosial dan interaksi antar ruang', 2, '', NULL, '', NULL, 0, 0, 'sakit: hafiz, marsya, zahro, valentiono, zahra\r\nizin: M alwi\r\nTanpa keterangan: Gilang, nafis, naura, siti zulaikha\r\nanis tidak mengikuti pembelajaran.', '2020-02-28', '14:33:12', NULL, NULL, '0'),
(918, 98, 8, 12, 218, 'Perdagangan Internasional', 4, 'Menghitung Pajak PBB&lt;br&gt;A. Pengertian Perdagangan Internasional&lt;br&gt;B. Faktor-faktor Pendorong Perdagangan Internasional', NULL, '', NULL, 0, 1, 'Haikal (Sakit)', '2020-02-28', '14:35:30', NULL, NULL, '0'),
(919, 87, 6, 8, 184, 'latihan soal simulasi', 2, 'latihan soal simulasi', 'Direct Learning', 'soal dinas', 'Lecture', 13, 11, '', '2020-02-28', '14:58:31', NULL, NULL, '0'),
(920, 86, 6, 7, 172, 'Variasi kata dan kalimat part II', 2, '', 'Direct Learning', '', 'Lecture', 11, 11, '', '2020-02-28', '15:00:31', NULL, NULL, '0'),
(921, 88, 6, 9, 196, 'cermin', 2, '', NULL, '', NULL, 0, 0, '', '2020-02-28', '15:36:58', NULL, NULL, '0'),
(922, 100, 4, 2, 136, 'Daily test Chapter 5', 2, '', 'Direct Learning', 'Internet', 'Lecture', 17, 6, 'Adzra, Yovie dan Syifa tidak masuk', '2020-03-02', '08:49:59', NULL, NULL, '0'),
(923, 85, 4, 3, 139, 'sistem organisasi kehidupan', 2, 'daily test', NULL, '', NULL, 18, 1, 'alexa tanpa keterangan', '2020-03-02', '08:48:36', NULL, NULL, '0'),
(924, 89, 5, 4, 150, 'organ pernapasan', 2, '', 'Direct Learning', 'ebook', 'Lecture', 21, 1, '', '2020-03-02', '08:51:29', NULL, NULL, '0'),
(925, 96, 7, 11, 264, 'Kisi-kisi Uts', 2, '', 'Direct Learning', '', 'Group Discussion', 18, 1, 'Diva izin ngambil buku', '2020-03-02', '08:52:11', NULL, NULL, '0'),
(926, 101, 7, 10, 274, 'type of text', 2, 'narrative text', 'Direct Learning', 'ebook', 'Lecture', 13, 3, 'ami: izin, nabila: sakit, naila: izin, silva: terlambat', '2020-03-02', '08:51:25', NULL, NULL, '0'),
(927, 95, 8, 12, 216, 'RESENSI', 2, 'MATERI', NULL, 'E-BOOK', 'Demonstration', 20, 5, '', '2020-03-02', '08:56:15', NULL, NULL, '0'),
(928, 88, 8, 13, 214, 'Ulangan Gas Ideal dan Termodinamika', 2, '', 'Discovery Learning', '', NULL, 17, 10, '', '2020-03-02', '09:03:10', NULL, NULL, '0'),
(929, 93, 7, 10, 273, 'integrasi nasional', 2, '', 'Direct Learning', '', 'Lecture', 12, 4, '', '2020-03-02', '09:43:16', NULL, NULL, '0'),
(930, 94, 5, 5, 162, 'Teks Ulasan', 2, 'Mengulas karya (presentation)', 'Project Based Learning', 'Buku dan internet', 'Group Discussion', 18, 5, 'Sadit=izin\r\nBaim=sakit\r\nRizky Syarif, Rif&#039;at, Salma=tidak hadir tanpa keterangan', '2020-03-02', '08:49:08', NULL, NULL, '0'),
(931, 103, 5, 6, 163, 'Lingkaran', 2, 'Pengenalan Unsur-Unsur Lingkaran', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 19, 5, 'Ridha (Tanpa Keterangan)\r\nDhelvina (Tanpa Keterangan)\r\nGafhira (Izin)\r\nIndriana (Izin)\r\nNabila (Tanpa Keterangan)\r\nRadit (Izin)', '2020-03-02', '10:00:28', NULL, NULL, '0'),
(932, 91, 9, 15, 238, 'Pembahasan soal simulasi', 2, '', 'Direct Learning', '', 'Lecture', 7, 3, 'Rizky (alpa)\r\ndhea kamila (izin)\r\nrossanda (izin)', '2020-03-02', '10:15:07', NULL, NULL, '0'),
(933, 89, 5, 5, 158, 'penapasan', 2, '', 'Direct Learning', 'ebook', 'Lecture', 19, 19, '', '2020-03-02', '10:39:42', NULL, NULL, '0'),
(934, 85, 4, 2, 132, 'sistem organisasi kehidupan', 2, 'organ dan sistem organ', 'Direct Learning', 'ppt', 'Demonstration', 16, 4, 'yovie sakit\r\nsyifa ijin', '2020-03-02', '10:39:38', NULL, NULL, '0'),
(935, 95, 4, 1, 124, 'fabel', 2, 'materi', 'Inquiry Learning', 'e-book', 'Experiment', 17, 2, '', '2020-03-02', '10:42:58', NULL, NULL, '0'),
(936, 96, 8, 13, 207, 'kisi-kisi uts', 2, '', 'Direct Learning', '', 'Lecture', 17, 10, '', '2020-03-02', '11:07:13', NULL, NULL, '0'),
(937, 94, 5, 6, 170, 'Teks ulasan', 2, 'Daily test', 'Direct Learning', 'Buku', NULL, 18, 6, 'Dhelvina, Ghafira, Indriana, Radit=izin\r\nSalsa dan Ridho=tanpa keterangan', '2020-03-02', '10:40:06', NULL, NULL, '0'),
(938, 84, 8, 13, 213, 'materi shalat  dan prakteknya', 2, 'materi shalat&amp;nbsp; dan prakteknya', 'Discovery Learning', '', 'Demonstration', 17, 10, '', '2020-03-02', '11:48:29', NULL, NULL, '0'),
(939, 96, 7, 11, 264, 'kisi-kisi uts', 2, '', 'Direct Learning', '', 'Lecture', 19, 0, '', '2020-03-02', '11:50:10', NULL, NULL, '0'),
(940, 103, 5, 4, 147, 'Lingkaran', 2, 'Pengenalan Unsur-Unsur Lingkaran dan Latihan', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 19, 3, 'Athaya (Izin)\r\nYazid (Sakit)\r\nNurul (Izin)', '2020-03-02', '11:49:44', NULL, NULL, '0'),
(941, 95, 7, 10, 272, 'DEBAT', 2, 'LATIHAN DEBAT', 'Inquiry Learning', '', 'Experiment', 14, 2, '', '2020-03-02', '12:00:57', NULL, NULL, '0'),
(942, 104, 9, 14, 258, 'latihan soal ', 1, '', NULL, '', NULL, 4, 2, 'Ibnu dan fitria izin', '2020-03-02', '12:10:47', NULL, NULL, '0'),
(943, 104, 9, 14, 258, 'Latihan soal', 1, '', NULL, '', NULL, 5, 1, 'Ibnu izin', '2020-03-02', '12:12:03', NULL, NULL, '0'),
(944, 92, 5, 4, 152, 'tenses', 2, 'present continuous tense', 'Direct Learning', 'ebook', 'Lecture', 19, 3, '', '2020-03-02', '13:16:37', NULL, NULL, '0'),
(945, 89, 5, 6, 166, 'pernapasan', 2, '', 'Direct Learning', 'ebook', 'Lecture', 19, 5, '', '2020-03-02', '13:15:23', NULL, NULL, '0'),
(946, 85, 4, 1, 125, 'sistem organisasi kehidupan', 4, 'daily test', NULL, '', NULL, 17, 2, 'annisa nur rahim sakit\r\nRahmad yusuf ijin', '2020-03-02', '13:18:32', NULL, NULL, '0'),
(947, 85, 4, 1, 125, 'sistem organisasi kehidupan', 4, 'daily test', NULL, '', NULL, 17, 2, 'annisa nur rahim sakit\r\nRahmad yusuf ijin', '2020-03-02', '13:18:32', NULL, NULL, '0'),
(948, 85, 4, 1, 125, 'sistem organisasi kehidupan', 4, 'daily test', NULL, '', NULL, 17, 2, 'annisa nur rahim sakit\r\nRahmad yusuf ijin', '2020-03-02', '13:18:32', NULL, NULL, '0'),
(949, 85, 4, 1, 125, 'sistem organisasi kehidupan', 4, 'daily test', NULL, '', NULL, 17, 2, 'annisa nur rahim sakit\r\nRahmad yusuf ijin', '2020-03-02', '13:18:32', NULL, NULL, '0'),
(950, 85, 4, 1, 125, 'sistem organisasi kehidupan', 4, 'daily test', 'Direct Learning', '', 'Lecture', 17, 2, 'annisa nur rahim sakit\r\nRahmad yusuf ijin', '2020-03-02', '13:18:32', NULL, NULL, '0'),
(951, 85, 4, 1, 125, 'sistem organisasi kehidupan', 4, 'daily test', 'Direct Learning', '', 'Lecture', 17, 2, 'annisa nur rahim sakit\r\nRahmad yusuf ijin', '2020-03-02', '13:18:32', NULL, NULL, '0'),
(952, 85, 4, 1, 125, 'sistem organisasi kehidupan', 4, 'daily test', 'Direct Learning', '', 'Lecture', 17, 2, 'annisa nur rahim sakit\r\nRahmad yusuf ijin', '2020-03-02', '13:18:32', NULL, NULL, '0'),
(953, 85, 4, 1, 125, 'sistem organisasi kehidupan', 4, 'daily test', 'Direct Learning', '', 'Lecture', 17, 2, 'annisa nur rahim sakit\r\nRahmad yusuf ijin', '2020-03-02', '13:18:32', NULL, NULL, '0'),
(954, 85, 4, 1, 125, 'sistem organisasi kehidupan', 4, 'daily test', 'Direct Learning', '', 'Lecture', 17, 2, 'annisa nur rahim sakit\r\nRahmad yusuf ijin', '2020-03-02', '13:18:32', NULL, NULL, '0'),
(955, 85, 4, 1, 125, 'sistem organisasi kehidupan', 4, 'daily test', 'Direct Learning', '', 'Lecture', 17, 2, 'annisa nur rahim sakit\r\nRahmad yusuf ijin', '2020-03-02', '13:18:32', NULL, NULL, '0'),
(956, 85, 4, 1, 125, 'sistem organisasi kehidupan', 4, 'daily test', 'Direct Learning', '', 'Lecture', 17, 2, 'annisa nur rahim sakit\r\nRahmad yusuf ijin', '2020-03-02', '13:18:32', NULL, NULL, '0'),
(957, 85, 4, 1, 125, 'sistem organisasi kehidupan', 4, 'daily test', 'Direct Learning', '', 'Lecture', 17, 2, 'annisa nur rahim sakit\r\nRahmad yusuf ijin', '2020-03-02', '13:18:32', NULL, NULL, '0'),
(958, 85, 4, 1, 125, 'sistem organisasi kehidupan', 4, 'daily test', 'Direct Learning', '', 'Lecture', 17, 2, 'annisa nur rahim sakit\r\nRahmad yusuf ijin', '2020-03-02', '13:18:32', NULL, NULL, '0'),
(959, 85, 4, 1, 125, 'sistem organisasi kehidupan', 4, 'daily test', 'Direct Learning', '', 'Lecture', 17, 2, 'annisa nur rahim sakit\r\nRahmad yusuf ijin', '2020-03-02', '13:18:32', NULL, NULL, '0'),
(960, 85, 4, 1, 125, 'sistem organisasi kehidupan', 4, 'daily test', 'Direct Learning', '', 'Lecture', 17, 2, 'annisa nur rahim sakit\r\nRahmad yusuf ijin', '2020-03-02', '13:18:32', NULL, NULL, '0'),
(961, 85, 4, 1, 125, 'sistem organisasi kehidupan', 4, 'daily test', 'Direct Learning', '', 'Lecture', 17, 2, 'annisa nur rahim sakit\r\nRahmad yusuf ijin', '2020-03-02', '13:18:32', NULL, NULL, '0'),
(962, 104, 8, 12, 224, 'Reintegrasi', 1, '', NULL, '', NULL, 23, 3, 'Rizki, Olya, dan Dana tidak hadir', '2020-03-02', '13:42:49', NULL, NULL, '0'),
(963, 84, 8, 12, 223, 'materi shalat dan prakteknya', 0, 'materi shalat dan prakteknya', 'Direct Learning', '', 'Demonstration', 20, 5, '', '2020-03-02', '14:02:08', NULL, NULL, '0'),
(964, 95, 9, 15, 237, 'Membahas materi ', 2, 'materi UN', 'Inquiry Learning', 'buku detik-detik UN', 'Demonstration', 7, 3, '', '2020-03-02', '14:12:13', NULL, NULL, '0'),
(965, 95, 9, 14, 249, 'meteri UN', 2, 'membahas materi UN', 'Inquiry Learning', 'buku detik-detik', 'Experiment', 5, 1, '', '2020-03-02', '14:13:55', NULL, NULL, '0'),
(966, 94, 5, 5, 162, 'Teks persuasif', 2, 'Pengantar dan diskusi kelompok', 'Problem Based Learning', 'Buku', 'Group Discussion', 18, 6, 'Lancar', '2020-03-02', '13:30:22', NULL, NULL, '0'),
(967, 92, 5, 5, 160, 'tenses', 2, 'present continuous tense', 'Direct Learning', 'ebook', 'Lecture', 18, 5, '', '2020-03-02', '14:24:42', NULL, NULL, '0'),
(968, 103, 5, 6, 163, 'Lingkaran', 2, 'Soal Latihan Unsur-Unsur Lingkaran', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 18, 6, 'Ridho (Tanpa Kabar)\r\nDhelvina (Izin)\r\nGafhira (Izin)\r\nIndriana (Izin)\r\nNabila (Tanpa Keterangan)\r\nRadit (IZIN)', '2020-03-02', '15:18:03', NULL, NULL, '0'),
(969, 94, 5, 4, 154, 'Ulasan', 2, 'Daily test', 'Direct Learning', '', 'Lecture', 20, 2, 'Lancar', '2020-03-02', '14:30:29', NULL, NULL, '0'),
(970, 104, 7, 10, 281, 'Latihan mandiri membuat kuesioner', 2, '', NULL, '', NULL, 15, 1, 'Ami sakit', '2020-03-02', '15:39:45', NULL, NULL, '0'),
(971, 102, 4, 2, 133, 'Bruto, neto, dan tara', 2, 'Bruto, neto, dan tara', 'Problem Based Learning', 'Intan pariwara Matematika kelas 7', 'Group Discussion', 19, 3, 'Syifa sakit\r\nAzra Sakit\r\nAlif sakit', '2020-03-03', '08:46:26', NULL, NULL, '0'),
(972, 84, 4, 1, 126, 'lanjutan materi dan praktek shalat', 2, 'lanjutan materi dan praktek shalat', 'Direct Learning', 'Buku PAI', 'Demonstration', 19, 0, '', '2020-03-03', '08:49:31', NULL, NULL, '0'),
(973, 89, 5, 5, 158, 'mekanisme pernapasan', 2, '', 'Direct Learning', 'ebook', 'Lecture', 23, 0, '', '2020-03-03', '08:53:58', NULL, NULL, '0'),
(974, 96, 7, 11, 282, 'diskusi gaya konservatif', 2, '', 'Inquiry Learning', '', 'Group Discussion', 19, 0, '', '2020-03-03', '08:59:08', NULL, NULL, '0'),
(975, 92, 5, 6, 168, 'tenses', 2, 'present continuous', 'Direct Learning', 'ebook', 'Lecture', 20, 4, '', '2020-03-03', '08:58:38', NULL, NULL, '0'),
(976, 104, 8, 12, 220, 'Latihan soal', 2, '', NULL, '', NULL, 23, 2, 'Rizka sakit\r\nalfi izin latihan osk', '2020-03-03', '08:56:16', NULL, NULL, '0'),
(977, 93, 7, 11, 265, 'integrasi naional', 2, '', 'Direct Learning', '', 'Lecture', 19, 0, '', '2020-03-03', '09:34:22', NULL, NULL, '0'),
(978, 103, 5, 4, 147, 'Lingkaran', 2, 'Hubungan Sudut Pusat dan Sudut Keliling yang menghadap busur yang sama', 'Direct Learning', 'Buku LKS Intan Pariawara Kelas 8 Semester 2', 'Lecture', 19, 3, 'Yazid (Izin)\r\nAthaya (izin)\r\nAhmad (Sakit)', '2020-03-03', '10:08:18', NULL, NULL, '0'),
(979, 98, 8, 12, 218, 'Sejarah Uang', 2, '', NULL, '', NULL, 1, 0, 'Monica', '2020-03-03', '10:12:16', NULL, NULL, '0'),
(980, 98, 8, 12, 218, 'Sejarah Uang', 2, '', NULL, '', NULL, 1, 0, 'Monica', '2020-03-03', '10:12:16', NULL, NULL, '0'),
(981, 102, 4, 3, 140, 'Bruto, neto dan tara', 2, 'Bruto, neto dan tara', 'Problem Based Learning', 'Intan Pariwara matematika kelas 7', 'Group Discussion', 19, 1, 'nabilla Sakit', '2020-03-03', '10:32:18', NULL, NULL, '0'),
(982, 84, 4, 2, 135, 'lanjutan Materi Shalat dan prakteknya', 2, 'lanjutan Materi Shalat dan prakteknya', 'Direct Learning', 'Buku PAI', 'Demonstration', 16, 3, '', '2020-03-03', '10:33:22', NULL, NULL, '0'),
(983, 92, 5, 4, 152, 'tenses', 2, 'present continuous tense', 'Direct Learning', 'ebook', 'Lecture', 20, 2, '', '2020-03-03', '10:38:12', NULL, NULL, '0'),
(984, 94, 5, 6, 170, 'Ulasan', 2, 'Daily test', NULL, 'buku', NULL, 0, 0, 'Indriana=izin\r\nAmel, Ridha, Salsa=tanpa keterangan', '2020-03-03', '10:35:23', NULL, NULL, '0'),
(985, 103, 5, 5, 155, 'Lingkaran', 2, 'Hubungan Sudut Pusat dan Sudut Keliling', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 23, 0, 'Lengkap', '2020-03-03', '11:52:32', NULL, NULL, '0'),
(986, 91, 9, 15, 238, 'review  soal simulasi biologi', 2, '', 'Direct Learning', '', 'Lecture', 10, 0, '', '2020-03-03', '11:56:01', NULL, NULL, '0'),
(987, 102, 4, 1, 123, 'Aritmetika Sosial', 2, 'Aritmetika Sosial', 'Problem Based Learning', 'Intan pariwara matematika kelas 7', 'Group Discussion', 19, 0, '', '2020-03-03', '13:06:46', NULL, NULL, '0'),
(988, 84, 4, 3, 143, 'lanjutan materi dan praktek shalat', 2, 'Lanjutan materi dan praktek shalat', 'Direct Learning', 'Buku PAI', 'Demonstration', 19, 0, '', '2020-03-03', '13:05:10', NULL, NULL, '0'),
(989, 89, 5, 4, 150, 'mekanisme pernapasan', 2, '', 'Inquiry Learning', '', 'Group Discussion', 19, 3, '', '2020-03-03', '13:15:16', NULL, NULL, '0'),
(990, 88, 8, 13, 214, 'penerapan gelombang dan ulangan susulan termodinamika', 2, '', NULL, '', NULL, 27, 0, '', '2020-03-03', '13:18:54', NULL, NULL, '0'),
(991, 104, 7, 10, 280, 'latihan soal', 2, 'latihan soal', NULL, '', NULL, 16, 0, '', '2020-03-03', '13:43:05', NULL, NULL, '0'),
(992, 94, 5, 5, 162, 'Ulasan', 2, 'Daily test', NULL, '', NULL, 23, 0, 'Lancar\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nLancar\r\n', '2020-03-03', '13:13:09', NULL, NULL, '0'),
(993, 103, 5, 6, 163, 'Lingkaran', 2, 'Hubungan Sudut Pusat dan Sudut Keliling Lingkaran yang Menghadap Busur yang sama', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 20, 4, 'Amel (Tanpa Keterangan)\r\nRidho (Tanpa Keterangan)\r\nIndriana (Izin)\r\nSalsa (Tanpa Keterangan)', '2020-03-03', '13:55:36', NULL, NULL, '0'),
(994, 102, 4, 3, 140, 'Aritmetika Sosial', 2, 'Aritmetika Sosial', 'Problem Based Learning', 'Intan pariwara matematika kelas 7', 'Group Discussion', 20, 0, '', '2020-03-04', '08:44:34', NULL, NULL, '0'),
(995, 100, 4, 2, 136, 'Chapter 6, action people', 2, '', 'Direct Learning', 'Ebook', 'Group Discussion', 17, 2, 'Adzra dan Syifa tidak hadir', '2020-03-04', '08:45:41', NULL, NULL, '0'),
(996, 92, 5, 6, 168, 'tenses', 2, 'changing the sentences into positive, negative, and interrogative form', 'Direct Learning', 'ebook and internet', 'Lecture', 23, 1, '', '2020-03-04', '08:47:42', NULL, NULL, '0'),
(997, 98, 7, 11, 267, 'Latihan Pengaruh datangnya budaya India ke Nusantara', 2, '', NULL, '', NULL, 0, 0, 'Hadir Semua', '2020-03-04', '08:50:22', NULL, NULL, '0'),
(998, 85, 4, 1, 125, 'interaksi makhluk hidup', 2, 'komponen biotk dan abiotik, interaksi mahkluk hidup&lt;br&gt;', 'Direct Learning', 'ppt, ebook', 'Demonstration', 19, 0, 'cukup', '2020-03-04', '08:47:30', NULL, NULL, '0'),
(999, 84, 5, 4, 148, 'Materi shalat dan prakteknya', 2, 'Materi shalat dan prakteknya', 'Discovery Learning', 'Buku PAI', 'Demonstration', 21, 1, 'yang tidak hadir : athaya', '2020-03-04', '08:41:40', NULL, NULL, '0'),
(1000, 95, 7, 10, 272, 'DEBAT', 2, 'PRAKTIK DEBAT', 'Inquiry Learning', '', 'Experiment', 14, 2, '', '2020-03-04', '08:57:31', NULL, NULL, '0'),
(1001, 104, 8, 12, 220, 'Latihan soal ', 2, '', NULL, '', NULL, 25, 0, 'Olya, Melly, Asipa, Najma dan Rini terlambat masuk kelas', '2020-03-04', '09:24:48', NULL, NULL, '0'),
(1002, 102, 4, 1, 123, 'Lattice Exam Math', 2, 'Lattice Exam Math', 'Problem Based Learning', 'Intan pariwara matematika kelas 7', 'Group Discussion', 19, 0, '', '2020-03-04', '10:33:43', NULL, NULL, '0'),
(1003, 89, 5, 5, 158, 'peyakit pada sistem pernapasan', 2, '', 'Direct Learning', 'ebook', 'Lecture', 22, 1, '', '2020-03-04', '10:36:59', NULL, NULL, '0'),
(1004, 92, 5, 4, 152, 'tenses', 2, 'matching pictures with present continuous sentence', 'Direct Learning', 'ebook and internet', 'Lecture', 21, 1, '', '2020-03-04', '10:40:03', NULL, NULL, '0'),
(1005, 98, 8, 12, 218, 'Ulangan Harian Perpajakan', 2, '', NULL, '', NULL, 0, 0, 'Hadir Semua', '2020-03-04', '11:08:46', NULL, NULL, '0'),
(1006, 94, 4, 2, 131, 'Puisi Rakyat', 2, 'Daily test', NULL, '', NULL, 17, 2, 'Syifa dan Adzra=izin', '2020-03-04', '10:36:09', NULL, NULL, '0'),
(1007, 84, 7, 10, 277, 'lanjutan materi shalat dan prakteknya', 2, 'lanjutan materi shalat dan prakteknya', 'Direct Learning', 'Buku PAI', 'Demonstration', 16, 2, '', '2020-03-04', '11:45:30', NULL, NULL, '0'),
(1008, 95, 8, 12, 216, 'karya ilmiah', 2, 'pemberian kisi-kisi', 'Inquiry Learning', 'e-book', 'Experiment', 25, 0, '', '2020-03-04', '11:50:45', NULL, NULL, '0'),
(1009, 102, 4, 2, 133, 'Lattice Exam Math', 2, 'Lattice Exam Math', 'Problem Based Learning', 'Intan Pariwara Matematika kelas 7', 'Group Discussion', 19, 2, 'Syifa Sakit\r\nAzra Sakit', '2020-03-04', '13:03:58', NULL, NULL, '0'),
(1010, 92, 5, 5, 160, 'tenses', 2, 'matching pictures with present continuous sentence', 'Direct Learning', 'ebook and internet', 'Lecture', 22, 1, '', '2020-03-04', '13:11:06', NULL, NULL, '0'),
(1011, 100, 4, 3, 141, 'Chapter 6, job/profession', 2, '', 'Direct Learning', 'Ebook', 'Group Discussion', 19, 0, 'Complete', '2020-03-04', '13:32:59', NULL, NULL, '0'),
(1012, 103, 5, 4, 147, 'Lingkaran', 2, 'Keliling Lingkaran dan Soal-soal latihan', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 21, 1, 'Athaya (Izin)', '2020-03-04', '14:13:45', NULL, NULL, '0'),
(1013, 89, 5, 6, 166, 'penyakit pernapasan', 2, '', 'Direct Learning', 'ebook', 'Lecture', 23, 1, '', '2020-03-04', '14:20:18', NULL, NULL, '0'),
(1014, 84, 5, 6, 164, 'lanjutan materi shalat dan prakteknya', 2, 'lanjutan materi shalat dan prakteknya', 'Discovery Learning', 'Buku PAI', 'Demonstration', 23, 1, '', '2020-03-04', '14:22:41', NULL, NULL, '0'),
(1015, 95, 4, 1, 124, 'FABEL', 2, 'MENGANPRESIASI SEBUAH FABEL', 'Inquiry Learning', 'E-BOOK\r\nYOUTUBE', 'Experiment', 19, 0, '', '2020-03-04', '14:30:42', NULL, NULL, '0'),
(1016, 85, 4, 3, 139, 'interaksi makhluk hidup dengan lingkungannya', 2, 'komponen biotik dan komponen abiotik&lt;br&gt;hubungan interaksi makhluk hidup', 'Direct Learning', 'ppt. ebook', 'Demonstration', 17, 2, 'shelly di uks\r\ndina di uks', '2020-03-04', '14:30:53', NULL, NULL, '0'),
(1017, 89, 5, 4, 150, 'gangguan pernapasan', 2, '', 'Direct Learning', 'ebook', 'Lecture', 21, 1, '', '2020-03-04', '14:42:05', NULL, NULL, '0'),
(1018, 87, 6, 8, 184, 'UN QUARANTINE III (MATH DAY -1) ', 8, 'SOAL-SOAL LATIHAN UNBK', NULL, 'BUKU DETIK-DETIK UNBK', NULL, 23, 1, 'Maaf ya mr, tadi lupa login. Kelasnya mulai jam 09.00 - 15.30 sebenarnya. Saya kira karantina ngk usah login e journal', '2020-03-04', '15:26:31', NULL, NULL, '0'),
(1019, 103, 5, 5, 155, 'Lingkaran', 2, 'Keliling Lingkaran', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 22, 1, 'Andini (Sakit)', '2020-03-04', '15:18:39', NULL, NULL, '0'),
(1020, 100, 4, 1, 127, 'ask and give information about profession', 2, '', 'Direct Learning', 'Ebook', 'Group Discussion', 19, 0, 'Complete', '2020-03-05', '08:44:38', NULL, NULL, '0'),
(1021, 95, 8, 13, 205, 'Karya Ilmiah\r\n', 2, 'Kisi-kisi dan Pembahasan materi untuk UTS', 'Inquiry Learning', 'e-book', 'Demonstration', 25, 7, '', '2020-03-05', '08:45:36', NULL, NULL, '0'),
(1022, 85, 4, 2, 132, 'sistem organisasi kehidupan', 2, 'sistem organ manusia', 'Direct Learning', '', NULL, 16, 13, 'syifa ijin\r\nadzra ijin\r\nakhtar sakit', '2020-03-05', '08:49:30', NULL, NULL, '0'),
(1023, 101, 7, 11, 266, 'Narrative text  ', 2, 'Tell story about narrative text by using 5W + 1 H question', 'Inquiry Learning', '', NULL, 19, 0, '', '2020-03-05', '08:37:10', NULL, NULL, '0'),
(1024, 93, 8, 12, 217, 'ancaman ipoleksosbudhankam', 2, '', 'Direct Learning', '', 'Lecture', 24, 1, 'alfi prepare osn', '2020-03-05', '09:39:56', NULL, NULL, '0'),
(1025, 95, 7, 11, 262, 'DEBAT', 4, 'PRAKTIK DEBAT&lt;br&gt;PEMBAHASAN KISI KISI UN', 'Inquiry Learning', '', 'Experiment', 19, 0, '', '2020-03-05', '09:43:44', NULL, NULL, '0'),
(1026, 104, 7, 10, 280, 'Mengjawab latihan soal', 2, '', NULL, '', NULL, 13, 3, 'Hakim izin\r\nami izin\r\nraja latiha osk', '2020-03-05', '10:14:56', NULL, NULL, '0'),
(1027, 103, 8, 12, 222, 'Turunan Fungsi Aljabar', 2, 'Nilai Maksimum dan Minimum', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 11 Semester 2', 'Lecture', 24, 1, 'Lulu (Sakit)', '2020-03-05', '10:20:21', NULL, NULL, '0'),
(1028, 84, 5, 5, 156, 'lanjutan materi shalat dan prakteknya', 2, 'lanjutan materi shalat dan prakteknya', 'Discovery Learning', '', 'Demonstration', 22, 1, 'baim tidak hadir', '2020-03-05', '10:28:04', NULL, NULL, '0'),
(1029, 100, 4, 2, 136, 'Ask and give information related to job/profession', 2, '', 'Direct Learning', 'Ebook', 'Group Discussion', 16, 3, 'Adzra, Syifa and Akhtar didnt attend the class', '2020-03-05', '10:38:38', NULL, NULL, '0'),
(1030, 93, 5, 4, 153, 'kebangkitan nasional', 2, '', 'Direct Learning', '', 'Lecture', 20, 2, 'andre\r\nathaya', '2020-03-05', '10:42:56', NULL, NULL, '0'),
(1031, 85, 4, 3, 139, 'interaksi makhluk hidup dengan lingkungannya', 2, 'hubungsn interaksi makhluk hidup', 'Project Based Learning', '', 'Demonstration', 0, 0, 'cukup', '2020-03-05', '10:39:21', NULL, NULL, '0'),
(1032, 85, 4, 3, 139, 'interaksi makhluk hidup dengan lingkungannya', 2, 'hubungsn interaksi makhluk hidup', 'Project Based Learning', '', 'Demonstration', 0, 0, 'cukup', '2020-03-05', '10:39:21', NULL, NULL, '0'),
(1033, 102, 4, 1, 123, 'Daily test math', 2, 'Daily test math', 'Problem Based Learning', 'intan pariwara matematika kelas 7', 'Group Discussion', 19, 0, '', '2020-03-05', '11:17:22', NULL, NULL, '0'),
(1034, 103, 8, 12, 222, 'Turunan Fungsi Aljabar', 2, 'Nilai Maksimum dan Nilai Minimum', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 24, 1, 'Lulu (Sakit)', '2020-03-05', '11:45:01', NULL, NULL, '0'),
(1035, 104, 7, 10, 280, 'melanjutkan menjawab soal', 2, '', NULL, '', NULL, 13, 3, '', '2020-03-05', '11:49:03', NULL, NULL, '0'),
(1036, 98, 8, 13, 211, 'Proklamasi Kemerdekaan Indonesia', 2, 'Peristiwa Kemerdekaan Indonesia', NULL, '', NULL, 0, 2, 'Yaya (sakit) Taufik (Izin)', '2020-03-05', '11:56:55', NULL, NULL, '0'),
(1037, 101, 7, 10, 274, 'preparation for Mid Test', 2, 'questions for Mid Test Preparation', 'Direct Learning', 'internet', 'Lecture', 14, 2, '', '2020-03-05', '11:59:11', NULL, NULL, '0'),
(1038, 102, 4, 3, 140, 'Lattice daily exam', 2, 'Lattice daily exam', 'Problem Based Learning', 'Intan Pariwara matematika kelas 7', 'Group Discussion', 19, 0, '', '2020-03-05', '13:01:45', NULL, NULL, '0'),
(1039, 85, 4, 1, 125, 'interaksi makhluk hidup dengan lingkungan', 2, 'hubungan antar makhluk hidup', 'Project Based Learning', 'ppt,ebook', 'Demonstration', 0, 0, 'cukup', '2020-03-05', '13:11:04', NULL, NULL, '0'),
(1040, 89, 5, 4, 150, 'gangguan pernapasan', 2, '', 'Direct Learning', 'ebook', 'Lecture', 20, 2, '', '2020-03-05', '13:10:36', NULL, NULL, '0'),
(1041, 93, 5, 6, 169, 'kebangkitan nasional', 2, 'periksa jawaban', 'Direct Learning', '', 'Lecture', 23, 1, '', '2020-03-05', '13:22:44', NULL, NULL, '0'),
(1042, 98, 7, 10, 279, 'Bank Sentral', 2, '', NULL, '', NULL, 0, 0, '', '2020-03-05', '14:00:51', NULL, NULL, '0'),
(1043, 103, 5, 5, 155, 'Lingkaran', 2, 'Luas Lingkaran', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 22, 1, 'Baim (Izin)', '2020-03-05', '14:23:41', NULL, NULL, '0'),
(1044, 89, 5, 6, 166, 'gangguan pernapasan', 2, '', 'Direct Learning', 'ebook', 'Lecture', 0, 0, '', '2020-03-05', '14:27:31', NULL, NULL, '0'),
(1045, 89, 5, 6, 166, 'gangguan pernapasan', 2, '', 'Direct Learning', 'ebook', 'Lecture', 0, 0, '', '2020-03-05', '14:27:31', NULL, NULL, '0'),
(1046, 89, 5, 6, 166, 'gangguan pernapasan', 2, '', 'Direct Learning', 'ebook', 'Lecture', 23, 1, '', '2020-03-05', '14:27:31', NULL, NULL, '0'),
(1047, 89, 5, 6, 166, 'gangguan pernapasan', 2, '', 'Direct Learning', 'ebook', 'Lecture', 23, 1, '', '2020-03-05', '14:27:31', NULL, NULL, '0'),
(1048, 89, 5, 6, 166, 'gangguan pernapasan', 2, '', 'Direct Learning', 'ebook', 'Lecture', 23, 1, '', '2020-03-05', '14:27:31', NULL, NULL, '0'),
(1049, 89, 5, 6, 166, 'gangguan pernapasan', 2, '', 'Direct Learning', 'ebook', 'Lecture', 23, 1, '', '2020-03-05', '14:27:31', NULL, NULL, '0'),
(1050, 89, 5, 6, 166, 'gangguan pernapasan', 2, '', 'Direct Learning', 'ebook', 'Lecture', 23, 1, '', '2020-03-05', '14:27:31', NULL, NULL, '0'),
(1051, 89, 5, 6, 166, 'gangguan pernapasan', 2, '', 'Direct Learning', 'ebook', 'Lecture', 23, 1, '', '2020-03-05', '14:27:31', NULL, NULL, '0'),
(1052, 89, 5, 6, 166, 'gangguan pernapasan', 2, '', 'Direct Learning', 'ebook', 'Lecture', 23, 1, '', '2020-03-05', '14:27:31', NULL, NULL, '0'),
(1053, 94, 4, 2, 131, 'Fabel', 4, '1. Mengidentifikasi fabel dari film&lt;br&gt;2. Membuat peta konsep&lt;br&gt;3. Presentasi kelompok&lt;br&gt;', 'Problem Based Learning', '', 'Group Discussion', 17, 3, 'Syifa dan Adzra = izin\r\nAkhtar = sakit', '2020-03-05', '15:27:16', NULL, NULL, '0');
INSERT INTO `journal` (`journal_id`, `teacher_id`, `class_id`, `section_id`, `subject_id`, `submain_material`, `duration`, `lesson_material`, `implementation`, `reference_source`, `teaching_method`, `student_present`, `student_absent`, `description`, `date`, `time`, `date_end`, `time_end`, `file`) VALUES
(1054, 84, 7, 11, 270, 'lanjutan materi shalat dan prakteknya', 2, 'lanjutan materi shalat dan prakteknya', 'Discovery Learning', '', 'Demonstration', 19, 0, '', '2020-03-05', '14:01:26', NULL, NULL, '0'),
(1055, 104, 8, 12, 224, 'menjawab soal latihan ', 3, '', NULL, '', NULL, 24, 1, 'Lulu sakit', '2020-03-05', '15:31:53', NULL, NULL, '0'),
(1056, 89, 5, 5, 158, 'gangguan pernapasan', 1, '', 'Direct Learning', 'ebooki', 'Lecture', 22, 1, '', '2020-03-06', '08:43:11', NULL, NULL, '0'),
(1057, 102, 4, 2, 133, 'Lattice Math Exam', 2, 'Lattice Math Exam', 'Problem Based Learning', 'Intan pariwara matematika kelas 7', 'Group Discussion', 19, 0, '', '2020-03-06', '08:43:23', NULL, NULL, '0'),
(1058, 85, 4, 3, 139, 'interaksi makhluk hidup dengan lingkungannya', 2, 'hubungan antar makhluk hidup', 'Project Based Learning', 'lingkungan sekiitar, ppt', 'Demonstration', 18, 1, 'nandira tanpa keterangan', '2020-03-06', '08:53:32', NULL, NULL, '0'),
(1059, 103, 5, 4, 147, 'Lingkaran', 1, 'Luas Lingkaran', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 20, 2, 'Athaya (Izin)\r\nRafa (Izin)', '2020-03-06', '08:47:48', NULL, NULL, '0'),
(1060, 94, 5, 6, 170, 'Persuasif', 1, 'Bagi kelompok dan materi untuk presentasi', 'Problem Based Learning', '', 'Group Discussion', 24, 0, 'Lancar.', '2020-03-06', '08:47:39', NULL, NULL, '0'),
(1061, 92, 5, 6, 168, 'Tenses', 2, 'Daily test Chapter 2 Preparation&amp;nbsp;&lt;br&gt;(Present Continuous)', 'Direct Learning', 'ebook', 'Lecture', 24, 0, '', '2020-03-06', '09:16:53', NULL, NULL, '0'),
(1062, 91, 8, 13, 206, 'kisi-kisi', 2, '', 'Direct Learning', '', NULL, 25, 2, 'affan belin\r\n\r\nmaaf saya lupa nulis jurnal jd telat', '2020-03-06', '09:23:25', NULL, NULL, '0'),
(1063, 93, 4, 1, 130, 'kerja sama', 2, '', NULL, '', 'Lecture', 18, 1, '', '2020-03-06', '08:46:30', NULL, NULL, '0'),
(1064, 96, 8, 13, 207, 'Membahas kisi-kisi ', 1, '', 'Direct Learning', '', 'Group Discussion', 25, 2, 'Affan (i). Belinda (i)', '2020-03-06', '09:34:36', NULL, NULL, '0'),
(1065, 93, 4, 3, 146, 'kerja sama', 2, '', 'Direct Learning', '', 'Lecture', 19, 0, '', '2020-03-06', '09:40:19', NULL, NULL, '0'),
(1066, 91, 7, 11, 263, 'kisi-kisi', 2, '', 'Direct Learning', '', 'Lecture', 18, 1, 'Rafly sakit', '2020-03-06', '09:42:03', NULL, NULL, '0'),
(1067, 85, 4, 2, 132, 'interaksi makhluk hidup dengan lingkungan', 1, 'komponen biotik dan komponen abiotik', 'Direct Learning', '', 'Demonstration', 15, 4, 'akhtar tidak ada keterangan\r\nyovie tidak ada keterangan\r\nadzra ijin\r\nsyifa ijin', '2020-03-06', '09:44:10', NULL, NULL, '0'),
(1068, 104, 8, 12, 221, 'Membuat karangan Romusha', 1, '', NULL, '', NULL, 23, 2, 'Alfi dan wida tidak hadir', '2020-03-06', '09:58:22', NULL, NULL, '0'),
(1069, 94, 5, 4, 154, 'Persuasif', 2, '1. Review soal ulangan harian&lt;br&gt;2. Pengantar&lt;br&gt;3. Bagi kelompok dan materi teks persuasif', 'Direct Learning', '', 'Lecture', 20, 2, 'Athaya dan Rafa = izin', '2020-03-06', '09:23:29', NULL, NULL, '0'),
(1070, 103, 5, 5, 155, 'Lingkaran', 2, 'Rangkuman materi sudut pusat, sudut keliling, keliling lingkaran, luas lingkaran dan soal latihannya', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 21, 2, 'Salma (Tanpa Kabar)\r\nAdit (Izin)', '2020-03-06', '10:09:12', NULL, NULL, '0'),
(1071, 102, 7, 10, 276, 'Lattice Midterm exam', 2, 'Lattice Midterm exam', 'Problem Based Learning', 'intan pariwara matematika kelas X', 'Group Discussion', 16, 2, 'Hakim izin\r\nDhiya Sakit', '2020-03-06', '10:34:36', NULL, NULL, '0'),
(1072, 98, 8, 12, 218, 'Kisi-Kisi UTS', 5, '', NULL, '', NULL, 0, 0, 'Wida (sick) ', '2020-03-06', '10:47:21', NULL, NULL, '0'),
(1073, 101, 8, 13, 209, 'Meaningful lyrics (song and poem)', 1, 'cheking students&#039; answer together&lt;br&gt;kisi-kisi for midtest', 'Inquiry Learning', '', 'Group Discussion', 25, 2, 'Belinda (sakit)\r\nAffan (izin)', '2020-03-06', '10:38:15', NULL, NULL, '0'),
(1074, 100, 4, 1, 127, 'Talking about habits', 2, '', 'Discovery Learning', 'Ebook', 'Group Discussion', 18, 1, 'Zaidan izin', '2020-03-06', '11:01:08', NULL, NULL, '0'),
(1075, 96, 8, 13, 207, 'Kisi-kisi uts (II)', 1, '', NULL, '', NULL, 25, 2, '', '2020-03-06', '11:14:26', NULL, NULL, '0'),
(1076, 93, 4, 2, 138, 'kerja sama', 2, 'materi + tujuan negara', 'Direct Learning', '', 'Lecture', 15, 4, 'alf\r\nnajwa\r\nalmira\r\narif\r\nradit\r\nkhairil\r\nbayu\r\nannisa ica\r\nmaurel\r\nraisa\r\nrossana\r\nrafida\r\nhamam\r\npasha\r\narva\r\n', '2020-03-06', '11:23:22', NULL, NULL, '0'),
(1077, 103, 5, 6, 163, 'Lingkaran', 2, 'Keliling dan Luas Lingkaran', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 24, 0, 'Lengkapppp', '2020-03-06', '11:39:18', NULL, NULL, '0'),
(1078, 101, 7, 11, 266, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1079, 89, 5, 4, 150, 'pernapasan', 2, '', 'Direct Learning', 'ebook', 'Lecture', 22, 0, '', '2020-03-09', '08:45:28', NULL, NULL, '0'),
(1080, 102, 4, 1, 123, 'Bab 3 Garis dan Sudut', 0, 'Garis', 'Problem Based Learning', 'Intan Pariwara matematika kelas 7', 'Group Discussion', 19, 0, '', '2020-03-09', '08:50:05', NULL, NULL, '0'),
(1081, 85, 4, 3, 139, 'interaksi makluk hidup dengan lingkungannya', 2, 'simbiosis', 'Direct Learning', '', 'Demonstration', 18, 1, 'bagas tanpa keterangan', '2020-03-09', '08:51:34', NULL, NULL, '0'),
(1082, 100, 4, 2, 136, 'Games describe people, fruit, animal. vegetable', 2, '', 'Direct Learning', 'lingkungan sekitar', 'Group Discussion', 19, 0, 'Some students make noisy (bayu and arif)', '2020-03-09', '08:52:57', NULL, NULL, '0'),
(1083, 93, 8, 13, 208, 'mengawas ruang 1', 2, '', NULL, '', NULL, 0, 0, 'yassir n taufik mengikuti hataman Al Quran', '2020-03-09', '09:27:37', NULL, NULL, '0'),
(1084, 89, 5, 5, 158, 'latihan', 2, '', 'Direct Learning', '', 'Lecture', 23, 0, '', '2020-03-09', '10:38:09', NULL, NULL, '0'),
(1085, 95, 4, 1, 124, 'cerita fabel', 2, 'laihan', 'Discovery Learning', 'e-book', 'Experiment', 19, 0, '', '2020-03-09', '10:41:42', NULL, NULL, '0'),
(1086, 102, 4, 3, 140, 'Daily test bab 2 aritemetika Sosial', 2, 'Daily test bab 2 aritemetika Sosial', 'Problem Based Learning', 'Intan Pariwara matematika kelas 7', 'Group Discussion', 19, 1, '', '2020-03-09', '10:48:15', NULL, NULL, '0'),
(1087, 103, 5, 4, 147, 'Lingkaran', 2, 'Sudut pusat dan sudut keliling&lt;br&gt;Keliling Lingkaran&lt;br&gt;Luas Lingkaran', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 20, 2, 'Fatih (Sakit)\r\nNazlia (Sakit)', '2020-03-09', '10:34:26', NULL, NULL, '0'),
(1088, 94, 5, 6, 170, 'Teks Persuasi', 2, '1. Pengertian&lt;br&gt;2. Struktur&lt;br&gt;3. Kaidah&lt;br&gt;4. Menyimpulkan&lt;br&gt;Metode jigsaw', 'Problem Based Learning', 'e-book', 'Group Discussion', 22, 2, 'M. Rayhan = sakit\r\nSania = izin', '2020-03-09', '10:37:43', NULL, NULL, '0'),
(1089, 102, 4, 2, 133, 'Daily test bab 2 Aritmetika Sosial', 2, 'Daily test bab 2 Aritmetika Sosial', 'Discovery Learning', 'Intan Pariwara matematika kelas 7', 'Group Discussion', 19, 0, '', '2020-03-09', '13:00:37', NULL, NULL, '0'),
(1090, 100, 4, 3, 141, 'describing people (games)', 2, '', 'Direct Learning', 'Lingkungan sekitar', 'Group Discussion', 18, 1, 'Bagas Zikri izin', '2020-03-09', '13:05:30', NULL, NULL, '0'),
(1091, 92, 5, 4, 152, 'Daily Test Preparation', 2, 'Present Continuous', 'Direct Learning', 'ebook', 'Lecture', 20, 2, '', '2020-03-09', '13:08:52', NULL, NULL, '0'),
(1092, 85, 4, 1, 125, 'interaksi  makhluk hidup dengan linfkungannya', 2, 'simbiosis', 'Direct Learning', '', 'Demonstration', 0, 0, 'cukup', '2020-03-09', '13:12:50', NULL, NULL, '0'),
(1093, 94, 5, 5, 162, 'Teks Persuasi', 2, 'Jigsaw&lt;br&gt;1. Pengertian&lt;br&gt;2. Menyusun simpulan&lt;br&gt;3. Struktur&lt;br&gt;4. Kaidah', 'Problem Based Learning', '', 'Group Discussion', 23, 0, 'Tadi saat jam pertama jurnalnya tidak tersimpan.', '2020-03-09', '13:10:39', NULL, NULL, '0'),
(1094, 89, 5, 6, 166, 'mekanisme pernapasan', 2, '', 'Direct Learning', 'PPT', 'Lecture', 22, 2, '', '2020-03-09', '14:15:08', NULL, NULL, '0'),
(1095, 94, 5, 5, 162, 'Teks persuasi', 0, 'Presentasi materi 1-4', 'Problem Based Learning', '', 'Demonstration', 23, 0, 'Lancar', '2020-03-09', '13:15:14', NULL, NULL, '0'),
(1096, 103, 5, 6, 163, 'Lingkaran', 2, 'Soal Pemantapan Keliling Lingkaran', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 22, 2, 'Sania (Izin)\r\nM. Rayhan (Sakit)', '2020-03-09', '14:20:10', NULL, NULL, '0'),
(1097, 92, 5, 5, 160, 'Daily Test Preparation', 2, 'Present Continuous', 'Direct Learning', 'ebook', 'Lecture', 23, 0, '', '2020-03-09', '14:26:17', NULL, NULL, '0'),
(1098, 103, 5, 6, 163, 'Lingkaran ', 2, 'Soal Pemantapan Luas Lingkaran&amp;nbsp;', 'Direct Learning', 'Buku Intan Pariwara Kelas 8 Semester 2', 'Lecture', 22, 2, 'Sania (Izin)\r\nM.Rayhan (Sakit)', '2020-03-09', '14:21:53', NULL, NULL, '0'),
(1099, 94, 5, 4, 154, 'Teks persuasif', 2, 'Jigsaw&lt;br&gt;1. Pengerrtian&lt;br&gt;2. Langkah-langkah menyimpulkan&lt;br&gt;3. Struktur&lt;br&gt;4. Kaidah kebahasaan', 'Problem Based Learning', 'e-book', 'Group Discussion', 19, 3, 'Fatih dan Nazlia = sakit\r\nAndre= izin', '2020-03-09', '15:28:44', NULL, NULL, '0'),
(1100, 102, 4, 2, 133, 'Bab 3 garis dan Sudut', 2, 'garis', 'Problem Based Learning', 'Intan pariwara Matematika kelas 7', 'Group Discussion', 19, 0, '', '2020-03-10', '08:48:29', NULL, NULL, '0'),
(1101, 92, 5, 6, 168, 'Daily test 2', 2, 'Present continuous', 'Direct Learning', 'ebook', 'Lecture', 23, 1, '', '2020-03-10', '08:50:29', NULL, NULL, '0'),
(1102, 84, 4, 1, 126, 'Memahami Hukum Bacaan Nµn Sukµn/Tanwin', 2, 'Memahami Hukum Bacaan Nµn Sukµn/Tanwin', 'Discovery Learning', '', 'Demonstration', 19, 0, '', '2020-03-10', '08:49:27', NULL, NULL, '0'),
(1103, 89, 5, 5, 158, 'ulangan', 2, '', 'Direct Learning', 'ebook', 'Lecture', 22, 1, '', '2020-03-10', '08:53:37', NULL, NULL, '0'),
(1104, 103, 5, 4, 147, 'Lingkaran ', 2, 'Panjang Busur Lingkaran&amp;nbsp;', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 20, 2, 'Fira (Tanpa Kabar)\r\nFatih (Sakit)', '2020-03-10', '09:56:59', NULL, NULL, '0'),
(1105, 102, 4, 3, 140, 'Bab 2 garis dan Sudut', 2, 'Garis', 'Problem Based Learning', 'Intan pariwara matematika kelas 7', 'Group Discussion', 19, 2, '', '2020-03-10', '10:32:51', NULL, NULL, '0'),
(1106, 92, 5, 4, 152, 'Daily Test Chapter 2', 2, 'Present Continuous', 'Direct Learning', 'ebook', 'Lecture', 21, 1, '', '2020-03-10', '10:40:33', NULL, NULL, '0'),
(1107, 84, 4, 2, 135, 'Memahami Hukum Bacaan Nµn Sukµn/T±nwin', 2, 'Memahami Hukum Bacaan Nµn Sukµn/T±nwin', 'Discovery Learning', '', 'Group Discussion', 19, 0, '', '2020-03-10', '10:29:35', NULL, NULL, '0'),
(1108, 103, 5, 5, 155, 'Lingkaran ', 2, 'Panjang Busur Lingkaran&amp;nbsp;', NULL, 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 22, 1, 'Rifat (Sakit)', '2020-03-10', '11:47:23', NULL, NULL, '0'),
(1109, 95, 4, 1, 124, 'fabel', 2, 'penjelasan materi', 'Inquiry Learning', '', 'Experiment', 19, 0, '', '2020-03-10', '11:50:16', NULL, NULL, '0'),
(1110, 94, 5, 6, 170, 'Teks persuasi', 0, 'Presentasi&amp;nbsp;', 'Problem Based Learning', '', 'Demonstration', 23, 1, 'Lancar', '2020-03-10', '10:40:48', NULL, NULL, '0'),
(1111, 102, 4, 1, 123, 'Bab 3 Garis dan Sudut', 2, 'Sudut', 'Problem Based Learning', 'Intan pariwara matematika kelas 7', 'Group Discussion', 19, 0, '', '2020-03-10', '13:01:26', NULL, NULL, '0'),
(1112, 84, 4, 3, 143, 'memahami hukum bacaan nun sukun / tanwin', 2, 'memahami hukum bacaan nun sukun / tanwin', NULL, '', 'Demonstration', 18, 2, '', '2020-03-10', '12:56:05', NULL, NULL, '0'),
(1113, 103, 5, 6, 163, 'Lingkaran ', 2, 'Panjang Busur Lingkaran&amp;nbsp;', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 23, 1, 'M. Rayhan (Sakit)', '2020-03-10', '13:09:34', NULL, NULL, '0'),
(1114, 89, 5, 4, 150, 'ulangan', 2, '', 'Direct Learning', 'ebook', 'Lecture', 21, 1, '', '2020-03-10', '13:12:58', NULL, NULL, '0'),
(1115, 94, 5, 5, 162, 'Persuasi', 2, 'Latihan mandiri', 'Problem Based Learning', 'e-book', 'Lecture', 20, 4, 'Rifat=sakit\r\nKhansa, Nadia, Shafa=senam', '2020-03-10', '13:07:34', NULL, NULL, '0'),
(1116, 92, 5, 5, 160, 'Daily Test  Chapter 2', 2, 'Present Continuous', 'Direct Learning', 'ebook', 'Lecture', 22, 1, '', '2020-03-10', '14:27:05', NULL, NULL, '0'),
(1117, 85, 4, 2, 132, 'interaksi makhluk hidup dengan lingkungannya', 2, 'pengamatan&amp;nbsp;', 'Project Based Learning', '', 'Experiment', 0, 0, 'cukup', '2020-03-10', '14:28:03', NULL, NULL, '0'),
(1118, 89, 5, 6, 166, 'latihan', 2, '', 'Direct Learning', 'ebook', 'Lecture', 23, 1, '', '2020-03-10', '14:29:36', NULL, NULL, '0'),
(1119, 102, 4, 1, 123, 'Games Describing', 2, '', NULL, 'lingkungan sekitar', 'Group Discussion', 19, 0, '', '2020-03-10', '14:49:24', NULL, NULL, '0'),
(1120, 94, 5, 4, 154, 'Teks persuasi', 2, 'Presentasi', 'Problem Based Learning', 'e-book', 'Demonstration', 20, 2, 'Lancar', '2020-03-10', '14:29:18', NULL, NULL, '0'),
(1121, 85, 4, 1, 125, 'interaksi makhluk hidup dengan lingkungannya', 2, 'daily test', NULL, '', NULL, 0, 0, 'cukup', '2020-03-11', '08:46:34', NULL, NULL, '0'),
(1122, 102, 4, 3, 140, 'Bab 2 Garis dan Sudut', 2, 'Sudut', 'Problem Based Learning', 'Intan pariwara', 'Group Discussion', 19, 0, '', '2020-03-11', '08:49:16', NULL, NULL, '0'),
(1123, 92, 5, 6, 168, 'Degree of comparison', 2, 'Equality Degree', 'Direct Learning', 'ebook and internet', NULL, 23, 1, '', '2020-03-11', '08:48:52', NULL, NULL, '0'),
(1124, 84, 5, 4, 148, 'lanjutan materi shalat dan prakteknya', 2, 'lanjutan materi shalat dan prakteknya', 'Direct Learning', 'e book', 'Demonstration', 19, 3, 'yang tidak hadir:\r\nFatih (S)\r\nAthaya (S)\r\nAndre (S)', '2020-03-11', '08:47:09', NULL, NULL, '0'),
(1125, 102, 4, 1, 123, 'bab 3 Garis dan Sudut', 2, 'Sistem Sexagesimal', 'Problem Based Learning', 'Intan Pariwara', 'Group Discussion', 19, 0, '', '2020-03-11', '10:31:54', NULL, NULL, '0'),
(1126, 89, 5, 5, 158, 'projek', 2, '', NULL, '', 'Lecture', 20, 3, '', '2020-03-11', '10:37:41', NULL, NULL, '0'),
(1127, 92, 5, 4, 152, 'Degree of comparison', 2, 'Equal Degree', 'Direct Learning', 'ebook and internet', 'Lecture', 19, 3, '', '2020-03-11', '10:40:40', NULL, NULL, '0'),
(1128, 94, 4, 2, 131, 'Cerita fabel', 2, 'Penjelasan dan latihan mandiri', 'Problem Based Learning', 'e-book', 'Lecture', 18, 1, 'Maurel=izin', '2020-03-11', '10:38:37', NULL, NULL, '0'),
(1129, 102, 4, 2, 133, 'Bab 3 garis dan Sudut', 2, 'Sudut', 'Problem Based Learning', 'Intan pariwara matematika kelas 7', 'Group Discussion', 19, 2, 'Maurel izin\r\nSyifa sakit', '2020-03-11', '13:03:41', NULL, NULL, '0'),
(1130, 92, 5, 5, 160, 'Degree of Comparison', 2, 'Equal, comparative, and Superlative', 'Direct Learning', '', 'Lecture', 21, 2, '', '2020-03-11', '13:10:34', NULL, NULL, '0'),
(1131, 100, 4, 3, 141, 'Talking about habits', 2, '', 'Direct Learning', 'Lingkungan sekitar', 'Group Discussion', 18, 1, 'Bagas Zikri izin', '2020-03-11', '13:29:13', NULL, NULL, '0'),
(1132, 103, 5, 4, 147, 'Lingkaran', 2, 'Luas Juring Lingkaran', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 19, 3, 'Athaya (Sakit)\r\nAndre (Sakit)\r\nFatih (Sakit)', '2020-03-11', '14:15:49', NULL, NULL, '0'),
(1133, 89, 5, 6, 166, 'ulangan', 2, '', 'Direct Learning', 'ebook', 'Lecture', 22, 2, '', '2020-03-11', '14:19:37', NULL, NULL, '0'),
(1134, 85, 4, 3, 139, 'interaksi makhluk hidup dengan lingkungannya', 2, 'daily test', NULL, '', NULL, 18, 1, 'bagas sakit', '2020-03-11', '14:29:05', NULL, NULL, '0'),
(1135, 89, 5, 4, 150, 'projeck', 2, '', 'Direct Learning', 'ebook', 'Lecture', 20, 2, '', '2020-03-11', '14:30:35', NULL, NULL, '0'),
(1136, 84, 5, 6, 164, 'hidup sehat dengan makanan dan minuman yang halal dan bergizi', 2, 'hidup sehat dengan makanan dan minuman yang halal dan bergizi', 'Discovery Learning', 'e book', 'Group Discussion', 22, 1, 'delvina (A) dan chingho (S)', '2020-03-11', '14:21:58', NULL, NULL, '0'),
(1137, 103, 5, 5, 155, 'Lingkaran', 2, 'Luas Juring Lingkaran', 'Direct Learning', 'Buku Intan Pariwara Kelas 8 Semester 2', 'Lecture', 21, 2, 'Andini (Sakit)\r\nKiki (Tanpa Kabar)', '2020-03-11', '15:24:26', NULL, NULL, '0'),
(1138, 85, 4, 2, 132, 'interaksi makhluk hidup dengan lingkungannya', 2, 'hubungan interaksi, simbiosi', 'Direct Learning', '', 'Demonstration', 16, 4, 'maurel, annisa, alif tanpa keterangan', '2020-03-12', '08:49:24', NULL, NULL, '0'),
(1139, 102, 4, 1, 123, 'Bab 3 garis dan Sudut', 2, 'Dua garis sejajar dipotong oleh garis transversal', 'Problem Based Learning', 'Intan pariwara', 'Group Discussion', 19, 0, '', '2020-03-12', '10:34:23', NULL, NULL, '0'),
(1140, 85, 4, 3, 139, 'interaksi makhluk hidup dengan lingkungan', 2, 'melanjutkan tugas', 'Direct Learning', '', NULL, 18, 1, 'bagas sakit', '2020-03-12', '10:36:55', NULL, NULL, '0'),
(1141, 87, 6, 7, 173, 'un karantina 3 math', 2, 'soal-soal unbk', 'Inquiry Learning', 'buku detik-detik', 'Lecture', 22, 0, '', '2020-03-12', '11:38:29', NULL, NULL, '0'),
(1142, 93, 5, 4, 153, 'sumpah pemuda', 2, '', 'Direct Learning', '', 'Lecture', 20, 2, 'andre\r\nfatih', '2020-03-12', '10:38:49', NULL, NULL, '0'),
(1143, 84, 5, 5, 156, 'menghindari minuman keras', 2, 'menghindari minuman keras', 'Discovery Learning', 'e book', 'Demonstration', 20, 3, '1. Ine L (I) \r\n2. Rizki Andini (S)\r\n3. IBrahim Risyard (A)\r\n4. Abdul AZiz (A)', '2020-03-12', '10:29:21', NULL, NULL, '0'),
(1144, 102, 4, 3, 140, 'Bab 3 garis dan Sudut', 2, 'dua garis dipotong oleh garis transversal', 'Discovery Learning', 'Intan pariwara', 'Group Discussion', 19, 1, '', '2020-03-12', '12:58:56', NULL, NULL, '0'),
(1145, 85, 4, 1, 125, 'interaksi makluk hidup dengan lingkungannya', 2, 'remedial dan melanjutkan materi', NULL, '', NULL, 0, 0, 'cukup', '2020-03-12', '13:09:37', NULL, NULL, '0'),
(1146, 93, 5, 6, 169, 'sumpah pemuda', 2, '', 'Direct Learning', '', 'Lecture', 0, 3, '', '2020-03-12', '13:11:34', NULL, NULL, '0'),
(1147, 89, 5, 4, 150, 'sistem ekskresi', 2, '', 'Direct Learning', 'ebook', 'Lecture', 21, 1, '', '2020-03-12', '13:34:19', NULL, NULL, '0'),
(1148, 103, 5, 5, 155, 'Lingkaran', 2, 'Soal-Soal Lingkaran berbasis masalah', 'Problem Based Learning', 'Buku Lks Intan Pariwara Kelas 8 Semester 2', 'Lecture', 18, 4, 'Aziz (Sakit)\r\nBaim (Sakit)\r\nIne (Izin)\r\nAndini (sakit)', '2020-03-12', '14:15:34', NULL, NULL, '0'),
(1149, 94, 4, 2, 131, 'Teks fabel', 2, 'Tugas mandiri dan membahas bersama', 'Problem Based Learning', 'e-book', 'Lecture', 15, 4, 'Annisa dan Maurel = izin\r\nAlif dan Pasha= sakit', '2020-03-12', '13:06:10', NULL, NULL, '0'),
(1150, 93, 5, 5, 161, 'sumpah pemuda', 2, '', 'Direct Learning', '', 'Lecture', 19, 4, '', '2020-03-12', '14:25:46', NULL, NULL, '0'),
(1151, 89, 5, 6, 166, 'projeks', 2, '', 'Direct Learning', 'ebook', 'Lecture', 23, 2, '', '2020-03-12', '14:27:28', NULL, NULL, '0'),
(1152, 94, 4, 2, 131, 'Teks fabe', 2, 'Pembagian kelompok dan persiapan bermain peran', 'Problem Based Learning', '', 'Group Discussion', 15, 4, 'Annisa dan Maurel = izin\r\nAlif dan Pasha = sakit', '2020-03-12', '14:23:52', NULL, NULL, '0'),
(1153, 102, 4, 2, 133, 'Bab 3 garis dan Sudut', 2, 'Sudut', 'Problem Based Learning', 'Intan pariwa Matematika Kelas 7', 'Group Discussion', 19, 5, 'maurel\r\nAnnisa\r\nAlif\r\nPasha\r\nBayu', '2020-03-13', '08:47:58', NULL, NULL, '0'),
(1154, 89, 5, 5, 158, 'sistem ekskresi', 1, '', 'Direct Learning', 'ebook', 'Lecture', 22, 1, '', '2020-03-13', '08:52:01', NULL, NULL, '0'),
(1155, 85, 4, 3, 139, 'pencemaran lingkungan', 2, 'pencemaran air', 'Direct Learning', 'ebook, ppt', 'Demonstration', 0, 0, 'cukup', '2020-03-13', '08:55:13', NULL, NULL, '0'),
(1156, 94, 5, 6, 170, 'Teks Persuasi', 1, 'Presentasi', 'Problem Based Learning', 'e-book', 'Group Discussion', 21, 3, 'Sania dan Rafif = izin\r\nIndriana =  sakit', '2020-03-13', '08:53:07', NULL, NULL, '0'),
(1157, 92, 5, 6, 168, 'Degree of Comparison', 0, 'Superlative Degree', 'Direct Learning', 'ebook and internet', 'Lecture', 21, 3, '', '2020-03-13', '09:17:31', NULL, NULL, '0'),
(1158, 103, 5, 4, 147, 'Lingkaran', 2, 'Soal-soal latihan Lingkaran berbasis masalah', 'Problem Based Learning', 'Buku Latihan LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 19, 3, 'Rafa (Sakit)\r\nBintang (Sakit)\r\nAndre (Sakit)', '2020-03-13', '09:19:23', NULL, NULL, '0'),
(1159, 93, 4, 1, 130, 'latihan kerja sama ', 2, '', 'Direct Learning', '', 'Lecture', 19, 0, '', '2020-03-13', '09:37:07', NULL, NULL, '0'),
(1160, 85, 4, 2, 132, 'interaksi makhluk hidup dengan lingkungannya', 1, 'latihan', NULL, '', NULL, 0, 0, 'bayu sakit\r\npasha sakit\r\nmaurel ijin\r\nicha ijin\r\nalif sakit', '2020-03-13', '09:41:24', NULL, NULL, '0'),
(1161, 94, 5, 4, 154, 'Teks persuasi', 2, 'Presentasi', 'Problem Based Learning', 'e-book', 'Group Discussion', 20, 2, 'Andre dan Rafa = sakit', '2020-03-13', '09:26:15', NULL, NULL, '0'),
(1162, 103, 5, 5, 155, 'Lingkaran', 2, 'Soal latihan lingkaran berbasis masalah&amp;nbsp;', 'Problem Based Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 21, 2, 'Baim (Sakit)\r\nKiki (Sakit)', '2020-03-13', '10:10:18', NULL, NULL, '0'),
(1163, 100, 4, 1, 127, 'Animal activity and things function', 3, '', 'Direct Learning', 'Ebook', 'Group Discussion', 19, 0, 'Complete', '2020-03-13', '10:02:19', NULL, NULL, '0'),
(1164, 93, 4, 3, 146, 'kerja sama', 1, 'latihan soal 5 soal', 'Direct Learning', '', 'Lecture', 19, 0, '', '2020-03-13', '10:20:19', NULL, NULL, '0'),
(1165, 93, 4, 2, 138, 'bab kerja sama', 2, 'latihan 15 soal&amp;nbsp;', 'Direct Learning', '', 'Lecture', 13, 5, '', '2020-03-13', '10:41:42', NULL, NULL, '0'),
(1166, 103, 5, 6, 163, 'Lingkaran ', 2, 'Luas Juring Lingkaran', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 20, 4, 'Varel (Alfa)\r\nSania (Izin)\r\nDina (Sakit)\r\nRafif (Alfa)', '2020-03-13', '11:40:15', NULL, NULL, '0'),
(1167, 96, 7, 11, 264, 'remedial', 2, '', NULL, '', NULL, 12, 7, '', '2020-03-16', '08:51:28', NULL, NULL, '0'),
(1168, 101, 7, 10, 274, 'type of text', 2, 'Narrative Text (Legend)', 'Direct Learning', 'ebook', 'Lecture', 13, 3, '', '2020-03-16', '08:54:38', NULL, NULL, '0'),
(1169, 85, 4, 3, 139, 'pencemaran lingkungan', 2, 'pencemaran air, tanah, udara', 'Direct Learning', 'ppt, ebook', 'Demonstration', 19, 0, 'cukup', '2020-03-16', '08:58:05', NULL, NULL, '0'),
(1170, 89, 5, 4, 150, 'ginjal', 2, '', 'Direct Learning', 'ebook', 'Lecture', 22, 0, '', '2020-03-16', '09:07:52', NULL, NULL, '0'),
(1171, 95, 8, 12, 216, 'RESENSI', 2, 'PENJELASAN MATERI', 'Inquiry Learning', 'E-BOOK', 'Experiment', 21, 4, '', '2020-03-16', '09:23:10', NULL, NULL, '0'),
(1172, 93, 7, 10, 273, 'remidial', 2, '', 'Problem Based Learning', '', 'Group Discussion', 15, 2, 'hakim ijin\r\nami sakit', '2020-03-16', '09:44:58', NULL, NULL, '0'),
(1173, 103, 5, 6, 163, 'Lingkaran', 2, 'Membahas soal-soal HOTS lingkaran', 'Direct Learning', 'Buku LKS Intan Pariwara Kelas 8 Semester 2', 'Lecture', 16, 8, 'Varel (Sakit)\r\nRido (Sakit)\r\nArnold (Izin)\r\nRafly (Tanpa Keterangan)\r\nM. Rayhan (Sakit)\r\nFristy (Sakit)\r\nNabila (Tanpa Keterangan)\r\nSania (Izin)', '2020-03-16', '09:52:05', NULL, NULL, '0'),
(1174, 87, 6, 8, 184, 'latihan soal uas', 2, 'latihan soal uas', 'Direct Learning', 'buku detik-detik', 'Lecture', 19, 5, 'running well', '2020-03-16', '09:15:59', NULL, NULL, '0'),
(1175, 86, 6, 7, 172, 'Pemberitahuan kasus corona', 2, '', 'Direct Learning', '', 'Lecture', 0, 0, '', '2020-03-16', '09:27:02', NULL, NULL, '0'),
(1176, 102, 4, 3, 140, 'Bab 3 garis dan Sudut', 2, 'Sudut', 'Problem Based Learning', 'Intan pariwara matematika kelas 7', 'Group Discussion', 19, 0, '', '2020-03-16', '10:35:20', NULL, NULL, '0'),
(1177, 85, 4, 2, 132, 'interaksi makhluk hidup dengan lingkungan', 2, 'daily test', NULL, '', NULL, 14, 7, 'yovie tanpa keterangan\r\nicha ijin\r\nalif sakit\r\nadzra sakit\r\npasha sakit', '2020-03-16', '10:35:05', NULL, NULL, '0'),
(1178, 95, 4, 1, 124, 'FABEL', 2, 'STRUKTUR FABEL', 'Inquiry Learning', 'E-BOOK', 'Demonstration', 17, 2, '', '2020-03-16', '10:40:20', NULL, NULL, '0'),
(1179, 89, 5, 5, 158, 'ginjal', 2, '', 'Direct Learning', 'ebook', 'Lecture', 22, 0, '', '2020-03-16', '10:41:45', NULL, NULL, '0'),
(1180, 96, 8, 13, 207, 'remedial ', 2, '', 'Direct Learning', '', 'Lecture', 21, 6, '', '2020-03-16', '10:59:45', NULL, NULL, '0'),
(1181, 84, 8, 13, 213, 'lanjutan materi shalat dan prakteknya', 2, 'lanjutan materi shalat dan prakteknya', 'Discovery Learning', 'e book', 'Demonstration', 20, 7, '', '2020-03-16', '11:46:06', NULL, NULL, '0'),
(1182, 95, 7, 10, 272, 'RESENSI', 2, 'MATERI', 'Inquiry Learning', 'E-BOOK', NULL, 13, 3, '', '2020-03-16', '12:01:32', NULL, NULL, '0'),
(1183, 96, 7, 11, 264, 'remedial', 1, '', 'Direct Learning', '', 'Lecture', 8, 11, '', '2020-03-16', '12:17:17', NULL, NULL, '0'),
(1184, 104, 8, 12, 224, 'Remedi UTS', 1, '', NULL, '', NULL, 20, 5, 'Rizki, Melly, Asyipa, Tsabit, Dhafin tidak hadir', '2020-03-16', '12:23:53', NULL, NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `IDJurusan` bigint(20) NOT NULL,
  `Jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`IDJurusan`, `Jurusan`) VALUES
(1, 'Teknik Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `kartubimbingan`
--

CREATE TABLE `kartubimbingan` (
  `IDKartu` int(11) NOT NULL,
  `IDKartuMahasiswa` bigint(30) NOT NULL,
  `IDDosenPembimbing` varchar(30) NOT NULL,
  `Catatan` text NOT NULL,
  `TanggalBimbingan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `IDKegiatan` int(11) NOT NULL,
  `IDUsers` bigint(20) NOT NULL,
  `Kegiatan` varchar(100) NOT NULL,
  `Tempat` varchar(100) NOT NULL,
  `JamKegiatan` time NOT NULL,
  `TanggalKegiatan` date NOT NULL,
  `Finish` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kikd`
--

CREATE TABLE `kikd` (
  `id` int(5) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `class` varchar(10) DEFAULT NULL,
  `section` varchar(10) DEFAULT NULL,
  `id_teacher` varchar(5) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `file` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kikd`
--

INSERT INTO `kikd` (`id`, `name`, `class`, `section`, `id_teacher`, `year`, `file`) VALUES
(1, 'prota 1', '4', '14', '6', '', 'at0057_slb_20200157.xlsx'),
(2, 'tes123', '4', '14', '6', '2019-2020', 'at0057_kikd_20200126.docx'),
(3, 'Pemetaan KI KD ', '5', '154', '94', '2019-2020', 'at00134_kikd_20200150.docx'),
(4, 'Pemetaan KI KD', '4', '131', '94', '2019-2020', 'at00134_kikd_20200153.docx');

-- --------------------------------------------------------

--
-- Table structure for table `konsentrasi`
--

CREATE TABLE `konsentrasi` (
  `IDKonsentrasi` int(11) NOT NULL,
  `IDJurusanKsn` int(11) NOT NULL,
  `IDDosen` bigint(20) NOT NULL,
  `Konsentrasi` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konsentrasi`
--

INSERT INTO `konsentrasi` (`IDKonsentrasi`, `IDJurusanKsn`, `IDDosen`, `Konsentrasi`) VALUES
(3, 1, 0, 'web');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL,
  `phrase` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `english` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `bengali` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `spanish` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `arabic` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `dutch` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `russian` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `chinese` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `turkish` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `portuguese` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `hungarian` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `french` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `greek` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `german` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `italian` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `thai` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `urdu` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `hindi` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `latin` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `indonesian` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `japanese` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `korean` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `indo` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `bengali`, `spanish`, `arabic`, `dutch`, `russian`, `chinese`, `turkish`, `portuguese`, `hungarian`, `french`, `greek`, `german`, `italian`, `thai`, `urdu`, `hindi`, `latin`, `indonesian`, `japanese`, `korean`, `indo`) VALUES
(1, 'class_routine', 'Class Routine', 'ক্লাস রুটিন', 'rutina de clase', 'روتين الصف', 'klasse Routine', 'Рутинное Класс', '常规类', 'sınıf Rutin', 'classe de rotina', 'class rutin', 'classe routine', 'Κλάση ρουτίνας', 'Klasse Routine', 'Routine Class', 'ประจำชั้น', 'کلاس ضابطہء', 'कक्षा नियमित', 'Class DEFUNCTORIUS', 'kelas rutin', 'クラスルーチン', '클래스 루틴', NULL),
(2, 'dashboard', 'Dashboard', 'ড্যাশবোর্ড', 'Tablero', 'لوحة القيادة', 'Dashboard', 'Панель приборов', '仪表板', 'gösterge paneli', 'painel de instrumentos', 'Műszerfal', 'Tableau de bord', 'Ταμπλό', 'Instrumententafel', 'Cruscotto', 'แผงควบคุม', 'ڈیش بورڈ', 'डैशबोर्ड', 'Dashboard', 'Dasbor', 'ダッシュボード', '계기반', NULL),
(3, 'student', 'Student', 'ছাত্র', 'Estudiante', 'طالب علم', 'Student', 'Студент', '学生', 'öğrenci', 'Aluna', 'Diák', 'Élève', 'Φοιτητής', 'Schüler', 'Alunno', 'นักเรียน', 'طالب علم', 'छात्र', 'Student', 'Mahasiswa', '学生', '학생', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `last_attendance_0`
-- (See below for the actual view)
--
CREATE TABLE `last_attendance_0` (
`nisn` longtext
,`name` longtext
,`class` varchar(11)
,`section` longtext
,`date` varchar(10)
,`time` varchar(10)
,`status` int(200)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `last_attendance_1`
-- (See below for the actual view)
--
CREATE TABLE `last_attendance_1` (
`nisn` longtext
,`name` longtext
,`class` varchar(11)
,`section` longtext
,`date` varchar(10)
,`time` varchar(10)
,`status` int(200)
);

-- --------------------------------------------------------

--
-- Table structure for table `librarian`
--

CREATE TABLE `librarian` (
  `librarian_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE `mark` (
  `mark_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `mark_obtained` int(11) DEFAULT NULL,
  `mark_total` int(11) DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mark`
--

INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `section_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`, `year`) VALUES
(1, 1, 1, 1, 1, 1, NULL, NULL, NULL, '2018-2019'),
(2, 5, 2, 1, 4, 1, 90, NULL, '', '2018-2019'),
(3, 7, 2, 1, 4, 1, 100, NULL, '', '2018-2019'),
(4, 8, 2, 1, 4, 1, 100, NULL, '', '2018-2019'),
(5, 9, 2, 1, 4, 1, 100, NULL, '', '2018-2019'),
(6, 3, 2, 1, 1, 1, NULL, NULL, NULL, '2018-2019'),
(7, 4, 2, 1, 1, 1, NULL, NULL, NULL, '2018-2019'),
(8, 6, 2, 1, 1, 1, NULL, NULL, NULL, '2018-2019'),
(9, 12, 121, 4, 1, 2, NULL, NULL, NULL, '2019-2020');

-- --------------------------------------------------------

--
-- Table structure for table `marketing`
--

CREATE TABLE `marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` longtext DEFAULT NULL,
  `username` longtext DEFAULT NULL,
  `password` longtext DEFAULT NULL,
  `email` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marketing`
--

INSERT INTO `marketing` (`marketing_id`, `name`, `username`, `password`, `email`) VALUES
(1, 'marketing', 'marketing', 'f865b53623b121fd34ee5426c792e5c33af8c227', 'marketing@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_plan`
--

CREATE TABLE `marketing_plan` (
  `plan_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `time_id` int(11) DEFAULT NULL,
  `timestamp` longtext DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marketing_plan`
--

INSERT INTO `marketing_plan` (`plan_id`, `school_id`, `time_id`, `timestamp`, `user_id`) VALUES
(10, 8, 2, '1582526139', NULL),
(11, 9, 2, '1583368527', NULL),
(12, 12, 2, '1583368616', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `marketing_plan_status`
--

CREATE TABLE `marketing_plan_status` (
  `status_id` int(11) NOT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `status_plan` varchar(200) DEFAULT NULL,
  `topick` longtext DEFAULT NULL,
  `person` longtext DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status_result` varchar(200) DEFAULT NULL,
  `result` longtext DEFAULT NULL,
  `result_date` longtext DEFAULT NULL,
  `result_time` longtext DEFAULT NULL,
  `timestamp_plan` longtext DEFAULT NULL,
  `timestamp_result` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marketing_plan_status`
--

INSERT INTO `marketing_plan_status` (`status_id`, `plan_id`, `status_plan`, `topick`, `person`, `user_id`, `status_result`, `result`, `result_date`, `result_time`, `timestamp_plan`, `timestamp_result`) VALUES
(3, 10, 'Permission', 'Meminta ijin untuk mengadakan sosialisasi sekolah', 'marketing', 1, NULL, NULL, NULL, NULL, '1582526391', NULL),
(4, 12, 'Permission', 'asdads', 'marketing', 1, 'Waiting', 'Datang bersama 5 orang anak', '8 Maret 2020', NULL, '1583368697', '1583368750'),
(5, 12, 'Re-confirm Permission', 'sudah mulai dipanggil jadwal', 'marketing', 1, 'Approved', 'Berkumpul di lapangan, bawa siswa almazaya', '8 Maret 2020', '08.00 WITA', '1583370460', '1583370527'),
(6, 11, 'Permission', 'ets', 'marketing', 1, NULL, NULL, NULL, NULL, '1585798335', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `marketing_school`
--

CREATE TABLE `marketing_school` (
  `school_id` int(11) NOT NULL,
  `name` longtext DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `status` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marketing_school`
--

INSERT INTO `marketing_school` (`school_id`, `name`, `address`, `contact`, `phone`, `level`, `status`) VALUES
(8, 'SD Mawar 7', 'Banjarmasin', 'Kamal', '0822222', 'SD', NULL),
(9, 'SD Mawar 1', 'Banjarmasin', 'Kamal', '08213213', 'SD', NULL),
(10, 'SMP 1 Banjarmasin', 'Banjarmasin', 'Tes', '05315302', 'SMP', NULL),
(11, 'SDN Mawar 7', 'Jl. Pandan Sari', 'Dewi', '0511 7878787', 'SD', NULL),
(12, 'SD Sabilal', 'Jl. Raya Sabilal', 'Bu Ani', '0888888888', 'SD', NULL),
(13, 'SDN Karang Mekar 1', '', '', '', 'SD', NULL),
(14, 'SDN Sungai Miai 5', '', '', '', 'SD', NULL),
(15, 'MI Istiglal Sungai Andai', '', '', '', 'SD', NULL),
(16, 'SDN Teluk Dalam 1', '', '', '', 'SD', NULL),
(17, 'SD Muhammadiyah 8-10', '', '', '', 'SD', NULL),
(18, 'SDI Al Falah Beruntung', '', '', '', 'SD', NULL),
(19, 'SDN Sungai Andai 4', '', '', '', 'SD', NULL),
(20, 'SDI MDIM1-2', '', '', '', 'SD', NULL),
(21, 'SDIT Al Firdaus', '', '', '', 'SD', NULL),
(22, 'SDI Al Furqon', '', '', '', 'SD', NULL),
(23, 'SDN Mawar 6', '', '', '', 'SD', NULL),
(24, 'SD Muhammadiyah 9', '', '', '', 'SD', NULL),
(25, 'SDIT Anak Soleh Mandiri', '', '', '', 'SD', NULL),
(26, 'SD Muhammadiyah Tanah Bumbu', '', '', '', 'SD', NULL),
(27, 'SDMuhammadiyah 2 Pontianak', '', '', '', 'SD', NULL),
(28, 'SD Baiturrahman Buntok', '', '', '', 'SD', NULL),
(29, 'SMP AL MAZAYA ', '', '', '', 'SMP', NULL),
(30, 'SMPN 1 BANJARMASIN', '', '', '', 'SMP', NULL),
(31, 'Mts AL FURQON', '', '', '', 'SMP', NULL),
(32, 'SMP GIBS', '', '', '', 'SMP', NULL),
(33, 'SMP UKHUWAH', '', '', '', 'SMP', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `marketing_time`
--

CREATE TABLE `marketing_time` (
  `time_id` int(11) NOT NULL,
  `start_at` int(11) DEFAULT NULL,
  `end_at` int(11) DEFAULT NULL,
  `running_year` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marketing_time`
--

INSERT INTO `marketing_time` (`time_id`, `start_at`, `end_at`, `running_year`) VALUES
(2, 1569859200, 1588176000, '2019-2020');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `message_thread_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `read_status` int(11) DEFAULT NULL,
  `attached_file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `message_thread_code`, `message`, `sender`, `timestamp`, `read_status`, `attached_file_name`) VALUES
(1, 'd41d8cd98f00b20', 'cek cek', 'teacher-1', '1559422569', 1, NULL),
(2, 'd41d8cd98f00b20', 'tolong selesaikan tugasnya', 'admin-1', '1565523363', 1, NULL),
(3, 'd41d8cd98f00b20', 'anda juga', 'admin-1', '1565523392', 1, NULL),
(4, 'd41d8cd98f00b20', 'dggdffd', 'admin-1', '1566092271', NULL, NULL),
(5, 'd41d8cd98f00b20', 'tes', 'admin-1', '1577885348', NULL, NULL),
(6, 'd8374cda4bde22a', 'COba', 'admin-1', '1580975128', 1, NULL),
(7, 'd8374cda4bde22a', 'iya&amp;nbsp; pak', 'teacher-108', '1580975197', 1, NULL),
(8, 'd8374cda4bde22a', 'iya pak', 'teacher-108', '1580975220', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `message_thread`
--

CREATE TABLE `message_thread` (
  `message_thread_id` int(11) NOT NULL,
  `message_thread_code` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `reciever` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_message_timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `message_thread`
--

INSERT INTO `message_thread` (`message_thread_id`, `message_thread_code`, `sender`, `reciever`, `last_message_timestamp`) VALUES
(1, 'd41d8cd98f00b20', 'teacher-1', 'student-1', NULL),
(2, 'd41d8cd98f00b20', 'admin-1', 'teacher-11', NULL),
(3, 'd41d8cd98f00b20', 'admin-1', 'teacher-17', NULL),
(4, 'd41d8cd98f00b20', 'admin-1', 'teacher-6', NULL),
(5, 'd8374cda4bde22a', 'admin-1', 'teacher-108', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_admin`
--

CREATE TABLE `m_admin` (
  `id` int(6) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `level` enum('admin','guru','peserta') DEFAULT NULL,
  `kon_id` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_admin`
--

INSERT INTO `m_admin` (`id`, `username`, `password`, `level`, `kon_id`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 0),
(11, '18132000001', '103e8f592b9eaad1bc9ed1d6c562f08d', 'peserta', 245),
(12, '18132000059', '452ee8365c3892c1d229fab5b3f0ae65', 'peserta', 303);

-- --------------------------------------------------------

--
-- Table structure for table `m_kelompok`
--

CREATE TABLE `m_kelompok` (
  `id` int(6) NOT NULL,
  `nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_kelompok`
--

INSERT INTO `m_kelompok` (`id`, `nama`) VALUES
(6, 'IPS'),
(7, 'Social'),
(8, 'Science');

--
-- Triggers `m_kelompok`
--
DELIMITER $$
CREATE TRIGGER `hapus_guru` AFTER DELETE ON `m_kelompok` FOR EACH ROW BEGIN
DELETE FROM m_soal WHERE m_soal.id_guru = OLD.id;
DELETE FROM m_admin WHERE m_admin.level = 'guru' AND m_admin.kon_id = OLD.id;
DELETE FROM tr_guru_mapel WHERE tr_guru_mapel.id_guru = OLD.id;
DELETE FROM tr_guru_tes WHERE tr_guru_tes.id_guru = OLD.id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `m_mapel`
--

CREATE TABLE `m_mapel` (
  `id` int(6) NOT NULL,
  `nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_mapel`
--

INSERT INTO `m_mapel` (`id`, `nama`) VALUES
(2, 'Bahasa Indonesia'),
(3, 'Bahasa Inggris'),
(4, 'Matematika'),
(5, 'Matematika social');

--
-- Triggers `m_mapel`
--
DELIMITER $$
CREATE TRIGGER `hapus_mapel` AFTER DELETE ON `m_mapel` FOR EACH ROW BEGIN
DELETE FROM m_soal WHERE m_soal.id_mapel = OLD.id;
DELETE FROM tr_guru_mapel WHERE tr_guru_mapel.id_mapel = OLD.id;
DELETE FROM tr_guru_tes WHERE tr_guru_tes.id_mapel = OLD.id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `m_peserta`
--

CREATE TABLE `m_peserta` (
  `id` int(6) NOT NULL,
  `no_peserta` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jalur` varchar(100) DEFAULT NULL,
  `kelompok` varchar(50) DEFAULT NULL,
  `kel_ujian` varchar(30) DEFAULT NULL,
  `lokasi` varchar(50) DEFAULT NULL,
  `nama_ruang` varchar(50) DEFAULT NULL,
  `metode_ujian` varchar(50) DEFAULT NULL,
  `mata_ujian` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_peserta`
--

INSERT INTO `m_peserta` (`id`, `no_peserta`, `nama`, `jalur`, `kelompok`, `kel_ujian`, `lokasi`, `nama_ruang`, `metode_ujian`, `mata_ujian`) VALUES
(245, '18132000001', 'GERRY SAMUEL ARITONANG', 'S1', 'IPC', 'S1 IPC', 'FKIP 1', 'LAB. KOM PILKOM', 'KOMPUTER', 'TKPA & TKD Saintek & TKD Soshum'),
(303, '18132000059', 'DICKY DWI SETIAWAN', 'S1', 'IPS', 'S1 IPC', 'FKIP 1', 'LAB. MATEMATIKA', 'KOMPUTER', 'TKPA & TKD Saintek & TKD Soshum');

--
-- Triggers `m_peserta`
--
DELIMITER $$
CREATE TRIGGER `hapus_peserta` AFTER DELETE ON `m_peserta` FOR EACH ROW BEGIN
DELETE FROM tr_ikut_ujian WHERE tr_ikut_ujian.id_user = OLD.id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `m_soal`
--

CREATE TABLE `m_soal` (
  `id` int(6) NOT NULL,
  `id_guru` int(6) DEFAULT NULL,
  `id_mapel` int(6) DEFAULT NULL,
  `bobot` int(2) DEFAULT NULL,
  `file` varchar(150) DEFAULT NULL,
  `tipe_file` varchar(50) DEFAULT NULL,
  `soal` longtext DEFAULT NULL,
  `opsi_a` longtext DEFAULT NULL,
  `opsi_b` longtext DEFAULT NULL,
  `opsi_c` longtext DEFAULT NULL,
  `opsi_d` longtext DEFAULT NULL,
  `opsi_e` longtext DEFAULT NULL,
  `benar` int(11) DEFAULT NULL,
  `salah` int(11) DEFAULT NULL,
  `kosong` int(11) DEFAULT NULL,
  `jawaban` varchar(5) DEFAULT NULL,
  `tgl_input` datetime DEFAULT NULL,
  `jml_benar` int(6) DEFAULT NULL,
  `jml_salah` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_soal`
--

INSERT INTO `m_soal` (`id`, `id_guru`, `id_mapel`, `bobot`, `file`, `tipe_file`, `soal`, `opsi_a`, `opsi_b`, `opsi_c`, `opsi_d`, `opsi_e`, `benar`, `salah`, `kosong`, `jawaban`, `tgl_input`, `jml_benar`, `jml_salah`) VALUES
(23, 8, 2, 1, '', '', '<p>1 + 1</p>\r\n', '#####<p>1</p>\r\n', '#####<p>2</p>\r\n', '#####<p>3</p>\r\n', '#####<p>4</p>\r\n', '#####<p>5</p>\r\n', 4, -1, 0, 'B', '0000-00-00 00:00:00', 0, 0),
(24, 6, 2, 1, '', '', '<p>2+2 = ...</p>\r\n', 'gja_24.png#####', '#####<p>2</p>\r\n', '#####<p>6</p>\r\n', '#####<p>7</p>\r\n', '#####<p>9</p>\r\n', 0, 0, 0, 'A', '0000-00-00 00:00:00', 0, 0),
(25, 6, 2, 1, NULL, NULL, '1 + 3', '#####4', '#####2', '#####13', '#####12', '#####2', NULL, NULL, NULL, 'A', NULL, NULL, NULL),
(26, 6, 2, 1, NULL, NULL, 'rtfghkj', '#####gvhbjk', '#####cgvbh', '#####gvbhnjk', '#####gvhbjn', '#####hbjnm', NULL, NULL, NULL, 'A', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE `noticeboard` (
  `notice_id` int(11) NOT NULL,
  `notice_title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `notice` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `show_on_website` int(11) DEFAULT 0,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `noticeboard`
--

INSERT INTO `noticeboard` (`notice_id`, `notice_title`, `notice`, `create_timestamp`, `status`, `show_on_website`, `image`) VALUES
(1, 'UN QUARANTINE GRADE 9', 'UN Qurantine Grade 9 &amp; 12', '1581868800', 1, 1, NULL),
(2, 'UN QUARANTINE GRADE 9 &amp; 12', 'UN Quarantine Grade 9 &amp; 12 (Day 2)', '1581955200', 1, 1, NULL),
(3, 'UN QUARANTINE', 'UN Quarantine Grade 9 &amp; 12 (Day 3)', '1582041600', 1, 1, NULL),
(4, 'UN QUARANTINE', 'UN Quarantine Grade 9 &amp; 12 (Day 4)', '1582128000', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notifikasi`
--

CREATE TABLE `notifikasi` (
  `IDNotifikasi` int(11) NOT NULL,
  `Notifikasi` varchar(300) NOT NULL,
  `Catatan` text NOT NULL,
  `TanggalNotifikasi` varchar(40) NOT NULL,
  `IDPenerima` bigint(20) NOT NULL,
  `IDPengirim` bigint(20) NOT NULL,
  `StatusNotifikasi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `online`
--

CREATE TABLE `online` (
  `id` int(5) NOT NULL,
  `session` varchar(255) DEFAULT NULL,
  `user_id` int(5) DEFAULT NULL,
  `at` varchar(100) DEFAULT NULL,
  `ket` longtext DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `online`
--

INSERT INTO `online` (`id`, `session`, `user_id`, `at`, `ket`, `status`) VALUES
(1192, 'marketing', 1, 'portal', NULL, 'Online'),
(1193, 'admin', 1, 'portal', NULL, 'Online');

-- --------------------------------------------------------

--
-- Table structure for table `online_exam`
--

CREATE TABLE `online_exam` (
  `online_exam_id` int(11) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `exam_date` int(11) DEFAULT NULL,
  `time_start` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_end` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'duration in second',
  `minimum_percentage` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `instruction` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'pending',
  `running_year` varchar(255) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `online_exam`
--

INSERT INTO `online_exam` (`online_exam_id`, `code`, `title`, `class_id`, `section_id`, `subject_id`, `exam_date`, `time_start`, `time_end`, `duration`, `minimum_percentage`, `instruction`, `status`, `running_year`) VALUES
(1, '1518a96', 'ujian online', 1, 1, 1, 1559412000, '7:00:00', '11:30:00', '16200', '60', 'silahkan pilih jawaban yang paling tepat', 'published', '2018-2019'),
(2, 'e2dd8b0', 'TRY OUT 1', 9, 14, 103, 1572372000, '8:00:00', '21:20:00', '48000', '70', 'Try Out', 'published', '2019-2020');

-- --------------------------------------------------------

--
-- Table structure for table `online_exam_result`
--

CREATE TABLE `online_exam_result` (
  `online_exam_result_id` int(11) UNSIGNED NOT NULL,
  `online_exam_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `answer_script` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `obtained_mark` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `exam_started_timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `result` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `online_exam_result`
--

INSERT INTO `online_exam_result` (`online_exam_result_id`, `online_exam_id`, `student_id`, `answer_script`, `obtained_mark`, `status`, `exam_started_timestamp`, `result`) VALUES
(1, 2, 13, '[{\"question_bank_id\":\"4\",\"submitted_answer\":\"[\\\"1\\\"]\",\"correct_answers\":\"[\\\"3\\\"]\"},{\"question_bank_id\":\"5\",\"submitted_answer\":\"[\\\"4\\\"]\",\"correct_answers\":\"[\\\"4\\\"]\"}]', '20', 'submitted', '1572430352', 'fail');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `parent_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_id` int(10) NOT NULL,
  `nisn_student` int(11) DEFAULT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `profession` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `authentication_key` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`parent_id`, `name`, `email`, `student_id`, `nisn_student`, `username`, `password`, `phone`, `address`, `profession`, `authentication_key`) VALUES
(1, 'father', 'father@almajaya.com', 0, NULL, NULL, 'f865b53623b121fd34ee5426c792e5c33af8c227', '08000000800', 'Banjarmasin', 'Petani', NULL),
(2, 'father1', 'father1@almajaya.com', 0, NULL, NULL, 'f865b53623b121fd34ee5426c792e5c33af8c227', '0838457986787', 'Banjarmasin', 'Guru', NULL),
(3, 'ortua', NULL, 8, NULL, 'ortu_00015233', NULL, NULL, NULL, 'pns', NULL),
(4, 'Msu', NULL, 9, NULL, 'ortu_08223775', NULL, NULL, NULL, 'pns', NULL),
(5, 'ortua', NULL, 12, NULL, 'ortu_12313', '35d9eed780c13a981b78ad8c85c9bee8615664dc', '082227272772', 'jl.banjarmasin', 'pns', NULL),
(6, 'Yani', NULL, 13, NULL, 'ortu_1234567890', '01b307acba4f54f55aafc33bb06bbbf6ca803e9a', '08776677676767', 'banjarmasin', 'PNS', NULL),
(7, 'parent', NULL, 12, NULL, 'ortu_12345', '8cb2237d0679ca88db6464eac60da96345513964', '082227272772', 'banjarmasin', 'pns', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `expense_category_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_type` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `method` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `expense_category_id`, `title`, `payment_type`, `invoice_id`, `student_id`, `method`, `description`, `amount`, `timestamp`, `year`) VALUES
(1, 1, 'Pembayaran SPP', 'expense', NULL, NULL, '1', 'spp', '100000', '1576605600', '2019-2020'),
(2, NULL, 'Spp', 'income', 1, 12, '1', NULL, '100000', '1576519200', '2019-2020'),
(3, 3, 'Uang Pangkal 7', 'expense', NULL, NULL, '1', NULL, '150000', '1576519200', '2019-2020'),
(4, NULL, 'Pembayaran Uang Pangkal', 'income', 2, 12, '1', NULL, '150000', '1576519200', '2019-2020');

-- --------------------------------------------------------

--
-- Table structure for table `pembimbing`
--

CREATE TABLE `pembimbing` (
  `IDPembimbing` int(11) NOT NULL,
  `IDDosenPmb` bigint(20) NOT NULL,
  `IDSkripsiPmb` int(11) NOT NULL,
  `StatusProposal` tinyint(1) NOT NULL,
  `StatusSkripsi` tinyint(1) NOT NULL,
  `StatusPembimbing` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `promes`
--

CREATE TABLE `promes` (
  `id` int(5) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `class` varchar(10) DEFAULT NULL,
  `section` varchar(10) DEFAULT NULL,
  `id_teacher` varchar(5) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `file` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promes`
--

INSERT INTO `promes` (`id`, `name`, `class`, `section`, `id_teacher`, `year`, `file`) VALUES
(1, 'Program Semester', '4', '131', '94', '2019-2020', 'at00134_promes_20200151.docx'),
(2, 'T.A 2019-2020', '8', '209', '101', '2019-2020', 'at00183_promes_20200128.docx'),
(3, 'Program Semester', '5', '154', '94', '2019-2020', 'at00134_promes_20200140.docx');

-- --------------------------------------------------------

--
-- Table structure for table `prota`
--

CREATE TABLE `prota` (
  `id` int(5) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `class` varchar(10) DEFAULT NULL,
  `section` varchar(10) DEFAULT NULL,
  `id_teacher` varchar(5) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `file` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prota`
--

INSERT INTO `prota` (`id`, `name`, `class`, `section`, `id_teacher`, `year`, `file`) VALUES
(1, 'prota', '4', '121', '6', '2019-2020', 'at0057_prota_20200147.docx'),
(2, 'Prota TIK', '6', '180', '83', '2019-2020', 'at0057_prota_20200156.docx'),
(3, 'PROTA 2019/2020', '6', '176', '90', '2019-2020', 'at00106_prota_20200115.docx'),
(4, 'Program Tahunan', '4', '131', '94', '2019-2020', 'at00134_prota_20200106.docx'),
(5, 'Program Tahunan', '5', '154', '94', '2019-2020', 'at00134_prota_20200150.docx'),
(6, 'Prota 11', '8', '209', '101', '2019-2020', 'at00183_prota_20200136.docx');

-- --------------------------------------------------------

--
-- Table structure for table `question_bank`
--

CREATE TABLE `question_bank` (
  `question_bank_id` int(11) UNSIGNED NOT NULL,
  `online_exam_id` int(11) DEFAULT NULL,
  `question_title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_of_options` int(11) DEFAULT NULL,
  `options` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `correct_answers` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `question_bank`
--

INSERT INTO `question_bank` (`question_bank_id`, `online_exam_id`, `question_title`, `type`, `number_of_options`, `options`, `correct_answers`, `mark`) VALUES
(1, 1, 'pilihan ganda, 1 + 1 = ...', 'multiple_choice', 4, '[\"1\",\"2\",\"3\",\"4\"]', '[\"2\"]', '30'),
(2, 1, '1 + 1 = 3 ?', 'true_false', NULL, NULL, 'false', '30'),
(3, 1, '1 .... 1 = 0', 'fill_in_the_blanks', NULL, NULL, '[\"-\"]', '40'),
(4, 2, 'soal1', 'multiple_choice', 4, '[\"1\",\"2\",\"4\",\"3\"]', '[\"3\"]', '20'),
(5, 2, '2 + 2 = ...', 'multiple_choice', 4, '[\"1\",\"2\",\"3\",\"4\"]', '[\"4\"]', '20');

-- --------------------------------------------------------

--
-- Table structure for table `question_paper`
--

CREATE TABLE `question_paper` (
  `question_paper_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `question_paper` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `question_paper`
--

INSERT INTO `question_paper` (`question_paper_id`, `title`, `question_paper`, `class_id`, `exam_id`, `teacher_id`) VALUES
(1, 'Quis', '1. silahkan kerjakan pada halaman 1-10&lt;br&gt;2. silahkan jawab soal di. .....&amp;nbsp;', 1, 1, 2),
(2, 'ujian 1', 'kerjakan halaman 52', 4, 1, 6),
(3, 'gkjlk', 'ulangan 1', 4, 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `rpp`
--

CREATE TABLE `rpp` (
  `id` int(5) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `class` varchar(10) DEFAULT NULL,
  `section` varchar(10) DEFAULT NULL,
  `id_teacher` int(5) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `file` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rpp`
--

INSERT INTO `rpp` (`id`, `name`, `class`, `section`, `id_teacher`, `year`, `file`) VALUES
(1, 'Rpp tema 1 kelas 9', '6', '7', 6, '', 'at0057_rp_20191249.docx'),
(2, 'Rpp tema 1 kelas 7', '4', '1', 6, '', 'at0057_rp_20191247.docx'),
(3, 'Cause and effect', '8', '209', 101, '2019-2020', 'at00183_rp_20200155.docx'),
(4, 'Explanation text', '8', '209', 101, '2019-2020', 'at00183_rp_20200139.docx'),
(5, 'Song', '8', '209', 101, '2019-2020', 'at00183_rp_20200129.docx'),
(6, 'RPP 3.9 DAN 4.9', '4', '131', 94, '2019-2020', 'at00134_rp_20200134.doc'),
(7, 'RPP 3.10 DAN 4.10', '4', '131', 94, '2019-2020', 'at00134_rp_20200121.docx'),
(8, 'RPP 3.11 DAN 4.11', '4', '131', 94, '2019-2020', 'at00134_rp_20200120.docx'),
(9, 'RPP 3.12 DAN 4.12', '4', '131', 94, '2019-2020', 'at00134_rp_20200124.docx'),
(10, 'RPP 3.13 DAN 4.13', '4', '131', 94, '2019-2020', 'at00134_rp_20200157.docx'),
(11, 'RPP 3.14 DAN 4.14', '4', '131', 94, '2019-2020', 'at00134_rp_20200150.docx'),
(12, 'RPP 3.15 DAN 4.15', '4', '131', 94, '2019-2020', 'at00134_rp_20200157.docx'),
(13, 'RPP 3.16 DAN 4.16', '4', '131', 94, '2019-2020', 'at00134_rp_20200155.docx'),
(14, 'RPP SEMESTER 2', '5', '154', 94, '2019-2020', 'at00134_rp_20200101.docx');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `school_id` int(11) NOT NULL,
  `name` longtext DEFAULT NULL,
  `kode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `name`, `class_id`, `teacher_id`) VALUES
(1, '7.1', 4, 89),
(2, '7.2', 4, 2),
(3, '7.3', 4, 2),
(4, '8.1', 5, 92),
(5, '8.2', 5, 2),
(6, '8.3', 5, 85),
(7, '9.1', 6, 87),
(8, '9.2', 6, 86),
(9, '9.3', 6, 90),
(10, 'SOCIAL', 7, 93),
(11, 'SCIENCE', 7, 97),
(12, 'SOCIAL', 8, 95),
(13, 'SCIENCE', 8, 96),
(14, 'SOCIAL', 9, 91),
(15, 'SCIENCE', 9, 91),
(16, '10.1', 10, 6);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL,
  `type` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(1, 'system_name', 'Al Mazaya Islamic School'),
(2, 'system_title', 'School Management System'),
(3, 'address', 'Jl. Cempaka Besar No. 57, Kelurahan Mawar, Kecamatan Banjarmasin Tengah, Kabupaten Kota Banjarmasin, Provinsi Kalimantan Selatan'),
(4, 'phone', '+8012654159'),
(5, 'paypal_email', NULL),
(6, 'currency', 'IDR'),
(7, 'system_email', 'school@almazaya.com'),
(20, 'active_sms_service', 'disabled'),
(11, 'language', 'indo'),
(12, 'text_align', 'left-to-right'),
(13, 'clickatell_user', ''),
(14, 'clickatell_password', ''),
(15, 'clickatell_api_id', ''),
(16, 'skin_colour', 'default'),
(17, 'twilio_account_sid', ''),
(18, 'twilio_auth_token', ''),
(19, 'twilio_sender_phone_number', ''),
(21, 'running_year', '2020-2021'),
(22, 'payumoney_merchant_key', 'sad'),
(23, 'payumoney_salt_id', 'asd'),
(24, 'msg91_authentication_key', NULL),
(25, 'msg91_sender_ID', NULL),
(26, 'msg91_route', NULL),
(27, 'msg91_country_code', NULL),
(28, 'purchase_code', 'AmazCode'),
(29, 'paypal', '[{\"active\":\"1\",\"mode\":\"sandbox\",\"sandbox_client_id\":\"AZDxjDScFpQtjWTOUtWKbyN_bDt4OgqaF4eYXlewfBP4-8aqX3PiV8e1GWU6liB2CUXlkA59kJXE7M6R\",\"production_client_id\":\"SomeId\"}]'),
(30, 'stripe_keys', '[{\"active\":\"0\",\"testmode\":\"on\",\"public_key\":\"pk_test_c6VvBEbwHFdulFZ62q1IQrar\",\"secret_key\":\"sk_test_9IMkiM6Ykxr1LCe2dJ3PgaxS\",\"public_live_key\":\"pk_live_xxxxxxxxxxxxxxxxxxxxxxxx\",\"secret_live_key\":\"sk_live_xxxxxxxxxxxxxxxxxxxxxxxx\"}]'),
(31, 'disable_frontend', '1');

-- --------------------------------------------------------

--
-- Table structure for table `silabus`
--

CREATE TABLE `silabus` (
  `id` int(5) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `class` varchar(10) DEFAULT NULL,
  `section` varchar(10) DEFAULT NULL,
  `id_teacher` varchar(5) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `file` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `silabus`
--

INSERT INTO `silabus` (`id`, `name`, `class`, `section`, `id_teacher`, `year`, `file`) VALUES
(1, 'silabus 1', '6', '7', '6', '', 'at0057_slb_20191208.docx'),
(2, 'SILABUS SMP', '4', '131', '94', '2019-2020', 'at00134_slb_20200107.pdf'),
(3, 'SILABUS SMP', '5', '154', '94', '2019-2020', 'at00134_slb_20200105.pdf'),
(4, 'Silabus kelas XI', '8', '209', '101', '2019-2020', 'at00183_slb_20200100.docx');

-- --------------------------------------------------------

--
-- Table structure for table `skripsi`
--

CREATE TABLE `skripsi` (
  `IDSkripsi` int(20) NOT NULL,
  `IDMahasiswaSkripsi` bigint(20) NOT NULL,
  `JudulSkripsi` varchar(200) NOT NULL,
  `QRCode` varchar(100) NOT NULL,
  `FileProposal` varchar(100) NOT NULL,
  `FileSkripsi` varchar(100) NOT NULL,
  `Uploader` bigint(20) DEFAULT NULL,
  `Deskripsi` text NOT NULL,
  `Tanggal` date NOT NULL,
  `Nilai` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `nisn` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthplace` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `religion` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_group` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `dormitory_id` int(11) DEFAULT NULL,
  `transport_id` int(11) DEFAULT NULL,
  `dormitory_room_number` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `authentication_key` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `kitas` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_akta` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agama` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `negara` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `khusus_siswa` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rt` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rw` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dusun` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kelurahan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kec` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kode_pos` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tinggal` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transportasi` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kks` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anak_ke` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_kps` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_kip` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama_kip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alasan_pip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_rek` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama_rek` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama_ayah` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nik_ayah` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tahun_ayah` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pendidikan_ayah` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pekerjaan_ayah` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `penghasilan_ayah` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `khusus_ayah` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama_ibu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nik_ibu` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tahun_ibu` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pendidikan_ibu` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pekerjaan_ibu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `penghasilan_ibu` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `khusus_ibu` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama_wali` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nik_wali` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tahun_wali` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pendidikan_wali` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pekerjaan_wali` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `penghasilan_wali` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telepon` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_hp` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_siswa` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `nisn`, `name`, `birthplace`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `parent_id`, `dormitory_id`, `transport_id`, `dormitory_room_number`, `authentication_key`, `kitas`, `no_akta`, `agama`, `negara`, `khusus_siswa`, `rt`, `rw`, `dusun`, `kelurahan`, `kec`, `kode_pos`, `tinggal`, `transportasi`, `kks`, `anak_ke`, `no_kps`, `no_kip`, `nama_kip`, `alasan_pip`, `bank`, `no_rek`, `nama_rek`, `nama_ayah`, `nik_ayah`, `tahun_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `khusus_ayah`, `nama_ibu`, `nik_ibu`, `tahun_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `khusus_ibu`, `nama_wali`, `nik_wali`, `tahun_wali`, `pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `telepon`, `no_hp`, `email_siswa`) VALUES
(1, 'bf575b6', 'Siswa', NULL, '07/11/1981', 'male', NULL, NULL, 'Jl. Cempaka Besar No. 57, Kelurahan Mawar, Kecamatan Banjarmasin Tengah, Kabupaten Kota Banjarmasin, Provinsi Kalimantan Selatan', '08222222223', 'siswa@almajaya.com', '24ec5822f0da36cb6e9df61eca854049cf20247f', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '7364837', 'Dipa', NULL, '06/07/13', 'female', NULL, NULL, 'Banjarmasin', '0834349835y723', 'siswa1@almajaya.com', 'f865b53623b121fd34ee5426c792e5c33af8c227', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '00554446644', 'Mustapa Ahmad Kamal', NULL, '12/28/2008', 'male', NULL, NULL, 'Banjarmasin', '08000080577', 'sma2@almajaya.com', 'f865b53623b121fd34ee5426c792e5c33af8c227', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '00552211', 'KAMAL', NULL, '01/07/12', 'male', NULL, NULL, 'Banjarmasin', '082343657', 'kamal@almajaya.com', 'f865b53623b121fd34ee5426c792e5c33af8c227', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '0834567877', 'kmklmk', NULL, NULL, 'male', NULL, NULL, NULL, NULL, NULL, 'f865b53623b121fd34ee5426c792e5c33af8c227', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '1234567', 'contoh', 'amuntai', '01/26/2009', 'male', NULL, 'a', 'Jl. Cempaka Besar No. 57, Kelurahan Mawar, Kecamatan Banjarmasin Tengah, Kabupaten Kota Banjarmasin, Provinsi Kalimantan Selatan', '08000000800', NULL, 'f865b53623b121fd34ee5426c792e5c33af8c227', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '082153022011', 'herru', 'kota', '09/01/2008', 'mele', NULL, NULL, 'mgl', '082153022011', 'herr@gmail.com', '$2y$12$ElkP9M1Ciz8rQGrXu.2OUOPLkyLI9Uo7eQD1k5lt2GAt7/IDg3Rfq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, 'herru', 'amuntai', '11/09/2009', 'male', NULL, 'a', 'bjm', '082153022011', NULL, '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, NULL, 'arsdft', NULL, NULL, NULL, NULL, '', NULL, '', NULL, '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '0909', 'amang', 'amuntai', '03/04/2010', 'male', NULL, '', 'bjm', '082153022011', NULL, '40bd001563085fc35165329ea1ff5c5ecbdbbeef', NULL, NULL, NULL, NULL, NULL, '46322527', '882452', 'islam', 'indonesia', 'tidak', '05', '09', 'kota baru', 'hulu hulu', 'hala hala', '7555', 'margasari', 'ngesot', '99881', '8', '998123124', '77128319', 'saripudin', 'karan ingin jadi pahlawan', 'brri', '77161 1221 1239 009', 'saripudin', 'basuki', '877123134', '1979', 'S3 mengemudi', 'dreaming', '35.000.000', 'cinta', 'siti badriah', '77186123', '1982', 'S1 menjahit', 'ngurus bokap', '10.000.000', 'tidak', 'nispuni', '342671', '1995', 'SMA', 'kuli bangunan', '1.500.000', '0988888', '08212', 'herrru@rqi.com'),
(12, '12345', 'Siswa ', 'banjarmasin', '12/01/2008', 'male', NULL, 'a', 'Jl. Cempaka Besar No. 57, Kelurahan Mawar, Kecamatan Banjarmasin Tengah, Kabupaten Kota Banjarmasin, Provinsi Kalimantan Selatan', '08000000800', NULL, 'f865b53623b121fd34ee5426c792e5c33af8c227', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_applicant`
--

CREATE TABLE `student_applicant` (
  `applicant_id` int(11) NOT NULL,
  `name` longtext DEFAULT NULL,
  `birthplace` longtext DEFAULT NULL,
  `birthday` longtext DEFAULT NULL,
  `sex` longtext DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `phone` longtext DEFAULT NULL,
  `email` longtext DEFAULT NULL,
  `nama_ayah` longtext DEFAULT NULL,
  `nama_ibu` longtext DEFAULT NULL,
  `nama_wali` longtext DEFAULT NULL,
  `no_hp` longtext DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `department` longtext DEFAULT NULL,
  `ket` longtext DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `date_time` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_applicant`
--

INSERT INTO `student_applicant` (`applicant_id`, `name`, `birthplace`, `birthday`, `sex`, `address`, `phone`, `email`, `nama_ayah`, `nama_ibu`, `nama_wali`, `no_hp`, `school_id`, `department`, `ket`, `status`, `user`, `date_time`) VALUES
(4, 'Chaylila Lubna Azizah ', '', '', 'female', 'Jl. A Yani km. 5,5 Komplek Saka Agung No. 120', '', '', 'Heriansyah, SE', '', '', '081348901090 / 081348331333', 13, NULL, 'SUDAH REGISTRASI ULANG', 'Applicant', 1, '1585983336'),
(5, 'Kaysya Desliana', '', '', 'female', 'Jl. Perdagangan komplek Anugrah Persada  permai jalur 5', '', '', 'Syaiful Anwar,SH', '', '', '085251120034', 14, NULL, '', 'Applicant', 1, '1585983606'),
(6, 'Fasya Akmal', '', '', 'male', 'Jl. Sungai Andai Komplek Hidayah Blok V No.55', '', '', 'Hendra Wahyudi', '', '', '085248084425', 15, NULL, '', 'Applicant', 1, '1585983913'),
(7, 'M. Fadilla', '', '', 'male', 'Jl Skip Lama Gg.II', '', '', 'M. Kairul Wahyudi Ramadan', '', '', '085248084425', 16, NULL, '', 'Applicant', 1, '1585984063'),
(8, 'Muhammad Irsyad Khairullah Ariady', '', '', 'male', 'Jl. Sultan Adam Komplek Mandiri Permai No. 75C', '', '', 'Fahriadi Ariady,SKM.MKes', '', '', '0511-3301925', 17, NULL, '', 'Applicant', 1, '1585984294'),
(9, 'M. Alif Ibnu Rasyid', '', '', 'male', 'Jl. A Yani Km. 7 Komplek Margasari Permai Blok B No. 3', '', '', 'H. Haderami', '', '', '081253319118', 18, NULL, '', 'Applicant', 1, '1585984445'),
(10, 'Adzra Nabila Yusuf', '', '', 'female', 'Jl. Perdagangan komplek bumi indah lestari II No. 124 RT.24', '', '', 'Muhammad Yusuf', '', '', '08115006784 / 081918191811', 17, NULL, '', 'Applicant', 1, '1585984771'),
(11, 'M. Hafizh Al Furqon', '', '', 'male', 'Jl. Kaca Piring 3 No. 11', '', '', 'M. Ali Rochyat', '', '', '08115112711', 17, NULL, '', 'Applicant', 1, '1585984980'),
(12, 'Athaya Gagah Pratama', '', '', 'male', 'Komplek Bina Brata Blok M No. 10', '', '', 'Rizali', '', '', '085248163333', 17, NULL, '', 'Applicant', 1, '1585985371'),
(13, 'Muhammad Hafizhy Rizqullah', '', '', 'male', 'Jl. Kerung indah No. 21 Blok A RT 18 RW. 02, Handil bakti', '', '', '', 'Hj. Ade Frita Iryana', '', '08125106646', 12, NULL, '', 'Applicant', 1, '1585985672'),
(14, 'Radhika Anshari', '', '', 'male', 'Jl. Padat Karya Komplek Herlina Perkasa Blok Jeruk purut 8 No. 3 RT. 69', '', '', 'Iskandar', '', '', '081251243399', 19, NULL, '', 'Applicant', 1, '1585986263'),
(15, 'Muhammad Ghajali', '', '', 'male', 'Jl. Sultan Adam Komplek perkasa indah/46B', '', '', 'Diden Rusmana', '', '', '081349479002', 20, NULL, '', 'Applicant', 1, '1585986575'),
(16, 'M. Alvaro Zain Barra', '', '', 'male', 'Jl. D. Sundoro No. 20 LK 11 RT.002 RW.02', '', '', '', 'Elvi Syahrina Florisa,SP', '', '081234144700', 17, NULL, '', 'Applicant', 1, '1585986863'),
(17, 'Hisana Fitriani', '', '', 'female', 'Jl. Simpang tangga Jl. IV Komplek bumi indah lestari No. 46 RT. 46 RW.03', '', '', 'Hiryadi', '', '', '082157068843', 17, NULL, '', 'Applicant', 1, '1585987197'),
(18, 'M. Dimas Fansyuri', '', '', 'male', 'Komplek graha sejahtera blok K No.2 RT.07', '', '', 'Dedek Janiar, ST', '', '', '087815263086 / 085248040666', 21, NULL, '', 'Applicant', 1, '1585987336'),
(19, 'Muhammad Raja Al-Zaidan', '', '', 'male', 'Jl HKSN Komplek Dasamaya II Blok H No 17', '', '', 'Akhmad Rivai', '', '', '081350065958', 17, NULL, '', 'Applicant', 1, '1586135939'),
(20, 'Abdad', '', '', '', '', '', '', '', '', '', '', 22, NULL, '', 'Applicant', 1, '1586136066'),
(21, 'Naufal Farel', '', '', '', '', '', '', '', '', '', '', 17, NULL, '', 'Applicant', 1, '1586136102'),
(22, 'Cendy Rosseline Yudha Atmaja', '', '', 'female', 'Jl Arjuna XII No.5 Komplek Bumi Pemurus Permai RT.023 rw.003', '', '', 'Pujo Trisinar Yudho', '', '', '08125174087', 12, NULL, '', 'Applicant', 1, '1586136238'),
(23, 'Najwa Gusasi', '', '', 'female', 'Banjar Indah', '', '', 'Sri Wahyuni', '', '', '087815024692', 12, NULL, '', 'Applicant', 1, '1586136382'),
(24, 'M. Rafa Azzam Wicaksana', '', '', 'male', 'Jl. Dahlia Kebun Sayur No. 11 RT.12', '', '', 'Joko Sunarwan', '', '', '081349442366 / 085249317115', 23, NULL, '', 'Applicant', 1, '1586136511'),
(25, 'Laksmana Raditya Aryanata Suroto', '', '', 'male', 'Komplek persada raya I jalur V No. 51 RT.22 RW.02, Kelurahan Handil Bakti, Kecamatan Alalak', '', '', 'Wahyudi Dony', '', '', '081345012345', 21, NULL, '', 'Applicant', 1, '1586136714'),
(26, 'Azelin Nafisha Fajar', '', '', 'female', 'Jl.  A Yani Km. 4.5 Komplek Amanda Permai No. 38 RT.01 RW.01', '', '', 'Ananda Fajar', '', '', '081350459008 / 085820646410', 24, NULL, '', 'Applicant', 1, '1586137010'),
(27, 'Helva Nadhira', '', '', 'female', 'Jl H Hasan Basri Ruko No. 4D', '', '', 'Dr. M. Fuadi', '', '', '0811506626', 22, NULL, '', 'Applicant', 1, '1586137147'),
(28, 'Yumna Haura Kasimira', '', '', 'female', 'Jl. Padat Karya Komplek Taman Pesona Permai No.69 RT.21, Kelurahan Sungai Andai', '', '', 'Supiansyah', '', '', '081348069009', 25, NULL, '', 'Applicant', 1, '1586137266'),
(29, 'Nazheera Uzhma Mumtaz', '', '', 'female', 'Jl. Insgub RT. 6 No. 263 Kampung Baru, Tanah Bumbu', '', '', 'M. Yasin Toyib', '', '', '085245304198', 26, NULL, '\r\n', 'Applicant', 1, '1586137433'),
(30, 'Gusti Naura Adhya Kirana', '', '', 'female', 'Jl. Sungai Lulut km. 8 Komplek Bimaland Blok E6', '', '', 'Gusti Sapta Adhi Nugraha Hikmatullah', '', '', '085105766577', 17, NULL, '', 'Applicant', 1, '1586137559'),
(31, 'Abyan Ridho Jati', '', '', 'male', 'Jl. Meranti VII/10 RT.35 RW.03', '', '', 'Pujianto', '', '', '081348362253', 17, NULL, '', 'Applicant', 1, '1586137693'),
(32, 'Siti Azizah Maulidya Firdausi', '', '', 'female', 'Jl. Trans Kalimantan Komplek Citra Karya Abadi No. 8 RT.09, Kelurahan Brangas Timur', '', '', 'Dr. H. Iqbal Firdausi,SP,MSi', '', '', '085391290000 / 081237911111', 20, NULL, '\r\n', 'Applicant', 1, '1586137938'),
(33, 'Amanda Tazkia Azhar', '', '', 'female', 'Jl. Padat karya komplek purnama permai I, Jalur 6 No. 96 S. Andai', '', '', 'Akhmad Rifani', '', '', '081348924465', 17, NULL, '', 'Applicant', 1, '1586138121'),
(34, 'Ibnu Ziya Raihanun Islam', '', '', 'male', 'Komplek persada asri estate, RT.12 RW.02, Kelurahan berangas timur, kecamatan alalak', '', '', 'A. Ruzeli.SH', '', '', '', 17, NULL, '', 'Applicant', 1, '1586141310'),
(35, 'Khalisya Almagvira Hakim', '', '', 'female', 'Jl. S.Parman No. 88', '', '', 'Lutful Hakim', '', '', '081345452333', 27, NULL, '', 'Applicant', 1, '1586142331'),
(36, 'Firja Yumna', '', '', 'female', 'Jl. Pramuka komplek melati indah No. 16 RT.30', '', '', 'H. Hamka', '', '', '081285759515', 17, NULL, '', 'Applicant', 1, '1586142571'),
(37, 'Azizati Nuraniyati', '', '', 'female', 'Jl. Teluk tiram laut No. 46 RT.01 RW.01 Kelurahan Telawang, kecamatan banjarmasin barat', '', '', '', 'Hj. Silvani', '', '', 13, NULL, '', 'Applicant', 1, '1586143227'),
(38, 'Azizah Azzahra', '', '', 'female', 'Jl. Teluk Tiram darat No. 109', '', '', 'M. Faizal', '', '', '081349395008', 28, NULL, '', 'Applicant', 1, '1586143695'),
(39, 'Akhmad Rifani', '', '', 'male', 'Jl. Simpang Belitung RT.1 No. 19, kelurahan kuin selatan, kecamatan banjar barat', '', '', 'Fachruddin', '', '', '085345616689', 20, NULL, '\r\n', 'Applicant', 1, '1586143844'),
(40, 'Vina Syantiana', '', '', 'female', 'Jl. Perdagangan Komplek Anugrah Persada Permai Jalur 5', '', '', 'Syaiful', '', '', '', 31, '', '', 'Applicant', 1, '1586144811'),
(41, 'Riflah Ainaya Fatihatul Aschda', '', '', 'female', 'Komplek persada permai jalur 1 RT.14', '', '', '', 'Dewi Damayanti', '', '0813483796940', 29, '', '\r\n', 'Applicant', 1, '1586229020'),
(42, 'Nabila Hana', '', '', 'female', 'Kayu Tangi II Jalur 3 No. 19', '', '', 'H. Nurkholis', '', '', '0894150679', 29, '', '', 'Applicant', 1, '1586229121'),
(43, 'Alejandro Rizki Putra Ichwan', '', '', 'male', 'Citra Garden, Garden Pointe B11', '', '', 'M. Chairul Ichwan', '', '', '0811502929', 29, '', '', 'Applicant', 1, '1586229402'),
(44, 'Yunita Alifah Haura', '', '', 'female', 'Kl. Sultan Adam Komplek Madani 1 Jalur 1', '', '', 'Saibana', '', '', '082155643867', 29, '', '', 'Applicant', 1, '1586229519'),
(45, 'Muhammad Achmad Malaickhal A&#039;raf Aura Illahi', '', '', 'male', 'Kota Citra Graha, Cluster Iris Blok C04, Lianganggang', '', '', 'Alex Syambo', '', '', '081254017111', 32, '', '', 'Applicant', 1, '1586229627'),
(46, 'M. Farhan Azizi', '', '', '', '', '', '', '', '', '', '', 0, '', '', 'Applicant', 1, '1586229674');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `year` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `name`, `class_id`, `section_id`, `teacher_id`, `year`) VALUES
(123, 'Math - 16', 4, 1, 102, '2019-2020'),
(124, 'B. Indonesian - 18', 4, 1, 95, '2019-2020'),
(125, 'Science - 1', 4, 1, 85, '2019-2020'),
(126, 'PAI - 3', 4, 1, 84, '2019-2020'),
(127, 'English - 13', 4, 1, 100, '2019-2020'),
(128, 'Sport - 7', 4, 1, 105, '2019-2020'),
(129, 'Social - 10', 4, 1, 106, '2019-2020'),
(130, 'Civic - 15', 4, 1, 93, '2019-2020'),
(131, 'B. Indonesian - 17', 4, 2, 94, '2019-2020'),
(132, 'Science - 1', 4, 2, 85, '2019-2020'),
(133, 'Math - 16', 4, 2, 102, '2019-2020'),
(134, 'Social - 10', 4, 2, 106, '2019-2020'),
(135, 'PAI - 3', 4, 2, 84, '2019-2020'),
(136, 'English - 13 ', 4, 2, 100, '2019-2020'),
(137, 'Sport - 7', 4, 2, 105, '2019-2020'),
(138, 'Civic - 15', 4, 2, 93, '2019-2020'),
(139, 'Science - 1', 4, 3, 85, '2019-2020'),
(140, 'Math - 16', 4, 3, 102, '2019-2020'),
(141, 'English - 13', 4, 3, 100, '2019-2020'),
(142, 'B. Indonesian - 4', 4, 3, 86, '2019-2020'),
(143, 'PAI - 3 ', 4, 3, 84, '2019-2020'),
(144, 'Social - 10', 4, 3, 106, '2019-2020'),
(145, 'Sport - 7', 4, 3, 105, '2019-2020'),
(146, 'Civic -15 ', 4, 3, 93, '2019-2020'),
(147, 'Math - 2', 5, 4, 103, '2019-2020'),
(148, 'PAI - 3', 5, 4, 84, '2019-2020'),
(149, 'Sport - 7', 5, 4, 105, '2019-2020'),
(150, 'Science - 8', 5, 4, 89, '2019-2020'),
(151, 'Social - 10', 5, 4, 106, '2019-2020'),
(152, 'English - 14', 5, 4, 92, '2019-2020'),
(153, 'Civic - 15', 5, 4, 93, '2019-2020'),
(154, 'B. Indonesia - 17', 5, 4, 94, '2019-2020'),
(155, 'Math - 2', 5, 5, 103, '2019-2020'),
(156, 'PAI - 3', 5, 5, 84, '2019-2020'),
(157, 'Sport - 7', 5, 5, 105, '2019-2020'),
(158, 'Science - 8', 5, 5, 89, '2019-2020'),
(159, 'Social - 10', 5, 5, 106, '2019-2020'),
(160, 'English - 14', 5, 5, 92, '2019-2020'),
(161, 'Civic - 15', 5, 5, 93, '2019-2020'),
(162, 'B. Indonesia - 17', 5, 5, 94, '2019-2020'),
(163, 'Math - 2', 5, 6, 103, '2019-2020'),
(164, 'PAI - 3', 5, 6, 84, '2019-2020'),
(165, 'Sport - 7', 5, 6, 105, '2019-2020'),
(166, 'Science - 8', 5, 6, 89, '2019-2020'),
(167, 'Social - 10', 5, 6, 106, '2019-2020'),
(168, 'English - 14', 5, 6, 92, '2019-2020'),
(169, 'Civic - 15', 5, 6, 93, '2019-2020'),
(170, 'B. Indonesia - 17', 5, 6, 94, '2019-2020'),
(171, 'PAI - 3', 6, 7, 84, '2019-2020'),
(172, 'B. Indonesia - 4', 6, 7, 86, '2019-2020'),
(173, 'Math - 5', 6, 7, 87, '2019-2020'),
(174, 'Science - 6', 6, 7, 88, '2019-2020'),
(175, 'Sport - 7', 6, 7, 105, '2019-2020'),
(176, 'English - 9', 6, 7, 90, '2019-2020'),
(177, 'Science/Environment - 12', 6, 7, 91, '2019-2020'),
(178, 'Art - 11', 6, 7, 107, '2019-2020'),
(179, 'Civic - 15', 6, 7, 93, '2019-2020'),
(180, 'TIK - 19', 6, 7, 83, '2019-2020'),
(181, 'Social - 20', 6, 7, 104, '2019-2020'),
(182, 'PAI - 3', 6, 8, 84, '2019-2020'),
(183, 'B. Indonesia - 4', 6, 8, 86, '2019-2020'),
(184, 'Math - 5', 6, 8, 87, '2019-2020'),
(185, 'Science - 6', 6, 8, 88, '2019-2020'),
(186, 'Sport - 7', 6, 8, 105, '2019-2020'),
(187, 'English - 9', 6, 8, 90, '2019-2020'),
(188, 'Science/Environment - 12', 6, 8, 91, '2019-2020'),
(189, 'Art - 11', 6, 8, 107, '2019-2020'),
(190, 'Civic - 15', 6, 8, 93, '2019-2020'),
(191, 'TIK - 19', 6, 8, 83, '2019-2020'),
(192, 'Social - 20', 6, 8, 104, '2019-2020'),
(193, 'PAI - 3', 6, 9, 84, '2019-2020'),
(194, 'B. Indonesia - 4', 6, 9, 86, '2019-2020'),
(195, 'Math - 5', 6, 9, 87, '2019-2020'),
(196, 'Science - 6', 6, 9, 88, '2019-2020'),
(197, 'Sport - 7', 6, 9, 105, '2019-2020'),
(198, 'English - 9', 6, 9, 90, '2019-2020'),
(199, 'Science/Environment - 12', 6, 9, 91, '2019-2020'),
(200, 'Art - 11', 6, 9, 107, '2019-2020'),
(201, 'Civic - 15', 6, 9, 93, '2019-2020'),
(202, 'TIK - 19', 6, 9, 83, '2019-2020'),
(203, 'Social - 20', 6, 9, 104, '2019-2020'),
(205, 'B. Indonesia - 3', 8, 13, 95, '2019-2020'),
(206, 'Biology - 7', 8, 13, 91, '2019-2020'),
(207, 'Chemistry - 1', 8, 13, 96, '2019-2020'),
(208, 'Civic - 14', 8, 13, 93, '2019-2020'),
(209, 'English - 15', 8, 13, 101, '2019-2020'),
(210, 'English - 13', 8, 13, 108, '2019-2020'),
(211, 'History - 8', 8, 13, 98, '2019-2020'),
(212, 'Math - 4', 8, 13, 97, '2019-2020'),
(213, 'PAI-BP - 2', 8, 13, 84, '2019-2020'),
(214, 'Physics - 5', 8, 13, 88, '2019-2020'),
(215, 'Sport - 6', 8, 13, 105, '2019-2020'),
(216, 'B. Indonesia - 3', 8, 12, 95, '2019-2020'),
(217, 'Civic - 14', 8, 12, 93, '2019-2020'),
(218, 'Economy - 10', 8, 12, 98, '2019-2020'),
(219, 'English - 15', 8, 12, 101, '2019-2020'),
(220, 'Geography - 16', 8, 12, 104, '2019-2020'),
(221, 'History - 22', 8, 12, 104, '2019-2020'),
(222, 'Math - 19', 8, 12, 103, '2019-2020'),
(223, 'PAI-BP - 2', 8, 12, 84, '2019-2020'),
(224, 'Sociology - 12', 8, 12, 104, '2019-2020'),
(225, 'Soprt - 6', 8, 12, 105, '2019-2020'),
(237, 'B. Indonesia - 3', 9, 15, 95, '2019-2020'),
(238, 'Biology - 7', 9, 15, 91, '2019-2020'),
(239, 'Chemistry - 1', 9, 15, 96, '2019-2020'),
(240, 'Civic - 14', 9, 15, 93, '2019-2020'),
(241, 'English - 15', 9, 15, 101, '2019-2020'),
(242, 'English - 13', 9, 15, 108, '2019-2020'),
(243, 'History - 9', 9, 15, 99, '2019-2020'),
(244, 'Math - 4', 9, 15, 97, '2019-2020'),
(245, 'PAI-BP - 2', 9, 15, 84, '2019-2020'),
(246, 'Physics - 5', 9, 15, 88, '2019-2020'),
(247, 'Sport - 6', 9, 15, 105, '2019-2020'),
(249, 'B. Indonesia - 3', 9, 14, 95, '2019-2020'),
(250, 'Civic - 14', 9, 14, 93, '2019-2020'),
(251, 'Economy - 11', 9, 14, 99, '2019-2020'),
(252, 'English - 15', 9, 14, 101, '2019-2020'),
(253, 'English - 13', 9, 14, 108, '2019-2020'),
(254, 'Geography - 21', 9, 14, 99, '2019-2020'),
(255, 'History - 9', 9, 14, 99, '2019-2020'),
(256, 'Math - 4', 9, 14, 97, '2019-2020'),
(257, 'PAI-BP - 2', 9, 14, 84, '2019-2020'),
(258, 'Sociology - 12', 9, 14, 104, '2019-2020'),
(259, 'Sport - 6', 9, 14, 105, '2019-2020'),
(260, 'TIK - 17', 9, 15, 83, '2019-2020'),
(261, 'TIK - 17', 9, 14, 83, '2019-2020'),
(262, 'B. Indonesia - 3', 7, 11, 95, '2019-2020'),
(263, 'Biologi - 7', 7, 11, 91, '2019-2020'),
(264, 'Chemistry - 17', 7, 11, 96, '2019-2020'),
(265, 'Civic - 14', 7, 11, 93, '2019-2020'),
(266, 'English - 15', 7, 11, 101, '2019-2020'),
(267, 'History - 8', 7, 11, 98, '2019-2020'),
(268, 'Math - 4', 7, 11, 97, '2019-2020'),
(269, 'Math - 18', 7, 11, 102, '2019-2020'),
(270, 'PAI-BP - 2', 7, 11, 84, '2019-2020'),
(271, 'Sport - 6', 7, 11, 105, '2019-2020'),
(272, 'B. Indonesia - 3', 7, 10, 95, '2019-2020'),
(273, 'Civic - 14', 7, 10, 93, '2019-2020'),
(274, 'English - 15', 7, 10, 101, '2019-2020'),
(275, 'History - 9', 7, 10, 99, '2019-2020'),
(276, 'Math - 18', 7, 10, 102, '2019-2020'),
(277, 'PAI-BP - 2', 7, 10, 84, '2019-2020'),
(278, 'Sport - 6', 7, 10, 105, '2019-2020'),
(279, 'Economy - 10', 7, 10, 98, '2019-2020'),
(280, 'Geography - 16', 7, 10, 104, '2019-2020'),
(281, 'Sociology - 12', 7, 10, 104, '2019-2020'),
(282, 'Physic - 20', 7, 11, 96, '2019-2020'),
(283, 'English - 13', 8, 12, 108, '2019-2020');

-- --------------------------------------------------------

--
-- Table structure for table `superadmin`
--

CREATE TABLE `superadmin` (
  `superadmin_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `authentication_key` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `superadmin`
--

INSERT INTO `superadmin` (`superadmin_id`, `name`, `email`, `username`, `password`, `level`, `authentication_key`, `phone`, `address`) VALUES
(1, 'Super Administrator', 'super@admin.com', 'superadmin', 'f865b53623b121fd34ee5426c792e5c33af8c227', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `nip` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'teacher',
  `birthday` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `religion` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_group` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `authentication_key` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_links` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_on_website` int(11) DEFAULT 0,
  `photo` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `nip`, `name`, `position`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `authentication_key`, `designation`, `social_links`, `show_on_website`, `photo`, `status`) VALUES
(83, 'at0057', 'Baihaqi', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'baihaqi@gmail.com', '25ac23047172cc4523508d2bfef490885605cb8a', NULL, NULL, NULL, 0, NULL, 1),
(84, 'at0064', 'Mukhlis', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'mukhlisahmadmuaidi@gmail.com', '4193fb40bd3dc4d33b3a6a60f05dbf1b5f7c1378', NULL, NULL, NULL, 0, NULL, 1),
(85, 'at0071', 'Rusi Milita', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'rosimilita@gmail.com', '011d298465e55ac6d93206a04e227df59ab23bdc', NULL, NULL, NULL, 0, NULL, 1),
(86, 'at0078', 'Rido Ansyori', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'rido.ansyori@gmail.com', 'a853aa3de88ddd03b674167759cfca42dcb2313c', NULL, NULL, NULL, 0, NULL, 1),
(87, 'at0085', 'Herliana', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'herlianawicaksono@gmail.com', '3284e60db16f7ec68eeac1f3744efad26135eebe', NULL, NULL, NULL, 0, NULL, 1),
(88, 'at0092', 'Annisa Nursyifa', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '72e04b4380a4f2f3fc1916f11741d40eb1b18943', NULL, NULL, NULL, 0, NULL, 1),
(89, 'at0099', 'Nazar Mutawali', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'nazarmutawali@yahoo.co.id', '757c08260b47a9ef9ec960912391c4aeb3bc6ada', NULL, NULL, NULL, 0, NULL, 1),
(90, 'at00106', 'Renanda N. Bilianti', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'renandanb@gmail.com', 'cf3349f50eb2b38eb8366d271d919f8e165118d1', NULL, NULL, NULL, 0, NULL, 1),
(91, 'at00113', 'Siti Mardiah. A', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'aaat00113', '83cbf6339909fcebd73194a9510b27fce78bdade', NULL, NULL, NULL, 0, NULL, 1),
(92, 'at00120', 'Nisa Kusumaningtyas', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'nisakusuma7@gmail.com', '2ab87f0c8d72c958df313144622f42f835187950', NULL, NULL, NULL, 0, NULL, 1),
(93, 'at00127', 'Novita Sari', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'civicsmp@yahoo.com', 'c62b3908a89de006bbc909a62a33b485177a92f2', NULL, NULL, NULL, 0, NULL, 1),
(94, 'at00134', 'Hestira Cayu Dahniar', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'ecidahniar@gmail.com', '05dea195cdf8c51a3fd9601941b2737addf6ba6e', NULL, NULL, NULL, 0, NULL, 1),
(95, 'at00141', 'Muhammad firdaus', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, '04.firdausm@gmail.com', '1180817fc683fcc2b40d0953de39cb033b6cd24a', NULL, NULL, NULL, 0, NULL, 1),
(96, 'at00148', 'Nadya Hidayati', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'nadyahidayati96@gmail.com', '81ff99094bc3c6461c5e89b42282f66aeab92186', NULL, NULL, NULL, 0, NULL, 1),
(97, 'at00155', 'Dahlia', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'dahliaalkaf40@gmail.com', 'afd714b55dd73b00d0adbc71d01d875423794f0b', NULL, NULL, NULL, 0, NULL, 1),
(98, 'at00162', 'Siti Jariah', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '856332e3b3bef5759f196450c634b0ff92b2b50a', NULL, NULL, NULL, 0, NULL, 0),
(99, 'at00169', 'Siti Fatimah', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76a690ee00bdfbd19e80af6bf647b84675e1726a', NULL, NULL, NULL, 0, NULL, 0),
(100, 'at00176', 'Yunada Afriliani', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'afbc6f0518cd213b596663f10ea15c958dc01f6d', NULL, NULL, NULL, 0, NULL, 0),
(101, 'at00183', 'Rahma Anjarwati,S.Pd.,Gr.', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'rachmaanjarwati931@gmail.com', '1d9555594b94841a8e5b43258f04de09223756c8', NULL, NULL, NULL, 0, NULL, 1),
(102, 'at00190', 'Muhammad Nasir', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'muhammadnasir170996@gmail.com', 'ed04e930bed34e140f7fa9ade8ab148bf14fd098', NULL, NULL, NULL, 0, NULL, 1),
(103, 'at00197', 'Rina Supriyanti, S.Pd., Gr.', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'rinasupsup95@gmail.com', 'e9ce409c012751322853a4f58941245647aab47e', NULL, NULL, NULL, 0, NULL, 0),
(104, 'at00204', 'Noor Meilina', 'Teacher', NULL, 'female', NULL, NULL, NULL, NULL, 'noormeilinaips15@gmail.com', '15af987b60702cdcb77982067f5ffec851a59f51', NULL, NULL, '[{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}]', 0, NULL, 1),
(105, 'at00211', 'Sepriyani Ina Tokan', 'Teacher', NULL, 'female', NULL, NULL, NULL, NULL, 'sepriyaniina@gmail.com', '6b05e02f2fce1a4fdbfd24fc90ba72959ed63d7f', NULL, NULL, '[{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}]', 0, NULL, 0),
(106, 'at00218', 'Abdurrahman Fauzi', 'Teacher', NULL, 'male', NULL, NULL, NULL, NULL, 'aaaaat00218', '2a87b0d0df5c2ad6b81cf682b89ff4d205f8175e', NULL, NULL, NULL, 0, NULL, 1),
(107, 'at00225', 'Sya&#039;diyah', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'aaaaat00225', 'c0c16c7aaa53bf35e4f4ae229b405e7db985196a', NULL, NULL, NULL, 0, NULL, 0),
(108, '654321', 'Guru', 'Teacher', '07/11/1990', 'male', NULL, NULL, 'Banjarmasin', '085555555', 'guru@gmail.com', 'f865b53623b121fd34ee5426c792e5c33af8c227', NULL, NULL, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_download`
--

CREATE TABLE `teacher_download` (
  `download_id` int(11) NOT NULL,
  `journal_id` int(11) DEFAULT NULL,
  `document_id` int(11) DEFAULT NULL,
  `file_name` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teaching_planning`
--

CREATE TABLE `teaching_planning` (
  `learning_id` int(10) NOT NULL,
  `prota` longtext DEFAULT NULL,
  `prosem` longtext DEFAULT NULL,
  `silabus` longtext DEFAULT NULL,
  `rpp` longtext DEFAULT NULL,
  `kikd` longtext DEFAULT NULL,
  `learn_material` longtext DEFAULT NULL,
  `teacher_id` int(10) DEFAULT NULL,
  `class_id` int(10) DEFAULT NULL,
  `section_id` int(10) DEFAULT NULL,
  `subject_id` int(10) DEFAULT NULL,
  `timestamp` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teaching_planning`
--

INSERT INTO `teaching_planning` (`learning_id`, `prota`, `prosem`, `silabus`, `rpp`, `kikd`, `learn_material`, `teacher_id`, `class_id`, `section_id`, `subject_id`, `timestamp`) VALUES
(6, '082237755772_prota_20190748.docx', '082237755772_prosem_2019.docx', '082237755772_silabus_2019.docx', '082237755772_rp_2019.docx', '082237755772_prorem_2019.docx', '082237755772_material_2019.docx', 2, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL, NULL, '99988888_material_20190700.csv', 4, NULL, NULL, 1, NULL),
(9, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL, NULL, 'at0092_material_20190716.docx', 11, 4, 2, 19, NULL),
(11, NULL, NULL, NULL, NULL, NULL, NULL, 11, 5, 0, 38, NULL),
(12, NULL, NULL, 'at0092_silabus_20190759.docx', NULL, NULL, NULL, 11, 6, 0, 74, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `transport_id` int(11) NOT NULL,
  `route_name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_of_vehicle` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `route_fare` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tr_ikut_ujian`
--

CREATE TABLE `tr_ikut_ujian` (
  `id` int(6) NOT NULL,
  `id_tes` int(6) DEFAULT NULL,
  `id_user` int(6) DEFAULT NULL,
  `list_soal` longtext DEFAULT NULL,
  `list_jawaban` longtext DEFAULT NULL,
  `jml_benar` int(6) DEFAULT NULL,
  `nilai` decimal(10,2) DEFAULT NULL,
  `nilai_bobot` decimal(10,2) DEFAULT NULL,
  `bobot_benar` int(11) DEFAULT NULL,
  `bobot_salah` int(11) DEFAULT NULL,
  `bobot_kosong` int(11) DEFAULT NULL,
  `tgl_mulai` datetime DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `status` enum('Y','N') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_ikut_ujian`
--

INSERT INTO `tr_ikut_ujian` (`id`, `id_tes`, `id_user`, `list_soal`, `list_jawaban`, `jml_benar`, `nilai`, `nilai_bobot`, `bobot_benar`, `bobot_salah`, `bobot_kosong`, `tgl_mulai`, `tgl_selesai`, `status`) VALUES
(2, 10, 303, '23', '23:B:N,', 1, '100.00', '1.00', 0, 0, 0, '2018-11-30 16:35:03', '2018-11-30 16:45:03', 'N'),
(7, 14, 303, '24', '24:A:N,', 1, '100.00', '1.00', 0, 0, 0, '2019-11-03 22:26:39', '2019-11-03 22:36:39', 'N'),
(11, 16, 303, '26,24,25', '26:A:N,24:C:N,25:C:N,', 1, '33.33', '1.00', 0, 0, 0, '2019-11-06 16:30:56', '2019-11-06 16:40:56', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `tr_kelompok_mapel`
--

CREATE TABLE `tr_kelompok_mapel` (
  `id` int(6) NOT NULL,
  `id_guru` int(6) DEFAULT NULL,
  `id_mapel` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_kelompok_mapel`
--

INSERT INTO `tr_kelompok_mapel` (`id`, `id_guru`, `id_mapel`) VALUES
(7, 7, 2),
(8, 7, 4),
(9, 6, 2),
(10, 6, 3),
(11, 8, 2),
(12, 8, 3),
(13, 8, 4),
(14, 6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tr_kelompok_tes`
--

CREATE TABLE `tr_kelompok_tes` (
  `id` int(6) NOT NULL,
  `id_guru` int(6) DEFAULT NULL,
  `id_mapel` int(6) DEFAULT NULL,
  `nama_ujian` varchar(200) DEFAULT NULL,
  `jumlah_soal` int(6) DEFAULT NULL,
  `waktu` int(6) DEFAULT NULL,
  `jenis` enum('acak','set') DEFAULT NULL,
  `detil_jenis` varchar(500) DEFAULT NULL,
  `tgl_mulai` datetime DEFAULT NULL,
  `terlambat` datetime DEFAULT NULL,
  `token` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_kelompok_tes`
--

INSERT INTO `tr_kelompok_tes` (`id`, `id_guru`, `id_mapel`, `nama_ujian`, `jumlah_soal`, `waktu`, `jenis`, `detil_jenis`, `tgl_mulai`, `terlambat`, `token`) VALUES
(16, 6, 2, 'fhgjhbknjm,', 3, 10, 'acak', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'OVDPU'),
(17, 6, 2, 'tes', 4, 20, 'acak', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'HVOPT'),
(18, 6, 2, 'eshjj', 20, 15, 'acak', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'GJDFW');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` bigint(20) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `IDJurusanUser` bigint(20) NOT NULL,
  `IDKonsentrasiUser` bigint(20) NOT NULL,
  `NoHP` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Foto` varchar(30) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Nama`, `Password`, `IDJurusanUser`, `IDKonsentrasiUser`, `NoHP`, `Email`, `Foto`, `Status`) VALUES
(1, '4', '827ccb0eea8a706c4c34a16891f84e7b', 2, 0, '', '', '', 'Mahasiswa'),
(2, '4', '827ccb0eea8a706c4c34a16891f84e7b', 1, 0, '221', 'retretrt', '', 'Mahasiswa'),
(7, '10', '827ccb0eea8a706c4c34a16891f84e7b', 0, 0, 'ykhbjnm', '45', '', 'Mahasiswa'),
(303, 'dosencoba', '827ccb0eea8a706c4c34a16891f84e7b', 1, 3, '', 'dosen@gmail.com', '', 'Dosen');

-- --------------------------------------------------------

--
-- Structure for view `last_attendance_0`
--
DROP TABLE IF EXISTS `last_attendance_0`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `last_attendance_0`  AS  select `student`.`nisn` AS `nisn`,`student`.`name` AS `name`,`class`.`name` AS `class`,`section`.`name` AS `section`,date_format(`fingerprint`.`date_time`,'%Y-%m-%d') AS `date`,date_format(`fingerprint`.`date_time`,'%H:%i') AS `time`,`fingerprint`.`status` AS `status` from ((((`enroll` join `student` on(`enroll`.`student_id` = `student`.`student_id`)) join `class` on(`enroll`.`class_id` = `class`.`class_id`)) join `section` on(`enroll`.`section_id` = `section`.`section_id`)) join `fingerprint` on(`student`.`nisn` = `fingerprint`.`pin`)) where `fingerprint`.`status` = '0' order by `fingerprint`.`date_time` desc ;

-- --------------------------------------------------------

--
-- Structure for view `last_attendance_1`
--
DROP TABLE IF EXISTS `last_attendance_1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `last_attendance_1`  AS  select `student`.`nisn` AS `nisn`,`student`.`name` AS `name`,`class`.`name` AS `class`,`section`.`name` AS `section`,date_format(`fingerprint`.`date_time`,'%Y-%m-%d') AS `date`,date_format(`fingerprint`.`date_time`,'%H:%i') AS `time`,`fingerprint`.`status` AS `status` from ((((`enroll` join `student` on(`enroll`.`student_id` = `student`.`student_id`)) join `class` on(`enroll`.`class_id` = `class`.`class_id`)) join `section` on(`enroll`.`section_id` = `section`.`section_id`)) join `fingerprint` on(`student`.`nisn` = `fingerprint`.`pin`)) where `fingerprint`.`status` = '1' order by `fingerprint`.`date_time` desc ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_syllabus`
--
ALTER TABLE `academic_syllabus`
  ADD PRIMARY KEY (`academic_syllabus_id`);

--
-- Indexes for table `accountant`
--
ALTER TABLE `accountant`
  ADD PRIMARY KEY (`accountant_id`);

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `administration`
--
ALTER TABLE `administration`
  ADD PRIMARY KEY (`administration_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `book_request`
--
ALTER TABLE `book_request`
  ADD PRIMARY KEY (`book_request_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `class_routine`
--
ALTER TABLE `class_routine`
  ADD PRIMARY KEY (`class_routine_id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `dormitory`
--
ALTER TABLE `dormitory`
  ADD PRIMARY KEY (`dormitory_id`);

--
-- Indexes for table `enroll`
--
ALTER TABLE `enroll`
  ADD PRIMARY KEY (`enroll_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `expense_category`
--
ALTER TABLE `expense_category`
  ADD PRIMARY KEY (`expense_category_id`);

--
-- Indexes for table `fingerprint`
--
ALTER TABLE `fingerprint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fingerprint_options`
--
ALTER TABLE `fingerprint_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontend_events`
--
ALTER TABLE `frontend_events`
  ADD PRIMARY KEY (`frontend_events_id`);

--
-- Indexes for table `frontend_gallery`
--
ALTER TABLE `frontend_gallery`
  ADD PRIMARY KEY (`frontend_gallery_id`);

--
-- Indexes for table `frontend_gallery_image`
--
ALTER TABLE `frontend_gallery_image`
  ADD PRIMARY KEY (`frontend_gallery_image_id`);

--
-- Indexes for table `frontend_general_settings`
--
ALTER TABLE `frontend_general_settings`
  ADD PRIMARY KEY (`frontend_general_settings_id`);

--
-- Indexes for table `frontend_news`
--
ALTER TABLE `frontend_news`
  ADD PRIMARY KEY (`frontend_news_id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `group_message`
--
ALTER TABLE `group_message`
  ADD PRIMARY KEY (`group_message_id`);

--
-- Indexes for table `group_message_thread`
--
ALTER TABLE `group_message_thread`
  ADD PRIMARY KEY (`group_message_thread_id`);

--
-- Indexes for table `ideskripsi`
--
ALTER TABLE `ideskripsi`
  ADD PRIMARY KEY (`IDIde`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `journal`
--
ALTER TABLE `journal`
  ADD PRIMARY KEY (`journal_id`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`IDJurusan`);

--
-- Indexes for table `kartubimbingan`
--
ALTER TABLE `kartubimbingan`
  ADD PRIMARY KEY (`IDKartu`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`IDKegiatan`);

--
-- Indexes for table `kikd`
--
ALTER TABLE `kikd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konsentrasi`
--
ALTER TABLE `konsentrasi`
  ADD PRIMARY KEY (`IDKonsentrasi`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`phrase_id`);

--
-- Indexes for table `librarian`
--
ALTER TABLE `librarian`
  ADD PRIMARY KEY (`librarian_id`);

--
-- Indexes for table `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`mark_id`);

--
-- Indexes for table `marketing`
--
ALTER TABLE `marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Indexes for table `marketing_plan`
--
ALTER TABLE `marketing_plan`
  ADD PRIMARY KEY (`plan_id`);

--
-- Indexes for table `marketing_plan_status`
--
ALTER TABLE `marketing_plan_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `marketing_school`
--
ALTER TABLE `marketing_school`
  ADD PRIMARY KEY (`school_id`);

--
-- Indexes for table `marketing_time`
--
ALTER TABLE `marketing_time`
  ADD PRIMARY KEY (`time_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_thread`
--
ALTER TABLE `message_thread`
  ADD PRIMARY KEY (`message_thread_id`);

--
-- Indexes for table `m_admin`
--
ALTER TABLE `m_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kon_id` (`kon_id`);

--
-- Indexes for table `m_kelompok`
--
ALTER TABLE `m_kelompok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_mapel`
--
ALTER TABLE `m_mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_peserta`
--
ALTER TABLE `m_peserta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_soal`
--
ALTER TABLE `m_soal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indexes for table `noticeboard`
--
ALTER TABLE `noticeboard`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`IDNotifikasi`);

--
-- Indexes for table `online`
--
ALTER TABLE `online`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_exam`
--
ALTER TABLE `online_exam`
  ADD PRIMARY KEY (`online_exam_id`);

--
-- Indexes for table `online_exam_result`
--
ALTER TABLE `online_exam_result`
  ADD PRIMARY KEY (`online_exam_result_id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`parent_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pembimbing`
--
ALTER TABLE `pembimbing`
  ADD PRIMARY KEY (`IDPembimbing`);

--
-- Indexes for table `promes`
--
ALTER TABLE `promes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prota`
--
ALTER TABLE `prota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_bank`
--
ALTER TABLE `question_bank`
  ADD PRIMARY KEY (`question_bank_id`);

--
-- Indexes for table `question_paper`
--
ALTER TABLE `question_paper`
  ADD PRIMARY KEY (`question_paper_id`);

--
-- Indexes for table `rpp`
--
ALTER TABLE `rpp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`school_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `silabus`
--
ALTER TABLE `silabus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skripsi`
--
ALTER TABLE `skripsi`
  ADD PRIMARY KEY (`IDSkripsi`),
  ADD KEY `nim_mhs_skripsi` (`IDMahasiswaSkripsi`),
  ADD KEY `uploader` (`Uploader`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_applicant`
--
ALTER TABLE `student_applicant`
  ADD PRIMARY KEY (`applicant_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `superadmin`
--
ALTER TABLE `superadmin`
  ADD PRIMARY KEY (`superadmin_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_download`
--
ALTER TABLE `teacher_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `teaching_planning`
--
ALTER TABLE `teaching_planning`
  ADD PRIMARY KEY (`learning_id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`transport_id`);

--
-- Indexes for table `tr_ikut_ujian`
--
ALTER TABLE `tr_ikut_ujian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tes` (`id_tes`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tr_kelompok_mapel`
--
ALTER TABLE `tr_kelompok_mapel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indexes for table `tr_kelompok_tes`
--
ALTER TABLE `tr_kelompok_tes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_jurusan_mhs` (`IDJurusanUser`),
  ADD KEY `id_konsentrasi_mhs` (`IDKonsentrasiUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_syllabus`
--
ALTER TABLE `academic_syllabus`
  MODIFY `academic_syllabus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `accountant`
--
ALTER TABLE `accountant`
  MODIFY `accountant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `administration`
--
ALTER TABLE `administration`
  MODIFY `administration_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_request`
--
ALTER TABLE `book_request`
  MODIFY `book_request_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `class_routine`
--
ALTER TABLE `class_routine`
  MODIFY `class_routine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=612;

--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `dormitory`
--
ALTER TABLE `dormitory`
  MODIFY `dormitory_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enroll`
--
ALTER TABLE `enroll`
  MODIFY `enroll_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `expense_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fingerprint`
--
ALTER TABLE `fingerprint`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `fingerprint_options`
--
ALTER TABLE `fingerprint_options`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `frontend_events`
--
ALTER TABLE `frontend_events`
  MODIFY `frontend_events_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontend_gallery`
--
ALTER TABLE `frontend_gallery`
  MODIFY `frontend_gallery_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontend_gallery_image`
--
ALTER TABLE `frontend_gallery_image`
  MODIFY `frontend_gallery_image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontend_general_settings`
--
ALTER TABLE `frontend_general_settings`
  MODIFY `frontend_general_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `frontend_news`
--
ALTER TABLE `frontend_news`
  MODIFY `frontend_news_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `group_message`
--
ALTER TABLE `group_message`
  MODIFY `group_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `group_message_thread`
--
ALTER TABLE `group_message_thread`
  MODIFY `group_message_thread_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `journal`
--
ALTER TABLE `journal`
  MODIFY `journal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1185;

--
-- AUTO_INCREMENT for table `kartubimbingan`
--
ALTER TABLE `kartubimbingan`
  MODIFY `IDKartu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `IDKegiatan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kikd`
--
ALTER TABLE `kikd`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `konsentrasi`
--
ALTER TABLE `konsentrasi`
  MODIFY `IDKonsentrasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21254;

--
-- AUTO_INCREMENT for table `librarian`
--
ALTER TABLE `librarian`
  MODIFY `librarian_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mark`
--
ALTER TABLE `mark`
  MODIFY `mark_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `marketing`
--
ALTER TABLE `marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `marketing_plan`
--
ALTER TABLE `marketing_plan`
  MODIFY `plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `marketing_plan_status`
--
ALTER TABLE `marketing_plan_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `marketing_school`
--
ALTER TABLE `marketing_school`
  MODIFY `school_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `marketing_time`
--
ALTER TABLE `marketing_time`
  MODIFY `time_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `message_thread`
--
ALTER TABLE `message_thread`
  MODIFY `message_thread_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `m_admin`
--
ALTER TABLE `m_admin`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `m_kelompok`
--
ALTER TABLE `m_kelompok`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `m_mapel`
--
ALTER TABLE `m_mapel`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `m_peserta`
--
ALTER TABLE `m_peserta`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT for table `m_soal`
--
ALTER TABLE `m_soal`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `noticeboard`
--
ALTER TABLE `noticeboard`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `IDNotifikasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online`
--
ALTER TABLE `online`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1194;

--
-- AUTO_INCREMENT for table `online_exam`
--
ALTER TABLE `online_exam`
  MODIFY `online_exam_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `online_exam_result`
--
ALTER TABLE `online_exam_result`
  MODIFY `online_exam_result_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `parent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pembimbing`
--
ALTER TABLE `pembimbing`
  MODIFY `IDPembimbing` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promes`
--
ALTER TABLE `promes`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `prota`
--
ALTER TABLE `prota`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `question_bank`
--
ALTER TABLE `question_bank`
  MODIFY `question_bank_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `question_paper`
--
ALTER TABLE `question_paper`
  MODIFY `question_paper_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rpp`
--
ALTER TABLE `rpp`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `school_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `silabus`
--
ALTER TABLE `silabus`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `student_applicant`
--
ALTER TABLE `student_applicant`
  MODIFY `applicant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT for table `superadmin`
--
ALTER TABLE `superadmin`
  MODIFY `superadmin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `teacher_download`
--
ALTER TABLE `teacher_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teaching_planning`
--
ALTER TABLE `teaching_planning`
  MODIFY `learning_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `transport_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tr_ikut_ujian`
--
ALTER TABLE `tr_ikut_ujian`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tr_kelompok_mapel`
--
ALTER TABLE `tr_kelompok_mapel`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tr_kelompok_tes`
--
ALTER TABLE `tr_kelompok_tes`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `skripsi`
--
ALTER TABLE `skripsi`
  ADD CONSTRAINT `uploader` FOREIGN KEY (`Uploader`) REFERENCES `users` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
