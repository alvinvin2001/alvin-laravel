-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2024 at 08:38 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alvin_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`id`, `kode`, `nama`, `kategori`, `harga`, `created_at`, `updated_at`) VALUES
(1, 'BRG_1', 'PEN', 'ATK', '15.000', '2024-05-30 05:09:32', '2024-05-30 05:09:32'),
(2, 'BRG_2', 'PENSIL', 'ATK', '10.000', '2024-05-30 05:10:24', '2024-05-30 05:10:24'),
(3, 'BRG_3', 'PAYUNG', 'RT', '70.000', '2024-05-30 05:10:44', '2024-05-30 05:10:44'),
(4, 'BRG_4', 'PANCI', 'MASAK', '110.000', '2024-05-30 05:10:58', '2024-05-30 05:10:58'),
(5, 'BRG_5', 'SAPU', 'RT', '40.000', '2024-05-30 05:11:27', '2024-05-30 05:11:27'),
(6, 'BRG_6', 'KIPAS', 'ELEKTRONIK', '200.000', '2024-05-30 05:11:41', '2024-05-30 05:11:41'),
(7, 'BRG_7', 'KUALI', 'MASAK', '120.000', '2024-05-30 05:11:52', '2024-05-30 05:11:52'),
(8, 'BRG_8', 'SIKAT', 'RT', '30.000', '2024-05-30 05:12:10', '2024-05-30 05:12:10'),
(9, 'BRG_9', 'GELAS', 'RT', '25.000', '2024-05-30 05:12:24', '2024-05-30 05:12:24'),
(10, 'BRG_10', 'PIRING', 'RT', '35.000', '2024-05-30 05:12:38', '2024-05-30 05:12:38');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
(5, '2024_05_30_084731_create_pelanggans_table', 1),
(6, '2024_05_30_112629_create_barangs_table', 1),
(7, '2024_05_30_112819_create_penjualans_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggans`
--

CREATE TABLE `pelanggans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pelanggan` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `domisili` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pelanggans`
--

INSERT INTO `pelanggans` (`id`, `id_pelanggan`, `nama`, `domisili`, `jenis_kelamin`, `created_at`, `updated_at`) VALUES
(1, 'PELANGAN_1', 'ANDI', 'JAK-UT', 'PRIA', '2024-05-30 05:01:23', '2024-05-30 05:06:53'),
(2, 'PELANGAN_2', 'BUDI', 'JAK-BAR', 'PRIA', '2024-05-30 05:02:20', '2024-05-30 05:07:19'),
(3, 'PELANGAN_3', 'JOHAN', 'JAK-SEL', 'PRIA', '2024-05-30 05:03:14', '2024-05-30 05:03:14'),
(4, 'PELANGAN_4', 'SINTHA', 'JAK-TIM', 'WANITA', '2024-05-30 05:04:11', '2024-05-30 05:04:11'),
(5, 'PELANGAN_5', 'ANTO', 'JAK-UT', 'PRIA', '2024-05-30 05:04:28', '2024-05-30 05:04:28'),
(6, 'PELANGAN_6', 'BUJANG', 'JAK-BAR', 'PRIA', '2024-05-30 05:04:43', '2024-05-30 05:04:43'),
(7, 'PELANGAN_7', 'JOWAN', 'JAK-SEL', 'PRIA', '2024-05-30 05:04:58', '2024-05-30 05:04:58'),
(8, 'PELANGAN_8', 'SINTIA', 'JAK-TIM', 'WANITA', '2024-05-30 05:05:13', '2024-05-30 05:05:13'),
(9, 'PELANGAN_9', 'BUTET', 'JAK-BAR', 'WANITA', '2024-05-30 05:05:28', '2024-05-30 05:05:28'),
(10, 'PELANGAN_10', 'JONNY', 'JAK-SEL', 'WANITA', '2024-05-30 05:05:43', '2024-05-30 05:05:43');

-- --------------------------------------------------------

--
-- Table structure for table `penjualans`
--

CREATE TABLE `penjualans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_nota` varchar(255) NOT NULL,
  `tgl` varchar(255) NOT NULL,
  `kode_pelanggan` varchar(255) NOT NULL,
  `subtotal` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penjualans`
--

INSERT INTO `penjualans` (`id`, `id_nota`, `tgl`, `kode_pelanggan`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 'NOTA_1', '01/01/18', 'PELANGAN_1', '50.000', '2024-05-30 05:24:51', '2024-05-30 05:24:51'),
(2, 'NOTA_2', '01/01/18', 'PELANGAN_2', '200.000', '2024-05-30 05:25:10', '2024-05-30 05:25:10'),
(3, 'NOTA_3', '01/01/18', 'PELANGAN_3', '430.000', '2024-05-30 05:25:24', '2024-05-30 05:25:24'),
(4, 'NOTA_4', '02/01/18', 'PELANGAN_7', '120.000', '2024-05-30 05:25:35', '2024-05-30 05:25:35'),
(5, 'NOTA_5', '02/01/18', 'PELANGAN_4', '70.000', '2024-05-30 05:25:47', '2024-05-30 05:25:47'),
(6, 'NOTA_6', '03/01/18', 'PELANGAN_8', '230.000', '2024-05-30 05:26:01', '2024-05-30 05:26:01'),
(7, 'NOTA_7', '03/01/18', 'PELANGAN_9', '390.000', '2024-05-30 05:26:13', '2024-05-30 05:26:13'),
(8, 'NOTA_8', '03/01/18', 'PELANGAN_5', '65.000', '2024-05-30 05:26:24', '2024-05-30 05:26:24'),
(9, 'NOTA_9', '04/01/18', 'PELANGAN_2', '40.000', '2024-05-30 05:26:34', '2024-05-30 05:26:34');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pelanggans`
--
ALTER TABLE `pelanggans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penjualans`
--
ALTER TABLE `penjualans`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pelanggans`
--
ALTER TABLE `pelanggans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `penjualans`
--
ALTER TABLE `penjualans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
