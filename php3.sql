-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 17, 2022 lúc 08:31 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `php3`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `additional_infos`
--

CREATE TABLE `additional_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `additional_infos`
--

INSERT INTO `additional_infos` (`id`, `title`, `content`, `link`, `created_at`, `updated_at`) VALUES
(1, 'logo', 'images/oB6N89XjbJyJms6aonLOfG7xFfiM3tJVaOtrXxNj.png', NULL, NULL, '2022-08-02 09:24:14'),
(2, 'address', '330 Nguyễn Văn Linh, Ninh Kiều, Cần Thơ', NULL, NULL, '2022-08-02 09:24:14'),
(3, 'phone', '0774091026', NULL, NULL, '2022-08-02 09:24:14'),
(4, 'email', 'phanvan0322@gmail.com', NULL, NULL, '2022-08-02 09:24:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `slug`, `created_at`, `updated_at`) VALUES
(10, 'Esport', 0, 'esport', '2022-07-23 22:41:45', '2022-07-23 22:41:45'),
(11, 'Game online', 0, 'game-online', '2022-07-23 22:42:00', '2022-07-23 22:42:00'),
(12, 'Mobile', 0, 'mobile', '2022-07-23 22:42:35', '2022-07-23 22:42:35'),
(13, 'Pc/console', 0, 'pc-console', '2022-07-23 22:43:06', '2022-07-23 22:43:06'),
(14, 'Mobile legends', 0, 'mobile-legends', '2022-07-23 22:43:25', '2022-07-23 22:43:25'),
(15, 'Khám phá', 0, 'kham-pha', '2022-07-23 22:43:47', '2022-07-23 22:43:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `level` int(11) NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `content`, `user_id`, `level`, `post_id`, `parent_id`, `created_at`, `updated_at`) VALUES
(25, 'Bài viết hay\n', 1, 0, 18, 0, '2022-08-06 05:52:14', '2022-08-06 05:52:14'),
(26, 'haha', 1, 1, 18, 25, '2022-08-06 05:52:19', '2022-08-06 05:52:19'),
(27, 'hhee', 1, 1, 18, 25, '2022-08-06 05:52:22', '2022-08-06 05:52:22'),
(28, 'jajs', 1, 1, 18, 25, '2022-08-06 05:52:24', '2022-08-06 05:52:24'),
(29, 'hee', 1, 0, 18, 0, '2022-08-06 06:04:39', '2022-08-06 06:04:39'),
(30, 'ok', 1, 0, 18, 0, '2022-08-06 06:07:58', '2022-08-06 06:07:58'),
(31, 'dvv', 1, 1, 18, 29, '2022-08-06 06:08:05', '2022-08-06 06:08:05'),
(32, 'gjgfd', 1, 1, 18, 30, '2022-08-06 06:08:56', '2022-08-06 06:08:56'),
(33, 'iiijjj', 1, 1, 18, 30, '2022-08-06 06:09:07', '2022-08-06 06:09:07'),
(34, 'gfdfgghhj', 1, 1, 18, 30, '2022-08-06 06:09:11', '2022-08-06 06:09:11'),
(35, 'hghk', 1, 1, 18, 29, '2022-08-06 06:09:17', '2022-08-06 06:09:17'),
(36, 'fdhktjh', 1, 1, 18, 29, '2022-08-06 06:09:19', '2022-08-06 06:09:19'),
(37, 'dghketjher', 1, 1, 18, 29, '2022-08-06 06:09:21', '2022-08-06 06:09:21'),
(38, 'hydsf\n', 1, 0, 18, 0, '2022-08-06 06:10:05', '2022-08-06 06:10:05'),
(39, 'ttttt', 1, 0, 18, 0, '2022-08-06 06:11:31', '2022-08-06 06:11:31'),
(40, 'yyy', 1, 1, 18, 38, '2022-08-06 06:12:03', '2022-08-06 06:12:03'),
(41, 'ok\n', 1, 0, 22, 0, '2022-08-06 06:15:19', '2022-08-06 06:15:19'),
(42, 'udgj', 1, 0, 22, 0, '2022-08-06 06:15:44', '2022-08-06 06:15:44'),
(43, 'hehe', 1, 0, 22, 0, '2022-08-06 06:18:30', '2022-08-06 06:18:30'),
(44, 'ok43', 1, 0, 22, 0, '2022-08-06 06:18:55', '2022-08-06 06:18:55'),
(45, 'jhh', 1, 1, 22, 41, '2022-08-06 06:19:29', '2022-08-06 06:19:29'),
(46, 'dsfdgsdgdg', 1, 0, 22, 0, '2022-08-06 06:23:56', '2022-08-06 06:23:56'),
(47, 'gg', 1, 1, 22, 44, '2022-08-06 06:24:11', '2022-08-06 06:24:11'),
(48, 'dfdgd', 1, 0, 22, 0, '2022-08-06 06:26:05', '2022-08-06 06:26:05'),
(49, 'gffgfdh', 1, 1, 22, 46, '2022-08-06 06:26:15', '2022-08-06 06:26:15'),
(50, 'yyb', 1, 1, 22, 46, '2022-08-06 06:26:21', '2022-08-06 06:26:21'),
(51, 'aaaaaaaa', 1, 0, 22, 0, '2022-08-06 06:28:31', '2022-08-06 06:28:31'),
(52, 'fddsggsdg', 1, 1, 22, 48, '2022-08-06 06:28:36', '2022-08-06 06:28:36'),
(53, 'bbbbbbbb', 1, 0, 22, 0, '2022-08-06 06:31:27', '2022-08-06 06:31:27'),
(54, 'asfsfsafaf', 1, 1, 22, 51, '2022-08-06 06:31:31', '2022-08-06 06:31:31'),
(55, 'adffadgadg', 1, 0, 22, 0, '2022-08-06 06:31:48', '2022-08-06 06:31:48'),
(56, 'gggsddg', 1, 1, 22, 53, '2022-08-06 06:31:52', '2022-08-06 06:31:52'),
(57, 'yyyyy', 1, 1, 22, 53, '2022-08-06 06:32:05', '2022-08-06 06:32:05'),
(58, 'sdgdsdhsfj', 1, 1, 22, 51, '2022-08-06 06:32:51', '2022-08-06 06:32:51'),
(59, 'fuck', 1, 0, 17, 0, '2022-08-06 06:33:08', '2022-08-06 06:33:08'),
(60, 'uuujuju', 1, 0, 17, 0, '2022-08-06 06:33:13', '2022-08-06 06:33:13'),
(61, 'yyyyyy', 1, 0, 17, 0, '2022-08-06 06:34:24', '2022-08-06 06:34:24'),
(62, 'gfdgsh', 1, 1, 17, 60, '2022-08-06 06:34:46', '2022-08-06 06:34:46'),
(63, 'fgfhfdhf', 1, 0, 17, 0, '2022-08-06 06:35:57', '2022-08-06 06:35:57'),
(64, 'asfjag', 1, 0, 17, 0, '2022-08-06 06:37:14', '2022-08-06 06:37:14'),
(65, 'hdfhf', 1, 0, 17, 0, '2022-08-06 06:42:10', '2022-08-06 06:42:10'),
(66, 'ssfasf', 1, 1, 17, 64, '2022-08-06 06:42:14', '2022-08-06 06:42:14'),
(67, 'sasag', 1, 1, 17, 64, '2022-08-06 06:42:17', '2022-08-06 06:42:17'),
(68, 'shadhg', 1, 0, 17, 0, '2022-08-06 06:43:53', '2022-08-06 06:43:53'),
(69, 'dafasf', 1, 0, 17, 0, '2022-08-06 06:44:10', '2022-08-06 06:44:10'),
(70, 'uuuuu', 1, 0, 17, 0, '2022-08-06 06:45:17', '2022-08-06 06:45:17'),
(71, 'uudjfdsg', 1, 0, 17, 0, '2022-08-06 06:45:50', '2022-08-06 06:45:50'),
(72, 'hello', 1, 1, 17, 71, '2022-08-06 06:46:03', '2022-08-06 06:46:03'),
(73, 'dcm', 1, 1, 17, 71, '2022-08-06 06:46:08', '2022-08-06 06:46:08'),
(74, 'adjkghjad', 1, 1, 17, 71, '2022-08-06 06:46:10', '2022-08-06 06:46:10'),
(75, 'dsuidsgdkskvj', 1, 1, 17, 71, '2022-08-06 06:46:12', '2022-08-06 06:46:12'),
(76, 'fdhdfljkfd', 1, 1, 17, 64, '2022-08-06 06:46:25', '2022-08-06 06:46:25'),
(77, 'gkdsjkgsdjkg', 1, 1, 17, 64, '2022-08-06 06:46:27', '2022-08-06 06:46:27'),
(78, 'eryhdfjdf', 1, 0, 17, 0, '2022-08-06 06:47:36', '2022-08-06 06:47:36'),
(79, 'game này ntn ae', 1, 0, 14, 0, '2022-08-06 06:48:29', '2022-08-06 06:48:29'),
(80, 'Hay lắm bạn', 5, 1, 14, 79, '2022-08-06 06:51:13', '2022-08-06 06:51:13'),
(81, 'dsfdsgj', 5, 1, 14, 79, '2022-08-06 06:51:17', '2022-08-06 06:51:17'),
(82, 'gsjg', 5, 1, 14, 79, '2022-08-06 06:51:18', '2022-08-06 06:51:18'),
(83, 'ggur', 5, 1, 14, 79, '2022-08-06 06:51:21', '2022-08-06 06:51:21'),
(84, 'yyyy', 5, 0, 14, 0, '2022-08-06 06:52:29', '2022-08-06 06:52:29'),
(85, 'uuuu', 5, 1, 14, 84, '2022-08-06 06:58:53', '2022-08-06 06:58:53'),
(86, 'dsgdg', 5, 1, 14, 84, '2022-08-06 06:58:57', '2022-08-06 06:58:57'),
(87, 'wetewt', 5, 1, 14, 84, '2022-08-06 06:59:00', '2022-08-06 06:59:00'),
(88, 'egdgdg', 5, 1, 22, 53, '2022-08-06 07:06:47', '2022-08-06 07:06:47'),
(89, 'gdagdagdagda', 5, 1, 22, 55, '2022-08-06 07:06:52', '2022-08-06 07:06:52'),
(90, 'fasfagvx', 5, 1, 22, 55, '2022-08-06 07:06:55', '2022-08-06 07:06:55'),
(91, 'adfsagagag', 5, 1, 22, 55, '2022-08-06 07:06:58', '2022-08-06 07:06:58'),
(92, 'cũng bình thường', 1, 0, 23, 0, '2022-08-07 11:32:37', '2022-08-07 11:32:37'),
(93, 'dcm', 1, 1, 23, 92, '2022-08-07 11:32:43', '2022-08-07 11:32:43'),
(94, 'hzzzz', 1, 1, 23, 92, '2022-08-07 11:32:50', '2022-08-07 11:32:50'),
(95, 'fagjdjg', 1, 1, 23, 92, '2022-08-07 11:32:53', '2022-08-07 11:32:53'),
(96, 'đagdsh', 1, 1, 22, 46, '2022-08-07 11:33:36', '2022-08-07 11:33:36'),
(97, 'loonf trau', 1, 1, 22, 51, '2022-08-07 19:52:34', '2022-08-07 19:52:34'),
(98, 'uhg', 1, 0, 13, 0, '2022-08-07 19:53:27', '2022-08-07 19:53:27'),
(99, 'haha', 1, 0, 11, 0, '2022-08-08 02:26:10', '2022-08-08 02:26:10'),
(100, 'jjjj', 1, 1, 14, 84, '2022-08-12 02:10:12', '2022-08-12 02:10:12'),
(101, 'ok', 1, 0, 10, 0, '2022-08-15 02:08:12', '2022-08-15 02:08:12'),
(102, 'ok', 1, 1, 10, 101, '2022-08-15 02:08:18', '2022-08-15 02:08:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(4, 'Phan Tường Văn', 'phanvan0322@gmail.com', '', '2022-08-11 02:23:06', '2022-08-11 02:23:06'),
(5, 'Phan Tường Văn', 'phanvan123@gmail.com', '', '2022-08-11 02:24:04', '2022-08-11 02:24:04'),
(6, 'Phan Tường Văn 2', 'phanvan032432@gmail.com', '', '2022-08-11 02:28:35', '2022-08-11 02:28:35'),
(7, 'Phan Tường Văn 14124', 'phanvan0322@gmail.com', '', '2022-08-15 02:17:52', '2022-08-15 02:17:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `likes`
--

INSERT INTO `likes` (`id`, `name`, `icon`, `class`, `created_at`, `updated_at`) VALUES
(1, 'like', '<i class=\"bi bi-hand-thumbs-up\"></i>', 'like', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'haha', '<i class=\"bi bi-emoji-smile\"></i>', 'haha', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'phẩn nộ', '<i class=\"bi bi-emoji-frown\"></i>', 'phan-no', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'yêu thích', '<i class=\"bi bi-emoji-heart-eyes\"></i>', 'yeu-thich', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `like_actions`
--

CREATE TABLE `like_actions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `like_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `like_actions`
--

INSERT INTO `like_actions` (`id`, `like_id`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 21, 1, '2022-08-07 10:29:59', '2022-08-07 10:29:59'),
(2, 3, 23, 2, '2022-08-07 10:39:51', '2022-08-07 11:25:33'),
(3, 1, 22, 2, '2022-08-07 11:25:57', '2022-08-07 11:26:58'),
(4, 1, 23, 1, '2022-08-07 11:27:40', '2022-08-08 02:28:14'),
(5, 1, 22, 1, '2022-08-07 11:33:45', '2022-08-12 02:38:05'),
(6, 4, 14, 1, '2022-08-07 11:35:44', '2022-08-12 02:09:30'),
(7, 1, 9, 1, '2022-08-07 11:36:02', '2022-08-07 11:36:02'),
(8, 1, 17, 1, '2022-08-07 11:37:31', '2022-08-07 11:37:31'),
(9, 4, 15, 1, '2022-08-07 11:47:37', '2022-08-07 11:47:51'),
(10, 1, 13, 1, '2022-08-07 19:53:15', '2022-08-07 19:53:15'),
(11, 2, 16, 1, '2022-08-08 01:34:55', '2022-08-08 01:34:55'),
(12, 4, 20, 1, '2022-08-08 01:36:47', '2022-08-08 01:39:35'),
(13, 1, 11, 1, '2022-08-08 02:26:18', '2022-08-08 02:26:27'),
(14, 4, 10, 1, '2022-08-15 02:12:53', '2022-08-15 02:13:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_10_140140_create_categories_table', 1),
(6, '2022_07_10_140437_create_posts_table', 1),
(7, '2022_07_10_141034_create_comments_table', 1),
(8, '2022_07_10_141642_create_additional_infos_table', 1),
(9, '2022_07_25_120728_create_contacts_table', 2),
(10, '2022_08_06_183128_create_likes_table', 3),
(11, '2022_08_06_183244_create_like_actions_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('vanptpc01874@fpt.edu.vn', '$2y$10$9xJaCI8OK1l0U9kvQxfnZuJcO2HnLBTV4KQ5.ygAR4A89/oUTZsqa', '2022-07-29 05:56:46'),
('phanvan0322@gmail.com', '$2y$10$Hdmx1YDpC99TQSQfpI7Rru0F0lFDeygURr1qaIEi5khcmYMCJLUPy', '2022-08-10 09:18:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL,
  `hot_post` tinyint(1) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `short_description`, `content`, `views`, `hot_post`, `category_id`, `image`, `slug`, `created_at`, `updated_at`) VALUES
(9, 'LMHT: Không được thi đấu, Levi bất lực nhìn đồng đội bị IG hủy diệt chóng vánh', 'Nhà vô địch thế giới Invictus Gaming vẫn đang thể hiện phong độ ấn tượng khi tiếp tục đăng quang tại giải đấu quốc nội – LPL mùa xuân 2019.', '<p>Diễn biến trận đấu:</p>\r\n\r\n<p><strong>V&aacute;n 1</strong></p>\r\n\r\n<p><a href=\"http://gamek.vn/jd-gaming.htm\" target=\"_blank\">JD Gaming</a>&nbsp;ra s&acirc;n với một đội h&igrave;nh dồn s&aacute;t thương v&agrave; cực nhiều hiệu ứng khống chế, lộ r&otilde; &yacute; đồ nu&ocirc;i Carry để đối ph&oacute; với cặp đ&ocirc;i Đường dưới đang c&oacute; phong độ rất cao của&nbsp;<a href=\"http://gamek.vn/invictus-gaming.htm\" target=\"_blank\">Invictus Gaming</a>. Tuy nhi&ecirc;n kế hoạch n&agrave;y đ&atilde; ph&aacute; sản ho&agrave;n to&agrave;n khi c&aacute;c nh&agrave; V&ocirc; địch thế giới cũng lựa chọn một đội h&igrave;nh hổ b&aacute;o kh&ocirc;ng k&eacute;m với Zoe, Xin Zhao c&ugrave;ng bộ đ&ocirc;i Đường dưới Xayah &ndash; Rakan.</p>\r\n\r\n<p>Ở khu vực Đường tr&ecirc;n, The Shy được lựa chọn qu&acirc;n b&agrave;i Ryze với mục ti&ecirc;u kh&ocirc;ng thua đường v&agrave; farm trang bị nhanh nhất c&oacute; thể, đ&acirc;y l&agrave; một nhiệm vụ kh&aacute; dễ d&agrave;ng với tuyển thủ Đường tr&ecirc;n được đ&aacute;nh gi&aacute; số 1 thế giới thời điểm hiện tại.</p>\r\n\r\n<p>Trong khi ở khu vực Đường giữa v&agrave; Đường dưới, IG cũng ho&agrave;n to&agrave;n nắm thế chủ động với những vị tướng sở hữu khả năng g&acirc;y s&aacute;t thương dồi d&agrave;o. Giai đoạn đi đường ho&agrave;n to&agrave;n l&eacute;p vế, JDG nhanh ch&oacute;ng tan vỡ khi v&aacute;n đấu bắt đầu bước v&agrave;o những pha giao tranh tổng, Nocturne trong tay Flawless d&ugrave; xanh nhất đội nhưng ho&agrave;n to&agrave;n kh&ocirc;ng c&oacute; mục ti&ecirc;u để &aacute;m s&aacute;t khi phải đối mặt với một đội h&igrave;nh qu&aacute; k&iacute;n kẽ của IG. Nh&agrave; v&ocirc; địch thế giới dễ d&agrave;ng vươn l&ecirc;n dẫn trước 1-0.</p>\r\n\r\n<p>V&aacute;n 2</p>\r\n\r\n<p>Bước sang v&aacute;n đấu thứ 2, JDG quyết định lựa chọn hai con b&agrave;i Lee Sin v&agrave; Fiddlestick ở vị tr&iacute; Đi rừng v&agrave; Hỗ trợ với hi vọng sẽ g&acirc;y bất ngờ v&agrave; đột biến trong k&egrave;o đấu với IG. Nhưng họ cũng mắc sai lầm khi nhả cho The Shy một vị tướng Carry l&agrave; Jayce, c&ograve;n Rookie cũng c&oacute; cho m&igrave;nh Ryze &ndash; Ph&aacute;p sư Đường giữa g&aacute;nh team cực khỏe ở giai đoạn cuối trận.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, vấn đề của JDG ch&iacute;nh l&agrave; việc Flawless tỏ ra dưới cơ ho&agrave;n to&agrave;n so với Ning, d&ugrave; người Đi rừng của IG chỉ sử dụng một vị tướng ăn cỏ l&agrave; Sejuani, nhưng lại chiếm thế chủ động ho&agrave;n to&agrave;n trong việc khai th&aacute;c t&agrave;i nguy&ecirc;n rừng v&agrave; kiểm so&aacute;t bản đồ ở giai đoạn đầu trận.</p>\r\n\r\n<p><a href=\"https://genknews.genkcdn.vn/2019/4/21/ig-jdg-2-1555857559101226927534.jpg\" target=\"_blank\"><img alt=\"LMHT: Không được thi đấu, Levi bất lực nhìn đồng đội bị IG hủy diệt chóng vánh - Ảnh 3.\" src=\"https://genknews.genkcdn.vn/thumb_w/690/2019/4/21/ig-jdg-2-1555857559101226927534.jpg\" /></a></p>\r\n\r\n<p>Kh&aacute; may mắn cho JDG khi sự tự tin của Ning lại khiến anh mắc lỗi vị tr&iacute; v&agrave; phải trả gi&aacute; bằng mạng Chiến c&ocirc;ng đầu, nhưng từng đ&oacute; l&agrave; kh&ocirc;ng đủ để gi&uacute;p Flawless v&agrave; đồng đội tr&aacute;nh khỏi việc bị hủy diệt ho&agrave;n to&agrave;n ở cả ba đường.</p>\r\n\r\n<p>Chỉ mới bước sang ph&uacute;t thứ 20, khoảng c&aacute;ch về tiền đ&atilde; l&ecirc;n đến con số 7k, v&agrave; đội h&igrave;nh thi&ecirc;n về tấn c&ocirc;ng của JDG khi đ&atilde; bị dồn v&agrave;o thế b&iacute; th&igrave; gần như v&ocirc; t&aacute;c dụng, họ tiếp tục vỡ vụn trong v&aacute;n đấu thứ 2 chỉ sau hơn 25 ph&uacute;t thi đấu.</p>\r\n\r\n<p>V&aacute;n 3</p>\r\n\r\n<p>Để thua 2 v&aacute;n đầu ti&ecirc;n một c&aacute;ch cực kỳ ch&oacute;ng v&aacute;nh, nhưng phải d&agrave;nh lời khen cho JDG khi họ kh&ocirc;ng hề c&oacute; &yacute; định bu&ocirc;ng xu&ocirc;i m&agrave; vẫn thi đấu đầy quyết t&acirc;m trong v&aacute;n 3. Leona &ndash; Vị tướng Hỗ trợ từ l&acirc;u đ&atilde; vắng b&oacute;ng tr&ecirc;n đấu trường chuy&ecirc;n nghiệp bất ngờ được JDG sử dụng v&agrave; đ&atilde; chứng minh được sự hiệu quả nhất định.</p>\r\n\r\n<p>Sau qu&atilde;ng thời gian đầu game li&ecirc;n tục bị dồn &eacute;p, JDG đ&atilde; bắt đầu thiết lập được những pha phản c&ocirc;ng sắc sảo hơn v&agrave; dần c&acirc;n bằng được thế trận. Tuy nhi&ecirc;n, việc tập trung v&agrave;o Đường giữa v&agrave; Đường dưới l&agrave; một đấu ph&aacute;p sai lầm của họ, khi đ&atilde; để sổng mất &ldquo;con qu&aacute;i vật&rdquo; The Shy.</p>\r\n\r\n<p><a href=\"https://genknews.genkcdn.vn/2019/4/21/ig-jdg-3-1555858228174939146362.jpg\" target=\"_blank\"><img alt=\"LMHT: Không được thi đấu, Levi bất lực nhìn đồng đội bị IG hủy diệt chóng vánh - Ảnh 5.\" src=\"https://genknews.genkcdn.vn/thumb_w/690/2019/4/21/ig-jdg-3-1555858228174939146362.jpg\" /></a></p>\r\n\r\n<p>Vladimir của IG được free farm trong một qu&atilde;ng thời gian kh&aacute; d&agrave;i v&agrave; dễ d&agrave;ng tăng tiến sức mạnh. V&agrave; khi trận đấu bước v&agrave;o giai đoạn cuối, một đội h&igrave;nh kh&ocirc;ng c&oacute; nhiều chống chịu của JDG d&ugrave; đ&atilde; rất nỗ lực nhưng cũng kh&ocirc;ng thể ngăn cản được The Shy. Khi c&aacute;c đồng đội kh&aacute;c đ&atilde; ng&atilde; xuống do sức tấn c&ocirc;ng của JDG th&igrave; anh ch&agrave;ng n&agrave;y với chất tướng Vladimir c&ograve; quay cực tốt vẫn đủ khả năng để khiến &iacute;t nhất 1 hoặc 2 chủ lực đối phương phải &ldquo;đổi mạng&rdquo;.</p>\r\n\r\n<p>D&ugrave; đ&atilde; c&oacute; thời điểm, JDG tổ chức được những pha v&acirc;y h&atilde;m v&agrave;o khu vực trụ 3 của IG, nhưng sức c&agrave;n lướt của Vladimir đ&atilde; ho&agrave;n to&agrave;n ph&aacute; tan thế v&acirc;y c&ocirc;ng n&agrave;y, v&agrave; sau hơn 33 ph&uacute;t giằng co, cuối c&ugrave;ng IG mới ch&iacute;nh l&agrave; những người kết liễu được đối thủ v&agrave; gi&agrave;nh thắng lợi chung cuộc 3-0.</p>\r\n\r\n<p>Với kết quả n&agrave;y, đội tuyển của Đại thiếu gia Vương Tư Th&ocirc;ng lại tiếp tục mang về danh hiệu lớn thứ 2 li&ecirc;n tiếp sau chiếc cup CKTG 2018, họ đ&atilde; ch&iacute;nh thức trở th&agrave;nh t&acirc;n vương của&nbsp;<a href=\"http://gamek.vn/lpl-mua-xuan-2019.htm\" target=\"_blank\">LPL m&ugrave;a xu&acirc;n 2019</a>đồng thời c&oacute; tấm v&eacute; tham dự&nbsp;<a href=\"http://gamek.vn/msi-2019.htm\" target=\"_blank\">MSI 2019</a>. C&ograve;n với JDG, vị tr&iacute; &Aacute; qu&acirc;n cũng kh&ocirc;ng phải l&agrave; kết quả qu&aacute; tệ hại đối với một đội tuyển &ldquo;ma mới&rdquo; chưa c&oacute; nhiều kinh nghiệm chinh chiến như họ, chỉ đ&aacute;ng tiếc l&agrave; Levi c&ugrave;ng đồng đội đ&atilde; lỡ mất cơ hội gi&agrave;nh danh hiệu lớn đầu ti&ecirc;n trong sự nghiệp v&agrave; mất cơ hội sang Việt Nam tham dự MSI v&agrave;o đầu th&aacute;ng 5 tới m&agrave; th&ocirc;i.</p>', 5, 1, 10, 'images/PXfzfTjfUnrhFoPEhUZt6YjeUVy2ewQO6JvjMoT8.jpg', 'lmht-khong-duoc-thi-dau-levi-bat-luc-nhin-dong-doi-bi-ig-huy-diet-chong-vanh', '2022-07-23 22:58:08', '2022-08-15 02:34:23'),
(10, 'Shroud quay lại với PUBG và nhận cái kết đắng, cho rằng tựa game này chỉ làm lãng phí thời gian', 'Sau khi tuyên bố sẽ nghỉ chơi Apex Legends vô thời hạn, thậm chí còn tuyên bố PUBG còn thú vị hơn, Shroud đã khiến các fan đầy bất ngờ khi mới đây thôi,', '<h2>Tới Shroud cũng phải c&ocirc;ng nhận PUBG n&aacute;t th&igrave; hiểu rồi.</h2>\r\n\r\n<p>Sau khi tuy&ecirc;n bố sẽ nghỉ chơi&nbsp;<a href=\"http://gamek.vn/apex-legends.htm\" target=\"_blank\">Apex Legends</a>&nbsp;v&ocirc; thời hạn, thậm ch&iacute; c&ograve;n tuy&ecirc;n bố PUBG c&ograve;n th&uacute; vị hơn,&nbsp;<a href=\"http://gamek.vn/shroud.htm\" target=\"_blank\">Shroud</a>&nbsp;đ&atilde; khiến c&aacute;c fan đầy bất ngờ khi mới đ&acirc;y th&ocirc;i, anh ch&agrave;ng streamer vốn nổi tiếng điềm tĩnh n&agrave;y lại vừa c&oacute; một pha rage quit v&agrave; nổi cơn thịnh nộ mang đậm phong c&aacute;ch của&nbsp;<a href=\"http://gamek.vn/dr-disrespect.htm\" target=\"_blank\">Dr Disrespect</a>.</p>\r\n\r\n<p>Mặc d&ugrave; kh&ocirc;ng thể phủ nhận rằng cả PUBG v&agrave; đặc biệt l&agrave; Apex Legends l&agrave; hai tựa game đ&atilde; l&agrave;m n&ecirc;n t&ecirc;n tuổi của Shroud, g&oacute;p phần gi&uacute;p mỗi phi&ecirc;n livestream của anh thu h&uacute;t tới hơn 100.000 lượt xem như thời điểm hiện tại, thế nhưng một khi đ&atilde; ch&aacute;n th&igrave; chẳng g&igrave; c&oacute; thể n&iacute;u k&eacute;o nổi Shroud. Cụ thể, v&agrave;o ng&agrave;y 18/4 vừa qua, Shroud sau khi ch&ecirc; bai Apex Legends đủ đường đ&atilde; l&ecirc;n s&oacute;ng v&agrave; thử sức bản th&acirc;n với PUBG. Nhưng chỉ sau hai game đấu, anh ch&agrave;ng streamer n&agrave;y đ&atilde; quit một c&aacute;ch kh&ocirc;ng thương tiếc.</p>\r\n\r\n<p>Mặc d&ugrave; đ&atilde; lựa chọn PUBG để khởi đầu một ng&agrave;y mới, thế nhưng xem ra mọi thứ kh&ocirc;ng được như Shroud mong đợi th&igrave; phải. Lag, giật khiến cho anh ch&agrave;ng gần như chẳng thể hiện được g&igrave; nhiều trước khi bị hạ gục. Hai game đấu như vậy vẫn chưa khiến Shroud nản ch&iacute;, nhưng khi ph&aacute;t hiện ra m&igrave;nh vẫn tiếp tục lag khi chạy trong sảnh chờ, Shroud cay c&uacute; quit game ngay tức th&igrave;. V&agrave; kết quả l&agrave; anh ch&agrave;ng cảm thấy bản th&acirc;n đ&atilde; ph&iacute; mất 1 tiếng đồng hồ cho tr&ograve; chơi v&ocirc; bổ n&agrave;y.</p>\r\n\r\n<p>&ldquo;<em>T&ocirc;i sẽ kh&ocirc;ng chơi c&aacute;i thứ ngu ngốc n&agrave;y nữa</em>&rdquo; Shroud n&oacute;i với vẻ thất vọng c&ugrave;ng cực tr&ecirc;n k&ecirc;nh stream của m&igrave;nh &ldquo;<em>Đ&acirc;y thật sự l&agrave; thứ ngu ngốc m&agrave;, t&ocirc;i kh&ocirc;ng quan t&acirc;m tới n&oacute; nữa. Cũng sẽ chẳng cần phải t&igrave;m c&aacute;ch khắc phục l&agrave;m g&igrave;, tr&ograve; chơi ngu xuẩn n&agrave;y l&agrave;m ph&iacute; thời gian của t&ocirc;i</em>&ldquo;.</p>\r\n\r\n<p>V&agrave; điều đ&aacute;ng ch&uacute; &yacute; hơn l&agrave; sau ph&aacute;t ng&ocirc;n tr&ecirc;n, Shroud chuyển ngay sang chơi Apex Legends &ndash; tựa game vừa bị anh tổng xỉ vả kh&ocirc;ng thương tiếc trong phi&ecirc;n stream ng&agrave;y 14/4 vừa qua v&agrave; tự nhủ sẽ ngừng chơi Apex Legends v&ocirc; thời hạn. Nhưng xem ra khi kế hoạch chuyển sang PUBG bị ph&aacute; sản v&igrave; lag giật qu&aacute; mức cho ph&eacute;p, Shroud đ&agrave;nh phải r&uacute;t lại lời n&oacute;i của m&igrave;nh vậy.</p>\r\n\r\n<p>Suy cho c&ugrave;ng th&igrave; khi m&agrave; anh ch&agrave;ng khẳng định cực kỳ kh&ocirc;ng th&iacute;ch Fortnite cũng như chắc chắn kh&ocirc;ng trở lại với Call of Duty: Black Out khi m&agrave; chẳng nhiều người c&ograve;n nhớ tới n&oacute; sau khi si&ecirc;u phẩm Apex Legends ra mắt, chẳng c&ograve;n lại qu&aacute; nhiều sự lựa chọn ở c&aacute;c d&ograve;ng game Battle Royale cho Shroud để c&oacute; thể phục vụ kh&aacute;n giả của m&igrave;nh.</p>\r\n\r\n<p>V&agrave; cứ với t&igrave;nh h&igrave;nh n&agrave;y th&igrave; c&aacute;c fan của Shroud &ndash; những người lu&ocirc;n vote Apex Legends ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m l&agrave; thần tượng của m&igrave;nh sẽ lại sớm cầy cuốc si&ecirc;u phẩm n&agrave;y th&ocirc;i.</p>', 9, 1, 11, 'images/xaoCP4AtiTEW4flkGJZgwycIn8RbxzNZpnkwm0XY.jpg', 'shroud-quay-lai-voi-pubg-va-nhan-cai-ket-dang-cho-rang-tua-game-nay-chi-lam-lang-phi-thoi-gian', '2022-07-27 04:24:32', '2022-08-15 02:13:18'),
(11, 'Hãy tải ngay Forza Street – Game đua xe tuyệt vời mới mở cửa miễn phí trên Windows 10', 'Forza Street là tựa game đua xe hay nhất của Microsoft, khi cho chơi miễn phí thì hãy thử ngay thôi nào.', '<p>Mới đ&acirc;y Microsoft đ&atilde; cho ph&eacute;p game thủ download v&agrave; chơi tựa game đua xe tuyệt vời của m&igrave;nh l&agrave;&nbsp;<strong>Forza Street</strong>&nbsp;ho&agrave;n to&agrave;n miễn ph&iacute;, tuy nhi&ecirc;n điều kiện bắt buộc l&agrave; bạn phải d&ugrave;ng Windows 10 v&agrave; v&agrave;o store mới tải được.</p>\r\n\r\n<p>Ngo&agrave;i ra, th&ocirc;ng tin mới hơn l&agrave;&nbsp;Forza Street sẽ mở cửa tr&ecirc;n nền tảng di động với phi&ecirc;n bản d&agrave;nh cho cả iOS lẫn Android v&agrave;o cuối năm nay. Tất nhi&ecirc;n cũng ho&agrave;n to&agrave;n miễn ph&iacute;!</p>\r\n\r\n<p>Forza Street l&agrave; tựa game đua xe hay nhất của Microsoft v&agrave; l&agrave; một trong những sản phẩm b&aacute;n chạy nhất của bộ phận sản xuất game từ &ocirc;ng lớn n&agrave;y. Tr&ograve; chơi nổi bật với đồ họa b&oacute;ng bẩy tuyệt đẹp, phong c&aacute;ch đua xe ch&oacute;ng mặt v&ocirc; c&ugrave;ng cuốn h&uacute;t!</p>\r\n\r\n<p>Game cho ph&eacute;p người chơi thu thập v&agrave; n&acirc;ng cấp những chiếc xe nổi tiếng, từ xe thể thao, xe cổ tới si&ecirc;u xe&hellip; Microsoft hứa hẹn rằng c&aacute;c n&uacute;t điều khiển tr&ecirc;n&nbsp;Forza Street sẽ được sắp xếp sao cho quen thuộc nhất, dễ sử dụng nhất. Ngo&agrave;i ra, game c&ograve;n c&oacute; thể đồng bộ h&oacute;a giữa c&aacute;c nền tảng với nhau.</p>', 2, 1, 11, 'images/SHh89jssSGecBF70I4wOmy9BsUjqv9A8NOivrbUd.jpg', 'hay-tai-ngay-forza-street-game-dua-xe-tuyet-voi-moi-mo-cua-mien-phi-tren-windows-10', '2022-07-27 04:25:41', '2022-08-08 02:26:03'),
(12, 'Trải nghiệm Viễn Chinh Mobile, game thủ kể lại những cảm xúc bồi hồi \"đi net\" một thời', 'Viễn Chinh Mobile là tựa game với đề tài quốc chiến đang chiếm được rất nhiều tình cảm từ phía game thủ hiện nay.', '<p>Viễn Chinh Mobile l&agrave; tựa game với đề t&agrave;i quốc chiến đang chiếm được rất nhiều t&igrave;nh cảm từ ph&iacute;a game thủ hiện nay. Với đề t&agrave;i quốc chiến vốn đ&atilde; được người chơi y&ecirc;u th&iacute;ch từ tượng đ&agrave;i &quot;Chinh Đồ&quot; c&aacute;ch đ&acirc;y 14 năm,&nbsp;<a href=\"https://gamek.vn/vien-chinh-mobile.htm\" target=\"_blank\">Viễn Chinh Mobile</a>&nbsp;nhanh ch&oacute;ng lấy l&ograve;ng được đại đa số game thủ, kể cả những người chơi kh&oacute; t&iacute;nh nhất.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://toquoc.mediacdn.vn/280518851207290880/2022/7/28/photo-1-1658894668081956049062-1658981853952-16589818541872014598777.jpg\"><img alt=\"Trải nghiệm Viễn Chinh Mobile, game thủ kể lại những cảm xúc bồi hồi đi net một thời - Ảnh 1.\" src=\"https://toquoc.mediacdn.vn/280518851207290880/2022/7/28/photo-1-1658894668081956049062-1658981853952-16589818541872014598777.jpg\" /></a></p>\r\n\r\n<p>Hồi ức từ tựa game &quot;Chinh Đồ&quot;</p>\r\n\r\n<p>Được biết sau khi trải nghiệm Viễn Chinh Mobile, nhiều game thủ đ&atilde; tỏ ra bồi hồi thuật lại những k&yacute; ức một thời, những cảm x&uacute;c kh&ocirc;ng qu&ecirc;n từ thời c&ograve;n ngồi những qu&aacute;n điện tử cỏ ng&agrave;y trước. Anh N.T chia sẻ rằng:<em>&nbsp;&quot;Ui giời, cảm gi&aacute;c quốc chiến đ&ocirc;ng nghịt người thế n&agrave;y l&agrave;m m&igrave;nh lại nhớ đến những ng&agrave;y xưa anh em chơi game cộng đồng vui lắm, nhất l&agrave; Chinh Đồ &yacute;, quốc chiến kh&ocirc;ng c&oacute; chỗ đứng lu&ocirc;n m&agrave; gặp anh em chia phe rồi chiến đấu, cảm gi&aacute;c ấy kh&oacute; m&agrave; qu&ecirc;n được chứ!&quot;</em>.</p>\r\n\r\n<p><a href=\"https://toquoc.mediacdn.vn/280518851207290880/2022/7/28/photo-1-16588953773191504997061-1658981856370-1658981856552785106465.png\"><img alt=\"Trải nghiệm Viễn Chinh Mobile, game thủ kể lại những cảm xúc bồi hồi đi net một thời - Ảnh 2.\" src=\"https://toquoc.mediacdn.vn/280518851207290880/2022/7/28/photo-1-16588953773191504997061-1658981856370-1658981856552785106465.png\" /></a></p>\r\n\r\n<p>Từng c&oacute; một &quot;Chinh Đồ&quot; đ&ocirc;ng vui đến thế!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Viễn Chinh Mobile với quốc chiến đ&ocirc;ng đ&uacute;c kh&ocirc;ng k&eacute;m</p>\r\n\r\n<p>Sau khi chia sẻ của anh ch&agrave;ng n&agrave;y đăng l&ecirc;n diễn đ&agrave;n, đ&atilde; c&oacute; rất nhiều những game thủ kh&aacute;c t&aacute;n thưởng v&agrave; đồng &yacute; với &yacute; kiến tr&ecirc;n:&nbsp;<em>&quot;Nghe quốc chiến m&igrave;nh cũng v&agrave;o thử ngay, m&agrave; đ&uacute;ng l&agrave; cảm gi&aacute;c kh&ocirc;ng kh&aacute;c g&igrave; với những ng&agrave;y đầu đi chơi quan net cả; Nhớ c&aacute;i thời c&ograve;n đi net 2k/1 giờ qu&aacute; đi; Game g&igrave; th&igrave; game cứ đ&ocirc;ng vui, giải tr&iacute; l&agrave; vừa &yacute; rồi...&quot;</em></p>\r\n\r\n<p><a href=\"https://toquoc.mediacdn.vn/280518851207290880/2022/7/28/photo-1-16588956284761337549019-1658981862264-1658981862575553961321.gif\" target=\"_blank\"><img alt=\"Trải nghiệm Viễn Chinh Mobile, game thủ kể lại những cảm xúc bồi hồi đi net một thời - Ảnh 4.\" src=\"https://toquoc.mediacdn.vn/280518851207290880/2022/7/28/photo-1-16588956284761337549019-1658981862264-1658981862575553961321.gif\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với sứ mệnh l&agrave; một tựa game quốc chiến đ&atilde; qu&aacute; quen thuộc với game thủ, Viễn Chinh Mobile kh&eacute;o l&eacute;o lồng gh&eacute;p những g&igrave; tinh hoa nhất của một tựa game quốc chiến từ tượng đ&agrave;i Chinh Đồ&nbsp;c&ugrave;ng những cải tiến mới lạ, ph&ugrave; hợp với thị hiếu v&agrave; nhu cầu của game thủ hiện tại.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Vẫn l&agrave; quốc chiến c&ocirc;ng th&agrave;nh ho&agrave;nh tr&aacute;ng nhưng được đặt trong một nền đồ họa t&acirc;n tiến, bắt mắt với m&agrave;u sắc vừa phải. Đi k&egrave;m với đ&oacute; Viễn Chinh Mobile đ&atilde; bố tr&iacute; những lớp thời trang v&agrave; tọa kỵ ho&agrave;nh tr&aacute;ng, nhiều m&agrave;u sắc kh&ocirc;ng g&acirc;y nh&agrave;m ch&aacute;n.&nbsp;</p>\r\n\r\n<p><a href=\"https://toquoc.mediacdn.vn/280518851207290880/2022/7/28/photo-1-16588960208282003523569-1658981867823-1658981867958795303723.gif\" target=\"_blank\"><img alt=\"Trải nghiệm Viễn Chinh Mobile, game thủ kể lại những cảm xúc bồi hồi đi net một thời - Ảnh 6.\" src=\"https://toquoc.mediacdn.vn/280518851207290880/2022/7/28/photo-1-16588960208282003523569-1658981867823-1658981867958795303723.gif\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Điểm nhấn ở đ&acirc;y dĩ nhi&ecirc;n phải nhắc đến quốc chiến được n&acirc;ng tầm tới quy m&ocirc; quốc gia, kh&ocirc;ng chỉ được đặt trong một chiến trường đ&ocirc;ng đ&uacute;c với con số l&ecirc;n tới 2 triệu người. Nơi m&agrave; ngo&agrave;i kỹ năng v&agrave; sức mạnh, những l&atilde;nh đạo phe ph&aacute;i c&ograve;n phải sử dụng tới &oacute;c tư duy v&agrave; chiến lược, để c&oacute; thể lấy &iacute;t địch nhiều, lấy yếu đ&aacute;nh mạnh, tạo n&ecirc;n những chiến c&ocirc;ng lừng lẫy, khẳng định vị thế của quốc gia m&igrave;nh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kh&ocirc;ng chỉ được lăn xả chiến đấu v&igrave; đại nghĩa, chiến trường n&agrave;y c&ograve;n bao gồm rất nhiều những&nbsp;hoạt động hấp dẫn như: Hộ tống, c&ocirc;ng th&agrave;nh chiến, săn qu&aacute;i cấp thế giới v&agrave; giao tranh phi bi&ecirc;n giới... Tất cả sẽ mang đến một chiến trường rực lửa nhất, ho&agrave;nh tr&aacute;ng nhất với h&agrave;ng loạt những chi&ecirc;u thức đẹp mắt, mang đến những cảm gi&aacute;c kh&oacute; qu&ecirc;n.</p>\r\n\r\n<p>Ngo&agrave;i chuyện chinh phục những &quot;v&ugrave;ng đất hứa&quot;, quốc chiến c&ograve;n cho ph&eacute;p người chơi ph&acirc;n cấp thống l&atilde;nh, t&aacute;i x&acirc;y dựng quốc gia v&agrave; chi&ecirc;u mộ anh h&ugrave;ng về phe bạn để c&ugrave;ng lập n&ecirc;n cơ nghiệp. Game c&oacute; cả cơ chế rảnh tay để bạn nhận thưởng m&agrave; kh&ocirc;ng cần phải chơi, y&ecirc;n t&acirc;m đi ngủ mọi việc c&ograve;n lại cứ để game lo.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://toquoc.mediacdn.vn/280518851207290880/2022/7/28/4fn-16588962744181098747395-1658981877379-1658981877660456395767.png\" target=\"_blank\"><img alt=\"Trải nghiệm Viễn Chinh Mobile, game thủ kể lại những cảm xúc bồi hồi đi net một thời - Ảnh 9.\" src=\"https://toquoc.mediacdn.vn/280518851207290880/2022/7/28/4fn-16588962744181098747395-1658981877379-1658981877660456395767.png\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://toquoc.mediacdn.vn/280518851207290880/2022/7/28/5fn-1658896274423555294853-1658981880530-16589818808991916026843.jpg\" target=\"_blank\"><img alt=\"Trải nghiệm Viễn Chinh Mobile, game thủ kể lại những cảm xúc bồi hồi đi net một thời - Ảnh 10.\" src=\"https://toquoc.mediacdn.vn/280518851207290880/2022/7/28/5fn-1658896274423555294853-1658981880530-16589818808991916026843.jpg\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Viễn Chinh Mobile đang li&ecirc;n tục khẳng định rằng m&igrave;nh đang kế thừa ng&ocirc;i vương của những tựa game quốc chiến, kh&ocirc;ng chỉ g&igrave;n giữ những g&igrave; tinh hoa nhất, l&agrave; c&aacute;i gốc của thể loại game n&agrave;y. Viễn Chinh Mobile c&ograve;n kh&eacute;o l&eacute;o ph&aacute;t triển n&oacute;, mang lại những gi&aacute; trị mới, quan trọng l&agrave; khiến được game thủ đem l&ograve;ng y&ecirc;u th&iacute;ch.</p>\r\n\r\n<p>Hiện nay Viễn Chinh Mobile đ&atilde; c&oacute; mặt tr&ecirc;n thị trường với con số gần 1 năm, sức h&uacute;t của tựa game n&agrave;y vẫn chưa bao giờ hạ nhiệt, với sự kế thừa th&ocirc;ng minh n&agrave;y chắc chắn sẽ c&ograve;n &quot;lấy l&ograve;ng&quot; game thủ hơn nữa, những cảm x&uacute;c tr&ecirc;n đ&atilde; n&oacute;i l&ecirc;n phần n&agrave;o những k&yacute; ức kh&oacute; qu&ecirc;n của họ, c&ograve;n bạn th&igrave; sao? Trải nghiệm ngay để kiểm chứng nh&eacute;!</p>', 2, 1, 12, 'images/zCx8U7X1VCtbxTSUFWBGhrEXfczF02yR9GhaL4Dr.webp', 'trai-nghiem-vien-chinh-mobile-game-thu-ke-lai-nhung-cam-xuc-boi-hoi-di-net-mot-thoi', '2022-07-28 05:13:35', '2022-08-15 02:34:36'),
(13, 'Tencent Esports Summit 2022 mang đến giải đấu cho các tựa game mobile', 'Tencent công bố kế hoạch eSports cho các tựa game lớn của mình tại Tencent Esports Summit 2022 được tổ chức ở Trung Quốc.', '<p>Người đứng đầu c&aacute;c bộ phận kh&aacute;c nhau ở Tencent đ&atilde; đưa ra c&aacute;c th&ocirc;ng b&aacute;o trong hội nghị thượng đỉnh k&eacute;o d&agrave;i gần hai giờ đồng hồ. Sự hợp t&aacute;c v&agrave; c&aacute;c giải đấu mới trong Wild Rift được c&ocirc;ng bố tại Tencent Esports Summit 2022 được n&ecirc;u r&otilde;.</p>\r\n\r\n<p>Wild Rift đ&atilde; tạo ra một hệ sinh th&aacute;i thể thao điện tử bền vững ở Trung Quốc. Giải đấu Wild Rift League (WRL) v&agrave; giải đấu thứ cấp Wild Rift Tour (WRT) đ&atilde; x&acirc;y dựng một hệ thống giải đấu ho&agrave;n chỉnh bằng c&aacute;ch giới thiệu c&aacute;c giải đấu thăng hạng v&agrave; xuống hạng.</p>\r\n\r\n<p>V&agrave;o nửa cuối năm 2022, thể thao điện tử Wild Rift tu&acirc;n thủ v&agrave; đẩy nhanh chiến lược tổ chức sự kiện thể thao điện tử di động độc lập, thực hiện c&aacute;c phương ph&aacute;p tiếp cận mới trong trải nghiệm giải tr&iacute; WRL, đồng thời mở rộng v&agrave; mở rộng c&aacute;c nguồn lực hợp t&aacute;c sự kiện tr&ecirc;n quy m&ocirc; lớn hơn.</p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/28112547/tencent-esports-2022-1658982347-11.jpg\"><img alt=\"Tencent Esports Summit 2022 đã diễn ra.\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/28112547/tencent-esports-2022-1658982347-11.jpg\" style=\"height:450px; width:800px\" /></a></p>\r\n\r\n<p>Tencent Esports Summit 2022 đ&atilde; diễn ra.</p>\r\n\r\n<p>Tencent cũng ch&iacute;nh thức c&ocirc;ng bố giải đấu mới mang t&ecirc;n Ionian Cup sẽ được tổ chức v&agrave;o th&aacute;ng 09. M&ugrave;a giải mới của Wild Rift League (WRL) sẽ bắt đầu v&agrave;o th&aacute;ng 10. Ngo&agrave;i c&aacute;c sự kiện thể thao điện tử, WRL sẽ hợp t&aacute;c với OnePlus để khởi động sự kiện nhằm tạo ra một nền văn h&oacute;a sự kiện xanh xung quanh hệ sinh th&aacute;i.</p>\r\n\r\n<p>Tencent cũng th&ocirc;ng b&aacute;o th&agrave;nh lập trại huấn luyện cầu thủ WRL ch&iacute;nh thức đầu ti&ecirc;n v&agrave; triển khai c&aacute;c chương tr&igrave;nh r&egrave;n luyện thể lực chất lượng chuy&ecirc;n nghiệp cho c&aacute;c tuyển thủ chuy&ecirc;n nghiệp. Bằng c&aacute;ch điều chỉnh văn h&oacute;a của người chơi, Tencent c&oacute; kế hoạch thiết lập c&aacute;c gi&aacute; trị tốt v&agrave; một hệ sinh th&aacute;i thể thao điện tử l&agrave;nh mạnh.</p>\r\n\r\n<p>Một th&ocirc;ng b&aacute;o về sự hợp t&aacute;c với Coca-Cola cũng được đưa ra tại hội nghị. V&agrave;o ng&agrave;y 12 th&aacute;ng 98 năm nay, Coca-Cola v&agrave; Wild Rift sẽ ra mắt một lon mini anh h&ugrave;ng đồng thương hiệu tại Trung Quốc.</p>\r\n\r\n<p>C&aacute;c giải đấu kh&aacute;c sẽ đến với Peacekeeper Elite. Tencent đ&atilde; c&ocirc;ng bố một loạt c&aacute;c giải đấu mới cho Peacekeeper Elite, phi&ecirc;n bản PUBG Mobile Trung Quốc. Tencent đ&atilde; đưa ra c&aacute;c bản cập nhật mới li&ecirc;n quan đến Peace Elite League tại hội nghị. Một hệ thống ph&aacute;t s&oacute;ng từ xa đ&atilde; được giới thiệu cho giải đấu v&agrave;o năm 2023.</p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/28112442/giai-dau-1658982281-87.png\"><img alt=\"Peacekeeper Elite League.\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/28112442/giai-dau-1658982281-87.png\" style=\"height:640px; width:960px\" /></a></p>\r\n\r\n<p>Peacekeeper Elite League.</p>\r\n\r\n<p>C&aacute;c giải đấu mới bao gồm National League, Streamer Championship, College Championship, All-Gamer Championship, City Championship, v.v. cũng được giới thiệu tại hội nghị. Hội nghị cũng cho thấy một c&aacute;i nh&igrave;n về PSI v&agrave; PMGC. C&aacute;c trận chiến n&oacute;ng bỏng của PSI sẽ bắt đầu v&agrave;o th&aacute;ng 09, trong khi PMGC sẽ trở lại v&agrave;o th&aacute;ng 11 đến th&aacute;ng 01 năm sau.</p>\r\n\r\n<p>C&aacute;c th&ocirc;ng b&aacute;o ch&iacute;nh được đưa ra tại Tencent Esports Summit 2022 li&ecirc;n quan đến Arena Breakout. Tencent gần đ&acirc;y đ&atilde; c&ocirc;ng bố ph&aacute;t h&agrave;nh Arena Breakout &ndash; game bắn s&uacute;ng FPS. Nhưng c&ocirc;ng ty đ&atilde; chia sẻ một số kế hoạch li&ecirc;n quan đến thể thao điện tử ở Trung Quốc tại hội nghị. Tencent đ&atilde; c&ocirc;ng bố loạt game Arena Breakout Pioneer với tổng giải thưởng lớn l&ecirc;n tới 150.000 USD.</p>\r\n\r\n<p>Giải đấu sẽ bao gồm ba sự kiện v&ograve;ng loại với một sự kiện đ&ecirc;m chung kết ngoại tuyến. Giải đầu ti&ecirc;n được diễn ra được mong đợi của người chơi trong tương lai.</p>', 1, 1, 12, 'images/MRuYltbiUL93gpzcaQnRFGMgrFKbly5N4gFceD3M.jpg', 'tencent-esports-summit-2022-mang-den-giai-dau-cho-cac-tua-game-mobile-899765', '2022-07-28 05:15:49', '2022-08-07 19:53:08'),
(14, 'GTA 6 xuất hiện thông tin về nhân vật và bối cảnh trong báo cáo mới', 'Một báo cáo mới của Bloomberg đã tiết lộ rằng Grand Theft Auto 6 sẽ lấy bối cảnh ở Miami và game có nhân vật nữ chính có thể chơi được đầu tiên trong thương hiệu.', '<p>Một b&aacute;o c&aacute;o mới đ&atilde; tiết lộ th&ocirc;ng tin về bối cảnh v&agrave; nh&acirc;n vật ch&iacute;nh của Grand Theft Auto VI. Rockstar Games đ&atilde; x&aacute;c nhận rằng GTA 6 đang được ph&aacute;t triển từ th&aacute;ng 2, mặc d&ugrave; ng&agrave;y ph&aacute;t h&agrave;nh v&agrave; nền tảng của tr&ograve; chơi vẫn chưa được tiết lộ.</p>\r\n\r\n<p>Đ&atilde; c&oacute; nhiều tin đồn lan truyền về GTA 6 trong v&agrave;i năm qua, một tin đồn dai dẳng l&agrave; GTA 6 sẽ c&oacute; một nữ nh&acirc;n vật ch&iacute;nh trong chế độ c&acirc;u chuyện. GTA Online của GTA 5 cho ph&eacute;p người chơi tạo ra một nh&acirc;n vật nữ, nhưng vẫn chưa c&oacute; một người phụ nữ dẫn đầu trong loạt Grand Theft Auto, trong cả c&aacute;c phần ch&iacute;nh v&agrave; phụ. Những tin đồn li&ecirc;n quan đến bối cảnh mới trong GTA 6 cũng đ&atilde; xuất hiện khắp nơi, mặc d&ugrave; một tin đồn dai dẳng đ&atilde; đề cập đến việc trở lại Vice City.</p>\r\n\r\n<p>Th&ocirc;ng tin chi tiết về GTA 6 hiện đ&atilde; xuất hiện tr&agrave;n lan tr&ecirc;n mạng, như một phần của b&aacute;o c&aacute;o mới từ Jason Schreier của Bloomberg, n&ecirc;u chi tiết về việc x&oacute;a bỏ văn h&oacute;a frat boy từng c&oacute; mặt trong Rockstar Games. Theo b&aacute;o c&aacute;o, GTA 6 sẽ lấy bối cảnh ở Miami, điều n&agrave;y cho thấy rằng Vice City sẽ l&agrave; một phần của tr&ograve; chơi, ngay cả khi n&oacute; chỉ l&agrave; một phần của bản đồ. Sẽ c&oacute; hai nh&acirc;n vật ch&iacute;nh trong GTA 6, đ&oacute; l&agrave; một cặp cướp ng&acirc;n h&agrave;ng được lấy cảm hứng từ Bonnie v&agrave; Clyde. Một trong những nh&acirc;n vật ch&iacute;nh n&agrave;y được cho l&agrave; Latina, người sẽ l&agrave; nh&acirc;n vật nữ ch&iacute;nh c&oacute; thể chơi được đầu ti&ecirc;n trong lịch sử GTA .</p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27222031/game4v-gta-6-1-1658935230-81.jpg\"><img alt=\"gta 6\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27222031/game4v-gta-6-1-1658935230-81.jpg\" style=\"height:530px; width:940px\" /></a></p>\r\n\r\n<p>Tuy nhi&ecirc;n những th&ocirc;ng tin n&agrave;y đều chưa được sự x&aacute;c nhận từ Rockstar Games n&ecirc;n game thủ kh&ocirc;ng n&ecirc;n qu&aacute; kỳ vọng v&agrave;o ch&uacute;ng.</p>\r\n\r\n<p>Theo b&aacute;o c&aacute;o của Schreier, kế hoạch cho GTA 6 l&agrave; c&oacute; một bản đồ rộng lớn khiến c&aacute;c bản đồ của c&aacute;c phần trước trở n&ecirc;n b&eacute; nhỏ, điều n&agrave;y sẽ rất ấn tượng, nếu x&eacute;t đến k&iacute;ch thước của bản đồ trong GTA 5. Tuy nhi&ecirc;n, những kế hoạch n&agrave;y đ&atilde; được giảm v&agrave; tr&ograve; chơi hiện c&oacute; một khu vực được d&ugrave;ng để truyền tải một phi&ecirc;n bản hư cấu của Miami v&agrave; c&aacute;c khu vực xung quanh của n&oacute;. Mục đ&iacute;ch l&agrave; Rockstar Games sẽ th&ecirc;m v&agrave;o bản đồ theo thời gian, với c&aacute;c nhiệm vụ v&agrave; th&agrave;nh phố mới được thực hiện th&ocirc;ng qua c&aacute;c bản cập nhật. Th&agrave;nh c&ocirc;ng t&agrave;i ch&iacute;nh đ&aacute;ng kinh ngạc của GTA Online (tiếp tục mang lại nguồn tiền lớn cho Rockstar) c&oacute; thể đ&atilde; th&uacute;c đẩy quyết định n&agrave;y, v&igrave; tr&ograve; chơi vẫn c&oacute; một cộng đồng trực tuyến ph&aacute;t triển mạnh cho đến ng&agrave;y nay v&agrave; GTA 6 c&oacute; cơ hội x&acirc;y dựng một thế giới thậm ch&iacute; c&ograve;n hơn thế nữa ấn tượng.</p>\r\n\r\n<p>Kh&ocirc;ng r&otilde; khi n&agrave;o người h&acirc;m mộ ch&iacute;nh x&aacute;c sẽ c&oacute; cơ hội trải nghiệm GTA 6 (b&aacute;o c&aacute;o đề cập đến suy đo&aacute;n của c&aacute;c nh&agrave; ph&acirc;n t&iacute;ch trước đ&oacute; rằng n&oacute; c&oacute; thể ph&aacute;t h&agrave;nh v&agrave;o năm 2024 của Take-Two), v&igrave; qu&aacute; tr&igrave;nh ph&aacute;t triển được b&aacute;o c&aacute;o l&agrave; đang tiến triển chậm, đặc biệt l&agrave; khi n&oacute; bị ảnh hưởng bởi đại dịch. GTA Online tiếp tục l&agrave; một cỗ m&aacute;y in tiền, v&igrave; vậy kh&ocirc;ng c&oacute; g&igrave; phải vội v&agrave;ng loại bỏ tr&ograve; chơi n&agrave;y. B&aacute;o c&aacute;o ban đầu c&oacute; vẻ như Grand Theft Auto VI sẽ l&agrave; phần lớn nhất v&agrave; ấn tượng nhất trong d&ograve;ng game cho đến nay.</p>', 45, 1, 13, 'images/HhHu8oI9hBkoWu61dLTlponEiMe2N5JhMtWFxRWD.jpg', 'gta-6-xuat-hien-thong-tin-ve-nhan-vat-va-boi-canh-trong-bao-cao-moi', '2022-07-28 05:17:47', '2022-08-12 02:09:12'),
(15, 'Disney Dreamlight Valley đem đến gameplay và các tính năng thú vị trong video mới', 'Đoạn giới thiệu tổng quan về lối chơi mới của Disney Dreamlight Valley nêu bật nhiều tính năng mà người hâm mộ Animal Crossing sẽ đánh giá cao.', '<p>Disney Dreamlight Valley vừa ph&aacute;t h&agrave;nh đoạn giới thiệu tổng quan về lối chơi cung cấp c&aacute;i nh&igrave;n đầu ti&ecirc;n về c&aacute;c t&iacute;nh năng v&agrave; hoạt động sẽ xuất hiện trong game. Dựa tr&ecirc;n những g&igrave; đ&atilde; được thể hiện trong đoạn trailer, người h&acirc;m mộ Disney v&agrave; Pixar c&ugrave;ng với người h&acirc;m mộ c&aacute;c tr&ograve; chơi như Stardew Valley v&agrave; Animal Crossing c&oacute; rất nhiều điều để mong đợi ở bản ph&aacute;t h&agrave;nh sắp tới.</p>\r\n\r\n<p>Được c&ocirc;ng bố lần đầu ti&ecirc;n v&agrave;o th&aacute;ng 4 năm 2022, Disney Dreamlight Valley đang được ph&aacute;t triển bởi Gameloft &ndash; c&ocirc;ng ty chủ yếu xuất bản c&aacute;c tr&ograve; chơi di động từ nhiều thương hiệu lớn. Từ c&aacute;c tr&ograve; chơi di động của Assassin&rsquo;s Creed v&agrave; Tom Clancy&rsquo;s đến Disney Magic Kingdoms, Gameloft c&oacute; một số lượng đ&aacute;ng kinh ngạc c&aacute;c tựa game dưới thời ho&agrave;n kim của m&igrave;nh. Disney Dreamlight Valley nổi bật trong số n&agrave;y v&igrave; tr&ograve; chơi phi&ecirc;u lưu m&ocirc; phỏng cuộc sống sắp tới sẽ l&agrave; phi&ecirc;n bản console v&agrave; PC ban đầu trước khi c&oacute; mặt tr&ecirc;n Mac App Store. Tr&ograve; chơi tổ chức một d&agrave;n nh&acirc;n vật c&oacute; thể nhận ra ngay lập tức từ c&aacute;c bộ phim của Disney v&agrave; Pixar.</p>\r\n\r\n<p>Đoạn giới thiệu tổng quan về lối chơi mới cho Disney Dreamlight Valley giới thiệu nhiều nội dung v&agrave; khả năng chơi của tr&ograve; chơi, tiết lộ lối chơi gợi nhớ đến c&aacute;c tr&ograve; chơi m&ocirc; phỏng như Stardew Valley đồng thời triển khai lối chơi theo cốt truyện v&agrave; nhiệm vụ điển h&igrave;nh của c&aacute;c tr&ograve; chơi phi&ecirc;u lưu truyền thống. Tr&ograve; chơi diễn ra trong thế giới kỳ diệu của thung lũng Dreamlight c&oacute; c&aacute;c nh&acirc;n vật của Disney v&agrave; Pixar v&agrave; đ&atilde; rơi v&agrave;o trạng th&aacute;i suy t&agrave;n v&agrave; hư hỏng do một thế lực ăn m&ograve;n được gọi l&agrave; &ldquo;sự l&atilde;ng qu&ecirc;n&rdquo;. Nhiệm vụ của người chơi l&agrave; kh&ocirc;i phục lại Dreamlight Valley trở lại vinh quang trước đ&acirc;y bằng c&aacute;ch kh&aacute;m ph&aacute;, gi&uacute;p đỡ nh&acirc;n vật v&agrave; ho&agrave;n th&agrave;nh nhiệm vụ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tr&ograve; chơi c&oacute; t&iacute;nh năng t&ugrave;y biến nh&acirc;n vật s&acirc;u sắc v&agrave; nhiều t&iacute;nh năng th&uacute; vị để giữ cho người chơi lu&ocirc;n bận rộn. Người chơi c&oacute; thể c&acirc;u c&aacute; ở nhiều địa điểm kh&aacute;c nhau v&agrave; duy tr&igrave; một khu vườn với cả hai hoạt động t&igrave;m nguồn nguy&ecirc;n liệu c&oacute; thể được sử dụng để nấu c&aacute;c bữa ăn từ một danh s&aacute;ch phong ph&uacute; c&aacute;c c&ocirc;ng thức nấu ăn. Chế tạo cũng đ&oacute;ng một vai tr&ograve; quan trọng trong tr&ograve; chơi, với v&ocirc; số vật phẩm để chế tạo từ c&aacute;c nguy&ecirc;n liệu kiếm ăn. Đồ nội thất như trường kỷ, thảm v&agrave; đ&agrave;i c&ugrave;ng với c&aacute;c vật dụng chức năng như đ&agrave;i v&agrave; bếp đều c&oacute; thể được chế t&aacute;c v&agrave; đặt trong nh&agrave; của người chơi. Tập trung mạnh v&agrave;o c&aacute; nh&acirc;n h&oacute;a, cho ph&eacute;p người chơi trang tr&iacute; v&agrave; sắp xếp lại hầu như to&agrave;n bộ thế giới tr&ograve; chơi với mức độ kiểm so&aacute;t tương tự như khả năng s&aacute;ng tạo của The Sims.</p>\r\n\r\n<p>Tr&ograve; chơi sẽ bắt đầu giai đoan Early Access v&agrave;o ng&agrave;y 6 th&aacute;ng 9 năm 2022, đối với những người chơi mua Founder&rsquo;s Pack hoặc l&agrave; th&agrave;nh vi&ecirc;n của Xbox Game Pass trong khi đợt ra mắt miễn ph&iacute; đầy đủ sẽ diễn ra v&agrave;o một ng&agrave;y kh&ocirc;ng x&aacute;c định c&oacute; thể l&agrave; v&agrave;o đầu năm 2023.</p>', 1, 1, 13, 'images/mQopWn5da2llK16sS4mUtBfxdDJxLW6kZDZpNvqy.jpg', 'disney-dreamlight-valley-dem-den-gameplay-va-cac-tinh-nang-thu-vi-trong-video-moi-899616', '2022-07-28 05:19:44', '2022-08-07 11:47:28'),
(16, 'Chung kết Hoa Hậu Thể Thao 2022 gọi tên hot TikToker Lê Bống, Trần Thanh Tâm', 'Sau nhiều vòng casting và thử thách, các thí sinh xuất sắc nhất sẽ tiếp tục bước vào vòng trong chuẩn bị cho đêm Chung kết.', '<p>Trước thềm Chung Kết, rất nhiều thử th&aacute;ch chương tr&igrave;nh Hoa hậu Thể Thao Việt Nam &ndash; Miss Fitness Vietnam 2022 đ&atilde; được ban tổ chức đưa ra để t&igrave;m ra những nh&acirc;n tố xứng đ&aacute;ng v&agrave;o v&ograve;ng trong nhất.</p>\r\n\r\n<p>Trong tập cuối c&ugrave;ng, top 33 th&iacute; sinh được y&ecirc;u cầu thực hiện thử th&aacute;ch quay video viral v&agrave; tạo d&aacute;ng tr&ecirc;n kh&ocirc;ng. &Aacute;p lực của th&iacute; sinh trước những thử th&aacute;ch c&ugrave;ng với những đ&aacute;nh gi&aacute; v&agrave; loại trừ của ban gi&aacute;m khảo đ&atilde; đẩy độ căng thẳng của tập n&agrave;y l&ecirc;n đỉnh điểm.</p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/28182723/le-bong-1659007643-7.png\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/28182723/le-bong-1659007643-7.png\" style=\"height:413px; width:620px\" /></a></p>\r\n\r\n<p>Bộ ba gi&aacute;m khảo quyền lực của Miss Fitness Vietnam 2022 (Ảnh: Miss Fitness Vietnam 2022)</p>\r\n\r\n<p>Ở tập 5, kh&ocirc;ng c&ograve;n c&aacute;c thử th&aacute;ch vận động như c&aacute;c tập trước nữa m&agrave; thay v&agrave;o đ&oacute; l&agrave; c&aacute;c thử th&aacute;ch gần hơn với thực tế, những kỹ năng m&agrave; một t&acirc;n Hoa hậu cần c&oacute;. C&aacute;c th&iacute; sinh được đưa ra thử th&aacute;ch quay video viral dưới dạng one &ndash; shot sao cho thể hiện được th&ocirc;ng điệp của nh&atilde;n h&agrave;ng cũng như c&oacute; thể truyền cảm hứng v&agrave; năng lực t&iacute;ch cực tới mọi người.</p>\r\n\r\n<p>Dưới sự gi&aacute;m s&aacute;t của 3 HLV, c&aacute;c th&iacute; sinh chia ngẫu nhi&ecirc;n mỗi đội 3 người mỗi đội chỉ được quay tối đa 3 lần. Do &aacute;p lực v&agrave; lo lắng n&ecirc;n c&aacute;c th&iacute; sinh cũng li&ecirc;n tục mắc lỗi khiến cho kh&ocirc;ng kh&iacute; v&ocirc; c&ugrave;ng căng thẳng. Kết th&uacute;c thử th&aacute;ch Chinh Phục, 14 th&iacute; sinh xuất sắc nhất được g&oacute;p mặt thẳng v&agrave;o Top 30. C&aacute;c th&iacute; sinh c&ograve;n lại tiếp tục với thử th&aacute;ch Bứt ph&aacute; để gi&agrave;nh tấm v&eacute; v&agrave;o Chung kết.</p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/28182748/le-bong-2-1659007667-42.png\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/28182748/le-bong-2-1659007667-42.png\" style=\"height:413px; width:620px\" /></a></p>\r\n\r\n<p>C&aacute;c th&iacute; sinh trong khi thực thiện thử th&aacute;ch (Ảnh : Miss Fitness Vietnxam 2022)</p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/28182811/le-bong-6-1659007690-24.png\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/28182811/le-bong-6-1659007690-24.png\" style=\"height:525px; width:1000px\" /></a></p>\r\n\r\n<p>Thanh T&acirc;m v&agrave; L&ecirc; Bống đều xuất sắc nằm trong Top 14 th&iacute; sinh xuất sắc (Ảnh: Miss Fitness Vietnam 2022)</p>\r\n\r\n<p>Khi cuộc thi bắt đầu v&ograve;ng casting, 2 c&aacute;i t&ecirc;n Thanh T&acirc;m v&agrave; L&ecirc; Bống đ&atilde; g&acirc;y rất nhiều sự ch&uacute; &yacute;. Cả 2 đều xuất th&acirc;n l&agrave; Tiktoker với kh&aacute; nhiều &ldquo;tai tiếng&rdquo; v&agrave; khi xuất hiện trong chương tr&igrave;nh Hoa Hậu Thể Thao cũng đ&atilde; g&acirc;y ra nhiều tranh c&atilde;i. Đặc biệt l&agrave; về ngoại h&igrave;nh của hai c&ocirc; n&agrave;ng. Tuy nhi&ecirc;n, cả hai đều đang cố gắng nỗ lực v&agrave; chứng minh năng lực của m&igrave;nh v&agrave; mới nhất ch&iacute;nh l&agrave; th&agrave;nh t&iacute;ch lọt Top 14 cuộc thi n&agrave;y. Đ&ecirc;m chung kết cuộc thi sẽ được ph&aacute;t s&oacute;ng trực tiếp v&agrave;o 20h15 ng&agrave;y 31/7/2022. C&ugrave;ng chờ đ&oacute;n sự thể hiện của 2 c&ocirc; n&agrave;ng cũng như c&aacute;c th&iacute; sinh kh&aacute;c xem ai sẽ d&agrave;nh được vương miện của cuộc thi nh&eacute;.</p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/28182851/le-bong-4-1659007730-46.png\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/28182851/le-bong-4-1659007730-46.png\" style=\"height:457px; width:620px\" /></a></p>\r\n\r\n<p>Khi tham gia cuộc thi, 2 tiktoker nhận nhiều &yacute; kiến tr&aacute;i chiều (Ảnh: Miss Fitness Vietnam 2022)</p>', 4, 1, 15, 'images/qYw7Yfx6llhH1Yd9uwDUHlurZA6M8AJn2K0FTLwl.png', 'chung-ket-hoa-hau-the-thao-2022-goi-ten-hot-tiktoker-le-bong-tran-thanh-tam', '2022-07-28 05:45:21', '2022-08-08 01:36:25'),
(17, 'Thị trấn đặc biệt nơi 80% người dân sống dưới lòng đất nhưng cực kì hiện đại và thu hút khách du lịch', 'Coober Pedy, nơi mà người dân có sở thích “sống dưới lòng đất” độc nhất vô nhị trên thế giới khiến ai cũng phải tò mò.', '<p>Nằm ở một v&ugrave;ng hẻo l&aacute;nh của miền Nam nước &Uacute;c, Coober Pedy c&aacute;ch trung t&acirc;m thủ đ&ocirc; hơn 1000km. Nơi đ&acirc;y bắt đầu h&igrave;nh th&agrave;nh n&ecirc;n c&aacute;c khu d&acirc;n cư chỉ từ sau khi những mỏ kho&aacute;ng sản opal khổng lồ được ph&aacute;t hiện, thu h&uacute;t c&aacute;c doanh nghiệp khai th&aacute;c mỏ. Nhờ thế nơi đ&acirc;y được mệnh danh l&agrave; &ldquo;thủ đ&ocirc; opal của thế giới&rdquo;.</p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27161612/1658738574322387570521-1658913371-47.jpg\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27161612/1658738574322387570521-1658913371-47.jpg\" style=\"height:465px; width:700px\" /></a></p>\r\n\r\n<p>Ng&agrave;y n&agrave;y, mọi hoạt động khi th&aacute;c ở Coober Pedy đều đ&atilde; bị cấm để đảm bảo ph&aacute;t triển sinh th&aacute;i, cũng như bảo vệ mội trường. Thế nhưng ngo&agrave;i khai th&aacute;c mỏ, người d&acirc;n c&ograve;n kh&aacute;m ph&aacute; ra một tiềm năng nữa của Coober Pedy, đ&oacute; l&agrave; một loại h&igrave;nh du lịch độc đ&aacute;o.</p>\r\n\r\n<p>Nhiệt độ trung b&igrave;nh hằng năm ở Coober Pedy v&ocirc; c&ugrave;ng cao, nhất l&agrave; v&agrave;o m&ugrave;a h&egrave;, nhiệt độ c&oacute; thể chạm ngưỡng 50 độ C. Nguồn nước ở đ&acirc;y cũng kh&ocirc;ng dồi d&agrave;o khiến người d&acirc;n gặp nhiều kh&oacute; khăn khi phải vượt qu&atilde;ng đường hơn 15km để lấy nước mỗi ng&agrave;y.</p>\r\n\r\n<p>Từ kh&oacute; khăn đ&oacute;, những người sinh sống ở Coober Pedy đ&atilde; đưa ra giải ph&aacute;p v&ocirc; c&ugrave;ng độc đ&aacute;o: nếu mặt đất qu&aacute; n&oacute;ng v&agrave; kh&ocirc;ng thể ở được, vậy th&igrave; h&atilde;y ở trong l&ograve;ng đất.&nbsp;V&agrave; thật bất ngờ, giải ph&aacute;p n&agrave;y c&oacute; hiệu quả v&agrave; gi&uacute;p được phần lớn cư d&acirc;n Coober Pedy trốn tho&aacute;t khỏi c&aacute;i n&oacute;ng.</p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27161737/1658738576549702585859-1658913456-4.jpg\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27161737/1658738576549702585859-1658913456-4.jpg\" style=\"height:525px; width:700px\" /></a></p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27161731/16587385787551794228185-1658913451-77.jpg\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27161731/16587385787551794228185-1658913451-77.jpg\" style=\"height:525px; width:700px\" /></a></p>\r\n\r\n<p>Sau 100 năm, người d&acirc;n đ&atilde; x&acirc;y dựng n&ecirc;n cả một thị trấn ngầm dưới l&ograve;ng đất</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Thật vậy, d&ugrave; b&ecirc;n ngo&agrave;i trời l&ecirc;n đến hơn 50 độ C th&igrave; trong l&ograve;ng đất lu&ocirc;n duy tr&igrave; ở mức 20 &ndash; 24 độ. Kh&aacute;m ph&aacute; ra nơi tr&uacute; ngụ m&aacute;t mẻ đ&atilde; gi&uacute;p người d&acirc;n Coober Pedy kh&ocirc;ng c&ograve;n g&igrave; để ph&agrave;n n&agrave;n nữa khi sống ở đ&acirc;y. Dần dần, họ ph&aacute;t triển được cả một hệ thống nh&agrave; ở, một Coober Pedy thứ 2 dưới l&ograve;ng đất.</p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27161725/16587385788831398188989-1658913444-21.jpg\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27161725/16587385788831398188989-1658913444-21.jpg\" style=\"height:525px; width:700px\" /></a></p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27161719/16587385787682098040958-1658913439-76.jpg\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27161719/16587385787682098040958-1658913439-76.jpg\" style=\"height:525px; width:700px\" /></a></p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27161714/1658738576640440191886-1658913434-76.jpg\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27161714/1658738576640440191886-1658913434-76.jpg\" style=\"height:525px; width:700px\" /></a></p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27161708/1658742306219665319918-1658913427-29.jpg\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27161708/1658742306219665319918-1658913427-29.jpg\" style=\"height:525px; width:700px\" /></a></p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27161703/16587385793761866756114-1658913423-74.jpg\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27161703/16587385793761866756114-1658913423-74.jpg\" style=\"height:525px; width:700px\" /></a></p>\r\n\r\n<p>Những căn nh&agrave; dưới l&ograve;ng đất Coober Pedy được x&acirc;y dựng ki&ecirc;n cố, nối nhau qua c&aacute;c c&aacute;nh cửa như m&ecirc; cung</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tất cả c&aacute;c ng&ocirc;i nh&agrave; dưới l&ograve;ng đất đều được trang bị đầy đủ tiện nghi từ ph&ograve;ng ngủ, ph&ograve;ng kh&aacute;ch, wc. C&aacute;c c&ocirc;ng tr&igrave;nh dịch vụ kh&aacute;c như bar, tiệm s&aacute;ch, qu&aacute;n ăn,.. cũng được x&acirc;y dựng để phục vụ người d&acirc;n. L&acirc;u dần, cả một thị trấn dưới l&ograve;ng đất đ&atilde; được h&igrave;nh th&agrave;nh v&agrave; thậm ch&iacute; c&ograve;n sầm uất hơn cả Coober Pedy tr&ecirc;n mặt đất.</p>\r\n\r\n<p>Tham quan c&aacute;c ng&ocirc;i nh&agrave; dưới l&ograve;ng đất ở Coober Pedy, c&aacute;c du kh&aacute;ch sẽ thấy ch&uacute;ng chẳng thiếu g&igrave; cả so với những ng&ocirc;i nh&agrave; tr&ecirc;n mặt đất, ho&agrave;n to&agrave;n tr&aacute;i ngược với suy nghĩ của nhiều người khi lần đầu nghe về việc sống dưới l&ograve;ng đất. Hệ thống điện, internet, đường ống nước,&hellip; đều được bố tr&iacute; đầy đủ. Điều duy nhất kh&aacute;c biệt l&agrave; &ldquo;tường nh&agrave;&rdquo; ở đ&acirc;y l&agrave; những v&aacute;ch đất đ&aacute; v&agrave;&hellip;ho&agrave;n to&agrave;n kh&ocirc;ng c&oacute; cửa sổ, đồng nghĩa với việc sẽ kh&ocirc;ng c&oacute; &aacute;nh nắng mặt trời.</p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27161657/1658742218676251442296-1658913416-79.jpg\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27161657/1658742218676251442296-1658913416-79.jpg\" style=\"height:525px; width:700px\" /></a></p>\r\n\r\n<p>Một nh&agrave; thờ ở Coober Pedy nằm s&acirc;u 17 m&eacute;t dưới l&ograve;ng đất</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sự độc đ&aacute;o của &ldquo;hang động Coober Pedy&rdquo; đ&atilde; thu h&uacute;t kh&ocirc;ng &iacute;t kh&aacute;ch du lịch t&ograve; m&ograve; đến đ&acirc;y. Nhờ thế, người d&acirc;n Coober Pedy t&igrave;m ra được một hướng đi mới để kiếm tiền. Họ thu v&eacute; v&agrave;o cửa tham quan, x&acirc;y dựng những kh&aacute;ch sạn, nh&agrave; nghỉ, dịch vụ vui chơi ăn uống ngay dưới l&ograve;ng đất để du kh&aacute;ch trải nghiệm.</p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27161652/1658738575696415717571-1658913411-79.jpg\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27161652/1658738575696415717571-1658913411-79.jpg\" style=\"height:525px; width:700px\" /></a></p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27161646/876b558ee4ca326f757c64d25469e0de-16587439028821896757642-1658913406-7.jpg\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27161646/876b558ee4ca326f757c64d25469e0de-16587439028821896757642-1658913406-7.jpg\" style=\"height:683px; width:1024px\" /></a></p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27161637/spacious-guest-room-16587439028831657251726-1658913396-58.jpg\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27161637/spacious-guest-room-16587439028831657251726-1658913396-58.jpg\" style=\"height:367px; width:550px\" /></a></p>\r\n\r\n<p>ph&ograve;ng ngủ phong c&aacute;ch tối giản</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27161629/3600510-16587439028831881398512-1658913389-26.jpg\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27161629/3600510-16587439028831881398512-1658913389-26.jpg\" style=\"height:749px; width:999px\" /></a></p>\r\n\r\n<p>Một nh&agrave; h&agrave;ng dưới l&ograve;ng đất</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27161621/16587385791461833047175-1658913381-9.jpg\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27161621/16587385791461833047175-1658913381-9.jpg\" style=\"height:525px; width:700px\" /></a></p>\r\n\r\n<p>Kh&aacute;ch sạn ho&agrave;nh tr&aacute;ng, đầy đủ tiện nghi được x&acirc;y dưới l&ograve;ng đất cho kh&aacute;ch du lịch trải nghiệm cuộc sống kh&aacute;c lạ</p>\r\n\r\n<p>Nếu ưa th&iacute;ch loại h&igrave;nh du lịch độc đ&aacute;o n&agrave;y, du kh&aacute;ch c&oacute; thể gh&eacute; qua kh&aacute;ch sạn t&ecirc;n Desert Cave với đầy đủ tiện nghi kh&ocirc;ng k&eacute;m c&aacute;c kh&aacute;ch sạn 5 sao tr&ecirc;n mặt đất.</p>', 15, 1, 15, 'images/0KOXUvw2xTxR9Gx52k2ltEN0PuvCXA1OIbcNqJDa.jpg', 'thi-tran-dac-biet-noi-80-nguoi-dan-song-duoi-long-dat-nhung-rat-hien-dai-va-thu-hut-khach-du-lich', '2022-07-28 05:46:23', '2022-08-08 01:34:05');
INSERT INTO `posts` (`id`, `title`, `short_description`, `content`, `views`, `hot_post`, `category_id`, `image`, `slug`, `created_at`, `updated_at`) VALUES
(18, '‘Đoàn Dự’ của Thiên Long Bát Bộ mất trí nhớ sau tai nạn kinh hoàng, dự kiến phải mất nhiều năm để hồi phục sức khoẻ', 'Những ngày qua, người hâm mộ không khỏi lo lắng khi biết Lâm Chí Dĩnh cùng con trai gặp tai nạn bốc cháy xe rất thảm khốc và đã được đưa bệnh viện ngay sau đó.', '<p>Ng&agrave;y 22/7 khi L&acirc;m Ch&iacute; Dĩnh c&ugrave;ng con trai đang tr&ecirc;n chiếc xe Tesla tới một giải đua xe go-kart đ&atilde; gặp phải tai nạn v&ocirc; c&ugrave;ng nghi&ecirc;m trọng,chiếc xe bốc ch&aacute;y rất lớn. Ngay khi đ&oacute;, người d&acirc;n xung quanh đ&atilde; cố gắng gi&uacute;p anh v&agrave; con trai đưa ra khỏi xe nhưng anh đ&atilde; bị thương rất nặng v&agrave; được đưa v&agrave;o bệnh viện điều trị. Nam diễn vi&ecirc;n h&ocirc;n m&ecirc; tới 3 ng&agrave;y mới tinh lại với t&igrave;nh trạng trấn thương sọ n&atilde;o, g&atilde;y xương bả vai v&agrave; dập xương mặt.</p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27151728/lam-chi-dinh-1658909846-20.png\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27151728/lam-chi-dinh-1658909846-20.png\" style=\"height:716px; width:640px\" /></a></p>\r\n\r\n<p>Hiện trường vụ tai nạn thảm khốc xảy ra với L&acirc;m Ch&iacute; Dĩnh v&agrave; con trai</p>\r\n\r\n<p>Sina đ&atilde; đưa tin, sau khi tỉnh lại L&acirc;m Ch&iacute; Dĩnh được chẩn đo&aacute;n l&agrave; mất tr&iacute; nhớ tạm thời. Anh đ&atilde; tỉnh t&aacute;o v&agrave; c&oacute; thể tr&ograve; chuyện c&ugrave;ng mọi người nhưng kh&ocirc;ng nhớ được g&igrave; về vụ tai nạn n&ecirc;n hiện vẫn chưa c&oacute; th&ocirc;ng tin để t&igrave;m ra nguy&ecirc;n nh&acirc;n. T&agrave;i từ Thi&ecirc;n Long B&aacute;t Bộ cũng mong kh&aacute;n giả th&ocirc;ng cảm cho m&igrave;nh v&agrave; sẽ trả lời về vụ việc khi sức khoẻ tốt v&agrave; ổn định hơn. Đ&aacute;ng ch&uacute; &yacute; l&agrave; con trai L&acirc;m Ch&iacute; Dĩnh được b&aacute;o Đ&agrave;i Loan đưa tin l&agrave; chỉ bị thương nhẹ, hiện đ&atilde; được gia đ&igrave;nh đưa về nh&agrave; nghỉ ngơi v&agrave; hồi phục sức khoẻ cũng như t&acirc;m l&yacute;.</p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27152034/lsm-chi-dinh-1658910033-44.png\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27152034/lsm-chi-dinh-1658910033-44.png\" style=\"height:404px; width:658px\" /></a></p>\r\n\r\n<p>Do bị thương kh&aacute; nặng n&ecirc;n L&acirc;m Ch&iacute; Dĩnh phải trải qua nhiều cuộc phẫu thuật để lấy lại sức khoẻ. Ng&agrave;y 26/7 anh đ&atilde; c&oacute; cuộc phẫu thuật đầu ti&ecirc;n để gh&eacute;p xương bả vai, ca phẫu thuật k&eacute;o d&agrave;i gần 5 tiếng. Được biết ca mổ diễn ra rất su&ocirc;n sẻ v&agrave; nam diễn vi&ecirc;n c&oacute; thể hoạt động tay b&igrave;nh thường trong v&ograve;ng 6 th&aacute;ng : &ldquo;Ca m&ocirc;̉ di&ecirc;̃n ra r&acirc;́t su&ocirc;n sẻ, mặc d&ugrave; ph&acirc;̀n ph&iacute;a trước tay bị d&acirc;̣p m&ocirc;̣t ch&uacute;t nhưng kh&acirc;u đặt lại xương rất thu&acirc;̣n lợi.&rdquo; Sau đ&oacute;, anh tiếp tục phải phẫu thuật xương mặt do bị va đập trong vụ tai nạn. C&oacute; thể diễn vi&ecirc;n &ldquo;Sợi d&acirc;y chuyền định mệnh&rdquo; sẽ mất tới 1-2 năm để phục hồi ho&agrave;n to&agrave;n. Mong rằng sức khoẻ của nam diễn vi&ecirc;n sẽ c&oacute; những chuyển biến tốt.</p>\r\n\r\n<ul>\r\n</ul>', 47, 1, 15, 'images/6cJ4y4P8YcP2lSc99skXNShNF1DWycLswaa0puqG.png', 'doan-du-cua-thien-long-bat-bo-mat-tri-nho-sau-tai-nan-kinh-hoang-du-kien-phai-mat-nhieu-nam-de-hoi-phuc-suc-khoe', '2022-07-28 05:48:03', '2022-08-06 06:14:59'),
(19, 'Sân bay nhàn nhất Trung Quốc: Cả ngày bay đúng 1 chuyến, nơi ngắm bình minh tuyệt đẹp', 'Sân bay này chỉ phục vụ duy nhất một chuyến bay trong ngày, mỗi buổi chiều lại là nơi ngắm hoàng hôn tuyệt đẹp ở Trung Quốc.', '<p>Nhắc đến s&acirc;n bay, ai cũng nghĩ ngay đến kh&ocirc;ng gian rộng lớn với lượng người xếp h&agrave;ng, di chuyển đ&ocirc;ng nghịt. Mỗi ng&agrave;y, những s&acirc;n bay th&ocirc;ng thường lu&ocirc;n đ&oacute;n ch&agrave;o một lượng kh&aacute;ch khổng lồ, những chiếc m&aacute;y bay th&igrave; cất c&aacute;nh, hạ c&aacute;nh nhộn nhịp ngo&agrave;i đường băng.</p>\r\n\r\n<p>Ch&iacute;nh v&igrave; thế, kh&ocirc;ng &iacute;t người cảm thất mệt mỏi v&agrave; ng&aacute;n ngẩm trước cảnh ngồi chờ h&agrave;ng tiếng đồng hồ v&igrave; m&aacute;y bay delay, trong ph&ograve;ng chời chật chội v&agrave; n&oacute;ng bức. Tuy nhi&ecirc;n, c&oacute; một s&acirc;n bay độc đ&aacute;o ở Trung Quốc, nơi tr&aacute;i ngược với mọi s&acirc;n bay th&ocirc;ng thường m&agrave; bạn c&oacute; thể nghĩ tới.</p>\r\n\r\n<p>Được mệnh danh l&agrave; &ldquo;s&acirc;n bay nh&agrave;n hạ nhất Trung Quốc&rdquo;, s&acirc;n bay Đ&ocirc;ng Cực, tọa lạc ở th&agrave;nh phố Phủ Viễn (Hắc Long Giang, Trung Quốc) ch&iacute;nh l&agrave; địa điểm độc đ&aacute;o đ&oacute;.</p>\r\n\r\n<p><strong>Cả ng&agrave;y phục vụ đ&uacute;ng 1 chiếc m&aacute;y bay</strong></p>\r\n\r\n<p>Ch&iacute;nh thức mở cửa v&agrave; đ&oacute;n những vị kh&aacute;ch đầu ti&ecirc;n v&agrave;o 26/5/2014, s&acirc;n bay Đ&ocirc;ng Cực ch&iacute;nh l&agrave; s&acirc;n bay đầu ti&ecirc;n của Phủ Viễn.</p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27120216/photo-1-16588140960391643408940-1658898136-78.jpeg\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27120216/photo-1-16588140960391643408940-1658898136-78.jpeg\" style=\"height:401px; width:650px\" /></a></p>\r\n\r\n<p>T&ecirc;n gọi &ldquo;s&acirc;n bay nh&agrave;n hạ nhất&rdquo; bắt nguồn từ việc s&acirc;n bay n&agrave;y cả ng&agrave;y chỉ phục vụ đ&uacute;ng 1 chiếc m&aacute;y bay, v&agrave; cũng chỉ c&oacute; 2 tuyến bay duy nhất được thực hiện bởi n&oacute;:</p>\r\n\r\n<p>Tuyến: Phủ Viễn &ndash; C&aacute;p Nhĩ T&acirc;n &ndash; Thượng Hải v&agrave;o thứ 2, 4, 5 v&agrave; chủ nhật, tức 4 chuyến một tuần</p>\r\n\r\n<p>Tuyến: Phủ Viễn &ndash; C&aacute;p Nhĩ T&acirc;n &ndash; Bắc Kinh v&agrave;o thứ 3, 5, 7</p>\r\n\r\n<p>D&ugrave; được trang bị đến 4 đường băng nhưng cả ng&agrave;y s&acirc;n bay chỉ c&oacute; đ&uacute;ng 1 chiếc m&aacute;y bay hoạt động, vậy n&ecirc;n người ta mới gọi n&oacute; bằng c&aacute;i t&ecirc;n &ldquo;nh&agrave;n hạ&rdquo; l&agrave; như vậy.</p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27120211/photo-2-16588140960891920782336-1658898131-22.jpeg\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27120211/photo-2-16588140960891920782336-1658898131-22.jpeg\" style=\"height:427px; width:641px\" /></a></p>\r\n\r\n<p>Chưa hết, kh&ocirc;ng chỉ c&oacute; &ldquo;s&acirc;n bay nh&agrave;n hạ nhất&rdquo; m&agrave; c&aacute;c nh&acirc;n vi&ecirc;n s&acirc;n bay cũng &ldquo;nh&agrave;n hạ&rdquo; nhất lu&ocirc;n. Do cả ng&agrave;y chỉ c&oacute; 1 chiếc m&aacute;y bay n&ecirc;n c&ocirc;ng việc của họ phải n&oacute;i l&agrave; v&ocirc; c&ugrave;ng đơn giản: m&aacute;y bay hạ c&aacute;nh, đ&oacute;n kh&aacute;ch, bảo tr&igrave;, vệ sinh m&aacute;y bay, kh&aacute;ch l&ecirc;n,.. hết. Khi chuyến bay cất c&aacute;nh cũng l&agrave; l&uacute;c c&aacute;c nh&acirc;n vi&ecirc;n ở s&acirc;n bay ho&agrave;n th&agrave;nh xong c&ocirc;ng việc của m&igrave;nh.</p>\r\n\r\n<p>Thậm ch&iacute;, nếu kh&ocirc;ng ở trong thời gian cao điểm như m&ugrave;a du lịch hay lễ hội g&igrave; đ&oacute;, những nh&acirc;n vi&ecirc;n ở s&acirc;n bay c&oacute; thể n&oacute;i l&agrave; &ldquo;chơi cả ng&agrave;y&rdquo;.</p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27120203/photo-3-16588140971132036428746-1658898123-44.jpeg\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27120203/photo-3-16588140971132036428746-1658898123-44.jpeg\" style=\"height:384px; width:650px\" /></a></p>\r\n\r\n<p>Thế nhưng chớ c&oacute; xem thường cơ sở vật chất của s&acirc;n bay n&agrave;y chỉ v&igrave; lượng kh&aacute;ch khi&ecirc;m tốn. S&acirc;n bay được trang bị ph&ograve;ng chờ VIP, ph&ograve;ng ăn lớn, nh&agrave; vệ sinh, quầy lễ t&acirc;n, c&aacute;c dịch vụ thiết yếu,&hellip; được trang bị rất chuy&ecirc;n nghiệp v&agrave; đầy đủ. Thậm ch&iacute; s&acirc;n bay c&ograve;n c&oacute; hẳn một ph&ograve;ng chờ d&agrave;nh ri&ecirc;ng cho c&aacute;c b&agrave; mẹ c&oacute; con nhỏ hoặc trẻ sơ sinh.</p>\r\n\r\n<p><strong>Địa điểm ngắm b&igrave;nh minh tuyệt vời&nbsp;</strong></p>\r\n\r\n<p>Tọa lạc ở cực Đ&ocirc;ng Trung Quốc, th&agrave;nh phố Phủ Viễn đang đẩy mạnh c&ocirc;ng t&aacute;c tổ chức du lịch để khai th&aacute;c hết tiềm năng địa l&yacute; nơi đ&acirc;y.</p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27120022/photo-8-16588140966111902531135-1658898021-90.jpg\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27120022/photo-8-16588140966111902531135-1658898021-90.jpg\" style=\"height:960px; width:1440px\" /></a></p>\r\n\r\n<p>Tuy nhi&ecirc;n, c&aacute;c chuyến bay đến đ&acirc;y kh&aacute; &iacute;t, k&eacute;o theo đ&oacute; l&agrave; nhiều kh&oacute; khăn trong việc ph&aacute;t triển du lịch. Đi k&egrave;m với đ&oacute; l&agrave; cảnh đẹp Phủ Viễn vẫn c&ograve;n kh&aacute; th&ocirc; sơ, giao th&ocirc;ng đi lại gặp nhiều kh&oacute; khăn,&hellip; Ch&iacute;nh v&igrave; vậy m&agrave; chi ph&iacute; du lịch ở đ&acirc;y rất rẻ.</p>\r\n\r\n<p>Nh&igrave;n theo hướng kh&aacute;c, chi ph&iacute; du lịch, gi&aacute; m&aacute;y bay rẻ, quang cảnh th&ocirc; sơ,&hellip; l&agrave; những điều kiện l&yacute; tưởng để những ai ưa kh&aacute;m ph&aacute; t&igrave;m đến.</p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27115940/photo-9-1658814097155911309434-1658897980-10.jpg\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27115940/photo-9-1658814097155911309434-1658897980-10.jpg\" style=\"height:480px; width:720px\" /></a></p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27115932/photo-11-16588140970351987501581-1658897972-52.jpeg\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27115932/photo-11-16588140970351987501581-1658897972-52.jpeg\" style=\"height:408px; width:720px\" /></a></p>\r\n\r\n<p>C&oacute; thể n&oacute;i Phủ Viễn l&agrave; th&agrave;nh phố đ&oacute;n mặt trời đầu ti&ecirc;n của Trung Quốc. M&ugrave;a h&egrave;, b&igrave;nh minh của th&agrave;nh phố đến từ l&uacute;c 2h s&aacute;ng, kh&ocirc;ng kh&iacute; trong l&agrave;nh, nắng nhẹ k&egrave;m theo gi&oacute; m&aacute;t, đứng ngắm b&igrave;nh minh từ xa quả l&agrave; một trải nghiệm tuyệt vời cho du kh&aacute;ch.</p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27115822/photo-14-16588140970861539814213-1658897902-77.jpg\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27115822/photo-14-16588140970861539814213-1658897902-77.jpg\" style=\"height:432px; width:650px\" /></a></p>\r\n\r\n<p>Du lịch Phủ Viễn kh&ocirc;ng thể bỏ qua Trấn &Ocirc; T&ocirc;. Nơi đ&acirc;y c&oacute; đủ c&aacute;c thể loại kh&aacute;m ph&aacute; thi&ecirc;n nhi&ecirc;n như leo n&uacute;i, ngắm b&igrave;nh minh v&agrave;o buổi s&aacute;ng hay thưởng thức tuyết rơi trắng x&oacute;a v&agrave;o m&ugrave;a lạnh.</p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27115738/photo-16-1658814097695711968836-1658897858-84.jpeg\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/07/27115738/photo-16-1658814097695711968836-1658897858-84.jpeg\" style=\"height:428px; width:640px\" /></a></p>\r\n\r\n<p>Khung cảnh b&igrave;nh minh lấp l&oacute; tr&ecirc;n s&ocirc;ng c&oacute; thể n&oacute;i l&agrave; đặc sản của Trấn &Ocirc; T&ocirc;. Trời đất, s&ocirc;ng n&uacute;i đều nhuộm m&agrave;u v&agrave;ng đậm v&agrave; hơi một ch&uacute;t sắc đỏ của nắng thật khiến du kh&aacute;ch phải ấn tượng biết bao.</p>\r\n\r\n<ul>\r\n</ul>', 0, 1, 15, 'images/FpwdNaiRmvWbLJN5sHwabb61eJS7BGj6UL8p95oj.jpg', 'san-bay-nhan-nhat-trung-quoc-ca-ngay-bay-dung-1-chuyen-noi-ngam-binh-minh-tuyet-dep', '2022-06-28 05:49:30', '2022-07-28 05:49:30'),
(20, 'Có phải trẻ em chơi game nhiều sẽ trở nên thông minh hơn?', 'Có rất nhiều tranh cãi về việc liệu chơi game nhiều có khiến những đứa trẻ trở nên thông minh và nhạy bén hơn. Một số người thì cho rằng là có, nhưng số còn lại thì luôn phản đối gay gắt vì có ác cảm về các thể loại game nói chung', '<h2>C&oacute; rất nhiều tranh c&atilde;i về việc liệu chơi game nhiều c&oacute; khiến những đứa trẻ trở n&ecirc;n th&ocirc;ng minh v&agrave; nhạy b&eacute;n hơn. Một số người th&igrave; cho rằng l&agrave; c&oacute;, nhưng số c&ograve;n lại th&igrave; lu&ocirc;n phản đối gay gắt v&igrave; c&oacute; &aacute;c cảm về c&aacute;c thể loại game n&oacute;i chung.</h2>\r\n\r\n<p>C&oacute; rất nhiều tranh c&atilde;i về việc liệu chơi game nhiều c&oacute; khiến những đứa trẻ trở n&ecirc;n th&ocirc;ng minh v&agrave; nhạy b&eacute;n hơn. Một số người th&igrave; cho rằng l&agrave; c&oacute;, nhưng số c&ograve;n lại th&igrave; lu&ocirc;n phản đối gay gắt v&igrave; c&oacute; &aacute;c cảm về c&aacute;c thể loại game n&oacute;i chung. Vậy &yacute; kiến n&agrave;o l&agrave; đ&uacute;ng, &yacute; kiến n&agrave;o l&agrave; sai?</p>\r\n\r\n<p><a href=\"https://genknews.genkcdn.vn/2019/4/14/photo-1-15551809879731342149966.jpg\" target=\"_blank\"><img alt=\"Có phải trẻ em chơi game nhiều sẽ trở nên thông minh hơn? - Ảnh 1.\" src=\"https://genknews.genkcdn.vn/2019/4/14/photo-1-15551809879731342149966.jpg\" /></a></p>\r\n\r\n<p>Trước hết, ch&uacute;ng ta phải x&eacute;t đến định nghĩa của th&ocirc;ng minh l&agrave; g&igrave;. Th&ocirc;ng minh c&oacute; nghĩa l&agrave; sở hữu một khả năng ph&aacute;n đo&aacute;n nhạy b&eacute;n, ph&acirc;n t&iacute;ch được t&igrave;nh huống v&agrave; giải quyết ch&uacute;ng, IQ cao,&hellip; Một đứa trẻ th&ocirc;ng minh lu&ocirc;n hiểu được những g&igrave; m&igrave;nh đang l&agrave;m, s&aacute;ng dạ, lu&ocirc;n t&igrave;m hiểu mọi thứ xung quanh ch&uacute;ng.</p>\r\n\r\n<p><a href=\"https://genknews.genkcdn.vn/2019/4/14/photo-1-15551809906841705462233.jpg\" target=\"_blank\"><img alt=\"Có phải trẻ em chơi game nhiều sẽ trở nên thông minh hơn? - Ảnh 2.\" src=\"https://genknews.genkcdn.vn/2019/4/14/photo-1-15551809906841705462233.jpg\" /></a></p>\r\n\r\n<p>Thị trường game xưa nay rất đa dạng. Ch&uacute;ng ta c&oacute; &lsquo;Where in the World is Carmen Sandiego?&rsquo; được l&agrave;m ra để cung cấp kiến thức về địa l&yacute; v&agrave; lịch sử; &ldquo;Deceit&rdquo; dạy cho ch&uacute;ng ta c&aacute;ch nhận biết được những dấu hiệu của sự giả dối, ph&acirc;n biệt đ&uacute;ng sai. Đối với trẻ em, những tựa game nhập vai c&oacute; thể gi&uacute;p &iacute;ch rất nhiều cho việc r&egrave;n luyện kỹ năng đọc, nghe ngoại ngữ. Những tựa game FPS th&igrave; gi&uacute;p ch&uacute;ng r&egrave;n luyện khả năng phản ứng t&igrave;nh huống nhạy b&eacute;n, dạy ch&uacute;ng c&aacute;ch phối hợp nhịp nh&agrave;ng giữa thị gi&aacute;c v&agrave; x&uacute;c gi&aacute;c để c&oacute; thể xử l&yacute; mọi chướng ngại.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, phải chắc chắn rằng game của bọn trẻ chơi phải l&agrave; những tựa game ph&ugrave; hợp độ tuổi. Hiện nay, ch&uacute;ng ta c&oacute; thể dễ d&agrave;ng thấy c&oacute; rất nhiều tựa game g&aacute;n m&aacute;c giới hạn độ tuổi. Từ đ&oacute;, c&aacute;c bậc phụ huynh c&oacute; thể kiểm so&aacute;t được những thứ m&agrave; con em m&igrave;nh n&ecirc;n v&agrave; kh&ocirc;ng n&ecirc;n chơi. Th&ecirc;m v&agrave;o đ&oacute;, việc chơi game phải được điều độ đ&uacute;ng c&aacute;ch. Ch&uacute;ng ta kh&ocirc;ng ai xa lạ g&igrave; về những th&ocirc;ng tin về c&aacute;c tệ nạn xuất ph&aacute;t từ việc nghiện game đ&atilde; xuất hiện nhan nhản hằng ng&agrave;y tr&ecirc;n c&aacute;c mặt b&aacute;o cũng như c&aacute;c phương tiện truyền th&ocirc;ng kh&aacute;c. Do đ&oacute;, c&aacute;i g&igrave; cũng phải c&oacute; giới hạn của n&oacute;, việc chơi game cũng kh&ocirc;ng ngoại lệ.</p>\r\n\r\n<p>Việc chơi game c&oacute; khiến trẻ em th&ocirc;ng minh hơn hay kh&ocirc;ng phụ thuộc v&agrave;o rất nhiều yếu tố. Ch&uacute;ng ta kh&ocirc;ng thể nhận x&eacute;t n&oacute; khi đứng nghi&ecirc;ng về bất cứ kh&iacute;a cạnh n&agrave;o. Trẻ em c&oacute; thể trở n&ecirc;n th&ocirc;ng minh hơn khi ch&uacute;ng biết tho&aacute;t khỏi những khu&ocirc;n khổ của tr&ograve; chơi. Ch&uacute;ng c&oacute; thể t&igrave;m hiểu cốt truyện v&agrave; vai tr&ograve; của ch&iacute;nh m&igrave;nh trong game để c&oacute; thể học hỏi được những th&ocirc;ng điệp m&agrave; nh&agrave; l&agrave;m game truyền tải, từ đ&oacute; ph&aacute;t triển khả năng của m&igrave;nh. Chỉ cần đừng qu&aacute; lạm dụng th&igrave; game sẽ l&agrave; một c&ocirc;ng cụ gi&aacute;o dục tốt cho phụ huynh.</p>', 1, 1, 14, 'images/U2hJXG6PNxA4O767xebGbsT8E0osRjCsczPk654r.jpg', 'co-phai-tre-em-choi-game-nhieu-se-tro-nen-thong-minh-hon', '2022-06-29 05:06:43', '2022-08-08 01:36:37'),
(21, 'One Piece: Luffy đã trả lại mũ cho Shanks được chưa?', 'Luffy dường như xứng đáng được gọi là một hải tặc vĩ đại trong One Piece, vậy cậu đã có thể trả lại mũ cho Shanks Tóc Đỏ được chưa?', '<p>Trong chap 1, Shanks y&ecirc;u cầu Luffy thực hiện lời hứa với m&igrave;nh, rằng một ng&agrave;y n&agrave;o đ&oacute; cậu sẽ trả lại chiếc mũ rơm cho Shanks, sau khi Luffy trở th&agrave;nh một hải tặc vĩ đại. Vậy b&acirc;y giờ cậu đ&atilde; đủ điều kiện để trả mũ cho Shanks T&oacute;c Đỏ hay chưa?</p>\r\n\r\n<p><strong>1. C&acirc;u n&oacute;i của Shanks trong chap 1</strong></p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/08/03184429/One-Piece-game4v-1659527069-73.jpg\"><img alt=\"Mũ Luffy\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/08/03184429/One-Piece-game4v-1659527069-73.jpg\" style=\"height:1200px; width:715px\" /></a></p>\r\n\r\n<p>L&uacute;c n&agrave;y ở One Piece chap 1, Luffy cho rằng một ng&agrave;y n&agrave;o đ&oacute; cậu sẽ c&oacute; một con thuyền v&agrave; những đồng đội c&ograve;n tuyệt vời hơn đồng đội của Shanks, sẽ t&igrave;m ra kho b&aacute;u lớn nhất thế giới, cũng khẳng định m&igrave;nh sẽ trở th&agrave;nh Vua Hải Tặc</p>\r\n\r\n<p>Trong One Piece chap 1, Shanks đ&atilde; chế nhạo Luffy bằng c&aacute;ch n&oacute;i cậu sẽ kh&ocirc;ng thể n&agrave;o th&agrave;nh hải tặc. Luffy th&igrave; vẫn cho rằng m&igrave;nh l&agrave;m được. Một ng&agrave;y n&agrave;o đ&oacute; cậu sẽ c&oacute; một con thuyền v&agrave; những đồng đội c&ograve;n tuyệt vời hơn đồng đội của Shanks, sẽ t&igrave;m ra kho b&aacute;u lớn nhất thế giới.</p>\r\n\r\n<p>Luffy cũng khẳng định m&igrave;nh sẽ trở th&agrave;nh Vua Hải Tặc. Shanks sau đ&oacute; giao chiếc mũ rơm của m&igrave;nh cho cậu. Anh y&ecirc;u cầu Luffy trả lại n&oacute; v&agrave;o một ng&agrave;y n&agrave;o đ&oacute;, khi cậu đ&atilde; l&agrave; một hải tặc vĩ đại.</p>\r\n\r\n<p>Những lời n&oacute;i của Shanks chỉ ra rằng anh sẽ kh&ocirc;ng lấy lại chiếc mũ của m&igrave;nh một c&aacute;ch đơn giản, m&agrave; Luffy c&ograve;n phải trở th&agrave;nh một hải tặc vĩ đại th&igrave; Shanks mới chấp nhận.</p>\r\n\r\n<p><strong>2. C&ograve;n b&acirc;y giờ th&igrave; sao?</strong></p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/08/03184459/One-Piece-game4v-1659527098-9.jpeg\"><img alt=\"One Piece \" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/08/03184459/One-Piece-game4v-1659527098-9.jpeg\" style=\"height:941px; width:1280px\" /></a></p>\r\n\r\n<p>Chiến thắng của nh&acirc;n vật Luffy trước Tứ Ho&agrave;ng Kaido c&oacute; lẽ đ&atilde; khiến cậu xứng đ&aacute;ng được gọi l&agrave; hải tặc vĩ đại trong bộ truyện One Piece rồi, ngay cả trong mắt Shanks T&oacute;c Đỏ, nhưng nếu m&agrave; cả điều đ&oacute; đối với anh vẫn chưa đủ th&igrave; sao?</p>\r\n\r\n<p>Luffy được tuy&ecirc;n bố l&agrave; người chiến thắng trong cuộc chiến giữa cậu v&agrave; Tứ Ho&agrave;ng Kaido. Hiện tại, Gear 5 của Luffy l&agrave;m t&ocirc;i c&oacute; cảm gi&aacute;c như thể cậu c&oacute; thể đối đầu với những nh&acirc;n vật mạnh mẽ kh&aacute;c của One Piece. Mặc d&ugrave; vẫn c&ograve;n một số kẻ c&oacute; vẻ g&acirc;y được rắc rối cho Luffy, v&iacute; dụ như Akainu với dung nham, hay R&acirc;u Đen với khả năng đ&aacute;ng sợ đến từ tr&aacute;i &aacute;c quỷ Yami Yami no Mi.</p>\r\n\r\n<p>Nhưng đ&uacute;ng l&agrave; b&acirc;y giờ Luffy đ&atilde; thực sự trở th&agrave;nh một hải tặc vĩ đại m&agrave; Shanks mong đợi. Cậu cũng nằm trong số những nh&acirc;n vật mạnh mẽ nhất của One Piece.</p>\r\n\r\n<p>Đ&aacute;ng ch&uacute; &yacute; l&agrave; trong chap 903, Shanks đ&atilde; n&oacute;i rằng anh v&agrave; Luffy sẽ sớm gặp lại nhau. V&igrave; vậy, Luffy, người v&agrave;o thời điểm đ&oacute; c&oacute; tiền thưởng truy n&atilde; chỉ mới tăng l&ecirc;n 1,5 tỷ Beri, đ&atilde; thu h&uacute;t sự ch&uacute; &yacute; của Shanks rồi.</p>\r\n\r\n<p><strong>3. Nhưng ti&ecirc;u ch&iacute; để trở th&agrave;nh một hải tặc vĩ đại m&agrave; Shanks T&oacute;c Đỏ mong đợi ở Luffy l&agrave; g&igrave;?</strong></p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/08/03184415/game4v-One-Piece-1659527054-86.jpg\"><img alt=\"Mũ Luffy\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/08/03184415/game4v-One-Piece-1659527054-86.jpg\" style=\"height:720px; width:1280px\" /></a></p>\r\n\r\n<p>Thấy băng hải tặc Mũ Rơm của Luffy mạnh mẽ như thế n&agrave;y b&acirc;y giờ, t&ocirc;i cảm thấy như họ thực sự c&oacute; thể đọ sức với băng T&oacute;c Đỏ trong One Piece, c&ograve;n Thousand Sunny cũng đối đầu được với Red Force, con t&agrave;u của băng của Shanks</p>\r\n\r\n<p>Một hải tặc vĩ đại nghe c&oacute; vẻ rất b&igrave;nh thường. V&igrave; t&ecirc;n cướp biển vĩ đại ở East Blue c&oacute; thể chẳng l&agrave; g&igrave; trong mắt một Tứ Ho&agrave;ng như Shanks.</p>\r\n\r\n<p>Do anh l&agrave; một Yonko, v&agrave; chiến thắng của Luffy trước Kaido c&oacute; lẽ đ&atilde; khiến cậu xứng đ&aacute;ng được gọi l&agrave; hải tặc vĩ đại, ngay cả trong mắt Shanks. Nhưng nếu điều đ&oacute; vẫn chưa đủ th&igrave; sao? Mọi người h&atilde;y c&ugrave;ng xem lại những g&igrave; Luffy đ&atilde; n&oacute;i với anh trong One Piece chap 1. Rằng ng&agrave;y n&agrave;o đ&oacute; cậu sẽ c&oacute; một con thuyền v&agrave; những đồng đội c&ograve;n tuyệt vời hơn đồng đội của Shanks, sẽ t&igrave;m ra kho b&aacute;u lớn nhất thế giới, v&agrave; sẽ trở th&agrave;nh Vua Hải Tặc.</p>\r\n\r\n<p>T&ocirc;i nghĩ Shanks sẽ muốn kiểm tra những lời n&oacute;i n&agrave;y của Luffy. C&acirc;u hỏi đặt ra l&agrave; liệu cậu c&oacute; thực sự c&oacute; một băng hải tặc v&agrave; thuyền tốt hơn hay kh&ocirc;ng.</p>\r\n\r\n<p>Nh&igrave;n băng Mũ Rơm mạnh mẽ như thế n&agrave;y b&acirc;y giờ, t&ocirc;i cảm thấy như họ thực sự c&oacute; thể đọ sức với băng T&oacute;c Đỏ. C&ograve;n Thousand Sunny cũng đối đầu được với Red Force (con t&agrave;u của Shanks).</p>\r\n\r\n<p>C&oacute; lẽ Shanks chỉ lấy lại chiếc mũ rơm của m&igrave;nh nếu Luffy đ&atilde; thực hiện đ&uacute;ng lời hứa với anh, đ&oacute; l&agrave; cậu sẽ trở th&agrave;nh Vua Hải Tặc. Nếu đ&oacute; l&agrave; điều m&agrave; Shanks đang mong đợi, th&igrave; Luffy c&oacute; thể phải trả mũ cho anh sau khi cậu đến được Laugh Tale.</p>\r\n\r\n<p><strong>4. Liệu Shanks c&oacute; muốn lấy lại chiếc mũ rơm của m&igrave;nh?</strong></p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/03/31222417/game4v-One-Piece-1648740257-36.jpeg\"><img alt=\"One Piece \" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/03/31222417/game4v-One-Piece-1648740257-36.jpeg\" style=\"height:724px; width:1280px\" /></a></p>\r\n\r\n<p>Thực sự nghi ngờ rằng tuy Luffy đủ điều kiện trả mũ của m&igrave;nh cho Shanks, nhưng cuối c&ugrave;ng anh vẫn kh&ocirc;ng lấy lại n&oacute;, hiện tại, chiếc mũ rơm đ&atilde; được giao ph&oacute;, t&ocirc;i đo&aacute;n rằng Shanks sẽ ch&iacute;nh thức trao n&oacute; cho Luffy trong One Piece lu&ocirc;n</p>\r\n\r\n<p>Hiện tại, Luffy c&oacute; cảm gi&aacute;c như đ&atilde; trở th&agrave;nh một hải tặc đủ mạnh mẽ để c&oacute; thể gặp lại Shanks T&oacute;c Đỏ. Điều đ&oacute; khiến t&ocirc;i tự hỏi rằng liệu Shanks c&oacute; muốn lấy lại mũ của m&igrave;nh hay kh&ocirc;ng?</p>\r\n\r\n<p>Sau khi ch&uacute;ng ta thấy chiếc mũ rơm đ&atilde; trở th&agrave;nh một thứ quen thuộc của Luffy, v&agrave; n&oacute; dường như c&oacute; &yacute; nghĩa s&acirc;u xa hơn mọi người tưởng (c&ograve;n chiếc mũ rơm lớn tại Mary Geoise). T&ocirc;i thực sự nghi ngờ rằng mặc d&ugrave; Luffy đủ điều kiện trả mũ của m&igrave;nh cho Shanks, nhưng cuối c&ugrave;ng th&igrave; anh vẫn kh&ocirc;ng muốn lấy lại n&oacute;.</p>\r\n\r\n<p>Hiện tại, chiếc mũ rơm đ&atilde; được giao ph&oacute;. T&ocirc;i đo&aacute;n rằng Shanks sẽ ch&iacute;nh thức trao n&oacute; cho Luffy lu&ocirc;n.</p>\r\n\r\n<p>V&igrave; vậy, đ&oacute; l&agrave; ph&acirc;n t&iacute;ch về việc liệu b&acirc;y giờ Luffy đ&atilde; đủ điều kiện để trả lại chiếc mũ rơm của m&igrave;nh cho Shanks T&oacute;c Đỏ trong One Piece hay chưa. Bạn nghĩ sao? H&atilde;y viết &yacute; kiến!</p>', 52, 1, 15, 'images/KvoyuaHyGWCWHNeSRAzgn0LshhyqQT1VyrLRzLU1.jpg', 'one-piece-luffy-da-tra-lai-mu-cho-shanks-duoc-chua-901850', '2022-08-03 07:19:36', '2022-08-12 02:09:08'),
(22, 'Vì sao game thủ Mỹ giảm sức chi tiêu cho trò chơi?', 'Theo công ty nghiên cứu thị trường NPD, chi tiêu của người chơi Mỹ cho các sản phẩm trò chơi điện tử đã giảm 1,78 tỷ USD.', '<p>Theo đ&oacute;, chi ti&ecirc;u cho tr&ograve; chơi điện tử ở Mỹ đạt 12,35 tỷ đ&ocirc; la trong qu&yacute; gần đ&acirc;y, giảm 13% so với c&ugrave;ng kỳ năm ngo&aacute;i. Kết quả n&agrave;y c&ocirc;ng bố sau cả Microsoft v&agrave; Sony &ndash; những đơn vị b&aacute;o c&aacute;o doanh thu mảng chơi game giảm do đại dịch qua đi.</p>\r\n\r\n<p>Sony đ&atilde; cảnh b&aacute;o về việc kinh doanh PlayStation k&eacute;m hơn v&agrave;o đầu tuần n&agrave;y khi doanh số b&aacute;n phần mềm tr&ograve; chơi giảm mạnh 26% so với c&ugrave;ng kỳ năm ngo&aacute;i. Sony cho rằng sự sụt giảm n&agrave;y l&agrave; thiếu c&aacute;c tựa game PlayStation lớn trong năm nay so với năm 2021 v&agrave; thời gian chơi game n&oacute;i chung l&agrave; &iacute;t hơn. Microsoft cho hay doanh thu phần cứng Xbox 11% so với năm ngo&aacute;i trong qu&yacute; gần đ&acirc;y c&ugrave;ng với sự sụt giảm 6% trong doanh thu dịch vụ v&agrave; nội dung Xbox v&agrave; giảm 7% trong tổng doanh thu tr&ograve; chơi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sức chi ti&ecirc;u cho game tại Mỹ giảm.</p>\r\n\r\n<p>Nintendo dự kiến ​​sẽ b&aacute;o c&aacute;o dự kiến ​​sẽ b&aacute;n được 21 triệu m&aacute;y chơi game Switch cho năm t&agrave;i ch&iacute;nh kết th&uacute;c, giảm so với 23,1 triệu của năm trước.</p>\r\n\r\n<p>Mặc d&ugrave; chi ti&ecirc;u tổng thể cho việc chơi game giảm r&otilde; rệt ở thị trường Mỹ trong qu&yacute; 2, nhưng ph&acirc;n mảng đăng k&yacute; trước được xem &ldquo;l&agrave; ph&acirc;n kh&uacute;c duy nhất mang lại lợi nhuận t&iacute;ch cực&rdquo;, theo NPD. Điều n&agrave;y thể hiện một phần qua việc Sony tung ra đăng k&yacute; PlayStation Plus cải tiến v&agrave;o cuối qu&yacute;.</p>\r\n\r\n<p>Game thủ Mỹ thường quan t&acirc;m đến tr&ograve; chơi thuộc chủ đề n&agrave;o? Đ&oacute; cũng l&agrave; vấn đề được b&agrave;n đến trong b&aacute;o c&aacute;o. Cụ thể, người chơi ch&acirc;u &Acirc;u v&agrave; Mỹ quan t&acirc;m nhiều hơn đến chủ đề đế chế thời trung cổ v&agrave; kh&ocirc;ng gian giữa c&aacute;c v&igrave; sao, trong khi Trung Quốc, Nhật Bản v&agrave; H&agrave;n Quốc đặc biệt quan t&acirc;m đến chủ đề Tam Quốc, v&agrave; ng&agrave;y tận thế c&ugrave;ng th&acirc;y ma đ&atilde; trở th&agrave;nh một chủ đề phổ biến to&agrave;n cầu.</p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/08/03173821/play-game-2-1659523101-80.jpg\"><img alt=\"Game thủ không còn vung tiền mua thiết bị chơi game một cách thoải mái như trước nữa.\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/08/03173821/play-game-2-1659523101-80.jpg\" style=\"height:450px; width:800px\" /></a></p>\r\n\r\n<p>Game thủ kh&ocirc;ng c&ograve;n vung tiền mua thiết bị chơi game một c&aacute;ch thoải m&aacute;i như trước nữa.</p>\r\n\r\n<p>Theo NPD, doanh số b&aacute;n đơn vị phần cứng được dẫn đầu bởi Nintendo Switch trong qu&yacute; thứ hai. Trong khi đ&oacute;, thiết bị PS5 tạo ra doanh số đ&ocirc; la cao nhất. Mat Piscatella, nh&agrave; ph&acirc;n t&iacute;ch ng&agrave;nh tr&ograve; chơi tại NPD, cho biết bất chấp việc giảm chi ti&ecirc;u trong bối cảnh lạm ph&aacute;t cao v&agrave; sau một thời kỳ tăng trưởng lớn, &ldquo;chi ti&ecirc;u của người d&ugrave;ng tiếp tục c&oacute; xu hướng cao hơn mức trước đại dịch. Tuy nhi&ecirc;n, c&aacute;c biến động kh&ocirc;ng thể đo&aacute;n trước v&agrave; thay đổi c&oacute; thể diễn ra t&aacute;c động đến thị trường theo những c&aacute;ch kh&aacute;c nhau trong những qu&yacute; tới&rdquo;.</p>\r\n\r\n<p>B&aacute;o cũng cho hay, Mỹ, Trung Quốc v&agrave; Nhật Bản l&agrave; ba thị trường c&oacute; doanh thu cao nhất của tr&ograve; chơi di động chiến thuật 4X. Trong số đ&oacute;, doanh thu tr&ograve; chơi di động chiến lược 4X của Mỹ trong qu&yacute; đầu ti&ecirc;n của năm 2022 l&ecirc;n tới 650 triệu đ&ocirc; la Mỹ, vượt qua doanh thu kết hợp của Trung Quốc v&agrave; Nhật Bản. Điều n&agrave;y cho thấy khả năng thu h&uacute;t tiền đ&aacute;ng kinh ngạc tại xứ cờ hoa.</p>', 40, 0, 11, 'images/DZBFjuUEGUWJYFeCRIQZERO054vN7zgmMQaYwQry.png', 'vi-sao-game-thu-my-giam-suc-chi-tieu-cho-tro-choi-901756.g4v', '2022-08-03 07:21:45', '2022-08-15 02:15:11'),
(23, '5 câu hỏi cần lời giải đáp nhất về God of War Ragnarok', 'Nhiều chi tiết đã được tiết lộ về God of War Ragnarok, nhưng vẫn còn một số bí ẩn và nhiều câu hỏi lớn vẫn chưa được giải đáp.', '<p>Trong God of War 2018 game thủ phải kh&aacute;m ph&aacute; Cửu giới c&ugrave;ng với Kratos v&agrave; Atreus, v&agrave; tr&ecirc;n chuyến h&agrave;nh tr&igrave;nh đ&oacute; th&igrave; người chơi sẽ vừa kết bạn vừa tạo ra c&aacute;c kẻ th&ugrave; trong khi kh&aacute;m ph&aacute; thế giới thần thoại Bắc &Acirc;u. Phần tiếp theo l&agrave; God of War Ragnarok sẽ kết th&uacute;c c&acirc;u chuyện hiện tại trong khi giới thiệu cho Kratos một số trận chiến vĩ đại nhất của anh ấy. Lần n&agrave;y người chơi sẽ phải tr&aacute;nh kẻ th&ugrave; trong khi cố gắng ngăn chặn sự tấn c&ocirc;ng của Ragnarok, một loạt c&aacute;c sự kiện tận thế xảy ra sau những trận b&atilde;o tuyết ở Fimbulwinter.</p>\r\n\r\n<p>Santa Monica đ&atilde; mang đến cho game thủ c&aacute;c &yacute; tưởng mơ hồ về những g&igrave; ch&uacute;ng ta n&ecirc;n mong đợi trong God of War Ragnarok th&ocirc;ng qua c&aacute;c b&agrave;i viết tr&ecirc;n blog v&agrave; c&aacute;c đoạn trailer giới thiệu. Họ đ&atilde; tiết lộ rằng Kratos v&agrave; Atreus sẽ c&oacute; Freya v&agrave; Thor theo sau, cũng như thần Tyr sẽ xuất hiện. Tuy nhi&ecirc;n cộng đồng vẫn c&ograve;n v&ocirc; số c&acirc;u hỏi nhức nhối li&ecirc;n quan đến c&aacute;c nh&acirc;n vật chủ chốt v&agrave; mối li&ecirc;n hệ của tr&ograve; chơi với thần thoại Bắc &Acirc;u. Hi vọng rằng người h&acirc;m mộ sẽ sớm c&oacute; c&acirc;u trả lời cho những b&iacute; ẩn n&agrave;y.</p>\r\n\r\n<p><strong>Sự li&ecirc;n quan của Loki l&agrave; g&igrave;?</strong></p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/08/03142029/game4v-god-of-war-ragnarok-2-1659511227-43.png\"><img alt=\"God of War Ragnarok\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/08/03142029/game4v-god-of-war-ragnarok-2-1659511227-43.png\" style=\"height:507px; width:1031px\" /></a></p>\r\n\r\n<p>Mối li&ecirc;n hệ giữa Atreus với Loki cho thấy cậu sẽ đ&oacute;ng một vai tr&ograve; quan trọng trong Ragnarok, mặc d&ugrave; vẫn chưa r&otilde; vai tr&ograve; đ&oacute; sẽ l&agrave; g&igrave;.</p>\r\n\r\n<p>Đ&acirc;y c&oacute; lẽ l&agrave; một c&acirc;u hỏi đ&atilde; từng xuất hiện trong t&acirc;m tr&iacute; của hầu hết c&aacute;c game thủ đ&atilde; chơi God of War 2018. V&agrave;o cuối tr&ograve; chơi, tựa game tiết lộ rằng mẹ của Atreus l&agrave; Faye ban đầu đ&atilde; đặt t&ecirc;n cho cậu l&agrave; Loki, v&agrave; ch&iacute;nh Kratos sau đ&oacute; đ&atilde; đặt cho cậu c&aacute;i t&ecirc;n hiện tại m&agrave; ch&uacute;ng ta đ&atilde; quen thuộc. Kh&ocirc;ng c&oacute; nhiều điều hơn nữa được tiết lộ về sự thật n&agrave;y, nhưng n&oacute; sẽ kh&ocirc;ng được đưa ra nếu n&oacute; kh&ocirc;ng quan trọng. Trong thần thoại Bắc &Acirc;u th&igrave; Loki l&agrave; một vị thần lừa gạt v&agrave; l&agrave; con trai của Laufey (c&ograve;n được gọi l&agrave; Faye). Loki l&agrave; một người biến h&igrave;nh, v&agrave; anh ta đ&oacute;ng một vai tr&ograve; lớn trong Ragnarok nơi anh th&agrave;nh lập một đội qu&acirc;n Jotnar (người khổng lồ) v&agrave; chiến đấu chống lại c&aacute;c vị thần. Anh phải đối mặt với Heimdall v&agrave; trận chiến diễn ra &aacute;c liệt đến mức họ đ&atilde; t&agrave;n s&aacute;t lẫn nhau.</p>\r\n\r\n<p>Mối li&ecirc;n hệ giữa Atreus với Loki cho thấy cậu sẽ đ&oacute;ng một vai tr&ograve; quan trọng trong Ragnarok, mặc d&ugrave; vẫn chưa r&otilde; vai tr&ograve; đ&oacute; sẽ l&agrave; g&igrave;. Theo thần thoại, n&oacute; c&oacute; thể đ&aacute;nh dấu sự kết th&uacute;c cho Atreus. Tuy nhi&ecirc;n Santa Monica chưa bao giờ b&aacute;m chặt v&agrave;o cảm hứng thần thoại của series, v&agrave; c&oacute; khả năng Atreus sẽ sống s&oacute;t sau Ragnarok hoặc thay đổi số phận bằng c&aacute;ch ngăn sự kiện xảy ra ho&agrave;n to&agrave;n.</p>\r\n\r\n<p><strong>Angrboda l&agrave; ai?</strong></p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/08/03142022/game4v-god-of-war-ragnarok-3-1659511221-11.png\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/08/03142022/game4v-god-of-war-ragnarok-3-1659511221-11.png\" style=\"height:512px; width:1030px\" /></a></p>\r\n\r\n<p>Angrboda c&oacute; thể l&agrave; một người bạn của Atreus, ngo&agrave;i ra c&ocirc; ấy cũng đ&atilde; mỉm cười với Atreus khi xuất hiện trong trailer.</p>\r\n\r\n<p>Chậm r&atilde;i nhưng chắc chắn, Santa Monica đ&atilde; giới thiệu cho người chơi những nh&acirc;n vật ch&uacute;ng ta sẽ được thấy trong God of War Ragnarok. Trong đ&oacute; bao gồm c&aacute;c nh&acirc;n vật God of War trở lại như Mimir, Brok v&agrave; Sindri, cũng như những nh&acirc;n vật phản diện mới như Thor. Ngo&agrave;i ra c&ograve;n c&oacute; những nh&acirc;n vật được tiết lộ m&agrave; vai tr&ograve; của họ vẫn chưa được th&agrave;nh lập, bao gồm một nh&acirc;n vật b&iacute; ẩn t&ecirc;n l&agrave; Angrboda.</p>\r\n\r\n<p>Trong thần thoại Bắc &Acirc;u, Angrboda l&agrave; một jotunn v&agrave; l&agrave; phối ngẫu của Loki. Họ c&oacute; một đứa trẻ t&ecirc;n Fenrir l&agrave; một con s&oacute;i khủng khiếp ph&aacute;t triển đến k&iacute;ch thước phi thường v&agrave; phải bị xiềng x&iacute;ch bởi c&aacute;c vị thần. Điều n&agrave;y cho thấy Angrboda c&oacute; thể l&agrave; một người bạn của Atreus, ngo&agrave;i ra c&ocirc; ấy cũng đ&atilde; mỉm cười với Atreus khi xuất hiện trong trailer, điều n&agrave;y kh&ocirc;ng khiến c&ocirc; ấy c&oacute; vẻ như l&agrave; một kẻ th&ugrave;. Tuy nhi&ecirc;n th&igrave; danh t&iacute;nh đầy đủ, khả năng v&agrave; tầm quan trọng của c&ocirc; vẫn chưa được tiết lộ.</p>\r\n\r\n<p><strong>Fenrir l&agrave; bạn hay kẻ th&ugrave;?</strong></p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/08/03142015/game4v-god-of-war-ragnarok-4-1659511214-3.png\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/08/03142015/game4v-god-of-war-ragnarok-4-1659511214-3.png\" style=\"height:517px; width:1027px\" /></a></p>\r\n\r\n<p>Fenrir thậm ch&iacute; c&oacute; thể gi&uacute;p c&aacute;c nh&acirc;n vật ch&iacute;nh chống lại một số kẻ th&ugrave; đ&aacute;ng gờm hơn m&agrave; họ sẽ gặp phải trong suốt tr&ograve; chơi, bao gồm cả Odin.</p>\r\n\r\n<p>Đoạn trailer mới nhất của God of War Ragnarok đ&atilde; tiết lộ ng&agrave;y ph&aacute;t h&agrave;nh của tr&ograve; chơi v&agrave; cũng cho thấy Atreus v&agrave; Kratos đối mặt với một con s&oacute;i khổng lồ. Mặc d&ugrave; vẫn chưa được x&aacute;c nhận nhưng với bối cảnh ch&uacute;ng ta đ&atilde; thấy th&igrave; con s&oacute;i gần như chắc chắn l&agrave; Fenrir. Trong thần thoại, con s&oacute;i khổng lồ n&agrave;y đ&atilde; cắn đứt tay Tyr v&agrave; n&oacute; cũng giết chết Odin trong Ragnarok. Tuy nhi&ecirc;n con trai của Odin l&agrave; Vidar đ&atilde; trả đũa v&agrave; giết con s&oacute;i.</p>\r\n\r\n<p>Việc chạm tr&aacute;n với một con qu&aacute;i vật to lớn trong God of War đồng nghĩa với việc người chơi sắp c&oacute; một trận chiến kinh thi&ecirc;n động địa. Nhưng Jormungandr đ&atilde; chứng minh rằng mọi thứ kh&ocirc;ng phải lu&ocirc;n lu&ocirc;n như thế. Trong khi Fenrir c&oacute; thể l&agrave; một trong những con th&uacute; m&agrave; Kratos v&agrave; Atreus phải chiến đấu, cũng c&oacute; khả năng Santa Monica lấy cảm hứng từ thần thoại Bắc &Acirc;u để khiến Atreus, Angrboda v&agrave; Fenrir sẽ c&oacute; mối quan hệ n&agrave;o đ&oacute;. Fenrir thậm ch&iacute; c&oacute; thể gi&uacute;p c&aacute;c nh&acirc;n vật ch&iacute;nh chống lại một số kẻ th&ugrave; đ&aacute;ng gờm hơn m&agrave; họ sẽ gặp phải trong suốt tr&ograve; chơi, bao gồm cả Odin.</p>\r\n\r\n<p><strong>Liệu Kratos sẽ c&oacute; được vũ kh&iacute; mới?</strong></p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/08/03142009/game4v-god-of-war-ragnarok-5-1659511208-11.png\"><img alt=\"God of War Ragnarok\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/08/03142009/game4v-god-of-war-ragnarok-5-1659511208-11.png\" style=\"height:517px; width:1027px\" /></a></p>\r\n\r\n<p>R&igrave;u Leviathan c&oacute; thể được sử dụng để game thủ chặt kẻ th&ugrave; như một t&ecirc;n đồ tể, hoặc n&oacute; c&oacute; thể được n&eacute;m đi v&agrave; gọi trở lại như một chiếc boomerang.</p>\r\n\r\n<p>Trong hầu hết loạt game God of War, Kratos đ&atilde; sử dụng Blades of Chaos mang t&iacute;nh biểu tượng của m&igrave;nh. Ch&uacute;ng l&agrave; những c&ocirc;ng cụ tiện dụng gi&uacute;p anh bộc ph&aacute;t cơn thịnh nộ của m&igrave;nh v&agrave; dễ d&agrave;ng hạ gục c&aacute;c đ&aacute;m đ&ocirc;ng kẻ th&ugrave; một c&aacute;ch đầy h&agrave;o nho&aacute;ng. Với God of War năm 2018, một vũ kh&iacute; mới đ&atilde; được giới thiệu đổi từ lửa sang băng nhưng vẫn mang lại trải nghiệm chiến đấu đầy phấn kh&iacute;ch. R&igrave;u Leviathan c&oacute; thể được sử dụng để game thủ chặt kẻ th&ugrave; như một t&ecirc;n đồ tể, hoặc n&oacute; c&oacute; thể được n&eacute;m đi v&agrave; gọi trở lại như một chiếc boomerang. Phải mất một thời gian để l&agrave;m quen, nhưng n&oacute; sẽ l&agrave; một m&oacute;n vũ kh&iacute; chết người một khi game thủ th&agrave;nh thạo.</p>\r\n\r\n<p><strong>Liệu Kratos sẽ thực sự chết?</strong></p>\r\n\r\n<p><a href=\"https://ecdn.game4v.com/g4v-content/uploads/2022/08/03142003/game4v-god-of-war-ragnarok-6-1659511201-2.png\"><img alt=\"\" src=\"https://ecdn.game4v.com/g4v-content/uploads/2022/08/03142003/game4v-god-of-war-ragnarok-6-1659511201-2.png\" style=\"height:510px; width:1028px\" /></a></p>\r\n\r\n<p>C&aacute;i chết của Kratos chắc chắn sẽ l&agrave; một khoảnh khắc đ&aacute;ng kinh ngạc, v&agrave; dễ d&agrave;ng trở th&agrave;nh điểm quan trọng nhất của series từ trước cho đến nay, mặc d&ugrave; ch&uacute;ng ta vẫn c&ograve;n phải chờ xem liệu điều kh&ocirc;ng tưởng đ&oacute; c&oacute; xảy ra hay kh&ocirc;ng.</p>\r\n\r\n<p>Trong suốt series, Kratos đ&atilde; mạo hiểm v&agrave;o thế giới ngầm, nhưng anh ta đ&atilde; t&igrave;m c&aacute;ch trở lại được c&otilde;i ph&agrave;m trần. Tuy nhi&ecirc;n nhiều game thủ phải tự hỏi rằng liệu God of War Ragnarok c&oacute; phải l&agrave; cuộc phi&ecirc;u lưu cuối c&ugrave;ng của anh hay kh&ocirc;ng. Mọi thứ c&oacute; vẻ như đ&atilde; được sắp xếp ổn định, với Atreus ở đ&oacute; để đảm nhận vị tr&iacute; thay anh. Tuy nhi&ecirc;n, cũng kh&oacute; c&oacute; thể tưởng tượng một nh&acirc;n vật mang t&iacute;nh biểu tượng như Kratos lại bị giết chết. C&aacute;i chết của Kratos chắc chắn sẽ l&agrave; một khoảnh khắc đ&aacute;ng kinh ngạc, v&agrave; dễ d&agrave;ng trở th&agrave;nh điểm quan trọng nhất của series từ trước cho đến nay, mặc d&ugrave; ch&uacute;ng ta vẫn c&ograve;n phải chờ xem liệu điều kh&ocirc;ng tưởng đ&oacute; c&oacute; xảy ra hay kh&ocirc;ng.</p>\r\n\r\n<p>Ch&uacute;ng ta c&ograve;n rất nhiều c&acirc;u hỏi nữa, bao gồm liệu c&oacute; thể tr&aacute;nh được Ragnarok thực sự hay kh&ocirc;ng, liệu Odin c&oacute; bị đ&aacute;nh bại hay kh&ocirc;ng, v&agrave; liệu mối quan hệ của Kratos v&agrave; Atreus c&oacute; trường tồn hay kh&ocirc;ng. May mắn l&agrave; game thủ sẽ kh&ocirc;ng phải chờ đợi l&acirc;u để c&oacute; được c&acirc;u trả lời, v&igrave; tr&ograve; chơi chỉ c&ograve;n &iacute;t th&aacute;ng nữa l&agrave; sẽ ra mắt. Với rất nhiều chi tiết đặc biệt, đ&acirc;y c&oacute; thể l&agrave; cuộc phi&ecirc;u lưu ho&agrave;nh tr&aacute;ng mang t&iacute;nh sử thi nhất của Kratos.</p>', 65, 0, 13, 'images/hFwUb74Po4ZGNL3IA2SmcE5f45O5ocriCTak76w0.png', '5-cau-hoi-can-loi-giai-dap-nhat-ve-god-of-war-ragnarok-901783', '2022-08-03 07:22:52', '2022-08-15 05:35:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `email_verified_at`, `password`, `avatar`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'phanvan0322', 'Phan Tường Văn', 'phanvan0322@gmail.com', NULL, '$2y$10$wR2QC/UguUCGjyZMR2hJyOkSnMTdOW63RHsdWHETvFqYIWybhKh1G', 'images/5V5VaSOH827Gv6F45kFiP0l811dgr1tM6yWUwKCZ.jpg', 0, 'MI3kB5RzUyHiXuLNNkn88bDcZ9ss0zkAE0O3OJt15CCLmuYmRDT1H4pNM1Zh', '2022-07-10 07:29:49', '2022-08-08 02:24:19'),
(2, 'phanvan123', 'Phan Tuong Van 2', 'phanvan123@gmail.com', NULL, '$2y$10$rBAepMyQDSX688AN8GpbgO4WywpeFuVtGLlXBfHxaxjpO4.Yo8BoG', 'avatar.jpg', 2, NULL, '2022-07-27 04:17:58', '2022-07-31 06:51:08'),
(3, 'vanptpc01874', 'Phan Văn', 'vanptpc01874@fpt.edu.vn', NULL, '$2y$10$Uuo/ohyindzzd7RqbmS2wuNvD0rpvVHmWkDhom8dtAdxsctJmcZpW', 'avatar.jpg', 1, NULL, '2022-07-29 05:50:18', '2022-07-29 05:50:18'),
(4, 'phanvan0555', 'Phan Tường Văn', 'phanvan0555@gmail.com', NULL, '$2y$10$mhOR6feX9kKTo6ZYq4ccbOrM2WoylbGlj3QXEaEjlVT91wRKcMG.u', 'avatar.jpg', 1, NULL, '2022-07-30 07:10:30', '2022-07-31 06:50:49'),
(5, 'nguyenvana123', 'Nguyễn Văn A', 'nguyenvana@gmail.com', NULL, '$2y$10$hk0pcG/P4zxad5AF4oWsQezBg1UVX5KBk9MI/W2IEBQeuKlKV.PHW', 'avatar.jpg', 1, NULL, '2022-08-06 06:49:28', '2022-08-06 06:49:28');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `additional_infos`
--
ALTER TABLE `additional_infos`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `like_actions`
--
ALTER TABLE `like_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `like_actions_like_id_foreign` (`like_id`),
  ADD KEY `like_actions_post_id_foreign` (`post_id`),
  ADD KEY `like_actions_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `additional_infos`
--
ALTER TABLE `additional_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `like_actions`
--
ALTER TABLE `like_actions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `like_actions`
--
ALTER TABLE `like_actions`
  ADD CONSTRAINT `like_actions_like_id_foreign` FOREIGN KEY (`like_id`) REFERENCES `likes` (`id`),
  ADD CONSTRAINT `like_actions_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `like_actions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
