-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 30, 2018 at 03:19 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `surat_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `disposisis`
--

CREATE TABLE `disposisis` (
  `id` int(10) UNSIGNED NOT NULL,
  `catatan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batas_waktu` date NOT NULL,
  `sifat_disposisi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `inletter_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `disposisis`
--

INSERT INTO `disposisis` (`id`, `catatan`, `batas_waktu`, `sifat_disposisi`, `created_at`, `updated_at`, `inletter_id`, `user_id`) VALUES
(52, 'dr surat 1', '2018-10-17', 'SR', '2018-10-28 01:48:36', '2018-10-28 01:48:36', 1, 2),
(53, 'buat distribusi', '2018-10-10', 'SR', '2018-10-30 06:53:17', '2018-10-30 06:53:17', 15, 2);

-- --------------------------------------------------------

--
-- Table structure for table `inletters`
--

CREATE TABLE `inletters` (
  `id` int(10) UNSIGNED NOT NULL,
  `no_surat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `klasifikasi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perihal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tujuan` int(10) NOT NULL,
  `detail_surat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `petugas` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inletters`
--

INSERT INTO `inletters` (`id`, `no_surat`, `klasifikasi`, `asal`, `perihal`, `tujuan`, `detail_surat`, `petugas`, `filename`, `created_at`, `updated_at`, `user_id`, `date`) VALUES
(1, 'B/001/UND/TU/DINP/DNP/X/2018', 'Biasa', 'Dinasi Pendidikan', 'Undangan', 2, 'ini merupakan surat undangan pada acara Ulang tahun dinas pendidikan ke-70 pada tanggal 20 Oktober 2018 pukul 08.00-12.00 bertempat di swiss bell', 'nofita', NULL, '2018-10-14 00:33:06', '2018-10-20 22:25:49', 3, '2018-10-14'),
(3, 'C/90/FST/UNJA/X/2018', 'Penting', 'Unja', 'Rapat', 2, 'rapat pada tanggal 20 Oktober 2018 di FST Unja', 'Muhammad', '', '2018-10-14 09:41:48', '2018-10-19 23:30:51', 3, '2018-10-14'),
(7, 'A/007/HMJ/PMIPA/X/2018', 'Umum', 'Pendidikan Fisika - Unja', 'Undangan Sebagai Tamu', 3, 'undangan sebagai tamu di acara ulang tahun HMJ PMIP yang ke-14 di balairung pukul 09.00-13.00 pad tanggal 30 oktober 2018 dresscode bebas', 'Nofita', '', '2018-10-19 23:01:48', '2018-10-19 23:26:58', 3, NULL),
(8, 'B/009/NF/X/2018', 'Penting', 'PT. NF Sejati', 'Permintaan Data', 3, 'permintaan data mengenai data statistik kemiskinan 2008-2018', 'Muhammad', '', '2018-10-19 23:10:28', '2018-10-19 23:25:41', 3, NULL),
(9, 'A/90/XX/CC/X/2018', 'Dinas', 'Dinas Lingkungan Hidup', 'Permintaan Data', 3, 'permintaan data lingkungan kotor tahun 2009-2018', 'Janni', '', '2018-10-19 23:12:34', '2018-10-19 23:22:52', 3, NULL),
(10, 'A/002/PT/NF/X/2018', 'Penting', 'PT. Sejahtera', 'Penyuluhan', 3, 'penyuluhan tentang kesejahteraan pegawai', 'Muhammad', '3_145610048_BAB_II_1540453749.pdf', '2018-10-19 23:15:35', '2018-10-25 00:49:09', 3, NULL),
(11, '11/11/11/2018', 'Penting', 'Kementrian Hukum dan Ham', 'undangan rapat', 3, 'rapat acara hukum', NULL, NULL, '2018-10-25 15:25:48', '2018-10-25 15:25:48', 1, NULL),
(12, '01/2/X/2018', 'Umum', 'Kemenketrans', 'Permohonan', 3, 'permohonan untuk tidak mempublikasikan data', NULL, NULL, '2018-10-25 15:27:20', '2018-10-25 15:27:20', 1, NULL),
(13, 'sfsdfdsfsd', 'Penting', 'ssdfds', 'sfsdf', 3, 'sfsdfdsf', NULL, NULL, '2018-10-25 19:52:45', '2018-10-25 19:52:45', 1, NULL),
(14, 'fsdf', 'Penting', 'sdf', 'sdf', 1, 'sdf', NULL, NULL, '2018-10-26 20:19:13', '2018-10-26 20:19:13', 1, NULL),
(15, 'test', 'Penting', 'fsdf', 'sdf', 2, 'cra', NULL, NULL, '2018-10-30 06:42:31', '2018-10-30 06:42:31', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2018_10_13_133139_create_suratmasuks_table', 1),
(4, '2018_10_13_133421_create_suratkeluars_table', 1),
(5, '2018_10_13_133445_create_disposisis_table', 1),
(6, '2014_10_12_000000_create_users_table', 2),
(7, '2014_10_12_100000_create_password_resets_table', 2),
(8, '2018_10_13_235413_create_inletters_table', 2),
(9, '2018_10_13_235544_create_outletters_table', 2),
(10, '2018_10_13_235622_create_disposisis_table', 2),
(11, '2018_10_16_044100_add_user_id_to_inletters', 3),
(12, '2018_10_16_044312_add_inletter_id_to_disposisis', 3),
(13, '2018_10_16_044441_add_user_id_to_outletters', 3),
(14, '2018_10_16_124749_add_date_to_inletters', 4),
(15, '2018_10_16_125028_add_date_to_outletters', 4),
(16, '2018_10_16_134600_add_user_id_to_disposisis', 5);

-- --------------------------------------------------------

--
-- Table structure for table `outletters`
--

CREATE TABLE `outletters` (
  `id` int(10) UNSIGNED NOT NULL,
  `no_surat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `klasifikasi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal` int(10) NOT NULL,
  `perihal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tujuan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_surat` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `petugas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `outletters`
--

INSERT INTO `outletters` (`id`, `no_surat`, `klasifikasi`, `asal`, `perihal`, `tujuan`, `detail_surat`, `petugas`, `filename`, `created_at`, `updated_at`, `user_id`, `date`) VALUES
(1, 'B/002/BPS/X/2018', 'biasa edited again', 2, 'Permintaan Data', 'Kominfo', 'surat ini ditujukan untuk memperoleh permintaan data DDA 2018', 'Aan', NULL, '2018-10-14 19:13:35', '2018-10-19 05:34:09', 3, '2018-10-15'),
(3, 'keluar edit', 'Penting', 2, 'sdf', 'Kepala', 'sdf', 'sdf', 'httpd-vhosts_1539953094.conf', '2018-10-19 05:39:54', '2018-10-19 05:45:12', 2, '2018-10-19'),
(4, 'outout ed', 'Penting', 3, 'sdf', 'Kepala', 'sdf', 'sdf', 'Screen Shot 2018-09-16 at 10.16.53 AM_1539966411.png', '2018-10-19 09:24:20', '2018-10-19 09:26:51', 1, '2018-10-19'),
(7, 'a', 'Penting', 3, 'a', 'a', 'a', 'a', '_1540022849.gitignore', '2018-10-20 01:07:08', '2018-10-20 01:07:29', 3, NULL),
(8, 'B/001/KEU/BPS/X/2018', 'Dinas', 3, 'Kebutuhan data', 'Dinas Lingkungan Hidup', 'kebutuhan data yang anda minta akan kami kirim di link berikut https://bit.ly/statistik.com', 'Zaelani', NULL, '2018-10-20 23:03:49', '2018-10-20 23:03:49', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tujuan_disposisi`
--

CREATE TABLE `tujuan_disposisi` (
  `id` int(11) NOT NULL,
  `disposisi_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tujuan_disposisi`
--

INSERT INTO `tujuan_disposisi` (`id`, `disposisi_id`, `user_id`) VALUES
(25, 52, 9),
(26, 52, 11),
(27, 52, 14),
(28, 52, 15),
(29, 53, 9);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@bps.go.id', '$2y$10$aDPQM7rq.UJTQo./zwXxseS/9qgRHDHaWTFV9dBHcHHTEn3I3qCvS', 1, 'A6e1eo8ZLBs7ojcWZo1rbdACE9KajCZF1XtKGHM1KxcQ9A9rLpL2mNGBp3My', '2018-10-15 20:57:16', '2018-10-15 20:57:16'),
(2, 'Kepala BPS', 'pimpinan@bps.go.id', '$2y$10$aDPQM7rq.UJTQo./zwXxseS/9qgRHDHaWTFV9dBHcHHTEn3I3qCvS', 2, '5p53iFmtyPTwtSeh33UXdC9SVO0r6V9sCtyG5h8ag3PAYMKxMvLWzA3o85zu', '2018-10-14 20:44:48', '2018-10-19 20:31:13'),
(3, 'Kasubag. TU', 'tu@bps.go.id', '$2y$10$aDPQM7rq.UJTQo./zwXxseS/9qgRHDHaWTFV9dBHcHHTEn3I3qCvS', 3, '0CZqe41ugVmetA6xsqNatNCCib16nRDOTypX1KuC06Pgfz8rlnJNg5pGT8Ud', '2018-10-15 06:08:08', '2018-10-19 21:15:50'),
(9, 'Bidang Statistik Distribusi', 'distribusi@bps.go.id', '$2y$10$aDPQM7rq.UJTQo./zwXxseS/9qgRHDHaWTFV9dBHcHHTEn3I3qCvS', 4, 'KOJ1WOqxZubfpkBRMjOBgWUdwyYzu2xW45rs5jvrvbcOyPMtt20ItEKNJfXm', '2018-10-19 21:20:28', '2018-10-27 08:54:00'),
(10, 'Bagian Tata Usaha', 'tatausaha@bps.go.id', '$2y$10$aDPQM7rq.UJTQo./zwXxseS/9qgRHDHaWTFV9dBHcHHTEn3I3qCvS', 3, 'jbZhFMW0ICg9xZ92ziQWKriWNpStuNiuG5kz7ECekCaIF1Qm0v4RWD8sCFET', '2018-10-27 08:52:00', '2018-10-27 08:55:25'),
(11, 'Bidang Statistik Sosial', 'sosial@bps.go.id', '$2y$10$aDPQM7rq.UJTQo./zwXxseS/9qgRHDHaWTFV9dBHcHHTEn3I3qCvS', 4, NULL, '2018-10-27 08:53:34', '2018-10-27 08:53:34'),
(12, 'Bidang Statistik Produksi', 'produksi@bps.go.id', '$2y$10$aDPQM7rq.UJTQo./zwXxseS/9qgRHDHaWTFV9dBHcHHTEn3I3qCvS', 4, NULL, '2018-10-27 08:56:04', '2018-10-27 08:56:04'),
(14, 'Bidang Integrasi Pengolahan dan Diseminasi Statistik', 'ipds@bps.go.id', '$2y$10$aDPQM7rq.UJTQo./zwXxseS/9qgRHDHaWTFV9dBHcHHTEn3I3qCvS', 4, 'DNdGyuLqJO25Q9hTC4j052tmdi4HzodG6hBPam4SXBolvR96XMCEBqIDYRNw', '2018-10-27 08:57:30', '2018-10-27 08:57:30'),
(15, 'Bidang Neraca Wilayah dan Analisis Statistik', 'nerwilis@bps.go.id', '$2y$10$aDPQM7rq.UJTQo./zwXxseS/9qgRHDHaWTFV9dBHcHHTEn3I3qCvS', 4, NULL, '2018-10-27 08:56:51', '2018-10-27 08:56:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disposisis`
--
ALTER TABLE `disposisis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inletters`
--
ALTER TABLE `inletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outletters`
--
ALTER TABLE `outletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tujuan_disposisi`
--
ALTER TABLE `tujuan_disposisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `disposisis`
--
ALTER TABLE `disposisis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `inletters`
--
ALTER TABLE `inletters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `outletters`
--
ALTER TABLE `outletters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tujuan_disposisi`
--
ALTER TABLE `tujuan_disposisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
