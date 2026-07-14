-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2026 at 04:28 AM
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
-- Database: `sistem_surat`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_street1` varchar(255) NOT NULL,
  `company_street2` varchar(255) NOT NULL,
  `company_postcode` varchar(255) NOT NULL,
  `company_city` varchar(255) NOT NULL,
  `company_state` varchar(255) NOT NULL,
  `group_leader_name` varchar(255) NOT NULL,
  `group_leader_phone` varchar(255) NOT NULL,
  `group_leader_email` varchar(255) NOT NULL,
  `Team_member` int(11) NOT NULL,
  `date_interview` datetime NOT NULL,
  `ref_no` int(255) NOT NULL,
  `status` int(11) DEFAULT 1,
  `method` varchar(255) NOT NULL,
  `approval_status` int(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`id`, `user_id`, `program_id`, `faculty_id`, `company_name`, `company_street1`, `company_street2`, `company_postcode`, `company_city`, `company_state`, `group_leader_name`, `group_leader_phone`, `group_leader_email`, `Team_member`, `date_interview`, `ref_no`, `status`, `method`, `approval_status`, `created`, `modified`) VALUES
(1, 1, 2, 1, 'Abc Sdn.Bhd', 'jalan Utapo', 'jalan 11/11', '70400', 'Nilai', 'Negeri Sembilan', 'aiman ayer', '0112223333', 'aiman@ayer.com', 4, '2026-06-08 10:00:00', 12345, 0, 'Online', 1, '2026-06-21 19:50:33', '2026-07-04 17:39:54'),
(3, 2, 2, 1, 'Dola Sdn.Bhd', 'No. 15, Jalan Teknologi 3/1', 'Kota Damansara', '47810', 'Petaling Jaya', 'Selangor', 'Aiman NurHakimin', '0112223333', 'aiman@ayer.com', 4, '2026-06-29 10:31:17', 1234567898, 1, 'Physical', 1, '2026-07-05 20:31:36', '2026-07-05 21:01:02');

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction` char(36) NOT NULL,
  `type` varchar(7) NOT NULL,
  `primary_key` int(10) UNSIGNED DEFAULT NULL,
  `source` varchar(255) NOT NULL,
  `parent_source` varchar(255) DEFAULT NULL,
  `original` mediumtext DEFAULT NULL,
  `changed` mediumtext DEFAULT NULL,
  `meta` mediumtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `slug` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `transaction`, `type`, `primary_key`, `source`, `parent_source`, `original`, `changed`, `meta`, `status`, `slug`, `created`) VALUES
(1, '3b632d70-5125-4bee-b3e2-51a4892fb4bf', 'create', 1, 'application', NULL, '[]', '{\"id\":1,\"program_id\":2,\"faculty_id\":1,\"company_name\":\"Abc Sdn.Bhd\",\"company_street1\":\"Jalan Utapao 11\",\"company_street2\":\"12\\/11 desa jaya\",\"company_postcode\":\"78000\",\"company_city\":\"Seremban\",\"company_state\":\"Negeri Sembilan\",\"group_leader_name\":\"Aiman ayer\",\"group_leader_phone\":\"0112223333\",\"group_leader_email\":\"aiman@ayer.com\",\"Team_member\":4,\"date_interview\":\"2026-06-08T10:00:00+08:00\",\"status\":1,\"method\":\"Online\"}', '{\"a_name\":\"Add\",\"c_name\":\"Application\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/surat\\/application\\/add\",\"slug\":1}', 1, NULL, '2026-06-21 19:08:15'),
(2, '1f9ac60a-3e39-4a47-ac4d-04fa8b5d46a9', 'create', 1, 'application', NULL, '[]', '{\"id\":1,\"user_id\":1,\"program_id\":2,\"faculty_id\":1,\"company_name\":\"Abc Sdn.Bhd\",\"company_street1\":\"jalan Utapo\",\"company_street2\":\"jalan 11\\/11\",\"company_postcode\":\"70400\",\"company_city\":\"Nilai\",\"company_state\":\"Negeri Sembilan\",\"group_leader_name\":\"aiman ayer\",\"group_leader_phone\":\"0112223333\",\"group_leader_email\":\"aiman@ayer.com\",\"Team_member\":4,\"date_interview\":\"2026-06-08T10:00:00+08:00\",\"status\":1,\"method\":\"Online\"}', '{\"a_name\":\"Add\",\"c_name\":\"Application\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/surat\\/application\\/add\",\"slug\":1}', 1, NULL, '2026-06-21 19:50:33'),
(3, '96d0fe2b-894b-4ffc-ad76-c092f30e0a9a', 'update', 1, 'users', NULL, '{\"fullname\":\"Administrator\"}', '{\"fullname\":\"Aiman ayer\"}', '[]', 1, NULL, '2026-06-21 20:25:41'),
(4, '0bb8f7e1-a8d1-4387-94af-d6f24d8aa91a', 'update', 1, 'application', NULL, '{\"approval_status\":0}', '{\"approval_status\":\"0\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Application\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/surat\\/application\\/edit\\/1\",\"slug\":1}', 1, NULL, '2026-06-21 20:53:12'),
(5, 'ae3268b3-9a82-42a1-930c-9676701603fc', 'update', 1, 'application', NULL, '{\"status\":1}', '{\"status\":0}', '{\"a_name\":\"Edit\",\"c_name\":\"Application\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/surat\\/application\\/edit\\/1\",\"slug\":1}', 1, NULL, '2026-06-21 20:58:05'),
(6, 'ce2a4e78-c8bf-4ff4-a257-4dd7ee596976', 'create', 2, 'application', NULL, '[]', '{\"id\":2,\"user_id\":1,\"program_id\":2,\"faculty_id\":1,\"company_name\":\"bcds\",\"company_street1\":\"jalan1 \",\"company_street2\":\"jaln2\",\"company_postcode\":\"40122\",\"company_city\":\"hoston\",\"company_state\":\"Wp Labuan\",\"group_leader_name\":\"danish\",\"group_leader_phone\":\"02233455677\",\"group_leader_email\":\"danish@hazrin.com\",\"Team_member\":3,\"date_interview\":\"2026-06-26T12:25:54+08:00\",\"status\":1,\"method\":\"f2f\"}', '{\"a_name\":\"Add\",\"c_name\":\"Application\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/surat\\/application\\/add\",\"slug\":1}', 1, NULL, '2026-06-26 22:26:02'),
(7, 'c14515b6-81a0-4333-ad0a-bca5b23920db', 'delete', 2, 'application', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Application\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/surat\\/application\\/delete\\/2\",\"slug\":1}', 1, NULL, '2026-06-26 22:27:10'),
(8, 'c51d8e47-ca87-4fdc-bd80-7a6e0ad50133', 'update', 1, 'application', NULL, '{\"approval_status\":0}', '{\"approval_status\":null}', '{\"a_name\":\"Edit\",\"c_name\":\"Application\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/surat\\/admin\\/application\\/edit\\/1\",\"slug\":1}', 1, NULL, '2026-06-30 16:18:35'),
(9, 'ff28b90f-dd4e-4933-9472-b9208e610874', 'update', 1, 'application', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2026-06-30 16:20:54'),
(10, 'e7f1923b-4810-441e-a67b-b3a755bdd81a', 'update', 1, 'application', NULL, '{\"approval_status\":1}', '{\"approval_status\":null}', '{\"a_name\":\"Edit\",\"c_name\":\"Application\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/surat\\/admin\\/application\\/edit\\/1\",\"slug\":1}', 1, NULL, '2026-06-30 16:21:25'),
(11, 'f44faa8b-3191-4df9-ac5c-9f06b8f959a2', 'update', 1, 'application', NULL, '{\"ref_no\":0}', '{\"ref_no\":12345}', '{\"a_name\":\"Edit\",\"c_name\":\"Application\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/surat\\/admin\\/application\\/edit\\/1\",\"slug\":1}', 1, NULL, '2026-06-30 16:42:19'),
(12, '46594b81-35ec-4436-9fcd-5366676cdd06', 'update', 1, 'application', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2026-06-30 16:42:31'),
(13, 'aca5bcc0-5f4c-4891-a595-183cf1382677', 'update', 1, 'application', NULL, '{\"approval_status\":1}', '{\"approval_status\":null}', '[]', 1, NULL, '2026-06-30 16:42:45'),
(14, '1c2ea00d-13e9-4fdd-80cc-f7c1ebf8184f', 'update', 1, 'application', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2026-06-30 16:42:52'),
(15, '800f2ba5-0f9b-466c-9512-256a790d6037', 'update', 1, 'application', NULL, '{\"approval_status\":1}', '{\"approval_status\":null}', '[]', 1, NULL, '2026-07-03 11:37:43'),
(16, 'd4a52686-698a-4779-ad8f-263644a652f3', 'update', 1, 'application', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2026-07-04 17:39:54'),
(17, 'd4057756-803c-4386-8293-6067747d8468', 'create', 2, 'users', NULL, '[]', '{\"id\":2,\"fullname\":\"Aiman NurHakimin\",\"password\":\"$2y$10$p0vhXn6IaHtVIqMFLAkd9.BrzwOhVO0s03CmGHG1wBC3ZoDPicUBO\",\"email\":\"aiman@ayer.com\",\"slug\":\"Aiman-NurHakimin\"}', '[]', 1, NULL, '2026-07-05 20:24:35'),
(18, '5150e13e-2861-4fba-be2a-dd763b06494c', 'create', 3, 'application', NULL, '[]', '{\"id\":3,\"user_id\":2,\"program_id\":2,\"faculty_id\":1,\"company_name\":\"Dola Sdn.Bhd\",\"company_street1\":\"No. 15, Jalan Teknologi 3\\/1\",\"company_street2\":\"Kota Damansara\",\"company_postcode\":\"47810\",\"company_city\":\"Petaling Jaya\",\"company_state\":\"Selangor\",\"group_leader_name\":\"Aiman NurHakimin\",\"group_leader_phone\":\"0112223333\",\"group_leader_email\":\"aiman@ayer.com\",\"Team_member\":4,\"date_interview\":\"2026-06-29T10:31:17+08:00\",\"method\":\"Physical\"}', '{\"a_name\":\"Add\",\"c_name\":\"Application\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/surat\\/application\\/add\",\"slug\":2}', 1, NULL, '2026-07-05 20:31:36'),
(19, '4191b921-3a34-46e6-ac70-a6cb8d425ed3', 'update', 3, 'application', NULL, '{\"approval_status\":1}', '{\"approval_status\":null}', '[]', 1, NULL, '2026-07-05 20:32:33'),
(20, '1cc8a655-1e99-4dd7-b981-30952c85dd27', 'update', 3, 'application', NULL, '{\"ref_no\":0}', '{\"ref_no\":1234567898}', '{\"a_name\":\"Edit\",\"c_name\":\"Application\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/surat\\/admin\\/application\\/edit\\/3\",\"slug\":1}', 1, NULL, '2026-07-05 20:33:21'),
(21, '1eab1f81-f9ce-484f-aaad-b571c55444dc', 'update', 3, 'application', NULL, '{\"approval_status\":0}', '{\"approval_status\":1}', '[]', 1, NULL, '2026-07-05 21:01:02');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ticket` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  `note_admin` text DEFAULT NULL,
  `ip` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `is_replied` tinyint(1) NOT NULL,
  `respond_date_time` datetime DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `code`, `name`, `status`, `created`, `modified`) VALUES
(1, 'CDIM', 'FACULTY SCIENCE INFROMATION', 1, '2026-06-21 06:25:57', '2026-06-21 06:25:57');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `category`, `question`, `answer`, `slug`, `status`, `created`, `modified`) VALUES
(1, 'General', 'General Questions 1', 'General Answer 1', 'General-Questions-1', 1, '2022-11-13 15:41:26', '2022-11-13 16:31:14'),
(2, 'Account', 'Account Questions 1', 'Account Answer 1', 'Account-Questions-1', 1, '2022-11-13 15:43:15', '2022-11-13 15:43:15'),
(3, 'Other', 'Other Questions 1', 'Other Answer 1', 'Other-Questions-1', 1, '2022-11-13 15:43:34', '2022-11-13 15:43:34'),
(6, 'General', 'General Questions 2', 'General Answer 2', 'General-Questions-2', 0, '2022-11-13 16:54:25', '2024-06-25 13:03:08');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT 0,
  `icon` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `auth` tinyint(1) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `divider_before` tinyint(1) DEFAULT 0,
  `parent_separator` tinyint(1) DEFAULT NULL,
  `division` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `parent_id`, `lft`, `rght`, `level`, `icon`, `controller`, `action`, `target`, `name`, `url`, `prefix`, `auth`, `admin`, `active`, `disabled`, `divider_before`, `parent_separator`, `division`) VALUES
(1, NULL, 1, 2, 0, '<i class=\"fa-solid fa-code\"></i>', 'Dashboards', 'Index', NULL, 'Dashboard', '', '', 1, 0, 1, 0, 0, 0, 0),
(2, NULL, 3, 4, 0, '<i class=\"fa-regular fa-circle-question\"></i>', 'Faqs', '', NULL, 'FAQs', '', '', 0, 0, 1, 0, 0, NULL, 0),
(3, NULL, 5, 6, 0, '<i class=\"fa-regular fa-message\"></i>', 'Contacts', 'Add', NULL, 'Contact Us', '', '', 0, 0, 1, NULL, 0, NULL, 0),
(4, NULL, 7, 14, 0, '<i class=\"fa-solid fa-circle-info\"></i>', 'Pages', 'manual', NULL, 'Documentation', '', '', 0, 0, 1, 0, 0, 1, 0),
(5, NULL, 15, 16, 0, '', '', '', NULL, 'Administrator', '', NULL, 0, 1, 1, NULL, 0, NULL, 1),
(6, NULL, 17, 18, 0, '<i class=\"fa-solid fa-gear\"></i>', 'Settings', 'Update', 'recrud', 'System Configuration', '', 'Admin', 1, 1, 1, NULL, 0, 0, 0),
(7, NULL, 19, 20, 0, '<i class=\"fa-solid fa-users-viewfinder\"></i>', 'Users', 'Index', NULL, 'User Management', '', 'Admin', 1, 1, 1, NULL, 0, NULL, 0),
(8, NULL, 21, 22, 0, '<i class=\"fa-solid fa-bars\"></i>', 'Menus', 'Index', NULL, 'Menu Management', '', 'Admin', 1, 1, 1, NULL, 0, 0, 0),
(9, NULL, 23, 24, 0, '<i class=\"menu-icon fa-solid fa-list-check\"></i>', 'Todos', 'Index', NULL, 'Todo List', '', 'Admin', 1, 1, 1, NULL, 0, NULL, 0),
(10, NULL, 25, 26, 0, '<i class=\"fa-regular fa-message\"></i>', 'Contacts', 'Index', NULL, 'Contact', '', 'Admin', 1, 1, 1, NULL, 0, NULL, 0),
(11, NULL, 27, 28, 0, '<i class=\"menu-icon fa-solid fa-timeline\"></i>', 'AuditLogs', 'Index', NULL, 'Audit Trail', '', 'Admin', 1, 1, 1, NULL, 0, NULL, 0),
(12, NULL, 29, 30, 0, '<i class=\"menu-icon fa-regular fa-circle-question\"></i>', 'Faqs', 'Index', NULL, 'FAQs', '', 'Admin', 1, 1, 1, NULL, 0, 0, 0),
(13, 4, 10, 11, 1, '<i class=\"fa-solid fa-code\"></i>', '', '', NULL, 'Code The Pixel', 'https://codethepixel.com/', '', 0, 0, 1, NULL, 0, 0, 0),
(14, 4, 8, 9, 1, '<i class=\"fa-regular fa-file-code\"></i>', 'Pages', 'manual', NULL, 'User Manual', '', '', 0, 0, 1, NULL, 0, 0, 0),
(15, 4, 12, 13, 1, '<i class=\"fa-brands fa-github\"></i>', '', '', NULL, 'Re-CRUD Github', 'https://github.com/Asyraf-wa/recrud', '', 0, 0, 1, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phinxlog`
--

CREATE TABLE `phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phinxlog`
--

INSERT INTO `phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20241029053753, 'Initial', '2026-06-21 13:12:41', '2026-06-21 13:12:41', 0);

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `faculty_id`, `code`, `name`, `status`, `created`, `modified`) VALUES
(1, 1, 'CDIM261', 'SARJANA MUDA SAINS MAKLUMAT (KEPUJIAN) PENGURUSAN REKOD', 1, '2026-06-21 07:08:14', '2026-06-21 07:08:14'),
(2, 1, 'CDIM262', 'SARJANA MUDA SAINS MAKLUMAT (KEPUJIAN) PENGURUSAN SISTEM MAKLUMAT', 1, '2026-06-21 07:08:36', '2026-06-21 07:08:36'),
(3, 1, 'CDIM263', 'SARJANA MUDA SAINS MAKLUMAT (KEPUJIAN) PENGURUSAN KANDUNGAN MAKLUMAT', 1, '2026-06-21 07:09:20', '2026-06-21 07:09:20'),
(4, 1, 'CDIM260', 'SARJANA MUDA SAINS MAKLUMAT (KEPUJIAN) PENGURUSAN PERPUSTAKAAN', 1, '2026-06-21 07:11:01', '2026-06-21 07:11:01');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` char(36) NOT NULL,
  `system_name` varchar(255) NOT NULL,
  `system_abbr` varchar(255) NOT NULL,
  `system_slogan` varchar(255) NOT NULL,
  `organization_name` varchar(255) NOT NULL,
  `domain_name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `notification_email` varchar(50) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_subject` varchar(255) NOT NULL,
  `meta_copyright` varchar(255) NOT NULL,
  `meta_desc` varchar(255) NOT NULL,
  `timezone` varchar(100) NOT NULL,
  `author` varchar(255) NOT NULL,
  `site_status` tinyint(1) NOT NULL,
  `user_reg` tinyint(1) NOT NULL,
  `config_2` tinyint(1) NOT NULL,
  `config_3` tinyint(1) NOT NULL,
  `version` varchar(255) NOT NULL,
  `private_key_from_recaptcha` varchar(255) DEFAULT NULL,
  `public_key_from_recaptcha` varchar(255) DEFAULT NULL,
  `banned_username` text DEFAULT NULL,
  `telegram_bot_token` varchar(255) DEFAULT NULL,
  `telegram_chatid` varchar(255) DEFAULT NULL,
  `hcaptcha_sitekey` varchar(255) DEFAULT NULL,
  `hcaptcha_secretkey` varchar(255) DEFAULT NULL,
  `notification` text NOT NULL,
  `notification_status` tinyint(1) NOT NULL,
  `notification_date` date DEFAULT NULL,
  `ribbon_title` varchar(20) NOT NULL,
  `ribbon_link` varchar(255) NOT NULL,
  `ribbon_status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `system_name`, `system_abbr`, `system_slogan`, `organization_name`, `domain_name`, `email`, `notification_email`, `meta_title`, `meta_keyword`, `meta_subject`, `meta_copyright`, `meta_desc`, `timezone`, `author`, `site_status`, `user_reg`, `config_2`, `config_3`, `version`, `private_key_from_recaptcha`, `public_key_from_recaptcha`, `banned_username`, `telegram_bot_token`, `telegram_chatid`, `hcaptcha_sitekey`, `hcaptcha_secretkey`, `notification`, `notification_status`, `notification_date`, `ribbon_title`, `ribbon_link`, `ribbon_status`, `created`, `modified`) VALUES
('recrud', 'Surat Interview', 'Surat', 'Code The Experiences', 'Code The Pixel Inc.', 'codethepixel.com', 'noreply@codethepixel.com', 'noreply@codethepixel.com', 'Re-CRUD', 'Re-CRUD, CakePHP, Learning, CRUD', 'Re-CRUD', 'Re-CRUD', 'Re-CRUD', 'Asia/Kuala_Lumpur', 'Re-CRUD', 0, 0, 0, 0, '1.1', '', '', NULL, '', '', '', '', '<p><strong>Server maintenance</strong> is scheduled to be executed on Jan 1, 2023, from 1.00 am to 4.00 am. An intermittent connection is expected during the server maintenance period.</p>', 0, '2022-11-07', 'Code The Pixel', 'https://codethepixel.com', 0, '2020-04-08 20:56:04', '2026-06-21 19:09:46');

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `urgency` varchar(255) NOT NULL COMMENT 'high, medium, low',
  `task` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `note` text NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending' COMMENT 'Pending, In Progress, Completed, Canceled',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `user_id`, `urgency`, `task`, `description`, `note`, `status`, `created`, `modified`) VALUES
('a02daac9-27e3-49ea-8090-927e60f9e255', '1', 'High', 'task 4 desc', '<p>task 4 desc</p>', '<p>task 4 desc</p>', 'In Progress', '2024-05-31 13:48:26', '2024-05-31 13:48:31'),
('a8618f9e-a3f7-4e7a-8a3f-05a5323cd5af', '1', 'High', 'task 1', '<p>task 1 desc</p>', '<p>task 1 desc</p>', 'Completed', '2024-05-31 13:45:22', '2024-05-31 13:45:40'),
('c892f026-c6f8-4353-82c2-75f49c0f5d6b', '1', 'Medium', 'Task 3 - Develop the To Do Task and render in Dashboard', '<p>task 3 desc</p>', '<p>task 3 desc</p>', 'Pending', '2024-05-31 13:48:06', '2024-05-31 13:48:06'),
('eda46e51-555a-4309-a28b-d0835bf4f4b2', '1', 'Low', 'task 2', '<p>task 2 desc</p>', '<p>task 2 desc</p>', 'Canceled', '2024-05-31 13:46:12', '2024-05-31 13:46:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_group_id` int(11) DEFAULT 3,
  `fullname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `avatar_dir` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `token_created_at` datetime NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '0' COMMENT '	is_active',
  `is_email_verified` int(11) NOT NULL DEFAULT 0,
  `last_login` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL COMMENT 'user_id',
  `modified_by` int(11) DEFAULT NULL COMMENT 'user_id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_group_id`, `fullname`, `password`, `email`, `avatar`, `avatar_dir`, `token`, `token_created_at`, `status`, `is_email_verified`, `last_login`, `ip_address`, `slug`, `created`, `modified`, `created_by`, `modified_by`) VALUES
(1, 1, 'Aiman ayer', '$2y$10$OrUKHzNQUic6dFqSuG9QBeDzMbbwPz1BQXKgBKPcQyMTNdv3Z22xe', 'admin@localhost.com', '', '', NULL, '2024-07-10 20:30:04', '1', 1, '2026-07-12 10:00:45', '::1', 'Administrator', '2022-10-26 02:54:19', '2026-06-21 20:25:41', NULL, NULL),
(2, 3, 'Aiman NurHakimin', '$2y$10$p0vhXn6IaHtVIqMFLAkd9.BrzwOhVO0s03CmGHG1wBC3ZoDPicUBO', 'aiman@ayer.com', NULL, NULL, NULL, '0000-00-00 00:00:00', '0', 0, '2026-07-05 20:27:46', '::1', 'Aiman-NurHakimin', '2026-07-05 20:24:35', '2026-07-05 20:24:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `name`, `description`, `created`, `modified`) VALUES
(1, 'Admin', 'Admninistrator', '2021-01-23 13:21:29', '2021-01-23 13:21:29'),
(2, 'Mod', 'Moderator', '2021-01-23 13:21:29', '2021-01-23 13:21:29'),
(3, 'User', 'Normal User', '2021-01-23 13:21:29', '2021-01-23 13:21:29');

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `useragent` varchar(256) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `referrer` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_logs`
--

INSERT INTO `user_logs` (`id`, `user_id`, `action`, `useragent`, `os`, `ip`, `host`, `referrer`, `status`, `created`, `modified`) VALUES
(1, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'DESKTOP-9T4IENE', NULL, 1, '2026-06-21 13:16:03', '2026-06-21 13:16:03'),
(2, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'DESKTOP-9T4IENE', NULL, 1, '2026-06-21 19:00:16', '2026-06-21 19:00:16'),
(3, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'DESKTOP-9T4IENE', NULL, 1, '2026-06-21 22:31:46', '2026-06-21 22:31:46'),
(4, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'DESKTOP-9T4IENE', NULL, 1, '2026-06-21 23:50:55', '2026-06-21 23:50:55'),
(5, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'DESKTOP-9T4IENE', NULL, 1, '2026-06-22 11:09:20', '2026-06-22 11:09:20'),
(6, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'DESKTOP-9T4IENE', NULL, 1, '2026-06-23 16:23:02', '2026-06-23 16:23:02'),
(7, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'DESKTOP-9T4IENE', NULL, 1, '2026-06-26 22:20:28', '2026-06-26 22:20:28'),
(8, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'DESKTOP-9T4IENE', NULL, 1, '2026-06-26 22:20:29', '2026-06-26 22:20:29'),
(9, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'DESKTOP-9T4IENE', NULL, 1, '2026-06-27 00:04:53', '2026-06-27 00:04:53'),
(10, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'DESKTOP-9T4IENE', NULL, 1, '2026-06-28 09:07:40', '2026-06-28 09:07:40'),
(11, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'DESKTOP-9T4IENE', NULL, 1, '2026-06-28 13:15:45', '2026-06-28 13:15:45'),
(12, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'DESKTOP-9T4IENE', NULL, 1, '2026-06-28 18:28:51', '2026-06-28 18:28:51'),
(13, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'DESKTOP-9T4IENE', NULL, 1, '2026-06-28 20:43:41', '2026-06-28 20:43:41'),
(14, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'DESKTOP-9T4IENE', NULL, 1, '2026-06-29 09:09:26', '2026-06-29 09:09:26'),
(15, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'DESKTOP-9T4IENE', NULL, 1, '2026-06-30 09:55:46', '2026-06-30 09:55:46'),
(16, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'DESKTOP-9T4IENE', NULL, 1, '2026-06-30 16:05:07', '2026-06-30 16:05:07'),
(17, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'DESKTOP-9T4IENE', NULL, 1, '2026-07-03 10:41:55', '2026-07-03 10:41:55'),
(18, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'DESKTOP-9T4IENE', NULL, 1, '2026-07-04 17:29:56', '2026-07-04 17:29:56'),
(19, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'DESKTOP-9T4IENE', NULL, 1, '2026-07-04 20:50:12', '2026-07-04 20:50:12'),
(20, 2, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'DESKTOP-9T4IENE', NULL, 1, '2026-07-05 20:24:51', '2026-07-05 20:24:51'),
(21, 2, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'DESKTOP-9T4IENE', NULL, 1, '2026-07-05 20:27:46', '2026-07-05 20:27:46'),
(22, 2, 'Logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'DESKTOP-9T4IENE', 'http://localhost/surat/', 1, '2026-07-05 20:32:00', '2026-07-05 20:32:00'),
(23, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'DESKTOP-9T4IENE', NULL, 1, '2026-07-05 20:32:11', '2026-07-05 20:32:11'),
(24, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'DESKTOP-9T4IENE', NULL, 1, '2026-07-05 20:59:58', '2026-07-05 20:59:58'),
(25, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'build 26200 (Windows 11)', '::1', 'DESKTOP-9T4IENE', NULL, 1, '2026-07-12 10:00:45', '2026-07-12 10:00:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction` (`transaction`),
  ADD KEY `type` (`type`),
  ADD KEY `primary_key` (`primary_key`),
  ADD KEY `source` (`source`),
  ADD KEY `parent_source` (`parent_source`),
  ADD KEY `created` (`created`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lft` (`lft`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `phinxlog`
--
ALTER TABLE `phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
