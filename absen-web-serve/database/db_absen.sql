-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2022 at 09:32 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_absen`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` int(10) NOT NULL,
  `nama_dosen` varchar(100) NOT NULL,
  `nidn` char(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `nama_dosen`, `nidn`, `created_at`, `updated_at`) VALUES
(1, 'PT.BCA', '113', '2022-05-20 20:33:49', '2022-05-20 20:33:49'),
(2, 'PT.ABC', '123', '2022-05-20 20:33:49', '2022-05-20 20:33:49'),
(3, 'PT.PBAS', '114', '2022-05-20 20:34:13', '2022-05-20 20:34:13'),
(4, 'PT.PERMATA', '115', '2022-05-20 20:34:13', '2022-05-20 20:34:13'),
(5, 'PT.TELKOM', '221', '2022-05-20 20:50:11', '2022-05-20 20:50:11');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenkel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dosen_id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `jenkel`, `alamat`, `hp`, `jurusan`, `email`, `dosen_id`, `created_at`, `updated_at`) VALUES
(23, 'Nasruddin', 'laki', 'Aceh Utara', '082267429797', 'FullStack Develeper', 'nasruddin@gmail.com', '1', '2022-05-22 19:23:44', '2022-05-22 19:23:44'),
(24, 'M.Habib', 'laki', 'Medan', '082276784542', 'Data Analis', 'mhabib@gmail.com', '4', '2022-05-22 19:24:46', '2022-05-22 19:24:46'),
(25, 'Arif Maulana', 'laki', 'Sawang', '082260708765', 'Web Developer', 'arif@gmail.com', '2', '2022-05-22 19:25:28', '2022-05-22 19:25:28'),
(26, 'Nana', 'perempuan', 'Dunia IT', '0821561086211', 'SSoftwere Developer', 'nana@gmail.com', '3', '2022-05-22 19:26:25', '2022-05-22 19:26:25'),
(27, 'nanas', 'perempuan', 'dunia', '081338088080', 'Administrasi', 'nanas@gmail.com', '5', '2022-05-22 19:27:07', '2022-05-22 19:27:07'),
(28, 'nama', 'perempuan', 'aceh', '0822681712', 'Web Developer', 'nama@gmail.com', '1', '2022-05-22 20:59:08', '2022-05-22 20:59:08');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa_matkul`
--

CREATE TABLE `mahasiswa_matkul` (
  `id` int(10) UNSIGNED NOT NULL,
  `mahasiswa_id` int(10) UNSIGNED NOT NULL,
  `matkul_id` int(3) UNSIGNED NOT NULL,
  `nilai` char(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa_matkul`
--

INSERT INTO `mahasiswa_matkul` (`id`, `mahasiswa_id`, `matkul_id`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '90', '2022-05-20 17:35:09', '2022-05-20 17:35:09'),
(2, 2, 2, '80', '2022-05-20 17:35:09', '2022-05-20 17:35:09'),
(3, 2, 2, '85', '2022-05-20 17:54:03', '2022-05-20 17:54:03');

-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

CREATE TABLE `matkul` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_matkul` varchar(50) NOT NULL,
  `nama_matkul` varchar(50) NOT NULL,
  `semester` int(3) NOT NULL,
  `dosen` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_et` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matkul` (`id`, `kode_matkul`, `nama_matkul`, `semester`, `dosen`, `created_at`, `updated_et`) VALUES
(1, 'P1001', 'WEB II', 4, 'kontans', '2022-05-20 17:32:53', '2022-05-20 17:32:53'),
(2, 'P1002', 'MOBILE II', 5, 'Ananda', '2022-05-20 17:32:53', '2022-05-20 17:32:53'),
(3, 'P1003', 'Analys System', 5, 'nasruddin', '2022-05-20 17:53:01', '2022-05-20 17:53:01');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_20_123909_create_mahasiswas_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'nasruddin', 'nasruddin20182019@gmail.com', NULL, '$2y$10$WHrizYE5zQ.ogT17E3WOfuZjtdKrYTR18iYJTnNfnxlIvL4cg4o2a', NULL, '2022-05-21 04:11:50', '2022-05-21 04:11:50'),
(7, 'nasruddin', 'nasruddin@gmail.com', NULL, '$2y$10$8xZCBtxrfsR0zJsvdiA1yOtD2uQrnJjgcIJu5E/n0fEnBWYhzckGy', NULL, '2022-05-21 04:15:21', '2022-05-21 04:15:21'),
(8, 'arif', 'arif7@gmail.com', NULL, '$2y$10$9rEKEM/m145yM9HOegHhce4cZOn79y2ae54AvWe7Y52yazeshCYcC', NULL, '2022-05-22 20:02:04', '2022-05-22 20:02:04'),
(9, 'nasruddin', 'nasrul@gmail.com', NULL, '$2y$10$jF0Lp8oTjIUxMCC/p9z4fuP163miurO19PeEi0VEdUB5d/luXcfZy', NULL, '2022-07-11 22:09:56', '2022-07-11 22:09:56'),
(10, 'test reah api', 'reshapi@gmail.com', NULL, '$2y$10$sUa/Qqd0AzHz17A6ubaG/OfJlReOmlh2A4Yv.a7ZBvvUhf.lXLabm', NULL, '2022-07-11 22:12:32', '2022-07-11 22:12:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa_matkul`
--
ALTER TABLE `mahasiswa_matkul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `mahasiswa_matkul`
--
ALTER TABLE `mahasiswa_matkul`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `matkul`
--
ALTER TABLE `matkul`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
