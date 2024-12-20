-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2024 at 07:27 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbsamplecrud`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Full_Name` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `UserName` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `Full_Name`, `Address`, `UserName`, `Password`, `created_at`, `updated_at`) VALUES
(2, 'Joemarie Rendon', 'Tagum City', 'joma', '$2y$12$mZqYViPy8QpT0/fWiRNdt.jYBldqFhauqU2Cyl1zSmvGbhIv5frxy', '2024-11-04 22:46:24', '2024-11-04 22:46:24'),
(3, 'Honey Marjey Curay', 'Tagum City Apokon', 'honey', '$2y$12$XqrGQuFVJ9F4iYFtBvmuaeNWalL2jw5JZpnTNZLJ9OGyoF2bgUA.O', '2024-11-04 22:47:09', '2024-11-04 22:47:09'),
(4, 'Joemarie Rendon', 'Tagum City Apokon', 'joemarie123', '$2y$12$6pYS2IANExlkwOEiMLDfo.Mpx8ATfJ1.7RKoUUWyyZaQBlJj.F5ve', '2024-11-04 23:04:05', '2024-11-04 23:04:05'),
(5, 'Marlon Rendon', 'Tagum City Apokon', 'marlon123', '$2y$12$C5cw77jSFu6SKkSed7ZBdu7ZDqG5tz2FKe5sBKMuZf/uAG6W99a5.', '2024-11-04 23:08:29', '2024-11-04 23:08:29'),
(6, 'Jaypee Rendon', 'Tagum City Apokon', 'jaypee', '$2y$12$kMYLGkVCb0PSrGtWmtVF4usGIBV5Z6AUle9IGPFzMdTmU9sx7/HSa', '2024-11-05 16:03:01', '2024-11-05 16:03:01');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `department_name`) VALUES
(1, 'IT Department '),
(2, 'HR Department '),
(3, 'Accounting Department');

-- --------------------------------------------------------

--
-- Stand-in structure for view `employeenamesandaddresses`
-- (See below for the actual view)
--
CREATE TABLE `employeenamesandaddresses` (
`name` varchar(255)
,`address` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `address`, `mobile`, `created_at`, `updated_at`) VALUES
(5, 'joemarie rendon', 'magatos', '094547', '2024-11-04 17:31:08', '2024-11-04 17:31:08'),
(84, 'naniiiii', '12345678', '232323', '2024-11-17 21:38:08', '2024-11-17 21:38:08'),
(85, 'dfdf', 'dfdf', 'dfdf', '2024-11-17 21:41:50', '2024-11-17 21:41:50'),
(86, 'sd', 'ds', 'ds', '2024-11-17 22:11:23', '2024-11-17 22:11:23');

-- --------------------------------------------------------

--
-- Stand-in structure for view `employee_department_view`
-- (See below for the actual view)
--
CREATE TABLE `employee_department_view` (
`employee_id` int(11)
,`full_name` varchar(91)
,`department_name` varchar(45)
);

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary`
--

CREATE TABLE `employee_salary` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `position` varchar(45) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_salary`
--

INSERT INTO `employee_salary` (`id`, `name`, `position`, `salary`) VALUES
(1, 'joemarie rendon', 'WEb Dev', 2000.00),
(2, 'Jesica Rendon', 'Back End Dev', 3000.00),
(3, 'HOney Marjey Curay', 'Full Stack', 500.00),
(4, 'Rapael Romey', 'Butcher', 200.00);

-- --------------------------------------------------------

--
-- Table structure for table `employee_sample`
--

CREATE TABLE `employee_sample` (
  `id` int(11) NOT NULL,
  `full_name` varchar(45) NOT NULL,
  `position` varchar(45) DEFAULT NULL,
  `salary` varchar(45) DEFAULT NULL,
  `hire_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_sample`
--

INSERT INTO `employee_sample` (`id`, `full_name`, `position`, `salary`, `hire_date`) VALUES
(1, 'Pablo Escobar', 'Full Stack', '250011.00', '2024-08-05'),
(3, 'Pablo Escobar dd', 'Full Stackfdfd', '250011.00', '2024-08-05');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `hr_employee`
--

CREATE TABLE `hr_employee` (
  `employee_id` int(11) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hr_employee`
--

INSERT INTO `hr_employee` (`employee_id`, `first_name`, `last_name`, `department_id`) VALUES
(1, 'joemarie', 'rendon', 1),
(2, 'Jesica', 'Managda', 1),
(3, 'Jolina', 'Ramon', 2),
(4, 'George ', 'Strigan', 3),
(5, 'Honey Marjey', 'Curay', 1),
(6, 'Rapael ', 'Romey', 2);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_11_04_234530_create__employees', 1),
(6, '2024_11_05_000123_update_employees_table', 2),
(7, '2024_11_05_052222_create_account', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\User', 1, 'sanctum-token', '9bb40d0f84a462d15b9b1a0f48d360d1dadfacb246cd120e1da176f75e9ded73', '[\"*\"]', NULL, NULL, '2024-11-06 19:35:55', '2024-11-06 19:35:55'),
(3, 'App\\Models\\User', 1, 'sanctum-token', '4e3f0214db906c150e83abe234950e93f6fe1a0db8d7a8923668aec9b5dc5fef', '[\"*\"]', '2024-11-17 16:55:03', NULL, '2024-11-06 21:37:57', '2024-11-17 16:55:03'),
(4, 'App\\Models\\User', 1, 'sanctum-token', 'cbe053c5f69e92c3892f4d6b6873af93c4a1764e1e86be07b679debf3ab0dc44', '[\"*\"]', NULL, NULL, '2024-11-10 17:11:51', '2024-11-10 17:11:51'),
(5, 'App\\Models\\User', 2, 'token', '60856e1fb7567f8c247dae52a1f91446174a6c8fb16ed91ec3f96a93fb22e9e3', '[\"*\"]', NULL, NULL, '2024-12-19 16:48:47', '2024-12-19 16:48:47'),
(6, 'App\\Models\\User', 2, 'token', '992b6ab7160e29efdcf7942ba7bcae8957666e8032d55821da8b4b6a60925e1e', '[\"*\"]', NULL, NULL, '2024-12-19 17:01:43', '2024-12-19 17:01:43'),
(7, 'App\\Models\\User', 2, 'token', 'ee34d2493c8bc7c41cbfb5de1feca042b8c917ac89b99b04c222ed0afa705ff3', '[\"*\"]', NULL, NULL, '2024-12-19 17:08:12', '2024-12-19 17:08:12'),
(8, 'App\\Models\\User', 2, 'token', 'eed2228b251802f021aa61bc06dca80234a56460462ec952e234976193aef1a2', '[\"*\"]', NULL, NULL, '2024-12-19 17:11:46', '2024-12-19 17:11:46'),
(9, 'App\\Models\\User', 2, 'token', '2685f2071491ad821ba87c5471505e5aaee8db5e4395de8da807a3893321b695', '[\"*\"]', NULL, NULL, '2024-12-19 17:13:24', '2024-12-19 17:13:24'),
(10, 'App\\Models\\User', 2, 'token', '135eb52ce1a98288491b0047eddeb4ba7201d1eda3c105eeaf6051699c9238e4', '[\"*\"]', NULL, NULL, '2024-12-19 17:17:37', '2024-12-19 17:17:37'),
(11, 'App\\Models\\User', 2, 'token', '0afdc0529ff79d127816e3201bd2ac8ce34f438648753fb8afa908595e65b456', '[\"*\"]', NULL, NULL, '2024-12-19 17:18:50', '2024-12-19 17:18:50'),
(12, 'App\\Models\\User', 2, 'token', 'a0c2738bce1c6bd3a16898ec627d3a9166d5d915480d10ddb14e6295a6a02836', '[\"*\"]', NULL, NULL, '2024-12-19 17:19:39', '2024-12-19 17:19:39'),
(13, 'App\\Models\\User', 2, 'token', 'a9de59a1b3d96df1b60947c9eb1151c6f7d9a6e11ca4192ed42e0012438d71aa', '[\"*\"]', NULL, NULL, '2024-12-19 17:39:55', '2024-12-19 17:39:55'),
(14, 'App\\Models\\User', 2, 'token', '90fe25e723ea4744056fa69cbd241d31ee6adc27fe1dcfaa8c473be8a0367059', '[\"*\"]', NULL, NULL, '2024-12-19 17:40:30', '2024-12-19 17:40:30'),
(15, 'App\\Models\\User', 2, 'token', 'fbd5beebbe929c39fbf4d5bb9d2ff92cb97c8f9a20422695ddfb8e3c631054b7', '[\"*\"]', NULL, NULL, '2024-12-19 17:41:08', '2024-12-19 17:41:08'),
(16, 'App\\Models\\User', 2, 'token', 'a2d022f58eea99c12bcb2af946604e0d3e6d5ad3bcd94eb4bbad0f5b8de2905d', '[\"*\"]', NULL, NULL, '2024-12-19 17:42:13', '2024-12-19 17:42:13'),
(17, 'App\\Models\\User', 2, 'token', '3ef841925073d9163d2ec18326d51c24d3592e80d1bdc7939268a4e66177f96c', '[\"*\"]', NULL, NULL, '2024-12-19 17:45:54', '2024-12-19 17:45:54'),
(18, 'App\\Models\\User', 2, 'token', 'b448d273e6856708e2df77874b10922632ae2ee581e5c3b49f4cebcad70b9072', '[\"*\"]', NULL, NULL, '2024-12-19 17:46:41', '2024-12-19 17:46:41'),
(19, 'App\\Models\\User', 2, 'token', 'f4c6455b8963e61479b2552014f1ac480868450c6970a5eb005477f22e00df12', '[\"*\"]', NULL, NULL, '2024-12-19 17:49:16', '2024-12-19 17:49:16'),
(20, 'App\\Models\\User', 2, 'token', '1ac01343c3a2f27914086cf29d6bce07a0a5b2dcbde469049b8e1605234e3296', '[\"*\"]', NULL, NULL, '2024-12-19 17:50:36', '2024-12-19 17:50:36'),
(21, 'App\\Models\\User', 2, 'token', 'dbfa4ba71202b007c3336da9de5137d8e9962d6ee399fd2f49f7e573fa635609', '[\"*\"]', NULL, NULL, '2024-12-19 17:53:44', '2024-12-19 17:53:44'),
(22, 'App\\Models\\User', 2, 'token', '980010fd0aa01e81b7580e4e4215d8a0da0140d6747dbe3f3f1f96f15e2cdcd3', '[\"*\"]', NULL, NULL, '2024-12-19 17:54:51', '2024-12-19 17:54:51'),
(23, 'App\\Models\\User', 2, 'token', '582fef710f62569cf3629569523b907a863776341d870583b61f0880812861f6', '[\"*\"]', NULL, NULL, '2024-12-19 17:58:07', '2024-12-19 17:58:07'),
(24, 'App\\Models\\User', 2, 'my-secret-token', '27013785f90433694ffb356387b7cbe81f7b88a93a61db912f299e5c6e820390', '[\"*\"]', NULL, NULL, '2024-12-19 18:01:57', '2024-12-19 18:01:57'),
(25, 'App\\Models\\User', 2, 'my-secret-token', '6a09703476de087d07c0f8d6c08c2362f7ab0735d9594780baa70a843f512fb2', '[\"*\"]', NULL, NULL, '2024-12-19 18:22:57', '2024-12-19 18:22:57'),
(26, 'App\\Models\\User', 2, 'my-secret-token', '08cdd4016ea5b6f8047a329d00f0be881b0b92689a73ab8d5aba94df4481ea63', '[\"*\"]', NULL, NULL, '2024-12-19 18:26:46', '2024-12-19 18:26:46'),
(27, 'App\\Models\\User', 2, 'my-secret-token', 'b4aaaa8c2cad27417f95868f01dd1eff543a1f8862ecc4826c9244cc6055d031', '[\"*\"]', NULL, NULL, '2024-12-19 18:30:46', '2024-12-19 18:30:46'),
(28, 'App\\Models\\User', 2, 'my-secret-token', 'eb49843988e77a662b6dde6a9d45de8eaeedd9a4d6bcdd536213380343794207', '[\"*\"]', NULL, NULL, '2024-12-19 18:31:33', '2024-12-19 18:31:33'),
(29, 'App\\Models\\User', 2, 'my-secret-token', '9083512dc7433a605a6c5edac24c6e26cf4cae24f6b43964a85acab328982e2b', '[\"*\"]', NULL, NULL, '2024-12-19 18:32:27', '2024-12-19 18:32:27'),
(30, 'App\\Models\\User', 2, 'my-secret-token', 'dabfbd88b6f91c0f5dd2c45ec5cd598e26db774835a2bdb49a14acbb0a547639', '[\"*\"]', NULL, NULL, '2024-12-19 18:33:57', '2024-12-19 18:33:57'),
(31, 'App\\Models\\User', 2, 'my-secret-token', 'afcfad48ee9136f6c62b4cc0cef689b39d34ceb6cfeca72c8153072ceed7a85c', '[\"*\"]', NULL, NULL, '2024-12-19 18:35:14', '2024-12-19 18:35:14'),
(32, 'App\\Models\\User', 2, 'my-secret-token', '26b43d1771402c063ac0525003cac3ed50520c01f1d05f12a1e84e7ce86c9b08', '[\"*\"]', NULL, NULL, '2024-12-19 18:37:07', '2024-12-19 18:37:07'),
(33, 'App\\Models\\User', 2, 'my-secret-token', 'da02a1b4548e306f9602b18650aaa448561c6dbf57ad8d697a1de939b5331cce', '[\"*\"]', NULL, NULL, '2024-12-19 18:38:45', '2024-12-19 18:38:45'),
(34, 'App\\Models\\User', 2, 'my-secret-token', 'a9654c32b011896ff078bb706d50d7abad94cc38d463ad7274380e40d4beb4bc', '[\"*\"]', NULL, NULL, '2024-12-19 18:39:03', '2024-12-19 18:39:03'),
(35, 'App\\Models\\User', 2, 'my-secret-token', '6d32d4662bd12305a11335bdd1f072b3af73f2263ca873a1311360a81a4629fc', '[\"*\"]', NULL, NULL, '2024-12-19 18:40:46', '2024-12-19 18:40:46'),
(36, 'App\\Models\\User', 2, 'my-secret-token', 'dcc856aa76258b4b62ffbbb5fc206cb00a9b82024acf7de3fa87e9c6703c27de', '[\"*\"]', NULL, NULL, '2024-12-19 18:42:07', '2024-12-19 18:42:07'),
(37, 'App\\Models\\User', 2, 'my-secret-token', 'eb66873f399f7a4caf719b9391cd625735066455bcc30d488e706b2c47b93d17', '[\"*\"]', NULL, NULL, '2024-12-19 18:42:29', '2024-12-19 18:42:29'),
(38, 'App\\Models\\User', 2, 'my-secret-token', '84ef21b35ad954149382a37eb7968e831e7361d3bfa27c7668588a3a56647ea8', '[\"*\"]', NULL, NULL, '2024-12-19 18:42:47', '2024-12-19 18:42:47'),
(39, 'App\\Models\\User', 2, 'my-secret-token', 'e49513332e575de582e7a3011828aef71d337edeec327ddb4817dd5d45f972ba', '[\"*\"]', NULL, NULL, '2024-12-19 18:44:58', '2024-12-19 18:44:58'),
(40, 'App\\Models\\User', 2, 'sanctum-token', 'd11a0ccaf414e0daf58bfd9c7f5fbbac99c9d6254c22a0067df9126588ed17c0', '[\"*\"]', NULL, NULL, '2024-12-19 18:48:15', '2024-12-19 18:48:15'),
(41, 'App\\Models\\User', 2, 'my-secret-token', '2cae3b9bba5c320e72ad4940cee8ffb9c3e076c1edeebeaac09cb790abc6d349', '[\"*\"]', NULL, NULL, '2024-12-19 18:50:08', '2024-12-19 18:50:08'),
(42, 'App\\Models\\User', 2, 'my-secret-token', 'dc6bf4e39d9effbcec530304f41eea366eba57f95681ce540cc3995d7297336d', '[\"*\"]', NULL, NULL, '2024-12-19 18:52:11', '2024-12-19 18:52:11'),
(43, 'App\\Models\\User', 2, 'my-secret-token', '7bf89e2ebd1b8a612145be87518d667d0d8a25fae763c5006fb454e85bc2fb7f', '[\"*\"]', NULL, NULL, '2024-12-19 18:52:20', '2024-12-19 18:52:20'),
(44, 'App\\Models\\User', 2, 'my-secret-token', '00584024329681af4579772452391fb212f2c28b07f4f42e6851ba9081349e44', '[\"*\"]', NULL, NULL, '2024-12-19 18:52:55', '2024-12-19 18:52:55'),
(45, 'App\\Models\\User', 2, 'my-secret-token', '34dffb2ea0b3cf7f06be466c37126efe1bb3be04653255fd984981d52de3ce6a', '[\"*\"]', NULL, NULL, '2024-12-19 18:54:32', '2024-12-19 18:54:32'),
(46, 'App\\Models\\User', 2, 'my-secret-token', 'e88aaaafefbd477b2a5ab40529946eb5517d15294950ac2d1e12080bd175f732', '[\"*\"]', NULL, NULL, '2024-12-19 18:55:28', '2024-12-19 18:55:28'),
(47, 'App\\Models\\User', 2, 'my-secret-token', '2c0b1da76aba0c80cbc0902bf80bbb1a7111b00fe9c745654c268c1338de5f1d', '[\"*\"]', NULL, NULL, '2024-12-19 18:57:41', '2024-12-19 18:57:41'),
(48, 'App\\Models\\User', 2, 'my-secret-token', '6f3b30e09bf6906c95a7fe4d79e70b26ce39f0031c8bf677e2234f28eba903b1', '[\"*\"]', NULL, NULL, '2024-12-19 19:01:30', '2024-12-19 19:01:30'),
(49, 'App\\Models\\User', 2, 'my-secret-token', 'c91e900f9a85774431bc243e771c229230d6d2ff962e9bffb59b609ed7584503', '[\"*\"]', NULL, NULL, '2024-12-19 19:03:00', '2024-12-19 19:03:00'),
(50, 'App\\Models\\User', 2, 'my-secret-token', '66613149a6d81e2f4a9228f9f1193a180018b109446e19f5c641e57587d7a6c6', '[\"*\"]', NULL, NULL, '2024-12-19 19:03:17', '2024-12-19 19:03:17'),
(51, 'App\\Models\\User', 2, 'my-secret-token', 'df75847c73692deb6f0a939a164a6c42c05110d1742cc8df00982a9f3fd65b07', '[\"*\"]', NULL, NULL, '2024-12-19 19:05:40', '2024-12-19 19:05:40'),
(52, 'App\\Models\\User', 2, 'my-secret-token', 'e3afcf5dd1efb139dafefbb1eeb94ac23e4e8895b0d586e793594b911f1f5054', '[\"*\"]', NULL, NULL, '2024-12-19 19:14:01', '2024-12-19 19:14:01'),
(53, 'App\\Models\\User', 2, 'my-secret-token', '9ce5aa28eb5df219c4b4d0e49afe9025482d66385bf917e3267aecc4cb8c411f', '[\"*\"]', NULL, NULL, '2024-12-19 19:14:42', '2024-12-19 19:14:42'),
(54, 'App\\Models\\User', 2, 'my-secret-token', 'd0e7bde33e882c5fe9572085197c02eeef2287b3fd507e3f8e4e31a907995a61', '[\"*\"]', NULL, NULL, '2024-12-19 19:17:27', '2024-12-19 19:17:27'),
(55, 'App\\Models\\User', 2, 'my-secret-token', '183d5d4fab5997672c67a24dfba5f3a7d1c6696a0f6f45fb6fb6b91a178b22b5', '[\"*\"]', NULL, NULL, '2024-12-19 19:24:34', '2024-12-19 19:24:34'),
(56, 'App\\Models\\User', 2, 'my-secret-token', 'efefd563c6592c8407869778a6f674c2daf3fe83b39fb1da227618c124e91406', '[\"*\"]', NULL, NULL, '2024-12-19 19:24:36', '2024-12-19 19:24:36'),
(57, 'App\\Models\\User', 2, 'my-secret-token', 'd2c64cbad6950387f60781c07a2b9aca01d00e4809628fadf0d91f828343420d', '[\"*\"]', NULL, NULL, '2024-12-19 19:24:37', '2024-12-19 19:24:37'),
(58, 'App\\Models\\User', 2, 'my-secret-token', 'aa3ce7113258b767534ab29fac7041f8c029b574ea6a97b55986d8577232003f', '[\"*\"]', NULL, NULL, '2024-12-19 19:24:38', '2024-12-19 19:24:38'),
(59, 'App\\Models\\User', 2, 'my-secret-token', '2828d091f9ae054fbe717dd7038e9458c5b017ba424c45ec4b7600b379893328', '[\"*\"]', NULL, NULL, '2024-12-19 19:24:39', '2024-12-19 19:24:39'),
(60, 'App\\Models\\User', 2, 'my-secret-token', '2837b95a7f2b404b75fc99c291865fe5f97a7f009df620861de13f4640adead2', '[\"*\"]', NULL, NULL, '2024-12-19 19:24:40', '2024-12-19 19:24:40'),
(61, 'App\\Models\\User', 2, 'my-secret-token', 'f0736636bd478e42b2ea03405c9301b0b06b8496e0daf091004050737f769329', '[\"*\"]', NULL, NULL, '2024-12-19 19:25:56', '2024-12-19 19:25:56'),
(62, 'App\\Models\\User', 2, 'my-secret-token', '56eccb690e4c6f6eb7c0f5275c92f832b9e5db0011ce99c008967c7f4befcbd0', '[\"*\"]', NULL, NULL, '2024-12-19 19:26:44', '2024-12-19 19:26:44'),
(63, 'App\\Models\\User', 2, 'my-secret-token', '59bdd2cd426d08a9bc998bd9615a844ccaf92de4468b9a31a30214c61f15a2a1', '[\"*\"]', NULL, NULL, '2024-12-19 20:25:30', '2024-12-19 20:25:30'),
(64, 'App\\Models\\User', 2, 'my-secret-token', '8ededf39b2b2ba2be8b1ba5505b265f482906e0b012e4d12e420cb22216d83c7', '[\"*\"]', NULL, NULL, '2024-12-19 20:26:47', '2024-12-19 20:26:47'),
(65, 'App\\Models\\User', 2, 'my-secret-token', '0488c02718dc7e581781ca6850271d56d92d05b7beb27156246c67ac9b82a601', '[\"*\"]', NULL, NULL, '2024-12-19 20:29:36', '2024-12-19 20:29:36'),
(66, 'App\\Models\\User', 2, 'my-secret-token', 'bd61923b8364243a0ba7839e0756ddecd22af2436330a98b2fa7f5a8262c209f', '[\"*\"]', NULL, NULL, '2024-12-19 20:29:52', '2024-12-19 20:29:52'),
(67, 'App\\Models\\User', 2, 'my-secret-token', '898e3a3e071e38b892b39a12000f1e0f344237fe32d2f10bf3b1c7fd1c432393', '[\"*\"]', NULL, NULL, '2024-12-19 20:31:29', '2024-12-19 20:31:29'),
(68, 'App\\Models\\User', 2, 'my-secret-token', 'cebf0cc4d3abbc891ddc023283bdb177452af915cbb6a1c81295e4c7acedf207', '[\"*\"]', NULL, NULL, '2024-12-19 20:32:10', '2024-12-19 20:32:10'),
(69, 'App\\Models\\User', 2, 'my-secret-token', 'c0f1f1d6846837d8e011ab83960c4f08504d8c7f2232dab2781e809541714004', '[\"*\"]', NULL, NULL, '2024-12-19 20:38:28', '2024-12-19 20:38:28'),
(70, 'App\\Models\\User', 2, 'my-secret-token', '44c2e0dd4bd487d264d251602d6a4b72e2697e535484331d4678e0059d6e248c', '[\"*\"]', NULL, NULL, '2024-12-19 20:47:43', '2024-12-19 20:47:43'),
(71, 'App\\Models\\User', 2, 'my-secret-token', '93cc13e829acc4414359c240d426e5c9cacd2c65275e08e4f1316b9dfeba6bc7', '[\"*\"]', NULL, NULL, '2024-12-19 20:49:47', '2024-12-19 20:49:47'),
(72, 'App\\Models\\User', 2, 'my-secret-token', '4e684d913e1ddcfad261cdd2959328b9c993d811b6a0cec554cffff67e07b399', '[\"*\"]', NULL, NULL, '2024-12-19 21:02:45', '2024-12-19 21:02:45'),
(73, 'App\\Models\\User', 2, 'my-secret-token', '8e517bb850693491d4cbbf76c3eaa06e1ff7f1728704a22f099a3f76fe5a54d6', '[\"*\"]', NULL, NULL, '2024-12-19 21:15:30', '2024-12-19 21:15:30'),
(74, 'App\\Models\\User', 2, 'my-secret-token', '596e205e67c94543b20847c1ed31f956751af7dab8ebb3e03cd66d0480cbf3d5', '[\"*\"]', NULL, NULL, '2024-12-19 21:15:55', '2024-12-19 21:15:55'),
(75, 'App\\Models\\User', 2, 'my-secret-token', '97ad628d78d4fed2c2498c947dd9befa9b95131689b1134e6990254d6c2e4467', '[\"*\"]', NULL, NULL, '2024-12-19 21:17:25', '2024-12-19 21:17:25'),
(76, 'App\\Models\\User', 2, 'my-secret-token', 'ccdff3335addffb590a3eae999469ee4c57fc28a96215c8f1af9647a492dfe6f', '[\"*\"]', NULL, NULL, '2024-12-19 21:18:22', '2024-12-19 21:18:22'),
(77, 'App\\Models\\User', 2, 'my-secret-token', '40a76880a5de426b2d3bff14a82f35505a9d9ed358e3ca660cb92bde4e748f36', '[\"*\"]', NULL, NULL, '2024-12-19 21:19:01', '2024-12-19 21:19:01'),
(78, 'App\\Models\\User', 2, 'my-secret-token', '82ea5bb4c585f3ae17399445865b0ec3180cb46f4b1fa20ea6a25e82f8f3b13d', '[\"*\"]', NULL, NULL, '2024-12-19 21:33:12', '2024-12-19 21:33:12'),
(79, 'App\\Models\\User', 2, 'my-secret-token', '6d39cf70af7231594a36bccb444c3bb9e7303e885248f08c246b22cba4a34332', '[\"*\"]', NULL, NULL, '2024-12-19 21:34:41', '2024-12-19 21:34:41'),
(80, 'App\\Models\\User', 2, 'my-secret-token', '7c4100b1ba68c01659f61df7be1fcd81c1f228fefe487ae1535879bfce4eb08a', '[\"*\"]', NULL, NULL, '2024-12-19 21:37:55', '2024-12-19 21:37:55'),
(81, 'App\\Models\\User', 2, 'my-secret-token', '144689110303d005c5ccf71c32d3e7f74f5045adced370185275d51b395b4f6b', '[\"*\"]', NULL, NULL, '2024-12-19 21:41:41', '2024-12-19 21:41:41'),
(82, 'App\\Models\\User', 2, 'my-secret-token', 'c89a1a89ff75a2d64a7a206ea5d5f8e73b7e2e1bbdbcfa45845b407403a040d3', '[\"*\"]', NULL, NULL, '2024-12-19 21:43:29', '2024-12-19 21:43:29'),
(83, 'App\\Models\\User', 2, 'my-secret-token', '1c373eae441d0c2a437d8e5adfa662702aac9d2c1236b07022c2dd8d88766ec2', '[\"*\"]', NULL, NULL, '2024-12-19 21:43:33', '2024-12-19 21:43:33'),
(84, 'App\\Models\\User', 2, 'my-secret-token', 'a24adaa7c687c785a763c193748673089a1dac925a81dcdeadd2bebaa8f6046d', '[\"*\"]', NULL, NULL, '2024-12-19 21:44:08', '2024-12-19 21:44:08'),
(85, 'App\\Models\\User', 2, 'my-secret-token', 'a7528da69f3056dc055593cfd6440420f6a6fcfa35e922935e084c4c706aa755', '[\"*\"]', NULL, NULL, '2024-12-19 21:58:46', '2024-12-19 21:58:46'),
(86, 'App\\Models\\User', 2, 'my-secret-token', '234f2ad214160b1806522de2bcdcd2e99cb5a9a7f63c12d34738c022e813ada0', '[\"*\"]', NULL, NULL, '2024-12-19 21:59:06', '2024-12-19 21:59:06'),
(87, 'App\\Models\\User', 2, 'my-secret-token', '75fe936871330cd181593258527c6fe014fe154a9f2c18155a523049b07bc48e', '[\"*\"]', NULL, NULL, '2024-12-19 22:00:56', '2024-12-19 22:00:56'),
(88, 'App\\Models\\User', 2, 'my-secret-token', '5acc5839b8f9861bf696eae52752d9876dbbaa24e538fbdfde0a449d2211e66d', '[\"*\"]', NULL, NULL, '2024-12-19 22:06:22', '2024-12-19 22:06:22'),
(89, 'App\\Models\\User', 2, 'my-secret-token', '45e219119fc34b9cf38ed6ca40bf3c4ebd88ac6118462e7dc7ced5b2d2874c71', '[\"*\"]', NULL, NULL, '2024-12-19 22:08:31', '2024-12-19 22:08:31'),
(90, 'App\\Models\\User', 2, 'my-secret-token', 'de93d628ee72c30e0694857942afa9882ba77d3751ddd9a4f806ce1f0a940fff', '[\"*\"]', NULL, NULL, '2024-12-19 22:11:09', '2024-12-19 22:11:09'),
(91, 'App\\Models\\User', 2, 'my-secret-token', '0ca83c461d004a10c2f511773a880a8c07a582098d1d23f7da89ae0cb7293bfc', '[\"*\"]', NULL, NULL, '2024-12-19 22:12:14', '2024-12-19 22:12:14'),
(92, 'App\\Models\\User', 2, 'my-secret-token', '2106031a6974d327d280e240fa94e1c6ea5d761aebe6f42ec543923b75607fde', '[\"*\"]', NULL, NULL, '2024-12-19 22:12:53', '2024-12-19 22:12:53'),
(93, 'App\\Models\\User', 2, 'my-secret-token', '4af7524bb2ed1d14100d78c5c1e4c74dd79c45adf3af7391875594f10cc8c2e1', '[\"*\"]', NULL, NULL, '2024-12-19 22:13:37', '2024-12-19 22:13:37'),
(94, 'App\\Models\\User', 2, 'my-secret-token', '9148985dd5c4c88145c155a5b6ffdc11b89bc52858ef2b8516569ecde067db0f', '[\"*\"]', NULL, NULL, '2024-12-19 22:26:25', '2024-12-19 22:26:25');

-- --------------------------------------------------------

--
-- Table structure for table `table_array`
--

CREATE TABLE `table_array` (
  `id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_array`
--

INSERT INTO `table_array` (`id`, `quantity`, `unit`, `description`, `created_at`, `updated_at`) VALUES
(1, 10, 'kg', 'Apples', '2024-11-12', '2024-11-12'),
(2, 5, 'liters', 'Milk', '2024-11-12', '2024-11-12'),
(3, 2, 'KG', 'Bugas', '2024-05-05', '2024-08-02'),
(29, 10, 'kg', 'Kumpyoter', '2024-11-13', '2024-11-13'),
(30, 5, 'liters', 'Maws', '2024-11-13', '2024-11-13'),
(31, 5, 'liters', 'Keyburd', '2024-11-13', '2024-11-13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Joemarie', 'joemarie', NULL, '$2y$12$mHfDK2y0CTsuIvT0H3jicOpuGSr3OZR/ddKEcCkaz457ZUVczz1ui', NULL, '2024-11-06 18:45:38', '2024-11-06 18:45:38'),
(2, 'jom', 'joemarierendon123@gmail.com', NULL, '$2y$12$FsJsfUVGFZfzmkQPfhqYrOCWJIZyh.o7qkl0VKjr/VUUhfvXT3/2e', NULL, '2024-12-19 16:18:02', '2024-12-19 16:18:02');

-- --------------------------------------------------------

--
-- Structure for view `employeenamesandaddresses`
--
DROP TABLE IF EXISTS `employeenamesandaddresses`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employeenamesandaddresses`  AS SELECT `employees`.`name` AS `name`, `employees`.`address` AS `address` FROM `employees` ;

-- --------------------------------------------------------

--
-- Structure for view `employee_department_view`
--
DROP TABLE IF EXISTS `employee_department_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employee_department_view`  AS SELECT `e`.`employee_id` AS `employee_id`, concat(`e`.`first_name`,' ',`e`.`last_name`) AS `full_name`, `d`.`department_name` AS `department_name` FROM (`hr_employee` `e` join `departments` `d` on(`e`.`department_id` = `d`.`department_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_salary`
--
ALTER TABLE `employee_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_sample`
--
ALTER TABLE `employee_sample`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hr_employee`
--
ALTER TABLE `hr_employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `table_array`
--
ALTER TABLE `table_array`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `employee_salary`
--
ALTER TABLE `employee_salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee_sample`
--
ALTER TABLE `employee_sample`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_employee`
--
ALTER TABLE `hr_employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `table_array`
--
ALTER TABLE `table_array`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
