-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 02, 2020 at 12:46 PM
-- Server version: 10.2.31-MariaDB-cll-lve
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
-- Database: `almazaya_dbny4`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `idlanguage` int(11) NOT NULL,
  `sisterpages` varchar(100) NOT NULL,
  `sister` int(11) NOT NULL,
  `cat` int(11) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text NOT NULL,
  `link_ori` text NOT NULL,
  `idmenu` int(11) DEFAULT NULL,
  `parent_menu` int(11) DEFAULT NULL,
  `link` text CHARACTER SET utf8 NOT NULL,
  `pic` text CHARACTER SET utf8 NOT NULL,
  `pic2` text CHARACTER SET utf8 NOT NULL,
  `thumb` text CHARACTER SET utf8 NOT NULL,
  `datestart` datetime NOT NULL,
  `dateend` datetime NOT NULL,
  `posisi` int(11) NOT NULL,
  `hapus` tinyint(1) NOT NULL,
  `draft` tinyint(1) NOT NULL,
  `cretime` datetime NOT NULL,
  `crdate_set` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `modtime` datetime NOT NULL,
  `creby` varchar(100) CHARACTER SET utf8 NOT NULL,
  `modby` varchar(100) CHARACTER SET utf8 NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `show` tinyint(1) NOT NULL DEFAULT 1,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `use_side_banner` tinyint(1) NOT NULL,
  `link_ads_banner` text DEFAULT NULL,
  `ads_side_banner` text DEFAULT NULL,
  `use_top_banner` tinyint(1) NOT NULL,
  `link_ads_banner_top` text DEFAULT NULL,
  `ads_banner_top` text DEFAULT NULL,
  `ads_banner_top_m` text DEFAULT NULL,
  `use_bottom_banner` tinyint(1) NOT NULL DEFAULT 0,
  `link_ads_banner_bottom` text DEFAULT NULL,
  `ads_banner_bottom` text DEFAULT NULL,
  `ads_banner_bottom_m` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `idlanguage`, `sisterpages`, `sister`, `cat`, `title`, `description`, `link_ori`, `idmenu`, `parent_menu`, `link`, `pic`, `pic2`, `thumb`, `datestart`, `dateend`, `posisi`, `hapus`, `draft`, `cretime`, `crdate_set`, `modtime`, `creby`, `modby`, `hidden`, `deleted`, `show`, `meta_title`, `meta_description`, `use_side_banner`, `link_ads_banner`, `ads_side_banner`, `use_top_banner`, `link_ads_banner_top`, `ads_banner_top`, `ads_banner_top_m`, `use_bottom_banner`, `link_ads_banner_bottom`, `ads_banner_bottom`, `ads_banner_bottom_m`) VALUES
(804, 1, '', 804, 111, 'Student Achievment: Bellinda Zabrina Lailani', '<p style=\"text-align: justify;\">&nbsp;</p>\r\n<ol>\r\n<li>First Place (1st) of South Kalimantan Level on <em><strong>\'Ki Hajar Dewantara Quiz Competition\'</strong></em> @ BTKIP Banjarmasin</li>\r\n<li>First Place (1st) of Banjarmasin City Level on <em><strong>\'English Speech Competition\'</strong></em> @Dhammasoka Junior High School</li>\r\n</ol>', 'student-achievment-bellinda-zabrina-lailani', 135, 132, 'student-achievment-bellinda-zabrina-lailani', '20180416101553_dscf7292crop.jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 9, 0, 0, '2018-04-16 10:15:53', '2018-03-01 00:35:00', '0000-00-00 00:00:00', 'admin', '', 0, 0, 1, '', '', 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(805, 1, '', 805, 122, 'Basketball', '<p><strong>Train the students of Al Mazaya Islamic School in terms of leadership, teamwork and competitiveness through basketball.</strong></p>', 'basketball', 135, 132, 'basketball', '20180416102310_dscf7213.jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0, '2018-04-16 10:23:12', '2018-03-01 00:17:00', '0000-00-00 00:00:00', 'admin', '', 0, 0, 1, '', '', 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(806, 1, '', 806, 110, 'Almazaya Ramadhan Charity Day', '<p>Tiap sekolah biasanya punya event yang khusus diadakan di sekolah tersebut. Kegiatan seperti ini tentu sangat bermanfaat bagi sekolah dan siswa-siswinya. Bagi sekolah, event-event seperti ini mampu mendongkrak nama sekolah. Untuk para siswa, event dapat menjadi ajang untuk berkreasi dan melatih kerjasama.<br />Terus bagaimana cara buat event yang baik?<br />Ide Bersama<br />Panitia biasanya sudah menentukan ide untuk konsep dan tema event. Namun kenapa harus membatasi penentuan ide di kalangan panitia saja? Ide bisa datang dari mana dan siapa saja. Kita tidak pernah tahu ada diluar sana teman kita yang punya ide yang jauh lebih menarik. Kamu bisa pakai halaman Facebook sekolahmu, bagikan idemu dan lihat tanggapan mereka. Untuk lebih memotivasi mereka menuangkan ide-idenya, kamu juga bisa buat sayembara dengan hadiah yang menarik.<br />Kalau kamu merasa idenya masih kurang kreatif, berikut tips untuk menuangkan ide bersama:<br />Tulis event yang akan kamu buat di tengah-tengah papan tulis. Lalu ajak teman-temanmu menuliskan ide-ide yang muncul seketika itu juga di sekeliling nama event yang kamu buat sebelumnya.<br />Tidak ada ide yang buruk.<br />Ajak temanmu untuk bersama-sama membangun ide. Ingat, membangun ide dan mengeluarkan ide adalah hal yang berbeda. Mengeluarkan ide artinya mengemukakan pikiran-pikiran dalam kepala dan bersifat acak. Sedangkan membangun ide berarti mencoba menyempurnakan sebuah ide dengan berbagai detail yang saling terhubung satu sama lain.</p>\r\n<p>Proses pemikiran ide haruslah menyenangkan.</p>\r\n<p>Jangan takut dengan resiko dan jangan batasi dirimu terhadap apapun.</p>\r\n<p>Tentukan Tempat yang Cocok<br /><br />Hidupkan tema yang sudah kamu tentukan dengan lokasi yang sesuai. Coba lihat sekolahmu, dan bayangkan jika event yang akan kamu buat diadakan disitu. Akankah acara dan lokasinya bisa jadi satu kesatuan yang apik? Jika tidak coba cari tempat yang lain.<br /><br />&nbsp;<br /><br />Musik yang Menyatu dengan Tema<br /><br />Kamu pasti butuh musik di event yang kamu baik sebagai pengiring maupun sebagai performer. Diskusikan kepada pemain music tentang tema yang kamu buat. Minta pendapat mereka tentang dan pilih musik yang pas dengan tema tersebut.<br /><br />&nbsp;<br /><br />Buat Dekorasi yang Sesuai<br /><br />Buat lokasi lebih menarik dengan berbagai macam dekorasi. Kamu bisa mulai dengan backdrop, hiasan di langit-langit, hiasan di dinding,&nbsp; penunjuk arah sampai ke photo booth. Namun, sangat oenting untuk memastikan semuanya sejalan dengan tema yang telah kamu buat.<br /><br /><br />Ayo ikuti langkah-langkahnya dan buat event sekolah yang luar biasa.</p>', 'almazaya-ramadhan-charity-day', 135, 132, 'almazaya-ramadhan-charity-day', '20180220115117_dscf5098.jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 0, 0, '2018-02-20 11:52:39', '2018-02-28 23:50:34', '0000-00-00 00:00:00', 'admin', '', 0, 1, 1, '', '', 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(807, 1, '', 807, 122, 'Tahfidz', '<p><strong>&nbsp;</strong></p>\r\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-ta tw-text-small\" dir=\"ltr\" data-placeholder=\"Translation\" data-fulltext=\"\"><span lang=\"en\">Tahfidz is one way to improve one\'s intelligence in memorizing the Quran. By memorizing students brain will more quickly absorb information also store it in the long term. The more frequent reading of the Qur\'an turns out to train also increased brain in digesting information that is very useful for Al Mazaya\'s students.</span></pre>', 'tahfidz', 135, 132, 'tahfidz', '20180302134256_dscf6110_(copy).jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 0, 0, '2018-04-16 10:32:09', '2018-03-01 00:17:00', '0000-00-00 00:00:00', 'admin', '', 0, 0, 1, '', '', 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(808, 1, '', 808, 112, 'Marching Band', '', 'marching-band', 135, 132, 'marching-band', '20180220115813_6c723503-9313-4942-a998-4bc9958067e9.jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 6, 0, 0, '2018-02-20 11:58:14', '2018-02-20 05:33:41', '0000-00-00 00:00:00', 'admin', '', 0, 1, 1, '', '', 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(809, 1, '', 809, 122, 'Futsal', '<p><strong>Improve the attitude of sportsmanship, intelligence and forming the character in teamwork for students of Al Mazaya Islamic School.</strong></p>', 'futsal', 135, 132, 'futsal', '20180227085357_dscf6033.jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 0, 0, '2018-02-27 09:32:54', '2018-03-01 00:17:58', '0000-00-00 00:00:00', 'admin', '', 0, 0, 1, '', '', 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(810, 1, '', 810, 110, 'Al Mazaya Student\'s Upcoming Events: Science Camp #3 ( 23-24 March)', '<p>Science is one of main subjects at Al Mazaya Islamic School, therefore the Science Camp is one of the Super Camp programs. In Science Camp activities, student don\'t only learn in the school environment, but student also practice directly to create science projects. Two years ago Al Mazaya Islamic School students made POC (Liquid Organic Fertilizer), Hydroponics and candied fruit. The next science project for this year, Al Mazaya Islamic School students will create \'Tempe\' and \'Ice Cream\' so that students will gain experience and broader insights about Science in everyday life.</p>', 'al-mazaya-student-s-upcoming-events-science-camp-3-23-24-march', 135, 132, 'al-mazaya-student-s-upcoming-events-science-camp-3-23-24-march', '20180301065815_9624d50c-e403-433a-9f46-379d7d6b79ef.jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 6, 0, 0, '2018-03-01 06:58:16', '2018-03-01 00:35:59', '0000-00-00 00:00:00', 'admin', '', 0, 0, 1, '', '', 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(811, 1, '', 811, 111, 'Student Achievment: Refia Azka Nabila', '<p style=\"text-align: justify;\">&nbsp;</p>\r\n<ol>\r\n<li>Third&nbsp;Place (3th) of South Kalimantan Level on<em> <strong>\'Ki Hajar Dewantara Quiz Competition\'</strong></em> @ BTKIP Banjarmasin</li>\r\n<li>Second Place (2nd) of Banjarmasin City Level on <em><strong>\'English Speech Competition\'</strong></em> @Dhammasoka Junior High School</li>\r\n</ol>', 'student-achievment-refia-azka-nabila', 135, 132, 'student-achievment-refia-azka-nabila', '20180416100630_dscf7279.jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8, 0, 0, '2018-04-16 10:06:32', '2018-03-01 00:35:00', '0000-00-00 00:00:00', 'admin', '', 0, 0, 1, '', '', 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(812, 1, '', 812, 110, 'Al Mazaya Student\'s Upcoming Events: 3rd Al Mazaya\'s Anniversary! (15 March)', '<p>TIme flies and soon it is March 7th Al Mazaya Islamic School will celebrate its 3rd birthday. To celebrate this 3rd anniversary, AL Mazaya Islamic School holds a competition that will be followed by all students of Al Mazaya Islamic School. See You!</p>', 'al-mazaya-student-s-upcoming-events-3rd-al-mazaya-s-anniversary-15-march', 135, 132, 'al-mazaya-student-s-upcoming-events-3rd-al-mazaya-s-anniversary-15-march', '20180301070915_dscf3575.jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5, 0, 0, '2018-03-01 07:09:18', '2018-03-01 00:35:59', '0000-00-00 00:00:00', 'admin', '', 0, 0, 1, '', '', 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(813, 1, '', 813, 112, 'Karate', '', 'karate', 135, 132, 'karate', '20180220123949_12.jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 11, 0, 0, '2018-02-20 12:39:49', '2018-02-20 23:46:40', '0000-00-00 00:00:00', 'admin', '', 0, 1, 1, '', '', 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(814, 1, '', 814, 122, 'Karate', '<p><strong>Equip students of al mazaya islamic school in order to protect themselves and train self-discipline.</strong></p>', 'karate-1', 135, 132, 'karate-1', '20180227085327_dscf6013.jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 0, 0, '2018-02-27 09:29:19', '2018-03-01 00:21:46', '0000-00-00 00:00:00', 'admin', '', 0, 0, 1, '', '', 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(815, 1, '', 815, 110, 'Al Mazaya Market Day Event #1', '', 'al-mazaya-market-day-event-1', 135, 132, 'al-mazaya-market-day-event-1', '20180221082051_img_5556.jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 12, 0, 0, '2018-02-21 08:22:36', '2018-02-28 23:50:26', '0000-00-00 00:00:00', 'admin', '', 1, 1, 1, '', '', 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(816, 1, '', 816, 110, 'Al Mazaya Student\'s Upcoming Events: Outdoor Activity with Basarnas of South Kalimantan (7-8 March 2018)', '<p>On March 7-8, Al Mazaya Islamic School has a special program to increase student\'s skills in preventing or facing a disaster. Therefore, Al Mazaya Islamic School is working directly with Basarnas of South Borneo, where students are given direct disaster management theory and practice trained by professional Basarnas teams.</p>', 'al-mazaya-student-s-upcoming-events-outdoor-activity-with-basarnas-of-south-kalimantan-7-8-march-2018', 135, 132, 'al-mazaya-student-s-upcoming-events-outdoor-activity-with-basarnas-of-south-kalimantan-7-8-march-2018', '20180301064629_dscf3891.jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 7, 0, 0, '2018-03-01 07:01:14', '2018-03-01 00:35:59', '0000-00-00 00:00:00', 'admin', '', 0, 0, 1, '', '', 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(817, 1, '', 817, 111, 'Student Achievment: Aisya Novrida Putri', '<p style=\"text-align: justify;\">&nbsp;</p>\r\n<ol>\r\n<li>Third&nbsp;Place (3th) of Banjarmasin City Level on<em> <strong>\'English Speech Competition\'</strong></em> @ MAN 2 Model Banjarmasin</li>\r\n<li>Third Place (3th) of Banjarmasin City Level on <em><strong>\'English Speech Contest\'</strong></em> @SMAN 3 Banjarmasin</li>\r\n</ol>', 'student-achievment-aisya-novrida-putri', 135, 132, 'student-achievment-aisya-novrida-putri', '20180416101104_dscf732crop4.jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 10, 0, 0, '2018-04-16 10:11:08', '2018-03-01 00:35:00', '0000-00-00 00:00:00', 'admin', '', 0, 0, 1, '', '', 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(818, 1, '', 818, 111, 'Student Achievment: Prista Oksanarlia', '<p style=\"text-align: justify;\">&nbsp;</p>\r\n<ol>\r\n<li>First Place (1st) of South Kalimantan Level on<em> <strong>\'English Story Telling\'</strong></em> @&nbsp;GIBS</li>\r\n</ol>', 'student-achievment-prista-oksanarlia', 135, 132, 'student-achievment-prista-oksanarlia', '20180416101008_dscf7305crop.jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 13, 0, 0, '2018-04-16 10:10:10', '2018-03-01 00:36:00', '0000-00-00 00:00:00', 'admin', '', 0, 0, 1, '', '', 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(819, 1, '', 819, 111, 'Student Achievment: Raja Rafli Putra Samudra', '<p style=\"text-align: justify;\">&nbsp;</p>\r\n<ol>\r\n<li>First Place&nbsp;(1st) City of Banjarmasin&nbsp;Level on<em> <strong>\'Adzan Putra\'</strong></em> @&nbsp;SMPN 10 Banjarmasin</li>\r\n</ol>', 'student-achievment-raja-rafli-putra-samudra', 135, 132, 'student-achievment-raja-rafli-putra-samudra', '20180416101832_dscf7346crop.jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 14, 0, 0, '2018-04-16 10:41:16', '2018-03-01 00:39:00', '0000-00-00 00:00:00', 'admin', '', 0, 0, 1, '', '', 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(820, 1, '', 820, 111, 'Student Achievment: Wida Nur Fajrina', '<p>&nbsp;</p>\r\n<ol>\r\n<li>First Place&nbsp;(1st) City of Banjarmasin Level on<em> <strong>\'Tahfidz Qur\'an Putri Pentas PAI\'</strong></em> @&nbsp;SD Islam Sabilal Muhtadin</li>\r\n</ol>', 'student-achievment-wida-nur-fajrina', 135, 132, 'student-achievment-wida-nur-fajrina', '20180418210239_dscf7371crop.jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 15, 0, 0, '2018-04-18 21:02:39', '2018-04-18 23:26:51', '0000-00-00 00:00:00', 'admin', '', 0, 1, 1, '', '', 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(821, 1, '', 821, 111, 'Student Achievment: M. Hifzi Abdillah', '<p style=\"text-align: justify;\">&nbsp;</p>\r\n<ol>\r\n<li>First Place&nbsp;(1st) of South Kalimantan Level on<em> <strong>\'Tilawah Quran\'</strong></em> @ BTKIP Banjarmasin</li>\r\n<li>First Place&nbsp;(1st) City of Banjarmasin Level on <em><strong>\'Hifzil Quran Putra PAI\'</strong></em> @Dhammasoka Junior High School</li>\r\n<li>Third Place (3rd) City of Banjarmasin Level on<strong><em> \'Tilawah Quran\'</em></strong> @ MAN 1 Banjarmasin</li>\r\n<li>Second Place (2nd) City of Banjarmasin Level on <strong><em>\'Tilawah Putra\'</em></strong> @ SMAN 1 Banjarmasin</li>\r\n</ol>', 'student-achievment-m-hifzi-abdillah', 135, 132, 'student-achievment-m-hifzi-abdillah', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 16, 0, 0, '2018-03-01 07:47:26', '2018-04-16 03:16:56', '0000-00-00 00:00:00', 'admin', '', 0, 1, 1, '', '', 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(822, 1, '', 822, 122, 'Science Club', '', 'science-club', 135, 132, 'science-club', '20180406133015_dscf7130.jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 17, 0, 0, '2018-04-06 13:30:15', '2018-04-06 06:28:00', '0000-00-00 00:00:00', 'admin', '', 0, 0, 1, '', '', 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(823, 1, '', 823, 111, 'Student Achievment: Aurellia Shafitri Suryansyah', '<p>1. First Place of Borneo Regional Level on <em><strong>\'Physics\' @&nbsp;</strong></em>Lambung Mangkurat University</p>', 'student-achievment-aurellia-shafitri-suryansyah', 135, 132, 'student-achievment-aurellia-shafitri-suryansyah', '20180419092142_dscf7358crop.jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 18, 0, 0, '2018-04-19 09:21:45', '2018-04-19 02:17:00', '0000-00-00 00:00:00', 'admin', '', 0, 0, 1, '', '', 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(824, 1, '', 824, 110, 'VISIT / OBSERVATION OF AL MAZAYA SENIOR HIGH SCHOOL TO THE GOVERNOR’S OFFICE OF KALIMANTAN SELATAN PROVINCE', '<p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\">Al-Mazaya Senior High School again made observations, namely observations to the Office of the Governor of South Kalimantan Province located in Banjarbaru City to find out how the environment in the governor\'s office.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\">The purpose of implementing this observation is to:</span></p>\r\n<ol style=\"text-align: justify;\">\r\n<li><span style=\"font-size: 12pt;\">Explain the direct explanation of Mr. Ahmad Yani, one of the chairmen of the bureau at the Governor\'s Office of South Kalimantan Province with a topic on the topic of National Integrity</span></li>\r\n<li><span style=\"font-size: 12pt;\">To find out the environment in the Office of the Governor of the Province of South Kalimantan.</span></li>\r\n</ol>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\">Observations were made on May 3, 2019, at 9:00 a.m. to 11:30 p.m., and attended by 68 participants, 60 people consisting of Al Mazaya students in class X and class XI and 8 others consisting of Al Mazaya teachers as mentors.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\">Observations at the Governor&rsquo;s office of South Kalimantan Province were opened by one of the Chairmen of the Bureau, Mr Ahmad Yani or commonly called Pak Memet. The event opened with a warm welcome and then continued with material delivery activities related to national integration by Pak Memet. After the delivery of the material was completed, the event continued with a question and answer session and photo session.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\">The closing ceremony was closed again by Ms. Memet. After the event was closed, observers left the Governor&rsquo;s Office returned to Al Mazaya High School. This event can also be carried out also not separated from the principal of Al Mazaya Senior High School Mr. Muhammad Amirudin Hamid so that the visit to the Governor&rsquo;s Office of South Kalimantan was carried out smoothly.</span></p>', 'visit-observation-of-al-mazaya-senior-high-school-to-the-governor-s-office-of-kalimantan-selatan-province', 135, 132, 'visit-observation-of-al-mazaya-senior-high-school-to-the-governor-s-office-of-kalimantan-selatan-province', '20190509122854_almazaya_-_gubernur.jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 19, 0, 0, '2019-05-09 12:31:14', '2019-05-03 02:00:00', '0000-00-00 00:00:00', 'admin', '', 0, 0, 1, 'KUNJUNGAN/OBSERVASI SMA AL MAZAYA KE KANTOR GUBERNUR PROVINSI KALIMANTAN SELATAN VISIT / OBSERVATION OF AL MAZAYA SENIOR HIGH SCHOOL TO THE GOVERNOR’S OFFICE OF KALIMANTAN SELATAN PROVINCE', '', 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(825, 1, '', 825, 110, 'SMA Al-Mazaya di ABSPACE GIBS Festival SMP-SMA 2019', '<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>The existence of competitions in the Non-Academic level of junior and high school level equivalent in South Kalimantan, Central Kalimantan, and East Kalimantan, held by the Global Islamic Boarding School, Al Mazaya High School also took part in the competition.</p>\r\n<p>This competition was held in order to enliven the 2019 GIBS Festival organized by the Global Islamic Boarding School\'s ABSPACE GIBS Festival 2019 theme which included the Speech, Traditional and Vocal Dance competitions and was held on February 28, 2019.</p>\r\n<p>The Al Mazaya senior high school students representing Al Mazaya participated in the competition, including:</p>\r\n<ol>\r\n<li>Belinda Zabrina L, representing the Indonesian Speech</li>\r\n<li>Istiqla Faiha, representing Traditional Dance</li>\r\n<li>Fitri Azzahra R, representing Traditional Dance</li>\r\n<li>Wafa Lettysia G, representing Traditional Dance</li>\r\n<li>Aisyah Nur Zahra, representing Traditional Dance</li>\r\n<li>Aurellia Shafitri S, representing Traditional Dance</li>\r\n<li>Aisyah Nur Zahra, representing Vocal Solo</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p>Al Mazaya Senior High School students who took part in the competition were accompanied by Mr. Firdaus and Ms. Rahmah, and got satisfactory results, namely the Indonesian language speech competition won 3rd place, traditional dance won 3rd place, and solo vocals also won 3rd place.</p>', 'sma-al-mazaya-di-abspace-gibs-festival-smp-sma-2019', 135, 132, 'sma-al-mazaya-di-abspace-gibs-festival-smp-sma-2019', '20190509122909_untitled.png', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 20, 0, 0, '2019-05-09 12:29:41', '2019-02-28 05:20:00', '0000-00-00 00:00:00', 'admin', '', 0, 0, 1, 'SMA Al-Mazaya di ABSPACE GIBS Festival SMP-SMA 2019', 'Adanya kompetisi di bidang Non Akademik tingkat SMP-SMA sederajat se-Kalimantan Selatan, Kalimantan Tengah, dan Kalimantan Timur, yang diadakan oleh SMP-SMA Global Islamic Boarding School, SMA Al Mazaya juga mengikuti perlombaan tersebut.\r\nPerlombaan ini diadakan dalam rangka memeriahkan GIBS Festival 2019 yang diselenggarakan oleh SMP-SMA Global Islamic Boarding School tema ABSPACE GIBS Festival 2019 yang meliputi lomba Pidato, Tari Tradisional, dan Vocal Solo dan  dilaksanakan pada tanggal 28 Februari 2019.\r\nAdapun siswa-siswa SMA Al Mazaya yang mewakili Al mazaya mengikuti perlombaan, diantaranya:\r\n1.	Belinda Zabrina L, mewakili Pidato Bahasa Indonesia\r\n2.	Istiqla Faiha, mewakili Tari Tradisional\r\n3.	Fitri Azzahra R,  mewakili Tari Tradisional\r\n4.	Wafa Lettysia G,  mewakili Tari Tradisional\r\n5.	Aisyah Nur Zahra,  mewakili Tari Tradisional\r\n6.	Aurellia Shafitri S,  mewakili Tari Tradisional\r\n7.	Aisyah Nur Zahra,  mewakili Vocal Solo\r\n\r\n	Siswa-siswa SMA Al Mazaya yang mengikuti perlombaan didampingi oleh Mr. Firdaus dan Ms. Rahmah, dan mendapatkan hasil yang memuaskan, yaitu lomba pidato bahasa indonesia mendapatkan juara 3, tari tradisional mendapatkan juara 3, dan vocal solo juga mendapatkan juara 3.\r\n', 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(826, 1, '', 826, 110, 'Al Mazaya Senior High School at O2SN Regency Level 2019', '<p>O2SN stands for National Student Sports Olympiad which is a National event to find new Indonesian seeds in the field of Sports.</p>\r\n<p>O2SN is also called resembling the National Science Olympiad or what is usually called OSN, except that O2SN is a sports version, and there is also FLS2N or what is called the National Student Art Competition Festival) and OPSI (Indonesian Student Research Olympiad).</p>\r\n<p>Lots of sports that are competed at O2SN include; Athletics, Swimming, Badminton, Karate, and Pencak Silat. The O2SN technique is the same as OSN, which has a level, one of which is high school level.</p>\r\n<p>The City Level O2SN of Banjarmasin was held on April 15-16 2019 at the Adenia SKB and Gor. Al Mazaya High School sent representatives in the field;</p>\r\n<ul>\r\n<li>Martial Arts, represented by: Magriyani</li>\r\n<li>Karate, represented by: Noor Maya</li>\r\n<li>Athletics, represented by: Taufik M Riady</li>\r\n<li>Badminton, represented by: Elmayya Jihan A</li>\r\n</ul>\r\n<p>Students representing Al Mazaya in this competition were accompanied by Mrs. Fatimah, assisted in guarding and encouraging Al Mazaya students, the best income was won by Magriyani in the field of martial arts because she made it into the top 6, although she had not won first place, this result had kept her pride because Magriyani did not have a coach but could still last up to the top 6 of 28 competitors, while for other sports, they fall in the preliminary stage.</p>\r\n<p>Even though it hasn\'t got maximum results, this will be used as a motivational material to be better in the future.</p>', 'al-mazaya-senior-high-school-at-o2sn-regency-level-2019', 135, 132, 'al-mazaya-senior-high-school-at-o2sn-regency-level-2019', '20190509122944_o2sn.jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 21, 0, 0, '2019-05-09 12:29:44', '2019-07-16 03:01:08', '0000-00-00 00:00:00', 'admin', '', 0, 1, 1, 'SMA Al Mazaya di O2SN Tingkat Kota/Kabupaten 2019 Al Mazaya Senior High School at O2SN Regency Level 2019', '', 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(827, 1, '', 827, 110, 'VISIT / OBSERVATION OF AL MAZAYA SENIOR HIGH SCHOOL TO THE BANJARMASIN DPRD’S OFFICE', '<p>Observation is a learning field and awareness to students to find out how to know the real reality of the theories that have been obtained at school. Because by observation, students will immediately jump into the field and find out how the work and steps taken by an agency / institution.</p>\r\n<p>Observation is an effort to optimize the knowledge that students get from school. In this case, Al-Mazaya Senior High School students observed the Banjarmasin DPRD&rsquo;s office to find out how the work process and environment in the DPRD.</p>\r\n<p>The purpose of implementing this observation is to:</p>\r\n<ol>\r\n<li>To find out the work process of the Banjarmasin City DPRD office.</li>\r\n<li>To find out the environment within the Banjarmasin DPRD Office.</li>\r\n</ol>\r\n<p>Observations were carried out on February 19, 2019, at 14.00-16.00, and attended by 80 participants, 70 people consisting of Al-Mazaya students in class X and class XI and 10 other people consisting of Al-Mazaya teachers as mentors.</p>\r\n<p>Observations at the Banjarmasin DPRD&rsquo;s Office were opened by the aide to the chairman of the DPRD, Ms. Andin. The event opened with a warm welcome and then continued with a tour around the entire room and the functions of each room at the Banjarmasin City DPRD Office. After the observation was completed, the program continued with introductions and motivations given by the chairman of the DPRD, Ms. Ananda. Then fill in the question and answer session and photo session.</p>\r\n<p>The closing of the event was again closed by Ms. Andin, adjutant to the chairman of the DPRD. After the event was closed, the observers left the Banjarmasin DPRD&rsquo;s Office and returned to Al-Mazaya. This event can also be carried out also not separated from the principal of Al Mazaya Senior High School Muhammad Amirudin Hamid so that the visit to the Banjarmasin DPRD&rsquo;s office went smoothly.</p>', 'visit-observation-of-al-mazaya-senior-high-school-to-the-banjarmasin-dprd-s-office-1', 135, 132, 'visit-observation-of-al-mazaya-senior-high-school-to-the-banjarmasin-dprd-s-office-1', '20190509123317_1.png', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 22, 0, 0, '2019-05-09 12:34:18', '2019-05-09 05:31:00', '0000-00-00 00:00:00', 'admin', '', 0, 0, 1, '', '', 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(828, 1, '', 828, 110, 'Al Mazaya Senior High School at O2SN Regency Level 2019', '<p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\">O2SN stands for National Student Sports Olympiad which is a National event to find new Indonesian seeds in the field of Sports.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\">O2SN is also called resembling the National Science Olympiad or what is usually called OSN, except that O2SN is a sports version, and there is also FLS2N or what is called the National Student Art Competition Festival) and OPSI (Indonesian Student Research Olympiad).</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\">Lots of sports that are competed at O2SN include; Athletics, Swimming, Badminton, Karate, and Pencak Silat. The O2SN technique is the same as OSN, which has a level, one of which is high school level.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\">The City Level O2SN of Banjarmasin was held on April 15-16 2019 at the Adenia SKB and Gor. Al Mazaya High School sent representatives in the field;</span></p>\r\n<ul style=\"text-align: justify;\">\r\n<li><span style=\"font-size: 12pt;\">Martial Arts, represented by: Magriyani</span></li>\r\n<li><span style=\"font-size: 12pt;\">Karate, represented by: Noor Maya</span></li>\r\n<li><span style=\"font-size: 12pt;\">Athletics, represented by: Taufik M Riady</span></li>\r\n<li><span style=\"font-size: 12pt;\">Badminton, represented by: Elmayya Jihan A</span></li>\r\n</ul>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\">Students representing Al Mazaya in this competition were accompanied by Mrs. Fatimah, assisted in guarding and encouraging Al Mazaya students, the best income was won by Magriyani in the field of martial arts because she made it into the top 6, although she had not won first place, this result had kept her pride because Magriyani did not have a coach but could still last up to the top 6 of 28 competitors, while for other sports, they fall in the preliminary stage.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 12pt;\">Even though it hasn\'t got maximum results, this will be used as a motivational material to be better in the future.</span></p>', 'al-mazaya-senior-high-school-at-o2sn-regency-level-2019-1', 135, 132, 'al-mazaya-senior-high-school-at-o2sn-regency-level-2019-1', '20190509123437_almazaya_-_o2sn.jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 23, 0, 0, '2019-05-09 12:35:53', '2019-04-16 05:33:00', '0000-00-00 00:00:00', 'admin', '', 0, 0, 1, 'Al Mazaya Senior High School at O2SN Regency Level 2019 SMA Al Mazaya di O2SN Tingkat Kota/Kabupaten 2019', '', 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(829, 1, '', 829, 110, 'SUPER CAMP AL MAZAYA ISLAMIC BANJARMASIN', '<p>Super camp yang dilaksanakan &nbsp;SMA Al Mazaya Islamic Banjarmasin dan Rindam Banjarbaru pada tanggal 25 Februari s.d 1 Maret 2019 yang berjalan selama 5 hari, pada hari pertama tanggal 25 Februari Full siswa menggunakan Bahasa Inggris, hari kedua tanggal 26 Februari siswa belajar Tahfiz sepanjang hari, hari ketiga siswa belajar Math dengan menggunakan model pembelajaran yang berbeda dari pelajaran setiap hari biasanya, hari keempat siswa yang jurusan IPS pergi ke pasar dengan tugas menganalisis pasar dengan cara wawancara kepada tiap penjual yang ada di pasar dan anak IPA mereka melakukan bedah kodok, Ikan Nila, membuat <em>es cream &nbsp;</em>dan pada hari terakhir siswa SMA di karantina di Rindam Banjarbaru untuk melatih jiwa kepemimpinan, kedesiplinan dan kejujuran yang di ikuti juga siswa SMP kelass8.</p>', 'super-camp-al-mazaya-islamic-banjarmasin', 135, 132, 'super-camp-al-mazaya-islamic-banjarmasin', '20190509124201_12.png', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 24, 0, 0, '2019-05-09 12:42:01', '2019-02-25 05:38:00', '0000-00-00 00:00:00', 'admin', '', 0, 0, 1, '', '', 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(830, 1, '', 830, 111, 'All About Almazaya\'s Student Achievements', '<p>Al Mazaya High School students often participate in various competitions both in academic and non-academic fields. One of them is the English debate competition. The English debate competition itself has various objectives including making students more open minded, increasing self-confidence in public speaking, increasing knowledge and improving critical thinking skills. In addition, the English debate can certainly improve students\' English skills.</p>\r\n<p>On April 10, 2019, Al Mazaya High School sent a team, namely Charoline Putri Ichwan as the first speaker from X Social, Belinda Zabrina Lailani as the second speaker from X Science, and Affan Ramadhani Adjfarisi as the third speaker from X Science. This English debate competition was held at SMAN 2 Banjarmasin. The day before the competition, a technical meeting was held at SMAN 4 Banjarmasin, where the technical meeting was represented by the accompanying teacher, Rahma Anjarwati, S.Pd., Gr., Who was familiarly called Ms. Rahma.</p>\r\n<p>During the technical meeting, an explanation of the debate system that used, a list of motions to be discussed, until dividing participants into rounds. The debating system used in this debate competition is the Asian Parliamentary system, where when the team\'s preliminary round is divided into 8 rounds, which are attended by 15 teams from various Public and Private High Schools in Banjarmasin and will be judged by judges from SMAN 1 Banjarmasin, SMA PGRI 1 Banjarmasin and SMAN 4 Banjarmasin.</p>\r\n<p>Al Mazaya High School Team itself will fight a team from Kanaan High School in the first round with a motion <strong>THW punish people who spread as a terrorist hoax</strong>. Al Mazaya\'s high school team explained various opinions related to motions from an affirmative point of view.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Entering the 21st century, there are 4 skills that must be possessed by each student. The first is critical thinking and problem solving, in this case students are required to be able to solve the problems faced which begin with compiling, expressing, analyzing and solving problems. Then the ability to communicate, collaborate and creativity and innovation. In addition to the teaching and learning process in the classroom, in enhancing 21st century skills can also be obtained through debate, where in debates, students are required to be able to analyze problems, process information obtained to be an argument that is delivered briefly, clearly and densely.</p>\r\n<p>This year, Indonesian debate competition was held at SMAN 5 Banjarmasin. The competition was attended by 22 teams from various public and private high schools in Banjarmasin which will be divided into 11 rounds. The winner of the Indonesian debate competition will represent Banjarmasin in the province level. In this competition, the system used is the Asian Parliamentary system. Where the team consists of government and affirmative teams, each of which has 3 members. In this system, each team member is given 7 minutes to explain their argument and starts from the first speaker from the government team.</p>\r\n<p>In this debate competition, Al Mazaya High School sent a team consisting of Wafa Lettysia Gianti, Fitria Azzahra Rezeqi and Istiqla Faiha, all of them from the XI Social class. Al Mazaya High School Team got eighth place and got the chance to fight the team from MAN 1 Banjarmasin with a motion \"<strong>That the government requires civil servants as neutral state apparatus in elections\".</strong> With the motion, the Al Mazaya High School team had the opportunity to become a government team and MAN 1 Banjarmasin team became an affirmative team. Before entering the debate time, each team was given the opportunity to case building for 15 minutes. This debate competition uses a ranking system and the Team from Al Mazaya High School is ranked 10 out of 22 teams.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Two students of Al Mazaya High School, Amiza Qorina and Prista Oksarnalia, who were both from the X Science class successfully got achievements in Story Telling competition province level that held at SMAN 5 Banjarmasin on January 19, 2019.</p>\r\n<p>This story telling competition was attended by around 20 participants, representing public and private High Schools in South Kalimantan. In its implementation, this competition didnt have a specific theme that must be chosen by the participants. Before the competition was held, the participants were given a list of the titles of the stories to be presented and selected the one on the list and then prepared a story script that would be presented on the day&nbsp; the competition held.</p>\r\n<p>Amiza won 2nd place through the Snow White story she delivered during the competition. Whereas Prista chose Malin Kundang\'s story which succeeded in taking her to become the 1st winner in this competition. A pride for Al Mazaya High School because it has very talented students in the field of storytelling. Because the story telling competition itself aims to develop the ability of English-language stories by conveying stories verbally in front of the public and can also develop the ability to convey stories verbally and smoothly, with proper grammar and vocabulary and speech, and intonation that is proper and clear.</p>', 'all-about-almazaya-s-student-achievements', 135, 132, 'all-about-almazaya-s-student-achievements', '20190509125758_2.jpg', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 25, 0, 0, '2019-05-09 12:57:58', '2019-05-09 05:41:00', '0000-00-00 00:00:00', 'admin', '', 0, 0, 1, 'All About Almazaya\'s Student Achievements Prestasi Almazaya', '', 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=831;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
