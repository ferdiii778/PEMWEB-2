-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2024 at 05:40 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatifs`
--

CREATE TABLE `alternatifs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(5) NOT NULL,
  `name` varchar(60) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alternatifs`
--

INSERT INTO `alternatifs` (`id`, `user_id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(3, 1, 'A1', 'Jaket Hawai', '2024-06-01 06:24:14', '2024-07-04 09:53:55'),
(4, 1, 'A2', 'Jaket Indonesian', '2024-06-01 06:25:28', '2024-07-04 09:54:06'),
(5, 1, 'A3', 'Jaket American', '2024-06-01 06:25:54', '2024-07-04 09:54:23'),
(6, 1, 'A4', 'Jaket Viking', '2024-07-04 09:55:37', '2024-07-04 09:55:37'),
(7, 1, 'A5', 'Jaket Malay', '2024-07-04 09:55:53', '2024-07-04 09:55:53'),
(8, 3, 'C01', 'Kualitas Bahan', '2024-07-06 12:35:06', '2024-07-06 12:35:06');

-- --------------------------------------------------------

--
-- Table structure for table `alternatif_criterias`
--

CREATE TABLE `alternatif_criterias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `alternatif_id` bigint(20) UNSIGNED NOT NULL,
  `harga` varchar(255) NOT NULL DEFAULT '0',
  `kualitas_bahan` varchar(255) NOT NULL DEFAULT '0',
  `desain_pakaian` varchar(255) NOT NULL DEFAULT '0',
  `kenyamanan` varchar(255) NOT NULL DEFAULT '0',
  `ketersediaan_ukuran` varchar(255) NOT NULL DEFAULT '0',
  `durabilitas` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alternatif_criterias`
--

INSERT INTO `alternatif_criterias` (`id`, `user_id`, `alternatif_id`, `harga`, `kualitas_bahan`, `desain_pakaian`, `kenyamanan`, `ketersediaan_ukuran`, `durabilitas`) VALUES
(1, 1, 3, '5', '4', '5', '4', '3', '5'),
(2, 1, 4, '4', '4', '4', '3', '5', '3'),
(3, 1, 5, '3', '5', '5', '3', '2', '4'),
(4, 1, 6, '2', '5', '5', '4', '2', '4'),
(5, 1, 7, '1', '5', '5', '4', '1', '5'),
(6, 3, 8, '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `criterias`
--

CREATE TABLE `criterias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(5) NOT NULL,
  `name` varchar(60) NOT NULL,
  `attribute` enum('Cost','Benefit') NOT NULL,
  `weight` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `criterias`
--

INSERT INTO `criterias` (`id`, `user_id`, `code`, `name`, `attribute`, `weight`, `created_at`, `updated_at`) VALUES
(1, 1, 'C1', 'Harga', 'Cost', 5, '2024-06-01 06:26:42', '2024-07-04 09:56:50'),
(2, 1, 'C2', 'Kualitas Bahan', 'Benefit', 5, '2024-06-01 06:31:50', '2024-07-04 09:58:28'),
(3, 1, 'C3', 'Desain Pakaian', 'Benefit', 4, '2024-06-01 06:32:16', '2024-07-04 09:58:50'),
(4, 1, 'C4', 'Kenyamanan', 'Benefit', 5, '2024-06-01 06:33:04', '2024-07-04 09:59:13'),
(5, 1, 'C5', 'Ketersediaan Ukuran', 'Benefit', 4, '2024-06-01 06:33:31', '2024-07-04 09:59:38'),
(8, 1, 'C6', 'Durabilitas', 'Benefit', 5, '2024-07-04 10:00:09', '2024-07-04 10:00:09');

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
(5, '2023_07_11_114514_create_alternatifs_table', 1),
(6, '2023_07_12_002307_create_criterias_table', 1),
(7, '2023_07_12_023908_create_alternatif_criterias_table', 1),
(8, '2023_07_19_043357_create_sub_criterias_table', 1),
(9, '2024_07_06_060838_add_google_id_column', 2),
(10, '2024_07_06_174117_add_google_id_column', 3),
(11, '2024_07_06_193008_add_remember_token_to_users_table', 4);

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
-- Table structure for table `sub_criterias`
--

CREATE TABLE `sub_criterias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `criteria_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_criterias`
--

INSERT INTO `sub_criterias` (`id`, `user_id`, `criteria_id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(13, 1, 1, '75.000 - 100.000 (Sangat Murah)', 5, '2024-07-04 10:19:31', '2024-07-04 10:19:31'),
(14, 1, 1, '100.000 - 150.000 (Murah)', 4, '2024-07-04 10:19:59', '2024-07-04 10:19:59'),
(15, 1, 1, '150.000 - 200.000 (Cukup Murah)', 3, '2024-07-04 10:27:11', '2024-07-04 10:27:11'),
(16, 1, 1, '200.000 - 250.000 (Mahal)', 2, '2024-07-04 10:28:32', '2024-07-04 10:28:32'),
(17, 1, 1, '250.000 - 300.000 (Sangat Mahal)', 1, '2024-07-04 10:28:56', '2024-07-04 10:28:56'),
(18, 1, 2, 'Sangat Bagus', 5, '2024-07-04 10:29:23', '2024-07-04 10:29:23'),
(19, 1, 2, 'Bagus', 4, '2024-07-04 10:31:02', '2024-07-04 10:31:02'),
(20, 1, 2, 'Cukup Bagus', 3, '2024-07-04 10:31:14', '2024-07-04 10:31:14'),
(21, 1, 2, 'Tidak Bagus', 2, '2024-07-04 10:31:33', '2024-07-04 10:31:33'),
(22, 1, 2, 'Sangat Tidak Bagus', 1, '2024-07-04 10:31:46', '2024-07-04 10:31:46'),
(23, 1, 3, 'Sangat Tren', 5, '2024-07-04 10:32:06', '2024-07-04 10:32:06'),
(24, 1, 3, 'Tren', 4, '2024-07-04 10:32:23', '2024-07-04 10:32:23'),
(25, 1, 3, 'Cukup Tren', 3, '2024-07-04 10:32:37', '2024-07-04 10:32:37'),
(26, 1, 3, 'Tidak Tren', 2, '2024-07-04 10:32:50', '2024-07-04 10:32:50'),
(27, 1, 3, 'Sangat Tidak Tren', 1, '2024-07-04 10:33:00', '2024-07-04 10:33:00'),
(28, 1, 4, 'Sangat Nyaman', 5, '2024-07-04 10:33:17', '2024-07-04 10:33:17'),
(29, 1, 4, 'Nyaman', 4, '2024-07-04 10:33:30', '2024-07-04 10:33:30'),
(30, 1, 4, 'Cukup Nyaman', 3, '2024-07-04 10:33:40', '2024-07-04 10:33:40'),
(31, 1, 4, 'Tidak Nyaman', 2, '2024-07-04 10:33:52', '2024-07-04 10:33:52'),
(32, 1, 4, 'Sangat Tidak Nyaman', 1, '2024-07-04 10:34:09', '2024-07-04 10:34:09'),
(33, 1, 5, 'Sangat Banyak', 5, '2024-07-04 10:34:26', '2024-07-04 10:34:26'),
(34, 1, 5, 'Banyak', 4, '2024-07-04 10:34:37', '2024-07-04 10:34:37'),
(35, 1, 5, 'Cukup', 3, '2024-07-04 10:34:51', '2024-07-04 10:35:24'),
(36, 1, 5, 'Sedikit', 2, '2024-07-04 10:35:11', '2024-07-04 10:35:11'),
(37, 1, 5, 'Sangat Sedikit', 1, '2024-07-04 10:35:40', '2024-07-04 10:35:40'),
(38, 1, 8, 'Sangat Awet', 5, '2024-07-04 10:36:07', '2024-07-04 10:37:48'),
(39, 1, 8, 'Awet', 4, '2024-07-04 10:36:17', '2024-07-04 10:37:40'),
(40, 1, 8, 'Cukup Awet', 3, '2024-07-04 10:36:49', '2024-07-04 10:37:31'),
(41, 1, 8, 'Tidak Awet', 2, '2024-07-04 10:37:10', '2024-07-04 10:37:10'),
(42, 1, 8, 'Sangat Tidak Awet', 1, '2024-07-04 10:37:23', '2024-07-04 10:37:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`, `updated_at`, `google_id`, `email`, `name`, `remember_token`) VALUES
(1, 'admin', '$2y$10$sXNXZXsMsuYmbHK4xJEDBuNL.WIB7G973R9epG6RDIims5eRT17gq', NULL, NULL, NULL, '', '', NULL),
(3, NULL, '$2y$10$UeeAlYBSOFZu3uIHnOjSOu9ZwcfCMuTyZmqG6FWKrMq6uasTt286O', '2024-07-06 12:12:13', '2024-07-06 12:12:13', '113987700416925901929', 'ferdid047@gmail.com', 'Mohammad Ferdi', 'wV7FDXNvPFMt87hzIbZum2StFbIrhCANyJw9RN6e0WPf6Nou2KmJKEfLIysH');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatifs`
--
ALTER TABLE `alternatifs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alternatifs_code_unique` (`code`),
  ADD UNIQUE KEY `alternatifs_name_unique` (`name`),
  ADD KEY `alternatifs_user_id_foreign` (`user_id`);

--
-- Indexes for table `alternatif_criterias`
--
ALTER TABLE `alternatif_criterias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alternatif_criterias_user_id_foreign` (`user_id`),
  ADD KEY `alternatif_criterias_alternatif_id_foreign` (`alternatif_id`);

--
-- Indexes for table `criterias`
--
ALTER TABLE `criterias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `criterias_code_unique` (`code`),
  ADD UNIQUE KEY `criterias_name_unique` (`name`),
  ADD KEY `criterias_user_id_foreign` (`user_id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sub_criterias`
--
ALTER TABLE `sub_criterias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_criterias_user_id_foreign` (`user_id`),
  ADD KEY `sub_criterias_criteria_id_foreign` (`criteria_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternatifs`
--
ALTER TABLE `alternatifs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `alternatif_criterias`
--
ALTER TABLE `alternatif_criterias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `criterias`
--
ALTER TABLE `criterias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_criterias`
--
ALTER TABLE `sub_criterias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alternatifs`
--
ALTER TABLE `alternatifs`
  ADD CONSTRAINT `alternatifs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `alternatif_criterias`
--
ALTER TABLE `alternatif_criterias`
  ADD CONSTRAINT `alternatif_criterias_alternatif_id_foreign` FOREIGN KEY (`alternatif_id`) REFERENCES `alternatifs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `alternatif_criterias_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `criterias`
--
ALTER TABLE `criterias`
  ADD CONSTRAINT `criterias_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sub_criterias`
--
ALTER TABLE `sub_criterias`
  ADD CONSTRAINT `sub_criterias_criteria_id_foreign` FOREIGN KEY (`criteria_id`) REFERENCES `criterias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sub_criterias_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
