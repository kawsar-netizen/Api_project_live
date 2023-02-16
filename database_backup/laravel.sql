-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2023 at 09:06 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
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
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_resets_table', 1),
(13, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(14, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(15, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(16, '2016_06_01_000004_create_oauth_clients_table', 1),
(17, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(18, '2019_08_19_000000_create_failed_jobs_table', 1),
(19, '2023_02_14_055037_create_products_table', 1),
(20, '2023_02_14_055504_create_reviews_table', 1);

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
('3e5a9d908bd0dbcf787e83db09425ebd87454cae6c3b5e4938c711782efccd2ff309f44893fb3900', 1, 2, NULL, '[]', 0, '2023-02-15 23:58:22', '2023-02-15 23:58:22', '2024-02-16 05:58:22'),
('8d2678aedbbd754eb64ca55e542699b4dd48fa978e7a3729566b215c137329c6013f1e994a225eb0', 1, 2, NULL, '[]', 0, '2023-02-15 23:57:46', '2023-02-15 23:57:46', '2024-02-16 05:57:46');

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
(1, NULL, 'Laravel Personal Access Client', 'HljFpFpBueyh7N4a4mTk5H24S4AGg2YEEQaDDcDH', NULL, 'http://localhost', 1, 0, 0, '2023-02-15 23:51:15', '2023-02-15 23:51:15'),
(2, NULL, 'Laravel Password Grant Client', '8pLpsTB5B7jLAJh7GHKaeHBwgUWGzFdrZHNqMyeC', 'users', 'http://localhost', 0, 1, 0, '2023-02-15 23:51:15', '2023-02-15 23:51:15');

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
(1, 1, '2023-02-15 23:51:15', '2023-02-15 23:51:15');

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
('1cf208956549af4182c00960c188ef32eb5c54887027d3b3bd6586eb297ae96f3ea4b92faaafd1f5', '3e5a9d908bd0dbcf787e83db09425ebd87454cae6c3b5e4938c711782efccd2ff309f44893fb3900', 0, '2024-02-16 05:58:22'),
('1cfa666b2672d593b56db66f2c5bc6952fca628081fd5bf9883ef96cc28fc0ee542068e45120a6e9', '8d2678aedbbd754eb64ca55e542699b4dd48fa978e7a3729566b215c137329c6013f1e994a225eb0', 0, '2024-02-16 05:57:46');

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
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_stock` int(11) NOT NULL,
  `product_discount` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_details`, `product_price`, `product_stock`, `product_discount`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'atque', 'Eveniet molestias quasi eaque tenetur est. Recusandae delectus architecto culpa odio. Qui iste qui recusandae rerum. Vitae repellat at blanditiis nostrum sunt possimus.', 454, 9, 14, 4, '2023-02-15 23:23:25', '2023-02-15 23:23:25'),
(2, 'qui', 'Est ab quod necessitatibus voluptatum est qui. Quasi quia veritatis mollitia et tempore ex vel molestiae.', 481, 6, 12, 2, '2023-02-15 23:23:25', '2023-02-15 23:23:25'),
(3, 'voluptas', 'Quae laudantium odio consequatur in. Eligendi eos cumque non accusamus ipsa fuga cupiditate tempora. Blanditiis et sunt sit ut natus nemo. Mollitia officia illum hic molestiae nihil doloribus cupiditate. Dicta et rerum voluptas culpa dolorum ea est voluptatum.', 260, 2, 7, 3, '2023-02-15 23:23:25', '2023-02-15 23:23:25'),
(4, 'eos', 'Incidunt fugit velit sint. Dolore quia sit quaerat sunt odit ut et eligendi. Adipisci nemo veniam laborum quos. Doloribus aut iusto libero voluptates. Sed maxime fugit qui pariatur.', 377, 8, 10, 4, '2023-02-15 23:23:25', '2023-02-15 23:23:25'),
(5, 'repellendus', 'Ut eum voluptatem quisquam voluptatem facere minus. Eum voluptas sunt voluptatem ipsam sapiente quia. Animi optio dolorem omnis voluptas.', 715, 3, 11, 3, '2023-02-15 23:23:25', '2023-02-15 23:23:25'),
(6, 'est', 'Saepe dolores enim et similique laboriosam eum. Sunt recusandae sint qui dicta autem aperiam sit. Molestiae dolorem et debitis.', 539, 5, 10, 4, '2023-02-15 23:23:25', '2023-02-15 23:23:25'),
(7, 'Nova', 'Omnis perferendis et et dolorum in non. Ut excepturi tenetur labore qui voluptatem ducimus. Illum reiciendis cupiditate consectetur in perferendis. Et esse provident iste.', 1234, 400, 12, 1, '2023-02-15 23:23:25', '2023-02-16 00:15:58'),
(8, 'rem', 'Velit ad qui adipisci amet numquam. Modi facilis possimus quibusdam quos deleniti. Tempore vero excepturi animi ipsam dolor officiis. Illo voluptatem vel vel dolorem similique non ut.', 180, 6, 11, 2, '2023-02-15 23:23:25', '2023-02-15 23:23:25'),
(9, 'nostrum', 'Ab aut ut veritatis commodi id dolorem. In consequuntur eaque quibusdam similique repellat illum explicabo. Consectetur enim iure ea et ab aliquid quibusdam. Facere nostrum asperiores ipsum a eius et.', 430, 5, 2, 2, '2023-02-15 23:23:26', '2023-02-15 23:23:26'),
(10, 'est', 'Debitis autem sunt voluptas placeat laboriosam quia rerum ut. Quo in dicta natus exercitationem asperiores aut. Nihil porro eius quod quas impedit libero ratione. Sunt rem qui quisquam quod sapiente.', 288, 8, 23, 3, '2023-02-15 23:23:26', '2023-02-15 23:23:26'),
(11, 'quis', 'Quisquam enim reiciendis placeat dolores est nemo modi dolores. Occaecati incidunt molestiae rerum consectetur voluptatum voluptas. A laborum asperiores aut deleniti.', 511, 4, 12, 4, '2023-02-15 23:23:26', '2023-02-15 23:23:26'),
(12, 'sit', 'Neque eveniet velit voluptatibus voluptate omnis sed. Voluptas id eum vero qui et. Qui possimus ab dignissimos ab non. Omnis eos doloribus porro eveniet sit distinctio.', 549, 1, 9, 3, '2023-02-15 23:23:26', '2023-02-15 23:23:26'),
(13, 'quia', 'Soluta veniam nisi qui. Dolorem voluptatem doloremque voluptas ut similique ducimus sunt. Laudantium facilis nesciunt rerum ea.', 264, 2, 15, 5, '2023-02-15 23:23:26', '2023-02-15 23:23:26'),
(14, 'dolore', 'Quo voluptas sint architecto culpa velit dignissimos. Dolorem omnis dolores delectus at veritatis eum similique. Blanditiis ad saepe praesentium aut occaecati similique delectus voluptates. Necessitatibus quibusdam blanditiis repellendus dolore eos quisquam.', 612, 6, 20, 3, '2023-02-15 23:23:26', '2023-02-15 23:23:26'),
(15, 'error', 'Est ut quibusdam accusamus dolor. Odio deserunt est minima ex.', 567, 6, 17, 3, '2023-02-15 23:23:26', '2023-02-15 23:23:26'),
(16, 'ea', 'Maxime nulla aliquid quasi eum voluptatem qui. Inventore eos id dolorem vel incidunt maxime. Iure et dicta fugiat autem eveniet sunt. Consequatur vel non repellat enim ut quasi.', 767, 6, 5, 4, '2023-02-15 23:23:26', '2023-02-15 23:23:26'),
(17, 'in', 'Sapiente rerum voluptas eligendi quis accusantium voluptates ad. Vitae commodi pariatur totam id corrupti magnam. Velit sit dolores sit accusantium facere. Id iure assumenda iure.', 457, 4, 23, 5, '2023-02-15 23:23:26', '2023-02-15 23:23:26'),
(18, 'Nova', 'Omnis perferendis et et dolorum in non. Ut excepturi tenetur labore qui voluptatem ducimus. Illum reiciendis cupiditate consectetur in perferendis. Et esse provident iste.', 1234, 400, 12, 1, '2023-02-15 23:23:26', '2023-02-16 00:16:38'),
(19, 'nesciunt', 'Blanditiis in qui voluptatem sunt et molestiae reprehenderit. Et omnis dolores accusantium et iure sunt neque. Corrupti quibusdam vero magnam veritatis.', 540, 8, 16, 5, '2023-02-15 23:23:26', '2023-02-15 23:23:26'),
(20, 'cum', 'Maxime reiciendis esse molestias ut facilis. Perferendis voluptatibus molestias qui quo vel voluptas. Minus praesentium aperiam assumenda quo minima. Sit animi sunt labore voluptas doloremque eum ut sapiente.', 428, 2, 8, 5, '2023-02-15 23:23:26', '2023-02-15 23:23:26'),
(21, 'sapiente', 'Dolorum unde dolores id et explicabo. Quas labore dolores suscipit. Ipsa iusto consequuntur dicta fugiat quibusdam.', 434, 7, 19, 4, '2023-02-15 23:23:26', '2023-02-15 23:23:26'),
(22, 'quia', 'Minima reprehenderit esse nihil ex. Sit debitis aut rerum. Quidem optio ullam est corrupti. Commodi aut impedit earum architecto.', 246, 3, 9, 2, '2023-02-15 23:23:26', '2023-02-15 23:23:26'),
(23, 'et', 'Ipsum autem asperiores voluptatem voluptates molestiae. Aut ducimus neque occaecati eos id non. Voluptatem assumenda voluptatum minima alias.', 655, 2, 19, 1, '2023-02-15 23:23:26', '2023-02-15 23:23:26'),
(24, 'vel', 'Fugit placeat nesciunt maiores. Totam eos animi omnis. Dignissimos harum corporis dolores velit autem rerum repellat.', 206, 5, 10, 3, '2023-02-15 23:23:26', '2023-02-15 23:23:26'),
(25, 'et', 'Sit odio fugiat suscipit in velit voluptatum. Iure possimus officiis soluta dicta est quas dolores. Pariatur eos est occaecati id. Qui aspernatur eius quia est.', 329, 6, 22, 4, '2023-02-15 23:23:26', '2023-02-15 23:23:26'),
(26, 'tempora', 'Facere dicta error error unde dolorem. Earum consequatur voluptas rem odit. Beatae a neque distinctio. Quas vel quibusdam qui et error. Recusandae accusantium amet qui aperiam iure.', 985, 7, 19, 4, '2023-02-15 23:23:26', '2023-02-15 23:23:26'),
(27, 'omnis', 'Dignissimos voluptatem consequuntur veritatis non ullam. Quas qui minus et omnis possimus. Dicta odit nemo eligendi repudiandae repudiandae vitae facilis. Deleniti voluptatem excepturi quaerat ipsa et minima et.', 126, 3, 5, 2, '2023-02-15 23:23:26', '2023-02-15 23:23:26'),
(28, 'cumque', 'Sunt fugiat qui quasi. Commodi vel harum est minus. Nihil eum odio laboriosam nihil. Inventore sed qui quae dolore sint.', 334, 6, 18, 2, '2023-02-15 23:23:27', '2023-02-15 23:23:27'),
(29, 'vitae', 'Quaerat eveniet iusto et veritatis. Nihil placeat aut quis omnis ut. Ullam ut ducimus ratione atque delectus.', 675, 1, 23, 2, '2023-02-15 23:23:27', '2023-02-15 23:23:27'),
(30, 'nihil', 'Provident dicta hic porro cum doloribus iste eaque exercitationem. Aut iure id non dolor error beatae corporis id.', 651, 9, 10, 3, '2023-02-15 23:23:27', '2023-02-15 23:23:27'),
(31, 'dicta', 'Ut autem est voluptas voluptas debitis voluptatem. Dolore deleniti dolorum exercitationem amet. Aut sunt ut itaque rerum eum et unde.', 257, 7, 27, 1, '2023-02-15 23:23:27', '2023-02-15 23:23:27'),
(32, 'tenetur', 'Quaerat adipisci corrupti nihil maiores voluptatem dolor. Alias ut quidem at est provident. Ut illum sit eius totam quia soluta rerum aut. Et voluptatibus et eum dolorem deserunt.', 206, 8, 2, 4, '2023-02-15 23:23:27', '2023-02-15 23:23:27'),
(33, 'omnis', 'Eum pariatur voluptatem magni modi esse iure aut. Quod dolores est dolores nesciunt aut autem est quas. Dolor nulla libero molestiae est impedit possimus. Laudantium autem minus quis sit odit ut.', 714, 2, 18, 3, '2023-02-15 23:23:27', '2023-02-15 23:23:27'),
(34, 'sint', 'Ex nemo omnis accusamus facilis. Nesciunt aliquam qui nemo et blanditiis unde sequi. Veritatis at quam ut.', 860, 9, 30, 4, '2023-02-15 23:23:27', '2023-02-15 23:23:27'),
(35, 'tempore', 'Molestiae recusandae molestiae sed sed occaecati totam sint. Ut unde quibusdam provident quis. Consequuntur doloremque voluptatem enim voluptatum et blanditiis nulla.', 599, 1, 17, 5, '2023-02-15 23:23:27', '2023-02-15 23:23:27'),
(36, 'at', 'Autem incidunt soluta omnis quasi corporis officiis ullam. Fugit adipisci sequi cumque fuga itaque dolores. Nisi doloremque eum dolorem est eos. Sit dolor voluptas consequuntur quasi nulla.', 538, 9, 13, 3, '2023-02-15 23:23:27', '2023-02-15 23:23:27'),
(37, 'et', 'A a dicta veritatis beatae sit quos fugiat. Sit est alias facere accusantium ut incidunt qui. Officia doloribus sit qui iure velit qui.', 501, 3, 5, 4, '2023-02-15 23:23:27', '2023-02-15 23:23:27'),
(38, 'facere', 'Nemo id eveniet sapiente velit laboriosam voluptas soluta. Qui molestiae exercitationem quia dignissimos. Magnam ut aut quisquam quia.', 607, 3, 24, 4, '2023-02-15 23:23:27', '2023-02-15 23:23:27'),
(39, 'nemo', 'Ea rerum et autem quia ut. Distinctio aspernatur ea reprehenderit voluptas labore. Sunt molestiae temporibus deleniti omnis voluptate labore accusantium.', 107, 6, 21, 1, '2023-02-15 23:23:27', '2023-02-15 23:23:27'),
(40, 'hic', 'Est mollitia dicta minus minus deserunt corporis quibusdam. Vero amet quia autem nobis. Aut qui non et ullam. Sint provident rerum quo voluptatem sed qui eveniet. Dolorem voluptatem iste quis.', 811, 4, 18, 5, '2023-02-15 23:23:27', '2023-02-15 23:23:27'),
(41, 'accusamus', 'Et quis eos accusamus. Atque tenetur aut ut sint nisi ducimus. Eos quibusdam commodi nemo omnis quia enim suscipit.', 333, 7, 20, 5, '2023-02-15 23:23:27', '2023-02-15 23:23:27'),
(42, 'tempora', 'Ut quam laudantium eaque quos aut. Aut eius repudiandae in optio accusantium. Quae praesentium et alias sit adipisci. Natus animi repellat optio officiis est totam sequi.', 708, 9, 12, 5, '2023-02-15 23:23:27', '2023-02-15 23:23:27'),
(43, 'nulla', 'Eos tempora iure ab laboriosam iure. Assumenda quibusdam alias a eum sunt alias nobis. Nam alias dolores enim nam nihil soluta. Quia qui odio aspernatur qui dolores.', 145, 0, 11, 4, '2023-02-15 23:23:27', '2023-02-15 23:23:27'),
(44, 'enim', 'Et rerum illum ab est animi asperiores et beatae. Sequi esse expedita et consequatur. Neque enim dolores voluptatem tempore.', 719, 6, 20, 5, '2023-02-15 23:23:27', '2023-02-15 23:23:27'),
(45, 'ex', 'Asperiores debitis est eos quidem. Hic tenetur sunt esse placeat. Ipsam consequatur incidunt natus quaerat sed est. Est totam repellendus dolores eligendi.', 587, 9, 9, 4, '2023-02-15 23:23:27', '2023-02-15 23:23:27'),
(46, 'ratione', 'Consequatur sed veniam iusto qui saepe doloremque est aut. Laborum voluptatibus omnis aut eum iste minus voluptatem. Optio voluptate ad perferendis nostrum ut.', 463, 8, 21, 1, '2023-02-15 23:23:27', '2023-02-15 23:23:27'),
(47, 'in', 'Velit sed quasi dolorum atque. Dolor ab praesentium id. Itaque est tempora eos magni.', 880, 9, 2, 3, '2023-02-15 23:23:27', '2023-02-15 23:23:27'),
(48, 'modi', 'Nihil quae nam sit vero quo. Consectetur eaque voluptatem delectus quis. Delectus mollitia tempore quibusdam delectus qui numquam voluptatem.', 239, 4, 21, 3, '2023-02-15 23:23:27', '2023-02-15 23:23:27'),
(49, 'eaque', 'Quam doloremque accusamus esse laborum. Nihil laboriosam ea est officiis illum qui et expedita. Natus repellat quidem qui. Sunt quis et at dolor distinctio dolores suscipit. Sed impedit sed sit qui.', 129, 9, 29, 2, '2023-02-15 23:23:28', '2023-02-15 23:23:28'),
(50, 'pariatur', 'Eligendi quo quod dolorem asperiores architecto quaerat aut nemo. Quaerat sed consequuntur quia repellendus. Sed dolor rem officiis recusandae recusandae et quibusdam. Et dicta mollitia et a.', 467, 6, 24, 5, '2023-02-15 23:23:28', '2023-02-15 23:23:28');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review_product` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `customer_name`, `review_product`, `star`, `created_at`, `updated_at`) VALUES
(1, 45, 'Genesis Gusikowski Sr.', 'Et sed sequi sint omnis. Est suscipit vel nobis. Hic earum blanditiis esse ex sunt quibusdam. Omnis soluta voluptatum beatae qui.', 5, '2023-02-15 23:23:28', '2023-02-15 23:23:28'),
(2, 4, 'Frida Thiel', 'Error quos inventore et rem. Sit blanditiis ratione perferendis iusto est ipsum. Vel impedit nisi ab qui repellat. Asperiores molestias odit aut qui accusantium ratione.', 1, '2023-02-15 23:23:28', '2023-02-15 23:23:28'),
(3, 9, 'Dr. Trent Mann', 'Ut ex aspernatur nihil at corrupti asperiores nulla eaque. Eum neque nihil est nemo.', 5, '2023-02-15 23:23:28', '2023-02-15 23:23:28'),
(4, 3, 'Destini Boehm', 'Numquam sed culpa tempore consequatur accusantium nesciunt at. Veritatis rerum id ipsam. Enim asperiores harum possimus dolorem eaque.', 1, '2023-02-15 23:23:29', '2023-02-15 23:23:29'),
(5, 7, 'Mr. Ryley Gottlieb DDS', 'Et sed et deserunt sed odit optio nobis. Praesentium eos unde consectetur ea amet ut dolor. Ut exercitationem cum at corrupti soluta.', 5, '2023-02-15 23:23:29', '2023-02-15 23:23:29'),
(6, 38, 'Miss Laisha Larson Sr.', 'Quia similique consequatur voluptas culpa suscipit ut similique. Suscipit debitis aspernatur omnis ea exercitationem neque dolores non. Ipsam et esse esse qui labore atque cum. Repellendus consequatur non nobis aut. Quia at et ipsum quisquam non iure rem perspiciatis.', 0, '2023-02-15 23:23:29', '2023-02-15 23:23:29'),
(7, 30, 'Dr. Howard Dare', 'Temporibus aspernatur qui voluptatibus repellendus. Et tempora eum aspernatur voluptatem sit modi. Commodi animi nesciunt quisquam dignissimos beatae aliquid.', 1, '2023-02-15 23:23:29', '2023-02-15 23:23:29'),
(8, 3, 'Mrs. Myrna Senger MD', 'Odit in iusto ratione inventore saepe facere occaecati. Incidunt fuga est corrupti deserunt sed quia ducimus quis. Esse ratione aliquid et ducimus ea.', 2, '2023-02-15 23:23:29', '2023-02-15 23:23:29'),
(9, 7, 'Myrl Keebler', 'Non ut porro culpa vero quia dicta. Non ut non voluptatem aut. Consequatur nesciunt dolorum repudiandae autem iusto possimus. Nostrum in enim non voluptatem dolorum veniam ipsam.', 3, '2023-02-15 23:23:29', '2023-02-15 23:23:29'),
(10, 8, 'Mckenzie Powlowski', 'Cupiditate autem nesciunt vel enim. Et odio asperiores molestiae libero dolorem et. At enim aut molestiae. Ipsa nihil voluptas possimus a labore consequatur.', 4, '2023-02-15 23:23:29', '2023-02-15 23:23:29'),
(11, 30, 'Mr. Immanuel Corkery', 'Praesentium nesciunt enim fugit itaque quod pariatur doloribus. Ut occaecati laborum ut pariatur iste eius ut vel. Et voluptatibus provident maxime incidunt. Aut recusandae laudantium esse est beatae totam.', 0, '2023-02-15 23:23:29', '2023-02-15 23:23:29'),
(12, 49, 'Brannon Weber', 'Doloremque in ex sapiente ea. Et ex voluptas omnis architecto quam ad omnis animi. Autem animi expedita sequi tempora placeat. Atque cupiditate aut omnis ipsa porro enim. Aut cupiditate molestias occaecati quia ipsa.', 0, '2023-02-15 23:23:29', '2023-02-15 23:23:29'),
(13, 41, 'Mr. Napoleon Batz DVM', 'Porro qui qui qui ipsam ea est. Perspiciatis perferendis similique recusandae voluptate dicta et cumque sunt. Magni veritatis non est.', 5, '2023-02-15 23:23:29', '2023-02-15 23:23:29'),
(14, 46, 'Lorenz Carroll', 'Hic qui nobis cupiditate qui nisi. Tempora quisquam omnis consequatur magni minus dolores. Ipsum qui enim repellat qui temporibus suscipit accusamus. Sunt qui ex et perferendis.', 3, '2023-02-15 23:23:29', '2023-02-15 23:23:29'),
(15, 35, 'Mr. Cary Jenkins I', 'Qui optio sapiente ut et rem dolor. Doloribus labore mollitia debitis blanditiis unde quaerat. Quo est ipsum earum illo cum.', 4, '2023-02-15 23:23:30', '2023-02-15 23:23:30'),
(16, 23, 'Miss Trudie Effertz', 'Ipsum optio adipisci porro accusamus iusto. Eos quam ullam assumenda. Molestiae accusamus itaque maiores hic nihil. Ut iusto eaque sapiente illum sint dolor. Omnis eum sapiente omnis sed quas est harum.', 5, '2023-02-15 23:23:30', '2023-02-15 23:23:30'),
(17, 28, 'Eleanore Paucek', 'Itaque assumenda non consequatur eos saepe. In placeat voluptas voluptate veniam illum cupiditate.', 5, '2023-02-15 23:23:30', '2023-02-15 23:23:30'),
(18, 17, 'Caterina Russel Sr.', 'Suscipit ea repellat ratione unde odio corporis ut. Et voluptates architecto cum qui vel voluptate non vero. Harum et molestiae dolore sed porro. Omnis accusamus similique ad molestiae sed esse.', 5, '2023-02-15 23:23:30', '2023-02-15 23:23:30'),
(20, 16, 'Kenny Glover', 'Vel nulla voluptas qui. Dolores rerum voluptate soluta qui rerum. Consequatur aperiam optio facere quasi fugit.', 1, '2023-02-15 23:23:30', '2023-02-15 23:23:30'),
(21, 2, 'Lucio Shanahan', 'Sit possimus consequuntur neque quas dolorem error rerum. Est sit dolorem et veniam occaecati consequuntur. Enim numquam unde libero doloremque nam dolor molestiae in.', 2, '2023-02-15 23:23:30', '2023-02-15 23:23:30'),
(22, 15, 'Terry Brekke Sr.', 'Reiciendis dolores vero quaerat totam error reprehenderit adipisci. Cum sit suscipit saepe excepturi minima perferendis. Alias velit ut quo temporibus consequuntur.', 0, '2023-02-15 23:23:30', '2023-02-15 23:23:30'),
(23, 38, 'Gideon Blanda', 'Laborum reiciendis officia eum assumenda nisi sit. Occaecati et nihil omnis et natus. Aut provident iusto nihil.', 3, '2023-02-15 23:23:30', '2023-02-15 23:23:30'),
(24, 44, 'Trevion Glover', 'Non excepturi aliquam explicabo at dolor voluptatem occaecati. Vitae quos dolor est quae quia velit. Expedita repudiandae ut fuga unde. Quae placeat enim itaque animi.', 5, '2023-02-15 23:23:30', '2023-02-15 23:23:30'),
(25, 18, 'Matilde Littel', 'Sit omnis voluptatem fugit in. Maxime praesentium ab quia in eligendi ut veritatis. Dolor numquam eius et eos.', 0, '2023-02-15 23:23:30', '2023-02-15 23:23:30'),
(26, 32, 'Prof. Amparo Pfannerstill DDS', 'Vel debitis aliquam voluptatem culpa. Reiciendis ducimus quos quia quidem voluptas eligendi rerum. Enim assumenda nemo est repellendus quia accusantium enim voluptatum.', 3, '2023-02-15 23:23:30', '2023-02-15 23:23:30'),
(27, 10, 'Marvin Bashirian I', 'Ipsa qui beatae similique nisi. Officiis non quos nesciunt esse voluptatem voluptas. Veritatis aut sunt deserunt ea accusamus et. Placeat ut ut animi minus qui dolore animi qui.', 2, '2023-02-15 23:23:30', '2023-02-15 23:23:30'),
(28, 6, 'Reta Schuppe', 'Ut vel fuga eum enim sit dolorem. Ut eveniet asperiores perspiciatis quos sit ad excepturi.', 4, '2023-02-15 23:23:30', '2023-02-15 23:23:30'),
(29, 20, 'Cornelius Hermiston III', 'Asperiores officiis ratione maxime. Esse voluptatem omnis itaque rerum a et soluta. Illo modi numquam doloribus.', 0, '2023-02-15 23:23:30', '2023-02-15 23:23:30'),
(30, 26, 'Mr. Karley Mertz I', 'Odit saepe nihil officiis sit. Voluptate commodi repellat et hic ullam repellendus delectus. Aut modi error rerum modi deleniti iste. Doloremque ut assumenda ut quia vitae ad rerum.', 3, '2023-02-15 23:23:31', '2023-02-15 23:23:31'),
(31, 22, 'Luz Kovacek', 'Aliquam molestias est quo aperiam. Nesciunt quas enim voluptate repellendus quo consectetur. Commodi optio perspiciatis nulla est molestiae perspiciatis.', 1, '2023-02-15 23:23:31', '2023-02-15 23:23:31'),
(32, 40, 'Demetrius Gerhold', 'Quis quasi pariatur quo vitae. Quia molestiae aliquam incidunt laboriosam sint. Et quia consequatur doloremque quia atque aut eum corrupti. Quia officia est labore mollitia iure voluptatibus.', 3, '2023-02-15 23:23:31', '2023-02-15 23:23:31'),
(33, 49, 'Rosemarie Altenwerth Sr.', 'Saepe et maxime expedita laudantium officiis cupiditate aut. Aut perspiciatis minus minus excepturi. Totam atque accusamus nemo quas temporibus architecto accusamus.', 4, '2023-02-15 23:23:31', '2023-02-15 23:23:31'),
(34, 16, 'Jasmin Kihn', 'Eveniet amet voluptas quam ipsum aut assumenda. Et dolorum veritatis quo tempore ipsum impedit. Omnis mollitia sit quas temporibus voluptatem occaecati quidem eveniet.', 0, '2023-02-15 23:23:31', '2023-02-15 23:23:31'),
(35, 23, 'Mrs. Maryjane Ullrich DDS', 'Error velit vel fuga in cum in aut. Rerum id cupiditate accusantium rem ducimus vitae dolorum. Eum aut et nesciunt.', 3, '2023-02-15 23:23:31', '2023-02-15 23:23:31'),
(36, 16, 'Alene Romaguera', 'Aut cupiditate non dolorem velit dolores. Sit aliquid id et omnis architecto dolores.', 5, '2023-02-15 23:23:31', '2023-02-15 23:23:31'),
(37, 15, 'Tressa Balistreri', 'Sequi sit non repellendus recusandae nihil. Quidem aut non ratione iure cum officia optio. Tempora sit sunt fugit. Deleniti corporis beatae aut et rerum nostrum numquam.', 1, '2023-02-15 23:23:31', '2023-02-15 23:23:31'),
(38, 9, 'Karine Keeling', 'Consectetur dignissimos itaque et aperiam laudantium qui. Excepturi amet fugit quia velit. Velit et quibusdam temporibus magni.', 0, '2023-02-15 23:23:31', '2023-02-15 23:23:31'),
(39, 33, 'Mr. Tevin Lebsack', 'Vel placeat alias dignissimos quaerat dicta perspiciatis. Distinctio quo cum voluptas. Esse et tempora iusto dolorem. Ad dolore inventore et.', 5, '2023-02-15 23:23:31', '2023-02-15 23:23:31'),
(40, 39, 'Carmelo Bergnaum', 'Culpa accusamus architecto accusantium voluptas. Quasi natus eaque est veniam. Quis optio dolore voluptas est recusandae non quo autem.', 5, '2023-02-15 23:23:31', '2023-02-15 23:23:31'),
(41, 48, 'Annetta Gislason III', 'Quis non enim ex et quis expedita. Non delectus id debitis ratione et magnam vero. Distinctio et maxime iusto amet fugiat dicta omnis.', 4, '2023-02-15 23:23:31', '2023-02-15 23:23:31'),
(42, 31, 'Stephan Abernathy Jr.', 'Asperiores doloribus enim ex quibusdam ipsum cumque unde. Quo deleniti soluta optio tenetur. Tenetur molestias non totam quo veniam est soluta.', 2, '2023-02-15 23:23:31', '2023-02-15 23:23:31'),
(43, 5, 'Riley Jacobson I', 'Voluptas quaerat mollitia voluptatum laboriosam consequuntur qui. Accusamus voluptas alias et. Sit cumque qui perferendis incidunt. Maxime cumque maxime harum cupiditate quis perferendis veritatis.', 5, '2023-02-15 23:23:31', '2023-02-15 23:23:31'),
(44, 23, 'Prof. Melvin Hickle I', 'Recusandae laudantium dolor veritatis. Aut porro accusantium harum quis cum veritatis. Asperiores qui sed facilis officiis perspiciatis. Magni accusantium quos reiciendis et nisi alias fugiat.', 5, '2023-02-15 23:23:31', '2023-02-15 23:23:31'),
(45, 12, 'Delores Schimmel', 'Aut est eum ut rerum dolore provident saepe ducimus. Optio delectus et et eos blanditiis. Et voluptatem culpa et et fuga facilis vel.', 3, '2023-02-15 23:23:31', '2023-02-15 23:23:31'),
(46, 15, 'Irma Conn', 'Laboriosam deleniti quis quam ut architecto sed deleniti. Qui quam sed minima. Commodi iure cupiditate sed qui labore modi iusto. Voluptas et autem sed quisquam nihil qui reiciendis.', 1, '2023-02-15 23:23:31', '2023-02-15 23:23:31'),
(47, 32, 'Violet Metz', 'Error voluptate voluptas ut. Ut adipisci molestiae sit consequatur quia atque voluptate quas. Voluptatem doloremque sequi possimus ea ab.', 0, '2023-02-15 23:23:31', '2023-02-15 23:23:31'),
(48, 30, 'Bell Wunsch', 'Nam commodi tempora reiciendis eos. Animi autem earum aut reiciendis laboriosam. Sit doloremque saepe dolorem ut nobis. Sed ad quo et voluptatum maxime cum sed.', 2, '2023-02-15 23:23:31', '2023-02-15 23:23:31'),
(49, 44, 'Grady Kreiger', 'Omnis laborum ad dolores repudiandae enim. Commodi harum dignissimos delectus qui aut velit omnis. Distinctio sit est molestiae adipisci accusantium quia.', 5, '2023-02-15 23:23:31', '2023-02-15 23:23:31'),
(50, 28, 'King Stoltenberg', 'Eligendi iure est minima vel reprehenderit unde. Vitae dolor quas est est fugit qui. Asperiores aliquid expedita reiciendis dolores. In ut reprehenderit officiis nulla sit dolores sunt.', 5, '2023-02-15 23:23:31', '2023-02-15 23:23:31'),
(51, 29, 'Ms. Imogene Lynch DDS', 'Alias quis animi nostrum. Rem et suscipit molestiae veniam aut magni perspiciatis ea. Dolores et commodi mollitia ratione assumenda ducimus. Qui sint facere assumenda fugiat sequi.', 4, '2023-02-15 23:23:31', '2023-02-15 23:23:31'),
(52, 41, 'Adriana Will V', 'Et ut quia sit delectus ut ea. Porro impedit soluta qui ut autem aut similique.', 5, '2023-02-15 23:23:31', '2023-02-15 23:23:31'),
(53, 42, 'Mrs. Salma Kilback', 'Culpa unde non magni occaecati eaque. Error corporis illum dolor aut possimus.', 1, '2023-02-15 23:23:31', '2023-02-15 23:23:31'),
(54, 3, 'Dr. Emilio Bartoletti', 'Aspernatur impedit minima voluptatem incidunt nemo excepturi qui nihil. Et enim quasi aut sunt debitis. Quia accusamus omnis aut quasi fugit totam labore.', 5, '2023-02-15 23:23:31', '2023-02-15 23:23:31'),
(55, 5, 'Abdiel Ullrich', 'Ab quo magni dolores quas ut. Magnam incidunt incidunt magni natus. Accusantium cum illum distinctio et maiores numquam.', 0, '2023-02-15 23:23:31', '2023-02-15 23:23:31'),
(56, 10, 'Prof. Ines Cummings', 'Tempore nesciunt similique et id quasi consequuntur culpa. Aliquid ut qui atque quas. Deleniti quis inventore ipsum mollitia omnis praesentium.', 1, '2023-02-15 23:23:31', '2023-02-15 23:23:31'),
(57, 30, 'Kaia Stehr', 'Accusamus esse rerum recusandae non rerum. Eveniet commodi ducimus omnis earum ipsum impedit reprehenderit. Perspiciatis facere voluptatem rerum rem velit. Explicabo qui sunt ducimus vitae nulla.', 2, '2023-02-15 23:23:31', '2023-02-15 23:23:31'),
(58, 14, 'Deontae Effertz', 'Accusantium voluptatem est laboriosam nobis. Exercitationem voluptatem quis praesentium sint delectus adipisci voluptatum. Commodi ad dolor ut aperiam nesciunt iste aut.', 0, '2023-02-15 23:23:32', '2023-02-15 23:23:32'),
(59, 35, 'Ally Ernser', 'Alias ut temporibus dolores maiores libero officia aut. Laboriosam neque minus dolorum tenetur quis quas veritatis. Asperiores harum sunt deserunt in nesciunt sit.', 0, '2023-02-15 23:23:32', '2023-02-15 23:23:32'),
(60, 21, 'Mr. Noel Koepp', 'Natus ut magni dolore dolorem est. Assumenda quod blanditiis est reiciendis. Repellat porro nihil quia aperiam libero inventore. Quidem quas odio animi quia.', 2, '2023-02-15 23:23:32', '2023-02-15 23:23:32'),
(61, 3, 'Chet Weber', 'Fugit nam sequi temporibus voluptate dolorem temporibus. Illo officia quasi ducimus quisquam voluptas delectus. Velit fugit deleniti perferendis aut quia molestias assumenda.', 4, '2023-02-15 23:23:32', '2023-02-15 23:23:32'),
(62, 39, 'Gaston Hill', 'Dolor sunt voluptatem aut fuga recusandae tenetur incidunt. Harum qui id velit reprehenderit adipisci. Iure error autem aut quia quos ut. Numquam dolorum non in voluptas adipisci quaerat ratione.', 0, '2023-02-15 23:23:32', '2023-02-15 23:23:32'),
(63, 37, 'Marjorie Fay V', 'Saepe vel in deleniti magnam. Harum assumenda aut reprehenderit doloribus amet rerum qui. Hic porro iste magni repellendus. Recusandae ipsa fugit et aperiam eum.', 0, '2023-02-15 23:23:32', '2023-02-15 23:23:32'),
(64, 23, 'Keagan Robel', 'Placeat velit nemo quia qui sint ut. Commodi quaerat assumenda atque ut voluptates. Quo quibusdam temporibus occaecati maxime architecto. Rerum nulla distinctio non aut.', 3, '2023-02-15 23:23:33', '2023-02-15 23:23:33'),
(65, 10, 'Prof. Rose Ryan', 'Accusamus possimus qui modi voluptas facilis error quam porro. Maiores qui et iusto id atque. Qui ab ut eligendi cum aliquam et ab. Enim in aspernatur molestias odio provident ipsum.', 5, '2023-02-15 23:23:33', '2023-02-15 23:23:33'),
(66, 28, 'Dr. Kacie Nolan I', 'Reiciendis nesciunt nemo voluptate dolor consequatur similique. Debitis minus a sed unde voluptatem aspernatur qui. Harum aut laudantium impedit atque voluptatibus quia. Cumque error in porro adipisci dolor nihil.', 4, '2023-02-15 23:23:33', '2023-02-15 23:23:33'),
(67, 10, 'Tianna Marks Jr.', 'Quo quo ex rem. Id consequatur cum aperiam voluptatem maxime fugiat eos distinctio. Amet necessitatibus non sint ipsum accusamus. At qui quia quasi facilis velit qui assumenda.', 0, '2023-02-15 23:23:33', '2023-02-15 23:23:33'),
(68, 10, 'Baron Armstrong', 'Deserunt voluptatem corrupti voluptas. Excepturi qui numquam error nostrum. Aut et repudiandae dolorem eum harum.', 2, '2023-02-15 23:23:33', '2023-02-15 23:23:33'),
(69, 47, 'Prof. Jennings Zboncak V', 'Eos quas quam numquam. Aut odio eum est quia et aut iste. Commodi est quia eveniet perspiciatis. Vel et commodi distinctio nemo tempora deserunt.', 5, '2023-02-15 23:23:33', '2023-02-15 23:23:33'),
(70, 38, 'Prof. Marcelo Langworth V', 'Mollitia et consequuntur sapiente veritatis sequi fuga ipsa. Aliquid fugiat sed incidunt exercitationem dolorem. Aut quia et odit quo.', 0, '2023-02-15 23:23:34', '2023-02-15 23:23:34'),
(71, 9, 'Theresia Von', 'Saepe omnis laboriosam fuga cupiditate ipsum ut quis. Laborum aut sit fugit eum neque enim. Quis magni tenetur reprehenderit et. Odio ea nobis dolore in. Ab occaecati ut temporibus molestiae velit necessitatibus dolores.', 2, '2023-02-15 23:23:34', '2023-02-15 23:23:34'),
(72, 2, 'Dr. Christelle Huels V', 'Enim quidem est atque et magnam aliquid et. Dolor asperiores eos nisi voluptatibus laborum veniam vel. Deserunt ut tempora harum delectus explicabo.', 0, '2023-02-15 23:23:34', '2023-02-15 23:23:34'),
(73, 35, 'Princess Schneider', 'Repellendus rem non veniam quod nobis sapiente rerum magni. Omnis esse a et quia ut. Illo optio dicta maxime ut voluptas eveniet.', 4, '2023-02-15 23:23:34', '2023-02-15 23:23:34'),
(74, 6, 'Edwina Muller', 'Voluptatem doloribus aut mollitia cumque doloremque. Fugit aspernatur iure ut mollitia. Eveniet sed doloribus nisi blanditiis aut. Eius earum dignissimos nobis ad ut exercitationem.', 3, '2023-02-15 23:23:34', '2023-02-15 23:23:34'),
(75, 36, 'Ulices Brekke I', 'Nesciunt quia ipsa quos sunt. Cupiditate sit quisquam explicabo ea odit vel.', 4, '2023-02-15 23:23:34', '2023-02-15 23:23:34'),
(76, 33, 'Junius Okuneva', 'Quia aut deleniti nihil non. Velit nesciunt repellat et rem odio. Modi et iste ut.', 5, '2023-02-15 23:23:34', '2023-02-15 23:23:34'),
(77, 5, 'Emil Schneider', 'Sed et nam fugiat nobis. Repellat ut magnam qui ad. Reiciendis vero ipsam quas in iste et.', 3, '2023-02-15 23:23:34', '2023-02-15 23:23:34'),
(78, 12, 'Tabitha Schowalter', 'Quos velit fuga est odio natus autem sequi. Non sit illum facere.', 5, '2023-02-15 23:23:34', '2023-02-15 23:23:34'),
(79, 6, 'Jaden Kub', 'Quisquam consequatur eveniet mollitia dignissimos corrupti. Nobis aliquid iste libero. Aspernatur animi sed laboriosam ducimus.', 1, '2023-02-15 23:23:34', '2023-02-15 23:23:34'),
(80, 25, 'Jevon Hoppe MD', 'Tenetur qui ut et doloremque. Laboriosam totam repellat voluptas quis. Et reprehenderit maiores sapiente at.', 2, '2023-02-15 23:23:35', '2023-02-15 23:23:35'),
(81, 13, 'Mrs. Brandyn Zulauf PhD', 'Minus sint et aliquid repudiandae numquam adipisci eius. Inventore eum ea eveniet eligendi. Quidem dolor odit quos incidunt omnis a.', 2, '2023-02-15 23:23:35', '2023-02-15 23:23:35'),
(82, 17, 'Donnell Considine', 'Enim inventore quas non molestiae aut nisi. Veritatis cum placeat veritatis quas ullam. Sint voluptas dolores possimus expedita placeat quia.', 4, '2023-02-15 23:23:35', '2023-02-15 23:23:35'),
(83, 38, 'Prof. Aric Hettinger Sr.', 'Aliquid aut ut pariatur aliquid. Optio natus iusto fugiat illum dolor. Perferendis quod qui pariatur deserunt praesentium repudiandae.', 3, '2023-02-15 23:23:35', '2023-02-15 23:23:35'),
(84, 3, 'Everette Harber', 'Aliquid at eligendi vel aut aut. Repudiandae consequatur dicta provident nisi. Sequi atque ad saepe sunt consectetur. Voluptas neque qui autem ut laboriosam.', 3, '2023-02-15 23:23:35', '2023-02-15 23:23:35'),
(85, 40, 'Cecilia Harber', 'Et voluptatibus necessitatibus voluptatem veniam eum sunt iusto. Et quo commodi neque et est labore. Illo ratione officiis veniam rem consequatur nostrum consequatur. In totam molestiae cum sunt.', 5, '2023-02-15 23:23:35', '2023-02-15 23:23:35'),
(86, 29, 'Sam Lebsack MD', 'Quos qui architecto nisi error fugit et consequuntur ut. Amet adipisci tempora tempora odit nobis dolorem. Iste iure tempora impedit omnis fugit repudiandae.', 1, '2023-02-15 23:23:35', '2023-02-15 23:23:35'),
(87, 25, 'Mr. Collin Kessler', 'Ut iure saepe eum minima error officia. Eos saepe maxime architecto blanditiis id aut repudiandae. Et dolores ipsam molestiae at repudiandae fugiat.', 5, '2023-02-15 23:23:35', '2023-02-15 23:23:35'),
(88, 37, 'Flo Cormier', 'Et dolores quas odit eos animi sed. Voluptatum dolores voluptas nulla nihil iure voluptatem. Commodi ut ullam aliquam quis aut dignissimos. Porro aut a quia est provident.', 5, '2023-02-15 23:23:35', '2023-02-15 23:23:35'),
(89, 39, 'Norbert Kuhlman', 'Et suscipit asperiores reiciendis molestiae. Aut optio est et maiores. Repellendus voluptatem quae et laboriosam voluptatem.', 2, '2023-02-15 23:23:35', '2023-02-15 23:23:35'),
(90, 2, 'Reanna Eichmann', 'Officiis nulla ipsam perspiciatis deserunt at inventore ut. Magni quibusdam nemo ut dolor. Iste numquam impedit natus ipsam magnam nobis. Saepe assumenda corrupti voluptas nulla.', 5, '2023-02-15 23:23:35', '2023-02-15 23:23:35'),
(91, 43, 'Dr. Cristal Rohan MD', 'Quae sed cupiditate ratione laudantium sed. Voluptatem perspiciatis labore dolor id molestiae voluptatibus est soluta. Laboriosam soluta eos neque nihil dolore nihil reprehenderit qui. Delectus debitis assumenda explicabo eaque exercitationem similique quasi veritatis.', 2, '2023-02-15 23:23:35', '2023-02-15 23:23:35'),
(92, 46, 'Cordia Hermiston IV', 'Possimus dolores quia perferendis quas modi repellendus non. Facilis provident sint enim suscipit qui dolorem.', 4, '2023-02-15 23:23:36', '2023-02-15 23:23:36'),
(93, 32, 'Jude Abernathy', 'Earum ipsum expedita minus maiores labore at. Quod incidunt architecto repellat maxime autem. Aperiam porro quam molestiae laborum voluptas dolorum magnam nisi. Voluptas sint velit tempore.', 0, '2023-02-15 23:23:36', '2023-02-15 23:23:36'),
(94, 13, 'Mrs. Lea Fahey II', 'Molestiae corrupti quis delectus voluptas voluptatibus. Ab id expedita labore. Beatae ab animi ut. Deserunt voluptas quasi quam numquam soluta accusamus.', 2, '2023-02-15 23:23:36', '2023-02-15 23:23:36'),
(95, 14, 'Prof. Abraham Murray IV', 'Similique animi modi quos culpa perspiciatis nemo vero. Enim id non sapiente consequatur est. Ducimus necessitatibus et expedita nostrum.', 4, '2023-02-15 23:23:36', '2023-02-15 23:23:36'),
(96, 43, 'Dr. Oran Erdman V', 'Voluptate unde debitis eos optio at assumenda qui vero. Ut odio sed facere voluptas tempora ex rerum. Hic tenetur aut veritatis alias ut rerum est. Est ad non libero voluptate veniam est voluptatibus.', 3, '2023-02-15 23:23:36', '2023-02-15 23:23:36'),
(97, 45, 'Barry Johnson', 'Odio dolorem quis consequuntur amet provident ipsa. Maiores quia et tempora est. Assumenda et est totam veniam.', 2, '2023-02-15 23:23:36', '2023-02-15 23:23:36'),
(98, 5, 'Sandra Wiegand', 'Dicta aut vel sapiente veniam laudantium excepturi a. Quod maxime ducimus dolorum nisi qui. Dolorem et iure est aliquid.', 5, '2023-02-15 23:23:36', '2023-02-15 23:23:36'),
(99, 24, 'Dr. Elyse Upton II', 'Tempore optio et iste vel ut. Sit modi voluptas cum ipsam qui. Omnis reprehenderit nisi quis rerum iure dolor a. Maxime corrupti et pariatur dolor.', 1, '2023-02-15 23:23:36', '2023-02-15 23:23:36'),
(100, 42, 'Mae Jaskolski', 'Est sit corrupti quo omnis. Fugiat explicabo dicta dolorem aliquam. Et quia officiis repellendus quisquam hic quos excepturi. Totam qui libero necessitatibus natus.', 2, '2023-02-15 23:23:36', '2023-02-15 23:23:36'),
(101, 10, 'Scot Boehm', 'Eaque voluptatem nemo qui. Sed commodi exercitationem quod quos. Non laudantium similique corrupti omnis.', 1, '2023-02-15 23:23:36', '2023-02-15 23:23:36'),
(102, 25, 'Mrs. Kenna Lehner', 'Quam non voluptas quae aut necessitatibus. Possimus odit et unde aspernatur. Illum debitis temporibus unde qui.', 1, '2023-02-15 23:23:36', '2023-02-15 23:23:36'),
(103, 43, 'Prof. Adrianna Feeney PhD', 'Officia maxime tempora nisi pariatur quia porro. Porro atque magnam tempora mollitia qui quod voluptas praesentium. Commodi optio labore quo.', 0, '2023-02-15 23:23:36', '2023-02-15 23:23:36'),
(104, 36, 'Margot Beier', 'Qui aut suscipit itaque animi. Quaerat minima velit laboriosam dolores in molestiae corrupti doloribus. Officia voluptas quas ex voluptatem occaecati cumque expedita. Voluptatibus impedit deleniti in omnis.', 0, '2023-02-15 23:23:37', '2023-02-15 23:23:37'),
(105, 22, 'Patience Adams DVM', 'Quia ut magni illum ducimus. Asperiores corrupti voluptate accusamus. Veritatis eum velit sint quo.', 0, '2023-02-15 23:23:37', '2023-02-15 23:23:37'),
(106, 22, 'Oscar Hartmann', 'Repellat qui doloremque facere recusandae quia eaque autem. Et eius omnis occaecati ullam. Harum repudiandae minima aliquid magnam sit alias. Laboriosam vel et qui non dignissimos tempore. Ut enim enim distinctio voluptatem quasi sint aut.', 0, '2023-02-15 23:23:37', '2023-02-15 23:23:37'),
(107, 48, 'Rolando Maggio', 'Sequi ullam perferendis odio enim nihil distinctio ut. Sint et itaque totam harum. Cum excepturi corrupti et sint rerum. Qui est et cum dolorum minus nostrum aut.', 1, '2023-02-15 23:23:37', '2023-02-15 23:23:37'),
(108, 11, 'Malachi Cruickshank', 'Et omnis porro iusto et ipsum. Voluptatum tenetur totam pariatur quibusdam sunt qui. Maxime culpa id aliquid ipsa.', 2, '2023-02-15 23:23:37', '2023-02-15 23:23:37'),
(109, 48, 'Veronica Crona', 'Rem quidem quia iure error deleniti magni. Possimus quos aut eum asperiores non ipsam. Totam perspiciatis ut suscipit. Quo dolor quasi perferendis incidunt magni quis esse. Aut quia ut quas nihil voluptatem voluptates fuga.', 0, '2023-02-15 23:23:37', '2023-02-15 23:23:37'),
(110, 34, 'Rhiannon Dare III', 'Vel corporis dicta repellat consequuntur. Dolor quia voluptatem non perferendis ad. Nostrum porro dolorem vero odit et sed culpa blanditiis.', 2, '2023-02-15 23:23:37', '2023-02-15 23:23:37'),
(111, 37, 'Prof. Kade Bradtke II', 'Voluptas totam nam in est placeat earum. Incidunt saepe et et culpa. Temporibus quia aut quisquam voluptas perferendis. Temporibus alias beatae enim tempore.', 3, '2023-02-15 23:23:37', '2023-02-15 23:23:37'),
(112, 50, 'Omer McClure Jr.', 'Aperiam occaecati amet id eos. Culpa vel voluptatum deserunt assumenda ullam placeat.', 3, '2023-02-15 23:23:37', '2023-02-15 23:23:37'),
(113, 44, 'Michale Lesch', 'Molestias veniam qui velit enim. Veritatis eligendi est saepe expedita corporis. Neque in eum aut.', 3, '2023-02-15 23:23:37', '2023-02-15 23:23:37'),
(114, 22, 'Carmen Crooks', 'Et voluptatem sit quia sint commodi. Et sed quis id ut nam.', 5, '2023-02-15 23:23:37', '2023-02-15 23:23:37'),
(115, 1, 'Percy Larson', 'Qui temporibus dolores minima perferendis assumenda minus. Quod ab quibusdam tempora natus magni. Laudantium laborum dolor error aliquam expedita ab.', 3, '2023-02-15 23:23:37', '2023-02-15 23:23:37'),
(116, 25, 'Samanta Luettgen IV', 'Quibusdam nihil aut enim voluptates adipisci voluptatem sapiente sunt. Ut et soluta neque eaque doloremque nisi dicta. Dicta eligendi dicta sint id illum corporis. Quo autem nesciunt officiis quisquam omnis laborum velit eos.', 0, '2023-02-15 23:23:37', '2023-02-15 23:23:37'),
(117, 27, 'Greyson Klein', 'Expedita odio ab itaque ad natus. Iusto nulla quaerat eos quod quis quis dolores. Voluptatem perferendis odit facilis officia aliquid.', 4, '2023-02-15 23:23:37', '2023-02-15 23:23:37'),
(118, 22, 'Neha Runte', 'Sed non eligendi nobis. Nam ut qui doloremque veritatis distinctio. Veritatis sed eos quas delectus. Placeat earum temporibus esse fugit sed qui est dolore.', 4, '2023-02-15 23:23:37', '2023-02-15 23:23:37'),
(119, 42, 'Dr. Carey Lemke II', 'Quibusdam quibusdam et voluptatem reprehenderit. Commodi sed sunt et. Qui et architecto harum neque tempore. Ut id deleniti voluptas dolore in debitis. Beatae rerum perspiciatis voluptatibus quod.', 3, '2023-02-15 23:23:37', '2023-02-15 23:23:37'),
(120, 49, 'Chris Mertz Sr.', 'Ratione vitae ipsam ut cumque temporibus voluptate. Illo dolores voluptatem facere rem. In eum aspernatur ipsam fugiat soluta quas ratione sed. Occaecati in similique cum neque consequatur.', 5, '2023-02-15 23:23:37', '2023-02-15 23:23:37'),
(121, 21, 'Rebekah Nikolaus', 'Commodi reprehenderit ut odit explicabo quia. Dolor eos cupiditate temporibus. Porro rerum quia atque enim eligendi praesentium.', 3, '2023-02-15 23:23:37', '2023-02-15 23:23:37'),
(122, 1, 'Jerad Abshire', 'Tempora perspiciatis nam dolor non veniam molestiae illo sed. Perspiciatis dolorem quae inventore. Ab quaerat voluptatem libero quae quia est qui quia.', 3, '2023-02-15 23:23:37', '2023-02-15 23:23:37'),
(123, 15, 'Gwen Cummings', 'Tempore aperiam rerum delectus recusandae eum. Numquam sit autem repudiandae ut earum atque. Dolorum dolores nihil cum non. Ut laborum iste ut illo libero doloremque et.', 4, '2023-02-15 23:23:38', '2023-02-15 23:23:38'),
(124, 10, 'Chris Swift II', 'Et aperiam similique voluptas amet vero. Autem aliquid assumenda recusandae laboriosam qui ratione tenetur cupiditate. Quas est labore inventore iusto exercitationem. Fuga quas ipsam rerum est laudantium suscipit omnis.', 1, '2023-02-15 23:23:38', '2023-02-15 23:23:38'),
(125, 42, 'Dandre Gislason', 'Omnis aut et nostrum omnis. Ut fuga id quo deleniti id. Nam consequatur in impedit architecto et ex suscipit.', 5, '2023-02-15 23:23:38', '2023-02-15 23:23:38'),
(126, 28, 'Mrs. Felicita Baumbach', 'Provident ea blanditiis velit et qui. Libero ipsa nam quo et suscipit fuga. Rerum id a voluptatem sed doloremque.', 1, '2023-02-15 23:23:38', '2023-02-15 23:23:38'),
(127, 30, 'Dr. Twila Toy PhD', 'Debitis qui dolorum ut sint. Sed qui sed cupiditate est expedita ut. Ducimus accusamus quisquam optio error.', 0, '2023-02-15 23:23:38', '2023-02-15 23:23:38'),
(128, 44, 'Pascale Connelly', 'Et occaecati quod ut vel qui voluptatem. Non voluptatem sed voluptatem voluptas tempore. Quo nihil facilis consequatur hic sint et possimus. Eos molestiae ab et eos atque hic ex. Sunt quae aut exercitationem occaecati.', 4, '2023-02-15 23:23:38', '2023-02-15 23:23:38'),
(129, 4, 'Dante Pfannerstill', 'Odit harum vero et quae. Sunt odio neque quibusdam aut aut et cumque.', 4, '2023-02-15 23:23:38', '2023-02-15 23:23:38'),
(130, 21, 'Horacio Frami', 'Odio tempora harum molestiae esse aliquid nihil cum dolores. Est et error iusto. Dolores ipsam consequatur sapiente quidem rem sunt voluptates. Et rem tempora velit deleniti ab ut corrupti.', 1, '2023-02-15 23:23:38', '2023-02-15 23:23:38'),
(131, 33, 'Maurice McClure', 'Sapiente voluptate occaecati non eius facere id non. Et officia nostrum cupiditate sunt neque nam. Dolores quos neque fugiat eveniet.', 1, '2023-02-15 23:23:38', '2023-02-15 23:23:38'),
(132, 7, 'Scarlett Kuhic', 'Nobis similique veniam qui beatae. Voluptates rerum fuga sapiente ut. Ut autem animi in repudiandae fugit. Unde assumenda velit optio.', 0, '2023-02-15 23:23:38', '2023-02-15 23:23:38'),
(133, 23, 'Dr. Celia Herman PhD', 'Nemo at natus recusandae ipsa non nihil a. Error eum voluptatem quia dolor voluptates. Sint saepe dolores maiores veniam sit et. Sed maxime sed neque nostrum quia eos.', 4, '2023-02-15 23:23:38', '2023-02-15 23:23:38'),
(134, 17, 'Ayana Ernser II', 'Et et dolorum fugit sint est quos aperiam aut. Velit sint consequatur perspiciatis quo maxime praesentium. Sunt et officia et labore omnis ipsum. Eveniet placeat nisi excepturi non qui et tempora ex.', 4, '2023-02-15 23:23:38', '2023-02-15 23:23:38'),
(135, 41, 'Nickolas Gibson', 'Rem temporibus magnam magni. Qui quae a placeat in. Enim deleniti eos quis maxime et labore.', 1, '2023-02-15 23:23:38', '2023-02-15 23:23:38'),
(136, 30, 'Prof. Tianna Botsford Sr.', 'Sed et consequatur voluptatem doloremque magnam. Velit consequatur sit corrupti consequatur illo tempore aperiam. Maxime et id dolor minus doloremque quaerat excepturi. Voluptatibus sunt rerum ratione enim similique et et distinctio.', 0, '2023-02-15 23:23:38', '2023-02-15 23:23:38'),
(137, 8, 'Elijah Becker Jr.', 'Velit porro quo delectus consequuntur. Recusandae autem ab molestiae rerum omnis. Eaque consectetur eligendi sed voluptatum odio. Distinctio labore veniam commodi quibusdam modi.', 4, '2023-02-15 23:23:38', '2023-02-15 23:23:38'),
(138, 26, 'Baylee Runolfsson', 'Eos eum ad repudiandae temporibus laboriosam reprehenderit. Quasi eos expedita ipsum qui exercitationem. Vero fuga corporis sit vel. Quaerat earum molestias numquam in quia sed harum deserunt. Minima unde sunt dolorem rem non veniam incidunt velit.', 1, '2023-02-15 23:23:38', '2023-02-15 23:23:38'),
(139, 41, 'General Funk', 'Minima magnam facere repellat ipsam et. Velit accusamus expedita voluptas qui iusto nobis sunt. In et nulla et dolore unde aliquid modi. Corporis eos alias repellat est.', 1, '2023-02-15 23:23:38', '2023-02-15 23:23:38'),
(140, 3, 'Prof. Paula Hammes III', 'Adipisci pariatur assumenda debitis velit maiores sequi. Ea accusantium facilis dolor mollitia sapiente sed placeat. Repellat alias maiores labore assumenda aliquid. Voluptatem corporis molestias nam totam facere.', 0, '2023-02-15 23:23:38', '2023-02-15 23:23:38'),
(141, 32, 'Braulio Hauck Sr.', 'Enim eos fuga consequatur aut omnis dolor praesentium. Ut velit saepe assumenda eaque voluptas. Esse repellendus nihil animi doloremque non qui et autem.', 3, '2023-02-15 23:23:38', '2023-02-15 23:23:38'),
(142, 43, 'Gerhard Mraz', 'Tenetur ipsa sit et eius. Facilis vel placeat debitis dolor enim perspiciatis maiores. Fugiat veritatis repellat quam animi dolor esse quia. Quis itaque officia aut pariatur ut.', 3, '2023-02-15 23:23:39', '2023-02-15 23:23:39'),
(143, 24, 'Polly Ankunding', 'Eaque sed libero veritatis quo maiores culpa dolor. Temporibus fuga commodi ut atque quo saepe. Magnam ipsam dolorem debitis fugit ipsum reiciendis. Autem omnis corporis suscipit.', 2, '2023-02-15 23:23:39', '2023-02-15 23:23:39'),
(144, 9, 'Isabell Mertz DVM', 'Magnam fugiat et in. Et non et totam eum iusto sit porro. Molestias est id sed.', 5, '2023-02-15 23:23:39', '2023-02-15 23:23:39'),
(145, 19, 'Leila Kunze', 'Molestias dolore sed iste possimus similique. Autem voluptatum nesciunt esse est optio autem facere porro. Adipisci nihil libero vel odit maxime. Et odit aut nemo nemo rem.', 5, '2023-02-15 23:23:39', '2023-02-15 23:23:39'),
(146, 11, 'Meda Mann', 'Facilis deleniti architecto et incidunt rerum earum explicabo. Ad voluptate rem placeat et. Sed aut maxime sunt et nihil voluptatibus quidem.', 4, '2023-02-15 23:23:39', '2023-02-15 23:23:39'),
(147, 16, 'Kristy Kirlin', 'Odio a velit sit ut similique cumque quisquam. Sit voluptas molestias in aperiam quae eligendi. Doloremque quia error nesciunt omnis. Nisi facilis enim totam nisi sit.', 1, '2023-02-15 23:23:39', '2023-02-15 23:23:39'),
(148, 8, 'Miss Cecilia Conn DDS', 'Odit adipisci pariatur soluta voluptates est. Recusandae inventore sapiente quam sint. Voluptatem a quisquam eaque qui eius sed et. Odit rerum porro unde maiores. Non ea corrupti in labore illo.', 5, '2023-02-15 23:23:39', '2023-02-15 23:23:39'),
(149, 24, 'Miss Margarete Ferry', 'Itaque repudiandae dolore veritatis repudiandae libero consequatur quam. Aspernatur minima et minus atque odio tempora. Reiciendis accusamus voluptatibus pariatur sequi in. Officia quo in officia consequatur.', 2, '2023-02-15 23:23:40', '2023-02-15 23:23:40'),
(150, 31, 'Charley Hammes', 'Voluptate sit quia qui dolorem enim rerum. Illo nihil aut ea architecto animi est.', 5, '2023-02-15 23:23:40', '2023-02-15 23:23:40'),
(151, 41, 'Timmy Crooks Jr.', 'Iure ducimus reprehenderit quam delectus amet quo. Reprehenderit dolores nobis nihil. Amet porro adipisci voluptas exercitationem dolor sed. Laborum enim eum praesentium voluptates consequatur reprehenderit ipsa.', 1, '2023-02-15 23:23:40', '2023-02-15 23:23:40'),
(152, 10, 'Darren Schroeder', 'Consequatur autem dolor dolorum ut et qui consequatur nobis. Eveniet delectus est soluta aut. Molestiae quia similique consectetur adipisci corporis mollitia repellendus temporibus. Voluptatem laudantium cum blanditiis est cupiditate sed dolor quae.', 2, '2023-02-15 23:23:40', '2023-02-15 23:23:40'),
(153, 5, 'Juston Kilback', 'Est doloribus accusamus reprehenderit quasi earum et. Voluptates voluptates occaecati error in quia voluptatum et. Et dicta eaque nobis ab. Dignissimos ullam blanditiis veritatis natus et debitis qui. Inventore impedit reiciendis culpa totam et.', 3, '2023-02-15 23:23:40', '2023-02-15 23:23:40'),
(154, 22, 'Astrid Smith', 'Fugit occaecati est quis temporibus quos commodi. Nesciunt necessitatibus quia esse dolor eos. Aut ea et et explicabo libero. Similique praesentium voluptatem mollitia rerum sint sunt.', 2, '2023-02-15 23:23:40', '2023-02-15 23:23:40'),
(155, 25, 'Isai Gottlieb', 'Atque qui alias laborum repellendus. Cupiditate officiis minus et quo veniam. Eaque repellendus architecto omnis doloremque magnam earum.', 3, '2023-02-15 23:23:41', '2023-02-15 23:23:41'),
(156, 3, 'Prof. Spencer Kiehn II', 'Provident possimus voluptatem eveniet omnis sint. Nisi et cum est.', 4, '2023-02-15 23:23:41', '2023-02-15 23:23:41'),
(157, 3, 'Harold Cartwright', 'Tenetur quo delectus aperiam vel magni aut. Dolores iste quibusdam ut veniam et aut. Alias sed excepturi ut quos.', 2, '2023-02-15 23:23:41', '2023-02-15 23:23:41'),
(158, 23, 'Arely Moore', 'Praesentium magni iste odit. Nisi eius voluptatum commodi nihil aut. Fugiat vel quo rem suscipit rem ipsum. Explicabo quidem molestias eum.', 0, '2023-02-15 23:23:41', '2023-02-15 23:23:41'),
(159, 4, 'Ms. Caitlyn Hessel DDS', 'Sequi qui non aut aut. Est nam aut molestiae reiciendis veniam est. Ipsum vel non quo sit explicabo corporis.', 4, '2023-02-15 23:23:41', '2023-02-15 23:23:41'),
(160, 31, 'Jaren Kulas', 'Quia suscipit quod explicabo corporis. Nesciunt asperiores sapiente alias vero voluptatum sit ad. Incidunt beatae atque voluptatem modi numquam sit soluta.', 0, '2023-02-15 23:23:41', '2023-02-15 23:23:41'),
(161, 1, 'Leif Koelpin II', 'Perspiciatis est voluptate aut et in dolore dolorem illum. Ut natus sit officia aut quasi praesentium. Facere deserunt minima cumque labore ipsum fuga deleniti esse. Voluptatum totam id quia iste.', 3, '2023-02-15 23:23:41', '2023-02-15 23:23:41'),
(162, 36, 'Mrs. Rhea Bosco II', 'Repudiandae impedit ducimus est sint et aperiam nisi. Quas maiores exercitationem temporibus sint sed. Dolor neque ut voluptas deserunt quos omnis fugit. Soluta iure est maxime qui cumque itaque dolor architecto.', 4, '2023-02-15 23:23:41', '2023-02-15 23:23:41'),
(163, 25, 'Hallie Feil', 'Nisi eum a consequatur earum possimus occaecati magni. Pariatur voluptatem modi eum nihil. Similique ratione consequatur cum vitae qui exercitationem at. Autem incidunt pariatur facere.', 4, '2023-02-15 23:23:42', '2023-02-15 23:23:42'),
(164, 30, 'Mr. Tad Emard', 'Doloribus quod voluptates eaque laudantium eum ut deserunt. Omnis non nam cupiditate. Qui ut voluptatem occaecati voluptatum ex.', 4, '2023-02-15 23:23:42', '2023-02-15 23:23:42'),
(165, 32, 'Alexys Auer', 'Dolor ut necessitatibus ut voluptatibus dolore. Mollitia ut architecto aspernatur. Libero aut harum rerum alias.', 0, '2023-02-15 23:23:42', '2023-02-15 23:23:42'),
(166, 44, 'Zola Kertzmann V', 'Sapiente ratione ex aliquid inventore in repellendus deleniti odit. Ut vitae aut temporibus molestiae corrupti cum. Mollitia rerum qui occaecati quibusdam. Similique aut quis et sit aut soluta est.', 1, '2023-02-15 23:23:42', '2023-02-15 23:23:42'),
(167, 47, 'Mr. Jennings Abbott DVM', 'Quos debitis accusantium eos animi enim vitae. Sequi sit ut blanditiis. Et aut consequuntur voluptas recusandae minus voluptatem.', 4, '2023-02-15 23:23:42', '2023-02-15 23:23:42'),
(168, 12, 'Stacey Kiehn', 'Laborum tempore molestiae quis quae voluptatibus sequi sit. A eius nihil vel molestias dolore recusandae velit. Sit in quia atque unde. Provident optio fuga accusamus labore vel rerum aut.', 0, '2023-02-15 23:23:43', '2023-02-15 23:23:43'),
(169, 24, 'Jerry Nader V', 'Id nulla earum voluptatem qui consequatur. Nihil aut adipisci a vero recusandae vero. Sint odio dolorem veritatis nihil qui in. Reiciendis rerum et illo earum ut unde.', 4, '2023-02-15 23:23:43', '2023-02-15 23:23:43'),
(170, 36, 'Graciela Murazik', 'Totam aut libero hic velit sed sunt exercitationem. Facilis rerum porro ipsa autem nam sed necessitatibus. Blanditiis illo atque quasi neque dolorem sequi consequatur qui.', 1, '2023-02-15 23:23:43', '2023-02-15 23:23:43'),
(171, 23, 'Dr. Louvenia Lang IV', 'Vel consequatur porro est voluptatem est vel. Aspernatur dignissimos maiores corporis quam omnis ipsam. Molestiae necessitatibus et esse inventore. Sit maxime modi est reiciendis officiis.', 5, '2023-02-15 23:23:43', '2023-02-15 23:23:43'),
(172, 41, 'Kattie Sauer', 'Autem voluptatem aut explicabo. Doloribus occaecati asperiores nulla est maxime numquam optio.', 5, '2023-02-15 23:23:44', '2023-02-15 23:23:44'),
(173, 21, 'Mrs. Lauryn Kuphal MD', 'Est sint qui error nesciunt. Provident itaque dolor delectus sunt nam fugiat autem. Iure eligendi voluptatem exercitationem porro magnam quasi. Id non error natus qui commodi.', 5, '2023-02-15 23:23:44', '2023-02-15 23:23:44'),
(174, 3, 'Dr. Amina Ryan', 'Officiis fuga dolores eaque deleniti. Saepe eum blanditiis id.', 1, '2023-02-15 23:23:44', '2023-02-15 23:23:44'),
(175, 38, 'Jon Spencer Jr.', 'Neque aut maxime ullam. Quis id est quia. Voluptatem aut consequatur placeat. Hic quidem reiciendis ullam.', 1, '2023-02-15 23:23:44', '2023-02-15 23:23:44'),
(176, 6, 'Prof. Eino Denesik', 'Ipsam accusantium quam quasi laudantium earum molestiae. Dolore adipisci voluptatem eos et autem similique unde. In quasi dolorum ab velit et et.', 1, '2023-02-15 23:23:44', '2023-02-15 23:23:44'),
(177, 25, 'Dr. Nico Wehner II', 'Aut blanditiis ut minima. Mollitia qui sunt quisquam laborum. Quas ullam corporis eos illum. Minima nobis exercitationem repellendus sed et officiis qui.', 5, '2023-02-15 23:23:44', '2023-02-15 23:23:44'),
(178, 20, 'Linnie Fay MD', 'Eaque voluptatem doloremque sapiente saepe. Qui aut qui vel non. Libero ut tenetur nostrum.', 1, '2023-02-15 23:23:44', '2023-02-15 23:23:44'),
(179, 7, 'Ms. Myrtle Schimmel', 'Ut voluptatem asperiores omnis ipsa odio deserunt. Accusantium earum temporibus eaque blanditiis voluptatem dolores. Eveniet qui earum voluptatibus et tempora consectetur. Qui voluptas sint omnis quos ea deleniti dolor.', 4, '2023-02-15 23:23:44', '2023-02-15 23:23:44'),
(180, 48, 'Mr. Johnnie Stark Sr.', 'Voluptatem aliquam consequatur vel. Consequatur laudantium suscipit recusandae id dolores fugiat aut aperiam. Repellat fugit dicta enim nam consectetur est quod. Aspernatur cum sed dolorem mollitia aspernatur.', 0, '2023-02-15 23:23:45', '2023-02-15 23:23:45'),
(181, 31, 'Eladio Fritsch', 'Ea deserunt et vel earum. Quas et iusto porro quia harum accusantium quidem. Sunt odit quibusdam magni voluptas nemo. Animi voluptatibus laudantium consequatur doloribus.', 4, '2023-02-15 23:23:45', '2023-02-15 23:23:45'),
(182, 13, 'Kenyon Windler', 'Enim expedita quibusdam voluptatum ea. Ad iusto at suscipit tenetur doloremque. Ex unde eaque illo quo deleniti.', 2, '2023-02-15 23:23:45', '2023-02-15 23:23:45'),
(183, 25, 'Destinee Spinka MD', 'Nisi laudantium vel dolores nostrum. Voluptas id ex voluptatibus saepe. Maiores mollitia mollitia nam sunt doloribus aut.', 4, '2023-02-15 23:23:45', '2023-02-15 23:23:45'),
(184, 29, 'Gabrielle Klein', 'Laborum repellat ea perspiciatis aliquam quia fugiat aut. Voluptatem voluptatum ullam nisi voluptatem. Molestiae nemo accusantium accusamus aut minima dolores omnis. Suscipit libero cupiditate illum pariatur repudiandae sunt.', 1, '2023-02-15 23:23:45', '2023-02-15 23:23:45'),
(185, 20, 'Ruth Rath', 'Amet voluptates maiores fuga eos. Eveniet eos et consectetur maxime. A voluptas omnis consequatur quos.', 4, '2023-02-15 23:23:45', '2023-02-15 23:23:45'),
(186, 22, 'Dr. Ethyl Emard DVM', 'A magni quod laboriosam hic. Fugit dicta error est non animi omnis quod. Sunt dolorum fugit excepturi cumque minus et consequatur. Fugit corporis quis consequuntur inventore necessitatibus quae ut. Repudiandae ut nihil ut consequuntur sed cumque nemo.', 5, '2023-02-15 23:23:46', '2023-02-15 23:23:46'),
(187, 42, 'Alexandra Hilpert', 'Fuga fuga maiores qui quis nihil cupiditate. Odit laudantium inventore quo est impedit ut. Reprehenderit qui numquam maxime. Et voluptatibus doloremque illum facilis rem odio esse.', 4, '2023-02-15 23:23:46', '2023-02-15 23:23:46'),
(188, 48, 'Marcel Schiller', 'Et qui neque eum impedit officiis sequi. Iste itaque iusto fugit vel aut cum voluptatem. Officiis eum nobis libero illum quia. Et ut aut quia voluptatem sit.', 5, '2023-02-15 23:23:46', '2023-02-15 23:23:46'),
(189, 34, 'Vince Wolff I', 'Repellat voluptatem vel id nisi. Ut nostrum aspernatur ut ad laudantium non quibusdam. Et quos et reprehenderit nesciunt aliquam eligendi facere.', 3, '2023-02-15 23:23:46', '2023-02-15 23:23:46'),
(190, 7, 'Miss Harmony Wintheiser PhD', 'At pariatur exercitationem sed est. Quia aperiam explicabo aut reprehenderit harum. Ipsum tempora aut laborum illo veritatis. Sunt id qui et qui eveniet fugit aliquam.', 3, '2023-02-15 23:23:46', '2023-02-15 23:23:46'),
(191, 19, 'Westley Murazik', 'Consequatur eum veritatis aut nostrum est maxime optio facilis. Culpa ut vero pariatur enim in veniam libero. Nisi perferendis velit est sapiente. Est animi excepturi non molestiae eum id recusandae.', 1, '2023-02-15 23:23:46', '2023-02-15 23:23:46'),
(192, 23, 'Ms. Kathryn Koss', 'Et eveniet ut unde ratione vel. Officiis enim id deserunt.', 3, '2023-02-15 23:23:46', '2023-02-15 23:23:46'),
(193, 17, 'Sammy Ryan I', 'Qui laboriosam sequi impedit ut voluptas. Quia ea minus cum necessitatibus dolores unde. Necessitatibus itaque dolores ut qui et. Adipisci dolorum eum aut quis molestiae recusandae consequatur.', 4, '2023-02-15 23:23:46', '2023-02-15 23:23:46'),
(194, 37, 'Bryana Marquardt', 'Rem quos illo enim quod quas eum. Facilis esse culpa perferendis sunt amet. Ex sint in harum magnam dolores eaque.', 4, '2023-02-15 23:23:46', '2023-02-15 23:23:46'),
(195, 30, 'Ms. Vivienne Ruecker', 'Saepe perferendis perferendis explicabo ea dolores sed velit. Qui laborum dicta numquam autem quia dolores architecto ut. Quod delectus quibusdam saepe ullam. Ullam veritatis qui libero ipsa blanditiis.', 0, '2023-02-15 23:23:47', '2023-02-15 23:23:47'),
(196, 14, 'Petra Treutel', 'Nihil officiis consequatur est rerum cupiditate. Cumque voluptatibus blanditiis atque. Eos sint reiciendis soluta distinctio sit aut ducimus similique.', 0, '2023-02-15 23:23:47', '2023-02-15 23:23:47'),
(197, 24, 'Dr. Cristopher Gutkowski', 'Reprehenderit aut doloremque sunt reprehenderit porro sit quas. Porro assumenda corporis occaecati dolorem nihil labore error. Harum velit tempore et aliquam cum.', 3, '2023-02-15 23:23:47', '2023-02-15 23:23:47'),
(198, 48, 'Dr. Eudora Kshlerin Sr.', 'Voluptatem vitae doloremque eum nam ex ratione. Eaque omnis consequatur magni. Qui doloribus vitae quo eius. Eum saepe in excepturi non tenetur numquam id.', 0, '2023-02-15 23:23:47', '2023-02-15 23:23:47'),
(199, 13, 'Scot Rolfson', 'Sit necessitatibus cum natus error illo voluptas pariatur. Est cum dolorem quae incidunt reprehenderit. Ex qui est enim ab. Reiciendis a quibusdam nobis illum.', 2, '2023-02-15 23:23:47', '2023-02-15 23:23:47'),
(200, 27, 'Jasmin Nitzsche', 'Reiciendis voluptate fuga magnam at. Voluptatibus qui reiciendis nemo voluptates voluptas et quae a. Qui et corporis quisquam est et laborum ipsam. Sint incidunt magnam qui quis aut laborum quam.', 5, '2023-02-15 23:23:47', '2023-02-15 23:23:47'),
(201, 3, 'Cyril Pollich', 'Eius nihil error optio vitae repellat. Aliquid quia ut error et aut pariatur aut accusamus. Quibusdam voluptatem quisquam ducimus deserunt. Amet numquam assumenda est veniam.', 4, '2023-02-15 23:23:48', '2023-02-15 23:23:48'),
(202, 32, 'Marlene Mayer Sr.', 'Aliquam ut harum occaecati voluptatem. Rerum nemo qui sit ut vel.', 5, '2023-02-15 23:23:48', '2023-02-15 23:23:48'),
(203, 22, 'Darrell Kihn', 'Illum rerum consequatur ea impedit temporibus enim. Ut cumque soluta blanditiis laboriosam officia. Qui ea commodi laboriosam.', 2, '2023-02-15 23:23:48', '2023-02-15 23:23:48'),
(204, 46, 'Prof. Bailee Grady V', 'Quam culpa et vel assumenda. Eius maiores dolor est maiores omnis. Non qui culpa asperiores aliquid tenetur.', 3, '2023-02-15 23:23:48', '2023-02-15 23:23:48'),
(205, 26, 'Dr. Moriah Blick DDS', 'Aut quia qui consectetur iure. Quis et rerum magni totam. Id cum doloribus officia eveniet.', 5, '2023-02-15 23:23:48', '2023-02-15 23:23:48'),
(206, 42, 'Donny Nolan', 'Illo architecto non voluptatem voluptas rerum et. Facere illum molestias et maxime provident dolor quisquam. Rerum soluta ab quia maxime facere officia sed. Exercitationem ullam dicta reprehenderit.', 5, '2023-02-15 23:23:48', '2023-02-15 23:23:48'),
(207, 11, 'Prof. Jamir Hermiston', 'Voluptatem voluptatem ratione reiciendis consequatur ea. Enim dolores voluptatum qui.', 4, '2023-02-15 23:23:48', '2023-02-15 23:23:48'),
(208, 46, 'Diego Carter', 'Magni sed consequatur ipsum occaecati nobis ipsa tenetur. Voluptates nostrum id nobis ad explicabo hic rerum. Sit aperiam est voluptatum quaerat earum.', 5, '2023-02-15 23:23:49', '2023-02-15 23:23:49'),
(209, 10, 'Garland Howe', 'Minima architecto assumenda totam. Necessitatibus et in quis et impedit mollitia. Sit ut praesentium culpa. Vero nulla ea reprehenderit aut sint sunt.', 2, '2023-02-15 23:23:49', '2023-02-15 23:23:49'),
(210, 24, 'Xander Kub', 'At molestiae ducimus a quidem est aut. Eaque et mollitia veniam nihil. Explicabo excepturi optio at repudiandae dolorem qui. Ipsa qui veritatis ad veniam quas.', 0, '2023-02-15 23:23:49', '2023-02-15 23:23:49'),
(211, 27, 'Maybelle Christiansen', 'Sapiente rerum qui ducimus vitae laboriosam. Quod aliquam id fugiat quae ea quasi officiis. Qui est ut sed velit facere id. Eos aspernatur voluptates magnam et quae aut.', 1, '2023-02-15 23:23:49', '2023-02-15 23:23:49'),
(212, 36, 'Prof. Tomas Stehr', 'Unde qui aut adipisci et earum. Neque iste totam et adipisci similique. Sed sequi molestias similique saepe animi eaque praesentium. Dolorem non eius rerum qui ea architecto sunt.', 4, '2023-02-15 23:23:49', '2023-02-15 23:23:49'),
(213, 15, 'Mr. Waylon Ward II', 'Voluptatibus nihil quo excepturi explicabo inventore rerum quas. Rem praesentium nesciunt in. Quo sed cum iure esse.', 2, '2023-02-15 23:23:49', '2023-02-15 23:23:49');
INSERT INTO `reviews` (`id`, `product_id`, `customer_name`, `review_product`, `star`, `created_at`, `updated_at`) VALUES
(214, 24, 'Cullen Kessler', 'Similique doloremque consequatur voluptatibus et nisi. Sunt odio fuga rerum ut aut. Dolores natus dolor eos inventore.', 0, '2023-02-15 23:23:49', '2023-02-15 23:23:49'),
(215, 43, 'Magdalena Langworth', 'Eos non aut ex numquam. Alias ab autem tenetur et ea voluptatem. Ipsam et veniam perferendis quis dolor voluptas vitae.', 5, '2023-02-15 23:23:50', '2023-02-15 23:23:50'),
(216, 47, 'Mr. Charlie Corwin', 'Quia numquam ea dolor fugiat. Possimus cumque et aspernatur sint et perspiciatis possimus. Architecto sed voluptatem distinctio totam mollitia sapiente sunt.', 2, '2023-02-15 23:23:50', '2023-02-15 23:23:50'),
(217, 40, 'Mr. Granville Turner', 'Ut ut deserunt et consequatur dicta ut. Distinctio rerum quis enim eum pariatur. Fuga aut ut facere sed.', 5, '2023-02-15 23:23:50', '2023-02-15 23:23:50'),
(218, 43, 'Alford Bahringer', 'Ea veniam porro architecto sed quia. Veniam dolores sunt quia eos. Molestiae et dolores dolores sunt. Excepturi consequuntur quae qui.', 2, '2023-02-15 23:23:50', '2023-02-15 23:23:50'),
(219, 28, 'Jessika Frami', 'Rem fugiat sapiente in et. Ipsum quod tenetur quasi vero temporibus iusto suscipit. Exercitationem odio aut quasi sunt facere eaque.', 2, '2023-02-15 23:23:50', '2023-02-15 23:23:50'),
(220, 38, 'Valentine Beatty', 'Quisquam non ducimus ut qui velit pariatur voluptas. Itaque corrupti molestias cum vel facere illum provident. Et consequatur temporibus ut sunt impedit consequuntur doloribus. Molestiae voluptatem laborum sed deserunt aliquam rem aperiam.', 5, '2023-02-15 23:23:50', '2023-02-15 23:23:50'),
(221, 1, 'Santa Gutkowski', 'Velit voluptates nemo eum beatae impedit. Est sint culpa voluptas soluta. Iure minus et dolores soluta. Amet impedit non ab molestias consequatur.', 1, '2023-02-15 23:23:50', '2023-02-15 23:23:50'),
(222, 7, 'Jovani Bins', 'Ad a magni perspiciatis laboriosam enim et cumque cupiditate. Quia labore recusandae eum eveniet explicabo. Ut voluptatem saepe aut distinctio cumque. Aspernatur minima atque ut officia aliquam.', 3, '2023-02-15 23:23:50', '2023-02-15 23:23:50'),
(223, 42, 'Jerod Effertz', 'Sit corporis ut illo ut. Quo aut laborum laudantium laborum cumque ex deserunt autem. Dolores aspernatur harum hic dolorem.', 3, '2023-02-15 23:23:50', '2023-02-15 23:23:50'),
(224, 20, 'Deshawn Effertz', 'Eum nobis error assumenda ratione sed perspiciatis quidem. Ut qui non non libero vel neque autem. Quae amet quia ab nesciunt. Sed dolores eum voluptatum voluptates eligendi qui.', 4, '2023-02-15 23:23:50', '2023-02-15 23:23:50'),
(225, 9, 'Cheyenne Lakin', 'Quos modi voluptas perspiciatis enim omnis et. A expedita voluptatem dolor delectus. Enim nesciunt rem voluptatibus reprehenderit minima quae qui ratione. Veniam voluptatem vel voluptatem rerum dolores quisquam quia.', 2, '2023-02-15 23:23:50', '2023-02-15 23:23:50'),
(226, 1, 'Carissa Kemmer', 'Et ut et dolorem dolor incidunt. Aperiam repellat aut vitae accusamus quae aut magnam.', 2, '2023-02-15 23:23:50', '2023-02-15 23:23:50'),
(227, 29, 'Melyssa Weissnat', 'Libero velit quasi ut nam sint sed quas. Aut tempora eum quia sit modi. Cum autem sint est.', 4, '2023-02-15 23:23:50', '2023-02-15 23:23:50'),
(228, 21, 'Allison Bogan', 'Fuga voluptatum et libero distinctio nobis sequi enim. Dolore nulla quia magni aut maxime. Cumque ut nulla repudiandae nam fugit voluptatum. Similique doloribus doloribus hic. Sed molestias unde dolor amet aspernatur praesentium est.', 1, '2023-02-15 23:23:50', '2023-02-15 23:23:50'),
(229, 45, 'Lulu Skiles', 'Eius fugiat illum a quo. Odio dolore consequatur quia provident consectetur dolor. Atque facilis laboriosam saepe et. Necessitatibus rem occaecati deserunt dolore dignissimos pariatur.', 2, '2023-02-15 23:23:50', '2023-02-15 23:23:50'),
(230, 6, 'Moriah Bernier', 'Sit eos sit vel et. Officiis dolorem aut eos pariatur dolorem velit deleniti aut. Eos asperiores in unde eligendi. Soluta perspiciatis nihil est quisquam dolor.', 0, '2023-02-15 23:23:51', '2023-02-15 23:23:51'),
(231, 45, 'Ms. Katharina Schmeler', 'Eligendi deserunt aut ut nemo voluptatem. Quos voluptatem velit repellendus nisi ut. Nostrum dolorem deserunt nihil vel quam. Pariatur autem consectetur incidunt ut non.', 2, '2023-02-15 23:23:51', '2023-02-15 23:23:51'),
(232, 21, 'Stephen Stracke', 'Maxime illum officiis ex possimus quis magnam. Et aut distinctio ex iste soluta ipsum alias aliquam. Debitis optio voluptatum et quia.', 1, '2023-02-15 23:23:51', '2023-02-15 23:23:51'),
(233, 6, 'Dr. Oren Wiegand', 'Aliquid velit iusto porro officiis ea. Quas veritatis perferendis quas eaque vitae iure. Officia est alias voluptatibus dolores.', 1, '2023-02-15 23:23:51', '2023-02-15 23:23:51'),
(234, 38, 'Darrell Ankunding', 'Ipsa vel molestiae maxime dolorem voluptatibus fugit. Facilis atque possimus magni consequuntur optio. Ab laudantium error nisi earum id molestiae dicta vero.', 5, '2023-02-15 23:23:51', '2023-02-15 23:23:51'),
(235, 18, 'Mariane Harber', 'Aspernatur qui porro est. Voluptatem sit vel nisi dolorem enim. Veritatis sapiente ex nesciunt atque ut fugit. At libero tempore quia id tenetur sequi.', 5, '2023-02-15 23:23:51', '2023-02-15 23:23:51'),
(236, 31, 'Oceane Schaefer', 'Doloribus maxime dolor accusamus nisi tempore. Et dolor voluptas et culpa nulla maiores quaerat. Sit et eius qui quibusdam odit. Aut sed beatae explicabo voluptatem quia facilis.', 4, '2023-02-15 23:23:51', '2023-02-15 23:23:51'),
(237, 32, 'Prof. Toby Barrows DVM', 'Aut nam et commodi id. Animi cum iusto totam dolor repellat inventore.', 3, '2023-02-15 23:23:51', '2023-02-15 23:23:51'),
(238, 29, 'Kelton Gutkowski', 'Sunt molestiae iste dolor eligendi expedita pariatur. Facilis temporibus praesentium quaerat quos eveniet ut. Ipsa modi occaecati enim ipsam odit. Nam ex voluptatem magnam est omnis nihil quo.', 5, '2023-02-15 23:23:51', '2023-02-15 23:23:51'),
(239, 30, 'Prof. Lazaro Quigley I', 'Repellendus eius nihil natus enim dicta nihil accusamus exercitationem. Autem occaecati ut est nisi. Eaque eligendi error repellat sint nihil eligendi consectetur vitae. Eligendi hic quia blanditiis nemo quis dolor dignissimos. Et quia repellendus quo consequatur nihil nisi eligendi.', 0, '2023-02-15 23:23:51', '2023-02-15 23:23:51'),
(240, 9, 'Dovie Renner', 'Et quae beatae aperiam aliquid. Voluptatum labore eos qui atque. Iste cupiditate hic consequatur.', 5, '2023-02-15 23:23:51', '2023-02-15 23:23:51'),
(241, 5, 'Dr. Kyle Rice', 'Maiores maiores repudiandae eum tenetur at sunt et. Ipsum animi fuga cum qui non a autem. Quos consequatur consectetur similique officia adipisci similique eaque eum. Beatae sit voluptatem quasi et ipsam.', 4, '2023-02-15 23:23:51', '2023-02-15 23:23:51'),
(242, 10, 'Aliza Smitham', 'Pariatur expedita sed totam. Nulla nihil ea veritatis deleniti. Sit saepe ut non praesentium et maiores cum. Ab ut quisquam rem eius vitae nisi numquam.', 4, '2023-02-15 23:23:51', '2023-02-15 23:23:51'),
(243, 24, 'Prof. Clara Bauch', 'Et facere non et alias dolor. Aut rem quia quo minima est voluptatum debitis neque. Quod nihil omnis modi sapiente non natus corrupti.', 5, '2023-02-15 23:23:51', '2023-02-15 23:23:51'),
(244, 16, 'Miss Verona Fahey I', 'Porro consectetur labore iste qui eveniet fugiat. Et tenetur qui dolor qui est.', 5, '2023-02-15 23:23:51', '2023-02-15 23:23:51'),
(245, 32, 'Audie Morar', 'Excepturi enim officia sunt sit iste aut. Eligendi aut dolorem magni aut ipsa molestias voluptatem. Neque facilis voluptatibus vel ut cum sed quia. Praesentium a sint perferendis ea quibusdam.', 3, '2023-02-15 23:23:51', '2023-02-15 23:23:51'),
(246, 41, 'Vivienne Swift', 'A est dolor distinctio perferendis molestiae eum. Deleniti quibusdam et eveniet possimus sit. Occaecati ipsum quis veniam facere odit deleniti nesciunt.', 3, '2023-02-15 23:23:51', '2023-02-15 23:23:51'),
(247, 36, 'Gwen Cremin', 'Qui et quae aliquid quis odio id iusto rerum. Harum qui quo perferendis est sunt accusantium rerum recusandae. Quia aut reprehenderit cupiditate. Quaerat cum occaecati nemo voluptatum fugiat reprehenderit.', 0, '2023-02-15 23:23:51', '2023-02-15 23:23:51'),
(248, 34, 'Christopher Baumbach', 'Qui neque aspernatur repellendus quae. Accusantium autem est unde id. Officia vel est consequatur nisi nam dolore eaque.', 5, '2023-02-15 23:23:52', '2023-02-15 23:23:52'),
(249, 21, 'Kole Hamill V', 'Dignissimos consequatur soluta nam. Ratione est assumenda nihil aut voluptatem optio ad omnis. Cum modi nobis non non. Vel ea non quia nihil.', 4, '2023-02-15 23:23:52', '2023-02-15 23:23:52'),
(250, 49, 'Paolo Labadie', 'Quas tempora amet ut adipisci id quasi deleniti. Quos temporibus sed tempore ipsum. Dolore dicta dolor hic dolores et quis voluptas praesentium.', 0, '2023-02-15 23:23:52', '2023-02-15 23:23:52'),
(251, 23, 'Leatha Rowe DDS', 'Qui quia nihil ab possimus et autem. Iste doloremque culpa qui inventore ut voluptatum deleniti autem. Ea ea est qui consectetur et rerum consequuntur.', 5, '2023-02-15 23:23:52', '2023-02-15 23:23:52'),
(252, 50, 'Keshawn Grant III', 'Nobis recusandae vel ipsum sit. Maxime voluptatum expedita eum.', 3, '2023-02-15 23:23:53', '2023-02-15 23:23:53'),
(253, 39, 'Green Stehr', 'Qui dignissimos quas et laborum iure dolorem. Ut modi hic soluta blanditiis ipsa. Dolorem eum recusandae non a cumque doloribus veritatis. Porro magnam molestiae soluta expedita voluptatem doloremque.', 5, '2023-02-15 23:23:53', '2023-02-15 23:23:53'),
(254, 15, 'Rebecca Breitenberg', 'Provident est omnis enim beatae quam quia quis. Cupiditate dolor aliquam a quia in. Ad expedita pariatur doloremque aut ab omnis.', 1, '2023-02-15 23:23:53', '2023-02-15 23:23:53'),
(255, 38, 'Prof. Korey Schmidt', 'Quo sed nostrum ipsum cupiditate consectetur quas. Aliquam laboriosam repudiandae explicabo non dolores. Nemo dolorum labore assumenda quasi.', 0, '2023-02-15 23:23:54', '2023-02-15 23:23:54'),
(256, 3, 'Myrtle Schroeder III', 'Hic id reprehenderit sunt illo. Beatae velit animi sunt iure et rem velit. Odio ab omnis distinctio ut in amet minus aut. Maiores dolorem fugit laboriosam est.', 0, '2023-02-15 23:23:54', '2023-02-15 23:23:54'),
(257, 31, 'Kacey Kuhlman', 'Impedit et cumque voluptatem ratione adipisci ad eos. Provident inventore magnam sint magnam aut error saepe necessitatibus. Cupiditate et optio magnam eum. Pariatur non sed non et architecto harum sunt.', 0, '2023-02-15 23:23:54', '2023-02-15 23:23:54'),
(258, 21, 'Isai Adams', 'Rerum fugit mollitia quia voluptas quod. In sit sit nostrum maiores dolore officia.', 0, '2023-02-15 23:23:54', '2023-02-15 23:23:54'),
(259, 8, 'Prof. Hettie Collins DDS', 'Laudantium aperiam ab dicta quia fuga quas. Omnis labore aut aspernatur. Optio doloremque incidunt quisquam eius eius facilis eius. Reprehenderit reiciendis et quia est magnam id.', 0, '2023-02-15 23:23:54', '2023-02-15 23:23:54'),
(260, 6, 'Virginia Fritsch', 'Officia reprehenderit magni sapiente corrupti placeat nobis nisi. Sit molestiae voluptatibus iure vel. Est explicabo sed culpa voluptate. Error quam quisquam distinctio itaque nihil rem beatae.', 0, '2023-02-15 23:23:54', '2023-02-15 23:23:54'),
(261, 34, 'Dayna Hickle Jr.', 'Architecto nobis magnam suscipit mollitia dolorem dicta rem. Et ea laboriosam laborum consectetur voluptatem sequi. Modi cumque sequi optio explicabo. Accusantium voluptatem exercitationem incidunt voluptatibus hic architecto.', 5, '2023-02-15 23:23:54', '2023-02-15 23:23:54'),
(262, 32, 'Terrill Rogahn', 'Consectetur voluptates perferendis alias et. Est sint enim ut dolores. Nihil dicta voluptas est quam praesentium numquam. Occaecati optio ullam reprehenderit blanditiis assumenda debitis rerum.', 5, '2023-02-15 23:23:54', '2023-02-15 23:23:54'),
(263, 38, 'Prof. Arthur Gulgowski III', 'Repellat est earum ducimus rem cumque nesciunt. Dolor veritatis doloremque culpa iusto vel ut. Et quaerat eveniet dolorem dolor. Consequatur atque tempora dolorem nihil voluptatem reprehenderit.', 0, '2023-02-15 23:23:54', '2023-02-15 23:23:54'),
(264, 7, 'Everett Dach', 'Beatae est sint qui sed illo laboriosam cupiditate. Molestiae est et labore. Dolorem voluptatem accusantium deleniti reiciendis voluptatem autem.', 0, '2023-02-15 23:23:54', '2023-02-15 23:23:54'),
(265, 9, 'Deion Murray', 'Omnis veniam sed neque amet unde. Et quod maiores ipsam officiis nesciunt magni. Accusamus unde culpa deleniti rem. Enim dolores itaque ut unde pariatur natus consequuntur.', 2, '2023-02-15 23:23:54', '2023-02-15 23:23:54'),
(266, 29, 'Nona Jones', 'Eos quidem asperiores nostrum perspiciatis. Earum ut in repudiandae unde. Provident sunt et aut at aut et quia.', 2, '2023-02-15 23:23:54', '2023-02-15 23:23:54'),
(267, 27, 'Hassan Okuneva', 'Consectetur nulla vel consectetur sint distinctio aut non sequi. Temporibus sunt quasi vero distinctio explicabo. Modi quibusdam reiciendis ut libero dolorem eos. Pariatur perspiciatis consequatur aliquid quo qui delectus.', 5, '2023-02-15 23:23:54', '2023-02-15 23:23:54'),
(268, 28, 'Dr. Osborne Bayer DDS', 'Odio enim excepturi voluptatibus impedit ad recusandae. Sint molestiae voluptas dolor quaerat voluptas tempora dicta.', 0, '2023-02-15 23:23:54', '2023-02-15 23:23:54'),
(269, 17, 'Dana Runolfsdottir', 'Necessitatibus harum cumque veniam. Porro quasi velit qui blanditiis vero quis. Eos sit totam non ipsum et illo eveniet modi.', 0, '2023-02-15 23:23:54', '2023-02-15 23:23:54'),
(270, 1, 'Miss Roselyn Cassin', 'Saepe quasi sunt illum error. Aspernatur culpa fuga facilis vel et. Sed molestiae et animi id et aut id in. Quia praesentium et aut corrupti et aut.', 0, '2023-02-15 23:23:54', '2023-02-15 23:23:54'),
(271, 31, 'Barton Bins DVM', 'Ipsam ut cumque modi provident. Nihil nobis reiciendis non officiis ex. Vero porro optio provident omnis exercitationem.', 1, '2023-02-15 23:23:54', '2023-02-15 23:23:54'),
(272, 42, 'Prof. Kathryne Champlin V', 'Cum laboriosam deleniti dicta et culpa sunt dolores. Modi fuga voluptatem porro doloremque. Modi animi voluptates quaerat placeat et officiis.', 0, '2023-02-15 23:23:55', '2023-02-15 23:23:55'),
(273, 38, 'Mr. Mohammed Gulgowski', 'Repellat corporis quo iure aliquid ipsa. Facilis reiciendis corrupti sapiente et at consequuntur exercitationem. Est et distinctio voluptatem ad eaque. Consequuntur quod nemo eius totam repellat nisi perferendis quam.', 5, '2023-02-15 23:23:55', '2023-02-15 23:23:55'),
(274, 34, 'Emely Parisian', 'Tenetur dolorem neque animi perferendis earum omnis quis. Voluptas rerum dolorum consequatur id animi dolor.', 3, '2023-02-15 23:23:55', '2023-02-15 23:23:55'),
(275, 39, 'Johan Rice', 'Id ut culpa eius aspernatur est nulla. Eum iure aut laboriosam. Officia aut ut excepturi.', 2, '2023-02-15 23:23:55', '2023-02-15 23:23:55'),
(276, 46, 'Dr. Felix Nicolas', 'Provident et a earum. Delectus quisquam in maiores soluta voluptates. Velit minima eum impedit amet dolores. Tempore rerum aut quod aut.', 5, '2023-02-15 23:23:55', '2023-02-15 23:23:55'),
(277, 46, 'Ms. Selina Lind PhD', 'Est fugiat iusto suscipit. A rerum quia mollitia magni quo. Rerum facilis aperiam unde numquam beatae accusamus officiis.', 1, '2023-02-15 23:23:55', '2023-02-15 23:23:55'),
(278, 27, 'Caleigh Reichert', 'Est enim est quia nam harum consequatur. Odio ad enim fugit fugit aspernatur illum.', 1, '2023-02-15 23:23:55', '2023-02-15 23:23:55'),
(279, 11, 'Alek Kiehn', 'Similique excepturi distinctio deserunt expedita qui. Qui consequuntur ut minus vel asperiores. Ea qui odio est aperiam repellat tempore. Exercitationem sed perspiciatis ipsam veniam laborum quos.', 1, '2023-02-15 23:23:55', '2023-02-15 23:23:55'),
(280, 18, 'Mr. Manley Ritchie V', 'Commodi qui minima ducimus excepturi et. Laboriosam recusandae iure modi sed eveniet. Pariatur quas qui aut qui alias deleniti non. Quis rerum aliquid in commodi cupiditate ex doloribus. Voluptatem facere rerum officiis iste non totam mollitia.', 2, '2023-02-15 23:23:55', '2023-02-15 23:23:55'),
(281, 26, 'Darian Grady', 'Earum molestias modi nam debitis. Et fugiat fuga unde sit laboriosam enim. Id rerum est tenetur qui illo vel nam.', 1, '2023-02-15 23:23:55', '2023-02-15 23:23:55'),
(282, 23, 'Vickie Huel', 'Qui fugit aut quos quaerat. Excepturi ut et repudiandae velit voluptates. Omnis sed expedita delectus culpa facilis ullam. Et distinctio voluptatum voluptatem ut sunt.', 1, '2023-02-15 23:23:55', '2023-02-15 23:23:55'),
(283, 18, 'Laury O\'Keefe', 'Iusto facere est facere reiciendis dolore vero. Blanditiis sequi nobis consequatur ipsum est. Aut cumque qui et aut.', 2, '2023-02-15 23:23:56', '2023-02-15 23:23:56'),
(284, 36, 'Mr. Ryann Cormier', 'Quae velit quod adipisci consequuntur deserunt qui. Aut aliquam iusto fugit voluptatem non alias eaque. Culpa distinctio laudantium velit autem nulla. Nisi qui voluptatem ut rerum.', 3, '2023-02-15 23:23:56', '2023-02-15 23:23:56'),
(285, 2, 'Dean Nader', 'Error qui harum nemo vitae culpa. Et natus porro consequuntur quo aut. Vero voluptatem et harum ad eum magnam accusantium. Eum quae iusto consequatur voluptas.', 1, '2023-02-15 23:23:56', '2023-02-15 23:23:56'),
(286, 31, 'Gunner Reynolds', 'Sint sunt cupiditate sunt dolorem. Modi provident id velit ut eius amet. Odit omnis hic est recusandae. Aut possimus praesentium adipisci dolor quisquam sit nam.', 5, '2023-02-15 23:23:56', '2023-02-15 23:23:56'),
(287, 47, 'Jensen Rosenbaum', 'Sunt esse doloremque voluptatum blanditiis et. Quam laboriosam quod tempora consequatur perspiciatis porro. Adipisci ea occaecati possimus aut illo deserunt in.', 3, '2023-02-15 23:23:56', '2023-02-15 23:23:56'),
(288, 39, 'Celestine Keeling', 'Sunt qui deleniti molestiae mollitia rerum repudiandae. Aut ut saepe et et quia ut ex. Quia porro voluptates odio quam et unde ad consequatur. Qui suscipit minima unde ratione ex consectetur.', 2, '2023-02-15 23:23:56', '2023-02-15 23:23:56'),
(289, 48, 'Pamela Dicki', 'Atque id totam provident dolorem porro. Eos voluptas sit et tempore ut sed. Nihil quia aut id qui accusamus quia et.', 0, '2023-02-15 23:23:56', '2023-02-15 23:23:56'),
(290, 20, 'Winfield Erdman', 'Animi officia consequatur rerum aut accusantium voluptatem. Facere officiis nihil provident nobis officia quia. Quidem aut nihil ab totam aut ut doloribus. A et dolor impedit fugiat.', 4, '2023-02-15 23:23:56', '2023-02-15 23:23:56'),
(291, 27, 'Jason Anderson', 'Ut repellendus rerum et voluptatum debitis. Et soluta voluptatem est quis aspernatur voluptatem. Ad assumenda natus officiis sint.', 3, '2023-02-15 23:23:56', '2023-02-15 23:23:56'),
(292, 32, 'Rosemary Walter I', 'Saepe repudiandae quibusdam hic tenetur libero quia. Non molestias molestiae modi consequatur reprehenderit dolor. Recusandae ipsa omnis non.', 0, '2023-02-15 23:23:56', '2023-02-15 23:23:56'),
(293, 43, 'Mayra Hodkiewicz V', 'Vel quam rerum est voluptatem quo quaerat. Possimus est quaerat id. Corrupti beatae provident omnis eligendi. Consequatur voluptates esse rerum in voluptas.', 3, '2023-02-15 23:23:57', '2023-02-15 23:23:57'),
(294, 7, 'Elenor Bechtelar V', 'Ratione cupiditate voluptate a recusandae labore sequi sed. Dolorem accusamus veritatis et blanditiis vero ad. Expedita mollitia quibusdam numquam necessitatibus. Consequatur quas voluptatum neque officiis commodi.', 1, '2023-02-15 23:23:57', '2023-02-15 23:23:57'),
(295, 34, 'Miss Ally Jacobs V', 'Accusamus qui est cumque eos cupiditate. Aspernatur amet rerum impedit quam voluptas omnis blanditiis. Rerum labore pariatur natus doloremque quis. Et recusandae dolores incidunt sint quis fuga.', 2, '2023-02-15 23:23:57', '2023-02-15 23:23:57'),
(296, 11, 'Dr. Chelsie Lind PhD', 'Vel et assumenda sapiente voluptatibus. Sunt in qui quibusdam illo. Accusamus et qui quod voluptatibus praesentium.', 5, '2023-02-15 23:23:57', '2023-02-15 23:23:57'),
(297, 45, 'Ursula Kuhn', 'Illo nostrum aut quia exercitationem voluptas. Id modi optio sit sed qui. Non dolorum sit molestias qui fugit. Pariatur dignissimos consectetur voluptatem nihil porro earum.', 2, '2023-02-15 23:23:57', '2023-02-15 23:23:57'),
(298, 12, 'Leonel Carter', 'Maiores error dolorem quo atque blanditiis autem. Ut dolorem accusantium qui aliquam sapiente. Voluptas qui qui accusamus assumenda facilis odit.', 1, '2023-02-15 23:23:57', '2023-02-15 23:23:57'),
(299, 45, 'Una Raynor', 'Quibusdam eveniet eum consequuntur quae esse qui. Ea sit nulla totam tempora vitae amet qui. Exercitationem enim ut perferendis voluptas.', 4, '2023-02-15 23:23:57', '2023-02-15 23:23:57'),
(300, 18, 'Mrs. Laney Prohaska', 'Laborum sint corrupti quo expedita impedit. Laboriosam commodi et reiciendis et sit nihil quia. Necessitatibus aperiam repellendus molestiae laboriosam quo perspiciatis quibusdam.', 3, '2023-02-15 23:23:57', '2023-02-15 23:23:57'),
(301, 38, 'Kawsar Khan', 'This is the best product', 4, '2023-02-16 01:38:24', '2023-02-16 01:38:24');

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
(1, 'Prof. Sven McKenzie', 'myra.thompson@example.com', '2023-02-15 23:23:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0lqWTTf1jv', '2023-02-15 23:23:25', '2023-02-15 23:23:25'),
(2, 'Ms. Carlotta Lemke', 'marquardt.amos@example.net', '2023-02-15 23:23:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'isMX2FXUUV', '2023-02-15 23:23:25', '2023-02-15 23:23:25'),
(3, 'Prof. Dawson Hyatt Sr.', 'jprice@example.org', '2023-02-15 23:23:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2ucgwkOAdm', '2023-02-15 23:23:25', '2023-02-15 23:23:25'),
(4, 'Miss Jennifer Cormier', 'christopher06@example.com', '2023-02-15 23:23:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mRhu3YgOyQ', '2023-02-15 23:23:25', '2023-02-15 23:23:25'),
(5, 'Christiana Brakus', 'luisa.johnson@example.net', '2023-02-15 23:23:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'at3YgMuPNn', '2023-02-15 23:23:25', '2023-02-15 23:23:25');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

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
