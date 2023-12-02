-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2023 at 02:26 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(500) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(500) NOT NULL,
  `gender` varchar(500) NOT NULL,
  `dob` text NOT NULL,
  `contact` text NOT NULL,
  `address` varchar(500) NOT NULL,
  `image` varchar(2000) NOT NULL,
  `created_on` date NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `fname`, `lname`, `gender`, `dob`, `contact`, `address`, `image`, `created_on`, `group_id`) VALUES
(1, 'admin', 'aadhilainternational@gmail.com', 'aa7f019c326413d5b8bcad4314228bcd33ef557f5d81c7cc977f7728156f4357', 'Aadhila ', 'International', 'Male', '2011-05-02', '7845599126', 'Nashik', 'aadhila logo.png', '2018-04-30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `extras`
--

CREATE TABLE `extras` (
  `id` int(20) NOT NULL,
  `extras` text NOT NULL,
  `price` int(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `extras`
--

INSERT INTO `extras` (`id`, `extras`, `price`) VALUES
(0, 'electricity', 300);

-- --------------------------------------------------------

--
-- Table structure for table `manage_website`
--

CREATE TABLE `manage_website` (
  `id` int(11) NOT NULL,
  `title` varchar(600) NOT NULL,
  `short_title` varchar(600) NOT NULL,
  `logo` text NOT NULL,
  `footer` text NOT NULL,
  `currency_code` varchar(600) NOT NULL,
  `currency_symbol` varchar(600) NOT NULL,
  `login_logo` text NOT NULL,
  `invoice_logo` text NOT NULL,
  `background_login_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `manage_website`
--

INSERT INTO `manage_website` (`id`, `title`, `short_title`, `logo`, `footer`, `currency_code`, `currency_symbol`, `login_logo`, `invoice_logo`, `background_login_image`) VALUES
(1, '', '', 'Black & Yellow Jewelry Shop Golden Modern Intro Facebook Video (Video) (Logo) (Instagram Post) (1).png', '', '', '', 'Black & Yellow Jewelry Shop Golden Modern Intro Facebook Video (Video) (Logo) (Instagram Post) (1).png', '', '5.png');

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

CREATE TABLE `offer` (
  `id` int(50) NOT NULL,
  `offername` varchar(100) NOT NULL,
  `describtion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offer`
--

INSERT INTO `offer` (`id`, `offername`, `describtion`) VALUES
(2, 'Discount', '0');

-- --------------------------------------------------------

--
-- Table structure for table `room category`
--

CREATE TABLE `room category` (
  `id` int(20) NOT NULL,
  `roomcategory` varchar(100) NOT NULL,
  `adultno` int(10) NOT NULL,
  `kidno` int(20) NOT NULL,
  `facilities` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE `tbl_booking` (
  `id` int(200) NOT NULL,
  `name` varchar(500) NOT NULL,
  `roomname` int(20) NOT NULL,
  `roomno` int(50) NOT NULL,
  `kidno` int(200) NOT NULL,
  `adultno` int(200) NOT NULL,
  `fromdate` date NOT NULL,
  `todate` date NOT NULL,
  `taxamount` int(200) NOT NULL,
  `taxid` varchar(200) DEFAULT NULL,
  `tax` int(200) DEFAULT NULL,
  `totalamount` int(200) NOT NULL,
  `electricity_amount` int(200) DEFAULT NULL,
  `kitchen_amount` int(200) DEFAULT NULL,
  `Cleaning_charges` int(200) DEFAULT NULL,
  `discountper` int(200) DEFAULT NULL,
  `discount` int(200) DEFAULT NULL,
  `swimming` int(200) DEFAULT NULL,
  `paid` int(200) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_booking`
--

INSERT INTO `tbl_booking` (`id`, `name`, `roomname`, `roomno`, `kidno`, `adultno`, `fromdate`, `todate`, `taxamount`, `taxid`, `tax`, `totalamount`, `electricity_amount`, `kitchen_amount`, `Cleaning_charges`, `discountper`, `discount`, `swimming`, `paid`, `created_date`) VALUES
(7, '16', 32, 0, 0, 2, '2023-03-25', '2023-03-26', 1680, '12', 180, 1500, 0, 0, 0, 0, 0, 0, 0, '2023-03-22'),
(15, '13', 55, 0, 1, 1, '2023-03-24', '2023-03-25', 5680, '12', 480, 4000, 500, 500, 200, 0, 0, 0, 0, '2023-03-23'),
(16, '23', 17, 0, 1, 2, '2023-03-23', '2023-03-24', 2250, 'GST', 0, 2500, 0, 0, 0, 0, 250, 0, 0, '0000-00-00'),
(17, '16', 40, 0, 0, 2, '2023-03-26', '2023-03-27', 1500, '0', 0, 1500, 0, 0, 0, 0, 0, 0, 0, '2023-03-23'),
(18, '21', 34, 0, 1, 2, '2023-03-24', '2023-03-24', 0, '12', 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-03-24'),
(21, '25', 18, 0, 1, 3, '2023-04-06', '2023-04-07', 8200, '14', 1050, 7500, 100, 100, 100, 10, 750, 100, 0, '2023-04-03'),
(22, '25', 17, 0, 1, 3, '2023-04-07', '2023-04-08', 8900, '12', 900, 7500, 100, 100, 100, 0, 0, 200, 0, '2023-04-04'),
(23, '25', 18, 0, 1, 3, '2023-04-05', '2023-04-06', 8050, '12', 900, 7500, 100, 100, 100, 10, 750, 100, 0, '2023-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_currency`
--

CREATE TABLE `tbl_currency` (
  `id` int(11) NOT NULL,
  `currcode` varchar(50) NOT NULL,
  `currsymbol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  `contact` varchar(200) NOT NULL,
  `address` varchar(300) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `email`, `gender`, `birthdate`, `contact`, `address`, `created_date`) VALUES
(13, 'vinoth', 'aadhilainternational@gmail.com', 'Male', '2023-02-28', '6369464404', 'ayyyan kovil std CHINNAMANUR THENI TD 625515', '2023-03-21'),
(14, 'akkash', 'aakash21@gmail.com', 'Male', '2023-03-22', '9548456854', 'main road,chinnamanur', '2023-03-22'),
(15, 'ravi', 'xxx@gmail.com', 'Male', '2023-03-23', '9548456854', 'main road,chinnamanur', '2023-03-22'),
(16, 'SETHU ', 'sethu123@gmail.com', 'Male', '1989-02-16', '9875451625', 'cumbum main road, chinnamanur', '2023-03-22'),
(19, 'priya', 'xxx@gmail.com', 'Female', '2023-03-23', '9548456854', 'main road,chinnamanur', '2023-03-23'),
(20, 'suriya', 'xxx@gmail.com', 'Male', '2023-03-23', '6369464404', 'main road,chinnamanur', '2023-03-23'),
(21, 'suriya', 'xxx@gmail.com', 'Male', '2023-03-02', '6369464404', 'main road,chinnamanur', '2023-03-23'),
(22, 'vinoth', 'aadhilainternational@gmail.com', 'Male', '1997-02-28', '6369464404', 'ayyyan kovil std CHINNAMANUR THENI TD 625515', '2023-03-23'),
(23, 'suriya', 'xxx@gmail.com', 'Male', '2023-03-23', '6369464404', 'main road,chinnamanur', '2023-03-23'),
(24, 'suriya', 'xxx@gmail.com', 'Male', '2023-03-24', '6369464404', 'main road,chinnamanur', '2023-03-24'),
(25, 'lakshmi', 'xxx@gmail.com', 'Female', '2023-03-01', '9042266895', 'main road,chinnamanur', '2023-03-26'),
(26, 'ashrith dj', '41222rajiv@gmail.com', 'Male', '2023-04-06', '8921642899', 'xyz address', '2023-04-05'),
(27, 'ashrith dj', '41222rajiv@gmail.com', 'Male', '2023-04-05', '9234456667', 'xyz address', '2023-04-05'),
(28, 'ashrith dj', '41222rajiv@gmail.com', 'Male', '2023-04-05', '6677654123', 'xyz address', '2023-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discount`
--

CREATE TABLE `tbl_discount` (
  `id` int(50) NOT NULL,
  `discountname` varchar(50) NOT NULL,
  `percentage` int(50) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `expirydate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_discount`
--

INSERT INTO `tbl_discount` (`id`, `discountname`, `percentage`, `description`, `expirydate`) VALUES
(6, 'nil', 0, 'nil', '2025-06-21'),
(8, 'discount', 10, '10 percent', '2040-12-31'),
(9, 'new5', 15, '15 percent', '2040-12-31'),
(10, 'off10', 20, '20 percent', '2040-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_email_config`
--

CREATE TABLE `tbl_email_config` (
  `e_id` int(21) NOT NULL,
  `name` varchar(500) NOT NULL,
  `mail_driver_host` varchar(5000) NOT NULL,
  `mail_port` int(50) NOT NULL,
  `mail_username` varchar(50) NOT NULL,
  `mail_password` varchar(30) NOT NULL,
  `mail_encrypt` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_email_config`
--

INSERT INTO `tbl_email_config` (`e_id`, `name`, `mail_driver_host`, `mail_port`, `mail_username`, `mail_password`, `mail_encrypt`) VALUES
(1, '<hotal_booking> ', 'mail.upturnit.com', 587, 'contact.info@upturnit.com', 'x(ilz?cWumI2', 'sdsad');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enquiry`
--

CREATE TABLE `tbl_enquiry` (
  `id` int(222) NOT NULL,
  `checkin` varchar(50) NOT NULL,
  `checkout` varchar(20) NOT NULL,
  `adults` int(11) NOT NULL,
  `childrens` int(11) NOT NULL,
  `telNo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_enquiry`
--

INSERT INTO `tbl_enquiry` (`id`, `checkin`, `checkout`, `adults`, `childrens`, `telNo`) VALUES
(5, '2023-03-21', '2023-03-22', 2, 1, '8921642899'),
(6, '2023-03-02', '2023-03-03', 2, 2, '4678904432'),
(7, '2023-04-05', '2023-04-06', 1, 1, '9894673510'),
(8, '', '', 2, 1, '8921342899');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hall`
--

CREATE TABLE `tbl_hall` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `hallcharge` int(200) NOT NULL,
  `fromdate` date NOT NULL,
  `todate` date NOT NULL,
  `totalamount` int(100) NOT NULL,
  `taxamount` int(100) NOT NULL,
  `electricity_amount` int(200) NOT NULL,
  `kitchen_amount` int(200) NOT NULL,
  `discountper` int(200) NOT NULL,
  `discount` int(200) NOT NULL,
  `paid` int(200) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `taxid` int(200) NOT NULL,
  `tax` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_hall`
--

INSERT INTO `tbl_hall` (`id`, `name`, `hallcharge`, `fromdate`, `todate`, `totalamount`, `taxamount`, `electricity_amount`, `kitchen_amount`, `discountper`, `discount`, `paid`, `created_date`, `taxid`, `tax`) VALUES
(1, '14', 3000, '2023-04-05', '2023-04-06', 3000, 14, 14, 14, 14, 34, 3500, '2023-04-04 09:56:55', 0, 0),
(2, '15', 3000, '2023-04-05', '2023-04-06', 3000, 14, 14, 14, 14, 34, 0, '2023-04-04 11:32:17', 0, 0),
(3, '25', 3000, '2023-04-05', '2023-04-05', 0, 0, 1000, 100, 0, 0, 0, '2023-04-04 18:30:00', 0, 0),
(4, '16', 30000, '2023-04-05', '2023-04-06', 0, 0, 1000, 1000, 0, 0, 0, '2023-04-04 18:30:00', 0, 0),
(5, '13', 3000, '2023-04-05', '2023-04-05', 3560, 360, 100, 100, 0, 0, 0, '2023-04-04 18:30:00', 12, 0),
(6, '16', 3000, '2023-04-04', '2023-04-04', 3560, 360, 100, 100, 0, 0, 0, '2023-04-04 18:30:00', 12, 0),
(7, '16', 30000, '2023-04-05', '2023-04-06', 32600, 30000, 1000, 1000, 10, 3000, 0, '2023-04-04 18:30:00', 12, 3600),
(8, '25', 3000, '2023-04-13', '2023-04-14', 3200, 3000, 100, 100, 0, 0, 0, '2023-04-04 18:30:00', 0, 0),
(9, '23', 4000, '2023-04-01', '2023-04-02', 4280, 4000, 100, 100, 10, 400, 0, '2023-04-04 18:30:00', 12, 480),
(10, '23', 4000, '2023-04-01', '2023-04-02', 4280, 4000, 100, 100, 10, 400, 0, '2023-04-04 18:30:00', 12, 480),
(11, '23', 30000, '2023-04-05', '2023-04-05', 32600, 30000, 1000, 1000, 10, 3000, 0, '2023-04-04 18:30:00', 12, 3600),
(12, '23', 30000, '2023-04-05', '2023-04-05', 32600, 30000, 1000, 1000, 10, 3000, 25000, '2023-04-05 12:10:05', 12, 3600);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hallpayment`
--

CREATE TABLE `tbl_hallpayment` (
  `id` int(100) NOT NULL,
  `bookingid` int(100) NOT NULL,
  `amount` int(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_hallpayment`
--

INSERT INTO `tbl_hallpayment` (`id`, `bookingid`, `amount`, `date`) VALUES
(1, 1, 144, '2023-04-05'),
(2, 1, 144, '2023-04-05'),
(3, 12, 10000, '2023-04-05'),
(4, 12, 5000, '2023-04-06'),
(5, 12, 10000, '2023-04-05'),
(6, 12, 7600, '2023-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(100) NOT NULL,
  `bookingid` int(100) NOT NULL,
  `amount` int(100) NOT NULL,
  `datee` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `bookingid`, `amount`, `datee`) VALUES
(6, 1, 2000, '2023-03-21'),
(7, 1, 2580, '2023-03-22'),
(8, 5, 1000, '2023-03-22'),
(9, 5, 1070, '2023-03-23'),
(10, 4, 1000, '2023-03-22'),
(11, 7, 1680, '2023-03-22'),
(12, 11, 1000, '2023-03-24'),
(13, 11, 1250, '2023-03-24'),
(14, 12, 2550, '2023-03-23'),
(15, 14, 2040, '2023-03-23'),
(16, 15, 5000, '2023-03-23'),
(17, 20, 1000, '2023-03-26'),
(18, 20, 500, '2023-03-26'),
(19, 20, 500, '2023-03-26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rooms`
--

CREATE TABLE `tbl_rooms` (
  `id` int(50) NOT NULL,
  `floorno` int(50) NOT NULL,
  `roomname` varchar(50) NOT NULL,
  `peradultprice` int(50) NOT NULL,
  `perkidprice` int(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `amenities` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_rooms`
--

INSERT INTO `tbl_rooms` (`id`, `floorno`, `roomname`, `peradultprice`, `perkidprice`, `color`, `amenities`) VALUES
(17, 101, 'Double A/C Deluxe Cot', 2500, 0, 'white', 'a/c,tv,water heater'),
(18, 102, 'Double A/C Deluxe Cot', 2500, 0, 'white', 'a/c,tv,water heater'),
(19, 103, 'Double A/C Deluxe Cot', 2500, 0, 'white', 'a/c,tv,water heater'),
(20, 104, 'Triple Cot A/C', 3000, 0, 'yellow', 'a/c,tv,water heater'),
(21, 105, 'Triple Cot A/C', 3000, 0, 'yellow', 'a/c,tv,water heater'),
(22, 106, 'Non A/C Rooms', 1500, 0, 'green', 'tv,water heater'),
(23, 107, 'Triple', 3500, 0, 'blue', 'a/c,tv,water heater,dining,sofa'),
(24, 109, 'VIP SUIT A/C ROOMS', 3500, 0, 'blue', 'a/c,tv,water heater,dining,sofa'),
(25, 110, 'VIP SUIT A/C ROOMS', 3500, 0, 'blue', 'a/c,tv,water heater,dining,sofa'),
(26, 201, 'Double A/C Deluxe Cot', 2500, 0, 'white', 'a/c,tv,water heater'),
(27, 202, 'Double A/C Deluxe Cot', 2500, 0, 'white', 'a/c,tv,water heater'),
(28, 203, 'Double A/C Deluxe Cot', 2500, 0, 'white', 'a/c,tv,water heater'),
(29, 204, 'Double A/C Deluxe Cot', 2500, 0, 'white', 'a/c,tv,water heater'),
(30, 205, 'Triple Cot A/C', 3000, 0, 'yellow', 'a/c,tv,water heater'),
(31, 206, 'Triple Cot A/C', 3000, 0, 'yellow', 'a/c,tv,water heater'),
(32, 207, 'Non A/C Rooms', 1500, 0, 'green', 'tv,water heater'),
(33, 208, 'Standard A/C Rooms', 2000, 0, 'red', 'tv,water heater'),
(34, 209, 'Standard A/C Rooms', 2000, 0, 'red', 'a/c,tv,water heater'),
(35, 210, 'Standard A/C Rooms', 2000, 0, 'red', 'a/c,tv,water heater'),
(36, 211, 'Standard A/C Rooms', 2000, 0, 'red', 'a/c,tv,water heater'),
(37, 212, 'Non A/C Rooms', 1500, 0, 'green', 'tv,water heater'),
(38, 213, 'Non A/C Rooms', 1500, 0, 'green', 'tv,water heater'),
(39, 214, 'Non A/C Rooms', 1500, 0, 'green', 'tv,water heater'),
(40, 215, 'Non A/C Rooms', 1500, 0, 'green', 'tv,water heater'),
(41, 301, 'Single', 2500, 0, 'white', 'a/c,tv,water heater'),
(42, 302, 'Double A/C Deluxe Cot', 2500, 0, 'white', 'a/c,tv,water heater'),
(43, 303, 'Double A/C Deluxe Cot', 2500, 0, 'white', 'a/c,tv,water heater'),
(44, 304, 'Double A/C Deluxe Cot', 2500, 0, 'white', 'a/c,tv,water heater'),
(45, 305, 'Triple Cot A/C', 3000, 0, 'yellow', 'a/c,tv,water heater'),
(46, 306, 'Triple Cot A/C', 3000, 0, 'yellow', 'a/c,tv,water heater'),
(47, 307, 'Non A/C Rooms', 1500, 0, 'green', 'tv,water heater'),
(57, 100, 'Marriage Hall', 45000, 0, 'black', 'a/c mahal with dining'),
(61, 208, 'Standard A/C Rooms', 2000, 0, 'red', 'a/c,tv,water heater'),
(62, 208, 'Standard A/C Rooms', 2000, 0, 'red', 'a/c,tv,water heater'),
(63, 12, 'Deluxe', 4000, 123, 'as', 'wifi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_swimmingpool`
--

CREATE TABLE `tbl_swimmingpool` (
  `id` int(11) NOT NULL,
  `customername` varchar(222) NOT NULL,
  `phno` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `noofpersons` int(11) DEFAULT NULL,
  `fromdate` date DEFAULT NULL,
  `hours` varchar(234) NOT NULL,
  `amount` int(254) NOT NULL,
  `tax` int(200) DEFAULT NULL,
  `taxamount` int(200) NOT NULL,
  `totalamount` int(200) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tax`
--

CREATE TABLE `tbl_tax` (
  `id` int(50) NOT NULL,
  `taxname` varchar(50) NOT NULL,
  `percentage` int(50) NOT NULL,
  `shortcode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_tax`
--

INSERT INTO `tbl_tax` (`id`, `taxname`, `percentage`, `shortcode`) VALUES
(1, 'GST', 12, 'GST'),
(8, 'No Tax', 0, 'No Tax'),
(9, 'Gst', 14, 'Gst');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_website`
--
ALTER TABLE `manage_website`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room category`
--
ALTER TABLE `room category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_currency`
--
ALTER TABLE `tbl_currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_discount`
--
ALTER TABLE `tbl_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_email_config`
--
ALTER TABLE `tbl_email_config`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_hall`
--
ALTER TABLE `tbl_hall`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_hallpayment`
--
ALTER TABLE `tbl_hallpayment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rooms`
--
ALTER TABLE `tbl_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_swimmingpool`
--
ALTER TABLE `tbl_swimmingpool`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tax`
--
ALTER TABLE `tbl_tax`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `manage_website`
--
ALTER TABLE `manage_website`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `offer`
--
ALTER TABLE `offer`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `room category`
--
ALTER TABLE `room category`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_currency`
--
ALTER TABLE `tbl_currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_discount`
--
ALTER TABLE `tbl_discount`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_email_config`
--
ALTER TABLE `tbl_email_config`
  MODIFY `e_id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_hall`
--
ALTER TABLE `tbl_hall`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_hallpayment`
--
ALTER TABLE `tbl_hallpayment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_rooms`
--
ALTER TABLE `tbl_rooms`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tbl_swimmingpool`
--
ALTER TABLE `tbl_swimmingpool`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_tax`
--
ALTER TABLE `tbl_tax`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
