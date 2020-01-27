-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jan 2020 pada 19.44
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbalmajaya`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `teacher`
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
  `status` int(1) DEFAULT 0,
  `nama_sekolah` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `npsn` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alamat_sekolah` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama_lengkap` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nik` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tempat_lahir` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama_ibu_kandung` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rt` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rw` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama_dusun` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kec` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kode_pos` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `npwp_guru` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama_wajib_pajak` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kewarganegaraan` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_perkawinan` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama_suami` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nip_suami` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pekerjaan_suami` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_kepegawaiaan` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `niy` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nuptk` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jenis_ptk` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sk_pengangkatan` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tmt_pengangkatan` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lembaga_pengangkatan` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sk_cpns` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tmt_pns` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pangkat` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sumber_gaji` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kartu_pegawai` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kartu_istri` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lisensi` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keahlian` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `khusus` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keahlian_braile` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bahasa_isyarat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telepon_rumah` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_bank` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_req_bank` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `req_atas_nama` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `nip`, `name`, `position`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `authentication_key`, `designation`, `social_links`, `show_on_website`, `photo`, `status`, `nama_sekolah`, `npsn`, `alamat_sekolah`, `nama_lengkap`, `nik`, `tempat_lahir`, `nama_ibu_kandung`, `rt`, `rw`, `nama_dusun`, `kec`, `kode_pos`, `npwp_guru`, `nama_wajib_pajak`, `kewarganegaraan`, `status_perkawinan`, `nama_suami`, `nip_suami`, `pekerjaan_suami`, `status_kepegawaiaan`, `niy`, `nuptk`, `jenis_ptk`, `sk_pengangkatan`, `tmt_pengangkatan`, `lembaga_pengangkatan`, `sk_cpns`, `tmt_pns`, `pangkat`, `sumber_gaji`, `kartu_pegawai`, `kartu_istri`, `lisensi`, `keahlian`, `khusus`, `keahlian_braile`, `bahasa_isyarat`, `telepon_rumah`, `id_bank`, `no_req_bank`, `req_atas_nama`) VALUES
(83, 'at0057', 'Baihaqi', 'Teacher', '2020-01-06', 'L', 'islam', NULL, 'bjm', '082153022011', 'haha@gmail.com', '25ac23047172cc4523508d2bfef490885605cb8a', NULL, NULL, NULL, 0, NULL, 1, 'sd. alam', '4523', 'jl. tambarangan', 'herruasdf', '23456236', 'jl amuntai', 'asmunio', '05', '09', 'bjb', 'bjb utara', '777644', '2364582426', 'gardu', 'indo', 'sah', 'bardun', '909875456778', 'kuli', 'aktif', '643789', '96679', 'suasta', 'ada', 'trdkhg', 'pt adarop', 'ugjhjtf', 'kljiu9u', '9', 'dimna aja', 'ada', 'dad', 'ada', 'tidak', 'iya', 'tidak', 'tidak', '02112345', '123123123', '67482526', 'bahrun'),
(84, 'at0064', 'Mukhlis', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'mukhlisahmadmuaidi@gmail.com', '4193fb40bd3dc4d33b3a6a60f05dbf1b5f7c1378', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'at0071', 'Rusi Milita', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'rosimilita@gmail.com', '011d298465e55ac6d93206a04e227df59ab23bdc', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'at0078', 'Rido Ansyori', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'rido.ansyori@gmail.com', 'a853aa3de88ddd03b674167759cfca42dcb2313c', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'at0085', 'Herliana', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'herlianawicaksono@gmail.com', '3284e60db16f7ec68eeac1f3744efad26135eebe', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'at0092', 'Annisa Nursyifa', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '72e04b4380a4f2f3fc1916f11741d40eb1b18943', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'at0099', 'Nazar Mutawali', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'nazarmutawali@yahoo.co.id', '757c08260b47a9ef9ec960912391c4aeb3bc6ada', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'at00106', 'Renanda N. Bilianti', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'renandanb@gmail.com', 'cf3349f50eb2b38eb8366d271d919f8e165118d1', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'at00113', 'Siti Mardiah. A', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'aaat00113', '83cbf6339909fcebd73194a9510b27fce78bdade', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'at00120', 'Nisa Kusumaningtyas', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'nisakusuma7@gmail.com', '2ab87f0c8d72c958df313144622f42f835187950', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'at00127', 'Novita Sari', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'civicsmp@yahoo.com', 'c62b3908a89de006bbc909a62a33b485177a92f2', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'at00134', 'Hestira Cayu Dahniar', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'ecidahniar@gmail.com', '05dea195cdf8c51a3fd9601941b2737addf6ba6e', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'at00141', 'Muhammad firdaus', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, '04.firdausm@gmail.com', '1180817fc683fcc2b40d0953de39cb033b6cd24a', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'at00148', 'Nadya Hidayati', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'nadyahidayati96@gmail.com', '81ff99094bc3c6461c5e89b42282f66aeab92186', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'at00155', 'Dahlia', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'dahliaalkaf40@gmail.com', 'afd714b55dd73b00d0adbc71d01d875423794f0b', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'at00162', 'Siti Jariah', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '856332e3b3bef5759f196450c634b0ff92b2b50a', NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'at00169', 'Siti Fatimah', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76a690ee00bdfbd19e80af6bf647b84675e1726a', NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'at00176', 'Yunada Afriliani', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'afbc6f0518cd213b596663f10ea15c958dc01f6d', NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'at00183', 'Rahma Anjarwati,S.Pd.,Gr.', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'rachmaanjarwati931@gmail.com', '1d9555594b94841a8e5b43258f04de09223756c8', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'at00190', 'Muhammad Nasir', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'muhammadnasir170996@gmail.com', 'ed04e930bed34e140f7fa9ade8ab148bf14fd098', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'at00197', 'Rina Supriyanti, S.Pd., Gr.', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'rinasupsup95@gmail.com', 'e9ce409c012751322853a4f58941245647aab47e', NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'at00204', 'Noor Meilina', 'Teacher', NULL, 'female', NULL, NULL, NULL, NULL, 'noormeilinaips15@gmail.com', '15af987b60702cdcb77982067f5ffec851a59f51', NULL, NULL, '[{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}]', 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'at00211', 'Sepriyani Ina Tokan', 'Teacher', NULL, 'female', NULL, NULL, NULL, NULL, 'sepriyaniina@gmail.com', '6b05e02f2fce1a4fdbfd24fc90ba72959ed63d7f', NULL, NULL, '[{\"facebook\":\"\",\"twitter\":\"\",\"linkedin\":\"\"}]', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'at00218', 'Abdurrahman Fauzi', 'Teacher', NULL, 'male', NULL, NULL, NULL, NULL, 'aaaaat00218', '2a87b0d0df5c2ad6b81cf682b89ff4d205f8175e', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'at00225', 'Sya&#039;diyah', 'Teacher', NULL, NULL, NULL, NULL, NULL, NULL, 'aaaaat00225', 'c0c16c7aaa53bf35e4f4ae229b405e7db985196a', NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, '654321', 'Guru', 'Teacher', '07/11/1990', 'male', NULL, NULL, 'Banjarmasin', '085555555', 'guru@gmail.com', 'f865b53623b121fd34ee5426c792e5c33af8c227', NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
