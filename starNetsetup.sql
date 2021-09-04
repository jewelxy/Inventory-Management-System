-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 30, 2019 at 02:16 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `starNetsetup`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `town` varchar(255) NOT NULL,
  `county` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `name_ship` varchar(255) NOT NULL,
  `address_1_ship` varchar(255) NOT NULL,
  `address_2_ship` varchar(255) NOT NULL,
  `town_ship` varchar(255) NOT NULL,
  `county_ship` varchar(255) NOT NULL,
  `postcode_ship` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `invoice`, `name`, `email`, `address_1`, `address_2`, `town`, `county`, `postcode`, `phone`, `name_ship`, `address_1_ship`, `address_2_ship`, `town_ship`, `county_ship`, `postcode_ship`) VALUES
(66, '5', 'Mr. ashiqe', '', '153/5, santinagar', 'Digital Box, IP TV', 'Dhaka', '2937977675', '1217', '01712248499', 'Mr. ashiqe', '153/5, santinagar', 'Digital Box, IP TV', 'Dhaka', '2937977675', '1217'),
(67, '6', 'Jafor Ikbal', '', 'Shantinagar', 'Ip Tv', 'Dhaka', '456321', '1217', '019563698', 'Jafor Ikbal', 'Shantinagar', 'Ip Tv', 'Dhaka', '456321', '1217'),
(65, '4', 'Mr. Dr. Joy', '', '94/1 hoq cassel 3-B', '', 'Dhaka', '2937979134', '1217', '01678706191', 'Mr. Dr. Joy', '94/1 hoq cassel 3-B', 'Digital Box', 'Dhaka', '2937979134', '1217'),
(64, '3', 'S A Faroque', 'faruque@gmail', 'Merul Badda', 'Digital Box', 'Dhaka', 'C 2589', '1230', '01639568965', 'S A Faroque', 'Merul Badda', 'Digital Box', 'Dhaka', 'C 2589', '1230'),
(63, '2', 'Julfikar', 'jewel1027cse@gmail.com', 'Merul Badda', 'Digital Box, IP TV, Cable', 'Dhaka', 'C 25869', '5840', '01639568965', 'Julfikar', 'Merul Badda', 'Digital Box, IP TV, Cable', 'Dhaka', 'C 25869', '5840'),
(62, '1', 'dumy', '', 'Merul Badda', '', 'Dhaka', 'C 25869', '1217', '01950819115', 'dumy', 'Merul Badda', 'Digital Box', 'Dhaka', 'C 25869', '1217');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `custom_email` text NOT NULL,
  `invoice_date` varchar(255) NOT NULL,
  `invoice_due_date` varchar(255) NOT NULL,
  `subtotal` decimal(10,0) NOT NULL,
  `shipping` decimal(10,0) NOT NULL,
  `discount` decimal(10,0) NOT NULL,
  `vat` decimal(10,0) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `notes` text NOT NULL,
  `invoice_type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice`, `custom_email`, `invoice_date`, `invoice_due_date`, `subtotal`, `shipping`, `discount`, `vat`, `total`, `notes`, `invoice_type`, `status`) VALUES
(71, '6', '', '21/05/2019', '21/05/2019', '600', '0', '0', '0', '600', '', 'quote', 'paid'),
(70, '5', '', '21/05/2019', '21/05/2019', '1300', '0', '0', '0', '1300', '', 'invoice', 'paid'),
(69, '4', '', '21/05/2019', '21/05/2019', '200', '0', '0', '0', '200', '', 'invoice', 'paid'),
(68, '3', '', '21/05/2019', '21/05/2019', '2000', '0', '0', '0', '2000', '', 'invoice', 'paid'),
(67, '2', '', '21/05/2019', '23/05/2019', '2000', '0', '0', '0', '2000', '', 'invoice', 'paid'),
(66, '1', '', '15/05/2019', '15/05/2019', '1000', '0', '0', '0', '1000', '', 'invoice', 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int(11) NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `product` text NOT NULL,
  `qty` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `subtotal` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoice`, `product`, `qty`, `price`, `discount`, `subtotal`) VALUES
(126, '4', 'Digital Box - Digital Box', 1, '200', '', '200.00'),
(127, '5', 'Digital Box - product description', 1, '300', '0', '300.00'),
(128, '5', 'IP Tv - IP Tv', 1, '1000', '0', '1000.00'),
(125, '3', 'Digital Box', 4, '500', '0', '2000.00'),
(124, '2', 'Cable - Cable', 1, '500', '0', '500.00'),
(123, '2', 'IP Tv - IP Tv', 1, '1000', '0', '1000.00'),
(122, '2', 'Digital Box - Digital Box', 1, '500', '0', '500.00'),
(121, '1', 'IP Tv - IP Tv', 1, '1000', '', '1000.00'),
(129, '6', 'Ip Tv', 1, '600', '0', '600.00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` text NOT NULL,
  `product_desc` text NOT NULL,
  `product_price` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_desc`, `product_price`) VALUES
(994, 'Wifi 1 MB', 'Higly Speed ', '500'),
(991, 'IP Tv', 'IP Tv', '1000'),
(992, 'Digital Box', 'product description', '0'),
(993, 'Cable', 'Product Description', '300');

-- --------------------------------------------------------

--
-- Table structure for table `store_customers`
--

CREATE TABLE `store_customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `town` varchar(255) NOT NULL,
  `county` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `name_ship` varchar(255) NOT NULL,
  `address_1_ship` varchar(255) NOT NULL,
  `address_2_ship` varchar(255) NOT NULL,
  `town_ship` varchar(255) NOT NULL,
  `county_ship` varchar(255) NOT NULL,
  `postcode_ship` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_customers`
--

INSERT INTO `store_customers` (`id`, `name`, `email`, `address_1`, `address_2`, `town`, `county`, `postcode`, `phone`, `name_ship`, `address_1_ship`, `address_2_ship`, `town_ship`, `county_ship`, `postcode_ship`) VALUES
(70, 'Mr.', '', '17 New blyroad. Assod, B-3', 'Digital Box', 'Dhaka', '2941333842', '1217', '01711347137', 'Mr.', '17 New blyroad. Assod, B-3', 'Digital Box', 'Dhaka', '2941333842', '1217'),
(69, 'Mr. Badrul Alam', '', '17 New blyroad. Assod, AB-7', 'Digital Box', 'Dhaka', '2941350017', '1217', '01798596336', 'Mr. Badrul Alam', '17 New blyroad. Assod, AB-7', 'Digital Box', 'Dhaka', '2941350017', '1217'),
(67, 'Mr. Dr. kashem', '', '79 Siddeswari Rood, 6-A', 'Digital Box', 'Dhaka', '2937974094', '1217', '01713177069', 'Mr. Dr. kashem', '79 Siddeswari Rood, 6-A', 'Digital Box', 'Dhaka', '2937974094', '1217'),
(68, 'Mr. Salauddin Ahmed', '', '68/4 Siddeswari Rood', 'Digital Box', 'Dhaka', '2941349768', '1217', '01634735212', 'Mr. Salauddin Ahmed', '68/4 Siddeswari Rood', 'Digital Box', 'Dhaka', '2941349768', '1217'),
(71, 'Mr. Sizan', '', '72 Siddeswari road, Dream towar. F#A-4', 'Digital Box', 'Dhaka', '2941344465', '1217', '01756796049', 'Mr. Sizan', '72 Siddeswari road, Dream towar. F#A-4', 'Digital Box', 'Dhaka', '2941344465', '1217'),
(72, 'Mr. Emon', '', '79  Siddeswari road. F# 5-A', 'Digital Box', 'Dhaka', '2937975133', '1217', '01713493993', 'Mr. Emon', '79  Siddeswari road. F# 5-A', 'Digital Box', 'Dhaka', '2937975133', '1217'),
(73, 'Mrs. Nasrin Begum', '', '79  Siddeswari road. F# A-1', 'Digital Box', 'Dhaka', '2936374414', '1217', '01979400605', 'Mrs. Nasrin Begum', '79  Siddeswari road. F# A-1', 'Digital Box', 'Dhaka', '2936374414', '1217'),
(74, 'Mr. Nasir uddin', '', '51 Siddeswari Rood, apartment F# A-3', 'Digital Box', 'Dhaka', '2937974991', '1217', '01711720723', 'Mr. Nasir uddin', '51 Siddeswari Rood, apartment F# A-3', 'Digital Box', 'Dhaka', '2937974991', '1217'),
(75, 'Mr. Shahidul hoq', '', '53, Siddeswari road, 5th foor', 'Digital Box', 'Dhaka', '2937974152', '1217', '01713027513', 'Mr. Shahidul hoq', '53, Siddeswari road, 5th foor', 'Digital Box', 'Dhaka', '2937974152', '1217'),
(76, 'Mr. Noman', '', '79  Siddeswari road. Aru alo F# C-6', 'Digital Box', 'Dhaka', '2937978042', '1217', '01712867608', 'Mr. Noman', '79  Siddeswari road. Aru alo F# C-6', 'Digital Box', 'Dhaka', '2937978042', '1217'),
(77, 'Mr. Suman', '', '79/1  Siddeswari road. aru nima F# 6-A', 'Digital Box', 'Dhaka', '2937981098', '1217', '01717986131', 'Mr. Suman', '79/1  Siddeswari road. aru nima F# 6-A', 'Digital Box', 'Dhaka', '2937981098', '1217'),
(78, 'Mrs. Nazma', '', '2 Siddeswari Road, domino F# A-3', 'Digital Box', 'Dhaka', '2937975092', '1217', '01714209787', 'Mrs. Nazma', '2 Siddeswari Road, domino F# A-3', 'Digital Box', 'Dhaka', '2937975092', '1217'),
(79, 'Mr. Dr. Liton', '', '51 Siddeswari Road, 5th floor', 'Digital Box', 'Dhaka', '2937975685', '1217', '01819207880', 'Mr. Dr. Liton', '51 Siddeswari Road, 5th floor', 'Digital Box', 'Dhaka', '2937975685', '1217'),
(80, 'Mr. Bolram poddar', '', '17 New blyroad. Assod, 7th floor', 'Digital Box', 'Dhaka', '2936313673', '1217', '01671932507', 'Mr. Bolram poddar', '17 New blyroad. Assod, 7th floor', 'Digital Box', 'Dhaka', '2936313673', '1217'),
(81, 'Mr. a.h.m tarek', '', '17 New blyroad. Assod, A-3', 'Digital Box', 'Dhaka', '2941455696', '1217', '01755541445', 'Mr. a.h.m tarek', '17 New blyroad. Assod, A-3', 'Digital Box', 'Dhaka', '2941455696', '1217'),
(82, 'Mr. Reza', '', '27 Siddeswari Road, ', 'Digital Box', 'Dhaka', '2937974153', '1217', '01718555443', 'Mr. Reza', '27 Siddeswari Road, ', 'Digital Box', 'Dhaka', '2937974153', '1217'),
(83, 'Mr. Fida Hossain', '', '56-57, Siddeswari Aminabad Colony F#4-D', 'Digital Box', 'Dhaka', '2941333462', '1217', '0171', 'Mr. Fida Hossain', '56-57, Siddeswari Aminabad Colony F#4-D', 'Digital Box', 'Dhaka', '2941333462', '1217'),
(84, 'Mr. Engg. Fida hossain', '', '56-57, Siddeswari Aminabad Colony F#9-H', 'Digital Box', 'Dhaka', '2933267380', '1217', '01730300350', 'Mr. Engg. Fida hossain', '56-57, Siddeswari Aminabad Colony F#9-H', 'Digital Box', 'Dhaka', '2933267380', '1217'),
(85, 'Mrs. Afroza', '', '21 Siddeswari Road,Hope apartment f#c-1', 'Digital Box', 'Dhaka', '2941455639', '1217', '017', 'Mrs. Afroza', '21 Siddeswari Road,Hope apartment f#c-1', 'Digital Box', 'Dhaka', '2941455639', '1217'),
(86, 'Mr. Iqbal a.r.kazi', '', '95/2 Siddeswari Road, 3rd floor', 'Digital Box', 'Dhaka', '2941333916', '1217', '01776000068', 'Mr. Iqbal a.r.kazi', '95/2 Siddeswari Road, 3rd floor', 'Digital Box', 'Dhaka', '2941333916', '1217'),
(87, 'Mr.', '', '21 Siddeswari Road,Hope apartment f#', 'Digital Box', 'Dhaka', '2937979941', '1217', '01678706191', 'Mr.', '21 Siddeswari Road,Hope apartment f#', 'Digital Box', 'Dhaka', '2937979941', '1217'),
(88, 'Mr. Alauddin', '', '34 Siddeswari Road,khondokar gali', 'Digital Box', 'Dhaka', '2937980198', '1217', '01818261352', 'Mr. Alauddin', '34 Siddeswari Road,khondokar gali', 'Digital Box', 'Dhaka', '2937980198', '1217'),
(89, 'Mr. Al hazz. rafiqul islam', '', '17 New blyroad. Assot, A-1', 'Digital Box', 'Dhaka', '3128608350', '1217', '01735108719', 'Mr. Al hazz. rafiqul islam', '17 New blyroad. Assot, A-1', 'Digital Box', 'Dhaka', '3128608350', '1217'),
(90, 'Mr. Akter rahman', '', '42 Siddeswari road. Cristal garden F# A-4', 'Digital Box', 'Dhaka', '3128607381', '1217', '01816340885', 'Mr. Akter rahman', '42 Siddeswari road. Cristal garden F# A-4', 'Digital Box', 'Dhaka', '3128607381', '1217'),
(91, 'Mr. Moni', '', '68/4 Siddeswari Road, 3rd floor', 'Digital Box', 'Dhaka', '2937975747', '1217', '01670224959', 'Mr. Moni', '68/4 Siddeswari Road, 3rd floor', 'Digital Box', 'Dhaka', '2937975747', '1217'),
(92, 'Mr. Arif', '', '2 4/1Siddeswari Road, F# D-3', 'Digital Box', 'Dhaka', '2937978793', '1217', '017', 'Mr. Arif', '2 4/1Siddeswari Road, F# D-3', 'Digital Box', 'Dhaka', '2937978793', '1217'),
(93, 'Mr.', '', '17 New bely road. F#6-B', 'Digital Box', 'Dhaka', '2937975248', '1217', '01914447035', 'Mr.', '17 New bely road. F#6-B', 'Digital Box', 'Dhaka', '2937975248', '1217'),
(94, 'Mr. ASIF', '', '51 Siddeswari Road, f#3-B', 'Digital Box', 'Dhaka', '2937976545', '1217', '017', 'Mr. ASIF', '51 Siddeswari Road, f#3-B', 'Digital Box', 'Dhaka', '2937976545', '1217'),
(95, 'Mr.', '', '56-57, Siddeswari Aminabad Colony F#D-6', 'Digital Box', 'Dhaka', '2933267435', '1217', '017', 'Mr.', '56-57, Siddeswari Aminabad Colony F#D-6', 'Digital Box', 'Dhaka', '2933267435', '1217'),
(96, 'Mr. Emdadul hoq', '', '2 4/1 Siddeswari Road, faruk garden', 'Digital Box', 'Dhaka', '2941334002', '1217', '017', 'Mr. Emdadul hoq', '2 4/1 Siddeswari Road, faruk garden', 'Digital Box', 'Dhaka', '2941334002', '1217'),
(97, 'Mr.', '', '45 Siddeswari road. sun tower', 'Digital Box', 'Dhaka', '2937980253', '1217', '017', 'Mr.', '45 Siddeswari road. sun tower', 'Digital Box', 'Dhaka', '2937980253', '1217'),
(98, 'Mr. Tuhin', '', '14/16, mouchak market. commissaner', 'Digital Box', 'Dhaka', '2941337911', '1217', '01995783856', 'Mr. Tuhin', '14/16, mouchak market. commissaner', 'Digital Box', 'Dhaka', '2941337911', '1217'),
(99, 'Mr. Mahmudul hasan', '', '25 Siddeswari Road, ', 'Digital Box', 'Dhaka', '2937975458', '1217', '017', 'Mr. Mahmudul hasan', '25 Siddeswari Road, ', 'Digital Box', 'Dhaka', '2937975458', '1217'),
(100, 'Mr. Jahangir alam', '', '7 Siddeswari road. Shel tech niharica', 'Digital Box', 'Dhaka', '2937856023', '1217', '017', 'Mr. Jahangir alam', '7 Siddeswari road. Shel tech niharica', 'Digital Box', 'Dhaka', '2937856023', '1217'),
(101, 'Mr. Shamim', '', '70-71, Siddeswari road F# 701', 'Digital Box', 'Dhaka', '29379777435', '1217', '01534212088', 'Mr. Shamim', '70-71, Siddeswari road F# 701', 'Digital Box', 'Dhaka', '29379777435', '1217'),
(102, 'Mr. Nasir uddin', '', '28-29 Siddeswari lane F#C-2', 'Digital Box', 'Dhaka', '2937980713', '1217', '017', 'Mr. Nasir uddin', '28-29 Siddeswari lane F#C-2', 'Digital Box', 'Dhaka', '2937980713', '1217'),
(103, 'Mr. antara', '', 'Antara F# A-8', 'Digital Box', 'Dhaka', '2937976890', '1217', '017', 'Mr. antara', 'Antara F# A-8', 'Digital Box', 'Dhaka', '2937976890', '1217'),
(104, 'Mrs. sarmin sultana', '', '5, siddeswari ananna A-7', 'Digital Box', 'Dhaka', '3128607680', '1217', '017', 'Mrs. sarmin sultana', '5, siddeswari ananna A-7', 'Digital Box', 'Dhaka', '3128607680', '1217'),
(105, 'Mr. Ratan gupta', '', '28-29 Siddeswari lane F# B-5', 'Digital Box', 'Dhaka', '3128608325', '1217', '017', 'Mr. Ratan gupta', '28-29 Siddeswari lane F# B-5', 'Digital Box', 'Dhaka', '3128608325', '1217'),
(106, 'Mr. Moh. Ruhul Amin', '', '46 siddeswari road F#3/501', 'Digital Box', 'Dhaka', '3128600138', '1217', '017', 'Mr. Moh. Ruhul Amin', '46 siddeswari road F#3/501', 'Digital Box', 'Dhaka', '3128600138', '1217'),
(107, 'Mr. Moh. Ruhul Amin', '', '46 siddeswari road F#3/501', 'Digital Box', 'Dhaka', '3128607759', '1217', '017', 'Mr. Moh. Ruhul Amin', '46 siddeswari road F#3/501', 'Digital Box', 'Dhaka', '3128607759', '1217'),
(108, 'Mr. aminul islam', '', '42 Siddeswari road. Cristal garden F# A-4, B-4', 'Digital Box', 'Dhaka', '2937979914', '1217', '01751778188', 'Mr. aminul islam', '42 Siddeswari road. Cristal garden F# A-4, B-4', 'Digital Box', 'Dhaka', '2937979914', '1217'),
(109, 'Mr. Forkan', '', '80 Siddeswari Road', 'Digital Box', 'Dhaka', '2941455874', '1217', '017', 'Mr. Forkan', '80 Siddeswari Road', 'Digital Box', 'Dhaka', '2941455874', '1217'),
(110, 'Mr. saifur rahman', '', '5, siddeswari road f # B-12', 'Digital Box', 'Dhaka', '2937979304', '1217', '01911367920', 'Mr. saifur rahman', '5, siddeswari road f # B-12', 'Digital Box', 'Dhaka', '2937979304', '1217'),
(111, 'Mr. Dr. shohel', '', '5, siddeswari Paroma D-4', 'Digital Box', 'Dhaka', '2937974354', '1217', '01715880562', 'Mr. Dr. shohel', '5, siddeswari Paroma D-4', 'Digital Box', 'Dhaka', '2937974354', '1217'),
(112, 'Mr. Tanvir ahmed', '', '52/2, circular road', 'Digital Box', 'Dhaka', '2937976565', '1217', '01714926373', 'Mr. Tanvir ahmed', '52/2, circular road', 'Digital Box', 'Dhaka', '2937976565', '1217'),
(113, 'Mr. Ashique', '', '53, Siddeswari road, gd foor', 'Digital Box', 'Dhaka', '2937980727', '1217', '01791406303', 'Mr. Ashique', '53, Siddeswari road, gd foor', 'Digital Box', 'Dhaka', '2937980727', '1217'),
(114, 'Mr. Nadim', '', '28-29 Siddeswari lane F# B-3', 'Digital Box', 'Dhaka', '2937374830', '1217', '01671364722', 'Mr. Nadim', '28-29 Siddeswari lane F# B-3', 'Digital Box', 'Dhaka', '2937374830', '1217'),
(115, 'Mr. s.k Biswash', '', '28-29 Siddeswari lane F# C-6', 'Digital Box', 'Dhaka', '2937976870', '1217', '01990098900', 'Mr. s.k Biswash', '28-29 Siddeswari lane F# C-6', 'Digital Box', 'Dhaka', '2937976870', '1217'),
(116, 'Mr. Justice dilara jaman', '', 'Jugges Tower f # C-14', 'Digital Box', 'Dhaka', '2941337439', '1217', '017', 'Mr. Justice dilara jaman', 'Jugges Tower f # C-14', 'Digital Box', 'Dhaka', '2941337439', '1217'),
(117, 'Mr. Justice Sorawardi', '', 'Jugges Tower f # B-7', 'Digital Box', 'Dhaka', '2936318373', '1217', '017', 'Mr. Justice Sorawardi', 'Jugges Tower f # B-7', 'Digital Box', 'Dhaka', '2936318373', '1217'),
(118, 'Mr. Justice Ruhul quddus', '', 'Jugges Tower f # A-18', 'Digital Box', 'Dhaka', '2936332926', '1217', '01740389880', 'Mr. Justice Ruhul quddus', 'Jugges Tower f # A-18', 'Digital Box', 'Dhaka', '2936332926', '1217'),
(119, 'Mr. Hasan', '', '17/6, cirkit house road, Prantik', 'Digital Box', 'Dhaka', '2941337047', '1217', '017', 'Mr. Hasan', '17/6, cirkit house road, Prantik', 'Digital Box', 'Dhaka', '2941337047', '1217'),
(120, 'Mr. Al Roman', '', 'T-5, Uttara', 'Digital Box', 'Dhaka', '2941456095', '1217', '017', 'Mr. Al Roman', 'T-5, Uttara', 'Digital Box', 'Dhaka', '2941456095', '1217'),
(121, 'Mr. Hasanul hoq inu', '', 'Minister quater', 'Digital Box', 'Dhaka', '2936318335', '1217', '017', 'Mr. Hasanul hoq inu', 'Minister quater', 'Digital Box', 'Dhaka', '2936318335', '1217'),
(122, 'Mr. Riazul hoq', '', '39, minister apt', 'Digital Box', 'Dhaka', '2933267604', '1217', '017', 'Mr. Riazul hoq', '39, minister apt', 'Digital Box', 'Dhaka', '2933267604', '1217'),
(123, 'Mr. Sahidullah chowdury', '', '157 Kakrail', 'Digital Box', 'Dhaka', '2937977973', '1217', '017', 'Mr. Sahidullah chowdury', '157 Kakrail', 'Digital Box', 'Dhaka', '2937977973', '1217'),
(124, 'Mr. Sankor', '', 'Esakhan hotel', 'Digital Box', 'Dhaka', '2936230499', '1217', '017', 'Mr. Sankor', 'Esakhan hotel', 'Digital Box', 'Dhaka', '2936230499', '1217'),
(125, 'Mr. Nanda', '', 'Esakhan hotel', 'Digital Box', 'Dhaka', '2936192214', '1217', '017', 'Mr. Nanda', 'Esakhan hotel', 'Digital Box', 'Dhaka', '2936192214', '1217'),
(126, 'Mr. Khaled hasan', '', '92, Kakrail', 'Digital Box', 'Dhaka', '2941332218', '1217', '017', 'Mr. Khaled hasan', '92, Kakrail', 'Digital Box', 'Dhaka', '2941332218', '1217'),
(127, 'Mr. Khaled hasan', '', '92, Kakrail 1st floor', 'Digital Box', 'Dhaka', '2937977459', '1217', '017', 'Mr. Khaled hasan', '92, Kakrail 1st floor', 'Digital Box', 'Dhaka', '2937977459', '1217'),
(128, 'Mr. Musfiq ahmed', '', '142/1 new bely road', 'Digital Box', 'Dhaka', '2941336832', '1217', '01913959636', 'Mr. Musfiq ahmed', '142/1 new bely road', 'Digital Box', 'Dhaka', '2941336832', '1217'),
(129, 'Mr. Shapon chandra paul', '', 'Ashian-4', 'Digital Box', 'Dhaka', '2941342458', '1217', '01685878414', 'Mr. Shapon chandra paul', 'Ashian-4', 'Digital Box', 'Dhaka', '2941342458', '1217'),
(130, 'Mr. Ziaul isahak', '', 'audit bhaban, kakrail', 'Digital Box', 'Dhaka', '3128602686', '1217', '017', 'Mr. Ziaul isahak', 'audit bhaban, kakrail', 'Digital Box', 'Dhaka', '3128602686', '1217'),
(131, 'Mr. Justice zinnat ara', '', 'Jugges Tower 12', 'Digital Box', 'Dhaka', '2937977981', '1217', '017', 'Mr. Justice zinnat ara', 'Jugges Tower 12', 'Digital Box', 'Dhaka', '2937977981', '1217'),
(132, 'Mr. S.C maruf billah', '', 'Jugges Tower 2/10', 'Digital Box', 'Dhaka', '293797513363', '1217', '017', 'Mr. S.C maruf billah', 'Jugges Tower 2/10', 'Digital Box', 'Dhaka', '293797513363', '1217'),
(133, 'Mr. mustak zahid khan', '', '301, eastern park', 'Digital Box', 'Dhaka', '2941867328', '1217', '01713366789', 'Mr. mustak zahid khan', '301, eastern park', 'Digital Box', 'Dhaka', '2941867328', '1217'),
(134, 'Mr. mohiuddin ahmed', '', 'Jugges Tower 7', 'Digital Box', 'Dhaka', '2937977095', '1217', '01750839382', 'Mr. mohiuddin ahmed', 'Jugges Tower 7', 'Digital Box', 'Dhaka', '2937977095', '1217'),
(135, 'Mr. Shovon', '', '71/2, cirkit house', 'Digital Box', 'Dhaka', '2936333563', '1217', '017', 'Mr. Shovon', '71/2, cirkit house', 'Digital Box', 'Dhaka', '2936333563', '1217'),
(136, 'Mr. mridul saraniketon', '', '111/3, saraniketon', 'Digital Box', 'Dhaka', '2936258544', '1217', '017', 'Mr. mridul saraniketon', '111/3, saraniketon', 'Digital Box', 'Dhaka', '2936258544', '1217'),
(137, 'Mr. Justice ariful hoq', '', 'Jugges Tower 2 ', 'Digital Box', 'Dhaka', '2937978760', '1217', '01678706196', 'Mr. Justice ariful hoq', 'Jugges Tower 2 ', 'Digital Box', 'Dhaka', '2937978760', '1217'),
(138, 'Mr. Mshrur chowdury', '', '143/A bely road', 'Digital Box', 'Dhaka', '2937976391', '1217', '017', 'Mr. Mshrur chowdury', '143/A bely road', 'Digital Box', 'Dhaka', '2937976391', '1217'),
(139, 'Mr.', '', 'Jugges Tower 18-c', 'Digital Box', 'Dhaka', '2941333924', '1217', '017', 'Mr.', 'Jugges Tower 18-c', 'Digital Box', 'Dhaka', '2941333924', '1217'),
(140, 'Mr. Rebeka razib', '', 'Jugges Tower 8-D', 'Digital Box', 'Dhaka', '2941343284', '1217', '017', 'Mr. Rebeka razib', 'Jugges Tower 8-D', 'Digital Box', 'Dhaka', '2941343284', '1217'),
(141, 'Mr. masud', '', 'Eastern bely F #1602', 'Digital Box', 'Dhaka', '2941343211', '1217', '017', 'Mr. masud', 'Eastern bely F #1602', 'Digital Box', 'Dhaka', '2941343211', '1217'),
(142, 'Mr. masud', '', 'Eastern bely F #1602', 'Digital Box', 'Dhaka', '2941343764', '1217', '017', 'Mr. masud', 'Eastern bely F #1602', 'Digital Box', 'Dhaka', '2941343764', '1217'),
(143, 'Mr. Banana', '', 'Jugges Tower 16-A', 'Digital Box', 'Dhaka', '2941342629', '1217', '01737855492', 'Mr. Banana', 'Jugges Tower 16-A', 'Digital Box', 'Dhaka', '2941342629', '1217'),
(144, 'Mr. Iqbal hossain', '', 'central lane r #14', 'Digital Box', 'Dhaka', '2941348351', '1217', '01755576602', 'Mr. Iqbal hossain', 'central lane r #14', 'Digital Box', 'Dhaka', '2941348351', '1217'),
(145, 'Mr. Zabedul hasan', '', 'vip central house r # 14', 'Digital Box', 'Dhaka', '2941344444', '1217', '01755576602', 'Mr. Zabedul hasan', 'vip central house r # 14', 'Digital Box', 'Dhaka', '2941344444', '1217'),
(146, 'Mr. Isteak', '', '7/1 Nawratan colony', 'Digital Box', 'Dhaka', '2941348303', '1217', '0195441216', 'Mr. Isteak', '7/1 Nawratan colony', 'Digital Box', 'Dhaka', '2941348303', '1217'),
(147, 'Mr. Isteak', '', '7/1, nowraton colony', 'Digital Box', 'Dhaka', '2941349815', '1217', '01915441216', 'Mr. Isteak', '7/1, nowraton colony', 'Digital Box', 'Dhaka', '2941349815', '1217'),
(148, 'Mr. syed ashraff', '', '21 new bely road', 'Digital Box', 'Dhaka', '2937975073', '1217', '01678706196', 'Mr. syed ashraff', '21 new bely road', 'Digital Box', 'Dhaka', '2937975073', '1217'),
(149, 'Mr. syed ashraff', '', '21 new bely road', 'Digital Box', 'Dhaka', '2941867403', '1217', '01678706191', 'Mr. syed ashraff', '21 new bely road', 'Digital Box', 'Dhaka', '2941867403', '1217'),
(150, 'Mr.', '', '4, here road', 'Digital Box', 'Dhaka', '2937856027', '1217', '01913133675', 'Mr.', '4, here road', 'Digital Box', 'Dhaka', '2937856027', '1217'),
(151, 'Mr.', '', '4, here road', 'Digital Box', 'Dhaka', '2937856527', '1217', '01913133675', 'Mr.', '4, here road', 'Digital Box', 'Dhaka', '2937856527', '1217'),
(152, 'Mr.', '', '4, here road', 'Digital Box', 'Dhaka', '2937976558', '1217', '01913133675', 'Mr.', '4, here road', 'Digital Box', 'Dhaka', '2937976558', '1217'),
(153, 'Mr. yasir arafat', '', '24, bely road', 'Digital Box', 'Dhaka', '3128608507', '1217', '017', 'Mr. yasir arafat', '24, bely road', 'Digital Box', 'Dhaka', '3128608507', '1217'),
(154, 'Mr. Rafiqul bari', '', '3-H, Eastern house', 'Digital Box', 'Dhaka', '2941337543', '1217', '01711349863', 'Mr. Rafiqul bari', '3-H, Eastern house', 'Digital Box', 'Dhaka', '2941337543', '1217'),
(155, 'Mr. Ashraful kamal', '', 'Jugges Tower 3/B', 'Digital Box', 'Dhaka', '2941338368', '1217', '01731225292', 'Mr. Ashraful kamal', 'Jugges Tower 3/B', 'Digital Box', 'Dhaka', '2941338368', '1217'),
(156, 'Mr.', '', '98/1, Kakrail f #8/B', 'Digital Box', 'Dhaka', '2941342266', '1217', '017', 'Mr.', '98/1, Kakrail f #8/B', 'Digital Box', 'Dhaka', '2941342266', '1217'),
(157, 'Mr. Romen', '', 'Eastern bely F #1504', 'Digital Box', 'Dhaka', '2941334051', '1217', '017', 'Mr. Romen', 'Eastern bely F #1504', 'Digital Box', 'Dhaka', '2941334051', '1217'),
(158, 'Mr. imtiaz', '', '4, naoratan colony 1st floor', 'Digital Box', 'Dhaka', '2941348079', '1217', '01714207706', 'Mr. imtiaz', '4, naoratan colony 1st floor', 'Digital Box', 'Dhaka', '2941348079', '1217'),
(159, 'Mr.', '', '4,cikit house. eastern house c-3', 'Digital Box', 'Dhaka', '2937976075', '1217', '01678706196', 'Mr.', '4,cikit house. eastern house c-3', 'Digital Box', 'Dhaka', '2937976075', '1217'),
(160, 'Mr. Oazir uddin', '', '4/1, hoq cassel 4-B', 'Digital Box', 'Dhaka', '2937980751', '1217', '01678706196', 'Mr. Oazir uddin', '4/1, hoq cassel 4-B', 'Digital Box', 'Dhaka', '2937980751', '1217'),
(161, 'Mr. Dr. Joy', '', '94/1 hoq cassel 3-B', 'Digital Box', 'Dhaka', '2937979134', '1217', '01678706191', 'Mr. Dr. Joy', '94/1 hoq cassel 3-B', 'Digital Box', 'Dhaka', '2937979134', '1217'),
(162, 'Mrs. sahnaz parvin', '', '98/1 hoq cassel 7-A', 'Digital Box', 'Dhaka', '2936374388', '1217', '01711286398', 'Mrs. sahnaz parvin', '98/1 hoq cassel 7-A', 'Digital Box', 'Dhaka', '2936374388', '1217'),
(163, 'Mr. Nazmul hoq', '', '98/1 hoq cassel 1st floor', 'Digital Box', 'Dhaka', '2937978601', '1217', '01678706196', 'Mr. Nazmul hoq', '98/1 hoq cassel 1st floor', 'Digital Box', 'Dhaka', '2937978601', '1217'),
(164, 'Mr.', '', 'Jugges Tower 13', 'Digital Box', 'Dhaka', '2936374516', '1217', '01678706196', 'Mr.', 'Jugges Tower 13', 'Digital Box', 'Dhaka', '2936374516', '1217'),
(165, 'Mr. Masudur Rahman', '', 'Kahkesan 7', 'Digital Box', 'Dhaka', '2937975252', '1217', '01678706196', 'Mr. Masudur Rahman', 'Kahkesan 7', 'Digital Box', 'Dhaka', '2937975252', '1217'),
(166, 'Mr.', '', 'Jugges Tower 6-B', 'Digital Box', 'Dhaka', '2937980650', '1217', '01678706196', 'Mr.', 'Jugges Tower 6-B', 'Digital Box', 'Dhaka', '2937980650', '1217'),
(167, 'Mr.', '', 'Jugges Tower 5-A', 'Digital Box', 'Dhaka', '2937976209', '1217', '01678706196', 'Mr.', 'Jugges Tower 5-A', 'Digital Box', 'Dhaka', '2937976209', '1217'),
(168, 'Mr.', '', '84/5, Kakrail 5/A', 'Digital Box', 'Dhaka', '2936374474', '1217', '01678706196', 'Mr.', '84/5, Kakrail 5/A', 'Digital Box', 'Dhaka', '2936374474', '1217'),
(169, 'Mr.', '', 'Jugges Tower 6', 'Digital Box', 'Dhaka', '2937974354', '1217', '01678706196', 'Mr.', 'Jugges Tower 6', 'Digital Box', 'Dhaka', '2937974354', '1217'),
(170, 'Mr. Manik', '', 'tip top mosque', 'Digital Box', 'Dhaka', '2937977985', '1217', '01712527528', 'Mr. Manik', 'tip top mosque', 'Digital Box', 'Dhaka', '2937977985', '1217'),
(171, 'Mr.', '', 'Jugges Tower 4-B', 'Digital Box', 'Dhaka', '2933272530', '1217', '01815379046', 'Mr.', 'Jugges Tower 4-B', 'Digital Box', 'Dhaka', '2933272530', '1217'),
(172, 'Mrs. Rebeka razib', '', 'Jugges Tower 8-D', 'Digital Box', 'Dhaka', '2941343284', '1217', '01714337516', 'Mrs. Rebeka razib', 'Jugges Tower 8-D', 'Digital Box', 'Dhaka', '2941343284', '1217'),
(173, 'Mr. siblu', '', '35/5/c/1', 'Digital Box', 'Dhaka', '2941', '1217', '01678706196', 'Mr. siblu', '35/5/c/1', 'Digital Box', 'Dhaka', '2941', '1217'),
(174, 'Mr. siblu', '', '151/c ', 'Digital Box', 'Dhaka', '2941348431', '1217', '01678706196', 'Mr. siblu', '151/c ', 'Digital Box', 'Dhaka', '2941348431', '1217'),
(175, 'Mr. ashiqe', '', '153/5, santinagar', 'Digital Box', 'Dhaka', '2937977675', '1217', '01712248499', 'Mr. ashiqe', '153/5, santinagar', 'Digital Box', 'Dhaka', '2937977675', '1217'),
(176, 'Mr. siblu', '', '35/10/1, daruchiny f# 1/a', 'Digital Box', 'Dhaka', '2936318366', '1217', '01678706196', 'Mr. siblu', '35/10/1, daruchiny f# 1/a', 'Digital Box', 'Dhaka', '2936318366', '1217'),
(177, 'Mr. siblu', '', '114, building#3,f #c-6', 'Digital Box', 'Dhaka', '2941340255', '1217', '01678706196', 'Mr. siblu', '114, building#3,f #c-6', 'Digital Box', 'Dhaka', '2941340255', '1217'),
(178, 'Mr. siblu', '', 'santinagar Bagar f #a-1', 'Digital Box', 'Dhaka', '2941348589', '1217', '017', 'Mr. siblu', 'santinagar Bagar f #a-1', 'Digital Box', 'Dhaka', '2941348589', '1217'),
(179, 'Mr. kapy', '', '28, chamelibagh', 'Digital Box', 'Dhaka', '2937978671', '1217', '01622445303', 'Mr. kapy', '28, chamelibagh', 'Digital Box', 'Dhaka', '2937978671', '1217'),
(180, 'Mr. kapy/ sadekur rahman', '', '27, twoin tower', 'Digital Box', 'Dhaka', '2937978674', '1217', '01558177009', 'Mr. kapy/ sadekur rahman', '27, twoin tower', 'Digital Box', 'Dhaka', '2937978674', '1217'),
(181, 'Mr. kapy/ tawhidur rahman', 'monsurmrp@gmail.com', '12/b/8, twoin tower', 'Digital Box', 'Dhaka', '2937973188', '1217', '01678706196', 'Mr. kapy/ tawhidur rahman', '12/b/8, twoin tower', 'Digital Box', 'Dhaka', '2937973188', '1217'),
(182, 'Mr. kapy/  ehsan kabir', '', '18/a/5, twoin tower', 'Digital Box', 'Dhaka', '2941349735', '1217', '01738392471', 'Mr. kapy/  ehsan kabir', '18/a/5, twoin tower', 'Digital Box', 'Dhaka', '2941349735', '1217'),
(183, 'Mr. kapy/ azad', '', '16/b/3, twoin tower', 'Digital Box', 'Dhaka', '2937976987', '1217', '01914381270', 'Mr. kapy/ azad', '16/b/3, twoin tower', 'Digital Box', 'Dhaka', '2937976987', '1217'),
(184, 'Mr. kapy/ ajit kumar shaha', '', '8/b/4, twoin tower', 'Digital Box', 'Dhaka', '2937974032', '1217', '0167892751', 'Mr. kapy/ ajit kumar shaha', '8/b/4, twoin tower', 'Digital Box', 'Dhaka', '2937974032', '1217'),
(185, 'Mr. kapy/ safikul islam', '', '14/a/2, twoin tower', 'Digital Box', 'Dhaka', '2937978432', '1217', '01713350253', 'Mr. kapy/ safikul islam', '14/a/2, twoin tower', 'Digital Box', 'Dhaka', '2937978432', '1217'),
(186, 'Mr. kapy/ bappy', '', '28, chamelibagh', 'Digital Box', 'Dhaka', '2737980157', '1217', '01730915757', 'Mr. kapy/ bappy', '28, chamelibagh', 'Digital Box', 'Dhaka', '2737980157', '1217'),
(187, 'Mr. kapy/ bappy', '', '28, chamelibagh', 'Digital Box', 'Dhaka', '2937978681', '1217', '01730915757', 'Mr. kapy/ bappy', '28, chamelibagh', 'Digital Box', 'Dhaka', '2937978681', '1217'),
(188, 'Mr. kapy/suman', '', '14/a/1, twoin tower', 'Digital Box', 'Dhaka', '2941348597', '1217', '01752303140', 'Mr. kapy/suman', '14/a/1, twoin tower', 'Digital Box', 'Dhaka', '2941348597', '1217'),
(189, 'Mr. kapy/ sahabuudin', '', ' twoin tower', 'Digital Box', 'Dhaka', '2737981068', '1217', '01678706196', 'Mr. kapy/ sahabuudin', ' twoin tower', 'Digital Box', 'Dhaka', '2737981068', '1217'),
(190, 'Mr. kapy/ ad. kamal', '', 'twoin tower', 'Digital Box', 'Dhaka', '2941344970', '1217', '01678706196', 'Mr. kapy/ ad. kamal', 'twoin tower', 'Digital Box', 'Dhaka', '2941344970', '1217'),
(191, 'Mr. kapy/ gaibon chowdury', '', 'twoin tower', 'Digital Box', 'Dhaka', '2940333920', '1217', '01678706196', 'Mr. kapy/ gaibon chowdury', 'twoin tower', 'Digital Box', 'Dhaka', '2940333920', '1217'),
(192, 'Mr. kapy', '', '28, chamelibagh', 'Digital Box', 'Dhaka', '2937973193', '1217', '01678706191', 'Mr. kapy', '28, chamelibagh', 'Digital Box', 'Dhaka', '2937973193', '1217'),
(193, 'Mr. kornel/dr. hero', '', '44 siddeswari road F#5-a', 'Digital Box', 'Dhaka', '2941344458', '1217', '01678706191', 'Mr. kornel/dr. hero', '44 siddeswari road F#5-a', 'Digital Box', 'Dhaka', '2941344458', '1217'),
(194, 'Mr. kornel/ morshed', '', '31/1, Siddeswari Road, 2nd floor', 'Digital Box', 'Dhaka', '2941342262', '1217', '01678706191', 'Mr. kornel/ morshed', '31/1, Siddeswari Road, 2nd floor', 'Digital Box', 'Dhaka', '2941342262', '1217'),
(195, 'Mr. kornel/ porimal roy', '', '22 Siddeswari Road, monibar tower f#f-d', 'Digital Box', 'Dhaka', '2941345128', '1217', '01911810137', 'Mr. kornel/ porimal roy', '22 Siddeswari Road, monibar tower f#f-d', 'Digital Box', 'Dhaka', '2941345128', '1217'),
(196, 'Mr. kornel/ Rotan', '', '41/4,siddeswari road 4th floor', 'Digital Box', 'Dhaka', '2937975405', '1217', '01678706191', 'Mr. kornel/ Rotan', '41/4,siddeswari road 4th floor', 'Digital Box', 'Dhaka', '2937975405', '1217'),
(197, 'Mr. kornel/ mozmmel hossain', '', '24/1, Siddeswari Road 4th floor', 'Digital Box', 'Dhaka', '2937975749', '1217', '01678706191', 'Mr. kornel/ mozmmel hossain', '24/1, Siddeswari Road 4th floor', 'Digital Box', 'Dhaka', '2937975749', '1217'),
(198, 'Mr. kornel', '', '27  Siddeswari road. Doino', 'Digital Box', 'Dhaka', '2937974896', '1217', '01715013383', 'Mr. kornel', '27  Siddeswari road. Doino', 'Digital Box', 'Dhaka', '2937974896', '1217'),
(199, 'Mr. kornel/ saiful', '', '44 siddeswari road F#c-7', 'Digital Box', 'Dhaka', '2941349819', '1217', '0171484119', 'Mr. kornel/ saiful', '44 siddeswari road F#c-7', 'Digital Box', 'Dhaka', '2941349819', '1217'),
(200, 'Mr. kornel/ kabir', '', '22 Siddeswari Road, moniram tower', 'Digital Box', 'Dhaka', '2941344418', '1217', '01711051789', 'Mr. kornel/ kabir', '22 Siddeswari Road, moniram tower', 'Digital Box', 'Dhaka', '2941344418', '1217'),
(201, 'Mr. kornel/ sahid kabir', '', '22 Siddeswari Road, monigan tower ', 'Digital Box', 'Dhaka', '2937974185', '1217', '01715103383', 'Mr. kornel/ sahid kabir', '22 Siddeswari Road, monigan tower ', 'Digital Box', 'Dhaka', '2937974185', '1217'),
(202, 'Mr. siplu/ Mahmudul hoq', '', '35/10/1, daruchiny ', 'Digital Box', 'Dhaka', '2936318366', '1217', '01740937287', 'Mr. siplu/ Mahmudul hoq', '35/10/1, daruchiny ', 'Digital Box', 'Dhaka', '2936318366', '1217'),
(203, 'Mr. Upal', '', '64/2, siddeswari cicular road', 'Digital Box', 'Dhaka', '2937979661', '1217', '01678706196', 'Mr. Upal', '64/2, siddeswari cicular road', 'Digital Box', 'Dhaka', '2937979661', '1217'),
(204, 'Mr. Upal/ mannan', '', '64/2, siddeswari cicular road', 'Digital Box', 'Dhaka', '2937975186', '1217', '01678706191', 'Mr. Upal/ mannan', '64/2, siddeswari cicular road', 'Digital Box', 'Dhaka', '2937975186', '1217'),
(205, 'Mr. Upal/ akkas', '', '68/4 Siddeswari Rood', 'Digital Box', 'Dhaka', '2937974052', '1217', '01782772922', 'Mr. Upal/ akkas', '68/4 Siddeswari Rood', 'Digital Box', 'Dhaka', '2937974052', '1217'),
(206, 'Mr. Upal/ safiur rahman', '', '64/2, siddeswari cicular road', 'Digital Box', 'Dhaka', '2937856115', '1217', '01711284763', 'Mr. Upal/ safiur rahman', '64/2, siddeswari cicular road', 'Digital Box', 'Dhaka', '2937856115', '1217'),
(207, 'Mr. Upal/ m.a latif', '', '64/2, siddeswari cicular road', 'Digital Box', 'Dhaka', '2937979733', '1217', '017035443746', 'Mr. Upal/ m.a latif', '64/2, siddeswari cicular road', 'Digital Box', 'Dhaka', '2937979733', '1217'),
(208, 'Mr. Upal/ a. salam', '', '64/2, siddeswari cicular road', 'Digital Box', 'Dhaka', '2937976537', '1217', '01984348744', 'Mr. Upal/ a. salam', '64/2, siddeswari cicular road', 'Digital Box', 'Dhaka', '2937976537', '1217'),
(209, 'Mr. Upal/ asfraful hasan', '', '64/2, siddeswari cicular road', 'Digital Box', 'Dhaka', '2937974402', '1217', '01611542663', 'Mr. Upal/ asfraful hasan', '64/2, siddeswari cicular road', 'Digital Box', 'Dhaka', '2937974402', '1217'),
(210, 'Mr. Upal/  mobassher ahmed', '', '64/2, siddeswari cicular road', 'Digital Box', 'Dhaka', '2937976564', '1217', '01817051561', 'Mr. Upal/  mobassher ahmed', '64/2, siddeswari cicular road', 'Digital Box', 'Dhaka', '2937976564', '1217'),
(211, 'Mr. Upal/ nipu', '', '44 siddeswari road ', 'Digital Box', 'Dhaka', '2937978534', '1217', '01678706191', 'Mr. Upal/ nipu', '44 siddeswari road ', 'Digital Box', 'Dhaka', '2937978534', '1217'),
(212, 'Mr. Upal/ nipu', '', '44 siddeswari road ', 'Digital Box', 'Dhaka', '2937978534', '1217', '01678706191', 'Mr. Upal/ nipu', '44 siddeswari road ', 'Digital Box', 'Dhaka', '2937978534', '1217'),
(213, 'Mr. kapy/ gebon chowdhury', '', '10/a/5 twoin tower', 'Digital Box', 'Dhaka', '2941344970', '1217', '01678706191', 'Mr. kapy/ gebon chowdhury', '10/a/5 twoin tower', 'Digital Box', 'Dhaka', '2941344970', '1217'),
(214, 'Mr. kapy/ ad. kamal', '', '8/a/7, twoin tower', 'Digital Box', 'Dhaka', '2941333920', '1217', '01678706191', 'Mr. kapy/ ad. kamal', '8/a/7, twoin tower', 'Digital Box', 'Dhaka', '2941333920', '1217'),
(215, 'Julfikar', 'jewel1027cse@gmail.com', 'Merul Badda', 'Digital Box', 'Dhaka', 'C 25869', '5840', '01639568965', 'Julfikar', 'Merul Badda', 'Digital Box', 'Dhaka', 'C 25869', '5840'),
(216, 'Hasan Sarkar', '', 'Dhka 1230', 'Cable', 'Dhaka', '25896358', '1230', '01956369863', 'Hasan Sarkar', 'Dhka 1230', 'Cable', 'Dhaka', '25896358', '1230'),
(217, 'Rafi Islam', '', 'Shantinagar', 'Digital', 'Dhaka', '456321', '1217', '018563256', 'Rafi Islam', 'Shantinagar', 'Digital', 'Dhaka', '456321', '1217');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `phone`, `password`) VALUES
(1, 'Jewel sarkar', 'developerADMIN', 'admin@admin.info', '01950819115', '1a9792104e24fa6500886c9dad19252f'),
(2, 'staradmin', 'staradmin', 'staradmin@gmail.com', '017', '3e713e8f5222e3520eb0859fe04a215c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `store_customers`
--
ALTER TABLE `store_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=995;

--
-- AUTO_INCREMENT for table `store_customers`
--
ALTER TABLE `store_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
