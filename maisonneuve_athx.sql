-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 17 oct. 2023 à 16:57
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `maisonneuve_athx`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `language_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `articles_user_id_foreign` (`user_id`),
  KEY `fk_articles_languages1_idx` (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `user_id`, `created_at`, `updated_at`, `language_id`) VALUES
(14, 'Molière!', 'Rédaction', 7, '2023-10-16 19:00:18', '2023-10-16 22:34:14', 4),
(16, 'Non', 'Texte négatif', 7, '2023-10-16 22:02:28', '2023-10-17 03:54:55', 4),
(17, 'Yeah!!', 'Why', 7, '2023-10-16 22:33:47', '2023-10-16 23:31:39', 3);

-- --------------------------------------------------------

--
-- Structure de la table `articles_has_languages`
--

DROP TABLE IF EXISTS `articles_has_languages`;
CREATE TABLE IF NOT EXISTS `articles_has_languages` (
  `articles_id` bigint UNSIGNED NOT NULL,
  `languages_id` int NOT NULL,
  PRIMARY KEY (`articles_id`,`languages_id`),
  KEY `fk_articles_has_languages_languages1_idx` (`languages_id`),
  KEY `fk_articles_has_languages_articles1_idx` (`articles_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(16, 'Spencerton', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(17, 'New Dedricmouth', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(18, 'East Lavonnechester', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(19, 'Luciennehaven', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(20, 'East Melliefort', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(21, 'Abernathychester', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(22, 'West Olenshire', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(23, 'Wernerview', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(24, 'East Eastonfort', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(25, 'Libbybury', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(26, 'Milestown', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(27, 'Paytonview', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(28, 'Lake Hailie', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(29, 'New Tanyaton', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(30, 'Wavaborough', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(31, 'Ezequielview', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(32, 'Anniefort', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(33, 'Greentown', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(34, 'Shieldston', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(35, 'Joaquinbury', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(36, 'South Eden', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(37, 'Marquisestad', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(38, 'New Guidoberg', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(39, 'Loganview', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(40, 'North Elliotbury', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(41, 'Staceyport', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(42, 'New Stephen', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(43, 'East Keshawn', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(44, 'North Dejah', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(45, 'Armstronghaven', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(46, 'North Maximoborough', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(47, 'Augustview', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(48, 'Gutmannmouth', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(49, 'O\'Haraburgh', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(50, 'Ortizchester', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(51, 'South Estefaniachester', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(52, 'Cristinastad', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(53, 'Feestshire', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(54, 'Lake Judd', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(55, 'East Dakota', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(56, 'East Mya', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(57, 'Mossietown', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(58, 'Batzside', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(59, 'Pfannerstillfort', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(60, 'New Christina', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(61, 'Christopmouth', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(62, 'Vivianneburgh', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(63, 'Hodkiewiczmouth', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(64, 'Swiftfurt', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(65, 'Lake Candace', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(66, 'Lake Marleneview', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(67, 'West Magalibury', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(68, 'Cecilmouth', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(69, 'Parisianfurt', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(70, 'New Geraldineville', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(71, 'East Ayanaview', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(72, 'South Everett', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(73, 'South Logan', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(74, 'Port Liana', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(75, 'South Pansy', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(76, 'Christinemouth', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(77, 'East Imelda', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(78, 'Guillermofort', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(79, 'East Monique', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(80, 'Eldorahaven', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(81, 'Tadport', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(82, 'North Valentineshire', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(83, 'Harberberg', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(84, 'New Bill', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(85, 'North Alicia', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(86, 'Schadenfurt', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(87, 'Kreigerburgh', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(88, 'Lake Mackenzie', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(89, 'Ferryburgh', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(90, 'South Celestinostad', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(91, 'West Meredith', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(92, 'South Feltonview', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(93, 'Port Delaneystad', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(94, 'North Alysha', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(95, 'Bartonton', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(96, 'North Dasiafurt', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(97, 'Jacobshaven', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(98, 'Schinnerchester', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(99, 'Kohlerview', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(100, 'West Sophiastad', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(101, 'Itzelview', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(102, 'East Bradyside', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(103, 'Queenstad', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(104, 'Trantowmouth', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(105, 'North Leannachester', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(106, 'Kadechester', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(107, 'New Jarretside', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(108, 'New Jimmie', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(109, 'South Linafort', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(110, 'Lake Kattiemouth', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(111, 'North Cletaburgh', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(112, 'West Brent', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(113, 'Lake Jean', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(114, 'South Davonfurt', '2023-10-16 17:59:35', '2023-10-16 17:59:35'),
(115, 'West Dagmar', '2023-10-16 17:59:35', '2023-10-16 17:59:35');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE IF NOT EXISTS `files` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `language_id` int NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_files_languages1_idx` (`language_id`),
  KEY `fk_files_users1_idx` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `language` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `languages`
--

INSERT INTO `languages` (`id`, `language`) VALUES
(3, 'en'),
(4, 'fr');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `students_city_id_foreign` (`city_id`),
  KEY `fk_students_users1_idx` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `phone`, `address`, `city_id`, `created_at`, `updated_at`, `user_id`) VALUES
(110, 'Kim Thompson', 'price.linnie@example.org', '160-804-0559 x684', '597 Sipes Summit Apt. 187\nSouth Janelleport, ON  J3M-9K0', 5, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(111, 'Dr. Van Howe MD', 'hagenes.aileen@example.net', '+1 (823) 515-8041', '800 Maximus Loaf Suite 942\nSchulistberg, PE  X5G8P9', 6, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(112, 'Camren Runolfsson', 'liliane91@example.org', '(502) 559-3729 x802', '3969 Nienow Villages\nSchambergermouth, SK  N0P8H2', 13, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(113, 'Lori Corwin', 'ggulgowski@example.net', '342 616 8359', '1474 Domenick Circle Suite 984\nMullerport, AB  G5T6C0', 7, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(114, 'Chandler Murazik', 'dawson.abernathy@example.com', '(814) 189-9537', '4704 Linnie Mountain Apt. 915\nZechariahfort, PE  X1L3P8', 12, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(115, 'Ms. Helen Reynolds', 'myrtie31@example.net', '807 777 0819', '14027 Liana Mills\nPort Margarette, NU  R5H6G2', 2, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(116, 'Mabel Carroll', 'casper.janie@example.org', '(503) 936-5555 x350', '3215 Paucek Locks\nWest Araceli, NT  T0T9G8', 14, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(117, 'Irma Weber Sr.', 'pearline.hauck@example.org', '1-843-148-9662', '62643 Deron Rapid Suite 160\nWest Gabe, YT  N8V 6V4', 6, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(118, 'Mr. Filiberto Spencer', 'murphy.jovan@example.net', '1 (858) 503-5994', '818 Demond Manor\nOsinskiborough, NU  Y9V 7M0', 5, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(119, 'Lewis Tillman PhD', 'gertrude81@example.org', '1-383-801-8460', '40458 Josephine Glens\nDagmarborough, QC  R7Y7R9', 6, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(120, 'Henriette Tromp', 'qabbott@example.org', '+1 (116) 518-3906', '3562 Jocelyn Canyon\nSouth Ardithhaven, PE  Y2M-6S5', 11, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(121, 'Vaughn Pacocha', 'bbotsford@example.net', '(379) 047-4818', '5571 Langworth Causeway Suite 087\nEast Roytown, QC  M3A 4S1', 6, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(122, 'Itzel Bode', 'swaniawski.antwon@example.org', '154.181.3409', '41085 Manuel Plains\nEast Joshside, QC  H5L 2G0', 4, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(135, 'Mr. Obie Watsica Jr.', 'schaefer.thad@example.org', '1 (946) 368-2325', '564 Schuster Shoal Suite 133\nBradtketon, NU  R5L-8C2', 13, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(136, 'Oma Casper', 'hlebsack@example.org', '106-671-6193 x249', '689 Howell Trace\nWilfordmouth, ON  N4Y-5J2', 6, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(137, 'Lorenzo Thompson II', 'javier56@example.net', '624-434-4172', '430 Lambert Circle\nNorth Marquise, BC  P7M 8N2', 10, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(138, 'Mauricio Willms', 'bartell.milo@example.org', '176-501-0429 x818', '334 Zula Mountains Suite 348\nAlekport, NB  N4N-1V1', 3, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(139, 'Branson Schulist', 'xgreenholt@example.org', '+1 (377) 506-1394', '558 Pfannerstill Prairie Apt. 698\nKrajcikstad, AB  X3G9M3', 9, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(140, 'Miss Melody Dickinson', 'alexie13@example.net', '561.662.1751', '435 Emiliano Radial Suite 578\nPort Zackmouth, YT  Y5G2Y0', 13, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(141, 'Natalie Trantow', 'weber.dario@example.org', '1 (323) 574-2348', '45665 Goodwin Mews Suite 625\nAmaramouth, NS  G5H1H1', 10, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(142, 'Genoveva Jakubowski', 'hintz.delilah@example.com', '160-452-8234', '5248 Name Common Suite 799\nLake Gaylordport, BC  R4G 8A9', 8, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(143, 'Jovanny Tillman II', 'dickinson.nyah@example.com', '792-046-0171 x906', '22252 Mossie Key\nAmaliaborough, NL  B3B0M7', 8, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(144, 'Miss Simone Lynch DDS', 'percy.mueller@example.com', '+1 (301) 957-5714', '9177 Perry Common\nMaxwellport, SK  N3N 1S4', 2, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(145, 'Wilber Powlowski', 'connie68@example.net', '(293) 269-9010 x295', '1789 Williamson Spurs\nNorth Erickaville, ON  S8P8G3', 10, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(146, 'Emely Maggio', 'hfahey@example.com', '304.919.1912', '7898 Klocko Rest\nNikolausberg, NS  H8K4Y9', 11, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(147, 'Aletha Cole', 'madilyn.weber@example.com', '274-355-6977 x510', '33444 Jaquan Cliff Apt. 946\nEast Nils, ON  L8Y-3T6', 9, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(148, 'Berta Murazik V', 'oconnell.candice@example.com', '253 758 8664', '80969 Nolan Hills\nWest Greenstad, BC  K2R 3X3', 8, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(149, 'Heaven Hane', 'fmccullough@example.com', '+1 (303) 968-0630', '994 VonRueden Burgs\nIzaiahborough, AB  H9N 4P0', 3, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(150, 'Skye Keeling DDS', 'lockman.lenna@example.com', '+1 (536) 808-5920', '8464 Franecki Cove Suite 654\nDeeton, NT  H9P 1B2', 7, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(151, 'Mr. Ryder Kirlin', 'lysanne.nicolas@example.com', '(107) 086-1064', '55929 Bret Ford Suite 272\nPort Audreanne, NL  R6M-1M4', 5, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(152, 'Eileen Mills', 'leonie.marvin@example.org', '989 937 5822', '2849 Jacobson Ridge Suite 639\nSouth Jadonfurt, NU  H6T0L1', 2, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(153, 'Reanna Davis', 'nelle.hintz@example.com', '488 715 9973', '5019 Kuhn Park Suite 041\nSchaefertown, SK  V8S5N1', 6, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(154, 'Wava Grant', 'madison03@example.com', '121-210-1172 x715', '3604 Pamela Rest Suite 755\nShanahanbury, NT  K1L-4M3', 1, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(155, 'Samanta Vandervort', 'enos.treutel@example.com', '1 (460) 322-2301', '866 Bosco Lock Suite 341\nEast Arneshire, NL  G8B0H0', 10, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(156, 'Prof. Berry Bins III', 'hodkiewicz.adelbert@example.org', '1 (185) 600-5732', '4675 Parisian Isle Apt. 217\nPort Brisa, ON  L5A-6P8', 14, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(157, 'Kelli Dickens', 'mossie27@example.net', '679.400.7995', '526 Mariano Branch Apt. 937\nWest Ola, ON  C2G-9A3', 12, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(158, 'Alberta Goldner', 'leuschke.selena@example.net', '667-490-8077 x763', '35726 Bud Stravenue\nWest Cecileshire, NS  E2E-9P5', 3, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(159, 'Alvah Block', 'osborne.grimes@example.net', '490-298-3233 x109', '4869 Mikayla Falls Suite 414\nPort Alexandrine, SK  N9G 9T9', 8, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(160, 'Mr. Saul Orn DDS', 'letitia.ernser@example.org', '(911) 844-6626 x274', '29696 Lyda Landing\nOlafort, NB  R2X1N6', 8, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(161, 'Adrain Schiller', 'jmayer@example.com', '(366) 120-3504', '8821 Kristin Knolls Apt. 235\nNew Dayana, NS  C0E 8R5', 4, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(162, 'Miss Lori Gleichner', 'ncollins@example.org', '(415) 001-2460 x379', '6198 Medhurst Flat\nFeestside, NU  E1K 7J4', 8, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(163, 'Kris Greenfelder', 'lloyd28@example.org', '169-087-1264 x002', '32014 Katharina Trail Apt. 394\nSouth Lauren, SK  T0G 0Y1', 6, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(164, 'Ella Rodriguez', 'hollie61@example.org', '1-865-048-6982', '58086 Wilbert Mountain\nNorth Orphamouth, ON  B4P-3G0', 10, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(165, 'Kaylin Klocko', 'katelin46@example.com', '574-979-3454', '76245 Danika Village\nKshlerinberg, PE  S8J-7J7', 15, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(166, 'Alysson Schultz', 'stoltenberg.salvador@example.com', '1-554-234-2794', '6631 Doyle Turnpike\nNorth Ila, BC  V8L 4M0', 15, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(167, 'Ali Herzog Sr.', 'ykeebler@example.net', '992 014 2004', '765 Adams Locks\nJacobiburgh, BC  V0N-8T5', 13, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(168, 'Ansley O\'Reilly IV', 'layne84@example.net', '1 (985) 198-0579', '495 Raynor Points\nNorth Guiseppe, SK  S9A-8S8', 10, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(169, 'Joyce Wuckert II', 'antonietta.towne@example.net', '403.051.6535', '590 Ezequiel Alley\nWest Monicaborough, ON  N2S-7R9', 8, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(170, 'Hiram McCullough', 'frederique21@example.net', '748-821-0920', '83568 Hodkiewicz Expressway\nNew Rebekamouth, YT  R1R7X0', 11, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(171, 'Madonna Gusikowski', 'carmella.mills@example.net', '170-895-5148', '23420 Joyce Unions\nBergstromview, QC  S6K-8E4', 14, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(172, 'Miss Ayana Larson', 'litzy.runte@example.com', '333-845-1955', '9662 Juana Creek Suite 082\nFeestview, NB  H7A 8L7', 3, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(173, 'Rylan Okuneva', 'kianna.hintz@example.org', '707.839.3872', '93025 Rath Mission Apt. 200\nHettingerbury, NU  C9B-4S6', 2, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(174, 'Dr. Tremaine Price', 'pete56@example.net', '559.929.1532', '8605 Wolff Drives Suite 273\nPort Milestown, ON  T9L-2J9', 1, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(175, 'Kaylah Langosh', 'lsmith@example.net', '1-553-522-0976', '314 Tobin Ford\nBlandaberg, PE  S3A-1X3', 10, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(176, 'Jedidiah Hansen', 'pferry@example.net', '155.919.2030', '7104 Darius Via\nEast Theresa, MB  S5Y7V2', 3, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(177, 'Prof. Zoie Hane', 'steve.green@example.net', '1-485-795-9419', '1003 Onie Walk Apt. 725\nTiannaborough, ON  R1T 0M0', 11, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(178, 'Aubrey McKenzie', 'emmet.paucek@example.org', '(520) 726-0749 x554', '11095 Lindgren Park Suite 734\nWest Myrticeland, MB  N1J 3A3', 10, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(179, 'Marlen Hansen III', 'daphne.wehner@example.org', '284-959-6412 x972', '40799 Glover Fork Suite 002\nSouth Maxineport, NS  C7L-1K1', 3, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(196, 'Jazmin Cartwright MD', 'logan07@example.org', '1 (102) 098-7682', '50731 Ceasar Way Apt. 571\nWest Jovaniview, NS  B7N 5N8', 10, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(201, 'Jo Batz Sr.', 'joesph.homenick@example.net', '727-304-4762 x194', '705 Shakira Grove\nNew Deronburgh, NU  A0T-4H5', 11, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(202, 'Geraldine Schumm', 'daryl.jast@example.org', '928 012 1737', '42490 Kasandra Burgs Apt. 421\nWest Alicetown, NU  K3J 2A8', 13, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(203, 'Mr. Pedro Hermiston II', 'abdul55@example.org', '174-598-3949', '1720 Josephine Turnpike\nHerzogbury, BC  S4P 6S2', 15, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(204, 'Aracely Brown', 'langworth.bettye@example.com', '(217) 643-8754', '66909 McGlynn Ports Suite 977\nKaitlynmouth, NU  C6Y-7X2', 10, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(205, 'Roosevelt Carter', 'genesis.stracke@example.com', '1-389-416-9780', '654 Bradtke Fords\nWest Jayceland, NB  A4M 8V5', 10, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(206, 'Lilian Auer', 'feest.yolanda@example.org', '171.804.6635', '74628 Murphy Falls\nNorth Benedict, NL  R1N-0N6', 6, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(207, 'Dr. Geo Rau II', 'zulauf.imelda@example.net', '1-282-853-1503', '65632 Feil Isle\nWest Evangelinehaven, NS  X3T-9J9', 6, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(208, 'Willy Renner', 'okuneva.carmen@example.org', '+1 (299) 343-6680', '265 Veda Neck Apt. 595\nArdenmouth, MB  C4X-4V4', 8, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(209, 'Nat Konopelski III', 'era.mcclure@example.org', '+1 (603) 985-3111', '1446 Jonathon Path Apt. 168\nPort Susanna, NU  B6K-2X6', 2, '2023-10-16 17:42:06', '2023-10-16 17:42:06', 0),
(210, 'Alain Théroux', NULL, '4576', '1234 rue duCode', 35, '2023-10-16 23:30:37', '2023-10-17 04:53:12', 7);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'alain.theroux2@gmail.com', '$2y$10$1n68Xk3HUmaEbAS5ZgZpeOYi1tiBDqH9TAaAlE3cUJpN0QCiVVDh.', NULL, '2023-10-16 17:51:51', '2023-10-16 17:51:51'),
(8, 'alain.theroux24@gmail.com', '$2y$10$Y32PjNn9YOMs9BiedBaVPuUTRq2zdD52bm6giBdVa/3jaYveeGpEC', NULL, '2023-10-16 23:33:38', '2023-10-16 23:33:38');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_articles_languages1` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Contraintes pour la table `articles_has_languages`
--
ALTER TABLE `articles_has_languages`
  ADD CONSTRAINT `fk_articles_has_languages_articles1` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `fk_articles_has_languages_languages1` FOREIGN KEY (`languages_id`) REFERENCES `languages` (`id`);

--
-- Contraintes pour la table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `fk_files_languages1` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
  ADD CONSTRAINT `fk_files_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
