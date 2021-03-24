-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2019 at 12:05 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gopedal`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `address_id` int(11) NOT NULL,
  `house_no` int(11) DEFAULT NULL,
  `road_no` int(11) DEFAULT NULL,
  `area` varchar(30) DEFAULT NULL,
  `postal_code` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`address_id`, `house_no`, `road_no`, `area`, `postal_code`) VALUES
(101, 12, 17, 'Dhaka GPO', '1200'),
(102, 12, 8, 'Mirpur', '1216'),
(103, 17, 13, 'Uttara', '1231'),
(104, 15, 10, 'Kafrul', '1206'),
(105, 10, 2, 'Dhaka Cantonment', '1206'),
(106, 21, 1, 'Wari', '1203'),
(107, 23, 19, 'Khilgoad', '1219'),
(108, 15, 15, 'Dhanmondi', '1219'),
(109, 1, 11, 'Basabo', '1214'),
(110, 9, 16, 'Banani', '1213');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone_no` char(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `total_ride_hour` time DEFAULT NULL,
  `nid_number` varchar(15) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `first_name`, `last_name`, `date_of_birth`, `email`, `phone_no`, `address_id`, `total_ride_hour`, `nid_number`, `password`) VALUES
(100001, 'Tamim', 'Iqbal', '1990-12-16', 'aaa@gmail.com', '01900000000', 107, NULL, NULL, 'tam'),
(100002, 'Liton', 'Das', '1992-11-01', 'bbb@gmail.com', '01900000002', 106, NULL, NULL, 'lit'),
(100003, 'Soumyo', 'Sarkar', '1992-10-11', 'ccc@gmail.com', '01900000003', 101, NULL, NULL, 'sou'),
(100004, 'Imrul', 'Kayes', '1990-05-01', 'ddd@gmail.com', '01900000004', 102, NULL, NULL, 'imr'),
(100005, 'Musfiquer', 'Rahim', '1988-07-20', 'eee@gmail.com', '01900000005', 105, NULL, NULL, 'mus'),
(100006, 'Sakib', 'Al-Hasan', '1985-09-30', 'fff@gmail.com', '01900000006', 103, NULL, NULL, 'sak'),
(100007, 'Mashrafee', 'Bin-Mortuza', '1984-10-13', 'ggg@gmail.com', '01900000007', 110, NULL, NULL, 'mash'),
(100009, 'Mamun', 'al', '2012-12-12', 'al@gmail.com', '01933723017', 110, NULL, '147852369874', 'fanr'),
(100010, 'md', 'Arif ', '1997-06-08', 'arif@gmail.com', '01910987654', 105, NULL, '1909890786', 'arif'),
(100011, 'ayon', 'ashik', '0000-00-00', 'ayonashik350@gmail.com', '01989001217', 101, NULL, '234567891', '234567891'),
(100012, 'partho', 'protim', '2000-01-01', 'ppp@gmail.com', '0132154870', 110, NULL, '7410258963', 'partho'),
(100015, 'sh', 'jamee', '1990-01-05', 'jfk@gmail.com', '01933783105', 103, NULL, '123654781000', 'jams'),
(100016, 'Fonta', 'Aldrin', '1993-11-23', 'aldrin', '01933723140', 101, NULL, '1472583699875', 'faniral'),
(100017, 'uiu', 'badda', '2000-10-12', 'uiu@gmail.com', '123', 101, NULL, '', ''),
(100019, 's', 'h', '2012-12-12', 's@gmail.com', '01751817181', 110, NULL, '785463214', 'ami'),
(100020, 'Emon', 'Fnpo', '1997-10-11', 'emon@gmail.com', '01955909872', 101, NULL, '1254785469', 'emon'),
(100021, 'Al', 'Arafat', '2002-12-08', 'arafat@gamil.com', '01933723190', 110, NULL, '147522656033', 'alarafat'),
(100022, 'Sharif', 'Ahmed', '2000-02-03', 'sharif@gmail.com', '01878776544', 101, NULL, '1598745231', 'sharifkhan');

-- --------------------------------------------------------

--
-- Table structure for table `cycles`
--

CREATE TABLE `cycles` (
  `cycle_id` int(11) NOT NULL,
  `fare_rate` double DEFAULT NULL,
  `color` varchar(15) DEFAULT NULL,
  `availability` bit(1) DEFAULT NULL,
  `description` text,
  `cycle_image` blob,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cycles`
--

INSERT INTO `cycles` (`cycle_id`, `fare_rate`, `color`, `availability`, `description`, `cycle_image`, `rating`) VALUES
(1001, 100, 'Black', b'1', 'This\ncycle\nbelongs\nto\nMountain\nBikes', NULL, 4),
(1002, 50, 'White', b'1', 'This\ncycle\nbelongs\nto\nRoad\nBikes', NULL, 5),
(1003, 50, 'Yellow', b'1', 'This\ncycle\nbelongs\nto\nHybrid\nBikes', NULL, 4),
(1004, 100, 'Black', b'1', 'This\ncycle\nbelongs\nto\nFolding\nBikes', NULL, 5),
(1005, 100, 'Green', b'1', 'This\ncycle\nbelongs\nto\nFixies\nBikes', NULL, NULL),
(1006, 120, 'Red', b'1', 'This\ncycle\nbelongs\nto\nBMX\nBikes', NULL, 4),
(1007, 50, 'White', b'1', 'This\ncycle\nbelongs\nto\nCrusiers\nBikes', NULL, NULL),
(1008, 150, 'Black', b'1', 'This\ncycle\nbelongs\nto\nElectric\nBikes', NULL, NULL),
(1009, 100, 'White', b'1', 'This cycle is very new collection.', NULL, NULL),
(1010, 75, 'Green', b'1', 'Electric Rider', NULL, NULL),
(1011, 120, 'Black', b'1', 'New for our collection and its very new in road and hero of the road', NULL, NULL),
(1012, 100, 'Yellow', b'1', 'This cycle is old version', NULL, NULL),
(1013, 120, 'White', b'1', 'Road hero', NULL, NULL),
(1014, 100, 'Black', b'1', 'Road Master', NULL, NULL),
(1015, 120, 'White', b'1', 'Road hero', NULL, 5),
(1016, 100, 'Gray', b'1', 'Sports Bicycle', NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `rentals`
--

CREATE TABLE `rentals` (
  `rental_id` int(11) NOT NULL,
  `cycle_id` int(11) DEFAULT NULL,
  `station_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rentals`
--

INSERT INTO `rentals` (`rental_id`, `cycle_id`, `station_id`, `customer_id`, `start_time`, `end_time`) VALUES
(2, 1006, 10, NULL, NULL, NULL),
(3, 1002, 2, NULL, '2019-01-12 12:14:44', '2019-01-12 12:15:03'),
(4, 1003, 7, NULL, '2018-12-31 23:40:49', '2018-12-31 23:42:20'),
(5, 1001, 2, NULL, '2019-01-12 13:12:14', '2019-01-12 13:14:05'),
(6, 1004, 3, NULL, '2019-01-12 20:03:03', '2019-01-12 20:05:55'),
(7, 1005, 10, NULL, NULL, NULL),
(8, 1007, 5, NULL, NULL, NULL),
(9, 1008, 2, NULL, NULL, NULL),
(10, 1009, 2, NULL, NULL, NULL),
(11, 1010, 3, NULL, NULL, NULL),
(12, 1011, 3, NULL, NULL, NULL),
(13, 1013, 7, NULL, NULL, NULL),
(14, 1014, 6, NULL, NULL, NULL),
(15, 1015, 2, NULL, '2019-01-12 13:42:26', '2019-01-12 13:44:30'),
(16, 1016, 1, NULL, '2019-01-22 16:41:55', '2019-01-22 16:42:59');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `cycle_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `review` text,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `cycle_id`, `customer_id`, `review`, `rating`) VALUES
(1, 1006, 100001, 'well done gopedal', 4),
(2, 1003, 100010, 'valana', 4),
(3, 1002, 100009, 'error dekhay kn', 3),
(4, 1002, 100009, 'error dekhay na to ekhn', 5),
(5, 1002, 100009, 'go ahed', 5),
(6, 1006, 100012, 'hi am partho,its good', 3),
(7, 1002, 100001, 'well done', 5),
(8, 1002, 100016, 'not bad', 5),
(9, 1002, 100016, 'Fine ', 5),
(10, 1015, 100016, 'This cycle was good', 5),
(11, 1015, 100019, 'kia bat', 5),
(12, 1016, 100020, 'OWAO', 4),
(13, 1001, 100016, 'well done gopedal', 4),
(14, 1004, 100021, 'very good', 5),
(15, 1016, 100016, 'well done gopedal', 4);

-- --------------------------------------------------------

--
-- Table structure for table `stations`
--

CREATE TABLE `stations` (
  `station_id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stations`
--

INSERT INTO `stations` (`station_id`, `name`, `address_id`) VALUES
(1, 'Hydrogen', 101),
(2, 'Helium', 102),
(3, 'Lithium', 103),
(4, 'Beryllium', 104),
(5, 'Boron', 105),
(6, 'Carbon', 106),
(7, 'Nitrogen', 107),
(8, 'Oxygen', 108),
(9, 'Fluorine', 109),
(10, 'Neon', 110);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_no` (`phone_no`),
  ADD UNIQUE KEY `nid_number` (`nid_number`),
  ADD KEY `address_id` (`address_id`);

--
-- Indexes for table `cycles`
--
ALTER TABLE `cycles`
  ADD PRIMARY KEY (`cycle_id`);

--
-- Indexes for table `rentals`
--
ALTER TABLE `rentals`
  ADD PRIMARY KEY (`rental_id`),
  ADD KEY `cycle_id` (`cycle_id`),
  ADD KEY `station_id` (`station_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `cycle_id` (`cycle_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `stations`
--
ALTER TABLE `stations`
  ADD PRIMARY KEY (`station_id`),
  ADD KEY `address_id` (`address_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100023;

--
-- AUTO_INCREMENT for table `cycles`
--
ALTER TABLE `cycles`
  MODIFY `cycle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1017;

--
-- AUTO_INCREMENT for table `rentals`
--
ALTER TABLE `rentals`
  MODIFY `rental_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `stations`
--
ALTER TABLE `stations`
  MODIFY `station_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`address_id`);

--
-- Constraints for table `rentals`
--
ALTER TABLE `rentals`
  ADD CONSTRAINT `rentals_ibfk_1` FOREIGN KEY (`cycle_id`) REFERENCES `cycles` (`cycle_id`),
  ADD CONSTRAINT `rentals_ibfk_2` FOREIGN KEY (`station_id`) REFERENCES `stations` (`station_id`),
  ADD CONSTRAINT `rentals_ibfk_3` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`cycle_id`) REFERENCES `cycles` (`cycle_id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

--
-- Constraints for table `stations`
--
ALTER TABLE `stations`
  ADD CONSTRAINT `stations_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`address_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
