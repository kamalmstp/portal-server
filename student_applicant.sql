-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Apr 2020 pada 05.17
-- Versi server: 10.1.35-MariaDB
-- Versi PHP: 7.4.3

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
-- Struktur dari tabel `student_applicant`
--

CREATE TABLE `student_applicant` (
  `applicant_id` int(11) NOT NULL,
  `name` longtext,
  `birthplace` longtext,
  `birthday` longtext,
  `sex` longtext,
  `address` longtext,
  `phone` longtext,
  `email` longtext,
  `nama_ayah` longtext,
  `nama_ibu` longtext,
  `nama_wali` longtext,
  `no_hp` longtext,
  `school_id` int(11) DEFAULT NULL,
  `ket` longtext,
  `status` longtext,
  `user` int(11) DEFAULT NULL,
  `date_time` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `student_applicant`
--

INSERT INTO `student_applicant` (`applicant_id`, `name`, `birthplace`, `birthday`, `sex`, `address`, `phone`, `email`, `nama_ayah`, `nama_ibu`, `nama_wali`, `no_hp`, `school_id`, `ket`, `status`, `user`, `date_time`) VALUES
(3, 'Baru', 'Banjarmasin', '06/16/2010', 'male', 'HKsn', '082237736365', 'mdkffdkjn@Jngk.cn', 'ayah', 'ibu', 'wali', '08643', 7, 'note', 'Applicant', 1, '1585692915');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `student_applicant`
--
ALTER TABLE `student_applicant`
  ADD PRIMARY KEY (`applicant_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `student_applicant`
--
ALTER TABLE `student_applicant`
  MODIFY `applicant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
