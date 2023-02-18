-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2023 at 09:11 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maxmango`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CATEGORY_ID` int(11) NOT NULL,
  `CNAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CATEGORY_ID`, `CNAME`) VALUES
(0, 'Small'),
(1, 'Medium'),
(2, 'Large'),
(9, 'Others'),
(12, 'Inventory');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUST_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUST_ID`, `FIRST_NAME`, `LAST_NAME`, `PHONE_NUMBER`) VALUES
(9, 'Estephanie', 'Dulay', '09394566543'),
(11, 'Nhemi', 'Estrada', NULL),
(14, 'Syrx', 'Buslig', '09781633451'),
(15, 'Jorina', 'Lomboy', '09956288467'),
(16, 'Jovanie', 'Balada', '09891344576');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMPLOYEE_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `GENDER` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL,
  `JOB_ID` int(11) DEFAULT NULL,
  `HIRED_DATE` varchar(50) NOT NULL,
  `LOCATION_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMPLOYEE_ID`, `FIRST_NAME`, `LAST_NAME`, `GENDER`, `EMAIL`, `PHONE_NUMBER`, `JOB_ID`, `HIRED_DATE`, `LOCATION_ID`) VALUES
(1, 'Rodel', 'Burguillos', 'Male', 'rodelburguillos24@gmail.com', '09124033805', 1, '0000-00-00', 148),
(2, 'Nheriza', 'Apostol', 'Female', 'nherizaapostol@yahoo.com', '09091245761', 2, '2019-01-28', 148),
(4, 'Rolan', 'Dumo', 'Male', 'rolandumo00@gmail.com', '09123357105', 1, '2019-03-06', 148);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `JOB_ID` int(11) NOT NULL,
  `JOB_TITLE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`JOB_ID`, `JOB_TITLE`) VALUES
(1, 'Manager'),
(2, 'Cashier');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `LOCATION_ID` int(11) NOT NULL,
  `PROVINCE` varchar(100) DEFAULT NULL,
  `CITY` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`LOCATION_ID`, `PROVINCE`, `CITY`) VALUES
(111, 'La Union', 'Naguilian'),
(112, 'La Union', 'Agoo'),
(113, 'La Union', 'Santo Tomas'),
(114, 'La Union', 'Aringay'),
(115, 'La Union', 'San Gabriel'),
(116, 'La Union', 'Sudipen'),
(117, 'La Union', 'Bacnotan'),
(126, 'La Union', 'Rosario'),
(130, 'La Union', 'Burgos'),
(131, 'Negros Occidental', 'Himamaylan'),
(132, 'Negros', 'Jupiter'),
(133, 'Aincrad', 'Floor 91'),
(134, 'negros', 'binalbagan'),
(137, 'Camiguin', 'Catarman'),
(138, 'Camiguin', 'Catarman'),
(139, 'Negros Occidental', 'Binalbagan'),
(140, 'Batangas', 'Lemery'),
(141, 'Capiz', 'Panay'),
(142, 'Camarines Norte', 'Labo'),
(143, 'Camarines Norte', 'Labo'),
(144, 'Camarines Norte', 'Labo'),
(145, 'Camarines Norte', 'Labo'),
(146, 'Capiz', 'Pilar'),
(147, 'Negros Occidental', 'Moises Padilla'),
(148, 'La Union', 'Bauang'),
(149, '1', '1'),
(150, 'Negros Occidental', 'Himamaylan'),
(151, 'Masbate', 'Mandaon'),
(152, 'Aklanas', 'Madalagsasa'),
(153, 'Batangas', 'Mabini'),
(154, 'Bataan', 'Morong'),
(155, 'Capiz', 'Pillar'),
(156, 'Negros Occidental', 'Bacolod'),
(157, 'Camarines Norte', 'Labo'),
(158, 'Negros Occidental', 'Binalbagan'),
(159, '[value-2]', '[value-3]');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `LOCATION_ID` int(11) NOT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`FIRST_NAME`, `LAST_NAME`, `LOCATION_ID`, `EMAIL`, `PHONE_NUMBER`) VALUES
('Rodel', 'Burguillos', 113, 'rodelburguillos@gmail.com', '09124033805'),
('Raven', 'Ocon', 116, 'raven@', '09123346576'),
('Diana', 'Tadeja', 113, 'dianatadeja@', NULL),
('Nelson', 'Dumo', 111, 'nelson@', '09123456789');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `PRODUCT_ID` int(11) NOT NULL,
  `PRODUCT_CODE` varchar(20) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(250) NOT NULL,
  `QTY_STOCK` int(50) DEFAULT NULL,
  `ON_HAND` int(250) NOT NULL,
  `PRICE` int(50) DEFAULT NULL,
  `CATEGORY_ID` int(11) DEFAULT NULL,
  `SUPPLIER_ID` int(11) DEFAULT NULL,
  `PRODUCT_IMAGE` text NOT NULL,
  `DATE_STOCK_IN` varchar(50) NOT NULL,
  `DATE_EXPIRE` date DEFAULT NULL,
  `HIDE` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PRODUCT_ID`, `PRODUCT_CODE`, `NAME`, `DESCRIPTION`, `QTY_STOCK`, `ON_HAND`, `PRICE`, `CATEGORY_ID`, `SUPPLIER_ID`, `PRODUCT_IMAGE`, `DATE_STOCK_IN`, `DATE_EXPIRE`, `HIDE`) VALUES
(183, '978', '78', 'ojui', 76, 1, 78987, 9, 13, 'productImage-63f06302d811b0.20571720.jpg', '2023-03-07', NULL, 0),
(184, '4657456', 'test', 'test', 124, 1, 263, 0, 11, 'productImage-63f0811ceb76e6.04340618.png', '2023-02-18', NULL, 0),
(186, '347634', 'testItem', 'testItem', 214, 1, NULL, 12, 12, 'itemImage-63f08510bae2f4.41657686.jpg', '2023-02-18', '2027-03-01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SUPPLIER_ID` int(11) NOT NULL,
  `COMPANY_NAME` varchar(50) DEFAULT NULL,
  `LOCATION_ID` int(11) NOT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SUPPLIER_ID`, `COMPANY_NAME`, `LOCATION_ID`, `PHONE_NUMBER`) VALUES
(11, 'InGame Tech', 114, '09457488521'),
(12, 'Asus', 115, '09635877412'),
(13, 'Razer Co.', 111, '09587855685'),
(15, 'Strategic Technology Co.', 116, '09124033805'),
(16, 'A4tech', 155, '09775673257');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `TRANS_ID` int(50) NOT NULL,
  `CUST_ID` int(11) DEFAULT NULL,
  `NUMOFITEMS` varchar(250) NOT NULL,
  `SUBTOTAL` varchar(50) NOT NULL,
  `LESSVAT` varchar(50) NOT NULL,
  `NETVAT` varchar(50) NOT NULL,
  `ADDVAT` varchar(50) NOT NULL,
  `GRANDTOTAL` float NOT NULL,
  `CASH` varchar(250) NOT NULL,
  `DATE` varchar(50) NOT NULL,
  `TRANS_D_ID` varchar(250) NOT NULL,
  `DatePurchased` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`TRANS_ID`, `CUST_ID`, `NUMOFITEMS`, `SUBTOTAL`, `LESSVAT`, `NETVAT`, `ADDVAT`, `GRANDTOTAL`, `CASH`, `DATE`, `TRANS_D_ID`, `DatePurchased`) VALUES
(16, 11, '1', '108.00', '11.57', '96.43', '11.57', 108, '200', '2023-02-15 12:56 pm', '0215125652', '2023-02-15 00:00:00'),
(17, 16, '2', '3,621.00', '387.96', '3,233.04', '387.96', 3621, '4000', '2023-02-15 12:57 pm', '0215125717', '2023-02-15 19:57:17'),
(18, 16, '1', '568.00', '60.86', '507.14', '60.86', 568, '567', '2023-02-18 06:46 am', '021864703', '2023-02-18 13:47:03'),
(19, 15, '1', '568.00', '60.86', '507.14', '60.86', 568, '3456', '2023-02-18 06:50 am', '021865019', '2023-02-18 13:50:19'),
(20, 14, '1', '568.00', '60.86', '507.14', '60.86', 568, '4577', '2023-02-18 06:50 am', '021865055', '2023-02-18 13:50:55'),
(21, 16, '1', '568.00', '60.86', '507.14', '60.86', 568, '45747', '2023-02-18 06:53 am', '021865311', '2023-02-18 13:53:11'),
(22, 16, '1', '568.00', '60.86', '507.14', '60.86', 568, '457457', '2023-02-18 06:54 am', '021865444', '2023-02-18 13:54:44'),
(23, 15, '1', '568.00', '60.86', '507.14', '60.86', 568, '346346', '2023-02-18 06:55 am', '021865517', '2023-02-18 13:55:17'),
(24, 16, '1', '568.00', '60.86', '507.14', '60.86', 568, '5687', '2023-02-18 06:56 am', '021865616', '2023-02-18 13:56:16'),
(25, 16, '1', '568.00', '60.86', '507.14', '60.86', 568, '5000', '2023-02-18 06:56 am', '021865701', '2023-02-18 13:57:01'),
(26, 11, '1', '78,987.00', '8,462.89', '70,524.11', '8,462.89', 78987, '1', '2023-02-18 06:58 am', '021865856', '2023-02-18 13:58:56'),
(27, 11, '1', '78,987.00', '8,462.89', '70,524.11', '8,462.89', 78987, '1', '2023-02-18 07:01 am', '021870200', '2023-02-18 14:02:00'),
(28, 9, '1', '1,136.00', '121.71', '1,014.29', '121.71', 1136, '1500', '2023-02-18 07:33 am', '021873324', '2023-02-18 14:33:24'),
(29, 16, '1', '263.00', '28.18', '234.82', '28.18', 263, '1', '2023-02-18 08:49 am', '021885004', '2023-02-18 15:50:04'),
(30, 14, '1', '789.00', '84.54', '704.46', '84.54', 789, '100', '2023-02-18 08:51 am', '021885153', '2023-02-18 15:51:53'),
(31, 11, '1', '263.00', '28.18', '234.82', '28.18', 263, '1', '2023-02-18 09:03 am', '021890344', '2023-02-18 16:03:44');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `ID` int(11) NOT NULL,
  `TRANS_D_ID` varchar(250) NOT NULL,
  `PRODUCTS` varchar(250) NOT NULL,
  `QTY` varchar(250) NOT NULL,
  `PRICE` varchar(250) NOT NULL,
  `AMOUNT_RECEIVED` float NOT NULL,
  `AMOUNT_CHANGE` float NOT NULL,
  `TOTAL_AMOUNT` float NOT NULL,
  `EMPLOYEE` varchar(250) NOT NULL,
  `ROLE` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`ID`, `TRANS_D_ID`, `PRODUCTS`, `QTY`, `PRICE`, `AMOUNT_RECEIVED`, `AMOUNT_CHANGE`, `TOTAL_AMOUNT`, `EMPLOYEE`, `ROLE`) VALUES
(7, '0318160336', 'Oreo Cream', '2', '150', 0, 0, 0, 'Rodel', 'Manager'),
(8, '0318160336', 'Predator Helios 300 Gaming Laptop', '5', '77850', 0, 0, 0, 'Prince Ly', 'Manager'),
(9, '0318160336', 'A4tech OP-720', '6', '289', 0, 0, 0, 'Prince Ly', 'Manager'),
(10, '0318160622', 'Newmen E120', '2', '550', 0, 0, 0, 'Prince Ly', 'Manager'),
(11, '0318160622', 'A4tech OP-720', '3', '289', 0, 0, 0, 'Prince Ly', 'Manager'),
(12, '0318170309', 'Newmen E120', '1', '550', 0, 0, 0, 'Prince Ly', 'Manager'),
(13, '0318170352', 'Predator Helios 300 Gaming Laptop', '1', '77850', 0, 0, 0, 'Prince Ly', 'Manager'),
(14, '0318170511', 'Fantech EG1', '2', '859', 0, 0, 0, 'Prince Ly', 'Manager'),
(15, '0318170524', 'Fantech EG1', '2', '859', 0, 0, 0, 'Prince Ly', 'Manager'),
(16, '0318170551', 'Fantech EG1', '2', '859', 0, 0, 0, 'Prince Ly', 'Manager'),
(17, '0318170624', 'A4tech OP-720', '1', '289', 0, 0, 0, 'Prince Ly', 'Manager'),
(18, '0318170825', 'A4tech OP-720', '1', '289', 0, 0, 0, 'Prince Ly', 'Manager'),
(19, '0318170825', 'Fantech EG1', '1', '859', 0, 0, 0, 'Prince Ly', 'Manager'),
(20, '0318194016', 'Newmen E120', '10', '550', 0, 0, 0, 'Josuey', 'Cashier'),
(21, '0215121523', 'Oreo', '1', '54', 0, 0, 0, 'Rodel', 'Manager'),
(23, '0215122942', 'Oreo', '5', '54', 0, 0, 0, 'Rodel', 'Manager'),
(24, '0215122942', 'test', '1', '3567', 0, 0, 0, 'Rodel', 'Manager'),
(25, '0215125333', 'Oreo', '1', '54', 0, 0, 0, 'Rodel', 'Manager'),
(26, '0215125333', 'test', '1', '3567', 0, 0, 0, 'Rodel', 'Manager'),
(27, '0215125652', 'Oreo', '2', '54', 0, 0, 0, 'Rodel', 'Manager'),
(28, '0215125717', 'Oreo', '1', '54', 0, 0, 0, 'Rodel', 'Manager'),
(29, '0215125717', 'test', '1', '3567', 0, 0, 0, 'Rodel', 'Manager'),
(30, '021864703', 'ter', '1', '568', 0, 0, 0, 'Rodel', 'Manager'),
(31, '021865019', 'ter', '1', '568', 0, 0, 0, 'Rodel', 'Manager'),
(32, '021865055', 'ter', '1', '568', 0, 0, 0, 'Rodel', 'Manager'),
(33, '021865311', 'ter', '1', '568', 0, 0, 0, 'Rodel', 'Manager'),
(34, '021865444', 'ter', '1', '568', 0, 0, 0, 'Rodel', 'Manager'),
(35, '021865517', 'ter', '1', '568', 0, 0, 0, 'Rodel', 'Manager'),
(36, '021865616', 'ter', '1', '568', 0, 0, 0, 'Rodel', 'Manager'),
(37, '021865701', 'ter', '1', '568', 0, 0, 0, 'Rodel', 'Manager'),
(38, '021865856', '78', '1', '78987', 0, 0, 0, 'Rodel', 'Manager'),
(39, '021870200', '78', '1', '78987', 0, 0, 0, 'Rodel', 'Manager'),
(40, '021873324', 'ter', '2', '568', 0, 0, 0, 'Rodel', 'Manager'),
(41, '021885004', 'test', '1', '263', 0, 0, 0, 'Rodel', 'Manager'),
(42, '021885153', 'test', '3', '263', 0, 0, 0, 'Rodel', 'Manager'),
(43, '021890344', 'test', '1', '263', 0, 0, 0, 'Rodel', 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `TYPE_ID` int(11) NOT NULL,
  `TYPE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`TYPE_ID`, `TYPE`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `EMPLOYEE_ID` int(11) DEFAULT NULL,
  `USERNAME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `TYPE_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `EMPLOYEE_ID`, `USERNAME`, `PASSWORD`, `TYPE_ID`) VALUES
(1, 1, 'Admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1),
(7, 2, 'test', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CATEGORY_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUST_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EMPLOYEE_ID`),
  ADD UNIQUE KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`),
  ADD UNIQUE KEY `PHONE_NUMBER` (`PHONE_NUMBER`),
  ADD KEY `LOCATION_ID` (`LOCATION_ID`),
  ADD KEY `JOB_ID` (`JOB_ID`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`JOB_ID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LOCATION_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD UNIQUE KEY `PHONE_NUMBER` (`PHONE_NUMBER`),
  ADD KEY `LOCATION_ID` (`LOCATION_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PRODUCT_ID`),
  ADD KEY `CATEGORY_ID` (`CATEGORY_ID`),
  ADD KEY `SUPPLIER_ID` (`SUPPLIER_ID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SUPPLIER_ID`),
  ADD KEY `LOCATION_ID` (`LOCATION_ID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TRANS_ID`),
  ADD KEY `TRANS_DETAIL_ID` (`TRANS_D_ID`),
  ADD KEY `CUST_ID` (`CUST_ID`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TRANS_D_ID` (`TRANS_D_ID`) USING BTREE;

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`TYPE_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TYPE_ID` (`TYPE_ID`),
  ADD KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CUST_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EMPLOYEE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `LOCATION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `PRODUCT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SUPPLIER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `TRANS_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`JOB_ID`) REFERENCES `job` (`JOB_ID`);

--
-- Constraints for table `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`CATEGORY_ID`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`SUPPLIER_ID`) REFERENCES `supplier` (`SUPPLIER_ID`);

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`LOCATION_ID`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_3` FOREIGN KEY (`CUST_ID`) REFERENCES `customer` (`CUST_ID`),
  ADD CONSTRAINT `transaction_ibfk_4` FOREIGN KEY (`TRANS_D_ID`) REFERENCES `transaction_details` (`TRANS_D_ID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_3` FOREIGN KEY (`TYPE_ID`) REFERENCES `type` (`TYPE_ID`),
  ADD CONSTRAINT `users_ibfk_4` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `employee` (`EMPLOYEE_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
