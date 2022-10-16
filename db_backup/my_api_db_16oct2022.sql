-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2022 at 12:54 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_api_db`
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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2022_10_11_060637_create_products_table', 1),
(4, '2022_10_11_061637_create_reviews_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(8, '2016_06_01_000004_create_oauth_clients_table', 2),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

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
('16e19715a9b1be64b070c2fba73b2e2712bf2eba75726c2431a9a707bdaf226af2a7c492d5318d4c', 1, 2, NULL, '[]', 0, '2022-10-16 01:43:42', '2022-10-16 01:43:42', '2023-10-16 07:43:42'),
('1ab580fd64920b59bb206af41d43c3bf000c91c32786b2001caddfd21e7ef9b3fac6569e9c5321cb', 1, 2, NULL, '[]', 0, '2022-10-15 15:01:13', '2022-10-15 15:01:13', '2023-10-15 21:01:13'),
('27dfd79e4e239e9f712b0797ee6ea938a8565c4f15503fda465cd8ad8c6a356e6c9e6a1d899dfdcf', 1, 2, NULL, '[]', 0, '2022-10-16 01:22:34', '2022-10-16 01:22:34', '2023-10-16 07:22:34'),
('508ac7abf8a77b84078ff42b970c3f211bd8b47e8b873a3f9d134c71ac16251c56ceebaa0b553361', 1, 2, NULL, '[]', 0, '2022-10-16 01:38:01', '2022-10-16 01:38:01', '2023-10-16 07:38:01'),
('70893bc8b6ccc945b708bf8975fc585767c4dc3c26c18de37198a46a7748355a92e363336222e91e', 1, 2, NULL, '[]', 0, '2022-10-16 01:37:52', '2022-10-16 01:37:52', '2023-10-16 07:37:52'),
('824f6b7eacdcc167c9bc0b99c9d16b262d2ac07b42034785e1bae83abd404b387b2e5f5e6cfe99bd', 1, 2, NULL, '[]', 0, '2022-10-16 01:36:25', '2022-10-16 01:36:25', '2023-10-16 07:36:25'),
('85e0bdf3787567ecc937cc5c32f5e50e69ad19c2e024f6174c6b9554e420753ed48c35af52a85d68', 1, 2, NULL, '[]', 0, '2022-10-15 15:05:00', '2022-10-15 15:05:00', '2023-10-15 21:05:00'),
('89ad6b18f3b253ef8c9624b6e833248aa544bf05d82a3ceddaf3ef71f30ad6c88cac34bf542fd8b7', 1, 2, NULL, '[]', 0, '2022-10-16 01:21:14', '2022-10-16 01:21:14', '2023-10-16 07:21:14'),
('b2de8057dd85396ec3419dae2ae96becaf9c19a687581b364d860df4febd70b5607faf16a48daffe', 1, 2, NULL, '[]', 0, '2022-10-16 03:06:47', '2022-10-16 03:06:47', '2023-10-16 09:06:47'),
('b598c3d68ffce3adc583b4b19cd008dfbb458bd5a1472a4655eb7e363284803b410cc21d691517fe', 1, 2, NULL, '[]', 0, '2022-10-15 14:54:52', '2022-10-15 14:54:52', '2023-10-15 20:54:52'),
('d0e0737adf3c1877c22b341d513f50acdc654ec51fdff74a165d925fe58afb209ec42b5e96b56d39', 1, 2, NULL, '[]', 0, '2022-10-16 01:19:40', '2022-10-16 01:19:40', '2023-10-16 07:19:40'),
('d46645a9c2f773aac2183d9206fe7b45dc09736b576819adecc04f43c1e48a5109d303bc53b964f9', 1, 2, NULL, '[]', 0, '2022-10-16 01:22:52', '2022-10-16 01:22:52', '2023-10-16 07:22:52');

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
(1, NULL, 'Laravel Personal Access Client', 'NnoiHRFo6P42o49si4bIiX3QEOkyQs7yp6fzWUTS', NULL, 'http://localhost', 1, 0, 0, '2022-10-15 12:14:53', '2022-10-15 12:14:53'),
(2, NULL, 'Laravel Password Grant Client', 'ngJp4HKx1j6OcPkSU7sdFkf8fWxsKKt7MMCxb25J', 'users', 'http://localhost', 0, 1, 0, '2022-10-15 12:14:54', '2022-10-15 12:14:54');

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
(1, 1, '2022-10-15 12:14:53', '2022-10-15 12:14:53');

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

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('16906b37bc81613ca53d284e1045e7b9e5a353b53486eb1e6df3623bbd7124ce69aaded29cb245b1', '16e19715a9b1be64b070c2fba73b2e2712bf2eba75726c2431a9a707bdaf226af2a7c492d5318d4c', 0, '2023-10-16 07:43:42'),
('346e2a03d063047fa60d0eaf4a233acaafd7d4fe32f8b42577cc596ad9f7879db85882dcec5e1922', '85e0bdf3787567ecc937cc5c32f5e50e69ad19c2e024f6174c6b9554e420753ed48c35af52a85d68', 0, '2023-10-15 21:05:00'),
('4124bc921cd8d0a6cad42abdaec184fe820883d22df2ee7e670d9022bbe747c4e6245f3329992f94', '508ac7abf8a77b84078ff42b970c3f211bd8b47e8b873a3f9d134c71ac16251c56ceebaa0b553361', 0, '2023-10-16 07:38:01'),
('5043b77a7a8e4aa39934fd7f54c496fff127bdb120e4714594c488e5376e7d817ea48f979abbf3af', '824f6b7eacdcc167c9bc0b99c9d16b262d2ac07b42034785e1bae83abd404b387b2e5f5e6cfe99bd', 0, '2023-10-16 07:36:25'),
('6473d482718ee0b6dab4fa20cec21cd9079060f82617c039c25d7b7437f8c8cdf2f58592d17ba910', '70893bc8b6ccc945b708bf8975fc585767c4dc3c26c18de37198a46a7748355a92e363336222e91e', 0, '2023-10-16 07:37:52'),
('6eb47dbd11bb5a978a19e7ffa9d038b482ed5b8a0d520b228f4707d2c584cc19fb37bf24533e60fb', 'b598c3d68ffce3adc583b4b19cd008dfbb458bd5a1472a4655eb7e363284803b410cc21d691517fe', 0, '2023-10-15 20:54:52'),
('900d0f87672c40ba13a86361327e5ab28b6d5fe550889253d8e1fb590be707831c244ac824d60314', 'b2de8057dd85396ec3419dae2ae96becaf9c19a687581b364d860df4febd70b5607faf16a48daffe', 0, '2023-10-16 09:06:48'),
('dd2d3cafc1de8699a5ba864990015b6a6b84d9fd59ba0d620cb388f1d72ed7e799f8cb66dddab1ab', '1ab580fd64920b59bb206af41d43c3bf000c91c32786b2001caddfd21e7ef9b3fac6569e9c5321cb', 0, '2023-10-15 21:01:13'),
('ebc4e52c0c1a26aca44c0112204688fa520ef9293c0df4da96c9b5b5ae43dd296b2890526523984a', 'd46645a9c2f773aac2183d9206fe7b45dc09736b576819adecc04f43c1e48a5109d303bc53b964f9', 0, '2023-10-16 07:22:52'),
('f3b8cc61b2d5d64a79a1aed5e6c350873767401d7d039a878b379534259ea0057d7b6bcb909f7345', '27dfd79e4e239e9f712b0797ee6ea938a8565c4f15503fda465cd8ad8c6a356e6c9e6a1d899dfdcf', 0, '2023-10-16 07:22:35'),
('f4f89c5d057feda39896cfb16c04e98238c3ae81ff1d4305902337bb5212b2a5f541cdd29689874c', 'd0e0737adf3c1877c22b341d513f50acdc654ec51fdff74a165d925fe58afb209ec42b5e96b56d39', 0, '2023-10-16 07:19:40'),
('ff970f3b50ae86c9da374888536adeb0dc1acf31ad6638732527a9d2f45f704c3cebf5c2e3e3fab3', '89ad6b18f3b253ef8c9624b6e833248aa544bf05d82a3ceddaf3ef71f30ad6c88cac34bf542fd8b7', 0, '2023-10-16 07:21:14');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `price`, `stock`, `discount`, `created_at`, `updated_at`) VALUES
(1, 'ut', 'Accusantium qui aut in molestiae fugit quibusdam labore in. Et quia enim voluptatibus et ut officiis. Reiciendis aut quia et iste ut voluptates vero. Iusto aut id quia vel excepturi error.', 555, 6, 19, '2022-10-11 01:38:16', '2022-10-11 01:38:16'),
(2, 'consequuntur', 'Fugit fugiat quia accusantium quam quasi. Quis rem quam quisquam aperiam sit autem tempora. Facilis sunt alias aut quia vero nisi et totam.', 314, 9, 16, '2022-10-11 01:38:16', '2022-10-11 01:38:16'),
(3, 'nostrum', 'Optio reiciendis ut qui et nostrum aliquid. Est voluptas ut sit quasi eius debitis aut. Animi neque mollitia rerum hic sequi officiis et aut.', 204, 4, 6, '2022-10-11 01:38:16', '2022-10-11 01:38:16'),
(4, 'quo', 'Incidunt repellat est dicta magni aut. Officia qui asperiores hic sed eum.', 726, 2, 14, '2022-10-11 01:38:16', '2022-10-11 01:38:16'),
(5, 'mollitia', 'Totam eos dolores dolor vel eos autem ex. Ipsa omnis dolorum nesciunt officia reiciendis. Rerum molestias quia quas. Deserunt nisi labore vero voluptates.', 127, 1, 19, '2022-10-11 01:38:16', '2022-10-11 01:38:16'),
(6, 'pariatur', 'Dolores modi occaecati consequatur sint. Deleniti occaecati iste consequatur maiores. Perferendis fuga mollitia perspiciatis similique.', 386, 1, 2, '2022-10-11 01:38:16', '2022-10-11 01:38:16'),
(7, 'quia', 'Hic in quaerat ullam sit optio non debitis. Quia eveniet occaecati accusamus distinctio voluptatibus. Exercitationem pariatur consequatur ut itaque dolorum sit. Voluptatem facilis ut aut.', 748, 1, 5, '2022-10-11 01:38:16', '2022-10-11 01:38:16'),
(8, 'et', 'Corporis dolores corrupti ut eius velit. Distinctio aliquam quos qui fugiat ut eum est. Consequuntur et doloribus laudantium quos. Molestiae animi blanditiis sapiente eligendi accusantium.', 862, 5, 24, '2022-10-11 01:38:16', '2022-10-11 01:38:16'),
(9, 'quis', 'Et tenetur nulla necessitatibus adipisci at sunt. Et et quos maiores laudantium vero assumenda odit. Quae iste laboriosam qui tempore nesciunt.', 704, 8, 20, '2022-10-11 01:38:16', '2022-10-11 01:38:16'),
(10, 'tenetur', 'Similique magnam tempora odio fuga. Error et repellat consequuntur modi dolorum. Asperiores vitae minima illo consectetur nihil.', 493, 6, 26, '2022-10-11 01:38:16', '2022-10-11 01:38:16'),
(11, 'et', 'Quidem ad ut modi officia nihil voluptatem. Quia nam quis nesciunt dicta id laboriosam.', 815, 6, 20, '2022-10-11 01:38:16', '2022-10-11 01:38:16'),
(12, 'inventore', 'Delectus nostrum voluptatum voluptas voluptatem quas voluptatem voluptates nisi. Ut repudiandae ea quidem inventore est qui optio. Sapiente sit quisquam et commodi. Dolores asperiores nihil suscipit accusamus reprehenderit ut accusantium. Enim accusamus et similique est eaque.', 568, 6, 11, '2022-10-11 01:38:16', '2022-10-11 01:38:16'),
(13, 'nobis', 'Quaerat et consequatur dolorum rem enim animi et. Iusto voluptate commodi non ut maxime excepturi voluptatibus mollitia. In ut sapiente aliquam tenetur numquam quia quidem excepturi. Dolorum laboriosam voluptatibus aspernatur iste doloribus est.', 395, 1, 4, '2022-10-11 01:38:16', '2022-10-11 01:38:16'),
(14, 'perspiciatis', 'Sed aut hic perferendis autem. Quidem quia corporis qui. Eius mollitia nostrum deserunt consectetur. Et ut alias neque illo cumque ullam.', 109, 8, 23, '2022-10-11 01:38:16', '2022-10-11 01:38:16'),
(15, 'doloribus', 'Et culpa nihil non sit laborum et minima. Minus omnis quaerat numquam aut perspiciatis dolorem porro. Et consequatur hic ratione quis. Quod ea officiis consequatur id. Animi amet voluptate consequatur qui officia.', 460, 6, 8, '2022-10-11 01:38:16', '2022-10-11 01:38:16'),
(16, 'sed', 'Qui id voluptatem voluptas amet vel dolorum alias. Impedit ipsam labore sint aliquid ipsum ut. Beatae aut sapiente impedit atque est nemo eum. Nihil quidem id voluptatum molestias.', 683, 1, 29, '2022-10-11 01:38:16', '2022-10-11 01:38:16'),
(17, 'qui', 'Dolore dolore ipsam expedita mollitia debitis. Et labore et porro molestias porro ex saepe. Dolores consequatur est nobis. Autem suscipit id velit architecto fugiat. Vitae temporibus unde enim et numquam quo quia.', 194, 7, 15, '2022-10-11 01:38:16', '2022-10-11 01:38:16'),
(18, 'voluptate', 'Maiores sint eos eos aperiam debitis quam. Reiciendis repudiandae reiciendis pariatur natus distinctio non. Culpa omnis explicabo ut et. Et vero nostrum pariatur numquam mollitia est neque.', 710, 4, 20, '2022-10-11 01:38:16', '2022-10-11 01:38:16'),
(19, 'dolor', 'Aperiam nihil voluptatum sit vel ratione voluptatibus alias neque. Earum ducimus voluptate praesentium. Neque aut similique delectus facilis. Magni asperiores sed animi autem qui ut.', 261, 3, 21, '2022-10-11 01:38:16', '2022-10-11 01:38:16'),
(20, 'eveniet', 'Aut eius et consequatur sunt. Numquam quis et sint maiores quibusdam. Nostrum eum quia id qui voluptas et omnis. Voluptatem delectus dicta autem blanditiis.', 403, 8, 21, '2022-10-11 01:38:16', '2022-10-11 01:38:16'),
(21, 'quia', 'Suscipit blanditiis qui quia quis sunt est. Quae fugit tempora autem dolores perspiciatis. Nihil voluptas sit sunt. Alias dolores quidem voluptate reprehenderit. Ut suscipit voluptatem dolorem qui.', 852, 9, 28, '2022-10-11 01:38:16', '2022-10-11 01:38:16'),
(22, 'voluptates', 'Itaque corporis suscipit perspiciatis maiores voluptates enim quia. Eos deserunt ut mollitia voluptate. Commodi nesciunt molestias enim quo omnis eos commodi. Sint aut est ullam velit vel.', 562, 3, 20, '2022-10-11 01:38:16', '2022-10-11 01:38:16'),
(23, 'animi', 'Saepe voluptatibus voluptas eos velit eligendi. Rerum reprehenderit ipsum sapiente fugiat nobis autem dignissimos.', 189, 2, 2, '2022-10-11 01:38:16', '2022-10-11 01:38:16'),
(24, 'sunt', 'Maxime perspiciatis ratione est quam perferendis deserunt molestias. Dolorem ex minima omnis nihil inventore sed. Quia tempora sed qui qui voluptate ut. Reiciendis perspiciatis optio corrupti sint nemo. Aperiam rerum laborum et voluptatum.', 120, 7, 7, '2022-10-11 01:38:16', '2022-10-11 01:38:16'),
(25, 'autem', 'Debitis repellendus voluptatem dolorum optio sit minima. Temporibus animi qui nulla quam delectus. Sit sed illo quisquam suscipit. Labore optio dolorem impedit rerum soluta fugit. Officiis laudantium et rem nam.', 660, 5, 19, '2022-10-11 01:38:16', '2022-10-11 01:38:16'),
(26, 'optio', 'Accusantium soluta velit distinctio. Accusantium qui dolorum non enim earum voluptas deleniti.', 642, 1, 9, '2022-10-11 01:38:16', '2022-10-11 01:38:16'),
(27, 'odit', 'Illo beatae enim omnis numquam quidem. Non ut aspernatur soluta minus sequi. Omnis itaque ut voluptatem fuga. Est quam est dolorum illo nostrum velit.', 406, 6, 7, '2022-10-11 01:38:16', '2022-10-11 01:38:16'),
(28, 'accusamus', 'Maiores doloremque magnam maxime nisi. Id dignissimos explicabo in excepturi. Ut magni minima possimus mollitia. Suscipit ut eos vel maiores accusamus quae ut.', 255, 1, 23, '2022-10-11 01:38:17', '2022-10-11 01:38:17'),
(29, 'debitis', 'Dicta asperiores qui laboriosam temporibus. Et facilis quisquam illum commodi omnis sapiente. Facilis rerum error exercitationem accusamus sed dolorem quis.', 581, 9, 22, '2022-10-11 01:38:17', '2022-10-11 01:38:17'),
(30, 'totam', 'Non numquam veritatis eligendi assumenda sint voluptatem aut. Eligendi est eos ipsum autem. Sequi hic laudantium magnam odio inventore odio sunt voluptas. Dolores sunt qui dolorem eos aperiam dicta officiis aut. Et placeat esse molestiae sed totam quis.', 118, 8, 10, '2022-10-11 01:38:17', '2022-10-11 01:38:17'),
(31, 'quae', 'Saepe tempora porro ipsam quia qui. Nesciunt nisi iusto ipsum alias eaque voluptatum qui. Molestiae cum ducimus magni. Vitae et voluptas placeat itaque praesentium.', 200, 7, 9, '2022-10-11 01:38:17', '2022-10-11 01:38:17'),
(32, 'quia', 'Id quasi doloremque et. Et enim voluptatem voluptas nobis magni quia earum. Atque hic consequatur reprehenderit sit in molestiae cupiditate.', 850, 2, 10, '2022-10-11 01:38:17', '2022-10-11 01:38:17'),
(33, 'rem', 'Dolorum et aut ut voluptatem quas neque dolorem blanditiis. Qui facilis cum consectetur voluptas mollitia rerum nihil laborum. Voluptas et eum distinctio pariatur qui et aut. Eligendi omnis quidem neque recusandae.', 222, 7, 12, '2022-10-11 01:38:17', '2022-10-11 01:38:17'),
(34, 'voluptatem', 'Quos ea ad quia fugiat. Consectetur qui officiis placeat molestiae quia sapiente. Qui odio est quos ab qui.', 994, 0, 25, '2022-10-11 01:38:17', '2022-10-11 01:38:17'),
(35, 'sed', 'Consequatur et in fugit dignissimos qui est eum modi. Ipsam officiis quisquam placeat non. Odio animi ab ipsum non aliquid qui.', 729, 5, 22, '2022-10-11 01:38:17', '2022-10-11 01:38:17'),
(36, 'ea', 'Deserunt perspiciatis et consectetur et autem est enim deleniti. Aut sunt eaque debitis doloribus. Magnam quo dolor adipisci numquam. Eos eaque illo aut at vitae aut.', 258, 5, 7, '2022-10-11 01:38:17', '2022-10-11 01:38:17'),
(37, 'fugiat', 'Voluptas dolorem eum sed sapiente est quod. Maxime pariatur optio ullam consequatur consequatur esse. Aliquam et voluptatem autem praesentium aspernatur qui. Qui natus alias aut quia.', 849, 3, 29, '2022-10-11 01:38:17', '2022-10-11 01:38:17'),
(38, 'odio', 'Suscipit eveniet earum tempora blanditiis. Enim accusamus aut sit tempora. Tempore aut nulla inventore ut.', 220, 0, 28, '2022-10-11 01:38:17', '2022-10-11 01:38:17'),
(39, 'provident', 'Quo ad mollitia sed qui enim. Error et asperiores esse vitae consequatur ratione consequatur officiis. Occaecati sapiente tenetur fugit corrupti. Asperiores quasi sit voluptatem omnis consequuntur accusamus aliquid.', 763, 2, 20, '2022-10-11 01:38:17', '2022-10-11 01:38:17'),
(40, 'hic', 'Voluptas cum minus ut rerum. Cupiditate laboriosam ut qui illo sed eos. Mollitia temporibus officia iste cum consequuntur nulla. Impedit laudantium assumenda sit.', 733, 9, 2, '2022-10-11 01:38:17', '2022-10-11 01:38:17'),
(41, 'cupiditate', 'Asperiores sint modi est autem vitae ut. Eaque perferendis architecto eligendi dolor. Est eum vitae et facilis eaque. Asperiores nam occaecati incidunt eius quas eius ut.', 840, 5, 28, '2022-10-11 01:38:17', '2022-10-11 01:38:17'),
(42, 'dignissimos', 'Assumenda doloremque quia soluta velit eius. Adipisci qui qui corrupti et. Cumque fugiat consequatur nihil et omnis.', 859, 2, 16, '2022-10-11 01:38:17', '2022-10-11 01:38:17'),
(43, 'odio', 'Expedita est est dolorem et. Alias quo ullam facere asperiores quae ea architecto. Distinctio enim corporis ut autem. Maxime qui et adipisci quaerat eum.', 127, 7, 20, '2022-10-11 01:38:17', '2022-10-11 01:38:17'),
(44, 'quo', 'Nihil officia sed aliquid soluta libero voluptates quidem. Velit accusamus delectus ad voluptatum alias quibusdam.', 342, 4, 9, '2022-10-11 01:38:17', '2022-10-11 01:38:17'),
(45, 'possimus', 'Eligendi hic eum facere consequuntur a. Rerum praesentium non aspernatur quibusdam. Iste similique voluptas nostrum laudantium nihil id beatae.', 812, 5, 8, '2022-10-11 01:38:17', '2022-10-11 01:38:17'),
(46, 'assumenda', 'Nostrum eos mollitia possimus quaerat est rerum exercitationem. Veritatis distinctio laborum animi laboriosam ipsum eveniet numquam. Est aperiam repellendus quo dolor. Labore delectus earum sed quod qui.', 343, 7, 9, '2022-10-11 01:38:17', '2022-10-11 01:38:17'),
(47, 'ipsum', 'Quasi ducimus eaque cumque assumenda maxime. Iste incidunt adipisci molestiae explicabo dolores saepe. Cupiditate repellat veritatis beatae hic similique nihil. Doloribus a numquam consequuntur et quos assumenda veniam.', 638, 3, 14, '2022-10-11 01:38:17', '2022-10-11 01:38:17'),
(48, 'laboriosam', 'Ducimus non sint laborum doloremque modi. Cum in sint et et laudantium dolore a corrupti. Reiciendis ea voluptatem quaerat unde quasi est fugiat. Nisi quo iusto et dolor impedit.', 677, 2, 14, '2022-10-11 01:38:17', '2022-10-11 01:38:17'),
(49, 'fugiat', 'Est atque rem harum sint qui dolor. Deserunt qui corrupti omnis quo. Voluptas dolores animi temporibus qui. Alias illum ut voluptatum quia ipsam sed sed qui.', 219, 7, 27, '2022-10-11 01:38:17', '2022-10-11 01:38:17'),
(50, 'sit', 'Perferendis laborum cupiditate corrupti ut mollitia. Dolorem cumque aut neque voluptatem. Ut sint provident tempore explicabo accusamus odit est. Rerum corrupti quaerat possimus.', 138, 7, 4, '2022-10-11 01:38:17', '2022-10-11 01:38:17'),
(51, 'Motorolla', 'awesome phone', 207, 4, 15, '2022-10-16 04:46:17', '2022-10-16 04:46:17'),
(52, 'IPhone X', 'awesome phone', 400, 5, 10, '2022-10-16 04:50:28', '2022-10-16 04:50:28');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(1, 42, 'veritatis', 'Iusto facilis animi velit est nostrum. Dicta nobis rerum tempore qui cumque autem. Iusto nobis occaecati sit necessitatibus ut pariatur voluptatum. Qui est quis exercitationem non.', 2, '2022-10-11 01:38:18', '2022-10-11 01:38:18'),
(2, 43, 'itaque', 'Inventore temporibus et tenetur vel iste. Sit nihil quo ut qui. Iusto inventore modi repellat.', 1, '2022-10-11 01:38:18', '2022-10-11 01:38:18'),
(3, 31, 'enim', 'Numquam beatae sunt dicta ex quae fugit. Maxime enim ut alias sit. Qui vel quis suscipit molestias omnis dignissimos.', 5, '2022-10-11 01:38:18', '2022-10-11 01:38:18'),
(4, 26, 'et', 'Officiis optio pariatur beatae sunt. Nesciunt aut ipsam numquam in sed illo. Sapiente quidem qui consequuntur voluptatem temporibus vero. Id laborum doloribus fugiat quo rerum ex esse.', 5, '2022-10-11 01:38:18', '2022-10-11 01:38:18'),
(5, 1, 'soluta', 'Aut et et sunt ut sit sint in. Ut at sequi rerum hic eum. Tenetur quia inventore autem totam velit. Vitae dolore temporibus vel dolores ratione quas quo aspernatur. Itaque qui eum omnis non sequi.', 1, '2022-10-11 01:38:18', '2022-10-11 01:38:18'),
(6, 50, 'est', 'Atque vero officia veniam ipsum est blanditiis. Non quas aut sit quaerat nisi optio. Possimus non beatae similique iure qui.', 2, '2022-10-11 01:38:18', '2022-10-11 01:38:18'),
(7, 25, 'dolore', 'Deleniti adipisci nostrum eaque omnis. Architecto quidem quae ab. Qui qui ut quibusdam.', 1, '2022-10-11 01:38:18', '2022-10-11 01:38:18'),
(8, 36, 'quam', 'Repudiandae molestias ipsum est animi nobis facilis neque ipsa. Provident sed hic quo amet tenetur vero aut. Possimus tempora vitae explicabo ipsam est id ut.', 0, '2022-10-11 01:38:18', '2022-10-11 01:38:18'),
(9, 10, 'quos', 'Blanditiis qui pariatur eaque quas. Dolorem autem aliquid a amet eos et ut.', 5, '2022-10-11 01:38:18', '2022-10-11 01:38:18'),
(10, 35, 'iste', 'Quae cumque fuga iusto non facilis impedit. Occaecati quos quas natus et accusamus. Nobis harum labore nihil accusamus aut. Molestiae soluta qui provident est deleniti cum. Cum sit magnam nihil odit dolorem.', 5, '2022-10-11 01:38:18', '2022-10-11 01:38:18'),
(11, 22, 'error', 'Sed aut velit rem est modi consequatur cum quo. Officiis voluptas ad non fugit. A nihil autem eaque odio.', 4, '2022-10-11 01:38:18', '2022-10-11 01:38:18'),
(12, 48, 'dicta', 'Id sequi aut amet at nemo. Eligendi ut iusto in rerum sint atque numquam. Voluptas assumenda temporibus molestiae nesciunt numquam libero nihil illo. Enim provident reiciendis sed voluptatem dolores praesentium doloremque.', 2, '2022-10-11 01:38:18', '2022-10-11 01:38:18'),
(13, 49, 'et', 'Voluptatum distinctio itaque molestiae molestiae temporibus alias fugiat. Corrupti tempora quidem odit. Distinctio quae vitae nesciunt. Laboriosam at eligendi dolore tempore ut.', 3, '2022-10-11 01:38:18', '2022-10-11 01:38:18'),
(14, 46, 'voluptas', 'Beatae sint officiis laborum assumenda consequatur est occaecati. Est minus accusantium blanditiis inventore eum ducimus necessitatibus. Omnis dolor corporis blanditiis voluptatem.', 4, '2022-10-11 01:38:18', '2022-10-11 01:38:18'),
(15, 43, 'autem', 'Distinctio vel ut exercitationem ab sed doloremque eum velit. Dolorem cumque suscipit expedita nisi nostrum amet.', 4, '2022-10-11 01:38:18', '2022-10-11 01:38:18'),
(16, 28, 'ut', 'Similique autem incidunt aut saepe. Architecto ut totam ut soluta. Fugiat ullam ea amet reiciendis et. Cum ut facilis quae quisquam dolor ab. Corporis odit sequi quo quos.', 2, '2022-10-11 01:38:18', '2022-10-11 01:38:18'),
(17, 10, 'molestias', 'Aliquid quibusdam autem aut facilis officiis dolores iste. Rem blanditiis aliquam repellendus dolores labore. Et impedit harum sed. Officiis animi et aut blanditiis minima.', 3, '2022-10-11 01:38:18', '2022-10-11 01:38:18'),
(18, 27, 'laborum', 'Tenetur qui minus et odio. Error commodi sed eum nam. Et distinctio autem modi dicta omnis commodi. Non eligendi odio aliquid eum laborum consequuntur cupiditate. Esse nisi ut aut fugit rerum.', 1, '2022-10-11 01:38:18', '2022-10-11 01:38:18'),
(19, 34, 'voluptas', 'Modi laboriosam eius illo. Voluptatem architecto exercitationem accusantium laboriosam omnis ipsa cupiditate. Eaque vel tempore perferendis debitis sit. Qui id et a incidunt dicta.', 0, '2022-10-11 01:38:18', '2022-10-11 01:38:18'),
(20, 2, 'nemo', 'Eaque porro magni cumque recusandae aspernatur sequi. Ducimus nesciunt placeat sit dolore dolores ipsam sapiente. Voluptas velit rerum ratione rem voluptatem id nihil.', 2, '2022-10-11 01:38:18', '2022-10-11 01:38:18'),
(21, 50, 'temporibus', 'Sed saepe maiores nobis iste enim. Quas culpa fuga id ex. Nostrum quod ullam veniam est. Laudantium aut ipsum fugiat praesentium.', 0, '2022-10-11 01:38:19', '2022-10-11 01:38:19'),
(22, 9, 'illum', 'Aliquid a amet quod earum neque illo rerum. Eos omnis ut necessitatibus consequatur nulla veniam sed magni.', 2, '2022-10-11 01:38:19', '2022-10-11 01:38:19'),
(23, 36, 'consequatur', 'Ut delectus id veritatis porro ut. Possimus delectus est nulla non. At eligendi laborum doloremque et beatae. Nihil architecto animi laudantium quo.', 4, '2022-10-11 01:38:19', '2022-10-11 01:38:19'),
(24, 17, 'libero', 'Corrupti sed reiciendis esse aut voluptatem esse voluptate. Quis eveniet qui qui accusamus ipsa. In molestias neque sed voluptate rerum nemo reprehenderit.', 1, '2022-10-11 01:38:19', '2022-10-11 01:38:19'),
(25, 44, 'odit', 'Cum iusto aut vel soluta qui. Minima sit consequatur earum. Debitis rerum rerum quia ratione id atque necessitatibus. Doloremque quia autem beatae accusamus est voluptatem. Consequatur repudiandae est quibusdam libero voluptas.', 1, '2022-10-11 01:38:19', '2022-10-11 01:38:19'),
(26, 9, 'deserunt', 'Assumenda velit animi amet enim qui laboriosam esse. Non nostrum et dolores dolorem quo. Incidunt accusantium debitis aut deserunt eos. Aut quo illo et esse ducimus quo. Est quae occaecati pariatur non autem sed ea nihil.', 3, '2022-10-11 01:38:19', '2022-10-11 01:38:19'),
(27, 29, 'atque', 'Repudiandae molestiae cum nemo nisi ipsa omnis voluptatem. Autem ipsam totam velit iure non nam vel. Qui molestiae laborum occaecati et vitae. Perferendis qui ea consequuntur autem. Culpa et repellendus facere.', 4, '2022-10-11 01:38:19', '2022-10-11 01:38:19'),
(28, 22, 'tempora', 'Adipisci ipsum saepe alias sed exercitationem quod. Voluptate temporibus commodi corporis non alias. Ab ea sapiente reiciendis harum. Ipsum velit occaecati et voluptatem.', 2, '2022-10-11 01:38:19', '2022-10-11 01:38:19'),
(29, 27, 'sed', 'Et natus soluta voluptates. Iste amet qui consequatur itaque impedit rem. Aut a tenetur aliquam accusantium.', 4, '2022-10-11 01:38:19', '2022-10-11 01:38:19'),
(30, 27, 'voluptates', 'Exercitationem qui hic reiciendis unde quam similique. Sint sint et distinctio modi optio dignissimos veniam. Enim quis ut ea molestias laborum quis pariatur quis.', 2, '2022-10-11 01:38:19', '2022-10-11 01:38:19'),
(31, 18, 'quos', 'Natus molestiae suscipit facilis et nam quibusdam. Rerum deserunt est et ut. Qui dolorem quo totam et. Doloremque et qui ipsa laborum corrupti quis.', 5, '2022-10-11 01:38:19', '2022-10-11 01:38:19'),
(32, 9, 'sunt', 'Saepe asperiores quia commodi et perspiciatis nam facilis possimus. Aut qui enim id illum est amet. Dolorem aspernatur animi inventore numquam dolore pariatur consectetur sint.', 2, '2022-10-11 01:38:19', '2022-10-11 01:38:19'),
(33, 6, 'dolores', 'Debitis natus et sit voluptas vero excepturi aperiam ea. Sint aut porro veniam unde explicabo. Quae laboriosam et nulla mollitia.', 5, '2022-10-11 01:38:19', '2022-10-11 01:38:19'),
(34, 6, 'eveniet', 'Sed suscipit velit soluta. Distinctio quaerat nesciunt et modi at. Natus omnis dolor qui rerum totam molestiae. Qui reiciendis ab aut voluptatibus cupiditate esse.', 3, '2022-10-11 01:38:19', '2022-10-11 01:38:19'),
(35, 18, 'dolor', 'Ratione adipisci corrupti veritatis hic. Assumenda excepturi repellat id et voluptatem. Ut aperiam blanditiis eos eius.', 2, '2022-10-11 01:38:19', '2022-10-11 01:38:19'),
(36, 5, 'et', 'Atque eum eveniet voluptatum ex veritatis. Ut adipisci delectus sint quis ipsam dolorem alias. Ut repellendus rerum nobis dolor consequatur fugit placeat commodi. Ut voluptatum quo consequatur.', 5, '2022-10-11 01:38:19', '2022-10-11 01:38:19'),
(37, 47, 'veniam', 'Temporibus officiis velit id accusantium et libero. Modi et et saepe voluptatibus. Molestiae et iusto cupiditate quibusdam deserunt velit et. Aliquid unde accusamus animi unde ut quam illo.', 3, '2022-10-11 01:38:19', '2022-10-11 01:38:19'),
(38, 28, 'quos', 'Sunt et qui in ut ex ex inventore debitis. Enim est ipsum asperiores ea. Omnis autem saepe consectetur ab dignissimos consequatur.', 3, '2022-10-11 01:38:19', '2022-10-11 01:38:19'),
(39, 43, 'vel', 'Dolore voluptatem sequi et molestias sapiente quaerat aut. Reiciendis dolorum mollitia et quisquam rerum distinctio neque. Quo ex et nisi aut.', 5, '2022-10-11 01:38:19', '2022-10-11 01:38:19'),
(40, 7, 'officiis', 'Sit consequatur aut corrupti rerum. Placeat asperiores consequuntur placeat voluptate voluptatem.', 3, '2022-10-11 01:38:19', '2022-10-11 01:38:19'),
(41, 22, 'laudantium', 'Nostrum quo rerum id ipsa et quaerat provident. Quaerat reprehenderit consequatur quod facilis. In unde amet ipsum qui illo tempore. Est possimus enim facere minus magnam.', 5, '2022-10-11 01:38:19', '2022-10-11 01:38:19'),
(42, 3, 'cumque', 'Eius pariatur omnis id. Cumque omnis expedita corrupti. Sed beatae aut porro id. Culpa quo id similique commodi quaerat.', 4, '2022-10-11 01:38:19', '2022-10-11 01:38:19'),
(43, 26, 'architecto', 'Eum eos aliquam possimus soluta quaerat. Ad enim hic nam occaecati et possimus. Quod alias corrupti fugiat officiis. Voluptatem ex distinctio quidem laboriosam ut quos. Esse et architecto tempora perspiciatis consequatur totam.', 2, '2022-10-11 01:38:19', '2022-10-11 01:38:19'),
(44, 8, 'dolore', 'Qui eos aperiam totam provident debitis est voluptas. Dolores nemo eveniet molestias est qui. Recusandae ea nam qui omnis accusantium tempora sed.', 1, '2022-10-11 01:38:19', '2022-10-11 01:38:19'),
(45, 34, 'numquam', 'Et eligendi quibusdam sit aliquam facilis. Corrupti laboriosam quo nesciunt repellendus magni ut et. Dolore eaque odit numquam dignissimos magnam ut. Nesciunt inventore ipsam doloribus.', 5, '2022-10-11 01:38:19', '2022-10-11 01:38:19'),
(46, 33, 'ullam', 'Veritatis maiores enim a officia temporibus cumque voluptas. Qui sed vel qui ut commodi pariatur impedit. Totam ea dolorem mollitia voluptas voluptatibus doloremque. Illum eius non corrupti ratione corrupti et.', 3, '2022-10-11 01:38:19', '2022-10-11 01:38:19'),
(47, 41, 'culpa', 'Sit rerum fuga nemo laudantium incidunt molestias. Et omnis totam in quia qui et mollitia. Ut dolore et in optio quos aut eius.', 2, '2022-10-11 01:38:19', '2022-10-11 01:38:19'),
(48, 16, 'maxime', 'Dolorum voluptates dignissimos rerum sunt assumenda quo. A et ab dolorem exercitationem. Esse saepe ipsa vel et similique. Illo rerum in ex ut quia excepturi.', 4, '2022-10-11 01:38:19', '2022-10-11 01:38:19'),
(49, 42, 'qui', 'Quod dolores expedita doloremque modi est non voluptates. Quis ut atque a accusantium nemo accusantium distinctio. Dolore ut officiis nihil est occaecati fugiat eos. Quis quibusdam porro excepturi esse nemo.', 3, '2022-10-11 01:38:19', '2022-10-11 01:38:19'),
(50, 18, 'impedit', 'Quos quia enim non mollitia culpa. Id labore id et cupiditate. Eum excepturi saepe sit amet ut tempora.', 2, '2022-10-11 01:38:19', '2022-10-11 01:38:19'),
(51, 27, 'quas', 'Impedit delectus ex id quod cum eligendi voluptas. In minus quia quo recusandae delectus dignissimos rerum. Dolore maiores ut deleniti esse quas. Sint voluptatem quia consequatur.', 4, '2022-10-11 01:38:20', '2022-10-11 01:38:20'),
(52, 50, 'sunt', 'Rerum facilis accusantium sed ut molestiae doloribus consectetur ipsum. Sequi minus enim molestias quia. Quibusdam magnam velit quidem et magnam voluptatum. Ipsam doloribus quia molestias voluptatem voluptatibus magni accusantium aperiam.', 2, '2022-10-11 01:38:20', '2022-10-11 01:38:20'),
(53, 13, 'dolorem', 'Est molestias in tempora. Consequatur quisquam dolore vero quibusdam inventore. Perspiciatis distinctio eius sint autem blanditiis voluptatem. Doloribus dolorem praesentium nihil quo et aut neque.', 4, '2022-10-11 01:38:20', '2022-10-11 01:38:20'),
(54, 31, 'iste', 'Culpa qui adipisci sed officia et in maiores voluptates. Dolorem repudiandae aliquid eveniet velit atque illum nam. Iure voluptate quibusdam impedit est ut molestias.', 3, '2022-10-11 01:38:20', '2022-10-11 01:38:20'),
(55, 11, 'asperiores', 'Culpa aut velit natus. Quia iure quia ipsa sint alias quibusdam. Excepturi odio aut est ad expedita veritatis enim. Qui impedit omnis voluptas et minima labore.', 4, '2022-10-11 01:38:20', '2022-10-11 01:38:20'),
(56, 4, 'sunt', 'Placeat quibusdam itaque quae non cum rerum perferendis. Inventore voluptate harum non. Soluta veritatis placeat architecto. Nesciunt amet quos voluptatem sunt quia perferendis.', 5, '2022-10-11 01:38:20', '2022-10-11 01:38:20'),
(57, 31, 'est', 'Est reiciendis est eaque deserunt pariatur et earum. Nulla et enim labore et facilis aut dolores.', 4, '2022-10-11 01:38:20', '2022-10-11 01:38:20'),
(58, 23, 'vero', 'Perferendis minus dolores ullam. Aliquam quos vel dolores consectetur. Iste labore consequatur sunt ut et voluptatem. Quia molestiae eos id sint.', 3, '2022-10-11 01:38:20', '2022-10-11 01:38:20'),
(59, 42, 'quo', 'Minus dicta libero error aut pariatur quasi quam. Sapiente nobis veniam sunt. Voluptatum non dicta odio optio et illum quia sed.', 1, '2022-10-11 01:38:20', '2022-10-11 01:38:20'),
(60, 12, 'repellat', 'Consequatur dolores corrupti est nisi ab a. Quia dolorem iusto est occaecati quia.', 4, '2022-10-11 01:38:20', '2022-10-11 01:38:20'),
(61, 4, 'omnis', 'Rerum adipisci ut blanditiis eum at nobis aut. Possimus vel illum expedita possimus beatae qui odio. Atque qui voluptatem aut. Occaecati repellat autem dolorum labore voluptatem.', 5, '2022-10-11 01:38:20', '2022-10-11 01:38:20'),
(62, 49, 'dolorum', 'Magni et qui neque et dolores. Totam architecto quod ex inventore et. Quam eligendi sint molestiae quisquam quo asperiores.', 2, '2022-10-11 01:38:20', '2022-10-11 01:38:20'),
(63, 45, 'alias', 'Dolorem est fuga natus. Sunt omnis possimus et incidunt rerum nihil autem nisi. Amet est sequi ut ipsa voluptatem officiis. Perspiciatis voluptas fugit aliquam iusto nostrum magnam reprehenderit.', 2, '2022-10-11 01:38:20', '2022-10-11 01:38:20'),
(64, 30, 'numquam', 'Iste voluptates praesentium aut ullam numquam adipisci ab. Qui ea quia facilis sint dolorem nisi. Voluptatum eum atque libero sed. Mollitia et deserunt beatae quo.', 4, '2022-10-11 01:38:20', '2022-10-11 01:38:20'),
(65, 19, 'eaque', 'Quis et magni eveniet quam excepturi iste. Et dicta dicta quia omnis qui et assumenda omnis. Soluta aut cupiditate quae eaque neque. Necessitatibus vitae eligendi quia dolorem at.', 3, '2022-10-11 01:38:20', '2022-10-11 01:38:20'),
(66, 4, 'labore', 'Est ut dolores non ut eaque sit. Qui dolores blanditiis est cum possimus dolor. Eius quaerat maxime eligendi quod qui rerum sequi.', 4, '2022-10-11 01:38:20', '2022-10-11 01:38:20'),
(67, 28, 'rerum', 'Rem quis et facere illum quos. Et in similique quos ut qui. Non accusantium qui et alias id consectetur. Voluptatibus molestiae qui deleniti delectus.', 0, '2022-10-11 01:38:20', '2022-10-11 01:38:20'),
(68, 34, 'doloribus', 'Nobis impedit fugit facere pariatur cupiditate. Unde velit molestias saepe alias ea fugit et.', 2, '2022-10-11 01:38:20', '2022-10-11 01:38:20'),
(69, 4, 'et', 'Enim est impedit quas non rerum asperiores est. Consequatur maxime nihil natus rerum. Doloremque et ipsam voluptas voluptas.', 2, '2022-10-11 01:38:20', '2022-10-11 01:38:20'),
(70, 26, 'nostrum', 'Qui perferendis ex incidunt et iste quae sunt fugit. Veritatis nulla et amet illum a eveniet voluptas eum. Alias in adipisci soluta qui quisquam voluptas sunt. Accusantium voluptatem delectus quis voluptatem.', 0, '2022-10-11 01:38:20', '2022-10-11 01:38:20'),
(71, 5, 'et', 'Et eum quis molestiae provident qui. Sed quis deserunt in. Eligendi eos sed vel amet. Temporibus omnis nobis sit laborum voluptate veritatis consequatur.', 3, '2022-10-11 01:38:20', '2022-10-11 01:38:20'),
(72, 34, 'aliquid', 'Enim culpa esse rerum culpa. Aut exercitationem autem sed facilis modi ipsam et. Porro eos harum distinctio quam illum. Quis rem similique quia laboriosam eos autem excepturi.', 0, '2022-10-11 01:38:20', '2022-10-11 01:38:20'),
(73, 34, 'ipsam', 'Debitis repellat enim voluptas dolor aspernatur. Cum sapiente tempora ut maiores ab odit non. Expedita deserunt vero dolor soluta ex praesentium. Facere consequuntur perspiciatis sed sint ducimus dicta inventore. Eum consequatur cum rem tempora aliquid aut commodi.', 1, '2022-10-11 01:38:20', '2022-10-11 01:38:20'),
(74, 49, 'est', 'Omnis molestiae sunt rem non consequatur. Quidem ut voluptatem quaerat quo et porro provident.', 0, '2022-10-11 01:38:20', '2022-10-11 01:38:20'),
(75, 5, 'odit', 'Incidunt totam culpa omnis ratione. Accusantium vero et commodi et autem vitae voluptate. Ipsam omnis at aut dolore. Et sit laudantium excepturi sapiente laboriosam id.', 2, '2022-10-11 01:38:20', '2022-10-11 01:38:20'),
(76, 50, 'perferendis', 'Dolorum ratione et autem voluptas illo. Reiciendis quas soluta enim et aut. Qui illum doloremque occaecati eaque voluptatem nobis cupiditate molestias. Omnis accusamus consequatur impedit labore quia nemo.', 2, '2022-10-11 01:38:20', '2022-10-11 01:38:20'),
(77, 8, 'nobis', 'Maiores dolorem animi aliquam quo. Recusandae quo deserunt vero modi. Ex quis quod quo ut doloremque dolorem.', 5, '2022-10-11 01:38:20', '2022-10-11 01:38:20'),
(78, 18, 'ut', 'Dolor debitis est iusto est aut occaecati ipsam. Ut dolorem consequatur sit inventore mollitia. Sit non voluptate nisi non et blanditiis.', 3, '2022-10-11 01:38:20', '2022-10-11 01:38:20'),
(79, 23, 'nobis', 'Et maxime vero dicta fugiat ex. Cupiditate et eum doloremque aut. Tempora perspiciatis sed est voluptatibus nemo.', 4, '2022-10-11 01:38:20', '2022-10-11 01:38:20'),
(80, 12, 'velit', 'Aut numquam adipisci odio quo qui maxime. Ullam blanditiis voluptas ea aut. Reiciendis placeat quidem ratione est in.', 1, '2022-10-11 01:38:20', '2022-10-11 01:38:20'),
(81, 33, 'alias', 'Quia asperiores mollitia eum possimus quo. Qui sit ea eos amet in tenetur sit. Et tempora reiciendis cupiditate cumque adipisci. Nostrum ut et nesciunt officiis qui.', 2, '2022-10-11 01:38:21', '2022-10-11 01:38:21'),
(82, 17, 'voluptatem', 'Quis dolorem voluptatibus dolor inventore minima quas. Officiis maxime et et. Eum harum numquam excepturi consectetur non eius.', 4, '2022-10-11 01:38:21', '2022-10-11 01:38:21'),
(83, 6, 'quia', 'Sed non quibusdam quos impedit. Aliquid est et laboriosam quia nihil similique praesentium voluptates. Est iusto et reiciendis fugit enim.', 0, '2022-10-11 01:38:21', '2022-10-11 01:38:21'),
(84, 23, 'quasi', 'Nisi est perferendis qui voluptas. Cupiditate consequuntur et et laborum. Porro quod ex at iusto labore. Rerum saepe tempora accusantium magnam.', 1, '2022-10-11 01:38:21', '2022-10-11 01:38:21'),
(85, 49, 'et', 'Officia nemo similique odio deserunt esse. Consectetur aut dolor omnis iusto ut ut. Quas et quam ullam explicabo quibusdam atque possimus. Provident omnis aut dolores sit voluptatem earum.', 1, '2022-10-11 01:38:21', '2022-10-11 01:38:21'),
(86, 36, 'ut', 'Illum error qui eaque. Enim ipsa cum quis qui ut quos. Aspernatur quibusdam distinctio ab ex aut amet.', 1, '2022-10-11 01:38:21', '2022-10-11 01:38:21'),
(87, 19, 'magnam', 'Praesentium impedit quis id occaecati qui rerum. Ut eveniet ut qui modi aut. Et maiores mollitia accusantium. In est sequi nemo. Aut molestiae veniam facere iusto dolore vel nemo.', 3, '2022-10-11 01:38:21', '2022-10-11 01:38:21'),
(88, 34, 'quas', 'Est ducimus doloremque et qui qui et. Voluptatum tenetur adipisci et ab dolor. Consequuntur nobis adipisci rerum earum.', 4, '2022-10-11 01:38:21', '2022-10-11 01:38:21'),
(89, 4, 'similique', 'Perspiciatis consectetur provident nostrum. Qui iure ut sed est est libero ab inventore. Quis aut hic eum voluptas in animi. Id qui sit id assumenda magni et.', 0, '2022-10-11 01:38:21', '2022-10-11 01:38:21'),
(90, 44, 'et', 'Ipsam quia omnis suscipit dolore sed. Expedita necessitatibus quia nesciunt est nihil maxime. Quo quas nam ab ducimus molestias. Omnis harum id consequatur minus tenetur esse earum.', 4, '2022-10-11 01:38:21', '2022-10-11 01:38:21'),
(91, 20, 'voluptas', 'Qui necessitatibus pariatur hic voluptatum. Rem illum neque numquam totam. Ad officia quos ad nihil.', 4, '2022-10-11 01:38:21', '2022-10-11 01:38:21'),
(92, 36, 'quia', 'Nisi aut mollitia qui nulla. Possimus quis quia eligendi.', 1, '2022-10-11 01:38:21', '2022-10-11 01:38:21'),
(93, 49, 'perferendis', 'Nihil quasi sit unde ut voluptatem. Non in totam ad velit modi ducimus dolorem. Et est magni sed non ab. Beatae itaque eius ea.', 3, '2022-10-11 01:38:21', '2022-10-11 01:38:21'),
(94, 39, 'vel', 'Et omnis est culpa nihil molestiae. Autem voluptates error eos quia quos quod. Omnis laboriosam omnis earum aliquam. Hic laboriosam est dolor sapiente sed. Libero et exercitationem aperiam.', 3, '2022-10-11 01:38:21', '2022-10-11 01:38:21'),
(95, 11, 'consequatur', 'Dolorem aliquid aspernatur distinctio nisi consequatur aut. Qui cum omnis sunt perferendis veritatis sed. Ut rerum aperiam beatae.', 2, '2022-10-11 01:38:21', '2022-10-11 01:38:21'),
(96, 17, 'sapiente', 'Et repellendus distinctio cum sint totam. Debitis eos exercitationem est. Veniam asperiores nam pariatur omnis ratione est.', 0, '2022-10-11 01:38:21', '2022-10-11 01:38:21'),
(97, 47, 'animi', 'Laudantium voluptas aperiam eaque officia est soluta. Minus modi nulla deserunt vero. Rem magnam quia ullam occaecati.', 5, '2022-10-11 01:38:21', '2022-10-11 01:38:21'),
(98, 49, 'ratione', 'Nostrum sint molestiae quam dolor. Qui unde distinctio illo voluptate similique animi. Dolor dolor non est quibusdam.', 4, '2022-10-11 01:38:21', '2022-10-11 01:38:21'),
(99, 42, 'aut', 'Quo ducimus nemo voluptas alias sunt adipisci. Qui qui ex temporibus impedit neque expedita mollitia deleniti. Minima est delectus perspiciatis illum suscipit. Necessitatibus non velit excepturi dolor autem.', 1, '2022-10-11 01:38:21', '2022-10-11 01:38:21'),
(100, 6, 'sequi', 'Nobis dolores fugiat at numquam officiis quia. Quis assumenda quisquam quod. Ut velit molestiae dignissimos et maiores. Corporis dignissimos est neque eum rerum odit. Rerum error illum eos et modi ut nam.', 5, '2022-10-11 01:38:21', '2022-10-11 01:38:21'),
(101, 30, 'vel', 'Natus perferendis architecto nulla. Animi consequatur mollitia est qui. Doloribus consequatur temporibus et minima et ut fugit. Omnis quos minima doloremque qui sit.', 1, '2022-10-11 01:38:21', '2022-10-11 01:38:21'),
(102, 43, 'non', 'Odio ipsa deserunt rerum nihil. Veniam natus cumque quis sunt accusantium quia. Fugit incidunt facere numquam est reprehenderit et non accusamus.', 0, '2022-10-11 01:38:21', '2022-10-11 01:38:21'),
(103, 42, 'quasi', 'Accusamus voluptatum provident consectetur distinctio ut quo. Saepe earum ex pariatur maxime officiis. Cumque totam molestiae qui. Hic et excepturi rerum id.', 4, '2022-10-11 01:38:21', '2022-10-11 01:38:21'),
(104, 42, 'mollitia', 'Labore dolorum sint dicta sint perferendis est. Culpa sed sit corporis voluptatem. At ducimus quae deleniti fuga dolores minus aut est.', 0, '2022-10-11 01:38:21', '2022-10-11 01:38:21'),
(105, 11, 'aut', 'Hic maxime perspiciatis necessitatibus sint. Impedit aut in mollitia vel nobis.', 0, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(106, 39, 'voluptatem', 'Temporibus laborum velit sint est at. Cumque earum aspernatur repudiandae maxime. Vel ad optio nam fuga. Fuga eum ratione qui nesciunt in.', 1, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(107, 26, 'voluptatibus', 'Deserunt eos voluptatem fugit quisquam aut. Placeat vitae laborum aut. Minima nisi deserunt recusandae voluptatem. Et perspiciatis maiores a ullam incidunt id provident. Dolorum et eaque ut exercitationem iste.', 3, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(108, 17, 'ut', 'Maiores eum vitae in laudantium. Dolore nam et eius nisi consequatur. Necessitatibus at rerum cumque aliquid blanditiis totam.', 3, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(109, 25, 'dolores', 'Aut corporis aperiam sunt similique. Ipsa repellat voluptatem consequatur facere error. Provident quisquam non et ratione saepe. Nihil aut et aut et quas doloremque.', 3, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(110, 50, 'id', 'Reprehenderit id reprehenderit maiores ratione modi perferendis magnam. Dolor velit corrupti facere rerum animi.', 4, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(111, 35, 'labore', 'Saepe impedit et ut nemo. Quos ut ratione quia sit. Debitis asperiores deserunt nesciunt fugiat sit et maiores. Error et hic voluptatem ea vel inventore voluptatum quo.', 5, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(112, 1, 'amet', 'Earum non sint at ea qui accusamus voluptatibus. Exercitationem cupiditate rerum aut corrupti ratione ipsam. Ducimus temporibus et nobis nihil et dolore ducimus.', 5, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(113, 47, 'reiciendis', 'Atque dicta cupiditate vel ut officiis. Neque suscipit ea illum quo. Praesentium expedita sit veritatis ut. Aut id harum iste non aut neque.', 3, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(114, 3, 'suscipit', 'Ut ut eaque expedita aut tempora dolorum. Culpa accusamus provident nulla eveniet quia porro. Doloremque alias facilis reiciendis rerum eum modi. Nulla doloribus nemo alias totam sapiente ut.', 2, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(115, 7, 'recusandae', 'Repellendus itaque modi rerum quis. Earum qui nisi eos consequatur quo. Sunt qui sint ea vitae nemo harum. Ea totam quis a reiciendis nisi sit quos.', 5, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(116, 3, 'aut', 'Eos vero vitae dolorem debitis. Ab dolorem temporibus dolore consequatur nihil voluptate dolorum. Sunt earum reiciendis sunt ut occaecati.', 3, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(117, 39, 'nulla', 'Nihil porro labore inventore reiciendis sed ut consequatur atque. Suscipit cupiditate enim pariatur repellendus quia. Ut consequuntur ratione aut explicabo.', 0, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(118, 25, 'ipsam', 'Voluptas voluptas praesentium illum et quisquam necessitatibus. Nemo dolorum animi occaecati repellat recusandae. Facilis adipisci ducimus sit quia in harum commodi. Dolores architecto expedita delectus ea quia. Aut quisquam porro itaque sequi.', 3, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(119, 18, 'facere', 'Ullam qui veritatis beatae facere quas corrupti. Laboriosam totam pariatur blanditiis minima et fugiat maxime adipisci. Dolorum quas molestiae quia. Harum voluptates iste odio qui eum rerum. Cupiditate non placeat recusandae repellendus.', 0, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(120, 39, 'tenetur', 'Adipisci fugit nostrum voluptatem nisi dolorem quasi atque. Qui earum in soluta ratione. Nesciunt dolorum illum asperiores illum. Vero quo nihil nesciunt.', 5, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(121, 42, 'in', 'Sint eligendi non reiciendis. Vitae natus accusantium nihil eos aliquid tempore sunt aut. Tenetur a debitis id nemo maiores eligendi dolorem. Ex commodi doloribus porro.', 4, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(122, 19, 'excepturi', 'Ex est quo labore inventore id ipsa. Ratione vel debitis voluptatibus. Dolores eius voluptas dicta pariatur amet assumenda.', 5, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(123, 21, 'labore', 'Praesentium aspernatur molestiae quisquam minima consequatur recusandae soluta. Est voluptatum dicta reiciendis molestiae. Assumenda quia aut in sit hic recusandae. Iure consequatur eos dolor expedita soluta sunt.', 1, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(124, 6, 'suscipit', 'Cupiditate et est culpa tempore. Rerum consequatur nemo soluta voluptas officiis aliquam provident. Omnis eos sunt voluptas optio. Nesciunt neque quaerat omnis nobis harum eius. Nulla non et odio est ipsum iure.', 1, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(125, 8, 'reiciendis', 'Et necessitatibus voluptatem est cum eligendi sed et. Rerum quaerat et corporis voluptatem. Quis et asperiores sint ut tenetur repudiandae autem. Ut et cumque dolorem explicabo reiciendis quia est non.', 5, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(126, 44, 'sunt', 'Accusamus quaerat debitis voluptates modi. Eligendi dolor quia deserunt quis aliquid a. Inventore corrupti placeat expedita et.', 5, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(127, 15, 'tenetur', 'Consequatur voluptas optio impedit hic. Dolorum est officiis molestiae rem quo sed occaecati. Ut nemo eligendi aperiam ducimus aspernatur totam non molestias. Deleniti ut corrupti culpa mollitia aut et.', 4, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(128, 1, 'quo', 'Voluptatum consequatur fugiat voluptatem vitae. Excepturi adipisci laborum praesentium voluptatem atque. Est quo nulla recusandae ipsum.', 0, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(129, 35, 'ut', 'Animi debitis enim nisi error temporibus. Est id assumenda dolorum dolorum. Amet recusandae aspernatur quod ut ut vero et.', 3, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(130, 36, 'et', 'Cum quo ut et voluptas minima illo porro. Aut veniam eaque incidunt. Saepe ipsam omnis labore quibusdam doloremque eaque necessitatibus.', 2, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(131, 13, 'ipsam', 'Sint impedit quod expedita qui et quia autem. Voluptatem inventore ipsum repellendus. Aut ut et quo officiis distinctio. Similique ducimus quis impedit aliquid.', 1, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(132, 18, 'iusto', 'Qui ut commodi animi ex assumenda pariatur. Asperiores quia placeat tempore eveniet iusto. Et quas nihil quaerat iste in inventore libero.', 3, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(133, 37, 'soluta', 'Ab placeat quia ducimus dicta modi nihil quia placeat. Aliquid officia soluta veniam odit minus. Veniam quod nihil molestiae neque natus odio iure.', 1, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(134, 37, 'perferendis', 'Aut nulla ipsam assumenda quia consectetur at harum voluptas. Facere recusandae id velit id. Cum vero sint aut. Expedita mollitia consequatur qui qui.', 5, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(135, 33, 'voluptatem', 'Fugiat quisquam eius asperiores enim reiciendis officiis. Tenetur quis nisi possimus dignissimos quia temporibus quibusdam. Ducimus reiciendis sed quos velit. Rerum pariatur magnam praesentium.', 4, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(136, 6, 'quisquam', 'Dignissimos omnis facilis repudiandae voluptatum. Doloribus ipsa occaecati et facere nihil. Placeat magni assumenda incidunt optio voluptatibus doloribus.', 0, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(137, 18, 'exercitationem', 'In voluptatem molestiae laboriosam enim vel. Similique dolorem qui quia veritatis est. Et quaerat reprehenderit distinctio asperiores possimus dolorem. Velit dolorem voluptas ut dolorem quo deserunt asperiores.', 5, '2022-10-11 01:38:22', '2022-10-11 01:38:22'),
(138, 21, 'consectetur', 'Dicta praesentium consectetur est ut vitae quibusdam et. Harum ut at laboriosam quam consequatur. Neque explicabo velit ut quia facilis porro architecto voluptates. Soluta aut corporis at voluptatem. Quasi voluptatem dolor praesentium laborum placeat repellendus.', 3, '2022-10-11 01:38:23', '2022-10-11 01:38:23'),
(139, 20, 'laboriosam', 'Quasi similique et magni quis qui. Et repellat corporis officia rerum autem officiis quia facere. Dignissimos aut laboriosam ea cum reprehenderit ut velit.', 0, '2022-10-11 01:38:23', '2022-10-11 01:38:23'),
(140, 44, 'similique', 'Doloribus possimus nihil assumenda quod totam ut est. Id consequatur autem voluptatem temporibus. Vero earum corrupti laudantium sint asperiores. Similique qui natus molestiae quia.', 0, '2022-10-11 01:38:23', '2022-10-11 01:38:23'),
(141, 37, 'aut', 'Provident vero inventore reiciendis est quia. Consequatur non sunt beatae aut ab aut eveniet. Et et non adipisci. Nostrum praesentium ducimus iure perspiciatis sapiente rerum.', 4, '2022-10-11 01:38:23', '2022-10-11 01:38:23'),
(142, 38, 'autem', 'Quisquam veritatis nulla ullam est ut iste temporibus. Inventore iusto unde quo. Eum ut et quia vel est non nostrum. Aut voluptatem dignissimos at occaecati fugiat dolorum. Consequuntur velit dolorum ratione qui inventore vel voluptatem.', 3, '2022-10-11 01:38:23', '2022-10-11 01:38:23'),
(143, 33, 'modi', 'Iure aut praesentium libero modi velit hic quia. Beatae ea quae esse aperiam blanditiis labore. Accusamus qui ea rerum quam repudiandae quod sit. Aspernatur totam similique omnis illum.', 1, '2022-10-11 01:38:23', '2022-10-11 01:38:23'),
(144, 2, 'impedit', 'Tempora nulla officia dolorem natus consequatur voluptas. Doloribus in placeat officiis commodi itaque aperiam.', 3, '2022-10-11 01:38:23', '2022-10-11 01:38:23'),
(145, 3, 'accusantium', 'Magnam sint tempora facere rerum. Tenetur rerum sint et omnis quis temporibus numquam. Provident voluptatibus rerum dolor reiciendis velit et.', 1, '2022-10-11 01:38:23', '2022-10-11 01:38:23'),
(146, 22, 'quia', 'Aut rerum exercitationem deleniti eveniet eum. Labore nostrum et repellat repudiandae qui qui. Fugiat ut id fuga consequatur.', 4, '2022-10-11 01:38:23', '2022-10-11 01:38:23'),
(147, 5, 'dolores', 'Quia ullam rem velit ut occaecati. Eos reiciendis soluta mollitia dolorum.', 5, '2022-10-11 01:38:23', '2022-10-11 01:38:23'),
(148, 34, 'sint', 'Ullam optio ut quia aut ut. Adipisci minima eum dolorem iusto ea enim quaerat. Cum quasi ad earum cumque natus doloremque non facilis. Molestias ut deserunt autem et.', 3, '2022-10-11 01:38:23', '2022-10-11 01:38:23'),
(149, 1, 'iure', 'Qui tenetur itaque perspiciatis unde labore sunt asperiores. Est temporibus iste quam est velit. Ipsum sit vitae et et incidunt odio. Repudiandae laborum nihil itaque quaerat.', 4, '2022-10-11 01:38:23', '2022-10-11 01:38:23'),
(150, 42, 'ducimus', 'Consequatur voluptatem magnam consequatur labore voluptas dolor nam. Esse saepe iure ipsam earum itaque quia quas. Voluptas id itaque facere sequi maiores. Mollitia at dignissimos alias quod.', 4, '2022-10-11 01:38:23', '2022-10-11 01:38:23'),
(151, 49, 'porro', 'Quis debitis a fugit quam soluta. Ut quia rerum odio quae ut delectus. Unde ipsa iste dolores officia necessitatibus sunt.', 0, '2022-10-11 01:38:23', '2022-10-11 01:38:23'),
(152, 39, 'ut', 'Qui maiores molestiae ut odio. Repellendus eos ut quae ea minima harum occaecati. Fuga repudiandae non error hic. Omnis illo sit vel debitis sit.', 5, '2022-10-11 01:38:23', '2022-10-11 01:38:23'),
(153, 39, 'ipsum', 'Repellendus illo similique repellendus tempore nam. Quia quos qui laudantium voluptatibus eveniet quae ab.', 1, '2022-10-11 01:38:23', '2022-10-11 01:38:23'),
(154, 36, 'odit', 'Alias molestias pariatur eligendi optio. Iste rerum rerum eum consequuntur iste voluptas. Tenetur reprehenderit dolores perferendis ducimus est voluptas corporis.', 5, '2022-10-11 01:38:23', '2022-10-11 01:38:23'),
(155, 4, 'cupiditate', 'Facere voluptatum quidem fugit aliquid architecto sed perspiciatis. Doloribus eum quia quibusdam tenetur alias porro qui enim.', 4, '2022-10-11 01:38:23', '2022-10-11 01:38:23'),
(156, 10, 'nisi', 'Aliquid ullam sunt sed officia quasi. Doloremque quae culpa quod id qui ut earum. Tempore odit porro sunt rem enim sed rem saepe.', 1, '2022-10-11 01:38:23', '2022-10-11 01:38:23'),
(157, 50, 'incidunt', 'Quis consequatur sit asperiores nobis saepe consequatur eligendi modi. Nihil earum eos error non aut dolorem. Labore temporibus ipsam facere quaerat commodi quia. Praesentium non molestiae modi placeat vel et ducimus illum.', 1, '2022-10-11 01:38:23', '2022-10-11 01:38:23'),
(158, 25, 'voluptatem', 'Sint voluptates eveniet ipsum. Ab officia temporibus placeat esse culpa eligendi a cupiditate. Praesentium vel voluptatibus pariatur dignissimos officiis. Necessitatibus et itaque repellat aut quo in nostrum.', 0, '2022-10-11 01:38:23', '2022-10-11 01:38:23'),
(159, 25, 'aut', 'Velit odit amet sint aliquid a consequatur dolores. Hic enim qui et sit qui ab. Voluptates et nesciunt et totam error qui quos. Ut a non aut nam alias dolor unde.', 0, '2022-10-11 01:38:23', '2022-10-11 01:38:23'),
(160, 10, 'aspernatur', 'Aut rerum minima debitis necessitatibus molestiae recusandae consequatur qui. Veritatis quos expedita quis. Perspiciatis dolores repellendus nisi qui. Unde repellendus quia ipsum tenetur et.', 1, '2022-10-11 01:38:23', '2022-10-11 01:38:23'),
(161, 40, 'voluptatibus', 'Quia illum nemo totam nulla. Iure facilis nesciunt aut voluptatem. Reprehenderit nam iusto expedita autem.', 4, '2022-10-11 01:38:23', '2022-10-11 01:38:23'),
(162, 5, 'quia', 'Quas voluptate eius quas ea ea. Maxime est corrupti ea consequatur fuga id. Earum qui earum quia nostrum.', 3, '2022-10-11 01:38:23', '2022-10-11 01:38:23'),
(163, 30, 'nesciunt', 'Quia itaque et ut provident. Labore magnam voluptatem animi ut enim qui sed. Temporibus possimus quibusdam accusamus ut in. Occaecati molestiae quo similique ut ut.', 3, '2022-10-11 01:38:23', '2022-10-11 01:38:23'),
(164, 50, 'maxime', 'Provident fugiat soluta vel. Magni error non sed. Rerum eum totam voluptas accusantium. Qui possimus quasi at est.', 5, '2022-10-11 01:38:23', '2022-10-11 01:38:23'),
(165, 36, 'numquam', 'Et nemo quibusdam sed ut. Aut nostrum sint nostrum veritatis maiores facilis quaerat. Voluptates vel inventore ut totam.', 2, '2022-10-11 01:38:23', '2022-10-11 01:38:23'),
(166, 28, 'fuga', 'Est rerum mollitia id praesentium provident laboriosam commodi. Consequatur et aut est sit eligendi quia. Dolorem ut veniam voluptate veritatis ipsum molestiae.', 2, '2022-10-11 01:38:23', '2022-10-11 01:38:23'),
(167, 27, 'laboriosam', 'Ut culpa sit fugiat aut tempore. Expedita tempora vel iure molestias aut delectus. Dolorem assumenda laboriosam modi omnis officia animi vero. Animi praesentium sit ea nihil delectus.', 4, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(168, 35, 'et', 'Voluptates vitae enim et qui libero voluptatem quaerat. Exercitationem vel reiciendis vel tenetur ex est. Quidem atque eaque sunt laudantium quod odit iure enim. Qui magnam et delectus.', 4, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(169, 35, 'recusandae', 'Quos et consequuntur quibusdam est. Aliquam reiciendis voluptatem maiores debitis dolor natus. Qui velit eaque sed deserunt commodi quis necessitatibus voluptatibus.', 2, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(170, 4, 'ipsam', 'Magni saepe esse beatae non explicabo quibusdam. Pariatur recusandae aliquam fuga ea est nihil rerum. Voluptatem consequatur dolore voluptas.', 0, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(171, 3, 'omnis', 'Ad qui aspernatur dolor odio rerum. Consequatur neque vel odit est voluptatem earum. Ad autem occaecati nihil cupiditate.', 4, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(172, 37, 'expedita', 'Est cumque quis enim dicta voluptatibus vel omnis. Perspiciatis dolorem culpa quidem at autem. Ipsa iste dolorem commodi delectus commodi voluptatibus omnis. Veniam maxime aut ad sint.', 4, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(173, 35, 'est', 'Optio itaque et fugiat iure facilis molestiae culpa. Ut aut modi tempore quidem sed. Et sit autem placeat. Voluptate est dolorem provident et aspernatur.', 5, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(174, 2, 'animi', 'Labore nisi rem autem officiis officiis beatae necessitatibus. Ut eos minus libero autem inventore. Libero odit et corporis sapiente itaque ea rerum.', 3, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(175, 18, 'occaecati', 'Autem vitae sint aliquid odit et molestiae voluptatem. Omnis voluptatem unde architecto sint quis deserunt. Et voluptas ut tenetur.', 5, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(176, 36, 'maxime', 'In aspernatur ea aut veritatis eum. Qui unde voluptatem ut doloribus vitae aut esse. Molestias omnis consequuntur aut velit est.', 5, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(177, 18, 'distinctio', 'Illum alias incidunt eum itaque et est. Amet et enim illo.', 5, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(178, 24, 'molestiae', 'Sequi est dolorem aliquam alias in autem est aliquam. Voluptas reiciendis praesentium sunt alias ipsum et modi. Illum velit voluptatem voluptatem velit tenetur sequi iste. Ut eaque ut accusamus nihil quo velit et expedita.', 0, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(179, 22, 'aut', 'Officia qui dignissimos deserunt. Consequatur consequatur omnis ducimus dolorem iusto sed. Ab incidunt est aut quo vitae.', 1, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(180, 31, 'eveniet', 'Voluptatem aut perferendis voluptatem sed laborum. Sit consequatur dicta est qui voluptatem. Inventore aut qui ut placeat quis nesciunt tempora. Est molestiae eligendi sint eum quae id tenetur qui.', 1, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(181, 41, 'in', 'In quo dolorem minima. Ut eum dignissimos dicta aliquid eveniet. Explicabo sed voluptatem voluptatibus qui quaerat exercitationem. Et quia voluptatem ut id quis.', 4, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(182, 24, 'in', 'Similique similique vero nesciunt nulla et cumque in. Sit officia commodi ipsa mollitia dolorem quia dolor. Aut repellat aut est quis ipsum. Aut et facilis id aut voluptatum.', 4, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(183, 23, 'qui', 'Ut quod dolore qui unde. Provident enim quo nemo voluptas debitis. Similique accusantium eos aut ad neque.', 1, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(184, 37, 'beatae', 'Recusandae ullam ipsam corrupti repellat possimus laboriosam quo. Ea totam quisquam laborum. Est consequatur reiciendis omnis molestiae.', 2, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(185, 36, 'quo', 'Libero amet veniam nam aliquid. Ipsa in qui consequatur velit saepe autem sed. Repellat rerum similique quod rerum illum.', 0, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(186, 46, 'quisquam', 'Esse doloremque corrupti quod saepe quis. Quae autem ducimus culpa aspernatur placeat commodi aut. Dolore nostrum adipisci minus consequatur aut et officiis consequuntur. Voluptatem a adipisci perspiciatis delectus.', 4, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(187, 15, 'omnis', 'Fugit expedita deserunt quaerat quia non et. Eius neque sed consequuntur beatae. Et alias eos voluptates voluptas. Facilis excepturi enim natus vel ut voluptas.', 0, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(188, 43, 'ut', 'Ut expedita est a quas. Voluptatem aut alias provident culpa qui. Dicta quisquam aspernatur est dolor.', 4, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(189, 31, 'et', 'Reprehenderit reprehenderit consectetur sit ipsam ullam minima incidunt. Rerum quidem doloremque blanditiis. Provident nam quia hic quas cumque.', 0, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(190, 41, 'enim', 'Consequatur fugiat modi nam praesentium nemo sit. Quo est omnis praesentium. Natus iusto corrupti vero reiciendis distinctio est.', 0, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(191, 22, 'sequi', 'Sed voluptas repellat est omnis quia unde. Molestiae atque odit nemo et debitis recusandae voluptas. Provident occaecati dolor voluptatem.', 4, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(192, 9, 'enim', 'Repellendus voluptatibus ipsam consectetur odio. Voluptates dolorum excepturi praesentium voluptatem consequatur veritatis. Dignissimos et non totam ab deserunt quo. Accusantium qui commodi reiciendis similique suscipit.', 3, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(193, 14, 'velit', 'Rerum beatae eos sit repellat. Quas voluptatem repudiandae maxime dolorum occaecati aliquid quia vitae. Ullam exercitationem non recusandae omnis aut mollitia. Corporis consequatur illum ea nulla. Officiis qui libero est quisquam.', 4, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(194, 50, 'necessitatibus', 'Non voluptatem qui deleniti sint vitae enim. Repellat ut et at minima. Quia aut voluptatem qui quod laudantium. Neque est eaque repellat reprehenderit.', 2, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(195, 41, 'cum', 'Molestiae ut atque numquam cum qui consequatur. Rerum repudiandae eaque quod eligendi facilis atque vel. Qui non minima quaerat pariatur inventore ducimus. Atque quam amet magnam quos quia mollitia occaecati qui.', 1, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(196, 20, 'et', 'Vero aliquam et cum autem. Omnis quod dolorem debitis autem qui ut. Quis omnis labore laborum rerum voluptatibus in itaque. At ea neque non ut dolorem voluptas. Voluptate quo distinctio culpa aut deleniti ex.', 0, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(197, 48, 'adipisci', 'Iusto voluptatem aut dicta quia quasi velit ratione laborum. At explicabo et ad. Et aliquam nobis laboriosam sed. Consequatur aliquam quos omnis libero itaque voluptatibus.', 5, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(198, 50, 'ad', 'Qui ea doloremque eos veniam minima magnam quia fugit. Est architecto beatae possimus placeat molestias quia quia. Iste et blanditiis ex quis voluptatum repellendus. In enim deserunt consequatur ut impedit numquam facilis voluptatem.', 1, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(199, 30, 'ut', 'Qui dignissimos aut labore aut sint enim. Eum inventore fuga aut esse corporis ipsam delectus ab. Necessitatibus rerum voluptatem quia harum rerum blanditiis.', 0, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(200, 43, 'vitae', 'Voluptatem magni a nobis. Iusto adipisci dolor earum velit fugit inventore omnis sunt.', 5, '2022-10-11 01:38:24', '2022-10-11 01:38:24'),
(201, 34, 'et', 'Possimus vitae sit dolorem et. Impedit aliquid et ut alias molestiae autem esse quisquam. Dolorem id qui harum natus. Eius ea vero aut nisi accusamus doloribus suscipit est.', 5, '2022-10-11 01:38:25', '2022-10-11 01:38:25'),
(202, 43, 'aliquid', 'Ipsum sit qui quae voluptas nihil et. Sit consequatur quibusdam voluptatem sunt odio. Debitis rem neque in dolore voluptatem dolor et. Aliquid sed fugit et maxime nemo amet.', 2, '2022-10-11 01:38:25', '2022-10-11 01:38:25'),
(203, 24, 'cum', 'Corporis fuga ipsum possimus incidunt. Neque aut provident qui necessitatibus. Necessitatibus quia tempore aut dolores culpa.', 3, '2022-10-11 01:38:25', '2022-10-11 01:38:25'),
(204, 37, 'quod', 'Minus consequatur facere tempora qui et quae ut. Voluptatum fuga sed quo molestias quo et. Dolorum harum recusandae iste quasi quia consequatur qui.', 5, '2022-10-11 01:38:25', '2022-10-11 01:38:25'),
(205, 14, 'corporis', 'Eum rerum ipsam unde. Ut voluptatem placeat perferendis nihil dicta totam cupiditate. Optio provident consequatur voluptatem sed. Esse similique modi optio impedit sed cumque consequatur.', 3, '2022-10-11 01:38:25', '2022-10-11 01:38:25'),
(206, 30, 'molestias', 'Ut maxime itaque minima qui consequuntur mollitia. Qui eum vitae quaerat impedit. Qui quisquam accusantium dicta ut asperiores omnis.', 2, '2022-10-11 01:38:25', '2022-10-11 01:38:25'),
(207, 8, 'officia', 'Et non similique et sed quos. Dolor animi eaque unde tenetur distinctio aut asperiores. Officiis sed quod animi consectetur doloremque facilis sint.', 0, '2022-10-11 01:38:25', '2022-10-11 01:38:25'),
(208, 16, 'nobis', 'Qui deleniti et assumenda incidunt. Rerum nihil ea sunt quisquam fugit nostrum pariatur. Deleniti maiores voluptas nesciunt blanditiis soluta deleniti nobis.', 1, '2022-10-11 01:38:25', '2022-10-11 01:38:25'),
(209, 27, 'porro', 'Aliquid quam aliquam voluptatem temporibus aut. Veniam totam harum molestiae architecto qui error fuga deleniti. Magnam sint quia consequatur sed.', 4, '2022-10-11 01:38:25', '2022-10-11 01:38:25'),
(210, 32, 'dolor', 'Quis voluptatem porro ut consequatur. Itaque nam quis totam veniam amet nobis est. Tenetur velit aut optio consequatur ratione. Et ex iste molestias ratione eveniet iste.', 5, '2022-10-11 01:38:25', '2022-10-11 01:38:25'),
(211, 17, 'esse', 'Fuga ex consequatur autem ea magnam. Facere est voluptatum hic aut assumenda ducimus. Natus illum doloremque blanditiis aut quibusdam quia rem ab.', 2, '2022-10-11 01:38:25', '2022-10-11 01:38:25'),
(212, 29, 'sit', 'Sed aut illum iste omnis fugit vel. Praesentium quia cum qui quis modi temporibus praesentium iste. Excepturi delectus magnam cupiditate. Architecto itaque est sequi sit dicta laboriosam cupiditate.', 3, '2022-10-11 01:38:25', '2022-10-11 01:38:25'),
(213, 26, 'facilis', 'Impedit accusantium commodi non omnis quia exercitationem fugiat. Sapiente facilis explicabo officia blanditiis itaque at. Et dolores facere nihil.', 5, '2022-10-11 01:38:25', '2022-10-11 01:38:25'),
(214, 15, 'perspiciatis', 'Qui quas dignissimos molestiae aut fugiat. Qui minima possimus optio molestiae. Consequuntur accusantium amet nemo.', 2, '2022-10-11 01:38:25', '2022-10-11 01:38:25'),
(215, 33, 'corporis', 'Eum autem ut corrupti consequatur eum eos. Maiores consequatur laborum reiciendis reiciendis vitae optio. Exercitationem culpa porro provident. Qui est est debitis fugiat.', 4, '2022-10-11 01:38:25', '2022-10-11 01:38:25'),
(216, 21, 'eos', 'Cupiditate aliquam consequatur assumenda nobis eaque praesentium nesciunt natus. Eum quia incidunt dolor est deserunt consequatur quod. Ipsam facilis laudantium voluptas ut.', 1, '2022-10-11 01:38:25', '2022-10-11 01:38:25'),
(217, 29, 'eos', 'Debitis corrupti velit error vel non. Et aut necessitatibus qui est sunt officiis. Quam exercitationem fugiat incidunt officiis nemo error. Id debitis in temporibus qui culpa.', 0, '2022-10-11 01:38:25', '2022-10-11 01:38:25'),
(218, 38, 'minima', 'Omnis quos ut ducimus. Sit dolorem dolor consectetur voluptate excepturi a.', 5, '2022-10-11 01:38:25', '2022-10-11 01:38:25'),
(219, 44, 'quis', 'Quaerat excepturi aut neque. Ad beatae in minus. Quasi ut ratione dolores aut. Dicta qui asperiores minima quo quia laboriosam.', 4, '2022-10-11 01:38:25', '2022-10-11 01:38:25');
INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(220, 12, 'aspernatur', 'Vel ipsam et dicta omnis perferendis ipsa. Quos adipisci est et eius fugiat ab non. Aut aut consectetur ut ut.', 1, '2022-10-11 01:38:25', '2022-10-11 01:38:25'),
(221, 44, 'est', 'Et tenetur beatae facilis quia rerum qui. Pariatur et asperiores tempora sint a voluptas eligendi. Deleniti sit sed ea consequatur et quidem.', 1, '2022-10-11 01:38:25', '2022-10-11 01:38:25'),
(222, 17, 'et', 'Quisquam id quam ullam et quibusdam. Quod est deleniti voluptas fugit. Reiciendis reprehenderit rerum dolores unde a.', 2, '2022-10-11 01:38:25', '2022-10-11 01:38:25'),
(223, 11, 'est', 'Est quas autem sed officiis incidunt dolores qui facere. Repudiandae aspernatur nihil dolores quaerat corporis consequatur. Commodi beatae debitis iure fugit aut omnis hic.', 2, '2022-10-11 01:38:25', '2022-10-11 01:38:25'),
(224, 21, 'consequatur', 'Ducimus unde sequi et ex et quia. Suscipit voluptatem dolorem nemo sed error. Voluptas et eaque autem fugit debitis consequatur. Consectetur porro nulla ipsa ut.', 3, '2022-10-11 01:38:25', '2022-10-11 01:38:25'),
(225, 17, 'distinctio', 'Magnam quis ab exercitationem nostrum commodi. Ex alias adipisci magnam sunt consequatur in. Cumque totam et quia consequatur perspiciatis aut iste est. Nihil ipsa ex sit suscipit est nulla.', 4, '2022-10-11 01:38:25', '2022-10-11 01:38:25'),
(226, 1, 'labore', 'Qui incidunt quidem laudantium sit. A nesciunt architecto id omnis ut doloribus necessitatibus.', 1, '2022-10-11 01:38:25', '2022-10-11 01:38:25'),
(227, 32, 'possimus', 'Ut qui dolor non amet cum similique illum. Id omnis at at possimus magnam rerum ipsam. Accusantium sit et in quos quia.', 1, '2022-10-11 01:38:25', '2022-10-11 01:38:25'),
(228, 20, 'aut', 'Doloremque qui consequatur atque natus. Nulla perspiciatis et tempore debitis fuga unde voluptatem. Placeat ea sed impedit aspernatur voluptatibus sunt. Ad eos quaerat quod.', 5, '2022-10-11 01:38:25', '2022-10-11 01:38:25'),
(229, 36, 'sint', 'Natus pariatur totam quia deleniti sed tenetur dignissimos distinctio. Est occaecati est rerum non sit provident fugiat.', 4, '2022-10-11 01:38:26', '2022-10-11 01:38:26'),
(230, 27, 'aperiam', 'Officia hic consequatur quia dolore voluptatibus aut error fuga. Voluptatem rem expedita rem quasi deserunt blanditiis. Eaque odio ratione rerum architecto ut sit. Adipisci quidem accusantium nam illum sed blanditiis.', 1, '2022-10-11 01:38:26', '2022-10-11 01:38:26'),
(231, 39, 'debitis', 'Sed aut minima et eum iure reprehenderit. Sint dolorum perferendis quia culpa voluptatem est in.', 4, '2022-10-11 01:38:26', '2022-10-11 01:38:26'),
(232, 12, 'voluptas', 'Incidunt sapiente inventore quia quam accusamus. Architecto ex enim voluptatem illum. Et repudiandae molestiae odio et voluptas. Nemo voluptates qui est voluptatem alias quis.', 4, '2022-10-11 01:38:26', '2022-10-11 01:38:26'),
(233, 21, 'vero', 'Beatae nesciunt distinctio iure dolores aut blanditiis. Maxime ipsum est corporis quas nesciunt odit. Aut at nesciunt nihil minima.', 2, '2022-10-11 01:38:26', '2022-10-11 01:38:26'),
(234, 42, 'ut', 'Itaque iure rerum dolores suscipit. Voluptatibus qui qui laboriosam atque rem sequi. Qui magni expedita incidunt eveniet. Dolor laborum sed sequi.', 5, '2022-10-11 01:38:26', '2022-10-11 01:38:26'),
(235, 40, 'ad', 'Eos dignissimos veniam voluptas qui architecto. Eum qui rerum nihil occaecati necessitatibus. Fugit voluptatem sed dolorem in sed corporis. Nihil eum consequatur ea qui magni rerum non.', 2, '2022-10-11 01:38:26', '2022-10-11 01:38:26'),
(236, 10, 'a', 'Iste ipsa minus esse nisi necessitatibus officiis vel. Et magni sit quia eos. Magnam ut provident architecto laboriosam.', 4, '2022-10-11 01:38:26', '2022-10-11 01:38:26'),
(237, 33, 'impedit', 'Placeat et quia et accusantium fuga voluptatum quidem. Magni minima in blanditiis ex. Voluptatem sit nihil possimus similique nulla ut animi. Aut explicabo omnis ab explicabo.', 2, '2022-10-11 01:38:26', '2022-10-11 01:38:26'),
(238, 46, 'mollitia', 'Voluptatem voluptatibus non aut omnis a impedit sed sequi. Aliquid atque voluptatem sint asperiores illo eum nemo. Et pariatur explicabo assumenda aut odio ad.', 3, '2022-10-11 01:38:26', '2022-10-11 01:38:26'),
(239, 43, 'eos', 'Recusandae numquam quaerat esse dolorem. Quo rerum nobis fugiat porro beatae. Qui officia eum qui iure. Eveniet nulla impedit cumque eligendi et.', 5, '2022-10-11 01:38:26', '2022-10-11 01:38:26'),
(240, 7, 'nobis', 'Earum quae nemo consequuntur reiciendis iusto totam et. Atque harum cupiditate est consectetur laborum nihil aut. Consequatur labore aspernatur et. Consequatur consequatur vel aut culpa ea.', 5, '2022-10-11 01:38:26', '2022-10-11 01:38:26'),
(241, 9, 'hic', 'Tempore ipsa natus sint aut quod. Aut fugit sit et. Iure dolores at architecto ea velit et.', 3, '2022-10-11 01:38:26', '2022-10-11 01:38:26'),
(242, 17, 'unde', 'Veritatis rerum et sit minima autem doloribus. Distinctio laudantium sequi voluptates minus est. Omnis non nam sed et.', 3, '2022-10-11 01:38:26', '2022-10-11 01:38:26'),
(243, 32, 'et', 'Perspiciatis et minima quo vel et. Est totam officiis voluptates aperiam nobis aut et. Rerum porro qui veritatis nam qui et. Possimus quibusdam rem voluptatem ducimus eius cumque. Excepturi excepturi facilis officia aut voluptatem.', 5, '2022-10-11 01:38:26', '2022-10-11 01:38:26'),
(244, 31, 'omnis', 'Voluptas voluptatem iusto suscipit. Excepturi ipsum sed libero eos unde facere sit.', 4, '2022-10-11 01:38:26', '2022-10-11 01:38:26'),
(245, 49, 'animi', 'Quia et sed eum quo. Aut rerum est aut architecto dicta dicta quia. Et eum recusandae error commodi.', 5, '2022-10-11 01:38:26', '2022-10-11 01:38:26'),
(246, 12, 'velit', 'Quia accusantium ut pariatur cum. Sed blanditiis architecto voluptatibus beatae possimus commodi. Hic voluptatem temporibus sunt quo deleniti. Dolor facere est quidem voluptatem reprehenderit voluptas aut dolorem.', 3, '2022-10-11 01:38:26', '2022-10-11 01:38:26'),
(247, 35, 'saepe', 'Quia pariatur aliquid voluptatem tempora a unde id. Sunt corporis sunt ut sit soluta libero voluptas. Velit culpa ut velit repudiandae officiis. Ad eum rem temporibus id maiores quaerat. Ut esse culpa velit quo enim fugiat possimus provident.', 4, '2022-10-11 01:38:26', '2022-10-11 01:38:26'),
(248, 13, 'aut', 'Quis veniam incidunt adipisci iusto ullam voluptas quia. Aut aut pariatur quasi et. Minus sequi error dicta. Iure ut placeat aut amet.', 0, '2022-10-11 01:38:26', '2022-10-11 01:38:26'),
(249, 35, 'qui', 'Quo ratione et eius error nihil. Et est dolor adipisci consectetur. Deserunt sit suscipit provident eum perspiciatis tenetur. Ipsum corporis ipsam voluptatem voluptas dignissimos est qui. Aut repudiandae doloremque accusantium et dolorem.', 5, '2022-10-11 01:38:26', '2022-10-11 01:38:26'),
(250, 18, 'quia', 'Aliquid tempora maxime iste quidem nesciunt. Et similique minus odit sapiente fugit. Harum incidunt illo tenetur et in molestiae natus ut. Voluptas voluptatem perspiciatis deserunt quod id voluptatum ea.', 3, '2022-10-11 01:38:26', '2022-10-11 01:38:26'),
(251, 2, 'officia', 'Est ea veritatis est fuga quasi omnis. Veritatis quia consequatur distinctio enim a incidunt occaecati. Nemo dolorum esse maiores nulla et dolores. Iste dolores eum nam rerum earum aut rerum consequatur.', 3, '2022-10-11 01:38:26', '2022-10-11 01:38:26'),
(252, 29, 'velit', 'Veritatis aut fugit eum recusandae est sed vitae ab. Ea natus magnam ipsam quam libero sequi autem. Ea voluptatem nisi ut sit eos aut. Dolor rerum ad magnam distinctio sed.', 4, '2022-10-11 01:38:26', '2022-10-11 01:38:26'),
(253, 37, 'voluptate', 'Dolor inventore ratione facilis a minima ducimus sapiente. Earum rem accusamus est exercitationem rerum. Sit nisi in hic consectetur dolorem. Voluptatibus nobis debitis sit ratione iste.', 0, '2022-10-11 01:38:26', '2022-10-11 01:38:26'),
(254, 32, 'blanditiis', 'Est sapiente aut et consequatur itaque voluptas. Sunt voluptate omnis placeat doloribus dolorem tempore inventore.', 2, '2022-10-11 01:38:26', '2022-10-11 01:38:26'),
(255, 23, 'eos', 'Modi est perferendis doloribus nisi asperiores id a. Sed nisi doloribus at quasi.', 5, '2022-10-11 01:38:27', '2022-10-11 01:38:27'),
(256, 2, 'rerum', 'Eaque est voluptas magnam saepe eligendi doloribus. Nobis tempora consequatur quis dolor qui voluptatum. Omnis velit voluptas dolorum accusamus sint.', 2, '2022-10-11 01:38:27', '2022-10-11 01:38:27'),
(257, 36, 'aut', 'Exercitationem quia minima similique dolorem. Vitae tempora sed accusantium eos exercitationem quas.', 4, '2022-10-11 01:38:27', '2022-10-11 01:38:27'),
(258, 31, 'nihil', 'Ullam dolorem magnam at. Eligendi neque cum dolores vitae sed libero. Odio minus modi aut officiis libero ab dignissimos officia.', 0, '2022-10-11 01:38:27', '2022-10-11 01:38:27'),
(259, 42, 'aspernatur', 'Suscipit sint aut facere praesentium. Cumque hic velit autem sunt optio quas nulla.', 0, '2022-10-11 01:38:27', '2022-10-11 01:38:27'),
(260, 49, 'et', 'Porro quibusdam deserunt excepturi fuga occaecati quidem. Blanditiis facere ea sequi velit. Ducimus nihil dolor consequatur. Officia et rerum tenetur rerum laudantium. Doloribus velit deserunt quia nam.', 2, '2022-10-11 01:38:27', '2022-10-11 01:38:27'),
(261, 20, 'voluptate', 'Ut consequatur ratione quo maiores laborum reprehenderit dolorem. Iure vero eaque sed excepturi est quaerat architecto. Rem iusto ex ea in.', 5, '2022-10-11 01:38:27', '2022-10-11 01:38:27'),
(262, 38, 'cupiditate', 'Maxime distinctio ea voluptas numquam ut quia. Ut suscipit neque incidunt porro sed. Totam eos dolorem sit repellendus excepturi distinctio molestiae.', 4, '2022-10-11 01:38:27', '2022-10-11 01:38:27'),
(263, 33, 'dicta', 'Officia expedita vel at eum. Sunt aut quibusdam placeat eos sed eaque dolorem. Eaque omnis sequi incidunt in in minus amet voluptas. Doloremque quo non quae magni qui nam consequatur minus.', 3, '2022-10-11 01:38:27', '2022-10-11 01:38:27'),
(264, 8, 'qui', 'Soluta eos dolorem reprehenderit voluptatibus neque optio autem voluptate. Ut architecto unde voluptas eum commodi quia. Quod perferendis incidunt sed est quae.', 4, '2022-10-11 01:38:27', '2022-10-11 01:38:27'),
(265, 21, 'qui', 'Dolore rerum fugit natus quis harum odio beatae. Eos assumenda dolorum et. Optio magni recusandae in autem.', 2, '2022-10-11 01:38:27', '2022-10-11 01:38:27'),
(266, 45, 'ut', 'Corrupti dolorum dolores maiores saepe ratione consequatur voluptatem. Est nobis fugiat similique maxime a. Cumque amet nostrum ut quibusdam. Sit minus ut consequatur tempora natus nihil.', 3, '2022-10-11 01:38:27', '2022-10-11 01:38:27'),
(267, 20, 'ad', 'Dolorem repudiandae ad occaecati quisquam excepturi. Et vel facilis molestiae. Accusamus odio repudiandae modi recusandae quia dolores in. Sed voluptatem sed laboriosam aliquam nemo.', 2, '2022-10-11 01:38:27', '2022-10-11 01:38:27'),
(268, 1, 'mollitia', 'Labore nisi cum est dolorem. Repellendus tempore iste officiis nisi maiores tenetur quia sequi. Et cupiditate hic fuga. Optio eveniet maxime sed nemo.', 4, '2022-10-11 01:38:27', '2022-10-11 01:38:27'),
(269, 21, 'nesciunt', 'Excepturi quod molestias id rerum ad. Commodi eos accusantium autem impedit. Sit voluptatem molestiae repellendus reprehenderit dignissimos velit velit quod. Eum debitis sed quam commodi alias et. Nesciunt est quaerat voluptatem modi quae ut aut.', 3, '2022-10-11 01:38:27', '2022-10-11 01:38:27'),
(270, 21, 'quos', 'Nisi ad temporibus et saepe. Quaerat sapiente non pariatur. Odit quod velit repellat placeat. Rerum recusandae quia saepe eos ad.', 0, '2022-10-11 01:38:27', '2022-10-11 01:38:27'),
(271, 32, 'animi', 'Repudiandae illum quia magnam quidem quia accusantium mollitia. Aliquid tenetur odio expedita. Voluptatem quos quae quaerat.', 0, '2022-10-11 01:38:27', '2022-10-11 01:38:27'),
(272, 30, 'mollitia', 'Officia magni consequuntur qui et dolorem tenetur qui. Voluptatibus ad odit temporibus dicta quia ex et. Esse est qui non iure possimus.', 4, '2022-10-11 01:38:27', '2022-10-11 01:38:27'),
(273, 2, 'dolore', 'Dolores non dolor quis voluptate itaque beatae. Occaecati iste repellat dignissimos explicabo magnam hic consequuntur nisi. Eum modi omnis qui repudiandae quas libero est.', 0, '2022-10-11 01:38:27', '2022-10-11 01:38:27'),
(274, 27, 'et', 'Earum et deleniti omnis dolorem eos consequatur illum cum. Nulla amet nam et doloremque molestias provident illum tenetur. Labore ad ut blanditiis explicabo voluptatem.', 3, '2022-10-11 01:38:28', '2022-10-11 01:38:28'),
(275, 5, 'eos', 'Sunt qui id culpa minus consequatur beatae. Voluptate porro corporis ut atque impedit.', 4, '2022-10-11 01:38:28', '2022-10-11 01:38:28'),
(276, 25, 'nesciunt', 'Non dolores quam distinctio et adipisci. Cum laborum dignissimos sint animi quaerat nesciunt. Qui est eligendi illo facere. Qui aut commodi temporibus reiciendis nostrum quasi vitae.', 5, '2022-10-11 01:38:28', '2022-10-11 01:38:28'),
(277, 22, 'enim', 'Eligendi occaecati debitis ut est in. Atque placeat eligendi necessitatibus dolores iusto. Omnis reprehenderit omnis ea illo.', 5, '2022-10-11 01:38:28', '2022-10-11 01:38:28'),
(278, 32, 'unde', 'Sint sit commodi tempora aut. Blanditiis dicta rem assumenda fuga. Qui atque nam quaerat sed. Qui in ducimus et adipisci sed iure.', 4, '2022-10-11 01:38:28', '2022-10-11 01:38:28'),
(279, 30, 'omnis', 'Dignissimos error consequuntur minus dolorem. Necessitatibus quidem nihil minima. Quae natus optio non ex maxime quia fuga. Ut velit eveniet nostrum molestiae.', 3, '2022-10-11 01:38:28', '2022-10-11 01:38:28'),
(280, 48, 'qui', 'Assumenda aspernatur eos sapiente. Ut aut dicta beatae eaque ad et voluptates. Debitis quia iusto commodi enim et non. Amet reiciendis pariatur consectetur et vel voluptate et.', 5, '2022-10-11 01:38:28', '2022-10-11 01:38:28'),
(281, 29, 'et', 'Velit in quidem doloremque harum quo consequatur. Fugiat molestiae tenetur omnis sint explicabo. Consequatur vitae voluptates numquam nobis. Maiores et repellendus dolorem reprehenderit dolores eum.', 1, '2022-10-11 01:38:28', '2022-10-11 01:38:28'),
(282, 21, 'beatae', 'Facere beatae pariatur quae ut ut facilis consectetur. Distinctio suscipit illum sed soluta deserunt. Sit molestiae et earum non quod tenetur beatae. Animi nobis dolores et veritatis et ipsum omnis.', 4, '2022-10-11 01:38:28', '2022-10-11 01:38:28'),
(283, 10, 'consequuntur', 'Voluptatem sunt autem adipisci reiciendis fugiat aut cupiditate. Doloremque rerum in id ea necessitatibus aliquam et. Qui dolor nihil omnis autem quia aspernatur id. Aut aut quam repudiandae eaque.', 5, '2022-10-11 01:38:28', '2022-10-11 01:38:28'),
(284, 45, 'culpa', 'Est dolor assumenda nisi placeat non voluptas. Aut consequatur quia quia. Nobis expedita tempora at asperiores nihil ut. Vitae numquam a pariatur odit aut.', 1, '2022-10-11 01:38:28', '2022-10-11 01:38:28'),
(285, 14, 'fuga', 'Aut accusamus qui sit repellendus omnis sunt. In et nam illo et voluptatem recusandae. Ut consequatur consequatur sit.', 3, '2022-10-11 01:38:28', '2022-10-11 01:38:28'),
(286, 21, 'ratione', 'Consequatur a eum aut repudiandae omnis minima. Et et accusantium quia illo. Perferendis voluptatibus quia mollitia voluptas magnam. Dolorem eos est nisi et.', 1, '2022-10-11 01:38:28', '2022-10-11 01:38:28'),
(287, 18, 'id', 'Architecto unde voluptatem sed et aliquam laudantium amet alias. Quas reprehenderit dolores et ullam voluptate aspernatur. Ratione quis sint distinctio amet reprehenderit nesciunt architecto. Possimus rem quisquam neque nihil.', 1, '2022-10-11 01:38:28', '2022-10-11 01:38:28'),
(288, 18, 'omnis', 'Nam voluptas hic omnis veritatis molestiae consequatur sit harum. Sed repellendus dolorum et esse inventore ut non. Ducimus qui amet quisquam. Nulla odit cumque voluptatem ut facilis et officiis. Blanditiis a corporis totam ut et accusamus.', 4, '2022-10-11 01:38:28', '2022-10-11 01:38:28'),
(289, 48, 'nulla', 'Est quo suscipit numquam fugit et ut rem. Autem ut asperiores dolor laborum minima molestiae quisquam. Ut rerum porro non quod rerum.', 0, '2022-10-11 01:38:28', '2022-10-11 01:38:28'),
(290, 5, 'laborum', 'Et sit cupiditate fugit asperiores. Officia non qui ex et. Quia explicabo illum fugiat doloremque est.', 3, '2022-10-11 01:38:28', '2022-10-11 01:38:28'),
(291, 10, 'perspiciatis', 'Consectetur quibusdam reiciendis non eius dignissimos similique. Corrupti enim inventore ex deleniti. Sed soluta molestias modi sint. Maiores corrupti a voluptatibus reprehenderit.', 2, '2022-10-11 01:38:28', '2022-10-11 01:38:28'),
(292, 32, 'sapiente', 'Veniam totam consequuntur quisquam debitis eos. Et accusamus a eum ab asperiores.', 2, '2022-10-11 01:38:28', '2022-10-11 01:38:28'),
(293, 16, 'sint', 'Autem vel maxime eveniet tempora aperiam ut quae. Officia voluptatibus voluptas nesciunt temporibus debitis sit deserunt. Corporis nulla repellat excepturi est ea quia quis asperiores.', 2, '2022-10-11 01:38:28', '2022-10-11 01:38:28'),
(294, 20, 'deserunt', 'Enim exercitationem et quod commodi. Voluptatum natus distinctio autem aperiam ea sit. Ut officiis et ea nihil quos non. Vero vel eum rem sint. Consequuntur enim at sint est.', 3, '2022-10-11 01:38:28', '2022-10-11 01:38:28'),
(295, 22, 'temporibus', 'Est ullam enim eveniet quia. Et id et reiciendis aut ipsum molestias consequatur natus. Reiciendis nemo velit excepturi numquam beatae quia. Nobis ullam et labore ut itaque.', 2, '2022-10-11 01:38:28', '2022-10-11 01:38:28'),
(296, 1, 'id', 'Qui voluptatem ea nam sapiente nulla. Neque aut iure culpa ut. Molestias qui ut omnis blanditiis. Alias soluta aut delectus.', 0, '2022-10-11 01:38:28', '2022-10-11 01:38:28'),
(297, 29, 'laboriosam', 'Beatae voluptas cupiditate in corporis aut aliquam. Nisi omnis aut sit voluptates rerum quod vel. Accusamus ut explicabo consequatur inventore rerum nisi aut qui. Voluptatum dolores nihil dicta cum sint vel vero.', 5, '2022-10-11 01:38:28', '2022-10-11 01:38:28'),
(298, 18, 'vel', 'Quidem natus fuga est pariatur quo consectetur iste officiis. Doloremque nobis occaecati facere aut. Dolores voluptas nulla quo est ipsum dolore ipsam. Consequatur quia sit at rem.', 4, '2022-10-11 01:38:28', '2022-10-11 01:38:28'),
(299, 27, 'ducimus', 'Aut culpa consectetur enim non. Accusamus sunt iure dolorem dolorem et voluptas. In rerum et aperiam dignissimos soluta soluta corrupti. Temporibus iste accusamus doloremque dolor quaerat.', 5, '2022-10-11 01:38:28', '2022-10-11 01:38:28'),
(300, 23, 'consectetur', 'Culpa sit odit accusamus vero esse. Quia quis maiores neque possimus totam.', 2, '2022-10-11 01:38:28', '2022-10-11 01:38:28');

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

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Samer Kauser', 'sam@gmail.com', NULL, '$2y$10$QMlBbovscaL/tnwinwjC2OCNT0Z/2v0NWpWm0FO5HUEqZcd5Sywzu', NULL, '2022-10-15 13:03:25', '2022-10-15 13:03:25');

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_index` (`product_id`);

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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
