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
-- Database: `tahfidz`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_07_03_041142_create_user_table', 1),
(2, '2019_07_03_042750_create_class_table', 1),
(3, '2019_07_03_042949_create_surah_table', 1),
(4, '2019_07_03_043613_create_user_token_table', 1),
(5, '2019_07_03_044115_create_iqro_table', 1),
(6, '2019_07_03_044924_create_sytem_log_table', 1),
(7, '2019_07_03_045155_create_siswa_table', 1),
(8, '2019_07_03_050203_create_siswa_has_surah_table', 1),
(9, '2019_07_03_074151_create_siswa_has_iqro_table', 1),
(10, '2019_07_03_074506_create_report_print_log_table', 1),
(11, '2019_07_03_074842_create_global_setting_table', 1),
(12, '2019_08_12_083949_create_permission_tables', 1),
(13, '2019_08_19_003209_create_siswa_has_parent', 1),
(14, '2019_08_22_002116_create_assessment_log', 1),
(15, '2019_09_05_011908_create_action_log', 1),
(16, '2020_01_31_213915_create_notification', 1),
(17, '2020_02_02_005836_create_user_notification', 1),
(18, '2020_02_02_005837_create_password_resets_table', 1),
(19, '2020_02_13_130004_create_user_login_history', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Model\\User\\User', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'index home', 'web', '2020-03-31 16:49:20', '2020-03-31 16:49:20'),
(2, 'index surah', 'web', '2020-03-31 16:49:20', '2020-03-31 16:49:20'),
(3, 'view surah', 'web', '2020-03-31 16:49:21', '2020-03-31 16:49:21'),
(4, 'create surah', 'web', '2020-03-31 16:49:21', '2020-03-31 16:49:21'),
(5, 'update surah', 'web', '2020-03-31 16:49:21', '2020-03-31 16:49:21'),
(6, 'delete surah', 'web', '2020-03-31 16:49:21', '2020-03-31 16:49:21'),
(7, 'index user', 'web', '2020-03-31 16:49:21', '2020-03-31 16:49:21'),
(8, 'view user', 'web', '2020-03-31 16:49:21', '2020-03-31 16:49:21'),
(9, 'create user', 'web', '2020-03-31 16:49:21', '2020-03-31 16:49:21'),
(10, 'update user', 'web', '2020-03-31 16:49:21', '2020-03-31 16:49:21'),
(11, 'delete user', 'web', '2020-03-31 16:49:22', '2020-03-31 16:49:22'),
(12, 'index class', 'web', '2020-03-31 16:49:22', '2020-03-31 16:49:22'),
(13, 'view class', 'web', '2020-03-31 16:49:22', '2020-03-31 16:49:22'),
(14, 'create class', 'web', '2020-03-31 16:49:22', '2020-03-31 16:49:22'),
(15, 'update class', 'web', '2020-03-31 16:49:22', '2020-03-31 16:49:22'),
(16, 'delete class', 'web', '2020-03-31 16:49:22', '2020-03-31 16:49:22'),
(17, 'index iqro', 'web', '2020-03-31 16:49:22', '2020-03-31 16:49:22'),
(18, 'view iqro', 'web', '2020-03-31 16:49:22', '2020-03-31 16:49:22'),
(19, 'create iqro', 'web', '2020-03-31 16:49:22', '2020-03-31 16:49:22'),
(20, 'update iqro', 'web', '2020-03-31 16:49:22', '2020-03-31 16:49:22'),
(21, 'delete iqro', 'web', '2020-03-31 16:49:23', '2020-03-31 16:49:23'),
(22, 'index siswa', 'web', '2020-03-31 16:49:23', '2020-03-31 16:49:23'),
(23, 'view siswa', 'web', '2020-03-31 16:49:23', '2020-03-31 16:49:23'),
(24, 'create siswa', 'web', '2020-03-31 16:49:23', '2020-03-31 16:49:23'),
(25, 'update siswa', 'web', '2020-03-31 16:49:23', '2020-03-31 16:49:23'),
(26, 'delete siswa', 'web', '2020-03-31 16:49:23', '2020-03-31 16:49:23'),
(27, 'index parent', 'web', '2020-03-31 16:49:23', '2020-03-31 16:49:23'),
(28, 'change password', 'web', '2020-03-31 16:49:23', '2020-03-31 16:49:23'),
(29, 'create parent', 'web', '2020-03-31 16:49:23', '2020-03-31 16:49:23'),
(30, 'update parent', 'web', '2020-03-31 16:49:23', '2020-03-31 16:49:23'),
(31, 'delete parent', 'web', '2020-03-31 16:49:24', '2020-03-31 16:49:24'),
(32, 'index assessment', 'web', '2020-03-31 16:49:24', '2020-03-31 16:49:24'),
(33, 'create assessment', 'web', '2020-03-31 16:49:24', '2020-03-31 16:49:24'),
(34, 'index role', 'web', '2020-03-31 16:49:24', '2020-03-31 16:49:24'),
(35, 'update role', 'web', '2020-03-31 16:49:24', '2020-03-31 16:49:24'),
(36, 'all report', 'web', '2020-03-31 16:49:24', '2020-03-31 16:49:24'),
(37, 'index profile', 'web', '2020-03-31 16:49:24', '2020-03-31 16:49:24'),
(38, 'update profile', 'web', '2020-03-31 16:49:24', '2020-03-31 16:49:24'),
(39, 'index notification', 'web', '2020-03-31 16:49:24', '2020-03-31 16:49:24'),
(40, 'create notification', 'web', '2020-03-31 16:49:25', '2020-03-31 16:49:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2020-03-31 16:49:25', '2020-03-31 16:49:25'),
(2, 'Creator', 'web', '2020-03-31 16:49:25', '2020-03-31 16:49:25'),
(3, 'Guru', 'web', '2020-03-31 16:49:25', '2020-03-31 16:49:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(32, 3),
(33, 1),
(33, 2),
(33, 3),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(36, 3),
(37, 1),
(37, 2),
(37, 3),
(38, 1),
(38, 2),
(38, 3),
(39, 1),
(39, 2),
(40, 1),
(40, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_action_log`
--

CREATE TABLE `tbl_action_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `action_type` int(11) NOT NULL,
  `is_error` int(11) NOT NULL,
  `action_message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_action_log`
--

INSERT INTO `tbl_action_log` (`id`, `user_id`, `action_type`, `is_error`, `action_message`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, 10, 0, 'Mengakses Halaman Home', '2020-04-01 00:49:59', '2020-03-31 16:49:59', '2020-03-31 16:49:59'),
(2, 1, 10, 0, 'Mengakses halaman manajemen user', '2020-04-01 00:50:29', '2020-03-31 16:50:29', '2020-03-31 16:50:29'),
(3, 1, 10, 0, 'Mengakses Halaman Orangtua', '2020-04-01 00:50:34', '2020-03-31 16:50:34', '2020-03-31 16:50:34'),
(4, 1, 10, 0, 'Mengakses Halaman Master Quran', '2020-04-01 00:50:55', '2020-03-31 16:50:55', '2020-03-31 16:50:55'),
(5, 1, 10, 0, 'Mengakses Halaman Home', '2020-04-01 02:05:13', '2020-03-31 18:05:13', '2020-03-31 18:05:13'),
(6, 1, 10, 0, 'Mengakses Halaman Home', '2020-04-01 02:06:47', '2020-03-31 18:06:47', '2020-03-31 18:06:47'),
(7, 1, 10, 0, 'Mengakses halaman Profile', '2020-04-01 02:06:54', '2020-03-31 18:06:54', '2020-03-31 18:06:54'),
(8, 1, 10, 0, 'Mengakses halaman Profile', '2020-04-01 02:12:06', '2020-03-31 18:12:06', '2020-03-31 18:12:06'),
(9, 1, 10, 0, 'Mengakses Halaman Home', '2020-04-01 02:17:25', '2020-03-31 18:17:25', '2020-03-31 18:17:25'),
(10, 1, 10, 0, 'Mengakses halaman manajemen user', '2020-04-01 02:17:31', '2020-03-31 18:17:31', '2020-03-31 18:17:31'),
(11, 1, 10, 0, 'Mengakses halaman role', '2020-04-01 02:17:51', '2020-03-31 18:17:51', '2020-03-31 18:17:51'),
(12, 1, 10, 0, 'Mengakses halaman update role', '2020-04-01 02:18:02', '2020-03-31 18:18:02', '2020-03-31 18:18:02'),
(13, 1, 10, 0, 'Mengakses halaman manajemen user', '2020-04-01 02:18:22', '2020-03-31 18:18:22', '2020-03-31 18:18:22'),
(14, 1, 10, 0, 'Mengakses Halaman Home', '2020-04-01 03:16:35', '2020-03-31 19:16:35', '2020-03-31 19:16:35'),
(15, 1, 10, 0, 'Mengakses Halaman Home', '2020-04-01 03:16:57', '2020-03-31 19:16:57', '2020-03-31 19:16:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_assessment_log`
--

CREATE TABLE `tbl_assessment_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `assessment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `range` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_class`
--

CREATE TABLE `tbl_class` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `angkatan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_global_setting`
--

CREATE TABLE `tbl_global_setting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `use_log_setting` tinyint(4) NOT NULL DEFAULT '10',
  `use_log_print` tinyint(4) NOT NULL DEFAULT '10',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_iqro`
--

CREATE TABLE `tbl_iqro` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jilid_number` int(11) NOT NULL,
  `total_page` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_notification`
--

CREATE TABLE `tbl_notification` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notification_type` int(11) NOT NULL,
  `notification_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notification_message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_report_print_log`
--

CREATE TABLE `tbl_report_print_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `print_by` bigint(20) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siswa_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `memorization_type` int(11) NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa_has_iqro`
--

CREATE TABLE `tbl_siswa_has_iqro` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `iqro_id` bigint(20) UNSIGNED DEFAULT NULL,
  `siswa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `page` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `group_page` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa_has_parent`
--

CREATE TABLE `tbl_siswa_has_parent` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa_has_surah`
--

CREATE TABLE `tbl_siswa_has_surah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `surah_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ayat` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `group_ayat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_surah`
--

CREATE TABLE `tbl_surah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `surah_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `juz` int(11) NOT NULL,
  `total_ayat` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_system_log`
--

CREATE TABLE `tbl_system_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_type` tinyint(4) NOT NULL DEFAULT '10',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `last_login_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `address`, `full_name`, `profile_picture`, `account_type`, `password`, `status`, `email`, `email_verified_at`, `remember_token`, `last_login_at`, `last_login_ip`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, 'Super Admin', NULL, 10, '$2y$10$LH46Owm1XbdQLC5VMLxBYuaotidSqqWqUyHIoydK0isK03nrhgDYq', 10, 'admin@gmail.com', NULL, NULL, NULL, NULL, '2020-04-01 00:49:19', '2020-04-01 00:49:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user_login_history`
--

CREATE TABLE `tbl_user_login_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `last_login_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_user_login_history`
--

INSERT INTO `tbl_user_login_history` (`id`, `user_id`, `last_login_ip`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', '2020-04-01 00:49:58', '2020-03-31 16:49:58', '2020-03-31 16:49:58'),
(2, 1, '127.0.0.1', '2020-04-01 02:17:24', '2020-03-31 18:17:24', '2020-03-31 18:17:24'),
(3, 1, '::1', '2020-04-01 03:16:56', '2020-03-31 19:16:56', '2020-03-31 19:16:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user_notification`
--

CREATE TABLE `tbl_user_notification` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `notification_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user_token`
--

CREATE TABLE `tbl_user_token` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `token` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_expired` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `tbl_action_log`
--
ALTER TABLE `tbl_action_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_action_log_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `tbl_assessment_log`
--
ALTER TABLE `tbl_assessment_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_assessment_log_siswa_id_foreign` (`siswa_id`);

--
-- Indeks untuk tabel `tbl_class`
--
ALTER TABLE `tbl_class`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_class_teacher_id_foreign` (`teacher_id`);

--
-- Indeks untuk tabel `tbl_global_setting`
--
ALTER TABLE `tbl_global_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_iqro`
--
ALTER TABLE `tbl_iqro`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_notification`
--
ALTER TABLE `tbl_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_report_print_log`
--
ALTER TABLE `tbl_report_print_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_report_print_log_print_by_foreign` (`print_by`);

--
-- Indeks untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_siswa_class_id_foreign` (`class_id`);

--
-- Indeks untuk tabel `tbl_siswa_has_iqro`
--
ALTER TABLE `tbl_siswa_has_iqro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_siswa_has_iqro_siswa_id_foreign` (`siswa_id`),
  ADD KEY `tbl_siswa_has_iqro_iqro_id_foreign` (`iqro_id`);

--
-- Indeks untuk tabel `tbl_siswa_has_parent`
--
ALTER TABLE `tbl_siswa_has_parent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_siswa_has_parent_parent_id_foreign` (`parent_id`),
  ADD KEY `tbl_siswa_has_parent_siswa_id_foreign` (`siswa_id`);

--
-- Indeks untuk tabel `tbl_siswa_has_surah`
--
ALTER TABLE `tbl_siswa_has_surah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_siswa_has_surah_siswa_id_foreign` (`siswa_id`),
  ADD KEY `tbl_siswa_has_surah_surah_id_foreign` (`surah_id`);

--
-- Indeks untuk tabel `tbl_surah`
--
ALTER TABLE `tbl_surah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_system_log`
--
ALTER TABLE `tbl_system_log`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_system_log_user_id_unique` (`user_id`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_user_email_unique` (`email`);

--
-- Indeks untuk tabel `tbl_user_login_history`
--
ALTER TABLE `tbl_user_login_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_user_login_history_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `tbl_user_notification`
--
ALTER TABLE `tbl_user_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_user_notification_user_id_foreign` (`user_id`),
  ADD KEY `tbl_user_notification_notification_id_foreign` (`notification_id`);

--
-- Indeks untuk tabel `tbl_user_token`
--
ALTER TABLE `tbl_user_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_user_token_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_action_log`
--
ALTER TABLE `tbl_action_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tbl_assessment_log`
--
ALTER TABLE `tbl_assessment_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_class`
--
ALTER TABLE `tbl_class`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_global_setting`
--
ALTER TABLE `tbl_global_setting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_iqro`
--
ALTER TABLE `tbl_iqro`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_notification`
--
ALTER TABLE `tbl_notification`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_report_print_log`
--
ALTER TABLE `tbl_report_print_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_siswa_has_iqro`
--
ALTER TABLE `tbl_siswa_has_iqro`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_siswa_has_parent`
--
ALTER TABLE `tbl_siswa_has_parent`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_siswa_has_surah`
--
ALTER TABLE `tbl_siswa_has_surah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_surah`
--
ALTER TABLE `tbl_surah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_system_log`
--
ALTER TABLE `tbl_system_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_user_login_history`
--
ALTER TABLE `tbl_user_login_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_user_notification`
--
ALTER TABLE `tbl_user_notification`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_user_token`
--
ALTER TABLE `tbl_user_token`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_action_log`
--
ALTER TABLE `tbl_action_log`
  ADD CONSTRAINT `tbl_action_log_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `tbl_assessment_log`
--
ALTER TABLE `tbl_assessment_log`
  ADD CONSTRAINT `tbl_assessment_log_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `tbl_siswa` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `tbl_class`
--
ALTER TABLE `tbl_class`
  ADD CONSTRAINT `tbl_class_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_report_print_log`
--
ALTER TABLE `tbl_report_print_log`
  ADD CONSTRAINT `tbl_report_print_log_print_by_foreign` FOREIGN KEY (`print_by`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD CONSTRAINT `tbl_siswa_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `tbl_class` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_siswa_has_iqro`
--
ALTER TABLE `tbl_siswa_has_iqro`
  ADD CONSTRAINT `tbl_siswa_has_iqro_iqro_id_foreign` FOREIGN KEY (`iqro_id`) REFERENCES `tbl_iqro` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tbl_siswa_has_iqro_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `tbl_siswa` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `tbl_siswa_has_parent`
--
ALTER TABLE `tbl_siswa_has_parent`
  ADD CONSTRAINT `tbl_siswa_has_parent_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_siswa_has_parent_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `tbl_siswa` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_siswa_has_surah`
--
ALTER TABLE `tbl_siswa_has_surah`
  ADD CONSTRAINT `tbl_siswa_has_surah_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `tbl_siswa` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tbl_siswa_has_surah_surah_id_foreign` FOREIGN KEY (`surah_id`) REFERENCES `tbl_surah` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `tbl_system_log`
--
ALTER TABLE `tbl_system_log`
  ADD CONSTRAINT `tbl_system_log_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_user_login_history`
--
ALTER TABLE `tbl_user_login_history`
  ADD CONSTRAINT `tbl_user_login_history_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_user_notification`
--
ALTER TABLE `tbl_user_notification`
  ADD CONSTRAINT `tbl_user_notification_notification_id_foreign` FOREIGN KEY (`notification_id`) REFERENCES `tbl_notification` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tbl_user_notification_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `tbl_user_token`
--
ALTER TABLE `tbl_user_token`
  ADD CONSTRAINT `tbl_user_token_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
