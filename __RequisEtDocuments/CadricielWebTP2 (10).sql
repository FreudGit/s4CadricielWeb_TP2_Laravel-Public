-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 16 oct. 2023 à 21:40
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `CadricielWebTP2`
--

-- --------------------------------------------------------

--
-- Structure de la table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_fr` varchar(255) NOT NULL,
  `body_en` text NOT NULL,
  `body_fr` text NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `title_en`, `title_fr`, `body_en`, `body_fr`, `user_id`, `created_at`, `updated_at`) VALUES
(20, 'How to Start a Vegetable Garden', 'Comment démarrer un jardin potager.', 'Starting a vegetable garden can be a rewarding experience. In this blog, we will explore the basics of gardening and provide tips for beginners.', 'Démarrer un jardin potager peut être une expérience enrichissante. Dans ce blog, nous explorerons les bases du jardinage et donnerons des conseils.aux débutants.', 17, '2023-10-16 13:00:00', '2023-10-16 23:40:30'),
(21, 'The Art of Cooking Italian Pasta', 'L\'art de cuisiner des pâtes italiennes', 'Italian pasta is a delicious and versatile dish. Learn how to cook authentic Italian pasta dishes in this blog, complete with mouthwatering recipes.', 'Les pâtes italiennes sont un plat délicieux et polyvalent. Apprenez à cuisiner des plats de pâtes italiennes authentiques dans ce blog, avec des recettes à vous faire saliver.', 2, '2023-10-16 13:15:00', '2023-10-16 13:15:00'),
(22, 'Traveling on a Budget: Tips and Tricks', 'Voyager avec un budget : astuces et conseils', 'Traveling doesn\'t have to break the bank. Discover money-saving tips and tricks for budget-friendly travel in this informative blog.', 'Voyager ne doit pas ruiner votre portefeuille. Découvrez des astuces et des conseils pour voyager à petit budget dans ce blog informatif.', 2, '2023-10-16 13:30:00', '2023-10-16 13:30:00'),
(23, 'The Benefits of Regular Exercise', 'Les bienfaits de l\'exercice régulier', 'Exercise is crucial for maintaining good health. Explore the numerous benefits of regular exercise and how to make it a part of your daily routine in this blog.', 'L\'exercice est essentiel pour maintenir une bonne santé. Découvrez les nombreux bienfaits de l\'exercice régulier et comment en faire partie de votre routine quotidienne dans ce blog.', 2, '2023-10-16 13:45:00', '2023-10-16 13:45:00'),
(24, 'Exploring the Wonders of the Amazon Rainforest', 'Explorer les merveilles de la forêt amazonienne', 'The Amazon Rainforest is a treasure trove of biodiversity. Join us on an adventure as we delve into the fascinating world of the Amazon in this blog.', 'La forêt amazonienne est un trésor de biodiversité. Rejoignez-nous pour une aventure alors que nous plongeons dans le monde fascinant de l\'Amazonie dans ce blog.', 17, '2023-10-16 14:00:00', '2023-10-16 14:00:00'),
(25, 'Mastering the Art of Photography', 'Maîtriser l\'art de la photographie', 'Photography is a powerful form of visual expression. Learn the fundamentals of photography and unleash your creative potential in this blog for aspiring photographers.', 'La photographie est une forme puissante d\'expression visuelle. Apprenez les bases de la photographie et libérez votre potentiel créatif dans ce blog pour les photographes en herbe.', 2, '2023-10-16 14:15:00', '2023-10-16 14:15:00'),
(26, 'Healthy Eating: Tips for a Balanced Diet', 'Alimentation saine : conseils pour une alimentation équilibrée', 'Maintaining a balanced diet is essential for good health. Discover practical tips and insights on healthy eating in this blog that will help you make better food choices.', 'Maintenir une alimentation équilibrée est essentiel pour la santé. Découvrez des conseils pratiques et des informations sur l\'alimentation saine dans ce blog qui vous aidera à faire de meilleurs choix alimentaires.', 17, '2023-10-16 14:30:00', '2023-10-16 14:30:00'),
(27, 'The Art of Mindfulness Meditation', 'L\'art de la méditation de pleine conscience', 'Mindfulness meditation can bring peace and clarity to your life. Learn how to practice mindfulness meditation and experience its benefits in this blog.', 'La méditation de pleine conscience peut apporter paix et clarté dans votre vie. Apprenez comment pratiquer la méditation de pleine conscience et découvrez ses bienfaits dans ce blog.', 17, '2023-10-16 14:45:00', '2023-10-16 14:45:00'),
(28, 'Exploring the Rich History of Ancient Rome', 'Explorer la riche histoire de la Rome antique', 'Ancient Rome was a civilization of immense influence. Dive into the fascinating history of Ancient Rome in this blog and uncover its enduring legacy.', 'La Rome antique a été une civilisation d\'une immense influence. Plongez dans l\'histoire fascinante de la Rome antique dans ce blog et découvrez son héritage durable.', 17, '2023-10-16 15:00:00', '2023-10-16 15:00:00'),
(29, 'Tips for Starting Your Own Business', 'Conseils pour démarrer votre propre entreprise', 'Starting a business is a challenging but rewarding endeavor. Get valuable advice and insights for aspiring entrepreneurs in this blog.', 'Démarrer une entreprise est une entreprise exigeante mais gratifiante. Obtenez des conseils précieux et des informations pour les entrepreneurs en herbe dans ce blog.', 17, '2023-10-16 15:15:00', '2023-10-16 15:15:00'),
(30, 'Exploring the Marvels of Space Exploration', 'Explorer les merveilles de l\'exploration spatiale', 'Space exploration has expanded our understanding of the universe. Embark on a cosmic journey as we explore the wonders of space in this blog.', 'L\'exploration spatiale a élargi notre compréhension de l\'univers. Partez pour un voyage cosmique alors que nous explorons les merveilles de l\'espace dans ce blog.', 11, '2023-10-16 15:30:00', '2023-10-16 15:30:00'),
(31, 'The Secrets of Effective Time Management', 'Les secrets d\'une gestion efficace du temps', 'Time management is the key to productivity. Learn practical strategies and techniques for effective time management in this blog.', 'La gestion du temps est la clé de la productivité. Apprenez des stratégies et des techniques pratiques pour une gestion efficace du temps.', 3, '2023-10-16 15:45:00', '2023-10-16 15:45:00');

-- --------------------------------------------------------

--
-- Structure de la table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_fr` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `documents`
--

INSERT INTO `documents` (`id`, `user_id`, `title_en`, `title_fr`, `file_path`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 17, 'adad777', 'as666', 'documents/CpS185fkQvSbFkC1KNS98HZpq3FT7mMMm4mdykek.pdf', '2023-10-13 18:12:29', '2023-10-14 04:59:41', '2023-10-14 04:59:41'),
(3, 17, 'THe doc', 'mon doc', 'documents/Upk7lefsqCgDUcKod4bVTShCtO5mPfzmjkmEPz6R.pdf', '2023-10-14 05:04:02', '2023-10-14 05:04:35', '2023-10-14 05:04:35'),
(4, 17, 'wewe', 'we', 'documents/BjIRZeyyyXjKRP9a1EkI9ZF6fu3bpfxpUtsImhCr.pdf', '2023-10-14 05:09:03', '2023-10-16 22:28:57', '2023-10-16 22:28:57'),
(5, 17, 'Document anglais', 'Document FRancais', 'documents/JEjtm33G7YJGIKie7YhceOMHgKilc0Xcj49jlPXg.pdf', '2023-10-16 22:23:46', '2023-10-16 22:30:11', '2023-10-16 22:30:11'),
(6, 17, 'Laravel En', 'Laravel Fr', 'documents/jZ4trW9lKO3O0YYYGI9ZxZHPySPf8I8I1YsFS4pl.pdf', '2023-10-16 22:24:21', '2023-10-16 22:56:02', '2023-10-16 22:56:02'),
(7, 14, 'A good book', 'Un bon livre', 'documents/k7WLa8Itx42oS6JODZR124KhVtoa9mpOSg6eaKo0.pdf', '2023-10-16 22:27:02', '2023-10-16 22:27:02', NULL),
(8, 17, 'Hello world', 'bonjour mondee', 'documents/LvNZVQJXs6iJJg25ABFhLL0mVcS7y9urqQbr6esJ.pdf', '2023-10-16 22:27:28', '2023-10-16 22:43:28', '2023-10-16 22:43:28'),
(9, 17, 'Hello World anglais', 'Hello World!', 'documents/48u1uBlBatAF5QJYQybEIndUWyeUuDszNvZDmylL.pdf', '2023-10-16 22:44:37', '2023-10-16 22:44:49', '2023-10-16 22:44:49'),
(10, 17, 'wewewe', 'wettt', 'documents/eAbBaq794puGU6sH3t0jUGXXsD2ZjLX1rnWfrIoo.pdf', '2023-10-16 23:00:12', '2023-10-16 23:02:36', NULL),
(11, 17, 'etet', 'ererewweew', 'documents/sVThBhnMe8O7rNCscPNP8ecmc3zfmEERLXcsFo39.pdf', '2023-10-16 23:02:56', '2023-10-16 23:03:18', '2023-10-16 23:03:18'),
(12, 17, 'Book english', 'Roman francais', 'documents/8W1OUhdUPRcO3XjkwHyETR0C2Pr0QcfNmMX3HlNv.pdf', '2023-10-16 23:03:55', '2023-10-16 23:04:19', NULL),
(13, 17, 'Hello world...', 'Bonjour monde', 'documents/W4L8Jz68ytvacWAqoJ55zYXQtJXXAEtkHz1PyM9W.pdf', '2023-10-16 23:04:50', '2023-10-16 23:19:10', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

CREATE TABLE `etudiants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date_de_naissance` date NOT NULL,
  `ville_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`id`, `nom`, `adresse`, `phone`, `email`, `date_de_naissance`, `ville_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Phoebe Durganer', '33089 Franecki Road Apt. 203South Burdetteburgh, NH 92413', '+1.240.251.0910', 'quigley.josiane@example.net2', '1984-05-28', 9, NULL, '2023-09-29 17:11:52', '2023-10-16 22:37:55'),
(2, 'Garnett Paucek', '875 Wisoky Brooks Suite 365\nTorranceland, UT 61798', '+1.719.944.6475', 'uhyatt@example.org', '1972-05-21', 7, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(3, 'Solon Konopelski', '5393 Katlyn Walks Suite 072\nNorth Otilia, MI 18209-5063', '+1.772.976.6331', 'greyson.jaskolski@example.com', '1985-03-22', 14, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(4, 'Alisa Dietrich', '47906 Daija Heights Suite 224\nLake Margret, WY 84839', '+18632408647', 'kemard@example.com', '1987-07-14', 2, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(5, 'Kyra Ratke', '6733 Kutch Hill Suite 218\nWaelchimouth, VA 05342', '1-336-556-9284', 'kendall20@example.com', '1988-03-24', 6, 10, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(6, 'Chandler Olson', '7654 Hickle Dam Apt. 641\nBryanafort, NY 21553', '+1-770-799-8139', 'lexie.spinka@example.org', '1997-04-23', 5, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(7, 'Maxwell Hand', '59815 Luigi Cliff\nAlbertview, SC 69169-7263', '+1-916-709-5524', 'ubogan@example.com', '1980-05-18', 5, 8, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(8, 'Ernestina Kling', '64129 Maud Hills\nLake Nellaburgh, CA 54891-2104', '424.728.6970', 'schimmel.antonietta@example.net', '1992-12-18', 10, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(9, 'Krista VonRueden', '7503 Armstrong Canyon Suite 685\nAudieside, RI 97257-3001', '725.671.4154', 'lmann@example.net', '1985-05-28', 5, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(10, 'Zane Murazik', '4949 Wellington Crescent\nPort Bernardton, IA 34577-9805', '+12282384798', 'graham.glenda@example.org', '1976-10-27', 6, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(11, 'Mozelle Nikolaus', '586 Grayce Key Suite 153\nPhoebeton, NY 85694-5436', '(669) 791-7861', 'mueller.van@example.org', '1979-09-24', 4, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(12, 'Meggie Quitzon', '16342 Spencer Summit\nGrahamtown, CT 37453-7534', '+19862773612', 'moore.aletha@example.net', '1981-05-21', 6, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(13, 'Alessandro Pouros', '26930 Gracie Fords\nWest Dock, VT 92044', '(810) 226-0325', 'rcrooks@example.net', '2002-02-13', 2, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(14, 'Kody Gutmann', '6742 Schmitt Valley Suite 635\nNorth Hillardborough, MS 93181-8087', '607-715-5967', 'bella.lemke@example.org', '2002-09-07', 13, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(15, 'Cydney Langosh', '12485 Francisca Keys Suite 822\nBaumbachside, IN 85377-6001', '510.575.8030', 'laura76@example.net', '1988-11-23', 8, 2, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(16, 'Robyn Durgan', '4315 Leslie Fields Apt. 956\nSchneidermouth, AR 16325', '(925) 345-7366', 'xzboncak@example.net', '1971-05-25', 14, 3, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(17, 'Justus Renner', '361 Glennie Square Suite 617\nBinsbury, KS 96137-6824', '586-700-3354', 'edgardo.kutch@example.net', '1971-07-06', 9, 4, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(18, 'Mathew Dibbert', '658 Alisha Valleys\nKyleshire, AL 39822', '301-399-1578', 'gmetz@example.net', '1978-09-27', 9, 5, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(19, 'Judge Von', '1444 Lourdes Circles Suite 373\nBergstromshire, SD 25811-2197', '+15188019617', 'emard.demond@example.com', '1989-03-08', 11, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(20, 'Julian Jones', '68236 Bechtelar Island\nPort Sabrina, IN 00386', '352-239-5129', 'connelly.lauren@example.org', '1997-02-08', 4, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(21, 'Sydney O\'Keefe', '6683 Olen Mountains\nPort Margarettstad, IA 56048', '+16059680683', 'mia63@example.org', '1991-07-27', 15, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(22, 'Madaline Herman', '66126 Zulauf Row Suite 408\nEast Marciaside, VT 09800-6798', '458.322.4560', 'oreilly.joany@example.com', '2003-07-22', 4, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(23, 'Sheila Larkin', '779 Pollich Roads\nEstevanland, LA 24089', '662.799.7314', 'roselyn.kerluke@example.org', '1999-08-01', 3, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(24, 'Vanessa Reichert', '185 Keeling Islands\nLake Napoleon, WV 55954', '424-736-6739', 'ulittle@example.net', '1987-06-06', 6, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(25, 'Francois Hébert', '609 Brakus Mill Apt. 735\nNorth Zelda, DC 97180-8202', '+1.209.303.7889', 'carroll.jerel@example.org', '1970-05-30', 10, 17, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(26, 'Randall Reichel', '7690 Jones Brook Apt. 060\nKundestad, OH 24568-6752', '+1-206-839-7245', 'schultz.weston@example.org', '1972-08-23', 4, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(27, 'Sylvia Conroy', '57391 Isac Drive Suite 204\nHuelland, MA 88840-8026', '+1 (352) 577-0493', 'kemmer.hallie@example.org', '1973-06-08', 5, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(28, 'Kevon Langworth', '6202 Hintz Motorway Apt. 006\nOkunevashire, IL 50324', '864-735-3854', 'blick.mathias@example.com', '1979-04-09', 5, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(29, 'Erich Roberts', '5584 Little Row\nEffertzfurt, CA 30579', '+1 (607) 782-0129', 'freddy15@example.com', '1993-12-18', 6, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(30, 'Raoul Russel', '698 Arvel Stravenue\nLorenport, ID 16171', '(430) 759-0122', 'pokuneva@example.org', '1973-06-17', 15, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(31, 'Billie Parker', '44130 Raynor Plaza Apt. 557\nHarrisport, TX 89599-3478', '+1 (463) 296-6214', 'gorczany.alessandro@example.org', '1994-04-10', 2, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(32, 'Benton Nader', '9588 Beahan Manors\nNew Donatoport, AL 81760', '+16818256588', 'wbrekke@example.net', '1970-07-23', 7, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(33, 'Camron Dietrich', '1375 Ruecker Mountains Suite 330\nPort Janie, WI 87253-7484', '1-669-688-8933', 'iruecker@example.com', '1989-01-08', 3, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(34, 'Talia Tremblay', '22422 Rogahn Trail\nBinsfurt, MA 81102', '562-298-8568', 'reichel.dan@example.org', '1970-10-11', 2, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(35, 'Flo Nicolas', '33598 Micaela Ridges Apt. 214\nCarriemouth, ME 62108', '1-402-451-6982', 'runolfsson.kavon@example.org', '1981-11-16', 11, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(36, 'Juliana Robel', '5207 Rodriguez Ridges\nSouth Adelia, TX 12960-6622', '+12189610412', 'schuyler.franecki@example.org', '1986-09-15', 13, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(37, 'Toney Pfannerstill', '873 Cassin Causeway\nCasperburgh, WA 39318', '985-892-4458', 'mcclure.fred@example.com', '2003-04-13', 5, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(38, 'Dominic Mitchell', '4671 Gia Summit Apt. 246\nEast Birdie, WA 93399-3897', '+19788006284', 'dicki.maryam@example.org', '1984-08-14', 12, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(39, 'Humberto Mante', '96520 Wisozk Prairie Apt. 269\nWest Joaquinmouth, PA 48534', '(385) 699-3230', 'marion.wehner@example.com', '1975-02-26', 14, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(40, 'Quinton Robel', '34812 Bogan Knoll Suite 564\nRennerfort, NY 92068-5192', '(209) 552-1003', 'vyundt@example.com', '1998-10-17', 2, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(41, 'Genesis Ziemann', '120 Wehner Inlet\nPansychester, MS 53583', '1-262-633-7318', 'westley09@example.com', '1993-09-13', 15, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(42, 'William Goyette', '579 Kuvalis Square\nBretthaven, TX 00832-2530', '+1-689-449-6649', 'aliyah.erdman@example.org', '1975-08-24', 13, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(43, 'Florida Romaguera', '29648 Hammes Way Suite 578\nKerluketown, HI 59256', '716.579.9757', 'abauch@example.net', '1985-06-29', 14, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(44, 'Macie Wehner', '5903 VonRueden Port Suite 379\nNew Ignaciobury, ID 67908-7010', '(541) 655-6433', 'fgutmann@example.net', '1985-03-02', 6, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(45, 'Jaleel Christiansen', '8039 McKenzie Station Suite 413\nJakubowskimouth, WV 75382-6105', '+1.843.861.8881', 'fruecker@example.net', '2000-09-07', 7, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(46, 'Glenda Howell', '5022 Francisca Ranch\nHaydenshire, KY 25446-0593', '(469) 823-0993', 'khalil.feeney@example.com', '1972-08-17', 15, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(47, 'Dakota Blanda', '7837 Alessandro Drive Suite 986\nEast Meagan, NY 46276', '+1.580.757.8936', 'reynold.shanahan@example.net', '1981-01-16', 3, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(48, 'Brannon Bahringer', '8608 Eloisa Summit\nNorth Faye, MO 22207-2589', '+1 (678) 994-9549', 'sjerde@example.net', '1980-07-29', 13, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(49, 'Enrique Boehm', '58034 Schneider Groves Apt. 977\nPort Jimmy, IN 30666', '(985) 501-6668', 'delbert.emmerich@example.org', '1996-04-13', 8, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(50, 'Ward Hahn', '3456 Bernard Path Apt. 694\nRosaliaside, AK 07648', '+1-248-539-7469', 'edgar.mante@example.com', '1978-03-02', 12, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(51, 'Margot Ledner', '545 Larson Ford Suite 190\nDonnellymouth, TN 26403-3116', '336.475.0148', 'gay41@example.net', '1975-01-07', 5, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(52, 'Mariano Padberg', '93433 Dickinson Spurs Apt. 106\nLake Joaquinberg, TN 44484', '210.681.1950', 'ceasar.barrows@example.com', '1985-03-08', 9, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(53, 'Giovanni Anderson', '3063 Helga Springs Suite 875\nPort Cordellside, IL 85324', '1-223-247-2736', 'erna.gleichner@example.org', '1995-03-13', 1, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(54, 'Collin Krajcik', '5431 Glover Junctions\nEast Raleigh, WV 91429', '+1-862-239-2600', 'drowe@example.net', '1974-06-19', 14, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(55, 'Myra Armstrong', '387 Erdman Spur\nSandraville, MA 28029', '1-380-859-6758', 'uklein@example.com', '2002-05-06', 11, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(56, 'Gunnar Raynor', '862 Effie Plaza Apt. 757\nNew Libby, CO 79082', '351-849-5096', 'reinger.ozella@example.com', '2001-07-21', 9, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(57, 'Erick Zulauf', '16382 Nedra Run Suite 470\nSouth Vivianetown, FL 58153', '+1.972.609.6569', 'ftremblay@example.com', '1978-12-14', 2, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(58, 'Elias Kuhn', '766 Funk Lodge Suite 051\nSimonisview, OR 53666-0275', '1-364-478-7828', 'chaz.stracke@example.net', '1986-06-06', 1, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(59, 'Georgiana Dickens', '4993 Blanca Glens Suite 197\nNorth Daphne, MN 19015', '713.324.7136', 'rosalia51@example.com', '1996-03-12', 2, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(60, 'Einar Greenfelder', '4996 Riley Villages\nLake Neva, KS 28594-0090', '(551) 836-7262', 'larue86@example.org', '1986-10-02', 8, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(61, 'Orion Bradtke', '561 Hodkiewicz Shoals\nKaleighville, NH 59436', '+1-234-903-0363', 'oberbrunner.mercedes@example.net', '1984-01-12', 8, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(62, 'Adonis Jacobs', '4145 Hamill Ridges Apt. 382\nJakubowskichester, ME 24356-3407', '1-640-995-4245', 'baumbach.maximilian@example.org', '1991-07-28', 3, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(63, 'Hailee Parisian', '25107 Zboncak Viaduct\nCarterport, MA 30214-2852', '(512) 227-8940', 'tomas.klein@example.net', '1981-07-02', 7, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(64, 'Maida Hoeger', '94750 Cole Common Apt. 659\nChristianstad, ME 56903-0764', '1-516-500-4764', 'purdy.lavon@example.com', '2003-11-06', 13, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(65, 'Chase Kessler', '8361 Baumbach Viaduct\nNorth Enricoland, WV 51056', '1-309-360-8483', 'mbraun@example.org', '1993-08-21', 12, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(66, 'Rosalee Zemlak', '9876 Sigrid Field\nNorth Delia, OR 07836-6852', '+18623973238', 'evie59@example.org', '1995-09-26', 2, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(67, 'Bessie Barrows', '47459 Krystina Point Apt. 412\nNew Estebanfort, DE 52011-4619', '(321) 849-6132', 'calista52@example.net', '1983-08-20', 6, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(68, 'Payton Volkman', '477 Mervin Throughway\nShanahanbury, NC 77404-0395', '1-509-893-9711', 'gerhard98@example.net', '1975-12-15', 6, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(69, 'Alexandria Doyle', '619 Bruen Rapids Suite 429\nHarmonyland, UT 22072-0724', '954-661-8507', 'rocio.smith@example.org', '1987-02-21', 6, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(70, 'Felton Mraz', '4166 Wolff Junction\nSouth Cassandra, MT 23845-9339', '+13513342874', 'sigrid81@example.com', '1972-11-22', 13, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(71, 'Marietta Reichel', '23104 Satterfield Bridge Suite 280\nEast Arielfurt, MI 14118-8662', '(214) 927-1021', 'leland.dubuque@example.net', '1985-12-16', 1, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(72, 'Casandra Rath', '81028 Riley Shoals Apt. 159\nNorth Vinnie, NY 90449-7771', '(351) 776-1297', 'amira30@example.com', '1986-10-15', 7, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(73, 'Alena Olson', '572 Ullrich Corners Apt. 684\nWest Noahland, HI 85340-6186', '1-832-872-9112', 'lorena54@example.org', '1982-03-17', 9, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(74, 'Ladarius Lesch', '8625 Bell Views\nOlinburgh, MA 37678', '234-908-9626', 'schoen.will@example.com', '1989-08-03', 5, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(75, 'Laury Huels', '865 Lueilwitz Plain Suite 209\nBoyertown, TN 43923-2942', '463-691-3264', 'leannon.henriette@example.com', '1985-05-24', 12, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(76, 'Roma Pagac', '21755 Weber Avenue\nNew Selina, WI 06797-5813', '1-865-556-0342', 'mia32@example.net', '1987-10-13', 13, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(77, 'Elvie Collins', '64857 Bauch Gardens Apt. 176\nStrosinhaven, DE 98393-3709', '1-878-445-0347', 'walter.anahi@example.org', '1996-08-19', 14, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(78, 'Lillie Mertz', '183 Sheldon Well\nNelsonshire, ND 54078', '+14072247629', 'hcronin@example.net', '1984-09-21', 4, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(79, 'Jude Considine', '3336 Austin Dam Apt. 857\nNew Frederic, NV 73957', '+1-229-585-1120', 'jacquelyn.harris@example.org', '1999-06-06', 6, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(80, 'Elissa Nitzsche', '6331 Bethany Plains Apt. 457\nNorth Jaquelineside, FL 78699', '+18507591930', 'lowell.huels@example.com', '1973-11-24', 8, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(81, 'Lon Walker', '6145 Torrey Hill Suite 506\nPort Jerryside, CT 05263', '828-722-2506', 'obartoletti@example.net', '1995-11-17', 4, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(82, 'Myah Breitenberg', '19494 Jamie Harbors\nSerenafurt, CA 70736-4563', '+1.352.782.6002', 'yhessel@example.com', '1990-11-07', 14, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(83, 'Vito Schmitt', '2391 Williamson Dam Apt. 494\nElijahtown, WV 98141-9859', '+18055036445', 'janae.kling@example.net', '1971-11-07', 12, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(84, 'Willard Hessel', '743 Camila Inlet Apt. 050\nMosciskiport, MO 36269', '+1.689.570.4091', 'daron.schamberger@example.net', '2002-04-29', 3, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(85, 'Elvis Veum', '6261 Lockman Lane Apt. 323\nNorth Johnsonberg, IN 78450-3214', '+1.478.908.4110', 'shanon03@example.com', '1989-05-20', 6, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(86, 'Genesis Denesik', '38646 Dillon Turnpike Suite 212\nPort Ezrafort, SC 16923-4950', '+1-540-224-8894', 'nkiehn@example.net', '1975-11-07', 1, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(87, 'Beverly Morissette', '6310 Ferry Course\nWilkinsonside, HI 66352', '831.835.4453', 'oweimann@example.net', '1977-01-11', 6, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(88, 'Assunta Kuhlman', '46929 Hermann Ramp Apt. 991\nPagacborough, MN 08874', '+13045234520', 'kaley64@example.com', '1981-05-04', 15, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(89, 'Kenna Heaney', '38133 Baumbach Gateway\nHalleview, SD 76957-3603', '+1.985.399.7673', 'kasandra.hermann@example.org', '1979-11-23', 4, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(90, 'Nikolas Satterfield', '778 Florence Brook Apt. 510\nAntoninaport, ND 30264', '720-979-2794', 'marta68@example.org', '1987-03-24', 8, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(91, 'Jimmy Cassin', '297 Nicholaus Mills Apt. 117\nPort Elmore, NY 75207', '+18542063291', 'horace90@example.org', '2003-10-17', 4, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(92, 'Rosemarie Heidenreich', '7962 Elinore Squares Apt. 779\nBirdiestad, SC 46143-2197', '+1-812-443-9552', 'harris.nels@example.org', '1983-08-05', 6, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(93, 'Vern Lakin', '99679 Bartholome Drives Apt. 235\nJosefinaville, NJ 05327', '802-380-4277', 'price@example.net', '2001-04-20', 8, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(94, 'Mariano Mraz', '417 Ona Ferry\nEast Rozella, SD 30000', '+1.978.605.7776', 'xpurdy@example.net', '1985-05-03', 2, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(95, 'Effie Ebert', '42987 Mraz Loaf Apt. 843\nCalitown, MA 25135-4667', '(458) 373-2186', 'bgreenholt@example.net', '1993-03-15', 4, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(96, 'Jake Sawayn', '6889 Rutherford Falls Apt. 318\nPort Nadia, RI 74982-7530', '504-246-3981', 'parker.marks@example.org', '1980-02-26', 13, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(97, 'Elda Hagenes', '5396 Gutkowski Passage\nNorth Parisborough, CT 05453', '+16407632841', 'alberto71@example.net', '1979-09-20', 5, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(98, 'Enrique O\'Hara', '1728 Brook Wall Suite 369\nLake Maudiehaven, MN 63005', '408.588.7994', 'hessel.trever@example.net', '1993-10-11', 7, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(99, 'Kasandra Rogahn', '274 Hand Turnpike Apt. 263\nWest Eudorafurt, DE 70755-4792', '925-342-0916', 'adriel72@example.com', '1999-10-20', 13, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52'),
(100, 'Lea Lueilwitz', '45578 Gutkowski Freeway\nPort Dorotheaville, DE 80690', '+15809993025', 'tom.lueilwitz@example.org', '1991-04-03', 7, NULL, '2023-09-29 17:11:52', '2023-09-29 17:11:52');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_09_164322_create_villes_table', 1),
(6, '2023_09_10_164123_create_etudiants_table', 1),
(7, '2023_09_28_205026_create_blog_posts_table', 1),
(8, '2023_10_13_134318_create_documents_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sim Dibbert', 'sophia.rath@example.net', '2023-09-29 17:12:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'z2RAbRBLG3', '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(2, 'Vincenzo Hayes', 'gklocko@example.net', '2023-09-29 17:12:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5MKmS44fI5', '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(3, 'Domenic Schmitt', 'maggio.marlene@example.com', '2023-09-29 17:12:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MRmoP1s99S', '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(4, 'Walker Bergstrom', 'durgan.taylor@example.net', '2023-09-29 17:12:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yuBmlysiAF', '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(5, 'Miss Hettie Schroeder', 'theodora.hettinger@example.net', '2023-09-29 17:12:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yzfhWpHYn4', '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(6, 'Jaylen Stamm', 'elton.prohaska@example.com', '2023-09-29 17:12:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Cly3654MdV', '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(7, 'Garett Conn IV', 'mckenna.huel@example.org', '2023-09-29 17:12:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NBBijrLxN2', '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(8, 'Rey Schultz', 'orie78@example.com', '2023-09-29 17:12:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7AAYrqMgmb', '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(9, 'Lonnie Waters', 'phermiston@example.com', '2023-09-29 17:12:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FFXaTSkobo', '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(10, 'Alanna Heathcote', 'orion.brakus@example.net', '2023-09-29 17:12:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WEQhXSCf4A', '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(11, 'Cesar Baumbach Jr.', 'kuhn.nathanael@example.net', '2023-09-29 17:12:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xBXSeE0ufQ', '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(12, 'Dr. Amos Roob', 'alexzander38@example.com', '2023-09-29 17:12:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cb0QCGESeW', '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(13, 'Ronaldo Kertzmann', 'blake27@example.com', '2023-09-29 17:12:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fNU09ksh6t', '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(14, 'Dr. Gaston Maggio', 'henriette06@example.com', '2023-09-29 17:12:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zZGQoBscZd', '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(15, 'Kurtis Kerluke', 'albert.maggio@example.com', '2023-09-29 17:12:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0nefs7sV5n', '2023-09-29 17:12:20', '2023-09-29 17:12:20'),
(16, 'a@a', 'a@a', NULL, '$2y$10$f68dynbus.yVbiuIMPzLu.Yk/k3eu08z/qOb5qTdmwJY2lkYKLDjW', NULL, '2023-09-29 17:42:57', '2023-09-29 17:42:57'),
(17, 'francois', 'francois@francois.com', NULL, '$2y$10$1cvIpTeUfZo1ep1DKNW53eHgd5XOxgWNMwNHi/M/U..YGk0TJxTZ6', NULL, '2023-10-11 18:13:34', '2023-10-11 18:13:34');

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

CREATE TABLE `villes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `villes`
--

INSERT INTO `villes` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'South Fatimamouth', '2023-09-29 17:11:28', '2023-09-29 17:11:28'),
(2, 'East Wilfredoland', '2023-09-29 17:11:28', '2023-09-29 17:11:28'),
(3, 'New Rachael', '2023-09-29 17:11:28', '2023-09-29 17:11:28'),
(4, 'Everettton', '2023-09-29 17:11:28', '2023-09-29 17:11:28'),
(5, 'Weissnattown', '2023-09-29 17:11:28', '2023-09-29 17:11:28'),
(6, 'West Amaliaberg', '2023-09-29 17:11:28', '2023-09-29 17:11:28'),
(7, 'South Myron', '2023-09-29 17:11:28', '2023-09-29 17:11:28'),
(8, 'Bergstromchester', '2023-09-29 17:11:28', '2023-09-29 17:11:28'),
(9, 'Terrillshire', '2023-09-29 17:11:28', '2023-09-29 17:11:28'),
(10, 'Mylesland', '2023-09-29 17:11:28', '2023-09-29 17:11:28'),
(11, 'Criststad', '2023-09-29 17:11:28', '2023-09-29 17:11:28'),
(12, 'South Kellyberg', '2023-09-29 17:11:28', '2023-09-29 17:11:28'),
(13, 'Port Margueriteville', '2023-09-29 17:11:28', '2023-09-29 17:11:28'),
(14, 'North Alekhaven', '2023-09-29 17:11:28', '2023-09-29 17:11:28'),
(15, 'Port Lucius', '2023-09-29 17:11:28', '2023-09-29 17:11:28');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_user_id_foreign` (`user_id`);

--
-- Index pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `etudiants_email_unique` (`email`),
  ADD KEY `etudiants_ville_id_foreign` (`ville_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `villes`
--
ALTER TABLE `villes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD CONSTRAINT `etudiants_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `etudiants_ville_id_foreign` FOREIGN KEY (`ville_id`) REFERENCES `villes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
