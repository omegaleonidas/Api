-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 02, 2021 at 08:51 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_taa`
--

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2021_06_29_045906_create_user_table', 1);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\user', 2, 'token-name ', '197d7293859cebbfeba76b530602895d2956cd48b8658569a71175be54fd50cb', '[\"*\"]', NULL, '2021-07-04 01:04:29', '2021-07-04 01:04:29'),
(2, 'App\\Models\\user', 2, 'token-name ', 'f070fcc7f25867dcc82e532642f9d633a5edbbe5ddb2992332345d0899c0ce48', '[\"*\"]', NULL, '2021-07-04 01:04:48', '2021-07-04 01:04:48'),
(3, 'App\\Models\\user', 2, 'token-name ', '3ef4a45b7d5866ae85bbec39e140e5ca26db2d6608a345fce76855cfced2cafb', '[\"*\"]', NULL, '2021-07-04 01:54:48', '2021-07-04 01:54:48'),
(4, 'App\\Models\\user', 2, 'token', '42cea5c86c522e109f7413dcc07eaa2a03e2dca2884580751863269ea6040225', '[\"*\"]', NULL, '2021-07-04 02:02:52', '2021-07-04 02:02:52'),
(5, 'App\\Models\\user', 2, 'token', 'db7ff5daf7ba1656306c384bf3c69d2c8cc48f624b452bae80931d5397c52501', '[\"*\"]', NULL, '2021-07-04 02:05:17', '2021-07-04 02:05:17'),
(6, 'App\\Models\\user', 2, 'token', '683925efd2b6b791f24d49c276be571486dada9edd61e95922782a8f8a24d609', '[\"*\"]', NULL, '2021-07-04 02:06:03', '2021-07-04 02:06:03'),
(7, 'App\\Models\\user', 2, 'token', 'd1df6545d8fb0e25948832fb45ab9f3de2619d40243bde74da33239cc994c6a7', '[\"*\"]', NULL, '2021-07-04 02:11:02', '2021-07-04 02:11:02'),
(8, 'App\\Models\\user', 2, 'token', '57d4a8dadd37b69a1ea33a8091a4ec2846010034b0a0f81d3d6059392eabb677', '[\"*\"]', '2021-07-04 02:16:50', '2021-07-04 02:12:44', '2021-07-04 02:16:50'),
(10, 'App\\Models\\user', 2, 'token', '08e1d7ec08ac6098f18f86e4747b55284111c87c6b3e4e3ef7670876b0d56755', '[\"*\"]', '2021-08-12 05:31:51', '2021-07-04 04:59:00', '2021-08-12 05:31:51'),
(11, 'App\\Models\\user', 2, 'token', '1c828f94109001f7fe54ece184c4cc7c2a983d760e3dc0475d89ea06b8369f9b', '[\"*\"]', NULL, '2021-08-09 03:22:18', '2021-08-09 03:22:18'),
(12, 'App\\Models\\user', 2, 'token', '54a07386584561b3bfb35f478beee57ba5014b9322eeb8a76a4683d27e6138a4', '[\"*\"]', NULL, '2021-08-09 06:27:51', '2021-08-09 06:27:51'),
(13, 'App\\Models\\user', 2, 'token', '35d6873e1a896c6a2c3217cdc39369057cf01e503fa6739f4eeeaa4d7ed83ed9', '[\"*\"]', '2021-08-28 01:24:57', '2021-08-09 06:36:01', '2021-08-28 01:24:57'),
(14, 'App\\Models\\user', 2, 'token', '4302cc0b6a9e0a671f09e2ef9260725ac22d2097c753ed3cf187436faf97f5b0', '[\"*\"]', '2021-08-09 20:28:14', '2021-08-09 20:25:57', '2021-08-09 20:28:14'),
(15, 'App\\Models\\user', 2, 'token', '8f71da142582e691367f9a5fc5e0fb48a14847c081f150fdcafd2baaa14781b9', '[\"*\"]', '2021-08-09 22:03:55', '2021-08-09 20:29:47', '2021-08-09 22:03:55'),
(16, 'App\\Models\\user', 2, 'token', 'cf499d186bce0d00ea9f51923f9c31676915a508cb62f7e5dc689e2c11ad55a1', '[\"*\"]', '2021-08-10 07:00:12', '2021-08-09 22:04:47', '2021-08-10 07:00:12'),
(17, 'App\\Models\\user', 2, 'token', '1d7c65bb48dd0af3e5b3952bf167f26eb178ca95a5fe07db9dae9d97dbb2da7f', '[\"*\"]', '2021-08-10 08:30:46', '2021-08-10 07:04:40', '2021-08-10 08:30:46'),
(18, 'App\\Models\\user', 2, 'token', '4d6d78350062c54d8ec03bac1713d497be9f402f8a831de2d176a278caafbaf3', '[\"*\"]', '2021-08-10 08:34:24', '2021-08-10 08:31:11', '2021-08-10 08:34:24'),
(19, 'App\\Models\\user', 2, 'token', 'edee6d79c128bac8c910142210b3243b44faa47e70606419427b51a37d538659', '[\"*\"]', '2021-08-10 08:36:38', '2021-08-10 08:34:39', '2021-08-10 08:36:38'),
(20, 'App\\Models\\user', 2, 'token', 'd9f991c61b0bc96f3d6c629f76bbc7df0b2d747441bcc3de04a36765187652c8', '[\"*\"]', '2021-08-14 20:33:49', '2021-08-10 08:36:49', '2021-08-14 20:33:49'),
(21, 'App\\Models\\user', 1, 'token', 'e6dc7353e558635498c6279168f90965a6991e84b3a72abf90a79367d8887a15', '[\"*\"]', '2021-08-13 02:21:08', '2021-08-12 21:50:35', '2021-08-13 02:21:08'),
(22, 'App\\Models\\user', 1, 'token', '920681c22c43ee9d40ac8404ac1c7e36ec37ae7ceb75fc4b680fb6db638376e8', '[\"*\"]', '2021-08-13 03:14:34', '2021-08-13 02:25:31', '2021-08-13 03:14:34'),
(23, 'App\\Models\\user', 2, 'token', '5b5267b3d41a8430136a90290c7bfe752888ebf7e21b9b36c42e1a68a79ef31b', '[\"*\"]', '2021-08-13 08:04:07', '2021-08-13 04:06:06', '2021-08-13 08:04:07'),
(24, 'App\\Models\\user', 2, 'token', '1b33cdef6d40f68b45ab574f653d00ce3807ac30bbc3b6fa4b420576e4f27d27', '[\"*\"]', '2021-08-13 08:05:15', '2021-08-13 08:04:25', '2021-08-13 08:05:15'),
(25, 'App\\Models\\user', 2, 'token', 'f2c78493f0b88643061a74e164cf690b4112023016fd8bf3e69f4c9801261aac', '[\"*\"]', '2021-08-13 08:06:43', '2021-08-13 08:05:28', '2021-08-13 08:06:43'),
(26, 'App\\Models\\user', 2, 'token', 'f4fc2c9d04e31bb5e4467bbede073529af77686f4c8251f749505859fe0f3d4b', '[\"*\"]', '2021-08-13 08:56:06', '2021-08-13 08:50:37', '2021-08-13 08:56:06'),
(27, 'App\\Models\\user', 2, 'token', '1e0e99c974af2e6837cb6d978a8ec7b13185dffb90ce182f2791f8c9621c2c65', '[\"*\"]', '2021-08-13 09:13:05', '2021-08-13 08:56:22', '2021-08-13 09:13:05'),
(28, 'App\\Models\\user', 2, 'token', 'e5b33080f52eb99c70b41788c81902eaf6c53c2cb3f792e0a018bf057cab69a5', '[\"*\"]', '2021-08-13 09:25:39', '2021-08-13 09:13:22', '2021-08-13 09:25:39'),
(29, 'App\\Models\\user', 2, 'token', '8dc8ea793225e603cfd28de993975c9b475c8778cbac3daef75605aabce05f50', '[\"*\"]', '2021-08-13 11:15:03', '2021-08-13 11:13:57', '2021-08-13 11:15:03'),
(30, 'App\\Models\\user', 1, 'token', '42b374eb520ad49ad18733cca779073b635f48e95e2b951263b2d0fb023f2183', '[\"*\"]', '2021-08-14 20:35:29', '2021-08-14 20:34:24', '2021-08-14 20:35:29'),
(31, 'App\\Models\\user', 2, 'token', '50b47bb32b27913de24a2eec8d368fc7054a6b4dfaf4f02bb66387a717d2ec6e', '[\"*\"]', '2021-08-14 20:43:13', '2021-08-14 20:35:43', '2021-08-14 20:43:13'),
(32, 'App\\Models\\user', 2, 'token', '30dfdab4bdd652df782456790fddaaefe56b10a4b630e983c7ebf053d2b92e2b', '[\"*\"]', '2021-08-14 20:49:49', '2021-08-14 20:43:37', '2021-08-14 20:49:49'),
(33, 'App\\Models\\user', 1, 'token', 'fcaee543938af6956998579aef32b70d0d8f0129e763ebf3a69f87be73274751', '[\"*\"]', '2021-08-14 20:49:44', '2021-08-14 20:43:56', '2021-08-14 20:49:44'),
(34, 'App\\Models\\user', 2, 'token', 'fd87bfb7ddcfd07e70455d435a45fbd55b215f36d7c1f30e1f1e4cf05928b6ba', '[\"*\"]', '2021-08-16 02:50:23', '2021-08-14 21:14:25', '2021-08-16 02:50:23'),
(35, 'App\\Models\\user', 2, 'token', '5bc5277a24524bb90093c97f5416fcf2f57c2615596b12fce73dd88588c0e344', '[\"*\"]', '2021-08-16 02:50:46', '2021-08-16 02:43:29', '2021-08-16 02:50:46'),
(36, 'App\\Models\\user', 8, 'token', '5536c34f0848e68a3df2e6509f1b87163e17e15f9a746369adf8ab286b897adc', '[\"*\"]', NULL, '2021-08-16 03:14:03', '2021-08-16 03:14:03'),
(37, 'App\\Models\\user', 8, 'token', '20007c77546f81328cac68e4494a38823f62de752e6995fcff758fbed62b98e7', '[\"*\"]', NULL, '2021-08-16 03:14:20', '2021-08-16 03:14:20'),
(38, 'App\\Models\\user', 8, 'token', '50894b7e97fee37a6b1bf859417125c459f004e9619ea342158dfb3ccaabb450', '[\"*\"]', NULL, '2021-08-16 03:14:21', '2021-08-16 03:14:21'),
(39, 'App\\Models\\user', 8, 'token', '6ca4a393782370ac0a621c983d59b6f5c03e64235e84e6a5bed19b285c36215d', '[\"*\"]', NULL, '2021-08-16 03:14:22', '2021-08-16 03:14:22'),
(40, 'App\\Models\\user', 8, 'token', '677df2a30a5f9ba29bb1444f74179556c7cfbf5bc72755857d701bcb2713c2da', '[\"*\"]', NULL, '2021-08-16 03:15:22', '2021-08-16 03:15:22'),
(41, 'App\\Models\\user', 2, 'token', '392e48a5a05d30486489cb6f230f83dedd8cb10a7200e83f85750e7bf12b73ed', '[\"*\"]', NULL, '2021-08-16 03:15:58', '2021-08-16 03:15:58'),
(42, 'App\\Models\\user', 2, 'token', '7509f3c84884ddbdbfdb988c7a3c370ad0395e8084855cd82f4856011590737f', '[\"*\"]', NULL, '2021-08-16 03:15:58', '2021-08-16 03:15:58'),
(43, 'App\\Models\\user', 2, 'token', 'd306a0205a7fa8d59cb6482d813af9d47448985ec5fd10e4abda4ca514741249', '[\"*\"]', NULL, '2021-08-16 03:15:59', '2021-08-16 03:15:59'),
(44, 'App\\Models\\user', 2, 'token', '8b259b7cb1092a45fdee829027e4842cfd1036f451c4cbb90b46fb54a63f8222', '[\"*\"]', NULL, '2021-08-16 03:15:59', '2021-08-16 03:15:59'),
(45, 'App\\Models\\user', 2, 'token', '64ab65410b7188ccdcd77af893e8f5e80b7120eeb5b10e83e111e739d87e3ebe', '[\"*\"]', NULL, '2021-08-16 03:16:09', '2021-08-16 03:16:09'),
(46, 'App\\Models\\user', 2, 'token', '05b1a39c37ce707d827cb4f2a8fb7f2c64b05725512ed48b3ff8ee96170a00c9', '[\"*\"]', NULL, '2021-08-16 03:17:18', '2021-08-16 03:17:18'),
(47, 'App\\Models\\user', 1, 'token', 'cf7d3ad77462b5786513569eda98dd76ce6fc9a7c55cd365048743d901ab202a', '[\"*\"]', '2021-08-16 05:50:29', '2021-08-16 03:17:47', '2021-08-16 05:50:29'),
(48, 'App\\Models\\user', 1, 'token', '39e9660e8c5006e933eb24c16abe4e8fe1478b19f3290ceb71322a0400d16b54', '[\"*\"]', '2021-08-16 05:42:41', '2021-08-16 03:43:55', '2021-08-16 05:42:41'),
(49, 'App\\Models\\user', 1, 'token', '2939b20490f2d809593d7301d17bb91be3c818ce7bb0464c6ffa2f3e3da47af3', '[\"*\"]', '2021-08-16 09:42:03', '2021-08-16 05:55:37', '2021-08-16 09:42:03'),
(50, 'App\\Models\\user', 1, 'token', 'f1f52e6dc9a7e936e57d8b2f39d2660c7b5a5739927f8c149975c2a96a8eca74', '[\"*\"]', '2021-08-16 11:32:55', '2021-08-16 10:12:08', '2021-08-16 11:32:55'),
(51, 'App\\Models\\user', 9, 'token', '5328359dcae10ac2a8b00bc87ad293ee217b3eb1dae724c6a0c2287cf28a8e37', '[\"*\"]', '2021-08-16 19:29:55', '2021-08-16 11:33:14', '2021-08-16 19:29:55'),
(52, 'App\\Models\\user', 9, 'token', 'd86c5e5aa76bb9d18f173462bdcc68a8d06e71d0962e4dd3777560b6ab9fd5f7', '[\"*\"]', '2021-08-17 01:39:24', '2021-08-16 19:31:34', '2021-08-17 01:39:24'),
(53, 'App\\Models\\user', 9, 'token', '756eb2ea390ad42f4cc564bf929c576d41f6f0374b78ce05c96bb56de7c3d4b5', '[\"*\"]', '2021-08-16 20:18:32', '2021-08-16 19:43:59', '2021-08-16 20:18:32'),
(54, 'App\\Models\\user', 9, 'token', '2ef158ef4e508cd0aa004b77fac115924d77c17fb42a297ed7bbcf2fdf4e90f7', '[\"*\"]', '2021-08-17 01:59:27', '2021-08-16 22:22:54', '2021-08-17 01:59:27'),
(55, 'App\\Models\\user', 9, 'token', '2fd6d0ea267a11c2776e7626411aa9cb19bbb6fac547d583e955f1c2ffdf50be', '[\"*\"]', '2021-08-17 01:48:52', '2021-08-17 01:41:54', '2021-08-17 01:48:52'),
(56, 'App\\Models\\user', 9, 'token', '24e699788569f1cc8b678292f82cd7e6881e8700e4134ab58ebc009e6511b42e', '[\"*\"]', '2021-08-17 03:44:16', '2021-08-17 01:50:16', '2021-08-17 03:44:16'),
(57, 'App\\Models\\user', 9, 'token', 'c6289e7c766cd41e79dd111a097642f6b20ac748521a85d20eee7d1c0b41cc83', '[\"*\"]', '2021-08-17 03:46:36', '2021-08-17 02:01:38', '2021-08-17 03:46:36'),
(58, 'App\\Models\\user', 9, 'token', 'b7f9a88bd244e5c3aece962cd442aba4abd1e599ce1520e72d078aef1c4aafb0', '[\"*\"]', '2021-08-21 06:46:29', '2021-08-17 03:47:38', '2021-08-21 06:46:29'),
(59, 'App\\Models\\user', 9, 'token', '84ef1d73497c34ada9fca81bb86d9041244aa89fe101251b5ff923eaf41aa123', '[\"*\"]', NULL, '2021-08-17 07:32:19', '2021-08-17 07:32:19'),
(60, 'App\\Models\\user', 9, 'token', 'daf4cd6315a31152f4066b7b4ce9bb6df16003d375fbd055d1ff53d174112a66', '[\"*\"]', '2021-08-17 09:15:32', '2021-08-17 07:32:20', '2021-08-17 09:15:32'),
(61, 'App\\Models\\user', 9, 'token', 'cb9fbb811bb85a7a751ce41a297bf5a66776dc3584aa18750ae77e52084e2596', '[\"*\"]', '2021-08-18 00:43:39', '2021-08-18 00:43:11', '2021-08-18 00:43:39'),
(62, 'App\\Models\\user', 9, 'token', 'eefbfcfd5a3a98acbcc2174b2879ecfb33345ebb9529ac2c068e7c760c092930', '[\"*\"]', '2021-08-21 07:56:58', '2021-08-18 00:45:59', '2021-08-21 07:56:58'),
(63, 'App\\Models\\user', 2, 'token', 'bba305645a4896a44a2a9daa375277017f1ec554bf90f5a1262458be7c0b7f9c', '[\"*\"]', '2021-08-21 07:50:18', '2021-08-21 07:49:37', '2021-08-21 07:50:18'),
(64, 'App\\Models\\user', 9, 'token', '33c39428eb1dad7a263a020996d8da8f81bbca819c8d377be497ead4845b8fbe', '[\"*\"]', '2021-08-21 09:56:39', '2021-08-21 07:50:37', '2021-08-21 09:56:39'),
(65, 'App\\Models\\user', 9, 'token', '507b51c3037f6c251ccf2eab3b9a4375346862c29a6723fbef33ed899f0cdcd6', '[\"*\"]', '2021-08-21 07:57:26', '2021-08-21 07:57:11', '2021-08-21 07:57:26'),
(66, 'App\\Models\\user', 2, 'token', 'b8e73b6923c5f48dbd3d123fdefffccbf1f4ea1faf774ee6c88c831accf61c18', '[\"*\"]', '2021-08-21 07:58:02', '2021-08-21 07:57:48', '2021-08-21 07:58:02'),
(67, 'App\\Models\\user', 9, 'token', '617128f3bd2dc7e9ae4dbf13579008dd984735cc7ed9cb034a08243e11766d89', '[\"*\"]', '2021-08-21 09:59:00', '2021-08-21 07:58:17', '2021-08-21 09:59:00'),
(68, 'App\\Models\\user', 2, 'token', '09d2f17b8eff5f23dc313a9656f8166db3b6ca2aa00fb1e357f9c7bd0b9f51d0', '[\"*\"]', '2021-08-27 19:45:22', '2021-08-27 01:05:22', '2021-08-27 19:45:22'),
(69, 'App\\Models\\user', 2, 'token', '7c554d76bd344e7f479cdb19593ea41cd731c69e94f3e9f204c549a73d94fb3f', '[\"*\"]', '2021-08-27 19:57:22', '2021-08-27 19:45:48', '2021-08-27 19:57:22'),
(70, 'App\\Models\\user', 2, 'token', '57f6a7e16c483f88ed10127fc26a3ffb1f7d1afb241ea3fa3627f2bfcac1c3ef', '[\"*\"]', '2021-08-27 20:36:01', '2021-08-27 19:46:16', '2021-08-27 20:36:01'),
(71, 'App\\Models\\user', 2, 'token', 'a027599a44851276e6f673735056809425e348e6e75e8e79bbf851ddf132731c', '[\"*\"]', '2021-08-27 20:34:29', '2021-08-27 20:32:30', '2021-08-27 20:34:29'),
(72, 'App\\Models\\user', 1, 'token', '5dbe681a6c52516ad2338ac03269d7ef12c3fe7bc1556cd32336c5a136a1e519', '[\"*\"]', NULL, '2021-08-27 20:36:34', '2021-08-27 20:36:34'),
(73, 'App\\Models\\user', 1, 'token', '09bd1924fd9bfc1790da96b5dd490fdfff1f690273fbf8b1fae080d1b87d9e2a', '[\"*\"]', NULL, '2021-08-27 20:38:07', '2021-08-27 20:38:07'),
(74, 'App\\Models\\user', 1, 'token', 'a158fa61cb441f3f3b85e64b9c0eb03e1518a3664b7107dc31c3999ad5a29430', '[\"*\"]', NULL, '2021-08-27 20:38:22', '2021-08-27 20:38:22'),
(75, 'App\\Models\\user', 2, 'token', '8f9fe242aa05064d72b5e9ba107f2db7d5e36fbda3cf4fe250641674c25f6849', '[\"*\"]', '2021-08-28 01:51:19', '2021-08-27 22:25:47', '2021-08-28 01:51:19'),
(76, 'App\\Models\\user', 2, 'token', 'c5874cd305998f2c9790b8f006a1e2314f086a5e99abaa885949c44b175867e0', '[\"*\"]', '2021-08-28 02:32:36', '2021-08-28 01:57:02', '2021-08-28 02:32:36'),
(77, 'App\\Models\\user', 2, 'token', '71c64de3eff0bbd1b6000714a201da7efc49672d909dc3b5869359f72c9361fe', '[\"*\"]', '2021-08-28 02:15:03', '2021-08-28 02:01:43', '2021-08-28 02:15:03'),
(78, 'App\\Models\\user', 11, 'token', '35936df49c19b05644dfb1d9aae4bbd2d28d54d4ec8b1fe80a5d3df27a5f94ed', '[\"*\"]', NULL, '2021-08-28 02:15:27', '2021-08-28 02:15:27'),
(79, 'App\\Models\\user', 11, 'token', '142652635598a85e36563e6f2867bd416b920c9e2404b395cdd14b8c3069148d', '[\"*\"]', '2021-08-28 11:50:16', '2021-08-28 02:17:21', '2021-08-28 11:50:16'),
(80, 'App\\Models\\user', 1, 'token', 'a19d72c5c6ec782caa2ff1365e097748fbd6f51eb76866c88afaf4303fed5de6', '[\"*\"]', '2021-09-02 06:50:44', '2021-08-28 07:32:37', '2021-09-02 06:50:44'),
(81, 'App\\Models\\user', 1, 'token', '0a05b2fcc7e99fe9d4ad8b2288cbdfa9dc1eb2c78aede832afdadb8bf24fe02a', '[\"*\"]', '2021-08-28 09:06:35', '2021-08-28 07:36:37', '2021-08-28 09:06:35'),
(82, 'App\\Models\\user', 1, 'token', '8d73f4caad6c28f6435588f6bc9ffce0a03140266005693937b04139423ed7c7', '[\"*\"]', NULL, '2021-08-28 08:09:48', '2021-08-28 08:09:48'),
(83, 'App\\Models\\user', 1, 'token', 'f80a32cf886ccac99efe10e32eef0bc64567082002ecb25fee535e2a61bbaa8f', '[\"*\"]', '2021-08-28 11:20:36', '2021-08-28 08:10:55', '2021-08-28 11:20:36'),
(84, 'App\\Models\\user', 1, 'token', 'a74ab017ffeea0aee91077037c0d189fc0ae6eea7100dc86dbc17bae1f2a97be', '[\"*\"]', NULL, '2021-08-28 08:24:12', '2021-08-28 08:24:12'),
(85, 'App\\Models\\user', 1, 'token', '02e7220f322645552ec0106afe43281f37d94f0afb8369bfbe38c23ba26cbfb3', '[\"*\"]', NULL, '2021-08-28 08:24:15', '2021-08-28 08:24:15'),
(86, 'App\\Models\\user', 1, 'token', '3051383a34c638a5012263fab6b5aa121e9e2d40c1a842d6f07828ac7ac19606', '[\"*\"]', NULL, '2021-08-28 08:25:21', '2021-08-28 08:25:21'),
(87, 'App\\Models\\user', 1, 'token', '20dfe17002a94cb835f012985dac6466871c6eba9ff90f7d73976a47148ce03e', '[\"*\"]', NULL, '2021-08-28 08:25:39', '2021-08-28 08:25:39'),
(88, 'App\\Models\\user', 1, 'token', 'c0f499d7d17943b60a3e74ba5affc7de37f920b7b858efb2616404f50feb2c64', '[\"*\"]', NULL, '2021-08-28 08:30:42', '2021-08-28 08:30:42'),
(89, 'App\\Models\\user', 1, 'token', 'db2791807f4ebb1008438ad95c9ce26ccd481dec9d37e874fe0fe5b221522fdf', '[\"*\"]', NULL, '2021-08-28 08:34:07', '2021-08-28 08:34:07'),
(90, 'App\\Models\\user', 1, 'token', '65dd2e14f129b83580471fea8160ef0df1b92119c3f94cab398a1ee914202ee3', '[\"*\"]', NULL, '2021-08-28 11:22:58', '2021-08-28 11:22:58'),
(91, 'App\\Models\\user', 1, 'token', '5a9986a098f5180866b69da328d5f63df411b75a8375c22299e16f507bb50925', '[\"*\"]', '2021-08-28 11:40:08', '2021-08-28 11:23:25', '2021-08-28 11:40:08'),
(92, 'App\\Models\\user', 1, 'token', '1fd57f0cce73a4ea1868dbcdeddb2213f22781f34c0c28525ced136fac4eb484', '[\"*\"]', '2021-09-01 05:05:29', '2021-08-28 11:40:56', '2021-09-01 05:05:29'),
(93, 'App\\Models\\user', 1, 'token', '19f06b8bfc69713166f84949ec18b0b0b5a39526ea7ff6a2ae108bc4f480c6d4', '[\"*\"]', '2021-09-01 10:24:28', '2021-08-28 11:50:52', '2021-09-01 10:24:28'),
(94, 'App\\Models\\user', 1, 'token', '4ba5bb6370d8556ed32008bf2dd0b959d0d477d35ee47b1dd675df44a94f02db', '[\"*\"]', NULL, '2021-08-31 08:14:38', '2021-08-31 08:14:38'),
(95, 'App\\Models\\user', 1, 'token', 'cd188406a21555b308d6439d89ca9e271cedf17b716e46a1af74f7382f0c452e', '[\"*\"]', '2021-09-01 10:59:38', '2021-09-01 10:36:21', '2021-09-01 10:59:38'),
(96, 'App\\Models\\user', 23, 'token', '83c80981559923492addd6842a7a869c5e74f0fabd916fe9f3844494429b0736', '[\"*\"]', NULL, '2021-09-01 11:00:03', '2021-09-01 11:00:03'),
(97, 'App\\Models\\user', 23, 'token', '2d281e01a07bc835337db32f5dc1aef1663920a99921fb31abb572d19aa7080b', '[\"*\"]', '2021-09-02 11:46:39', '2021-09-01 11:02:18', '2021-09-02 11:46:39'),
(98, 'App\\Models\\user', 1, 'token', '7337f5856b0a706eb264e25c8382772e923b7691ada72d338cf39e3dfda5e0ac', '[\"*\"]', '2021-09-02 06:45:22', '2021-09-02 06:44:52', '2021-09-02 06:45:22'),
(99, 'App\\Models\\user', 1, 'token', '07a36fa0179df228de5c7e22f86e413adc7030185f5b2eec08082d7eca76b386', '[\"*\"]', NULL, '2021-09-02 11:03:01', '2021-09-02 11:03:01');

-- --------------------------------------------------------

--
-- Table structure for table `t_absensi`
--

CREATE TABLE `t_absensi` (
  `id_absensi` int(6) NOT NULL,
  `nip` int(12) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_masuk` text NOT NULL,
  `jam_selesai` text DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `alamat_sore` text DEFAULT NULL,
  `keterangan` text NOT NULL,
  `keterangan_sore` text DEFAULT 'alfa',
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_absensi`
--

INSERT INTO `t_absensi` (`id_absensi`, `nip`, `tanggal`, `jam_masuk`, `jam_selesai`, `alamat`, `alamat_sore`, `keterangan`, `keterangan_sore`, `updated_at`, `created_at`) VALUES
(2, 999999, '2021-07-20', '11:23', '16:23', 'null', 'null', 'alfa', 'hadir', '2021-08-19 10:24:54', '2021-08-19 10:24:54'),
(13, 55555, '2021-07-28', '16:24:28', '16:31:22', 'Jl. Khatib Sulaiman No.86, Ulak Karang Sel., Kec. Padang Utara, Kota Padang, Sumatera Barat 25173, Indonesia', 'Jl. Khatib Sulaiman No.86, Ulak Karang Sel., Kec. Padang Utara, Kota Padang, Sumatera Barat 25173, Indonesia', 'alfa', 'hadir', '2021-08-28 02:24:33', '2021-08-28 02:24:33'),
(14, 999999, '2021-07-31', '22:36:07', '22:36:07', 'Jl. Khatib Sulaiman No.86, Ulak Karang Sel., Kec. Padang Utara, Kota Padang, Sumatera Barat 25173, Indonesia', 'Jl. Khatib Sulaiman No.86, Ulak Karang Sel., Kec. Padang Utara, Kota Padang, Sumatera Barat 25173, Indonesia', 'alfa', 'hadir', '2021-08-31 08:36:13', '2021-08-31 08:36:13'),
(15, 999999, '2021-07-31', '22:40:13', NULL, 'Jl. Khatib Sulaiman No.86, Ulak Karang Sel., Kec. Padang Utara, Kota Padang, Sumatera Barat 25173, Indonesia', NULL, 'alfa', 'alfa', '2021-08-31 08:40:15', '2021-08-31 08:40:15'),
(16, 999999, '2021-07-31', '22:47:31', NULL, 'Jl. Khatib Sulaiman No.86, Ulak Karang Sel., Kec. Padang Utara, Kota Padang, Sumatera Barat 25173, Indonesia', NULL, 'alfa', 'alfa', '2021-08-31 08:47:35', '2021-08-31 08:47:35'),
(17, 999999, '2021-07-31', '23:01:39', NULL, 'Jl. Khatib Sulaiman No.86, Ulak Karang Sel., Kec. Padang Utara, Kota Padang, Sumatera Barat 25173, Indonesia', NULL, 'alfa', 'alfa', '2021-08-31 09:01:54', '2021-08-31 09:01:54'),
(18, 999999, '2021-07-31', '23:04:21', NULL, 'Jl. Khatib Sulaiman No.86, Ulak Karang Sel., Kec. Padang Utara, Kota Padang, Sumatera Barat 25173, Indonesia', NULL, 'alfa', 'alfa', '2021-08-31 09:04:24', '2021-08-31 09:04:24'),
(19, 999999, '2021-07-31', '23:18:15', NULL, 'null', NULL, 'alfa', 'alfa', '2021-08-31 09:18:17', '2021-08-31 09:18:17'),
(20, 999999, '2021-07-31', '23:19:06', NULL, 'Jl. Khatib Sulaiman No.86, Ulak Karang Sel., Kec. Padang Utara, Kota Padang, Sumatera Barat 25173, Indonesia', NULL, 'alfa', 'alfa', '2021-08-31 09:19:10', '2021-08-31 09:19:10');

-- --------------------------------------------------------

--
-- Table structure for table `t_agama`
--

CREATE TABLE `t_agama` (
  `id_agama` int(10) NOT NULL,
  `nama_agama` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_agama`
--

INSERT INTO `t_agama` (`id_agama`, `nama_agama`) VALUES
(1, 'islam'),
(2, 'kristen');

-- --------------------------------------------------------

--
-- Table structure for table `t_cuti`
--

CREATE TABLE `t_cuti` (
  `id_cuti` int(12) NOT NULL,
  `nip` int(6) NOT NULL,
  `lama_cuti` int(6) NOT NULL,
  `alasan_cuti` text NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_akhir` date NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `acc` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_cuti`
--

INSERT INTO `t_cuti` (`id_cuti`, `nip`, `lama_cuti`, `alasan_cuti`, `tanggal_mulai`, `tanggal_akhir`, `tanggal`, `acc`) VALUES
(7, 3487, 2, 'hadir', '2021-07-17', '2021-07-10', 'tanggal', 'acc'),
(8, 3487, 2, 'hadir', '2021-07-17', '2021-07-10', 'tanggal', 'acc'),
(9, 1711082025, 2, 'Alfa', '2021-07-09', '2021-07-19', '2021-7-19', 'acc'),
(11, 0, 5, 'hair', '2021-08-19', '2021-08-12', '2021-08-12', 'acc'),
(12, 1711082025, 2, 'Alfa', '2021-07-09', '2021-07-19', '2021-7-19', 'acc'),
(13, 1711082025, 2, 'Alfa', '2021-07-09', '2021-07-19', '2021-7-19', 'acc'),
(14, 1711082025, 2, 'Alfa', '2021-07-09', '2021-07-19', '2021-7-19', 'acc'),
(15, 1711082025, 2, 'Alfa', '2021-07-09', '2021-07-19', '2021-7-19', NULL),
(16, 1711082025, 2, 'Alfa', '2021-07-09', '2021-07-19', '2021-7-19', NULL),
(17, 999, 2, 'tidak bisa hadir', '2021-07-13', '2021-07-18', 'Aug 13, 2021 3:06:30 AM', 'acc'),
(18, 3232, 2, 'sakit', '2021-07-16', '2021-07-18', '16 Agu 2021 17.19.26', NULL),
(19, 3232, 2, 'izin', '2021-07-16', '2021-07-18', '16 Agu 2021 17.56.56', NULL),
(20, 3232, 2, '1', '2021-07-16', '2021-07-18', '16 Agu 2021 18.00.36', NULL),
(21, 3232, 2, 'f', '2021-07-18', '2021-07-26', '16 Agu 2021 18.01.00', NULL),
(22, 999999, 2, 'izin hpacara', '2021-07-17', '2021-07-17', '17 Agu 2021 10.03.54', NULL),
(23, 999999, 2, 'telah melakukan upacara benderaaaaaaaaaa', '2021-07-17', '2021-07-20', '17 Agu 2021 10.05.05', NULL),
(24, 999999, 2, 'sedang melakukan upacara bendera di gedung marapi', '2021-07-17', '2021-07-19', '17 Agu 2021 10.06.05', NULL),
(25, 55555, 2, 'sakit', '2021-07-20', '2021-07-29', 'Aug 28, 2021 7:04:36 AM', NULL),
(26, 999999, 2, 'sakitt', '2021-07-28', '2021-07-30', 'Aug 28, 2021 10:36:49 PM', NULL),
(27, 999999, 2, 'sakit', '2021-07-31', '2021-07-01', '31 Agu 2021 01.16.35', 'acc');

-- --------------------------------------------------------

--
-- Table structure for table `t_informasi`
--

CREATE TABLE `t_informasi` (
  `id_informasi` int(10) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `descripsi` text NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_informasi`
--

INSERT INTO `t_informasi` (`id_informasi`, `judul`, `descripsi`, `gambar`) VALUES
(1, 'kelulusan', 'lalala', 'kelulusan.png'),
(2, 'menampilkan Data', 'halal', 'menampilkan Data.png'),
(3, 'jukekuasaan sekolah', 'kejuaraan', 'data:image/jpeg;base64,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'),
(4, 'lokal 1 a memenangkan lomba', 'Kabupaten Pati – Padatnya agenda kepala daerah pada Sabtu (30/3), namun Bupati Haryanto menyempatkan menghadiri lomba MAPSI tingkat SMP se- Kabupaten Pati yang dilaksanakan di SMP Negeri 1 Jaken. Hadir pada acara tersebut Camat Jaken, Danramil Jaken, Kepala sekolah dan guru pembimbing. Lomba Mapsi ini diikuti oleh 583 peserta yang berkompetisi di tujuh bidang lomba mata pelajaran.', 'fikri galau.png');

-- --------------------------------------------------------

--
-- Table structure for table `t_jabatan`
--

CREATE TABLE `t_jabatan` (
  `id_jabatan` int(10) NOT NULL,
  `nama_jabatan` varchar(30) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_jabatan`
--

INSERT INTO `t_jabatan` (`id_jabatan`, `nama_jabatan`, `updated_at`, `created_at`) VALUES
(1, 'kepala sekolah', '2021-07-04 12:31:28', '2021-07-04 12:31:57'),
(2, 'admin', '2021-07-04 12:31:28', '2021-07-04 12:31:57'),
(3, 'bendahara', '2021-07-04 05:32:02', '2021-07-04 05:32:02'),
(4, 'seketaris', '2021-07-04 05:32:52', '2021-07-04 05:32:52');

-- --------------------------------------------------------

--
-- Table structure for table `t_pegawai`
--

CREATE TABLE `t_pegawai` (
  `id_pegawai` int(12) NOT NULL,
  `nip` varchar(15) NOT NULL,
  `nama_pegawai` varchar(35) NOT NULL,
  `jabatan_id` int(1) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_tlp` varchar(12) NOT NULL,
  `alamat_pegawai` varchar(100) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `tmp_lahir` varchar(40) NOT NULL,
  `id_agama` int(10) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `pendidikan` varchar(30) NOT NULL,
  `password` varchar(32) DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_pegawai`
--

INSERT INTO `t_pegawai` (`id_pegawai`, `nip`, `nama_pegawai`, `jabatan_id`, `email`, `no_tlp`, `alamat_pegawai`, `tgl_masuk`, `tmp_lahir`, `id_agama`, `gender`, `pendidikan`, `password`, `foto`, `updated_at`, `created_at`) VALUES
(1, '999999', 'hidayatul sidiq', 2, 'admin@gmail.com', '82170911098', 'di pasaf kuliner', '2020-02-02', 'padang panjang 3 juli 1999', 1, 'Laki laki', 'sma', NULL, '999999.jpg', '2021-08-19 17:15:31', '2021-08-19 17:15:31'),
(4, '55555', 'admin', 2, 'admin@gmail.com', 'kotlin.Unit', 'secata b', '2021-07-27', '2021-7-11', 1, 'Laki laki', 'sma', NULL, '55555.jpg', '2021-08-27 08:07:44', '2021-08-27 08:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE `t_user` (
  `id_user` int(6) NOT NULL,
  `level_id` int(2) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `last_login` int(6) NOT NULL,
  `fhoto` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `nip` int(30) NOT NULL,
  `nohp` bigint(30) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `nip`, `nohp`, `password`, `remember_token`, `created_at`, `updated_at`, `level`) VALUES
(1, 'hidayatul sidiq', 'admin@gmail.com', NULL, 999999, 82170911098, '$2y$10$FxMMLSnF.5jXv46.TgtPJe3QIfkSr2f8HzFd7hU2O1QI/hop4ZRdK', NULL, '2021-06-29 09:42:29', '2021-06-29 09:42:29', 1),
(10, 'kepada sekolah', 'kepala@gmail.com', NULL, 87654321, 232545224, '$2y$10$mbhRD1j4pHMcefT.x6PfjOUgifcwfRQe6MJJOi1rRIvCphIIm/6VW', NULL, '2021-08-27 01:18:06', '2021-08-27 01:18:06', 2),
(11, 'ari', 'ari@gmail.com', NULL, 1711082050, 81275327325, '$2y$10$LGzx08gkjCGx/s/QfFkqtef/omgFUM9YlAXSfNclgAITBkQH2kA66', NULL, '2021-08-28 02:14:23', '2021-08-28 02:14:23', 2),
(23, 'ani', 'ani@gmail.com', NULL, 343434, 82170911098, '$2y$10$CrgBYAnIM7GHN05co1Nq0.3XcQbWUYz/i.4btgxBMypLiDyOY6VZ2', NULL, NULL, NULL, 2),
(24, 'tws', 'tees@gmail.com', NULL, 4434343, 876868678, '$2y$10$gg.nR/XGxVA2Ruh.tGsE8.kjB8x/cNG6TLpueKBi4frf3/tgVhMNW', NULL, NULL, NULL, 2);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `t_absensi`
--
ALTER TABLE `t_absensi`
  ADD PRIMARY KEY (`id_absensi`);

--
-- Indexes for table `t_agama`
--
ALTER TABLE `t_agama`
  ADD PRIMARY KEY (`id_agama`);

--
-- Indexes for table `t_cuti`
--
ALTER TABLE `t_cuti`
  ADD PRIMARY KEY (`id_cuti`);

--
-- Indexes for table `t_informasi`
--
ALTER TABLE `t_informasi`
  ADD PRIMARY KEY (`id_informasi`);

--
-- Indexes for table `t_jabatan`
--
ALTER TABLE `t_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `t_pegawai`
--
ALTER TABLE `t_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`id_user`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `t_absensi`
--
ALTER TABLE `t_absensi`
  MODIFY `id_absensi` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `t_agama`
--
ALTER TABLE `t_agama`
  MODIFY `id_agama` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t_cuti`
--
ALTER TABLE `t_cuti`
  MODIFY `id_cuti` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `t_informasi`
--
ALTER TABLE `t_informasi`
  MODIFY `id_informasi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `t_jabatan`
--
ALTER TABLE `t_jabatan`
  MODIFY `id_jabatan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `t_pegawai`
--
ALTER TABLE `t_pegawai`
  MODIFY `id_pegawai` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `t_user`
--
ALTER TABLE `t_user`
  MODIFY `id_user` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
