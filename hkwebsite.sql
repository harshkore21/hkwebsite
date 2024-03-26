-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2023 at 05:57 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hkwebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_cred`
--

CREATE TABLE `admin_cred` (
  `sr_no` int(11) NOT NULL,
  `admin_name` varchar(150) NOT NULL,
  `admin_pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_cred`
--

INSERT INTO `admin_cred` (`sr_no`, `admin_name`, `admin_pass`) VALUES
(1, 'hk', '123');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `total_pay` int(11) NOT NULL,
  `room_no` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`sr_no`, `booking_id`, `room_name`, `price`, `total_pay`, `room_no`, `user_name`, `phonenum`, `address`) VALUES
(1, 1, 'Simple room', 500, 1000, NULL, 'Harsh', '1234567899', 'Home address'),
(13, 13, 'Supreme Deluxe Room', 1500, 1500, '2', 'Harsh', '1234567899', 'Home address'),
(19, 19, 'Simple room', 500, 500, NULL, 'Harsh', '1234567899', 'Home address'),
(20, 20, 'Simple room', 500, 500, '7', 'Harsh', '1234567899', 'Home address'),
(21, 21, 'Simple room', 500, 500, '8', 'Harsh', '1234567899', 'Home address'),
(22, 22, 'Simple room', 500, 500, NULL, 'Harsh', '1234567899', 'Home address'),
(23, 23, 'Simple room', 500, 500, NULL, 'Harsh', '1234567899', 'Home address'),
(24, 24, 'Simple room', 500, 500, '3', 'Harsh', '1234567899', 'Home address'),
(25, 25, 'Exclusive Room', 1000, 1000, NULL, 'Harsh', '1234567899', 'Home address'),
(26, 26, 'Exclusive Room', 1000, 1000, NULL, 'Harsh', '1234567899', 'Home address'),
(27, 27, 'Exclusive Room', 1000, 4000, '4', 'Harsh', '1234567899', 'Home address'),
(28, 28, 'Exclusive Room', 1000, 4000, NULL, 'Harsh', '1234567899', 'Home address'),
(29, 29, 'Exclusive Room', 1000, 4000, '5', 'Harsh', '1234567899', 'Home address'),
(30, 30, 'Exclusive Room', 1000, 4000, NULL, 'Harsh', '1234567899', 'Home address'),
(31, 31, 'Exclusive Room', 1000, 4000, '6', 'Harsh', '1234567899', 'Home address'),
(32, 32, 'Advance Room', 600, 600, '9', 'Harsh', '1234567899', 'Home address'),
(33, 33, 'Advance Room', 600, 600, '10', 'Harsh', '1234567899', 'Home address'),
(34, 34, 'Advance Room', 600, 600, '11', 'Harsh', '1234567899', 'Home address'),
(35, 35, 'Simple room', 500, 500, '12', 'Harsh', '1234567899', 'Home address'),
(36, 36, 'Simple room', 500, 500, NULL, 'Harsh', '1234567899', 'Home address'),
(37, 37, 'Simple room', 500, 1500, '13', 'Harsh', '1234567899', 'Home address'),
(38, 38, 'Simple room', 500, 2000, NULL, 'Harsh', '1234567899', 'Home address'),
(39, 39, 'Simple room', 500, 1500, '13', 'Harsh', '1234567899', 'Home address'),
(43, 43, 'Supreme Deluxe Room', 1500, 4500, '15', 'Harsh Kore', '8669120132', '56, KORE HOUSE, GOKHALE ROAD(N), DADAR(W)'),
(46, 46, 'Supreme Deluxe Room', 1500, 4500, NULL, 'Harsh Kore', '8669120132', '56, KORE HOUSE, GOKHALE ROAD(N), DADAR(W)'),
(57, 57, 'Penthouse', 5000, 20000, '16', 'Harsh Kore', '8669120132', '56, KORE HOUSE, GOKHALE ROAD(N), DADAR(W)'),
(58, 58, 'Simple room', 1, 4, NULL, 'Harsh', '1234567899', 'Home address');

-- --------------------------------------------------------

--
-- Table structure for table `booking_order`
--

CREATE TABLE `booking_order` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `arrival` int(11) NOT NULL DEFAULT 0,
  `refund` int(11) DEFAULT NULL,
  `booking_status` varchar(100) NOT NULL DEFAULT 'booked',
  `order_id` varchar(150) NOT NULL,
  `trans_id` varchar(200) DEFAULT NULL,
  `trans_amt` int(11) NOT NULL,
  `trans_status` varchar(100) NOT NULL DEFAULT 'pending',
  `trans_resp_msg` varchar(200) DEFAULT NULL,
  `rate_review` int(11) DEFAULT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_order`
--

INSERT INTO `booking_order` (`booking_id`, `user_id`, `room_id`, `check_in`, `check_out`, `arrival`, `refund`, `booking_status`, `order_id`, `trans_id`, `trans_amt`, `trans_status`, `trans_resp_msg`, `rate_review`, `datentime`) VALUES
(1, 8, 1, '2023-04-11', '2023-04-13', 1, NULL, 'booked', 'ORD_8811431', NULL, 1000, 'pending', NULL, 1, '2023-04-11 13:51:38'),
(13, 8, 7, '2023-04-13', '2023-04-14', 1, NULL, 'booked', 'ORD_84184134', NULL, 1500, 'pending', NULL, 1, '2023-04-12 20:19:31'),
(19, 8, 1, '2023-04-12', '2023-04-13', 0, NULL, 'payment failed', 'ORD_81406836', NULL, 500, 'pending', 'payment failed', NULL, '2023-04-12 21:54:58'),
(20, 8, 1, '2023-04-12', '2023-04-13', 1, NULL, 'booked', 'ORD_86905550', NULL, 500, 'pending', NULL, 0, '2023-04-12 21:59:50'),
(21, 8, 1, '2023-04-12', '2023-04-13', 1, NULL, 'booked', 'ORD_84883670', NULL, 500, 'pending', NULL, 1, '2023-04-12 22:00:06'),
(22, 8, 1, '2023-04-12', '2023-04-13', 0, 1, 'cancelled', 'ORD_84600427', NULL, 500, 'pending', NULL, NULL, '2023-04-12 22:17:54'),
(23, 8, 1, '2023-04-12', '2023-04-13', 0, 1, 'cancelled', 'ORD_81016766', NULL, 500, 'pending', NULL, NULL, '2023-04-12 22:44:40'),
(24, 8, 1, '2023-04-12', '2023-04-13', 1, NULL, 'booked', 'ORD_84754479', NULL, 500, 'pending', NULL, 1, '2023-04-12 22:45:44'),
(25, 8, 6, '2023-04-14', '2023-04-15', 0, 1, 'cancelled', 'ORD_83219648', NULL, 1000, 'pending', NULL, NULL, '2023-04-13 12:08:16'),
(26, 8, 6, '2023-04-13', '2023-04-14', 0, NULL, 'pending', 'ORD_88330056', NULL, 1000, 'pending', NULL, NULL, '2023-04-13 12:08:57'),
(27, 8, 6, '2023-04-16', '2023-04-20', 1, NULL, 'booked', 'ORD_88475892', NULL, 4000, 'pending', NULL, 1, '2023-04-14 22:03:17'),
(28, 8, 6, '2023-04-16', '2023-04-20', 0, NULL, 'pending', 'ORD_89491392', NULL, 4000, 'pending', NULL, NULL, '2023-04-14 22:04:34'),
(29, 8, 6, '2023-04-16', '2023-04-20', 1, NULL, 'booked', 'ORD_8794428', NULL, 4000, 'pending', NULL, 1, '2023-04-14 22:06:23'),
(30, 8, 6, '2023-04-16', '2023-04-20', 0, NULL, 'pending', 'ORD_81127434', NULL, 4000, 'pending', NULL, NULL, '2023-04-14 22:06:36'),
(31, 8, 6, '2023-04-16', '2023-04-20', 1, NULL, 'booked', 'ORD_81940030', NULL, 4000, 'pending', NULL, 1, '2023-04-14 22:15:26'),
(32, 8, 2, '2023-04-15', '2023-04-16', 1, NULL, 'booked', 'ORD_83913690', NULL, 600, 'pending', NULL, 1, '2023-04-15 13:55:46'),
(33, 8, 2, '2023-04-16', '2023-04-17', 1, NULL, 'booked', 'ORD_81853273', NULL, 600, 'pending', NULL, 1, '2023-04-15 13:56:45'),
(34, 8, 2, '2023-04-17', '2023-04-18', 1, NULL, 'booked', 'ORD_88638758', NULL, 600, 'pending', NULL, 1, '2023-04-15 13:57:12'),
(35, 8, 1, '2023-04-17', '2023-04-18', 1, NULL, 'booked', 'ORD_81357817', NULL, 500, 'pending', NULL, 1, '2023-04-17 10:12:25'),
(36, 8, 1, '2023-04-17', '2023-04-18', 0, 1, 'cancelled', 'ORD_85893153', NULL, 500, 'pending', NULL, NULL, '2023-04-17 10:15:01'),
(37, 8, 1, '2023-04-17', '2023-04-20', 1, NULL, 'booked', 'ORD_89596514', NULL, 1500, 'pending', NULL, 1, '2023-04-17 10:26:11'),
(38, 8, 1, '2023-04-18', '2023-04-22', 0, 1, 'cancelled', 'ORD_88320492', NULL, 2000, 'pending', NULL, NULL, '2023-04-17 12:50:58'),
(39, 8, 1, '2023-04-20', '2023-04-23', 1, NULL, 'booked', 'ORD_89974384', NULL, 1500, 'pending', NULL, 1, '2023-04-17 21:46:14'),
(43, 20, 7, '2023-04-24', '2023-04-27', 0, NULL, 'booked', 'ORD_204999981', NULL, 4500, 'pending', NULL, 1, '2023-04-23 22:52:16'),
(46, 20, 7, '2023-04-24', '2023-04-27', 0, 0, 'cancelled', 'ORD_209911555', NULL, 4500, 'pending', NULL, NULL, '2023-04-23 23:06:18'),
(57, 20, 8, '2023-04-24', '2023-04-28', 1, NULL, 'booked', 'ORD_209637157', NULL, 20000, 'pending', NULL, 0, '2023-04-24 22:35:11'),
(58, 8, 1, '2023-04-29', '2023-05-03', 0, 1, 'cancelled', 'ORD_85006736', NULL, 4, 'pending', NULL, NULL, '2023-04-29 15:03:45');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `sr_no` int(11) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`sr_no`, `image`) VALUES
(22, 'IMG_47558.png'),
(23, 'IMG_78191.png'),
(24, 'IMG_69908.png'),
(25, 'IMG_61407.png'),
(26, 'IMG_30642.png'),
(27, 'IMG_30938.png');

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `sr_no` int(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `gmap` varchar(200) NOT NULL,
  `pn1` bigint(20) NOT NULL,
  `pn2` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `insta` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `wa` varchar(100) NOT NULL,
  `iframe` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`sr_no`, `address`, `gmap`, `pn1`, `pn2`, `email`, `insta`, `fb`, `wa`, `iframe`) VALUES
(1, 'Shop no. 28, Shewale Complex, Elpro Chowk, Opp. SKF Housing Colony, Chinchwad, Maharashtra 411033.', 'https://goo.gl/maps/ZuYcQoeHr4wUxZm59', 911234567890, '910987654321', 'example@gmail.com', 'https://www.instagram.com/malvan_samudra/?hl=en', 'https://www.facebook.com/hotalmalvan.samudra', 'https://www.whatsapp.com/', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15122.77655909332!2d73.784473!3d18.632822!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2b9b0b572ef97:0xea34cc9020c6a271!2sHotel Malwan Samudra: Kiran Kore!5e0!3m2!1sen!2sin!4v1678894865648!5m2!1sen!2sin');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `icon`, `name`, `description`) VALUES
(19, 'IMG_85482.svg', 'Air Condition', 'AC helps you to keeping the room consistently cool even during hot weather conditions.'),
(22, 'IMG_82168.svg', 'Spa', 'Spa offers a rejuvenating experience, helping to relax and unwind the body and mind.'),
(23, 'IMG_70379.svg', 'Television', 'The TV is of high quality, providing clear and crisp visuals for an enjoyable viewing experience.'),
(24, 'IMG_44006.svg', 'Wifi', 'The Wi-Fi is fast and reliable, ensuring seamless connectivity for all your online needs.'),
(25, 'IMG_23015.svg', 'Geyser', 'The geyser is efficient in providing hot water whenever needed, ensuring a comfortable bathing experience.'),
(26, 'IMG_84931.svg', 'Heater', 'Heater is effective in providing warmth and maintaining a cozy ambiance in the room.');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`) VALUES
(19, 'Bathroom'),
(20, 'Balcony'),
(21, 'Sofa'),
(22, 'Room');

-- --------------------------------------------------------

--
-- Table structure for table `rating_review`
--

CREATE TABLE `rating_review` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(200) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating_review`
--

INSERT INTO `rating_review` (`sr_no`, `booking_id`, `room_id`, `user_id`, `rating`, `review`, `seen`, `datentime`) VALUES
(11, 29, 6, 8, 5, 'The room was a comfortable and welcoming retreat, providing a serene and relaxing ambiance for a delightful stay.', 0, '2023-04-29 19:42:34'),
(12, 37, 1, 8, 5, 'I had a delightful experience staying in the hotel room, with its clean and well-maintained ambiance, comfortable amenities, stunning view, and friendly staff.', 0, '2023-04-29 19:42:45'),
(13, 35, 1, 8, 4, 'The hotel staff was exemplary in their customer service, attending to my needs and requests with professionalism and attentiveness, making my stay in the hotel room a truly memorable experience.', 0, '2023-04-29 19:42:57'),
(14, 27, 6, 8, 4, 'The hotel room was well-appointed with convenient amenities, such as a comfortable bed, a stocked mini fridge, a coffee maker, and a flat-screen TV, ensuring a comfortable and hassle-free stay.', 0, '2023-04-29 19:43:10'),
(15, 24, 1, 8, 5, 'The hotel room was tastefully decorated, with modern furnishings and stylish accents, adding a touch of elegance and comfort to my stay. The thoughtfully chosen décor elements, including the cozy rugs', 0, '2023-04-29 19:43:51'),
(16, 21, 1, 8, 3, 'The hotel room was spotlessly clean, with fresh linens and a pristine bathroom, creating a hygienic and inviting atmosphere for a relaxing stay. Additionally, the well-maintained surroundings.', 0, '2023-04-29 19:44:07');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `area` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `adult` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `description` varchar(350) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `removed` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `area`, `price`, `quantity`, `adult`, `children`, `description`, `status`, `removed`) VALUES
(1, 'Simple room', 250, 500, 10, 4, 2, 'good room', 1, 0),
(2, 'Advance Room', 300, 600, 7, 5, 4, 'better room', 1, 0),
(3, 'us', 12, 23, 34, 45, 56, 'useme', 1, 1),
(4, 'new', 456, 567, 5, 2, 3, 'aewvt', 1, 1),
(5, 'gh', 66, 66, 66, 6, 6, 'awebtn', 0, 1),
(6, 'Exclusive Room', 500, 1000, 3, 7, 5, 'Best Room', 1, 0),
(7, 'Supreme Deluxe Room', 1000, 1500, 2, 10, 8, 'Worlds best room', 1, 0),
(8, 'Penthouse', 2500, 5000, 1, 20, 20, 'Live life like a King in our Penthouse', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_facilities`
--

CREATE TABLE `room_facilities` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `facilities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_facilities`
--

INSERT INTO `room_facilities` (`sr_no`, `room_id`, `facilities_id`) VALUES
(123, 2, 19),
(124, 2, 24),
(125, 2, 25),
(155, 6, 19),
(156, 6, 22),
(157, 6, 23),
(158, 6, 24),
(159, 6, 25),
(197, 7, 19),
(198, 7, 22),
(199, 7, 23),
(200, 7, 24),
(201, 7, 25),
(202, 7, 26),
(209, 1, 24),
(210, 1, 25);

-- --------------------------------------------------------

--
-- Table structure for table `room_features`
--

CREATE TABLE `room_features` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `features_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_features`
--

INSERT INTO `room_features` (`sr_no`, `room_id`, `features_id`) VALUES
(94, 2, 20),
(95, 2, 21),
(96, 2, 22),
(117, 6, 19),
(118, 6, 20),
(119, 6, 21),
(120, 6, 22),
(150, 7, 19),
(151, 7, 20),
(152, 7, 21),
(153, 7, 22),
(158, 1, 19),
(159, 1, 20),
(160, 1, 22);

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `thumb` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`sr_no`, `room_id`, `image`, `thumb`) VALUES
(9, 1, 'IMG_95409.jpg', 1),
(10, 2, 'IMG_12965.png', 0),
(12, 1, 'IMG_27203.png', 0),
(13, 2, 'IMG_88248.png', 1),
(14, 6, 'IMG_48532.png', 1),
(16, 7, 'IMG_24414.png', 1),
(17, 7, 'IMG_38308.png', 0),
(18, 6, 'IMG_63839.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `sr_no` int(11) NOT NULL,
  `site_title` varchar(50) NOT NULL,
  `site_about` varchar(250) NOT NULL,
  `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
(1, 'Hotel HK', 'Shop no. 28, Shewale Complex, Elpro Chowk, Opp. SKF Housing Colony, Chinchwad, Maharashtra 411033.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `team_details`
--

CREATE TABLE `team_details` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team_details`
--

INSERT INTO `team_details` (`sr_no`, `name`, `picture`) VALUES
(20, 'Mary', 'IMG_21323.jpg'),
(21, 'Chad', 'IMG_89861.jpg'),
(22, 'Rahul', 'IMG_70449.jpg'),
(23, 'Ellie', 'IMG_71386.jpg'),
(24, 'John', 'IMG_15139.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_cred`
--

CREATE TABLE `user_cred` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(120) NOT NULL,
  `phonenum` varchar(10) NOT NULL,
  `pincode` int(6) NOT NULL,
  `dob` date NOT NULL,
  `profile` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `token` varchar(200) DEFAULT NULL,
  `t_expire` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_cred`
--

INSERT INTO `user_cred` (`id`, `name`, `email`, `address`, `phonenum`, `pincode`, `dob`, `profile`, `password`, `is_verified`, `token`, `t_expire`, `status`, `datentime`) VALUES
(8, 'Harsh', 'uccash6969@gmail.com', 'Home address', '1234567899', 123456, '2023-04-09', 'IMG_66831.webp', '$2y$10$EpC/BBSmq2uf48vUzp4uTOQ5bhQBY7UL78N.8Y2iznSf/2SclvkR6', 1, NULL, NULL, 1, '2023-04-09 14:31:26'),
(20, 'Harsh Kore', 'hk.kore999@gmail.com', '56, KORE HOUSE, GOKHALE ROAD(N), DADAR(E)', '8669120133', 400021, '2023-04-20', 'IMG_42220.png', '$2y$10$TcpkPNkZBsG3vfwjleeCV.uPQ6v2NJ9vT5F6KXFPw9xwxOqHijFXW', 1, NULL, NULL, 1, '2023-04-23 22:11:54');

-- --------------------------------------------------------

--
-- Table structure for table `user_queries`
--

CREATE TABLE `user_queries` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_queries`
--

INSERT INTO `user_queries` (`sr_no`, `name`, `email`, `subject`, `message`, `datentime`, `seen`) VALUES
(24, 'Leonardo DiCaprio', 'wolf@wallstreet.com', 'Room Service', 'Is there a 24-hour room service available?', '2023-04-29 19:47:40', 0),
(25, 'James Cameron', 'avatar@billion.com', 'Breakfast included', 'Is breakfast included in the room price?', '2023-04-29 19:48:38', 0),
(26, 'Dwayne Johnson', 'therock@gmail.com', 'Gym Facility', 'Is there a gym facility available at the hotel?', '2023-04-29 19:49:42', 0),
(27, 'Christopher Nolan', 'best@director.com', 'Modify Booking', 'Is it possible to modify my booking?', '2023-04-29 19:50:15', 0),
(28, 'Robert Downey Jr', 'iam@ironman.com', 'Check-in time', 'What is the check-in and check-out time?', '2023-04-29 19:50:49', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_cred`
--
ALTER TABLE `admin_cred`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `facilities id` (`facilities_id`),
  ADD KEY `room id` (`room_id`);

--
-- Indexes for table `room_features`
--
ALTER TABLE `room_features`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `rm_id` (`room_id`),
  ADD KEY `features id` (`features_id`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `user_cred`
--
ALTER TABLE `user_cred`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_cred`
--
ALTER TABLE `admin_cred`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `booking_order`
--
ALTER TABLE `booking_order`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `rating_review`
--
ALTER TABLE `rating_review`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `room_facilities`
--
ALTER TABLE `room_facilities`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `room_features`
--
ALTER TABLE `room_features`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_details`
--
ALTER TABLE `team_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user_cred`
--
ALTER TABLE `user_cred`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD CONSTRAINT `booking_details_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`);

--
-- Constraints for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD CONSTRAINT `booking_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`),
  ADD CONSTRAINT `booking_order_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD CONSTRAINT `rating_review_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`),
  ADD CONSTRAINT `rating_review_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `rating_review_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`);

--
-- Constraints for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD CONSTRAINT `facilities id` FOREIGN KEY (`facilities_id`) REFERENCES `facilities` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `room id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_features`
--
ALTER TABLE `room_features`
  ADD CONSTRAINT `features id` FOREIGN KEY (`features_id`) REFERENCES `features` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `rm_id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `room_images_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
