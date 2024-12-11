-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2024 at 01:23 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prescription_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `diagnoses`
--

CREATE TABLE `diagnoses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `diagnosis` varchar(255) NOT NULL,
  `isOngoing` tinyint(1) NOT NULL,
  `record_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diagnoses`
--

INSERT INTO `diagnoses` (`id`, `diagnosis`, `isOngoing`, `record_id`, `created_at`, `updated_at`) VALUES
(1, 'Hypertension', 1, 1, '2024-11-27 21:40:39', '2024-11-27 21:40:39'),
(2, 'Flu', 1, 1, '2024-11-27 21:40:39', '2024-11-27 21:40:39'),
(3, 'Hypertension', 1, 2, '2024-11-29 18:13:51', '2024-11-29 18:13:51'),
(4, 'COVID', 1, 5, '2024-11-30 03:09:09', '2024-11-30 03:09:09'),
(5, 'Anemia', 1, 7, '2024-11-30 03:34:57', '2024-11-30 03:34:57'),
(6, 'Diabetes', 1, 9, '2024-11-30 03:49:37', '2024-11-30 03:49:37');

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
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `record_id` bigint(20) UNSIGNED NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `record_id`, `file_path`, `created_at`, `updated_at`) VALUES
(1, 1, 'storage/202411280539_22516392942154436248661892327915.jpg', '2024-11-27 21:39:43', '2024-11-27 21:39:43'),
(2, 2, 'storage/202411300212_vaxtrack-logo.png', '2024-11-29 18:12:38', '2024-11-29 18:12:38'),
(3, 5, 'storage/202411301107_22516392942154436248661892327915.jpg', '2024-11-30 03:07:53', '2024-11-30 03:07:53'),
(4, 7, 'storage/202411301132_Subingsubing-CMSC 191-AI Applications in Healthcare.pdf', '2024-11-30 03:32:42', '2024-11-30 03:32:42'),
(5, 9, 'storage/202411301148_rxlogo.png', '2024-11-30 03:48:46', '2024-11-30 03:48:46');

-- --------------------------------------------------------

--
-- Table structure for table `medications`
--

CREATE TABLE `medications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `medication` varchar(255) NOT NULL,
  `isRefillable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medications`
--

INSERT INTO `medications` (`id`, `medication`, `isRefillable`, `created_at`, `updated_at`) VALUES
(1, 'Tiotropium 18mcg/dose', 1, NULL, NULL),
(2, 'Methyldopa 250mg/ tablet', 1, NULL, NULL),
(3, 'Clonidine 75mcg tablet', 1, NULL, NULL),
(4, 'Salbutamol 1mg/ml 2.5ml nebule', 1, NULL, NULL),
(5, 'Salbutamol 100mcg/dose 200 acuation MDI', 1, NULL, NULL),
(6, 'Salbutamol 2mg/5ml, syrup 60mL bottle', 1, NULL, NULL),
(7, 'Salbutamol + Ipratropium Bromide 2.5mg/500mcg 2.5ml nebule', 1, NULL, NULL),
(8, 'Salmeterol Xinofoate + Fluticasone Propionate 25mcg/250mcg 120acuation MDI', 1, NULL, NULL),
(9, 'Salmeterol Xinofoate + Fluticasone Propionate 25mcg/125mcg 120acuation MDI', 1, NULL, NULL),
(10, 'Salmeterol Xinofoate + Fluticasone Propionate 50mcg/250mcg DPI', 1, NULL, NULL),
(11, 'Budesonide 160mg/Formoterol 4.5mcg Turbohaler', 1, NULL, NULL),
(12, 'Budesonide 160mg/Formoterol 4.5mcg Rapihaler', 1, NULL, NULL),
(13, 'Oxymetazoline HCl 0.05% Nasal Spray', 1, NULL, NULL),
(14, 'Brimonidine 0.15% 5ml eyedrop', 1, NULL, NULL),
(15, 'Terazosin 2mg tablet', 1, NULL, NULL),
(16, 'Terazosin 5mg tablet', 1, NULL, NULL),
(17, 'Tamsulosin 200mcg tablet', 1, NULL, NULL),
(18, 'Tamsulosin 400mcg tablet', 1, NULL, NULL),
(19, 'Dorzolamide 20mg + Timolol 5mg Eye Drops Solution', 1, NULL, NULL),
(20, 'Brimonidine 2mg + Timolol 5mg Eye Drops Solution', 1, NULL, NULL),
(21, 'Metoprolol 50mg tablet', 1, NULL, NULL),
(22, 'Metoprolol 100mg tablet', 1, NULL, NULL),
(23, 'Betaxolol 0.5% eyedrop', 1, NULL, NULL),
(24, 'Timolol 0.5% 5ml eyedrop', 1, NULL, NULL),
(25, 'Carvedilol 6.25mg tablet', 1, NULL, NULL),
(26, 'Carvedilol 25mg tab tablet', 1, NULL, NULL),
(27, 'Furosemide 20mg tablet', 1, NULL, NULL),
(28, 'Furosemide 40mg tablet', 1, NULL, NULL),
(29, 'Furosemide 10mg/ml 2ml', 1, NULL, NULL),
(30, 'Spironolactone 25mg tablet', 1, NULL, NULL),
(31, 'Spironolactone 50mg tablet', 1, NULL, NULL),
(32, 'Spironolactone 100mg tablet', 1, NULL, NULL),
(33, 'Dorzolamide 2% 5ml eyedrop', 1, NULL, NULL),
(34, 'Acetazolamide 250mg tablet', 1, NULL, NULL),
(35, 'Amlodipine besylate 5mg tablet', 1, NULL, NULL),
(36, 'Amlodipine besylate 10mg tablet', 1, NULL, NULL),
(37, 'Felodipine 5mg tablet', 1, NULL, NULL),
(38, 'Nifedipine 30mg tablet', 1, NULL, NULL),
(39, 'Verapamil Hydrochloride 80mg tablet', 1, NULL, NULL),
(40, 'Verapamil Hydrochloride 240mg tablet', 1, NULL, NULL),
(41, 'Captopril 25mg tablet', 1, NULL, NULL),
(42, 'Enalapril 5mg tablet', 1, NULL, NULL),
(43, 'Perindopril 5mg tablet', 1, NULL, NULL),
(44, 'Perindopril 5mg + Indapamide 1.25mg tablet', 1, NULL, NULL),
(45, 'Perindopril 3.5mg + Amlodipine 2.5mg tablet', 1, NULL, NULL),
(46, 'Perindopril 5mg + Amlodipine 5mg tablet', 1, NULL, NULL),
(47, 'Perindopril 5mg + Amlodipine 5mg + Indapamide 1.25mg tablet', 1, NULL, NULL),
(48, 'Losartan 50mg tablet', 1, NULL, NULL),
(49, 'Losartan 100mg tablet', 1, NULL, NULL),
(50, 'Irbesartan 150mg tablet', 1, NULL, NULL),
(51, 'Irbesartan 300mg tablet', 1, NULL, NULL),
(52, 'Losartan 50mg + HCTZ 12.5mg tablet', 1, NULL, NULL),
(53, 'Irbesartan 150mg + HCTZ 12.5mg tablet', 1, NULL, NULL),
(54, 'Irbesartan 300mg + HCTZ 12.5mg tablet', 1, NULL, NULL),
(55, 'Sacubitril + Valsartan 50mg tablet', 1, NULL, NULL),
(56, 'Sacubitril + Valsartan 100mg tablet', 1, NULL, NULL),
(57, 'Sacubitril + Valsartan 200mg tablet', 1, NULL, NULL),
(58, 'Isosorbide Mononitrate 60mg tablet', 1, NULL, NULL),
(59, 'Isosorbide Dinitrate 5mg tablet', 1, NULL, NULL),
(60, 'Digoxin 0.25mg tablet', 1, NULL, NULL),
(61, 'Amiodarone Hcl 200mg tablet', 1, NULL, NULL),
(62, 'Trimetazidine 35mg tablet', 1, NULL, NULL),
(63, 'Ivabradine 5mg tablet', 1, NULL, NULL),
(64, 'Chlorphenamine/Phenylpropanolamine 1MG/5MG/5ML syrup 60ml or 120ml bottle', 1, NULL, NULL),
(65, 'Cetirizine 10mg/ml per 10ml drops', 1, NULL, NULL),
(66, 'Cetirizine 5mg/5ml Syrup', 1, NULL, NULL),
(67, 'Cetirizine Dihydrochloride 10mg tablet', 1, NULL, NULL),
(68, 'Chlorphenamine 2.5mg/5ml syrup', 1, NULL, NULL),
(69, 'Chlorphenamine Maleate 4mg tablet', 1, NULL, NULL),
(70, 'Loratadine 10mg tablet', 1, NULL, NULL),
(71, 'Levocetirizine 5mg tablet', 1, NULL, NULL),
(72, 'Ebastine 10mg tablet', 1, NULL, NULL),
(73, 'Ranitidine 300mg tablet', 1, NULL, NULL),
(74, 'Amoxicillin 100mg/ml drops', 0, NULL, NULL),
(75, 'Amoxicillin 250mg/5ml suspension', 0, NULL, NULL),
(76, 'Amoxicillin 500mg cap', 0, NULL, NULL),
(77, 'Penicillin G Benzathine 1.2M units Vial', 0, NULL, NULL),
(78, 'Ampicillin (as Sodium Salt)1g vial', 0, NULL, NULL),
(79, 'Cloxacillin 250mg/5ml 60ml suspension', 0, NULL, NULL),
(80, 'Cloxacillin 500mg tablet', 0, NULL, NULL),
(81, 'Co-amoxiclav 228.5mg/5ml suspension', 0, NULL, NULL),
(82, 'Co-amoxiclav 457mg/5ml suspension', 0, NULL, NULL),
(83, 'Co-amoxiclav 642.9mg/5ml suspension', 0, NULL, NULL),
(84, 'Co-amoxiclav 625mg tablet', 0, NULL, NULL),
(85, 'Co-amoxiclav 1000mg tablet', 0, NULL, NULL),
(86, 'Sultamicillin 750mg tablet', 0, NULL, NULL),
(87, 'Cefalexin 250mg/5ml 60ml suspension', 0, NULL, NULL),
(88, 'Cefalexin 500mg tablet', 0, NULL, NULL),
(89, 'Cefuroxime 250mg/5ml suspension', 0, NULL, NULL),
(90, 'Cefuroxime 500mg tablet', 0, NULL, NULL),
(91, 'Cefixime Trihydrate 100mg/5ml, 60ml suspension', 0, NULL, NULL),
(92, 'Cefixime 200mg tablet', 0, NULL, NULL),
(93, 'Cefixime 400mg tablet', 0, NULL, NULL),
(94, 'Ceftriaxone disodium/ Sodium 1g tablet', 0, NULL, NULL);

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
(106, '2014_10_12_000000_create_users_table', 1),
(107, '2014_10_12_100000_create_password_resets_table', 1),
(108, '2019_08_19_000000_create_failed_jobs_table', 1),
(109, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(110, '2024_09_14_150424_create_patients_table', 1),
(111, '2024_10_09_121421_create_records_table', 1),
(112, '2024_10_09_131343_create_files_table', 1),
(113, '2024_10_11_044112_create_medications_table', 1),
(114, '2024_10_11_093747_create_diagnoses_table', 1),
(115, '2024_10_11_093812_create_prescriptions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_number` varchar(7) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `age` int(11) NOT NULL,
  `sex` enum('Male','Female') NOT NULL,
  `mhp_no` varchar(255) NOT NULL,
  `mhp_exp` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `barangay` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `patient_number`, `first_name`, `middle_name`, `last_name`, `birthday`, `age`, `sex`, `mhp_no`, `mhp_exp`, `address`, `barangay`, `created_at`, `updated_at`) VALUES
(1, '5448269', 'Scottie', 'Pippen', 'Thompson', '1953-02-23', 71, 'Male', '32490823', '2024-12-06', 'Uptown Mall St.', 'Rizal', '2024-11-27 21:39:43', '2024-11-27 21:39:43'),
(2, '3732944', 'Maria', NULL, 'Dela Cruz', '1978-03-12', 46, 'Female', '34987219831', '2025-01-08', '112 Taft St.', 'East Rembo', '2024-11-29 18:12:37', '2024-11-29 18:12:37'),
(3, '3395703', 'Eleazar', NULL, 'Sancio', '1978-04-12', 46, 'Male', '435142323423', '2025-01-10', '112 Taft St.', 'Magallanes', '2024-11-30 03:07:52', '2024-11-30 03:07:52'),
(4, '2074512', 'Rascal', NULL, 'Santos', '2020-06-16', 4, 'Male', '4523421312', '2024-12-18', 'Uptown Mall St.', 'Pitogo', '2024-11-30 03:32:42', '2024-11-30 03:32:42'),
(5, '6792263', 'Lucky', NULL, 'Santos', '2010-03-23', 14, 'Male', '52342123', '2024-12-25', 'Uptown Mall St.', 'San Isidro', '2024-11-30 03:48:46', '2024-11-30 03:48:46');

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

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `record_id` bigint(20) UNSIGNED NOT NULL,
  `medication` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sig` varchar(255) NOT NULL,
  `isRefillable` tinyint(1) NOT NULL,
  `refill_date` date DEFAULT NULL,
  `date_started` date NOT NULL,
  `last_prescribed` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prescriptions`
--

INSERT INTO `prescriptions` (`id`, `record_id`, `medication`, `quantity`, `sig`, `isRefillable`, `refill_date`, `date_started`, `last_prescribed`, `created_at`, `updated_at`) VALUES
(1, 1, 'Methyldopa 250mg/ tablet', 23, 'Once a day', 1, '2024-11-30', '2024-11-28', '2024-11-28', '2024-11-27 21:40:39', '2024-11-27 21:40:39'),
(2, 1, 'Clonidine 75mcg tablet', 12, 'Once a day', 1, '2024-11-30', '2024-11-28', '2024-11-28', '2024-11-27 21:40:39', '2024-11-27 21:40:39'),
(3, 2, 'Clonidine 75mcg tablet', 12, 'Once a day', 1, '2024-12-09', '2024-11-30', '2024-11-30', '2024-11-29 18:13:51', '2024-11-29 18:13:51'),
(4, 2, 'Metoprolol 50mg tablet', 43, 'Every 8 hours', 1, '2024-12-09', '2024-11-30', '2024-11-30', '2024-11-29 18:13:51', '2024-11-29 18:13:51'),
(7, 3, 'Methyldopa 250mg/ tablet', 36, 'Once a day', 1, '2025-01-14', '2024-11-28', '2024-11-30', '2024-11-29 18:26:15', '2024-11-29 18:26:15'),
(8, 3, 'Clonidine 75mcg tablet', 48, 'Once a day', 1, '2025-01-14', '2024-11-28', '2024-11-30', '2024-11-29 18:26:15', '2024-11-29 18:26:15'),
(9, 4, 'Clonidine 75mcg tablet', 18, 'Once a day', 1, '2025-01-01', '2024-11-30', '2024-11-30', '2024-11-29 18:27:00', '2024-11-29 18:31:30'),
(10, 4, 'Metoprolol 50mg tablet', 21, 'Every 8 hours', 1, '2025-01-01', '2024-11-30', '2024-11-30', '2024-11-29 18:27:00', '2024-11-29 18:31:30'),
(11, 5, 'Metoprolol 50mg tablet', 42, 'Once a day', 1, '2025-01-02', '2024-11-30', '2024-11-30', '2024-11-30 03:09:09', '2024-11-30 03:09:09'),
(12, 5, 'Captopril 25mg tablet', 33, 'Once a day', 1, '2025-01-02', '2024-11-30', '2024-11-30', '2024-11-30 03:09:09', '2024-11-30 03:09:09'),
(15, 7, 'Spironolactone 50mg tablet', 21, 'Once a day', 1, '2024-12-18', '2024-11-30', '2024-11-30', '2024-11-30 03:34:57', '2024-11-30 03:34:57'),
(17, 8, 'Spironolactone 50mg tablet', 35, 'Once a day', 1, '2025-01-01', '2024-11-30', '2024-11-30', '2024-11-30 03:38:09', '2024-11-30 03:38:35'),
(18, 9, 'Perindopril 5mg tablet', 23, 'Once a day', 1, '2024-12-23', '2024-11-30', '2024-11-30', '2024-11-30 03:49:37', '2024-11-30 03:49:37'),
(25, 11, 'Perindopril 5mg tablet', 19, 'Once a day', 1, '2025-01-02', '2024-11-30', '2024-12-01', '2024-12-01 07:31:43', '2024-12-01 07:32:04');

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `service` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending',
  `date` date NOT NULL DEFAULT '2024-11-28',
  `doctor_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`id`, `user_id`, `patient_id`, `service`, `status`, `date`, `doctor_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Medical Consultation (Face to Face)', 'Approved', '2024-11-28', '3', '2024-11-27 21:39:43', '2024-11-27 21:40:39'),
(2, 4, 2, 'Medical Consultation (Face to Face)', 'Approved', '2024-11-30', '3', '2024-11-29 18:12:37', '2024-11-29 18:13:51'),
(3, 4, 1, 'Refill', 'Approved', '2024-11-30', '3', '2024-11-29 18:15:21', '2024-11-29 18:20:07'),
(4, 4, 2, 'Refill', 'Approved', '2024-11-30', '3', '2024-11-29 18:25:16', '2024-11-29 18:31:30'),
(5, 4, 3, 'Medical Consultation (Face to Face)', 'Approved', '2024-11-30', '3', '2024-11-30 03:07:52', '2024-11-30 03:09:09'),
(6, 4, 3, 'Refill', 'Deferred', '2024-11-30', NULL, '2024-11-30 03:10:31', '2024-11-30 03:29:00'),
(7, 4, 4, 'Medical Consultation (Face to Face)', 'Approved', '2024-11-30', '3', '2024-11-30 03:32:42', '2024-11-30 03:34:57'),
(8, 4, 4, 'Refill', 'Approved', '2024-11-30', '3', '2024-11-30 03:35:19', '2024-11-30 03:38:35'),
(9, 4, 5, 'Medical Consultation (Face to Face)', 'Approved', '2024-11-30', '3', '2024-11-30 03:48:46', '2024-11-30 03:49:37'),
(10, 4, 5, 'Refill', 'Deferred', '2024-11-30', '3', '2024-11-30 03:49:53', '2024-11-30 04:20:09'),
(11, 2, 5, 'Refill', 'Approved', '2024-12-01', '3', '2024-12-01 07:18:31', '2024-12-01 07:32:04'),
(12, 2, 1, 'Refill', 'Deferred', '2024-12-01', '3', '2024-12-01 07:29:11', '2024-12-01 07:33:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` enum('admin','doctor','nurse') NOT NULL,
  `health_facility` varchar(255) DEFAULT NULL,
  `license_no` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `middle_name`, `last_name`, `email`, `password`, `type`, `health_facility`, `license_no`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, 'User', 'admin@example.com', '$2y$10$OT76v2rR1xMRixO520UaEOYlJJkmZnss1D/Fg3CIfxE0LLn3bUFCm', 'admin', 'Bangkal Health Center', '123456789', 'Active', NULL, NULL, NULL),
(2, 'Danielle', NULL, 'Azarraga', 'ddazarraga@up.edu.ph', '$2y$10$FQZpWX4ZurwoMylYkWTwr.ANWg60n4sxnDJVoHWxP/.AdGlRApCUW', 'nurse', 'Bangkal Health Center', '129301823123', 'Active', NULL, '2024-11-27 21:38:19', '2024-11-27 21:38:19'),
(3, 'Bryan', 'Santos', 'Subingsubing', 'bryan@email.com', '$2y$10$TMlR3HRAf/eBGjALqTedNOJcXuuzgAU5U.Xc1ygLRxH0xShYRUVjy', 'doctor', 'Bangkal Health Center', '2342091823023', 'Active', NULL, '2024-11-27 21:38:46', '2024-11-27 21:38:46'),
(4, 'Juan', NULL, 'Dela Cruz', 'jdelacruz@email.com', '$2y$10$hS7Qe2iah0CXMxCB5NAnNu7OhHKuA/cwVHIc4xEIoujEm4rmxwxYi', 'nurse', 'Bangkal Health Center', '122317934123', 'Active', NULL, '2024-11-29 18:09:22', '2024-11-29 18:10:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diagnoses`
--
ALTER TABLE `diagnoses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diagnoses_record_id_foreign` (`record_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_record_id_foreign` (`record_id`);

--
-- Indexes for table `medications`
--
ALTER TABLE `medications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `patients_patient_number_unique` (`patient_number`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prescriptions_record_id_foreign` (`record_id`);

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `records_user_id_foreign` (`user_id`),
  ADD KEY `records_patient_id_foreign` (`patient_id`);

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
-- AUTO_INCREMENT for table `diagnoses`
--
ALTER TABLE `diagnoses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `medications`
--
ALTER TABLE `medications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `records`
--
ALTER TABLE `records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diagnoses`
--
ALTER TABLE `diagnoses`
  ADD CONSTRAINT `diagnoses_record_id_foreign` FOREIGN KEY (`record_id`) REFERENCES `records` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_record_id_foreign` FOREIGN KEY (`record_id`) REFERENCES `records` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD CONSTRAINT `prescriptions_record_id_foreign` FOREIGN KEY (`record_id`) REFERENCES `records` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `records`
--
ALTER TABLE `records`
  ADD CONSTRAINT `records_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `records_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
