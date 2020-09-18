-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2020 at 04:34 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deped`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cat`
--

CREATE TABLE `tbl_cat` (
  `cat_id` int(11) NOT NULL,
  `cat_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cat`
--

INSERT INTO `tbl_cat` (`cat_id`, `cat_desc`) VALUES
(1, 'Sedan'),
(2, 'Van');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_con`
--

CREATE TABLE `tbl_con` (
  `con_id` int(11) NOT NULL,
  `con_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_con`
--

INSERT INTO `tbl_con` (`con_id`, `con_desc`) VALUES
(1, 'Working'),
(2, 'Condemed');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `emp_id` int(11) NOT NULL,
  `emp_fname` varchar(100) NOT NULL,
  `emp_mname` varchar(100) NOT NULL,
  `emp_lname` varchar(100) NOT NULL,
  `pos_id` int(11) NOT NULL COMMENT '1 - Admin;\r\n2 - Security\r\n3 - Accounting',
  `off_id` int(11) NOT NULL,
  `emp_un` varchar(100) NOT NULL,
  `emp_pass` varchar(40) NOT NULL,
  `type_id` int(11) NOT NULL,
  `emp_at_deped` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`emp_id`, `emp_fname`, `emp_mname`, `emp_lname`, `pos_id`, `off_id`, `emp_un`, `emp_pass`, `type_id`, `emp_at_deped`) VALUES
(37, 'Winnie', 'Alterado', 'Damayo', 2, 1, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 2, 1),
(38, 'Reyvelyn', 'Ybanez', 'Viovicente', 2, 2, 'user1', '24c9e15e52afc47c225b757e7bee1f9d', 2, 1),
(39, 'Angel', 'Noidea', 'Locsin', 1, 1, 'angel_locsin', '86cd607ba94a7dc9bb3a0baf1d4c1926', 2, 1),
(40, 'Julia', 'Padilla', 'Barreto', 2, 2, 'Julia_Barreto', 'c87cac2c4079f860c8e0c8075ba4ae33', 2, 0),
(43, 'abakada', 'ee', 'gahaaja', 1, 1, '21313_2222', '65ac1cb0d396486f1d2bae5310bddb67', 3, 0),
(44, 'Rub', 'Aaa', 'Comedero', 2, 2, 'rub_comedero', '2c346f9df8cba24a0f2e985374ec2cd9', 3, 0),
(48, 'John', ' ', 'Dough', 1, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 1),
(49, 'Kris', 'A', 'Gaw', 2, 1, 'accounting', 'd4c143f004d88b7286e6f999dea9d0d7', 3, 1),
(50, 'Security', 'S', 'Security', 2, 1, 'security', 'e91e6348157868de9dd8b25c81aebfb9', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_emp_type`
--

CREATE TABLE `tbl_emp_type` (
  `type_id` int(11) NOT NULL,
  `type_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_emp_type`
--

INSERT INTO `tbl_emp_type` (`type_id`, `type_desc`) VALUES
(1, 'Admin'),
(2, 'Security'),
(3, 'Accounting');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item`
--

CREATE TABLE `tbl_item` (
  `item_id` int(11) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_serno` varchar(50) NOT NULL,
  `item_modno` varchar(50) NOT NULL,
  `item_brand` varchar(50) NOT NULL,
  `item_amount` varchar(50) NOT NULL,
  `item_purdate` date NOT NULL,
  `emp_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `con_id` int(11) NOT NULL DEFAULT 4,
  `status_id` int(11) NOT NULL DEFAULT 4,
  `owner_address` varchar(50) NOT NULL,
  `rfid_code` varchar(50) NOT NULL,
  `vehicle_sticker_type` varchar(50) NOT NULL,
  `vehicle_sticker_number` varchar(50) NOT NULL,
  `vehicle_sticker_expiration` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_item`
--

INSERT INTO `tbl_item` (`item_id`, `account_number`, `item_name`, `item_serno`, `item_modno`, `item_brand`, `item_amount`, `item_purdate`, `emp_id`, `cat_id`, `con_id`, `status_id`, `owner_address`, `rfid_code`, `vehicle_sticker_type`, `vehicle_sticker_number`, `vehicle_sticker_expiration`) VALUES
(1, '12345', 'ABC2159', 'Yellow', 'Hyundai', 'Tucson ', 'Tom Cruise', '0000-00-00', 39, 1, 1, 4, '211 Pili Rd. ', '88818', 'Yellow', '82', ''),
(2, '256512', 'AAD1111', 'Brown', 'Maserati', 'Ghibli', 'Brad Pitt', '0000-00-00', 38, 1, 1, 4, '456 Durian Loop', '64128', 'Yellow', '50', ''),
(3, '60005268', 'NCH7257', 'Metallic Gray', 'Ford', 'Everest 2016', 'Manzanilla  Chito / Socorro', '0000-00-00', 49, 1, 1, 4, '72 Durian', '20365406', 'Green', '', ''),
(4, '60005268', 'NAU2838', 'Midnight Burgundy', 'Honda', 'Civic RS Turbo 2017', 'Manzanilla Chito / Socorro', '0000-00-00', 49, 1, 1, 4, '72 Durian', '20439116', 'Green', '', ''),
(5, '60005268', 'DAZ7650', 'Silver Metallic', 'Mitsubishi', 'Xpander 2019', 'Manzanilla Chito / Socorro', '0000-00-00', 49, 1, 1, 4, '72 Durian', '20628750', 'Green', '', ''),
(6, '60004393', 'ZML435', 'Silver', 'Honda', 'CRV', 'Diaz  Ma. Esperanza', '0000-00-00', 49, 1, 1, 4, '29 Piña', '20216423', 'Green', '', ''),
(7, '60005819', 'NAR6344', 'Bronze', 'Toyota', 'Fortuner', 'Juco  Dorotea Susana', '0000-00-00', 49, 1, 1, 4, '30 Dalandan Loop', '20439046', 'Green', '', ''),
(8, '60004961', 'UHQ674', 'Black', 'Toyota', 'Hi-Ace Grandia', 'Gonzalez  Eugenio Manuel / Ma. Christina Gonzalez', '0000-00-00', 49, 1, 1, 4, '38 Aratiles', '20503884', 'Yellow', '', ''),
(9, '60004961', 'ZCK160', 'Green', 'Toyota', 'Innova', 'Gonzalez  Eugenio Manuel / Ma. Christina Gonzalez', '0000-00-00', 49, 1, 1, 4, '38 Aratiles', '20628242', 'Green', '', ''),
(10, '60004961', 'NAU1099', 'Black', 'Honda', 'BRV', 'Gonzalez  Eugenio Manuel / Ma. Christina Gonzalez', '0000-00-00', 49, 1, 1, 4, '38 Aratiles', '20628240', 'Green', '', ''),
(11, '60004961', 'NAT5963', 'Gray Metallic', 'Toyota', 'Fortuner', 'Gonzalez  Eugenio Manuel / Ma. Christina Gonzalez', '0000-00-00', 49, 1, 1, 4, '38 Aratiles', '20628241', 'Green', '', ''),
(12, '60004961', 'ZCJ110', 'Dark Gray', 'Toyota', 'Innova', 'Gonzalez  Eugenio Manuel / Ma. Christina Gonzalez', '0000-00-00', 49, 1, 1, 4, '38 Aratiles', '', 'Yellow', '', ''),
(13, '60004537', 'NAT5359', 'Silver', 'Ford', 'Everest', 'Belgira  Dennis / Ma. Theresa', '0000-00-00', 49, 1, 1, 4, '109 Lanzones Drive', '20216694', 'Green', '', ''),
(14, '60004537', 'PLO400', 'Gray', 'Honda', 'CRV', 'Belgira  Dennis / Ma. Theresa', '0000-00-00', 49, 1, 1, 4, '109 Lanzones Drive', '20214151', 'Green', '', ''),
(15, '60004537', 'XHE128', 'Blue', 'Mitsubishi', 'Pajero', 'Belgira  Dennis / Ma. Theresa', '0000-00-00', 49, 1, 1, 4, '109 Lanzones Drive', '20216696', 'Yellow', '', ''),
(16, '60023216', 'NEA1920', 'Blue', 'Mazda', 'CX9', 'Jugo  Jose Juan / Raquel', '0000-00-00', 49, 1, 1, 4, '1 Limon', '20628466', 'Green', '', ''),
(17, '60023216', 'UQP267', 'White', 'Honda', 'CRV', 'Jugo  Jose Juan / Raquel', '0000-00-00', 49, 1, 1, 4, '1 Limon', '20628179', 'Green', '', ''),
(18, '60023216', 'NBT3076', 'Black', 'Subaru', 'Forester', 'Jugo  Jose Juan / Raquel', '2020-09-16', 49, 1, 1, 4, '1 Limon', '0', 'Green', '0', ''),
(19, '60023078', 'UUU99', 'White Pearl', 'Toyota', 'Hi-Ace', 'Habla  Ron Richard / Melaine', '0000-00-00', 49, 1, 1, 4, '2 Banana', '20221435', 'Green', '', ''),
(20, '60023078', 'VV4999', '', 'Isuzu', 'Trooper', 'Habla  Ron Richard / Melaine', '0000-00-00', 49, 1, 1, 4, '2 Banana', '20221434', 'Green', '', ''),
(21, '60023078', 'B7G751', 'White', 'Mitsubishi', 'L300', 'Habla  Ron Richard / Melaine', '0000-00-00', 49, 1, 1, 4, '2 Banana', '20758931', 'Green', '', ''),
(22, '60005374', 'USP128', 'Silver', 'BMW', 'Z3', 'Ocampo  Neil / Zarah May', '0000-00-00', 49, 1, 1, 4, '16 Agoho', '20216684', 'Green', '', ''),
(23, '60005374', 'AHA7424', 'Golden Purple', 'Honda', 'CRZ', 'Ocampo  Neil / Zarah May', '0000-00-00', 49, 1, 1, 4, '16 Agoho', '20503743', 'Green', '', ''),
(24, '60005374', 'NAE9439', 'Silver', 'Honda', 'Mobilo', 'Ocampo  Neil / Zarah May', '0000-00-00', 49, 1, 1, 4, '16 Agoho', '20439271', 'Green', '', ''),
(25, '60005374', 'ATA8165', 'White', 'Mitsubishi', 'Mirage', 'Ocampo  Neil / Zarah May', '0000-00-00', 49, 1, 1, 4, '16 Agoho', '20300045', 'Green', '', ''),
(26, '60005374', 'DAD7721', 'White', 'Toyota', 'Hi-Ace Grandia', 'Ocampo  Neil / Zarah May', '0000-00-00', 49, 1, 1, 4, '16 Agoho', '20438938', 'Green', '', ''),
(27, '60008031', 'EH4930', 'Maroon', 'Kia', 'Carnival', 'Juliano  Arlene / Franco', '0000-00-00', 49, 1, 1, 4, '12 Antipolo', '20503932', 'Green', '', ''),
(28, '60008031', 'ABO9662', 'Green', 'Subaru', 'XV', 'Juliano  Arlene / Franco', '0000-00-00', 49, 1, 1, 4, '12 Antipolo', '20438926', 'Green', '', ''),
(29, '60008031', 'E1C052', 'White', 'Honda', 'CRV', 'Juliano  Arlene / Franco', '0000-00-00', 49, 1, 1, 4, '12 Antipolo', '20628204', 'Green', '', ''),
(30, '60005199', 'PNQ320', 'Silver', 'Mercedez Benz', '', 'Carrion Ramon / Christopher', '0000-00-00', 49, 1, 1, 4, '34 Durian', '20758854', 'n/a', '', ''),
(31, '60005199', 'C2T86', 'Diffused Silver', 'Ford', 'Everest', 'Carrion Ramon / Christopher', '0000-00-00', 49, 1, 1, 4, '34 Durian', '20628766', 'n/a', '', ''),
(32, '60005199', 'ZJR234', 'Blue', 'Mitsubishi', 'Strada', 'Carrion Ramon / Christopher', '0000-00-00', 49, 1, 1, 4, '34 Durian', '', 'n/a', '', ''),
(33, '60005199', 'JCA700', 'Green', 'Ford', 'E150', 'Carrion Ramon / Christopher', '0000-00-00', 49, 1, 1, 4, '34 Durian', '20628767', 'n/a', '', ''),
(34, '60005271', 'XPW228', 'Red', 'Mitsubishi', 'Pajero', 'Eduardo / Alma PeÃ±a', '0000-00-00', 49, 1, 1, 4, '5 Durian Loop', '20221682', 'Green', '', ''),
(35, '60005271', 'RMN153', 'Beige', 'Toyota', 'Fortuner', 'Eduardo / Alma PeÃ±a', '0000-00-00', 49, 1, 1, 4, '5 Durian Loop', '20628403', 'Green', '', ''),
(36, '60005040', 'NAY2504', 'Burgundy', 'Honda', 'Civic', 'Frejas  Virgilio', '0000-00-00', 49, 1, 1, 4, '223 Sampaloc Drive', '20628336', 'Green', '', ''),
(37, '60005040', 'ARA7419', 'White', 'Honda', 'Odyssey', 'Frejas  Virgilio', '0000-00-00', 49, 1, 1, 4, '223 Sampaloc Drive', '20330617', 'Green', '', ''),
(38, '60004780', 'UJQ566', 'White', 'Honda', 'Jazz', 'Pfleider  Elsie Louise', '0000-00-00', 49, 1, 1, 4, '59 Kasaflora Loop', '20503982', 'Green', '', ''),
(39, '60004780', 'ABE3813', 'Brown', 'Chevy', 'Trailblazer', 'Pfleider  Elsie Louise', '0000-00-00', 49, 1, 1, 4, '59 Kasaflora Loop', '20503972', 'Green', '', ''),
(40, '60007669', 'AIR21', 'White', 'Toyota', 'Land Cruiser', 'Pangan  Reuben San Jose / Devora', '0000-00-00', 49, 1, 1, 4, '60 Aratiles', '20438850', 'Green', '', ''),
(41, '60007669', 'NGI526', 'Yellow', 'Mazda', 'MX5', 'Pangan  Reuben San Jose / Devora', '0000-00-00', 49, 1, 1, 4, '60 Aratiles', '20265479', 'Green', '', ''),
(42, '60007669', 'NOB908', 'Red', 'Toyota', 'Innova', 'Pangan  Reuben San Jose / Devora', '0000-00-00', 49, 1, 1, 4, '60 Aratiles', '20438816', 'Green', '', ''),
(43, '60007669', 'VAO987', 'Gray', 'Nissan', 'Xtrail', 'Pangan  Reuben San Jose / Devora', '0000-00-00', 49, 1, 1, 4, '60 Aratiles', 'x', 'Green', '', ''),
(44, '60007669', 'UHI833', 'Dark Blue', 'Toyota', 'Fortuner', 'Pangan  Reuben San Jose / Devora', '0000-00-00', 49, 1, 1, 4, '60 Aratiles', '20216674', 'Yellow', '', ''),
(45, '60007669', 'PIG402', 'Black', 'Ford', 'Everest', 'Pangan  Reuben San Jose / Devora', '0000-00-00', 49, 1, 1, 4, '60 Aratiles', '20216675', 'Yellow', '', ''),
(46, '60007746', 'NCW4780', 'Silver', 'Mitsubishi', 'Montero', 'Rull-Svenningsen', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', 'n', 'n/a', '', ''),
(47, '60004380', 'NAY7635', 'White', 'Toyota', 'Land Cruiser', 'Calinisan  Michael', '0000-00-00', 49, 1, 1, 4, '9 Lanzones', '20628156', 'Green', '', ''),
(48, '60004380', 'DAN4788', 'Black', 'Toyota', 'Super Grandia', 'Calinisan  Michael', '0000-00-00', 49, 1, 1, 4, '9 Lanzones', 'x', 'Green', '', ''),
(49, '60004380', 'NCG2937', 'White', 'BMW', 'X6', 'Calinisan  Michael', '0000-00-00', 49, 1, 1, 4, '9 Lanzones', '20628596', 'Green', '', ''),
(50, '60004380', 'AJA7266', 'Silver', 'Mercedez Benz', 'SLK350', 'Calinisan  Michael', '0000-00-00', 49, 1, 1, 4, '9 Lanzones', '20628222', 'Green', '', ''),
(51, '60004380', 'NAF4257', 'Orange', 'Ford', 'Ranger', 'Calinisan  Michael', '0000-00-00', 49, 1, 1, 4, '9 Lanzones', '20628708', 'Green', '', ''),
(52, '60004380', 'NOQ9921', 'White', 'Toyota', 'Hilux', 'Calinisan  Michael', '0000-00-00', 49, 1, 1, 4, '9 Lanzones', 'x', 'Green', '', ''),
(53, '60004380', 'NAB7137', 'Black', 'Ford', 'Ecosport', 'Calinisan  Michael', '0000-00-00', 49, 1, 1, 4, '9 Lanzones', '20628149', 'Green', '', ''),
(54, '60004380', 'NBH2270', 'Gray', 'Ford', 'Ranger', 'Calinisan  Michael', '0000-00-00', 49, 1, 1, 4, '9 Lanzones', '20628147', 'Green', '', ''),
(55, '60004380', '314687', 'White', 'BMW', 'GSA R1200', 'Calinisan  Michael', '0000-00-00', 49, 1, 1, 4, '9 Lanzones', '20628677', 'Green', '', ''),
(56, '60005085', 'TIU950', 'Black', 'Toyota', 'Camry', 'Novicio  Noel / Dorothy', '0000-00-00', 49, 1, 1, 4, '7 Sapphire', '20217676', 'Green', '', ''),
(57, '60005085', 'PAD245', 'Maroon', 'Toyota', 'Innova', 'Novicio  Noel / Dorothy', '0000-00-00', 49, 1, 1, 4, '7 Sapphire', 'x', 'Green', '', ''),
(58, '60003992', 'NAP8903', 'White', 'Toyota', 'Land Cruiser', 'Co  Jimmy / Shiela', '0000-00-00', 49, 1, 1, 4, '34 Rambutan', '20503940', 'n/a', '', ''),
(59, '60003992', 'P7B764', 'Pearl', 'Toyota', 'Hi-Ace', 'Co  Jimmy / Shiela', '0000-00-00', 49, 1, 1, 4, '34 Rambutan', '20758840', 'n/a', '', ''),
(60, '60003992', 'A5LA132858', 'Gray', 'Toyota', 'Hilux', 'Co  Jimmy / Shiela', '0000-00-00', 49, 1, 1, 4, '34 Rambutan', 'x', 'n/a', '', ''),
(61, '60003992', 'NEB3139', 'Black', 'Ford', 'Ranger', 'Co  Jimmy / Shiela', '0000-00-00', 49, 1, 1, 4, '34 Rambutan', 'x', 'n/a', '', ''),
(62, '60003992', 'VN2784', 'White', 'Toyota', 'FJ Cruiser', 'Co  Jimmy / Shiela', '0000-00-00', 49, 1, 1, 4, '34 Rambutan', '20439221', 'n/a', '', ''),
(63, '60003992', 'WPO653', 'Silver', 'Subaru', 'Forester', 'Co  Jimmy / Shiela', '0000-00-00', 49, 1, 1, 4, '34 Rambutan', '20504179', 'n/a', '', ''),
(64, '60005001', 'NAQ5580', 'Silver', 'Subaru', 'XV', 'Guce  Cecilia', '0000-00-00', 49, 1, 1, 4, '29 Aratiles', '20503933', 'Green', '', ''),
(65, '60005001', 'ASA2916', 'Silver', 'Ford', 'Ecosport', 'Guce  Cecilia', '0000-00-00', 49, 1, 1, 4, '29 Aratiles', '20300102', 'Green', '', ''),
(66, '60005390', 'NCE7705', 'White', 'Subaru', 'Forester', 'Miranda  Noel / Mary Elizabeth', '0000-00-00', 49, 1, 1, 4, '10 Aralia', '20365434', 'Green', '', ''),
(67, '60005390', 'NBI9058', 'Red', 'Subaru', 'Levorg', 'Miranda  Noel / Mary Elizabeth', '0000-00-00', 49, 1, 1, 4, '10 Aralia', '20503752', 'Green', '', ''),
(68, '60005390', 'BDV261', 'Blue', 'Subaru', 'Forester', 'Miranda  Noel / Mary Elizabeth', '0000-00-00', 49, 1, 1, 4, '10 Aralia', '20504193', 'Green', '', ''),
(69, '60005661', 'ZSV116', 'Silver', 'Toyota', 'Fortuner', 'Ramos  Michael', '0000-00-00', 49, 1, 1, 4, '25 Canistel', '20214093', 'Green', '', ''),
(70, '60005661', 'DDM1956', 'Silver', 'Toyota', 'Fortuner', 'Ramos  Michael', '0000-00-00', 49, 1, 1, 4, '25 Canistel', '20365345', 'Green', '', ''),
(71, '60005054', 'NCP8333', 'Silver', 'Toyota', 'Innova', 'Villareal  Marvilito', '0000-00-00', 49, 1, 1, 4, '12 Aratiles', '20503742', 'Green', '', ''),
(72, '60005054', 'UQH264', 'Beige', 'Toyota', 'Vios', 'Villareal  Marvilito', '0000-00-00', 49, 1, 1, 4, '12 Aratiles', '20210873', 'Green', '', ''),
(73, '60005054', 'TKO945', 'Dart Gray', 'Mitsubishi', 'Lancer', 'Villareal  Marvilito', '0000-00-00', 49, 1, 1, 4, '12 Aratiles', '20210872', 'Green', '', ''),
(74, '60005054', 'ZSP918', 'Beige', 'Toyota', 'Innova', 'Villareal  Marvilito', '0000-00-00', 49, 1, 1, 4, '12 Aratiles', '20221384', 'Green', '', ''),
(75, '3000010903', 'WOD875', 'Green', 'MG', 'RX%', 'Platz  Aileen', '0000-00-00', 49, 1, 1, 4, 'Prominence 2', '20628495', 'Green', '', ''),
(76, '60005080', 'BIS078', 'Gray', 'Mitsubishi', 'Montero', 'Sivaprasad Reddy', '0000-00-00', 49, 1, 1, 4, '19 Marang', '20503846', 'Green', '', ''),
(77, '60004701', 'UQZ422', 'White', 'Honda', 'CRV', 'King  Sandra', '0000-00-00', 49, 1, 1, 4, '12 Sampaloc Place', '20220892', 'Green', '', ''),
(78, '60004701', 'ABG8169', 'Black', 'Mazda', 'CX9', 'King  Sandra', '0000-00-00', 49, 1, 1, 4, '12 Sampaloc Place', '20365323', 'Green', '', ''),
(79, '60022913', 'NQC168', 'White', 'BMW', '3 Series', 'Chua  Henry (Bathalami)', '0000-00-00', 49, 1, 1, 4, '62 Granadilia', '20221690', 'Green', '', ''),
(80, '60022913', 'NDE3233', 'Black', 'Peugeot', 'Expert Tepee', 'Chua  Henry (Bathalami)', '0000-00-00', 49, 1, 1, 4, '62 Granadilia', '20439242', 'Green', '', ''),
(81, '60022913', 'NAZ8310', 'Brown', 'Audi', 'Q7', 'Chua  Henry (Bathalami)', '0000-00-00', 49, 1, 1, 4, '62 Granadilia', '20504019', 'Green', '', ''),
(82, '60022913', 'NBO2106', 'Gray', 'Toyota', 'Fortuner', 'Chua  Henry (Bathalami)', '0000-00-00', 49, 1, 1, 4, '62 Granadilia', '20628275', 'Green', '', ''),
(83, '60005674', 'DAI7130', 'Black', 'Ford', 'Explorer', 'Castro  Salvador / Luisa', '0000-00-00', 49, 1, 1, 4, '29 Daligan', '20628440', 'n/a', '', ''),
(84, '60005674', 'NBP8425', 'White', 'Toyota', 'Fortuner', 'Castro  Salvador / Luisa', '0000-00-00', 49, 1, 1, 4, '29 Daligan', '20628441', 'n/a', '', ''),
(85, '60005674', 'NAD1987', 'Silver', 'Toyota', 'Fortuner', 'Castro  Salvador / Luisa', '0000-00-00', 49, 1, 1, 4, '29 Daligan', 'x', 'n/a', '', ''),
(86, '60005306', 'NCV5180', 'White', 'Toyota', 'Hi-Ace Grandia', 'Ramos  Raul', '0000-00-00', 49, 1, 1, 4, '16 Durian Loop', '20503848', 'Green', '', ''),
(87, '60005306', 'NSR22', 'White', 'Ford', 'Explorer', 'Ramos  Raul', '0000-00-00', 49, 1, 1, 4, '16 Durian Loop', '20365382', 'Green', '', ''),
(88, '60005306', 'RER33', 'White', 'Ford', 'Ranger', 'Ramos  Raul', '0000-00-00', 49, 1, 1, 4, '16 Durian Loop', '20216387', 'Yellow', '', ''),
(89, '60005306', 'DAF7892', 'Jade Metallic', 'Toyota', 'Vios', 'Ramos  Raul', '0000-00-00', 49, 1, 1, 4, '16 Durian Loop', '20503704', 'Yellow', '', ''),
(90, '60004958', 'UHO499', 'Silver', 'Lexus', 'ES 350', 'Gabor  Allan Jae / Melissa', '0000-00-00', 49, 1, 1, 4, '18 Dalanghita Drive', '20758857', 'Green', '', ''),
(91, '60004958', 'PVO503', 'Dark Gray', 'Honda', 'Accord', 'Gabor  Allan Jae / Melissa', '0000-00-00', 49, 1, 1, 4, '18 Dalanghita Drive', '20628667', 'Green', '', ''),
(92, '60004958', 'NBN7384', 'White Pearl', 'Toyota', 'Hi-Ace Grandia', 'Gabor  Allan Jae / Melissa', '0000-00-00', 49, 1, 1, 4, '18 Dalanghita Drive', '20330562', 'Green', '', ''),
(93, '60004958', 'EF7655', 'Gray', 'Kia', 'Sportage', 'Gabor  Allan Jae / Melissa', '0000-00-00', 49, 1, 1, 4, '18 Dalanghita Drive', 'x', 'Green', '', ''),
(94, '60004958', 'AAL6915', 'White', 'Toyota', 'Wigo', 'Gabor  Allan Jae / Melissa', '0000-00-00', 49, 1, 1, 4, '18 Dalanghita Drive', '20628360', 'Yellow', '', ''),
(95, '60004958', 'GOY482', 'Silver', 'Suzuki', 'Apv', 'Gabor  Allan Jae / Melissa', '0000-00-00', 49, 1, 1, 4, '18 Dalanghita Drive', '20221436', 'Yellow', '', ''),
(96, '60005338', 'UKI908', 'Black', 'Audi', 'Q5', 'Tan  Jose Antonio / Sheila Uriarte', '0000-00-00', 49, 1, 1, 4, '40 Molave', '20214096', 'Green', '', ''),
(97, '60005338', '25762', 'Gray', 'Volvo', 'XC90', 'Tan  Jose Antonio / Sheila Uriarte', '0000-00-00', 49, 1, 1, 4, '40 Molave', '20214095', 'Green', '', ''),
(98, '60005338', '30875', 'Jade', 'Toyota', 'Innova', 'Tan  Jose Antonio / Sheila Uriarte', '0000-00-00', 49, 1, 1, 4, '40 Molave', '20438976', 'Green', '', ''),
(99, '60005338', 'MCM8331', 'Gray', 'Mercedez Benz', 'C180', 'Tan  Jose Antonio / Sheila Uriarte', '0000-00-00', 49, 1, 1, 4, '40 Molave', '20503784', 'Green', '', ''),
(100, '60005338', 'SMT611', 'White', 'Peugeot', '508', 'Tan  Jose Antonio / Sheila Uriarte', '0000-00-00', 49, 1, 1, 4, '40 Molave', '20221693', 'Yellow', '', ''),
(101, '60004921', 'PBO811', 'Blue', 'Ford', 'Expedition', 'Escarda  David', '0000-00-00', 49, 1, 1, 4, '32 Piko', '20216516', 'Green', '', ''),
(102, '60004921', 'NEH3427', 'Gray', 'Mazda', 'CX9', 'Escarda  David', '0000-00-00', 49, 1, 1, 4, '32 Piko', '20628294', 'Green', '', ''),
(103, '60004921', 'DAN7865', 'Gray', 'Ford', 'Ranger', 'Escarda  David', '0000-00-00', 49, 1, 1, 4, '32 Piko', '20628546', 'Green', '', ''),
(104, '60004921', 'CAC3008', 'White', 'Mazda', '2', 'Escarda  David', '0000-00-00', 49, 1, 1, 4, '32 Piko', '20628281', 'Green', '', ''),
(105, '60005584', 'DAI8446', 'Orange', 'Ford', 'Ranger', 'Cardenas  Francisco / Maria Remedios', '2020-09-14', 49, 1, 1, 4, '15 Amiling', '20628059', 'Green', '069', ''),
(106, '60005307', 'ARA1197', 'Silver', 'VW', 'Touran', 'Tapales  Angela', '0000-00-00', 49, 1, 1, 4, '9 Chesa', '20221873', 'Green', '', ''),
(107, '60005307', 'AAX8924', 'Brown Metallic', 'VW', 'Tiguan', 'Tapales  Angela', '0000-00-00', 49, 1, 1, 4, '9 Chesa', '20221733', 'Green', '', ''),
(108, '60005638', 'USQ942', 'Urban Titanium', 'Honda', 'City', 'Battad  Jaime / Rhodora', '0000-00-00', 49, 1, 1, 4, '16 Canistel Place', '20217684', 'Green', '', ''),
(109, '60005638', 'ZNB464', 'Silver Metallic', 'Toyota', 'Altis', 'Battad  Jaime / Rhodora', '0000-00-00', 49, 1, 1, 4, '16 Canistel Place', '20216383', 'Green', '', ''),
(110, '60005638', 'XTM645', 'Silver', 'Ford', 'Escape', 'Battad  Jaime / Rhodora', '0000-00-00', 49, 1, 1, 4, '16 Canistel Place', '20216385', 'Green', '', ''),
(111, '60005638', 'ZMZ969', 'Black', 'Toyota', 'Camry', 'Battad  Jaime / Rhodora', '0000-00-00', 49, 1, 1, 4, '16 Canistel Place', '20216759', 'Green', '', ''),
(112, '60022861', 'PXO909', 'Black', 'Mitsubishi', 'Pajero', 'Inciong  Jerome', '0000-00-00', 49, 1, 1, 4, '47 Granadilla', '20439302', 'Green', '', ''),
(113, '60022861', 'YHN655', 'Black', 'Kia', 'Soul', 'Inciong  Jerome', '0000-00-00', 49, 1, 1, 4, '47 Granadilla', '20439303', 'Green', '', ''),
(114, '60022861', 'PQH615', 'Black', 'Subaru', 'Forester', 'Inciong  Jerome', '0000-00-00', 49, 1, 1, 4, '47 Granadilla', 'n', 'Green', '', ''),
(115, '60005115', 'NBF9604', 'Gold Brown', 'Honda', 'City', 'Bairan  Jocelyn', '0000-00-00', 49, 1, 1, 4, '20 Lakatan', '20628331', 'Green', '', ''),
(116, '60005115', 'NAW6949', 'Orchid Pearl', 'Honda', 'BRV', 'Bairan  Jocelyn', '0000-00-00', 49, 1, 1, 4, '20 Lakatan', '20628330', 'Green', '', ''),
(117, '60005115', 'DAN7868', 'Meteor Gray', 'Ford', 'Everest', 'Bairan  Jocelyn', '0000-00-00', 49, 1, 1, 4, '20 Lakatan', '20628560', 'Green', '', ''),
(118, '60005115', 'NEA2625', 'Garde Bronze', 'Toyota', 'Fortuner', 'Bairan  Jocelyn', '0000-00-00', 49, 1, 1, 4, '20 Lakatan', '20628376', 'Green', '', ''),
(119, '60005115', 'MT9638', 'Silver', 'Hyundai', 'Accent', 'Bairan  Jocelyn', '0000-00-00', 49, 1, 1, 4, '20 Lakatan', '20628603', 'Yellow', '', ''),
(120, '60004897', 'ZRH685', 'Silver', 'Toyota', 'Innova', 'Reyes  Carmencita / Rizalito', '0000-00-00', 49, 1, 1, 4, '19 Guyabano', '20628229', 'Green', '', ''),
(121, '60005328', 'TQG205', 'Silver', 'Toyota', 'Fortuner', 'Boritzer  Maria', '0000-00-00', 49, 1, 1, 4, '5 Acacia Drive', '20438970', 'Green', '', ''),
(122, '60005328', 'NBX8873', 'Silver', 'Toyota', 'Innova', 'Boritzer  Maria', '0000-00-00', 49, 1, 1, 4, '5 Acacia Drive', '20439079', 'Green', '', ''),
(123, '60004702', 'COP253', 'White', 'Ford', 'Explorer', 'Aldaba  Emmanuel', '0000-00-00', 49, 1, 1, 4, '11 Sampaloc Place', '20628046', 'Green', '', ''),
(124, '60004702', 'UBI962', 'White', 'Ford', 'Focus', 'Aldaba  Emmanuel', '0000-00-00', 49, 1, 1, 4, '11 Sampaloc Place', '20221848', 'Green', '', ''),
(125, '60004702', 'AAM8786', 'Black', 'Ford', 'Escape', 'Aldaba  Emmanuel', '0000-00-00', 49, 1, 1, 4, '11 Sampaloc Place', 'x', 'Green', '', ''),
(126, '60004145', 'UYO236', 'Gray Metallic', 'Toyota', 'Innova', 'Latonio  Patrick Gerard', '0000-00-00', 49, 1, 1, 4, '60 Kasoy', '20330731', 'Green', '', ''),
(127, '60004145', 'DAG3824', 'Metallic Gray', 'Toyota', 'Innova', 'Latonio  Patrick Gerard', '0000-00-00', 49, 1, 1, 4, '60 Kasoy', '20503840', 'Green', '', ''),
(128, '60022914', 'DAD8413', 'Avantgarde', 'Toyota', 'Fortuner', 'Fornari  Marilou', '0000-00-00', 49, 1, 1, 4, '23 Timon', '20628047', 'Green', '', ''),
(129, '60004335', 'FJC946', 'White', 'Honda', 'CRV', 'Guieb  Roland', '0000-00-00', 49, 1, 1, 4, '12 Chico', '20365280', 'Green', '', ''),
(130, '60004335', 'NAF9717', 'White', 'Hyundai', 'Starex', 'Guieb  Roland', '0000-00-00', 49, 1, 1, 4, '12 Chico', '20438971', 'Green', '', ''),
(131, '60004335', 'NBR8557', 'Light Gray', 'Mitsubishi', 'Strada', 'Guieb  Roland', '0000-00-00', 49, 1, 1, 4, '12 Chico', 'n', 'Green', '', ''),
(132, '60004667', 'NBJ5607', 'Gray', 'Toyota', 'Fortuner', 'Pita  Patrick / Ma. Donna', '0000-00-00', 49, 1, 1, 4, '4 Sineguelas', 'x', 'Green', '', ''),
(133, '60004667', 'AAH6821', 'Blue', 'Mitsubishi', 'Montero', 'Pita  Patrick / Ma. Donna', '0000-00-00', 49, 1, 1, 4, '4 Sineguelas', '20400029', 'Green', '', ''),
(134, '60022911', 'UIB338', 'White', 'Hyundai', 'Starex', 'Tiu  Wilson', '2020-09-16', 49, 1, 1, 4, '60 Granadilla', '20216852', 'Green', '301', ''),
(135, '60022911', 'UQH436', 'Black', 'Honda', 'Jazz', 'Tiu  Wilson', '0000-00-00', 49, 1, 1, 4, '60 Granadilla', '20216851', 'Green', '', ''),
(136, '60005435', 'TQV215', 'Mica Gold', 'Toyota', 'Fortuner', 'Wong  Michael', '0000-00-00', 49, 1, 1, 4, '9 Yakal Place', '20439191', 'Green', '', ''),
(137, '60005435', 'AAL9984', 'Red', 'Mitsubishi', 'Strada', 'Wong  Michael', '0000-00-00', 49, 1, 1, 4, '9 Yakal Place', '20221717', 'Green', '', ''),
(138, '60005435', 'NED9340', 'Red', 'Suzuki', 'Vitara', 'Wong  Michael', '0000-00-00', 49, 1, 1, 4, '9 Yakal Place', '20628448', 'Green', '', ''),
(139, '60004606', 'WOW948', 'Black', 'VW', 'Tiguan', 'Mariano  Lorenzo Jr. / Estrella', '0000-00-00', 49, 1, 1, 4, '38 Sineguelas', '20221229', 'Green', '', ''),
(140, '60004606', 'POV723', 'Blue', 'Mitsubishi', 'Montero', 'Mariano  Lorenzo Jr. / Estrella', '0000-00-00', 49, 1, 1, 4, '38 Sineguelas', '20216667', 'Green', '', ''),
(141, '60004606', 'AAK2902', 'Silver', 'Mitsubishi', 'Lancer', 'Mariano  Lorenzo Jr. / Estrella', '0000-00-00', 49, 1, 1, 4, '38 Sineguelas', 'x', 'Green', '', ''),
(142, '60004606', 'EIN728', 'Modern Steel Metallic', 'Honda', 'CRV', 'Mariano  Lorenzo Jr. / Estrella', '0000-00-00', 49, 1, 1, 4, '38 Sineguelas', '20628692', 'Green', '', ''),
(143, '60004606', 'ROG206', 'White', 'Subaru', 'XV', 'Mariano  Lorenzo Jr. / Estrella', '0000-00-00', 49, 1, 1, 4, '38 Sineguelas', 'n', 'Green', '', ''),
(144, '60016176', 'MO7569', 'White', 'Hyundai', 'Sta. Fe', 'Coloquio  Roy James / Rosario', '0000-00-00', 49, 1, 1, 4, '29 Apitong', '20365352', 'Green', '', ''),
(145, '60016176', 'NON4225', 'Dark Gray', 'Mazda', 'CX9', 'Coloquio  Roy James / Rosario', '0000-00-00', 49, 1, 1, 4, '29 Apitong', '20628522', 'Green', '', ''),
(146, '60016176', 'POY847', 'Dark Gray', 'Honda', 'Accord', 'Coloquio  Roy James / Rosario', '0000-00-00', 49, 1, 1, 4, '29 Apitong', '20330612', 'Yellow', '', ''),
(147, '60016176', 'IP1492', 'Black', 'Ford', 'Everest', 'Coloquio  Roy James / Rosario', '0000-00-00', 49, 1, 1, 4, '29 Apitong', '20628290', 'Yellow', '', ''),
(148, '60005208', 'DAF7399', 'Silver', 'Toyota', 'Fortuner', 'Sigfridsson  Emily / Karl Jorgen', '0000-00-00', 49, 1, 1, 4, '17 Bayabas', '20503722', 'Green', '', ''),
(149, '60005208', 'NDL1845', 'Pearl White', 'Isuzu', 'Mux', 'Sigfridsson  Emily / Karl Jorgen', '0000-00-00', 49, 1, 1, 4, '17 Bayabas', '20628528', 'Green', '', ''),
(150, '60004326', 'NCQ8992', 'Black', 'Toyota', 'Innova', 'Ignacio  Jose Manuel', '0000-00-00', 49, 1, 1, 4, '22 Dalandan Loop', 'x', 'n/a', '', ''),
(151, '60004326', 'UQI573', 'Gray', 'Mazda', 'CX9', 'Ignacio  Jose Manuel', '0000-00-00', 49, 1, 1, 4, '22 Dalandan Loop', '20217777', 'n/a', '', ''),
(152, '60004326', 'ZSC683', '', 'Mercedez Benz', '', 'Ignacio  Jose Manuel', '0000-00-00', 49, 1, 1, 4, '22 Dalandan Loop', 'x', 'n/a', '', ''),
(153, '60004326', 'NCN2137', 'White', 'Lexus', 'NX200', 'Ignacio  Jose Manuel', '0000-00-00', 49, 1, 1, 4, '22 Dalandan Loop', 'x', 'n/a', '', ''),
(154, '60004326', 'ADA2416', '', 'Honda', 'City', 'Ignacio  Jose Manuel', '0000-00-00', 49, 1, 1, 4, '22 Dalandan Loop', 'x', 'n/a', '', ''),
(155, '60022940', 'UQG163', 'White', 'Ford', 'Focus', 'Morin  Jay Sunday', '0000-00-00', 49, 1, 1, 4, '6 Timon', '20216760', 'Green', '', ''),
(156, '60022940', 'NEH7105', 'White', 'Ford', 'Everest', 'Morin  Jay Sunday', '0000-00-00', 49, 1, 1, 4, '6 Timon', '20628416', 'Green', '', ''),
(157, '60022940', 'NBV2956', 'Black', 'Dodge', 'Durango', 'Morin  Jay Sunday', '0000-00-00', 49, 1, 1, 4, '6 Timon', '20438977', 'Green', '', ''),
(158, '60022940', 'AOA8611', 'Black', 'BMW', '520D', 'Morin  Jay Sunday', '0000-00-00', 49, 1, 1, 4, '6 Timon', '20439203', 'Green', '', ''),
(159, '60005464', 'AJA8134', 'Black', 'Ford', 'Ranger', 'Hembrador  Rogelio', '0000-00-00', 49, 1, 1, 4, '29 Yakal', '20330613', 'Green', '', ''),
(160, '60005464', '', 'White', 'Hyundai', 'Sta. Fe', 'Hembrador  Rogelio', '0000-00-00', 49, 1, 1, 4, '29 Yakal', 'x', 'Green', '', ''),
(161, '60005464', 'JMS788', 'Green', 'Nissan', 'Patrol', 'Hembrador  Rogelio', '0000-00-00', 49, 1, 1, 4, '29 Yakal', 'x', 'Green', '', ''),
(162, '60005464', 'TIS766', 'White', 'Ford', 'Explorer', 'Hembrador  Rogelio', '0000-00-00', 49, 1, 1, 4, '29 Yakal', 'x', 'Green', '', ''),
(163, '60005012', 'WEQ396', 'White', 'Ford', 'Explorer', 'Santiago  Norman Frederick / Carmen', '0000-00-00', 49, 1, 1, 4, '39 Aratiles', '20365500', 'Green', '', ''),
(164, '60005012', 'ZMJ772', 'Silver', 'Toyota', 'Fortuner', 'Santiago  Norman Frederick / Carmen', '0000-00-00', 49, 1, 1, 4, '39 Aratiles', '20221001', 'Green', '', ''),
(165, '60005012', 'WOX315', 'Gray', 'Toyota', 'Fortuner', 'Santiago  Norman Frederick / Carmen', '0000-00-00', 49, 1, 1, 4, '39 Aratiles', '20221118', 'Green', '', ''),
(166, '60005003', 'NDE7284', 'White', 'Toyota', 'Fortuner', 'Francisco  Monette / Adelmo', '0000-00-00', 49, 1, 1, 4, '31 Aratiles', '20438877', 'Green', '', ''),
(167, '60005003', 'NCW1711', 'Gray', 'Toyota', 'Fortuner', 'Francisco  Monette / Adelmo', '0000-00-00', 49, 1, 1, 4, '31 Aratiles', '20504123', 'Green', '', ''),
(168, '60005709', 'ABT5076', 'White', 'Ford', 'Explorer', 'Laman  Guillermo', '0000-00-00', 49, 1, 1, 4, '50 Kamaris', '20365530', 'Green', '', ''),
(169, '60005709', 'DCP9310', 'Gray', 'Mazda', 'CX5', 'Laman  Guillermo', '0000-00-00', 49, 1, 1, 4, '50 Kamaris', '20438840', 'Green', '', ''),
(170, '60005709', 'NAA4370', 'Blue', 'Honda', 'Civic', 'Laman  Guillermo', '0000-00-00', 49, 1, 1, 4, '50 Kamaris', '20503847', 'Green', '', ''),
(171, '60005709', 'WTC771', 'Maroon', 'Toyota', 'Altis', 'Laman  Guillermo', '0000-00-00', 49, 1, 1, 4, '50 Kamaris', '20216451', 'Green', '', ''),
(172, '60005709', 'WEQ585', 'Orange', 'Ford', 'Fiesta', 'Laman  Guillermo', '0000-00-00', 49, 1, 1, 4, '50 Kamaris', '20438818', 'Yellow', '', ''),
(173, '60004805', 'ACA7989', 'Gray', 'BMW', '520', 'Ang Santo  Lafayette / Maria Lisa', '0000-00-00', 49, 1, 1, 4, '66 Sampaloc', '20628016', 'Green', '', ''),
(174, '60004805', 'PGI560', 'Silver', 'BMW', '318', 'Ang Santo  Lafayette / Maria Lisa', '0000-00-00', 49, 1, 1, 4, '66 Sampaloc', '20628253', 'Green', '', ''),
(175, '60004805', 'PYQ936', 'Gray', 'BMW', 'X5', 'Ang Santo  Lafayette / Maria Lisa', '0000-00-00', 49, 1, 1, 4, '66 Sampaloc', '20628254', 'Green', '', ''),
(176, '60005641', 'DAD1619', 'White', 'Ford', 'Everest', 'Perasol  Reina / Dolriech', '0000-00-00', 49, 1, 1, 4, 'Canistel Place', '20628171', 'Green', '', ''),
(177, '60005641', 'UOO184', 'Black', 'Honda', 'Accord', 'Perasol  Reina / Dolriech', '0000-00-00', 49, 1, 1, 4, 'Canistel Place', '20503864', 'Green', '', ''),
(178, '60005765', 'B4E871', 'White', 'Mitsubishi', 'Montero', 'Amuan  Jesty Josef / Kiara Karla', '0000-00-00', 49, 1, 1, 4, '108 Palawan', '20628469', 'Green', '', ''),
(179, '60005765', 'ZNE146', 'Gray', 'Honda', 'Accord', 'Amuan  Jesty Josef / Kiara Karla', '0000-00-00', 49, 1, 1, 4, '108 Palawan', '20628293', 'Green', '', ''),
(180, '3000010832', 'ZNY714', 'White', 'Volvo', 'Wagon', 'Amuan  Baron / Ma. Aurelia Rufina', '0000-00-00', 49, 1, 1, 4, '1 Lipote', '20438870', 'Green', '', ''),
(181, '3000010832', 'ZPT896', 'Black', 'Honda', 'Accord', 'Amuan  Baron / Ma. Aurelia Rufina', '0000-00-00', 49, 1, 1, 4, '1 Lipote', '20438993', 'Green', '', ''),
(182, '3000010832', 'XLU707', 'Silver', 'BMW', '520i', 'Amuan  Baron / Ma. Aurelia Rufina', '0000-00-00', 49, 1, 1, 4, '1 Lipote', '20439230', 'Green', '', ''),
(183, '3000010832', 'ABF1066', 'White', 'Ford', 'Ranger', 'Amuan  Baron / Ma. Aurelia Rufina', '0000-00-00', 49, 1, 1, 4, '1 Lipote', '20365535', 'Green', '', ''),
(184, '3000010832', 'UOM922', 'White', 'Subaru', 'Forester', 'Amuan  Baron / Ma. Aurelia Rufina', '0000-00-00', 49, 1, 1, 4, '1 Lipote', '20438998', 'Yellow', '', ''),
(185, '3000010832', 'XTG904', 'Silver', 'Toyota', 'Vios', 'Amuan  Baron / Ma. Aurelia Rufina', '0000-00-00', 49, 1, 1, 4, '1 Lipote', '20628647', 'Yellow', '', ''),
(186, '60005174', 'WPK446', 'Maroon', 'Mitsubishi', 'Adventure', 'Mabagos  Raymos / Ma. Rachel', '0000-00-00', 49, 1, 1, 4, '41 Durian', '20400027', 'Green', '', ''),
(187, '60005174', 'PIB710', 'Gray', 'Mitsubishi', 'Montero', 'Mabagos  Raymos / Ma. Rachel', '0000-00-00', 49, 1, 1, 4, '41 Durian', '20300018', 'Green', '', ''),
(188, '60005174', 'ABT5116', 'Black', 'Ford', 'Ranger', 'Mabagos  Raymos / Ma. Rachel', '0000-00-00', 49, 1, 1, 4, '41 Durian', '20400028', 'Yellow', '', ''),
(189, '60005174', 'NBJ2066', 'Black', 'VW', 'Golf', 'Mabagos  Raymos / Ma. Rachel', '0000-00-00', 49, 1, 1, 4, '41 Durian', '20503844', 'Yellow', '', ''),
(190, '60005384', 'NAU3277', 'Black', 'Mitsubishi', 'Montero', 'Hortaleza  Jaime / Araceli', '0000-00-00', 49, 1, 1, 4, '3 Aralia', '20439143', 'Green', '', ''),
(191, '60004179', 'XEV192', 'Green', 'GM', 'Tahoe', 'Aldaba  Marco', '0000-00-00', 49, 1, 1, 4, '27 Pili', '20221849', 'Green', '', ''),
(192, '60004179', 'TCQ987', 'Bronze', 'Ford', 'Everest', 'Aldaba  Marco', '0000-00-00', 49, 1, 1, 4, '27 Pili', '20438915', 'Green', '', ''),
(193, '60004179', 'NCE9108', 'Gray', 'Ford', 'Everest', 'Aldaba  Marco', '0000-00-00', 49, 1, 1, 4, '27 Pili', '20365510', 'Green', '', ''),
(194, '60004179', 'WQI902', 'Orange', 'Ford', 'Fiesta', 'Aldaba  Marco', '0000-00-00', 49, 1, 1, 4, '27 Pili', 'x', 'Green', '', ''),
(195, '60004471', 'NDG5878', 'Gray', 'Toyota', 'Fortuner', 'Abu  Lorna / Efren', '0000-00-00', 49, 1, 1, 4, '9 Kamias', '20438991', 'Green', '', ''),
(196, '60004471', 'DAL4731', 'Silver', 'Toyota', 'Hilux', 'Abu  Lorna / Efren', '0000-00-00', 49, 1, 1, 4, '9 Kamias', '20628236', 'Green', '', ''),
(197, '60004471', 'ZAD709', 'Silver', 'Toyota', 'Camry', 'Abu  Lorna / Efren', '0000-00-00', 49, 1, 1, 4, '9 Kamias', '20221741', 'Yellow', '', ''),
(198, '60004471', 'TOT587', 'White', 'Honda', 'Jazz', 'Abu  Lorna / Efren', '0000-00-00', 49, 1, 1, 4, '9 Kamias', '20216410', 'Yellow', '', ''),
(199, '60004140', 'NCB3095', 'Black', 'BMW', 'X5', 'Montenegro  Rosaleo / Generosa', '0000-00-00', 49, 1, 1, 4, '50 Kasoy', '20503705', 'Green', '', ''),
(200, '60004140', 'NCD5955', 'Black', 'Hyundai', 'Starex', 'Montenegro  Rosaleo / Generosa', '0000-00-00', 49, 1, 1, 4, '50 Kasoy', '20365316', 'Green', '', ''),
(201, '60004140', 'AAZ3493', 'Red', 'Mazda', '3', 'Montenegro  Rosaleo / Generosa', '0000-00-00', 49, 1, 1, 4, '50 Kasoy', '20221664', 'Green', '', ''),
(202, '60004140', 'UAI858', 'White', 'Toyota', 'Land Cruiser', 'Montenegro  Rosaleo / Generosa', '0000-00-00', 49, 1, 1, 4, '50 Kasoy', '20217545', 'Green', '', ''),
(203, '60004140', 'NAV2122', 'Silver', 'Subaru', 'WRX', 'Montenegro  Rosaleo / Generosa', '0000-00-00', 49, 1, 1, 4, '50 Kasoy', '20217543', 'Yellow', '', ''),
(204, '60005215', 'NAQ6762', 'Silver', 'Mazda', 'Wagon', 'Alcantara  Yvonne Sarenas ', '0000-00-00', 49, 1, 1, 4, '68 Durian Drive', '20504159', 'Green', '', ''),
(205, '60005215', 'DCP5013', 'White', 'Hyundai', 'Starex', 'Alcantara  Yvonne Sarenas ', '0000-00-00', 49, 1, 1, 4, '68 Durian Drive', '20330704', 'Green', '', ''),
(206, '60005215', 'ABQ8280', 'Silver', 'Hyundai', 'Sta. Fe', 'Alcantara  Yvonne Sarenas ', '0000-00-00', 49, 1, 1, 4, '68 Durian Drive', '20438871', 'Green', '', ''),
(207, '60005215', '', '', 'Suzuki', '', 'Alcantara  Yvonne Sarenas ', '0000-00-00', 49, 1, 1, 4, '68 Durian Drive', 'x', 'Green', '', ''),
(208, '60005645', 'NCE5185', 'Alumina Jade', 'Toyota', 'Innova', 'Divina  Zeus', '0000-00-00', 49, 1, 1, 4, '6 Canistel Place', '20438962', 'Green', '', ''),
(209, '60005645', 'WDQ664', 'Black', 'Toyota', 'Vios', 'Divina  Zeus', '0000-00-00', 49, 1, 1, 4, '6 Canistel Place', '20207776', 'Green', '', ''),
(210, '60005645', 'TZO908', 'Gray', 'Nissan', 'Xtrail', 'Divina  Zeus', '0000-00-00', 49, 1, 1, 4, '6 Canistel Place', '20365267', 'Yellow', '', ''),
(211, '60005366', 'WTO178', 'White', 'Kia', 'Sorento', 'Ripoll  Sebastian', '0000-00-00', 49, 1, 1, 4, '31 Campanilla', '20221820', 'Green', '', ''),
(212, '60005366', 'NAD5009', 'Black', 'Honda', 'Odyssey', 'Ripoll  Sebastian', '0000-00-00', 49, 1, 1, 4, '31 Campanilla', '20221821', 'Green', '', ''),
(213, '60005366', 'NAX9085', 'Silver', 'Subaru', '', 'Ripoll  Sebastian', '0000-00-00', 49, 1, 1, 4, '31 Campanilla', '20628173', 'Green', '', ''),
(214, '60005366', 'DAB7407', 'Burgundy', 'Honda', 'Civic', 'Ripoll  Sebastian', '0000-00-00', 49, 1, 1, 4, '31 Campanilla', '20439224', 'Green', '', ''),
(215, '60005366', 'PVQ201', 'Titanium', 'Honda', 'CRV', 'Ripoll  Sebastian', '0000-00-00', 49, 1, 1, 4, '31 Campanilla', '20365424', 'Yellow', '', ''),
(216, '60004951', 'TOL398', 'Blue', 'Chevy', '', 'Sotto  Rodrigo', '0000-00-00', 49, 1, 1, 4, '9 Aratiles', '20221315', 'Green', '', ''),
(217, '60004826', 'NBX7821', 'Silver', 'Toyota', 'Fortuner', 'Pineda  Edison / Erika / Elaine', '0000-00-00', 49, 1, 1, 4, '48 Sampaloc', 'x', 'Green', '', ''),
(218, '60004826', 'TOB187', 'Silver', 'Toyota', 'Vios', 'Pineda  Edison / Erika / Elaine', '0000-00-00', 49, 1, 1, 4, '48 Sampaloc', '20221179', 'Green', '', ''),
(219, '60004826', 'ULO436', 'White', 'Toyota', 'Hi-Ace', 'Pineda  Edison / Erika / Elaine', '0000-00-00', 49, 1, 1, 4, '48 Sampaloc', '20217729', 'Green', '', ''),
(220, '60004826', 'ZGV490', 'Lithium', 'Toyota', 'Fortuner', 'Pineda  Edison / Erika / Elaine', '0000-00-00', 49, 1, 1, 4, '48 Sampaloc', '20217728', 'Green', '', ''),
(221, '60004826', 'AAI5123', 'Silver', 'Toyota', 'Vios', 'Pineda  Edison / Erika / Elaine', '0000-00-00', 49, 1, 1, 4, '48 Sampaloc', '20433892', 'Yellow', '', ''),
(222, '60004762', 'NCZ5687', 'Red', 'Jeep', 'Wrangler', 'Dizon  Vincent', '0000-00-00', 49, 1, 1, 4, '87 Sampaloc', '20628684', 'Green', '', ''),
(223, '60004762', 'KEO834', 'Silver', 'Audi', 'Q3', 'Dizon  Vincent', '0000-00-00', 49, 1, 1, 4, '87 Sampaloc', 'x', 'Green', '', ''),
(224, '60004762', 'KRS168', 'Blue / Silver', 'Toyota', 'RAV4', 'Dizon  Vincent', '0000-00-00', 49, 1, 1, 4, '87 Sampaloc', 'x', 'Green', '', ''),
(225, '60005785', 'DAH1872', 'Dark Green', 'Honda', 'CRV', 'Castañeda  Salvador / Samantha', '0000-00-00', 49, 1, 1, 4, '8 Kaimito Loop', '20503754', 'Green', '', ''),
(226, '60005785', 'AHA2907', 'Orange', 'Nissan', 'Navarra', 'Castañeda  Salvador / Samantha', '0000-00-00', 49, 1, 1, 4, '8 Kaimito Loop', '20330632', 'Green', '', ''),
(227, '60005785', 'POI274', 'Metal', 'Honda', 'CRV', 'Castañeda  Salvador / Samantha', '0000-00-00', 49, 1, 1, 4, '8 Kaimito Loop', '20330633', 'Green', '', ''),
(228, '60005785', 'UOO365', 'Silver', 'Mazda', 'CX5', 'Castañeda  Salvador / Samantha', '0000-00-00', 49, 1, 1, 4, '8 Kaimito Loop', '20330634', 'Green', '', ''),
(229, '60007985', 'PA8979', 'Silver', 'BMW', 'X3', 'Marcelo  Jesus Joey', '0000-00-00', 49, 1, 1, 4, '2 Tanguili Place', '20627971', 'Green', '', ''),
(230, '60007985', 'ADP4498', 'White', 'Nissan', 'Patrol', 'Marcelo  Jesus Joey', '0000-00-00', 49, 1, 1, 4, '2 Tanguili Place', '20503776', 'Green', '', ''),
(231, '60007985', 'ZSG511', 'Green', 'Porsche', 'Cayman', 'Marcelo  Jesus Joey', '0000-00-00', 49, 1, 1, 4, '2 Tanguili Place', '20758865', 'Green', '', ''),
(232, '60007985', 'XA1458', 'Silver', 'Mini Cooper', 'S', 'Marcelo  Jesus Joey', '0000-00-00', 49, 1, 1, 4, '2 Tanguili Place', '20758866', 'Green', '', ''),
(233, '60007985', 'COK593', 'Black', 'Ford', 'Ranger', 'Marcelo  Jesus Joey', '0000-00-00', 49, 1, 1, 4, '2 Tanguili Place', '20503799', 'Green', '', ''),
(234, '60007985', '', 'White', 'Toyota', 'Hi-Ace Grandia', 'Marcelo  Jesus Joey', '0000-00-00', 49, 1, 1, 4, '2 Tanguili Place', 'n', 'Green', '', ''),
(235, '60004441', 'ABT4773', 'Silver', 'Ford', 'Everest', 'Pamplona  Glenn Mark / Janice Antonette ', '0000-00-00', 49, 1, 1, 4, '14 Duhat Loop', '20628502', 'Green', '', ''),
(236, '60004441', 'NAX2634', 'Silver', 'Toyota', 'Rush', 'Pamplona  Glenn Mark / Janice Antonette ', '0000-00-00', 49, 1, 1, 4, '14 Duhat Loop', '20503981', 'Green', '', ''),
(237, '60005410', 'TIE497', 'Red', 'Hyundai', 'Genesis Coupe', 'Miranda  Liemer / Rowena ', '0000-00-00', 49, 1, 1, 4, '36 Acacia Drive', '20221087', 'Green', '', ''),
(238, '60005410', 'DAI5817', 'Silver Gray', 'Mitsubishi', 'Xpander', 'Miranda  Liemer / Rowena ', '0000-00-00', 49, 1, 1, 4, '36 Acacia Drive', '20628062', 'Green', '', ''),
(239, '60005410', 'NAD6073', 'Red', 'VW', 'Seha', 'Miranda  Liemer / Rowena ', '0000-00-00', 49, 1, 1, 4, '36 Acacia Drive', '20439004', 'Green', '', ''),
(240, '60003924', 'JGE26', 'Silver', 'Toyota', 'Land Cruiser', 'Enriquez / Antonio  II / Joyce', '0000-00-00', 49, 1, 1, 4, '62 Kamachile', '20265504', 'Green', '', ''),
(241, '60003924', 'AVE11', 'Silver', 'Mercedez Benz', 'E280', 'Enriquez / Antonio  II / Joyce', '0000-00-00', 49, 1, 1, 4, '62 Kamachile', '20221029', 'Green', '', ''),
(242, '60003924', 'VEG337', 'White', 'Toyota', 'Super Grandia', 'Enriquez / Antonio  II / Joyce', '0000-00-00', 49, 1, 1, 4, '62 Kamachile', '20216446', 'Green', '', ''),
(243, '60003924', 'ZCZ604', 'Silver', 'Toyota', 'Fortuner', 'Enriquez / Antonio  II / Joyce', '0000-00-00', 49, 1, 1, 4, '62 Kamachile', '20216445', 'Green', '', ''),
(244, '60005548', 'NBR1704', 'Gray', 'Toyota', 'Fortuner', 'Biagtan  Bartolome / Hana Marie ', '0000-00-00', 49, 1, 1, 4, '22 Acacia Drive', '20627970', 'Green', '', ''),
(245, '60005548', 'WDQ224', 'Black', 'Toyota', 'Fortuner', 'Biagtan  Bartolome / Hana Marie ', '0000-00-00', 49, 1, 1, 4, '22 Acacia Drive', '20216426', 'Green', '', ''),
(246, '60005548', 'ZSA188', 'Red', 'Toyota', 'Vios', 'Biagtan  Bartolome / Hana Marie ', '0000-00-00', 49, 1, 1, 4, '22 Acacia Drive', '20330743', 'Green', '', ''),
(247, '60005548', 'NDL6797', 'White', 'Mazda', '2', 'Biagtan  Bartolome / Hana Marie ', '0000-00-00', 49, 1, 1, 4, '22 Acacia Drive', '20400034', 'Green', '', ''),
(248, '60005548', 'RNH109', 'White', 'Mitsubishi', 'Strada', 'Biagtan  Bartolome / Hana Marie ', '0000-00-00', 49, 1, 1, 4, '22 Acacia Drive', '20628666', 'Green', '', ''),
(249, '60005548', 'G21780', 'Blue', 'Suzuki', 'Jimny', 'Biagtan  Bartolome / Hana Marie ', '0000-00-00', 49, 1, 1, 4, '22 Acacia Drive', 'x', 'Green', '', ''),
(250, '60004168', 'EID887', 'Blue', 'Honda', 'Civic', 'Knoll  Sarminda  Santiago', '0000-00-00', 49, 1, 1, 4, '51 Pili', '20627995', 'Green', '', ''),
(251, '60005243', 'PDO573', 'Gold', 'Subaru', 'Legacy', 'Ramos  Christopher', '0000-00-00', 49, 1, 1, 4, '11 Aratiles', '20330630', 'Green', '', ''),
(252, '60005243', 'NDO527', 'Blue', 'Subaru', 'Impreza', 'Ramos  Christopher', '0000-00-00', 49, 1, 1, 4, '11 Aratiles', '20264824', 'Green', '', ''),
(253, '60005243', 'NCP1685', 'Silver', 'Toyota', 'Altis', 'Ramos  Christopher', '0000-00-00', 49, 1, 1, 4, '11 Aratiles', '20439165', 'Green', '', ''),
(254, '60005243', '', 'White', 'Mitsubishi', 'Pajero', 'Ramos  Christopher', '0000-00-00', 49, 1, 1, 4, '11 Aratiles', 'n', 'Green', '', ''),
(255, '60005243', 'XJU742', 'Red', 'Mitsubishi', 'Pajero', 'Ramos  Christopher', '0000-00-00', 49, 1, 1, 4, '11 Aratiles', '20221660', 'Green', '', ''),
(256, '60005782', 'PQL559', 'Titanium', 'Honda', 'CRV', 'Aguirre  Alejandro Jr.', '0000-00-00', 49, 1, 1, 4, '19 Campanilla', '20628084', 'Green', '', ''),
(257, '60005782', 'TZI932', 'White', 'Hyundai', 'Elantra', 'Aguirre  Alejandro Jr.', '0000-00-00', 49, 1, 1, 4, '19 Campanilla', '20628083', 'Green', '', ''),
(258, '60005782', 'P3X718', 'PH. Brown', 'Toyota', 'Fortuner', 'Aguirre  Alejandro Jr.', '0000-00-00', 49, 1, 1, 4, '19 Campanilla', '20628650', 'Green', '', ''),
(259, '60025733', 'BEY216', 'Black', 'Mitsubishi', 'Montero', 'Bent  Jasmin', '0000-00-00', 49, 1, 1, 4, '27 Apitong', '20221823', 'Green', '', ''),
(260, '60004499', 'TQV812', 'Bronze', 'Toyota', 'Innova', 'Luna  Benjamin Jr.', '0000-00-00', 49, 1, 1, 4, '55 Kamias', '20216509', 'Green', '', ''),
(261, '60004499', 'TIJ663', 'Black', 'Toyota', 'Prado', 'Luna  Benjamin Jr.', '0000-00-00', 49, 1, 1, 4, '55 Kamias', '20504007', 'Green', '', ''),
(262, '60004499', 'NAB2018', 'Gray', 'Mitsubishi', 'Montero', 'Luna  Benjamin Jr.', '0000-00-00', 49, 1, 1, 4, '55 Kamias', '20438903', 'Green', '', ''),
(263, '60004499', 'MV512426', 'White', 'KYMCO', 'KYMCO', 'Luna  Benjamin Jr.', '0000-00-00', 49, 1, 1, 4, '55 Kamias', '20503822', 'Green', '', ''),
(264, '60004499', 'BEV840', 'White', 'Porsche', 'Boxster', 'Luna  Benjamin Jr.', '0000-00-00', 49, 1, 1, 4, '55 Kamias', '20221093', 'Green', '', ''),
(265, '60005401', 'B*005985*', 'Orange', 'Ducati', 'Scrambler', 'De Villa  Michael', '0000-00-00', 49, 1, 1, 4, '29 Molave', '20628356', 'Green', '', ''),
(266, '60005401', 'FIF712', 'White', 'Nissan', 'Terra', 'De Villa  Michael', '0000-00-00', 49, 1, 1, 4, '29 Molave', '20627993', 'Green', '', ''),
(267, '60005401', 'IO2090', 'Gray', 'Ford', 'Everest', 'De Villa  Michael', '0000-00-00', 49, 1, 1, 4, '29 Molave', '20438969', 'Green', '', ''),
(268, '60005401', 'NOK2246', 'White', 'Subaru', 'Forester', 'De Villa  Michael', '0000-00-00', 49, 1, 1, 4, '29 Molave', '20628454', 'Green', '', ''),
(269, '3000010898', 'DA06386', 'White', 'Kia', 'Carnival', ' Van Der Auwera  Joriel', '0000-00-00', 49, 1, 1, 4, '63 Campanilla', '20628538', 'Green', '', ''),
(270, '3000010898', 'ROF986', 'Olive Green', 'Subaru', 'Forester', ' Van Der Auwera  Joriel', '0000-00-00', 49, 1, 1, 4, '63 Campanilla', '20628521', 'Green', '', ''),
(271, '3000010898', 'LGA168', 'Red', 'Toyota', 'Innova', ' Van Der Auwera  Joriel', '0000-00-00', 49, 1, 1, 4, '63 Campanilla', '20221786', 'Green', '', ''),
(272, '60004388', 'ZPX402', 'Beige', 'Mitsubishi', 'Grandis', 'Ong  Ariel', '0000-00-00', 49, 1, 1, 4, '19 Piña', '', 'Yellow', '', ''),
(273, '60023050', 'NDI8400', 'Gray', 'Toyota', 'Fortuner', 'Villalon  Gregory', '0000-00-00', 49, 1, 1, 4, '19 Parola', 'NEW', 'Green', '', ''),
(274, '60004496', 'PCQ326', 'Green', 'Toyota', 'Innova', 'Malixi  Louie / Gladys', '0000-00-00', 49, 1, 1, 4, '49 Kamias', '20627968', 'Green', '', ''),
(275, '60004496', 'XSD176', 'Blue', 'Toyota', 'Altis', 'Malixi  Louie / Gladys', '0000-00-00', 49, 1, 1, 4, '49 Kamias', '20628021', 'Green', '', ''),
(276, '60004496', 'VR4741', 'Brown Chocolate', 'Toyota', 'Fortuner', 'Malixi  Louie / Gladys', '0000-00-00', 49, 1, 1, 4, '49 Kamias', '20628064', 'Green', '', ''),
(277, '60004496', 'NDL5058', 'Silver', 'Toyota', 'Prado', 'Malixi  Louie / Gladys', '0000-00-00', 49, 1, 1, 4, '49 Kamias', '20628105', 'Green', '', ''),
(278, '60004496', 'ABQ6884', 'White', 'Suzuki', 'Celerio', 'Malixi  Louie / Gladys', '0000-00-00', 49, 1, 1, 4, '49 Kamias', '20627984', 'Green', '', ''),
(279, '60005728', 'NDD3621', 'White', 'Toyota', 'Fortuner', 'Duaqui  Ronaldo', '0000-00-00', 49, 1, 1, 4, '34 Kasaflora', '20438881', 'Green', '', ''),
(280, '60005728', 'DAA1776', 'White', 'Honda', 'City', 'Duaqui  Ronaldo', '0000-00-00', 49, 1, 1, 4, '34 Kasaflora', '20438874', 'Green', '', ''),
(281, '60005728', 'NDX7126', 'White', 'Volvo', 'V40', 'Duaqui  Ronaldo', '0000-00-00', 49, 1, 1, 4, '34 Kasaflora', '20438808', 'Green', '', ''),
(282, '60005728', 'NAU5487', 'White', 'Ford', 'Ranger', 'Duaqui  Ronaldo', '0000-00-00', 49, 1, 1, 4, '34 Kasaflora', '20330783', 'Green', '', ''),
(283, '60005728', 'DT7683', 'White', 'Honda', 'Brio', 'Duaqui  Ronaldo', '0000-00-00', 49, 1, 1, 4, '34 Kasaflora', '20628034', 'Yellow', '', ''),
(284, '60005728', 'F2F147', 'White', 'Nissan', 'Terra', 'Duaqui  Ronaldo', '0000-00-00', 49, 1, 1, 4, '34 Kasaflora', '', 'Yellow', '', ''),
(285, '60003943', 'FOU402', 'White', 'Nissan', 'Juke', 'Levet  Christine Vivienne Carpo', '0000-00-00', 49, 1, 1, 4, '64 Kamachile', '20628675', 'Green', '', ''),
(286, '60003943', 'TAO103', 'Black', 'Hyundai', 'Tucson', 'Levet  Christine Vivienne Carpo', '0000-00-00', 49, 1, 1, 4, '64 Kamachile', '20265480', 'Green', '', ''),
(287, '60003943', 'WNI896', 'Gray', 'Hyundai', '110', 'Levet  Christine Vivienne Carpo', '0000-00-00', 49, 1, 1, 4, '64 Kamachile', '20438827', 'Green', '', ''),
(288, '60016204', 'NQJ926', 'White', 'Honda', 'Accord', 'Chua  Jovan / Aileen Gretchelle', '0000-00-00', 49, 1, 1, 4, '14 Dao', '20216476', 'Green', '', ''),
(289, '60016204', 'NAV4447', 'White', 'Toyota', 'Fortuner', 'Chua  Jovan / Aileen Gretchelle', '0000-00-00', 49, 1, 1, 4, '14 Dao', '20439111', 'Green', '', ''),
(290, '60016204', '', 'Black', 'Ford', 'Everest', 'Chua  Jovan / Aileen Gretchelle', '0000-00-00', 49, 1, 1, 4, '14 Dao', '20400094', 'Green', '', ''),
(291, '60007957', 'NDB6015', 'Black', 'Toyota', 'Fortuner', 'Pasion  Peter Daniel', '0000-00-00', 49, 1, 1, 4, '30 Tanguili Loop', '20365381', 'Green', '', ''),
(292, '60007694', 'PQP173', 'Black', 'Mitsubishi', 'Pajero', 'Chua  Vicente / Michael', '0000-00-00', 49, 1, 1, 4, '41 Kasaflora Loop', '20628759', 'Green', '', ''),
(293, '60007694', 'NBA6898', 'Gray', 'Toyota', 'Land Cruiser', 'Chua  Vicente / Michael', '0000-00-00', 49, 1, 1, 4, '41 Kasaflora Loop', '20439178', 'Green', '', ''),
(294, '60007694', 'ZI1464', 'White', 'Jaguar', 'XE', 'Chua  Vicente / Michael', '0000-00-00', 49, 1, 1, 4, '41 Kasaflora Loop', '20438883', 'Green', '', ''),
(295, '60016251', 'NBA5706', 'Black', 'Isuzu', 'Mux', 'Oban  Eduardo SL / Maria Concepcion', '0000-00-00', 49, 1, 1, 4, '4 Datiles Place', '20503721', 'Green', '', ''),
(296, '60016251', 'NAS9940', 'Black', 'Toyota', 'Altis', 'Oban  Eduardo SL / Maria Concepcion', '0000-00-00', 49, 1, 1, 4, '4 Datiles Place', '20439005', 'Green', '', ''),
(297, '60016251', 'TPO888', 'Gray', 'Mitsubishi', 'Montero', 'Oban  Eduardo SL / Maria Concepcion', '0000-00-00', 49, 1, 1, 4, '4 Datiles Place', '20214092', 'Yellow', '', ''),
(298, '60016251', 'UTJ687', 'Red', 'Honda', 'Civic', 'Oban  Eduardo SL / Maria Concepcion', '0000-00-00', 49, 1, 1, 4, '4 Datiles Place', '20628742', 'Yellow', '', ''),
(299, '60004987', 'DCQ5082', 'Red', 'Toyota', 'FJ Cruiser', 'Dela Cruz  Melvin Jeffrey / Vilma ', '0000-00-00', 49, 1, 1, 4, '62 Aratiles', '20628386', 'Green', '', ''),
(300, '60004987', 'WIY853', 'Black', 'Nissan', 'Patrol', 'Dela Cruz  Melvin Jeffrey / Vilma ', '0000-00-00', 49, 1, 1, 4, '62 Aratiles', '20503898', 'Green', '', ''),
(301, '60004987', 'UIH505', 'White', 'Honda', 'Jazz', 'Dela Cruz  Melvin Jeffrey / Vilma ', '0000-00-00', 49, 1, 1, 4, '62 Aratiles', '20216719', 'Green', '', ''),
(302, '60004987', 'NAI101', 'Black', 'Honda', 'CRV', 'Dela Cruz  Melvin Jeffrey / Vilma ', '0000-00-00', 49, 1, 1, 4, '62 Aratiles', '20216717', 'Green', '', ''),
(303, '60004987', '3758', 'Gray', 'Honda', 'Motorcycle', 'Dela Cruz  Melvin Jeffrey / Vilma ', '0000-00-00', 49, 1, 1, 4, '62 Aratiles', '20628387', 'Green', '', ''),
(304, '60016254', 'NCT7885', 'Silver', 'Mazda', 'CX5', 'Salita  Angel Jr. / Suzie May', '0000-00-00', 49, 1, 1, 4, '', 'NEW', 'Green', '', ''),
(305, '60004101', 'APC800', 'White', 'Toyota', 'Land Cruiser', 'Cureg  Alexander / Anna Chella', '0000-00-00', 49, 1, 1, 4, '14 Kasoy ', '20216744', 'Green', '', ''),
(306, '60004101', 'LOA009', 'Black', 'BMW', 'X5', 'Cureg  Alexander / Anna Chella', '0000-00-00', 49, 1, 1, 4, '14 Kasoy ', '20503911', 'Green', '', ''),
(307, '60004101', 'APC05', 'Silver', 'Mercedez Benz', 'E200', 'Cureg  Alexander / Anna Chella', '0000-00-00', 49, 1, 1, 4, '14 Kasoy ', '20365481', 'Green', '', ''),
(308, '60004101', 'NOF508', 'Black', 'Mitsubishi', 'Pajero', 'Cureg  Alexander / Anna Chella', '0000-00-00', 49, 1, 1, 4, '14 Kasoy ', '20221791', 'Green', '', ''),
(309, '60004101', 'WMD375', 'Blue', 'Mitsubishi', 'Pajero', 'Cureg  Alexander / Anna Chella', '0000-00-00', 49, 1, 1, 4, '14 Kasoy ', '20216625', 'Green', '', ''),
(310, '60004101', 'NRO743', 'Beige', 'Honda', 'CRV', 'Cureg  Alexander / Anna Chella', '0000-00-00', 49, 1, 1, 4, '14 Kasoy ', '20216624', 'Green', '', ''),
(311, '60023077', 'DAG2859', 'Red', 'Mazda ', 'CX5', 'Espiritu  Rita', '0000-00-00', 49, 1, 1, 4, '7 Sarikaya Place', '20503790', 'Green', '', ''),
(312, '60023077', 'DAL8404', 'White', 'Toyota', 'Camry', 'Espiritu  Rita', '0000-00-00', 49, 1, 1, 4, '7 Sarikaya Place', '20628260', 'Green', '', ''),
(313, '60004574', '', '', '', '', 'Parlade  Cymbeline', '0000-00-00', 49, 1, 1, 4, '', '', 'Green', '3', ''),
(314, '60004574', '', '', '', '', 'Parlade  Cymbeline', '0000-00-00', 49, 1, 1, 4, '', '', 'Green', '4', ''),
(315, '60004574', '', '', '', '', 'Parlade  Cymbeline', '0000-00-00', 49, 1, 1, 4, '', '', 'Green', '5', ''),
(316, '60004574', '', '', '', '', 'Parlade  Cymbeline', '0000-00-00', 49, 1, 1, 4, '', '', 'Green', '6', ''),
(317, '60004574', '', '', '', '', 'Parlade  Cymbeline', '0000-00-00', 49, 1, 1, 4, '', '', 'Green', '7', ''),
(318, '60004574', '', '', '', '', 'Parlade  Cymbeline', '0000-00-00', 49, 1, 1, 4, '', '', 'Yellow', '1', ''),
(319, '60004055', 'NBS6003', 'Silver', 'Honda', 'CRV', 'Factora  Honorio / Editha ', '0000-00-00', 49, 1, 1, 4, '61 Rambutan', '', 'Green', '', ''),
(320, '60004055', 'WEQ818', 'Titanium', 'Honda', 'City', 'Factora  Honorio / Editha ', '0000-00-00', 49, 1, 1, 4, '61 Rambutan', '20628537', 'Green', '', ''),
(321, '60004055', 'NAF1196', 'Gray', 'Isuzu', 'Mux', 'Factora  Honorio / Editha ', '0000-00-00', 49, 1, 1, 4, '61 Rambutan', '20439266', 'Green', '', ''),
(322, '60016287', 'DAZ9354', 'Black', 'Mitsubishi', 'Montero', 'Gabriel  Norman', '0000-00-00', 49, 1, 1, 4, '17 Kahel Drive', '20758873', 'Green', '', ''),
(323, '60016287', 'DAL4540', 'White', 'Mitsubishi', 'Montero', 'Gabriel  Norman', '0000-00-00', 49, 1, 1, 4, '17 Kahel Drive', '20628303', 'Green', '', '');
INSERT INTO `tbl_item` (`item_id`, `account_number`, `item_name`, `item_serno`, `item_modno`, `item_brand`, `item_amount`, `item_purdate`, `emp_id`, `cat_id`, `con_id`, `status_id`, `owner_address`, `rfid_code`, `vehicle_sticker_type`, `vehicle_sticker_number`, `vehicle_sticker_expiration`) VALUES
(324, '60016287', 'NCG21', 'Red', 'Mazda', 'CX5', 'Gabriel  Norman', '0000-00-00', 49, 1, 1, 4, '17 Kahel Drive', '20330742', 'Green', '', ''),
(325, '60016287', 'UIA186', 'White', 'Toyota', 'Innova', 'Gabriel  Norman', '0000-00-00', 49, 1, 1, 4, '17 Kahel Drive', '20221176', 'Green', '', ''),
(326, '60004965', 'W0B755', 'White', 'Chevy', 'Trailblazer', 'Alvarez  Alexy', '0000-00-00', 49, 1, 1, 4, '42 Aratiles', '20214145', 'Green', '', ''),
(327, '60004965', 'WIP167', 'Gray', 'Honda', 'Accord', 'Alvarez  Alexy', '0000-00-00', 49, 1, 1, 4, '42 Aratiles', '20221034', 'Green', '', ''),
(328, '60004965', 'DAE2258', 'Gray', 'Toyota', 'Avanza', 'Alvarez  Alexy', '0000-00-00', 49, 1, 1, 4, '42 Aratiles', '20628256', 'Green', '', ''),
(329, '60023013', 'ABG1410', 'Tan', 'Toyota', 'FJ Cruiser', 'Gensolin  Keenan Barry', '0000-00-00', 49, 1, 1, 4, '21 Manzanitas Loop', '20504190', 'Green', '', ''),
(330, '60023013', 'NCV1001', 'Brown', 'Nissan', 'Urvan', 'Gensolin  Keenan Barry', '0000-00-00', 49, 1, 1, 4, '21 Manzanitas Loop', '20628270', 'Green', '', ''),
(331, '60023013', 'NED9017', 'Silver', 'Nissan', 'Navarra', 'Gensolin  Keenan Barry', '0000-00-00', 49, 1, 1, 4, '21 Manzanitas Loop', '20627974', 'Green', '', ''),
(332, '60023013', '13011304738', 'Yellow/Black', 'Suzuki', 'Vstrom 1000XT', 'Gensolin  Keenan Barry', '0000-00-00', 49, 1, 1, 4, '21 Manzanitas Loop', '20628176', 'Green', '', ''),
(333, '3000010872', 'NQN811', 'Gray Silver', 'Mazda', 'CX7', 'Cruz  Ramoncito', '0000-00-00', 49, 1, 1, 4, '65 Campanilla', '20365394', 'Green', '20', ''),
(334, '3000010872', 'TOD939', 'Gray Silver', 'Toyota', 'Altis', 'Cruz  Ramoncito', '0000-00-00', 49, 1, 1, 4, '65 Campanilla', '20221407', 'Green', '17', ''),
(335, '3000010858', 'ACM2612', 'Gray', 'Mitsubishi', 'Montero', 'Cantero  Juan Miguel', '0000-00-00', 49, 1, 1, 4, '85 Kamagong', '20628231', 'Green', '', ''),
(336, '3000010858', 'CAK3874', 'Wine Red', 'Mitsubishi', 'Mirage', 'Cantero  Juan Miguel', '0000-00-00', 49, 1, 1, 4, '85 Kamagong', '20628459', 'Green', '', ''),
(337, '3000010858', 'UCQ188', 'White', 'Mitsubishi', 'Lancer', 'Cantero  Juan Miguel', '0000-00-00', 49, 1, 1, 4, '85 Kamagong', '20400011', 'Green', '', ''),
(338, '3000010858', 'CAA5245', 'White', 'Mitsubishi', 'Montero', 'Cantero  Juan Miguel', '0000-00-00', 49, 1, 1, 4, '85 Kamagong', 'NEW', 'Green', '', ''),
(339, '60004612', 'AAQ2825', 'Black', 'Kia', 'Carnival', 'Reloza  Rafael', '0000-00-00', 49, 1, 1, 4, '50 Sineguelas', '20365259', 'Green', '', ''),
(340, '60004612', 'C343', 'Brown', 'VW', 'Tiguan', 'Reloza  Rafael', '0000-00-00', 49, 1, 1, 4, '50 Sineguelas', '20758839', 'Green', '', ''),
(341, '60004365', 'EH4559(130102)', 'White', 'Kia', 'Grand Carnival', 'Brion  Bernardita', '0000-00-00', 49, 1, 1, 4, '38 Dalandan Loop', '20503830', '', '', ''),
(342, '60004365', 'DAK3275', 'White', 'Toyota', 'Innova', 'Brion  Bernardita', '0000-00-00', 49, 1, 1, 4, '38 Dalandan Loop', 'x', '', '', ''),
(343, '60004365', 'ZNT633', 'White', 'Hyundai', 'Starex', 'Brion  Bernardita', '0000-00-00', 49, 1, 1, 4, '38 Dalandan Loop', '20221749', '', '', ''),
(344, '60004365', 'TIM403', 'Dark Gray', 'Subaru', 'Forester', 'Brion  Bernardita', '0000-00-00', 49, 1, 1, 4, '38 Dalandan Loop', '20221746', '', '', ''),
(345, '60004365', 'YCJ879', 'Gun Metal Gray', 'Toyota', 'Supra', 'Brion  Bernardita', '0000-00-00', 49, 1, 1, 4, '38 Dalandan Loop', 'x', '', '', ''),
(346, '60004365', 'OMB88', 'White', 'Toyota', 'Previa', 'Brion  Bernardita', '0000-00-00', 49, 1, 1, 4, '38 Dalandan Loop', '20221744', 'Green', '', ''),
(347, '60004876', 'JJM3805', 'Gray', 'Toyota', 'Fortuner', 'Cheng  George', '0000-00-00', 49, 1, 1, 4, '8 Guyabano', '20400080', 'Green', '', ''),
(348, '60004876', 'F1E842', 'White', 'Nissan', 'Terra', 'Cheng  George', '0000-00-00', 49, 1, 1, 4, '8 Guyabano', '20628088', 'Green', '', ''),
(349, '60004876', '', 'Red', 'Toyota', 'Hibrid', 'Cheng  George', '0000-00-00', 49, 1, 1, 4, '8 Guyabano', 'NEW', 'Green', '', ''),
(350, '60023076', 'TMR88', 'Blue', 'Ford', 'Ecosport', 'Ronson  Maria Nimfa', '0000-00-00', 49, 1, 1, 4, '8 Sarikaya', '20264873', 'Green', '', ''),
(351, '60023076', 'DAG4731', 'Red', 'Ford', 'Explorer', 'Ronson  Maria Nimfa', '0000-00-00', 49, 1, 1, 4, '8 Sarikaya', '20503803', 'Green', '', ''),
(352, '60004421', 'NBN2711', 'Gray', 'Toyota', 'Fortuner', 'Avila  Randolph Bienvenido', '0000-00-00', 49, 1, 1, 4, '4 Pina Place', '20439259', 'Green', '', ''),
(353, '60004397', 'ZHC659', 'Pearl', 'Honda', 'CRV', 'Rosario  Fernando  ', '0000-00-00', 49, 1, 1, 4, '26 Kamachile', '20216491', '', '', ''),
(354, '60004397', 'PHI556', 'Red', 'Honda', 'City', 'Rosario  Fernando  ', '0000-00-00', 49, 1, 1, 4, '26 Kamachile', '20216490', '', '', ''),
(355, '60004397', 'DAF7572', 'Black', 'Mazda', 'CX3', 'Rosario  Fernando  ', '0000-00-00', 49, 1, 1, 4, '26 Kamachile', '20503707', '', '', ''),
(356, '60005053', 'UXQ761', '', 'Subaru', 'Forester', 'Delfino  Nancy / Michael Joseph', '0000-00-00', 49, 1, 1, 4, '62 Marang', '20216564', 'Green', '', ''),
(357, '60005053', 'NBC5663', '', 'Subaru', 'Legacy', 'Delfino  Nancy / Michael Joseph', '0000-00-00', 49, 1, 1, 4, '62 Marang', '20503716', 'Green', '', ''),
(358, '60005053', 'AAK1592', 'Silver', 'Toyota', 'Fortuner', 'Delfino  Nancy / Michael Joseph', '0000-00-00', 49, 1, 1, 4, '62 Marang', '20216561', 'Yellow', '', ''),
(359, '60005106', 'NEH3475', 'Blue', 'Ford', 'Ecosport', 'Ramos  Maria Belinda / Jose Leandro', '0000-00-00', 49, 1, 1, 4, '8 Iba', '20628592', 'Green', '', ''),
(360, '60005106', 'ABQ5143', 'Black', 'VW', 'Touareg', 'Ramos  Maria Belinda / Jose Leandro', '0000-00-00', 49, 1, 1, 4, '8 Iba', '20216466', 'Green', '', ''),
(361, '60005106', 'AAY5172', 'Blue', 'Honda', 'Brio', 'Ramos  Maria Belinda / Jose Leandro', '0000-00-00', 49, 1, 1, 4, '8 Iba', '20216468', 'Yellow', '', ''),
(362, '60005106', 'XMU360', 'Red', 'Isuzu', 'Crosswind', 'Ramos  Maria Belinda / Jose Leandro', '0000-00-00', 49, 1, 1, 4, '8 Iba', '20216469', 'Yellow', '', ''),
(363, '60004684', 'NAI3156', 'Gray', 'Toyota', 'Fortuner', 'Aban  Ryan / Anna  (Lessee)', '0000-00-00', 49, 1, 1, 4, '130 Lanzones Drive', '20504133', 'green', '', ''),
(364, '60004684', 'NBK5184', 'White', 'Toyota', 'Hi-Ace Grandia', 'Aban  Ryan / Anna  (Lessee)', '0000-00-00', 49, 1, 1, 4, '130 Lanzones Drive', '20628043', 'Green', '', ''),
(365, '60004887', 'BOY984', 'White', 'Mitsubishi', 'Pajero', 'Paraiso  Joshua Gilbert / Jen (Lessee)', '0000-00-00', 49, 1, 1, 4, '20 Mabolo Loop', '20503909', 'Green', '', ''),
(366, '60004887', 'DAC5994', 'White', 'Ford', 'Ranger', 'Paraiso  Joshua Gilbert / Jen (Lessee)', '0000-00-00', 49, 1, 1, 4, '20 Mabolo Loop', '20504100', 'Green', '', ''),
(367, '60005036', 'AJA1021', 'White', 'Nissan', 'Patrol', 'Pamintuan  Dante', '0000-00-00', 49, 1, 1, 4, '18 Piko', '20330572', 'Green', '', ''),
(368, '60005036', 'NOA438', 'White', 'VW', 'Gold GTS', 'Pamintuan  Dante', '0000-00-00', 49, 1, 1, 4, '18 Piko', '20504064', 'Green', '', ''),
(369, '60005036', 'PB0219', 'Silver', 'BMW', '320D', 'Pamintuan  Dante', '0000-00-00', 49, 1, 1, 4, '18 Piko', '20628586', 'Green', '', ''),
(370, '60004425', 'ZAD573', 'Mint Green', 'Toyota', 'Innova', 'Co  Jesus', '0000-00-00', 49, 1, 1, 4, '39 Duhat', '20216656', '', '', ''),
(371, '60004425', 'XAD403', 'Amazon Green', 'Toyota', 'Corolla Altis', 'Co  Jesus', '0000-00-00', 49, 1, 1, 4, '39 Duhat', '20439293', '', '', ''),
(372, '60005644', 'POW234', 'White', 'Mitsubishi', 'Montero', 'Cortina  Jose Jr. / Eleonor', '0000-00-00', 49, 1, 1, 4, '7 Canistel Place', '20330824', 'Green', '', ''),
(373, '60005644', 'NCM6750', 'Gray', 'Hyundai', 'Starex', 'Cortina  Jose Jr. / Eleonor', '0000-00-00', 49, 1, 1, 4, '7 Canistel Place', '20439166', 'Green', '', ''),
(374, '60004751', 'NAU5455', 'White', 'Ford', 'Everest', 'Fernandez  Albert Francis / Linda Joy', '0000-00-00', 49, 1, 1, 4, '104 Sampaloc', '20439132', 'Green', '', ''),
(375, '60004751', 'DDL8378', 'Blue', 'Ford', 'Ecosport', 'Fernandez  Albert Francis / Linda Joy', '0000-00-00', 49, 1, 1, 4, '104 Sampaloc', '20365528', 'Green', '', ''),
(376, '60004481', 'TYO381', 'Gray', 'BMW', '', 'Tanlapco  Eliezer', '0000-00-00', 49, 1, 1, 4, '6 Santol', '20439095', 'Green', '', ''),
(377, '60004481', 'UIS314', 'Black', 'BMW', '', 'Tanlapco  Eliezer', '0000-00-00', 49, 1, 1, 4, '6 Santol', '20438826', 'Green', '', ''),
(378, '60004481', 'AAJ9189', 'White', 'VW', '', 'Tanlapco  Eliezer', '0000-00-00', 49, 1, 1, 4, '6 Santol', 'x', 'Green', '', ''),
(379, '60007699', 'WDI998', 'Silver', 'Subaru', 'XV', 'De Leon  Carlo / Rachel', '0000-00-00', 49, 1, 1, 4, '49 Acacia Drive', '20365355', '', '', ''),
(380, '60007699', 'NBH2865', 'Black', 'Ford', 'Expedition', 'De Leon  Carlo / Rachel', '0000-00-00', 49, 1, 1, 4, '49 Acacia Drive', '20628150', '', '', ''),
(381, '60007699', 'DAO6361', 'Silver', 'Kia', 'Carnival', 'De Leon  Carlo / Rachel', '0000-00-00', 49, 1, 1, 4, '49 Acacia Drive', '20628249', '', '', ''),
(382, '60007699', 'NDJ8323', 'Gray', 'Mazda', '6', 'De Leon  Carlo / Rachel', '0000-00-00', 49, 1, 1, 4, '49 Acacia Drive', '20628481', '', '', ''),
(383, '60007699', 'MIN198', 'Blue', 'Ford', 'Everest', 'De Leon  Carlo / Rachel', '0000-00-00', 49, 1, 1, 4, '49 Acacia Drive', '20438918', '', '', ''),
(384, '60007699', 'INM406', 'Red', 'Toyota', 'Innova', 'De Leon  Carlo / Rachel', '0000-00-00', 49, 1, 1, 4, '49 Acacia Drive', '', '', '', ''),
(385, '60007699', 'UKQ914', 'White', 'Mini Cooper', 'Country', 'De Leon  Carlo / Rachel', '0000-00-00', 49, 1, 1, 4, '49 Acacia Drive', '20400061', '', '', ''),
(386, '60007699', 'AHA8743', 'Blue', 'Subaru', 'XV', 'De Leon  Carlo / Rachel', '0000-00-00', 49, 1, 1, 4, '49 Acacia Drive', '20439072', '', '', ''),
(387, '60004076', 'ZJC266', 'Black', 'Toyota', 'Fortuner', 'Arriola  Patricia', '0000-00-00', 49, 1, 1, 4, '59 Lanzones', '20264814', 'Green', '59', ''),
(388, '60004076', 'WII302', 'Black', 'Toyota', 'Innova', 'Arriola  Patricia', '0000-00-00', 49, 1, 1, 4, '59 Lanzones', '20264815', 'Green', '590', ''),
(389, '60005658', 'AAM6525', 'Black', 'Hyundai', 'Grand Starex', 'Ellis  Rhodora', '0000-00-00', 49, 1, 1, 4, '46 Canistel', '20365273', 'Green', '', ''),
(390, '60005658', 'WKQ282', 'Black', 'Honda', 'City', 'Ellis  Rhodora', '0000-00-00', 49, 1, 1, 4, '46 Canistel', '20333042', 'Green', '', ''),
(391, '60005658', 'VOS735', 'White', 'Hyundai', 'Grand Starex', 'Ellis  Rhodora', '0000-00-00', 49, 1, 1, 4, '46 Canistel', 'x', 'Green', '', ''),
(392, '60005089', 'UJI447', 'White', 'Lexus', '', 'Casanova  Noel', '0000-00-00', 49, 1, 1, 4, '11 Iba', '20438835', 'Green', '', ''),
(393, '60005089', 'DAK9162', 'White', 'Ford', '', 'Casanova  Noel', '0000-00-00', 49, 1, 1, 4, '11 Iba', '20628480', 'Green', '', ''),
(394, '60005089', 'AAI9114', 'Black', 'Ford', 'Explorer', 'Casanova  Noel', '0000-00-00', 49, 1, 1, 4, '11 Iba', '20221162', 'Green', '', ''),
(395, '60005288', 'AQA2358', 'Brown', 'Honda', 'CRV', 'Whyte  Susan', '0000-00-00', 49, 1, 1, 4, '3 Chesa', '20210900', 'Green', '', ''),
(396, '60005288', 'DAH3046', 'Silver', 'Isuzu', 'Mux', 'Whyte  Susan', '0000-00-00', 49, 1, 1, 4, '3 Chesa', '20503781', 'Green', '', ''),
(397, '60005794', 'ABE1516', 'Blue Pearl', 'Honda', 'HRV', 'Dizon  Michael Butch / Elna', '0000-00-00', 49, 1, 1, 4, '40 Aratiles', '20400067', 'Green', '', ''),
(398, '60005794', 'AAJ8041', '', 'Honda', 'Accord', 'Dizon  Michael Butch / Elna', '0000-00-00', 49, 1, 1, 4, '40 Aratiles', '20221314', 'Green', '', ''),
(399, '60005794', 'UOV294', '', 'Toyota', 'Camry', 'Dizon  Michael Butch / Elna', '0000-00-00', 49, 1, 1, 4, '40 Aratiles', '20214118', 'Green', '', ''),
(400, '60004905', 'PA9372', 'White', 'BMW', '318', 'Manalo  Vicente Manalo Jr / Arlene', '0000-00-00', 49, 1, 1, 4, '37 Dalanghita', '20439064', 'Green', '', ''),
(401, '60004905', 'UKI816', 'Yellow', 'Subaru', 'Outback', 'Manalo  Vicente Manalo Jr / Arlene', '0000-00-00', 49, 1, 1, 4, '37 Dalanghita', '20330817', 'Green', '', ''),
(402, '60004905', 'ABT5314', 'Dark Gray', 'Honda', 'City', 'Manalo  Vicente Manalo Jr / Arlene', '0000-00-00', 49, 1, 1, 4, '37 Dalanghita', '20628255', 'Green', '', ''),
(403, '60004905', 'TZO460', 'Black', 'Mitsubishi', 'Montero', 'Manalo  Vicente Manalo Jr / Arlene', '0000-00-00', 49, 1, 1, 4, '37 Dalanghita', '20214125', 'Green', '', ''),
(404, '60022766', 'AAI9843', 'Blue', 'Hyundai', '', 'Expertline Ventures Corporation / Coloquio  Javier', '0000-00-00', 49, 1, 1, 4, '71 Marang', '', 'Green', '', ''),
(405, '60022766', 'B6l514', 'White Diamond', 'Mitsubishi', '', 'Expertline Ventures Corporation / Coloquio  Javier', '0000-00-00', 49, 1, 1, 4, '71 Marang', '20628764', 'Green', '', ''),
(406, '60022766', 'NL6869', 'White Diamond', 'Mitsubishi', 'Montero', 'Expertline Ventures Corporation / Coloquio  Javier', '0000-00-00', 49, 1, 1, 4, '71 Marang', '20365378', 'Green', '', ''),
(407, '60004919', 'WFI700', 'White', 'BMW', 'X1', 'Ramos  Erwin / Melissa', '0000-00-00', 49, 1, 1, 4, '11 Marang', '20439252', 'Green', '', ''),
(408, '60004919', 'UQM893', 'Black', 'Kia', 'Sportage', 'Ramos  Erwin / Melissa', '0000-00-00', 49, 1, 1, 4, '11 Marang', '', 'Green', '', ''),
(409, '60004979', 'DAN7867', 'White', 'Ford', 'Everest', 'Yu  Alexander / Michelle ', '0000-00-00', 49, 1, 1, 4, '259 Sampaloc', '', 'Green', '', ''),
(410, '60004979', 'DAC6283', 'White', 'Toyota', 'Rav4', 'Yu  Alexander / Michelle ', '0000-00-00', 49, 1, 1, 4, '259 Sampaloc', '', 'Green', '', ''),
(411, '60004979', 'UIV385', 'Beige', 'Toyota', 'Innova', 'Yu  Alexander / Michelle ', '0000-00-00', 49, 1, 1, 4, '259 Sampaloc', '', 'Green', '', ''),
(412, '60004979', 'AAY3605', 'Blue', 'Toyota', 'Altis', 'Yu  Alexander / Michelle ', '0000-00-00', 49, 1, 1, 4, '259 Sampaloc', '', 'Green', '', ''),
(413, '60004979', 'NEC8045', 'Blue', 'Mitsubishi', 'Montero', 'Yu  Alexander / Michelle ', '0000-00-00', 49, 1, 1, 4, '259 Sampaloc', 'NEW', 'Yellow', '', ''),
(414, '60023210', 'ZSD853', 'White', 'BMW', 'X5', 'Nava  William', '0000-00-00', 49, 1, 1, 4, '19 Cacao Loop', '20504038', 'Green', '', ''),
(415, '60023210', 'XNZ803', 'White', 'Mitsubishi', 'Pajero', 'Nava  William', '0000-00-00', 49, 1, 1, 4, '19 Cacao Loop', '20628506', 'Green', '', ''),
(416, '60023210', 'P3V998', 'White', 'Toyota', 'Super Grandia', 'Nava  William', '0000-00-00', 49, 1, 1, 4, '19 Cacao Loop', '20628527', 'Green', '', ''),
(417, '60016198', 'CAB4407', 'Bronze', 'Toyota', 'Fortuner', 'Ortiguera  Antonio Ray', '0000-00-00', 49, 1, 1, 4, '22 Amiling', 'NEW', 'Green', '', ''),
(418, '60016198', 'NBI2072', 'Beige', 'Toyota', 'Hi-Ace', 'Ortiguera  Antonio Ray', '0000-00-00', 49, 1, 1, 4, '22 Amiling', 'NEW', 'Green', '', ''),
(419, '60004544', 'DDL8557', 'Black', 'Ford', 'Escape', 'De Castro  Karmina Irene / Arthur Michael', '0000-00-00', 49, 1, 1, 4, '119 Lanzones', '20365512', 'Green', '', ''),
(420, '60004544', 'DAD4183', 'Blue', 'Hyundai', 'Kona', 'De Castro  Karmina Irene / Arthur Michael', '0000-00-00', 49, 1, 1, 4, '119 Lanzones', '20628008', 'Green', '', ''),
(421, '60004544', 'DEB3071', 'Gray', 'Mazda', 'CX5', 'De Castro  Karmina Irene / Arthur Michael', '0000-00-00', 49, 1, 1, 4, '119 Lanzones', '', 'Green', '', ''),
(422, '60004167', 'XRA379', 'Silver', 'Nissan', 'Xtrail', 'Dionisio  Florante', '0000-00-00', 49, 1, 1, 4, '53 Pili', '20330703', 'Yellow', '', ''),
(423, '60004167', 'WIK254', 'White', 'Hyundai', 'Sta. Fe', 'Dionisio  Florante', '0000-00-00', 49, 1, 1, 4, '53 Pili', '20439269', 'Yellow', '', ''),
(424, '60004167', 'ZNR601', 'Black', 'Kia', 'Carnival', 'Dionisio  Florante', '0000-00-00', 49, 1, 1, 4, '53 Pili', '20330701', 'Green', '', ''),
(425, '60004167', 'UPG668', 'Blue', 'Toyota', 'Corona', 'Dionisio  Florante', '0000-00-00', 49, 1, 1, 4, '53 Pili', '20330702', 'Green', '', ''),
(426, '60004167', 'NGV233', 'Red', 'Toyota', 'Cressida', 'Dionisio  Florante', '0000-00-00', 49, 1, 1, 4, '53 Pili', '', '', '', ''),
(427, '60005489', 'AAA3915', 'White', 'Toyota', 'Fortuner', 'Pabst  Estrelita Nasner ', '0000-00-00', 49, 1, 1, 4, '1 Molave', '20217692', 'Green', '', ''),
(428, '60005489', 'NCQ3069', 'Blue', 'VW', 'Golf GTS', 'Pabst  Estrelita Nasner ', '0000-00-00', 49, 1, 1, 4, '1 Molave', '20503802', 'Green', '', ''),
(429, '60005489', 'UQA388', 'White', 'Audi', 'A1', 'Pabst  Estrelita Nasner ', '0000-00-00', 49, 1, 1, 4, '1 Molave', '20217693', 'Green', '', ''),
(430, '60005489', 'PBI768', 'Black', 'Ford', 'Focus', 'Pabst  Estrelita Nasner ', '0000-00-00', 49, 1, 1, 4, '1 Molave', '20217694', 'Green', '', ''),
(431, '60023117', 'NDT1617', 'Green', 'Chevy', 'Trailblazer', 'Narciso  Francis Gregory / Carolina ', '0000-00-00', 49, 1, 1, 4, '15 Managkil', '20439115', 'Green', '', ''),
(432, '60023117', 'F0A609', 'Black', 'Nissan', 'Xtrail', 'Narciso  Francis Gregory / Carolina ', '0000-00-00', 49, 1, 1, 4, '15 Managkil', '20628513', 'Green', '', ''),
(433, '60023117', 'F0b001', 'Black', 'Nissan', 'Almera', 'Narciso  Francis Gregory / Carolina ', '0000-00-00', 49, 1, 1, 4, '15 Managkil', '', 'Green', '', ''),
(434, '60023117', 'PIX464', 'White', 'Subaru', 'Forester', 'Narciso  Francis Gregory / Carolina ', '0000-00-00', 49, 1, 1, 4, '15 Managkil', '20439059', 'Green', '', ''),
(435, '60023117', 'ZSP305', 'Green', 'Toyota', 'Corolla', 'Narciso  Francis Gregory / Carolina ', '0000-00-00', 49, 1, 1, 4, '15 Managkil', '20628614', 'Green', '', ''),
(436, '60023117', 'TGV114', 'Silver', 'Honda', 'Civic', 'Narciso  Francis Gregory / Carolina ', '0000-00-00', 49, 1, 1, 4, '15 Managkil', '', 'Green', '', ''),
(437, '60004492', 'DAA9195', '', 'Hyundai', 'Tucson', 'Cuesta  Jesus / Georgina ', '0000-00-00', 49, 1, 1, 4, '41 Kamias', '20216417', 'Green', '9', ''),
(438, '60004492', 'XLD819', '', 'Volvo', 'XC70', 'Cuesta  Jesus / Georgina ', '0000-00-00', 49, 1, 1, 4, '41 Kamias', '', 'Green', '13', ''),
(439, '60004492', 'NFY7094', '', 'Geely', 'Coolray', 'Cuesta  Jesus / Georgina ', '0000-00-00', 49, 1, 1, 4, '41 Kamias', '', 'Green', '12', ''),
(440, '60004492', 'AHA1075', '', 'Nissan', 'Navarra', 'Cuesta  Jesus / Georgina ', '0000-00-00', 49, 1, 1, 4, '41 Kamias', '20300050', 'Yellow', '34', ''),
(441, '60004492', 'UMI828', '', 'Hyundai', 'Sta. Fe', 'Cuesta  Jesus / Georgina ', '0000-00-00', 49, 1, 1, 4, '41 Kamias', '20221234', 'Yellow', '33', ''),
(442, '60005226', 'JDA01', 'Silver', 'Mitsubishi', 'Montero', 'Villanueva  Rodiever / Marjorie', '0000-00-00', 49, 1, 1, 4, '56 Durian', '20210901', 'Green', '', ''),
(443, '60005226', 'UMI748', 'White', 'Hyundai', 'Starex', 'Villanueva  Rodiever / Marjorie', '0000-00-00', 49, 1, 1, 4, '56 Durian', '', 'Green', '', ''),
(444, '60005576', 'NAP4430', 'Gray', 'Honda', 'CRV', 'Jensen  Elnora Palomo / Peter ', '0000-00-00', 49, 1, 1, 4, '11 Belis', '20503962', 'Green', '', ''),
(445, '60005576', 'KIP383', 'Yellow Green', 'Hyundai', 'Kona', 'Jensen  Elnora Palomo / Peter ', '0000-00-00', 49, 1, 1, 4, '11 Belis', '20758896', 'Green', '', ''),
(446, '60005033', 'TIB964', 'Titanium Gray', 'Ford', 'Explorer', 'Lasaten, Jessie / Ma. Emily', '2020-09-16', 49, 1, 1, 4, '43 Aratiles', '20330773', 'Green', '77', ''),
(447, '60005033', 'NAC6339', 'Black', 'Ford', 'Escape', 'Lasaten, Jessie / Ma. Emily', '2020-09-16', 49, 1, 1, 4, '43 Aratiles', '20214129', 'Green', '777', ''),
(448, '60005033', 'AAJ5750', 'Bronze', 'Ford', 'Ecosport', 'Lasaten, Jessie / Ma. Emily', '2020-09-16', 49, 1, 1, 4, '43 Aratiles', '20214127', 'Green', '926', ''),
(449, '60004902', 'NAG5308', 'White', 'Toyota', 'Fortuner', 'Nazareno  Rebecca', '0000-00-00', 49, 1, 1, 4, '41 Marang', '20438960', 'Green', '', ''),
(450, '60004902', 'URI474', 'White', 'BMW', '530i', 'Nazareno  Rebecca', '0000-00-00', 49, 1, 1, 4, '41 Marang', '20216441', 'Green', '', ''),
(451, '60005204', 'PRO873', 'Black', 'Toyota', 'Fortuner', 'Kleiss  Willyn Santos / Thomas Hermanus Johannes ', '0000-00-00', 49, 1, 1, 4, '2 Durian', '20215917', '', '', ''),
(452, '60005204', 'NDG7212', 'Blue', 'Suzuki', 'Switch', 'Kleiss  Willyn Santos / Thomas Hermanus Johannes ', '0000-00-00', 49, 1, 1, 4, '2 Durian', '20758867', '', '', ''),
(453, '60005524', 'NCZ6877', 'White', 'Toyota', 'Land Cruiser', 'Corvera  Peter Irving  / Rumalie', '0000-00-00', 49, 1, 1, 4, '10 Belis', '20365513', 'Green', '1234', ''),
(454, '60005524', 'FJF375', 'Black', 'Toyota', 'Alphard', 'Corvera  Peter Irving  / Rumalie', '0000-00-00', 49, 1, 1, 4, '10 Belis', '20221326', 'Green', '1122', ''),
(455, '60005524', 'NCU1027', 'Silver', 'BMW', '5 Series', 'Corvera  Peter Irving  / Rumalie', '0000-00-00', 49, 1, 1, 4, '10 Belis', '20439151', 'Green', '1111', ''),
(456, '60005524', 'NCQ2108', 'Gray', 'Toyota', 'Fortuner', 'Corvera  Peter Irving  / Rumalie', '0000-00-00', 49, 1, 1, 4, '10 Belis', '20627998', 'Green', '1444', ''),
(457, '60005524', 'CIY311', 'Blue', 'Ford', 'Raptor', 'Corvera  Peter Irving  / Rumalie', '0000-00-00', 49, 1, 1, 4, '10 Belis', '', 'Green', '1333', ''),
(458, '60005524', 'NBJ5177', 'White', 'Toyota', 'Grandia', 'Corvera  Peter Irving  / Rumalie', '0000-00-00', 49, 1, 1, 4, '10 Belis', '20503792', 'Green', '1222', ''),
(459, '60025684', 'KE0438', 'White', 'Porsche', 'Cayenne', 'Espinosa  Norma / Feliciano  Antonio', '0000-00-00', 49, 1, 1, 4, '5 Bayabas', '', 'Green', '286', ''),
(460, '60025684', 'DAF5149', 'White', 'Ford', 'Everest', 'Espinosa  Norma / Feliciano  Antonio', '0000-00-00', 49, 1, 1, 4, '5 Bayabas', '20439180', 'Green', '287', ''),
(461, '60025684', 'AAX8026', 'White', 'Hyundai', 'Sta. Fe', 'Espinosa  Norma / Feliciano  Antonio', '0000-00-00', 49, 1, 1, 4, '5 Bayabas', '', 'Yellow', '37', ''),
(462, '112345', 'ABC1123', 'dasd', 'asdasd', 'Asdas', 'asd', '2020-09-17', 0, 0, 1, 4, 'sada', 'asdas', 'dasd', 'asdasd', ''),
(463, '111234', 'AAA1111', 'White', 'Subaru', 'Impreza', 'Mr. ABC', '2020-09-19', 0, 0, 0, 4, 'ABC St.', '12345', 'Green', '111', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item_status`
--

CREATE TABLE `tbl_item_status` (
  `status_id` int(11) NOT NULL,
  `status_desc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_item_status`
--

INSERT INTO `tbl_item_status` (`status_id`, `status_desc`) VALUES
(1, 'for repair'),
(2, 'for transfer'),
(3, 'for condemed'),
(4, 'none');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_off`
--

CREATE TABLE `tbl_off` (
  `off_id` int(11) NOT NULL,
  `off_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_off`
--

INSERT INTO `tbl_off` (`off_id`, `off_desc`) VALUES
(1, 'PERSONNEL'),
(2, 'SGOD'),
(8, 'AAA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(50) NOT NULL,
  `vehicle_id` varchar(50) DEFAULT NULL,
  `violation_id` int(50) NOT NULL,
  `accounting_officer` varchar(50) DEFAULT NULL,
  `amount_paid` varchar(50) DEFAULT NULL,
  `or_number` varchar(50) DEFAULT NULL,
  `date_paid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `vehicle_id`, `violation_id`, `accounting_officer`, `amount_paid`, `or_number`, `date_paid`) VALUES
(9, '463', 4, NULL, '232', '3223', '2020-09-19'),
(10, '463', 4, NULL, '343', '34', '2020-09-19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment_logs`
--

CREATE TABLE `tbl_payment_logs` (
  `vehicle_id` varchar(50) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `vehicle_owner` varchar(50) NOT NULL,
  `plate_number` varchar(50) NOT NULL,
  `sticker_type` varchar(50) NOT NULL,
  `sticker_number` varchar(50) NOT NULL,
  `violation_id` int(50) NOT NULL,
  `date_apprehended` varchar(50) NOT NULL,
  `violation_officer` varchar(50) NOT NULL,
  `violation_number` varchar(50) NOT NULL,
  `Violation` varchar(50) NOT NULL,
  `or_number` varchar(50) NOT NULL,
  `date_paid` varchar(50) NOT NULL,
  `accounting_officer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos`
--

CREATE TABLE `tbl_pos` (
  `pos_id` int(11) NOT NULL,
  `pos_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pos`
--

INSERT INTO `tbl_pos` (`pos_id`, `pos_desc`) VALUES
(1, 'Admin'),
(2, 'Security'),
(3, 'Accounting'),
(4, 'ddsd'),
(5, 'ewew'),
(6, 'ewew');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_request`
--

CREATE TABLE `tbl_request` (
  `req_id` int(11) NOT NULL,
  `req_date` date NOT NULL,
  `item_id` int(11) NOT NULL,
  `req_type_id` int(11) NOT NULL,
  `req_status_id` int(11) NOT NULL DEFAULT 1,
  `req_is_done` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_req_status`
--

CREATE TABLE `tbl_req_status` (
  `req_status_id` int(11) NOT NULL,
  `req_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_req_status`
--

INSERT INTO `tbl_req_status` (`req_status_id`, `req_status_desc`) VALUES
(1, 'pending'),
(2, 'accepted'),
(3, 'rejected');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_req_type`
--

CREATE TABLE `tbl_req_type` (
  `req_type_id` int(11) NOT NULL,
  `req_type_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_req_type`
--

INSERT INTO `tbl_req_type` (`req_type_id`, `req_type_desc`) VALUES
(1, 'repair'),
(2, 'transfer'),
(3, 'condemed'),
(4, 'none');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_violations`
--

CREATE TABLE `tbl_violations` (
  `violation_id` int(50) NOT NULL,
  `vehicle_id` varchar(50) NOT NULL,
  `driver_name` varchar(50) NOT NULL,
  `date_apprehended` varchar(50) NOT NULL,
  `violation_officer` varchar(50) NOT NULL,
  `violation_number` varchar(50) NOT NULL,
  `violation` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_violations`
--

INSERT INTO `tbl_violations` (`violation_id`, `vehicle_id`, `driver_name`, `date_apprehended`, `violation_officer`, `violation_number`, `violation`, `status`) VALUES
(4, '463', 'rere', '2020-09-17', 'wewqeq', '233', 'qweqe', '2'),
(5, '1', 'Bogart', '2020-09-17', 'wwe', '1231', 'adadsd', '2'),
(6, '1', 'Bogart', '2020-09-18', 'Sgt. at arms', '144', 'adasasda', '1'),
(7, '463', 'uuuu', '2020-09-26', 'uyuy', 'uyuyu', 'uyuuy', '2'),
(8, '463', 'wewew', '2020-09-19', 'ewew', 'ewe', 'wewe', '2'),
(9, '463', 'rere', '2020-09-18', 'rere', '22', 'err', '1'),
(10, '463', 'feef', '2020-09-18', 'werw', '12312', 'erwerw', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cat`
--
ALTER TABLE `tbl_cat`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_con`
--
ALTER TABLE `tbl_con`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `pos_id` (`pos_id`),
  ADD KEY `off_id` (`off_id`);

--
-- Indexes for table `tbl_emp_type`
--
ALTER TABLE `tbl_emp_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `tbl_item`
--
ALTER TABLE `tbl_item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `tbl_item_status`
--
ALTER TABLE `tbl_item_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `tbl_off`
--
ALTER TABLE `tbl_off`
  ADD PRIMARY KEY (`off_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_pos`
--
ALTER TABLE `tbl_pos`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `tbl_request`
--
ALTER TABLE `tbl_request`
  ADD PRIMARY KEY (`req_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `req_type_id` (`req_type_id`),
  ADD KEY `req_status_id` (`req_status_id`);

--
-- Indexes for table `tbl_req_status`
--
ALTER TABLE `tbl_req_status`
  ADD PRIMARY KEY (`req_status_id`);

--
-- Indexes for table `tbl_req_type`
--
ALTER TABLE `tbl_req_type`
  ADD PRIMARY KEY (`req_type_id`);

--
-- Indexes for table `tbl_violations`
--
ALTER TABLE `tbl_violations`
  ADD PRIMARY KEY (`violation_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cat`
--
ALTER TABLE `tbl_cat`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_con`
--
ALTER TABLE `tbl_con`
  MODIFY `con_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tbl_emp_type`
--
ALTER TABLE `tbl_emp_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_item`
--
ALTER TABLE `tbl_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=464;

--
-- AUTO_INCREMENT for table `tbl_item_status`
--
ALTER TABLE `tbl_item_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_off`
--
ALTER TABLE `tbl_off`
  MODIFY `off_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_pos`
--
ALTER TABLE `tbl_pos`
  MODIFY `pos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_request`
--
ALTER TABLE `tbl_request`
  MODIFY `req_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `tbl_req_status`
--
ALTER TABLE `tbl_req_status`
  MODIFY `req_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_req_type`
--
ALTER TABLE `tbl_req_type`
  MODIFY `req_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_violations`
--
ALTER TABLE `tbl_violations`
  MODIFY `violation_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD CONSTRAINT `tbl_employee_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `tbl_emp_type` (`type_id`),
  ADD CONSTRAINT `tbl_employee_ibfk_2` FOREIGN KEY (`pos_id`) REFERENCES `tbl_pos` (`pos_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_employee_ibfk_3` FOREIGN KEY (`off_id`) REFERENCES `tbl_off` (`off_id`);

--
-- Constraints for table `tbl_request`
--
ALTER TABLE `tbl_request`
  ADD CONSTRAINT `tbl_request_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `tbl_item` (`item_id`),
  ADD CONSTRAINT `tbl_request_ibfk_2` FOREIGN KEY (`req_type_id`) REFERENCES `tbl_req_type` (`req_type_id`),
  ADD CONSTRAINT `tbl_request_ibfk_3` FOREIGN KEY (`req_status_id`) REFERENCES `tbl_req_status` (`req_status_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
