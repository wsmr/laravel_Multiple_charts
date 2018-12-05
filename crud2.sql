-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 05, 2018 at 02:40 PM
-- Server version: 5.7.24
-- PHP Version: 7.1.24-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud2`
--

-- --------------------------------------------------------

--
-- Table structure for table `action_items`
--

CREATE TABLE `action_items` (
  `id` int(10) NOT NULL,
  `objectives_id` int(10) NOT NULL,
  `owners_id` int(10) NOT NULL,
  `status_id` int(10) NOT NULL,
  `due_date` date NOT NULL,
  `revised_date` date DEFAULT NULL,
  `name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1,
  `comments` text CHARACTER SET latin1,
  `review` text COLLATE utf8mb4_unicode_ci,
  `active` int(2) NOT NULL DEFAULT '1',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `action_items`
--

INSERT INTO `action_items` (`id`, `objectives_id`, `owners_id`, `status_id`, `due_date`, `revised_date`, `name`, `description`, `comments`, `review`, `active`, `last_update`) VALUES
(1, 1, 1, 5, '2018-10-20', '2018-10-20', 'Secure Contact Minister/Sec/RHD Chief ENG ', '', '', NULL, 1, '2018-10-29 07:00:05'),
(2, 1, 1, 5, '2018-10-21', '2018-10-21', 'Obtain Appointment with Secured contact', '', '', NULL, 1, '2018-10-29 07:00:05'),
(3, 1, 1, 5, '2018-10-20', '2018-10-20', 'Secure ADB contacts in Manila & Dhaka', '', '', NULL, 1, '2018-10-29 07:00:05'),
(4, 1, 1, 5, '2018-10-23', '2018-10-23', 'Obtain Appointment with Secured ADB contact', '', '', NULL, 1, '2018-10-29 07:00:05'),
(5, 1, 1, 5, '2018-11-07', '2018-11-07', 'Visit to Bangladesh', '', '', NULL, 1, '2018-10-29 07:00:05'),
(6, 2, 1, 5, '2018-11-15', '2018-11-15', 'Initiate Project Strategy ', '', '', NULL, 1, '2018-10-29 07:00:05'),
(7, 3, 1, 5, '2018-11-16', '2018-11-16', 'Initiate Project Strategy ', '', '', NULL, 1, '2018-10-29 07:00:05'),
(8, 4, 1, 5, '2018-11-17', '2018-11-17', 'Initiate Project Strategy ', '', '', NULL, 1, '2018-10-29 07:00:05'),
(9, 5, 1, 5, '2018-11-18', '2018-11-18', 'Initiate Project Strategy ', '', '', NULL, 1, '2018-10-29 07:00:05'),
(10, 6, 1, 5, '2018-11-19', '2018-11-19', 'Initiate Project Strategy ', '', '', NULL, 1, '2018-10-29 07:00:05'),
(11, 7, 2, 4, '2018-10-27', '2018-10-27', 'Draft a Country Strategy ', '', '', NULL, 1, '2018-10-29 07:00:05'),
(12, 7, 2, 4, '2018-10-12', '2018-10-12', 'TOR Draft for project monitoring dashboard ', '', '', NULL, 1, '2018-10-29 07:00:05'),
(13, 7, 2, 3, '2018-10-20', '2018-10-20', 'List the Potential ADB WB Projects ', '', '', NULL, 1, '2018-10-29 07:00:05'),
(14, 7, 2, 5, '2018-11-15', '2018-11-15', 'Country visit planning', '', '', NULL, 1, '2018-10-29 07:00:05'),
(15, 8, 1, 5, '2018-11-12', '2018-11-12', 'Identify potential projects from ADB and WB', '', '', NULL, 1, '2018-10-29 07:00:05'),
(16, 8, 1, 5, '2018-11-24', '2018-11-24', 'Stakeholder list and the contact information ', '', '', NULL, 1, '2018-10-29 07:00:05'),
(17, 8, 1, 5, '2018-11-30', '2018-11-30', 'Plan a visit', '', '', NULL, 1, '2018-10-29 07:00:05'),
(18, 9, 1, 5, '2018-10-20', '2018-10-20', 'Draft a Country Strategy ', '', '', NULL, 1, '2018-10-29 07:00:05'),
(19, 9, 1, 5, '2018-10-30', '2018-10-30', 'Collect the prerequisites to register roughton office in india', '', '', NULL, 1, '2018-10-29 07:00:05'),
(20, 10, 1, 4, '2018-10-15', '2018-10-15', 'List the Potential ADB Projects', 'casdfdg', 'dasfrtb', 'dasfgvwtb', 1, '2018-10-29 07:00:05'),
(21, 11, 2, 5, '2018-11-30', '2018-11-30', 'List the Potential ADB WB Projects ', '', '', NULL, 1, '2018-10-29 07:00:05'),
(22, 11, 2, 4, '2018-12-05', '2018-12-05', 'Workout partnerships with local consultants', '', '', NULL, 1, '2018-10-29 07:00:05'),
(23, 12, 3, 5, '2018-11-28', '2018-11-30', 'call client', 'fbvgerbetbe', 'gsfhnryjd', 'dfgsnfh', 1, '2018-11-26 08:42:35'),
(24, 13, 3, 5, '2019-01-01', '2019-01-05', 'test2', 'dfagesht', 'fgesthtuj', 'efwgrhtj', 1, '2018-12-05 18:30:00'),
(25, 4, 3, 4, '2018-12-04', NULL, 'Testting 1', 'Testting 1', 'Testting 1', 'Testting 1', 1, '2018-12-04 07:44:33'),
(26, 2, 3, 3, '2018-12-28', NULL, 'Testting 2', 'Testting 2', 'Testting 2', 'Testting 2', 1, '2018-12-04 07:45:10'),
(27, 11, 1, 3, '2018-12-29', NULL, 'Testting 3', 'Testting 3', 'Testting 3', 'Testting 3', 1, '2018-12-04 07:46:09'),
(28, 8, 1, 3, '2018-12-27', NULL, 'Testting 4', 'Testting 4', 'Testting 4', 'Testting 4', 1, '2018-12-04 07:46:39');

-- --------------------------------------------------------

--
-- Table structure for table `ActivityCountByOwner`
--

CREATE TABLE `ActivityCountByOwner` (
  `id` int(5) NOT NULL,
  `Owner` varchar(10) NOT NULL,
  `Open` int(11) NOT NULL,
  `Inprogress` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ActivityCountByOwner`
--

INSERT INTO `ActivityCountByOwner` (`id`, `Owner`, `Open`, `Inprogress`) VALUES
(1, 'NS', 5, 8),
(2, 'Pw', 7, 12),
(3, 'RS', 7, 4),
(4, 'DE', 11, 6);

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2018-11-20 23:44:25', NULL),
(2, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2018-11-20 23:45:30', NULL),
(3, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2018-11-20 23:46:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2018-11-20 23:47:04', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Chartjs at Menu Management', '', 1, '2018-11-20 23:54:26', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2018-11-27 12:43:06', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/status/add-save', 'Add New Data test at Status', '', 1, '2018-11-27 12:46:04', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/status/delete/6', 'Delete data test at Status', '', 1, '2018-11-27 12:46:09', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2018-11-27 13:40:15', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2018-11-30 01:01:25', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/users/add-save', 'Add New Data madhuranga at Users Management', '', 1, '2018-11-30 01:24:43', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data Master Data at Menu Management', '', 1, '2018-11-30 01:25:51', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/4', 'Update data Countries at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>yellow</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2018-11-30 01:26:40', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/4', 'Update data Countries at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>yellow</td><td>normal</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2018-11-30 01:26:53', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/5', 'Update data Objectives at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>yellow</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2018-11-30 01:27:05', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/6', 'Update data Actionitems at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>yellow</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2018-11-30 01:27:24', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/statistic_builder/add-save', 'Add New Data Status Summery by Owner at Statistic Builder', '', 1, '2018-11-30 01:32:14', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data Status Summery by Owner at Menu Management', '', 1, '2018-11-30 01:41:51', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2018-11-30 01:41:56', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 2, '2018-11-30 01:41:58', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 2, '2018-11-30 03:35:52', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 2, '2018-11-30 03:36:18', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 2, '2018-11-30 20:22:51', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 2, '2018-11-30 20:26:16', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 2, '2018-11-30 20:26:18', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 2, '2018-11-30 20:28:39', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 2, '2018-11-30 20:29:05', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 2, '2018-11-30 20:29:58', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 2, '2018-11-30 20:36:41', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 2, '2018-12-01 02:51:29', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 2, '2018-12-01 02:52:43', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 2, '2018-12-01 02:52:55', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 2, '2018-12-01 21:39:06', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 2, '2018-12-01 22:54:54', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/objectives/delete/11', 'Delete data Go to market strategy for Myanmar  at Objectives', '', 2, '2018-12-01 22:59:04', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 2, '2018-12-01 23:08:18', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 2, '2018-12-02 02:48:35', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/menu_management/add-save', 'Add New Data EChart at Menu Management', '', 2, '2018-12-02 02:50:03', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 2, '2018-12-02 07:26:09', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 2, '2018-12-02 07:28:31', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 2, '2018-12-02 07:28:56', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 2, '2018-12-02 07:29:32', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/action_items/delete/24', 'Delete data call client 2 at Actionitems', '', 2, '2018-12-02 07:30:57', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 2, '2018-12-02 07:32:15', NULL),
(42, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 2, '2018-12-02 07:32:47', NULL),
(43, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 2, '2018-12-02 20:59:49', NULL),
(44, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/action_items/edit-save/20', 'Update data List the Potential ADB Projects at Actionitems', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status_id</td><td>5</td><td>4</td></tr><tr><td>name</td><td>List the Potential ADB Projects </td><td>List the Potential ADB Projects</td></tr><tr><td>description</td><td></td><td>casdfdg</td></tr><tr><td>comments</td><td></td><td>dasfrtb</td></tr><tr><td>review</td><td></td><td>dasfgvwtb</td></tr></tbody></table>', 2, '2018-12-02 22:32:10', NULL),
(45, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 2, '2018-12-03 02:06:21', NULL),
(46, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 2, '2018-12-03 03:07:48', NULL),
(47, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 2, '2018-12-03 04:25:40', NULL),
(48, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 2, '2018-12-03 04:27:27', NULL),
(49, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/action_items/add-save', 'Add New Data test2 at Actionitems', '', 2, '2018-12-03 07:05:53', NULL),
(50, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 2, '2018-12-03 21:50:20', NULL),
(51, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/users/add-save', 'Add New Data kasun at Users Management', '', 2, '2018-12-03 22:38:40', NULL),
(52, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 2, '2018-12-03 23:05:51', NULL),
(53, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 2, '2018-12-03 23:09:05', NULL),
(54, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/users/edit-save/3', 'Update data kasun at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$myQxkN4du.zlpr1rWVaB4e6ulDPhZd9FjiyZv3bPruOj4ldFb7LN.</td><td>$2y$10$8cOkNn8bRZXoUd/5kVCJR.CyHDAdyyAHkCccP/j3KZEDpqxwsZ.2a</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 2, '2018-12-03 23:09:17', NULL),
(55, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 2, '2018-12-03 23:09:37', NULL),
(56, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/forgot', 'Someone with IP 127.0.0.1 request a password for kasun@mgconsultants.lk', '', NULL, '2018-12-03 23:09:51', NULL),
(57, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 2, '2018-12-03 23:11:51', NULL),
(58, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/users/edit-save/3', 'Update data kasun at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$3e7tjkai/QHlkyaqn6KbIe3fJfJuAj05zYcd30qu.zrcmQy3Nzx4y</td><td>$2y$10$wkXQxIDXnhJm9doSZaP4z.P6./A80hjFeBYwM1buju2jbGEbw8s.O</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 2, '2018-12-03 23:13:29', NULL),
(59, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 2, '2018-12-03 23:46:25', NULL),
(60, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 2, '2018-12-04 00:06:21', NULL),
(61, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/9', 'Update data EChart at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 2, '2018-12-04 00:06:46', NULL),
(62, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/menu_management/edit-save/9', 'Update data EChart at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 2, '2018-12-04 00:06:58', NULL),
(63, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 2, '2018-12-04 00:07:13', NULL),
(64, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 2, '2018-12-04 00:34:20', NULL),
(65, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 2, '2018-12-04 00:34:51', NULL),
(66, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 2, '2018-12-04 00:34:57', NULL),
(67, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2018-12-04 01:22:48', NULL),
(68, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2018-12-04 01:26:02', NULL),
(69, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2018-12-04 01:55:02', NULL),
(70, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2018-12-04 01:55:59', NULL),
(71, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://127.0.0.1:8000/admin/action_items/add-save', 'Add New Data Testting 1 at Actionitems', '', 1, '2018-12-04 02:14:33', NULL),
(72, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://127.0.0.1:8000/admin/action_items/add-save', 'Add New Data Testting 2 at Actionitems', '', 1, '2018-12-04 02:15:10', NULL),
(73, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://127.0.0.1:8000/admin/action_items/add-save', 'Add New Data Testting 3 at Actionitems', '', 1, '2018-12-04 02:16:09', NULL),
(74, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://127.0.0.1:8000/admin/action_items/add-save', 'Add New Data Testting 4 at Actionitems', '', 1, '2018-12-04 02:16:39', NULL),
(75, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2018-12-04 21:41:52', NULL),
(76, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Charts at Menu Management', '', 1, '2018-12-04 21:59:55', NULL),
(77, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2018-12-05 00:19:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Chartjs', 'Controller & Method', 'ChartjsController@index', 'aqua', 'fa fa-line-chart', 0, 1, 1, 1, 1, '2018-11-20 23:54:26', NULL),
(2, 'Status', 'Route', 'AdminStatusControllerGetIndex', NULL, 'fa fa-glass', 7, 1, 0, 1, 1, '2018-11-27 12:43:56', NULL),
(3, 'Owners', 'Route', 'AdminOwnersControllerGetIndex', NULL, 'fa fa-user', 7, 1, 0, 1, 2, '2018-11-27 13:07:44', NULL),
(4, 'Countries', 'Route', 'AdminCountriesControllerGetIndex', 'normal', 'fa fa-clock-o', 7, 1, 0, 1, 3, '2018-11-27 13:09:18', '2018-11-30 01:26:53'),
(5, 'Objectives', 'Route', 'AdminObjectivesControllerGetIndex', 'yellow', 'fa fa-search', 0, 1, 0, 1, 3, '2018-11-27 13:35:13', '2018-11-30 01:27:05'),
(6, 'Actionitems', 'Route', 'AdminActionItemsControllerGetIndex', 'yellow', 'fa fa-search', 0, 1, 0, 1, 2, '2018-11-27 13:38:44', '2018-11-30 01:27:24'),
(7, 'Master Data', 'URL', '#', 'normal', 'fa fa-th-list', 0, 1, 0, 1, 4, '2018-11-30 01:25:51', NULL),
(8, 'Status Summery by Owner', 'Statistic', 'statistic_builder/show/status-summery-by-owner', 'green', 'fa fa-search', 0, 1, 0, 1, NULL, '2018-11-30 01:41:51', NULL),
(9, 'EChart', 'Controller & Method', 'EChartController@index', 'aqua', 'fa fa-envelope-o', 0, 1, 0, 1, NULL, '2018-12-02 02:50:03', '2018-12-04 00:06:58'),
(10, 'Charts', 'Controller & Method', 'TestController@index', 'red', 'fa fa-bar-chart', 0, 1, 0, 1, NULL, '2018-12-04 21:59:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(7, 7, 1),
(9, 4, 1),
(10, 5, 1),
(11, 6, 1),
(12, 8, 1),
(15, 9, 1),
(16, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2018-11-20 23:44:24', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2018-11-20 23:44:24', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2018-11-20 23:44:24', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2018-11-20 23:44:24', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2018-11-20 23:44:24', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2018-11-20 23:44:24', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2018-11-20 23:44:24', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2018-11-20 23:44:24', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2018-11-20 23:44:24', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2018-11-20 23:44:24', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2018-11-20 23:44:24', NULL, NULL),
(12, 'Status', 'fa fa-glass', 'status', 'status', 'AdminStatusController', 0, 0, '2018-11-27 12:43:56', NULL, NULL),
(13, 'Owners', 'fa fa-user', 'owners', 'owners', 'AdminOwnersController', 0, 0, '2018-11-27 13:07:44', NULL, NULL),
(14, 'Countries', 'fa fa-clock-o', 'countries', 'countries', 'AdminCountriesController', 0, 0, '2018-11-27 13:09:18', NULL, NULL),
(15, 'Objectives', 'fa fa-search', 'objectives', 'objectives', 'AdminObjectivesController', 0, 0, '2018-11-27 13:35:13', NULL, NULL),
(16, 'Actionitems', 'fa fa-search', 'action_items', 'action_items', 'AdminActionItemsController', 0, 0, '2018-11-27 13:38:44', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2018-11-20 23:44:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2018-11-20 23:44:24', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2018-11-20 23:44:24', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2018-11-20 23:44:24', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2018-11-20 23:44:24', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2018-11-20 23:44:24', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2018-11-20 23:44:24', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2018-11-20 23:44:25', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2018-11-20 23:44:25', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2018-11-20 23:44:25', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2018-11-20 23:44:25', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2018-11-20 23:44:25', NULL),
(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 16, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2018-11-20 23:44:25', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2018-11-20 23:44:25', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2018-11-20 23:44:25', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'madhuranga@mgconsultants.lk', 'text', NULL, NULL, '2018-11-20 23:44:25', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'smtp', 'select', 'smtp,mail,sendmail', NULL, '2018-11-20 23:44:25', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', 'mail.engcl.com', 'text', NULL, NULL, '2018-11-20 23:44:25', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2018-11-20 23:44:25', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', NULL, 'text', NULL, NULL, '2018-11-20 23:44:25', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', NULL, 'text', NULL, NULL, '2018-11-20 23:44:25', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'MGG ACTION TRACKING', 'text', NULL, NULL, '2018-11-20 23:44:25', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'A4', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2018-11-20 23:44:25', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2018-12/2e7daffa3b6d6d85fd29b786ea708a3f.png', 'upload_image', NULL, NULL, '2018-11-20 23:44:25', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', NULL, 'upload_image', NULL, NULL, '2018-11-20 23:44:25', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2018-11-20 23:44:25', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2018-11-20 23:44:25', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2018-11-20 23:44:25', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Status Summery by Owner', 'status-summery-by-owner', '2018-11-30 01:32:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(1, 1, 'cbaa590601b2dc1ea91ae0c77bf2793f', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Week No\",\"icon\":\"calendar\",\"color\":\"bg-green\",\"link\":\"#\",\"sql\":\"select concat(YEAR(CURDATE()),\'-\', WEEK(CURDATE(), 1)) as Week\"}', '2018-11-30 01:32:30', NULL),
(2, 1, 'd0ee0fa722299349279fed617ed2bce7', 'chartbar', 'area2', 0, NULL, '{\"name\":\"Due Items in This Week\",\"sql\":\"select owner as label, count(id) as value from vWactionitems where status=\'Open\' and DaysDue>0   group by owner;\\r\\nselect owner as label, count(id) as value from vWactionitems where status=\'Inprogress\' and DaysDue>0   group by owner;\",\"area_name\":\"Open;In Progress\",\"goals\":null}', '2018-11-30 01:34:31', NULL),
(3, 1, '0ac5ec7680343a86d45c161e5e286990', 'chartarea', NULL, 0, 'Untitled', NULL, '2018-11-30 01:35:27', NULL),
(4, 1, 'e86469c078f373f7884d259d780a7895', 'chartbar', 'area3', 0, NULL, '{\"name\":\"Planned Items for Next Week\",\"sql\":\"select owner as label, count(id) as value from vWactionitems where status=\'Open\' and DaysDue<0 and DaysDue>-7  group by owner;\\r\\nselect owner as label, count(id) as value from vWactionitems where status=\'Inprogress\' and DaysDue<0 and DaysDue>-7  group by owner;\",\"area_name\":\"Open;In Progress\",\"goals\":null}', '2018-11-30 01:35:32', NULL),
(5, 1, 'eb1e0977e9fdee3fbc88f396612a408e', 'chartbar', 'area4', 0, NULL, '{\"name\":\"Idle Items in This Week\",\"sql\":\"select owner as label, count(id) as value from vWactionitems where status=\'Open\' and DaysDue>0 and DaysIdle>10  group by owner;\\r\\nselect owner as label, count(id) as value from vWactionitems where status=\'Inprogress\' and DaysDue>0 and DaysIdle>10  group by owner;\",\"area_name\":\"Open;InProgress\",\"goals\":null}', '2018-11-30 01:36:16', NULL),
(7, 1, '2a55da1d4f9dda817a13b568e2599331', 'table', 'area5', 0, NULL, '{\"name\":\"Due Items on This Week\",\"sql\":\"select owner,objective,actionitem,status,country,daysdue,daysidle from vWactionitems where (status=\'Open\' or status=\'Inprogress\' ) and daysdue>0 order by owner\"}', '2018-11-30 01:38:23', NULL),
(8, 1, '709bd325c8fc9a311114a0d9e05ecbc8', 'table', 'area5', 1, NULL, '{\"name\":\"test\",\"sql\":\"select owner,objective,actionitem,status,country,daysdue,daysidle from vWactionitems where (status=\'Open\' or status=\'Inprogress\' ) and (daysdue<=0  and daysdue>-7) order by owner\"}', '2018-12-02 03:56:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$e/zIcAFEtTTwc1L2Z3YsQe//2D7XxCLQaqhkeWIhdOvDBOqQrLJxi', 1, '2018-11-20 23:44:24', NULL, 'Active'),
(2, 'madhuranga', 'uploads/1/2018-11/download.png', 'madhuranga@mgconsultants.lk', '$2y$10$UKclnbgag2uO.pbNypBf3eYy.YpfUrUjD/lm6clWQa7BZpR0MHzKG', 1, '2018-11-30 01:24:43', NULL, NULL),
(3, 'kasun', 'uploads/2/2018-12/download.png', 'kasun@mgconsultants.lk', '$2y$10$wkXQxIDXnhJm9doSZaP4z.P6./A80hjFeBYwM1buju2jbGEbw8s.O', 1, '2018-12-03 22:38:40', '2018-12-03 23:13:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) NOT NULL,
  `name` varchar(10) CHARACTER SET latin1 NOT NULL,
  `active` int(2) NOT NULL DEFAULT '1',
  `region` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owners_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `active`, `region`, `owners_id`) VALUES
(1, 'Bangladesh', 1, 'Asia', 1),
(2, 'Nepal', 1, 'Asia', 2),
(3, 'Myanmar', 1, 'Asia', 2),
(4, 'Pakistan', 1, 'Asia', 1),
(5, 'India', 1, 'Asia', 1),
(6, 'Uganda', 1, 'AE', 3);

-- --------------------------------------------------------

--
-- Table structure for table `footballfans`
--

CREATE TABLE `footballfans` (
  `id` int(10) NOT NULL,
  `footballteam` varchar(20) NOT NULL,
  `fan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `footballfans`
--

INSERT INTO `footballfans` (`id`, `footballteam`, `fan`) VALUES
(1, 'Spain', 100000),
(2, 'Germany', 320000),
(3, 'United States', 350000),
(4, 'India', 500000),
(5, 'Sri Lanka', 900000),
(6, 'Argentina', 380000),
(7, 'Russia', 460000),
(8, 'Iceland', 500000),
(9, 'Australia', 777000),
(10, 'Greece', 555000),
(11, 'Japan', 1000000);

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
(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
(3, '2016_08_07_151210_add_table_cms_logs', 1),
(4, '2016_08_07_151211_add_details_cms_logs', 1),
(5, '2016_08_07_152014_add_table_cms_privileges', 1),
(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(7, '2016_08_07_152320_add_table_cms_settings', 1),
(8, '2016_08_07_152421_add_table_cms_users', 1),
(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(10, '2016_08_07_154624_add_table_cms_moduls', 1),
(11, '2016_08_17_225409_add_status_cms_users', 1),
(12, '2016_08_20_125418_add_table_cms_notifications', 1),
(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
(14, '2016_09_16_035347_add_group_setting', 1),
(15, '2016_09_16_045425_add_label_setting', 1),
(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(17, '2016_10_01_141740_add_method_type_apicustom', 1),
(18, '2016_10_01_141846_add_parameters_apicustom', 1),
(19, '2016_10_01_141934_add_responses_apicustom', 1),
(20, '2016_10_01_144826_add_table_apikey', 1),
(21, '2016_11_14_141657_create_cms_menus', 1),
(22, '2016_11_15_132350_create_cms_email_templates', 1),
(23, '2016_11_15_190410_create_cms_statistics', 1),
(24, '2016_11_17_102740_create_cms_statistic_components', 1),
(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1);

-- --------------------------------------------------------

--
-- Table structure for table `objectives`
--

CREATE TABLE `objectives` (
  `id` int(10) NOT NULL,
  `countries_id` int(10) NOT NULL,
  `owners_id` int(10) NOT NULL,
  `name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1,
  `target_timeline` date NOT NULL,
  `comments` text CHARACTER SET latin1,
  `active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `objectives`
--

INSERT INTO `objectives` (`id`, `countries_id`, `owners_id`, `name`, `description`, `target_timeline`, `comments`, `active`) VALUES
(1, 1, 1, 'Secure Five Projects in Bangladesh', '', '2018-12-31', '', 1),
(2, 1, 1, 'DHAKA – Sylhet $11.5M RHD', '', '2018-12-31', '', 1),
(3, 1, 1, 'SASEC 3 – $10M RHD', '', '2018-12-31', '', 1),
(4, 1, 1, 'Chittagong – cox’s bazar $14Mn RHD', '', '2018-12-31', '', 1),
(5, 1, 1, 'Rural Bridges – CGED ', '', '2018-12-31', '', 1),
(6, 1, 1, 'Rural Connectivity Improvement Project – CGED ', '', '2018-12-31', '', 1),
(7, 2, 2, 'Secure a $6Mn Worth of Business', '', '2018-12-31', '', 1),
(8, 4, 1, 'Pakistan Opportunities', '', '2018-12-31', '', 1),
(9, 5, 1, 'Go-to Market strategy for India', '', '2018-12-31', '', 1),
(10, 5, 1, 'Secure $10Mn Projects in india', '', '2018-12-31', '', 1),
(11, 3, 2, 'Go to market strategy for Myanmar ', '', '2018-12-31', '', 1),
(12, 3, 3, 'test', 'casdgvsfag', '2018-12-08', NULL, 1),
(13, 6, 3, 'test 2', 'test2 cfsdv', '2018-12-08', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `owners`
--

CREATE TABLE `owners` (
  `id` int(10) NOT NULL,
  `name` varchar(10) CHARACTER SET latin1 NOT NULL,
  `short_code` varchar(10) CHARACTER SET latin1 NOT NULL,
  `active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `owners`
--

INSERT INTO `owners` (`id`, `name`, `short_code`, `active`) VALUES
(1, 'RW', 'RW', 1),
(2, 'NS', 'NS', 1),
(3, 'pwd', 'pw', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Product_Name`
--

CREATE TABLE `Product_Name` (
  `id` int(11) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `UsersCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Product_Name`
--

INSERT INTO `Product_Name` (`id`, `ProductName`, `UsersCount`) VALUES
(1, 'Opera Mini', 100000),
(2, 'Internet Explorer', 50000),
(3, 'Google Chrome', 400000),
(4, 'Firefox', 300000),
(5, 'Torch', 50000),
(6, 'TOR', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `Product_Versions`
--

CREATE TABLE `Product_Versions` (
  `id` int(11) NOT NULL,
  `Product_id` int(11) NOT NULL,
  `Version` varchar(10) NOT NULL,
  `Count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Product_Versions`
--

INSERT INTO `Product_Versions` (`id`, `Product_id`, `Version`, `Count`) VALUES
(1, 1, 'v 1.0', 3000),
(2, 1, 'v 2.0', 7000),
(3, 1, 'v 3.0', 20000),
(4, 1, 'v 4.0', 25000),
(5, 1, 'v 5.0', 45000),
(6, 2, 'v 1.0', 10000),
(7, 2, 'v 1.1', 15000),
(8, 2, 'v 1.3', 25000),
(9, 3, 'v 5.0', 50000),
(10, 3, 'v 6.0', 70000),
(11, 3, 'v 7.0', 80000),
(12, 3, 'v 8.0', 90000),
(13, 3, 'v 9.0', 110000),
(14, 4, 'v 49.0', 20000),
(15, 4, 'v 49.1', 60000),
(16, 4, 'v 49.2', 80000),
(17, 4, 'v 49.3', 140000),
(18, 5, 'v 20.1', 20000),
(19, 5, 'v 20.2', 30000),
(20, 6, 'v 12.0.3', 5000),
(21, 6, 'v 12.1.2', 6000),
(22, 6, 'v 12.1.4', 9000);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(10) NOT NULL,
  `name` varchar(10) CHARACTER SET latin1 NOT NULL,
  `active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`, `active`) VALUES
(3, 'Completed', 1),
(4, 'InProgress', 1),
(5, 'Open', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Status_summery_by_owner`
-- (See below for the actual view)
--
CREATE TABLE `Status_summery_by_owner` (
`Name` varchar(10)
,`Short_code` varchar(10)
,`Opened` bigint(21)
,`Inprogress` bigint(21)
,`Completed` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vWactionitems`
-- (See below for the actual view)
--
CREATE TABLE `vWactionitems` (
`id` int(10)
,`Region` varchar(10)
,`Country` varchar(10)
,`Objective` varchar(100)
,`ActionItem` varchar(100)
,`owner` varchar(10)
,`Status` varchar(10)
,`DaysDue` int(7)
,`ActivityAge` int(7)
,`DaysIdle` int(7)
);

-- --------------------------------------------------------

--
-- Structure for view `Status_summery_by_owner`
--
DROP TABLE IF EXISTS `Status_summery_by_owner`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Status_summery_by_owner`  AS  select `t`.`Name` AS `Name`,`t`.`Short_code` AS `Short_code`,max(`t`.`Opened`) AS `Opened`,max(`t`.`Inprogress`) AS `Inprogress`,max(`t`.`Completed`) AS `Completed` from (select `a`.`name` AS `Name`,`a`.`short_code` AS `Short_code`,(case when (`b`.`status_id` = 5) then count(`b`.`id`) else 0 end) AS `Opened`,(case when (`b`.`status_id` = 4) then count(`b`.`id`) else 0 end) AS `Inprogress`,(case when (`b`.`status_id` = 3) then count(`b`.`id`) else 0 end) AS `Completed` from (`owners` `a` left join `action_items` `b` on((`a`.`id` = `b`.`owners_id`))) group by `a`.`name`,`a`.`short_code`,`b`.`status_id`) `t` group by `t`.`Name`,`t`.`Short_code` ;

-- --------------------------------------------------------

--
-- Structure for view `vWactionitems`
--
DROP TABLE IF EXISTS `vWactionitems`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vWactionitems`  AS  select `a`.`id` AS `id`,`c`.`region` AS `Region`,`c`.`name` AS `Country`,`o`.`name` AS `Objective`,`a`.`name` AS `ActionItem`,`ow`.`short_code` AS `owner`,`s`.`name` AS `Status`,(to_days(curdate()) - to_days(`dd`.`reviseddate`)) AS `DaysDue`,(to_days(curdate()) - to_days(`a`.`due_date`)) AS `ActivityAge`,(to_days(curdate()) - to_days(`a`.`last_update`)) AS `DaysIdle` from (((((`action_items` `a` join `objectives` `o` on((`a`.`objectives_id` = `o`.`id`))) join `countries` `c` on((`o`.`countries_id` = `c`.`id`))) join `status` `s` on((`a`.`status_id` = `s`.`id`))) join `owners` `ow` on((`a`.`owners_id` = `ow`.`id`))) join (select `d`.`id` AS `id`,ifnull(`d`.`revised_date`,`d`.`due_date`) AS `reviseddate` from `action_items` `d`) `dd` on((`a`.`id` = `dd`.`id`))) where (`a`.`active` = '1') order by (to_days(curdate()) - to_days(`dd`.`reviseddate`)) desc ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `action_items`
--
ALTER TABLE `action_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `objectives_id` (`objectives_id`),
  ADD KEY `owners_id` (`owners_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `ActivityCountByOwner`
--
ALTER TABLE `ActivityCountByOwner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owners_id` (`owners_id`);

--
-- Indexes for table `footballfans`
--
ALTER TABLE `footballfans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `objectives`
--
ALTER TABLE `objectives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country` (`countries_id`),
  ADD KEY `owner` (`owners_id`);

--
-- Indexes for table `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Product_Name`
--
ALTER TABLE `Product_Name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Product_Versions`
--
ALTER TABLE `Product_Versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Product_id` (`Product_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `action_items`
--
ALTER TABLE `action_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `ActivityCountByOwner`
--
ALTER TABLE `ActivityCountByOwner`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `footballfans`
--
ALTER TABLE `footballfans`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `objectives`
--
ALTER TABLE `objectives`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `owners`
--
ALTER TABLE `owners`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Product_Name`
--
ALTER TABLE `Product_Name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Product_Versions`
--
ALTER TABLE `Product_Versions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `action_items`
--
ALTER TABLE `action_items`
  ADD CONSTRAINT `action_items_ibfk_1` FOREIGN KEY (`objectives_id`) REFERENCES `objectives` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `action_items_ibfk_2` FOREIGN KEY (`owners_id`) REFERENCES `owners` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `action_items_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `countries`
--
ALTER TABLE `countries`
  ADD CONSTRAINT `countries_ibfk_1` FOREIGN KEY (`owners_id`) REFERENCES `owners` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `objectives`
--
ALTER TABLE `objectives`
  ADD CONSTRAINT `objectives_ibfk_1` FOREIGN KEY (`countries_id`) REFERENCES `countries` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `objectives_ibfk_2` FOREIGN KEY (`owners_id`) REFERENCES `owners` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
