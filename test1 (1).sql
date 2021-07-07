-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 07, 2021 at 12:17 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test1`
--

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2014_10_12_000000_create_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0567166e534ce930c2ee224250bc6f87339a155028a362997225b0f3dcb06dce588ed651f1578857', 2, 1, 'authToken', '[]', 0, '2021-07-07 00:00:05', '2021-07-07 00:00:05', '2022-07-07 05:30:05'),
('06e061337780b04151258467393b0a7418d9d5b9cb145a3536f6306ace2c375ac6981cb6e7678bf0', 2, 1, 'authToken', '[]', 0, '2021-07-06 23:39:37', '2021-07-06 23:39:37', '2022-07-07 05:09:37'),
('07a0e44870a66057fa826fcc98420ac1b7a6bda8ee0bf9baec8ef24615fc74f3a461c808d685644d', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:16:35', '2021-07-06 04:16:35', '2022-07-06 09:46:35'),
('07f169987593556cd539015825fb54274ff0d0480ada267910368f1a48dc89e87863667b73a405bf', 2, 1, 'authToken', '[]', 0, '2021-07-06 20:56:27', '2021-07-06 20:56:27', '2022-07-07 02:26:27'),
('08d6251f5c301d8f932f33cc45de89a0f9c8cffc5d7436b2698d5bf3ccfa1f172237353139f764ac', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:31:43', '2021-07-06 04:31:43', '2022-07-06 10:01:43'),
('0cb7c9269ff26b53ab5565c63bf09f9239cc65f7ac3cdf27255f26165af25c9de11b9a97afe1bc49', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:36:26', '2021-07-06 07:36:26', '2022-07-06 13:06:26'),
('0e0431068bf2ba5020ec41ea1e984519ad260317d8047d9c66560906b0dbd4bc913d906ea52cfe2f', 2, 1, 'authToken', '[]', 0, '2021-07-06 05:33:01', '2021-07-06 05:33:01', '2022-07-06 11:03:01'),
('0ee1109d917524177a8cad1c6ff6fbf52efccdcd45456c6ab61416c6426fc59a1a7b59f260ce7dc9', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:26:45', '2021-07-06 07:26:45', '2022-07-06 12:56:45'),
('0fb773b13d5fd3872f3be59ea63b36fe0ed50ec9a293207615b7d61de8d99b0f1adc8fe77b81c7b3', 2, 1, 'authToken', '[]', 0, '2021-07-06 02:39:00', '2021-07-06 02:39:00', '2022-07-06 08:09:00'),
('112a07ebaedac90d64b2712fa34333125671ecb314e3b46a81c55298b1006ca5ef69d3a286745677', 2, 1, 'authToken', '[]', 0, '2021-07-06 05:43:07', '2021-07-06 05:43:07', '2022-07-06 11:13:07'),
('140a578d909574064f72ea88b9f01ada2a382ef44ca9805b50d0695637f3ab80f70330989f5a9bcf', 2, 1, 'authToken', '[]', 0, '2021-07-06 21:17:31', '2021-07-06 21:17:31', '2022-07-07 02:47:31'),
('151d6aaa093aaee0095cadf5b8948e5132c21e809066a6f43aa11622a59729716a9af762b7193aa7', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:47:20', '2021-07-06 04:47:20', '2022-07-06 10:17:20'),
('16174a63bc2df400a2ad8db3b698c0bb66020360f24c2be5bde88b15eb0c65b25e63837a602e9883', 2, 1, 'authToken', '[]', 0, '2021-07-05 23:41:52', '2021-07-05 23:41:52', '2022-07-06 05:11:52'),
('1657a31864a51fa393a78c93fb649996e1c6b85887eb95401dd6e42802101e1c1602928cd4d3f226', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:37:43', '2021-07-06 07:37:43', '2022-07-06 13:07:43'),
('19dc14896bd1087c58ec75da9002b27f007cbe4238feeb03678ebd1d954f4a5b26d5deba96be3ac5', 2, 1, 'authToken', '[]', 0, '2021-07-05 23:26:58', '2021-07-05 23:26:58', '2022-07-06 04:56:58'),
('1b03209db145aa3309829bcb5e14f8d4c248dd94654071cc2a378da46ea87128b5c40e199876a96e', 2, 1, 'authToken', '[]', 0, '2021-07-06 21:04:29', '2021-07-06 21:04:29', '2022-07-07 02:34:29'),
('1bd014cde602415ca93e38b71531061f8fd5be65d53d93fe60347d2911ce09960e8fa4c6476d481a', 2, 1, 'authToken', '[]', 0, '2021-07-06 23:54:12', '2021-07-06 23:54:12', '2022-07-07 05:24:12'),
('1db7dcc3561ffa0e82456aca1d8ee04556794f1f99e878d607c47ae59292ae3048757f1b8a59e831', 2, 1, 'authToken', '[]', 0, '2021-07-06 05:08:40', '2021-07-06 05:08:40', '2022-07-06 10:38:40'),
('1dff06babf7532241f84e374edf126c83cc64b2bdfbe15ea910aebc1c66da8cac8b3eae47956d363', 2, 1, 'authToken', '[]', 0, '2021-07-06 05:50:42', '2021-07-06 05:50:42', '2022-07-06 11:20:42'),
('1ef149f7bfcaf0d51db49ae335fa16d0aea15e7b4d9923bbfcc0691e07f36cdcf90b3858e17f8cf5', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:14:54', '2021-07-06 07:14:54', '2022-07-06 12:44:54'),
('20b30fd4db17524b125977fab804745c02c72af4b6ff9069a26a8ec56e4834508abbfdab74bef5b6', 2, 1, 'authToken', '[]', 0, '2021-07-06 03:43:13', '2021-07-06 03:43:13', '2022-07-06 09:13:13'),
('21cd02dccfe445ce5bf67c32a3f53f6b91a315138316da6f0997b3e2d7c921f02eeccf37ac9dd120', 2, 1, 'authToken', '[]', 0, '2021-07-06 05:48:40', '2021-07-06 05:48:40', '2022-07-06 11:18:40'),
('23a665395c08e6c241026327fc26028d38a91b1359c6c82b66c8576b3190973badaf8da810c3a4d8', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:36:21', '2021-07-06 07:36:21', '2022-07-06 13:06:21'),
('25d8322fc90f10e6edd8a31b4bc3dcf9248583d602f278f11b0afc71674123978994cda5ba3a3b0c', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:12:19', '2021-07-06 07:12:19', '2022-07-06 12:42:19'),
('26c1593cdc7b075067916a2c66850f588bdae55f679b8cd481b5feebd0983de70057f9c2ee7f1b2a', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:48:31', '2021-07-06 04:48:31', '2022-07-06 10:18:31'),
('2708fa769b31ead8fff4b21b61980f7972317f7a8b68d40682305f9d101ee18e397651fbe129debc', 2, 1, 'authToken', '[]', 0, '2021-07-06 06:52:21', '2021-07-06 06:52:21', '2022-07-06 12:22:21'),
('27c62469718334002bc772cbd594bd795b3214d96461163226f06aa0a52548fa61b4a9109cc943e7', 2, 1, 'authToken', '[]', 0, '2021-07-06 05:02:27', '2021-07-06 05:02:27', '2022-07-06 10:32:27'),
('27d9c9d845f9c4086b6565cc9c2c5a1157e269c744ad7e6e9751bf4049a51a963a7a54bd9a390b49', 2, 1, 'authToken', '[]', 0, '2021-07-06 01:06:44', '2021-07-06 01:06:44', '2022-07-06 06:36:44'),
('2a31ec2a6fe2d557651b5505a3fa953ad9cb388c9db2ae7395b15cae0dfd48d2fe94a0e04cc772a6', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:37:10', '2021-07-06 04:37:10', '2022-07-06 10:07:10'),
('2a712d598d64f615c90432b4db6c9626b89817e638d46ecf59993965893ae04e960d13957a992951', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:15:58', '2021-07-06 07:15:58', '2022-07-06 12:45:58'),
('2aa32a3290a2707153485e4318d7e30369941d62a7210c36c6a6b8eb1bd54bb029d5f107d0449b33', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:28:16', '2021-07-06 07:28:16', '2022-07-06 12:58:16'),
('2c5ddbd7c5d31d94e5b29d9407fbc4c7c8214020d0d55b06948732188737d6f4e02976dc61e625de', 2, 1, 'authToken', '[]', 0, '2021-07-06 01:34:14', '2021-07-06 01:34:14', '2022-07-06 07:04:14'),
('2f09ffce0b7c3f91429b23c99a529fe89fb2ce2f879f5efea09e5ecaf6d2cb55c821658b60069855', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:30:07', '2021-07-06 07:30:07', '2022-07-06 13:00:07'),
('3332940c590f88a192534651a1c82e2c6917cee64b7add51f49dd7b0362aff98c3f930b3c6d151c3', 1, 1, 'authToken', '[]', 0, '2021-07-07 04:44:50', '2021-07-07 04:44:50', '2022-07-07 10:14:50'),
('34b4f79f8451b91ce690d3ecebcd1cda98268588ed484e31aa918e6f5341049db70b2e488ca5fc27', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:27:10', '2021-07-06 07:27:10', '2022-07-06 12:57:10'),
('359b98b2f40b7b4f0cd6e28e730f28525b4001c3e403dc759d5fc1db6ee2efb259689f7a1f95769f', 2, 1, 'authToken', '[]', 0, '2021-07-06 23:47:50', '2021-07-06 23:47:50', '2022-07-07 05:17:50'),
('36a4d3a6eb57426359cd85757f8303f4572b0d1ca97f5c195ad895acfee51aeff8fcfe1a557f8755', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:35:53', '2021-07-06 07:35:53', '2022-07-06 13:05:53'),
('3783c720b508db9c5d30207f59bfd97f5f7d3aa9ba6afbec5ea90d8441dc51633ad7ecab55ae1313', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:35:07', '2021-07-06 07:35:07', '2022-07-06 13:05:07'),
('37f19a8aedb24f401de9880b2fc527f902f8443d11c65f6441629608fbb34fbcaf3b837ccbc88245', 2, 1, 'authToken', '[]', 0, '2021-07-06 06:30:47', '2021-07-06 06:30:47', '2022-07-06 12:00:47'),
('383d2b4874e74e37753ba62d7994bacfd76f3d45b44d9d151a2083ab3c1e16a32bd34a752cb1a784', 2, 1, 'authToken', '[]', 0, '2021-07-06 23:41:45', '2021-07-06 23:41:45', '2022-07-07 05:11:45'),
('3a37df785597c608917089153235b04039116d0826caa052dd7fb819205ed619610f063a574f271f', 2, 1, 'authToken', '[]', 0, '2021-07-06 00:44:45', '2021-07-06 00:44:45', '2022-07-06 06:14:45'),
('3abfea59a2aa5989ff2fa4727e72a6859311441f6b1603e3d6e7499868a7b24ef1215e1cb3710bdf', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:29:01', '2021-07-06 07:29:01', '2022-07-06 12:59:01'),
('3bdeef95b60be4ede462e6e5498d221f40203f1ffa4ac73d3a4424dcaff5256e3b65ed0754616555', 2, 1, 'authToken', '[]', 0, '2021-07-06 23:38:18', '2021-07-06 23:38:18', '2022-07-07 05:08:18'),
('3ec955c3ab1e04866bc183632556747c671cd2abfd1dee4a0566744d5092e34a85452a628f8a0065', 2, 1, 'authToken', '[]', 0, '2021-07-06 23:53:55', '2021-07-06 23:53:55', '2022-07-07 05:23:55'),
('402854e654825c4006ac3eb4d64109842654e3ae6706c4a9e80c481d5a5827c466291a8c1c1e1e5f', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:21:04', '2021-07-06 07:21:04', '2022-07-06 12:51:04'),
('40715ffb82df0cb9284659c4f29fa6d802797659eb323223cabc4d2821600877b01a0461f57a4bd0', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:30:30', '2021-07-06 04:30:30', '2022-07-06 10:00:30'),
('42e3965b617cc248a92adf129f7056177a5daa307cbe906e3a6e8580897033785303b310a4b0a8c7', 2, 1, 'authToken', '[]', 0, '2021-07-05 23:37:51', '2021-07-05 23:37:51', '2022-07-06 05:07:51'),
('43bf3c9d8afee0a661101a4b440c98eb54b896fb698d3c62dee03a770b5ac3942859c35b3cedee36', 2, 1, 'authToken', '[]', 0, '2021-07-06 23:38:34', '2021-07-06 23:38:34', '2022-07-07 05:08:34'),
('4425cb5cf8bf82cd91c00f7576324c48bc219d94dfbbfa3f6d7da2059225cf872bc05be38889fc49', 2, 1, 'authToken', '[]', 0, '2021-07-06 05:52:41', '2021-07-06 05:52:41', '2022-07-06 11:22:41'),
('4617ec9db2536e0ebe6aba758e58096d1f7680add2dcc2b70433c8e548c556c93d84dbc404887f84', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:50:56', '2021-07-06 07:50:56', '2022-07-06 13:20:56'),
('47e63927559b09db57123bcf5441f053a63bc8f2bbdffdddd4aa3edbd6483427695bb6cc394be745', 2, 1, 'authToken', '[]', 0, '2021-07-06 03:59:24', '2021-07-06 03:59:24', '2022-07-06 09:29:24'),
('48131edf05f2b0c7b482ca1c96c15b653348a08fc867c2510a9cc96b752737a5bc21b2dd501d4156', 2, 1, 'authToken', '[]', 0, '2021-07-06 06:34:24', '2021-07-06 06:34:24', '2022-07-06 12:04:24'),
('48351c369d1756aab2b2b84af6c5fc5170b735fe3a5f69357fc9e3ff959a1a7335336e8a61a21e4d', 2, 1, 'authToken', '[]', 0, '2021-07-06 05:46:37', '2021-07-06 05:46:37', '2022-07-06 11:16:37'),
('4ac7d605cf4f7b60e2140c19e32d6e806520e2b6f038ae9c0b26b57f7b8219d2eba53ae81be2356d', 2, 1, 'authToken', '[]', 0, '2021-07-06 21:33:50', '2021-07-06 21:33:50', '2022-07-07 03:03:50'),
('4c00a8cc2b96e5d06c454c0b53398e07c1064680bae1c874d7fe68f043081fa557737caca712abb0', 2, 1, 'authToken', '[]', 0, '2021-07-05 08:20:05', '2021-07-05 08:20:05', '2022-07-05 13:50:05'),
('4d8bdc435a9c6b408d51cd93709be6289899fa4211865996873c6828eeba3227fde1a9b7828c6211', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:53:56', '2021-07-06 04:53:56', '2022-07-06 10:23:56'),
('4ff817f8d574ba244414c8d82ad8cebcfd1c1b8e9e6c059318b2e60a1901fd6f64ae0d1919515e71', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:04:58', '2021-07-06 07:04:58', '2022-07-06 12:34:58'),
('50662c68a188b54712344bf2c1ede63060bebb41a7b16597c653fd03d87cbb7699d27b7bf0fcde28', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:42:58', '2021-07-06 04:42:58', '2022-07-06 10:12:58'),
('509eeb59a6ac863b0b72b3b7bd589234e917705f0da35c6255a709f89ac105bef291b7e9d298034b', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:36:33', '2021-07-06 07:36:33', '2022-07-06 13:06:33'),
('516aef997dc2bd04e0bd0649d554239c48473976818eda43898795ad27ce05348bd44e5a376211b6', 2, 1, 'authToken', '[]', 0, '2021-07-06 05:45:57', '2021-07-06 05:45:57', '2022-07-06 11:15:57'),
('5475e3631835cf171da0019000454a83495bc24cb3cae2929c6e5aacc5c729eb220be3b4cf9b10fd', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:29:27', '2021-07-06 04:29:27', '2022-07-06 09:59:27'),
('552090e6444666b4d719928c1d22a6a47c7dd0e41278b9c9d10efea2570c7e5b4eb516fb127e1b72', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:56:33', '2021-07-06 04:56:33', '2022-07-06 10:26:33'),
('5697bc3574744577050e6a8f9181c52a81fb1aa403b75d172f5e4aa757894d690955bf795ad8b154', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:50:35', '2021-07-06 04:50:35', '2022-07-06 10:20:35'),
('58336accba4fe6bfa561ccb58d0b94b5443baea1a65202f9ee4e1a54873f35a922826d33c07d096b', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:34:20', '2021-07-06 04:34:20', '2022-07-06 10:04:20'),
('58c1a26f7caba25e28ce7fd459a5273d5e0d8dd933a2e79548d51603c6620800053a84b82ead2923', 2, 1, 'authToken', '[]', 0, '2021-07-06 01:07:09', '2021-07-06 01:07:09', '2022-07-06 06:37:09'),
('59931040d965997653c51f594b753d8ccac60e32623c614bf6c213ed0846d0a3e70960c85a1a1325', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:23:49', '2021-07-06 04:23:49', '2022-07-06 09:53:49'),
('59b1e7561e36f15bed837e328dc98e3ac03a549eae1e24a02d5dfd5575d58f5a77c3e862ba6ea086', 2, 1, 'authToken', '[]', 0, '2021-07-06 21:31:12', '2021-07-06 21:31:12', '2022-07-07 03:01:12'),
('5b7394bc30c104ce95c2d2cc90dc80814e4285d5a88a5de442f8fd75f2db5d19051f36e751ceb52e', 2, 1, 'authToken', '[]', 0, '2021-07-05 08:31:53', '2021-07-05 08:31:53', '2022-07-05 14:01:53'),
('5c317be3218c007ee67e40b8116590f5b81c2b5b82a1db16b079adc0a38db5cab2af0abc4c7ab11d', 2, 1, 'authToken', '[]', 0, '2021-07-06 05:52:43', '2021-07-06 05:52:43', '2022-07-06 11:22:43'),
('5d3f356e2149d5b469f3b0a211dd85a64d1a7959249ee8fc2a5a74dd0a3ded67a6eddcaeab91c6cd', 2, 1, 'authToken', '[]', 0, '2021-07-06 06:34:34', '2021-07-06 06:34:34', '2022-07-06 12:04:34'),
('5db38d5dd70e416e8a77f8cedd4de5c9abd866e67992f600a0e5a1987e30619ecc75e30e63f195c2', 2, 1, 'authToken', '[]', 0, '2021-07-06 02:38:53', '2021-07-06 02:38:53', '2022-07-06 08:08:53'),
('5e284fc6438a5b84c153f92d8a2dbfa9ba2282afcb2294c89936db6ac75bb88281d8e805dd96c86d', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:44:14', '2021-07-06 04:44:14', '2022-07-06 10:14:14'),
('60e2159ea80a12eb3e78737dca23522bcef268677b83a2be23873c4f103f12e9f906de74b97045c4', 2, 1, 'authToken', '[]', 0, '2021-07-05 23:53:11', '2021-07-05 23:53:11', '2022-07-06 05:23:11'),
('662a591050def050447bd47494b8655ac09af4752a86ba74953f40d6a05826b4f4a12e3c4369c162', 2, 1, 'authToken', '[]', 0, '2021-07-06 00:44:22', '2021-07-06 00:44:22', '2022-07-06 06:14:22'),
('66c876759bc67fa0f4887578a248084e393e34ef4058f09119e38fb49363c33b2796d19120e0ed62', 2, 1, 'authToken', '[]', 0, '2021-07-06 23:40:01', '2021-07-06 23:40:01', '2022-07-07 05:10:01'),
('6b0057ff4012df5440126c5ca0a29d52e6e395468e34a487ca8dfd71bb0db12c68b148f4709b74c7', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:37:05', '2021-07-06 07:37:05', '2022-07-06 13:07:05'),
('6b08132464253503395c75ec1c04c91864d69c63b289bbd9e512798da76cd11157dd2947429e2aed', 2, 1, 'authToken', '[]', 0, '2021-07-06 23:27:13', '2021-07-06 23:27:13', '2022-07-07 04:57:13'),
('6be1df4e21e3e0409c79ec5fbb91b5c215d688effb7b5f8a1f5786461b4ce832f8a917607d51f50c', 2, 1, 'authToken', '[]', 0, '2021-07-06 03:58:21', '2021-07-06 03:58:21', '2022-07-06 09:28:21'),
('6bfeca10c0de2df91b48c999b94805a23aef9b635e32d30e15508ba407210d50323c54d08ca544ed', 2, 1, 'authToken', '[]', 0, '2021-07-06 03:58:00', '2021-07-06 03:58:00', '2022-07-06 09:28:00'),
('6ea2333fdd043e4256d277a7efaa0cc8ecba3d535d6bf6304e62d2a394536aa98b38a5b26b831a39', 2, 1, 'authToken', '[]', 0, '2021-07-06 05:48:18', '2021-07-06 05:48:18', '2022-07-06 11:18:18'),
('6ec6e63eb372a9f2a1e7f20c308239e8e485daf4607b10a604c1927ad6fec9ba9b89e2387a8a777a', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:41:32', '2021-07-06 04:41:32', '2022-07-06 10:11:32'),
('6ff1c48ad2b202087e3a21124f14a31bc0aba8c17cd0bc542c4f10ef27de31676d7d00da04929ccf', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:26:11', '2021-07-06 07:26:11', '2022-07-06 12:56:11'),
('731ab67a5ee47e9c721ac4c1c971a3f6a00eff2dd50e6b77b1ae4f2cad1df76e89d068b407159936', 2, 1, 'authToken', '[]', 0, '2021-07-06 00:47:36', '2021-07-06 00:47:36', '2022-07-06 06:17:36'),
('73f2c7527ff5ce420aa0331fb8c6639a60d507e575f32f402b0cf24e8fa043130ca6cd6d6868d774', 2, 1, 'authToken', '[]', 0, '2021-07-05 23:45:05', '2021-07-05 23:45:05', '2022-07-06 05:15:05'),
('7418b0d3676fc2015e1b960fb0a9263df6243f4793dff9000f21bd35fcffee4bf7db1c567d656005', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:33:17', '2021-07-06 04:33:17', '2022-07-06 10:03:17'),
('757ccafa9f1c6809e28495d98a5322136a304ce8fba323f65c633fb2505d51de2d126fc3eae0d08c', 2, 1, 'authToken', '[]', 0, '2021-07-06 05:04:57', '2021-07-06 05:04:57', '2022-07-06 10:34:57'),
('789e5f221760e76fd64e75f7251cbe9e075a4ce1f27a6bfa1da20267142b021dc1be05d244367bf5', 2, 1, 'authToken', '[]', 0, '2021-07-06 05:02:44', '2021-07-06 05:02:44', '2022-07-06 10:32:44'),
('789eb6085fcd1ee03cb7ca65dc3bd2297111aa313b33699727d7f9ad5defbb84fc67a74389c44842', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:35:21', '2021-07-06 07:35:21', '2022-07-06 13:05:21'),
('7905d01ee1b53a333ea2337845b260632f446d48366648223ab31a728388d2149e5d4183da8bdc80', 2, 1, 'authToken', '[]', 0, '2021-07-06 06:51:58', '2021-07-06 06:51:58', '2022-07-06 12:21:58'),
('7a67f7f76c0db3bee7a605c184f0060bccf26219ccf5706018d02db8b4468cf9184dc022dee9a676', 2, 1, 'authToken', '[]', 0, '2021-07-05 08:32:10', '2021-07-05 08:32:10', '2022-07-05 14:02:10'),
('7b286c64aaa664d1f700cf2ea76815def1dc7379c444a8e2fc771a08b9f08a460d2246d7f2c4c3e6', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:46:59', '2021-07-06 04:46:59', '2022-07-06 10:16:59'),
('7b3a9d497e6c076124ec02a6bdc23eff58adf4a7b4871c9960e2dafddbcada7d6c8fcec02af87c2b', 2, 1, 'authToken', '[]', 0, '2021-07-06 03:43:01', '2021-07-06 03:43:01', '2022-07-06 09:13:01'),
('7d5971b6887541e8057459fe26e74e61ef9f773ca20b97eba8934911ecdd1895b06bdd8704b08b38', 2, 1, 'authToken', '[]', 0, '2021-07-06 00:47:36', '2021-07-06 00:47:36', '2022-07-06 06:17:36'),
('80e6d16bf7d4e1fbe4cd4ef3a09d72760cf62625658a7ea5b94f82ecc1a0adff0b2d999cc5a03711', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:32:37', '2021-07-06 07:32:37', '2022-07-06 13:02:37'),
('83fe150c5fef511ff987c99aad6d7c0e8b12e400afee83ac3e3275aed8fcecbad96739e0cf56b606', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:56:32', '2021-07-06 04:56:32', '2022-07-06 10:26:32'),
('84bdc9935a361ce52eb34cda986d3b279a126088b61e9d8d86cee9a05cc0926c0835d5cc10d954d7', 2, 1, 'authToken', '[]', 0, '2021-07-06 23:26:42', '2021-07-06 23:26:42', '2022-07-07 04:56:42'),
('84fe802f4e8ae3dea9e3f6d3c76eb8248301950778f47a3ee6aea6014faf039a2b73c024d3d451ea', 2, 1, 'authToken', '[]', 0, '2021-07-06 02:40:10', '2021-07-06 02:40:10', '2022-07-06 08:10:10'),
('8807aa21884e7a13f09c7fe2118fdd73b928ab9909508142b1891115659c09691bea23c944537ccf', 2, 1, 'authToken', '[]', 0, '2021-07-06 06:32:36', '2021-07-06 06:32:36', '2022-07-06 12:02:36'),
('8872d4ed30bfba7ef4a4074f2fc16172bd034c13703476243e50cb69dbf2353067cfcd91077b99fb', 2, 1, 'authToken', '[]', 0, '2021-07-06 06:34:00', '2021-07-06 06:34:00', '2022-07-06 12:04:00'),
('89f5e61be1b612521a1a85eef97a1550c461b61d2a52a967f57923b165a06d7e62688240fff591d2', 2, 1, 'authToken', '[]', 0, '2021-07-06 02:40:27', '2021-07-06 02:40:27', '2022-07-06 08:10:27'),
('8a046fa90a0695586ebdad382fe240a4ca348b1598afaaae960bde50de2e590c783d65a3d9954076', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:48:53', '2021-07-06 07:48:53', '2022-07-06 13:18:53'),
('8a3b11d4cfef58cb82c7d36b53b7af860b0079ea3b21325a9c7732e54264e4c2923199c194901a9d', 2, 1, 'authToken', '[]', 0, '2021-07-06 01:08:06', '2021-07-06 01:08:06', '2022-07-06 06:38:06'),
('8ba1236e4560e21ff6bbac6b3fd636dfc22cce1ab479a550cbc2e83aa77513dae4a0632dedf98efa', 2, 1, 'authToken', '[]', 0, '2021-07-06 08:45:02', '2021-07-06 08:45:02', '2022-07-06 14:15:02'),
('8cd0672a61cbb9abaa66d5c96005566d04c3272265dad3d2cf8df7088cb73e7bf960159c59a28238', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:21:15', '2021-07-06 04:21:15', '2022-07-06 09:51:15'),
('8cf99f04291e2380a9b22c3f0de48dfccd88c270ed7f384477e1d14328624950105894e9d5498497', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:20:46', '2021-07-06 04:20:46', '2022-07-06 09:50:46'),
('90a1e45c78385c5585c1419d81e40ef0794ee7a8332dea66ee105c9971a89799267a86556fc7369a', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:29:42', '2021-07-06 04:29:42', '2022-07-06 09:59:42'),
('90fc8831a3eec12dd4e1559e1e329f75ecfdcbccad6ae93de6a114bdad12f2f9315efcdc9dd83eea', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:07:39', '2021-07-06 07:07:39', '2022-07-06 12:37:39'),
('93841bfbd136f2fa108c528556ed6a0abee1c0f5ce8f8be9b3a39bdb5f72e95ec0c350afdf531ca5', 2, 1, 'authToken', '[]', 0, '2021-07-06 05:09:33', '2021-07-06 05:09:33', '2022-07-06 10:39:33'),
('984e690ba47b6dd791184083d223294cdfd801bf0459ced0549a546e9027d92abe4f12b01e36d995', 2, 1, 'authToken', '[]', 0, '2021-07-06 08:12:32', '2021-07-06 08:12:32', '2022-07-06 13:42:32'),
('98a735d5b901b0b50211d4cb3361fdeb2c973ba5d022969a50c34967a1809f6438cb63458f567046', 2, 1, 'authToken', '[]', 0, '2021-07-06 03:44:43', '2021-07-06 03:44:43', '2022-07-06 09:14:43'),
('9b680ad727958316f20224e7489522d4bf576aee446d20ae9c3b82b4462cd9896b2f662d0b5d670c', 2, 1, 'authToken', '[]', 0, '2021-07-06 05:49:25', '2021-07-06 05:49:25', '2022-07-06 11:19:25'),
('9bed65feaa55c702acc0113b7a21058d13674ae5d1cbb6b15eccc1557d6a7e49dfb1733856005a16', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:16:33', '2021-07-06 07:16:33', '2022-07-06 12:46:33'),
('9cdf7fc666982cab442fd0520796559a1e8515cf91bd9ab67b67033f5c1649be4d72616fe912f5e0', 2, 1, 'authToken', '[]', 0, '2021-07-06 03:59:30', '2021-07-06 03:59:30', '2022-07-06 09:29:30'),
('9ceb34a4c5cbe6e1d5f1f51e3c792acafad445258f9b6eae58aad881531eaaa53d418a4036dfbb27', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:43:28', '2021-07-06 07:43:28', '2022-07-06 13:13:28'),
('9eeb8707bef5672eda306a320c6dfb396ed4f0c2c0b1e74703dfbcd36d913415995dc787fcb5017b', 2, 1, 'authToken', '[]', 0, '2021-07-06 03:43:47', '2021-07-06 03:43:47', '2022-07-06 09:13:47'),
('a1951b6b64cd6e097b4eb2f45bcafdfee0e790413fac874780997d7b8f01e9a23e08ab845581e9d1', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:56:49', '2021-07-06 04:56:49', '2022-07-06 10:26:49'),
('a1a5d09eccf25a9680e3ba42873af9c4b99d6c31892d58b31dec01a22dba95674d3c8794a5fcc5b0', 2, 1, 'authToken', '[]', 0, '2021-07-06 23:34:43', '2021-07-06 23:34:43', '2022-07-07 05:04:43'),
('a34e540f56a1482bcd4cc9b9f089e28097ee87841ce725e335d8a85146aea0eb2fd6dbfc51772b29', 2, 1, 'authToken', '[]', 0, '2021-07-06 01:06:13', '2021-07-06 01:06:13', '2022-07-06 06:36:13'),
('a4e0fd525c0ccb9dfe878d52c2fd8e41930b73f926c40f1862072e25b6eb53dc549aa7d16f6fc590', 2, 1, 'authToken', '[]', 0, '2021-07-06 05:06:20', '2021-07-06 05:06:20', '2022-07-06 10:36:20'),
('a72c023e969f8b5d70b0a1b269d7c3f1a6dcc14b7d1d6cddc6cdde18bf3c0fb3a98f21dd05c59405', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:39:34', '2021-07-06 07:39:34', '2022-07-06 13:09:34'),
('a7db4fca592a34ba9089be522656293d99b2dac64b6ad17d4d12adb3754df409cc440d5e43f46301', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:15:43', '2021-07-06 04:15:43', '2022-07-06 09:45:43'),
('a7fb95efc7f9fc591e9e3a0bcddf181487b9b1f17fd33557dc04fe99dd3bee1ae2c22641895916ec', 2, 1, 'authToken', '[]', 0, '2021-07-06 23:47:06', '2021-07-06 23:47:06', '2022-07-07 05:17:06'),
('a8037a94a3317810c33fe30c8617cb14bbb65a1eb087d991ce00844a1cea8eb997665292853ecd72', 2, 1, 'authToken', '[]', 0, '2021-07-06 01:35:16', '2021-07-06 01:35:16', '2022-07-06 07:05:16'),
('a8e5657e82a7b42e4932e56b6c92e75f26c2dddd7d61013053457a6cbdc4c7edc992f7da96f6053a', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:56:57', '2021-07-06 04:56:57', '2022-07-06 10:26:57'),
('aa58230194933f4e185f498d6eceda9f6ec7c77c510d2b45f890308a600f9d5b221047dd3803bf4f', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:40:31', '2021-07-06 04:40:31', '2022-07-06 10:10:31'),
('b2818c620ea1d3933da742d36d49e0a87ac10f76d6cf05de710797de17981a882cbea6a9af882d43', 2, 1, 'authToken', '[]', 0, '2021-07-06 23:36:50', '2021-07-06 23:36:50', '2022-07-07 05:06:50'),
('b34c4e22df4a7af22b90735b370ef5e2a52bc25aa2e29d554ec45d5d03d8190c5d85c19dd75b7e47', 2, 1, 'authToken', '[]', 0, '2021-07-05 08:20:44', '2021-07-05 08:20:44', '2022-07-05 13:50:44'),
('b44df60d6ab2d8a7472b5fc487891126aab1a6a8e077d6ba166632b3cf2126def535f2a0a40e8939', 2, 1, 'authToken', '[]', 0, '2021-07-06 08:49:07', '2021-07-06 08:49:07', '2022-07-06 14:19:07'),
('b7f005c91fa845895cbde7f6b2436f4197eed360f22b7e796d5695fb846b55eb6a3f9604ba6e9c0a', 2, 1, 'authToken', '[]', 0, '2021-07-06 02:43:25', '2021-07-06 02:43:25', '2022-07-06 08:13:25'),
('b8e8326bee875bae23411126bc870ce948cc72369845c10e70faf8b9663cf845e206dba8a44b549b', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:31:07', '2021-07-06 07:31:07', '2022-07-06 13:01:07'),
('bd5774be7fe6aca5d985335eb28d412b4e444eb2f4e9466550df36285b45c9470ca64226101bdfaa', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:56:50', '2021-07-06 04:56:50', '2022-07-06 10:26:50'),
('c624f28e6075de6e4c28120b350e3d6fbb45cfa43cb81f49803d33ba487e73faf46feed83c4c43af', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:29:21', '2021-07-06 04:29:21', '2022-07-06 09:59:21'),
('caeb9cfb06bab8d20938e05f028bdd3b23a9904c5bd25b424925afec4e2b925f1107ac8dda96c7e5', 2, 1, 'authToken', '[]', 0, '2021-07-06 06:33:15', '2021-07-06 06:33:15', '2022-07-06 12:03:15'),
('cb3519f2a6aaf141f0455eb54308230fb98a9733190c318b6047c8801cd89e0e144bc4e627786dcf', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:26:19', '2021-07-06 04:26:19', '2022-07-06 09:56:19'),
('cf84cc40fb68d1f491b0d5be7e51cc8e75eaf37366f51874611d88c8b44b2012bb7c2e32d3230b36', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:45:37', '2021-07-06 07:45:37', '2022-07-06 13:15:37'),
('d0bb18620e3310c9055be63354f65b842aa11859969607e8e90de61c8502fbcc6c2f3d7304391e48', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:38:32', '2021-07-06 07:38:32', '2022-07-06 13:08:32'),
('d4ffb236fd34b00bd3c2a043df05eb1bf969ba4ee3943563ae5f1df716c2c5215e474f53a7e0543b', 2, 1, 'authToken', '[]', 0, '2021-07-06 00:44:01', '2021-07-06 00:44:01', '2022-07-06 06:14:01'),
('d5368e779a2beedf76ef393072e943a6db141f316856fb2d0d2ca559cb08d05ce28861823dab40f8', 2, 1, 'authToken', '[]', 0, '2021-07-06 01:06:21', '2021-07-06 01:06:21', '2022-07-06 06:36:21'),
('d5653a9a6cb5673cf6b897f6badc00acc6d131ebf10fc2bda28914bb46825fb5cb55c379fbda88eb', 2, 1, 'authToken', '[]', 0, '2021-07-06 23:48:08', '2021-07-06 23:48:08', '2022-07-07 05:18:08'),
('d6e5de081a15c2071f6715cdf64ca2fd8cc945b1ff89b15a2d9d351196ac25c68cf598a970fb4d56', 2, 1, 'authToken', '[]', 0, '2021-07-05 08:31:57', '2021-07-05 08:31:57', '2022-07-05 14:01:57'),
('d778901da1ffd635f7484212254324d3c66c3a8cc833be66a96a5a6d5496aabf8886e2122efe4150', 2, 1, 'authToken', '[]', 0, '2021-07-06 23:18:29', '2021-07-06 23:18:29', '2022-07-07 04:48:29'),
('dc7877c69a34cf0a064c6e6f3e7d9eb309ef22dae30a300914045a0a6166bf162a5da4c9ebd27e22', 2, 1, 'authToken', '[]', 0, '2021-07-06 05:02:22', '2021-07-06 05:02:22', '2022-07-06 10:32:22'),
('e026b4ccbfe682cb85c52c75b6c1b1383e5ae2e92eb60217d6b6107f071d62dd15e914e154d7d420', 2, 1, 'authToken', '[]', 0, '2021-07-06 20:59:02', '2021-07-06 20:59:02', '2022-07-07 02:29:02'),
('e37c76e8ccfd28047bb216eeca4d5801cfe5411d0155cf47b197a6fa7c98c6e8ddcbb41053c58c75', 2, 1, 'authToken', '[]', 0, '2021-07-06 01:07:39', '2021-07-06 01:07:39', '2022-07-06 06:37:39'),
('e3c5835e4e21f77444c290f4b43e86e5f572115bc32e595715d75f8655ab59b567988bc1046ccb07', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:23:00', '2021-07-06 07:23:00', '2022-07-06 12:53:00'),
('e658b3211728b25a295dbfda185293fa5fdb6395ad85dafeb84f13b4a9bdb354565809f2b62d4fca', 2, 1, 'authToken', '[]', 0, '2021-07-07 00:16:13', '2021-07-07 00:16:13', '2022-07-07 05:46:13'),
('e7ff7f8ae47c7420e404cada3bd7b1395da7f28861aaa5780cd089eaba0c651e8387754512cfed0b', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:54:07', '2021-07-06 04:54:07', '2022-07-06 10:24:07'),
('e810f3788df2da9456399f917ae1abd1a626700ea1861b23aa343869c6d0b83d3dd7c41a9663e94f', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:54:08', '2021-07-06 07:54:08', '2022-07-06 13:24:08'),
('e8649b1c89213c7b8de8d349ce816132c40030f0915e3e151ff8a7988ab91b7b45232150c92a3e32', 2, 1, 'authToken', '[]', 0, '2021-07-06 23:25:13', '2021-07-06 23:25:13', '2022-07-07 04:55:13'),
('e9960b5105bfccb78b5ff63cd98b354d4537b194dee5983d01be576389f6f47fb76f274cd7d5bf9b', 2, 1, 'authToken', '[]', 0, '2021-07-06 01:05:56', '2021-07-06 01:05:56', '2022-07-06 06:35:56'),
('ea9a72b30ba8d5b4c735ae3fe8b5fc7afa5f435693c75801c691f1e82b6bf54e9fa9a24325a8af47', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:49:09', '2021-07-06 04:49:09', '2022-07-06 10:19:09'),
('ec548efa51ccd67502411db58bfbe5fed4c20a5cc0484b64c67600e6ba9c825e1b7489c4710517c9', 2, 1, 'authToken', '[]', 0, '2021-07-06 06:39:11', '2021-07-06 06:39:11', '2022-07-06 12:09:11'),
('ec87bd8f3ac85731aac9586e405038346d9c0d6d04c75509d86b7f5d73e43dd0390b62194fe8d240', 2, 1, 'authToken', '[]', 0, '2021-07-06 05:49:04', '2021-07-06 05:49:04', '2022-07-06 11:19:04'),
('eca8112cac9912429ce940168e957a3b3bda4402e9b7ad5fc0ace7bae2a0f0c146cd47b59cffb1bf', 2, 1, 'authToken', '[]', 0, '2021-07-06 02:40:17', '2021-07-06 02:40:17', '2022-07-06 08:10:17'),
('ecb621355818ca7143068d6161d606d96e6ceb286a4ff6dd817975e3375d295bd6e6165531c626dd', 2, 1, 'authToken', '[]', 0, '2021-07-06 03:43:04', '2021-07-06 03:43:04', '2022-07-06 09:13:04'),
('ed15abea77ad234f54ac8cd6d1d9adc94fba5c0b84d87158dc68c07c6c235f89cf49fcf21b3599e6', 2, 1, 'authToken', '[]', 0, '2021-07-06 05:52:53', '2021-07-06 05:52:53', '2022-07-06 11:22:53'),
('ef19407344c9a65c7b8b300077591b1a49915d7852d8f6936fb2bfe3fe69ba998241d2098408ad60', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:44:33', '2021-07-06 04:44:33', '2022-07-06 10:14:33'),
('f32a9d73881ce0ac90b9684f62ea8160b1bb934438b0a2989320813a97e5444625c5a7dddc968cb3', 2, 1, 'authToken', '[]', 0, '2021-07-06 04:29:28', '2021-07-06 04:29:28', '2022-07-06 09:59:28'),
('f4910b8c1ec6a5ef4f81e957a7a0c6daa6124ff80fb4a382c5021d24244e120a79e89e27e5b6ad23', 2, 1, 'authToken', '[]', 0, '2021-07-06 06:30:18', '2021-07-06 06:30:18', '2022-07-06 12:00:18'),
('f80faa6f77a714af3f14895a524868babbf09e9cca8de20aa57d9ea75df732d67960e23c5a8995d7', 2, 1, 'authToken', '[]', 0, '2021-07-06 00:46:50', '2021-07-06 00:46:50', '2022-07-06 06:16:50'),
('f8793b2624ff0b6721034965806bf6ccee2833cb4d6544cfbe8fd83e2bd9a4167e02c2053f239337', 2, 1, 'authToken', '[]', 0, '2021-07-06 03:58:10', '2021-07-06 03:58:10', '2022-07-06 09:28:10'),
('fe134cd0ca443177acc073f1a52a804e8f3953ed2115d7ac84586cdc938d4d2c13e6e1ddc561dfe6', 2, 1, 'authToken', '[]', 0, '2021-07-06 07:54:44', '2021-07-06 07:54:44', '2022-07-06 13:24:44');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'BEujtSZADJXQNPISOGrOoOFRTGv4so3FA0RBOrAk', NULL, 'http://localhost', 1, 0, 0, '2021-07-02 06:00:53', '2021-07-02 06:00:53'),
(2, NULL, 'Laravel Password Grant Client', 'bXohLSGuLUOhExXRVlpXvnj7ciHH56VxV8kT0oxj', 'users', 'http://localhost', 0, 1, 0, '2021-07-02 06:00:53', '2021-07-02 06:00:53');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-07-02 06:00:53', '2021-07-02 06:00:53');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `link_status`, `expire_date`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'dummyuser@yopmail.com', NULL, NULL, '0', NULL, NULL, NULL, '2021-07-07 04:45:04');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
