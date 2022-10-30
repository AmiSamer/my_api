-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2022 at 09:18 AM
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
(20, '2014_10_12_000000_create_users_table', 1),
(21, '2014_10_12_100000_create_password_resets_table', 1),
(22, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(23, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(24, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(25, '2016_06_01_000004_create_oauth_clients_table', 1),
(26, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2022_10_11_060637_create_products_table', 1),
(29, '2022_10_11_061637_create_reviews_table', 1);

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
('1b46ba7050e20877a71be1ee4ac892d70f972fa6eb1d5341642220eff84f15f44adfb98bba9eb144', 3, 2, NULL, '[]', 0, '2022-10-30 01:32:17', '2022-10-30 01:32:17', '2023-10-30 07:32:17');

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
(1, NULL, 'Laravel Personal Access Client', 'IwD7L1NXoDhG9nnktrFL32thX1PxLqeyeg3u5e2s', NULL, 'http://localhost', 1, 0, 0, '2022-10-30 01:31:18', '2022-10-30 01:31:18'),
(2, NULL, 'Laravel Password Grant Client', 'pUoXc4mpmD2YNSbkcE5PIhhWMVhULA5jRjvpYnPC', 'users', 'http://localhost', 0, 1, 0, '2022-10-30 01:31:18', '2022-10-30 01:31:18');

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
(1, 1, '2022-10-30 01:31:18', '2022-10-30 01:31:18');

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
('cf4ab48a8957991bc5061cb3d2e8db63044b3373a3567ca8d9b7aee9ea6d9382cbfba6eb16ca6459', '1b46ba7050e20877a71be1ee4ac892d70f972fa6eb1d5341642220eff84f15f44adfb98bba9eb144', 0, '2023-10-30 07:32:17');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `price`, `stock`, `discount`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'nisi', 'Dicta libero quia in quis tempora ut. Ab at nemo eligendi in ea odio ut. Quibusdam ducimus fugiat odio recusandae atque cum molestias. Non voluptas ipsam cumque.', 705, 6, 12, 1, '2022-10-30 01:30:41', '2022-10-30 01:30:41'),
(2, 'cumque', 'Et aspernatur modi iusto vitae sunt. Ea ut minima dolores est tempore eius. Sint itaque sint molestiae modi. Quo quos quod recusandae quisquam nostrum consequatur. Distinctio aut alias consequuntur veniam et debitis.', 669, 2, 10, 1, '2022-10-30 01:30:41', '2022-10-30 01:30:41'),
(3, 'cumque', 'Unde mollitia nihil autem optio est facilis nostrum. Ut et est rerum ipsam. Possimus debitis in quia blanditiis officia consequuntur quia eos.', 911, 6, 13, 3, '2022-10-30 01:30:41', '2022-10-30 01:30:41'),
(4, 'ipsam', 'Distinctio provident molestiae harum ut architecto iste. Eveniet et tempore temporibus. In eveniet aut qui est sapiente ut voluptatem. Consequatur sit unde ad laborum. Eum tempora porro praesentium et ea est.', 907, 6, 6, 5, '2022-10-30 01:30:41', '2022-10-30 01:30:41'),
(5, 'soluta', 'Suscipit veritatis sapiente qui. Eum incidunt dolores expedita.', 575, 0, 22, 1, '2022-10-30 01:30:41', '2022-10-30 01:30:41'),
(6, 'harum', 'Sint in consequatur adipisci sed laboriosam. Dolorum magnam deserunt voluptas beatae. Rerum quos placeat dicta vel quo.', 672, 7, 21, 5, '2022-10-30 01:30:41', '2022-10-30 01:30:41'),
(7, 'dolorum', 'Aliquid velit cum autem minus qui. Cumque aut commodi sed omnis est. Nulla aut id accusamus sit ut minima aut. Et nemo explicabo vel nam suscipit ut autem.', 484, 8, 8, 4, '2022-10-30 01:30:41', '2022-10-30 01:30:41'),
(8, 'ipsa', 'Voluptate voluptates et sint consequatur amet. Eaque vel consequuntur omnis et sed ducimus. Nesciunt quis et qui voluptates sunt. Et enim asperiores eaque vitae.', 454, 2, 24, 3, '2022-10-30 01:30:41', '2022-10-30 01:30:41'),
(9, 'aut', 'Ducimus et a deserunt nihil saepe similique est. Deleniti nisi ea quam. Dolore sed officiis minus ea et omnis. Et ad et sed nobis velit qui totam.', 362, 1, 3, 3, '2022-10-30 01:30:41', '2022-10-30 01:30:41'),
(10, 'rerum', 'Modi est occaecati ut suscipit neque. Voluptates vel aliquid inventore molestiae qui illo. Adipisci qui aut magni ipsum officiis non quod. Eos praesentium quidem consequuntur quas.', 747, 6, 21, 2, '2022-10-30 01:30:41', '2022-10-30 01:30:41'),
(11, 'nihil', 'Culpa quibusdam qui molestiae autem. Minima in quam esse in. Dolores dignissimos ex asperiores voluptatum harum autem repudiandae. Provident sit assumenda magni pariatur facere vitae expedita minus.', 734, 9, 21, 4, '2022-10-30 01:30:41', '2022-10-30 01:30:41'),
(12, 'deleniti', 'Minima maiores id nesciunt ratione ea aspernatur in. Earum quidem perspiciatis ut sed fugiat doloribus. Omnis perspiciatis facere modi provident est. Eius maxime suscipit quam magnam.', 786, 0, 2, 3, '2022-10-30 01:30:41', '2022-10-30 01:30:41'),
(13, 'ea', 'Quas aut quo aliquid iusto dicta. Tenetur dolores provident sit temporibus doloremque. At repudiandae velit eligendi est nesciunt. Sit qui ut autem reiciendis.', 527, 3, 29, 2, '2022-10-30 01:30:41', '2022-10-30 01:30:41'),
(14, 'repellendus', 'Qui dolor fugiat distinctio distinctio beatae aut expedita. Eos aut est ullam et porro. Et saepe molestias molestias repudiandae reprehenderit. Qui nihil maiores voluptatem repellat dignissimos. Veniam ea pariatur numquam est.', 382, 5, 28, 4, '2022-10-30 01:30:41', '2022-10-30 01:30:41'),
(15, 'est', 'Sunt numquam ut dolore expedita doloremque nemo quisquam. Autem eum quia ducimus praesentium praesentium similique. Corrupti possimus ea aut ex voluptatem voluptatem dolorum assumenda. Sint nihil occaecati dicta aut.', 853, 1, 30, 3, '2022-10-30 01:30:41', '2022-10-30 01:30:41'),
(16, 'in', 'Culpa cumque aut amet est et voluptatem quo. Quod temporibus consequatur rerum assumenda architecto beatae deleniti. Perspiciatis quidem ut eos quos est aut ad.', 501, 2, 2, 5, '2022-10-30 01:30:41', '2022-10-30 01:30:41'),
(17, 'molestias', 'Nisi vel qui ratione quod dolores aut sint. Veniam incidunt magni ut est voluptas repudiandae. Et atque et dolore quia minus debitis. Aperiam minima maiores quasi et.', 206, 2, 13, 1, '2022-10-30 01:30:41', '2022-10-30 01:30:41'),
(18, 'sed', 'Eius amet nobis quo autem voluptas rerum rerum. Omnis et dignissimos ducimus numquam. Suscipit repellendus quas culpa ut aliquam ipsam.', 697, 3, 11, 3, '2022-10-30 01:30:41', '2022-10-30 01:30:41'),
(19, 'corrupti', 'Explicabo illum quo odit numquam quia voluptatum. Et at voluptas accusantium qui nostrum dolorem distinctio. Quibusdam quidem est non molestias et.', 945, 4, 30, 3, '2022-10-30 01:30:41', '2022-10-30 01:30:41'),
(20, 'dolor', 'Ex quos veniam eos vero et. Voluptas non in dolorum sunt exercitationem nisi id laboriosam. Dolorem consequatur ex ullam sit consectetur veritatis voluptas. Enim voluptas eligendi est sint et corrupti fugiat.', 643, 2, 9, 4, '2022-10-30 01:30:41', '2022-10-30 01:30:41'),
(21, 'ut', 'Voluptas vero quo perferendis ab fugiat assumenda. Autem laudantium nemo quo inventore occaecati. Molestiae rerum iste vitae.', 540, 6, 18, 1, '2022-10-30 01:30:41', '2022-10-30 01:30:41'),
(22, 'nam', 'Unde vitae fugit dolorem amet ut doloribus eius. Aut sequi beatae explicabo assumenda. Veniam non et nesciunt. Provident doloribus ipsam et aspernatur culpa sed.', 796, 9, 11, 3, '2022-10-30 01:30:41', '2022-10-30 01:30:41'),
(23, 'quasi', 'Libero optio sunt ratione. Sed deserunt sed maiores sequi aut. Qui et et vel impedit.', 587, 0, 20, 5, '2022-10-30 01:30:41', '2022-10-30 01:30:41'),
(24, 'aspernatur', 'Culpa labore ullam velit est repellendus. Eligendi et eligendi nam nesciunt veritatis commodi accusantium. Voluptas cupiditate sequi voluptatem in quos ea. Quam ullam iusto iste excepturi dolorum qui dolorem.', 563, 5, 15, 2, '2022-10-30 01:30:41', '2022-10-30 01:30:41'),
(25, 'corporis', 'A ipsum et illo quisquam qui eum neque. Impedit tempore vero nam nihil. Adipisci qui dolorem sit sunt mollitia maxime. Deserunt voluptatem commodi nisi iusto illum.', 777, 3, 18, 5, '2022-10-30 01:30:42', '2022-10-30 01:30:42'),
(26, 'sit', 'Voluptates dolor iste quia perferendis quia. Corporis labore commodi et saepe et itaque vel. Vero magnam accusantium impedit non modi. Perspiciatis hic ut officiis aut aut hic velit dicta.', 745, 0, 15, 1, '2022-10-30 01:30:42', '2022-10-30 01:30:42'),
(27, 'in', 'Ducimus repudiandae soluta ab eveniet quo explicabo cupiditate. Ut ut minus porro exercitationem. Magni nulla aut quae nesciunt voluptate eveniet.', 604, 4, 17, 1, '2022-10-30 01:30:42', '2022-10-30 01:30:42'),
(28, 'unde', 'Non delectus fuga dolores laboriosam nesciunt et. Sit repudiandae est quam quos. Inventore harum libero nihil ipsam corrupti ratione explicabo.', 410, 5, 24, 3, '2022-10-30 01:30:42', '2022-10-30 01:30:42'),
(29, 'quo', 'Omnis qui aliquam sequi est est blanditiis laboriosam. Maxime at corrupti occaecati. Labore tempore modi ipsam aut.', 123, 2, 26, 5, '2022-10-30 01:30:42', '2022-10-30 01:30:42'),
(30, 'reiciendis', 'Voluptatem omnis autem adipisci pariatur sed facere delectus eligendi. Atque enim accusamus quibusdam itaque eos. Commodi quidem corrupti molestiae quisquam. Inventore eum nihil et non quis.', 318, 5, 5, 3, '2022-10-30 01:30:42', '2022-10-30 01:30:42'),
(31, 'voluptas', 'Eum veniam quo non ut reiciendis autem tempore. Tenetur odio cumque ut quasi. Facere modi aut reiciendis autem aut in fugiat.', 887, 7, 19, 2, '2022-10-30 01:30:42', '2022-10-30 01:30:42'),
(32, 'neque', 'Inventore aliquid et repudiandae dignissimos ullam impedit ducimus hic. Aut corporis vero numquam et sunt sapiente omnis quisquam. Quibusdam vitae quidem vitae quis sunt accusamus ut.', 586, 6, 23, 5, '2022-10-30 01:30:42', '2022-10-30 01:30:42'),
(33, 'sed', 'Tempora nulla porro vero aut. Aut odio autem illo aut. Et autem quaerat qui illo aliquid aut illo voluptatem.', 606, 3, 30, 2, '2022-10-30 01:30:42', '2022-10-30 01:30:42'),
(34, 'ipsum', 'Libero consequatur suscipit ducimus necessitatibus. Voluptas dolores odit et facilis. Fugit amet amet molestias quod. Debitis numquam qui laudantium ut totam.', 964, 4, 23, 4, '2022-10-30 01:30:42', '2022-10-30 01:30:42'),
(35, 'quis', 'Qui sed et laboriosam quia ut voluptatem unde. Sed sunt consequatur corrupti dolores. Deleniti ut minus sit. Explicabo cumque dolorum consectetur non.', 928, 3, 29, 4, '2022-10-30 01:30:42', '2022-10-30 01:30:42'),
(36, 'officiis', 'Magni molestiae perspiciatis similique quia ut corrupti placeat. Aperiam molestiae dolor unde. Occaecati quaerat sequi suscipit et perferendis ut. Et qui autem quaerat dolor.', 166, 2, 22, 3, '2022-10-30 01:30:42', '2022-10-30 01:30:42'),
(37, 'optio', 'Iure consectetur cupiditate quibusdam quis ex. Repudiandae amet iusto et nemo omnis fugiat labore. Est perspiciatis perspiciatis corrupti qui aut excepturi quo. In molestias quis doloribus fugiat.', 702, 7, 24, 3, '2022-10-30 01:30:42', '2022-10-30 01:30:42'),
(38, 'dolores', 'Dolores optio aspernatur autem possimus et aut doloremque. Ad alias suscipit ad esse quia pariatur voluptatem. Tempora pariatur eum eos animi iusto placeat ut debitis.', 246, 6, 12, 4, '2022-10-30 01:30:42', '2022-10-30 01:30:42'),
(39, 'rerum', 'Voluptatem magni neque sequi repudiandae rerum enim dolor nihil. Consequatur dolorem quos voluptatem aspernatur necessitatibus nihil molestiae magnam.', 111, 7, 19, 4, '2022-10-30 01:30:42', '2022-10-30 01:30:42'),
(40, 'velit', 'Rerum aperiam dolores quae pariatur vitae eos. Eligendi illo est quasi corporis odio optio laudantium. Aut reprehenderit porro officiis. Minima placeat voluptatibus neque enim aut sint.', 218, 9, 18, 1, '2022-10-30 01:30:42', '2022-10-30 01:30:42'),
(41, 'ratione', 'Fugit deserunt ipsam culpa sint. Veniam labore magnam est sapiente. Voluptatem perspiciatis sequi et aperiam voluptas fuga est.', 288, 6, 29, 2, '2022-10-30 01:30:42', '2022-10-30 01:30:42'),
(42, 'quam', 'Necessitatibus fuga iure itaque nulla ut. Minus pariatur occaecati amet temporibus nihil inventore. Libero delectus qui iusto in.', 892, 0, 28, 5, '2022-10-30 01:30:42', '2022-10-30 01:30:42'),
(43, 'recusandae', 'Aut blanditiis totam reprehenderit cumque. Quam sint eum enim molestias voluptatum. Incidunt unde autem eos sit et aliquam. Minima a nobis ut ea molestias dolores.', 380, 0, 7, 1, '2022-10-30 01:30:42', '2022-10-30 01:30:42'),
(44, 'corporis', 'Mollitia veritatis enim possimus explicabo et quas. Eos eaque at cumque qui et.', 197, 1, 29, 5, '2022-10-30 01:30:42', '2022-10-30 01:30:42'),
(45, 'molestiae', 'Eveniet sapiente nam nisi atque modi ut laboriosam. Aut unde voluptatibus qui assumenda temporibus autem maiores. Dolor ratione aliquid aut porro.', 212, 1, 19, 3, '2022-10-30 01:30:42', '2022-10-30 01:30:42'),
(46, 'aut', 'Inventore nisi tempore aspernatur itaque architecto. Non et quis et inventore qui. Officia eos sed molestias officia rerum quisquam.', 909, 1, 4, 4, '2022-10-30 01:30:42', '2022-10-30 01:30:42'),
(47, 'qui', 'Iusto harum sunt expedita et. Enim autem aut cum dolore saepe quod. Qui alias praesentium sed ea dolor minus cupiditate. Nulla quis non a blanditiis ipsum qui qui.', 693, 0, 15, 4, '2022-10-30 01:30:42', '2022-10-30 01:30:42'),
(49, 'quasi', 'Possimus unde ea velit quasi aut et sit. Atque temporibus nulla nostrum fuga. Est quibusdam adipisci impedit reiciendis. Ut labore explicabo quisquam quia earum praesentium rerum.', 632, 6, 14, 2, '2022-10-30 01:30:42', '2022-10-30 01:30:42'),
(50, 'itaque', 'Perspiciatis omnis autem asperiores rerum reiciendis asperiores quasi dolores. Quos dolorem rerum alias vel temporibus neque. Reiciendis explicabo minus illum voluptates excepturi sit. Pariatur quia atque ab nam quos exercitationem quia.', 502, 9, 4, 4, '2022-10-30 01:30:42', '2022-10-30 01:30:42');

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
(1, 6, 'fuga', 'Placeat ut neque temporibus ullam aut tempore. Ipsa repellendus facere voluptates provident. Voluptate et soluta labore.', 1, '2022-10-30 01:30:43', '2022-10-30 01:30:43'),
(2, 18, 'beatae', 'Consequatur culpa doloremque blanditiis voluptas est accusamus ipsa deserunt. Quo est eos velit officiis.', 0, '2022-10-30 01:30:43', '2022-10-30 01:30:43'),
(3, 18, 'asperiores', 'Aperiam perferendis rerum fuga voluptas dolore nulla. Voluptas qui omnis perspiciatis et repudiandae aut. Architecto qui ut aperiam accusamus eos.', 5, '2022-10-30 01:30:43', '2022-10-30 01:30:43'),
(4, 38, 'voluptatem', 'Cupiditate mollitia vel ratione rem enim eum. Voluptatem dolorum ullam quasi. Ex esse dolores labore voluptas tempora vel. Deleniti consectetur vero quas sint nihil ullam. Autem non a aliquam sint.', 5, '2022-10-30 01:30:43', '2022-10-30 01:30:43'),
(5, 2, 'expedita', 'Amet consequatur nemo quasi tenetur expedita beatae eius. Ducimus qui enim aliquam maxime qui debitis molestiae. Et omnis ipsum modi porro ut consequatur. Autem impedit reprehenderit dicta.', 3, '2022-10-30 01:30:43', '2022-10-30 01:30:43'),
(6, 18, 'sint', 'Quam consequuntur quam voluptatem aut. Occaecati placeat officiis voluptas culpa. Atque ab voluptatem velit dolorem est sunt. Laborum sed voluptas architecto officiis et tempora porro.', 1, '2022-10-30 01:30:43', '2022-10-30 01:30:43'),
(7, 44, 'officia', 'Et quidem maiores dolorem consequatur sit omnis. Autem vel eligendi rerum commodi. Debitis impedit sint ut repudiandae architecto earum beatae distinctio.', 5, '2022-10-30 01:30:43', '2022-10-30 01:30:43'),
(8, 49, 'nam', 'Adipisci odio repellendus qui reiciendis quasi omnis. Aliquam repellat facilis quam perspiciatis eligendi omnis qui. Optio deserunt laudantium ut hic aut ut ipsam et. Ut quia harum cupiditate ut veritatis unde sunt consequuntur.', 0, '2022-10-30 01:30:43', '2022-10-30 01:30:43'),
(9, 12, 'culpa', 'Sed ut ratione amet id. Ut aut maxime ipsam accusantium rerum neque consectetur. Officiis consequatur corrupti ut aut voluptatem.', 4, '2022-10-30 01:30:43', '2022-10-30 01:30:43'),
(10, 4, 'laborum', 'Molestias rerum qui pariatur illum nam cumque. Quasi ut consectetur veritatis sit. Est sit omnis sapiente reprehenderit. Doloribus autem facere hic ipsum numquam voluptas.', 5, '2022-10-30 01:30:43', '2022-10-30 01:30:43'),
(11, 13, 'quia', 'Aliquam illo recusandae officia voluptatum voluptatem quo. Quae eveniet maxime veniam ut. Modi nemo laborum libero sit.', 2, '2022-10-30 01:30:43', '2022-10-30 01:30:43'),
(12, 39, 'est', 'Aperiam sunt molestiae et ducimus aut est. Similique ipsa ut et corporis et et. Magnam labore culpa mollitia facere dolor illum.', 3, '2022-10-30 01:30:43', '2022-10-30 01:30:43'),
(13, 15, 'sint', 'Iure harum quas nemo ipsam aperiam aliquid qui. Cumque voluptatem nihil dolores dolorum aut quisquam dignissimos. Voluptatem vitae commodi repudiandae autem maiores.', 3, '2022-10-30 01:30:43', '2022-10-30 01:30:43'),
(14, 4, 'eum', 'Aspernatur quis facere eligendi qui quia quo tempora. Soluta enim doloremque eveniet vero consectetur ducimus voluptatem. Iure tenetur porro beatae deserunt doloremque. Labore placeat aut qui exercitationem id.', 2, '2022-10-30 01:30:43', '2022-10-30 01:30:43'),
(15, 37, 'et', 'Labore qui perspiciatis voluptates facilis aut. Vel facere perferendis incidunt. Beatae suscipit odio repellat nemo. Et aspernatur nihil culpa illo qui quis.', 5, '2022-10-30 01:30:43', '2022-10-30 01:30:43'),
(16, 28, 'officiis', 'Tenetur est molestias enim sed. Doloremque beatae sed dolores recusandae fugiat. Voluptas molestiae quo quam repellendus.', 0, '2022-10-30 01:30:43', '2022-10-30 01:30:43'),
(17, 37, 'vitae', 'Necessitatibus rerum voluptas et. Ea deserunt quia id rerum soluta culpa adipisci. Magni non et eos neque. Corrupti magni dolorum deserunt enim aut expedita omnis.', 4, '2022-10-30 01:30:43', '2022-10-30 01:30:43'),
(18, 16, 'totam', 'Esse repellendus sed ut et aliquam ut minus. Maxime cumque unde incidunt neque quos deserunt velit aut. Sint molestias repellendus adipisci explicabo ut nulla quae. Blanditiis itaque blanditiis consequatur pariatur commodi rerum.', 2, '2022-10-30 01:30:43', '2022-10-30 01:30:43'),
(19, 36, 'aspernatur', 'Aut quas explicabo aut autem aut facilis eos odit. Tempore quo numquam ut provident est necessitatibus. Sapiente corrupti blanditiis qui nemo accusamus porro. Quas consequatur mollitia neque ut ipsa.', 2, '2022-10-30 01:30:43', '2022-10-30 01:30:43'),
(20, 3, 'ratione', 'Consequatur possimus fugit rem aliquid commodi repellendus. Laborum laborum voluptatibus sit rerum ex aut repudiandae. Corporis veniam et numquam quisquam. Omnis est deserunt laboriosam saepe quibusdam voluptas.', 1, '2022-10-30 01:30:43', '2022-10-30 01:30:43'),
(21, 23, 'fugit', 'Voluptatem odio commodi adipisci nihil doloribus atque. Voluptas in quam quia eligendi. Vel consequatur odit tempore id. Sed voluptas et quasi dolores quasi aut. Repellendus eaque odit voluptatem.', 1, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(22, 5, 'quod', 'Ipsam et accusamus corrupti cum nulla. Accusantium aut ut pariatur vel. Consequatur magnam ad error aut maxime quod. Sapiente vel rerum fugit quam facere voluptas.', 4, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(23, 30, 'corporis', 'Velit rerum aut et qui praesentium molestias. Perspiciatis itaque sed voluptas cumque consectetur quis.', 0, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(24, 1, 'non', 'Unde accusamus autem tenetur voluptatem iure. Cumque assumenda numquam magnam voluptatem. Reprehenderit eos libero nam.', 1, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(25, 8, 'quibusdam', 'Corporis voluptatibus ea repudiandae dolore consequatur iste. Magnam cum consequatur voluptates. Ab ab et beatae quo dolorum molestiae aliquam. In odit officiis dolor temporibus id molestiae.', 2, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(26, 41, 'omnis', 'Quam ducimus sunt et debitis fuga quod consequatur. Vitae et natus qui autem ex dignissimos omnis. Porro temporibus fugit ea aliquid. Labore sed ut et ex iste.', 0, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(27, 20, 'quia', 'Est cupiditate autem voluptas quibusdam ipsum. Quasi quia consequatur autem repellendus et temporibus.', 4, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(28, 10, 'sit', 'Et soluta id quos aut non. Harum maiores quisquam quia rerum harum doloribus. Ut possimus id ab velit et amet.', 1, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(29, 24, 'id', 'Veniam labore autem corrupti occaecati odit. Repudiandae dolores nulla fugit. Aut est illum sapiente distinctio. Enim in inventore sunt optio.', 5, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(30, 12, 'et', 'Molestiae dignissimos unde natus necessitatibus qui laborum. Et consequatur voluptatibus sint. Nemo optio accusantium vero cumque temporibus consequatur voluptas unde.', 0, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(31, 15, 'cumque', 'Consequatur nihil aut optio aliquam qui facilis. Delectus cupiditate maxime vitae necessitatibus. Libero aliquam ad molestiae aspernatur. Sed itaque rem eum qui illum blanditiis in.', 0, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(32, 30, 'velit', 'Aperiam nisi recusandae libero possimus praesentium dolor voluptas. Ut qui doloremque voluptatem iusto quae amet explicabo. Ipsa minima reprehenderit blanditiis minus dolorem qui et a. Provident ut fugit sunt a.', 1, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(33, 45, 'quis', 'Quisquam et est assumenda vel pariatur magni qui ut. Esse doloremque numquam vel optio dolorem qui repellendus. Ad atque repudiandae ducimus ut sed et.', 0, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(34, 2, 'aliquid', 'Totam mollitia eveniet aut voluptatem. Ab aliquam architecto consectetur magnam eius blanditiis. Consequatur doloremque ut sint quo temporibus voluptas omnis ut. Non iure laborum sapiente laborum. Ex esse velit blanditiis voluptatem.', 5, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(35, 27, 'vel', 'Voluptates atque molestias non culpa. Impedit ex repellendus voluptatem aliquam et molestiae soluta. Voluptatem ipsa et fugiat ipsum vel cumque expedita.', 3, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(36, 6, 'aut', 'Et ratione in consequatur nesciunt. Necessitatibus minima ut aliquam quos. Cumque in ut fuga ad aut velit iure. Soluta id quis deserunt sequi optio repudiandae ipsa.', 3, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(37, 44, 'quos', 'Delectus voluptas mollitia et rem eum nesciunt aperiam culpa. Autem quo illum nihil. Aspernatur harum nihil veniam architecto rerum labore. Qui omnis ad et qui eligendi libero.', 4, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(38, 3, 'et', 'Dignissimos voluptatum repellat provident. Eveniet eveniet culpa porro libero eius nostrum qui. Totam rerum dolores laudantium voluptas libero et qui nam.', 5, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(39, 42, 'sit', 'Eum debitis ipsam illum quos. Temporibus debitis sunt aut facilis cumque. Quis possimus assumenda architecto ad aut voluptas velit.', 4, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(40, 42, 'iste', 'Dolorem voluptatem exercitationem officia. Fuga illum earum et tempore molestiae. Nemo et voluptas sed eveniet exercitationem voluptas.', 4, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(41, 3, 'neque', 'Provident dolor est illum totam vel cumque animi. Dolorem nesciunt quam quis quis laboriosam ut. Id ducimus rerum suscipit facere magni animi.', 1, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(42, 50, 'eveniet', 'Nobis possimus et eos consequuntur. Consequatur et sit excepturi possimus magnam a. Itaque voluptatem tenetur mollitia ut quia non qui. Voluptas aut id amet velit velit.', 5, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(43, 25, 'voluptas', 'Laborum tenetur qui et ex quisquam velit doloribus. Tenetur harum et et quisquam consectetur. Enim minus in asperiores ex non qui.', 0, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(44, 43, 'omnis', 'Quis consequatur dignissimos dolor. Incidunt nobis voluptas quidem. Id amet odit repellendus earum neque maiores.', 2, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(45, 46, 'nulla', 'Numquam suscipit alias aut saepe voluptatum facere velit asperiores. Voluptate impedit nemo voluptas vel cumque. Ab consectetur voluptatem quis. In ea consequatur amet error optio earum.', 1, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(46, 30, 'rerum', 'Quia itaque et a odio alias. Maxime consequatur unde ea et totam veritatis. Quia et temporibus sunt.', 1, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(47, 26, 'similique', 'Aut in incidunt tempora qui nemo est neque. Consectetur distinctio et qui dolorem non. Qui consequatur eveniet ut pariatur nobis commodi.', 3, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(48, 23, 'quia', 'Quod dolores nihil id temporibus magnam. Doloribus voluptate occaecati necessitatibus soluta facilis architecto dicta. Qui rerum quaerat illo dolor.', 2, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(49, 10, 'nihil', 'Voluptates quia tenetur et aut quos. Reprehenderit et in quasi. Magnam omnis quam qui est iusto quae consectetur eum. Voluptatem quos aut ut odit. Est laborum porro qui ipsa eum in.', 4, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(50, 14, 'sit', 'Error aut voluptatem non aut. Voluptas eos debitis natus sed. Voluptas alias vero maxime quidem soluta. Libero in voluptas voluptate sit non nisi.', 3, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(51, 47, 'libero', 'Quo voluptatum enim doloremque omnis maxime dolores quas. Officia eligendi cupiditate magni qui laboriosam facere. Aspernatur praesentium optio voluptatem quidem ab.', 5, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(52, 22, 'fugiat', 'Velit iste aut officiis autem delectus facere sed ea. Provident veritatis cupiditate enim architecto eveniet consequuntur. Voluptas nisi unde pariatur nam quia sed vitae asperiores.', 3, '2022-10-30 01:30:44', '2022-10-30 01:30:44'),
(53, 44, 'amet', 'Sapiente id aut aut impedit sit ex. Illum blanditiis ex labore quasi. Et aut quia voluptas.', 1, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(54, 41, 'est', 'Nihil nisi perferendis reiciendis animi dolorum. Voluptas dolor vel voluptatem enim voluptate.', 5, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(55, 28, 'voluptas', 'Aut harum natus numquam odit. Labore ducimus voluptas non laboriosam voluptas qui saepe. Sint ex molestias aliquid molestiae distinctio placeat voluptatem.', 2, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(56, 3, 'et', 'Molestias et velit et. Natus accusamus sequi omnis repellat suscipit libero. Sint enim quia veritatis facere facere sint. Culpa amet debitis qui possimus autem quam sed.', 1, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(57, 10, 'vitae', 'Rerum et dolores facere rerum soluta commodi. Enim architecto delectus aspernatur totam animi. Officia quia similique explicabo voluptas quos et tenetur. Dicta error fugit consectetur ullam repellendus est.', 1, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(58, 23, 'qui', 'Dicta asperiores voluptates veniam dolores magni unde quia aut. Voluptatibus voluptas ad amet quis. Adipisci similique cupiditate error est modi delectus quo.', 0, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(59, 4, 'fugiat', 'Et vel quia eum hic. Error tenetur pariatur voluptas sit velit. Facilis voluptas nihil aut impedit cum similique minus. Delectus iusto atque necessitatibus eos.', 1, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(60, 1, 'ipsa', 'Reprehenderit dignissimos molestiae quidem et qui inventore sequi aut. Quasi sint pariatur ipsa aut minima dolorem ad. Pariatur unde sit ullam voluptatem omnis. Qui hic dignissimos cumque.', 3, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(61, 12, 'culpa', 'Eius voluptas et amet veniam quod placeat et. Molestiae aut repellat libero aut id et neque. Est vero quasi doloribus necessitatibus et est quia.', 3, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(62, 4, 'quae', 'Dolor tenetur amet aut praesentium omnis sit ut cumque. Sapiente nihil cupiditate quo in. Voluptatem explicabo culpa sed rerum cupiditate.', 1, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(63, 13, 'quisquam', 'Vel ducimus corporis ad suscipit ad necessitatibus. Vitae libero eaque aspernatur tempore provident officiis quae doloremque. Tenetur consequatur illum eum quia ratione est ipsum sequi.', 1, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(64, 9, 'possimus', 'Totam officia tempore nihil itaque debitis aspernatur. Suscipit quo quos dicta ea animi. Nemo eligendi ex et ipsam hic labore error repellat.', 3, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(65, 45, 'animi', 'Sunt nisi voluptas asperiores. Rem vitae magnam ipsam tenetur qui nihil dolorum. Ut consectetur nemo sed qui sit. Blanditiis voluptatum voluptatibus non suscipit et in illo nobis.', 3, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(66, 8, 'et', 'Magni delectus esse et officia. Accusantium tenetur explicabo eaque harum maiores nemo placeat. Voluptas tenetur quisquam labore temporibus et ut.', 1, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(67, 1, 'quia', 'Esse ut dolorum at deleniti quos. Porro labore nihil ratione vero explicabo voluptates repudiandae blanditiis. Voluptatem quibusdam sequi quod rerum voluptas. Quisquam hic natus corporis distinctio voluptatum. Asperiores vitae dolor quod quos laudantium.', 2, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(68, 7, 'laboriosam', 'Aut explicabo eius dicta sed a sed similique et. Qui eum numquam voluptatem aliquam tempore. Doloremque enim quo vero eveniet dolor.', 1, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(69, 31, 'aut', 'Ea eum optio placeat deserunt qui. Sequi odit est cumque alias sapiente iusto nostrum dolorem. Quod architecto eum perspiciatis totam incidunt quas. Sunt sed fugit ut iure dicta sit.', 1, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(70, 15, 'enim', 'Vel et neque corrupti odio et totam. Ab cum molestias optio necessitatibus unde doloribus laboriosam. Quisquam culpa molestias quam occaecati consectetur.', 1, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(71, 35, 'molestiae', 'Qui voluptas odit aliquam ipsum. Deserunt dolores consequuntur est omnis. Delectus ea sed occaecati qui eligendi sint. Rerum aut recusandae ducimus ullam.', 2, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(72, 20, 'hic', 'Consectetur sint itaque illo ut eligendi eligendi nulla. Recusandae aliquid earum laborum repellat. Aperiam in sit hic ducimus quae accusantium quia. Velit iure vel animi omnis vel impedit.', 0, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(73, 47, 'consequatur', 'Veniam eos aut esse atque unde quasi. Temporibus quia eaque omnis. Occaecati laboriosam quis id et asperiores.', 0, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(74, 36, 'qui', 'Rem nihil esse nobis necessitatibus ipsum. Optio mollitia animi porro quas. Soluta minus laborum quos quaerat officiis.', 1, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(75, 50, 'nam', 'Repudiandae magnam magnam rerum autem vel labore. Debitis commodi enim at quisquam. Vitae tempora ipsa impedit iure impedit numquam.', 4, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(76, 19, 'accusamus', 'Officiis voluptas quis sequi eum officia qui voluptates praesentium. Velit facilis accusamus autem facilis. Sunt quae et sit porro.', 0, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(77, 9, 'ut', 'Corporis quia perferendis nam dolorem aut. Atque voluptas placeat iste. Iusto illo rerum ut dignissimos. Aut iste aut consequatur consectetur ipsum est.', 5, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(78, 18, 'voluptas', 'Aliquid sed aliquid voluptas nulla impedit sint. Alias rerum minima minus atque aut consequatur consequatur. Qui ut provident perferendis earum architecto laudantium ut dolorum. Cumque doloremque dolorem natus.', 5, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(79, 24, 'labore', 'Saepe provident voluptatem asperiores pariatur eaque. Ut necessitatibus eos expedita officiis deleniti iure. Consequuntur et ut non iusto fugit suscipit sint.', 3, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(80, 33, 'rem', 'Non maiores et enim quia. Ex ut nesciunt provident eum.', 3, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(81, 37, 'nulla', 'Distinctio eligendi recusandae possimus voluptas dolor. Qui eaque molestiae nam sit qui laboriosam quia quo. Tempore porro impedit quod quasi itaque itaque culpa. Libero est laborum totam aut expedita amet cum.', 2, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(82, 6, 'sunt', 'Id ducimus dolor et. Et alias atque ullam voluptas saepe aut maxime. Perspiciatis nobis rem voluptatem placeat libero illo ea commodi.', 5, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(83, 27, 'totam', 'Assumenda quis facilis earum maiores. Impedit saepe non non voluptas eos. Perferendis sed reiciendis nihil sapiente laborum.', 3, '2022-10-30 01:30:45', '2022-10-30 01:30:45'),
(84, 13, 'quia', 'Omnis molestias blanditiis error assumenda. Exercitationem deleniti ut est et. Est totam iusto eos alias nesciunt dolor esse qui.', 2, '2022-10-30 01:30:46', '2022-10-30 01:30:46'),
(85, 21, 'et', 'Aperiam laboriosam sequi dolorum ut exercitationem aperiam quia. Ut excepturi asperiores modi laboriosam dolores reprehenderit. Exercitationem ad aspernatur molestiae et enim et delectus ducimus.', 0, '2022-10-30 01:30:46', '2022-10-30 01:30:46'),
(86, 4, 'nihil', 'Tempora illo explicabo molestiae. Ex doloremque aut ut.', 5, '2022-10-30 01:30:46', '2022-10-30 01:30:46'),
(87, 27, 'rerum', 'Cupiditate nobis quasi nisi. Dolor culpa quibusdam placeat maxime sed qui. Assumenda ut voluptas placeat saepe fugit magni sint. Provident ducimus dolorem magni dolores facere error.', 5, '2022-10-30 01:30:46', '2022-10-30 01:30:46'),
(88, 11, 'ad', 'Aliquid expedita eum quis. Facilis voluptatem sed officia libero. Modi ducimus et dolores officiis aut facilis possimus.', 3, '2022-10-30 01:30:46', '2022-10-30 01:30:46'),
(89, 8, 'dolores', 'Enim explicabo eum voluptatibus non. Debitis suscipit ipsam repellat suscipit fuga porro odit et. Autem necessitatibus dolore vel fugit voluptatum est veritatis. Itaque et rerum itaque labore dolorem aut.', 0, '2022-10-30 01:30:46', '2022-10-30 01:30:46'),
(90, 41, 'expedita', 'Rerum voluptas qui aut cumque qui nostrum voluptas. Voluptatem accusamus qui ipsum eaque molestiae ut fugit. Perferendis voluptatem sequi aspernatur suscipit.', 5, '2022-10-30 01:30:46', '2022-10-30 01:30:46'),
(91, 43, 'tempora', 'Perspiciatis molestias iure dignissimos facere dolores esse. In accusantium similique sed ratione aut. Architecto voluptatum temporibus inventore totam nesciunt eveniet nesciunt. Delectus est fugit omnis excepturi fugiat.', 2, '2022-10-30 01:30:46', '2022-10-30 01:30:46'),
(92, 45, 'et', 'In impedit perferendis nostrum qui autem voluptatem. Error sunt deleniti ut repudiandae nam molestias velit earum. Sit aut laudantium fugit ex excepturi consequatur earum. Incidunt pariatur rerum in repellat est consequatur omnis.', 0, '2022-10-30 01:30:46', '2022-10-30 01:30:46'),
(93, 8, 'optio', 'Nisi iusto nihil ab reiciendis accusamus. Dolores ad sunt consequatur voluptas ipsum. Ut iure sequi dignissimos molestiae voluptas repellat dolores accusamus. Impedit suscipit ipsa eaque dolorem sit culpa.', 5, '2022-10-30 01:30:46', '2022-10-30 01:30:46'),
(94, 11, 'earum', 'Fugit aut voluptatem nisi recusandae id. Quaerat eveniet aut assumenda perspiciatis consequatur. Eaque optio rerum minus cupiditate nihil amet eum.', 3, '2022-10-30 01:30:46', '2022-10-30 01:30:46'),
(95, 23, 'similique', 'Iste et quaerat modi voluptatibus tempora magni corporis. Exercitationem non sapiente placeat earum. Expedita consequatur officiis rerum assumenda ut.', 3, '2022-10-30 01:30:46', '2022-10-30 01:30:46'),
(96, 6, 'porro', 'Dignissimos est eligendi dolore doloremque adipisci. Provident optio at animi est.', 4, '2022-10-30 01:30:46', '2022-10-30 01:30:46'),
(97, 13, 'voluptatem', 'Dolores tempore deleniti laboriosam eum eos eveniet. Velit eligendi harum dolorem magnam fugiat sed rerum. Rem reiciendis explicabo quos molestias consequatur voluptas.', 0, '2022-10-30 01:30:46', '2022-10-30 01:30:46'),
(98, 1, 'quis', 'In et consequatur numquam quo incidunt. Adipisci perspiciatis aut fugiat laborum quis. Enim voluptate quaerat sed praesentium nostrum.', 1, '2022-10-30 01:30:46', '2022-10-30 01:30:46'),
(99, 29, 'et', 'Exercitationem assumenda voluptatem magni et eius et non quos. Et dolor laborum quidem dignissimos dolorem necessitatibus doloremque consequatur. Saepe molestiae sed et dolore earum laborum.', 2, '2022-10-30 01:30:46', '2022-10-30 01:30:46'),
(100, 36, 'aliquam', 'At quasi incidunt quibusdam ducimus velit molestias repellat. Voluptatibus repudiandae molestiae rerum autem. Qui modi quo officiis qui. Quo expedita possimus quidem optio.', 3, '2022-10-30 01:30:46', '2022-10-30 01:30:46'),
(101, 12, 'facere', 'Et blanditiis distinctio et sapiente. Consequatur cupiditate in laborum quia et et. Velit optio non expedita natus. Culpa harum et vel incidunt. Iste libero mollitia quae dolorem eum omnis fugit eius.', 4, '2022-10-30 01:30:46', '2022-10-30 01:30:46'),
(102, 46, 'occaecati', 'Id harum vitae itaque nesciunt nemo voluptates. Harum adipisci fugit error sequi. In vitae sit ut voluptas sunt ducimus. Ab velit est unde iste eligendi. Aspernatur non mollitia doloremque corrupti.', 4, '2022-10-30 01:30:46', '2022-10-30 01:30:46'),
(103, 18, 'hic', 'Ut doloribus qui est est omnis blanditiis. Qui rerum et officia quidem facilis. Ut qui sed illum sunt nihil expedita minima. Omnis itaque et rerum aut quidem ea reprehenderit.', 3, '2022-10-30 01:30:46', '2022-10-30 01:30:46'),
(104, 17, 'ad', 'Suscipit ut unde ad doloremque iusto eum aperiam. Quibusdam deleniti reprehenderit libero eum sint voluptate veniam. Quia sit tenetur ipsa qui ut ut laborum.', 5, '2022-10-30 01:30:46', '2022-10-30 01:30:46'),
(105, 4, 'perferendis', 'Eos exercitationem possimus explicabo autem neque quia ipsa. Perspiciatis libero omnis ducimus est debitis. Perspiciatis cum saepe consectetur est delectus.', 0, '2022-10-30 01:30:46', '2022-10-30 01:30:46'),
(106, 32, 'iure', 'Sint qui non iure eveniet sed quas eum unde. Ducimus officia similique nisi ea cumque rerum veniam alias. Possimus magnam nulla ipsam.', 2, '2022-10-30 01:30:46', '2022-10-30 01:30:46'),
(107, 18, 'excepturi', 'Praesentium nesciunt non assumenda voluptates maxime sed ipsa. Minus mollitia nesciunt sunt sint culpa. Itaque est quam quia alias.', 2, '2022-10-30 01:30:46', '2022-10-30 01:30:46'),
(108, 10, 'ex', 'Inventore qui maxime vel rerum. Et dolorem temporibus cum error repellendus aut expedita. Qui omnis nihil consequuntur corrupti. Rem modi velit doloremque cumque maiores voluptatem suscipit error. Placeat quis enim cupiditate nam illo quia ea.', 3, '2022-10-30 01:30:46', '2022-10-30 01:30:46'),
(109, 15, 'blanditiis', 'Atque omnis molestias incidunt iusto ea et. Eos vel est id velit sunt consectetur fugit. Qui autem et accusantium possimus. Ex aperiam blanditiis et saepe quod.', 1, '2022-10-30 01:30:46', '2022-10-30 01:30:46'),
(111, 24, 'quas', 'Aut minus voluptatem molestias eligendi beatae iure. Autem quia officiis est et. Quas corrupti temporibus eveniet occaecati maxime. Nulla eos at nihil eaque cum.', 5, '2022-10-30 01:30:46', '2022-10-30 01:30:46'),
(112, 39, 'deleniti', 'Est similique sed aut porro et id. Eius tempora iste aspernatur dolores a nulla beatae quis. Rem cumque debitis repudiandae. Officia voluptas praesentium consequatur sed et.', 3, '2022-10-30 01:30:46', '2022-10-30 01:30:46'),
(113, 7, 'et', 'Nemo laudantium earum ullam sit. Odio officiis dolores enim omnis veniam voluptate voluptate. Ut id eos cumque unde. Autem dolores omnis quae et sunt.', 0, '2022-10-30 01:30:46', '2022-10-30 01:30:46'),
(114, 40, 'inventore', 'Voluptates rerum praesentium qui aut. Molestias earum doloremque ea consectetur tempore aut rem. Et dolores voluptatum ab voluptate libero totam qui. Voluptatem molestiae maxime vel id et deserunt nobis. Eveniet quibusdam consequatur sit mollitia sunt.', 4, '2022-10-30 01:30:46', '2022-10-30 01:30:46'),
(115, 32, 'qui', 'Molestiae ut dolor nobis inventore quasi. At fuga dolore nam nihil molestiae asperiores. Necessitatibus repellendus dicta tenetur. Quia cumque est vitae similique ipsum porro voluptatibus.', 3, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(116, 46, 'beatae', 'Asperiores ipsam vero qui quia nobis temporibus et. Impedit iusto et perferendis nihil sit dolor repudiandae consequuntur. Quisquam sequi aut voluptate voluptatem. Dolorum alias et culpa sint aliquam dolorem.', 3, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(117, 17, 'sequi', 'Et officia nulla perferendis et saepe qui eius assumenda. Ut alias qui magnam ut officia esse.', 1, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(118, 25, 'quia', 'Ex ea doloremque nam adipisci ut. Est consequatur inventore quia magnam et. In molestias nihil rerum numquam nam.', 1, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(119, 4, 'consequatur', 'Aspernatur harum quae iste corporis. Numquam sit delectus cupiditate mollitia minus. Laborum illum aliquid voluptate quos consectetur. Ipsam ab omnis corporis dicta aspernatur minus. Blanditiis quae repellendus ut quasi rerum magnam.', 1, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(120, 39, 'soluta', 'Sequi delectus repellat at temporibus nemo aut. Quis qui aut consequatur itaque. Dolore quisquam reiciendis debitis rerum necessitatibus vitae distinctio. Dicta culpa sint incidunt magni. Laudantium nobis sequi natus.', 5, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(121, 1, 'ipsum', 'Rerum vero autem est. Exercitationem odio dolor voluptas. Explicabo voluptas optio sint quam quis est. Totam mollitia et mollitia et nihil eaque.', 1, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(122, 23, 'atque', 'Eveniet pariatur sed et explicabo aut perferendis tempora. Eveniet sint enim recusandae eius nihil.', 0, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(123, 31, 'occaecati', 'Aut aliquam provident culpa quaerat omnis veritatis tenetur. Saepe aut est doloremque recusandae. Dolores ut ipsa aliquid. Velit voluptatem enim dignissimos omnis.', 2, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(124, 25, 'consequatur', 'Eligendi inventore quidem tenetur perspiciatis quia at. Debitis excepturi consequatur cum nobis at. Atque quaerat nihil totam incidunt. Reprehenderit culpa blanditiis vel est nemo.', 2, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(125, 38, 'sed', 'Rerum excepturi in eum dolore praesentium. Accusantium molestiae explicabo omnis iste. Atque voluptates dolores quod. Exercitationem temporibus beatae hic ut dolores. Et omnis delectus incidunt.', 2, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(126, 47, 'ratione', 'Labore laboriosam harum totam accusamus rerum. Corrupti quia eaque nihil quis rem rerum architecto. Quis quas quibusdam voluptas ad provident a.', 5, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(127, 6, 'quo', 'Non cumque similique alias aut accusantium hic. Tempora cumque aliquid minus enim nisi repellat delectus. Eum tempora labore sit facere ut totam architecto veniam. Sed non labore non voluptas autem quibusdam officia. Quo est et occaecati qui.', 1, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(128, 28, 'explicabo', 'Eos ut tenetur adipisci voluptatum facilis. Vitae minima quia sit repellendus velit doloribus cupiditate. Odit dolor quis nulla et totam. Quis inventore molestias sint non temporibus consequatur.', 2, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(129, 38, 'odit', 'Quia dolor odit sunt facilis laborum. Nobis labore illo aut. Quo officia ducimus suscipit minus exercitationem dicta pariatur adipisci. Accusamus voluptas recusandae et aspernatur et unde id.', 0, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(130, 26, 'hic', 'Sed non repellendus voluptatem tempora molestiae esse sed. Labore dolores et quis ut reiciendis atque quidem. Expedita dolorum illo neque necessitatibus commodi nisi.', 1, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(133, 50, 'laboriosam', 'Doloremque velit hic quibusdam et. Eligendi non possimus consectetur vel vel. Exercitationem eum est sit voluptatem exercitationem nihil dolores.', 3, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(134, 5, 'aut', 'Temporibus aut et possimus quis rerum dolorem numquam. Nisi velit ratione sapiente vel asperiores vero. Omnis voluptatem dolores aut aut voluptatem ut quisquam quisquam.', 0, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(135, 21, 'ea', 'Ut laudantium rerum aut corrupti molestiae. Voluptatem maxime laboriosam necessitatibus et aliquid magnam.', 1, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(136, 27, 'a', 'Unde excepturi aut autem. Rerum molestiae rem itaque quia aperiam eaque. Ipsam deserunt suscipit non consequatur.', 5, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(137, 20, 'non', 'Qui tenetur ipsum eum impedit odio at molestiae. Vitae similique corrupti sint repellendus ipsa aut unde. Et dolores voluptatem id quibusdam qui accusantium.', 1, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(138, 33, 'at', 'At corrupti occaecati illum id earum. Laudantium quis quo quod harum. Quia aut quam temporibus blanditiis.', 0, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(139, 24, 'suscipit', 'Hic commodi dolor nisi saepe repellendus sunt. Consequatur aut et similique reiciendis occaecati dolor. Sed quia nihil molestias repudiandae saepe nostrum laboriosam. Ratione explicabo inventore animi quibusdam enim laboriosam nisi.', 2, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(140, 33, 'deleniti', 'Inventore nemo et ea est nulla quia. Quis sit porro voluptatum architecto. Aut natus id impedit ad quia. In velit totam cumque enim quaerat et explicabo.', 1, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(141, 3, 'laborum', 'Sint voluptatem quis vel quasi iusto asperiores accusamus. Qui ipsam officiis quisquam id nesciunt. Ea est sapiente perferendis voluptas quisquam.', 2, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(142, 24, 'dolores', 'Et perspiciatis deleniti quasi illum minima sapiente molestiae rerum. Qui ipsam quasi debitis rerum. Unde aliquid voluptatem sint iste voluptate aliquam deserunt ullam.', 5, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(143, 5, 'voluptatem', 'Error quia eos ducimus quasi. Exercitationem nam maiores deserunt est. Dolorem dolores et consectetur corrupti laboriosam aperiam consequatur veritatis. Deserunt laudantium cum voluptate et.', 4, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(144, 40, 'ipsam', 'Qui eum cupiditate rerum consequatur. Voluptatibus quia rem voluptatem ab mollitia nemo labore. Qui nihil consequatur neque quo labore. Accusantium illo dolores nisi voluptatum et aliquam.', 2, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(145, 25, 'ipsum', 'Fugit ipsa iste et esse ut. Possimus aut sapiente esse minus ipsa. Molestiae beatae qui libero aut. Necessitatibus a culpa tempora quia quis.', 4, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(146, 29, 'reprehenderit', 'Unde voluptatibus facere ea libero consequatur perferendis ratione. A tempora consequuntur provident expedita ut id velit. Et et deleniti tempore labore rerum.', 0, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(147, 24, 'incidunt', 'Qui distinctio laboriosam ducimus facilis aut similique aut. Laboriosam aut molestiae voluptatem eveniet omnis qui qui. Saepe dolore et sunt eligendi laboriosam laboriosam ullam.', 2, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(148, 26, 'quia', 'Numquam cum placeat et. Perferendis ratione eligendi sed asperiores repellat. Impedit inventore velit laboriosam aliquid eum quia ullam. Cupiditate laborum maxime et eum nesciunt ipsum ullam. Sed aut voluptatum sint et reprehenderit vero.', 2, '2022-10-30 01:30:47', '2022-10-30 01:30:47'),
(149, 33, 'modi', 'Ab itaque aut illo nemo architecto est. Vel quis fuga aspernatur error sapiente. Molestiae corporis dignissimos consequuntur debitis. Eum ipsa doloribus et qui molestiae.', 1, '2022-10-30 01:30:48', '2022-10-30 01:30:48'),
(150, 42, 'asperiores', 'Asperiores velit qui dolorem et qui. Corrupti fuga adipisci atque omnis voluptas accusamus voluptas reiciendis.', 5, '2022-10-30 01:30:48', '2022-10-30 01:30:48'),
(151, 16, 'perspiciatis', 'Quae ad et quia est perspiciatis. Eum provident recusandae ducimus nesciunt doloremque. Atque voluptatem repudiandae et soluta nemo. Exercitationem voluptatem veniam quia optio itaque repellendus dicta voluptatem.', 4, '2022-10-30 01:30:48', '2022-10-30 01:30:48'),
(152, 25, 'cupiditate', 'Ipsum perspiciatis voluptatibus nulla voluptas ratione sed corrupti. Voluptatem aut doloremque non inventore. Quos quia autem quis quia.', 3, '2022-10-30 01:30:48', '2022-10-30 01:30:48'),
(153, 7, 'adipisci', 'Id nam quia quam. Minima sit totam consequatur eos autem qui.', 0, '2022-10-30 01:30:48', '2022-10-30 01:30:48'),
(154, 11, 'autem', 'Vero ut animi aut ex. Suscipit nisi aut blanditiis reiciendis. Eum atque et voluptatem culpa nam. Veniam et enim enim vel nihil necessitatibus. Quia suscipit exercitationem aut dolorum eum qui.', 5, '2022-10-30 01:30:48', '2022-10-30 01:30:48'),
(155, 27, 'suscipit', 'Harum magni natus in. Et magnam quos reiciendis sunt velit. Possimus corporis commodi quia aperiam quasi accusamus impedit fugiat. Sit voluptatem quia quae omnis omnis sit ut officia.', 1, '2022-10-30 01:30:48', '2022-10-30 01:30:48'),
(156, 9, 'expedita', 'Qui sint et atque natus culpa consequatur. Non dolores est explicabo optio suscipit magni odit inventore. Et est voluptatum ipsam quo explicabo sit. Error repudiandae sit ab id error.', 0, '2022-10-30 01:30:48', '2022-10-30 01:30:48'),
(157, 43, 'asperiores', 'Aut voluptatum reiciendis commodi quaerat qui. Enim voluptatibus hic qui distinctio laudantium voluptas. Dignissimos ex vel quo vitae temporibus beatae.', 3, '2022-10-30 01:30:48', '2022-10-30 01:30:48'),
(158, 18, 'excepturi', 'Ut consectetur veritatis sit. Dolorem id quae et cum ab adipisci. Sunt debitis qui ratione vel.', 3, '2022-10-30 01:30:48', '2022-10-30 01:30:48'),
(159, 28, 'maiores', 'Aut doloremque ut pariatur rem. Praesentium odit placeat fuga eos.', 3, '2022-10-30 01:30:48', '2022-10-30 01:30:48'),
(160, 39, 'voluptatem', 'Odio autem id cumque voluptatum aut neque. Consequatur ratione autem consequatur similique aliquam laudantium. Qui harum autem ipsum pariatur.', 3, '2022-10-30 01:30:48', '2022-10-30 01:30:48'),
(161, 34, 'quis', 'Voluptate occaecati nulla eius eum pariatur. Sunt tempora ut atque esse et.', 1, '2022-10-30 01:30:48', '2022-10-30 01:30:48'),
(162, 23, 'nostrum', 'Laudantium assumenda provident autem nostrum. Pariatur repellat eos voluptatem qui eum harum eum. Velit architecto quam aut quos labore. Reiciendis nesciunt vel consectetur magnam iure alias dolore. Autem voluptatem ea possimus fuga.', 2, '2022-10-30 01:30:48', '2022-10-30 01:30:48'),
(163, 15, 'non', 'Et eos laborum et id ut non laudantium. Quis vel dolorum beatae natus. Soluta debitis eos voluptas laborum consequuntur quia. Tempora accusamus nulla cum amet inventore omnis similique consectetur. Aliquid reprehenderit cum ducimus nostrum.', 3, '2022-10-30 01:30:48', '2022-10-30 01:30:48'),
(164, 36, 'quod', 'Ipsum molestiae nobis iure est dicta voluptatem quo. Est sint accusamus aut et quidem doloremque. Enim est vel voluptatem dolor velit in asperiores. Unde blanditiis quia deserunt iusto aut voluptas sit sint.', 1, '2022-10-30 01:30:48', '2022-10-30 01:30:48'),
(165, 50, 'omnis', 'Placeat ut qui odit similique. Unde eius est dolorum quam suscipit nihil illo vitae. Quibusdam voluptatem tenetur vero nemo autem pariatur.', 1, '2022-10-30 01:30:48', '2022-10-30 01:30:48'),
(166, 31, 'sunt', 'Autem voluptatem quo quae. Accusamus dolor cum aut quod. Praesentium et repellat unde laboriosam reprehenderit.', 2, '2022-10-30 01:30:48', '2022-10-30 01:30:48'),
(167, 13, 'odio', 'Aut sit illum omnis iure labore et deserunt. Rerum repudiandae nihil natus cumque magni ducimus dolor. Est eum sit perferendis deserunt sequi. Et aut nisi et enim.', 4, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(168, 6, 'ut', 'Reprehenderit et quis nam. Vel praesentium consequatur numquam et quo. Rerum veritatis quos sint nemo et dolorem.', 4, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(169, 35, 'temporibus', 'Quas fugiat et voluptas voluptate occaecati sed aut. Explicabo maxime ratione aliquid aspernatur mollitia minima voluptas. Itaque aut quo pariatur deserunt corporis. Maxime sunt ut laboriosam porro ipsum.', 0, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(170, 43, 'nostrum', 'Libero consectetur vel ut illum quae eaque ut aperiam. Dolor praesentium saepe necessitatibus sit facilis minus fugiat neque. Est corporis ut tempora aliquam ullam. Laudantium qui sapiente earum qui aut corrupti vitae.', 5, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(171, 16, 'quo', 'Et molestiae molestiae eius autem libero. Similique nisi suscipit et. Omnis rem delectus non fugit assumenda nam iste.', 3, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(172, 4, 'eos', 'Alias suscipit quo laboriosam quia repellat est architecto. Porro quia voluptatum rerum eos. Molestiae qui iste ullam modi quasi aliquam nihil. Optio et hic beatae sed et similique explicabo ipsum. Iusto assumenda accusantium quasi optio porro eos autem.', 0, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(173, 43, 'et', 'Eius labore molestiae quis voluptate tempore. Quidem veniam eaque sit. Ut provident consequatur ut blanditiis officia. Vitae nihil eligendi quos sunt quam aut.', 3, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(174, 1, 'voluptatibus', 'Vel libero vel enim et unde sed. Recusandae expedita delectus aut debitis aut amet ratione. Ullam unde cupiditate non blanditiis sed.', 0, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(175, 20, 'perspiciatis', 'Dignissimos harum deserunt itaque. Quae ad molestiae itaque facilis. Asperiores consectetur id pariatur sint distinctio. Perspiciatis quo sequi molestiae consequatur dolorum aut alias tenetur.', 4, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(176, 9, 'ex', 'Aut eum fuga omnis voluptatem omnis omnis. Dolor maxime aut expedita ex ullam amet. Error aut fuga aliquam nihil. Aut omnis minima odio qui voluptatum.', 0, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(177, 30, 'omnis', 'Deserunt officiis dicta nihil laborum repellendus et. Corporis incidunt ad occaecati voluptatum aspernatur ut odio. Similique non quod et incidunt velit.', 1, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(178, 30, 'consectetur', 'Neque id esse dolores excepturi alias dolorem. Quis suscipit minima accusantium accusantium.', 4, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(179, 49, 'odit', 'Et pariatur esse explicabo ut iusto cupiditate porro. Qui impedit eveniet ipsum laboriosam libero. Assumenda laudantium sint delectus ut.', 0, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(180, 1, 'ex', 'Sapiente recusandae itaque et neque. Aperiam voluptas blanditiis in optio soluta. Natus assumenda ut nam consequatur velit aspernatur.', 3, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(181, 6, 'aut', 'Repellat quo recusandae sequi et. Doloribus magni aliquid non sunt et velit. Atque asperiores quam quisquam porro sed. Quidem qui occaecati magni quas veritatis.', 2, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(182, 1, 'animi', 'Quisquam saepe enim enim suscipit cumque ea velit. Harum omnis et facilis et reprehenderit est ducimus. Eos omnis vitae officiis ducimus dolores voluptate velit. Temporibus autem totam facilis nam harum.', 3, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(183, 13, 'non', 'Omnis eum voluptates cum. Culpa vero est eos voluptas. Fugit neque odio at qui sit aut aliquid.', 3, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(184, 8, 'ipsa', 'Eum ut sunt distinctio consequatur minima aspernatur aperiam. Excepturi iusto inventore error quia aut eos. Reprehenderit quibusdam asperiores quasi molestias quia sequi.', 3, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(185, 21, 'sequi', 'Quo pariatur ipsam dicta qui amet aut delectus. Quaerat sequi rerum adipisci suscipit dolores ex. Minus et cumque dolores et iusto maxime est.', 2, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(186, 37, 'aspernatur', 'Aliquam consequatur repellendus repellat deserunt est. Et dolore voluptas cupiditate ea consequatur asperiores. Excepturi et tempora et facere rerum hic. Minima id id commodi illum quos et aut recusandae.', 0, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(187, 33, 'similique', 'Vel aliquam excepturi accusantium autem velit. Alias odio voluptatem tenetur reprehenderit maiores doloribus culpa. Quo quia quia ullam quasi.', 2, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(188, 4, 'cumque', 'Dolores rem dolor repudiandae maiores quidem. Iure porro qui provident sapiente vitae inventore. Rerum vel beatae quia facilis saepe aliquid.', 1, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(189, 22, 'accusamus', 'Enim nostrum nemo praesentium consequatur sed sit rerum. Eligendi cumque ab impedit maxime quasi. Omnis dolores vero voluptatibus architecto sunt modi. Quia qui nam recusandae corrupti.', 4, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(190, 13, 'facere', 'Assumenda itaque voluptatem sequi magni delectus non odit. Harum voluptatem ea aut fugiat. Tempore totam quas vel quia rerum sunt nulla est.', 2, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(191, 19, 'rerum', 'Quod aut eligendi eius. Dolor saepe aut quia autem cum alias excepturi. Facere aut est perferendis voluptatem voluptates sed. Atque iste iste et maxime fugiat. Nobis minus nisi aspernatur voluptatibus nihil et et.', 4, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(192, 5, 'id', 'Omnis voluptatibus ut vel qui. Et nobis quasi eaque voluptatum. Qui iste esse aut est nihil doloribus. Soluta magni aut sint explicabo repellat.', 5, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(193, 47, 'id', 'Hic nulla dolorum commodi soluta ipsam rerum vel qui. Libero est sunt voluptates tempora laborum sed perferendis quisquam. Deleniti quia quia et consequuntur alias provident voluptatem.', 4, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(194, 1, 'non', 'Dolores quasi natus voluptate architecto. Placeat et consequatur consequatur consequuntur quia blanditiis dicta quas.', 3, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(195, 9, 'culpa', 'Quasi dolor ex ex qui aliquam. Iure fugiat sit deserunt quod iusto vitae et. Sint vel omnis ab maxime quia eius hic enim. Unde culpa et sed et voluptatem consectetur. Est est eos soluta ullam autem eligendi.', 3, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(196, 46, 'accusantium', 'Vel quod officia a deleniti. Sunt ipsum rerum quia sed dolorum enim. Autem qui quae veniam architecto veritatis et. Earum rerum voluptate ea omnis.', 1, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(197, 32, 'hic', 'Itaque vero nostrum eligendi. Ut possimus minima et voluptatibus velit. Aut sit aut vitae sit. Tempore odit itaque aut qui. Rerum aliquid reiciendis sunt fugit eveniet.', 5, '2022-10-30 01:30:49', '2022-10-30 01:30:49'),
(198, 50, 'rem', 'Sint odio ut dolores placeat. Sapiente vel et cumque minus. Non aperiam quis vel reprehenderit modi est reprehenderit.', 0, '2022-10-30 01:30:50', '2022-10-30 01:30:50'),
(199, 12, 'atque', 'Deleniti vel omnis enim quidem. Iusto veritatis pariatur qui ut quos rerum ea nostrum. Voluptatem corporis odio temporibus.', 0, '2022-10-30 01:30:50', '2022-10-30 01:30:50'),
(200, 6, 'voluptas', 'Asperiores voluptas et nisi odit nostrum. Dolor sapiente optio quas voluptate eaque dolorem ipsum. Suscipit doloremque eligendi alias ipsum non expedita.', 0, '2022-10-30 01:30:50', '2022-10-30 01:30:50'),
(201, 28, 'dolores', 'Deleniti earum eos consequatur reiciendis. Corrupti cum dolor commodi pariatur vel laudantium. Voluptatem doloribus aliquam illum vero assumenda cum voluptatem.', 0, '2022-10-30 01:30:50', '2022-10-30 01:30:50'),
(202, 21, 'vel', 'Deserunt voluptatum recusandae natus quis ut molestiae occaecati. Repellat natus quod vel ad a hic occaecati aut. Sunt doloremque maiores nam iste.', 2, '2022-10-30 01:30:50', '2022-10-30 01:30:50'),
(203, 45, 'nesciunt', 'Vero corporis dolorum soluta. Dolores a explicabo distinctio voluptatem. Cum veritatis cumque iste eius velit. Facere eius sunt ab nulla temporibus aut.', 4, '2022-10-30 01:30:50', '2022-10-30 01:30:50'),
(204, 6, 'nobis', 'Et qui repellat sed laboriosam. Quaerat dolores similique voluptates placeat quaerat. Vitae placeat facere voluptatibus sed et.', 4, '2022-10-30 01:30:50', '2022-10-30 01:30:50'),
(205, 34, 'aut', 'Ad vero temporibus voluptatem quo voluptatem. Sapiente in facere dolor modi nobis. Est est labore possimus laboriosam. Sint eos ipsa laudantium cumque sit dolor.', 1, '2022-10-30 01:30:50', '2022-10-30 01:30:50'),
(206, 43, 'animi', 'Ipsum facere aut corporis cupiditate. Nostrum omnis pariatur ullam blanditiis. Officiis et repellendus quo quia id maiores. Omnis qui quidem illo sunt tenetur voluptate.', 1, '2022-10-30 01:30:50', '2022-10-30 01:30:50'),
(207, 33, 'consequatur', 'Provident voluptatum eos tempore ipsam ullam. Possimus possimus est beatae rerum nihil. Ut suscipit est aliquam aut.', 4, '2022-10-30 01:30:50', '2022-10-30 01:30:50'),
(208, 8, 'voluptas', 'Et quia possimus et. Aut molestiae dignissimos sequi asperiores quia doloribus. Voluptas laudantium porro ea totam nemo placeat perferendis voluptas. Vel ducimus sint et veniam voluptatem.', 5, '2022-10-30 01:30:50', '2022-10-30 01:30:50'),
(209, 43, 'suscipit', 'Tenetur aliquid dolore aut cupiditate ullam minima vero. Laudantium tempore iste sed. Ex dicta praesentium mollitia beatae ea.', 5, '2022-10-30 01:30:50', '2022-10-30 01:30:50'),
(210, 14, 'dolor', 'Exercitationem sunt dolores vel ut. Impedit ipsa corrupti nostrum expedita labore. Nostrum cumque quasi tenetur. Sunt doloribus reiciendis qui.', 5, '2022-10-30 01:30:50', '2022-10-30 01:30:50'),
(211, 21, 'iure', 'Et voluptatum voluptatem iusto et ut eum est. Odit laudantium quae tempore quia. Temporibus dolor corporis est tenetur eligendi omnis consequatur quae.', 3, '2022-10-30 01:30:50', '2022-10-30 01:30:50'),
(212, 20, 'facere', 'Recusandae eius ut dolorum ad rerum mollitia voluptatibus. Similique facere reiciendis voluptatem.', 5, '2022-10-30 01:30:50', '2022-10-30 01:30:50'),
(213, 5, 'asperiores', 'Accusamus voluptatem non omnis id vel eos. Rerum ea amet iure impedit ea. Quibusdam sed culpa cupiditate est neque necessitatibus.', 5, '2022-10-30 01:30:50', '2022-10-30 01:30:50'),
(214, 41, 'non', 'Quisquam debitis ut deleniti nam quia quia. Sed aperiam quas a rerum temporibus qui aliquid. Nostrum placeat sunt repudiandae harum et ipsam repellendus voluptas. Totam rerum qui nam quo et aut accusantium.', 3, '2022-10-30 01:30:50', '2022-10-30 01:30:50'),
(215, 34, 'incidunt', 'Quas tenetur nihil quia enim consectetur consequatur. Voluptas sequi dolorem voluptas molestias. Et et asperiores et possimus nostrum temporibus esse.', 5, '2022-10-30 01:30:50', '2022-10-30 01:30:50'),
(216, 26, 'soluta', 'Fugit aut neque quidem incidunt veritatis occaecati. Eos sunt et dolorem. Eos assumenda est sit voluptas animi voluptatibus.', 4, '2022-10-30 01:30:50', '2022-10-30 01:30:50'),
(217, 28, 'amet', 'Similique voluptas nihil est et doloremque. Eaque porro temporibus explicabo vel. Distinctio voluptatem aut neque qui quasi molestiae laboriosam. Sed ipsum assumenda amet illum animi.', 4, '2022-10-30 01:30:50', '2022-10-30 01:30:50'),
(218, 24, 'repellat', 'Doloribus quia expedita corrupti enim. Saepe minus facere explicabo quo similique quo rerum. Debitis ut eum repudiandae velit.', 3, '2022-10-30 01:30:50', '2022-10-30 01:30:50'),
(219, 16, 'voluptatibus', 'Rem aut doloribus at eum excepturi. Omnis quia natus aspernatur quidem iusto distinctio ea quasi. Aut quia aut eos pariatur aliquam tenetur ea velit. Unde nobis tempora ut dolore veritatis iste.', 1, '2022-10-30 01:30:50', '2022-10-30 01:30:50');
INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(220, 29, 'et', 'Odit provident eum blanditiis incidunt. Itaque quidem quasi sed et suscipit repudiandae. Est animi sed quos quos laborum quia. Ullam consectetur sed quae consequatur et sint.', 5, '2022-10-30 01:30:50', '2022-10-30 01:30:50'),
(221, 8, 'dignissimos', 'Quia vero pariatur mollitia quis tempora. Fuga saepe et eaque tenetur officia facere. Sit omnis quidem omnis atque et minus repellat et. Necessitatibus expedita dolor officia veniam consequatur.', 0, '2022-10-30 01:30:50', '2022-10-30 01:30:50'),
(222, 1, 'voluptates', 'Accusamus quod voluptas qui perspiciatis ea. Et odio qui quidem voluptatem hic eligendi. Pariatur praesentium voluptas neque magni fuga ipsa rerum. Omnis aut sit repudiandae occaecati.', 5, '2022-10-30 01:30:50', '2022-10-30 01:30:50'),
(223, 24, 'qui', 'Accusamus est voluptatem at est. Recusandae at molestiae quod sed. Est quaerat nisi consequatur.', 2, '2022-10-30 01:30:50', '2022-10-30 01:30:50'),
(224, 13, 'suscipit', 'Odio voluptatem et dolorum dolor. Sed esse placeat laborum labore natus maiores necessitatibus voluptas. Velit magni ab eum.', 1, '2022-10-30 01:30:51', '2022-10-30 01:30:51'),
(225, 4, 'rerum', 'Id et voluptas voluptas. Est in corrupti quaerat velit aspernatur. Ipsum qui vel in ut.', 5, '2022-10-30 01:30:51', '2022-10-30 01:30:51'),
(226, 39, 'nulla', 'Voluptas corrupti dolores quas expedita molestiae aperiam perferendis perferendis. Culpa similique reiciendis libero optio blanditiis totam. Adipisci enim enim amet tenetur ea nam dolores.', 2, '2022-10-30 01:30:51', '2022-10-30 01:30:51'),
(227, 34, 'fuga', 'A doloremque ut rerum. Sunt accusamus quaerat tempore qui. Velit rerum laudantium odio ex aliquam.', 2, '2022-10-30 01:30:51', '2022-10-30 01:30:51'),
(228, 3, 'enim', 'Praesentium similique in libero sapiente aperiam iusto natus. Nam ut quam cupiditate rerum enim minus. Quos aut qui sit tempore.', 5, '2022-10-30 01:30:51', '2022-10-30 01:30:51'),
(229, 20, 'earum', 'Possimus magni possimus beatae nulla necessitatibus autem et. Distinctio excepturi sed aspernatur corrupti nostrum. Illum enim hic et qui quasi autem.', 5, '2022-10-30 01:30:51', '2022-10-30 01:30:51'),
(230, 23, 'earum', 'Officia in dolorem quia. Perferendis dolores voluptatibus officiis et. Cum aperiam officia in esse similique dignissimos in. Corporis voluptas nihil similique officia aut.', 3, '2022-10-30 01:30:51', '2022-10-30 01:30:51'),
(231, 10, 'occaecati', 'Quasi impedit voluptatem labore vel aut nihil. Quia numquam reiciendis vitae debitis accusantium quia. Est vel rerum dignissimos quia vel. Quo enim qui est repudiandae voluptatem deleniti quia. Commodi at qui necessitatibus dolor et et qui.', 5, '2022-10-30 01:30:51', '2022-10-30 01:30:51'),
(232, 42, 'unde', 'Culpa omnis tenetur hic maiores minus molestiae culpa dolor. Autem maxime sed alias consequuntur distinctio ipsam.', 4, '2022-10-30 01:30:51', '2022-10-30 01:30:51'),
(233, 22, 'distinctio', 'Dolorem ducimus cum voluptatem sit. Qui minus quo incidunt similique. Dolores veritatis sapiente velit.', 1, '2022-10-30 01:30:51', '2022-10-30 01:30:51'),
(234, 29, 'fugit', 'Voluptatem repellat molestiae vel sunt voluptate. Omnis facere harum quasi labore est dolor eveniet quos.', 0, '2022-10-30 01:30:51', '2022-10-30 01:30:51'),
(235, 3, 'eveniet', 'Est totam culpa excepturi ab corrupti sequi. Omnis in in asperiores fugiat placeat non eveniet. Enim distinctio maiores eum molestiae. Magnam qui voluptatem et fugiat sit soluta veniam. Commodi quia adipisci quas aliquid repudiandae.', 1, '2022-10-30 01:30:51', '2022-10-30 01:30:51'),
(236, 44, 'quis', 'Totam nobis sunt est aut dolorem provident repudiandae. At omnis dolor quia repudiandae id laborum. Et ea earum laboriosam id.', 5, '2022-10-30 01:30:51', '2022-10-30 01:30:51'),
(237, 7, 'quod', 'Enim doloremque voluptas numquam maxime. Cum sunt error quis voluptatem occaecati. Ex quo necessitatibus eligendi repellat laboriosam libero sunt sapiente.', 4, '2022-10-30 01:30:51', '2022-10-30 01:30:51'),
(238, 38, 'et', 'Mollitia consectetur aut repellendus fuga assumenda dolorem ipsa. Nihil maxime ut repudiandae aut sit quod alias. Rerum consectetur excepturi sed quasi.', 2, '2022-10-30 01:30:51', '2022-10-30 01:30:51'),
(239, 16, 'vero', 'Nesciunt repellat earum odit fugiat nihil magni ipsum. Ea cupiditate modi odit officiis vel. Qui quia aut consequatur atque. Repellat possimus aperiam architecto ea.', 2, '2022-10-30 01:30:51', '2022-10-30 01:30:51'),
(240, 33, 'quo', 'Et architecto expedita maxime perspiciatis optio consectetur. Eos quidem consequatur eius deserunt. Temporibus eius est tempore ut nesciunt. Ab voluptatum ut quasi.', 2, '2022-10-30 01:30:51', '2022-10-30 01:30:51'),
(242, 38, 'quos', 'Officia quidem natus nihil nesciunt inventore commodi. Ipsam esse nesciunt laboriosam dicta sed. Eligendi animi molestias rerum cumque adipisci reiciendis. Odit recusandae dicta molestiae expedita.', 5, '2022-10-30 01:30:51', '2022-10-30 01:30:51'),
(243, 18, 'fuga', 'Laborum ut veniam dolor corrupti. Laborum non sunt molestiae inventore veritatis aspernatur odio. Dicta at ullam ullam eligendi tempora nihil. Doloribus dolorem eligendi aliquam molestias suscipit accusamus aperiam. Placeat voluptatem voluptatem odit non.', 4, '2022-10-30 01:30:51', '2022-10-30 01:30:51'),
(244, 43, 'voluptatem', 'Quaerat aut dolores assumenda laboriosam. Rerum aspernatur repellat et ullam. Quam enim doloribus libero facilis. Tenetur fuga aut modi sed.', 5, '2022-10-30 01:30:51', '2022-10-30 01:30:51'),
(245, 4, 'qui', 'Et adipisci voluptas aut. Est voluptas suscipit at eum. Recusandae delectus hic quisquam eum totam neque eaque. Facere voluptatem fugiat voluptatem et quibusdam soluta magni.', 3, '2022-10-30 01:30:51', '2022-10-30 01:30:51'),
(246, 28, 'pariatur', 'Quam quis deserunt quaerat et aut tenetur. Corporis ut velit expedita qui ut sit et non.', 0, '2022-10-30 01:30:51', '2022-10-30 01:30:51'),
(247, 37, 'officia', 'Deserunt et quos eum dolorum adipisci. Similique animi officia numquam et. Architecto quia minus qui molestiae illum aut quia. Voluptas sint assumenda odit voluptatem tempora eius vitae.', 2, '2022-10-30 01:30:51', '2022-10-30 01:30:51'),
(248, 1, 'consequatur', 'Excepturi amet dicta amet iusto eligendi porro aliquam sed. At sit qui perferendis reprehenderit. Quo ea ex labore iste est ut.', 1, '2022-10-30 01:30:51', '2022-10-30 01:30:51'),
(249, 8, 'odit', 'Est sed vitae similique debitis porro quas. Velit quia vel quibusdam sint. Velit a nam voluptate quis qui quam sed.', 2, '2022-10-30 01:30:51', '2022-10-30 01:30:51'),
(250, 6, 'veniam', 'Incidunt libero voluptas eius et. Quidem sapiente autem at. Distinctio nesciunt et fugiat odio.', 4, '2022-10-30 01:30:51', '2022-10-30 01:30:51'),
(251, 15, 'soluta', 'Facere qui aliquid reiciendis recusandae sed minima sunt. Et ducimus eos doloremque quia facilis voluptatem omnis. Et sunt inventore iusto alias qui deleniti totam non.', 0, '2022-10-30 01:30:51', '2022-10-30 01:30:51'),
(252, 26, 'inventore', 'Qui et laudantium recusandae. Doloribus inventore veniam magni quos ullam aperiam saepe non. Eaque et modi est est praesentium vero.', 1, '2022-10-30 01:30:51', '2022-10-30 01:30:51'),
(253, 16, 'ut', 'Beatae quaerat facilis voluptas qui occaecati. Placeat dignissimos ex ipsum quod perspiciatis sint. Neque molestiae consequatur ut. Est excepturi numquam quia aut ex.', 2, '2022-10-30 01:30:52', '2022-10-30 01:30:52'),
(254, 25, 'id', 'Non necessitatibus ut id accusantium perspiciatis officia. Sequi ipsam et blanditiis velit quam. Sit natus qui placeat. Vel qui dolorum iusto.', 0, '2022-10-30 01:30:52', '2022-10-30 01:30:52'),
(255, 17, 'est', 'Repellat enim non doloremque rem. Exercitationem explicabo est quam vero. Eos molestias tenetur omnis non enim omnis.', 1, '2022-10-30 01:30:52', '2022-10-30 01:30:52'),
(256, 7, 'illo', 'Aperiam laudantium illo illo sit ipsa sed. Nihil quasi cupiditate dolorem perferendis iusto sit ut ea.', 4, '2022-10-30 01:30:52', '2022-10-30 01:30:52'),
(257, 45, 'tempora', 'Voluptatem ex sunt delectus qui voluptates soluta. Optio expedita occaecati praesentium ducimus quasi fugit. Excepturi odio dolor esse ut.', 1, '2022-10-30 01:30:52', '2022-10-30 01:30:52'),
(258, 10, 'voluptatem', 'Et sint dolores quo ex eius. Repudiandae vitae dignissimos quia necessitatibus ipsam sed. Animi recusandae et corporis quo inventore officiis. Culpa aut pariatur aut non consequatur.', 5, '2022-10-30 01:30:52', '2022-10-30 01:30:52'),
(259, 38, 'eos', 'Qui nisi dignissimos est vel quisquam et voluptatem rem. Et ad voluptate ea sunt eaque aliquid placeat. Ut asperiores vitae adipisci nihil incidunt commodi. Mollitia laudantium eos dolorem possimus. Voluptas dolores id aperiam non.', 0, '2022-10-30 01:30:52', '2022-10-30 01:30:52'),
(260, 26, 'quia', 'Facere aut amet quis corrupti beatae. Officia aut quia unde facilis aut voluptatum sit vitae. Soluta facere sit est ad fugit ducimus.', 3, '2022-10-30 01:30:52', '2022-10-30 01:30:52'),
(261, 5, 'atque', 'Sed eaque consectetur qui et. Voluptatem sit commodi et labore sunt et sit. Id quidem consequatur provident natus sed est voluptas. Dolorem consequuntur autem molestias quis repudiandae et impedit.', 4, '2022-10-30 01:30:52', '2022-10-30 01:30:52'),
(262, 8, 'excepturi', 'Rerum molestiae numquam non est nemo. Molestias aut qui aut iste ea. Sed rerum exercitationem fugiat id. Quos expedita officiis id ut eligendi totam asperiores.', 4, '2022-10-30 01:30:52', '2022-10-30 01:30:52'),
(263, 29, 'sapiente', 'Quibusdam eveniet totam officia ut dolorum. Expedita quo minima amet ut dolores.', 2, '2022-10-30 01:30:52', '2022-10-30 01:30:52'),
(264, 33, 'impedit', 'Qui quaerat sapiente et dolor placeat quasi itaque ut. Culpa possimus quis aut in qui facere molestias totam. Quia eum et natus soluta maxime.', 4, '2022-10-30 01:30:52', '2022-10-30 01:30:52'),
(265, 46, 'iste', 'Deserunt beatae et magnam suscipit. Eos sit omnis omnis natus quia illum. Ipsam aliquid itaque odit dolor. Illum nesciunt aliquam et eos sint itaque accusantium enim.', 2, '2022-10-30 01:30:52', '2022-10-30 01:30:52'),
(266, 33, 'nihil', 'Deleniti pariatur omnis ipsam nisi consequatur. Enim vel eum quasi nihil qui quo. Sequi asperiores quo aliquam soluta enim nihil. Sunt iure nostrum rem odio dolor soluta deleniti facilis.', 4, '2022-10-30 01:30:52', '2022-10-30 01:30:52'),
(267, 44, 'veritatis', 'Libero ducimus itaque et exercitationem quae. Possimus dolor vero sed quas atque. Architecto ut est non et ut quia sit. Sed eaque aliquid qui dolore aliquam sint. Rem explicabo officia dolorum vel labore.', 3, '2022-10-30 01:30:52', '2022-10-30 01:30:52'),
(268, 20, 'non', 'Culpa debitis facilis molestiae sunt. Id aut nisi eaque quia id laboriosam. Necessitatibus mollitia non minus. Modi fuga at quod doloribus a error ut voluptate.', 5, '2022-10-30 01:30:52', '2022-10-30 01:30:52'),
(269, 25, 'assumenda', 'Eos eveniet ut odit minus fuga. Quia eveniet et maiores vitae ut quisquam. Voluptatibus unde quia beatae quis fugiat exercitationem tempore. Nemo deleniti fuga et voluptas consequuntur et.', 0, '2022-10-30 01:30:52', '2022-10-30 01:30:52'),
(270, 36, 'iure', 'Sequi autem consequuntur ex ut quas ut. A nihil ipsum et ea. Sequi asperiores cum illum doloribus. Qui ad ut possimus assumenda et aliquid. Dolor in ut sit enim.', 5, '2022-10-30 01:30:52', '2022-10-30 01:30:52'),
(271, 49, 'aliquam', 'Qui magni quo ut repellat. Odio quas perferendis consequatur consequatur dolor dolorum. Distinctio incidunt perspiciatis inventore a labore. Autem distinctio error ut.', 0, '2022-10-30 01:30:52', '2022-10-30 01:30:52'),
(272, 21, 'possimus', 'Dolore recusandae quidem beatae nesciunt iure. Hic enim ut et doloribus. Dolorum est nemo ut eum autem.', 5, '2022-10-30 01:30:52', '2022-10-30 01:30:52'),
(273, 25, 'enim', 'Molestiae architecto blanditiis enim exercitationem sint dolorem ad. Et id molestiae consequatur vel in at. Iusto ex suscipit ut ducimus molestiae magni eos. Doloremque eos dolores ea nam placeat in.', 5, '2022-10-30 01:30:52', '2022-10-30 01:30:52'),
(274, 41, 'ut', 'Sit rerum aut nisi ipsa voluptatem est harum. Rem quas delectus perspiciatis. Veritatis eius tempore non tempora. Cum consequatur laboriosam odio qui perspiciatis non sed in. Esse quia aut quia.', 4, '2022-10-30 01:30:52', '2022-10-30 01:30:52'),
(275, 46, 'voluptates', 'Et esse provident est dolorem quia dolorem. Error incidunt quos totam saepe deleniti id. Quidem enim inventore ipsa ut qui culpa omnis cumque.', 5, '2022-10-30 01:30:52', '2022-10-30 01:30:52'),
(276, 3, 'vitae', 'Rem iure iste nihil officia rerum vel doloremque. Magnam quibusdam autem ea.', 0, '2022-10-30 01:30:52', '2022-10-30 01:30:52'),
(277, 49, 'molestias', 'Et magnam unde dolor voluptate neque. Impedit labore asperiores quo eos eum facilis. Animi aut occaecati est reiciendis nihil facilis ut est.', 4, '2022-10-30 01:30:52', '2022-10-30 01:30:52'),
(278, 43, 'inventore', 'Beatae officiis expedita inventore unde. Quo et et modi autem. Voluptates excepturi ut nihil voluptatem tempore. Est nihil qui maiores in quam.', 0, '2022-10-30 01:30:52', '2022-10-30 01:30:52'),
(279, 25, 'doloribus', 'At impedit nihil sed perspiciatis aut magnam sed. Ullam rerum voluptatibus aut officiis. Porro molestias asperiores nihil aut voluptatibus eum quo.', 1, '2022-10-30 01:30:52', '2022-10-30 01:30:52'),
(280, 6, 'nihil', 'Quasi dignissimos minima qui ipsam dolor officiis optio. Sint suscipit est adipisci repellat et molestiae. Id nam quibusdam dolorem quo. Delectus sapiente sequi sequi excepturi. Magni amet laborum voluptatem qui.', 1, '2022-10-30 01:30:52', '2022-10-30 01:30:52'),
(281, 40, 'provident', 'Animi aspernatur voluptatem adipisci nulla ut quod aut. Voluptas rerum nam itaque libero occaecati quos voluptatem. Ea facere eveniet explicabo doloremque officiis voluptates.', 5, '2022-10-30 01:30:52', '2022-10-30 01:30:52'),
(282, 10, 'harum', 'Officiis veniam ipsa quis nisi et laudantium. Qui tempora doloribus necessitatibus est illum inventore sunt. Ipsam voluptatem ab est esse vitae itaque qui. Omnis saepe placeat delectus qui quia et.', 4, '2022-10-30 01:30:53', '2022-10-30 01:30:53'),
(283, 31, 'quam', 'Consequatur et quia dolorem tempore aut. Reprehenderit sit sint quae. Unde et et dolores eligendi. Cumque aut rerum qui vel omnis placeat.', 5, '2022-10-30 01:30:53', '2022-10-30 01:30:53'),
(284, 42, 'magnam', 'Aut non repellat ut optio. Recusandae beatae nihil aut hic. Optio rerum laudantium non ut nesciunt.', 2, '2022-10-30 01:30:53', '2022-10-30 01:30:53'),
(285, 29, 'sed', 'Dolor nam dolor est et. Saepe aut et reprehenderit saepe. Exercitationem accusantium velit facilis molestias. Accusamus ipsum ex voluptatem doloremque aut assumenda.', 2, '2022-10-30 01:30:53', '2022-10-30 01:30:53'),
(286, 27, 'temporibus', 'At sed vitae commodi officiis. Repudiandae consectetur reprehenderit incidunt omnis. Aliquid omnis non natus magni non.', 0, '2022-10-30 01:30:53', '2022-10-30 01:30:53'),
(287, 20, 'officia', 'Ut ipsa id odio ut sed harum consequatur. Nesciunt porro voluptas ipsa nihil.', 5, '2022-10-30 01:30:53', '2022-10-30 01:30:53'),
(288, 46, 'voluptas', 'Molestiae ut sequi voluptas ad. Ducimus voluptas iste sint hic.', 5, '2022-10-30 01:30:53', '2022-10-30 01:30:53'),
(289, 26, 'consequatur', 'Omnis at enim libero deleniti possimus nemo rerum eaque. Et nisi magni voluptatem sit explicabo est.', 3, '2022-10-30 01:30:53', '2022-10-30 01:30:53'),
(290, 22, 'omnis', 'Dicta placeat perspiciatis sapiente atque. Ullam voluptate odio officiis. Autem ipsum beatae eos et molestiae. Alias quo voluptate accusantium atque doloremque quaerat.', 2, '2022-10-30 01:30:53', '2022-10-30 01:30:53'),
(291, 1, 'et', 'Temporibus minus at cupiditate incidunt. Maiores facilis delectus excepturi sed est sed nesciunt. Et quo culpa commodi consequatur nobis quisquam quo. Facilis tempore cum nisi possimus dolores aut qui.', 5, '2022-10-30 01:30:53', '2022-10-30 01:30:53'),
(292, 1, 'earum', 'Et quia reprehenderit repellendus sit. Consequuntur perferendis sed qui ut deleniti dignissimos consectetur qui. Ea reprehenderit cupiditate quis vel nobis. In adipisci ipsa fugit libero placeat.', 2, '2022-10-30 01:30:53', '2022-10-30 01:30:53'),
(293, 31, 'soluta', 'Sed dolorem in vero pariatur quae libero. Voluptas atque recusandae vel delectus omnis deserunt. Hic labore amet eos rerum error excepturi.', 0, '2022-10-30 01:30:53', '2022-10-30 01:30:53'),
(294, 4, 'neque', 'Rem tempore illum laborum sit ea. Laboriosam dolores dicta officia iste repellendus veniam. Ut aut eos nobis. Corrupti voluptate exercitationem qui distinctio ipsum magnam vel.', 5, '2022-10-30 01:30:53', '2022-10-30 01:30:53'),
(295, 1, 'esse', 'Nulla quibusdam qui quis harum numquam sit rerum. Dolor commodi officia vitae repellat est laborum. Dignissimos sed amet nulla. Ad voluptatibus enim et quia ipsam.', 3, '2022-10-30 01:30:53', '2022-10-30 01:30:53'),
(296, 17, 'non', 'Voluptatem iure rerum corrupti pariatur fuga quod earum. Sit voluptate vel aut corporis. Delectus sit excepturi dolore sit cumque labore magni.', 5, '2022-10-30 01:30:53', '2022-10-30 01:30:53'),
(297, 30, 'est', 'Voluptatem perferendis iure voluptate quidem est consequatur blanditiis. Architecto sunt cumque perspiciatis nobis quisquam a maiores. Officiis hic aut recusandae ducimus repellendus.', 3, '2022-10-30 01:30:53', '2022-10-30 01:30:53'),
(298, 37, 'fugiat', 'Vel et sit facere velit consequatur dolor qui. Rerum sunt voluptate blanditiis qui consequatur. Officiis ut et ad autem.', 4, '2022-10-30 01:30:53', '2022-10-30 01:30:53'),
(299, 18, 'in', 'Dolor blanditiis et recusandae quam nisi doloremque veritatis. Est voluptatem nihil vel accusamus aspernatur debitis voluptatem. Laborum ratione quia odio aut fugit. Molestiae sunt quisquam mollitia qui.', 0, '2022-10-30 01:30:53', '2022-10-30 01:30:53'),
(300, 26, 'ut', 'Ut sed aut id ea ut. Qui voluptatem possimus qui quia architecto sed delectus. Aut omnis dolores rerum nihil sunt aspernatur.', 3, '2022-10-30 01:30:53', '2022-10-30 01:30:53');

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
(1, 'Mara Jaskolski', 'johathan.witting@example.net', '2022-10-30 01:30:40', '$2y$10$tJ63ZCerI1SO7P8r1NN/mummfmw.5iyXBWjyUCLK29ptMfVr17y/e', 'xmFym8fRiF', '2022-10-30 01:30:41', '2022-10-30 01:30:41'),
(2, 'Prof. Ashton Cormier PhD', 'heather03@example.net', '2022-10-30 01:30:41', '$2y$10$tJ63ZCerI1SO7P8r1NN/mummfmw.5iyXBWjyUCLK29ptMfVr17y/e', 'IRNcRvpPyq', '2022-10-30 01:30:41', '2022-10-30 01:30:41'),
(3, 'Caleigh Mraz', 'samer@gmail.com', '2022-10-30 01:30:41', '$2y$10$tJ63ZCerI1SO7P8r1NN/mummfmw.5iyXBWjyUCLK29ptMfVr17y/e', 'oPfTkLD8ln', '2022-10-30 01:30:41', '2022-10-30 01:30:41'),
(4, 'Dr. London O\'Connell', 'thompson.alysson@example.net', '2022-10-30 01:30:41', '$2y$10$tJ63ZCerI1SO7P8r1NN/mummfmw.5iyXBWjyUCLK29ptMfVr17y/e', 'ZSj8uYamkf', '2022-10-30 01:30:41', '2022-10-30 01:30:41'),
(5, 'Toy Cruickshank', 'deckow.llewellyn@example.com', '2022-10-30 01:30:41', '$2y$10$tJ63ZCerI1SO7P8r1NN/mummfmw.5iyXBWjyUCLK29ptMfVr17y/e', 'hxmU49XyWc', '2022-10-30 01:30:41', '2022-10-30 01:30:41');

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_index` (`user_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
