-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 05. Jun 2021 um 15:31
-- Server-Version: 10.3.27-MariaDB-0+deb10u1
-- PHP-Version: 7.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `teaspace`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `affiliates`
--

CREATE TABLE `affiliates` (
  `id` int(11) NOT NULL,
  `affiliate_id` varchar(255) NOT NULL,
  `affiliated_id` varchar(255) NOT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `state` enum('pending','done') NOT NULL DEFAULT 'pending',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `affiliates`
--

INSERT INTO `affiliates` (`id`, `affiliate_id`, `affiliated_id`, `amount`, `state`, `created_at`, `updated_at`) VALUES
(1, 'nukemc', '102', '0.00', 'pending', '2020-11-01 14:26:41', '2020-11-01 14:26:41'),
(2, 'Nils', '100', '0.00', 'pending', '2020-11-02 18:25:16', '2020-11-02 18:25:38'),
(3, '1870', '107', '0.00', 'pending', '2020-11-05 16:02:23', '2020-11-05 16:02:23');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `affiliate_clicks`
--

CREATE TABLE `affiliate_clicks` (
  `id` int(11) NOT NULL,
  `affiliate_id` varchar(255) NOT NULL,
  `user_addr` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `affiliate_clicks`
--

INSERT INTO `affiliate_clicks` (`id`, `affiliate_id`, `user_addr`, `created_at`, `updated_at`) VALUES
(1, '10007', '77.64.140.51', '2020-08-06 12:28:54', '2020-08-06 12:28:54'),
(2, 'ceo', '46.114.106.236', '2020-08-07 08:49:30', '2020-08-07 08:49:30'),
(3, 'ceo', '93.205.80.39', '2020-08-15 22:27:46', '2020-08-15 22:27:46'),
(4, 'ceo', '45.82.121.169', '2020-08-15 22:28:09', '2020-08-15 22:28:09'),
(5, 'jonasg', '62.171.150.172', '2020-08-15 22:28:35', '2020-08-15 22:28:35'),
(6, 'gas', '79.228.84.168', '2020-09-05 15:55:51', '2020-09-05 15:55:51'),
(7, 'gas', '46.95.160.98', '2020-09-05 15:55:53', '2020-09-05 15:55:53'),
(8, 'nxtsystem', '35.227.62.178', '2020-09-15 17:00:05', '2020-09-15 17:00:05'),
(9, '1870', '35.227.62.178', '2020-09-17 16:37:09', '2020-09-17 16:37:09'),
(10, '1870', '95.33.199.161', '2020-09-18 18:09:17', '2020-09-18 18:09:17'),
(11, '1870', '109.40.0.97', '2020-09-18 18:12:35', '2020-09-18 18:12:35'),
(12, 'deinmusikbot', '77.119.131.154', '2020-09-19 16:31:00', '2020-09-19 16:31:00'),
(13, '', '80.187.109.43', '2020-09-20 17:22:00', '2020-09-20 17:22:00'),
(14, '18', '80.187.109.43', '2020-09-20 17:22:02', '2020-09-20 17:22:02'),
(15, '187', '80.187.109.43', '2020-09-20 17:22:02', '2020-09-20 17:22:02'),
(16, '1870', '80.187.109.43', '2020-09-20 17:22:03', '2020-09-20 17:22:03'),
(22, '1870', '93.82.104.68', '2020-09-21 19:18:36', '2020-09-21 19:18:36'),
(23, 'deinmusikbot', '8.40.111.87', '2020-09-25 15:35:35', '2020-09-25 15:35:35'),
(24, 'NxtSystem', '46.125.249.21', '2020-09-25 16:09:59', '2020-09-25 16:09:59'),
(25, 'NxtSystem', '35.196.132.85', '2020-09-25 18:17:33', '2020-09-25 18:17:33'),
(26, 'NxtSystem', '212.95.8.237', '2020-09-25 18:38:48', '2020-09-25 18:38:48'),
(27, 'deinmusikbot', '93.222.85.57', '2020-09-26 09:52:50', '2020-09-26 09:52:50'),
(28, 'deinmusikbot', '95.70.210.88', '2020-09-26 15:59:46', '2020-09-26 15:59:46'),
(29, 'deinmusikbot', '213.162.80.237', '2020-09-27 09:54:01', '2020-09-27 09:54:01'),
(30, 'deinmusikbot', '93.224.214.138', '2020-09-27 14:05:08', '2020-09-27 14:05:08'),
(31, 'NxtSystem', '35.237.4.214', '2020-09-28 16:16:41', '2020-09-28 16:16:41'),
(32, 'NxtSystem', '89.166.226.72', '2020-09-28 16:16:46', '2020-09-28 16:16:46'),
(33, '1870', '93.226.128.129', '2020-09-29 16:30:38', '2020-09-29 16:30:38'),
(34, '1870', '188.74.1.78', '2020-10-02 16:01:47', '2020-10-02 16:01:47'),
(35, 'nukemc', '79.195.173.60', '2020-10-03 21:03:01', '2020-10-03 21:03:01'),
(36, 'nukemc', '66.249.66.38', '2020-10-03 21:23:26', '2020-10-03 21:23:26'),
(37, 'nukemc', '54.36.149.16', '2020-10-04 10:43:39', '2020-10-04 10:43:39'),
(38, 'nukemc', '134.76.247.34', '2020-10-05 11:44:55', '2020-10-05 11:44:55'),
(39, 'nukemc', '93.209.70.55', '2020-10-06 16:37:37', '2020-10-06 16:37:37'),
(40, 'nukemc', '66.249.69.74', '2020-10-07 12:29:07', '2020-10-07 12:29:07'),
(41, '13585', '91.64.28.135', '2020-10-07 15:10:02', '2020-10-07 15:10:02'),
(42, 'nukemc', '185.191.171.19', '2020-10-08 11:40:13', '2020-10-08 11:40:13'),
(43, 'nukemc', '62.138.2.214', '2020-10-09 05:58:02', '2020-10-09 05:58:02'),
(44, '1870', '217.81.150.12', '2020-10-10 15:53:50', '2020-10-10 15:53:50'),
(45, 'ceo', '217.229.234.189', '2020-10-10 20:38:46', '2020-10-10 20:38:46'),
(46, 'ceo', '87.123.195.73', '2020-10-10 20:39:10', '2020-10-10 20:39:10'),
(47, 'ceo', '91.3.205.116', '2020-10-10 20:59:25', '2020-10-10 20:59:25'),
(48, 'nukemc', '79.238.116.127', '2020-10-11 22:53:00', '2020-10-11 22:53:00'),
(49, 'ceo', '93.224.170.35', '2020-10-12 01:19:26', '2020-10-12 01:19:26'),
(50, 'nukemc', '80.187.117.106', '2020-10-12 10:14:41', '2020-10-12 10:14:41'),
(51, 'nukemc', '88.130.156.79', '2020-10-12 17:38:32', '2020-10-12 17:38:32'),
(52, 'nukemc', '93.205.162.136', '2020-10-13 21:54:50', '2020-10-13 21:54:50'),
(53, 'ceo', '66.249.64.168', '2020-10-14 22:43:40', '2020-10-14 22:43:40'),
(54, 'ceo', '66.249.64.166', '2020-10-14 23:10:56', '2020-10-14 23:10:56'),
(55, '13585', '91.35.127.3', '2020-10-15 00:42:56', '2020-10-15 00:42:56'),
(56, 'nukemc', '216.244.66.227', '2020-10-15 20:39:55', '2020-10-15 20:39:55'),
(57, '13585', '66.249.66.42', '2020-10-16 01:18:41', '2020-10-16 01:18:41'),
(58, '13585', '80.187.87.36', '2020-10-16 05:54:34', '2020-10-16 05:54:34'),
(59, '13585', '87.135.32.182', '2020-10-16 14:39:10', '2020-10-16 14:39:10'),
(60, 'nukemc', '66.249.64.170', '2020-10-16 17:34:12', '2020-10-16 17:34:12'),
(61, 'nukemc', '62.143.150.106', '2020-10-20 17:29:08', '2020-10-20 17:29:08'),
(62, 'nukemc', '66.249.64.168', '2020-10-21 11:07:25', '2020-10-21 11:07:25'),
(63, 'nukemc', '185.191.171.35', '2020-10-25 15:49:37', '2020-10-25 15:49:37'),
(64, 'nils', '34.224.89.159', '2020-10-26 19:57:20', '2020-10-26 19:57:20'),
(65, 'nils', '2.203.206.242', '2020-10-26 19:58:06', '2020-10-26 19:58:06'),
(66, 'nils', '89.249.65.108', '2020-10-26 19:59:16', '2020-10-26 19:59:16'),
(67, 'nukemc', '80.187.113.158', '2020-10-27 11:52:32', '2020-10-27 11:52:32'),
(68, 'nukemc', '87.148.172.34', '2020-10-27 20:47:46', '2020-10-27 20:47:46'),
(69, 'nukemc', '185.191.171.23', '2020-10-28 15:07:41', '2020-10-28 15:07:41'),
(70, '1870', '93.239.58.190', '2020-10-28 17:13:03', '2020-10-28 17:13:03'),
(71, 'ceo', '66.249.68.72', '2020-10-29 07:22:48', '2020-10-29 07:22:48'),
(72, 'nukemc', '66.249.66.40', '2020-10-30 00:59:53', '2020-10-30 00:59:53'),
(73, 'Nils', '35.227.62.178', '2020-10-30 19:41:49', '2020-10-30 19:41:49'),
(74, 'Nils', '90.186.217.98', '2020-10-30 19:42:14', '2020-10-30 19:42:14'),
(75, 'nukemc', '188.103.240.80', '2020-10-30 21:04:42', '2020-10-30 21:04:42'),
(76, 'nukemc', '79.227.178.48', '2020-10-30 21:04:44', '2020-10-30 21:04:44'),
(77, 'Nils', '35.196.132.85', '2020-10-31 10:22:05', '2020-10-31 10:22:05'),
(78, 'Nils', '94.31.80.250', '2020-10-31 10:22:13', '2020-10-31 10:22:13'),
(79, 'nukemc', '95.90.182.75', '2020-10-31 10:29:33', '2020-10-31 10:29:33'),
(80, 'nils', '35.237.4.214', '2020-10-31 18:24:20', '2020-10-31 18:24:20'),
(81, 'nukemc', '79.204.67.96', '2020-10-31 20:02:22', '2020-10-31 20:02:22'),
(82, 'nukemc', '80.129.65.26', '2020-11-01 14:24:39', '2020-11-01 14:24:39'),
(83, 'ceo', '95.90.227.219', '2020-11-01 15:34:12', '2020-11-01 15:34:12'),
(84, 'nukemc', '66.249.64.166', '2020-11-01 23:34:53', '2020-11-01 23:34:53'),
(85, '1870', '35.196.132.85', '2020-11-02 16:02:18', '2020-11-02 16:02:18'),
(86, '1870', '35.237.4.214', '2020-11-02 17:10:43', '2020-11-02 17:10:43'),
(87, 'ceo', '5.9.61.232', '2020-11-02 18:31:55', '2020-11-02 18:31:55'),
(88, 'jonasg', '37.4.225.156', '2020-11-03 22:48:42', '2020-11-03 22:48:42'),
(89, 'jonasg', '37.201.163.102', '2020-11-04 12:05:56', '2020-11-04 12:05:56'),
(90, '13585', '66.249.64.170', '2020-11-05 04:15:43', '2020-11-05 04:15:43'),
(91, '1870', '93.199.68.41', '2020-11-05 15:57:14', '2020-11-05 15:57:14'),
(92, '13585', '66.249.64.166', '2020-11-06 13:49:22', '2020-11-06 13:49:22'),
(93, 'ceo', '66.249.72.72', '2020-11-07 05:16:32', '2020-11-07 05:16:32'),
(94, 'nukemc', '66.249.72.72', '2020-11-07 05:36:32', '2020-11-07 05:36:32'),
(95, '1870', '93.199.65.169', '2020-11-07 20:44:22', '2020-11-07 20:44:22'),
(96, 'nukemc', '54.36.148.89', '2020-11-09 05:07:08', '2020-11-09 05:07:08'),
(97, 'jonasg', '91.64.23.102', '2020-11-09 19:29:42', '2020-11-09 19:29:42'),
(98, 'nukemc', '185.191.171.6', '2020-11-12 04:09:01', '2020-11-12 04:09:01'),
(99, '13585', '66.249.64.26', '2020-11-13 11:10:39', '2020-11-13 11:10:39'),
(100, 'nukemc', '185.148.187.54', '2020-11-13 19:46:43', '2020-11-13 19:46:43'),
(101, '1870', '31.150.26.148', '2020-11-14 13:31:57', '2020-11-14 13:31:57'),
(102, 'nukemc', '66.249.72.70', '2020-11-15 09:13:23', '2020-11-15 09:13:23'),
(103, 'nukemc', '144.76.14.153', '2020-11-15 13:35:46', '2020-11-15 13:35:46'),
(104, '13585', '66.249.72.72', '2020-11-15 19:42:09', '2020-11-15 19:42:09'),
(105, '13585', '66.249.64.164', '2020-11-16 07:47:51', '2020-11-16 07:47:51'),
(106, '13585', '66.249.76.26', '2020-11-17 02:24:54', '2020-11-17 02:24:54'),
(107, '13585', '66.249.76.94', '2020-11-17 15:09:38', '2020-11-17 15:09:38'),
(108, '13585', '66.249.73.5', '2020-11-18 02:22:07', '2020-11-18 02:22:07'),
(109, 'nukemc', '5.255.231.202', '2020-11-23 09:13:21', '2020-11-23 09:13:21'),
(110, 'nukemc', '176.199.135.26', '2020-11-25 13:28:52', '2020-11-25 13:28:52'),
(111, 'nukemc', '111.7.100.21', '2020-11-26 02:04:38', '2020-11-26 02:04:38'),
(112, 'ceo', '185.185.217.75', '2020-11-27 18:15:11', '2020-11-27 18:15:11'),
(113, '13585', '66.249.68.90', '2020-11-27 23:36:55', '2020-11-27 23:36:55'),
(114, 'ceo', '66.249.68.90', '2020-11-28 02:07:57', '2020-11-28 02:07:57'),
(115, 'nukemc', '66.249.68.90', '2020-11-28 05:49:14', '2020-11-28 05:49:14'),
(116, 'Nils', '3.94.163.211', '2020-11-29 14:18:40', '2020-11-29 14:18:40'),
(117, 'Nils', '185.104.184.141', '2020-11-29 14:21:13', '2020-11-29 14:21:13'),
(118, 'Nils', '54.210.113.231', '2020-11-29 15:07:12', '2020-11-29 15:07:12'),
(119, 'Nils', '52.201.235.168', '2020-11-29 16:56:10', '2020-11-29 16:56:10'),
(120, 'ceo', '66.249.66.144', '2020-12-01 12:17:20', '2020-12-01 12:17:20'),
(121, 'nukemc', '66.249.66.148', '2020-12-01 12:27:25', '2020-12-01 12:27:25'),
(122, 'ceo', '66.249.66.146', '2020-12-01 23:29:51', '2020-12-01 23:29:51'),
(123, 'ceo', '192.99.6.226', '2020-12-02 11:00:03', '2020-12-02 11:00:03'),
(124, 'nukemc', '66.249.66.144', '2020-12-03 03:01:50', '2020-12-03 03:01:50'),
(125, 'ceo', '66.249.76.126', '2020-12-06 15:50:08', '2020-12-06 15:50:08'),
(126, 'ceo', '178.191.209.240', '2020-12-06 17:25:38', '2020-12-06 17:25:38'),
(127, 'ceo', '93.245.124.193', '2020-12-06 18:44:33', '2020-12-06 18:44:33'),
(128, 'ceo', '62.46.175.174', '2020-12-06 21:54:15', '2020-12-06 21:54:15'),
(129, 'nukemc', '66.249.76.126', '2020-12-06 23:03:40', '2020-12-06 23:03:40'),
(130, 'nukemc', '66.249.66.158', '2020-12-07 09:06:07', '2020-12-07 09:06:07'),
(131, 'ceo', '91.115.229.194', '2020-12-07 14:44:25', '2020-12-07 14:44:25'),
(132, 'ceo', '66.249.66.58', '2020-12-07 16:28:19', '2020-12-07 16:28:19'),
(133, 'nukemc', '66.249.66.60', '2020-12-07 22:10:06', '2020-12-07 22:10:06'),
(134, 'ceo', '66.249.76.125', '2020-12-08 13:35:44', '2020-12-08 13:35:44'),
(135, 'ceo', '88.130.157.109', '2020-12-08 19:10:10', '2020-12-08 19:10:10'),
(136, 'ceo', '66.249.72.76', '2020-12-08 23:18:20', '2020-12-08 23:18:20'),
(137, '18', '80.187.111.16', '2020-12-09 00:55:20', '2020-12-09 00:55:20'),
(138, '187', '80.187.111.16', '2020-12-09 00:55:27', '2020-12-09 00:55:27'),
(139, 'nukemc', '66.249.72.78', '2020-12-09 08:03:12', '2020-12-09 08:03:12'),
(140, 'ceo', '66.249.68.70', '2020-12-10 06:55:49', '2020-12-10 06:55:49'),
(141, 'nukemc', '66.249.68.70', '2020-12-10 08:35:45', '2020-12-10 08:35:45');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mail_blacklist`
--

CREATE TABLE `mail_blacklist` (
  `id` int(11) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `mail_blacklist`
--

INSERT INTO `mail_blacklist` (`id`, `mail`, `created_at`, `updated_at`) VALUES
(1, 'bcaoo.com', '2020-09-03 00:02:10', '2020-09-03 00:02:10'),
(2, 'doc-mail.net', '2020-09-03 19:53:15', '2020-09-03 19:53:15'),
(3, '4nextmail.com', '2020-09-03 19:54:11', '2020-09-03 19:54:11'),
(4, '247web.net', '2020-09-03 19:54:17', '2020-09-03 19:54:17'),
(5, 'coin-host.net', '2020-09-03 19:54:29', '2020-09-03 19:54:29'),
(6, 'doublemail.de', '2020-09-03 19:54:38', '2020-09-03 19:54:38'),
(7, 'schreib-mir.tk', '2020-09-03 19:54:44', '2020-09-03 19:54:44'),
(8, 'puppetmail.de', '2020-09-03 19:54:49', '2020-09-03 19:54:49'),
(9, 'urhen.com', '2020-09-03 19:54:55', '2020-09-03 19:54:55'),
(10, 'zoemail.net', '2020-09-03 19:55:05', '2020-09-03 19:55:05'),
(11, 'zoemail.com', '2020-09-03 19:55:08', '2020-09-03 19:55:08'),
(12, 'zipzaps.de', '2020-09-03 19:55:28', '2020-09-03 19:55:28'),
(14, 'byom.de', '2020-09-03 20:10:25', '2020-09-03 20:10:25'),
(15, 'trash-mail.com', '2020-09-03 20:10:47', '2020-09-03 20:10:47'),
(16, 'zwoho.com', '2020-09-03 20:10:57', '2020-09-03 20:10:57'),
(17, 'phaantm.de', '2020-09-03 20:11:06', '2020-09-03 20:11:06'),
(18, 'fyii.de', '2020-09-03 20:11:13', '2020-09-03 20:11:13'),
(19, 'mailbox92.biz', '2020-09-03 20:11:27', '2020-09-03 20:11:27'),
(20, 'webtempmail.online', '2020-09-03 20:11:39', '2020-09-03 20:11:39'),
(21, 'virtual-email.com', '2020-09-03 20:11:50', '2020-09-03 20:11:50'),
(22, 'click-mail.net', '2020-09-03 20:11:59', '2020-09-03 20:11:59'),
(23, 'globaleuro.net', '2020-09-03 20:12:40', '2020-09-03 20:12:40'),
(24, 'nextemail.net', '2020-09-03 20:12:49', '2020-09-03 20:12:49'),
(25, 'quick-mail.online', '2020-09-03 20:12:59', '2020-09-03 20:12:59'),
(26, 'mailgen.biz', '2020-09-03 20:13:13', '2020-09-03 20:13:13'),
(27, 'mail-pro.info', '2020-09-03 20:13:24', '2020-09-03 20:13:24'),
(28, 'desoz.com', '2020-09-03 20:13:31', '2020-09-03 20:13:31'),
(29, 'mail4.online', '2020-09-03 20:14:33', '2020-09-03 20:14:33'),
(30, 're-gister.com', '2020-09-03 20:14:48', '2020-09-03 20:14:48'),
(32, 'freeweb.email', '2020-09-03 20:15:07', '2020-09-03 20:15:07'),
(33, 'alpha-web.net', '2020-09-03 20:15:19', '2020-09-03 20:15:19'),
(34, 'givmail.com', '2020-09-03 20:15:27', '2020-09-03 20:15:27'),
(35, 'tempr.email', '2020-09-03 20:15:35', '2020-09-03 20:15:35'),
(36, 'yourweb.email', '2020-09-03 20:15:43', '2020-09-03 20:15:43'),
(37, 'proeasyweb.com', '2020-09-03 20:15:53', '2020-09-03 20:15:53'),
(38, 'weave.email', '2020-09-03 20:16:01', '2020-09-03 20:16:01'),
(39, 'mailboxy.fun', '2020-09-03 20:16:15', '2020-09-03 20:16:15'),
(40, 'xn--hotmail-tc7d.com', '2020-09-03 20:16:31', '2020-09-03 20:16:31'),
(43, '20minutemail.it', '2020-09-03 20:16:58', '2020-09-03 20:16:58'),
(44, 'techgroup.top', '2020-09-03 20:17:07', '2020-09-03 20:17:07'),
(46, 'mail-cart.com', '2020-09-03 20:17:27', '2020-09-03 20:17:27'),
(47, 'tmpmail.org', '2020-09-03 20:17:38', '2020-09-03 20:17:38'),
(49, 'awdrt.org', '2020-09-04 15:34:29', '2020-09-04 15:34:29'),
(51, 'sanitzr.com', '2020-09-05 17:38:34', '2020-09-05 17:38:34'),
(53, 'mimpi99.com', '2020-09-06 16:35:14', '2020-09-06 16:35:14'),
(54, 'gomaild.com', '2020-09-13 18:28:24', '2020-09-13 18:28:24'),
(55, 'temp-mail.org', '2020-09-13 22:24:55', '2020-09-13 22:24:55'),
(56, 'kraftsucht.de', '2020-09-13 22:26:01', '2020-09-13 22:26:01'),
(57, 'ksv-systems.de', '2020-09-13 22:26:08', '2020-09-13 22:26:08'),
(58, 'kraftsucht.eu', '2020-09-13 22:27:50', '2020-09-13 22:27:50'),
(59, 'outree.org', '2020-09-15 12:52:37', '2020-09-15 12:52:37'),
(60, 'yeezus.ru', '2020-09-20 15:23:54', '2020-09-20 15:23:54'),
(61, 'gridmauk.com', '2020-09-20 19:08:46', '2020-09-20 19:08:46'),
(62, 'yevme.com', '2020-09-20 19:09:48', '2020-09-20 19:09:48'),
(63, 'a6mail.net', '2020-09-20 19:10:21', '2020-09-20 19:10:21'),
(64, 'onmail3.com', '2020-09-20 19:10:49', '2020-09-20 19:10:49'),
(72, 'gergerg.de', '2020-09-27 19:14:27', '2020-09-27 19:14:27'),
(73, 'funkspiel-schleswigholstein.de', '2020-10-06 21:17:32', '2020-10-06 21:17:32'),
(74, 'funkspiel-florian-hamburg.de', '2020-10-06 21:18:45', '2020-10-06 21:18:45'),
(75, 'mailsac.com', '2020-10-25 22:02:05', '2020-10-25 22:02:05'),
(76, 'prekab.net', '2020-10-25 22:02:24', '2020-10-25 22:02:24'),
(78, '	bcaoo.com', '2020-11-01 16:01:51', '2020-11-01 16:01:51'),
(80, 'bk.ru', '2020-11-02 12:05:32', '2020-11-02 12:05:32'),
(81, 'einsdany.de', '2020-11-04 21:03:57', '2020-11-04 21:03:57'),
(82, 'visionhost24.eu', '2020-11-19 21:00:52', '2020-11-19 21:00:52'),
(83, 'visionhost24.de', '2020-11-19 21:01:08', '2020-11-19 21:01:08'),
(84, 'winofilab24.de', '2020-11-19 21:01:38', '2020-11-19 21:01:38'),
(85, 'cuoly.com', '2020-11-29 16:44:41', '2020-11-29 16:44:41');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `user_info` varchar(255) NOT NULL,
  `key` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `password_resets`
--

INSERT INTO `password_resets` (`id`, `user_info`, `key`) VALUES
(1, 'nb@nico-bary.de', 0),
(2, 'nb@nico-bary.de', 0),
(3, 'nb@nico-bary.de', 0),
(4, 'dezio1991+wino-space@gmail.com', 0),
(5, 'dezio1991+wino-space@gmail.com', 0),
(6, 'SnipeZownHD20@gmail.com', 0),
(7, 'SkyRider', 0),
(8, 'Maurice ', 0),
(9, 'Chriscommunity@web.de', 0),
(10, 'Chriscommunity@web.de', 2),
(11, 'no-replay@retro-life.de', 0),
(12, 'KeinSupport', 3),
(13, 'TxpicsAPI', 0),
(14, 'TxpicsAPI', 0),
(15, 'nils-blaschek@hotmail.com', 0),
(16, 'nils-blaschek@hotmail.com', 6),
(17, 'contact@thomas-e.site', 0),
(18, 'CulexSSD', 0),
(19, 'CulexSSD', 0),
(20, 'CulexSSD', 0),
(21, 'marksanni@freenet.de', 0),
(22, 'CrystalCraft', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `product_prices`
--

CREATE TABLE `product_prices` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `product_prices`
--

INSERT INTO `product_prices` (`id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(2, 'TEASPEAK', '0.12', '2020-08-02 22:39:54', '2020-12-06 11:59:20');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `login` int(11) NOT NULL,
  `register` int(11) NOT NULL,
  `wartung` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `settings`
--

INSERT INTO `settings` (`id`, `login`, `register`, `wartung`) VALUES
(1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `stream_links`
--

CREATE TABLE `stream_links` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(512) NOT NULL,
  `url` varchar(512) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `stream_links`
--

INSERT INTO `stream_links` (`id`, `user_id`, `name`, `url`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Mix-FM | ONE', 'http://stream.laut.fm/mix_one', '2020-11-30 19:52:25', '2020-11-30 19:52:25'),
(2, NULL, 'Mix-FM | Dance', 'https://mixdance.stream.laut.fm/mix_dance', '2020-11-30 20:33:25', '2020-11-30 20:33:25'),
(3, NULL, 'AtomicRadio - Dance', 'https://listen.atomicradio.eu/dance/highquality.mp3', '2020-11-30 20:33:45', '2020-11-30 20:33:45'),
(4, NULL, 'AtomicRadio - One', 'https://listen.atomicradio.eu/one/highquality.mp3', '2020-11-30 20:33:57', '2020-11-30 20:33:57'),
(6, NULL, 'Mix-FM | XMas', 'http://stream.laut.fm/mix_xmas', '2020-12-01 17:04:10', '2020-12-01 17:04:10'),
(7, 83, 'd', 'https://www.youtube.com/watch?v=k9EYjn5f_nE	', '2020-12-03 17:41:33', '2020-12-03 17:41:33');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `teaspeaks`
--

CREATE TABLE `teaspeaks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `slots` int(11) NOT NULL,
  `node_id` int(11) NOT NULL,
  `teaspeak_ip` varchar(255) NOT NULL,
  `teaspeak_port` varchar(255) NOT NULL,
  `sid` int(11) NOT NULL,
  `expire_at` datetime NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `state` enum('ACTIVE','SUSPENDED','DELETED') NOT NULL,
  `days` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `teaspeaks`
--

INSERT INTO `teaspeaks` (`id`, `user_id`, `slots`, `node_id`, `teaspeak_ip`, `teaspeak_port`, `sid`, `expire_at`, `price`, `state`, `days`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 14, 10, 1, 'tea.wino-voice.de', '11094', 2, '2021-08-29 19:42:10', '0.12', 'ACTIVE', '262', '2020-08-04 19:42:10', '2020-12-09 19:43:01', NULL),
(2, 15, 10, 1, 'tea.wino-voice.de', '11061', 240, '2020-11-07 10:00:59', '0.10', 'DELETED', '3', '2020-10-08 10:00:59', '2020-11-10 10:01:01', '2020-11-10 10:01:01'),
(3, 15, 20, 1, 'tea.wino-voice.de', '9361', 241, '2021-01-06 10:01:21', '0.10', 'ACTIVE', '26', '2020-10-08 10:01:21', '2020-12-10 10:02:01', NULL),
(4, 87, 10, 1, 'tea.wino-voice.de', '10460', 242, '2021-01-29 14:54:25', '0.10', 'ACTIVE', '49', '2020-10-31 14:54:25', '2020-12-10 14:55:01', NULL),
(5, 15, 2, 1, 'tea.wino-voice.de', '9957', 243, '2020-12-15 21:56:17', '0.10', 'ACTIVE', '5', '2020-11-15 21:56:17', '2020-12-09 21:57:02', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `teaspeak_hosts`
--

CREATE TABLE `teaspeak_hosts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `login_ip` varchar(255) NOT NULL,
  `login_port` varchar(255) NOT NULL,
  `login_name` varchar(255) NOT NULL,
  `login_passwort` varchar(255) NOT NULL,
  `status` enum('ACTIVE','DISABLED') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `teaspeak_hosts`
--

INSERT INTO `teaspeak_hosts` (`id`, `name`, `login_ip`, `login_port`, `login_name`, `login_passwort`, `status`) VALUES
(1, 'teaspeak Server', 'tea.wino-voice.de', '10101', 'serveradmin', 'XNEePQXixZGu', 'ACTIVE');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `categorie` varchar(255) NOT NULL,
  `priority` varchar(255) NOT NULL,
  `produkt` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `last_msg` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tickets`
--

INSERT INTO `tickets` (`id`, `user_id`, `categorie`, `priority`, `produkt`, `title`, `state`, `last_msg`, `created_at`, `updated_at`) VALUES
(4, 23, 'ALLGEMEIN', 'MITTEL', '', 'Frage zu meinem kvm server', 'CLOSED', 'CUSTOMER', '2020-08-16 21:27:14', '2020-08-16 21:28:01'),
(5, 14, 'TECHNIK', 'MITTEL', '', 'Derzeit wird nichts abgespielt', 'CLOSED', 'SUPPORT', '2020-08-18 22:04:09', '2020-08-18 22:36:48'),
(6, 38, 'ALLGEMEIN', 'NORMAL', '', 'Kostenloser Test Server nicht erhalten', 'CLOSED', 'SUPPORT', '2020-08-21 02:11:38', '2020-08-21 15:50:12'),
(7, 39, 'TECHNIK', 'NORMAL', '', 'Frage Zum Kauf', 'CLOSED', 'SUPPORT', '2020-08-22 20:10:56', '2020-08-23 22:17:14'),
(8, 38, 'TECHNIK', 'NORMAL', '', 'Ubuntu installieren', 'CLOSED', 'SUPPORT', '2020-08-24 09:20:06', '2020-08-28 20:05:25'),
(10, 22, 'TECHNIK', 'HOCH', '', 'FRAGEN ZU MEINEN ROOT SERVER [SSD DEFEKT]', 'CLOSED', 'SUPPORT', '2020-09-06 13:51:49', '2020-09-06 13:54:38'),
(12, 49, 'ALLGEMEIN', 'NORMAL', '', 'Bewerbung | Frage', 'CLOSED', 'SUPPORT', '2020-09-11 17:42:04', '2020-09-12 15:53:28'),
(21, 60, 'BUCHHALTUNG', 'HOCH', '', 'Guthaben abgebucht allerdings nicht am Konto', 'CLOSED', 'SUPPORT', '2020-09-25 09:49:00', '2020-09-25 13:18:03'),
(22, 56, 'BUCHHALTUNG', 'NORMAL', '', 'Rechnungsbegleichung', 'CLOSED', 'SUPPORT', '2020-09-25 14:57:56', '2020-09-26 21:11:36'),
(23, 56, 'TECHNIK', 'NORMAL', '', 'BotPanel - Node aufsetzten', 'CLOSED', 'CUSTOMER', '2020-09-25 18:46:56', '2020-09-28 16:29:48'),
(24, 80, 'ALLGEMEIN', 'NORMAL', '', 'Anfrage zur Virtuellen Leitstelle', 'CLOSED', 'CUSTOMER', '2020-10-07 14:44:58', '2020-10-07 20:45:47'),
(25, 83, 'PARTNER', 'MITTEL', '', 'Partnerschaft - Webspace', 'CLOSED', 'SUPPORT', '2020-10-18 00:08:54', '2020-10-18 17:15:45'),
(26, 83, 'BUCHHALTUNG', 'HOCH', '', 'Entschädigung', 'CLOSED', 'SUPPORT', '2020-10-23 23:02:47', '2020-10-25 11:08:18'),
(27, 83, 'BUCHHALTUNG', 'HOCH', '', 'Webspace erstattung', 'CLOSED', 'SUPPORT', '2020-10-26 20:03:06', '2020-10-26 22:21:12'),
(28, 105, 'ALLGEMEIN', 'HOCH', '', 'Bewerbung als Supporter', 'CLOSED', 'SUPPORT', '2020-11-04 14:46:45', '2020-11-04 15:27:14'),
(30, 112, 'TECHNIK', 'NORMAL', '', 'Fehler vom KVM-Test Server', 'CLOSED', 'SUPPORT', '2020-11-12 04:31:29', '2020-11-12 06:39:14'),
(31, 83, 'ALLGEMEIN', 'NORMAL', '', 'Anfrage zum Supporter', 'CLOSED', 'CUSTOMER', '2020-11-12 10:33:24', '2020-11-13 08:24:56'),
(32, 40, 'ALLGEMEIN', 'NORMAL', '', 'Lösch meinen Acc.', 'CLOSED', 'SUPPORT', '2020-11-12 16:00:23', '2020-11-13 04:47:47'),
(33, 83, 'ALLGEMEIN', 'HOCH', '', 'Na ihr ', 'CLOSED', 'SUPPORT', '2020-11-13 17:41:11', '2020-11-13 17:41:38'),
(34, 15, 'ALLGEMEIN', 'NORMAL', '', 'Bewerbung', 'CLOSED', 'SUPPORT', '2020-11-13 17:41:41', '2020-11-13 17:42:57'),
(35, 83, 'TECHNIK', 'MITTEL', '', 'Webspace löschung E-Mail', 'CLOSED', 'SUPPORT', '2020-11-14 11:15:15', '2020-11-14 12:38:44'),
(36, 83, 'TECHNIK', 'MITTEL', '', 'Webspace löschung E-Mail', 'CLOSED', 'SUPPORT', '2020-11-15 09:26:38', '2020-11-15 12:35:37'),
(37, 83, 'ALLGEMEIN', 'NORMAL', '', 'Virtuelle Office', 'CLOSED', 'SUPPORT', '2020-11-17 13:03:19', '2020-11-17 15:27:37'),
(38, 83, 'ALLGEMEIN', 'MITTEL', 'Webspace #6', 'jhkjhkjhhjkjk', 'CLOSED', 'CUSTOMER', '2020-11-17 18:26:29', '2020-11-17 19:38:52'),
(39, 114, 'TECHNIK', 'NORMAL', 'Teamspeak #7', 'Keine Verbindung', 'CLOSED', 'SUPPORT', '2020-11-26 20:46:13', '2020-11-27 21:00:25'),
(40, 83, 'ALLGEMEIN', 'NORMAL', 'Webspace #6', 'Kündigung zum Postfach', 'CLOSED', 'CUSTOMER', '2020-11-27 21:30:09', '2020-11-28 16:19:28'),
(41, 123, 'ALLGEMEIN', 'NORMAL', '1', 'Anfrage eines TeaSpeak-Testservers', 'CLOSED', 'CUSTOMER', '2020-11-29 15:38:43', '2020-11-29 22:58:37'),
(42, 83, 'ALLGEMEIN', 'HOCH', 'Webspace #6', 'Frage', 'CLOSED', 'SUPPORT', '2020-12-01 16:21:06', '2020-12-01 17:11:05'),
(43, 96, 'TECHNIK', 'NORMAL', 'Sevice #4635', 'Passwort Vergessen ', 'CLOSED', 'SUPPORT', '2020-12-03 12:26:23', '2020-12-04 09:00:25'),
(44, 96, 'TECHNIK', 'MITTEL', 'Sevice #4635', 'Problem mit Server', 'CLOSED', 'SUPPORT', '2020-12-04 10:47:45', '2020-12-04 14:15:58'),
(45, 101, 'PERSONAL', 'NORMAL', 'Webspace #10', 'Bewerbung', 'CLOSED', 'SUPPORT', '2020-12-05 22:43:49', '2020-12-06 13:52:40'),
(46, 121, 'TECHNIK', 'NORMAL', 'Sevice #4650', 'HILFE KOMME NICHT MEHR IN MEIN ROOT REIN', 'CLOSED', 'CUSTOMER', '2020-12-07 13:36:14', '2020-12-08 14:44:30'),
(47, 96, 'TECHNIK', 'MITTEL', 'Sevice #4635', 'Problem mit Server @Nico B.', 'CLOSED', 'SUPPORT', '2020-12-08 13:05:59', '2020-12-08 13:43:03');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ticket_message`
--

CREATE TABLE `ticket_message` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `writer_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `ticket_message`
--

INSERT INTO `ticket_message` (`id`, `ticket_id`, `writer_id`, `message`, `created_at`, `updated_at`) VALUES
(4, 4, 23, 'Hallo,\r\nIch möchte gerne TeamSpeak ³ Installieren, kann dies aber nicht. und wollte Fragen ob Sie dies übernehmen könnten.\r\n\r\nMit freundlichen Grüßen \r\nAndre', '2020-08-16 21:27:14', '2020-08-16 21:27:14'),
(5, 4, 15, 'Hallo, Dies können wir leider nicht.', '2020-08-16 21:27:54', '2020-08-16 21:27:54'),
(6, 4, 23, 'Ok Danke für die Antwort\r\n\r\nMfG: Andre.N', '2020-08-16 21:28:01', '2020-08-16 21:28:01'),
(7, 5, 14, 'asdasdasdasa', '2020-08-18 22:04:09', '2020-08-18 22:04:09'),
(8, 5, 23, 'Da kann ich Ihnen Leider nicht Weiter Helfen\r\n\r\nMfG: Andre N.', '2020-08-18 22:06:04', '2020-08-18 22:06:04'),
(9, 6, 38, 'Guten Abend,\r\n\r\nich habe mir soeben ein kostenlosen Test Server geholt laut der Dashboard Seite habe ich dieses Produkt auch aber wenn ich unter Produkte auf Service gehe steht dort ich hätte noch keine Produkte.\r\n\r\nMFG', '2020-08-21 02:11:38', '2020-08-21 02:11:38'),
(10, 6, 15, 'Guten Tag,\r\nIhre Bestellung muss noch Freigegeben werden, dies erfolgt heute um 14 Uhr.\r\n\r\nMit freundlichen Grüßen \r\nInhaber Jonas G.', '2020-08-21 12:07:47', '2020-08-21 12:07:47'),
(11, 6, 14, 'Das mit dem Dashboard ist ein Anzeige bug der noch überarbeitet werden muss\r\nMFG Ceo & founder Nico B. ', '2020-08-21 12:38:32', '2020-08-21 12:38:32'),
(12, 6, 14, 'Guten Tag Habe Gerade dein Test  Server Freigeschaltet\r\nMFG Ceo & founder Nico B.\r\n', '2020-08-21 15:04:35', '2020-08-21 15:04:35'),
(13, 6, 14, 'Guten Tag Habe Gerade dein Test  Server Freigeschaltet\r\nMFG Ceo & founder Nico B.\r\n', '2020-08-21 15:49:59', '2020-08-21 15:49:59'),
(14, 7, 39, 'Guten abend Liebes Winospace Team,\r\n\r\nIch Habe Eine Frage Kann Man Bei Euch Auch Domains Kaufen?\r\nMFG TxpisAPI', '2020-08-22 20:10:56', '2020-08-22 20:10:56'),
(15, 7, 15, 'Hallo, ja dies kann man aber nur auf Wunsch da wir diese war da wir dazu noch kein System haben können diese derzeit bei uns erworben werden, und via Cloudflare verbunden werden von uns auf Wunsch.\r\n\r\n\r\nMit freundlichen Grüßen\r\nInhaber Jonas G.', '2020-08-22 20:28:37', '2020-08-22 20:28:37'),
(16, 7, 15, 'Guten Tag,\r\nGerne können Sie auf Wunsch uns Ihre Wunsch Domain Mitteilen, und wir werde Ihnen ein Angebot zukommen lassen.\r\n\r\n\r\nMit freundlichen Grüßen\r\nInhaber Jonas G.', '2020-08-23 12:02:54', '2020-08-23 12:02:54'),
(17, 8, 38, 'Guten Tag,\r\n\r\nkann man auch Ubuntu 19.04 oder 20.04 installieren lassen?\r\n\r\nMFG', '2020-08-24 09:20:06', '2020-08-24 09:20:06'),
(18, 8, 15, 'Guten Tag,\r\nJa man kann Ubuntu 19.04. oder 20.04 Installieren. Dies kann man auch nur sobald man einen Kostenpflichtigen Server Bestellt.\r\n\r\n\r\nMit freundlichen Grüßen \r\nInhaber Jonas G.', '2020-08-24 14:09:25', '2020-08-24 14:09:25'),
(19, 8, 38, 'Guten Tag,\r\n\r\nkann man irgendwie auch bei einem kostenlosen Server Ubuntu installieren. Würde mir gerne den bestmöglichen Eindruck von eurem Hoster machen und dies kann ich nur wenn ich das Betriebssystem verwwende was ich immer nutze. Das wäre in diesem Fall Ubuntu 19.04 oder 20.04. \r\n\r\nMFG', '2020-08-24 22:57:35', '2020-08-24 22:57:35'),
(20, 8, 38, 'Noch ein kleiner Anhang. Mein kostenloser Service wurde einfach removed.', '2020-08-24 22:58:12', '2020-08-24 22:58:12'),
(21, 8, 15, 'Guten Tag,\r\nGerne können wir Ihnen nochmal einen 3 Tägigen Test Server stellen.\r\n\r\nIhr Server Wurde Removed, da Ihr Produkt ausgelaufen ist und nicht Verlängert werden kann.\r\n\r\n\r\nMit freundlichen Grüßen\r\nInhaber Jonas G.', '2020-08-25 14:25:51', '2020-08-25 14:25:51'),
(22, 8, 15, 'Guten Tag,\r\nGerne können wir Ihnen nochmal einen 3 Tägigen Test Server stellen.\r\n\r\nIhr Server Wurde Removed, da Ihr Produkt ausgelaufen ist und nicht Verlängert werden kann.\r\n\r\n\r\nMit freundlichen Grüßen\r\nInhaber Jonas G.', '2020-08-25 15:04:11', '2020-08-25 15:04:11'),
(23, 8, 38, 'Guten Abend,\r\n\r\nich hätte gerne nochmal ein Test Server aber bitte mit Ubuntu 19.04 oder 20.04 ansonsten kann ich euren Service nicht so ausführlich testen. Somit kann ich dann auch nicht entscheiden ob ich zu euch gehe oder nicht.', '2020-08-25 21:26:29', '2020-08-25 21:26:29'),
(24, 8, 15, 'Guten Abend,\r\nHiermit Sende ich Ihnen noch mal ein 3 Tägigen Test Server:\r\n\r\nIP: 51.195.17.150\r\nBenutzer: root\r\nPasswort: npSzXvTdUfq5\r\n\r\nDieser Server Läuft Automatisch nach 3 Tagen ab.\r\n\r\nMit freundlichen Grüßen \r\nInhaber Jonas G.', '2020-08-25 22:13:00', '2020-08-25 22:13:00'),
(25, 8, 38, 'Okay danke. Kann ich den auch für 5 Tage anstatt 3 Tage testen?', '2020-08-26 02:21:27', '2020-08-26 02:21:27'),
(26, 8, 38, 'Und wenn möglich ein wenig mehr Speicherplatz. Ich kann nicht alle meine Anwendungen installieren.', '2020-08-26 02:36:07', '2020-08-26 02:36:07'),
(27, 8, 15, 'Guten Tag,\r\nJa sie bekommen Ihn dann für 5 Tage, und der Speicherplatz kann leider nicht erhöht werden, da dies ein Test Server ist.\r\n\r\n\r\nMit freundlichen Grüßen \r\nInhaber Jonas G.', '2020-08-26 13:51:24', '2020-08-26 13:51:24'),
(28, 8, 38, 'Okay dann kann ich damit leider nicht besonders viel Anfangen. Da der Speicherplatz bereits voll ist. Wie viel Speicherplatz hat dieser Server?', '2020-08-26 23:13:53', '2020-08-26 23:13:53'),
(29, 8, 15, 'Guten Tag, \r\nder Server hat 5 GB Speierplatz.\r\n\r\nMFG\r\nInhaber Jonas G.', '2020-08-27 14:32:24', '2020-08-27 14:32:24'),
(30, 9, 18, 'frhsuiahgihasigaufrghaj,rfopewqhzuifhgtojseag,asduhgio', '2020-09-05 14:58:00', '2020-09-05 14:58:00'),
(31, 9, 18, 'lalalalalalalalalalalalalalalalalalalalalalalalalala', '2020-09-05 14:58:19', '2020-09-05 14:58:19'),
(32, 10, 22, 'Hallo mein ssd server geht nicht. könnten sie mir helfen?\r\n\r\nLG: Maurice', '2020-09-06 13:51:49', '2020-09-06 13:51:49'),
(33, 10, 22, 'Hallo wir haben leider keine SSD Festplatten, wir können ihnen da nicht weiter helfen.\r\n\r\nMit Freundlichen Grüßen:\r\nPersonal: Maurice', '2020-09-06 13:52:58', '2020-09-06 13:52:58'),
(34, 11, 48, 'Ich habe kein Techniker Rang :\'(', '2020-09-10 17:28:24', '2020-09-10 17:28:24'),
(35, 12, 49, 'Hallo liebes Wino-Space Team,\r\n\r\nIch habe eine frage kann man sich derzeit bewerben?\r\n\r\nMfG\r\nLennard aka. LennexDev', '2020-09-11 17:42:04', '2020-09-11 17:42:04'),
(36, 12, 15, 'Hallo ja man kann sich bewerben, bitte schreiben Sie dazu eine E-Mail an perso@wino-space.de oder auf unserem TeamSpeak kommen.\r\n\r\n\r\nMit freundlichen Grüßen\r\nInhaber Jonas G.', '2020-09-11 22:58:11', '2020-09-11 22:58:11'),
(37, 13, 50, 'Test', '2020-09-14 09:34:15', '2020-09-14 09:34:15'),
(38, 14, 56, 'Guten Morgen, die KVM Server sind schon sehr langsam und ich frage mich ob das am RAM oder CPU liegt \r\nIch weiß nicht was ich machen soll...', '2020-09-18 06:13:26', '2020-09-18 06:13:26'),
(39, 14, 15, 'Guten Morgen,\r\n\r\ndie KVM Server Können eigentlich nicht Langsam sein, Wenn Sie mir aber einmal die IP und das Jetzige Root Passwort durchgeben könnten, dann würde ich mir das einmal anschauen.\r\n\r\n\r\nMit freundlichen Grüßen \r\nInhaber \r\nJonas Galindo', '2020-09-18 09:17:23', '2020-09-18 09:17:23'),
(40, 14, 56, 'IP: 51.195.17.144\r\nPW: FlameVace!22', '2020-09-18 16:33:41', '2020-09-18 16:33:41'),
(41, 14, 49, 'Guten Nachmittag, Ich werde es mir jetzt anschauen ob es bei ihnen auf dem kvm server laggt. LG Entwickler: Lennard E. | LennexDev', '2020-09-18 17:49:23', '2020-09-18 17:49:23'),
(42, 14, 49, 'also mir ist nichts ungewöhnliches aufgefallen MfG Entwickler Lennard E. | LennexDev', '2020-09-18 18:10:07', '2020-09-18 18:10:07'),
(43, 14, 56, 'Guten Morgen,\r\nWenn ich zbsp jetzt eine installation mit apt-get install ausführen möchte dauert dies schon sehr lange\r\n\r\nLG Noah', '2020-09-19 07:27:10', '2020-09-19 07:27:10'),
(44, 14, 14, 'Gutten tag dies kann sein da wir noch keine ssd  Server haben sondern nur hdd Server aber wir habe eine 1gbit Anbindung leider keine keine feste 1gbit\r\nMFG Nico jeffrey Bary || CEO & Founder', '2020-09-19 14:05:24', '2020-09-19 14:05:24'),
(45, 15, 63, 'Mein Guthaben ist im Minus', '2020-09-20 18:18:59', '2020-09-20 18:18:59'),
(46, 16, 65, '<script>alert(\"Test\");</script>', '2020-09-20 18:39:35', '2020-09-20 18:39:35'),
(47, 17, 65, 'Sehr geehrte Damen und Herren,\r\n\r\nhiermit möchte ich Sie darauf hinweisen, dass es beim Spendensystem möglich ist, negative Beträge zu setzen und so anderen Usern Geld zu klauen.\r\nBitte beheben Sie das doch.\r\n\r\nGruß', '2020-09-20 18:41:03', '2020-09-20 18:41:03'),
(48, 18, 22, 'gggggggggggggggggggggggggggggggg', '2020-09-20 23:09:14', '2020-09-20 23:09:14'),
(49, 19, 22, 'hdrtjjdtjhrhdrh', '2020-09-20 23:09:32', '2020-09-20 23:09:32'),
(50, 20, 56, 'Guten Mittag, ich habe wieder diesen bekannten Bug wo das Guthaben immer mehr wurde bloß jetzt ist es weniger und zwar stehen dort https://prnt.sc/umzrlp\r\n', '2020-09-24 12:01:11', '2020-09-24 12:01:11'),
(51, 20, 15, 'Guten Tag,\r\nDies ist kein Bug, Wir haben Ihr Konto im Minus gepackt, da Sie ja noch eine Offene Rechnung bei uns haben.\r\n\r\nMit freundlichen Grüßen \r\nCEO Jonas G.', '2020-09-24 14:24:49', '2020-09-24 14:24:49'),
(52, 20, 56, 'Okey, danke für ihre rückmeldung ', '2020-09-24 15:29:37', '2020-09-24 15:29:37'),
(53, 20, 49, 'Okay, wars das? MfG Entwickler Lennard E. | LennexDev', '2020-09-24 15:31:57', '2020-09-24 15:31:57'),
(54, 21, 60, 'Hey, ich habe gerade 2€ Guthaben via Paysafecard aufgeladen allerdings ist das Geld nicht auf mein Account es wurde aber abgebucht.', '2020-09-25 09:49:00', '2020-09-25 09:49:00'),
(55, 21, 15, 'Wurde schon VIA Whatsapp Geklärt.\r\n\r\nMit freundlichen Grüßen\r\nCEO Jonas Galindo\r\n', '2020-09-25 13:17:59', '2020-09-25 13:17:59'),
(56, 22, 56, 'Guten Nachmittag liebes Wino-Space Team,\r\n\r\nHeute ist soeben mein Geld eingetroffen und wollte mich melden', '2020-09-25 14:57:56', '2020-09-25 14:57:56'),
(57, 22, 14, 'Hallo ,\r\nGut das sie sich melden ,\r\nWie wollen Sei Zahlen. \r\n\r\nMFG\r\n\r\nNico Jeffrey Bary CEO\r\n', '2020-09-25 15:07:20', '2020-09-25 15:07:20'),
(58, 22, 56, 'Also ich habe ein eBanking Account und an welches Konto?', '2020-09-25 15:08:28', '2020-09-25 15:08:28'),
(59, 22, 56, 'Ich bin jetzt mal im Teamspeak :)', '2020-09-25 15:14:34', '2020-09-25 15:14:34'),
(60, 22, 56, 'Und haben sie eine Möglichkeit?', '2020-09-25 18:07:19', '2020-09-25 18:07:19'),
(61, 23, 56, 'Wie setzte ich für das Botpanel einen Node auf das vom zbsp einen server bots erstellt werden können\r\n\r\n\r\nLg, Noah', '2020-09-25 18:46:56', '2020-09-25 18:46:56'),
(62, 22, 49, 'Hallöchen lieber Noah,\r\n\r\nDa es noch nciht fest steht ob sie ans Inkasso zahlen müssen oder nicht. Werde ich sie benachrichtigen ob sie ans inkasso zahlen müssen oder nicht.\r\n\r\nMfG Entwickler Lennard E. | LennexDev', '2020-09-25 19:12:10', '2020-09-25 19:12:10'),
(63, 23, 49, 'dafür brauchen  einen Windows Server. MfG Entwickler Lennard E. | LennexDev', '2020-09-25 19:14:00', '2020-09-25 19:14:00'),
(64, 22, 56, 'Ihr lieber Vorgesetzter meinte aber heute\r\n\r\nhttps://prnt.sc/unvqlt\r\n\r\n\r\nLg, Noah', '2020-09-25 19:21:07', '2020-09-25 19:21:07'),
(65, 23, 56, 'Könnten sie es mir dann vllt zeigen wie ich das dann mache\r\n\r\nLg, Noah ^^', '2020-09-25 19:21:47', '2020-09-25 19:21:47'),
(66, 22, 14, 'Sorry war mein Fehler\r\nDa ich noch nicht bescheid wusste wegen dem incasso habe so gefragt leider hat ecolekt es leider nicht zurück gezogen da es zu kurzfristig war daher müssen sie leider an das incasso zahlen\r\n\r\nMfg\r\nNico Jeffrey Bary ceo', '2020-09-25 20:34:28', '2020-09-25 20:34:28'),
(67, 22, 15, 'Bitte Zahlen Sie den Fälligen Betrage an die Inkasso Firma eCollect! Dieser muss bis zum 01.10.2020 Dort sein.\r\n\r\nMfg CEO Jonas G.', '2020-09-25 21:03:20', '2020-09-25 21:03:20'),
(68, 24, 80, 'Guten Tag, wie ist die Virtuelle Leitstelle aufgebaut, könnten sie mir einige Screenshots zusenden, welche Funkspionen hat diese Leitstelle?', '2020-10-07 14:44:58', '2020-10-07 14:44:58'),
(69, 24, 15, 'Guten Tag,\r\nkönnten Sie mir den sagen, wovon Sie den Bildern haben möchten?\r\n\r\nMit freundlichen Grüßen\r\nJonas G..', '2020-10-07 15:49:43', '2020-10-07 15:49:43'),
(70, 24, 80, 'vom Aufbau der Software, welche Funktionen hat die Software, wie ist die Leitstelle aufgebaut, welches Alarmierung hat das System, ein paar allgemeine Infos zu dem Gesamten System Aufbau wären Schön!\r\n\r\nMit freundlichen Grüßen.\r\nEric S.', '2020-10-07 16:13:03', '2020-10-07 16:13:03'),
(71, 24, 80, 'vom Aufbau der Software, welche Funktionen hat die Software, wie ist die Leitstelle aufgebaut, welches Alarmierung hat das System, ein paar allgemeine Infos zu dem Gesamten System Aufbau wären Schön!\r\n\r\nMit freundlichen Grüßen.\r\nEric S.', '2020-10-07 16:21:12', '2020-10-07 16:21:12'),
(72, 24, 15, 'Könnten Sie mir denn sagen für welches Funkspiel diese Leitstelle wehre?\r\n\r\nMit freundlichen Grüßen\r\nJonas G.', '2020-10-07 16:33:29', '2020-10-07 16:33:29'),
(73, 24, 80, 'hallo, ja, wir wollen ein eigenes Funkspiel aufbauen und sind uns beim namen noch nicht sicher, jedoch haben wir leider keinen Programmierer weshalb wir auf ihre leitstelle zurückgreifen wollen, ich habe mir ihr Produkt jetzt gekauft und werde es für einen Monat testen sollte uns ihr system gefallen werden wir uns nochmal mit ihnen in Verbindung setzten!', '2020-10-07 16:41:02', '2020-10-07 16:41:02'),
(74, 24, 14, 'Bitte ein Mal Antworten Wegen der Bestellung', '2020-10-07 16:41:12', '2020-10-07 16:41:12'),
(75, 24, 80, '?\r\n', '2020-10-07 16:41:35', '2020-10-07 16:41:35'),
(76, 24, 80, 'ich komme ebend auf ihren teamspeak', '2020-10-07 16:41:51', '2020-10-07 16:41:51'),
(77, 25, 83, 'Guten Tag, ich möchte mich gerne mit meinen Projekt als Partner bewerben.\r\n\r\nIch fange mit den wichtigsten Punkten an:\r\n\r\n- Was für Projekt betreibe ich?\r\n\r\nIch betreibe ein Musikbot Hosting welches sich MusikBots24 nennt.\r\n\r\n- Was benötige ich von euch?\r\n\r\nIch benötige eine Webspace die ich vielleicht gesponsort bekomme.\r\n\r\n- Was biete ich euch im Gegenzug?\r\n\r\nIch biete euch auf der Hauptwebsite eine Verlinkung sowie auf dem TS3 Interface.\r\nWenn ihr wollt Verlinke ich euch noch auf unserem Twitter Account.\r\n\r\n- Wie könnt ihr mich erreichen?\r\n\r\nIhr könnt mich gerne unter diesem Discord Tag anschreiben: Nils#6595\r\nAuf dem TS Musikbots24.eu könnt ihr mich auch erreichen\r\n\r\n- Schlusswort\r\n\r\nIch hoffe euch hat meine kleine aber feine Bewerbung gefallen. \r\n\r\nMit freundlichen Grüßen Nils', '2020-10-18 00:08:55', '2020-10-18 00:08:55'),
(78, 25, 14, 'Hallo,\r\n\r\nWir würden gerne noch mal persönlich mit ihnen reden\r\n\r\nWenn Es möglich Wehre dazu bin ich schon auf euren Teamspeak\r\n\r\nMit freundlichen Grüßen\r\nNico Jeffrey Bary', '2020-10-18 15:29:30', '2020-10-18 15:29:30'),
(79, 26, 83, 'Guten Abend,\r\n\r\nich habe gerade die E-mail erhalten das um 1uhr ein neustart der Systeme errfolgt. In der E-mail stand drinn das man als entschädigung +3 Tage auf die Laufzeit bekommt.\r\n\r\nIch würde gerne die +3 Tage haben.\r\n\r\nLG Nils', '2020-10-23 23:02:47', '2020-10-23 23:02:47'),
(80, 26, 15, 'Guten Abend, \r\n\r\nIhr Server war laut unser System nicht aus. Daher können wir Ihnen keine Entschädigung geben, außerdem war der Neustart am 24.10.2020 um 01:00 Uhr!\r\n\r\n\r\nMit freundlichen Grüßen \r\nJonas G.', '2020-10-24 19:02:17', '2020-10-24 19:02:17'),
(81, 26, 15, 'Guten Abend, \r\n\r\nSie bekommen +3 Tage!\r\n\r\n\r\n\r\nLG \r\nJonas G.', '2020-10-24 19:09:28', '2020-10-24 19:09:28'),
(82, 26, 83, 'Erhlich? Sehe es aber noch nicht.', '2020-10-24 23:05:22', '2020-10-24 23:05:22'),
(83, 26, 15, 'Ja das Sehen Sie auch nicht, Wenn Sie den Server behalten möchten laden Sie einfach auf, aber bei uns im System ist vermerkt das Der Server +3 Tage bekommt.\r\n\r\n\r\nLG\r\nJonas G..', '2020-10-25 09:49:43', '2020-10-25 09:49:43'),
(84, 26, 83, 'ok', '2020-10-25 10:33:09', '2020-10-25 10:33:09'),
(85, 26, 15, 'Ich bedanke mich bei Ihnen das Sie unser Support genutzt haben! \r\nhiermit werde Ich das Ticket Schließen.\r\n\r\n\r\nLG\r\nJonas G.', '2020-10-25 11:07:56', '2020-10-25 11:07:56'),
(86, 26, 15, 'Ich bedanke mich bei Ihnen das Sie unser Support genutzt haben! \r\nhiermit werde Ich das Ticket Schließen.\r\n\r\n\r\nLG\r\nJonas G.', '2020-10-25 11:07:57', '2020-10-25 11:07:57'),
(87, 27, 83, 'Hey, ich habe heute Guthaben aufgeladen und dann habe ich mir nochmal die Website angeschaut. Ich bin dann ausversehen auf Webspace kaufen gegangen. (WEBSPACE #9).\r\n\r\nIch hoffe ich kann das zurückerstatten lassen auf mein Kundenkonto. Wäre nice.', '2020-10-26 20:03:06', '2020-10-26 20:03:06'),
(88, 27, 15, 'Guten Abend,\r\n\r\nWir haben Ihnen das Geld gutgeschrieben.\r\n\r\n\r\nMit freundlichen Grüßen \r\nJonas G.\r\nCEO\r\n\r\n\r\n', '2020-10-26 22:21:07', '2020-10-26 22:21:07'),
(89, 28, 105, 'Guten Tag.\r\n\r\nMein Name ist Julian ich bin 18 Jahre alt und komme aus Österreich.\r\nIch möchte mich hiermit bei Ihnen als Supporter bewerben, da Ich lust habe bei einem Hosting Unternehmen tätig zu sein.\r\n\r\nMeine Stärken.\r\n\r\ngute Linux Kenntnisse.\r\nTS3AudioBot Kenntnisse.\r\nFreundlichkeit.\r\nTeamfähig.\r\nZielstrebend und zuverlässig.\r\n\r\nSchwächen: \r\nRechtschreibung (Aber nur ab und zu :))\r\n\r\nWarum möchte Ich mich bei euch bewerben?\r\n\r\nIch möchte mich bei euch bewerben, da Ich sehe dass Ihr ein Erfolgreicher Hoster seit und Ich gerne meinen Beitrag dazu leisten möchte.\r\n\r\nWarum solltet Ir mich nehmen?\r\n\r\nIch bin 24/7 erreichbar.\r\nKann unter anderem HTML (mittelmäßig) und habe eine Gute Mikrofon Qualität.\r\n\r\nOnline Zeiten: Mo-So: 11:45 - 2:45.\r\n\r\nMit freundlichen Grüßen\r\n\r\nJulian Haupt', '2020-11-04 14:46:45', '2020-11-04 14:46:45'),
(90, 28, 18, 'Hallo, ich würde Sie gerne mal bitten auf unseren TeamSpeak sich einzufinden.', '2020-11-04 14:56:01', '2020-11-04 14:56:01'),
(91, 28, 18, 'MfG Personalabteilung\r\n', '2020-11-04 14:57:59', '2020-11-04 14:57:59'),
(92, 29, 82, 'Hoch wie Nico', '2020-11-05 21:18:52', '2020-11-05 21:18:52'),
(93, 29, 14, 'sasdsadasasdadas\r\n', '2020-11-05 21:19:31', '2020-11-05 21:19:31'),
(94, 29, 82, 'ne', '2020-11-05 21:19:54', '2020-11-05 21:19:54'),
(95, 29, 14, 'dadsadsadadsa', '2020-11-05 21:20:10', '2020-11-05 21:20:10'),
(96, 29, 82, '...', '2020-11-05 21:20:23', '2020-11-05 21:20:23'),
(97, 29, 14, 'TEST\r\ndasdasdsada\r\nsdadasd\r\nasdasdas\r\ndasdas\r\ndasdasd\r\nasdasd\r\nas\r\ntext', '2020-11-05 21:20:42', '2020-11-05 21:20:42'),
(98, 29, 82, 'rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr', '2020-11-05 21:20:56', '2020-11-05 21:20:56');
INSERT INTO `ticket_message` (`id`, `ticket_id`, `writer_id`, `message`, `created_at`, `updated_at`) VALUES
(99, 29, 82, 'rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr', '2020-11-05 21:20:59', '2020-11-05 21:20:59'),
(100, 29, 15, 'Ey nicht so frech hier!', '2020-11-05 21:21:01', '2020-11-05 21:21:01'),
(101, 29, 14, 'xd', '2020-11-05 21:21:20', '2020-11-05 21:21:20'),
(102, 29, 82, 'JONAS xD', '2020-11-05 21:21:24', '2020-11-05 21:21:24'),
(103, 29, 15, 'was?', '2020-11-05 21:21:32', '2020-11-05 21:21:32'),
(104, 30, 112, 'Hallo, \r\ndieses Ticket wurde durch den Mitarbeiter Jonas Galindo eröffnet. Bitte warten Sie auf eine Antwort.', '2020-11-12 04:31:29', '2020-11-12 04:31:29'),
(105, 30, 15, 'Hallo,\r\nWir können leider Ihren Test Server nicht erstellen, da Sie schon im System eingetragen Sind. Sie sind aber nicht bei uns im System aber bei unserem Partner. Ich bitte Sie uns eine alternativ E-Mail Adresse zu senden. Damit wir so schnell wie möglich Ihren Server Erstellen können.\r\n\r\nViele Grüße aus Heinsberg und Dortmund!\r\n\r\nMit freundlichen Grüßen \r\nJonas Galindo CEO', '2020-11-12 04:33:59', '2020-11-12 04:33:59'),
(106, 30, 112, 'Nightselfbot@gmail.com\r\n', '2020-11-12 05:09:03', '2020-11-12 05:09:03'),
(107, 30, 15, 'Hallo,\r\nVielen Dank für die schnelle Antwort, ihr Server wird nun eingerichtet.\r\n\r\n\r\nViele grüße aus Heinsberg und Dortmund \r\n\r\nMit freundlichen Grüßen \r\nJonas Galindo CEO', '2020-11-12 05:25:40', '2020-11-12 05:25:40'),
(108, 31, 83, 'Guten Tag,\r\nich habe das Interesse an Kundensupporter zu werden und wollte fragen ob das geht. Ich bin zwar noch nicht 15 aber die geistige Reife und die Deutsche Rechtschreibung beherrsche ich.\r\n\r\nIch bin für euch unter Teamspeak musikbots24.eu oder auf Whatsapp unter der Nummer 015771462181 erreichbar.\r\n\r\nMit freundlichen Grüßen Nils', '2020-11-12 10:33:24', '2020-11-12 10:33:24'),
(109, 31, 18, 'Guten Abend, haben Sie Vorerfahrungen?\r\n\r\n\r\nMit freundlichen Grüßen \r\n\r\nNicolas G.\r\nPersonalabteilung ', '2020-11-12 14:05:24', '2020-11-12 14:05:24'),
(110, 32, 40, 'Lösch meinen Acc.', '2020-11-12 16:00:23', '2020-11-12 16:00:23'),
(111, 32, 15, 'Guten Abend,\r\n\r\nBitte teilen Sie und doch Ihre Kunden Nummer + Support ID mit.\r\n\r\nViele Grüße aus Dortmund und Heinsberg \r\n\r\nJonas Galindo CEO', '2020-11-12 16:09:41', '2020-11-12 16:09:41'),
(112, 33, 14, 'AWDAWDWADWADWAD', '2020-11-12 16:13:18', '2020-11-12 16:13:18'),
(113, 32, 15, 'Guten Morgen,\r\n\r\nbitte eröffnen Sie erneut ein Ticket mit mehr Informationen!\r\n- Kunden-ID\r\n- Support Pin \r\n- Grund der Sperrung\r\n\r\nViele Grüße aus Heinsberg und Dortmund!\r\n\r\nJonas Galindo CEO', '2020-11-13 04:47:33', '2020-11-13 04:47:33'),
(114, 34, 15, 'test', '2020-11-13 04:48:48', '2020-11-13 04:48:48'),
(115, 31, 83, 'Hey,\r\nich habe bereits Erfahrungen gemacht im Bereich Support und Hosting Sachen. \r\n\r\nMit freundlichen Grüßen Nils', '2020-11-13 07:42:18', '2020-11-13 07:42:18'),
(116, 31, 18, 'Hallo Nils, ich lade Sie herzlich in die Nächste Runde zum Vorstellungsgespräch ein. Ich bitte Sie am 13.11.2020 um 19 auf dem TeamSpeak zu sein. \r\n\r\n\r\nMit freundlichen Grüßen\r\n\r\nNicolas G. \r\nPersonalabteilung\r\n', '2020-11-13 08:15:38', '2020-11-13 08:15:38'),
(117, 31, 83, 'Ich bedanke mich für die Rückmeldung und freue mich auf 19 Uhr.\r\n\r\nMit freundlichen Grüßen Nils', '2020-11-13 08:23:10', '2020-11-13 08:23:10'),
(118, 33, 83, 'Hi ich wollte support ausnutzung machen', '2020-11-13 17:41:11', '2020-11-13 17:41:11'),
(119, 33, 49, 'PenisXXXDDDD', '2020-11-13 17:41:29', '2020-11-13 17:41:29'),
(120, 34, 15, 'Hallo möchte mich Bewerben.', '2020-11-13 17:41:41', '2020-11-13 17:41:41'),
(121, 33, 18, 'Ok, sperre wird reingemacht.\r\n', '2020-11-13 17:41:53', '2020-11-13 17:41:53'),
(122, 34, 49, 'Xd\r\nErnst halt xDDDDD', '2020-11-13 17:42:57', '2020-11-13 17:42:57'),
(123, 35, 83, 'Guten Tag,\r\n\r\nich bekomme schon seit ein Paar Tagen eine E-Mail das mein Webspace am 17 November gelöscht wird. Mein Webspace läuft aber noch bis zum 17.3.2021.\r\n\r\nLg Nils', '2020-11-14 11:15:15', '2020-11-14 11:15:15'),
(124, 35, 15, 'Guten Tag, \r\n\r\nIch werde mich nun um Ihr Problem Kümmern,  bitte nennen Sie mir doch die Webspace ID. \r\nDiese finden Sie bei der Verwaltung.\r\n\r\n\r\nViele Grüße aus Dortmund und Heinsberg!\r\n\r\nJonas Galindo CEO', '2020-11-14 12:18:11', '2020-11-14 12:18:11'),
(125, 35, 83, 'Die ID lautet #6', '2020-11-14 12:22:51', '2020-11-14 12:22:51'),
(126, 35, 15, 'Guten Tag,\r\n\r\nwir schauen uns das Problem gerade an, und werden auf diese Ticket Antworten!\r\n\r\n\r\nViele Grüße aus Dortmund und Heinsberg!\r\n\r\nJonas Galindo CEO\r\n', '2020-11-14 12:29:00', '2020-11-14 12:29:00'),
(127, 35, 15, 'Guten Tag,\r\n\r\nwir haben den Fehler jetzt hoffentlich behoben, sollten Sie noch eine E-Mail bekommen, so melden Sie sich erneut.\r\n\r\n*Dieses Ticket wurde nun durch ein Mitarbeiter Geschlossen.\r\n\r\n\r\nViele Grüße aus Dortmund und Heinsberg!\r\n\r\nJonas Galindo CEO', '2020-11-14 12:38:38', '2020-11-14 12:38:38'),
(128, 36, 83, 'Hallo ich habe wieder eine E-Mail erhalten das mein Webspace am 17. gelöscht wird.\r\n\r\nLg Nils', '2020-11-15 09:26:38', '2020-11-15 09:26:38'),
(129, 36, 14, 'Hallo ,\r\n\r\n\r\nIch bitte sie hier mit, alle Daten ein mal zu sichern\r\n\r\nund uns dann noch mal Bescheid zu geben\r\n\r\nDann löschen wir ihren Webspace und geben dann ein neuen Webspace\r\n\r\nMfg \r\nNico Jeffrey Bary | CEO & Founder\r\n', '2020-11-15 10:19:51', '2020-11-15 10:19:51'),
(130, 37, 83, 'Diese Ticket wurde durch ein Mitarbeiter der Wino-Space & Wino-IT erstellt. \r\nAktueller Bearbeiter: Jonas Galindo', '2020-11-17 13:03:19', '2020-11-17 13:03:19'),
(131, 37, 15, 'Sehr geehrter Herr Jantos, \r\nhiermit bestätigen wir denn erhalt der Bevollmächtigung.\r\nIhre Postadresse lautet:\r\n\r\nNils Jantos (der Name kann geändert werden, kann auch ein Firmennamen stehen!)\r\nPostfach 120344\r\n44293 Dortmund\r\n\r\nSollten Sie den Service Kündigen, wird Ihre Post nicht mehr angenommen.\r\n\r\nViele Grüße aus Dortmund und Heinsberg!\r\n\r\n\r\nJonas Galindo CEO', '2020-11-17 13:06:03', '2020-11-17 13:06:03'),
(132, 38, 83, 'jhkjhkjh', '2020-11-17 18:26:29', '2020-11-17 18:26:29'),
(133, 39, 114, 'Hallo,\r\n\r\nich kann mich aus irgendein Grund nicht mehr zu mein Teamspeak #7 verbinden.\r\nKönnen sie mir mehr dazu sagen ?\r\nBitte schrieben Sie zurück\r\n\r\nMfg\r\n\r\nLahzi\r\n', '2020-11-26 20:46:13', '2020-11-26 20:46:13'),
(134, 39, 15, 'Hallo,\r\n\r\num Ihnen weiterhelfen zu können, teilen Sie mir doch bitte ihren Support-PIN und Ihre Kundennummer mit.\r\n\r\nGerne helfen wir Ihnen weiter.\r\n\r\n\r\nViele Grüße aus Dortmund.\r\n\r\nMit freundlichen Grüßen \r\nJonas G. - CEO', '2020-11-27 10:15:29', '2020-11-27 10:15:29'),
(135, 39, 114, 'Kundenummer:  KD - 114\r\nSupport-PIN:  2903-9334-8642\r\n', '2020-11-27 10:27:29', '2020-11-27 10:27:29'),
(136, 39, 14, 'Hallo,\r\nDanke für die support pin habe mal getestet selber drauf zu \r\nkommen aber leider ohne Erfolg\r\n\r\nWerde mich das Problem ca um 15 Uhr anschauen und gebenen fals mit unseren reseller Kontakt aufnehmen \r\n\r\nMfg Nico Jeffrey Bary | Ceo & Founder ', '2020-11-27 13:10:17', '2020-11-27 13:10:17'),
(137, 39, 114, 'Vielen Dank, bitte melden sie sich, wenn man mehr weiß', '2020-11-27 13:40:15', '2020-11-27 13:40:15'),
(138, 39, 15, 'Hallo,\r\n\r\nSie können sich nun auf Ihren TeamSpeak³ Server wieder Verbinden. Der Fehler lag am System. Wir haben nur den Port geändert, alle Channel etc. sind gleichgeblieben.\r\n\r\n\r\nViele Grüße aus Dortmund.\r\n\r\nMit freundlichen Grüßen\r\nJonas G. - CEO', '2020-11-27 14:26:40', '2020-11-27 14:26:40'),
(139, 40, 83, 'Sehr geehrte Damen und Herren,\r\n\r\nich wünsche vollständige Kündigung des Postfachen aufgrund von nicht benutzung.', '2020-11-27 21:30:09', '2020-11-27 21:30:09'),
(140, 40, 15, 'Guten Morgen,\r\n\r\nich bitte Sie uns eine Schriftliche Kündigung + Handschriftliche Unterschrift, uns zu zusenden. \r\nBitte senden Sie das ganze an unsere Post Adresse:\r\n\r\nWino-Space & Wino-IT\r\nPostfach 120344\r\n44293 Dortmund\r\n\r\nSobald dieses Schreiben bei uns eingegangen ist, bekommen Sie eine Kündigungsbestätigung.\r\n\r\nViele Grüße aus Dortmund\r\n\r\nMit freundlichen Grüßen \r\nJonas G. - CEO', '2020-11-28 09:01:08', '2020-11-28 09:01:08'),
(141, 40, 83, 'Das finde ich komisch weil du gesagt hast man kann per Ticket kündigen', '2020-11-28 10:53:42', '2020-11-28 10:53:42'),
(142, 40, 15, 'Hallo,\r\n\r\nhiermit bestätigen wir die Kündigung. Ihr Produkt wird zum 17.12.2020 gekündigt.\r\nBitte halten Sie sich an folgende Sachen:\r\n\r\n-> Nehmen Sie die Adresse bis zum 17.12.2020 aus dem Social Media Raus.\r\n-> es wird keine Post von Ihnen mehr angenommen.\r\n\r\nWeitere rechtliche Mittel halten wir uns vor.\r\n\r\nMit freundlichen Grüßen \r\nJonas G. - CEO', '2020-11-28 11:49:28', '2020-11-28 11:49:28'),
(143, 40, 83, 'Wie rechtlich. Jonas komm mal ts Summercloud.eu\r\n', '2020-11-28 12:32:10', '2020-11-28 12:32:10'),
(144, 41, 123, 'Hallo,\r\n\r\nich würde gerne einen TeaSpeak Server bei euch\r\ntesten.\r\n\r\nMfG\r\nwtv65581', '2020-11-29 15:38:43', '2020-11-29 15:38:43'),
(145, 42, 83, 'Hallo!', '2020-12-01 16:21:06', '2020-12-01 16:21:06'),
(146, 42, 15, 'Guten Tag,\r\n\r\nda Sie Supportausnutzung betrieben haben, werde ich ihr Konto nun -40.00€ setzen!\r\n\r\n\r\nMit freundlichen Grüßen \r\nCEO', '2020-12-01 16:24:34', '2020-12-01 16:24:34'),
(147, 43, 96, 'Hallo Liebes Wino Space ich habe mein Passwort für den KVM Server vergessen gibt es eine Möglichkeit das Passwort zu erfahren oder eventuell zurück zu setzen wäre echt hilfreich \r\n\r\nmfg ', '2020-12-03 12:26:23', '2020-12-03 12:26:23'),
(148, 43, 15, 'Guten Tag,\r\n\r\nDas Passwort finden Sie unter Meine Produkte -> Services -> Das das Services auswählen.\r\n\r\nDas Passwort lautet aber: tjZHGYSF5d\r\n\r\n\r\nViele Grüße aus Dortmund!\r\n\r\nMit freundlichen Grüßen \r\nJonas Galindo - CEO', '2020-12-03 14:46:15', '2020-12-03 14:46:15'),
(149, 43, 96, 'Hallo! Herr  Jonas Galindo ich habe dass Passwort soeben Probiert und es geht nicht was soll ich jetzt machen? \r\n\r\nWäre echt nett wenn ihr mir helfen könntet \r\n\r\nmfg Max ', '2020-12-03 16:27:31', '2020-12-03 16:27:31'),
(150, 43, 15, 'Hallo,\r\n\r\nversuchen Sie es mal bitte mit diesem Passwort: NafuC1PTzj\r\n\r\n\r\nMit freundlichen Grüßen \r\nJonas Galindo - CEO', '2020-12-03 20:45:43', '2020-12-03 20:45:43'),
(151, 44, 96, 'Liebes Wino-Space Team,\r\nIch bin sehr wütend über die Tatsache das ich mich mit dem angebenen Passwort nicht in PuTTY einloggen kann.\r\nIch kann mich ebenfalls nicht in der KMV Verwaltung einloggen,ich bitte um SOFORTIGE Lösung.\r\nMFG,\r\nMax', '2020-12-04 10:47:45', '2020-12-04 10:47:45'),
(152, 44, 15, 'Hallo Max, \r\n\r\nIch habe gestern 2x Ihr Passwort zurückgesetzt, auf folgendes Passwort: NafuC1PTzj\r\nebenfalls habe ich versucht mich via ssh zu verbinden,  und dies geht ohne Probleme.\r\n\r\nMit welcher IP-Adresse versuchen Sie sich den einzuloggen?\r\n\r\n\r\nMit freundlichen Grüßen\r\nJonas Galindo - CEO', '2020-12-04 13:09:31', '2020-12-04 13:09:31'),
(153, 44, 96, 'Hallo Lieber Jonas Galindo!\r\n\r\nIch Versuche mich immer mit dieser Ip einzuloggen [51.89.77.37]\r\n\r\nDieser Ip Adresse steht auch im Panel man kann sich auch nicht mehr bei dem Panel einloggen! \r\n\r\nIch möchte nur meinen KVM Server normal nutzen.\r\n\r\nmfg Max', '2020-12-04 13:25:57', '2020-12-04 13:25:57'),
(154, 44, 15, 'Hallo lieber Max, \r\n\r\nAlso die Verbindung via SSH funktioniert.\r\n\r\nKVM Verwaltung:\r\nhttps://kvm-control.net:4083/\r\ndj-crazycat@gmx.at\r\nYkAQMt69\r\n\r\n\r\nMit freundlichen Grüßen \r\nJonas Galindo - CEO', '2020-12-04 13:33:24', '2020-12-04 13:33:24'),
(155, 44, 96, 'Hallo Jonas Galindo !\r\n\r\nEs geht noch immer nicht.\r\n\r\nmfg Max', '2020-12-04 13:38:28', '2020-12-04 13:38:28'),
(156, 44, 15, 'Hallo Max,\r\n\r\nauch Via SSH nicht?\r\n\r\n\r\nMit freundlichen Grüßen \r\nJonas Galindo - CEO', '2020-12-04 13:39:54', '2020-12-04 13:39:54'),
(157, 44, 96, 'Ja Herr Jonas Galindo ja auch nicht via SSH\r\n\r\nmfg Max ', '2020-12-04 13:41:11', '2020-12-04 13:41:11'),
(158, 44, 96, 'Haben sie TeamSpeak damit darüber reden ?\r\n\r\nmfg Max', '2020-12-04 13:42:23', '2020-12-04 13:42:23'),
(159, 44, 15, 'Lieber Max,\r\n\r\n\r\nhaben Sie Anydesk? wenn ja würden Sie mir Ihre IP Geben? dan würde ich einmal Drüber schauen.\r\n\r\n\r\nMit freundlichen Grüßen \r\nJonas Galindo - CEO', '2020-12-04 13:42:58', '2020-12-04 13:42:58'),
(160, 44, 15, 'Gerne Können Sie auf unseren TeamSpeak kommen. ts.wino-space.de\r\n\r\n\r\nMit freundlichen Grüßen \r\nJonas Galindo - CEO', '2020-12-04 13:44:40', '2020-12-04 13:44:40'),
(161, 45, 101, 'Liebes Wino-space Team\r\n\r\nHier Mit Möchte Ich Mich Bei Ihnen Als Kundenberater Bewerben\r\n\r\nIch Heiße André Und Bin 15 jahre Und Werde am 21.01 16 Und Komme Aus NRW\r\nMeine Stärken\r\nPünktlichkeit\r\nFreundlichkeit\r\nKreativität\r\nlerne Programmieren\r\n\r\nMeine Schwächen:\r\nNeugierig \r\nRechtschreibung\r\n\r\nIch habe Auch Viel Erfahrung Im Bereich Support, Und hab Auch 1 Jahr Im Team Geführt\r\n\r\nich Würde Mich über ein Persönliches Gespräch Freuen \r\nMit Freundlichen Grüßen\r\nAndré H.', '2020-12-05 22:43:49', '2020-12-05 22:43:49'),
(162, 45, 15, 'Lieber Andre H,\r\n\r\ndeine Bewerbung ist nun In Bearbeitung.\r\n\r\nwir werden uns bald melden.\r\n\r\nViele Grüße\r\nJonas Galindo - CEO', '2020-12-05 23:11:35', '2020-12-05 23:11:35'),
(163, 46, 121, 'Guten tag liebes Wino-Space team ich brauche DRINGEND hilfe undzwar wollte ich mich heute in mein root server einloggen ( also bei WinSCP ) \r\nund dann stande da das das passwort falsch ist !. Nur zu info: Ich habe es nicht weitergegeben und nicht geändert..\r\n\r\nWas muss ich tuen?? um mich wieder einloggen zu können :( ?.\r\n\r\nMFG', '2020-12-07 13:36:14', '2020-12-07 13:36:14'),
(164, 47, 96, 'Liebes Wino-space team,\r\nich war vor einigen Tagen bei euch im TeamSpeak weil es ein Problem mit meinem GEKAUFTEN Server gab,mir wurde gesagt dass das Problem bald gelöst wird.\r\nIch möchte bitte eine Sofortige Lösung,da ich mein Minecraft netzwerk eröffnen will.\r\nMFG,\r\nmax', '2020-12-08 13:05:59', '2020-12-08 13:05:59'),
(165, 47, 130, 'Hallo Lieber Max.\r\n\r\nIch bitte noch um etwas geduldet ich werde das sofort an eine Zuständigen CEO Weiterleiten. \r\n\r\nBis dahin bitte ich um etwas Geduld \r\n\r\nmfg Dominik K.    ', '2020-12-08 13:17:23', '2020-12-08 13:17:23'),
(166, 47, 15, 'Hallo Lieber Max, \r\n\r\nIch bitte Sie mir das Problem zu schildern, gerne können Sie auch erneut in den TeamSpeak kommen.\r\n\r\nViele Grüße aus Dortmund!\r\n\r\nMit freundlichen Grüßen \r\nJonas Galindo -CEO', '2020-12-08 13:34:03', '2020-12-08 13:34:03'),
(167, 47, 15, 'Hallo Liber Max, \r\n\r\nDas Problem habe ich Gelöst. Sie haben eine Neue Ip. ich habe dazu aber auch ein News im Panel, Twitter etc. verfasst wo man die Neue IP sehen kann.\r\n\r\nNeue IP: 54.37.193.238	\r\n\r\n\r\nMit freundlichen Grüßen \r\nJonas Galindo - CEO', '2020-12-08 13:39:37', '2020-12-08 13:39:37');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `gateway` varchar(255) NOT NULL,
  `state` enum('pending','success') NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `tid` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `gateway`, `state`, `amount`, `desc`, `tid`, `created_at`, `updated_at`) VALUES
(1, 23, 'paypal', 'success', '2.00', 'Guthabenaufladung mit Paypal', '7F4245827N454264B', '2020-08-16 18:30:38', '2020-08-16 18:30:38'),
(2, 22, 'paypal', 'success', '5.00', 'Guthabenaufladung mit Paypal', '9RG260406E528793B', '2020-08-23 16:54:03', '2020-08-23 16:54:03'),
(3, 56, 'paypal', 'success', '1.00', 'Guthabenaufladung mit Paypal', '9WL53111UU368494E', '2020-09-15 16:52:08', '2020-09-15 16:52:08'),
(4, 56, 'paypal', 'success', '25.00', 'Guthabenaufladung mit Paypal', '4UL25020VJ299580J', '2020-09-15 16:53:53', '2020-09-15 16:53:53'),
(9, 14, 'paypal', 'success', '15.00', 'Guthabenaufladung mit Paypal', '0P037815UV214971V', '2020-09-15 17:20:02', '2020-09-15 17:20:02'),
(28, 56, 'paypal', 'success', '9.00', 'Guthabenaufladung mit Paypal', '5YD020702G695304X', '2020-09-15 20:11:11', '2020-09-15 20:11:11'),
(32, 56, 'paypal', 'success', '5.00', 'Guthabenaufladung mit Paypal', '77562371EH171554L', '2020-09-15 20:54:01', '2020-09-15 20:54:01'),
(33, 56, 'paypal', 'success', '9.00', 'Guthabenaufladung mit Paypal', '5YD020702G695304X', '2020-09-15 21:16:57', '2020-09-15 21:16:57'),
(34, 56, 'paypal', 'success', '1.00', 'Guthabenaufladung mit Paypal', '9WL53111UU368494E', '2020-09-15 21:18:04', '2020-09-15 21:18:04'),
(35, 56, 'paypal', 'success', '25.00', 'Guthabenaufladung mit Paypal', '4UL25020VJ299580J', '2020-09-15 21:23:14', '2020-09-15 21:23:14'),
(36, 56, 'paypal', 'success', '9.00', 'Guthabenaufladung mit Paypal', '5YD020702G695304X', '2020-09-15 21:43:00', '2020-09-15 21:43:00'),
(37, 56, 'paypal', 'success', '1.00', 'Guthabenaufladung mit Paypal', '9WL53111UU368494E', '2020-09-15 21:44:50', '2020-09-15 21:44:50'),
(38, 56, 'paypal', 'success', '5.00', 'Guthabenaufladung mit Paypal', '77562371EH171554L', '2020-09-15 22:10:24', '2020-09-15 22:10:24'),
(39, 56, 'paypal', 'success', '9.00', 'Guthabenaufladung mit Paypal', '5YD020702G695304X', '2020-09-15 22:14:35', '2020-09-15 22:14:35'),
(40, 56, 'paypal', 'success', '25.00', 'Guthabenaufladung mit Paypal', '4UL25020VJ299580J', '2020-09-15 22:26:23', '2020-09-15 22:26:23'),
(41, 56, 'paypal', 'success', '1.00', 'Guthabenaufladung mit Paypal', '9WL53111UU368494E', '2020-09-15 22:45:42', '2020-09-15 22:45:42'),
(42, 56, 'paypal', 'success', '9.00', 'Guthabenaufladung mit Paypal', '5YD020702G695304X', '2020-09-15 22:46:29', '2020-09-15 22:46:29'),
(43, 56, 'paypal', 'success', '5.00', 'Guthabenaufladung mit Paypal', '77562371EH171554L', '2020-09-15 23:02:13', '2020-09-15 23:02:13'),
(44, 56, 'paypal', 'success', '9.00', 'Guthabenaufladung mit Paypal', '5YD020702G695304X', '2020-09-15 23:34:35', '2020-09-15 23:34:35'),
(45, 56, 'paypal', 'success', '25.00', 'Guthabenaufladung mit Paypal', '4UL25020VJ299580J', '2020-09-15 23:57:33', '2020-09-15 23:57:33'),
(46, 56, 'paypal', 'success', '1.00', 'Guthabenaufladung mit Paypal', '9WL53111UU368494E', '2020-09-16 00:17:42', '2020-09-16 00:17:42'),
(47, 56, 'paypal', 'success', '5.00', 'Guthabenaufladung mit Paypal', '77562371EH171554L', '2020-09-16 00:50:05', '2020-09-16 00:50:05'),
(48, 56, 'paypal', 'success', '9.00', 'Guthabenaufladung mit Paypal', '5YD020702G695304X', '2020-09-16 01:11:35', '2020-09-16 01:11:35'),
(49, 56, 'paypal', 'success', '25.00', 'Guthabenaufladung mit Paypal', '4UL25020VJ299580J', '2020-09-16 02:48:19', '2020-09-16 02:48:19'),
(50, 56, 'paypal', 'success', '1.00', 'Guthabenaufladung mit Paypal', '9WL53111UU368494E', '2020-09-16 03:08:41', '2020-09-16 03:08:41'),
(51, 56, 'paypal', 'success', '5.00', 'Guthabenaufladung mit Paypal', '77562371EH171554L', '2020-09-16 03:41:01', '2020-09-16 03:41:01'),
(52, 56, 'paypal', 'success', '9.00', 'Guthabenaufladung mit Paypal', '5YD020702G695304X', '2020-09-16 04:02:26', '2020-09-16 04:02:26'),
(53, 56, 'paypal', 'success', '25.00', 'Guthabenaufladung mit Paypal', '4UL25020VJ299580J', '2020-09-16 08:29:41', '2020-09-16 08:29:41'),
(54, 56, 'paypal', 'success', '1.00', 'Guthabenaufladung mit Paypal', '9WL53111UU368494E', '2020-09-16 08:50:08', '2020-09-16 08:50:08'),
(55, 56, 'paypal', 'success', '5.00', 'Guthabenaufladung mit Paypal', '77562371EH171554L', '2020-09-16 09:22:26', '2020-09-16 09:22:26'),
(56, 56, 'paypal', 'success', '9.00', 'Guthabenaufladung mit Paypal', '5YD020702G695304X', '2020-09-16 09:43:50', '2020-09-16 09:43:50'),
(57, 56, 'paypal', 'success', '25.00', 'Guthabenaufladung mit Paypal', '4UL25020VJ299580J', '2020-09-16 19:52:31', '2020-09-16 19:52:31'),
(58, 56, 'paypal', 'success', '1.00', 'Guthabenaufladung mit Paypal', '9WL53111UU368494E', '2020-09-16 20:12:53', '2020-09-16 20:12:53'),
(59, 56, 'paypal', 'success', '5.00', 'Guthabenaufladung mit Paypal', '77562371EH171554L', '2020-09-16 20:45:19', '2020-09-16 20:45:19'),
(60, 56, 'paypal', 'success', '9.00', 'Guthabenaufladung mit Paypal', '5YD020702G695304X', '2020-09-16 21:06:37', '2020-09-16 21:06:37'),
(61, 15, '', 'pending', '1.00', 'Guthabenaufladung mit ', 'tr_g5wgnM4Jx7', '2020-09-17 14:12:54', '2020-09-17 14:12:54'),
(62, 15, '', 'pending', '1.00', 'Guthabenaufladung mit ', 'tr_fb8DdCqJWE', '2020-09-17 14:15:04', '2020-09-17 14:15:04'),
(63, 56, '', 'pending', '1.00', 'Guthabenaufladung mit ', 'tr_N86w4fa8Nq', '2020-09-17 16:31:38', '2020-09-17 16:31:38'),
(64, 56, '', 'pending', '1.00', 'Guthabenaufladung mit ', 'tr_t85TVRDTDj', '2020-09-17 16:36:54', '2020-09-17 16:36:54'),
(65, 56, '', 'pending', '30.00', 'Guthabenaufladung mit ', 'tr_T869gDu63p', '2020-09-17 16:37:43', '2020-09-17 16:37:43'),
(66, 56, '', 'pending', '1.00', 'Guthabenaufladung mit ', 'tr_wNrHyBgMbp', '2020-09-18 06:11:23', '2020-09-18 06:11:23'),
(67, 23, '', 'pending', '1.00', 'Guthabenaufladung mit ', 'tr_f8yzPB4uBq', '2020-09-21 20:48:13', '2020-09-21 20:48:13'),
(68, 23, '', 'pending', '1.00', 'Guthabenaufladung mit ', 'tr_fsmaWVVTVP', '2020-09-21 20:49:08', '2020-09-21 20:49:08'),
(69, 23, '', 'pending', '1.00', 'Guthabenaufladung mit ', 'tr_WNqtDsF9gA', '2020-09-21 20:49:37', '2020-09-21 20:49:37'),
(70, 15, '', 'pending', '1.00', 'Guthabenaufladung mit ', 'tr_BU8SuTdNt3', '2020-09-21 21:08:52', '2020-09-21 21:08:52'),
(71, 18, '', 'pending', '4.00', 'Guthabenaufladung mit ', 'tr_tqgNj8GrN6', '2020-09-21 21:18:13', '2020-09-21 21:18:13'),
(72, 18, '', 'pending', '4.75', 'Guthabenaufladung mit ', 'tr_RE3cA2gfxQ', '2020-09-21 21:18:36', '2020-09-21 21:18:36'),
(73, 15, '', 'pending', '1.00', 'Guthabenaufladung mit ', 'tr_jxmBeGw6fV', '2020-09-22 16:34:06', '2020-09-22 16:34:06'),
(74, 15, '', 'pending', '1.00', 'Guthabenaufladung mit ', 'tr_wMRsNkVsGE', '2020-09-22 19:05:21', '2020-09-22 19:05:21'),
(75, 60, '', 'pending', '2.00', 'Guthabenaufladung mit ', 'tr_nEvU9j7Nbm', '2020-09-25 09:44:45', '2020-09-25 09:44:45'),
(76, 18, '', 'success', '4.75', 'Guthabenaufladung mit ', 'tr_EKUaNpz5mu', '2020-09-28 16:56:06', '2020-09-30 18:06:35'),
(77, 15, '', 'success', '2.00', 'Guthabenaufladung mit ', 'tr_jtkRN4C3hm', '2020-09-29 22:04:45', '2020-10-01 00:05:46'),
(78, 15, '', 'success', '6.00', 'Guthabenaufladung mit ', 'tr_xJ29DGVjSf', '2020-09-29 22:19:27', '2020-10-01 08:27:16'),
(79, 15, '', 'success', '1.00', 'Guthabenaufladung mit ', 'tr_7rypbz8DzU', '2020-09-30 14:35:40', '2020-09-30 14:37:15'),
(80, 49, '', 'pending', '1.00', 'Guthabenaufladung mit ', 'tr_afBFsGxAC9', '2020-10-02 16:16:29', '2020-10-02 16:16:29'),
(81, 20, '', 'success', '19.00', 'Guthabenaufladung mit ', 'tr_e4Aez35bEU', '2020-10-05 14:26:30', '2020-10-06 11:17:24'),
(82, 20, '', '', '19.00', 'Guthabenaufladung mit ', 'tr_fWenhAzsaD', '2020-10-06 17:18:22', '2020-10-06 19:19:03'),
(83, 80, '', 'success', '5.00', 'Guthabenaufladung mit ', 'tr_wh9NuhUEGB', '2020-10-07 16:38:18', '2020-10-07 16:38:49'),
(84, 82, '', 'pending', '500.00', 'Guthabenaufladung mit ', 'tr_gFvjjvGSWV', '2020-10-16 15:33:52', '2020-10-16 15:33:52'),
(85, 82, '', 'pending', '1.00', 'Guthabenaufladung mit ', 'tr_KgUjrW3jNR', '2020-10-16 15:35:43', '2020-10-16 15:35:43'),
(86, 40, '', '', '1.00', 'Guthabenaufladung mit ', 'tr_tB9FVuKdWw', '2020-10-18 02:00:11', '2020-10-18 04:01:03'),
(87, 83, '', 'success', '2.92', 'Guthabenaufladung mit ', 'tr_SBPctyyefq', '2020-10-18 20:44:06', '2020-10-18 20:45:47'),
(88, 83, 'paypal', 'success', '1.00', 'Guthabenaufladung mit Paypal', '6ET93030K7563614B', '2020-10-18 20:48:28', '2020-10-18 20:48:28'),
(89, 60, '', 'success', '2.00', 'Guthabenaufladung mit ', 'tr_eh83MP4FgC', '2020-10-20 06:47:27', '2020-10-20 06:47:39'),
(90, 86, '', 'pending', '1.00', 'Guthabenaufladung mit ', 'tr_PRG7rt3P5W', '2020-10-23 14:01:51', '2020-10-23 14:01:51'),
(91, 83, '', '', '1.00', 'Guthabenaufladung mit ', 'tr_HtWvA4Pstw', '2020-10-23 21:41:45', '2020-10-23 21:43:05'),
(92, 83, '', '', '1.00', 'Guthabenaufladung mit ', 'tr_5hzbvsGR5e', '2020-10-23 22:26:56', '2020-10-23 22:27:15'),
(93, 40, '', '', '1.00', 'Guthabenaufladung mit ', 'tr_dB3ACjfxEA', '2020-10-24 04:44:40', '2020-10-24 05:44:43'),
(94, 83, '', '', '1.00', 'Guthabenaufladung mit ', 'tr_gvGch4aFKz', '2020-10-25 15:57:25', '2020-10-25 15:57:35'),
(95, 83, '', 'pending', '1.00', 'Guthabenaufladung mit ', 'tr_nE2uHxDg4e', '2020-10-25 22:33:29', '2020-10-25 22:33:29'),
(96, 83, '', '', '6.00', 'Guthabenaufladung mit ', 'tr_FycrgNAbbS', '2020-10-26 19:40:02', '2020-10-26 19:56:04'),
(97, 83, '', '', '6.00', 'Guthabenaufladung mit ', 'tr_x8TvPeuDUg', '2020-10-26 19:40:03', '2020-10-26 19:40:20'),
(98, 83, '', 'success', '6.50', 'Guthabenaufladung mit ', 'tr_Q2Uuc3A6t3', '2020-10-26 19:40:31', '2020-10-26 19:43:56'),
(99, 96, 'paypal', 'success', '5.00', 'Guthabenaufladung mit Paypal', '71Y54065YC995110P', '2020-10-27 17:18:35', '2020-10-27 17:18:35'),
(100, 83, '', '', '1.00', 'Guthabenaufladung mit ', 'tr_DJ6UG7FaGB', '2020-10-27 19:36:13', '2020-10-27 20:08:00'),
(101, 103, 'Mollie', 'pending', '1.00', 'Guthabenaufladung mit mollie', 'tr_gAETnQRxsF', '2020-11-01 17:06:08', '2020-11-07 09:53:54'),
(102, 103, 'Mollie', '', '1.00', 'Guthabenaufladung mit mollie', 'tr_xF5VURP3ud', '2020-11-01 17:07:35', '2020-11-17 06:01:46'),
(103, 14, 'Mollie', '', '1.00', 'Guthabenaufladung mit mollie', 'tr_NMCKFf48Hm', '2020-11-01 22:03:51', '2020-11-07 09:54:31'),
(104, 15, 'Molie', '', '1.00', 'Guthabenaufladung mit mollie', 'tr_5py8G2KzAy', '2020-11-02 14:45:17', '2020-11-07 09:54:42'),
(105, 100, 'paypal', 'success', '25.00', 'Guthabenaufladung mit Paypal', '2C253351FL066951U', '2020-11-02 19:07:44', '2020-11-02 19:07:44'),
(106, 107, 'paypal', 'success', '20.00', 'Guthabenaufladung mit Paypal', '8UR5711438869894K', '2020-11-05 16:08:29', '2020-11-05 16:08:29'),
(107, 101, '', 'pending', '3.40', 'Guthabenaufladung mit ', 'tr_ASPs6PWkBB', '2020-11-06 23:39:43', '2020-11-06 23:39:43'),
(108, 101, '', 'success', '3.43', 'Guthabenaufladung mit ', 'tr_zfj85Q4KpU', '2020-11-06 23:39:57', '2020-11-06 23:40:05'),
(109, 15, '', 'success', '2.00', 'Guthabenaufladung mit ', 'tr_K77nms28qD', '2020-11-08 22:04:55', '2020-11-08 22:05:55'),
(110, 84, 'paypal', 'success', '42.00', 'Guthabenaufladung mit Paypal', '0R019551NB6514131', '2020-11-10 16:02:21', '2020-11-10 16:02:21'),
(111, 83, '', 'success', '2.50', 'Guthabenaufladung mit ', 'tr_mFFHgyrgW5', '2020-11-13 18:04:56', '2020-11-13 18:05:15'),
(112, 15, '', 'success', '2.00', 'Guthabenaufladung mit ', 'tr_fmRSygDSrn', '2020-11-14 12:22:51', '2020-11-14 12:23:53'),
(113, 15, '', 'success', '1.00', 'Guthabenaufladung mit ', 'tr_eNPQzNKe7R', '2020-11-15 21:36:45', '2020-11-15 21:37:56'),
(114, 60, '', 'success', '2.00', 'Guthabenaufladung mit ', 'tr_uz7RNK4u8E', '2020-11-21 12:04:13', '2020-11-21 12:04:30'),
(115, 114, 'paypal', 'success', '5.00', 'Guthabenaufladung mit Paypal', '2YD51311DR695535X', '2020-11-21 12:56:59', '2020-11-21 12:56:59'),
(116, 96, 'paypal', 'success', '10.00', 'Guthabenaufladung mit Paypal', '31E07414RW592415L', '2020-11-26 14:30:44', '2020-11-26 14:30:44'),
(117, 121, '', 'pending', '20.00', 'Guthabenaufladung mit ', 'tr_TqPCwH82kf', '2020-11-29 16:06:42', '2020-11-29 16:06:42'),
(118, 15, '', '', '2.00', 'Guthabenaufladung mit ', 'tr_jRexMGj6nr', '2020-11-29 21:57:45', '2020-11-29 21:58:02'),
(119, 121, '', 'success', '20.00', 'Guthabenaufladung mit ', 'tr_UHUvQh9KDB', '2020-11-30 16:31:29', '2020-11-30 16:32:41'),
(120, 121, '', 'success', '10.00', 'Guthabenaufladung mit ', 'tr_z5e7ebePT7', '2020-11-30 17:18:50', '2020-11-30 17:19:16'),
(121, 130, '', 'pending', '10.00', 'Guthabenaufladung mit ', 'tr_Qz6EaGCnh3', '2020-12-05 11:57:07', '2020-12-05 11:57:07'),
(122, 101, '', 'success', '20.00', 'Guthabenaufladung mit ', 'tr_mzzNDw6gWm', '2020-12-06 11:08:27', '2020-12-06 11:09:01');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `state` enum('pending','active','hv') NOT NULL,
  `role` enum('customer','support','p_support','techniker','content','admin') NOT NULL,
  `plesk_uid` varchar(255) DEFAULT NULL,
  `plesk_password` varchar(255) DEFAULT NULL,
  `session_token` varchar(255) DEFAULT NULL,
  `verify_code` varchar(255) DEFAULT NULL,
  `user_addr` varchar(255) DEFAULT NULL,
  `support_pin` varchar(255) DEFAULT NULL,
  `amount` decimal(12,2) NOT NULL,
  `affiliate_id` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `login_notify` int(11) NOT NULL DEFAULT 1,
  `transaction_notify` int(11) NOT NULL DEFAULT 1,
  `product_notify` int(11) NOT NULL DEFAULT 1,
  `support_notify` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `lastname`, `email`, `password`, `state`, `role`, `plesk_uid`, `plesk_password`, `session_token`, `verify_code`, `user_addr`, `support_pin`, `amount`, `affiliate_id`, `street`, `postcode`, `city`, `country`, `notes`, `login_notify`, `transaction_notify`, `product_notify`, `support_notify`, `created_at`, `updated_at`) VALUES
(14, 'NicoB', 'Nico', 'Bary', 'nb@nico-bary.de', '$2y$10$9VURcVXr9MlrCzMwBmyAmOeh3D7RhQUnVoRQvEfI.sWauRb93knn2', 'active', 'admin', NULL, NULL, 'KUZlStcabrEk6PXYfotCSUq7hxpfyI', NULL, NULL, '8977-2928-5658', '0.00', 'ceo', 'Schleiden, 58', '52525', 'Heinsberg', 'Deutschland', NULL, 1, 1, 1, 1, '2020-08-03 21:59:18', '2021-05-14 19:44:00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_transactions`
--

CREATE TABLE `user_transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `desc` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `user_transactions`
--

INSERT INTO `user_transactions` (`id`, `user_id`, `amount`, `desc`, `created_at`, `updated_at`) VALUES
(49, 14, '0.00', 'Service Bestellung #4569', '2020-08-11 14:55:50', '2020-08-11 14:55:50'),
(50, 26, '10.00', 'webspace sponsoring', '2020-08-12 21:32:07', '2020-08-12 21:32:07'),
(51, 26, '-5.00', 'Webspace verlängerung', '2020-08-12 21:32:26', '2020-08-12 21:32:26'),
(52, 26, '-5.00', 'Webspace verlängerung', '2020-08-12 21:32:47', '2020-08-12 21:32:47'),
(53, 24, '-5.00', '1. Mahngebühr', '2020-08-14 17:07:58', '2020-08-14 17:07:58'),
(54, 24, '-10.00', '2. Mahngebühr', '2020-08-14 17:08:39', '2020-08-14 17:08:39'),
(55, 24, '-25.00', '3. Mahngebühr', '2020-08-14 17:09:03', '2020-08-14 17:09:03'),
(59, 24, '40.00', 'BERICHTIGUNG von Nico B.', '2020-08-14 18:17:15', '2020-08-14 18:17:15'),
(60, 24, '-9.00', 'server waren 25 €', '2020-08-14 18:23:11', '2020-08-14 18:23:11'),
(61, 24, '25.00', 'Bezahlung der Rechnung', '2020-08-15 14:03:07', '2020-08-15 14:03:07'),
(62, 14, '-100.70', 'Keine Beschreibung angegeben', '2020-08-16 14:18:56', '2020-08-16 14:18:56'),
(63, 14, '-30.00', 'Keine Beschreibung angegeben', '2020-08-16 14:19:22', '2020-08-16 14:19:22'),
(64, 14, '-3.60', 'Teaspeak Server Verlängerung', '2020-08-16 14:21:10', '2020-08-16 14:21:10'),
(65, 14, '-3.60', 'Teaspeak Server Verlängerung', '2020-08-16 14:21:13', '2020-08-16 14:21:13'),
(66, 14, '-3.60', 'Teaspeak Server Verlängerung', '2020-08-16 14:21:15', '2020-08-16 14:21:15'),
(67, 23, '-2.00', 'Service Bestellung #4574', '2020-08-16 18:31:16', '2020-08-16 18:31:16'),
(68, 36, '0.00', 'Service Bestellung #4577', '2020-08-20 14:14:30', '2020-08-20 14:14:30'),
(69, 29, '0.00', 'Service Bestellung #4578', '2020-08-20 23:38:27', '2020-08-20 23:38:27'),
(70, 38, '0.00', 'Service Bestellung #4579', '2020-08-21 02:07:40', '2020-08-21 02:07:40'),
(71, 38, '0.00', 'Service Bestellung #4580', '2020-08-21 02:08:15', '2020-08-21 02:08:15'),
(72, 38, '0.00', 'Storno #4580', '2020-08-21 05:58:01', '2020-08-21 05:58:01'),
(73, 15, '10.00', 'Keine Beschreibung angegeben', '2020-08-21 05:58:44', '2020-08-21 05:58:44'),
(74, 38, '0.00', 'Service Bestellung #4581', '2020-08-21 09:54:56', '2020-08-21 09:54:56'),
(75, 38, '0.00', 'Storno #4581', '2020-08-21 12:09:01', '2020-08-21 12:09:01'),
(76, 22, '-5.00', 'Service Bestellung #4583', '2020-08-23 16:54:27', '2020-08-23 16:54:27'),
(77, 29, '0.00', 'Service Bestellung #4584', '2020-08-23 18:26:45', '2020-08-23 18:26:45'),
(78, 29, '0.00', 'Storno #4584', '2020-08-23 20:08:55', '2020-08-23 20:08:55'),
(79, 38, '0.00', 'Service verlängerung', '2020-08-24 09:17:35', '2020-08-24 09:17:35'),
(80, 38, '0.00', 'Service verlängerung', '2020-08-24 09:17:44', '2020-08-24 09:17:44'),
(81, 38, '0.00', 'Service verlängerung', '2020-08-24 09:17:54', '2020-08-24 09:17:54'),
(82, 38, '0.00', 'Service verlängerung', '2020-08-24 09:18:01', '2020-08-24 09:18:01'),
(83, 38, '0.00', 'Service verlängerung', '2020-08-24 09:18:08', '2020-08-24 09:18:08'),
(84, 38, '0.00', 'Service verlängerung', '2020-08-24 09:18:14', '2020-08-24 09:18:14'),
(85, 42, '0.00', 'Service Bestellung #4585', '2020-09-02 22:46:10', '2020-09-02 22:46:10'),
(86, 14, '1.00', 'Gutschein 7RBW-U0QH-VBGU', '2020-09-03 19:32:58', '2020-09-03 19:32:58'),
(87, 15, '1.00', 'Gutschein test1', '2020-09-03 19:54:06', '2020-09-03 19:54:06'),
(88, 14, '1.00', 'Gutschein test1', '2020-09-03 20:15:57', '2020-09-03 20:15:57'),
(89, 20, '5.00', 'Keine Beschreibung angegeben', '2020-09-03 20:37:27', '2020-09-03 20:37:27'),
(90, 14, '0.00', 'Service Bestellung #4586', '2020-09-03 22:05:56', '2020-09-03 22:05:56'),
(91, 14, '0.00', 'Service Bestellung #4587', '2020-09-03 22:09:28', '2020-09-03 22:09:28'),
(92, 14, '0.00', 'Service Bestellung #4588', '2020-09-03 22:25:18', '2020-09-03 22:25:18'),
(93, 15, '-1.60', 'Teamspeak Server Bestellung', '2020-09-06 14:18:35', '2020-09-06 14:18:35'),
(94, 14, '-1.20', 'Teaspeak Server Bestellung', '2020-09-06 14:23:35', '2020-09-06 14:23:35'),
(95, 47, '0.00', 'Service Bestellung #4586', '2020-09-08 20:35:24', '2020-09-08 20:35:24'),
(96, 22, '-520.00', 'Rechnung 2020-017', '2020-09-08 21:04:25', '2020-09-08 21:04:25'),
(97, 18, '0.00', 'Service Bestellung #4587', '2020-09-10 17:01:06', '2020-09-10 17:01:06'),
(98, 18, '0.00', 'Storno #4587', '2020-09-10 17:01:34', '2020-09-10 17:01:34'),
(99, 18, '0.00', 'Service Bestellung #4588', '2020-09-10 17:10:48', '2020-09-10 17:10:48'),
(100, 48, '10.00', 'Gutschein Mitarbeiter', '2020-09-10 17:36:33', '2020-09-10 17:36:33'),
(101, 48, '-0.50', 'Webspace Kauf', '2020-09-10 17:37:02', '2020-09-10 17:37:02'),
(102, 48, '-9.50', 'Keine Beschreibung angegeben', '2020-09-11 19:45:39', '2020-09-11 19:45:39'),
(103, 14, '0.01', 'Gutschein Zed', '2020-09-11 20:21:52', '2020-09-11 20:21:52'),
(104, 50, '0.00', 'Service Bestellung #4589', '2020-09-12 11:18:57', '2020-09-12 11:18:57'),
(105, 45, '0.80', 'Guthaben aufladung u 2€ via paypal', '2020-09-13 14:36:34', '2020-09-13 14:36:34'),
(106, 45, '-0.80', 'Teamspeak Server Bestellung', '2020-09-13 14:39:29', '2020-09-13 14:39:29'),
(107, 15, '0.00', 'Service Bestellung #4590', '2020-09-13 19:50:14', '2020-09-13 19:50:14'),
(108, 15, '0.00', 'Storno #4590', '2020-09-13 19:52:06', '2020-09-13 19:52:06'),
(109, 52, '10.00', 'Keine Beschreibung angegeben', '2020-09-13 22:37:36', '2020-09-13 22:37:36'),
(110, 52, '-10.00', 'Keine Beschreibung angegeben', '2020-09-13 22:38:20', '2020-09-13 22:38:20'),
(111, 52, '2.00', 'Gutschein OSSF-6DCA-5SCL', '2020-09-13 22:41:04', '2020-09-13 22:41:04'),
(112, 52, '-2.00', 'Service Bestellung #4591', '2020-09-13 22:41:59', '2020-09-13 22:41:59'),
(113, 52, '2.00', 'Storno #4591', '2020-09-13 22:42:25', '2020-09-13 22:42:25'),
(114, 49, '0.00', 'Service Bestellung #4592', '2020-09-14 14:56:18', '2020-09-14 14:56:18'),
(115, 49, '0.00', 'Service Bestellung #4593', '2020-09-14 15:17:44', '2020-09-14 15:17:44'),
(116, 49, '0.00', 'Service Bestellung #4594', '2020-09-14 15:19:26', '2020-09-14 15:19:26'),
(122, 53, '0.00', 'Service Bestellung #4595', '2020-09-14 19:25:12', '2020-09-14 19:25:12'),
(123, 54, '0.00', 'Service Bestellung #4596', '2020-09-14 20:30:49', '2020-09-14 20:30:49'),
(125, 49, '-1000.00', 'zu Test Zwegen', '2020-09-15 14:58:51', '2020-09-15 14:58:51'),
(126, 56, '-20.00', 'Service Bestellung #4597', '2020-09-15 16:57:18', '2020-09-15 16:57:18'),
(127, 56, '-10.00', 'Service Bestellung #4598', '2020-09-15 16:58:31', '2020-09-15 16:58:31'),
(128, 56, '-4.00', 'Teamspeak Server Bestellung', '2020-09-15 17:04:09', '2020-09-15 17:04:09'),
(129, 56, '-2.00', 'Service Bestellung #4599', '2020-09-15 17:27:05', '2020-09-15 17:27:05'),
(130, 14, '-15.00', ' wegen sonderzahlung (Paypal minus)', '2020-09-15 17:27:22', '2020-09-15 17:27:22'),
(131, 56, '-10.00', 'Service Bestellung #4600', '2020-09-15 17:31:37', '2020-09-15 17:31:37'),
(132, 56, '-11.20', 'Teamspeak Server Bestellung', '2020-09-15 17:57:41', '2020-09-15 17:57:41'),
(133, 56, '10.00', 'Storno #4600', '2020-09-15 18:09:21', '2020-09-15 18:09:21'),
(134, 56, '5.88', 'Teamspeak Server Downgrade', '2020-09-15 18:12:54', '2020-09-15 18:12:54'),
(135, 56, '-130.68', 'Keine Beschreibung angegeben', '2020-09-15 18:22:01', '2020-09-15 18:22:01'),
(136, 56, '-130.68', 'Keine Beschreibung angegeben', '2020-09-15 18:22:06', '2020-09-15 18:22:06'),
(137, 56, '130.68', 'Keine Beschreibung angegeben', '2020-09-15 18:22:27', '2020-09-15 18:22:27'),
(138, 56, '130.68', 'Keine Beschreibung angegeben', '2020-09-15 18:22:38', '2020-09-15 18:22:38'),
(139, 56, '-130.68', 'kak ding', '2020-09-15 18:22:57', '2020-09-15 18:22:57'),
(140, 14, '-15.00', 'bug', '2020-09-15 18:25:06', '2020-09-15 18:25:06'),
(141, 56, '-30.00', 'panel bug', '2020-09-15 18:36:17', '2020-09-15 18:36:17'),
(142, 56, '-40.00', 'bug', '2020-09-15 20:01:47', '2020-09-15 20:01:47'),
(143, 56, '-45.00', 'panel bug', '2020-09-15 20:40:10', '2020-09-15 20:40:10'),
(144, 56, '-5.00', 'panel bug', '2020-09-15 21:00:20', '2020-09-15 21:00:20'),
(145, 56, '-59.00', 'panel bug', '2020-09-15 22:17:26', '2020-09-15 22:17:26'),
(146, 56, '-25.00', 'panel bug', '2020-09-15 22:28:48', '2020-09-15 22:28:48'),
(147, 56, '-104.00', 'Panel. Bug', '2020-09-16 07:40:56', '2020-09-16 07:40:56'),
(148, 56, '-40.00', 'Keine Beschreibung angegeben', '2020-09-16 16:10:22', '2020-09-16 16:10:22'),
(149, 58, '0.50', 'webspace sponsoring', '2020-09-16 19:27:20', '2020-09-16 19:27:20'),
(150, 58, '-0.50', 'Webspace Kauf', '2020-09-16 19:27:35', '2020-09-16 19:27:35'),
(151, 56, '-31.00', 'Panel bug', '2020-09-16 20:54:38', '2020-09-16 20:54:38'),
(152, 56, '-31.00', 'Panel bug', '2020-09-16 20:59:03', '2020-09-16 20:59:03'),
(153, 56, '31.00', 'panel bug', '2020-09-16 20:59:17', '2020-09-16 20:59:17'),
(154, 56, '31.00', 'panel bug', '2020-09-16 20:59:17', '2020-09-16 20:59:17'),
(155, 56, '31.00', 'panel bug', '2020-09-16 20:59:24', '2020-09-16 20:59:24'),
(156, 56, '-62.00', 'Panel bug', '2020-09-16 20:59:43', '2020-09-16 20:59:43'),
(157, 56, '-9.00', 'panel bug', '2020-09-16 22:05:11', '2020-09-16 22:05:11'),
(158, 49, '0.00', 'Service Bestellung #4601', '2020-09-18 09:23:20', '2020-09-18 09:23:20'),
(159, 56, '1.44', 'Teamspeak Server Downgrade', '2020-09-18 16:52:54', '2020-09-18 16:52:54'),
(160, 56, '4.32', 'Teamspeak Server Downgrade', '2020-09-18 16:53:31', '2020-09-18 16:53:31'),
(161, 56, '-1.80', 'Teaspeak Server Bestellung', '2020-09-18 16:54:23', '2020-09-18 16:54:23'),
(162, 56, '1.51', 'Teaspeak Server Downgrade', '2020-09-18 16:55:25', '2020-09-18 16:55:25'),
(163, 56, '1.87', 'Teamspeak Server Downgrade', '2020-09-18 16:55:58', '2020-09-18 16:55:58'),
(164, 56, '-2.50', 'Teamspeak Server Upgrade', '2020-09-18 17:44:36', '2020-09-18 17:44:36'),
(165, 49, '0.00', 'Storno #4601', '2020-09-18 21:09:16', '2020-09-18 21:09:16'),
(166, 60, '0.00', 'Service Bestellung #4602', '2020-09-19 16:27:52', '2020-09-19 16:27:52'),
(167, 49, '0.00', 'Service Bestellung #4603', '2020-09-19 16:45:20', '2020-09-19 16:45:20'),
(168, 61, '0.00', 'Service Bestellung #4604', '2020-09-20 15:02:28', '2020-09-20 15:02:28'),
(169, 61, '0.00', 'Service Bestellung #4605', '2020-09-20 15:02:48', '2020-09-20 15:02:48'),
(170, 61, '0.00', 'Storno #4604', '2020-09-20 15:25:31', '2020-09-20 15:25:31'),
(171, 61, '0.00', 'Storno #4605', '2020-09-20 15:25:34', '2020-09-20 15:25:34'),
(172, 64, '0.00', 'Spende an scriptalert(test);/scriptLetsCupCake', '2020-09-20 18:16:15', '2020-09-20 18:16:15'),
(173, 63, '-1.00', 'Spende von sanofo9578@a6mail.net Nachricht: Moin ', '2020-09-20 18:16:15', '2020-09-20 18:16:15'),
(174, 64, '0.00', 'Spende an scriptalert(test);/scriptLetsCupCake', '2020-09-20 18:16:39', '2020-09-20 18:16:39'),
(175, 63, '-500.00', 'Spende von sanofo9578@a6mail.net Nachricht: Moin Meister', '2020-09-20 18:16:39', '2020-09-20 18:16:39'),
(176, 64, '0.00', 'Spende an scriptalert(test);/scriptLetsCupCake', '2020-09-20 18:16:49', '2020-09-20 18:16:49'),
(177, 63, '-5000000000.00', 'Spende von sanofo9578@a6mail.net Nachricht: adadada', '2020-09-20 18:16:49', '2020-09-20 18:16:49'),
(178, 64, '0.00', 'Spende an scriptalert(test);/scriptLetsCupCake', '2020-09-20 18:17:32', '2020-09-20 18:17:32'),
(179, 63, '-9999999999.99', 'Spende von sanofo9578@a6mail.net Nachricht: moin', '2020-09-20 18:17:32', '2020-09-20 18:17:32'),
(180, 64, '-120.00', 'Teaspeak Server Bestellung', '2020-09-20 18:18:08', '2020-09-20 18:18:08'),
(181, 64, '-160.00', 'Teamspeak Server Bestellung', '2020-09-20 18:18:52', '2020-09-20 18:18:52'),
(182, 64, '-10.00', 'Service Bestellung #4606', '2020-09-20 18:19:41', '2020-09-20 18:19:41'),
(183, 64, '0.00', 'Spende an scriptalert(test);/scriptLetsCupCake', '2020-09-20 18:23:12', '2020-09-20 18:23:12'),
(184, 63, '-9999999999.99', 'Spende von sanofo9578@a6mail.net Nachricht: 1231231231231231', '2020-09-20 18:23:12', '2020-09-20 18:23:12'),
(185, 63, '0.00', 'Spende an sanofo9578@a6mail.net', '2020-09-20 18:23:44', '2020-09-20 18:23:44'),
(186, 64, '-9999999999.99', 'Spende von scriptalert(test);/scriptLetsCupCake Nachricht: fewfwe', '2020-09-20 18:23:44', '2020-09-20 18:23:44'),
(187, 63, '-50.00', 'Service Bestellung #4607', '2020-09-20 18:24:33', '2020-09-20 18:24:33'),
(188, 64, '0.00', 'Spende an scriptalert(test);/scriptLetsCupCake', '2020-09-20 18:24:35', '2020-09-20 18:24:35'),
(189, 63, '-999.00', 'Spende von sanofo9578@a6mail.net Nachricht: test', '2020-09-20 18:24:35', '2020-09-20 18:24:35'),
(190, 63, '-6.99', 'Service Bestellung #4608', '2020-09-20 18:24:43', '2020-09-20 18:24:43'),
(191, 63, '-150.00', 'Service Bestellung #4609', '2020-09-20 18:24:54', '2020-09-20 18:24:54'),
(192, 63, '-479.52', 'Teamspeak Server Bestellung', '2020-09-20 18:25:20', '2020-09-20 18:25:20'),
(193, 64, '0.00', 'Spende an scriptalert(test);/scriptLetsCupCake', '2020-09-20 18:25:49', '2020-09-20 18:25:49'),
(194, 63, '-9999999999.99', 'Spende von sanofo9578@a6mail.net Nachricht: Penis', '2020-09-20 18:25:49', '2020-09-20 18:25:49'),
(195, 64, '0.00', 'Spende an nicob', '2020-09-20 18:26:39', '2020-09-20 18:26:39'),
(196, 14, '-10000000.00', 'Spende von sanofo9578@a6mail.net Nachricht: test', '2020-09-20 18:26:39', '2020-09-20 18:26:39'),
(197, 63, '0.00', 'Spende an nicob', '2020-09-20 18:27:10', '2020-09-20 18:27:10'),
(198, 14, '-9999999999.99', 'Spende von scriptalert(test);/scriptLetsCupCake Nachricht: geg', '2020-09-20 18:27:10', '2020-09-20 18:27:10'),
(199, 64, '-480.00', 'Teamspeak Server Bestellung', '2020-09-20 18:27:27', '2020-09-20 18:27:27'),
(200, 63, '-479.52', 'Teamspeak Server Bestellung', '2020-09-20 18:28:41', '2020-09-20 18:28:41'),
(201, 63, '-479.52', 'Teamspeak Server Bestellung', '2020-09-20 18:32:02', '2020-09-20 18:32:02'),
(202, 63, '-479.52', 'Teamspeak Server Bestellung', '2020-09-20 18:32:04', '2020-09-20 18:32:04'),
(203, 63, '-479.52', 'Teamspeak Server Bestellung', '2020-09-20 18:32:05', '2020-09-20 18:32:05'),
(204, 63, '-479.52', 'Teamspeak Server Bestellung', '2020-09-20 18:32:06', '2020-09-20 18:32:06'),
(205, 63, '-479.52', 'Teamspeak Server Bestellung', '2020-09-20 18:32:07', '2020-09-20 18:32:07'),
(206, 63, '-479.52', 'Teamspeak Server Bestellung', '2020-09-20 18:32:08', '2020-09-20 18:32:08'),
(207, 63, '-479.52', 'Teamspeak Server Bestellung', '2020-09-20 18:32:09', '2020-09-20 18:32:09'),
(208, 64, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:32:58', '2020-09-20 18:32:58'),
(209, 64, '-120.00', 'Teaspeak Server Bestellung', '2020-09-20 18:33:07', '2020-09-20 18:33:07'),
(210, 63, '-479.52', 'Teamspeak Server Bestellung', '2020-09-20 18:36:43', '2020-09-20 18:36:43'),
(211, 63, '-479.52', 'Teamspeak Server Bestellung', '2020-09-20 18:36:44', '2020-09-20 18:36:44'),
(212, 63, '-479.52', 'Teamspeak Server Bestellung', '2020-09-20 18:36:44', '2020-09-20 18:36:44'),
(213, 63, '-479.52', 'Teamspeak Server Bestellung', '2020-09-20 18:36:44', '2020-09-20 18:36:44'),
(214, 63, '-479.52', 'Teamspeak Server Bestellung', '2020-09-20 18:36:45', '2020-09-20 18:36:45'),
(215, 63, '-479.52', 'Teamspeak Server Bestellung', '2020-09-20 18:36:45', '2020-09-20 18:36:45'),
(216, 63, '-479.52', 'Teamspeak Server Bestellung', '2020-09-20 18:36:46', '2020-09-20 18:36:46'),
(217, 63, '-479.52', 'Teamspeak Server Bestellung', '2020-09-20 18:36:46', '2020-09-20 18:36:46'),
(218, 63, '-479.52', 'Teamspeak Server Bestellung', '2020-09-20 18:36:47', '2020-09-20 18:36:47'),
(219, 63, '-479.52', 'Teamspeak Server Bestellung', '2020-09-20 18:36:47', '2020-09-20 18:36:47'),
(220, 63, '-479.52', 'Teamspeak Server Bestellung', '2020-09-20 18:36:48', '2020-09-20 18:36:48'),
(221, 63, '-479.52', 'Teamspeak Server Bestellung', '2020-09-20 18:36:48', '2020-09-20 18:36:48'),
(222, 63, '-479.52', 'Teamspeak Server Bestellung', '2020-09-20 18:36:48', '2020-09-20 18:36:48'),
(223, 65, '0.00', 'Spende an nicob', '2020-09-20 18:37:50', '2020-09-20 18:37:50'),
(224, 14, '-9999999999.99', 'Spende von sistibir@yevme.com Nachricht: Geld ist meins', '2020-09-20 18:37:50', '2020-09-20 18:37:50'),
(225, 64, '0.00', 'Spende an nicob', '2020-09-20 18:41:43', '2020-09-20 18:41:43'),
(226, 14, '-100.00', 'Spende von sanofo9578@a6mail.net Nachricht: test', '2020-09-20 18:41:43', '2020-09-20 18:41:43'),
(227, 64, '-120.00', 'Teaspeak Server Bestellung', '2020-09-20 18:43:38', '2020-09-20 18:43:38'),
(228, 64, '-120.00', 'Teaspeak Server Bestellung', '2020-09-20 18:43:39', '2020-09-20 18:43:39'),
(229, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:43:46', '2020-09-20 18:43:46'),
(230, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:43:47', '2020-09-20 18:43:47'),
(231, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:43:48', '2020-09-20 18:43:48'),
(232, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:43:49', '2020-09-20 18:43:49'),
(233, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:43:51', '2020-09-20 18:43:51'),
(234, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:43:52', '2020-09-20 18:43:52'),
(235, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:43:53', '2020-09-20 18:43:53'),
(236, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:43:54', '2020-09-20 18:43:54'),
(237, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:43:55', '2020-09-20 18:43:55'),
(238, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:43:56', '2020-09-20 18:43:56'),
(239, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:43:58', '2020-09-20 18:43:58'),
(240, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:43:59', '2020-09-20 18:43:59'),
(241, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:00', '2020-09-20 18:44:00'),
(242, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:01', '2020-09-20 18:44:01'),
(243, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:02', '2020-09-20 18:44:02'),
(244, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:03', '2020-09-20 18:44:03'),
(245, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:04', '2020-09-20 18:44:04'),
(246, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:05', '2020-09-20 18:44:05'),
(247, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:06', '2020-09-20 18:44:06'),
(248, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:07', '2020-09-20 18:44:07'),
(249, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:08', '2020-09-20 18:44:08'),
(250, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:09', '2020-09-20 18:44:09'),
(251, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:10', '2020-09-20 18:44:10'),
(252, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:11', '2020-09-20 18:44:11'),
(253, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:13', '2020-09-20 18:44:13'),
(254, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:14', '2020-09-20 18:44:14'),
(255, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:15', '2020-09-20 18:44:15'),
(256, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:16', '2020-09-20 18:44:16'),
(257, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:17', '2020-09-20 18:44:17'),
(258, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:19', '2020-09-20 18:44:19'),
(259, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:21', '2020-09-20 18:44:21'),
(260, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:22', '2020-09-20 18:44:22'),
(261, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:23', '2020-09-20 18:44:23'),
(262, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:24', '2020-09-20 18:44:24'),
(263, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:25', '2020-09-20 18:44:25'),
(264, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:26', '2020-09-20 18:44:26'),
(265, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:27', '2020-09-20 18:44:27'),
(266, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:28', '2020-09-20 18:44:28'),
(267, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:29', '2020-09-20 18:44:29'),
(268, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:30', '2020-09-20 18:44:30'),
(269, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:31', '2020-09-20 18:44:31'),
(270, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:32', '2020-09-20 18:44:32'),
(271, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:34', '2020-09-20 18:44:34'),
(272, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:35', '2020-09-20 18:44:35'),
(273, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:36', '2020-09-20 18:44:36'),
(274, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:38', '2020-09-20 18:44:38'),
(275, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:39', '2020-09-20 18:44:39'),
(276, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:40', '2020-09-20 18:44:40'),
(277, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:41', '2020-09-20 18:44:41'),
(278, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:42', '2020-09-20 18:44:42'),
(279, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:44', '2020-09-20 18:44:44'),
(280, 64, '-9999990000.00', 'Spende an scriptalert(test);/scriptLetsCupCake', '2020-09-20 18:44:45', '2020-09-20 18:44:45'),
(281, 63, '9999990000.00', 'Spende von sanofo9578@a6mail.net Nachricht: adadad', '2020-09-20 18:44:45', '2020-09-20 18:44:45'),
(282, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:45', '2020-09-20 18:44:45'),
(283, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:47', '2020-09-20 18:44:47'),
(284, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:48', '2020-09-20 18:44:48'),
(285, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:49', '2020-09-20 18:44:49'),
(286, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:50', '2020-09-20 18:44:50'),
(287, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:51', '2020-09-20 18:44:51'),
(288, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:52', '2020-09-20 18:44:52'),
(289, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:53', '2020-09-20 18:44:53'),
(290, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:54', '2020-09-20 18:44:54'),
(291, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:55', '2020-09-20 18:44:55'),
(292, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:56', '2020-09-20 18:44:56'),
(293, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:57', '2020-09-20 18:44:57'),
(294, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:44:59', '2020-09-20 18:44:59'),
(295, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:45:00', '2020-09-20 18:45:00'),
(296, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:45:02', '2020-09-20 18:45:02'),
(297, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:45:03', '2020-09-20 18:45:03'),
(298, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:45:04', '2020-09-20 18:45:04'),
(299, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:45:05', '2020-09-20 18:45:05'),
(300, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:45:06', '2020-09-20 18:45:06'),
(301, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:45:08', '2020-09-20 18:45:08'),
(302, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:45:09', '2020-09-20 18:45:09'),
(303, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:45:10', '2020-09-20 18:45:10'),
(304, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:45:11', '2020-09-20 18:45:11'),
(305, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:45:12', '2020-09-20 18:45:12'),
(306, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:45:14', '2020-09-20 18:45:14'),
(307, 64, '0.00', 'Spende an nicob', '2020-09-20 18:45:15', '2020-09-20 18:45:15'),
(308, 14, '-1000.00', 'Spende von sanofo9578@a6mail.net Nachricht: Tja', '2020-09-20 18:45:15', '2020-09-20 18:45:15'),
(309, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:45:15', '2020-09-20 18:45:15'),
(310, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:45:16', '2020-09-20 18:45:16'),
(311, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:45:17', '2020-09-20 18:45:17'),
(312, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:45:18', '2020-09-20 18:45:18'),
(313, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:45:20', '2020-09-20 18:45:20'),
(314, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:45:21', '2020-09-20 18:45:21'),
(315, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:45:22', '2020-09-20 18:45:22'),
(316, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:45:23', '2020-09-20 18:45:23'),
(317, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:45:24', '2020-09-20 18:45:24'),
(318, 63, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:45:26', '2020-09-20 18:45:26'),
(319, 65, '-9999999999.00', 'Spende an nicob', '2020-09-20 18:53:19', '2020-09-20 18:53:19'),
(320, 14, '9999999999.00', 'Spende von sistibir@yevme.com Nachricht: Bugcleaning', '2020-09-20 18:53:19', '2020-09-20 18:53:19'),
(321, 65, '0.00', 'Spende an nicob', '2020-09-20 18:53:51', '2020-09-20 18:53:51'),
(322, 14, '-9999999999.00', 'Spende von sistibir@yevme.com Nachricht: Bug', '2020-09-20 18:53:51', '2020-09-20 18:53:51'),
(323, 65, '-9999999999.00', 'Spende an nicob', '2020-09-20 18:54:22', '2020-09-20 18:54:22'),
(324, 14, '9999999999.00', 'Spende von sistibir@yevme.com Nachricht: Bug', '2020-09-20 18:54:22', '2020-09-20 18:54:22'),
(325, 66, '0.00', 'Spende an nicob', '2020-09-20 18:57:12', '2020-09-20 18:57:12'),
(326, 14, '-9999999999.00', 'Spende von CupCake Nachricht: ff', '2020-09-20 18:57:12', '2020-09-20 18:57:12'),
(327, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:13', '2020-09-20 18:57:13'),
(328, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:16', '2020-09-20 18:57:16'),
(329, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:17', '2020-09-20 18:57:17'),
(330, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:19', '2020-09-20 18:57:19'),
(331, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:21', '2020-09-20 18:57:21'),
(332, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:22', '2020-09-20 18:57:22'),
(333, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:23', '2020-09-20 18:57:23'),
(334, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:24', '2020-09-20 18:57:24'),
(335, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:26', '2020-09-20 18:57:26'),
(336, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:27', '2020-09-20 18:57:27'),
(337, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:28', '2020-09-20 18:57:28'),
(338, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:29', '2020-09-20 18:57:29'),
(339, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:31', '2020-09-20 18:57:31'),
(340, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:32', '2020-09-20 18:57:32'),
(341, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:33', '2020-09-20 18:57:33'),
(342, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:34', '2020-09-20 18:57:34'),
(343, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:36', '2020-09-20 18:57:36'),
(344, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:37', '2020-09-20 18:57:37'),
(345, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:38', '2020-09-20 18:57:38'),
(346, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:39', '2020-09-20 18:57:39'),
(347, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:41', '2020-09-20 18:57:41'),
(348, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:42', '2020-09-20 18:57:42'),
(349, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:43', '2020-09-20 18:57:43'),
(350, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:44', '2020-09-20 18:57:44'),
(351, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:46', '2020-09-20 18:57:46'),
(352, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:47', '2020-09-20 18:57:47'),
(353, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:48', '2020-09-20 18:57:48'),
(354, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:49', '2020-09-20 18:57:49'),
(355, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:51', '2020-09-20 18:57:51'),
(356, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:52', '2020-09-20 18:57:52'),
(357, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:53', '2020-09-20 18:57:53'),
(358, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:54', '2020-09-20 18:57:54'),
(359, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:56', '2020-09-20 18:57:56'),
(360, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:57', '2020-09-20 18:57:57'),
(361, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:58', '2020-09-20 18:57:58'),
(362, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:57:59', '2020-09-20 18:57:59'),
(363, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:01', '2020-09-20 18:58:01'),
(364, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:02', '2020-09-20 18:58:02'),
(365, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:03', '2020-09-20 18:58:03'),
(366, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:04', '2020-09-20 18:58:04'),
(367, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:06', '2020-09-20 18:58:06'),
(368, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:07', '2020-09-20 18:58:07'),
(369, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:08', '2020-09-20 18:58:08'),
(370, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:09', '2020-09-20 18:58:09'),
(371, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:11', '2020-09-20 18:58:11'),
(372, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:12', '2020-09-20 18:58:12'),
(373, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:13', '2020-09-20 18:58:13'),
(374, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:14', '2020-09-20 18:58:14'),
(375, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:16', '2020-09-20 18:58:16'),
(376, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:17', '2020-09-20 18:58:17'),
(377, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:18', '2020-09-20 18:58:18'),
(378, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:19', '2020-09-20 18:58:19'),
(379, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:21', '2020-09-20 18:58:21'),
(380, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:22', '2020-09-20 18:58:22'),
(381, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:23', '2020-09-20 18:58:23'),
(382, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:24', '2020-09-20 18:58:24'),
(383, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:26', '2020-09-20 18:58:26'),
(384, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:27', '2020-09-20 18:58:27'),
(385, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:28', '2020-09-20 18:58:28'),
(386, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:29', '2020-09-20 18:58:29'),
(387, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:31', '2020-09-20 18:58:31'),
(388, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:32', '2020-09-20 18:58:32'),
(389, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:33', '2020-09-20 18:58:33'),
(390, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:34', '2020-09-20 18:58:34'),
(391, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:36', '2020-09-20 18:58:36'),
(392, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:37', '2020-09-20 18:58:37'),
(393, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:38', '2020-09-20 18:58:38'),
(394, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:39', '2020-09-20 18:58:39'),
(395, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:41', '2020-09-20 18:58:41'),
(396, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:42', '2020-09-20 18:58:42'),
(397, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:43', '2020-09-20 18:58:43'),
(398, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:44', '2020-09-20 18:58:44'),
(399, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:46', '2020-09-20 18:58:46'),
(400, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:47', '2020-09-20 18:58:47'),
(401, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:48', '2020-09-20 18:58:48'),
(402, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:49', '2020-09-20 18:58:49'),
(403, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:51', '2020-09-20 18:58:51'),
(404, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:52', '2020-09-20 18:58:52'),
(405, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:53', '2020-09-20 18:58:53'),
(406, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:55', '2020-09-20 18:58:55'),
(407, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:56', '2020-09-20 18:58:56'),
(408, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:57', '2020-09-20 18:58:57'),
(409, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:58:59', '2020-09-20 18:58:59'),
(410, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:59:00', '2020-09-20 18:59:00'),
(411, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:59:01', '2020-09-20 18:59:01'),
(412, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:59:03', '2020-09-20 18:59:03'),
(413, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:59:04', '2020-09-20 18:59:04'),
(414, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:59:05', '2020-09-20 18:59:05'),
(415, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:59:07', '2020-09-20 18:59:07'),
(416, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:59:08', '2020-09-20 18:59:08'),
(417, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:59:09', '2020-09-20 18:59:09'),
(418, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:59:10', '2020-09-20 18:59:10'),
(419, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:59:11', '2020-09-20 18:59:11'),
(420, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:59:12', '2020-09-20 18:59:12'),
(421, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:59:13', '2020-09-20 18:59:13'),
(422, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:59:14', '2020-09-20 18:59:14'),
(423, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:59:15', '2020-09-20 18:59:15'),
(424, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:59:16', '2020-09-20 18:59:16'),
(425, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:59:17', '2020-09-20 18:59:17'),
(426, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:59:19', '2020-09-20 18:59:19'),
(427, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 18:59:22', '2020-09-20 18:59:22'),
(428, 66, '-20.00', 'Service Bestellung #4610', '2020-09-20 18:59:28', '2020-09-20 18:59:28'),
(429, 66, '-20.00', 'Service Bestellung #4611', '2020-09-20 18:59:46', '2020-09-20 18:59:46'),
(430, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:00:02', '2020-09-20 19:00:02'),
(431, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:00:05', '2020-09-20 19:00:05'),
(432, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:00:08', '2020-09-20 19:00:08'),
(433, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:00:11', '2020-09-20 19:00:11'),
(434, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:00:13', '2020-09-20 19:00:13'),
(435, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:00:16', '2020-09-20 19:00:16'),
(436, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:00:18', '2020-09-20 19:00:18'),
(437, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:00:20', '2020-09-20 19:00:20'),
(438, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:00:23', '2020-09-20 19:00:23'),
(439, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:00:26', '2020-09-20 19:00:26'),
(440, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:00:30', '2020-09-20 19:00:30'),
(441, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:00:33', '2020-09-20 19:00:33'),
(442, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:00:36', '2020-09-20 19:00:36'),
(443, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:00:38', '2020-09-20 19:00:38'),
(444, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:00:41', '2020-09-20 19:00:41'),
(445, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:00:44', '2020-09-20 19:00:44'),
(446, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:00:46', '2020-09-20 19:00:46'),
(447, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:00:49', '2020-09-20 19:00:49'),
(448, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:00:51', '2020-09-20 19:00:51'),
(449, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:00:54', '2020-09-20 19:00:54'),
(450, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:00:57', '2020-09-20 19:00:57'),
(451, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:01:00', '2020-09-20 19:01:00'),
(452, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:01:03', '2020-09-20 19:01:03'),
(453, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:01:06', '2020-09-20 19:01:06'),
(454, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:01:08', '2020-09-20 19:01:08'),
(455, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:01:10', '2020-09-20 19:01:10'),
(456, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:01:13', '2020-09-20 19:01:13'),
(457, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:01:16', '2020-09-20 19:01:16'),
(458, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:01:19', '2020-09-20 19:01:19'),
(459, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:01:22', '2020-09-20 19:01:22'),
(460, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:01:24', '2020-09-20 19:01:24'),
(461, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:01:27', '2020-09-20 19:01:27'),
(462, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:01:30', '2020-09-20 19:01:30'),
(463, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:01:33', '2020-09-20 19:01:33'),
(464, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:01:36', '2020-09-20 19:01:36'),
(465, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:01:39', '2020-09-20 19:01:39'),
(466, 66, '-480.00', 'Teamspeak Server Bestellung', '2020-09-20 19:01:39', '2020-09-20 19:01:39'),
(467, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:01:42', '2020-09-20 19:01:42'),
(468, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:01:44', '2020-09-20 19:01:44'),
(469, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:01:47', '2020-09-20 19:01:47'),
(470, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:01:50', '2020-09-20 19:01:50'),
(471, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:01:53', '2020-09-20 19:01:53'),
(472, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:01:56', '2020-09-20 19:01:56'),
(473, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:01:59', '2020-09-20 19:01:59'),
(474, 66, '-480.00', 'Teamspeak Server Bestellung', '2020-09-20 19:02:00', '2020-09-20 19:02:00'),
(475, 66, '-360.00', 'Teaspeak Server Bestellung', '2020-09-20 19:02:02', '2020-09-20 19:02:02'),
(476, 66, '-480.00', 'Teamspeak Server Bestellung', '2020-09-20 19:02:02', '2020-09-20 19:02:02'),
(477, 66, '-480.00', 'Teamspeak Server Bestellung', '2020-09-20 19:02:03', '2020-09-20 19:02:03'),
(478, 66, '-480.00', 'Teamspeak Server Bestellung', '2020-09-20 19:02:04', '2020-09-20 19:02:04'),
(479, 66, '-480.00', 'Teamspeak Server Bestellung', '2020-09-20 19:02:05', '2020-09-20 19:02:05'),
(480, 66, '-480.00', 'Teamspeak Server Bestellung', '2020-09-20 19:02:05', '2020-09-20 19:02:05'),
(481, 66, '-480.00', 'Teamspeak Server Bestellung', '2020-09-20 19:02:06', '2020-09-20 19:02:06'),
(482, 66, '-480.00', 'Teamspeak Server Bestellung', '2020-09-20 19:02:07', '2020-09-20 19:02:07'),
(483, 66, '-480.00', 'Teamspeak Server Bestellung', '2020-09-20 19:02:08', '2020-09-20 19:02:08'),
(484, 66, '-480.00', 'Teamspeak Server Bestellung', '2020-09-20 19:02:08', '2020-09-20 19:02:08'),
(485, 66, '-480.00', 'Teamspeak Server Bestellung', '2020-09-20 19:02:09', '2020-09-20 19:02:09'),
(486, 66, '-480.00', 'Teamspeak Server Bestellung', '2020-09-20 19:02:09', '2020-09-20 19:02:09'),
(487, 66, '-480.00', 'Teamspeak Server Bestellung', '2020-09-20 19:02:11', '2020-09-20 19:02:11'),
(488, 66, '-480.00', 'Teamspeak Server Bestellung', '2020-09-20 19:02:11', '2020-09-20 19:02:11'),
(489, 66, '-480.00', 'Teamspeak Server Bestellung', '2020-09-20 19:02:12', '2020-09-20 19:02:12'),
(490, 66, '-480.00', 'Teamspeak Server Bestellung', '2020-09-20 19:02:12', '2020-09-20 19:02:12'),
(491, 66, '-480.00', 'Teamspeak Server Bestellung', '2020-09-20 19:02:14', '2020-09-20 19:02:14'),
(492, 66, '-480.00', 'Teamspeak Server Bestellung', '2020-09-20 19:02:14', '2020-09-20 19:02:14'),
(493, 66, '-480.00', 'Teamspeak Server Bestellung', '2020-09-20 19:02:15', '2020-09-20 19:02:15'),
(494, 66, '-480.00', 'Teamspeak Server Bestellung', '2020-09-20 19:02:15', '2020-09-20 19:02:15'),
(495, 66, '-480.00', 'Teamspeak Server Bestellung', '2020-09-20 19:02:17', '2020-09-20 19:02:17'),
(496, 66, '-480.00', 'Teamspeak Server Bestellung', '2020-09-20 19:02:17', '2020-09-20 19:02:17'),
(497, 66, '-480.00', 'Teamspeak Server Bestellung', '2020-09-20 19:02:18', '2020-09-20 19:02:18'),
(498, 66, '-9999939599.00', 'Keine Beschreibung angegeben', '2020-09-20 19:02:34', '2020-09-20 19:02:34'),
(499, 64, '10.00', 'Storno #4606', '2020-09-20 19:12:47', '2020-09-20 19:12:47'),
(500, 63, '50.00', 'Storno #4607', '2020-09-20 19:13:09', '2020-09-20 19:13:09'),
(501, 63, '6.99', 'Storno #4608', '2020-09-20 19:13:16', '2020-09-20 19:13:16'),
(502, 63, '150.00', 'Storno #4609', '2020-09-20 19:13:29', '2020-09-20 19:13:29'),
(503, 66, '20.00', 'Storno #4610', '2020-09-20 19:13:36', '2020-09-20 19:13:36'),
(504, 66, '20.00', 'Storno #4611', '2020-09-20 19:13:41', '2020-09-20 19:13:41'),
(505, 14, '9999999999.99', 'Panel. Bug', '2020-09-20 19:27:54', '2020-09-20 19:27:54'),
(506, 69, '2.00', 'Gutschein LFO4-0Z2M-DZZW', '2020-09-21 16:33:11', '2020-09-21 16:33:11'),
(507, 69, '1.00', 'Gutschein FTFE-P91M-NDKS', '2020-09-21 16:33:16', '2020-09-21 16:33:16'),
(508, 71, '0.00', 'Service Bestellung #4612', '2020-09-21 19:46:28', '2020-09-21 19:46:28'),
(509, 18, '-3.40', 'Keine Beschreibung angegeben', '2020-09-21 21:15:31', '2020-09-21 21:15:31'),
(510, 18, '0.00', 'Keine Beschreibung angegeben', '2020-09-21 21:15:41', '2020-09-21 21:15:41'),
(511, 18, '-4.75', 'Keine Beschreibung angegeben', '2020-09-21 21:15:56', '2020-09-21 21:15:56'),
(512, 18, '-4.75', 'Keine Beschreibung angegeben', '2020-09-21 21:16:02', '2020-09-21 21:16:02'),
(513, 15, '-9.40', 'bug', '2020-09-22 19:31:58', '2020-09-22 19:31:58'),
(514, 15, '-5.80', 'Rechnung 2020-019', '2020-09-22 19:32:14', '2020-09-22 19:32:14'),
(515, 56, '-4.84', 'Ratenzahlung', '2020-09-23 16:23:54', '2020-09-23 16:23:54'),
(516, 56, '2.02', 'Teamspeak Server Downgrade', '2020-09-23 19:52:46', '2020-09-23 19:52:46'),
(517, 56, '-2.00', 'Service Bestellung #4613', '2020-09-23 19:53:15', '2020-09-23 19:53:15'),
(518, 56, '2.00', 'Storno #4613', '2020-09-23 20:34:54', '2020-09-23 20:34:54'),
(519, 56, '-2.02', 'Rechnung', '2020-09-23 20:35:24', '2020-09-23 20:35:24'),
(520, 56, '-47.89', 'Rechnung 16 by Domainhost24', '2020-09-23 20:37:48', '2020-09-23 20:37:48'),
(521, 60, '4.00', 'PaySafeCard', '2020-09-25 10:23:12', '2020-09-25 10:23:12'),
(522, 60, '-2.00', 'PaySafeCard Aufladung hat nur 2€ betragen', '2020-09-25 10:27:28', '2020-09-25 10:27:28'),
(523, 60, '-2.00', 'Service Bestellung #4614', '2020-09-25 10:36:53', '2020-09-25 10:36:53'),
(524, 71, '0.00', 'Service Bestellung #4615', '2020-09-26 11:19:59', '2020-09-26 11:19:59'),
(525, 18, '4.00', 'Überweisung', '2020-09-28 17:04:04', '2020-09-28 17:04:04'),
(526, 18, '0.75', 'KORRI', '2020-09-28 17:05:25', '2020-09-28 17:05:25'),
(527, 18, '-4.75', 'Fehler durch KD-18', '2020-09-28 17:26:02', '2020-09-28 17:26:02'),
(528, 35, '0.00', 'Service Bestellung #4616', '2020-09-28 19:58:46', '2020-09-28 19:58:46'),
(529, 15, '-5.80', 'Begleichung der Rechnung', '2020-09-29 15:13:49', '2020-09-29 15:13:49'),
(530, 18, '4.75', 'aufladung', '2020-09-29 16:10:38', '2020-09-29 16:10:38'),
(531, 15, '11.60', 'Keine Beschreibung angegeben', '2020-09-29 22:03:47', '2020-09-29 22:03:47'),
(532, 15, '2.00', 'Keine Beschreibung angegeben', '2020-09-29 22:08:03', '2020-09-29 22:08:03'),
(533, 15, '-2.00', 'Service Bestellung #4617', '2020-09-29 22:08:36', '2020-09-29 22:08:36'),
(534, 15, '6.00', 'Keine Beschreibung angegeben', '2020-09-29 22:23:51', '2020-09-29 22:23:51'),
(535, 15, '-6.00', 'Service verlängerung', '2020-09-29 22:24:04', '2020-09-29 22:24:04'),
(536, 45, '-5.00', 'Neu Installation Des TeamSpeeak3 Servers', '2020-10-02 13:51:26', '2020-10-02 13:51:26'),
(537, 20, '-5.00', 'Keine Beschreibung angegeben', '2020-10-03 23:21:15', '2020-10-03 23:21:15'),
(538, 20, '-13.12', 'RE0002', '2020-10-03 23:21:55', '2020-10-03 23:21:55'),
(539, 20, '-5.00', '1 Mahnung', '2020-10-04 11:23:43', '2020-10-04 11:23:43'),
(540, 20, '-10.00', '2 Mahngebürh', '2020-10-06 13:06:12', '2020-10-06 13:06:12'),
(541, 20, '-10.00', 'Fehler der Buchhaltung', '2020-10-06 20:56:55', '2020-10-06 20:56:55'),
(542, 20, '20.00', 'Fehler der Buchhaltung', '2020-10-06 20:57:10', '2020-10-06 20:57:10'),
(543, 80, '-5.00', 'Service Bestellung #4619', '2020-10-07 16:39:02', '2020-10-07 16:39:02'),
(544, 15, '-1.00', 'Teaspeak Server Bestellung', '2020-10-08 10:00:59', '2020-10-08 10:00:59'),
(545, 15, '-6.00', 'Teaspeak Server Bestellung', '2020-10-08 10:01:21', '2020-10-08 10:01:21'),
(546, 80, '5.00', 'Gutschreibung', '2020-10-09 13:32:45', '2020-10-09 13:32:45'),
(547, 18, '-4.75', 'KORRI', '2020-10-09 16:24:24', '2020-10-09 16:24:24'),
(548, 56, '47.89', 'Bezahlung der Rechnung ans Inkasso', '2020-10-10 09:36:07', '2020-10-10 09:36:07'),
(549, 81, '0.00', 'Service Bestellung #4620', '2020-10-12 17:27:48', '2020-10-12 17:27:48'),
(550, 14, '0.00', 'Service Bestellung #4622', '2020-10-12 21:49:19', '2020-10-12 21:49:19'),
(551, 14, '0.00', 'Storno #4622', '2020-10-12 21:49:48', '2020-10-12 21:49:48'),
(552, 82, '5.00', 'Gutschein MMD2-AG87-KG24', '2020-10-17 22:21:20', '2020-10-17 22:21:20'),
(553, 83, '0.00', 'Service Bestellung #4623', '2020-10-18 00:09:22', '2020-10-18 00:09:22'),
(554, 83, '5.00', 'Webspace Sponsoring', '2020-10-18 17:11:08', '2020-10-18 17:11:08'),
(555, 83, '-1.00', 'Webspace Kauf', '2020-10-18 17:11:55', '2020-10-18 17:11:55'),
(556, 83, '-3.00', 'Webspace verlängerung', '2020-10-18 17:12:20', '2020-10-18 17:12:20'),
(557, 83, '-1.00', 'Webspace verlängerung', '2020-10-18 17:12:31', '2020-10-18 17:12:31'),
(558, 83, '-3.69', 'RE0010', '2020-10-19 13:24:52', '2020-10-19 13:24:52'),
(559, 84, '10.00', 'KVM-10-Partnerschaft', '2020-10-19 21:58:44', '2020-10-19 21:58:44'),
(560, 84, '-10.00', 'Service Bestellung #4625', '2020-10-19 21:59:58', '2020-10-19 21:59:58'),
(561, 60, '-2.00', 'Service verlängerung', '2020-10-20 06:47:57', '2020-10-20 06:47:57'),
(562, 76, '0.00', 'Service Bestellung #4626', '2020-10-21 16:53:43', '2020-10-21 16:53:43'),
(563, 85, '0.00', 'Service Bestellung #4627', '2020-10-21 18:20:52', '2020-10-21 18:20:52'),
(564, 15, '-2.00', 'Service Bestellung #4628', '2020-10-22 13:04:56', '2020-10-22 13:04:56'),
(565, 82, '-0.50', 'Webspace Kauf', '2020-10-23 03:39:56', '2020-10-23 03:39:56'),
(566, 87, '5.00', 'Gutschein EW7T-MSMK-71KQ', '2020-10-23 22:05:47', '2020-10-23 22:05:47'),
(567, 87, '2.00', 'Gutschein KWFD-USSM-PQM5', '2020-10-23 22:05:56', '2020-10-23 22:05:56'),
(568, 87, '-6.72', 'Teamspeak Server Bestellung', '2020-10-23 22:09:55', '2020-10-23 22:09:55'),
(569, 87, '5.70', 'Teamspeak Server Downgrade', '2020-10-23 22:20:30', '2020-10-23 22:20:30'),
(570, 87, '-2.00', 'Service Bestellung #4629', '2020-10-23 22:20:59', '2020-10-23 22:20:59'),
(571, 88, '0.00', 'Service Bestellung #4630', '2020-10-23 22:24:52', '2020-10-23 22:24:52'),
(572, 88, '0.00', 'Service Bestellung #4631', '2020-10-23 22:25:15', '2020-10-23 22:25:15'),
(573, 88, '0.00', 'Storno #4631', '2020-10-23 22:27:37', '2020-10-23 22:27:37'),
(574, 49, '0.00', 'Service Bestellung #4632', '2020-10-24 16:05:52', '2020-10-24 16:05:52'),
(575, 49, '0.00', 'Storno #4632', '2020-10-24 16:09:34', '2020-10-24 16:09:34'),
(576, 82, '-0.50', 'Webspace Kauf', '2020-10-25 08:36:53', '2020-10-25 08:36:53'),
(577, 83, '-0.50', 'RE0018', '2020-10-25 22:03:31', '2020-10-25 22:03:31'),
(578, 20, '-13.12', 'RE0013', '2020-10-26 14:32:14', '2020-10-26 14:32:14'),
(579, 20, '-0.88', 'Keine Beschreibung angegeben', '2020-10-26 14:32:23', '2020-10-26 14:32:23'),
(580, 83, '-5.00', 'Webspace Kauf', '2020-10-26 19:59:07', '2020-10-26 19:59:07'),
(581, 83, '5.00', 'Gutschrift Web Space storniert', '2020-10-26 22:09:18', '2020-10-26 22:09:18'),
(582, 96, '-5.00', 'Service Bestellung #4635', '2020-10-27 17:18:51', '2020-10-27 17:18:51'),
(583, 22, '520.00', 'Storno', '2020-10-27 21:59:13', '2020-10-27 21:59:13'),
(584, 20, '-5.00', 'Mahngebühr', '2020-10-30 21:53:48', '2020-10-30 21:53:48'),
(585, 20, '-5.00', '2. Mahngebühr', '2020-10-30 22:06:09', '2020-10-30 22:06:09'),
(586, 20, '-2.40', 'Portokosten', '2020-10-30 22:06:29', '2020-10-30 22:06:29'),
(587, 100, '0.00', 'Service Bestellung #4636', '2020-10-31 10:28:18', '2020-10-31 10:28:18'),
(588, 87, '-3.00', 'Teaspeak Server Bestellung', '2020-10-31 14:54:25', '2020-10-31 14:54:25');
INSERT INTO `user_transactions` (`id`, `user_id`, `amount`, `desc`, `created_at`, `updated_at`) VALUES
(589, 20, '-5.00', '3 Mahngebühr', '2020-11-03 06:58:19', '2020-11-03 06:58:19'),
(590, 83, '1.00', 'Affiliate', '2020-11-03 16:56:52', '2020-11-03 16:56:52'),
(597, 107, '-20.00', 'Service Bestellung #4639', '2020-11-05 16:09:46', '2020-11-05 16:09:46'),
(598, 101, '-0.50', 'Webspace Kauf', '2020-11-06 23:42:14', '2020-11-06 23:42:14'),
(599, 20, '-10.00', 'Bearbeitungsgebühr', '2020-11-08 09:08:27', '2020-11-08 09:08:27'),
(600, 110, '0.00', 'Service Bestellung #4640', '2020-11-08 17:33:02', '2020-11-08 17:33:02'),
(601, 15, '-2.00', 'Service verlängerung', '2020-11-08 22:06:58', '2020-11-08 22:06:58'),
(602, 83, '-3.69', 'Service verlängerung', '2020-11-09 19:43:16', '2020-11-09 19:43:16'),
(603, 84, '-5.00', 'Service Bestellung #4641', '2020-11-10 16:05:03', '2020-11-10 16:05:03'),
(604, 84, '-37.00', 'RE0028', '2020-11-10 16:25:03', '2020-11-10 16:25:03'),
(605, 112, '0.00', 'Service Bestellung #4642', '2020-11-11 16:23:44', '2020-11-11 16:23:44'),
(606, 40, '0.00', 'Service Bestellung #4643', '2020-11-12 08:47:04', '2020-11-12 08:47:04'),
(607, 40, '0.00', 'Service Bestellung #4644', '2020-11-12 08:47:12', '2020-11-12 08:47:12'),
(608, 40, '0.00', 'Storno #4644', '2020-11-12 11:23:46', '2020-11-12 11:23:46'),
(609, 40, '0.00', 'Storno #4643', '2020-11-12 11:23:51', '2020-11-12 11:23:51'),
(610, 83, '1.00', 'botpanel', '2020-11-12 12:30:04', '2020-11-12 12:30:04'),
(611, 83, '-3.69', 'Service verlängerung', '2020-11-13 10:26:20', '2020-11-13 10:26:20'),
(612, 83, '-2.00', 'RE0029', '2020-11-13 20:01:58', '2020-11-13 20:01:58'),
(613, 83, '-0.50', 'RE0029', '2020-11-13 20:14:33', '2020-11-13 20:14:33'),
(614, 100, '-20.00', 'Service Bestellung #4645', '2020-11-15 17:25:43', '2020-11-15 17:25:43'),
(615, 15, '1.00', 'Guthabenaufladung mit Mollie', '2020-11-15 21:37:56', '2020-11-15 21:37:56'),
(616, 15, '-1.00', 'Teaspeak Server Bestellung', '2020-11-15 21:56:17', '2020-11-15 21:56:17'),
(617, 15, '0.77', 'Teaspeak Server Downgrade', '2020-11-15 21:57:05', '2020-11-15 21:57:05'),
(618, 60, '-2.00', 'Server Verlängerung', '2020-11-16 21:41:57', '2020-11-16 21:41:57'),
(619, 83, '4.55', 'Getätigt von der Buchhaltung', '2020-11-17 15:16:11', '2020-11-17 15:16:11'),
(620, 83, '1.95', 'Keine Beschreibung angegeben', '2020-11-17 15:17:25', '2020-11-17 15:17:25'),
(621, 83, '-6.50', 'Service Bestellung #4646', '2020-11-17 16:59:31', '2020-11-17 16:59:31'),
(622, 40, '0.00', 'Service Bestellung #4647', '2020-11-19 22:53:24', '2020-11-19 22:53:24'),
(623, 40, '0.00', 'Storno #4647', '2020-11-20 13:46:19', '2020-11-20 13:46:19'),
(624, 83, '-40.00', 'Supportausnutzung', '2020-11-20 14:48:20', '2020-11-20 14:48:20'),
(625, 83, '39.15', 'Fehler der Buchhaltung', '2020-11-20 14:49:15', '2020-11-20 14:49:15'),
(626, 83, '0.85', 'Guthaben einzahlung', '2020-11-20 14:49:27', '2020-11-20 14:49:27'),
(627, 60, '2.00', 'Guthabenaufladung mit Mollie', '2020-11-21 12:04:30', '2020-11-21 12:04:30'),
(628, 114, '-4.80', 'Teamspeak Server Bestellung', '2020-11-21 12:57:38', '2020-11-21 12:57:38'),
(629, 82, '-0.50', 'Webspace Kauf', '2020-11-22 22:48:21', '2020-11-22 22:48:21'),
(630, 118, '0.00', 'Service Bestellung #4648', '2020-11-23 17:24:26', '2020-11-23 17:24:26'),
(631, 118, '0.00', 'Storno #4648', '2020-11-23 20:54:27', '2020-11-23 20:54:27'),
(632, 15, '-2.00', 'Service verlängerung', '2020-11-25 14:32:21', '2020-11-25 14:32:21'),
(633, 120, '6.00', '.Live domain B', '2020-11-26 13:04:40', '2020-11-26 13:04:40'),
(634, 120, '-0.50', 'Webspace Kauf', '2020-11-26 13:19:28', '2020-11-26 13:19:28'),
(635, 120, '-1.50', 'Webspace verlängerung', '2020-11-26 13:20:20', '2020-11-26 13:20:20'),
(636, 120, '-1.50', 'Webspace verlängerung', '2020-11-26 13:20:35', '2020-11-26 13:20:35'),
(637, 120, '-1.50', 'Webspace verlängerung', '2020-11-26 13:20:47', '2020-11-26 13:20:47'),
(638, 120, '-1.00', 'Webspace verlängerung', '2020-11-26 13:21:02', '2020-11-26 13:21:02'),
(639, 96, '-10.00', 'Service verlängerung', '2020-11-26 14:32:04', '2020-11-26 14:32:04'),
(640, 121, '0.00', 'Service Bestellung #4649', '2020-11-29 14:51:08', '2020-11-29 14:51:08'),
(641, 15, '1.00', 'Keine Beschreibung angegeben', '2020-11-29 22:01:29', '2020-11-29 22:01:29'),
(642, 15, '-1.00', 'TS3RadioBot Bestellung', '2020-11-29 22:35:25', '2020-11-29 22:35:25'),
(643, 83, '-0.50', 'TS3RadioBot Bestellung', '2020-11-29 22:47:34', '2020-11-29 22:47:34'),
(644, 121, '17.00', 'Guthabenaufladung mit Mollie', '2020-11-30 16:32:41', '2020-11-30 16:32:41'),
(645, 14, '0.50', 'test bot', '2020-11-30 17:08:38', '2020-11-30 17:08:38'),
(646, 14, '-0.50', 'TS3RadioBot Bestellung', '2020-11-30 17:08:52', '2020-11-30 17:08:52'),
(647, 121, '8.50', 'Guthabenaufladung mit Mollie', '2020-11-30 17:19:16', '2020-11-30 17:19:16'),
(648, 121, '-25.00', 'Service Bestellung #4650', '2020-11-30 17:21:27', '2020-11-30 17:21:27'),
(649, 121, '0.00', 'Storno #4649', '2020-11-30 18:20:23', '2020-11-30 18:20:23'),
(650, 121, '3.00', 'Keine Beschreibung angegeben', '2020-11-30 20:21:16', '2020-11-30 20:21:16'),
(651, 121, '2.00', 'Gutschrift', '2020-11-30 21:27:47', '2020-11-30 21:27:47'),
(652, 15, '0.50', 'Keine Beschreibung angegeben', '2020-12-01 16:07:30', '2020-12-01 16:07:30'),
(653, 15, '-0.50', 'TS3RadioBot Bestellung', '2020-12-01 16:09:03', '2020-12-01 16:09:03'),
(654, 83, '-40.00', 'Supportausnutzung', '2020-12-01 16:25:28', '2020-12-01 16:25:28'),
(655, 83, '40.00', 'Jonas hat scheiße gebaut ', '2020-12-01 17:12:29', '2020-12-01 17:12:29'),
(656, 83, '-40.00', 'Supportausnutzung', '2020-12-01 17:14:21', '2020-12-01 17:14:21'),
(657, 83, '-40.00', 'Supportausnutzung', '2020-12-01 17:23:54', '2020-12-01 17:23:54'),
(658, 83, '79.65', 'Fehlerhafte Rechnung', '2020-12-01 17:25:26', '2020-12-01 17:25:26'),
(659, 14, '2.00', 'Keine Beschreibung angegeben', '2020-12-01 17:27:32', '2020-12-01 17:27:32'),
(660, 14, '-0.50', 'TS3RadioBot Bestellung', '2020-12-01 17:27:44', '2020-12-01 17:27:44'),
(661, 14, '-0.50', 'TS3RadioBot Bestellung', '2020-12-01 17:27:58', '2020-12-01 17:27:58'),
(662, 14, '-0.50', 'TS3RadioBot Bestellung', '2020-12-01 17:31:22', '2020-12-01 17:31:22'),
(663, 14, '-0.50', 'TS3RadioBot Bestellung', '2020-12-01 18:13:22', '2020-12-01 18:13:22'),
(664, 83, '0.35', 'Guthaben', '2020-12-02 13:57:27', '2020-12-02 13:57:27'),
(665, 101, '-1.00', 'TS3RadioBot Bestellung', '2020-12-04 20:13:45', '2020-12-04 20:13:45'),
(666, 45, '-5.00', '1. Mahngebühr', '2020-12-05 13:58:56', '2020-12-05 13:58:56'),
(667, 101, '17.00', 'Guthabenaufladung mit Mollie', '2020-12-06 11:09:01', '2020-12-06 11:09:01'),
(668, 101, '-10.00', 'Service Bestellung #4651', '2020-12-06 11:13:42', '2020-12-06 11:13:42'),
(669, 39, '2.00', 'webserver', '2020-12-06 15:49:05', '2020-12-06 15:49:05'),
(670, 39, '-2.00', '00', '2020-12-06 15:50:54', '2020-12-06 15:50:54'),
(671, 56, '6.00', 'Gutschein 06U7-Z3BJ-4NV0', '2020-12-10 13:15:54', '2020-12-10 13:15:54'),
(672, 56, '-6.00', 'Service Bestellung #4652', '2020-12-10 13:16:52', '2020-12-10 13:16:52'),
(673, 56, '26.00', 'Guthabenaufladung mit PayPal', '2020-12-10 13:22:07', '2020-12-10 13:22:07'),
(674, 56, '-2.64', 'Teamspeak Server Bestellung', '2020-12-10 13:27:32', '2020-12-10 13:27:32');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `voucher_codes`
--

CREATE TABLE `voucher_codes` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `voucher_codes`
--

INSERT INTO `voucher_codes` (`id`, `code`, `amount`, `created_at`, `updated_at`) VALUES
(1, 'X20Q-GB21-3VJ8', '1.00', '2020-11-12 16:18:35', '2020-11-12 16:18:35'),
(2, 'WORM-GB21-81G9', '1.00', '2020-11-12 16:18:42', '2020-11-12 16:18:42'),
(3, 'X1Z2-GB21-ZMDI', '1.00', '2020-11-12 16:18:49', '2020-11-12 16:18:49'),
(4, '5YMB-GB21-SROF', '1.00', '2020-11-12 16:19:00', '2020-11-12 16:19:00'),
(5, 'GUTSCHEINE NICHT LÖSCHEN', '0.00', '2020-11-12 16:19:54', '2020-11-12 16:19:54'),
(6, 'O7U4-YOX9-U59J', '5.00', '2020-11-29 17:35:51', '2020-11-29 17:35:51'),
(7, 'H0E8-K3J4-72EH', '5.00', '2020-11-29 17:36:55', '2020-11-29 17:36:55');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `affiliates`
--
ALTER TABLE `affiliates`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `affiliate_clicks`
--
ALTER TABLE `affiliate_clicks`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `mail_blacklist`
--
ALTER TABLE `mail_blacklist`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `product_prices`
--
ALTER TABLE `product_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `stream_links`
--
ALTER TABLE `stream_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indizes für die Tabelle `teaspeaks`
--
ALTER TABLE `teaspeaks`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `teaspeak_hosts`
--
ALTER TABLE `teaspeak_hosts`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`);

--
-- Indizes für die Tabelle `ticket_message`
--
ALTER TABLE `ticket_message`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `user_transactions`
--
ALTER TABLE `user_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `voucher_codes`
--
ALTER TABLE `voucher_codes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `affiliates`
--
ALTER TABLE `affiliates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `affiliate_clicks`
--
ALTER TABLE `affiliate_clicks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT für Tabelle `mail_blacklist`
--
ALTER TABLE `mail_blacklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT für Tabelle `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT für Tabelle `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT für Tabelle `product_prices`
--
ALTER TABLE `product_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `stream_links`
--
ALTER TABLE `stream_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT für Tabelle `teaspeaks`
--
ALTER TABLE `teaspeaks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `teaspeak_hosts`
--
ALTER TABLE `teaspeak_hosts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT für Tabelle `ticket_message`
--
ALTER TABLE `ticket_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT für Tabelle `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT für Tabelle `user_transactions`
--
ALTER TABLE `user_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=675;

--
-- AUTO_INCREMENT für Tabelle `voucher_codes`
--
ALTER TABLE `voucher_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
