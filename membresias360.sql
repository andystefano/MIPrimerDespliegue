-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 03-05-2024 a las 16:15:45
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `membresias360`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_title_unique` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `updated_at`, `title`, `description`) VALUES
(1, NULL, '2024-04-28 00:44:19', 'Antenna KidsSSSS 222', 'test'),
(2, NULL, '2024-04-28 00:35:49', 'Categoria Principal 2', 'sin desc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coupons`
--

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `coupon_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `expiration_date` date NOT NULL,
  `usage_limit` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `discount_type`, `amount`, `expiration_date`, `usage_limit`, `created_at`, `updated_at`) VALUES
(1, 'cupon111', 'fixed', '10000.00', '2025-04-30', NULL, '2024-04-27 21:06:14', '2024-04-30 08:30:59'),
(2, 'cupon2', 'fixed', '12000.00', '1988-12-01', NULL, '2024-04-28 01:35:31', '2024-04-28 01:35:31'),
(3, 'Lanzamiento2024', 'percentage', '5.00', '2025-02-12', NULL, '2024-04-28 01:35:54', '2024-04-28 01:35:54'),
(4, 'Nuevos2024', 'percentage', '50.00', '2024-12-31', NULL, '2024-04-30 08:16:51', '2024-04-30 08:16:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_04_27_061022_create_categories_table', 2),
(5, '2024_04_27_210212_create_coupons_table', 3),
(6, '2024_04_28_213825_create_products_table', 4),
(9, '2024_04_29_034024_create_orders_table', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `coupon_id` bigint UNSIGNED DEFAULT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `status` enum('Pendiente de Pago','Procesando','En Espera','Completado','Cancelado','Reembolsado','Fallido','Borrador') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Borrador',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`),
  KEY `orders_coupon_id_foreign` (`coupon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `coupon_id`, `sub_total`, `discount`, `total`, `status`, `created_at`, `updated_at`, `title`, `description`) VALUES
(1, 1, NULL, '200000.00', '20000.00', '180000.00', 'Pendiente de Pago', '2024-04-29 04:01:20', '2024-04-29 04:01:20', 'Antigua', 'Membresia Antigua'),
(2, 1, NULL, '200000.00', '20000.00', '180000.00', 'Completado', '2024-04-29 04:01:20', '2024-04-29 04:01:20', '', ''),
(3, 1, NULL, '200000.00', '20000.00', '180000.00', 'Completado', '2024-04-29 04:01:20', '2024-04-29 04:01:20', '', ''),
(4, 1, NULL, '200000.00', '20000.00', '180000.00', 'Pendiente de Pago', '2024-04-29 04:01:20', '2024-04-29 04:01:20', 'Directorio', ''),
(5, 1, NULL, '200000.00', '20000.00', '180000.00', 'Pendiente de Pago', '2024-04-29 04:01:20', '2024-04-29 04:01:20', '', ''),
(6, 1, NULL, '200000.00', '20000.00', '180000.00', 'Pendiente de Pago', '2024-04-29 04:01:20', '2024-04-29 04:01:20', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `beneficiaries` int NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `available` tinyint(1) NOT NULL DEFAULT '1',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `duration_years` int DEFAULT NULL,
  `duration_months` int DEFAULT NULL,
  `duration_weeks` int DEFAULT NULL,
  `duration_days` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `title`, `beneficiaries`, `short_description`, `long_description`, `price`, `category_id`, `image_url`, `available`, `visible`, `created_at`, `updated_at`, `duration_years`, `duration_months`, `duration_weeks`, `duration_days`) VALUES
(1, 'Socio Antenna2', 0, '22 Visitas Guiadas Antenna al mes, en museos y centros culturales.', '2Socio Antenna\r\n\r\n(VÁLIDO PARA UNA PERSONA)\r\n\r\nDescubre y entérate de lo mejor de las artes visuales, mientras apoyas al desarrollo cultural en Chile.\r\n\r\nCon ésta membresía, disfruta de los siguientes beneficios individuales:\r\n\r\nParticipa:\r\n\r\n2 Visitas Guiadas Antenna al mes, en museos y centros culturales.\r\n\r\nRecibe:\r\n\r\nAntenna Recomienda (mensual).\r\nNews Antenna (cada dos meses).', '200000.00', 1, 'http://google.cl/product1.jpg', 1, 1, NULL, '2024-04-29 03:07:15', 0, 0, 0, 0),
(2, 'sdsdsdsd, sdsdsdsd, sdsdsdsd, sdsdsdsd, sdsdsdsd, sdsdsdsd, sdsdsdsd, sdsdsdsd, sdsdsdsd, sdsdsdsd,', 0, 'sdsds dsd sdsdsd sdsdsd sdsdd sdsd', 'sdsdsd sdsd sdsd sdsdsd sdsdsd', '200000.00', 2, NULL, 1, 1, '2024-04-29 03:32:29', '2024-04-29 03:32:29', 0, 0, 0, 0),
(3, 'kkmmkkm', 0, 'mlkmkkmlkml', 'lkklkmlmkl', '23232.00', 1, 'uploads/images/RYS66tbm3D9tJ7VeYNwAusjgbCFJ2vrLBheXYWIf.png', 1, 1, '2024-04-29 04:10:37', '2024-04-29 04:47:27', 0, 0, 0, 0),
(4, 'dsdsm', 0, 'sdsdsm,', 'mdsmm,d,msm,', '2822882.00', 1, 'images/CQDIYWh8gOvCl7vjtpabnDqZQ4xBq7CUtUu57nkG.png', 1, 1, '2024-04-29 04:14:37', '2024-04-29 04:14:37', 0, 0, 0, 0),
(5, 'saasas', 0, 'mskakmsakl', 'alkasmkakl', '270000.00', 1, 'images/VEBSDMkomXCjzUcA47OpSWpAk0culasmiY3yOGir.png', 1, 1, '2024-04-29 04:15:35', '2024-04-29 04:15:35', 0, 0, 0, 0),
(6, 'dsds', 0, 's,sds,', 'ds,ds,', '2323.00', 1, 'uploads/images/Lx6GgG44kWFjHto53oLhxmOsqrzvEKZ5WbVaQDXi.png', 1, 1, '2024-04-29 04:20:41', '2024-04-29 04:46:53', 0, 0, 0, 0),
(7, 'dsdsds', 0, 'sd,d,sd,', ',dss,sddsdslsdskd', '3232.00', 1, 'uploads/images/0LRLPeasZEsFPbFljJo76t5ZGgAkwYi9DhIiC7ku.png', 1, 1, '2024-04-29 04:21:10', '2024-04-29 04:46:30', 0, 0, 0, 0),
(8, 'sdmsmdms', 0, 'sdmsmsmd', 'msmdmdsm sdmdmsdm msmdmdsm sdmdmsdm msmdmdsm sdmdmsdm', '70000.00', 2, 'images/At3jerR2mau7q3b0rAZ3mjMN7fRgnS4Rt84TSU8p.png', 1, 1, '2024-04-29 05:35:33', '2024-04-29 05:35:33', NULL, NULL, NULL, NULL),
(9, 'ss,d,sd,', 0, 'd,s,d,', 'ds,,ds,,', '98000.00', 2, 'images/bbVs6sC0qXabvTTSHjxhqOtQ85JRBeJ72cLqaM4a.png', 1, 1, '2024-04-29 05:36:25', '2024-04-29 05:36:25', NULL, NULL, NULL, NULL),
(10, 'mkkmkklk', 0, 'mkklmkml', 'mkklmmkl', '87000.00', 1, 'images/5D52yzj9SHaUKkwwHWlpx5dfsmAtRXCvgOsvpT09.png', 1, 1, '2024-04-29 05:38:22', '2024-04-29 05:38:22', NULL, NULL, NULL, NULL),
(11, 'mmmmllm', 0, 'mkkllkmmlk', 'mkmkmkllkm', '12323.00', 1, 'images/waj02rsaJ3SU8hr78THbe3LuJzyGDfCEzlsuqs5F.png', 1, 1, '2024-04-29 05:47:02', '2024-04-29 05:47:02', NULL, NULL, NULL, NULL),
(12, 'sdsd', 0, 'sdsd', 'dsdsd', '81727.00', 2, 'images/GHV7L5jVaNkAhY9pDdFymqG6OaPCHhvOooM4Bn4O.png', 1, 1, '2024-04-29 05:53:30', '2024-04-29 05:53:30', NULL, NULL, NULL, NULL),
(13, 'sdsd', 0, 'sdsd', 'dsdsd', '81727.00', 2, 'images/GHV7L5jVaNkAhY9pDdFymqG6OaPCHhvOooM4Bn4O.png', 1, 1, '2024-04-29 05:53:30', '2024-04-29 05:53:30', 1, NULL, NULL, 4),
(14, 'dsdsds', 0, 's,d,ssd,', 'mmdmsdsm', '34500.00', 2, 'images/DDd717g8zbY5KWmjty0pTiIhJgKTxjvbzLH8lhJr.png', 1, 1, '2024-04-29 05:55:34', '2024-04-29 05:55:34', NULL, NULL, NULL, NULL),
(15, 'dsdsds', 0, 's,d,ssd,', 'mmdmsdsm', '34500.00', 2, 'images/DDd717g8zbY5KWmjty0pTiIhJgKTxjvbzLH8lhJr.png', 1, 1, '2024-04-29 05:55:34', '2024-04-29 05:55:34', 1, NULL, NULL, 4),
(16, 'd,sd,s,s', 0, 'msdsmsdm', 'long', '8900.00', 2, NULL, 1, 1, '2024-04-29 05:57:07', '2024-04-29 05:57:07', NULL, NULL, NULL, NULL),
(17, 'd,sd,s,s', 0, 'msdsmsdm', 'long', '8900.00', 2, 'uploads/images/nDQQJXrAAmOEO4C9Nces5zmHvGB60aZYGyPYNpx2.png', 1, 1, '2024-04-29 05:57:07', '2024-05-02 06:19:47', 1, 3, 2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('9tovHC6bor8W1kKBRF0aaujoYZqRazFexObzrzM0', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiUjFCMWVYd3R0TUpLQ0w0NW14Q2ZlV25oS20zcVBiTGhGRUN0ZEVpSSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM1OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvb3JkZXJzLzEvZWRpdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNzE0Njk2NTIwO319', 1714704730),
('fojyHaPy1q8C0MF0FY0c4OLyjCQ0gZ1j9gh0GGNF', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidHR5cTVqUVBjdUwwYjJUNWtzeW1JelAxZkNVOXFMd0xlc1BCNWNjYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb3Vwb25zIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3MTQ2MTYyOTg7fX0=', 1714621332),
('KwVLj7dH7NP2DTsVlSauNhaiSAe9rjwEAKEG6l5W', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZXZBVVNKbGtkaWo3eHZXWnVRR1RIYzk0NnQ5ZDZ0MWJQUTFIY0tWcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9vcmRlcnMvMS9lZGl0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3MTQ0NDk5MjI7fX0=', 1714455071);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Andy Hormazabal', 'andy@andy.cl', NULL, '$2y$12$3m9ohggTJdQzvY1MViX2SuRqCzDXoIlhkT7H1O3mpHj.HS/.SiHGi', NULL, '2024-04-27 07:32:22', '2024-04-27 07:32:22');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
