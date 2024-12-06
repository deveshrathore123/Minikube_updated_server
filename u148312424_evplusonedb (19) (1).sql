-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2024 at 10:40 AM
-- Server version: 10.11.9-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u148312424_evplusonedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(11) NOT NULL,
  `feature_img` varchar(255) DEFAULT NULL,
  `pick_photo_for_me` enum('0','1') DEFAULT '0' COMMENT '1=>If have 1 so show subcategory icon in app in home page\r\n0=> if have 0 so show this banner in app',
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `host_id` int(11) DEFAULT NULL COMMENT 'host_id is the user_id',
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `location` varchar(255) NOT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `date` varchar(255) NOT NULL,
  `start_at` varchar(255) NOT NULL,
  `end_at` varchar(255) NOT NULL,
  `max_people` int(11) NOT NULL,
  `gender` enum('same','all') DEFAULT 'all' COMMENT 'if select same gender so only add attendy according host gender, if select all so add all gender in the activity',
  `repeat_status` varchar(255) DEFAULT NULL,
  `join_instantly` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=>No,1=>Yes,',
  `status` enum('pending','approved','not_approved') NOT NULL DEFAULT 'pending' COMMENT 'pending,approved/accept,not_approved/reject,completed\r\ncompleted-status give only api those backdate-this is completed',
  `parent_id` int(11) DEFAULT NULL,
  `cron_status` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Performed,Not Performed',
  `timezone_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `feature_img`, `pick_photo_for_me`, `category_id`, `subcategory_id`, `host_id`, `name`, `description`, `location`, `latitude`, `longitude`, `date`, `start_at`, `end_at`, `max_people`, `gender`, `repeat_status`, `join_instantly`, `status`, `parent_id`, `cron_status`, `timezone_id`, `created_at`, `updated_at`) VALUES
(14, NULL, '1', 5, 19, 1, 'Donna Leach', 'Consectetur quo mol', 'Veritatis', NULL, NULL, '1983-01-01', '04:00:00', '06:00:00', 2, 'all', 'not_repeat', '0', 'not_approved', NULL, '1', 180, '2024-11-25 07:10:26', '2024-09-13 09:18:43'),
(15, '1726218042_cofie.jpg', '0', 3, 28, 2, 'Early morning coffee break', 'Hey guys! Looking to brighten up your morning? How about joining me for a coffee break at the local café around 10 AM? I\'m extending an invite to three fellow coffee lovers to join the chat and caffeine boost. Let\'s turn strangers into friends over a cup of joe! Hope to see you there for a delightful break. ☕️👋', 'Caffenation', NULL, NULL, '2025-01-01', '02:00:00', '03:00:00', 5, 'all', 'not_repeat', '0', 'not_approved', NULL, '1', 180, '2024-11-19 07:13:36', '2024-09-13 09:00:42'),
(16, NULL, '1', 5, 18, 1, 'Hayes Cooley', 'Recusandae Tempor m', 'Enim', NULL, NULL, '2001-02-20', '05:32:00', '06:32:00', 4, 'all', 'not_repeat', '0', 'pending', NULL, '1', 180, '2024-11-19 07:13:36', '2024-09-13 09:20:10'),
(18, NULL, '1', 4, 20, 1, 'Brendan Chambers', 'Exercitation cupidit', 'Laborum', NULL, NULL, '2024-01-14', '09:44:00', '10:44:00', 4, 'all', 'not_repeat', '0', 'not_approved', NULL, '1', 180, '2024-11-19 07:13:36', '2024-09-13 09:20:45'),
(19, NULL, '1', 1, 7, 1, 'Bradley Velez', 'Et in voluptatem ull', 'Consequat', NULL, NULL, '2025-10-01', '02:00:00', '03:30:00', 4, 'all', 'not_repeat', '0', 'approved', NULL, '1', 180, '2024-11-21 11:41:57', '2024-09-13 09:17:55'),
(21, NULL, '1', 3, 15, 6, 'Picnic in the park', 'Hey guys! Looking for 2 others who would like to join me for a picnic in the park', 'Vondelpark', NULL, NULL, '2024-11-19', '08:00:00', '10:00:00', 3, 'all', 'not_repeat', '0', 'approved', NULL, '1', 180, '2024-11-19 07:13:36', '2024-09-13 09:26:29'),
(35, '1726219178_cofie.jpg', '0', 5, 19, 1, 'Donna Leach', 'Consectetur quo mol', 'Veritatis', NULL, NULL, '1998-08-31', '10:36:00', '11:36:00', 2, 'all', 'not_repeat', '0', 'pending', NULL, '1', 180, '2024-11-19 07:13:36', '2024-09-13 09:19:38'),
(36, '1726219231_demo-pic.jpg', '0', 5, 19, 1, 'Early morning coffe break', 'Hey guys! Looking to brighten up your morning?', 'caffenation', NULL, NULL, '2023-08-30', '08:23:00', '11:23:00', 5, 'all', 'not_repeat', '0', 'not_approved', NULL, '1', 180, '2024-11-19 07:13:36', '2024-09-13 09:20:31'),
(37, NULL, '1', 3, 28, 84, 'des test', 'hello testing activity', 'jaipur', NULL, NULL, '2024-11-19', '16:36:00', '11:30:00', 2, 'all', 'not_repeat', '0', 'approved', NULL, '1', 180, '2024-11-19 07:13:36', '2024-09-13 09:25:49'),
(41, '1724996396_demo.jpg', '0', 1, 26, 1, 'TESTINGTTT', 'This is testing', 'raja park', NULL, NULL, '2025-08-30', '16:36:00', '17:36:00', 4, 'all', 'not_repeat', '0', 'pending', NULL, '1', 180, '2024-11-19 07:13:36', '2024-08-30 05:39:56'),
(67, '1725019058_download.jpg', '0', 1, 8, 72, 'dg', 'fh', 'Jaipur Tu Dadiya Ajmer', NULL, NULL, '30-8-2024', '16:36:00', '19:36:00', 2, 'all', 'repeats', '0', 'pending', NULL, '1', 180, '2024-11-19 07:13:36', '2024-08-30 11:57:38'),
(70, '1725021241_demo-pic.jpg', '0', 2, 10, 72, 'test', 'test', 'Jaipur', NULL, NULL, '2024-09-04', '16:36:00', '19:36:00', 3, 'all', 'repeats', '0', 'pending', NULL, '1', 180, '2024-11-19 07:13:36', '2024-08-30 12:43:59'),
(71, '1725021241_demo-pic.jpg', '0', 3, 15, 72, 'tt', 'tt', 'Jaipur', NULL, NULL, '2024-09-03', '16:36:00', '18:36:00', 4, 'all', 'repeats', '0', 'pending', NULL, '1', 180, '2024-11-19 07:13:36', '2024-08-30 12:45:58'),
(72, NULL, '1', 1, 8, 72, 'ttt', 'ttt', 'Jaipur', NULL, NULL, '2024-09-04', '16:36:00', '18:36:00', 3, 'all', 'repeats', '0', 'pending', NULL, '1', 180, '2024-11-19 07:13:36', '2024-09-10 07:22:23'),
(73, '1725021241_demo-pic.jpg', '0', 1, 6, 72, 'shsh', 'whwh', 'Jaipur', NULL, NULL, '2024-09-11', '16:36:00', '18:36:00', 3, 'all', 'repeats', '0', 'pending', NULL, '1', 180, '2024-11-19 07:13:36', '2024-08-30 12:56:44'),
(74, '1725021241_demo-pic.jpg', '0', 5, 19, 2, 'des test', 'asdfasdfaswdf', 'location', NULL, NULL, '2024-08-17', '16:36:00', '18:36:00', 3, 'same', 'repeats', '0', 'pending', NULL, '1', 180, '2024-11-19 07:13:36', '2024-08-30 13:24:23'),
(78, '1725343003_1000023628.jpg', '0', 1, 6, 72, 'fy', 'gg', 'H.G. Infra Engineering Limited', NULL, NULL, '2024-09-04', '11:26 AM', '19:36:00', 3, 'all', 'repeats', '0', 'pending', NULL, '1', 180, '2024-11-19 07:13:36', '2024-09-03 05:56:43'),
(79, '1725021241_demo-pic.jpg', '0', 3, 15, 84, 'new title', 'hello new', 'location', NULL, NULL, '2024-09-05', '16:36:00', '19:36:00', 3, 'all', 'repeats', '0', 'pending', NULL, '1', 180, '2024-11-19 07:13:36', '2024-09-03 07:02:45'),
(80, '1725021241_demo-pic.jpg', '0', 4, 20, 2, 'new title', 'sdgsdf', 'sdfg', NULL, NULL, '2024-09-12', '16:36:00', '20:36:00', 3, 'all', 'repeats', '0', 'pending', NULL, '1', 180, '2024-11-19 07:13:36', '2024-09-05 04:59:17'),
(81, '1725021241_demo-pic.jpg', '0', 5, 18, 103, 'asdf', 'asdf', 'asdf', NULL, NULL, '2024-09-12', '16:36:00', '21:56:00', 3, 'all', 'repeats', '0', 'pending', NULL, '1', 180, '2024-11-19 07:13:36', '2024-09-05 05:08:59'),
(82, NULL, '1', 3, 15, 101, 'qwasdresad', 'asdf', 'asdf', NULL, NULL, '2024-09-27', '16:36:00', '17:46:00', 2, 'all', 'repeats', '0', 'pending', NULL, '1', 180, '2024-11-19 07:13:36', '2024-09-03 07:19:45'),
(83, '1725888093_demo-pic.jpg', '0', 3, 15, 101, 'asdf', 'asdfasdf', 'asdf', NULL, NULL, '2024-09-26', '16:36:00', '19:36:00', 3, 'all', 'repeats', '0', 'pending', NULL, '1', 180, '2024-11-19 07:13:36', '2024-09-03 08:00:34'),
(84, '1725888093_demo-pic.jpg', '0', 3, 15, 101, 'asdf', 'asdfasdf', 'asdf', NULL, NULL, '2024-09-26', '16:36:00', '17:36:00', 3, 'all', 'repeats', '0', 'pending', NULL, '1', 180, '2024-11-19 07:13:36', '2024-09-03 08:46:54'),
(85, '1725888093_demo-pic.jpg', '0', 3, 15, 2, 'asdf', 'asdfasdf', 'jaipur', NULL, NULL, '2024-09-05', '16:36:00', '17:36:00', 3, 'all', 'repeats', '0', 'pending', NULL, '1', 180, '2024-11-19 07:13:36', '2024-09-03 08:49:08'),
(86, '1725888093_demo-pic.jpg', '0', 4, 20, 2, 'asdfasdf', 'asdfasdf asdfasdf', 'location', NULL, NULL, '2024-09-05', '16:36:00', '12:02 PM', 4, 'all', 'repeats', '0', 'pending', NULL, '1', 180, '2024-11-19 07:13:36', '2024-09-03 09:14:51'),
(87, '1725888093_demo-pic.jpg', '0', 3, 15, 2, 'asdfasdf', 'asdfasdf', 'location', NULL, NULL, '2024-09-05', '16:36:00', '4:06 PM', 3, 'all', 'repeats', '0', 'pending', NULL, '1', 180, '2024-11-19 07:13:36', '2024-09-03 09:38:10'),
(88, '1725888093_demo-pic.jpg', '0', 4, 20, 2, 'qwasdresad', 'asfasd', 'jaipur', NULL, NULL, '2024-09-06', '16:36:00', '4:06 AM', 4, 'all', 'repeats', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-04 09:16:20'),
(89, '1725888093_demo-pic.jpg', '0', 4, 20, 2, 'new activity', 'new activity new activity new activity new activity new activity new activity new activity', 'location', NULL, NULL, '2024-09-13', '16:36:00', '8:24 PM', 4, 'all', 'repeats', '0', 'pending', NULL, '1', 180, '2024-11-19 07:13:36', '2024-09-13 02:54:04'),
(90, '1725888093_demo-pic.jpg', '0', 1, 4, 6, 'running sports', 'This is testingsfsfdfddsddf', 'Jaipur', NULL, NULL, '2024-09-08', '16:36:00', '19:00:00', 5, 'same', 'repeats', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-04 13:13:48'),
(91, '1725888093_demo-pic.jpg', '0', 1, 4, 48, 'sports running2', 'dfgfdfsg', 'asdf', NULL, NULL, '2024-09-14', '16:36:00', '19:00:00', 4, 'same', 'repeats', '0', 'pending', NULL, '1', 180, '2024-11-19 07:13:36', '2024-09-14 00:30:07'),
(92, '1725888093_demo-pic.jpg', '0', 1, 4, 48, 'running sports3', 'safsdfs', 'safsda', NULL, NULL, '2024-09-21', '16:36:00', '19:00:00', 4, 'all', 'repeats', '0', 'pending', NULL, '1', 180, '2024-11-19 07:13:36', '2024-09-21 07:37:00'),
(93, '1725888093_demo-pic.jpg', '0', 1, 4, 48, 'running sports4', 'asdfdsa', 'safsafa', NULL, NULL, '2024-09-21', '16:36:00', '16:50:00', 3, 'same', 'repeats', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-04 13:23:12'),
(94, '1725888093_demo-pic.jpg', '0', 1, 4, 48, 'running sports4', 'asfdadsf', 'asdfdsa', NULL, NULL, '2024-09-28', '16:36:00', '19:00:00', 3, 'same', 'repeats', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-04 13:24:46'),
(95, '1726604456_Screenshot 2024-09-17 at 22.20.01.png', '0', 3, 46, 81, 'The Offline Club', 'Hey everyone! I came across the Offline Club and it looks amazing, but I\'d rather not go alone. It\'s a device-free zone, perfect for relaxing and having real conversations. I\'d love some company. Let me know if you\'re interested! 📵👋', 'Pipes and Beans', '45454', '45', '2024-11-21', '16:00:00', '16:35:00', 3, 'same', 'not_repeat', '0', 'approved', NULL, '0', 192, '2024-11-20 10:48:16', '2024-11-20 06:38:26'),
(96, '1725888093_demo-pic.jpg', '0', 3, 15, 2, 'hello new', 'awsderfasdf', 'sdfg', NULL, NULL, '2024-09-13', '16:36:00', '17:15:00', 5, 'all', 'repeats', '0', 'pending', NULL, '1', 180, '2024-11-19 07:13:36', '2024-09-13 05:11:05'),
(98, NULL, '1', 1, 7, 104, 'test', 'test', 'Jaipur', NULL, NULL, '2024-09-06', '16:36:00', '19:15:00', 2, 'all', 'repeats', '1', 'approved', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-06 04:44:01'),
(99, NULL, '1', 4, 20, 104, 'test', 'ttats', 'Jaipur', NULL, NULL, '2024-09-06', '16:36:00', '19:15:00', 3, 'all', 'repeats', '0', 'approved', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-06 04:39:32'),
(100, '1725888093_demo-pic.jpg', '0', 2, 9, 2, 'dance class', 'dance class dance class dance class dance class dance class dance  class dance class dance class', 'location', NULL, NULL, '2024-09-13', '16:36:00', '20:15:00', 4, 'all', 'repeats', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-06 10:42:16'),
(101, '1725888093_demo-pic.jpg', '0', 4, 20, 2, 'sdsdsdsdsd', 'asdgfadsf asdfasdf', 'location', NULL, NULL, '2024-09-12', '16:36:00', '03:30:00', 4, 'all', 'repeats', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-09 11:27:54'),
(103, '1725888093_demo-pic.jpg', '0', 2, 9, 2, 'dance class class', 'asdfasdfasdf', 'asdfasdf', NULL, NULL, '2024-09-08', '16:36:00', '17:36:00', 4, 'all', 'repeats', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-09 11:35:23'),
(115, '1725888093_demo-pic.jpg', '0', 5, 18, 2, 'xdcccvc', 'adfgadsfg', 'asdf', NULL, NULL, '2024-09-12', '16:36:00', '19:50:00', 4, 'all', 'repeats', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-09 06:39:02'),
(116, '1725888093_demo-pic.jpg', '0', 5, 18, 2, 'xdcccvc', 'adfgadsfg', 'asdf', NULL, NULL, '2024-09-12', '16:36:00', '17:36:00', 4, 'all', 'repeats', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-09 06:41:10'),
(119, '1725888093_demo-pic.jpg', '0', 3, 15, 2, 'qwasdresad', 'wefa', 'asdf', NULL, NULL, '2024-09-09', '14:20:00', '14:30:00', 3, 'all', 'repeats', '0', 'pending', NULL, '1', 180, '2024-11-19 07:13:36', '2024-09-09 12:44:05'),
(121, '1725888093_demo-pic.jpg', '0', 1, 26, 2, 'Testcron4', 'testcron 4', 'jaipur', NULL, NULL, '2024-09-09', '15:10:00', '15:20:00', 3, 'all', 'repeats', '0', 'pending', NULL, '1', 180, '2024-11-19 07:13:36', '2024-09-09 12:44:05'),
(249, '1726209039_cofie.jpg', '0', 3, 15, 2, 'qwasdresad', 'wefa', 'asdf', NULL, NULL, '2024-09-13', '14:20:00', '14:30:00', 3, 'all', 'repeats', '0', 'pending', 119, '0', 180, '2024-11-19 07:13:36', '2024-09-09 12:44:05'),
(251, '1726209039_cofie.jpg', '0', 1, 26, 2, 'Testcron4', 'testcron 4', 'jaipur', NULL, NULL, '2024-09-09', '15:10:00', '15:20:00', 3, 'all', 'repeats', '0', 'pending', 121, '1', 180, '2024-11-19 07:13:36', '2024-09-09 12:48:03'),
(254, '1726209039_cofie.jpg', '0', 1, 26, 2, 'Testcron4', 'testcron 4', 'jaipur', NULL, NULL, '2024-09-09', '15:10:00', '15:20:00', 3, 'all', 'repeats', '0', 'pending', 121, '1', 180, '2024-11-19 07:13:36', '2024-09-09 12:49:04'),
(255, '1726209039_cofie.jpg', '0', 1, 26, 2, 'Testcron4', 'testcron 4', 'jaipur', NULL, NULL, '2024-09-10', '15:10:00', '15:20:00', 3, 'all', 'repeats', '0', 'pending', 121, '1', 180, '2024-11-19 07:13:36', '2024-09-10 09:40:05'),
(259, '1725888093_demo-pic.jpg', '0', 1, 4, 1, 'Running in the park test2', 'This is testing', 'Raja Park', NULL, NULL, '2025-01-01', '16:36:00', '18:36:00', 9, 'same', 'not_repeat', '1', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-09 13:21:33'),
(261, NULL, '1', 1, 7, 72, 'gh', 'ggguvuvuvuvuvuvucuviv8yv8yc9ivuvu', 'Hyderabad, Telangana, India', NULL, NULL, '2024-09-11', '14:36:00', '15:36:00', 2, 'all', 'not_repeat', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-10 05:44:59'),
(263, '1725864879_demo.jpg', '0', 1, 26, 2, 'Testcron4', 'testcron 4', 'jaipur', NULL, NULL, '2024-09-11', '15:10:00', '15:20:00', 3, 'all', 'repeats', '0', 'pending', 121, '1', 180, '2024-11-19 07:13:36', '2024-09-11 09:40:04'),
(268, '1725864879_demo.jpg', '0', 1, 26, 2, 'Testcron4', 'testcron 4', 'jaipur', NULL, NULL, '2024-09-12', '15:10:00', '15:20:00', 3, 'all', 'repeats', '0', 'pending', 121, '0', 180, '2024-11-19 07:13:36', '2024-09-11 09:40:04'),
(271, NULL, '0', 1, 4, 1, 'Testingimg', 'this is testing', 'Jaipur', NULL, NULL, '2024-09-12', '13:07:00', '15:07:00', 4, 'all', 'not_repeat', '0', 'not_approved', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-12 13:34:30'),
(272, '1726209039_cofie.jpg', '0', 4, 20, 2, 'new activity', 'new activity new activity new activity new activity new activity new activity new activity', 'location', NULL, NULL, '2024-10-18', '17:36:00', '18:36:00', 4, 'all', 'repeats', '0', 'pending', 89, '1', 180, '2024-11-19 07:13:36', '2024-10-18 12:06:04'),
(274, '1726209039_cofie.jpg', '0', 3, 15, 2, 'hello new', 'awsderfasdf', 'sdfg', NULL, NULL, '2024-09-19', '17:36:00', '18:36:00', 5, 'all', 'repeats', '0', 'pending', 96, '1', 180, '2024-11-19 07:13:36', '2024-09-19 05:26:04'),
(277, '1726211260_mus.png', NULL, 1, 4, 1, 'Test image app', 'This is testing', 'Raja Park', NULL, NULL, '2025-01-01', '13:36:00', '17:36:00', 3, 'all', 'not_repeat', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-13 07:07:40'),
(280, NULL, '1', 1, 4, 1, 'Test image app', 'This is testing', 'Raja Park', NULL, NULL, '2025-01-01', '13:36:00', '15:36:00', 3, 'all', 'not_repeat', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-13 07:17:29'),
(288, '1726225976_1000024330.jpg', '0', 3, 28, 119, 'test', 'sgshshshhshshsshshshhwhwhwhwhwjw', 'Jaipur, Rajasthan, India', NULL, NULL, '2024-10-19', '18:57:00', '21:44:00', 3, 'all', 'not_repeat', '0', 'approved', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-13 11:24:12'),
(289, '1726226061_1000024330.jpg', '0', 3, 28, 119, 'gsgs', 'syshahshshhshshshahahasushshshhs', 'Jaipur, Rajasthan, India', NULL, NULL, '2024-09-14', '13:57:00', '14:57:00', 2, 'all', 'not_repeat', '0', 'approved', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-13 11:21:16'),
(292, NULL, '1', 4, 20, 119, 'tets', 'sbsbjsjsjsjsjjsjsjsjsjjsjsjsjajajqj', 'Jaipur, Rajasthan, India', NULL, NULL, '2024-09-21', '14:36:00', '15:46:00', 2, 'all', 'not_repeat', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-16 06:57:21'),
(293, NULL, '1', 2, 25, 119, 'zhzhhz', 'shshsjjsjsjsjsjsjsjjshshshshhshshshs', 'Jaipur, Rajasthan, India', NULL, NULL, '2024-09-21', '15:46:00', '16:46:00', 2, 'all', 'not_repeat', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-16 06:55:36'),
(294, '1726227782_1000024330.jpg', '0', 2, 9, 119, 'gj', 'gugufcuigigicugcugcigivjchccjcjcjcjcc', 'Japan', NULL, NULL, '2024-09-20', '15:36:00', '16:46:00', 2, 'all', 'not_repeat', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-13 11:43:02'),
(295, NULL, '1', 2, 10, 119, 'rdgg', 'yhghftttyyyyyyyyyyhfffffxdffffggg', 'Japan', NULL, NULL, '2024-09-20', '14:36:00', '15:36:00', 2, 'all', 'not_repeat', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-13 11:44:37'),
(296, NULL, '1', 3, 28, 119, 'ggg', 'uhehgeehggdhhgehhrhdrhrherhhhhh', 'Jaipur, Rajasthan, India', NULL, NULL, '2024-09-19', '15:36:00', '16:36:00', 2, 'all', 'not_repeat', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-13 11:52:02'),
(297, NULL, '1', 2, 10, 119, 'hhhh', 'gshshshxhdhhdhdhsydydydydyryyryr', 'Jaipur, Rajasthan, India', NULL, NULL, '2024-09-19', '13:36:00', '14:16:00', 3, 'all', 'not_repeat', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-13 11:53:23'),
(298, NULL, '1', 2, 10, 119, 'chf', 'fidjcjgogigig9gigufufuffufufiiigiggugiccuicc', 'Japan', NULL, NULL, '2024-09-14', '15:36:00', '16:36:00', 2, 'all', 'not_repeat', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-13 12:03:00'),
(299, NULL, '1', 5, 19, 119, '7f', 'x7tiyxiyxiyxoyxkydiyxohxiyxoycoucoycoyc', 'Japan', NULL, NULL, '2024-09-20', '15:36:00', '17:36:00', 2, 'same', 'not_repeat', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-13 12:21:45'),
(300, NULL, '1', 2, 10, 119, 'ggfg', 'ushehrgeggerghrrvrhrhrrhrjrhrhrjrhhthh', 'japan', NULL, NULL, '2024-09-25', '15:36:00', '17:36:00', 2, 'all', 'not_repeat', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-13 12:51:14'),
(301, NULL, '1', 2, 25, 119, 'fjg', 'hdklhaoyksksykshdldhdlhldlhdhaohhlxlhxh', 'jap', NULL, NULL, '2024-09-20', '14:36:00', '17:36:00', 2, 'all', 'not_repeat', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-13 12:52:08'),
(302, '1726467800_mus.png', '0', 1, 4, 48, 'sports running2', 'dfgfdfsg', 'asdf', NULL, NULL, '2024-09-15', '13:36:00', '20:36:00', 4, 'same', 'repeats', '0', 'pending', 91, '1', 180, '2024-11-19 07:13:36', '2024-09-15 00:30:05'),
(303, '1726467800_mus.png', '0', 1, 4, 48, 'sports running2', 'dfgfdfsg', 'asdf', NULL, NULL, '2024-09-22', '14:36:00', '21:36:00', 4, 'same', 'repeats', '0', 'pending', 91, '1', 180, '2024-11-19 07:13:36', '2024-09-22 09:06:03'),
(305, '1726461088_mus.png', NULL, 1, 4, 1, 'Test image app', 'This is testing', 'Raja Park', NULL, NULL, '2025-01-01', '15:36:00', '21:36:00', 3, 'all', 'not_repeat', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-16 04:31:28'),
(344, '1726604106_Screenshot 2024-09-17 at 22.14.58.png', '0', 3, 28, 1, 'Early morning coffee ☕️', 'Hey guys! Looking to brighten up your morning? How about joining me for a coffee break at the local café around 10 AM? I\'m extending an invite to three fellow coffee lovers to join in on the chat and caffeine boost. Let\'s turn strangers into friends over a cup of joe! Hope to see you there for a delightful break. ☕️👋', 'Caffenation, Amsterdam', '123132', '121223', '2024-11-19', '19:10:00', '20:10:00', 3, 'all', 'not_repeat', '0', 'approved', NULL, '0', 192, '2024-11-19 07:16:38', '2024-11-18 10:06:32'),
(351, '1726592840_demo.jpg', '0', 1, 4, 1, 'Testing', 'Tstisknfksfk', 'sasasaasffa', NULL, NULL, '2024-09-17', '16:36:00', '17:36:00', 5, 'all', 'not_repeat', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-17 17:07:20'),
(365, NULL, '1', 2, 25, 130, 'yo', 'qwroppjgfssgofddyukjhggggyyyyyyuu', '37, Vijay Bari, Dahar Ka Balaji, Jaipur, Rajasthan 302039, India', '26.95815755590851', '75.7641826942563', '2024-09-25', '16:36:00', '17:36:00', 3, 'all', 'not_repeat', '0', 'not_approved', NULL, '0', 180, '2024-11-25 07:10:18', '2024-09-20 11:20:16'),
(367, NULL, '1', 1, 24, 1, 'Tesingt', 'Testingksakfjasdjkljfaklsjfklsjfaklsfjklsjfklsjklfjksjakfjsakljfskafjsakfjaskkslafjksaflsaf', 'Jaipur', NULL, NULL, '2024-09-19', '16:36:00', '17:36:00', 2, 'all', 'not_repeat', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-19 06:57:39'),
(369, NULL, '1', 1, 4, 1, 'sadfasfsassf', 'sdffffffffffffffffffffffffffffffffffffffffffffffffffaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'ttsetss', NULL, NULL, '2024-09-19', '13:02:00', '14:02:00', 2, 'all', 'not_repeat', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-19 07:34:01'),
(372, NULL, '1', 5, 18, 1, 'Testimg', 'sadfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff', 'Jaipur', NULL, NULL, '2024-09-19', '15:25:00', '15:25:00', 2, 'all', 'not_repeat', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-19 09:59:00'),
(373, NULL, '1', 2, 9, 40, 'sadfdsafsafasadf', 'sadffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff', 'sadfasfsfdsaf', NULL, NULL, '2024-09-19', '15:30:00', '16:30:00', 3, 'all', 'not_repeat', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-19 10:01:41'),
(374, NULL, '1', 5, 19, 130, 'asdfsafsd', 'sadfffffffffffffffffffffffffffffffffffffffffffffff', 'Jaipur', NULL, NULL, '2024-09-19', '15:35:00', '16:35:00', 2, 'all', 'not_repeat', '0', 'not_approved', NULL, '0', 180, '2024-11-25 07:11:10', '2024-09-20 11:07:13'),
(375, NULL, '1', 1, 3, 1, 'Testing', 'asdfassssssssssssssssssssssssss', 'Jaipur', NULL, NULL, '2024-09-19', '15:37:05', '16:37:47', 3, 'all', 'not_repeat', '0', 'not_approved', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-19 12:23:39'),
(383, NULL, '1', 3, 43, 81, 'Beers at Cafe Oslo', 'New in town! I\'m organising a fun night out at cafe Oslo in Amsterdam South and hope to meet new friends. There\'s board games, darts and loads of types of beers, see you there! 🍻', 'Cafee Oslo', '26.963275', '75.7689493', '2024-11-19', '12:00:00', '18:00:00', 10, 'all', 'not_repeat', '0', 'approved', NULL, '0', 180, '2024-11-19 07:17:12', '2024-11-11 07:03:40'),
(385, NULL, '1', 1, 5, 150, 'Kayaking after work', 'Hey there! I have two kayaks and would love to take someone with after work in Amsterdamse bos. All levels are welcome.', 'Het Amsterdamse Bos', '26.9408185', '75.79897079999999', '2024-09-22', '12:19:00', '12:25:00', 3, 'same', 'repeats', '0', 'approved', NULL, '1', 180, '2024-11-19 07:13:36', '2024-09-22 06:49:04'),
(386, '1725888093_demo-pic.jpg', '0', 1, 4, 48, 'running sports3', 'safsdfs', 'safsda', NULL, NULL, '2024-09-22', '16:36:00', '16:50:00', 4, 'all', 'repeats', '0', 'pending', 92, '1', 180, '2024-11-19 07:13:36', '2024-09-22 11:06:05'),
(391, '1726909558_thunderstorm-3625405_1280.jpg', '0', 17, 37, 150, 'testingn', 'thisis testing dsfdsfdsfdsfdsfsdfdsf dfsdfdfdfdsfds', 'jaipur', NULL, NULL, '2024-09-21', '14:35:00', '15:30:00', 10, 'all', 'repeats', '0', 'approved', NULL, '1', 180, '2024-11-19 07:13:36', '2024-09-21 09:39:04'),
(394, '1726909558_thunderstorm-3625405_1280.jpg', '0', 17, 37, 150, 'First_testing', 'thisis testing dsfdsfdsfdsfdsfsdfdsf dfsdfdfdfdsfds', 'jaipur', NULL, NULL, '2024-09-22', '14:35:00', '15:30:00', 10, 'all', 'repeats', '0', 'approved', 391, '0', 180, '2024-11-19 07:13:36', '2024-09-21 09:39:04'),
(397, NULL, '1', 2, 25, 145, 'gug', 'ycguguugugfufufufuffuufhffuhgjgjg', 'JS Luwansa Hotel, Jalan Haji R. Rasuna Said, RT.2/RW.5, Karet Kuningan, South Jakarta City, Jakarta, Indonesia', '-6.2228755', '106.8330025', '2024-09-23', '17:22:00', '17:23:00', 2, 'all', 'not_repeat', '0', 'not_approved', NULL, '0', 180, '2024-11-25 07:10:13', '2024-09-24 05:41:18'),
(400, '1726467800_mus.png', '0', 1, 4, 48, 'sports running2', 'dfgfdfsg', 'asdf', NULL, NULL, '2024-09-29', '14:36:00', '21:36:00', 4, 'same', 'repeats', '0', 'pending', 91, '1', 180, '2024-11-19 07:13:36', '2024-09-29 09:06:03'),
(401, '1725888093_demo-pic.jpg', '0', 1, 4, 48, 'running sports3', 'safsdfs', 'safsda', NULL, NULL, '2024-09-29', '16:36:00', '16:50:00', 4, 'all', 'repeats', '0', 'pending', 92, '0', 180, '2024-11-19 07:13:36', '2024-09-22 11:06:05'),
(403, NULL, '1', 1, 5, 150, 'Kayaking after work', 'Hey there! I have two kayaks and would love to take someone with after work in Amsterdamse bos. All levels are welcome.', 'Het Amsterdamse Bos', NULL, NULL, '2024-09-24', '12:19:00', '12:25:00', 3, 'same', 'repeats', '0', 'approved', 385, '1', 180, '2024-11-19 07:13:36', '2024-09-24 06:49:03'),
(404, NULL, '1', 3, 28, 130, 'let take a coffee break so we can have fun', 'jgjfhfiirkrjrjekjrjrjdkrjkqk2p x2fobbf8b3eve0bfk0wfnwghkgjfjjghefbef', 'Next Big Technology Pvt. Ltd.(Web & Mobile App Development), Sikar Road, Vikas Nagar, Bhawani Nagar, Jaipur, Rajasthan, India', '26.963275', '75.7689493', '2024-09-24', '14:34:00', '14:54:00', 4, 'all', 'repeats', '0', 'not_approved', NULL, '1', 180, '2024-11-25 07:11:02', '2024-09-24 09:04:04'),
(405, NULL, '1', 1, 4, 1, 'Test mail activity', 'This is testing', 'Narayan circle', 'lat3434339', 'long3888', '2025-01-01', '17:02:00', '18:02:00', 3, 'all', 'repeats', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-24 06:25:40'),
(406, NULL, '1', 1, 4, 1, 'Test mail activity', 'This is testing', 'Narayan circle', 'lat3434339', 'long3888', '2025-01-01', '17:02:00', '18:02:00', 3, 'all', 'repeats', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-24 06:33:45'),
(407, NULL, '1', 1, 4, 1, 'Test mail activity', 'This is testing', 'Narayan circle', 'lat3434339', 'long3888', '2025-01-01', '17:02:00', '18:02:00', 3, 'all', 'repeats', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-24 06:34:23'),
(408, NULL, '1', 1, 4, 1, 'Test mail activity', 'This is testing', 'Narayan circle', 'lat3434339', 'long3888', '2025-01-01', '17:02:00', '18:02:00', 3, 'all', 'repeats', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-24 06:39:26'),
(409, NULL, '1', 1, 4, 1, 'Test mail activity', 'This is testing', 'Narayan circle', 'lat3434339', 'long3888', '2025-01-01', '17:02:00', '18:02:00', 3, 'all', 'repeats', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-24 06:45:18'),
(410, NULL, '1', 1, 4, 1, 'Test mail activity', 'This is testing', 'Narayan circle', 'lat3434339', 'long3888', '2025-01-01', '17:02:00', '18:02:00', 3, 'all', 'repeats', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-24 06:46:47'),
(412, NULL, '1', 1, 4, 1, 'Test mail activity', 'This is testing', 'Narayan circle', 'lat3434339', 'long3888', '2025-01-01', '17:02:00', '18:02:00', 3, 'all', 'repeats', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-24 06:53:27'),
(413, NULL, '1', 1, 4, 1, 'Test mail activity', 'This is testing', 'Narayan circle', 'lat3434339', 'long3888', '2025-01-01', '17:02:00', '18:02:00', 3, 'all', 'repeats', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-24 06:54:17'),
(414, NULL, '1', 1, 4, 1, 'Test mail activity', 'This is testing', 'Narayan circle', 'lat3434339', 'long3888', '2025-01-01', '17:02:00', '18:02:00', 3, 'all', 'repeats', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-24 06:55:46'),
(415, NULL, '1', 1, 4, 1, 'Test mail activity', 'This is testing', 'Narayan circle', 'lat3434339', 'long3888', '2025-01-01', '17:02:00', '18:02:00', 3, 'all', 'repeats', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-24 06:56:21'),
(416, NULL, '1', 1, 4, 1, 'Test mail activity', 'This is testing', 'Narayan circle', 'lat3434339', 'long3888', '2025-01-01', '17:02:00', '18:02:00', 3, 'all', 'repeats', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-24 06:57:00'),
(417, NULL, '1', 1, 4, 1, 'Test mail admin', 'this is testing askjfksakljfjfkjsdafkkfjasfasfsafsafsafsfsffsfsfsf', 'Jaipur road', NULL, NULL, '2024-09-24', '14:00:00', '15:00:00', 5, 'same', 'not_repeat', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-24 07:05:19'),
(418, NULL, '1', 1, 4, 1, 'Test mail admin', 'this is testing askjfksakljfjfkjsdafkkfjasfasfsafsafsafsfsffsfsfsf', 'Jaipur road', NULL, NULL, '2024-09-24', '14:00:00', '15:00:00', 5, 'same', 'not_repeat', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-24 07:06:18'),
(420, NULL, '1', 1, 4, 1, 'Test mail activity', 'This is testingasdffffffffffffffffffffffffffffffffffffffffffffffffsdffffffffffffffffffffffff', 'Narayan circle', 'lat3434339', 'long3888', '2025-01-01', '20:25:00', '21:25:00', 3, 'all', 'repeats', '0', 'pending', NULL, '0', 180, '2024-11-19 07:13:36', '2024-09-25 11:27:10'),
(442, NULL, '1', 3, 28, 130, 'shjs', 'ashsjsjjsjsjsjsjjsjsjsjsjjsjsjsj', 'B-40, Sector 2, Vijay Bari, Vidyadhar Nagar, Jaipur, Rajasthan 302039, India', NULL, NULL, '2024-11-19', '11:26:00', '23:26:00', 2, 'all', 'repeats', '0', 'approved', 381, '1', 180, '2024-11-19 07:13:36', '2024-10-02 05:56:04'),
(452, NULL, '1', 2, 9, 1, 'Test cron 27/09', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Ru Marg', NULL, NULL, '2024-09-27', '14:00:00', '16:00:00', 5, 'all', 'repeats', '0', 'pending', NULL, '1', 180, '2024-11-19 07:13:36', '2024-09-27 08:30:05'),
(453, NULL, '1', 2, 9, 1, 'Test cron 27/09', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Ru Marg', NULL, NULL, '2024-09-28', '14:00:00', '16:00:00', 5, 'all', 'repeats', '0', 'pending', 452, '1', 180, '2024-11-19 07:13:36', '2024-09-28 08:30:05'),
(454, NULL, '1', 2, 9, 1, 'Test cron 27/09', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Ru Marg', NULL, NULL, '2024-09-29', '14:00:00', '16:00:00', 5, 'all', 'repeats', '0', 'pending', 452, '0', 180, '2024-11-19 07:13:36', '2024-09-28 08:30:05'),
(455, NULL, '1', 3, 28, 8, 'Early morning coffee break ☕️', 'Hey guys! \r\n\r\nLooking to brighten up your morning? \r\n\r\nHow about joining me for a coffee break at the local café around 10 AM? I\'m extending an invite to three fellow coffee lovers to join the chat and caffeine boost. Let\'s turn strangers into friends over a cup of joe! \r\n\r\nHope to see you there for a delightful break. ☕️👋', 'Warmondstraat 110, Amsterdam, Netherlands', '52.3547558', '4.849300299999999', '2024-11-19', '10:00:00', '11:00:00', 3, 'all', 'not_repeat', '0', 'approved', NULL, '0', 180, '2024-11-19 07:17:17', '2024-10-26 12:30:10'),
(457, '1726467800_mus.png', '0', 1, 4, 48, 'sports running2', 'dfgfdfsg', 'asdf', NULL, NULL, '2024-10-06', '14:36:00', '21:36:00', 4, 'same', 'repeats', '0', 'pending', 91, '0', 180, '2024-11-19 07:13:36', '2024-09-29 09:06:03'),
(464, NULL, '1', 3, 15, 3, 'jcjf', 'ufjfjgjcjcjcjcjcjcjvjvjgjvjvjv', 'Japan', '36.204824', '138.252924', '2024-11-19', '14:00:00', '16:00:00', 6, 'all', 'not_repeat', '0', 'approved', NULL, '0', 180, '2024-11-19 07:13:36', '2024-11-06 11:58:17'),
(468, NULL, '1', 2, 9, 130, 'gg', 'ggggggggggggggggggggggg vvvvvvvvvvv', 'Japan', '36.204824', '138.252924', '2024-10-03', '11:35:00', '16:35:00', 8, 'all', 'not_repeat', '0', 'pending', NULL, '0', 180, '2024-11-25 07:10:54', '2024-10-01 08:51:03'),
(479, NULL, '1', 1, 3, 130, 'sjsjsj', 'sjsjjsjsjsjsjdjndjdjdjsjjsjsjsjsj', 'Jaipur, Rajasthan, India', '26.9124336', '75.7872709', '2024-10-02', '17:32:00', '19:36:00', 3, 'all', 'not_repeat', '0', 'pending', NULL, '0', 180, '2024-11-25 07:10:50', '2024-10-01 09:03:24'),
(480, NULL, '1', 17, 38, 1, 'Testing 10/1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Jaipur', NULL, NULL, '2024-10-01', '18:01:00', '19:01:00', 5, 'all', 'not_repeat', '0', 'approved', NULL, '0', 180, '2024-11-19 07:13:36', '2024-10-01 12:30:45'),
(486, NULL, '1', 1, 4, 1, 'Test cron weekly 2/09', 'What is Lorem Ipsum?\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Jaipur', NULL, NULL, '2024-10-02', '18:25:00', '18:28:00', 5, 'all', 'repeats', '0', 'pending', NULL, '1', 180, '2024-11-19 07:13:36', '2024-10-02 12:55:05'),
(487, NULL, '1', 1, 4, 1, 'Test cron weekly 1/09', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Jaipur', NULL, NULL, '2024-10-01', '18:29:00', '18:33:00', 5, 'all', 'repeats', '0', 'pending', NULL, '1', 180, '2024-11-19 07:13:36', '2024-10-01 13:02:03'),
(488, NULL, '1', 1, 4, 1, 'Test cron weekly 1/09', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Jaipur', NULL, NULL, '2024-10-08', '18:29:00', '18:33:00', 5, 'all', 'repeats', '0', 'pending', 487, '1', 180, '2024-11-19 07:13:36', '2024-10-08 12:59:04'),
(489, NULL, '1', 1, 4, 1, 'Test cron weekly 1/09  thu', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Jaipur', NULL, NULL, '2024-10-01', '18:39:00', '18:43:00', 5, 'all', 'repeats', '0', 'pending', NULL, '1', 180, '2024-11-19 07:13:36', '2024-10-01 13:12:04'),
(490, NULL, '1', 1, 4, 1, 'Test cron weekly 1/09  thu', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Jaipur', NULL, NULL, '2024-10-10', '18:39:00', '18:43:00', 5, 'all', 'repeats', '0', 'pending', 489, '1', 180, '2024-11-19 07:13:36', '2024-10-10 13:09:04'),
(492, NULL, '1', 1, 4, 1, 'Test cron weekly 2/09', 'What is Lorem Ipsum?\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Jaipur', NULL, NULL, '2024-10-08', '18:25:00', '18:28:00', 5, 'all', 'repeats', '0', 'pending', 486, '1', 180, '2024-11-19 07:13:36', '2024-10-08 12:55:04'),
(504, NULL, '1', 17, 38, 1, 'Testing 10/1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Jaipur rajasthani', NULL, NULL, '2024-10-10', '10:00:00', '11:00:00', 5, 'all', 'not_repeat', '0', 'approved', NULL, '0', 180, '2024-11-19 07:13:36', '2024-10-10 04:48:50'),
(528, NULL, '1', 1, 4, 1, 'Test cron weekly 2/09', 'What is Lorem Ipsum?\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Jaipur', NULL, NULL, '2024-10-15', '18:25:00', '18:28:00', 5, 'all', 'repeats', '0', 'pending', 486, '0', 180, '2024-11-19 07:13:36', '2024-10-08 12:55:04'),
(529, NULL, '1', 1, 4, 1, 'Test cron weekly 1/09', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Jaipur', NULL, NULL, '2024-10-15', '18:29:00', '18:33:00', 5, 'all', 'repeats', '0', 'pending', 487, '0', 180, '2024-11-19 07:13:36', '2024-10-08 12:59:04'),
(531, NULL, '1', 1, 4, 1, 'Test cron weekly 1/09  thu', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Jaipur', NULL, NULL, '2024-10-17', '18:39:00', '18:43:00', 5, 'all', 'repeats', '0', 'pending', 489, '0', 180, '2024-11-19 07:13:36', '2024-10-10 13:09:04'),
(536, NULL, '1', 1, 4, 1, 'Testing activity 24hr', 'testing tesitngtesting tesitngtesting tesitngtesting tesitngtesting tesitngtesting tesitngtesting tesitngtesting tesitngtesting tesitngtesting tesitng', 'Jaipur', NULL, NULL, '2024-10-16', '13:00:00', '15:00:00', 5, 'all', 'not_repeat', '0', 'approved', NULL, '0', 180, '2024-11-19 07:13:36', '2024-10-15 06:33:39'),
(538, '1726209039_cofie.jpg', '0', 4, 20, 2, 'new activity', 'new activity new activity new activity new activity new activity new activity new activity', 'location', NULL, NULL, '2024-11-22', '17:36:00', '18:36:00', 4, 'all', 'repeats', '0', 'not_approved', 89, '0', 180, '2024-11-19 07:13:36', '2024-11-05 07:46:17'),
(539, NULL, '1', 1, 4, 1, 'Testing21date', 'Testingtestingtestingtestingtestintetestintsjajasjsajlkajkjkjsakfsafsfsfasfafssfsfsfsafsfsfsdfsfsf', 'Jaipur', NULL, NULL, '2024-10-22', '10:03:00', '11:00:00', 5, 'all', 'not_repeat', '1', 'approved', NULL, '0', 180, '2024-11-19 07:13:36', '2024-10-22 04:32:20'),
(543, NULL, '1', 2, 25, 81, 'Foundersmesh at Chateau', 'Hey guys! I\'d love to join the Foundersmesh event this week at Chateau in Amsterdam Noord. Is there anyone that\'d like to tag alone, so we don\'t have to go alone?', 'Johan van Hasseltweg 51, 1021 KN Amsterdam, Netherlands', '52.3862778', '4.9262805', '2024-12-04', '15:00:00', '16:00:00', 3, 'same', 'not_repeat', '0', 'approved', NULL, '0', 180, '2024-11-19 10:39:17', '2024-11-19 10:39:17'),
(544, NULL, '1', 1, 24, 81, 'Early Vinyasa yoga session', 'Looking to destress after a busy workweek with this Vinyasa yoga session. Looking for another female who\'s interested in joining me at Oraclay this Sunday morning.', 'Oracley, Ter Haarstraat, Amsterdam, Netherlands', '52.370292', '4.8697289', '2024-12-27', '09:30:00', '10:30:00', 2, 'same', 'not_repeat', '0', 'approved', NULL, '0', 180, '2024-11-19 07:13:36', '2024-10-26 12:44:09'),
(545, NULL, '1', 3, 46, 81, 'Sip ‘n Paint 🎨🍷', 'Hello all! I\'m going to a Sip \'n Paint event at Soho House and would love some company. It\'s a great chance to relax, get creative, and meet new people. If you\'re interested, let me know!', 'Soho House, Spuistraat, Amsterdam, Netherlands', '52.37205179999999', '4.8892258', '2024-11-19', '11:30:00', '11:50:00', 2, 'all', 'not_repeat', '0', 'approved', NULL, '0', 261, '2024-11-19 07:17:02', '2024-11-18 04:58:53'),
(546, NULL, '1', 1, 34, 81, 'Climbing at Klimmuur Spaarnwoude', 'Hey! I\'m going Climbing next week at Klimmuur Spaarnwoude. I have gone a few times now, but still see myself as a beginner. Looking for someone or a small group of people with a similar level, keen to join me on this!', 'Klimmuur Spaarnwoude Park, Velsen-Zuid, Netherlands', '52.4480121', '4.677352799999999', '2024-12-02', '12:00:00', '16:00:00', 2, 'all', 'not_repeat', '0', 'approved', NULL, '0', 180, '2024-11-19 07:13:36', '2024-10-26 17:39:52'),
(547, NULL, '1', 1, 4, 81, 'Post work 10K Vondelpark run', 'I\'m preparing for the Amsterdam Marathon and have planned a 10K run for this Friday. I usually do 4 minutes per kilometer, but open to others joining with a different pace. I\'ll start on the entrance (Leidseplein side), and will run 3 laps. Happy to grab a drink after if anyone is down!', 'Vondelpark 8A, 1054 EW Amsterdam, Netherlands', '52.36076801468292', '4.877021424472332', '2024-12-05', '10:00:00', '11:00:00', 5, 'all', 'not_repeat', '0', 'approved', NULL, '0', 180, '2024-11-19 07:13:36', '2024-10-26 17:41:52'),
(548, NULL, '1', 5, 18, 81, 'Amsterdam Museum Night', 'Hey! I\'m new in Amsterdam and planning to check out Amsterdam Museum Night next week. It would be great to enjoy this event with another girl. If you\'re interested in exploring the museums and enjoying the art together, let me know! 🖼️✨', 'NEMO Science Museum, Oosterdok, Amsterdam, Netherlands', '52.3741709', '4.912325', '2024-12-26', '20:00:00', '23:59:00', 3, 'all', 'not_repeat', '0', 'approved', NULL, '0', 180, '2024-11-19 07:13:36', '2024-10-26 17:44:10'),
(549, NULL, '1', 1, 21, 81, 'Cycling in the dunes', 'Hey! I\'m new in Amsterdam and planning to check out Amsterdam Museum Night next week. It would be great to enjoy this event with another girl. If you\'re interested in exploring the museums and enjoying the art together, let me know! 🖼️✨', 'Kennemerland National Park, Vogelweg, 2051 EC Bloemendaal, Netherlands', '52.413854725188344', '4.567223936319351', '2025-01-18', '11:00:00', '15:00:00', 1, 'all', 'not_repeat', '0', 'approved', NULL, '0', 261, '2024-11-22 20:56:13', '2024-11-22 20:56:13'),
(550, NULL, '1', 3, 28, 1, 'Testing Activity', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Nehru vihar', '22323232', '232232', '2024-11-19', '18:05:00', '18:30:00', 10, 'same', 'not_repeat', '0', 'approved', NULL, '0', 180, '2024-11-19 12:34:45', '2024-11-19 12:34:36'),
(551, NULL, '1', 2, 25, 1, 'Testing Activity2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Sikar Road, Jaipur', '123', '123', '2024-10-28', '13:00:00', '15:00:00', 10, 'same', 'not_repeat', '0', 'approved', NULL, '0', 180, '2024-11-19 07:13:36', '2024-10-29 09:58:20'),
(552, '1730785148_hava.jpg', '0', 1, 35, 1, 'Testing11-05', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Jaipur', '434', '433', '2024-11-20', '12:30:00', '12:50:00', 5, 'all', 'not_repeat', '0', 'approved', NULL, '0', 180, '2024-11-20 12:20:26', '2024-11-20 06:37:26'),
(553, '1730798505_demo.jpg', '0', 17, 38, 185, 'Testinguppre', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Jaipur', NULL, NULL, '2024-11-06', '14:00:00', '16:00:00', 5, 'all', 'not_repeat', '0', 'approved', NULL, '0', 180, '2024-11-19 07:13:36', '2024-11-05 09:23:54'),
(554, '1730798619_demo-pic.jpg', '0', 17, 38, 185, 'Testing upppre2', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Jaipur', NULL, NULL, '2024-11-04', '16:00:00', '17:00:00', 5, 'all', 'not_repeat', '0', 'approved', NULL, '0', 180, '2024-11-19 07:13:36', '2024-11-05 09:23:56');
INSERT INTO `activities` (`id`, `feature_img`, `pick_photo_for_me`, `category_id`, `subcategory_id`, `host_id`, `name`, `description`, `location`, `latitude`, `longitude`, `date`, `start_at`, `end_at`, `max_people`, `gender`, `repeat_status`, `join_instantly`, `status`, `parent_id`, `cron_status`, `timezone_id`, `created_at`, `updated_at`) VALUES
(556, NULL, '1', 2, 10, 1, 'Testing cron08-sun', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Jaipur', '2323', '232', '2024-11-19', '08:07:00', '09:00:00', 5, 'all', 'repeats', '0', 'approved', NULL, '1', 394, '2024-11-19 13:06:30', '2024-11-19 13:05:05'),
(557, NULL, '1', 2, 26, 1, 'Testing cron12-tue', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Jaipur', NULL, NULL, '2024-11-09', '09:00:00', '11:00:00', 5, 'all', 'repeats', '0', 'approved', NULL, '1', 180, '2024-11-19 07:13:36', '2024-11-09 03:30:05'),
(558, NULL, '1', 2, 26, 1, 'Testing cron12-tue', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Jaipur', NULL, NULL, '2024-11-12', '09:00:00', '11:00:00', 5, 'all', 'repeats', '0', 'pending', 557, '0', 180, '2024-11-19 07:13:36', '2024-11-09 03:30:05'),
(559, NULL, '1', 2, 10, 1, 'Testing cron08-sun', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Jaipur', NULL, NULL, '2024-11-10', '09:15:00', '11:15:00', 5, 'all', 'repeats', '0', 'not_approved', 556, '0', 180, '2024-11-21 07:53:10', '2024-11-21 07:53:10'),
(560, NULL, '1', 1, 4, 1, 'Testing timezone', 'sadfffffffffffffffffffffffffffffffffffffffffffffffffsadfffffffffffffffffffffffffffffffffffffffffffffffffsadfffffffffffffffffffffffffffffffffffffffffffffffffsadfffffffffffffffffffffffffffffffffffffffffffffffffsadfffffffffffffffffffffffffffffffffffffffffffffffffsadfffffffffffffffffffffffffffffffffffffffffffffffffsadfffffffffffffffffffffffffffffffffffffffffffffffffsadfffffffffffffffffffffffffffffffffffffffffffffffffsadfffffffffffffffffffffffffffffffffffffffffffffffff', 'Jaipur', '553', '343', '2024-11-21', '08:00:00', '08:15:00', 10, 'all', 'not_repeat', '0', 'approved', NULL, '0', 261, '2024-11-20 10:49:47', '2024-11-20 06:39:13'),
(561, NULL, '1', 1, 4, 1, 'Test timezone', 'This is testing', 'Narayan circle', 'lat3434339', 'long3888', '2025-01-01', '17:00:00', '20:02:00', 3, 'all', 'repeats', '0', 'not_approved', NULL, '0', 180, '2024-11-21 07:53:04', '2024-11-21 07:53:04'),
(562, NULL, '1', 1, 4, 188, 'testing time zone ppp', 'asdfsasfsafsfsasaasdfsasfsafsfsasaasdfsasfsafsfsasaasdfsasfsafsfsasaasdfsasfsafsfsasaasdfsasfsafsfsasaasdfsasfsafsfsasaasdfsasfsafsfsasaasdfsasfsafsfsasaasdfsasfsafsfsasaasdfsasfsafsfsasaasdfsasfsafsfsasaasdfsasfsafsfsasaasdfsasfsafsfsasa', 'Jaipur', '6464', '464', '2024-11-21', '09:21:00', '10:20:00', 10, 'all', 'not_repeat', '0', 'approved', NULL, '0', 179, '2024-11-21 10:06:20', '2024-11-21 09:20:25'),
(563, NULL, '1', 1, 4, 188, 'Testing timezoneidd2', 'testingtestingtestingtesitntestingtestingtestingtesitntestingtestingtestingtesitntestingtestingtestingtesitntestingtestingtestingtesitntestingtestingtestingtesitntestingtestingtestingtesitntestingtestingtestingtesitntestingtestingtestingtesitntestingtestingtestingtesitntestingtestingtestingtesitn', 'Jaipur', '3434343334', '43433434', '2024-11-21', '16:15:00', '17:15:00', 5, 'all', 'not_repeat', '0', 'approved', NULL, '0', 192, '2024-11-21 07:14:08', '2024-11-21 07:13:51'),
(564, NULL, '1', 1, 4, 193, 'Testing timezone', 'testingtestintetestingtestintetestingtestintetestingtestintetestingtestintetestingtestintetestingtestintetestingtestinte', 'Jaipur', NULL, NULL, '2024-11-22', '18:35:00', '19:00:00', 5, 'all', 'not_repeat', '0', 'pending', NULL, '0', 192, '2024-11-21 09:35:48', '2024-11-21 09:35:48'),
(565, NULL, '1', 1, 4, 193, 'Testing id', 'testingtestingtestintestrisjaksjkasjkasjfkasjfaklasjfkalsjaskljfaskfjaskljfaskljflskafjsaklfjas;kljasfklasjfklasjfaklsjfasklfjaskfltestingtestingtestintestrisjaksjkasjkasjfkasjfaklasjfkalsjaskljfaskfjaskljfaskljflskafjsaklfjas;kljasfklasjfklasjfaklsjfasklfjaskfltestingtestingtestintestrisjaksjkasjkasjfkasjfaklasjfkalsjaskljfaskfjaskljfaskljflskafjsaklfjas;kljasfklasjfklasjfaklsjfasklfjaskfltestingtestingtestintestrisjaksjkasjkasjfkasjfaklasjfkalsjaskljfaskfjaskljfaskljflskafjsaklfjas;kljasfklasjfklasjfaklsjfasklfjaskfl', 'Jaipur', NULL, NULL, '2024-11-22', '18:40:00', '19:40:00', 5, 'all', 'not_repeat', '0', 'pending', NULL, '0', 192, '2024-11-21 09:37:55', '2024-11-21 09:37:55'),
(566, NULL, '1', 1, 4, 193, 'Tsting 24', 'sadfdsafsasadfdsafsasadfdsafsasadfdsafsasadfdsafsasadfdsafsasadfdsafsasadfdsafsasadfdsafsasadfdsafsasadfdsafsasadfdsafsasadfdsafsasadfdsafsasadfdsafsasadfdsafsasadfdsafsasadfdsafsasadfdsafsasadfdsafsasadfdsafsasadfdsafsasadfdsafsasadfdsafsasadfdsafsasadfdsafsasadfdsafsa', 'Jaipur', NULL, NULL, '2024-11-22', '15:11:00', '16:11:00', 5, 'all', 'not_repeat', '0', 'pending', NULL, '0', 192, '2024-11-21 09:41:19', '2024-11-21 09:41:19'),
(567, NULL, '1', 1, 4, 192, 'Testingtstingjkjakfsajdkjfl', 'afasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsaf', 'Jaipur', NULL, NULL, '2024-11-22', '15:13:00', '16:13:00', 10, 'all', 'not_repeat', '0', 'pending', NULL, '0', 192, '2024-11-21 09:44:01', '2024-11-21 09:44:01'),
(568, NULL, '1', 1, 4, 188, 'Testingtstingjkjakfsajdkjfl', 'afasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsafafasfasssfasfsaf', 'Jaipur', NULL, NULL, '2024-11-22', '15:13:00', '16:13:00', 10, 'all', 'not_repeat', '0', 'not_approved', NULL, '0', 192, '2024-11-22 20:58:46', '2024-11-22 20:58:46'),
(569, NULL, '1', 1, 4, 81, 'Testing timezone id21', 'asfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsafasfasfsasasfsaf', 'Jaipur', '5454', '454', '2024-11-22', '17:49:00', '19:00:00', 5, 'all', 'not_repeat', '0', 'approved', NULL, '0', 180, '2024-11-22 12:17:39', '2024-11-22 10:31:05'),
(571, NULL, '1', 1, 4, 77, 'testing account', 'asdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsafasdfsafsffsaf', 'Jaipur', NULL, NULL, '2024-11-23', '18:24:00', '19:24:00', 5, 'all', 'not_repeat', '0', 'not_approved', NULL, '0', 180, '2024-11-22 13:03:32', '2024-11-22 13:03:32'),
(572, NULL, '1', 1, 4, 81, 'Testing notification', 'testingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtesting', 'Jaipur', NULL, NULL, '2024-11-26', '11:29:00', '12:29:00', 5, 'all', 'not_repeat', '0', 'pending', NULL, '0', 180, '2024-11-25 06:00:08', '2024-11-25 06:00:08'),
(573, NULL, '1', 1, 4, 81, 'Testing notification 1', 'testingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtesting', 'Jaipur', NULL, NULL, '2024-11-26', '11:29:00', '12:29:00', 5, 'all', 'not_repeat', '0', 'approved', NULL, '0', 180, '2024-11-25 07:40:24', '2024-11-25 07:40:24');

-- --------------------------------------------------------

--
-- Table structure for table `activities_images`
--

CREATE TABLE `activities_images` (
  `id` int(11) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `gallery_img` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities_images`
--

INSERT INTO `activities_images` (`id`, `activity_id`, `gallery_img`, `created_at`, `updated_at`) VALUES
(5, 41, '886607055_demo3.jfif', '2024-09-16 18:54:54', '2024-08-30 05:35:21'),
(37, 67, '377654892_download.jpg', '2024-09-16 18:54:54', '2024-08-30 11:57:38'),
(42, 70, '261055417_d86e6a86d9ba19ae67e76ec42bd04659.jpg', '2024-09-16 18:54:54', '2024-08-30 12:43:59'),
(43, 70, '287109284_8ad2ebb502d8e50593079cb1b5817bfd.jpg', '2024-09-16 18:54:54', '2024-08-30 12:43:59'),
(44, 71, '737513811_d86e6a86d9ba19ae67e76ec42bd04659.jpg', '2024-09-16 18:54:54', '2024-08-30 12:45:58'),
(45, 71, '180249968_8ad2ebb502d8e50593079cb1b5817bfd.jpg', '2024-09-16 18:54:54', '2024-08-30 12:45:58'),
(46, 71, '202384404_download.jpg', '2024-09-16 18:54:54', '2024-08-30 12:45:58'),
(47, 73, '785934995_d86e6a86d9ba19ae67e76ec42bd04659.jpg', '2024-09-16 18:54:54', '2024-08-30 12:56:44'),
(52, 78, '922025798_1000023628.jpg', '2024-09-16 18:54:54', '2024-09-03 05:56:43'),
(53, 90, '930300617_demo2.jpg', '2024-09-16 18:54:54', '2024-09-04 13:13:48'),
(54, 90, '632397506_demo3.jfif', '2024-09-16 18:54:54', '2024-09-04 13:13:48'),
(55, 91, '127744678_demo2.jpg', '2024-09-16 18:54:54', '2024-09-04 13:19:55'),
(56, 92, '159247889_demo2.jpg', '2024-09-16 18:54:54', '2024-09-04 13:21:17'),
(57, 93, '388053825_demo2.jpg', '2024-09-16 18:54:54', '2024-09-04 13:23:12'),
(59, 94, '697780169_demo3.jfif', '2024-09-16 18:54:54', '2024-09-04 13:24:46'),
(72, 121, '894448148_cofie.jpg', '2024-09-16 18:54:54', '2024-09-09 06:54:39'),
(73, 121, '923613902_demo2.jpg', '2024-09-16 18:54:54', '2024-09-09 06:54:39'),
(89, 259, '473132436_mus.png', '2024-09-16 18:54:54', '2024-09-09 13:21:33'),
(90, 259, '182064764_cofie.jpg', '2024-09-16 18:54:54', '2024-09-09 13:21:33'),
(134, 271, '652157846_demo.jpg', '2024-09-16 18:54:54', '2024-09-12 07:38:35'),
(136, 271, '819442198_hava.jpg', '2024-09-16 18:54:54', '2024-09-12 09:17:52'),
(140, 271, '169930691_demo3.jfif', '2024-09-16 18:54:54', '2024-09-12 07:45:34'),
(150, 277, '929449653_demo-pic.jpg', '2024-09-16 18:54:54', '2024-09-13 07:07:40'),
(153, 305, '776058450_demo-pic.jpg', '2024-09-16 18:54:54', '2024-09-16 04:31:28'),
(191, 351, '393567574_jaipur.jpg', '2024-09-17 10:07:59', '2024-09-17 17:07:59'),
(192, 351, '861333990_demo-pic.jpg', '2024-09-17 10:07:59', '2024-09-17 17:07:59'),
(231, 552, '245161100_jaipur.jpg', '2024-11-05 05:39:08', '2024-11-05 05:39:08'),
(232, 552, '781670634_Running groups-1.png', '2024-11-05 05:39:08', '2024-11-05 05:39:08'),
(233, 553, '510428392_demo2.jpg', '2024-11-05 09:21:45', '2024-11-05 09:21:45'),
(234, 553, '781757511_demo-pic.jpg', '2024-11-05 09:21:45', '2024-11-05 09:21:45'),
(235, 554, '449142123_hava.jpg', '2024-11-05 09:23:39', '2024-11-05 09:23:39'),
(236, 554, '657201045_jaipur.jpg', '2024-11-05 09:23:39', '2024-11-05 09:23:39');

-- --------------------------------------------------------

--
-- Table structure for table `activities_reports`
--

CREATE TABLE `activities_reports` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `report_reason` varchar(255) NOT NULL,
  `report_description` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activities_reports`
--

INSERT INTO `activities_reports` (`id`, `user_id`, `activity_id`, `report_reason`, `report_description`, `created_at`, `updated_at`) VALUES
(10, 1, 14, 'Scam or fraud', NULL, '2024-08-23 06:56:23', '2024-10-22 04:38:34'),
(11, 1, 19, 'Inappropriate or misleading content', NULL, '2024-08-23 06:56:23', '2024-10-22 04:38:38'),
(13, 1, 14, 'Other', 'This is testing', '2024-08-23 06:56:26', '2024-10-22 04:38:41');

-- --------------------------------------------------------

--
-- Table structure for table `activities_reviews`
--

CREATE TABLE `activities_reviews` (
  `id` int(11) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `review` longtext NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activities_reviews`
--

INSERT INTO `activities_reviews` (`id`, `activity_id`, `user_id`, `rating`, `review`, `created_at`, `updated_at`) VALUES
(3, 15, 3, '4.5', 'This is testing review', '2024-08-26 11:45:36', '2024-08-22 09:08:54'),
(9, 21, 2, '5', 'This is testing review 3', '2024-08-26 11:45:18', '2024-08-26 11:31:00'),
(12, 15, 8, '3.5', 'This is testing review', '2024-08-28 05:11:13', '2024-08-28 05:11:13'),
(32, 549, 125, '3.5', 'This is testing review', '2024-11-25 05:27:14', '2024-11-25 05:27:14'),
(33, 464, 81, '2.5', 'loved it', '2024-11-25 05:35:15', '2024-11-25 05:35:15'),
(34, 464, 81, '1', 'amazing', '2024-11-25 05:37:41', '2024-11-25 05:37:41');

-- --------------------------------------------------------

--
-- Table structure for table `activity_repeat_schedules`
--

CREATE TABLE `activity_repeat_schedules` (
  `id` int(11) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `repeat_every` int(11) NOT NULL,
  `repeat_type` enum('week','day') NOT NULL,
  `repeat_on` enum('monday','tuesday','wednesday','thursday','friday','saturday','sunday') DEFAULT NULL COMMENT 'Null if choose repeat type have day null',
  `end_type` enum('never','on_date','after_occurrences') NOT NULL,
  `end_date` varchar(255) DEFAULT NULL COMMENT 'Nullable Date, only if "on_date" is selected',
  `occurrences` int(11) DEFAULT NULL COMMENT 'Nullable Integer, only if "after_occurrences" is selected',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_repeat_schedules`
--

INSERT INTO `activity_repeat_schedules` (`id`, `activity_id`, `repeat_every`, `repeat_type`, `repeat_on`, `end_type`, `end_date`, `occurrences`, `created_at`, `updated_at`) VALUES
(1, 86, 1, 'week', 'tuesday', 'on_date', '08-09-2024', 9, '2024-09-03 09:14:51', '2024-09-03 09:14:51'),
(2, 87, 1, 'week', 'tuesday', 'on_date', NULL, NULL, '2024-09-03 09:38:10', '2024-09-03 09:38:10'),
(3, 88, 4, 'week', 'thursday', 'on_date', '2024-09-05', NULL, '2024-09-04 12:45:18', '2024-09-04 12:45:18'),
(4, 89, 5, 'week', 'friday', 'after_occurrences', NULL, 2, '2024-09-05 04:58:02', '2024-09-05 04:58:02'),
(5, 90, 1, 'week', 'monday', 'on_date', '2024-09-25', NULL, '2024-09-09 08:55:21', '2024-09-04 13:13:48'),
(6, 91, 1, 'week', 'sunday', 'never', NULL, NULL, '2024-09-04 13:19:55', '2024-09-04 13:19:55'),
(7, 92, 1, 'week', 'sunday', 'after_occurrences', NULL, 2, '2024-09-04 13:21:17', '2024-09-04 13:21:17'),
(8, 93, 1, '', '', 'never', NULL, NULL, '2024-09-04 13:23:12', '2024-09-04 13:23:12'),
(9, 94, 2, '', '', 'on_date', '2024-10-05', NULL, '2024-09-04 13:24:46', '2024-09-04 13:24:46'),
(10, 95, 1, 'day', NULL, 'after_occurrences', NULL, 1, '2024-09-17 13:29:25', '2024-09-18 03:29:25'),
(11, 81, 4, '', '', 'after_occurrences', NULL, 3, '2024-09-05 07:12:39', '2024-09-05 07:12:39'),
(12, 96, 1, 'week', 'thursday', 'never', NULL, NULL, '2024-09-07 06:15:36', '2024-09-07 06:15:36'),
(13, 19, 6, '', '', 'after_occurrences', NULL, 3, '2024-09-05 11:55:37', '2024-09-05 11:55:37'),
(15, 99, 1, 'week', 'tuesday', 'on_date', '2024-09-14', NULL, '2024-09-09 04:40:29', '2024-09-06 12:50:43'),
(16, 100, 7, '', '', 'on_date', '2024-09-12', NULL, '2024-09-06 12:51:54', '2024-09-06 12:51:54'),
(17, 101, 2, 'week', 'wednesday', 'on_date', '2024-09-19', NULL, '2024-09-09 11:27:54', '2024-09-09 11:27:54'),
(19, 103, 4, 'day', NULL, 'after_occurrences', NULL, 1, '2024-09-09 07:43:22', '2024-09-09 07:43:22'),
(29, 116, 1, 'day', NULL, 'on_date', '2024-09-11', NULL, '2024-09-09 06:41:10', '2024-09-09 06:41:10'),
(32, 119, 4, 'day', NULL, 'after_occurrences', NULL, 3, '2024-09-09 06:51:19', '2024-09-09 06:51:19'),
(34, 121, 1, 'day', NULL, 'never', NULL, NULL, '2024-09-09 06:54:39', '2024-09-09 06:54:39'),
(154, 249, 4, 'day', NULL, 'after_occurrences', NULL, 2, '2024-09-09 12:44:05', '2024-09-09 12:44:05'),
(156, 251, 1, 'day', NULL, 'never', NULL, NULL, '2024-09-09 12:44:05', '2024-09-09 12:44:05'),
(159, 254, 1, 'day', NULL, 'never', NULL, NULL, '2024-09-09 12:48:03', '2024-09-09 12:48:03'),
(160, 255, 1, 'day', NULL, 'never', NULL, NULL, '2024-09-09 12:49:04', '2024-09-09 12:49:04'),
(163, 263, 1, 'day', NULL, 'never', NULL, NULL, '2024-09-10 09:40:05', '2024-09-10 09:40:05'),
(169, 268, 1, 'day', NULL, 'never', NULL, NULL, '2024-09-11 09:40:04', '2024-09-11 09:40:04'),
(171, 271, 1, 'day', NULL, 'never', NULL, NULL, '2024-09-12 10:01:32', '2024-09-12 10:01:32'),
(172, 272, 5, 'week', 'friday', 'after_occurrences', NULL, 1, '2024-09-13 02:54:04', '2024-09-13 02:54:04'),
(173, 274, 1, 'week', 'thursday', 'never', NULL, NULL, '2024-09-13 05:11:05', '2024-09-13 05:11:05'),
(180, 302, 1, 'week', 'sunday', 'never', NULL, NULL, '2024-09-14 00:30:07', '2024-09-14 00:30:07'),
(181, 303, 1, 'week', 'sunday', 'never', NULL, NULL, '2024-09-15 00:30:05', '2024-09-15 00:30:05'),
(211, 383, 1, 'week', 'wednesday', 'after_occurrences', NULL, 3, '2024-09-20 11:25:31', '2024-09-20 11:25:31'),
(213, 385, 1, 'day', NULL, 'after_occurrences', NULL, 3, '2024-09-21 15:54:40', '2024-09-21 15:54:40'),
(214, 386, 1, 'week', 'sunday', 'after_occurrences', NULL, 1, '2024-09-21 07:37:00', '2024-09-21 07:37:00'),
(218, 391, 1, 'day', NULL, 'never', NULL, NULL, '2024-09-21 09:06:18', '2024-09-21 09:06:18'),
(224, 400, 1, 'week', 'sunday', 'never', NULL, NULL, '2024-09-22 09:06:03', '2024-09-22 09:06:03'),
(225, 401, 1, 'week', 'sunday', 'after_occurrences', NULL, 0, '2024-09-22 11:06:05', '2024-09-22 11:06:05'),
(227, 403, 1, 'day', NULL, 'after_occurrences', NULL, 1, '2024-09-23 06:49:03', '2024-09-23 06:49:03'),
(228, 404, 1, 'day', NULL, 'after_occurrences', NULL, 3, '2024-09-23 09:04:30', '2024-09-23 09:04:30'),
(229, 405, 1, 'week', 'monday', 'after_occurrences', NULL, 2, '2024-09-24 06:25:40', '2024-09-24 06:25:40'),
(230, 406, 1, 'week', 'monday', 'after_occurrences', NULL, 2, '2024-09-24 06:33:45', '2024-09-24 06:33:45'),
(231, 407, 1, 'week', 'monday', 'after_occurrences', NULL, 2, '2024-09-24 06:34:23', '2024-09-24 06:34:23'),
(232, 408, 1, 'week', 'monday', 'after_occurrences', NULL, 2, '2024-09-24 06:39:26', '2024-09-24 06:39:26'),
(233, 409, 1, 'week', 'monday', 'after_occurrences', NULL, 2, '2024-09-24 06:45:18', '2024-09-24 06:45:18'),
(234, 410, 1, 'week', 'monday', 'after_occurrences', NULL, 2, '2024-09-24 06:46:47', '2024-09-24 06:46:47'),
(236, 412, 1, 'week', 'monday', 'after_occurrences', NULL, 2, '2024-09-24 06:53:27', '2024-09-24 06:53:27'),
(237, 413, 1, 'week', 'monday', 'after_occurrences', NULL, 2, '2024-09-24 06:54:17', '2024-09-24 06:54:17'),
(238, 414, 1, 'week', 'monday', 'after_occurrences', NULL, 2, '2024-09-24 06:55:46', '2024-09-24 06:55:46'),
(239, 415, 1, 'week', 'monday', 'after_occurrences', NULL, 2, '2024-09-24 06:56:21', '2024-09-24 06:56:21'),
(240, 416, 1, 'week', 'monday', 'after_occurrences', NULL, 2, '2024-09-24 06:57:00', '2024-09-24 06:57:00'),
(242, 420, 1, 'week', 'monday', 'after_occurrences', NULL, 2, '2024-09-25 11:42:27', '2024-09-25 11:42:27'),
(255, 442, 1, 'week', 'wednesday', 'never', NULL, NULL, '2024-09-26 05:56:04', '2024-09-26 05:56:04'),
(261, 452, 1, 'day', NULL, 'after_occurrences', NULL, 2, '2024-09-27 07:49:47', '2024-09-27 07:49:47'),
(262, 453, 1, 'day', NULL, 'after_occurrences', NULL, 1, '2024-09-27 08:30:05', '2024-09-27 08:30:05'),
(263, 454, 1, 'day', NULL, 'after_occurrences', NULL, 0, '2024-09-28 08:30:05', '2024-09-28 08:30:05'),
(277, 486, 1, 'week', 'tuesday', 'after_occurrences', NULL, 2, '2024-10-01 12:56:48', '2024-10-01 12:56:48'),
(278, 487, 1, 'week', 'tuesday', 'after_occurrences', NULL, 2, '2024-10-01 13:01:06', '2024-10-01 13:01:06'),
(279, 488, 1, 'week', 'tuesday', 'after_occurrences', NULL, 1, '2024-10-01 13:02:03', '2024-10-01 13:02:03'),
(280, 489, 1, 'week', 'thursday', 'after_occurrences', NULL, 2, '2024-10-01 13:11:03', '2024-10-01 13:11:03'),
(281, 490, 1, 'week', 'thursday', 'after_occurrences', NULL, 1, '2024-10-01 13:12:04', '2024-10-01 13:12:04'),
(283, 492, 1, 'week', 'tuesday', 'after_occurrences', NULL, 1, '2024-10-02 12:55:05', '2024-10-02 12:55:05'),
(295, 528, 1, 'week', 'tuesday', 'after_occurrences', NULL, 0, '2024-10-08 12:55:04', '2024-10-08 12:55:04'),
(296, 529, 1, 'week', 'tuesday', 'after_occurrences', NULL, 0, '2024-10-08 12:59:04', '2024-10-08 12:59:04'),
(298, 531, 1, 'week', 'thursday', 'after_occurrences', NULL, 0, '2024-10-10 13:09:04', '2024-10-10 13:09:04'),
(300, 538, 5, 'week', 'friday', 'after_occurrences', NULL, 0, '2024-10-18 12:06:04', '2024-10-18 12:06:04'),
(302, 556, 1, 'week', 'sunday', 'on_date', '2024-11-11', NULL, '2024-11-19 13:05:05', '2024-11-19 13:05:05'),
(303, 557, 1, 'week', 'tuesday', 'on_date', '2024-11-13', NULL, '2024-11-08 05:04:06', '2024-11-08 05:04:06'),
(304, 558, 1, 'week', 'tuesday', 'on_date', '2024-11-13', NULL, '2024-11-09 03:30:05', '2024-11-09 03:30:05'),
(305, 559, 1, 'week', 'sunday', 'on_date', '2024-11-11', NULL, '2024-11-09 03:45:03', '2024-11-09 03:45:03'),
(306, 561, 1, 'week', 'monday', 'after_occurrences', NULL, 2, '2024-11-20 04:27:38', '2024-11-20 04:27:38');

-- --------------------------------------------------------

--
-- Table structure for table `activity_settings`
--

CREATE TABLE `activity_settings` (
  `id` int(11) NOT NULL,
  `max_occurrences` int(11) NOT NULL,
  `share_text` varchar(500) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_settings`
--

INSERT INTO `activity_settings` (`id`, `max_occurrences`, `share_text`, `created_at`, `updated_at`) VALUES
(1, 3, 'Hey! I think you should check out this activity on PlusOnes!', '2024-11-20 20:34:58', '2024-11-20 20:34:58');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role` enum('admin') DEFAULT 'admin',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `phone`, `image`, `email`, `address`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '$2y$10$38HYSikqaKb3EOi1EJImzuZKN/Vmm.h25B3cOyevHesoEQgmH1IKG', '1234567890', '1727671662.png', 'testnbt50@gmail.com', 'Jaipur', 'admin', '2024-09-30 04:47:42', '2024-09-30 04:47:42');

-- --------------------------------------------------------

--
-- Table structure for table `attendees_requests`
--

CREATE TABLE `attendees_requests` (
  `id` int(11) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `request_type` enum('waitlist','immediate_join') NOT NULL,
  `waitlist_message` varchar(255) DEFAULT NULL,
  `user_attendance` enum('1','0','2') NOT NULL COMMENT 'Present = 1, Absent =0, Pending=2',
  `request_status` enum('pending','accept','reject','leave') DEFAULT 'pending' COMMENT 'accept/reject/by host',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendees_requests`
--

INSERT INTO `attendees_requests` (`id`, `activity_id`, `user_id`, `request_type`, `waitlist_message`, `user_attendance`, `request_status`, `created_at`, `updated_at`) VALUES
(84, 15, 1, 'immediate_join', NULL, '2', 'pending', '2024-08-22 11:53:33', '2024-10-24 12:50:36'),
(85, 15, 72, 'immediate_join', NULL, '2', 'leave', '2024-08-22 11:59:52', '2024-09-02 05:50:07'),
(91, 19, 72, 'immediate_join', NULL, '2', 'pending', '2024-08-22 12:55:51', '2024-08-27 04:06:59'),
(92, 15, 64, 'immediate_join', NULL, '2', 'accept', '2024-08-23 04:53:09', '2024-08-23 04:53:09'),
(125, 21, 76, 'immediate_join', NULL, '1', 'accept', '2024-09-06 04:53:47', '2024-09-06 04:58:35'),
(126, 21, 1, 'immediate_join', NULL, '1', 'accept', '2024-09-06 04:53:55', '2024-09-06 04:58:36'),
(127, 21, 2, 'immediate_join', NULL, '0', 'accept', '2024-09-06 04:54:15', '2024-09-06 04:58:38'),
(129, 21, 26, 'waitlist', NULL, '2', 'pending', '2024-09-06 04:58:13', '2024-09-06 04:58:13'),
(144, 385, 130, 'immediate_join', NULL, '2', 'leave', '2024-09-21 07:12:55', '2024-09-21 07:21:12'),
(158, 397, 2, 'immediate_join', NULL, '2', 'pending', '2024-09-21 12:52:19', '2024-09-21 12:52:19'),
(164, 397, 1, 'immediate_join', NULL, '1', 'accept', '2024-09-21 13:02:21', '2024-10-28 04:46:11'),
(171, 404, 8, 'immediate_join', NULL, '2', 'pending', '2024-09-23 19:35:22', '2024-09-23 19:35:22'),
(208, 21, 8, 'waitlist', 'Hey! I’d love to join!', '2', 'pending', '2024-09-28 16:07:17', '2024-09-28 16:07:17'),
(209, 455, 81, 'immediate_join', NULL, '2', 'leave', '2024-09-30 07:06:09', '2024-10-28 09:34:13'),
(210, 95, 81, 'immediate_join', NULL, '2', 'leave', '2024-09-30 07:06:20', '2024-11-14 07:40:29'),
(213, 383, 81, 'immediate_join', NULL, '2', 'leave', '2024-09-30 07:07:04', '2024-10-28 11:30:36'),
(218, 464, 146, 'immediate_join', NULL, '2', 'accept', '2024-10-04 07:43:18', '2024-11-06 11:06:14'),
(219, 479, 146, 'immediate_join', NULL, '0', 'accept', '2024-10-04 10:49:19', '2024-10-11 09:51:14'),
(221, 479, 74, 'immediate_join', NULL, '1', 'accept', '2024-10-04 10:57:22', '2024-10-11 09:49:22'),
(224, 479, 153, 'immediate_join', NULL, '1', 'accept', '2024-10-04 11:04:41', '2024-10-11 09:51:28'),
(227, 468, 153, 'immediate_join', NULL, '1', 'accept', '2024-10-04 11:08:52', '2024-10-09 12:07:07'),
(228, 464, 153, 'immediate_join', NULL, '2', 'accept', '2024-10-04 11:11:57', '2024-11-06 11:06:16'),
(230, 95, 74, 'immediate_join', NULL, '2', 'accept', '2024-10-05 04:38:21', '2024-11-11 07:38:13'),
(231, 455, 130, 'immediate_join', NULL, '2', 'pending', '2024-10-05 04:49:12', '2024-10-05 04:49:12'),
(233, 464, 108, 'immediate_join', NULL, '2', 'pending', '2024-10-05 05:58:45', '2024-10-05 05:58:45'),
(257, 504, 130, 'immediate_join', NULL, '0', 'accept', '2024-10-08 05:35:40', '2024-10-08 06:00:45'),
(259, 536, 130, 'immediate_join', NULL, '0', 'accept', '2024-10-15 06:34:23', '2024-10-15 06:36:01'),
(260, 455, 179, 'immediate_join', NULL, '2', 'pending', '2024-10-24 09:46:36', '2024-10-24 09:46:36'),
(267, 550, 161, 'immediate_join', NULL, '0', 'accept', '2024-10-28 06:30:30', '2024-10-29 12:37:26'),
(268, 550, 13, 'immediate_join', NULL, '2', 'accept', '2024-10-28 06:31:48', '2024-10-28 12:00:54'),
(271, 550, 39, 'waitlist', 'Hello i am wating for join', '2', 'pending', '2024-10-28 06:38:45', '2024-10-29 12:01:40'),
(273, 551, 161, 'immediate_join', NULL, '1', 'accept', '2024-10-29 09:59:49', '2024-10-29 12:37:20'),
(275, 464, 81, 'immediate_join', NULL, '2', 'accept', '2024-11-06 11:12:23', '2024-11-06 11:13:58'),
(276, 464, 74, 'immediate_join', NULL, '2', 'leave', '2024-11-06 11:26:21', '2024-11-06 12:59:26'),
(280, 545, 187, 'immediate_join', NULL, '1', 'accept', '2024-11-14 04:53:13', '2024-11-22 20:57:04'),
(282, 545, 191, 'waitlist', 'Hello i am wating for join', '2', 'reject', '2024-11-14 07:58:22', '2024-11-14 15:22:48'),
(283, 552, 81, 'immediate_join', NULL, '2', 'pending', '2024-11-15 18:04:54', '2024-11-15 18:04:54'),
(284, 560, 81, 'immediate_join', NULL, '2', 'pending', '2024-11-19 19:50:48', '2024-11-19 19:50:48'),
(286, 545, 1, 'waitlist', 'Hello i am wating for join', '2', 'reject', '2024-11-22 09:49:55', '2024-11-22 19:59:42'),
(288, 545, 74, 'waitlist', 'Hello i am wating for join', '2', 'reject', '2024-11-22 12:44:03', '2024-11-23 10:12:05'),
(290, 548, 177, 'immediate_join', NULL, '2', 'accept', '2024-11-22 13:50:12', '2024-11-22 13:51:35'),
(291, 547, 177, 'immediate_join', NULL, '2', 'accept', '2024-11-23 11:20:14', '2024-11-23 11:21:26'),
(292, 543, 177, 'immediate_join', NULL, '2', 'pending', '2024-11-23 13:19:18', '2024-11-23 13:19:18');

-- --------------------------------------------------------

--
-- Table structure for table `cancellation_requests`
--

CREATE TABLE `cancellation_requests` (
  `id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `cancellation_time` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cartSinglePayments`
--

CREATE TABLE `cartSinglePayments` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `paymentId` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `paidAt` longtext DEFAULT NULL,
  `allData` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cartSinglePayments`
--

INSERT INTO `cartSinglePayments` (`id`, `userId`, `paymentId`, `amount`, `currency`, `paidAt`, `allData`, `created_at`, `updated_at`) VALUES
(11, 130, 'tr_miwoG5VjKn', 3, 'EUR', '2024-10-15T05:14:35+00:00', '{\"resource\":\"payment\",\"id\":\"tr_miwoG5VjKn\",\"mode\":\"test\",\"createdAt\":\"2024-10-15T05:14:35+00:00\",\"amount\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"description\":\"Order #12345\",\"method\":\"creditcard\",\"metadata\":{\"order_id\":\"12345\"},\"status\":\"paid\",\"paidAt\":\"2024-10-15T05:14:35+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_mnMp5oCDJP\",\"mandateId\":\"mdt_8CYXcMU7xr\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://webshop.example.org/payments/webhook/\",\"settlementAmount\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_miwoG5VjKn\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_miwoG5VjKn\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.vx24zw\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_mnMp5oCDJP\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_mnMp5oCDJP/mandates/mdt_8CYXcMU7xr\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/create-payment\",\"type\":\"text/html\"}}}', '2024-10-15 05:14:35', '2024-10-15 05:14:35'),
(12, 130, 'tr_fyyWQkKXsP', 3, 'EUR', '2024-10-15T05:52:58+00:00', '{\"resource\":\"payment\",\"id\":\"tr_fyyWQkKXsP\",\"mode\":\"test\",\"createdAt\":\"2024-10-15T05:52:58+00:00\",\"amount\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"description\":\"Order #12345\",\"method\":\"creditcard\",\"metadata\":{\"order_id\":\"12345\"},\"status\":\"paid\",\"paidAt\":\"2024-10-15T05:52:58+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_mnMp5oCDJP\",\"mandateId\":\"mdt_8CYXcMU7xr\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://webshop.example.org/payments/webhook/\",\"settlementAmount\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_fyyWQkKXsP\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_fyyWQkKXsP\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.rab6pp\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_mnMp5oCDJP\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_mnMp5oCDJP/mandates/mdt_8CYXcMU7xr\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/create-payment\",\"type\":\"text/html\"}}}', '2024-10-15 05:52:58', '2024-10-15 05:52:58'),
(13, 130, 'tr_yB6upXof9y', 3, 'EUR', '2024-10-15T05:55:40+00:00', '{\"resource\":\"payment\",\"id\":\"tr_yB6upXof9y\",\"mode\":\"test\",\"createdAt\":\"2024-10-15T05:55:40+00:00\",\"amount\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"description\":\"Order #12345\",\"method\":\"creditcard\",\"metadata\":{\"order_id\":\"12345\"},\"status\":\"paid\",\"paidAt\":\"2024-10-15T05:55:40+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_mnMp5oCDJP\",\"mandateId\":\"mdt_8CYXcMU7xr\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://webshop.example.org/payments/webhook/\",\"settlementAmount\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_yB6upXof9y\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_yB6upXof9y\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.6zlvqa\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_mnMp5oCDJP\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_mnMp5oCDJP/mandates/mdt_8CYXcMU7xr\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/create-payment\",\"type\":\"text/html\"}}}', '2024-10-15 05:55:40', '2024-10-15 05:55:40'),
(14, 130, 'tr_xpgzWMSgNS', 3, 'EUR', '2024-10-15T06:16:46+00:00', '{\"resource\":\"payment\",\"id\":\"tr_xpgzWMSgNS\",\"mode\":\"test\",\"createdAt\":\"2024-10-15T06:16:46+00:00\",\"amount\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"description\":\"Order #12345\",\"method\":\"creditcard\",\"metadata\":{\"order_id\":\"12345\"},\"status\":\"paid\",\"paidAt\":\"2024-10-15T06:16:46+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_mnMp5oCDJP\",\"mandateId\":\"mdt_8CYXcMU7xr\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://webshop.example.org/payments/webhook/\",\"settlementAmount\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_xpgzWMSgNS\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_xpgzWMSgNS\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.e0ncli\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_mnMp5oCDJP\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_mnMp5oCDJP/mandates/mdt_8CYXcMU7xr\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/create-payment\",\"type\":\"text/html\"}}}', '2024-10-15 06:16:47', '2024-10-15 06:16:47'),
(16, 130, 'tr_7X5MEZvdA9', 3, 'EUR', '2024-10-15T06:36:01+00:00', '{\"resource\":\"payment\",\"id\":\"tr_7X5MEZvdA9\",\"mode\":\"test\",\"createdAt\":\"2024-10-15T06:36:01+00:00\",\"amount\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"description\":\"Order #12345\",\"method\":\"creditcard\",\"metadata\":{\"order_id\":\"12345\"},\"status\":\"paid\",\"paidAt\":\"2024-10-15T06:36:01+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_mnMp5oCDJP\",\"mandateId\":\"mdt_8CYXcMU7xr\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://webshop.example.org/payments/webhook/\",\"settlementAmount\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_7X5MEZvdA9\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_7X5MEZvdA9\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.jb274z\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_mnMp5oCDJP\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_mnMp5oCDJP/mandates/mdt_8CYXcMU7xr\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/create-payment\",\"type\":\"text/html\"}}}', '2024-10-15 06:36:01', '2024-10-15 06:36:01'),
(17, 159, 'tr_QwofC42bS9', 3, 'EUR', '2024-10-24T10:28:14+00:00', '{\"resource\":\"payment\",\"id\":\"tr_QwofC42bS9\",\"mode\":\"test\",\"createdAt\":\"2024-10-24T10:28:14+00:00\",\"amount\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"description\":\"Order #12345\",\"method\":\"creditcard\",\"metadata\":{\"order_id\":\"12345\"},\"status\":\"paid\",\"paidAt\":\"2024-10-24T10:28:14+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_MECUZaUojy\",\"mandateId\":\"mdt_TQESYTsvHh\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://webshop.example.org/payments/webhook/\",\"settlementAmount\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_QwofC42bS9\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_QwofC42bS9\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.o9486f\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_MECUZaUojy\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_MECUZaUojy/mandates/mdt_TQESYTsvHh\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/create-payment\",\"type\":\"text/html\"}}}', '2024-10-24 10:28:15', '2024-10-24 10:28:15'),
(18, 179, 'tr_xo8cyVdLVf', 3, 'EUR', '2024-10-24T10:28:55+00:00', '{\"resource\":\"payment\",\"id\":\"tr_xo8cyVdLVf\",\"mode\":\"test\",\"createdAt\":\"2024-10-24T10:28:55+00:00\",\"amount\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"description\":\"Order #12345\",\"method\":\"creditcard\",\"metadata\":{\"order_id\":\"12345\"},\"status\":\"paid\",\"paidAt\":\"2024-10-24T10:28:55+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_6Xr9rmJqxZ\",\"mandateId\":\"mdt_cL7catqAJU\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://webshop.example.org/payments/webhook/\",\"settlementAmount\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_xo8cyVdLVf\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_xo8cyVdLVf\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.qf2g8b\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_6Xr9rmJqxZ\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_6Xr9rmJqxZ/mandates/mdt_cL7catqAJU\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/create-payment\",\"type\":\"text/html\"}}}', '2024-10-24 10:28:55', '2024-10-24 10:28:55'),
(19, 179, 'tr_4gcejn7Lbi', 3, 'EUR', '2024-10-24T11:21:28+00:00', '{\"resource\":\"payment\",\"id\":\"tr_4gcejn7Lbi\",\"mode\":\"test\",\"createdAt\":\"2024-10-24T11:21:28+00:00\",\"amount\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"description\":\"Order #12345\",\"method\":\"creditcard\",\"metadata\":{\"order_id\":\"12345\"},\"status\":\"paid\",\"paidAt\":\"2024-10-24T11:21:28+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_MECUZaUojy\",\"mandateId\":\"mdt_TQESYTsvHh\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://webshop.example.org/payments/webhook/\",\"settlementAmount\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_4gcejn7Lbi\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_4gcejn7Lbi\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.hn3dnc\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_MECUZaUojy\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_MECUZaUojy/mandates/mdt_TQESYTsvHh\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/create-payment\",\"type\":\"text/html\"}}}', '2024-10-24 11:21:28', '2024-10-24 11:21:28'),
(20, 74, 'tr_ae98Dzx7bn', 3, 'EUR', '2024-11-06T11:58:41+00:00', '{\"resource\":\"payment\",\"id\":\"tr_ae98Dzx7bn\",\"mode\":\"test\",\"createdAt\":\"2024-11-06T11:58:41+00:00\",\"amount\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"description\":\"Order #12345\",\"method\":\"creditcard\",\"metadata\":{\"order_id\":\"12345\"},\"status\":\"paid\",\"paidAt\":\"2024-11-06T11:58:41+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_jAEuWnWdBo\",\"mandateId\":\"mdt_iZ38qFFuA3\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://webshop.example.org/payments/webhook/\",\"settlementAmount\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_ae98Dzx7bn\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_ae98Dzx7bn\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.uzvrxi\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo/mandates/mdt_iZ38qFFuA3\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/create-payment\",\"type\":\"text/html\"}}}', '2024-11-06 11:58:41', '2024-11-06 11:58:41'),
(21, 74, 'tr_xuWE54XMLE', 3, 'EUR', '2024-11-06T12:22:53+00:00', '{\"resource\":\"payment\",\"id\":\"tr_xuWE54XMLE\",\"mode\":\"test\",\"createdAt\":\"2024-11-06T12:22:53+00:00\",\"amount\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"description\":\"Order #12345\",\"method\":\"creditcard\",\"metadata\":{\"order_id\":\"12345\"},\"status\":\"paid\",\"paidAt\":\"2024-11-06T12:22:53+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_jAEuWnWdBo\",\"mandateId\":\"mdt_iZ38qFFuA3\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://webshop.example.org/payments/webhook/\",\"settlementAmount\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_xuWE54XMLE\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_xuWE54XMLE\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.ykuken\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo/mandates/mdt_iZ38qFFuA3\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/create-payment\",\"type\":\"text/html\"}}}', '2024-11-06 12:22:53', '2024-11-06 12:22:53'),
(22, 179, 'tr_8Mib3V4Ysg', 3, 'EUR', '2024-11-06T12:46:21+00:00', '{\"resource\":\"payment\",\"id\":\"tr_8Mib3V4Ysg\",\"mode\":\"test\",\"createdAt\":\"2024-11-06T12:46:21+00:00\",\"amount\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"description\":\"Order #12345\",\"method\":\"creditcard\",\"metadata\":{\"order_id\":\"12345\"},\"status\":\"paid\",\"paidAt\":\"2024-11-06T12:46:21+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_jAEuWnWdBo\",\"mandateId\":\"mdt_iZ38qFFuA3\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://webshop.example.org/payments/webhook/\",\"settlementAmount\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_8Mib3V4Ysg\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_8Mib3V4Ysg\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.kkb3cy\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo/mandates/mdt_iZ38qFFuA3\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/create-payment\",\"type\":\"text/html\"}}}', '2024-11-06 12:46:21', '2024-11-06 12:46:21'),
(23, 74, 'tr_VpQv3qhLdT', 3, 'EUR', '2024-11-06T12:52:39+00:00', '{\"resource\":\"payment\",\"id\":\"tr_VpQv3qhLdT\",\"mode\":\"test\",\"createdAt\":\"2024-11-06T12:52:39+00:00\",\"amount\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"description\":\"Order #12345\",\"method\":\"creditcard\",\"metadata\":{\"order_id\":\"12345\"},\"status\":\"paid\",\"paidAt\":\"2024-11-06T12:52:39+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_jAEuWnWdBo\",\"mandateId\":\"mdt_iZ38qFFuA3\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://webshop.example.org/payments/webhook/\",\"settlementAmount\":{\"value\":\"3.00\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_VpQv3qhLdT\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_VpQv3qhLdT\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.u4uisz\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo/mandates/mdt_iZ38qFFuA3\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/create-payment\",\"type\":\"text/html\"}}}', '2024-11-06 12:52:39', '2024-11-06 12:52:39'),
(24, 74, 'tr_wQkJxQUvJR', 4, 'EUR', '2024-11-06T12:59:26+00:00', '{\"resource\":\"payment\",\"id\":\"tr_wQkJxQUvJR\",\"mode\":\"test\",\"createdAt\":\"2024-11-06T12:59:26+00:00\",\"amount\":{\"value\":\"4.00\",\"currency\":\"EUR\"},\"description\":\"Order #12345\",\"method\":\"creditcard\",\"metadata\":{\"order_id\":\"12345\"},\"status\":\"paid\",\"paidAt\":\"2024-11-06T12:59:26+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"4.00\",\"currency\":\"EUR\"},\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_jAEuWnWdBo\",\"mandateId\":\"mdt_iZ38qFFuA3\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://webshop.example.org/payments/webhook/\",\"settlementAmount\":{\"value\":\"4.00\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_wQkJxQUvJR\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_wQkJxQUvJR\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.xk5nz2\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo/mandates/mdt_iZ38qFFuA3\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/create-payment\",\"type\":\"text/html\"}}}', '2024-11-06 12:59:26', '2024-11-06 12:59:26');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '0' COMMENT '1=>Active,0=>InActive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sports', '1728364975.png', '1', '2024-10-08 05:22:55', '2024-10-08 05:22:55'),
(2, 'Learning', '1728365399.png', '1', '2024-10-08 05:29:59', '2024-10-08 05:29:59'),
(3, 'Food & Drinks', '1728365569.png', '1', '2024-10-08 05:32:49', '2024-10-08 05:32:49'),
(4, 'Entertainment', '1728365539.png', '1', '2024-10-08 05:32:19', '2024-10-08 05:32:19'),
(5, 'Arts', '1728365332.png', '1', '2024-10-08 05:28:52', '2024-10-08 05:28:52'),
(17, 'Hobbies', '1728365596.png', '1', '2024-11-23 17:49:22', '2024-11-23 17:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `first_name`, `last_name`, `country_code`, `mobile`, `email`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'Data', '+91', '1234567890', 'testdata@gmail.com', 'This is testing description', '2024-10-05 12:40:11', '2024-10-05 12:40:11'),
(2, 'Test', 'Data', '+91', '1234567890', 'testdata11@gmail.com', 'This is testing description', '2024-10-05 13:15:37', '2024-10-05 12:42:17'),
(3, 'hhhgu', 'gghih', '+31', '1111122222', 'testdata@gmail.com', 'gufu', '2024-10-07 05:07:20', '2024-10-07 05:07:20'),
(4, 'hhhgu', 'gghih', '+31', '1111122222', 'kfuffh@gmail.com', 'gufu', '2024-10-07 05:07:54', '2024-10-07 05:07:54'),
(5, 'hhhgu', 'gghih', '+31', '1111122222', 'testdata@gmail.com', 'gufu', '2024-10-07 05:18:25', '2024-10-07 05:18:25'),
(6, 'hhh', 'uuh', '+91', '1111122222', 'fgg@gmail.com', 'cfyg', '2024-10-07 05:43:39', '2024-10-07 05:43:39'),
(7, 'hhh', 'uuh', '+91', '1111122222', 'fgg@gmail.com', 'cfyg', '2024-10-07 05:44:32', '2024-10-07 05:44:32'),
(8, 'hhh', 'uuh', '+91', '1111122222', 'fgg@gmail.com', 'cfyg', '2024-10-07 05:45:44', '2024-10-07 05:45:44'),
(9, 'hhh', 'uuh', '+91', '1111122222', 'fgg@gmail.com', 'cfyg', '2024-10-07 05:47:29', '2024-10-07 05:47:29'),
(10, 'hhh', 'uuh', '+91', '1111122222', 'fgg@gmail.com', 'cfyg', '2024-10-07 05:47:51', '2024-10-07 05:47:51'),
(11, 'hhh', 'uuh', '+91', '1111122222', 'fgg@gmail.com', 'cfyg', '2024-10-07 05:49:19', '2024-10-07 05:49:19'),
(12, 'hhh', 'uuh', '+91', '1111122222', 'fgg@gmail.com', 'cfyg', '2024-10-07 05:49:28', '2024-10-07 05:49:28'),
(13, 'hhh', 'uuh', '+91', '1111122222', 'fgg@gmail.com', 'cfyg', '2024-10-07 05:50:43', '2024-10-07 05:50:43'),
(14, 'hhh', 'uuh', '+91', '1111122222', 'fgg@gmail.com', 'cfyg', '2024-10-07 05:51:48', '2024-10-07 05:51:48'),
(15, 'hdhhdh', 'hheh', '+91', '1111112222', 'shsgs@gmail.com', 'gege', '2024-10-07 05:53:28', '2024-10-07 05:53:28'),
(16, 'dgf', 'ghg', '+91', '1111122222', 'fh@gmail.com', 'fg', '2024-10-07 05:57:06', '2024-10-07 05:57:06'),
(17, 'vhhhh', 'bhhh', '+31', '1111122222', 'ggg@gmail.com', 'fggg', '2024-10-07 06:02:22', '2024-10-07 06:02:22'),
(18, 'hhhgu', 'gghih', '+31', '1111122222', 'testdata@gmail.com', 'gufu', '2024-10-07 11:18:27', '2024-10-07 11:18:27'),
(19, 'hhhgu', 'gghih', '+31', '1111122222', 'testdata@gmail.com', 'gufu', '2024-10-11 06:00:13', '2024-10-11 06:00:13');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `template_name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `email_content` longtext NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `user_id`, `template_name`, `subject`, `email_content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'Activity approved | For hosts', 'Your activity has been approved!', '<p>Dear {$first_name},</p>\r\n\r\n<p>Great news! Your request for activity <strong>{$activity_name}</strong> has been <strong>approved</strong>. We&rsquo;re excited for you to connect and enjoy this activity with your new PlusOne(s).<br />\r\n<br />\r\n<strong>Activity Details:</strong></p>\r\n\r\n<ul>\r\n	<li>&nbsp; &nbsp;&nbsp;<strong>Activity Name:</strong> {$activity_name}</li>\r\n	<li>&nbsp;&nbsp;&nbsp; <strong>Date &amp; Time:</strong> {$date, $start_at, $end_at}</li>\r\n	<li>&nbsp;&nbsp;&nbsp; <strong>Location:</strong> {$location}</li>\r\n</ul>\r\n\r\n<p><strong>Connect with your PlusOne(s)</strong><br />\r\nTo ensure a smooth and enjoyable experience, feel free to reach out to the other attendees directly via the PlusOnes app.<br />\r\n<br />\r\n<strong>Share your experience</strong><br />\r\nAfter the activity, please consider leaving feedback for the PlusOnes community and confirm who attended the activity. Your feedback helps to&nbsp;keep the quality high and ensure every PlusOnes experience is a great one.&nbsp;<br />\r\n<br />\r\n<strong>Change of plans?</strong><br />\r\nReliability helps keep our community fun and enjoyable for everyone! When you join or host an activity, others are counting on you to show up. Life happens, and it&rsquo;s okay to cancel if needed&mdash;just try to do it at least 24 hours in advance. <strong>Late cancellations and no-shows can disrupt plans and will incur a fee.</strong> This helps create a better experience for both hosts and attendees.<br />\r\n<br />\r\nFor more information, read our <a href=\"https://plusonesapp.com/community-guideliness\">Community Guidelines</a>.&nbsp;</p>\r\n\r\n<p>If you have any questions or need assistance, simply reach out to us via the Help Center in the PlusOnes app!</p>\r\n\r\n<p>Enjoy the activity!<br />\r\nThe PlusOnes Team</p>', '2024-09-12 05:04:15', '2024-11-23 18:17:26', '2024-09-12 05:04:15'),
(2, NULL, 'Activity request to leave activity', 'You have successfully left the activity', '<p>Dear {$first_name},</p>\r\n\r\n<p>We wanted to let you know that you have successfully left the activity &quot;{$activity_name}.&quot;</p>\r\n\r\n<p><strong>Activity Details:</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;<strong> Activity Name:</strong> {$activity_name}<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Date &amp; Time:</strong> {$date, $start_at, $end_at}<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Location:</strong> {$location}</p>\r\n\r\n<p>If you have any questions or need assistance, our support team is here to help. Simply reach out to us via the Help Center in the PlusOnes app&nbsp;or contact us at plusonesapp@gmailc.om.</p>\r\n\r\n<p>Best regards,<br />\r\nThe PlusOnes Team</p>', '2024-09-12 05:06:56', '2024-11-20 21:18:51', '2024-09-12 05:06:56'),
(3, NULL, 'Activity request to join approved', 'You’ve been accepted! Join your upcoming activity on PlusOnes', '<p>Hey {$first_name},<br />\r\n<br />\r\nGreat news! Your request to join <strong>{$activity_name}</strong> has been <strong>accepted</strong>. We&rsquo;re so excited for you to connect and enjoy this activity with your new PlusOne(s).</p>\r\n\r\n<h2><strong>Activity Details</strong></h2>\r\n\r\n<ul>\r\n	<li>Activity: {$activity_name}</li>\r\n	<li>Date &amp; Time: {$date, $start_at, $end_at}</li>\r\n	<li>Location: {$location}</li>\r\n	<li>Host: {$host_id}</li>\r\n</ul>\r\n\r\n<p><strong>Connect with your PlusOne(s)</strong><br />\r\nTo ensure a smooth and enjoyable experience, feel free to reach out to <strong>{$host_id}</strong> if you have any questions or need further information. You can contact them directly through the PlusOnes app.<br />\r\n<br />\r\n<strong>Share Your Experience</strong><br />\r\nAfter the activity, please consider leaving feedback for the PlusOnes community. Your feedback help to&nbsp;keep the quality high and ensure every PlusOnes experience is great</p>\r\n\r\n<p><strong>Change of plans?</strong><br />\r\nReliability helps keep our community fun and enjoyable for everyone! When you join or host an activity, others are counting on you to show up. Life happens, and it&rsquo;s okay to cancel if needed&mdash;just try to do it at least 24 hours in advance. <strong>Late cancellations and no-shows can disrupt plans and will incur a fee.</strong> This helps create a better experience for both hosts and attendees.<br />\r\n<br />\r\nFor more information, read our <a href=\"https://plusonesapp.com/community-guideliness\">Community Guidelines</a>.&nbsp;</p>\r\n\r\n<p>If you have any questions or need assistance, simply reach out to us via the Help Center in the PlusOnes app!</p>\r\n\r\n<p>Enjoy the activity!<br />\r\nThe PlusOnes Team</p>', '2024-09-12 05:09:53', '2024-11-23 18:18:42', '2024-09-12 05:09:53'),
(4, NULL, 'Your request to join has been rejected.', 'Your request to join has been rejected.', '<p>Hi {$first_name},</p>\r\n\r\n<p>Unfortunately, the host has not approved your request to join activity &quot;<strong>{$activity_name}</strong>&quot;.&nbsp;</p>\r\n\r\n<p>We totally understand that this can be disappointing, but don&#39;t worry&mdash;there are plenty of other activities to check out! Hosts on PlusOnes have the freedom to choose who they&#39;d like to join their activities, and this ensures that everyone can have the best experience possible.</p>\r\n\r\n<p>But hey, no need to stop there! Feel free to explore other activities on the platform that might be a great fit for you. We&rsquo;re sure you&rsquo;ll find something just as fun and exciting!</p>\r\n\r\n<p>If you need help finding the perfect next activity or have any questions, just give us a shout via the Help Center in the app.</p>\r\n\r\n<p>Looking forward to seeing you at an activity soon!</p>\r\n\r\n<p>The PlusOnes Team</p>', '2024-09-12 05:09:53', '2024-11-23 18:23:07', '2024-09-12 05:09:53'),
(5, NULL, 'Activity request to join sent - email', 'Your request to join activity has been received!', '<p>Dear {$first_name},</p>\r\n\r\n<p>Thank you for your interest in joining the activity<strong> &quot;{$activity_name}&quot;</strong>. We have received your request and have notified the activity host.</p>\r\n\r\n<p>Your request status is: <strong>{$request_status},</strong></p>\r\n\r\n<p>Your request type is: <strong>{$request_type},</strong><br />\r\n<br />\r\n<strong>Activity Details:</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; <strong>Activity Name:</strong> {$activity_name}<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Date &amp; Time:</strong> {$date, $start_at, $end_at}<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Location:</strong> {$location}<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Host:</strong> {$host_id}</p>\r\n\r\n<p><strong>Next steps</strong><br />\r\nThe host of the activity has been notified of your request. You will receive another email once your request has been reviewed. In the meantime, feel free to explore other activities and continue engaging with the PlusOnes community.</p>\r\n\r\n<p><strong>Need assistance?</strong><br />\r\nIf you have any questions or need further assistance, please do not hesitate to contact our support team via the PlusOnes app or by reaching out via plusonesapp@gmail.com.</p>\r\n\r\n<p>Have fun!<br />\r\nThe PlusOnes Team</p>', '2024-09-12 05:10:42', '2024-11-20 21:04:11', '2024-09-12 05:10:42'),
(6, NULL, 'Activity rejected | For Hosts', 'Your activity has been rejected', '<p>Dear {$first_name},</p>\r\n\r\n<p>Thank you for your interest, {$activity_name} has been rejected. We&rsquo;re</p>\r\n\r\n<p><br />\r\n<strong>Activity Details:</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; <strong>Activity Name:</strong> {$activity_name}<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Date &amp; Time:</strong> {$date, $start_at, $end_at}<br />\r\n&nbsp;&nbsp;&nbsp; <strong>Location:</strong> {$location}</p>\r\n\r\n<p><strong>Connect with Your PlusOne</strong></p>\r\n\r\n<p>To ensure a smooth and enjoyable experience, feel free to reach out to plusone. if you have any questions or need further information. You can contact them directly through the PlusOnes app.<br />\r\nShare Your Experience</p>\r\n\r\n<p>After the activity, please consider leaving feedback for the PlusOnes community and confirm who attended the activity. Your feedback helps us keep the quality high and ensure every PlusOnes experience is great</p>\r\n\r\n<p>If you have any questions or need assistance, our support team is here to help. Simply reply to this email or contact us at [support email].</p>\r\n\r\n<p><br />\r\n<strong>Activity rejected reasion</strong></p>\r\n\r\n<p>[This is testing email]</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Best regards,<br />\r\nThe PlusOnes Team</p>', '2024-09-12 05:11:39', '2024-09-25 11:01:26', '2024-09-12 05:11:39'),
(7, NULL, 'User Account Created', 'Welcome to PlusOnes! Your Adventure Begins Here 🎉', '<p>Dear&nbsp; #{$first_name},</p>\r\n\r\n<p>Welcome to <strong>PlusOnes</strong>! We&#39;re thrilled to have you join our community.</p>\r\n\r\n<p><strong>Why we launched PlusOnes</strong><br />\r\nAt PlusOnes, we believe in the power of shared experiences. We noticed that finding the right person to join you for activities can be a challenge, and that&#39;s why we created PlusOnes. Our mission is to help you connect with others who share your interests, ensuring that every activity is more enjoyable and meaningful.</p>\r\n\r\n<p><strong>What PlusOnes can do for you</strong><br />\r\nHere are some of the exciting features you&#39;ll find in PlusOnes:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Find a PlusOne: Easily <strong>connect</strong> with others looking to join you in your &nbsp; &nbsp; favorite activities.</p>\r\n	</li>\r\n	<li>\r\n	<p>Join as a PlusOne: <strong>Discover</strong> new adventures by joining someone else who shares your interests.</p>\r\n	</li>\r\n	<li>Quality Connections: We focus on creating small, intimate groups to enhance the quality of your interactions and <strong>experiences</strong>.</li>\r\n</ul>\r\n<!-- Section 1: Image on the left, Text on the right --><!-- Image on the left -->\r\n\r\n<p><strong>Example activities</strong><br />\r\nWith PlusOnes, you can find the perfect companion for a variety of activities, such as:</p>\r\n\r\n<ul>\r\n	<li><strong>Museum visits</strong>: Explore art, history, and culture with someone who appreciates it as much as you do.</li>\r\n	<li><strong>Early morning coffee</strong>: Start your day with great conversation and a fresh cup of coffee.</li>\r\n	<li><strong>Picnic in the park</strong>: Enjoy a relaxing afternoon in the park with good food and great company.</li>\r\n</ul>\r\n\r\n<p>We&rsquo;re confident that PlusOnes will quickly become your go-to platform for finding activity partners&nbsp;who make every activity more fun and memorable.</p>\r\n\r\n<p><strong>Get Started</strong><br />\r\nTo begin exploring PlusOnes, simply log in to your account and start discovering how our features can benefit you. Don&rsquo;t hesitate to experiment and see firsthand how PlusOnes can help you make meaningful connections and enjoy activities to the fullest.</p>\r\n\r\n<p><strong>Need Help?</strong><br />\r\nIf you have any questions or need assistance, our support team is here to help. Simply reply to this email or contact us at [support email]. We&rsquo;re always ready to assist you in making the most out of PlusOnes.</p>\r\n\r\n<p>Thank you for joining us on this exciting journey. We can&#39;t wait to see what adventures you&rsquo;ll embark on with PlusOnes!</p>\r\n\r\n<p>Best regards,<br />\r\nPlusOnes</p>', '2024-09-12 05:12:38', '2024-11-20 21:32:54', '2024-09-12 05:12:38'),
(8, NULL, 'User account removal confirmation', 'Your PlusOnes account has been successfully removed', '<p>Dear # {$first_name},</p>\r\n\r\n<p>We&rsquo;re writing to confirm that your PlusOnes account has been successfully removed.</p>\r\n\r\n<p><strong>Account Removal Confirmation</strong></p>\r\n\r\n<p>As per your request, we have permanently deleted your account and all associated data from our system. You will no longer have access to your PlusOnes profile, and all your information has been securely erased.</p>\r\n\r\n<h3><strong>We&#39;re Sorry to See You Go</strong></h3>\r\n\r\n<p>We&#39;re sorry to see you leave our community. At PlusOnes, we strive to create meaningful connections and memorable experiences, and we hope that your time with us was enjoyable.</p>\r\n\r\n<h3><strong>Feedback Welcome</strong></h3>\r\n\r\n<p>Your feedback is incredibly valuable to us. If you have a moment, we would appreciate any comments or suggestions you might have on how we can improve our service. If so, please reply to this email with your thoughts.</p>\r\n\r\n<h3><strong>Rejoining PlusOnes</strong></h3>\r\n\r\n<p>If you ever decide to return, we would be more than happy to welcome you back. You can always create a new account by visiting our website or downloading our app.</p>\r\n\r\n<p>Thank you for being a part of the PlusOnes community. If you have any questions or need further assistance, please don&#39;t hesitate to contact us at [support email].</p>\r\n\r\n<p>Best regards,<br />\r\nThe PlusOnes Team</p>\r\n\r\n<p>&nbsp;</p>', '2024-09-12 05:13:41', '2024-09-16 07:19:53', '2024-09-12 05:13:41'),
(9, NULL, 'User forget password', 'Password reset request for your PlusOnes account', '<p>Dear #{$first_name},</p>\r\n\r\n<p>We received a request to reset the password for your PlusOnes account. If you made this request, please follow the instructions below to reset your password. If you did not request a password reset, please ignore this email.</p>\r\n\r\n<h3><strong>Reset Your Password</strong></h3>\r\n\r\n<p>To reset your password, click on the link below:</p>\r\n\r\n<p>[Reset Password Link]</p>\r\n\r\n<p>This link will expire in 24 hours for security reasons. If the link has expired, you can request a new one by visiting our password recovery page.</p>\r\n\r\n<h3><strong>Tips for Creating a Strong Password</strong></h3>\r\n\r\n<ul>\r\n	<li>Use a mix of letters, numbers, and special characters.</li>\r\n	<li>Avoid using easily guessable information like birthdays or common words.</li>\r\n	<li>Make sure your new password is different from your previous passwords.</li>\r\n</ul>\r\n\r\n<p>If you need further assistance or have any questions, please don&#39;t hesitate to contact our support team at [support email].</p>\r\n\r\n<p>Best regards,<br />\r\nThe PlusOnes Team</p>\r\n\r\n<p>&nbsp;</p>', '2024-09-12 05:14:45', '2024-09-16 07:21:30', '2024-09-12 05:14:45'),
(10, NULL, 'User late cancelation, fee confirmation', 'user Fees Status', '<p>Testing user fees</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTjj5wM0Uvoi0kOL_KN-wbPJVY8mcnpKnjPg&amp;s\" style=\"height:156px; width:323px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This is testing</p>', '2024-09-12 05:15:56', '2024-09-16 04:18:40', '2024-09-12 05:15:56'),
(11, NULL, 'User no show at activity', 'User show activity status', 'Testing', '2024-09-12 05:16:41', '2024-09-12 05:16:41', '2024-09-12 05:16:41'),
(12, NULL, 'Activity Created | For Users', 'Your activity has been successfully  created!', '<p>Dear {$first_name},<br />\r\n<br />\r\nGreat news! Your activity, <strong>{$activity_name}</strong>, has been successfully created and is now live. We&#39;re excited for you to connect with other members and enjoy the experience.</p>\r\n\r\n<h3><strong>Activity Details</strong></h3>\r\n\r\n<ul>\r\n	<li><strong>Activity:</strong> {$activity_name}</li>\r\n	<li><strong>Date &amp; Time:</strong> {$date, $start_at, $end_at}</li>\r\n	<li><strong>Location:</strong> {$location}</li>\r\n	<li><strong>Maximum Participants:</strong> {$max_people}</li>\r\n	<li><strong>Gender Preference:</strong> {$gender}</li>\r\n</ul>\r\n\r\n<h3><strong>Next Steps</strong></h3>\r\n\r\n<p>You can manage your activity and connect with attendees through the PlusOnes app. Make sure to keep an eye on any requests from members who are interested in joining.</p>\r\n\r\n<h3><strong>Need Assistance?</strong></h3>\r\n\r\n<p>If you have any questions or need help managing your activity, feel free to reach out to our support team. You can contact us by replying to this email or at [support email].</p>\r\n\r\n<p>We wish you an amazing experience with your PlusOne!</p>', '2024-09-21 13:01:41', '2024-09-26 09:42:34', '2024-09-21 13:01:41'),
(13, NULL, 'Activity completed', 'We wanted to let you know that your activity have successfully completed', '<p>asdfasfsadf</p>', '2024-09-24 12:59:06', '2024-09-26 09:42:18', '2024-09-24 12:59:06'),
(14, NULL, 'Activity Created | For Admin', 'New Activity Created', '<p>Dear Admin,</p>\r\n\r\n<p>A new activity has been created by {$host_id} on the plusones platform. Here are the details of the activity:</p>\r\n\r\n<ul>\r\n	<li><strong>Activity Name:</strong> {$activity_name}</li>\r\n	<li><strong>Category:</strong> {$category_id}</li>\r\n	<li><strong>Subcategory:</strong> {$subcategory_id}</li>\r\n	<li><strong>Description:</strong> {$description}</li>\r\n	<li><strong>Location:</strong> {$location}</li>\r\n	<li><strong>Date &amp; Time:</strong> {$date, $start_at, $end_at}</li>\r\n	<li><strong>Maximum Participants:</strong> {$max_people}</li>\r\n	<li><strong>Host Email:</strong> {$host_email}</li>\r\n</ul>\r\n\r\n<p>Please review the activity and take the necessary actions.</p>\r\n\r\n<p>Best regards,<br />\r\nPlusones</p>', '2024-09-26 09:33:53', '2024-09-26 10:22:58', '2024-09-26 09:33:53'),
(15, NULL, 'Subscription Price Updated', 'Subscription Price Updated', '<p>Dear {$first_name},</p>\r\n\r\n<p>We wanted to inform you that your subscription price has been updated. Your new subscription price is {$price}, and it will be effective from the next billing cycle.</p>\r\n\r\n<p>If you have any questions or need further assistance, feel free to reach out to our support team.</p>\r\n\r\n<p>Thank you for being a valued member!</p>\r\n\r\n<p>Best regards,<br />\r\nThe Plusones Team</p>\r\n\r\n<p>&nbsp;</p>', '2024-10-30 08:54:34', '2024-11-04 06:22:28', '2024-10-30 08:54:34');

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'What is PlusOnes?', 'At PlusOnes, we believe that intimate engaging activities and meaningful connections are essential for a fulfilling life. We know how difficult it can be to meet new people and create authentic relationships in the hustle and bustle of modern life. Our exclusive members-only platform ensures a high-quality community where safety, trust, and commitment are key values. \r\n\r\nJoin us to discover the pleasure of shared experiences, build genuine friendships, and become part of a community that prioritizes quality and trust. With PlusOnes, you can forge lasting connections through small, intimate, and user-led activities.', '1', '2024-11-22 21:02:05', '2024-11-22 21:02:05'),
(3, 'How do I get full access to PlusOnes?', 'To use the app, you need to create an account with accurate and complete information, including opting in for a paid membership. You are responsible for safeguarding your account credentials and all activities under your account.', '1', '2024-11-22 21:04:56', '2024-11-22 21:04:56'),
(4, 'What is the no-show and cancellation policy?', 'Respect for the time and effort of others is key to building a positive and reliable community.\r\n\r\nParticipants: If you cannot attend an activity you’ve committed to, we ask that you cancel at least 24 hours before the activity’s start time. Failing to do so or not showing up may result in a no-show or cancellation fee. This fee is used to support the growth and sustainability of the PlusOnes community by funding improvements and initiatives that benefit all members.\r\n\r\nHosts: If you’re hosting an event and need to cancel, you are required to provide at least 24 hours\' notice. Cancelling with less than 24 hours\' notice may result in a cancellation fee. This policy ensures participants have enough time to adjust their plans and helps maintain a fair and considerate environment for everyone.\r\n\r\nThese measures are in place to foster accountability and maintain a fair, supportive environment for all members.', '1', '2024-11-22 21:01:32', '2024-11-22 21:01:32'),
(5, 'Can I bring my friends to the activity?', 'PlusOnes is only available to members. We aim to provide an environment where everyone knows up front who\'s attending, fostering a comfortable and familiar atmosphere for all participants.', '1', '2024-11-22 21:06:47', '2024-11-22 21:06:47'),
(6, 'Why is PlusOnes only available for Paid memberships?', 'At PlusOnes, we’re building a community based on trust, safety, and meaningful connections. Our paid membership ensures a secure, members-only platform with verified profiles, so you can connect with like-minded people. We maintain high standards by reviewing events for authenticity and reliability. Plus, cancellation fees and no-show penalties help keep everyone committed and accountable.\r\n\r\nBy joining PlusOnes, you\'re investing in a space where quality relationships thrive, supported by membership fees that keep the community growing. It\'s more than just events—it\'s about building a safe, trustworthy environment for unforgettable experiences.', '1', '2024-11-23 20:28:11', '2024-11-23 20:28:11'),
(7, 'Who can join PlusOnes?', 'PlusOnes is a members-only platform. This exclusivity ensures that everyone involved is dedicated and committed to fostering meaningful connections and participating in high-quality activities.', '1', '2024-11-23 20:29:45', '2024-11-23 20:29:45'),
(10, 'What types of activities can I expect on PlusOnes?', 'At PlusOnes, activities are entirely led by members, with no commercial interests involved. From casual coffee meetups to museum visits and outdoor adventures, the community creates and organizes experiences for one another. Profiles provide insight into fellow participants, helping you choose activities with people who share your interests and values, ensuring genuine connections and meaningful experiences.', '1', '2024-11-23 20:31:14', '2024-11-23 20:31:14'),
(11, 'What benefits do members enjoy on PlusOnes?', 'Members of PlusOnes enjoy access to all activities, a dedicated and engaged community, and a platform that prioritizes meaningful connections. \r\n\r\nOur members-only policy ensures a high-quality environment where users can confidently participate in activities.', '1', '2024-11-23 20:32:14', '2024-11-23 20:32:14'),
(12, 'How do you ensure quality activities at PlusOnes?', 'Our platform is exclusively for members, ensuring that everyone involved is committed to meaningful connections. To maintain a reliable and trustworthy community, we implement a cancellation fee and no-show penalty, encouraging respect for others\' time and ensuring that everyone follows through on their commitments. Plus, knowing who\'s attending up front allows you to make informed decisions about which activities to join, ensuring you\'re connecting with like-minded people.\r\n\r\nTo uphold our standards, our community team reviews all activities, ensuring they meet our expectations for quality and authenticity. This helps us create a space where safety, trust, and genuine connections are always a priority.', '1', '2024-11-23 20:33:54', '2024-11-23 20:33:54');

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` int(11) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `activity_id`, `user_id`, `created_at`, `updated_at`) VALUES
(65, 15, 64, '2024-08-24 09:13:15', '2024-08-24 09:13:15'),
(68, 15, 72, '2024-08-27 11:02:56', '2024-08-27 11:02:56'),
(86, 95, 72, '2024-09-13 08:58:04', '2024-09-13 08:58:04'),
(104, 365, 130, '2024-09-20 06:32:08', '2024-09-20 06:32:08'),
(106, 403, 104, '2024-09-24 12:51:28', '2024-09-24 12:51:28'),
(107, 95, 104, '2024-09-24 12:51:32', '2024-09-24 12:51:32'),
(132, 546, 81, '2024-11-19 09:33:19', '2024-11-19 09:33:19'),
(133, 547, 81, '2024-11-19 09:33:21', '2024-11-19 09:33:21'),
(136, 552, 81, '2024-11-20 11:42:35', '2024-11-20 11:42:35'),
(138, 548, 177, '2024-11-20 21:58:57', '2024-11-20 21:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `fcm_tokens`
--

CREATE TABLE `fcm_tokens` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `notify_token` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fcm_tokens`
--

INSERT INTO `fcm_tokens` (`id`, `user_id`, `notify_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'd5Vvbyz1T6q7Pu00AkmV8K:APA91bGrQ06sWe4vdH7fX9LoWiiUwqvgNkj0wj8nLLY4vEvle49dBjcehBT-e1ksAbotngMUFIBi68d1KOAZasdAZ6nHRGDNhSi0SQ3F_MZEsO3VtYzq9PG9t58L2v6F2JqbDLjMRTBo', '2024-09-18 05:47:29', '2024-09-16 15:54:13'),
(3, 123, 'tttttttttttttttttttsdsf', '2024-09-18 05:17:16', '2024-09-18 05:17:16'),
(8, 131, 'test565', '2024-09-19 04:43:14', '2024-09-19 04:43:14'),
(9, 136, 'test565', '2024-09-19 13:21:30', '2024-09-19 13:21:30'),
(10, 130, 'd5Vvbyz1T6q7Pu00AkmV8K:APA91bGrQ06sWe4vdH7fX9LoWiiUwqvgNkj0wj8nLLY4vEvle49dBjcehBT-e1ksAbotngMUFIBi68d1KOAZasdAZ6nHRGDNhSi0SQ3F_MZEsO3VtYzq9PG9t58L2v6F2JqbDLjMRTBo', '2024-09-20 06:23:50', '2024-09-20 06:23:50'),
(11, 130, 'fDl9EaS-RC6ewMSHr_oBZw:APA91bEKK7UslUZ09H0pml8AbrVgyMuQ3iou8m6bST1jzwmwsRQOF0YpdM0iBcBKsfGxEFMy1Z9CB1_2vi4ctcAKokS-zr1VLRcn8WAoXDkNqcoWLbnm6kSqqC2s-7KSHcJGYByTNde3', '2024-09-20 06:31:38', '2024-09-20 06:31:38'),
(12, 130, 'd5Vvbyz1T6q7Pu00AkmV8K:APA91bGrQ06sWe4vdH7fX9LoWiiUwqvgNkj0wj8nLLY4vEvle49dBjcehBT-e1ksAbotngMUFIBi68d1KOAZasdAZ6nHRGDNhSi0SQ3F_MZEsO3VtYzq9PG9t58L2v6F2JqbDLjMRTBo', '2024-09-20 06:40:03', '2024-09-20 06:40:03'),
(13, 81, 'd5Vvbyz1T6q7Pu00AkmV8K:APA91bGrQ06sWe4vdH7fX9LoWiiUwqvgNkj0wj8nLLY4vEvle49dBjcehBT-e1ksAbotngMUFIBi68d1KOAZasdAZ6nHRGDNhSi0SQ3F_MZEsO3VtYzq9PG9t58L2v6F2JqbDLjMRTBo', '2024-09-20 06:51:37', '2024-09-20 06:51:37'),
(14, 130, 'd5Vvbyz1T6q7Pu00AkmV8K:APA91bGrQ06sWe4vdH7fX9LoWiiUwqvgNkj0wj8nLLY4vEvle49dBjcehBT-e1ksAbotngMUFIBi68d1KOAZasdAZ6nHRGDNhSi0SQ3F_MZEsO3VtYzq9PG9t58L2v6F2JqbDLjMRTBo', '2024-09-20 06:58:59', '2024-09-20 06:58:59'),
(15, 81, 'd5Vvbyz1T6q7Pu00AkmV8K:APA91bGrQ06sWe4vdH7fX9LoWiiUwqvgNkj0wj8nLLY4vEvle49dBjcehBT-e1ksAbotngMUFIBi68d1KOAZasdAZ6nHRGDNhSi0SQ3F_MZEsO3VtYzq9PG9t58L2v6F2JqbDLjMRTBo', '2024-09-20 07:01:31', '2024-09-20 07:01:31'),
(16, 81, 'd5Vvbyz1T6q7Pu00AkmV8K:APA91bGrQ06sWe4vdH7fX9LoWiiUwqvgNkj0wj8nLLY4vEvle49dBjcehBT-e1ksAbotngMUFIBi68d1KOAZasdAZ6nHRGDNhSi0SQ3F_MZEsO3VtYzq9PG9t58L2v6F2JqbDLjMRTBo', '2024-09-20 07:04:22', '2024-09-20 07:04:22'),
(17, 130, 'd5Vvbyz1T6q7Pu00AkmV8K:APA91bGrQ06sWe4vdH7fX9LoWiiUwqvgNkj0wj8nLLY4vEvle49dBjcehBT-e1ksAbotngMUFIBi68d1KOAZasdAZ6nHRGDNhSi0SQ3F_MZEsO3VtYzq9PG9t58L2v6F2JqbDLjMRTBo', '2024-09-20 07:12:36', '2024-09-20 07:12:36'),
(18, 130, 'fDl9EaS-RC6ewMSHr_oBZw:APA91bEKK7UslUZ09H0pml8AbrVgyMuQ3iou8m6bST1jzwmwsRQOF0YpdM0iBcBKsfGxEFMy1Z9CB1_2vi4ctcAKokS-zr1VLRcn8WAoXDkNqcoWLbnm6kSqqC2s-7KSHcJGYByTNde3', '2024-09-20 08:53:26', '2024-09-20 08:53:26'),
(19, 81, 'd5Vvbyz1T6q7Pu00AkmV8K:APA91bGrQ06sWe4vdH7fX9LoWiiUwqvgNkj0wj8nLLY4vEvle49dBjcehBT-e1ksAbotngMUFIBi68d1KOAZasdAZ6nHRGDNhSi0SQ3F_MZEsO3VtYzq9PG9t58L2v6F2JqbDLjMRTBo', '2024-09-20 09:34:18', '2024-09-20 09:34:18'),
(20, 139, 'goooglelljkjklajslkfjakls', '2024-09-20 11:32:41', '2024-09-20 11:32:41'),
(21, 139, 'goooglelljkjklajslkfjakls', '2024-09-20 11:33:23', '2024-09-20 11:33:23'),
(22, 140, 'd5Vvbyz1T6q7Pu00AkmV8K:APA91bGrQ06sWe4vdH7fX9LoWiiUwqvgNkj0wj8nLLY4vEvle49dBjcehBT-e1ksAbotngMUFIBi68d1KOAZasdAZ6nHRGDNhSi0SQ3F_MZEsO3VtYzq9PG9t58L2v6F2JqbDLjMRTBo', '2024-09-20 11:58:34', '2024-09-20 11:58:34'),
(23, 130, 'd5Vvbyz1T6q7Pu00AkmV8K:APA91bGrQ06sWe4vdH7fX9LoWiiUwqvgNkj0wj8nLLY4vEvle49dBjcehBT-e1ksAbotngMUFIBi68d1KOAZasdAZ6nHRGDNhSi0SQ3F_MZEsO3VtYzq9PG9t58L2v6F2JqbDLjMRTBo', '2024-09-20 12:04:31', '2024-09-20 12:04:31'),
(24, 141, 'goooglelljkjklajslkfjakls', '2024-09-20 12:06:01', '2024-09-20 12:06:01'),
(25, 130, 'cUJwuYrXD0FknQCag17QEW:APA91bFRC3mYJyMVyFLCWE3qYIxJy1dUYRl38v9AX0Cnvps0O23bl4PCBrw-U6IPNULqrYGglI-GBszSrORcOdqWF4lxO_vDnYPloKaEQS--552QrMkZipEWsuiV0deKofuu8NjfsjyN', '2024-09-20 13:09:48', '2024-09-20 13:09:48'),
(26, 144, 'fDl9EaS-RC6ewMSHr_oBZw:APA91bEKK7UslUZ09H0pml8AbrVgyMuQ3iou8m6bST1jzwmwsRQOF0YpdM0iBcBKsfGxEFMy1Z9CB1_2vi4ctcAKokS-zr1VLRcn8WAoXDkNqcoWLbnm6kSqqC2s-7KSHcJGYByTNde3', '2024-09-20 13:29:34', '2024-09-20 13:29:34'),
(27, 145, 'cP36LBnxSPyjIzv8cwWNSg:APA91bFPRPODtrFI53ochKHz0tG2wbiVirDraDtgzjqttNaLAtjjb5NQrrqPevkxJcil9NPyYbYlrZw2rDv4EabYgMdHfdMnr6t8nvGSemcI8x-Rb_aojmP_gTf2bhNbXm5VyutGhV6_', '2024-09-20 13:32:24', '2024-09-20 13:32:24'),
(28, 145, 'cP36LBnxSPyjIzv8cwWNSg:APA91bFPRPODtrFI53ochKHz0tG2wbiVirDraDtgzjqttNaLAtjjb5NQrrqPevkxJcil9NPyYbYlrZw2rDv4EabYgMdHfdMnr6t8nvGSemcI8x-Rb_aojmP_gTf2bhNbXm5VyutGhV6_', '2024-09-20 13:33:01', '2024-09-20 13:33:01'),
(29, 130, 'fDl9EaS-RC6ewMSHr_oBZw:APA91bEKK7UslUZ09H0pml8AbrVgyMuQ3iou8m6bST1jzwmwsRQOF0YpdM0iBcBKsfGxEFMy1Z9CB1_2vi4ctcAKokS-zr1VLRcn8WAoXDkNqcoWLbnm6kSqqC2s-7KSHcJGYByTNde3', '2024-09-21 04:20:08', '2024-09-21 04:20:08'),
(30, 146, 'd5Vvbyz1T6q7Pu00AkmV8K:APA91bGrQ06sWe4vdH7fX9LoWiiUwqvgNkj0wj8nLLY4vEvle49dBjcehBT-e1ksAbotngMUFIBi68d1KOAZasdAZ6nHRGDNhSi0SQ3F_MZEsO3VtYzq9PG9t58L2v6F2JqbDLjMRTBo', '2024-09-21 04:45:38', '2024-09-21 04:45:38'),
(31, 146, 'd5Vvbyz1T6q7Pu00AkmV8K:APA91bGrQ06sWe4vdH7fX9LoWiiUwqvgNkj0wj8nLLY4vEvle49dBjcehBT-e1ksAbotngMUFIBi68d1KOAZasdAZ6nHRGDNhSi0SQ3F_MZEsO3VtYzq9PG9t58L2v6F2JqbDLjMRTBo', '2024-09-21 04:46:00', '2024-09-21 04:46:00'),
(32, 131, 'test89', '2024-09-21 04:57:43', '2024-09-21 04:57:43'),
(33, 148, 'fDl9EaS-RC6ewMSHr_oBZw:APA91bEKK7UslUZ09H0pml8AbrVgyMuQ3iou8m6bST1jzwmwsRQOF0YpdM0iBcBKsfGxEFMy1Z9CB1_2vi4ctcAKokS-zr1VLRcn8WAoXDkNqcoWLbnm6kSqqC2s-7KSHcJGYByTNde3', '2024-09-21 05:27:55', '2024-09-21 05:27:55'),
(34, 145, 'cIyKSoUySBGzRUBOa0Sorn:APA91bFZN7W8eCvlUTWJeUjK7RGy_bKmiTat19Hy6Hi8WvSyGWVaDhBmJSYmdILM9fgf9w_HbFIi_-gB-KXtRvXNzp5NQzOyPSJWPFahpycJqroC9r4sWT9Rfhur9YXWWCIfFSbjDVwz', '2024-09-21 05:28:24', '2024-09-21 05:28:24'),
(35, 148, 'fDl9EaS-RC6ewMSHr_oBZw:APA91bEKK7UslUZ09H0pml8AbrVgyMuQ3iou8m6bST1jzwmwsRQOF0YpdM0iBcBKsfGxEFMy1Z9CB1_2vi4ctcAKokS-zr1VLRcn8WAoXDkNqcoWLbnm6kSqqC2s-7KSHcJGYByTNde3', '2024-09-21 05:35:20', '2024-09-21 05:35:20'),
(36, 130, 'fDl9EaS-RC6ewMSHr_oBZw:APA91bEKK7UslUZ09H0pml8AbrVgyMuQ3iou8m6bST1jzwmwsRQOF0YpdM0iBcBKsfGxEFMy1Z9CB1_2vi4ctcAKokS-zr1VLRcn8WAoXDkNqcoWLbnm6kSqqC2s-7KSHcJGYByTNde3', '2024-09-21 05:35:47', '2024-09-21 05:35:47'),
(37, 146, 'eBoNKGPsR060ENjCok0XVx:APA91bGGAxD7-0e5wMg3ea_pQuuC84rpIVTB3sdyDqIfYCvDj2RreNVO6pHAcTeeoLo9Z_oywS-YKuP8Lw1GdExbnRTAJVoWW2S8xe5wHZoU1XrKgMtfPQapA3EUVRTN4eR2kRIIAOi3', '2024-09-21 05:52:08', '2024-09-21 05:52:08'),
(38, 146, 'eBoNKGPsR060ENjCok0XVx:APA91bGGAxD7-0e5wMg3ea_pQuuC84rpIVTB3sdyDqIfYCvDj2RreNVO6pHAcTeeoLo9Z_oywS-YKuP8Lw1GdExbnRTAJVoWW2S8xe5wHZoU1XrKgMtfPQapA3EUVRTN4eR2kRIIAOi3', '2024-09-21 05:53:31', '2024-09-21 05:53:31'),
(39, 144, 'fDl9EaS-RC6ewMSHr_oBZw:APA91bEKK7UslUZ09H0pml8AbrVgyMuQ3iou8m6bST1jzwmwsRQOF0YpdM0iBcBKsfGxEFMy1Z9CB1_2vi4ctcAKokS-zr1VLRcn8WAoXDkNqcoWLbnm6kSqqC2s-7KSHcJGYByTNde3', '2024-09-21 05:55:38', '2024-09-21 05:55:38'),
(40, 149, 'fkibpFNHRse4wirJRdN0Y_:APA91bE6pELV-cYiHYRFYyYU_MEOspZtwjvYfULp15Ci7ZynlvdjcRjvxGtaM1EbVH-DMl-iYQ_Yhbama5ZqKAQKdx_v1itzvLnZjeOGBN2N4DnGeoEb2B6oXzn1EecuZnabQ_3Ic4Z7', '2024-09-21 05:59:37', '2024-09-21 05:59:37'),
(41, 130, 'fDl9EaS-RC6ewMSHr_oBZw:APA91bEKK7UslUZ09H0pml8AbrVgyMuQ3iou8m6bST1jzwmwsRQOF0YpdM0iBcBKsfGxEFMy1Z9CB1_2vi4ctcAKokS-zr1VLRcn8WAoXDkNqcoWLbnm6kSqqC2s-7KSHcJGYByTNde3', '2024-09-21 06:26:12', '2024-09-21 06:26:12'),
(42, 130, 'fDl9EaS-RC6ewMSHr_oBZw:APA91bEKK7UslUZ09H0pml8AbrVgyMuQ3iou8m6bST1jzwmwsRQOF0YpdM0iBcBKsfGxEFMy1Z9CB1_2vi4ctcAKokS-zr1VLRcn8WAoXDkNqcoWLbnm6kSqqC2s-7KSHcJGYByTNde3', '2024-09-21 06:26:50', '2024-09-21 06:26:50'),
(43, 150, 'fkibpFNHRse4wirJRdN0Y_:APA91bE6pELV-cYiHYRFYyYU_MEOspZtwjvYfULp15Ci7ZynlvdjcRjvxGtaM1EbVH-DMl-iYQ_Yhbama5ZqKAQKdx_v1itzvLnZjeOGBN2N4DnGeoEb2B6oXzn1EecuZnabQ_3Ic4Z7', '2024-09-21 06:45:57', '2024-09-21 06:45:57'),
(44, 145, 'cIyKSoUySBGzRUBOa0Sorn:APA91bFZN7W8eCvlUTWJeUjK7RGy_bKmiTat19Hy6Hi8WvSyGWVaDhBmJSYmdILM9fgf9w_HbFIi_-gB-KXtRvXNzp5NQzOyPSJWPFahpycJqroC9r4sWT9Rfhur9YXWWCIfFSbjDVwz', '2024-09-21 07:09:49', '2024-09-21 07:09:49'),
(45, 130, 'eBoNKGPsR060ENjCok0XVx:APA91bGGAxD7-0e5wMg3ea_pQuuC84rpIVTB3sdyDqIfYCvDj2RreNVO6pHAcTeeoLo9Z_oywS-YKuP8Lw1GdExbnRTAJVoWW2S8xe5wHZoU1XrKgMtfPQapA3EUVRTN4eR2kRIIAOi3', '2024-09-21 07:26:51', '2024-09-21 07:26:51'),
(46, 148, 'fDl9EaS-RC6ewMSHr_oBZw:APA91bEKK7UslUZ09H0pml8AbrVgyMuQ3iou8m6bST1jzwmwsRQOF0YpdM0iBcBKsfGxEFMy1Z9CB1_2vi4ctcAKokS-zr1VLRcn8WAoXDkNqcoWLbnm6kSqqC2s-7KSHcJGYByTNde3', '2024-09-21 09:55:12', '2024-09-21 09:55:12'),
(47, 149, 'fkibpFNHRse4wirJRdN0Y_:APA91bE6pELV-cYiHYRFYyYU_MEOspZtwjvYfULp15Ci7ZynlvdjcRjvxGtaM1EbVH-DMl-iYQ_Yhbama5ZqKAQKdx_v1itzvLnZjeOGBN2N4DnGeoEb2B6oXzn1EecuZnabQ_3Ic4Z7', '2024-09-21 09:58:48', '2024-09-21 09:58:48'),
(48, 130, 'cUJwuYrXD0FknQCag17QEW:APA91bFRC3mYJyMVyFLCWE3qYIxJy1dUYRl38v9AX0Cnvps0O23bl4PCBrw-U6IPNULqrYGglI-GBszSrORcOdqWF4lxO_vDnYPloKaEQS--552QrMkZipEWsuiV0deKofuu8NjfsjyN', '2024-09-21 10:31:30', '2024-09-21 10:31:30'),
(49, 130, 'cUJwuYrXD0FknQCag17QEW:APA91bFRC3mYJyMVyFLCWE3qYIxJy1dUYRl38v9AX0Cnvps0O23bl4PCBrw-U6IPNULqrYGglI-GBszSrORcOdqWF4lxO_vDnYPloKaEQS--552QrMkZipEWsuiV0deKofuu8NjfsjyN', '2024-09-21 10:31:47', '2024-09-21 10:31:47'),
(50, 130, 'cUJwuYrXD0FknQCag17QEW:APA91bFRC3mYJyMVyFLCWE3qYIxJy1dUYRl38v9AX0Cnvps0O23bl4PCBrw-U6IPNULqrYGglI-GBszSrORcOdqWF4lxO_vDnYPloKaEQS--552QrMkZipEWsuiV0deKofuu8NjfsjyN', '2024-09-21 10:35:18', '2024-09-21 10:35:18'),
(51, 130, 'cUJwuYrXD0FknQCag17QEW:APA91bFRC3mYJyMVyFLCWE3qYIxJy1dUYRl38v9AX0Cnvps0O23bl4PCBrw-U6IPNULqrYGglI-GBszSrORcOdqWF4lxO_vDnYPloKaEQS--552QrMkZipEWsuiV0deKofuu8NjfsjyN', '2024-09-21 10:49:49', '2024-09-21 10:49:49'),
(52, 130, 'cUJwuYrXD0FknQCag17QEW:APA91bFRC3mYJyMVyFLCWE3qYIxJy1dUYRl38v9AX0Cnvps0O23bl4PCBrw-U6IPNULqrYGglI-GBszSrORcOdqWF4lxO_vDnYPloKaEQS--552QrMkZipEWsuiV0deKofuu8NjfsjyN', '2024-09-21 10:53:49', '2024-09-21 10:53:49'),
(53, 130, 'cUJwuYrXD0FknQCag17QEW:APA91bFRC3mYJyMVyFLCWE3qYIxJy1dUYRl38v9AX0Cnvps0O23bl4PCBrw-U6IPNULqrYGglI-GBszSrORcOdqWF4lxO_vDnYPloKaEQS--552QrMkZipEWsuiV0deKofuu8NjfsjyN', '2024-09-21 11:04:05', '2024-09-21 11:04:05'),
(54, 130, 'cUJwuYrXD0FknQCag17QEW:APA91bFRC3mYJyMVyFLCWE3qYIxJy1dUYRl38v9AX0Cnvps0O23bl4PCBrw-U6IPNULqrYGglI-GBszSrORcOdqWF4lxO_vDnYPloKaEQS--552QrMkZipEWsuiV0deKofuu8NjfsjyN', '2024-09-21 11:13:58', '2024-09-21 11:13:58'),
(55, 130, 'cUJwuYrXD0FknQCag17QEW:APA91bFRC3mYJyMVyFLCWE3qYIxJy1dUYRl38v9AX0Cnvps0O23bl4PCBrw-U6IPNULqrYGglI-GBszSrORcOdqWF4lxO_vDnYPloKaEQS--552QrMkZipEWsuiV0deKofuu8NjfsjyN', '2024-09-21 11:22:59', '2024-09-21 11:22:59'),
(56, 152, 'cUJwuYrXD0FknQCag17QEW:APA91bFRC3mYJyMVyFLCWE3qYIxJy1dUYRl38v9AX0Cnvps0O23bl4PCBrw-U6IPNULqrYGglI-GBszSrORcOdqWF4lxO_vDnYPloKaEQS--552QrMkZipEWsuiV0deKofuu8NjfsjyN', '2024-09-21 11:32:59', '2024-09-21 11:32:59'),
(57, 130, 'cUJwuYrXD0FknQCag17QEW:APA91bFRC3mYJyMVyFLCWE3qYIxJy1dUYRl38v9AX0Cnvps0O23bl4PCBrw-U6IPNULqrYGglI-GBszSrORcOdqWF4lxO_vDnYPloKaEQS--552QrMkZipEWsuiV0deKofuu8NjfsjyN', '2024-09-21 11:34:19', '2024-09-21 11:34:19'),
(58, 152, 'dYRemontoEynv5hNIA73CK:APA91bFpmjAiA6lZZWRU9Q1QVhahU1_0AEyQsK9xQgqGu_4b56LXRCF9fP--IY_e7ITEzcMBkYwa0AHdxxr12VHZUMbHUahxYel3qrVDhbrMMDIWed9tSDyuDHNI5USOABa6WeJlVajP', '2024-09-21 12:17:30', '2024-09-21 12:17:30'),
(59, 130, 'dYRemontoEynv5hNIA73CK:APA91bFpmjAiA6lZZWRU9Q1QVhahU1_0AEyQsK9xQgqGu_4b56LXRCF9fP--IY_e7ITEzcMBkYwa0AHdxxr12VHZUMbHUahxYel3qrVDhbrMMDIWed9tSDyuDHNI5USOABa6WeJlVajP', '2024-09-21 12:17:47', '2024-09-21 12:17:47'),
(60, 148, 'fDl9EaS-RC6ewMSHr_oBZw:APA91bEKK7UslUZ09H0pml8AbrVgyMuQ3iou8m6bST1jzwmwsRQOF0YpdM0iBcBKsfGxEFMy1Z9CB1_2vi4ctcAKokS-zr1VLRcn8WAoXDkNqcoWLbnm6kSqqC2s-7KSHcJGYByTNde3', '2024-09-21 12:58:59', '2024-09-21 12:58:59'),
(61, 145, 'fUA-ouRDRWSVaKMR9n1z68:APA91bGJBBRaBYhBWOXTGBNMXC3rmwNCS3_iIZgdIJrH6F_8kEwkE3ndQ-zu7Em_QGh5P7Nh-zCSZ_R7m1WsQgDsuEdguZhcoklzTX-E1JeN8BOAwmQ4mDs11tqq4rUSQXqO796YFahb', '2024-09-21 13:03:52', '2024-09-21 13:03:52'),
(62, 148, 'fEo-oSezSkaSEhkdeC0TIl:APA91bEYcauG3MGse8sjgljxXeegGcUgjrl6JAhFLJ3L0Gqpe3Kx2QgXB1gWMjkGrFMb08MsnUa56Wgo0zq3E4V1sW4AgM1ytvK37JHKMHoxw1-1DYRmhmd1SIiu5AnuWuQMjPrX_ulX', '2024-09-21 13:11:08', '2024-09-21 13:11:08'),
(63, 150, 'fUA-ouRDRWSVaKMR9n1z68:APA91bGJBBRaBYhBWOXTGBNMXC3rmwNCS3_iIZgdIJrH6F_8kEwkE3ndQ-zu7Em_QGh5P7Nh-zCSZ_R7m1WsQgDsuEdguZhcoklzTX-E1JeN8BOAwmQ4mDs11tqq4rUSQXqO796YFahb', '2024-09-21 13:20:26', '2024-09-21 13:20:26'),
(64, 1, 'dM6xJcDUR1WMwCqoHFKF6R:APA91bF-Yaqgg4m6FCkx61_XpRVl7m-6QDTDW3WHpNAOKhQcknAeHfHGpXo8jzNDB0skk1DWQMTyEyXU1D4DVksvK3WG3nAKajsreaweVC95k9nVFF_VEjz2AR0y2NSWkpsMkvaJWQTr', '2024-09-21 13:22:59', '2024-09-21 13:22:59'),
(65, 1, 'dM6xJcDUR1WMwCqoHFKF6R:APA91bF-Yaqgg4m6FCkx61_XpRVl7m-6QDTDW3WHpNAOKhQcknAeHfHGpXo8jzNDB0skk1DWQMTyEyXU1D4DVksvK3WG3nAKajsreaweVC95k9nVFF_VEjz2AR0y2NSWkpsMkvaJWQTr', '2024-09-21 13:24:08', '2024-09-21 13:24:08'),
(66, 152, 'dYRemontoEynv5hNIA73CK:APA91bFpmjAiA6lZZWRU9Q1QVhahU1_0AEyQsK9xQgqGu_4b56LXRCF9fP--IY_e7ITEzcMBkYwa0AHdxxr12VHZUMbHUahxYel3qrVDhbrMMDIWed9tSDyuDHNI5USOABa6WeJlVajP', '2024-09-21 13:27:21', '2024-09-21 13:27:21'),
(67, 148, 'fEo-oSezSkaSEhkdeC0TIl:APA91bEYcauG3MGse8sjgljxXeegGcUgjrl6JAhFLJ3L0Gqpe3Kx2QgXB1gWMjkGrFMb08MsnUa56Wgo0zq3E4V1sW4AgM1ytvK37JHKMHoxw1-1DYRmhmd1SIiu5AnuWuQMjPrX_ulX', '2024-09-21 14:04:20', '2024-09-21 14:04:20'),
(70, 152, 'dYRemontoEynv5hNIA73CK:APA91bFpmjAiA6lZZWRU9Q1QVhahU1_0AEyQsK9xQgqGu_4b56LXRCF9fP--IY_e7ITEzcMBkYwa0AHdxxr12VHZUMbHUahxYel3qrVDhbrMMDIWed9tSDyuDHNI5USOABa6WeJlVajP', '2024-09-23 04:28:17', '2024-09-23 04:28:17'),
(73, 142, 'dYRemontoEynv5hNIA73CK:APA91bFpmjAiA6lZZWRU9Q1QVhahU1_0AEyQsK9xQgqGu_4b56LXRCF9fP--IY_e7ITEzcMBkYwa0AHdxxr12VHZUMbHUahxYel3qrVDhbrMMDIWed9tSDyuDHNI5USOABa6WeJlVajP', '2024-09-23 07:18:48', '2024-09-23 07:18:48'),
(74, 152, 'dqDMBIDXBk3atMdwGGZ6Te:APA91bEE_xks_CFN257AMdgYpqkQDfWMDGddrgUmGI_rOHCxNMAwioNWsoJpIi8YvNiphOU9CaGD2LEN6r5RUV-g9HERNv708FL7YnGMnXLEnL6A4BVLFq2nYC0lo3O4dko8tt9I1KeR', '2024-09-23 09:00:47', '2024-09-23 09:00:47'),
(75, 142, 'dqDMBIDXBk3atMdwGGZ6Te:APA91bEE_xks_CFN257AMdgYpqkQDfWMDGddrgUmGI_rOHCxNMAwioNWsoJpIi8YvNiphOU9CaGD2LEN6r5RUV-g9HERNv708FL7YnGMnXLEnL6A4BVLFq2nYC0lo3O4dko8tt9I1KeR', '2024-09-23 09:56:09', '2024-09-23 09:56:09'),
(76, 130, 'dqDMBIDXBk3atMdwGGZ6Te:APA91bEE_xks_CFN257AMdgYpqkQDfWMDGddrgUmGI_rOHCxNMAwioNWsoJpIi8YvNiphOU9CaGD2LEN6r5RUV-g9HERNv708FL7YnGMnXLEnL6A4BVLFq2nYC0lo3O4dko8tt9I1KeR', '2024-09-23 10:02:54', '2024-09-23 10:02:54'),
(77, 130, 'cDRrJSLwckGugl8LXSIuxC:APA91bEef2D8Po9nJurmVeFEhzFuY8HM34S7mi3nKxnfDYCCHEf_HDhx_2gmry33IZUG3bwiIXRiZH0oWNGTo0WQrAovI8AHVB5Rat1bhYhSIj-KEOFlcC2UxFiwNK-LpeE11kItGrm1', '2024-09-23 10:21:55', '2024-09-23 10:21:55'),
(78, 130, 'eBoNKGPsR060ENjCok0XVx:APA91bGGAxD7-0e5wMg3ea_pQuuC84rpIVTB3sdyDqIfYCvDj2RreNVO6pHAcTeeoLo9Z_oywS-YKuP8Lw1GdExbnRTAJVoWW2S8xe5wHZoU1XrKgMtfPQapA3EUVRTN4eR2kRIIAOi3', '2024-09-24 04:13:39', '2024-09-24 04:13:39'),
(79, 145, 'fUA-ouRDRWSVaKMR9n1z68:APA91bGJBBRaBYhBWOXTGBNMXC3rmwNCS3_iIZgdIJrH6F_8kEwkE3ndQ-zu7Em_QGh5P7Nh-zCSZ_R7m1WsQgDsuEdguZhcoklzTX-E1JeN8BOAwmQ4mDs11tqq4rUSQXqO796YFahb', '2024-09-24 04:15:06', '2024-09-24 04:15:06'),
(84, 159, 'fPvIIGWUTM2K2_BtWVWKEp:APA91bHmCbyR7ckNkuLPle8CXvrBNpPh75gcA_AejlYFwKzYYTQbk-K6XqXaHxg6zzgA_cVrUXquqLVbSwbfEqjieZR72-13F5bCZxe0vM3dmCuZ-BlwByVYIz43r5Yyx-3sdLQBJJnu', '2024-09-24 11:20:57', '2024-09-24 11:20:57'),
(85, 160, 'dmBcWkgXQGC0tnrRJJ4ccW:APA91bFbIKN9n9EfzipdVf4WJXdaMA3dyUftKy9jPNNm7rDOYkaBCG8tworn5hwKfmubZMvGNI7aQRzgDlhycyFZeaYesV31A8W7Csb433NDqHnvy9bN6Fr_NoCGvshhW-M-gyc4DtSu', '2024-09-24 11:32:46', '2024-09-24 11:32:46'),
(86, 160, 'dmBcWkgXQGC0tnrRJJ4ccW:APA91bFbIKN9n9EfzipdVf4WJXdaMA3dyUftKy9jPNNm7rDOYkaBCG8tworn5hwKfmubZMvGNI7aQRzgDlhycyFZeaYesV31A8W7Csb433NDqHnvy9bN6Fr_NoCGvshhW-M-gyc4DtSu', '2024-09-24 11:34:23', '2024-09-24 11:34:23'),
(87, 104, 'dmBcWkgXQGC0tnrRJJ4ccW:APA91bFbIKN9n9EfzipdVf4WJXdaMA3dyUftKy9jPNNm7rDOYkaBCG8tworn5hwKfmubZMvGNI7aQRzgDlhycyFZeaYesV31A8W7Csb433NDqHnvy9bN6Fr_NoCGvshhW-M-gyc4DtSu', '2024-09-24 12:06:15', '2024-09-24 12:06:15'),
(88, 145, 'fUA-ouRDRWSVaKMR9n1z68:APA91bGJBBRaBYhBWOXTGBNMXC3rmwNCS3_iIZgdIJrH6F_8kEwkE3ndQ-zu7Em_QGh5P7Nh-zCSZ_R7m1WsQgDsuEdguZhcoklzTX-E1JeN8BOAwmQ4mDs11tqq4rUSQXqO796YFahb', '2024-09-24 13:42:00', '2024-09-24 13:42:00'),
(89, 81, 'e2RNnmL890WEkHYhD5mlKE:APA91bHeGXG0UlnS5rs3ajHu127S9vs1BK2huRHL2OT_xqEEpTCJkDM3_Q2KAXl9JK7I0OnJzEEULXJMkRj_RSXrrnYwd2wLEurGQTLHsJBMtFWOO_71mAjYmDjDHYzOTrtYzd9Uc5bp', '2024-09-25 05:12:15', '2024-09-25 05:12:15'),
(91, 8, 'e9-aHU5Oyk-FnBTuEbNjZA:APA91bE5Xko19U1XoyP8XSy62rmT2yuF_iE7kGf4gkDxjf5-fn16e8gfh5Xbe6-3iDPkRNwGCEXrnuxjXmGRuZcuY2Jtb-7xL4DsCj9Hvf_eYjqV6JUrz5EM3w_3ZwNRTVNUJOaVGSgP', '2024-09-25 06:24:58', '2024-09-25 06:24:58'),
(92, 81, 'eBoNKGPsR060ENjCok0XVx:APA91bGGAxD7-0e5wMg3ea_pQuuC84rpIVTB3sdyDqIfYCvDj2RreNVO6pHAcTeeoLo9Z_oywS-YKuP8Lw1GdExbnRTAJVoWW2S8xe5wHZoU1XrKgMtfPQapA3EUVRTN4eR2kRIIAOi3', '2024-09-25 11:56:27', '2024-09-25 11:56:27'),
(93, 145, 'fUA-ouRDRWSVaKMR9n1z68:APA91bGJBBRaBYhBWOXTGBNMXC3rmwNCS3_iIZgdIJrH6F_8kEwkE3ndQ-zu7Em_QGh5P7Nh-zCSZ_R7m1WsQgDsuEdguZhcoklzTX-E1JeN8BOAwmQ4mDs11tqq4rUSQXqO796YFahb', '2024-09-25 15:50:29', '2024-09-25 15:50:29'),
(94, 163, 'd2mG5h6sR0SLVCJnKgOy71:APA91bG_arZHtaRx-0Eb5vycfLcPI_vJ_mXaSYtS2ruAXHrZyqXGeUkxZ4vjH8ojpLqFBcwDxM_a2TR0gKFiVAzEeqwDXVWAiCc6FMDNjsD1g9Oi_Oa4FkdIMxNWjSDl_3pmPX3Pg3Mp', '2024-09-26 06:08:55', '2024-09-26 06:08:55'),
(100, 130, 'e2RNnmL890WEkHYhD5mlKE:APA91bHeGXG0UlnS5rs3ajHu127S9vs1BK2huRHL2OT_xqEEpTCJkDM3_Q2KAXl9JK7I0OnJzEEULXJMkRj_RSXrrnYwd2wLEurGQTLHsJBMtFWOO_71mAjYmDjDHYzOTrtYzd9Uc5bp', '2024-09-27 05:25:19', '2024-09-27 05:25:19'),
(101, 146, 'e2RNnmL890WEkHYhD5mlKE:APA91bHeGXG0UlnS5rs3ajHu127S9vs1BK2huRHL2OT_xqEEpTCJkDM3_Q2KAXl9JK7I0OnJzEEULXJMkRj_RSXrrnYwd2wLEurGQTLHsJBMtFWOO_71mAjYmDjDHYzOTrtYzd9Uc5bp', '2024-09-27 05:37:50', '2024-09-27 05:37:50'),
(104, 166, 'eTnX4icdxEVRgONgHkJFiF:APA91bGrdl1nmOg75dbMEQHjqqwwDAqEFzYwT_jo-JIsZlprnBEODDtacXapcDJ8rHdfFxYmJ7Bup8XeUsgV2BOEuv3Hob0_OxOxdj0gVLTrAiS80lssy9j25Ve62KneWAhgtfF6o-NM', '2024-09-28 18:38:05', '2024-09-28 18:38:05'),
(105, 44, 'eBoNKGPsR060ENjCok0XVx:APA91bGGAxD7-0e5wMg3ea_pQuuC84rpIVTB3sdyDqIfYCvDj2RreNVO6pHAcTeeoLo9Z_oywS-YKuP8Lw1GdExbnRTAJVoWW2S8xe5wHZoU1XrKgMtfPQapA3EUVRTN4eR2kRIIAOi3', '2024-09-30 07:16:30', '2024-09-30 07:16:30'),
(106, 153, 'eBoNKGPsR060ENjCok0XVx:APA91bGGAxD7-0e5wMg3ea_pQuuC84rpIVTB3sdyDqIfYCvDj2RreNVO6pHAcTeeoLo9Z_oywS-YKuP8Lw1GdExbnRTAJVoWW2S8xe5wHZoU1XrKgMtfPQapA3EUVRTN4eR2kRIIAOi3', '2024-09-30 07:18:57', '2024-09-30 07:18:57'),
(107, 130, 'eBoNKGPsR060ENjCok0XVx:APA91bGGAxD7-0e5wMg3ea_pQuuC84rpIVTB3sdyDqIfYCvDj2RreNVO6pHAcTeeoLo9Z_oywS-YKuP8Lw1GdExbnRTAJVoWW2S8xe5wHZoU1XrKgMtfPQapA3EUVRTN4eR2kRIIAOi3', '2024-09-30 07:25:54', '2024-09-30 07:25:54'),
(108, 130, 'eBoNKGPsR060ENjCok0XVx:APA91bGGAxD7-0e5wMg3ea_pQuuC84rpIVTB3sdyDqIfYCvDj2RreNVO6pHAcTeeoLo9Z_oywS-YKuP8Lw1GdExbnRTAJVoWW2S8xe5wHZoU1XrKgMtfPQapA3EUVRTN4eR2kRIIAOi3', '2024-09-30 07:41:10', '2024-09-30 07:41:10'),
(109, 153, 'eBoNKGPsR060ENjCok0XVx:APA91bGGAxD7-0e5wMg3ea_pQuuC84rpIVTB3sdyDqIfYCvDj2RreNVO6pHAcTeeoLo9Z_oywS-YKuP8Lw1GdExbnRTAJVoWW2S8xe5wHZoU1XrKgMtfPQapA3EUVRTN4eR2kRIIAOi3', '2024-09-30 09:49:55', '2024-09-30 09:49:55'),
(110, 130, 'eBoNKGPsR060ENjCok0XVx:APA91bGGAxD7-0e5wMg3ea_pQuuC84rpIVTB3sdyDqIfYCvDj2RreNVO6pHAcTeeoLo9Z_oywS-YKuP8Lw1GdExbnRTAJVoWW2S8xe5wHZoU1XrKgMtfPQapA3EUVRTN4eR2kRIIAOi3', '2024-09-30 09:51:45', '2024-09-30 09:51:45'),
(111, 130, 'eBoNKGPsR060ENjCok0XVx:APA91bGGAxD7-0e5wMg3ea_pQuuC84rpIVTB3sdyDqIfYCvDj2RreNVO6pHAcTeeoLo9Z_oywS-YKuP8Lw1GdExbnRTAJVoWW2S8xe5wHZoU1XrKgMtfPQapA3EUVRTN4eR2kRIIAOi3', '2024-09-30 11:19:00', '2024-09-30 11:19:00'),
(112, 44, 'e2RNnmL890WEkHYhD5mlKE:APA91bHeGXG0UlnS5rs3ajHu127S9vs1BK2huRHL2OT_xqEEpTCJkDM3_Q2KAXl9JK7I0OnJzEEULXJMkRj_RSXrrnYwd2wLEurGQTLHsJBMtFWOO_71mAjYmDjDHYzOTrtYzd9Uc5bp', '2024-09-30 12:34:51', '2024-09-30 12:34:51'),
(113, 153, 'e2RNnmL890WEkHYhD5mlKE:APA91bHeGXG0UlnS5rs3ajHu127S9vs1BK2huRHL2OT_xqEEpTCJkDM3_Q2KAXl9JK7I0OnJzEEULXJMkRj_RSXrrnYwd2wLEurGQTLHsJBMtFWOO_71mAjYmDjDHYzOTrtYzd9Uc5bp', '2024-09-30 12:35:22', '2024-09-30 12:35:22'),
(114, 130, 'e2RNnmL890WEkHYhD5mlKE:APA91bHeGXG0UlnS5rs3ajHu127S9vs1BK2huRHL2OT_xqEEpTCJkDM3_Q2KAXl9JK7I0OnJzEEULXJMkRj_RSXrrnYwd2wLEurGQTLHsJBMtFWOO_71mAjYmDjDHYzOTrtYzd9Uc5bp', '2024-09-30 12:48:05', '2024-09-30 12:48:05'),
(115, 74, 'e2RNnmL890WEkHYhD5mlKE:APA91bHeGXG0UlnS5rs3ajHu127S9vs1BK2huRHL2OT_xqEEpTCJkDM3_Q2KAXl9JK7I0OnJzEEULXJMkRj_RSXrrnYwd2wLEurGQTLHsJBMtFWOO_71mAjYmDjDHYzOTrtYzd9Uc5bp', '2024-09-30 12:57:52', '2024-09-30 12:57:52'),
(120, 153, 'eBoNKGPsR060ENjCok0XVx:APA91bGGAxD7-0e5wMg3ea_pQuuC84rpIVTB3sdyDqIfYCvDj2RreNVO6pHAcTeeoLo9Z_oywS-YKuP8Lw1GdExbnRTAJVoWW2S8xe5wHZoU1XrKgMtfPQapA3EUVRTN4eR2kRIIAOi3', '2024-10-04 07:11:36', '2024-10-04 07:11:36'),
(121, 153, 'eBoNKGPsR060ENjCok0XVx:APA91bGGAxD7-0e5wMg3ea_pQuuC84rpIVTB3sdyDqIfYCvDj2RreNVO6pHAcTeeoLo9Z_oywS-YKuP8Lw1GdExbnRTAJVoWW2S8xe5wHZoU1XrKgMtfPQapA3EUVRTN4eR2kRIIAOi3', '2024-10-04 07:19:47', '2024-10-04 07:19:47'),
(122, 146, 'eBoNKGPsR060ENjCok0XVx:APA91bGGAxD7-0e5wMg3ea_pQuuC84rpIVTB3sdyDqIfYCvDj2RreNVO6pHAcTeeoLo9Z_oywS-YKuP8Lw1GdExbnRTAJVoWW2S8xe5wHZoU1XrKgMtfPQapA3EUVRTN4eR2kRIIAOi3', '2024-10-04 07:27:30', '2024-10-04 07:27:30'),
(123, 74, 'eBoNKGPsR060ENjCok0XVx:APA91bGGAxD7-0e5wMg3ea_pQuuC84rpIVTB3sdyDqIfYCvDj2RreNVO6pHAcTeeoLo9Z_oywS-YKuP8Lw1GdExbnRTAJVoWW2S8xe5wHZoU1XrKgMtfPQapA3EUVRTN4eR2kRIIAOi3', '2024-10-04 10:55:11', '2024-10-04 10:55:11'),
(124, 153, 'eBoNKGPsR060ENjCok0XVx:APA91bGGAxD7-0e5wMg3ea_pQuuC84rpIVTB3sdyDqIfYCvDj2RreNVO6pHAcTeeoLo9Z_oywS-YKuP8Lw1GdExbnRTAJVoWW2S8xe5wHZoU1XrKgMtfPQapA3EUVRTN4eR2kRIIAOi3', '2024-10-04 11:01:06', '2024-10-04 11:01:06'),
(125, 144, 'e2RNnmL890WEkHYhD5mlKE:APA91bHeGXG0UlnS5rs3ajHu127S9vs1BK2huRHL2OT_xqEEpTCJkDM3_Q2KAXl9JK7I0OnJzEEULXJMkRj_RSXrrnYwd2wLEurGQTLHsJBMtFWOO_71mAjYmDjDHYzOTrtYzd9Uc5bp', '2024-10-05 04:39:12', '2024-10-05 04:39:12'),
(126, 144, 'e2RNnmL890WEkHYhD5mlKE:APA91bHeGXG0UlnS5rs3ajHu127S9vs1BK2huRHL2OT_xqEEpTCJkDM3_Q2KAXl9JK7I0OnJzEEULXJMkRj_RSXrrnYwd2wLEurGQTLHsJBMtFWOO_71mAjYmDjDHYzOTrtYzd9Uc5bp', '2024-10-05 04:39:35', '2024-10-05 04:39:35'),
(127, 144, 'e2RNnmL890WEkHYhD5mlKE:APA91bHeGXG0UlnS5rs3ajHu127S9vs1BK2huRHL2OT_xqEEpTCJkDM3_Q2KAXl9JK7I0OnJzEEULXJMkRj_RSXrrnYwd2wLEurGQTLHsJBMtFWOO_71mAjYmDjDHYzOTrtYzd9Uc5bp', '2024-10-05 04:39:43', '2024-10-05 04:39:43'),
(128, 130, 'e2RNnmL890WEkHYhD5mlKE:APA91bHeGXG0UlnS5rs3ajHu127S9vs1BK2huRHL2OT_xqEEpTCJkDM3_Q2KAXl9JK7I0OnJzEEULXJMkRj_RSXrrnYwd2wLEurGQTLHsJBMtFWOO_71mAjYmDjDHYzOTrtYzd9Uc5bp', '2024-10-05 04:40:09', '2024-10-05 04:40:09'),
(129, 130, 'e2RNnmL890WEkHYhD5mlKE:APA91bHeGXG0UlnS5rs3ajHu127S9vs1BK2huRHL2OT_xqEEpTCJkDM3_Q2KAXl9JK7I0OnJzEEULXJMkRj_RSXrrnYwd2wLEurGQTLHsJBMtFWOO_71mAjYmDjDHYzOTrtYzd9Uc5bp', '2024-10-05 04:40:18', '2024-10-05 04:40:18'),
(130, 130, 'e2RNnmL890WEkHYhD5mlKE:APA91bHeGXG0UlnS5rs3ajHu127S9vs1BK2huRHL2OT_xqEEpTCJkDM3_Q2KAXl9JK7I0OnJzEEULXJMkRj_RSXrrnYwd2wLEurGQTLHsJBMtFWOO_71mAjYmDjDHYzOTrtYzd9Uc5bp', '2024-10-05 04:40:26', '2024-10-05 04:40:26'),
(131, 130, 'e2RNnmL890WEkHYhD5mlKE:APA91bHeGXG0UlnS5rs3ajHu127S9vs1BK2huRHL2OT_xqEEpTCJkDM3_Q2KAXl9JK7I0OnJzEEULXJMkRj_RSXrrnYwd2wLEurGQTLHsJBMtFWOO_71mAjYmDjDHYzOTrtYzd9Uc5bp', '2024-10-05 04:42:55', '2024-10-05 04:42:55'),
(132, 130, 'e2RNnmL890WEkHYhD5mlKE:APA91bHeGXG0UlnS5rs3ajHu127S9vs1BK2huRHL2OT_xqEEpTCJkDM3_Q2KAXl9JK7I0OnJzEEULXJMkRj_RSXrrnYwd2wLEurGQTLHsJBMtFWOO_71mAjYmDjDHYzOTrtYzd9Uc5bp', '2024-10-05 04:48:45', '2024-10-05 04:48:45'),
(133, 108, 'e2RNnmL890WEkHYhD5mlKE:APA91bHeGXG0UlnS5rs3ajHu127S9vs1BK2huRHL2OT_xqEEpTCJkDM3_Q2KAXl9JK7I0OnJzEEULXJMkRj_RSXrrnYwd2wLEurGQTLHsJBMtFWOO_71mAjYmDjDHYzOTrtYzd9Uc5bp', '2024-10-05 04:52:14', '2024-10-05 04:52:14'),
(136, 130, 'e8sQ7_WWTlGh9ykvUWLydM:APA91bGOaDLnXy-ATHifQziEpe55mY6f1Rp25hQ8GUamEY5D7vC5_SvkjJW969RgI1BGqHBQZ3s3rLTZsgYUNjGNcKb9lpLi9EGyV_o0hp6GC0OKPsOmNIn22Ol2lm4Ad3K3D--4h0EK', '2024-10-05 08:52:12', '2024-10-05 08:52:12'),
(138, 168, 'e9-aHU5Oyk-FnBTuEbNjZA:APA91bE5Xko19U1XoyP8XSy62rmT2yuF_iE7kGf4gkDxjf5-fn16e8gfh5Xbe6-3iDPkRNwGCEXrnuxjXmGRuZcuY2Jtb-7xL4DsCj9Hvf_eYjqV6JUrz5EM3w_3ZwNRTVNUJOaVGSgP', '2024-10-05 13:58:17', '2024-10-05 13:58:17'),
(165, 130, 'e-8o4cZPRCm2yVytBrZcSr:APA91bEKCtU46G85hB5F_TqC0Fz4uf3SFtlyGgcPcch0UCUKv1_B6oXwfg_x5ZNCdnHhjIAzUaEKPaVDs-Mmj8k2e6sSQ4KBDvTXOPf8BMBsfOWutolyhdjC8MkgvS9Dq6JHlFY5unkz', '2024-10-07 12:22:25', '2024-10-07 12:22:25'),
(168, 172, 'test565', '2024-10-09 09:31:17', '2024-10-09 09:31:17'),
(169, 173, 'test565', '2024-10-09 09:34:52', '2024-10-09 09:34:52'),
(170, 1, 'asfdasfsffsf', '2024-10-09 11:05:38', '2024-10-09 11:05:38'),
(171, 176, 'test565', '2024-10-09 12:53:08', '2024-10-09 12:53:08'),
(172, 1, 'asfdasfsffsf', '2024-10-09 13:08:57', '2024-10-09 13:08:57'),
(173, 1, 'asfdasfsffsf', '2024-10-09 13:17:52', '2024-10-09 13:17:52'),
(174, 8, 'e9-aHU5Oyk-FnBTuEbNjZA:APA91bE5Xko19U1XoyP8XSy62rmT2yuF_iE7kGf4gkDxjf5-fn16e8gfh5Xbe6-3iDPkRNwGCEXrnuxjXmGRuZcuY2Jtb-7xL4DsCj9Hvf_eYjqV6JUrz5EM3w_3ZwNRTVNUJOaVGSgP', '2024-10-09 19:32:06', '2024-10-09 19:32:06'),
(175, 130, 'cdbowRnYQI2xRge-JTT6dA:APA91bH-lZcGDwLYRG2xo0eHa-X6ZE5HdtT_2mOHRuz0sHZ7saDf6Jr5eCi0K__HiyCAmSOFA7ibt2Ab6HZwhf4wl1DT0yQFJa5tL-aLdGKWdDzG8bhekZzd2hUC8d7TBealAhzyShfK', '2024-10-10 04:45:39', '2024-10-10 04:45:39'),
(178, 8, 'ezNbAk4OlUERhaJgtwGA29:APA91bG01S1FSDCM9nrdyxaJkXCCf_WQs4op0ZD2eb3fkAxQoaQPRgGnbUDuHllUAZPa0ZCxnjDfEgLTbT5KZgL6IzK2QIomLOvOfnKjip2yYNoODUGhQKbKpe4koZmKm3qyQcXpcLY_', '2024-10-11 12:13:06', '2024-10-11 12:13:06'),
(179, 130, 'eSYbXYXgT2qfbMBfYQrXVj:APA91bEqwsN4HOZNKWOULZ2ywZU_RRlrdKYAp6ruxTVxKZhcxIaamhOZyknHadg-z6PMnghy9gwTbGKhuDm6MkoGdz7usTnHRwUJXhX9LPKArTDDTaQRyG2GyIxX0hNGuL7IQhVT83nf', '2024-10-15 04:54:06', '2024-10-15 04:54:06'),
(180, 130, 'e7-Xih3tTOi_NKkhRsQzoc:APA91bE6DNgGhASBDfElp85MHrkw29o--ikSaOXSXKBYkyVwsUAyHq2Hot9DTSphZTsLHs5IaMaXmW90GzNuqA9YkLp9W6ZPcepnMFpRZLnXjb7xFUZTnySD7WS1FpvUFOmbApBYn1Z-', '2024-10-15 04:59:19', '2024-10-15 04:59:19'),
(181, 177, 'eTnX4icdxEVRgONgHkJFiF:APA91bGrdl1nmOg75dbMEQHjqqwwDAqEFzYwT_jo-JIsZlprnBEODDtacXapcDJ8rHdfFxYmJ7Bup8XeUsgV2BOEuv3Hob0_OxOxdj0gVLTrAiS80lssy9j25Ve62KneWAhgtfF6o-NM', '2024-10-15 11:56:28', '2024-10-15 11:56:28'),
(182, 178, 'test565', '2024-10-19 04:49:54', '2024-10-19 04:49:54'),
(184, 8, 'f1xceQ5OuEboo8rrDs0w8h:APA91bE-ZYEN0KWaCjZXplNd6laKq2Y1p6dfauGkxMmuS8WBcFYJqcf4NxePnrvb-WKQ5rYeWPoQ2U0cZbnDtHJaRl0sQC-12ZqOXmtSlkryFElEIG24S3sZe0tYLzr6rhbvdEda1-It', '2024-10-19 21:51:35', '2024-10-19 21:51:35'),
(192, 159, 'fN8iE_2cQAyHbbyf0o48x1:APA91bE5jinB8LwCo2O282wy_bzAwvfZyJMdnf6cVpfNMxDTDsci3JpU_N_iHKZmbTPn4w2TCV7KHrBKptoRki6Jnw6_8RttuuWnhZvhhDyl81g3FNS2aQ1Xt522MdA_cfS4_sJElhW0', '2024-10-24 10:13:22', '2024-10-24 10:13:22'),
(193, 181, 'test565', '2024-10-24 10:19:02', '2024-10-24 10:19:02'),
(194, 182, 'test565', '2024-10-25 07:08:03', '2024-10-25 07:08:03'),
(197, 81, 'cn5TkkQ9R0K4gK7CA1Kej2:APA91bEbBBKfUg889JUND4WRMNY8xZuqtW7ejEq1T7plTEeXFW8N20U8xj1dmJA3WEU3ToL7vvbzM39UAKnxlVJZwp8mGTEb8RuoY3z3ao70yQaySTWreFM', '2024-10-26 09:22:49', '2024-10-26 09:22:49'),
(198, 81, 'fCZN5suM-EqgrC4zh_Z7DW:APA91bEPMy3VK_lVskK5FAPDMX-lqCYxiij9tKv0fgvtLuKkGcDDxgD-DvLF41JTFsd4TRIYPT5F0xUSNQdVHdrq2wiAKn85G6o-X6_d0hT5lTUhJ1pqG_w', '2024-10-26 10:01:12', '2024-10-26 10:01:12'),
(199, 81, 'ePH3cwmqa03AjJXS3xlpWG:APA91bGde7TgcPSYZxsBbafIFsYkTaZjkcoVZpoX_8uM14hEhK7-HxqEgoZStDFBAdO4XJ6qo2BaZvNducuh6_mhpuiUU6h6rTP5bkQ6PrAAZsyhqwPOV9PIBMjTLIbRQoYzN_B9qcaK', '2024-10-26 11:24:12', '2024-10-26 11:24:12'),
(200, 81, 'eHZXKOKO4UpRnsHqKBBdLP:APA91bGAbv-Z6Bn8JrSV-lR-b69aOd2n2CjS9mJMm63FELGazm0H4iK2ypekIaFKHf-VXyx1iLMUqVKJFJevHRF4bBHFKO1epEDFbQkQs9l1YAV9q8VAiik', '2024-10-26 11:47:33', '2024-10-26 11:47:33'),
(202, 8, 'f1xceQ5OuEboo8rrDs0w8h:APA91bE-ZYEN0KWaCjZXplNd6laKq2Y1p6dfauGkxMmuS8WBcFYJqcf4NxePnrvb-WKQ5rYeWPoQ2U0cZbnDtHJaRl0sQC-12ZqOXmtSlkryFElEIG24S3sZe0tYLzr6rhbvdEda1-It', '2024-10-26 12:29:40', '2024-10-26 12:29:40'),
(203, 81, 'f1xceQ5OuEboo8rrDs0w8h:APA91bE-ZYEN0KWaCjZXplNd6laKq2Y1p6dfauGkxMmuS8WBcFYJqcf4NxePnrvb-WKQ5rYeWPoQ2U0cZbnDtHJaRl0sQC-12ZqOXmtSlkryFElEIG24S3sZe0tYLzr6rhbvdEda1-It', '2024-10-26 12:32:43', '2024-10-26 12:32:43'),
(204, 183, 'test565', '2024-10-29 07:24:53', '2024-10-29 07:24:53'),
(206, 74, 'fvLXMch8Q9-NqclT9eKd9E:APA91bEWO1RrS4-q7mHqxgkGhG95V2iR1oNoi0dMCX0kIH7r7MjwlC5ukVQUghKwAuwffdOmi6N-icBcGVEfJ95a5-9K5H0pV8_6vUb25fu00scK6vM5_Lx5hkyckoE8XE-J_wqtp83I', '2024-10-30 04:57:18', '2024-10-30 04:57:18'),
(207, 81, 'cz1IOVv3T0ePbb-yq6BnZn:APA91bHISCHD28yXelR7Q9Wukc47e3he_jWMBe64-6a9toGxA3Wxnn7FtZy2dAsLFwZCptvQyvf7f2dUWZrOoHCdu_o3iXvYCLtOtAgG7M0SrqAo7k452GTn9coHHNssuMXa3pFIKeAE', '2024-10-30 07:42:41', '2024-10-30 07:42:41'),
(208, 81, 'dGS3pv_HQjqhFH9sEvPVho:APA91bFBpQ4lxdZS2M5BedShmu28GTQGupQJDoyMsxOEjN5dd2b0yBrLSWSCcRkTOhOdHcqGoqUIoY0LSSs8_M_Uzfx-U2AVUPAsG-Xgw1pmn772Vc3agSk', '2024-10-30 07:56:47', '2024-10-30 07:56:47'),
(217, 185, 'test565', '2024-11-05 09:16:31', '2024-11-05 09:16:31'),
(232, 188, 'f6rQ6g8qR4WdQIoCWC7Jh8:APA91bHCOQ6eiCTdjqB4vxen6qsrPdofWDlsIJESw7QibIYDKy3sX1O67n3ZUlBY_YzHCnF4k8w8MVrm0XOj33CVxobHAgBqOyrrTNSeMRkOnwuZ3u94LsU', '2024-11-11 08:58:04', '2024-11-11 08:58:04'),
(240, 77, 'd32cQZjvSk2HEofRmUgS_4:APA91bHYgzmtA6wKzGEvxDoii-8gvTin3tTVFLkBf2oHb4F0YOnytLmG9a7PWbinefbRUA-vbi4pl2u_BVYYvIlS5j34RFc4OsmYQCG1NtWjsaQta127hvA', '2024-11-20 12:04:40', '2024-11-20 12:04:40'),
(241, 81, 'cnzQ-FZrrUVQuv6-PtaqMj:APA91bGoD0i_Dil1H4BC7zNHarDJAEcp7b3tdRCBZNutvouFj-WtkN-8Q9SK2M3FfESU6-qwE7bT92VmM4sMalQTNHBtE-liX0hePmIzXsDqCCgECfnwkdQ', '2024-11-20 13:31:06', '2024-11-20 13:31:06'),
(252, 81, 'dIhzUitdRRWLiSlxPvPIT8:APA91bEfRsi376Jo9ZDjQUzJGWzKUrQ79sY1n2Rw6_5EMfdwSzFdRDzCtMTQ82jBY-qD5P_xFXgbYqXwR9dCDEZMExhikVxlfFJid_S89ghMvQvLt-PntwI', '2024-11-21 08:55:22', '2024-11-21 08:55:22'),
(270, 77, 'dMfK-Sa3TlGbKKctopP5PM:APA91bENbpCOg1mw7SZXEY7sgeB3MwDV3MSpEwEAZ_0-fBNPH3mIKCtBBkrBP7Bo8bEw3gHBrlCHUACXLQwaPnwnvcERGSaxXaUWuzjMV_fIORy91s79Cec', '2024-11-22 12:48:36', '2024-11-22 12:48:36'),
(285, 81, 'ewcNLwPLQQSClrDVfaHzRD:APA91bE4rgyXLhyDXQFolW3YvvSS7--kA8m-890JJhLeKWEcbBNxllfzEXwjYn3f_2qmsCvNPAeULF1zZw0GGr92jglNzTkdI0ssESUul-5Zf8xk2j03hzM', '2024-11-23 05:46:18', '2024-11-23 05:46:18'),
(292, 195, 'eWZ78aMiLEKAqwd3Mipklj:APA91bFDSW7iHs9ptEqYMk3LSiW8FTuEgTVn9pPEGCJynqmLhloPRm8PVcy2sIO_PiF2SwGVyybOeeOWR06jBdFjUNpRPOMXKgZ5gsk0ArxZX7bnwFZiMOs', '2024-11-23 14:02:31', '2024-11-23 14:02:31'),
(296, 81, 'cp6tHhraR-ezcy4ns__Q1W:APA91bHwXwgSS1kJKoU8M6RSWY2BAdQRn87EjkrTXoGBc_6FTOAnEGb8w_PhDewgELkj3bjZdsfyE-J_ZWskV1SSJpa7ZhXC4YeJISiQ3__QSNPq1qRSvFI', '2024-11-25 05:09:43', '2024-11-25 05:09:43'),
(297, 8, 'f6Y9nyEb0Eo_po69lXFpZs:APA91bFBKKq-PTU8GiKuvqEXTKOqxSGxg_m4dWQr6MR5iLg3QP8LCSc9zI0aqCBL8bk3EOyRAZFasTnZuPgrqq4leKZWNor7I7QhlpJjmBXXJaFKMaH3aR0', '2024-11-25 08:13:45', '2024-11-25 08:13:45');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'English', '1', '2024-07-25 05:42:39', '2024-07-25 05:42:39'),
(3, 'Spanish', '1', '2024-08-01 09:37:48', '2024-08-01 09:37:48'),
(8, 'Hindi', '1', '2024-07-25 05:42:37', '2024-07-25 05:42:37'),
(15, 'Dutch', '1', '2024-08-01 09:38:52', '2024-08-01 09:38:52'),
(17, 'German', '0', '2024-11-23 17:42:59', '2024-11-23 17:42:59'),
(18, 'Italian', '0', '2024-11-23 17:43:07', '2024-11-23 17:43:07'),
(19, 'Hebrew', '0', '2024-11-23 17:43:11', '2024-11-23 17:43:11'),
(20, 'Norwegian', '0', '2024-11-23 17:43:18', '2024-11-23 17:43:18'),
(21, 'Swedish', '0', '2024-11-23 17:43:23', '2024-11-23 17:43:23'),
(22, 'Suomi', '0', '2024-11-23 17:43:30', '2024-11-23 17:43:30'),
(23, 'Danish', '0', '2024-11-23 17:43:34', '2024-11-23 17:43:34'),
(24, 'French', '0', '2024-11-23 17:43:41', '2024-11-23 17:43:41'),
(25, 'Greek', '1', '2024-11-23 17:45:02', '2024-11-23 17:45:02'),
(26, 'Polish', '1', '2024-11-23 17:45:01', '2024-11-23 17:45:01'),
(27, 'Estonian', '1', '2024-11-23 17:45:00', '2024-11-23 17:45:00'),
(28, 'Russian', '1', '2024-11-23 17:45:00', '2024-11-23 17:45:00'),
(29, 'Arabic', '1', '2024-11-23 17:44:58', '2024-11-23 17:44:58'),
(30, 'Chinese (Mandarin)', '1', '2024-11-23 17:44:57', '2024-11-23 17:44:57'),
(31, 'Turkish', '1', '2024-11-23 17:44:57', '2024-11-23 17:44:57'),
(32, 'Latvian', '1', '2024-11-23 17:44:55', '2024-11-23 17:44:55'),
(33, 'Lithuanian', '1', '2024-11-23 17:44:55', '2024-11-23 17:44:55'),
(34, 'Ukrainian', '1', '2024-11-23 17:44:54', '2024-11-23 17:44:54'),
(35, 'Slovenian', '1', '2024-11-23 17:45:25', '2024-11-23 17:45:25'),
(36, 'Bosnian', '1', '2024-11-23 17:45:34', '2024-11-23 17:45:34'),
(37, 'Portuguese', '1', '2024-11-23 17:46:01', '2024-11-23 17:46:01'),
(38, 'Croatian', '1', '2024-11-23 17:46:13', '2024-11-23 17:46:13'),
(39, 'Albanian', '1', '2024-11-23 17:46:46', '2024-11-23 17:46:46'),
(40, 'Armenian', '1', '2024-11-23 17:46:52', '2024-11-23 17:46:52'),
(41, 'Basque', '1', '2024-11-23 17:46:58', '2024-11-23 17:46:58'),
(42, 'Belarusian', '1', '2024-11-23 17:47:07', '2024-11-23 17:47:07'),
(43, 'Bulgarian', '1', '2024-11-23 17:47:17', '2024-11-23 17:47:17'),
(44, 'Czech', '1', '2024-11-23 17:47:24', '2024-11-23 17:47:24'),
(45, 'Catalan', '1', '2024-11-23 17:47:30', '2024-11-23 17:47:30'),
(46, 'Hungarian', '1', '2024-11-23 17:47:45', '2024-11-23 17:47:45'),
(47, 'Maltese', '1', '2024-11-23 17:47:52', '2024-11-23 17:47:52');

-- --------------------------------------------------------

--
-- Table structure for table `login_options`
--

CREATE TABLE `login_options` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `google` enum('1','0') NOT NULL,
  `apple` enum('1','0') NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manage_notifications`
--

CREATE TABLE `manage_notifications` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manage_notifications`
--

INSERT INTO `manage_notifications` (`id`, `name`, `title`, `message`, `created_at`, `updated_at`) VALUES
(1, 'User Account Create', 'Welcome to PlusOnes', 'Account created successfully!', '2024-11-22 05:10:58', '2024-11-22 08:58:08'),
(2, 'Create Activity Update', 'Activity Created', 'We\'ve received your request.', '2024-11-22 05:10:58', '2024-11-22 07:00:08'),
(3, 'Activity status update', 'Activity status', 'Your activity is approved.', '2024-11-22 07:02:12', '2024-11-22 07:02:12'),
(4, 'Activity status update', 'Activity status', 'Your activity is rejected.', '2024-11-22 07:02:12', '2024-11-22 07:02:12'),
(5, 'Request to join sent', 'New request', '{$first_name},wants to join your activity.', '2024-11-22 07:07:21', '2024-11-22 07:07:21'),
(6, 'Request to join reject', 'Request rejected', 'Your request was rejected.', '2024-11-22 07:07:21', '2024-11-22 07:07:21'),
(7, 'Request accepted update', 'Request accepted', 'Your request was accepted.', '2024-11-22 07:10:32', '2024-11-22 07:10:32'),
(8, 'Attendance updated status', 'Attendance updated', 'You were marked present.', '2024-11-22 07:11:23', '2024-11-22 07:11:23'),
(9, 'Attendance updated status', 'Attendance updated', 'You were marked absent.', '2024-11-22 07:11:23', '2024-11-22 07:11:23'),
(10, 'New review received update', 'New review received', '{$first_name}, reviewed your activity.', '2024-11-22 07:13:12', '2024-11-22 07:13:12');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL COMMENT 'admin_id is 0',
  `title` varchar(255) DEFAULT NULL,
  `message` varchar(255) NOT NULL,
  `is_read` enum('1','0') NOT NULL DEFAULT '0' COMMENT 'Track if the notification has been read\r\n1=true,0=false',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `sender_id`, `title`, `message`, `is_read`, `created_at`, `updated_at`) VALUES
(7, 1, 130, 'New request', 'test wants to join your activity.', '0', '2024-10-08 05:35:41', '2024-10-08 05:35:41'),
(14, 153, 130, 'Attendance updated', 'You were marked present.', '0', '2024-10-09 12:07:07', '2024-10-09 12:07:07'),
(16, 6, 1, 'Attendance updated', 'You were marked absent.', '0', '2024-10-11 04:54:41', '2024-10-11 04:54:41'),
(17, 81, 1, 'Attendance updated', 'You were marked absent.', '0', '2024-10-11 04:54:43', '2024-10-11 04:54:43'),
(18, 146, 130, 'Attendance updated', 'You were marked absent.', '0', '2024-10-11 05:14:23', '2024-10-11 05:14:23'),
(19, 153, 130, 'Attendance updated', 'You were marked absent.', '0', '2024-10-11 05:14:25', '2024-10-11 05:14:25'),
(20, 146, 130, 'Attendance updated', 'You were marked present.', '0', '2024-10-11 05:14:50', '2024-10-11 05:14:50'),
(21, 74, 130, 'Attendance updated', 'You were marked present.', '0', '2024-10-11 05:14:50', '2024-10-11 05:14:50'),
(22, 153, 130, 'Attendance updated', 'You were marked present.', '0', '2024-10-11 05:14:52', '2024-10-11 05:14:52'),
(23, 146, 130, 'Request accepted', 'Your request was accepted.', '0', '2024-10-11 05:15:10', '2024-10-11 05:15:10'),
(24, 74, 130, 'Request accepted', 'Your request was accepted.', '0', '2024-10-11 05:15:11', '2024-10-11 05:15:11'),
(25, 153, 130, 'Request accepted', 'Your request was accepted.', '0', '2024-10-11 05:15:12', '2024-10-11 05:15:12'),
(26, 146, 130, 'Attendance updated', 'You were marked absent.', '0', '2024-10-11 05:27:13', '2024-10-11 05:27:13'),
(27, 74, 130, 'Attendance updated', 'You were marked absent.', '0', '2024-10-11 05:27:15', '2024-10-11 05:27:15'),
(28, 153, 130, 'Attendance updated', 'You were marked absent.', '0', '2024-10-11 05:27:17', '2024-10-11 05:27:17'),
(29, 74, 130, 'Attendance updated', 'You were marked present.', '0', '2024-10-11 05:50:03', '2024-10-11 05:50:03'),
(30, 146, 130, 'Attendance updated', 'You were marked present.', '0', '2024-10-11 05:50:44', '2024-10-11 05:50:44'),
(31, 153, 130, 'Attendance updated', 'You were marked present.', '0', '2024-10-11 05:50:55', '2024-10-11 05:50:55'),
(32, 146, 130, 'Attendance updated', 'You were marked absent.', '0', '2024-10-11 05:51:46', '2024-10-11 05:51:46'),
(33, 74, 130, 'Attendance updated', 'You were marked absent.', '0', '2024-10-11 05:51:46', '2024-10-11 05:51:46'),
(34, 153, 130, 'Attendance updated', 'You were marked absent.', '0', '2024-10-11 05:51:48', '2024-10-11 05:51:48'),
(35, 74, 130, 'Attendance updated', 'You were marked present.', '0', '2024-10-11 05:53:52', '2024-10-11 05:53:52'),
(36, 146, 130, 'Attendance updated', 'You were marked absent.', '0', '2024-10-11 05:55:27', '2024-10-11 05:55:27'),
(37, 146, 130, 'Attendance updated', 'You were marked present.', '0', '2024-10-11 05:59:40', '2024-10-11 05:59:40'),
(38, 153, 130, 'Attendance updated', 'You were marked present.', '0', '2024-10-11 06:01:57', '2024-10-11 06:01:57'),
(39, 146, 130, 'Attendance updated', 'You were marked absent.', '0', '2024-10-11 06:04:56', '2024-10-11 06:04:56'),
(40, 74, 130, 'Attendance updated', 'You were marked absent.', '0', '2024-10-11 06:04:57', '2024-10-11 06:04:57'),
(41, 153, 130, 'Attendance updated', 'You were marked absent.', '0', '2024-10-11 06:04:58', '2024-10-11 06:04:58'),
(42, 74, 130, 'Attendance updated', 'You were marked present.', '0', '2024-10-11 06:05:16', '2024-10-11 06:05:16'),
(43, 146, 130, 'Attendance updated', 'You were marked absent.', '0', '2024-10-11 06:05:21', '2024-10-11 06:05:21'),
(44, 153, 130, 'Attendance updated', 'You were marked absent.', '0', '2024-10-11 06:07:23', '2024-10-11 06:07:23'),
(45, 146, 130, 'Attendance updated', 'You were marked absent.', '0', '2024-10-11 06:16:08', '2024-10-11 06:16:08'),
(46, 146, 130, 'Attendance updated', 'You were marked present.', '0', '2024-10-11 06:16:19', '2024-10-11 06:16:19'),
(47, 146, 130, 'Attendance updated', 'You were marked present.', '0', '2024-10-11 06:16:29', '2024-10-11 06:16:29'),
(48, 146, 130, 'Attendance updated', 'You were marked absent.', '0', '2024-10-11 06:16:33', '2024-10-11 06:16:33'),
(49, 146, 130, 'Attendance updated', 'You were marked absent.', '0', '2024-10-11 06:27:49', '2024-10-11 06:27:49'),
(50, 74, 130, 'Attendance updated', 'You were marked absent.', '0', '2024-10-11 06:27:49', '2024-10-11 06:27:49'),
(51, 74, 130, 'Attendance updated', 'You were marked present.', '0', '2024-10-11 06:30:24', '2024-10-11 06:30:24'),
(52, 146, 130, 'Attendance updated', 'You were marked absent.', '0', '2024-10-11 06:30:28', '2024-10-11 06:30:28'),
(53, 146, 130, 'Attendance updated', 'You were marked absent.', '0', '2024-10-11 09:21:41', '2024-10-11 09:21:41'),
(54, 74, 130, 'Attendance updated', 'You were marked absent.', '0', '2024-10-11 09:21:41', '2024-10-11 09:21:41'),
(55, 153, 130, 'Attendance updated', 'You were marked absent.', '0', '2024-10-11 09:21:42', '2024-10-11 09:21:42'),
(56, 74, 130, 'Attendance updated', 'You were marked present.', '0', '2024-10-11 09:21:56', '2024-10-11 09:21:56'),
(57, 153, 130, 'Attendance updated', 'You were marked absent.', '0', '2024-10-11 09:22:10', '2024-10-11 09:22:10'),
(58, 146, 130, 'Attendance updated', 'You were marked present.', '0', '2024-10-11 09:22:21', '2024-10-11 09:22:21'),
(59, 146, 130, 'Attendance updated', 'You were marked absent.', '0', '2024-10-11 09:46:18', '2024-10-11 09:46:18'),
(60, 74, 130, 'Attendance updated', 'You were marked absent.', '0', '2024-10-11 09:46:18', '2024-10-11 09:46:18'),
(61, 153, 130, 'Attendance updated', 'You were marked absent.', '0', '2024-10-11 09:46:19', '2024-10-11 09:46:19'),
(62, 74, 130, 'Attendance updated', 'You were marked present.', '0', '2024-10-11 09:49:22', '2024-10-11 09:49:22'),
(63, 146, 130, 'Attendance updated', 'You were marked absent.', '0', '2024-10-11 09:51:14', '2024-10-11 09:51:14'),
(64, 153, 130, 'Attendance updated', 'You were marked present.', '0', '2024-10-11 09:51:28', '2024-10-11 09:51:28'),
(65, 1, 0, 'Activity Created', 'We\'ve received your request.', '0', '2024-10-15 05:19:46', '2024-10-15 05:19:46'),
(66, 1, 0, 'Activity status', 'Your activity is approved.', '0', '2024-10-15 05:19:56', '2024-10-15 05:19:56'),
(69, 1, 130, 'New request', 'test wants to join your activity.', '0', '2024-10-15 05:43:53', '2024-10-15 05:43:53'),
(75, 1, 0, 'Activity Created', 'We\'ve received your request.', '0', '2024-10-15 06:23:37', '2024-10-15 06:23:37'),
(76, 1, 0, 'Activity status', 'Your activity is approved.', '0', '2024-10-15 06:23:42', '2024-10-15 06:23:42'),
(77, 1, 0, 'Activity Created', 'We\'ve received your request.', '0', '2024-10-15 06:26:28', '2024-10-15 06:26:28'),
(78, 1, 0, 'Activity status', 'Your activity is approved.', '0', '2024-10-15 06:26:34', '2024-10-15 06:26:34'),
(79, 1, 0, 'Activity Created', 'We\'ve received your request.', '0', '2024-10-15 06:33:34', '2024-10-15 06:33:34'),
(80, 1, 0, 'Activity status', 'Your activity is approved.', '0', '2024-10-15 06:33:39', '2024-10-15 06:33:39'),
(81, 1, 130, 'New request', 'test wants to join your activity.', '0', '2024-10-15 06:34:24', '2024-10-15 06:34:24'),
(85, 177, 0, 'Welcome to PlusOnes', 'Account created successfully!', '0', '2024-10-15 11:56:28', '2024-10-15 11:56:28'),
(86, 178, 0, 'Welcome to PlusOnes', 'Account created successfully!', '0', '2024-10-19 04:49:54', '2024-10-19 04:49:54'),
(87, 179, 0, 'Welcome to PlusOnes', 'Account created successfully!', '0', '2024-10-19 07:34:31', '2024-10-19 07:34:31'),
(88, 1, 0, 'Activity Created', 'We\'ve received your request.', '0', '2024-10-21 10:56:35', '2024-10-21 10:56:35'),
(89, 1, 0, 'Activity status', 'Your activity is approved.', '0', '2024-10-21 10:56:42', '2024-10-21 10:56:42'),
(90, 179, 0, 'Activity Created', 'We\'ve received your request.', '0', '2024-10-24 09:32:30', '2024-10-24 09:32:30'),
(91, 179, 0, 'Activity status', 'Your activity is approved.', '0', '2024-10-24 09:32:36', '2024-10-24 09:32:36'),
(92, 8, 179, 'New request', 'Nbt wants to join your activity.', '0', '2024-10-24 09:46:37', '2024-10-24 09:46:37'),
(93, 81, 8, 'Request accepted', 'Your request was accepted.', '0', '2024-10-24 09:56:41', '2024-10-24 09:56:41'),
(94, 181, 0, 'Welcome to PlusOnes', 'Account created successfully!', '0', '2024-10-24 10:19:02', '2024-10-24 10:19:02'),
(95, 179, 159, 'New request', 'ravi kumar wants to join your activity.', '0', '2024-10-24 10:19:55', '2024-10-24 10:19:55'),
(97, 179, 0, 'Activity Created', 'We\'ve received your request.', '0', '2024-10-24 10:30:28', '2024-10-24 10:30:28'),
(98, 179, 0, 'Activity status', 'Your activity is approved.', '0', '2024-10-24 10:30:34', '2024-10-24 10:30:34'),
(99, 179, 159, 'New request', 'ravi kumar wants to join your activity.', '0', '2024-10-24 10:32:43', '2024-10-24 10:32:43'),
(102, 179, 159, 'New request', 'ravi kumar wants to join your activity.', '0', '2024-10-24 11:13:38', '2024-10-24 11:13:38'),
(105, 179, 2, 'New request', 'Bree wants to join your activity.', '0', '2024-10-25 05:11:19', '2024-10-25 05:11:19'),
(106, 179, 2, 'New request', 'Bree wants to join your activity.', '0', '2024-10-25 05:12:57', '2024-10-25 05:12:57'),
(107, 179, 1, 'New request', 'Test wants to join your activity.', '0', '2024-10-25 05:13:41', '2024-10-25 05:13:41'),
(108, 182, 0, 'Welcome to PlusOnes', 'Account created successfully!', '0', '2024-10-25 07:08:03', '2024-10-25 07:08:03'),
(109, 81, 0, 'Activity Created', 'We\'ve received your request.', '0', '2024-10-26 12:40:44', '2024-10-26 12:40:44'),
(110, 81, 0, 'Activity status', 'Your activity is approved.', '0', '2024-10-26 12:40:57', '2024-10-26 12:40:57'),
(111, 81, 0, 'Activity Created', 'We\'ve received your request.', '0', '2024-10-26 12:44:03', '2024-10-26 12:44:03'),
(112, 81, 0, 'Activity status', 'Your activity is approved.', '0', '2024-10-26 12:44:09', '2024-10-26 12:44:09'),
(113, 81, 0, 'Activity Created', 'We\'ve received your request.', '0', '2024-10-26 12:50:46', '2024-10-26 12:50:46'),
(114, 81, 0, 'Activity status', 'Your activity is approved.', '0', '2024-10-26 12:50:52', '2024-10-26 12:50:52'),
(115, 81, 0, 'Activity Created', 'We\'ve received your request.', '0', '2024-10-26 17:39:02', '2024-10-26 17:39:02'),
(116, 81, 0, 'Activity status', 'Your activity is approved.', '0', '2024-10-26 17:39:18', '2024-10-26 17:39:18'),
(117, 81, 0, 'Activity Created', 'We\'ve received your request.', '0', '2024-10-26 17:41:45', '2024-10-26 17:41:45'),
(118, 81, 0, 'Activity status', 'Your activity is approved.', '0', '2024-10-26 17:41:52', '2024-10-26 17:41:52'),
(119, 81, 0, 'Activity Created', 'We\'ve received your request.', '0', '2024-10-26 17:44:04', '2024-10-26 17:44:04'),
(120, 81, 0, 'Activity status', 'Your activity is approved.', '0', '2024-10-26 17:44:10', '2024-10-26 17:44:10'),
(121, 81, 0, 'Activity Created', 'We\'ve received your request.', '0', '2024-10-26 17:47:16', '2024-10-26 17:47:16'),
(122, 81, 0, 'Activity status', 'Your activity is approved.', '0', '2024-10-26 17:47:21', '2024-10-26 17:47:21'),
(123, 1, 0, 'Activity Created', 'We\'ve received your request.', '0', '2024-10-28 05:10:53', '2024-10-28 05:10:53'),
(124, 1, 0, 'Activity status', 'Your activity is approved.', '0', '2024-10-28 05:10:59', '2024-10-28 05:10:59'),
(125, 1, 0, 'Activity Created', 'We\'ve received your request.', '0', '2024-10-28 05:18:58', '2024-10-28 05:18:58'),
(126, 1, 0, 'Activity status', 'Your activity is approved.', '0', '2024-10-28 05:19:20', '2024-10-28 05:19:20'),
(127, 1, 161, 'New request', 'Anand wants to join your activity.', '0', '2024-10-28 06:30:31', '2024-10-28 06:30:31'),
(128, 1, 13, 'New request', 'Testing wants to join your activity.', '0', '2024-10-28 06:31:49', '2024-10-28 06:31:49'),
(129, 1, 25, 'New request', 'Carson wants to join your activity.', '0', '2024-10-28 06:32:40', '2024-10-28 06:32:40'),
(131, 13, 1, 'Request accepted', 'Your request was accepted.', '0', '2024-10-28 06:33:01', '2024-10-28 06:33:01'),
(132, 25, 1, 'Request accepted', 'Your request was accepted.', '0', '2024-10-28 06:33:03', '2024-10-28 06:33:03'),
(133, 1, 39, 'New request', 'Testf wants to join your activity.', '0', '2024-10-28 06:33:57', '2024-10-28 06:33:57'),
(134, 1, 39, 'New request', 'Testf wants to join your activity.', '0', '2024-10-28 06:38:47', '2024-10-28 06:38:47'),
(135, 183, 0, 'Welcome to PlusOnes', 'Account created successfully!', '0', '2024-10-29 07:24:53', '2024-10-29 07:24:53'),
(137, 183, 161, 'Request accepted', 'Your request was accepted.', '0', '2024-10-29 09:59:05', '2024-10-29 09:59:05'),
(139, 183, 161, 'Request accepted', 'Your request was accepted.', '0', '2024-10-29 10:00:07', '2024-10-29 10:00:07'),
(140, 1, 183, 'New request', 'Testing wants to join your activity.', '0', '2024-10-29 10:03:47', '2024-10-29 10:03:47'),
(169, 146, 0, 'Subscription Price Updated', 'Your subscription price has been updated to 7.99 for the next billing cycle.', '0', '2024-11-04 05:58:33', '2024-11-04 05:58:33'),
(170, 74, 0, 'Subscription Price Updated', 'Your subscription price has been updated to 7.99 for the next billing cycle.', '0', '2024-11-04 05:58:34', '2024-11-04 05:58:34'),
(172, 146, 0, 'Subscription Price Updated', 'Your subscription price has been updated to 9.99 for the next billing cycle.', '0', '2024-11-04 06:13:44', '2024-11-04 06:13:44'),
(173, 74, 0, 'Subscription Price Updated', 'Your subscription price has been updated to 9.99 for the next billing cycle.', '0', '2024-11-04 06:13:45', '2024-11-04 06:13:45'),
(178, 146, 0, 'Subscription Price Updated', 'Your subscription price has been updated to 9.99 for the next billing cycle.', '0', '2024-11-04 06:44:57', '2024-11-04 06:44:57'),
(179, 74, 0, 'Subscription Price Updated', 'Your subscription price has been updated to 9.99 for the next billing cycle.', '0', '2024-11-04 06:44:58', '2024-11-04 06:44:58'),
(181, 146, 0, 'Subscription Price Updated', 'Your subscription price has been updated to 9.99 for the next billing cycle.', '0', '2024-11-04 06:55:18', '2024-11-04 06:55:18'),
(182, 74, 0, 'Subscription Price Updated', 'Your subscription price has been updated to 9.99 for the next billing cycle.', '0', '2024-11-04 06:55:20', '2024-11-04 06:55:20'),
(185, 146, 0, 'Subscription Price Updated', 'Your subscription price has been updated to 9.99 for the next billing cycle.', '0', '2024-11-04 07:02:19', '2024-11-04 07:02:19'),
(186, 74, 0, 'Subscription Price Updated', 'Your subscription price has been updated to 9.99 for the next billing cycle.', '0', '2024-11-04 07:02:21', '2024-11-04 07:02:21'),
(188, 146, 0, 'Subscription Price Updated', 'Your subscription price has been updated to 4.99 for the next billing cycle.', '0', '2024-11-04 07:06:25', '2024-11-04 07:06:25'),
(189, 74, 0, 'Subscription Price Updated', 'Your subscription price has been updated to 4.99 for the next billing cycle.', '0', '2024-11-04 07:06:27', '2024-11-04 07:06:27'),
(191, 146, 0, 'Subscription Price Updated', 'Your subscription price has been updated to 3.99 for the next billing cycle.', '0', '2024-11-04 07:10:38', '2024-11-04 07:10:38'),
(192, 74, 0, 'Subscription Price Updated', 'Your subscription price has been updated to 3.99 for the next billing cycle.', '0', '2024-11-04 07:10:41', '2024-11-04 07:10:41'),
(193, 81, 0, 'Subscription Price Updated', 'Your subscription price has been updated to 3.99 for the next billing cycle.', '0', '2024-11-04 07:22:14', '2024-11-04 07:22:14'),
(194, 146, 0, 'Subscription Price Updated', 'Your subscription price has been updated to 3.99 for the next billing cycle.', '0', '2024-11-04 07:22:16', '2024-11-04 07:22:16'),
(195, 74, 0, 'Subscription Price Updated', 'Your subscription price has been updated to 3.99 for the next billing cycle.', '0', '2024-11-04 07:22:19', '2024-11-04 07:22:19'),
(196, 1, 0, 'Activity Created', 'We\'ve received your request.', '0', '2024-11-05 05:39:11', '2024-11-05 05:39:11'),
(197, 1, 0, 'Activity status', 'Your activity is approved.', '0', '2024-11-05 05:39:36', '2024-11-05 05:39:36'),
(199, 2, 0, 'Activity status', 'Your activity is rejected.', '0', '2024-11-05 07:46:17', '2024-11-05 07:46:17'),
(203, 185, 0, 'Welcome to PlusOnes', 'Account created successfully!', '0', '2024-11-05 09:16:31', '2024-11-05 09:16:31'),
(204, 185, 0, 'Activity Created', 'We\'ve received your request.', '0', '2024-11-05 09:21:48', '2024-11-05 09:21:48'),
(205, 185, 0, 'Activity Created', 'We\'ve received your request.', '0', '2024-11-05 09:23:42', '2024-11-05 09:23:42'),
(206, 185, 0, 'Activity status', 'Your activity is approved.', '0', '2024-11-05 09:23:54', '2024-11-05 09:23:54'),
(207, 185, 0, 'Activity status', 'Your activity is approved.', '0', '2024-11-05 09:23:56', '2024-11-05 09:23:56'),
(208, 146, 81, 'Request accepted', 'Your request was accepted.', '0', '2024-11-06 11:06:12', '2024-11-06 11:06:12'),
(209, 74, 81, 'Request accepted', 'Your request was accepted.', '0', '2024-11-06 11:06:13', '2024-11-06 11:06:13'),
(210, 153, 81, 'Request accepted', 'Your request was accepted.', '0', '2024-11-06 11:06:15', '2024-11-06 11:06:15'),
(211, 3, 81, 'New request', 'test wants to join your activity.', '0', '2024-11-06 11:12:24', '2024-11-06 11:12:24'),
(212, 81, 3, 'Request accepted', 'Your request was accepted.', '0', '2024-11-06 11:13:57', '2024-11-06 11:13:57'),
(213, 3, 74, 'New request', 'Mark wants to join your activity.', '0', '2024-11-06 11:26:21', '2024-11-06 11:26:21'),
(214, 74, 3, 'Request accepted', 'Your request was accepted.', '0', '2024-11-06 11:26:44', '2024-11-06 11:26:44'),
(215, 74, 3, 'Attendance updated', 'You were marked absent.', '0', '2024-11-06 12:46:22', '2024-11-06 12:46:22'),
(216, 74, 0, 'Activity Created', 'We\'ve received your request.', '0', '2024-11-06 12:49:25', '2024-11-06 12:49:25'),
(217, 74, 0, 'Activity status', 'Your activity is approved.', '0', '2024-11-06 12:49:31', '2024-11-06 12:49:31'),
(218, 1, 0, 'Activity Created', 'We\'ve received your request.', '0', '2024-11-08 04:46:19', '2024-11-08 04:46:19'),
(219, 1, 0, 'Activity status', 'Your activity is approved.', '0', '2024-11-08 04:46:24', '2024-11-08 04:46:24'),
(220, 1, 0, 'Activity Created', 'We\'ve received your request.', '0', '2024-11-08 05:04:10', '2024-11-08 05:04:10'),
(221, 1, 0, 'Activity status', 'Your activity is approved.', '0', '2024-11-08 05:04:15', '2024-11-08 05:04:15'),
(223, 187, 0, 'Welcome to PlusOnes', 'Account created successfully!', '0', '2024-11-09 08:54:47', '2024-11-09 08:54:47'),
(224, 74, 81, 'Request accepted', 'Your request was accepted.', '0', '2024-11-11 07:38:11', '2024-11-11 07:38:11'),
(225, 81, 81, 'Request accepted', 'Your request was accepted.', '0', '2024-11-11 07:38:12', '2024-11-11 07:38:12'),
(226, 189, 0, 'Welcome to PlusOnes', 'Account created successfully!', '0', '2024-11-11 12:57:44', '2024-11-11 12:57:44'),
(227, 190, 0, 'Welcome to PlusOnes', 'Account created successfully!', '0', '2024-11-12 05:07:16', '2024-11-12 05:07:16'),
(228, 191, 0, 'Welcome to PlusOnes', 'Account created successfully!', '0', '2024-11-12 13:19:55', '2024-11-12 13:19:55'),
(229, 81, 187, 'New request', 'Test5f wants to join your activity.', '0', '2024-11-13 13:11:02', '2024-11-13 13:11:02'),
(230, 187, 81, 'Request accepted', 'Your request was accepted.', '0', '2024-11-13 13:26:32', '2024-11-13 13:26:32'),
(231, 187, 81, 'Request accepted', 'Your request was accepted.', '0', '2024-11-13 13:29:28', '2024-11-13 13:29:28'),
(232, 1, 81, 'New request', 'test wants to join your activity.', '0', '2024-11-14 04:36:22', '2024-11-14 04:36:22'),
(233, 187, 81, 'Request accepted', 'Your request was accepted.', '0', '2024-11-14 04:37:05', '2024-11-14 04:37:05'),
(234, 187, 81, 'Request accepted', 'Your request was accepted.', '0', '2024-11-14 04:38:09', '2024-11-14 04:38:09'),
(235, 81, 187, 'New request', 'Test5f wants to join your activity.', '0', '2024-11-14 04:53:15', '2024-11-14 04:53:15'),
(236, 81, 191, 'New request', 'Testing paymentidf wants to join your activity.', '0', '2024-11-14 07:52:18', '2024-11-14 07:52:18'),
(237, 81, 191, 'New request', 'Testing paymentidf wants to join your activity.', '0', '2024-11-14 07:58:25', '2024-11-14 07:58:25'),
(238, 191, 81, 'Request accepted', 'Your request was accepted.', '0', '2024-11-14 08:07:40', '2024-11-14 08:07:40'),
(239, 187, 81, 'Request accepted', 'Your request was accepted.', '0', '2024-11-14 09:28:32', '2024-11-14 09:28:32'),
(240, 191, 81, 'Request accepted', 'Your request was accepted.', '0', '2024-11-14 09:30:52', '2024-11-14 09:30:52'),
(241, 187, 81, 'Request rejected', 'Your request was rejected.', '0', '2024-11-14 09:55:13', '2024-11-14 09:55:13'),
(242, 191, 81, 'Request accepted', 'Your request was accepted.', '0', '2024-11-14 09:55:30', '2024-11-14 09:55:30'),
(243, 191, 81, 'Request rejected', 'Your request was rejected.', '0', '2024-11-14 15:22:48', '2024-11-14 15:22:48'),
(244, 1, 81, 'New request', 'test wants to join your activity.', '0', '2024-11-15 18:04:55', '2024-11-15 18:04:55'),
(245, 1, 0, 'Activity Created', 'We\'ve received your request.', '0', '2024-11-19 13:25:18', '2024-11-19 13:25:18'),
(246, 1, 0, 'Activity status', 'Your activity is approved.', '0', '2024-11-19 13:25:23', '2024-11-19 13:25:23'),
(247, 1, 0, 'Activity status', 'Your activity is approved.', '0', '2024-11-19 13:25:24', '2024-11-19 13:25:24'),
(248, 1, 81, 'New request', 'test wants to join your activity.', '0', '2024-11-19 19:50:49', '2024-11-19 19:50:49'),
(249, 1, 0, 'Activity Created', 'We\'ve received your request.', '0', '2024-11-20 04:27:42', '2024-11-20 04:27:42'),
(250, 188, 0, 'Activity Created', 'We\'ve received your request.', '0', '2024-11-20 12:59:23', '2024-11-20 12:59:23'),
(251, 188, 0, 'Activity status', 'Your activity is approved.', '0', '2024-11-20 12:59:35', '2024-11-20 12:59:35'),
(252, 188, 0, 'Activity Created', 'We\'ve received your request.', '0', '2024-11-20 13:02:30', '2024-11-20 13:02:30'),
(253, 188, 0, 'Activity status', 'Your activity is approved.', '0', '2024-11-20 13:02:34', '2024-11-20 13:02:34'),
(254, 81, 177, 'New request', 'zoe wants to join your activity.', '0', '2024-11-20 21:59:50', '2024-11-20 21:59:50'),
(255, 177, 81, 'Request accepted', 'Your request was accepted.', '0', '2024-11-20 22:04:11', '2024-11-20 22:04:11'),
(256, 1, 0, 'Activity status', 'Your activity is rejected.', '0', '2024-11-21 07:53:04', '2024-11-21 07:53:04'),
(257, 1, 0, 'Activity status', 'Your activity is rejected.', '0', '2024-11-21 07:53:10', '2024-11-21 07:53:10'),
(258, 188, 0, 'Activity Created', 'We\'ve received your request.', '0', '2024-11-21 09:45:48', '2024-11-21 09:45:48'),
(259, 188, 0, 'Activity Created', 'We\'ve received your request.', '0', '2024-11-21 10:03:25', '2024-11-21 10:03:25'),
(260, 188, 0, 'Activity status', 'Your activity is approved.', '0', '2024-11-21 10:03:32', '2024-11-21 10:03:32'),
(261, 191, 0, 'Welcome to PlusOnes', 'Account created successfully!', '0', '2024-11-22 09:25:42', '2024-11-22 09:25:42'),
(262, 191, 0, 'Welcome to PlusOnes', 'Account created successfully!', '0', '2024-11-22 09:26:04', '2024-11-22 09:26:04'),
(263, 81, 1, 'New request', 'Test wants to join your activity.', '0', '2024-11-22 09:49:58', '2024-11-22 09:49:58'),
(264, 1, 81, 'New request', 'test wants to join your activity.', '0', '2024-11-22 10:13:57', '2024-11-22 10:13:57'),
(265, 81, 74, 'New request', 'Mark,wants to join your activity.', '0', '2024-11-22 12:44:06', '2024-11-22 12:44:06'),
(266, 77, 0, 'Activity Created', 'We\'ve received your request.', '0', '2024-11-22 12:54:22', '2024-11-22 12:54:22'),
(267, 77, 0, 'Activity status', 'Your activity is approved.', '0', '2024-11-22 12:54:26', '2024-11-22 12:54:26'),
(268, 77, 0, 'Activity status', 'Your activity is rejected.', '0', '2024-11-22 13:03:32', '2024-11-22 13:03:32'),
(269, 1, 81, 'New request', 'test,wants to join your activity.', '0', '2024-11-22 13:05:03', '2024-11-22 13:05:03'),
(270, 81, 177, 'New request', 'zoe,wants to join your activity.', '0', '2024-11-22 13:50:15', '2024-11-22 13:50:15'),
(271, 177, 81, 'Request accepted', 'Your request was accepted.', '0', '2024-11-22 13:51:35', '2024-11-22 13:51:35'),
(272, 1, 81, 'Request rejected', 'Your request was rejected.', '0', '2024-11-22 19:59:43', '2024-11-22 19:59:43'),
(273, 187, 81, 'Attendance updated', 'You were marked present.', '0', '2024-11-22 20:57:04', '2024-11-22 20:57:04'),
(274, 188, 0, 'Activity status', 'Your activity is rejected.', '0', '2024-11-22 20:58:46', '2024-11-22 20:58:46'),
(275, 74, 81, 'Request rejected', 'Your request was rejected.', '0', '2024-11-23 10:12:06', '2024-11-23 10:12:06'),
(276, 81, 177, 'New request', 'zoe,wants to join your activity.', '0', '2024-11-23 11:20:18', '2024-11-23 11:20:18'),
(277, 177, 81, 'Request accepted', 'Your request was accepted.', '0', '2024-11-23 11:21:28', '2024-11-23 11:21:28'),
(278, 81, 177, 'New request', 'zoe,wants to join your activity.', '0', '2024-11-23 13:19:20', '2024-11-23 13:19:20'),
(279, 81, 125, 'New review received', 'test, reviewed your activity.', '0', '2024-11-25 05:27:14', '2024-11-25 05:27:14'),
(280, 3, 81, 'New review received', 'Debra, reviewed your activity.', '0', '2024-11-25 05:35:15', '2024-11-25 05:35:15'),
(281, 3, 81, 'New review received', 'Debra, reviewed your activity.', '0', '2024-11-25 05:37:41', '2024-11-25 05:37:41'),
(282, 81, 0, 'Activity Created', 'We\'ve received your request.', '0', '2024-11-25 06:50:54', '2024-11-25 06:50:54'),
(283, 81, 0, 'Activity status', 'Your activity is approved.', '0', '2024-11-25 06:51:51', '2024-11-25 06:51:51'),
(284, 81, 0, 'Activity status', 'Your activity is approved.', '0', '2024-11-25 07:40:24', '2024-11-25 07:40:24');

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
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(11) NOT NULL,
  `deduct_amount` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `deduct_amount`, `created_at`, `updated_at`) VALUES
(1, '3.00', '2024-11-06 09:11:26', '2024-11-06 13:00:54');

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
(19, 'App\\Models\\User', 3, 'auth_token', '8846cc2a26103cc51e2f19df963ca9f51d7cbcb88b8868e83170589d954d282d', '[\"*\"]', NULL, NULL, '2024-07-24 13:18:17', '2024-07-24 13:18:17'),
(26, 'App\\Models\\User', 4, 'auth_token', '5ece75726bd7d6e47b4f649ac1db864bee63e6f9578d8e2db761934ed2419a02', '[\"*\"]', NULL, NULL, '2024-07-24 13:19:19', '2024-07-24 13:19:19'),
(27, 'App\\Models\\User', 6, 'auth_token', '086c3289997013a29dce74a305f99f2147eed0c102e1f2f931f65fc94f213d88', '[\"*\"]', NULL, NULL, '2024-07-24 13:20:26', '2024-07-24 13:20:26'),
(28, 'App\\Models\\User', 7, 'auth_token', '967ecb3c01d145e605ac096dc70f3081e127de8e0393b846cd38bc1e9580090a', '[\"*\"]', NULL, NULL, '2024-07-24 13:20:30', '2024-07-24 13:20:30'),
(29, 'App\\Models\\User', 8, 'auth_token', '0cf23b31f9be7e0cb6d2f77108a574c1e556799526b275086f36d1e7505ad6d7', '[\"*\"]', NULL, NULL, '2024-07-24 13:20:33', '2024-07-24 13:20:33'),
(30, 'App\\Models\\User', 9, 'auth_token', 'f6213d4816801d9b177a59d294e5c82251a276c54cb8c989b5cc2516add9eebc', '[\"*\"]', NULL, NULL, '2024-07-24 13:21:16', '2024-07-24 13:21:16'),
(31, 'App\\Models\\User', 10, 'auth_token', '9bf2a194b1a6565ca3ff38109b6b1d4093b0a3a7fb86123a161d1a754f566e3e', '[\"*\"]', NULL, NULL, '2024-07-24 13:29:26', '2024-07-24 13:29:26'),
(32, 'App\\Models\\User', 11, 'auth_token', 'bf96fdf6386f7c863bd1a076d04528a4e3baa6149fc6a6925108be34f02b7945', '[\"*\"]', NULL, NULL, '2024-07-24 13:30:14', '2024-07-24 13:30:14'),
(33, 'App\\Models\\User', 12, 'auth_token', '3207f63d1cbdb81d62c0327c5160fbf189bf87754fe9f9815335e52f7721f6b0', '[\"*\"]', NULL, NULL, '2024-07-24 13:32:23', '2024-07-24 13:32:23'),
(34, 'App\\Models\\User', 13, 'auth_token', 'd3d98a5e1000a727be0931ee8b660232db9aff2374300e2c84afb03f424d0438', '[\"*\"]', NULL, NULL, '2024-07-25 04:29:29', '2024-07-25 04:29:29'),
(35, 'App\\Models\\User', 14, 'auth_token', '88f2600ba0915cefa5963fae4565899368d68d6d80a1a8cfdfd9ee88323972d0', '[\"*\"]', NULL, NULL, '2024-07-25 04:31:09', '2024-07-25 04:31:09'),
(36, 'App\\Models\\User', 15, 'auth_token', 'c3325eb82cac06c6d25745f970012fc8d59bb1f664785010a5773eaa132a0c4e', '[\"*\"]', NULL, NULL, '2024-07-25 04:33:19', '2024-07-25 04:33:19'),
(37, 'App\\Models\\User', 16, 'auth_token', 'aa908858e091ee3c8fc75fc947452f3ec882a2deb80be9dfc670806e95e027e7', '[\"*\"]', NULL, NULL, '2024-07-25 04:34:21', '2024-07-25 04:34:21'),
(38, 'App\\Models\\User', 17, 'auth_token', '3351dfdda2b7ed485161447a9fef09be901ec56c1712423c9c35a3a67a97f297', '[\"*\"]', NULL, NULL, '2024-07-25 04:34:25', '2024-07-25 04:34:25'),
(39, 'App\\Models\\User', 18, 'auth_token', '3bd4f35e5db50f6adce6f7b7edf3186e8d839f67b3bbe91260d29b9972dd7e7c', '[\"*\"]', NULL, NULL, '2024-07-25 04:34:28', '2024-07-25 04:34:28'),
(40, 'App\\Models\\User', 19, 'auth_token', 'd647e3867b86c2af9dad8fc1fa11ea195554b90cc26b5a55d14c644ef2e9960c', '[\"*\"]', NULL, NULL, '2024-07-25 04:36:47', '2024-07-25 04:36:47'),
(41, 'App\\Models\\User', 19, 'auth_token', 'bb254ff79c9c8d9dda30d65789cb8862d77b57300a6abb7b1a6b46e5fd7695ec', '[\"*\"]', NULL, NULL, '2024-07-25 04:36:50', '2024-07-25 04:36:50'),
(42, 'App\\Models\\User', 20, 'auth_token', '19b0bae5873b226686d56495dcfef33efaf2f4ebfe3643d69e11d12eef6fe856', '[\"*\"]', NULL, NULL, '2024-07-25 04:40:45', '2024-07-25 04:40:45'),
(43, 'App\\Models\\User', 20, 'auth_token', '37d1d6f56326b29418c62be9ec5cf6032b3df7c066f7a72e799b469860511ee8', '[\"*\"]', NULL, NULL, '2024-07-25 04:40:56', '2024-07-25 04:40:56'),
(44, 'App\\Models\\User', 20, 'auth_token', '7b380afd8aff440240e8795f315a1a9a5401a444ee8c012fc24a68709dbd8511', '[\"*\"]', NULL, NULL, '2024-07-25 04:41:19', '2024-07-25 04:41:19'),
(45, 'App\\Models\\User', 21, 'auth_token', 'c9907e2eca3fc8466c59e5d3ac54e6eab92d17b4d228c7c6d3bfd672534109c1', '[\"*\"]', NULL, NULL, '2024-07-25 04:47:35', '2024-07-25 04:47:35'),
(46, 'App\\Models\\User', 21, 'auth_token', '3d7548bfa996b823984339d8551aa8cd86a61dbf7a893d3dfb0971bb21e02e37', '[\"*\"]', NULL, NULL, '2024-07-25 04:48:58', '2024-07-25 04:48:58'),
(47, 'App\\Models\\User', 21, 'auth_token', '3cdb9f44081c3b5eda459cb50a638cab9bea4ed04ecbaba03af84a4ba31eb83b', '[\"*\"]', NULL, NULL, '2024-07-25 04:49:08', '2024-07-25 04:49:08'),
(48, 'App\\Models\\User', 21, 'auth_token', 'f97b672054960dfb32d8dba836f08ea11a881ac62ed722aa8b3b389ef5008724', '[\"*\"]', NULL, NULL, '2024-07-25 04:52:02', '2024-07-25 04:52:02'),
(49, 'App\\Models\\User', 21, 'auth_token', '796b599b17125b8b5517decc21fc15918661d24565d97c2ae4482e36f47e99d6', '[\"*\"]', NULL, NULL, '2024-07-25 04:55:10', '2024-07-25 04:55:10'),
(50, 'App\\Models\\User', 21, 'auth_token', 'd5fa8e09a419ad4858b41b63d0fa881a2b8de36d75f05a01f18551a900c6b5d9', '[\"*\"]', NULL, NULL, '2024-07-25 04:57:04', '2024-07-25 04:57:04'),
(51, 'App\\Models\\User', 21, 'auth_token', 'e16ef30c4b025746c0699f872f4477a5e3322ad3436c26074702f9a743ee7314', '[\"*\"]', NULL, NULL, '2024-07-25 04:57:12', '2024-07-25 04:57:12'),
(52, 'App\\Models\\User', 21, 'auth_token', 'aa9db8d506df9a0cecd6b686a290433b6adfbc4a7cbbc4fc7c8c6b68e71f0a55', '[\"*\"]', NULL, NULL, '2024-07-25 04:57:15', '2024-07-25 04:57:15'),
(53, 'App\\Models\\User', 21, 'auth_token', 'b4755a6a9f468061f31ef706f9ad518c890ddbc0eedb1063985310b0c7e0ca12', '[\"*\"]', NULL, NULL, '2024-07-25 04:57:49', '2024-07-25 04:57:49'),
(54, 'App\\Models\\User', 21, 'auth_token', '070803907c033a91f6205e1fbc63807ee389f6180a79e8e4d78a38c3d7a4a7cd', '[\"*\"]', NULL, NULL, '2024-07-25 05:07:49', '2024-07-25 05:07:49'),
(55, 'App\\Models\\User', 21, 'auth_token', '3ba4c10be812206d5b255e543b63f4f7fa8ada96a47a794d24217eef8f900167', '[\"*\"]', NULL, NULL, '2024-07-25 05:08:06', '2024-07-25 05:08:06'),
(56, 'App\\Models\\User', 22, 'auth_token', '8fd6b7228a7ba1aed8bc20db463ab900a1abff5a2cd158bcc6e4a2e91f2bda7c', '[\"*\"]', NULL, NULL, '2024-07-25 05:15:06', '2024-07-25 05:15:06'),
(57, 'App\\Models\\User', 22, 'auth_token', 'b1255a4d8c888d37f32423674960bd4cda362d02c4ed6b4a02ce991dadaa5f1f', '[\"*\"]', NULL, NULL, '2024-07-25 05:17:14', '2024-07-25 05:17:14'),
(58, 'App\\Models\\User', 22, 'auth_token', 'ed2aeed2d95f36cdd1fe3565eeb73288db5d2addb8020eaf9c5d8bd2f8e19d82', '[\"*\"]', NULL, NULL, '2024-07-25 05:17:36', '2024-07-25 05:17:36'),
(59, 'App\\Models\\User', 22, 'auth_token', '8d00f955c3c74746e14772d62cc1bc099ddb7c941dca2270744ecb6732d6f9c9', '[\"*\"]', NULL, NULL, '2024-07-25 05:17:51', '2024-07-25 05:17:51'),
(60, 'App\\Models\\User', 22, 'auth_token', '858fa259d6cd6c89803bbfbe86f1c7b0a48704039a4f28d6a8f3154b2230f147', '[\"*\"]', NULL, NULL, '2024-07-25 05:18:13', '2024-07-25 05:18:13'),
(61, 'App\\Models\\User', 23, 'auth_token', 'b0805511da2b7f00db8273b25026f1f7da3c464b08595b75572cabc4467b5695', '[\"*\"]', NULL, NULL, '2024-07-25 05:19:03', '2024-07-25 05:19:03'),
(62, 'App\\Models\\User', 23, 'auth_token', '3743b889a70f81ce33b1a92fa1bd5af942f909ff16aa07a40e1acaebdd304f46', '[\"*\"]', NULL, NULL, '2024-07-25 05:19:08', '2024-07-25 05:19:08'),
(63, 'App\\Models\\User', 22, 'auth_token', '0a6136bf156e39f12c25c35e0cb7411ca1b224bbe428aee12f1b3089bafd2807', '[\"*\"]', NULL, NULL, '2024-07-25 05:20:19', '2024-07-25 05:20:19'),
(64, 'App\\Models\\User', 23, 'auth_token', '2601ca021eb5afc3610fa3118aabc8676aed4611181b232b9a7f13577965095f', '[\"*\"]', NULL, NULL, '2024-07-25 05:21:24', '2024-07-25 05:21:24'),
(65, 'App\\Models\\User', 23, 'auth_token', 'dfed53cf0423efc598fb9deada25e16d9a3b318ae799c08e215555d702555560', '[\"*\"]', '2024-07-25 07:16:40', NULL, '2024-07-25 05:21:30', '2024-07-25 07:16:40'),
(68, 'App\\Models\\User', 24, 'auth_token', '8f96422b127ff9b512d5da4f9b1db8c0cb355767c5f9b65b80db8d1253bfbb4b', '[\"*\"]', NULL, NULL, '2024-07-25 06:56:46', '2024-07-25 06:56:46'),
(69, 'App\\Models\\User', 24, 'auth_token', 'a7a5d895819d1dbed099200679e4043e23cf3899885529bd7c051b8ef3546dd9', '[\"*\"]', NULL, NULL, '2024-07-25 07:04:22', '2024-07-25 07:04:22'),
(70, 'App\\Models\\User', 25, 'auth_token', '35ec51796544e1da14a1e928abe3088ed4eef7aa781bc9eb5dece745b6df89a0', '[\"*\"]', NULL, NULL, '2024-07-25 07:04:24', '2024-07-25 07:04:24'),
(71, 'App\\Models\\User', 25, 'auth_token', '29d33ca64b52c14397b91a147ebb92b4c6d3489be6c6b33c9a3c6bf2ac6c0059', '[\"*\"]', NULL, NULL, '2024-07-25 07:30:56', '2024-07-25 07:30:56'),
(77, 'App\\Models\\User', 26, 'auth_token', '33bdb201cfe17352605efa31dfb58c127d98aa799d2bb072f5f2a2b3e7129749', '[\"*\"]', NULL, NULL, '2024-07-25 07:51:04', '2024-07-25 07:51:04'),
(78, 'App\\Models\\User', 26, 'auth_token', 'efe25711a0b1c25013a73c81f38089838ad7058a026ce3b368e23e06996a8e4d', '[\"*\"]', NULL, NULL, '2024-07-25 07:52:19', '2024-07-25 07:52:19'),
(79, 'App\\Models\\User', 27, 'auth_token', '3008b7b4c398e7fa11fd76e8fb937120d951b92c5a66d94fb3ffdfe2ad4fbd58', '[\"*\"]', NULL, NULL, '2024-07-25 08:58:53', '2024-07-25 08:58:53'),
(80, 'App\\Models\\User', 26, 'auth_token', 'a95a1fbacf3a14b188ee74bc4a09f34c166139f9656f32e95329768721f877bd', '[\"*\"]', NULL, NULL, '2024-07-25 08:58:56', '2024-07-25 08:58:56'),
(81, 'App\\Models\\User', 26, 'auth_token', '8e598dc996abee8d64d31e568174affc7756cb8e596ff5dc34e2954e8fe768db', '[\"*\"]', NULL, NULL, '2024-07-25 08:58:59', '2024-07-25 08:58:59'),
(82, 'App\\Models\\User', 27, 'auth_token', 'f1fed87b4be95524ccf8ab51a9177c41dd81171ebe72196b32d1a329ab14741a', '[\"*\"]', NULL, NULL, '2024-07-25 09:05:26', '2024-07-25 09:05:26'),
(83, 'App\\Models\\User', 28, 'auth_token', '33a8ac7a5dbcb02344191cf0bdb24f0ed05e9f4d7b99ff5fdf69d2038bbcd2e2', '[\"*\"]', NULL, NULL, '2024-07-25 09:05:47', '2024-07-25 09:05:47'),
(84, 'App\\Models\\User', 28, 'auth_token', 'cc9f0da3062d5c8fd763cd0fef206ea290734ec7f408186fb7932e7adafe3bd7', '[\"*\"]', NULL, NULL, '2024-07-25 09:22:10', '2024-07-25 09:22:10'),
(85, 'App\\Models\\User', 28, 'auth_token', '9cc561e184d27dc3bf911805d1c6b9a5b0d279e9771d5e38db83634f9cb7184b', '[\"*\"]', NULL, NULL, '2024-07-25 09:24:43', '2024-07-25 09:24:43'),
(86, 'App\\Models\\User', 28, 'auth_token', 'a80b569b480f41974af01263832b61df1991ca286e4e89e75d132aadb6f7daa9', '[\"*\"]', NULL, NULL, '2024-07-25 09:24:45', '2024-07-25 09:24:45'),
(87, 'App\\Models\\User', 28, 'auth_token', '195562036ccff4cc75ea4e7261240b607f8bb362df6fec0f9768e0531dcb23e9', '[\"*\"]', NULL, NULL, '2024-07-25 09:25:11', '2024-07-25 09:25:11'),
(88, 'App\\Models\\User', 28, 'auth_token', '6504c7b6cb9c47be37d0e01ce5bdfd576fc5e63d0e149e6da495e7d42922daae', '[\"*\"]', NULL, NULL, '2024-07-25 09:25:40', '2024-07-25 09:25:40'),
(89, 'App\\Models\\User', 26, 'auth_token', '0f80f0359b9260b65181bf3f2c22fb8aad9767b515abb0d802a780d9dec69756', '[\"*\"]', NULL, NULL, '2024-07-25 09:50:16', '2024-07-25 09:50:16'),
(90, 'App\\Models\\User', 26, 'auth_token', '45b39aa455877dcb223383ea042ba57de3792dbca0cebca7314876bbbe416e54', '[\"*\"]', NULL, NULL, '2024-07-25 09:51:50', '2024-07-25 09:51:50'),
(91, 'App\\Models\\User', 26, 'auth_token', '510ef539b276edae8e7a41be31b70144dc4fe0873abd785f1cdf9c34e20ec22a', '[\"*\"]', NULL, NULL, '2024-07-25 09:59:33', '2024-07-25 09:59:33'),
(92, 'App\\Models\\User', 26, 'auth_token', '9a72823d3ee0de207edd9fdec5115f58520fbe09878aee5f2ddd8f25fae7c38f', '[\"*\"]', NULL, NULL, '2024-07-25 10:01:51', '2024-07-25 10:01:51'),
(94, 'App\\Models\\User', 28, 'auth_token', '6d1d97b7ba3564c23f5fa62f6ee3ae9a15f992c1176c38aef1cd6856e5779054', '[\"*\"]', NULL, NULL, '2024-07-25 10:06:37', '2024-07-25 10:06:37'),
(96, 'App\\Models\\User', 26, 'auth_token', '2fcccbf89747c0aef644c2ffb68b00d017833edf4bf189aae46ef730406ed6f7', '[\"*\"]', NULL, NULL, '2024-07-25 10:07:30', '2024-07-25 10:07:30'),
(98, 'App\\Models\\User', 28, 'auth_token', '89dc292fee09bd625db72244574f68d6014f54681f6b09d29aa92b8138b1a322', '[\"*\"]', NULL, NULL, '2024-07-25 10:07:39', '2024-07-25 10:07:39'),
(99, 'App\\Models\\User', 28, 'auth_token', '39f2cf522cfae342cea47ce997a7f2ce364c815cd88fa2617ec523bf923acf20', '[\"*\"]', NULL, NULL, '2024-07-25 10:11:53', '2024-07-25 10:11:53'),
(101, 'App\\Models\\User', 24, 'auth_token', 'e6d0693af78ec77453130540dd06da69966d6cfc4163585db3044705615f2458', '[\"*\"]', NULL, NULL, '2024-07-25 10:12:32', '2024-07-25 10:12:32'),
(105, 'App\\Models\\User', 29, 'auth_token', '50b02c857fc9b6a2b99132c3ababb6fb691b591a7886455a72ed5cc8d9795b07', '[\"*\"]', NULL, NULL, '2024-07-25 10:14:02', '2024-07-25 10:14:02'),
(106, 'App\\Models\\User', 29, 'auth_token', '37afdeb3e2670579ddbe6edffa36d65659e526086cb13f8ba5c4ed2f24ece457', '[\"*\"]', NULL, NULL, '2024-07-25 10:14:11', '2024-07-25 10:14:11'),
(109, 'App\\Models\\User', 29, 'auth_token', 'b1c94414fe7921b9fc3b5cf64113345ab6d54e000bd023e4aa3157ce2ea1fce2', '[\"*\"]', NULL, NULL, '2024-07-25 10:16:56', '2024-07-25 10:16:56'),
(110, 'App\\Models\\User', 29, 'auth_token', '347c6460723edc18e1f8d1d69e4eadcc6269c9b2b5cc819aa3f0ab77d7758cda', '[\"*\"]', NULL, NULL, '2024-07-25 10:22:50', '2024-07-25 10:22:50'),
(111, 'App\\Models\\User', 29, 'auth_token', '2ecf0da98901073dbcab5bd0e3aee7f684b09e89720cefaf189de96be0ecddd5', '[\"*\"]', NULL, NULL, '2024-07-25 10:23:11', '2024-07-25 10:23:11'),
(112, 'App\\Models\\User', 30, 'auth_token', 'febd361fb45616ac2f335381ae250f3271d9d0f49afec1a7c77ccc25fd0a3ec9', '[\"*\"]', NULL, NULL, '2024-07-25 10:23:19', '2024-07-25 10:23:19'),
(113, 'App\\Models\\User', 30, 'auth_token', '8a16169795b1c309814b469b558dc1f6d52ef639b367fcade46de6d3417aef62', '[\"*\"]', NULL, NULL, '2024-07-25 10:23:53', '2024-07-25 10:23:53'),
(114, 'App\\Models\\User', 30, 'auth_token', '1d4c06362ea40c21ffe1af3736a6334573f1a550e11fef41e3090bd58979e563', '[\"*\"]', NULL, NULL, '2024-07-25 10:24:23', '2024-07-25 10:24:23'),
(129, 'App\\Models\\User', 30, 'auth_token', 'f2adae160f0e89b82abe693ab1feb75963f6b3348b815014931856c322772272', '[\"*\"]', NULL, NULL, '2024-07-25 10:38:33', '2024-07-25 10:38:33'),
(130, 'App\\Models\\User', 29, 'auth_token', '9b0cc363d50dcf195f7b100f9d8cf27d1bd4aa66656974debd0b567db848147a', '[\"*\"]', '2024-07-25 10:44:21', NULL, '2024-07-25 10:39:32', '2024-07-25 10:44:21'),
(132, 'App\\Models\\User', 29, 'auth_token', '25e45f00c3764b65f28d3f1fb5182cab77691416357d1713a4ab47623a04290c', '[\"*\"]', NULL, NULL, '2024-07-25 10:45:56', '2024-07-25 10:45:56'),
(133, 'App\\Models\\User', 29, 'auth_token', 'aa72f048fcf4597b9296ead02e5f78c23bc8bb1b712032e799b7edfcc4993fb1', '[\"*\"]', NULL, NULL, '2024-07-25 10:46:23', '2024-07-25 10:46:23'),
(134, 'App\\Models\\User', 29, 'auth_token', 'c1d98b8e7ff14dfda5a2d1a513fad7699d70a8c4af30ce9674e596842f879d26', '[\"*\"]', NULL, NULL, '2024-07-25 10:46:59', '2024-07-25 10:46:59'),
(135, 'App\\Models\\User', 29, 'auth_token', '860891db355fcf5fa4a1c89c7866a34c9f4b43cefb31e59335874942b5255355', '[\"*\"]', NULL, NULL, '2024-07-25 10:47:22', '2024-07-25 10:47:22'),
(136, 'App\\Models\\User', 29, 'auth_token', 'f8e3c2211828f551eee51d9dfad1aa4388289c77d5c3860811f0f51240ed9f37', '[\"*\"]', NULL, NULL, '2024-07-25 10:50:52', '2024-07-25 10:50:52'),
(139, 'App\\Models\\User', 31, 'auth_token', 'eb5643dca1592c273e1cdaa4febb8c4e869a3010d64f35f17387df85a02bfdb3', '[\"*\"]', NULL, NULL, '2024-07-25 11:02:13', '2024-07-25 11:02:13'),
(140, 'App\\Models\\User', 32, 'auth_token', 'd979bd91284f4a6f8361e0930b5d80f6160c2986f8b1d033389632ae2ec7e0ae', '[\"*\"]', NULL, NULL, '2024-07-25 11:04:16', '2024-07-25 11:04:16'),
(141, 'App\\Models\\User', 33, 'auth_token', 'a253704e248526522a60b0314366e4d9ab6615611e67418f06cc17a3fdee5e87', '[\"*\"]', NULL, NULL, '2024-07-25 11:05:12', '2024-07-25 11:05:12'),
(142, 'App\\Models\\User', 29, 'auth_token', '95621330d39c76d6a7239f6d47b707907a8e89abbd8711c467b35d1a5b76b764', '[\"*\"]', '2024-07-25 11:21:24', NULL, '2024-07-25 11:09:15', '2024-07-25 11:21:24'),
(151, 'App\\Models\\User', 34, 'auth_token', '3952c233d141e26fdf0fd5239a3db30351ec4ba94138f3e91248453f515f71ae', '[\"*\"]', NULL, NULL, '2024-07-25 11:37:02', '2024-07-25 11:37:02'),
(152, 'App\\Models\\User', 35, 'auth_token', '709d15498838433594ebe05811abeffaaa28f0f6ffa87c5d69a2691e958a2f86', '[\"*\"]', NULL, NULL, '2024-07-25 11:38:01', '2024-07-25 11:38:01'),
(153, 'App\\Models\\User', 35, 'auth_token', '7b1036bce307caafe2cb83375f345491f38d3bcb91055effa0072c9d43fb101c', '[\"*\"]', NULL, NULL, '2024-07-25 11:39:45', '2024-07-25 11:39:45'),
(154, 'App\\Models\\User', 35, 'auth_token', '824b90d99a663c833388792253075837445522284dd4a3115a0b5b6554159cee', '[\"*\"]', NULL, NULL, '2024-07-25 11:41:22', '2024-07-25 11:41:22'),
(155, 'App\\Models\\User', 35, 'auth_token', '2f0136ac8d2a9cc67613a5aeb41020c9fc832c1b88e486c43cd7442299073932', '[\"*\"]', NULL, NULL, '2024-07-25 11:48:45', '2024-07-25 11:48:45'),
(156, 'App\\Models\\User', 36, 'auth_token', 'ad8d83624e31d41988792bcaeb7dd3704cd24387c1331f2730e1819b785bc649', '[\"*\"]', NULL, NULL, '2024-07-25 11:49:12', '2024-07-25 11:49:12'),
(157, 'App\\Models\\User', 36, 'auth_token', '13babe3b939074e38dc3cc8a2798c2c507556936fe91e3a76415e7c64c6bc18b', '[\"*\"]', NULL, NULL, '2024-07-25 11:49:25', '2024-07-25 11:49:25'),
(158, 'App\\Models\\User', 36, 'auth_token', 'f38d97eefea8715288ccf3d4a40f111c1411f09c08a0c486c7fe3dd62d0f12cd', '[\"*\"]', NULL, NULL, '2024-07-25 11:49:34', '2024-07-25 11:49:34'),
(159, 'App\\Models\\User', 36, 'auth_token', '1869a01a0dfeefcda881494c4530a41a17f2e2afb73f5097d2fb1ab504d542c5', '[\"*\"]', NULL, NULL, '2024-07-25 11:49:42', '2024-07-25 11:49:42'),
(178, 'App\\Models\\User', 30, 'auth_token', '9bdad7d7d7e27d0b5ccf6c1b61a71ed5b0839edf672aa09470f0644804162602', '[\"*\"]', NULL, NULL, '2024-07-25 13:17:48', '2024-07-25 13:17:48'),
(179, 'App\\Models\\User', 30, 'auth_token', '7a8ba075b89a446f85c1df14c6f44e07962a431ac40e696c4a2f424a417fe625', '[\"*\"]', NULL, NULL, '2024-07-25 13:17:53', '2024-07-25 13:17:53'),
(180, 'App\\Models\\User', 30, 'auth_token', 'eb3e79a53ba2e77e70550532328ab2cccba21652224175338b821785a19bbd85', '[\"*\"]', NULL, NULL, '2024-07-25 13:17:57', '2024-07-25 13:17:57'),
(181, 'App\\Models\\User', 30, 'auth_token', '9a640d449bb4e1409f5988436b038aa14c88f903a6b3f2c7f7963f602d4e5d78', '[\"*\"]', NULL, NULL, '2024-07-25 13:25:44', '2024-07-25 13:25:44'),
(182, 'App\\Models\\User', 30, 'auth_token', 'b59694f4d34cef04aedcbb2713eec74bb73b9d62f220c081e1a1955c76a81a5d', '[\"*\"]', NULL, NULL, '2024-07-26 04:11:41', '2024-07-26 04:11:41'),
(183, 'App\\Models\\User', 37, 'auth_token', '10782f87a93dd088bc7cf2526e2bf964010fd613accef099774e6c2dd6a936ab', '[\"*\"]', NULL, NULL, '2024-07-26 04:16:14', '2024-07-26 04:16:14'),
(184, 'App\\Models\\User', 37, 'auth_token', '43c785d67ae7cc66844bbc078ad46b9dc4952337754afb574a7feebbffcaf6ae', '[\"*\"]', NULL, NULL, '2024-07-26 04:17:38', '2024-07-26 04:17:38'),
(187, 'App\\Models\\User', 37, 'auth_token', '5cf7e55f04230e57fa0279b29998f2141f43dd71ddc757f4f3ecee730503639d', '[\"*\"]', '2024-07-26 05:48:13', NULL, '2024-07-26 04:18:58', '2024-07-26 05:48:13'),
(188, 'App\\Models\\User', 38, 'auth_token', '9320924244dda2cef20e57edd4a88c1a8e8aff5c07321d24335029579f8bc8da', '[\"*\"]', NULL, NULL, '2024-07-26 04:20:01', '2024-07-26 04:20:01'),
(189, 'App\\Models\\User', 39, 'auth_token', 'fdf9e8f9e6c71c53ffc4072175db5d9331340044de7e7e7c5b9757e82ca38171', '[\"*\"]', NULL, NULL, '2024-07-26 04:24:44', '2024-07-26 04:24:44'),
(194, 'App\\Models\\User', 40, 'auth_token', '235c1d2d71c5b103b8aaf7babfe5554610fdfdae9a7dbadb66c36443d8b2a849', '[\"*\"]', NULL, NULL, '2024-07-26 04:27:26', '2024-07-26 04:27:26'),
(195, 'App\\Models\\User', 40, 'auth_token', '5cdf25ae44e008b0e1316a90d60dbc7caac6bc635e11d67e4be315d3639610c9', '[\"*\"]', NULL, NULL, '2024-07-26 04:28:42', '2024-07-26 04:28:42'),
(196, 'App\\Models\\User', 40, 'auth_token', '7a1a32bbf1510a4f6c8d64e7f2c639a917c47b279ab3583bce61e8cde4aa44c9', '[\"*\"]', NULL, NULL, '2024-07-26 04:28:55', '2024-07-26 04:28:55'),
(197, 'App\\Models\\User', 40, 'auth_token', 'b8442f0d97b79913d4c5e4258c4bfc6efb713cf2f95005a16fcb629d7d041b76', '[\"*\"]', NULL, NULL, '2024-07-26 04:29:34', '2024-07-26 04:29:34'),
(198, 'App\\Models\\User', 40, 'auth_token', 'cffbe7a4fee69d49ba959b451025fadd6e4c9de999408a050a678b91fbb18ede', '[\"*\"]', NULL, NULL, '2024-07-26 04:29:47', '2024-07-26 04:29:47'),
(199, 'App\\Models\\User', 40, 'auth_token', '2d70fb53573c61d0cf53d4b84aa967aab5f77f63fef005724ac18d20b7a8b7d2', '[\"*\"]', NULL, NULL, '2024-07-26 04:29:52', '2024-07-26 04:29:52'),
(200, 'App\\Models\\User', 40, 'auth_token', '11c5c808616674b9b2b6201c54df994cdf674d13b66f54b339852af7a3e5ef35', '[\"*\"]', NULL, NULL, '2024-07-26 04:30:06', '2024-07-26 04:30:06'),
(226, 'App\\Models\\User', 41, 'auth_token', '92d9cc3a195445815e4b50df247c1032796b50d519d08299a29586d32776408b', '[\"*\"]', NULL, NULL, '2024-07-26 04:44:55', '2024-07-26 04:44:55'),
(227, 'App\\Models\\User', 41, 'auth_token', '3b56037b3fff347f5da333a531fd86fa295d775d9433da17c2b7f6939edc3ff1', '[\"*\"]', NULL, NULL, '2024-07-26 04:52:13', '2024-07-26 04:52:13'),
(228, 'App\\Models\\User', 41, 'auth_token', '136273499599362e98382d17894d03124af774dc9d9f55e15944230e3d577827', '[\"*\"]', NULL, NULL, '2024-07-26 04:55:00', '2024-07-26 04:55:00'),
(229, 'App\\Models\\User', 41, 'auth_token', '8c7346759ed86d72d685b296d824851c7829acfe1c4301fb0e4eb6abbf3cb729', '[\"*\"]', NULL, NULL, '2024-07-26 04:56:21', '2024-07-26 04:56:21'),
(230, 'App\\Models\\User', 41, 'auth_token', '267ab196d0a0ef069c278069403bb7e6d6862a40564ce13ab47130be062b6373', '[\"*\"]', NULL, NULL, '2024-07-26 04:56:37', '2024-07-26 04:56:37'),
(231, 'App\\Models\\User', 41, 'auth_token', 'afb9177fb9f362e4adbc4a33ca5f10ae2efe24dad5f8303da2d14b62072f9ed0', '[\"*\"]', NULL, NULL, '2024-07-26 04:56:47', '2024-07-26 04:56:47'),
(232, 'App\\Models\\User', 41, 'auth_token', '8ea5c1a59bc72add277aaff8659aa15cd6fd42c761560bdc1951db04df15bc6d', '[\"*\"]', NULL, NULL, '2024-07-26 04:56:55', '2024-07-26 04:56:55'),
(234, 'App\\Models\\User', 42, 'auth_token', 'bbbd703a05489a8531eaaa42d624596fa50b9a11f67e7ab6e5e229ee317b752a', '[\"*\"]', NULL, NULL, '2024-07-26 05:36:08', '2024-07-26 05:36:08'),
(235, 'App\\Models\\User', 42, 'auth_token', '227ae825f345aadf3661fa79d2e4d3b6ae9010ce64d0fe5cf82da040d3b318ad', '[\"*\"]', NULL, NULL, '2024-07-26 05:36:15', '2024-07-26 05:36:15'),
(247, 'App\\Models\\User', 39, 'auth_token', 'a82a750ce891fc6399c71246ea812a9ef3f6d4992ab3869cd4d67c325c0e4ea5', '[\"*\"]', NULL, NULL, '2024-07-26 05:57:39', '2024-07-26 05:57:39'),
(248, 'App\\Models\\User', 37, 'auth_token', '76b41b3612c6fd11cbb1617445764de31b3b3f66cdb94719c88fd530e732573d', '[\"*\"]', NULL, NULL, '2024-07-26 06:04:50', '2024-07-26 06:04:50'),
(257, 'App\\Models\\User', 40, 'auth_token', 'f11331ede16a7fa226f00ddca31493a45b219ec5121e89e4cd357952d1af5753', '[\"*\"]', NULL, NULL, '2024-07-26 06:35:58', '2024-07-26 06:35:58'),
(258, 'App\\Models\\User', 40, 'auth_token', '3a6e495ce6ddf0b69111ff3a67af1ea1b57fb74aabfc15903ee76f4bc4f3dd68', '[\"*\"]', NULL, NULL, '2024-07-26 06:36:49', '2024-07-26 06:36:49'),
(259, 'App\\Models\\User', 40, 'auth_token', '07b9ff1f6e024200c4f73531bc09a1fbc4c5c2424f715d8ceae546e0a7989c69', '[\"*\"]', NULL, NULL, '2024-07-26 06:43:42', '2024-07-26 06:43:42'),
(260, 'App\\Models\\User', 40, 'auth_token', 'c7324cfdc3f0b622b9cefc8fea5c25bd48bb79720014e9d18ba67759f2d96796', '[\"*\"]', '2024-07-26 06:48:44', NULL, '2024-07-26 06:45:04', '2024-07-26 06:48:44'),
(261, 'App\\Models\\User', 40, 'auth_token', '091d047a50c66bb6a929b8bf6784fce52d5f660272f96b23bf32f292229ddc54', '[\"*\"]', NULL, NULL, '2024-07-26 06:56:30', '2024-07-26 06:56:30'),
(267, 'App\\Models\\User', 41, 'auth_token', 'c653c0129eea792548d0db7e8a95ca4e5a50eb21cd8e535ef702f10e593361e9', '[\"*\"]', NULL, NULL, '2024-07-26 07:19:24', '2024-07-26 07:19:24'),
(268, 'App\\Models\\User', 41, 'auth_token', '178b2f82e6356ba01ffe37a138fb8d58ccef07ea27c90b4dc72bd5624f9d627c', '[\"*\"]', NULL, NULL, '2024-07-26 07:22:19', '2024-07-26 07:22:19'),
(269, 'App\\Models\\User', 40, 'auth_token', '2a65b66e64b3d5caeb9022924bde735d13aa2a93f126144605d8cf1cedea3946', '[\"*\"]', NULL, NULL, '2024-07-26 07:22:33', '2024-07-26 07:22:33'),
(270, 'App\\Models\\User', 43, 'auth_token', '255392062454abd905a772bab9b03b8c6f256717940d4a8dcd15688ebc6e791a', '[\"*\"]', NULL, NULL, '2024-07-26 07:22:41', '2024-07-26 07:22:41'),
(271, 'App\\Models\\User', 44, 'auth_token', '8048f24e402ba79735217bdaf07639955aaa4cc04204b9f6bcc40bbdd8cae630', '[\"*\"]', NULL, NULL, '2024-07-26 07:44:53', '2024-07-26 07:44:53'),
(272, 'App\\Models\\User', 44, 'auth_token', 'feacd405fbe5fdecbb625bac9a30aef26088f1629ccb896b6bef6ce5fbf02dde', '[\"*\"]', '2024-07-26 11:09:56', NULL, '2024-07-26 07:48:56', '2024-07-26 11:09:56'),
(273, 'App\\Models\\User', 45, 'auth_token', '451d3e0f79df2c811241fccee24b6343b9c26b942379b9fd63f06015ee9735f6', '[\"*\"]', NULL, NULL, '2024-07-26 07:51:32', '2024-07-26 07:51:32'),
(274, 'App\\Models\\User', 45, 'auth_token', '66842be8f6551462f4f9eddea450dcad0d0d9c5e69787e6480165450c57dd65b', '[\"*\"]', NULL, NULL, '2024-07-26 07:57:53', '2024-07-26 07:57:53'),
(275, 'App\\Models\\User', 46, 'auth_token', '960b65e580485a3e82a2deb70d304d98559e5dfd3a0fabfc3a5706c3a2276d6b', '[\"*\"]', NULL, NULL, '2024-07-26 07:58:21', '2024-07-26 07:58:21'),
(276, 'App\\Models\\User', 46, 'auth_token', '4cd3c2023559dcc35fd002f1c37b636abf8aea018ce1bb60e29862b9df85d056', '[\"*\"]', NULL, NULL, '2024-07-26 07:59:54', '2024-07-26 07:59:54'),
(278, 'App\\Models\\User', 47, 'auth_token', '8dc1a2619f9b3296c15702a6ee8062a5eb53ed68a654229bc0229dc29eaa1b2b', '[\"*\"]', NULL, NULL, '2024-07-26 08:48:40', '2024-07-26 08:48:40'),
(279, 'App\\Models\\User', 47, 'auth_token', 'c1f909a0839e97a0963812c05d850301bd273c17862203b11afe0aa35c6f35ad', '[\"*\"]', NULL, NULL, '2024-07-26 08:48:45', '2024-07-26 08:48:45'),
(280, 'App\\Models\\User', 47, 'auth_token', 'd30c2dae2eea896ec27f6622df723976665c877d8ef539c414112c37b51799a5', '[\"*\"]', NULL, NULL, '2024-07-26 08:55:33', '2024-07-26 08:55:33'),
(281, 'App\\Models\\User', 47, 'auth_token', '6ac5d97980f44f1e9fc4f8d2d4372cfc662f3d70a2904d0c46998808ebda6cfc', '[\"*\"]', NULL, NULL, '2024-07-26 09:00:37', '2024-07-26 09:00:37'),
(282, 'App\\Models\\User', 47, 'auth_token', 'a30f4c3bea2c20c537ae8334c9fb08dd5c6263c43084b9c2edfa1134336be213', '[\"*\"]', NULL, NULL, '2024-07-26 09:03:02', '2024-07-26 09:03:02'),
(284, 'App\\Models\\User', 48, 'auth_token', 'b1e6a56315f0fc0cf112a1a677f498c16ab1145cb6472797c802746d6e498707', '[\"*\"]', NULL, NULL, '2024-07-26 09:05:46', '2024-07-26 09:05:46'),
(285, 'App\\Models\\User', 49, 'auth_token', '1d197d98345bf8006c80126ee6dc13d6a481332540ea0b389998ac65b3d2f046', '[\"*\"]', NULL, NULL, '2024-07-26 09:23:22', '2024-07-26 09:23:22'),
(286, 'App\\Models\\User', 49, 'auth_token', '467cde58f82af2bfd3873adfa90720cc7fa4df80d6ea8b2d1eccac63b09b3b48', '[\"*\"]', NULL, NULL, '2024-07-26 09:26:11', '2024-07-26 09:26:11'),
(287, 'App\\Models\\User', 49, 'auth_token', '74f761eec4cee14910cf4b90cebb79ccdcfcba54b0dd4bb922e9ebde62de519c', '[\"*\"]', NULL, NULL, '2024-07-26 09:27:05', '2024-07-26 09:27:05'),
(289, 'App\\Models\\User', 50, 'auth_token', '6549474f2b200479f64871667ead63277efba28475625edd80bfb1bc24f756ec', '[\"*\"]', NULL, NULL, '2024-07-26 09:51:46', '2024-07-26 09:51:46'),
(290, 'App\\Models\\User', 50, 'auth_token', 'c62f5432c60bff6c65236f39a035e45069085948171718185a040ae4973820f0', '[\"*\"]', NULL, NULL, '2024-07-26 09:57:01', '2024-07-26 09:57:01'),
(292, 'App\\Models\\User', 51, 'auth_token', '29b18f5f2d9a5d88cf80d56d2f1d46c1411b96d36f866b52580614b65157c4dd', '[\"*\"]', NULL, NULL, '2024-07-26 10:21:01', '2024-07-26 10:21:01'),
(293, 'App\\Models\\User', 51, 'auth_token', '3dfe8687bfca902ab1da69f28937330cab330037b55ed09e2ffcab866b575f48', '[\"*\"]', NULL, NULL, '2024-07-26 10:21:56', '2024-07-26 10:21:56'),
(294, 'App\\Models\\User', 46, 'auth_token', 'bdcf5639ccbf309fb22f615bb168c336ca875d3a184ea0ea5e4e36d11446b0b2', '[\"*\"]', '2024-07-27 04:40:22', NULL, '2024-07-26 11:10:12', '2024-07-27 04:40:22'),
(297, 'App\\Models\\User', 52, 'auth_token', '0deed19e46d377f4886799cc6e11e5c8875ee3422385cca3f25b648c3eb17106', '[\"*\"]', NULL, NULL, '2024-07-26 11:43:34', '2024-07-26 11:43:34'),
(298, 'App\\Models\\User', 52, 'auth_token', 'dc34c19d703b3685c8812b6163bd070087e9b4f7e59bd78787bc78b27a494f3f', '[\"*\"]', NULL, NULL, '2024-07-26 11:43:40', '2024-07-26 11:43:40'),
(299, 'App\\Models\\User', 49, 'auth_token', '8847bb6a4edd8677820f88c2eb314ce31c8b9bc9b5f78edd405f5a1d42d96d6f', '[\"*\"]', NULL, NULL, '2024-07-26 11:54:08', '2024-07-26 11:54:08'),
(300, 'App\\Models\\User', 51, 'auth_token', '5886c89dbd79e59a40b5b5d598b4fd84478b1270f6bf902775491992203d5ed7', '[\"*\"]', NULL, NULL, '2024-07-26 11:54:17', '2024-07-26 11:54:17'),
(301, 'App\\Models\\User', 53, 'auth_token', 'cbe5095777254b8a9e8b31af797b01641297ea59d9d0f5968dcb2c4aaa5d726f', '[\"*\"]', NULL, NULL, '2024-07-26 11:54:26', '2024-07-26 11:54:26'),
(302, 'App\\Models\\User', 53, 'auth_token', '8557e23ff35d4b3f30163be1ee8d9d5c592da2de49dce830f3898c78e6f7b26b', '[\"*\"]', NULL, NULL, '2024-07-26 11:55:22', '2024-07-26 11:55:22'),
(303, 'App\\Models\\User', 52, 'auth_token', 'f6de11f64e55cfaac650b1b3889fb0f1f0e8d79e13e4ceb3bf7969ca0f870d18', '[\"*\"]', NULL, NULL, '2024-07-26 12:05:26', '2024-07-26 12:05:26'),
(306, 'App\\Models\\User', 46, 'auth_token', 'e4f627b00ad68561bf8cee331425a3d58124f689330a8faf3a83042cc06ead7e', '[\"*\"]', NULL, NULL, '2024-07-26 12:13:35', '2024-07-26 12:13:35'),
(307, 'App\\Models\\User', 45, 'auth_token', 'c3cad7a8e85d29cdf6cd0a16084bd5394bb01e176f765d7dee7a5bffe3b3d88d', '[\"*\"]', NULL, NULL, '2024-07-26 12:15:50', '2024-07-26 12:15:50'),
(308, 'App\\Models\\User', 45, 'auth_token', '2c362954664dcf7577375643e06d182c23b57144f98d57075b7f1b7ca70ff57d', '[\"*\"]', NULL, NULL, '2024-07-26 12:16:00', '2024-07-26 12:16:00'),
(309, 'App\\Models\\User', 52, 'auth_token', 'eace0b9f056c72d3a9f332483bd6b7b646c59a31a12c84f57a9399955aed6069', '[\"*\"]', NULL, NULL, '2024-07-26 12:31:03', '2024-07-26 12:31:03'),
(310, 'App\\Models\\User', 52, 'auth_token', 'f417766a071dec2623f2092a269b82475a7f93434c49b14c4a7097a2380f4258', '[\"*\"]', NULL, NULL, '2024-07-26 12:32:12', '2024-07-26 12:32:12'),
(311, 'App\\Models\\User', 46, 'auth_token', 'b95530ba936d21c1e65e3c51d44b06c091de264c0c2d7049410d3958534109a7', '[\"*\"]', NULL, NULL, '2024-07-26 12:32:49', '2024-07-26 12:32:49'),
(312, 'App\\Models\\User', 46, 'auth_token', '5c5c47d354c261ead91e22d5e4c1b489a5765623c7005ad983fb33cb3ee662fc', '[\"*\"]', NULL, NULL, '2024-07-26 12:33:44', '2024-07-26 12:33:44'),
(313, 'App\\Models\\User', 52, 'auth_token', '9b1d30b3cd53c65a40f508cc902bb3899646a7cce212542153a8f45ffd8bf9b4', '[\"*\"]', NULL, NULL, '2024-07-26 12:37:46', '2024-07-26 12:37:46'),
(314, 'App\\Models\\User', 52, 'auth_token', 'b38eed5df3d7feb43961da40e51363024d767c462de7c3ac8d83855fd6388af7', '[\"*\"]', NULL, NULL, '2024-07-26 12:37:54', '2024-07-26 12:37:54'),
(315, 'App\\Models\\User', 52, 'auth_token', 'd1e835fd26e2082fd676c5649106a7b5b73da9b9f35d1d93998bf7962ddae033', '[\"*\"]', NULL, NULL, '2024-07-26 12:56:35', '2024-07-26 12:56:35'),
(316, 'App\\Models\\User', 52, 'auth_token', '7b0be1aa788dcc6e1916e443af44ec452aeed11ac1664ddb0c34402829479e68', '[\"*\"]', NULL, NULL, '2024-07-26 13:00:17', '2024-07-26 13:00:17'),
(317, 'App\\Models\\User', 50, 'auth_token', 'dda7274a2953562b24e0649afaab3e881ed05cdfdc8bc07036718f00648580ef', '[\"*\"]', NULL, NULL, '2024-07-26 13:00:25', '2024-07-26 13:00:25'),
(318, 'App\\Models\\User', 50, 'auth_token', '5d96411d34feac819277ecce48bdfea87d106f3bf7d39236fe6412dee5a4b6ca', '[\"*\"]', NULL, NULL, '2024-07-26 13:01:40', '2024-07-26 13:01:40'),
(323, 'App\\Models\\User', 53, 'auth_token', 'e8c24b491f96a22add67ee0c807325e4c03812595e192c7cf7ba2e0cb0b9f69b', '[\"*\"]', NULL, NULL, '2024-07-26 13:24:53', '2024-07-26 13:24:53'),
(324, 'App\\Models\\User', 52, 'auth_token', '7575cf9338f498cf7ba8058d319358259cf11eca767ad1f687effe99d38f6bb5', '[\"*\"]', NULL, NULL, '2024-07-26 13:25:06', '2024-07-26 13:25:06'),
(332, 'App\\Models\\User', 45, 'auth_token', '379da21395c622ac548972adb01a9294baf14c8e0ba947d017d6902ffe1cbd53', '[\"*\"]', NULL, NULL, '2024-07-27 04:39:24', '2024-07-27 04:39:24'),
(334, 'App\\Models\\User', 55, 'auth_token', '701d057004a722d19529f8b08e62c373c0a1125a9d797b28c29e919da4a08463', '[\"*\"]', NULL, NULL, '2024-07-27 04:46:17', '2024-07-27 04:46:17'),
(344, 'App\\Models\\User', 56, 'auth_token', '803e77380b40e3005e291753267e8f41f32211eb3c96e7dc387f370a68ca5077', '[\"*\"]', NULL, NULL, '2024-07-27 05:06:31', '2024-07-27 05:06:31'),
(345, 'App\\Models\\User', 56, 'auth_token', 'a502b450f0bcd5aa76e95f72bdf1c78697b1ada4b9c670a53b62ccce79b8274c', '[\"*\"]', NULL, NULL, '2024-07-27 05:07:17', '2024-07-27 05:07:17'),
(353, 'App\\Models\\User', 55, 'auth_token', '8502a39ca26066106f14a27f7eaf574879bc798204de643d5b65be831c2b8d13', '[\"*\"]', NULL, NULL, '2024-07-27 07:19:40', '2024-07-27 07:19:40'),
(355, 'App\\Models\\User', 56, 'auth_token', '14ae8ef03a8682e2aa4f5268c11a89345d98941860196109963198687688a0cc', '[\"*\"]', NULL, NULL, '2024-07-27 07:36:42', '2024-07-27 07:36:42'),
(357, 'App\\Models\\User', 56, 'auth_token', '23a7e2f80afc7aa0ab539e7a1cee5d7810499942bdb15cf4eea1d3c449522c61', '[\"*\"]', NULL, NULL, '2024-07-27 07:58:53', '2024-07-27 07:58:53'),
(363, 'App\\Models\\User', 54, 'auth_token', 'b48f9d1a1a50b8294c5e8d5aea619f5b99be06c40fae3980a172abe735914e42', '[\"*\"]', '2024-08-01 07:08:36', NULL, '2024-07-27 10:43:57', '2024-08-01 07:08:36'),
(364, 'App\\Models\\User', 54, 'auth_token', '0d5c27350f62d2414d910e26c148e3220b3ee5501ba36480dd2710e6f98b7caa', '[\"*\"]', '2024-07-27 11:39:09', NULL, '2024-07-27 10:56:30', '2024-07-27 11:39:09'),
(365, 'App\\Models\\User', 54, 'auth_token', '313931969588e6af414388c348eb20fc5e42f6187520ce88ef809dca4719c765', '[\"*\"]', '2024-07-27 11:47:54', NULL, '2024-07-27 11:33:54', '2024-07-27 11:47:54'),
(366, 'App\\Models\\User', 54, 'auth_token', 'c964f68dc96ae4b6a7495e7c21d4cdb6e515071cd05000fb052c5e141ec727c5', '[\"*\"]', '2024-07-27 13:14:15', NULL, '2024-07-27 12:28:44', '2024-07-27 13:14:15'),
(367, 'App\\Models\\User', 54, 'auth_token', 'c6c611291536a65ade65b469f06e2db6b9d36c74c7887d113cb95f1058f79e26', '[\"*\"]', '2024-07-29 05:04:04', NULL, '2024-07-27 12:36:47', '2024-07-29 05:04:04'),
(368, 'App\\Models\\User', 54, 'auth_token', 'ac4e223a3eab9ad39b43b80799deaa1b0f89c99ec647d532cf886377c5f747e5', '[\"*\"]', NULL, NULL, '2024-07-27 13:17:26', '2024-07-27 13:17:26'),
(369, 'App\\Models\\User', 54, 'auth_token', '7df311869a75b2da701c32d5eed1e805b74207760628831d945f1f273bc92c3e', '[\"*\"]', '2024-07-29 04:28:10', NULL, '2024-07-27 13:17:30', '2024-07-29 04:28:10'),
(370, 'App\\Models\\User', 54, 'auth_token', 'e8e1bb22f54959916f0210d49db25b9c42014755c91e1c51616e4043a39d8e3a', '[\"*\"]', '2024-07-29 04:51:10', NULL, '2024-07-29 04:51:02', '2024-07-29 04:51:10'),
(371, 'App\\Models\\User', 54, 'auth_token', '732689b661c8f2f48d1d791871b9d63fd65a60af91e2e86d746a55c393a31cad', '[\"*\"]', NULL, NULL, '2024-07-29 04:53:03', '2024-07-29 04:53:03'),
(372, 'App\\Models\\User', 75, 'auth_token', 'faf6ddb3f18d33d8126c9d4a2b35e0fcf83cc96fd9fca6ae249e79fbe9c4ba38', '[\"*\"]', NULL, NULL, '2024-07-30 09:41:49', '2024-07-30 09:41:49'),
(375, 'App\\Models\\User', 76, 'auth_token', '2339293d94b511819df5073c3c28ed0ca65c549911e1366b6680f5d9bd7c8e73', '[\"*\"]', NULL, NULL, '2024-07-30 09:45:57', '2024-07-30 09:45:57'),
(376, 'App\\Models\\User', 77, 'auth_token', '640c3cc0b89fd41e7d22bc50b3b4cdf6d5aca62e24a08c92fbcc0268bd4e2045', '[\"*\"]', NULL, NULL, '2024-07-30 09:49:47', '2024-07-30 09:49:47'),
(377, 'App\\Models\\User', 78, 'auth_token', 'fb1ae8e2412e702ebfe34bc386c27867fbbc8af16b5148e1bdf9921ec4b13c4b', '[\"*\"]', NULL, NULL, '2024-07-30 09:52:23', '2024-07-30 09:52:23'),
(380, 'App\\Models\\User', 79, 'auth_token', '28dd9a6463a7271a835e17fadeaefaae73b01b4149a3eabfcbf08fba634143c2', '[\"*\"]', NULL, NULL, '2024-07-30 10:36:26', '2024-07-30 10:36:26'),
(381, 'App\\Models\\User', 54, 'auth_token', '50b8c9610b5ae36925f1e14879e5bd53ae3fce7ba443dce2a8bc1315f312f567', '[\"*\"]', NULL, NULL, '2024-07-30 19:16:47', '2024-07-30 19:16:47'),
(382, 'App\\Models\\User', 54, 'auth_token', 'c095c4cc32602f94f474fb6c65ad55cf66d149aad8ef4b33e912ce7969d9d80c', '[\"*\"]', NULL, NULL, '2024-07-30 19:28:07', '2024-07-30 19:28:07'),
(383, 'App\\Models\\User', 54, 'auth_token', 'dc9d5aa541146df1498f01e79126c0afc75aa3246c83823767cb017d6b6a069d', '[\"*\"]', NULL, NULL, '2024-07-31 03:10:00', '2024-07-31 03:10:00'),
(384, 'App\\Models\\User', 80, 'auth_token', '8a8b0b6962b26c4c5fcbaec8e820a26440ce405ad793b7223b55be9866514c48', '[\"*\"]', NULL, NULL, '2024-07-31 04:24:12', '2024-07-31 04:24:12'),
(385, 'App\\Models\\User', 81, 'auth_token', '13bea55812575cb9958e0c56eb98c69cacd11378e3dad362a587604dd971e593', '[\"*\"]', NULL, NULL, '2024-07-31 04:50:13', '2024-07-31 04:50:13'),
(386, 'App\\Models\\User', 82, 'auth_token', 'de73e68e35487cb406312bc25430cfbbca38bb3650083d338d0695fa326cc86d', '[\"*\"]', NULL, NULL, '2024-07-31 04:54:55', '2024-07-31 04:54:55'),
(387, 'App\\Models\\User', 83, 'auth_token', '302e60d08917a03280b9d8f8710a28eeaa3f6601cbfa5a2be2868f1f13cefdc3', '[\"*\"]', NULL, NULL, '2024-07-31 04:56:06', '2024-07-31 04:56:06'),
(388, 'App\\Models\\User', 84, 'auth_token', '9fcd78eab7db4dad9dda5b44a7e5171b9aa9b2280d93e4a3ed00c6eeb0dd8201', '[\"*\"]', NULL, NULL, '2024-07-31 05:03:02', '2024-07-31 05:03:02'),
(389, 'App\\Models\\User', 85, 'auth_token', '84fa7af90d8e830051ed170712985325d04e6c2a60d7aa6b8d8bfdd7a249efad', '[\"*\"]', NULL, NULL, '2024-07-31 05:06:57', '2024-07-31 05:06:57'),
(390, 'App\\Models\\User', 85, 'auth_token', '1bba0beebf5e44a0ab00609ae6b2ece79d2c1ba312d47e461e9316b74e8f3a3b', '[\"*\"]', NULL, NULL, '2024-07-31 05:10:15', '2024-07-31 05:10:15'),
(391, 'App\\Models\\User', 85, 'auth_token', '6d6400ec9c2066e6e44462046459115fb7b98024fe16a13180e3a203da8ef14d', '[\"*\"]', NULL, NULL, '2024-07-31 05:11:33', '2024-07-31 05:11:33'),
(392, 'App\\Models\\User', 85, 'auth_token', '50d359cc5d1b5cebcc2002f9cbc8193e7b4fe8385b1b39942e8d35791a8bdfac', '[\"*\"]', NULL, NULL, '2024-07-31 05:16:51', '2024-07-31 05:16:51'),
(393, 'App\\Models\\User', 86, 'auth_token', '16cb6103a22f0042622a9c32a4ba11f9bf6e1450e00b1d59f0173e5325cb9de2', '[\"*\"]', NULL, NULL, '2024-07-31 05:25:01', '2024-07-31 05:25:01'),
(394, 'App\\Models\\User', 86, 'auth_token', '73529a98609c2c92ea22651fb053d1c17164b6cf71a4289f30d1d5553a259849', '[\"*\"]', NULL, NULL, '2024-07-31 05:25:57', '2024-07-31 05:25:57'),
(395, 'App\\Models\\User', 86, 'auth_token', '901d08a1d8a3e12b7e1b1c7d4d0809c68ff48a93d126a9e09bd75664d78b3ff8', '[\"*\"]', NULL, NULL, '2024-07-31 05:26:07', '2024-07-31 05:26:07'),
(399, 'App\\Models\\User', 88, 'auth_token', '5f07c9ee3ba640ac9bba57ba3ba79d9a8343ce9c568314edc41b57d1ffeafd6e', '[\"*\"]', NULL, NULL, '2024-07-31 08:54:11', '2024-07-31 08:54:11'),
(400, 'App\\Models\\User', 88, 'auth_token', '9b171b5fa8419b1325d12babfa68d5bec49599c2cc3573714df78e07796e9e62', '[\"*\"]', NULL, NULL, '2024-07-31 08:55:11', '2024-07-31 08:55:11'),
(401, 'App\\Models\\User', 88, 'auth_token', 'cf28e3c7508dff6e71a8c25962f11e412bbd0c06044cff0a71d49b04d824e16b', '[\"*\"]', NULL, NULL, '2024-07-31 08:56:06', '2024-07-31 08:56:06'),
(402, 'App\\Models\\User', 88, 'auth_token', '8d43113b6fcfb570551cbffd6fe3715d3eb14da028f6ca9d1da7ba4af2746249', '[\"*\"]', NULL, NULL, '2024-07-31 08:56:53', '2024-07-31 08:56:53'),
(408, 'App\\Models\\User', 89, 'auth_token', '0193c1dba3de1b63b2106d758ec03104fed75215e5b704fee5af4160056de221', '[\"*\"]', NULL, NULL, '2024-07-31 09:09:57', '2024-07-31 09:09:57'),
(409, 'App\\Models\\User', 90, 'auth_token', '48915fba12eeec33ae2bae4c384e99ea250b41c5ca393ab8f2b15e2b0af5df45', '[\"*\"]', NULL, NULL, '2024-07-31 09:11:18', '2024-07-31 09:11:18'),
(416, 'App\\Models\\User', 90, 'auth_token', 'a0fc0b8ffc23ac8ee13a5c38cf2cdb1f614c4523d3ea644195b8c1c9722fc43f', '[\"*\"]', NULL, NULL, '2024-07-31 12:01:20', '2024-07-31 12:01:20'),
(421, 'App\\Models\\User', 91, 'auth_token', 'b840b1ec273906cb63e17f107d688655fa89dc0311df21169e903ccf6383fe34', '[\"*\"]', NULL, NULL, '2024-07-31 12:34:43', '2024-07-31 12:34:43'),
(423, 'App\\Models\\User', 92, 'auth_token', 'd57f7cc313acf2b6f7c207ba53c91ee535839dc32c2f14f83a12b6e3bc259875', '[\"*\"]', NULL, NULL, '2024-07-31 16:30:04', '2024-07-31 16:30:04'),
(424, 'App\\Models\\User', 86, 'auth_token', '20f023dd12899d54d9f5d7ca7a37b1cfd1f8cdfd5fdaf30ce93bbb2a06b4193f', '[\"*\"]', NULL, NULL, '2024-07-31 16:54:04', '2024-07-31 16:54:04'),
(425, 'App\\Models\\User', 90, 'auth_token', '4d09770b5ee7895b321e6a109ec5c238048244c96b3189c16262f10d1e9ab8c6', '[\"*\"]', NULL, NULL, '2024-08-01 04:31:48', '2024-08-01 04:31:48'),
(429, 'App\\Models\\User', 6, 'auth_token', 'b971607088e4f156a0228a0258c196b376573339cc99d7016e5e1f9638ffa15a', '[\"*\"]', NULL, NULL, '2024-08-01 09:48:45', '2024-08-01 09:48:45'),
(430, 'App\\Models\\User', 6, 'auth_token', '06da740c0a65133dda8bb8721b64ceab2a5dcf8b094f4c220652b98874587560', '[\"*\"]', NULL, NULL, '2024-08-01 10:17:37', '2024-08-01 10:17:37'),
(431, 'App\\Models\\User', 6, 'auth_token', '76be46984aa486ea422f79a7a452ad90e4ad75fa5831d9d7a2c94c28339a7be2', '[\"*\"]', NULL, NULL, '2024-08-01 10:17:46', '2024-08-01 10:17:46'),
(432, 'App\\Models\\User', 6, 'auth_token', 'f00190e715513129310ff335ef47af23eb65cb68b77339c6ea306160ca70896b', '[\"*\"]', NULL, NULL, '2024-08-01 10:18:10', '2024-08-01 10:18:10'),
(433, 'App\\Models\\User', 6, 'auth_token', '04c86418b085a3dc93c310c6c530c4735295c41f60c868fd91a8610804068609', '[\"*\"]', NULL, NULL, '2024-08-01 10:18:18', '2024-08-01 10:18:18'),
(434, 'App\\Models\\User', 6, 'auth_token', '6271a31a74b205d845e2d8ad051e95dd4a1b02c6e538c33d09aa34c2817ea8e5', '[\"*\"]', NULL, NULL, '2024-08-01 10:18:25', '2024-08-01 10:18:25'),
(435, 'App\\Models\\User', 7, 'auth_token', '46beb87a3a5da4d981b0b5613ad9b9dd88b0be92f292d8cd007bc2fe20366be0', '[\"*\"]', NULL, NULL, '2024-08-01 10:18:40', '2024-08-01 10:18:40'),
(436, 'App\\Models\\User', 7, 'auth_token', 'ebb5ab64363e07e2aba23de1555cde1246f08051fbadf4f1b83bc62ae2f7a3d9', '[\"*\"]', NULL, NULL, '2024-08-01 10:19:36', '2024-08-01 10:19:36'),
(437, 'App\\Models\\User', 7, 'auth_token', 'c5d6334ed1a4550f899283321f6b4b50046111dcf65252d7af483cd3bec648f3', '[\"*\"]', NULL, NULL, '2024-08-01 10:30:45', '2024-08-01 10:30:45'),
(438, 'App\\Models\\User', 6, 'auth_token', 'eefb384974a99356230d52a4b0bdfe1c4b0960dc3f2d70c2aa6c6f0668d67093', '[\"*\"]', NULL, NULL, '2024-08-01 10:31:38', '2024-08-01 10:31:38'),
(439, 'App\\Models\\User', 3, 'auth_token', 'f04d6d2d06a4dd48ea72eb7943a20a1a4ec56eea52457eae8b477ce281f58dbe', '[\"*\"]', NULL, NULL, '2024-08-02 08:58:35', '2024-08-02 08:58:35'),
(440, 'App\\Models\\User', 3, 'auth_token', 'ec144235832d7e4d44db69b5c6329259b4b0e1c9ddd8f913f4f8c617f8a37c1a', '[\"*\"]', '2024-08-31 05:29:37', NULL, '2024-08-02 09:10:32', '2024-08-31 05:29:37'),
(442, 'App\\Models\\User', 3, 'auth_token', '785e9d2ea3eec05f69fcaba6339db6d7ac444faa184c23a5e0d5dcadac214451', '[\"*\"]', '2024-08-02 11:29:43', NULL, '2024-08-02 09:13:32', '2024-08-02 11:29:43'),
(443, 'App\\Models\\User', 3, 'auth_token', '9732bed5dfba1232261e1044f2566258bdaa82bbe862508e6381b7058ea4b896', '[\"*\"]', '2024-08-05 10:12:25', NULL, '2024-08-02 12:16:39', '2024-08-05 10:12:25'),
(444, 'App\\Models\\User', 8, 'auth_token', '79387f6cdde47a0ed63c86d54ece00ae71dba70ebc6ba0ba84fafbe02c9dae29', '[\"*\"]', NULL, NULL, '2024-08-02 13:36:10', '2024-08-02 13:36:10'),
(445, 'App\\Models\\User', 8, 'auth_token', '302c650c5699b9e0bdc3d76619dcb1a0a92fe1be06ff757e3b234fdec8666c73', '[\"*\"]', NULL, NULL, '2024-08-02 13:36:39', '2024-08-02 13:36:39'),
(446, 'App\\Models\\User', 8, 'auth_token', 'ba241b8fca5bd1e3adef8e0cd6366c1dd4f44b1ecb79353d8ca851451319572d', '[\"*\"]', '2024-08-02 13:38:19', NULL, '2024-08-02 13:37:37', '2024-08-02 13:38:19'),
(447, 'App\\Models\\User', 8, 'auth_token', '60c9390be1a26ea1d4aab43670c22c903ea155ae51c8ffd6a6f9b1691e307e4b', '[\"*\"]', NULL, NULL, '2024-08-02 18:32:50', '2024-08-02 18:32:50'),
(448, 'App\\Models\\User', 9, 'auth_token', 'b87a122d59b7e3bedea2df82241a02e89fc16dfc7564fce04c6bf2dafc961890', '[\"*\"]', NULL, NULL, '2024-08-05 08:33:27', '2024-08-05 08:33:27'),
(449, 'App\\Models\\User', 10, 'auth_token', '1df5095aebacaf957680ab03455175b62cee5d4b250018ec21788a7b3630dfd4', '[\"*\"]', NULL, NULL, '2024-08-05 08:37:28', '2024-08-05 08:37:28'),
(450, 'App\\Models\\User', 11, 'auth_token', '1bb3adf9f67ce92c169626440e54b5d46ab1661a5d95cfbde004311a84ea2c69', '[\"*\"]', NULL, NULL, '2024-08-05 08:39:33', '2024-08-05 08:39:33'),
(451, 'App\\Models\\User', 11, 'auth_token', '3c8b42060005470edcd32942d202384f6592fae3f1c9bd7956de55a708cecf76', '[\"*\"]', NULL, NULL, '2024-08-05 08:41:03', '2024-08-05 08:41:03'),
(452, 'App\\Models\\User', 12, 'auth_token', '00cd8a50930aea1c94741b578e8d63e1f89b37f5018957f6437f16079d626f34', '[\"*\"]', NULL, NULL, '2024-08-05 08:59:39', '2024-08-05 08:59:39'),
(453, 'App\\Models\\User', 12, 'auth_token', 'a625d6ceff42c3cfe6f5ade8504fd4b422c7fdb7eaac2229e9d6c5d98ead1a8a', '[\"*\"]', NULL, NULL, '2024-08-05 09:00:29', '2024-08-05 09:00:29'),
(456, 'App\\Models\\User', 14, 'auth_token', 'adc798a58e5c700615cb6ad71f43bbe94431a4d5aaac27a945dd55730669fcad', '[\"*\"]', NULL, NULL, '2024-08-06 04:23:57', '2024-08-06 04:23:57'),
(457, 'App\\Models\\User', 14, 'auth_token', 'fe22bab8e8659607b4beba13546bbb8fec3a2c4d8ea487324a7e0ebfad7dee58', '[\"*\"]', '2024-09-05 05:36:02', NULL, '2024-08-06 04:25:03', '2024-09-05 05:36:02'),
(458, 'App\\Models\\User', 14, 'auth_token', '2f328c5d9aedc2e6d357e6358b00162e8eb19d32bdab6a3e4edfc068a6e90565', '[\"*\"]', '2024-08-06 04:33:41', NULL, '2024-08-06 04:33:33', '2024-08-06 04:33:41'),
(460, 'App\\Models\\User', 15, 'auth_token', 'cf3e859a2a59202351a5f866bda92cf76e217b0952edba8a940df834579f1681', '[\"*\"]', NULL, NULL, '2024-08-06 07:21:52', '2024-08-06 07:21:52'),
(461, 'App\\Models\\User', 14, 'auth_token', '361d6065cd4bd3bbcdb1a897e6bd3ea91b93264279425b33c3b424d0a8a75410', '[\"*\"]', '2024-08-07 05:18:28', NULL, '2024-08-06 07:23:35', '2024-08-07 05:18:28'),
(462, 'App\\Models\\User', 14, 'auth_token', 'ca53e4905511b42ba7ae8f3960e663c9590b8820589007bfe646528f2a499108', '[\"*\"]', NULL, NULL, '2024-08-07 05:22:23', '2024-08-07 05:22:23'),
(463, 'App\\Models\\User', 43, 'auth_token', 'c53967d9326437a1501cbd846f534d765804945bdfafa498bef77be9511b06e5', '[\"*\"]', NULL, NULL, '2024-08-07 05:59:17', '2024-08-07 05:59:17'),
(464, 'App\\Models\\User', 43, 'auth_token', 'e3a6cbc862ada593e5c97282c9a4e33387348cf6c6b859f29b60e2e121f16350', '[\"*\"]', NULL, NULL, '2024-08-07 05:59:25', '2024-08-07 05:59:25'),
(465, 'App\\Models\\User', 43, 'auth_token', '70f5f43793c2ac3defa283853c9f717408552a66e8496c26ff6c0beb20fab252', '[\"*\"]', '2024-08-07 06:00:57', NULL, '2024-08-07 06:00:45', '2024-08-07 06:00:57'),
(466, 'App\\Models\\User', 43, 'auth_token', 'afbfe193a9110fe38858ac50b38fedd1942c6d42d43eeb7b8383332c45eacf32', '[\"*\"]', NULL, NULL, '2024-08-07 06:01:24', '2024-08-07 06:01:24'),
(467, 'App\\Models\\User', 43, 'auth_token', '1969082e12584699816cd7e34c5ac559ee6734616ef6921393c77a1fc0342623', '[\"*\"]', '2024-08-07 06:01:37', NULL, '2024-08-07 06:01:34', '2024-08-07 06:01:37'),
(468, 'App\\Models\\User', 47, 'auth_token', '6c728b60914f0d626d28004b053bcfe0a7cbf3b4096a6ff1df113c6cca8d2f14', '[\"*\"]', NULL, NULL, '2024-08-07 06:46:54', '2024-08-07 06:46:54'),
(469, 'App\\Models\\User', 47, 'auth_token', '92d75911e57153cbf35058217d3f69d177688af20e571d04cf2d1596821706f1', '[\"*\"]', '2024-08-07 10:42:48', NULL, '2024-08-07 06:53:36', '2024-08-07 10:42:48'),
(470, 'App\\Models\\User', 48, 'auth_token', '0a1c148d8c05f51f1c5610a47d31f6777340cf758075817047728edaaa97cd3e', '[\"*\"]', NULL, NULL, '2024-08-07 10:42:59', '2024-08-07 10:42:59'),
(471, 'App\\Models\\User', 48, 'auth_token', '199bb98a9702ffc49e93ecdb50fc3f3e99c0750f11132f1b42cef5855c19c78a', '[\"*\"]', NULL, NULL, '2024-08-07 11:20:27', '2024-08-07 11:20:27'),
(472, 'App\\Models\\User', 48, 'auth_token', '1656202dfbf91bb722851dd723dc514c4720f0d6319e78dda124f6870ad26de5', '[\"*\"]', NULL, NULL, '2024-08-07 11:23:39', '2024-08-07 11:23:39'),
(473, 'App\\Models\\User', 48, 'auth_token', '13c407d6c9ea0c4574605ec064286bcf7f79d189c2a5ce7a4ae792536fd43dd6', '[\"*\"]', NULL, NULL, '2024-08-07 11:25:14', '2024-08-07 11:25:14'),
(474, 'App\\Models\\User', 48, 'auth_token', 'c3c5a17b7c16ddd61426edc6b5df64e4fa44d3213d611c6f914d35742afa9d80', '[\"*\"]', NULL, NULL, '2024-08-07 11:34:49', '2024-08-07 11:34:49'),
(475, 'App\\Models\\User', 48, 'auth_token', '556afb6938b378525d43eb8dd189c6548ba16fa40fdc62f6ead2e28c1cc0c176', '[\"*\"]', NULL, NULL, '2024-08-07 11:55:49', '2024-08-07 11:55:49'),
(476, 'App\\Models\\User', 48, 'auth_token', '8e30af9f0b458e95fce67cc1262e113a0dab786eb7253fc653b26702a8250353', '[\"*\"]', NULL, NULL, '2024-08-07 11:58:56', '2024-08-07 11:58:56'),
(477, 'App\\Models\\User', 48, 'auth_token', 'aa76206e4593c94c538095ebedb6e645426341932acbf2e88d9486b664d0351f', '[\"*\"]', NULL, NULL, '2024-08-07 12:03:19', '2024-08-07 12:03:19'),
(478, 'App\\Models\\User', 48, 'auth_token', '33d731b4e222a5ddec57efd8b1d3f7cbfb773d91a2a40178f1af836366a612b2', '[\"*\"]', NULL, NULL, '2024-08-07 12:09:14', '2024-08-07 12:09:14'),
(480, 'App\\Models\\User', 49, 'auth_token', '759363e3d0024c070d031f5ad2834bba544aec64f644f82049484d1e7575430f', '[\"*\"]', NULL, NULL, '2024-08-07 12:19:03', '2024-08-07 12:19:03'),
(481, 'App\\Models\\User', 50, 'auth_token', 'e6d316a5a169b12747c79e5eb691cf8b264a0d959d2b97310bcc762ad482cb10', '[\"*\"]', NULL, NULL, '2024-08-07 12:19:12', '2024-08-07 12:19:12'),
(482, 'App\\Models\\User', 50, 'auth_token', 'f86616344795c8bee7e9e2ac1a5590073d13e245dd4e8d8360514b3d6530a4d4', '[\"*\"]', NULL, NULL, '2024-08-07 12:20:07', '2024-08-07 12:20:07'),
(483, 'App\\Models\\User', 51, 'auth_token', '48fb43714cb1744ce0ee8a74ab61b7cc5db82005f39ef94813bfd429232bdcfe', '[\"*\"]', NULL, NULL, '2024-08-07 12:20:17', '2024-08-07 12:20:17'),
(484, 'App\\Models\\User', 48, 'auth_token', 'e13f76638d5ae12e6f85892594f116cb000200000ae6066453734b3298c50660', '[\"*\"]', NULL, NULL, '2024-08-07 12:20:36', '2024-08-07 12:20:36'),
(488, 'App\\Models\\User', 48, 'auth_token', '09a63de7420508ca6a0ed4e9c56eed5a5e3591d0fc92b04650930d11bfbf0054', '[\"*\"]', NULL, NULL, '2024-08-07 12:22:03', '2024-08-07 12:22:03'),
(492, 'App\\Models\\User', 52, 'auth_token', 'ee6f5489d7569c9e5e3770f42931135dc2cd25f09a875da5e7aa7bbfaae62a36', '[\"*\"]', NULL, NULL, '2024-08-07 12:22:53', '2024-08-07 12:22:53');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(493, 'App\\Models\\User', 48, 'auth_token', '1742b33f337127e8aae67c61990a55a1e8e213391069596fc90d35c3bd57b4ae', '[\"*\"]', NULL, NULL, '2024-08-07 12:24:40', '2024-08-07 12:24:40'),
(494, 'App\\Models\\User', 52, 'auth_token', '11823a5c575a21b41ec70e651151bc186d68d27c2630195571cf3f98aecc781c', '[\"*\"]', NULL, NULL, '2024-08-07 12:25:56', '2024-08-07 12:25:56'),
(495, 'App\\Models\\User', 52, 'auth_token', 'fe43a8e7620afa0feb61a1531583417401ca9e307fc57581cf09cf1dafe46f98', '[\"*\"]', NULL, NULL, '2024-08-07 12:26:27', '2024-08-07 12:26:27'),
(496, 'App\\Models\\User', 52, 'auth_token', '9145fd4bf4ded85a5c29a92bfa8b155e49a92d91efe967f39185ecebdb09f0ed', '[\"*\"]', NULL, NULL, '2024-08-07 12:26:31', '2024-08-07 12:26:31'),
(497, 'App\\Models\\User', 52, 'auth_token', '9ce092a98718a91a0fa277dfc7f1a235d08be240fad4da04b32cbe6b08b6a5f4', '[\"*\"]', NULL, NULL, '2024-08-07 12:26:37', '2024-08-07 12:26:37'),
(498, 'App\\Models\\User', 52, 'auth_token', '7c3684112d66133d746a6e2d6722dbcdde99ff117e8334b1e247f3d0e5f37a5e', '[\"*\"]', NULL, NULL, '2024-08-07 12:26:43', '2024-08-07 12:26:43'),
(499, 'App\\Models\\User', 52, 'auth_token', '12f510248f160625b0de7fde2a6e27ff351bd8fe5d929d6636065f8f0e8a4fdf', '[\"*\"]', NULL, NULL, '2024-08-07 12:26:46', '2024-08-07 12:26:46'),
(500, 'App\\Models\\User', 48, 'auth_token', '84f4cc1dd14d590358e49219da2ba77d3939b07505bc0654703ab0d4cf85b1c8', '[\"*\"]', NULL, NULL, '2024-08-07 12:28:07', '2024-08-07 12:28:07'),
(501, 'App\\Models\\User', 48, 'auth_token', '48ec28d908e178c55c8ab851b1b88e11377bda973f725d1a0749740cc4832dce', '[\"*\"]', NULL, NULL, '2024-08-07 12:30:00', '2024-08-07 12:30:00'),
(502, 'App\\Models\\User', 53, 'auth_token', '329d79612978d1c2464e474f821951c45e04ba9ee1021a29f93580cb5d150e8a', '[\"*\"]', NULL, NULL, '2024-08-07 12:30:18', '2024-08-07 12:30:18'),
(503, 'App\\Models\\User', 54, 'auth_token', 'bd9db1e605eb29cf10ea67c55742b72e9478b2784543ec7f4ea7dbf657620579', '[\"*\"]', NULL, NULL, '2024-08-07 12:30:34', '2024-08-07 12:30:34'),
(504, 'App\\Models\\User', 54, 'auth_token', '40d971ee9f3c58ebf363afdb40fc1b9f74317cb471d4a815c52f0ad019f232eb', '[\"*\"]', NULL, NULL, '2024-08-07 12:34:38', '2024-08-07 12:34:38'),
(505, 'App\\Models\\User', 54, 'auth_token', 'b1c7f56f517518aed1c7e1739a0dde206a912d69accb7911e27a47ec98b1da15', '[\"*\"]', NULL, NULL, '2024-08-07 12:40:05', '2024-08-07 12:40:05'),
(506, 'App\\Models\\User', 54, 'auth_token', '31e677bcf4b8e1c4eaabef2945a83f77f18f35f57cda2d870267f3c0fed68e86', '[\"*\"]', NULL, NULL, '2024-08-07 12:40:08', '2024-08-07 12:40:08'),
(507, 'App\\Models\\User', 55, 'auth_token', 'ff5429d737237e5c04542d3a074f4a35927683cbf47486bf437a3d42b4eedc9a', '[\"*\"]', NULL, NULL, '2024-08-07 12:49:02', '2024-08-07 12:49:02'),
(508, 'App\\Models\\User', 55, 'auth_token', '9f3998ebbc4f9a55f0cb95e00c491a9ab77594317b537e6952cbfd2629092fcc', '[\"*\"]', NULL, NULL, '2024-08-07 12:49:19', '2024-08-07 12:49:19'),
(509, 'App\\Models\\User', 56, 'auth_token', '9758211f157c6bc26e4781db414ac2ed1c8e3bbb02b0187e7277d20e306bc8bc', '[\"*\"]', NULL, NULL, '2024-08-07 12:49:43', '2024-08-07 12:49:43'),
(510, 'App\\Models\\User', 56, 'auth_token', 'f36638719f0d950b972c7c6ec6d7f63daf62f46dadf72efddc7b1cf6988ad9bc', '[\"*\"]', NULL, NULL, '2024-08-07 12:50:17', '2024-08-07 12:50:17'),
(511, 'App\\Models\\User', 56, 'auth_token', '8cea59cda2fa862bd434632c6edce0e3b5614bb5b32ef11467fa104738babbee', '[\"*\"]', NULL, NULL, '2024-08-07 12:51:24', '2024-08-07 12:51:24'),
(512, 'App\\Models\\User', 55, 'auth_token', 'df805856a817d6e33fa5c094dbb81d14b9c1259066677800fb4f0ce10ab856c2', '[\"*\"]', NULL, NULL, '2024-08-07 12:53:15', '2024-08-07 12:53:15'),
(513, 'App\\Models\\User', 57, 'auth_token', 'a29d1b9641c592c7e4af3fd740942d2d35ee3f645a606e23e020706a7fe122a8', '[\"*\"]', NULL, NULL, '2024-08-07 12:53:24', '2024-08-07 12:53:24'),
(514, 'App\\Models\\User', 56, 'auth_token', 'c50886bcbeaabfdd8c98051b19fcb28cfe9c3acf9e4fed5035c6392bff73275e', '[\"*\"]', NULL, NULL, '2024-08-07 12:54:53', '2024-08-07 12:54:53'),
(515, 'App\\Models\\User', 56, 'auth_token', 'c8633d81176df7b417182d1c8c4cf602b26469304f46710c1c9207d1d364d78a', '[\"*\"]', NULL, NULL, '2024-08-07 12:55:27', '2024-08-07 12:55:27'),
(516, 'App\\Models\\User', 55, 'auth_token', '1d16559d866ea0c398172dd685a49261efca609b5648881f22c83758b67d5c89', '[\"*\"]', NULL, NULL, '2024-08-07 12:55:44', '2024-08-07 12:55:44'),
(517, 'App\\Models\\User', 58, 'auth_token', '420c6d49311bbff5830ade2d7a2b5e6102f39597dc5821026b1c6c0882828180', '[\"*\"]', NULL, NULL, '2024-08-07 12:57:36', '2024-08-07 12:57:36'),
(518, 'App\\Models\\User', 56, 'auth_token', 'a3d0478fa197b06dbb298e2cd4fa32e63a656ef125274649c977f28bb4e7c211', '[\"*\"]', NULL, NULL, '2024-08-07 13:00:21', '2024-08-07 13:00:21'),
(519, 'App\\Models\\User', 56, 'auth_token', 'b2ad005ac9331b5f82c309af245cc471ae8c791a203cf8cc6bd58fb5008bb328', '[\"*\"]', NULL, NULL, '2024-08-07 13:02:12', '2024-08-07 13:02:12'),
(520, 'App\\Models\\User', 56, 'auth_token', '08ded90f70f249f27589a6320eb01a3744d470ea78c0919c0b6532b2b2266cec', '[\"*\"]', NULL, NULL, '2024-08-07 13:02:20', '2024-08-07 13:02:20'),
(521, 'App\\Models\\User', 55, 'auth_token', '2016dd5d5b599b5ab02c425c44f89701e73f387f3b981472733009ae04c852d7', '[\"*\"]', NULL, NULL, '2024-08-07 13:02:42', '2024-08-07 13:02:42'),
(522, 'App\\Models\\User', 56, 'auth_token', '0610315edf2178a2c6dc817512a43dd208619b098b5cd4bc2b390c5bace64ae2', '[\"*\"]', NULL, NULL, '2024-08-07 13:03:18', '2024-08-07 13:03:18'),
(523, 'App\\Models\\User', 56, 'auth_token', '6b5690dce85e71187581c88a4d6e02ef94743efeb36ac7e5b3e967656f878fc7', '[\"*\"]', NULL, NULL, '2024-08-07 13:08:08', '2024-08-07 13:08:08'),
(524, 'App\\Models\\User', 55, 'auth_token', '4c3296433b33e139bd56eb2ef216f183a77fd862ab319fc446cb02a309855f9f', '[\"*\"]', NULL, NULL, '2024-08-07 13:10:01', '2024-08-07 13:10:01'),
(525, 'App\\Models\\User', 58, 'auth_token', 'c974c66da8682978734aea11e591b28d906622a7649e3456e43e312f09e70635', '[\"*\"]', NULL, NULL, '2024-08-07 13:15:18', '2024-08-07 13:15:18'),
(526, 'App\\Models\\User', 59, 'auth_token', 'c582732ac6f8915b8698e296d606f1655576e0a9bc1a4e260ea5a6f03e9f9a5b', '[\"*\"]', NULL, NULL, '2024-08-07 13:15:46', '2024-08-07 13:15:46'),
(527, 'App\\Models\\User', 56, 'auth_token', 'daa123ec33ec9488b9ef96a9619c36a23c084dc6f0dc711883cd33ffa56178fa', '[\"*\"]', NULL, NULL, '2024-08-07 13:16:14', '2024-08-07 13:16:14'),
(528, 'App\\Models\\User', 56, 'auth_token', 'ed1e2eff56eb3fd711009bca1461797f1f3103b3e8fb8d8e7f5573bbf9913bfa', '[\"*\"]', NULL, NULL, '2024-08-07 13:28:41', '2024-08-07 13:28:41'),
(529, 'App\\Models\\User', 60, 'auth_token', '74808b73b77a1e77724fb19d4f86a1685a9ffcb0169af4271b34163822d3e3a7', '[\"*\"]', NULL, NULL, '2024-08-07 13:29:17', '2024-08-07 13:29:17'),
(530, 'App\\Models\\User', 60, 'auth_token', 'e4f4db3f0165be6761e89f7a0e8d587f61a5e6058da64c1abf6f5b9f3725b32f', '[\"*\"]', NULL, NULL, '2024-08-07 13:29:26', '2024-08-07 13:29:26'),
(531, 'App\\Models\\User', 61, 'auth_token', '8b4dfe6f8dd7d08883031df36915a4d86f359b6819cad7afc194bc9c2e8e032c', '[\"*\"]', NULL, NULL, '2024-08-07 13:29:33', '2024-08-07 13:29:33'),
(532, 'App\\Models\\User', 62, 'auth_token', '75a03f5bc1bcaaf4136a6a12fe5ef5c8e71d2fa79dda2d48e253050ed62e51fd', '[\"*\"]', NULL, NULL, '2024-08-07 13:32:10', '2024-08-07 13:32:10'),
(533, 'App\\Models\\User', 62, 'auth_token', 'f96191b82700b0199042a8c2fc381d14100d2f63c988db84e230df23e95dd262', '[\"*\"]', NULL, NULL, '2024-08-08 03:58:37', '2024-08-08 03:58:37'),
(534, 'App\\Models\\User', 63, 'auth_token', '850b19359b27f12ec87c3e035e2d4b0caf863e944d4eaaf1721f2878f9306e57', '[\"*\"]', '2024-08-08 04:18:15', NULL, '2024-08-08 04:16:56', '2024-08-08 04:18:15'),
(535, 'App\\Models\\User', 63, 'auth_token', '21b056339b46cb25ba52728e4a2921071a41e63a5c368a418fe936f8945d004c', '[\"*\"]', '2024-08-08 04:28:54', NULL, '2024-08-08 04:28:47', '2024-08-08 04:28:54'),
(536, 'App\\Models\\User', 63, 'auth_token', '6ec0ca265c670eb94e6e6024ec1269b8e5acb562991926d101c0f7d0957d4d65', '[\"*\"]', '2024-08-08 04:31:03', NULL, '2024-08-08 04:30:57', '2024-08-08 04:31:03'),
(537, 'App\\Models\\User', 63, 'auth_token', '1483a46db746664190a4aae66396221d5fecba37a7a60af47cb9329967394a8e', '[\"*\"]', '2024-08-08 04:31:57', NULL, '2024-08-08 04:31:43', '2024-08-08 04:31:57'),
(538, 'App\\Models\\User', 63, 'auth_token', '203d0ff9dec7f436887bd888f1beea21ad8724a2d30213c7dd5dcc30131a9172', '[\"*\"]', '2024-08-08 04:32:52', NULL, '2024-08-08 04:32:46', '2024-08-08 04:32:52'),
(539, 'App\\Models\\User', 63, 'auth_token', '1dfecd8474b39392aebb1847e64f80632ac984530bbb9d957fabe28ec711c0c9', '[\"*\"]', '2024-08-08 04:36:47', NULL, '2024-08-08 04:36:40', '2024-08-08 04:36:47'),
(540, 'App\\Models\\User', 63, 'auth_token', 'a7e84c2b3a1f69a1f55ab3301b99c0b795f7187cb8b851cbccc2acff6c648095', '[\"*\"]', '2024-08-08 04:38:34', NULL, '2024-08-08 04:38:27', '2024-08-08 04:38:34'),
(541, 'App\\Models\\User', 63, 'auth_token', '422ac6f031c6490561c7cea2422a319952a3de81a6fac0fa06c4e5f88c816383', '[\"*\"]', '2024-08-08 04:39:09', NULL, '2024-08-08 04:39:05', '2024-08-08 04:39:09'),
(542, 'App\\Models\\User', 14, 'auth_token', '8d503519ed2086147bc8efafb58f7ea3cb0ff9f0befc14f607156f29f0035e27', '[\"*\"]', NULL, NULL, '2024-08-08 04:49:37', '2024-08-08 04:49:37'),
(543, 'App\\Models\\User', 14, 'auth_token', 'c16c740e3004b929e8fddde8cbb61fbb1add85e7310e90436c899c987d97aea2', '[\"*\"]', '2024-08-08 05:18:11', NULL, '2024-08-08 05:06:08', '2024-08-08 05:18:11'),
(544, 'App\\Models\\User', 64, 'auth_token', '47c118cad4ebc7eb6450194beb22707f40009f437cd8a4024168528042c756f9', '[\"*\"]', NULL, NULL, '2024-08-08 05:18:34', '2024-08-08 05:18:34'),
(545, 'App\\Models\\User', 64, 'auth_token', '879835690b25e796ba898e91628717265756983b18122061eb7ba3d9dffe3e5a', '[\"*\"]', NULL, NULL, '2024-08-08 05:19:42', '2024-08-08 05:19:42'),
(546, 'App\\Models\\User', 65, 'auth_token', '64d1cf27f971d96e5351512a7244cd2e9445785608174e5d11daf14a5c6ab3d8', '[\"*\"]', NULL, NULL, '2024-08-08 05:21:02', '2024-08-08 05:21:02'),
(547, 'App\\Models\\User', 66, 'auth_token', '7e0dd409b3bf6b9f63715c508d7926ff5cc46535691a13fa23895e50b70a4910', '[\"*\"]', NULL, NULL, '2024-08-08 05:29:22', '2024-08-08 05:29:22'),
(548, 'App\\Models\\User', 67, 'auth_token', 'f32fb3147e8a9f4cc4efcb913cd4270818920f8904ac826ec7d66c4e8f049f52', '[\"*\"]', NULL, NULL, '2024-08-08 05:32:21', '2024-08-08 05:32:21'),
(549, 'App\\Models\\User', 68, 'auth_token', 'a7e9f08adb322847d61fa67b5811eb4faad489bbb0cb926bc913625cd6881db3', '[\"*\"]', NULL, NULL, '2024-08-08 05:33:35', '2024-08-08 05:33:35'),
(550, 'App\\Models\\User', 65, 'auth_token', '2398330a3ac4f7c3316237c4c11b0bb7539e2932bb01f9414cfa84db9b95c6cb', '[\"*\"]', NULL, NULL, '2024-08-08 05:34:20', '2024-08-08 05:34:20'),
(551, 'App\\Models\\User', 69, 'auth_token', '465eec23b24cd9a9a51aeaabe31d0f31a4f3a3bb157937948d16452c53ad72ac', '[\"*\"]', NULL, NULL, '2024-08-08 05:36:08', '2024-08-08 05:36:08'),
(552, 'App\\Models\\User', 65, 'auth_token', '9f2abf516ffec641a56cbfa5a1b3b66ab26b4258341311c10c50f236a3779aa8', '[\"*\"]', NULL, NULL, '2024-08-08 05:45:48', '2024-08-08 05:45:48'),
(553, 'App\\Models\\User', 70, 'auth_token', 'f611e3eada3d5a3c6d10989d6811bde86151db151baa3e1e3de503423e0885e0', '[\"*\"]', NULL, NULL, '2024-08-08 05:46:48', '2024-08-08 05:46:48'),
(554, 'App\\Models\\User', 65, 'auth_token', '0d057bd99a5f9e3a5f7630f1f23662d7b2a75c4683036ee9a5c749bbb575e9c5', '[\"*\"]', NULL, NULL, '2024-08-08 05:51:05', '2024-08-08 05:51:05'),
(555, 'App\\Models\\User', 70, 'auth_token', 'fe6d09a1a5948eba3e55859e06af0c308ec3ad31b8d25ebac1ea7e96750e5814', '[\"*\"]', NULL, NULL, '2024-08-08 05:52:05', '2024-08-08 05:52:05'),
(556, 'App\\Models\\User', 71, 'auth_token', '1ca8917fcddd475e1ec7018f2545832c75b9eef8a13a4fc5e4b03cc527ea55a6', '[\"*\"]', NULL, NULL, '2024-08-08 05:53:38', '2024-08-08 05:53:38'),
(557, 'App\\Models\\User', 71, 'auth_token', 'd5e008cebf9526bfe3cd098a22a0395e67cfdf22850a437675015bf61abf4b03', '[\"*\"]', NULL, NULL, '2024-08-08 06:00:32', '2024-08-08 06:00:32'),
(558, 'App\\Models\\User', 70, 'auth_token', '1c5fe1ff21d6950e9116eb9e2451a59f7021d1622fa94bc52ebc336025787c81', '[\"*\"]', NULL, NULL, '2024-08-08 06:04:25', '2024-08-08 06:04:25'),
(559, 'App\\Models\\User', 64, 'auth_token', '06daf858eaf1e902f764876d33f471fdcca672f44171b23da266fedcbd0c110b', '[\"*\"]', NULL, NULL, '2024-08-08 06:33:32', '2024-08-08 06:33:32'),
(560, 'App\\Models\\User', 64, 'auth_token', '1bd920445747ff87bf939626c83039e5e2043a9502008c0c433f713d0e9dff06', '[\"*\"]', NULL, NULL, '2024-08-08 06:57:08', '2024-08-08 06:57:08'),
(561, 'App\\Models\\User', 64, 'auth_token', 'fc0b0de527bba4e024456a6f4d0b4671dfab01873c6fb32f082502e96501ed76', '[\"*\"]', NULL, NULL, '2024-08-08 07:01:50', '2024-08-08 07:01:50'),
(562, 'App\\Models\\User', 64, 'auth_token', 'd079635430f9d4f23137910fa9649ef5e875f3d79d503855548fa5e3bfa1e51f', '[\"*\"]', NULL, NULL, '2024-08-08 07:05:39', '2024-08-08 07:05:39'),
(563, 'App\\Models\\User', 64, 'auth_token', '82c0ec2923232c6ffe36b3a3351bfbffa3d33440b0777e4fab77c8bc231b6633', '[\"*\"]', NULL, NULL, '2024-08-08 07:06:36', '2024-08-08 07:06:36'),
(564, 'App\\Models\\User', 64, 'auth_token', 'e18d8210ca555fe3e538010440b82f9d681322d6a71e2e67679ed8ef61ef871e', '[\"*\"]', NULL, NULL, '2024-08-08 07:08:06', '2024-08-08 07:08:06'),
(565, 'App\\Models\\User', 64, 'auth_token', '19e216bfdf20348b8275000384d849feac82ef74cd62efbd6daa7282ff722d08', '[\"*\"]', NULL, NULL, '2024-08-08 07:32:44', '2024-08-08 07:32:44'),
(566, 'App\\Models\\User', 64, 'auth_token', 'ac6cbfc9eecee80e67cd9f62eb2f515dd9cdd815bcb2a95cfe395dd0ee1f2ddb', '[\"*\"]', NULL, NULL, '2024-08-08 07:32:44', '2024-08-08 07:32:44'),
(567, 'App\\Models\\User', 64, 'auth_token', '543ffbe1324aeda62532a8227b49056b78e6462d519a8c162a36c5c08e1ebf84', '[\"*\"]', NULL, NULL, '2024-08-08 07:32:56', '2024-08-08 07:32:56'),
(568, 'App\\Models\\User', 64, 'auth_token', '37983535c4dcb88cb4772770885c894ddc5f03b4b1b387ca5c1d619356c43263', '[\"*\"]', NULL, NULL, '2024-08-08 07:32:56', '2024-08-08 07:32:56'),
(569, 'App\\Models\\User', 64, 'auth_token', 'c020224fb659c6037896e2824f0c3387544f47707e3852b8afdb4268aa80d673', '[\"*\"]', NULL, NULL, '2024-08-08 07:32:57', '2024-08-08 07:32:57'),
(570, 'App\\Models\\User', 64, 'auth_token', 'c88c81b681f9a16fb447b8f77c8a0ca0a363a156940c89edce834e19b7f7c499', '[\"*\"]', NULL, NULL, '2024-08-08 07:33:58', '2024-08-08 07:33:58'),
(571, 'App\\Models\\User', 64, 'auth_token', '6ea961b827eb4cf76a53c8107ffb0af80beddd217ad2845ae718ac01893a44b1', '[\"*\"]', NULL, NULL, '2024-08-08 07:35:35', '2024-08-08 07:35:35'),
(572, 'App\\Models\\User', 64, 'auth_token', 'c008550595588ca6e16d0a00c2bc391b1c160e09f7afcdeda67d2b369898a38e', '[\"*\"]', NULL, NULL, '2024-08-08 07:35:46', '2024-08-08 07:35:46'),
(573, 'App\\Models\\User', 64, 'auth_token', 'cc6887317cb04c09a30be121e8dbdb19f31169643be9d94e5c35341924d4ad91', '[\"*\"]', NULL, NULL, '2024-08-08 07:36:44', '2024-08-08 07:36:44'),
(574, 'App\\Models\\User', 64, 'auth_token', '891ca58febfb8f8bc0c974aa3c19784a30a9ad0627ed9abaef50c262a815a835', '[\"*\"]', NULL, NULL, '2024-08-08 07:38:02', '2024-08-08 07:38:02'),
(575, 'App\\Models\\User', 64, 'auth_token', 'd6819361e2e4deaa5a8c23286b84ab3a83141dbfc105f6f26d9ee41210cd76a6', '[\"*\"]', NULL, NULL, '2024-08-08 07:38:25', '2024-08-08 07:38:25'),
(576, 'App\\Models\\User', 64, 'auth_token', 'e91d91d1c2153d5e4f50532a3e6bed6a2d76e86aa97ddf29c21ee28d8a3043ac', '[\"*\"]', NULL, NULL, '2024-08-08 07:40:25', '2024-08-08 07:40:25'),
(577, 'App\\Models\\User', 64, 'auth_token', 'a3b33478f61109639c907834cc306327a52e08734199c7c8c2a7d1c562134b4b', '[\"*\"]', NULL, NULL, '2024-08-08 07:43:21', '2024-08-08 07:43:21'),
(578, 'App\\Models\\User', 64, 'auth_token', '28319cfa4e4db3cc3eb53580220438e884093b4df45f4322ad9204fd82c17da5', '[\"*\"]', NULL, NULL, '2024-08-08 07:43:31', '2024-08-08 07:43:31'),
(579, 'App\\Models\\User', 64, 'auth_token', 'a81e2b2cb87466fb46580a7da852d74734c53b21a7561ef02bdb2dc7d297870d', '[\"*\"]', NULL, NULL, '2024-08-08 07:44:08', '2024-08-08 07:44:08'),
(580, 'App\\Models\\User', 64, 'auth_token', '98077213d28ad5e9ae42ee9087ddfbc897579dc0b55af512c7f1bba1919bd334', '[\"*\"]', NULL, NULL, '2024-08-08 07:45:13', '2024-08-08 07:45:13'),
(581, 'App\\Models\\User', 64, 'auth_token', '85dbedf29725e9c3fcec9990ad4744e1494e4254689419833f1481674a8e2854', '[\"*\"]', NULL, NULL, '2024-08-08 07:46:15', '2024-08-08 07:46:15'),
(582, 'App\\Models\\User', 64, 'auth_token', 'acbc8793e385f2de41ac9eaa26a451a238f05a348c57103ac85fd3bf65008624', '[\"*\"]', NULL, NULL, '2024-08-08 07:46:43', '2024-08-08 07:46:43'),
(583, 'App\\Models\\User', 64, 'auth_token', '32d37b96eb1c0b7360844112dd81204127fab6e7dde84cf9056d60cdc616e06f', '[\"*\"]', NULL, NULL, '2024-08-08 07:53:19', '2024-08-08 07:53:19'),
(584, 'App\\Models\\User', 64, 'auth_token', '04aa472c3404726f5770ef8f4532692a90146e396ed6d12fe012bf5ee04a74c1', '[\"*\"]', NULL, NULL, '2024-08-08 07:53:57', '2024-08-08 07:53:57'),
(585, 'App\\Models\\User', 64, 'auth_token', '05b11ff0555a3710eb815a6f39044ea0334418b085600512fd013463bb079d49', '[\"*\"]', NULL, NULL, '2024-08-08 09:54:55', '2024-08-08 09:54:55'),
(586, 'App\\Models\\User', 63, 'auth_token', 'c2eb47c0da1411a8d260056789f51649681022dfda18b4d30f07b52e974fc78f', '[\"*\"]', '2024-08-08 09:56:18', NULL, '2024-08-08 09:56:13', '2024-08-08 09:56:18'),
(587, 'App\\Models\\User', 64, 'auth_token', 'b50a60131cbdef89fd34cfbfdbb0647fff53efefb82df205e16e089df5a4de4d', '[\"*\"]', NULL, NULL, '2024-08-08 10:05:15', '2024-08-08 10:05:15'),
(588, 'App\\Models\\User', 64, 'auth_token', '360fa4754d16b19f9d1e721f7704e93bfda1a67d013910dd2384168778167208', '[\"*\"]', '2024-08-08 10:06:15', NULL, '2024-08-08 10:06:11', '2024-08-08 10:06:15'),
(589, 'App\\Models\\User', 64, 'auth_token', 'cdc2f8f1b5d24bd78191e2c90a5e51085e09531dd15fa40ee43d1ea6ee548884', '[\"*\"]', NULL, NULL, '2024-08-08 10:06:30', '2024-08-08 10:06:30'),
(590, 'App\\Models\\User', 64, 'auth_token', 'd8fe78a6b4b1290b837ce152fd1176943d87df14df032c3b1490e2be6b855e89', '[\"*\"]', NULL, NULL, '2024-08-08 10:09:09', '2024-08-08 10:09:09'),
(591, 'App\\Models\\User', 72, 'auth_token', '8b8f378912b96d8899d831397c063cfc388c4e95b8282f081263eff5b0e4c732', '[\"*\"]', NULL, NULL, '2024-08-08 10:10:41', '2024-08-08 10:10:41'),
(592, 'App\\Models\\User', 64, 'auth_token', 'f6e2283dd18fe6dc474c6ea7879c06d5f0c906cd4547d34e3e14f79386182342', '[\"*\"]', NULL, NULL, '2024-08-08 10:11:55', '2024-08-08 10:11:55'),
(593, 'App\\Models\\User', 64, 'auth_token', 'ee6caec11a4c6e091b38c2c48ce9b5bcfcc8fba3bfa8476f6e27ba67d207084d', '[\"*\"]', NULL, NULL, '2024-08-08 10:15:49', '2024-08-08 10:15:49'),
(594, 'App\\Models\\User', 72, 'auth_token', 'f57a44a2c34b829a9dde8eef10b0450afaef84f2a27d5d438ff05fa8b20b9f48', '[\"*\"]', NULL, NULL, '2024-08-08 10:16:32', '2024-08-08 10:16:32'),
(595, 'App\\Models\\User', 72, 'auth_token', 'ab337021a5d8dc8f0e29a30a8cb80a4bee012a75bd767da189b3cd52e3e81979', '[\"*\"]', NULL, NULL, '2024-08-08 10:18:10', '2024-08-08 10:18:10'),
(596, 'App\\Models\\User', 72, 'auth_token', '2b0173a5f67eb9f642d6dc1565e9417c365121187594909445a04320f7fff782', '[\"*\"]', NULL, NULL, '2024-08-08 10:20:04', '2024-08-08 10:20:04'),
(597, 'App\\Models\\User', 72, 'auth_token', '92db94b56ba33b6b9b95c03c8935846685392942cfe9b917f251048227c93fb2', '[\"*\"]', NULL, NULL, '2024-08-08 10:22:32', '2024-08-08 10:22:32'),
(598, 'App\\Models\\User', 64, 'auth_token', '86e0291b85fe6c9c2c1de8cbbba8410d5776b7439755b93807a541973a3792b4', '[\"*\"]', NULL, NULL, '2024-08-08 10:51:58', '2024-08-08 10:51:58'),
(599, 'App\\Models\\User', 64, 'auth_token', '5bb8c3418fe3c0c8213601549cb1668845ceff818c5902d07c0e3d05f2c8f0ea', '[\"*\"]', NULL, NULL, '2024-08-08 11:01:34', '2024-08-08 11:01:34'),
(600, 'App\\Models\\User', 64, 'auth_token', 'b2319039566deae01ca4bf8fa7beec0cc468ba270f44f0b16f198c2711c61e8c', '[\"*\"]', NULL, NULL, '2024-08-08 11:07:13', '2024-08-08 11:07:13'),
(601, 'App\\Models\\User', 72, 'auth_token', 'a0023ed1373c5b909dcdd1fc31020063ddcab16d4c78bce5858d2eba5411f28e', '[\"*\"]', NULL, NULL, '2024-08-08 11:07:21', '2024-08-08 11:07:21'),
(602, 'App\\Models\\User', 64, 'auth_token', '6b0f47f4d6abec35b776167e18b7996ae70d4723c84e304b422ccd31a9e4907d', '[\"*\"]', NULL, NULL, '2024-08-08 11:08:59', '2024-08-08 11:08:59'),
(603, 'App\\Models\\User', 64, 'auth_token', '56beabe25d07588ac3f2714432dc65f5465d3afec84579c3908a2c0cbaa167a0', '[\"*\"]', NULL, NULL, '2024-08-08 11:09:32', '2024-08-08 11:09:32'),
(604, 'App\\Models\\User', 64, 'auth_token', '32ad0b07777c91bf1be82f83a1c2c81e0ce2a2bf564e3126b8122668ca246ab7', '[\"*\"]', NULL, NULL, '2024-08-08 11:11:36', '2024-08-08 11:11:36'),
(605, 'App\\Models\\User', 15, 'auth_token', 'ec656358333d9aa85fef07e20eb6a9048739a07e73e98d2470f3855be170560d', '[\"*\"]', NULL, NULL, '2024-08-08 11:13:41', '2024-08-08 11:13:41'),
(606, 'App\\Models\\User', 6, 'auth_token', '0c2c4d6551fcea135715c207aa8531b3aaff7ec369fe35b8b0c9ec7227761a51', '[\"*\"]', NULL, NULL, '2024-08-08 11:15:04', '2024-08-08 11:15:04'),
(607, 'App\\Models\\User', 48, 'auth_token', '3bbb6a1ba28cfba7e385c76e392957b4f06c4671f8806e4e6014da17cd0f5344', '[\"*\"]', NULL, NULL, '2024-08-08 11:15:12', '2024-08-08 11:15:12'),
(608, 'App\\Models\\User', 64, 'auth_token', 'ed2c07e8e9e7b4bd0852adb7c3ea5a88f03860e499067069c8ca70f67c1c1fb0', '[\"*\"]', '2024-08-08 11:36:04', NULL, '2024-08-08 11:35:20', '2024-08-08 11:36:04'),
(609, 'App\\Models\\User', 72, 'auth_token', '78864c3f72206d845be36a63d09814dc9a2b94737f375058d70cb82a01bc59bd', '[\"*\"]', NULL, NULL, '2024-08-08 11:36:20', '2024-08-08 11:36:20'),
(610, 'App\\Models\\User', 72, 'auth_token', 'fd3c0935f284bbe819e2826e53a15d8a3bb5652f1da19cab580a60ad75491af8', '[\"*\"]', NULL, NULL, '2024-08-08 11:37:53', '2024-08-08 11:37:53'),
(611, 'App\\Models\\User', 64, 'auth_token', '62ca27fe068a3a0488de33856a9243899a04edd1aa449af4d4e27157cdf243a0', '[\"*\"]', '2024-08-08 11:39:25', NULL, '2024-08-08 11:38:57', '2024-08-08 11:39:25'),
(612, 'App\\Models\\User', 72, 'auth_token', '7c5f4af6ecca9a7d563d37469cea5c1a3c232cee3a3404b388741c176dc8b141', '[\"*\"]', NULL, NULL, '2024-08-08 11:39:42', '2024-08-08 11:39:42'),
(613, 'App\\Models\\User', 72, 'auth_token', '9c30b6b24c6ce57cdfb5a30e7e374552135266f93598429a90326912b6b30000', '[\"*\"]', NULL, NULL, '2024-08-08 11:42:19', '2024-08-08 11:42:19'),
(614, 'App\\Models\\User', 72, 'auth_token', 'f683dc20485790862fb09912f7a3f3baccc8759b3b8e25c5e284fbb0fc94d2f6', '[\"*\"]', NULL, NULL, '2024-08-08 11:43:48', '2024-08-08 11:43:48'),
(615, 'App\\Models\\User', 64, 'auth_token', '189ba757007b2844ff7c2395a8fcd2a940c0b3f72f5a92a8913223e32c34ce33', '[\"*\"]', '2024-08-08 11:44:57', NULL, '2024-08-08 11:44:16', '2024-08-08 11:44:57'),
(616, 'App\\Models\\User', 64, 'auth_token', 'f8b86f46b310e03bd357e7a2c252814ced9191222ada5506438d85734aef1aac', '[\"*\"]', '2024-08-08 11:45:39', NULL, '2024-08-08 11:45:14', '2024-08-08 11:45:39'),
(617, 'App\\Models\\User', 72, 'auth_token', '05dc9151c2fc3e0c9a5b93f690c68fbf6d3f783ee955d93256dbe2f5f95ab8f3', '[\"*\"]', NULL, NULL, '2024-08-08 11:45:50', '2024-08-08 11:45:50'),
(618, 'App\\Models\\User', 72, 'auth_token', 'b5f79f0634e152008f5ec309dbcc687253bd82ac9d9afbb720a4df394531c1a4', '[\"*\"]', NULL, NULL, '2024-08-08 11:46:20', '2024-08-08 11:46:20'),
(619, 'App\\Models\\User', 72, 'auth_token', 'deab9fa89920f6ae4e4449cb214868a446b32bc62ca67e72888f69abd0d60d52', '[\"*\"]', NULL, NULL, '2024-08-08 12:07:36', '2024-08-08 12:07:36'),
(620, 'App\\Models\\User', 64, 'auth_token', '3cf71268a8b71b18c724dda6bb269cc100a9b3cf912c46a8326b344f75ac38c3', '[\"*\"]', '2024-08-09 08:57:56', NULL, '2024-08-09 04:46:32', '2024-08-09 08:57:56'),
(621, 'App\\Models\\User', 77, 'auth_token', '425da91b6e9f20f2ca4b1fe329cf568269f12386986805953f45a2f11bc30b89', '[\"*\"]', NULL, NULL, '2024-08-09 05:53:53', '2024-08-09 05:53:53'),
(622, 'App\\Models\\User', 77, 'auth_token', 'f5c2bc668256a246416fa9729b34bd30c4c76e9bcf09f0c99b203e0001252949', '[\"*\"]', NULL, NULL, '2024-08-09 05:53:58', '2024-08-09 05:53:58'),
(623, 'App\\Models\\User', 77, 'auth_token', '027e8f3d0d6a262ce48d69f8724d1beb80c1914d5812366e177aced38db0a5d1', '[\"*\"]', NULL, NULL, '2024-08-09 06:10:52', '2024-08-09 06:10:52'),
(624, 'App\\Models\\User', 72, 'auth_token', '788f0960502e9e6809606bfcf9dd0e0e6e6478117522ad7a13886933fb245656', '[\"*\"]', NULL, NULL, '2024-08-09 08:59:20', '2024-08-09 08:59:20'),
(625, 'App\\Models\\User', 72, 'auth_token', '43f6182d20b38384ebbc18e4c256a1c6a67e54d4ae8a7e7166520b393b987def', '[\"*\"]', NULL, NULL, '2024-08-09 09:05:42', '2024-08-09 09:05:42'),
(626, 'App\\Models\\User', 72, 'auth_token', '2ccda54dfd624eedde3be3ea553a14aca98b2b57367e122948cac6fda532daae', '[\"*\"]', NULL, NULL, '2024-08-09 09:08:58', '2024-08-09 09:08:58'),
(627, 'App\\Models\\User', 72, 'auth_token', '4440910504fe071ec3800816539dd591b99e794eab1657e2def7df92990d57ee', '[\"*\"]', NULL, NULL, '2024-08-09 09:14:19', '2024-08-09 09:14:19'),
(628, 'App\\Models\\User', 72, 'auth_token', '6789c855bbe766f7d529b97f743aaaafa31fc39d2ca86c67a21706f6b4299209', '[\"*\"]', NULL, NULL, '2024-08-09 09:19:23', '2024-08-09 09:19:23'),
(629, 'App\\Models\\User', 72, 'auth_token', '0271acdbe6454a77537b96745455727620cf43b3b65867798f599b89112f9c0d', '[\"*\"]', NULL, NULL, '2024-08-09 09:19:51', '2024-08-09 09:19:51'),
(630, 'App\\Models\\User', 72, 'auth_token', 'c16c6a53e404b700f6ba01a63d19dfb76c2268707686cc718de81bde52d0b8ed', '[\"*\"]', NULL, NULL, '2024-08-09 09:21:00', '2024-08-09 09:21:00'),
(631, 'App\\Models\\User', 72, 'auth_token', '74c3c74f365118b0be6b4b19372ceb0cdab806fa34c6161220a3b38b848eb145', '[\"*\"]', NULL, NULL, '2024-08-09 09:21:54', '2024-08-09 09:21:54'),
(632, 'App\\Models\\User', 72, 'auth_token', 'bec15ed473a9adba6b26ab956e6a718a2b3ca94d72ab4d5d5ffe5b4a7ce1ea98', '[\"*\"]', NULL, NULL, '2024-08-09 09:25:00', '2024-08-09 09:25:00'),
(633, 'App\\Models\\User', 72, 'auth_token', 'e40b84d53e2ed7de3fb4f0745636c87d16414f3824fc76a53a0e97c96e342b4e', '[\"*\"]', NULL, NULL, '2024-08-09 09:25:18', '2024-08-09 09:25:18'),
(634, 'App\\Models\\User', 72, 'auth_token', '2e05926f968dd0ae7cf0e2d57151afe3f0a90732b37b3e8732a1c4ecd66931dc', '[\"*\"]', NULL, NULL, '2024-08-09 09:25:52', '2024-08-09 09:25:52'),
(635, 'App\\Models\\User', 72, 'auth_token', '3496da048b2bdb88f1aeffb06b48fc4453729df9943dc7cac409c3b6a3b12f0a', '[\"*\"]', NULL, NULL, '2024-08-09 09:26:25', '2024-08-09 09:26:25'),
(636, 'App\\Models\\User', 72, 'auth_token', '6d461f114f7e93badb145ea60d954398ed602576c0148fd44328d3ccfbdeeac0', '[\"*\"]', NULL, NULL, '2024-08-09 09:29:15', '2024-08-09 09:29:15'),
(637, 'App\\Models\\User', 72, 'auth_token', 'ac94b29f1f4fc43411305c8256000a3c1766fd343ecd83c9d3d41a579485276a', '[\"*\"]', NULL, NULL, '2024-08-09 09:31:19', '2024-08-09 09:31:19'),
(638, 'App\\Models\\User', 72, 'auth_token', '8004d8a3dc58d9699aa4cf109f4ec76c125292f06c534bef4a3f98d63e5ed7c3', '[\"*\"]', NULL, NULL, '2024-08-09 09:31:30', '2024-08-09 09:31:30'),
(639, 'App\\Models\\User', 72, 'auth_token', 'e6b77fd905a76563db22eb17c19ef2b0e8bf8a25a3b1d8638ba1353b59142a28', '[\"*\"]', NULL, NULL, '2024-08-09 09:32:04', '2024-08-09 09:32:04'),
(640, 'App\\Models\\User', 72, 'auth_token', '6ace28bbf669725e035e11a70c60faaeee93d0b68200aac45df4723b17bb7596', '[\"*\"]', NULL, NULL, '2024-08-09 09:32:21', '2024-08-09 09:32:21'),
(641, 'App\\Models\\User', 72, 'auth_token', '8ef336a77ea40bb8c87e20c99edfd69795411ab6a05e2a62239e966e7222a40e', '[\"*\"]', NULL, NULL, '2024-08-09 09:34:17', '2024-08-09 09:34:17'),
(642, 'App\\Models\\User', 72, 'auth_token', 'ab368745e3d31187f7e8d89e089ca8601e9858709178091e237fc4e5d7cb44dd', '[\"*\"]', NULL, NULL, '2024-08-09 09:49:08', '2024-08-09 09:49:08'),
(643, 'App\\Models\\User', 72, 'auth_token', '9ce4e9aef47969ce8b9d6e6afc448ea2bd3002a85814d0184a67c90b25058d94', '[\"*\"]', NULL, NULL, '2024-08-09 09:50:42', '2024-08-09 09:50:42'),
(644, 'App\\Models\\User', 72, 'auth_token', '44632edba1297d76524b8bacc823879d3584862f8da3d4628a4527bca7bfa91c', '[\"*\"]', NULL, NULL, '2024-08-09 10:05:02', '2024-08-09 10:05:02'),
(645, 'App\\Models\\User', 72, 'auth_token', '56cabd731e35af442a8eaaf9ffd62665203c0e5c6e6511b464cb03b7e0db6aca', '[\"*\"]', NULL, NULL, '2024-08-09 10:07:05', '2024-08-09 10:07:05'),
(646, 'App\\Models\\User', 64, 'auth_token', '8f3980523eb7e4e886aa0a7488527243a782ce5a7fd14b4e884e67e58603ec99', '[\"*\"]', '2024-08-09 10:23:56', NULL, '2024-08-09 10:23:27', '2024-08-09 10:23:56'),
(647, 'App\\Models\\User', 72, 'auth_token', 'f52814e609087451e17e2e2cb9dc0ab9a82024cf8f71af5d652b2d46f35fbebe', '[\"*\"]', NULL, NULL, '2024-08-09 10:42:09', '2024-08-09 10:42:09'),
(648, 'App\\Models\\User', 72, 'auth_token', '8d64e2d288ac57926192f95d122fec1147a668c42e0d7d8fd9416d0f2061a7af', '[\"*\"]', NULL, NULL, '2024-08-09 10:43:38', '2024-08-09 10:43:38'),
(649, 'App\\Models\\User', 72, 'auth_token', '01e883e805796363e8231edb7002f6ad4fcd2dc51d897f2ad903b354f01b1796', '[\"*\"]', NULL, NULL, '2024-08-09 10:47:31', '2024-08-09 10:47:31'),
(650, 'App\\Models\\User', 72, 'auth_token', '9abcdcc0a525e82a338ff6b374fbdc34a6d83e209c8892b26856a9b10e2073fa', '[\"*\"]', NULL, NULL, '2024-08-09 10:51:57', '2024-08-09 10:51:57'),
(651, 'App\\Models\\User', 72, 'auth_token', '912e5a92ef64e4abcddae94f11f97f0ef70cab6800d5ab3e3190ac5fe3d4e533', '[\"*\"]', NULL, NULL, '2024-08-09 10:53:12', '2024-08-09 10:53:12'),
(652, 'App\\Models\\User', 70, 'auth_token', '70a067b36a255fe9181178e69a5a2f88b4c8acca80a4451260aeb7915112a976', '[\"*\"]', NULL, NULL, '2024-08-09 10:58:57', '2024-08-09 10:58:57'),
(653, 'App\\Models\\User', 72, 'auth_token', 'f513ce4c28c099099bfa3dccd0d90ea56d6fb31313951084af6248cb4fc948eb', '[\"*\"]', NULL, NULL, '2024-08-09 11:03:08', '2024-08-09 11:03:08'),
(654, 'App\\Models\\User', 64, 'auth_token', 'cfca41c41e5fa70a4d4c2013fcad3f6f7ba4487cb0f3843c28dd959af372891a', '[\"*\"]', '2024-09-11 10:06:55', NULL, '2024-08-09 11:04:43', '2024-09-11 10:06:55'),
(655, 'App\\Models\\User', 72, 'auth_token', 'b102cc5a1110c0d21ad23afe618ac90565126d2154c564ad26fa14e2e7eb8052', '[\"*\"]', NULL, NULL, '2024-08-09 13:02:15', '2024-08-09 13:02:15'),
(656, 'App\\Models\\User', 72, 'auth_token', '40dc1a6a0abcab1672c9857ca958185b0a0b8a3fd259a6a23d3d43298c859be6', '[\"*\"]', '2024-08-09 13:03:31', NULL, '2024-08-09 13:03:11', '2024-08-09 13:03:31'),
(657, 'App\\Models\\User', 72, 'auth_token', '05662ae8dfc05974427535f4e228b8ae526d03b3aa7f4d92fa11c099407ab58a', '[\"*\"]', NULL, NULL, '2024-08-09 13:10:42', '2024-08-09 13:10:42'),
(658, 'App\\Models\\User', 72, 'auth_token', 'f4d1cba70c7a586e631963fe666297327f60c7fb48beb5090ec256fbb6365d0d', '[\"*\"]', '2024-08-10 05:08:33', NULL, '2024-08-09 13:10:54', '2024-08-10 05:08:33'),
(659, 'App\\Models\\User', 8, 'auth_token', 'de0ebb7faf668a2fc982adfa9f8d85eb7a8631b7e8d549f2a3c81fd0db246bf7', '[\"*\"]', NULL, NULL, '2024-08-09 13:37:29', '2024-08-09 13:37:29'),
(660, 'App\\Models\\User', 8, 'auth_token', '30fa08f98db1391dc201e37fb203ffe04f4822cff8d7f94de06c2b5f9a31478a', '[\"*\"]', NULL, NULL, '2024-08-09 13:37:40', '2024-08-09 13:37:40'),
(661, 'App\\Models\\User', 8, 'auth_token', 'ac3d285e0446b4917dd86f319a53314bb6b56b1ba43840a319b87ca03b22d4aa', '[\"*\"]', NULL, NULL, '2024-08-09 13:38:25', '2024-08-09 13:38:25'),
(662, 'App\\Models\\User', 8, 'auth_token', '5f1977344a0ce2951dd524f90a3e493e3992f9832d3b14e0ce7d93c73fb6698c', '[\"*\"]', '2024-08-09 13:40:13', NULL, '2024-08-09 13:38:45', '2024-08-09 13:40:13'),
(663, 'App\\Models\\User', 8, 'auth_token', '343084c714deaa5148f8b3abfd54f5259e25537a0cc61e636556d89845cdab57', '[\"*\"]', NULL, NULL, '2024-08-09 19:33:27', '2024-08-09 19:33:27'),
(664, 'App\\Models\\User', 8, 'auth_token', '50e6b57d62d7016bae1ba623e8537c5fa631503d744c05409e11511bd608b5bb', '[\"*\"]', NULL, NULL, '2024-08-09 19:34:21', '2024-08-09 19:34:21'),
(665, 'App\\Models\\User', 8, 'auth_token', '86a897fa6e54a85488ec4396e84cdb739b9347d0a2147b75f9b354d2c421eef2', '[\"*\"]', NULL, NULL, '2024-08-09 19:35:28', '2024-08-09 19:35:28'),
(666, 'App\\Models\\User', 8, 'auth_token', '7ce2c32fa50524e8e8fdeed6d3008bf283edcbc90e23cb2c40db2dca854e3fc9', '[\"*\"]', NULL, NULL, '2024-08-09 20:20:06', '2024-08-09 20:20:06'),
(667, 'App\\Models\\User', 8, 'auth_token', 'e2d5877c27b6583bca179e968d299be921814ef35254bf1e095142d0b4abbe43', '[\"*\"]', NULL, NULL, '2024-08-09 20:21:59', '2024-08-09 20:21:59'),
(668, 'App\\Models\\User', 80, 'auth_token', '69a82a4996b159579f3a4400c0f62766b7b2759380413bb0acb9e383d3484370', '[\"*\"]', NULL, NULL, '2024-08-10 04:31:43', '2024-08-10 04:31:43'),
(669, 'App\\Models\\User', 80, 'auth_token', '890def2e7cc74338f1f38ed281a4741de93c00b87eea3c035e362c1117e79bd6', '[\"*\"]', NULL, NULL, '2024-08-10 04:33:22', '2024-08-10 04:33:22'),
(670, 'App\\Models\\User', 81, 'auth_token', 'e58f14036ff3f05e85d73feb53ac43bdb01b893c9612607cfc20e3aaa77bf34d', '[\"*\"]', NULL, NULL, '2024-08-10 05:05:41', '2024-08-10 05:05:41'),
(671, 'App\\Models\\User', 81, 'auth_token', '50c70aaf3e7a4ea93d66aad885b9c998e92d7f96337310aa2b96e984aa8d3a83', '[\"*\"]', NULL, NULL, '2024-08-10 05:06:28', '2024-08-10 05:06:28'),
(672, 'App\\Models\\User', 81, 'auth_token', 'e16894f7333ff6dca242a4763bc13f982b46de9754187a0efeb8284313825a3c', '[\"*\"]', NULL, NULL, '2024-08-10 05:07:27', '2024-08-10 05:07:27'),
(673, 'App\\Models\\User', 70, 'auth_token', '333935b751184ff65e051a5cbfda3bb3668e7ed2ccc6ff5b6b43a86da0f01518', '[\"*\"]', NULL, NULL, '2024-08-10 05:08:44', '2024-08-10 05:08:44'),
(674, 'App\\Models\\User', 81, 'auth_token', '730a015444ef0a9fcd3a14f716e99cf62ccdc11ba0f1829fd60e2b0a9146ba9b', '[\"*\"]', NULL, NULL, '2024-08-10 05:16:33', '2024-08-10 05:16:33'),
(675, 'App\\Models\\User', 70, 'auth_token', '73316f8305190b6f67ce0e94b76c91967b04ec948e48b66496564159003eb94d', '[\"*\"]', NULL, NULL, '2024-08-10 05:16:48', '2024-08-10 05:16:48'),
(676, 'App\\Models\\User', 70, 'auth_token', 'bbf99c6161cf4ea00f1649ac7ae2186c40710b8f8569ee7ec02347fb488f797e', '[\"*\"]', NULL, NULL, '2024-08-10 05:18:39', '2024-08-10 05:18:39'),
(677, 'App\\Models\\User', 70, 'auth_token', 'd66634378a807b86193712f25624587d54a3a652b8bc3e4150424b98f635a103', '[\"*\"]', NULL, NULL, '2024-08-10 05:20:29', '2024-08-10 05:20:29'),
(678, 'App\\Models\\User', 82, 'auth_token', 'a9c73787994e34bdcc9dcdcc3b7a1e9084b5a3d3aefa4caf4a0a65055619140f', '[\"*\"]', NULL, NULL, '2024-08-10 05:20:46', '2024-08-10 05:20:46'),
(679, 'App\\Models\\User', 72, 'auth_token', '56c361e29aaae32be4776ba7cc127df7637cf8570f8060ee37e0081428f2c52a', '[\"*\"]', '2024-08-10 11:24:24', NULL, '2024-08-10 05:25:36', '2024-08-10 11:24:24'),
(680, 'App\\Models\\User', 11, 'auth_token', '73100ffd84c8cae9e688b08dfb66dc78729a5028381a3db240de30007c91c5e1', '[\"*\"]', NULL, NULL, '2024-08-10 07:31:06', '2024-08-10 07:31:06'),
(681, 'App\\Models\\User', 91, 'auth_token', 'a666d526c17c5d76c82f82d32e8bd924231d16dc47d7713a8b78ef7c52f9f46f', '[\"*\"]', NULL, NULL, '2024-08-10 10:20:16', '2024-08-10 10:20:16'),
(682, 'App\\Models\\User', 91, 'auth_token', '67a61a9e3dd83ed1b6f3321873eb14efb2d80f51779b569af2872793eef9bcea', '[\"*\"]', NULL, NULL, '2024-08-10 11:35:50', '2024-08-10 11:35:50'),
(683, 'App\\Models\\User', 72, 'auth_token', '0b01f652f3da484f14c9335ea280056b2b8da9984c4469a8f5f1cd5639964197', '[\"*\"]', '2024-08-12 05:52:51', NULL, '2024-08-10 11:35:51', '2024-08-12 05:52:51'),
(684, 'App\\Models\\User', 93, 'auth_token', '65d4f2c10585a55950b83e151bd485bfa44ac97d17ada74d408779ad79f0193e', '[\"*\"]', NULL, NULL, '2024-08-10 11:36:45', '2024-08-10 11:36:45'),
(685, 'App\\Models\\User', 8, 'auth_token', '94d8963d1da0ad887fb4bcc1b814fd6261ae72a6c993de5aa9ad6c02cd8a6aa0', '[\"*\"]', NULL, NULL, '2024-08-10 16:45:48', '2024-08-10 16:45:48'),
(686, 'App\\Models\\User', 8, 'auth_token', '2ecaa69c88f721a5e46b5deba7a8788882f92d02bfb7bac9bb1837c9eaca4a45', '[\"*\"]', NULL, NULL, '2024-08-11 14:10:33', '2024-08-11 14:10:33'),
(688, 'App\\Models\\User', 99, 'auth_token', '004256bc17a60c975e51ed97a732cdc10c32e0e210f7bb87888c47575f595dbc', '[\"*\"]', NULL, NULL, '2024-08-12 04:24:03', '2024-08-12 04:24:03'),
(689, 'App\\Models\\User', 100, 'auth_token', '0a02eb5d5b164cfd7e202bd3c60fa4da388c51471bb9142b332bed9517ce1b57', '[\"*\"]', NULL, NULL, '2024-08-12 04:24:31', '2024-08-12 04:24:31'),
(690, 'App\\Models\\User', 101, 'auth_token', '7acb1d4f52485223787a139c0b78052d8c59413764fc65a33f1f0359363a6919', '[\"*\"]', NULL, NULL, '2024-08-12 04:24:45', '2024-08-12 04:24:45'),
(691, 'App\\Models\\User', 101, 'auth_token', '1ecb6d9f0ffbe9443462d0e69fa1bdca31f2a201ec533b208080465897c073e8', '[\"*\"]', NULL, NULL, '2024-08-12 04:24:49', '2024-08-12 04:24:49'),
(692, 'App\\Models\\User', 101, 'auth_token', '9a7320cfd94f455ace50b7aff8f2d014a9d822b66178c34ee3e82e6318553f93', '[\"*\"]', NULL, NULL, '2024-08-12 04:24:52', '2024-08-12 04:24:52'),
(693, 'App\\Models\\User', 101, 'auth_token', '1462cdbf3efc5c4108ed725e68d2944658683af894d42faac9bb50c78a0d0427', '[\"*\"]', NULL, NULL, '2024-08-12 04:24:53', '2024-08-12 04:24:53'),
(694, 'App\\Models\\User', 101, 'auth_token', '84674b42c5e5cecd2b5e49c0442f692c851fea53db4c808b2f7df738f46a7bf5', '[\"*\"]', NULL, NULL, '2024-08-12 04:24:54', '2024-08-12 04:24:54'),
(695, 'App\\Models\\User', 101, 'auth_token', 'a5fea0940fab8626c5ce789e4b6b91b892ac33ab2ed986aa543cb97dfeb80afe', '[\"*\"]', NULL, NULL, '2024-08-12 04:24:55', '2024-08-12 04:24:55'),
(696, 'App\\Models\\User', 101, 'auth_token', '12193ab837bd4e4a5f9a3723a5bb5c0756c6f4290d4bef5c2fb3bd81526f4a97', '[\"*\"]', NULL, NULL, '2024-08-12 04:24:56', '2024-08-12 04:24:56'),
(697, 'App\\Models\\User', 101, 'auth_token', 'ed0dfcd84b47b050e94f9db262ecfa33b36ed9394da520732a69d69f9f87e265', '[\"*\"]', NULL, NULL, '2024-08-12 04:24:57', '2024-08-12 04:24:57'),
(698, 'App\\Models\\User', 72, 'auth_token', '104dd9146c4fa11c7b3f4c4e30305918d5f4f527199a10745b6e9a811c468c78', '[\"*\"]', '2024-08-12 05:58:44', NULL, '2024-08-12 05:58:19', '2024-08-12 05:58:44'),
(699, 'App\\Models\\User', 72, 'auth_token', '9adfa1375b81f60f392cb93ba0b0d27a5636155dbf54a77e2f73749cd1ef0214', '[\"*\"]', '2024-08-13 06:12:55', NULL, '2024-08-12 06:03:00', '2024-08-13 06:12:55'),
(700, 'App\\Models\\User', 8, 'auth_token', 'e8ca0b989dcc378d125982b2cbd0d920d960150294e1e45cfc4996d89bbd6de1', '[\"*\"]', NULL, NULL, '2024-08-12 09:04:49', '2024-08-12 09:04:49'),
(701, 'App\\Models\\User', 65, 'auth_token', '0599d0ae501fb86b45408d15effb0baed398bb7c6236c6e0552d4861cbb99e06', '[\"*\"]', NULL, NULL, '2024-08-12 09:11:30', '2024-08-12 09:11:30'),
(702, 'App\\Models\\User', 65, 'auth_token', 'd8e04472a815f14bd17b8b61b09abc7ba531954a899a4adfba925c00e51561e8', '[\"*\"]', NULL, NULL, '2024-08-12 09:30:01', '2024-08-12 09:30:01'),
(703, 'App\\Models\\User', 8, 'auth_token', '5af433fc79dbe25164a8ee45ac1c333d076050c3bf109a4aa9fdaf5eeb10254e', '[\"*\"]', NULL, NULL, '2024-08-12 09:33:01', '2024-08-12 09:33:01'),
(704, 'App\\Models\\User', 8, 'auth_token', 'bdfe55de120b1aea43f3cd4713351d8bcffba30d6a305b1fa654ad057bbecd79', '[\"*\"]', NULL, NULL, '2024-08-12 09:33:19', '2024-08-12 09:33:19'),
(705, 'App\\Models\\User', 8, 'auth_token', '700183de44a5b310e28a3b90361dd900a1c2474e8c181a5598084c1426842dec', '[\"*\"]', NULL, NULL, '2024-08-12 09:36:57', '2024-08-12 09:36:57'),
(706, 'App\\Models\\User', 8, 'auth_token', '80a03e6b38461898e94a6fc3116444d037d0c387e6e5db3895952f4c907d35ba', '[\"*\"]', NULL, NULL, '2024-08-12 09:37:23', '2024-08-12 09:37:23'),
(707, 'App\\Models\\User', 8, 'auth_token', '6664e82d38f94b6777ac2b72bc6e1c84421c4f60f420ef97ac4cbe11e1490fb7', '[\"*\"]', NULL, NULL, '2024-08-12 09:38:13', '2024-08-12 09:38:13'),
(708, 'App\\Models\\User', 8, 'auth_token', '25e2c94627969a37fa9b321415dfc2340cf16fedfcbc0e5b2503162b4da22d83', '[\"*\"]', NULL, NULL, '2024-08-12 09:38:44', '2024-08-12 09:38:44'),
(709, 'App\\Models\\User', 8, 'auth_token', '0f767b5f6c1c740c0321477daf54a1fbabb7225a39bd9a6f41ff92795f7799f8', '[\"*\"]', NULL, NULL, '2024-08-12 10:20:53', '2024-08-12 10:20:53'),
(710, 'App\\Models\\User', 8, 'auth_token', '835c48fd0a72d15f35d1b8be9426995e17bcd562d84e5aba1eb7a56bc18127f6', '[\"*\"]', NULL, NULL, '2024-08-12 10:21:17', '2024-08-12 10:21:17'),
(711, 'App\\Models\\User', 102, 'auth_token', 'e1ae830fe0742dadef3839a91dd366713c05a8c867e6f891fef80dd13cdde8d4', '[\"*\"]', NULL, NULL, '2024-08-12 10:22:07', '2024-08-12 10:22:07'),
(712, 'App\\Models\\User', 8, 'auth_token', 'a5c99764645b8152ca806fcd40a56986269c42d9da703bb77b7be4d12eabfbd6', '[\"*\"]', NULL, NULL, '2024-08-12 15:27:21', '2024-08-12 15:27:21'),
(713, 'App\\Models\\User', 8, 'auth_token', 'ae662154dabd74d0d20f546e5f91a002ac9a93ce6a08a428b4881eacfe6e9bc6', '[\"*\"]', '2024-08-12 15:29:02', NULL, '2024-08-12 15:27:38', '2024-08-12 15:29:02'),
(714, 'App\\Models\\User', 8, 'auth_token', '15db4ae9c57f5fbffdb8cc9f9abef2e6eb1742545b21a34ec8bd72d165579441', '[\"*\"]', NULL, NULL, '2024-08-12 15:30:24', '2024-08-12 15:30:24'),
(715, 'App\\Models\\User', 8, 'auth_token', '1eaa324f0006c9a063d30ceeb851c948587a636f85d5145b084dc1926413292e', '[\"*\"]', '2024-08-12 15:31:54', NULL, '2024-08-12 15:30:44', '2024-08-12 15:31:54'),
(716, 'App\\Models\\User', 72, 'auth_token', '5caf832b3ecfbcc726cbd90700cbcdc271621cfec5ed576ee22ffe7ddc6efad7', '[\"*\"]', '2024-08-16 12:56:51', NULL, '2024-08-12 15:58:28', '2024-08-16 12:56:51'),
(717, 'App\\Models\\User', 8, 'auth_token', 'beab5ca9eb4fc2792cfeb8d859b24094e04524ea055656037ce55183c5fb4df9', '[\"*\"]', NULL, NULL, '2024-08-12 19:44:10', '2024-08-12 19:44:10'),
(718, 'App\\Models\\User', 8, 'auth_token', '2d5b7f1dc020357c1013cf3205bb5bbd621cbcd187542c712c597bda1c153755', '[\"*\"]', NULL, NULL, '2024-08-12 19:44:20', '2024-08-12 19:44:20'),
(719, 'App\\Models\\User', 8, 'auth_token', '879e679954c2768ef9e1343a8c5deecfe32bd4f0a6193f5a8780861637b9de63', '[\"*\"]', NULL, NULL, '2024-08-12 19:44:42', '2024-08-12 19:44:42'),
(720, 'App\\Models\\User', 8, 'auth_token', '90e511891a21c42f6b0adbc8fafec1514fb38b469c51684edbe56787c48b4a0c', '[\"*\"]', NULL, NULL, '2024-08-12 19:45:00', '2024-08-12 19:45:00'),
(721, 'App\\Models\\User', 8, 'auth_token', '7c90eff84c878fb8de38b9f41d6f675d03defa102ba20d958889a2674a8b0fbf', '[\"*\"]', NULL, NULL, '2024-08-12 19:45:51', '2024-08-12 19:45:51'),
(722, 'App\\Models\\User', 8, 'auth_token', 'a26d4b147b3786636936211f303781f530538e3687dbae3504617955e99f1af7', '[\"*\"]', NULL, NULL, '2024-08-12 19:46:05', '2024-08-12 19:46:05'),
(723, 'App\\Models\\User', 8, 'auth_token', 'eaeacdddba6ea725dc38135e1f5525433d0affa6f0e431f0efdbc229e9d906bf', '[\"*\"]', NULL, NULL, '2024-08-12 19:46:47', '2024-08-12 19:46:47'),
(724, 'App\\Models\\User', 8, 'auth_token', 'edbe177544b1bcede8c74bae3006f876f092799742ca179dea05cccae1d936c9', '[\"*\"]', NULL, NULL, '2024-08-12 19:53:01', '2024-08-12 19:53:01'),
(725, 'App\\Models\\User', 72, 'auth_token', '232ecedaa59f4da7cfdca9c8adeb39eeb5efddbc1b59ad7956176191cc734358', '[\"*\"]', '2024-08-13 13:25:53', NULL, '2024-08-13 06:16:18', '2024-08-13 13:25:53'),
(726, 'App\\Models\\User', 72, 'auth_token', '67ecd0fc8fc89f4900b16ecc6d57fb5ba420df5678115cfac46b4a3ebe00f4d8', '[\"*\"]', '2024-08-20 06:05:28', NULL, '2024-08-13 13:26:10', '2024-08-20 06:05:28'),
(727, 'App\\Models\\User', 8, 'auth_token', '800e9c3c3c0f9431efca7fef17e2553a2f865468ecb0492c847cf2119736ef51', '[\"*\"]', NULL, NULL, '2024-08-13 16:23:32', '2024-08-13 16:23:32'),
(728, 'App\\Models\\User', 8, 'auth_token', '5809d0229a03a099b02d4b7e6d223ddbc6d1d3df88ad29d7213b6e00ff046fa2', '[\"*\"]', NULL, NULL, '2024-08-13 16:25:46', '2024-08-13 16:25:46'),
(729, 'App\\Models\\User', 8, 'auth_token', '158967734ffa7ca51a66487efe12f26f905e2b6da1902e084ef2f50f4af20759', '[\"*\"]', '2024-08-14 16:49:21', NULL, '2024-08-14 16:48:47', '2024-08-14 16:49:21'),
(730, 'App\\Models\\User', 8, 'auth_token', '2ce208ba020576c576a4ae51f972734be16cefd8cd7f69b37120f6aed971d7d6', '[\"*\"]', NULL, NULL, '2024-08-14 16:49:52', '2024-08-14 16:49:52'),
(731, 'App\\Models\\User', 8, 'auth_token', '3c2ffd606ef7286757343c990b748a084e0d4dabfc14a824aa03dab6de545b8f', '[\"*\"]', '2024-08-14 16:53:17', NULL, '2024-08-14 16:50:37', '2024-08-14 16:53:17'),
(732, 'App\\Models\\User', 72, 'auth_token', 'f5af1ad3ddacef6cf419af4943b1d137452dd81dcc7d90a5b343bfd5249cf3ec', '[\"*\"]', '2024-08-17 06:12:51', NULL, '2024-08-16 12:57:06', '2024-08-17 06:12:51'),
(733, 'App\\Models\\User', 72, 'auth_token', '35e4fa95fde6fc5c856e00be05713309d84755bd64afa4feac50706ec2ef8938', '[\"*\"]', '2024-08-17 06:19:04', NULL, '2024-08-17 06:16:02', '2024-08-17 06:19:04'),
(734, 'App\\Models\\User', 72, 'auth_token', '356f4754e7a0ba5278a1cb9947b4ac72a386990102d45a8393ab33d02cadc620', '[\"*\"]', '2024-08-17 12:46:54', NULL, '2024-08-17 06:23:57', '2024-08-17 12:46:54'),
(735, 'App\\Models\\User', 72, 'auth_token', 'b6bb9447b25ac6c9c8ebcd44857be09ccd62596f9ff922abfcd6006be3d8ef4f', '[\"*\"]', '2024-08-17 07:20:44', NULL, '2024-08-17 07:20:30', '2024-08-17 07:20:44'),
(736, 'App\\Models\\User', 72, 'auth_token', '90f077de45bd77fcb234aeb1cd670cad0415ad045df854cee95e4e8a657ad9e9', '[\"*\"]', '2024-08-17 11:30:18', NULL, '2024-08-17 11:26:50', '2024-08-17 11:30:18'),
(737, 'App\\Models\\User', 72, 'auth_token', '225c20fe81e025845e31fcf254b5a50e7d349de5ffd05c74742d466344293d12', '[\"*\"]', '2024-08-17 12:32:27', NULL, '2024-08-17 12:03:48', '2024-08-17 12:32:27'),
(738, 'App\\Models\\User', 72, 'auth_token', 'ae20bb45ea59c7c8625f612de56c69253339d9281a50854deeff7fa0baa5badd', '[\"*\"]', '2024-08-17 16:41:26', NULL, '2024-08-17 12:44:42', '2024-08-17 16:41:26'),
(739, 'App\\Models\\User', 8, 'auth_token', '36c6a65c5a3e4b03c7f041da5704657cf177e56411e656526235884d2c919ae4', '[\"*\"]', NULL, NULL, '2024-08-17 14:33:45', '2024-08-17 14:33:45'),
(740, 'App\\Models\\User', 8, 'auth_token', 'dfed70261fc9862d4b18be5bc6cb338fed0667211fa3588018fd70484a43a9d5', '[\"*\"]', NULL, NULL, '2024-08-17 16:15:05', '2024-08-17 16:15:05'),
(741, 'App\\Models\\User', 8, 'auth_token', '7c3748e10aa35b51e5ba7649fd01216ae0c0a0428c091cb17e82cf159da320c2', '[\"*\"]', NULL, NULL, '2024-08-17 16:15:07', '2024-08-17 16:15:07'),
(742, 'App\\Models\\User', 8, 'auth_token', '50f040eb5c2393a377bb8d51e0f5fbd7157c739f031b09fe62984b5ff0cee7f7', '[\"*\"]', NULL, NULL, '2024-08-17 16:15:08', '2024-08-17 16:15:08'),
(743, 'App\\Models\\User', 8, 'auth_token', 'cc952ad4b595dc537fdd329b9702301db40b3939247cfe8cc929aba2953a07b7', '[\"*\"]', NULL, NULL, '2024-08-17 16:15:09', '2024-08-17 16:15:09'),
(744, 'App\\Models\\User', 8, 'auth_token', '11bd951641ce1fa82af7247664a36007ca9c54ee3f6f67f8719b253ef3a7c8a3', '[\"*\"]', NULL, NULL, '2024-08-17 16:15:10', '2024-08-17 16:15:10'),
(745, 'App\\Models\\User', 8, 'auth_token', '4214b3aa9796aed3ff8042da9885f45ccc203f802b997d626be7355c602d36e9', '[\"*\"]', NULL, NULL, '2024-08-17 16:15:58', '2024-08-17 16:15:58'),
(746, 'App\\Models\\User', 8, 'auth_token', '8f1baa63ef9c1fbb70f59c37a3f3b3fff66c569a513fc504536f303a4a257318', '[\"*\"]', NULL, NULL, '2024-08-17 16:15:59', '2024-08-17 16:15:59'),
(747, 'App\\Models\\User', 8, 'auth_token', 'bb2ad5aaec80ab83d29329f57dddd4b092c2c624238d60669236c48c4acfe24c', '[\"*\"]', NULL, NULL, '2024-08-17 16:16:16', '2024-08-17 16:16:16'),
(748, 'App\\Models\\User', 8, 'auth_token', '05853fffe3328846d3f1cd421fc8468542de4bf90e81f53ef760ff310bf51273', '[\"*\"]', NULL, NULL, '2024-08-17 16:16:26', '2024-08-17 16:16:26'),
(749, 'App\\Models\\User', 8, 'auth_token', '437187821d4e3395568ee87dbb73780d35815ccebdc4f77b5bb7fc6eb60af94e', '[\"*\"]', NULL, NULL, '2024-08-17 16:16:28', '2024-08-17 16:16:28'),
(750, 'App\\Models\\User', 8, 'auth_token', 'c3bece6b0265b1c9fceaf44ca8074b34f8f65b990b8a621b721ed289922a1b87', '[\"*\"]', NULL, NULL, '2024-08-17 16:16:37', '2024-08-17 16:16:37'),
(751, 'App\\Models\\User', 8, 'auth_token', '4502f818113bd8d66828101e825c5b3528fb9904869337bf96fef3e1454814c1', '[\"*\"]', NULL, NULL, '2024-08-17 16:19:26', '2024-08-17 16:19:26'),
(752, 'App\\Models\\User', 104, 'auth_token', '21af51eb13578bdd7c0aff90b3fe779e30289998b87cea3fe92f97c383c34cf9', '[\"*\"]', NULL, NULL, '2024-08-17 16:21:15', '2024-08-17 16:21:15'),
(753, 'App\\Models\\User', 105, 'auth_token', '4676ee05c36d23faff9597f721bf90939447eb11aec737b8b7b33598048f6661', '[\"*\"]', NULL, NULL, '2024-08-17 16:23:12', '2024-08-17 16:23:12'),
(754, 'App\\Models\\User', 104, 'auth_token', '6cd41f3e0392ee2b741159547a2279de94b42465f17cf59431ff4dd583e51505', '[\"*\"]', NULL, NULL, '2024-08-17 16:23:37', '2024-08-17 16:23:37'),
(755, 'App\\Models\\User', 8, 'auth_token', 'c82156c23384ab6cd35dc0671f9b58144a2909eab017181eadc8a42fd90bccb6', '[\"*\"]', NULL, NULL, '2024-08-17 16:24:14', '2024-08-17 16:24:14'),
(756, 'App\\Models\\User', 106, 'auth_token', 'cd373d6056ed432902c4b4a8c9288de868650a9432c7b1e6395978fed60b3471', '[\"*\"]', NULL, NULL, '2024-08-17 16:24:28', '2024-08-17 16:24:28'),
(757, 'App\\Models\\User', 105, 'auth_token', '7738b06af31795f253910f40783ea381bf823be2553fafc10665566466b32aaf', '[\"*\"]', NULL, NULL, '2024-08-17 16:25:13', '2024-08-17 16:25:13'),
(758, 'App\\Models\\User', 104, 'auth_token', '5a7f0759efe0c2c9f5cfbb6d72485656e4c8f9949509d8baa4349ad312bf29a8', '[\"*\"]', NULL, NULL, '2024-08-17 16:25:43', '2024-08-17 16:25:43'),
(759, 'App\\Models\\User', 70, 'auth_token', '10ecfe99f033fa1204793ab3e2081815d501c1050eaaa977c4185d2aa2430325', '[\"*\"]', NULL, NULL, '2024-08-17 16:41:44', '2024-08-17 16:41:44'),
(760, 'App\\Models\\User', 104, 'auth_token', '8d63dc3b82d3f69195d35d6497832a57c6262255d53c5fdccb77ac9676d44478', '[\"*\"]', NULL, NULL, '2024-08-18 05:05:34', '2024-08-18 05:05:34'),
(761, 'App\\Models\\User', 104, 'auth_token', 'db395cd94db016defb2fb0decb7a7e2101a6a0bb8d10364b5f49832e1144feb8', '[\"*\"]', NULL, NULL, '2024-08-18 05:43:21', '2024-08-18 05:43:21'),
(762, 'App\\Models\\User', 105, 'auth_token', '1ed714605fbb709693a43cd0093f65a6facb56e8cef1d142b10350b07fa03e99', '[\"*\"]', NULL, NULL, '2024-08-18 08:11:52', '2024-08-18 08:11:52'),
(763, 'App\\Models\\User', 72, 'auth_token', 'ce83bca97e210fc476275bd2375f7cb97df0c2bb4441710f84069955b5a4b6b1', '[\"*\"]', NULL, NULL, '2024-08-18 13:50:20', '2024-08-18 13:50:20'),
(764, 'App\\Models\\User', 72, 'auth_token', '2be1a396ee69edfd6317f00a4a257aa651ec51b4620ad5b2f7f60d17a5593e44', '[\"*\"]', '2024-08-18 13:50:48', NULL, '2024-08-18 13:50:38', '2024-08-18 13:50:48');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(765, 'App\\Models\\User', 72, 'auth_token', '1968e2e004e85f5cd145d3eeb4a76c244973e457af280ebe4f68e34478264ff8', '[\"*\"]', '2024-08-18 16:54:18', NULL, '2024-08-18 16:53:27', '2024-08-18 16:54:18'),
(766, 'App\\Models\\User', 72, 'auth_token', 'dde313511cc1bb8841d8a2eeaa8f9dcf3bd60702c9815951a0c69f205b75f089', '[\"*\"]', '2024-08-18 16:58:55', NULL, '2024-08-18 16:57:55', '2024-08-18 16:58:55'),
(767, 'App\\Models\\User', 72, 'auth_token', '9dc172d81eacc24aab13024be310c71ff542a877b9d3128c42aee71badfd14a0', '[\"*\"]', '2024-08-20 04:57:55', NULL, '2024-08-20 04:57:36', '2024-08-20 04:57:55'),
(768, 'App\\Models\\User', 72, 'auth_token', '3c104862491a4eadb9a621db378567fb1a73821e203a373f44200f96e75362c4', '[\"*\"]', '2024-08-20 05:15:33', NULL, '2024-08-20 05:11:48', '2024-08-20 05:15:33'),
(769, 'App\\Models\\User', 72, 'auth_token', 'c21771725a60801a62b5710937f140746cfe4ea4207b8c5ecb9cc299bc085307', '[\"*\"]', '2024-08-20 10:04:12', NULL, '2024-08-20 06:36:02', '2024-08-20 10:04:12'),
(770, 'App\\Models\\User', 64, 'auth_token', '2ef9c030dc492f1ce01fb2bad83ec3ace19071975c507fab31c4cdefe80bafd4', '[\"*\"]', '2024-08-20 10:04:54', NULL, '2024-08-20 10:04:26', '2024-08-20 10:04:54'),
(771, 'App\\Models\\User', 72, 'auth_token', '52535fade107be1f4f324cac83779d159449bac0cf8c8fff7a9b0e72029bec59', '[\"*\"]', '2024-08-20 10:34:29', NULL, '2024-08-20 10:33:28', '2024-08-20 10:34:29'),
(772, 'App\\Models\\User', 64, 'auth_token', 'e82779a649c81570bdce407e92e8f2ec22e64c681516af011eae77e30d5365ef', '[\"*\"]', '2024-08-29 05:22:07', NULL, '2024-08-20 10:36:11', '2024-08-29 05:22:07'),
(773, 'App\\Models\\User', 72, 'auth_token', '9f706e27560e6a864da55486d41260aee6285c63e09a6f9bfb639a2a4b72cc26', '[\"*\"]', '2024-09-11 11:45:27', NULL, '2024-08-20 11:15:32', '2024-09-11 11:45:27'),
(774, 'App\\Models\\User', 72, 'auth_token', 'a0105335ed81048c723c615b471590e7978331d72cb3ad360f80e0cce42b1036', '[\"*\"]', '2024-08-20 11:30:29', NULL, '2024-08-20 11:17:05', '2024-08-20 11:30:29'),
(775, 'App\\Models\\User', 64, 'auth_token', 'bfdd3547390ec080b4188b7e60c42db4dc91f4b1ba0322d708a6dd3f9b7d55d9', '[\"*\"]', '2024-08-22 06:17:21', NULL, '2024-08-20 11:30:43', '2024-08-22 06:17:21'),
(776, 'App\\Models\\User', 72, 'auth_token', '1f0069ae6cff61bf1de8054c3b5b124ac316458d3dc88a72e5fa1a7ac83ed0f5', '[\"*\"]', '2024-08-25 13:03:50', NULL, '2024-08-21 07:31:58', '2024-08-25 13:03:50'),
(777, 'App\\Models\\User', 72, 'auth_token', '3214324d65081f72b15cec147a6e2264d7168d1232b6dff93866a1da2d6632be', '[\"*\"]', '2024-08-22 12:36:46', NULL, '2024-08-21 09:02:15', '2024-08-22 12:36:46'),
(778, 'App\\Models\\User', 64, 'auth_token', 'cc3808ce2120c1d6780692dbc7ec2a8aae6852f5500410b03640b5d636f63b35', '[\"*\"]', '2024-08-22 06:25:53', NULL, '2024-08-22 06:24:35', '2024-08-22 06:25:53'),
(779, 'App\\Models\\User', 64, 'auth_token', 'de91a35b3b03804fdc06a0c6078600f59f650dccf180ff3f4c8dc425feb1003b', '[\"*\"]', '2024-08-23 06:39:06', NULL, '2024-08-22 06:55:40', '2024-08-23 06:39:06'),
(780, 'App\\Models\\User', 72, 'auth_token', '79c798afc2f827f6c30d1e21ea3f8301dc57c52b9929aba78264521caa0feaad', '[\"*\"]', '2024-08-23 07:12:59', NULL, '2024-08-22 12:37:02', '2024-08-23 07:12:59'),
(781, 'App\\Models\\User', 72, 'auth_token', '2dd4315a85f8ba01c352e182c1a108db16cf76c9c16901e1d45aa0e7a8038a32', '[\"*\"]', '2024-08-22 20:31:05', NULL, '2024-08-22 20:30:42', '2024-08-22 20:31:05'),
(782, 'App\\Models\\User', 72, 'auth_token', '4ddc327e2411fd40d15169274ee6df8c6c4eef28e95df6685266e9991217bd6b', '[\"*\"]', '2024-08-22 20:37:56', NULL, '2024-08-22 20:35:12', '2024-08-22 20:37:56'),
(783, 'App\\Models\\User', 72, 'auth_token', '2281a8212502afe7ad9a883949b3e73415bf54d6bd2c72d43beda5f128e61f70', '[\"*\"]', NULL, NULL, '2024-08-22 20:40:30', '2024-08-22 20:40:30'),
(784, 'App\\Models\\User', 72, 'auth_token', 'c261fbbd9f6d7eb451aee87f89446fec107e979109b50e041051f507b1d7cc5c', '[\"*\"]', '2024-08-22 20:43:13', NULL, '2024-08-22 20:41:12', '2024-08-22 20:43:13'),
(785, 'App\\Models\\User', 72, 'auth_token', 'd4eea528dca1d586f4225f9adc6b4319924f047a5ce90b59d25158910b9e97c9', '[\"*\"]', '2024-08-22 20:49:10', NULL, '2024-08-22 20:47:13', '2024-08-22 20:49:10'),
(786, 'App\\Models\\User', 72, 'auth_token', '65992751cf4547038662ce2a0c328781283136f5f148bd21a31191f0d2fe4e01', '[\"*\"]', '2024-08-23 06:40:07', NULL, '2024-08-23 06:39:26', '2024-08-23 06:40:07'),
(787, 'App\\Models\\User', 64, 'auth_token', '92e2ef5909498bfa9367a20ebfcf72e1bdf0cc96f4788d344a857a3cd431d66c', '[\"*\"]', '2024-08-23 06:45:39', NULL, '2024-08-23 06:41:48', '2024-08-23 06:45:39'),
(788, 'App\\Models\\User', 72, 'auth_token', '4e330cc2150821bdc343dc49a7fcb22ecb935e04c98ada27ef9c8a09fc7245de', '[\"*\"]', '2024-08-23 06:58:14', NULL, '2024-08-23 06:46:57', '2024-08-23 06:58:14'),
(789, 'App\\Models\\User', 64, 'auth_token', '227201320f9f5f319be620c6f8b14ef8b8b0fae8f8d493fba854221401fc2a46', '[\"*\"]', '2024-08-23 09:04:33', NULL, '2024-08-23 06:58:29', '2024-08-23 09:04:33'),
(790, 'App\\Models\\User', 64, 'auth_token', '358aa3a0e7a2ea03c76700cd3561be98380f5e0af18bf9b61a94826c03db7992', '[\"*\"]', '2024-08-23 09:24:14', NULL, '2024-08-23 07:13:16', '2024-08-23 09:24:14'),
(791, 'App\\Models\\User', 72, 'auth_token', '782069f478a9ab200aa58368049c8dee2e01d054c9ba77ac8f65eb7643d53c63', '[\"*\"]', '2024-08-23 09:05:26', NULL, '2024-08-23 09:04:57', '2024-08-23 09:05:26'),
(792, 'App\\Models\\User', 64, 'auth_token', '03dbcb6a16bb822f50601f189c6535952dc76394a463c9ca2f0ba11b41122028', '[\"*\"]', '2024-08-24 12:01:44', NULL, '2024-08-23 09:06:52', '2024-08-24 12:01:44'),
(793, 'App\\Models\\User', 72, 'auth_token', '523e199453fb4c6ae421dbef9b77d7abe8c6b97a14b6e9a12321e42c7776e8fa', '[\"*\"]', '2024-08-26 11:16:10', NULL, '2024-08-23 09:24:37', '2024-08-26 11:16:10'),
(794, 'App\\Models\\User', 72, 'auth_token', '3fee5d2af37ac9c979f52cedbb65640f5548116d72f3c807ba575c3054b2d698', '[\"*\"]', '2024-08-23 13:46:49', NULL, '2024-08-23 13:44:57', '2024-08-23 13:46:49'),
(795, 'App\\Models\\User', 72, 'auth_token', '9b003cf3e716f710b641ce39d7d5fae8ea03c68589bced09c88b8cb6908b0e60', '[\"*\"]', '2024-08-23 13:50:14', NULL, '2024-08-23 13:48:58', '2024-08-23 13:50:14'),
(796, 'App\\Models\\User', 72, 'auth_token', 'c5db39b82d2e6cfa632d561b4da6be2d21159d55a6b3e5e917a0927b859c825e', '[\"*\"]', '2024-08-23 13:56:17', NULL, '2024-08-23 13:54:51', '2024-08-23 13:56:17'),
(797, 'App\\Models\\User', 72, 'auth_token', '2e218d3458c38058664aba96b88807b04eb228bf6b924b5d6c5b993df084c5dd', '[\"*\"]', '2024-08-23 14:00:57', NULL, '2024-08-23 14:00:44', '2024-08-23 14:00:57'),
(798, 'App\\Models\\User', 72, 'auth_token', 'ed7b0d51a6acecced66366f4f394333972148dcf285fd4b60e630ac94b8f957e', '[\"*\"]', '2024-08-23 15:10:41', NULL, '2024-08-23 15:08:45', '2024-08-23 15:10:41'),
(799, 'App\\Models\\User', 72, 'auth_token', 'a94bb413c40ba7495da2555a829cc5d935f456613e9143091e5167ca3b8f6c0d', '[\"*\"]', '2024-08-23 15:21:33', NULL, '2024-08-23 15:19:25', '2024-08-23 15:21:33'),
(800, 'App\\Models\\User', 72, 'auth_token', 'eb8b284100c7039ca43c7aba015c3a6c70af6c87f118ae193a2f7dcc25590930', '[\"*\"]', '2024-08-23 15:24:17', NULL, '2024-08-23 15:22:28', '2024-08-23 15:24:17'),
(801, 'App\\Models\\User', 72, 'auth_token', '711bf5b30bf670c5566ed7306d7b29f6f53ec0d0247aea483627f543800bc70d', '[\"*\"]', '2024-08-26 05:09:49', NULL, '2024-08-24 12:08:50', '2024-08-26 05:09:49'),
(802, 'App\\Models\\User', 72, 'auth_token', '871bd7040de813c739665b2bcd555b688803ea26e23abdcd5535a3d83f5d7199', '[\"*\"]', '2024-08-24 12:24:22', NULL, '2024-08-24 12:21:46', '2024-08-24 12:24:22'),
(803, 'App\\Models\\User', 72, 'auth_token', 'c6f23d453a5225faf4cf642303ab154b55e8060c36c6eaab6c0e01bf7c71bd10', '[\"*\"]', '2024-08-24 12:36:05', NULL, '2024-08-24 12:33:35', '2024-08-24 12:36:05'),
(804, 'App\\Models\\User', 72, 'auth_token', '9650094bd2febc7eb4f7191a74e9dd8a4f759c72f16d9b41a037fb1f7ccb4321', '[\"*\"]', '2024-08-25 18:17:16', NULL, '2024-08-25 18:14:57', '2024-08-25 18:17:16'),
(805, 'App\\Models\\User', 72, 'auth_token', 'de30564372a1664df99c6b042cddbedec343b2c94842c8cc17a74c57ab398996', '[\"*\"]', '2024-08-26 05:21:48', NULL, '2024-08-26 05:18:29', '2024-08-26 05:21:48'),
(806, 'App\\Models\\User', 80, 'auth_token', 'c21f40048feea3a2842e6e1afb816a98cd8116d1d069eb04e1c2d8fb92b7cd48', '[\"*\"]', NULL, NULL, '2024-08-26 06:39:21', '2024-08-26 06:39:21'),
(807, 'App\\Models\\User', 80, 'auth_token', '6d3feeab9b73f92f8597a8b80ab620dc3048c4be2b41ba8fd73ad05a78b489d7', '[\"*\"]', NULL, NULL, '2024-08-26 06:39:36', '2024-08-26 06:39:36'),
(809, 'App\\Models\\User', 64, 'auth_token', '478aeabe9523c81848320388247595c35ee7a4059923ac5b8b46b563c54fad6a', '[\"*\"]', '2024-08-26 06:44:06', NULL, '2024-08-26 06:43:42', '2024-08-26 06:44:06'),
(810, 'App\\Models\\User', 64, 'auth_token', '4fd870e1b224833d308f707fcb35d79d1df70ccd5a69e92d15f5c9ce43bea67c', '[\"*\"]', '2024-08-27 12:30:58', NULL, '2024-08-26 09:03:24', '2024-08-27 12:30:58'),
(811, 'App\\Models\\User', 72, 'auth_token', '6427f61243fd0a645b1a6db86ce0fe94d2d087848561d672b1b4c1866454b76e', '[\"*\"]', '2024-08-30 10:59:40', NULL, '2024-08-26 11:16:41', '2024-08-30 10:59:40'),
(812, 'App\\Models\\User', 72, 'auth_token', 'a43741a3459c131e7f32c0c60977eececded6fff915479858737cf5804a6bbda', '[\"*\"]', '2024-08-26 18:43:09', NULL, '2024-08-26 18:40:54', '2024-08-26 18:43:09'),
(813, 'App\\Models\\User', 64, 'auth_token', '2987983ca6f031f5d5ddfa6edf30e89ebb2a74169c08c62ecb7b0ada99d251eb', '[\"*\"]', NULL, NULL, '2024-08-27 09:42:39', '2024-08-27 09:42:39'),
(814, 'App\\Models\\User', 64, 'auth_token', '03e4850962f4b4e76dce89e9632075bca3c9cc42180e357037b251330b7397be', '[\"*\"]', NULL, NULL, '2024-08-27 09:42:54', '2024-08-27 09:42:54'),
(815, 'App\\Models\\User', 64, 'auth_token', '4021611006fe67dfca0e28dd8c97701ed3795adfc3853bce95d10d2a97e972ee', '[\"*\"]', NULL, NULL, '2024-08-27 09:43:30', '2024-08-27 09:43:30'),
(816, 'App\\Models\\User', 64, 'auth_token', '177c77c28123313e20e3237f3dafe5dc27786fb8ff827cb2efa1f32ad7bc2172', '[\"*\"]', NULL, NULL, '2024-08-27 09:46:21', '2024-08-27 09:46:21'),
(817, 'App\\Models\\User', 64, 'auth_token', 'd33577b9e258f528658d297f87c488556d5350a9810cc8818cd66d2694f2b767', '[\"*\"]', NULL, NULL, '2024-08-27 09:48:07', '2024-08-27 09:48:07'),
(818, 'App\\Models\\User', 64, 'auth_token', 'bb271e7d8ab44d635c0d1b93be64945e6041521b8420bc5a95a89233bd4d42f4', '[\"*\"]', NULL, NULL, '2024-08-27 09:53:48', '2024-08-27 09:53:48'),
(819, 'App\\Models\\User', 64, 'auth_token', '2dde81f87ce6abce8e960413ba6bfc2ea6db4955d34eec10d92303e6f151e46f', '[\"*\"]', NULL, NULL, '2024-08-27 09:54:21', '2024-08-27 09:54:21'),
(820, 'App\\Models\\User', 64, 'auth_token', '3f5b222f1d63ec03c6a1e01e1fa0f849535dd623935be777d76891a3768301ba', '[\"*\"]', NULL, NULL, '2024-08-27 09:54:57', '2024-08-27 09:54:57'),
(821, 'App\\Models\\User', 64, 'auth_token', 'c506af2ca26f71e270cfada8b5a0dd6b7797691f5a8cc5574731cf5c27f71d91', '[\"*\"]', '2024-08-27 10:14:58', NULL, '2024-08-27 09:57:35', '2024-08-27 10:14:58'),
(822, 'App\\Models\\User', 72, 'auth_token', '9c4441591b998858260d6846e36f8073d2ae8b663e2ad88ee9d06ce6f8aea563', '[\"*\"]', '2024-09-07 09:08:03', NULL, '2024-08-27 10:15:30', '2024-09-07 09:08:03'),
(823, 'App\\Models\\User', 64, 'auth_token', '2ce79b7f4d401eb3f4a6c5072c3d5d31a19bbe7079b5e34fb6b7879aeb342a18', '[\"*\"]', '2024-08-27 13:08:34', NULL, '2024-08-27 12:31:22', '2024-08-27 13:08:34'),
(824, 'App\\Models\\User', 72, 'auth_token', 'b26f038fd005d5fc0af3d62f346fc387a92ef945eecceb3af1b7fe89841cd8a3', '[\"*\"]', '2024-08-29 05:17:31', NULL, '2024-08-27 13:08:51', '2024-08-29 05:17:31'),
(825, 'App\\Models\\User', 72, 'auth_token', '775055057a3393556ca1d69958eaf605d15e02ddf682eafff768262ae5ae4e03', '[\"*\"]', '2024-08-29 06:00:29', NULL, '2024-08-29 05:59:49', '2024-08-29 06:00:29'),
(826, 'App\\Models\\User', 72, 'auth_token', 'c094794cd7e143eabd362e0141d2bae51f28949531621ebb9e6a3d6b2b72d5a9', '[\"*\"]', '2024-08-30 07:24:35', NULL, '2024-08-29 13:14:40', '2024-08-30 07:24:35'),
(827, 'App\\Models\\User', 72, 'auth_token', 'fc81427151b62f553855df559400401300ca4ba9c1d4e81bae9e5d1bafd9b784', '[\"*\"]', '2024-09-02 09:41:52', NULL, '2024-08-30 07:31:01', '2024-09-02 09:41:52'),
(828, 'App\\Models\\User', 72, 'auth_token', 'cf99a6ef2db9cde9b20e4c1c6c89352dfe085c8bacfa33d6d5e982265016cbf2', '[\"*\"]', NULL, NULL, '2024-08-30 11:01:56', '2024-08-30 11:01:56'),
(829, 'App\\Models\\User', 72, 'auth_token', 'd76147926a91a92281f9ef20a0b98d0d8c2ced92263c7a6ad89980842ad7f121', '[\"*\"]', '2024-09-04 11:50:16', NULL, '2024-08-30 11:02:13', '2024-09-04 11:50:16'),
(830, 'App\\Models\\User', 72, 'auth_token', '0515cf7491b19e7a2efb4a50f07c228447745240485c8aada54b88dd08ae264b', '[\"*\"]', '2024-08-30 13:11:54', NULL, '2024-08-30 13:10:41', '2024-08-30 13:11:54'),
(831, 'App\\Models\\User', 72, 'auth_token', 'd507a186fb88bd6888ec4153fcd10cf34224c3db64da3a6a7c09bbd411c6c5cd', '[\"*\"]', '2024-08-30 13:38:20', NULL, '2024-08-30 13:37:23', '2024-08-30 13:38:20'),
(832, 'App\\Models\\User', 72, 'auth_token', '8a8253bb52e4dad22f4d56a84a1514861279ad8e914efe2d90fbec5efbdb8f22', '[\"*\"]', '2024-08-30 17:15:54', NULL, '2024-08-30 15:22:52', '2024-08-30 17:15:54'),
(833, 'App\\Models\\User', 72, 'auth_token', 'da6313791cc73496574524c2af3f5405f822b45119022e9828a0ef162deb7745', '[\"*\"]', '2024-08-31 06:03:31', NULL, '2024-08-31 05:29:58', '2024-08-31 06:03:31'),
(834, 'App\\Models\\User', 72, 'auth_token', 'b6f9110a187405150046436ca0ba77f1894c4f48aa350c35cdd25bfd09bf7b6a', '[\"*\"]', '2024-08-31 06:22:07', NULL, '2024-08-31 06:16:26', '2024-08-31 06:22:07'),
(835, 'App\\Models\\User', 72, 'auth_token', '9108d3980316e91d4981cd6d1bb5af1bdaaa1b2922d3b78258583314657b2d4d', '[\"*\"]', '2024-08-31 06:26:00', NULL, '2024-08-31 06:22:22', '2024-08-31 06:26:00'),
(836, 'App\\Models\\User', 72, 'auth_token', '09f0ee553014b7da3d441de63f35092ffd5efb835be6d5c68412d71f30e15bda', '[\"*\"]', '2024-08-31 06:27:07', NULL, '2024-08-31 06:26:16', '2024-08-31 06:27:07'),
(837, 'App\\Models\\User', 72, 'auth_token', '86a76e49d9c529e412e90fa92065f149c7bb151f082dd6c0defe88ebdd0b5cc7', '[\"*\"]', '2024-08-31 13:42:31', NULL, '2024-08-31 06:27:19', '2024-08-31 13:42:31'),
(838, 'App\\Models\\User', 72, 'auth_token', '6d4e89dcec1e02bd01ea489df0c0ed24acb090a04f255e4f6f6f136fa2ae0166', '[\"*\"]', '2024-08-31 07:28:42', NULL, '2024-08-31 07:26:06', '2024-08-31 07:28:42'),
(839, 'App\\Models\\User', 72, 'auth_token', 'fc408403d9e438f8d5eefcbf073f5634b3f37b8033b9ea2043ac42c178b8c688', '[\"*\"]', '2024-09-03 04:26:35', NULL, '2024-08-31 13:42:46', '2024-09-03 04:26:35'),
(840, 'App\\Models\\User', 72, 'auth_token', '69225ac3e4d8cc0ea58e8e74a3a2b188a5cb74a5338384a17dff33237606fd31', '[\"*\"]', '2024-09-03 13:22:29', NULL, '2024-09-02 09:47:06', '2024-09-03 13:22:29'),
(841, 'App\\Models\\User', 64, 'auth_token', 'd9123de058cde3f90fc90b205b61ac1319f3740108541f40e31d92108173d83d', '[\"*\"]', '2024-09-06 14:02:52', NULL, '2024-09-03 04:26:55', '2024-09-06 14:02:52'),
(842, 'App\\Models\\User', 72, 'auth_token', '29b74b5867ab56f43f79700aeb2c3447da6f8c509038a72288a308a201c6300c', '[\"*\"]', '2024-09-03 11:08:45', NULL, '2024-09-03 10:45:46', '2024-09-03 11:08:45'),
(843, 'App\\Models\\User', 72, 'auth_token', '6187101dad84f69736cb2575344172d5907146394c2071b9d36374eed8ec747e', '[\"*\"]', '2024-09-05 07:32:42', NULL, '2024-09-04 11:05:57', '2024-09-05 07:32:42'),
(844, 'App\\Models\\User', 72, 'auth_token', '5c4e3c870a28afdf12ab49d420e4a792ef52c6aac627bc29182a8a516fab1fca', '[\"*\"]', '2024-09-05 07:38:01', NULL, '2024-09-04 12:05:25', '2024-09-05 07:38:01'),
(845, 'App\\Models\\User', 72, 'auth_token', 'd52bff2c85609791eec709c701a8a91188250178125d9bb03ab2e112bf782d72', '[\"*\"]', '2024-09-04 12:37:40', NULL, '2024-09-04 12:11:00', '2024-09-04 12:37:40'),
(846, 'App\\Models\\User', 72, 'auth_token', '7be5de15240a8ac50add941b6380913766b1001978ef8f9ab274e7658cb9af11', '[\"*\"]', '2024-09-09 07:30:49', NULL, '2024-09-05 04:18:33', '2024-09-09 07:30:49'),
(847, 'App\\Models\\User', 9, 'auth_token', '3e85834db084097ad3d335db2f0343d6d745318d9c52a39545052e6ae39fd5ad', '[\"*\"]', NULL, NULL, '2024-09-05 07:18:11', '2024-09-05 07:18:11'),
(848, 'App\\Models\\User', 107, 'auth_token', '4e2e3bb000700280a5b9bcdc43683f2c20d51ffd8b39cb8257dd367f77058c5c', '[\"*\"]', NULL, NULL, '2024-09-05 07:19:44', '2024-09-05 07:19:44'),
(849, 'App\\Models\\User', 107, 'auth_token', 'a8248123be8e0f2edc28cdfbdb4e80c2a1579ed11e433c14344f98360d6a8f17', '[\"*\"]', NULL, NULL, '2024-09-05 07:34:05', '2024-09-05 07:34:05'),
(850, 'App\\Models\\User', 107, 'auth_token', '698b19468e26731bd1339d39deebe4686beb2283c4407e24c3e1721c92b6dca2', '[\"*\"]', NULL, NULL, '2024-09-05 07:38:24', '2024-09-05 07:38:24'),
(851, 'App\\Models\\User', 70, 'auth_token', '89136cd8ff211f9a03f5e8ff78e38967e5134c4a5ab02018d6349a43d3bfa9a7', '[\"*\"]', NULL, NULL, '2024-09-05 07:42:07', '2024-09-05 07:42:07'),
(852, 'App\\Models\\User', 72, 'auth_token', '18052f38354c4e0a34d48a185db5eaf4b864f42754ecb9b942494eb493952c5c', '[\"*\"]', NULL, NULL, '2024-09-05 07:42:51', '2024-09-05 07:42:51'),
(853, 'App\\Models\\User', 63, 'auth_token', 'fc9000d3a002601a537ff9ccb9a08936a6b280556b489d5b0ff4c6b344d5008f', '[\"*\"]', '2024-09-05 07:54:15', NULL, '2024-09-05 07:54:09', '2024-09-05 07:54:15'),
(854, 'App\\Models\\User', 107, 'auth_token', 'e8300179cd647fddb35b3aec0016c14c6dfa09341f567572b2d7e32cff26db5e', '[\"*\"]', NULL, NULL, '2024-09-05 07:59:08', '2024-09-05 07:59:08'),
(855, 'App\\Models\\User', 72, 'auth_token', '3c71410aec6ae0d3d6e2116ff90077999093b6697f7d195938f2258f8b4ac8f7', '[\"*\"]', '2024-09-05 10:18:04', NULL, '2024-09-05 09:53:27', '2024-09-05 10:18:04'),
(856, 'App\\Models\\User', 104, 'auth_token', 'f58270553ceaf8b1e124cee018226b3d6baad75f83d0cc9477d6e6435dfb56f4', '[\"*\"]', NULL, NULL, '2024-09-05 10:49:15', '2024-09-05 10:49:15'),
(857, 'App\\Models\\User', 104, 'auth_token', 'dafa6b0b551d18771e35becea6be34eef89f60e1a3819360e286cbe3604d8035', '[\"*\"]', NULL, NULL, '2024-09-05 10:50:09', '2024-09-05 10:50:09'),
(858, 'App\\Models\\User', 104, 'auth_token', 'ea665fdb016cf7f0ef4247c0e611d0a1f9275806728c3737d90150e506ce7258', '[\"*\"]', NULL, NULL, '2024-09-05 10:50:19', '2024-09-05 10:50:19'),
(859, 'App\\Models\\User', 104, 'auth_token', '6955561596ef0c539d6f492037c02d5d6a0953ddef05324aabd3d278f650c214', '[\"*\"]', NULL, NULL, '2024-09-05 10:52:19', '2024-09-05 10:52:19'),
(860, 'App\\Models\\User', 104, 'auth_token', 'd877fdaaaac836c0039df28316b301398bb60aad2e06508cc9345c9f99c0c3e9', '[\"*\"]', NULL, NULL, '2024-09-05 10:55:05', '2024-09-05 10:55:05'),
(861, 'App\\Models\\User', 104, 'auth_token', '5af96454a1f1c5bf2dc3cc73d72e7c32b7d32475e2be07425dde570267ed2939', '[\"*\"]', '2024-09-05 11:52:53', NULL, '2024-09-05 11:05:49', '2024-09-05 11:52:53'),
(862, 'App\\Models\\User', 72, 'auth_token', '9c85ccdb3dbe66da9864486c113b924c52f699c44e66c69e15bee4b63403060a', '[\"*\"]', '2024-09-06 07:09:20', NULL, '2024-09-05 11:53:09', '2024-09-06 07:09:20'),
(863, 'App\\Models\\User', 72, 'auth_token', '6d760dea6306bb7877cf14e544fb4509b71914f90d1269bbce27a10272d23ff2', '[\"*\"]', '2024-09-05 15:22:56', NULL, '2024-09-05 15:22:39', '2024-09-05 15:22:56'),
(864, 'App\\Models\\User', 8, 'auth_token', 'af9c53160a01383b01e4fb3791a8d02344fb2c2b9adb64eedb520d040c9b6316', '[\"*\"]', '2024-09-07 16:27:59', NULL, '2024-09-06 05:40:04', '2024-09-07 16:27:59'),
(865, 'App\\Models\\User', 93, 'auth_token', '75a8e77e66f2d9bae0de37823097906e1cf8f96daaf7f1d198695163369cb735', '[\"*\"]', NULL, NULL, '2024-09-06 06:07:22', '2024-09-06 06:07:22'),
(867, 'App\\Models\\User', 64, 'auth_token', '25c253acd1e90b6a8337129fd6d014383621e64c06a6c74e5de07f2a34d68739', '[\"*\"]', NULL, NULL, '2024-09-06 07:19:45', '2024-09-06 07:19:45'),
(868, 'App\\Models\\User', 81, 'auth_token', 'ebf9ed9a22b8d5f69b8bc9d63e3160774b843aad8aa9369075c84ffa0eae8d80', '[\"*\"]', NULL, NULL, '2024-09-06 07:20:01', '2024-09-06 07:20:01'),
(869, 'App\\Models\\User', 81, 'auth_token', '6e10efdda098a1404bbb60e6ec8069fc278335816eebefa0159f15391b5cd605', '[\"*\"]', NULL, NULL, '2024-09-06 07:22:32', '2024-09-06 07:22:32'),
(870, 'App\\Models\\User', 81, 'auth_token', '40441c7b063b43e093af162d21d7966674e6a6a8a9700fc33afe54295e2ea077', '[\"*\"]', '2024-09-07 05:39:20', NULL, '2024-09-06 07:31:06', '2024-09-07 05:39:20'),
(871, 'App\\Models\\User', 72, 'auth_token', '9537d07403119fc1dfa7cfb15d96c832aaa84cc7e7b8da7390a316fc438857c4', '[\"*\"]', '2024-09-16 04:53:37', NULL, '2024-09-06 11:04:56', '2024-09-16 04:53:37'),
(872, 'App\\Models\\User', 64, 'auth_token', '4343f87fe3937347e6a0b77b18f96491e3769efcd6e968d8bfd8aa5f3f91acde', '[\"*\"]', NULL, NULL, '2024-09-07 05:39:41', '2024-09-07 05:39:41'),
(873, 'App\\Models\\User', 108, 'auth_token', '4c4f2eef33c2afdd8ff0501959a7a692ec79ac57afb975b64543780f44763640', '[\"*\"]', NULL, NULL, '2024-09-07 05:40:48', '2024-09-07 05:40:48'),
(874, 'App\\Models\\User', 108, 'auth_token', '7080f87c6add2bb23019a57d7dd01e2642abd10bbab88cf6c3d11975d9415d8c', '[\"*\"]', NULL, NULL, '2024-09-07 07:45:15', '2024-09-07 07:45:15'),
(875, 'App\\Models\\User', 72, 'auth_token', '5b0dbf4ddcbed4b22e7302c27399ade857ce8706a5cc05a01b2b10b596ff2837', '[\"*\"]', '2024-09-07 08:54:09', NULL, '2024-09-07 07:58:38', '2024-09-07 08:54:09'),
(876, 'App\\Models\\User', 108, 'auth_token', 'b9709875e7cd04e06ed065dbb2b43ff729fa14942dd98f19df4e7b7e2e8cc5d2', '[\"*\"]', NULL, NULL, '2024-09-07 08:54:26', '2024-09-07 08:54:26'),
(877, 'App\\Models\\User', 108, 'auth_token', '798caf01061cbae6101b4e57a66fed9960d09a7b9efe11c60314b7a467a39914', '[\"*\"]', NULL, NULL, '2024-09-07 08:57:59', '2024-09-07 08:57:59'),
(878, 'App\\Models\\User', 108, 'auth_token', 'f70090f5cc52c7b1adc56fc5256f261e51187129fd2a469ffae96c26b014f7a7', '[\"*\"]', NULL, NULL, '2024-09-07 08:59:20', '2024-09-07 08:59:20'),
(879, 'App\\Models\\User', 108, 'auth_token', '5f0178830aadc82a612124af2f173b50d71d7418d588ba016f49a8ca501dc8f1', '[\"*\"]', '2024-09-07 12:44:51', NULL, '2024-09-07 09:00:02', '2024-09-07 12:44:51'),
(880, 'App\\Models\\User', 72, 'auth_token', '68108c585114639c9fd90bab90e803aad13f6be075a5395ecc14b26a0d8873ed', '[\"*\"]', '2024-09-07 16:35:54', NULL, '2024-09-07 16:24:33', '2024-09-07 16:35:54'),
(881, 'App\\Models\\User', 8, 'auth_token', '402862df25418276699b4a467b3ce7a8116dd0ecbd43f0f3c5adbffc8d3bb245', '[\"*\"]', '2024-09-13 14:26:54', NULL, '2024-09-07 16:29:00', '2024-09-13 14:26:54'),
(882, 'App\\Models\\User', 72, 'auth_token', '4ed32d6f69dd5ef7dbf2d391c63880b18bd3596254119427462fe683685c9821', '[\"*\"]', '2024-09-11 06:54:52', NULL, '2024-09-09 07:35:03', '2024-09-11 06:54:52'),
(883, 'App\\Models\\User', 72, 'auth_token', '2062610ecba616e31157691a2f16ac70771e64405c240b41c8252063cdb6b7ae', '[\"*\"]', '2024-09-10 08:58:45', NULL, '2024-09-10 08:57:25', '2024-09-10 08:58:45'),
(884, 'App\\Models\\User', 109, 'auth_token', '5d65e255486e2063913f61df2a803481723bb966c916f2b0b106b8b94b1b313e', '[\"*\"]', NULL, NULL, '2024-09-10 09:10:13', '2024-09-10 09:10:13'),
(885, 'App\\Models\\User', 109, 'auth_token', 'c575d7f7631ca4d10110f7fbf2a08fd9c5e76880b4ef41fe21a94fc2fb591aba', '[\"*\"]', '2024-09-10 09:55:58', NULL, '2024-09-10 09:12:18', '2024-09-10 09:55:58'),
(886, 'App\\Models\\User', 110, 'auth_token', '562ce2e74df3ca9afd453d6db6c1111f488b06a1682a8564820f63ab83e95bad', '[\"*\"]', NULL, NULL, '2024-09-10 09:56:17', '2024-09-10 09:56:17'),
(887, 'App\\Models\\User', 111, 'auth_token', 'f1218143b5eb82a399315bf1f9f5f0dbb5ef7e74bce2a5d26c548973d3265e52', '[\"*\"]', NULL, NULL, '2024-09-11 07:04:36', '2024-09-11 07:04:36'),
(888, 'App\\Models\\User', 111, 'auth_token', '1f10595ac36d1be7a8b6ca5644a5674c8857473f613cb8dab3a59fe021910216', '[\"*\"]', NULL, NULL, '2024-09-11 07:09:53', '2024-09-11 07:09:53'),
(889, 'App\\Models\\User', 72, 'auth_token', '3f0538efffd0d458b7f7057f9a230a41f88ebf775bacaab4020adcef02e3ea0e', '[\"*\"]', '2024-09-11 07:32:20', NULL, '2024-09-11 07:10:50', '2024-09-11 07:32:20'),
(890, 'App\\Models\\User', 111, 'auth_token', 'b818a6c99cf337b20e90691c0918b255e4abd1e62b0e6aec0d6049c352758820', '[\"*\"]', NULL, NULL, '2024-09-11 07:32:35', '2024-09-11 07:32:35'),
(891, 'App\\Models\\User', 111, 'auth_token', 'f6001fe836a436bf4d4263b30a05aa2768f638d6df6c74e80db7ac1d36f6654c', '[\"*\"]', NULL, NULL, '2024-09-11 07:33:20', '2024-09-11 07:33:20'),
(892, 'App\\Models\\User', 111, 'auth_token', '43308c95c87a1d06e5db4522dfb7f240be676881aa76b06ebd5d422109a4cb4f', '[\"*\"]', NULL, NULL, '2024-09-11 07:33:29', '2024-09-11 07:33:29'),
(893, 'App\\Models\\User', 111, 'auth_token', '3bba45f4b4957d0b2565bfb5c55191c4b637442b7c55f3a72a84e94bcb6b8eb0', '[\"*\"]', NULL, NULL, '2024-09-11 07:34:33', '2024-09-11 07:34:33'),
(894, 'App\\Models\\User', 111, 'auth_token', '003d9fa2d53994bc46fb913b0bf540266077ffc75f5da2a791e4813fe6b5655a', '[\"*\"]', NULL, NULL, '2024-09-11 07:34:42', '2024-09-11 07:34:42'),
(895, 'App\\Models\\User', 112, 'auth_token', '687e8659b0efbd1822c36b073fc2b1a9b533266d30602ac16fdf0c7e2a79b8c5', '[\"*\"]', NULL, NULL, '2024-09-11 07:35:22', '2024-09-11 07:35:22'),
(896, 'App\\Models\\User', 72, 'auth_token', '3383b4cf521af0656fd4e5c2a0c23ce0b4d5c490526a3b08b2f4929769706a04', '[\"*\"]', '2024-09-11 08:52:47', NULL, '2024-09-11 08:51:21', '2024-09-11 08:52:47'),
(897, 'App\\Models\\User', 112, 'auth_token', '016c9c84b0a0ab4944eaca1e42f69fa3fde886d1af2848c348f1fd338a4094c0', '[\"*\"]', NULL, NULL, '2024-09-11 08:53:32', '2024-09-11 08:53:32'),
(898, 'App\\Models\\User', 72, 'auth_token', 'dc7364b27d2473f6cfb3f1b8064155f3663e947dc486a32f9091c41c33bc01da', '[\"*\"]', '2024-09-13 10:40:12', NULL, '2024-09-11 08:54:49', '2024-09-13 10:40:12'),
(899, 'App\\Models\\User', 113, 'auth_token', 'a935d2914cdbe97c19f452cb1d05a3b539001ebc2ecdb15b6ca9ff9d58bc2fdc', '[\"*\"]', NULL, NULL, '2024-09-12 05:18:52', '2024-09-12 05:18:52'),
(900, 'App\\Models\\User', 72, 'auth_token', '9f209c3d1e43215bcb00d60768a3cee3ae538e776ef22379c763cca8fe42044e', '[\"*\"]', '2024-09-12 11:22:49', NULL, '2024-09-12 11:22:26', '2024-09-12 11:22:49'),
(901, 'App\\Models\\User', 72, 'auth_token', 'fe410586a79915238b7760e652f74e70297c4bf93155975db56f32c237461c2d', '[\"*\"]', NULL, NULL, '2024-09-12 11:26:32', '2024-09-12 11:26:32'),
(902, 'App\\Models\\User', 72, 'auth_token', '726a523854e49d7c6c12f379a25318e56f7587fe7a6ed7802147ad1fcf491063', '[\"*\"]', NULL, NULL, '2024-09-12 11:32:21', '2024-09-12 11:32:21'),
(903, 'App\\Models\\User', 72, 'auth_token', '52fa7d1b23553cdd2e0507a1a6a97d7c8f1fe325b6fbcb79cf4d9c1c110e6636', '[\"*\"]', NULL, NULL, '2024-09-12 11:33:32', '2024-09-12 11:33:32'),
(904, 'App\\Models\\User', 72, 'auth_token', 'be03fbf9b6069e7e5bb5d75f086782708c21c5abbce0fbc132211e69a281af27', '[\"*\"]', NULL, NULL, '2024-09-12 11:33:46', '2024-09-12 11:33:46'),
(905, 'App\\Models\\User', 72, 'auth_token', 'b6d2173147df593cf154300053a3a7f41522eb0c44749c9942886d92963f7b49', '[\"*\"]', NULL, NULL, '2024-09-12 11:35:45', '2024-09-12 11:35:45'),
(906, 'App\\Models\\User', 72, 'auth_token', '88313e9d8c0cc5b8b0c68e7507cf0434add8c2e26c56361672ab5889703d801e', '[\"*\"]', NULL, NULL, '2024-09-12 11:35:55', '2024-09-12 11:35:55'),
(907, 'App\\Models\\User', 72, 'auth_token', 'e9a9cdece80dc653e4572a5374ce494736b7aea7f593cd604c58e4234165da9c', '[\"*\"]', NULL, NULL, '2024-09-12 11:37:52', '2024-09-12 11:37:52'),
(908, 'App\\Models\\User', 72, 'auth_token', 'e0117fd5f8403078a64ba2b611ae10debe22d62badcbbfa6bb5f6bef48b8a4dd', '[\"*\"]', NULL, NULL, '2024-09-12 11:38:02', '2024-09-12 11:38:02'),
(909, 'App\\Models\\User', 72, 'auth_token', '5111dac9bcc235c38f386af5d78b1b0e407d19341fe40e4b80becdfa2e14d6a8', '[\"*\"]', NULL, NULL, '2024-09-12 11:39:11', '2024-09-12 11:39:11'),
(910, 'App\\Models\\User', 72, 'auth_token', 'd68c2a75d882680beec892a95dfd03e5e611b36553458f7234c11abcdadb86fa', '[\"*\"]', NULL, NULL, '2024-09-12 11:39:24', '2024-09-12 11:39:24'),
(911, 'App\\Models\\User', 72, 'auth_token', '4f5a7ba6aaee52bb3859dd176f7d4ee41b7f1381ac169dce238448cecb493ebb', '[\"*\"]', NULL, NULL, '2024-09-12 11:39:37', '2024-09-12 11:39:37'),
(912, 'App\\Models\\User', 114, 'auth_token', '5be8999c94a577663f0ec1490e8ecb61cbcf87b6aef9a5885aecc6053162cc4e', '[\"*\"]', NULL, NULL, '2024-09-12 11:41:49', '2024-09-12 11:41:49'),
(913, 'App\\Models\\User', 114, 'auth_token', 'b6af7f5d0b1d9134c2572db058a6cd2fe6700f30e0eb8ffc005e2e62403a2714', '[\"*\"]', NULL, NULL, '2024-09-12 11:42:06', '2024-09-12 11:42:06'),
(914, 'App\\Models\\User', 114, 'auth_token', 'e8dbc84834c878faa9527d0a40b3b064ee8e5b9c16ca9a821f3a02280f2e34bb', '[\"*\"]', NULL, NULL, '2024-09-13 04:45:58', '2024-09-13 04:45:58'),
(915, 'App\\Models\\User', 114, 'auth_token', '967653acda48426b3f7bfee05da531d3a34cfac97717367f4d5cc6858bb5b44e', '[\"*\"]', NULL, NULL, '2024-09-13 04:46:19', '2024-09-13 04:46:19'),
(916, 'App\\Models\\User', 72, 'auth_token', 'a4e2c970880903417decd4b57a20b82602a1487df2709c6c893b59205bfedaba', '[\"*\"]', NULL, NULL, '2024-09-13 04:47:38', '2024-09-13 04:47:38'),
(917, 'App\\Models\\User', 72, 'auth_token', 'fa60f5f2048d8b4f4a4609019e823e15ba848e1856931dda2167072aa1f476e2', '[\"*\"]', '2024-09-13 07:38:36', NULL, '2024-09-13 04:47:50', '2024-09-13 07:38:36'),
(918, 'App\\Models\\User', 72, 'auth_token', '7a78632024ec705b2f45999c9a9a74c4e911256f266e899ad2d9e46326b546d1', '[\"*\"]', '2024-09-13 09:58:28', NULL, '2024-09-13 07:41:28', '2024-09-13 09:58:28'),
(919, 'App\\Models\\User', 72, 'auth_token', '8e032ef68933ef43957afb0d379dd4ae8eaf0945e8ce5506aa31df5d02d35190', '[\"*\"]', NULL, NULL, '2024-09-13 10:05:43', '2024-09-13 10:05:43'),
(920, 'App\\Models\\User', 72, 'auth_token', '47e424efb87fd96c2d1d35e58a0b275d8488ff66f5cc4492ca42b0c6eac312ed', '[\"*\"]', NULL, NULL, '2024-09-13 10:05:54', '2024-09-13 10:05:54'),
(921, 'App\\Models\\User', 109, 'auth_token', 'a9adb03d0598f005521e34c22bc7b2e141befc39d5b492bfb1bf6a76f9eb3556', '[\"*\"]', NULL, NULL, '2024-09-13 10:25:31', '2024-09-13 10:25:31'),
(922, 'App\\Models\\User', 115, 'auth_token', 'bb12c2c8bf5bd2bfa56784f28b477b9b595bd407bd7750f37152978adb746494', '[\"*\"]', NULL, NULL, '2024-09-13 10:27:35', '2024-09-13 10:27:35'),
(923, 'App\\Models\\User', 115, 'auth_token', 'bf71de722b58c763272316e3c6f70d4ddb9f762fbdcefb161671242a12f23877', '[\"*\"]', NULL, NULL, '2024-09-13 10:28:00', '2024-09-13 10:28:00'),
(924, 'App\\Models\\User', 115, 'auth_token', '500e49aaffad8453c00f3455494f230389a2a4a15e9cddcd99d1db293fb23254', '[\"*\"]', NULL, NULL, '2024-09-13 10:28:38', '2024-09-13 10:28:38'),
(925, 'App\\Models\\User', 116, 'auth_token', '7751488a0e77dc90e9dc7f860c6d0ebca29adcf412699094dc35539ef444c1f8', '[\"*\"]', NULL, NULL, '2024-09-13 10:29:03', '2024-09-13 10:29:03'),
(926, 'App\\Models\\User', 117, 'auth_token', '5481154a83a8411aa50f5c01e78b9d2908690e44b4242b4be75cbc093010fc7d', '[\"*\"]', NULL, NULL, '2024-09-13 10:30:24', '2024-09-13 10:30:24'),
(927, 'App\\Models\\User', 118, 'auth_token', '6c380b0dbbca70546b6d9fd45ccb334268889632618184530395ae4818e0a432', '[\"*\"]', NULL, NULL, '2024-09-13 10:30:57', '2024-09-13 10:30:57'),
(928, 'App\\Models\\User', 118, 'auth_token', 'eae91f4a9b2216027fad3356119ddbbde50f988fd4f1d110c46cbc48ea67ba64', '[\"*\"]', NULL, NULL, '2024-09-13 10:33:31', '2024-09-13 10:33:31'),
(929, 'App\\Models\\User', 119, 'auth_token', 'f7d2630264545dbc1e08abd3c7f89eccfea7d2a7c41e9a417376ac67ddeb1961', '[\"*\"]', NULL, NULL, '2024-09-13 10:33:54', '2024-09-13 10:33:54'),
(930, 'App\\Models\\User', 120, 'auth_token', '52640318d3612b8b82b41e4228d9ed56f7f3dae8c832e16e6e9a661ca5935350', '[\"*\"]', NULL, NULL, '2024-09-13 10:34:27', '2024-09-13 10:34:27'),
(931, 'App\\Models\\User', 120, 'auth_token', 'e38b0b85cfb0a8a3f0eab2f558fefd0a825942f303b2c1a8297844dc5ed9eec2', '[\"*\"]', NULL, NULL, '2024-09-13 10:35:09', '2024-09-13 10:35:09'),
(932, 'App\\Models\\User', 72, 'auth_token', 'ecf4720b26ded82bacba88319182a8ddbabde4eb9d5d8b54d00f6d562e350302', '[\"*\"]', NULL, NULL, '2024-09-13 10:35:54', '2024-09-13 10:35:54'),
(933, 'App\\Models\\User', 120, 'auth_token', '5204ef4537dbdc82eb89a67fcb34c210f6d7b559b183a66f12aa8e10bfe6d9c3', '[\"*\"]', NULL, NULL, '2024-09-13 10:36:28', '2024-09-13 10:36:28'),
(935, 'App\\Models\\User', 111, 'auth_token', '4cf4e384f37748d82eacf51339e0b792d8b0e79cd65014cefeeea33123afc263', '[\"*\"]', NULL, NULL, '2024-09-13 10:40:31', '2024-09-13 10:40:31'),
(936, 'App\\Models\\User', 121, 'auth_token', 'c1a97fb17cfb33726f206d232b22cfb2f1f1b6094be10933369a10ca57a85cc2', '[\"*\"]', NULL, NULL, '2024-09-13 10:43:33', '2024-09-13 10:43:33'),
(937, 'App\\Models\\User', 120, 'auth_token', '583f68ad6ec7a130c9581461e961703658d5e67db289c9928355859a81b90f60', '[\"*\"]', NULL, NULL, '2024-09-13 10:44:15', '2024-09-13 10:44:15'),
(938, 'App\\Models\\User', 119, 'auth_token', '43222b87fb9dd71d1744c3b3995aca4cf5e4521d51d4643060ececc7b1b7b866', '[\"*\"]', NULL, NULL, '2024-09-13 10:45:11', '2024-09-13 10:45:11'),
(939, 'App\\Models\\User', 119, 'auth_token', 'd003d19301c45ecf1becf730513c29e20996d507d40645d47f53ae991575e098', '[\"*\"]', NULL, NULL, '2024-09-13 10:45:48', '2024-09-13 10:45:48'),
(940, 'App\\Models\\User', 119, 'auth_token', 'c20150c29dd790cc565d523efbaf216dd2dcd7765e24f58ff28117c5e1148864', '[\"*\"]', '2024-09-16 04:41:35', NULL, '2024-09-13 10:47:47', '2024-09-16 04:41:35'),
(941, 'App\\Models\\User', 72, 'auth_token', '5722211dd70715adc73bad73b20e4f47d5083cfc0c7e425ab4d25302118394b7', '[\"*\"]', '2024-09-13 11:28:13', NULL, '2024-09-13 11:09:06', '2024-09-13 11:28:13'),
(942, 'App\\Models\\User', 81, 'auth_token', '6430acca0f556458ccbf2f1fa21980fca301cddf38438a8395e3927898e8ac09', '[\"*\"]', '2024-09-16 04:55:01', NULL, '2024-09-13 11:28:32', '2024-09-16 04:55:01'),
(945, 'App\\Models\\User', 124, 'auth_token', '32f98d438e82cb62c78d6c936049919ee29d728c7bb2f2274fea37bef18ec2e3', '[\"*\"]', NULL, NULL, '2024-09-13 12:43:45', '2024-09-13 12:43:45'),
(947, 'App\\Models\\User', 8, 'auth_token', 'ebc1d99e1714aeb6258e92d41e45cf15fab8fbb8c05a23d669dfb0bd3a430de7', '[\"*\"]', NULL, NULL, '2024-09-13 14:28:53', '2024-09-13 14:28:53'),
(948, 'App\\Models\\User', 8, 'auth_token', 'ada046365ef51f2c900386f6e5843dba1362656546f548e68920036e26a6deea', '[\"*\"]', NULL, NULL, '2024-09-13 14:29:43', '2024-09-13 14:29:43'),
(949, 'App\\Models\\User', 70, 'auth_token', '1f7fbf6ccb9adbecec81395118e5f3e6977e9943563fffa1f594c7bb034816a3', '[\"*\"]', NULL, NULL, '2024-09-13 14:55:00', '2024-09-13 14:55:00'),
(950, 'App\\Models\\User', 8, 'auth_token', '3a11c38e2d8faa4ce81701e6aada8b1805ee41c5335e47105f787ce3d9d5c4b4', '[\"*\"]', NULL, NULL, '2024-09-13 16:02:13', '2024-09-13 16:02:13'),
(951, 'App\\Models\\User', 8, 'auth_token', '9c760bedc3772b3d92db7a92c9e862c74aeba71af059c11653b4b0501a97ecb0', '[\"*\"]', NULL, NULL, '2024-09-13 16:02:21', '2024-09-13 16:02:21'),
(952, 'App\\Models\\User', 8, 'auth_token', '8a658748b9317d88b7882666e37799ebe586701fc6ce02c775aad928eb10d584', '[\"*\"]', NULL, NULL, '2024-09-13 16:54:20', '2024-09-13 16:54:20'),
(953, 'App\\Models\\User', 8, 'auth_token', '3046e6df17b24334e213f4128697a792ed5e16ab5c7983179f38f90e5592c506', '[\"*\"]', NULL, NULL, '2024-09-13 17:46:48', '2024-09-13 17:46:48'),
(954, 'App\\Models\\User', 72, 'auth_token', '0c72de85dea5f040686ea124a6f1178320e0d89aded37fb72d9fcea439d26e2b', '[\"*\"]', NULL, NULL, '2024-09-13 19:02:33', '2024-09-13 19:02:33'),
(955, 'App\\Models\\User', 8, 'auth_token', '8818b71a27323be5ad4fe64d10e48aa3cc1f0e8b3bbb8fa05a59bf01252ba5af', '[\"*\"]', NULL, NULL, '2024-09-13 19:05:50', '2024-09-13 19:05:50'),
(956, 'App\\Models\\User', 126, 'auth_token', '37484583d9e87baa3447fb0bd04a7526e446db3967abde31e9a0e334792a8510', '[\"*\"]', NULL, NULL, '2024-09-13 19:06:02', '2024-09-13 19:06:02'),
(957, 'App\\Models\\User', 63, 'auth_token', 'ca7dc8d27790e8aec533ce4ba9278a95ac636facdf231f6f2bb14bef3066b708', '[\"*\"]', '2024-09-16 05:10:49', NULL, '2024-09-16 05:10:43', '2024-09-16 05:10:49'),
(958, 'App\\Models\\User', 72, 'auth_token', 'b5889c902cf01ae611a914155fbc6956a74edfe36e74ad9f2cad309ff47c19b8', '[\"*\"]', '2024-09-16 09:50:41', NULL, '2024-09-16 05:18:01', '2024-09-16 09:50:41'),
(959, 'App\\Models\\User', 72, 'auth_token', '88fb89f182c1675bf92e1ca997c57ece2b0e37cc72a9efe6902e06415960dc2a', '[\"*\"]', NULL, NULL, '2024-09-16 05:34:36', '2024-09-16 05:34:36'),
(960, 'App\\Models\\User', 72, 'auth_token', '20f5c9e21366bdba581c2e28e2d0916a1de8f601734870d88e3ab056da2b50e1', '[\"*\"]', NULL, NULL, '2024-09-16 05:34:47', '2024-09-16 05:34:47'),
(961, 'App\\Models\\User', 72, 'auth_token', 'e70299e49dd1afac5cace14bd846114470cfad780e82f2950967e7deebf87c5f', '[\"*\"]', NULL, NULL, '2024-09-16 05:36:43', '2024-09-16 05:36:43'),
(962, 'App\\Models\\User', 72, 'auth_token', '919a07417aeb0dafd4fe18ab9f3f1b2a0ce41af3e98e41a0310d5c83ff0f4ddb', '[\"*\"]', NULL, NULL, '2024-09-16 05:38:05', '2024-09-16 05:38:05'),
(963, 'App\\Models\\User', 72, 'auth_token', 'ac4ef83bfee648321469ef8beb6e74d8449c9d766622f7e2cc3c637cc6c2d222', '[\"*\"]', NULL, NULL, '2024-09-16 05:38:52', '2024-09-16 05:38:52'),
(964, 'App\\Models\\User', 72, 'auth_token', '6476d48a0b94014050daff6e703c626bdd4e55996de5289948085fab50c107a8', '[\"*\"]', NULL, NULL, '2024-09-16 05:41:21', '2024-09-16 05:41:21'),
(965, 'App\\Models\\User', 72, 'auth_token', 'f9ac7bd1a1239be97471bd23582e5fccb4d8fd2dd63537d6b47f4dd5f266754e', '[\"*\"]', NULL, NULL, '2024-09-16 05:42:08', '2024-09-16 05:42:08'),
(966, 'App\\Models\\User', 72, 'auth_token', 'f70124b4618b7d0f0e09c1671e53e88da432a3172ab8455a85ac965e750003e9', '[\"*\"]', NULL, NULL, '2024-09-16 05:42:47', '2024-09-16 05:42:47'),
(967, 'App\\Models\\User', 72, 'auth_token', '5582abc6e911adac9ef31d60ec4ef4480dfeb33afee3d64d74c9de3e7ca7c55a', '[\"*\"]', NULL, NULL, '2024-09-16 05:55:35', '2024-09-16 05:55:35'),
(968, 'App\\Models\\User', 114, 'auth_token', 'f6b97aacc81c13253d05ae74022d149600caf3917be4ca99e4b9031c3ebc5f52', '[\"*\"]', NULL, NULL, '2024-09-16 05:55:55', '2024-09-16 05:55:55'),
(969, 'App\\Models\\User', 72, 'auth_token', '5ded3d32931edca78a9d255863436b33495bc2838edf7625ddd8c6e25e118972', '[\"*\"]', NULL, NULL, '2024-09-16 06:13:05', '2024-09-16 06:13:05'),
(970, 'App\\Models\\User', 72, 'auth_token', '1b83f70863158ec8dd0a53f5761b80c313c86a0f74d2269a42ab2413e37c4ec1', '[\"*\"]', NULL, NULL, '2024-09-16 06:17:59', '2024-09-16 06:17:59'),
(971, 'App\\Models\\User', 72, 'auth_token', '374b09a70d3996fda9143794559ccd50365df335cff8cc9eb31f32c1537266e4', '[\"*\"]', NULL, NULL, '2024-09-16 06:20:23', '2024-09-16 06:20:23'),
(972, 'App\\Models\\User', 72, 'auth_token', 'de187dd20fbc9faadd2181e21f34eb473a363f19ea5d59c0140785fbd41f352a', '[\"*\"]', NULL, NULL, '2024-09-16 06:22:20', '2024-09-16 06:22:20'),
(973, 'App\\Models\\User', 72, 'auth_token', 'd27a564842d15d9bcf003f859eccd2134e256f65db8dd12f197f593874324b95', '[\"*\"]', NULL, NULL, '2024-09-16 06:22:39', '2024-09-16 06:22:39'),
(974, 'App\\Models\\User', 72, 'auth_token', '7f21f16a37de6d288ad9420c0ba54ec69ae700d8b07f7353a6976644253c393f', '[\"*\"]', NULL, NULL, '2024-09-16 06:23:23', '2024-09-16 06:23:23'),
(975, 'App\\Models\\User', 72, 'auth_token', '57f52b8b77cf322f893a1a247ceedb49812f85f40c63567aef4ada49a6f5736b', '[\"*\"]', NULL, NULL, '2024-09-16 06:23:26', '2024-09-16 06:23:26'),
(976, 'App\\Models\\User', 72, 'auth_token', '1f3082ed762282cda33e8dceb6e691281319737410f5dac5e9a9a03123b8ac85', '[\"*\"]', NULL, NULL, '2024-09-16 06:28:47', '2024-09-16 06:28:47'),
(977, 'App\\Models\\User', 72, 'auth_token', '7a14d5582a46ee935c9fa83cc0125ec440ed284514f525a1f2d0bd0eb5ceb0df', '[\"*\"]', NULL, NULL, '2024-09-16 06:31:15', '2024-09-16 06:31:15'),
(978, 'App\\Models\\User', 72, 'auth_token', '015b164f3f3f5cb32769a8a4fb9154d99a6a9932090993404baa551bb797113a', '[\"*\"]', NULL, NULL, '2024-09-16 06:32:58', '2024-09-16 06:32:58'),
(979, 'App\\Models\\User', 72, 'auth_token', '659111a64a096c51ce7fbf90a3f3831dd5cd6c58d8f0921f4a1a3552f67d885c', '[\"*\"]', NULL, NULL, '2024-09-16 06:34:58', '2024-09-16 06:34:58'),
(980, 'App\\Models\\User', 72, 'auth_token', '1afdfaaee0488e3658d39d2b902965ecac8e2d88b4bf3a3b21319408aa99142e', '[\"*\"]', NULL, NULL, '2024-09-16 06:35:31', '2024-09-16 06:35:31'),
(981, 'App\\Models\\User', 72, 'auth_token', '28aff65eecebe80794ad26fd4bafd762301b078fd0912aeef3aa555b32cf988b', '[\"*\"]', NULL, NULL, '2024-09-16 06:42:18', '2024-09-16 06:42:18'),
(982, 'App\\Models\\User', 72, 'auth_token', 'c63a8c261309c6f93931d0299e1b5174876e7fc84302e119f9068ac0e8daa0af', '[\"*\"]', NULL, NULL, '2024-09-16 06:44:01', '2024-09-16 06:44:01'),
(983, 'App\\Models\\User', 72, 'auth_token', '79a23991d22a00579215d8864b4b6afdc91e03e98e30517e1d1635254de7f8c7', '[\"*\"]', NULL, NULL, '2024-09-16 06:44:40', '2024-09-16 06:44:40'),
(984, 'App\\Models\\User', 72, 'auth_token', 'fd86ec9e6ab241295e722ac4639a0965802d2c491f86f61cde47e69a577a7dad', '[\"*\"]', NULL, NULL, '2024-09-16 07:02:19', '2024-09-16 07:02:19'),
(985, 'App\\Models\\User', 72, 'auth_token', '9d4f46a4a6347877427c990b10a2d0b39364ed42f2ed15117faf7160965d5995', '[\"*\"]', NULL, NULL, '2024-09-16 07:27:23', '2024-09-16 07:27:23'),
(986, 'App\\Models\\User', 72, 'auth_token', '520f5bfa74559a9adf1000f733a3e60c114ffa50eb8dec4ce53f3fe81bf05ed2', '[\"*\"]', NULL, NULL, '2024-09-16 07:27:28', '2024-09-16 07:27:28'),
(987, 'App\\Models\\User', 72, 'auth_token', 'ecf2f8d538cfc4e23ac3f87a8cbcdede963fd9e6de05be727638c569e969e481', '[\"*\"]', NULL, NULL, '2024-09-16 07:35:24', '2024-09-16 07:35:24'),
(988, 'App\\Models\\User', 72, 'auth_token', '886805daec9d36a09c9d242ae9e6228cede974d49e327a2e7ff3478b3a30c880', '[\"*\"]', NULL, NULL, '2024-09-16 07:44:28', '2024-09-16 07:44:28'),
(989, 'App\\Models\\User', 72, 'auth_token', '2328d6a1bc3aec8c6fe3996cf96a5eb345546694303e2e50d9c08340c6f6c4df', '[\"*\"]', NULL, NULL, '2024-09-16 09:40:15', '2024-09-16 09:40:15'),
(990, 'App\\Models\\User', 72, 'auth_token', '0c6009f62e671137b12c3f3eea346acc10be297d87b83cd94c4a7e44859f1f18', '[\"*\"]', NULL, NULL, '2024-09-16 09:41:17', '2024-09-16 09:41:17'),
(991, 'App\\Models\\User', 114, 'auth_token', 'deaf6dcf982b8b050fbd2e33b6f6043973955f211c0de5c3c90c91be47f5d111', '[\"*\"]', NULL, NULL, '2024-09-16 09:41:48', '2024-09-16 09:41:48'),
(992, 'App\\Models\\User', 70, 'auth_token', 'b1c052913943398f09a00b2568847fd4e8d4cd95bc9bfc8bf7745b27c312454a', '[\"*\"]', NULL, NULL, '2024-09-16 09:47:53', '2024-09-16 09:47:53'),
(993, 'App\\Models\\User', 72, 'auth_token', 'c92095d86f18d8be8dab2f08dd1e6fc09566db2b66aa8b6d109dbce6693ffae3', '[\"*\"]', '2024-09-17 12:05:38', NULL, '2024-09-17 10:26:42', '2024-09-17 12:05:38'),
(994, 'App\\Models\\User', 8, 'auth_token', '40308f468bb00d89f07d141d8d88fddab01c9580849d86a1b97e5db7cf54ea67', '[\"*\"]', '2024-09-18 13:30:17', NULL, '2024-09-17 10:47:40', '2024-09-18 13:30:17'),
(995, 'App\\Models\\User', 130, 'auth_token', 'b3dc44b4c2f660333ecf0c4c6f647a4c0134757b4cfcce2b728acbc89a9cfd0d', '[\"*\"]', NULL, NULL, '2024-09-18 04:38:57', '2024-09-18 04:38:57'),
(996, 'App\\Models\\User', 130, 'auth_token', '7f9de859d0e7cbbec52c0149584dd6002996f30f4edf532eff3e53cd460e4c82', '[\"*\"]', '2024-09-18 13:30:25', NULL, '2024-09-18 04:40:11', '2024-09-18 13:30:25'),
(997, 'App\\Models\\User', 2, 'auth_token', '956fce72eb6f7d132d4e56fabf27ae930eaf4283bbc2ca8b6f947ce2df0ae42a', '[\"*\"]', NULL, NULL, '2024-09-18 05:10:28', '2024-09-18 05:10:28'),
(998, 'App\\Models\\User', 2, 'auth_token', '5a2e24a461efb93a2f77d89bae3c7e18b783d7f6f7ce295ad1bfdcb7bc60ac48', '[\"*\"]', NULL, NULL, '2024-09-18 05:15:40', '2024-09-18 05:15:40'),
(1001, 'App\\Models\\User', 2, 'auth_token', '4de6aa2aee02a8d1cb8d456bc5343906f4b1ed7f877e9f11c00e738c08225d34', '[\"*\"]', NULL, NULL, '2024-09-18 05:36:08', '2024-09-18 05:36:08'),
(1002, 'App\\Models\\User', 130, 'auth_token', '0ecdbe8c8c0cd1ba5838c3246edeeecbdd5e0d35c03f177b8ef1ab1cd850a7fa', '[\"*\"]', '2024-09-20 06:12:49', NULL, '2024-09-18 09:10:19', '2024-09-20 06:12:49'),
(1003, 'App\\Models\\User', 130, 'auth_token', 'bde4b1d923e92281e6c7f29fac5d76c087142ff46705ce2c4385a1edb04b116f', '[\"*\"]', '2024-09-20 13:08:56', NULL, '2024-09-18 09:37:40', '2024-09-20 13:08:56'),
(1004, 'App\\Models\\User', 2, 'auth_token', '579f9295649712f490020de7667a35722f84bcb70867d059e47de459e991b0e6', '[\"*\"]', '2024-09-26 09:19:48', NULL, '2024-09-18 10:04:26', '2024-09-26 09:19:48'),
(1005, 'App\\Models\\User', 8, 'auth_token', 'bdd0e3d6a07447fc14ec19dc1372bfbc19571981c289a1ad0430150204481203', '[\"*\"]', NULL, NULL, '2024-09-18 11:13:14', '2024-09-18 11:13:14'),
(1007, 'App\\Models\\User', 130, 'auth_token', 'c9988510fecb187d45d08a5fc9b68e622799ab629b984fea125c8d1cb981ab95', '[\"*\"]', '2024-09-19 05:01:05', NULL, '2024-09-19 04:24:30', '2024-09-19 05:01:05'),
(1008, 'App\\Models\\User', 131, 'auth_token', '05cca28abcabb622bd51d8795291d0e2da1222c4d8656ada6069c1b09b69eecf', '[\"*\"]', NULL, NULL, '2024-09-19 04:39:37', '2024-09-19 04:39:37'),
(1009, 'App\\Models\\User', 131, 'auth_token', 'a0142fee3a5845181fea677623139f7099f61c165220eab154cf7856e0173a90', '[\"*\"]', NULL, NULL, '2024-09-19 04:43:14', '2024-09-19 04:43:14'),
(1010, 'App\\Models\\User', 130, 'auth_token', '3a84aaa1f8422a695377ba45b0ab18308ce8e7160b74d5b39a85b3db05187be6', '[\"*\"]', '2024-09-19 09:07:29', NULL, '2024-09-19 05:27:54', '2024-09-19 09:07:29'),
(1011, 'App\\Models\\User', 8, 'auth_token', 'ed3833b9c39c246e72c8a27540ff74f5214cca9930f28d05d4ed36b004a9e7a2', '[\"*\"]', '2024-09-19 18:43:51', NULL, '2024-09-19 06:16:06', '2024-09-19 18:43:51'),
(1012, 'App\\Models\\User', 130, 'auth_token', 'ef931d9f51aa8016e0f66769dadb865f6ccca8db6a9b394bae8d7053b1b7d4a5', '[\"*\"]', '2024-09-20 06:22:10', NULL, '2024-09-19 09:07:44', '2024-09-20 06:22:10'),
(1013, 'App\\Models\\User', 136, 'auth_token', '8e8881d51a7b8924f3fff75ec8382ed540c7617e9c5f6f189d474422607fb32e', '[\"*\"]', NULL, NULL, '2024-09-19 13:19:48', '2024-09-19 13:19:48'),
(1014, 'App\\Models\\User', 136, 'auth_token', '8af3611c765866ba0637967f1975ecccdbf1a84904408d55820f03f7aa584e52', '[\"*\"]', NULL, NULL, '2024-09-19 13:21:30', '2024-09-19 13:21:30'),
(1015, 'App\\Models\\User', 8, 'auth_token', '11d17375813ea80bc3a2b95f3efca1ff5bbda5ba4b1803faa1c97cfa4ddf7f6c', '[\"*\"]', '2024-09-24 13:05:12', NULL, '2024-09-19 18:46:27', '2024-09-24 13:05:12'),
(1016, 'App\\Models\\User', 130, 'auth_token', 'd6ba47fed98605ace1eab857d7da592315df41f43e85b8a10514bdfebf5d8365', '[\"*\"]', '2024-09-20 06:29:50', NULL, '2024-09-20 06:23:50', '2024-09-20 06:29:50'),
(1017, 'App\\Models\\User', 130, 'auth_token', 'b747112c2bae3e4741c2d38d80e9c7850d69a390d6bf0ba1553d11a67ae75ab9', '[\"*\"]', '2024-09-20 08:52:57', NULL, '2024-09-20 06:31:38', '2024-09-20 08:52:57'),
(1018, 'App\\Models\\User', 130, 'auth_token', '868f19c04f628e94679f0ac0b84a2d6521d7057e4c4972200fdea29808d4ad75', '[\"*\"]', '2024-09-20 06:40:19', NULL, '2024-09-20 06:40:03', '2024-09-20 06:40:19'),
(1019, 'App\\Models\\User', 81, 'auth_token', 'b10aa6825c135ac082258b43b8c8ff20dfddf35e6a4fd8dea88ea0ad53f4fe61', '[\"*\"]', '2024-09-20 06:57:55', NULL, '2024-09-20 06:51:37', '2024-09-20 06:57:55'),
(1020, 'App\\Models\\User', 136, 'auth_token', '029de2a6d331f9a2fd580751cf706c222234ba66f83c47d4ef86bdf10c9bb57b', '[\"*\"]', NULL, NULL, '2024-09-20 06:57:42', '2024-09-20 06:57:42'),
(1021, 'App\\Models\\User', 137, 'auth_token', '8e3ce515e74561f927c44edf6c9f387f592104f6db5504b6e31bfbf49eb9843f', '[\"*\"]', NULL, NULL, '2024-09-20 06:57:50', '2024-09-20 06:57:50'),
(1022, 'App\\Models\\User', 130, 'auth_token', 'da1cba97948a211ee861a298e975dbb88b3468b248e777664479dff98f8be326', '[\"*\"]', '2024-09-20 06:59:19', NULL, '2024-09-20 06:58:59', '2024-09-20 06:59:19'),
(1023, 'App\\Models\\User', 137, 'auth_token', 'f3039c3c384f296e1198e87d2c823dd8cfc126ff2328bb263bd2271f75241b89', '[\"*\"]', NULL, NULL, '2024-09-20 06:59:49', '2024-09-20 06:59:49'),
(1024, 'App\\Models\\User', 138, 'auth_token', '6ca2ea764e34d432b22ca3d3be40dfb7c9b1f5500779c122cda2700f0ce8f27b', '[\"*\"]', NULL, NULL, '2024-09-20 07:00:46', '2024-09-20 07:00:46'),
(1025, 'App\\Models\\User', 81, 'auth_token', '59bdba97d9c6f5fc94661c63ed2bc308870c91b2f0f0bb57755f327ca7bc169c', '[\"*\"]', '2024-09-20 07:02:05', NULL, '2024-09-20 07:01:31', '2024-09-20 07:02:05'),
(1026, 'App\\Models\\User', 81, 'auth_token', '4154f1ed897028eb2b0caf92f161c8962ee0880e0fc6f2e69e53dd5f2c3e2c8f', '[\"*\"]', '2024-09-20 07:12:20', NULL, '2024-09-20 07:04:22', '2024-09-20 07:12:20'),
(1027, 'App\\Models\\User', 130, 'auth_token', 'dff1a6353487ec64d39b6bb282ae321cc3297e80dcdbc9952dfc00c712f3958e', '[\"*\"]', '2024-09-20 09:33:06', NULL, '2024-09-20 07:12:36', '2024-09-20 09:33:06'),
(1028, 'App\\Models\\User', 130, 'auth_token', 'cf855407953cbb45ab5ddd5b9f71fe52ba243094235e439a8bf4aec10253e9dc', '[\"*\"]', '2024-09-20 13:22:33', NULL, '2024-09-20 08:53:26', '2024-09-20 13:22:33'),
(1029, 'App\\Models\\User', 81, 'auth_token', '4c3ea0c19501590a7b171d29a32e87dc86c8c3ce28f683365489007c13997821', '[\"*\"]', '2024-09-20 11:51:45', NULL, '2024-09-20 09:34:18', '2024-09-20 11:51:45'),
(1030, 'App\\Models\\User', 139, 'auth_token', 'ac252503ab3559d623aa442db1d942aed17c5861bc924cf6210f803d98ef89cc', '[\"*\"]', NULL, NULL, '2024-09-20 11:32:41', '2024-09-20 11:32:41'),
(1031, 'App\\Models\\User', 139, 'auth_token', '6e0803d6aa4895a016d0416d25841cc396c09ea05d49f16b047538677ce1bf2c', '[\"*\"]', NULL, NULL, '2024-09-20 11:33:23', '2024-09-20 11:33:23'),
(1032, 'App\\Models\\User', 140, 'auth_token', '08cce2e69f2ea698b0e5620d38a4a18f0a69c780b70070777eecab1fe7fac6a3', '[\"*\"]', NULL, NULL, '2024-09-20 11:57:56', '2024-09-20 11:57:56'),
(1033, 'App\\Models\\User', 140, 'auth_token', 'e7045b4676477688e8a73d10a473503d161fc10064f75b2cf0b20831f6997d31', '[\"*\"]', '2024-09-20 12:00:29', NULL, '2024-09-20 11:58:34', '2024-09-20 12:00:29'),
(1034, 'App\\Models\\User', 130, 'auth_token', '980d3084a1abf1651c1804f22af53710596599f0047322c9a8d72217cb305757', '[\"*\"]', '2024-09-20 12:04:49', NULL, '2024-09-20 12:04:31', '2024-09-20 12:04:49'),
(1035, 'App\\Models\\User', 141, 'auth_token', '6a7af322cb04389d4696ba3d39698e8bd92bd1cde9b951a5ae502adea4031830', '[\"*\"]', NULL, NULL, '2024-09-20 12:06:01', '2024-09-20 12:06:01'),
(1036, 'App\\Models\\User', 130, 'auth_token', '991e1569b9d7113f1183cbbcdd6441436088c53dab5ce3cbc1c73a7234b1e464', '[\"*\"]', '2024-09-20 13:10:00', NULL, '2024-09-20 13:09:48', '2024-09-20 13:10:00');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1037, 'App\\Models\\User', 142, 'auth_token', '0725acdb0411f84147deb92d948fd3d76edd7063f6cc162200910ea6768c4f0e', '[\"*\"]', NULL, NULL, '2024-09-20 13:10:10', '2024-09-20 13:10:10'),
(1038, 'App\\Models\\User', 142, 'auth_token', 'd53d46d878a99b55bd4afa59189ed087ebd0793a3a22a45806e9fab4353d4857', '[\"*\"]', NULL, NULL, '2024-09-20 13:11:09', '2024-09-20 13:11:09'),
(1039, 'App\\Models\\User', 143, 'auth_token', '17d9a50335d96d810dd1e9de7dc54b505264d1b50119202a26b5dae868ff231a', '[\"*\"]', NULL, NULL, '2024-09-20 13:23:02', '2024-09-20 13:23:02'),
(1040, 'App\\Models\\User', 144, 'auth_token', 'd4e795412d489d6706c78b43f3eafad7c43292507c050f4184b05ca19639aa6f', '[\"*\"]', NULL, NULL, '2024-09-20 13:28:25', '2024-09-20 13:28:25'),
(1041, 'App\\Models\\User', 144, 'auth_token', 'cb7a073bd86477c7a921c033c85de9104825092904713f7ea9ca377199f76dc6', '[\"*\"]', '2024-09-21 04:19:53', NULL, '2024-09-20 13:29:34', '2024-09-21 04:19:53'),
(1042, 'App\\Models\\User', 145, 'auth_token', '1040fb8b28302a941b9d48eb479819743e44704903db47d03af602f89c19b690', '[\"*\"]', '2024-09-20 13:32:27', NULL, '2024-09-20 13:32:24', '2024-09-20 13:32:27'),
(1043, 'App\\Models\\User', 145, 'auth_token', '81b64d0cf42ba3afb3d9b489b8fbe762c26ec42ccd31177e1095a93338813652', '[\"*\"]', '2024-09-20 13:33:20', NULL, '2024-09-20 13:33:01', '2024-09-20 13:33:20'),
(1044, 'App\\Models\\User', 130, 'auth_token', '2ccbe1885a3b883b4d0471d8b54e6b395916c134c8046c67eca57d3173ad041d', '[\"*\"]', '2024-09-21 05:15:49', NULL, '2024-09-21 04:20:08', '2024-09-21 05:15:49'),
(1045, 'App\\Models\\User', 130, 'auth_token', 'becee8897ba7f6d98426f01a07e512fcac3565d6b46d346fd83be46d43aacb1e', '[\"*\"]', NULL, NULL, '2024-09-21 04:33:22', '2024-09-21 04:33:22'),
(1046, 'App\\Models\\User', 130, 'auth_token', '7b67d2d1202c55aba69ee991b05e0baa5d7a6afade4ed13d139f7fc293c6cb23', '[\"*\"]', NULL, NULL, '2024-09-21 04:34:17', '2024-09-21 04:34:17'),
(1047, 'App\\Models\\User', 130, 'auth_token', 'a25793f37ce1ff21d65ecaaad1d2ad296c983280ba47a7df721ddafb41ce805f', '[\"*\"]', NULL, NULL, '2024-09-21 04:35:13', '2024-09-21 04:35:13'),
(1048, 'App\\Models\\User', 140, 'auth_token', 'dcad3780feef39e146a3177081349f05ee2e4ca4b8ffad13e697744f757602d4', '[\"*\"]', NULL, NULL, '2024-09-21 04:35:47', '2024-09-21 04:35:47'),
(1049, 'App\\Models\\User', 141, 'auth_token', '1a7c250b90a22c04323739e90c07fc81b6143aaf74f4f027cdbd81f4272927ee', '[\"*\"]', NULL, NULL, '2024-09-21 04:36:33', '2024-09-21 04:36:33'),
(1050, 'App\\Models\\User', 141, 'auth_token', 'ccaf4cd3d8100d654912f0ea23541295603dc93dea113030311852c217a5286f', '[\"*\"]', NULL, NULL, '2024-09-21 04:36:38', '2024-09-21 04:36:38'),
(1051, 'App\\Models\\User', 141, 'auth_token', 'b73838ae14f9f6d03649c60af60344d5029cc32a3d6492530a6dbc99545f5f0a', '[\"*\"]', NULL, NULL, '2024-09-21 04:36:52', '2024-09-21 04:36:52'),
(1052, 'App\\Models\\User', 146, 'auth_token', 'e4acc0ada7c2bbb73314033b7aab04276324f5ed67c7014dd8d05f2bbeb0e6a9', '[\"*\"]', NULL, NULL, '2024-09-21 04:37:28', '2024-09-21 04:37:28'),
(1053, 'App\\Models\\User', 146, 'auth_token', '409e92f72b052d6dbb4d4147ca31cede857ab934f9c75653101d70d06c6e89bf', '[\"*\"]', NULL, NULL, '2024-09-21 04:38:21', '2024-09-21 04:38:21'),
(1054, 'App\\Models\\User', 146, 'auth_token', 'd52d71fb7f6319bba2e06a8d5cf301c062587d5d45c62e3269051fb06a1327e0', '[\"*\"]', NULL, NULL, '2024-09-21 04:39:24', '2024-09-21 04:39:24'),
(1055, 'App\\Models\\User', 141, 'auth_token', '89030a06dba8393e366b6cf1e3c08946102f73707a8b4f3a6a7b210bc4faa65a', '[\"*\"]', NULL, NULL, '2024-09-21 04:39:51', '2024-09-21 04:39:51'),
(1056, 'App\\Models\\User', 141, 'auth_token', 'b522a99ac55ba610aa72986b69e0d9c81cc2549deb163dcae0a3bb458ff83f5f', '[\"*\"]', NULL, NULL, '2024-09-21 04:39:54', '2024-09-21 04:39:54'),
(1057, 'App\\Models\\User', 141, 'auth_token', '20f2012b1652d2662549e4e7e78664641590ca2005e3a806db83d347ea873f6e', '[\"*\"]', NULL, NULL, '2024-09-21 04:39:58', '2024-09-21 04:39:58'),
(1058, 'App\\Models\\User', 146, 'auth_token', 'd180356c38289967b58ecf41455f3302cbdced1a9b33fa5ef82ccd13407f0e65', '[\"*\"]', NULL, NULL, '2024-09-21 04:40:21', '2024-09-21 04:40:21'),
(1059, 'App\\Models\\User', 141, 'auth_token', 'f2d85bc7a9ba2fff4508ae2c63e3b13617cfa8060ee8c06a427cf666107e8a6a', '[\"*\"]', NULL, NULL, '2024-09-21 04:40:43', '2024-09-21 04:40:43'),
(1060, 'App\\Models\\User', 141, 'auth_token', '424a8af62a0c6a8735244f0482eb56e558be12f12391b61b73ae66987ccdc761', '[\"*\"]', NULL, NULL, '2024-09-21 04:40:47', '2024-09-21 04:40:47'),
(1061, 'App\\Models\\User', 147, 'auth_token', '9c4f67c658b29bb034fb8043bcc3e9899381b9ec8065e298c70d4b5e688438cb', '[\"*\"]', NULL, NULL, '2024-09-21 04:41:36', '2024-09-21 04:41:36'),
(1062, 'App\\Models\\User', 147, 'auth_token', 'b7310bbda3511c3759c049c2e54ed25981b130f6ac04202cbc54b9f628af4387', '[\"*\"]', NULL, NULL, '2024-09-21 04:42:00', '2024-09-21 04:42:00'),
(1063, 'App\\Models\\User', 146, 'auth_token', '899ab27799842bbea8d48b953b23cbdc0a05176e6853b4b41b7b021c4b83a725', '[\"*\"]', '2024-09-21 04:45:47', NULL, '2024-09-21 04:45:38', '2024-09-21 04:45:47'),
(1064, 'App\\Models\\User', 146, 'auth_token', '563fcaa1dc5e8d33f2377b87a65985d36121eee44e9da06fa7daca5fb825ef59', '[\"*\"]', '2024-09-21 04:47:49', NULL, '2024-09-21 04:46:00', '2024-09-21 04:47:49'),
(1065, 'App\\Models\\User', 131, 'auth_token', '494eb0398f6ac82c9508819f73443e194fe8d0a7a2c80c9d035863c5ad73e2ba', '[\"*\"]', '2024-09-21 13:02:21', NULL, '2024-09-21 04:57:43', '2024-09-21 13:02:21'),
(1066, 'App\\Models\\User', 148, 'auth_token', '39b07150bc0767e821fd7b30ef3c8dcf351aa1ea675ba6b2ba380c9f73977f21', '[\"*\"]', '2024-09-21 05:34:25', NULL, '2024-09-21 05:27:55', '2024-09-21 05:34:25'),
(1067, 'App\\Models\\User', 145, 'auth_token', '2f1b7839d1ed153d6537a95f1e46a39cacd466ddb4cc8969cc65b5f853069d0d', '[\"*\"]', '2024-09-21 07:09:36', NULL, '2024-09-21 05:28:24', '2024-09-21 07:09:36'),
(1068, 'App\\Models\\User', 148, 'auth_token', '5a533657927fb8b18c4fadfbf3da64a370ff36a0c5f4f4f75982351ac3c76231', '[\"*\"]', '2024-09-21 05:35:26', NULL, '2024-09-21 05:35:20', '2024-09-21 05:35:26'),
(1069, 'App\\Models\\User', 130, 'auth_token', 'ed375605e26d28b4b050f07e37488bdc716261ddfb280e2b1730748e44f57494', '[\"*\"]', '2024-09-21 05:37:53', NULL, '2024-09-21 05:35:47', '2024-09-21 05:37:53'),
(1070, 'App\\Models\\User', 146, 'auth_token', '988361f3a196f42ac62e00a83d6f8eb1195eaae5558929fc50a7c72ec8ddc2a8', '[\"*\"]', '2024-09-21 05:52:30', NULL, '2024-09-21 05:52:08', '2024-09-21 05:52:30'),
(1071, 'App\\Models\\User', 146, 'auth_token', '3387565cce8b4c119307175e6ec97413cf4d60f34d00341854a376100b230533', '[\"*\"]', '2024-09-21 05:53:47', NULL, '2024-09-21 05:53:31', '2024-09-21 05:53:47'),
(1072, 'App\\Models\\User', 144, 'auth_token', '50c9d29fc80c66ffdc5da46532a7fc5a8a41c28e15d496ddc1e34426f7f80b3c', '[\"*\"]', '2024-09-21 06:25:55', NULL, '2024-09-21 05:55:38', '2024-09-21 06:25:55'),
(1073, 'App\\Models\\User', 149, 'auth_token', '3654aea9f86643b7694db175cc2ddc6ed7c638c2585997433412480a21443b3c', '[\"*\"]', '2024-09-21 05:59:49', NULL, '2024-09-21 05:59:37', '2024-09-21 05:59:49'),
(1074, 'App\\Models\\User', 130, 'auth_token', 'e3f3028694140aec741c40917a9f02255766bb07f397fc9f8355c721a2837606', '[\"*\"]', NULL, NULL, '2024-09-21 06:26:12', '2024-09-21 06:26:12'),
(1075, 'App\\Models\\User', 130, 'auth_token', 'b6a234ae76d0dc5f9a9ba0236893031c8f41150d022c602d3f83d4fd7a3df83f', '[\"*\"]', '2024-09-21 09:54:50', NULL, '2024-09-21 06:26:50', '2024-09-21 09:54:50'),
(1076, 'App\\Models\\User', 119, 'auth_token', '69f175c9302923ed110a42368f18b412565e74f7e3ab3972f9536ad21ca3a706', '[\"*\"]', NULL, NULL, '2024-09-21 06:36:48', '2024-09-21 06:36:48'),
(1077, 'App\\Models\\User', 150, 'auth_token', '0bc18ed4bfcb59c14266b3651f0929d5ff086c9a5c03c50be27b72525ea7060c', '[\"*\"]', NULL, NULL, '2024-09-21 06:42:57', '2024-09-21 06:42:57'),
(1078, 'App\\Models\\User', 150, 'auth_token', 'b8a4f051fbc5a1f967e0f8ebe9a978faeb468d140934be7fcbf07cd6ed8f68bc', '[\"*\"]', NULL, NULL, '2024-09-21 06:44:27', '2024-09-21 06:44:27'),
(1079, 'App\\Models\\User', 150, 'auth_token', 'b4fa8f90aca330d2fa0297653896e182cab26eeb25600dee81b187f5cfa5f3a5', '[\"*\"]', '2024-09-21 09:53:08', NULL, '2024-09-21 06:45:57', '2024-09-21 09:53:08'),
(1080, 'App\\Models\\User', 145, 'auth_token', 'a19c24edcc67185e4887a8d0d123bb6b218098764619ac5f56adf2934d0a871e', '[\"*\"]', '2024-09-21 12:53:26', NULL, '2024-09-21 07:09:49', '2024-09-21 12:53:26'),
(1081, 'App\\Models\\User', 130, 'auth_token', '799ae48002c44f17d3e16aaa21cb6d0feb79ccb74f53a8ad4ddebe85dccf58f3', '[\"*\"]', '2024-09-24 04:13:18', NULL, '2024-09-21 07:26:51', '2024-09-24 04:13:18'),
(1082, 'App\\Models\\User', 148, 'auth_token', 'b40f8f3549b0f495b0cc24a02cda8d24764c4057c93661dbaf3cd7f099710320', '[\"*\"]', '2024-09-21 12:53:50', NULL, '2024-09-21 09:55:12', '2024-09-21 12:53:50'),
(1083, 'App\\Models\\User', 149, 'auth_token', '4c927d25de2a4ac3d70f4ad9d757116e197f9ad8dc4c941222f5859371918f95', '[\"*\"]', '2024-09-21 10:19:15', NULL, '2024-09-21 09:58:48', '2024-09-21 10:19:15'),
(1084, 'App\\Models\\User', 130, 'auth_token', '39c6d1518c9b498b3960a349a050dce89c3ea11b2b0756f83689cfda5a0bcfe2', '[\"*\"]', NULL, NULL, '2024-09-21 10:31:30', '2024-09-21 10:31:30'),
(1085, 'App\\Models\\User', 130, 'auth_token', '9efb2dfcd5b385598e99c6539b1b5a77cb28cc0466cc09b791eb3bbc44b5ee47', '[\"*\"]', NULL, NULL, '2024-09-21 10:31:47', '2024-09-21 10:31:47'),
(1086, 'App\\Models\\User', 130, 'auth_token', '93c601915d3ea84bf90964f9a5662019e5c78ba9c09b6e753cd499934a91d0e4', '[\"*\"]', '2024-09-21 10:35:29', NULL, '2024-09-21 10:35:18', '2024-09-21 10:35:29'),
(1087, 'App\\Models\\User', 142, 'auth_token', 'c21cde18f56e70f579d7611f9eb2b224a82c154a065c995bd99e53f36781134c', '[\"*\"]', NULL, NULL, '2024-09-21 10:49:20', '2024-09-21 10:49:20'),
(1088, 'App\\Models\\User', 130, 'auth_token', '010705ae472e47e32b26bba127f4455d5ab16d515c7b533260563340da24aded', '[\"*\"]', '2024-09-21 10:51:35', NULL, '2024-09-21 10:49:49', '2024-09-21 10:51:35'),
(1089, 'App\\Models\\User', 130, 'auth_token', '6bcb5dfd93df3d7886fd9d60e50d866abf99e5ea3c505948b461b90e1a60552f', '[\"*\"]', '2024-09-21 10:54:06', NULL, '2024-09-21 10:53:49', '2024-09-21 10:54:06'),
(1090, 'App\\Models\\User', 151, 'auth_token', 'b54c9eb1978c0dd7804b8294461ccaa341c76721bd011fdd49882ca4400f9a31', '[\"*\"]', NULL, NULL, '2024-09-21 10:56:59', '2024-09-21 10:56:59'),
(1091, 'App\\Models\\User', 130, 'auth_token', 'dbe702b2f7ad01b6c03e23358d445a2f81c520281e7231476867a6f41b12690b', '[\"*\"]', '2024-09-21 11:12:52', NULL, '2024-09-21 11:04:05', '2024-09-21 11:12:52'),
(1092, 'App\\Models\\User', 151, 'auth_token', 'b97a47ae9fbdb64ae5c4eedc77f32dc07b28f50d88bc5bd79f15944126fab988', '[\"*\"]', NULL, NULL, '2024-09-21 11:09:55', '2024-09-21 11:09:55'),
(1093, 'App\\Models\\User', 130, 'auth_token', '5d6dc44b224b6ac03ef325851b67b2022ce1d583c410adb4fcd9bb16b95a64ab', '[\"*\"]', '2024-09-21 11:15:03', NULL, '2024-09-21 11:13:58', '2024-09-21 11:15:03'),
(1094, 'App\\Models\\User', 130, 'auth_token', 'd27645ef2b64918389f72bbeff2ce0ac7bdbe06d2e81df08c949eb52f24fa1b6', '[\"*\"]', '2024-09-21 11:23:27', NULL, '2024-09-21 11:22:59', '2024-09-21 11:23:27'),
(1095, 'App\\Models\\User', 151, 'auth_token', 'b8f83123c6c48ab10cdd6b2fed4546baf27e643af53753093ba85100b664cd51', '[\"*\"]', NULL, NULL, '2024-09-21 11:24:38', '2024-09-21 11:24:38'),
(1096, 'App\\Models\\User', 151, 'auth_token', 'd74d011d5b3d5c33517d24b8e5878c22b187c8be48d220c5ad01c94db1750ada', '[\"*\"]', NULL, NULL, '2024-09-21 11:24:57', '2024-09-21 11:24:57'),
(1097, 'App\\Models\\User', 152, 'auth_token', '2f17c7f84e4bc8dba1f8b5731c583c0b46e0e69987a48bfdb9ce7de0b85698a8', '[\"*\"]', NULL, NULL, '2024-09-21 11:25:25', '2024-09-21 11:25:25'),
(1098, 'App\\Models\\User', 152, 'auth_token', 'd9536f6bda198a371ca9fa667e4f24dd5c2f13767efcb2558a153867c0498961', '[\"*\"]', NULL, NULL, '2024-09-21 11:26:12', '2024-09-21 11:26:12'),
(1099, 'App\\Models\\User', 152, 'auth_token', 'f30aa25f1210e4872758e62455c7055e6c44a8552327c695f8a7d093f2f396f9', '[\"*\"]', NULL, NULL, '2024-09-21 11:26:29', '2024-09-21 11:26:29'),
(1100, 'App\\Models\\User', 152, 'auth_token', '9c206e02952d5f32723b63e59891d8cdb3cc978195b210bba438b4ddb64e54ed', '[\"*\"]', '2024-09-21 11:34:00', NULL, '2024-09-21 11:32:59', '2024-09-21 11:34:00'),
(1101, 'App\\Models\\User', 130, 'auth_token', 'e4badf6474883bb853645f67929912cde0ec99d1998ed5821583662640d262dd', '[\"*\"]', '2024-09-21 11:46:53', NULL, '2024-09-21 11:34:19', '2024-09-21 11:46:53'),
(1102, 'App\\Models\\User', 152, 'auth_token', 'e4979b9ff4114128da3f53c975eaf7eab559fe3e128a58205559cd8a07aed499', '[\"*\"]', '2024-09-21 12:17:36', NULL, '2024-09-21 12:17:30', '2024-09-21 12:17:36'),
(1103, 'App\\Models\\User', 130, 'auth_token', '14d1f75420f8f5ce4300458f01a6e4826810f729400157c47d0bab385dfbc044', '[\"*\"]', '2024-09-21 12:17:58', NULL, '2024-09-21 12:17:47', '2024-09-21 12:17:58'),
(1104, 'App\\Models\\User', 142, 'auth_token', '3478949ebf53dc827f25f8827b24b1b50c7ac9857d0b1b6dd3650748f1b47ebe', '[\"*\"]', NULL, NULL, '2024-09-21 12:18:34', '2024-09-21 12:18:34'),
(1105, 'App\\Models\\User', 148, 'auth_token', '9fd93e1527002a47c9f940a953323d6ad8f957684ccdb17774e24b7de89a10f5', '[\"*\"]', '2024-09-21 13:03:41', NULL, '2024-09-21 12:58:59', '2024-09-21 13:03:41'),
(1106, 'App\\Models\\User', 145, 'auth_token', '3eda8c75df3a02e8502465252145ec26fa18806e6304490372087415eb36bc98', '[\"*\"]', '2024-09-21 13:13:30', NULL, '2024-09-21 13:03:52', '2024-09-21 13:13:30'),
(1107, 'App\\Models\\User', 148, 'auth_token', 'a4bab7b82c35ef54c4c8c4b73c4446e79df363a78f8fd7d4dbb2b97fb202acee', '[\"*\"]', '2024-09-21 14:03:26', NULL, '2024-09-21 13:11:08', '2024-09-21 14:03:26'),
(1108, 'App\\Models\\User', 150, 'auth_token', '522b2a8a64ca4f9c83ba35ac6484a9bb999943f20ff1a5f4d54993801711fdbd', '[\"*\"]', '2024-09-24 04:14:56', NULL, '2024-09-21 13:20:26', '2024-09-24 04:14:56'),
(1111, 'App\\Models\\User', 152, 'auth_token', '34aa430c920d23b94fd7b373db64217f6770d292b214f9bd2564399e3de2eca3', '[\"*\"]', '2024-09-23 04:27:24', NULL, '2024-09-21 13:27:21', '2024-09-23 04:27:24'),
(1112, 'App\\Models\\User', 148, 'auth_token', '778feafa3ad85e7e027c06611b4ed467877707df36cb711bfc5c80338d0d805a', '[\"*\"]', '2024-09-21 14:04:31', NULL, '2024-09-21 14:04:20', '2024-09-21 14:04:31'),
(1113, 'App\\Models\\User', 130, 'auth_token', '6dc864db8330f48651247bbe5fd6ebf2ebbef16e5b18d24c9ab7e72d7c9d7243', '[\"*\"]', '2024-09-23 04:17:51', NULL, '2024-09-23 04:15:30', '2024-09-23 04:17:51'),
(1114, 'App\\Models\\User', 130, 'auth_token', 'bce97edb81f9ab4b0511d354d96e3daf4578dd8c2d986b6bc84c905c7ae4db9a', '[\"*\"]', '2024-09-23 05:16:08', NULL, '2024-09-23 04:24:48', '2024-09-23 05:16:08'),
(1115, 'App\\Models\\User', 152, 'auth_token', 'f9c5d90b5889b444ca7b5459f2229a2fa9223b87ba7cf1a4255e115308603e0d', '[\"*\"]', '2024-09-23 06:33:32', NULL, '2024-09-23 04:28:17', '2024-09-23 06:33:32'),
(1116, 'App\\Models\\User', 3, 'auth_token', 'a80cdacd604bceddeec6e7e0012826dae216f45b11122396aef9ea13de14c7f5', '[\"*\"]', NULL, NULL, '2024-09-23 05:16:24', '2024-09-23 05:16:24'),
(1117, 'App\\Models\\User', 130, 'auth_token', '684eff2dc98a5bbb5a9b0771600fd8034cc6e24d2a86a48ed740f13c452eac0c', '[\"*\"]', '2024-09-24 04:46:46', NULL, '2024-09-23 05:16:56', '2024-09-24 04:46:46'),
(1118, 'App\\Models\\User', 146, 'auth_token', '98d04345c9d142d924122fc0f455b7d64fe13220803202f166c205e27d251203', '[\"*\"]', NULL, NULL, '2024-09-23 07:17:01', '2024-09-23 07:17:01'),
(1119, 'App\\Models\\User', 140, 'auth_token', 'c44795bc01a81f8bd23ec3c1e83ea428ccd133a51d20da98435f09f9652c5622', '[\"*\"]', NULL, NULL, '2024-09-23 07:17:23', '2024-09-23 07:17:23'),
(1120, 'App\\Models\\User', 142, 'auth_token', '675089c1178c7cbbc188db98cb3927eaaa14ddf527cbf6079a3cf0cf863c8258', '[\"*\"]', NULL, NULL, '2024-09-23 07:17:59', '2024-09-23 07:17:59'),
(1121, 'App\\Models\\User', 142, 'auth_token', '433abaabea7e8e0ab3580185886f83d04f6b2432b7c3ac67108948788fbff559', '[\"*\"]', '2024-09-23 08:58:35', NULL, '2024-09-23 07:18:48', '2024-09-23 08:58:35'),
(1122, 'App\\Models\\User', 152, 'auth_token', '82e2dd31a5135a8031156ae65775f9301e69ba6509269abb48484f22bddf059f', '[\"*\"]', '2024-09-23 09:55:45', NULL, '2024-09-23 09:00:47', '2024-09-23 09:55:45'),
(1123, 'App\\Models\\User', 142, 'auth_token', '59a22d7e0ecfbd9118f56c3bc2b68c21b9be36ac351a0bc554f263206f3f8bcb', '[\"*\"]', '2024-09-23 09:56:33', NULL, '2024-09-23 09:56:09', '2024-09-23 09:56:33'),
(1124, 'App\\Models\\User', 140, 'auth_token', '3680f52065434cb46bdf780d8a1c4daf021df02d919c427558baad37c9ac12bd', '[\"*\"]', NULL, NULL, '2024-09-23 09:57:05', '2024-09-23 09:57:05'),
(1125, 'App\\Models\\User', 44, 'auth_token', '64f1c58a0e116135eb561b07c48c49134901d15d7b46012b16a4298b756b8251', '[\"*\"]', NULL, NULL, '2024-09-23 09:58:44', '2024-09-23 09:58:44'),
(1126, 'App\\Models\\User', 44, 'auth_token', 'b2c0428b1f5f93a11230000783038d8bdb2e960756aa0ad12fae8f3eb847e65c', '[\"*\"]', NULL, NULL, '2024-09-23 09:59:01', '2024-09-23 09:59:01'),
(1127, 'App\\Models\\User', 74, 'auth_token', '7c145acb74c4fb4f8763b2eb1c877df43ca20693f7fc8f684134fa5693532a03', '[\"*\"]', NULL, NULL, '2024-09-23 10:00:29', '2024-09-23 10:00:29'),
(1128, 'App\\Models\\User', 74, 'auth_token', 'ceeb46f4bfb3415090b8f5a3685dc48cd06468e2461e0ce29596a316588eaffe', '[\"*\"]', NULL, NULL, '2024-09-23 10:00:54', '2024-09-23 10:00:54'),
(1129, 'App\\Models\\User', 74, 'auth_token', '94eda5c0160985b0345b307d8032c397380dca977a26f91dc44dae62fd07c5ef', '[\"*\"]', NULL, NULL, '2024-09-23 10:02:28', '2024-09-23 10:02:28'),
(1130, 'App\\Models\\User', 130, 'auth_token', '55846cbfe25bc994a501cf2ce014e6980147e3a0134cebe38484615133c6dc8d', '[\"*\"]', '2024-09-23 10:12:09', NULL, '2024-09-23 10:02:54', '2024-09-23 10:12:09'),
(1131, 'App\\Models\\User', 130, 'auth_token', 'fa306545e618f8e7caca0f10cde648b84d7dc0018c9bb557d615a3ce85942809', '[\"*\"]', '2024-09-25 05:05:03', NULL, '2024-09-23 10:21:55', '2024-09-25 05:05:03'),
(1132, 'App\\Models\\User', 130, 'auth_token', 'fbb25aee73b2c235be41e8c2fec7763c71b7edcb15ba9dc2ea5a762a634788eb', '[\"*\"]', '2024-09-24 05:37:52', NULL, '2024-09-24 04:13:39', '2024-09-24 05:37:52'),
(1133, 'App\\Models\\User', 145, 'auth_token', '2f4f2a95af91c63369497856e06e4f92c9173ccbdca9f3132245013eb7716f6d', '[\"*\"]', '2024-09-24 13:41:46', NULL, '2024-09-24 04:15:06', '2024-09-24 13:41:46'),
(1134, 'App\\Models\\User', 130, 'auth_token', '84b70df1fa97fa15e0c90847a93c1e8b67e1f158feb3d05aa6df15160bdb7f2c', '[\"*\"]', '2024-09-26 06:47:29', NULL, '2024-09-24 04:47:08', '2024-09-26 06:47:29'),
(1135, 'App\\Models\\User', 153, 'auth_token', '0fcd16d2a2aecbd8299b6d2ad1d7ae8bb6e0bbfaccf3df4c2eeb1cfa63f781e0', '[\"*\"]', NULL, NULL, '2024-09-24 05:38:17', '2024-09-24 05:38:17'),
(1136, 'App\\Models\\User', 154, 'auth_token', '7f559221150329135de27d78ff275f4559985a675199c84602dd87c941c3bcbd', '[\"*\"]', NULL, NULL, '2024-09-24 05:42:52', '2024-09-24 05:42:52'),
(1137, 'App\\Models\\User', 153, 'auth_token', '70070b92fd199434ba9b45c9cc75dc15236fae517e42f5ff9ce25fbbc017619b', '[\"*\"]', NULL, NULL, '2024-09-24 05:46:16', '2024-09-24 05:46:16'),
(1138, 'App\\Models\\User', 154, 'auth_token', '6ca0558bfbd2fde4d0c495efb8ef352f5b0a1d5c70d8dd63bdaac6010eef2354', '[\"*\"]', NULL, NULL, '2024-09-24 05:46:35', '2024-09-24 05:46:35'),
(1139, 'App\\Models\\User', 156, 'auth_token', '051262c6918d8c33c9e0a9301c409780704a7be07cf49967d06c83c0698455ba', '[\"*\"]', NULL, NULL, '2024-09-24 07:15:59', '2024-09-24 07:15:59'),
(1140, 'App\\Models\\User', 156, 'auth_token', '03a602e50908435bae43dd9dc1eae092641a14de5ff86aef7a9196b4ea5f93b9', '[\"*\"]', NULL, NULL, '2024-09-24 07:18:17', '2024-09-24 07:18:17'),
(1141, 'App\\Models\\User', 157, 'auth_token', '43eb3591bbc8c98f7a9d99f77b9bfbbdf0f9dfc19dc469f740468f98b0bd1546', '[\"*\"]', NULL, NULL, '2024-09-24 07:20:24', '2024-09-24 07:20:24'),
(1142, 'App\\Models\\User', 157, 'auth_token', 'cc28768c095ebd6a846459996e959faee5d8f57fd67346ddbacc049512ed6bf2', '[\"*\"]', NULL, NULL, '2024-09-24 07:21:37', '2024-09-24 07:21:37'),
(1143, 'App\\Models\\User', 158, 'auth_token', 'ed813757a0dcc694930f897e1e9d991d469ae521fd46f370ccb8ebcca7f810b5', '[\"*\"]', NULL, NULL, '2024-09-24 07:22:58', '2024-09-24 07:22:58'),
(1144, 'App\\Models\\User', 158, 'auth_token', '97d0a097e0e5f7ce640404944e2c1444765a02384c72feb506d2d1f48fd06d3a', '[\"*\"]', NULL, NULL, '2024-09-24 07:24:05', '2024-09-24 07:24:05'),
(1145, 'App\\Models\\User', 159, 'auth_token', 'f558df4e628dc12da2a9ec09ca03199a9a8d48fadcc64b2d3ad151131c5c71c6', '[\"*\"]', NULL, NULL, '2024-09-24 11:19:41', '2024-09-24 11:19:41'),
(1146, 'App\\Models\\User', 159, 'auth_token', '6681aa5052d59af865c53fbdbf0e7016d0f13ab913dbee81fac42f216f8097a8', '[\"*\"]', '2024-09-25 11:23:56', NULL, '2024-09-24 11:20:57', '2024-09-25 11:23:56'),
(1147, 'App\\Models\\User', 160, 'auth_token', '01e1425d7918700e648a06add2e42f5722582e0c8e3cd9bfbb12b5c3c9a70477', '[\"*\"]', NULL, NULL, '2024-09-24 11:31:07', '2024-09-24 11:31:07'),
(1148, 'App\\Models\\User', 160, 'auth_token', 'cee0b52d26208c5f908df42a91ddfd08dccc06ea7a02b2262e4654d908cbb000', '[\"*\"]', NULL, NULL, '2024-09-24 11:32:46', '2024-09-24 11:32:46'),
(1149, 'App\\Models\\User', 160, 'auth_token', 'b1941ea3d2f2d471b09ecebdfa83a8c8f37a6acfdaba7661f2ec573b074795f9', '[\"*\"]', '2024-09-24 11:34:56', NULL, '2024-09-24 11:34:23', '2024-09-24 11:34:56'),
(1150, 'App\\Models\\User', 104, 'auth_token', '9d6fb55e844c958f0bc50a27eb7322f3ecc56c488e52fa99effff7d88bc29acb', '[\"*\"]', '2024-09-24 13:42:09', NULL, '2024-09-24 12:06:15', '2024-09-24 13:42:09'),
(1151, 'App\\Models\\User', 145, 'auth_token', 'c906383846647a3ab6b60f61fc753c102a71511148c73dd9b1382891fe726a70', '[\"*\"]', '2024-09-24 13:42:03', NULL, '2024-09-24 13:42:00', '2024-09-24 13:42:03'),
(1152, 'App\\Models\\User', 81, 'auth_token', 'c3410af65d79e7cf760a94fec90ddafaa13cf89c8e257b6c96c908066d2970a4', '[\"*\"]', '2024-09-27 05:14:56', NULL, '2024-09-25 05:12:15', '2024-09-27 05:14:56'),
(1155, 'App\\Models\\User', 8, 'auth_token', 'a98352a1ba9e97c3f579b4628c2ae6fffb2f311100ddb5a4e132d6ce20020f17', '[\"*\"]', '2024-10-05 13:52:02', NULL, '2024-09-25 06:24:58', '2024-10-05 13:52:02'),
(1156, 'App\\Models\\User', 81, 'auth_token', '07a9ffb855e7974fbf27cc9955e053acccac5243371e3fcae348a73ecb6d81aa', '[\"*\"]', '2024-09-30 11:21:58', NULL, '2024-09-25 11:56:27', '2024-09-30 11:21:58'),
(1157, 'App\\Models\\User', 145, 'auth_token', '0d988acbab1f9765d65c4d61ccb39b136c0d6897e3fb45845433fbdb4394e39c', '[\"*\"]', '2024-10-02 08:38:49', NULL, '2024-09-25 15:50:29', '2024-10-02 08:38:49'),
(1158, 'App\\Models\\User', 162, 'auth_token', '7d5cc937e771b1469cb2e0b8c0d7cc0056f2b34c0384ceacfbb1759bd90d473b', '[\"*\"]', NULL, NULL, '2024-09-26 04:42:20', '2024-09-26 04:42:20'),
(1159, 'App\\Models\\User', 163, 'auth_token', '9891799821b1472972563f43f37b236cc14702071734811bcf006e2a59dd0c8d', '[\"*\"]', NULL, NULL, '2024-09-26 06:08:08', '2024-09-26 06:08:08'),
(1160, 'App\\Models\\User', 163, 'auth_token', 'd46180092a9c5f8391dda85b9532dfd3c7877847c0cb486e90f2d3703fbc863e', '[\"*\"]', '2024-09-27 05:13:12', NULL, '2024-09-26 06:08:55', '2024-09-27 05:13:12'),
(1168, 'App\\Models\\User', 130, 'auth_token', '2ea605fd2e9f6a69310242ce9b1791a8eb9b60f88cb07efbe4f55394f42b6076', '[\"*\"]', '2024-09-26 07:15:05', NULL, '2024-09-26 06:51:01', '2024-09-26 07:15:05'),
(1169, 'App\\Models\\User', 130, 'auth_token', '27cfec820160faf6ea98cd7303e92dffc03c6205264d4a9acc7b508e65dbb31b', '[\"*\"]', '2024-09-26 10:56:29', NULL, '2024-09-26 06:56:12', '2024-09-26 10:56:29'),
(1170, 'App\\Models\\User', 123, 'auth_token', 'd86593f4b41ddfa41e79adc0099c801f2a2c840aa3eed835fbef826a70d2f102', '[\"*\"]', '2024-09-27 06:20:39', NULL, '2024-09-26 07:00:19', '2024-09-27 06:20:39'),
(1172, 'App\\Models\\User', 153, 'auth_token', 'c2a1c77aa3b0c782eb4241833f3cbf2ded60631ae354fd9d91b67b3d7dae9cf8', '[\"*\"]', NULL, NULL, '2024-09-26 10:58:50', '2024-09-26 10:58:50'),
(1173, 'App\\Models\\User', 153, 'auth_token', 'dec57877fbb03b5db3f1f55bfc7399cd35b085718e33838dd7ad9a7aecad7813', '[\"*\"]', NULL, NULL, '2024-09-26 11:07:28', '2024-09-26 11:07:28'),
(1174, 'App\\Models\\User', 130, 'auth_token', 'df32718ae6364f2e1662c9e867a1274805ce259e9027cf01eb7a63a0c1a7978d', '[\"*\"]', '2024-09-27 07:58:52', NULL, '2024-09-27 04:31:09', '2024-09-27 07:58:52'),
(1175, 'App\\Models\\User', 130, 'auth_token', '69daa1b5a152803b48cd488b0e9b5a2d77bdecfb437762d190fae073f590dfa6', '[\"*\"]', '2024-09-27 05:34:51', NULL, '2024-09-27 05:25:19', '2024-09-27 05:34:51'),
(1176, 'App\\Models\\User', 146, 'auth_token', '3b0ac92b22f3fe368018e1425e09ed56b1c25591ac525210a3164de604dccadb', '[\"*\"]', '2024-09-30 12:34:19', NULL, '2024-09-27 05:37:50', '2024-09-30 12:34:19'),
(1178, 'App\\Models\\User', 44, 'auth_token', '0032cb102dd678531e20ad2f640d46eaf6181fd65708a105cfa566c9315d4251', '[\"*\"]', NULL, NULL, '2024-09-27 06:17:41', '2024-09-27 06:17:41'),
(1179, 'App\\Models\\User', 153, 'auth_token', 'db9f2fe83f0d0cf846d7f2858622cecd95b383f12a255ad8e46b8cff5fa99b02', '[\"*\"]', NULL, NULL, '2024-09-27 06:19:12', '2024-09-27 06:19:12'),
(1180, 'App\\Models\\User', 153, 'auth_token', 'b986d892d700da52329b70610a604ebc6ea6c5d56637d5c41ad0da54e6d7ac3f', '[\"*\"]', '2024-09-27 06:40:30', NULL, '2024-09-27 06:19:21', '2024-09-27 06:40:30'),
(1181, 'App\\Models\\User', 166, 'auth_token', 'e5ac70168254845ca5f5455912e29ad2aef371ce6e87edf4974bfe99f8c26149', '[\"*\"]', '2024-10-05 08:52:14', NULL, '2024-09-28 18:38:05', '2024-10-05 08:52:14'),
(1182, 'App\\Models\\User', 6, 'auth_token', 'ee043e0bef571a23a2906b9d70dec69d61d4f73f050059a973aeaf9dbe9313f3', '[\"*\"]', '2024-10-01 06:02:13', NULL, '2024-09-30 04:52:50', '2024-10-01 06:02:13'),
(1183, 'App\\Models\\User', 44, 'auth_token', 'e6433b9984ce93b56cef23018e117cb2f0c5473ae33d0335edeb71fc2bf5fdf8', '[\"*\"]', NULL, NULL, '2024-09-30 07:16:30', '2024-09-30 07:16:30'),
(1184, 'App\\Models\\User', 153, 'auth_token', 'f2934b0a6126dc357501c11fc5489ac189820747d3a39b97112404abd7ef3578', '[\"*\"]', '2024-09-30 07:25:40', NULL, '2024-09-30 07:18:57', '2024-09-30 07:25:40'),
(1185, 'App\\Models\\User', 130, 'auth_token', '2b8a7dfb41f56dd326b19f883be2253b58ffaae9412e56bdafec7be9ed074e23', '[\"*\"]', '2024-09-30 07:35:36', NULL, '2024-09-30 07:25:54', '2024-09-30 07:35:36'),
(1186, 'App\\Models\\User', 130, 'auth_token', 'ade682783cdf9c8c59e11fc2a529d287f9b63e540bafef40c79b41dd2472d4ca', '[\"*\"]', '2024-09-30 09:45:44', NULL, '2024-09-30 07:41:10', '2024-09-30 09:45:44'),
(1187, 'App\\Models\\User', 153, 'auth_token', '6888945efcebf9649ce12aa4d3e4a9210017fa84ef6a3c0e3ad88d48c5f652e2', '[\"*\"]', '2024-09-30 09:51:28', NULL, '2024-09-30 09:49:55', '2024-09-30 09:51:28'),
(1188, 'App\\Models\\User', 130, 'auth_token', 'e6f666aead3d81fa89bb5c5dcee54f3b7f8dd0d1291ce5de7d79e52347931521', '[\"*\"]', '2024-09-30 11:18:37', NULL, '2024-09-30 09:51:45', '2024-09-30 11:18:37'),
(1189, 'App\\Models\\User', 130, 'auth_token', 'd35ac8177cf33dedbdc73f8f0904f41dda714642bcb489705f7a6cb6c934cc14', '[\"*\"]', '2024-10-04 10:48:37', NULL, '2024-09-30 11:19:00', '2024-10-04 10:48:37'),
(1190, 'App\\Models\\User', 44, 'auth_token', '5e79d4fbe3d14475ef6f547725e8888d4ad91a879e4029f90cf79a383b61d1ed', '[\"*\"]', NULL, NULL, '2024-09-30 12:34:51', '2024-09-30 12:34:51'),
(1191, 'App\\Models\\User', 153, 'auth_token', 'ebf37e61edc205821daeec33639fa1dfafd82220461e3a419911c54582ea0bf6', '[\"*\"]', '2024-09-30 12:47:37', NULL, '2024-09-30 12:35:22', '2024-09-30 12:47:37'),
(1192, 'App\\Models\\User', 130, 'auth_token', '47558e718b15884b206918dc256d2d595c6615652f8a21cc655b3479111a2631', '[\"*\"]', '2024-09-30 12:52:04', NULL, '2024-09-30 12:48:05', '2024-09-30 12:52:04'),
(1193, 'App\\Models\\User', 74, 'auth_token', '70889dd97d54dfb1a8e36e33e2bd230183edb47674581001515cfcb5d34b6d8b', '[\"*\"]', '2024-10-05 04:38:30', NULL, '2024-09-30 12:57:52', '2024-10-05 04:38:30'),
(1194, 'App\\Models\\User', 130, 'auth_token', 'c5645229a3668ba4ec489c03660c1a9c877ee941508b66312ca16102fb5c20fe', '[\"*\"]', '2024-10-05 10:34:17', NULL, '2024-10-01 04:23:53', '2024-10-05 10:34:17'),
(1198, 'App\\Models\\User', 1, 'auth_token', '00e14a464141c65903a31e9ed71b7cc558a5d86bfa0d69875384468000d23128', '[\"*\"]', NULL, NULL, '2024-10-01 07:21:09', '2024-10-01 07:21:09'),
(1200, 'App\\Models\\User', 3, 'auth_token', '2393712f2ce5f58d4e2fa63b4d90221c33563c7d726f7ff49846c05400dde489', '[\"*\"]', '2024-10-04 07:30:46', NULL, '2024-10-04 04:56:24', '2024-10-04 07:30:46'),
(1201, 'App\\Models\\User', 153, 'auth_token', 'ab42bf8602db0d162d1d4939782dc9ef7da27733aa5d94ff682fa42288b27b38', '[\"*\"]', '2024-10-04 07:15:06', NULL, '2024-10-04 07:11:36', '2024-10-04 07:15:06'),
(1202, 'App\\Models\\User', 153, 'auth_token', '188b4cc763d7e1a93bcfdbb8ff3d1f7deab581aa50b944acc001dbb17f92f433', '[\"*\"]', '2024-10-04 07:27:11', NULL, '2024-10-04 07:19:47', '2024-10-04 07:27:11'),
(1203, 'App\\Models\\User', 146, 'auth_token', 'be948bdd6ebe4c5813021c3744fb9e7d8dd3b2fa95fee4db0c3f87dc6fdfab2a', '[\"*\"]', '2024-10-04 10:53:29', NULL, '2024-10-04 07:27:30', '2024-10-04 10:53:29'),
(1204, 'App\\Models\\User', 74, 'auth_token', 'd2383930bb2350d0821749a4ec37b17c6b111853a083fecb59072e2b0e2fb061', '[\"*\"]', '2024-10-04 11:00:48', NULL, '2024-10-04 10:55:11', '2024-10-04 11:00:48'),
(1205, 'App\\Models\\User', 153, 'auth_token', 'f859aaf5a439e681f0e92494693ad856134babb590214d1afec012e701e85cd9', '[\"*\"]', '2024-10-05 04:03:12', NULL, '2024-10-04 11:01:06', '2024-10-05 04:03:12'),
(1206, 'App\\Models\\User', 144, 'auth_token', '631d664a4f68a1c1503801bceaa2b2d39dd8216212e109974b184c10a6d8b7d1', '[\"*\"]', NULL, NULL, '2024-10-05 04:39:12', '2024-10-05 04:39:12'),
(1207, 'App\\Models\\User', 144, 'auth_token', '2e798e77b291795f50bad60b3913d83cbabc2765569bd253ff73ea50f8263a10', '[\"*\"]', NULL, NULL, '2024-10-05 04:39:35', '2024-10-05 04:39:35'),
(1208, 'App\\Models\\User', 144, 'auth_token', '7ca26a0ebcf2d9e258d789c9a1cc06bce34b6d2379aa2f30db2df910774ee5f6', '[\"*\"]', NULL, NULL, '2024-10-05 04:39:43', '2024-10-05 04:39:43'),
(1209, 'App\\Models\\User', 130, 'auth_token', 'df4a9a3aed748a4607dddc004a000c9ba74ba66f1a012c6a29ce6a670a6d470f', '[\"*\"]', NULL, NULL, '2024-10-05 04:40:09', '2024-10-05 04:40:09'),
(1210, 'App\\Models\\User', 130, 'auth_token', 'a033fd0ad953ac2b446d5f08cac2033004a0110bd0f45fb902fd23c57d838c63', '[\"*\"]', NULL, NULL, '2024-10-05 04:40:18', '2024-10-05 04:40:18'),
(1211, 'App\\Models\\User', 130, 'auth_token', '5f8687da4a02f3008d35ed440b820a152974fc1485ed75be131bf002247d0e29', '[\"*\"]', NULL, NULL, '2024-10-05 04:40:26', '2024-10-05 04:40:26'),
(1212, 'App\\Models\\User', 130, 'auth_token', '15b18252b2b4c26a9e82bc8bf40e5fcdffb51152f9c9d5c549b7e0c1b8c1baed', '[\"*\"]', NULL, NULL, '2024-10-05 04:42:55', '2024-10-05 04:42:55'),
(1213, 'App\\Models\\User', 130, 'auth_token', 'b196258c90c470583388502ba1bd449e787738f00d1cadd85befe30642b1f3a1', '[\"*\"]', '2024-10-05 04:51:01', NULL, '2024-10-05 04:48:45', '2024-10-05 04:51:01'),
(1214, 'App\\Models\\User', 108, 'auth_token', '41b31cd3ff57069987159af3013a3c05058ca1bcce629086e5ae9bfdea32d496', '[\"*\"]', '2024-10-08 11:49:24', NULL, '2024-10-05 04:52:14', '2024-10-08 11:49:24'),
(1215, 'App\\Models\\User', 167, 'auth_token', 'be5b0ed5ebb258e244c31a8ca5ec1e2982d46ef362db394586bf5176aa350fbb', '[\"*\"]', NULL, NULL, '2024-10-05 07:29:49', '2024-10-05 07:29:49'),
(1216, 'App\\Models\\User', 167, 'auth_token', '92c903b335f7055a0216fe6bb4487c129ab858e295b1f88d51115c801f8a52a6', '[\"*\"]', '2024-10-05 07:43:58', NULL, '2024-10-05 07:36:54', '2024-10-05 07:43:58'),
(1217, 'App\\Models\\User', 150, 'auth_token', '07fa82653df432093c37e0ce5be2d4c3157e1ac5464bb53b79ea374f687c510d', '[\"*\"]', '2024-10-05 07:55:15', NULL, '2024-10-05 07:46:06', '2024-10-05 07:55:15'),
(1218, 'App\\Models\\User', 130, 'auth_token', 'ea9858e2be1d308b885f27d5b3a802bb50392db00838c444dfadc635d3521d4a', '[\"*\"]', '2024-10-05 10:05:32', NULL, '2024-10-05 08:52:12', '2024-10-05 10:05:32'),
(1219, 'App\\Models\\User', 164, 'auth_token', 'fba7f2969db8830b558f3e8dc89f2a57430626ee32cf12bcfc903c629f4e9170', '[\"*\"]', '2024-10-07 05:33:22', NULL, '2024-10-05 11:45:24', '2024-10-07 05:33:22'),
(1220, 'App\\Models\\User', 130, 'auth_token', '7c377c38451fc064660c3853204854ddaf26c00a30010e71ca80258d20ac769d', '[\"*\"]', '2024-10-07 04:41:41', NULL, '2024-10-05 11:59:31', '2024-10-07 04:41:41'),
(1221, 'App\\Models\\User', 168, 'auth_token', 'a10bd993768787841a0c585633788147bed7dd2e133db5b350e8db06e83c657c', '[\"*\"]', '2024-10-06 09:20:42', NULL, '2024-10-05 13:58:17', '2024-10-06 09:20:42'),
(1231, 'App\\Models\\User', 161, 'auth_token', '6e869ed9f14cc11fdbfe03699f4676cd7bc321bc94ab89a5da2ddc12db8c02bb', '[\"*\"]', NULL, NULL, '2024-10-07 05:58:30', '2024-10-07 05:58:30'),
(1232, 'App\\Models\\User', 161, 'auth_token', '99a21b0a48478a94f7f625cccf1575b97f85552d7b5064dc25efbc738adfc4d5', '[\"*\"]', NULL, NULL, '2024-10-07 05:59:23', '2024-10-07 05:59:23'),
(1233, 'App\\Models\\User', 161, 'auth_token', '5b65d38e34724c2ac75a6215c26443e7baf7044417f0743460c26b4c0d95d241', '[\"*\"]', NULL, NULL, '2024-10-07 05:59:43', '2024-10-07 05:59:43'),
(1234, 'App\\Models\\User', 161, 'auth_token', '8acc876408d374d2bde0df58ea6ee8ea5eb9d2042c1561d7e0055462876e7cec', '[\"*\"]', NULL, NULL, '2024-10-07 06:00:05', '2024-10-07 06:00:05'),
(1235, 'App\\Models\\User', 161, 'auth_token', 'afe0dc8210b07ceb28947657a554bcd40da68f1ce3181f564a5fff4d741d0152', '[\"*\"]', NULL, NULL, '2024-10-07 06:00:16', '2024-10-07 06:00:16'),
(1236, 'App\\Models\\User', 161, 'auth_token', '0714992996984b40ee4d8db8e88c8a870120bb39d9ea96fde6c791e04137db3f', '[\"*\"]', NULL, NULL, '2024-10-07 06:00:25', '2024-10-07 06:00:25'),
(1237, 'App\\Models\\User', 161, 'auth_token', 'd6edb6fd8a621fdec57440d65549bef1ec7e542397c5c1d0eb7121005cea4d55', '[\"*\"]', NULL, NULL, '2024-10-07 06:00:34', '2024-10-07 06:00:34'),
(1238, 'App\\Models\\User', 161, 'auth_token', 'd3282f2190df7bde4640ceed975f13ba928ab7602f46394514d80400348a098d', '[\"*\"]', NULL, NULL, '2024-10-07 06:00:44', '2024-10-07 06:00:44'),
(1239, 'App\\Models\\User', 161, 'auth_token', 'bac31bb908b41cb26f8c98f6392d6d932f74176a2a7cc29a52f08a35f8992323', '[\"*\"]', NULL, NULL, '2024-10-07 06:00:55', '2024-10-07 06:00:55'),
(1240, 'App\\Models\\User', 161, 'auth_token', '5b829e5171d0629d5de994a2e1f2a065e1bd72eb0d6aa47a1a287c57d8c505a0', '[\"*\"]', NULL, NULL, '2024-10-07 06:01:10', '2024-10-07 06:01:10'),
(1241, 'App\\Models\\User', 130, 'auth_token', 'cbe94680185d1d1edf9b9fa1c61eab21d5c8a024e10672ca8c330b7c0ca731cd', '[\"*\"]', '2024-10-07 06:01:56', NULL, '2024-10-07 06:01:29', '2024-10-07 06:01:56'),
(1246, 'App\\Models\\User', 161, 'auth_token', 'c288bb5ac3dc47652fd215ae823b0f1ab5d4c0941c78f202928647063cb8bf60', '[\"*\"]', NULL, NULL, '2024-10-07 06:09:59', '2024-10-07 06:09:59'),
(1250, 'App\\Models\\User', 161, 'auth_token', '113de055f63ec32a54f066a334e5b0cb7b4f646f5b9bf40fa03a6e46ad5dbcb0', '[\"*\"]', NULL, NULL, '2024-10-07 06:41:32', '2024-10-07 06:41:32'),
(1251, 'App\\Models\\User', 130, 'auth_token', '5d4ba5d1d870272b350acccaf836c17b72618af14a14e9b86eb6c96fe26837cf', '[\"*\"]', '2024-10-07 09:23:43', NULL, '2024-10-07 06:41:44', '2024-10-07 09:23:43'),
(1253, 'App\\Models\\User', 161, 'auth_token', 'dbd8fe9f2d28076fc64d4c2308af9c4065fb9e7f3b57a51ea254f52b82abd642', '[\"*\"]', NULL, NULL, '2024-10-07 06:45:12', '2024-10-07 06:45:12'),
(1254, 'App\\Models\\User', 130, 'auth_token', 'c6f5b5b5c5644c4f06fa73fcfa473a74ac41fcdd22fbb764510debe05fb1aefd', '[\"*\"]', '2024-10-07 11:37:59', NULL, '2024-10-07 07:13:45', '2024-10-07 11:37:59'),
(1255, 'App\\Models\\User', 161, 'auth_token', 'f3588d9666c926292189272694f585479906116d4d035a46d6de476ee7624370', '[\"*\"]', '2024-10-10 09:49:53', NULL, '2024-10-07 08:52:42', '2024-10-10 09:49:53'),
(1258, 'App\\Models\\User', 130, 'auth_token', '8de16d77757044355bfbeea7fe1916d1a828b4aa6bc78c11b2594948ecf15b30', '[\"*\"]', '2024-10-12 14:37:34', NULL, '2024-10-07 12:22:25', '2024-10-12 14:37:34'),
(1261, 'App\\Models\\User', 161, 'auth_token', '8df86b75394dd286e6af3560da414f6032c785eb63ab21ddc2fbe630fabcdcef', '[\"*\"]', NULL, NULL, '2024-10-08 11:53:49', '2024-10-08 11:53:49'),
(1262, 'App\\Models\\User', 161, 'auth_token', '8aecc17e0b5467da8a122a679300fcb38e696f958ec944362073a186b5a65612', '[\"*\"]', NULL, NULL, '2024-10-08 11:54:04', '2024-10-08 11:54:04'),
(1263, 'App\\Models\\User', 130, 'auth_token', '1b93f838108ea8b382271df1c9ea17632e326cc29d34e2f243e1ff8c0430b698', '[\"*\"]', '2024-10-08 12:10:17', NULL, '2024-10-08 11:56:08', '2024-10-08 12:10:17'),
(1264, 'App\\Models\\User', 150, 'auth_token', 'fccb18d60604af32c9101b1d1de8cc27dcdbc083ea41e2ac2d5c61e59e29a452', '[\"*\"]', NULL, NULL, '2024-10-09 06:00:02', '2024-10-09 06:00:02'),
(1265, 'App\\Models\\User', 150, 'auth_token', '405d271f0f668a387ad3ad573ec32ea560b8a34fa2ac0214f3787f5922b28d74', '[\"*\"]', NULL, NULL, '2024-10-09 06:02:44', '2024-10-09 06:02:44'),
(1266, 'App\\Models\\User', 150, 'auth_token', 'b1b7219240663402b13162e7f281ecadf1a4e5bd1c0801fc9b3b20955f7273a3', '[\"*\"]', NULL, NULL, '2024-10-09 06:02:56', '2024-10-09 06:02:56'),
(1267, 'App\\Models\\User', 169, 'auth_token', '32c63df5082ea1ec9b2110148b42d56f7d5a83017db3b441f43d115b767ac02e', '[\"*\"]', NULL, NULL, '2024-10-09 06:11:28', '2024-10-09 06:11:28'),
(1268, 'App\\Models\\User', 170, 'auth_token', '95160f0749ed504ffa5738583784569407ce167d31b9b0037d55ce107add0358', '[\"*\"]', NULL, NULL, '2024-10-09 06:30:45', '2024-10-09 06:30:45'),
(1269, 'App\\Models\\User', 171, 'auth_token', 'c9dfee1a39697b3a505ffa486632fce605a8b460cad60917e9dbb70714abd77d', '[\"*\"]', NULL, NULL, '2024-10-09 07:20:27', '2024-10-09 07:20:27'),
(1270, 'App\\Models\\User', 172, 'auth_token', '6d542166542f126e76ea66a94b21dc66eda979e7de23a472c37adeb5914b2983', '[\"*\"]', NULL, NULL, '2024-10-09 09:28:48', '2024-10-09 09:28:48'),
(1271, 'App\\Models\\User', 172, 'auth_token', 'bb56e3eb2d4eee1851ea036d3e073609b7dd8347ed03d1d43bfb613fdc5971a0', '[\"*\"]', NULL, NULL, '2024-10-09 09:31:17', '2024-10-09 09:31:17'),
(1272, 'App\\Models\\User', 173, 'auth_token', 'f15c044966c43d78ce8b4a853b24211e6b5c8ae03738767f4430f2762743dde7', '[\"*\"]', NULL, NULL, '2024-10-09 09:34:23', '2024-10-09 09:34:23'),
(1273, 'App\\Models\\User', 173, 'auth_token', '920b92b2b610234914bdb6fcaf2136ed00cd251629342b64d3a813a56454825f', '[\"*\"]', NULL, NULL, '2024-10-09 09:34:52', '2024-10-09 09:34:52'),
(1274, 'App\\Models\\User', 173, 'auth_token', 'bc974c4b1ce9877ab985ebc5e89e6601a9b71d25f52b266112e8cfc31aae047e', '[\"*\"]', NULL, NULL, '2024-10-09 09:39:04', '2024-10-09 09:39:04'),
(1275, 'App\\Models\\User', 174, 'auth_token', '93d516d26dbb1099882e2d89ee21c47cf23ca61f9a6d19dd380e9d7c75685845', '[\"*\"]', NULL, NULL, '2024-10-09 09:54:31', '2024-10-09 09:54:31'),
(1276, 'App\\Models\\User', 175, 'auth_token', 'f48a7ca26ca2f3f98765df1066b99d6895f48835b76d3ca8f48b298dd5275cda', '[\"*\"]', NULL, NULL, '2024-10-09 10:06:20', '2024-10-09 10:06:20'),
(1277, 'App\\Models\\User', 173, 'auth_token', 'c42dacebc7ce46b1fe01de5b23e6dc20b57719deb70d5a8b72d0e2b440934a33', '[\"*\"]', NULL, NULL, '2024-10-09 10:45:00', '2024-10-09 10:45:00'),
(1278, 'App\\Models\\User', 173, 'auth_token', '5dc60131482823d840e6243a5a2df138f0a4209e7a17c850d88d20d62b33e413', '[\"*\"]', NULL, NULL, '2024-10-09 10:46:48', '2024-10-09 10:46:48'),
(1279, 'App\\Models\\User', 1, 'auth_token', '61b851ee8ef4842ff2072a42ccaaf3684b60b94f9b3e49ae4ab17ac9d0d04d5d', '[\"*\"]', NULL, NULL, '2024-10-09 11:05:38', '2024-10-09 11:05:38'),
(1280, 'App\\Models\\User', 173, 'auth_token', '86d18501dac9ad0eb92a6717911323611cabc83d78f5edb6a268e2100369c010', '[\"*\"]', NULL, NULL, '2024-10-09 11:09:42', '2024-10-09 11:09:42'),
(1281, 'App\\Models\\User', 173, 'auth_token', 'a429876fda9450d85f4974f6004c7312cce0a7396484fd45c20edbc3064195da', '[\"*\"]', NULL, NULL, '2024-10-09 11:09:51', '2024-10-09 11:09:51'),
(1282, 'App\\Models\\User', 173, 'auth_token', '99866a6faed079b3fca80dc476c9c808e2a53c004d41d5ee9b05febd6d637231', '[\"*\"]', NULL, NULL, '2024-10-09 11:09:54', '2024-10-09 11:09:54'),
(1283, 'App\\Models\\User', 176, 'auth_token', '45b1bdaea9e9e98537286f9988386bd92d457b216ac2e27aaa2e65294194fd12', '[\"*\"]', NULL, NULL, '2024-10-09 12:53:08', '2024-10-09 12:53:08'),
(1284, 'App\\Models\\User', 176, 'auth_token', 'cf930ff016d2df7f09af807562e231fba3e685469306b83e45ade2a8b2024b25', '[\"*\"]', NULL, NULL, '2024-10-09 13:02:49', '2024-10-09 13:02:49'),
(1285, 'App\\Models\\User', 1, 'auth_token', '89e6763a3c4cc28831df828502a4a559f618fd944c8ac2582a49ae8b1daf2861', '[\"*\"]', NULL, NULL, '2024-10-09 13:08:57', '2024-10-09 13:08:57'),
(1286, 'App\\Models\\User', 176, 'auth_token', '07db781529013805feeccda590b0298d649889be69ed7dfb165360dc88815aa0', '[\"*\"]', NULL, NULL, '2024-10-09 13:13:26', '2024-10-09 13:13:26'),
(1287, 'App\\Models\\User', 1, 'auth_token', 'b190f03d8dedb143c532c77911bdc4cb3491337406b2c452814028f952eed0a2', '[\"*\"]', NULL, NULL, '2024-10-09 13:17:52', '2024-10-09 13:17:52'),
(1288, 'App\\Models\\User', 8, 'auth_token', '137194cafb51cac2ca34d75337a88fedd18969acaee1bc965459ccbd812f1dc0', '[\"*\"]', '2024-10-10 19:30:54', NULL, '2024-10-09 19:32:06', '2024-10-10 19:30:54'),
(1289, 'App\\Models\\User', 130, 'auth_token', '6eb08796186b12f62b1b1fee2596dacaab9887c1e2647c7a4e89f971ffc87f30', '[\"*\"]', '2024-10-10 04:45:53', NULL, '2024-10-10 04:45:39', '2024-10-10 04:45:53'),
(1291, 'App\\Models\\User', 3, 'auth_token', '5072b5b3aa57e5cdac2add9575a4aa6a2a03b44c4ef000f4e83ac08815e3548a', '[\"*\"]', '2024-10-11 09:28:12', NULL, '2024-10-10 10:01:28', '2024-10-11 09:28:12'),
(1293, 'App\\Models\\User', 130, 'auth_token', 'c529989ed20f4d1a520cc0c2f2aa10c2256fd9bc040adc98ff474288113aedbe', '[\"*\"]', '2024-10-15 06:36:01', NULL, '2024-10-11 09:34:12', '2024-10-15 06:36:01'),
(1294, 'App\\Models\\User', 8, 'auth_token', '0f56a40aa6753b8a697a9c1c2adeb277bd2912d839a91e3c3e271463238794a7', '[\"*\"]', '2024-10-17 20:16:08', NULL, '2024-10-11 12:13:06', '2024-10-17 20:16:08'),
(1295, 'App\\Models\\User', 130, 'auth_token', 'a4edd5c5d9eb33bb300f831e98364d337f7481f6da875cbc4cb394d7739a52ab', '[\"*\"]', '2024-10-18 12:14:08', NULL, '2024-10-15 04:54:06', '2024-10-18 12:14:08'),
(1296, 'App\\Models\\User', 130, 'auth_token', 'f7851f303ef110aa71c4ad7ea009db94b99b73f2e6a5bcb47fe34a051afd314a', '[\"*\"]', '2024-10-19 07:03:14', NULL, '2024-10-15 04:59:19', '2024-10-19 07:03:14'),
(1298, 'App\\Models\\User', 130, 'auth_token', '366ba8b43a91b90b9d0b4f3d979a51e681ec9a0981bd5195daa1565b4b86dcc0', '[\"*\"]', '2024-10-19 04:29:54', NULL, '2024-10-18 06:19:57', '2024-10-19 04:29:54'),
(1299, 'App\\Models\\User', 130, 'auth_token', '1ec1d95000013f08d63b34a2bc43dd597c4d58ae363c7253cf17b6024db20855', '[\"*\"]', '2024-10-18 13:07:53', NULL, '2024-10-18 12:32:21', '2024-10-18 13:07:53'),
(1300, 'App\\Models\\User', 178, 'auth_token', '7301a4536e3cb179388a588349889dcbb2f3fb8e869a63e8a0650f4150adae1a', '[\"*\"]', NULL, NULL, '2024-10-19 04:49:54', '2024-10-19 04:49:54'),
(1302, 'App\\Models\\User', 179, 'auth_token', 'd5a891332d90e5aa1469d92cb6ecd4f089259b188d600055e65cceca5b09d3a3', '[\"*\"]', NULL, NULL, '2024-10-19 07:34:36', '2024-10-19 07:34:36'),
(1303, 'App\\Models\\User', 179, 'auth_token', 'bbe8cf23cc4ba2de9ce88020dcd21129617ee8ae2738749fc3a37adc852735ef', '[\"*\"]', '2024-10-23 11:19:06', NULL, '2024-10-19 07:34:58', '2024-10-23 11:19:06'),
(1304, 'App\\Models\\User', 8, 'auth_token', 'facec91601df2d701aa7307947ed9e4bd1e8a7fd3c22a2ef2412a5a3449b9625', '[\"*\"]', '2024-10-26 12:27:45', NULL, '2024-10-19 21:51:35', '2024-10-26 12:27:45'),
(1310, 'App\\Models\\User', 161, 'auth_token', 'b76f83f66887d18b13b9b1c70c2c75131b616bb99f0a2dcc7a9d110099b76b38', '[\"*\"]', '2024-10-24 04:41:15', NULL, '2024-10-23 11:23:04', '2024-10-24 04:41:15'),
(1312, 'App\\Models\\User', 179, 'auth_token', '1c79282f143ed07e2d4298383ef6b463348290cf322612047a05c2df7ad2d0e5', '[\"*\"]', '2024-11-08 13:35:42', NULL, '2024-10-24 04:41:34', '2024-11-08 13:35:42'),
(1314, 'App\\Models\\User', 159, 'auth_token', '3164e2bea7dc198089dec17134413d261be0d7f2534881933ad2ed2fa3d24ebc', '[\"*\"]', '2024-10-24 10:33:21', NULL, '2024-10-24 10:13:22', '2024-10-24 10:33:21'),
(1315, 'App\\Models\\User', 181, 'auth_token', '45555aa9d43833d75da86bda60576dee6fb2acbafd42cae67f8412e7da911855', '[\"*\"]', NULL, NULL, '2024-10-24 10:19:02', '2024-10-24 10:19:02'),
(1316, 'App\\Models\\User', 179, 'auth_token', 'dcdc3643c06e8e924316ed180575ba307b02549662a134c30e6032c8c92917f2', '[\"*\"]', NULL, NULL, '2024-10-24 12:55:53', '2024-10-24 12:55:53'),
(1317, 'App\\Models\\User', 182, 'auth_token', '48951f80d3b260553eb92bb819d667a142a03416f4112a86c0ca2536ad756fc7', '[\"*\"]', NULL, NULL, '2024-10-25 07:08:03', '2024-10-25 07:08:03'),
(1320, 'App\\Models\\User', 81, 'auth_token', '54180b461033d0ef390e21a8668e531c87c9d800f0dcd36cdda9958d0eb00e93', '[\"*\"]', '2024-10-26 09:55:05', NULL, '2024-10-26 09:22:49', '2024-10-26 09:55:05'),
(1321, 'App\\Models\\User', 81, 'auth_token', '551abaa8f21fd0299566273c93ea0b6f94f244194e41fb9658de88ead94f48b4', '[\"*\"]', '2024-10-26 11:00:56', NULL, '2024-10-26 10:01:12', '2024-10-26 11:00:56'),
(1322, 'App\\Models\\User', 81, 'auth_token', 'e7e0a6aed044e167da6be9e950d9341743b5df7dcfbbd639bdee8ecfb91ba337', '[\"*\"]', '2024-10-26 11:42:18', NULL, '2024-10-26 11:24:12', '2024-10-26 11:42:18'),
(1323, 'App\\Models\\User', 81, 'auth_token', 'b5b2777bc4aeb64126bca286219e1d474a840a253b20490677643873e655e04d', '[\"*\"]', '2024-11-22 11:46:36', NULL, '2024-10-26 11:47:33', '2024-11-22 11:46:36'),
(1325, 'App\\Models\\User', 81, 'auth_token', '8e7fa8cb25f3e5fa0a66b3714f9fd9920021a7191502a12a231a5542e4950b64', '[\"*\"]', '2024-10-26 13:13:23', NULL, '2024-10-26 12:20:15', '2024-10-26 13:13:23'),
(1326, 'App\\Models\\User', 8, 'auth_token', 'bdcec4c21473df39b946c34f9b31ce98ae22011d5a52dc60d973ab487bce7e74', '[\"*\"]', '2024-10-26 12:32:22', NULL, '2024-10-26 12:29:40', '2024-10-26 12:32:22'),
(1327, 'App\\Models\\User', 81, 'auth_token', '7ec78dbfef7c7ee90b75472c3872a5138751f3da85e88fd00fcadaa99beb28f3', '[\"*\"]', '2024-10-30 08:53:36', NULL, '2024-10-26 12:32:43', '2024-10-30 08:53:36'),
(1328, 'App\\Models\\User', 183, 'auth_token', 'c16c556befe18a4ba88bfa767ba9af7621328844785fe8b39cdc1c21e8b0f937', '[\"*\"]', NULL, NULL, '2024-10-29 07:24:53', '2024-10-29 07:24:53'),
(1330, 'App\\Models\\User', 74, 'auth_token', '7d55c6383679bf33405095de6bebc4e8bdf2e89dc439c6de96123a2a59ea364a', '[\"*\"]', '2024-11-09 07:22:24', NULL, '2024-10-30 04:57:18', '2024-11-09 07:22:24'),
(1331, 'App\\Models\\User', 81, 'auth_token', 'eb66bcde06f43d6047e19605c7424881f2989d7824f00a69fa47deb30d6a984b', '[\"*\"]', '2024-10-30 07:46:40', NULL, '2024-10-30 07:42:41', '2024-10-30 07:46:40'),
(1332, 'App\\Models\\User', 81, 'auth_token', 'e0526885fc46b4582c91d5134ff8f1897e4e36a692850e772b1c87b9a1fc1fef', '[\"*\"]', '2024-10-30 10:16:45', NULL, '2024-10-30 07:56:47', '2024-10-30 10:16:45'),
(1335, 'App\\Models\\User', 161, 'auth_token', '0dcc4f8adff27347b418345bc7d1ec4bfdaa2697a4317c0d51dcc7c8f93b45ea', '[\"*\"]', NULL, NULL, '2024-11-04 05:35:59', '2024-11-04 05:35:59'),
(1336, 'App\\Models\\User', 161, 'auth_token', 'b61dc5043a5bd85c1bfd905dc05e9b3d29877f94af54cf2a9b37184cd42dc065', '[\"*\"]', NULL, NULL, '2024-11-04 05:36:18', '2024-11-04 05:36:18'),
(1337, 'App\\Models\\User', 161, 'auth_token', 'e02946f1a7b81f01156a432276faf462afe86629476a27078d17971ea6ab6bfb', '[\"*\"]', NULL, NULL, '2024-11-04 05:36:28', '2024-11-04 05:36:28'),
(1338, 'App\\Models\\User', 161, 'auth_token', 'ff5de6083b624568abb0408c0fe6c09e39d33e82f36ef7f25ce6f2456e5a3d90', '[\"*\"]', NULL, NULL, '2024-11-04 05:36:34', '2024-11-04 05:36:34'),
(1340, 'App\\Models\\User', 8, 'auth_token', '368c4633ec802ca3d32c62531f2ea2f60a1d7a10a943297f8d52ec5e8c1ab870', '[\"*\"]', NULL, NULL, '2024-11-04 20:16:02', '2024-11-04 20:16:02'),
(1341, 'App\\Models\\User', 185, 'auth_token', 'dd00e51237a9b91eac0d764291ac36370b6966e6eafb4f54aedc5473a9d85b82', '[\"*\"]', NULL, NULL, '2024-11-05 09:16:31', '2024-11-05 09:16:31'),
(1343, 'App\\Models\\User', 146, 'auth_token', '16fa0c115db81993eb94705d7b034b0c3e7518ec7cc8f923bb730e31570f021d', '[\"*\"]', NULL, NULL, '2024-11-06 11:20:05', '2024-11-06 11:20:05'),
(1345, 'App\\Models\\User', 186, 'auth_token', 'f7763ecc38df469d8a0f72865832a7c973f99d40253eb3cce6e3fbe6e4b7f458', '[\"*\"]', NULL, NULL, '2024-11-08 13:34:32', '2024-11-08 13:34:32'),
(1346, 'App\\Models\\User', 186, 'auth_token', '39ea8f4441da12e711ae7af762c40f37fd690284086c8562b56317a00e059f80', '[\"*\"]', '2024-11-09 09:53:50', NULL, '2024-11-08 13:36:46', '2024-11-09 09:53:50'),
(1347, 'App\\Models\\User', 186, 'auth_token', 'bee2c70d309748371461c094c22479e5ffee2f977f500fc7c308b3491ba7a88b', '[\"*\"]', NULL, NULL, '2024-11-09 06:36:26', '2024-11-09 06:36:26'),
(1348, 'App\\Models\\User', 186, 'auth_token', 'fa733ad3bfb814b01c411e787b8b2b7a515a2fb88c9fb46010d5c904f5413365', '[\"*\"]', NULL, NULL, '2024-11-09 06:36:44', '2024-11-09 06:36:44'),
(1349, 'App\\Models\\User', 186, 'auth_token', '9fd76ceef7dc85ac0b25d1c3f1dad19069067eabac8712754bfe85575484dfa6', '[\"*\"]', NULL, NULL, '2024-11-09 06:36:53', '2024-11-09 06:36:53'),
(1350, 'App\\Models\\User', 186, 'auth_token', '43e25832e29548af674264040e47ce05275d3797d2e3809600b60701b4dd42e8', '[\"*\"]', NULL, NULL, '2024-11-09 06:37:12', '2024-11-09 06:37:12'),
(1351, 'App\\Models\\User', 186, 'auth_token', '0fa5d402199442e730c9c679a5798c508d7344833af2f505caaeb3feefd84c1c', '[\"*\"]', NULL, NULL, '2024-11-09 07:21:45', '2024-11-09 07:21:45'),
(1352, 'App\\Models\\User', 186, 'auth_token', 'a7553856e3705940ed73b00881e7cc135f784533b71fd4d4dd6533f862d476d1', '[\"*\"]', NULL, NULL, '2024-11-09 07:23:12', '2024-11-09 07:23:12'),
(1354, 'App\\Models\\User', 187, 'auth_token', 'ed3efe60723d9e52bd1927375f21f75bcbb2c5b611667180f05010b1de32bccc', '[\"*\"]', '2024-11-09 11:06:01', NULL, '2024-11-09 10:23:44', '2024-11-09 11:06:01'),
(1356, 'App\\Models\\User', 77, 'auth_token', 'd805660457fa28850245a8553f481e0b6b4fd8f502f936668648a010ade31554', '[\"*\"]', '2024-11-11 11:30:48', NULL, '2024-11-09 11:43:50', '2024-11-11 11:30:48');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1360, 'App\\Models\\User', 188, 'auth_token', '3ec67adfb40c470dba4a08b7d9f63987cf82677242c0ea778a5e242cfbfb71a9', '[\"*\"]', '2024-11-13 04:36:32', NULL, '2024-11-11 08:58:04', '2024-11-13 04:36:32'),
(1362, 'App\\Models\\User', 189, 'auth_token', '8ba067d3b5c075b6a45b863163c56db6a1ead812f44c28de35a6b8f5445be0b7', '[\"*\"]', NULL, NULL, '2024-11-11 12:57:44', '2024-11-11 12:57:44'),
(1363, 'App\\Models\\User', 189, 'auth_token', '38eecb934add5d6a68556db90773225d849f5be5e712659a548d6f96792774bb', '[\"*\"]', '2024-11-11 13:25:55', NULL, '2024-11-11 12:58:08', '2024-11-11 13:25:55'),
(1364, 'App\\Models\\User', 190, 'auth_token', 'dbef8ca354227b9d4ec81233dd61cc9428f3cf1e13ef2b3aa6b45b248e98704c', '[\"*\"]', NULL, NULL, '2024-11-12 05:07:16', '2024-11-12 05:07:16'),
(1365, 'App\\Models\\User', 190, 'auth_token', 'f2ac82f670ccf618f97d0a7e5b21678f91b8f689830a8384b5a0d9a620cee9dc', '[\"*\"]', '2024-11-12 09:00:42', NULL, '2024-11-12 05:07:34', '2024-11-12 09:00:42'),
(1366, 'App\\Models\\User', 77, 'auth_token', '2f8c57a78c5c528dd4037dee6319deeda15a2847811ff91386bad8a973bd0a68', '[\"*\"]', '2024-11-12 12:53:24', NULL, '2024-11-12 10:02:51', '2024-11-12 12:53:24'),
(1367, 'App\\Models\\User', 191, 'auth_token', '1ff6dd22200c91d9c41951b3cf513a5c73d4ccdad2429614ef3b07a5187d23d5', '[\"*\"]', NULL, NULL, '2024-11-12 13:19:55', '2024-11-12 13:19:55'),
(1368, 'App\\Models\\User', 191, 'auth_token', '28ed5a2bd7b5cf9ab39a13f5bf6d19420d808927d89accd38b1c349d8f405454', '[\"*\"]', '2024-11-12 13:36:44', NULL, '2024-11-12 13:20:09', '2024-11-12 13:36:44'),
(1371, 'App\\Models\\User', 191, 'auth_token', '53419571fef8ff93269b15e353d28e0a22a992aac51379a2456ac6e3518bb4b7', '[\"*\"]', '2024-11-25 04:33:44', NULL, '2024-11-13 09:21:12', '2024-11-25 04:33:44'),
(1376, 'App\\Models\\User', 77, 'auth_token', 'a2031b627faef3a5fe44af1da25f6c4bf005edec33ca398f3414770045d0f26b', '[\"*\"]', '2024-11-23 11:53:25', NULL, '2024-11-20 12:04:40', '2024-11-23 11:53:25'),
(1377, 'App\\Models\\User', 81, 'auth_token', '6579e1fe926354174c95998d76ffd80864ed2f034922c34aac6f4c92309fa295', '[\"*\"]', '2024-11-20 13:29:56', NULL, '2024-11-20 13:25:15', '2024-11-20 13:29:56'),
(1378, 'App\\Models\\User', 81, 'auth_token', '7bc7e5b25726c902d7804d233c7ff4ca2f6d0b236c90a0a482adad162c40cb44', '[\"*\"]', '2024-11-22 12:00:30', NULL, '2024-11-20 13:31:06', '2024-11-22 12:00:30'),
(1386, 'App\\Models\\User', 77, 'auth_token', 'd349838bb05a67ba9fdbfa656e1d4daed47c9e17a8b1c414be195aadefa4200c', '[\"*\"]', NULL, NULL, '2024-11-21 06:48:36', '2024-11-21 06:48:36'),
(1387, 'App\\Models\\User', 81, 'auth_token', '84b28f0fea9fe4807c07f7950ae6c05baf35f0358701de78f963a0874364b2cd', '[\"*\"]', NULL, NULL, '2024-11-21 06:48:59', '2024-11-21 06:48:59'),
(1389, 'App\\Models\\User', 81, 'auth_token', 'cef2ccbd2e9cff6750ce80cf5f637c3e3b4808632af025e5a1af60128b3a8cee', '[\"*\"]', '2024-11-22 04:09:28', NULL, '2024-11-21 08:55:22', '2024-11-22 04:09:28'),
(1398, 'App\\Models\\User', 191, 'auth_token', 'b28ae75a7a8381c5a87f9c0b1c26c8b70f70ba7da89661f4d0a6b44981b1a28a', '[\"*\"]', NULL, NULL, '2024-11-22 09:25:42', '2024-11-22 09:25:42'),
(1399, 'App\\Models\\User', 191, 'auth_token', '17b1411728741a6d97d3db341f1ca8b311354274223356201281150d9103ca70', '[\"*\"]', NULL, NULL, '2024-11-22 09:26:04', '2024-11-22 09:26:04'),
(1404, 'App\\Models\\User', 74, 'auth_token', 'aca62e38963cce8411cb63a9da9a5e6e96b1c43bf7bb8a7879ec6b1bb1aed6b2', '[\"*\"]', NULL, NULL, '2024-11-22 10:56:57', '2024-11-22 10:56:57'),
(1406, 'App\\Models\\User', 187, 'auth_token', 'c765cbf8764c827df9a0d45de5d8662f9cad3a5aaa91a780b885642e0be87df4', '[\"*\"]', NULL, NULL, '2024-11-22 12:39:09', '2024-11-22 12:39:09'),
(1407, 'App\\Models\\User', 187, 'auth_token', '78151c878112e82138ba103659d4e32149d74d55790671ffa73e3c74aa3a7822', '[\"*\"]', NULL, NULL, '2024-11-22 12:39:32', '2024-11-22 12:39:32'),
(1409, 'App\\Models\\User', 77, 'auth_token', '2d76209ef264373353db5543c3f664955abe7e79382d4c221d72e861729c7caf', '[\"*\"]', '2024-11-22 12:50:39', NULL, '2024-11-22 12:48:36', '2024-11-22 12:50:39'),
(1411, 'App\\Models\\User', 8, 'auth_token', '2e09fc2ff0b7af2512e85644f80797dd91e5dde760559dca57753d0cf5b83e33', '[\"*\"]', NULL, NULL, '2024-11-22 13:17:18', '2024-11-22 13:17:18'),
(1412, 'App\\Models\\User', 8, 'auth_token', '649fa9bb4f401a8b7f721a3e3042811a085e8eed62c09a0d6687c55ef5df2d2c', '[\"*\"]', NULL, NULL, '2024-11-22 13:17:22', '2024-11-22 13:17:22'),
(1413, 'App\\Models\\User', 8, 'auth_token', 'eee8666648eebbe91ec7f297bc25458149ddd4339fcef4fdb8f7e7bc6e1c0def', '[\"*\"]', NULL, NULL, '2024-11-22 13:17:25', '2024-11-22 13:17:25'),
(1414, 'App\\Models\\User', 8, 'auth_token', '86af693216065c847159e9b1e90aa7a25283fda595502e207959895a8cd4ba59', '[\"*\"]', NULL, NULL, '2024-11-22 13:17:28', '2024-11-22 13:17:28'),
(1416, 'App\\Models\\User', 8, 'auth_token', '454562cb6ca579b206aaf2e2b93b753ae15ef56f626d775e3f13a9849e72c02c', '[\"*\"]', NULL, NULL, '2024-11-22 13:21:06', '2024-11-22 13:21:06'),
(1417, 'App\\Models\\User', 8, 'auth_token', 'b3281cf0544426c7c1c7affe1e028c84cc84a775012befd2bead48c73264d2d4', '[\"*\"]', NULL, NULL, '2024-11-22 13:21:07', '2024-11-22 13:21:07'),
(1418, 'App\\Models\\User', 8, 'auth_token', '5443799c31f3c7f71c8e91ad636ff87c2534e002d4fd3b2f51d6cd7e38b64e2e', '[\"*\"]', NULL, NULL, '2024-11-22 13:21:09', '2024-11-22 13:21:09'),
(1420, 'App\\Models\\User', 177, 'auth_token', '8664d28d0c5df907d5ce11fa268014ce23b845f66db70777a8bc9e4ba86ac31b', '[\"*\"]', '2024-11-23 13:35:34', NULL, '2024-11-22 16:09:28', '2024-11-23 13:35:34'),
(1421, 'App\\Models\\User', 8, 'auth_token', '11aac34941c2a7b05ddd4a86c5dc8ffc1ca60f53e427aa9174129a33e7c65705', '[\"*\"]', '2024-11-22 21:14:24', NULL, '2024-11-22 21:07:28', '2024-11-22 21:14:24'),
(1424, 'App\\Models\\User', 81, 'auth_token', 'b23d761a7e9746057a8c82cc8ce3191867c5997382f5a87a84bc0297bae82520', '[\"*\"]', '2024-11-23 09:02:40', NULL, '2024-11-23 05:46:18', '2024-11-23 09:02:40'),
(1432, 'App\\Models\\User', 195, 'auth_token', '5c578395512228884da59b2e4f9968154db45c0197af76593574dc1abd7ea636', '[\"*\"]', '2024-11-23 15:40:49', NULL, '2024-11-23 14:02:31', '2024-11-23 15:40:49'),
(1435, 'App\\Models\\User', 191, 'auth_token', '5f1fa54bc845d1a23f774d3ab7f8cff4baf10038f538b70cacc0e1b0f6f7698e', '[\"*\"]', NULL, NULL, '2024-11-25 04:32:45', '2024-11-25 04:32:45'),
(1436, 'App\\Models\\User', 188, 'auth_token', 'f8a203b6f864413cdf07eb85d5a513fff486c88afff66195c2784a3c2f53d840', '[\"*\"]', '2024-11-25 04:34:53', NULL, '2024-11-25 04:34:44', '2024-11-25 04:34:53'),
(1439, 'App\\Models\\User', 191, 'auth_token', '8516048fc60450f52d50b9c814979d70c132195ab4cf520d76fafde198cf7f1c', '[\"*\"]', NULL, NULL, '2024-11-25 04:57:00', '2024-11-25 04:57:00'),
(1440, 'App\\Models\\User', 3, 'auth_token', 'e5ff31270860b0ed03a66a095c782487f7164598df78f837cfa091f7717b569d', '[\"*\"]', '2024-11-25 10:25:01', NULL, '2024-11-25 04:58:37', '2024-11-25 10:25:01'),
(1441, 'App\\Models\\User', 81, 'auth_token', 'c44d7b8c39ec32fc5459845725e99a7cff12558fa75033df695d77ed0c9e8d9e', '[\"*\"]', '2024-11-25 06:55:22', NULL, '2024-11-25 05:09:43', '2024-11-25 06:55:22'),
(1442, 'App\\Models\\User', 8, 'auth_token', '053a95ad2e1976c007d74c8b98786f867d2bc52daa265185a4991557614e8190', '[\"*\"]', '2024-11-25 08:15:13', NULL, '2024-11-25 08:13:45', '2024-11-25 08:15:13');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL COMMENT 'decimal',
  `billing_interval` varchar(255) DEFAULT NULL COMMENT 'keep null now, not have functionlity',
  `billing_period` enum('day','monthly','yearly') NOT NULL,
  `trail_days` varchar(255) NOT NULL DEFAULT '0',
  `plan_status` enum('1','0') NOT NULL COMMENT 'active,inactive',
  `feature` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `price`, `billing_interval`, `billing_period`, `trail_days`, `plan_status`, `feature`, `created_at`, `updated_at`) VALUES
(1, 'Monthly', '3.99', NULL, 'monthly', '7', '1', '<ul>\r\n	<li><strong>Free Trial Access</strong>: Thi...</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', '2024-11-08 12:19:41', '2024-11-11 09:33:26'),
(2, 'Annual', '23.99', NULL, 'yearly', '90', '1', '<ul> 	<li><strong>Free Trial Access</strong>: Thi...', '2024-11-08 12:19:41', '2024-11-08 12:19:41'),
(3, 'Daily', '3.99', NULL, 'day', '0', '0', '<p>testing</p>', '2024-11-08 12:20:45', '2024-11-13 06:23:53');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `title`, `icon`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(3, 1, 'Kitesurfing', '1724393991.png', 'kitesurfing', '1724483788_image.webp', '1', '2024-11-25 06:09:31', '2024-08-24 07:16:28'),
(4, 1, 'Running', '1724393965.png', 'running', '1726602499_image.jpg', '1', '2024-11-25 06:09:31', '2024-09-17 19:48:19'),
(5, 1, 'Kayaking', '1724393952.png', 'kayaking', '1724483697_image.webp', '1', '2024-11-25 06:09:31', '2024-08-24 07:14:57'),
(6, 1, 'Basketball', '1724394035.png', 'basketball', '1724483651_image.webp', '1', '2024-09-16 18:19:01', '2024-08-24 07:14:11'),
(7, 1, 'Climbing', '1724394054.png', 'climbing', '1726602196_image.png', '1', '2024-09-17 19:43:16', '2024-09-17 19:43:16'),
(8, 1, 'Windsurfing', '1724394073.png', 'windsurfing', '1724483501_image.webp', '1', '2024-09-16 18:19:29', '2024-08-24 07:11:41'),
(9, 2, 'Dance class', '1724394263.png', 'danceclass', '1726685557_image.jpg', '1', '2024-09-18 18:52:37', '2024-09-18 18:52:37'),
(10, 2, 'Cooking class', '1724394248.png', 'cookingclass', '1726685634_image.jpg', '1', '2024-09-18 18:53:54', '2024-09-18 18:53:54'),
(15, 3, 'Picnic', '1724394336.png', 'picnic', '1726685784_image.jpg', '1', '2024-09-18 18:56:24', '2024-09-18 18:56:24'),
(18, 5, 'Museum', '1724394505.png', 'museum', '1726686571_image.png', '1', '2024-09-18 19:09:31', '2024-09-18 19:09:31'),
(19, 5, 'Exhibition', '1724394493.png', 'exhibition', '1726686608_image.jpg', '1', '2024-09-18 19:10:08', '2024-09-18 19:10:08'),
(20, 4, 'Concert', '1724394463.png', 'concert', '1726686387_image.jpg', '1', '2024-09-18 19:06:27', '2024-09-18 19:06:27'),
(21, 1, 'Cycling', '1724393864.png', 'coffie', '1726603411_image.png', '1', '2024-09-17 20:03:31', '2024-09-17 20:03:31'),
(22, 1, 'Padel', '1724393852.png', 'padel', '1726603358_image.png', '1', '2024-09-17 20:02:38', '2024-09-17 20:02:38'),
(23, 1, 'Tennis', '1724393836.png', 'tennis', '1726603293_image.png', '1', '2024-09-17 20:01:33', '2024-09-17 20:01:33'),
(24, 1, 'Yoga', '1724393805.png', 'yoga', '1726603232_image.jpg', '1', '2024-09-17 20:00:32', '2024-09-17 20:00:32'),
(25, 2, 'Networking', '1724394225.png', 'networking', '1726601797_image.png', '1', '2024-09-17 19:36:37', '2024-09-17 19:36:37'),
(26, 2, 'Pottery class', '1724394567.png', 'poterryclass', '1726603194_image.png', '1', '2024-09-18 18:54:23', '2024-09-18 18:54:23'),
(27, 2, 'Language exchange', '1724394202.png', 'languageexchange', '1726603153_image.png', '1', '2024-09-17 19:59:13', '2024-09-17 19:59:13'),
(28, 3, 'Coffee', '1724425549.png', 'Coffee', '1729946795_image.png', '1', '2024-10-26 12:46:35', '2024-10-26 12:46:35'),
(34, 1, 'Bouldering', '1726601535_icon.png', 'bouldering', '1726603018_image.png', '1', '2024-11-25 06:09:31', '2024-09-17 19:56:58'),
(35, 1, 'Football', '1726659780_icon.png', 'football', '1726602326_image.jpg', '1', '2024-11-25 06:09:31', '2024-09-18 11:43:00'),
(36, 4, 'Music festival', '1726686310_icon.png', 'musicfestival', '1726686310_image.jpg', '1', '2024-11-25 06:09:31', '2024-09-18 19:05:10'),
(37, 17, 'Painting', '1726604984_icon.png', 'painting', '1726604984_image.png', '1', '2024-11-25 06:09:31', '2024-09-17 20:29:44'),
(38, 17, 'Photography', '1726659868_icon.png', 'photography', '1726659868_image.jpg', '1', '2024-11-25 06:09:31', '2024-09-18 11:44:28'),
(39, 17, 'Crafting', '1726659966_icon.png', 'crafting', '1726659966_image.jpg', '1', '2024-11-25 06:09:31', '2024-09-18 11:46:06'),
(40, 17, 'Writing', '1726660068_icon.png', 'writing', '1726660068_image.jpg', '1', '2024-11-25 06:09:31', '2024-09-18 11:47:48'),
(41, 17, 'Reading', '1726660138_icon.png', 'reading', '1726660138_image.jpg', '1', '2024-11-25 06:09:31', '2024-09-18 11:48:58'),
(42, 17, 'Board games', '1726660197_icon.png', 'board games', '1726660197_image.jpg', '1', '2024-11-25 06:09:31', '2024-09-18 11:49:57'),
(43, 3, 'Beer', '1726685982_icon.png', 'beer', '1726685982_image.jpg', '1', '2024-11-25 06:09:31', '2024-09-18 18:59:42'),
(44, 3, 'Wine', '1726686100_icon.png', 'wine', '1726686100_image.jpg', '1', '2024-11-25 06:09:31', '2024-09-18 19:01:40'),
(45, 4, 'Standup Comedy', '1726686503_icon.png', 'standupcomedy', '1726686503_image.png', '1', '2024-11-25 06:09:31', '2024-09-18 19:08:23'),
(46, 3, 'Community', '1726860987_icon.png', 'community', '1726860987_image.jpg', '1', '2024-11-25 06:09:31', '2024-09-20 19:36:27');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `mandate_id` varchar(255) NOT NULL,
  `cart_token` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `plan_id` enum('1','2','3') DEFAULT NULL COMMENT 'subscription_plan_id,Monthly,Annual\r\n1=monthly,2=yearly,3=day',
  `amount` varchar(255) NOT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `canceled_date` varchar(255) DEFAULT NULL COMMENT 'cancel date because if user canecl between the month so give service all month',
  `trail_end_at` datetime DEFAULT NULL,
  `subscription_id` varchar(255) NOT NULL,
  `status` enum('active','inactive','canceled') NOT NULL COMMENT 'active,inactive,canceled',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `customer_id`, `mandate_id`, `cart_token`, `user_id`, `plan_id`, `amount`, `currency`, `transaction_id`, `start_date`, `end_date`, `canceled_date`, `trail_end_at`, `subscription_id`, `status`, `created_at`, `updated_at`) VALUES
(2, 'cst_JgUYrcYvdR', 'mdt_yhR5XpRTuS', 'tkn_DHz5Cwtest', 146, '1', '3.99', 'EUR', 'tr_VyNxBJmPkJ', '2025-09-06 18:07:43', '2025-10-06 18:07:43', NULL, '2024-11-05 18:07:43', 'sub_DLrjFHY9tC', 'active', '2024-10-29 12:37:47', '2024-11-08 00:14:42'),
(3, 'cst_jAEuWnWdBo', 'mdt_iZ38qFFuA3', 'tkn_Lge5Cwtest', 74, '1', '3.99', 'EUR', 'tr_TjVfJNL6Xj', '2025-08-01 10:30:14', '2025-09-01 10:30:14', NULL, '2024-11-06 10:30:14', 'sub_XefwHqQ3wP', 'active', '2024-10-30 05:01:27', '2024-11-09 00:16:48'),
(5, 'cst_Fap7DUykUP', 'mdt_SuxHqwWaAx', 'tkn_uFi5vAtest', 81, '2', '23.99', 'EUR', 'tr_kqwX2eeDeT', '2024-11-04 20:15:25', '2026-02-02 20:15:25', '2024-11-05 01:45:40', '2025-02-02 20:15:25', 'sub_VWrpuYmZkg', 'canceled', '2024-11-04 20:15:26', '2024-11-04 20:15:40'),
(7, 'cst_KG69MKLkne', 'mdt_TX33NycJ95', 'tkn_VKi5Cwtest', 186, NULL, '3.99', 'EUR', 'tr_LV4hiwFSd5', '2024-11-09 07:40:28', '2024-11-10 07:40:28', NULL, NULL, 'sub_j9uGxntRmB', 'inactive', '2024-11-08 13:39:08', '2024-11-11 00:00:06'),
(8, 'cst_5C8kTbJmDV', 'mdt_GSLZXqRXNz', 'tkn_VKi5Cwtest', 187, NULL, '3.99', 'EUR', 'tr_UryWmjyZU6', '2024-11-18 07:40:28', '2024-11-19 07:40:28', NULL, NULL, 'sub_XiG3KPW88V', 'inactive', '2024-11-09 10:36:46', '2024-11-20 00:00:06'),
(9, 'cst_fwVxpUUV7W', 'mdt_NgjoHiseNJ', 'tkn_VKi5Cwtest', 77, NULL, '3.99', 'EUR', 'tr_bXnzTMKczo', '2024-11-22 07:40:28', '2024-11-23 07:40:28', NULL, NULL, 'sub_JzRQgFQ7FV', 'inactive', '2024-11-09 12:01:21', '2024-11-24 00:00:07'),
(10, 'cst_shF7brQLFp', 'mdt_Mf9NTKrQk4', 'tkn_VKi5Cwtest', 189, NULL, '3.99', 'EUR', 'tr_br5xKsxcrE', '2024-11-20 07:40:28', '2024-11-21 07:40:28', NULL, NULL, 'sub_TxWqUV4SiK', 'inactive', '2024-11-11 13:25:55', '2024-11-22 00:00:07'),
(12, 'cst_domvAj862j', 'mdt_6pRLyjsqpA', 'tkn_VKi5Cwtest', 191, NULL, '3.99', 'EUR', 'tr_fSzcnkoyVw', '2024-11-21 07:40:28', '2024-11-22 07:40:28', NULL, NULL, 'sub_bdc2X3QovZ', 'inactive', '2024-11-12 13:36:45', '2024-11-23 00:00:08'),
(13, 'cst_3yeLenzPQc', 'mdt_3xgU2hf3bH', 'tkn_ZCnsKntest', 177, '1', '3.99', 'EUR', 'tr_2tEH5dwdK5', '2024-11-20 22:51:30', '2024-12-27 22:51:30', '2024-11-23 18:48:29', '2024-11-27 22:51:30', 'sub_spZ64AQNhZ', 'canceled', '2024-11-20 21:51:31', '2024-11-23 13:18:29'),
(14, 'cst_9AAYbTNt4i', 'mdt_nib7UH5U5R', 'tkn_Zn5sKntest', 8, '2', '23.99', 'EUR', 'tr_Xh7jeetQjK', '2024-11-24 20:04:57', '2026-02-22 20:04:57', '2024-11-25 00:36:27', '2025-02-22 20:04:57', 'sub_9SoCYeikF8', 'canceled', '2024-11-24 19:04:59', '2024-11-24 19:06:27');

-- --------------------------------------------------------

--
-- Table structure for table `testcron`
--

CREATE TABLE `testcron` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testcron`
--

INSERT INTO `testcron` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Test1', '2024-09-06 10:51:59', '2024-09-06 10:51:59'),
(2, 'Test2', '2024-09-06 10:51:59', '2024-09-06 10:51:59'),
(3, 'Test Insert', '2024-09-06 11:00:05', '2024-09-06 11:00:05'),
(4, 'Test Insert', '2024-09-06 11:01:04', '2024-09-06 11:01:04'),
(5, 'Test Insert', '2024-09-06 11:02:04', '2024-09-06 11:02:04'),
(6, 'Test Insert', '2024-09-06 11:03:03', '2024-09-06 11:03:03'),
(7, 'Test Insert', '2024-09-06 11:04:04', '2024-09-06 11:04:04'),
(8, 'Test Insert', '2024-09-06 11:05:04', '2024-09-06 11:05:04'),
(9, 'Test Insert', '2024-09-06 11:06:04', '2024-09-06 11:06:04'),
(10, 'Test Insert', '2024-09-06 11:07:03', '2024-09-06 11:07:03'),
(11, 'Test Insert', '2024-09-06 11:08:06', '2024-09-06 11:08:06'),
(12, 'Test Insert', '2024-09-06 11:09:03', '2024-09-06 11:09:03'),
(13, 'Test Insert', '2024-09-06 11:10:04', '2024-09-06 11:10:04'),
(14, 'Test Insert', '2024-09-06 11:11:03', '2024-09-06 11:11:03'),
(15, 'Test Insert', '2024-09-06 11:12:03', '2024-09-06 11:12:03'),
(16, 'Test Insert', '2024-09-06 11:13:03', '2024-09-06 11:13:03'),
(17, 'Test Insert', '2024-09-06 11:14:04', '2024-09-06 11:14:04'),
(18, 'Test Insert', '2024-09-06 11:15:05', '2024-09-06 11:15:05'),
(19, 'Test Insert', '2024-09-06 11:16:05', '2024-09-06 11:16:05'),
(20, 'Test Insert', '2024-09-06 11:17:03', '2024-09-06 11:17:03'),
(21, 'Test Insert', '2024-09-07 04:25:05', '2024-09-07 04:25:05'),
(22, 'Test Insert', '2024-09-07 04:26:04', '2024-09-07 04:26:04'),
(23, 'Test Insert', '2024-09-07 04:27:04', '2024-09-07 04:27:04'),
(24, 'Test Insert', '2024-09-07 04:28:03', '2024-09-07 04:28:03'),
(25, 'Test Insert', '2024-09-07 04:29:03', '2024-09-07 04:29:03'),
(26, 'Test Insert', '2024-09-07 04:30:04', '2024-09-07 04:30:04'),
(27, 'Test Insert', '2024-09-07 04:31:03', '2024-09-07 04:31:03'),
(28, 'Test Insert', '2024-09-07 04:32:03', '2024-09-07 04:32:03'),
(29, 'Test Insert', '2024-09-07 04:33:03', '2024-09-07 04:33:03'),
(30, 'Test Insert', '2024-09-07 04:34:03', '2024-09-07 04:34:03'),
(31, 'Test Insert', '2024-09-07 04:35:05', '2024-09-07 04:35:05'),
(32, 'Test Insert', '2024-09-07 04:36:03', '2024-09-07 04:36:03'),
(33, 'Test Insert', '2024-09-07 04:37:03', '2024-09-07 04:37:03'),
(34, 'Test Insert', '2024-09-07 04:38:04', '2024-09-07 04:38:04'),
(35, 'Test Insert', '2024-09-07 04:39:03', '2024-09-07 04:39:03'),
(36, 'Test Insert', '2024-09-07 04:40:05', '2024-09-07 04:40:05'),
(37, 'Test Insert', '2024-09-07 04:41:03', '2024-09-07 04:41:03'),
(38, 'Test Insert', '2024-09-07 04:42:04', '2024-09-07 04:42:04'),
(39, 'Test Insert', '2024-09-07 04:43:04', '2024-09-07 04:43:04'),
(40, 'Test Insert', '2024-09-09 12:40:06', '2024-09-09 12:40:06'),
(41, 'Test Insert', '2024-09-09 12:41:03', '2024-09-09 12:41:03'),
(42, 'Test Insert', '2024-09-09 12:42:04', '2024-09-09 12:42:04'),
(43, 'Test Insert', '2024-09-09 12:43:03', '2024-09-09 12:43:03'),
(44, 'Test Insert', '2024-09-09 12:45:05', '2024-09-09 12:45:05'),
(45, 'Test Insert', '2024-09-09 12:46:04', '2024-09-09 12:46:04'),
(46, 'Test Insert', '2024-09-09 12:47:04', '2024-09-09 12:47:04'),
(47, 'Test Insert', '2024-09-09 12:48:03', '2024-09-09 12:48:03'),
(48, 'Test Insert', '2024-09-09 12:49:04', '2024-09-09 12:49:04'),
(49, 'Test Insert', '2024-09-09 12:50:07', '2024-09-09 12:50:07'),
(50, 'Test Insert', '2024-09-09 12:51:04', '2024-09-09 12:51:04'),
(51, 'Test Insert', '2024-09-09 12:52:05', '2024-09-09 12:52:05'),
(52, 'Test Insert', '2024-09-09 12:53:04', '2024-09-09 12:53:04'),
(53, 'Permanently delete user run', '2024-10-10 13:11:03', '2024-10-10 13:11:03'),
(54, 'Permanently delete user run', '2024-10-11 00:00:07', '2024-10-11 00:00:07');

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `time_zone` varchar(255) NOT NULL,
  `gmt_offset` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`id`, `country_name`, `time_zone`, `gmt_offset`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'Asia/Kabul', 'UTC +04:30', '2024-11-19 05:03:44', '2024-11-20 09:51:21'),
(2, 'Albania', 'Europe/Tirane', 'UTC +01:00', '2024-11-19 05:03:44', '2024-11-20 09:55:08'),
(3, 'Algeria', 'Africa/Algiers', 'UTC +01:00', '2024-11-19 05:03:46', '2024-11-20 09:55:14'),
(4, 'American Samoa	', 'Pacific/Pago_Pago', 'UTC -11:00', '2024-11-19 05:03:46', '2024-11-20 09:55:21'),
(5, 'Andorra', 'Europe/Andorra', 'UTC +01:00', '2024-11-19 05:03:59', '2024-11-20 09:55:49'),
(6, 'Angola', 'Africa/Luanda', 'UTC +01:00', '2024-11-19 05:03:59', '2024-11-20 09:55:54'),
(7, 'Anguilla', 'America/Anguilla', 'UTC -04:00', '2024-11-19 05:04:01', '2024-11-20 09:56:00'),
(8, 'Antarctica', 'Antarctica/Casey', 'UTC +08:00', '2024-11-19 05:04:01', '2024-11-20 09:56:05'),
(9, 'Antarctica', 'Antarctica/Davis', 'UTC +07:00', '2024-11-19 05:04:10', '2024-11-20 09:56:10'),
(10, 'Antarctica', 'Antarctica/DumontDUrville', 'UTC +10:00', '2024-11-19 05:04:10', '2024-11-20 09:56:14'),
(11, 'Antarctica', 'Antarctica/Mawson', 'UTC +05:00', '2024-11-19 05:04:12', '2024-11-20 09:56:24'),
(12, 'Antarctica', 'Antarctica/McMurdo', 'UTC +13:00', '2024-11-19 05:04:12', '2024-11-20 09:56:31'),
(13, 'Antarctica', 'Antarctica/Palmer', 'UTC -03:00', '2024-11-19 05:05:06', '2024-11-20 09:56:36'),
(14, 'Antarctica', 'Antarctica/Rothera', 'UTC -03:00', '2024-11-19 05:05:06', '2024-11-20 09:56:44'),
(15, 'Antarctica', 'Antarctica/Syowa', 'UTC +03:00', '2024-11-19 05:05:08', '2024-11-20 09:56:49'),
(16, 'Antarctica', 'Antarctica/Troll', 'UTC', '2024-11-19 05:05:08', '2024-11-20 09:56:54'),
(17, 'Antarctica', 'Antarctica/Vostok', 'UTC +05:00', '2024-11-19 05:05:13', '2024-11-20 09:56:58'),
(18, 'Antigua and Barbuda	', 'America/Antigua', 'UTC -04:00', '2024-11-19 05:05:13', '2024-11-20 09:57:02'),
(19, 'Argentina', 'America/Argentina/Buenos_Aires', 'UTC -03:00', '2024-11-19 05:05:19', '2024-11-20 09:22:57'),
(20, 'Argentina', 'America/Argentina/Catamarca', 'UTC -03:00', '2024-11-19 05:05:19', '2024-11-20 09:23:09'),
(21, 'Argentina', 'America/Argentina/Cordoba', 'UTC -03:00', '2024-11-19 05:05:21', '2024-11-20 09:23:11'),
(22, 'Argentina', 'America/Argentina/Jujuy', 'UTC -03:00', '2024-11-19 05:05:21', '2024-11-20 09:23:14'),
(23, 'Argentina', 'America/Argentina/La_Rioja', 'UTC -03:00', '2024-11-19 05:05:26', '2024-11-20 09:23:24'),
(24, 'Argentina', 'America/Argentina/Mendoza', 'UTC -03:00', '2024-11-19 05:05:26', '2024-11-20 09:23:26'),
(25, 'Argentina', 'America/Argentina/Rio_Gallegos', 'UTC -03:00', '2024-11-19 05:05:29', '2024-11-20 09:23:29'),
(26, 'Argentina', 'America/Argentina/Salta', 'UTC -03:00', '2024-11-19 05:05:29', '2024-11-20 09:23:31'),
(27, 'Argentina', 'America/Argentina/San_Juan', 'UTC -03:00', '2024-11-19 05:05:35', '2024-11-20 09:23:33'),
(28, 'Argentina', 'America/Argentina/San_Luis', 'UTC -03:00', '2024-11-19 05:05:35', '2024-11-20 09:23:35'),
(29, 'Argentina', 'America/Argentina/Tucuman', 'UTC -03:00', '2024-11-19 05:05:40', '2024-11-20 09:23:37'),
(30, 'Argentina', 'America/Argentina/Ushuaia', 'UTC -03:00', '2024-11-19 05:05:40', '2024-11-20 09:23:39'),
(31, 'Armenia', 'Asia/Yerevan', 'UTC +04:00', '2024-11-19 05:05:44', '2024-11-20 09:24:07'),
(32, 'Aruba', 'America/Aruba', 'UTC -04:00', '2024-11-19 05:05:44', '2024-11-20 09:24:17'),
(33, 'Australia', 'Antarctica/Macquarie', 'UTC +11:00', '2024-11-19 05:05:51', '2024-11-20 09:24:23'),
(34, 'Australia', 'Australia/Adelaide', 'UTC +10:30', '2024-11-19 05:05:51', '2024-11-20 09:24:32'),
(35, 'Austria', 'Australia/Brisbane', 'UTC +10:00', '2024-11-19 05:05:53', '2024-11-20 09:25:28'),
(36, 'Austria', 'Australia/Broken_Hill', 'UTC +10:30', '2024-11-19 05:05:53', '2024-11-20 09:25:26'),
(37, 'Austria', 'Australia/Darwin', 'UTC +09:30', '2024-11-19 05:06:08', '2024-11-20 09:25:23'),
(38, 'Austria', 'Australia/Eucla', 'UTC +08:45', '2024-11-19 05:06:08', '2024-11-20 09:25:21'),
(39, 'Austria', 'Australia/Hobart', 'UTC +11:00', '2024-11-19 05:06:10', '2024-11-20 09:25:19'),
(40, 'Austria', 'Australia/Lindeman', 'UTC +10:00', '2024-11-19 05:06:10', '2024-11-20 09:25:11'),
(41, 'Austria', 'Australia/Lord_Howe', 'UTC +11:00', '2024-11-19 05:06:15', '2024-11-20 09:25:05'),
(42, 'Austria', 'Australia/Melbourne', 'UTC +11:00', '2024-11-19 05:06:15', '2024-11-20 09:25:04'),
(43, 'Austria', 'Australia/Perth', 'UTC +08:00', '2024-11-19 05:06:18', '2024-11-20 09:24:51'),
(44, 'Austria', 'Australia/Sydney', 'UTC +11:00', '2024-11-19 05:06:18', '2024-11-20 09:24:49'),
(45, 'Austria', 'Europe/Vienna', 'UTC +01:00', '2024-11-19 05:06:23', '2024-11-20 09:24:47'),
(46, 'Azerbaijan', 'Asia/Baku', 'UTC +04:00', '2024-11-19 05:06:23', '2024-11-20 09:57:42'),
(47, 'Bahamas', 'America/Nassau', 'UTC -05:00', '2024-11-19 05:06:26', '2024-11-20 09:57:51'),
(48, 'Bahrain', 'Asia/Bahrain', 'UTC +03:00', '2024-11-19 05:06:26', '2024-11-20 09:59:07'),
(49, 'Bangladesh', 'Asia/Dhaka', 'UTC +06:00', '2024-11-19 05:06:31', '2024-11-20 10:01:36'),
(50, 'Barbados', 'America/Barbados', 'UTC -04:00', '2024-11-19 05:06:31', '2024-11-20 10:01:40'),
(51, 'Belarus', 'Europe/Minsk', 'UTC +03:00', '2024-11-19 05:06:33', '2024-11-20 10:01:45'),
(52, 'Belgium', 'Europe/Brussels', 'UTC +01:00', '2024-11-19 05:06:33', '2024-11-20 10:01:50'),
(53, 'Belize', 'America/Belize', 'UTC -06:00', '2024-11-19 05:24:07', '2024-11-20 10:01:55'),
(54, 'Benin', 'Africa/Porto-Novo', 'UTC +01:00', '2024-11-19 05:24:07', '2024-11-20 10:02:00'),
(55, 'Bermuda', 'Atlantic/Bermuda', 'UTC -04:00', '2024-11-19 05:24:13', '2024-11-20 10:02:04'),
(56, 'Bhutan', 'Asia/Thimphu', 'UTC +06:00', '2024-11-19 05:24:13', '2024-11-20 10:02:10'),
(57, 'Bolivia, Plurinational State of	', 'America/La_Paz', 'UTC -04:00', '2024-11-19 05:24:18', '2024-11-20 10:02:17'),
(58, 'Bonaire, Sint Eustatius and Saba	', 'America/Kralendijk', 'UTC -04:00', '2024-11-19 05:24:18', '2024-11-20 10:02:24'),
(59, 'Bosnia and Herzegovina	', 'Europe/Sarajevo', 'UTC +01:00', '2024-11-19 05:24:21', '2024-11-20 10:02:32'),
(60, 'Botswana', 'Africa/Gaborone', 'UTC +02:00', '2024-11-19 05:24:21', '2024-11-20 10:02:36'),
(61, 'Brazil', 'America/Araguaina', 'UTC -03:00', '2024-11-19 05:24:26', '2024-11-20 10:02:41'),
(62, 'Brazil', 'America/Bahia', 'UTC -03:00', '2024-11-19 05:24:26', '2024-11-20 10:02:46'),
(63, 'Brazil', 'America/Belem', 'UTC -03:00', '2024-11-19 05:24:29', '2024-11-20 10:02:50'),
(64, 'Brazil', 'America/Boa_Vista', 'UTC -04:00', '2024-11-19 05:24:29', '2024-11-20 10:02:54'),
(65, 'Brazil', 'America/Campo_Grande', 'UTC -04:00', '2024-11-19 05:24:35', '2024-11-20 10:03:02'),
(66, 'Brazil', 'America/Cuiaba', 'UTC -04:00', '2024-11-19 05:24:35', '2024-11-20 10:03:08'),
(67, 'Brazil', 'America/Eirunepe', 'UTC -05:00', '2024-11-19 05:24:37', '2024-11-20 10:03:12'),
(68, 'Brazil', 'America/Fortaleza', 'UTC -03:00', '2024-11-19 05:24:37', '2024-11-20 10:03:16'),
(69, 'Brazil', 'America/Maceio', 'UTC -03:00', '2024-11-19 05:24:50', '2024-11-20 10:03:27'),
(70, 'Brazil', 'America/Manaus', 'UTC -04:00', '2024-11-19 05:24:50', '2024-11-20 10:03:33'),
(71, 'Brazil', 'America/Noronha', 'UTC -02:00', '2024-11-19 05:24:52', '2024-11-20 10:03:35'),
(72, 'Brazil', 'America/Porto_Velho', 'UTC -04:00', '2024-11-19 05:24:52', '2024-11-20 10:03:56'),
(73, 'Brazil', 'America/Recife', 'UTC -03:00', '2024-11-19 05:25:04', '2024-11-20 10:03:54'),
(74, 'Brazil', 'America/Rio_Branco', 'UTC -05:00', '2024-11-19 05:25:04', '2024-11-20 10:03:52'),
(75, 'Brazil', 'America/Santarem', 'UTC -03:00', '2024-11-19 05:25:06', '2024-11-20 10:03:50'),
(76, 'Brazil', 'America/Sao_Paulo', 'UTC -03:00', '2024-11-19 05:25:06', '2024-11-20 10:03:48'),
(77, 'British Indian Ocean Territory', 'Indian/Chagos', 'UTC +06:00', '2024-11-19 05:25:33', '2024-11-20 10:04:09'),
(78, 'Brunei Darussalam', 'Asia/Brunei', 'UTC +08:00', '2024-11-19 05:25:33', '2024-11-20 10:04:23'),
(79, 'Bulgaria', 'Europe/Sofia', 'UTC +02:00', '2024-11-19 05:25:35', '2024-11-20 10:04:27'),
(80, 'Burkina Faso', 'Africa/Ouagadougou', 'UTC', '2024-11-19 05:25:35', '2024-11-20 10:04:38'),
(81, 'Burundi', 'Africa/Bujumbura', 'UTC +02:00', '2024-11-19 05:25:40', '2024-11-20 10:04:43'),
(82, 'Cambodia', 'Asia/Phnom_Penh', 'UTC +07:00', '2024-11-19 05:25:40', '2024-11-20 10:04:47'),
(83, 'Cameroon', 'Africa/Douala', 'UTC +01:00', '2024-11-19 05:25:41', '2024-11-20 10:04:58'),
(84, 'Canada', 'America/Atikokan', 'UTC -05:00', '2024-11-19 05:25:41', '2024-11-20 10:05:06'),
(85, 'Canada', 'America/Blanc-Sablon', 'UTC -04:00', '2024-11-19 05:25:46', '2024-11-20 10:05:48'),
(86, 'Canada', 'America/Cambridge_Bay', 'UTC -07:00', '2024-11-19 05:25:46', '2024-11-20 10:05:50'),
(87, 'Canada', 'America/Creston', 'UTC -07:00', '2024-11-19 05:25:48', '2024-11-20 10:05:52'),
(88, 'Canada', 'America/Dawson', 'UTC -07:00', '2024-11-19 05:25:48', '2024-11-20 10:05:54'),
(89, 'Canada', 'America/Dawson_Creek', 'UTC -07:00', '2024-11-19 05:25:53', '2024-11-20 10:05:56'),
(90, 'Canada', 'America/Edmonton', 'UTC -07:00', '2024-11-19 05:25:53', '2024-11-20 10:05:57'),
(91, 'Canada', 'America/Fort_Nelson', 'UTC -07:00', '2024-11-19 05:25:55', '2024-11-20 10:05:59'),
(92, 'Canada', 'America/Glace_Bay', 'UTC -04:00', '2024-11-19 05:25:55', '2024-11-20 10:06:02'),
(93, 'Canada', 'America/Goose_Bay', 'UTC -04:00', '2024-11-19 05:26:07', '2024-11-20 10:06:03'),
(94, 'Canada', 'America/Halifax', 'UTC -04:00', '2024-11-19 05:26:07', '2024-11-20 10:06:05'),
(95, 'Canada', 'America/Inuvik', 'UTC -07:00', '2024-11-19 05:26:12', '2024-11-20 10:05:45'),
(96, 'Canada', 'America/Iqaluit', 'UTC -05:00', '2024-11-19 05:26:12', '2024-11-20 10:05:43'),
(97, 'Canada', 'America/Moncton', 'UTC -04:00', '2024-11-19 05:26:19', '2024-11-20 10:05:41'),
(98, 'Canada', 'America/Rankin_Inlet', 'UTC -06:00', '2024-11-19 05:26:19', '2024-11-20 10:05:39'),
(99, 'Canada', 'America/Regina', 'UTC -06:00', '2024-11-19 05:26:21', '2024-11-20 10:05:37'),
(100, 'Canada', 'America/Resolute', 'UTC -06:00', '2024-11-19 05:26:21', '2024-11-20 10:05:35'),
(101, 'Canada', 'America/St_Johns', 'UTC -03:30', '2024-11-19 05:37:24', '2024-11-20 10:05:33'),
(102, 'Canada', 'America/Swift_Current', 'UTC -06:00', '2024-11-19 05:37:24', '2024-11-20 10:05:31'),
(103, 'Canada', 'America/Toronto', 'UTC -05:00', '2024-11-19 05:37:26', '2024-11-20 10:05:29'),
(104, 'Canada', 'America/Vancouver', 'UTC -08:00', '2024-11-19 05:37:26', '2024-11-20 10:05:27'),
(105, 'Canada', 'America/Whitehorse', 'UTC -07:00', '2024-11-19 05:37:33', '2024-11-20 10:05:25'),
(106, 'Canada', 'America/Winnipeg', 'UTC -06:00', '2024-11-19 05:37:33', '2024-11-20 10:05:23'),
(107, 'Cape Verde', 'Atlantic/Cape_Verde', 'UTC -01:00', '2024-11-19 05:37:35', '2024-11-20 10:06:18'),
(108, 'Cayman Islands', 'America/Cayman', 'UTC -05:00', '2024-11-19 05:37:35', '2024-11-20 10:06:29'),
(109, 'Central African Republic', 'Africa/Bangui', 'UTC +01:00', '2024-11-19 05:37:46', '2024-11-20 10:06:35'),
(110, 'Chad', 'Africa/Ndjamena', 'UTC +01:00', '2024-11-19 05:37:46', '2024-11-20 10:06:41'),
(111, 'Chile', 'America/Punta_Arenas', 'UTC -03:00', '2024-11-19 05:37:48', '2024-11-20 10:06:51'),
(112, 'Chile', 'America/Santiago', 'UTC -03:00', '2024-11-19 05:37:48', '2024-11-20 10:06:56'),
(113, 'Chile', 'Pacific/Easter', 'UTC -05:00', '2024-11-19 05:38:00', '2024-11-20 10:07:02'),
(114, 'China', 'Asia/Shanghai', 'UTC +08:00', '2024-11-19 05:38:00', '2024-11-20 10:07:07'),
(115, 'China', 'Asia/Urumqi', 'UTC +06:00', '2024-11-19 05:38:02', '2024-11-20 10:07:12'),
(116, 'Christmas Island	', 'Indian/Christmas', 'UTC +07:00', '2024-11-19 05:38:02', '2024-11-20 10:07:19'),
(117, 'Cocos (Keeling) Islands', 'Indian/Cocos', 'UTC +06:30', '2024-11-19 05:38:09', '2024-11-20 10:08:03'),
(118, 'Colombia', 'America/Bogota', 'UTC -05:00', '2024-11-19 05:38:09', '2024-11-20 10:08:07'),
(119, 'Comoros', 'Indian/Comoro', 'UTC +03:00', '2024-11-19 05:38:11', '2024-11-20 10:08:10'),
(120, 'Congo', 'Africa/Brazzaville', 'UTC +01:00', '2024-11-19 05:38:11', '2024-11-20 10:08:15'),
(121, 'Congo, the Democratic Republic of the	', 'Africa/Kinshasa', 'UTC +01:00', '2024-11-19 05:38:25', '2024-11-20 10:08:19'),
(122, 'Congo, the Democratic Republic of the	', 'Africa/Lubumbashi', 'UTC +02:00', '2024-11-19 05:38:25', '2024-11-20 10:08:25'),
(123, 'Cook Islands	', 'Pacific/Rarotonga', 'UTC -10:00', '2024-11-19 05:38:27', '2024-11-20 10:08:29'),
(124, 'Costa Rica', 'America/Costa_Rica', 'UTC -06:00', '2024-11-19 05:38:27', '2024-11-20 10:09:03'),
(125, 'Croatia', 'Europe/Zagreb', 'UTC +01:00', '2024-11-19 05:38:38', '2024-11-20 10:09:10'),
(126, 'Cuba', 'America/Havana', 'UTC -05:00', '2024-11-19 05:38:38', '2024-11-20 10:09:19'),
(127, 'Curaçao', 'America/Curacao', 'UTC -04:00', '2024-11-19 05:38:40', '2024-11-20 10:09:28'),
(128, 'Cyprus', 'Asia/Famagusta', 'UTC +02:00', '2024-11-19 05:38:40', '2024-11-20 10:09:31'),
(129, 'Cyprus', 'Asia/Nicosia', 'UTC +02:00', '2024-11-19 05:38:50', '2024-11-20 10:09:36'),
(130, 'Czech Republic', 'Europe/Prague', 'UTC +01:00', '2024-11-19 05:38:50', '2024-11-20 10:09:50'),
(131, 'Côte d\'Ivoire', 'Africa/Abidjan', 'UTC', '2024-11-19 05:38:52', '2024-11-20 10:09:52'),
(132, 'Denmark', 'Europe/Copenhagen', 'UTC +01:00', '2024-11-19 05:38:52', '2024-11-20 10:09:57'),
(133, 'Djibouti', 'Africa/Djibouti', 'UTC +03:00', '2024-11-19 05:38:59', '2024-11-20 10:10:02'),
(134, 'Dominica', 'America/Dominica', 'UTC -04:00', '2024-11-19 05:38:59', '2024-11-20 10:10:08'),
(135, 'Dominican Republic', 'America/Santo_Domingo', 'UTC -04:00', '2024-11-19 05:39:01', '2024-11-20 10:10:15'),
(136, 'Ecuador', 'America/Guayaquil', 'UTC -05:00', '2024-11-19 05:39:01', '2024-11-20 10:10:20'),
(137, 'Ecuador', 'Pacific/Galapagos', 'UTC -06:00', '2024-11-19 05:39:07', '2024-11-20 10:10:25'),
(138, 'Egypt', 'Africa/Cairo', 'UTC +02:00', '2024-11-19 05:39:07', '2024-11-20 10:10:34'),
(139, 'El Salvador', 'America/El_Salvador', 'UTC -06:00', '2024-11-19 05:39:09', '2024-11-20 10:10:40'),
(140, 'Equatorial Guinea', 'Africa/Malabo', 'UTC +01:00', '2024-11-19 05:39:09', '2024-11-20 10:10:44'),
(141, 'Eritrea', 'Africa/Asmara', 'UTC +03:00', '2024-11-19 05:39:15', '2024-11-20 10:10:50'),
(142, 'Estonia', 'Europe/Tallinn', 'UTC +02:00', '2024-11-19 05:39:15', '2024-11-20 10:11:01'),
(143, 'Ethiopia', 'Africa/Addis_Ababa', 'UTC +03:00', '2024-11-19 05:39:18', '2024-11-20 10:11:07'),
(144, 'Falkland Islands (Malvinas)', 'Atlantic/Stanley', 'UTC -03:00', '2024-11-19 05:39:18', '2024-11-20 10:11:13'),
(145, 'Faroe Islands', 'Atlantic/Faroe', 'UTC', '2024-11-19 05:39:23', '2024-11-20 10:11:19'),
(146, 'Fiji', 'Pacific/Fiji', 'UTC +12:00', '2024-11-19 05:39:23', '2024-11-20 10:11:26'),
(147, 'Finland', 'Europe/Helsinki', 'UTC +02:00', '2024-11-19 05:39:26', '2024-11-20 10:11:35'),
(148, 'France', 'Europe/Paris', 'UTC +01:00', '2024-11-19 05:39:26', '2024-11-20 10:11:41'),
(149, 'French Guiana', 'America/Cayenne', 'UTC -03:00', '2024-11-19 05:39:32', '2024-11-20 10:11:48'),
(150, 'French Polynesia', 'Pacific/Gambier', 'UTC -09:00', '2024-11-19 05:39:32', '2024-11-20 10:11:54'),
(151, 'French Polynesia', 'Pacific/Marquesas', 'UTC -09:30', '2024-11-19 05:39:34', '2024-11-20 10:11:59'),
(152, 'French Polynesia', 'Pacific/Tahiti', 'UTC -10:00', '2024-11-19 05:39:34', '2024-11-20 10:12:06'),
(153, 'French Southern Territories', 'Indian/Kerguelen', 'UTC +05:00', '2024-11-19 05:39:38', '2024-11-20 10:12:12'),
(154, 'Gabon', 'Africa/Libreville', 'UTC +01:00', '2024-11-19 05:39:38', '2024-11-20 10:12:17'),
(155, 'Gambia', 'Africa/Banjul', 'UTC', '2024-11-19 05:39:40', '2024-11-20 10:12:21'),
(156, 'Georgia', 'Asia/Tbilisi', 'UTC +04:00', '2024-11-19 05:39:40', '2024-11-20 10:12:26'),
(157, 'Germany', 'Europe/Berlin', 'UTC +01:00', '2024-11-19 05:39:45', '2024-11-20 10:12:30'),
(158, 'Germany', 'Europe/Busingen', 'UTC +01:00', '2024-11-19 05:39:45', '2024-11-20 10:12:35'),
(159, 'Ghana', 'Africa/Accra', 'UTC', '2024-11-19 05:39:47', '2024-11-20 10:12:43'),
(160, 'Gibraltar', 'Europe/Gibraltar', 'UTC +01:00', '2024-11-19 05:39:47', '2024-11-20 10:12:52'),
(161, 'Greece', 'Europe/Athens', 'UTC +02:00', '2024-11-19 05:40:13', '2024-11-20 10:12:58'),
(162, 'Greenland', 'America/Danmarkshavn', 'UTC', '2024-11-19 05:40:13', '2024-11-20 10:13:05'),
(163, 'Greenland', 'America/Nuuk', 'UTC -02:00', '2024-11-19 05:40:15', '2024-11-20 10:13:11'),
(164, 'Greenland', 'America/Scoresbysund', 'UTC -02:00', '2024-11-19 05:40:15', '2024-11-20 10:13:16'),
(165, 'Greenland', 'America/Thule', 'UTC -04:00', '2024-11-19 05:40:22', '2024-11-20 10:13:18'),
(166, 'Grenada', 'America/Grenada', 'UTC -04:00', '2024-11-19 05:40:22', '2024-11-20 10:13:26'),
(167, 'Guadeloupe', 'America/Guadeloupe', 'UTC -04:00', '2024-11-19 05:40:25', '2024-11-20 10:13:31'),
(168, 'Guam', 'Pacific/Guam', 'UTC +10:00', '2024-11-19 05:40:25', '2024-11-20 10:13:35'),
(169, 'Guatemala', 'America/Guatemala', 'UTC -06:00', '2024-11-19 05:40:30', '2024-11-20 10:13:40'),
(170, 'Guernsey', 'Europe/Guernsey', 'UTC', '2024-11-19 05:40:30', '2024-11-20 10:13:46'),
(171, 'Guinea', 'Africa/Conakry', 'UTC', '2024-11-19 05:40:32', '2024-11-20 10:13:51'),
(172, 'Guinea-Bissau	', 'Africa/Bissau', 'UTC', '2024-11-19 05:40:32', '2024-11-20 10:13:55'),
(173, 'Guyana', 'America/Guyana', 'UTC -04:00', '2024-11-19 05:40:38', '2024-11-20 10:13:59'),
(174, 'Haiti', 'America/Port-au-Prince', 'UTC -05:00', '2024-11-19 05:40:38', '2024-11-20 10:14:04'),
(175, 'Holy See (Vatican City State)	', 'Europe/Vatican', 'UTC +01:00', '2024-11-19 05:40:41', '2024-11-20 10:14:09'),
(176, 'Honduras', 'America/Tegucigalpa', 'UTC -06:00', '2024-11-19 05:40:41', '2024-11-20 10:14:14'),
(177, 'Hong Kong', 'Asia/Hong_Kong', 'UTC +08:00', '2024-11-19 05:40:48', '2024-11-20 10:14:22'),
(178, 'Hungary', 'Europe/Budapest', 'UTC +01:00', '2024-11-19 05:40:48', '2024-11-20 10:14:27'),
(179, 'Iceland', 'Atlantic/Reykjavik', 'UTC', '2024-11-19 05:40:50', '2024-11-20 10:14:33'),
(180, 'India', 'Asia/Kolkata', 'UTC +05:30', '2024-11-19 05:40:50', '2024-11-20 10:14:37'),
(181, 'Indonesia', 'Asia/Jakarta', 'UTC +07:00', '2024-11-19 05:40:57', '2024-11-20 10:14:41'),
(182, 'Indonesia', 'Asia/Jayapura', 'UTC +09:00', '2024-11-19 05:40:57', '2024-11-20 10:14:47'),
(183, 'Indonesia', 'Asia/Makassar', 'UTC +08:00', '2024-11-19 05:40:59', '2024-11-20 10:14:49'),
(184, 'Indonesia', 'Asia/Pontianak', 'UTC +07:00', '2024-11-19 05:40:59', '2024-11-20 10:15:03'),
(185, 'Iran, Islamic Republic of', 'Asia/Tehran', 'UTC +03:30', '2024-11-19 05:41:05', '2024-11-20 10:15:11'),
(186, 'Iraq', 'Asia/Baghdad', 'UTC +03:00', '2024-11-19 05:41:05', '2024-11-20 10:15:18'),
(187, 'Ireland', 'Europe/Dublin', 'UTC', '2024-11-19 05:41:07', '2024-11-20 10:15:24'),
(188, 'Isle of Man', 'Europe/Isle_of_Man', 'UTC', '2024-11-19 05:41:07', '2024-11-20 10:15:31'),
(189, 'Israel', 'Asia/Jerusalem', 'UTC +02:00', '2024-11-19 05:41:13', '2024-11-20 10:15:37'),
(190, 'Italy', 'Europe/Rome', 'UTC +01:00', '2024-11-19 05:41:13', '2024-11-20 10:15:41'),
(191, 'Jamaica', 'America/Jamaica', 'UTC -05:00', '2024-11-19 05:41:15', '2024-11-20 10:15:45'),
(192, 'Japan', 'Asia/Tokyo', 'UTC +09:00', '2024-11-19 05:41:15', '2024-11-20 10:15:51'),
(193, 'Jersey', 'Europe/Jersey', 'UTC', '2024-11-19 05:41:28', '2024-11-20 10:15:56'),
(194, 'Jordan', 'Asia/Amman', 'UTC +03:00', '2024-11-19 05:41:28', '2024-11-20 10:16:02'),
(195, 'Kazakhstan', 'Asia/Almaty', 'UTC +05:00', '2024-11-19 05:41:30', '2024-11-20 10:16:07'),
(196, 'Kazakhstan', 'Asia/Aqtobe', 'UTC +05:00', '2024-11-19 05:41:30', '2024-11-20 10:16:13'),
(197, 'Kazakhstan', 'Asia/Atyrau', 'UTC +05:00', '2024-11-19 05:41:42', '2024-11-20 10:16:24'),
(198, 'Kazakhstan', 'Asia/Oral', 'UTC +05:00', '2024-11-19 05:41:42', '2024-11-20 10:16:33'),
(199, 'Kazakhstan', 'Asia/Qostanay', 'UTC +05:00', '2024-11-19 05:41:45', '2024-11-20 10:16:35'),
(200, 'Kazakhstan', 'Asia/Qyzylorda', 'UTC +05:00', '2024-11-19 05:41:45', '2024-11-20 10:16:37'),
(201, 'Kenya', 'Africa/Nairobi', 'UTC +03:00', '2024-11-19 06:06:04', '2024-11-20 10:16:51'),
(202, 'Kiribati', 'Pacific/Kanton', 'UTC +13:00', '2024-11-19 06:06:04', '2024-11-20 10:16:57'),
(203, 'Kiribati', 'Pacific/Kiritimati', 'UTC +14:00', '2024-11-19 06:06:06', '2024-11-20 10:17:02'),
(204, 'Kiribati', 'Pacific/Tarawa', 'UTC +12:00', '2024-11-19 06:06:06', '2024-11-20 10:17:25'),
(205, 'Korea, Democratic People\'s Republic of', 'Asia/Pyongyang', 'UTC +09:00', '2024-11-19 06:06:13', '2024-11-20 10:17:31'),
(206, 'Korea, Republic of', 'Asia/Seoul', 'UTC +09:00', '2024-11-19 06:06:13', '2024-11-20 10:17:38'),
(207, 'Kuwait', 'Asia/Kuwait', 'UTC +03:00', '2024-11-19 06:06:15', '2024-11-20 10:17:44'),
(208, 'Kyrgyzstan', 'Asia/Bishkek', 'UTC +06:00', '2024-11-19 06:06:15', '2024-11-20 10:17:50'),
(209, 'Lao People\'s Democratic Republic', 'Asia/Vientiane', 'UTC +07:00', '2024-11-19 06:06:20', '2024-11-20 10:17:57'),
(210, 'Latvia', 'Europe/Riga', 'UTC +02:00', '2024-11-19 06:06:20', '2024-11-20 10:18:03'),
(211, 'Lebanon', 'Asia/Beirut', 'UTC +02:00', '2024-11-19 06:06:22', '2024-11-20 10:18:07'),
(212, 'Lesotho', 'Africa/Maseru', 'UTC +02:00', '2024-11-19 06:06:22', '2024-11-20 10:18:12'),
(213, 'Liberia', 'Africa/Monrovia', 'UTC', '2024-11-19 06:06:27', '2024-11-20 10:18:17'),
(214, 'Libya', 'Africa/Tripoli', 'UTC +02:00', '2024-11-19 06:06:27', '2024-11-20 10:18:22'),
(215, 'Liechtenstein', 'Europe/Vaduz', 'UTC +01:00', '2024-11-19 06:06:29', '2024-11-20 10:18:28'),
(216, 'Lithuania', 'Europe/Vilnius', 'UTC +02:00', '2024-11-19 06:06:29', '2024-11-20 10:18:34'),
(217, 'Luxembourg', 'Europe/Luxembourg', 'UTC +01:00', '2024-11-19 06:06:34', '2024-11-20 10:18:41'),
(218, 'Macao', 'Asia/Macau', 'UTC +08:00', '2024-11-19 06:06:34', '2024-11-20 10:18:49'),
(219, 'Macedonia, the Former Yugoslav Republic of	', 'Europe/Skopje', 'UTC +01:00', '2024-11-19 06:06:37', '2024-11-20 10:18:51'),
(220, 'Madagascar', 'Indian/Antananarivo', 'UTC +03:00', '2024-11-19 06:06:37', '2024-11-20 10:18:55'),
(221, 'Malawi', 'Africa/Blantyre', 'UTC +02:00', '2024-11-19 06:06:42', '2024-11-20 10:18:59'),
(222, 'Malaysia', 'Asia/Kuala_Lumpur', 'UTC +08:00', '2024-11-19 06:06:42', '2024-11-20 10:19:04'),
(223, 'Malaysia', 'Asia/Kuching', 'UTC +08:00', '2024-11-19 06:06:44', '2024-11-20 10:19:08'),
(224, 'Maldives', 'Indian/Maldives', 'UTC +05:00', '2024-11-19 06:06:44', '2024-11-20 10:19:12'),
(225, 'Mali', 'Africa/Bamako', 'UTC', '2024-11-19 06:06:50', '2024-11-20 10:19:16'),
(226, 'Malta', 'Europe/Malta', 'UTC +01:00', '2024-11-19 06:06:50', '2024-11-20 10:19:26'),
(227, 'Marshall Islands', 'Pacific/Kwajalein', 'UTC +12:00', '2024-11-19 06:06:52', '2024-11-20 10:19:41'),
(228, 'Marshall Islands', 'Pacific/Majuro', 'UTC +12:00', '2024-11-19 06:06:52', '2024-11-20 10:19:49'),
(229, 'Martinique', 'America/Martinique', 'UTC -04:00', '2024-11-19 06:06:56', '2024-11-20 10:19:59'),
(230, 'Mauritania', 'Africa/Nouakchott', 'UTC', '2024-11-19 06:06:56', '2024-11-20 10:20:04'),
(231, 'Mauritius', 'Indian/Mauritius', 'UTC +04:00', '2024-11-19 06:06:59', '2024-11-20 10:20:08'),
(232, 'Mayotte', 'Indian/Mayotte', 'UTC +03:00', '2024-11-19 06:06:59', '2024-11-20 10:20:12'),
(233, 'Mexico', 'America/Bahia_Banderas', 'UTC -06:00', '2024-11-19 06:07:04', '2024-11-20 10:20:17'),
(234, 'Mexico', 'America/Cancun', 'UTC -05:00', '2024-11-19 06:07:04', '2024-11-20 10:20:22'),
(235, 'Mexico', 'America/Chihuahua', 'UTC -06:00', '2024-11-19 06:07:07', '2024-11-20 10:21:24'),
(236, 'Mexico', 'America/Ciudad_Juarez', 'UTC -07:00', '2024-11-19 06:07:07', '2024-11-20 10:21:21'),
(237, 'Mexico', 'America/Hermosillo', 'UTC -07:00', '2024-11-19 06:07:17', '2024-11-20 10:21:19'),
(238, 'Mexico', 'America/Matamoros', 'UTC -06:00', '2024-11-19 06:07:17', '2024-11-20 10:21:18'),
(239, 'Mexico', 'America/Mazatlan', 'UTC -07:00', '2024-11-19 06:07:19', '2024-11-20 10:21:15'),
(240, 'Mexico', 'America/Merida', 'UTC -06:00', '2024-11-19 06:07:19', '2024-11-20 10:21:13'),
(241, 'Mexico', 'America/Mexico_City', 'UTC -06:00', '2024-11-19 06:07:24', '2024-11-20 10:21:11'),
(242, 'Mexico', 'America/Monterrey', 'UTC -06:00', '2024-11-19 06:07:24', '2024-11-20 10:21:09'),
(243, 'Mexico', 'America/Ojinaga', 'UTC -06:00', '2024-11-19 06:07:26', '2024-11-20 10:21:07'),
(244, 'Mexico', 'America/Tijuana', 'UTC -08:00', '2024-11-19 06:07:26', '2024-11-20 10:20:33'),
(245, 'Micronesia, Federated States of', 'Pacific/Chuuk', 'UTC +10:00', '2024-11-19 06:07:31', '2024-11-20 10:21:43'),
(246, 'Micronesia, Federated States of', 'Pacific/Kosrae', 'UTC +11:00', '2024-11-19 06:07:31', '2024-11-20 10:21:50'),
(247, 'Micronesia, Federated States of', 'Pacific/Pohnpei', 'UTC +11:00', '2024-11-19 06:07:33', '2024-11-20 10:21:57'),
(248, 'Moldova, Republic of', 'Europe/Chisinau', 'UTC +02:00', '2024-11-19 06:07:33', '2024-11-20 10:22:04'),
(249, 'Monaco', 'Europe/Monaco', 'UTC +01:00', '2024-11-19 06:07:38', '2024-11-20 10:22:10'),
(250, 'Mongolia', 'Asia/Hovd', 'UTC +07:00', '2024-11-19 06:07:38', '2024-11-20 10:22:15'),
(251, 'Mongolia', 'Asia/Ulaanbaatar', 'UTC +08:00', '2024-11-19 06:07:40', '2024-11-20 10:22:19'),
(252, 'Montenegro', 'Europe/Podgorica', 'UTC +01:00', '2024-11-19 06:07:40', '2024-11-20 10:22:23'),
(253, 'Montserrat', 'America/Montserrat', 'UTC -04:00', '2024-11-19 06:07:45', '2024-11-20 10:22:29'),
(254, 'Morocco', 'Africa/Casablanca', 'UTC +01:00', '2024-11-19 06:07:45', '2024-11-20 10:22:33'),
(255, 'Morocco', 'Africa/El_Aaiun', 'UTC +01:00', '2024-11-19 06:07:47', '2024-11-20 10:22:38'),
(256, 'Mozambique', 'Africa/Maputo', 'UTC +02:00', '2024-11-19 06:07:47', '2024-11-20 10:22:42'),
(257, 'Myanmar', 'Asia/Yangon', 'UTC +06:30', '2024-11-19 06:07:55', '2024-11-20 10:22:48'),
(258, 'Namibia', 'Africa/Windhoek', 'UTC +02:00', '2024-11-19 06:07:55', '2024-11-20 10:23:05'),
(259, 'Nauru', 'Pacific/Nauru', 'UTC +12:00', '2024-11-19 06:07:57', '2024-11-20 10:23:09'),
(260, 'Nepal', 'Asia/Kathmandu', 'UTC +05:45', '2024-11-19 06:07:57', '2024-11-20 10:23:14'),
(261, 'Netherlands', 'Europe/Amsterdam', 'UTC +01:00', '2024-11-19 06:08:03', '2024-11-20 10:23:19'),
(262, 'New Caledonia', 'Pacific/Noumea', 'UTC +11:00', '2024-11-19 06:08:03', '2024-11-20 10:23:24'),
(263, 'New Zealand', 'Pacific/Auckland', 'UTC +13:00', '2024-11-19 06:08:05', '2024-11-20 10:23:31'),
(264, 'New Zealand', 'Pacific/Chatham', 'UTC +13:45', '2024-11-19 06:08:05', '2024-11-20 10:23:37'),
(265, 'Nicaragua', 'America/Managua', 'UTC -06:00', '2024-11-19 06:08:10', '2024-11-20 10:23:42'),
(266, 'Niger', 'Africa/Niamey', 'UTC +01:00', '2024-11-19 06:08:10', '2024-11-20 10:23:46'),
(267, 'Nigeria', 'Africa/Lagos', 'UTC +01:00', '2024-11-19 06:08:12', '2024-11-20 10:23:50'),
(268, 'Niue', 'Pacific/Niue', 'UTC -11:00', '2024-11-19 06:08:12', '2024-11-20 10:23:55'),
(269, 'Norfolk Island', 'Pacific/Norfolk', 'UTC +12:00', '2024-11-19 06:08:18', '2024-11-20 10:23:59'),
(270, 'Northern Mariana Islands', 'Pacific/Saipan', 'UTC +10:00', '2024-11-19 06:08:18', '2024-11-20 10:24:06'),
(271, 'Norway', 'Europe/Oslo', 'UTC +01:00', '2024-11-19 06:08:20', '2024-11-20 10:24:12'),
(272, 'Oman', 'Asia/Muscat', 'UTC +04:00', '2024-11-19 06:08:20', '2024-11-20 10:24:17'),
(273, 'Pakistan', 'Asia/Karachi', 'UTC +05:00', '2024-11-19 06:08:26', '2024-11-20 10:24:23'),
(274, 'Palau', 'Pacific/Palau', 'UTC +09:00', '2024-11-19 06:08:26', '2024-11-20 10:24:28'),
(275, 'Palestine, State of', 'Asia/Gaza', 'UTC +02:00', '2024-11-19 06:08:28', '2024-11-20 10:24:36'),
(276, 'Palestine, State of', 'Asia/Hebron', 'UTC +02:00', '2024-11-19 06:08:28', '2024-11-20 10:24:44'),
(277, 'Panama', 'America/Panama', 'UTC -05:00', '2024-11-19 06:08:34', '2024-11-20 10:24:48'),
(278, 'Papua New Guinea	', 'Pacific/Bougainville', 'UTC +11:00', '2024-11-19 06:08:34', '2024-11-20 10:24:53'),
(279, 'Papua New Guinea', 'Pacific/Port_Moresby', 'UTC +10:00', '2024-11-19 06:08:36', '2024-11-20 10:24:58'),
(280, 'Paraguay', 'America/Asuncion', 'UTC -03:00', '2024-11-19 06:08:36', '2024-11-20 10:25:03'),
(281, 'Peru', 'America/Lima', 'UTC -05:00', '2024-11-19 06:08:41', '2024-11-20 10:25:08'),
(282, 'Philippines', 'Asia/Manila', 'UTC +08:00', '2024-11-19 06:08:41', '2024-11-20 10:25:13'),
(283, 'Pitcairn', 'Pacific/Pitcairn', 'UTC -08:00', '2024-11-19 06:08:45', '2024-11-20 10:25:18'),
(284, 'Poland', 'Europe/Warsaw', 'UTC +01:00', '2024-11-19 06:08:45', '2024-11-20 10:25:22'),
(285, 'Portugal', 'Atlantic/Azores', 'UTC -01:00', '2024-11-19 06:08:49', '2024-11-20 10:25:26'),
(286, 'Portugal', 'Atlantic/Madeira', 'UTC', '2024-11-19 06:08:49', '2024-11-20 10:25:31'),
(287, 'Portugal', 'Europe/Lisbon', 'UTC', '2024-11-19 06:08:52', '2024-11-20 10:25:36'),
(288, 'Puerto Rico', 'America/Puerto_Rico', 'UTC -04:00', '2024-11-19 06:08:52', '2024-11-20 10:25:44'),
(289, 'Qatar', 'Asia/Qatar', 'UTC +03:00', '2024-11-19 06:08:57', '2024-11-20 10:25:49'),
(290, 'Romania', 'Europe/Bucharest', 'UTC +02:00', '2024-11-19 06:08:57', '2024-11-20 10:25:53'),
(291, 'Russian Federation', 'Asia/Anadyr', 'UTC +12:00', '2024-11-19 06:08:59', '2024-11-20 10:26:03'),
(292, 'Russian Federation', 'Asia/Barnaul', 'UTC +07:00', '2024-11-19 06:08:59', '2024-11-20 10:27:17'),
(293, 'Russian Federation', 'Asia/Chita', 'UTC +09:00', '2024-11-19 06:09:05', '2024-11-20 10:27:12'),
(294, 'Russian Federation', 'Asia/Irkutsk', 'UTC +08:00', '2024-11-19 06:09:05', '2024-11-20 10:27:09'),
(295, 'Russian Federation', 'Asia/Kamchatka', 'UTC +12:00', '2024-11-19 06:09:07', '2024-11-20 10:27:06'),
(296, 'Russian Federation', 'Asia/Khandyga', 'UTC +09:00', '2024-11-19 06:09:07', '2024-11-20 10:27:04'),
(297, 'Russian Federation', 'Asia/Krasnoyarsk', 'UTC +07:00', '2024-11-19 06:09:13', '2024-11-20 10:27:02'),
(298, 'Russian Federation', 'Asia/Magadan', 'UTC +11:00', '2024-11-19 06:09:13', '2024-11-20 10:27:00'),
(299, 'Russian Federation', 'Asia/Novokuznetsk', 'UTC +07:00', '2024-11-19 06:09:15', '2024-11-20 10:26:57'),
(300, 'Russian Federation', 'Asia/Novosibirsk', 'UTC +07:00', '2024-11-19 06:09:15', '2024-11-20 10:26:55'),
(301, 'Russian Federation', 'Asia/Omsk', 'UTC +06:00', '2024-11-19 06:27:58', '2024-11-20 10:26:53'),
(302, 'Russian Federation', 'Asia/Sakhalin', 'UTC +11:00', '2024-11-19 06:27:58', '2024-11-20 10:26:51'),
(303, 'Russian Federation', 'Asia/Srednekolymsk', 'UTC +11:00', '2024-11-19 06:28:00', '2024-11-20 10:26:49'),
(304, 'Russian Federation', 'Asia/Tomsk', 'UTC +07:00', '2024-11-19 06:28:00', '2024-11-20 10:26:46'),
(305, 'Russian Federation', 'Asia/Ust-Nera', 'UTC +10:00', '2024-11-19 06:28:06', '2024-11-20 10:26:44'),
(306, 'Russian Federation', 'Asia/Vladivostok', 'UTC +10:00', '2024-11-19 06:28:06', '2024-11-20 10:26:42'),
(307, 'Russian Federation', 'Asia/Yakutsk', 'UTC +09:00', '2024-11-19 06:28:08', '2024-11-20 10:26:41'),
(308, 'Russian Federation', 'Asia/Yekaterinburg', 'UTC +05:00', '2024-11-19 06:28:08', '2024-11-20 10:26:39'),
(309, 'Russian Federation', 'Europe/Astrakhan', 'UTC +04:00', '2024-11-19 06:28:13', '2024-11-20 10:26:37'),
(310, 'Russian Federation', 'Europe/Kaliningrad', 'UTC +02:00', '2024-11-19 06:28:13', '2024-11-20 10:26:35'),
(311, 'Russian Federation', 'Europe/Kirov', 'UTC +03:00', '2024-11-19 06:28:15', '2024-11-20 10:26:33'),
(312, 'Russian Federation', 'Europe/Moscow', 'UTC +03:00', '2024-11-19 06:28:15', '2024-11-20 10:26:30'),
(313, 'Russian Federation', 'Europe/Samara', 'UTC +04:00', '2024-11-19 06:28:19', '2024-11-20 10:26:29'),
(314, 'Russian Federation', 'Europe/Saratov', 'UTC +04:00', '2024-11-19 06:28:19', '2024-11-20 10:26:27'),
(315, 'Russian Federation', 'Europe/Ulyanovsk', 'UTC +04:00', '2024-11-19 06:28:21', '2024-11-20 10:26:25'),
(316, 'Russian Federation', 'Europe/Volgograd', 'UTC +03:00', '2024-11-19 06:28:21', '2024-11-20 10:26:22'),
(317, 'Rwanda', 'Africa/Kigali', 'UTC +02:00', '2024-11-19 06:28:26', '2024-11-20 10:28:15'),
(318, 'Réunion', 'Indian/Reunion', 'UTC +04:00', '2024-11-19 06:28:26', '2024-11-20 10:28:20'),
(319, 'Saint Barthélemy', 'America/St_Barthelemy', 'UTC -04:00', '2024-11-19 06:28:28', '2024-11-20 10:28:31'),
(320, 'Saint Helena, Ascension and Tristan da Cunha', 'Atlantic/St_Helena', 'UTC', '2024-11-19 06:28:28', '2024-11-20 10:28:36'),
(321, 'Saint Kitts and Nevis', 'America/St_Kitts', 'UTC -04:00', '2024-11-19 06:28:33', '2024-11-20 10:28:42'),
(322, 'Saint Lucia', 'America/St_Lucia', 'UTC -04:00', '2024-11-19 06:28:33', '2024-11-20 10:28:47'),
(323, 'Saint Martin (French part)', 'America/Marigot', 'UTC -04:00', '2024-11-19 06:28:34', '2024-11-20 10:28:51'),
(324, 'Saint Pierre and Miquelon', 'America/Miquelon', 'UTC -03:00', '2024-11-19 06:28:34', '2024-11-20 10:28:56'),
(325, 'Saint Vincent and the Grenadines', 'America/St_Vincent', 'UTC -04:00', '2024-11-19 06:28:39', '2024-11-20 10:29:07'),
(326, 'Samoa', 'Pacific/Apia', 'UTC +13:00', '2024-11-19 06:28:39', '2024-11-20 10:29:09'),
(327, 'San Marino', 'Europe/San_Marino', 'UTC +01:00', '2024-11-19 06:28:41', '2024-11-20 10:29:13'),
(328, 'Sao Tome and Principe', 'Africa/Sao_Tome', 'UTC', '2024-11-19 06:28:41', '2024-11-20 10:29:18'),
(329, 'Saudi Arabia', 'Asia/Riyadh', 'UTC +03:00', '2024-11-19 06:28:46', '2024-11-20 10:29:22'),
(330, 'Senegal', 'Africa/Dakar', 'UTC', '2024-11-19 06:28:46', '2024-11-20 10:29:26'),
(331, 'Serbia', 'Europe/Belgrade', 'UTC +01:00', '2024-11-19 06:28:48', '2024-11-20 10:29:29'),
(332, 'Seychelles', 'Indian/Mahe', 'UTC +04:00', '2024-11-19 06:28:48', '2024-11-20 10:29:37'),
(333, 'Sierra Leone', 'Africa/Freetown', 'UTC', '2024-11-19 06:28:53', '2024-11-20 10:29:39'),
(334, 'Singapore', 'Asia/Singapore', 'UTC +08:00', '2024-11-19 06:28:53', '2024-11-20 10:29:44'),
(335, 'Sint Maarten (Dutch part)', 'America/Lower_Princes', 'UTC -04:00', '2024-11-19 06:28:55', '2024-11-20 10:29:50'),
(336, 'Slovakia', 'Europe/Bratislava', 'UTC +01:00', '2024-11-19 06:28:55', '2024-11-20 10:30:01'),
(337, 'Slovenia', 'Europe/Ljubljana', 'UTC +01:00', '2024-11-19 06:28:58', '2024-11-20 10:30:08'),
(338, 'Solomon Islands', 'Pacific/Guadalcanal', 'UTC +11:00', '2024-11-19 06:28:58', '2024-11-20 10:30:13'),
(339, 'Somalia', 'Africa/Mogadishu', 'UTC +03:00', '2024-11-19 06:29:00', '2024-11-20 10:30:18'),
(340, 'South Africa', 'Africa/Johannesburg', 'UTC +02:00', '2024-11-19 06:29:00', '2024-11-20 10:30:22'),
(341, 'South Georgia and the South Sandwich Islands', 'Atlantic/South_Georgia', 'UTC -02:00', '2024-11-19 06:29:04', '2024-11-20 10:30:28'),
(342, 'South Sudan', 'Africa/Juba', 'UTC +02:00', '2024-11-19 06:29:04', '2024-11-20 10:30:34'),
(343, 'Spain', 'Africa/Ceuta', 'UTC +01:00', '2024-11-19 06:29:06', '2024-11-20 10:30:44'),
(344, 'Spain', 'Atlantic/Canary', 'UTC', '2024-11-19 06:29:06', '2024-11-20 10:30:49'),
(345, 'Spain', 'Europe/Madrid', 'UTC +01:00', '2024-11-19 06:29:15', '2024-11-20 10:30:57'),
(346, 'Sri Lanka', 'Asia/Colombo', 'UTC +05:30', '2024-11-19 06:29:15', '2024-11-20 10:31:02'),
(347, 'Sudan', 'Africa/Khartoum', 'UTC +02:00', '2024-11-19 06:29:17', '2024-11-20 10:31:08'),
(348, 'Suriname', 'America/Paramaribo', 'UTC -03:00', '2024-11-19 06:29:17', '2024-11-20 10:31:14'),
(349, 'Svalbard and Jan Mayen', 'Arctic/Longyearbyen', 'UTC +01:00', '2024-11-19 06:29:23', '2024-11-20 10:31:20'),
(350, 'Swaziland', 'Africa/MbabaneAfrica/Mbabane', 'UTC +02:00', '2024-11-19 06:29:23', '2024-11-20 10:31:25'),
(351, 'Sweden', 'Europe/Stockholm', 'UTC +01:00', '2024-11-19 06:29:25', '2024-11-20 10:31:32'),
(352, 'Switzerland', 'Europe/Zurich', 'UTC +01:00', '2024-11-19 06:29:25', '2024-11-20 10:31:41'),
(353, 'Syrian Arab Republic', 'Asia/Damascus', 'UTC +03:00', '2024-11-19 06:29:30', '2024-11-20 10:31:47'),
(354, 'Taiwan, Province of China', 'Asia/Taipei', 'UTC +08:00', '2024-11-19 06:29:30', '2024-11-20 10:31:59'),
(356, 'Tajikistan', 'Asia/Dushanbe', 'UTC +05:00', '2024-11-19 06:29:32', '2024-11-20 10:32:01'),
(357, 'Tanzania, United Republic of', 'Africa/Dar_es_Salaam', 'UTC +03:00', '2024-11-19 06:29:38', '2024-11-20 10:32:07'),
(358, 'Thailand', 'Asia/Bangkok', 'UTC +07:00', '2024-11-19 06:29:38', '2024-11-20 10:32:13'),
(359, 'Timor-Leste', 'Asia/Dili', 'UTC +09:00', '2024-11-19 06:29:40', '2024-11-20 10:32:18'),
(360, 'Togo', 'Africa/Lome', 'UTC', '2024-11-19 06:29:40', '2024-11-20 10:32:23'),
(361, 'Tokelau', 'Pacific/Fakaofo', 'UTC +13:00', '2024-11-19 06:29:45', '2024-11-20 10:32:31'),
(362, 'Tonga', 'Pacific/Tongatapu', 'UTC +13:00', '2024-11-19 06:29:45', '2024-11-20 10:32:39'),
(363, 'Trinidad and Tobago', 'America/Port_of_Spain', 'UTC -04:00', '2024-11-19 06:29:47', '2024-11-20 10:32:45'),
(364, 'Tunisia', 'Africa/Tunis', 'UTC +01:00', '2024-11-19 06:29:47', '2024-11-20 10:32:49'),
(365, 'Turkey', 'Europe/Istanbul', 'UTC +03:00', '2024-11-19 06:29:52', '2024-11-20 10:32:56'),
(366, 'Turkmenistan', 'Asia/Ashgabat', 'UTC +05:00', '2024-11-19 06:29:52', '2024-11-20 10:33:01'),
(367, 'Turks and Caicos Islands', 'America/Grand_Turk', 'UTC -05:00', '2024-11-19 06:29:54', '2024-11-20 10:33:07'),
(368, 'Tuvalu', 'Pacific/Funafuti', 'UTC +12:00', '2024-11-19 06:29:54', '2024-11-20 10:33:13'),
(369, 'Uganda', 'Africa/Kampala', 'UTC +03:00', '2024-11-19 06:30:08', '2024-11-20 10:33:19'),
(370, 'Ukraine', 'Europe/Kyiv', 'UTC +02:00', '2024-11-19 06:30:08', '2024-11-20 10:33:23'),
(371, 'Ukraine', 'Europe/Simferopol', 'UTC +03:00', '2024-11-19 06:30:10', '2024-11-20 10:33:39'),
(372, 'United Arab Emirates', 'Asia/Dubai', 'UTC +04:00', '2024-11-19 06:30:10', '2024-11-20 10:33:50'),
(373, 'United Kingdom', 'Europe/London', 'UTC', '2024-11-19 06:30:15', '2024-11-20 10:33:55'),
(374, 'United States', 'America/Adak', 'UTC -10:00', '2024-11-19 06:30:15', '2024-11-20 10:34:03'),
(375, 'United States', 'America/Anchorage', 'UTC -09:00', '2024-11-19 06:30:17', '2024-11-20 10:34:22'),
(376, 'United States', 'America/Boise', 'UTC -07:00', '2024-11-19 06:30:17', '2024-11-20 10:36:24'),
(377, 'United States', 'America/Chicago', 'UTC -06:00', '2024-11-19 06:30:21', '2024-11-20 10:36:21'),
(378, 'United States', 'America/Denver', 'UTC -07:00', '2024-11-19 06:30:21', '2024-11-20 10:36:11'),
(379, 'United States', 'America/Detroit', 'UTC -05:00', '2024-11-19 06:30:24', '2024-11-20 10:36:14'),
(380, 'United States', 'America/Indiana/Indianapolis', 'UTC -05:00', '2024-11-19 06:30:24', '2024-11-20 10:36:09'),
(381, 'United States', 'America/Indiana/Knox', 'UTC -06:00', '2024-11-19 06:30:29', '2024-11-20 10:36:17'),
(382, 'United States', 'America/Indiana/Marengo', 'UTC -05:00', '2024-11-19 06:30:29', '2024-11-20 10:36:07'),
(383, 'United States', 'America/Indiana/Petersburg', 'UTC -05:00', '2024-11-19 06:30:32', '2024-11-20 10:36:19'),
(384, 'United States', 'America/Indiana/Tell_City', 'UTC -06:00', '2024-11-19 06:30:32', '2024-11-20 10:36:05'),
(385, 'United States', 'America/Indiana/Vevay', 'UTC -05:00', '2024-11-19 06:30:39', '2024-11-20 10:36:03'),
(386, 'United States', 'America/Indiana/Vincennes', 'UTC -05:00', '2024-11-19 06:30:39', '2024-11-20 10:36:00'),
(387, 'United States', 'America/Indiana/Winamac', 'UTC -05:00', '2024-11-19 06:30:41', '2024-11-20 10:35:58'),
(388, 'United States', 'America/Juneau', 'UTC -09:00', '2024-11-19 06:30:41', '2024-11-20 10:35:56'),
(389, 'United States', 'America/Kentucky/Louisville', 'UTC -05:00', '2024-11-19 06:30:53', '2024-11-20 10:35:54'),
(390, 'United States', 'America/Kentucky/Monticello', 'UTC -05:00', '2024-11-19 06:30:53', '2024-11-20 10:35:51'),
(391, 'United States', 'America/Los_Angeles', 'UTC -08:00', '2024-11-19 06:30:55', '2024-11-20 10:35:48'),
(392, 'United States', 'America/Menominee', 'UTC -06:00', '2024-11-19 06:30:55', '2024-11-20 10:35:45'),
(393, 'United States', 'America/Metlakatla', 'UTC -09:00', '2024-11-19 06:31:01', '2024-11-20 10:35:42'),
(394, 'United States', 'America/New_York', 'UTC -05:00', '2024-11-19 06:31:01', '2024-11-20 10:35:40'),
(395, 'United States', 'America/Nome', 'UTC -09:00', '2024-11-19 06:31:04', '2024-11-20 10:35:36'),
(396, 'United States', 'America/North_Dakota/Beulah', 'UTC -06:00', '2024-11-19 06:31:04', '2024-11-20 10:35:34'),
(397, 'United States', 'America/North_Dakota/Center', 'UTC -06:00', '2024-11-19 06:31:08', '2024-11-20 10:35:32'),
(398, 'United States', 'America/North_Dakota/New_Salem', 'UTC -06:00', '2024-11-19 06:31:08', '2024-11-20 10:35:29'),
(399, 'United States', 'America/Phoenix', 'UTC -07:00', '2024-11-19 06:31:11', '2024-11-20 10:35:26'),
(400, 'United States', 'America/Sitka', 'UTC -09:00', '2024-11-19 06:31:11', '2024-11-20 10:35:24'),
(401, 'United States', 'America/Yakutat', 'UTC -09:00', '2024-11-19 06:46:32', '2024-11-20 10:35:22'),
(402, 'United States', 'Pacific/Honolulu', 'UTC -10:00', '2024-11-19 06:46:32', '2024-11-20 10:34:45'),
(403, 'United States Minor Outlying Islands', 'Pacific/Midway', 'UTC -11:00', '2024-11-19 06:46:34', '2024-11-20 10:36:39'),
(404, 'United States Minor Outlying Islands', 'Pacific/Wake', 'UTC +12:00', '2024-11-19 06:46:34', '2024-11-20 10:36:43'),
(405, 'Uruguay', 'America/Montevideo', 'UTC -03:00', '2024-11-19 06:46:39', '2024-11-20 10:36:50'),
(406, 'Uzbekistan', 'Asia/Samarkand', 'UTC +05:00', '2024-11-19 06:46:39', '2024-11-20 10:36:57'),
(407, 'Uzbekistan', 'Asia/Tashkent', 'UTC +05:00', '2024-11-19 06:46:41', '2024-11-20 10:37:02'),
(408, 'Vanuatu', 'Pacific/Efate', 'UTC +11:00', '2024-11-19 06:46:41', '2024-11-20 10:37:06'),
(409, 'Venezuela, Bolivarian Republic of', 'America/Caracas', 'UTC -04:00', '2024-11-19 06:46:46', '2024-11-20 10:37:10'),
(410, 'Viet Nam', 'Asia/Ho_Chi_Minh', 'UTC +07:00', '2024-11-19 06:46:46', '2024-11-20 10:37:14'),
(411, 'Virgin Islands, British', 'America/Tortola', 'UTC -04:00', '2024-11-19 06:46:48', '2024-11-20 10:37:21'),
(412, 'Virgin Islands, U.S.', 'America/St_Thomas', 'UTC -04:00', '2024-11-19 06:46:48', '2024-11-20 10:37:33'),
(413, 'Wallis and Futuna', 'Pacific/Wallis', 'UTC +12:00', '2024-11-19 06:47:03', '2024-11-20 10:37:35'),
(414, 'Yemen', 'Asia/Aden', 'UTC +03:00', '2024-11-19 06:47:03', '2024-11-20 10:37:39'),
(415, 'Zambia', 'Africa/Lusaka', 'UTC +02:00', '2024-11-19 06:47:05', '2024-11-20 10:37:51'),
(416, 'Zimbabwe', 'Africa/Harare', 'UTC +02:00', '2024-11-19 06:47:05', '2024-11-20 10:37:53'),
(417, 'Åland Islands', 'Europe/Mariehamn', 'UTC +02:00', '2024-11-19 06:47:08', '2024-11-20 10:37:58');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subscription_internal_id` int(11) DEFAULT NULL,
  `subscription_id` varchar(255) DEFAULT NULL,
  `amount` varchar(255) NOT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL COMMENT 'paid,expired,canceled',
  `transaction_response` longtext DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `subscription_internal_id`, `subscription_id`, `amount`, `currency`, `date`, `payment_method`, `transaction_id`, `status`, `transaction_response`, `created_at`, `updated_at`) VALUES
(3, 146, 2, 'sub_DLrjFHY9tC', '4.99', 'EUR', '2024-10-29T12:37:40+00:00', 'creditcard', 'tr_VyNxBJmPkJ', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_VyNxBJmPkJ\",\"mode\":\"test\",\"createdAt\":\"2024-10-29T12:37:18+00:00\",\"amount\":{\"value\":\"4.99\",\"currency\":\"EUR\"},\"description\":\"Authorize card for future payments\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-10-29T12:37:40+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"4.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"countryCode\":\"IN\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_JgUYrcYvdR\",\"mandateId\":\"mdt_yhR5XpRTuS\",\"sequenceType\":\"first\",\"redirectUrl\":\"https://urlsdemo.online/plusone/api/redirect-success-url\",\"cancelUrl\":\"https://urlsdemo.online/plusone/api/redirect-cancel-url\",\"settlementAmount\":{\"value\":\"4.99\",\"currency\":\"EUR\"},\"details\":{\"cardToken\":\"tkn_DHz5Cwtest\",\"cardNumber\":\"4242\",\"cardHolder\":\"T. TEST\",\"cardAudience\":\"consumer\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_VyNxBJmPkJ\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_VyNxBJmPkJ\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.gr1nv5\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR/mandates/mdt_yhR5XpRTuS\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-10-29 12:37:47', '2024-10-29 12:37:47'),
(5, 146, 2, 'sub_DLrjFHY9tC', '5.99', 'EUR', '2024-10-30T00:16:59+00:00', 'creditcard', 'tr_hTfG7U7KuB', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_hTfG7U7KuB\",\"mode\":\"test\",\"createdAt\":\"2024-10-30T00:16:59+00:00\",\"amount\":{\"value\":\"5.99\",\"currency\":\"EUR\"},\"description\":\"Monthly Membership\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-10-30T00:16:59+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"5.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_JgUYrcYvdR\",\"mandateId\":\"mdt_yhR5XpRTuS\",\"subscriptionId\":\"sub_DLrjFHY9tC\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"5.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_hTfG7U7KuB\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_hTfG7U7KuB\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.6hp262\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR/mandates/mdt_yhR5XpRTuS\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR/subscriptions/sub_DLrjFHY9tC\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-10-30 00:17:12', '2024-10-30 00:17:12'),
(6, 74, 3, 'sub_XefwHqQ3wP', '5.99', 'EUR', '2024-10-30T05:01:21+00:00', 'creditcard', 'tr_TjVfJNL6Xj', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_TjVfJNL6Xj\",\"mode\":\"test\",\"createdAt\":\"2024-10-30T05:01:02+00:00\",\"amount\":{\"value\":\"5.99\",\"currency\":\"EUR\"},\"description\":\"Authorize card for future payments\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-10-30T05:01:21+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"5.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"countryCode\":\"IN\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_jAEuWnWdBo\",\"mandateId\":\"mdt_iZ38qFFuA3\",\"sequenceType\":\"first\",\"redirectUrl\":\"https://urlsdemo.online/plusone/api/redirect-success-url\",\"cancelUrl\":\"https://urlsdemo.online/plusone/api/redirect-cancel-url\",\"settlementAmount\":{\"value\":\"5.99\",\"currency\":\"EUR\"},\"details\":{\"cardToken\":\"tkn_Lge5Cwtest\",\"cardNumber\":\"4242\",\"cardHolder\":\"T. TEST\",\"cardAudience\":\"consumer\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_TjVfJNL6Xj\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_TjVfJNL6Xj\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.b45b8v\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo/mandates/mdt_iZ38qFFuA3\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-10-30 05:01:27', '2024-10-30 05:01:27'),
(7, 146, 2, 'sub_DLrjFHY9tC', '2.99', 'EUR', '2024-10-31T00:14:54+00:00', 'creditcard', 'tr_FkJLkX54ft', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_FkJLkX54ft\",\"mode\":\"test\",\"createdAt\":\"2024-10-31T00:14:54+00:00\",\"amount\":{\"value\":\"2.99\",\"currency\":\"EUR\"},\"description\":\"Monthly Membership\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-10-31T00:14:54+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"2.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_JgUYrcYvdR\",\"mandateId\":\"mdt_yhR5XpRTuS\",\"subscriptionId\":\"sub_DLrjFHY9tC\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"2.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_FkJLkX54ft\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_FkJLkX54ft\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.nei2gz\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR/mandates/mdt_yhR5XpRTuS\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR/subscriptions/sub_DLrjFHY9tC\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-10-31 00:14:55', '2024-10-31 00:14:55'),
(9, 74, 3, 'sub_XefwHqQ3wP', '2.99', 'EUR', '2024-10-31T00:14:55+00:00', 'creditcard', 'tr_bwHPNAEuLe', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_bwHPNAEuLe\",\"mode\":\"test\",\"createdAt\":\"2024-10-31T00:14:55+00:00\",\"amount\":{\"value\":\"2.99\",\"currency\":\"EUR\"},\"description\":\"Monthly Membership\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-10-31T00:14:55+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"2.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_jAEuWnWdBo\",\"mandateId\":\"mdt_iZ38qFFuA3\",\"subscriptionId\":\"sub_XefwHqQ3wP\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"2.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_bwHPNAEuLe\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_bwHPNAEuLe\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.cpruq7\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo/mandates/mdt_iZ38qFFuA3\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo/subscriptions/sub_XefwHqQ3wP\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-10-31 00:15:09', '2024-10-31 00:15:09'),
(10, 146, 2, 'sub_DLrjFHY9tC', '2.99', 'EUR', '2024-11-01T00:19:22+00:00', 'creditcard', 'tr_9JRPxYD47h', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_9JRPxYD47h\",\"mode\":\"test\",\"createdAt\":\"2024-11-01T00:19:22+00:00\",\"amount\":{\"value\":\"2.99\",\"currency\":\"EUR\"},\"description\":\"Monthly Membership\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-01T00:19:22+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"2.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_JgUYrcYvdR\",\"mandateId\":\"mdt_yhR5XpRTuS\",\"subscriptionId\":\"sub_DLrjFHY9tC\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"2.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_9JRPxYD47h\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_9JRPxYD47h\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.j92i1x\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR/mandates/mdt_yhR5XpRTuS\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR/subscriptions/sub_DLrjFHY9tC\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-01 00:20:12', '2024-11-01 00:20:12'),
(11, 74, 3, 'sub_XefwHqQ3wP', '2.99', 'EUR', '2024-11-01T00:19:24+00:00', 'creditcard', 'tr_eVwdnVaDzG', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_eVwdnVaDzG\",\"mode\":\"test\",\"createdAt\":\"2024-11-01T00:19:23+00:00\",\"amount\":{\"value\":\"2.99\",\"currency\":\"EUR\"},\"description\":\"Monthly Membership\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-01T00:19:24+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"2.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_jAEuWnWdBo\",\"mandateId\":\"mdt_iZ38qFFuA3\",\"subscriptionId\":\"sub_XefwHqQ3wP\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"2.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_eVwdnVaDzG\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_eVwdnVaDzG\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.pqrut1\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo/mandates/mdt_iZ38qFFuA3\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo/subscriptions/sub_XefwHqQ3wP\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-01 00:20:13', '2024-11-01 00:20:13'),
(14, 146, 2, 'sub_DLrjFHY9tC', '2.99', 'EUR', '2024-11-02T00:15:43+00:00', 'creditcard', 'tr_BCEJ2WMdR2', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_BCEJ2WMdR2\",\"mode\":\"test\",\"createdAt\":\"2024-11-02T00:15:43+00:00\",\"amount\":{\"value\":\"2.99\",\"currency\":\"EUR\"},\"description\":\"Monthly Membership\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-02T00:15:43+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"2.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_JgUYrcYvdR\",\"mandateId\":\"mdt_yhR5XpRTuS\",\"subscriptionId\":\"sub_DLrjFHY9tC\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"2.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_BCEJ2WMdR2\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_BCEJ2WMdR2\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.qaw2e0\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR/mandates/mdt_yhR5XpRTuS\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR/subscriptions/sub_DLrjFHY9tC\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-02 00:15:44', '2024-11-02 00:15:44'),
(15, 74, 3, 'sub_XefwHqQ3wP', '2.99', 'EUR', '2024-11-02T00:15:44+00:00', 'creditcard', 'tr_bt7cy2kDXG', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_bt7cy2kDXG\",\"mode\":\"test\",\"createdAt\":\"2024-11-02T00:15:44+00:00\",\"amount\":{\"value\":\"2.99\",\"currency\":\"EUR\"},\"description\":\"Monthly Membership\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-02T00:15:44+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"2.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_jAEuWnWdBo\",\"mandateId\":\"mdt_iZ38qFFuA3\",\"subscriptionId\":\"sub_XefwHqQ3wP\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"2.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_bt7cy2kDXG\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_bt7cy2kDXG\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.xtn9at\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo/mandates/mdt_iZ38qFFuA3\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo/subscriptions/sub_XefwHqQ3wP\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-02 00:15:45', '2024-11-02 00:15:45'),
(16, 146, 2, 'sub_DLrjFHY9tC', '2.99', 'EUR', '2024-11-03T00:14:31+00:00', 'creditcard', 'tr_byxs8xHTQo', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_byxs8xHTQo\",\"mode\":\"test\",\"createdAt\":\"2024-11-03T00:14:31+00:00\",\"amount\":{\"value\":\"2.99\",\"currency\":\"EUR\"},\"description\":\"Monthly Membership\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-03T00:14:31+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"2.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_JgUYrcYvdR\",\"mandateId\":\"mdt_yhR5XpRTuS\",\"subscriptionId\":\"sub_DLrjFHY9tC\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"2.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_byxs8xHTQo\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_byxs8xHTQo\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.6y6pvs\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR/mandates/mdt_yhR5XpRTuS\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR/subscriptions/sub_DLrjFHY9tC\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-03 00:14:32', '2024-11-03 00:14:32'),
(17, 74, 3, 'sub_XefwHqQ3wP', '2.99', 'EUR', '2024-11-03T00:14:32+00:00', 'creditcard', 'tr_BiN5t8W7mp', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_BiN5t8W7mp\",\"mode\":\"test\",\"createdAt\":\"2024-11-03T00:14:32+00:00\",\"amount\":{\"value\":\"2.99\",\"currency\":\"EUR\"},\"description\":\"Monthly Membership\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-03T00:14:32+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"2.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_jAEuWnWdBo\",\"mandateId\":\"mdt_iZ38qFFuA3\",\"subscriptionId\":\"sub_XefwHqQ3wP\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"2.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_BiN5t8W7mp\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_BiN5t8W7mp\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.5q2nj4\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo/mandates/mdt_iZ38qFFuA3\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo/subscriptions/sub_XefwHqQ3wP\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-03 00:14:34', '2024-11-03 00:14:34'),
(20, 74, 3, 'sub_XefwHqQ3wP', '2.99', 'EUR', '2024-11-04T00:17:52+00:00', 'creditcard', 'tr_mvX3UzQpHT', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_mvX3UzQpHT\",\"mode\":\"test\",\"createdAt\":\"2024-11-04T00:17:52+00:00\",\"amount\":{\"value\":\"2.99\",\"currency\":\"EUR\"},\"description\":\"Monthly Membership\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-04T00:17:52+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"2.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_jAEuWnWdBo\",\"mandateId\":\"mdt_iZ38qFFuA3\",\"subscriptionId\":\"sub_XefwHqQ3wP\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"2.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_mvX3UzQpHT\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_mvX3UzQpHT\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.grn2tv\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo/mandates/mdt_iZ38qFFuA3\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo/subscriptions/sub_XefwHqQ3wP\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-04 00:30:41', '2024-11-04 00:30:41'),
(21, 146, 2, 'sub_DLrjFHY9tC', '2.99', 'EUR', '2024-11-04T00:17:51+00:00', 'creditcard', 'tr_U5Ye3LgRw3', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_U5Ye3LgRw3\",\"mode\":\"test\",\"createdAt\":\"2024-11-04T00:17:51+00:00\",\"amount\":{\"value\":\"2.99\",\"currency\":\"EUR\"},\"description\":\"Monthly Membership\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-04T00:17:51+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"2.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_JgUYrcYvdR\",\"mandateId\":\"mdt_yhR5XpRTuS\",\"subscriptionId\":\"sub_DLrjFHY9tC\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"2.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_U5Ye3LgRw3\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_U5Ye3LgRw3\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.8hsxd6\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR/mandates/mdt_yhR5XpRTuS\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR/subscriptions/sub_DLrjFHY9tC\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-04 00:30:44', '2024-11-04 00:30:44'),
(23, 81, 5, 'sub_VWrpuYmZkg', '23.99', 'EUR', '2024-11-04T20:15:23+00:00', 'creditcard', 'tr_kqwX2eeDeT', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_kqwX2eeDeT\",\"mode\":\"test\",\"createdAt\":\"2024-11-04T20:14:22+00:00\",\"amount\":{\"value\":\"23.99\",\"currency\":\"EUR\"},\"description\":\"Authorize card for future payments\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-04T20:15:23+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"23.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"countryCode\":\"NL\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_Fap7DUykUP\",\"mandateId\":\"mdt_SuxHqwWaAx\",\"sequenceType\":\"first\",\"redirectUrl\":\"https://urlsdemo.online/plusone/api/redirect-success-url\",\"cancelUrl\":\"https://urlsdemo.online/plusone/api/redirect-cancel-url\",\"settlementAmount\":{\"value\":\"23.99\",\"currency\":\"EUR\"},\"details\":{\"cardToken\":\"tkn_uFi5vAtest\",\"cardNumber\":\"4444\",\"cardHolder\":\"T. TEST\",\"cardAudience\":\"consumer\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"3dsecure\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_kqwX2eeDeT\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_kqwX2eeDeT\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.nry213\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_Fap7DUykUP\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_Fap7DUykUP/mandates/mdt_SuxHqwWaAx\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-04 20:15:26', '2024-11-04 20:15:26'),
(24, 146, 2, 'sub_DLrjFHY9tC', '3.99', 'EUR', '2024-11-05T00:20:26+00:00', 'creditcard', 'tr_ptNnaDRBsk', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_ptNnaDRBsk\",\"mode\":\"test\",\"createdAt\":\"2024-11-05T00:20:26+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Monthly Membership\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-05T00:20:26+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_JgUYrcYvdR\",\"mandateId\":\"mdt_yhR5XpRTuS\",\"subscriptionId\":\"sub_DLrjFHY9tC\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_ptNnaDRBsk\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_ptNnaDRBsk\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.nq97ow\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR/mandates/mdt_yhR5XpRTuS\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR/subscriptions/sub_DLrjFHY9tC\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-05 00:39:55', '2024-11-05 00:39:55'),
(25, 74, 3, 'sub_XefwHqQ3wP', '3.99', 'EUR', '2024-11-05T00:20:28+00:00', 'creditcard', 'tr_xA75zQwR7y', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_xA75zQwR7y\",\"mode\":\"test\",\"createdAt\":\"2024-11-05T00:20:28+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Monthly Membership\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-05T00:20:28+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_jAEuWnWdBo\",\"mandateId\":\"mdt_iZ38qFFuA3\",\"subscriptionId\":\"sub_XefwHqQ3wP\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_xA75zQwR7y\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_xA75zQwR7y\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.4bqusb\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo/mandates/mdt_iZ38qFFuA3\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo/subscriptions/sub_XefwHqQ3wP\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-05 00:40:01', '2024-11-05 00:40:01'),
(26, 146, 2, 'sub_DLrjFHY9tC', '3.99', 'EUR', '2024-11-06T00:15:11+00:00', 'creditcard', 'tr_xzpUiPFkwC', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_xzpUiPFkwC\",\"mode\":\"test\",\"createdAt\":\"2024-11-06T00:15:11+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Monthly Membership\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-06T00:15:11+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_JgUYrcYvdR\",\"mandateId\":\"mdt_yhR5XpRTuS\",\"subscriptionId\":\"sub_DLrjFHY9tC\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_xzpUiPFkwC\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_xzpUiPFkwC\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.95t00j\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR/mandates/mdt_yhR5XpRTuS\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR/subscriptions/sub_DLrjFHY9tC\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-06 00:16:24', '2024-11-06 00:16:24'),
(27, 74, 3, 'sub_XefwHqQ3wP', '3.99', 'EUR', '2024-11-06T00:15:13+00:00', 'creditcard', 'tr_RJoSD3nNSW', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_RJoSD3nNSW\",\"mode\":\"test\",\"createdAt\":\"2024-11-06T00:15:13+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Monthly Membership\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-06T00:15:13+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_jAEuWnWdBo\",\"mandateId\":\"mdt_iZ38qFFuA3\",\"subscriptionId\":\"sub_XefwHqQ3wP\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_RJoSD3nNSW\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_RJoSD3nNSW\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.ozi2eo\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo/mandates/mdt_iZ38qFFuA3\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo/subscriptions/sub_XefwHqQ3wP\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-06 00:16:27', '2024-11-06 00:16:27'),
(28, 146, 2, 'sub_DLrjFHY9tC', '3.99', 'EUR', '2024-11-07T00:18:08+00:00', 'creditcard', 'tr_Hef6V5o4dE', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_Hef6V5o4dE\",\"mode\":\"test\",\"createdAt\":\"2024-11-07T00:18:08+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Monthly Membership\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-07T00:18:08+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_JgUYrcYvdR\",\"mandateId\":\"mdt_yhR5XpRTuS\",\"subscriptionId\":\"sub_DLrjFHY9tC\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_Hef6V5o4dE\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_Hef6V5o4dE\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.jw4mm0\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR/mandates/mdt_yhR5XpRTuS\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR/subscriptions/sub_DLrjFHY9tC\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-07 00:18:09', '2024-11-07 00:18:09'),
(29, 74, 3, 'sub_XefwHqQ3wP', '3.99', 'EUR', '2024-11-07T00:18:09+00:00', 'creditcard', 'tr_tVTCZ9Bwof', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_tVTCZ9Bwof\",\"mode\":\"test\",\"createdAt\":\"2024-11-07T00:18:09+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Monthly Membership\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-07T00:18:09+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_jAEuWnWdBo\",\"mandateId\":\"mdt_iZ38qFFuA3\",\"subscriptionId\":\"sub_XefwHqQ3wP\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_tVTCZ9Bwof\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_tVTCZ9Bwof\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.9i9ncz\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo/mandates/mdt_iZ38qFFuA3\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo/subscriptions/sub_XefwHqQ3wP\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-07 00:18:10', '2024-11-07 00:18:10'),
(30, 146, 2, 'sub_DLrjFHY9tC', '3.99', 'EUR', '2024-11-08T00:14:41+00:00', 'creditcard', 'tr_ZUWmp3Nt57', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_ZUWmp3Nt57\",\"mode\":\"test\",\"createdAt\":\"2024-11-08T00:14:41+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Monthly Membership\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-08T00:14:41+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_JgUYrcYvdR\",\"mandateId\":\"mdt_yhR5XpRTuS\",\"subscriptionId\":\"sub_DLrjFHY9tC\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_ZUWmp3Nt57\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_ZUWmp3Nt57\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.apuqma\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR/mandates/mdt_yhR5XpRTuS\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_JgUYrcYvdR/subscriptions/sub_DLrjFHY9tC\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-08 00:14:42', '2024-11-08 00:14:42'),
(31, 74, 3, 'sub_XefwHqQ3wP', '3.99', 'EUR', '2024-11-08T00:14:42+00:00', 'creditcard', 'tr_doxWonSFdE', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_doxWonSFdE\",\"mode\":\"test\",\"createdAt\":\"2024-11-08T00:14:42+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Monthly Membership\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-08T00:14:42+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_jAEuWnWdBo\",\"mandateId\":\"mdt_iZ38qFFuA3\",\"subscriptionId\":\"sub_XefwHqQ3wP\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_doxWonSFdE\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_doxWonSFdE\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.80ldhp\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo/mandates/mdt_iZ38qFFuA3\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo/subscriptions/sub_XefwHqQ3wP\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-08 00:14:43', '2024-11-08 00:14:43'),
(32, 179, 6, 'sub_LWdy3eQzxW', '3.99', 'EUR', '2024-11-09T00:17:00+00:00', 'creditcard', 'tr_KBHCD73GpP', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_KBHCD73GpP\",\"mode\":\"test\",\"createdAt\":\"2024-11-09T00:17:00+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-09T00:17:00+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_3oKc2R2XJB\",\"mandateId\":\"mdt_AhFm32V5M8\",\"subscriptionId\":\"sub_LWdy3eQzxW\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_KBHCD73GpP\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_KBHCD73GpP\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.s661bp\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_3oKc2R2XJB\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_3oKc2R2XJB/mandates/mdt_AhFm32V5M8\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_3oKc2R2XJB/subscriptions/sub_LWdy3eQzxW\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-08 12:29:19', '2024-11-09 00:17:01'),
(33, 179, 6, 'sub_qTNMtNw3Gw', '3.99', 'EUR', '2024-11-08T13:05:15+00:00', 'creditcard', 'tr_RmtXd9hVFb', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_RmtXd9hVFb\",\"mode\":\"test\",\"createdAt\":\"2024-11-08T13:05:15+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-08T13:05:15+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_GNx6YvgEvK\",\"mandateId\":\"mdt_529Cvpx6te\",\"subscriptionId\":\"sub_qTNMtNw3Gw\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_RmtXd9hVFb\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_RmtXd9hVFb\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.2vls21\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_GNx6YvgEvK\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_GNx6YvgEvK/mandates/mdt_529Cvpx6te\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_GNx6YvgEvK/subscriptions/sub_qTNMtNw3Gw\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-08 13:02:40', '2024-11-08 13:05:16');
INSERT INTO `transactions` (`id`, `user_id`, `subscription_internal_id`, `subscription_id`, `amount`, `currency`, `date`, `payment_method`, `transaction_id`, `status`, `transaction_response`, `created_at`, `updated_at`) VALUES
(34, 186, 7, 'sub_UKsbih2tdt', '3.99', 'EUR', '2024-11-08T13:20:18+00:00', 'creditcard', 'tr_Hmf29627KC', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_Hmf29627KC\",\"mode\":\"test\",\"createdAt\":\"2024-11-08T13:20:17+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-08T13:20:18+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_KG69MKLkne\",\"mandateId\":\"mdt_8jL4rrUvQa\",\"subscriptionId\":\"sub_UKsbih2tdt\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_Hmf29627KC\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_Hmf29627KC\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.xhsscc\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_KG69MKLkne\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_KG69MKLkne/mandates/mdt_8jL4rrUvQa\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_KG69MKLkne/subscriptions/sub_UKsbih2tdt\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-08 13:39:08', '2024-11-08 13:39:08'),
(35, 74, 3, 'sub_XefwHqQ3wP', '3.99', 'EUR', '2024-11-09T00:16:47+00:00', 'creditcard', 'tr_BKENDUqG57', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_BKENDUqG57\",\"mode\":\"test\",\"createdAt\":\"2024-11-09T00:16:47+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Monthly Membership\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-09T00:16:47+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_jAEuWnWdBo\",\"mandateId\":\"mdt_iZ38qFFuA3\",\"subscriptionId\":\"sub_XefwHqQ3wP\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_BKENDUqG57\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_BKENDUqG57\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.liimpz\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo/mandates/mdt_iZ38qFFuA3\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_jAEuWnWdBo/subscriptions/sub_XefwHqQ3wP\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-09 00:16:48', '2024-11-09 00:16:48'),
(36, 186, 7, 'sub_UKsbih2tdt', '3.99', 'EUR', '2024-11-09T00:17:01+00:00', 'creditcard', 'tr_Pn3ZrRtrn2', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_Pn3ZrRtrn2\",\"mode\":\"test\",\"createdAt\":\"2024-11-09T00:17:01+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-09T00:17:01+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_KG69MKLkne\",\"mandateId\":\"mdt_8jL4rrUvQa\",\"subscriptionId\":\"sub_UKsbih2tdt\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_Pn3ZrRtrn2\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_Pn3ZrRtrn2\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.hc3pov\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_KG69MKLkne\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_KG69MKLkne/mandates/mdt_8jL4rrUvQa\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_KG69MKLkne/subscriptions/sub_UKsbih2tdt\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-09 00:17:02', '2024-11-09 00:17:02'),
(38, 187, 8, 'sub_XiG3KPW88V', '3.99', 'EUR', '2024-11-09T10:35:18+00:00', 'creditcard', 'tr_fHrXv4NC99', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_fHrXv4NC99\",\"mode\":\"test\",\"createdAt\":\"2024-11-09T10:35:18+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-09T10:35:18+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_5C8kTbJmDV\",\"mandateId\":\"mdt_GSLZXqRXNz\",\"subscriptionId\":\"sub_XiG3KPW88V\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_fHrXv4NC99\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_fHrXv4NC99\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.9ctmtd\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_5C8kTbJmDV\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_5C8kTbJmDV/mandates/mdt_GSLZXqRXNz\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_5C8kTbJmDV/subscriptions/sub_XiG3KPW88V\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-09 10:36:46', '2024-11-09 10:36:46'),
(39, 77, 9, 'sub_y6J7NuSokF', '3.99', 'EUR', '2024-11-09T11:50:19+00:00', 'creditcard', 'tr_xqgF2mMzoX', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_xqgF2mMzoX\",\"mode\":\"test\",\"createdAt\":\"2024-11-09T11:50:19+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-09T11:50:19+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_fwVxpUUV7W\",\"mandateId\":\"mdt_NgjoHiseNJ\",\"subscriptionId\":\"sub_y6J7NuSokF\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_xqgF2mMzoX\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_xqgF2mMzoX\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.yn86xp\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W/mandates/mdt_NgjoHiseNJ\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W/subscriptions/sub_y6J7NuSokF\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-09 12:01:21', '2024-11-09 12:01:21'),
(40, 187, 8, 'sub_XiG3KPW88V', '3.99', 'EUR', '2024-11-10T00:14:38+00:00', 'creditcard', 'tr_jLgieXNhat', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_jLgieXNhat\",\"mode\":\"test\",\"createdAt\":\"2024-11-10T00:14:38+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-10T00:14:38+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_5C8kTbJmDV\",\"mandateId\":\"mdt_GSLZXqRXNz\",\"subscriptionId\":\"sub_XiG3KPW88V\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_jLgieXNhat\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_jLgieXNhat\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.fl16zt\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_5C8kTbJmDV\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_5C8kTbJmDV/mandates/mdt_GSLZXqRXNz\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_5C8kTbJmDV/subscriptions/sub_XiG3KPW88V\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-10 00:14:45', '2024-11-10 00:14:45'),
(41, 187, 8, 'sub_XiG3KPW88V', '3.99', 'EUR', '2024-11-11T00:16:47+00:00', 'creditcard', 'tr_C6rMnExxxX', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_C6rMnExxxX\",\"mode\":\"test\",\"createdAt\":\"2024-11-11T00:16:47+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-11T00:16:47+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_5C8kTbJmDV\",\"mandateId\":\"mdt_GSLZXqRXNz\",\"subscriptionId\":\"sub_XiG3KPW88V\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_C6rMnExxxX\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_C6rMnExxxX\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.5vys2h\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_5C8kTbJmDV\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_5C8kTbJmDV/mandates/mdt_GSLZXqRXNz\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_5C8kTbJmDV/subscriptions/sub_XiG3KPW88V\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-11 00:23:44', '2024-11-11 00:23:44'),
(42, 189, 10, 'sub_TxWqUV4SiK', '3.99', 'EUR', '2024-11-11T13:20:16+00:00', 'creditcard', 'tr_FXQ66b5NAZ', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_FXQ66b5NAZ\",\"mode\":\"test\",\"createdAt\":\"2024-11-11T13:20:16+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-11T13:20:16+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_shF7brQLFp\",\"mandateId\":\"mdt_Mf9NTKrQk4\",\"subscriptionId\":\"sub_TxWqUV4SiK\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_FXQ66b5NAZ\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_FXQ66b5NAZ\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.xkjxme\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_shF7brQLFp\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_shF7brQLFp/mandates/mdt_Mf9NTKrQk4\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_shF7brQLFp/subscriptions/sub_TxWqUV4SiK\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-11 13:25:55', '2024-11-11 13:25:55'),
(43, 187, 8, 'sub_XiG3KPW88V', '3.99', 'EUR', '2024-11-12T00:17:59+00:00', 'creditcard', 'tr_EVqS9VQnW4', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_EVqS9VQnW4\",\"mode\":\"test\",\"createdAt\":\"2024-11-12T00:17:59+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-12T00:17:59+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_5C8kTbJmDV\",\"mandateId\":\"mdt_GSLZXqRXNz\",\"subscriptionId\":\"sub_XiG3KPW88V\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_EVqS9VQnW4\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_EVqS9VQnW4\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.44qja9\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_5C8kTbJmDV\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_5C8kTbJmDV/mandates/mdt_GSLZXqRXNz\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_5C8kTbJmDV/subscriptions/sub_XiG3KPW88V\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-12 01:05:22', '2024-11-12 01:05:22'),
(44, 189, 10, 'sub_TxWqUV4SiK', '3.99', 'EUR', '2024-11-12T00:18:02+00:00', 'creditcard', 'tr_vCBsYb5KDp', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_vCBsYb5KDp\",\"mode\":\"test\",\"createdAt\":\"2024-11-12T00:18:02+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-12T00:18:02+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_shF7brQLFp\",\"mandateId\":\"mdt_Mf9NTKrQk4\",\"subscriptionId\":\"sub_TxWqUV4SiK\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_vCBsYb5KDp\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_vCBsYb5KDp\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.yuy018\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_shF7brQLFp\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_shF7brQLFp/mandates/mdt_Mf9NTKrQk4\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_shF7brQLFp/subscriptions/sub_TxWqUV4SiK\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-12 01:05:37', '2024-11-12 01:05:37'),
(47, 77, 9, 'sub_y6J7NuSokF', '3.99', 'EUR', '2024-11-12T10:20:17+00:00', 'creditcard', 'tr_wLfS7LCdUB', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_wLfS7LCdUB\",\"mode\":\"test\",\"createdAt\":\"2024-11-12T10:20:16+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-12T10:20:17+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_fwVxpUUV7W\",\"mandateId\":\"mdt_NgjoHiseNJ\",\"subscriptionId\":\"sub_D7YnQ2qGQr\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_wLfS7LCdUB\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_wLfS7LCdUB\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.tv5jjs\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W/mandates/mdt_NgjoHiseNJ\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W/subscriptions/sub_D7YnQ2qGQr\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-12 10:20:18', '2024-11-12 10:20:18'),
(48, 77, 9, 'sub_sBxUDTGfPK', '3.99', 'EUR', '2024-11-12T10:35:16+00:00', 'creditcard', 'tr_TfpTcLuTaD', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_TfpTcLuTaD\",\"mode\":\"test\",\"createdAt\":\"2024-11-12T10:35:16+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-12T10:35:16+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_fwVxpUUV7W\",\"mandateId\":\"mdt_NgjoHiseNJ\",\"subscriptionId\":\"sub_sBxUDTGfPK\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_TfpTcLuTaD\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_TfpTcLuTaD\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.qpt5gx\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W/mandates/mdt_NgjoHiseNJ\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W/subscriptions/sub_sBxUDTGfPK\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-12 10:29:15', '2024-11-12 10:35:17'),
(49, 77, 9, 'sub_JzRQgFQ7FV', '3.99', 'EUR', '2024-11-12T11:05:18+00:00', 'creditcard', 'tr_6sakAfS8sx', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_6sakAfS8sx\",\"mode\":\"test\",\"createdAt\":\"2024-11-12T11:05:18+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-12T11:05:18+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_fwVxpUUV7W\",\"mandateId\":\"mdt_NgjoHiseNJ\",\"subscriptionId\":\"sub_JzRQgFQ7FV\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_6sakAfS8sx\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_6sakAfS8sx\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.c2ehz5\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W/mandates/mdt_NgjoHiseNJ\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W/subscriptions/sub_JzRQgFQ7FV\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-12 11:03:50', '2024-11-12 11:05:20'),
(50, 77, 9, 'sub_JzRQgFQ7FV', '3.99', 'EUR', '2024-11-12T13:05:16+00:00', 'creditcard', 'tr_AzUFUvjJCc', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_AzUFUvjJCc\",\"mode\":\"test\",\"createdAt\":\"2024-11-12T13:05:16+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-12T13:05:16+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_fwVxpUUV7W\",\"mandateId\":\"mdt_NgjoHiseNJ\",\"subscriptionId\":\"sub_u3V3pAU2da\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_AzUFUvjJCc\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_AzUFUvjJCc\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.r5nrr4\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W/mandates/mdt_NgjoHiseNJ\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W/subscriptions/sub_u3V3pAU2da\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-12 13:05:18', '2024-11-12 13:05:18'),
(51, 191, 12, 'sub_bdc2X3QovZ', '3.99', 'EUR', '2024-11-12T13:35:19+00:00', 'creditcard', 'tr_ZVfbtL2CAU', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_ZVfbtL2CAU\",\"mode\":\"test\",\"createdAt\":\"2024-11-12T13:35:19+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-12T13:35:19+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_domvAj862j\",\"mandateId\":\"mdt_6pRLyjsqpA\",\"subscriptionId\":\"sub_bdc2X3QovZ\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_ZVfbtL2CAU\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_ZVfbtL2CAU\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.uhhs47\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_domvAj862j\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_domvAj862j/mandates/mdt_6pRLyjsqpA\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_domvAj862j/subscriptions/sub_bdc2X3QovZ\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-12 13:36:45', '2024-11-12 13:36:45'),
(52, 187, 8, 'sub_XiG3KPW88V', '3.99', 'EUR', '2024-11-13T00:14:44+00:00', 'creditcard', 'tr_GpGEqShopu', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_GpGEqShopu\",\"mode\":\"test\",\"createdAt\":\"2024-11-13T00:14:44+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-13T00:14:44+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_5C8kTbJmDV\",\"mandateId\":\"mdt_GSLZXqRXNz\",\"subscriptionId\":\"sub_XiG3KPW88V\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_GpGEqShopu\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_GpGEqShopu\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.lcgq0h\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_5C8kTbJmDV\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_5C8kTbJmDV/mandates/mdt_GSLZXqRXNz\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_5C8kTbJmDV/subscriptions/sub_XiG3KPW88V\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-13 00:14:45', '2024-11-13 00:14:45'),
(53, 77, 9, 'sub_JzRQgFQ7FV', '3.99', 'EUR', '2024-11-13T00:14:51+00:00', 'creditcard', 'tr_Jar6neMXc6', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_Jar6neMXc6\",\"mode\":\"test\",\"createdAt\":\"2024-11-13T00:14:50+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-13T00:14:51+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_fwVxpUUV7W\",\"mandateId\":\"mdt_NgjoHiseNJ\",\"subscriptionId\":\"sub_u3V3pAU2da\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_Jar6neMXc6\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_Jar6neMXc6\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.w6p4qe\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W/mandates/mdt_NgjoHiseNJ\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W/subscriptions/sub_u3V3pAU2da\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-13 00:14:51', '2024-11-13 00:14:51'),
(54, 189, 10, 'sub_TxWqUV4SiK', '3.99', 'EUR', '2024-11-13T00:14:48+00:00', 'creditcard', 'tr_vcCaTA7tSX', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_vcCaTA7tSX\",\"mode\":\"test\",\"createdAt\":\"2024-11-13T00:14:48+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-13T00:14:48+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_shF7brQLFp\",\"mandateId\":\"mdt_Mf9NTKrQk4\",\"subscriptionId\":\"sub_TxWqUV4SiK\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_vcCaTA7tSX\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_vcCaTA7tSX\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.8kazuf\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_shF7brQLFp\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_shF7brQLFp/mandates/mdt_Mf9NTKrQk4\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_shF7brQLFp/subscriptions/sub_TxWqUV4SiK\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-13 00:14:54', '2024-11-13 00:14:54'),
(55, 191, 12, 'sub_bdc2X3QovZ', '3.99', 'EUR', '2024-11-13T00:14:51+00:00', 'creditcard', 'tr_YDByUYenNz', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_YDByUYenNz\",\"mode\":\"test\",\"createdAt\":\"2024-11-13T00:14:51+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-13T00:14:51+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_domvAj862j\",\"mandateId\":\"mdt_6pRLyjsqpA\",\"subscriptionId\":\"sub_bdc2X3QovZ\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_YDByUYenNz\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_YDByUYenNz\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.5f6wh7\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_domvAj862j\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_domvAj862j/mandates/mdt_6pRLyjsqpA\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_domvAj862j/subscriptions/sub_bdc2X3QovZ\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-13 00:14:55', '2024-11-13 00:14:55'),
(56, 187, 8, 'sub_XiG3KPW88V', '3.99', 'EUR', '2024-11-14T00:14:56+00:00', 'creditcard', 'tr_yCLUHdBWuz', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_yCLUHdBWuz\",\"mode\":\"test\",\"createdAt\":\"2024-11-14T00:14:56+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-14T00:14:56+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_5C8kTbJmDV\",\"mandateId\":\"mdt_GSLZXqRXNz\",\"subscriptionId\":\"sub_XiG3KPW88V\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_yCLUHdBWuz\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_yCLUHdBWuz\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.8e6zho\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_5C8kTbJmDV\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_5C8kTbJmDV/mandates/mdt_GSLZXqRXNz\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_5C8kTbJmDV/subscriptions/sub_XiG3KPW88V\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-14 00:15:16', '2024-11-14 00:15:16'),
(57, 189, 10, 'sub_TxWqUV4SiK', '3.99', 'EUR', '2024-11-14T00:15:01+00:00', 'creditcard', 'tr_iDapaRRbKx', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_iDapaRRbKx\",\"mode\":\"test\",\"createdAt\":\"2024-11-14T00:15:01+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-14T00:15:01+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_shF7brQLFp\",\"mandateId\":\"mdt_Mf9NTKrQk4\",\"subscriptionId\":\"sub_TxWqUV4SiK\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_iDapaRRbKx\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_iDapaRRbKx\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.zdpxkk\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_shF7brQLFp\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_shF7brQLFp/mandates/mdt_Mf9NTKrQk4\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_shF7brQLFp/subscriptions/sub_TxWqUV4SiK\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-14 00:15:33', '2024-11-14 00:15:33'),
(58, 191, 12, 'sub_bdc2X3QovZ', '3.99', 'EUR', '2024-11-14T00:15:02+00:00', 'creditcard', 'tr_k7f4vLvVDK', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_k7f4vLvVDK\",\"mode\":\"test\",\"createdAt\":\"2024-11-14T00:15:02+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-14T00:15:02+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_domvAj862j\",\"mandateId\":\"mdt_6pRLyjsqpA\",\"subscriptionId\":\"sub_bdc2X3QovZ\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_k7f4vLvVDK\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_k7f4vLvVDK\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.f33h3m\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_domvAj862j\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_domvAj862j/mandates/mdt_6pRLyjsqpA\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_domvAj862j/subscriptions/sub_bdc2X3QovZ\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-14 00:15:34', '2024-11-14 00:15:34'),
(59, 77, 9, 'sub_JzRQgFQ7FV', '3.99', 'EUR', '2024-11-14T00:15:02+00:00', 'creditcard', 'tr_uTzHwJvQeM', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_uTzHwJvQeM\",\"mode\":\"test\",\"createdAt\":\"2024-11-14T00:15:02+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-14T00:15:02+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_fwVxpUUV7W\",\"mandateId\":\"mdt_NgjoHiseNJ\",\"subscriptionId\":\"sub_u3V3pAU2da\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_uTzHwJvQeM\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_uTzHwJvQeM\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.x4uxl0\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W/mandates/mdt_NgjoHiseNJ\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W/subscriptions/sub_u3V3pAU2da\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-14 00:15:47', '2024-11-14 00:15:47'),
(60, 187, 8, 'sub_XiG3KPW88V', '3.99', 'EUR', '2024-11-15T00:16:42+00:00', 'creditcard', 'tr_NDT5tLXRa5', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_NDT5tLXRa5\",\"mode\":\"test\",\"createdAt\":\"2024-11-15T00:16:42+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-15T00:16:42+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_5C8kTbJmDV\",\"mandateId\":\"mdt_GSLZXqRXNz\",\"subscriptionId\":\"sub_XiG3KPW88V\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_NDT5tLXRa5\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_NDT5tLXRa5\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.sks02e\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_5C8kTbJmDV\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_5C8kTbJmDV/mandates/mdt_GSLZXqRXNz\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_5C8kTbJmDV/subscriptions/sub_XiG3KPW88V\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-15 00:17:35', '2024-11-15 00:17:35');
INSERT INTO `transactions` (`id`, `user_id`, `subscription_internal_id`, `subscription_id`, `amount`, `currency`, `date`, `payment_method`, `transaction_id`, `status`, `transaction_response`, `created_at`, `updated_at`) VALUES
(61, 191, 12, 'sub_bdc2X3QovZ', '3.99', 'EUR', '2024-11-15T00:16:49+00:00', 'creditcard', 'tr_b8nJgSECkP', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_b8nJgSECkP\",\"mode\":\"test\",\"createdAt\":\"2024-11-15T00:16:49+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-15T00:16:49+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_domvAj862j\",\"mandateId\":\"mdt_6pRLyjsqpA\",\"subscriptionId\":\"sub_bdc2X3QovZ\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_b8nJgSECkP\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_b8nJgSECkP\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.k0ks5a\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_domvAj862j\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_domvAj862j/mandates/mdt_6pRLyjsqpA\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_domvAj862j/subscriptions/sub_bdc2X3QovZ\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-15 00:17:54', '2024-11-15 00:17:54'),
(62, 77, 9, 'sub_JzRQgFQ7FV', '3.99', 'EUR', '2024-11-15T00:16:49+00:00', 'creditcard', 'tr_hPrCqKaWMg', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_hPrCqKaWMg\",\"mode\":\"test\",\"createdAt\":\"2024-11-15T00:16:49+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-15T00:16:49+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_fwVxpUUV7W\",\"mandateId\":\"mdt_NgjoHiseNJ\",\"subscriptionId\":\"sub_u3V3pAU2da\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_hPrCqKaWMg\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_hPrCqKaWMg\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.thehsf\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W/mandates/mdt_NgjoHiseNJ\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W/subscriptions/sub_u3V3pAU2da\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-15 00:17:55', '2024-11-15 00:17:55'),
(63, 189, 10, 'sub_TxWqUV4SiK', '3.99', 'EUR', '2024-11-15T00:16:47+00:00', 'creditcard', 'tr_PKWxNV4ZrE', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_PKWxNV4ZrE\",\"mode\":\"test\",\"createdAt\":\"2024-11-15T00:16:47+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-15T00:16:47+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_shF7brQLFp\",\"mandateId\":\"mdt_Mf9NTKrQk4\",\"subscriptionId\":\"sub_TxWqUV4SiK\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_PKWxNV4ZrE\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_PKWxNV4ZrE\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.4cq3qc\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_shF7brQLFp\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_shF7brQLFp/mandates/mdt_Mf9NTKrQk4\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_shF7brQLFp/subscriptions/sub_TxWqUV4SiK\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-15 00:18:08', '2024-11-15 00:18:08'),
(64, 187, 8, 'sub_XiG3KPW88V', '3.99', 'EUR', '2024-11-16T00:16:11+00:00', 'creditcard', 'tr_HknX5Jjprn', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_HknX5Jjprn\",\"mode\":\"test\",\"createdAt\":\"2024-11-16T00:16:11+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-16T00:16:11+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_5C8kTbJmDV\",\"mandateId\":\"mdt_GSLZXqRXNz\",\"subscriptionId\":\"sub_XiG3KPW88V\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_HknX5Jjprn\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_HknX5Jjprn\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.ir4ek4\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_5C8kTbJmDV\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_5C8kTbJmDV/mandates/mdt_GSLZXqRXNz\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_5C8kTbJmDV/subscriptions/sub_XiG3KPW88V\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-16 00:16:12', '2024-11-16 00:16:12'),
(65, 189, 10, 'sub_TxWqUV4SiK', '3.99', 'EUR', '2024-11-16T00:16:17+00:00', 'creditcard', 'tr_xgbqAwLKkx', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_xgbqAwLKkx\",\"mode\":\"test\",\"createdAt\":\"2024-11-16T00:16:17+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-16T00:16:17+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_shF7brQLFp\",\"mandateId\":\"mdt_Mf9NTKrQk4\",\"subscriptionId\":\"sub_TxWqUV4SiK\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_xgbqAwLKkx\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_xgbqAwLKkx\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.t0x4ky\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_shF7brQLFp\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_shF7brQLFp/mandates/mdt_Mf9NTKrQk4\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_shF7brQLFp/subscriptions/sub_TxWqUV4SiK\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-16 00:16:17', '2024-11-16 00:16:17'),
(66, 77, 9, 'sub_JzRQgFQ7FV', '3.99', 'EUR', '2024-11-16T00:16:18+00:00', 'creditcard', 'tr_RKUqU7zZzM', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_RKUqU7zZzM\",\"mode\":\"test\",\"createdAt\":\"2024-11-16T00:16:18+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-16T00:16:18+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_fwVxpUUV7W\",\"mandateId\":\"mdt_NgjoHiseNJ\",\"subscriptionId\":\"sub_u3V3pAU2da\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_RKUqU7zZzM\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_RKUqU7zZzM\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.ii1oxx\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W/mandates/mdt_NgjoHiseNJ\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W/subscriptions/sub_u3V3pAU2da\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-16 00:16:19', '2024-11-16 00:16:19'),
(67, 191, 12, 'sub_bdc2X3QovZ', '3.99', 'EUR', '2024-11-16T00:16:19+00:00', 'creditcard', 'tr_iEo82Us8Pt', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_iEo82Us8Pt\",\"mode\":\"test\",\"createdAt\":\"2024-11-16T00:16:18+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-16T00:16:19+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_domvAj862j\",\"mandateId\":\"mdt_6pRLyjsqpA\",\"subscriptionId\":\"sub_bdc2X3QovZ\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_iEo82Us8Pt\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_iEo82Us8Pt\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.r7v5j2\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_domvAj862j\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_domvAj862j/mandates/mdt_6pRLyjsqpA\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_domvAj862j/subscriptions/sub_bdc2X3QovZ\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-16 00:16:19', '2024-11-16 00:16:19'),
(68, 187, 8, 'sub_XiG3KPW88V', '3.99', 'EUR', '2024-11-17T00:17:31+00:00', 'creditcard', 'tr_u4YUMYDc2E', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_u4YUMYDc2E\",\"mode\":\"test\",\"createdAt\":\"2024-11-17T00:17:31+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-17T00:17:31+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_5C8kTbJmDV\",\"mandateId\":\"mdt_GSLZXqRXNz\",\"subscriptionId\":\"sub_XiG3KPW88V\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_u4YUMYDc2E\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_u4YUMYDc2E\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.b0asf5\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_5C8kTbJmDV\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_5C8kTbJmDV/mandates/mdt_GSLZXqRXNz\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_5C8kTbJmDV/subscriptions/sub_XiG3KPW88V\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-17 00:17:32', '2024-11-17 00:17:32'),
(69, 191, 12, 'sub_bdc2X3QovZ', '3.99', 'EUR', '2024-11-17T00:17:39+00:00', 'creditcard', 'tr_7Xm9zXRC6L', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_7Xm9zXRC6L\",\"mode\":\"test\",\"createdAt\":\"2024-11-17T00:17:39+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-17T00:17:39+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_domvAj862j\",\"mandateId\":\"mdt_6pRLyjsqpA\",\"subscriptionId\":\"sub_bdc2X3QovZ\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_7Xm9zXRC6L\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_7Xm9zXRC6L\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.tist3o\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_domvAj862j\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_domvAj862j/mandates/mdt_6pRLyjsqpA\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_domvAj862j/subscriptions/sub_bdc2X3QovZ\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-17 00:17:40', '2024-11-17 00:17:40'),
(70, 189, 10, 'sub_TxWqUV4SiK', '3.99', 'EUR', '2024-11-17T00:17:37+00:00', 'creditcard', 'tr_44SuuBhZd4', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_44SuuBhZd4\",\"mode\":\"test\",\"createdAt\":\"2024-11-17T00:17:37+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-17T00:17:37+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_shF7brQLFp\",\"mandateId\":\"mdt_Mf9NTKrQk4\",\"subscriptionId\":\"sub_TxWqUV4SiK\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_44SuuBhZd4\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_44SuuBhZd4\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.n7ucwe\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_shF7brQLFp\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_shF7brQLFp/mandates/mdt_Mf9NTKrQk4\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_shF7brQLFp/subscriptions/sub_TxWqUV4SiK\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-17 00:17:53', '2024-11-17 00:17:53'),
(71, 77, 9, 'sub_JzRQgFQ7FV', '3.99', 'EUR', '2024-11-17T00:17:39+00:00', 'creditcard', 'tr_r3MJwkDKrR', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_r3MJwkDKrR\",\"mode\":\"test\",\"createdAt\":\"2024-11-17T00:17:39+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-17T00:17:39+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_fwVxpUUV7W\",\"mandateId\":\"mdt_NgjoHiseNJ\",\"subscriptionId\":\"sub_u3V3pAU2da\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_r3MJwkDKrR\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_r3MJwkDKrR\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.378nhh\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W/mandates/mdt_NgjoHiseNJ\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W/subscriptions/sub_u3V3pAU2da\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-17 00:17:54', '2024-11-17 00:17:54'),
(72, 187, 8, 'sub_XiG3KPW88V', '3.99', 'EUR', '2024-11-18T00:16:19+00:00', 'creditcard', 'tr_UryWmjyZU6', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_UryWmjyZU6\",\"mode\":\"test\",\"createdAt\":\"2024-11-18T00:16:19+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-18T00:16:19+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_5C8kTbJmDV\",\"mandateId\":\"mdt_GSLZXqRXNz\",\"subscriptionId\":\"sub_XiG3KPW88V\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_UryWmjyZU6\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_UryWmjyZU6\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.kz41i9\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_5C8kTbJmDV\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_5C8kTbJmDV/mandates/mdt_GSLZXqRXNz\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_5C8kTbJmDV/subscriptions/sub_XiG3KPW88V\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-18 00:16:21', '2024-11-18 00:16:21'),
(73, 189, 10, 'sub_TxWqUV4SiK', '3.99', 'EUR', '2024-11-18T00:16:27+00:00', 'creditcard', 'tr_xBzfemaTMg', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_xBzfemaTMg\",\"mode\":\"test\",\"createdAt\":\"2024-11-18T00:16:27+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-18T00:16:27+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_shF7brQLFp\",\"mandateId\":\"mdt_Mf9NTKrQk4\",\"subscriptionId\":\"sub_TxWqUV4SiK\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_xBzfemaTMg\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_xBzfemaTMg\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.lfw3fm\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_shF7brQLFp\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_shF7brQLFp/mandates/mdt_Mf9NTKrQk4\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_shF7brQLFp/subscriptions/sub_TxWqUV4SiK\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-18 00:16:28', '2024-11-18 00:16:28'),
(74, 77, 9, 'sub_JzRQgFQ7FV', '3.99', 'EUR', '2024-11-18T00:16:32+00:00', 'creditcard', 'tr_w3SDf7b6qm', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_w3SDf7b6qm\",\"mode\":\"test\",\"createdAt\":\"2024-11-18T00:16:32+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-18T00:16:32+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_fwVxpUUV7W\",\"mandateId\":\"mdt_NgjoHiseNJ\",\"subscriptionId\":\"sub_u3V3pAU2da\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_w3SDf7b6qm\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_w3SDf7b6qm\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.piflhe\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W/mandates/mdt_NgjoHiseNJ\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W/subscriptions/sub_u3V3pAU2da\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-18 00:16:33', '2024-11-18 00:16:33'),
(75, 191, 12, 'sub_bdc2X3QovZ', '3.99', 'EUR', '2024-11-18T00:16:33+00:00', 'creditcard', 'tr_VG5xTp9puh', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_VG5xTp9puh\",\"mode\":\"test\",\"createdAt\":\"2024-11-18T00:16:32+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-18T00:16:33+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_domvAj862j\",\"mandateId\":\"mdt_6pRLyjsqpA\",\"subscriptionId\":\"sub_bdc2X3QovZ\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_VG5xTp9puh\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_VG5xTp9puh\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.g6lldp\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_domvAj862j\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_domvAj862j/mandates/mdt_6pRLyjsqpA\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_domvAj862j/subscriptions/sub_bdc2X3QovZ\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-18 00:16:33', '2024-11-18 00:16:33'),
(76, 189, 10, 'sub_TxWqUV4SiK', '3.99', 'EUR', '2024-11-19T00:15:59+00:00', 'creditcard', 'tr_JXzqL9FUUf', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_JXzqL9FUUf\",\"mode\":\"test\",\"createdAt\":\"2024-11-19T00:15:59+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-19T00:15:59+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_shF7brQLFp\",\"mandateId\":\"mdt_Mf9NTKrQk4\",\"subscriptionId\":\"sub_TxWqUV4SiK\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_JXzqL9FUUf\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_JXzqL9FUUf\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.lu463m\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_shF7brQLFp\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_shF7brQLFp/mandates/mdt_Mf9NTKrQk4\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_shF7brQLFp/subscriptions/sub_TxWqUV4SiK\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-19 00:56:33', '2024-11-19 00:56:33'),
(77, 77, 9, 'sub_JzRQgFQ7FV', '3.99', 'EUR', '2024-11-19T00:16:03+00:00', 'creditcard', 'tr_8fmNvwjc9a', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_8fmNvwjc9a\",\"mode\":\"test\",\"createdAt\":\"2024-11-19T00:16:03+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-19T00:16:03+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_fwVxpUUV7W\",\"mandateId\":\"mdt_NgjoHiseNJ\",\"subscriptionId\":\"sub_u3V3pAU2da\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_8fmNvwjc9a\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_8fmNvwjc9a\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.pgre6u\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W/mandates/mdt_NgjoHiseNJ\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W/subscriptions/sub_u3V3pAU2da\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-19 00:56:34', '2024-11-19 00:56:34'),
(78, 191, 12, 'sub_bdc2X3QovZ', '3.99', 'EUR', '2024-11-19T00:16:03+00:00', 'creditcard', 'tr_TXFP9khnAK', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_TXFP9khnAK\",\"mode\":\"test\",\"createdAt\":\"2024-11-19T00:16:03+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-19T00:16:03+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_domvAj862j\",\"mandateId\":\"mdt_6pRLyjsqpA\",\"subscriptionId\":\"sub_bdc2X3QovZ\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_TXFP9khnAK\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_TXFP9khnAK\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.79z4oc\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_domvAj862j\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_domvAj862j/mandates/mdt_6pRLyjsqpA\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_domvAj862j/subscriptions/sub_bdc2X3QovZ\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-19 00:56:48', '2024-11-19 00:56:48'),
(79, 189, 10, 'sub_TxWqUV4SiK', '3.99', 'EUR', '2024-11-20T00:17:35+00:00', 'creditcard', 'tr_br5xKsxcrE', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_br5xKsxcrE\",\"mode\":\"test\",\"createdAt\":\"2024-11-20T00:17:35+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-20T00:17:35+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_shF7brQLFp\",\"mandateId\":\"mdt_Mf9NTKrQk4\",\"subscriptionId\":\"sub_TxWqUV4SiK\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_br5xKsxcrE\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_br5xKsxcrE\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.idivgs\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_shF7brQLFp\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_shF7brQLFp/mandates/mdt_Mf9NTKrQk4\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_shF7brQLFp/subscriptions/sub_TxWqUV4SiK\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-20 00:17:37', '2024-11-20 00:17:37'),
(80, 77, 9, 'sub_JzRQgFQ7FV', '3.99', 'EUR', '2024-11-20T00:17:37+00:00', 'creditcard', 'tr_R2sfL5vHfi', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_R2sfL5vHfi\",\"mode\":\"test\",\"createdAt\":\"2024-11-20T00:17:37+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-20T00:17:37+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_fwVxpUUV7W\",\"mandateId\":\"mdt_NgjoHiseNJ\",\"subscriptionId\":\"sub_u3V3pAU2da\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_R2sfL5vHfi\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_R2sfL5vHfi\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.y5zokt\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W/mandates/mdt_NgjoHiseNJ\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W/subscriptions/sub_u3V3pAU2da\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-20 00:17:38', '2024-11-20 00:17:38'),
(81, 191, 12, 'sub_bdc2X3QovZ', '3.99', 'EUR', '2024-11-20T00:17:37+00:00', 'creditcard', 'tr_UPVArR3EKv', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_UPVArR3EKv\",\"mode\":\"test\",\"createdAt\":\"2024-11-20T00:17:37+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-20T00:17:37+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_domvAj862j\",\"mandateId\":\"mdt_6pRLyjsqpA\",\"subscriptionId\":\"sub_bdc2X3QovZ\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_UPVArR3EKv\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_UPVArR3EKv\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.7egj46\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_domvAj862j\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_domvAj862j/mandates/mdt_6pRLyjsqpA\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_domvAj862j/subscriptions/sub_bdc2X3QovZ\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-20 00:17:38', '2024-11-20 00:17:38'),
(82, 177, 13, 'sub_spZ64AQNhZ', '3.99', 'EUR', '2024-11-20T21:51:29+00:00', 'creditcard', 'tr_2tEH5dwdK5', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_2tEH5dwdK5\",\"mode\":\"test\",\"createdAt\":\"2024-11-20T21:50:11+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Authorize card for future payments\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-20T21:51:29+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"countryCode\":\"NL\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_3yeLenzPQc\",\"mandateId\":\"mdt_3xgU2hf3bH\",\"sequenceType\":\"first\",\"redirectUrl\":\"https://urlsdemo.online/plusone/api/redirect-success-url\",\"cancelUrl\":\"https://urlsdemo.online/plusone/api/redirect-cancel-url\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardToken\":\"tkn_ZCnsKntest\",\"cardNumber\":\"9996\",\"cardHolder\":\"T. TEST\",\"cardAudience\":\"consumer\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"3dsecure\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_2tEH5dwdK5\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_2tEH5dwdK5\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.o2f89\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_3yeLenzPQc\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_3yeLenzPQc/mandates/mdt_3xgU2hf3bH\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-20 21:51:31', '2024-11-20 21:51:31'),
(83, 191, 12, 'sub_bdc2X3QovZ', '3.99', 'EUR', '2024-11-21T00:19:45+00:00', 'creditcard', 'tr_fSzcnkoyVw', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_fSzcnkoyVw\",\"mode\":\"test\",\"createdAt\":\"2024-11-21T00:19:45+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-21T00:19:45+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_domvAj862j\",\"mandateId\":\"mdt_6pRLyjsqpA\",\"subscriptionId\":\"sub_bdc2X3QovZ\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_fSzcnkoyVw\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_fSzcnkoyVw\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.3ynccw\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_domvAj862j\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_domvAj862j/mandates/mdt_6pRLyjsqpA\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_domvAj862j/subscriptions/sub_bdc2X3QovZ\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-21 00:19:46', '2024-11-21 00:19:46'),
(84, 77, 9, 'sub_JzRQgFQ7FV', '3.99', 'EUR', '2024-11-21T00:19:45+00:00', 'creditcard', 'tr_bXnzTMKczo', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_bXnzTMKczo\",\"mode\":\"test\",\"createdAt\":\"2024-11-21T00:19:45+00:00\",\"amount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"description\":\"Quarterly payment\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-21T00:19:45+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_fwVxpUUV7W\",\"mandateId\":\"mdt_NgjoHiseNJ\",\"subscriptionId\":\"sub_u3V3pAU2da\",\"sequenceType\":\"recurring\",\"redirectUrl\":null,\"webhookUrl\":\"https://urlsdemo.online/plusone/api/redirect-mollie-webhook\",\"settlementAmount\":{\"value\":\"3.99\",\"currency\":\"EUR\"},\"details\":{\"cardNumber\":\"6787\",\"cardHolder\":\"T. TEST\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"normal\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_bXnzTMKczo\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_bXnzTMKczo\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.m0cyhm\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W/mandates/mdt_NgjoHiseNJ\",\"type\":\"application/hal+json\"},\"subscription\":{\"href\":\"https://api.mollie.com/v2/customers/cst_fwVxpUUV7W/subscriptions/sub_u3V3pAU2da\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-21 00:19:57', '2024-11-21 00:19:57');
INSERT INTO `transactions` (`id`, `user_id`, `subscription_internal_id`, `subscription_id`, `amount`, `currency`, `date`, `payment_method`, `transaction_id`, `status`, `transaction_response`, `created_at`, `updated_at`) VALUES
(85, 8, 14, 'sub_9SoCYeikF8', '23.99', 'EUR', '2024-11-24T19:04:56+00:00', 'creditcard', 'tr_Xh7jeetQjK', 'paid', '{\"resource\":\"payment\",\"id\":\"tr_Xh7jeetQjK\",\"mode\":\"test\",\"createdAt\":\"2024-11-24T19:03:35+00:00\",\"amount\":{\"value\":\"23.99\",\"currency\":\"EUR\"},\"description\":\"Authorize card for future payments\",\"method\":\"creditcard\",\"metadata\":null,\"status\":\"paid\",\"paidAt\":\"2024-11-24T19:04:56+00:00\",\"amountRefunded\":{\"value\":\"0.00\",\"currency\":\"EUR\"},\"amountRemaining\":{\"value\":\"23.99\",\"currency\":\"EUR\"},\"locale\":\"en_US\",\"countryCode\":\"NL\",\"profileId\":\"pfl_DRJnjwTsvk\",\"customerId\":\"cst_9AAYbTNt4i\",\"mandateId\":\"mdt_nib7UH5U5R\",\"sequenceType\":\"first\",\"redirectUrl\":\"https://urlsdemo.online/plusone/api/redirect-success-url\",\"cancelUrl\":\"https://urlsdemo.online/plusone/api/redirect-cancel-url\",\"settlementAmount\":{\"value\":\"23.99\",\"currency\":\"EUR\"},\"details\":{\"cardToken\":\"tkn_Zn5sKntest\",\"cardNumber\":\"9996\",\"cardHolder\":\"T. TEST\",\"cardAudience\":\"consumer\",\"cardLabel\":\"Mastercard\",\"cardCountryCode\":\"NL\",\"cardSecurity\":\"3dsecure\",\"feeRegion\":\"other\"},\"_links\":{\"self\":{\"href\":\"https://api.mollie.com/v2/payments/tr_Xh7jeetQjK\",\"type\":\"application/hal+json\"},\"dashboard\":{\"href\":\"https://my.mollie.com/dashboard/org_19159615/payments/tr_Xh7jeetQjK\",\"type\":\"text/html\"},\"changePaymentState\":{\"href\":\"https://www.mollie.com/checkout/test-mode?method=creditcard\\u0026token=6.q0xkhp\",\"type\":\"text/html\"},\"customer\":{\"href\":\"https://api.mollie.com/v2/customers/cst_9AAYbTNt4i\",\"type\":\"application/hal+json\"},\"mandate\":{\"href\":\"https://api.mollie.com/v2/customers/cst_9AAYbTNt4i/mandates/mdt_nib7UH5U5R\",\"type\":\"application/hal+json\"},\"documentation\":{\"href\":\"https://docs.mollie.com/reference/v2/payments-api/get-payment\",\"type\":\"text/html\"}}}', '2024-11-24 19:04:59', '2024-11-24 19:04:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `google_id` varchar(500) DEFAULT NULL,
  `apple_id` longtext DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `linkedin_id` varchar(255) DEFAULT NULL,
  `device_token` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1' COMMENT '1=>Active/unblocked,0=>InActive/blocked\r\n',
  `user_type` enum('1','0') NOT NULL DEFAULT '0' COMMENT '1=>Membership,0=>Guest',
  `current_step` enum('0','1','2','3','4') NOT NULL DEFAULT '0',
  `otp` varchar(255) DEFAULT NULL,
  `otp_verify_status` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=>not verified, 1=>verified',
  `upcomming_activity_status` enum('1','0') NOT NULL DEFAULT '1' COMMENT 'By Default 1, 1 mean show 0 mean not show this host activites',
  `previous_activity_status` enum('1','0') NOT NULL DEFAULT '1' COMMENT 'By Default 1, 1 mean show 0 mean not show this host activites',
  `push_notifications` enum('1','0') NOT NULL DEFAULT '1' COMMENT '1=>ON,0=>OFF',
  `email_notifications` enum('1','0') NOT NULL DEFAULT '1' COMMENT '1=>ON,0=>OFF',
  `referral_code` varchar(255) DEFAULT NULL COMMENT 'unique for every user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` enum('admin','user') DEFAULT NULL COMMENT 'admin,user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `country_code`, `mobile`, `gender`, `location`, `dob`, `google_id`, `apple_id`, `facebook_id`, `linkedin_id`, `device_token`, `email`, `email_verified_at`, `password`, `remember_token`, `status`, `user_type`, `current_step`, `otp`, `otp_verify_status`, `upcomming_activity_status`, `previous_activity_status`, `push_notifications`, `email_notifications`, `referral_code`, `created_at`, `updated_at`, `deleted_at`, `deleted_by`) VALUES
(1, 'Test', 'Data', '+91', '9785189633', 'male', 'Sikar Road, Jaipur', '2000-01-01', '106613219125349374739', '107607501432145812266', NULL, NULL, NULL, 'testnbt50@gmail.com', NULL, NULL, NULL, '0', '0', '4', NULL, '0', '1', '0', '1', '1', 'TN2QHC', '2024-08-01 07:25:08', '2024-10-09 11:07:45', NULL, NULL),
(2, 'Bree', 'Carroll', '+31', '345235425', 'female', 'Consequatur praesen', '1971-05-15', '10760750143214581226689999', NULL, NULL, NULL, NULL, 'rule071@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '0', NULL, '2024-08-01 07:36:20', '2024-09-20 08:49:17', NULL, NULL),
(3, 'Debra', 'Hoover', '+91', '1234567890', 'male', 'Et mollit elit aute', '1982-06-06', NULL, NULL, NULL, NULL, NULL, 'hatimado@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-01 07:42:23', '2024-10-11 04:50:00', NULL, NULL),
(6, 'app', 'app', '+31', '123456781', 'non-binary', 'jaipur', '2000-08-01', NULL, NULL, NULL, NULL, NULL, 'p9@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-01 09:48:45', '2024-09-03 12:01:33', NULL, NULL),
(7, 'i', 'i', '+31', '123456785', 'male', 'jaipur', '1996-08-01', NULL, NULL, NULL, NULL, NULL, 'p177@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-01 10:18:40', '2024-08-01 10:30:45', NULL, NULL),
(8, 'Noud', 'Ottens', '+31', '636188402', 'male', 'Amsterdam', '1992-05-03', '107607501432145812266', NULL, NULL, NULL, NULL, 'noudottens@gmail.com', NULL, NULL, NULL, '1', '1', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-02 13:36:10', '2024-11-24 19:04:59', NULL, NULL),
(11, 'james', 'wu', '+31', '574747474', 'female', 'amst', '2000-08-05', NULL, NULL, NULL, NULL, NULL, 'zoewang2@gmail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-05 08:39:33', '2024-08-05 08:41:03', NULL, NULL),
(12, 'he', 'rt', '+31', '645454646', 'female', 'ae', '1996-08-05', NULL, NULL, NULL, NULL, NULL, 'we@mail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-05 08:59:39', '2024-08-05 09:00:29', NULL, NULL),
(13, 'Testing', 'mobile', '+91', '1234567890', 'male', 'Jaipur', '2000-08-05', NULL, NULL, NULL, NULL, NULL, 'testingdata2@gmail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-05 12:03:40', '2024-08-05 12:03:40', NULL, NULL),
(14, 'app', 'app', '+31', '123456789', 'female', 'jaipur', '2003-08-05', NULL, NULL, NULL, NULL, NULL, 'p111@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-06 04:23:57', '2024-08-06 04:25:03', NULL, NULL),
(23, 'Carson', 'Moody', '+91', '1234567890', 'male', 'Quasi consequatur E', '1991-01-25', NULL, NULL, NULL, NULL, NULL, 'kisit@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-06 09:58:39', '2024-08-06 09:58:39', NULL, NULL),
(24, 'Carson', 'Moody', '+31', '1234567890', 'male', 'Quasi consequatur E', '1991-01-25', NULL, NULL, NULL, NULL, NULL, 'saaad@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-06 09:59:33', '2024-08-06 09:59:33', NULL, NULL),
(25, 'Carson', 'Moody', '+31', '1234567890', 'male', 'Quasi consequatur E', '1991-01-25', NULL, NULL, NULL, NULL, NULL, 'sasdfsfaad@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-06 10:00:04', '2024-08-06 10:00:04', NULL, NULL),
(26, 'Carson', 'Moody', '+31', '1234567890', 'female', 'Quasi consequatur E', '1991-01-25', NULL, NULL, NULL, NULL, NULL, 'sassdfsddfsfaad@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-06 10:01:05', '2024-08-06 10:01:05', NULL, NULL),
(27, 'Ezra', 'Mcneil', '+91', '1234567890', 'non-binary', 'Sunt minus in esse f', '1976-07-08', NULL, NULL, NULL, NULL, NULL, 'sogemygap@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-06 10:04:31', '2024-08-06 10:04:31', NULL, NULL),
(34, 'Testing6', 'Testing6', '+965', '88888888', 'male', 'Qwait', '2001-08-06', NULL, NULL, NULL, NULL, NULL, 'testing6@gmail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-06 12:29:12', '2024-08-06 12:29:12', NULL, NULL),
(36, 'Testing66f', 'Testing66l', '+965', '12345678', 'female', 'Qwait 2', '2000-08-06', NULL, NULL, NULL, NULL, NULL, 'testing66fl@gmail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-06 12:47:31', '2024-08-06 12:47:31', NULL, NULL),
(37, 'Testing6666f', 'Testing6666l', '+31', '123456789', 'non-binary', 'Jaipur', '2000-08-06', NULL, NULL, NULL, NULL, NULL, 'testing666fl@gmail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-06 12:51:02', '2024-08-06 12:51:02', NULL, NULL),
(38, 'demo6f', 'demo6l', '+965', '12345678', 'non-binary', 'Qwait', '2000-08-06', NULL, NULL, NULL, NULL, NULL, 'demo6fl@gmail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-06 13:04:00', '2024-08-06 13:04:00', NULL, NULL),
(39, 'Testf', 'Testl', '+965', '12345678', 'male', 'qwait country', '2000-08-06', NULL, NULL, NULL, NULL, NULL, 'qwait@gmail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-06 13:09:16', '2024-08-06 13:09:16', NULL, NULL),
(40, 'llf', 'lll', '+31', '123456789', 'female', 'Netherland country', '2000-08-06', NULL, NULL, NULL, NULL, NULL, 'llfl@gmail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-06 13:15:29', '2024-08-06 13:15:29', NULL, NULL),
(41, 'Nora', 'Wilson', '+31', '123456789', 'female', 'Nihil sit explicabo', '1977-04-23', NULL, NULL, NULL, NULL, NULL, 'pybafafyd@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-06 13:26:05', '2024-08-06 13:26:05', NULL, NULL),
(42, 'Pandora', 'Curry', '+31', '123456789', 'non-binary', 'Est impedit pariatu', '2000-01-07', NULL, NULL, NULL, NULL, NULL, 'kifufuxeb@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-06 13:29:16', '2024-08-06 13:29:16', NULL, NULL),
(43, 'aja', 'aja', '+31', '123456489', 'male', 'jaipur', '2000-08-07', NULL, NULL, NULL, NULL, NULL, 'p11@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-07 05:59:17', '2024-08-07 06:00:45', NULL, NULL),
(44, 'New7f', 'New7l', '+91', '8888888888', 'female', 'Raja park, Jaipur', '2000-08-07', NULL, NULL, NULL, NULL, NULL, 'new7fl@gmail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-07 06:01:32', '2024-08-07 06:01:32', NULL, NULL),
(45, 'new7f', 'new7l', '+91', '1234567890', 'female', 'Jaipur', '1991-08-05', NULL, NULL, NULL, NULL, NULL, 'newtestfl@gmail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-07 06:07:24', '2024-08-07 06:07:24', NULL, NULL),
(46, 'Ruby', 'Garner', '+91', '1234567890', 'non-binary', 'Modi elit consectet', '1984-01-30', NULL, NULL, NULL, NULL, NULL, 'joqeby@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-07 06:13:35', '2024-08-07 06:13:35', NULL, NULL),
(47, 'ap', 'ap', '+31', '111111111', 'alp', 'jaipur', '2000-08-09', NULL, NULL, NULL, NULL, NULL, 'p1@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-07 06:46:54', '2024-08-07 06:53:36', NULL, NULL),
(48, 'app', 'app', '+31', '122222222', 'male', 'jaipur', '1994-08-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', '3', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-07 10:42:59', '2024-08-07 12:28:37', NULL, NULL),
(54, 'dd', 'dd', '+31', '133333333', 'male', 'J MART', '2000-08-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', '3', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-07 12:30:34', '2024-08-07 12:35:14', NULL, NULL),
(57, 'd', 'd', '+31', '123455555', 'female', 'Jaipur', '2000-08-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', '3', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-07 12:53:24', '2024-08-07 12:54:44', NULL, NULL),
(64, 'aa', 'aa', '+91', '1122222222', 'male', 'Jaipiur', '2000-08-08', NULL, NULL, NULL, NULL, NULL, 'pp@gmail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-08 05:18:34', '2024-09-02 06:04:36', NULL, NULL),
(73, 'Megan', 'Shh', '+31', '777777777', 'female', 'Jaipur', '1998-08-08', NULL, NULL, NULL, NULL, NULL, 'megan@gmail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-08 12:39:47', '2024-08-08 12:39:47', NULL, NULL),
(74, 'Mark', 'chh', '+91', '7777777777', 'male', 'jaipur', '2000-08-08', NULL, NULL, NULL, NULL, NULL, 'p18hh@mailinator.com', NULL, NULL, NULL, '1', '1', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-08 12:56:50', '2024-11-22 12:47:23', NULL, NULL),
(77, 'Ramu', 'Patel', '+91', '6666666666', 'male', 'Jaipiur', '2006-08-09', NULL, NULL, NULL, NULL, NULL, 'ramupatel@gmail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-09 05:53:53', '2024-11-25 00:00:08', NULL, NULL),
(79, 'Testing10f', 'Testing10l', '+91', '1234567890', 'male', 'Jaipur', '2000-08-10', NULL, NULL, NULL, NULL, NULL, 'testing10fl@gmail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-10 04:28:48', '2024-08-10 04:28:48', NULL, NULL),
(80, 'Ramesh', 'Sing', '+91', '1717171717', 'male', 'Jamu kasmir', '2006-08-09', NULL, NULL, NULL, NULL, NULL, 'ramesh@gmail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-10 04:31:43', '2024-08-26 06:39:36', NULL, NULL),
(81, 'test', 'test', '+91', '1111111111', 'female', 'igi', '2000-09-02', NULL, NULL, NULL, NULL, NULL, 'p18@mailinator.com\n', NULL, NULL, NULL, '1', '1', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-10 05:05:41', '2024-11-04 20:15:26', NULL, NULL),
(83, 'Stephanie', 'Nieves', '+91', '1234567890', 'custom gender', 'Quia sit sit quibu', '2004-06-12', NULL, NULL, NULL, NULL, NULL, 'tudecufecy@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-10 05:22:28', '2024-08-10 05:22:28', NULL, NULL),
(84, 'Mary', 'White', '+91', '6225776184', 'custom', 'Illo consequatur vol', '2000-07-25', NULL, NULL, NULL, NULL, NULL, 'rest7445@gmail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-10 05:24:29', '2024-08-27 09:35:04', NULL, NULL),
(85, 'Beatrice', 'Boone', '+91', '1234567890', 'male', 'Hic laborum est sapi', '1994-06-05', NULL, NULL, NULL, NULL, NULL, 'miwah@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-10 05:30:00', '2024-08-10 05:30:00', NULL, NULL),
(86, 'Martha', 'Wall', '+91', '1234567890', 'other gender', 'Reiciendis similique', '1987-12-28', NULL, NULL, NULL, NULL, NULL, 'paqogus@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-10 05:37:20', '2024-08-10 05:37:20', NULL, NULL),
(87, 'Sonu', 'Sha', '+91', '9950930098', 'other gender custom', 'raja park', '2000-08-10', NULL, NULL, NULL, NULL, NULL, 'sonupp@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-10 05:41:40', '2024-08-10 05:41:40', NULL, NULL),
(88, 'Neve', 'Neal', '+91', '', 'male', 'raja park', '2004-08-10', NULL, NULL, NULL, NULL, NULL, 'vohad@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-10 05:46:21', '2024-08-10 05:46:21', NULL, NULL),
(89, 'Ritik', 'Roshan', '+965', '45454545', 'male', 'Jaipur', '2001-08-10', NULL, NULL, NULL, NULL, NULL, 'ritik@gmail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-10 07:41:39', '2024-08-10 07:41:39', NULL, NULL),
(90, 'Mayank', 'Agr', '+91', '3636363636', 'male', 'Jaipur road', '2000-08-10', NULL, NULL, NULL, NULL, NULL, 'mayanktest@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-10 08:56:57', '2024-08-10 08:56:57', NULL, NULL),
(92, 'Simon', 'Smith', '+93', '999999999', 'male', 'Velit aut facilis r', '1981-09-02', NULL, NULL, NULL, NULL, NULL, 'ruqiryr@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-10 10:58:57', '2024-08-10 10:58:57', NULL, NULL),
(94, 'Amber', 'Hawkins', '+91', '4545454545', 'female', 'Eum mollitia consequ', '2004-12-10', NULL, NULL, NULL, NULL, NULL, 'pejasydyt@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-10 11:51:59', '2024-08-13 04:52:27', NULL, NULL),
(95, 'Xyla', 'Chavez', '+91', '4646464646', 'non-binary', 'Est amet velit ist', '1994-12-18', NULL, NULL, NULL, NULL, NULL, 'miwesdbu@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-10 12:22:06', '2024-08-12 13:03:52', NULL, NULL),
(96, 'Xyla', 'Chavez', '+91', '4646464646', 'female', 'Est amet velit ist', '1994-12-18', NULL, NULL, NULL, NULL, NULL, 'miwebu11@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-10 12:22:35', '2024-08-13 07:18:44', NULL, NULL),
(97, 'Victoria', 'Matthews', '+91', '1234545878', 'other gender', 'Autem dolores quo in', '1978-01-07', NULL, NULL, NULL, NULL, NULL, 'caxybehy@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-10 12:26:06', '2024-08-10 12:26:06', NULL, NULL),
(98, 'Garrison', 'Mcmillan', '+91', '7878787878', 'female', 'Facilis eos in est', '1999-06-24', NULL, NULL, NULL, NULL, NULL, 'huqidon@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-10 12:43:45', '2024-08-13 07:18:24', NULL, NULL),
(100, 'asdf', 'asss', '+91', '7085426553', 'male', 'asdasdada', '1991-08-22', NULL, NULL, NULL, NULL, NULL, 'gfgg@gmail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-12 04:24:31', '2024-08-13 04:51:54', NULL, NULL),
(101, 'rule', 'dsf', '+91', '9825856925', 'male', 'adf', '2000-06-23', NULL, NULL, NULL, NULL, NULL, 'assertyddsffdf@gmail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-12 04:24:45', '2024-08-12 13:02:43', NULL, NULL),
(102, 'asdfasd', 'sadfasd', '+31', '684848484', 'female', 'asdfsdffffff', '1997-12-18', NULL, NULL, NULL, NULL, NULL, 'asdfasdfffffff@gmail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-12 10:22:07', '2024-08-13 04:20:50', NULL, NULL),
(103, 'Ramona', 'Waters', '+93', '787878787', 'werwer', 'Ram Nagar, Jaipiur', '1990-10-20', NULL, NULL, NULL, NULL, NULL, 'hyhocicoc@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-13 06:00:00', '2024-09-18 09:36:36', NULL, NULL),
(104, 'jayesh', 'chouhan', '+91', '8949156861', 'apple', 'Amsterdam, Netherlands', '2000-09-01', NULL, NULL, NULL, NULL, NULL, 'jayesh123@gmail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-08-17 16:21:15', '2024-09-24 12:11:03', NULL, NULL),
(108, 'ajaj', 'hah', '+91', '1112222222', 'male', 'Jaipur, Rajasthan, India', '2000-09-07', NULL, NULL, NULL, NULL, NULL, 'sk@gmail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-07 05:40:48', '2024-10-05 05:00:20', NULL, NULL),
(112, 'yu', 'gy', '+91', '7568262629', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', '2', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-11 07:35:22', '2024-09-17 12:08:38', NULL, NULL),
(119, 'john', 'doe', '+91', '9785189633', 'male', 'Jaipur, Rajasthan, India', '2006-09-13', NULL, NULL, NULL, NULL, NULL, 'aa@gmail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-13 10:33:54', '2024-09-13 10:47:47', NULL, NULL),
(122, 'Neve', 'Neal', '+91', '1234567897', 'male', 'Jaipur', '2006-09-06', NULL, NULL, NULL, NULL, NULL, 'vohad4@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-13 12:18:18', '2024-09-13 12:21:27', NULL, NULL),
(123, 'Suresh', 'Kumar', '+91', '7979797979', 'male', 'Jamu kasmir', '2006-08-09', NULL, NULL, NULL, NULL, NULL, 'vohad634@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-13 12:39:39', '2024-09-26 08:59:06', NULL, NULL),
(124, 'Suresh', 'Kumar', '+91', '8989898989', 'male', 'Jamu kasmir', '2006-08-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', '3', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-13 12:43:45', '2024-09-13 12:44:12', NULL, NULL),
(125, 'Testing6666f', 'nbt', '+91', '4545859658', 'male', 'Jaipur', '2002-09-13', NULL, NULL, NULL, NULL, NULL, 'vohad9@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-13 13:16:36', '2024-09-13 13:16:36', NULL, NULL),
(128, 'testdfsdfds', 'dsfdsf', '+31', '0000000000', 'male', 'jaipur', '1994-12-05', NULL, NULL, NULL, NULL, NULL, 'ravi.kumar.dhakar9828@gmail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-16 07:13:23', '2024-09-16 07:13:23', NULL, NULL),
(129, 'Test', 'img', '+91', '7575757575', 'male', 'raja park', '2002-09-17', NULL, NULL, NULL, NULL, NULL, 'voh4ad@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-17 12:03:54', '2024-09-17 12:03:54', NULL, NULL),
(131, 'Ramesh', 'Kumar', '+91', '7896541236', 'male', 'Rajendra Nagar', '2005-08-09', '107607501432145812266', '107607501432145812266', NULL, NULL, NULL, 'rameshkumar@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-19 04:39:37', '2024-09-21 05:04:55', NULL, NULL),
(132, 'rrr', 'rrrr', '+91', '1234567894', 'male', 'Jaipur', '2004-09-19', '1076075014321458122668', NULL, NULL, NULL, NULL, 'raaaaa@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-19 12:12:30', '2024-09-19 12:12:30', NULL, NULL),
(133, 'asfsa', 'fsf', '+91', '7574747454', 'male', 'jaipur', '2003-09-19', NULL, NULL, NULL, NULL, NULL, 'aaarr@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-19 13:04:17', '2024-09-19 13:04:17', NULL, NULL),
(134, 'asfads', 'asdfadsf', '+91', '7574848575', 'male', 'Jaipur', '2000-09-19', NULL, NULL, NULL, NULL, NULL, 'owe@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-19 13:10:32', '2024-09-19 13:10:32', NULL, NULL),
(135, 'ramu', 'lal', '+91', '7474747474', 'male', 'Jaipur', '2005-09-19', NULL, NULL, NULL, NULL, NULL, 'owe1@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-19 13:12:23', '2024-09-19 13:12:23', NULL, NULL),
(136, 'Raju', 'lal', '+91', '9874561233', 'male', 'Ram Nagar', '2005-08-09', NULL, NULL, NULL, NULL, NULL, 'owe2@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-19 13:19:48', '2024-09-19 13:21:30', NULL, NULL),
(137, NULL, NULL, '+91', '7454749658', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', '0', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-20 06:57:50', '2024-09-20 06:57:50', NULL, NULL),
(138, NULL, NULL, '+91', '7454749654', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', '0', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-20 07:00:46', '2024-09-20 07:00:46', NULL, NULL),
(139, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', '0', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-20 11:32:41', '2024-09-20 11:32:41', NULL, NULL),
(140, 'snsn', 'nsns', '+91', '1111111112', 'male', 'jaja', '2006-09-12', NULL, NULL, NULL, NULL, NULL, 'sjajk@gmail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-20 11:57:56', '2024-09-20 11:58:34', NULL, NULL),
(141, 'Test55555', 'asfsa', NULL, NULL, NULL, NULL, NULL, NULL, '107607501432145812266', NULL, NULL, NULL, 'noudottens1@gmail.com', NULL, NULL, NULL, '1', '0', '0', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-20 12:06:01', '2024-09-21 04:36:33', NULL, NULL),
(142, 'dfgfe', 'ddxgg', '+91', '7027297495', 'male', 'India', '2006-09-21', NULL, NULL, NULL, NULL, NULL, 'plusonesapp123@gmail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-20 13:10:10', '2024-09-23 07:18:48', NULL, NULL),
(144, 'k', 'p', '+91', '8005644006', 'male', 'Japan', '2006-09-20', NULL, NULL, NULL, NULL, NULL, 'kyugy@gmail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-20 13:28:25', '2024-09-20 13:29:34', NULL, NULL),
(145, 'Prikshit', 'Saini', NULL, NULL, NULL, NULL, NULL, '105161320466723594348', NULL, NULL, NULL, NULL, 'sainiprikshit22@gmail.com', NULL, NULL, NULL, '1', '0', '0', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-20 13:32:24', '2024-09-20 13:32:24', NULL, NULL),
(146, 'ajjaj', 'jjsjzj', '+91', '9999999999', 'male', 'sjjsh', '2006-09-10', NULL, NULL, NULL, NULL, NULL, 'p18hhh@mailinator.com', NULL, NULL, NULL, '1', '1', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-21 04:37:28', '2024-10-29 12:37:47', NULL, NULL),
(153, 'hzj', 'gaha', '+91', '1000000000', 'male', 'Jdeideh, Lebanon', '2006-09-26', NULL, NULL, NULL, NULL, NULL, 'hshwhwh@gmail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-24 05:38:17', '2024-09-30 12:37:59', NULL, NULL),
(155, 'Testing', 'mail', '+91', '7894561237', 'male', 'Sikar road, Jaipur', '2004-09-24', NULL, NULL, NULL, NULL, NULL, 'asdfmail@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-24 07:10:20', '2024-09-24 07:10:20', NULL, NULL),
(156, 'Test', 'mail', '+91', '7474859641', 'male', 'Ram Nagar', '2005-08-09', NULL, NULL, NULL, NULL, NULL, 'aaaae@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-24 07:15:59', '2024-09-24 07:18:17', NULL, NULL),
(157, 'Testing', 'mail', '+91', '7575858596', 'male', 'Ram Nagar', '2005-08-09', NULL, NULL, NULL, NULL, NULL, 'aaaae1@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-24 07:20:24', '2024-09-24 07:21:37', NULL, NULL),
(158, 'Vihan', 'mail', '+91', '7875858596', 'male', 'Ram Nagar', '2005-08-09', NULL, NULL, NULL, NULL, NULL, 'aaaae2@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-24 07:22:58', '2024-09-24 07:24:05', NULL, NULL),
(160, 'Jack', 'Clarison', '+91', '8866441584', 'male', 'Amsterdam, Netherlands', '2006-05-09', NULL, NULL, NULL, NULL, NULL, '2018pceecjayesh31@poornima.org', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-24 11:31:07', '2024-09-24 11:34:23', NULL, NULL),
(163, 'Manan', 'G', '+91', '9521464463', 'male', 'Jaipur, Rajasthan, India', '2000-10-22', NULL, NULL, NULL, NULL, NULL, 'manan2000gadwal@gmail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-26 06:08:08', '2024-09-26 06:08:55', NULL, NULL),
(164, 'asfsa', 'asdfasfs', '+91', '4567893210', 'male', 'Jaipur', '2006-09-26', NULL, NULL, NULL, NULL, NULL, 'testkjk@gmail.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-09-26 07:09:46', '2024-10-09 11:12:27', NULL, NULL),
(177, 'zoe', 'wang', '+31', '613535616', 'female', 'Amsterdam, Netherlands', '2006-10-14', '106613219125349374739', NULL, NULL, NULL, NULL, 'zoewang.syd@gmail.com', NULL, NULL, NULL, '1', '1', '4', NULL, '0', '1', '0', '1', '1', NULL, '2024-10-15 11:53:41', '2024-11-23 13:35:44', NULL, NULL),
(178, 'Testing', 'soft', '+91', '5999999999', 'male', 'Jaipur', '2001-01-01', NULL, NULL, NULL, NULL, NULL, 'testingdemo@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-10-19 04:48:47', '2024-10-19 04:49:54', NULL, NULL),
(179, 'Nbt', 'dev', '+91', '1111122222', 'male', 'Next Big Technology Pvt. Ltd.(Web & Mobile App Development), Sikar Road, Vikas Nagar, Bhawani Nagar, Jaipur, Rajasthan, India', '2006-10-17', NULL, NULL, NULL, NULL, NULL, 'p12@mailinator.com', NULL, NULL, NULL, '0', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-10-19 07:33:41', '2024-11-08 12:29:19', NULL, NULL),
(180, 'Testing', 'soft', '+91', '7897894561', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', '2', NULL, '0', '1', '1', '1', '1', NULL, '2024-10-24 09:45:32', '2024-10-24 09:45:53', NULL, NULL),
(181, 'Testing', 'soft', '+91', '7896541230', NULL, 'Jaipur', '2001-01-01', NULL, NULL, NULL, NULL, NULL, 'testingdem4o@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-10-28 10:17:14', '2024-10-24 11:55:09', NULL, NULL),
(182, 'Testing', 'soft', '+91', '7894563210', 'male', 'Jaipur', '2001-01-01', NULL, NULL, NULL, NULL, NULL, 'testingde@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-10-29 06:51:21', '2024-10-25 07:08:03', NULL, NULL),
(183, 'Testing', 'soft', '+91', '1472583690', 'male', 'Jaipiur', '2001-01-01', NULL, NULL, NULL, NULL, NULL, 't147@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-10-29 07:22:50', '2024-11-05 08:00:07', '2024-11-05 08:00:07', 'admin'),
(185, 'Testing', 'upppre', '+91', '4564564563', 'male', 'Jaipiur', '2001-01-01', NULL, NULL, NULL, NULL, NULL, 't147@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-11-05 09:15:14', '2024-11-05 09:17:53', NULL, NULL),
(187, 'Test5f', 'test5l', '+91', '5555555555', 'male', 'Jaipur', '2000-01-01', NULL, NULL, NULL, NULL, NULL, 'testing5@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-11-09 08:50:43', '2024-11-25 00:00:08', NULL, NULL),
(188, 'Test', 'Demo', NULL, NULL, NULL, NULL, NULL, '109497037918086832899', NULL, NULL, NULL, NULL, 'testdemo7260@gmail.com', NULL, NULL, NULL, '1', '0', '0', NULL, '0', '1', '1', '1', '1', NULL, '2024-11-11 08:58:04', '2024-11-25 04:35:01', NULL, NULL),
(189, 'Testrefundf', 'Testrefundl', '+91', '7412589630', 'male', 'Jaipur', '2000-01-01', NULL, NULL, NULL, NULL, NULL, 'testrefundf@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-11-11 12:53:56', '2024-11-25 00:00:08', NULL, NULL),
(190, 'Testrefundf1', 'Testrefundl1', '+91', '9632587410', 'male', 'Jaipiur', '2000-01-01', NULL, NULL, NULL, NULL, NULL, 'testrefundf1@mailinator.com', NULL, NULL, NULL, '1', '1', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-11-12 05:06:29', '2024-11-12 05:23:13', NULL, NULL),
(191, 'Testing paymentidf', 'Testing paymentidl', '+91', '7894561230', 'male', 'Jaipiur', '2000-01-01', NULL, NULL, NULL, NULL, NULL, 'testingpaymentid434@mailinator.com', NULL, NULL, NULL, '1', '0', '4', NULL, '0', '1', '1', '1', '1', NULL, '2024-11-12 13:18:16', '2024-11-25 04:57:00', NULL, NULL),
(192, 'Twst', 'sban', '+91', '2222222222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', '1', NULL, '0', '1', '1', '1', '1', NULL, '2024-11-21 06:24:23', '2024-11-21 06:25:40', NULL, NULL),
(193, 'Thara', 'Bhai', '+91', '4444444444', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', '1', NULL, '0', '1', '1', '1', '1', NULL, '2024-11-21 06:30:25', '2024-11-21 06:40:02', NULL, NULL),
(194, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '001721.9e7ab95e8e394a9da46c61bf5b952b46.1407', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', '0', NULL, '0', '1', '1', '1', '1', NULL, '2024-11-23 14:02:07', '2024-11-23 14:02:07', NULL, NULL),
(195, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '000953.e16aff94ed724c0fb46bb7b0dba49ce1.1410', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', '0', NULL, '0', '1', '1', '1', '1', NULL, '2024-11-23 14:02:31', '2024-11-23 14:02:31', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_fun_facts`
--

CREATE TABLE `user_fun_facts` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_fun_facts`
--

INSERT INTO `user_fun_facts` (`id`, `question`, `created_at`, `updated_at`) VALUES
(1, 'Are you a morning person or night owl?', '2024-07-29 13:11:20', '2024-07-29 13:11:20'),
(2, 'What\'s your hidden skill or talent?', '2024-07-29 13:11:20', '2024-07-29 13:11:20'),
(3, 'What recent book, movie, or show did you enjoy?', '2024-07-29 13:11:32', '2024-07-29 21:58:04'),
(4, 'What type of music do you love?', '2024-07-29 13:11:32', '2024-07-29 13:11:32'),
(5, 'What\'s your quirky talent or party trick?', '2024-07-29 13:11:54', '2024-07-29 13:11:54'),
(6, 'What\'s your go-to karaoke song?', '2024-07-29 13:11:54', '2024-07-29 13:12:20'),
(7, 'If you could be an expert in anything, what would it be?', '2024-07-29 13:12:57', '2024-07-29 13:12:57'),
(8, 'What\'s on your bucket list?', '2024-07-29 13:12:57', '2024-07-29 13:12:57'),
(9, 'What\'s your favorite book, movie, or TV show?', '2024-07-29 13:13:12', '2024-07-29 13:13:12'),
(10, 'What\'s your favorite place you’ve traveled to?', '2024-07-29 13:13:12', '2024-07-29 22:21:33');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bio` varchar(500) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `organisation_name` varchar(255) DEFAULT NULL,
  `language_id` varchar(500) DEFAULT NULL,
  `activity_interests` longtext DEFAULT NULL,
  `fun_facts_about_me` longtext DEFAULT NULL,
  `verify_instagram` enum('1','0') DEFAULT NULL COMMENT '1=>Yes,0=>No',
  `verify_linkedin` enum('1','0') DEFAULT NULL COMMENT '1=>Yes,0=>No',
  `instagram_url` varchar(255) DEFAULT NULL,
  `linkedin_url` varchar(255) DEFAULT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `user_id`, `bio`, `occupation`, `organisation_name`, `language_id`, `activity_interests`, `fun_facts_about_me`, `verify_instagram`, `verify_linkedin`, `instagram_url`, `linkedin_url`, `profile_photo`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hi Hello', 'Software Engineer', 'IT', '[\"8\",\"3\"]', '{\"5\":[\"18\"],\"3\":[\"15\"],\"1\":[\"4\",\"7\"]}', '[{\"question\":\"10\",\"answer\":\"Belgium & France!\"},{\"question\":\"9\",\"answer\":\"The 5AM club\"},{\"question\":\"8\",\"answer\":\"Traveling to Belgium again!\"},{\"question\":\"7\",\"answer\":\"a4\"},{\"question\":\"6\",\"answer\":\"a5\"},{\"question\":\"4\",\"answer\":\"a6\"},{\"question\":\"5\",\"answer\":\"a7\"},{\"question\":\"3\",\"answer\":\"a8\"},{\"question\":\"2\",\"answer\":\"a9\"},{\"question\":\"1\",\"answer\":\"a10\"}]', NULL, NULL, NULL, NULL, '1724479484.jpg', '2024-09-16 18:03:57', '2024-08-24 06:04:44'),
(2, 2, 'Veniam sequi nisi a', 'Magni reprehenderit', 'Fitzgerald and Kaufman Traders', '[\"1\"]', '{\"1\":[\"1\",\"3\",\"7\"]}', '[{\"question\":\"10\",\"answer\":\"answer1\"},{\"question\":\"9\",\"answer\":\"answer2\"}]', NULL, NULL, NULL, NULL, '1723103564.jpg', '2024-09-16 18:04:13', '2024-08-08 07:52:44'),
(3, 3, 'Debitis assumenda ni', 'Nostrum dolores dolo', 'Singleton Acosta Co', '[\"8\",\"1\"]', '{\"1\":[\"1\",\"3\",\"4\"]}', '[{\"question\":\"4\",\"answer\":\"ans1\"},{\"question\":\"10\",\"answer\":\"ans2\"},{\"question\":\"9\",\"answer\":\"ans3\"},{\"question\":\"8\",\"answer\":\"ans4\"}]', NULL, NULL, NULL, NULL, '1722498143.jfif', '2024-09-16 18:04:25', '2024-08-01 07:42:23'),
(5, 5, 'Ducimus ducimus re', 'Obcaecati est dolore', 'Rojas Mclean Plc', '[\"3\"]', '{\"1\":[\"1\"]}', '[{\"question\":\"1\",\"answer\":\"Sint enim animi nec\"}]', NULL, NULL, NULL, NULL, '1722503693.jpg', '2024-09-16 18:04:31', '2024-08-01 09:14:53'),
(6, 13, '74', 'software enginer', 'IT', '[\"3\"]', '{\"5\":[\"18\"]}', '[{\"question\":\"10\",\"answer\":\"this is testing\"}]', NULL, NULL, NULL, NULL, '1722859420.jpg', '2024-09-16 18:04:38', '2024-08-26 06:45:57'),
(34, 80, NULL, 'Cricketer', 'Sports', '[\"8\",\"3\"]', '{\"5\":[\"18\"],\"3\":[\"15\"],\"1\":[\"4\",\"7\"]}', '[{\"question\":\"10\",\"answer\":\"a1\"},{\"question\":\"9\",\"answer\":\"a2\"},{\"question\":\"8\",\"answer\":\"a3\"},{\"question\":\"7\",\"answer\":\"a4\"},{\"question\":\"6\",\"answer\":\"a5\"},{\"question\":\"4\",\"answer\":\"a6\"},{\"question\":\"5\",\"answer\":\"a7\"},{\"question\":\"3\",\"answer\":\"a8\"},{\"question\":\"2\",\"answer\":\"a9\"},{\"question\":\"1\",\"answer\":\"a10\"}]', NULL, NULL, NULL, NULL, '1723267800.jpg', '2024-09-17 11:50:53', '2024-08-10 04:34:42'),
(36, 85, 'Magna quae harum qui', 'Nihil ipsum est earu', 'Turner Mcfarland Plc', '[\"8\",\"1\"]', '{\"1\":[\"2\",\"24\"]}', '[{\"question\":\"10\",\"answer\":\"ans1\"}]', NULL, NULL, NULL, NULL, '1723267800.jpg', '2024-09-16 18:05:04', '2024-08-10 05:30:00'),
(38, 87, NULL, NULL, NULL, NULL, '[]', '[{\"question\":null,\"answer\":null}]', NULL, NULL, NULL, NULL, NULL, '2024-08-10 05:41:40', '2024-08-10 05:41:40'),
(39, 88, NULL, 'Cricketer', 'Sports', NULL, '{\"5\":[\"18\"],\"3\":[\"15\"],\"1\":[\"4\",\"7\"]}', '[{\"question\":\"10\",\"answer\":\"a1\"},{\"question\":\"9\",\"answer\":\"a2\"},{\"question\":\"8\",\"answer\":\"a3\"},{\"question\":\"7\",\"answer\":\"a4\"},{\"question\":\"6\",\"answer\":\"a5\"},{\"question\":\"4\",\"answer\":\"a6\"},{\"question\":\"5\",\"answer\":\"a7\"},{\"question\":\"3\",\"answer\":\"a8\"},{\"question\":\"2\",\"answer\":\"a9\"},{\"question\":\"1\",\"answer\":\"a10\"}]', NULL, NULL, NULL, NULL, NULL, '2024-08-14 10:49:51', '2024-08-14 10:47:37'),
(40, 89, NULL, NULL, NULL, NULL, '[]', '[{\"question\":null,\"answer\":null}]', NULL, NULL, NULL, NULL, NULL, '2024-08-10 07:41:39', '2024-08-10 07:41:39'),
(41, 90, NULL, NULL, NULL, NULL, '[]', '[{\"question\":null,\"answer\":null}]', NULL, NULL, NULL, NULL, '1723280217.jpg', '2024-09-16 18:05:10', '2024-08-10 08:56:57'),
(42, 92, 'Eos mollit deserunt', 'Ut fugiat anim exped', 'Collins and Campos Plc', NULL, NULL, '[{\"question\":null,\"answer\":null}]', NULL, NULL, NULL, NULL, NULL, '2024-08-10 10:58:57', '2024-08-10 10:58:57'),
(43, 94, NULL, NULL, NULL, NULL, '[]', '[{\"question\":null,\"answer\":null}]', NULL, NULL, NULL, NULL, NULL, '2024-08-13 05:11:52', '2024-08-13 05:11:52'),
(44, 96, 'Quam fuga Fuga Mag', 'Nihil magnam qui ut', 'Small Nixon Trading', '[\"8\",\"1\"]', '{\"1\":[\"2\",\"26\"]}', '[{\"question\":\"10\",\"answer\":\"ans\"}]', NULL, NULL, NULL, NULL, NULL, '2024-08-10 13:10:19', '2024-08-10 13:10:19'),
(47, 103, 'Hi Hello', 'Cricketer', 'Sports', '[\"1\",\"8\"]', '{\"5\":[\"18\"],\"3\":[\"15\"],\"1\":[\"4\",\"7\"]}', '[{\"question\":\"10\",\"answer\":\"a1\"},{\"question\":\"9\",\"answer\":\"a2\"},{\"question\":\"8\",\"answer\":\"a3\"},{\"question\":\"7\",\"answer\":\"a4\"},{\"question\":\"6\",\"answer\":\"a5\"},{\"question\":\"4\",\"answer\":\"a6\"},{\"question\":\"5\",\"answer\":\"a7\"},{\"question\":\"3\",\"answer\":\"a8\"},{\"question\":\"2\",\"answer\":\"a9\"},{\"question\":\"1\",\"answer\":\"a10\"}]', '1', '1', 'asfddas', 'asdfdsa', '1724658367.jpg', '2024-09-18 12:56:29', '2024-09-18 09:54:38'),
(50, 64, 'Hi Hello test11212', 'Cricketer', 'Sports', '[\"1\",\"3\",\"8\"]', '{\"5\":[\"18\"],\"3\":[\"15\"],\"1\":[\"4\",\"7\"]}', '[{\"question\":\"10\",\"answer\":\"a1\"},{\"question\":\"9\",\"answer\":\"a2\"},{\"question\":\"8\",\"answer\":\"a3\"},{\"question\":\"7\",\"answer\":\"a4\"},{\"question\":\"6\",\"answer\":\"a5\"},{\"question\":\"4\",\"answer\":\"a6\"},{\"question\":\"5\",\"answer\":\"a7\"},{\"question\":\"3\",\"answer\":\"a8\"},{\"question\":\"2\",\"answer\":\"a9\"},{\"question\":\"1\",\"answer\":\"a10\"}]', '1', '1', 'sadfdsa', 'linkdin', '1724658367.jpg', '2024-09-18 12:36:00', '2024-09-02 06:05:20'),
(52, 77, 'Hi Hello test11212', 'Cricketer', 'Sports', '[\"1\",\"3\",\"8\"]', '{\"5\":[\"18\"],\"3\":[\"15\"],\"1\":[\"4\",\"7\"]}', '[{\"question\":\"10\",\"answer\":\"a1\"},{\"question\":\"9\",\"answer\":\"a2\"},{\"question\":\"8\",\"answer\":\"a3\"},{\"question\":\"7\",\"answer\":\"a4\"},{\"question\":\"6\",\"answer\":\"a5\"},{\"question\":\"4\",\"answer\":\"a6\"},{\"question\":\"5\",\"answer\":\"a7\"},{\"question\":\"3\",\"answer\":\"a8\"},{\"question\":\"2\",\"answer\":\"a9\"},{\"question\":\"1\",\"answer\":\"a10\"}]', '1', '1', 'test insta', 'test linkdin', '1723280217.jpg', '2024-09-18 13:02:04', '2024-09-18 13:02:04'),
(53, 8, 'Hi guys! I\'m the co-founder of PlusOnes. \r\n\r\nCan\'t wait to meet new people and join amazing activities via the PlusOnes app.', 'General Manager', 'Bolt', '[\"15\",\"3\",\"1\"]', '{\"1\":[\"22\",\"24\"],\"2\":[\"9\",\"10\",\"25\",\"26\"],\"3\":[\"28\"],\"5\":[\"18\",\"19\"]}', '[{\"question\":\"6\",\"answer\":\"Unwritten - Natasha Beddingfield\"},{\"question\":\"3\",\"answer\":\"I recently read the 5AM club and have started implementing the learning into my daily life right away!\"}]', '1', '1', NULL, NULL, '1726659114.png', '2024-11-23 17:49:57', '2024-11-23 17:49:57'),
(54, 119, 'hii', 'shsh', '', '[\"1\",\"8\"]', '{\"1\":[\"6\",\"8\",\"7\"]}', '[{\"question\":\"1\",\"answer\":\"hiii\"},{\"question\":\"4\",\"answer\":\"Hjsjs\"}]', '1', '1', NULL, NULL, '1726228525.jpg', '2024-09-16 18:05:35', '2024-09-13 13:08:06'),
(55, 122, 'testing', 'software engineer', 'IT', '[\"8\",\"1\"]', '{\"5\":[\"18\"]}', '[{\"question\":\"10\",\"answer\":\"testing\"}]', NULL, NULL, NULL, NULL, '1726229898.jpg', '2024-09-16 18:05:40', '2024-09-13 12:18:18'),
(56, 125, 'This is testing', 'software enginerr', 'IT', '[\"8\",\"1\"]', '{\"5\":[\"18\"],\"3\":[\"15\"],\"1\":[\"21\"]}', '[{\"question\":\"10\",\"answer\":\"asfsafdf\"}]', NULL, NULL, NULL, NULL, '1726233396.jpg', '2024-09-16 18:05:51', '2024-09-13 13:18:55'),
(58, 128, 'dsfdsf', 'dsfdsf', 'dsfdsf', NULL, '[]', '[{\"question\":null,\"answer\":null}]', NULL, NULL, NULL, NULL, '1726490617.jpg', '2024-09-16 18:13:37', '2024-09-16 12:43:37'),
(59, 129, 'This is testing', 'software engineer', NULL, '[\"8\"]', '{\"2\":[\"9\"],\"1\":[\"1\",\"2\"]}', '[{\"question\":\"10\",\"answer\":\"ans1\"}]', NULL, NULL, NULL, NULL, '1726574634.jpg', '2024-09-17 12:16:10', '2024-09-17 12:16:10'),
(60, 72, 'asdfdsa', 'asdfdsa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-17 12:22:49', '2024-09-17 12:22:49'),
(61, 73, 'Test', NULL, NULL, NULL, '{\"1\":[\"1\",\"2\",\"7\"]}', '[{\"question\":null,\"answer\":null}]', NULL, NULL, NULL, NULL, '1726578115.jpg', '2024-09-17 13:01:55', '2024-09-17 13:01:55'),
(65, 131, NULL, NULL, NULL, NULL, '[]', '[{\"question\":null,\"answer\":null}]', NULL, NULL, NULL, NULL, '1726725083.jpg', '2024-09-19 05:51:23', '2024-09-19 05:51:23'),
(66, 132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-19 12:12:30', '2024-09-19 12:12:30'),
(67, 133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-19 13:04:17', '2024-09-19 13:04:17'),
(68, 134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-19 13:10:32', '2024-09-19 13:10:32'),
(69, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-19 13:12:23', '2024-09-19 13:12:23'),
(70, 81, 'hj', 'yt', '', '[\"1\"]', '{\"1\":[\"8\"],\"2\":[\"9\"],\"3\":[\"15\"]}', '[{\"question\":\"3\",\"answer\":\"hzjz\"},{\"question\":\"10\",\"answer\":\"vjjbbb\"}]', NULL, NULL, NULL, NULL, '1732354869.jpg', '2024-11-23 09:41:09', '2024-11-23 09:41:09'),
(71, 140, NULL, 'yt', 'fata', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-20 12:00:28', '2024-09-20 12:00:28'),
(72, 145, 'hlo', 'shsh', 'agahs', '[\"3\"]', '{\"1\":[\"7\",\"22\"],\"2\":[\"9\"]}', '[{\"question\":\"2\",\"answer\":\"ss\"}]', NULL, NULL, NULL, NULL, NULL, '2024-09-21 06:59:24', '2024-09-21 06:59:24'),
(76, 155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1727161820.jpg', '2024-09-24 07:10:20', '2024-09-24 07:10:20'),
(77, 104, 'Hello it there my', 'Software', '', '[\"1\"]', '{\"1\":[\"6\",\"8\",\"24\",\"23\",\"22\",\"7\",\"21\"],\"2\":[\"10\",\"27\",\"25\",\"9\",\"26\"],\"3\":[\"28\",\"15\"],\"5\":[\"18\"]}', '[{\"question\":\"3\",\"answer\":\"Choke\"}]', '0', '0', NULL, NULL, '1727182198.jpg', '2024-09-24 12:49:58', '2024-09-24 12:49:58'),
(81, 153, 'ggv', 'shsh', '', '[\"1\"]', '{\"1\":[\"6\"],\"2\":[\"9\",\"10\"]}', '[{\"question\":\"4\",\"answer\":\"sh\"}]', NULL, NULL, NULL, NULL, NULL, '2024-09-27 06:21:54', '2024-09-27 06:21:54'),
(82, 146, 'hi', 'bele', '', '[\"3\"]', '{\"1\":[\"8\"],\"2\":[\"9\",\"26\"]}', '[{\"question\":\"3\",\"answer\":\"hi\"}]', NULL, NULL, NULL, NULL, NULL, '2024-10-04 07:28:37', '2024-10-04 07:28:37'),
(83, 108, 'hji', 'kgk', '', '[\"3\",\"1\"]', '{\"1\":[\"7\",\"21\",\"24\"]}', '[{\"question\":\"4\",\"answer\":\"gy\"}]', NULL, NULL, NULL, NULL, NULL, '2024-10-05 05:01:53', '2024-10-05 05:01:53'),
(85, 164, 'asdfsafs', 'asdfsa', 'asfdsa', NULL, '{\"17\":[\"37\",\"38\",\"39\"]}', '[{\"question\":null,\"answer\":\"asfsaf\"}]', NULL, NULL, NULL, NULL, NULL, '2024-10-05 11:26:07', '2024-10-05 11:26:07'),
(86, 179, 'hii', 'shhs', '', '[\"8\"]', '{\"1\":[\"23\"],\"2\":[\"9\"],\"3\":[\"15\"]}', '[{\"question\":\"2\",\"answer\":\"hii\"}]', NULL, NULL, NULL, NULL, '1729324043.png', '2024-10-19 07:47:23', '2024-10-19 07:47:23'),
(88, 183, 'Hi Hello', 'Cricketer', 'Sports', '[\"1\",\"3\",\"8\"]', '{\"5\":[\"18\"],\"3\":[\"15\"],\"1\":[\"4\",\"7\"]}', '[{\"question\":\"10\",\"answer\":\"a1\"},{\"question\":\"9\",\"answer\":\"a2\"},{\"question\":\"8\",\"answer\":\"a3\"},{\"question\":\"7\",\"answer\":\"a4\"},{\"question\":\"6\",\"answer\":\"a5\"},{\"question\":\"4\",\"answer\":\"a6\"},{\"question\":\"5\",\"answer\":\"a7\"},{\"question\":\"3\",\"answer\":\"a8\"},{\"question\":\"2\",\"answer\":\"a9\"},{\"question\":\"1\",\"answer\":\"a10\"}]', '1', '1', 'test insta', 'test linkdin', '1729765040.jpg', '2024-10-29 07:31:37', '2024-10-29 07:30:24'),
(89, 185, 'Hi Hello', 'Cricketer', 'Sports', '[\"8\",\"3\",\"1\"]', '{\"5\":[\"18\"],\"3\":[\"15\"],\"1\":[\"4\",\"7\"]}', '[{\"question\":\"10\",\"answer\":\"a1\"},{\"question\":\"9\",\"answer\":\"a2\"},{\"question\":\"8\",\"answer\":\"a3\"},{\"question\":\"7\",\"answer\":\"a4\"},{\"question\":\"6\",\"answer\":\"a5\"},{\"question\":\"4\",\"answer\":\"a6\"},{\"question\":\"5\",\"answer\":\"a7\"},{\"question\":\"3\",\"answer\":\"a8\"},{\"question\":\"2\",\"answer\":\"a9\"},{\"question\":\"1\",\"answer\":\"a10\"}]', '1', '1', 'test insta', 'test linkdin', '1730798370.jpg', '2024-11-05 09:19:30', '2024-11-05 09:19:30'),
(91, 187, 'Testing bio', 'software', 'Testing', '[\"1\",\"8\"]', '{\"1\":[\"6\"],\"2\":[\"9\"],\"3\":[\"15\"]}', '[{\"question\":\"1\",\"answer\":\"testing\"}]', '0', '0', NULL, NULL, '1730798370.jpg', '2024-11-09 11:04:29', '2024-11-09 09:02:27'),
(92, 190, 'Hi Hello', 'Cricketer', 'Sports', '[\"1\",\"3\",\"8\"]', '{\"5\":[\"18\"],\"3\":[\"15\"],\"1\":[\"4\",\"7\"]}', '[{\"question\":\"10\",\"answer\":\"a1\"},{\"question\":\"9\",\"answer\":\"a2\"},{\"question\":\"8\",\"answer\":\"a3\"},{\"question\":\"7\",\"answer\":\"a4\"},{\"question\":\"6\",\"answer\":\"a5\"},{\"question\":\"4\",\"answer\":\"a6\"},{\"question\":\"5\",\"answer\":\"a7\"},{\"question\":\"3\",\"answer\":\"a8\"},{\"question\":\"2\",\"answer\":\"a9\"},{\"question\":\"1\",\"answer\":\"a10\"}]', '0', '0', NULL, NULL, '1730798370.jpg', '2024-11-12 05:11:11', '2024-11-12 05:10:12'),
(93, 191, 'Hi Hello', 'Cricketer', 'Sports', '[\"1\",\"3\",\"8\"]', '{\"5\":[\"18\"],\"3\":[\"15\"],\"1\":[\"4\",\"7\"]}', '[{\"question\":\"10\",\"answer\":\"a1\"},{\"question\":\"9\",\"answer\":\"a2\"},{\"question\":\"8\",\"answer\":\"a3\"},{\"question\":\"7\",\"answer\":\"a4\"},{\"question\":\"6\",\"answer\":\"a5\"},{\"question\":\"4\",\"answer\":\"a6\"},{\"question\":\"5\",\"answer\":\"a7\"},{\"question\":\"3\",\"answer\":\"a8\"},{\"question\":\"2\",\"answer\":\"a9\"},{\"question\":\"1\",\"answer\":\"a10\"}]', NULL, NULL, NULL, NULL, '1730798370.jpg', '2024-11-12 13:22:57', '2024-11-12 13:22:27'),
(94, 189, NULL, NULL, NULL, NULL, '{\"17\":[\"37\"],\"4\":[\"36\"],\"3\":[\"28\"]}', '[{\"question\":null,\"answer\":null}]', NULL, NULL, NULL, NULL, '1731497475.jpg', '2024-11-13 11:31:15', '2024-11-13 11:31:15'),
(95, 177, 'Lived in amsterdam for 5 years. looking for new friends and hobbies', 'Product', '', '[\"1\"]', '{\"1\":[\"22\",\"24\"],\"5\":[\"18\",\"19\"],\"4\":[\"20\"]}', '[{\"question\":\"1\",\"answer\":\"morning\"}]', NULL, NULL, NULL, NULL, '1732369636.jpg', '2024-11-23 13:47:16', '2024-11-23 13:47:16'),
(96, 74, 'tsstinggghdhhdhhdbbdhd', NULL, NULL, '[\"1\",\"8\",\"15\"]', '{\"1\":[\"6\"],\"2\":[\"9\"],\"3\":[\"15\"]}', '[{\"question\":\"2\",\"answer\":\"ttttt\"}]', NULL, NULL, NULL, NULL, NULL, '2024-11-22 12:47:58', '2024-11-22 12:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_reports`
--

CREATE TABLE `user_reports` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `host_id` int(11) NOT NULL,
  `report_reason` varchar(255) NOT NULL,
  `report_description` longtext DEFAULT NULL COMMENT ' 	report_description=> only for other(report_reason) 	',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_reports`
--

INSERT INTO `user_reports` (`id`, `user_id`, `host_id`, `report_reason`, `report_description`, `created_at`, `updated_at`) VALUES
(1, 1, 74, 'Fake Profile or spam', NULL, '2024-07-22 16:58:26', '2024-08-23 09:50:23'),
(2, 2, 74, 'Inappropriate or offensive behavior', NULL, '2024-07-22 16:58:26', '2024-08-23 09:50:27'),
(3, 1, 74, 'Harassment', NULL, '2024-07-22 16:58:28', '2024-08-23 09:50:31'),
(4, 3, 74, 'Other', 'This is testing4', '2024-07-22 16:58:28', '2024-08-23 09:50:35'),
(6, 1, 74, 'Fake Profile or spam', NULL, '2024-08-23 08:52:14', '2024-08-23 09:50:38'),
(7, 11, 2, 'Fake Profile or spam', NULL, '2024-08-23 09:22:40', '2024-08-23 09:50:43'),
(8, 74, 13, 'waitlist', 'I am wating for join', '2024-08-23 10:43:06', '2024-08-23 10:43:06'),
(16, 74, 13, 'waitlist', 'I am wating for join', '2024-08-23 12:07:05', '2024-08-23 12:07:05'),
(17, 74, 13, 'waitlist', NULL, '2024-08-23 12:07:12', '2024-08-23 12:07:12'),
(18, 74, 13, 'waitlist', 'I am wating for join', '2024-08-23 12:07:24', '2024-08-23 12:07:24'),
(35, 179, 179, 'Fake profile or spam', NULL, '2024-10-25 11:04:25', '2024-10-25 11:04:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_host_id_fk` (`host_id`);

--
-- Indexes for table `activities_images`
--
ALTER TABLE `activities_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_gallery_img_fk` (`activity_id`);

--
-- Indexes for table `activities_reports`
--
ALTER TABLE `activities_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_id` (`activity_id`);

--
-- Indexes for table `activities_reviews`
--
ALTER TABLE `activities_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_id_fk` (`activity_id`),
  ADD KEY `user_id_fk` (`user_id`);

--
-- Indexes for table `activity_repeat_schedules`
--
ALTER TABLE `activity_repeat_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_fk` (`activity_id`);

--
-- Indexes for table `activity_settings`
--
ALTER TABLE `activity_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendees_requests`
--
ALTER TABLE `attendees_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_id` (`activity_id`);

--
-- Indexes for table `cancellation_requests`
--
ALTER TABLE `cancellation_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_id` (`request_id`);

--
-- Indexes for table `cartSinglePayments`
--
ALTER TABLE `cartSinglePayments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_id` (`activity_id`);

--
-- Indexes for table `fcm_tokens`
--
ALTER TABLE `fcm_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_options`
--
ALTER TABLE `login_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login_option_user_id_fk` (`user_id`);

--
-- Indexes for table `manage_notifications`
--
ALTER TABLE `manage_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_notification_fk` (`user_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id_fk` (`category_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testcron`
--
ALTER TABLE `testcron`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_fun_facts`
--
ALTER TABLE `user_fun_facts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_profile_fk` (`user_id`);

--
-- Indexes for table `user_reports`
--
ALTER TABLE `user_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=574;

--
-- AUTO_INCREMENT for table `activities_images`
--
ALTER TABLE `activities_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `activities_reports`
--
ALTER TABLE `activities_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `activities_reviews`
--
ALTER TABLE `activities_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `activity_repeat_schedules`
--
ALTER TABLE `activity_repeat_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `activity_settings`
--
ALTER TABLE `activity_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendees_requests`
--
ALTER TABLE `attendees_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT for table `cancellation_requests`
--
ALTER TABLE `cancellation_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cartSinglePayments`
--
ALTER TABLE `cartSinglePayments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `fcm_tokens`
--
ALTER TABLE `fcm_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `login_options`
--
ALTER TABLE `login_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `manage_notifications`
--
ALTER TABLE `manage_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1443;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `testcron`
--
ALTER TABLE `testcron`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=418;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `user_fun_facts`
--
ALTER TABLE `user_fun_facts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `user_reports`
--
ALTER TABLE `user_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activity_host_id_fk` FOREIGN KEY (`host_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `activities_images`
--
ALTER TABLE `activities_images`
  ADD CONSTRAINT `activity_gallery_img_fk` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `activities_reports`
--
ALTER TABLE `activities_reports`
  ADD CONSTRAINT `activities_reports_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `activities_reviews`
--
ALTER TABLE `activities_reviews`
  ADD CONSTRAINT `activity_id_fk` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `activity_repeat_schedules`
--
ALTER TABLE `activity_repeat_schedules`
  ADD CONSTRAINT `activity_fk` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attendees_requests`
--
ALTER TABLE `attendees_requests`
  ADD CONSTRAINT `attendees_requests_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cancellation_requests`
--
ALTER TABLE `cancellation_requests`
  ADD CONSTRAINT `cancellation_requests_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `attendees_requests` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favourites`
--
ALTER TABLE `favourites`
  ADD CONSTRAINT `favourites_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `login_options`
--
ALTER TABLE `login_options`
  ADD CONSTRAINT `login_option_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `user_id_notification_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `category_id_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD CONSTRAINT `user_profile_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_reports`
--
ALTER TABLE `user_reports`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
