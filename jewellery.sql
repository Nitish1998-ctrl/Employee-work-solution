-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 28, 2012 at 09:19 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jewellery`
--

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE IF NOT EXISTS `enquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `prof` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `query` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`id`, `name`, `company`, `prof`, `address`, `email`, `website`, `city`, `state`, `country`, `phone`, `query`) VALUES
(1, 'uuu', 'u', 'jj', 'uu', 'u@gail.com', 'u', 'uu', 'u', 'Uganda', 'uii', 'uuuiu'),
(2, 'hjh', 'hjh', 'jh', 'jh', 'hjh@gmail.com', 'j', 'hj', 'hj', 'Jamaica', 'h', 'j');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `o_id` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(5) NOT NULL,
  `p_qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `m_no` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `pin` varchar(10) NOT NULL,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`o_id`, `id`, `p_qty`, `price`, `name`, `address`, `m_no`, `email`, `city`, `state`, `country`, `pin`) VALUES
(1, '1038', 1, 15800, '99', 'hh', 'jh', 'hjh@gmail.com', 'j', 'j', 'Jamaica', 'kjk'),
(2, '1003', 1, 17356, 'kj', 'kj', 'j', 'j@gmail.com', 'kj', 'kj', 'India', 'jkj'),
(3, '1048', 2, 68226, 'hjhj', 'hjhj', 'jh', 'hjh@gmail.com', 'jhh', 'jh', 'Jamaica', 'hj'),
(4, '1044', 2, 95198, 'hjhj', 'jjk', 'hj', 'hjh@gmail.com', 'hj', 'h', 'Haiti', 'hjh'),
(5, '1037', 1, 18936, 'iuiui', 'ui', 'ui', 'iu@gmail.com', 'i', 'i', 'Uganda', 'uiu'),
(6, '1016', 2, 37448, 'payal', 'barnala', '7878', 'jh@gmail.com', 'jjh', 'jhj', 'Haiti', 'hjh');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `p_id` varchar(5) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `p_name`) VALUES
('101', 'Bracelet'),
('102', 'Earrings'),
('103', 'Pendant'),
('104', 'Rings'),
('105', 'GoldNeck'),
('106', 'Nose Pin');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE IF NOT EXISTS `product_details` (
  `p_id` varchar(5) DEFAULT NULL,
  `id` varchar(5) NOT NULL,
  `p_image` varchar(100) DEFAULT NULL,
  `p_price` int(11) DEFAULT NULL,
  `p_qty` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`p_id`, `id`, `p_image`, `p_price`, `p_qty`) VALUES
('101', '1001', 'br/b2.jpg', 35640, 4),
('101', '1002', 'br/b5.jpg', 20476, 5),
('101', '1003', 'br/b3.jpg', 17356, 9),
('101', '1004', 'br/b9.jpg', 37667, 10),
('101', '1005', 'br/b7.jpg', 27813, 5),
('101', '1006', 'br/b8.jpg', 29343, 5),
('101', '1007', 'br/b4.jpg', 1500, 10),
('101', '1008', 'br/b6.jpg', 12833, 5),
('101', '1009', 'br/b0.jpg', 22543, 5),
('102', '1011', 'er1/e0.jpg', 25302, 10),
('102', '1012', 'er1/e3.jpg', 17537, 5),
('102', '1013', 'er1/e8.jpg', 13577, 10),
('102', '1014', 'er1/e4.jpg', 22225, 10),
('102', '1015', 'er1/e6.jpg', 14202, 10),
('102', '1016', 'er1/e11.jpg', 18724, 3),
('102', '1017', 'er1/e12.jpg', 19449, 10),
('102', '1018', 'er1/e1.jpg', 9101, 5),
('102', '1019', 'er1/er1.jpg', 6243, 10),
('103', '1021', 'pn1/p2.jpg', 15653, 10),
('103', '1022', 'pn1/p03.jpg', 7645, 5),
('103', '1023', 'pn1/p02.jpg', 9105, 10),
('103', '1024', 'pn1/p8.jpg', 6315, 9),
('103', '1025', 'pn1/p9.jpg', 8749, 5),
('103', '1026', 'pn1/p7.jpg', 9893, 6),
('103', '1027', 'pn1/p5.jpg', 10600, 6),
('103', '1028', 'pn1/p4.jpg', 11065, 9),
('103', '1029', 'pn1/p3.jpg', 14397, 5),
('104', '1031', 'r/r0.jpg', 16572, 10),
('104', '1032', 'r/r4.jpg', 12960, 7),
('104', '1033', 'r/r1.jpg', 15499, 9),
('104', '1034', 'r/r3.jpg', 13691, 7),
('104', '1035', 'r/r5.jpg', 18535, 5),
('104', '1036', 'r/r6.jpg', 14600, 5),
('104', '1037', 'r/r11.jpg', 18936, 7),
('104', '1038', 'r/r8.jpg', 15800, 4),
('104', '1039', 'r/r9.jpg', 14826, 8),
('105', '1041', 'gn/g4.jpg', 20560, 9),
('105', '1042', 'gn/g2.jpg', 18361, 5),
('105', '1043', 'gn/g5.jpg', 50636, 4),
('105', '1044', 'gn/g6.jpg', 47599, 3),
('105', '1045', 'gn/g7.jpg', 63982, 9),
('105', '1046', 'gn/g8.jpg', 61665, 10),
('105', '1047', 'gn/g9.jpg', 70982, 5),
('105', '1048', 'gn/g3.jpg', 34113, 8),
('105', '1049', 'gn/g1.jpg', 52876, 10),
('106', '1051', 'np/n0.jpg', 3449, 10),
('106', '1052', 'np/n1.jpg', 2779, 15),
('106', '1053', 'np/n5.jpg', 4606, 9),
('106', '1054', 'np/n1.jpg', 2555, 8),
('106', '1055', 'np/n8.jpg', 3717, 10),
('106', '1056', 'np/n3.jpg', 2111, 10),
('106', '1057', 'np/n11.jpg', 5365, 10),
('106', '1058', 'np/n4.jpg', 3500, 9),
('106', '1059', 'np/n2.jpg', 3600, 10);
