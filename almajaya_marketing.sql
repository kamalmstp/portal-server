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
