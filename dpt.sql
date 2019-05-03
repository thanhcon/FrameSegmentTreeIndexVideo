-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 03, 2019 lúc 07:50 PM
-- Phiên bản máy phục vụ: 10.1.36-MariaDB
-- Phiên bản PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dpt`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detailobject`
--

CREATE TABLE `detailobject` (
  `id_object` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nameObject` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `imageObject` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `objectframe`
--

CREATE TABLE `objectframe` (
  `id` int(11) NOT NULL,
  `nameObject` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `frameStart` int(100) NOT NULL,
  `frameEnd` int(100) NOT NULL,
  `idVideo` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `objectframe`
--

INSERT INTO `objectframe` (`id`, `nameObject`, `frameStart`, `frameEnd`, `idVideo`) VALUES
(1, 'cat', 0, 743, 1),
(2, 'shoppingcart', 747, 792, 1),
(3, 'salesman', 766, 792, 1),
(4, 'cat', 793, 894, 1),
(5, 'cat', 905, 961, 1),
(6, 'paper', 919, 957, 1),
(7, 'salesman', 974, 998, 1),
(8, 'cat', 990, 1066, 1),
(9, 'paper', 1022, 1091, 1),
(10, 'cat', 1108, 1320, 1),
(11, 'salesman', 1108, 1217, 1),
(12, 'shoppingcart', 1108, 1217, 1),
(13, 'paper', 1108, 1217, 1),
(14, 'cat', 1331, 1512, 1),
(15, 'salesman', 1331, 1389, 1),
(16, 'helmet', 1392, 1512, 1),
(17, 'salesman', 1393, 1459, 1),
(18, 'shoppingcart', 1513, 1801, 1),
(19, 'cat', 1531, 1801, 1),
(20, 'cat', 1899, 2576, 1),
(21, 'bread', 1989, 2513, 1),
(22, 'dog', 2523, 2612, 1),
(23, 'bread', 2525, 2583, 1),
(24, 'cat', 2612, 2962, 1),
(25, 'dog', 2644, 2850, 1),
(26, 'mouse', 2962, 3758, 1),
(27, 'dog ', 2993, 3080, 1),
(28, 'dog ', 3438, 3566, 1),
(29, 'money', 3536, 3694, 1),
(30, 'dog', 3694, 3748, 1),
(31, 'people', 3718, 3833, 1),
(32, 'cat', 3834, 4328, 1),
(33, 'person', 3837, 3897, 1),
(34, 'shoppingcart', 3834, 3957, 1),
(35, 'instrument', 3965, 4328, 1),
(36, 'person', 3957, 4232, 1),
(37, 'speaker', 4328, 4670, 1),
(38, 'cat', 4418, 4767, 1),
(39, 'instrument', 4418, 4767, 1),
(40, 'cat', 4771, 5109, 1),
(41, 'speaker', 4771, 5109, 1),
(42, 'people', 4771, 5109, 1),
(43, 'mouse', 5109, 5223, 1),
(44, 'money', 5109, 5158, 1),
(45, 'cat ', 5224, 5288, 1),
(46, 'speaker', 5224, 5288, 1),
(47, 'people', 5252, 5296, 1),
(48, 'cat', 5296, 5444, 1),
(49, 'people', 5309, 5444, 1),
(50, 'mouse', 5444, 5498, 1),
(51, 'speaker', 5444, 5498, 1),
(52, 'people', 5444, 5498, 1),
(53, 'cat', 5498, 5567, 1),
(54, 'mouse', 5567, 5639, 1),
(55, 'speaker', 5567, 5639, 1),
(56, 'cat', 5639, 5759, 1),
(57, 'people', 5671, 5759, 1),
(58, 'speaker', 5671, 5759, 1),
(59, 'mouse', 5759, 5801, 1),
(60, 'cat', 5807, 5874, 1),
(62, 'cat', 0, 60, 2),
(63, 'mouse', 60, 100, 2),
(64, 'cat', 100, 220, 2),
(65, 'speaker', 148, 675, 2),
(66, 'mouse', 148, 718, 2),
(67, 'cat', 280, 462, 2),
(68, 'cat', 505, 539, 2),
(69, 'cat', 556, 749, 2),
(70, 'speaker', 721, 794, 2),
(71, 'mouse', 721, 794, 2),
(72, 'cat', 794, 914, 2),
(73, 'mouse', 844, 1014, 2),
(74, 'speaker', 844, 1215, 2),
(75, 'cat', 946, 1030, 2),
(76, 'cat', 1052, 1132, 2),
(77, 'mouse', 1030, 1215, 2),
(78, 'cat', 1215, 1292, 2),
(79, 'speaker', 1269, 1324, 2),
(80, 'mouse', 1269, 1324, 2),
(81, 'cat', 1324, 1472, 2),
(82, 'circle', 1472, 1612, 2),
(83, 'mouse', 1498, 1612, 2),
(84, 'people', 1612, 1660, 2),
(85, 'mouse', 1612, 1660, 2),
(86, 'money', 1612, 1660, 2),
(87, 'cat', 1660, 1957, 2),
(88, 'people', 1958, 2006, 2),
(89, 'mouse', 1958, 2006, 2),
(90, 'money', 1958, 2006, 2),
(91, 'cat', 2006, 2043, 2),
(92, 'cat', 2068, 2148, 2),
(93, 'cat', 2161, 2337, 2),
(94, 'people', 2314, 2409, 2),
(95, 'mouse', 2409, 2500, 2),
(96, 'circle', 2409, 2500, 2),
(97, 'cat', 2500, 2530, 2),
(98, 'mouse', 2530, 2572, 2),
(99, 'circle', 2530, 2572, 2),
(100, 'cat', 2572, 2605, 2),
(101, 'mouse', 2605, 2660, 2),
(102, 'car', 2661, 2685, 2),
(103, 'engineer', 2661, 2685, 2),
(104, 'people', 2661, 2685, 2),
(105, 'piano', 2676, 2706, 2),
(106, 'mouse', 2706, 2730, 2),
(107, 'mouse', 2766, 2850, 2),
(108, 'piano', 2850, 2898, 2),
(109, 'cat', 2898, 2927, 2),
(110, 'mouse', 2927, 2988, 2),
(111, 'piano', 2988, 3016, 2),
(112, 'cat', 3025, 3066, 2),
(113, 'cat', 3075, 3084, 2),
(114, 'cat', 3144, 3376, 2),
(115, 'mouse', 3187, 3376, 2),
(116, 'people', 3376, 3440, 2),
(117, 'money', 3376, 3527, 2),
(118, 'cat ', 3440, 3527, 2),
(119, 'mouse', 3440, 3527, 2),
(120, 'cat', 3350, 3675, 2),
(121, 'chicken', 3350, 3675, 2),
(122, 'egg', 3350, 3787, 2),
(123, 'mouse', 3976, 4530, 2),
(124, 'mouse', 4534, 4602, 2),
(125, 'roadrepair', 4603, 4683, 2),
(126, 'people', 4603, 4630, 2),
(127, 'women', 4603, 4627, 2),
(128, 'car', 4619, 4665, 2),
(129, 'dog', 4625, 4683, 2),
(130, 'men', 4642, 4668, 2),
(131, 'car', 4656, 4683, 2),
(132, 'mouse', 4683, 5016, 2),
(133, 'cars', 5080, 5136, 2),
(134, 'mouse', 5086, 5122, 2),
(135, 'car', 5148, 5220, 2),
(136, 'mouse', 5148, 5220, 2),
(137, 'car', 5249, 5264, 2),
(138, 'mouse', 5250, 5268, 2),
(139, 'car', 5404, 5455, 2),
(140, 'mouse', 5404, 5474, 2),
(141, 'house', 5582, 5613, 2),
(142, 'cat', 5614, 5714, 2),
(143, 'cat', 5744, 5923, 2),
(144, 'cat', 6045, 6247, 2),
(145, 'house', 6247, 6526, 2),
(146, 'cat', 6248, 6668, 2),
(147, 'chicken', 6549, 6668, 2),
(148, 'cat', 6708, 6803, 2),
(149, 'chicken', 6738, 6803, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `objectframe1`
--

CREATE TABLE `objectframe1` (
  `id` int(11) NOT NULL,
  `nameObject` varchar(45) DEFAULT NULL,
  `frameStart` int(100) DEFAULT NULL,
  `frameEnd` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `objectframe1`
--

INSERT INTO `objectframe1` (`id`, `nameObject`, `frameStart`, `frameEnd`) VALUES
(1, 'cat', 0, 743),
(2, 'shoppingcart', 747, 792),
(3, 'salesman', 766, 792),
(4, 'cat', 793, 894),
(5, 'cat', 905, 961),
(6, 'paper', 919, 957),
(7, 'salesman', 974, 998),
(8, 'cat', 990, 1066),
(9, 'paper', 1022, 1091),
(10, 'cat', 1108, 1320),
(11, 'salesman', 1108, 1217),
(12, 'shoppingcart', 1108, 1217),
(13, 'paper', 1108, 1217),
(14, 'cat', 1331, 1512),
(15, 'salesman', 1331, 1389),
(16, 'helmet', 1392, 1512),
(17, 'salesman', 1393, 1459),
(18, 'shoppingcart', 1513, 1801),
(19, 'cat', 1531, 1801),
(20, 'cat', 1899, 2576),
(21, 'bread', 1989, 2513),
(22, 'dog', 2523, 2612),
(23, 'bread', 2525, 2583),
(24, 'cat', 2612, 2962),
(25, 'dog', 2644, 2850),
(26, 'mouse', 2962, 3758),
(27, 'dog ', 2993, 3080),
(28, 'dog ', 3438, 3566),
(29, 'money', 3536, 3694),
(30, 'dog', 3694, 3748),
(31, 'people', 3718, 3833),
(32, 'cat', 3834, 4328),
(33, 'person', 3837, 3897),
(34, 'shoppingcart', 3834, 3957),
(35, 'instrument', 3965, 4328),
(36, 'person', 3957, 4232),
(37, 'speaker', 4328, 4670),
(38, 'cat', 4418, 4767),
(39, 'instrument', 4418, 4767),
(40, 'cat', 4771, 5109),
(41, 'speaker', 4771, 5109),
(42, 'people', 4771, 5109),
(43, 'mouse', 5109, 5223),
(44, 'money', 5109, 5158),
(45, 'cat ', 5224, 5288),
(46, 'speaker', 5224, 5288),
(47, 'people', 5252, 5296),
(48, 'cat', 5296, 5444),
(49, 'people', 5309, 5444),
(50, 'mouse', 5444, 5498),
(51, 'speaker', 5444, 5498),
(52, 'people', 5444, 5498),
(53, 'cat', 5498, 5567),
(54, 'mouse', 5567, 5639),
(55, 'speaker', 5567, 5639),
(56, 'cat', 5639, 5759),
(57, 'people', 5671, 5759),
(58, 'speaker', 5671, 5759),
(59, 'mouse', 5759, 5801),
(60, 'cat', 5807, 5874);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `objectframe2`
--

CREATE TABLE `objectframe2` (
  `id` int(11) NOT NULL,
  `nameObject` varchar(45) DEFAULT NULL,
  `frameStart` int(45) DEFAULT NULL,
  `frameEnd` int(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `objectframe2`
--

INSERT INTO `objectframe2` (`id`, `nameObject`, `frameStart`, `frameEnd`) VALUES
(1, 'cat', 0, 60),
(2, 'mouse', 60, 100),
(3, 'cat', 100, 220),
(4, 'speaker', 148, 675),
(5, 'mouse', 148, 718),
(6, 'cat', 280, 462),
(7, 'cat', 505, 539),
(8, 'cat', 556, 749),
(9, 'speaker', 721, 794),
(10, 'mouse', 721, 794),
(11, 'cat', 794, 914),
(12, 'mouse', 844, 1014),
(13, 'speaker', 844, 1215),
(14, 'cat', 946, 1030),
(15, 'cat', 1052, 1132),
(16, 'mouse', 1030, 1215),
(17, 'cat', 1215, 1292),
(18, 'speaker', 1269, 1324),
(19, 'mouse', 1269, 1324),
(20, 'cat', 1324, 1472),
(21, 'circle', 1472, 1612),
(22, 'mouse', 1498, 1612),
(23, 'people', 1612, 1660),
(24, 'mouse', 1612, 1660),
(25, 'money', 1612, 1660),
(26, 'cat', 1660, 1957),
(27, 'people', 1958, 2006),
(28, 'mouse', 1958, 2006),
(29, 'money', 1958, 2006),
(30, 'cat', 2006, 2043),
(31, 'cat', 2068, 2148),
(32, 'cat', 2161, 2337),
(33, 'people', 2314, 2409),
(34, 'mouse', 2409, 2500),
(35, 'circle', 2409, 2500),
(36, 'cat', 2500, 2530),
(37, 'mouse', 2530, 2572),
(38, 'circle', 2530, 2572),
(39, 'cat', 2572, 2605),
(40, 'mouse', 2605, 2660),
(41, 'car', 2661, 2685),
(42, 'engineer', 2661, 2685),
(43, 'people', 2661, 2685),
(44, 'piano', 2676, 2706),
(45, 'mouse', 2706, 2730),
(46, 'mouse', 2766, 2850),
(47, 'piano', 2850, 2898),
(48, 'cat', 2898, 2927),
(49, 'mouse', 2927, 2988),
(50, 'piano', 2988, 3016),
(51, 'cat', 3025, 3066),
(52, 'cat', 3075, 3084),
(53, 'cat', 3144, 3376),
(54, 'mouse', 3187, 3376),
(55, 'people', 3376, 3440),
(56, 'money', 3376, 3527),
(57, 'cat ', 3440, 3527),
(58, 'mouse', 3440, 3527),
(59, 'cat', 3350, 3675),
(60, 'chicken', 3350, 3675),
(61, 'egg', 3350, 3787),
(62, 'mouse', 3976, 4530),
(63, 'mouse', 4534, 4602),
(64, 'roadrepair', 4603, 4683),
(65, 'people', 4603, 4630),
(66, 'women', 4603, 4627),
(67, 'car', 4619, 4665),
(68, 'dog', 4625, 4683),
(69, 'men', 4642, 4668),
(70, 'car', 4656, 4683),
(71, 'mouse', 4683, 5016),
(72, 'cars', 5080, 5136),
(73, 'mouse', 5086, 5122),
(74, 'car', 5148, 5220),
(75, 'mouse', 5148, 5220),
(76, 'car', 5249, 5264),
(77, 'mouse', 5250, 5268),
(78, 'car', 5404, 5455),
(80, 'mouse', 5404, 5474),
(81, 'house', 5582, 5613),
(82, 'cat', 5614, 5714),
(83, 'cat', 5744, 5923),
(84, 'cat', 6045, 6247),
(85, 'house', 6247, 6526),
(86, 'cat', 6248, 6668),
(87, 'chicken', 6549, 6668),
(88, 'cat', 6708, 6803),
(89, 'chicken', 6738, 6803);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `videocontent`
--

CREATE TABLE `videocontent` (
  `video_id` varchar(100) NOT NULL,
  `totalFrame` int(100) NOT NULL,
  `nameVideo` varchar(100) NOT NULL,
  `linkVideo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `videocontent`
--

INSERT INTO `videocontent` (`video_id`, `totalFrame`, `nameVideo`, `linkVideo`) VALUES
('1', 5875, 'tom and jerry 1', ''),
('2', 6804, 'tom and jerry 2', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `objectframe`
--
ALTER TABLE `objectframe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `objectframe1`
--
ALTER TABLE `objectframe1`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `objectframe2`
--
ALTER TABLE `objectframe2`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `videocontent`
--
ALTER TABLE `videocontent`
  ADD PRIMARY KEY (`video_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `objectframe`
--
ALTER TABLE `objectframe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT cho bảng `objectframe1`
--
ALTER TABLE `objectframe1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `objectframe2`
--
ALTER TABLE `objectframe2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
