-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2020 at 03:43 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project-lar`
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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_08_26_033657_vp_user', 1),
(5, '2020_09_03_154614_vp_categories', 2),
(6, '2020_09_07_041322_vp_products', 3),
(7, '2017_06_26_000000_create_shopping_cart_table', 4),
(8, '2018_12_23_120000_create_shoppingcart_table', 5);

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
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `vp_categories`
--

CREATE TABLE `vp_categories` (
  `cate_id` int(10) UNSIGNED NOT NULL,
  `cate_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vp_categories`
--

INSERT INTO `vp_categories` (`cate_id`, `cate_name`, `cate_slug`, `created_at`, `updated_at`) VALUES
(1, 'iPhone', 'iphone', NULL, NULL),
(2, 'SamSung', 'samsung', NULL, NULL),
(3, 'Xiaomi', 'xiaomi', '2020-09-04 02:54:34', '2020-09-04 02:54:34'),
(5, 'LG', 'lg', '2020-09-04 03:06:50', '2020-09-04 03:06:50'),
(6, 'Motorola', 'motorola', '2020-09-04 03:06:59', '2020-09-04 03:06:59'),
(7, 'Nokia', 'nokia', '2020-09-04 08:47:34', '2020-09-04 08:47:34');

-- --------------------------------------------------------

--
-- Table structure for table `vp_comment`
--

CREATE TABLE `vp_comment` (
  `com_id` int(10) UNSIGNED NOT NULL,
  `com_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_product` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vp_comment`
--

INSERT INTO `vp_comment` (`com_id`, `com_email`, `com_name`, `com_content`, `com_product`, `created_at`, `updated_at`) VALUES
(1, 'phamminhchien@gmail.com', 'chien pham', 'abc', 2, '2020-09-21 08:15:49', '2020-09-21 08:15:49'),
(2, 'phamminhchien21@gmail.com', 'chien pham minh', 'giá cao', 2, '2020-09-21 08:27:18', '2020-09-21 08:27:18');

-- --------------------------------------------------------

--
-- Table structure for table `vp_products`
--

CREATE TABLE `vp_products` (
  `prod_id` int(10) UNSIGNED NOT NULL,
  `prod_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_warranty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_accessories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_condition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_promotion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_price` int(11) NOT NULL,
  `prod_status` tinyint(4) NOT NULL,
  `prod_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_featured` tinyint(4) NOT NULL,
  `prod_cate` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vp_products`
--

INSERT INTO `vp_products` (`prod_id`, `prod_name`, `prod_slug`, `prod_img`, `prod_warranty`, `prod_accessories`, `prod_condition`, `prod_promotion`, `prod_price`, `prod_status`, `prod_description`, `prod_featured`, `prod_cate`, `created_at`, `updated_at`) VALUES
(2, 'iPhone X', 'iphone-x', 'all_models_iphonex_large_2x_0f0b360a3bd74712bbdf526e113858ac_large.webp', '12 thang', 'tai nghe, cap, sac', 'Moi 100%', '10%', 240000000, 1, '<p>hang Vietnam LL/A</p>', 0, 1, '2020-09-07 02:41:24', '2020-09-07 02:41:24'),
(3, 'Macbook air', 'macbook-air', 'goran-ivos-iacpoKgpBAM-unsplash.jpg', '2 nam', 'tai nghe, cap, sac', 'New', '0%', 25000000, 1, '<p>laptop</p>', 0, 1, '2020-09-09 08:33:01', '2020-09-10 09:15:22'),
(6, 'iPad pro', 'ipad-pro', 'architect-5342907_1920.jpg', '12 thang', 'tai nghe, cap, sac', 'New', '0%', 9000000, 1, '<p>ipad 2020</p>', 1, 1, '2020-09-14 08:32:56', '2020-09-14 08:32:56'),
(7, 'Lenovo XP', 'lenovo-xp', 'mobile-phone-4646854_1920.jpg', '1 năm', 'tai nghe, cap, sac', 'New', '10%', 18000000, 1, '<p>android phone</p>', 1, 3, '2020-09-14 08:39:19', '2020-09-14 08:39:19'),
(8, 'Samsung laptop', 'samsung-laptop', 'business-1839876_1920.jpg', '1 năm', 'tai nghe, cap, sac', 'New', '0%', 14000000, 1, '<p>demo</p>', 0, 2, '2020-09-14 08:41:21', '2020-09-14 08:41:21');

-- --------------------------------------------------------

--
-- Table structure for table `vp_users`
--

CREATE TABLE `vp_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vp_users`
--

INSERT INTO `vp_users` (`id`, `email`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'phamminhchien21@gmail.com', '$2y$10$GYxo8..kxKtRUTXA1wb3BOIoC943eH0/thOYaE3tJ5g6TJwRwnvTS', 1, NULL, NULL, NULL),
(2, 'phamminhchien@gmail.com', '$2y$10$ahgRvqbrOoKc0p/EkGNtf.JY4PokEAIC2UcFNSWMJpneZ24TsiIGm', 1, 'DQzglirAVhTvIW4XlgS88AwYcFK4D2SNb9nQV6Ptobv1nnHAOI19nSu6L61a', NULL, NULL);

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
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vp_categories`
--
ALTER TABLE `vp_categories`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `vp_comment`
--
ALTER TABLE `vp_comment`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `vp_products`
--
ALTER TABLE `vp_products`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `vp_products_prod_cate_foreign` (`prod_cate`);

--
-- Indexes for table `vp_users`
--
ALTER TABLE `vp_users`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vp_categories`
--
ALTER TABLE `vp_categories`
  MODIFY `cate_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vp_comment`
--
ALTER TABLE `vp_comment`
  MODIFY `com_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vp_products`
--
ALTER TABLE `vp_products`
  MODIFY `prod_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vp_users`
--
ALTER TABLE `vp_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `vp_products`
--
ALTER TABLE `vp_products`
  ADD CONSTRAINT `vp_products_prod_cate_foreign` FOREIGN KEY (`prod_cate`) REFERENCES `vp_categories` (`cate_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
