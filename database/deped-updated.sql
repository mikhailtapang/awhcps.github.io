-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2020 at 04:06 PM
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
(49, 'Kris', 'A', 'Gaw', 2, 1, 'Kris_Gaw', 'adbc7b078c583b4322c70a684b47f193', 3, 1);

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
(79, '12345', 'ABC2159', 'Yellow', 'Hyundai', 'Tucson ', 'Tom Cruise', '2020-09-16', 39, 1, 1, 4, '211 Pili Rd. ', '88818', 'Yellow', '082', ''),
(80, '256512', 'AAD1111', 'Brown', 'Maserati', 'Ghibli', 'Brad Pitt', '2020-09-07', 38, 1, 1, 4, '456 Durian Loop', '64128', 'Yellow', '050', ''),
(117, '60005268', 'NCH7257', 'Metallic Gray', 'Ford', 'Everest 2016', 'Chito / Socorro Manzanilla', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20365406', '', '', ''),
(118, '60005268', 'NAU2838', 'Midnight Burgundy', 'Honda', 'Civic RS Turbo 2017', 'Chito / Socorro Manzanilla', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20439116', '', '', ''),
(119, '60005268', 'DAZ7650', 'Silver Metallic', 'Mitsubishi', 'Xpander 2019', 'Chito / Socorro Manzanilla', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20628750', '', '', ''),
(120, '60004393', 'ZML435', 'Silver', 'Honda', 'CRV', 'Ma. Esperanza Diaz', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20216423', '', '', ''),
(121, '60005819', 'NAR6344', 'Bronze', 'Toyota', 'Fortuner', 'Dorotea Susana Juco', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20439046', '', '', ''),
(122, '60004961', 'UHQ674', 'Black', 'Toyota', 'Hi-Ace Grandia', 'Eugenio Manuel / Ma. Christina Gonzalez', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20503884', '', '', ''),
(123, '60004961', 'ZCK160', 'Green', 'Toyota', 'Innova', 'Eugenio Manuel / Ma. Christina Gonzalez', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20628242', '', '', ''),
(124, '60004961', 'NAU1099', 'Black', 'Honda', 'BRV', 'Eugenio Manuel / Ma. Christina Gonzalez', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20628240', '', '', ''),
(125, '60004961', 'NAT5963', 'Gray Metallic', 'Toyota', 'Fortuner', 'Eugenio Manuel / Ma. Christina Gonzalez', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20628241', '', '', ''),
(126, '60004537', 'NAT5359', 'Silver', 'Ford', 'Everest', 'Dennis / Ma. Theresa Belgira', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20216694', '', '', ''),
(127, '60004537', 'PLO400', 'Gray', 'Honda', 'CRV', 'Dennis / Ma. Theresa Belgira', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20214151', '', '', ''),
(128, '60004537', 'XHE128', 'Blue', 'Mitsubishi', 'Pajero', 'Dennis / Ma. Theresa Belgira', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20216696', '', '', ''),
(129, '60023216', 'NEA1920', 'Blue', 'Mazda', 'CX9', 'Jose Juan / Raquel Jugo', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20628466', '', '', ''),
(130, '60023216', 'UQP267', 'White', 'Honda', 'CRV', 'Jose Juan / Raquel Jugo', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20628179', '', '', ''),
(131, '60023078', 'UUU99', 'White Pearl', 'Toyota', 'Hi-Ace', 'Ron Richard / Melaine Habla', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20221435', '', '', ''),
(132, '60023078', 'VV4999', '', 'Isuzu', 'Trooper', 'Ron Richard / Melaine Habla', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20221434', '', '', ''),
(133, '60023078', 'B7G751', 'White', 'Mitsubishi', 'L300', 'Ron Richard / Melaine Habla', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20758931', '', '', ''),
(134, '60005374', 'USP128', 'Silver', 'BMW', 'Z3', 'Neil / Zarah May Ocampo', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20216684', '', '', ''),
(135, '60005374', 'AHA7424', 'Golden Purple', 'Honda', 'CRZ', 'Ocampo, Neil / Zarah May Ocampo', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20503743', '', '', ''),
(136, '60005374', 'NAE9439', 'Silver', 'Honda', 'Mobilo', 'Ocampo, Neil / Zarah May Ocampo', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20439271', '', '', ''),
(137, '60005374', 'ATA8165', 'White', 'Mitsubishi', 'Mirage', 'Ocampo, Neil / Zarah May Ocampo', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20300045', '', '', ''),
(138, '60005374', 'DAD7721', 'White', 'Toyota', 'Hi-Ace Grandia', 'Ocampo, Neil / Zarah May Ocampo', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20438938', '', '', ''),
(139, '60008031', 'EH4930', 'Maroon', 'Kia', 'Carnival', 'Arlene / Franco Juliano', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20503932', '', '', ''),
(140, '60008031', 'ABO9662', 'Green', 'Subaru', 'XV', 'Arlene / Franco Juliano', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20438926', '', '', ''),
(141, '60008031', 'E1C052', 'White', 'Honda', 'CRV', 'Arlene / Franco Juliano', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20628204', '', '', ''),
(142, '60005199', 'PNQ320', 'Silver', 'Mercedez Benz', '', 'Ramon / Christopher Carrion', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20758854', '', '', ''),
(143, '60005199', 'C2T86', 'Diffused Silver', 'Ford', 'Everest', 'Ramon / Christopher Carrion', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20628766', '', '', ''),
(144, '60005199', 'JCA700', 'Green', 'Ford', 'E150', 'Ramon / Christopher Carrion', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20628767', '', '', ''),
(145, '60005271', 'XPW228', 'Red', 'Mitsubishi', 'Pajero', 'Eduardo / Alma Peña', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20221682', '', '', ''),
(146, '60005271', 'RMN153', 'Beige', 'Toyota', 'Fortuner', 'Eduardo / Alma Peña', '0000-00-00', 49, 1, 1, 4, 'Sampaloc', '20628403', '', '', '');

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
-- Table structure for table `tbl_logs`
--

CREATE TABLE `tbl_logs` (
  `vehicle_id` varchar(50) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `vehicle_owner` varchar(50) NOT NULL,
  `plate_number` varchar(50) NOT NULL,
  `sticker_type` varchar(50) NOT NULL,
  `sticker_number` varchar(50) NOT NULL,
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
(3, 'Accounting');

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

INSERT INTO `tbl_violations` (`vehicle_id`, `driver_name`, `date_apprehended`, `violation_officer`, `violation_number`, `violation`, `status`) VALUES
('80', 'Brad Pitt', '09/08/2020', 'Ian Beriso', '0001', 'Double Parking', '1'),
('79', 'Tom Cruise', '09/08/2020', 'Jay Ponsaran', '002', 'Parked in Fire Lane', '2'),
('79', 'Pepits', '2020-09-10', 'Sgt. Pepper', '011', 'Parking no', '1'),
('128', 'Bogart', '2020-09-10', 'Sgt. at arms', '012', 'Wrong parking', '1'),
('122', 'Bogart', '2020-09-10', 'Sgt. at arms', '012', 'Wrong parking', '1');

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
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `con_id` (`con_id`);

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
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tbl_emp_type`
--
ALTER TABLE `tbl_emp_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_item`
--
ALTER TABLE `tbl_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

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
-- AUTO_INCREMENT for table `tbl_pos`
--
ALTER TABLE `tbl_pos`
  MODIFY `pos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- Constraints for table `tbl_item`
--
ALTER TABLE `tbl_item`
  ADD CONSTRAINT `tbl_item_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee` (`emp_id`),
  ADD CONSTRAINT `tbl_item_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `tbl_cat` (`cat_id`),
  ADD CONSTRAINT `tbl_item_ibfk_4` FOREIGN KEY (`status_id`) REFERENCES `tbl_item_status` (`status_id`),
  ADD CONSTRAINT `tbl_item_ibfk_5` FOREIGN KEY (`con_id`) REFERENCES `tbl_con` (`con_id`);

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
