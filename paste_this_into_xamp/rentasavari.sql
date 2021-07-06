-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2021 at 12:58 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rentasavari`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `car_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `car_no_plate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seat_capacity` int(11) NOT NULL,
  `transmission_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fuel_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rent_price` decimal(8,2) NOT NULL,
  `booking_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'instock',
  `car_status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `car_name`, `car_slug`, `car_image`, `car_no_plate`, `body_type`, `seat_capacity`, `transmission_type`, `fuel_type`, `rent_price`, `booking_status`, `car_status`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'ex sunt non quas', 'ex-sunt-non-quas', 'digital9.jpg', 'Quas enim.', 'Optio aut.', 5, 'Repellat.', 'Omnis.', '17.00', 'instock', 'active', 2, '2021-07-05 00:12:14', '2021-07-05 00:12:14'),
(2, 'quo illum provident voluptatem', 'quo-illum-provident-voluptatem', 'digital5.jpg', 'Voluptas.', 'Eum.', 2, 'Et.', 'Quia.', '21.00', 'instock', 'active', 1, '2021-07-05 00:12:14', '2021-07-05 00:12:14'),
(3, 'laboriosam omnis optio est', 'laboriosam-omnis-optio-est', 'digital19.jpg', 'Qui modi.', 'Corporis.', 2, 'Ipsum et.', 'Et.', '5.00', 'instock', 'active', 3, '2021-07-05 00:12:14', '2021-07-05 00:12:14'),
(4, 'odit sequi nihil quia', 'odit-sequi-nihil-quia', 'digital20.jpg', 'Aut est.', 'Eos.', 3, 'Velit.', 'Illum.', '12.00', 'instock', 'active', 5, '2021-07-05 00:12:14', '2021-07-05 00:12:14'),
(5, 'accusantium qui magnam iure', 'accusantium-qui-magnam-iure', 'digital8.jpg', 'Aut sed.', 'Esse non.', 6, 'Eos.', 'Vero.', '21.00', 'instock', 'active', 4, '2021-07-05 00:12:14', '2021-07-05 00:12:14'),
(6, 'aut magni aut debitis', 'aut-magni-aut-debitis', 'digital1.jpg', 'Quo.', 'Quia.', 4, 'Earum.', 'In.', '9.00', 'instock', 'active', 1, '2021-07-05 00:12:14', '2021-07-05 00:12:14'),
(7, 'cum laboriosam culpa odio', 'cum-laboriosam-culpa-odio', 'digital6.jpg', 'Et iusto.', 'Et qui ea.', 6, 'Fugiat.', 'Eum.', '18.00', 'instock', 'active', 3, '2021-07-05 00:12:14', '2021-07-05 00:12:14'),
(8, 'quo quas cumque porro', 'quo-quas-cumque-porro', 'digital11.jpg', 'Ipsam sed.', 'Vel sint.', 5, 'Vitae.', 'Harum.', '7.00', 'instock', 'active', 5, '2021-07-05 00:12:14', '2021-07-05 00:12:14'),
(9, 'distinctio facilis expedita adipisci', 'distinctio-facilis-expedita-adipisci', 'digital18.jpg', 'Suscipit.', 'Et.', 6, 'Corporis.', 'Cum.', '22.00', 'instock', 'active', 4, '2021-07-05 00:12:14', '2021-07-05 00:12:14'),
(10, 'minus sed cupiditate est', 'minus-sed-cupiditate-est', 'digital3.jpg', 'Molestias.', 'Voluptas.', 5, 'Nesciunt.', 'Nam.', '16.00', 'instock', 'active', 2, '2021-07-05 00:12:14', '2021-07-05 00:12:14'),
(11, 'rerum at voluptas maxime', 'rerum-at-voluptas-maxime', 'digital14.jpg', 'Corrupti.', 'Laborum.', 4, 'Natus.', 'Porro.', '22.00', 'instock', 'active', 1, '2021-07-05 00:12:14', '2021-07-05 00:12:14'),
(12, 'expedita iste qui qui', 'expedita-iste-qui-qui', 'digital4.jpg', 'Omnis.', 'Vel aut.', 3, 'Ea et et.', 'Et.', '7.00', 'instock', 'active', 4, '2021-07-05 00:12:14', '2021-07-05 00:12:14'),
(13, 'consequatur veritatis enim dolores', 'consequatur-veritatis-enim-dolores', 'digital21.jpg', 'Accusamus.', 'Deleniti.', 5, 'Aut.', 'Rem.', '13.00', 'instock', 'active', 4, '2021-07-05 00:12:14', '2021-07-05 00:12:14'),
(14, 'dolorem velit omnis ut', 'dolorem-velit-omnis-ut', 'digital12.jpg', 'At.', 'Aut est.', 2, 'Sequi.', 'Totam.', '15.00', 'instock', 'active', 5, '2021-07-05 00:12:14', '2021-07-05 00:12:14'),
(15, 'dolor quibusdam necessitatibus est', 'dolor-quibusdam-necessitatibus-est', 'digital22.jpg', 'Sapiente.', 'Dolor.', 3, 'Aut.', 'Sunt.', '22.00', 'instock', 'active', 1, '2021-07-05 00:12:14', '2021-07-05 00:12:14'),
(16, 'molestias rem dolore quia', 'molestias-rem-dolore-quia', 'digital16.jpg', 'Autem.', 'Sapiente.', 5, 'Deleniti.', 'Non.', '20.00', 'instock', 'active', 4, '2021-07-05 00:12:14', '2021-07-05 00:12:14'),
(17, 'aut id architecto praesentium', 'aut-id-architecto-praesentium', 'digital13.jpg', 'Quod.', 'Eaque.', 6, 'Et.', 'Est.', '22.00', 'instock', 'active', 4, '2021-07-05 00:12:14', '2021-07-05 00:12:14'),
(18, 'possimus dignissimos et quasi', 'possimus-dignissimos-et-quasi', 'digital17.jpg', 'Ad omnis.', 'Eum.', 3, 'Vel.', 'Ipsam.', '12.00', 'instock', 'active', 5, '2021-07-05 00:12:14', '2021-07-05 00:12:14'),
(19, 'occaecati dolore minus voluptates', 'occaecati-dolore-minus-voluptates', 'digital7.jpg', 'Deserunt.', 'Accusamus.', 5, 'Odit.', 'Culpa.', '1.00', 'instock', 'active', 5, '2021-07-05 00:12:14', '2021-07-05 00:12:14'),
(20, 'dolor rerum sit dolore', 'dolor-rerum-sit-dolore', 'digital15.jpg', 'Et nulla.', 'Aperiam.', 3, 'Illum.', 'Velit.', '1.00', 'instock', 'active', 3, '2021-07-05 00:12:14', '2021-07-05 00:12:14'),
(21, 'molestiae vel cumque ut', 'molestiae-vel-cumque-ut', 'digital10.jpg', 'Incidunt.', 'Excepturi.', 6, 'Harum.', 'Ullam.', '17.00', 'instock', 'active', 2, '2021-07-05 00:12:14', '2021-07-05 00:12:14'),
(22, 'dolorem nobis dicta error', 'dolorem-nobis-dicta-error', 'digital2.jpg', 'Et ipsum.', 'Molestiae.', 3, 'Nulla.', 'In.', '22.00', 'instock', 'active', 1, '2021-07-05 00:12:14', '2021-07-05 00:12:14');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'nihil voluptatem', 'nihil-voluptatem', '2021-07-05 00:12:14', '2021-07-05 00:12:14'),
(2, 'omnis asperiores', 'omnis-asperiores', '2021-07-05 00:12:14', '2021-07-05 00:12:14'),
(3, 'excepturi et', 'excepturi-et', '2021-07-05 00:12:14', '2021-07-05 00:12:14'),
(4, 'voluptas nostrum', 'voluptas-nostrum', '2021-07-05 00:12:14', '2021-07-05 00:12:14'),
(5, 'animi omnis', 'animi-omnis', '2021-07-05 00:12:14', '2021-07-05 00:12:14'),
(6, 'voluptatem qui', 'voluptatem-qui', '2021-07-05 00:12:14', '2021-07-05 00:12:14');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_07_04_064103_create_sessions_table', 1),
(8, '2021_07_04_132615_create_categories_table', 2),
(9, '2021_07_05_041157_create_cars_table', 3);

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('jLURseL7kBQPjgGSMOTtDDSDO3BZHJeTJnpZn6rZ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZnhoM1BCcHRIajFsTXRyd0JaYzAxUjY5cE85WkpBdHdIRllIV0YzMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9jYXJ0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjE6e3M6ODoiACoAaXRlbXMiO2E6Mzp7czozMjoiMzcwZDA4NTg1MzYwZjVjNTY4YjE4ZDFmMmU0Y2ExZGYiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiIzNzBkMDg1ODUzNjBmNWM1NjhiMThkMWYyZTRjYTFkZiI7czoyOiJpZCI7aToyO3M6MzoicXR5IjtpOjM7czo0OiJuYW1lIjtzOjMwOiJxdW8gaWxsdW0gcHJvdmlkZW50IHZvbHVwdGF0ZW0iO3M6NToicHJpY2UiO2Q6MjE7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjE6e3M6ODoiACoAaXRlbXMiO2E6MDp7fX1zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE0OiJBcHBcTW9kZWxzXENhciI7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAHRheFJhdGUiO2k6MjE7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGlzU2F2ZWQiO2I6MDt9czozMjoiOGE0OGFhN2M4ZTUyMDI4NDFkZGFmNzY3YmI0ZDEwZGEiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiI4YTQ4YWE3YzhlNTIwMjg0MWRkYWY3NjdiYjRkMTBkYSI7czoyOiJpZCI7aTo2O3M6MzoicXR5IjtpOjE7czo0OiJuYW1lIjtzOjIxOiJhdXQgbWFnbmkgYXV0IGRlYml0aXMiO3M6NToicHJpY2UiO2Q6OTtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6MTp7czo4OiIAKgBpdGVtcyI7YTowOnt9fXM6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO3M6MTQ6IkFwcFxNb2RlbHNcQ2FyIjtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AdGF4UmF0ZSI7aToyMTtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AaXNTYXZlZCI7YjowO31zOjMyOiJhNzc1YmFjOWNmZjdkZWMyYjk4NGUwMjNiOTUyMDZhYSI7TzozMjoiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0iOjk6e3M6NToicm93SWQiO3M6MzI6ImE3NzViYWM5Y2ZmN2RlYzJiOTg0ZTAyM2I5NTIwNmFhIjtzOjI6ImlkIjtpOjM7czozOiJxdHkiO2k6MTtzOjQ6Im5hbWUiO3M6MjY6ImxhYm9yaW9zYW0gb21uaXMgb3B0aW8gZXN0IjtzOjU6InByaWNlIjtkOjU7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjE6e3M6ODoiACoAaXRlbXMiO2E6MDp7fX1zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE0OiJBcHBcTW9kZWxzXENhciI7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAHRheFJhdGUiO2k6MjE7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGlzU2F2ZWQiO2I6MDt9fX19fQ==', 1625552261),
('jncT1ruiegmNJYaDOBF0QKsnecTAwzy0ebcibVuz', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibEdjOEZMWk91SHZDdzdaUnd3SEVnOGZ6THJuSHhMcGF4eFBhN2tUbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zZWFyY2g/Y2FyX2NhdD1uaWhpbCUyMHZvbHVwdGF0ZW0mY2F0X2NhdF9pZD0mc2VhcmNoPSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1625567210),
('QS8snzEhdKk4J2x4ICBWE3NMTaWwLtlWMwS0u9Sn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZWJhcFJ4ZlEzUnZDWUhFb3pFS2lqZXNCT3NlVjVJQTZvNEFRdXVhMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJ0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjE6e3M6ODoiACoAaXRlbXMiO2E6Mjp7czozMjoiMDI3YzkxMzQxZmQ1Y2Y0ZDI1NzliNDljNGI2YTkwZGEiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiIwMjdjOTEzNDFmZDVjZjRkMjU3OWI0OWM0YjZhOTBkYSI7czoyOiJpZCI7aToxO3M6MzoicXR5IjtpOjY7czo0OiJuYW1lIjtzOjE2OiJleCBzdW50IG5vbiBxdWFzIjtzOjU6InByaWNlIjtkOjE3O3M6Nzoib3B0aW9ucyI7TzozOToiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW1PcHRpb25zIjoxOntzOjg6IgAqAGl0ZW1zIjthOjA6e319czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7czoxNDoiQXBwXE1vZGVsc1xDYXIiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fXM6MzI6IjM3MGQwODU4NTM2MGY1YzU2OGIxOGQxZjJlNGNhMWRmIjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6OTp7czo1OiJyb3dJZCI7czozMjoiMzcwZDA4NTg1MzYwZjVjNTY4YjE4ZDFmMmU0Y2ExZGYiO3M6MjoiaWQiO2k6MjtzOjM6InF0eSI7aToxO3M6NDoibmFtZSI7czozMDoicXVvIGlsbHVtIHByb3ZpZGVudCB2b2x1cHRhdGVtIjtzOjU6InByaWNlIjtkOjIxO3M6Nzoib3B0aW9ucyI7TzozOToiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW1PcHRpb25zIjoxOntzOjg6IgAqAGl0ZW1zIjthOjA6e319czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7czoxNDoiQXBwXE1vZGVsc1xDYXIiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fX19fX0=', 1625557944),
('skAP2nK1jChu32nCNskpdmBJzbq8Z444vhYRWt0F', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVDZaRWxkQmZBdHZ3NnBlYmR6SFoyanVTMmNpblpRWHQ4T0hRamZTTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9jYXItY2F0ZWdvcnkvbmloaWwtdm9sdXB0YXRlbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NDoiY2FydCI7YTowOnt9fQ==', 1625561091),
('tFBd4nGRFTqzBiem3VQFDsy1xZDuVUtJqmwHQ9rt', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMWpjeWVtc3liaDhoVEl1NWlFV1NxTm9QUEx5MDdPWnNjR0owU09aYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9jYXJ0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjE6e3M6ODoiACoAaXRlbXMiO2E6Mjp7czozMjoiMDI3YzkxMzQxZmQ1Y2Y0ZDI1NzliNDljNGI2YTkwZGEiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiIwMjdjOTEzNDFmZDVjZjRkMjU3OWI0OWM0YjZhOTBkYSI7czoyOiJpZCI7aToxO3M6MzoicXR5IjtpOjE7czo0OiJuYW1lIjtzOjE2OiJleCBzdW50IG5vbiBxdWFzIjtzOjU6InByaWNlIjtkOjE3O3M6Nzoib3B0aW9ucyI7TzozOToiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW1PcHRpb25zIjoxOntzOjg6IgAqAGl0ZW1zIjthOjA6e319czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7czoxNDoiQXBwXE1vZGVsc1xDYXIiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fXM6MzI6IjM3MGQwODU4NTM2MGY1YzU2OGIxOGQxZjJlNGNhMWRmIjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6OTp7czo1OiJyb3dJZCI7czozMjoiMzcwZDA4NTg1MzYwZjVjNTY4YjE4ZDFmMmU0Y2ExZGYiO3M6MjoiaWQiO2k6MjtzOjM6InF0eSI7aToxO3M6NDoibmFtZSI7czozMDoicXVvIGlsbHVtIHByb3ZpZGVudCB2b2x1cHRhdGVtIjtzOjU6InByaWNlIjtkOjIxO3M6Nzoib3B0aW9ucyI7TzozOToiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW1PcHRpb25zIjoxOntzOjg6IgAqAGl0ZW1zIjthOjA6e319czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7czoxNDoiQXBwXE1vZGVsc1xDYXIiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fX19fX0=', 1625552222);

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for admin and usr for user or customer ',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$eedDT7wj1zxlro5OmjKEC.zfbImiUNRfJM5QHXI3K/suBER589fmK', NULL, NULL, NULL, NULL, NULL, 'ADM', '2021-07-04 03:47:59', '2021-07-04 03:47:59'),
(2, 'user three', 'user3@user.com', NULL, '$2y$10$i45M5dJAzxM.oxTEAvxI7emJO/5BcjoYsACzCKjeexop2ODIacdci', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-07-04 07:38:16', '2021-07-04 07:38:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cars_car_name_unique` (`car_name`),
  ADD UNIQUE KEY `cars_car_slug_unique` (`car_slug`),
  ADD UNIQUE KEY `cars_car_no_plate_unique` (`car_no_plate`),
  ADD KEY `cars_category_id_foreign` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `cars_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
