-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2026 at 12:55 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `nic` varchar(12) DEFAULT NULL,
  `email_id` varchar(100) DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirm_password` varchar(255) NOT NULL,
  `admin_image` varchar(255) DEFAULT NULL,
  `admin_type` varchar(20) DEFAULT 'Admin',
  `admin_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `first_name`, `last_name`, `nic`, `email_id`, `contact`, `username`, `password`, `confirm_password`, `admin_image`, `admin_type`, `admin_added`) VALUES
(1, 'Daniel', 'Kish', '000123123123', 'admin@gmail.com', '9876543210', 'admin', '123123123', '123123123', 'banner-number-plate.jpg', 'Admin', '2023-10-26 10:00:00'),
(2, 'Jane', 'Smith', '210987654321', 'janesmith@example.com', '9876543211', 'jane.librarian', 'librarian123', 'librarian123', 'Business-card.jpg', 'Librarian', '2023-10-26 10:05:00'),
(4, 'test', 'test', '', '', '0789909909', 'test', '123123123', '123123123', 'hacker-2300772_1920.jpg', 'Admin', '2026-02-05 11:06:12'),
(5, 'test2', 'test2', '', '', '0676766676', 'test2', '123123123', '123123123', 'hacker-2300772_1920.jpg', 'librarian', '2026-02-05 11:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `allowed_book`
--

CREATE TABLE `allowed_book` (
  `allowed_book_id` int(11) NOT NULL,
  `qntty_books` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `allowed_book`
--

INSERT INTO `allowed_book` (`allowed_book_id`, `qntty_books`) VALUES
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `allowed_days`
--

CREATE TABLE `allowed_days` (
  `allowed_days_id` int(11) NOT NULL,
  `no_of_days` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `allowed_days`
--

INSERT INTO `allowed_days` (`allowed_days_id`, `no_of_days`) VALUES
(1, 16);

-- --------------------------------------------------------

--
-- Table structure for table `barcode`
--

CREATE TABLE `barcode` (
  `barcode_id` int(11) NOT NULL,
  `pre_barcode` varchar(20) DEFAULT NULL,
  `mid_barcode` int(11) DEFAULT NULL,
  `suf_barcode` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barcode`
--

INSERT INTO `barcode` (`barcode_id`, `pre_barcode`, `mid_barcode`, `suf_barcode`) VALUES
(1, 'KIT', 1, 'VNS'),
(2, 'KIT', 2, 'VNS'),
(3, 'KIT', 3, 'VNS'),
(4, 'KIT', 4, 'VNS'),
(5, 'KIT', 5, 'VNS'),
(6, 'KIT', 6, 'VNS'),
(7, 'KIT', 7, 'VNS'),
(8, 'KIT', 8, 'VNS'),
(9, 'KIT', 9, 'VNS'),
(10, 'KIT', 10, 'VNS'),
(11, 'KIT', 11, 'VNS'),
(12, 'KIT', 12, 'VNS'),
(13, 'KIT', 13, 'VNS'),
(14, 'KIT', 14, 'VNS'),
(15, 'KIT', 15, 'VNS'),
(16, 'KIT', 16, 'VNS'),
(17, 'KIT', 17, 'VNS'),
(18, 'KIT', 18, 'VNS'),
(19, 'KIT', 19, 'VNS'),
(20, 'KIT', 20, 'VNS'),
(21, 'KIT', 21, 'VNS'),
(22, 'KIT', 22, 'VNS'),
(23, 'KIT', 23, 'VNS'),
(24, 'KIT', 24, 'VNS'),
(25, 'KIT', 25, 'VNS'),
(26, 'KIT', 26, 'VNS'),
(27, 'KIT', 27, 'VNS'),
(28, 'KIT', 28, 'VNS'),
(29, 'KIT', 29, 'VNS'),
(30, 'KIT', 30, 'VNS'),
(31, 'KIT', 31, 'VNS'),
(32, 'KIT', 32, 'VNS'),
(33, 'KIT', 33, 'VNS'),
(34, 'KIT', 34, 'VNS'),
(35, 'KIT', 35, 'VNS'),
(36, 'KIT', 36, 'VNS'),
(37, 'KIT', 37, 'VNS'),
(38, 'KIT', 38, 'VNS'),
(39, 'KIT', 39, 'VNS'),
(40, 'KIT', 40, 'VNS'),
(41, 'KIT', 41, 'VNS'),
(42, 'KIT', 42, 'VNS'),
(43, 'KIT', 43, 'VNS'),
(44, 'KIT', 44, 'VNS'),
(45, 'KIT', 45, 'VNS'),
(46, 'KIT', 46, 'VNS'),
(47, 'KIT', 47, 'VNS'),
(48, 'KIT', 48, 'VNS'),
(49, 'KIT', 49, 'VNS'),
(50, 'KIT', 50, 'VNS'),
(51, 'KIT', 51, 'VNS'),
(52, 'KIT', 52, 'VNS'),
(53, 'KIT', 53, 'VNS'),
(54, 'KIT', 54, 'VNS'),
(55, 'KIT', 55, 'VNS'),
(56, 'KIT', 56, 'VNS'),
(57, 'KIT', 57, 'VNS'),
(58, 'KIT', 58, 'VNS'),
(59, 'KIT', 59, 'VNS'),
(60, 'KIT', 60, 'VNS'),
(61, 'KIT', 61, 'VNS'),
(62, 'KIT', 62, 'VNS'),
(63, 'KIT', 63, 'VNS'),
(64, 'KIT', 64, 'VNS'),
(65, 'KIT', 65, 'VNS'),
(66, 'KIT', 66, 'VNS'),
(67, 'KIT', 67, 'VNS'),
(68, 'KIT', 68, 'VNS'),
(69, 'KIT', 69, 'VNS'),
(70, 'KIT', 70, 'VNS'),
(71, 'KIT', 71, 'VNS'),
(72, 'KIT', 72, 'VNS'),
(73, 'KIT', 73, 'VNS'),
(74, 'KIT', 74, 'VNS'),
(75, 'KIT', 75, 'VNS'),
(76, 'KIT', 76, 'VNS'),
(77, 'KIT', 77, 'VNS'),
(78, 'KIT', 78, 'VNS'),
(79, 'KIT', 79, 'VNS'),
(80, 'KIT', 80, 'VNS'),
(81, 'KIT', 81, 'VNS'),
(82, 'KIT', 82, 'VNS'),
(83, 'KIT', 83, 'VNS'),
(84, 'KIT', 84, 'VNS'),
(85, 'KIT', 85, 'VNS'),
(86, 'KIT', 86, 'VNS'),
(87, 'KIT', 87, 'VNS'),
(88, 'KIT', 88, 'VNS'),
(89, 'KIT', 89, 'VNS'),
(90, 'KIT', 90, 'VNS'),
(91, 'KIT', 91, 'VNS'),
(92, 'KIT', 92, 'VNS'),
(93, 'KIT', 93, 'VNS'),
(94, 'KIT', 94, 'VNS'),
(95, 'KIT', 95, 'VNS'),
(96, 'KIT', 96, 'VNS'),
(97, 'KIT', 97, 'VNS'),
(98, 'KIT', 98, 'VNS'),
(99, 'KIT', 99, 'VNS'),
(100, 'KIT', 100, 'VNS'),
(101, 'KIT', 101, 'VNS'),
(102, 'KIT', 102, 'VNS'),
(103, 'KIT', 103, 'VNS'),
(104, 'KIT', 104, 'VNS'),
(105, 'KIT', 105, 'VNS'),
(106, 'KIT', 106, 'VNS'),
(107, 'KIT', 107, 'VNS'),
(108, 'KIT', 108, 'VNS'),
(109, 'KIT', 109, 'VNS'),
(110, 'KIT', 110, 'VNS'),
(111, 'KIT', 111, 'VNS'),
(112, 'KIT', 112, 'VNS'),
(113, 'KIT', 113, 'VNS'),
(114, 'KIT', 114, 'VNS'),
(115, 'KIT', 115, 'VNS'),
(116, 'KIT', 116, 'VNS'),
(117, 'KIT', 117, 'VNS'),
(118, 'KIT', 118, 'VNS'),
(119, 'KIT', 119, 'VNS'),
(120, 'KIT', 120, 'VNS'),
(121, 'KIT', 121, 'VNS'),
(122, 'KIT', 122, 'VNS'),
(123, 'KIT', 123, 'VNS'),
(124, 'KIT', 124, 'VNS'),
(125, 'KIT', 125, 'VNS'),
(126, 'KIT', 126, 'VNS'),
(127, 'KIT', 127, 'VNS'),
(128, 'KIT', 128, 'VNS'),
(129, 'KIT', 129, 'VNS'),
(130, 'KIT', 130, 'VNS'),
(131, 'KIT', 131, 'VNS'),
(132, 'KIT', 132, 'VNS'),
(133, 'KIT', 133, 'VNS'),
(134, 'KIT', 134, 'VNS'),
(135, 'KIT', 135, 'VNS'),
(136, 'KIT', 136, 'VNS'),
(137, 'KIT', 137, 'VNS'),
(138, 'KIT', 138, 'VNS'),
(139, 'KIT', 139, 'VNS'),
(140, 'KIT', 140, 'VNS'),
(141, 'KIT', 141, 'VNS'),
(142, 'KIT', 142, 'VNS'),
(143, 'KIT', 143, 'VNS'),
(144, 'KIT', 144, 'VNS'),
(145, 'KIT', 145, 'VNS'),
(146, 'KIT', 146, 'VNS'),
(147, 'KIT', 147, 'VNS'),
(148, 'KIT', 148, 'VNS'),
(149, 'KIT', 149, 'VNS'),
(150, 'KIT', 150, 'VNS'),
(151, 'KIT', 151, 'VNS'),
(152, 'KIT', 152, 'VNS'),
(153, 'KIT', 153, 'VNS'),
(154, 'KIT', 154, 'VNS'),
(155, 'KIT', 155, 'VNS'),
(156, 'KIT', 156, 'VNS'),
(157, 'KIT', 157, 'VNS'),
(158, 'KIT', 158, 'VNS'),
(159, 'KIT', 159, 'VNS'),
(160, 'KIT', 160, 'VNS'),
(161, 'KIT', 161, 'VNS'),
(162, 'KIT', 162, 'VNS'),
(163, 'KIT', 163, 'VNS'),
(164, 'KIT', 164, 'VNS'),
(165, 'KIT', 165, 'VNS'),
(166, 'KIT', 166, 'VNS'),
(167, 'KIT', 167, 'VNS'),
(168, 'KIT', 168, 'VNS'),
(169, 'KIT', 169, 'VNS'),
(170, 'KIT', 170, 'VNS'),
(171, 'KIT', 171, 'VNS'),
(172, 'KIT', 172, 'VNS'),
(173, 'KIT', 173, 'VNS'),
(174, 'KIT', 174, 'VNS'),
(175, 'KIT', 175, 'VNS'),
(176, 'KIT', 176, 'VNS'),
(177, 'KIT', 177, 'VNS'),
(178, 'KIT', 178, 'VNS'),
(179, 'KIT', 179, 'VNS'),
(180, 'KIT', 180, 'VNS'),
(181, 'KIT', 181, 'VNS'),
(182, 'KIT', 182, 'VNS'),
(183, 'KIT', 183, 'VNS'),
(184, 'KIT', 184, 'VNS'),
(185, 'KIT', 185, 'VNS'),
(186, 'KIT', 186, 'VNS'),
(187, 'KIT', 187, 'VNS'),
(188, 'KIT', 188, 'VNS'),
(189, 'KIT', 189, 'VNS'),
(190, 'KIT', 190, 'VNS'),
(191, 'KIT', 191, 'VNS'),
(192, 'KIT', 192, 'VNS'),
(193, 'KIT', 193, 'VNS'),
(194, 'KIT', 194, 'VNS'),
(195, 'KIT', 195, 'VNS'),
(196, 'KIT', 196, 'VNS'),
(197, 'KIT', 197, 'VNS'),
(198, 'KIT', 198, 'VNS'),
(199, 'KIT', 199, 'VNS'),
(200, 'KIT', 200, 'VNS'),
(201, 'KIT', 201, 'VNS'),
(202, 'KIT', 202, 'VNS'),
(203, 'KIT', 203, 'VNS'),
(204, 'KIT', 204, 'VNS'),
(205, 'KIT', 205, 'VNS'),
(206, 'KIT', 206, 'VNS'),
(207, 'KIT', 207, 'VNS'),
(208, 'KIT', 208, 'VNS'),
(209, 'KIT', 209, 'VNS'),
(210, 'KIT', 210, 'VNS'),
(211, 'KIT', 211, 'VNS'),
(212, 'KIT', 212, 'VNS'),
(213, 'KIT', 213, 'VNS'),
(214, 'KIT', 214, 'VNS'),
(215, 'KIT', 215, 'VNS'),
(216, 'KIT', 216, 'VNS'),
(217, 'KIT', 217, 'VNS'),
(218, 'KIT', 218, 'VNS'),
(219, 'KIT', 219, 'VNS'),
(220, 'KIT', 220, 'VNS'),
(221, 'KIT', 221, 'VNS'),
(222, 'KIT', 222, 'VNS'),
(223, 'KIT', 223, 'VNS'),
(224, 'KIT', 224, 'VNS'),
(225, 'KIT', 225, 'VNS'),
(226, 'KIT', 226, 'VNS'),
(227, 'KIT', 227, 'VNS'),
(228, 'KIT', 228, 'VNS'),
(229, 'KIT', 229, 'VNS'),
(230, 'KIT', 230, 'VNS'),
(231, 'KIT', 231, 'VNS'),
(232, 'KIT', 232, 'VNS'),
(233, 'KIT', 233, 'VNS'),
(234, 'KIT', 234, 'VNS'),
(235, 'KIT', 235, 'VNS'),
(236, 'KIT', 236, 'VNS'),
(237, 'KIT', 237, 'VNS'),
(238, 'KIT', 238, 'VNS'),
(239, 'KIT', 239, 'VNS'),
(240, 'KIT', 240, 'VNS'),
(241, 'KIT', 241, 'VNS'),
(242, 'KIT', 242, 'VNS'),
(243, 'KIT', 243, 'VNS'),
(244, 'KIT', 244, 'VNS'),
(245, 'KIT', 245, 'VNS'),
(246, 'KIT', 246, 'VNS'),
(247, 'KIT', 247, 'VNS'),
(248, 'KIT', 248, 'VNS'),
(249, 'KIT', 249, 'VNS'),
(250, 'KIT', 250, 'VNS'),
(251, 'KIT', 251, 'VNS'),
(252, 'KIT', 252, 'VNS'),
(253, 'KIT', 253, 'VNS'),
(254, 'KIT', 254, 'VNS'),
(255, 'KIT', 255, 'VNS'),
(256, 'KIT', 256, 'VNS'),
(257, 'KIT', 257, 'VNS'),
(258, 'KIT', 258, 'VNS'),
(259, 'KIT', 259, 'VNS'),
(260, 'KIT', 260, 'VNS'),
(261, 'KIT', 261, 'VNS'),
(262, 'KIT', 262, 'VNS'),
(263, 'KIT', 263, 'VNS'),
(264, 'KIT', 264, 'VNS'),
(265, 'KIT', 265, 'VNS'),
(266, 'KIT', 266, 'VNS'),
(267, 'KIT', 267, 'VNS'),
(268, 'KIT', 268, 'VNS'),
(269, 'KIT', 269, 'VNS'),
(270, 'KIT', 270, 'VNS'),
(271, 'KIT', 271, 'VNS'),
(272, 'KIT', 272, 'VNS'),
(273, 'KIT', 273, 'VNS'),
(274, 'KIT', 274, 'VNS'),
(275, 'KIT', 275, 'VNS'),
(276, 'KIT', 276, 'VNS'),
(277, 'KIT', 277, 'VNS'),
(278, 'KIT', 278, 'VNS'),
(279, 'KIT', 279, 'VNS'),
(280, 'KIT', 280, 'VNS'),
(281, 'KIT', 281, 'VNS'),
(282, 'KIT', 282, 'VNS'),
(283, 'KIT', 283, 'VNS'),
(284, 'KIT', 284, 'VNS'),
(285, 'KIT', 285, 'VNS'),
(286, 'KIT', 286, 'VNS'),
(287, 'KIT', 287, 'VNS'),
(288, 'KIT', 288, 'VNS'),
(289, 'KIT', 289, 'VNS'),
(290, 'KIT', 290, 'VNS'),
(291, 'KIT', 291, 'VNS'),
(292, 'KIT', 292, 'VNS'),
(293, 'KIT', 293, 'VNS'),
(294, 'KIT', 294, 'VNS'),
(295, 'KIT', 295, 'VNS'),
(296, 'KIT', 296, 'VNS'),
(297, 'KIT', 297, 'VNS'),
(298, 'KIT', 298, 'VNS'),
(299, 'KIT', 299, 'VNS'),
(300, 'KIT', 300, 'VNS'),
(301, 'KIT', 301, 'VNS'),
(302, 'KIT', 302, 'VNS'),
(303, 'KIT', 303, 'VNS'),
(304, 'KIT', 304, 'VNS'),
(305, 'KIT', 305, 'VNS'),
(306, 'KIT', 306, 'VNS'),
(307, 'KIT', 307, 'VNS'),
(308, 'KIT', 308, 'VNS'),
(309, 'KIT', 309, 'VNS'),
(310, 'KIT', 310, 'VNS'),
(311, 'KIT', 311, 'VNS'),
(312, 'KIT', 312, 'VNS'),
(313, 'KIT', 313, 'VNS'),
(314, 'KIT', 314, 'VNS'),
(315, 'KIT', 315, 'VNS'),
(316, 'KIT', 316, 'VNS'),
(317, 'KIT', 317, 'VNS'),
(318, 'KIT', 318, 'VNS'),
(319, 'KIT', 319, 'VNS'),
(320, 'KIT', 320, 'VNS'),
(321, 'KIT', 321, 'VNS'),
(322, 'KIT', 322, 'VNS'),
(323, 'KIT', 323, 'VNS'),
(324, 'KIT', 324, 'VNS'),
(325, 'KIT', 325, 'VNS'),
(326, 'KIT', 326, 'VNS'),
(327, 'KIT', 327, 'VNS'),
(328, 'KIT', 328, 'VNS'),
(329, 'KIT', 329, 'VNS'),
(330, 'KIT', 330, 'VNS'),
(331, 'KIT', 331, 'VNS'),
(332, 'KIT', 332, 'VNS'),
(333, 'KIT', 333, 'VNS'),
(334, 'KIT', 334, 'VNS'),
(335, 'KIT', 335, 'VNS'),
(336, 'KIT', 336, 'VNS'),
(337, 'KIT', 337, 'VNS'),
(338, 'KIT', 338, 'VNS'),
(339, 'KIT', 339, 'VNS'),
(340, 'KIT', 340, 'VNS'),
(341, 'KIT', 341, 'VNS'),
(342, 'KIT', 342, 'VNS'),
(343, 'KIT', 343, 'VNS'),
(344, 'KIT', 344, 'VNS'),
(345, 'KIT', 345, 'VNS'),
(346, 'KIT', 346, 'VNS'),
(347, 'KIT', 347, 'VNS'),
(348, 'KIT', 348, 'VNS'),
(349, 'KIT', 349, 'VNS'),
(350, 'KIT', 350, 'VNS'),
(351, 'KIT', 351, 'VNS'),
(352, 'KIT', 352, 'VNS'),
(353, 'KIT', 353, 'VNS'),
(354, 'KIT', 354, 'VNS'),
(355, 'KIT', 355, 'VNS'),
(356, 'KIT', 356, 'VNS'),
(357, 'KIT', 357, 'VNS'),
(358, 'KIT', 358, 'VNS'),
(359, 'KIT', 359, 'VNS'),
(360, 'KIT', 360, 'VNS'),
(361, 'KIT', 361, 'VNS'),
(362, 'KIT', 362, 'VNS'),
(363, 'KIT', 363, 'VNS'),
(364, 'KIT', 364, 'VNS'),
(365, 'KIT', 365, 'VNS'),
(366, 'KIT', 366, 'VNS'),
(367, 'KIT', 367, 'VNS'),
(368, 'KIT', 368, 'VNS'),
(369, 'KIT', 369, 'VNS'),
(370, 'KIT', 370, 'VNS'),
(371, 'KIT', 371, 'VNS'),
(372, 'KIT', 372, 'VNS'),
(373, 'KIT', 373, 'VNS'),
(374, 'KIT', 374, 'VNS'),
(375, 'KIT', 375, 'VNS'),
(376, 'KIT', 376, 'VNS'),
(377, 'KIT', 377, 'VNS'),
(378, 'KIT', 378, 'VNS'),
(379, 'KIT', 379, 'VNS'),
(380, 'KIT', 380, 'VNS'),
(381, 'KIT', 381, 'VNS'),
(382, 'KIT', 382, 'VNS'),
(383, 'KIT', 383, 'VNS'),
(384, 'KIT', 384, 'VNS'),
(385, 'KIT', 385, 'VNS'),
(386, 'KIT', 386, 'VNS'),
(387, 'KIT', 387, 'VNS'),
(388, 'KIT', 388, 'VNS'),
(389, 'KIT', 389, 'VNS'),
(390, 'KIT', 390, 'VNS'),
(391, 'KIT', 391, 'VNS'),
(392, 'KIT', 392, 'VNS'),
(393, 'KIT', 393, 'VNS'),
(394, 'KIT', 394, 'VNS'),
(395, 'KIT', 395, 'VNS'),
(396, 'KIT', 396, 'VNS'),
(397, 'KIT', 397, 'VNS'),
(398, 'KIT', 398, 'VNS'),
(399, 'KIT', 399, 'VNS'),
(400, 'KIT', 400, 'VNS'),
(401, 'KIT', 401, 'VNS'),
(402, 'KIT', 402, 'VNS'),
(403, 'KIT', 403, 'VNS'),
(404, 'KIT', 404, 'VNS'),
(405, 'KIT', 405, 'VNS'),
(406, 'KIT', 406, 'VNS'),
(407, 'KIT', 407, 'VNS'),
(408, 'KIT', 408, 'VNS'),
(409, 'KIT', 409, 'VNS'),
(410, 'KIT', 410, 'VNS'),
(411, 'KIT', 411, 'VNS'),
(412, 'KIT', 412, 'VNS'),
(413, 'KIT', 413, 'VNS'),
(414, 'KIT', 414, 'VNS'),
(415, 'KIT', 415, 'VNS'),
(416, 'KIT', 416, 'VNS'),
(417, 'KIT', 417, 'VNS'),
(418, 'KIT', 418, 'VNS'),
(419, 'KIT', 419, 'VNS'),
(420, 'KIT', 420, 'VNS'),
(421, 'KIT', 421, 'VNS'),
(422, 'KIT', 422, 'VNS'),
(423, 'KIT', 423, 'VNS'),
(424, 'KIT', 424, 'VNS'),
(425, 'KIT', 425, 'VNS'),
(426, 'KIT', 426, 'VNS'),
(427, 'KIT', 427, 'VNS'),
(428, 'KIT', 428, 'VNS'),
(429, 'KIT', 429, 'VNS'),
(430, 'KIT', 430, 'VNS'),
(431, 'KIT', 431, 'VNS'),
(432, 'KIT', 432, 'VNS'),
(433, 'KIT', 433, 'VNS'),
(434, 'KIT', 434, 'VNS'),
(435, 'KIT', 435, 'VNS'),
(436, 'KIT', 436, 'VNS'),
(437, 'KIT', 437, 'VNS'),
(438, 'KIT', 438, 'VNS'),
(439, 'KIT', 439, 'VNS'),
(440, 'KIT', 440, 'VNS'),
(441, 'KIT', 441, 'VNS'),
(442, 'KIT', 442, 'VNS'),
(443, 'KIT', 443, 'VNS'),
(444, 'KIT', 444, 'VNS'),
(445, 'KIT', 445, 'VNS'),
(446, 'KIT', 446, 'VNS'),
(447, 'KIT', 447, 'VNS'),
(448, 'KIT', 448, 'VNS'),
(449, 'KIT', 449, 'VNS'),
(450, 'KIT', 450, 'VNS'),
(451, 'KIT', 451, 'VNS'),
(452, 'KIT', 452, 'VNS'),
(453, 'KIT', 453, 'VNS'),
(454, 'KIT', 454, 'VNS'),
(455, 'KIT', 455, 'VNS'),
(456, 'KIT', 456, 'VNS'),
(457, 'KIT', 457, 'VNS'),
(458, 'KIT', 458, 'VNS'),
(459, 'KIT', 459, 'VNS'),
(460, 'KIT', 460, 'VNS'),
(461, 'KIT', 461, 'VNS'),
(462, 'KIT', 462, 'VNS'),
(463, 'KIT', 463, 'VNS'),
(464, 'KIT', 464, 'VNS'),
(465, 'KIT', 465, 'VNS'),
(466, 'KIT', 466, 'VNS'),
(467, 'KIT', 467, 'VNS'),
(468, 'KIT', 468, 'VNS'),
(469, 'KIT', 469, 'VNS'),
(470, 'KIT', 470, 'VNS'),
(471, 'KIT', 471, 'VNS'),
(472, 'KIT', 472, 'VNS'),
(473, 'KIT', 473, 'VNS'),
(474, 'KIT', 474, 'VNS'),
(475, 'KIT', 475, 'VNS'),
(476, 'KIT', 476, 'VNS'),
(477, 'KIT', 477, 'VNS'),
(478, 'KIT', 478, 'VNS'),
(479, 'KIT', 479, 'VNS'),
(480, 'KIT', 480, 'VNS'),
(481, 'KIT', 481, 'VNS'),
(482, 'KIT', 482, 'VNS'),
(483, 'KIT', 483, 'VNS'),
(484, 'KIT', 484, 'VNS'),
(485, 'KIT', 485, 'VNS'),
(486, 'KIT', 486, 'VNS'),
(487, 'KIT', 487, 'VNS'),
(488, 'KIT', 488, 'VNS'),
(489, 'KIT', 489, 'VNS'),
(490, 'KIT', 490, 'VNS'),
(491, 'KIT', 491, 'VNS'),
(492, 'KIT', 492, 'VNS'),
(493, 'KIT', 493, 'VNS'),
(494, 'KIT', 494, 'VNS'),
(495, 'KIT', 495, 'VNS'),
(496, 'KIT', 496, 'VNS'),
(497, 'KIT', 497, 'VNS'),
(498, 'KIT', 498, 'VNS'),
(499, 'KIT', 499, 'VNS'),
(500, 'KIT', 500, 'VNS'),
(501, 'KIT', 501, 'VNS'),
(502, 'KIT', 502, 'VNS'),
(503, 'KIT', 503, 'VNS'),
(504, 'KIT', 504, 'VNS'),
(505, 'KIT', 505, 'VNS'),
(506, 'KIT', 506, 'VNS'),
(507, 'KIT', 507, 'VNS'),
(508, 'KIT', 508, 'VNS'),
(509, 'KIT', 509, 'VNS'),
(510, 'KIT', 510, 'VNS'),
(511, 'KIT', 511, 'VNS'),
(512, 'KIT', 512, 'VNS'),
(513, 'KIT', 513, 'VNS'),
(514, 'KIT', 514, 'VNS'),
(515, 'KIT', 515, 'VNS'),
(516, 'KIT', 516, 'VNS'),
(517, 'KIT', 517, 'VNS'),
(518, 'KIT', 518, 'VNS'),
(519, 'KIT', 519, 'VNS'),
(520, 'KIT', 520, 'VNS'),
(521, 'KIT', 521, 'VNS'),
(522, 'KIT', 522, 'VNS'),
(523, 'KIT', 523, 'VNS'),
(524, 'KIT', 524, 'VNS'),
(525, 'KIT', 525, 'VNS'),
(526, 'KIT', 526, 'VNS'),
(527, 'KIT', 527, 'VNS'),
(528, 'KIT', 528, 'VNS'),
(529, 'KIT', 529, 'VNS'),
(530, 'KIT', 530, 'VNS'),
(531, 'KIT', 531, 'VNS'),
(532, 'KIT', 532, 'VNS'),
(533, 'KIT', 533, 'VNS'),
(534, 'KIT', 534, 'VNS'),
(535, 'KIT', 535, 'VNS'),
(536, 'KIT', 536, 'VNS'),
(537, 'KIT', 537, 'VNS'),
(538, 'KIT', 538, 'VNS'),
(539, 'KIT', 539, 'VNS'),
(540, 'KIT', 540, 'VNS'),
(541, 'KIT', 541, 'VNS'),
(542, 'KIT', 542, 'VNS'),
(543, 'KIT', 543, 'VNS'),
(544, 'KIT', 544, 'VNS'),
(545, 'KIT', 545, 'VNS'),
(546, 'KIT', 546, 'VNS'),
(547, 'KIT', 547, 'VNS'),
(548, 'KIT', 548, 'VNS'),
(549, 'KIT', 549, 'VNS'),
(550, 'KIT', 550, 'VNS'),
(551, 'KIT', 551, 'VNS'),
(552, 'KIT', 552, 'VNS'),
(553, 'KIT', 553, 'VNS'),
(554, 'KIT', 554, 'VNS'),
(555, 'KIT', 555, 'VNS'),
(556, 'KIT', 556, 'VNS'),
(557, 'KIT', 557, 'VNS'),
(558, 'KIT', 558, 'VNS'),
(559, 'KIT', 559, 'VNS'),
(560, 'KIT', 560, 'VNS'),
(561, 'KIT', 561, 'VNS'),
(562, 'KIT', 562, 'VNS'),
(563, 'KIT', 563, 'VNS'),
(564, 'KIT', 564, 'VNS'),
(565, 'KIT', 565, 'VNS'),
(566, 'KIT', 566, 'VNS'),
(567, 'KIT', 567, 'VNS'),
(568, 'KIT', 568, 'VNS'),
(569, 'KIT', 569, 'VNS'),
(570, 'KIT', 570, 'VNS'),
(571, 'KIT', 571, 'VNS'),
(572, 'KIT', 572, 'VNS'),
(573, 'KIT', 573, 'VNS'),
(574, 'KIT', 574, 'VNS'),
(575, 'KIT', 575, 'VNS'),
(576, 'KIT', 576, 'VNS'),
(577, 'KIT', 577, 'VNS'),
(578, 'KIT', 578, 'VNS'),
(579, 'KIT', 579, 'VNS'),
(580, 'KIT', 580, 'VNS'),
(581, 'KIT', 581, 'VNS'),
(582, 'KIT', 582, 'VNS'),
(583, 'KIT', 583, 'VNS'),
(584, 'KIT', 584, 'VNS'),
(585, 'KIT', 585, 'VNS'),
(586, 'KIT', 586, 'VNS'),
(587, 'KIT', 587, 'VNS'),
(588, 'KIT', 588, 'VNS'),
(589, 'KIT', 589, 'VNS'),
(590, 'KIT', 590, 'VNS'),
(591, 'KIT', 591, 'VNS'),
(592, 'KIT', 592, 'VNS'),
(593, 'KIT', 593, 'VNS'),
(594, 'KIT', 594, 'VNS'),
(595, 'KIT', 595, 'VNS'),
(596, 'KIT', 596, 'VNS'),
(597, 'KIT', 597, 'VNS'),
(598, 'KIT', 598, 'VNS'),
(599, 'KIT', 599, 'VNS'),
(600, 'KIT', 600, 'VNS'),
(601, 'KIT', 601, 'VNS'),
(602, 'KIT', 602, 'VNS'),
(603, 'KIT', 603, 'VNS'),
(604, 'KIT', 604, 'VNS'),
(605, 'KIT', 605, 'VNS'),
(606, 'KIT', 606, 'VNS'),
(607, 'KIT', 607, 'VNS'),
(608, 'KIT', 608, 'VNS'),
(609, 'KIT', 609, 'VNS'),
(610, 'KIT', 610, 'VNS'),
(611, 'KIT', 611, 'VNS'),
(612, 'KIT', 612, 'VNS'),
(613, 'KIT', 613, 'VNS'),
(614, 'KIT', 614, 'VNS'),
(615, 'KIT', 615, 'VNS'),
(616, 'KIT', 616, 'VNS'),
(617, 'KIT', 617, 'VNS'),
(618, 'KIT', 618, 'VNS'),
(619, 'KIT', 619, 'VNS'),
(620, 'KIT', 620, 'VNS'),
(621, 'KIT', 621, 'VNS'),
(622, 'KIT', 622, 'VNS'),
(623, 'KIT', 623, 'VNS'),
(624, 'KIT', 624, 'VNS'),
(625, 'KIT', 625, 'VNS'),
(626, 'KIT', 626, 'VNS'),
(627, 'KIT', 627, 'VNS'),
(628, 'KIT', 628, 'VNS'),
(629, 'KIT', 629, 'VNS'),
(630, 'KIT', 630, 'VNS'),
(631, 'KIT', 631, 'VNS'),
(632, 'KIT', 632, 'VNS'),
(633, 'KIT', 633, 'VNS'),
(634, 'KIT', 634, 'VNS'),
(635, 'KIT', 635, 'VNS'),
(636, 'KIT', 636, 'VNS'),
(637, 'KIT', 637, 'VNS'),
(638, 'KIT', 638, 'VNS'),
(639, 'KIT', 639, 'VNS'),
(640, 'KIT', 640, 'VNS'),
(641, 'KIT', 641, 'VNS'),
(642, 'KIT', 642, 'VNS'),
(643, 'KIT', 643, 'VNS'),
(644, 'KIT', 644, 'VNS'),
(645, 'KIT', 645, 'VNS'),
(646, 'KIT', 646, 'VNS'),
(647, 'KIT', 647, 'VNS'),
(648, 'KIT', 648, 'VNS'),
(649, 'KIT', 649, 'VNS'),
(650, 'KIT', 650, 'VNS'),
(651, 'KIT', 651, 'VNS'),
(652, 'KIT', 652, 'VNS'),
(653, 'KIT', 653, 'VNS'),
(654, 'KIT', 654, 'VNS'),
(655, 'KIT', 655, 'VNS'),
(656, 'KIT', 656, 'VNS'),
(657, 'KIT', 657, 'VNS'),
(658, 'KIT', 658, 'VNS'),
(659, 'KIT', 659, 'VNS'),
(660, 'KIT', 660, 'VNS'),
(661, 'KIT', 661, 'VNS'),
(662, 'KIT', 662, 'VNS'),
(663, 'KIT', 663, 'VNS'),
(664, 'KIT', 664, 'VNS'),
(665, 'KIT', 665, 'VNS'),
(666, 'KIT', 666, 'VNS'),
(667, 'KIT', 667, 'VNS'),
(668, 'KIT', 668, 'VNS'),
(669, 'KIT', 669, 'VNS'),
(670, 'KIT', 670, 'VNS'),
(671, 'KIT', 671, 'VNS'),
(672, 'KIT', 672, 'VNS'),
(673, 'KIT', 673, 'VNS'),
(674, 'KIT', 674, 'VNS'),
(675, 'KIT', 675, 'VNS'),
(676, 'KIT', 676, 'VNS'),
(677, 'KIT', 677, 'VNS'),
(678, 'KIT', 678, 'VNS'),
(679, 'KIT', 679, 'VNS'),
(680, 'KIT', 680, 'VNS'),
(681, 'KIT', 681, 'VNS'),
(682, 'KIT', 682, 'VNS'),
(683, 'KIT', 683, 'VNS'),
(684, 'KIT', 684, 'VNS'),
(685, 'KIT', 685, 'VNS'),
(686, 'KIT', 686, 'VNS'),
(687, 'KIT', 687, 'VNS'),
(688, 'KIT', 688, 'VNS'),
(689, 'KIT', 689, 'VNS'),
(690, 'KIT', 690, 'VNS'),
(691, 'KIT', 691, 'VNS'),
(692, 'KIT', 692, 'VNS'),
(693, 'KIT', 693, 'VNS'),
(694, 'KIT', 694, 'VNS'),
(695, 'KIT', 695, 'VNS'),
(696, 'KIT', 696, 'VNS'),
(697, 'KIT', 697, 'VNS'),
(698, 'KIT', 698, 'VNS'),
(699, 'KIT', 699, 'VNS'),
(700, 'KIT', 700, 'VNS'),
(701, 'KIT', 701, 'VNS'),
(702, 'KIT', 702, 'VNS'),
(703, 'KIT', 703, 'VNS'),
(704, 'KIT', 704, 'VNS'),
(705, 'KIT', 705, 'VNS'),
(706, 'KIT', 706, 'VNS'),
(707, 'KIT', 707, 'VNS'),
(708, 'KIT', 708, 'VNS'),
(709, 'KIT', 709, 'VNS'),
(710, 'KIT', 710, 'VNS'),
(711, 'KIT', 711, 'VNS'),
(712, 'KIT', 712, 'VNS'),
(713, 'KIT', 713, 'VNS'),
(714, 'KIT', 714, 'VNS'),
(715, 'KIT', 715, 'VNS'),
(716, 'KIT', 716, 'VNS'),
(717, 'KIT', 717, 'VNS'),
(718, 'KIT', 718, 'VNS'),
(719, 'KIT', 719, 'VNS'),
(720, 'KIT', 720, 'VNS'),
(721, 'KIT', 721, 'VNS'),
(722, 'KIT', 722, 'VNS'),
(723, 'KIT', 723, 'VNS'),
(724, 'KIT', 724, 'VNS'),
(725, 'KIT', 725, 'VNS'),
(726, 'KIT', 726, 'VNS'),
(727, 'KIT', 727, 'VNS'),
(728, 'KIT', 728, 'VNS'),
(729, 'KIT', 729, 'VNS'),
(730, 'KIT', 730, 'VNS'),
(731, 'KIT', 731, 'VNS'),
(732, 'KIT', 732, 'VNS'),
(733, 'KIT', 733, 'VNS'),
(734, 'KIT', 734, 'VNS'),
(735, 'KIT', 735, 'VNS'),
(736, 'KIT', 736, 'VNS'),
(737, 'KIT', 737, 'VNS'),
(738, 'KIT', 738, 'VNS'),
(739, 'KIT', 739, 'VNS'),
(740, 'KIT', 740, 'VNS'),
(741, 'KIT', 741, 'VNS'),
(742, 'KIT', 742, 'VNS'),
(743, 'KIT', 743, 'VNS'),
(744, 'KIT', 744, 'VNS'),
(745, 'KIT', 745, 'VNS'),
(746, 'KIT', 746, 'VNS'),
(747, 'KIT', 747, 'VNS'),
(748, 'KIT', 748, 'VNS'),
(749, 'KIT', 749, 'VNS'),
(750, 'KIT', 750, 'VNS'),
(751, 'KIT', 751, 'VNS'),
(752, 'KIT', 752, 'VNS'),
(753, 'KIT', 753, 'VNS'),
(754, 'KIT', 754, 'VNS'),
(755, 'KIT', 755, 'VNS'),
(756, 'KIT', 756, 'VNS'),
(757, 'KIT', 757, 'VNS'),
(758, 'KIT', 758, 'VNS'),
(759, 'KIT', 759, 'VNS'),
(760, 'KIT', 760, 'VNS'),
(761, 'KIT', 761, 'VNS'),
(762, 'KIT', 762, 'VNS'),
(763, 'KIT', 763, 'VNS'),
(764, 'KIT', 764, 'VNS'),
(765, 'KIT', 765, 'VNS'),
(766, 'KIT', 766, 'VNS'),
(767, 'KIT', 767, 'VNS'),
(768, 'KIT', 768, 'VNS'),
(769, 'KIT', 769, 'VNS'),
(770, 'KIT', 770, 'VNS'),
(771, 'KIT', 771, 'VNS'),
(772, 'KIT', 772, 'VNS'),
(773, 'KIT', 773, 'VNS'),
(774, 'KIT', 774, 'VNS'),
(775, 'KIT', 775, 'VNS'),
(776, 'KIT', 776, 'VNS'),
(777, 'KIT', 777, 'VNS'),
(778, 'KIT', 778, 'VNS'),
(779, 'KIT', 779, 'VNS'),
(780, 'KIT', 780, 'VNS'),
(781, 'KIT', 781, 'VNS'),
(782, 'KIT', 782, 'VNS'),
(783, 'KIT', 783, 'VNS'),
(784, 'KIT', 784, 'VNS'),
(785, 'KIT', 785, 'VNS'),
(786, 'KIT', 786, 'VNS'),
(787, 'KIT', 787, 'VNS'),
(788, 'KIT', 788, 'VNS'),
(789, 'KIT', 789, 'VNS'),
(790, 'KIT', 790, 'VNS'),
(791, 'KIT', 791, 'VNS'),
(792, 'KIT', 792, 'VNS'),
(793, 'KIT', 793, 'VNS'),
(794, 'KIT', 794, 'VNS'),
(795, 'KIT', 795, 'VNS'),
(796, 'KIT', 796, 'VNS'),
(797, 'KIT', 797, 'VNS'),
(798, 'KIT', 798, 'VNS'),
(799, 'KIT', 799, 'VNS'),
(800, 'KIT', 800, 'VNS'),
(801, 'KIT', 801, 'VNS'),
(802, 'KIT', 802, 'VNS'),
(803, 'KIT', 803, 'VNS'),
(804, 'KIT', 804, 'VNS'),
(805, 'KIT', 805, 'VNS'),
(806, 'KIT', 806, 'VNS'),
(807, 'KIT', 807, 'VNS'),
(808, 'KIT', 808, 'VNS'),
(809, 'KIT', 809, 'VNS'),
(810, 'KIT', 810, 'VNS'),
(811, 'KIT', 811, 'VNS'),
(812, 'KIT', 812, 'VNS'),
(813, 'KIT', 813, 'VNS'),
(814, 'KIT', 814, 'VNS'),
(815, 'KIT', 815, 'VNS'),
(816, 'KIT', 816, 'VNS'),
(817, 'KIT', 817, 'VNS'),
(818, 'KIT', 818, 'VNS'),
(819, 'KIT', 819, 'VNS'),
(820, 'KIT', 820, 'VNS'),
(821, 'KIT', 821, 'VNS'),
(822, 'KIT', 822, 'VNS'),
(823, 'KIT', 823, 'VNS'),
(824, 'KIT', 824, 'VNS'),
(825, 'KIT', 825, 'VNS'),
(826, 'KIT', 826, 'VNS'),
(827, 'KIT', 827, 'VNS'),
(828, 'KIT', 828, 'VNS'),
(829, 'KIT', 829, 'VNS'),
(830, 'KIT', 830, 'VNS'),
(831, 'KIT', 831, 'VNS'),
(832, 'KIT', 832, 'VNS'),
(833, 'KIT', 833, 'VNS'),
(834, 'KIT', 834, 'VNS'),
(835, 'KIT', 835, 'VNS'),
(836, 'KIT', 836, 'VNS'),
(837, 'KIT', 837, 'VNS'),
(838, 'KIT', 838, 'VNS'),
(839, 'KIT', 839, 'VNS'),
(840, 'KIT', 840, 'VNS'),
(841, 'KIT', 841, 'VNS'),
(842, 'KIT', 842, 'VNS'),
(843, 'KIT', 843, 'VNS'),
(844, 'KIT', 844, 'VNS'),
(845, 'KIT', 845, 'VNS'),
(846, 'KIT', 846, 'VNS'),
(847, 'KIT', 847, 'VNS'),
(848, 'KIT', 848, 'VNS'),
(849, 'KIT', 849, 'VNS'),
(850, 'KIT', 850, 'VNS'),
(851, 'KIT', 851, 'VNS'),
(852, 'KIT', 852, 'VNS'),
(853, 'KIT', 853, 'VNS'),
(854, 'KIT', 854, 'VNS'),
(855, 'KIT', 855, 'VNS'),
(856, 'KIT', 856, 'VNS'),
(857, 'KIT', 857, 'VNS'),
(858, 'KIT', 858, 'VNS'),
(859, 'KIT', 859, 'VNS'),
(860, 'KIT', 860, 'VNS'),
(861, 'KIT', 861, 'VNS'),
(862, 'KIT', 862, 'VNS'),
(863, 'KIT', 863, 'VNS'),
(864, 'KIT', 864, 'VNS'),
(865, 'KIT', 865, 'VNS'),
(866, 'KIT', 866, 'VNS'),
(867, 'KIT', 867, 'VNS'),
(868, 'KIT', 868, 'VNS'),
(869, 'KIT', 869, 'VNS'),
(870, 'KIT', 870, 'VNS'),
(871, 'KIT', 871, 'VNS'),
(872, 'KIT', 872, 'VNS'),
(873, 'KIT', 873, 'VNS'),
(874, 'KIT', 874, 'VNS'),
(875, 'KIT', 875, 'VNS'),
(876, 'KIT', 876, 'VNS'),
(877, 'KIT', 877, 'VNS'),
(878, 'KIT', 878, 'VNS'),
(879, 'KIT', 879, 'VNS'),
(880, 'KIT', 880, 'VNS'),
(881, 'KIT', 881, 'VNS'),
(882, 'KIT', 882, 'VNS'),
(883, 'KIT', 883, 'VNS'),
(884, 'KIT', 884, 'VNS'),
(885, 'KIT', 885, 'VNS'),
(886, 'KIT', 886, 'VNS'),
(887, 'KIT', 887, 'VNS'),
(888, 'KIT', 888, 'VNS'),
(889, 'KIT', 889, 'VNS'),
(890, 'KIT', 890, 'VNS'),
(891, 'KIT', 891, 'VNS'),
(892, 'KIT', 892, 'VNS'),
(893, 'KIT', 893, 'VNS'),
(894, 'KIT', 894, 'VNS'),
(895, 'KIT', 895, 'VNS'),
(896, 'KIT', 896, 'VNS'),
(897, 'KIT', 897, 'VNS'),
(898, 'KIT', 898, 'VNS'),
(899, 'KIT', 899, 'VNS'),
(900, 'KIT', 900, 'VNS'),
(901, 'KIT', 901, 'VNS'),
(902, 'KIT', 902, 'VNS'),
(903, 'KIT', 903, 'VNS'),
(904, 'KIT', 904, 'VNS'),
(905, 'KIT', 905, 'VNS'),
(906, 'KIT', 906, 'VNS'),
(907, 'KIT', 907, 'VNS'),
(908, 'KIT', 908, 'VNS'),
(909, 'KIT', 909, 'VNS'),
(910, 'KIT', 910, 'VNS'),
(911, 'KIT', 911, 'VNS'),
(912, 'KIT', 912, 'VNS'),
(913, 'KIT', 913, 'VNS'),
(914, 'KIT', 914, 'VNS'),
(915, 'KIT', 915, 'VNS'),
(916, 'KIT', 916, 'VNS'),
(917, 'KIT', 917, 'VNS'),
(918, 'KIT', 918, 'VNS'),
(919, 'KIT', 919, 'VNS'),
(920, 'KIT', 920, 'VNS'),
(921, 'KIT', 921, 'VNS'),
(922, 'KIT', 922, 'VNS'),
(923, 'KIT', 923, 'VNS'),
(924, 'KIT', 924, 'VNS'),
(925, 'KIT', 925, 'VNS'),
(926, 'KIT', 926, 'VNS'),
(927, 'KIT', 927, 'VNS'),
(928, 'KIT', 928, 'VNS'),
(929, 'KIT', 929, 'VNS'),
(930, 'KIT', 930, 'VNS'),
(931, 'KIT', 931, 'VNS'),
(932, 'KIT', 932, 'VNS'),
(933, 'KIT', 933, 'VNS'),
(934, 'KIT', 934, 'VNS'),
(935, 'KIT', 935, 'VNS'),
(936, 'KIT', 936, 'VNS'),
(937, 'KIT', 937, 'VNS'),
(938, 'KIT', 938, 'VNS'),
(939, 'KIT', 939, 'VNS'),
(940, 'KIT', 940, 'VNS'),
(941, 'KIT', 941, 'VNS'),
(942, 'KIT', 942, 'VNS'),
(943, 'KIT', 943, 'VNS'),
(944, 'KIT', 944, 'VNS'),
(945, 'KIT', 945, 'VNS'),
(946, 'KIT', 946, 'VNS'),
(947, 'KIT', 947, 'VNS'),
(948, 'KIT', 948, 'VNS'),
(949, 'KIT', 949, 'VNS'),
(950, 'KIT', 950, 'VNS'),
(951, 'KIT', 951, 'VNS'),
(952, 'KIT', 952, 'VNS'),
(953, 'KIT', 953, 'VNS'),
(954, 'KIT', 954, 'VNS'),
(955, 'KIT', 955, 'VNS'),
(956, 'KIT', 956, 'VNS'),
(957, 'KIT', 957, 'VNS'),
(958, 'KIT', 958, 'VNS'),
(959, 'KIT', 959, 'VNS'),
(960, 'KIT', 960, 'VNS'),
(961, 'KIT', 961, 'VNS'),
(962, 'KIT', 962, 'VNS'),
(963, 'KIT', 963, 'VNS'),
(964, 'KIT', 964, 'VNS'),
(965, 'KIT', 965, 'VNS'),
(966, 'KIT', 966, 'VNS'),
(967, 'KIT', 967, 'VNS'),
(968, 'KIT', 968, 'VNS'),
(969, 'KIT', 969, 'VNS'),
(970, 'KIT', 970, 'VNS'),
(971, 'KIT', 971, 'VNS'),
(972, 'KIT', 972, 'VNS'),
(973, 'KIT', 973, 'VNS'),
(974, 'KIT', 974, 'VNS'),
(975, 'KIT', 975, 'VNS'),
(976, 'KIT', 976, 'VNS'),
(977, 'KIT', 977, 'VNS'),
(978, 'KIT', 978, 'VNS'),
(979, 'KIT', 979, 'VNS'),
(980, 'KIT', 980, 'VNS'),
(981, 'KIT', 981, 'VNS'),
(982, 'KIT', 982, 'VNS'),
(983, 'KIT', 983, 'VNS'),
(984, 'KIT', 984, 'VNS'),
(985, 'KIT', 985, 'VNS'),
(986, 'KIT', 986, 'VNS'),
(987, 'KIT', 987, 'VNS'),
(988, 'KIT', 988, 'VNS'),
(989, 'KIT', 989, 'VNS'),
(990, 'KIT', 990, 'VNS'),
(991, 'KIT', 991, 'VNS'),
(992, 'KIT', 992, 'VNS'),
(993, 'KIT', 993, 'VNS'),
(994, 'KIT', 994, 'VNS'),
(995, 'KIT', 995, 'VNS'),
(996, 'KIT', 996, 'VNS'),
(997, 'KIT', 997, 'VNS'),
(998, 'KIT', 998, 'VNS'),
(999, 'KIT', 999, 'VNS'),
(1000, 'KIT', 1000, 'VNS'),
(1001, 'KIT', 1001, 'VNS'),
(1002, 'KIT', 1002, 'VNS'),
(1003, 'KIT', 1003, 'VNS'),
(1004, 'KIT', 1004, 'VNS'),
(1005, 'KIT', 1005, 'VNS'),
(1006, 'KIT', 1006, 'VNS'),
(1007, 'KIT', 1007, 'VNS'),
(1008, 'KIT', 1008, 'VNS'),
(1009, 'KIT', 1009, 'VNS'),
(1010, 'KIT', 1010, 'VNS'),
(1011, 'KIT', 1011, 'VNS'),
(1012, 'KIT', 1012, 'VNS'),
(1013, 'KIT', 1013, 'VNS'),
(1014, 'KIT', 1014, 'VNS'),
(1015, 'KIT', 1015, 'VNS'),
(1016, 'KIT', 1016, 'VNS'),
(1017, 'KIT', 1017, 'VNS'),
(1018, 'KIT', 1018, 'VNS'),
(1019, 'KIT', 1019, 'VNS'),
(1020, 'KIT', 1020, 'VNS'),
(1021, 'KIT', 1021, 'VNS'),
(1022, 'KIT', 1022, 'VNS'),
(1023, 'KIT', 1023, 'VNS'),
(1024, 'KIT', 1024, 'VNS'),
(1025, 'KIT', 1025, 'VNS'),
(1026, 'KIT', 1026, 'VNS'),
(1027, 'KIT', 1027, 'VNS'),
(1028, 'KIT', 1028, 'VNS'),
(1029, 'KIT', 1029, 'VNS'),
(1030, 'KIT', 1030, 'VNS'),
(1031, 'KIT', 1031, 'VNS'),
(1032, 'KIT', 1032, 'VNS'),
(1033, 'KIT', 1033, 'VNS'),
(1034, 'KIT', 1034, 'VNS'),
(1035, 'KIT', 1035, 'VNS'),
(1036, 'KIT', 1036, 'VNS'),
(1037, 'KIT', 1037, 'VNS'),
(1038, 'KIT', 1038, 'VNS'),
(1039, 'KIT', 1039, 'VNS'),
(1040, 'KIT', 1040, 'VNS'),
(1041, 'KIT', 1041, 'VNS'),
(1042, 'KIT', 1042, 'VNS'),
(1043, 'KIT', 1043, 'VNS'),
(1044, 'KIT', 1044, 'VNS'),
(1045, 'KIT', 1045, 'VNS'),
(1046, 'KIT', 1046, 'VNS'),
(1047, 'KIT', 1047, 'VNS'),
(1048, 'KIT', 1048, 'VNS'),
(1049, 'KIT', 1049, 'VNS'),
(1050, 'KIT', 1050, 'VNS'),
(1051, 'KIT', 1051, 'VNS'),
(1052, 'KIT', 1052, 'VNS'),
(1053, 'KIT', 1053, 'VNS'),
(1054, 'KIT', 1054, 'VNS'),
(1055, 'KIT', 1055, 'VNS'),
(1056, 'KIT', 1056, 'VNS'),
(1057, 'KIT', 1057, 'VNS'),
(1058, 'KIT', 1058, 'VNS'),
(1059, 'KIT', 1059, 'VNS'),
(1060, 'KIT', 1060, 'VNS'),
(1061, 'KIT', 1061, 'VNS'),
(1062, 'KIT', 1062, 'VNS'),
(1063, 'KIT', 1063, 'VNS'),
(1064, 'KIT', 1064, 'VNS'),
(1065, 'KIT', 1065, 'VNS'),
(1066, 'KIT', 1066, 'VNS'),
(1067, 'KIT', 1067, 'VNS'),
(1068, 'KIT', 1068, 'VNS'),
(1069, 'KIT', 1069, 'VNS'),
(1070, 'KIT', 1070, 'VNS'),
(1071, 'KIT', 1071, 'VNS'),
(1072, 'KIT', 1072, 'VNS'),
(1073, 'KIT', 1073, 'VNS'),
(1074, 'KIT', 1074, 'VNS'),
(1075, 'KIT', 1075, 'VNS'),
(1076, 'KIT', 1076, 'VNS'),
(1077, 'KIT', 1077, 'VNS'),
(1078, 'KIT', 1078, 'VNS'),
(1079, 'KIT', 1079, 'VNS'),
(1080, 'KIT', 1080, 'VNS'),
(1081, 'KIT', 1081, 'VNS'),
(1082, 'KIT', 1082, 'VNS'),
(1083, 'KIT', 1083, 'VNS'),
(1084, 'KIT', 1084, 'VNS'),
(1085, 'KIT', 1085, 'VNS'),
(1086, 'KIT', 1086, 'VNS'),
(1087, 'KIT', 1087, 'VNS'),
(1088, 'KIT', 1088, 'VNS'),
(1089, 'KIT', 1089, 'VNS'),
(1090, 'KIT', 1090, 'VNS'),
(1091, 'KIT', 1091, 'VNS'),
(1092, 'KIT', 1092, 'VNS'),
(1093, 'KIT', 1093, 'VNS'),
(1094, 'KIT', 1094, 'VNS'),
(1095, 'KIT', 1095, 'VNS'),
(1096, 'KIT', 1096, 'VNS'),
(1097, 'KIT', 1097, 'VNS'),
(1098, 'KIT', 1098, 'VNS'),
(1099, 'KIT', 1099, 'VNS'),
(1100, 'KIT', 1100, 'VNS'),
(1101, 'KIT', 1101, 'VNS');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `book_title` varchar(255) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `author_2` varchar(255) DEFAULT NULL,
  `author_3` varchar(255) DEFAULT NULL,
  `author_4` varchar(255) DEFAULT NULL,
  `author_5` varchar(255) DEFAULT NULL,
  `book_pub` varchar(255) DEFAULT NULL,
  `publisher_name` varchar(255) DEFAULT NULL,
  `isbn` varchar(50) DEFAULT NULL,
  `copyright_year` varchar(10) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `book_barcode` varchar(100) NOT NULL,
  `book_image` varchar(255) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `remarks` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `book_title`, `category`, `author`, `author_2`, `author_3`, `author_4`, `author_5`, `book_pub`, `publisher_name`, `isbn`, `copyright_year`, `status`, `book_barcode`, `book_image`, `date_added`, `remarks`) VALUES
(1097, 'Omnis quasi voluptat', 'CSE', 'Iste laborum Laudan', 'Eu dolor sunt enim ', 'Veritatis velit qui ', 'Quaerat minim ration', 'Odit placeat aut do', 'Est nemo sit accus', 'Wade Dawson', 'Quasi quibusdam magn', '1990', 'New', 'KIT1097VNS', 'hacker-2300772_1920.jpg', '2026-01-21 17:58:52', 'Available'),
(1099, 'Ut voluptates atque ', 'BBA', 'Iste laborum Laudan', 'Est error ex omnis n', 'Quia explicabo Prae', 'Consequuntur ut sed ', 'Porro voluptatem de', 'Quaerat velit culpa ', 'Gareth Hahn', 'Vitae illum consequ', '2004', 'Lost', 'KIT1099VNS', 'WIN_20250704_20_51_21_Pro.jpg', '2026-01-21 18:08:38', 'Not Available'),
(1100, 'Ut voluptates atque ', 'BBA', 'Iste laborum Laudan', 'Est error ex omnis n', 'Quia explicabo Prae', 'Consequuntur ut sed ', 'Porro voluptatem de', 'Quaerat velit culpa ', 'Gareth Hahn', 'Vitae illum consequ', '2004', 'Lost', 'KIT1100VNS', 'WIN_20250704_20_51_21_Pro.jpg', '2026-01-21 18:08:38', 'Not Available'),
(1101, 'Ut voluptates atque ', 'BBA', 'Iste laborum Laudan', 'Est error ex omnis n', 'Quia explicabo Prae', 'Consequuntur ut sed ', 'Porro voluptatem de', 'Quaerat velit culpa ', 'Gareth Hahn', 'Vitae illum consequ', '2004', 'Lost', 'KIT1101VNS', 'WIN_20250704_20_51_21_Pro.jpg', '2026-01-21 18:08:38', 'Not Available');

-- --------------------------------------------------------

--
-- Table structure for table `borrow_book`
--

CREATE TABLE `borrow_book` (
  `borrow_book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date_borrowed` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `date_returned` datetime DEFAULT NULL,
  `borrowed_status` varchar(20) DEFAULT NULL,
  `book_penalty` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrow_book`
--

INSERT INTO `borrow_book` (`borrow_book_id`, `user_id`, `book_id`, `date_borrowed`, `due_date`, `date_returned`, `borrowed_status`, `book_penalty`) VALUES
(1, 1, 1097, '2026-01-29 04:11:25', '2026-02-14 04:11:25', '2026-01-29 04:11:27', 'returned', 'No Penalty'),
(2, 1, 1097, '2026-02-05 16:18:39', '2026-02-21 16:18:39', '2026-02-05 16:18:42', 'returned', 'No Penalty');

-- --------------------------------------------------------

--
-- Table structure for table `penalty`
--

CREATE TABLE `penalty` (
  `penalty_id` int(11) NOT NULL,
  `penalty_amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penalty`
--

INSERT INTO `penalty` (`penalty_id`, `penalty_amount`) VALUES
(1, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `report_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `detail_action` varchar(100) NOT NULL,
  `date_transaction` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`report_id`, `book_id`, `user_id`, `admin_name`, `detail_action`, `date_transaction`) VALUES
(1, 1097, 1, 'Daniel Kish', 'Borrowed Book', '2026-01-28 22:41:27'),
(2, 1097, 1, 'Daniel  Kish', 'Returned Book', '2026-01-28 22:41:31'),
(3, 1097, 1, 'Daniel Kish', 'Borrowed Book', '2026-02-05 10:48:42'),
(4, 1097, 1, 'Daniel  Kish', 'Returned Book', '2026-02-05 10:48:49');

-- --------------------------------------------------------

--
-- Table structure for table `return_book`
--

CREATE TABLE `return_book` (
  `return_book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date_borrowed` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `date_returned` datetime NOT NULL,
  `book_penalty` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `return_book`
--

INSERT INTO `return_book` (`return_book_id`, `user_id`, `book_id`, `date_borrowed`, `due_date`, `date_returned`, `book_penalty`) VALUES
(1, 1, 1097, '2026-01-29 04:11:25', '2026-02-14 04:11:25', '2026-01-29 04:11:31', 'No Penalty'),
(2, 1, 1097, '2026-02-05 16:18:39', '2026-02-21 16:18:39', '2026-02-05 16:18:49', 'No Penalty');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `student_id`, `first_name`, `last_name`, `contact`, `gender`, `address`, `type`, `branch`, `email`, `password`, `user_added`) VALUES
(1, '18', 'Audra', 'Aguilar', '8971231231', 'Female', 'Scott', 'Teacher', 'MBA', 'nuja@mailinator.com', '$2y$10$lNiX2lkEW5b5gFSh2wYwlufjg7DfLCfvFotlX.0lp0Xdva8o6qode', '2026-01-28 20:51:11');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `middlename` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `admin_type` varchar(20) DEFAULT NULL,
  `date_log` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `allowed_book`
--
ALTER TABLE `allowed_book`
  ADD PRIMARY KEY (`allowed_book_id`);

--
-- Indexes for table `allowed_days`
--
ALTER TABLE `allowed_days`
  ADD PRIMARY KEY (`allowed_days_id`);

--
-- Indexes for table `barcode`
--
ALTER TABLE `barcode`
  ADD PRIMARY KEY (`barcode_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `borrow_book`
--
ALTER TABLE `borrow_book`
  ADD PRIMARY KEY (`borrow_book_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `penalty`
--
ALTER TABLE `penalty`
  ADD PRIMARY KEY (`penalty_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `return_book`
--
ALTER TABLE `return_book`
  ADD PRIMARY KEY (`return_book_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `student_id` (`student_id`),
  ADD UNIQUE KEY `contact` (`contact`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `allowed_book`
--
ALTER TABLE `allowed_book`
  MODIFY `allowed_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `allowed_days`
--
ALTER TABLE `allowed_days`
  MODIFY `allowed_days_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `barcode`
--
ALTER TABLE `barcode`
  MODIFY `barcode_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1102;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1102;

--
-- AUTO_INCREMENT for table `borrow_book`
--
ALTER TABLE `borrow_book`
  MODIFY `borrow_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `penalty`
--
ALTER TABLE `penalty`
  MODIFY `penalty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `return_book`
--
ALTER TABLE `return_book`
  MODIFY `return_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
