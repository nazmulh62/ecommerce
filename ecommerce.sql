-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2017 at 08:48 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `about_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `about_description`, `about_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.', 'about_images/31.jpg', 1, '2017-10-21 23:01:27', '2017-10-22 01:02:14');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'All Brands', 'this is For All Brands', 1, '2017-10-19 05:21:04', '2017-10-20 11:33:13'),
(2, 'VEGETABLES', 'This Is For Vegetables brand', 1, '2017-10-19 05:21:45', '2017-10-20 11:26:25'),
(4, 'FRUITS', 'this is For  Fruits', 1, '2017-10-19 05:22:31', '2017-10-20 11:26:24'),
(6, 'JUICES', 'This Is For Juices', 1, '2017-10-19 05:23:00', '2017-10-20 11:26:22'),
(7, 'PET FOOD', 'This is For Pet Food Brand', 1, '2017-10-19 05:24:30', '2017-10-20 11:26:20'),
(10, 'BREAD & BAKERY', 'This is for Bread & bakery', 1, '2017-10-19 05:25:27', '2017-10-20 11:26:17'),
(11, 'CLEANING', 'this is for Cleaning', 1, '2017-10-19 05:26:01', '2017-10-19 05:26:01'),
(16, 'DRY FRUITS', 'This is for Dry Fruits', 1, '2017-10-19 05:27:46', '2017-10-19 05:27:46'),
(17, 'DAIRY PRODUCTS', 'this is for Dairy Products', 1, '2017-10-19 05:28:19', '2017-10-19 05:28:19'),
(19, 'Food', 'This is Food Brand', 1, '2017-10-19 10:47:31', '2017-10-19 10:47:31'),
(21, 'Drinks', 'dgfdgdg', 1, '2017-10-19 11:21:09', '2017-10-19 11:21:09');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Households', 'this is households item', 1, '2017-10-19 01:58:00', '2017-10-20 11:23:20'),
(2, 'Vegetables&Fruits', 'This is for Vegetables&Fruits', 1, '2017-10-19 01:59:13', '2017-10-20 11:23:21'),
(3, 'Kitchen', 'This is For Kitchen', 1, '2017-10-19 01:59:37', '2017-10-19 01:59:37'),
(4, 'Beverages', 'This is For Beverages', 1, '2017-10-19 02:00:03', '2017-10-20 11:23:23'),
(5, 'Pet Food', 'This is For Pet Food', 1, '2017-10-19 02:00:29', '2017-10-19 02:00:29'),
(6, 'Frozen Foods', 'This is for Frozen food', 1, '2017-10-19 02:01:12', '2017-10-19 02:01:12'),
(7, 'Bread & Bekary', 'This is Bread And Bakery', 1, '2017-10-19 02:01:40', '2017-10-19 02:01:40'),
(8, 'Bread & Bekary', 'This is Bread And Bakery', 1, '2017-10-19 02:01:41', '2017-10-19 02:01:41'),
(9, 'Vegatables', 'this is for Vegetables', 1, '2017-10-19 04:03:24', '2017-10-19 04:03:24'),
(10, 'Drinks', 'This is For Drinks', 1, '2017-10-19 04:03:43', '2017-10-19 04:03:43'),
(11, 'Branded Foods', 'this is for Branded Food', 1, '2017-10-19 10:42:26', '2017-10-19 10:42:26');

-- --------------------------------------------------------

--
-- Table structure for table `ecommerces`
--

CREATE TABLE `ecommerces` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(3, '2017_10_17_092337_create_ecommerces_table', 1),
(4, '2017_10_19_065112_create_categories_table', 2),
(5, '2017_10_19_070157_create_products_table', 3),
(6, '2017_10_19_111213_create_brands_table', 4),
(7, '2017_10_19_170449_create_products_table', 5),
(8, '2017_10_20_164948_create_sliders_table', 6),
(9, '2017_10_22_043433_create_abouts_table', 7),
(10, '2017_10_22_051232_create_teams_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `product_name`, `product_price`, `product_code`, `product_image`, `product_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 11, 19, 'Knorr Instant Soup (100 Gm)', 3.00, '1', 'product_images/5.png', 'gfhf', 1, '2017-10-19 11:13:39', '2017-10-20 11:42:05'),
(2, 11, 19, 'Chings Noodles (75 Gm)', 5.00, '2', 'product_images/6.png', 'fgfdghf', 1, '2017-10-19 11:14:40', '2017-10-19 11:14:40'),
(3, 11, 19, 'Lahsun Sev (150 Gm)', 3.00, '3', 'product_images/7.png', 'gfgdf', 1, '2017-10-19 11:15:12', '2017-10-19 11:15:12'),
(4, 11, 19, 'Premium Bake Rusk (300 Gm)', 5.00, '4', 'product_images/8.png', 'ytutyui', 1, '2017-10-19 11:15:46', '2017-10-19 11:15:46'),
(6, 2, 2, 'Fresh Spinach (Palak)', 2.00, '5', 'product_images/9.png', 'fgzvcvcx', 1, '2017-10-19 11:16:53', '2017-10-19 11:16:53'),
(8, 2, 2, 'Fresh Mango Dasheri', 5.00, '6', 'product_images/10.png', 'ghfgfd', 1, '2017-10-19 11:18:43', '2017-10-19 11:18:43'),
(9, 2, 2, 'Fresh Apple Red (1 Kg)', 4.00, '7', 'product_images/11.png', 'gfgter', 1, '2017-10-19 11:19:12', '2017-10-19 11:19:12'),
(10, 2, 2, 'Fresh Broccoli (500 Gm)', 2.00, '8', 'product_images/12.png', 'treyrtu', 1, '2017-10-19 11:19:44', '2017-10-19 11:19:44'),
(11, 4, 6, 'Mixed Fruit Juice (1 Ltr)', 5.00, '9', 'product_images/13.png', 'fgff', 1, '2017-10-19 11:20:23', '2017-10-19 11:20:23'),
(12, 4, 6, 'Prune Juice - Sunsweet (1 Ltr)', 5.00, '10', 'product_images/14.png', 'fgf', 1, '2017-10-19 11:20:52', '2017-10-19 11:20:52'),
(15, 4, 21, 'Coco Cola Zero Can (330 Ml)', 3.00, '11', 'product_images/15.png', 'fdgdfg', 1, '2017-10-19 11:22:13', '2017-10-19 11:22:13'),
(16, 4, 21, 'Sprite Bottle (2 Ltr)', 3.00, '12', 'product_images/16.png', 'sfgsg', 1, '2017-10-19 11:24:38', '2017-10-19 11:24:38');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_text_one` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_text_two` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_text_three` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_text_one`, `slider_text_two`, `slider_text_three`, `slider_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(5, 'Make Your', 'Food', 'With Spicy', 'slider_images/1.jpg', 1, '2017-10-24 11:17:29', '2017-10-24 11:17:29'),
(6, 'upto', '50%', 'off.', 'slider_images/2.jpg', 1, '2017-10-24 11:21:08', '2017-10-24 11:21:08'),
(7, 'Make Your', 'Food', 'With Spicy', 'slider_images/3.jpg', 1, '2017-10-24 11:22:11', '2017-10-24 11:22:11');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `member_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `member_name`, `member_designation`, `member_message`, `team_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'MARTIN PAUL', 'Manager', 'fdgfgfg', 'team_images/32.jpg', 1, '2017-10-22 04:02:45', '2017-10-23 01:29:23'),
(2, 'MICHAEL RICK', 'Supervisor', 'fjdafkjfk', 'team_images/33.jpg', 1, '2017-10-23 11:50:38', '2017-10-23 11:50:38'),
(3, 'THOMAS CARL', 'Supervisor', 'hskhsjkks', 'team_images/34.jpg', 1, '2017-10-23 11:51:13', '2017-10-23 12:30:10'),
(5, 'LAURA LEE', 'CEO', 'fdfdf', 'team_images/35.jpg', 1, '2017-10-23 11:51:49', '2017-10-23 11:51:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_level` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `access_level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nazmul', 'najmul@gmail.com', '$2y$10$6BTorVqFVvGXVencz4ZEhOpDcjhExnAOuU3J9AgSgLiBsBA6iWa0i', 1, 'Z3ZmXQriLaSd0OFuLr7tiy7ttUVw3D3xEvXwZRzPHOX0yQUT16Kgnu8ikZyl', '2017-10-18 12:28:28', '2017-10-24 12:18:17'),
(2, 'nazmul', 'najmulh62@gmail.com', '$2y$10$pFUJn/KUebpPWhZBcTboEeykWHPFK47pTDuRLLlsutznj44DjWdmS', 1, NULL, '2017-10-24 12:20:12', '2017-10-24 12:20:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecommerces`
--
ALTER TABLE `ecommerces`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
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
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ecommerces`
--
ALTER TABLE `ecommerces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
