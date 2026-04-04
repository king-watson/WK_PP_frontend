-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 04, 2026 at 12:13 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movies_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `comedies`
--

DROP TABLE IF EXISTS `comedies`;
CREATE TABLE IF NOT EXISTS `comedies` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `movie_title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `movie_image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `movie_director` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `movie_genre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comedies`
--

INSERT INTO `comedies` (`id`, `movie_title`, `movie_image`, `movie_director`, `movie_genre`, `created_at`, `updated_at`) VALUES
(1, 'Rush Hour', 'http://127.0.0.1:8000/storage/images/Rush_Hour.jpg', 'Brett Ratner', 'Comedy', '2026-04-02 01:26:40', '2026-04-02 01:26:40'),
(2, 'The Hangover', 'http://127.0.0.1:8000/storage/images/The_Hangover.jpg', 'Todd Phillips', 'Comedy', '2026-04-02 01:26:40', '2026-04-02 01:26:40'),
(3, 'Step Brothers', 'http://127.0.0.1:8000/storage/images/Step_Brothers.jpg', 'Adam McKay', 'Comedy', '2026-04-02 01:26:40', '2026-04-02 01:26:40'),
(4, '21 Jump Street', 'http://127.0.0.1:8000/storage/images/21_Jump_Street.jpg', 'Phil Lord & Christopher Miller', 'Comedy', '2026-04-02 01:26:40', '2026-04-02 01:26:40'),
(5, 'Dumb and Dumber', 'http://127.0.0.1:8000/storage/images/Dumb_and_Dumber.jpg', 'Peter Farrelly', 'Comedy', '2026-04-02 01:26:40', '2026-04-02 01:26:40'),
(6, 'Superbad', 'http://127.0.0.1:8000/storage/images/Superbad.jpg', 'Greg Mottola', 'Comedy', '2026-04-02 01:26:40', '2026-04-02 01:26:40'),
(7, 'The Mask', 'http://127.0.0.1:8000/storage/images/The_Mask.jpg', 'Chuck Russell', 'Comedy', '2026-04-02 01:26:40', '2026-04-02 01:26:40'),
(8, 'Home Alone', 'http://127.0.0.1:8000/storage/images/Home_Alone.jpg', 'Chris Columbus', 'Comedy', '2026-04-02 01:26:40', '2026-04-02 01:26:40'),
(9, 'Bruce Almighty', 'http://127.0.0.1:8000/storage/images/Bruce_Almighty.jpg', 'Tom Shadyac', 'Comedy', '2026-04-02 01:26:40', '2026-04-02 01:26:40'),
(10, 'Mean Girls', 'http://127.0.0.1:8000/storage/images/Mean_Girls.jpg', 'Mark Waters', 'Comedy', '2026-04-02 01:26:40', '2026-04-02 01:26:40');

-- --------------------------------------------------------

--
-- Table structure for table `horrors`
--

DROP TABLE IF EXISTS `horrors`;
CREATE TABLE IF NOT EXISTS `horrors` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `movie_title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `movie_image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `movie_director` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `movie_genre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `horrors`
--

INSERT INTO `horrors` (`id`, `movie_title`, `movie_image`, `movie_director`, `movie_genre`, `created_at`, `updated_at`) VALUES
(1, 'The Conjuring', 'http://127.0.0.1:8000/storage/images/The_Conjuring.jpg', 'James Wan', 'Horror', '2026-04-02 01:26:40', '2026-04-02 01:26:40'),
(2, 'The Exorcist', 'http://127.0.0.1:8000/storage/images/The_Exorcist.jpg', 'William Friedkin', 'Horror', '2026-04-02 01:26:40', '2026-04-02 01:26:40'),
(3, 'Sinister', 'http://127.0.0.1:8000/storage/images/Sinister.jpg', 'Scott Derrickson', 'Horror', '2026-04-02 01:26:40', '2026-04-02 01:26:40'),
(4, 'A Quiet Place', 'http://127.0.0.1:8000/storage/images/A_Quiet_Place.jpg', 'John Krasinski', 'Horror', '2026-04-02 01:26:40', '2026-04-02 01:26:40'),
(5, 'Insidious', 'http://127.0.0.1:8000/storage/images/Insidious.jpg', 'James Wan', 'Horror', '2026-04-02 01:26:40', '2026-04-02 01:26:40'),
(6, 'The Nun', 'http://127.0.0.1:8000/storage/images/The_Nun.jpg', 'Corin Hardy', 'Horror', '2026-04-02 01:26:40', '2026-04-02 01:26:40'),
(7, 'Get Out', 'http://127.0.0.1:8000/storage/images/Get_Out.jpg', 'Jordan Peele', 'Horror', '2026-04-02 01:26:40', '2026-04-02 01:26:40'),
(8, 'The Babadook', 'http://127.0.0.1:8000/storage/images/The_Babadook.jpg', 'Jennifer Kent', 'Horror', '2026-04-02 01:26:40', '2026-04-02 01:26:40'),
(9, 'IT', 'http://127.0.0.1:8000/storage/images/IT.jpg', 'Andy Muschietti', 'Horror', '2026-04-02 01:26:40', '2026-04-02 01:26:40'),
(10, 'Hereditary', 'http://127.0.0.1:8000/storage/images/Hereditary.jpg', 'Ari Aster', 'Horror', '2026-04-02 01:26:40', '2026-04-02 01:26:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2026_03_27_192329_create_horros_table', 1),
(3, '2026_03_27_192615_create_comedy_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_general_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
