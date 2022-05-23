-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 23, 2022 at 01:04 PM
-- Server version: 5.7.38-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multiAuth_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `is_doctor` tinyint(1) DEFAULT NULL,
  `is_nurse` tinyint(1) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `is_admin`, `is_doctor`, `is_nurse`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@codeinit.com', NULL, 1, 0, 0, '$2y$10$xDhCjlVE.Y1lev2Q4UBKQuRD4nlOjnAZr5u.C6xLS74mEWUVkCIga', NULL, '2022-05-23 01:02:52', '2022-05-23 01:02:52'),
(2, 'User', 'user@codeinit.com', NULL, 0, 0, 0, '$2y$10$cCxntwYsJo/aF.JcN22dr.YkF4yXFNlNZiBPPuOu4Z/hK.95UneAy', NULL, '2022-05-23 01:02:52', '2022-05-23 01:02:52'),
(3, 'doctor', 'doctor@codeinit.com', NULL, 0, 1, 0, '$2y$10$SaOkP18Ty0uKKKANGJBwRewxRPASyEMihwW9XDwpyUYXDAlF2cj3e', NULL, '2022-05-23 01:22:42', '2022-05-23 01:22:42'),
(4, 'nurse', 'nurse@codeinit.com', NULL, 0, 0, 1, '$2y$10$mQXqecFVm9prXqnI6poCa.JLMCImr84a1C6kKUBFilZU6sRxacpEC', NULL, '2022-05-23 01:23:14', '2022-05-23 01:23:14'),
(5, 'doc1', 'doc1@codeinit.com', NULL, 0, NULL, NULL, '$2y$10$dEgVR2JPd.9ab5dje0oXhu1TpmSnX5Eah7rJFsOkHdSdtfjK3xc8m', NULL, '2022-05-23 01:42:09', '2022-05-23 01:42:09'),
(6, 'nurse1', 'nurse1@codeinit.com', NULL, 0, NULL, NULL, '$2y$10$lzGKxgUcJ1lOQtLbpgM3tOUC/P/YGfTqY31Wd888CsmbzQGIGLaay', NULL, '2022-05-23 01:44:17', '2022-05-23 01:44:17'),
(7, 'doc2', 'doc2@codeinit.com', NULL, 0, NULL, NULL, '$2y$10$f5aoOgSW7WZAnv2wXhx1XOseVhz6ROd0K1zX7p0P9XDs/0maSTxu.', NULL, '2022-05-23 01:47:48', '2022-05-23 01:47:48'),
(8, 'nurse2', 'nurse2@codeinit.com', NULL, 0, 0, 1, '$2y$10$C.2uPFDwJ5ofdttwHbq4/.iU4PejvN1tEA6myIWuZu5/9H9n97OIa', NULL, '2022-05-23 01:48:55', '2022-05-23 01:48:55'),
(9, 'doc3', 'doc3@codeinit.com', NULL, 0, 1, 0, '$2y$10$aTLEMfhmGClZBUYC3qpVju/uFnJDo6LZM4lhW/rzohGdcYsTXrhH6', NULL, '2022-05-23 01:52:20', '2022-05-23 01:52:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
