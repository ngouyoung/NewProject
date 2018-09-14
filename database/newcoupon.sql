-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2018 at 07:16 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newcoupon`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Food & Drink', 'food-and-drink', 'qwe', '2018-09-12 22:22:23', '2018-09-12 22:22:23'),
(3, 'Book', 'foot-and-drink', 'qwe', '2018-09-12 22:24:23', '2018-09-13 21:58:18'),
(4, 'T-Shirt', 'shirt', 'qwe', '2018-09-12 22:39:36', '2018-09-12 22:39:36');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_05_12_050353_create_permission_tables', 1),
(4, '2018_05_12_050406_create_products_table', 1),
(5, '2018_09_13_030516_create_categories_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\User', 207),
(4, 'App\\User', 208);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2018-09-07 00:38:01', '2018-09-07 00:38:01'),
(2, 'role-create', 'web', '2018-09-07 00:38:01', '2018-09-07 00:38:01'),
(3, 'role-edit', 'web', '2018-09-07 00:38:01', '2018-09-07 00:38:01'),
(4, 'role-delete', 'web', '2018-09-07 00:38:01', '2018-09-07 00:38:01'),
(5, 'product-list', 'web', '2018-09-07 00:38:01', '2018-09-07 00:38:01'),
(6, 'product-create', 'web', '2018-09-07 00:38:01', '2018-09-07 00:38:01'),
(7, 'product-edit', 'web', '2018-09-07 00:38:01', '2018-09-07 00:38:01'),
(8, 'product-delete', 'web', '2018-09-07 00:38:01', '2018-09-07 00:38:01'),
(9, 'user-list', 'web', '2018-09-07 00:38:01', '2018-09-07 00:38:01'),
(10, 'user-create', 'web', '2018-09-07 00:38:01', '2018-09-07 00:38:01'),
(11, 'user-edit', 'web', '2018-09-07 00:38:01', '2018-09-07 00:38:01'),
(12, 'user-delete', 'web', '2018-09-07 00:38:01', '2018-09-07 00:38:01');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'Administrator', 'web', '2018-09-11 19:43:35', '2018-09-11 19:43:35'),
(3, 'Editor', 'web', '2018-09-11 19:50:09', '2018-09-13 00:09:16'),
(4, 'super-admin', 'web', '2018-09-11 20:07:21', '2018-09-11 20:07:21');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(5, 2),
(5, 3),
(5, 4),
(6, 2),
(6, 4),
(7, 2),
(7, 3),
(7, 4),
(8, 2),
(8, 4),
(9, 2),
(9, 3),
(9, 4),
(10, 2),
(10, 4),
(11, 2),
(11, 4),
(12, 2),
(12, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(107, 'Prof. Kyle Bauch', 'levi.adams@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '4SSHKL2uOa', '2018-09-12 01:23:23', '2018-09-12 01:23:23'),
(108, 'Rahul Padberg', 'isac.fritsch@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ZCfiuCM954', '2018-09-12 01:23:23', '2018-09-12 01:23:23'),
(109, 'Ms. Adah Bosco', 'vonrueden.davon@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'MpXdRVi2FB', '2018-09-12 01:23:23', '2018-09-12 01:23:23'),
(110, 'Mr. Misael Franecki I', 'qbatz@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '44MPcuYA33', '2018-09-12 01:23:23', '2018-09-12 01:23:23'),
(112, 'Porter Hettinger', 'ila88@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'yrICYQuvxv', '2018-09-12 01:23:23', '2018-09-12 01:23:23'),
(114, 'Prof. Martine Frami II', 'ifriesen@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'rB247mIGnv', '2018-09-12 01:23:23', '2018-09-12 01:23:23'),
(115, 'Jaquelin Rogahn', 'marisol53@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'tOiOgTBXht', '2018-09-12 01:23:23', '2018-09-12 01:23:23'),
(116, 'Paula Terry MD', 'cfarrell@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'nutGll4G8B', '2018-09-12 01:23:23', '2018-09-12 01:23:23'),
(117, 'Kelvin Schmidt', 'ayana.mclaughlin@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'znlpde0MmA', '2018-09-12 01:23:23', '2018-09-12 01:23:23'),
(118, 'Percy Rogahn', 'talon32@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Rv681Bhvdg', '2018-09-12 01:23:23', '2018-09-12 01:23:23'),
(119, 'Richmond Smitham', 'sincere51@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'CvkH5vO9Fa', '2018-09-12 01:23:23', '2018-09-12 01:23:23'),
(120, 'Winfield Wiegand IV', 'koelpin.marcelle@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'RdHXWtlr8u', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(121, 'Ms. Bette Kirlin', 'efren.rath@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'UjgKqXRltd', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(123, 'Steve Pacocha', 'myron03@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'dFiuU2cm5Q', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(125, 'Torrance Strosin III', 'burnice.wolff@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'GlMY27VfUn', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(126, 'Mrs. Kimberly Pagac MD', 'leslie66@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'bKxs5xzH0H', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(127, 'Kendall Ritchie', 'spencer.ashton@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'mIsQAMhZ7m', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(129, 'Gabrielle Douglas IV', 'wshanahan@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'jbBjN8oAlX', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(132, 'Miss Kira Cronin', 'ooreilly@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'FcDlwf5APi', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(134, 'Prof. Felton Gottlieb MD', 'kunze.karine@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '5HcVZ4zXNZ', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(135, 'Keenan Stiedemann', 'lebsack.leopold@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'wjiQhs1KXY', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(139, 'Kaycee Mosciski', 'roberts.dariana@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'wp8NbSMbX7', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(141, 'Friedrich Romaguera', 'bode.frederick@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9h92ADogtp', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(142, 'Hulda Abshire', 'morar.rhoda@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'F7jUOW8M6s', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(146, 'Miss Rosalee Gulgowski Jr.', 'daugherty.noel@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'W1liQagTiC', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(147, 'Ms. Shannon Fadel III', 'colby.gleason@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'LNwV3PXCrA', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(149, 'Miss Joanny Donnelly I', 'sylvester.macejkovic@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'lF0tFxfcdG', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(150, 'Price Runolfsdottir', 'batz.nicholaus@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'YCntN4HEuH', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(151, 'Mrs. Abbigail Fahey II', 'cdeckow@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '2m2JeIe3fY', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(152, 'Mr. Markus Russel Jr.', 'vkovacek@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '6Sj9RxEafF', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(153, 'Prof. Darian Pacocha', 'stromp@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '8UjpOzxjmh', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(154, 'Sarah Smitham', 'schmitt.harmony@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'V1lP3yCCme', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(155, 'Rashawn Wilderman', 'gerard60@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'EIK76kZPXl', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(156, 'Jarred Wunsch', 'gerlach.keith@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'xdxl6Aqsvd', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(157, 'Prof. Kaylah Cruickshank II', 'jerry50@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'mADrJDVD6Y', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(158, 'Selena Becker', 'irving09@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'T879hgsMQ4', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(160, 'Xzavier Beier', 'daija68@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'AixMvNHtM7', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(161, 'Prof. Micah Sanford', 'agreenfelder@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'vytJKiwfKs', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(164, 'Marisa Kessler', 'gwaters@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ysBi75oIdO', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(166, 'Prof. Andrew Stokes', 'myrl81@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'k5tz4d9wDv', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(167, 'Lacy Purdy', 'russel.camryn@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9gj9GHRZvE', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(169, 'Loraine Eichmann', 'arturo.torp@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'mL7Vhzyoiu', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(170, 'Mr. Immanuel Considine DDS', 'rcarroll@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ovqGEMoxAC', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(171, 'Skyla Kreiger', 'vinnie80@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ZzxPvDvJqK', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(172, 'Prof. Robert Pacocha', 'suzanne62@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '1oj123ISSN', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(174, 'Jalon Grimes I', 'annetta60@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 't85IkNfXcf', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(175, 'Oran Daniel', 'retha55@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'nfDCTIDt7N', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(179, 'Prof. Mitchell Breitenberg II', 'gwill@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '224WTkPzkk', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(184, 'Issac Feil', 'ari.mcclure@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '1QSCz2ILYF', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(185, 'Madisen Blick III', 'lemke.emanuel@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'VP4CYi02wp', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(187, 'Noble O\'Conner', 'tbauch@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'n7PFOKLgdC', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(188, 'Janae Gottlieb', 'aliza.glover@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'nAZOuLHdu3', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(189, 'Ramiro Jacobson', 'jordi76@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'LSQ9aDeYp4', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(190, 'Garrett Herzog', 'ward.eleanora@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'kAXkoaSvwk', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(191, 'Mr. Keegan Ortiz Jr.', 'caden69@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'rK40ERme3d', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(192, 'Mrs. Renee Volkman', 'hbradtke@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ESGf2TCokM', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(193, 'Jed Jacobs', 'turcotte.rebecca@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'QTIQjYoKmk', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(195, 'Junius Reilly', 'hayden42@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '8VABNzzPDV', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(196, 'Ms. Aniyah Adams II', 'esther.rodriguez@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'DIwMZNqs5V', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(198, 'Therese Goyette', 'tommie.hickle@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '03Y0yXEmzE', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(199, 'Maye Cole', 'alanis41@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'sVilceSbPm', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(201, 'Margaret Hand', 'evalyn.streich@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'dMTdlyNFAj', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(204, 'Gaylord Connelly', 'lonie01@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'jARaabRYeb', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(205, 'Susana Schaefer', 'elias84@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'G3Zk4foV7x', '2018-09-12 01:23:24', '2018-09-12 01:23:24'),
(207, 'Editor', 'editor@gmail.com', '$2y$10$QCyU9i12eeo/zFEOwWLquOX09FwzUJ/ckJgN9tAEe5gRNIdjNjNtm', 'pm7LtiC0lcUFj8rj57FPjeDh6sHku7uPBVPJxelSwhe1tSNgqFJkqUzrP1Xw', '2018-09-12 02:22:55', '2018-09-12 02:22:55'),
(208, 'admin', 'admin@gmail.com', '$2y$10$FQBxnjoR5FAWXXrCSX.WTOauE.fmFCRLX.6sCj42iFAFRG/IUFTPW', 'UnlBJlw41ak3qtN6BlKrUOidrvLfg2pIj7Gl8AoZF1ACVTZXlC23U3BUls80', '2018-09-12 02:56:25', '2018-09-12 02:56:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
