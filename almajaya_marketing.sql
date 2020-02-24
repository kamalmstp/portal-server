-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Feb 2020 pada 06.14
-- Versi server: 10.1.35-MariaDB
-- Versi PHP: 7.2.9

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
-- Struktur dari tabel `activity_log`
--

CREATE TABLE `activity_log` (
  `log_id` int(11) NOT NULL,
  `log_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `log_akses` varchar(100) DEFAULT NULL,
  `log_user` int(10) DEFAULT NULL,
  `log_name` varchar(255) DEFAULT NULL,
  `log_tipe` varchar(50) DEFAULT NULL,
  `log_desc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `activity_log`
--

INSERT INTO `activity_log` (`log_id`, `log_time`, `log_akses`, `log_user`, `log_name`, `log_tipe`, `log_desc`) VALUES
(1, '2020-02-21 08:18:42', 'admin', 1, 'Administrator', '0', 'Login Portal'),
(2, '2020-02-21 08:19:38', 'admin', 1, 'Administrator', '2', 'Menambahkan User Admin Baru'),
(3, '2020-02-21 08:20:02', 'admin', 1, 'Administrator', '3', 'Merubah Data User Admin'),
(4, '2020-02-21 08:20:13', 'admin', 1, 'Administrator', '2', 'Menambahkan User Admin Baru'),
(5, '2020-02-21 08:20:18', 'admin', 1, 'Administrator', '4', 'Menghapus Data User Admin'),
(6, '2020-02-21 08:22:49', 'admin', 1, 'Administrator', 'logout', 'Logout Portal'),
(7, '2020-02-21 08:40:09', 'admin', 1, 'Administrator', 'login', 'Login Portal'),
(8, '2020-02-21 10:36:12', 'admin', 1, 'Administrator', 'add', 'Menambah Data User Library'),
(9, '2020-02-21 10:38:48', 'admin', 1, 'Administrator', 'add', 'Menambah Data User Marketing'),
(10, '2020-02-21 10:39:01', 'admin', 1, 'Administrator', 'edit', 'Merubah Data User Marketing'),
(11, '2020-02-21 10:39:09', 'admin', 1, 'Administrator', 'delete', 'Menghapus Data User Marketing'),
(12, '2020-02-21 11:31:22', 'admin', 1, 'Administrator', 'logout', 'Logout Portal'),
(13, '2020-02-21 11:31:29', 'marketing', 1, 'marketing', 'login', 'Login Portal'),
(14, '2020-02-21 11:46:20', 'marketing', 1, 'marketing', 'logout', 'Logout Portal'),
(15, '2020-02-21 11:46:34', 'admin', 1, 'Administrator', 'login', 'Login Portal'),
(16, '2020-02-21 12:18:43', 'admin', 1, 'Administrator', 'logout', 'Logout Portal'),
(17, '2020-02-21 12:18:49', 'marketing', 1, 'marketing', 'login', 'Login Portal'),
(18, '2020-02-21 12:23:46', 'admin', 1, 'Administrator', 'login', 'Login Portal'),
(19, '2020-02-21 13:07:48', 'marketing', 1, 'marketing', 'logout', 'Logout Portal'),
(20, '2020-02-21 13:07:54', 'admin', 1, 'Administrator', 'login', 'Login Portal'),
(21, '2020-02-21 13:23:33', 'admin', 1, 'Administrator', 'logout', 'Logout Portal'),
(22, '2020-02-21 13:23:42', 'marketing', 1, 'marketing', 'login', 'Login Portal'),
(23, '2020-02-21 13:28:09', 'marketing', 1, 'marketing', 'logout', 'Logout Portal'),
(24, '2020-02-21 13:28:37', 'marketing', 1, 'marketing', 'login', 'Login Portal'),
(25, '2020-02-21 15:23:13', 'admin', 1, 'Administrator', 'login', 'Login Portal'),
(26, '2020-02-21 16:13:26', 'marketing', 1, 'marketing', 'add', 'Menambah Data Primary School'),
(27, '2020-02-21 16:14:16', 'marketing', 1, 'marketing', 'edit', 'Mengubah Data Primary School'),
(28, '2020-02-21 16:15:37', 'marketing', 1, 'marketing', 'edit', 'Mengubah Data Primary School'),
(29, '2020-02-21 16:22:13', 'marketing', 1, 'marketing', 'edit', 'Mengubah Data Middle School'),
(30, '2020-02-21 16:24:44', 'marketing', 1, 'marketing', 'edit', 'Mengubah Data Middle School'),
(31, '2020-02-21 20:32:57', 'marketing', 1, 'marketing', 'add', 'Menambah Data Primary School'),
(32, '2020-02-21 20:33:09', 'marketing', 1, 'marketing', 'delete', 'Menghapus Data Primary School'),
(33, '2020-02-21 20:34:02', 'marketing', 1, 'marketing', 'edit', 'Mengubah Data Primary School'),
(34, '2020-02-21 20:34:25', 'marketing', 1, 'marketing', 'edit', 'Mengubah Data Primary School'),
(35, '2020-02-21 20:37:51', 'marketing', 1, 'marketing', 'edit', 'Mengubah Data Primary School'),
(36, '2020-02-21 20:50:35', 'marketing', 1, 'marketing', 'add', 'Menambah Data Primary School'),
(37, '2020-02-21 20:51:29', 'marketing', 1, 'marketing', 'add', 'Menambah Data Primary School'),
(38, '2020-02-22 12:39:38', 'admin', 1, 'Administrator', 'logout', 'Logout Portal'),
(39, '2020-02-22 12:39:46', 'teacher', 108, 'Guru', 'login', 'Login Portal'),
(40, '2020-02-22 12:48:54', 'teacher', 108, 'Guru', 'logout', 'Logout Portal'),
(41, '2020-02-22 12:48:59', 'admin', 1, 'Administrator', 'login', 'Login Portal'),
(42, '2020-02-22 13:03:31', 'marketing', 1, 'marketing', 'add', 'Menambah Data Marketing Time'),
(43, '2020-02-22 17:56:18', 'marketing', 1, 'marketing', 'login', 'Login Portal'),
(44, '2020-02-23 11:59:36', 'marketing', 1, 'marketing', 'logout', 'Logout Portal'),
(45, '2020-02-23 11:59:42', 'admin', 1, 'Administrator', 'login', 'Login Portal'),
(46, '2020-02-23 12:15:05', 'admin', 1, 'Administrator', 'logout', 'Logout Portal'),
(47, '2020-02-23 12:15:11', 'marketing', 1, 'marketing', 'login', 'Login Portal'),
(48, '2020-02-23 18:28:50', 'admin', 1, 'Administrator', 'login', 'Login Portal');

-- --------------------------------------------------------

--
-- Struktur dari tabel `marketing`
--

CREATE TABLE `marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` longtext,
  `username` longtext,
  `password` longtext,
  `email` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `marketing`
--

INSERT INTO `marketing` (`marketing_id`, `name`, `username`, `password`, `email`) VALUES
(1, 'marketing', 'marketing', 'f865b53623b121fd34ee5426c792e5c33af8c227', 'marketing@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `marketing_plan`
--

CREATE TABLE `marketing_plan` (
  `plan_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `time_id` int(11) DEFAULT NULL,
  `timestamp` longtext,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `marketing_plan`
--

INSERT INTO `marketing_plan` (`plan_id`, `school_id`, `time_id`, `timestamp`, `user_id`) VALUES
(5, 6, 1, '1582426613', NULL),
(6, 5, 1, '1582428023', NULL),
(7, 7, 1, '1582430336', NULL),
(8, 1, 1, '1582436663', NULL),
(9, 2, 1, '1582436674', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `marketing_plan_status`
--

CREATE TABLE `marketing_plan_status` (
  `status_id` int(11) NOT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `status_plan` varchar(200) DEFAULT NULL,
  `topick` longtext,
  `person` longtext,
  `user_id` int(11) DEFAULT NULL,
  `status_result` varchar(200) DEFAULT NULL,
  `result` longtext,
  `timestamp_plan` longtext,
  `timestamp_result` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `marketing_plan_status`
--

INSERT INTO `marketing_plan_status` (`status_id`, `plan_id`, `status_plan`, `topick`, `person`, `user_id`, `status_result`, `result`, `timestamp_plan`, `timestamp_result`) VALUES
(2, 6, 'Permission', 'Memberikan surat permohonan izin sosialisasi dan menanyakan data siswa/i berprestasi ', 'marketing', 1, NULL, NULL, '1582489074', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `marketing_school`
--

CREATE TABLE `marketing_school` (
  `school_id` int(11) NOT NULL,
  `name` longtext,
  `address` longtext,
  `contact` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `status` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `marketing_school`
--

INSERT INTO `marketing_school` (`school_id`, `name`, `address`, `contact`, `phone`, `level`, `status`) VALUES
(1, 'SMP 1 Banjarmasin', 'Jl. dkfkdfndj Banjarmasin', 'Tes', '2147483647', 'SMP', NULL),
(2, 'SMP 2 Banjarmasin', 'Banjarmasin', 'Kamal', '6234567', 'SMP', NULL),
(5, 'SDN Kuripan 2', 'Banjarmasin', 'Rini Nellyani', '081351442400', 'SD', NULL),
(6, 'SDN SN Pangambangan 5', 'Banjarmasin', 'Rahmadi', '081348371550', 'SD', NULL),
(7, 'SD MDIM Kindanung', 'Banjarmasin', 'Rudi', '087815020108', 'SD', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `marketing_time`
--

CREATE TABLE `marketing_time` (
  `time_id` int(11) NOT NULL,
  `start_at` int(11) DEFAULT NULL,
  `end_at` int(11) DEFAULT NULL,
  `running_year` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `marketing_time`
--

INSERT INTO `marketing_time` (`time_id`, `start_at`, `end_at`, `running_year`) VALUES
(1, 1580486400, 1585584000, '2019-2020');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indeks untuk tabel `marketing`
--
ALTER TABLE `marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Indeks untuk tabel `marketing_plan`
--
ALTER TABLE `marketing_plan`
  ADD PRIMARY KEY (`plan_id`);

--
-- Indeks untuk tabel `marketing_plan_status`
--
ALTER TABLE `marketing_plan_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indeks untuk tabel `marketing_school`
--
ALTER TABLE `marketing_school`
  ADD PRIMARY KEY (`school_id`);

--
-- Indeks untuk tabel `marketing_time`
--
ALTER TABLE `marketing_time`
  ADD PRIMARY KEY (`time_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `marketing`
--
ALTER TABLE `marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `marketing_plan`
--
ALTER TABLE `marketing_plan`
  MODIFY `plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `marketing_plan_status`
--
ALTER TABLE `marketing_plan_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `marketing_school`
--
ALTER TABLE `marketing_school`
  MODIFY `school_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `marketing_time`
--
ALTER TABLE `marketing_time`
  MODIFY `time_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
