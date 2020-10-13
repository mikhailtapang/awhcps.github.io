-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2020 at 03:37 AM
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
  `pos_id` int(11) DEFAULT NULL COMMENT '1 - Admin;\r\n2 - Security\r\n3 - Accounting',
  `off_id` int(11) DEFAULT NULL,
  `emp_un` varchar(100) NOT NULL,
  `emp_pass` varchar(40) NOT NULL,
  `type_id` int(11) NOT NULL,
  `emp_at_deped` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`emp_id`, `emp_fname`, `emp_mname`, `emp_lname`, `pos_id`, `off_id`, `emp_un`, `emp_pass`, `type_id`, `emp_at_deped`) VALUES
(48, 'John', ' ', 'Dough', 1, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 1),
(49, 'Accounting', 'A', 'Accounting', 2, 1, 'accounting', 'd4c143f004d88b7286e6f999dea9d0d7', 3, 1),
(50, 'Security', 'S', 'Security', 2, 1, 'security', 'e91e6348157868de9dd8b25c81aebfb9', 2, 1),
(51, 'Ian', 'A', 'Capiz', NULL, NULL, 'Ian_Capiz', 'ea1304229fd87b564304fdb43df4cf5b', 2, 1);

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
(1, '60023077', 'DAG2859', 'Red', 'Mazda ', 'CX5', 'Espiritu  Rita', '0000-00-00', 49, 1, 1, 4, '7 Sarikaya Place', '20503790', 'Green', '129', ''),
(2, '60004574', 'ZCG907', 'Silver', 'Honda', 'Accord', 'Parlade  Cymbeline', '0000-00-00', 49, 1, 1, 4, '66 Kamias', '20217659', 'Yellow', '130', ''),
(3, '60023077', 'DAL8404', 'White', 'Toyota', 'Camry', 'Espiritu  Rita', '0000-00-00', 49, 1, 1, 4, '7 Sarikaya Place', '20628260', 'Green', '', ''),
(4, '60005604', 'AEA8383', 'Bronze', 'Toyota', 'Rav4', ' Torres  Jose Noel', '0000-00-00', 49, 1, 1, 4, '37 Amiling', '20438963', 'Green', '', ''),
(5, '60005604', 'NDM7378', 'Silver', 'Honda', 'CRV', ' Torres  Jose Noel', '0000-00-00', 49, 1, 1, 4, '37 Amiling', '20628609', 'Green', '', ''),
(6, '60004961', 'UHQ674', 'Black', 'Toyota', 'Hi-Ace Grandia', 'Gonzalez  Eugenio Manuel / Ma. Christina Gonzalez', '0000-00-00', 49, 1, 1, 4, '38 Aratiles', '20503884', 'Yellow', '131', ''),
(7, '60004961', 'ZCJ110', 'Dark Gray', 'Toyota', 'Innova', 'Gonzalez  Eugenio Manuel / Ma. Christina Gonzalez', '0000-00-00', 49, 1, 1, 4, '38 Aratiles', 'x', 'Yellow', '132', ''),
(8, '60004574', 'WII221', 'Red', 'Audi', 'Q5', 'Parlade  Cymbeline', '0000-00-00', 49, 1, 1, 4, '66 Kamias', '20221048', 'Green', '133', ''),
(9, '60005645', 'TZO908', 'Gray', 'Nissan', 'Xtrail', 'Divina  Zeus', '0000-00-00', 49, 1, 1, 4, '6 Canistel Place', '20365267', 'Yellow', '', ''),
(10, '60004574', 'NCM8332', 'Gray', 'Mercedez Benz', 'CLA', 'Parlade  Cymbeline', '0000-00-00', 49, 1, 1, 4, '66 Kamias', '20439201', 'Green', '', ''),
(11, '60004471', 'NDG5878', 'Gray', 'Toyota', 'Fortuner', 'Abu  Lorna / Efren', '0000-00-00', 49, 1, 1, 4, '9 Kamias', '20438991', 'Green', '', ''),
(12, '60004471', 'DAL4731', 'Silver', 'Toyota', 'Hilux', 'Abu  Lorna / Efren', '0000-00-00', 49, 1, 1, 4, '9 Kamias', '20628236', 'Green', '', ''),
(13, '60004471', 'ZAD709', 'Silver', 'Toyota', 'Camry', 'Abu  Lorna / Efren', '0000-00-00', 49, 1, 1, 4, '9 Kamias', '20221741', 'Yellow', '', ''),
(14, '60004471', 'TOT587', 'White', 'Honda', 'Jazz', 'Abu  Lorna / Efren', '0000-00-00', 49, 1, 1, 4, '9 Kamias', '20216410', 'Yellow', '', ''),
(15, '60005306', 'RER33', 'White', 'Ford', 'Ranger', 'Ramos  Raul', '0000-00-00', 49, 1, 1, 4, '16 Durian Loop', '20216387', 'Yellow', '134', ''),
(16, '60004574', 'WIM754', 'Black', 'BMW', '318D', 'Parlade  Cymbeline', '0000-00-00', 49, 1, 1, 4, '66 Kamias', '20220921', 'Green', '135', ''),
(17, '60005306', 'DAF7892', 'Jade Metallic', 'Toyota', 'Vios', 'Ramos  Raul', '0000-00-00', 49, 1, 1, 4, '16 Durian Loop', '20503704', 'Yellow', '136', ''),
(18, '60004275', 'TFO986', 'Beige', 'Mercedez Benz', '', 'Agcaoili  Gerard', '0000-00-00', 49, 1, 1, 4, '1 Sampaloc', '20758827', 'Green', '', ''),
(19, '60004275', 'NCD2961', 'Black', 'Toyota', 'Land Cruiser', 'Agcaoili  Gerard', '0000-00-00', 49, 1, 1, 4, '1 Sampaloc', '20758826', 'Green', '', ''),
(20, '60004275', 'NDC2768', 'Silver', 'Toyota', 'Fortuner', 'Agcaoili  Gerard', '0000-00-00', 49, 1, 1, 4, '1 Sampaloc', '20758825', 'Green', '', ''),
(21, '60004275', 'FJF434', 'Black', 'Toyota', 'Camry', 'Agcaoili  Gerard', '0000-00-00', 49, 1, 1, 4, '1 Sampaloc', '20758824', 'Green', '', ''),
(22, '60004275', 'ZME712', 'Gray', 'Hyundai', 'Starex', 'Agcaoili  Gerard', '0000-00-00', 49, 1, 1, 4, '1 Sampaloc', '20758823', 'Green', '', ''),
(23, '60004275', 'NEA9475', 'White', 'Hyundai', 'Kona', 'Agcaoili  Gerard', '0000-00-00', 49, 1, 1, 4, '1 Sampaloc', 'new', 'Green', '', ''),
(24, '60004275', 'CIT530', 'Gray', 'Ford', 'Ranger', 'Agcaoili  Gerard', '0000-00-00', 49, 1, 1, 4, '1 Sampaloc', '20758822', 'Green', '', ''),
(25, '60005782', 'PQL559', 'Titanium', 'Honda', 'CRV', 'Aguirre  Alejandro Jr.', '0000-00-00', 49, 1, 1, 4, '19 Campanilla', '20628084', 'Green', '137', ''),
(26, '60005782', 'TZI932', 'White', 'Hyundai', 'Elantra', 'Aguirre  Alejandro Jr.', '0000-00-00', 49, 1, 1, 4, '19 Campanilla', '20628083', 'Green', '138', ''),
(27, '60005782', 'P3X718', 'PH. Brown', 'Toyota', 'Fortuner', 'Aguirre  Alejandro Jr.', '0000-00-00', 49, 1, 1, 4, '19 Campanilla', '20628650', 'Green', '139', ''),
(28, '60004574', 'DAE9502', 'White', 'Mazda', '2', 'Parlade  Cymbeline', '0000-00-00', 49, 1, 1, 4, '66 Kamias', '20439137', 'Green', '160', ''),
(29, '60004156', 'NCL7395', 'Gray', 'Mercedez Benz', 'GLA180', 'Ysmael  Jaime', '0000-00-00', 49, 1, 1, 4, '83 Pili', '20400039', 'Green', '161', ''),
(30, '60004396', 'VEV643', 'Gold', 'Toyota', 'Innova', 'Aganda  Benito / Anne ', '0000-00-00', 49, 1, 1, 4, '2 Duhat', '20365534', 'Yellow', '162', ''),
(31, '60004492', 'DAA9195', '', 'Hyundai', 'Tucson', 'Cuesta  Jesus / Georgina ', '0000-00-00', 49, 1, 1, 4, '41 Kamias', '20216417', 'Green', '163', ''),
(32, '60016251', 'TPO888', 'Gray', 'Mitsubishi', 'Montero', 'Oban  Eduardo SL / Maria Concepcion', '0000-00-00', 49, 1, 1, 4, '4 Datiles Place', '20214092', 'Yellow', '164', ''),
(33, '60004156', 'ABO3090', 'White', 'Ford', 'Explorer', 'Ysmael  Jaime', '0000-00-00', 49, 1, 1, 4, '83 Pili', '20438908', 'Green', '165', ''),
(34, '60016251', 'UTJ687', 'Red', 'Honda', 'Civic', 'Oban  Eduardo SL / Maria Concepcion', '0000-00-00', 49, 1, 1, 4, '4 Datiles Place', '20628742', 'Yellow', '166', ''),
(35, '60004156', 'UKI598', 'Black', 'BMW', '520D', 'Ysmael  Jaime', '0000-00-00', 49, 1, 1, 4, '83 Pili', '20439183', 'Green', '184', ''),
(36, '60004492', 'NFY7094', '', 'Geely', 'Coolray', 'Cuesta  Jesus / Georgina ', '0000-00-00', 49, 1, 1, 4, '41 Kamias', 'x', 'Green', '191', ''),
(37, '60004492', 'XLD819', '', 'Volvo', 'XC70', 'Cuesta  Jesus / Georgina ', '0000-00-00', 49, 1, 1, 4, '41 Kamias', 'x', 'Green', '192', ''),
(38, '60004902', 'URI474', 'White', 'BMW', '530i', 'Nazareno  Rebecca', '0000-00-00', 49, 1, 1, 4, '41 Marang', '20216441', 'Green', '193', ''),
(39, '60004965', 'W0B755', 'White', 'Chevy', 'Trailblazer', 'Alvarez  Alexy', '0000-00-00', 49, 1, 1, 4, '42 Aratiles', '20214145', 'Green', '', ''),
(40, '60004965', 'WIP167', 'Gray', 'Honda', 'Accord', 'Alvarez  Alexy', '0000-00-00', 49, 1, 1, 4, '42 Aratiles', '20221034', 'Green', '194', ''),
(41, '60004965', 'DAE2258', 'Gray', 'Toyota', 'Avanza', 'Alvarez  Alexy', '0000-00-00', 49, 1, 1, 4, '42 Aratiles', '20628256', 'Green', '196', ''),
(42, '3000010832', 'ZNY714', 'White', 'Volvo', 'Wagon', 'Amuan  Baron / Ma. Aurelia Rufina', '0000-00-00', 49, 1, 1, 4, '1 Lipote', '20438870', 'Green', '201', ''),
(43, '3000010832', 'ZPT896', 'Black', 'Honda', 'Accord', 'Amuan  Baron / Ma. Aurelia Rufina', '0000-00-00', 49, 1, 1, 4, '1 Lipote', '20438993', 'Green', '', ''),
(44, '3000010832', 'XLU707', 'Silver', 'BMW', '520i', 'Amuan  Baron / Ma. Aurelia Rufina', '0000-00-00', 49, 1, 1, 4, '1 Lipote', '20439230', 'Green', '', ''),
(45, '3000010832', 'ABF1066', 'White', 'Ford', 'Ranger', 'Amuan  Baron / Ma. Aurelia Rufina', '0000-00-00', 49, 1, 1, 4, '1 Lipote', '20365535', 'Green', '', ''),
(46, '3000010832', 'UOM922', 'White', 'Subaru', 'Forester', 'Amuan  Baron / Ma. Aurelia Rufina', '0000-00-00', 49, 1, 1, 4, '1 Lipote', '20438998', 'Yellow', '717', ''),
(47, '3000010832', 'XTG904', 'Silver', 'Toyota', 'Vios', 'Amuan  Baron / Ma. Aurelia Rufina', '0000-00-00', 49, 1, 1, 4, '1 Lipote', '20628647', 'Yellow', '716', ''),
(48, '60005765', 'B4E871', 'White', 'Mitsubishi', 'Montero', 'Amuan  Jesty Josef / Kiara Karla', '0000-00-00', 49, 1, 1, 4, '108 Palawan', '20628469', 'Green', '202', ''),
(49, '60005765', 'ZNE146', 'Gray', 'Honda', 'Accord', 'Amuan  Jesty Josef / Kiara Karla', '0000-00-00', 49, 1, 1, 4, '108 Palawan', '20628293', 'Green', '', ''),
(50, '60004902', 'NAG5308', 'White', 'Toyota', 'Fortuner', 'Nazareno  Rebecca', '0000-00-00', 49, 1, 1, 4, '41 Marang', '20438960', 'Green', '', ''),
(51, '3000010872', 'TOD939', 'Gray Silver', 'Toyota', 'Altis', 'Cruz  Ramoncito', '0000-00-00', 49, 1, 1, 4, '65 Campanilla', '20221407', 'Green', '', ''),
(52, '60004396', 'USQ898', 'Silver', 'Toyota', 'Prado', 'Aganda  Benito / Anne ', '0000-00-00', 49, 1, 1, 4, '2 Duhat', '20438809', 'Green', '', ''),
(53, '60004396', 'DAE7348', 'Silver', 'Ford', 'Everest', 'Aganda  Benito / Anne ', '0000-00-00', 49, 1, 1, 4, '2 Duhat', '20439117', 'Green', '', ''),
(54, '3000010872', 'NQN811', 'Gray Silver', 'Mazda', 'CX7', 'Cruz  Ramoncito', '0000-00-00', 49, 1, 1, 4, '65 Campanilla', '20365394', 'Green', '', ''),
(55, '60005548', 'G21780', 'Blue', 'Suzuki', 'Jimny', 'Biagtan  Bartolome / Hana Marie ', '0000-00-00', 49, 1, 1, 4, '22 Acacia Drive', 'x', 'Green', '203', ''),
(56, '60005548', 'RNH109', 'White', 'Mitsubishi', 'Strada', 'Biagtan  Bartolome / Hana Marie ', '0000-00-00', 49, 1, 1, 4, '22 Acacia Drive', '20628666', 'Green', '204', ''),
(57, '60004958', 'GOY482', 'Silver', 'Suzuki', 'Apv', 'Gabor  Allan Jae / Melissa', '0000-00-00', 49, 1, 1, 4, '18 Dalanghita Drive', '20221436', 'Yellow', '205', ''),
(58, '60005174', 'NBJ2066', 'Black', 'VW', 'Golf', 'Mabagos  Raymond / Ma. Rachel', '0000-00-00', 49, 1, 1, 4, '41 Durian', '20503844', 'Yellow', '206', ''),
(59, '60005548', 'NDL6797', 'White', 'Mazda', '2', 'Biagtan  Bartolome / Hana Marie ', '0000-00-00', 49, 1, 1, 4, '22 Acacia Drive', '20400034', 'Green', '207', ''),
(60, '60005174', 'ABT5116', 'Black', 'Ford', 'Ranger', 'Mabagos  Raymond / Ma. Rachel', '0000-00-00', 49, 1, 1, 4, '41 Durian', '20400028', 'Yellow', '208', ''),
(61, '60005548', 'ZSA188', 'Red', 'Toyota', 'Vios', 'Biagtan  Bartolome / Hana Marie ', '0000-00-00', 49, 1, 1, 4, '22 Acacia Drive', '20330743', 'Green', '209', ''),
(62, '60023113', 'ABT4460', 'White', 'Toyota', 'Camry', 'Azarias  Hamilcar ', '0000-00-00', 49, 1, 1, 4, '23 Maningkil', '20439140', 'Green', '210', ''),
(63, '60023113', 'ZPH613', 'Beige', 'Toyota', 'Innova', 'Azarias  Hamilcar ', '0000-00-00', 49, 1, 1, 4, '23 Maningkil', '20330750', 'Green', '211', ''),
(64, '60023113', 'NCI4406', 'White', 'Honda', 'Accord', 'Azarias  Hamilcar ', '0000-00-00', 49, 1, 1, 4, '23 Maningkil', '20438917', 'Green', '212', ''),
(65, '60023113', 'PKO181', 'Gray', 'Mitsubishi', 'Montero', 'Azarias  Hamilcar ', '0000-00-00', 49, 1, 1, 4, '23 Maningkil', '20504112', 'Green', '212', ''),
(66, '60023113', 'TJI606', 'Brown', 'Mitsubishi', 'Montero', 'Azarias  Hamilcar ', '0000-00-00', 49, 1, 1, 4, '23 Maningkil', '20330748', 'Green', '213', ''),
(67, '60023113', '4720', 'White', 'Vespa', '', 'Azarias  Hamilcar ', '0000-00-00', 49, 1, 1, 4, '23 Maningkil', '20628051', 'Green', '214', ''),
(68, '60023113', '', 'Black - White', 'Harlex', '1200', 'Azarias  Hamilcar ', '0000-00-00', 49, 1, 1, 4, '23 Maningkil', '20628050', 'Green', '215', ''),
(69, '60023113', 'ZE68705', 'Blue', 'BMW', 'ADV 1250', 'Azarias  Hamilcar ', '0000-00-00', 49, 1, 1, 4, '23 Maningkil', '20628333', 'Green', '216', ''),
(70, '60023113', 'U2N646', 'Metallic White', 'BMW', '520i', 'Azarias  Carolyn', '0000-00-00', 49, 1, 1, 4, '23 Maningkil', '20758759', 'Green', '217', ''),
(71, '60005115', 'NBF9604', 'Gold Brown', 'Honda', 'City', 'Bairan  Jocelyn', '0000-00-00', 49, 1, 1, 4, '20 Lakatan', '20628331', 'Green', '218', ''),
(72, '60005115', 'NAW6949', 'Orchid Pearl', 'Honda', 'BRV', 'Bairan  Jocelyn', '0000-00-00', 49, 1, 1, 4, '20 Lakatan', '20628330', 'Green', '224', ''),
(73, '60005115', 'DAN7868', 'Meteor Gray', 'Ford', 'Everest', 'Bairan  Jocelyn', '0000-00-00', 49, 1, 1, 4, '20 Lakatan', '20628560', 'Green', '225', ''),
(74, '60005115', 'NEA2625', 'Garde Bronze', 'Toyota', 'Fortuner', 'Bairan  Jocelyn', '0000-00-00', 49, 1, 1, 4, '20 Lakatan', '20628376', 'Green', '226', ''),
(75, '60005115', 'MT9638', 'Silver', 'Hyundai', 'Accent', 'Bairan  Jocelyn', '0000-00-00', 49, 1, 1, 4, '20 Lakatan', '20628603', 'Yellow', '227', ''),
(76, '60004958', 'EF7655', 'Gray', 'Kia', 'Sportage', 'Gabor  Allan Jae / Melissa', '0000-00-00', 49, 1, 1, 4, '18 Dalanghita Drive', 'x', 'Yellow', '483', ''),
(77, '60005548', 'WDQ224', 'Black', 'Toyota', 'Fortuner', 'Biagtan  Bartolome / Hana Marie ', '0000-00-00', 49, 1, 1, 4, '22 Acacia Drive', '20216426', 'Green', '', ''),
(78, '60005174', 'WPK446', 'Maroon', 'Mitsubishi', 'Adventure', 'Mabagos  Raymond / Ma. Rachel', '0000-00-00', 49, 1, 1, 4, '41 Durian', '20400027', 'Green', '', ''),
(79, '60005548', 'NBR1704', 'Gray', 'Toyota', 'Fortuner', 'Biagtan  Bartolome / Hana Marie ', '0000-00-00', 49, 1, 1, 4, '22 Acacia Drive', '20627970', 'Green', '', ''),
(80, '60005174', 'PIB710', 'Gray', 'Mitsubishi', 'Montero', 'Mabagos  Raymond / Ma. Rachel', '0000-00-00', 49, 1, 1, 4, '41 Durian', '20300018', 'Green', '', ''),
(81, '60004702', 'COP253', 'White', 'Ford', 'Explorer', 'Aldaba  Emmanuel', '0000-00-00', 49, 1, 1, 4, '11 Sampaloc Place', '20628046', 'Green', '240', ''),
(82, '60004702', 'AAM8786', 'Black', 'Ford', 'Escape', 'Aldaba  Emmanuel', '0000-00-00', 49, 1, 1, 4, '11 Sampaloc Place', 'x', 'Green', '241', ''),
(83, '60004702', 'UBI962', 'White', 'Ford', 'Focus', 'Aldaba  Emmanuel', '0000-00-00', 49, 1, 1, 4, '11 Sampaloc Place', '20221848', 'Green', '242', ''),
(84, '60004537', 'NAT5359', 'Silver', 'Ford', 'Everest', 'Belgira  Dennis / Ma. Theresa', '0000-00-00', 49, 1, 1, 4, '109 Lanzones Drive', '20216694', 'Green', '', ''),
(85, '60004537', 'PLO400', 'Gray', 'Honda', 'CRV', 'Belgira  Dennis / Ma. Theresa', '0000-00-00', 49, 1, 1, 4, '109 Lanzones Drive', '20214151', 'Green', '', ''),
(86, '60004537', 'XHE128', 'Blue', 'Mitsubishi', 'Pajero', 'Belgira  Dennis / Ma. Theresa', '0000-00-00', 49, 1, 1, 4, '109 Lanzones Drive', '20216696', 'Yellow', '243', ''),
(87, '60016176', 'IP1492', 'Black', 'Ford', 'Everest', 'Coloquio  Roy James / Rosario', '0000-00-00', 49, 1, 1, 4, '29 Apitong', '20628290', 'Yellow', '244', ''),
(88, '60004434', 'DAL1815', 'Gray', 'Ford', 'Ranger', 'Berba  Gilbert', '0000-00-00', 49, 1, 1, 4, '11 Duhat', '20628214', '', '248', ''),
(89, '60005054', 'NCP8333', 'Silver', 'Toyota', 'Innova', 'Villareal  Marvilito', '0000-00-00', 49, 1, 1, 4, '12 Aratiles', '20503742', 'Green', '254', ''),
(90, '60016176', 'POY847', 'Dark Gray', 'Honda', 'Accord', 'Coloquio  Roy James / Rosario', '0000-00-00', 49, 1, 1, 4, '29 Apitong', '20330612', 'Yellow', '258', ''),
(91, '60005054', 'UQH264', 'Beige', 'Toyota', 'Vios', 'Villareal  Marvilito', '0000-00-00', 49, 1, 1, 4, '12 Aratiles', '20210873', 'Green', '', ''),
(92, '60005366', 'PVQ201', 'Titanium', 'Honda', 'CRV', 'Ripoll  Sebastian', '0000-00-00', 49, 1, 1, 4, '31 Campanilla', '20365424', 'Yellow', '', ''),
(93, '60004434', 'NOK7748', 'Orange', 'VW', 'Santana', 'Berba  Gilbert', '0000-00-00', 49, 1, 1, 4, '11 Duhat', '20628530', '', '259', ''),
(94, '60004434', 'F3P710', 'Gray', 'Nissan', 'Terra', 'Berba  Gilbert', '0000-00-00', 49, 1, 1, 4, '11 Duhat', '20758925', '', '260', ''),
(95, '60005054', 'TKO945', 'Dart Gray', 'Mitsubishi', 'Lancer', 'Villareal  Marvilito', '0000-00-00', 49, 1, 1, 4, '12 Aratiles', '20210872', 'Green', '261', ''),
(96, '60004492', 'UMI828', '', 'Hyundai', 'Sta. Fe', 'Cuesta  Jesus / Georgina ', '0000-00-00', 49, 1, 1, 4, '41 Kamias', '20221234', 'Yellow', '262', ''),
(97, '60005054', 'ZSP918', 'Beige', 'Toyota', 'Innova', 'Villareal  Marvilito', '0000-00-00', 49, 1, 1, 4, '12 Aratiles', '20221384', 'Green', '55', ''),
(98, '60004492', 'AHA1075', '', 'Nissan', 'Navarra', 'Cuesta  Jesus / Georgina ', '0000-00-00', 49, 1, 1, 4, '41 Kamias', '20300050', 'Yellow', '702', ''),
(99, '60005338', 'SMT611', 'White', 'Peugeot', '508', 'Tan  Jose Antonio / Sheila Uriarte', '0000-00-00', 49, 1, 1, 4, '40 Molave', '20221693', 'Yellow', '701', ''),
(100, '60005053', 'AAK1592', 'Silver', 'Toyota', 'Fortuner', 'Delfino  Nancy / Michael Joseph', '0000-00-00', 49, 1, 1, 4, '62 Marang', '20216561', 'Yellow', '263', ''),
(101, '60005243', 'PDO573', 'Gold', 'Subaru', 'Legacy', 'Ramos  Christopher', '0000-00-00', 49, 1, 1, 4, '11 Aratiles', '20330630', 'Green', '265', ''),
(102, '60004718', 'AAX8026', 'White', 'Hyundai', 'Sta. Fe', 'Espinosa  Norma / Feliciano  Antonio', '0000-00-00', 49, 1, 1, 4, '123 Sampaloc', '20330580', 'Yellow', '266', ''),
(103, '60005243', 'NDO527', 'Blue', 'Subaru', 'Impreza', 'Ramos  Christopher', '0000-00-00', 49, 1, 1, 4, '11 Aratiles', '20264824', 'Green', '267', ''),
(104, '60005243', 'NCP1685', 'Silver', 'Toyota', 'Altis', 'Ramos  Christopher', '0000-00-00', 49, 1, 1, 4, '11 Aratiles', '20439165', 'Green', '269', ''),
(105, '60007727', 'ASA3268', 'Silver', 'Subaru', 'Xtrail', 'Tavera  Marigold  / Joseph', '0000-00-00', 49, 1, 1, 4, '3 Zapote', '20503711', 'Yellow', '270', ''),
(106, '60004365', 'DAK3275', 'White', 'Toyota', 'Innova', 'Brion  Bernardita', '0000-00-00', 49, 1, 1, 4, '38 Dalandan Loop', 'x', '', '', ''),
(107, '60004365', 'YCJ879', 'Gun Metal Gray', 'Toyota', 'Supra', 'Brion  Bernardita', '0000-00-00', 49, 1, 1, 4, '38 Dalandan Loop', 'x', '', '', ''),
(108, '60004365', 'EH4559(130102)', 'White', 'Kia', 'Grand Carnival', 'Brion  Bernardita', '0000-00-00', 49, 1, 1, 4, '38 Dalandan Loop', '20503830', '', '', ''),
(109, '60004365', 'ZNT633', 'White', 'Hyundai', 'Starex', 'Brion  Bernardita', '0000-00-00', 49, 1, 1, 4, '38 Dalandan Loop', '20221749', '', '', ''),
(110, '60004365', 'TIM403', 'Dark Gray', 'Subaru', 'Forester', 'Brion  Bernardita', '0000-00-00', 49, 1, 1, 4, '38 Dalandan Loop', '20221746', '', '', ''),
(111, '60004365', 'OMB88', 'White', 'Toyota', 'Previa', 'Brion  Bernardita', '0000-00-00', 49, 1, 1, 4, '38 Dalandan Loop', '20221744', 'Green', '', ''),
(112, '60004253', 'NAV1522', 'Gray', 'Nissan', 'Almera', 'Buhaimed  Vivian', '0000-00-00', 49, 1, 1, 4, '59 Kasoy', 'x', 'Yellow', '', ''),
(113, '60004253', 'VIV55', 'White', 'Toyota', 'Fortuner', 'Buhaimed  Vivian', '0000-00-00', 49, 1, 1, 4, '59 Kasoy', '20438845', 'Green', '', ''),
(114, '60004253', 'DAC8853', 'Red', 'Isuzu', 'Mux', 'Buhaimed  Vivian', '0000-00-00', 49, 1, 1, 4, '59 Kasoy', '20504152', 'Green', '', ''),
(115, '60004253', 'TEF80', 'Blue', 'Subaru', '', 'Buhaimed  Vivian', '0000-00-00', 49, 1, 1, 4, '59 Kasoy', '20503761', 'Green', '', ''),
(116, '60004253', 'BDZ558', 'White', 'Toyota', 'Supra', 'Buhaimed  Vivian', '0000-00-00', 49, 1, 1, 4, '59 Kasoy', '20365269', 'Green', '', ''),
(117, '60005243', '', 'White', 'Mitsubishi', 'Pajero', 'Ramos  Christopher', '0000-00-00', 49, 1, 1, 4, '11 Aratiles', 'n', 'Green', '', ''),
(118, '60007727', 'WPE101', 'Red', 'Toyota', 'Prado', 'Tavera  Marigold  / Joseph', '0000-00-00', 49, 1, 1, 4, '3 Zapote', '20503709', 'Yellow', '271', ''),
(119, '60007694', 'ZI1464', 'White', 'Jaguar', 'XE', 'Chua  Vicente / Michael', '0000-00-00', 49, 1, 1, 4, '41 Kasaflora Loop', '20438883', 'Yellow', '272', ''),
(120, '60005243', 'XJU742', 'Red', 'Mitsubishi', 'Pajero', 'Ramos  Christopher', '0000-00-00', 49, 1, 1, 4, '11 Aratiles', '20221660', 'Green', '', ''),
(121, '60004961', 'ZCK160', 'Green', 'Toyota', 'Innova', 'Gonzalez  Eugenio Manuel / Ma. Christina Gonzalez', '0000-00-00', 49, 1, 1, 4, '38 Aratiles', '20628242', 'Green', '', ''),
(122, '60004961', 'NAU1099', 'Black', 'Honda', 'BRV', 'Gonzalez  Eugenio Manuel / Ma. Christina Gonzalez', '0000-00-00', 49, 1, 1, 4, '38 Aratiles', '20628240', 'Green', '', ''),
(123, '60023216', 'UQP267', 'White', 'Honda', 'CRV', 'Jugo  Jose Juan / Raquel', '0000-00-00', 49, 1, 1, 4, '1 Limon', '20628179', 'Yellow', '', ''),
(124, '60005431', 'NCA7709', 'White', 'Toyota', 'Fortuner', 'Cabarus  George Dennis / Grace', '0000-00-00', 49, 1, 1, 4, '12 Yakal', '20628477', 'Green', '', ''),
(125, '60005431', 'POP388', 'White', 'Hyundai', 'Starex', 'Cabarus  George Dennis / Grace', '0000-00-00', 49, 1, 1, 4, '12 Yakal', '20216775', 'Green', '', ''),
(126, '60005431', 'NBW5444', 'White', 'Toyota', 'Hilux', 'Cabarus  George Dennis / Grace', '0000-00-00', 49, 1, 1, 4, '12 Yakal', '20400040', 'Green', '', ''),
(127, '60005431', 'XJZ295', 'White', 'Nissan', 'Patrol', 'Cabarus  George Dennis / Grace', '0000-00-00', 49, 1, 1, 4, '12 Yakal', '20330673', 'Yellow', '', ''),
(128, '60005431', 'COU418', 'Silver', 'Ford', 'Ecosport', 'Cabarus  George Dennis / Grace', '0000-00-00', 49, 1, 1, 4, '12 Yakal', '20628029', 'Yellow', '', ''),
(129, '60004961', 'NAT5963', 'Gray Metallic', 'Toyota', 'Fortuner', 'Gonzalez  Eugenio Manuel / Ma. Christina Gonzalez', '0000-00-00', 49, 1, 1, 4, '38 Aratiles', '20628241', 'Green', '', ''),
(130, '60005106', 'AAY5172', 'Blue', 'Honda', 'Brio', 'Ramos  Maria Belinda / Jose Leandro', '0000-00-00', 49, 1, 1, 4, '8 Iba', '20216468', 'Yellow', '', ''),
(131, '60005106', 'XMU360', 'Red', 'Isuzu', 'Crosswind', 'Ramos  Maria Belinda / Jose Leandro', '0000-00-00', 49, 1, 1, 4, '8 Iba', '20216469', 'Yellow', '', ''),
(132, '60005306', 'NCV5180', 'White', 'Toyota', 'Hi-Ace Grandia', 'Ramos  Raul', '0000-00-00', 49, 1, 1, 4, '16 Durian Loop', '20503848', 'Green', '', ''),
(133, '60007724', 'ABS5959', 'White', 'Toyota', 'LXV', 'Gust  Haraya Villa Del Rosario / Robert Charles ', '0000-00-00', 49, 1, 1, 4, '16 Persimmon', '20628220', 'Yellow', '', ''),
(134, '60005306', 'NSR22', 'White', 'Ford', 'Explorer', 'Ramos  Raul', '0000-00-00', 49, 1, 1, 4, '16 Durian Loop', '20365382', 'Green', '', ''),
(135, '60007724', 'NCE2753', 'White', 'Toyota', 'Grandia', 'Gust  Haraya Villa Del Rosario / Robert Charles ', '0000-00-00', 49, 1, 1, 4, '16 Persimmon', '20503757', 'Yellow', '', ''),
(136, '60004167', 'WIK254', 'White', 'Hyundai', 'Sta. Fe', 'Dionisio  Florante', '0000-00-00', 49, 1, 1, 4, '53 Pili', '20439269', 'Yellow', '', ''),
(137, '60016204', 'NAV4447', 'White', 'Toyota', 'Fortuner', 'Chua  Jovan / Aileen Gretchelle', '0000-00-00', 49, 1, 1, 4, '14 Dao', '20439111', 'Green', '', ''),
(138, '60005011', 'PHI100', 'White', 'Mitsubishi', 'Pajero', 'Cancio  Benjamin ', '0000-00-00', 49, 1, 1, 4, '21 Aratiles Loop', 'x', '', '', ''),
(139, '60005011', 'HW5721', 'Silver', 'Subaru', 'WRX', 'Cancio  Benjamin ', '0000-00-00', 49, 1, 1, 4, '21 Aratiles Loop', '20365281', '', '', ''),
(140, '60005011', 'NCP5978', 'Red', 'Mini Cooper', 'S', 'Cancio  Benjamin ', '0000-00-00', 49, 1, 1, 4, '21 Aratiles Loop', '20503731', '', '', ''),
(141, '60005011', 'BYC111', 'Gray', 'BMW', '328i', 'Cancio  Benjamin ', '0000-00-00', 49, 1, 1, 4, '21 Aratiles Loop', '20214144', '', '273', ''),
(142, '60005011', 'POI986', 'Urban Khaki', 'Toyota', 'Rav4', 'Cancio  Benjamin ', '0000-00-00', 49, 1, 1, 4, '21 Aratiles Loop', '20628346', '', '274', ''),
(143, '60004167', 'XRA379', 'Silver', 'Nissan', 'Xtrail', 'Dionisio  Florante', '0000-00-00', 49, 1, 1, 4, '53 Pili', '20330703', 'Yellow', '275', ''),
(144, '60004663', 'NAV926', 'Black', 'Honda', 'Civic', 'Quiray  Marco Carlo Bautista ', '0000-00-00', 49, 1, 1, 4, '61 Kamias', '20216464', 'Yellow', '276', ''),
(145, '60004663', 'NFT1184', 'Black', 'Mercedez Benz', 'A180', 'Quiray  Marco Carlo Bautista ', '0000-00-00', 49, 1, 1, 4, '61 Kamias', '20628612', 'Yellow', '277', ''),
(146, '60023216', 'NEA1920', 'Blue', 'Mazda', 'CX9', 'Jugo  Jose Juan / Raquel', '0000-00-00', 49, 1, 1, 4, '1 Limon', '20628466', 'Green', '278', ''),
(147, '60023216', 'NBT3076', 'Black', 'Subaru', 'Forester', 'Jugo  Jose Juan / Raquel', '0000-00-00', 49, 1, 1, 4, '1 Limon', '20628200', 'Green', '279', ''),
(148, '60004499', 'TQV812', 'Bronze', 'Toyota', 'Innova', 'Luna  Benjamin Jr.', '0000-00-00', 49, 1, 1, 4, '55 Kamias', '20216509', 'Green', '280', ''),
(149, '60004076', 'ZJC266', 'Black', 'Toyota', 'Fortuner', 'Arriola  Patricia', '0000-00-00', 49, 1, 1, 4, '59 Lanzones', '20264814', 'Green', '281', ''),
(150, '60004499', 'TIJ663', 'Black', 'Toyota', 'Prado', 'Luna  Benjamin Jr.', '0000-00-00', 49, 1, 1, 4, '55 Kamias', '20504007', 'Green', '282', ''),
(151, '60004499', 'NAB2018', 'Gray', 'Mitsubishi', 'Montero', 'Luna  Benjamin Jr.', '0000-00-00', 49, 1, 1, 4, '55 Kamias', '20438903', 'Green', '', ''),
(152, '60004499', 'MV512426', 'White', 'KYMCO', 'KYMCO', 'Luna  Benjamin Jr.', '0000-00-00', 49, 1, 1, 4, '55 Kamias', '20503822', 'Green', '', ''),
(153, '60004499', 'BEV840', 'White', 'Porsche', 'Boxster', 'Luna  Benjamin Jr.', '0000-00-00', 49, 1, 1, 4, '55 Kamias', '20221093', 'Green', '', ''),
(154, '60005089', 'UJI447', 'White', 'Lexus', '', 'Casanova  Noel', '0000-00-00', 49, 1, 1, 4, '11 Iba', '20438835', 'Green', '283', ''),
(155, '60005089', 'DAK9162', 'White', 'Ford', '', 'Casanova  Noel', '0000-00-00', 49, 1, 1, 4, '11 Iba', '20628480', 'Green', '285', ''),
(156, '60005089', 'AAI9114', 'Black', 'Ford', 'Explorer', 'Casanova  Noel', '0000-00-00', 49, 1, 1, 4, '11 Iba', '20221162', 'Green', '286', ''),
(157, '60005089', 'NHO355', 'Gray', 'Honda', 'Accord', 'Casanova  Noel', '0000-00-00', 49, 1, 1, 4, '11 Iba', '20216785', 'Yellow', '286', ''),
(158, '60005785', 'DAH1872', 'Dark Green', 'Honda', 'CRV', 'Castañeda  Salvador / Samantha', '0000-00-00', 49, 1, 1, 4, '8 Kaimito Loop', '20503754', 'Green', '287', ''),
(159, '60005785', 'AHA2907', 'Orange', 'Nissan', 'Navarra', 'Castañeda  Salvador / Samantha', '0000-00-00', 49, 1, 1, 4, '8 Kaimito Loop', '20330632', 'Green', '288', ''),
(160, '60005785', 'POI274', 'Metal', 'Honda', 'CRV', 'Castañeda  Salvador / Samantha', '0000-00-00', 49, 1, 1, 4, '8 Kaimito Loop', '20330633', 'Green', '290', ''),
(161, '60005785', 'UOO365', 'Silver', 'Mazda', 'CX5', 'Castañeda  Salvador / Samantha', '0000-00-00', 49, 1, 1, 4, '8 Kaimito Loop', '20330634', 'Green', '291', ''),
(162, '60005638', 'USQ942', 'Urban Titanium', 'Honda', 'City', 'Battad  Jaime / Rhodora', '0000-00-00', 49, 1, 1, 4, '16 Canistel Place', '20217684', 'Green', '292', ''),
(163, '60005265', 'WJS121', 'Black', 'Mercedez Benz', '200E', 'Castillo  Arsenio / Maria Ana Teresa ', '0000-00-00', 49, 1, 1, 4, '36 Yakal', '20439243', 'Green', '293', ''),
(164, '60005638', 'ZNB464', 'Silver Metallic', 'Toyota', 'Altis', 'Battad  Jaime / Rhodora', '0000-00-00', 49, 1, 1, 4, '16 Canistel Place', '20216383', 'Green', '294', ''),
(165, '60005265', 'NBF3286', 'White', 'BAIC', '45Van', 'Castillo  Arsenio / Maria Ana Teresa ', '0000-00-00', 49, 1, 1, 4, '36 Yakal', '20628155', 'Green', '295', ''),
(166, '60005638', 'XTM645', 'Silver', 'Ford', 'Escape', 'Battad  Jaime / Rhodora', '0000-00-00', 49, 1, 1, 4, '16 Canistel Place', '20216385', 'Green', '297', ''),
(167, '60005638', 'ZMZ969', 'Black', 'Toyota', 'Camry', 'Battad  Jaime / Rhodora', '0000-00-00', 49, 1, 1, 4, '16 Canistel Place', '20216759', 'Green', '298', ''),
(168, '60005645', 'NCE5185', 'Alumina Jade', 'Toyota', 'Innova', 'Divina  Zeus', '0000-00-00', 49, 1, 1, 4, '6 Canistel Place', '20438962', 'Green', '301', ''),
(169, '60005674', 'DAI7130', 'Black', 'Ford', 'Explorer', 'Castro  Salvador / Luisa', '0000-00-00', 49, 1, 1, 4, '29 Daligan', '20628440', 'n/a', '302', ''),
(170, '60005674', 'NBP8425', 'White', 'Toyota', 'Fortuner', 'Castro  Salvador / Luisa', '0000-00-00', 49, 1, 1, 4, '29 Daligan', '20628441', 'n/a', '303', ''),
(171, '60005674', 'NAD1987', 'Silver', 'Toyota', 'Fortuner', 'Castro  Salvador / Luisa', '0000-00-00', 49, 1, 1, 4, '29 Daligan', 'x', 'n/a', '', ''),
(172, '60004333', 'NCV4689', 'White', 'Toyota', 'Fortuner', 'Celis  Mariano Ii / Violeta', '0000-00-00', 49, 1, 1, 4, '16 Chico', '20503814', 'Green', '', ''),
(173, '60004333', 'ZBZ945', 'White', 'Mitsubishi', 'Pajero', 'Celis  Mariano Ii / Violeta', '0000-00-00', 49, 1, 1, 4, '16 Chico', '20214170', 'Green', '', ''),
(174, '60004333', 'ZNM232', 'Silver', 'Hyundai', 'Sta. Fe', 'Celis  Mariano Ii / Violeta', '0000-00-00', 49, 1, 1, 4, '16 Chico', '20214172', 'Green', '', ''),
(175, '60004333', 'CMY984', 'Beige', 'Mitsubishi', 'Jeep', 'Celis  Mariano Ii / Violeta', '0000-00-00', 49, 1, 1, 4, '16 Chico', '20438875', 'Green', '', ''),
(176, '60004333', 'XAH847', 'Beige', 'Volvo', 'S60', 'Celis  Mariano Ii / Violeta', '0000-00-00', 49, 1, 1, 4, '16 Chico', '20214169', 'Yellow', '304', ''),
(177, '60004333', 'XXX787', 'Mint', 'Nissan', 'Frontier', 'Celis  Mariano Ii / Violeta', '0000-00-00', 49, 1, 1, 4, '16 Chico', '20214171', 'Yellow', '305', ''),
(178, '60005584', 'DAI8446', 'Orange', 'Ford', 'Ranger', 'Cardenas  Francisco / Maria Remedios', '0000-00-00', 49, 1, 1, 4, '15 Amiling', '20628059', 'Green', '306', ''),
(179, '60005645', 'WDQ664', 'Black', 'Toyota', 'Vios', 'Divina  Zeus', '0000-00-00', 49, 1, 1, 4, '6 Canistel Place', '20207776', 'Green', '', ''),
(180, '60005084', 'NDF1930', 'White', 'Toyota', 'Alphard', 'Chen  Ren Hao', '0000-00-00', 49, 1, 1, 4, '22 Iba', '20438806', '', '', ''),
(181, '60005084', 'IAB2942', 'Black', 'Toyota', 'LC200', 'Chen  Ren Hao', '0000-00-00', 49, 1, 1, 4, '22 Iba', '20503863', '', '', ''),
(182, '60005084', 'A6N205', 'White', 'Lexus', 'RX450H', 'Chen  Ren Hao', '0000-00-00', 49, 1, 1, 4, '22 Iba', '20503992', '', '307', ''),
(183, '60005084', '', 'White', 'Lexus', 'LS460', 'Chen  Ren Hao', '0000-00-00', 49, 1, 1, 4, '22 Iba', '', '', '308', ''),
(184, '60005084', 'DAJ9519', 'Blue', 'Ford', 'Raptor', 'Chen  Ren Hao', '0000-00-00', 49, 1, 1, 4, '22 Iba', '20628629', '', '309', ''),
(185, '60005084', 'NBP1515', 'Maroon', 'Toyota', 'Innova', 'Chen  Ren Hao', '0000-00-00', 49, 1, 1, 4, '22 Iba', '', '', '', ''),
(186, '60004876', 'JJM3805', 'Gray', 'Toyota', 'Fortuner', 'Cheng  George', '0000-00-00', 49, 1, 1, 4, '8 Guyabano', '20400080', 'Green', '', ''),
(187, '60004876', 'F1E842', 'White', 'Nissan', 'Terra', 'Cheng  George', '0000-00-00', 49, 1, 1, 4, '8 Guyabano', '20628088', 'Green', '310', ''),
(188, '60004876', 'P8E157', 'Red', 'Toyota', 'Hibrid', 'Cheng  George', '0000-00-00', 49, 1, 1, 4, '8 Guyabano', '20524168', 'Green', '311', ''),
(189, '60022913', 'NQC168', 'White', 'BMW', '3 Series', 'Chua  Henry (Bathalami)', '0000-00-00', 49, 1, 1, 4, '62 Granadilia', '20221690', 'Green', '312', ''),
(190, '60022913', 'NDE3233', 'Black', 'Peugeot', 'Expert Tepee', 'Chua  Henry (Bathalami)', '0000-00-00', 49, 1, 1, 4, '62 Granadilia', '20439242', 'Green', '313', ''),
(191, '60022913', 'NAZ8310', 'Brown', 'Audi', 'Q7', 'Chua  Henry (Bathalami)', '0000-00-00', 49, 1, 1, 4, '62 Granadilia', '20504019', 'Green', '314', ''),
(192, '60022913', 'NBO2106', 'Gray', 'Toyota', 'Fortuner', 'Chua  Henry (Bathalami)', '0000-00-00', 49, 1, 1, 4, '62 Granadilia', '20628275', 'Green', '315', ''),
(193, '60004762', 'NCZ5687', 'Red', 'Jeep', 'Wrangler', 'Dizon  Vincent', '0000-00-00', 49, 1, 1, 4, '87 Sampaloc', '20628684', 'Green', '316', ''),
(194, '60005561', 'NDG6076', 'White', 'Toyota', 'Fortuner', 'Gallega  Rodel', '0000-00-00', 49, 1, 1, 4, '5 Amiling', 'x', 'Green', '317', ''),
(195, '60005033', 'TIB964', '', 'Ford', 'Explorer', 'Lasaten  Contancio Jesus Jr / Ma. Emily', '0000-00-00', 49, 1, 1, 4, '43 Aratiles', '20330773', 'Green', '318', ''),
(196, '60004762', 'KRS168', 'Blue / Silver', 'Toyota', 'RAV4', 'Dizon  Vincent', '0000-00-00', 49, 1, 1, 4, '87 Sampaloc', 'x', 'Green', '319', ''),
(197, '60004667', 'NBJ5607', 'Gray', 'Toyota', 'Fortuner', 'Pita  Patrick / Ma. Donna', '0000-00-00', 49, 1, 1, 4, '4 Sineguelas', 'x', 'Green', '320', ''),
(198, '60004667', 'AAH6821', 'Blue', 'Mitsubishi', 'Montero', 'Pita  Patrick / Ma. Donna', '0000-00-00', 49, 1, 1, 4, '4 Sineguelas', '20400029', 'Green', '661', ''),
(199, '60004425', 'ZAD573', 'Mint Green', 'Toyota', 'Innova', 'Co  Jesus', '0000-00-00', 49, 1, 1, 4, '39 Duhat', '20216656', 'Green', '321', ''),
(200, '60004425', 'XAD403', 'Amazon Green', 'Toyota', 'Corolla Altis', 'Co  Jesus', '0000-00-00', 49, 1, 1, 4, '39 Duhat', '20439293', 'Green', '329', ''),
(201, '60003992', 'NAP8903', 'White', 'Toyota', 'Land Cruiser', 'Co  Jimmy / Shiela', '0000-00-00', 49, 1, 1, 4, '34 Rambutan', '20503940', 'n/a', '330', ''),
(202, '60003992', 'P7B764', 'Pearl', 'Toyota', 'Hi-Ace', 'Co  Jimmy / Shiela', '0000-00-00', 49, 1, 1, 4, '34 Rambutan', '20758840', 'n/a', '331', ''),
(203, '60003992', 'VN2784', 'White', 'Toyota', 'FJ Cruiser', 'Co  Jimmy / Shiela', '0000-00-00', 49, 1, 1, 4, '34 Rambutan', '20439221', 'n/a', '332', ''),
(204, '60003992', 'WPO653', 'Silver', 'Subaru', 'Forester', 'Co  Jimmy / Shiela', '0000-00-00', 49, 1, 1, 4, '34 Rambutan', '20504179', 'n/a', '', ''),
(205, '60003992', 'A5LA132858', 'Gray', 'Toyota', 'Hilux', 'Co  Jimmy / Shiela', '0000-00-00', 49, 1, 1, 4, '34 Rambutan', 'x', 'n/a', '333', ''),
(206, '60003992', 'NEB3139', 'Black', 'Ford', 'Ranger', 'Co  Jimmy / Shiela', '0000-00-00', 49, 1, 1, 4, '34 Rambutan', 'x', 'n/a', '', ''),
(207, '60005390', 'NCE7705', 'White', 'Subaru', 'Forester', 'Miranda  Noel / Mary Elizabeth', '0000-00-00', 49, 1, 1, 4, '10 Aralia', '20365434', 'Green', '334', ''),
(208, '60005390', 'NBI9058', 'Red', 'Subaru', 'Levorg', 'Miranda  Noel / Mary Elizabeth', '0000-00-00', 49, 1, 1, 4, '10 Aralia', '20503752', 'Green', '335', ''),
(209, '60005390', 'BDV261', 'Blue', 'Subaru', 'Forester', 'Miranda  Noel / Mary Elizabeth', '0000-00-00', 49, 1, 1, 4, '10 Aralia', '20504193', 'Green', '336', ''),
(210, '60007957', 'NDB6015', 'Black', 'Toyota', 'Fortuner', 'Pasion  Peter Daniel', '0000-00-00', 49, 1, 1, 4, '30 Tanguili Loop', '20365381', 'Green', '337', ''),
(211, '60005644', 'POW234', 'White', 'Mitsubishi', 'Montero', 'Cortina  Jose Jr. / Eleonor', '0000-00-00', 49, 1, 1, 4, '7 Canistel Place', '20330824', 'Green', '338', ''),
(212, '60005644', 'NCM6750', 'Gray', 'Hyundai', 'Starex', 'Cortina  Jose Jr. / Eleonor', '0000-00-00', 49, 1, 1, 4, '7 Canistel Place', '20439166', 'Green', '338', ''),
(213, '60007694', 'PQP173', 'Black', 'Mitsubishi', 'Pajero', 'Chua  Vicente / Michael', '0000-00-00', 49, 1, 1, 4, '41 Kasaflora Loop', '20628759', 'Green', '339', ''),
(214, '60007694', 'NBA6898', 'Gray', 'Toyota', 'Land Cruiser', 'Chua  Vicente / Michael', '0000-00-00', 49, 1, 1, 4, '41 Kasaflora Loop', '20439178', 'Green', '346', ''),
(215, '60023169', 'NCN6514', 'Gray', 'Chevy', 'Trailblazer', 'Lopez  Juan', '0000-00-00', 49, 1, 1, 4, '42 Cacao Loop', 'x', 'Green', '347', ''),
(216, '60004156', 'NBR8270', 'Gray', 'Audi', 'Q7', 'Ysmael  Jaime', '0000-00-00', 49, 1, 1, 4, '83 Pili', '20628218', 'Green', '348', ''),
(217, '60004145', 'UYO236', 'Gray Metallic', 'Toyota', 'Innova', 'Latonio  Patrick Gerard', '0000-00-00', 49, 1, 1, 4, '60 Kasoy', '20330731', 'Green', '349', ''),
(218, '60004145', 'DAG3824', 'Metallic Gray', 'Toyota', 'Innova', 'Latonio  Patrick Gerard', '0000-00-00', 49, 1, 1, 4, '60 Kasoy', '20503840', 'Green', '350', ''),
(219, '60004380', 'NAY7635', 'White', 'Toyota', 'Land Cruiser', 'Calinisan  Michael', '0000-00-00', 49, 1, 1, 4, '9 Lanzones', '20628156', 'Green', '', ''),
(220, '60004380', 'DAN4788', 'Black', 'Toyota', 'Super Grandia', 'Calinisan  Michael', '0000-00-00', 49, 1, 1, 4, '9 Lanzones', 'x', 'Green', '351', ''),
(221, '60004380', 'NCG2937', 'White', 'BMW', 'X6', 'Calinisan  Michael', '0000-00-00', 49, 1, 1, 4, '9 Lanzones', '20628596', 'Green', '', ''),
(222, '60005420', 'P3V946', 'Black', 'Toyota', '', 'Cuaki  Evangeline / Wendell', '0000-00-00', 49, 1, 1, 4, 'P6A B5 L24', '20524167', '', '352', ''),
(223, '60004380', 'AJA7266', 'Silver', 'Mercedez Benz', 'SLK350', 'Calinisan  Michael', '0000-00-00', 49, 1, 1, 4, '9 Lanzones', '20628222', 'Green', '353', ''),
(224, '60004380', 'NAF4257', 'Orange', 'Ford', 'Ranger', 'Calinisan  Michael', '0000-00-00', 49, 1, 1, 4, '9 Lanzones', '20628708', 'Green', '354', ''),
(225, '60004380', 'NOQ9921', 'White', 'Toyota', 'Hilux', 'Calinisan  Michael', '0000-00-00', 49, 1, 1, 4, '9 Lanzones', 'x', 'Green', '355', ''),
(226, '60005396', 'DGK975', 'White', 'Toyota', 'Corolla', 'Samson  Philip', '0000-00-00', 49, 1, 1, 4, '36 Agoho', 'none', 'Yellow', '356', ''),
(227, '60004380', 'NAB7137', 'Black', 'Ford', 'Ecosport', 'Calinisan  Michael', '0000-00-00', 49, 1, 1, 4, '9 Lanzones', '20628149', 'Green', '658', ''),
(228, '60022850', 'NIC736', 'Beige', 'Toyota', 'Altis', 'Cuna  Vicente / Luisa', '0000-00-00', 49, 1, 1, 4, '7 Sua', 'x', 'Green', '646', ''),
(229, '60022850', 'NAA1336', 'Silver', 'Toyota', 'Prado', 'Cuna  Vicente / Luisa', '0000-00-00', 49, 1, 1, 4, '7 Sua', '20504160', 'Green', '652', ''),
(230, '60022850', 'JVT212', 'Titanium', 'Lexus', 'ES', 'Cuna  Vicente / Luisa', '0000-00-00', 49, 1, 1, 4, '7 Sua', '20504162', 'Green', '651', ''),
(231, '60022850', 'NEN3489', 'Titanium', 'Lexus', 'NX', 'Cuna  Vicente / Luisa', '0000-00-00', 49, 1, 1, 4, '7 Sua', '20628710', 'Green', '357', ''),
(232, '60022850', 'TMI317', 'Dark Gray', 'Toyota', 'Camry', 'Cuna  Vicente / Luisa', '0000-00-00', 49, 1, 1, 4, '7 Sua', '20504161', 'Yellow', '358', ''),
(233, '60022850', 'VB6727', 'Gray', 'Toyota', 'Fortuner', 'Cuna  Vicente / Luisa', '0000-00-00', 49, 1, 1, 4, '7 Sua', '20504163', 'Yellow', '359', ''),
(234, '60004101', 'APC800', 'White', 'Toyota', 'Land Cruiser', 'Cureg  Alexander / Anna Chella', '0000-00-00', 49, 1, 1, 4, '14 Kasoy ', '20216744', 'Green', '360', ''),
(235, '60004101', 'LOA009', 'Black', 'BMW', 'X5', 'Cureg  Alexander / Anna Chella', '0000-00-00', 49, 1, 1, 4, '14 Kasoy ', '20503911', 'Green', '361', ''),
(236, '60004101', 'APC05', 'Silver', 'Mercedez Benz', 'E200', 'Cureg  Alexander / Anna Chella', '0000-00-00', 49, 1, 1, 4, '14 Kasoy ', '20365481', 'Green', '362', ''),
(237, '60004101', 'NOF508', 'Black', 'Mitsubishi', 'Pajero', 'Cureg  Alexander / Anna Chella', '0000-00-00', 49, 1, 1, 4, '14 Kasoy ', '20221791', 'Green', '363', ''),
(238, '60004101', 'WMD375', 'Blue', 'Mitsubishi', 'Pajero', 'Cureg  Alexander / Anna Chella', '0000-00-00', 49, 1, 1, 4, '14 Kasoy ', '20216625', 'Green', '364', ''),
(239, '60004101', 'NRO743', 'Beige', 'Honda', 'CRV', 'Cureg  Alexander / Anna Chella', '0000-00-00', 49, 1, 1, 4, '14 Kasoy ', '20216624', 'Green', '365', ''),
(240, '60005396', 'WHI703', 'Orange', 'Honda', 'Civic', 'Samson  Philip', '0000-00-00', 49, 1, 1, 4, '36 Agoho', 'none', 'Yellow', '366', ''),
(241, '60004380', 'NBH2270', 'Gray', 'Ford', 'Ranger', 'Calinisan  Michael', '0000-00-00', 49, 1, 1, 4, '9 Lanzones', '20628147', 'Green', '', ''),
(242, '60004380', '314687', 'White', 'BMW', 'GSA R1200', 'Calinisan  Michael', '0000-00-00', 49, 1, 1, 4, '9 Lanzones', '20628677', 'Green', '', ''),
(243, '60004351', 'NAD6215', 'Black', 'Isuzu', 'Dmax', 'De Lara  Emily', '0000-00-00', 49, 1, 1, 4, '29 Dalandan', '20265488', '', '', ''),
(244, '60004351', '', 'Gray', 'VW', 'Passat', 'De Lara  Emily', '0000-00-00', 49, 1, 1, 4, '29 Dalandan', 'x', '', '', ''),
(245, '60004351', 'AJA4128', 'White', 'Isuzu', 'Mux', 'De Lara  Emily', '0000-00-00', 49, 1, 1, 4, '29 Dalandan', '20265488', '', '', ''),
(246, '60004351', 'NAA4480', 'Gray', 'Honda', 'CRV', 'De Lara  Emily', '0000-00-00', 49, 1, 1, 4, '29 Dalandan', '20758831', '', '', ''),
(247, '60007699', 'INM406', 'Red', 'Toyota', 'Innova', 'De Leon  Carlo / Rachel', '0000-00-00', 49, 1, 1, 4, '49 Acacia Drive', 'x', '', '', ''),
(248, '60007699', 'WDI998', 'Silver', 'Subaru', 'XV', 'De Leon  Carlo / Rachel', '0000-00-00', 49, 1, 1, 4, '49 Acacia Drive', '20365355', '', '', ''),
(249, '60007699', 'NBH2865', 'Black', 'Ford', 'Expedition', 'De Leon  Carlo / Rachel', '0000-00-00', 49, 1, 1, 4, '49 Acacia Drive', '20628150', '', '', ''),
(250, '60007699', 'DAO6361', 'Silver', 'Kia', 'Carnival', 'De Leon  Carlo / Rachel', '0000-00-00', 49, 1, 1, 4, '49 Acacia Drive', '20628249', '', '', ''),
(251, '60007699', 'NDJ8323', 'Gray', 'Mazda', '6', 'De Leon  Carlo / Rachel', '0000-00-00', 49, 1, 1, 4, '49 Acacia Drive', '20628481', '', '', ''),
(252, '60007699', 'MIN198', 'Blue', 'Ford', 'Everest', 'De Leon  Carlo / Rachel', '0000-00-00', 49, 1, 1, 4, '49 Acacia Drive', '20438918', '', '', ''),
(253, '60007699', 'UKQ914', 'White', 'Mini Cooper', 'Country', 'De Leon  Carlo / Rachel', '0000-00-00', 49, 1, 1, 4, '49 Acacia Drive', '20400061', '', '', ''),
(254, '60007699', 'AHA8743', 'Blue', 'Subaru', 'XV', 'De Leon  Carlo / Rachel', '0000-00-00', 49, 1, 1, 4, '49 Acacia Drive', '20439072', '', '', ''),
(255, '60004366', 'UAJ431', 'Green', 'BMW', '', 'De Vera  Jude / Ma. Wivina', '0000-00-00', 49, 1, 1, 4, '35 Kamachile', 'x', 'Yellow', '', ''),
(256, '60004366', 'WJI683', 'Silver', 'Ford', 'Ranger', 'De Vera  Jude / Ma. Wivina', '0000-00-00', 49, 1, 1, 4, '35 Kamachile', 'x', 'Yellow', '', ''),
(257, '60004366', 'WNO883', 'Brown', 'Subaru', '', 'De Vera  Jude / Ma. Wivina', '0000-00-00', 49, 1, 1, 4, '35 Kamachile', '20628313', 'Green', '', ''),
(258, '60004366', 'UPE602', 'Light Blue', 'Volvo', '', 'De Vera  Jude / Ma. Wivina', '0000-00-00', 49, 1, 1, 4, '35 Kamachile', '20628325', 'Green', '686', ''),
(259, '60005644', '61W329', 'White', 'Suzuki', 'Super Carry', 'Cortina  Jose Jr. / Eleonor', '0000-00-00', 49, 1, 1, 4, '7 Canistel Place', '20524169', 'Green', '685', ''),
(260, '60004813', 'GS2005', 'Silver', 'Mercedez Benz', 'SUV', 'Sy Qui  Evelyn / Roman', '0000-00-00', 49, 1, 1, 4, '1 Kalamansi', '20365442', 'Yellow', '687', ''),
(261, '60005328', 'TQG205', 'Silver', 'Toyota', 'Fortuner', 'Boritzer  Maria', '0000-00-00', 49, 1, 1, 4, '5 Acacia Drive', '20438970', 'Green', '368', ''),
(262, '60005199', 'C2T861', 'Diffused Silver', 'Ford', 'Everest', 'Carrion Ramon / Christopher', '0000-00-00', 49, 1, 1, 4, '34 Durian', '20628766', 'Green', '369', ''),
(263, '60005194', 'NCY3707', 'Silver', 'Toyota', 'Fortuner', 'Dela Cruz  Charles Jay / Marites ', '0000-00-00', 49, 1, 1, 4, '24 Durian', '20438828', 'Green', '370', ''),
(264, '60005194', 'ABO7007', 'White', 'Ford', 'Focus', 'Dela Cruz  Charles Jay / Marites ', '0000-00-00', 49, 1, 1, 4, '24 Durian', '20503758', 'Green', '371', ''),
(265, '60005194', 'TIS437', 'Black', 'Ford', 'Escape', 'Dela Cruz  Charles Jay / Marites ', '0000-00-00', 49, 1, 1, 4, '24 Durian', '20216589', 'Green', '372', ''),
(266, '60005194', 'XBP366', 'Black', 'Toyota', 'Revo', 'Dela Cruz  Charles Jay / Marites ', '0000-00-00', 49, 1, 1, 4, '24 Durian', '20216590', 'Green', '', ''),
(267, '60004987', 'DCQ5082', 'Red', 'Toyota', 'FJ Cruiser', 'Dela Cruz  Melvin Jeffrey / Vilma ', '0000-00-00', 49, 1, 1, 4, '62 Aratiles', '20628386', 'Green', '', ''),
(268, '60004987', 'WIY853', 'Black', 'Nissan', 'Patrol', 'Dela Cruz  Melvin Jeffrey / Vilma ', '0000-00-00', 49, 1, 1, 4, '62 Aratiles', '20503898', 'Green', '373', ''),
(269, '60004987', 'UIH505', 'White', 'Honda', 'Jazz', 'Dela Cruz  Melvin Jeffrey / Vilma ', '0000-00-00', 49, 1, 1, 4, '62 Aratiles', '20216719', 'Green', '374', ''),
(270, '60004987', 'NAI101', 'Black', 'Honda', 'CRV', 'Dela Cruz  Melvin Jeffrey / Vilma ', '0000-00-00', 49, 1, 1, 4, '62 Aratiles', '20216717', 'Green', '375', ''),
(271, '60004987', '3758', 'Gray', 'Honda', 'Motorcycle', 'Dela Cruz  Melvin Jeffrey / Vilma ', '0000-00-00', 49, 1, 1, 4, '62 Aratiles', '20628387', 'Green', '376', ''),
(272, '60005819', 'NAR6344', 'Bronze', 'Toyota', 'Fortuner', 'Juco  Dorotea Susana', '0000-00-00', 49, 1, 1, 4, '30 Dalandan Loop', '20439046', 'Green', '377', ''),
(273, '60005709', 'WTC771', 'Maroon', 'Toyota', 'Altis', 'Laman  Guillermo', '0000-00-00', 49, 1, 1, 4, '50 Kamaris', '20216451', 'Green', '378', ''),
(274, '60005328', 'NBX8873', 'Silver', 'Toyota', 'Innova', 'Boritzer  Maria', '0000-00-00', 49, 1, 1, 4, '5 Acacia Drive', '20439079', 'Green', '379', ''),
(275, '60004574', 'ZJB352', 'Black', 'Chevy', 'Town & Country', 'Parlade  Cymbeline', '0000-00-00', 49, 1, 1, 4, '66 Kamias', '20221072', 'Green', '381', ''),
(276, '60004897', 'ZRH685', 'Silver', 'Toyota', 'Innova', 'Reyes  Carmencita / Rizalito', '0000-00-00', 49, 1, 1, 4, '19 Guyabano', '20628229', 'Green', '382', ''),
(277, '60005012', 'WOX315', 'Gray', 'Toyota', 'Fortuner', 'Santiago  Norman Frederick / Carmen', '0000-00-00', 49, 1, 1, 4, '39 Aratiles', '20221118', 'Green', '117', ''),
(278, '60005106', 'NEH3475', 'Blue', 'Ford', 'Ecosport', 'Ramos  Maria Belinda / Jose Leandro', '0000-00-00', 49, 1, 1, 4, '8 Iba', '20628592', 'Green', '478', ''),
(279, '60005106', 'ABQ5143', 'Black', 'VW', 'Touareg', 'Ramos  Maria Belinda / Jose Leandro', '0000-00-00', 49, 1, 1, 4, '8 Iba', '20216466', 'Green', '384', ''),
(280, '60005132', 'ABT119', '', 'Jeep', 'Grand Cherokee', 'Magpantay  Raulito ', '0000-00-00', 49, 1, 1, 4, '222 Sampaloc Drive', '20330567', 'Green', '401', ''),
(281, '60016251', 'NBA5706', 'Black', 'Isuzu', 'Mux', 'Oban  Eduardo SL / Maria Concepcion', '0000-00-00', 49, 1, 1, 4, '4 Datiles Place', '20503721', 'Green', '402', ''),
(282, '60004167', 'NGV233', 'Red', 'Toyota', 'Cressida', 'Dionisio  Florante', '0000-00-00', 49, 1, 1, 4, '53 Pili', 'x', '', '403', ''),
(283, '60016251', 'NAS9940', 'Black', 'Toyota', 'Altis', 'Oban  Eduardo SL / Maria Concepcion', '0000-00-00', 49, 1, 1, 4, '4 Datiles Place', '20439005', 'Green', '404', ''),
(284, '60004606', 'EIN728', 'Modern Steel Metallic', 'Honda', 'CRV', 'Mariano  Lorenzo Jr. / Estrella', '0000-00-00', 49, 1, 1, 4, '38 Sineguelas', '20628692', 'Green', '405', ''),
(285, '60004606', 'WOW948', 'Black', 'VW', 'Tiguan', 'Mariano  Lorenzo Jr. / Estrella', '0000-00-00', 49, 1, 1, 4, '38 Sineguelas', '20221229', 'Green', '406', ''),
(286, '60004606', 'POV723', 'Blue', 'Mitsubishi', 'Montero', 'Mariano  Lorenzo Jr. / Estrella', '0000-00-00', 49, 1, 1, 4, '38 Sineguelas', '20216667', 'Green', '407', ''),
(287, '60004606', 'AAK2902', 'Silver', 'Mitsubishi', 'Lancer', 'Mariano  Lorenzo Jr. / Estrella', '0000-00-00', 49, 1, 1, 4, '38 Sineguelas', 'x', 'Green', '408', ''),
(288, '60004606', 'ROG206', 'White', 'Subaru', 'XV', 'Mariano  Lorenzo Jr. / Estrella', '0000-00-00', 49, 1, 1, 4, '38 Sineguelas', 'n', 'Green', '409', ''),
(289, '60004701', 'UQZ422', 'White', 'Honda', 'CRV', 'King  Sandra', '0000-00-00', 49, 1, 1, 4, '12 Sampaloc Place', '20220892', 'Green', '', ''),
(290, '60005794', 'ABE1516', 'Blue Pearl', 'Honda', 'HRV', 'Dizon  Michael Butch / Elna', '0000-00-00', 49, 1, 1, 4, '40 Aratiles', '20400067', 'Green', '', ''),
(291, '60005794', 'AAJ8041', '', 'Honda', 'Accord', 'Dizon  Michael Butch / Elna', '0000-00-00', 49, 1, 1, 4, '40 Aratiles', '20221314', 'Green', '411', ''),
(292, '60005794', 'UOV294', '', 'Toyota', 'Camry', 'Dizon  Michael Butch / Elna', '0000-00-00', 49, 1, 1, 4, '40 Aratiles', '20214118', 'Green', '412', ''),
(293, '60005365', 'NAS5966', 'Black', 'Ford', 'Expedition', 'Baltazar  Salome', '0000-00-00', 49, 1, 1, 4, 'P6A B4 L12', '20439050', 'Green', '417', ''),
(294, '60005040', 'ARA7419', 'White', 'Honda', 'Odyssey', 'Frejas  Virgilio', '0000-00-00', 49, 1, 1, 4, '223 Sampaloc Drive', '20330617', 'Green', '418', ''),
(295, '60005040', 'NAY2504', 'Burgundy', 'Honda', 'Civic', 'Frejas  Virgilio', '0000-00-00', 49, 1, 1, 4, '223 Sampaloc Drive', '20628336', 'Green', '', ''),
(296, '60005728', 'NDD3621', 'White', 'Toyota', 'Fortuner', 'Duaqui  Ronaldo', '0000-00-00', 49, 1, 1, 4, '34 Kasaflora', '20438881', 'Green', '', ''),
(297, '60005728', 'DAA1776', 'White', 'Honda', 'City', 'Duaqui  Ronaldo', '0000-00-00', 49, 1, 1, 4, '34 Kasaflora', '20438874', 'Green', '', ''),
(298, '60005728', 'NDX7126', 'White', 'Volvo', 'V40', 'Duaqui  Ronaldo', '0000-00-00', 49, 1, 1, 4, '34 Kasaflora', '20438808', 'Green', '419', ''),
(299, '60005728', 'NAU5487', 'White', 'Ford', 'Ranger', 'Duaqui  Ronaldo', '0000-00-00', 49, 1, 1, 4, '34 Kasaflora', '20330783', 'Green', '420', ''),
(300, '60005728', 'DT7683', 'White', 'Honda', 'Brio', 'Duaqui  Ronaldo', '0000-00-00', 49, 1, 1, 4, '34 Kasaflora', '20628034', 'Yellow', '', ''),
(301, '60005728', 'F2F147', 'White', 'Nissan', 'Terra', 'Duaqui  Ronaldo', '0000-00-00', 49, 1, 1, 4, '34 Kasaflora', 'n', 'Yellow', '421', ''),
(302, '60004393', 'ZML435', 'Silver', 'Honda', 'CRV', 'Diaz  Ma. Esperanza', '0000-00-00', 49, 1, 1, 4, '29 Piña', '20216423', 'Green', '422', ''),
(303, '60004441', 'ABT4773', 'Silver', 'Ford', 'Everest', 'Pamplona  Glenn Mark / Janice Antonette ', '0000-00-00', 49, 1, 1, 4, '14 Duhat Loop', '20628502', 'Green', '425', ''),
(304, '60004441', 'NAX2634', 'Silver', 'Toyota', 'Rush', 'Pamplona  Glenn Mark / Janice Antonette ', '0000-00-00', 49, 1, 1, 4, '14 Duhat Loop', '20503981', 'Green', '', ''),
(305, '60005658', 'VOS735', 'White', 'Hyundai', 'Grand Starex', 'Ellis  Rhodora', '0000-00-00', 49, 1, 1, 4, '46 Canistel', 'x', 'Green', '426', ''),
(306, '60005658', 'AAM6525', 'Black', 'Hyundai', 'Grand Starex', 'Ellis  Rhodora', '0000-00-00', 49, 1, 1, 4, '46 Canistel', '20365273', 'Green', '427', ''),
(307, '60005658', 'WKQ282', 'Black', 'Honda', 'City', 'Ellis  Rhodora', '0000-00-00', 49, 1, 1, 4, '46 Canistel', '20333042', 'Green', '', ''),
(308, '60003924', 'JGE26', 'Silver', 'Toyota', 'Land Cruiser', 'Enriquez / Antonio  II / Joyce', '0000-00-00', 49, 1, 1, 4, '62 Kamachile', '20265504', 'Green', '', ''),
(309, '60003924', 'AVE11', 'Silver', 'Mercedez Benz', 'E280', 'Enriquez / Antonio  II / Joyce', '0000-00-00', 49, 1, 1, 4, '62 Kamachile', '20221029', 'Green', '', ''),
(310, '60003924', 'VEG337', 'White', 'Toyota', 'Super Grandia', 'Enriquez / Antonio  II / Joyce', '0000-00-00', 49, 1, 1, 4, '62 Kamachile', '20216446', 'Green', '', ''),
(311, '60003924', 'ZCZ604', 'Silver', 'Toyota', 'Fortuner', 'Enriquez / Antonio  II / Joyce', '0000-00-00', 49, 1, 1, 4, '62 Kamachile', '20216445', 'Green', '428', ''),
(312, '60004805', 'ACA7989', 'Gray', 'BMW', '520', 'Ang Santo  Lafayette / Maria Lisa', '0000-00-00', 49, 1, 1, 4, '66 Sampaloc', '20628016', 'Green', '429', ''),
(313, '60004805', 'PGI560', 'Silver', 'BMW', '318', 'Ang Santo  Lafayette / Maria Lisa', '0000-00-00', 49, 1, 1, 4, '66 Sampaloc', '20628253', 'Green', '430', ''),
(314, '60004805', 'PYQ936', 'Gray', 'BMW', 'X5', 'Ang Santo  Lafayette / Maria Lisa', '0000-00-00', 49, 1, 1, 4, '66 Sampaloc', '20628254', 'Green', '431', ''),
(315, '60005271', 'XPW228', 'Red', 'Mitsubishi', 'Pajero', 'Peña Eduardo / Alma', '0000-00-00', 49, 1, 1, 4, '5 Durian Loop', '20221682', 'Green', '432', ''),
(316, '60005271', 'RMN153', 'Beige', 'Toyota', 'Fortuner', 'Peña Eduardo / Alma', '0000-00-00', 49, 1, 1, 4, '5 Durian Loop', '20628403', 'Green', '435', ''),
(317, '60004179', 'XEV192', 'Green', 'GM', 'Tahoe', 'Aldaba  Marco', '0000-00-00', 49, 1, 1, 4, '27 Pili', '20221849', 'Green', '444', ''),
(318, '60004179', 'TCQ987', 'Bronze', 'Ford', 'Everest', 'Aldaba  Marco', '0000-00-00', 49, 1, 1, 4, '27 Pili', '20438915', 'Green', '482', ''),
(319, '60004179', 'NCE9108', 'Gray', 'Ford', 'Everest', 'Aldaba  Marco', '0000-00-00', 49, 1, 1, 4, '27 Pili', '20365510', 'Green', '493', ''),
(320, '60004179', 'WQI902', 'Orange', 'Ford', 'Fiesta', 'Aldaba  Marco', '0000-00-00', 49, 1, 1, 4, '27 Pili', 'x', 'Green', '500', ''),
(321, '60004168', 'EID887', 'Blue', 'Honda', 'Civic', 'Knoll  Sarminda  Santiago', '0000-00-00', 49, 1, 1, 4, '51 Pili', '20627995', 'Green', '501', '');
INSERT INTO `tbl_item` (`item_id`, `account_number`, `item_name`, `item_serno`, `item_modno`, `item_brand`, `item_amount`, `item_purdate`, `emp_id`, `cat_id`, `con_id`, `status_id`, `owner_address`, `rfid_code`, `vehicle_sticker_type`, `vehicle_sticker_number`, `vehicle_sticker_expiration`) VALUES
(322, '60016204', '', 'Black', 'Ford', 'Everest', 'Chua  Jovan / Aileen Gretchelle', '0000-00-00', 49, 1, 1, 4, '14 Dao', '20400094', 'Green', '502', ''),
(323, '60007669', 'AIR21', 'White', 'Toyota', 'Land Cruiser', 'Pangan  Reuben San Jose / Devora', '0000-00-00', 49, 1, 1, 4, '60 Aratiles', '20438850', 'Green', '503', ''),
(324, '60007669', 'VAO987', 'Gray', 'Nissan', 'Xtrail', 'Pangan  Reuben San Jose / Devora', '0000-00-00', 49, 1, 1, 4, '60 Aratiles', 'x', 'Green', '504', ''),
(325, '60007669', 'NOB908', 'Red', 'Toyota', 'Innova', 'Pangan  Reuben San Jose / Devora', '0000-00-00', 49, 1, 1, 4, '60 Aratiles', '20438816', 'Green', '505', ''),
(326, '60022766', 'NL6869', 'White Diamond', 'Mitsubishi', 'Montero', 'Expertline Ventures Corporation / Coloquio  Javier', '0000-00-00', 49, 1, 1, 4, '71 Marang', '20365378', 'Green', '506', ''),
(327, '60007669', 'NGI526', 'Yellow', 'Mazda', 'MX5', 'Pangan  Reuben San Jose / Devora', '0000-00-00', 49, 1, 1, 4, '60 Aratiles', '20265479', 'Green', '507', ''),
(328, '60007669', 'PIG402', 'Black', 'Ford', 'Everest', 'Pangan  Reuben San Jose / Devora', '0000-00-00', 49, 1, 1, 4, '60 Aratiles', '20216675', 'Green', '', ''),
(329, '60005199', 'JCA700', 'Green', 'Ford', 'E150', 'Carrion Ramon / Christopher', '0000-00-00', 49, 1, 1, 4, '34 Durian', '20628767', 'Green', '', ''),
(330, '60004741', 'AAY2117', 'White', 'Toyota', 'Altis', 'Fenix Cheng  Christine Tang', '0000-00-00', 49, 1, 1, 4, '126 Sampaloc', '20221788', '', '', ''),
(331, '60004741', 'DCQ9354', 'Metallic Gray', 'Ford', 'Ranger', 'Fenix Cheng  Christine Tang', '0000-00-00', 49, 1, 1, 4, '126 Sampaloc', '20365253', '', '', ''),
(332, '60004741', 'DAC1475', 'Forest Green', 'Honda', 'CRV', 'Fenix Cheng  Christine Tang', '0000-00-00', 49, 1, 1, 4, '126 Sampaloc', '20503862', '', '', ''),
(333, '60004751', 'NAU5455', 'White', 'Ford', 'Everest', 'Fernandez  Albert Francis / Linda Joy', '0000-00-00', 49, 1, 1, 4, '104 Sampaloc', '20439132', 'Green', '', ''),
(334, '60004751', 'DDL8378', 'Blue', 'Ford', 'Ecosport', 'Fernandez  Albert Francis / Linda Joy', '0000-00-00', 49, 1, 1, 4, '104 Sampaloc', '20365528', 'Green', '', ''),
(335, '60005199', 'ZJR234', 'Blue', 'Mitsubishi', 'Strada', 'Carrion Ramon / Christopher', '0000-00-00', 49, 1, 1, 4, '34 Durian', 'x', 'Green', '', ''),
(336, '60005142', 'NCP2332', 'Bronze', 'Toyota', 'Fortuner', 'Fernandez  Renato / Melissa ', '0000-00-00', 49, 1, 1, 4, '19 Lakatan', '20504192', 'Green', '', ''),
(337, '60005142', 'UHQ802', 'Metallic Gold', 'Toyota', 'Innova', 'Fernandez  Renato / Melissa ', '0000-00-00', 49, 1, 1, 4, '19 Lakatan', '20300073', 'Green', '508', ''),
(338, '60004423', 'VDH512', 'Silver', 'Toyota', 'Fortuner', 'Flores  Nestor / Rosemarie ', '0000-00-00', 49, 1, 1, 4, '45 Duhat Loop', '20216501', '', '509', ''),
(339, '60004423', 'TQV683', 'Mahogany', 'Honda', 'Civic', 'Flores  Nestor / Rosemarie ', '0000-00-00', 49, 1, 1, 4, '45 Duhat Loop', '20216502', '', '', ''),
(340, '60004423', 'PAJ1057', 'White', 'Hyundai', 'Kona', 'Flores  Nestor / Rosemarie ', '0000-00-00', 49, 1, 1, 4, '45 Duhat Loop', '20628072', '', '510', ''),
(341, '60004423', 'NAA3786', 'White', 'Mazda', 'Sedan', 'Flores  Nestor / Rosemarie ', '0000-00-00', 49, 1, 1, 4, '45 Duhat Loop', '20365397', '', '511', ''),
(342, '60004958', 'UHO499', 'Silver', 'Lexus', 'ES 350', 'Gabor  Allan Jae / Melissa', '0000-00-00', 49, 1, 1, 4, '18 Dalanghita Drive', '20758857', 'Green', '512', ''),
(343, '60004958', 'PVO503', 'Dark Gray', 'Honda', 'Accord', 'Gabor  Allan Jae / Melissa', '0000-00-00', 49, 1, 1, 4, '18 Dalanghita Drive', '20628667', 'Green', '513', ''),
(344, '60004958', 'NBN7384', 'White Pearl', 'Toyota', 'Hi-Ace Grandia', 'Gabor  Allan Jae / Melissa', '0000-00-00', 49, 1, 1, 4, '18 Dalanghita Drive', '20330562', 'Green', '714', ''),
(345, '60004958', 'AAL6915', 'White', 'Toyota', 'Wigo', 'Gabor  Allan Jae / Melissa', '0000-00-00', 49, 1, 1, 4, '18 Dalanghita Drive', '20628360', 'Green', '515', ''),
(346, '60005215', 'NAQ6762', 'Silver', 'Mazda', 'Wagon', 'Alcantara  Yvonne Sarenas ', '0000-00-00', 49, 1, 1, 4, '68 Durian Drive', '20504159', 'Green', '516', ''),
(347, '60005215', 'DCP5013', 'White', 'Hyundai', 'Starex', 'Alcantara  Yvonne Sarenas ', '0000-00-00', 49, 1, 1, 4, '68 Durian Drive', '20330704', 'Green', '', ''),
(348, '60005215', 'ABQ8280', 'Silver', 'Hyundai', 'Sta. Fe', 'Alcantara  Yvonne Sarenas ', '0000-00-00', 49, 1, 1, 4, '68 Durian Drive', '20438871', 'Green', '517', ''),
(349, '60005215', '', '', 'Suzuki', '', 'Alcantara  Yvonne Sarenas ', '0000-00-00', 49, 1, 1, 4, '68 Durian Drive', 'x', 'Green', '518', ''),
(350, '60005080', 'BIS078', 'Gray', 'Mitsubishi', 'Montero', 'Sivaprasad Reddy (Lessee)', '0000-00-00', 49, 1, 1, 4, '19 Marang', '20503846', 'Green', '519', ''),
(351, '60005268', 'NCH7257', 'Metallic Gray', 'Ford', 'Everest 2016', 'Manzanilla  Chito / Socorro', '0000-00-00', 49, 1, 1, 4, '72 Durian', '20365406', 'Green', '520', ''),
(352, '60005012', 'WEQ396', 'White', 'Ford', 'Explorer', 'Santiago  Norman Frederick / Carmen', '0000-00-00', 49, 1, 1, 4, '39 Aratiles', '20365500', 'Green', '521', ''),
(353, '60005268', 'NAU2838', 'Midnight Burgundy', 'Honda', 'Civic RS Turbo 2017', 'Manzanilla  Chito / Socorro', '0000-00-00', 49, 1, 1, 4, '72 Durian', '20439116', 'Green', '522', ''),
(354, '60005268', 'DAZ7650', 'Silver Metallic', 'Mitsubishi', 'Xpander 2019', 'Manzanilla  Chito / Socorro', '0000-00-00', 49, 1, 1, 4, '72 Durian', '20628750', 'Green', '523', ''),
(355, '60004921', 'PBO811', 'Blue', 'Ford', 'Expedition', 'Escarda  David', '0000-00-00', 49, 1, 1, 4, '32 Piko', '20216516', 'Green', '524', ''),
(356, '60004921', 'NEH3427', 'Gray', 'Mazda', 'CX9', 'Escarda  David', '0000-00-00', 49, 1, 1, 4, '32 Piko', '20628294', 'Green', '525', ''),
(357, '60004921', 'DAN7865', 'Gray', 'Ford', 'Ranger', 'Escarda  David', '0000-00-00', 49, 1, 1, 4, '32 Piko', '20628546', 'Green', '526', ''),
(358, '60004921', 'CAC3008', 'White', 'Mazda', '2', 'Escarda  David', '0000-00-00', 49, 1, 1, 4, '32 Piko', '20628281', 'Green', '480', ''),
(359, '60005208', 'DAF7399', 'Silver', 'Toyota', 'Fortuner', 'Sigfridsson  Emily / Karl Jorgen', '0000-00-00', 49, 1, 1, 4, '17 Bayabas', '20503722', 'Green', '479', ''),
(360, '60005208', 'NDL1845', 'Pearl White', 'Isuzu', 'Mux', 'Sigfridsson  Emily / Karl Jorgen', '0000-00-00', 49, 1, 1, 4, '17 Bayabas', '20628528', 'Green', '481', ''),
(361, '60005003', 'NDE7284', 'White', 'Toyota', 'Fortuner', 'Francisco  Monette / Adelmo', '0000-00-00', 49, 1, 1, 4, '31 Aratiles', '20438877', 'Green', '387', ''),
(362, '60005003', 'NCW1711', 'Gray', 'Toyota', 'Fortuner', 'Francisco  Monette / Adelmo', '0000-00-00', 49, 1, 1, 4, '31 Aratiles', '20504123', 'Green', '527', ''),
(363, '60004079', 'ATA2980', 'White', 'Isuzu', 'Trooper', 'Garriz. Maria Pia', '0000-00-00', 49, 1, 1, 4, '56 Rambutan', '20216455', 'Green', '529', ''),
(364, '60023013', 'ABG1410', 'Tan', 'Toyota', 'FJ Cruiser', 'Gensolin  Keenan Barry', '0000-00-00', 49, 1, 1, 4, '21 Manzanitas Loop', '20504190', 'Green', '530', ''),
(365, '60023013', 'NCV1001', 'Brown', 'Nissan', 'Urvan', 'Gensolin  Keenan Barry', '0000-00-00', 49, 1, 1, 4, '21 Manzanitas Loop', '20628270', 'Green', '531', ''),
(366, '60023013', 'NED9017', 'Silver', 'Nissan', 'Navarra', 'Gensolin  Keenan Barry', '0000-00-00', 49, 1, 1, 4, '21 Manzanitas Loop', '20627974', 'Green', '532', ''),
(367, '60023013', '13011304738', 'Yellow/Black', 'Suzuki', 'Vstrom 1000XT', 'Gensolin  Keenan Barry', '0000-00-00', 49, 1, 1, 4, '21 Manzanitas Loop', '20628176', 'Green', '533', ''),
(368, '60005661', 'ZSV116', 'Silver', 'Toyota', 'Fortuner', 'Ramos  Michael', '0000-00-00', 49, 1, 1, 4, '25 Canistel', '20214093', 'Green', '534', ''),
(369, '60005661', 'DDM1956', 'Silver', 'Toyota', 'Fortuner', 'Ramos  Michael', '0000-00-00', 49, 1, 1, 4, '25 Canistel', '20365345', 'Green', '535', ''),
(370, '60004780', 'ABE3813', 'Brown', 'Chevy', 'Trailblazer', 'Pfleider  Elsie Louise', '0000-00-00', 49, 1, 1, 4, '59 Kasaflora Loop', '20503972', 'Green', '536', ''),
(371, '60005416', 'ACA1297', 'Blue', 'Subaru', 'Forester', 'Go  Jocelyn', '0000-00-00', 49, 1, 1, 4, '50 Campanilla', '20221701', 'Green', '537', ''),
(372, '60005416', 'XTM825', '', 'Ford', 'Explorer', 'Go  Jocelyn', '0000-00-00', 49, 1, 1, 4, '50 Campanilla', '20217691', 'Green', '538', ''),
(373, '60004780', 'UJQ566', 'White', 'Honda', 'Jazz', 'Pfleider  Elsie Louise', '0000-00-00', 49, 1, 1, 4, '59 Kasaflora Loop', '20503982', 'Green', '539', ''),
(374, '60022914', 'DAD8413', 'Avantgarde', 'Toyota', 'Fortuner', 'Fornari  Marilou', '0000-00-00', 49, 1, 1, 4, '23 Timon', '20628047', 'Green', '540', ''),
(375, '60016204', 'NQJ926', 'White', 'Honda', 'Accord', 'Chua  Jovan / Aileen Gretchelle', '0000-00-00', 49, 1, 1, 4, '14 Dao', '20216476', 'Green', '541', ''),
(376, '60005012', 'ZMJ772', 'Silver', 'Toyota', 'Fortuner', 'Santiago  Norman Frederick / Carmen', '0000-00-00', 49, 1, 1, 4, '39 Aratiles', '20221001', 'Green', '', ''),
(377, '60005366', 'NAD5009', 'Black', 'Honda', 'Odyssey', 'Ripoll  Sebastian', '0000-00-00', 49, 1, 1, 4, '31 Campanilla', '20221821', 'Green', '', ''),
(378, '60005001', 'NAQ5580', 'Silver', 'Subaru', 'XV', 'Guce  Cecilia', '0000-00-00', 49, 1, 1, 4, '29 Aratiles', '20503933', 'Green', '', ''),
(379, '60005001', 'ASA2916', 'Silver', 'Ford', 'Ecosport', 'Guce  Cecilia', '0000-00-00', 49, 1, 1, 4, '29 Aratiles', '20300102', 'Green', '', ''),
(380, '60005366', 'DAB7407', 'Burgundy', 'Honda', 'Civic', 'Ripoll  Sebastian', '0000-00-00', 49, 1, 1, 4, '31 Campanilla', '20439224', 'Green', '', ''),
(381, '3000010898', 'DA06386', 'White', 'Kia', 'Carnival', ' Van Der Auwera  Joriel', '0000-00-00', 49, 1, 1, 4, '63 Campanilla', '20628538', 'Green', '', ''),
(382, '3000010898', 'ROF986', 'Olive Green', 'Subaru', 'Forester', ' Van Der Auwera  Joriel', '0000-00-00', 49, 1, 1, 4, '63 Campanilla', '20628521', 'Green', '', ''),
(383, '3000010898', 'LGA168', 'Red', 'Toyota', 'Innova', ' Van Der Auwera  Joriel', '0000-00-00', 49, 1, 1, 4, '63 Campanilla', '20221786', 'Green', '', ''),
(384, '60004335', 'FJC946', 'White', 'Honda', 'CRV', 'Guieb  Roland', '0000-00-00', 49, 1, 1, 4, '12 Chico', '20365280', 'Green', '', ''),
(385, '60004335', 'NAF9717', 'White', 'Hyundai', 'Starex', 'Guieb  Roland', '0000-00-00', 49, 1, 1, 4, '12 Chico', '20438971', 'Green', '', ''),
(386, '60004335', 'NBR8557', 'Light Gray', 'Mitsubishi', 'Strada', 'Guieb  Roland', '0000-00-00', 49, 1, 1, 4, '12 Chico', '20628219', 'Green', '', ''),
(387, '60016176', 'MO7569', 'White', 'Hyundai', 'Sta. Fe', 'Coloquio  Roy James / Rosario', '0000-00-00', 49, 1, 1, 4, '29 Apitong', '20365352', 'Green', '', ''),
(388, '60016176', 'NON4225', 'Dark Gray', 'Mazda', 'CX9', 'Coloquio  Roy James / Rosario', '0000-00-00', 49, 1, 1, 4, '29 Apitong', '20628522', 'Green', '', ''),
(389, '60005401', 'B*005985*', 'Orange', 'Ducati', 'Scrambler', 'De Villa  Michael', '0000-00-00', 49, 1, 1, 4, '29 Molave', '20628356', 'Green', '', ''),
(390, '60005401', 'FIF712', 'White', 'Nissan', 'Terra', 'De Villa  Michael', '0000-00-00', 49, 1, 1, 4, '29 Molave', '20627993', 'Green', '', ''),
(391, '60005401', 'NOK2246', 'White', 'Subaru', 'Forester', 'De Villa  Michael', '0000-00-00', 49, 1, 1, 4, '29 Molave', '20628454', 'Green', '542', ''),
(392, '60005338', '25762', 'Gray', 'Volvo', 'XC90', 'Tan  Jose Antonio / Sheila Uriarte', '0000-00-00', 49, 1, 1, 4, '40 Molave', '20214095', 'Green', '543', ''),
(393, '60023078', 'UUU99', 'White Pearl', 'Toyota', 'Hi-Ace', 'Habla  Ron Richard / Melaine', '0000-00-00', 49, 1, 1, 4, '2 Banaba', '20221435', 'Yellow', '544', ''),
(394, '60023078', 'A4N812', 'White', 'Toyota', 'Hi-Ace Grandia', 'Habla  Ron Richard / Melaine', '0000-00-00', 49, 1, 1, 4, '2 Banaba', '20628086', 'Green', '545', ''),
(395, '60023078', 'B7G751', 'White', 'Mitsubishi', 'L300', 'Habla  Ron Richard / Melaine', '0000-00-00', 49, 1, 1, 4, '2 Banaba', '20758931', 'Green', '546', ''),
(396, '60023078', 'VV4999', '', 'Isuzu', 'Trooper', 'Habla  Ron Richard / Melaine', '0000-00-00', 49, 1, 1, 4, '2 Banaba', '20221434', 'Green', '547', ''),
(397, '60023078', 'NAY2297', 'White', 'Toyota', 'Land Cruiser', 'Habla  Ron Richard / Melaine', '0000-00-00', 49, 1, 1, 4, '2 Banaba', 'x', 'Green', '', ''),
(398, '60023078', 'NEB3918', 'Freedom White', 'Toyota', 'Hilux', 'Habla  Ron Richard / Melaine', '0000-00-00', 49, 1, 1, 4, '2 Banaba', 'x', 'Green', '', ''),
(399, '60023078', 'RRR998', 'White', 'Toyota', 'Revo', 'Habla  Ron Richard / Melaine', '0000-00-00', 49, 1, 1, 4, '2 Banaba', 'x', 'Yellow', '', ''),
(400, '60005354', 'DBA4029', 'Pearl White', 'Toyota', 'Vios', 'Hansson  Ma. Lourdes', '0000-00-00', 49, 1, 1, 4, '8 Amarilyo', '20758872', '', '', ''),
(401, '60005464', 'AJA8134', 'Black', 'Ford', 'Ranger', 'Hembrador  Rogelio', '0000-00-00', 49, 1, 1, 4, '29 Yakal', '20330613', 'Green', '', ''),
(402, '60005464', '', 'White', 'Hyundai', 'Sta. Fe', 'Hembrador  Rogelio', '0000-00-00', 49, 1, 1, 4, '29 Yakal', 'x', 'Green', '', ''),
(403, '60005464', 'JMS788', 'Green', 'Nissan', 'Patrol', 'Hembrador  Rogelio', '0000-00-00', 49, 1, 1, 4, '29 Yakal', 'x', 'Green', '', ''),
(404, '60005464', 'TIS766', 'White', 'Ford', 'Explorer', 'Hembrador  Rogelio', '0000-00-00', 49, 1, 1, 4, '29 Yakal', 'x', 'Green', '', ''),
(405, '60005338', 'UKI908', 'Black', 'Audi', 'Q5', 'Tan  Jose Antonio / Sheila Uriarte', '0000-00-00', 49, 1, 1, 4, '40 Molave', '20214096', 'Green', '', ''),
(406, '60005338', 'MCM8331', 'Gray', 'Mercedez Benz', 'C180', 'Tan  Jose Antonio / Sheila Uriarte', '0000-00-00', 49, 1, 1, 4, '40 Molave', '20503784', 'Green', '', ''),
(407, '60003918', 'NEW4654', 'Silver', 'Nissan', 'Terra', 'Hidalgo  Ferdinand / Ana Martina ', '0000-00-00', 49, 1, 1, 4, '50 Kamachile', '20628608', 'Green', '', ''),
(408, '60003918', 'TCO836', 'White', 'Isuzu', 'Dmax', 'Hidalgo  Ferdinand / Ana Martina ', '0000-00-00', 49, 1, 1, 4, '50 Kamachile', '20220688', 'Yellow', '', ''),
(409, '60003918', 'NJI577', 'Black', 'Ford', 'Expedition', 'Hidalgo  Ferdinand / Ana Martina ', '0000-00-00', 49, 1, 1, 4, '50 Kamachile', '20365433', 'Yellow', '', ''),
(410, '60003918', 'DAO6365', 'White', 'Kia', 'Picanto', 'Hidalgo  Ferdinand / Ana Martina ', '0000-00-00', 49, 1, 1, 4, '50 Kamachile', '20628515', 'Green', '100', ''),
(411, '60003918', 'FMH529', 'White', 'Toyota', '86 Sport', 'Hidalgo  Ferdinand / Ana Martina ', '0000-00-00', 49, 1, 1, 4, '50 Kamachile', '20365438', 'Green', '472', ''),
(412, '60003918', 'AAN2907', 'Red', 'Mazda', '3', 'Hidalgo  Ferdinand / Ana Martina ', '0000-00-00', 49, 1, 1, 4, '50 Kamachile', '20503730', 'Green', '473', ''),
(413, '60005384', 'NAU3277', 'Black', 'Mitsubishi', 'Montero', 'Hortaleza  Jaime / Araceli', '0000-00-00', 49, 1, 1, 4, '3 Aralia', '20439143', 'Green', '474', ''),
(414, '60005384', 'NAH8129', 'Silver', 'Honda', 'City', 'Hortaleza  Jaime / Araceli', '0000-00-00', 49, 1, 1, 4, '3 Aralia', '20628316', 'Green', '', ''),
(415, '60004326', 'UQI573', 'Gray', 'Mazda', 'CX9', 'Ignacio  Jose Manuel', '0000-00-00', 49, 1, 1, 4, '22 Dalandan Loop', '20217777', 'n/a', '471', ''),
(416, '60004326', 'NCQ8992', 'Black', 'Toyota', 'Innova', 'Ignacio  Jose Manuel', '0000-00-00', 49, 1, 1, 4, '22 Dalandan Loop', 'NEW', 'n/a', '548', ''),
(417, '60004326', 'ZSC683', '', 'Mercedez Benz', '', 'Ignacio  Jose Manuel', '0000-00-00', 49, 1, 1, 4, '22 Dalandan Loop', 'x', 'n/a', '550', ''),
(418, '60004326', 'NCN2137', 'White', 'Lexus', 'NX200', 'Ignacio  Jose Manuel', '0000-00-00', 49, 1, 1, 4, '22 Dalandan Loop', 'NEW', 'n/a', '551', ''),
(419, '60004326', 'ADA2416', '', 'Honda', 'City', 'Ignacio  Jose Manuel', '0000-00-00', 49, 1, 1, 4, '22 Dalandan Loop', 'x', 'n/a', '', ''),
(420, '60004089', 'NLG6818', 'Silver Gray', 'Mitsubishi', 'Montero', 'Inciong  Guillermo / Divina ', '0000-00-00', 49, 1, 1, 4, '46 Rambutan', '20365288', 'Green', '552', ''),
(421, '60004089', 'NCG9907', 'Gray', 'Ford', 'Everest', 'Inciong  Guillermo / Divina ', '0000-00-00', 49, 1, 1, 4, '46 Rambutan', '20365439', 'Green', '', ''),
(422, '60004089', 'P2K861', 'Gray', 'Toyota', 'Hi-Ace', 'Inciong  Guillermo / Divina ', '0000-00-00', 49, 1, 1, 4, '46 Rambutan', '20628436', 'Green', '', ''),
(423, '60004089', 'WRX960', 'Light Green', 'Toyota', 'Hi-Ace', 'Inciong  Guillermo / Divina ', '0000-00-00', 49, 1, 1, 4, '46 Rambutan', '20503793', 'Green', '553', ''),
(424, '60004089', 'WKD476', 'Light Green', 'Toyota', 'Hi-Ace', 'Inciong  Guillermo / Divina ', '0000-00-00', 49, 1, 1, 4, '46 Rambutan', '20503883', 'Yellow', '554', ''),
(425, '60022861', 'PXO909', 'Black', 'Mitsubishi', 'Pajero', 'Inciong  Jerome', '0000-00-00', 49, 1, 1, 4, '47 Granadilla', '20439302', 'Green', '', ''),
(426, '60022861', 'YHN655', 'Black', 'Kia', 'Soul', 'Inciong  Jerome', '0000-00-00', 49, 1, 1, 4, '47 Granadilla', '20439303', 'Green', '555', ''),
(427, '60022861', 'PQH615', 'Black', 'Subaru', 'Forester', 'Inciong  Jerome', '0000-00-00', 49, 1, 1, 4, '47 Granadilla', 'n', 'Green', '556', ''),
(428, '60005338', '30875', 'Jade', 'Toyota', 'Innova', 'Tan  Jose Antonio / Sheila Uriarte', '0000-00-00', 49, 1, 1, 4, '40 Molave', '20438976', 'Green', '', ''),
(429, '60005366', 'WTO178', 'White', 'Kia', 'Sorento', 'Ripoll  Sebastian', '0000-00-00', 49, 1, 1, 4, '31 Campanilla', '20221820', 'Green', '558', ''),
(430, '60005366', 'NAX9085', 'Silver', 'Subaru', '', 'Ripoll  Sebastian', '0000-00-00', 49, 1, 1, 4, '31 Campanilla', '20628173', 'Green', '559', ''),
(431, '60005435', 'AAL9984', 'Red', 'Mitsubishi', 'Strada', 'Wong  Michael', '0000-00-00', 49, 1, 1, 4, '9 Yakal Place', '20221717', 'Green', '560', ''),
(432, '60005435', 'TQV215', 'Mica Gold', 'Toyota', 'Fortuner', 'Wong  Michael', '0000-00-00', 49, 1, 1, 4, '9 Yakal Place', '20439191', 'Green', '561', ''),
(433, '60005435', 'NED9340', 'Red', 'Suzuki', 'Vitara', 'Wong  Michael', '0000-00-00', 49, 1, 1, 4, '9 Yakal Place', '20628448', 'Green', '562', ''),
(434, '60005374', 'USP128', 'Silver', 'BMW', 'Z3', 'Ocampo  Neil / Zarah May', '0000-00-00', 49, 1, 1, 4, '16 Agoho', '20216684', 'Green', '563', ''),
(435, '60005374', 'AHA7424', 'Golden Purple', 'Honda', 'CRZ', 'Ocampo  Neil / Zarah May', '0000-00-00', 49, 1, 1, 4, '16 Agoho', '20503743', 'Green', '564', ''),
(436, '60005374', 'NAE9439', 'Silver', 'Honda', 'Mobilo', 'Ocampo  Neil / Zarah May', '0000-00-00', 49, 1, 1, 4, '16 Agoho', '20439271', 'Green', '565', ''),
(437, '60005374', 'ATA8165', 'White', 'Mitsubishi', 'Mirage', 'Ocampo  Neil / Zarah May', '0000-00-00', 49, 1, 1, 4, '16 Agoho', '20300045', 'Green', '566', ''),
(438, '60008031', 'EH4930', 'Maroon', 'Kia', 'Carnival', 'Juliano  Arlene / Franco', '0000-00-00', 49, 1, 1, 4, '12 Antipolo', '20503932', 'Green', '568', ''),
(439, '60008031', 'ABO9662', 'Green', 'Subaru', 'XV', 'Juliano  Arlene / Franco', '0000-00-00', 49, 1, 1, 4, '12 Antipolo', '20438926', 'Green', '569', ''),
(440, '60008031', 'E1C052', 'White', 'Honda', 'CRV', 'Juliano  Arlene / Franco', '0000-00-00', 49, 1, 1, 4, '12 Antipolo', '20628204', 'Green', '570', ''),
(441, '60005374', 'DAD7721', 'White', 'Toyota', 'Hi-Ace Grandia', 'Ocampo  Neil / Zarah May', '0000-00-00', 49, 1, 1, 4, '16 Agoho', '20438938', 'Green', '571', ''),
(442, '60005053', 'UXQ761', '', 'Subaru', 'Forester', 'Delfino  Nancy / Michael Joseph', '0000-00-00', 49, 1, 1, 4, '62 Marang', '20216564', 'Green', '572', ''),
(443, '60005053', 'NBC5663', '', 'Subaru', 'Legacy', 'Delfino  Nancy / Michael Joseph', '0000-00-00', 49, 1, 1, 4, '62 Marang', '20503716', 'Green', '', ''),
(444, '60025684', 'KE0438', 'White', 'Porsche', 'Cayenne', 'Espinosa  Norma / Feliciano  Antonio', '0000-00-00', 49, 1, 1, 4, '5 Bayabas', '20628747', 'Green', '', ''),
(445, '60025684', 'DAF5149', 'White', 'Ford', 'Everest', 'Espinosa  Norma / Feliciano  Antonio', '0000-00-00', 49, 1, 1, 4, '5 Bayabas', '20439180', 'Green', '', ''),
(446, '60004762', 'KEO834', 'Silver', 'Audi', 'Q3', 'Dizon  Vincent', '0000-00-00', 49, 1, 1, 4, '87 Sampaloc', 'x', 'Green', '573', ''),
(447, '60005410', 'TIE497', 'Red', 'Hyundai', 'Genesis Coupe', 'Miranda  Liemer / Rowena ', '0000-00-00', 49, 1, 1, 4, '36 Acacia Drive', '20221087', 'Green', '574', ''),
(448, '60005410', 'DAI5817', 'Silver Gray', 'Mitsubishi', 'Xpander', 'Miranda  Liemer / Rowena ', '0000-00-00', 49, 1, 1, 4, '36 Acacia Drive', '20628062', 'Green', '575', ''),
(449, '60005410', 'NAD6073', 'Red', 'VW', 'Seha', 'Miranda  Liemer / Rowena ', '0000-00-00', 49, 1, 1, 4, '36 Acacia Drive', '20439004', 'Green', '576', ''),
(450, '60005641', 'DAD1619', 'White', 'Ford', 'Everest', 'Perasol  Reina / Dolriech', '0000-00-00', 49, 1, 1, 4, 'Canistel Place', '20628171', 'Green', '577', ''),
(451, '60005641', 'UOO184', 'Black', 'Honda', 'Accord', 'Perasol  Reina / Dolriech', '0000-00-00', 49, 1, 1, 4, 'Canistel Place', '20503864', 'Green', '578', ''),
(452, '60007727', 'P6U356', 'Silver', 'Toyota', 'Prado', 'Tavera  Marigold  / Joseph', '0000-00-00', 49, 1, 1, 4, '3 Zapote', '20758858', 'Green', '726', ''),
(453, '60007727', 'MCB914', 'Green', 'Toyota', 'Land Cruiser', 'Tavera  Marigold  / Joseph', '0000-00-00', 49, 1, 1, 4, '3 Zapote', '20503835', 'Green', '579', ''),
(454, '60005469', 'EH2704', 'Silver', 'Kia', 'Carnival', 'Sison  Victoria', '0000-00-00', 49, 1, 1, 4, '6 Sipres', '20439016', 'Green', '580', ''),
(455, '60022911', 'UQH436', 'Black', 'Honda', 'Jazz', 'Tiu  Wilson', '0000-00-00', 49, 1, 1, 4, '60 Granadilla', '20216851', 'Green', '581', ''),
(456, '60022911', 'UIB338', 'White', 'Hyundai', 'Starex', 'Tiu  Wilson', '0000-00-00', 49, 1, 1, 4, '60 Granadilla', '20216852', 'Green', '582', ''),
(457, '60005257', 'AAX3014', 'Red', 'Toyota', 'Altis', 'Santos  Ricardo Salvador Eleazar / Sheilah Sauler ', '0000-00-00', 49, 1, 1, 4, '61 Durian', '20504024', 'Green', '583', ''),
(458, '60003943', 'FOU402', 'White', 'Nissan', 'Juke', 'Levet  Christine Vivienne Carpo', '0000-00-00', 49, 1, 1, 4, '64 Kamachile', '20628675', 'Green', '584', ''),
(459, '60003943', 'TAO103', 'Black', 'Hyundai', 'Tucson', 'Levet  Christine Vivienne Carpo', '0000-00-00', 49, 1, 1, 4, '64 Kamachile', '20265480', 'Green', '', ''),
(460, '60003943', 'WNI896', 'Gray', 'Hyundai', '110', 'Levet  Christine Vivienne Carpo', '0000-00-00', 49, 1, 1, 4, '64 Kamachile', '20438827', 'Green', '585', ''),
(461, '60004007', 'DAA4926', 'Silver', 'Ford', 'Everest', 'Librojo  Rene / Rowena ', '0000-00-00', 49, 1, 1, 4, '23 Lanzones', '20504131', 'Green', '586', ''),
(462, '60004007', 'ABS6208', 'Gray Metallic', 'Toyota', 'Altis', 'Librojo  Rene / Rowena ', '0000-00-00', 49, 1, 1, 4, '23 Lanzones', '20221012', 'Green', '587', ''),
(463, '60005257', 'DAN9695', 'White', 'Toyota', 'Camry', 'Santos  Ricardo Salvador Eleazar / Sheilah Sauler ', '0000-00-00', 49, 1, 1, 4, '61 Durian', '20628617', 'Green', '588', ''),
(464, '60004397', 'DAF7572', 'Black', 'Mazda', 'CX3', 'Rosario  Fernando  ', '0000-00-00', 49, 1, 1, 4, '26 Kamachile', '20503707', 'Green', '589', ''),
(465, '60004397', 'PHI556', 'Red', 'Honda', 'City', 'Rosario  Fernando  ', '0000-00-00', 49, 1, 1, 4, '26 Kamachile', '20216490', 'Green', '590', ''),
(466, '60023169', 'AJA7650', 'Gray', 'Chevy', 'Spin', 'Lopez  Juan', '0000-00-00', 49, 1, 1, 4, '42 Cacao Loop', 'x', '', '', ''),
(467, '60023169', 'DAN2426', 'Bronze', 'Toyota', 'Rush', 'Lopez  Juan', '0000-00-00', 49, 1, 1, 4, '42 Cacao Loop', '20628505', '', '', ''),
(468, '60023169', 'GB2303', 'White', 'Foton', 'View Trans Van', 'Lopez  Juan', '0000-00-00', 49, 1, 1, 4, '42 Cacao Loop', '20365285', '', '', ''),
(469, '60004397', 'ZHC659', 'Pearl', 'Honda', 'CRV', 'Rosario  Fernando  ', '0000-00-00', 49, 1, 1, 4, '26 Kamachile', '20216491', 'Green', '219', ''),
(470, '60005218', 'UZN785', 'White', 'BMW', '5 Series', 'Ong  Jonston Prince / Donna Therese', '0000-00-00', 49, 1, 1, 4, 'P5A B20 L3', '20758879', 'Green', '220', ''),
(471, '60005218', 'UXI207', 'White', 'Honda', 'Pilot', 'Ong  Jonston Prince / Donna Therese', '0000-00-00', 49, 1, 1, 4, 'P5A B20 L3', 'x', 'Green', '591', ''),
(472, '60023088', 'NAI1207', 'Silver Metallic', 'Toyota', 'Fortuner', 'Lu Chiu  Demosthenes', '0000-00-00', 49, 1, 1, 4, '9 Sarikaya', '20504014', 'Green', '592', ''),
(473, '60023088', 'UQT594', 'Lithium', 'Toyota', 'Fortuner', 'Lu Chiu  Demosthenes', '0000-00-00', 49, 1, 1, 4, '9 Sarikaya', '20221178', 'Green', '593', ''),
(474, '60025733', 'BEY216', 'Black', 'Mitsubishi', 'Montero', 'Bent  Jasmin', '0000-00-00', 49, 1, 1, 4, '27 Apitong', '20221823', 'Green', '594', ''),
(475, '60005790', 'DAI7610', 'Silver', 'Toyota', 'Rush', 'Fernandez  Marie Beatriz Ilustre ', '0000-00-00', 49, 1, 1, 4, '9 Langkaan', '20628100', 'Green', '595', ''),
(476, '60005204', 'NDG7212', 'Blue', 'Suzuki', 'Switch', 'Kleiss  Willyn Santos / Thomas Hermanus Johannes ', '0000-00-00', 49, 1, 1, 4, '2 Durian', '20758867', '', '596', ''),
(477, '60005204', 'PRO873', 'Black', 'Toyota', 'Fortuner', 'Kleiss  Willyn Santos / Thomas Hermanus Johannes ', '0000-00-00', 49, 1, 1, 4, '2 Durian', '20215917', '', '597', ''),
(478, '60004064', 'IL0138', 'Orange', 'Ford', 'Everest', 'Atienza  Alan / Olivia Maila ', '0000-00-00', 49, 1, 1, 4, '83 Kamachile', '20365414', 'Green', '599', ''),
(479, '60005262', '', '', 'Volvo', 'XC70', 'Ramos  John Eric  / Melissa Frances Angela', '0000-00-00', 49, 1, 1, 4, '71 Durian', 'x', '', '600', ''),
(480, '60005262', '', '', 'Mazda', 'CX5', 'Ramos  John Eric  / Melissa Frances Angela', '0000-00-00', 49, 1, 1, 4, '71 Durian', 'x', '', '618', ''),
(481, '60005262', '', '', 'Nissan', 'Xtrail', 'Ramos  John Eric  / Melissa Frances Angela', '0000-00-00', 49, 1, 1, 4, '71 Durian', 'x', '', '628', ''),
(482, '60022891', 'NQD198', 'Gold', 'Toyota', 'Innova', 'Eduardo Sumulong (Beatrice Realty Development Comp', '0000-00-00', 49, 1, 1, 4, '12 Pangdan', '20439153', 'Green', '777', ''),
(483, '60022891', 'POK902', 'Silver', 'Toyota', 'Altis', 'Eduardo Sumulong (Beatrice Realty Development Comp', '0000-00-00', 49, 1, 1, 4, '12 Pangdan', '20439152', 'Green', '', ''),
(484, '60005132', 'U2K105', 'White', 'Lexus', '', 'Magpantay  Raulito ', '0000-00-00', 49, 1, 1, 4, '222 Sampaloc Drive', '20627999', 'Green', '', ''),
(485, '60004451', 'AAY7320', 'White', 'Toyota', 'Fortuner', 'Macdonald-Taylor  Elma', '0000-00-00', 49, 1, 1, 4, '24 Duhat', '20628659', 'Green', '', ''),
(486, '60022891', 'NJO831', 'Gold', 'Toyota', 'Fortuner', 'Eduardo Sumulong (Beatrice Realty Development Comp', '0000-00-00', 49, 1, 1, 4, '12 Pangdan', '20439144', 'Green', '808', ''),
(487, '60005132', 'TII504', '', 'Toyota', 'Grandia', 'Magpantay  Raulito ', '0000-00-00', 49, 1, 1, 4, '222 Sampaloc Drive', '20221172', 'Green', '811', ''),
(488, '60023177', 'NDH4663', 'Gold', 'Hyundai', 'Starex', 'Lorilla  Francis / Meylan ', '0000-00-00', 49, 1, 1, 4, '1 Banaba', '20330736', 'Green', '812', ''),
(489, '60023177', 'NCO7361', 'Silver', 'Toyota', 'Fortuner', 'Lorilla  Francis / Meylan ', '0000-00-00', 49, 1, 1, 4, '1 Banaba', '20439013', 'Green', '817', ''),
(490, '60023177', 'TSO968', 'Silver Gold', 'Nissan', 'Navarra', 'Lorilla  Francis / Meylan ', '0000-00-00', 49, 1, 1, 4, '1 Banaba', '20221284', 'Green', '818', ''),
(491, '60004496', 'PCQ326', 'Green', 'Toyota', 'Innova', 'Malixi  Louie / Gladys', '0000-00-00', 49, 1, 1, 4, '49 Kamias', '20627968', '', '', ''),
(492, '60005199', 'PNQ320', 'Silver', 'Mercedez Benz', '', 'Carrion Ramon / Christopher', '0000-00-00', 49, 1, 1, 4, '34 Durian', '20758854', 'Green', '', ''),
(493, '60004496', 'VR4741', 'Brown Chocolate', 'Toyota', 'Fortuner', 'Malixi  Louie / Gladys', '0000-00-00', 49, 1, 1, 4, '49 Kamias', '20628064', '', '', ''),
(494, '60004718', 'A9Q841', 'Jade', 'Toyota', 'Innova', 'Espinosa  Norma / Feliciano  Antonio', '0000-00-00', 49, 1, 1, 4, '123 Sampaloc', '20628184', 'Green', '826', ''),
(495, '60007724', 'ABG8259', 'White', 'Toyota', 'Prado', 'Gust  Haraya Villa Del Rosario / Robert Charles ', '0000-00-00', 49, 1, 1, 4, '16 Persimmon', '20365298', 'Green', '827', ''),
(496, '60007724', 'AAP5275', 'White', 'Toyota', 'Vios', 'Gust  Haraya Villa Del Rosario / Robert Charles ', '0000-00-00', 49, 1, 1, 4, '16 Persimmon', '20365299', 'Green', '828', ''),
(497, '60016172', 'ZJE257', 'White', 'Honda', 'Jazz', 'Tumbaga  Erwin / Kathryn Jill ', '0000-00-00', 49, 1, 1, 4, '9 Apitong', '20365450', 'Green', '829', ''),
(498, '60004177', 'NFT7336', 'Black', 'Toyota', 'Innova', 'Chan  Pilar', '0000-00-00', 49, 1, 1, 4, '33 Pili', '20628605', 'Green', '892', ''),
(499, '60004663', 'NAW6598', 'Black', 'Honda', 'CRV', 'Quiray  Marco Carlo Bautista ', '0000-00-00', 49, 1, 1, 4, '61 Kamias', '20365359', 'Green', '', ''),
(500, '60004177', 'NOP544', '', 'Ford', 'Trekker', 'Chan  Pilar', '0000-00-00', 49, 1, 1, 4, '33 Pili', '20216578', 'Green', '917', ''),
(501, '60004887', 'DAC5994', 'White', 'Ford', 'Ranger', 'Paraiso  Joshua Gilbert / Jen (Lessee)', '0000-00-00', 49, 1, 1, 4, '20 Mabolo Loop', '20504100', 'Green', '926', ''),
(502, '60004887', 'BOY984', 'White', 'Mitsubishi', 'Pajero', 'Paraiso  Joshua Gilbert / Jen (Lessee)', '0000-00-00', 49, 1, 1, 4, '20 Mabolo Loop', '20503909', 'Green', '926', ''),
(503, '60023190', 'NDI8177', 'Black', 'Subaru', 'Forester', 'Menpin  Romeo Jr.', '0000-00-00', 49, 1, 1, 4, '14 Cacao', '20628476', 'Green', '1001', ''),
(504, '60023190', 'NBT7966', 'Gray', 'Ford', 'Ranger', 'Menpin  Romeo Jr.', '0000-00-00', 49, 1, 1, 4, '14 Cacao', '20628483', 'Green', '1002', ''),
(505, '60023190', 'NCZ5812', 'White', 'Mercedez Benz', 'GLA', 'Menpin  Romeo Jr.', '0000-00-00', 49, 1, 1, 4, '14 Cacao', 'x', 'Green', '1003', ''),
(506, '60007985', 'XA1458', 'Silver', 'Mini Cooper', 'S', 'Marcelo  Jesus Joey', '0000-00-00', 49, 1, 1, 4, '2 Tanguili Place', '20758866', 'Green', '', ''),
(507, '60023190', 'UOK317', 'Blue', 'Dodge', 'Durango', 'Menpin  Romeo Jr.', '0000-00-00', 49, 1, 1, 4, '14 Cacao', '20217792', 'Green', '', ''),
(508, '60007985', 'NEC2058', 'White', 'Toyota', 'Grandia', 'Marcelo  Jesus Joey', '0000-00-00', 49, 1, 1, 4, '2 Tanguili Place', '20758743', 'Green', '', ''),
(509, '60007724', 'NCY1505', 'White', 'Toyota', 'Fortuner', 'Gust  Haraya Villa Del Rosario / Robert Charles ', '0000-00-00', 49, 1, 1, 4, '16 Persimmon', '20438843', 'Green', '', ''),
(510, '60007724', 'POS872', 'White', 'Jeep', 'Wrangler', 'Gust  Haraya Villa Del Rosario / Robert Charles ', '0000-00-00', 49, 1, 1, 4, '16 Persimmon', '20365300', 'Green', '', ''),
(511, '60016172', 'XKC201', 'Red', 'Suzuki', 'Jimny', 'Tumbaga  Erwin / Kathryn Jill ', '0000-00-00', 49, 1, 1, 4, '9 Apitong', '20365292', 'Green', '1004', ''),
(512, '60016172', 'NCD2985', 'White', 'Toyota', 'FJ Cruiser', 'Tumbaga  Erwin / Kathryn Jill ', '0000-00-00', 49, 1, 1, 4, '9 Apitong', '20400022', 'Green', '1005', ''),
(513, '60016172', 'NBG4690', 'White', 'Toyota', 'Rav4', 'Tumbaga  Erwin / Kathryn Jill ', '0000-00-00', 49, 1, 1, 4, '9 Apitong', '20628464', 'Green', '1006', ''),
(514, '60023232', 'ULI696', 'White', 'Toyota', 'Alphard', 'Mendoza  Florino', '0000-00-00', 49, 1, 1, 4, '39 Cacao Loop', '20300001', 'Green', '1007', ''),
(515, '60023232', 'AAP1063', 'White', 'Peugeot', '', 'Mendoza  Florino', '0000-00-00', 49, 1, 1, 4, '39 Cacao Loop', '20265509', 'Green', '1008', ''),
(516, '60023232', 'NAI3494', 'White', 'Toyota', 'Alphard', 'Mendoza  Florino', '0000-00-00', 49, 1, 1, 4, '39 Cacao Loop', '20504155', 'Green', '1019', ''),
(517, '60023232', 'DAZ8283', 'White', 'Toyota', 'Camry', 'Mendoza  Florino', '0000-00-00', 49, 1, 1, 4, '39 Cacao Loop', '20628739', 'Green', '1088', ''),
(518, '60005248', 'NBR9003', 'Black', 'Mitsubishi', 'Montero', ' Manuel  Richard John / Ma. Carissa ', '0000-00-00', 49, 1, 1, 4, 'P5A B22 L1', '20628433', 'Green', '1111', ''),
(519, '60005248', 'UOU288', 'Black', 'Hyundai', 'Starex', ' Manuel  Richard John / Ma. Carissa ', '0000-00-00', 49, 1, 1, 4, 'P5A B22 L1', '20365262', 'Green', '', ''),
(520, '60005248', 'NDC5930', 'Black', 'Toyota', 'Vios', ' Manuel  Richard John / Ma. Carissa ', '0000-00-00', 49, 1, 1, 4, 'P9 B6 L19', '20628434', 'Green', '', ''),
(521, '60004069', 'DAN8639', 'Black', 'Toyota', 'Fortuner', 'Recidoro  Ronald / Michelle Anne ', '0000-00-00', 49, 1, 1, 4, '47 Rambutan', '20628610', 'Green', '', ''),
(522, '60004069', 'NBA4503', 'Black', 'Mitsubishi', 'Montero', 'Recidoro  Ronald / Michelle Anne ', '0000-00-00', 49, 1, 1, 4, '47 Rambutan', '20439193', 'Green', '', ''),
(523, '60004069', 'UJQ465', 'Gray', 'Ford', 'Everest', 'Recidoro  Ronald / Michelle Anne ', '0000-00-00', 49, 1, 1, 4, '47 Rambutan', '20400098', 'Green', '', ''),
(524, '60004069', 'TKI506', 'Red', 'Toyota', 'Innova', 'Recidoro  Ronald / Michelle Anne ', '0000-00-00', 49, 1, 1, 4, '47 Rambutan', '20400099', 'Green', '1122', ''),
(525, '60004544', 'DEB3071', 'Gray', 'Mazda', 'CX5', 'De Castro  Karmina Irene / Arthur Michael', '0000-00-00', 49, 1, 1, 4, '119 Lanzones', 'x', 'Green', '1222', ''),
(526, '60004544', 'DAD4183', 'Blue', 'Hyundai', 'Kona', 'De Castro  Karmina Irene / Arthur Michael', '0000-00-00', 49, 1, 1, 4, '119 Lanzones', '20628008', 'Green', '1234', ''),
(527, '60004544', 'DDL8557', 'Black', 'Ford', 'Escape', 'De Castro  Karmina Irene / Arthur Michael', '0000-00-00', 49, 1, 1, 4, '119 Lanzones', '20365512', 'Green', '1333', ''),
(528, '60004140', 'NCB3095', 'Black', 'BMW', 'X5', 'Montenegro  Rosaleo / Generosa', '0000-00-00', 49, 1, 1, 4, '50 Kasoy', '20503705', 'Green', '1444', ''),
(529, '60004140', 'NCD5955', 'Black', 'Hyundai', 'Starex', 'Montenegro  Rosaleo / Generosa', '0000-00-00', 49, 1, 1, 4, '50 Kasoy', '20365316', 'Green', '1464', ''),
(530, '60004140', 'AAZ3493', 'Red', 'Mazda', '3', 'Montenegro  Rosaleo / Generosa', '0000-00-00', 49, 1, 1, 4, '50 Kasoy', '20221664', 'Green', '268', ''),
(531, '60004140', 'UAI858', 'White', 'Toyota', 'Land Cruiser', 'Montenegro  Rosaleo / Generosa', '0000-00-00', 49, 1, 1, 4, '50 Kasoy', '20217545', 'Green', '476', ''),
(532, '60004140', 'NAV2122', 'Silver', 'Subaru', 'WRX', 'Montenegro  Rosaleo / Generosa', '0000-00-00', 49, 1, 1, 4, '50 Kasoy', '20217543', 'Yellow', '475', ''),
(533, '60022940', 'UQG163', 'White', 'Ford', 'Focus', 'Morin  Jay Sunday', '0000-00-00', 49, 1, 1, 4, '6 Timon', '20216760', 'Green', '672', ''),
(534, '60022940', 'NEH7105', 'White', 'Ford', 'Everest', 'Morin  Jay Sunday', '0000-00-00', 49, 1, 1, 4, '6 Timon', '20628416', 'Green', '62', ''),
(535, '60022940', 'NBV2956', 'Black', 'Dodge', 'Durango', 'Morin  Jay Sunday', '0000-00-00', 49, 1, 1, 4, '6 Timon', '20438977', 'Green', '63', ''),
(536, '60022940', 'AOA8611', 'Black', 'BMW', '520D', 'Morin  Jay Sunday', '0000-00-00', 49, 1, 1, 4, '6 Timon', '20439203', 'Green', '', ''),
(537, '60004988', 'PXQ275', '', 'Hyundai', 'Sonata', 'Nakpil  Leoncio', '0000-00-00', 49, 1, 1, 4, '7 Durian Drive', 'x', '', '674', ''),
(538, '60004988', 'LSN99', 'Red', 'Mitsubishi', 'Lancer', 'Nakpil  Leoncio', '0000-00-00', 49, 1, 1, 4, '7 Durian Drive', '20217670', '', '673', ''),
(539, '60004988', 'RDN08', '', 'Mercedez Benz', '', 'Nakpil  Leoncio', '0000-00-00', 49, 1, 1, 4, '7 Durian Drive', '20217667', '', '', ''),
(540, '60004988', 'EG2050', 'Black', 'Kia', 'Soul', 'Nakpil  Leoncio', '0000-00-00', 49, 1, 1, 4, '7 Durian Drive', '20217669', '', '', ''),
(541, '60004988', 'NGF8711', 'Red', 'Toyota', 'Innova', 'Nakpil  Leoncio', '0000-00-00', 49, 1, 1, 4, '7 Durian Drive', '20628630', '', '', ''),
(542, '60023117', 'NDT1617', 'Green', 'Chevy', 'Trailblazer', 'Narciso  Francis Gregory / Carolina ', '0000-00-00', 49, 1, 1, 4, '15 Managkil', '20439115', 'Green', '', ''),
(543, '60023117', 'F0A609', 'Black', 'Nissan', 'Xtrail', 'Narciso  Francis Gregory / Carolina ', '0000-00-00', 49, 1, 1, 4, '15 Managkil', '20628513', 'Green', '', ''),
(544, '60023117', 'PIX464', 'White', 'Subaru', 'Forester', 'Narciso  Francis Gregory / Carolina ', '0000-00-00', 49, 1, 1, 4, '15 Managkil', '20439059', 'Green', '675', ''),
(545, '60023117', 'ZSP305', 'Green', 'Toyota', 'Corolla', 'Narciso  Francis Gregory / Carolina ', '0000-00-00', 49, 1, 1, 4, '15 Managkil', '20628614', 'Green', '676', ''),
(546, '60023117', 'F0b001', 'Black', 'Nissan', 'Almera', 'Narciso  Francis Gregory / Carolina ', '0000-00-00', 49, 1, 1, 4, '15 Managkil', 'x', 'Green', '677', ''),
(547, '60023117', 'TGV114', 'Silver', 'Honda', 'Civic', 'Narciso  Francis Gregory / Carolina ', '0000-00-00', 49, 1, 1, 4, '15 Managkil', 'x', 'Green', '678', ''),
(548, '60016287', 'DAL4540', 'White', 'Mitsubishi', 'Montero', 'Gabriel  Norman', '0000-00-00', 49, 1, 1, 4, '17 Kahel Drive', '20628303', 'Green', '654', ''),
(549, '60016287', 'UIA186', 'White', 'Toyota', 'Innova', 'Gabriel  Norman', '0000-00-00', 49, 1, 1, 4, '17 Kahel Drive', '20221176', 'Green', '656', ''),
(550, '60016287', 'NCG21', 'Red', 'Mazda', 'CX5', 'Gabriel  Norman', '0000-00-00', 49, 1, 1, 4, '17 Kahel Drive', '20330742', 'Green', '655', ''),
(551, '60016287', 'DAZ9354', 'Black', 'Mitsubishi', 'Montero', 'Gabriel  Norman', '0000-00-00', 49, 1, 1, 4, '17 Kahel Drive', '20758873', 'Green', '657', ''),
(552, '60004643', 'WOU436', 'White', 'Mazda', 'CX5', 'Ly  Anthony', '0000-00-00', 49, 1, 1, 4, '187 Sampaloc', '20365503', '', '694', ''),
(553, '60005085', 'TIU950', 'Black', 'Toyota', 'Camry', 'Novicio  Noel / Dorothy', '0000-00-00', 49, 1, 1, 4, '7 Sapphire', '20217676', 'Green', '700', ''),
(554, '60005085', 'PAD245', 'Maroon', 'Toyota', 'Innova', 'Novicio  Noel / Dorothy', '0000-00-00', 49, 1, 1, 4, '7 Sapphire', 'x', 'Green', '61', ''),
(555, '60004643', 'ZSW968', 'Red', 'Kia', 'Carnival', 'Ly  Anthony', '0000-00-00', 49, 1, 1, 4, '187 Sampaloc', '20438821', '', '', ''),
(556, '60004167', 'ZNR601', 'Black', 'Kia', 'Carnival', 'Dionisio  Florante', '0000-00-00', 49, 1, 1, 4, '53 Pili', '20330701', 'Green', '', ''),
(557, '60004167', 'UPG668', 'Blue', 'Toyota', 'Corona', 'Dionisio  Florante', '0000-00-00', 49, 1, 1, 4, '53 Pili', '20330702', 'Green', '', ''),
(558, '60004421', 'NBN2711', 'Gray', 'Toyota', 'Fortuner', 'Avila  Randolph Bienvenido', '0000-00-00', 49, 1, 1, 4, '4 Pina Place', '20439259', 'Green', '', ''),
(559, '60004421', 'POV465', 'White', 'Toyota', 'Fortuner', 'Avila  Randolph Bienvenido', '0000-00-00', 49, 1, 1, 4, '4 Pina Place', 'x', 'Green', '', ''),
(560, '60004421', 'NOW2298', 'Gray', 'Toyota', 'Altis', 'Avila  Randolph Bienvenido', '0000-00-00', 49, 1, 1, 4, '4 Pina Place', '20221233', 'Green', '', ''),
(561, '60004663', 'WGI356', 'White', 'Honda', 'Civic', 'Quiray  Marco Carlo Bautista ', '0000-00-00', 49, 1, 1, 4, '61 Kamias', 'x', 'Green', '', ''),
(562, '60022766', 'AAI9843', 'Blue', 'Hyundai', '', 'Expertline Ventures Corporation / Coloquio  Javier', '0000-00-00', 49, 1, 1, 4, '71 Marang', 'x', 'Green', '', ''),
(563, '60022766', 'B6l514', 'White Diamond', 'Mitsubishi', '', 'Expertline Ventures Corporation / Coloquio  Javier', '0000-00-00', 49, 1, 1, 4, '71 Marang', '20628764', 'Green', '', ''),
(564, '60004388', 'ZPX402', 'Beige', 'Mitsubishi', 'Grandis', 'Ong  Ariel', '0000-00-00', 49, 1, 1, 4, '19 Piña', 'x', 'Yellow', '', ''),
(565, '60004388', 'WIY963', 'White', 'Hyundai', 'Starex', 'Ong  Ariel', '0000-00-00', 49, 1, 1, 4, '19 Piña', '20330576', 'Green', '', ''),
(566, '60004388', 'DAI9420', 'White', 'Toyota', 'Alphard', 'Ong  Ariel', '0000-00-00', 49, 1, 1, 4, '19 Piña', '20628061', 'Green', '', ''),
(567, '60004052', 'G21655', 'Green', 'Suzuki', 'Jimny', 'Yngson  Mike', '0000-00-00', 49, 1, 1, 4, '95 Kamachile', '20758895', 'Green', '', ''),
(568, '60005205', 'NAP3480', 'Green', 'Suzuki', 'Jimny', 'Rostoll  Rafael', '0000-00-00', 49, 1, 1, 4, '40 Durian', '20758830', 'Green', '', ''),
(569, '60007985', 'ZSG511', 'Green', 'Porsche', 'Cayman', 'Marcelo  Jesus Joey', '0000-00-00', 49, 1, 1, 4, '2 Tanguili Place', '20758865', 'Green', '', ''),
(570, '60005200', 'DAJ2054', 'White', 'Toyota', 'Hilux', 'Villavicencio  Benhur', '0000-00-00', 49, 1, 1, 4, '36 Durian', '20628244', 'Green', '', ''),
(571, '60016139', 'NDL6270', 'Bronze', 'Toyota', 'Fortuner', 'Radaza  Mary Catherine Lydet / Kenneth', '0000-00-00', 49, 1, 1, 4, 'P5 B19 L7', '20758828', 'Green', '', ''),
(572, '60005576', 'KIP383', 'Yellow Green', 'Hyundai', 'Kona', 'Jensen  Elnora Palomo / Peter ', '0000-00-00', 49, 1, 1, 4, '11 Belis', '20758896', 'Green', '', ''),
(573, '60005576', 'NAP4430', 'Gray', 'Honda', 'CRV', 'Jensen  Elnora Palomo / Peter ', '0000-00-00', 49, 1, 1, 4, '11 Belis', '20503962', 'Green', '664', ''),
(574, '60004434', 'NCN6659', 'Silver', 'Lexus', 'RX350', 'Berba  Gilbert', '0000-00-00', 49, 1, 1, 4, '11 Duhat', '20439100', 'Green', '663', ''),
(575, '60004434', 'NCO6004', 'Gray', 'Lexus', '350F', 'Berba  Gilbert', '0000-00-00', 49, 1, 1, 4, '11 Duhat', '20439010', 'Green', '662', ''),
(576, '60016198', 'CAB4407', 'Bronze', 'Toyota', 'Fortuner', 'Ortiguera  Antonio Ray', '0000-00-00', 49, 1, 1, 4, '22 Amiling', 'NEW', 'Green', '707', ''),
(577, '60016198', 'NBI2072', 'Beige', 'Toyota', 'Hi-Ace', 'Ortiguera  Antonio Ray', '0000-00-00', 49, 1, 1, 4, '22 Amiling', 'NEW', 'Green', '699', ''),
(578, '60004468', 'AAI6859', 'Silver', 'Hyundai', 'Accord', 'Jamir  Efren / Veneranda', '0000-00-00', 49, 1, 1, 4, '3 Kamias', '20221400', 'Green', '', ''),
(579, '60004468', 'WOT741', 'Black', 'Hyundai', 'Starex', 'Jamir  Efren / Veneranda', '0000-00-00', 49, 1, 1, 4, '3 Kamias', '20221249', 'Green', '', ''),
(580, '60004947', 'NDF6505', 'White', 'Subaru', 'Forester', 'Willockx  Teresita', '0000-00-00', 49, 1, 1, 4, '24 Aratiles', '20365251', 'Green', '', ''),
(581, '60004468', 'DAB8609', 'Silver', 'Isuzu', 'Mux', 'Jamir  Efren / Veneranda', '0000-00-00', 49, 1, 1, 4, '3 Kamias', '20438973', 'Green', '698', ''),
(582, '60005036', 'AJA1021', 'White', 'Nissan', 'Patrol', 'Pamintuan  Dante', '0000-00-00', 49, 1, 1, 4, '18 Piko', '20330572', 'Green', '697', ''),
(583, '60005036', 'NOA438', 'White', 'VW', 'Gold GTS', 'Pamintuan  Dante', '0000-00-00', 49, 1, 1, 4, '18 Piko', '20504064', 'Green', '', ''),
(584, '60005036', 'PB0219', 'Silver', 'BMW', '320D', 'Pamintuan  Dante', '0000-00-00', 49, 1, 1, 4, '18 Piko', '20628586', 'Green', '', ''),
(585, '60004468', 'DCB2382', 'Black', 'Isuzu', 'Dmax', 'Jamir  Efren / Veneranda', '0000-00-00', 49, 1, 1, 4, '3 Kamias', '20365278', 'Green', '', ''),
(586, '60004578', 'NAF6407', 'Silver', 'Toyota', 'Fortuner', 'Tee  Ernesto Ang  ', '0000-00-00', 49, 1, 1, 4, '71 Kamias', '20438923', 'Green', '', ''),
(587, '60004578', 'NAI5336', 'Black', 'Toyota', 'Altis', 'Tee  Ernesto Ang  ', '0000-00-00', 49, 1, 1, 4, '71 Kamias', '20758829', '', '', ''),
(588, '60004684', 'NAI3156', 'Gray', 'Toyota', 'Fortuner', 'Aban  Ryan / Anna  (Lessee)', '0000-00-00', 49, 1, 1, 4, '130 Lanzones Drive', '20504133', 'Green', '', ''),
(589, '60004684', 'NBK5184', 'White', 'Toyota', 'Hi-Ace Grandia', 'Aban  Ryan / Anna  (Lessee)', '0000-00-00', 49, 1, 1, 4, '130 Lanzones Drive', '20628043', 'Green', '', ''),
(590, '60023210', 'ZSD853', 'White', 'BMW', 'X5', 'Nava  William', '0000-00-00', 49, 1, 1, 4, '19 Cacao Loop', '20504038', 'Green', '', ''),
(591, '60007669', 'UHI833', 'Dark Blue', 'Toyota', 'Fortuner', 'Pangan  Reuben San Jose / Devora', '0000-00-00', 49, 1, 1, 4, '60 Aratiles', '20216674', 'Yellow', '', ''),
(592, '60023210', 'XNZ803', 'White', 'Mitsubishi', 'Pajero', 'Nava  William', '0000-00-00', 49, 1, 1, 4, '19 Cacao Loop', '20628506', 'Green', '', ''),
(593, '60023210', 'P3V998', 'White', 'Toyota', 'Super Grandia', 'Nava  William', '0000-00-00', 49, 1, 1, 4, '19 Cacao Loop', '20628527', 'Green', '', ''),
(594, '60022831', 'NCL7285', 'Orange', 'Jeep', 'Wrangler', 'Pangilinan  Anthony / Maricel', '0000-00-00', 49, 1, 1, 4, '11 Guava', 'x', 'Green', '', ''),
(595, '60022831', 'NAS4583', 'White', 'Mitsubishi', 'Montero', 'Pangilinan  Anthony / Maricel', '0000-00-00', 49, 1, 1, 4, '11 Guava', '20439113', 'Green', '', ''),
(596, '60022831', 'NBS8116', 'White', 'Nissan', 'NV350', 'Pangilinan  Anthony / Maricel', '0000-00-00', 49, 1, 1, 4, '11 Guava', '20628145', 'Green', '', ''),
(597, '60022831', 'NEB9102', 'White', 'Chevy', '', 'Pangilinan  Anthony / Maricel', '0000-00-00', 49, 1, 1, 4, '11 Guava', '20220893', 'Green', '', ''),
(598, '60007695', 'NGD8161', 'Black', 'MG', 'Z5', 'Smith  Calvin', '0000-00-00', 49, 1, 1, 4, '59 Marang', 'x', 'Green', '', ''),
(599, '60007695', 'ZES706', 'Silver', 'Nissan', 'Levina', 'Smith  Calvin', '0000-00-00', 49, 1, 1, 4, '59 Marang', '20221767', 'Green', '', ''),
(600, '60007695', 'POF683', 'Red', 'Toyota', 'Innova', 'Smith  Calvin', '0000-00-00', 49, 1, 1, 4, '59 Marang', '20221768', 'Green', '', ''),
(601, '60003982', 'ADA4186', 'Gray', 'BMW', '520D', 'Everingham  Richard/Jennifer  ', '0000-00-00', 49, 1, 1, 4, '15 Rambutan', '20216503', 'Green', '', ''),
(602, '60003982', 'POR773', 'Platinum', 'Nissan', 'Patrol', 'Everingham  Richard/Jennifer  ', '0000-00-00', 49, 1, 1, 4, '15 Rambutan', '20216588', 'Green', '', ''),
(603, '60004701', 'ABG8169', 'Black', 'Mazda', 'CX9', 'King  Sandra', '0000-00-00', 49, 1, 1, 4, '12 Sampaloc Place', '20365323', 'Green', '', ''),
(604, '60004945', 'XAF488', 'Black', 'Toyota', 'Revo', 'Carreon  Jose / Eva Emilia ', '0000-00-00', 49, 1, 1, 4, '22 Aratiles', '20503903', 'Green', '', ''),
(605, '60004052', 'ZJS619', 'Black', 'Mitsubishi', 'Stada', 'Yngson  Mike', '0000-00-00', 49, 1, 1, 4, '95 Kamachile', '20439296', 'Green', '', ''),
(606, '60005561', 'NAX9493', 'Green', 'Hyundai', 'Kona', 'Gallega  Rodel', '0000-00-00', 49, 1, 1, 4, '5 Amiling', 'x', 'Green', '', ''),
(607, '60005001', 'ODK777', 'White', 'Mazda', 'MX5', 'Guce  Earl', '0000-00-00', 49, 1, 1, 4, '29 Aratiles', '20524173', 'Green', '', ''),
(608, '60005250', 'W0F965', 'Black', 'MG', 'SW', 'Pelea  Alberto / Olivia ', '0000-00-00', 49, 1, 1, 4, '115 Aratiles', 'x', 'Green', '', ''),
(609, '60005250', 'WQI731', 'Brown', 'Mitsubishi', 'Montero', 'Pelea  Alberto / Olivia ', '0000-00-00', 49, 1, 1, 4, '115 Aratiles', '20221864', 'Green', '', ''),
(610, '60005251', 'YY1982', 'White', 'Toyota', 'Super Grandia', 'Diaz  Michael Angelo /  Aina Sales ', '0000-00-00', 49, 1, 1, 4, '16 Aratiles', '20628312', 'Green', '722', ''),
(611, '60005251', 'PQZ698', 'Brown', 'BMW', 'X1', 'Diaz  Michael Angelo /  Aina Sales ', '0000-00-00', 49, 1, 1, 4, '16 Aratiles', '20216787', 'Green', '723', ''),
(612, '60005251', 'APA1827', 'Gray', 'Audi', 'Q3', 'Diaz  Michael Angelo /  Aina Sales ', '0000-00-00', 49, 1, 1, 4, '16 Aratiles', '20221854', 'Green', '724', ''),
(613, '60005251', 'NCQ1352', 'Gray', 'Mercedez Benz', 'GLA', 'Diaz  Michael Angelo /  Aina Sales ', '0000-00-00', 49, 1, 1, 4, '16 Aratiles', '20439184', 'Green', '', ''),
(614, '60005251', 'NED5379', 'Gray', 'Hyundai', 'Kona', 'Diaz  Michael Angelo /  Aina Sales ', '0000-00-00', 49, 1, 1, 4, '16 Aratiles', '20758936', 'Green', '704', ''),
(615, '60004826', 'TOB187', 'Silver', 'Toyota', 'Vios', 'Pineda  Edison / Erika / Elaine', '0000-00-00', 49, 1, 1, 4, '48 Sampaloc', '20221179', 'Green', '703', ''),
(616, '60004826', 'ULO436', 'White', 'Toyota', 'Hi-Ace', 'Pineda  Edison / Erika / Elaine', '0000-00-00', 49, 1, 1, 4, '48 Sampaloc', '20217729', 'Green', '', ''),
(617, '60004826', 'ZGV490', 'Lithium', 'Toyota', 'Fortuner', 'Pineda  Edison / Erika / Elaine', '0000-00-00', 49, 1, 1, 4, '48 Sampaloc', '20217728', 'Green', '', ''),
(618, '60004826', 'AAI5123', 'Silver', 'Toyota', 'Vios', 'Pineda  Edison / Erika / Elaine', '0000-00-00', 49, 1, 1, 4, '48 Sampaloc', '20433892', 'Yellow', '', ''),
(619, '60004826', 'NBX7821', 'Silver', 'Toyota', 'Fortuner', 'Pineda  Edison / Erika / Elaine', '0000-00-00', 49, 1, 1, 4, '48 Sampaloc', 'x', 'Green', '', ''),
(620, '60022952', 'PIJ236', 'White', 'Isuzu', 'Dmax', 'Pineda  Reynaldo', '0000-00-00', 49, 1, 1, 4, '15 Kamias', '20216395', '', '', ''),
(621, '60022952', 'BOV743', 'Silver', 'Isuzu', 'Mux', 'Pineda  Reynaldo', '0000-00-00', 49, 1, 1, 4, '15 Kamias', '20628063', '', '', ''),
(622, '60022952', 'XSH282', 'Silver', 'Toyota', 'Land Cruiser', 'Pineda  Reynaldo', '0000-00-00', 49, 1, 1, 4, '15 Kamias', '20216392', '', '', ''),
(623, '60022952', 'PQY907', 'Silver', 'Range Rover', '', 'Pineda  Reynaldo', '0000-00-00', 49, 1, 1, 4, '15 Kamias', '20503722', '', '', ''),
(624, '60005251', 'KIU618', 'Burgundy', 'Hyundai', 'Palisade', 'Diaz  Michael Angelo /  Aina Sales ', '0000-00-00', 49, 1, 1, 4, '16 Aratiles', '20758869', 'Green', '', ''),
(625, '60004439', 'DCP7698', 'Gray', 'Toyota', 'Hilux', 'Geronimo  Cesar Dela Cruz  / Estenely Domingo ', '0000-00-00', 49, 1, 1, 4, '28 Duhat', '20503888', 'Green', '', ''),
(626, '3000010903', 'WOD875', 'Green', 'MG', 'RX%', 'Platz  Aileen', '0000-00-00', 49, 1, 1, 4, 'Prominence 2', '20628495', 'Green', '', ''),
(627, '60004439', 'AAA9663', 'Brown', 'Honda', 'CRV', 'Geronimo  Cesar Dela Cruz  / Estenely Domingo ', '0000-00-00', 49, 1, 1, 4, '28 Duhat', '20503887', 'Green', '', ''),
(628, '60004439', 'DCP7726', 'Dark Brown', 'Toyota', 'Fortuner', 'Geronimo  Cesar Dela Cruz  / Estenely Domingo ', '0000-00-00', 49, 1, 1, 4, '28 Duhat', '20628048', 'Green', '', ''),
(629, '60005396', 'DAN3982', 'White', 'Ford', 'Ranger', 'Samson  Philip', '0000-00-00', 49, 1, 1, 4, '36 Agoho', '20628486', 'Green', '', ''),
(630, '60005396', 'NOC357', 'White', 'VW', 'Tiguan', 'Samson  Philip', '0000-00-00', 49, 1, 1, 4, '36 Agoho', '20628315', 'Green', '', ''),
(631, '60016139', 'UOP476', 'Dark Mica Steel', 'Toyota', 'Fortuner', 'Radaza  Mary Catherine Lydet / Kenneth', '0000-00-00', 49, 1, 1, 4, 'P5 B19 L6', '20628102', 'Green', '', ''),
(632, '60005265', 'DAN4499', 'Silver', 'Mitsubishi', 'Expander', 'Castillo  Arsenio / Maria Ana Teresa ', '0000-00-00', 49, 1, 1, 4, '36 Yakal', '20628597', 'Green', '', ''),
(633, '60005265', 'DAA9034', 'Brown', 'Kia', 'Carnival', 'Castillo  Arsenio / Maria Ana Teresa ', '0000-00-00', 49, 1, 1, 4, '36 Yakal', '20439246', 'Green', '660', ''),
(634, '60004545', 'ADM3809', 'White', 'Toyota', 'Grandia ', 'Ramirez  Johna', '0000-00-00', 49, 1, 1, 4, '36 kamias', '20365368', 'Yellow', '801', ''),
(635, '60005265', 'BET126', 'Blue', 'Toyota', 'Vios', 'Castillo  Arsenio / Maria Ana Teresa ', '0000-00-00', 49, 1, 1, 4, '36 Yakal', '20217786', 'Green', '', ''),
(636, '60005265', 'ABT9758', 'Red', 'Ford', 'Escape', 'Castillo  Arsenio / Maria Ana Teresa ', '0000-00-00', 49, 1, 1, 4, '36 Yakal', '20438897', 'Green', '492', '');
INSERT INTO `tbl_item` (`item_id`, `account_number`, `item_name`, `item_serno`, `item_modno`, `item_brand`, `item_amount`, `item_purdate`, `emp_id`, `cat_id`, `con_id`, `status_id`, `owner_address`, `rfid_code`, `vehicle_sticker_type`, `vehicle_sticker_number`, `vehicle_sticker_expiration`) VALUES
(637, '60005265', 'AEA2485', 'Silver', 'Nissan', 'Patrol', 'Castillo  Arsenio / Maria Ana Teresa ', '0000-00-00', 49, 1, 1, 4, '36 Yakal', '20216540', 'Green', '494', ''),
(638, '60007985', 'LDP4498', 'White', 'Nissan', 'Patrol', 'Marcelo  Jesus Joey', '0000-00-00', 49, 1, 1, 4, '2 Tanguili Place', '20503776', 'Green', '1009', ''),
(639, '60007985', 'PA8979', 'Silver', 'BMW', 'X3', 'Marcelo  Jesus Joey', '0000-00-00', 49, 1, 1, 4, '2 Tanguili Place', '20627971', 'Green', '708', ''),
(640, '60007985', 'NCP1275', 'Black', 'Ford', 'Ranger', 'Marcelo  Jesus Joey', '0000-00-00', 49, 1, 1, 4, '2 Tanguili Place', '20503799', 'Green', '463', ''),
(641, '60004486', 'XNH260', 'Red', 'Isuzu', 'Dmax', 'Guerrero  Maria Cristina / Jose Ramon', '0000-00-00', 49, 1, 1, 4, '19 Santol Loop', '20214128', 'Green', '464', ''),
(642, '60004486', 'NAW3576', 'Gray', 'Isuzu', 'Dmax', 'Guerrero  Maria Cristina / Jose Ramon', '0000-00-00', 49, 1, 1, 4, '19 Santol Loop', '20439171', 'Green', '465', ''),
(643, '60004486', 'UOJ894', 'Silver', 'Ford', 'Focus', 'Guerrero  Maria Cristina / Jose Ramon', '0000-00-00', 49, 1, 1, 4, '19 Santol Loop', '20214131', 'Green', '', ''),
(644, '60004052', 'SZY888', 'Black', 'Toyota', 'LC200', 'Yngson  Mike', '0000-00-00', 49, 1, 1, 4, '95 Kamachile', '20300084', 'Green', '', ''),
(645, '60004558', 'ZLR343', '', 'Ford', 'Everest', 'Ramos  Kenn-Francis / Lolit', '0000-00-00', 49, 1, 1, 4, '133 Lanzones', '20221243', 'Green', '', ''),
(646, '60004558', 'AAJ9687', '', 'Toyota', 'Hi-Ace', 'Ramos  Kenn-Francis / Lolit', '0000-00-00', 49, 1, 1, 4, '133 Lanzones', '20221286', 'Green', '', ''),
(647, '60004558', 'USF389', '', 'Volvo', 'Sedan', 'Ramos  Kenn-Francis / Lolit', '0000-00-00', 49, 1, 1, 4, '133 Lanzones', '20264844', 'Green', '', ''),
(648, '60004558', 'NRI823', 'Blue', 'Toyota', 'Vios', 'Ramos  Kenn-Francis / Lolit', '0000-00-00', 49, 1, 1, 4, '133 Lanzones', 'x', 'Green', '', ''),
(649, '60004919', 'WFI700', 'White', 'BMW', 'X1', 'Ramos  Erwin / Melissa', '0000-00-00', 49, 1, 1, 4, '11 Marang', '20439252', 'Green', '', ''),
(650, '60004052', 'NBA9447', 'Silver', 'Nissan', 'Terra', 'Yngson  Mike', '0000-00-00', 49, 1, 1, 4, '95 Kamachile', '20628588', 'Green', '', ''),
(651, '60023053', 'ROD560', 'White', 'Subaru', 'XV', 'Barrios  Walter', '0000-00-00', 49, 1, 1, 4, '59 Manzanitas', '20504056', 'Green', '', ''),
(652, '60023053', 'NDW7697', 'Black', 'Toyota', 'Fortuner', 'Barrios  Walter', '0000-00-00', 49, 1, 1, 4, '59 Manzanitas', '20400085', 'Green', '', ''),
(653, '60023053', 'ZLY454', 'White', 'Toyota', 'Camry', 'Barrios  Walter', '0000-00-00', 49, 1, 1, 4, '59 Manzanitas', '20164865', 'Green', '', ''),
(654, '3000010864', 'NDF8618', 'Lunar Sky', 'Ford', 'Ecosport', 'Yulo  Jocelyn ', '0000-00-00', 49, 1, 1, 4, '58 Acacia', '20365418', 'Green', '', ''),
(655, '3000010864', 'DAM3796', 'Gray Metallic', 'Toyota', 'Fortuner', 'Yulo  Jocelyn ', '0000-00-00', 49, 1, 1, 4, '58 Acacia', '20628359', 'Green', '', ''),
(656, '3000010864', 'TOS553', 'Black', 'Hyundai', 'Tucson', 'Yulo  Jocelyn ', '0000-00-00', 49, 1, 1, 4, '58 Acacia', '20265503', 'Green', '', ''),
(657, '3000010908', 'RK1952', 'Gray', 'Mazda', 'CX5', 'Varona   Philbert / Beatrice', '0000-00-00', 49, 1, 1, 4, '7 Betel Nut', '20438813', 'Green', '', ''),
(658, '3000010908', 'NOS586', 'Black', 'Mitsubishi', 'Montero', 'Varona   Philbert / Beatrice', '0000-00-00', 49, 1, 1, 4, '7 Betel Nut', '20221652', 'Green', '', ''),
(659, '60022838', 'NCV7352', 'Wine', 'Toyota', 'Innova', 'Stone  Irma', '0000-00-00', 49, 1, 1, 4, '8 Sua', '20504016', 'Green', '', ''),
(660, '60022838', 'ZKB236', 'Black', 'Toyota', 'Innova', 'Stone  Irma', '0000-00-00', 49, 1, 1, 4, '8 Sua', '20439041', 'Green', '', ''),
(661, '60022838', 'NAS6215', 'Gray', 'Ford', 'Expedition', 'Stone  Irma', '0000-00-00', 49, 1, 1, 4, '8 Sua', '20503963', 'Green', '', ''),
(662, '60005558', 'NOJ114', 'Gold', 'Honda', 'City', 'Siapuatco  Danilo', '0000-00-00', 49, 1, 1, 4, '40 Acacia Drive', '20220957', 'Green', '', ''),
(663, '60004612', 'AAQ2825', 'Black', 'Kia', 'Carnival', 'Reloza  Rafael', '0000-00-00', 49, 1, 1, 4, '50 Sineguelas', '20365259', 'Green', '', ''),
(664, '60004612', 'C343', 'Brown', 'VW', 'Tiguan', 'Reloza  Rafael', '0000-00-00', 49, 1, 1, 4, '50 Sineguelas', '20758839', 'Green', '', ''),
(665, '60004165', 'DAM2649', 'White', 'Toyota', 'Rav4', 'Remulla  Agnes', '0000-00-00', 49, 1, 1, 4, '58 Pili', '20628369', '', '', ''),
(666, '60004165', 'DAM2655', 'Green', 'Toyota', 'Rav4', 'Remulla  Agnes', '0000-00-00', 49, 1, 1, 4, '58 Pili', '20628370', '', '629', ''),
(667, '60004165', 'NEF1846', 'White', 'Toyota', 'Alphard', 'Remulla  Agnes', '0000-00-00', 49, 1, 1, 4, '58 Pili', '20628508', '', '631', ''),
(668, '60004165', 'A7X757', 'White', 'Toyota', 'Innova', 'Remulla  Agnes', '0000-00-00', 49, 1, 1, 4, '58 Pili', '20627978', '', '630', ''),
(669, '60004165', 'VY2326', 'Blue', 'Lexus', 'LC500', 'Remulla  Agnes', '0000-00-00', 49, 1, 1, 4, '58 Pili', '20439026', '', '', ''),
(670, '60004165', 'NAP8064', 'Black', 'Hyundai', 'H350', 'Remulla  Agnes', '0000-00-00', 49, 1, 1, 4, '58 Pili', '20627979', '', '', ''),
(671, '60004307', 'NEG1990', 'Blue', 'Porsche', 'Cayenne', 'Remulla  Agnes', '0000-00-00', 49, 1, 1, 4, '57 Pili', '20628384', '', '', ''),
(672, '60004307', 'AAD1821', 'Gray', 'Mercedez Benz', '', 'Remulla  Agnes', '0000-00-00', 49, 1, 1, 4, '57 Pili', '20365400', '', '', ''),
(673, '60004307', 'NAB1015', 'White', 'Toyota', 'Innova', 'Remulla  Agnes', '0000-00-00', 49, 1, 1, 4, '57 Pili', '20439030', '', '', ''),
(674, '60004307', 'YT2434', 'White', 'Toyota', 'Hilux', 'Remulla  Agnes', '0000-00-00', 49, 1, 1, 4, '57 Pili', '20365399', '', '', ''),
(675, '60004307', 'MOC246', 'White', 'Mercedez Benz', '', 'Remulla  Agnes', '0000-00-00', 49, 1, 1, 4, '57 Pili', '20628085', '', '', ''),
(676, '60004307', 'NAH1945', 'Bronze', 'Toyota', 'Fortuner', 'Remulla  Agnes', '0000-00-00', 49, 1, 1, 4, '57 Pili', '20439031', '', '', ''),
(677, '60004307', 'MOA984', 'Blue', 'Mercedez Benz', '', 'Remulla  Agnes', '0000-00-00', 49, 1, 1, 4, '57 Pili', '20628075', '', '', ''),
(678, '60005558', 'NDM5358', 'Gray', 'Volvo', 'XC60', 'Siapuatco  Danilo', '0000-00-00', 49, 1, 1, 4, '40 Acacia Drive', '20628655', 'Green', '', ''),
(679, '60005272', 'NBO3227', 'White', 'Subaru', 'Outback', 'Garriz  Jose Antonio ', '0000-00-00', 49, 1, 1, 4, '7 Durian', '20628639', 'Green', '', ''),
(680, '60005272', 'WQM343', 'White', 'VW', 'Tiguan', 'Garriz  Jose Antonio ', '0000-00-00', 49, 1, 1, 4, '7 Durian', '20264789', 'Green', '', ''),
(681, '60005272', 'ABD8953', 'Silver', 'Toyota', 'Fortuner', 'Garriz  Jose Antonio ', '0000-00-00', 49, 1, 1, 4, '7 Durian', '20330732', 'Green', '', ''),
(682, '60005272', 'NIE577', 'Red', 'Kia', 'Soul', 'Garriz  Jose Antonio ', '0000-00-00', 49, 1, 1, 4, '7 Durian', '20438999', 'Green', '', ''),
(683, '60005301', 'WAC3273', 'Silver', 'Toyota', 'Hilux', 'Velasco  Paul John / Marlina ', '0000-00-00', 49, 1, 1, 4, '48 Durian', '20503733', 'Green', '', ''),
(684, '60005366', 'UIX613', 'White', 'Isuzu', 'APV', 'Ripoll  Sebastian', '0000-00-00', 49, 1, 1, 4, '31 Campanilla', '20216634', 'Green', '', ''),
(685, '60004399', 'DAB1494', 'Silver', 'Ford', 'Ranger', 'Rivera  Lourdes Evangelista / Ricardo', '0000-00-00', 49, 1, 1, 4, '22 Kamachile', 'x', '', '', ''),
(686, '60004399', 'ZCA781', 'Silver', 'Toyota', 'Vios', 'Rivera  Lourdes Evangelista / Ricardo', '0000-00-00', 49, 1, 1, 4, '22 Kamachile', '20330790', '', '', ''),
(687, '60004399', 'ZPU466', 'Gold', 'Toyota', 'Vios', 'Rivera  Lourdes Evangelista / Ricardo', '0000-00-00', 49, 1, 1, 4, '22 Kamachile', '20216637', '', '', ''),
(688, '60004399', 'NFU4504', 'White', 'Mitsubishi', 'Montero', 'Rivera  Lourdes Evangelista / Ricardo', '0000-00-00', 49, 1, 1, 4, '22 Kamachile', '20221710', '', '', ''),
(689, '60004399', 'KGE478', 'White', 'Honda', 'City', 'Rivera  Lourdes Evangelista / Ricardo', '0000-00-00', 49, 1, 1, 4, '22 Kamachile', '20330719', '', '', ''),
(690, '60004399', 'NAH2301', 'Black', 'Toyota', 'Grandia', 'Rivera  Lourdes Evangelista / Ricardo', '0000-00-00', 49, 1, 1, 4, '22 Kamachile', '20439056', '', '', ''),
(691, '60004399', 'ZRG490', 'Black', 'Toyota', 'Camry', 'Rivera  Lourdes Evangelista / Ricardo', '0000-00-00', 49, 1, 1, 4, '22 Kamachile', '20365373', '', '', ''),
(692, '60005214', 'ABO8631', 'Yellow', 'Jeep', 'Wrangler', 'Rizzo  Rhea Verna Agatha / David Scott Jr.', '0000-00-00', 49, 1, 1, 4, '66 Durian', '20439075', 'Green', '', ''),
(693, '60005214', 'NCN8263', 'Gray', 'Toyota', 'Fortuner', 'Rizzo  Rhea Verna Agatha / David Scott Jr.', '0000-00-00', 49, 1, 1, 4, '66 Durian', '20439274', 'Green', '', ''),
(694, '60005214', 'NDJ4615', 'Black', 'Ford', 'Expedition', 'Rizzo  Rhea Verna Agatha / David Scott Jr.', '0000-00-00', 49, 1, 1, 4, '66 Durian', '20628321', 'Green', '', ''),
(695, '60023076', 'TMR88', 'Blue', 'Ford', 'Ecosport', 'Ronson  Maria Nimfa', '0000-00-00', 49, 1, 1, 4, '8 Sarikaya', '20264873', 'Green', '', ''),
(696, '60023076', 'DAG4731', 'Red', 'Ford', 'Explorer', 'Ronson  Maria Nimfa', '0000-00-00', 49, 1, 1, 4, '8 Sarikaya', '20503803', 'Green', '', ''),
(697, '60005428', 'ALX828', 'Blue', 'Subaru', 'Forester', 'Roque  Alexander', '0000-00-00', 49, 1, 1, 4, '35 Campanilla', '20210881', 'Yellow', '', ''),
(698, '60005428', 'ALX86', 'Galaxy Blue', 'Toyota', '86', 'Roque  Alexander', '0000-00-00', 49, 1, 1, 4, '35 Campanilla', '20628368', 'Green', '', ''),
(699, '60005428', 'ADI5006', 'White Pearl', 'Toyota', 'Fortuner', 'Roque  Alexander', '0000-00-00', 49, 1, 1, 4, '35 Campanilla', '20365348', 'Green', '', ''),
(700, '60005428', 'UOG912', 'Silver', 'Mitsubishi', 'Strada', 'Roque  Alexander', '0000-00-00', 49, 1, 1, 4, '35 Campanilla', '20439131', 'Green', '', ''),
(701, '60005428', 'ZRZ640', 'Gray', 'Honda', 'Civic', 'Roque  Alexander', '0000-00-00', 49, 1, 1, 4, '35 Campanilla', '20300099', '', '', ''),
(702, '60005428', 'BDF941', 'Green', 'Toyota', 'MR2', 'Roque  Alexander', '0000-00-00', 49, 1, 1, 4, '35 Campanilla', '20210880', 'Green', '', ''),
(703, '60005260', 'DAM5091', 'Black', 'Toyota', 'Hi-Ace', 'Ordoveza  Carmen / Fernando ', '0000-00-00', 49, 1, 1, 4, '67 Durian', '20628363', 'Green', '', ''),
(704, '60005260', 'TOR434', 'Black', 'Mitsubishi', 'Strada', 'Ordoveza  Carmen / Fernando ', '0000-00-00', 49, 1, 1, 4, '67 Durian', '20504176', 'Green', '', ''),
(705, '60005260', '', 'Red', 'Yamaha', 'Fino', 'Ordoveza  Carmen / Fernando ', '0000-00-00', 49, 1, 1, 4, '67 Durian', 'x', 'Green', '', ''),
(706, '60005205', 'NEU8585', 'Red', 'Isuzu', 'Mux', 'Rostoll  Rafael', '0000-00-00', 49, 1, 1, 4, '40 Durian', '20439130', 'Green', '', ''),
(707, '60005260', 'MEO128', 'Soul Red', 'Mazda', '6', 'Ordoveza  Carmen / Fernando ', '0000-00-00', 49, 1, 1, 4, '67 Durian', '20503852', 'Green', '', ''),
(708, '60007746', 'NCW4780', 'Silver', 'Mitsubishi', 'Montero', 'Rull-Svenningsen', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20758735', '', '', ''),
(709, '60016254', 'NCT7885', 'Silver', 'Mazda', 'CX5', 'Salita  Angel Jr. / Suzie May', '0000-00-00', 49, 1, 1, 4, 'P8 B7 L8', '20524166', 'Green', '', ''),
(710, '60005260', 'ZSP540', 'Gray', 'Toyota', 'Fortuner', 'Ordoveza  Carmen / Fernando ', '0000-00-00', 49, 1, 1, 4, '67 Durian', '20503851', 'Green', '', ''),
(711, '60005260', 'CAF6467', 'White', 'Honda', 'CRV', 'Ordoveza  Carmen / Fernando ', '0000-00-00', 49, 1, 1, 4, '67 Durian', '20504070', 'Green', '', ''),
(712, '60005396', '', 'Red', 'Mitsubishi', 'Lancer', 'Samson  Philip', '0000-00-00', 49, 1, 1, 4, '36 Agoho', 'NEW', 'Green', '', ''),
(713, '60004945', 'DAF1633', 'Silver', 'Mitsubishi', 'Montero', 'Carreon  Jose / Eva Emilia ', '0000-00-00', 49, 1, 1, 4, '22 Aratiles', '20503902', 'Green', '', ''),
(714, '60005260', '', 'Black', 'Honda', 'Odyssey', 'Ordoveza  Carmen / Fernando ', '0000-00-00', 49, 1, 1, 4, '67 Durian', 'x', 'Green', '', ''),
(715, '60005396', 'AOA5532', 'Silver', 'Toyota', 'Innova', 'Samson  Philip', '0000-00-00', 49, 1, 1, 4, '36 Agoho', '20264874', 'Blue', '', ''),
(716, '60004545', 'ABP5237', 'White', 'Nissan', 'Xtrail', 'Ramirez  Johna', '0000-00-00', 49, 1, 1, 4, '36 kamias', '20330695', 'Green', '', ''),
(717, '60004015', 'NDM402', 'Beige', 'VW', 'Kombi', 'Santos  Joel', '0000-00-00', 49, 1, 1, 4, '17 Lanzones', '20221170', 'Green', '', ''),
(718, '60004015', 'DBU851', 'Beige', 'VW', 'Beetle', 'Santos  Joel', '0000-00-00', 49, 1, 1, 4, '17 Lanzones', '20503746', 'Green', '', ''),
(719, '60004015', 'PIU693', 'Silver', 'Isuzu', 'Alterra', 'Santos  Joel', '0000-00-00', 49, 1, 1, 4, '17 Lanzones', '20210885', 'Green', '', ''),
(720, '60004015', 'NMW164', 'Green', 'Mini Cooper', '', 'Santos  Joel', '0000-00-00', 49, 1, 1, 4, '17 Lanzones', 'x', 'Green', '', ''),
(721, '60004015', 'NDR8315', 'Orange', 'Nissan', 'Navarra', 'Santos  Joel', '0000-00-00', 49, 1, 1, 4, '17 Lanzones', '20300060', 'Green', '', ''),
(722, '60004131', 'UIJ180', 'Champagne Gold', 'Toyota', 'Avanza', 'Boden  Genevieve Boden / Norman Warren ', '0000-00-00', 49, 1, 1, 4, '32 Kasoy', '20221684', 'Green', '', ''),
(723, '60004131', 'DAJ1453', 'White Pearl', 'Toyota', 'Innova', 'Boden  Genevieve Boden / Norman Warren ', '0000-00-00', 49, 1, 1, 4, '32 Kasoy', '20628054', 'Green', '', ''),
(724, '60004131', 'ZMU902', 'Mica Green', 'Toyota', 'Innova', 'Boden  Genevieve Boden / Norman Warren ', '0000-00-00', 49, 1, 1, 4, '32 Kasoy', '20221683', 'Green', '', ''),
(725, '60004813', 'NED9952', 'Orange', 'Mazda', 'MX5', 'Sy Qui  Evelyn / Roman', '0000-00-00', 49, 1, 1, 4, '1 Kalamansi', '20628556', 'Green', '', ''),
(726, '60004813', 'NCU6149', 'Red', 'Mazda', 'MX5', 'Sy Qui  Evelyn / Roman', '0000-00-00', 49, 1, 1, 4, '1 Kalamansi', '20628103', 'Green', '', ''),
(727, '60004813', 'NCM5853', 'Pearl White', 'Mercedez Benz', '', 'Sy Qui  Evelyn / Roman', '0000-00-00', 49, 1, 1, 4, '1 Kalamansi', '20439189', 'Green', '', ''),
(728, '60004055', 'NBS6003', 'Silver', 'Honda', 'CRV', 'Factora  Honorio / Editha ', '0000-00-00', 49, 1, 1, 4, '61 Rambutan', 'x', 'Green', '', ''),
(729, '60004463', 'NBK8350', 'Silver Gray', 'Toyota', 'Fortuner', 'Kashiwagi  Carmelina', '0000-00-00', 49, 1, 1, 4, '34 Duhat', '20504005', 'Green', '', ''),
(730, '60004377', 'NCO1385', 'Sonic Titanium', 'Lexus', 'RX350', 'Singian  Jonnahs', '0000-00-00', 49, 1, 1, 4, '4 Rambutan', '20439058', 'Green', '', ''),
(731, '60004377', 'TCQ244', 'Silver', 'BMW', '318i', 'Singian  Jonnahs', '0000-00-00', 49, 1, 1, 4, '4 Rambutan', '20216433', 'Green', '', ''),
(732, '60004377', 'ZAF161', 'Blue', 'BMW', '520i', 'Singian  Jonnahs', '0000-00-00', 49, 1, 1, 4, '4 Rambutan', '20628023', 'Green', '', ''),
(733, '60004463', 'ZMC536', 'Black', 'Toyota', 'Fortuner', 'Kashiwagi  Carmelina', '0000-00-00', 49, 1, 1, 4, '34 Duhat', '20207301', 'Green', '', ''),
(734, '60005002', 'DAD4743', 'Silver', 'Isuzu', 'Mux', 'Yu  Ma. Cristina Leon / Tristan', '0000-00-00', 49, 1, 1, 4, '30 Dalanghita', '20628512', 'Green', '', ''),
(735, '60005002', 'VB 5545', 'Blue Gray', 'Toyota', 'Altis', 'Yu  Ma. Cristina Leon / Tristan', '0000-00-00', 49, 1, 1, 4, '30 Dalanghita', '20628511', 'Green', '', ''),
(736, '60005002', 'ABP4002', 'Gray', 'Nissan', 'Almera', 'Yu  Ma. Cristina Leon / Tristan', '0000-00-00', 49, 1, 1, 4, '30 Dalanghita', '20628582', 'Green', '', ''),
(737, '60005002', 'AAA6915', 'Black', 'Toyota', 'Fortuner', 'Yu  Ma. Cristina Leon / Tristan', '0000-00-00', 49, 1, 1, 4, '30 Dalanghita', '20628598', 'Green', '', ''),
(738, '60004905', 'ABT5314', 'Dark Gray', 'Honda', 'City', 'Manalo  Vicente Manalo Jr / Arlene', '0000-00-00', 49, 1, 1, 4, '37 Dalanghita', '20628255', 'Green', '', ''),
(739, '60004951', 'TOL398', 'Blue', 'Chevy', 'Cruze', 'Sotto  Rodrigo', '0000-00-00', 49, 1, 1, 4, '9 Aratiles', '20221315', 'Green', '', ''),
(740, '60004905', 'PA9372', 'White', 'BMW', '318', 'Manalo  Vicente Manalo Jr / Arlene', '0000-00-00', 49, 1, 1, 4, '37 Dalanghita', '20439064', 'Green', '', ''),
(741, '60004905', 'UKI816', 'Yellow', 'Subaru', 'Outback', 'Manalo  Vicente Manalo Jr / Arlene', '0000-00-00', 49, 1, 1, 4, '37 Dalanghita', '20330817', 'Green', '', ''),
(742, '60004905', 'TZO460', 'Black', 'Mitsubishi', 'Montero', 'Manalo  Vicente Manalo Jr / Arlene', '0000-00-00', 49, 1, 1, 4, '37 Dalanghita', '20214125', 'Green', '', ''),
(743, '60005288', 'AQA2358', 'Brown', 'Honda', 'CRV', 'Whyte  Susan', '0000-00-00', 49, 1, 1, 4, '3 Chesa', '20210900', 'Green', '', ''),
(744, '60005288', 'DAH3046', 'Silver', 'Isuzu', 'Mux', 'Whyte  Susan', '0000-00-00', 49, 1, 1, 4, '3 Chesa', '20503781', 'Green', '', ''),
(745, '60023083', 'P4G263', 'White', 'Toyota', 'Grandia', 'Limcuando  Emiliano De Leon ', '0000-00-00', 49, 1, 1, 4, '8 Sarikaya', '20628595', 'Green', '', ''),
(746, '60004813', 'NCM1523', 'Red', 'Mazda', 'CX5', 'Sy Qui  Evelyn / Roman', '0000-00-00', 49, 1, 1, 4, '1 Kalamansi', '20503764', 'Yellow', '', ''),
(747, '60023083', 'NA71640', 'Gray', 'Subaru', 'XT', 'Limcuando  Emiliano De Leon ', '0000-00-00', 49, 1, 1, 4, '8 Sarikaya', '20503899', 'Green', '', ''),
(748, '60022917', 'NDS4044', 'Black', 'Honda', 'CRV', 'Hertz  Anthony', '0000-00-00', 49, 1, 1, 4, '66 Granadilla', '20365261', 'Green', '', ''),
(749, '60022917', 'NAP4846', 'Silver', 'Mitsubishi', 'Xpander', 'Hertz  Anthony', '0000-00-00', 49, 1, 1, 4, '66 Granadilla', '20503947', 'Green', '', ''),
(750, '60005301', 'NBC9595', 'Silver', 'Subaru', 'WRX', 'Velasco  Paul John / Marlina ', '0000-00-00', 49, 1, 1, 4, '48 Durian', '20627997', 'Green', '648', ''),
(751, '60005301', 'CAK3798', 'White', 'Mazda', '3', 'Velasco  Paul John / Marlina ', '0000-00-00', 49, 1, 1, 4, '48 Durian', '20504143', 'Green', '647', ''),
(752, '60004076', 'WII302', 'Black', 'Toyota', 'Innova', 'Arriola  Patricia', '0000-00-00', 49, 1, 1, 4, '59 Lanzones', '20264815', 'Green', '', ''),
(753, '60004481', 'TYO381', 'Gray', 'BMW', '', 'Tanlapco  Eliezer', '0000-00-00', 49, 1, 1, 4, '6 Santol', '20439095', 'Green', '', ''),
(754, '60004481', 'UIS314', 'Black', 'BMW', '', 'Tanlapco  Eliezer', '0000-00-00', 49, 1, 1, 4, '6 Santol', '20438826', 'Green', '', ''),
(755, '60004481', 'AAJ9189', 'White', 'VW', '', 'Tanlapco  Eliezer', '0000-00-00', 49, 1, 1, 4, '6 Santol', 'x', 'Green', '', ''),
(756, '60005307', 'ARA1197', 'Silver', 'VW', 'Touran', 'Tapales  Angela', '0000-00-00', 49, 1, 1, 4, '9 Chesa', '20221873', 'Green', '446', ''),
(757, '60005307', 'AAX8924', 'Brown Metallic', 'VW', 'Tiguan', 'Tapales  Angela', '0000-00-00', 49, 1, 1, 4, '9 Chesa', '20221733', 'Green', '447', ''),
(758, '60004496', 'ABQ6884', 'White', 'Suzuki', 'Celerio', 'Malixi  Louie / Gladys', '0000-00-00', 49, 1, 1, 4, '49 Kamias', '20627984', 'Green', '', ''),
(759, '60004496', 'XSD176', 'Blue', 'Toyota', 'Altis', 'Malixi  Louie / Gladys', '0000-00-00', 49, 1, 1, 4, '49 Kamias', '20628021', 'Green', '', ''),
(760, '60004496', 'NDL5058', 'Silver', 'Toyota', 'Prado', 'Malixi  Louie / Gladys', '0000-00-00', 49, 1, 1, 4, '49 Kamias', '20628105', 'Green', '', ''),
(761, '60004055', 'WEQ818', 'Titanium', 'Honda', 'City', 'Factora  Honorio / Editha ', '0000-00-00', 49, 1, 1, 4, '61 Rambutan', '20628537', 'Green', '', ''),
(762, '60004055', 'NAF1196', 'Gray', 'Isuzu', 'Mux', 'Factora  Honorio / Editha ', '0000-00-00', 49, 1, 1, 4, '61 Rambutan', '20439266', 'Green', '', ''),
(763, '60004064', 'NBG9902', 'Black', 'Honda', 'CRV', 'Atienza  Alan / Olivia Maila ', '0000-00-00', 49, 1, 1, 4, '83 Kamachile', '20628164', 'Green', '', ''),
(764, '60004064', 'NAC4254', 'Black', 'Toyota', 'Fortuner', 'Atienza  Alan / Olivia Maila ', '0000-00-00', 49, 1, 1, 4, '83 Kamachile', '20438896', 'Green', '', ''),
(765, '60004434', 'P7G717', 'Black', 'Toyota', 'Hi-Ace', 'Berba  Gilbert', '0000-00-00', 49, 1, 1, 4, '11 Duhat', '20628765', 'Green', '', ''),
(766, '60004434', 'UQP481', 'Red', 'Mini Cooper', 'Clubman', 'Berba  Gilbert', '0000-00-00', 49, 1, 1, 4, '11 Duhat', '20438858', 'Green', '', ''),
(767, '60005709', 'WEQ585', 'Orange', 'Ford', 'Fiesta', 'Laman  Guillermo', '0000-00-00', 49, 1, 1, 4, '50 Kamaris', '20438818', 'Yellow', '', ''),
(768, '60005709', 'ABT5076', 'White', 'Ford', 'Explorer', 'Laman  Guillermo', '0000-00-00', 49, 1, 1, 4, '50 Kamaris', '20365530', 'Green', '', ''),
(769, '60005033', 'NAC6339', '', 'Ford', 'Escape', 'Lasaten  Contancio Jesus Jr / Ma. Emily', '0000-00-00', 49, 1, 1, 4, '43 Aratiles', '20214129', 'Green', '', ''),
(770, '60004966', 'NDI4678', 'Red', 'Honda', 'CRV', 'Valenzuela  Ariel Vit / Ilenabel ', '0000-00-00', 49, 1, 1, 4, '26 Dalanghita', '20628411', 'Green', '', ''),
(771, '60004966', 'ADA3500', 'White', 'Honda', 'City', 'Valenzuela  Ariel Vit / Ilenabel ', '0000-00-00', 49, 1, 1, 4, '26 Dalanghita', '20221643', 'Green', '', ''),
(772, '60004966', 'TNO324', 'Blue', 'Hyundai', 'Starex', 'Valenzuela  Ariel Vit / Ilenabel ', '0000-00-00', 49, 1, 1, 4, '26 Dalanghita', '20216396', 'Green', '', ''),
(773, '3000010858', 'CAK3874', 'Wine Red', 'Mitsubishi', 'Mirage', 'Cantero  Juan Miguel', '0000-00-00', 49, 1, 1, 4, '85 Kamagong', '20628459', 'Green', '', ''),
(774, '60005132', '', '', 'Mitsubishi', 'Pajero', 'Magpantay  Raulito ', '0000-00-00', 49, 1, 1, 4, '222 Sampaloc Drive', '20221173', 'Green', '', ''),
(775, '60004919', 'UQM893', 'Black', 'Kia', 'Sportage', 'Ramos  Erwin / Melissa', '0000-00-00', 49, 1, 1, 4, '11 Marang', 'x', 'Green', '', ''),
(776, '3000010858', 'UCQ188', 'White', 'Mitsubishi', 'Lancer', 'Cantero  Juan Miguel', '0000-00-00', 49, 1, 1, 4, '85 Kamagong', '20400011', 'Green', '', ''),
(777, '60005709', 'DCP9310', 'Gray', 'Mazda', 'CX5', 'Laman  Guillermo', '0000-00-00', 49, 1, 1, 4, '50 Kamaris', '20438840', 'Green', '', ''),
(778, '60023050', 'NDI8400', 'Gray', 'Toyota', 'Fortuner', 'Villalon  Gregory', '0000-00-00', 49, 1, 1, 4, '19 Parola', '20524164', 'Green', '', ''),
(779, '60005226', 'JDA01', 'Silver', 'Mitsubishi', 'Montero', 'Villanueva  Rodiever / Marjorie', '0000-00-00', 49, 1, 1, 4, '56 Durian', '20210901', 'Green', '', ''),
(780, '60005226', 'UMI748', 'White', 'Hyundai', 'Starex', 'Villanueva  Rodiever / Marjorie', '0000-00-00', 49, 1, 1, 4, '56 Durian', 'x', 'Green', '', ''),
(781, '60005489', 'PBI768', 'Black', 'Ford', 'Focus', 'Pabst  Estrelita Nasner ', '0000-00-00', 49, 1, 1, 4, '1 Molave', '20217694', 'Green', '', ''),
(782, '60005489', 'AAA3915', 'White', 'Toyota', 'Fortuner', 'Pabst  Estrelita Nasner ', '0000-00-00', 49, 1, 1, 4, '1 Molave', '20217692', 'Green', '', ''),
(783, '60005489', 'NCQ3069', 'Blue', 'VW', 'Golf GTS', 'Pabst  Estrelita Nasner ', '0000-00-00', 49, 1, 1, 4, '1 Molave', '20503802', 'Green', '', ''),
(784, '60005489', 'UQA388', 'White', 'Audi', 'A1', 'Pabst  Estrelita Nasner ', '0000-00-00', 49, 1, 1, 4, '1 Molave', '20217693', 'Green', '', ''),
(785, '3000010858', 'CAA5245', 'White', 'Mitsubishi', 'Montero', 'Cantero  Juan Miguel', '0000-00-00', 49, 1, 1, 4, '85 Kamagong', 'NEW', 'Green', '', ''),
(786, '60005200', 'YU9286', 'Silver', 'Toyota', 'Fortuner', 'Villavicencio  Benhur', '0000-00-00', 49, 1, 1, 4, '36 Durian', '20365401', 'Green', '', ''),
(787, '60016266', 'B6R511', 'White', 'Mitsubishi', 'Montero', 'Siongco  Anna Maria Azcuna ', '0000-00-00', 49, 1, 1, 4, '51 Kasaflora', '20628662', 'Green', '', ''),
(788, '60005033', 'AAJ5750', '', 'Ford', 'Ecosport', 'Lasaten  Contancio Jesus Jr / Ma. Emily', '0000-00-00', 49, 1, 1, 4, '43 Aratiles', '20214127', 'Green', '', ''),
(789, '60007727', 'WQE521', 'Silver', 'Toyota', 'Land Cruiser', 'Tavera  Marigold  / Joseph', '0000-00-00', 49, 1, 1, 4, '3 Zapote', '20503836', 'Green', '', ''),
(790, '60005108', 'XTG968', 'Black', 'Mitsubishi', 'Pajero', 'Burgos  Elmer / Stella ', '0000-00-00', 49, 1, 1, 4, '127 Lanzones', '20217480', 'Green', '', ''),
(791, '60005108', 'NLA7798', 'Silver', 'Mercedez Benz', '', 'Burgos  Elmer / Stella ', '0000-00-00', 49, 1, 1, 4, '127 Lanzones', '20628257', 'Green', '', ''),
(792, '60005108', 'NDQ542', 'Red', 'Mazda', '2', 'Burgos  Elmer / Stella ', '0000-00-00', 49, 1, 1, 4, '127 Lanzones', '20217482', 'Green', '', ''),
(793, '60022870', 'ZD8472', 'Gray', 'Porsche', 'Cayenne', 'Yeo  Edwin', '0000-00-00', 49, 1, 1, 4, '65 / 67 Granadilla', '20439225', '', '', ''),
(794, '60022870', '00K585', 'Red', 'Mazda', 'CX5', 'Yeo  Edwin', '0000-00-00', 49, 1, 1, 4, '65 / 67 Granadilla', '20758871', '', '', ''),
(795, '60022870', 'WCO756', 'White', 'Toyota', 'Land Cruiser', 'Yeo  Edwin', '0000-00-00', 49, 1, 1, 4, '65 / 67 Granadilla', '20221130', '', '', ''),
(796, '60022870', 'NBH9190', 'White', 'Subaru', 'Forester', 'Yeo  Edwin', '0000-00-00', 49, 1, 1, 4, '65 / 67 Granadilla', '20628278', '', '', ''),
(797, '60022870', '', 'White', 'Lexus', 'NX', 'Yeo  Edwin', '0000-00-00', 49, 1, 1, 4, '65 / 67 Granadilla', '20504194', '', '', ''),
(798, '60005709', 'NAA4370', 'Blue', 'Honda', 'Civic', 'Laman  Guillermo', '0000-00-00', 49, 1, 1, 4, '50 Kamaris', '20503847', 'Green', '', ''),
(799, '60005108', 'TQU404', 'White', 'Mitsubishi', 'L300', 'Burgos  Elmer / Stella ', '0000-00-00', 49, 1, 1, 4, '127 Lanzones', '20217484', 'Green', '', ''),
(800, '60005108', 'ZKS791', 'Black', 'Toyota', 'Camry', 'Burgos  Elmer / Stella ', '0000-00-00', 49, 1, 1, 4, '127 Lanzones', '20330691', 'Green', '', ''),
(801, '60005108', 'WOX188', 'White', 'Nissan', 'Urvan', 'Burgos  Elmer / Stella ', '0000-00-00', 49, 1, 1, 4, '127 Lanzones', '20221142', 'Green', '', ''),
(802, '60005108', 'TQC454', 'White', 'Ford', 'Fiesta', 'Burgos  Elmer / Stella ', '0000-00-00', 49, 1, 1, 4, '127 Lanzones', '20217481', 'Green', '', ''),
(803, '60023167', 'DAB3831', 'Pearl White', 'Isuzu', 'Mux', 'Anico  Yolanda', '0000-00-00', 49, 1, 1, 4, '45 Cacao Loop', '20439254', 'Green', '', ''),
(804, '3000010858', 'ACM2612', 'Gray', 'Mitsubishi', 'Montero', 'Cantero  Juan Miguel', '0000-00-00', 49, 1, 1, 4, '85 Kamagong', '20628231', 'Green', '', ''),
(805, '60005524', 'NCU1027', 'Silver', 'BMW', '5 Series', 'Corvera  Peter Irving  / Rumalie', '0000-00-00', 49, 1, 1, 4, '10 Belis', '20439151', 'Green', '', ''),
(806, '60004979', 'NEC8045', 'Blue', 'Mitsubishi', 'Montero', 'Yu  Alexander / Michelle ', '0000-00-00', 49, 1, 1, 4, '259 Sampaloc', 'NEW', 'Yellow', '', ''),
(807, '60004979', 'DAN7867', 'White', 'Ford', 'Everest', 'Yu  Alexander / Michelle ', '0000-00-00', 49, 1, 1, 4, '259 Sampaloc', '20628551', 'Green', '', ''),
(808, '60004979', 'DAC6283', 'White', 'Toyota', 'Rav4', 'Yu  Alexander / Michelle ', '0000-00-00', 49, 1, 1, 4, '259 Sampaloc', '20504093', 'Green', '', ''),
(809, '60004979', 'UIV385', 'Beige', 'Toyota', 'Innova', 'Yu  Alexander / Michelle ', '0000-00-00', 49, 1, 1, 4, '259 Sampaloc', '20439173', 'Green', '', ''),
(810, '60004979', 'AAY3605', 'Blue', 'Toyota', 'Altis', 'Yu  Alexander / Michelle ', '0000-00-00', 49, 1, 1, 4, '259 Sampaloc', 'x', 'Green', '', ''),
(811, '60005524', 'FJF375', 'Black', 'Toyota', 'Alphard', 'Corvera  Peter Irving  / Rumalie', '0000-00-00', 49, 1, 1, 4, '10 Belis', '20221326', 'Green', '', ''),
(812, '60005524', 'NBJ5177', 'White', 'Toyota', 'Grandia', 'Corvera  Peter Irving  / Rumalie', '0000-00-00', 49, 1, 1, 4, '10 Belis', '20503792', 'Green', '', ''),
(813, '60005524', 'NCZ6877', 'White', 'Toyota', 'Land Cruiser', 'Corvera  Peter Irving  / Rumalie', '0000-00-00', 49, 1, 1, 4, '10 Belis', '20365513', 'Green', '', ''),
(814, '60005524', 'CIY311', 'Blue', 'Ford', 'Raptor', 'Corvera  Peter Irving  / Rumalie', '0000-00-00', 49, 1, 1, 4, '10 Belis', 'x', 'Green', '', ''),
(815, '60005524', 'NCQ2108', 'Gray', 'Toyota', 'Fortuner', 'Corvera  Peter Irving  / Rumalie', '0000-00-00', 49, 1, 1, 4, '10 Belis', '20627998', 'Green', '', ''),
(816, '60005132', 'B6W209', '', 'Mitsubishi', 'Montero', 'Magpantay  Raulito ', '0000-00-00', 49, 1, 1, 4, '222 Sampaloc Drive', '20628760', 'Green', '', ''),
(817, '60005401', 'IO2090', 'Gray', 'Ford', 'Everest', 'De Villa  Michael', '0000-00-00', 49, 1, 1, 4, '29 Molave', '20438969', 'Green', '', ''),
(818, '60004720', 'NAG5411', 'White', 'Toyota', 'Super Grandia', 'Zarraga  Digna / Catalina ', '0000-00-00', 49, 1, 1, 4, '134 Sampaloc', '20438994', 'Green', '', ''),
(819, '60004720', 'ABH2756', 'Silver', 'Hyundai', 'Tucson', 'Zarraga  Digna / Catalina ', '0000-00-00', 49, 1, 1, 4, '134 Sampaloc', '20330808', 'Green', '', ''),
(820, '60004646', 'AHA1666', 'Black', 'Toyota', 'Fortuner', 'Morado  Arturo Jr.', '0000-00-00', 49, 1, 1, 4, '184 Sampaloc', '20300005', 'Green', '', ''),
(821, '60004646', 'PGI174', 'Black', 'Toyota', 'Prado', 'Morado  Arturo Jr.', '0000-00-00', 49, 1, 1, 4, '184 Sampaloc', '20217628', 'Yellow', '', ''),
(822, '60004646', 'ZNE691', 'Black', 'Toyota', 'Camry', 'Morado  Arturo Jr.', '0000-00-00', 49, 1, 1, 4, '184 Sampaloc', '20221416', 'Yellow', '', ''),
(823, '60004646', 'XRD676', 'Black', 'Toyota', 'Camry', 'Morado  Arturo Jr.', '0000-00-00', 49, 1, 1, 4, '184 Sampaloc', '20217629', '', '', ''),
(824, '60004646', 'UKW350', 'Blue', 'Toyota', 'Hi-Ace', 'Morado  Arturo Jr.', '0000-00-00', 49, 1, 1, 4, '184 Sampaloc', '20217630', 'Green', '', ''),
(825, '60004646', 'TPM701', 'Blue', 'Toyota', 'Corolla', 'Morado  Arturo Jr.', '0000-00-00', 49, 1, 1, 4, '184 Sampaloc', '20217631', 'Green', '', ''),
(826, '60023015', 'VB7815', 'Yellow', 'Toyota', 'FJ Cruiser', 'Lopez  Mark Allen / Elaine Gayle ', '0000-00-00', 49, 1, 1, 4, '25 Manzanitas', '20365384', '', '', ''),
(827, '60023015', 'NDK9771', 'Silver', 'Subaru', 'Forester', 'Lopez  Mark Allen / Elaine Gayle ', '0000-00-00', 49, 1, 1, 4, '25 Manzanitas', '20628422', '', '', ''),
(828, '60023015', 'NIM126', 'White', 'Subaru', 'Forester', 'Lopez  Mark Allen / Elaine Gayle ', '0000-00-00', 49, 1, 1, 4, '25 Manzanitas', '20217705', '', '', ''),
(829, '60023015', 'UOP876', 'Brown', 'Chevy', 'Trailblazer', 'Lopez  Mark Allen / Elaine Gayle ', '0000-00-00', 49, 1, 1, 4, '25 Manzanitas', '20217703', '', '', ''),
(830, '60023015', 'POW813', 'Orange', 'Ford', 'Fiesta', 'Lopez  Mark Allen / Elaine Gayle ', '0000-00-00', 49, 1, 1, 4, '25 Manzanitas', '20217706', '', '', ''),
(831, '60004595', 'WIG793', 'Silver', 'BMW', '5200', 'Gonzalez  Alessandra ', '0000-00-00', 49, 1, 1, 4, '23 Sineguelas', '20628735', 'Green', '', ''),
(832, '60004595', 'VT1939', 'White', 'Peugeot', '3008', 'Gonzalez  Alessandra ', '0000-00-00', 49, 1, 1, 4, '23 Sineguelas', '20504169', 'Green', '', ''),
(833, '60004595', 'WOJ015', 'Black', 'MG', 'ZS', 'Gonzalez  Alessandra ', '0000-00-00', 49, 1, 1, 4, '23 Sineguelas', '20758833', 'Green', '', ''),
(834, '60004595', 'NAP8535', 'Gray', 'Toyota', 'Hilux', 'Gonzalez  Alessandra ', '0000-00-00', 49, 1, 1, 4, '23 Sineguelas', 'NEW', 'Green', '', ''),
(835, '60005274', 'IAA1166', 'Silver', 'Toyota', 'Land Cruiser', 'Mendoza  Jose Anthony / Emely ', '0000-00-00', 49, 1, 1, 4, '35 Lakatan', '20503861', 'Green', '', ''),
(836, '60005274', 'UHO728', 'Gray', 'Lexus', 'RX', 'Mendoza  Jose Anthony / Emely ', '0000-00-00', 49, 1, 1, 4, '35 Lakatan', '20210903', 'Green', '', ''),
(837, '60005274', 'VCP818', 'Blue', 'Land Rover', 'Defender', 'Mendoza  Jose Anthony / Emely ', '0000-00-00', 49, 1, 1, 4, '35 Lakatan', '20217591', 'Green', '', ''),
(838, '60005274', 'NDV1032', 'White', 'Toyota', 'Hilux', 'Mendoza  Jose Anthony / Emely ', '0000-00-00', 49, 1, 1, 4, '35 Lakatan', '20365445', 'Green', '', ''),
(839, '60004338', 'AAP6309', 'White', 'Hyundai', 'Starex', 'Dimaranan  Adrian / Ma. Lourdes ', '0000-00-00', 49, 1, 1, 4, '10 Sampaloc', '20300051', 'Green', '', ''),
(840, '60004338', 'NAR2398', 'Black', 'Nissan', 'Juke', 'Dimaranan  Adrian / Ma. Lourdes ', '0000-00-00', 49, 1, 1, 4, '10 Sampaloc', '20439053', 'Green', '', ''),
(841, '60004338', 'NCG4342', 'Blue', 'Toyota', 'FJ Cruiser', 'Dimaranan  Adrian / Ma. Lourdes ', '0000-00-00', 49, 1, 1, 4, '10 Sampaloc', '20365493', 'Yellow', '', ''),
(842, '60004922', 'VT1699', 'Silver', 'Peugeot', '', 'Santos  Ramon / Criselda ', '0000-00-00', 49, 1, 1, 4, '232 Marang', '20628350', '', '', ''),
(843, '60004922', 'NDV7936', 'Black Mica', 'Ford', 'Everest', 'Santos  Ramon / Criselda ', '0000-00-00', 49, 1, 1, 4, '232 Marang', '20365340', '', '', ''),
(844, '60005408', 'NAJ9929', 'White', 'Honda', 'CRV', 'Imperial  Pamela', '0000-00-00', 49, 1, 1, 4, '20 Kamagong', '20504078', 'Green', '', ''),
(845, '60005408', 'IL3529', 'White', 'Ford', 'Ranger', 'Imperial  Pamela', '0000-00-00', 49, 1, 1, 4, '20 Kamagong', '20365393', 'Green', '', ''),
(846, '60005408', 'UOA819', 'Blue', 'Ford', 'Focus', 'Imperial  Pamela', '0000-00-00', 49, 1, 1, 4, '20 Kamagong', '20365408', 'Yellow', '', ''),
(847, '60005408', 'UOZ342', 'Blue', 'Subaru', 'XV', 'Imperial  Pamela', '0000-00-00', 49, 1, 1, 4, '20 Kamagong', '20365409', 'Yellow', '', ''),
(848, '60004447', 'AAJ3832', 'Lithium', 'Toyota', 'Fortuner', 'Fenix  Frederick', '0000-00-00', 49, 1, 1, 4, '20 Duhat Loop', '20300101', 'Green', '', ''),
(849, '60004447', 'DAZ8086', 'Metallic Gray', 'Toyota', 'Altis', 'Fenix  Frederick', '0000-00-00', 49, 1, 1, 4, '20 Duhat Loop', '20758834', 'Green', '', ''),
(850, '60004447', 'WTD409', 'Dark Blue', 'Toyota', 'Altis', 'Fenix  Frederick', '0000-00-00', 49, 1, 1, 4, '20 Duhat Loop', '20216609', 'Green', '', ''),
(851, '60004447', 'POT587', 'Gray', 'Toyota', 'Fortuner', 'Fenix  Frederick', '0000-00-00', 49, 1, 1, 4, '20 Duhat Loop', '20216613', 'Yellow', '', ''),
(852, '60004447', 'ZOE843', 'Navy Blue', 'Toyota', 'Rav4', 'Fenix  Frederick', '0000-00-00', 49, 1, 1, 4, '20 Duhat Loop', '20216610', 'Yellow', '', ''),
(853, '60007997', 'DAN4704', 'Silver', 'Ford', 'Ranger', 'Yuson  Maria Cristina', '0000-00-00', 49, 1, 1, 4, '', '20628529', 'Green', '', ''),
(854, '60007997', 'IM2505', 'Gray', 'Ford', 'Everest', 'Yuson  Maria Cristina', '0000-00-00', 49, 1, 1, 4, '', '20628432', 'Green', '', ''),
(855, '60007997', 'UIH834', 'Dark Green', 'Hyundai', 'Starex', 'Yuson  Maria Cristina', '0000-00-00', 49, 1, 1, 4, '', '20628002', 'Green', '', ''),
(856, '60007997', 'UME106', 'Green', 'Mitsubishi', 'Lancer', 'Yuson  Maria Cristina', '0000-00-00', 49, 1, 1, 4, '', 'none', 'Yellow', '', ''),
(857, '60005177', 'WOW806', 'Blue', 'VW', 'Touran', 'Pauline Palma / Thomas Schmidth', '0000-00-00', 49, 1, 1, 4, '98 Aratiles', '20330827', 'Green', '', ''),
(858, '60005177', 'RJ2129', 'White', 'Mazda', '3', 'Pauline Palma / Thomas Schmidth', '0000-00-00', 49, 1, 1, 4, '98 Aratiles', '20628653', 'Green', '', ''),
(859, '60005177', 'NDA9388', 'Black', 'Vw', 'Golf', 'Pauline Palma / Thomas Schmidth', '0000-00-00', 49, 1, 1, 4, '98 Aratiles', '20628223', 'Green', '', ''),
(860, '60022759', 'AAP2522', 'White', 'Hyundai', 'Sta. Fe', 'Desamero  William', '0000-00-00', 49, 1, 1, 4, '39 Lakatan', '20217679', 'Green', '', ''),
(861, '60022759', 'WDI609', 'Silver', 'Hyundai', 'Accent', 'Desamero  William', '0000-00-00', 49, 1, 1, 4, '39 Lakatan', 'x', 'Green', '', ''),
(862, '60022759', 'PQT439', 'Thermalyte', 'Toyota', 'Corolla Altis', 'Desamero  William', '0000-00-00', 49, 1, 1, 4, '39 Lakatan', '20439206', 'Green', '', ''),
(863, '60023213', 'NBK9577', 'Gray', 'Mitsubishi', 'Montero', 'Ledesma  Benjamin', '0000-00-00', 49, 1, 1, 4, '3 Pangdan', '20503795', 'Green', '', ''),
(864, '60023213', 'ABG9145', 'Silver', 'Subaru', 'WRX', 'Ledesma  Benjamin', '0000-00-00', 49, 1, 1, 4, '3 Pangdan', '20330620', 'Green', '', ''),
(865, '60004671', 'NQS657', 'Black', 'Mercedez Benz', '', 'Maranan  Edgar / Maria Sharon ', '0000-00-00', 49, 1, 1, 4, '12 Sineguelas', '20504144', '', '', ''),
(866, '60004671', 'NCF7461', 'White', 'Ford', 'Explorer', 'Maranan  Edgar / Maria Sharon ', '0000-00-00', 49, 1, 1, 4, '12 Sineguelas', '20438853', '', '', ''),
(867, '60004671', 'XTM235', 'Black', 'Ford', 'Explorer', 'Maranan  Edgar / Maria Sharon ', '0000-00-00', 49, 1, 1, 4, '12 Sineguelas', '20628208', '', '', ''),
(868, '60005317', 'TQV944', 'Black', 'Honda', 'Civic', 'Fernandez  Pedro', '0000-00-00', 49, 1, 1, 4, '51 Durian', '20221277', 'Green', '', ''),
(869, '60005317', 'XPZ960', 'Silver', 'Honda', 'Accord', 'Fernandez  Pedro', '0000-00-00', 49, 1, 1, 4, '51 Durian', '20221300', 'Green', '', ''),
(870, '60005399', 'UOF871', 'Black', 'Hyundai', 'Sta. Fe', 'Santos  Rommel / Leonora ', '0000-00-00', 49, 1, 1, 4, '33 Molave', '20365330', '', '', ''),
(871, '60005399', 'NQB586', 'White', 'Mazda', 'CX7', 'Santos  Rommel / Leonora ', '0000-00-00', 49, 1, 1, 4, '33 Molave', '20504013', '', '', ''),
(872, '60005399', 'PBQ572', 'White', 'Mazda', '', 'Santos  Rommel / Leonora ', '0000-00-00', 49, 1, 1, 4, '33 Molave', '20628474', '', '', ''),
(873, '60005399', 'NBU1133', 'Silver', 'Mercedez Benz', '', 'Santos  Rommel / Leonora ', '0000-00-00', 49, 1, 1, 4, '33 Molave', '20438885', '', '', ''),
(874, '60003939', 'NAG3096', 'Silver', 'Ford', 'Everest', 'Enriquez  Kristoffer Cris / Wendy Anne Marie ', '0000-00-00', 49, 1, 1, 4, 'P1 B1 L60', '20628299', '', '', ''),
(875, '60003939', 'TOM687', 'Silver', 'Toyota', 'Altis', 'Enriquez  Kristoffer Cris / Wendy Anne Marie ', '0000-00-00', 49, 1, 1, 4, 'P1 B1 L60', 'x', '', '', ''),
(876, '60004370', 'TIW302', 'Lithium', 'Toyota', 'Fortuner', 'Sutcliffe  Leni', '0000-00-00', 49, 1, 1, 4, '31 Kamachile', '20214120', '', '', ''),
(877, '60004370', 'NFZ6915', 'Silver', 'Isuzu', 'Mux', 'Sutcliffe  Leni', '0000-00-00', 49, 1, 1, 4, '31 Kamachile', '20628611', '', '', ''),
(878, '60005474', 'NDR2086', 'Gray', 'Ford', 'Ranger', 'Lazaro  Charles / Lenilyn', '0000-00-00', 49, 1, 1, 4, '16 Sipres', '20365277', '', '', ''),
(879, '60005474', 'UIY620', 'Silver', 'BMW', '328i', 'Lazaro  Charles / Lenilyn', '0000-00-00', 49, 1, 1, 4, '16 Sipres', '20216406', '', '', ''),
(880, '60005474', 'E6Y88', 'Silver', 'Mercedez Benz', 'CLC180', 'Lazaro  Charles / Lenilyn', '0000-00-00', 49, 1, 1, 4, '16 Sipres', 'x', '', '', ''),
(881, '60005474', 'PTQ441', 'Brown', 'Mitsubishi', 'Montero', 'Lazaro  Charles / Lenilyn', '0000-00-00', 49, 1, 1, 4, '16 Sipres', '20216407', '', '', ''),
(882, '60005474', 'JUL664', 'White', 'Mitsubishi', 'Pajero', 'Lazaro  Charles / Lenilyn', '0000-00-00', 49, 1, 1, 4, '16 Sipres', '20216408', '', '', ''),
(883, '60005474', 'NDN5666', 'Yellow', 'Toyota', 'Hi-Ace', 'Lazaro  Charles / Lenilyn', '0000-00-00', 49, 1, 1, 4, '16 Sipres', '20438935', '', '', ''),
(884, '60004216', 'DDZ9735', 'Brown', 'Toyota', 'Land Cruiser', 'Dimayuga  Jose Alberto / Ma.Isabel', '0000-00-00', 49, 1, 1, 4, '62 Pili', '20438829', '', '', ''),
(885, '60004216', 'VV5127', 'Beige', 'Toyota', 'Fortuner', 'Dimayuga  Jose Alberto / Ma.Isabel', '0000-00-00', 49, 1, 1, 4, '62 Pili', '20439089', '', '', ''),
(886, '60004216', 'P5JD24', 'White', 'Toyota', 'Rav4', 'Dimayuga  Jose Alberto / Ma.Isabel', '0000-00-00', 49, 1, 1, 4, '62 Pili', 'x', '', '', ''),
(887, '60004216', 'TFU285', 'White', 'Toyota', 'Land Cruiser', 'Dimayuga  Jose Alberto / Ma.Isabel', '0000-00-00', 49, 1, 1, 4, '62 Pili', '20628613', '', '', ''),
(888, '60004607', 'XFE874', 'White', 'Mitsubishi', 'Pajero', 'Canlas  Eduardo / Maria Ana Alicia Adelina', '0000-00-00', 49, 1, 1, 4, '42 Sineguelas', '20221292', '', '', ''),
(889, '60004607', 'TMI657', 'Gray', 'Hyundai', 'Starex', 'Canlas  Eduardo / Maria Ana Alicia Adelina', '0000-00-00', 49, 1, 1, 4, '42 Sineguelas', '20221289', '', '', ''),
(890, '60004607', 'DDL5965', 'White', 'Mitsubishi', 'Pajero', 'Canlas  Eduardo / Maria Ana Alicia Adelina', '0000-00-00', 49, 1, 1, 4, '42 Sineguelas', '20300009', '', '', ''),
(891, '60004607', 'NAB7948', 'Silver', 'Lexus', 'NX 200T2', 'Canlas  Eduardo / Maria Ana Alicia Adelina', '0000-00-00', 49, 1, 1, 4, '42 Sineguelas', '20300007', '', '', ''),
(892, '60004607', 'GS4039', 'Gray', 'Mercedez Benz', 'C180', 'Canlas  Eduardo / Maria Ana Alicia Adelina', '0000-00-00', 49, 1, 1, 4, '42 Sineguelas', '20504032', '', '', ''),
(893, '60004607', 'NBY4344', 'Silver', 'Toyota', 'Innova', 'Canlas  Eduardo / Maria Ana Alicia Adelina', '0000-00-00', 49, 1, 1, 4, '42 Sineguelas', '20439112', '', '', ''),
(894, '60005346', 'DAM4169', 'Gray', 'Ford', 'Ranger', 'Pocais  William Abenes Jr / Leonor Pascual', '0000-00-00', 49, 1, 1, 4, '35 Molave', '20628380', '', '', ''),
(895, '60005346', 'DAI1114', 'Black', 'Ford', 'Ecosport', 'Pocais  William Abenes Jr / Leonor Pascual', '0000-00-00', 49, 1, 1, 4, '35 Molave', '20503966', '', '', ''),
(896, '60005346', 'DAK3888', 'White', 'Toyota', 'Hi-Ace', 'Pocais  William Abenes Jr / Leonor Pascual', '0000-00-00', 49, 1, 1, 4, '35 Molave', '20628570', '', '', ''),
(897, '60004776', 'ABA9922', 'Silver', 'Volvo', 'S40', 'Evangelista  Jerry / Rose Marie', '0000-00-00', 49, 1, 1, 4, '59 Sampaloc', '20300023', 'Green', '', ''),
(898, '60004776', 'AAP3010', 'Metallic Gray', 'Hyundai', 'Starex', 'Evangelista  Jerry / Rose Marie', '0000-00-00', 49, 1, 1, 4, '59 Sampaloc', '20221813', 'Green', '', ''),
(899, '60004776', 'TCQ245', 'Metallic Brown', 'Toyota', 'Fortuner', 'Evangelista  Jerry / Rose Marie', '0000-00-00', 49, 1, 1, 4, '59 Sampaloc', '20220938', 'Green', '', ''),
(900, '60005567', 'ABH2985', 'Black', 'Hyundai', 'Starex', 'Clark  Ma. Nona Belle', '0000-00-00', 49, 1, 1, 4, '10 Basal', '20330776', '', '', ''),
(901, '60004325', 'DAF5258', 'Black', 'Toyota', 'Fortuner', 'San Agustin- Nolido  Aleli Teresa ', '0000-00-00', 49, 1, 1, 4, '20 Dalandan', '20503719', 'Green', '', ''),
(902, '60004325', 'WIQ878', 'Silver', 'Hyundai', 'Sta. Fe', 'San Agustin- Nolido  Aleli Teresa ', '0000-00-00', 49, 1, 1, 4, '20 Dalandan', '20221432', 'Green', '', ''),
(903, '60005126', 'WUI615', 'Brown', 'Audi', 'A1', 'Catibog  Kris', '0000-00-00', 49, 1, 1, 4, '7 Piko', '20438947', '', '', ''),
(904, '60005126', 'ABG5703', 'Blue', 'Mitsubishi', 'Montero', 'Catibog  Kris', '0000-00-00', 49, 1, 1, 4, '7 Piko', '20438945', '', '', ''),
(905, '60005126', 'WOW365', 'Bronze', 'Mitsubishi', 'Strada', 'Catibog  Kris', '0000-00-00', 49, 1, 1, 4, '7 Piko', '20438943', '', '', ''),
(906, '60007891', 'P4Z692', 'White', 'Toyota', 'Supra', 'Tandoc  Ramil', '0000-00-00', 49, 1, 1, 4, '18 Campanilla', 'NEW', '', '', ''),
(907, '60007891', 'NBQ1242', 'Gray', 'Mazda', 'Miata MX5', 'Tandoc  Ramil', '0000-00-00', 49, 1, 1, 4, '18 Campanilla', '20628414', '', '', ''),
(908, '60007891', 'ABP2621', 'White', 'Mazda', 'Miata MX5', 'Tandoc  Ramil', '0000-00-00', 49, 1, 1, 4, '18 Campanilla', '20628594', '', '', ''),
(909, '60007891', 'OOH529', 'Black', 'Mazda', 'CX9', 'Tandoc  Ramil', '0000-00-00', 49, 1, 1, 4, '18 Campanilla', '20628482', '', '', ''),
(910, '60007891', 'IAB6546', 'White', 'Toyota', 'Fortuner', 'Tandoc  Ramil', '0000-00-00', 49, 1, 1, 4, '18 Campanilla', '20628418', '', '', ''),
(911, '60004992', 'PIE297', 'Silver Metallic', 'Toyota', 'Corolla', 'Uy  Marietta', '0000-00-00', 49, 1, 1, 4, '11 Durian Drive', '20504049', '', '', ''),
(912, '60004992', 'MCM01', 'White Pearl', 'Toyota', 'Fortuner', 'Uy  Marietta', '0000-00-00', 49, 1, 1, 4, '11 Durian Drive', '20504048', '', '', ''),
(913, '60004992', 'NBZ7213', 'White Pearl', 'Toyota', 'Fortuner', 'Uy  Marietta', '0000-00-00', 49, 1, 1, 4, '11 Durian Drive', 'x', '', '', ''),
(914, '60004992', 'TQL200', 'Tomato Red', 'Kia', 'Soul', 'Uy  Marietta', '0000-00-00', 49, 1, 1, 4, '11 Durian Drive', '20504062', '', '', ''),
(915, '60004992', 'TIU423', 'White', 'Kia', 'Sportage', 'Uy  Marietta', '0000-00-00', 49, 1, 1, 4, '11 Durian Drive', '20628340', '', '', ''),
(916, '60004992', 'NCZ5565', 'Burgundy', 'Honda', 'Civic', 'Uy  Marietta', '0000-00-00', 49, 1, 1, 4, '11 Durian Drive', '20504047', '', '', ''),
(917, '60007978', 'AKA4177', 'Brown', 'Toyota', 'Innova', 'De Leon  Tomas Jr', '0000-00-00', 49, 1, 1, 4, '1 Tanguili', '20330737', '', '', ''),
(918, '60007978', 'A3I416', 'Gray', 'Toyota', 'Land Cruiser', 'De Leon  Tomas Jr', '0000-00-00', 49, 1, 1, 4, '1 Tanguili', '20503856', '', '', ''),
(919, '60007978', 'NBK5491', 'White', 'Subaru', '', 'De Leon  Tomas Jr', '0000-00-00', 49, 1, 1, 4, '1 Tanguili', '20503859', '', '', ''),
(920, '60004514', 'NDD4945', 'Brown', 'Toyota', 'Fortuner', 'Juinio  Ronald', '0000-00-00', 49, 1, 1, 4, 'Santol Loop', '20758745', 'Green', '', ''),
(921, '60004514', 'ALN300', 'White', 'Toyota', 'Prado', 'Juinio  Ronald', '0000-00-00', 49, 1, 1, 4, 'Santol Loop', '20758744', 'Green', '', ''),
(922, '3000010916', 'NCW4023', 'Gray Blue', 'VW', 'Jetta', 'Monjardin  Evangeline', '0000-00-00', 49, 1, 1, 4, 'P14 B14 L8', '20758742', '', '', ''),
(923, '60004452', 'NCG4178', 'White', 'Suzuki', 'Swift', 'Manalo  Leon', '0000-00-00', 49, 1, 1, 4, '20 Piña', '20758746', 'Green', '', ''),
(924, '60004452', 'DDL7949', 'White', 'Chevy', 'Trailblazer', 'Manalo  Leon', '0000-00-00', 49, 1, 1, 4, '20 Piña', '20439099', 'Green', '', ''),
(925, '60004349', 'AAA3914', 'White', 'Toyota', 'Fortuner', 'Leofando  Mona Liza', '0000-00-00', 49, 1, 1, 4, 'P1C B16 L4', '20758747', 'Green', '', ''),
(926, '60004933', 'NDC5984', 'Silver', 'BMW', 'SUV', 'Rillo  Belen', '0000-00-00', 49, 1, 1, 4, '233 Sampaloc', '20365479', 'Green', '', ''),
(927, '60005045', 'XRV617', 'Gray', 'Porsche', '', 'Cochrane  Marjorie', '0000-00-00', 49, 1, 1, 4, '2 Marang', '20439249', 'Green', '', ''),
(928, '60005045', 'JTH555', 'White', 'BMW', '', 'Cochrane  Marjorie', '0000-00-00', 49, 1, 1, 4, '2 Marang', '20438833', 'Green', '', ''),
(929, '60005045', 'ZDG207', '', 'Honda', '', 'Cochrane  Marjorie', '0000-00-00', 49, 1, 1, 4, '2 Marang', '20438831', 'Green', '', ''),
(930, '60005620', 'ZD9182', 'Blue', 'Porsche', '', 'Aquino  Simeon Emmanuel II / Jasmin Kierulf', '0000-00-00', 49, 1, 1, 4, '6 Dao', '20503843', '', '', ''),
(931, '60005620', 'AHA2618', 'Blue', 'Audi', 'Q5', 'Aquino  Simeon Emmanuel II / Jasmin Kierulf', '0000-00-00', 49, 1, 1, 4, '6 Dao', '20365275', '', '', ''),
(932, '60005620', 'WRI553', 'Red', 'Audi', 'A1', 'Aquino  Simeon Emmanuel II / Jasmin Kierulf', '0000-00-00', 49, 1, 1, 4, '6 Dao', 'x', '', '', ''),
(933, '60005620', 'NAM9310', 'Blue', 'Subaru', 'XV', 'Aquino  Simeon Emmanuel II / Jasmin Kierulf', '0000-00-00', 49, 1, 1, 4, '6 Dao', 'x', '', '', ''),
(934, '60005748', 'TPQ377', 'Gray', 'Toyota', 'Prado', 'Doctora  Gerard', '0000-00-00', 49, 1, 1, 4, '45 Kamias Loop', '20217572', '', '', ''),
(935, '60005748', 'DAI9678', 'Gray', 'Toyota', 'Altis', 'Doctora  Gerard', '0000-00-00', 49, 1, 1, 4, '45 Kamias Loop', '20628569', '', '', ''),
(936, '60005748', 'MOA205', 'Gray', 'Mercedez Benz', '', 'Doctora  Gerard', '0000-00-00', 49, 1, 1, 4, '45 Kamias Loop', '20503738', '', '', ''),
(937, '60005748', '', '', 'Toyota', '', 'Doctora  Gerard', '0000-00-00', 49, 1, 1, 4, '45 Kamias Loop', 'NEW', '', '', ''),
(938, '60005357', 'TNI282', 'White', 'Mercedez Benz', 'C200', 'Whalley  John', '0000-00-00', 49, 1, 1, 4, '9 Campanilla', '20400086', '', '', ''),
(939, '60005357', 'ZBC192', 'Blue', 'BMW', '325i', 'Whalley  John', '0000-00-00', 49, 1, 1, 4, '9 Campanilla', '20628758', '', '', ''),
(940, '60005357', 'WCJ323', 'Green', 'Toyota', 'Prado', 'Whalley  John', '0000-00-00', 49, 1, 1, 4, '9 Campanilla', '20216809', '', '', ''),
(941, '60005357', 'XTS191', 'Silver', 'Kia', 'Sorento', 'Whalley  John', '0000-00-00', 49, 1, 1, 4, '9 Campanilla', '20264856', '', '', ''),
(942, '60004622', 'NCZ5606', 'Bronze', 'Toyota', 'Fortuner', 'Hablado  Teddy', '0000-00-00', 49, 1, 1, 4, '34 & 36 Lakatan', '20439244', '', '', ''),
(943, '60004622', 'AAZ3489', 'Blue', 'Mazda', '3', 'Hablado  Teddy', '0000-00-00', 49, 1, 1, 4, '34 & 36 Lakatan', '20439267', '', '', ''),
(944, '60004622', 'ZMA269', 'Black', 'Toyota', 'Camry', 'Hablado  Teddy', '0000-00-00', 49, 1, 1, 4, '34 & 36 Lakatan', '20439265', '', '', ''),
(945, '60004622', 'TPI418', 'White', 'Hyundai', 'Starex', 'Hablado  Teddy', '0000-00-00', 49, 1, 1, 4, '34 & 36 Lakatan', '20365448', '', '', ''),
(946, '60004622', 'MOA267', 'White', 'Mercedez Benz', 'GLE', 'Hablado  Teddy', '0000-00-00', 49, 1, 1, 4, '34 & 36 Lakatan', '20503810', '', '', ''),
(947, '60005023', 'O0B801', 'Black', 'Mazda', 'CX5', 'Luna  Marilyn / Rolando', '0000-00-00', 49, 1, 1, 4, '49 Aratiles', '20503875', '', '', ''),
(948, '60005023', 'ZFZ309', 'Beige', 'Hyundai', 'Tucson', 'Luna  Marilyn / Rolando', '0000-00-00', 49, 1, 1, 4, '49 Aratiles', '20217651', '', '', ''),
(949, '60005023', 'XAK158', 'White', 'Mitsubishi', 'Adventure', 'Luna  Marilyn / Rolando', '0000-00-00', 49, 1, 1, 4, '49 Aratiles', '20217652', '', '', ''),
(950, '60005061', 'YX7570', 'Dark Gray', 'Toyota', 'Altis', 'Florendo  Jonathan', '0000-00-00', 49, 1, 1, 4, '65 Marang', '20365296', '', '', ''),
(951, '60005061', 'DAB5126', 'White', 'Toyota', 'Fortuner', 'Florendo  Jonathan', '0000-00-00', 49, 1, 1, 4, '65 Marang', '20439205', '', '', ''),
(952, '60005061', 'NDQ3828', 'Silver', 'Kia', 'Carnival', 'Florendo  Jonathan', '0000-00-00', 49, 1, 1, 4, '65 Marang', '20628379', '', '', ''),
(953, '60005760', 'ZLE735', 'Lithium', 'Toyota', 'Fortuner', 'Gonzalez  Joy', '0000-00-00', 49, 1, 1, 4, '10 Kahel', '20221037', 'Green', '', ''),
(954, '60005760', 'PWQ203', 'Silver', 'Toyota', 'Altis', 'Gonzalez  Joy', '0000-00-00', 49, 1, 1, 4, '10 Kahel', '20221036', 'Green', '', ''),
(955, '60005760', 'ABT8113', 'Dark Gray', 'Hyundai', 'Starex', 'Gonzalez  Joy', '0000-00-00', 49, 1, 1, 4, '10 Kahel', '20330598', 'Green', '', ''),
(956, '60004756', 'PEI557', 'Red', 'Ford', 'GT40', 'Lucas  Jeric', '0000-00-00', 49, 1, 1, 4, '96 Sampaloc', '20628426', '', '', ''),
(957, '60004756', 'GTR03', 'Orange', 'Porsche', 'GT3 RS', 'Lucas  Jeric', '0000-00-00', 49, 1, 1, 4, '96 Sampaloc', '20210891', '', '', ''),
(958, '60004756', 'NAP3790', 'Yellow', 'Mercedez Benz', 'G500', 'Lucas  Jeric', '0000-00-00', 49, 1, 1, 4, '96 Sampaloc', '20503912', '', '', ''),
(959, '60004756', 'ZMH808', 'Green', 'Lamborghini', '', 'Lucas  Jeric', '0000-00-00', 49, 1, 1, 4, '96 Sampaloc', '20628425', '', '', ''),
(960, '60004756', 'AFE585', 'Red', 'Mercedez Benz', 'SLS', 'Lucas  Jeric', '0000-00-00', 49, 1, 1, 4, '96 Sampaloc', '20628424', '', '', ''),
(961, '60004756', 'NCV6088', 'Yellow', 'Lexus', 'LC500', 'Lucas  Jeric', '0000-00-00', 49, 1, 1, 4, '96 Sampaloc', 'x', '', '', ''),
(962, '60004756', 'NAP8197', 'Silver', 'Toyota', 'Land Cruiser', 'Lucas  Jeric', '0000-00-00', 49, 1, 1, 4, '96 Sampaloc', '20628724', '', '', ''),
(963, '60004756', 'NAS2658', 'Gray', 'Toyota', 'Land Cruiser', 'Lucas  Jeric', '0000-00-00', 49, 1, 1, 4, '96 Sampaloc', '20216642', '', '', ''),
(964, '60004756', 'XLZ737', 'Blue', 'Hummer', 'H1', 'Lucas  Jeric', '0000-00-00', 49, 1, 1, 4, '96 Sampaloc', 'x', '', '', ''),
(965, '60004756', 'ZGE985', 'Orange', 'Hummer', 'H2', 'Lucas  Jeric', '0000-00-00', 49, 1, 1, 4, '96 Sampaloc', '20628309', '', '', '');
INSERT INTO `tbl_item` (`item_id`, `account_number`, `item_name`, `item_serno`, `item_modno`, `item_brand`, `item_amount`, `item_purdate`, `emp_id`, `cat_id`, `con_id`, `status_id`, `owner_address`, `rfid_code`, `vehicle_sticker_type`, `vehicle_sticker_number`, `vehicle_sticker_expiration`) VALUES
(966, '60004756', 'NCZ7210', 'White', 'BMW', 'S6', 'Lucas  Jeric', '0000-00-00', 49, 1, 1, 4, '96 Sampaloc', '20439168', '', '', ''),
(967, '60004756', 'NAI8131', 'Yellow', 'BMW', 'M4', 'Lucas  Jeric', '0000-00-00', 49, 1, 1, 4, '96 Sampaloc', '20439263', '', '', ''),
(968, '60004756', 'TQZ300', 'White', 'Range Rover', '', 'Lucas  Jeric', '0000-00-00', 49, 1, 1, 4, '96 Sampaloc', '20216643', '', '', ''),
(969, '60004756', 'URI753', 'Black', 'Ford', 'Shelby', 'Lucas  Jeric', '0000-00-00', 49, 1, 1, 4, '96 Sampaloc', '20216862', '', '', ''),
(970, '60004756', 'FAE9563', 'Red', 'Honda', 'CRV', 'Lucas  Jeric', '0000-00-00', 49, 1, 1, 4, '96 Sampaloc', '20628544', '', '', ''),
(971, '60004756', 'DAF1391', 'Silver', 'Ford', 'Ranger', 'Lucas  Jeric', '0000-00-00', 49, 1, 1, 4, '96 Sampaloc', '20628109', '', '', ''),
(972, '60004756', 'VEX883', 'Red', 'Mitsubishi', 'Strada', 'Lucas  Jeric', '0000-00-00', 49, 1, 1, 4, '96 Sampaloc', '20216641', '', '', ''),
(973, '60004756', 'PCI397', 'White', 'Audi', 'S8', 'Lucas  Jeric', '0000-00-00', 49, 1, 1, 4, '96 Sampaloc', 'x', '', '', ''),
(974, '60004756', 'XDB698', 'White', 'Toyota', 'Land Cruiser', 'Lucas  Jeric', '0000-00-00', 49, 1, 1, 4, '96 Sampaloc', '20216639', '', '', ''),
(975, '60004756', 'EOM237', 'Red', 'Honda', 'Type R', 'Lucas  Jeric', '0000-00-00', 49, 1, 1, 4, '96 Sampaloc', '20628068', '', '', ''),
(976, '60007760', 'AJA5006', 'Ocean Blue', 'Hyundai', 'Sta. Fe', 'Hufemia  Anna', '0000-00-00', 49, 1, 1, 4, '6 Karkalia', '20504124', '', '', ''),
(977, '60007760', 'NCJ6643', 'Silver', 'Subaru', 'XV', 'Hufemia  Anna', '0000-00-00', 49, 1, 1, 4, '6 Karkalia', '20504125', '', '', ''),
(978, '3000010871', 'DAH9241', 'Black', 'Honda', 'CRV', 'Murallon  Marlon', '0000-00-00', 49, 1, 1, 4, '90 Campanilla', '20503956', '', '', ''),
(979, '3000010871', 'P6Q493', 'Bronze', 'Toyota', 'Fortuner', 'Murallon  Marlon', '0000-00-00', 49, 1, 1, 4, '90 Campanilla', '20758861', '', '', ''),
(980, '3000010871', 'DAM7814', 'Red', 'Toyota', 'Rush', 'Murallon  Marlon', '0000-00-00', 49, 1, 1, 4, '90 Campanilla', '20628358', '', '', ''),
(981, '60004265', 'WOY984', 'Silver', 'Kia', 'Optima', 'Jacob  Anjelo', '0000-00-00', 49, 1, 1, 4, '48 Aratiles', '20503939', '', '', ''),
(982, '60004265', 'CAG2451', 'Silver', 'Toyota', 'Fortuner', 'Jacob  Anjelo', '0000-00-00', 49, 1, 1, 4, '48 Aratiles', '20365290', '', '', ''),
(983, '60007988', 'NCV5520', 'Silver', 'VW', 'Jetta', 'Nieto  Rafael', '0000-00-00', 49, 1, 1, 4, '198 Sampaloc', '20504020', 'Green', '', ''),
(984, '60007988', 'NDR9670', 'Gold', 'Toyota', 'Hi-Ace', 'Nieto  Rafael', '0000-00-00', 49, 1, 1, 4, '198 Sampaloc', '20365425', 'Green', '', ''),
(985, '60007988', 'UPD714', 'Green', 'Honda', 'Civic', 'Nieto  Rafael', '0000-00-00', 49, 1, 1, 4, '198 Sampaloc', '20217653', 'Green', '', ''),
(986, '60007988', 'ARA1047', 'White', 'Toyota', 'Hi-Ace', 'Nieto  Rafael', '0000-00-00', 49, 1, 1, 4, '198 Sampaloc', '20330793', 'Yellow', '', ''),
(987, '60007988', 'UIV202', 'Silver', 'Toyota', 'Fortuner', 'Nieto  Rafael', '0000-00-00', 49, 1, 1, 4, '198 Sampaloc', '20217655', 'Yellow', '', ''),
(988, '60004901', 'DAD8591', 'Black', 'Ford', 'Ranger', 'Cabello  Elene', '0000-00-00', 49, 1, 1, 4, '43 Marang', '20439037', '', '', ''),
(989, '60004901', 'XMJ207', 'Beige', 'Honda', 'Accord', 'Cabello  Elene', '0000-00-00', 49, 1, 1, 4, '43 Marang', '20216626', '', '', ''),
(990, '60005537', 'TCO501', 'White', 'Mazda', 'CX9', 'Llamado  Jeffrey', '0000-00-00', 49, 1, 1, 4, '14 Molave', '20216721', '', '', ''),
(991, '60005537', 'NCF9632', 'Black', 'Ford', 'Ranger', 'Llamado  Jeffrey', '0000-00-00', 49, 1, 1, 4, '14 Molave', '20439040', '', '', ''),
(992, '60005537', 'APA9400', 'Blue', 'Isuzu', 'Mux', 'Llamado  Jeffrey', '0000-00-00', 49, 1, 1, 4, '14 Molave', '20330667', '', '', ''),
(993, '60016301', 'NCZ5740', 'Dark Gray', 'VW', 'Touareg', 'Berdos  Rex Redentor', '0000-00-00', 49, 1, 1, 4, '31 Kamaris', '20400072', '', '', ''),
(994, '60016301', 'AKA3123', 'Brown', 'VW', 'Tiguan', 'Berdos  Rex Redentor', '0000-00-00', 49, 1, 1, 4, '31 Kamaris', '20265487', '', '', ''),
(995, '60016301', 'DAM1509', 'Gray', 'Ford', 'Raptor', 'Berdos  Rex Redentor', '0000-00-00', 49, 1, 1, 4, '31 Kamaris', '20628381', '', '', ''),
(996, '60016301', 'VTI809', 'White', 'Peugeot', '308', 'Berdos  Rex Redentor', '0000-00-00', 49, 1, 1, 4, '31 Kamaris', '20504129', '', '', ''),
(997, '60016301', 'AO0766', 'Dark Gray', 'Toyota', 'Avanza', 'Berdos  Rex Redentor', '0000-00-00', 49, 1, 1, 4, '31 Kamaris', '20628251', '', '', ''),
(998, '60016301', 'NCU5845', 'Dark Gray', 'Mercedez Benz', 'GLE', 'Berdos  Rex Redentor', '0000-00-00', 49, 1, 1, 4, '31 Kamaris', '20628066', '', '', ''),
(999, '60016301', 'NLO566', 'Gold', 'Hyundai', 'Starex', 'Berdos  Rex Redentor', '0000-00-00', 49, 1, 1, 4, '31 Kamaris', '20628003', '', '', ''),
(1000, '60016301', 'UBI258', 'Brown', 'Chevy', 'Colorado', 'Berdos  Rex Redentor', '0000-00-00', 49, 1, 1, 4, '31 Kamaris', '20400073', '', '', ''),
(1001, '60004392', 'OBD777', 'Silver', 'Ford', 'Ranger', 'Obed  Ronaldo / Pamela', '0000-00-00', 49, 1, 1, 4, '27 Piña', '20503901', '', '', ''),
(1002, '60004392', 'XNV698', 'Silver', 'BMW', 'X5', 'Obed  Ronaldo / Pamela', '0000-00-00', 49, 1, 1, 4, '27 Piña', '20504158', '', '', ''),
(1003, '60005041', 'NCV27777', 'White', 'Toyota', 'Hilux', 'Aranaz  Jose', '0000-00-00', 49, 1, 1, 4, '38 Marang', '20439195', '', '', ''),
(1004, '60005041', 'DAJ2049', 'Black', 'Toyota', 'Fortuner', 'Aranaz  Jose', '0000-00-00', 49, 1, 1, 4, '38 Marang', '20628327', '', '', ''),
(1005, '60005041', 'AAM4618', 'Black', 'Toyota', 'Vios', 'Aranaz  Jose', '0000-00-00', 49, 1, 1, 4, '38 Marang', '20221329', '', '', ''),
(1006, '60005041', 'NBH7360', 'Black', 'Toyota', 'Fortuner', 'Aranaz  Jose', '0000-00-00', 49, 1, 1, 4, '38 Marang', '20628053', '', '', ''),
(1007, '60005041', 'EH3543', 'White', 'Kia', 'Carnival', 'Aranaz  Jose', '0000-00-00', 49, 1, 1, 4, '38 Marang', '20503760', '', '', ''),
(1008, '60023165', 'DAF6010', 'Silver', 'Hyundai', 'Starex', 'Borja  Alfredo Jr.', '0000-00-00', 49, 1, 1, 4, '47 Cacao Loop', '20330640', '', '', ''),
(1009, '60023165', 'VEW886', 'Silver', 'Toyota', 'Vios', 'Borja  Alfredo Jr.', '0000-00-00', 49, 1, 1, 4, '47 Cacao Loop', '20221134', '', '', ''),
(1010, '60023165', 'WAX4719', 'Silver', 'Honda', 'Brio', 'Borja  Alfredo Jr.', '0000-00-00', 49, 1, 1, 4, '47 Cacao Loop', '20628010', '', '', ''),
(1011, '60023165', 'NEU1359', 'Gray Metallic', 'Honda', 'Civic', 'Borja  Alfredo Jr.', '0000-00-00', 49, 1, 1, 4, '47 Cacao Loop', 'x', '', '', ''),
(1012, '60004527', 'ZRL911', 'White', 'Porsche', '997', 'Cuevas  Rafael', '0000-00-00', 49, 1, 1, 4, '97 Lanzones', '20504122', '', '', ''),
(1013, '60004527', 'PEI592', 'Black', 'Porsche', 'Cayenne', 'Cuevas  Rafael', '0000-00-00', 49, 1, 1, 4, '97 Lanzones', '20504174', '', '', ''),
(1014, '60004527', 'USA983', 'Gray', 'Jaguar', 'Daimler Six', 'Cuevas  Rafael', '0000-00-00', 49, 1, 1, 4, '97 Lanzones', '20504091', '', '', ''),
(1015, '60004527', 'XGW151', 'Silver', 'Mercedez Benz', 'C43', 'Cuevas  Rafael', '0000-00-00', 49, 1, 1, 4, '97 Lanzones', '20628037', '', '', ''),
(1016, '60004527', 'BEU709', 'Blue', 'Mercedez Benz', 'E320', 'Cuevas  Rafael', '0000-00-00', 49, 1, 1, 4, '97 Lanzones', '20628707', '', '', ''),
(1017, '60004527', 'BEX505', 'Blue', 'BMW', 'X5', 'Cuevas  Rafael', '0000-00-00', 49, 1, 1, 4, '97 Lanzones', '20504025', '', '', ''),
(1018, '60004527', 'ZPL857', 'White', 'Lexus', 'LX570', 'Cuevas  Rafael', '0000-00-00', 49, 1, 1, 4, '97 Lanzones', '20504165', '', '', ''),
(1019, '60004527', 'BEM740', 'Silver', 'BMW', '740i', 'Cuevas  Rafael', '0000-00-00', 49, 1, 1, 4, '97 Lanzones', '20503968', '', '', ''),
(1020, '60004527', 'NQH353', 'White', 'Nissan', 'GTR', 'Cuevas  Rafael', '0000-00-00', 49, 1, 1, 4, '97 Lanzones', '20628070', '', '', ''),
(1021, '60004527', 'ULT177', 'White', 'Volvo', '850T5', 'Cuevas  Rafael', '0000-00-00', 49, 1, 1, 4, '97 Lanzones', '20503918', '', '', ''),
(1022, '60004527', 'XMR753', 'White', 'Toyota', 'Previa', 'Cuevas  Rafael', '0000-00-00', 49, 1, 1, 4, '97 Lanzones', '20504153', '', '', ''),
(1023, '60004916', 'WGO508', 'Blue', 'Toyota', 'Fortuner', 'Casillano  Wilbert', '0000-00-00', 49, 1, 1, 4, '16 Marang', '20503877', '', '', ''),
(1024, '60004916', 'NCX8084', 'Brown', 'Toyota', 'Fortuner', 'Casillano  Wilbert', '0000-00-00', 49, 1, 1, 4, '16 Marang', 'x', '', '', ''),
(1025, '60005683', 'NBH3154', 'Blue', 'Mazda', 'CX5', 'Docena  Hans (Lessee)', '0000-00-00', 49, 1, 1, 4, '9 Datiles', '20628734', '', '', ''),
(1026, '60005683', '', 'White', 'BMW', 'F850 GS', 'Docena  Hans (Lessee)', '0000-00-00', 49, 1, 1, 4, '9 Datiles', 'x', '', '', ''),
(1027, '60005367', 'IH3056', 'Silver', 'Ford', 'Everest', 'Cruz  Bernard', '0000-00-00', 49, 1, 1, 4, '33 Campanilla', '20264852', '', '', ''),
(1028, '60005367', '', 'White', 'Hyundai', '', 'Cruz  Bernard', '0000-00-00', 49, 1, 1, 4, '33 Campanilla', 'x', '', '', ''),
(1029, '60005367', 'UOP120', 'Gold', 'Hyundai', '', 'Cruz  Bernard', '0000-00-00', 49, 1, 1, 4, '33 Campanilla', '20365519', '', '', ''),
(1030, '60004990', 'ZD8443', 'Brown', 'Audi', 'Q5', 'Ballada  Winifred', '0000-00-00', 49, 1, 1, 4, '9 Durian', '20439210', 'Green', '', ''),
(1031, '60004990', 'MOD056', 'Gray', 'Mercedez Benz', 'C180', 'Ballada  Winifred', '0000-00-00', 49, 1, 1, 4, '9 Durian', '20628665', 'Green', '', ''),
(1032, '60004990', 'NOA355', 'Blue', 'VW', 'Jetta', 'Ballada  Winifred', '0000-00-00', 49, 1, 1, 4, '9 Durian', '20503780', 'Green', '', ''),
(1033, '60004990', 'ABES374', 'Caribou', 'Ford', 'Explorer', 'Ballada  Winifred', '0000-00-00', 49, 1, 1, 4, '9 Durian', '20365422', 'Green', '', ''),
(1034, '60004990', 'ZTW905', 'Black', 'Ford', 'Explorer', 'Ballada  Winifred', '0000-00-00', 49, 1, 1, 4, '9 Durian', '20216486', 'Green', '', ''),
(1035, '60004990', 'OY2366', 'Black', 'Nissan', 'Navarra', 'Ballada  Winifred', '0000-00-00', 49, 1, 1, 4, '9 Durian', '20439027', 'Yellow', '', ''),
(1036, '60004990', 'POF108', 'Silver', 'Nissan', 'Livina', 'Ballada  Winifred', '0000-00-00', 49, 1, 1, 4, '9 Durian', '20365423', 'Yellow', '', ''),
(1037, '60004159', 'NWO511', 'Silver', 'Honda', 'CRV', 'Babsa-ay  Jonathan', '0000-00-00', 49, 1, 1, 4, '79 Pili', '20628347', 'Green', '', ''),
(1038, '60004159', 'ZPT372', 'Silver', 'Toyota', 'Altis', 'Babsa-ay  Jonathan', '0000-00-00', 49, 1, 1, 4, '79 Pili', '20503942', 'Green', '', ''),
(1039, '60005612', 'NCR4107', 'Silver', 'BMW', 'X3', 'Sugapong  Ronald', '0000-00-00', 49, 1, 1, 4, '5 Dao', '20503829', '', '', ''),
(1040, '60005612', 'VRB483', 'White', 'Audi', 'Q3', 'Sugapong  Ronald', '0000-00-00', 49, 1, 1, 4, '5 Dao', '20221230', '', '', ''),
(1041, '60005612', 'XRX542', 'Silver', 'Toyota', 'Previa', 'Sugapong  Ronald', '0000-00-00', 49, 1, 1, 4, '5 Dao', '20221386', '', '', ''),
(1042, '60005612', 'ARA3766', 'Silver', 'VW', 'Tiguan', 'Sugapong  Ronald', '0000-00-00', 49, 1, 1, 4, '5 Dao', '20264834', '', '', ''),
(1043, '60004249', 'TUO228', 'Red', 'Mitsubishi', 'Montero', 'Alcaraz  Conrado Jr.', '0000-00-00', 49, 1, 1, 4, '3 Mangosteen Road', '20365366', 'Green', '', ''),
(1044, '60004249', 'NCQ2778', 'White', 'Toyota', 'Altis', 'Alcaraz  Conrado Jr.', '0000-00-00', 49, 1, 1, 4, '3 Mangosteen Road', '20503773', 'Green', '', '');

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
  `violation` varchar(250) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  ADD KEY `type_id` (`type_id`);

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
  ADD PRIMARY KEY (`req_id`);

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
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tbl_emp_type`
--
ALTER TABLE `tbl_emp_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_item`
--
ALTER TABLE `tbl_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1045;

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
  MODIFY `payment_id` int(50) NOT NULL AUTO_INCREMENT;

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
  MODIFY `violation_id` int(50) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD CONSTRAINT `tbl_employee_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `tbl_emp_type` (`type_id`);

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
