-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-11-29 07:01:13
-- 服务器版本： 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forum`
--

-- --------------------------------------------------------

--
-- 表的结构 `activities`
--

CREATE TABLE `activities` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `subject_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `activities`
--

INSERT INTO `activities` (`id`, `user_id`, `subject_id`, `subject_type`, `type`, `created_at`, `updated_at`) VALUES
(1, 51, 51, 'App\\Thread', 'created_thread', '2017-11-28 18:59:49', '2017-11-28 18:59:49'),
(2, 51, 15, 'App\\Reply', 'created_reply', '2017-11-28 19:00:03', '2017-11-28 19:00:03');

-- --------------------------------------------------------

--
-- 表的结构 `channels`
--

CREATE TABLE `channels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `channels`
--

INSERT INTO `channels` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'voluptas', 'voluptas', '2017-10-26 20:02:49', '2017-10-26 20:02:49'),
(2, 'non', 'non', '2017-10-26 20:02:49', '2017-10-26 20:02:49'),
(3, 'deserunt', 'deserunt', '2017-10-26 20:02:49', '2017-10-26 20:02:49'),
(4, 'velit', 'velit', '2017-10-26 20:02:49', '2017-10-26 20:02:49'),
(5, 'nesciunt', 'nesciunt', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(6, 'alias', 'alias', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(7, 'esse', 'esse', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(8, 'molestiae', 'molestiae', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(9, 'et', 'et', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(10, 'labore', 'labore', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(11, 'itaque', 'itaque', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(12, 'ut', 'ut', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(13, 'tenetur', 'tenetur', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(14, 'sit', 'sit', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(15, 'quaerat', 'quaerat', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(16, 'beatae', 'beatae', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(17, 'perspiciatis', 'perspiciatis', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(18, 'enim', 'enim', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(19, 'quis', 'quis', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(20, 'ipsa', 'ipsa', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(21, 'exercitationem', 'exercitationem', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(22, 'dolorem', 'dolorem', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(23, 'sed', 'sed', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(24, 'expedita', 'expedita', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(25, 'quos', 'quos', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(26, 'aut', 'aut', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(27, 'velit', 'velit', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(28, 'dolor', 'dolor', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(29, 'exercitationem', 'exercitationem', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(30, 'neque', 'neque', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(31, 'deleniti', 'deleniti', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(32, 'sint', 'sint', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(33, 'voluptatibus', 'voluptatibus', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(34, 'consequatur', 'consequatur', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(35, 'optio', 'optio', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(36, 'at', 'at', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(37, 'omnis', 'omnis', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(38, 'non', 'non', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(39, 'voluptates', 'voluptates', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(40, 'quos', 'quos', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(41, 'mollitia', 'mollitia', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(42, 'enim', 'enim', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(43, 'aut', 'aut', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(44, 'voluptatum', 'voluptatum', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(45, 'totam', 'totam', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(46, 'autem', 'autem', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(47, 'aut', 'aut', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(48, 'sed', 'sed', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(49, 'tempora', 'tempora', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(50, 'qui', 'qui', '2017-10-26 20:02:52', '2017-10-26 20:02:52');

-- --------------------------------------------------------

--
-- 表的结构 `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `favorited_id` int(10) UNSIGNED NOT NULL,
  `favorited_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `favorited_id`, `favorited_type`, `created_at`, `updated_at`) VALUES
(1, 51, 1, 'App\\Reply', '2017-11-26 17:41:43', '2017-11-26 17:41:43'),
(2, 51, 2, 'App\\Reply', '2017-11-27 12:49:49', '2017-11-27 12:49:49'),
(3, 51, 3, 'App\\Reply', '2017-11-27 12:49:52', '2017-11-27 12:49:52'),
(4, 51, 4, 'App\\Reply', '2017-11-27 12:49:57', '2017-11-27 12:49:57'),
(5, 51, 8, 'App\\Reply', '2017-11-27 15:33:10', '2017-11-27 15:33:10');

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2017_10_11_013554_create_threads_table', 1),
(12, '2017_10_11_023011_create_replies_table', 1),
(13, '2017_10_27_043600_create_channels_table', 1),
(14, '2017_11_27_020011_create_favorites_table', 2),
(15, '2017_11_29_044252_create_activities_table', 3);

-- --------------------------------------------------------

--
-- 表的结构 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `replies`
--

CREATE TABLE `replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `thread_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `replies`
--

INSERT INTO `replies` (`id`, `thread_id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(2, 42, 51, 'First comments', '2017-11-09 17:23:18', '2017-11-09 17:23:18'),
(3, 42, 51, 'Second comments', '2017-11-09 17:23:32', '2017-11-09 17:23:32'),
(4, 42, 51, 'Third comments', '2017-11-09 17:29:06', '2017-11-09 17:29:06'),
(5, 42, 51, 'Fourth comment', '2017-11-09 17:29:15', '2017-11-09 17:29:15'),
(6, 42, 51, 'Fifth comment', '2017-11-09 17:29:24', '2017-11-09 17:29:24'),
(7, 42, 51, 'Sixth comment', '2017-11-09 17:29:31', '2017-11-09 17:29:31'),
(8, 42, 51, 'Seventh comment', '2017-11-09 17:29:43', '2017-11-09 17:29:43'),
(9, 42, 51, 'Eighth comment', '2017-11-09 17:29:52', '2017-11-09 17:29:52'),
(10, 42, 51, 'Ninth comment', '2017-11-09 17:30:00', '2017-11-09 17:30:00'),
(11, 42, 51, 'Tenth comment', '2017-11-09 17:30:07', '2017-11-09 17:30:07'),
(12, 42, 51, 'Eleventh comment', '2017-11-09 17:30:15', '2017-11-09 17:30:15'),
(13, 42, 51, 'Twelfth comment', '2017-11-09 17:30:47', '2017-11-09 17:30:47'),
(14, 42, 51, 'Thirteenth comment', '2017-11-09 17:31:08', '2017-11-09 17:31:08'),
(15, 51, 51, 'This is the reply for activities test.', '2017-11-28 19:00:03', '2017-11-28 19:00:03');

-- --------------------------------------------------------

--
-- 表的结构 `threads`
--

CREATE TABLE `threads` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `threads`
--

INSERT INTO `threads` (`id`, `user_id`, `channel_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Eligendi reiciendis repellat aliquam rem.', 'Nihil odio perferendis molestiae quia dolores. Minus fugit non quis non est aperiam architecto. Dolor illum qui in consequatur eaque.', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(2, 2, 2, 'Fugit occaecati eligendi et rem sit quis quidem cumque.', 'Cumque animi voluptatem dolorum debitis. Qui vero nulla veritatis voluptatem dignissimos beatae molestias aliquam. Sint aut ut velit non excepturi id tempore rerum. Expedita itaque ut aut voluptas officia impedit aut ducimus.', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(3, 3, 3, 'Molestiae reprehenderit architecto quia aut in.', 'Et et saepe fuga. Sit aliquid officia incidunt dolore officia occaecati natus. Nulla minima minima in est repellat sint modi illo.', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(4, 4, 4, 'In nihil cupiditate praesentium ut consequuntur laboriosam.', 'Nostrum est accusamus maiores et ea. Sit ut pariatur sit minima. Et eos aut minima voluptatem aut. Aliquam sit enim porro mollitia distinctio ut a.', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(5, 5, 5, 'Ex placeat ut earum excepturi et id.', 'Qui et molestiae velit voluptatem. Et quo in cum perferendis asperiores sed modi iste. Sed odit sapiente rem officiis.', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(6, 6, 6, 'Voluptas non est sit ea repellendus.', 'Debitis rerum suscipit quos expedita porro aut esse pariatur. Reprehenderit nulla optio et nisi laudantium non nisi voluptatem. Id perferendis voluptatum dolores nihil sit hic enim. Rerum voluptatum distinctio velit.', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(7, 7, 7, 'Dolores qui tenetur qui minus fugit culpa qui.', 'Aperiam vel vitae sit ullam quos ex. Molestiae qui et quia aut dolor. Sapiente ut omnis aut in placeat facilis.', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(8, 8, 8, 'Temporibus accusantium hic laudantium et.', 'Ducimus qui quo voluptas aut earum ea in. Ipsam iste assumenda ut autem debitis voluptatum deleniti. A reprehenderit est rerum iusto quas qui. Sed aliquid quis non numquam suscipit dolorum aliquam.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(9, 9, 9, 'Eum sequi facere maxime ipsum.', 'Aut temporibus nihil maiores. Ad veniam repudiandae reiciendis cupiditate aut. Dignissimos et est eveniet voluptas. Cum sed nobis ut.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(10, 10, 10, 'Dolorum tempora dignissimos voluptas et reprehenderit.', 'Consequatur nam quia facere officia vel tenetur error praesentium. Consequatur ab nam enim rem. Qui autem eligendi earum accusantium sint ut necessitatibus. Eum dolor id nulla quis laudantium facilis esse et. Qui pariatur quae esse dolor nulla et ut.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(11, 11, 11, 'Aspernatur cumque dolor aperiam necessitatibus fuga.', 'Repudiandae nihil dolorem harum officia quidem quasi. Ad inventore aut qui ut fugit. Corrupti labore fuga officia sed maiores ipsa.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(12, 12, 12, 'Ad nobis cum unde est dolorum.', 'Deleniti modi saepe esse sed qui sit. Beatae assumenda qui nisi quaerat. Voluptatem illum officia culpa enim nemo sapiente est. Voluptate explicabo nemo minus sit vitae.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(13, 13, 13, 'Est fuga aut assumenda nulla quae consectetur.', 'Qui eum earum earum numquam itaque eum eligendi. Ad eos porro fuga sunt mollitia iure.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(14, 14, 14, 'Modi quis reiciendis quibusdam esse quo eos.', 'Autem nihil porro aut explicabo. Omnis exercitationem exercitationem soluta. Distinctio qui corporis voluptatem excepturi. Consequatur voluptatum cumque autem ea minus vero quis.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(15, 15, 15, 'Quia ratione maiores molestias repudiandae eos natus sequi.', 'Tempore quas maiores non enim et nesciunt eum. Cupiditate nam dolorum sequi qui et rerum itaque. Nesciunt voluptatum id totam voluptatem cupiditate dolores.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(16, 16, 16, 'Optio perferendis autem sed qui ex.', 'Ipsum rerum modi quisquam repudiandae sapiente earum officiis. Optio iusto voluptas illum iste quo dignissimos quo molestiae. Odio provident sint beatae eligendi est eos nam delectus. Sint voluptates quia modi aut. Quo magni qui maxime eos saepe.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(17, 17, 17, 'Omnis quia ut occaecati omnis id.', 'Consequuntur qui sit quas voluptas consequatur id repudiandae. Ducimus molestiae similique vel nihil molestiae voluptatem repellendus. Eius natus qui perspiciatis molestiae. Officia adipisci dolorem omnis optio architecto.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(18, 18, 18, 'Ipsum nihil unde ut cum facilis et architecto.', 'Qui quis et consequatur voluptatibus reprehenderit quaerat dolor. Sint vel dolorem omnis ab dolores rerum quo. Nulla ut molestiae quia. Molestiae eligendi tempore accusamus repellat inventore itaque.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(19, 19, 19, 'Libero sunt ipsa enim consequatur qui.', 'Est temporibus laboriosam eligendi est laudantium at saepe debitis. Molestiae odio veritatis quibusdam doloremque eaque ex. Aut doloremque earum sit ut assumenda qui nemo.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(20, 20, 20, 'Magnam id et cupiditate facere.', 'Excepturi cumque distinctio quibusdam et illo. Deleniti molestias placeat in vero nostrum corrupti accusamus. Doloremque quo deserunt neque labore sit et quis. Sed iusto quod sit consectetur eum suscipit.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(21, 21, 21, 'Mollitia autem dolor est aliquam quia.', 'Amet consectetur ab sed voluptas nesciunt omnis aliquam. Odit aspernatur voluptatem in et. Dolores quasi nam omnis possimus impedit officia est. Laborum voluptatem et consequatur incidunt aut non. Ab neque maiores qui rerum iusto.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(22, 22, 22, 'Aperiam quo dolorem minus provident tenetur.', 'Voluptatem animi quasi quia. Doloribus at in magni sunt quia. Ut dolor eligendi ipsum. Aliquid sit id officia mollitia quod non.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(23, 23, 23, 'Labore omnis ipsa libero.', 'Eaque eveniet voluptatem aut iure et tempora et. Consequatur dolorum deserunt aliquam. Magnam minus quasi corrupti est neque reprehenderit quam. Iste sed totam amet rerum occaecati. Placeat provident architecto nam nihil ab quas.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(24, 24, 24, 'Explicabo voluptatum reiciendis eum dicta recusandae animi.', 'Quia impedit vero quae asperiores soluta commodi aut quia. Totam quia est veritatis quidem quia. Eveniet occaecati eum quod magni dolorem.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(25, 25, 25, 'Dolorem unde corrupti dicta quasi maxime in.', 'Exercitationem ut esse eius incidunt eaque odit explicabo. Nihil quod labore et eaque et et adipisci. Sit sequi qui maiores ut inventore.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(26, 26, 26, 'Aliquam minus debitis nihil nisi quae animi.', 'Suscipit dolor illum aut eos vel. Porro ut excepturi culpa qui. Laboriosam vero quia voluptate ipsum.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(27, 27, 27, 'Quo nostrum eaque in aut quia eius.', 'Saepe dolorem nisi in mollitia. Debitis aut ut rem perferendis. Culpa quia quos consequatur nesciunt esse.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(28, 28, 28, 'Deleniti qui ea non quis.', 'Ullam occaecati quo non nobis a nihil. Sapiente et incidunt quas ducimus. Ut molestias et porro dignissimos rem iste quo.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(29, 29, 29, 'Eaque saepe et soluta in molestias a necessitatibus.', 'Nesciunt facilis nulla perspiciatis molestiae dolor libero magnam. Nesciunt est odit aut dolorem aliquam. Et maxime debitis aliquam qui sit hic quis. Mollitia dolore asperiores omnis sunt deserunt et culpa in.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(30, 30, 30, 'Facilis ad quae dolorem eos dolor.', 'Vero laudantium sed dicta sequi blanditiis. Nobis dignissimos facere omnis consequatur possimus in. Assumenda suscipit dolore quam eum. Consectetur ipsum sit aut sint voluptatum et eum.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(31, 31, 31, 'Rerum qui ex cumque aut quo aliquid.', 'Aliquid voluptas in incidunt rem voluptatem. Consequuntur minus aspernatur ea commodi distinctio labore officia est. Est et doloremque aut reiciendis est aut labore. Sed sed molestiae qui neque dolore.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(32, 32, 32, 'Nemo accusamus sunt est aut maxime et possimus.', 'Illum magnam fugiat error quibusdam incidunt voluptatem. Atque assumenda necessitatibus vel. Ut perferendis quo nihil necessitatibus quasi dignissimos soluta.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(33, 33, 33, 'Est dolor iusto animi soluta.', 'Sint necessitatibus laboriosam fuga qui veritatis enim ut ducimus. Eaque repudiandae maiores dolor id neque reprehenderit dicta. Aut a qui voluptatem laboriosam eos. Facere cum ut exercitationem vel dolor.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(34, 34, 34, 'Placeat in modi illum animi.', 'Quaerat voluptatem esse debitis ut in similique doloremque. Voluptas est et minima et iure quia nesciunt. Adipisci sint praesentium explicabo praesentium animi deserunt aperiam occaecati. Asperiores iusto accusamus voluptatem libero.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(35, 35, 35, 'Tempore voluptas sapiente nobis voluptates qui consequatur.', 'Aut autem dolorem rerum distinctio. Veniam eveniet facere dolorem non. Consequuntur et debitis eum dolorem. Assumenda voluptatem animi ipsum.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(36, 36, 36, 'Itaque eos in ea rerum laudantium sed veniam.', 'Est non officiis porro ad harum aperiam. Ratione iure assumenda voluptatibus voluptate. Tenetur minus non id unde.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(37, 37, 37, 'Aut modi recusandae voluptas perspiciatis modi suscipit enim et.', 'Eum porro perferendis officiis aut. Explicabo rem ab vero consequatur sit porro numquam. Soluta vero fuga distinctio magni numquam. Consectetur molestiae distinctio quae omnis omnis. Eum amet necessitatibus minus molestiae sequi magni ea.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(38, 38, 38, 'Temporibus aut ipsa et sapiente.', 'Dolores voluptas dicta recusandae voluptate quas soluta animi voluptate. Blanditiis fuga voluptate consequatur non deserunt tenetur. Nisi incidunt et minima consequatur et aperiam natus. Deserunt sapiente consequatur architecto maxime et est eligendi.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(39, 39, 39, 'At suscipit minima omnis reprehenderit beatae.', 'Et voluptas soluta laborum officia dolorem incidunt et. Non in libero recusandae et impedit. Adipisci perferendis aperiam quia itaque. Laborum ut molestias non ullam quo occaecati.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(40, 40, 40, 'Aspernatur at qui dolorum sed rem beatae corporis.', 'Sit ad placeat atque omnis est rerum. Dolorem quisquam cupiditate perspiciatis laboriosam. Sed aut nihil consequuntur rerum sed eius quam. Eveniet molestiae officiis sit.', '2017-10-26 20:02:53', '2017-10-26 20:02:53'),
(41, 41, 41, 'Provident enim eum soluta vitae corporis eos culpa.', 'Officiis qui qui magni repudiandae corrupti totam. Sit at suscipit distinctio sed cupiditate vel occaecati. Minima deserunt quaerat voluptatibus ut.', '2017-10-26 20:02:54', '2017-10-26 20:02:54'),
(42, 42, 42, 'Beatae aut id inventore quis unde eligendi.', 'Itaque hic cumque porro. Qui ea maiores neque fugiat ab. Recusandae consequatur dolorem praesentium sequi cum dolores. Accusamus ad earum ut.', '2017-10-26 20:02:54', '2017-10-26 20:02:54'),
(43, 43, 43, 'Perspiciatis at sint assumenda sed quo facere quod necessitatibus.', 'Quo non consequatur eum impedit. Inventore quidem similique dolores minus dolores architecto voluptas. Quia officiis neque consequuntur.', '2017-10-26 20:02:54', '2017-10-26 20:02:54'),
(44, 44, 44, 'Quisquam blanditiis quia quibusdam ea.', 'Ea cumque ut molestiae omnis sunt. Accusamus velit maiores enim ut et aut. Natus dolore consequatur consectetur delectus rerum. Nam quam veniam non exercitationem sint cupiditate.', '2017-10-26 20:02:54', '2017-10-26 20:02:54'),
(45, 45, 45, 'Velit aut dolorem quae ratione molestiae corporis.', 'Suscipit ullam ab libero impedit. Esse officia esse ratione enim dolor. Et explicabo in sequi autem natus cumque.', '2017-10-26 20:02:54', '2017-10-26 20:02:54'),
(46, 46, 46, 'Est quaerat exercitationem nobis voluptatem nam quidem.', 'Dolores repudiandae voluptas ut. Est dolores est rerum quis porro dolorem sunt. Est omnis provident omnis.', '2017-10-26 20:02:54', '2017-10-26 20:02:54'),
(47, 47, 47, 'Ex a fugiat non maxime ipsam rerum quos excepturi.', 'Qui similique iure vel alias magni. Atque est animi dolorem repellat ipsa aut minus quae. Ipsum debitis enim ab in.', '2017-10-26 20:02:54', '2017-10-26 20:02:54'),
(48, 48, 48, 'Magni deserunt quam minima qui eius officiis optio.', 'Nihil totam reprehenderit tenetur rerum. Ratione voluptatem et aspernatur temporibus. Ducimus necessitatibus placeat similique ut iste voluptatum.', '2017-10-26 20:02:54', '2017-10-26 20:02:54'),
(49, 49, 49, 'Delectus repellat eius quisquam voluptas assumenda.', 'Mollitia repellendus necessitatibus nobis. Atque eveniet molestiae eveniet ullam eius. Et tempora est esse et officia laudantium. In cupiditate odit est et.', '2017-10-26 20:02:54', '2017-10-26 20:02:54'),
(50, 50, 50, 'Tempore accusantium corporis possimus sed et.', 'Corporis sint recusandae et et qui voluptatum nostrum. Saepe enim aut ullam repellendus saepe.', '2017-10-26 20:02:54', '2017-10-26 20:02:54'),
(51, 51, 36, 'Activities Test', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean pharetra, odio id finibus ultricies, lectus nisi ullamcorper ipsum, in maximus mi tellus feugiat elit. Integer ornare ac lacus quis sollicitudin. Maecenas fringilla sem a turpis eleifend malesuada. Nullam nisl eros, porta ut congue ac, iaculis id diam. Duis quis ligula eget orci consectetur volutpat eu eget urna. Aenean dictum arcu in enim consequat vehicula. Sed massa enim, accumsan vel feugiat ut, euismod ut lectus. Phasellus suscipit sapien ac velit fermentum feugiat. Maecenas libero erat, porttitor eu iaculis quis, facilisis sit amet nulla. Etiam vitae volutpat nunc. Duis at efficitur ex, eget mattis mi. Sed aliquet, urna ac viverra rutrum, nulla nunc consequat mauris, non fermentum ante massa viverra orci. Aenean dignissim magna est, id dapibus dolor luctus sit amet. Integer molestie mollis dolor id semper. Aenean nibh mi, euismod non neque sit amet, posuere interdum ligula. Proin et nulla ut ipsum sollicitudin commodo non ac mauris.', '2017-11-28 18:59:48', '2017-11-28 18:59:48');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Asia Schiller IV', 'ccassin@example.com', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'dRKrmBQVjy', '2017-10-26 20:02:49', '2017-10-26 20:02:49'),
(2, 'Marcella Kozey', 'leatha.abernathy@example.com', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'gO6ak7WoJw', '2017-10-26 20:02:49', '2017-10-26 20:02:49'),
(3, 'Madonna Aufderhar', 'berge.daron@example.org', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', '49AgHw5H6K', '2017-10-26 20:02:49', '2017-10-26 20:02:49'),
(4, 'Concepcion Boehm', 'lindsay32@example.org', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', '2CDr6YbjiX', '2017-10-26 20:02:49', '2017-10-26 20:02:49'),
(5, 'Emely Durgan IV', 'emohr@example.org', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'XO3NoOrBXV', '2017-10-26 20:02:49', '2017-10-26 20:02:49'),
(6, 'Alba Bogan', 'jesus.crist@example.net', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', '9BHvaM5g2x', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(7, 'Tad Quigley', 'otis.witting@example.com', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'fbvk1ZpbyH', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(8, 'Vernie Cormier', 'katheryn.hyatt@example.org', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'ae7PxATpYm', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(9, 'Coty Schaden', 'frederique.bashirian@example.org', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'xj3QMpeJrF', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(10, 'Dr. Merlin D\'Amore I', 'runolfsson.roderick@example.net', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', '6ScORkQ5Ps', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(11, 'Arnulfo Kertzmann', 'malvina.hilll@example.net', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', '4S8WH45Dok', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(12, 'Jerome Bashirian', 'sporer.richard@example.org', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'tvkpA4sZtv', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(13, 'Mack Wolf', 'elna.koss@example.com', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'lkW5rGbrF6', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(14, 'Lavada Weber PhD', 'king.leora@example.net', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'nxhVYyMezG', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(15, 'Mario Brakus', 'alaina.konopelski@example.net', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'Anc8xu42Wc', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(16, 'Mrs. Lexie Larson', 'enrico52@example.org', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', '3KyGzYxuKS', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(17, 'Dr. Adonis Jaskolski DVM', 'mayra86@example.com', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'al4glNdKZb', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(18, 'Stewart Williamson PhD', 'theron.wuckert@example.net', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'HN7SNbzBrM', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(19, 'Kenneth Bergnaum', 'garry02@example.org', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'nHrAowtmCb', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(20, 'Rosanna Wiza V', 'rossie.greenholt@example.com', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'tUi64DUYzv', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(21, 'Gerardo Kihn', 'cali.weimann@example.net', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'Ac5aDd3nLk', '2017-10-26 20:02:50', '2017-10-26 20:02:50'),
(22, 'Ms. Vernie Ebert II', 'nader.raleigh@example.com', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'RvsmKm2Hvn', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(23, 'Coralie Bernier', 'adele.heidenreich@example.com', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', '5xdDf5kGoq', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(24, 'Kristopher Dickens', 'marilou.hegmann@example.net', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'GkrHuIdDHV', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(25, 'Agustina Baumbach Sr.', 'dcarroll@example.org', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'zZrnXlc6Vs', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(26, 'Robin Lesch', 'rosenbaum.emie@example.org', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'wsVcwwJBmU', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(27, 'Keshawn Hamill', 'bgutmann@example.com', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'RYnh2ANYT1', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(28, 'Penelope Hartmann', 'sgulgowski@example.com', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'R8DZlZUjlF', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(29, 'Mrs. Phyllis Feest', 'miguel41@example.org', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'd2vNblnPB3', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(30, 'Lorenz Denesik', 'qmurray@example.com', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'Z6dhGUpzWO', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(31, 'Ona Mills', 'deanna84@example.org', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'Lcc7ivqN2m', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(32, 'Oswald Balistreri', 'nmcglynn@example.org', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'GYPUo08Hxy', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(33, 'Kamille Stokes', 'claudie48@example.org', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'bHyOOAmdra', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(34, 'Susan Schroeder', 'kreiger.bailee@example.org', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'ikQz1z7mZM', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(35, 'Wyman Schroeder DVM', 'mills.ludie@example.com', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'wyebdjBqQx', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(36, 'Mr. Elvis Krajcik III', 'arielle.macejkovic@example.net', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'GNl9ydKUmS', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(37, 'Jany Collier', 'greg.cole@example.net', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'hQtHfkpiTt', '2017-10-26 20:02:51', '2017-10-26 20:02:51'),
(38, 'Mr. Charley Daugherty DVM', 'marcos64@example.com', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', '7zDrtNaCU4', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(39, 'Blaise Yost', 'christine.lehner@example.com', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', '0pkJIJaUo3', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(40, 'Prof. Gideon Nitzsche', 'ullrich.zula@example.net', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'HVRgCReWEq', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(41, 'Mrs. Samantha Mann', 'qconn@example.net', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'F3sHN1YPBc', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(42, 'Mr. August Douglas', 'ferry.annamarie@example.com', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'Eub7HMq0lK', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(43, 'Dr. Roel Upton I', 'branson.rodriguez@example.org', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'Ep9L39hnw9', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(44, 'Rickie Anderson', 'khegmann@example.com', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'jj3N0rxlMO', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(45, 'Dr. Ricardo Schiller MD', 'kayla94@example.net', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'jeSrLAGZQn', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(46, 'Katlyn Osinski I', 'hans38@example.net', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'lA1TjCCNJs', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(47, 'Rusty Bednar', 'mconroy@example.net', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'HGAQTSJFOS', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(48, 'Immanuel Dibbert', 'hnicolas@example.com', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'DmXELW9cOU', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(49, 'Hank Hahn Sr.', 'lorenza.keebler@example.com', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'WsWI331LSz', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(50, 'Lori Wuckert', 'bkassulke@example.org', '$2y$10$jrFrgGGwsgzJ8wUbjzMIRu0Ewqn0S6OyBnxz9cDq1XpZvL/jw767a', 'C4LHA1c2hO', '2017-10-26 20:02:52', '2017-10-26 20:02:52'),
(51, 'JohnDoe', 'john@example.com', '$2y$10$YWheDOTwf7BeW1IwZIAgMOWYyox2ZknbNbM4v7Vd93rmc/unUbLDS', 'FJJeZ2YYm2YxovDnGZ5rypC8DALIb4dw3qRJ5XpTiCCTnIMuO0LXkV6i8ySR', '2017-11-07 19:15:39', '2017-11-07 19:15:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activities_user_id_index` (`user_id`),
  ADD KEY `activities_subject_id_index` (`subject_id`);

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `favorites_user_id_favorited_id_favorited_type_unique` (`user_id`,`favorited_id`,`favorited_type`);

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
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `channels`
--
ALTER TABLE `channels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- 使用表AUTO_INCREMENT `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用表AUTO_INCREMENT `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用表AUTO_INCREMENT `threads`
--
ALTER TABLE `threads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
