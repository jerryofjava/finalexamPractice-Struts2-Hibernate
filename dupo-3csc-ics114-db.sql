-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2017 at 10:44 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dupo-3csc-ics114-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`username`, `password`) VALUES
('admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `customerpurchase`
--

CREATE TABLE `customerpurchase` (
  `gasType` varchar(50) NOT NULL,
  `liters` double NOT NULL,
  `creditCard` varchar(50) NOT NULL,
  `creditNumber` varchar(50) NOT NULL,
  `purchase` double NOT NULL,
  `vat` double NOT NULL,
  `total` double NOT NULL,
  `tagalog` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerpurchase`
--

INSERT INTO `customerpurchase` (`gasType`, `liters`, `creditCard`, `creditNumber`, `purchase`, `vat`, `total`, `tagalog`) VALUES
('Premium', 4, 'Visa', '4826254281630316', 200, 24, 224, 'dalawang daan at dalawampung at apat na piso'),
('Premium', 5, 'Mastercard', '5277981183675491', 250, 30, 280, 'dalawang daan at walompung  piso'),
('Premium', 5, 'Mastercard', '5277981183675491', 250, 30, 280, 'dalawang daan at walompung  piso'),
('Premium', 3, 'Visa', '4867166180620380', 150, 18, 168, 'isang daan at animnapung walong piso'),
('Unlieded', 2, 'Mastercard', '4867166180620380', 88, 10.559999999999999, 98.56, 'siyamnapung at walong piso');

-- --------------------------------------------------------

--
-- Table structure for table `empleyadosweldo`
--

CREATE TABLE `empleyadosweldo` (
  `id` int(11) NOT NULL,
  `basicPay` double NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `grossPay` double NOT NULL,
  `hours` int(11) NOT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `netPay` double NOT NULL,
  `overTimePay` double NOT NULL,
  `payRate` double NOT NULL,
  `withHoldingTax` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empleyadosweldo`
--

INSERT INTO `empleyadosweldo` (`id`, `basicPay`, `firstName`, `grossPay`, `hours`, `lastName`, `netPay`, `overTimePay`, `payRate`, `withHoldingTax`) VALUES
(1, 982192, 'Jerry', 982192, 34, 'Shuu', 638424.8, 0, 28888, 343767.19999999995);

-- --------------------------------------------------------

--
-- Table structure for table `employee_2`
--

CREATE TABLE `employee_2` (
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `hours` int(50) NOT NULL,
  `payRate` double NOT NULL,
  `basicPay` double NOT NULL,
  `overtimePay` double NOT NULL,
  `grossPay` double NOT NULL,
  `withHoldingTax` double NOT NULL,
  `netPay` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_2`
--

INSERT INTO `employee_2` (`lastName`, `firstName`, `hours`, `payRate`, `basicPay`, `overtimePay`, `grossPay`, `withHoldingTax`, `netPay`) VALUES
('Dupo', 'Jerry', 12, 2000, 24000, 0, 24000, 4800, 19200);

-- --------------------------------------------------------

--
-- Table structure for table `estudyantengust`
--

CREATE TABLE `estudyantengust` (
  `id` varchar(255) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `region` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zip` int(11) NOT NULL,
  `course` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `tuitionFee` double NOT NULL,
  `unitPrice` double NOT NULL,
  `units` int(11) NOT NULL,
  `yearLevel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `estudyantengust`
--

INSERT INTO `estudyantengust` (`id`, `city`, `country`, `number`, `region`, `street`, `zip`, `course`, `firstName`, `lastName`, `tuitionFee`, `unitPrice`, `units`, `yearLevel`) VALUES
('143-714-224', 'Antipolo City', 'Philippines', 30, 'CALABARZON', 'C. Lawis Extension', 1870, 'BS CS', 'Bruce Jayson', 'Sta. Cruz', 155000, 7500, 18, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mgamagaaralngust`
--

CREATE TABLE `mgamagaaralngust` (
  `id` varchar(255) NOT NULL,
  `kurso` varchar(255) DEFAULT NULL,
  `dateComputed` datetime DEFAULT NULL,
  `pangalan` varchar(255) DEFAULT NULL,
  `apelyido` varchar(255) DEFAULT NULL,
  `matrikula` double DEFAULT NULL,
  `presyoPerUnito` double DEFAULT NULL,
  `unitoGalingKayKyleFarinas` int(11) DEFAULT NULL,
  `antas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mgamagaaralngust`
--

INSERT INTO `mgamagaaralngust` (`id`, `kurso`, `dateComputed`, `pangalan`, `apelyido`, `matrikula`, `presyoPerUnito`, `unitoGalingKayKyleFarinas`, `antas`) VALUES
('123-567-900', 'BS IS', '2016-11-28 18:22:49', 'Kevin', 'Durant', 177500, 7500, 21, 4),
('123-567-908', 'BS IT', '2016-11-28 18:22:49', 'Dirk', 'Nowitzki', 155000, 7500, 18, 4);

-- --------------------------------------------------------

--
-- Table structure for table `semestralgrade`
--

CREATE TABLE `semestralgrade` (
  `prelim` double NOT NULL,
  `decimalGrade` double NOT NULL,
  `finals` double NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `semGrade` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semestralgrade`
--

INSERT INTO `semestralgrade` (`prelim`, `decimalGrade`, `finals`, `remarks`, `semGrade`) VALUES
(45, 5, 67, 'Failed', 56);

-- --------------------------------------------------------

--
-- Table structure for table `trucks`
--

CREATE TABLE `trucks` (
  `truckNo` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `weight` int(11) NOT NULL,
  `weightLimit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trucks`
--

INSERT INTO `trucks` (`truckNo`, `status`, `weight`, `weightLimit`) VALUES
(1, 'Success', 2000, 50000),
(2, 'Success', 300, 25000),
(4, 'Success', 3000, 35000),
(5, 'Success', 40000, 40000),
(6, 'Exceeded', 25001, 25000),
(7, 'Success', 4000, 30000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `empleyadosweldo`
--
ALTER TABLE `empleyadosweldo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estudyantengust`
--
ALTER TABLE `estudyantengust`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mgamagaaralngust`
--
ALTER TABLE `mgamagaaralngust`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semestralgrade`
--
ALTER TABLE `semestralgrade`
  ADD PRIMARY KEY (`prelim`);

--
-- Indexes for table `trucks`
--
ALTER TABLE `trucks`
  ADD PRIMARY KEY (`truckNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `empleyadosweldo`
--
ALTER TABLE `empleyadosweldo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
