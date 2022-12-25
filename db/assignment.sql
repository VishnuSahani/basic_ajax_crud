-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2022 at 02:13 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities_list`
--

CREATE TABLE `cities_list` (
  `id` int(11) NOT NULL,
  `city_name` varchar(24) DEFAULT NULL,
  `area` varchar(6) DEFAULT NULL,
  `population` varchar(11) DEFAULT NULL,
  `height` varchar(7) DEFAULT NULL,
  `population_density` varchar(19) DEFAULT NULL,
  `births_per_woman_per_year` varchar(26) DEFAULT NULL,
  `growth_rate` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities_list`
--

INSERT INTO `cities_list` (`id`, `city_name`, `area`, `population`, `height`, `population_density`, `births_per_woman_per_year`, `growth_rate`) VALUES
(1, 'Kanpur', '403.70', '29,20,067', '126', '7233.259846', '80.74', '83.98'),
(2, 'Lucknow', '2528.0', '29,01,474', '123', '1147.734968', '505.6', '84.72'),
(3, 'Ghaziabad', '133.30', '23,58,525', '214', '17693.36084', '26.66', '93.81'),
(4, 'Agra', '188.40', '17,46,467', '171', '9269.994692', '37.68', '64.61'),
(5, 'Varanasi', '1550.0', '14,35,113', '81', '925.8793548', '310', '80.31'),
(6, 'Meerut', '450.00', '14,24,908', '256', '3166.462222', '90', '78.29'),
(7, 'Allahabad', '70.50', '12,16,719', '98', '17258.42553', '14.1', '86.06'),
(8, 'Bareilly', '235.00', '9,79,933', '268', '4169.92766', '47', '70.97'),
(9, 'Aligarh', '725.00', '9,09,559', '178', '1254.564138', '145', '70.54'),
(10, 'Moradabad', '3493.0', '8,89,810', '198', '254.7409104', '698.6', '70.65'),
(11, 'Saharanpur', '3860.0', '7,03,345', '284', '182.2137306', '772', '77.94'),
(12, 'Gorakhpur', '5484.0', '6,92,519', '84', '126.2799052', '1096.8', '85.64'),
(13, 'Faizabad', '150.00', '6,42,381', '97', '4282.54', '30', '88.58'),
(14, 'Jhansi', '5024.0', '5,49,391', '285', '109.3533041', '1004.8', '84.41'),
(15, 'Muzaffarnagar', '150.00', '4,94,792', '272', '3298.613333', '30', '80.99'),
(16, 'Mathura', '3709.0', '4,54,937', '174', '122.6575896', '741.8', '77.11'),
(17, 'Budaun', '81.00', '3,69,221', '164', '4558.283951', '16.2', '83'),
(18, 'Rampur', '2367.0', '3,59,062', '288', '151.6949725', '473.4', '79.56'),
(19, 'Shahjahanpur', '4575.0', '3,56,103', '194', '77.83672131', '915', '79.81'),
(20, 'Farrukhabad-cum-Fategarh', '2279.0', '3,18,540', '167', '139.7718297', '455.8', '75.6'),
(21, 'Maunath Bhanjan', '180.00', '2,79,060', '45', '1550.333333', '36', '78.6'),
(22, 'Hapur', '660.00', '2,62,801', '216', '398.1833333', '132', '75.34'),
(23, 'Noida', '203.00', '2,59,160', '200', '1276.650246', '40.6', '88.58'),
(24, 'Etawah', '2434.0', '2,56,790', '197', '105.5012325', '486.8', '82.89'),
(25, 'Mirzapur-cum-Vindhyachal', '4521.0', '2,45,817', '80', '54.37226277', '904.2', '77.85'),
(26, 'Bulandshahr', '4441.0', '2,35,310', '195', '52.98581401', '888.2', '78.37'),
(27, 'Sambhal', '16.00', '2,21,334', '293', '13833.375', '3.2', '49.51'),
(28, 'Amroha', '2321.0', '1,97,135', '185', '84.93537268', '464.2', '63.88'),
(29, 'Hardoi', '5947.0', '1,97,046', '141', '33.13368085', '1189.4', '83.27'),
(30, 'Fatehpur', '4152.0', '1,93,801', '110', '46.67654143', '830.4', '77.69'),
(31, 'Raebareli', '4609.0', '1,91,625', '', '41.57626383', '921.8', '82.97'),
(32, 'Orai', '4565.0', '1,90,625', '131', '41.75794085', '913', '83.35'),
(33, 'Sitapur', '5743.0', '1,88,230', '138', '32.77555285', '1148.6', '83.02'),
(34, 'Bahraich', '34.00', '1,86,241', '126', '5477.676471', '6.8', '75.3'),
(35, 'Modinagar', '133.30', '1,82,811', '214', '1371.425356', '26.66', '87.03'),
(36, 'Unnao', '70.00', '1,78,681', '98', '2552.585714', '14', '83.72'),
(37, 'Jaunpur', '4038.0', '1,68,128', '82', '41.63645369', '807.6', '82.11'),
(38, 'Lakhimpur', '7680.0', '1,64,925', '7,680', '21.47460938', '1536', '83.8'),
(39, 'Hathras', '1840.0', '1,61,289', '178', '87.65706522', '368', '78.05'),
(40, 'Banda', '443.10', '1,60,432', '123', '362.0672534', '88.62', '83.61'),
(41, 'Pilibhit', '47.00', '1,60,146', '20', '3407.361702', '9.4', '72.3'),
(42, 'Mughalsarai', '16.00', '1,54,692', '65', '9668.25', '3.2', '78.08'),
(43, 'Barabanki', '3894.0', '1,54,692', '125', '39.7257319', '778.8', '81.15'),
(44, 'Khurja', '85.00', '1,42,636', '123', '1678.070588', '17', '72.75'),
(45, 'Gonda', '13.00', '1,38,929', '120', '10686.84615', '2.6', '80.32'),
(46, 'Mainpuri', '2745.0', '1,33,078', '153', '48.48014572', '549', '85.66'),
(47, 'Lalitpur', '5039.0', '1,33,041', '428', '26.40226235', '1007.8', '83.96'),
(48, 'Etah', '4446.0', '1,31,023', '170', '29.46986055', '889.2', '85.62'),
(49, 'Deoria', '2535.0', '1,29,570', '68', '51.11242604', '507', '93.73'),
(50, 'Ujhani', '48.00', '1,26,000', '192', '2625', '9.6', '87'),
(51, 'Ghazipur', '20.00', '1,21,136', '70', '6056.8', '4', '84.97'),
(52, 'Sultanpur', '4436.0', '1,16,211', '95', '26.19724977', '887.2', '87.61'),
(53, 'Azamgarh', '1219.0', '1,16,165', '64', '95.29532404', '243.8', '86.27'),
(54, 'Bijnor', '4049.0', '1,15,381', '225', '28.49617189', '809.8', '77.9'),
(55, 'Sahaswan', '52.00', '1,14,921', '172', '2210.019231', '10.4', '71'),
(56, 'Basti', '4309.0', '1,14,651', '105', '26.60733349', '861.8', '85.29'),
(57, 'Chandausi', '16.00', '1,14,254', '284', '7140.875', '3.2', '72.63'),
(58, 'Akbarpur', '2520.0', '1,11,594', '133', '44.28333333', '504', '76.94'),
(59, 'Ballia', '1981.0', '1,11,287', '159', '56.17718324', '396.2', '86.65'),
(60, 'Tanda', '1250.0', '1,09,539', '78?', '87.6312', '250', '69.25'),
(61, 'Greater Noida', '1442.0', '1,07,676', '144', '74.67128988', '288.4', '86.54'),
(62, 'Shikohabad', '1425.0', '1,07,300', '163', '75.29824561', '285', '81.68'),
(63, 'Shamli', '1063.0', '1,47,233', '248', '138.5070555', '212.6', '81.97'),
(64, 'Khair', '261.00', '1,02,106', '188', '391.210728', '52.2', '71.44'),
(65, 'Kasganj', '2218.0', '1,01,241', '120', '45.64517583', '443.6', '78.56');

-- --------------------------------------------------------

--
-- Table structure for table `curd_user`
--

CREATE TABLE `curd_user` (
  `id` int(11) NOT NULL,
  `name` varchar(111) NOT NULL,
  `email` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `curd_user`
--

INSERT INTO `curd_user` (`id`, `name`, `email`) VALUES
(1, 'VISHNU baba', 'vishnu83550@gmail.com'),
(2, 'MANISH', 'manishsharma02031999@gmail.com'),
(3, 'VISHNU vvv', 'vishnu@gmail.com'),
(4, 'PHP 8.0.6', 'v@gmail.com'),
(5, 'PHP', 'v@gmail.com'),
(6, 'baba', 'vishnu@gmail.com'),
(7, 'jhkjhkjh', 'manishsharma02031999@gmail.com'),
(8, 'MANISH SHARMA', 'vishnu83550@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(111) NOT NULL,
  `contact` varchar(111) NOT NULL,
  `gender` varchar(111) NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `contact`, `gender`, `age`, `address`) VALUES
(2, 'MANISH', '7852030404', 'Male', 21, 'BALUA POST PIPRAICH DISTICK KUSHINAGAR'),
(3, 'Vishnu', '9080909090', 'Male', 21, 'Jungle Salikram');

-- --------------------------------------------------------

--
-- Table structure for table `user_books_details`
--

CREATE TABLE `user_books_details` (
  `id` int(11) NOT NULL,
  `name` varchar(111) NOT NULL,
  `email` varchar(111) NOT NULL,
  `contact` varchar(111) NOT NULL,
  `favbook` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_books_details`
--

INSERT INTO `user_books_details` (`id`, `name`, `email`, `contact`, `favbook`) VALUES
(1, 'MANISH SHARMA', 'manishsharma02031999@gmail.com', '7852030404', 'Math'),
(2, 'MANISH SHARMA', 'manishsharma02031999@gmail.com', '7852030404', 'english');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities_list`
--
ALTER TABLE `cities_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `curd_user`
--
ALTER TABLE `curd_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_books_details`
--
ALTER TABLE `user_books_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities_list`
--
ALTER TABLE `cities_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `curd_user`
--
ALTER TABLE `curd_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_books_details`
--
ALTER TABLE `user_books_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
