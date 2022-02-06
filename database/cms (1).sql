-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2021 at 01:27 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminregs`
--

CREATE TABLE `adminregs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminregs`
--

INSERT INTO `adminregs` (`id`, `name`, `email`, `mobile_no`, `company_name`) VALUES
(1, 'Sanjay', 'sanjay@gmail.com', '0000000000', 'abc'),
(2, 'Ajay', 'www@gmail.com', '0000000000', 'AJAY');

-- --------------------------------------------------------

--
-- Table structure for table `admin_regs`
--

CREATE TABLE `admin_regs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `all_comments`
-- (See below for the actual view)
--
CREATE TABLE `all_comments` (
`id` bigint(20) unsigned
,`description` text
,`u_id` int(11)
,`created_at` timestamp
,`updated_at` timestamp
,`name` varchar(255)
,`email` varchar(255)
,`mobile_no` varchar(15)
,`company_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `all_login_users`
--

CREATE TABLE `all_login_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `u_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `all_login_users`
--

INSERT INTO `all_login_users` (`id`, `u_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 0, '2021-01-25 00:26:35', '2021-01-25 00:26:35'),
(3, 3, 0, '2021-01-25 00:53:13', '2021-01-25 00:53:13'),
(4, 1, 0, '2021-01-25 00:53:34', '2021-01-25 00:53:34'),
(5, 1, 1, '2021-01-25 01:05:08', '2021-01-25 01:05:08'),
(6, 1, 1, '2021-01-25 01:06:45', '2021-01-25 01:06:45'),
(7, 3, 1, '2021-01-25 01:07:11', '2021-01-25 01:07:11'),
(8, 6, 1, '2021-01-25 01:26:32', '2021-01-25 01:26:32'),
(9, 1, 1, '2021-01-25 01:44:10', '2021-01-25 01:44:10'),
(10, 1, 1, '2021-01-25 01:47:22', '2021-01-25 01:47:22'),
(11, 1, 1, '2021-01-25 01:49:09', '2021-01-25 01:49:09'),
(12, 1, 1, '2021-01-25 01:52:22', '2021-01-25 01:52:22');

-- --------------------------------------------------------

--
-- Table structure for table `change_videos`
--

CREATE TABLE `change_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `change_videos`
--

INSERT INTO `change_videos` (`id`, `url`, `created_at`, `updated_at`) VALUES
(1, 'https://player.vimeo.com/video/487756071', NULL, '2021-02-06 05:04:33');

-- --------------------------------------------------------

--
-- Table structure for table `cmms`
--

CREATE TABLE `cmms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `u_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cmms`
--

INSERT INTO `cmms` (`id`, `description`, `u_id`, `created_at`, `updated_at`) VALUES
(2, 'aaa', 7, '2021-01-28 00:31:44', '2021-01-28 00:31:44'),
(3, 'aaa', 7, '2021-01-28 00:31:47', '2021-01-28 00:31:47'),
(4, 'vvvvvv', 7, '2021-01-28 00:32:03', '2021-01-28 00:32:03'),
(5, 'sss', 7, '2021-01-28 04:27:05', '2021-01-28 04:27:05'),
(6, 'sss', 7, '2021-01-28 04:27:08', '2021-01-28 04:27:08'),
(7, 'sss', 7, '2021-01-28 04:27:09', '2021-01-28 04:27:09'),
(8, 'sss', 7, '2021-01-28 04:27:14', '2021-01-28 04:27:14'),
(9, 'zzzzz', 7, '2021-01-28 04:27:49', '2021-01-28 04:27:49'),
(10, 'zzzzz', 7, '2021-01-28 04:27:51', '2021-01-28 04:27:51'),
(11, 'sss', 7, '2021-01-28 04:28:02', '2021-01-28 04:28:02'),
(12, 'ss', 7, '2021-01-28 05:35:37', '2021-01-28 05:35:37'),
(13, 'ssssssssssssss', 7, '2021-01-28 06:35:32', '2021-01-28 06:35:32'),
(14, 'ssss', 9, '2021-01-28 07:29:37', '2021-01-28 07:29:37'),
(15, 'wwwwwwwwwwww', 9, '2021-01-29 00:00:45', '2021-01-29 00:00:45'),
(16, 'ssssssssssss\ns\ns\n\n\n\n\ns', 9, '2021-01-29 03:00:28', '2021-01-29 03:00:28'),
(17, 'aaaaaaa', 9, '2021-01-30 03:30:33', '2021-01-30 03:30:33'),
(18, 'ass', 9, '2021-01-30 03:31:27', '2021-01-30 03:31:27'),
(19, 'sssssssss', 9, '2021-01-30 06:49:06', '2021-01-30 06:49:06'),
(20, 'xccc', 9, '2021-01-30 06:53:41', '2021-01-30 06:53:41'),
(21, 'xccc', 9, '2021-01-30 06:53:43', '2021-01-30 06:53:43'),
(22, 'xccc', 9, '2021-01-30 06:53:47', '2021-01-30 06:53:47'),
(23, 'sasas', 9, '2021-01-30 06:54:26', '2021-01-30 06:54:26'),
(24, 'sasas', 9, '2021-01-30 06:54:27', '2021-01-30 06:54:27'),
(25, 'sasas', 9, '2021-01-30 06:54:34', '2021-01-30 06:54:34'),
(26, 'sasas', 9, '2021-01-30 06:54:34', '2021-01-30 06:54:34'),
(27, 'sasas', 9, '2021-01-30 06:54:35', '2021-01-30 06:54:35'),
(28, 'zazaza', 9, '2021-01-30 06:54:40', '2021-01-30 06:54:40'),
(29, 'zazaza', 9, '2021-01-30 06:54:41', '2021-01-30 06:54:41'),
(30, 'zazaza', 9, '2021-01-30 06:54:42', '2021-01-30 06:54:42'),
(31, 'zazaza', 9, '2021-01-30 06:54:43', '2021-01-30 06:54:43'),
(32, 'zazaza', 9, '2021-01-30 06:54:43', '2021-01-30 06:54:43'),
(33, 'zazaza', 9, '2021-01-30 06:54:44', '2021-01-30 06:54:44'),
(34, 'zazaza', 9, '2021-01-30 06:54:44', '2021-01-30 06:54:44'),
(35, 'zazaza', 9, '2021-01-30 06:54:44', '2021-01-30 06:54:44'),
(36, 'zaza', 9, '2021-01-30 06:55:10', '2021-01-30 06:55:10'),
(37, 'dddd', 9, '2021-02-01 01:23:23', '2021-02-01 01:23:23'),
(38, 'cccc', 9, '2021-02-01 04:02:53', '2021-02-01 04:02:53'),
(39, 'fgfgfg', 9, '2021-02-01 04:40:42', '2021-02-01 04:40:42'),
(40, 'dddddd', 1, '2021-02-04 01:49:44', '2021-02-04 01:49:44'),
(41, 'sssd', 1, '2021-02-04 05:20:30', '2021-02-04 05:20:30'),
(42, 'sssdds', 9, '2021-02-05 04:20:47', '2021-02-05 04:20:47'),
(43, 'fffff', 9, '2021-02-05 04:21:49', '2021-02-05 04:21:49'),
(44, 'sdsdsdds', 9, '2021-02-06 05:11:25', '2021-02-06 05:11:25'),
(45, 'xzxzxzxz', 9, '2021-02-06 05:11:40', '2021-02-06 05:11:40'),
(46, 'fffdfdfd', 9, '2021-02-06 07:14:10', '2021-02-06 07:14:10'),
(47, 'vbvbb', 9, '2021-02-09 05:10:55', '2021-02-09 05:10:55'),
(48, 'vvb', 9, '2021-02-09 05:10:58', '2021-02-09 05:10:58'),
(49, 'bvbvbv', 9, '2021-02-09 05:11:01', '2021-02-09 05:11:01'),
(50, 'bb', 9, '2021-02-09 05:11:10', '2021-02-09 05:11:10');

-- --------------------------------------------------------

--
-- Table structure for table `coments`
--

CREATE TABLE `coments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `cid` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`cid`, `u_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 7, 'sss', '2021-01-27 11:10:19', '2021-01-27 11:10:19'),
(2, 7, 'zzz', '2021-01-27 11:29:35', '2021-01-27 11:29:35'),
(3, 7, 'hlw', '2021-01-27 11:30:09', '2021-01-27 11:30:09');

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
-- Table structure for table `fpulscolor`
--

CREATE TABLE `fpulscolor` (
  `id` int(11) NOT NULL,
  `color` varchar(255) NOT NULL,
  `m_top` int(11) NOT NULL,
  `m_left` int(11) NOT NULL,
  `color2` varchar(255) NOT NULL,
  `m_top2` int(11) NOT NULL,
  `m_left2` int(11) NOT NULL,
  `color3` varchar(255) NOT NULL,
  `m_top3` int(11) NOT NULL,
  `m_left3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fpulscolor`
--

INSERT INTO `fpulscolor` (`id`, `color`, `m_top`, `m_left`, `color2`, `m_top2`, `m_left2`, `color3`, `m_top3`, `m_left3`) VALUES
(1, '#0dde14', 110, 10, '#55df3a', 70, 40, '#10ea47', 90, 90);

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
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_resets_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2021_01_23_054625_create_posts_table', 1),
(12, '2021_01_23_055042_create_coments_table', 1),
(13, '2021_01_23_082824_create_all_login_users_table', 1),
(14, '2021_01_23_092136_all_login_users', 1),
(15, '2021_01_27_114039_create_cmms_table', 2),
(16, '2021_01_30_090418_create_admin_regs_table', 3),
(17, '2021_02_01_052116_create_change_videos_table', 3);

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
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `bgimg` varchar(255) NOT NULL,
  `mbgimg` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `bgimg`, `mbgimg`, `color`) VALUES
(1, '1612782725.png', '1612782725.png', '#134bb4');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logo`
--

CREATE TABLE `tbl_logo` (
  `id` int(11) NOT NULL,
  `ficon` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `lbgc` varchar(255) NOT NULL,
  `lbgimg` varchar(255) NOT NULL,
  `rbgc` varchar(255) NOT NULL,
  `rbgimg` varchar(255) NOT NULL,
  `lobbyimg` varchar(255) NOT NULL,
  `commentimg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_logo`
--

INSERT INTO `tbl_logo` (`id`, `ficon`, `logo`, `lbgc`, `lbgimg`, `rbgc`, `rbgimg`, `lobbyimg`, `commentimg`) VALUES
(1, '1612599181.png', '1612597801.png', '#ffffff', '1612782725.png', '#ffffff', '1612862696.png', '1612605894.png', '1612606181.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reg_page`
--

CREATE TABLE `tbl_reg_page` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_reg_page`
--

INSERT INTO `tbl_reg_page` (`id`, `image`) VALUES
(1, '1612179604.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `status` int(11) DEFAULT 0,
  `login_time` time DEFAULT '00:00:00',
  `logout_time` time DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `email`, `mobile_no`, `company_name`, `status`, `login_time`, `logout_time`, `created_at`, `updated_at`) VALUES
(5, 'Deepak', 'deepak@gmail.com', '8888888888', 'G Earth', 0, '18:37:29', '18:49:26', '2021-01-23', '2021-01-23 08:54:19'),
(6, 'abc', 'abc@gmail.com', '9999999999', 'abc', 0, '10:22:35', '10:22:37', '2021-01-25', '2021-01-25 06:55:30'),
(7, 'www', 'www@gmail.com', '9999999999', 'www', 0, '15:24:19', '15:24:25', '2021-01-25', '2021-01-25 07:07:08'),
(8, 'HHH', 'hhh@gmail.com', '8888888888', 'hhh', 0, '16:21:24', '16:22:38', '2021-01-25', '2021-01-25 07:48:30'),
(9, 'Sanjay', 'sanjay@gmail.com', '0000000000', 'wow', 0, '12:04:46', '12:21:27', '2021-01-28', '2021-01-28 12:19:34'),
(10, 'S Y', 'sy@gmail.com', '0000000000', 'www', 0, '12:48:41', '12:48:47', '2021-01-29', '2021-01-29 09:55:51'),
(11, 'S Y', 'sanjay@gmail.com', '0000000000', 'wow', 0, NULL, NULL, '2021-01-29', '2021-01-29 10:00:49'),
(12, 'yadav', 'yadav@gmail.com', '1111111111', 'wow', 0, NULL, NULL, '2021-02-05', '2021-02-05 05:55:20'),
(13, 'Sanjay', 'sanjay@gmail.com', '0000000000', 'www', 0, NULL, NULL, '2021-02-06', '2021-02-06 12:36:00'),
(14, 'AK', 'ak@gmail.com', '9999999999', 'AAA', 0, NULL, NULL, '2021-02-08', '2021-02-08 12:45:20'),
(15, 'D Y', 'dy@gmail.com', '9999999999', 'DYY', 0, NULL, NULL, '2021-02-08', '2021-02-08 12:50:04'),
(16, 'S Y', 'www@gmail.com', '1111111111', 'ddd', 0, NULL, NULL, '2021-02-08', '2021-02-08 12:55:32'),
(17, 'S Y', 'sy@gmail.com', '0000000000', 'AJAY', 0, NULL, NULL, '2021-02-09', '2021-02-09 05:13:29'),
(18, 'S Y', 'sanjay@gmail.com', '0000000000', 'abc', 0, NULL, NULL, '2021-02-09', '2021-02-09 05:14:31'),
(19, 'QQQ', 'qq@g', '8989898989', 'QQQQ', 0, NULL, NULL, '2021-02-09', '2021-02-09 12:03:42');

-- --------------------------------------------------------

--
-- Stand-in structure for view `total_login_time`
-- (See below for the actual view)
--
CREATE TABLE `total_login_time` (
`user_id` int(11)
,`total_time` time
,`cltime` bigint(21)
,`name` varchar(255)
,`email` varchar(255)
,`mobile_no` varchar(15)
,`status` int(11)
,`company_name` varchar(255)
,`created_at` date
);

-- --------------------------------------------------------

--
-- Table structure for table `total_login__times`
--

CREATE TABLE `total_login__times` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `login_time` datetime NOT NULL,
  `logout_time` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `total_login__times`
--

INSERT INTO `total_login__times` (`id`, `user_id`, `login_time`, `logout_time`, `created_at`, `updated_at`) VALUES
(1, 9, '2021-02-01 12:30:24', '2021-02-09 12:21:27', '2021-02-01 12:30:24', '2021-02-01 12:30:24'),
(2, 9, '2021-02-01 12:34:57', '2021-02-09 12:21:27', '2021-02-01 12:34:57', '2021-02-01 12:34:57'),
(3, 9, '2021-02-01 12:45:21', '2021-02-09 12:21:27', '2021-02-01 12:45:21', '2021-02-01 12:45:21'),
(4, 10, '2021-02-01 12:48:41', '2021-02-01 12:48:47', '2021-02-01 12:48:41', '2021-02-01 12:48:41'),
(5, 9, '2021-02-02 05:25:08', '2021-02-09 12:21:27', '2021-02-02 05:25:08', '2021-02-02 05:25:08'),
(6, 9, '2021-02-02 05:25:08', '2021-02-09 12:21:27', '2021-02-02 05:25:08', '2021-02-02 05:25:08'),
(7, 9, '2021-02-02 05:26:04', '2021-02-09 12:21:27', '2021-02-02 05:26:04', '2021-02-02 05:26:04'),
(8, 9, '2021-02-02 07:28:43', '2021-02-09 12:21:27', '2021-02-02 07:28:43', '2021-02-02 07:28:43'),
(9, 9, '2021-02-03 05:53:13', '2021-02-09 12:21:27', '2021-02-03 05:53:13', '2021-02-03 05:53:13'),
(10, 9, '2021-02-03 09:43:41', '2021-02-09 12:21:27', '2021-02-03 09:43:41', '2021-02-03 09:43:41'),
(11, 9, '2021-02-03 09:56:29', '2021-02-09 12:21:27', '2021-02-03 09:56:29', '2021-02-03 09:56:29'),
(12, 9, '2021-02-04 05:17:25', '2021-02-09 12:21:27', '2021-02-04 05:17:25', '2021-02-04 05:17:25'),
(13, 9, '2021-02-04 05:43:37', '2021-02-09 12:21:27', '2021-02-04 05:43:37', '2021-02-04 05:43:37'),
(14, 9, '2021-02-05 05:08:50', '2021-02-09 12:21:27', '2021-02-05 05:08:50', '2021-02-05 05:08:50'),
(15, 9, '2021-02-05 06:08:43', '2021-02-09 12:21:27', '2021-02-05 06:08:43', '2021-02-05 06:08:43'),
(16, 9, '2021-02-06 05:12:47', '2021-02-09 12:21:27', '2021-02-06 05:12:47', '2021-02-06 05:12:47'),
(17, 9, '2021-02-06 08:11:41', '2021-02-09 12:21:27', '2021-02-06 08:11:41', '2021-02-06 08:11:41'),
(18, 9, '2021-02-06 10:04:11', '2021-02-09 12:21:27', '2021-02-06 10:04:11', '2021-02-06 10:04:11'),
(19, 9, '2021-02-06 10:09:54', '2021-02-09 12:21:27', '2021-02-06 10:09:54', '2021-02-06 10:09:54'),
(20, 9, '2021-02-06 11:19:38', '2021-02-09 12:21:27', '2021-02-06 11:19:38', '2021-02-06 11:19:38'),
(21, 9, '2021-02-06 11:56:05', '2021-02-09 12:21:27', '2021-02-06 11:56:05', '2021-02-06 11:56:05'),
(22, 9, '2021-02-06 12:05:05', '2021-02-09 12:21:27', '2021-02-06 12:05:05', '2021-02-06 12:05:05'),
(23, 9, '2021-02-06 12:05:05', '2021-02-09 12:21:27', '2021-02-06 12:05:05', '2021-02-06 12:05:05'),
(24, 9, '2021-02-06 12:44:03', '2021-02-09 12:21:27', '2021-02-06 12:44:03', '2021-02-06 12:44:03'),
(25, 9, '2021-02-08 04:34:46', '2021-02-09 12:21:27', '2021-02-08 04:34:46', '2021-02-08 04:34:46'),
(26, 9, '2021-02-08 04:40:39', '2021-02-09 12:21:27', '2021-02-08 04:40:39', '2021-02-08 04:40:39'),
(27, 9, '2021-02-08 06:45:53', '2021-02-09 12:21:27', '2021-02-08 06:45:53', '2021-02-08 06:45:53'),
(28, 9, '2021-02-09 05:15:57', '2021-02-09 12:21:27', '2021-02-09 05:15:57', '2021-02-09 05:15:57'),
(29, 9, '2021-02-09 10:40:36', '2021-02-09 12:21:27', '2021-02-09 10:40:36', '2021-02-09 10:40:36'),
(30, 9, '2021-02-09 12:04:46', '2021-02-09 12:21:27', '2021-02-09 12:04:46', '2021-02-09 12:04:46');

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
-- Structure for view `all_comments`
--
DROP TABLE IF EXISTS `all_comments`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `all_comments`  AS SELECT `a`.`id` AS `id`, `a`.`description` AS `description`, `a`.`u_id` AS `u_id`, `a`.`created_at` AS `created_at`, `a`.`updated_at` AS `updated_at`, `b`.`name` AS `name`, `b`.`email` AS `email`, `b`.`mobile_no` AS `mobile_no`, `b`.`company_name` AS `company_name` FROM (`tbl_users` `b` join `cmms` `a` on(`b`.`id` = `a`.`u_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `total_login_time`
--
DROP TABLE IF EXISTS `total_login_time`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `total_login_time`  AS SELECT `a`.`user_id` AS `user_id`, timediff(max(`a`.`logout_time`),min(`a`.`login_time`)) AS `total_time`, count(`a`.`user_id`) AS `cltime`, `b`.`name` AS `name`, `b`.`email` AS `email`, `b`.`mobile_no` AS `mobile_no`, `b`.`status` AS `status`, `b`.`company_name` AS `company_name`, `b`.`created_at` AS `created_at` FROM (`total_login__times` `a` join `tbl_users` `b` on(`a`.`user_id` = `b`.`id`)) GROUP BY `a`.`user_id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminregs`
--
ALTER TABLE `adminregs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_regs`
--
ALTER TABLE `admin_regs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all_login_users`
--
ALTER TABLE `all_login_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `change_videos`
--
ALTER TABLE `change_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmms`
--
ALTER TABLE `cmms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coments`
--
ALTER TABLE `coments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fpulscolor`
--
ALTER TABLE `fpulscolor`
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
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reg_page`
--
ALTER TABLE `tbl_reg_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `total_login__times`
--
ALTER TABLE `total_login__times`
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
-- AUTO_INCREMENT for table `adminregs`
--
ALTER TABLE `adminregs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_regs`
--
ALTER TABLE `admin_regs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `all_login_users`
--
ALTER TABLE `all_login_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `change_videos`
--
ALTER TABLE `change_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cmms`
--
ALTER TABLE `cmms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `coments`
--
ALTER TABLE `coments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fpulscolor`
--
ALTER TABLE `fpulscolor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_reg_page`
--
ALTER TABLE `tbl_reg_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `total_login__times`
--
ALTER TABLE `total_login__times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
