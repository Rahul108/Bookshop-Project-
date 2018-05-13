-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 13, 2018 at 10:50 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookshop_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(40) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('rahul', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `book_title` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_author` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_image` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `book_descr` text COLLATE latin1_general_ci,
  `book_price` decimal(6,2) NOT NULL,
  `publisherid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_isbn`, `book_title`, `book_author`, `book_image`, `book_descr`, `book_price`, `publisherid`) VALUES
('9780307474278', 'Da Vinci Code', 'Dan Brown', 'download.jpeg', 'descriptions', '300.00', 5),
('9789844126001', 'Ami Topu', 'Muhammed Zafar Iqbal', 'download (14).jpg', 'Demo', '280.00', 1),
('9789844126114', 'Brishty Bilash', 'Humayun Ahmed', 'download (1).jpg', 'desciption demo', '280.00', 3),
('9789844126115', 'Dui Duari', 'Humayun Ahmed', 'download (2).jpg', 'Description Demo', '200.00', 3),
('9789844126116', 'Himur Moddho Dupur', 'Humayun Ahmed', 'download (3).jpg', 'Demo Description', '230.00', 3),
('9789844126117', 'Ananda Bedonar Kanna', 'Humayun Ahmed', 'download (4).jpg', 'Demo', '280.00', 3),
('9789844126118', 'Aj Ami Kothao Jabo Na', 'Humayun Ahmed', 'download (5).jpg', 'Demo', '280.00', 3),
('9789844126122', 'Brishty O Meghmala', 'Humayun Ahmed', 'download (7).jpg', 'Description', '200.00', 3),
('9789844126222', 'Deoal', 'Humayun Ahmed', 'download (8).jpg', 'demo', '280.00', 3),
('9789844126333', 'Finix', 'Muhammed Zafar Iqbal', 'download (10).jpg', 'Demo', '280.00', 1),
('9789844126444', 'Ondhokar er Groho', 'Muhammed Zafar Iqbal', 'download (11).jpg', 'dmeo', '280.00', 1),
('9789844126555', 'Robo Nishi', 'Muhammed Zafar Iqbal', 'download (12).jpg', 'Demo', '280.00', 1),
('9789844126556', 'Rasha', 'Muhammed Zafar Iqbal', 'download (13).jpg', 'Demo', '280.00', 1),
('9789844126888', 'Serina', 'Muhammed Zafar Iqbal', 'download (15).jpg', 'Demo', '280.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `city` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `zip_code` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `country` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `name`, `address`, `city`, `zip_code`, `country`) VALUES
(1, 'a', 'a', 'a', 'a', 'a'),
(2, 'b', 'b', 'b', 'b', 'b'),
(3, 'test', '123 test', '12121', 'test', 'test'),
(4, 'e', 'e', 'e', 'e', 'e'),
(5, 'Aninda Sarker Rahul', 'cuet', 'chittagong', '4000', 'Bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `customerid` int(10) UNSIGNED NOT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ship_name` char(60) COLLATE latin1_general_ci NOT NULL,
  `ship_address` char(80) COLLATE latin1_general_ci NOT NULL,
  `ship_city` char(30) COLLATE latin1_general_ci NOT NULL,
  `ship_zip_code` char(10) COLLATE latin1_general_ci NOT NULL,
  `ship_country` char(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `amount`, `date`, `ship_name`, `ship_address`, `ship_city`, `ship_zip_code`, `ship_country`) VALUES
(1, 1, '60.00', '2015-12-03 13:30:12', 'a', 'a', 'a', 'a', 'a'),
(2, 2, '60.00', '2015-12-03 13:31:12', 'b', 'b', 'b', 'b', 'b'),
(3, 3, '20.00', '2015-12-03 19:34:21', 'test', '123 test', '12121', 'test', 'test'),
(4, 1, '20.00', '2015-12-04 10:19:14', 'a', 'a', 'a', 'a', 'a'),
(5, 1, '20.00', '2018-05-08 12:03:19', 'a', 'a', 'a', 'a', 'a'),
(6, 4, '1040.00', '2018-05-08 15:06:48', 'e', 'e', 'e', 'e', 'e'),
(7, 5, '1200.00', '2018-05-08 15:40:53', 'Aninda Sarker Rahul', 'cuet', 'chittagong', '4000', 'Bangladesh'),
(8, 5, '3470.00', '2018-05-08 15:58:10', 'Aninda Sarker Rahul', 'cuet', 'chittagong', '4000', 'Bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `item_price` decimal(6,2) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`orderid`, `book_isbn`, `item_price`, `quantity`) VALUES
(1, '978-1-118-94924-5', '20.00', 1),
(1, '978-1-44937-019-0', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(2, '978-1-118-94924-5', '20.00', 1),
(2, '978-1-44937-019-0', '20.00', 1),
(2, '978-1-49192-706-9', '20.00', 1),
(3, '978-0-321-94786-4', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(1, '1111 2222 34333 4444', '1000.00', 0),
(1, '978-1-1180-2669-4', '20.00', 1),
(6, '978-1-1180-2669-4', '20.00', 4),
(6, '978-0-7303-1484-5', '300.00', 3),
(6, '978-1-44937-019-0', '20.00', 3),
(7, '9780307474278', '300.00', 4),
(7, '9789844126116', '230.00', 5),
(7, '9789844126117', '280.00', 3),
(7, '9789844126118', '280.00', 1),
(7, '9780307474278', '300.00', 4);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisherid` int(10) UNSIGNED NOT NULL,
  `publisher_name` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherid`, `publisher_name`) VALUES
(1, 'Muhammed Zafar Iqbal'),
(2, 'Humayun Azad'),
(3, 'Humayun Ahmed'),
(4, 'Anisul Hoque'),
(5, 'Dan Brown'),
(6, 'Stephen Hawking');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`name`,`pass`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_isbn`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisherid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
