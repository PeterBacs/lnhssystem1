-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2024 at 10:30 AM
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
-- Database: `solanadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `icon_upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `serial` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `name`, `upload_id`, `icon_upload_id`, `description`, `serial`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Special Campus Tour', 87, 88, 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. enim velit mollit. Exercitation veniam consequat sunt nostrud amet. enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Exercitation veniam consequat sunt nostrud amet. enim velit mollit. Exercitation veniam consequat sunt nostrud amet.', 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(2, 'Graduation', 89, 90, 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. enim velit mollit. Exercitation veniam consequat sunt nostrud amet. enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Exercitation veniam consequat sunt nostrud amet. enim velit mollit. Exercitation veniam consequat sunt nostrud amet.', 1, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(3, 'Powerful Alumni', 91, 92, 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. enim velit mollit. Exercitation veniam consequat sunt nostrud amet. enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Exercitation veniam consequat sunt nostrud amet. enim velit mollit. Exercitation veniam consequat sunt nostrud amet.', 2, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `account_heads`
--

CREATE TABLE `account_heads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_heads`
--

INSERT INTO `account_heads` (`id`, `name`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Fees', 1, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(2, 'Donation', 1, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(3, 'Rent', 1, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(4, 'Book Sale', 1, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(5, 'Stationery Purchase', 2, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(6, 'Electricity Bill', 2, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(7, 'Telephone Bill', 2, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `online_exam_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `result` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `answer_childrens`
--

CREATE TABLE `answer_childrens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `answer_id` bigint(20) UNSIGNED NOT NULL,
  `question_bank_id` bigint(20) UNSIGNED NOT NULL,
  `answer` text DEFAULT NULL,
  `evaluation_mark` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `classes_id` bigint(20) UNSIGNED DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `roll` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `attendance` tinyint(4) DEFAULT 3 COMMENT '1=present, 2=late, 3=absent, 4=half_day',
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blood_groups`
--

CREATE TABLE `blood_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blood_groups`
--

INSERT INTO `blood_groups` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'A+', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(2, 'A-', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(3, 'B+', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(4, 'B-', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(5, 'O+', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(6, 'O-', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(7, 'AB+', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(8, 'AB-', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `publisher_name` varchar(255) NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `rack_no` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_categories`
--

CREATE TABLE `book_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_categories`
--

INSERT INTO `book_categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'History', 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(2, 'Poyem', 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(3, 'Science', 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(4, 'Arch', 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(5, 'Tour', 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `top_text` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `logo_show` tinyint(1) NOT NULL DEFAULT 1,
  `bg_image` bigint(20) UNSIGNED DEFAULT NULL,
  `bottom_left_signature` bigint(20) UNSIGNED DEFAULT NULL,
  `bottom_left_text` longtext NOT NULL,
  `bottom_right_signature` bigint(20) UNSIGNED DEFAULT NULL,
  `bottom_right_text` longtext NOT NULL,
  `logo` tinyint(1) NOT NULL DEFAULT 1,
  `name` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Grade 7', 1, '2024-05-02 04:32:16', '2024-05-03 07:54:10'),
(2, 'Grade 8', 1, '2024-05-02 04:32:16', '2024-05-03 07:54:18'),
(3, 'Grade 9', 1, '2024-05-02 04:32:16', '2024-05-03 07:54:25'),
(4, 'Grade 10', 1, '2024-05-03 07:54:31', '2024-05-03 07:54:31');

-- --------------------------------------------------------

--
-- Table structure for table `class_rooms`
--

CREATE TABLE `class_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_no` int(11) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_rooms`
--

INSERT INTO `class_rooms` (`id`, `room_no`, `capacity`, `status`, `created_at`, `updated_at`) VALUES
(1, 101, 50, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(2, 102, 60, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(3, 103, 40, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(4, 104, 50, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(5, 105, 50, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(6, 106, 50, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(7, 107, 50, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(8, 108, 50, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(9, 109, 50, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(10, 110, 50, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(11, 111, 50, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(12, 112, 50, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(13, 113, 50, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16');

-- --------------------------------------------------------

--
-- Table structure for table `class_routines`
--

CREATE TABLE `class_routines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `classes_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `shift_id` bigint(20) UNSIGNED DEFAULT NULL,
  `day` tinyint(4) DEFAULT NULL COMMENT 'sat=1, fri=7',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_routines`
--

INSERT INTO `class_routines` (`id`, `session_id`, `classes_id`, `section_id`, `shift_id`, `day`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, NULL, 2, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(2, 1, 1, 2, NULL, 2, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(3, 1, 2, 1, NULL, 2, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(4, 1, 2, 2, NULL, 2, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(5, 1, 3, 1, NULL, 2, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(6, 1, 3, 2, NULL, 2, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(7, 1, 1, 1, NULL, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(8, 1, 1, 2, NULL, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(9, 1, 2, 1, NULL, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(10, 1, 2, 2, NULL, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(11, 1, 3, 1, NULL, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(12, 1, 3, 2, NULL, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(13, 1, 1, 1, NULL, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(14, 1, 1, 2, NULL, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(15, 1, 2, 1, NULL, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(16, 1, 2, 2, NULL, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(17, 1, 3, 1, NULL, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(18, 1, 3, 2, NULL, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(19, 1, 1, 1, NULL, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(20, 1, 1, 2, NULL, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(21, 1, 2, 1, NULL, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(22, 1, 2, 2, NULL, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(23, 1, 3, 1, NULL, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(24, 1, 3, 2, NULL, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(25, 1, 1, 1, NULL, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(26, 1, 1, 2, NULL, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(27, 1, 2, 1, NULL, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(28, 1, 2, 2, NULL, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(29, 1, 3, 1, NULL, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(30, 1, 3, 2, NULL, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `class_routine_childrens`
--

CREATE TABLE `class_routine_childrens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_routine_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `time_schedule_id` bigint(20) UNSIGNED NOT NULL,
  `class_room_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_routine_childrens`
--

INSERT INTO `class_routine_childrens` (`id`, `class_routine_id`, `subject_id`, `time_schedule_id`, `class_room_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 2, 2, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(2, 1, 3, 3, 3, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(3, 1, 4, 4, 4, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(4, 1, 5, 5, 5, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(5, 2, 2, 2, 2, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(6, 2, 3, 3, 3, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(7, 2, 4, 4, 4, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(8, 2, 5, 5, 5, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(9, 3, 3, 3, 3, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(10, 3, 4, 4, 4, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(11, 3, 5, 5, 5, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(12, 3, 6, 6, 6, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(13, 4, 3, 3, 3, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(14, 4, 4, 4, 4, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(15, 4, 5, 5, 5, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(16, 4, 6, 6, 6, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(17, 5, 4, 4, 4, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(18, 5, 5, 5, 5, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(19, 5, 6, 6, 6, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(20, 5, 7, 7, 7, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(21, 6, 4, 4, 4, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(22, 6, 5, 5, 5, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(23, 6, 6, 6, 6, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(24, 6, 7, 7, 7, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(25, 7, 2, 2, 2, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(26, 7, 3, 3, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(27, 7, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(28, 7, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(29, 8, 2, 2, 2, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(30, 8, 3, 3, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(31, 8, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(32, 8, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(33, 9, 3, 3, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(34, 9, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(35, 9, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(36, 9, 6, 6, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(37, 10, 3, 3, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(38, 10, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(39, 10, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(40, 10, 6, 6, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(41, 11, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(42, 11, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(43, 11, 6, 6, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(44, 11, 7, 7, 7, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(45, 12, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(46, 12, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(47, 12, 6, 6, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(48, 12, 7, 7, 7, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(49, 13, 2, 2, 2, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(50, 13, 3, 3, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(51, 13, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(52, 13, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(53, 14, 2, 2, 2, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(54, 14, 3, 3, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(55, 14, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(56, 14, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(57, 15, 3, 3, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(58, 15, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(59, 15, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(60, 15, 6, 6, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(61, 16, 3, 3, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(62, 16, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(63, 16, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(64, 16, 6, 6, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(65, 17, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(66, 17, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(67, 17, 6, 6, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(68, 17, 7, 7, 7, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(69, 18, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(70, 18, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(71, 18, 6, 6, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(72, 18, 7, 7, 7, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(73, 19, 2, 2, 2, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(74, 19, 3, 3, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(75, 19, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(76, 19, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(77, 20, 2, 2, 2, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(78, 20, 3, 3, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(79, 20, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(80, 20, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(81, 21, 3, 3, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(82, 21, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(83, 21, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(84, 21, 6, 6, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(85, 22, 3, 3, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(86, 22, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(87, 22, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(88, 22, 6, 6, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(89, 23, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(90, 23, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(91, 23, 6, 6, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(92, 23, 7, 7, 7, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(93, 24, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(94, 24, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(95, 24, 6, 6, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(96, 24, 7, 7, 7, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(97, 25, 2, 2, 2, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(98, 25, 3, 3, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(99, 25, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(100, 25, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(101, 26, 2, 2, 2, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(102, 26, 3, 3, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(103, 26, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(104, 26, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(105, 27, 3, 3, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(106, 27, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(107, 27, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(108, 27, 6, 6, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(109, 28, 3, 3, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(110, 28, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(111, 28, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(112, 28, 6, 6, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(113, 29, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(114, 29, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(115, 29, 6, 6, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(116, 29, 7, 7, 7, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(117, 30, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(118, 30, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(119, 30, 6, 6, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(120, 30, 7, 7, 7, '2024-05-02 04:32:17', '2024-05-02 04:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `class_setups`
--

CREATE TABLE `class_setups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `classes_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_setups`
--

INSERT INTO `class_setups` (`id`, `session_id`, `classes_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(2, 1, 2, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(3, 1, 3, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(4, 2, 1, 1, '2024-05-02 05:23:21', '2024-05-02 05:23:21'),
(5, 2, 2, 1, '2024-05-03 07:55:30', '2024-05-03 07:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `class_setup_childrens`
--

CREATE TABLE `class_setup_childrens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_setup_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_setup_childrens`
--

INSERT INTO `class_setup_childrens` (`id`, `class_setup_id`, `section_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(2, 1, 2, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(3, 2, 1, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(4, 2, 2, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(5, 3, 1, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(6, 3, 2, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(7, 4, 1, 1, '2024-05-02 05:23:21', '2024-05-02 05:23:21'),
(8, 4, 2, 1, '2024-05-02 05:23:21', '2024-05-02 05:23:21'),
(9, 5, 3, 1, '2024-05-03 07:55:30', '2024-05-03 07:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_infos`
--

CREATE TABLE `contact_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_infos`
--

INSERT INTO `contact_infos` (`id`, `upload_id`, `name`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, 79, 'Our School', '222, Tower Building, Country Hall, California 777, United States', 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(2, 80, 'Our School', '222, Tower Building, Country Hall, California 777, United States', 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(3, 81, 'Our School', '222, Tower Building, Country Hall, California 777, United States', 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(4, 82, 'Our School', '222, Tower Building, Country Hall, California 777, United States', 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `total_count` int(11) DEFAULT NULL,
  `upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `serial` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `name`, `total_count`, `upload_id`, `serial`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Curriculum', 0, 14, 0, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(2, 'Students', 45, 15, 1, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(3, 'Expert Teachers', 90, 16, 2, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(4, 'User', 135, 17, 3, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(5, 'Parents', 180, 18, 4, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `decimal_digits` int(11) DEFAULT 2,
  `decimal_point_separator` varchar(255) DEFAULT NULL,
  `thousand_separator` varchar(255) DEFAULT NULL,
  `with_space` tinyint(4) DEFAULT 0,
  `position` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 => Suffix, 1 => Prefix',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `currency`, `code`, `symbol`, `decimal_digits`, `decimal_point_separator`, `thousand_separator`, `with_space`, `position`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', 'USD', '$', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(2, 'Canadian Dollar', 'CAD', '$', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(3, 'Euro', 'EUR', '€', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(4, 'UAE Dirham', 'AED', 'د.إ.‏', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(5, 'Afghan Afghani', 'AFN', '؋', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(6, 'Albanian Lek', 'ALL', 'Lek', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(7, 'Armenian Dram', 'AMD', 'դր.', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(8, 'Argentine Peso', 'ARS', '$', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(9, 'Australian Dollar', 'AUD', '$', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(10, 'Azerbaijani Manat', 'AZN', 'ман.', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(11, 'Bosnia-Herzegovina Convertible Mark', 'BAM', 'KM', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(12, 'Bangladeshi Taka', 'BDT', '৳', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(13, 'Bulgarian Lev', 'BGN', 'лв.', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(14, 'Bahraini Dinar', 'BHD', 'د.ب.‏', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(15, 'Burundian Franc', 'BIF', 'FBu', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(16, 'Brunei Dollar', 'BND', '$', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(17, 'Bolivian Boliviano', 'BOB', 'Bs', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(18, 'Brazilian Real', 'BRL', 'R$', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(19, 'Botswanan Pula', 'BWP', 'P', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(20, 'Belarusian Ruble', 'BYN', 'руб.', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(21, 'Belize Dollar', 'BZD', '$', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(22, 'Congolese Franc', 'CDF', 'FrCD', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(23, 'Swiss Franc', 'CHF', 'CHF', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(24, 'Chilean Peso', 'CLP', '$', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(25, 'Chinese Yuan', 'CNY', 'CN¥', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(26, 'Colombian Peso', 'COP', '$', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(27, 'Costa Rican Colón', 'CRC', '₡', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(28, 'Cape Verdean Escudo', 'CVE', 'CV$', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(29, 'Czech Republic Koruna', 'CZK', 'Kč', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(30, 'Djiboutian Franc', 'DJF', 'Fdj', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(31, 'Danish Krone', 'DKK', 'kr', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(32, 'Dominican Peso', 'DOP', 'RD$', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(33, 'Algerian Dinar', 'DZD', 'د.ج.‏', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(34, 'Estonian Kroon', 'EEK', 'kr', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(35, 'Egyptian Pound', 'EGP', 'ج.م.‏', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(36, 'Eritrean Nakfa', 'ERN', 'Nfk', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(37, 'Ethiopian Birr', 'ETB', 'Br', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(38, 'British Pound Sterling', 'GBP', '£', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(39, 'Georgian Lari', 'GEL', 'GEL', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(40, 'Ghanaian Cedi', 'GHS', 'GH₵', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(41, 'Guinean Franc', 'GNF', 'FG', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(42, 'Guatemalan Quetzal', 'GTQ', 'Q', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(43, 'Hong Kong Dollar', 'HKD', '$', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(44, 'Honduran Lempira', 'HNL', 'L', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(45, 'Croatian Kuna', 'HRK', 'kn', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(46, 'Hungarian Forint', 'HUF', 'Ft', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(47, 'Indonesian Rupiah', 'IDR', 'Rp', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(48, 'Indian Rupee', 'INR', '₹', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(49, 'Iraqi Dinar', 'IQD', 'د.ع.‏', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(50, 'Iranian Rial', 'IRR', '﷼', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(51, 'Icelandic Króna', 'ISK', 'kr', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(52, 'Jamaican Dollar', 'JMD', '$', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(53, 'Jordanian Dinar', 'JOD', 'د.أ.‏', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(54, 'Japanese Yen', 'JPY', '￥', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(55, 'Kenyan Shilling', 'KES', 'Ksh', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(56, 'Cambodian Riel', 'KHR', '៛', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(57, 'Comorian Franc', 'KMF', 'FC', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(58, 'South Korean Won', 'KRW', '₩', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(59, 'Kuwaiti Dinar', 'KWD', 'د.ك.‏', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(60, 'Kazakhstani Tenge', 'KZT', 'тңг.', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(61, 'Lebanese Pound', 'LBP', 'ل.ل.‏', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(62, 'Sri Lankan Rupee', 'LKR', 'SL Re', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(63, 'Lithuanian Litas', 'LTL', 'Lt', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(64, 'Latvian Lats', 'LVL', 'Ls', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(65, 'Libyan Dinar', 'LYD', 'د.ل.‏', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(66, 'Moroccan Dirham', 'MAD', 'د.م.‏', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(67, 'Moldovan Leu', 'MDL', 'MDL', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(68, 'Malagasy Ariary', 'MGA', 'MGA', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(69, 'Macedonian Denar', 'MKD', 'MKD', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(70, 'Myanma Kyat', 'MMK', 'K', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(71, 'Macanese Pataca', 'MOP', 'MOP$', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(72, 'Mauritian Rupee', 'MUR', 'MURs', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(73, 'Mexican Peso', 'MXN', '$', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(74, 'Malaysian Ringgit', 'MYR', 'RM', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(75, 'Mozambican Metical', 'MZN', 'MTn', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(76, 'Namibian Dollar', 'NAD', 'N$', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(77, 'Nigerian Naira', 'NGN', '₦', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(78, 'Nicaraguan Córdoba', 'NIO', 'C$', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(79, 'Norwegian Krone', 'NOK', 'kr', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(80, 'Nepalese Rupee', 'NPR', 'नेरू', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(81, 'New Zealand Dollar', 'NZD', '$', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(82, 'Omani Rial', 'OMR', 'ر.ع.‏', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(83, 'Panamanian Balboa', 'PAB', 'B/.', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(84, 'Peruvian Nuevo Sol', 'PEN', 'S/.', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(85, 'Philippine Peso', 'PHP', '₱', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(86, 'Pakistani Rupee', 'PKR', '₨', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(87, 'Polish Zloty', 'PLN', 'zł', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(88, 'Paraguayan Guarani', 'PYG', '₲', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(89, 'Qatari Rial', 'QAR', 'ر.ق.‏', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(90, 'Romanian Leu', 'RON', 'RON', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(91, 'Serbian Dinar', 'RSD', 'дин.', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(92, 'Russian Ruble', 'RUB', '₽.', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(93, 'Rwandan Franc', 'RWF', 'FR', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(94, 'Saudi Riyal', 'SAR', 'ر.س.‏', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(95, 'Sudanese Pound', 'SDG', 'SDG', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(96, 'Swedish Krona', 'SEK', 'kr', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(97, 'Singapore Dollar', 'SGD', '$', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(98, 'Somali Shilling', 'SOS', 'Ssh', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(99, 'Syrian Pound', 'SYP', 'ل.س.‏', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(100, 'Thai Baht', 'THB', '฿', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(101, 'Tunisian Dinar', 'TND', 'د.ت.‏', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(102, 'Tongan Pa\'anga', 'TOP', 'T$', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(103, 'Turkish Lira', 'TRY', 'TL', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(104, 'Trinidad and Tobago Dollar', 'TTD', '$', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(105, 'New Taiwan Dollar', 'TWD', 'NT$', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(106, 'Tanzanian Shilling', 'TZS', 'TSh', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(107, 'Ukrainian Hryvnia', 'UAH', '₴', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(108, 'Ugandan Shilling', 'UGX', 'USh', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(109, 'Uruguayan Peso', 'UYU', '$', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(110, 'Uzbekistan Som', 'UZS', 'UZS', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(111, 'Venezuelan Bolívar', 'VEF', 'Bs.F.', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(112, 'Vietnamese Dong', 'VND', '₫', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(113, 'CFA Franc BEAC', 'XAF', 'FCFA', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(114, 'CFA Franc BCEAO', 'XOF', 'CFA', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(115, 'Yemeni Rial', 'YER', 'ر.ي.‏', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(116, 'South African Rand', 'ZAR', 'R', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(117, 'Zambian Kwacha', 'ZMK', 'ZK', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(118, 'Zimbabwean Dollar', 'ZWL', 'ZWL$', 2, NULL, NULL, 0, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'History', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(2, 'Science', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(3, 'Arch', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16');

-- --------------------------------------------------------

--
-- Table structure for table `department_contacts`
--

CREATE TABLE `department_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department_contacts`
--

INSERT INTO `department_contacts` (`id`, `upload_id`, `name`, `phone`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 83, 'Admission', '+883459783849', 'admission@mail.Com', 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(2, 84, 'Examination', '+883459783849', 'examination@mail.Com', 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(3, 85, 'Library', '+883459783849', 'library@mail.Com', 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(4, 86, 'media', '+883459783849', 'media@mail.Com', 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'HRM', 1, '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(2, 'Admin', 1, '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(3, 'Accounts', 1, '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(4, 'Development', 1, '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(5, 'Software', 1, '2024-05-02 04:32:15', '2024-05-02 04:32:15');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `session_id`, `title`, `description`, `date`, `start_time`, `end_time`, `address`, `upload_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Meet the Teacher', 'A classic and fan favorite! In the cafeteria or auditorium, each grade level sets up a table to meet and greet their upcoming students and families. The tables can be decorated and small gifts such as pencils or snacks can be passed out. This is a great way for teachers to make a great first impression and for students to be less inclined to get those first day of school jitters.', '2024-05-02', '12:05:18', '12:05:18', 'Resemont Tower, House 148, Road 13/B, Block E Banani Dhaka 1213.', 45, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(2, 1, 'Trunk or Treat', 'Happening the week of Halloween, this can be a great alternative to a typical party and also allows students to celebrate outside of standard trick or treating (which we all know can be disastrous if landing on a school night). Parents and volunteers decorate the trunks of their cars and park in a circle around the parking lot. At the end of the day, students walk from car to car and collect candy and other treats. This is a great opportunity for members of the community to get involved and spend a little extra time with their kids! ', '2024-05-03', '12:05:18', '12:05:18', 'Resemont Tower, House 148, Road 13/B, Block E Banani Dhaka 1213.', 46, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(3, 1, 'Family Feast', 'This typically falls the week before Thanksgiving Break and is a great opportunity for families to join their children and teachers for a gratitude-centered meal. The feast can be donated from the community, made in-house, or a potluck depending on your school community! If you are looking for an easy way to get parents more involved in your classroom or school in general, this is the perfect place to start. ', '2024-05-04', '12:05:18', '12:05:18', 'Resemont Tower, House 148, Road 13/B, Block E Banani Dhaka 1213.', 47, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(4, 1, 'Camp Read Away ', 'Searching for a way to bring the great outdoors into the four walls of your classroom? This may be it! Teachers ask families to send in sheets, blankets, and flashlights. In partners, students work to create the best reading fort they can imagine. Then, lights out! For the rest of the time, students flashlight read independently or with a buddy. S’mores and other campfire friendly snacks can be provided as well, but are not necessary to make this a fun and exciting experience.', '2024-05-05', '12:05:18', '12:05:18', 'Resemont Tower, House 148, Road 13/B, Block E Banani Dhaka 1213.', 48, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(5, 1, 'Winter Art Contest', 'This is a great event for either the whole school or individual grade levels that have multiple classrooms. Teachers decide on a winter themed muse and have students create their own interpretation of it. Once all artwork is complete, students submit their masterpieces for voting. In order to make it fair, different grade levels or classrooms would vote on each others’ to avoid favoritism and give everyone a fair shot! Categories for voting could include most unique, most creative, the cutest, etc. and the winners could receive a virtual prize. ', '2024-05-06', '12:05:18', '12:05:18', 'Resemont Tower, House 148, Road 13/B, Block E Banani Dhaka 1213.', 49, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(6, 1, 'Holidays Around the World', 'This event is best held by individual grade levels to ensure there is adequate time in the schedule to fully enjoy the experience. Every classroom on a grade level picks a country that has a unique holiday tradition or celebration. Examples include Israel, Germany, England, Mexico, etc. The teacher in charge of each country plans a quick read-a-loud or video to teach the students about the tradition and its importance, as well as a craft activity. The students then spend the day rotating to each country to learn and experience cultures and fun traditions unlike their own. ', '2024-05-07', '12:05:18', '12:05:18', 'Resemont Tower, House 148, Road 13/B, Block E Banani Dhaka 1213.', 50, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(7, 1, 'Graduation Celebration', 'Celebrated each year on March 2nd, Read Across America Day was first established as a way to celebrate Dr. Suess’s birthday. Today, its main purpose is to motivate and help children become aware and celebrate good reading habits. Students from similar or different classrooms and grade levels are partnered up to buddy read and share in their love of reading. ', '2024-05-08', '12:05:18', '12:05:18', 'Resemont Tower, House 148, Road 13/B, Block E Banani Dhaka 1213.', 51, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(8, 1, 'Pie a Teacher', 'This is a take on the classic field day event that students across all grade levels typically participate in each year. Instead of the average activities such as a cakewalk or relay race, students are challenged across all areas of STEM! This event could include activities such as a paper plate marble race, clothespin geometry, paper airplane challenge, or an array of engineering building challenges. The opportunities are endless and this event will get your kids involved in the many aspects of STEM-based fun.', '2024-05-09', '12:05:18', '12:05:18', 'Resemont Tower, House 148, Road 13/B, Block E Banani Dhaka 1213.', 52, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(9, 1, 'Career Day', 'Elementary and Middle Schools arrange with their affiliate or nearby high school an event where soon-to-be graduates visit the school and take part in a parade. The graduates wear their gowns or college apparel and stroll through the music-filled hallways to be celebrated as well as get younger students thinking and excited about their own futures. Students lining the hallways are encouraged to wear apparel from their favorite university and cheer as the graduates parade through.', '2024-05-10', '12:05:18', '12:05:18', 'Resemont Tower, House 148, Road 13/B, Block E Banani Dhaka 1213.', 53, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(10, 1, 'Teacher vs. Student Competition', 'This event is the perfect class or school wide incentive, especially if they have a favorite teacher they would like to surprise with a splat! Once classes or grade levels reach their predetermined goal, a teacher is selected to get pied in the face in front of the whole student body. Maybe not the most fun for the targeted teacher, but a memorable experience for everyone else! ', '2024-05-11', '12:05:18', '12:05:18', 'Resemont Tower, House 148, Road 13/B, Block E Banani Dhaka 1213.', 54, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `examination_results`
--

CREATE TABLE `examination_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exam_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `classes_id` bigint(20) UNSIGNED DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL COMMENT 'Failed',
  `grade_name` varchar(255) DEFAULT NULL,
  `grade_point` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `total_marks` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `examination_settings`
--

CREATE TABLE `examination_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `examination_settings`
--

INSERT INTO `examination_settings` (`id`, `name`, `value`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 'average_pass_marks', '33', 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(2, 'average_pass_marks', '70', 2, '2024-05-03 08:10:40', '2024-05-03 08:10:40');

-- --------------------------------------------------------

--
-- Table structure for table `exam_assigns`
--

CREATE TABLE `exam_assigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `classes_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `exam_type_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `total_mark` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_assigns`
--

INSERT INTO `exam_assigns` (`id`, `session_id`, `classes_id`, `section_id`, `exam_type_id`, `subject_id`, `total_mark`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 1, 1, 100.00, '2024-05-03 08:00:19', '2024-05-03 08:00:19');

-- --------------------------------------------------------

--
-- Table structure for table `exam_assign_childrens`
--

CREATE TABLE `exam_assign_childrens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_assign_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `mark` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_assign_childrens`
--

INSERT INTO `exam_assign_childrens` (`id`, `exam_assign_id`, `title`, `mark`, `created_at`, `updated_at`) VALUES
(1, 1, 'written', 100.00, '2024-05-03 08:00:19', '2024-05-03 08:00:19');

-- --------------------------------------------------------

--
-- Table structure for table `exam_routines`
--

CREATE TABLE `exam_routines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `classes_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `type_id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_routines`
--

INSERT INTO `exam_routines` (`id`, `session_id`, `classes_id`, `section_id`, `type_id`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, '2024-05-03', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(2, 1, 1, 1, 1, '2024-05-04', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(3, 1, 1, 1, 1, '2024-05-05', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(4, 1, 1, 1, 1, '2024-05-06', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(5, 1, 1, 1, 2, '2024-05-03', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(6, 1, 1, 1, 2, '2024-05-04', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(7, 1, 1, 1, 2, '2024-05-05', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(8, 1, 1, 1, 2, '2024-05-06', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(9, 1, 1, 1, 3, '2024-05-03', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(10, 1, 1, 1, 3, '2024-05-04', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(11, 1, 1, 1, 3, '2024-05-05', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(12, 1, 1, 1, 3, '2024-05-06', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(13, 1, 1, 2, 1, '2024-05-03', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(14, 1, 1, 2, 1, '2024-05-04', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(15, 1, 1, 2, 1, '2024-05-05', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(16, 1, 1, 2, 1, '2024-05-06', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(17, 1, 1, 2, 2, '2024-05-03', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(18, 1, 1, 2, 2, '2024-05-04', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(19, 1, 1, 2, 2, '2024-05-05', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(20, 1, 1, 2, 2, '2024-05-06', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(21, 1, 1, 2, 3, '2024-05-03', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(22, 1, 1, 2, 3, '2024-05-04', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(23, 1, 1, 2, 3, '2024-05-05', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(24, 1, 1, 2, 3, '2024-05-06', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(25, 1, 2, 1, 1, '2024-05-03', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(26, 1, 2, 1, 1, '2024-05-04', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(27, 1, 2, 1, 1, '2024-05-05', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(28, 1, 2, 1, 1, '2024-05-06', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(29, 1, 2, 1, 2, '2024-05-03', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(30, 1, 2, 1, 2, '2024-05-04', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(31, 1, 2, 1, 2, '2024-05-05', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(32, 1, 2, 1, 2, '2024-05-06', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(33, 1, 2, 1, 3, '2024-05-03', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(34, 1, 2, 1, 3, '2024-05-04', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(35, 1, 2, 1, 3, '2024-05-05', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(36, 1, 2, 1, 3, '2024-05-06', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(37, 1, 2, 2, 1, '2024-05-03', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(38, 1, 2, 2, 1, '2024-05-04', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(39, 1, 2, 2, 1, '2024-05-05', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(40, 1, 2, 2, 1, '2024-05-06', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(41, 1, 2, 2, 2, '2024-05-03', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(42, 1, 2, 2, 2, '2024-05-04', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(43, 1, 2, 2, 2, '2024-05-05', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(44, 1, 2, 2, 2, '2024-05-06', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(45, 1, 2, 2, 3, '2024-05-03', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(46, 1, 2, 2, 3, '2024-05-04', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(47, 1, 2, 2, 3, '2024-05-05', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(48, 1, 2, 2, 3, '2024-05-06', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(49, 1, 3, 1, 1, '2024-05-03', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(50, 1, 3, 1, 1, '2024-05-04', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(51, 1, 3, 1, 1, '2024-05-05', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(52, 1, 3, 1, 1, '2024-05-06', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(53, 1, 3, 1, 2, '2024-05-03', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(54, 1, 3, 1, 2, '2024-05-04', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(55, 1, 3, 1, 2, '2024-05-05', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(56, 1, 3, 1, 2, '2024-05-06', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(57, 1, 3, 1, 3, '2024-05-03', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(58, 1, 3, 1, 3, '2024-05-04', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(59, 1, 3, 1, 3, '2024-05-05', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(60, 1, 3, 1, 3, '2024-05-06', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(61, 1, 3, 2, 1, '2024-05-03', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(62, 1, 3, 2, 1, '2024-05-04', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(63, 1, 3, 2, 1, '2024-05-05', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(64, 1, 3, 2, 1, '2024-05-06', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(65, 1, 3, 2, 2, '2024-05-03', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(66, 1, 3, 2, 2, '2024-05-04', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(67, 1, 3, 2, 2, '2024-05-05', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(68, 1, 3, 2, 2, '2024-05-06', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(69, 1, 3, 2, 3, '2024-05-03', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(70, 1, 3, 2, 3, '2024-05-04', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(71, 1, 3, 2, 3, '2024-05-05', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(72, 1, 3, 2, 3, '2024-05-06', '2024-05-02 04:32:17', '2024-05-02 04:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `exam_routine_childrens`
--

CREATE TABLE `exam_routine_childrens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_routine_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `time_schedule_id` bigint(20) UNSIGNED NOT NULL,
  `class_room_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_routine_childrens`
--

INSERT INTO `exam_routine_childrens` (`id`, `exam_routine_id`, `subject_id`, `time_schedule_id`, `class_room_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 2, 2, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(2, 2, 3, 3, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(3, 3, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(4, 4, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(5, 5, 2, 2, 2, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(6, 6, 3, 3, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(7, 7, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(8, 8, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(9, 9, 2, 2, 2, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(10, 10, 3, 3, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(11, 11, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(12, 12, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(13, 13, 2, 2, 2, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(14, 14, 3, 3, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(15, 15, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(16, 16, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(17, 17, 2, 2, 2, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(18, 18, 3, 3, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(19, 19, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(20, 20, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(21, 21, 2, 2, 2, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(22, 22, 3, 3, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(23, 23, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(24, 24, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(25, 25, 3, 3, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(26, 26, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(27, 27, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(28, 28, 6, 6, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(29, 29, 3, 3, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(30, 30, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(31, 31, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(32, 32, 6, 6, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(33, 33, 3, 3, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(34, 34, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(35, 35, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(36, 36, 6, 6, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(37, 37, 3, 3, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(38, 38, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(39, 39, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(40, 40, 6, 6, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(41, 41, 3, 3, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(42, 42, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(43, 43, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(44, 44, 6, 6, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(45, 45, 3, 3, 3, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(46, 46, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(47, 47, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(48, 48, 6, 6, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(49, 49, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(50, 50, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(51, 51, 6, 6, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(52, 52, 7, 7, 7, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(53, 53, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(54, 54, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(55, 55, 6, 6, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(56, 56, 7, 7, 7, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(57, 57, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(58, 58, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(59, 59, 6, 6, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(60, 60, 7, 7, 7, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(61, 61, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(62, 62, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(63, 63, 6, 6, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(64, 64, 7, 7, 7, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(65, 65, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(66, 66, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(67, 67, 6, 6, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(68, 68, 7, 7, 7, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(69, 69, 4, 4, 4, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(70, 70, 5, 5, 5, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(71, 71, 6, 6, 6, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(72, 72, 7, 7, 7, '2024-05-02 04:32:17', '2024-05-02 04:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `exam_types`
--

CREATE TABLE `exam_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_types`
--

INSERT INTO `exam_types` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'First', 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(2, 'Mid', 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(3, 'Final', 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(4, 'Practical', 1, '2024-05-03 07:58:20', '2024-05-03 07:58:20');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `expense_head` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `invoice_number` varchar(255) DEFAULT NULL,
  `amount` decimal(16,2) DEFAULT NULL,
  `upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `fees_assigns`
--

CREATE TABLE `fees_assigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `classes_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gender_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fees_group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees_assign_childrens`
--

CREATE TABLE `fees_assign_childrens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fees_assign_id` bigint(20) UNSIGNED NOT NULL,
  `fees_master_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees_collects`
--

CREATE TABLE `fees_collects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `payment_method` tinyint(4) DEFAULT NULL,
  `payment_gateway` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `fees_assign_children_id` bigint(20) UNSIGNED NOT NULL,
  `fees_collect_by` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(16,2) DEFAULT NULL COMMENT 'total amount + fine',
  `fine_amount` decimal(16,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees_groups`
--

CREATE TABLE `fees_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_groups`
--

INSERT INTO `fees_groups` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Monthly fees', 'Fees Group Description. Lorem ipsum dolor sit amet et justo od 1', 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(2, 'Exam fees', 'Fees Group Description. Lorem ipsum dolor sit amet et justo od 2', 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `fees_masters`
--

CREATE TABLE `fees_masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `fees_group_id` bigint(20) UNSIGNED NOT NULL,
  `fees_type_id` bigint(20) UNSIGNED NOT NULL,
  `due_date` date DEFAULT NULL,
  `amount` decimal(16,2) DEFAULT 0.00,
  `fine_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = none, 1 = percentage, 2 = fixed',
  `percentage` int(11) DEFAULT 0,
  `fine_amount` decimal(16,2) DEFAULT 0.00,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_masters`
--

INSERT INTO `fees_masters` (`id`, `session_id`, `fees_group_id`, `fees_type_id`, `due_date`, `amount`, `fine_type`, `percentage`, `fine_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2024-05-02', 1000.00, 0, 0, 0.00, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(2, 1, 1, 2, '2024-05-02', 1000.00, 0, 0, 0.00, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(3, 1, 1, 3, '2024-05-02', 1000.00, 0, 0, 0.00, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(4, 1, 1, 4, '2024-05-02', 1000.00, 0, 0, 0.00, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(5, 1, 1, 5, '2024-05-02', 1000.00, 0, 0, 0.00, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(6, 1, 2, 6, '2024-05-02', 1000.00, 0, 0, 0.00, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(7, 1, 2, 7, '2024-05-02', 1000.00, 0, 0, 0.00, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(8, 1, 2, 8, '2024-05-02', 1000.00, 0, 0, 0.00, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `fees_master_childrens`
--

CREATE TABLE `fees_master_childrens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fees_master_id` bigint(20) UNSIGNED NOT NULL,
  `fees_type_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees_types`
--

CREATE TABLE `fees_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_types`
--

INSERT INTO `fees_types` (`id`, `name`, `code`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'january months fee', 'january months fee', 'january months fee Fees Type Description. Lorem ipsum dolor sit amet et justo od 1', 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(2, 'february month fee', 'february month fee', 'february month fee Fees Type Description. Lorem ipsum dolor sit amet et justo od 1', 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(3, 'march month fee', 'march month fee', 'march month fee Fees Type Description. Lorem ipsum dolor sit amet et justo od 1', 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(4, 'april month fee', 'april month fee', 'april month fee Fees Type Description. Lorem ipsum dolor sit amet et justo od 1', 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(5, 'may month fee', 'may month fee', 'may month fee Fees Type Description. Lorem ipsum dolor sit amet et justo od 1', 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(6, 'first term fee', 'first term fee', 'first term fee Fees Type Description. Lorem ipsum dolor sit amet et justo od 1', 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(7, '2nd term fee', '2nd term fee', '2nd term fee Fees Type Description. Lorem ipsum dolor sit amet et justo od 1', 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(8, 'last term fee', 'last term fee', 'last term fee Fees Type Description. Lorem ipsum dolor sit amet et justo od 1', 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `flag_icons`
--

CREATE TABLE `flag_icons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon_class` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flag_icons`
--

INSERT INTO `flag_icons` (`id`, `icon_class`, `title`, `created_at`, `updated_at`) VALUES
(1, 'flag-icon flag-icon-ad', 'ad', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(2, 'flag-icon flag-icon-ae', 'ae', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(3, 'flag-icon flag-icon-af', 'af', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(4, 'flag-icon flag-icon-ag', 'ag', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(5, 'flag-icon flag-icon-ai', 'ai', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(6, 'flag-icon flag-icon-al', 'al', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(7, 'flag-icon flag-icon-am', 'am', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(8, 'flag-icon flag-icon-ao', 'ao', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(9, 'flag-icon flag-icon-aq', 'aq', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(10, 'flag-icon flag-icon-ar', 'ar', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(11, 'flag-icon flag-icon-as', 'as', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(12, 'flag-icon flag-icon-at', 'at', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(13, 'flag-icon flag-icon-au', 'au', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(14, 'flag-icon flag-icon-aw', 'aw', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(15, 'flag-icon flag-icon-ax', 'ax', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(16, 'flag-icon flag-icon-az', 'az', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(17, 'flag-icon flag-icon-ba', 'ba', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(18, 'flag-icon flag-icon-bb', 'bb', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(19, 'flag-icon flag-icon-bd', 'bd', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(20, 'flag-icon flag-icon-be', 'be', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(21, 'flag-icon flag-icon-bf', 'bf', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(22, 'flag-icon flag-icon-bg', 'bg', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(23, 'flag-icon flag-icon-bh', 'bh', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(24, 'flag-icon flag-icon-bi', 'bi', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(25, 'flag-icon flag-icon-bj', 'bj', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(26, 'flag-icon flag-icon-bl', 'bl', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(27, 'flag-icon flag-icon-bm', 'bm', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(28, 'flag-icon flag-icon-bn', 'bn', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(29, 'flag-icon flag-icon-bo', 'bo', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(30, 'flag-icon flag-icon-bq', 'bq', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(31, 'flag-icon flag-icon-br', 'br', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(32, 'flag-icon flag-icon-bs', 'bs', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(33, 'flag-icon flag-icon-bt', 'bt', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(34, 'flag-icon flag-icon-bv', 'bv', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(35, 'flag-icon flag-icon-bw', 'bw', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(36, 'flag-icon flag-icon-by', 'by', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(37, 'flag-icon flag-icon-bz', 'bz', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(38, 'flag-icon flag-icon-ca', 'ca', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(39, 'flag-icon flag-icon-cc', 'cc', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(40, 'flag-icon flag-icon-cd', 'cd', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(41, 'flag-icon flag-icon-cf', 'cf', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(42, 'flag-icon flag-icon-cg', 'cg', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(43, 'flag-icon flag-icon-ch', 'ch', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(44, 'flag-icon flag-icon-ci', 'ci', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(45, 'flag-icon flag-icon-ck', 'ck', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(46, 'flag-icon flag-icon-cl', 'cl', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(47, 'flag-icon flag-icon-cm', 'cm', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(48, 'flag-icon flag-icon-cn', 'cn', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(49, 'flag-icon flag-icon-co', 'co', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(50, 'flag-icon flag-icon-cr', 'cr', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(51, 'flag-icon flag-icon-cu', 'cu', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(52, 'flag-icon flag-icon-cv', 'cv', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(53, 'flag-icon flag-icon-cw', 'cw', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(54, 'flag-icon flag-icon-cx', 'cx', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(55, 'flag-icon flag-icon-cy', 'cy', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(56, 'flag-icon flag-icon-cz', 'cz', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(57, 'flag-icon flag-icon-de', 'de', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(58, 'flag-icon flag-icon-dj', 'dj', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(59, 'flag-icon flag-icon-dk', 'dk', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(60, 'flag-icon flag-icon-dm', 'dm', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(61, 'flag-icon flag-icon-do', 'do', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(62, 'flag-icon flag-icon-dz', 'dz', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(63, 'flag-icon flag-icon-ec', 'ec', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(64, 'flag-icon flag-icon-ee', 'ee', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(65, 'flag-icon flag-icon-eg', 'eg', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(66, 'flag-icon flag-icon-eh', 'eh', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(67, 'flag-icon flag-icon-er', 'er', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(68, 'flag-icon flag-icon-es', 'es', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(69, 'flag-icon flag-icon-et', 'et', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(70, 'flag-icon flag-icon-fi', 'fi', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(71, 'flag-icon flag-icon-fj', 'fj', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(72, 'flag-icon flag-icon-fk', 'fk', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(73, 'flag-icon flag-icon-fm', 'fm', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(74, 'flag-icon flag-icon-fo', 'fo', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(75, 'flag-icon flag-icon-fr', 'fr', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(76, 'flag-icon flag-icon-ga', 'ga', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(77, 'flag-icon flag-icon-gb', 'gb', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(78, 'flag-icon flag-icon-gd', 'gd', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(79, 'flag-icon flag-icon-ge', 'ge', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(80, 'flag-icon flag-icon-gf', 'gf', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(81, 'flag-icon flag-icon-gg', 'gg', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(82, 'flag-icon flag-icon-gh', 'gh', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(83, 'flag-icon flag-icon-gi', 'gi', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(84, 'flag-icon flag-icon-gl', 'gl', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(85, 'flag-icon flag-icon-gm', 'gm', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(86, 'flag-icon flag-icon-gn', 'gn', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(87, 'flag-icon flag-icon-gp', 'gp', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(88, 'flag-icon flag-icon-gq', 'gq', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(89, 'flag-icon flag-icon-gr', 'gr', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(90, 'flag-icon flag-icon-gs', 'gs', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(91, 'flag-icon flag-icon-gt', 'gt', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(92, 'flag-icon flag-icon-gu', 'gu', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(93, 'flag-icon flag-icon-gw', 'gw', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(94, 'flag-icon flag-icon-gy', 'gy', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(95, 'flag-icon flag-icon-hk', 'hk', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(96, 'flag-icon flag-icon-hm', 'hm', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(97, 'flag-icon flag-icon-hn', 'hn', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(98, 'flag-icon flag-icon-hr', 'hr', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(99, 'flag-icon flag-icon-ht', 'ht', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(100, 'flag-icon flag-icon-hu', 'hu', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(101, 'flag-icon flag-icon-id', 'id', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(102, 'flag-icon flag-icon-ie', 'ie', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(103, 'flag-icon flag-icon-il', 'il', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(104, 'flag-icon flag-icon-im', 'im', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(105, 'flag-icon flag-icon-in', 'in', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(106, 'flag-icon flag-icon-io', 'io', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(107, 'flag-icon flag-icon-iq', 'iq', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(108, 'flag-icon flag-icon-ir', 'ir', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(109, 'flag-icon flag-icon-is', 'is', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(110, 'flag-icon flag-icon-it', 'it', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(111, 'flag-icon flag-icon-je', 'je', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(112, 'flag-icon flag-icon-jm', 'jm', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(113, 'flag-icon flag-icon-jo', 'jo', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(114, 'flag-icon flag-icon-jp', 'jp', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(115, 'flag-icon flag-icon-ke', 'ke', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(116, 'flag-icon flag-icon-kg', 'kg', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(117, 'flag-icon flag-icon-kh', 'kh', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(118, 'flag-icon flag-icon-ki', 'ki', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(119, 'flag-icon flag-icon-km', 'km', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(120, 'flag-icon flag-icon-kn', 'kn', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(121, 'flag-icon flag-icon-kp', 'kp', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(122, 'flag-icon flag-icon-kr', 'kr', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(123, 'flag-icon flag-icon-kw', 'kw', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(124, 'flag-icon flag-icon-ky', 'ky', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(125, 'flag-icon flag-icon-kz', 'kz', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(126, 'flag-icon flag-icon-la', 'la', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(127, 'flag-icon flag-icon-lb', 'lb', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(128, 'flag-icon flag-icon-lc', 'lc', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(129, 'flag-icon flag-icon-li', 'li', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(130, 'flag-icon flag-icon-lk', 'lk', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(131, 'flag-icon flag-icon-lr', 'lr', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(132, 'flag-icon flag-icon-ls', 'ls', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(133, 'flag-icon flag-icon-lt', 'lt', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(134, 'flag-icon flag-icon-lu', 'lu', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(135, 'flag-icon flag-icon-lv', 'lv', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(136, 'flag-icon flag-icon-ly', 'ly', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(137, 'flag-icon flag-icon-ma', 'ma', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(138, 'flag-icon flag-icon-mc', 'mc', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(139, 'flag-icon flag-icon-md', 'md', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(140, 'flag-icon flag-icon-me', 'me', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(141, 'flag-icon flag-icon-mf', 'mf', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(142, 'flag-icon flag-icon-mg', 'mg', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(143, 'flag-icon flag-icon-mh', 'mh', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(144, 'flag-icon flag-icon-mk', 'mk', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(145, 'flag-icon flag-icon-ml', 'ml', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(146, 'flag-icon flag-icon-mm', 'mm', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(147, 'flag-icon flag-icon-mn', 'mn', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(148, 'flag-icon flag-icon-mo', 'mo', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(149, 'flag-icon flag-icon-mp', 'mp', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(150, 'flag-icon flag-icon-mq', 'mq', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(151, 'flag-icon flag-icon-mr', 'mr', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(152, 'flag-icon flag-icon-ms', 'ms', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(153, 'flag-icon flag-icon-mt', 'mt', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(154, 'flag-icon flag-icon-mu', 'mu', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(155, 'flag-icon flag-icon-mv', 'mv', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(156, 'flag-icon flag-icon-mw', 'mw', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(157, 'flag-icon flag-icon-mx', 'mx', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(158, 'flag-icon flag-icon-my', 'my', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(159, 'flag-icon flag-icon-mz', 'mz', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(160, 'flag-icon flag-icon-na', 'na', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(161, 'flag-icon flag-icon-nc', 'nc', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(162, 'flag-icon flag-icon-ne', 'ne', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(163, 'flag-icon flag-icon-nf', 'nf', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(164, 'flag-icon flag-icon-ng', 'ng', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(165, 'flag-icon flag-icon-ni', 'ni', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(166, 'flag-icon flag-icon-nl', 'nl', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(167, 'flag-icon flag-icon-no', 'no', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(168, 'flag-icon flag-icon-np', 'np', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(169, 'flag-icon flag-icon-nr', 'nr', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(170, 'flag-icon flag-icon-nu', 'nu', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(171, 'flag-icon flag-icon-nz', 'nz', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(172, 'flag-icon flag-icon-om', 'om', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(173, 'flag-icon flag-icon-pa', 'pa', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(174, 'flag-icon flag-icon-pe', 'pe', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(175, 'flag-icon flag-icon-pf', 'pf', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(176, 'flag-icon flag-icon-pg', 'pg', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(177, 'flag-icon flag-icon-ph', 'ph', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(178, 'flag-icon flag-icon-pk', 'pk', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(179, 'flag-icon flag-icon-pl', 'pl', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(180, 'flag-icon flag-icon-pm', 'pm', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(181, 'flag-icon flag-icon-pn', 'pn', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(182, 'flag-icon flag-icon-pr', 'pr', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(183, 'flag-icon flag-icon-ps', 'ps', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(184, 'flag-icon flag-icon-pt', 'pt', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(185, 'flag-icon flag-icon-pw', 'pw', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(186, 'flag-icon flag-icon-py', 'py', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(187, 'flag-icon flag-icon-qa', 'qa', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(188, 'flag-icon flag-icon-re', 're', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(189, 'flag-icon flag-icon-ro', 'ro', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(190, 'flag-icon flag-icon-rs', 'rs', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(191, 'flag-icon flag-icon-ru', 'ru', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(192, 'flag-icon flag-icon-rw', 'rw', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(193, 'flag-icon flag-icon-sa', 'sa', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(194, 'flag-icon flag-icon-sb', 'sb', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(195, 'flag-icon flag-icon-sc', 'sc', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(196, 'flag-icon flag-icon-sd', 'sd', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(197, 'flag-icon flag-icon-se', 'se', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(198, 'flag-icon flag-icon-sg', 'sg', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(199, 'flag-icon flag-icon-sh', 'sh', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(200, 'flag-icon flag-icon-si', 'si', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(201, 'flag-icon flag-icon-sj', 'sj', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(202, 'flag-icon flag-icon-sk', 'sk', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(203, 'flag-icon flag-icon-sl', 'sl', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(204, 'flag-icon flag-icon-sm', 'sm', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(205, 'flag-icon flag-icon-sn', 'sn', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(206, 'flag-icon flag-icon-so', 'so', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(207, 'flag-icon flag-icon-sr', 'sr', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(208, 'flag-icon flag-icon-ss', 'ss', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(209, 'flag-icon flag-icon-st', 'st', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(210, 'flag-icon flag-icon-sv', 'sv', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(211, 'flag-icon flag-icon-sx', 'sx', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(212, 'flag-icon flag-icon-sy', 'sy', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(213, 'flag-icon flag-icon-sz', 'sz', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(214, 'flag-icon flag-icon-tc', 'tc', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(215, 'flag-icon flag-icon-td', 'td', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(216, 'flag-icon flag-icon-tf', 'tf', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(217, 'flag-icon flag-icon-tg', 'tg', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(218, 'flag-icon flag-icon-th', 'th', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(219, 'flag-icon flag-icon-tj', 'tj', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(220, 'flag-icon flag-icon-tk', 'tk', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(221, 'flag-icon flag-icon-tl', 'tl', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(222, 'flag-icon flag-icon-tm', 'tm', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(223, 'flag-icon flag-icon-tn', 'tn', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(224, 'flag-icon flag-icon-to', 'to', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(225, 'flag-icon flag-icon-tr', 'tr', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(226, 'flag-icon flag-icon-tt', 'tt', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(227, 'flag-icon flag-icon-tv', 'tv', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(228, 'flag-icon flag-icon-tw', 'tw', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(229, 'flag-icon flag-icon-tz', 'tz', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(230, 'flag-icon flag-icon-ua', 'ua', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(231, 'flag-icon flag-icon-ug', 'ug', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(232, 'flag-icon flag-icon-um', 'um', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(233, 'flag-icon flag-icon-us', 'us', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(234, 'flag-icon flag-icon-uy', 'uy', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(235, 'flag-icon flag-icon-uz', 'uz', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(236, 'flag-icon flag-icon-va', 'va', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(237, 'flag-icon flag-icon-vc', 'vc', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(238, 'flag-icon flag-icon-ve', 've', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(239, 'flag-icon flag-icon-vg', 'vg', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(240, 'flag-icon flag-icon-vi', 'vi', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(241, 'flag-icon flag-icon-vn', 'vn', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(242, 'flag-icon flag-icon-vu', 'vu', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(243, 'flag-icon flag-icon-wf', 'wf', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(244, 'flag-icon flag-icon-ws', 'ws', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(245, 'flag-icon flag-icon-ye', 'ye', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(246, 'flag-icon flag-icon-yt', 'yt', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(247, 'flag-icon flag-icon-za', 'za', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(248, 'flag-icon flag-icon-zm', 'zm', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(249, 'flag-icon flag-icon-zw', 'zw', '2024-05-02 04:32:16', '2024-05-02 04:32:16');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gallery_category_id` bigint(20) UNSIGNED NOT NULL,
  `upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `gallery_category_id`, `upload_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 55, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(2, 4, 56, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(3, 3, 57, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(4, 2, 58, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(5, 1, 59, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(6, 4, 60, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(7, 3, 61, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(8, 2, 62, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(9, 3, 63, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(10, 2, 64, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(11, 4, 65, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(12, 3, 66, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(13, 3, 67, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(14, 2, 68, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(15, 4, 69, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(16, 3, 70, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(17, 3, 71, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(18, 2, 72, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(19, 1, 73, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(20, 4, 74, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(21, 2, 75, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(22, 2, 76, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(23, 2, 77, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(24, 4, 78, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_categories`
--

CREATE TABLE `gallery_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_categories`
--

INSERT INTO `gallery_categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admission', 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(2, 'Annual Program', 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(3, 'Awards', 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(4, 'Curriculum', 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Male', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(2, 'Female', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16');

-- --------------------------------------------------------

--
-- Table structure for table `gmeets`
--

CREATE TABLE `gmeets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `gmeet_link` varchar(255) NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `classes_id` bigint(20) UNSIGNED DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homework`
--

CREATE TABLE `homework` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `classes_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `submission_date` date DEFAULT NULL,
  `marks` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `document_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homework_students`
--

CREATE TABLE `homework_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `homework_id` bigint(20) UNSIGNED NOT NULL,
  `homework` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `marks` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `id_cards`
--

CREATE TABLE `id_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `expired_date` date DEFAULT NULL,
  `frontside_bg_image` bigint(20) UNSIGNED DEFAULT NULL,
  `backside_bg_image` bigint(20) UNSIGNED DEFAULT NULL,
  `signature` bigint(20) UNSIGNED DEFAULT NULL,
  `qr_code` bigint(20) UNSIGNED DEFAULT NULL,
  `backside_description` text DEFAULT NULL,
  `student_name` tinyint(1) NOT NULL DEFAULT 1,
  `admission_no` tinyint(1) NOT NULL DEFAULT 1,
  `roll_no` tinyint(1) NOT NULL DEFAULT 1,
  `class_name` tinyint(1) NOT NULL DEFAULT 1,
  `section_name` tinyint(1) NOT NULL DEFAULT 1,
  `blood_group` tinyint(1) NOT NULL DEFAULT 1,
  `dob` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `incomes`
--

CREATE TABLE `incomes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `income_head` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `invoice_number` varchar(255) DEFAULT NULL,
  `amount` decimal(16,2) DEFAULT NULL,
  `upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `fees_collect_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `issue_books`
--

CREATE TABLE `issue_books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `issue_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `icon_class` varchar(255) DEFAULT NULL,
  `direction` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `icon_class`, `direction`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 'flag-icon flag-icon-us', 'ltr', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(2, 'Bangla', 'bn', 'flag-icon flag-icon-bd', 'ltr', '2024-05-02 04:32:16', '2024-05-02 04:32:16');

-- --------------------------------------------------------

--
-- Table structure for table `marks_grades`
--

CREATE TABLE `marks_grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `percent_from` double(8,2) NOT NULL,
  `percent_upto` double(8,2) NOT NULL,
  `point` varchar(255) NOT NULL,
  `remarks` text NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marks_grades`
--

INSERT INTO `marks_grades` (`id`, `name`, `percent_from`, `percent_upto`, `point`, `remarks`, `session_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'A+', 80.00, 100.00, '5.00', 'A+', 1, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(2, 'A', 70.00, 79.00, '4.5', 'A', 1, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(3, 'A-', 60.00, 69.00, '4.00', 'A-', 1, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(4, 'B', 50.00, 59.00, '3', 'B', 1, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(5, 'C', 40.00, 49.00, '2.00', 'C', 1, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(6, 'D', 33.00, 39.00, '1.00', 'D', 1, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(7, 'F', 0.00, 32.00, '0.00', 'F', 1, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `marks_registers`
--

CREATE TABLE `marks_registers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `classes_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `exam_type_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marks_registers`
--

INSERT INTO `marks_registers` (`id`, `session_id`, `classes_id`, `section_id`, `exam_type_id`, `subject_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 1, 1, '2024-05-03 08:00:46', '2024-05-03 08:00:46');

-- --------------------------------------------------------

--
-- Table structure for table `marks_register_childrens`
--

CREATE TABLE `marks_register_childrens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `marks_register_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `mark` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marks_register_childrens`
--

INSERT INTO `marks_register_childrens` (`id`, `marks_register_id`, `student_id`, `title`, `mark`, `created_at`, `updated_at`) VALUES
(3, 1, 1, 'written', 95.00, '2024-05-03 08:11:17', '2024-05-03 08:11:17');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_categories`
--

CREATE TABLE `member_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2013_08_03_072002_create_uploads_table', 1),
(2, '2013_08_03_072003_create_roles_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2022_07_19_045514_create_flag_icons_table', 1),
(7, '2022_08_08_043550_create_permissions_table', 1),
(8, '2022_08_16_103633_create_settings_table', 1),
(9, '2022_08_17_092623_create_languages_table', 1),
(10, '2022_10_04_044255_create_searches_table', 1),
(11, '2022_10_13_064230_create_designations_table', 1),
(12, '2023_02_20_101104_create_genders_table', 1),
(13, '2023_02_22_044252_create_religions_table', 1),
(14, '2023_02_22_053608_create_blood_groups_table', 1),
(15, '2023_02_22_070416_create_sessions_table', 1),
(16, '2023_02_22_100221_create_classes_table', 1),
(17, '2023_02_22_102118_create_student_categories_table', 1),
(18, '2023_02_22_115507_create_sections_table', 1),
(19, '2023_02_23_042918_create_shifts_table', 1),
(20, '2023_02_23_081806_create_subjects_table', 1),
(21, '2023_02_23_095042_create_parent_guardians_table', 1),
(22, '2023_02_24_124400_create_students_table', 1),
(23, '2023_02_25_052716_create_class_rooms_table', 1),
(24, '2023_02_25_071052_create_fees_groups_table', 1),
(25, '2023_02_25_091226_create_fees_types_table', 1),
(26, '2023_02_25_102359_create_fees_masters_table', 1),
(27, '2023_02_26_113001_create_departments_table', 1),
(28, '2023_02_27_045430_create_staff_table', 1),
(29, '2023_02_28_051437_create_exam_types_table', 1),
(30, '2023_02_28_065459_create_class_setups_table', 1),
(31, '2023_02_28_065614_create_class_setup_childrens_table', 1),
(32, '2023_02_28_090453_create_session_class_students_table', 1),
(33, '2023_03_01_115144_create_subject_assigns_table', 1),
(34, '2023_03_01_115229_create_subject_assign_childrens_table', 1),
(35, '2023_03_03_114236_create_marks_grades_table', 1),
(36, '2023_03_07_062402_create_exam_assigns_table', 1),
(37, '2023_03_12_053023_create_fees_assigns_table', 1),
(38, '2023_03_12_053024_create_fees_assign_childrens_table', 1),
(39, '2023_03_12_053025_create_account_heads_table', 1),
(40, '2023_03_12_053025_create_fees_collects_table', 1),
(41, '2023_03_12_053026_create_incomes_table', 1),
(42, '2023_03_12_090806_create_expenses_table', 1),
(43, '2023_03_13_054359_create_marks_registers_table', 1),
(44, '2023_03_13_101938_create_exam_assign_childrens_table', 1),
(45, '2023_03_13_132615_create_marks_register_childrens_table', 1),
(46, '2023_03_14_090857_create_fees_master_childrens_table', 1),
(47, '2023_03_17_113815_create_promote_students_table', 1),
(48, '2023_03_22_062320_create_time_schedules_table', 1),
(49, '2023_03_22_062321_create_class_routines_table', 1),
(50, '2023_03_24_053514_create_class_routine_childrens_table', 1),
(51, '2023_04_07_045518_create_exam_routines_table', 1),
(52, '2023_04_07_045719_create_exam_routine_childrens_table', 1),
(53, '2023_04_27_105438_create_examination_settings_table', 1),
(54, '2023_04_28_093751_create_sliders_table', 1),
(55, '2023_04_28_105549_create_counters_table', 1),
(56, '2023_04_30_070252_create_news_table', 1),
(57, '2023_04_30_123236_create_examination_results_table', 1),
(58, '2023_05_02_054153_create_gallery_categories_table', 1),
(59, '2023_05_02_060903_create_galleries_table', 1),
(60, '2023_05_03_033302_create_attendances_table', 1),
(61, '2023_05_09_095159_create_events_table', 1),
(62, '2023_05_18_095505_create_page_sections_table', 1),
(63, '2023_05_21_104600_create_contact_infos_table', 1),
(64, '2023_05_21_122123_create_department_contacts_table', 1),
(65, '2023_05_22_045924_create_contacts_table', 1),
(66, '2023_05_22_095703_create_subscribes_table', 1),
(67, '2023_05_24_044715_create_abouts_table', 1),
(68, '2023_06_14_071848_create_online_admissions_table', 1),
(69, '2023_06_17_090920_create_book_categories_table', 1),
(70, '2023_06_18_080708_create_books_table', 1),
(71, '2023_06_18_091300_create_member_categories_table', 1),
(72, '2023_06_18_091301_create_members_table', 1),
(73, '2023_06_18_093638_create_issue_books_table', 1),
(74, '2023_06_22_044425_create_homework_table', 1),
(75, '2023_07_12_083329_add_user_type_column_in_searches_table', 1),
(76, '2023_07_18_045644_create_question_groups_table', 1),
(77, '2023_07_18_055005_create_question_banks_table', 1),
(78, '2023_07_18_091545_create_question_bank_childrens_table', 1),
(79, '2023_07_19_085237_create_online_exams_table', 1),
(80, '2023_07_20_074247_create_online_exam_children_students_table', 1),
(81, '2023_07_20_074318_create_online_exam_children_questions_table', 1),
(82, '2023_07_26_041901_create_answers_table', 1),
(83, '2023_07_26_041949_create_answer_childrens_table', 1),
(84, '2023_07_28_150210_create_currencies_table', 1),
(85, '2023_08_02_132147_add_payment_gateway_and_transaction_id_in_fees_collects_table', 1),
(86, '2023_08_02_132147_update_version_v1_3_table', 1),
(87, '2023_08_30_111142_create_subscriptions_table', 1),
(88, '2023_11_10_120311_create_homework_students_table', 1),
(89, '2023_11_14_155008_create_id_cards_table', 1),
(90, '2023_11_15_152219_create_certificates_table', 1),
(91, '2023_11_22_113507_create_gmeets_table', 1),
(92, '2023_11_23_122832_create_notice_boards_table', 1),
(93, '2023_11_27_122348_create_sms_mail_templates_table', 1),
(94, '2023_11_28_123854_create_sms_mail_logs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `date`, `publish_date`, `upload_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '20+ Academic Curriculum We Done!0', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', '2024-05-01', '2024-05-02', 19, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(2, '20+ Academic Curriculum We Done!1', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', '2024-04-30', '2024-05-02', 20, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(3, '20+ Academic Curriculum We Done!2', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', '2024-04-29', '2024-05-02', 21, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(4, '20+ Academic Curriculum We Done!3', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', '2024-04-28', '2024-05-02', 22, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(5, '20+ Academic Curriculum We Done!4', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', '2024-04-27', '2024-05-02', 23, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(6, '20+ Academic Curriculum We Done!5', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', '2024-04-26', '2024-05-02', 24, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(7, '20+ Academic Curriculum We Done!6', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', '2024-04-25', '2024-05-02', 25, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(8, '20+ Academic Curriculum We Done!7', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', '2024-04-24', '2024-05-02', 26, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(9, '20+ Academic Curriculum We Done!8', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', '2024-04-23', '2024-05-02', 27, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(10, '20+ Academic Curriculum We Done!9', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', '2024-04-22', '2024-05-02', 28, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(11, '20+ Academic Curriculum We Done!10', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', '2024-04-21', '2024-05-02', 29, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(12, '20+ Academic Curriculum We Done!11', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', '2024-04-20', '2024-05-02', 30, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(13, '20+ Academic Curriculum We Done!12', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', '2024-04-19', '2024-05-02', 31, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `notice_boards`
--

CREATE TABLE `notice_boards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `publish_date` datetime NOT NULL,
  `description` longtext NOT NULL,
  `attachment` bigint(20) UNSIGNED DEFAULT NULL,
  `is_visible_web` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `visible_to` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notice_boards`
--

INSERT INTO `notice_boards` (`id`, `title`, `date`, `publish_date`, `description`, `attachment`, `is_visible_web`, `status`, `visible_to`, `created_at`, `updated_at`) VALUES
(1, '20+ Academic Curriculum We Done!0', '2024-05-01', '2024-05-02 00:00:00', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', 32, 1, 1, NULL, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(2, '20+ Academic Curriculum We Done!1', '2024-04-30', '2024-05-02 00:00:00', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', 33, 1, 1, NULL, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(3, '20+ Academic Curriculum We Done!2', '2024-04-29', '2024-05-02 00:00:00', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', 34, 1, 1, NULL, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(4, '20+ Academic Curriculum We Done!3', '2024-04-28', '2024-05-02 00:00:00', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', 35, 1, 1, NULL, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(5, '20+ Academic Curriculum We Done!4', '2024-04-27', '2024-05-02 00:00:00', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', 36, 1, 1, NULL, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(6, '20+ Academic Curriculum We Done!5', '2024-04-26', '2024-05-02 00:00:00', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', 37, 1, 1, NULL, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(7, '20+ Academic Curriculum We Done!6', '2024-04-25', '2024-05-02 00:00:00', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', 38, 1, 1, NULL, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(8, '20+ Academic Curriculum We Done!7', '2024-04-24', '2024-05-02 00:00:00', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', 39, 1, 1, NULL, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(9, '20+ Academic Curriculum We Done!8', '2024-04-23', '2024-05-02 00:00:00', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', 40, 1, 1, NULL, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(10, '20+ Academic Curriculum We Done!9', '2024-04-22', '2024-05-02 00:00:00', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', 41, 1, 1, NULL, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(11, '20+ Academic Curriculum We Done!10', '2024-04-21', '2024-05-02 00:00:00', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', 42, 1, 1, NULL, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(12, '20+ Academic Curriculum We Done!11', '2024-04-20', '2024-05-02 00:00:00', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', 43, 1, 1, NULL, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(13, '20+ Academic Curriculum We Done!12', '2024-04-19', '2024-05-02 00:00:00', 'Onsest Schooled Is Home To More Than 20,000 Students And 230,000 Alumni With A Wide Variety Of Interests, Ages And Backgrounds, The University Reflects The City’s Dynamic Mix Of Populations.', 44, 1, 1, NULL, '2024-05-02 04:32:18', '2024-05-02 04:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `online_admissions`
--

CREATE TABLE `online_admissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `classes_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `religion_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gender_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `guardian_name` varchar(255) DEFAULT NULL,
  `guardian_phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_exams`
--

CREATE TABLE `online_exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `classes_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `exam_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `total_mark` double(8,2) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `published` datetime DEFAULT NULL,
  `question_group_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_exam_children_questions`
--

CREATE TABLE `online_exam_children_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `online_exam_id` bigint(20) UNSIGNED NOT NULL,
  `question_bank_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_exam_children_students`
--

CREATE TABLE `online_exam_children_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `online_exam_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_sections`
--

CREATE TABLE `page_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_sections`
--

INSERT INTO `page_sections` (`id`, `key`, `name`, `description`, `upload_id`, `data`, `created_at`, `updated_at`) VALUES
(1, 'social_links', '', '', NULL, '[{\"name\":\"Facebook\",\"icon\":\"fab fa-facebook-f\",\"link\":\"http:\\/\\/www.facebook.com\"},{\"name\":\"Twitter\",\"icon\":\"fab fa-twitter\",\"link\":\"http:\\/\\/www.twitter.com\"},{\"name\":\"Pinterest\",\"icon\":\"fab fa-pinterest-p\",\"link\":\"http:\\/\\/www.pinterest.com\"},{\"name\":\"Instagram\",\"icon\":\"fab fa-instagram\",\"link\":\"http:\\/\\/www.instagram.com\"}]', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(2, 'statement', 'Statement Of Onest Schooleded', '', 5, '[{\"title\":\"Mission Statement\",\"description\":\"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Read More\"},{\"title\":\"Vision Statement\",\"description\":\"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet Read More\"}]', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(3, 'study_at', 'Study at Onest Schooleded', 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. veniam consequat sunt nostrud amet', 6, '[{\"icon\":8,\"title\":\"Out Prospects\",\"description\":\"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. veniam consequat sunt nostrud amet\"},{\"icon\":9,\"title\":\"Out Prospects\",\"description\":\"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. veniam consequat sunt nostrud amet\"},{\"icon\":10,\"title\":\"Out Prospects\",\"description\":\"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. veniam consequat sunt nostrud amet\"}]', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(4, 'explore', 'Explore Onest Schoooled', '\"We Educate Knowledge & Essential Skills\" is a phrase that emphasizes the importance of both theoretical knowledge', 7, '[{\"tab\":\"Campus Life\",\"title\":\"Campus Life\",\"description\":\"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud\"},{\"tab\":\"Academic\",\"title\":\"Academic\",\"description\":\"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud\"},{\"tab\":\"Athletics\",\"title\":\"Athletics\",\"description\":\"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud\"},{\"tab\":\"School\",\"title\":\"School\",\"description\":\"Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud\"}]', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(5, 'why_choose_us', 'Excellence In Teaching And Learning', 'Welcomed every pain avoided but in certain circumstances owing obligations of business it will to the claims of duty or the obligations of business it will frequently occurs that pleasures. Provide Endless Opportunities', NULL, '[\"A higher education qualification\",\"Better career prospects\",\"Better career prospects\",\"Better career prospects\"]', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(6, 'academic_curriculum', '20+ Academic Curriculum', 'Onsest Schooled is home to more than 20,000 students and 230,000 alumni with a wide variety of interests, ages and backgrounds, the University reflects the city’s dynamic mix of populations.', NULL, '[\"Bangal Medium\",\"Bangal Medium\",\"Bangal Medium\",\"Bangal Medium\",\"Bangal Medium\",\"Bangal Medium\"]', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(7, 'coming_up', 'What’s Coming Up?', 'Welcomed every pain avoided but in certain circumstances owing obligations of business it will to the claims of duty or the obligation.', NULL, '[]', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(8, 'news', 'Latest From Our Blog', 'Welcomed every pain avoided but in certain circumstances owing obligations of business it will to the claims of duty or the obligation.', NULL, '[]', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(9, 'our_gallery', 'Our Gallery', 'Welcomed every pain avoided but in certain circumstances owing obligations of business it will to the claims of duty or the obligation.', NULL, '[]', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(10, 'contact_information', 'Find Our <br> Contact Information', '', NULL, '[]', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(11, 'department_contact_information', 'Contact By Department', 'Welcomed every pain avoided but in certain circumstances owing obligations of business it will to the claims of duty or the obligations of business it will', NULL, '[]', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(12, 'our_teachers', 'Our Featured Teachers', '', NULL, '[]', '2024-05-02 04:32:17', '2024-05-02 04:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `parent_guardians`
--

CREATE TABLE `parent_guardians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `father_mobile` varchar(255) DEFAULT NULL,
  `father_profession` varchar(255) DEFAULT NULL,
  `father_image` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `mother_mobile` varchar(255) DEFAULT NULL,
  `mother_profession` varchar(255) DEFAULT NULL,
  `mother_image` varchar(255) DEFAULT NULL,
  `guardian_name` varchar(255) DEFAULT NULL,
  `guardian_email` varchar(255) DEFAULT NULL,
  `guardian_mobile` varchar(255) DEFAULT NULL,
  `guardian_image` varchar(255) DEFAULT NULL,
  `guardian_profession` varchar(255) DEFAULT NULL,
  `guardian_relation` varchar(255) DEFAULT NULL,
  `guardian_address` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parent_guardians`
--

INSERT INTO `parent_guardians` (`id`, `user_id`, `father_name`, `father_mobile`, `father_profession`, `father_image`, `mother_name`, `mother_mobile`, `mother_profession`, `mother_image`, `guardian_name`, `guardian_email`, `guardian_mobile`, `guardian_image`, `guardian_profession`, `guardian_relation`, `guardian_address`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, '', '', '', NULL, '', '', '', NULL, 'Guardian One', '', '123213123', NULL, '', '', '', 1, '2024-05-03 02:20:29', '2024-05-03 02:20:29'),
(2, 3, 'Father Two', '124214', '', NULL, 'Mother Two', '123213213', '', NULL, 'Guardian Two', 'guardiantwo@guardian.com', '125213214', NULL, '', 'Father', 'asdsadasd', 1, '2024-05-03 03:10:43', '2024-05-03 03:10:43');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute` varchar(255) DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `attribute`, `keywords`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', '{\"read\":\"calendar_read\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(2, 'student', '{\"read\":\"student_read\",\"create\":\"student_create\",\"update\":\"student_update\",\"delete\":\"student_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(3, 'student_category', '{\"read\":\"student_category_read\",\"create\":\"student_category_create\",\"update\":\"student_category_update\",\"delete\":\"student_category_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(4, 'promote_students', '{\"read\":\"promote_students_read\",\"create\":\"promote_students_create\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(5, 'disabled_students', '{\"read\":\"disabled_students_read\",\"create\":\"disabled_students_create\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(6, 'parent', '{\"read\":\"parent_read\",\"create\":\"parent_create\",\"update\":\"parent_update\",\"delete\":\"parent_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(7, 'admission', '{\"read\":\"admission_read\",\"create\":\"admission_create\",\"update\":\"admission_update\",\"delete\":\"admission_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(8, 'classes', '{\"read\":\"classes_read\",\"create\":\"classes_create\",\"update\":\"classes_update\",\"delete\":\"classes_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(9, 'section', '{\"read\":\"section_read\",\"create\":\"section_create\",\"update\":\"section_update\",\"delete\":\"section_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(10, 'shift', '{\"read\":\"shift_read\",\"create\":\"shift_create\",\"update\":\"shift_update\",\"delete\":\"shift_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(11, 'class_setup', '{\"read\":\"class_setup_read\",\"create\":\"class_setup_create\",\"update\":\"class_setup_update\",\"delete\":\"class_setup_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(12, 'subject', '{\"read\":\"subject_read\",\"create\":\"subject_create\",\"update\":\"subject_update\",\"delete\":\"subject_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(13, 'subject_assign', '{\"read\":\"subject_assign_read\",\"create\":\"subject_assign_create\",\"update\":\"subject_assign_update\",\"delete\":\"subject_assign_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(14, 'class_routine', '{\"read\":\"report_class_routine_read\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(15, 'time_schedule', '{\"read\":\"time_schedule_read\",\"create\":\"time_schedule_create\",\"update\":\"time_schedule_update\",\"delete\":\"time_schedule_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(16, 'class_room', '{\"read\":\"class_room_read\",\"create\":\"class_room_create\",\"update\":\"class_room_update\",\"delete\":\"class_room_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(17, 'fees_group', '{\"read\":\"fees_group_read\",\"create\":\"fees_group_create\",\"update\":\"fees_group_update\",\"delete\":\"fees_group_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(18, 'fees_type', '{\"read\":\"fees_type_read\",\"create\":\"fees_type_create\",\"update\":\"fees_type_update\",\"delete\":\"fees_type_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(19, 'fees_master', '{\"read\":\"fees_master_read\",\"create\":\"fees_master_create\",\"update\":\"fees_master_update\",\"delete\":\"fees_master_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(20, 'fees_assign', '{\"read\":\"fees_assign_read\",\"create\":\"fees_assign_create\",\"update\":\"fees_assign_update\",\"delete\":\"fees_assign_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(21, 'fees_collect', '{\"read\":\"fees_collect_read\",\"create\":\"fees_collect_create\",\"update\":\"fees_collect_update\",\"delete\":\"fees_collect_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(22, 'exam_type', '{\"read\":\"exam_type_read\",\"create\":\"exam_type_create\",\"update\":\"exam_type_update\",\"delete\":\"exam_type_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(23, 'marks_grade', '{\"read\":\"marks_grade_read\",\"create\":\"marks_grade_create\",\"update\":\"marks_grade_update\",\"delete\":\"marks_grade_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(24, 'exam_assign', '{\"read\":\"exam_assign_read\",\"create\":\"exam_assign_create\",\"update\":\"exam_assign_update\",\"delete\":\"exam_assign_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(25, 'exam_routine', '{\"read\":\"report_exam_routine_read\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(26, 'marks_register', '{\"read\":\"marks_register_read\",\"create\":\"marks_register_create\",\"update\":\"marks_register_update\",\"delete\":\"marks_register_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(27, 'homework', '{\"read\":\"homework_read\",\"create\":\"homework_create\",\"update\":\"homework_update\",\"delete\":\"homework_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(28, 'exam_setting', '{\"read\":\"exam_setting_read\",\"update\":\"exam_setting_update\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(29, 'account_head', '{\"read\":\"account_head_read\",\"create\":\"account_head_create\",\"update\":\"account_head_update\",\"delete\":\"account_head_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(30, 'income', '{\"read\":\"income_read\",\"create\":\"income_create\",\"update\":\"income_update\",\"delete\":\"income_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(31, 'expense', '{\"read\":\"expense_read\",\"create\":\"expense_create\",\"update\":\"expense_update\",\"delete\":\"expense_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(32, 'attendance', '{\"read\":\"attendance_read\",\"create\":\"attendance_create\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(33, 'attendance_report', '{\"read\":\"report_attendance_read\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(34, 'marksheet', '{\"read\":\"report_marksheet_read\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(35, 'merit_list', '{\"read\":\"report_merit_list_read\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(36, 'progress_card', '{\"read\":\"report_progress_card_read\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(37, 'due_fees', '{\"read\":\"report_due_fees_read\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(38, 'fees_collection', '{\"read\":\"report_fees_collection_read\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(39, 'transaction', '{\"read\":\"report_transaction_read\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(40, 'language', '{\"read\":\"language_read\",\"create\":\"language_create\",\"update\":\"language_update\",\"update terms\":\"language_update_terms\",\"delete\":\"language_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(41, 'roles', '{\"read\":\"role_read\",\"create\":\"role_create\",\"update\":\"role_update\",\"delete\":\"role_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(42, 'users', '{\"read\":\"user_read\",\"create\":\"user_create\",\"update\":\"user_update\",\"delete\":\"user_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(43, 'department', '{\"read\":\"department_read\",\"create\":\"department_create\",\"update\":\"department_update\",\"delete\":\"department_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(44, 'designation', '{\"read\":\"designation_read\",\"create\":\"designation_create\",\"update\":\"designation_update\",\"delete\":\"designation_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(45, 'sections', '{\"read\":\"page_sections_read\",\"update\":\"page_sections_update\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(46, 'slider', '{\"read\":\"slider_read\",\"create\":\"slider_create\",\"update\":\"slider_update\",\"delete\":\"slider_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(47, 'about', '{\"read\":\"about_read\",\"create\":\"about_create\",\"update\":\"about_update\",\"delete\":\"about_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(48, 'counter', '{\"read\":\"counter_read\",\"create\":\"counter_create\",\"update\":\"counter_update\",\"delete\":\"counter_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(49, 'contact_info', '{\"read\":\"contact_info_read\",\"create\":\"contact_info_create\",\"update\":\"contact_info_update\",\"delete\":\"contact_info_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(50, 'dep_contact', '{\"read\":\"dep_contact_read\",\"create\":\"dep_contact_create\",\"update\":\"dep_contact_update\",\"delete\":\"dep_contact_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(51, 'news', '{\"read\":\"news_read\",\"create\":\"news_create\",\"update\":\"news_update\",\"delete\":\"news_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(52, 'event', '{\"read\":\"event_read\",\"create\":\"event_create\",\"update\":\"event_update\",\"delete\":\"event_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(53, 'gallery_category', '{\"read\":\"gallery_category_read\",\"create\":\"gallery_category_create\",\"update\":\"gallery_category_update\",\"delete\":\"gallery_category_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(54, 'gallery', '{\"read\":\"gallery_read\",\"create\":\"gallery_create\",\"update\":\"gallery_update\",\"delete\":\"gallery_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(55, 'subscribe', '{\"read\":\"subscribe_read\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(56, 'contact_message', '{\"read\":\"contact_message_read\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(57, 'general_settings', '{\"read\":\"general_settings_read\",\"update\":\"general_settings_update\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(58, 'storage_settings', '{\"read\":\"storage_settings_read\",\"update\":\"storage_settings_update\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(59, 'task_schedules', '{\"read\":\"task_schedules_read\",\"update\":\"task_schedules_update\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(60, 'software_update', '{\"read\":\"software_update_read\",\"update\":\"software_update_update\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(61, 'recaptcha_settings', '{\"read\":\"recaptcha_settings_read\",\"update\":\"recaptcha_settings_update\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(62, 'payment_gateway_settings', '{\"read\":\"payment_gateway_settings_read\",\"update\":\"payment_gateway_settings_update\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(63, 'email_settings', '{\"read\":\"email_settings_read\",\"update\":\"email_settings_update\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(64, 'sms_settings', '{\"read\":\"sms_settings_read\",\"update\":\"sms_settings_update\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(65, 'genders', '{\"read\":\"gender_read\",\"create\":\"gender_create\",\"update\":\"gender_update\",\"delete\":\"gender_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(66, 'religions', '{\"read\":\"religion_read\",\"create\":\"religion_create\",\"update\":\"religion_update\",\"delete\":\"religion_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(67, 'blood_groups', '{\"read\":\"blood_group_read\",\"create\":\"blood_group_create\",\"update\":\"blood_group_update\",\"delete\":\"blood_group_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(68, 'sessions', '{\"read\":\"session_read\",\"create\":\"session_create\",\"update\":\"session_update\",\"delete\":\"session_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(69, 'book_category', '{\"read\":\"book_category_read\",\"create\":\"book_category_create\",\"update\":\"book_category_update\",\"delete\":\"book_category_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(70, 'book', '{\"read\":\"book_read\",\"create\":\"book_create\",\"update\":\"book_update\",\"delete\":\"book_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(71, 'member', '{\"read\":\"member_read\",\"create\":\"member_create\",\"update\":\"member_update\",\"delete\":\"member_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(72, 'member_category', '{\"read\":\"member_category_read\",\"create\":\"member_category_create\",\"update\":\"member_category_update\",\"delete\":\"member_category_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(73, 'issue_book', '{\"read\":\"issue_book_read\",\"create\":\"issue_book_create\",\"update\":\"issue_book_update\",\"delete\":\"issue_book_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(74, 'online_exam_type', '{\"read\":\"online_exam_type_read\",\"create\":\"online_exam_type_create\",\"update\":\"online_exam_type_update\",\"delete\":\"online_exam_type_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(75, 'question_group', '{\"read\":\"question_group_read\",\"create\":\"question_group_create\",\"update\":\"question_group_update\",\"delete\":\"question_group_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(76, 'question_bank', '{\"read\":\"question_bank_read\",\"create\":\"question_bank_create\",\"update\":\"question_bank_update\",\"delete\":\"question_bank_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(77, 'online_exam', '{\"read\":\"online_exam_read\",\"create\":\"online_exam_create\",\"update\":\"online_exam_update\",\"delete\":\"online_exam_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(78, 'id_card', '{\"read\":\"id_card_read\",\"create\":\"id_card_create\",\"update\":\"id_card_update\",\"delete\":\"id_card_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(79, 'id_card_generate', '{\"read\":\"id_card_generate_read\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(80, 'certificate', '{\"read\":\"certificate_read\",\"create\":\"certificate_create\",\"update\":\"certificate_update\",\"delete\":\"certificate_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(81, 'certificate_generate', '{\"read\":\"certificate_generate_read\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(82, 'gmeet', '{\"read\":\"gmeet_read\",\"create\":\"gmeet_create\",\"update\":\"gmeet_update\",\"delete\":\"gmeet_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(83, 'notice_board', '{\"read\":\"notice_board_read\",\"create\":\"notice_board_create\",\"update\":\"notice_board_update\",\"delete\":\"notice_board_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(84, 'sms_mail_template', '{\"read\":\"sms_mail_template_read\",\"create\":\"sms_mail_template_create\",\"update\":\"nsms_mail_templateupdate\",\"delete\":\"sms_mail_template_delete\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(85, 'sms_mail', '{\"read\":\"sms_mail_read\",\"create\":\"sms_mail_send\"}', '2024-05-02 04:32:15', '2024-05-02 04:32:15');

-- --------------------------------------------------------

--
-- Table structure for table `promote_students`
--

CREATE TABLE `promote_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question_banks`
--

CREATE TABLE `question_banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `question_group_id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `total_option` int(11) DEFAULT NULL,
  `mark` int(11) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_banks`
--

INSERT INTO `question_banks` (`id`, `session_id`, `question_group_id`, `type`, `question`, `total_option`, `mark`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'What is your favorite subject?', 4, 2, '\"4\"', 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(2, 1, 1, 2, 'What are your favorite foods?', 4, 2, '[\"3\",\"4\"]', 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(3, 1, 1, 3, 'Do you think another name for water is life.', NULL, 1, '\"1\"', 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(4, 1, 1, 4, 'What challenges have you faced in your academic journey, and how did you overcome them?', NULL, 5, NULL, 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `question_bank_childrens`
--

CREATE TABLE `question_bank_childrens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_bank_id` bigint(20) UNSIGNED NOT NULL,
  `option` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_bank_childrens`
--

INSERT INTO `question_bank_childrens` (`id`, `question_bank_id`, `option`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bangla', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(2, 1, 'English', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(3, 1, 'Math', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(4, 1, 'Art', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(5, 2, 'fish ', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(6, 2, 'chips', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(7, 2, 'pizza', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(8, 2, 'chicken', '2024-05-02 04:32:18', '2024-05-02 04:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `question_groups`
--

CREATE TABLE `question_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_groups`
--

INSERT INTO `question_groups` (`id`, `session_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Class test', 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(2, 1, 'Quiz test', 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(3, 1, 'General test', 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(4, 1, 'Online test', 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(5, 1, 'MCQ test', 1, '2024-05-02 04:32:18', '2024-05-02 04:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `religions`
--

CREATE TABLE `religions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `religions`
--

INSERT INTO `religions` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Roman Catholic', 1, '2024-05-02 04:32:16', '2024-05-02 05:14:43'),
(2, 'Islam', 1, '2024-05-02 04:32:16', '2024-05-02 05:14:55'),
(3, 'Christian', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `permissions` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `status`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '1', '[\"counter_read\",\"fees_collesction_read\",\"revenue_read\",\"fees_collection_this_month_read\",\"income_expense_read\",\"upcoming_events_read\",\"attendance_chart_read\",\"calendar_read\",\"student_read\",\"student_create\",\"student_update\",\"student_delete\",\"student_category_read\",\"student_category_create\",\"student_category_update\",\"student_category_delete\",\"promote_students_read\",\"promote_students_create\",\"disabled_students_read\",\"disabled_students_create\",\"parent_read\",\"parent_create\",\"parent_update\",\"parent_delete\",\"admission_read\",\"admission_create\",\"admission_update\",\"admission_delete\",\"classes_read\",\"classes_create\",\"classes_update\",\"classes_delete\",\"section_read\",\"section_create\",\"section_update\",\"section_delete\",\"shift_read\",\"shift_create\",\"shift_update\",\"shift_delete\",\"class_setup_read\",\"class_setup_create\",\"class_setup_update\",\"class_setup_delete\",\"subject_read\",\"subject_create\",\"subject_update\",\"subject_delete\",\"subject_assign_read\",\"subject_assign_create\",\"subject_assign_update\",\"subject_assign_delete\",\"class_routine_read\",\"class_routine_create\",\"class_routine_update\",\"class_routine_delete\",\"time_schedule_read\",\"time_schedule_create\",\"time_schedule_update\",\"time_schedule_delete\",\"class_room_read\",\"class_room_create\",\"class_room_update\",\"class_room_delete\",\"fees_group_read\",\"fees_group_create\",\"fees_group_update\",\"fees_group_delete\",\"fees_type_read\",\"fees_type_create\",\"fees_type_update\",\"fees_type_delete\",\"fees_master_read\",\"fees_master_create\",\"fees_master_update\",\"fees_master_delete\",\"fees_assign_read\",\"fees_assign_create\",\"fees_assign_update\",\"fees_assign_delete\",\"fees_collect_read\",\"fees_collect_create\",\"fees_collect_update\",\"fees_collect_delete\",\"exam_type_read\",\"exam_type_create\",\"exam_type_update\",\"exam_type_delete\",\"marks_grade_read\",\"marks_grade_create\",\"marks_grade_update\",\"marks_grade_delete\",\"exam_assign_read\",\"exam_assign_create\",\"exam_assign_update\",\"exam_assign_delete\",\"exam_routine_read\",\"exam_routine_create\",\"exam_routine_update\",\"exam_routine_delete\",\"marks_register_read\",\"marks_register_create\",\"marks_register_update\",\"marks_register_delete\",\"homework_read\",\"homework_create\",\"homework_update\",\"homework_delete\",\"exam_setting_read\",\"exam_setting_update\",\"account_head_read\",\"account_head_create\",\"account_head_update\",\"account_head_delete\",\"income_read\",\"income_create\",\"income_update\",\"income_delete\",\"expense_read\",\"expense_create\",\"expense_update\",\"expense_delete\",\"attendance_read\",\"attendance_create\",\"report_attendance_read\",\"report_marksheet_read\",\"report_merit_list_read\",\"report_progress_card_read\",\"report_due_fees_read\",\"report_fees_collection_read\",\"report_transaction_read\",\"report_class_routine_read\",\"report_exam_routine_read\",\"report_attendance_read\",\"language_read\",\"language_create\",\"language_update\",\"language_update_terms\",\"language_delete\",\"user_read\",\"user_create\",\"user_update\",\"user_delete\",\"role_read\",\"role_create\",\"role_update\",\"role_delete\",\"department_read\",\"department_create\",\"department_update\",\"department_delete\",\"designation_read\",\"designation_create\",\"designation_update\",\"designation_delete\",\"page_sections_read\",\"page_sections_update\",\"slider_read\",\"slider_create\",\"slider_update\",\"slider_delete\",\"about_read\",\"about_create\",\"about_update\",\"about_delete\",\"counter_read\",\"counter_create\",\"counter_update\",\"counter_delete\",\"contact_info_read\",\"contact_info_create\",\"contact_info_update\",\"contact_info_delete\",\"dep_contact_read\",\"dep_contact_create\",\"dep_contact_update\",\"dep_contact_delete\",\"news_read\",\"news_create\",\"news_update\",\"news_delete\",\"event_read\",\"event_create\",\"event_update\",\"event_delete\",\"gallery_category_read\",\"gallery_category_create\",\"gallery_category_update\",\"gallery_category_delete\",\"gallery_read\",\"gallery_create\",\"gallery_update\",\"gallery_delete\",\"subscribe_read\",\"contact_message_read\",\"general_settings_read\",\"general_settings_update\",\"storage_settings_read\",\"storage_settings_update\",\"task_schedules_read\",\"task_schedules_update\",\"software_update_read\",\"software_update_update\",\"recaptcha_settings_read\",\"recaptcha_settings_update\",\"payment_gateway_settings_read\",\"payment_gateway_settings_update\",\"email_settings_read\",\"email_settings_update\",\"gender_read\",\"gender_create\",\"gender_update\",\"gender_delete\",\"religion_read\",\"religion_create\",\"religion_update\",\"religion_delete\",\"blood_group_read\",\"blood_group_create\",\"blood_group_update\",\"blood_group_delete\",\"session_read\",\"session_create\",\"session_update\",\"session_delete\",\"book_category_read\",\"book_category_create\",\"book_category_update\",\"book_category_delete\",\"book_read\",\"book_create\",\"book_update\",\"book_delete\",\"member_read\",\"member_create\",\"member_update\",\"member_delete\",\"member_category_read\",\"member_category_create\",\"member_category_update\",\"member_category_delete\",\"issue_book_read\",\"issue_book_create\",\"issue_book_update\",\"issue_book_delete\",\"online_exam_type_read\",\"online_exam_type_create\",\"online_exam_type_update\",\"online_exam_type_delete\",\"question_group_read\",\"question_group_create\",\"question_group_update\",\"question_group_delete\",\"question_bank_read\",\"question_bank_create\",\"question_bank_update\",\"question_bank_delete\",\"online_exam_read\",\"online_exam_create\",\"online_exam_update\",\"online_exam_delete\"]', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(2, 'Admin', '1', '[\"user_read\",\"user_create\",\"user_update\",\"user_delete\",\"role_read\",\"role_create\",\"role_update\",\"role_delete\",\"language_read\",\"language_create\",\"language_update_terms\",\"general_settings_read\",\"general_settings_update\",\"storage_settings_read\",\"storage_settings_read\",\"recaptcha_settings_update\",\"email_settings_read\"]', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(3, 'Staff', '1', '[]', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(4, 'Accounting', '1', '[\"user_read\",\"user_create\",\"user_update\",\"user_delete\",\"role_read\",\"role_create\",\"role_update\",\"role_delete\",\"language_read\",\"language_create\",\"language_update_terms\",\"general_settings_read\",\"general_settings_update\",\"storage_settings_read\",\"storage_settings_read\",\"recaptcha_settings_update\",\"email_settings_read\"]', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(5, 'Teacher', '1', '[\"calendar_read\",\"student_read\",\"parent_read\",\"classes_read\",\"section_read\",\"shift_read\",\"class_setup_read\",\"subject_read\",\"subject_assign_read\",\"report_class_routine_read\",\"time_schedule_read\",\"class_room_read\",\"exam_type_read\",\"exam_type_create\",\"exam_type_update\",\"exam_type_delete\",\"marks_grade_read\",\"exam_assign_read\",\"report_exam_routine_read\",\"marks_register_read\",\"marks_register_create\",\"marks_register_update\",\"marks_register_delete\",\"exam_setting_read\",\"attendance_read\",\"attendance_create\",\"report_attendance_read\",\"report_marksheet_read\"]', '2024-05-02 04:32:15', '2024-05-03 08:08:00'),
(6, 'Student', '1', '[]', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(7, 'Guardian', '1', '[]', '2024-05-02 04:32:15', '2024-05-02 04:32:15');

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `route_name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `user_type` varchar(255) DEFAULT NULL COMMENT 'Admin, Student, Parent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `searches`
--

INSERT INTO `searches` (`id`, `route_name`, `title`, `user_type`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', 'Dashboard', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(2, 'roles.index', 'Roles', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(3, 'genders.index', 'Genders', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(4, 'religions.index', 'Religions', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(5, 'blood-groups.index', 'Blood Groups', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(6, 'sessions.index', 'Sessions', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(7, 'users.index', 'Users', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(8, 'my.profile', 'Profile', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(9, 'languages.index', 'Languages', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(10, 'settings.general-settings', 'General Settings', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(11, 'department.index', 'Department', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(12, 'designation.index', 'Designation', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(13, 'student.index', 'Student', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(14, 'student_category.index', 'Student Category', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(15, 'promote_students.index', 'Promote Students', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(16, 'disabled_students.index', 'Disabled Student', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(17, 'parent.index', 'Parent', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(18, 'online-admissions.index', 'Online Admissions', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(19, 'book-category.index', 'Book Category', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(20, 'book.index', 'Book', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(21, 'member.index', 'Member', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(22, 'issue-book.index', 'Issue Book', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(23, 'member-category.index', 'Member Category', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(24, 'fees-group.index', 'Fees Group', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(25, 'fees-type.index', 'Fees Type', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(26, 'fees-master.index', 'Fees Master', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(27, 'fees-assign.index', 'Fees Assign', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(28, 'fees-collect.index', 'Fees Collect', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(29, 'exam-type.index', 'Exam Type', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(30, 'marks-grade.index', 'Marks Grade', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(31, 'marks-register.index', 'Marks Register', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(32, 'exam-routine.index', 'Exam Routine', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(33, 'exam-assign.index', 'Exam Assign', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(34, 'examination-settings.index', 'Examination Settings', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(35, 'attendance.index', 'Attendance', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(36, 'account_head.index', 'Account Head', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(37, 'income.index', 'Income', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(38, 'expense.index', 'Expense', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(39, 'classes.index', 'Classes', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(40, 'section.index', 'Sections', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(41, 'subject.index', 'Subjects', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(42, 'shift.index', 'Shifts', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(43, 'class-room.index', 'Class Room', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(44, 'class-setup.index', 'Class Setup', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(45, 'assign-subject.index', 'Assign Subject', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(46, 'class-routine.index', 'Class Routine', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(47, 'time_schedule.index', 'Time Schedule', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(48, 'report-marksheet.index', 'Marksheet Report', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(49, 'report-merit-list.index', 'Merit list Report', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(50, 'report-progress-card.index', 'Progress Card Report', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(51, 'report-due-fees.index', 'Due Fees Report', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(52, 'report-fees-collection.index', 'Fees Collection Report', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(53, 'report-account.index', 'Account Report', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(54, 'report-attendance.report', 'Attendance Report', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(55, 'report-class-routine.index', 'Class Routine Report', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(56, 'report-exam-routine.index', 'Exam Routine Report', 'Admin', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(57, 'student-panel-dashboard.index', 'Dashboard', 'Student', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(58, 'student-panel.profile', 'Profile', 'Student', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(59, 'student-panel-subject-list.index', 'Subject List', 'Student', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(60, 'student-panel-class-routine.index', 'Class Routine', 'Student', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(61, 'student-panel-exam-routine.index', 'Exam Routine', 'Student', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(62, 'student-panel-marksheet.index', 'Marksheet', 'Student', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(63, 'student-panel-attendance.index', 'Attendance', 'Student', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(64, 'student-panel-fees.index', 'Fees', 'Student', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(65, 'parent-panel-dashboard.index.index', 'Dashboard', 'Parent', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(66, 'parent-panel.profile', 'Profile', 'Parent', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(67, 'parent-panel-subject-list.index', 'Subject List', 'Parent', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(68, 'parent-panel-class-routine.index', 'Class Routine', 'Parent', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(69, 'parent-panel-exam-routine.index', 'Exam Routine', 'Parent', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(70, 'parent-panel-marksheet.index', 'Marksheet', 'Parent', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(71, 'parent-panel-fees.index', 'Fees', 'Parent', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(72, 'parent-panel-attendance.index', 'Attendance', 'Parent', '2024-05-02 04:32:16', '2024-05-02 04:32:16');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Section A', 1, '2024-05-02 04:32:16', '2024-05-03 07:54:56'),
(2, 'Section B', 1, '2024-05-02 04:32:16', '2024-05-03 07:55:03'),
(3, 'Section 1', 1, '2024-05-03 07:54:45', '2024-05-03 07:54:45');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `name`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '2023', '2023-01-01', '2023-12-31', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(2, '2024', '2024-01-01', '2024-12-31', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(3, '2025', '2025-01-01', '2025-12-31', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16');

-- --------------------------------------------------------

--
-- Table structure for table `session_class_students`
--

CREATE TABLE `session_class_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `classes_id` bigint(20) UNSIGNED DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shift_id` bigint(20) UNSIGNED DEFAULT NULL,
  `result` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 = fail, 1 = pass',
  `roll` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `session_class_students`
--

INSERT INTO `session_class_students` (`id`, `session_id`, `student_id`, `classes_id`, `section_id`, `shift_id`, `result`, `roll`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 1, 1, 1, '11111', '2024-05-03 03:12:44', '2024-05-03 03:12:44');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'current_version', '\"v1.3\"', '2024-05-02 04:32:14', '2024-05-02 04:32:14'),
(2, 'application_name', '\"Solana National High Shool\"', '2024-05-02 04:32:16', '2024-05-02 04:36:11'),
(3, 'address', '\"Solana, Cagayan\"', '2024-05-02 04:32:16', '2024-05-03 08:09:46'),
(4, 'phone', '\"+639171717171\"', '2024-05-02 04:32:16', '2024-05-02 05:14:11'),
(5, 'email', '\"sonana@test.com\"', '2024-05-02 04:32:16', '2024-05-02 05:14:11'),
(6, 'school_about', '\"Lorem ipsum dolor sit amet consectetur. Morbi cras sodales elementum sed. Suspendisse adipiscing arcu magna leo sodales pellentesque. Ac iaculis mattis ornare rhoncus nibh mollis arcu.\\\"\\\"\\\"\\\"\"', '2024-05-02 04:32:16', '2024-05-03 08:09:46'),
(7, 'footer_text', '\"\\u00a9 2024\"', '2024-05-02 04:32:16', '2024-05-02 04:36:11'),
(8, 'file_system', '\"local\"', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(9, 'aws_access_key_id', '\"\"', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(10, 'aws_secret_key', '\"\"', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(11, 'aws_region', '\"\"', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(12, 'aws_bucket', '\"\"', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(13, 'aws_endpoint', '\"\"', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(14, 'twilio_account_sid', '\"\"', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(15, 'twilio_auth_token', '\"\"', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(16, 'twilio_phone_number', '\"\"', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(17, 'recaptcha_sitekey', '\"\"', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(18, 'recaptcha_secret', '\"\"', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(19, 'recaptcha_status', '\"0\"', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(20, 'mail_drive', '\"smtp\"', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(21, 'mail_host', '\"smtp.gmail.com\"', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(22, 'mail_address', '\"\"', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(23, 'from_name', '\"Onest Schooled - School Management System\"', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(24, 'mail_username', '\"\"', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(25, 'mail_password', '\"eyJpdiI6IkF6ZnJDLytibE03SS9MS3YzQnBRMWc9PSIsInZhbHVlIjoiQ2lWTjhjSm1FdHQzNHlNblJiL09DZz09IiwibWFjIjoiMzVkYTE4NzA3NTQ3NGVjOTk2ZTQ0YTZjMTcxMWQ4MTUwZDc2MDY1Yzk1NWNmZWE4NjkzYzBlZWE3ZmQ3MDFlYyIsInRhZyI6IiJ9\"', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(26, 'mail_port', '\"587\"', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(27, 'encryption', '\"tls\"', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(28, 'default_langauge', '\"en\"', '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(29, 'light_logo', '\"backend\\/uploads\\/settings\\/NpEH0u_1714631798.png\"', '2024-05-02 04:32:16', '2024-05-02 04:36:38'),
(30, 'dark_logo', '\"backend\\/uploads\\/settings\\/aUoYSb_1714631798.png\"', '2024-05-02 04:32:16', '2024-05-02 04:36:38'),
(31, 'favicon', '\"backend\\/uploads\\/settings\\/IJlFoH_1714631771.png\"', '2024-05-02 04:32:16', '2024-05-02 04:36:11'),
(32, 'session', '\"2\"', '2024-05-02 04:32:16', '2024-05-02 05:14:11'),
(33, 'currency_code', '\"PHP\"', '2024-05-02 04:32:16', '2024-05-02 04:36:11');

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, '1st', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(2, '2nd', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(3, '3rd', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `serial` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `upload_id`, `description`, `serial`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Let’s Build Your Future With Onest Shooled 1', 11, 'Wonderful environment where children undertakes laborious physical learn and grow. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sin 1.', 0, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(2, 'Let’s Build Your Future With Onest Shooled 2', 12, 'Wonderful environment where children undertakes laborious physical learn and grow. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sin 2.', 1, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(3, 'Let’s Build Your Future With Onest Shooled 3', 13, 'Wonderful environment where children undertakes laborious physical learn and grow. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sin 3.', 2, 1, '2024-05-02 04:32:17', '2024-05-02 04:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `sms_mail_logs`
--

CREATE TABLE `sms_mail_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` enum('mail','sms') NOT NULL,
  `mail_description` longtext DEFAULT NULL,
  `sms_description` text DEFAULT NULL,
  `user_type` enum('role','individual','class') NOT NULL,
  `role_ids` longtext DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `individual_user_ids` longtext DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_ids` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_mail_templates`
--

CREATE TABLE `sms_mail_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` enum('mail','sms') NOT NULL,
  `attachment` bigint(20) UNSIGNED DEFAULT NULL,
  `mail_description` longtext DEFAULT NULL,
  `sms_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `designation_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender_id` bigint(20) UNSIGNED NOT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `joining_date` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `emergency_contact` varchar(255) DEFAULT NULL,
  `marital_status` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `current_address` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `basic_salary` int(11) DEFAULT NULL,
  `upload_documents` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `user_id`, `staff_id`, `role_id`, `designation_id`, `department_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `email`, `gender_id`, `dob`, `joining_date`, `phone`, `emergency_contact`, `marital_status`, `status`, `upload_id`, `current_address`, `permanent_address`, `basic_salary`, `upload_documents`, `created_at`, `updated_at`) VALUES
(1, 5, 123123, 2, 2, 1, 'Admin', 'One', '', '', 'admin@admin.com', 1, '2024-05-03', '2024-05-03', '124214214', '', 1, 1, NULL, '', '', 23123123, '[]', '2024-05-03 03:31:04', '2024-05-03 03:31:44'),
(2, 7, 532455, 5, 1, 2, 'Teacher', 'One', '', '', 'teacher1@teacher.com', 2, '2024-05-03', '2024-05-10', '124214214', '', 0, 1, NULL, '', '', 232323, '[]', '2024-05-03 03:34:23', '2024-05-03 03:34:23');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admission_no` varchar(255) DEFAULT NULL,
  `roll_no` int(11) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `student_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `religion_id` bigint(20) UNSIGNED DEFAULT NULL,
  `blood_group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gender_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `parent_guardian_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upload_documents` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `first_name`, `last_name`, `mobile`, `email`, `dob`, `admission_date`, `student_category_id`, `religion_id`, `blood_group_id`, `gender_id`, `category_id`, `image_id`, `parent_guardian_id`, `user_id`, `upload_documents`, `status`, `created_at`, `updated_at`) VALUES
(1, '12313', 11111, 'Student', 'One', '09221112222', 'student1@student.com', '2024-05-03', '2024-05-03', NULL, 1, NULL, 1, NULL, NULL, 1, 4, '[]', 1, '2024-05-03 03:12:44', '2024-05-03 08:27:57');

-- --------------------------------------------------------

--
-- Table structure for table `student_categories`
--

CREATE TABLE `student_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Filipino', '101', 1, 1, '2024-05-02 04:32:16', '2024-05-03 07:55:44'),
(2, 'English', '102', 1, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(3, 'Math', '103', 1, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(4, 'Physics', '104', 2, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(5, 'Chemistry', '105', 2, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(6, 'Biology', '106', 2, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(7, 'Higher Math', '107', 2, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(8, 'Information & Technology', '108', 2, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(9, 'Islam & Moral Education', '109', 2, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(10, 'Bangladesh & World', '110', 2, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(11, 'Agriculture Studies', '111', 2, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(12, 'Home Science', '112', 2, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(13, 'Accounting', '113', 2, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16');

-- --------------------------------------------------------

--
-- Table structure for table `subject_assigns`
--

CREATE TABLE `subject_assigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `classes_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subject_assigns`
--

INSERT INTO `subject_assigns` (`id`, `session_id`, `classes_id`, `section_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 1, '2024-05-03 07:56:20', '2024-05-03 07:56:20');

-- --------------------------------------------------------

--
-- Table structure for table `subject_assign_childrens`
--

CREATE TABLE `subject_assign_childrens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_assign_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subject_assign_childrens`
--

INSERT INTO `subject_assign_childrens` (`id`, `subject_assign_id`, `subject_id`, `staff_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 1, '2024-05-03 07:56:20', '2024-05-03 07:56:20');

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_type` enum('prepaid','postpaid') NOT NULL DEFAULT 'prepaid',
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `student_limit` int(11) DEFAULT NULL,
  `staff_limit` int(11) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `trx_id` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `features_name` longtext DEFAULT NULL,
  `features` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = inactive, 1 = active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `payment_type`, `name`, `price`, `student_limit`, `staff_limit`, `expiry_date`, `trx_id`, `method`, `features_name`, `features`, `status`, `created_at`, `updated_at`) VALUES
(1, 'prepaid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16');

-- --------------------------------------------------------

--
-- Table structure for table `time_schedules`
--

CREATE TABLE `time_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT 'Class = 1, Exam = 2',
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_schedules`
--

INSERT INTO `time_schedules` (`id`, `type`, `start_time`, `end_time`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '09:00', '09:59', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(2, 1, '10:00', '10:59', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(3, 1, '11:00', '11:59', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(4, 1, '12:00', '12:59', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(5, 1, '1:00', '1:59', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(6, 1, '2:00', '2:59', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(7, 1, '3:00', '3:59', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(8, 1, '4:00', '4:59', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(9, 1, '5:00', '5:59', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(10, 1, '6:00', '6:59', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(11, 1, '7:00', '7:59', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(12, 1, '8:00', '8:59', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(13, 2, '09:00', '09:59', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(14, 2, '10:00', '10:59', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(15, 2, '11:00', '11:59', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(16, 2, '12:00', '12:59', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(17, 2, '1:00', '1:59', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(18, 2, '2:00', '2:59', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(19, 2, '3:00', '3:59', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(20, 2, '4:00', '4:59', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(21, 2, '5:00', '5:59', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(22, 2, '6:00', '6:59', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(23, 2, '7:00', '7:59', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16'),
(24, 2, '8:00', '8:59', 1, '2024-05-02 04:32:16', '2024-05-02 04:32:16');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `path`, `created_at`, `updated_at`) VALUES
(1, 'backend/uploads/users/user-icon-1.png', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(2, 'backend/uploads/users/user-icon-2.png', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(3, 'backend/uploads/users/user-icon-3.png', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(4, 'backend/uploads/users/user-icon-4.png', '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(5, 'frontend/img/accreditation/accreditation.webp', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(6, 'frontend/img/banner/cta_bg.webp', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(7, 'frontend/img/explore/1.webp', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(8, 'frontend/img/icon/1.svg', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(9, 'frontend/img/icon/2.svg', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(10, 'frontend/img/icon/3.svg', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(11, 'frontend/img/sliders/03.webp', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(12, 'frontend/img/sliders/02.webp', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(13, 'frontend/img/sliders/01.webp', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(14, 'frontend/img/counters/01.webp', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(15, 'frontend/img/counters/02.webp', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(16, 'frontend/img/counters/03.webp', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(17, 'frontend/img/counters/04.webp', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(18, 'frontend/img/counters/05.webp', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(19, 'frontend/img/blog/01.webp', '2024-05-02 04:32:17', '2024-05-02 04:32:17'),
(20, 'frontend/img/blog/02.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(21, 'frontend/img/blog/03.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(22, 'frontend/img/blog/04.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(23, 'frontend/img/blog/05.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(24, 'frontend/img/blog/06.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(25, 'frontend/img/blog/07.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(26, 'frontend/img/blog/08.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(27, 'frontend/img/blog/09.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(28, 'frontend/img/blog/10.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(29, 'frontend/img/blog/11.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(30, 'frontend/img/blog/12.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(31, 'frontend/img/blog/13.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(32, 'frontend/img/blog/01.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(33, 'frontend/img/blog/02.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(34, 'frontend/img/blog/03.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(35, 'frontend/img/blog/04.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(36, 'frontend/img/blog/05.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(37, 'frontend/img/blog/06.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(38, 'frontend/img/blog/07.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(39, 'frontend/img/blog/08.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(40, 'frontend/img/blog/09.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(41, 'frontend/img/blog/10.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(42, 'frontend/img/blog/11.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(43, 'frontend/img/blog/12.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(44, 'frontend/img/blog/13.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(45, 'frontend/img/event/0.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(46, 'frontend/img/event/1.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(47, 'frontend/img/event/2.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(48, 'frontend/img/event/3.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(49, 'frontend/img/event/4.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(50, 'frontend/img/event/5.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(51, 'frontend/img/event/6.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(52, 'frontend/img/event/7.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(53, 'frontend/img/event/8.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(54, 'frontend/img/event/9.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(55, 'frontend/img/gallery/1.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(56, 'frontend/img/gallery/2.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(57, 'frontend/img/gallery/3.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(58, 'frontend/img/gallery/4.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(59, 'frontend/img/gallery/5.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(60, 'frontend/img/gallery/6.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(61, 'frontend/img/gallery/7.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(62, 'frontend/img/gallery/8.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(63, 'frontend/img/gallery/9.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(64, 'frontend/img/gallery/10.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(65, 'frontend/img/gallery/11.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(66, 'frontend/img/gallery/12.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(67, 'frontend/img/gallery/13.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(68, 'frontend/img/gallery/14.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(69, 'frontend/img/gallery/15.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(70, 'frontend/img/gallery/16.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(71, 'frontend/img/gallery/17.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(72, 'frontend/img/gallery/18.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(73, 'frontend/img/gallery/19.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(74, 'frontend/img/gallery/20.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(75, 'frontend/img/gallery/21.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(76, 'frontend/img/gallery/22.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(77, 'frontend/img/gallery/23.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(78, 'frontend/img/gallery/24.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(79, 'frontend/img/contact/contact_1.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(80, 'frontend/img/contact/contact_2.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(81, 'frontend/img/contact/contact_3.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(82, 'frontend/img/contact/contact_4.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(83, 'frontend/img/contact/admission_1.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(84, 'frontend/img/contact/admission_2.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(85, 'frontend/img/contact/admission_3.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(86, 'frontend/img/contact/admission_4.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(87, 'frontend/img/about-gallery/1.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(88, 'frontend/img/about-gallery/icon_1.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(89, 'frontend/img/about-gallery/2.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(90, 'frontend/img/about-gallery/icon_2.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(91, 'frontend/img/about-gallery/3.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18'),
(92, 'frontend/img/about-gallery/icon_3.webp', '2024-05-02 04:32:18', '2024-05-02 04:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `admission_no` varchar(255) DEFAULT NULL COMMENT 'For student login',
  `date_of_birth` date DEFAULT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL COMMENT 'if null then verifield, not null then not verified',
  `token` varchar(255) DEFAULT NULL COMMENT 'Token for email/phone verification, if null then verifield, not null then not verified',
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `permissions` text DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `upload_id` bigint(20) UNSIGNED DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `designation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `reset_password_otp` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `admission_no`, `date_of_birth`, `gender`, `email_verified_at`, `token`, `phone`, `password`, `permissions`, `last_login`, `status`, `upload_id`, `role_id`, `designation_id`, `remember_token`, `reset_password_otp`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'superadmin@admin.com', NULL, '2022-09-07', 1, '2024-05-02 04:32:19', NULL, '01811000000', '$2y$10$E8THgqCKq5mrVsWzAhcMwuV4a6kwYK3aEXiXdyZ1PC5l.zaeYmRdG', '[\"counter_read\",\"fees_collesction_read\",\"revenue_read\",\"fees_collection_this_month_read\",\"income_expense_read\",\"upcoming_events_read\",\"attendance_chart_read\",\"calendar_read\",\"student_read\",\"student_create\",\"student_update\",\"student_delete\",\"student_category_read\",\"student_category_create\",\"student_category_update\",\"student_category_delete\",\"promote_students_read\",\"promote_students_create\",\"disabled_students_read\",\"disabled_students_create\",\"parent_read\",\"parent_create\",\"parent_update\",\"parent_delete\",\"admission_read\",\"admission_create\",\"admission_update\",\"admission_delete\",\"classes_read\",\"classes_create\",\"classes_update\",\"classes_delete\",\"section_read\",\"section_create\",\"section_update\",\"section_delete\",\"shift_read\",\"shift_create\",\"shift_update\",\"shift_delete\",\"class_setup_read\",\"class_setup_create\",\"class_setup_update\",\"class_setup_delete\",\"subject_read\",\"subject_create\",\"subject_update\",\"subject_delete\",\"subject_assign_read\",\"subject_assign_create\",\"subject_assign_update\",\"subject_assign_delete\",\"class_routine_read\",\"class_routine_create\",\"class_routine_update\",\"class_routine_delete\",\"time_schedule_read\",\"time_schedule_create\",\"time_schedule_update\",\"time_schedule_delete\",\"class_room_read\",\"class_room_create\",\"class_room_update\",\"class_room_delete\",\"fees_group_read\",\"fees_group_create\",\"fees_group_update\",\"fees_group_delete\",\"fees_type_read\",\"fees_type_create\",\"fees_type_update\",\"fees_type_delete\",\"fees_master_read\",\"fees_master_create\",\"fees_master_update\",\"fees_master_delete\",\"fees_assign_read\",\"fees_assign_create\",\"fees_assign_update\",\"fees_assign_delete\",\"fees_collect_read\",\"fees_collect_create\",\"fees_collect_update\",\"fees_collect_delete\",\"exam_type_read\",\"exam_type_create\",\"exam_type_update\",\"exam_type_delete\",\"marks_grade_read\",\"marks_grade_create\",\"marks_grade_update\",\"marks_grade_delete\",\"exam_assign_read\",\"exam_assign_create\",\"exam_assign_update\",\"exam_assign_delete\",\"exam_routine_read\",\"exam_routine_create\",\"exam_routine_update\",\"exam_routine_delete\",\"marks_register_read\",\"marks_register_create\",\"marks_register_update\",\"marks_register_delete\",\"homework_read\",\"homework_create\",\"homework_update\",\"homework_delete\",\"exam_setting_read\",\"exam_setting_update\",\"account_head_read\",\"account_head_create\",\"account_head_update\",\"account_head_delete\",\"income_read\",\"income_create\",\"income_update\",\"income_delete\",\"expense_read\",\"expense_create\",\"expense_update\",\"expense_delete\",\"attendance_read\",\"attendance_create\",\"report_marksheet_read\",\"report_merit_list_read\",\"report_progress_card_read\",\"report_due_fees_read\",\"report_fees_collection_read\",\"report_transaction_read\",\"report_class_routine_read\",\"report_exam_routine_read\",\"report_attendance_read\",\"language_read\",\"language_create\",\"language_update\",\"language_update_terms\",\"language_delete\",\"user_read\",\"user_create\",\"user_update\",\"user_delete\",\"role_read\",\"role_create\",\"role_update\",\"role_delete\",\"department_read\",\"department_create\",\"department_update\",\"department_delete\",\"designation_read\",\"designation_create\",\"designation_update\",\"designation_delete\",\"page_sections_read\",\"page_sections_update\",\"slider_read\",\"slider_create\",\"slider_update\",\"slider_delete\",\"about_read\",\"about_create\",\"about_update\",\"about_delete\",\"counter_read\",\"counter_create\",\"counter_update\",\"counter_delete\",\"contact_info_read\",\"contact_info_create\",\"contact_info_update\",\"contact_info_delete\",\"dep_contact_read\",\"dep_contact_create\",\"dep_contact_update\",\"dep_contact_delete\",\"news_read\",\"news_create\",\"news_update\",\"news_delete\",\"event_read\",\"event_create\",\"event_update\",\"event_delete\",\"gallery_category_read\",\"gallery_category_create\",\"gallery_category_update\",\"gallery_category_delete\",\"gallery_read\",\"gallery_create\",\"gallery_update\",\"gallery_delete\",\"subscribe_read\",\"contact_message_read\",\"general_settings_read\",\"general_settings_update\",\"storage_settings_read\",\"storage_settings_update\",\"task_schedules_read\",\"task_schedules_update\",\"software_update_read\",\"software_update_update\",\"recaptcha_settings_read\",\"recaptcha_settings_update\",\"payment_gateway_settings_read\",\"payment_gateway_settings_update\",\"email_settings_read\",\"email_settings_update\",\"sms_settings_read\",\"sms_settings_update\",\"gender_read\",\"gender_create\",\"gender_update\",\"gender_delete\",\"religion_read\",\"religion_create\",\"religion_update\",\"religion_delete\",\"blood_group_read\",\"blood_group_create\",\"blood_group_update\",\"blood_group_delete\",\"session_read\",\"session_create\",\"session_update\",\"session_delete\",\"book_category_read\",\"book_category_create\",\"book_category_update\",\"book_category_delete\",\"book_read\",\"book_create\",\"book_update\",\"book_delete\",\"member_read\",\"member_create\",\"member_update\",\"member_delete\",\"member_category_read\",\"member_category_create\",\"member_category_update\",\"member_category_delete\",\"issue_book_read\",\"issue_book_create\",\"issue_book_update\",\"issue_book_delete\",\"online_exam_type_read\",\"online_exam_type_create\",\"online_exam_type_update\",\"online_exam_type_delete\",\"question_group_read\",\"question_group_create\",\"question_group_update\",\"question_group_delete\",\"question_bank_read\",\"question_bank_create\",\"question_bank_update\",\"question_bank_delete\",\"online_exam_read\",\"online_exam_create\",\"online_exam_update\",\"online_exam_delete\",\"id_card_read\",\"id_card_create\",\"id_card_update\",\"id_card_delete\",\"id_card_generate_read\",\"certificate_read\",\"certificate_create\",\"certificate_update\",\"certificate_delete\",\"certificate_generate_read\",\"homework_read\",\"homework_create\",\"homework_update\",\"homework_delete\",\"gmeet_read\",\"gmeet_create\",\"gmeet_update\",\"gmeet_delete\",\"notice_board_read\",\"notice_board_create\",\"notice_board_update\",\"notice_board_delete\",\"sms_mail_template_read\",\"sms_mail_template_create\",\"nsms_mail_templateupdate\",\"sms_mail_template_delete\",\"sms_mail_read\",\"sms_mail_send\"]', NULL, 1, 1, 1, 5, 'EeOEBokJYA', NULL, '2024-05-02 04:32:15', '2024-05-02 04:32:15'),
(2, 'Guardian One', '', NULL, NULL, 1, '2024-05-03 02:20:29', NULL, '123213123', '$2y$10$oorpe2OpXndWl6AhTtG1iOghUGmyu/EmZIERXCmop1c6h/Cc1lN1u', '[]', NULL, 1, NULL, 5, NULL, NULL, NULL, '2024-05-03 02:20:29', '2024-05-03 02:20:29'),
(3, 'Guardian Two', 'guardiantwo@guardian.com', NULL, NULL, 1, '2024-05-03 03:10:43', NULL, '125213214', '$2y$10$eDZRE2lpf1mAAuKyy/YEJO4t8QYq0qwvA3jyApQrAj/n6T8df.dPS', '[]', NULL, 1, NULL, 5, NULL, NULL, NULL, '2024-05-03 03:10:43', '2024-05-03 03:10:43'),
(4, 'Student One', 'student1@student.com', '12313', '2024-05-03', 1, '2024-05-03 03:12:44', NULL, '09221112222', '$2y$10$6bHpyeIPzyPQg4hNH8xQnuuN//gmuWmKIwbay1oH3WoMkVlhXJHRW', '[]', NULL, 1, NULL, 6, NULL, NULL, NULL, '2024-05-03 03:12:44', '2024-05-03 03:12:44'),
(5, 'Admin', 'admin@admin.com', NULL, NULL, 1, '2024-05-03 03:31:04', NULL, '124214214', '$2y$10$to8X51en85PllsyKvt7hbOq54bSvU.gW91TaesPAEzykWcw42sz/a', '[\"user_read\",\"user_create\",\"user_update\",\"user_delete\",\"role_read\",\"role_create\",\"role_update\",\"role_delete\",\"language_read\",\"language_create\",\"language_update_terms\",\"general_settings_read\",\"general_settings_update\",\"storage_settings_read\",\"storage_settings_read\",\"recaptcha_settings_update\",\"email_settings_read\"]', NULL, 1, NULL, 2, NULL, NULL, NULL, '2024-05-03 03:31:04', '2024-05-03 03:31:44'),
(7, 'Teacher', 'teacher1@teacher.com', NULL, NULL, 1, '2024-05-03 03:34:23', NULL, '124214214', '$2y$10$9ZNru5r.D9itStt/GQ0.ZeizP10tpN5mgqNMhg.x/jbpRPzMHOYsq', '[]', NULL, 1, NULL, 5, NULL, NULL, NULL, '2024-05-03 03:34:23', '2024-05-03 03:34:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `abouts_upload_id_foreign` (`upload_id`),
  ADD KEY `abouts_icon_upload_id_foreign` (`icon_upload_id`);

--
-- Indexes for table `account_heads`
--
ALTER TABLE `account_heads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_online_exam_id_foreign` (`online_exam_id`),
  ADD KEY `answers_student_id_foreign` (`student_id`);

--
-- Indexes for table `answer_childrens`
--
ALTER TABLE `answer_childrens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answer_childrens_answer_id_foreign` (`answer_id`),
  ADD KEY `answer_childrens_question_bank_id_foreign` (`question_bank_id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_session_id_foreign` (`session_id`),
  ADD KEY `attendances_student_id_foreign` (`student_id`),
  ADD KEY `attendances_classes_id_foreign` (`classes_id`),
  ADD KEY `attendances_section_id_foreign` (`section_id`);

--
-- Indexes for table `blood_groups`
--
ALTER TABLE `blood_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_category_id_foreign` (`category_id`);

--
-- Indexes for table `book_categories`
--
ALTER TABLE `book_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certificates_bg_image_foreign` (`bg_image`),
  ADD KEY `certificates_bottom_left_signature_foreign` (`bottom_left_signature`),
  ADD KEY `certificates_bottom_right_signature_foreign` (`bottom_right_signature`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_rooms`
--
ALTER TABLE `class_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_routines`
--
ALTER TABLE `class_routines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_routines_session_id_foreign` (`session_id`),
  ADD KEY `class_routines_classes_id_foreign` (`classes_id`),
  ADD KEY `class_routines_section_id_foreign` (`section_id`),
  ADD KEY `class_routines_shift_id_foreign` (`shift_id`);

--
-- Indexes for table `class_routine_childrens`
--
ALTER TABLE `class_routine_childrens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_routine_childrens_class_routine_id_foreign` (`class_routine_id`),
  ADD KEY `class_routine_childrens_subject_id_foreign` (`subject_id`),
  ADD KEY `class_routine_childrens_time_schedule_id_foreign` (`time_schedule_id`),
  ADD KEY `class_routine_childrens_class_room_id_foreign` (`class_room_id`);

--
-- Indexes for table `class_setups`
--
ALTER TABLE `class_setups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_setups_session_id_foreign` (`session_id`),
  ADD KEY `class_setups_classes_id_foreign` (`classes_id`);

--
-- Indexes for table `class_setup_childrens`
--
ALTER TABLE `class_setup_childrens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_setup_childrens_class_setup_id_foreign` (`class_setup_id`),
  ADD KEY `class_setup_childrens_section_id_foreign` (`section_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_infos`
--
ALTER TABLE `contact_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_infos_upload_id_foreign` (`upload_id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `counters_upload_id_foreign` (`upload_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currencies_code_unique` (`code`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department_contacts`
--
ALTER TABLE `department_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_contacts_upload_id_foreign` (`upload_id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_session_id_foreign` (`session_id`),
  ADD KEY `events_upload_id_foreign` (`upload_id`);

--
-- Indexes for table `examination_results`
--
ALTER TABLE `examination_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `examination_results_session_id_foreign` (`session_id`),
  ADD KEY `examination_results_exam_type_id_foreign` (`exam_type_id`),
  ADD KEY `examination_results_classes_id_foreign` (`classes_id`),
  ADD KEY `examination_results_section_id_foreign` (`section_id`),
  ADD KEY `examination_results_student_id_foreign` (`student_id`);

--
-- Indexes for table `examination_settings`
--
ALTER TABLE `examination_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `examination_settings_session_id_foreign` (`session_id`);

--
-- Indexes for table `exam_assigns`
--
ALTER TABLE `exam_assigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_assigns_session_id_foreign` (`session_id`),
  ADD KEY `exam_assigns_classes_id_foreign` (`classes_id`),
  ADD KEY `exam_assigns_section_id_foreign` (`section_id`),
  ADD KEY `exam_assigns_exam_type_id_foreign` (`exam_type_id`),
  ADD KEY `exam_assigns_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `exam_assign_childrens`
--
ALTER TABLE `exam_assign_childrens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_assign_childrens_exam_assign_id_foreign` (`exam_assign_id`);

--
-- Indexes for table `exam_routines`
--
ALTER TABLE `exam_routines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_routines_session_id_foreign` (`session_id`),
  ADD KEY `exam_routines_classes_id_foreign` (`classes_id`),
  ADD KEY `exam_routines_section_id_foreign` (`section_id`),
  ADD KEY `exam_routines_type_id_foreign` (`type_id`);

--
-- Indexes for table `exam_routine_childrens`
--
ALTER TABLE `exam_routine_childrens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_routine_childrens_exam_routine_id_foreign` (`exam_routine_id`),
  ADD KEY `exam_routine_childrens_subject_id_foreign` (`subject_id`),
  ADD KEY `exam_routine_childrens_time_schedule_id_foreign` (`time_schedule_id`),
  ADD KEY `exam_routine_childrens_class_room_id_foreign` (`class_room_id`);

--
-- Indexes for table `exam_types`
--
ALTER TABLE `exam_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_session_id_foreign` (`session_id`),
  ADD KEY `expenses_expense_head_foreign` (`expense_head`),
  ADD KEY `expenses_upload_id_foreign` (`upload_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fees_assigns`
--
ALTER TABLE `fees_assigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fees_assigns_session_id_foreign` (`session_id`),
  ADD KEY `fees_assigns_classes_id_foreign` (`classes_id`),
  ADD KEY `fees_assigns_section_id_foreign` (`section_id`),
  ADD KEY `fees_assigns_category_id_foreign` (`category_id`),
  ADD KEY `fees_assigns_gender_id_foreign` (`gender_id`),
  ADD KEY `fees_assigns_fees_group_id_foreign` (`fees_group_id`);

--
-- Indexes for table `fees_assign_childrens`
--
ALTER TABLE `fees_assign_childrens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fees_assign_childrens_fees_assign_id_foreign` (`fees_assign_id`),
  ADD KEY `fees_assign_childrens_fees_master_id_foreign` (`fees_master_id`),
  ADD KEY `fees_assign_childrens_student_id_foreign` (`student_id`);

--
-- Indexes for table `fees_collects`
--
ALTER TABLE `fees_collects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fees_collects_fees_assign_children_id_foreign` (`fees_assign_children_id`),
  ADD KEY `fees_collects_fees_collect_by_foreign` (`fees_collect_by`),
  ADD KEY `fees_collects_student_id_foreign` (`student_id`),
  ADD KEY `fees_collects_session_id_foreign` (`session_id`);

--
-- Indexes for table `fees_groups`
--
ALTER TABLE `fees_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees_masters`
--
ALTER TABLE `fees_masters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fees_masters_session_id_foreign` (`session_id`),
  ADD KEY `fees_masters_fees_group_id_foreign` (`fees_group_id`),
  ADD KEY `fees_masters_fees_type_id_foreign` (`fees_type_id`);

--
-- Indexes for table `fees_master_childrens`
--
ALTER TABLE `fees_master_childrens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fees_master_childrens_fees_master_id_foreign` (`fees_master_id`),
  ADD KEY `fees_master_childrens_fees_type_id_foreign` (`fees_type_id`);

--
-- Indexes for table `fees_types`
--
ALTER TABLE `fees_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flag_icons`
--
ALTER TABLE `flag_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_gallery_category_id_foreign` (`gallery_category_id`),
  ADD KEY `galleries_upload_id_foreign` (`upload_id`);

--
-- Indexes for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmeets`
--
ALTER TABLE `gmeets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gmeets_session_id_foreign` (`session_id`),
  ADD KEY `gmeets_classes_id_foreign` (`classes_id`),
  ADD KEY `gmeets_section_id_foreign` (`section_id`),
  ADD KEY `gmeets_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `homework`
--
ALTER TABLE `homework`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homework_session_id_foreign` (`session_id`),
  ADD KEY `homework_classes_id_foreign` (`classes_id`),
  ADD KEY `homework_section_id_foreign` (`section_id`),
  ADD KEY `homework_subject_id_foreign` (`subject_id`),
  ADD KEY `homework_document_id_foreign` (`document_id`),
  ADD KEY `homework_created_by_foreign` (`created_by`);

--
-- Indexes for table `homework_students`
--
ALTER TABLE `homework_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homework_students_student_id_foreign` (`student_id`),
  ADD KEY `homework_students_homework_id_foreign` (`homework_id`),
  ADD KEY `homework_students_homework_foreign` (`homework`);

--
-- Indexes for table `id_cards`
--
ALTER TABLE `id_cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cards_frontside_bg_image_foreign` (`frontside_bg_image`),
  ADD KEY `id_cards_backside_bg_image_foreign` (`backside_bg_image`),
  ADD KEY `id_cards_signature_foreign` (`signature`),
  ADD KEY `id_cards_qr_code_foreign` (`qr_code`);

--
-- Indexes for table `incomes`
--
ALTER TABLE `incomes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `incomes_session_id_foreign` (`session_id`),
  ADD KEY `incomes_income_head_foreign` (`income_head`),
  ADD KEY `incomes_upload_id_foreign` (`upload_id`),
  ADD KEY `incomes_fees_collect_id_foreign` (`fees_collect_id`);

--
-- Indexes for table `issue_books`
--
ALTER TABLE `issue_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `issue_books_user_id_foreign` (`user_id`),
  ADD KEY `issue_books_book_id_foreign` (`book_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks_grades`
--
ALTER TABLE `marks_grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marks_grades_session_id_foreign` (`session_id`);

--
-- Indexes for table `marks_registers`
--
ALTER TABLE `marks_registers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marks_registers_session_id_foreign` (`session_id`),
  ADD KEY `marks_registers_classes_id_foreign` (`classes_id`),
  ADD KEY `marks_registers_section_id_foreign` (`section_id`),
  ADD KEY `marks_registers_exam_type_id_foreign` (`exam_type_id`),
  ADD KEY `marks_registers_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `marks_register_childrens`
--
ALTER TABLE `marks_register_childrens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marks_register_childrens_marks_register_id_foreign` (`marks_register_id`),
  ADD KEY `marks_register_childrens_student_id_foreign` (`student_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `members_user_id_foreign` (`user_id`),
  ADD KEY `members_category_id_foreign` (`category_id`);

--
-- Indexes for table `member_categories`
--
ALTER TABLE `member_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_upload_id_foreign` (`upload_id`);

--
-- Indexes for table `notice_boards`
--
ALTER TABLE `notice_boards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notice_boards_attachment_foreign` (`attachment`);

--
-- Indexes for table `online_admissions`
--
ALTER TABLE `online_admissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_admissions_session_id_foreign` (`session_id`),
  ADD KEY `online_admissions_classes_id_foreign` (`classes_id`),
  ADD KEY `online_admissions_section_id_foreign` (`section_id`),
  ADD KEY `online_admissions_religion_id_foreign` (`religion_id`),
  ADD KEY `online_admissions_gender_id_foreign` (`gender_id`);

--
-- Indexes for table `online_exams`
--
ALTER TABLE `online_exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_exams_session_id_foreign` (`session_id`),
  ADD KEY `online_exams_classes_id_foreign` (`classes_id`),
  ADD KEY `online_exams_section_id_foreign` (`section_id`),
  ADD KEY `online_exams_subject_id_foreign` (`subject_id`),
  ADD KEY `online_exams_exam_type_id_foreign` (`exam_type_id`),
  ADD KEY `online_exams_question_group_id_foreign` (`question_group_id`);

--
-- Indexes for table `online_exam_children_questions`
--
ALTER TABLE `online_exam_children_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_exam_children_questions_online_exam_id_foreign` (`online_exam_id`),
  ADD KEY `online_exam_children_questions_question_bank_id_foreign` (`question_bank_id`);

--
-- Indexes for table `online_exam_children_students`
--
ALTER TABLE `online_exam_children_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_exam_children_students_online_exam_id_foreign` (`online_exam_id`),
  ADD KEY `online_exam_children_students_student_id_foreign` (`student_id`);

--
-- Indexes for table `page_sections`
--
ALTER TABLE `page_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_sections_upload_id_foreign` (`upload_id`);

--
-- Indexes for table `parent_guardians`
--
ALTER TABLE `parent_guardians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_guardians_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promote_students`
--
ALTER TABLE `promote_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_banks`
--
ALTER TABLE `question_banks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_banks_session_id_foreign` (`session_id`),
  ADD KEY `question_banks_question_group_id_foreign` (`question_group_id`);

--
-- Indexes for table `question_bank_childrens`
--
ALTER TABLE `question_bank_childrens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_bank_childrens_question_bank_id_foreign` (`question_bank_id`);

--
-- Indexes for table `question_groups`
--
ALTER TABLE `question_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_groups_session_id_foreign` (`session_id`);

--
-- Indexes for table `religions`
--
ALTER TABLE `religions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session_class_students`
--
ALTER TABLE `session_class_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_class_students_session_id_foreign` (`session_id`),
  ADD KEY `session_class_students_student_id_foreign` (`student_id`),
  ADD KEY `session_class_students_classes_id_foreign` (`classes_id`),
  ADD KEY `session_class_students_section_id_foreign` (`section_id`),
  ADD KEY `session_class_students_shift_id_foreign` (`shift_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_upload_id_foreign` (`upload_id`);

--
-- Indexes for table `sms_mail_logs`
--
ALTER TABLE `sms_mail_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_mail_templates`
--
ALTER TABLE `sms_mail_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sms_mail_templates_attachment_foreign` (`attachment`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_user_id_foreign` (`user_id`),
  ADD KEY `staff_role_id_foreign` (`role_id`),
  ADD KEY `staff_designation_id_foreign` (`designation_id`),
  ADD KEY `staff_department_id_foreign` (`department_id`),
  ADD KEY `staff_gender_id_foreign` (`gender_id`),
  ADD KEY `staff_upload_id_foreign` (`upload_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_student_category_id_foreign` (`student_category_id`),
  ADD KEY `students_religion_id_foreign` (`religion_id`),
  ADD KEY `students_blood_group_id_foreign` (`blood_group_id`),
  ADD KEY `students_gender_id_foreign` (`gender_id`),
  ADD KEY `students_category_id_foreign` (`category_id`),
  ADD KEY `students_image_id_foreign` (`image_id`),
  ADD KEY `students_parent_guardian_id_foreign` (`parent_guardian_id`),
  ADD KEY `students_user_id_foreign` (`user_id`);

--
-- Indexes for table `student_categories`
--
ALTER TABLE `student_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_assigns`
--
ALTER TABLE `subject_assigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_assigns_session_id_foreign` (`session_id`),
  ADD KEY `subject_assigns_classes_id_foreign` (`classes_id`),
  ADD KEY `subject_assigns_section_id_foreign` (`section_id`);

--
-- Indexes for table `subject_assign_childrens`
--
ALTER TABLE `subject_assign_childrens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_assign_childrens_subject_assign_id_foreign` (`subject_assign_id`),
  ADD KEY `subject_assign_childrens_subject_id_foreign` (`subject_id`),
  ADD KEY `subject_assign_childrens_staff_id_foreign` (`staff_id`);

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribes_email_unique` (`email`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_schedules`
--
ALTER TABLE `time_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_upload_id_foreign` (`upload_id`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `account_heads`
--
ALTER TABLE `account_heads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `answer_childrens`
--
ALTER TABLE `answer_childrens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blood_groups`
--
ALTER TABLE `blood_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_categories`
--
ALTER TABLE `book_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `class_rooms`
--
ALTER TABLE `class_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `class_routines`
--
ALTER TABLE `class_routines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `class_routine_childrens`
--
ALTER TABLE `class_routine_childrens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `class_setups`
--
ALTER TABLE `class_setups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `class_setup_childrens`
--
ALTER TABLE `class_setup_childrens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_infos`
--
ALTER TABLE `contact_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `department_contacts`
--
ALTER TABLE `department_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `examination_results`
--
ALTER TABLE `examination_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `examination_settings`
--
ALTER TABLE `examination_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exam_assigns`
--
ALTER TABLE `exam_assigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exam_assign_childrens`
--
ALTER TABLE `exam_assign_childrens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exam_routines`
--
ALTER TABLE `exam_routines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `exam_routine_childrens`
--
ALTER TABLE `exam_routine_childrens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `exam_types`
--
ALTER TABLE `exam_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees_assigns`
--
ALTER TABLE `fees_assigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees_assign_childrens`
--
ALTER TABLE `fees_assign_childrens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees_collects`
--
ALTER TABLE `fees_collects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees_groups`
--
ALTER TABLE `fees_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fees_masters`
--
ALTER TABLE `fees_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `fees_master_childrens`
--
ALTER TABLE `fees_master_childrens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees_types`
--
ALTER TABLE `fees_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `flag_icons`
--
ALTER TABLE `flag_icons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gmeets`
--
ALTER TABLE `gmeets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homework`
--
ALTER TABLE `homework`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homework_students`
--
ALTER TABLE `homework_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `id_cards`
--
ALTER TABLE `id_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `incomes`
--
ALTER TABLE `incomes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issue_books`
--
ALTER TABLE `issue_books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `marks_grades`
--
ALTER TABLE `marks_grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `marks_registers`
--
ALTER TABLE `marks_registers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `marks_register_childrens`
--
ALTER TABLE `marks_register_childrens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member_categories`
--
ALTER TABLE `member_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `notice_boards`
--
ALTER TABLE `notice_boards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `online_admissions`
--
ALTER TABLE `online_admissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_exams`
--
ALTER TABLE `online_exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_exam_children_questions`
--
ALTER TABLE `online_exam_children_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_exam_children_students`
--
ALTER TABLE `online_exam_children_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page_sections`
--
ALTER TABLE `page_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `parent_guardians`
--
ALTER TABLE `parent_guardians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `promote_students`
--
ALTER TABLE `promote_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question_banks`
--
ALTER TABLE `question_banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `question_bank_childrens`
--
ALTER TABLE `question_bank_childrens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `question_groups`
--
ALTER TABLE `question_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `religions`
--
ALTER TABLE `religions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `session_class_students`
--
ALTER TABLE `session_class_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sms_mail_logs`
--
ALTER TABLE `sms_mail_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_mail_templates`
--
ALTER TABLE `sms_mail_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_categories`
--
ALTER TABLE `student_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subject_assigns`
--
ALTER TABLE `subject_assigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subject_assign_childrens`
--
ALTER TABLE `subject_assign_childrens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `time_schedules`
--
ALTER TABLE `time_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `abouts`
--
ALTER TABLE `abouts`
  ADD CONSTRAINT `abouts_icon_upload_id_foreign` FOREIGN KEY (`icon_upload_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `abouts_upload_id_foreign` FOREIGN KEY (`upload_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_online_exam_id_foreign` FOREIGN KEY (`online_exam_id`) REFERENCES `online_exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `answers_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `answer_childrens`
--
ALTER TABLE `answer_childrens`
  ADD CONSTRAINT `answer_childrens_answer_id_foreign` FOREIGN KEY (`answer_id`) REFERENCES `answers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `answer_childrens_question_bank_id_foreign` FOREIGN KEY (`question_bank_id`) REFERENCES `question_banks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_classes_id_foreign` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `book_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `certificates`
--
ALTER TABLE `certificates`
  ADD CONSTRAINT `certificates_bg_image_foreign` FOREIGN KEY (`bg_image`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `certificates_bottom_left_signature_foreign` FOREIGN KEY (`bottom_left_signature`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `certificates_bottom_right_signature_foreign` FOREIGN KEY (`bottom_right_signature`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_routines`
--
ALTER TABLE `class_routines`
  ADD CONSTRAINT `class_routines_classes_id_foreign` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_routines_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_routines_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_routines_shift_id_foreign` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_routine_childrens`
--
ALTER TABLE `class_routine_childrens`
  ADD CONSTRAINT `class_routine_childrens_class_room_id_foreign` FOREIGN KEY (`class_room_id`) REFERENCES `class_rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_routine_childrens_class_routine_id_foreign` FOREIGN KEY (`class_routine_id`) REFERENCES `class_routines` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_routine_childrens_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_routine_childrens_time_schedule_id_foreign` FOREIGN KEY (`time_schedule_id`) REFERENCES `time_schedules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_setups`
--
ALTER TABLE `class_setups`
  ADD CONSTRAINT `class_setups_classes_id_foreign` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_setups_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_setup_childrens`
--
ALTER TABLE `class_setup_childrens`
  ADD CONSTRAINT `class_setup_childrens_class_setup_id_foreign` FOREIGN KEY (`class_setup_id`) REFERENCES `class_setups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_setup_childrens_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contact_infos`
--
ALTER TABLE `contact_infos`
  ADD CONSTRAINT `contact_infos_upload_id_foreign` FOREIGN KEY (`upload_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `counters`
--
ALTER TABLE `counters`
  ADD CONSTRAINT `counters_upload_id_foreign` FOREIGN KEY (`upload_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `department_contacts`
--
ALTER TABLE `department_contacts`
  ADD CONSTRAINT `department_contacts_upload_id_foreign` FOREIGN KEY (`upload_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `events_upload_id_foreign` FOREIGN KEY (`upload_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `examination_results`
--
ALTER TABLE `examination_results`
  ADD CONSTRAINT `examination_results_classes_id_foreign` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `examination_results_exam_type_id_foreign` FOREIGN KEY (`exam_type_id`) REFERENCES `exam_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `examination_results_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `examination_results_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `examination_results_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `examination_settings`
--
ALTER TABLE `examination_settings`
  ADD CONSTRAINT `examination_settings_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_assigns`
--
ALTER TABLE `exam_assigns`
  ADD CONSTRAINT `exam_assigns_classes_id_foreign` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_assigns_exam_type_id_foreign` FOREIGN KEY (`exam_type_id`) REFERENCES `exam_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_assigns_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_assigns_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_assigns_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_assign_childrens`
--
ALTER TABLE `exam_assign_childrens`
  ADD CONSTRAINT `exam_assign_childrens_exam_assign_id_foreign` FOREIGN KEY (`exam_assign_id`) REFERENCES `exam_assigns` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_routines`
--
ALTER TABLE `exam_routines`
  ADD CONSTRAINT `exam_routines_classes_id_foreign` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_routines_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_routines_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_routines_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `exam_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_routine_childrens`
--
ALTER TABLE `exam_routine_childrens`
  ADD CONSTRAINT `exam_routine_childrens_class_room_id_foreign` FOREIGN KEY (`class_room_id`) REFERENCES `class_rooms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_routine_childrens_exam_routine_id_foreign` FOREIGN KEY (`exam_routine_id`) REFERENCES `exam_routines` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_routine_childrens_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_routine_childrens_time_schedule_id_foreign` FOREIGN KEY (`time_schedule_id`) REFERENCES `time_schedules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_expense_head_foreign` FOREIGN KEY (`expense_head`) REFERENCES `account_heads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_upload_id_foreign` FOREIGN KEY (`upload_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fees_assigns`
--
ALTER TABLE `fees_assigns`
  ADD CONSTRAINT `fees_assigns_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `student_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_assigns_classes_id_foreign` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_assigns_fees_group_id_foreign` FOREIGN KEY (`fees_group_id`) REFERENCES `fees_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_assigns_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_assigns_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_assigns_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fees_assign_childrens`
--
ALTER TABLE `fees_assign_childrens`
  ADD CONSTRAINT `fees_assign_childrens_fees_assign_id_foreign` FOREIGN KEY (`fees_assign_id`) REFERENCES `fees_assigns` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_assign_childrens_fees_master_id_foreign` FOREIGN KEY (`fees_master_id`) REFERENCES `fees_masters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_assign_childrens_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fees_collects`
--
ALTER TABLE `fees_collects`
  ADD CONSTRAINT `fees_collects_fees_assign_children_id_foreign` FOREIGN KEY (`fees_assign_children_id`) REFERENCES `fees_assign_childrens` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_collects_fees_collect_by_foreign` FOREIGN KEY (`fees_collect_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_collects_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_collects_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fees_masters`
--
ALTER TABLE `fees_masters`
  ADD CONSTRAINT `fees_masters_fees_group_id_foreign` FOREIGN KEY (`fees_group_id`) REFERENCES `fees_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_masters_fees_type_id_foreign` FOREIGN KEY (`fees_type_id`) REFERENCES `fees_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_masters_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fees_master_childrens`
--
ALTER TABLE `fees_master_childrens`
  ADD CONSTRAINT `fees_master_childrens_fees_master_id_foreign` FOREIGN KEY (`fees_master_id`) REFERENCES `fees_masters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fees_master_childrens_fees_type_id_foreign` FOREIGN KEY (`fees_type_id`) REFERENCES `fees_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_gallery_category_id_foreign` FOREIGN KEY (`gallery_category_id`) REFERENCES `gallery_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `galleries_upload_id_foreign` FOREIGN KEY (`upload_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gmeets`
--
ALTER TABLE `gmeets`
  ADD CONSTRAINT `gmeets_classes_id_foreign` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `gmeets_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `gmeets_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `gmeets_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `homework`
--
ALTER TABLE `homework`
  ADD CONSTRAINT `homework_classes_id_foreign` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_document_id_foreign` FOREIGN KEY (`document_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `homework_students`
--
ALTER TABLE `homework_students`
  ADD CONSTRAINT `homework_students_homework_foreign` FOREIGN KEY (`homework`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_students_homework_id_foreign` FOREIGN KEY (`homework_id`) REFERENCES `homework` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `homework_students_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `id_cards`
--
ALTER TABLE `id_cards`
  ADD CONSTRAINT `id_cards_backside_bg_image_foreign` FOREIGN KEY (`backside_bg_image`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `id_cards_frontside_bg_image_foreign` FOREIGN KEY (`frontside_bg_image`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `id_cards_qr_code_foreign` FOREIGN KEY (`qr_code`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `id_cards_signature_foreign` FOREIGN KEY (`signature`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `incomes`
--
ALTER TABLE `incomes`
  ADD CONSTRAINT `incomes_fees_collect_id_foreign` FOREIGN KEY (`fees_collect_id`) REFERENCES `fees_collects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `incomes_income_head_foreign` FOREIGN KEY (`income_head`) REFERENCES `account_heads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `incomes_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `incomes_upload_id_foreign` FOREIGN KEY (`upload_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `issue_books`
--
ALTER TABLE `issue_books`
  ADD CONSTRAINT `issue_books_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `issue_books_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `marks_grades`
--
ALTER TABLE `marks_grades`
  ADD CONSTRAINT `marks_grades_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `marks_registers`
--
ALTER TABLE `marks_registers`
  ADD CONSTRAINT `marks_registers_classes_id_foreign` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marks_registers_exam_type_id_foreign` FOREIGN KEY (`exam_type_id`) REFERENCES `exam_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marks_registers_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marks_registers_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marks_registers_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `marks_register_childrens`
--
ALTER TABLE `marks_register_childrens`
  ADD CONSTRAINT `marks_register_childrens_marks_register_id_foreign` FOREIGN KEY (`marks_register_id`) REFERENCES `marks_registers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marks_register_childrens_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `member_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_upload_id_foreign` FOREIGN KEY (`upload_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notice_boards`
--
ALTER TABLE `notice_boards`
  ADD CONSTRAINT `notice_boards_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `online_admissions`
--
ALTER TABLE `online_admissions`
  ADD CONSTRAINT `online_admissions_classes_id_foreign` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_admissions_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_admissions_religion_id_foreign` FOREIGN KEY (`religion_id`) REFERENCES `religions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_admissions_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_admissions_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `online_exams`
--
ALTER TABLE `online_exams`
  ADD CONSTRAINT `online_exams_classes_id_foreign` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_exams_exam_type_id_foreign` FOREIGN KEY (`exam_type_id`) REFERENCES `exam_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_exams_question_group_id_foreign` FOREIGN KEY (`question_group_id`) REFERENCES `question_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_exams_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_exams_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_exams_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `online_exam_children_questions`
--
ALTER TABLE `online_exam_children_questions`
  ADD CONSTRAINT `online_exam_children_questions_online_exam_id_foreign` FOREIGN KEY (`online_exam_id`) REFERENCES `online_exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_exam_children_questions_question_bank_id_foreign` FOREIGN KEY (`question_bank_id`) REFERENCES `question_banks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `online_exam_children_students`
--
ALTER TABLE `online_exam_children_students`
  ADD CONSTRAINT `online_exam_children_students_online_exam_id_foreign` FOREIGN KEY (`online_exam_id`) REFERENCES `online_exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `online_exam_children_students_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_sections`
--
ALTER TABLE `page_sections`
  ADD CONSTRAINT `page_sections_upload_id_foreign` FOREIGN KEY (`upload_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `parent_guardians`
--
ALTER TABLE `parent_guardians`
  ADD CONSTRAINT `parent_guardians_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `question_banks`
--
ALTER TABLE `question_banks`
  ADD CONSTRAINT `question_banks_question_group_id_foreign` FOREIGN KEY (`question_group_id`) REFERENCES `question_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `question_banks_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `question_bank_childrens`
--
ALTER TABLE `question_bank_childrens`
  ADD CONSTRAINT `question_bank_childrens_question_bank_id_foreign` FOREIGN KEY (`question_bank_id`) REFERENCES `question_banks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `question_groups`
--
ALTER TABLE `question_groups`
  ADD CONSTRAINT `question_groups_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `session_class_students`
--
ALTER TABLE `session_class_students`
  ADD CONSTRAINT `session_class_students_classes_id_foreign` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `session_class_students_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `session_class_students_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `session_class_students_shift_id_foreign` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `session_class_students_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sliders`
--
ALTER TABLE `sliders`
  ADD CONSTRAINT `sliders_upload_id_foreign` FOREIGN KEY (`upload_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sms_mail_templates`
--
ALTER TABLE `sms_mail_templates`
  ADD CONSTRAINT `sms_mail_templates_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_designation_id_foreign` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_upload_id_foreign` FOREIGN KEY (`upload_id`) REFERENCES `uploads` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `staff_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_blood_group_id_foreign` FOREIGN KEY (`blood_group_id`) REFERENCES `blood_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `student_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_parent_guardian_id_foreign` FOREIGN KEY (`parent_guardian_id`) REFERENCES `parent_guardians` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_religion_id_foreign` FOREIGN KEY (`religion_id`) REFERENCES `religions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_student_category_id_foreign` FOREIGN KEY (`student_category_id`) REFERENCES `student_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_assigns`
--
ALTER TABLE `subject_assigns`
  ADD CONSTRAINT `subject_assigns_classes_id_foreign` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_assigns_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_assigns_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_assign_childrens`
--
ALTER TABLE `subject_assign_childrens`
  ADD CONSTRAINT `subject_assign_childrens_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_assign_childrens_subject_assign_id_foreign` FOREIGN KEY (`subject_assign_id`) REFERENCES `subject_assigns` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_assign_childrens_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_upload_id_foreign` FOREIGN KEY (`upload_id`) REFERENCES `uploads` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
