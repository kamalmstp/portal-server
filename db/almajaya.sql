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

INSERT INTO `academic_syllabus` (`academic_syllabus_id`, `academic_syllabus_code`, `title`, `description`, `class_id`, `uploader_type`, `uploader_id`, `year`, `timestamp`, `file_name`, `subject_id`) VALUES
(1, 'c5387a6', 'farmakologi', NULL, 1, 'admin', 1, '2018-2019', '1560705285', 'Sertifikat Akreditasi PAI II.PDF', 1);

CREATE TABLE `accountant` (
  `accountant_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `accountant` (`accountant_id`, `name`, `email`, `password`) VALUES
(1, 'Kamal', 'kamal', 'f865b53623b121fd34ee5426c792e5c33af8c227');

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
(5, '1561226400', '2018-2019', 1, 1, 3, NULL, 1);

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
('013f1it1goifr95eonk3ggiumei7421o', '::1', 1572508970, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537323530383936333b73747564656e745f6c6f67696e7c733a313a2231223b73747564656e745f69647c733a323a223133223b6c6f67696e5f757365725f69647c733a323a223133223b6e616d657c733a353a22576177616e223b6c6f67696e5f747970657c733a373a2273747564656e74223b);
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
(3, 4, 3, 121, 8, 10, 0, 0, 'sunday', '2019-2020'),
(19, 4, 1, 133, 8, 9, 40, 20, 'monday', '2019-2020'),
(20, 4, 1, 123, 9, 10, 20, 0, 'monday', '2019-2020'),
(21, 4, 1, 124, 10, 11, 30, 10, 'monday', '2019-2020'),
(22, 4, 1, 124, 11, 11, 10, 50, 'monday', '2019-2020'),
(23, 4, 1, 125, 12, 13, 40, 20, 'monday', '2019-2020'),
(24, 4, 1, 139, 13, 14, 20, 0, 'monday', '2019-2020'),
(25, 4, 1, 125, 14, 15, 20, 0, 'monday', '2019-2020'),
(26, 4, 1, 125, 15, 15, 0, 40, 'monday', '2019-2020'),
(27, 4, 1, 126, 8, 9, 40, 20, 'tuesday', '2019-2020'),
(28, 4, 1, 126, 9, 10, 20, 0, 'tuesday', '2019-2020'),
(29, 4, 1, 124, 10, 11, 30, 10, 'tuesday', '2019-2020'),
(30, 4, 1, 124, 11, 11, 10, 50, 'tuesday', '2019-2020'),
(31, 4, 1, 123, 12, 13, 40, 20, 'tuesday', '2019-2020'),
(32, 4, 1, 123, 13, 14, 20, 0, 'tuesday', '2019-2020'),
(33, 4, 1, 127, 14, 15, 20, 0, 'tuesday', '2019-2020'),
(34, 4, 1, 127, 15, 15, 0, 40, 'tuesday', '2019-2020'),
(35, 4, 1, 125, 8, 9, 40, 20, 'wednesday', '2019-2020'),
(36, 4, 1, 125, 9, 10, 20, 0, 'wednesday', '2019-2020'),
(37, 4, 1, 123, 10, 11, 30, 10, 'wednesday', '2019-2020'),
(38, 4, 1, 123, 11, 11, 10, 50, 'wednesday', '2019-2020'),
(39, 4, 1, 128, 12, 13, 40, 20, 'wednesday', '2019-2020'),
(40, 4, 1, 128, 13, 14, 20, 0, 'wednesday', '2019-2020'),
(41, 4, 1, 124, 14, 15, 20, 0, 'wednesday', '2019-2020'),
(42, 4, 1, 124, 15, 15, 0, 40, 'wednesday', '2019-2020'),
(43, 4, 1, 127, 8, 9, 40, 20, 'thursday', '2019-2020'),
(44, 4, 1, 127, 9, 10, 20, 0, 'thursday', '2019-2020'),
(45, 4, 1, 123, 10, 11, 30, 10, 'thursday', '2019-2020'),
(46, 4, 1, 123, 11, 11, 10, 50, 'thursday', '2019-2020'),
(47, 4, 1, 125, 12, 13, 40, 20, 'thursday', '2019-2020'),
(48, 4, 1, 125, 13, 14, 20, 0, 'thursday', '2019-2020'),
(49, 4, 1, 129, 14, 15, 20, 0, 'thursday', '2019-2020'),
(50, 4, 1, 129, 15, 15, 0, 40, 'thursday', '2019-2020'),
(51, 4, 1, 130, 8, 9, 40, 10, 'friday', '2019-2020'),
(52, 4, 1, 130, 9, 9, 10, 40, 'friday', '2019-2020'),
(53, 4, 1, 127, 9, 10, 40, 10, 'friday', '2019-2020'),
(54, 4, 1, 127, 10, 11, 40, 10, 'friday', '2019-2020'),
(55, 4, 1, 127, 11, 11, 10, 40, 'friday', '2019-2020'),
(56, 4, 2, 131, 8, 9, 40, 20, 'monday', '2019-2020'),
(57, 4, 2, 131, 9, 10, 20, 0, 'monday', '2019-2020'),
(58, 4, 2, 125, 10, 11, 30, 10, 'monday', '2019-2020'),
(59, 4, 2, 123, 13, 14, 20, 0, 'monday', '2019-2020'),
(60, 4, 2, 129, 14, 15, 20, 0, 'monday', '2019-2020'),
(61, 4, 2, 129, 15, 15, 0, 40, 'monday', '2019-2020'),
(62, 4, 2, 123, 8, 9, 40, 20, 'tuesday', '2019-2020'),
(63, 4, 2, 123, 9, 10, 20, 0, 'tuesday', '2019-2020'),
(64, 4, 2, 126, 10, 11, 30, 10, 'tuesday', '2019-2020'),
(65, 4, 2, 126, 11, 11, 10, 50, 'tuesday', '2019-2020'),
(66, 4, 2, 127, 12, 13, 40, 20, 'tuesday', '2019-2020'),
(67, 4, 2, 127, 13, 14, 20, 0, 'tuesday', '2019-2020'),
(68, 4, 2, 125, 14, 15, 20, 0, 'tuesday', '2019-2020'),
(69, 4, 2, 125, 15, 15, 0, 40, 'tuesday', '2019-2020'),
(70, 4, 2, 128, 8, 9, 40, 20, 'wednesday', '2019-2020'),
(71, 4, 2, 128, 9, 10, 20, 0, 'wednesday', '2019-2020'),
(72, 4, 2, 131, 10, 11, 30, 10, 'wednesday', '2019-2020'),
(73, 4, 2, 131, 11, 11, 10, 50, 'wednesday', '2019-2020'),
(74, 4, 2, 123, 12, 13, 40, 20, 'wednesday', '2019-2020'),
(75, 4, 2, 123, 13, 14, 20, 0, 'wednesday', '2019-2020'),
(76, 4, 2, 127, 14, 15, 20, 0, 'wednesday', '2019-2020'),
(77, 4, 2, 127, 15, 15, 0, 40, 'wednesday', '2019-2020'),
(78, 4, 2, 125, 8, 9, 40, 20, 'thursday', '2019-2020'),
(79, 4, 2, 125, 9, 10, 20, 0, 'thursday', '2019-2020'),
(80, 4, 2, 127, 10, 11, 30, 10, 'thursday', '2019-2020'),
(81, 4, 2, 127, 11, 11, 10, 50, 'thursday', '2019-2020'),
(82, 4, 2, 127, 12, 13, 40, 20, 'thursday', '2019-2020'),
(83, 4, 2, 127, 13, 14, 20, 0, 'thursday', '2019-2020'),
(84, 4, 2, 131, 14, 15, 20, 0, 'thursday', '2019-2020'),
(85, 4, 2, 131, 15, 15, 0, 40, 'thursday', '2019-2020'),
(86, 4, 2, 123, 8, 9, 40, 10, 'friday', '2019-2020'),
(87, 4, 2, 123, 9, 9, 10, 40, 'friday', '2019-2020'),
(88, 4, 2, 125, 9, 10, 40, 10, 'friday', '2019-2020'),
(89, 4, 2, 130, 10, 11, 40, 10, 'friday', '2019-2020'),
(90, 4, 2, 130, 11, 11, 10, 40, 'friday', '2019-2020'),
(91, 4, 3, 125, 8, 9, 40, 20, 'monday', '2019-2020'),
(92, 4, 3, 125, 9, 10, 20, 0, 'monday', '2019-2020'),
(93, 4, 3, 123, 10, 11, 30, 10, 'monday', '2019-2020'),
(94, 4, 3, 123, 11, 11, 10, 50, 'monday', '2019-2020'),
(95, 4, 3, 127, 12, 13, 40, 20, 'monday', '2019-2020'),
(96, 4, 3, 127, 13, 14, 20, 0, 'monday', '2019-2020'),
(97, 4, 3, 127, 14, 15, 20, 0, 'monday', '2019-2020'),
(98, 4, 3, 127, 15, 15, 0, 40, 'monday', '2019-2020'),
(99, 4, 3, 142, 8, 9, 40, 20, 'tuesday', '2019-2020'),
(100, 4, 3, 142, 9, 10, 20, 0, 'tuesday', '2019-2020'),
(101, 4, 3, 123, 10, 11, 30, 10, 'tuesday', '2019-2020'),
(102, 4, 3, 126, 12, 13, 40, 20, 'tuesday', '2019-2020'),
(103, 4, 3, 123, 11, 11, 10, 50, 'tuesday', '2019-2020'),
(104, 4, 3, 126, 13, 14, 20, 0, 'tuesday', '2019-2020'),
(105, 4, 3, 129, 14, 15, 20, 0, 'tuesday', '2019-2020'),
(106, 4, 3, 129, 15, 15, 0, 40, 'tuesday', '2019-2020'),
(107, 4, 3, 123, 8, 9, 40, 20, 'wednesday', '2019-2020'),
(108, 4, 3, 123, 9, 10, 20, 0, 'wednesday', '2019-2020'),
(109, 4, 3, 128, 10, 11, 30, 10, 'wednesday', '2019-2020'),
(110, 4, 3, 127, 12, 13, 40, 20, 'wednesday', '2019-2020'),
(111, 4, 3, 128, 11, 11, 10, 50, 'wednesday', '2019-2020'),
(112, 4, 3, 127, 13, 14, 20, 0, 'wednesday', '2019-2020'),
(113, 4, 3, 125, 14, 15, 20, 0, 'wednesday', '2019-2020'),
(114, 4, 3, 125, 15, 15, 0, 40, 'wednesday', '2019-2020'),
(115, 4, 3, 142, 8, 9, 40, 20, 'thursday', '2019-2020'),
(116, 4, 3, 142, 9, 10, 20, 0, 'thursday', '2019-2020'),
(117, 4, 3, 125, 10, 11, 30, 10, 'thursday', '2019-2020'),
(118, 4, 3, 125, 11, 11, 10, 50, 'thursday', '2019-2020'),
(119, 4, 3, 123, 12, 13, 40, 20, 'thursday', '2019-2020'),
(120, 4, 3, 123, 13, 14, 20, 0, 'thursday', '2019-2020'),
(121, 4, 3, 127, 14, 15, 20, 0, 'thursday', '2019-2020'),
(122, 4, 3, 127, 15, 15, 0, 40, 'thursday', '2019-2020'),
(123, 4, 3, 125, 8, 9, 40, 10, 'friday', '2019-2020'),
(124, 4, 3, 125, 9, 9, 10, 40, 'friday', '2019-2020'),
(125, 4, 3, 130, 9, 10, 40, 10, 'friday', '2019-2020'),
(126, 4, 3, 142, 10, 11, 40, 20, 'friday', '2019-2020'),
(127, 4, 3, 142, 11, 11, 10, 40, 'friday', '2019-2020'),
(128, 5, 4, 150, 8, 9, 40, 20, 'monday', '2019-2020'),
(129, 5, 4, 150, 9, 10, 20, 0, 'monday', '2019-2020'),
(130, 5, 4, 147, 10, 11, 30, 10, 'monday', '2019-2020'),
(131, 5, 4, 147, 11, 11, 10, 50, 'monday', '2019-2020'),
(132, 5, 4, 152, 12, 13, 40, 20, 'monday', '2019-2020'),
(133, 5, 4, 152, 13, 14, 20, 0, 'monday', '2019-2020'),
(134, 5, 4, 154, 14, 15, 20, 0, 'monday', '2019-2020'),
(135, 5, 4, 154, 15, 15, 0, 40, 'monday', '2019-2020'),
(136, 5, 4, 147, 8, 9, 40, 20, 'tuesday', '2019-2020'),
(137, 5, 4, 147, 9, 10, 20, 0, 'tuesday', '2019-2020'),
(138, 5, 4, 152, 10, 11, 30, 10, 'tuesday', '2019-2020'),
(139, 5, 4, 152, 11, 11, 10, 50, 'tuesday', '2019-2020'),
(140, 5, 4, 150, 12, 13, 40, 20, 'tuesday', '2019-2020'),
(141, 5, 4, 150, 13, 14, 20, 0, 'tuesday', '2019-2020'),
(142, 5, 4, 154, 14, 15, 20, 0, 'tuesday', '2019-2020'),
(143, 5, 4, 154, 15, 15, 0, 40, 'tuesday', '2019-2020'),
(144, 5, 4, 152, 8, 9, 40, 20, 'wednesday', '2019-2020'),
(145, 5, 4, 152, 9, 10, 20, 0, 'wednesday', '2019-2020'),
(146, 5, 4, 152, 10, 11, 30, 10, 'wednesday', '2019-2020'),
(147, 5, 4, 152, 11, 11, 10, 50, 'wednesday', '2019-2020'),
(148, 5, 4, 147, 12, 13, 40, 20, 'wednesday', '2019-2020'),
(149, 5, 4, 147, 13, 14, 20, 0, 'wednesday', '2019-2020'),
(150, 5, 4, 150, 14, 15, 20, 0, 'wednesday', '2019-2020'),
(151, 5, 4, 150, 15, 15, 0, 40, 'wednesday', '2019-2020'),
(152, 5, 4, 148, 8, 9, 40, 20, 'thursday', '2019-2020'),
(153, 5, 4, 148, 9, 10, 20, 0, 'thursday', '2019-2020'),
(154, 5, 4, 153, 10, 11, 30, 10, 'thursday', '2019-2020'),
(155, 5, 4, 153, 11, 11, 10, 50, 'thursday', '2019-2020'),
(156, 5, 4, 151, 12, 13, 40, 20, 'thursday', '2019-2020'),
(157, 5, 4, 151, 13, 14, 20, 0, 'thursday', '2019-2020'),
(158, 5, 4, 149, 14, 15, 20, 0, 'thursday', '2019-2020'),
(159, 5, 4, 149, 15, 15, 0, 40, 'thursday', '2019-2020'),
(160, 5, 4, 147, 8, 9, 40, 10, 'friday', '2019-2020'),
(161, 5, 4, 150, 9, 9, 10, 40, 'friday', '2019-2020'),
(162, 5, 4, 150, 9, 10, 40, 10, 'friday', '2019-2020'),
(163, 5, 4, 154, 10, 11, 40, 10, 'friday', '2019-2020'),
(164, 5, 4, 154, 11, 11, 10, 40, 'friday', '2019-2020'),
(165, 5, 5, 160, 8, 9, 40, 20, 'monday', '2019-2020'),
(166, 5, 5, 160, 9, 10, 20, 0, 'monday', '2019-2020'),
(167, 5, 5, 160, 10, 11, 30, 10, 'monday', '2019-2020'),
(168, 5, 5, 160, 11, 11, 10, 50, 'monday', '2019-2020'),
(169, 5, 5, 162, 12, 13, 40, 20, 'monday', '2019-2020'),
(170, 5, 5, 162, 13, 14, 20, 0, 'monday', '2019-2020'),
(171, 5, 5, 158, 14, 15, 20, 0, 'monday', '2019-2020'),
(172, 5, 5, 158, 15, 15, 0, 40, 'monday', '2019-2020'),
(173, 5, 5, 158, 8, 9, 40, 20, 'tuesday', '2019-2020'),
(174, 5, 5, 158, 9, 10, 20, 0, 'tuesday', '2019-2020'),
(175, 5, 5, 155, 10, 11, 30, 10, 'tuesday', '2019-2020'),
(176, 5, 5, 155, 11, 11, 10, 50, 'tuesday', '2019-2020'),
(177, 5, 5, 162, 12, 13, 40, 20, 'tuesday', '2019-2020'),
(178, 5, 5, 162, 13, 14, 20, 0, 'tuesday', '2019-2020'),
(179, 5, 5, 160, 14, 15, 20, 0, 'tuesday', '2019-2020'),
(180, 5, 5, 160, 15, 15, 0, 40, 'tuesday', '2019-2020'),
(181, 5, 5, 162, 8, 9, 40, 20, 'wednesday', '2019-2020'),
(182, 5, 5, 162, 9, 10, 20, 0, 'wednesday', '2019-2020'),
(183, 5, 5, 158, 10, 11, 30, 10, 'wednesday', '2019-2020'),
(184, 5, 5, 158, 11, 11, 10, 50, 'wednesday', '2019-2020'),
(185, 5, 5, 160, 12, 13, 40, 20, 'wednesday', '2019-2020'),
(186, 5, 5, 160, 13, 14, 20, 0, 'wednesday', '2019-2020'),
(187, 5, 5, 155, 14, 15, 20, 0, 'wednesday', '2019-2020'),
(188, 5, 5, 155, 15, 15, 0, 40, 'wednesday', '2019-2020'),
(189, 5, 5, 159, 8, 9, 40, 20, 'thursday', '2019-2020'),
(190, 5, 5, 159, 9, 10, 20, 0, 'thursday', '2019-2020'),
(191, 5, 5, 156, 10, 11, 30, 10, 'thursday', '2019-2020'),
(192, 5, 5, 156, 11, 11, 10, 50, 'thursday', '2019-2020'),
(193, 5, 5, 155, 12, 13, 40, 20, 'thursday', '2019-2020'),
(194, 5, 5, 155, 13, 14, 20, 0, 'thursday', '2019-2020'),
(195, 5, 5, 161, 14, 15, 20, 0, 'thursday', '2019-2020'),
(196, 5, 5, 161, 15, 15, 0, 40, 'thursday', '2019-2020'),
(197, 5, 5, 158, 8, 9, 40, 10, 'friday', '2019-2020'),
(198, 5, 5, 155, 9, 9, 10, 40, 'friday', '2019-2020'),
(199, 5, 5, 155, 9, 10, 40, 10, 'friday', '2019-2020'),
(200, 5, 5, 157, 10, 11, 40, 10, 'friday', '2019-2020'),
(201, 5, 5, 157, 11, 11, 10, 40, 'friday', '2019-2020'),
(202, 5, 6, 155, 8, 9, 40, 20, 'monday', '2019-2020'),
(203, 5, 6, 155, 9, 10, 20, 0, 'monday', '2019-2020'),
(204, 5, 6, 162, 10, 11, 30, 10, 'monday', '2019-2020'),
(205, 5, 6, 162, 11, 11, 10, 50, 'monday', '2019-2020'),
(206, 5, 6, 158, 12, 13, 40, 20, 'monday', '2019-2020'),
(207, 5, 6, 158, 13, 14, 20, 0, 'monday', '2019-2020'),
(208, 5, 6, 155, 14, 15, 20, 0, 'monday', '2019-2020'),
(209, 5, 6, 155, 15, 15, 0, 40, 'monday', '2019-2020'),
(210, 5, 6, 160, 8, 9, 40, 20, 'tuesday', '2019-2020'),
(211, 5, 6, 160, 9, 10, 20, 0, 'tuesday', '2019-2020'),
(212, 5, 6, 162, 10, 11, 30, 10, 'tuesday', '2019-2020'),
(213, 5, 6, 162, 11, 11, 10, 50, 'tuesday', '2019-2020'),
(214, 5, 6, 160, 12, 13, 40, 20, 'tuesday', '2019-2020'),
(215, 5, 6, 160, 13, 14, 20, 0, 'tuesday', '2019-2020'),
(216, 5, 6, 158, 14, 15, 20, 0, 'tuesday', '2019-2020'),
(217, 5, 6, 158, 15, 15, 0, 40, 'tuesday', '2019-2020'),
(218, 5, 6, 155, 8, 9, 40, 20, 'wednesday', '2019-2020'),
(219, 5, 6, 155, 9, 10, 20, 0, 'wednesday', '2019-2020'),
(220, 5, 6, 159, 10, 11, 30, 10, 'wednesday', '2019-2020'),
(221, 5, 6, 159, 11, 11, 10, 50, 'wednesday', '2019-2020'),
(222, 5, 6, 158, 12, 13, 40, 20, 'wednesday', '2019-2020'),
(223, 5, 6, 158, 13, 14, 20, 0, 'wednesday', '2019-2020'),
(224, 5, 6, 156, 14, 15, 20, 0, 'wednesday', '2019-2020'),
(225, 5, 6, 156, 15, 15, 0, 40, 'wednesday', '2019-2020'),
(226, 5, 6, 160, 8, 9, 40, 20, 'thursday', '2019-2020'),
(227, 5, 6, 160, 9, 10, 20, 0, 'thursday', '2019-2020'),
(228, 5, 6, 157, 10, 11, 30, 10, 'thursday', '2019-2020'),
(229, 5, 6, 157, 11, 11, 10, 50, 'thursday', '2019-2020'),
(230, 5, 6, 161, 12, 13, 40, 20, 'thursday', '2019-2020'),
(231, 5, 6, 161, 13, 14, 20, 0, 'thursday', '2019-2020'),
(232, 5, 6, 158, 14, 15, 20, 0, 'thursday', '2019-2020'),
(233, 5, 6, 158, 15, 15, 0, 40, 'thursday', '2019-2020'),
(234, 5, 6, 162, 8, 9, 40, 10, 'friday', '2019-2020'),
(235, 5, 6, 162, 9, 9, 10, 40, 'friday', '2019-2020'),
(236, 5, 6, 160, 9, 10, 40, 10, 'friday', '2019-2020'),
(237, 5, 6, 155, 10, 11, 40, 10, 'friday', '2019-2020'),
(238, 5, 6, 155, 11, 11, 10, 40, 'friday', '2019-2020'),
(239, 6, 7, 175, 8, 9, 40, 20, 'monday', '2019-2020'),
(240, 6, 7, 175, 9, 10, 20, 0, 'monday', '2019-2020'),
(241, 6, 7, 174, 10, 11, 30, 10, 'monday', '2019-2020'),
(242, 6, 7, 174, 11, 11, 10, 50, 'monday', '2019-2020'),
(243, 6, 7, 177, 12, 13, 40, 20, 'monday', '2019-2020'),
(244, 6, 7, 177, 13, 14, 20, 0, 'monday', '2019-2020'),
(245, 6, 7, 172, 14, 15, 20, 0, 'monday', '2019-2020'),
(246, 6, 7, 172, 15, 15, 0, 40, 'monday', '2019-2020'),
(247, 6, 7, 177, 8, 9, 40, 20, 'tuesday', '2019-2020'),
(248, 6, 7, 177, 9, 10, 20, 0, 'tuesday', '2019-2020'),
(249, 6, 7, 173, 10, 11, 30, 10, 'tuesday', '2019-2020'),
(250, 6, 7, 173, 11, 11, 10, 50, 'tuesday', '2019-2020'),
(251, 6, 7, 176, 12, 13, 40, 20, 'tuesday', '2019-2020'),
(252, 6, 7, 176, 13, 14, 20, 0, 'tuesday', '2019-2020'),
(253, 6, 7, 172, 14, 15, 20, 0, 'tuesday', '2019-2020'),
(254, 6, 7, 172, 15, 15, 0, 40, 'tuesday', '2019-2020'),
(255, 6, 7, 179, 8, 9, 40, 20, 'wednesday', '2019-2020'),
(256, 6, 7, 179, 9, 10, 20, 0, 'wednesday', '2019-2020'),
(257, 6, 7, 176, 10, 11, 30, 10, 'wednesday', '2019-2020'),
(258, 6, 7, 176, 11, 11, 10, 50, 'wednesday', '2019-2020'),
(259, 6, 7, 173, 12, 13, 40, 20, 'wednesday', '2019-2020'),
(260, 6, 7, 173, 13, 14, 20, 0, 'wednesday', '2019-2020'),
(261, 6, 7, 174, 14, 15, 20, 0, 'wednesday', '2019-2020'),
(262, 6, 7, 174, 15, 15, 0, 40, 'wednesday', '2019-2020'),
(263, 6, 7, 181, 8, 9, 40, 20, 'thursday', '2019-2020'),
(264, 6, 7, 181, 9, 10, 20, 0, 'thursday', '2019-2020'),
(265, 6, 7, 173, 10, 11, 30, 10, 'thursday', '2019-2020'),
(266, 6, 7, 173, 11, 11, 10, 50, 'thursday', '2019-2020'),
(267, 6, 7, 172, 12, 13, 40, 20, 'thursday', '2019-2020'),
(268, 6, 7, 172, 13, 14, 20, 0, 'thursday', '2019-2020'),
(269, 6, 7, 176, 14, 15, 20, 0, 'thursday', '2019-2020'),
(270, 6, 7, 176, 15, 15, 0, 40, 'thursday', '2019-2020'),
(271, 6, 7, 171, 8, 9, 40, 10, 'friday', '2019-2020'),
(272, 6, 7, 171, 9, 9, 10, 40, 'friday', '2019-2020'),
(273, 6, 7, 173, 9, 10, 40, 10, 'friday', '2019-2020'),
(274, 6, 7, 173, 10, 11, 40, 10, 'friday', '2019-2020'),
(275, 6, 7, 178, 11, 11, 10, 40, 'friday', '2019-2020'),
(276, 6, 7, 178, 13, 14, 30, 0, 'friday', '2019-2020'),
(277, 6, 7, 180, 14, 14, 0, 30, 'friday', '2019-2020'),
(278, 6, 7, 176, 14, 15, 30, 0, 'friday', '2019-2020'),
(279, 6, 7, 176, 15, 15, 0, 30, 'friday', '2019-2020'),
(280, 6, 8, 184, 8, 9, 40, 20, 'monday', '2019-2020'),
(281, 6, 8, 184, 9, 10, 20, 0, 'monday', '2019-2020'),
(282, 6, 8, 186, 10, 11, 30, 10, 'monday', '2019-2020'),
(283, 6, 8, 186, 11, 11, 10, 50, 'monday', '2019-2020'),
(284, 6, 8, 185, 12, 13, 40, 20, 'monday', '2019-2020'),
(285, 6, 8, 185, 13, 14, 20, 0, 'monday', '2019-2020'),
(286, 6, 8, 188, 14, 15, 20, 0, 'monday', '2019-2020'),
(287, 6, 8, 188, 15, 15, 0, 40, 'monday', '2019-2020'),
(288, 6, 8, 187, 8, 9, 40, 20, 'tuesday', '2019-2020'),
(289, 6, 8, 187, 9, 10, 20, 0, 'tuesday', '2019-2020'),
(290, 6, 8, 183, 10, 11, 30, 10, 'tuesday', '2019-2020'),
(291, 6, 8, 183, 11, 11, 10, 50, 'tuesday', '2019-2020'),
(292, 6, 8, 184, 12, 13, 40, 20, 'tuesday', '2019-2020'),
(293, 6, 8, 184, 13, 14, 20, 0, 'tuesday', '2019-2020'),
(294, 6, 8, 187, 14, 15, 20, 0, 'tuesday', '2019-2020'),
(295, 6, 8, 187, 15, 15, 0, 40, 'tuesday', '2019-2020'),
(296, 6, 8, 184, 8, 9, 40, 20, 'wednesday', '2019-2020'),
(297, 6, 8, 184, 9, 10, 20, 0, 'wednesday', '2019-2020'),
(298, 6, 8, 190, 10, 11, 30, 10, 'wednesday', '2019-2020'),
(299, 6, 8, 190, 11, 11, 10, 50, 'wednesday', '2019-2020'),
(300, 6, 8, 185, 12, 13, 40, 20, 'wednesday', '2019-2020'),
(301, 6, 8, 185, 13, 14, 20, 0, 'wednesday', '2019-2020'),
(302, 6, 8, 187, 14, 15, 20, 0, 'wednesday', '2019-2020'),
(303, 6, 8, 187, 15, 15, 0, 40, 'wednesday', '2019-2020'),
(304, 6, 8, 184, 8, 9, 40, 20, 'thursday', '2019-2020'),
(305, 6, 8, 184, 9, 10, 20, 0, 'thursday', '2019-2020'),
(306, 6, 8, 187, 10, 11, 30, 10, 'thursday', '2019-2020'),
(307, 6, 8, 187, 11, 11, 10, 50, 'thursday', '2019-2020'),
(308, 6, 8, 188, 12, 13, 40, 20, 'thursday', '2019-2020'),
(309, 6, 8, 188, 13, 14, 20, 0, 'thursday', '2019-2020'),
(310, 6, 8, 183, 14, 15, 20, 0, 'thursday', '2019-2020'),
(311, 6, 8, 183, 15, 15, 0, 40, 'thursday', '2019-2020'),
(312, 6, 8, 192, 8, 9, 40, 10, 'friday', '2019-2020'),
(313, 6, 8, 192, 9, 9, 10, 40, 'friday', '2019-2020'),
(314, 6, 8, 191, 9, 10, 40, 10, 'friday', '2019-2020'),
(315, 6, 8, 182, 10, 11, 40, 10, 'friday', '2019-2020'),
(316, 6, 8, 182, 11, 11, 10, 40, 'friday', '2019-2020'),
(317, 6, 8, 183, 13, 14, 30, 0, 'friday', '2019-2020'),
(318, 6, 8, 183, 14, 14, 0, 30, 'friday', '2019-2020'),
(319, 6, 8, 189, 14, 15, 30, 0, 'friday', '2019-2020'),
(320, 6, 8, 189, 15, 15, 0, 30, 'friday', '2019-2020'),
(321, 6, 9, 194, 8, 9, 40, 20, 'monday', '2019-2020'),
(322, 6, 9, 194, 9, 10, 20, 0, 'monday', '2019-2020'),
(323, 6, 9, 195, 10, 11, 30, 10, 'monday', '2019-2020'),
(324, 6, 9, 195, 11, 11, 10, 50, 'monday', '2019-2020'),
(325, 6, 9, 197, 12, 13, 40, 20, 'monday', '2019-2020'),
(326, 6, 9, 197, 13, 14, 20, 0, 'monday', '2019-2020'),
(327, 6, 9, 198, 14, 15, 20, 0, 'monday', '2019-2020'),
(328, 6, 9, 198, 15, 15, 0, 40, 'monday', '2019-2020'),
(329, 6, 9, 195, 8, 9, 40, 20, 'tuesday', '2019-2020'),
(330, 6, 9, 195, 9, 10, 20, 0, 'tuesday', '2019-2020'),
(331, 6, 9, 198, 10, 11, 30, 10, 'tuesday', '2019-2020'),
(332, 6, 9, 198, 11, 11, 10, 50, 'tuesday', '2019-2020'),
(333, 6, 9, 194, 12, 13, 40, 20, 'tuesday', '2019-2020'),
(334, 6, 9, 194, 13, 14, 20, 0, 'tuesday', '2019-2020'),
(335, 6, 9, 199, 14, 15, 20, 0, 'tuesday', '2019-2020'),
(336, 6, 9, 199, 15, 15, 0, 40, 'tuesday', '2019-2020'),
(337, 6, 9, 198, 8, 9, 40, 20, 'wednesday', '2019-2020'),
(338, 6, 9, 198, 9, 10, 20, 0, 'wednesday', '2019-2020'),
(339, 6, 9, 195, 10, 11, 30, 10, 'wednesday', '2019-2020'),
(340, 6, 9, 195, 11, 11, 10, 50, 'wednesday', '2019-2020'),
(341, 6, 9, 201, 12, 13, 40, 20, 'wednesday', '2019-2020'),
(342, 6, 9, 201, 13, 14, 20, 0, 'wednesday', '2019-2020'),
(343, 6, 9, 203, 14, 15, 20, 0, 'wednesday', '2019-2020'),
(344, 6, 9, 203, 15, 15, 0, 40, 'wednesday', '2019-2020'),
(345, 6, 9, 200, 8, 9, 40, 20, 'thursday', '2019-2020'),
(346, 6, 9, 200, 9, 10, 20, 0, 'thursday', '2019-2020'),
(347, 6, 9, 199, 10, 11, 30, 10, 'thursday', '2019-2020'),
(350, 6, 9, 195, 13, 14, 20, 0, 'thursday', '2019-2020'),
(351, 6, 9, 196, 14, 15, 20, 0, 'thursday', '2019-2020'),
(352, 6, 9, 196, 15, 15, 0, 40, 'thursday', '2019-2020'),
(353, 6, 9, 202, 8, 9, 40, 10, 'friday', '2019-2020'),
(354, 6, 9, 198, 9, 9, 10, 40, 'friday', '2019-2020'),
(355, 6, 9, 198, 9, 10, 40, 10, 'friday', '2019-2020'),
(356, 6, 9, 196, 10, 11, 40, 10, 'friday', '2019-2020'),
(357, 6, 9, 196, 11, 11, 10, 40, 'friday', '2019-2020'),
(358, 6, 9, 193, 13, 14, 30, 0, 'friday', '2019-2020'),
(359, 6, 9, 193, 14, 14, 0, 30, 'friday', '2019-2020'),
(360, 6, 9, 194, 14, 15, 30, 0, 'friday', '2019-2020'),
(361, 6, 9, 194, 15, 15, 0, 30, 'friday', '2019-2020'),
(362, 7, 11, 204, 8, 10, 30, 0, 'friday', '2019-2020');

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
(9, 'Cause and effect', '', 'at00183_document_20200114.pptm', 'other', '8', 101, '0', 209);

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
(11, 84, 4, 1, 126, 'wwwwwwwwwwwwwww', 2, 'wwwwwwwwwwwwwwwwww&lt;a target=&quot;&quot; rel=&quot;&quot;&gt;&lt;img alt=&quot;&quot;&gt;&lt;/a&gt;', 'Direct Learning', 'wwwwwwwwwwwwww', 'Group Discussion', 20, 0, 'wwwwwwwwwwwwwwwwwww', '2020-01-14', '08:13:27', NULL, NULL, '0'),
(12, 84, 4, 1, 126, 'wwwwwwwwwwwwwww', 2, 'wwwwwwwwwwwwwwwwww&lt;a target=&quot;&quot; rel=&quot;&quot;&gt;&lt;img alt=&quot;&quot;&gt;&lt;/a&gt;', 'Direct Learning', 'wwwwwwwwwwwwww', 'Group Discussion', 20, 0, 'wwwwwwwwwwwwwwwwwww', '2020-01-14', '08:13:27', NULL, NULL, '0'),
(13, 84, 4, 1, 126, 'wwwwwwwwwwwwwww', 2, 'wwwwwwwwwwwwwwwwww&lt;a target=&quot;&quot; rel=&quot;&quot;&gt;&lt;img alt=&quot;&quot;&gt;&lt;/a&gt;', 'Direct Learning', 'wwwwwwwwwwwwww', 'Group Discussion', 20, 0, 'wwwwwwwwwwwwwwwwwww', '2020-01-14', '08:13:27', NULL, NULL, '0'),
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
(28, 86, 6, 7, 172, 'Grafik', 2, 'Menjabarkan grafik dalam bentuk uraian.', 'Direct Learning', '', 'Demonstration', 19, 2, '', '2020-01-14', '14:40:01', NULL, NULL, '0');

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
(1, 'class_routine', 'Class Routine', 'ক্লাস রুটিন', 'rutina de clase', 'روتين الصف', 'klasse Routine', 'Рутинное Класс', '常规类', 'sınıf Rutin', 'classe de rotina', 'class rutin', 'classe routine', 'Κλάση ρουτίνας', 'Klasse Routine', 'Routine Class', 'ประจำชั้น', 'کلاس ضابطہء', 'कक्षा नियमित', 'Class DEFUNCTORIUS', 'kelas rutin', 'クラスルーチン', '클래스 루틴', NULL);
-- --------------------------------------------------------

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
(5, 'd41d8cd98f00b20', 'tes', 'admin-1', '1577885348', NULL, NULL);

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
(4, 'd41d8cd98f00b20', 'admin-1', 'teacher-6', NULL);

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
(21, 'running_year', '2019-2020'),
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
(221, 'History - 9', 8, 12, 99, '2019-2020'),
(222, 'Math - 4', 8, 12, 97, '2019-2020'),
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
(254, 'Geography - 16', 9, 14, 104, '2019-2020'),
(255, 'History - 9', 9, 14, 99, '2019-2020'),
(256, 'Math - 4', 9, 14, 97, '2019-2020'),
(257, 'PAI-BP - 2', 9, 14, 84, '2019-2020'),
(258, 'Sociology - 12', 9, 14, 104, '2019-2020'),
(259, 'Soprt - 6', 9, 14, 105, '2019-2020'),
(260, 'TIK - 17', 9, 15, 83, '2019-2020'),
(261, 'TIK - 17', 9, 14, 83, '2019-2020'),
(262, 'B. Indonesia - 3', 7, 11, 95, '2019-2020'),
(263, 'Biologi - 7', 7, 11, 91, '2019-2020'),
(264, 'Chemistry - 1', 7, 11, 96, '2019-2020'),
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
(281, 'Sociology - 12', 7, 10, 104, '2019-2020');

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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `administration`
--
ALTER TABLE `administration`
  MODIFY `administration_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `class_routine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=363;

--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `journal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

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
  MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6383;

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
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `message_thread`
--
ALTER TABLE `message_thread`
  MODIFY `message_thread_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `IDNotifikasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online`
--
ALTER TABLE `online`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

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
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

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
