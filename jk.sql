-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2021 at 09:57 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jk`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminregs`
--

CREATE TABLE `adminregs` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminregs`
--

INSERT INTO `adminregs` (`admin_id`, `name`, `email`, `mobile_no`, `company_name`, `image`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Sanjay', 'sanjay@gmail.com', '0000000000', 'G Earth', 'admin.png', 'admin', '2021-03-03 05:10:12', '2021-03-03 05:10:12'),
(2, 'Ajay', 'ajay@gmail.com', '0000000000', 'G Earth', '16157993751.png', 'user', '2021-03-15 03:39:35', '2021-03-15 03:39:35');

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

--
-- Dumping data for table `admin_regs`
--

INSERT INTO `admin_regs` (`id`, `name`, `email`, `mobile_no`, `company_name`, `created_at`, `updated_at`) VALUES
(1, 'Sanjay', 'www@gmail.com', '0000000000', 'G Earth', '2021-03-03 04:20:57', '2021-03-03 04:20:57');

-- --------------------------------------------------------

--
-- Stand-in structure for view `all_comments`
-- (See below for the actual view)
--
CREATE TABLE `all_comments` (
`id` bigint(20) unsigned
,`u_id` int(11)
,`description` text
,`name` varchar(255)
,`email` varchar(255)
,`status` int(11)
,`mobile_no` varchar(15)
,`company_name` varchar(255)
,`created_at` timestamp
,`updated_at` timestamp
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

-- --------------------------------------------------------

--
-- Table structure for table `change_videos`
--

CREATE TABLE `change_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `change_videos`
--

INSERT INTO `change_videos` (`id`, `url`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'https://player.vimeo.com/video/536259585', '16176028011.png', '2021-02-15 02:01:14', '2021-04-13 07:22:46');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `email`, `mobile_no`, `image`) VALUES
(1, 'admin@streamy.in', '0000000000', 'admin.png');

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
(1, 'sss', 1, '2021-04-14 06:50:41', '2021-04-14 06:50:41'),
(2, 'ssss', 1, '2021-04-16 17:40:19', '2021-04-16 17:40:19'),
(3, 'hlw', 1, '2021-04-16 18:01:07', '2021-04-16 18:01:07'),
(4, 'hlw my name sanjay yadav', 2, '2021-04-16 18:01:51', '2021-04-16 18:01:51'),
(5, 'aaa', 1, '2021-04-16 18:54:21', '2021-04-16 18:54:21'),
(6, 'ss', 1, '2021-04-16 18:54:50', '2021-04-16 18:54:50'),
(7, 'kkkk', 1, '2021-04-16 18:57:26', '2021-04-16 18:57:26'),
(8, 'dddddddddddddd', 1, '2021-04-16 18:57:55', '2021-04-16 18:57:55'),
(9, 'ggggggg', 1, '2021-04-16 18:58:12', '2021-04-16 18:58:12'),
(10, 'mmmmmmmmmmmmmm', 1, '2021-04-16 18:58:42', '2021-04-16 18:58:42'),
(11, 'ddddddddd', 1, '2021-04-16 19:00:44', '2021-04-16 19:00:44'),
(12, 'yes i am goog', 1, '2021-04-16 19:01:35', '2021-04-16 19:01:35'),
(13, ',ll;l;l', 1, '2021-04-16 19:09:33', '2021-04-16 19:09:33'),
(14, 'Hey Ram', 1, '2021-04-19 11:49:24', '2021-04-19 11:49:24'),
(15, 'jjjjj', 1, '2021-04-19 11:54:57', '2021-04-19 11:54:57'),
(16, 'kkk', 1, '2021-04-19 11:55:43', '2021-04-19 11:55:43'),
(17, 'jk\\', 1, '2021-04-19 11:56:10', '2021-04-19 11:56:10'),
(18, 'hlw san jay', 1, '2021-04-19 12:03:45', '2021-04-19 12:03:45'),
(19, 'kld', 1, '2021-04-20 07:18:59', '2021-04-20 07:18:59'),
(20, 'hi im devp.', 1, '2021-04-20 07:42:32', '2021-04-20 07:42:32'),
(21, 'hlw sir', 1, '2021-04-20 07:46:05', '2021-04-20 07:46:05'),
(22, 'no sir', 1, '2021-04-20 07:49:04', '2021-04-20 07:49:04'),
(23, 'yes sir ...', 1, '2021-04-20 07:53:28', '2021-04-20 07:53:28'),
(24, 'yes no', 1, '2021-04-20 07:55:47', '2021-04-20 07:55:47'),
(25, 'hhhh', 1, '2021-04-20 07:56:11', '2021-04-20 07:56:11'),
(26, 'yes kya ho rha hai', 1, '2021-04-20 07:56:23', '2021-04-20 07:56:23'),
(27, 'kj;ljol', 1, '2021-04-20 07:56:43', '2021-04-20 07:56:43'),
(28, 'ilkokp', 1, '2021-04-20 07:56:46', '2021-04-20 07:56:46'),
(29, 'hlw mr', 1, '2021-04-20 07:57:59', '2021-04-20 07:57:59'),
(30, 'hlw Prabhat', 1, '2021-04-20 08:00:35', '2021-04-20 08:00:35'),
(31, 'kun', 1, '2021-04-20 08:02:46', '2021-04-20 08:02:46'),
(32, 'kioyyyu', 1, '2021-04-20 08:16:02', '2021-04-20 08:16:02'),
(33, 'kya name hai', 1, '2021-04-20 08:17:35', '2021-04-20 08:17:35'),
(34, 'kun ho tum', 5, '2021-04-20 08:23:23', '2021-04-20 08:23:23'),
(35, 'jgftred', 5, '2021-04-20 08:23:47', '2021-04-20 08:23:47');

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

-- --------------------------------------------------------

--
-- Table structure for table `dy_pulse`
--

CREATE TABLE `dy_pulse` (
  `id` int(11) NOT NULL,
  `color` varchar(255) NOT NULL,
  `m_top` varchar(255) NOT NULL,
  `m_left` varchar(255) NOT NULL,
  `pheight` varchar(255) NOT NULL,
  `pwidth` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `img3` varchar(255) NOT NULL,
  `img4` varchar(255) NOT NULL,
  `img5` varchar(255) NOT NULL,
  `video_st` int(11) NOT NULL DEFAULT 0,
  `file_st` int(11) NOT NULL DEFAULT 0,
  `paction_st` int(11) NOT NULL,
  `img_st` int(11) NOT NULL,
  `pb_st` int(11) NOT NULL,
  `aj_st` int(11) NOT NULL,
  `pbi_st` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dy_pulse`
--

INSERT INTO `dy_pulse` (`id`, `color`, `m_top`, `m_left`, `pheight`, `pwidth`, `url`, `img2`, `img3`, `img4`, `img5`, `video_st`, `file_st`, `paction_st`, `img_st`, `pb_st`, `aj_st`, `pbi_st`) VALUES
(1, '#2316da', '67.6057%', '28.8362%', '2.6357%', '1.48258%', 'https://www.youtube.com/embed/_dOoqN9fi0U', '161588766533.jpg', '16158876654.jpg', '16158876653.jpg', '', 1, 0, 0, 0, 0, 0, 0),
(2, '#2316da', '62.7296%', '49.444%', '2.6357%', '1.48258%', 'ballroom', '', '', '', '', 0, 0, 1, 0, 0, 0, 0),
(3, '#2316da', '67.7375%', '69.8295%', '2.6357%', '1.48258%', 'https://platinumsupremo.vbooth.me/booth/9dNnNDdm', '', '', '', '', 0, 0, 0, 0, 1, 0, 0),
(4, '#2316da', '68.001%', '90.9563%', '2.6357%', '1.48258%', '16158878632.pdf', '', '', '', '', 0, 1, 0, 0, 0, 0, 0),
(7, '#2316da', '61.0935%', '37.1447%', '2.63565%', '1.48255%', 'https://www.youtube.com/embed/_tRvAqAGLX4', '', '', '', '', 1, 0, 0, 0, 0, 0, 0);

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
  `lobby_img` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `m_top` int(11) NOT NULL,
  `m_left` int(11) NOT NULL,
  `color2` varchar(255) NOT NULL,
  `m_top2` int(11) NOT NULL,
  `m_left2` int(11) NOT NULL,
  `color3` varchar(255) NOT NULL,
  `m_top3` int(11) NOT NULL,
  `m_left3` int(11) NOT NULL,
  `fpp` int(11) NOT NULL DEFAULT 0,
  `spp` int(11) NOT NULL DEFAULT 0,
  `tpp` int(11) NOT NULL DEFAULT 0,
  `file_link` varchar(255) NOT NULL,
  `file_link1` varchar(255) NOT NULL,
  `file_link3` varchar(255) NOT NULL,
  `fpfls` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fpulscolor`
--

INSERT INTO `fpulscolor` (`id`, `lobby_img`, `color`, `m_top`, `m_left`, `color2`, `m_top2`, `m_left2`, `color3`, `m_top3`, `m_left3`, `fpp`, `spp`, `tpp`, `file_link`, `file_link1`, `file_link3`, `fpfls`) VALUES
(1, '1618319430.png', '', 0, 0, '', 0, 0, '', 0, 0, 0, 0, 0, '', '16136331081.pdf', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `img_slider`
--

CREATE TABLE `img_slider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `name2` varchar(255) NOT NULL,
  `name3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `img_slider`
--

INSERT INTO `img_slider` (`id`, `name`, `name2`, `name3`) VALUES
(1, '1.jpg', '2.webp', '3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `lobby_videos`
--

CREATE TABLE `lobby_videos` (
  `id` int(11) NOT NULL,
  `m_top` varchar(255) NOT NULL,
  `m_left` varchar(255) NOT NULL,
  `vheight` varchar(255) NOT NULL,
  `vwidth` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `v_st` int(11) NOT NULL DEFAULT 1,
  `vm_st` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lobby_videos`
--

INSERT INTO `lobby_videos` (`id`, `m_top`, `m_left`, `vheight`, `vwidth`, `url`, `v_st`, `vm_st`) VALUES
(1, '36.8998%', '39.4366%', '23.0624%', '21.7927%', '500343760', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `l_r_page`
--

CREATE TABLE `l_r_page` (
  `id` int(255) NOT NULL,
  `page_st` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `l_r_page`
--

INSERT INTO `l_r_page` (`id`, `page_st`) VALUES
(1, 1);

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
(17, '2021_02_01_052116_create_change_videos_table', 3),
(18, '2021_04_17_074631_create_sessions_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `newevnts`
--

CREATE TABLE `newevnts` (
  `envt_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `eurl` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newevnts`
--

INSERT INTO `newevnts` (`envt_id`, `name`, `company_name`, `eurl`, `created_at`, `updated_at`) VALUES
(1, 'oreo', 'G Earth', '', '2021-03-15 23:42:24', '2021-03-15 23:42:24'),
(2, 'IPL', 'wow', '', '2021-03-16 01:41:00', '2021-03-16 01:41:00'),
(3, 'Ajay', 'Event', 'http://127.0.0.1:8000/ajay', '2021-03-16 01:58:15', '2021-03-16 01:58:15');

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
('MnR6vfQKpc5QDlKBZ1AxeJ0RVmDdTdGXo2jcFkQh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'YToxMDp7czo2OiJfdG9rZW4iO3M6NDA6ImdieVhDbTNzZXBYN2t5TjN5N2ZWUmltbE5pa096YWFQMThpVGpXN0kiO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvbG9iYnkiO31zOjQ6Im5hbWUiO3M6NjoiQmFja3VwIjtzOjI6ImlkIjtzOjQwOiJNblI2dmZRS3BjNVFEbEtCWjFBeGVKMFJWbURkVGRHWG8yamNGa1FoIjtzOjc6InVzZXJfaWQiO2k6MTtzOjEwOiJpcF9hZGRyZXNzIjtzOjk6IjEyNy4wLjAuMSI7czoxMDoidXNlcl9hZ2VudCI7czoxMTQ6Ik1vemlsbGEvNS4wIChXaW5kb3dzIE5UIDYuMTsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzg5LjAuNDM4OS4xMjggU2FmYXJpLzUzNy4zNiI7czo3OiJwYXlsb2FkIjtzOjEyNDoiWDNSdmEyVnVQV2RpZVZoRGJUTnpaWEJZTjJ0NVRqTjVOMlpXVW1sdGJFNXBhMDk2WVdGUU1UaHBWR3BYTjBrbVpXMWhhV3c5YzJGdWFtRjVKVFF3WjIxaGFXd3VZMjl0Sm0xdlltbHNaVjl1Ynowd01EQXdNREF3TURBdyI7czoxMzoibGFzdF9hY3Rpdml0eSI7aToxNjE4OTgwNjAwO30=', 1618983742);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `bgimg` varchar(255) NOT NULL,
  `mbgimg` varchar(255) NOT NULL,
  `thank_img` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `btn_color` varchar(255) NOT NULL,
  `text_color` varchar(255) NOT NULL,
  `page_st` int(11) NOT NULL DEFAULT 0,
  `lobby_st` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `bgimg`, `mbgimg`, `thank_img`, `color`, `btn_color`, `text_color`, `page_st`, `lobby_st`) VALUES
(1, '16183321831.png', '16183321832.png', '16174547003.jpg', '#c88da8', '#a4255c', '#ffffff', 1, 0);

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
  `commentimg` varchar(255) NOT NULL,
  `page_st` int(11) DEFAULT NULL,
  `lobby_st` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_logo`
--

INSERT INTO `tbl_logo` (`id`, `ficon`, `logo`, `lbgc`, `lbgimg`, `rbgc`, `rbgimg`, `lobbyimg`, `commentimg`, `page_st`, `lobby_st`) VALUES
(1, '16183320842.png', '16183320841.png', '#ffffff', '1612782725.png', '#ffffff', '1612862696.png', '1612605894.png', '16148430403.png', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_register`
--

CREATE TABLE `tbl_register` (
  `id` int(11) NOT NULL,
  `bgimg` varchar(255) NOT NULL,
  `mbgimg` varchar(255) NOT NULL,
  `sbgimg` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `btn_color` varchar(255) NOT NULL,
  `text_color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_register`
--

INSERT INTO `tbl_register` (`id`, `bgimg`, `mbgimg`, `sbgimg`, `color`, `btn_color`, `text_color`) VALUES
(1, '16173614561.png', '16173625322.png', '16173614563.png', '#ffffff', '#fee804', '#020202');

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
-- Table structure for table `tbl_thank`
--

CREATE TABLE `tbl_thank` (
  `id` int(11) NOT NULL,
  `thank_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_thank`
--

INSERT INTO `tbl_thank` (`id`, `thank_img`) VALUES
(1, '16152823881.jpg');

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
  `agree` varchar(255) NOT NULL,
  `eurl` varchar(255) NOT NULL,
  `status` int(11) DEFAULT 0,
  `login_time` time DEFAULT '00:00:00',
  `logout_time` time DEFAULT '00:00:00',
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `email`, `mobile_no`, `company_name`, `agree`, `eurl`, `status`, `login_time`, `logout_time`, `created_at`, `updated_at`) VALUES
(1, 'Backup', 'sanjay@gmail.com', '0000000000', 'G Earth', 'I AM A DEALER', '', 1, '04:50:00', '07:23:09', '2021-04-05 10:40:31', '2021-04-05 10:40:31'),
(2, 'IPL', 'sanjay@gmail.com', '0000000000', 'G Earth', 'I AM A DEALER', '', 0, '00:00:00', '11:54:15', '2021-04-05 10:50:27', '2021-04-05 10:50:27'),
(3, 'Sanjay', 'sanjay@gmail.com', '0000000000', 'G Earth', 'I AM A DEALER', '', 0, '00:00:00', '00:00:00', '2021-04-05 13:15:48', '2021-04-05 13:15:48'),
(4, 'Sanjay', 'sanjay@gmail.com', '0000000000', 'G Earth', 'I AM A DEALER', '', 0, '00:00:00', '00:00:00', '2021-04-05 13:20:24', '2021-04-05 13:20:24'),
(5, 'qq', 'ss@gmail.com', '9999999999', 'wow', 'I AM A DEALER', '', 1, '08:21:30', '12:13:20', '2021-04-05 18:07:31', '2021-04-05 18:07:31'),
(6, 'Sanjay', 'yadav224210@gmail.com', '1111122222', 'G Earth', 'I AM A DEALER', '', 0, '00:00:00', '00:00:00', '2021-04-06 13:23:05', '2021-04-06 13:23:05'),
(7, 'Sanjay', 'yadav224210@gmail.com', '0000000000', 'G Earth', 'I AM A DEALER', '', 0, '00:00:00', '00:00:00', '2021-04-06 13:24:57', '2021-04-06 13:24:57'),
(8, 'Sanjay', 'yadav224210@gmail.com', '1111122222', 'G Earth', 'I AM AN EMPLOYEE', '', 0, '00:00:00', '00:00:00', '2021-04-06 13:28:19', '2021-04-06 13:28:19'),
(9, 'Sanjay', 'sanjay@gmail.com', '0000000000', 'G Earth', 'I AM AN EMPLOYEE', '', 0, '00:00:00', '00:00:00', '2021-04-06 13:28:38', '2021-04-06 13:28:38');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users1`
--

CREATE TABLE `tbl_users1` (
  `id` int(11) NOT NULL,
  `agree` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `login_time` time NOT NULL DEFAULT '00:00:00',
  `logout_time` time NOT NULL DEFAULT '00:00:00',
  `created_at` varchar(255) NOT NULL DEFAULT '0',
  `updated_at` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users1`
--

INSERT INTO `tbl_users1` (`id`, `agree`, `company_name`, `email`, `name`, `mobile_no`, `status`, `login_time`, `logout_time`, `created_at`, `updated_at`) VALUES
(2, 'C1', '020:Delhi - Okhla', '45029', 'GARG SANITARY & MARBLE HOUSE', '9312037046', 0, '12:43:37', '12:45:55', '0', '0'),
(3, 'C1', '020:Delhi - Okhla', '46026', 'GOEL PAINTS & H/W STORE,', '9818811632', 1, '12:46:16', '00:00:00', '0', '0'),
(4, 'C1', '041:Delhi-5 (Punjabibagh)', '70407', 'KAPOOR TRADING COMPANY,', '9210312009', 0, '00:00:00', '00:00:00', '0', '0'),
(5, 'C1', '041:Delhi-5 (Punjabibagh)', '70976', 'NAVYUG SALES CORPN.', '9582805460', 0, '00:00:00', '12:37:14', '0', '0'),
(6, 'C1', '041:Delhi-5 (Punjabibagh)', '88556', 'ASHOKA ENTERPRISES', '9953667770', 0, '00:00:00', '00:00:00', '0', '0'),
(7, 'C1', '085:Delhi-4 (Mandoli)', '47262', 'POONAM PAINTS', '9810565570', 0, '00:00:00', '00:00:00', '0', '0'),
(8, 'C1', '085:Delhi-4 (Mandoli)', '47385', 'AMBA SANITARY STORE PVT. LTD.', '9871271711', 0, '00:00:00', '00:00:00', '0', '0'),
(9, 'C1', '085:Delhi-4 (Mandoli)', '47976', 'PAWAN PAINT & H/W STORE', '9891199588', 0, '00:00:00', '00:00:00', '0', '0'),
(10, 'C1', '085:Delhi-4 (Mandoli)', '49079', 'M/S GANESH PAINTS', '9810053383', 0, '12:41:58', '12:43:12', '0', '0'),
(11, 'C1', '085:Delhi-4 (Mandoli)', '92332', 'NARULA PAINTS PVT. LTD', '9811461427', 0, '00:00:00', '00:00:00', '0', '0'),
(12, 'C1', '086:Delhi-3 (Janakpuri)', '45906', 'MIGLANI GLASS & H/W STORE', '9213275304', 0, '00:00:00', '00:00:00', '0', '0'),
(13, 'C1', '086:Delhi-3 (Janakpuri)', '48982', 'UNITED PAINTS & SANITARY WARE,', '9810359023', 0, '00:00:00', '00:00:00', '0', '0'),
(14, 'C1', '113:Delhi-6 (Rohini)', '46430', 'S.K.AGGARWAL SANITARY PAINTS & H/W STORE', '9312280631', 0, '00:00:00', '00:00:00', '0', '0'),
(15, 'C1', '113:Delhi-6 (Rohini)', '150155', 'MAXIM ENTERPRISES', '7503102444', 0, '00:00:00', '00:00:00', '0', '0'),
(16, 'C2', '024:Ghaziabad', '45756', 'SHRI BALAJI PAINTS', '9350740272', 0, '00:00:00', '00:00:00', '0', '0'),
(17, 'C2', '024:Ghaziabad', '46767', 'LACHU MAL TRADERS,', '9412216780', 0, '00:00:00', '00:00:00', '0', '0'),
(18, 'C2', '024:Ghaziabad', '48247', 'AGARWAL PAINTS& H/W', '9910460025', 0, '00:00:00', '00:00:00', '0', '0'),
(19, 'C2', '024:Ghaziabad', '49304', 'SHIVA HARDWARE $SANITARY STORE', '9871312948', 0, '00:00:00', '00:00:00', '0', '0'),
(20, 'C2', '024:Ghaziabad', '101121', 'Navrang Paint House', '9210717181', 0, '00:00:00', '00:00:00', '0', '0'),
(21, 'C2', '024:Ghaziabad', '142798', 'RAMA PAINTS HARDWARE AND SANITORY', '9873144790', 0, '00:00:00', '00:00:00', '0', '0'),
(22, 'C2', '024:Ghaziabad', '147512', 'SIDDH BABA CONSTRUCTION CO.', '9536877788', 0, '00:00:00', '00:00:00', '0', '0'),
(23, 'C2', '045:Noida', '132122', 'Maa Bhagwati Traders', '9582737063', 0, '00:00:00', '00:00:00', '0', '0'),
(24, 'C2', '082:Agra', '46038', 'BINDAL PAINT STORES', '9897540883', 0, '00:00:00', '00:00:00', '0', '0'),
(25, 'C2', '082:Agra', '47642', 'GUPTA PAINTS & SAINATARY STORE', '9410408686', 0, '00:00:00', '00:00:00', '0', '0'),
(26, 'C2', '082:Agra', '50550', 'MAA BHAGWATI PAINTS & H/W', '9319486709', 0, '00:00:00', '00:00:00', '0', '0'),
(27, 'C2', '082:Agra', '76362', 'PANDEY TRADERS', '8938846318', 0, '00:00:00', '00:00:00', '0', '0'),
(28, 'C2', '082:Agra', '81717', 'KUNAL HARDWARE & PAINT STORE', '9837566027', 0, '00:00:00', '00:00:00', '0', '0'),
(29, 'C2', '082:Agra', '150593', 'Rahul Paint Agencies', '8171130006', 0, '00:00:00', '00:00:00', '0', '0'),
(30, 'C2', '084:Bareilly', '46958', 'KHANDELWAL ENTERPRISES', '9319966541', 0, '00:00:00', '00:00:00', '0', '0'),
(31, 'C2', '084:Bareilly', '76765', 'PANKAJ PAINT STORE', '9457281035', 0, '00:00:00', '00:00:00', '0', '0'),
(32, 'C2', '084:Bareilly', '127245', 'KUMAR TRADERS', '9837908952', 0, '00:00:00', '00:00:00', '0', '0'),
(33, 'C2', '142:Moradabad', '45030', 'WHITE WASH TRADING COMPANY', '9837099887', 0, '00:00:00', '00:00:00', '0', '0'),
(34, 'C2', '142:Moradabad', '45492', 'BOBBY PAINTS STORE', '9837022303', 0, '00:00:00', '00:00:00', '0', '0'),
(35, 'C2', '142:Moradabad', '46791', 'RASTOGI PAINTS & VARNISH STORES', '9837060516', 0, '00:00:00', '00:00:00', '0', '0'),
(36, 'C2', '142:Moradabad', '47618', 'R. M. TRADERS', '9837026163', 0, '00:00:00', '00:00:00', '0', '0'),
(37, 'C2', '142:Moradabad', '49052', 'BAHUBALI TRADERS', '9927374260', 0, '00:00:00', '00:00:00', '0', '0'),
(38, 'C2', '211:Meerut', '50246', 'SHIVA PAINTS & H/W', '8439997440', 0, '00:00:00', '00:00:00', '0', '0'),
(39, 'C3', '021:Lucknow', '56060', 'JAI MAA CHINTPURNI     R TRADER', '9621741223', 0, '00:00:00', '00:00:00', '0', '0'),
(40, 'C3', '021:Lucknow', '56299', 'SHRI BAJRANG H/W & SANITARY STORE', '8090797716', 0, '00:00:00', '00:00:00', '0', '0'),
(41, 'C3', '021:Lucknow', '56611', 'NEW KANYAL PAINTS & HARDW RE', '7752856706', 0, '00:00:00', '00:00:00', '0', '0'),
(42, 'C3', '021:Lucknow', '56793', 'AVADH H/W. PAINT CENTRE,', '9451408565', 0, '00:00:00', '00:00:00', '0', '0'),
(43, 'C3', '021:Lucknow', '57063', 'KRISHNA H/W & PAINTS', '9335757358', 0, '00:00:00', '00:00:00', '0', '0'),
(44, 'C3', '021:Lucknow', '58922', 'CHAURASIA TRADERS', '9415010418', 0, '00:00:00', '00:00:00', '0', '0'),
(45, 'C3', '021:Lucknow', '59409', 'GAURI HARDWARE AND PAINTS', '7619991114', 0, '00:00:00', '00:00:00', '0', '0'),
(46, 'C3', '021:Lucknow', '60110', 'R. K. PAINTS', '9415160121', 0, '00:00:00', '00:00:00', '0', '0'),
(47, 'C3', '021:Lucknow', '60343', 'MITTAL TRADING COMPANY', '9307122352', 0, '00:00:00', '00:00:00', '0', '0'),
(48, 'C3', '021:Lucknow', '60695', 'RAJDHANI MOSAIC TRADERS', '8795555587', 0, '00:00:00', '00:00:00', '0', '0'),
(49, 'C3', '021:Lucknow', '61021', 'VAISHNAV ENTERPRISES', '8896979945', 0, '00:00:00', '00:00:00', '0', '0'),
(50, 'C3', '021:Lucknow', '61183', 'AAKASH DEEP', '9415177644', 0, '00:00:00', '00:00:00', '0', '0'),
(51, 'C3', '021:Lucknow', '61459', 'MANOJ H/W & PAINTS', '9415588000', 0, '00:00:00', '00:00:00', '0', '0'),
(52, 'C3', '021:Lucknow', '61553', 'MAHESH H/W & PLYWOOD CENTER', '9838180080', 0, '00:00:00', '00:00:00', '0', '0'),
(53, 'C3', '021:Lucknow', '62177', 'FAIR TRADE COMPANY', '8400043300', 0, '00:00:00', '00:00:00', '0', '0'),
(54, 'C3', '021:Lucknow', '62234', 'AGARWAL PAINT STORE', '9792699222', 0, '00:00:00', '00:00:00', '0', '0'),
(55, 'C3', '021:Lucknow', '62894', 'SHRI BALAJI TRADERS', '9792282275', 0, '00:00:00', '00:00:00', '0', '0'),
(56, 'C3', '021:Lucknow', '63268', 'RANGOLI PAINTS', '9044007944', 0, '00:00:00', '00:00:00', '0', '0'),
(57, 'C3', '021:Lucknow', '63288', 'PRAVEEN IRON STORE', '7860022012', 0, '00:00:00', '00:00:00', '0', '0'),
(58, 'C3', '021:Lucknow', '63548', 'BANSAL AGENCIES', '9839877794', 0, '00:00:00', '00:00:00', '0', '0'),
(59, 'C3', '021:Lucknow', '63777', 'GARG HARDWARE & PAINT STORE', '9450220333', 0, '00:00:00', '00:00:00', '0', '0'),
(60, 'C3', '021:Lucknow', '64376', 'KEWAL PAINTS', '9452888888', 0, '00:00:00', '00:00:00', '0', '0'),
(61, 'C3', '021:Lucknow', '64426', 'ARCHANA PAINT.', '8565876088', 0, '00:00:00', '00:00:00', '0', '0'),
(62, 'C3', '021:Lucknow', '64426', 'ARCHANA PAINT.', '8565876088', 0, '00:00:00', '00:00:00', '0', '0'),
(63, 'C3', '021:Lucknow', '76344', 'MAA VAISHNAVI PAINT & HARDWARE', '9305672138', 0, '00:00:00', '00:00:00', '0', '0'),
(64, 'C3', '021:Lucknow', '87575', 'Rahul Traders', '9335908194', 0, '00:00:00', '00:00:00', '0', '0'),
(65, 'C3', '021:Lucknow', '93840', 'NEW PAL HARDWARE & SANITARY STORE', '9305109178', 0, '00:00:00', '00:00:00', '0', '0'),
(66, 'C3', '021:Lucknow', '97522', 'M/S CHANDRA TRADERS', '9415548650', 0, '00:00:00', '00:00:00', '0', '0'),
(67, 'C3', '021:Lucknow', '98369', 'M/S SAI PAINT & HARDWARE', '9389322575', 0, '00:00:00', '00:00:00', '0', '0'),
(68, 'C3', '021:Lucknow', '99872', 'M/S NARAYAN TRADERS', '9335953342', 0, '00:00:00', '00:00:00', '0', '0'),
(69, 'C3', '021:Lucknow', '115865', 'M/S HARI LOHA BHANDAR', '8874720050', 0, '00:00:00', '00:00:00', '0', '0'),
(70, 'C3', '021:Lucknow', '132261', 'TRIDEO TRADERS', '8123701125', 0, '00:00:00', '00:00:00', '0', '0'),
(71, 'C3', '026:Varanasi', '65599', 'ROSHAN PAINT', '9236512615', 0, '00:00:00', '00:00:00', '0', '0'),
(72, 'C3', '026:Varanasi', '65724', 'GAYATRI PD.RAJENDRA KUMAR', '9415834114', 0, '00:00:00', '00:00:00', '0', '0'),
(73, 'C3', '026:Varanasi', '65781', 'HAJI NAZIR AHMAD MONEER AHMAD ,', '9415888076', 0, '00:00:00', '00:00:00', '0', '0'),
(74, 'C3', '026:Varanasi', '65831', 'SANDEEP PAINTS AND LIME STORE', '9838004123', 0, '00:00:00', '00:00:00', '0', '0'),
(75, 'C3', '026:Varanasi', '65905', 'GAURISHANKER SOBHNATRH', '9621941752', 0, '00:00:00', '00:00:00', '0', '0'),
(76, 'C3', '026:Varanasi', '75811', 'VIKASH HARDWARE & PAINT STORE', '9839445968', 0, '00:00:00', '00:00:00', '0', '0'),
(77, 'C3', '026:Varanasi', '140661', 'M/S NAV BHARAT AUTO PAINT STORE', '9389329751', 0, '00:00:00', '00:00:00', '0', '0'),
(78, 'C3', '042:Haldwani', '45863', 'GOKUL CHAND SUBHASH KUMAR', '9412095628', 0, '00:00:00', '00:00:00', '0', '0'),
(79, 'C3', '042:Haldwani', '46417', 'M/S SETHIA SONS', '9837042388', 0, '00:00:00', '00:00:00', '0', '0'),
(80, 'C3', '042:Haldwani', '46569', 'M/S DEVENDRA IRON STORES,', '9837083960', 0, '00:00:00', '00:00:00', '0', '0'),
(81, 'C3', '042:Haldwani', '47433', 'NAMAH SHIVAY ENTERPRISES', '9756608456', 0, '00:00:00', '00:00:00', '0', '0'),
(82, 'C3', '042:Haldwani', '47513', 'JAI LAXMI TRADERS', '9837069432', 0, '00:00:00', '00:00:00', '0', '0'),
(83, 'C3', '042:Haldwani', '48171', 'M/S KAPOOR & SONS.', '9358677097', 0, '00:00:00', '00:00:00', '0', '0'),
(84, 'C3', '042:Haldwani', '48571', 'BHAGWATI HARDWARE & MARBLE HOUSE', '9837789555', 0, '00:00:00', '00:00:00', '0', '0'),
(85, 'C3', '042:Haldwani', '49141', 'MAHENDRA PAINTS', '9927000300', 0, '00:00:00', '00:00:00', '0', '0'),
(86, 'C3', '042:Haldwani', '49512', 'M/S CHUNNI LAL DEVRAJ', '9760025795', 0, '00:00:00', '00:00:00', '0', '0'),
(87, 'C3', '042:Haldwani', '79990', 'G.N.BROTHERS SANITERY & PAINT STORE', '7906916492', 0, '00:00:00', '00:00:00', '0', '0'),
(88, 'C3', '042:Haldwani', '93524', 'UltraTech Cement Ltd. A/c   Om Shree Ganesh Trading Company', '9758352062', 0, '00:00:00', '00:00:00', '0', '0'),
(89, 'C3', '042:Haldwani', '134453', 'DANISH BUILDER and PAINT STORE', '8077170685', 0, '00:00:00', '00:00:00', '0', '0'),
(90, 'C3', '042:Haldwani', '144455', 'MEHROTRA CEMENT and PAINTS', '6397667022', 0, '00:00:00', '00:00:00', '0', '0'),
(91, 'C3', '064:Gorakhpur', '65751', 'GANGA PRASAD AND SONS', '9415341755', 0, '00:00:00', '00:00:00', '0', '0'),
(92, 'C3', '064:Gorakhpur', '65765', 'KESARWANI HARDWARE', '9838653632', 0, '00:00:00', '00:00:00', '0', '0'),
(93, 'C3', '064:Gorakhpur', '101874', 'Kasaudhan Sanitation', '9918035340', 0, '00:00:00', '00:00:00', '0', '0'),
(94, 'C3', '067:Lucknow-2', '91276', 'M/S  JAISWAL PAINTS', '9721817213', 0, '00:00:00', '00:00:00', '0', '0'),
(95, 'C3', '081:Kanpur', '61567', 'PREM PAINT CO.', '9415130557', 0, '00:00:00', '00:00:00', '0', '0'),
(96, 'C3', '081:Kanpur', '123847', 'KUMAR BUILDING MATERIAL STORE', '8171135855', 0, '00:00:00', '00:00:00', '0', '0'),
(97, 'C3', '153:Prayagraj', '65655', 'DEEP CHAND & BROTHERS', '9335711283', 0, '00:00:00', '00:00:00', '0', '0'),
(98, 'C3', '153:Prayagraj', '98941', 'BHAWAN DECOR', '9616705000', 0, '00:00:00', '00:00:00', '0', '0'),
(99, 'C3', '200:Jhansi', '63044', 'SUNIL TRADERS', '9415412020', 0, '00:00:00', '00:00:00', '0', '0'),
(100, 'C3', '200:Jhansi', '64245', 'TARAN TAARAN PAINTS & H/W', '9889947681', 0, '00:00:00', '00:00:00', '0', '0'),
(101, 'C3', '200:Jhansi', '77949', 'MITTAL SANITORY & HARDWARE', '8896383973', 0, '00:00:00', '00:00:00', '0', '0'),
(102, 'C3', '200:Jhansi', '161143', 'UltraTech Cement Ltd. A/C Rajesh and Brothers', '8707263090', 0, '00:00:00', '00:00:00', '0', '0'),
(103, 'C3', '208:Sitapur', '55568', 'DULLI BABU & SONS', '7007655759', 0, '00:00:00', '00:00:00', '0', '0'),
(104, 'C3', '208:Sitapur', '59960', 'MODERN PAINTS HOUSE', '9792901999', 0, '00:00:00', '00:00:00', '0', '0'),
(105, 'C3', '208:Sitapur', '65443', 'VISHNU KUMAR ASHOK KUMAR', '9415138034', 0, '00:00:00', '00:00:00', '0', '0'),
(106, 'C3', '218:Ayodhya', '107631', 'INDIAN HARDWARE & PAINTS STORE', '9236982958', 0, '00:00:00', '00:00:00', '0', '0'),
(107, 'C4', '012:Indore', '85452', 'GOUTAM HARDWARE.', '9425492152', 0, '00:00:00', '00:00:00', '0', '0'),
(108, 'C4', '072:Jabalpur', '55514', 'M/S KAKU BUILDING MATERIAL', '9425179603', 0, '00:00:00', '00:00:00', '0', '0'),
(109, 'C4', '072:Jabalpur', '55691', 'S.T.S.HARDWARE', '9893249630', 0, '00:00:00', '00:00:00', '0', '0'),
(110, 'C4', '072:Jabalpur', '56174', 'M/S GAYATRI TRADERS', '9893123764', 0, '00:00:00', '00:00:00', '0', '0'),
(111, 'C4', '072:Jabalpur', '56474', 'M/S AGRAWAL AGENCIES', '8839979118', 0, '00:00:00', '00:00:00', '0', '0'),
(112, 'C4', '072:Jabalpur', '57592', 'SHRI RAM H/W STORES', '9425184670', 0, '00:00:00', '00:00:00', '0', '0'),
(113, 'C4', '072:Jabalpur', '58336', 'MUZAFFAR AGENCIES', '9425471792', 0, '00:00:00', '00:00:00', '0', '0'),
(114, 'C4', '072:Jabalpur', '59053', 'BUNTY SALES CORPORATION', '9425035829', 0, '00:00:00', '00:00:00', '0', '0'),
(115, 'C4', '072:Jabalpur', '61634', 'SHARDA PAINT STORE,', '9826605616', 0, '00:00:00', '00:00:00', '0', '0'),
(116, 'C4', '072:Jabalpur', '62655', 'SHRI MATA TRADERS', '9425468641', 0, '00:00:00', '00:00:00', '0', '0'),
(117, 'C4', '072:Jabalpur', '63740', 'M/S PAINT HOUSE', '9425324724', 0, '00:00:00', '00:00:00', '0', '0'),
(118, 'C4', '072:Jabalpur', '64811', 'GLOBE HARDWARE & GENERAL SUPPLIERS,', '9425174680', 0, '00:00:00', '00:00:00', '0', '0'),
(119, 'C4', '072:Jabalpur', '64843', 'VIJAY H/W', '9827550597', 0, '00:00:00', '00:00:00', '0', '0'),
(120, 'C4', '072:Jabalpur', '76398', 'M/S SONAL HARDWARE', '9752186978', 0, '00:00:00', '00:00:00', '0', '0'),
(121, 'C4', '072:Jabalpur', '77377', 'M/S. GURUKRIPA HARDWARE', '9827249503', 0, '00:00:00', '00:00:00', '0', '0'),
(122, 'C4', '072:Jabalpur', '78408', 'M/S NITIN ENTERPRISES', '9479465333', 0, '00:00:00', '00:00:00', '0', '0'),
(123, 'C4', '072:Jabalpur', '87813', 'M/s MAHAVIR PAINTS & HARDWARE', '9893267566', 0, '00:00:00', '00:00:00', '0', '0'),
(124, 'C4', '072:Jabalpur', '88302', 'M/s GUPTA TRADERS', '9755188615', 0, '00:00:00', '00:00:00', '0', '0'),
(125, 'C4', '072:Jabalpur', '106208', 'M/S MAHENDRA H/W & SANITARY', '9424606860', 0, '00:00:00', '00:00:00', '0', '0'),
(126, 'C4', '072:Jabalpur', '115176', 'M/S ULTRATECH BUILDING SOLUTION VARGHESE STEEL TRADERS', '9425462013', 0, '00:00:00', '00:00:00', '0', '0'),
(127, 'C4', '072:Jabalpur', '121958', 'M/S RAGHAV ENTERPRISES', '9174111944', 0, '00:00:00', '00:00:00', '0', '0'),
(128, 'C4', '072:Jabalpur', '127440', 'M/S KSHATRIYA AGENCY', '9826348938', 0, '00:00:00', '00:00:00', '0', '0'),
(129, 'C4', '072:Jabalpur', '129229', 'M/S AMAR  AGENCY', '9425171358', 0, '00:00:00', '00:00:00', '0', '0'),
(130, 'C4', '072:Jabalpur', '161500', 'M/S ULTRATECH BUILDING SOLUTION A/C RACHIT TRADERS', '9407065062', 0, '00:00:00', '00:00:00', '0', '0'),
(131, 'C4', '075:Bhopal', '85629', 'M/S PAKIZA HARDWARE', '9826957794', 0, '00:00:00', '00:00:00', '0', '0'),
(132, 'C4', '075:Bhopal', '122179', 'SAVITRI ENTERPRISES', '9981178043', 0, '00:00:00', '00:00:00', '0', '0'),
(133, 'C4', '079:Gwalior', '55910', 'Shree Girraj Agencies', '9826068501', 0, '00:00:00', '00:00:00', '0', '0'),
(134, 'C4', '079:Gwalior', '55910', 'Shree Girraj Agencies', '9826068501', 0, '00:00:00', '00:00:00', '0', '0'),
(135, 'C4', '079:Gwalior', '56257', 'MANGTURAM DHANNA LAL', '9826230033', 0, '00:00:00', '00:00:00', '0', '0'),
(136, 'C4', '079:Gwalior', '58543', 'GAURAV ENTERPRISES', '9300075910', 0, '00:00:00', '00:00:00', '0', '0'),
(137, 'C4', '079:Gwalior', '58830', 'GYANENDRA HARDWARE', '9425144518', 0, '00:00:00', '00:00:00', '0', '0'),
(138, 'C4', '079:Gwalior', '62443', 'APPOLO PAINTS & H/WARE', '9425031777', 0, '00:00:00', '00:00:00', '0', '0'),
(139, 'C4', '079:Gwalior', '102366', 'MISHRA PAINTS & HARDWARE', '9425881260', 0, '00:00:00', '00:00:00', '0', '0'),
(140, 'C4', '079:Gwalior', '123652', 'Meera Paint House', '8305890532', 0, '00:00:00', '00:00:00', '0', '0'),
(141, 'E1', '005:Siliguri', '37023', 'K.M DAS & CO', '9434051972', 0, '00:00:00', '00:00:00', '0', '0'),
(142, 'E1', '005:Siliguri', '37032', 'BHAGATRAM RAMKUMAR', '9434051063', 0, '00:00:00', '00:00:00', '0', '0'),
(143, 'E1', '005:Siliguri', '37099', 'KAMALA HARDWARE STORES,', '9434367224', 0, '00:00:00', '00:00:00', '0', '0'),
(144, 'E1', '005:Siliguri', '128502', 'M/s Sumit Hardware', '9832480903', 0, '00:00:00', '00:00:00', '0', '0'),
(145, 'E1', '006:Kolkata-2', '67468', 'SREE GOPAL PAINTS & HARDWARE', '9331022181', 0, '00:00:00', '00:00:00', '0', '0'),
(146, 'E1', '006:Kolkata-2', '67554', 'CHATTERJEE TRADERS', '9733605416', 0, '00:00:00', '00:00:00', '0', '0'),
(147, 'E1', '006:Kolkata-2', '70226', 'MAA DURGA H/W', '8436533670', 0, '00:00:00', '00:00:00', '0', '0'),
(148, 'E1', '006:Kolkata-2', '72893', 'DAS PAINTS', '9474676068', 0, '00:00:00', '00:00:00', '0', '0'),
(149, 'E1', '006:Kolkata-2', '74119', 'SWAPAN BUILDERS', '9433950808', 0, '00:00:00', '00:00:00', '0', '0'),
(150, 'E1', '006:Kolkata-2', '74993', 'SUSHIL TRADERS', '3325792242', 0, '00:00:00', '00:00:00', '0', '0'),
(151, 'E1', '006:Kolkata-2', '75750', 'PAINT SHOP', '9143516922', 0, '00:00:00', '00:00:00', '0', '0'),
(152, 'E1', '006:Kolkata-2', '76934', 'ANJALI PAINTS', '8509625420', 0, '00:00:00', '00:00:00', '0', '0'),
(153, 'E1', '006:Kolkata-2', '78285', 'MAA TARA ENTERPRISE', '9836835502', 0, '00:00:00', '00:00:00', '0', '0'),
(154, 'E1', '006:Kolkata-2', '79560', 'REEK PAINT HOUSE', '9831974092', 0, '00:00:00', '00:00:00', '0', '0'),
(155, 'E1', '006:Kolkata-2', '82254', 'SINGHA BUILDERS & HARDWARES', '9732668077', 0, '00:00:00', '00:00:00', '0', '0'),
(156, 'E1', '006:Kolkata-2', '86841', 'M/s SIMA PAINTS HOUSE', '9732733473', 0, '00:00:00', '00:00:00', '0', '0'),
(157, 'E1', '006:Kolkata-2', '86870', 'M/s SABITA HARDWARE', '9733541628', 0, '00:00:00', '00:00:00', '0', '0'),
(158, 'E1', '006:Kolkata-2', '99201', 'UltraTech Cement Ltd. A/c New Dutta Builders', '9143054990', 0, '00:00:00', '00:00:00', '0', '0'),
(159, 'E1', '006:Kolkata-2', '100411', 'RADHA RANI STORES', '7890696005', 0, '00:00:00', '00:00:00', '0', '0'),
(160, 'E1', '006:Kolkata-2', '112796', 'TARAKNATH HARDWARE', '9163509883', 0, '00:00:00', '00:00:00', '0', '0'),
(161, 'E1', '006:Kolkata-2', '113858', 'DHUBULIA PAINT HOUSE', '9831889669', 0, '00:00:00', '00:00:00', '0', '0'),
(162, 'E1', '006:Kolkata-2', '119141', 'MONOSHA PAINTS & HARDWARE', '9163603051', 0, '00:00:00', '00:00:00', '0', '0'),
(163, 'E1', '006:Kolkata-2', '122385', 'BALAJI TRADING COMPANY', '9591757467', 0, '00:00:00', '00:00:00', '0', '0'),
(164, 'E1', '006:Kolkata-2', '125500', 'JHARNA COLOUR BANK & HARDWARES', '9830288057', 0, '00:00:00', '00:00:00', '0', '0'),
(165, 'E1', '006:Kolkata-2', '125787', 'INDIAN COLOUR BANK', '7003295508', 0, '00:00:00', '00:00:00', '0', '0'),
(166, 'E1', '006:Kolkata-2', '126621', 'V. I. P. HARDWARE', '9830116673', 0, '00:00:00', '00:00:00', '0', '0'),
(167, 'E1', '006:Kolkata-2', '131069', 'NEW MAA TRADERS', '9732408262', 0, '00:00:00', '00:00:00', '0', '0'),
(168, 'E1', '006:Kolkata-2', '145385', 'DISHA COLOUR WORLD', '7003109820', 0, '00:00:00', '00:00:00', '0', '0'),
(169, 'E1', '006:Kolkata-2', '157703', 'JAI JAGANNATH SANITATION', '9681176302', 0, '00:00:00', '00:00:00', '0', '0'),
(170, 'E1', '006:Kolkata-2', '160751', 'TARA MAA HARDWARE', '9732773228', 0, '00:00:00', '00:00:00', '0', '0'),
(171, 'E1', '006:Kolkata-2', '162224', 'THE CALCUTTA IRON STORES', '9831207143', 0, '00:00:00', '00:00:00', '0', '0'),
(172, 'E1', '006:Kolkata-2', '164074', 'PARESH CHANDRA DAS', '9007969627', 0, '00:00:00', '00:00:00', '0', '0'),
(173, 'E1', '015:Raipur', '56370', 'UltraTech Cement Ltd. A/C  Ganesh Enterprises', '7389912755', 0, '00:00:00', '00:00:00', '0', '0'),
(174, 'E1', '015:Raipur', '56875', 'VIKAS PAINTS', '9300325533', 0, '00:00:00', '00:00:00', '0', '0'),
(175, 'E1', '015:Raipur', '62696', 'M/S CHHABRA SALES', '9300310258', 0, '00:00:00', '00:00:00', '0', '0'),
(176, 'E1', '015:Raipur', '85856', 'NEW JANTA HARDWARE', '9039786926', 0, '00:00:00', '00:00:00', '0', '0'),
(177, 'E1', '108:Kolkata-4', '57887', 'MAHARAJ  PAINTS & BUILDING MATERIALS', '9831030973', 0, '00:00:00', '00:00:00', '0', '0'),
(178, 'E1', '108:Kolkata-4', '59546', 'MAA SARADA PAINTS', '9831643920', 0, '00:00:00', '00:00:00', '0', '0'),
(179, 'E1', '108:Kolkata-4', '61081', 'BIKASH HARDWARE', '9830657775', 0, '00:00:00', '00:00:00', '0', '0'),
(180, 'E1', '108:Kolkata-4', '61737', 'HASHIM TILES & SANITATION', '9883215557', 0, '00:00:00', '00:00:00', '0', '0'),
(181, 'E1', '108:Kolkata-4', '63584', 'RAMKRISHNA PAINTS', '9831712057', 0, '00:00:00', '00:00:00', '0', '0'),
(182, 'E1', '108:Kolkata-4', '63703', 'KUNDU PAINT SUPPLY', '7044310320', 0, '00:00:00', '00:00:00', '0', '0'),
(183, 'E1', '108:Kolkata-4', '63703', 'KUNDU PAINT SUPPLY', '7044310320', 0, '00:00:00', '00:00:00', '0', '0'),
(184, 'E1', '108:Kolkata-4', '64984', 'DASSON PAINTS', '3324976982', 0, '00:00:00', '00:00:00', '0', '0'),
(185, 'E1', '108:Kolkata-4', '78791', 'MONIKA PAINTS', '9831056904', 0, '00:00:00', '00:00:00', '0', '0'),
(186, 'E1', '108:Kolkata-4', '81567', 'MONDAL PAINTS & HARDWARE', '9830073761', 0, '00:00:00', '00:00:00', '0', '0'),
(187, 'E1', '108:Kolkata-4', '121625', 'M/S NEELANJANA', '9339506001', 0, '00:00:00', '00:00:00', '0', '0'),
(188, 'E1', '108:Kolkata-4', '124484', 'VAISHALI PAINTS TRADERS', '9748291577', 0, '00:00:00', '00:00:00', '0', '0'),
(189, 'E1', '108:Kolkata-4', '130828', 'Das Hardware & Paint', '9331242277', 0, '00:00:00', '00:00:00', '0', '0'),
(190, 'E1', '108:Kolkata-4', '141293', 'GUPTA PAINT', '7044380198', 0, '00:00:00', '00:00:00', '0', '0'),
(191, 'E1', '110:Kolkata-5', '55875', 'D K COLOUR CHEM.', '9007016211', 0, '00:00:00', '00:00:00', '0', '0'),
(192, 'E1', '110:Kolkata-5', '61607', 'ANNAPURNA HARDWARE', '9933820714', 0, '00:00:00', '00:00:00', '0', '0'),
(193, 'E1', '110:Kolkata-5', '63908', 'RAINBOW COLOUR', '9123083502', 0, '00:00:00', '00:00:00', '0', '0'),
(194, 'E1', '110:Kolkata-5', '66716', 'MUKHERJEE H/W', '9433217270', 0, '00:00:00', '00:00:00', '0', '0'),
(195, 'E1', '110:Kolkata-5', '67617', 'COLOR HOUSE', '9903310998', 0, '00:00:00', '00:00:00', '0', '0'),
(196, 'E1', '110:Kolkata-5', '74127', 'CHATTERJEE TRADERS', '9831003323', 0, '00:00:00', '00:00:00', '0', '0'),
(197, 'E1', '110:Kolkata-5', '144399', 'CITY PAINTS', '9804576029', 0, '00:00:00', '00:00:00', '0', '0'),
(198, 'E1', '126:Durgapur', '68048', 'NIRODE BARAN KUNDU', '8145107070', 0, '00:00:00', '00:00:00', '0', '0'),
(199, 'E1', '126:Durgapur', '68049', 'MAA TARA TRADERS', '9932867407', 0, '00:00:00', '00:00:00', '0', '0'),
(200, 'E1', '126:Durgapur', '68097', 'COLOUR HOUSE', '9732356525', 0, '00:00:00', '00:00:00', '0', '0'),
(201, 'E1', '126:Durgapur', '68799', 'MA SARADA PAINTS', '9832120379', 0, '00:00:00', '00:00:00', '0', '0'),
(202, 'E1', '126:Durgapur', '68826', 'SREE LAXMI ENTERPRISES', '9434375628', 0, '00:00:00', '00:00:00', '0', '0'),
(203, 'E1', '126:Durgapur', '69809', 'MAA AMBICA HARDWARE', '3434332210', 0, '00:00:00', '00:00:00', '0', '0'),
(204, 'E1', '126:Durgapur', '70415', 'SAHA STORES', '9232379832', 0, '00:00:00', '00:00:00', '0', '0'),
(205, 'E1', '126:Durgapur', '70600', 'SHREE GANESH H/W CENTRE', '9932690588', 0, '00:00:00', '00:00:00', '0', '0'),
(206, 'E1', '126:Durgapur', '70605', 'PAL PAINTS CORNER', '9733862320', 0, '00:00:00', '00:00:00', '0', '0'),
(207, 'E1', '126:Durgapur', '71346', 'KAR ENTERPRISE', '9734756244', 0, '00:00:00', '00:00:00', '0', '0'),
(208, 'E1', '126:Durgapur', '73760', 'KALYANI PAINTS', '8900000042', 0, '00:00:00', '00:00:00', '0', '0'),
(209, 'E1', '126:Durgapur', '74523', 'GITA HARDWARE', '9474810424', 0, '00:00:00', '00:00:00', '0', '0'),
(210, 'E1', '126:Durgapur', '74859', 'MAA MANASA HARDWARE', '9832119548', 0, '00:00:00', '00:00:00', '0', '0'),
(211, 'E1', '126:Durgapur', '76538', 'NEW JAIPUR MARBLE HOUSE', '9233503503', 0, '00:00:00', '00:00:00', '0', '0'),
(212, 'E1', '126:Durgapur', '81933', 'BILAS H/W STORE', '9474039325', 0, '00:00:00', '00:00:00', '0', '0'),
(213, 'E1', '126:Durgapur', '82367', 'MAHAPRABHU ENTERPRISE', '8670038768', 0, '00:00:00', '00:00:00', '0', '0'),
(214, 'E1', '126:Durgapur', '83075', 'LAXMI PAINTS', '8348593355', 0, '00:00:00', '00:00:00', '0', '0'),
(215, 'E1', '126:Durgapur', '83936', 'UltraTech Cement Ltd. A/c Sree Laxmi Enterprise', '9434475926', 0, '00:00:00', '00:00:00', '0', '0'),
(216, 'E1', '126:Durgapur', '97104', 'UNITED PAINTS', '9046192471', 0, '00:00:00', '00:00:00', '0', '0'),
(217, 'E1', '126:Durgapur', '105367', 'SANKAR HARDWARE', '9734202728', 0, '00:00:00', '00:00:00', '0', '0'),
(218, 'E1', '126:Durgapur', '109901', 'BHARAT COLOUR WORLD', '9332962207', 0, '00:00:00', '00:00:00', '0', '0'),
(219, 'E1', '126:Durgapur', '113719', 'ULTRATECH CEMENT LTD GOUR CHANDRA DEY', '9734424624', 0, '00:00:00', '00:00:00', '0', '0'),
(220, 'E1', '126:Durgapur', '113734', 'SUBHRA HOME DECOR', '7797551896', 0, '00:00:00', '00:00:00', '0', '0'),
(221, 'E1', '126:Durgapur', '113954', 'DAMODAR PAINTS & HARDWARE', '8016418626', 0, '00:00:00', '00:00:00', '0', '0'),
(222, 'E1', '126:Durgapur', '116030', 'NEW RADHA KRISHNA MERCANTILES', '9434177276', 0, '00:00:00', '00:00:00', '0', '0'),
(223, 'E1', '126:Durgapur', '118907', 'NATIONAL ENTERPRISE', '9932635973', 0, '00:00:00', '00:00:00', '0', '0'),
(224, 'E1', '126:Durgapur', '120490', 'BHAIRAB PAINTS AND HARDWARE', '8436855625', 0, '00:00:00', '00:00:00', '0', '0'),
(225, 'E1', '126:Durgapur', '126862', 'NANDI PAINTS', '9775303652', 0, '00:00:00', '00:00:00', '0', '0'),
(226, 'E1', '126:Durgapur', '126939', 'PAINT PLAZA', '9932134365', 0, '00:00:00', '00:00:00', '0', '0'),
(227, 'E1', '126:Durgapur', '128647', 'AGARWAL COLOUR WORLD', '7797957060', 0, '00:00:00', '00:00:00', '0', '0'),
(228, 'E1', '126:Durgapur', '132610', 'SATYANARAYAN CHAKRABORTY', '6297169457', 0, '00:00:00', '00:00:00', '0', '0'),
(229, 'E1', '126:Durgapur', '133090', 'LALJI MAHARAJ TRADERS', '9083093063', 0, '00:00:00', '00:00:00', '0', '0'),
(230, 'E1', '126:Durgapur', '142114', 'DEBDAS SEN', '9434010274', 0, '00:00:00', '00:00:00', '0', '0'),
(231, 'E1', '126:Durgapur', '145283', 'OR PAINT and SANITARY HOUSE', '8250395430', 0, '00:00:00', '00:00:00', '0', '0'),
(232, 'E1', '126:Durgapur', '148329', 'HD COLOUR WORLD', '7892337343', 0, '00:00:00', '00:00:00', '0', '0'),
(233, 'E1', '126:Durgapur', '157198', 'MAA PADMA COLOUR AND HARDWARE', '9933600772', 0, '00:00:00', '00:00:00', '0', '0'),
(234, 'E1', '126:Durgapur', '160740', 'S K PAINTS', '9564140335', 0, '00:00:00', '00:00:00', '0', '0'),
(235, 'E1', '126:Durgapur', '161060', 'KALPANA TRADERS', '9475623107', 0, '00:00:00', '00:00:00', '0', '0'),
(236, 'E1', '126:Durgapur', '162483', 'MAA TARA PAINTS', '9851539110', 0, '00:00:00', '00:00:00', '0', '0'),
(237, 'E1', '161:Muzaffarpur', '62040', 'AUM SHREE SHYAM SALES', '9431219312', 0, '00:00:00', '00:00:00', '0', '0'),
(238, 'E1', '161:Muzaffarpur', '64436', 'MAMTA HARDWARE', '9835456185', 0, '00:00:00', '00:00:00', '0', '0'),
(239, 'E1', '161:Muzaffarpur', '65112', 'M/S-SANJEEV HARDWARE STORES', '9308018450', 0, '00:00:00', '00:00:00', '0', '0'),
(240, 'E1', '161:Muzaffarpur', '78250', 'MS BALAJEE', '9431212039', 0, '00:00:00', '00:00:00', '0', '0'),
(241, 'E1', '161:Muzaffarpur', '84263', 'BHAWANI PAINT HOUSE', '9122730967', 0, '00:00:00', '00:00:00', '0', '0'),
(242, 'E1', '161:Muzaffarpur', '123514', 'JEET BROTHERS COLOUR LAND', '7091757051', 0, '00:00:00', '00:00:00', '0', '0'),
(243, 'E1', '161:Muzaffarpur', '123604', 'SHREE VINDHYACHAL PAINTS', '9471222426', 0, '00:00:00', '00:00:00', '0', '0'),
(244, 'E1', '161:Muzaffarpur', '128062', 'GEETANJALI HARDWARE', '9060142973', 0, '00:00:00', '00:00:00', '0', '0'),
(245, 'E1', '161:Muzaffarpur', '128337', 'M/S DREAM HOME ENTERPRISES', '9122983333', 0, '00:00:00', '00:00:00', '0', '0'),
(246, 'E1', '161:Muzaffarpur', '145324', 'MAHASETH PAINTS AND HARDWARE', '9304110791', 0, '00:00:00', '00:00:00', '0', '0'),
(247, 'E1', '161:Muzaffarpur', '158604', 'NAG and SONS', '7992201279', 0, '00:00:00', '00:00:00', '0', '0'),
(248, 'E1', '162:Chandannagar Store', '134210', 'DS_0', '#N/A', 0, '00:00:00', '00:00:00', '0', '0'),
(249, 'E1', '164:Malda', '36995', 'SARADA BUILDERS', '9474730309', 0, '00:00:00', '00:00:00', '0', '0'),
(250, 'E1', '164:Malda', '78049', 'M/S KALIPADA SAHA', '9735001362', 0, '00:00:00', '00:00:00', '0', '0'),
(251, 'E1', '164:Malda', '81752', 'M.H.TRADERS', '8001111900', 0, '00:00:00', '00:00:00', '0', '0'),
(252, 'E1', '164:Malda', '117507', 'COLOUR POINT', '9735438793', 0, '00:00:00', '00:00:00', '0', '0'),
(253, 'E1', '164:Malda', '124284', 'Das Hardware', '8759013332', 0, '00:00:00', '00:00:00', '0', '0'),
(254, 'E1', '164:Malda', '124523', 'CHANDRA ENTERPRISE', '8942944114', 0, '00:00:00', '00:00:00', '0', '0'),
(255, 'E1', '164:Malda', '124524', 'SABNAM HARDWARE', '9434394704', 0, '00:00:00', '00:00:00', '0', '0'),
(256, 'E1', '164:Malda', '125297', 'SHRI GURU HARDWARE', '7797575655', 0, '00:00:00', '00:00:00', '0', '0'),
(257, 'E1', '164:Malda', '126896', 'COLOURS WORLD', '9563809618', 0, '00:00:00', '00:00:00', '0', '0'),
(258, 'E1', '164:Malda', '127090', 'New Sona Hardware', '9932972870', 0, '00:00:00', '00:00:00', '0', '0'),
(259, 'E1', '164:Malda', '131509', 'JOY GURU HARDWARE', '9333310184', 0, '00:00:00', '00:00:00', '0', '0'),
(260, 'E1', '164:Malda', '161967', 'JAY GURU HARDWARE', '9732667283', 0, '00:00:00', '00:00:00', '0', '0'),
(261, 'E1', '178:Bhagalpur', '55422', 'DAS & SONS', '9430928002', 0, '00:00:00', '00:00:00', '0', '0'),
(262, 'E1', '178:Bhagalpur', '57134', 'GUPTA H/W STORES', '9973614421', 0, '00:00:00', '00:00:00', '0', '0'),
(263, 'E1', '178:Bhagalpur', '57962', 'KUMAR PAINTS & HARDWARE', '9934946122', 0, '00:00:00', '00:00:00', '0', '0'),
(264, 'E1', '178:Bhagalpur', '58320', 'BHARAT PAINT', '9234791007', 0, '00:00:00', '00:00:00', '0', '0'),
(265, 'E1', '178:Bhagalpur', '104401', 'MANISH IRON STORE', '7549246174', 0, '00:00:00', '00:00:00', '0', '0'),
(266, 'E1', '178:Bhagalpur', '105667', 'KASBA HARDWARE STORES', '9931465560', 0, '00:00:00', '00:00:00', '0', '0'),
(267, 'E1', '178:Bhagalpur', '107614', 'M/S MAA ENTERPRISES', '8210416484', 0, '00:00:00', '00:00:00', '0', '0'),
(268, 'E1', '178:Bhagalpur', '122742', 'MAA DURGA TRADING', '9431288637', 0, '00:00:00', '00:00:00', '0', '0'),
(269, 'E1', '178:Bhagalpur', '122997', 'SINGHANIA HARDWARE', '9534848497', 0, '00:00:00', '00:00:00', '0', '0'),
(270, 'E1', '178:Bhagalpur', '130794', 'SRI BALAJI TRADING CO.', '8935981121', 0, '00:00:00', '00:00:00', '0', '0'),
(271, 'E1', '204:Patna-3', '57553', 'M/s.PRAGATI', '9934098808', 0, '00:00:00', '00:00:00', '0', '0'),
(272, 'E1', '204:Patna-3', '65416', 'UNITED INDIA SALES CORPN.', '9304259608', 0, '00:00:00', '00:00:00', '0', '0'),
(273, 'E1', '204:Patna-3', '141681', 'VISHAL HARDWARE', '9431642195', 0, '00:00:00', '00:00:00', '0', '0'),
(274, 'E1', '205:Medinipur', '59399', 'KHAN HARDWARE', '8293585350', 0, '00:00:00', '00:00:00', '0', '0'),
(275, 'E1', '205:Medinipur', '61577', 'S.P.TRADING COMPANY', '9002721223', 0, '00:00:00', '00:00:00', '0', '0'),
(276, 'E1', '205:Medinipur', '85285', 'RAMANANDA PAINT STORES', '9474620141', 0, '00:00:00', '00:00:00', '0', '0'),
(277, 'E1', '205:Medinipur', '109411', 'HARICHARAN HARDWARE', '9732921126', 0, '00:00:00', '00:00:00', '0', '0'),
(278, 'E1', '205:Medinipur', '122343', 'GOSWAMI HARDWARES & PLY CENTRE', '9732623763', 0, '00:00:00', '00:00:00', '0', '0'),
(279, 'E1', '205:Medinipur', '125307', 'ULTRATECH CEMENT LTD. A/C BERA CONMAT PVT.LTD.', '9733727802', 0, '00:00:00', '00:00:00', '0', '0'),
(280, 'E1', '205:Medinipur', '125307', 'ULTRATECH CEMENT LTD. A/C BERA CONMAT PVT.LTD.', '9733727802', 0, '00:00:00', '00:00:00', '0', '0'),
(281, 'E2', '002:Guwahati', '56610', 'M/S HEMANT ENTERPRISES', '9706095351', 0, '00:00:00', '00:00:00', '0', '0'),
(282, 'E2', '002:Guwahati', '59377', 'M/S. VIKASH AGENCIES (NEW)', '9435104025', 0, '00:00:00', '00:00:00', '0', '0'),
(283, 'E2', '002:Guwahati', '59503', 'M/s. ANANTA TRADE CENTRE', '9435105335', 0, '00:00:00', '00:00:00', '0', '0'),
(284, 'E2', '002:Guwahati', '59684', 'M/S OM TRADE AGENCY', '9864072354', 0, '00:00:00', '00:00:00', '0', '0'),
(285, 'E2', '002:Guwahati', '61617', 'NILIMAR PAINTS', '9435042754', 0, '00:00:00', '00:00:00', '0', '0'),
(286, 'E2', '002:Guwahati', '61732', 'MAA KAMAKHAYA ENTERPRISE', '9859931197', 0, '00:00:00', '00:00:00', '0', '0'),
(287, 'E2', '002:Guwahati', '63335', 'SUPREME AGENCIES', '9435018947', 0, '00:00:00', '00:00:00', '0', '0'),
(288, 'E2', '002:Guwahati', '63337', 'OM HARDWARE MART', '9859011489', 0, '00:00:00', '00:00:00', '0', '0'),
(289, 'E2', '002:Guwahati', '63606', 'KRISHNA HARDWARE STORES', '9864094775', 0, '00:00:00', '00:00:00', '0', '0'),
(290, 'E2', '002:Guwahati', '65281', 'M/S. RAVI UDYOG', '7086504875', 0, '00:00:00', '00:00:00', '0', '0'),
(291, 'E2', '002:Guwahati', '65367', 'M/S. JAI MAHABIR H/W.', '9435149710', 0, '00:00:00', '00:00:00', '0', '0'),
(292, 'E2', '002:Guwahati', '81549', 'PANKAJ SANITATION', '9085091229', 0, '00:00:00', '00:00:00', '0', '0'),
(293, 'E2', '002:Guwahati', '83079', 'PAREEK ENTERPRISE', '9435041348', 0, '00:00:00', '00:00:00', '0', '0'),
(294, 'E2', '002:Guwahati', '83481', 'S.M. SANITARY & HARDWARE', '7896583644', 0, '00:00:00', '00:00:00', '0', '0'),
(295, 'E2', '002:Guwahati', '93526', 'GURUCHARAN TRADERS', '9859948414', 0, '00:00:00', '00:00:00', '0', '0'),
(296, 'E2', '002:Guwahati', '101232', 'G.B. TRADE CENTRE', '9435119314', 0, '00:00:00', '00:00:00', '0', '0'),
(297, 'E2', '002:Guwahati', '135285', 'MAA KAMAKHYA SANITARY and HARDWARE', '7896530505', 0, '00:00:00', '00:00:00', '0', '0'),
(298, 'E2', '002:Guwahati', '150402', 'DIVYAM AGENCIES', '9435048842', 0, '00:00:00', '00:00:00', '0', '0'),
(299, 'E2', '004:Bhubaneswar', '55876', 'MAA BANADURGA HARDWARE & PAINT', '9776207200', 0, '00:00:00', '00:00:00', '0', '0'),
(300, 'E2', '004:Bhubaneswar', '56505', 'UTTARAYANI HARDWARE STORES', '9937344643', 0, '00:00:00', '00:00:00', '0', '0'),
(301, 'E2', '004:Bhubaneswar', '57661', 'PRATHI PAINTS & PIPES', '9437165865', 0, '00:00:00', '00:00:00', '0', '0'),
(302, 'E2', '004:Bhubaneswar', '57845', 'VIJAY H/W STORES', '9437229486', 0, '00:00:00', '00:00:00', '0', '0'),
(303, 'E2', '004:Bhubaneswar', '58524', 'M/S BHAIRAVI HARDWARE', '9439853169', 0, '00:00:00', '00:00:00', '0', '0'),
(304, 'E2', '004:Bhubaneswar', '58976', 'TRUPTI H/W & PAINTS', '9861061980', 0, '00:00:00', '00:00:00', '0', '0'),
(305, 'E2', '004:Bhubaneswar', '59472', 'KHANDAGIRI H/WARE & PAINT', '9437170345', 0, '00:00:00', '00:00:00', '0', '0'),
(306, 'E2', '004:Bhubaneswar', '59607', 'FRIENDS H/W STORES', '9437195779', 0, '00:00:00', '00:00:00', '0', '0'),
(307, 'E2', '004:Bhubaneswar', '61951', 'MAHAMAYEE HARDWARE STORE', '9861859693', 0, '00:00:00', '00:00:00', '0', '0'),
(308, 'E2', '004:Bhubaneswar', '62611', 'PRATHI BROTHERS', '9668089986', 0, '00:00:00', '00:00:00', '0', '0'),
(309, 'E2', '004:Bhubaneswar', '64205', 'SRI KRISHNA COLOURS', '9437023256', 0, '00:00:00', '00:00:00', '0', '0'),
(310, 'E2', '004:Bhubaneswar', '81194', 'OM MAA H/W STORE', '9337101413', 0, '00:00:00', '00:00:00', '0', '0'),
(311, 'E2', '004:Bhubaneswar', '81288', 'JAI HANUMAN ENTERPRISES', '9090090805', 0, '00:00:00', '00:00:00', '0', '0'),
(312, 'E2', '004:Bhubaneswar', '85560', 'SHREE RAGHUNATH PAINTS', '9438132347', 0, '00:00:00', '00:00:00', '0', '0'),
(313, 'E2', '004:Bhubaneswar', '108171', 'UNITECH TRADE LINK', '7537055267', 0, '00:00:00', '00:00:00', '0', '0'),
(314, 'E2', '004:Bhubaneswar', '120808', 'JAY MAHAVIR PAINTS', '9861476567', 0, '00:00:00', '00:00:00', '0', '0'),
(315, 'E2', '004:Bhubaneswar', '120848', 'JAGANNATH TRADERS', '7504240400', 0, '00:00:00', '00:00:00', '0', '0'),
(316, 'E2', '004:Bhubaneswar', '120965', 'MAHALAXMI BHANDAR', '9040571234', 0, '00:00:00', '00:00:00', '0', '0'),
(317, 'E2', '004:Bhubaneswar', '123296', 'M/S.SITARAM BADATIA HARDWARE STORE', '9937698565', 0, '00:00:00', '00:00:00', '0', '0'),
(318, 'E2', '004:Bhubaneswar', '123898', 'MANCHANATH DEV TRADERS', '9438505525', 0, '00:00:00', '00:00:00', '0', '0'),
(319, 'E2', '004:Bhubaneswar', '125648', 'OMM SAIKRUPA SANITARY AND HARDWARE', '9853739043', 0, '00:00:00', '00:00:00', '0', '0'),
(320, 'E2', '004:Bhubaneswar', '126777', 'THE COLOUR FACTORY', '9090961164', 0, '00:00:00', '00:00:00', '0', '0'),
(321, 'E2', '004:Bhubaneswar', '129380', 'JANTA IRON SHOP', '7749917274', 0, '00:00:00', '00:00:00', '0', '0'),
(322, 'E2', '004:Bhubaneswar', '129579', 'SONY ENTERPRISES', '7008716323', 0, '00:00:00', '00:00:00', '0', '0'),
(323, 'E2', '004:Bhubaneswar', '159126', 'M/S. HARIHARA ENTERPRISERS', '9438602121', 0, '00:00:00', '00:00:00', '0', '0'),
(324, 'E2', '004:Bhubaneswar', '160788', 'JAY KUMAR VIJAY KUMAR JAIN', '7008517676', 0, '00:00:00', '00:00:00', '0', '0'),
(325, 'E2', '004:Bhubaneswar', '164072', 'TIPTOP PAINTS', '9861284495', 0, '00:00:00', '00:00:00', '0', '0'),
(326, 'E2', '007:Ranchi', '55700', 'LAKSHMI NARAYAN HARDWARE STORES', '9431188036', 0, '00:00:00', '00:00:00', '0', '0'),
(327, 'E2', '007:Ranchi', '57414', 'INDIA HARDWARE STORES', '7860745070', 0, '00:00:00', '00:00:00', '0', '0'),
(328, 'E2', '007:Ranchi', '58903', 'AGARWAL BROTHERS', '9431339917', 0, '00:00:00', '00:00:00', '0', '0'),
(329, 'E2', '007:Ranchi', '59892', 'UJJWAL HARDWARE STORES', '8709207449', 0, '00:00:00', '00:00:00', '0', '0'),
(330, 'E2', '007:Ranchi', '60546', 'BAIDYANATH TRADING.', '8271898785', 0, '00:00:00', '00:00:00', '0', '0'),
(331, 'E2', '007:Ranchi', '61920', 'SREE LAXMI HARDWARE', '8409833000', 0, '00:00:00', '00:00:00', '0', '0'),
(332, 'E2', '007:Ranchi', '62629', 'SCIENTIFIC EMPORIUM', '8709860992', 0, '00:00:00', '00:00:00', '0', '0'),
(333, 'E2', '007:Ranchi', '63469', 'DEBENDRA HARDWARE', '9431726776', 0, '00:00:00', '00:00:00', '0', '0'),
(334, 'E2', '007:Ranchi', '64191', 'JOKHIRAM MUNGRAJ', '8340679006', 0, '00:00:00', '00:00:00', '0', '0'),
(335, 'E2', '007:Ranchi', '64307', 'SHAKTI HARDWARE', '8820697852', 0, '00:00:00', '00:00:00', '0', '0'),
(336, 'E2', '007:Ranchi', '76781', 'SHIVAM ENTERPRISES', '8873567870', 0, '00:00:00', '00:00:00', '0', '0'),
(337, 'E2', '007:Ranchi', '82103', 'RADHA KRISHNA HARDWARE STORE', '9431124474', 0, '00:00:00', '00:00:00', '0', '0'),
(338, 'E2', '007:Ranchi', '84547', 'Prasad Hardware Store', '9835175162', 0, '00:00:00', '00:00:00', '0', '0'),
(339, 'E2', '007:Ranchi', '117531', 'SHRI KRISHNA PAINTS', '8294283793', 0, '00:00:00', '00:00:00', '0', '0'),
(340, 'E2', '007:Ranchi', '120422', 'KHALKHO HARDWARE', '8002859101', 0, '00:00:00', '00:00:00', '0', '0'),
(341, 'E2', '007:Ranchi', '124080', 'RUDRA HARDWARE AND SANITARY', '9386744353', 0, '00:00:00', '00:00:00', '0', '0'),
(342, 'E2', '007:Ranchi', '129189', 'AGRAWAL ENTERPRISES', '8789990502', 0, '00:00:00', '00:00:00', '0', '0'),
(343, 'E2', '007:Ranchi', '131516', 'UDAY HARDWARE', '8084212551', 0, '00:00:00', '00:00:00', '0', '0'),
(344, 'E2', '007:Ranchi', '133096', 'MAA VAISHNAVI ENTERPRISES', '8709635419', 0, '00:00:00', '00:00:00', '0', '0'),
(345, 'E2', '007:Ranchi', '145810', 'JUGAL and SONS', '9708545631', 0, '00:00:00', '00:00:00', '0', '0'),
(346, 'E2', '007:Ranchi', '158115', 'SAHU HARDWARE STORE', '8271333178', 0, '00:00:00', '00:00:00', '0', '0'),
(347, 'E2', '008:Cuttack', '55566', 'BHATTA ENTERPRISE', '8984059423', 0, '00:00:00', '00:00:00', '0', '0'),
(348, 'E2', '008:Cuttack', '55571', 'NEW PANCHAMUKHI AGENCY', '9437377577', 0, '00:00:00', '00:00:00', '0', '0'),
(349, 'E2', '008:Cuttack', '57305', 'SARALA HARDWARE & PAINTS', '8895806618', 0, '00:00:00', '00:00:00', '0', '0'),
(350, 'E2', '008:Cuttack', '57411', 'UltraTech Cement Ltd. A/C  Mishra Suppliers', '9437023329', 0, '00:00:00', '00:00:00', '0', '0'),
(351, 'E2', '008:Cuttack', '57898', 'MAHAVIR HARDWARE', '9861238272', 0, '00:00:00', '00:00:00', '0', '0'),
(352, 'E2', '008:Cuttack', '58249', 'MAA DURGA PAINTS', '9437169236', 0, '00:00:00', '00:00:00', '0', '0'),
(353, 'E2', '008:Cuttack', '59242', 'NANDI SALES AGENCIES', '9040176266', 0, '00:00:00', '00:00:00', '0', '0'),
(354, 'E2', '008:Cuttack', '60337', 'MATRUKRUPA HARDWARE STORE', '9437851669', 0, '00:00:00', '00:00:00', '0', '0'),
(355, 'E2', '008:Cuttack', '61105', 'SRIJAGANNATH H/W & PAINTS', '9937171254', 0, '00:00:00', '00:00:00', '0', '0'),
(356, 'E2', '008:Cuttack', '61182', 'MAA TARINI H/W & PAINTS', '9937410520', 0, '00:00:00', '00:00:00', '0', '0'),
(357, 'E2', '008:Cuttack', '61568', 'G & S ASSOCIATE C/O KAMALAKANTA DAS', '7978397607', 0, '00:00:00', '00:00:00', '0', '0'),
(358, 'E2', '008:Cuttack', '62665', 'HAPPY HARDWARE & MOZAIC', '9437179379', 0, '00:00:00', '00:00:00', '0', '0'),
(359, 'E2', '008:Cuttack', '63819', 'NAYAK PAINTS & HARDWARE', '9437135739', 0, '00:00:00', '00:00:00', '0', '0'),
(360, 'E2', '008:Cuttack', '65097', 'ASIS PAINTS & HARDWARE', '9861238611', 0, '00:00:00', '00:00:00', '0', '0'),
(361, 'E2', '008:Cuttack', '75724', 'SAHOO PAINTS', '9090690690', 0, '00:00:00', '00:00:00', '0', '0'),
(362, 'E2', '008:Cuttack', '78288', 'BINORY HARDWARE', '9861387973', 0, '00:00:00', '00:00:00', '0', '0'),
(363, 'E2', '008:Cuttack', '78292', 'SHREE KRISHNA ENTERPRISES', '9238458999', 0, '00:00:00', '00:00:00', '0', '0'),
(364, 'E2', '008:Cuttack', '80549', 'BASANTI HARDWARE STORE', '7008890059', 0, '00:00:00', '00:00:00', '0', '0'),
(365, 'E2', '008:Cuttack', '84337', 'MAA MANGALA HARDWARE STORE', '9437311089', 0, '00:00:00', '00:00:00', '0', '0'),
(366, 'E2', '008:Cuttack', '85663', 'BIJAY ENTERPRISES', '9337140045', 0, '00:00:00', '00:00:00', '0', '0'),
(367, 'E2', '008:Cuttack', '87638', 'SRI KRUSHNA HARDWARE', '9861159902', 0, '00:00:00', '00:00:00', '0', '0'),
(368, 'E2', '008:Cuttack', '87756', 'P.K.SAHOO', '9938493714', 0, '00:00:00', '00:00:00', '0', '0'),
(369, 'E2', '008:Cuttack', '87968', 'SAI TRADE CENTRE', '9090373047', 0, '00:00:00', '00:00:00', '0', '0'),
(370, 'E2', '008:Cuttack', '96201', 'KHEMKA ENTERPRISES', '7205100429', 0, '00:00:00', '00:00:00', '0', '0'),
(371, 'E2', '008:Cuttack', '110824', 'HARAGOURI HARDWARE & PAINTS', '7377667972', 0, '00:00:00', '00:00:00', '0', '0'),
(372, 'E2', '008:Cuttack', '112211', 'LAXMI NARAYAN HARDWARE', '9668088160', 0, '00:00:00', '00:00:00', '0', '0'),
(373, 'E2', '008:Cuttack', '116026', 'SIDDHI VINAYAK CONSTRUCTION', '9438500027', 0, '00:00:00', '00:00:00', '0', '0'),
(374, 'E2', '008:Cuttack', '120383', 'PATRA AGENCY', '9437075995', 0, '00:00:00', '00:00:00', '0', '0'),
(375, 'E2', '008:Cuttack', '126238', 'BEHERA HARDWARE', '9437382295', 0, '00:00:00', '00:00:00', '0', '0'),
(376, 'E2', '008:Cuttack', '129379', 'MAHAVEER  AGENCY', '9583191366', 0, '00:00:00', '00:00:00', '0', '0'),
(377, 'E2', '008:Cuttack', '130457', 'M.S. UDYAM', '9451040271', 0, '00:00:00', '00:00:00', '0', '0'),
(378, 'E2', '008:Cuttack', '147441', 'MAJHI   HARDWARE', '9777541308', 0, '00:00:00', '00:00:00', '0', '0'),
(379, 'E2', '008:Cuttack', '151638', 'S  B  COLOURS', '7205433117', 0, '00:00:00', '00:00:00', '0', '0'),
(380, 'E2', '008:Cuttack', '151749', 'FANCY   HARDWARE', '9437125944', 0, '00:00:00', '00:00:00', '0', '0'),
(381, 'E2', '008:Cuttack', '154458', 'SWAIN  HARDWARE  AND COLORS', '9776757947', 0, '00:00:00', '00:00:00', '0', '0'),
(382, 'E2', '008:Cuttack', '161171', 'SHREERAM STEEL and CEMENT', '9937064833', 0, '00:00:00', '00:00:00', '0', '0'),
(383, 'E2', '008:Cuttack', '166070', 'JENA TRADERS', '9556722290', 0, '00:00:00', '00:00:00', '0', '0'),
(384, 'E2', '061:Agartala', '39493', 'SREERAM PAINTS & H/W', '9436139687', 0, '00:00:00', '00:00:00', '0', '0'),
(385, 'E2', '061:Agartala', '39562', 'SREEMATA  STORES', '9436502858', 0, '00:00:00', '00:00:00', '0', '0'),
(386, 'E2', '061:Agartala', '39817', 'MAHATMA & CO.', '9436125183', 0, '00:00:00', '00:00:00', '0', '0'),
(387, 'E2', '061:Agartala', '40265', 'NEW PODDAR TRADERS', '9436541268', 0, '00:00:00', '00:00:00', '0', '0'),
(388, 'E2', '061:Agartala', '40308', 'RUPASI  BHANDAR', '9436127638', 0, '00:00:00', '00:00:00', '0', '0'),
(389, 'E2', '061:Agartala', '40500', 'K K TRADERS', '9436479493', 0, '00:00:00', '00:00:00', '0', '0'),
(390, 'E2', '061:Agartala', '40762', 'BABA LOKENATH H/W', '9436513097', 0, '00:00:00', '00:00:00', '0', '0'),
(391, 'E2', '061:Agartala', '40876', 'JOGESH CH. SAHA', '9436184151', 0, '00:00:00', '00:00:00', '0', '0'),
(392, 'E2', '061:Agartala', '88955', 'SANGAM ENTERPRISE', '9436127748', 0, '00:00:00', '00:00:00', '0', '0'),
(393, 'E2', '061:Agartala', '131255', 'JOYGURU PAINTS AND HARDWARE', '7005670495', 0, '00:00:00', '00:00:00', '0', '0'),
(394, 'E2', '062:Shillong', '39101', 'M/s.S.MARBLE', '9863065736', 0, '00:00:00', '00:00:00', '0', '0'),
(395, 'E2', '118:Guwahati-2', '56693', 'M/S SARADAMONI HARDWARE', '9435740651', 0, '00:00:00', '00:00:00', '0', '0'),
(396, 'E2', '118:Guwahati-2', '57858', 'SURAJ PAINTS CENTRE', '9856140267', 0, '00:00:00', '00:00:00', '0', '0'),
(397, 'E2', '118:Guwahati-2', '61604', 'JAINCO H/W STORE', '9612161493', 0, '00:00:00', '00:00:00', '0', '0'),
(398, 'E2', '118:Guwahati-2', '80339', 'M/S SANJIB KUMAR DAS', '8134925308', 0, '00:00:00', '00:00:00', '0', '0'),
(399, 'E2', '118:Guwahati-2', '81686', 'M/S VALLEY TRADERS AND GLASS', '9435093772', 0, '00:00:00', '00:00:00', '0', '0'),
(400, 'E2', '118:Guwahati-2', '81796', 'L.B.PAINTS', '8131060684', 0, '00:00:00', '00:00:00', '0', '0'),
(401, 'E2', '118:Guwahati-2', '115586', 'P G PAINTS CENTRE', '8729871306', 0, '00:00:00', '00:00:00', '0', '0'),
(402, 'E2', '118:Guwahati-2', '121517', 'VIKRAM HARDWARE', '9436892730', 0, '00:00:00', '00:00:00', '0', '0'),
(403, 'E2', '118:Guwahati-2', '123325', 'DIYA PAINTS & HARDWARE', '9862322094', 0, '00:00:00', '00:00:00', '0', '0'),
(404, 'E2', '118:Guwahati-2', '124190', 'R.C.PAINTS', '8119051861', 0, '00:00:00', '00:00:00', '0', '0'),
(405, 'E2', '118:Guwahati-2', '129753', 'SSS EASY PAINTS and ENTERPRISES', '8732079799', 0, '00:00:00', '00:00:00', '0', '0'),
(406, 'E2', '118:Guwahati-2', '151710', 'NAMEIRAKPA TRADERS', '9774148308', 0, '00:00:00', '00:00:00', '0', '0'),
(407, 'E2', '118:Guwahati-2', '158097', 'HARI BHANDER', '9101453537', 0, '00:00:00', '00:00:00', '0', '0'),
(408, 'E2', '118:Guwahati-2', '160684', 'ZAM ZAM TRADERS', '7085935844', 0, '00:00:00', '00:00:00', '0', '0'),
(409, 'E2', '143:Sambalpur', '58689', 'JAIN TRADERS', '9437070135', 0, '00:00:00', '00:00:00', '0', '0'),
(410, 'E2', '143:Sambalpur', '60171', 'BAJRANGBALI PAINT HOUSE', '9437033050', 0, '00:00:00', '00:00:00', '0', '0'),
(411, 'E2', '143:Sambalpur', '62115', 'GAYATRI HARDWARE', '9437105923', 0, '00:00:00', '00:00:00', '0', '0'),
(412, 'E2', '143:Sambalpur', '64125', 'SRI SRINIBAS SALES', '9437241966', 0, '00:00:00', '00:00:00', '0', '0'),
(413, 'E2', '143:Sambalpur', '65236', 'PIYUSH HARDWARE STORE', '9437151574', 0, '00:00:00', '00:00:00', '0', '0'),
(414, 'E2', '143:Sambalpur', '78391', 'KONARK ENTERPRISES', '9438210909', 0, '00:00:00', '00:00:00', '0', '0'),
(415, 'E2', '143:Sambalpur', '108863', 'OM SAI TRADERS', '9439430690', 0, '00:00:00', '00:00:00', '0', '0'),
(416, 'E2', '143:Sambalpur', '120660', 'MAA TRADERS', '9439708442', 0, '00:00:00', '00:00:00', '0', '0'),
(417, 'E2', '150:Jamshedpur', '57374', 'MAKANI BROTHERS', '9431300685', 0, '00:00:00', '00:00:00', '0', '0'),
(418, 'E2', '150:Jamshedpur', '57997', 'RAJESH BROTHERS', '9431110411', 0, '00:00:00', '00:00:00', '0', '0'),
(419, 'E2', '150:Jamshedpur', '64506', 'SALONI ENTERPRISES C/O,VISHAL TAPADIA', '9308269672', 0, '00:00:00', '00:00:00', '0', '0'),
(420, 'E2', '150:Jamshedpur', '85091', 'BHAKAT TRADING', '9234532441', 0, '00:00:00', '00:00:00', '0', '0'),
(421, 'E2', '150:Jamshedpur', '104395', 'UltraTech Cement Ltd. A/c Bhawani Enterprises', '9234864957', 0, '00:00:00', '00:00:00', '0', '0'),
(422, 'E2', '150:Jamshedpur', '141796', 'SHREE RANI SATI TRADERS', '7547042152', 0, '00:00:00', '00:00:00', '0', '0'),
(423, 'E2', '158:Guwahati-3', '40345', 'M/s.MULTIPURPOSE HARDWARE', '9436112863', 0, '00:00:00', '00:00:00', '0', '0'),
(424, 'E2', '158:Guwahati-3', '60965', 'SHIKHA HARDWARE', '9954937398', 0, '00:00:00', '00:00:00', '0', '0'),
(425, 'E2', '158:Guwahati-3', '61770', 'M/S NAVIN HARDWARE', '9435021262', 0, '00:00:00', '00:00:00', '0', '0'),
(426, 'E2', '158:Guwahati-3', '119311', 'SHREE BISHNU ENTERPRISE', '6900739437', 0, '00:00:00', '00:00:00', '0', '0'),
(427, 'E2', '158:Guwahati-3', '122095', 'HAQUE ENTERPRISE', '9954212120', 0, '00:00:00', '00:00:00', '0', '0'),
(428, 'E2', '158:Guwahati-3', '128556', 'S.B. AARIZ PAINTS and HARDWARE', '9957745988', 0, '00:00:00', '00:00:00', '0', '0'),
(429, 'E2', '158:Guwahati-3', '129490', 'NALBARI GLASS HOUSE', '7002553197', 0, '00:00:00', '00:00:00', '0', '0'),
(430, 'E2', '158:Guwahati-3', '129583', 'GANAPATI HARDWARE', '7896607165', 0, '00:00:00', '00:00:00', '0', '0'),
(431, 'E2', '158:Guwahati-3', '133527', 'M.K. HARDWARE', '8403001536', 0, '00:00:00', '00:00:00', '0', '0'),
(432, 'E2', '158:Guwahati-3', '134891', 'S.A. ENTERPRISE', '8011623997', 0, '00:00:00', '00:00:00', '0', '0'),
(433, 'E2', '158:Guwahati-3', '142129', 'B.P.STEEL and SANITARY', '9854090325', 0, '00:00:00', '00:00:00', '0', '0'),
(434, 'E2', '158:Guwahati-3', '150555', 'HANUMAN ENTERPRISE', '8486429643', 0, '00:00:00', '00:00:00', '0', '0'),
(435, 'E2', '158:Guwahati-3', '159203', 'M/S. RANJIT HARDWARE SHOP', '6200778446', 0, '00:00:00', '00:00:00', '0', '0'),
(436, 'E2', '170:Tezpur', '59783', 'DUTTA COMPANY', '9435398887', 0, '00:00:00', '00:00:00', '0', '0'),
(437, 'E2', '170:Tezpur', '61300', 'M/S. BHARAT PAINT HOUSE', '9435185278', 0, '00:00:00', '00:00:00', '0', '0'),
(438, 'E2', '170:Tezpur', '61478', 'ALOKE H/W STORERS', '9864330990', 0, '00:00:00', '00:00:00', '0', '0'),
(439, 'E2', '170:Tezpur', '63105', 'M/S DEEP HARDWARE', '9854059019', 0, '00:00:00', '00:00:00', '0', '0'),
(440, 'E2', '170:Tezpur', '64062', 'M/S KAMAL IRON STORES', '9435537500', 0, '00:00:00', '00:00:00', '0', '0'),
(441, 'E2', '170:Tezpur', '83399', 'BHARAT STEEL', '9435087067', 0, '00:00:00', '00:00:00', '0', '0'),
(442, 'E2', '170:Tezpur', '121516', 'DAS PAINT HOUSE', '7002062925', 0, '00:00:00', '00:00:00', '0', '0'),
(443, 'E2', '170:Tezpur', '122167', 'JAGIROAD HARDWARE & ELECTRICALS', '9864249722', 0, '00:00:00', '00:00:00', '0', '0'),
(444, 'E2', '170:Tezpur', '126228', 'SAHU ELECTRICALS & HARDWARE', '7399575001', 0, '00:00:00', '00:00:00', '0', '0'),
(445, 'E2', '170:Tezpur', '145723', 'D.D.HARDWARE', '8822222588', 0, '00:00:00', '00:00:00', '0', '0'),
(446, 'E2', '179:Jorhat', '56126', 'KAMDHENU HARDWARE', '7002034260', 0, '00:00:00', '00:00:00', '0', '0');
INSERT INTO `tbl_users1` (`id`, `agree`, `company_name`, `email`, `name`, `mobile_no`, `status`, `login_time`, `logout_time`, `created_at`, `updated_at`) VALUES
(447, 'N1', '022:Ludhiana', '45649', 'M/S PANKAJ IRON STORE,', '9463557599', 0, '00:00:00', '00:00:00', '0', '0'),
(448, 'N1', '022:Ludhiana', '49225', 'DEEP HARDWARE STORE', '9417200956', 0, '00:00:00', '00:00:00', '0', '0'),
(449, 'N1', '022:Ludhiana', '147272', 'GURBAX INTERLOCK TILES', '9888863025', 0, '00:00:00', '00:00:00', '0', '0'),
(450, 'N1', '022:Ludhiana', '152012', 'SAHIB PAINTS', '9915150010', 0, '00:00:00', '00:00:00', '0', '0'),
(451, 'N1', '027:Jammu', '101718', 'ABBUZAR PLYWOOD & HARDWARE GEN.STORE', '8492850703', 0, '00:00:00', '00:00:00', '0', '0'),
(452, 'N1', '083:Jallandhar', '45039', 'M/S.NARAIN DASS PAINT PLAZA', '9988338375', 0, '00:00:00', '00:00:00', '0', '0'),
(453, 'N1', '083:Jallandhar', '46160', 'GOKAL CHAND & CO.,', '9915554242', 0, '00:00:00', '00:00:00', '0', '0'),
(454, 'N1', '083:Jallandhar', '48590', 'M/S AMRITSAR TRADERS ,', '9872080516', 0, '00:00:00', '00:00:00', '0', '0'),
(455, 'N1', '083:Jallandhar', '99922', 'K.S.TRADE LINKS', '9779099201', 0, '00:00:00', '00:00:00', '0', '0'),
(456, 'N1', '083:Jallandhar', '107700', 'M/S PREET PAINT & HARDWARE STORE', '9592951269', 0, '00:00:00', '00:00:00', '0', '0'),
(457, 'N1', '088:Bhatinda', '45423', 'UltraTech Cement Ltd. A/C  Bittu Iron Store', '9815974843', 0, '00:00:00', '00:00:00', '0', '0'),
(458, 'N1', '088:Bhatinda', '46811', 'PARAS RAM RATTAN LAL', '9815233988', 0, '00:00:00', '00:00:00', '0', '0'),
(459, 'N1', '088:Bhatinda', '47729', 'ONYX DISTRIBUTORS', '9054700097', 0, '00:00:00', '00:00:00', '0', '0'),
(460, 'N1', '088:Bhatinda', '47828', 'AMAR NATH JAIN & SONS,', '9815160712', 0, '00:00:00', '00:00:00', '0', '0'),
(461, 'N1', '103:Parwanoo', '52285', 'DAYAL SONS ENTRPRISE', '9418021048', 0, '00:00:00', '00:00:00', '0', '0'),
(462, 'N2', '023:Jaipur', '60420', 'M/S SANGEETA PAINT HOUSE,', '9811170635', 0, '00:00:00', '00:00:00', '0', '0'),
(463, 'N2', '023:Jaipur', '63454', 'BALAJI PAINTS', '9799909983', 0, '00:00:00', '00:00:00', '0', '0'),
(464, 'N2', '023:Jaipur', '64389', 'M/S SWASTIK TRADERS', '9828105511', 0, '00:00:00', '00:00:00', '0', '0'),
(465, 'N2', '023:Jaipur', '64798', 'M/S KRISHNA ENTERPRISES,', '9829107021', 0, '00:00:00', '00:00:00', '0', '0'),
(466, 'N2', '023:Jaipur', '160808', 'Ganesh Traders', '9314066836', 0, '00:00:00', '00:00:00', '0', '0'),
(467, 'N2', '025:Faridabad', '56707', 'RAJEEV M/C & H/W STORE', '9812456118', 0, '00:00:00', '00:00:00', '0', '0'),
(468, 'N2', '025:Faridabad', '57634', 'SONY RAM & COMPANY', '8585944647', 0, '00:00:00', '00:00:00', '0', '0'),
(469, 'N2', '025:Faridabad', '57900', 'OSWAL PAINTS & H/W STORE,', '9818306493', 0, '00:00:00', '00:00:00', '0', '0'),
(470, 'N2', '025:Faridabad', '57969', 'GUPTA PAINTS & HARDWARE STORE', '8882111623', 0, '00:00:00', '00:00:00', '0', '0'),
(471, 'N2', '025:Faridabad', '59965', 'JUNEJA TRADING CO.', '8198988889', 0, '00:00:00', '00:00:00', '0', '0'),
(472, 'N2', '025:Faridabad', '60179', 'AGGARWAL H/W & PAINT STORE', '8882347476', 0, '00:00:00', '00:00:00', '0', '0'),
(473, 'N2', '025:Faridabad', '61249', 'LAKSHMI SALES MART', '9899188114', 0, '00:00:00', '00:00:00', '0', '0'),
(474, 'N2', '025:Faridabad', '62521', 'SHRI BALAJI PAINTS & HARDWARE STORE', '9310115754', 0, '00:00:00', '00:00:00', '0', '0'),
(475, 'N2', '025:Faridabad', '64449', 'BABA PAINTS & SANITARY STORE', '9673410214', 0, '00:00:00', '00:00:00', '0', '0'),
(476, 'N2', '025:Faridabad', '64731', 'SANDEEP MARKETING', '9210384804', 0, '00:00:00', '00:00:00', '0', '0'),
(477, 'N2', '025:Faridabad', '77773', 'SAPRA TRADING CO.', '9215221881', 0, '00:00:00', '00:00:00', '0', '0'),
(478, 'N2', '025:Faridabad', '83595', 'GOYAL PAINTS & H/W STORE', '9212049295', 0, '00:00:00', '00:00:00', '0', '0'),
(479, 'N2', '025:Faridabad', '85627', 'PARMAR TRADERS.', '9990094799', 0, '00:00:00', '00:00:00', '0', '0'),
(480, 'N2', '025:Faridabad', '127305', 'VEDANSH ENTERPRISES', '9582900691', 0, '00:00:00', '00:00:00', '0', '0'),
(481, 'N2', '025:Faridabad', '129068', 'SHRI RAM PAINTS AND HARDWARE', '9034602659', 0, '00:00:00', '00:00:00', '0', '0'),
(482, 'N2', '025:Faridabad', '145039', 'KD ENTERPRISES', '8882821054', 0, '00:00:00', '00:00:00', '0', '0'),
(483, 'N2', '025:Faridabad', '147319', 'M/s KAMAL KUMAR KARAN KUMAR', '9416404895', 0, '00:00:00', '00:00:00', '0', '0'),
(484, 'N2', '025:Faridabad', '150587', 'SARDANA PAINTS and HARDWARE', '9416296949', 0, '00:00:00', '00:00:00', '0', '0'),
(485, 'N2', '025:Faridabad', '154301', 'RAJ KUMAR JAI BHAGWAN', '9416532140', 0, '00:00:00', '00:00:00', '0', '0'),
(486, 'N2', '025:Faridabad', '154302', 'AGRAWAL TRADING COMPANY', '9818360055', 0, '00:00:00', '00:00:00', '0', '0'),
(487, 'N2', '025:Faridabad', '160852', 'GOYAL PAINT HARDWARE and SANITARY', '8750605661', 0, '00:00:00', '00:00:00', '0', '0'),
(488, 'N2', '025:Faridabad', '165405', 'BANKEY BIHARI PAINT and SANITARY STORE', '7404432334', 0, '00:00:00', '00:00:00', '0', '0'),
(489, 'N2', '087:Jodhpur', '52255', 'M/S AHMED & CO.', '9413106409', 0, '00:00:00', '00:00:00', '0', '0'),
(490, 'N2', '087:Jodhpur', '52400', 'M/S SANJAY HARDWARE', '8094848100', 0, '00:00:00', '00:00:00', '0', '0'),
(491, 'N2', '087:Jodhpur', '52450', 'M/S BALAJI PAINTS', '7665555432', 0, '00:00:00', '00:00:00', '0', '0'),
(492, 'N2', '087:Jodhpur', '52862', 'M/S BEYLIM PAINTS & H/W', '9549178600', 0, '00:00:00', '00:00:00', '0', '0'),
(493, 'N2', '087:Jodhpur', '53215', 'M/S RANG SAGAR', '9829023407', 0, '00:00:00', '00:00:00', '0', '0'),
(494, 'N2', '087:Jodhpur', '88913', 'SKYLINE ENTERPRISES', '8094848100', 0, '00:00:00', '00:00:00', '0', '0'),
(495, 'N2', '087:Jodhpur', '115870', 'SHRI BALAJI COLORS', '7742750351', 0, '00:00:00', '00:00:00', '0', '0'),
(496, 'N2', '087:Jodhpur', '117487', 'R.K.PAINTS', '7230099480', 0, '00:00:00', '00:00:00', '0', '0'),
(497, 'N2', '104:Gurgaon', '56917', 'KATARIA H/W TRADING CO', '9971800244', 0, '00:00:00', '00:00:00', '0', '0'),
(498, 'N2', '104:Gurgaon', '57546', 'YADAV PAINTS', '9416575938', 0, '00:00:00', '00:00:00', '0', '0'),
(499, 'N2', '104:Gurgaon', '61109', 'SHRI BALAJI HARDWARE, SANITARY & PAINT STORE', '9992211672', 0, '00:00:00', '00:00:00', '0', '0'),
(500, 'N2', '104:Gurgaon', '61421', 'SHIVAM H/W PAINTS & ELECTRICAL STORE', '9871832215', 0, '00:00:00', '00:00:00', '0', '0'),
(501, 'N2', '104:Gurgaon', '62410', 'DEEPAK TRADERS', '9212326624', 0, '00:00:00', '00:00:00', '0', '0'),
(502, 'N2', '104:Gurgaon', '62784', 'N.K.H/W & SANITARY STORE', '9711987740', 0, '00:00:00', '00:00:00', '0', '0'),
(503, 'N2', '104:Gurgaon', '64094', 'CHAWAN RISHI ELECT. & H/W', '9992398339', 0, '00:00:00', '00:00:00', '0', '0'),
(504, 'N2', '104:Gurgaon', '64414', 'PAL SANITARY CENTRE', '8168192113', 0, '00:00:00', '00:00:00', '0', '0'),
(505, 'N2', '104:Gurgaon', '66150', 'SURENDRA PAINTS & H/W STORE', '9812452444', 0, '00:00:00', '00:00:00', '0', '0'),
(506, 'N2', '104:Gurgaon', '81247', 'BANSAL PAINTS', '9311111025', 0, '00:00:00', '00:00:00', '0', '0'),
(507, 'N2', '104:Gurgaon', '115073', 'ULTRATECH A/C HARYANA MARBLE UDYOG', '9416101161', 0, '00:00:00', '00:00:00', '0', '0'),
(508, 'N2', '104:Gurgaon', '115995', 'BUILDMART', '9350112902', 0, '00:00:00', '00:00:00', '0', '0'),
(509, 'N2', '104:Gurgaon', '123424', 'AGGARWAL SANITARY H/W & ELECTRICALS', '9711179778', 0, '00:00:00', '00:00:00', '0', '0'),
(510, 'N2', '104:Gurgaon', '123714', 'ASIA TRADING COMPANY', '9810581396', 0, '00:00:00', '00:00:00', '0', '0'),
(511, 'N2', '104:Gurgaon', '134263', 'MAA SANTOSHI TRADERS', '9213338355', 0, '00:00:00', '00:00:00', '0', '0'),
(512, 'N2', '104:Gurgaon', '134771', 'UltraTech Cement Ltd. A/c Harphool Singh Jai parkash', '9315174100', 0, '00:00:00', '00:00:00', '0', '0'),
(513, 'N2', '104:Gurgaon', '143239', 'SHRI SHYAM PAINTS and HARDWARE STORE', '7056180799', 0, '00:00:00', '00:00:00', '0', '0'),
(514, 'N2', '104:Gurgaon', '143981', 'JAI STEEL GLASS AND TIMBER TRADERS', '9466731353', 0, '00:00:00', '00:00:00', '0', '0'),
(515, 'N2', '104:Gurgaon', '155508', 'DURGA-STEEL', '9999355200', 0, '00:00:00', '00:00:00', '0', '0'),
(516, 'N2', '104:Gurgaon', '156928', 'RAO HARDWARE and SANITARY', '8800478885', 0, '00:00:00', '00:00:00', '0', '0'),
(517, 'N2', '104:Gurgaon', '158175', 'BROTHER HOME SOLUTUON', '9729328858', 0, '00:00:00', '00:00:00', '0', '0'),
(518, 'N2', '104:Gurgaon', '159368', 'BANSAL TRADERS', '9811093966', 0, '00:00:00', '00:00:00', '0', '0'),
(519, 'N2', '122:Ambala', '44933', 'RAM CHAND AMIR CHAND', '8307859098', 0, '00:00:00', '00:00:00', '0', '0'),
(520, 'N2', '122:Ambala', '46166', 'KRISHNA PAINTS &H/W STORE', '9215677040', 0, '00:00:00', '00:00:00', '0', '0'),
(521, 'N2', '122:Ambala', '46698', 'VIJAY H/W & MILL STORE', '9896129352', 0, '00:00:00', '00:00:00', '0', '0'),
(522, 'N2', '122:Ambala', '47426', 'SUNBEAM PAINT H/W & SHUTTERING STORE', '9812186324', 0, '00:00:00', '00:00:00', '0', '0'),
(523, 'N2', '122:Ambala', '48670', 'DINESH ENTERPRISES', '9416120232', 0, '00:00:00', '00:00:00', '0', '0'),
(524, 'N2', '122:Ambala', '50107', 'Ramesh Paints & Sanitaryware', '9254105981', 0, '00:00:00', '00:00:00', '0', '0'),
(525, 'N2', '122:Ambala', '50504', 'SANJAY PAINTS & H/W EMPORIUM', '8684898949', 0, '00:00:00', '00:00:00', '0', '0'),
(526, 'N2', '122:Ambala', '50547', 'LUCKY TRADERS', '9896036968', 0, '00:00:00', '00:00:00', '0', '0'),
(527, 'N2', '122:Ambala', '81948', 'YOGESH SHUTTERING & BUILDING MATERIAL', '9466580001', 0, '00:00:00', '00:00:00', '0', '0'),
(528, 'N2', '122:Ambala', '112613', 'AGGARWAL PAINTS', '9896342949', 0, '00:00:00', '00:00:00', '0', '0'),
(529, 'N2', '122:Ambala', '113737', 'SINGLA PLY & TIMBER STORE', '9416039143', 0, '00:00:00', '00:00:00', '0', '0'),
(530, 'N2', '122:Ambala', '128919', 'DEEP ENTERPRISES', '9992985777', 0, '00:00:00', '00:00:00', '0', '0'),
(531, 'N2', '122:Ambala', '131304', 'ALIGARH PAINT AND TOOLS', '9034244613', 0, '00:00:00', '00:00:00', '0', '0'),
(532, 'N2', '122:Ambala', '156671', 'PSUS PAINTS', '9416555888', 0, '00:00:00', '00:00:00', '0', '0'),
(533, 'N2', '123:Udaipur', '78740', 'AKBAR ALI KHAKADWALA AND SONS', '9413611207', 0, '00:00:00', '00:00:00', '0', '0'),
(534, 'N2', '123:Udaipur', '149016', 'RATNA ROSHAN ENTERPRISES', '9887265572', 0, '00:00:00', '00:00:00', '0', '0'),
(535, 'N2', '132:Bikaner', '55493', 'M/S DHEERAJ TRADING CO.', '9214981099', 0, '00:00:00', '00:00:00', '0', '0'),
(536, 'N2', '132:Bikaner', '55932', 'MOOLCHAND PARAKH & SONS', '7597743291', 0, '00:00:00', '00:00:00', '0', '0'),
(537, 'N2', '132:Bikaner', '56617', 'BAJRANG TRADING COMPANY', '8890978600', 0, '00:00:00', '00:00:00', '0', '0'),
(538, 'N2', '132:Bikaner', '60336', 'M/S CHANDAK SUPPLY CENTER', '9829217288', 0, '00:00:00', '00:00:00', '0', '0'),
(539, 'N2', '132:Bikaner', '159062', 'M/S GOOD INDIA TRADERS', '9461249749', 0, '00:00:00', '00:00:00', '0', '0'),
(540, 'N2', '149:Kota', '64986', 'ANIL ENTERPRISES,', '9413313501', 0, '00:00:00', '00:00:00', '0', '0'),
(541, 'N2', '149:Kota', '125136', 'VISHNU H/W and SANITARY', '9001509283', 0, '00:00:00', '00:00:00', '0', '0'),
(542, 'N2', '149:Kota', '150055', 'SHIVANGI TRADERS', '8955432702', 0, '00:00:00', '00:00:00', '0', '0'),
(543, 'N2', '182:Jaipur-2', '55960', 'M/S SHYAM H/W & PAINT STORE,', '9414215329', 0, '00:00:00', '00:00:00', '0', '0'),
(544, 'N2', '182:Jaipur-2', '59210', 'M/S SHYAM SUNDEAR LAL & SONS,', '9414712774', 0, '00:00:00', '00:00:00', '0', '0'),
(545, 'N2', '182:Jaipur-2', '96756', 'M/s Jalan & Company', '9828588435', 0, '00:00:00', '00:00:00', '0', '0'),
(546, 'N2', '182:Jaipur-2', '124331', 'M/S SURYA TRADING COMPANY', '9414080580', 0, '00:00:00', '00:00:00', '0', '0'),
(547, 'N2', '182:Jaipur-2', '126476', 'M/S OM NORANG TRADERS', '9462103797', 0, '00:00:00', '00:00:00', '0', '0'),
(548, 'S1', '030:Chennai', '164751', 'RAMACHANDRAN ENTERPRISES', '7558111549', 0, '00:00:00', '00:00:00', '0', '0'),
(549, 'S1', '033:Visakhapatnam', '55904', 'M/S.LAKSHMI NARASIMHA NAIDU PAINTS & HARDWARE,', '9246635939', 0, '00:00:00', '00:00:00', '0', '0'),
(550, 'S1', '033:Visakhapatnam', '59881', 'RADHIKA PAINTS & HARDWARE', '9885874376', 0, '00:00:00', '00:00:00', '0', '0'),
(551, 'S1', '033:Visakhapatnam', '64828', 'NAIDU PAINTS & H/W', '9866043543', 0, '00:00:00', '00:00:00', '0', '0'),
(552, 'S1', '034:Hyderabad', '45133', 'M/S.SHARADA ELECTRICALS H/W & PAINTS', '9392531078', 0, '00:00:00', '00:00:00', '0', '0'),
(553, 'S1', '034:Hyderabad', '49459', 'M/S.ANNAPURNA IRON HARD- WARE AND PAINTS', '9000005584', 0, '00:00:00', '00:00:00', '0', '0'),
(554, 'S1', '037:Madurai', '43066', 'RANI PAINTS,', '9362360002', 0, '00:00:00', '00:00:00', '0', '0'),
(555, 'S1', '038:Vijaywada', '46737', 'M/S.DURGA PAINTS', '7416446780', 0, '00:00:00', '00:00:00', '0', '0'),
(556, 'S1', '038:Vijaywada', '47141', 'RAVI PAINTS & H/W.', '9885059678', 0, '00:00:00', '00:00:00', '0', '0'),
(557, 'S1', '038:Vijaywada', '48163', 'SRI VIJAYALAKSHMI ENTERPRISES', '9848122072', 0, '00:00:00', '00:00:00', '0', '0'),
(558, 'S1', '038:Vijaywada', '50240', 'M/S.SUPRIYA PAINTS', '9247777887', 0, '00:00:00', '00:00:00', '0', '0'),
(559, 'S1', '038:Vijaywada', '106147', 'M/S.SRI SHIRDI SAI PAINTS', '7730051999', 0, '00:00:00', '00:00:00', '0', '0'),
(560, 'S1', '038:Vijaywada', '109793', 'SAI SRINIVASA PAINTS', '9290144855', 0, '00:00:00', '00:00:00', '0', '0'),
(561, 'S1', '109:Tirupati', '41830', 'RAJU PAINT STORES', '9010490432', 0, '00:00:00', '00:00:00', '0', '0'),
(562, 'S1', '109:Tirupati', '42452', 'OM BALAJI TRADERS(NEW),', '9885181119', 0, '00:00:00', '00:00:00', '0', '0'),
(563, 'S1', '109:Tirupati', '43441', 'SATYANARAYANA PAINTS & HARDWARES', '9948506399', 0, '00:00:00', '00:00:00', '0', '0'),
(564, 'S1', '109:Tirupati', '43527', 'SRI SATYANARAYANA TRADERS', '9247369463', 0, '00:00:00', '00:00:00', '0', '0'),
(565, 'S1', '109:Tirupati', '134137', 'M/S SHIVA GANGA TRADERS', '9963185203', 0, '00:00:00', '00:00:00', '0', '0'),
(566, 'S1', '109:Tirupati', '150107', 'RAJU HARDWARES and PAINTS', '8121719399', 0, '00:00:00', '00:00:00', '0', '0'),
(567, 'S1', '109:Tirupati', '161811', 'SRI BALAJI HARDWARES', '8106128438', 0, '00:00:00', '00:00:00', '0', '0'),
(568, 'S1', '128:Hyderabad-2', '97984', 'M/s. SRI VENKATA LAXMI ENTERPRISES', '9701999989', 0, '00:00:00', '00:00:00', '0', '0'),
(569, 'S1', '128:Hyderabad-2', '109174', 'M/S.LAXMI NARSIMHA TRADERS', '9885988663', 0, '00:00:00', '00:00:00', '0', '0'),
(570, 'S1', '128:Hyderabad-2', '121256', 'M/S. ADARSH TRADERS', '#N/A', 0, '00:00:00', '00:00:00', '0', '0'),
(571, 'S1', '128:Hyderabad-2', '124251', 'M/s.SRI MAHALAXMI TRADERS', '9573137063', 0, '00:00:00', '00:00:00', '0', '0'),
(572, 'S1', '128:Hyderabad-2', '157133', 'M/s. TIRUMALA TRADERS', '9951745012', 0, '00:00:00', '00:00:00', '0', '0'),
(573, 'S1', '128:Hyderabad-2', '159906', 'M/s. SHIVASAI TRADERS', '9848846518', 0, '00:00:00', '00:00:00', '0', '0'),
(574, 'S1', '129:Tirunelveli', '41978', 'K. ARULDHAS PAINTS', '9003614988', 0, '00:00:00', '00:00:00', '0', '0'),
(575, 'S1', '129:Tirunelveli', '41991', 'SUDHA TRADERS,', '7904869640', 0, '00:00:00', '00:00:00', '0', '0'),
(576, 'S1', '129:Tirunelveli', '41997', 'GOPALAN & SONS', '9944267105', 0, '00:00:00', '00:00:00', '0', '0'),
(577, 'S1', '129:Tirunelveli', '42194', 'SRI KRISHNA TRADERS', '9655644575', 0, '00:00:00', '00:00:00', '0', '0'),
(578, 'S1', '129:Tirunelveli', '42911', 'M.M.TRADERS,', '9442075346', 0, '00:00:00', '00:00:00', '0', '0'),
(579, 'S1', '129:Tirunelveli', '43380', 'JEEVA HARDWARES', '9442406406', 0, '00:00:00', '00:00:00', '0', '0'),
(580, 'S1', '129:Tirunelveli', '43431', 'SUPREME TRADERS', '9524639388', 0, '00:00:00', '00:00:00', '0', '0'),
(581, 'S1', '129:Tirunelveli', '43599', 'THANGAM STORES,', '9790793007', 0, '00:00:00', '00:00:00', '0', '0'),
(582, 'S1', '129:Tirunelveli', '43964', 'RAJESH HARDWARES,', '9994436393', 0, '00:00:00', '00:00:00', '0', '0'),
(583, 'S1', '129:Tirunelveli', '78757', 'ASHLINE HARDWARES', '9443791052', 0, '00:00:00', '00:00:00', '0', '0'),
(584, 'S1', '129:Tirunelveli', '112252', 'ALEX TRADERS', '9715658414', 0, '00:00:00', '00:00:00', '0', '0'),
(585, 'S1', '129:Tirunelveli', '129437', 'RENNISON TRADERS', '8754006754', 0, '00:00:00', '00:00:00', '0', '0'),
(586, 'S1', '129:Tirunelveli', '152061', 'NOAH TRADERS', '8220004771', 0, '00:00:00', '00:00:00', '0', '0'),
(587, 'S1', '135:Kurnool', '45204', 'M/s.SRI VENKATA MANIKYA HARDWARE & PAINTS', '9948660613', 0, '00:00:00', '00:00:00', '0', '0'),
(588, 'S1', '135:Kurnool', '45409', 'SAI ENTERPRISES', '9985550011', 0, '00:00:00', '00:00:00', '0', '0'),
(589, 'S1', '135:Kurnool', '85383', 'VIJAYADURGA ENTERPRISES', '9440586873', 0, '00:00:00', '00:00:00', '0', '0'),
(590, 'S1', '135:Kurnool', '85677', 'M/s.SREE THUNGA PAINTS', '9030706858', 0, '00:00:00', '00:00:00', '0', '0'),
(591, 'S1', '135:Kurnool', '158062', 'AM ENTERPRISES', '9052726606', 0, '00:00:00', '00:00:00', '0', '0'),
(592, 'S1', '177:Guntur', '83823', 'M/S.USMAN PAINTS', '9704282241', 0, '00:00:00', '00:00:00', '0', '0'),
(593, 'S1', '177:Guntur', '90731', 'M/S.SRI VAISHNAVI TRADERS', '9908961320', 0, '00:00:00', '00:00:00', '0', '0'),
(594, 'S1', '177:Guntur', '95548', 'M/S. ANJANEYA PAINTS & HARDWARES', '9704050885', 0, '00:00:00', '00:00:00', '0', '0'),
(595, 'S1', '177:Guntur', '114335', 'M/S.VENKATESWARA PAINTS & GENERAL STORES', '9908164080', 0, '00:00:00', '00:00:00', '0', '0'),
(596, 'S1', '177:Guntur', '130015', 'K K COLOURS', '9000551727', 0, '00:00:00', '00:00:00', '0', '0'),
(597, 'S1', '177:Guntur', '135456', 'SRI VENKATESWARA PAINTS AND HARDWARE', '9701688546', 0, '00:00:00', '00:00:00', '0', '0'),
(598, 'S1', '177:Guntur', '151470', 'SUDHAKAR AGENCIES', '9866310316', 0, '00:00:00', '00:00:00', '0', '0'),
(599, 'S2', '031:Bangalore', '41634', 'GEEKAY ENTERPRISES', '9342108889', 0, '00:00:00', '00:00:00', '0', '0'),
(600, 'S2', '031:Bangalore', '69456', 'MARUTHI HARDWARE & ELCTRI', '9845000561', 0, '00:00:00', '00:00:00', '0', '0'),
(601, 'S2', '031:Bangalore', '120189', 'PAWAN HARDWARE & ELECTRICALS', '9739351880', 0, '00:00:00', '00:00:00', '0', '0'),
(602, 'S2', '039:Hubballi', '89121', 'SHADAB ENTERPRISES', '8310858149', 0, '00:00:00', '00:00:00', '0', '0'),
(603, 'S2', '039:Hubballi', '161048', 'HEERA ENTERPRISES', '9611178686', 0, '00:00:00', '00:00:00', '0', '0'),
(604, 'S2', '046:Bangalore-3', '117927', 'Sri Krishna Enterprises', '9591026737', 0, '00:00:00', '00:00:00', '0', '0'),
(605, 'S2', '046:Bangalore-3', '148007', 'RELIABLE PAINTS', '9108154665', 0, '00:00:00', '00:00:00', '0', '0'),
(606, 'S2', '093:Mangalore', '113969', 'UltraTech Cement Ltd. A/C SUPRIYA TRADERS', '9742285262', 0, '00:00:00', '00:00:00', '0', '0'),
(607, 'S2', '206:Vijayapura', '79164', 'UltraTech Cement Ltd. A/C  Dhaneshwari Traders', '7353185778', 0, '00:00:00', '00:00:00', '0', '0'),
(608, 'S2', '206:Vijayapura', '157181', 'NATIONAL PAINTS and HARDWARE', '9730084670', 0, '00:00:00', '00:00:00', '0', '0'),
(609, 'S2', '206:Vijayapura', '159420', 'M.H. CHANEGAON TIMBER MERCHANT', '9972692252', 0, '00:00:00', '00:00:00', '0', '0'),
(610, 'W1', '013:Pune', '120271', 'ULTRATECH CEMENT LTD.  A/C - Arjun Traders', '8055610553', 0, '00:00:00', '00:00:00', '0', '0'),
(611, 'W1', '013:Pune', '131839', 'SHREYA PAINT LINE', '9823540646', 0, '00:00:00', '00:00:00', '0', '0'),
(612, 'W1', '016:Nagpur', '74603', 'SHREE PAINT HOUSE', '9422857607', 0, '00:00:00', '00:00:00', '0', '0'),
(613, 'W1', '016:Nagpur', '75553', 'SUBHASH TRADERS', '9373937155', 0, '00:00:00', '00:00:00', '0', '0'),
(614, 'W1', '016:Nagpur', '122662', 'PRAKASH PAINT & HARDWARE', '9766961105', 0, '00:00:00', '00:00:00', '0', '0'),
(615, 'W1', '016:Nagpur', '123803', 'JIJAI TRADERS', '9850034556', 0, '00:00:00', '00:00:00', '0', '0'),
(616, 'W1', '016:Nagpur', '130085', 'SAGAR TRADERS', '9764983776', 0, '00:00:00', '00:00:00', '0', '0'),
(617, 'W1', '016:Nagpur', '148338', 'Ultratech Cement Limited A/c.TIRUPATI TRADERS', '8888665216', 0, '00:00:00', '00:00:00', '0', '0'),
(618, 'W1', '069:Mumbai-2', '68733', 'Thakkar Trading Company', '2228342001', 0, '00:00:00', '00:00:00', '0', '0'),
(619, 'W1', '077:Aurangabad', '67467', 'OM AGENCY', '9422374541', 0, '00:00:00', '00:00:00', '0', '0'),
(620, 'W1', '077:Aurangabad', '68067', 'KHANAPURE COLOUR HOME', '9823968837', 0, '00:00:00', '00:00:00', '0', '0'),
(621, 'W1', '077:Aurangabad', '68972', 'ALKATWAR TRADERS', '9890171424', 0, '00:00:00', '00:00:00', '0', '0'),
(622, 'W1', '077:Aurangabad', '69363', 'VISHAL ENTERPRISES', '9595915999', 0, '00:00:00', '00:00:00', '0', '0'),
(623, 'W1', '077:Aurangabad', '120859', 'MARUTI TRADERS', '8888919115', 0, '00:00:00', '00:00:00', '0', '0'),
(624, 'W1', '077:Aurangabad', '129759', 'AMOL COLOUR HOME', '9673858587', 0, '00:00:00', '00:00:00', '0', '0'),
(625, 'W1', '077:Aurangabad', '158827', 'ULTRATECH CEMENT LTD.A/C BABA TRADERS', '9422207744', 0, '00:00:00', '00:00:00', '0', '0'),
(626, 'W1', '077:Aurangabad', '165724', 'ULTRATECH CEMENT LTD.A/C AMEY ENTERPRISES', '9404001565', 0, '00:00:00', '00:00:00', '0', '0'),
(627, 'W1', '112:Nashik', '66669', 'M/S.PAINT PALACE(B)', '9422775429', 0, '00:00:00', '00:00:00', '0', '0'),
(628, 'W1', '112:Nashik', '68596', 'SHRIRAJ TRADING COMPANY', '9421584343', 0, '00:00:00', '00:00:00', '0', '0'),
(629, 'W1', '112:Nashik', '70793', 'M/S RAJLAXMI PAINTS', '9422162605', 0, '00:00:00', '00:00:00', '0', '0'),
(630, 'W1', '112:Nashik', '74100', 'SAMTA PAINTS', '9326312161', 0, '00:00:00', '00:00:00', '0', '0'),
(631, 'W1', '112:Nashik', '75137', 'SONI AGENCIES,', '9860080435', 0, '00:00:00', '00:00:00', '0', '0'),
(632, 'W1', '112:Nashik', '75300', 'MAHARASHTRA PAINT HOUSE', '9372195252', 0, '00:00:00', '00:00:00', '0', '0'),
(633, 'W1', '112:Nashik', '82573', 'A.R.HAJI.KHARUDDIN', '9271002661', 0, '00:00:00', '00:00:00', '0', '0'),
(634, 'W1', '112:Nashik', '94068', 'ROOPRANG PALACE', '8055868987', 0, '00:00:00', '00:00:00', '0', '0'),
(635, 'W1', '112:Nashik', '101215', 'SHRI SAMARTHA PAINTS', '8668771448', 0, '00:00:00', '00:00:00', '0', '0'),
(636, 'W1', '112:Nashik', '120668', 'Laxmi Hardware pipe and paint', '9545506420', 0, '00:00:00', '00:00:00', '0', '0'),
(637, 'W1', '112:Nashik', '127362', 'ANMOL PAINTS', '8805833300', 0, '00:00:00', '00:00:00', '0', '0'),
(638, 'W1', '112:Nashik', '145135', 'GURUNANAK PAINTS AND HARDWARE', '7588011222', 0, '00:00:00', '00:00:00', '0', '0'),
(639, 'W1', '112:Nashik', '154132', 'GATE BOHRI and BROTHERS', '9421564752', 0, '00:00:00', '00:00:00', '0', '0'),
(640, 'W1', '112:Nashik', '155782', 'EZZY PAINTS', '9028591267', 0, '00:00:00', '00:00:00', '0', '0'),
(641, 'W1', '120:Kolhapur', '121329', 'J K PAINTS', '9881901930', 0, '00:00:00', '00:00:00', '0', '0'),
(642, 'W1', '120:Kolhapur', '149803', 'JAI HIND DISTRIBUTORS -RETAIL', '9822001184', 0, '00:00:00', '00:00:00', '0', '0'),
(643, 'W1', '130:Bhiwandi Retail', '72554', 'SWASTIK PAINTS', '9325609608', 0, '00:00:00', '00:00:00', '0', '0'),
(644, 'W1', '138:Solapur', '66877', 'S.G.& COMPANY', '9860153786', 0, '00:00:00', '00:00:00', '0', '0'),
(645, 'W2', '011:Vadodara-2', '69996', 'R.JATIN & CO.', '9099035015', 0, '00:00:00', '00:00:00', '0', '0'),
(646, 'W2', '011:Vadodara-2', '71220', 'ZARIN SALES', '9898071871', 0, '00:00:00', '00:00:00', '0', '0'),
(647, 'W2', '011:Vadodara-2', '118586', 'BURHANI HARDWARE AND PAINTS', '9824690267', 0, '00:00:00', '00:00:00', '0', '0'),
(648, 'W2', '014:Ahmedabad', '73632', 'SAGAR COLOUR CO', '9375050300', 0, '00:00:00', '00:00:00', '0', '0'),
(649, 'W2', '018:Rajkot', '71829', 'NILKANTH LAMINETS & PAINTS', '9825434003', 0, '00:00:00', '00:00:00', '0', '0'),
(650, 'W2', '018:Rajkot', '72474', 'M/S.NEMINATH TRADERS.', '9879270573', 0, '00:00:00', '00:00:00', '0', '0'),
(651, 'W2', '018:Rajkot', '74306', 'M/S SHABBIR H/W MART', '9227752452', 0, '00:00:00', '00:00:00', '0', '0'),
(652, 'W2', '018:Rajkot', '82445', 'SHREEJI COLOUR BANK', '9898910592', 0, '00:00:00', '00:00:00', '0', '0'),
(653, 'W2', '018:Rajkot', '104805', 'SHRINATHJI HARDWARE MART', '9426719161', 0, '00:00:00', '00:00:00', '0', '0'),
(654, 'W2', '018:Rajkot', '105084', 'BHAVANI LOKHAND BHANDAR', '9904746403', 0, '00:00:00', '00:00:00', '0', '0'),
(655, 'W2', '018:Rajkot', '109413', 'UMIYA PAINTS & HARDWARE', '9725860200', 0, '00:00:00', '00:00:00', '0', '0'),
(656, 'W2', '018:Rajkot', '123292', 'ULTRATECH CEMENT LTD. A/C SHIVSHAKTI TRADING', '9979153360', 0, '00:00:00', '00:00:00', '0', '0'),
(657, 'W2', '018:Rajkot', '160066', 'BRIZ MARKETING', '9979857508', 0, '00:00:00', '00:00:00', '0', '0'),
(658, 'W2', '073:Surat', '69483', 'ADARSH COLOR CO.', '9173824143', 0, '00:00:00', '00:00:00', '0', '0'),
(659, 'W2', '076:Ahmedabad-2', '68832', 'SATYNAM TRADING PVT LTD,', '9687675404', 0, '00:00:00', '00:00:00', '0', '0'),
(660, 'W2', '076:Ahmedabad-2', '74240', 'ZAZ H/W STORES.', '9375611299', 0, '00:00:00', '00:00:00', '0', '0'),
(661, 'W2', '076:Ahmedabad-2', '74246', 'SHREE GURUDEV PAINTS', '9898804976', 0, '00:00:00', '00:00:00', '0', '0'),
(662, 'W2', '076:Ahmedabad-2', '85457', 'SHETH HARDWARE STORES', '9377760737', 0, '00:00:00', '00:00:00', '0', '0'),
(663, 'W2', '076:Ahmedabad-2', '87301', 'MAKHDUM CEMENT SALES AGENCY', '9898226080', 0, '00:00:00', '00:00:00', '0', '0'),
(664, 'W2', '076:Ahmedabad-2', '94114', 'TECHNO HARDWARE POINT', '8469316162', 0, '00:00:00', '00:00:00', '0', '0'),
(665, 'W2', '076:Ahmedabad-2', '149757', 'SHREE SONAL ENTERPRISE', '9879291733', 0, '00:00:00', '00:00:00', '0', '0'),
(666, 'W2', '076:Ahmedabad-2', '151730', 'GALAXY COLOR WORLD', '9537336819', 0, '00:00:00', '00:00:00', '0', '0'),
(667, 'W2', '076:Ahmedabad-2', '152027', 'ULTRATECH CEMENT LIMITED - A/C SHIV SAGAR TRADERS', '9427062509', 0, '00:00:00', '00:00:00', '0', '0'),
(668, 'W2', '076:Ahmedabad-2', '156672', 'APANA HARDWARE SUPPLIERS PVT LTD', '9428826370', 0, '00:00:00', '00:00:00', '0', '0'),
(669, 'E1', '003:Patna', '59341', 'BHAWAN ALANKAR', '7479866681', 0, '00:00:00', '00:00:00', '0', '0'),
(670, 'E1', '003:Patna', '62027', 'JAI GURUDEV HARDWARE MOSAIC HOUSE', '9334686110', 0, '00:00:00', '00:00:00', '0', '0'),
(671, 'E1', '003:Patna', '63104', 'MAGADH PAINTS & HARDWARE CO.', '8969231046', 0, '00:00:00', '00:00:00', '0', '0'),
(672, 'E1', '006:Kolkata-2', '66779', 'B.L.HARDWARE & PAINTS', '9143640928', 0, '00:00:00', '00:00:00', '0', '0'),
(673, 'E1', '006:Kolkata-2', '68945', 'CHOWDHURY CEMENT & PAINT TRADERS PVT. LTD.', '9051798272', 0, '00:00:00', '00:00:00', '0', '0'),
(674, 'E1', '006:Kolkata-2', '71525', 'PROYOJANEE', '7501634119', 0, '00:00:00', '00:00:00', '0', '0'),
(675, 'E1', '006:Kolkata-2', '72425', 'KUNDU  HARDWARE', '9126647111', 0, '00:00:00', '00:00:00', '0', '0'),
(676, 'E1', '006:Kolkata-2', '81434', 'NEW S. G. ENTERPRISE', '9264797414', 0, '00:00:00', '00:00:00', '0', '0'),
(677, 'E1', '006:Kolkata-2', '84724', 'PRAGATI HARDWARE', '9733894326', 0, '00:00:00', '00:00:00', '0', '0'),
(678, 'E1', '006:Kolkata-2', '106831', 'ADARSHA HARDWARE', '8348572457', 0, '00:00:00', '00:00:00', '0', '0'),
(679, 'E1', '108:Kolkata-4', '56436', 'SHAMSIA TAJ PAINTS', '9831673370', 0, '00:00:00', '00:00:00', '0', '0'),
(680, 'E1', '108:Kolkata-4', '56436', 'SHAMSIA TAJ PAINTS', '9831673370', 0, '00:00:00', '00:00:00', '0', '0'),
(681, 'E1', '108:Kolkata-4', '58033', 'MA KALI BHANDAR', '9748755176', 0, '00:00:00', '00:00:00', '0', '0'),
(682, 'E1', '108:Kolkata-4', '60935', 'MONOJ KUMAR VIJAY KUMAR', '9331009383', 0, '00:00:00', '00:00:00', '0', '0'),
(683, 'E1', '108:Kolkata-4', '140749', 'PRAGATI ENTERPRISE', '9163018423', 0, '00:00:00', '00:00:00', '0', '0'),
(684, 'E1', '110:Kolkata-5', '56368', 'A.K.DISTRIBUTORS', '9932082455', 0, '00:00:00', '00:00:00', '0', '0'),
(685, 'E1', '110:Kolkata-5', '59980', 'SARADAMOYEE PUMP  HOUSE', '9804998883', 0, '00:00:00', '00:00:00', '0', '0'),
(686, 'E1', '110:Kolkata-5', '60724', 'MAITY TILES', '9433160635', 0, '00:00:00', '00:00:00', '0', '0'),
(687, 'E1', '110:Kolkata-5', '64326', 'HARANATH PAINT MART ( P ) LIMITED', '9836302039', 0, '00:00:00', '00:00:00', '0', '0'),
(688, 'E1', '110:Kolkata-5', '115369', 'ADHIKARY IRON & PAINTS', '9239722214', 0, '00:00:00', '00:00:00', '0', '0'),
(689, 'E1', '110:Kolkata-5', '117957', 'GHOSH SANITARY & HARDWARE', '7980408576', 0, '00:00:00', '00:00:00', '0', '0'),
(690, 'E1', '126:Durgapur', '68746', 'Kajal Bhattacharyya', '9434187831', 0, '00:00:00', '00:00:00', '0', '0'),
(691, 'E1', '126:Durgapur', '85340', 'JANATA ENTERPRISE', '9007194629', 0, '00:00:00', '00:00:00', '0', '0'),
(692, 'E1', '161:Muzaffarpur', '57249', 'SHREE HANUMAN IRON STORES', '9473010164', 0, '00:00:00', '00:00:00', '0', '0'),
(693, 'E1', '161:Muzaffarpur', '64120', 'ATMARAM PODDAR', '7667348870', 0, '00:00:00', '00:00:00', '0', '0'),
(694, 'E1', '164:Malda', '37135', 'MARUTI GENERAL STORES', '9434065859', 0, '00:00:00', '00:00:00', '0', '0'),
(695, 'E1', '164:Malda', '90340', 'NISHA PAINT HOUSE', '9593568663', 0, '00:00:00', '00:00:00', '0', '0'),
(696, 'E1', '164:Malda', '97242', 'M/S KISHOR KUMAR SINHA', '8900342626', 0, '00:00:00', '00:00:00', '0', '0'),
(697, 'E1', '164:Malda', '111338', 'KOHINUR HARDWARE', '9434976914', 0, '00:00:00', '00:00:00', '0', '0'),
(698, 'E1', '164:Malda', '150707', 'NAAZ HARDWARE', '6294333463', 0, '00:00:00', '00:00:00', '0', '0'),
(699, 'E1', '178:Bhagalpur', '55488', 'SHRI KALI HARDWARE STORES', '8877701231', 0, '00:00:00', '00:00:00', '0', '0'),
(700, 'E1', '178:Bhagalpur', '57506', 'KANHAIYALAL PURUSOTTAM DAS', '9431213796', 0, '00:00:00', '00:00:00', '0', '0'),
(701, 'E1', '178:Bhagalpur', '62415', 'HOME COLOUR', '9470032063', 0, '00:00:00', '00:00:00', '0', '0'),
(702, 'E1', '178:Bhagalpur', '97386', 'POPULAR AGENCIES', '9431029609', 0, '00:00:00', '00:00:00', '0', '0'),
(703, 'E1', '204:Patna-3', '55684', 'RANGOLI LIME & PAINTS', '9835479954', 0, '00:00:00', '00:00:00', '0', '0'),
(704, 'E1', '204:Patna-3', '58232', 'NALANDA HARDWARE AND MACHINERY STORES', '9334370633', 0, '00:00:00', '00:00:00', '0', '0'),
(705, 'E1', '205:Medinipur', '56364', 'BHARAT HARDWARE AND MACHINERY', '8250492264', 0, '00:00:00', '00:00:00', '0', '0'),
(706, 'E1', '205:Medinipur', '61629', 'MAA SHITALA HARDWARE', '9932562059', 0, '00:00:00', '00:00:00', '0', '0'),
(707, 'E1', '205:Medinipur', '64875', 'JANA HARDWARE', '9434146052', 0, '00:00:00', '00:00:00', '0', '0'),
(708, 'E1', '205:Medinipur', '80565', 'GITANJALI PAINTS & ENGG CO.', '9233304074', 0, '00:00:00', '00:00:00', '0', '0'),
(709, 'E1', '205:Medinipur', '99834', 'KABITA BUILDERS', '8972555506', 0, '00:00:00', '00:00:00', '0', '0'),
(710, 'E1', '205:Medinipur', '108655', 'CHANCHAL\'S', '9832764233', 0, '00:00:00', '00:00:00', '0', '0'),
(711, 'S2', '036:Calicut', '127061', 'SHANTHA POLISH PAINTS', '9447119888', 0, '00:00:00', '00:00:00', '0', '0'),
(712, 'S2', '036:Calicut', '39938', 'AISWARYA PAINTS', '9847700551', 0, '00:00:00', '00:00:00', '0', '0'),
(713, 'S2', '036:Calicut', '40306', 'VICTORY TRADERS', '9447274807', 0, '00:00:00', '00:00:00', '0', '0'),
(714, 'S2', '036:Calicut', '83306', 'MVS PAINTS & HARDWARES', '9961447477', 0, '00:00:00', '00:00:00', '0', '0'),
(715, 'S2', '036:Calicut', '162167', 'THAVAKKAL PAINTS and HARDWARES', '9142176833', 0, '00:00:00', '00:00:00', '0', '0'),
(716, 'S2', '036:Calicut', '164999', 'KASCO TRADERS, MALAPPURAM', '9847830154', 0, '00:00:00', '00:00:00', '0', '0'),
(717, 'S2', '036:Calicut', '40309', 'MAKKARAPARAMBA HARDWARES', '9995247770', 0, '00:00:00', '00:00:00', '0', '0'),
(718, 'S2', '036:Calicut', '144586', 'FRESH LOOK, TRIPANACHI', '9645526482', 0, '00:00:00', '00:00:00', '0', '0'),
(719, 'S2', '036:Calicut', '39447', 'POPULAR HARDWARES', '9447681755', 0, '00:00:00', '00:00:00', '0', '0'),
(720, 'S2', '036:Calicut', '40745', 'VARANGOT HARDWARES', '9895241805', 0, '00:00:00', '00:00:00', '0', '0'),
(721, 'S2', '036:Calicut', '40784', 'KORAMBAYIL METALS & PAINTS', '9446157032', 0, '00:00:00', '00:00:00', '0', '0'),
(722, 'S2', '036:Calicut', '140843', 'PAINT POINT, KOTTAKKAL', '9995550131', 0, '00:00:00', '00:00:00', '0', '0'),
(723, 'S2', '036:Calicut', '39954', 'CRESCENT HARDWARE & STEELS', '9847279202', 0, '00:00:00', '00:00:00', '0', '0'),
(724, 'S2', '036:Calicut', '150606', 'PIGMENT PAINTS- KALLANTHOD', '9745446209', 0, '00:00:00', '00:00:00', '0', '0'),
(725, 'S2', '036:Calicut', '156510', 'WONDER STONES MARKETING', '9847636376', 0, '00:00:00', '00:00:00', '0', '0'),
(726, 'S2', '036:Calicut', '40181', 'ALFAIN TRADERS', '9847122649', 0, '00:00:00', '00:00:00', '0', '0'),
(727, 'S2', '036:Calicut', '78906', 'HAPPY TRADERS', '9605177114', 0, '00:00:00', '00:00:00', '0', '0'),
(728, 'S2', '091:Trivandrum', '140942', 'ASWATHY GLASS AND PAINT HOUSE', '9895882813', 0, '00:00:00', '00:00:00', '0', '0'),
(729, 'S2', '091:Trivandrum', '39956', 'PARPPIDAM PAINTS', '9349880726', 0, '00:00:00', '00:00:00', '0', '0'),
(730, 'S2', '091:Trivandrum', '44795', 'RAINBOW PAINTS', '8281633927', 0, '00:00:00', '00:00:00', '0', '0'),
(731, 'S2', '091:Trivandrum', '84616', 'G.P TRADERS', '9446849518', 0, '00:00:00', '00:00:00', '0', '0'),
(732, 'S2', '091:Trivandrum', '40203', 'THAYILLAM PAINTS', '8089089081', 0, '00:00:00', '00:00:00', '0', '0'),
(733, 'S2', '091:Trivandrum', '40248', 'VAK PAINTS', '9037501906', 0, '00:00:00', '00:00:00', '0', '0'),
(734, 'S2', '091:Trivandrum', '39141', 'NEW CHALAI AGENCIES', '9388881020', 0, '00:00:00', '00:00:00', '0', '0'),
(735, 'S2', '096:Kottayam', '39700', 'ARANGANPARAMBIL GLASS PALACE', '9745631139', 0, '00:00:00', '00:00:00', '0', '0'),
(736, 'S2', '096:Kottayam', '39806', 'MAVELITHURUTHEL  GLASS HOUSE & HARDWARES', '9895633030', 0, '00:00:00', '00:00:00', '0', '0'),
(737, 'S2', '096:Kottayam', '40186', 'NJAVALLIKUNNEL AGNCIES PAINT MERCHENTS', '9447805407', 0, '00:00:00', '00:00:00', '0', '0'),
(738, 'S2', '096:Kottayam', '40456', 'GINO ENTERPRISES PAINT MERCHENT', '9447561664', 0, '00:00:00', '00:00:00', '0', '0'),
(739, 'S2', '096:Kottayam', '40692', 'SHEEBA PAINTHOUSE', '9446114336', 0, '00:00:00', '00:00:00', '0', '0'),
(740, 'S2', '096:Kottayam', '156238', 'ANUGRAHA TRADERS', '9048996852', 0, '00:00:00', '00:00:00', '0', '0'),
(741, 'S2', '096:Kottayam', '39415', 'SREE LEKSHMI PAINT HOUSE PAINT DELAR', '9447155734', 0, '00:00:00', '00:00:00', '0', '0'),
(742, 'S2', '111:Thrissur', '40096', 'NAVARASMI ENTERPRISES PAINT MERCHANT', '9539070292', 0, '00:00:00', '00:00:00', '0', '0'),
(743, 'S2', '111:Thrissur', '40715', 'MINI HARDWARES', '9747920304', 0, '00:00:00', '00:00:00', '0', '0'),
(744, 'S2', '111:Thrissur', '39056', 'JOSONS HARDWARES PAINT MERCHANTS', '7510230111', 0, '00:00:00', '00:00:00', '0', '0'),
(745, 'S2', '111:Thrissur', '39194', 'UKKENS PAINTS & COLOURS', '9349018111', 0, '00:00:00', '00:00:00', '0', '0'),
(746, 'S2', '111:Thrissur', '130665', 'EVERSHINE PAINT HOUSE', '9847078686', 0, '00:00:00', '00:00:00', '0', '0'),
(747, 'S2', '111:Thrissur', '39053', 'MALABAR HARDWARE PAINT MERCHANTS', '4912547267', 0, '00:00:00', '00:00:00', '0', '0'),
(748, 'S2', '111:Thrissur', '143110', 'AL KARAMA PAINTandHARDWARE', '9633319291', 0, '00:00:00', '00:00:00', '0', '0'),
(749, 'S2', '111:Thrissur', '39820', 'SAB TRADERS', '9495551525', 0, '00:00:00', '00:00:00', '0', '0'),
(750, 'S2', '111:Thrissur', '40349', 'PEE PEE PAINTS', '9447919255', 0, '00:00:00', '00:00:00', '0', '0'),
(751, 'S2', '111:Thrissur', '40712', 'THARAKANS HARDWARES', '9744345007', 0, '00:00:00', '00:00:00', '0', '0'),
(752, 'S2', '111:Thrissur', '40144', 'PAULIN COLORS', '9048708978', 0, '00:00:00', '00:00:00', '0', '0'),
(753, 'S2', '111:Thrissur', '39675', 'POPULAR HARDWARES&PAINTS', '9846290617', 0, '00:00:00', '00:00:00', '0', '0'),
(754, 'S2', '133:Kollam', '122985', 'SANIYA COLOURS', '9447472262', 0, '00:00:00', '00:00:00', '0', '0'),
(755, 'S2', '133:Kollam', '40325', 'SANIYA TRADERS', '9447472262', 0, '00:00:00', '00:00:00', '0', '0'),
(756, 'S2', '133:Kollam', '154724', 'SANIYA COLOURS', '9447472262', 0, '00:00:00', '00:00:00', '0', '0'),
(757, 'S2', '133:Kollam', '39503', 'KANNAN PAINT & RADHAS HARDWARES', '8606075525', 0, '00:00:00', '00:00:00', '0', '0'),
(758, 'S2', '133:Kollam', '39694', 'S.M COLOR HOUSE', '9895439125', 0, '00:00:00', '00:00:00', '0', '0'),
(759, 'S2', '133:Kollam', '39339', 'DEIVULLATHIL HARDWARES', '9447256048', 0, '00:00:00', '00:00:00', '0', '0'),
(760, 'S2', '133:Kollam', '92638', 'REYAN PAINTS', '9744655488', 0, '00:00:00', '00:00:00', '0', '0'),
(761, 'S2', '133:Kollam', '123720', 'ADARSH PAINTS', '8592848491', 0, '00:00:00', '00:00:00', '0', '0'),
(762, 'S2', '133:Kollam', '39207', 'CHOICE PAINTS & HARDWARES', '9847605543', 0, '00:00:00', '00:00:00', '0', '0'),
(763, 'S2', '133:Kollam', '40091', 'SREELEKSHMI HARDWARES', '9447256920', 0, '00:00:00', '00:00:00', '0', '0'),
(764, 'S2', '137:Thrissur 2', '160460', 'TRUECOLOURS INNOVATIVE SOLUTIONS LLP', '9745998847', 0, '00:00:00', '00:00:00', '0', '0'),
(765, 'S2', '137:Thrissur 2', '67944', 'GALAXY PAINTS', '9526063633', 0, '00:00:00', '00:00:00', '0', '0'),
(766, 'S2', '137:Thrissur 2', '72522', 'KUTTIPUZHAKKARAN HARDWARES', '9947921716', 0, '00:00:00', '00:00:00', '0', '0'),
(767, 'S2', '137:Thrissur 2', '73360', 'KURISINKAL HARDWARES', '9744416652', 0, '00:00:00', '00:00:00', '0', '0'),
(768, 'S2', '137:Thrissur 2', '80040', 'POPULAR HARDWARES', '9995137520', 0, '00:00:00', '00:00:00', '0', '0'),
(769, 'S2', '137:Thrissur 2', '82508', 'MADAVANA AGENCIES', '9539889570', 0, '00:00:00', '00:00:00', '0', '0'),
(770, 'S2', '137:Thrissur 2', '114044', 'COLOR ZONE', '8593851010', 0, '00:00:00', '00:00:00', '0', '0'),
(771, 'S2', '139:Kannur', '39928', 'COLOUR HOUSE', '9446672471', 0, '00:00:00', '00:00:00', '0', '0'),
(772, 'S2', '139:Kannur', '40270', 'PRINCE PAINTS', '9447171857', 0, '00:00:00', '00:00:00', '0', '0'),
(773, 'S2', '139:Kannur', '40899', 'KANSA TRADERS', '9895229912', 0, '00:00:00', '00:00:00', '0', '0'),
(774, 'S2', '139:Kannur', '112357', 'T.P TRADERS', '9947772488', 0, '00:00:00', '00:00:00', '0', '0'),
(775, 'S2', '139:Kannur', '39431', 'ROYAL TRADERS', '9447686636', 0, '00:00:00', '00:00:00', '0', '0'),
(776, 'S2', '139:Kannur', '39712', 'CITY TRADERS', '9495028956', 0, '00:00:00', '00:00:00', '0', '0'),
(777, 'S2', '139:Kannur', '40424', 'VARNAM TRADERS', '9249704448', 0, '00:00:00', '00:00:00', '0', '0'),
(778, 'S2', '139:Kannur', '122419', 'SAFIA PAINT ZONE', '8606042704', 0, '00:00:00', '00:00:00', '0', '0'),
(779, 'S2', '140:Alleppey', '119394', 'COLOUR CHOICE', '9037106395', 0, '00:00:00', '00:00:00', '0', '0'),
(780, 'S2', '140:Alleppey', '160942', 'FASHION PAINTS VYTTILA', '9495927785', 0, '00:00:00', '00:00:00', '0', '0'),
(781, 'S2', '140:Alleppey', '142911', 'PAINT HOUSE', '9645106568', 0, '00:00:00', '00:00:00', '0', '0'),
(782, 'S2', '140:Alleppey', '74696', 'ENNEM ENTERPRISES HARDWARE MERCHANT', '9895161555', 0, '00:00:00', '00:00:00', '0', '0'),
(783, 'S2', '140:Alleppey', '75238', 'GOSRIS HARDWARES HARDWARE MERCHANTS', '4842362508', 0, '00:00:00', '00:00:00', '0', '0'),
(784, 'S2', '140:Alleppey', '144591', 'OZANAM TRADERS', '9846837777', 0, '00:00:00', '00:00:00', '0', '0');

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
,`status` int(11)
,`mobile_no` varchar(15)
,`company_name` varchar(255)
,`agree` varchar(255)
,`created_at` varchar(255)
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
(1, 2, '2021-04-13 10:20:45', '2021-04-13 12:45:55', '2021-04-13 10:20:45', '2021-04-13 10:20:45'),
(2, 2, '2021-04-13 10:24:41', '2021-04-13 12:45:55', '2021-04-13 10:24:41', '2021-04-13 10:24:41'),
(3, 5, '2021-04-13 11:54:41', '2021-04-13 12:37:14', '2021-04-13 11:54:41', '2021-04-13 11:54:41'),
(4, 5, '2021-04-13 12:14:10', '2021-04-13 12:37:14', '2021-04-13 12:14:10', '2021-04-13 12:14:10'),
(5, 2, '2021-04-13 12:37:41', '2021-04-13 12:45:55', '2021-04-13 12:37:41', '2021-04-13 12:37:41'),
(6, 10, '2021-04-13 12:41:58', '2021-04-13 12:43:12', '2021-04-13 12:41:58', '2021-04-13 12:41:58'),
(7, 2, '2021-04-13 12:43:37', '2021-04-13 12:45:55', '2021-04-13 12:43:37', '2021-04-13 12:43:37'),
(8, 3, '2021-04-13 12:46:15', NULL, '2021-04-13 12:46:15', '2021-04-13 12:46:15'),
(9, 1, '2021-04-14 06:38:27', '2021-04-19 07:23:09', '2021-04-14 06:38:27', '2021-04-14 06:38:27'),
(10, 1, '2021-04-14 06:46:54', '2021-04-19 07:23:09', '2021-04-14 06:46:54', '2021-04-14 06:46:54'),
(11, 1, '2021-04-15 05:44:41', '2021-04-19 07:23:09', '2021-04-15 05:44:41', '2021-04-15 05:44:41'),
(12, 1, '2021-04-15 05:52:08', '2021-04-19 07:23:09', '2021-04-15 05:52:08', '2021-04-15 05:52:08'),
(13, 1, '2021-04-15 06:04:19', '2021-04-19 07:23:09', '2021-04-15 06:04:19', '2021-04-15 06:04:19'),
(14, 1, '2021-04-15 07:33:05', '2021-04-19 07:23:09', '2021-04-15 07:33:05', '2021-04-15 07:33:05'),
(15, 1, '2021-04-15 12:38:03', '2021-04-19 07:23:09', '2021-04-15 12:38:03', '2021-04-15 12:38:03'),
(16, 1, '2021-04-16 05:01:41', '2021-04-19 07:23:09', '2021-04-16 05:01:41', '2021-04-16 05:01:41'),
(17, 1, '2021-04-16 17:37:33', '2021-04-19 07:23:09', '2021-04-16 17:37:33', '2021-04-16 17:37:33'),
(18, 1, '2021-04-17 04:41:14', '2021-04-19 07:23:09', '2021-04-17 04:41:14', '2021-04-17 04:41:14'),
(19, 1, '2021-04-17 07:49:50', '2021-04-19 07:23:09', '2021-04-17 07:49:50', '2021-04-17 07:49:50'),
(20, 1, '2021-04-17 12:13:49', '2021-04-19 07:23:09', '2021-04-17 12:13:49', '2021-04-17 12:13:49'),
(21, 1, '2021-04-19 05:27:43', '2021-04-19 07:23:09', '2021-04-19 05:27:43', '2021-04-19 05:27:43'),
(22, 1, '2021-04-19 05:33:24', '2021-04-19 07:23:09', '2021-04-19 05:33:24', '2021-04-19 05:33:24'),
(23, 1, '2021-04-19 05:34:53', '2021-04-19 07:23:09', '2021-04-19 05:34:53', '2021-04-19 05:34:53'),
(24, 1, '2021-04-19 06:01:22', '2021-04-19 07:23:09', '2021-04-19 06:01:22', '2021-04-19 06:01:22'),
(25, 1, '2021-04-19 06:47:20', '2021-04-19 07:23:09', '2021-04-19 06:47:20', '2021-04-19 06:47:20'),
(26, 1, '2021-04-19 06:48:46', '2021-04-19 07:23:09', '2021-04-19 06:48:46', '2021-04-19 06:48:46'),
(27, 1, '2021-04-19 07:23:19', NULL, '2021-04-19 07:23:19', '2021-04-19 07:23:19'),
(28, 1, '2021-04-20 05:26:41', NULL, '2021-04-20 05:26:41', '2021-04-20 05:26:41'),
(29, 5, '2021-04-20 08:21:30', NULL, '2021-04-20 08:21:30', '2021-04-20 08:21:30'),
(30, 1, '2021-04-20 17:31:30', NULL, '2021-04-20 17:31:30', '2021-04-20 17:31:30'),
(31, 1, '2021-04-21 04:50:00', NULL, '2021-04-21 04:50:00', '2021-04-21 04:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `type_action`
--

CREATE TABLE `type_action` (
  `u_t_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type_action`
--

INSERT INTO `type_action` (`u_t_id`, `name`) VALUES
(1, 'yes1'),
(2, 'yes2'),
(3, 'yes3');

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
-- Table structure for table `user_redirect`
--

CREATE TABLE `user_redirect` (
  `id` int(11) NOT NULL,
  `lobby_st` int(11) NOT NULL,
  `ballroom_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_redirect`
--

INSERT INTO `user_redirect` (`id`, `lobby_st`, `ballroom_at`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Structure for view `all_comments`
--
DROP TABLE IF EXISTS `all_comments`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `all_comments`  AS SELECT `a`.`id` AS `id`, `a`.`u_id` AS `u_id`, `a`.`description` AS `description`, `b`.`name` AS `name`, `b`.`email` AS `email`, `b`.`status` AS `status`, `b`.`mobile_no` AS `mobile_no`, `b`.`company_name` AS `company_name`, `a`.`created_at` AS `created_at`, `a`.`updated_at` AS `updated_at` FROM (`cmms` `a` join `tbl_users` `b` on(`a`.`u_id` = `b`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `total_login_time`
--
DROP TABLE IF EXISTS `total_login_time`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `total_login_time`  AS SELECT `a`.`user_id` AS `user_id`, timediff(max(`a`.`logout_time`),min(`a`.`login_time`)) AS `total_time`, count(`a`.`user_id`) AS `cltime`, `b`.`name` AS `name`, `b`.`email` AS `email`, `b`.`status` AS `status`, `b`.`mobile_no` AS `mobile_no`, `b`.`company_name` AS `company_name`, `b`.`agree` AS `agree`, `b`.`created_at` AS `created_at` FROM (`total_login__times` `a` join `tbl_users` `b` on(`a`.`user_id` = `b`.`id`)) GROUP BY `a`.`user_id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminregs`
--
ALTER TABLE `adminregs`
  ADD PRIMARY KEY (`admin_id`);

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
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`);

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
-- Indexes for table `dy_pulse`
--
ALTER TABLE `dy_pulse`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `img_slider`
--
ALTER TABLE `img_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lobby_videos`
--
ALTER TABLE `lobby_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `l_r_page`
--
ALTER TABLE `l_r_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newevnts`
--
ALTER TABLE `newevnts`
  ADD PRIMARY KEY (`envt_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

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
-- Indexes for table `tbl_register`
--
ALTER TABLE `tbl_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reg_page`
--
ALTER TABLE `tbl_reg_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_thank`
--
ALTER TABLE `tbl_thank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users1`
--
ALTER TABLE `tbl_users1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `total_login__times`
--
ALTER TABLE `total_login__times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_action`
--
ALTER TABLE `type_action`
  ADD PRIMARY KEY (`u_t_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_redirect`
--
ALTER TABLE `user_redirect`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminregs`
--
ALTER TABLE `adminregs`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_regs`
--
ALTER TABLE `admin_regs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `all_login_users`
--
ALTER TABLE `all_login_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `change_videos`
--
ALTER TABLE `change_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cmms`
--
ALTER TABLE `cmms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `coments`
--
ALTER TABLE `coments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dy_pulse`
--
ALTER TABLE `dy_pulse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
-- AUTO_INCREMENT for table `img_slider`
--
ALTER TABLE `img_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lobby_videos`
--
ALTER TABLE `lobby_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `l_r_page`
--
ALTER TABLE `l_r_page`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `newevnts`
--
ALTER TABLE `newevnts`
  MODIFY `envt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_register`
--
ALTER TABLE `tbl_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_reg_page`
--
ALTER TABLE `tbl_reg_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_thank`
--
ALTER TABLE `tbl_thank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_users1`
--
ALTER TABLE `tbl_users1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=785;

--
-- AUTO_INCREMENT for table `total_login__times`
--
ALTER TABLE `total_login__times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `type_action`
--
ALTER TABLE `type_action`
  MODIFY `u_t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_redirect`
--
ALTER TABLE `user_redirect`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
