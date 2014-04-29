-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2014 at 06:25 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `car_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE IF NOT EXISTS `car` (
  `carID` int(5) NOT NULL AUTO_INCREMENT,
  `make` varchar(20) NOT NULL,
  `model` varchar(20) NOT NULL,
  `vehical_class` varchar(15) NOT NULL,
  `rate` double NOT NULL,
  `door` int(1) NOT NULL,
  `picture` varchar(150) NOT NULL,
  `available` int(1) NOT NULL,
  PRIMARY KEY (`carID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`carID`, `make`, `model`, `vehical_class`, `rate`, `door`, `picture`, `available`) VALUES
(1, 'Chevy', 'Spark', 'Economy', 10.99, 4, 'http://www.enterprise.com/content/car_rental/images/2012/ico_car_09_CCAR.gif', 1),
(2, 'Nissan', 'Versa', 'Economy', 11.99, 4, 'http://www.enterprise.com/content/car_rental/images/2013/ico_car_13_CCAR.gif', 1),
(3, 'Toyota', 'Corolla', 'Standard', 12.99, 4, 'http://www.enterprise.com/content/car_rental/images/2013/ico_car_13_ICAR.gif', 1),
(4, 'Chrysler', '200', 'Standard', 13.99, 4, 'http://www.enterprise.com/content/car_rental/images/2012/ico_car_09_SCAR.gif', 1),
(5, 'Cadillac', 'ATS', 'Standard', 14.99, 2, 'http://www.enterprise.com/content/car_rental/images/2013/ico_CADI_ATS_2014_LCAR.png', 1),
(6, 'Lincoln', 'Navigator', 'Luxury', 15.99, 4, 'http://www.enterprise.com/content/car_rental/images/2012/ico_car_09_LFAR.gif', 1),
(7, 'Ford', 'Expedition', 'Luxury', 16.99, 2, 'http://www.enterprise.com/content/car_rental/images/2013/ico_car_13_FFAR.gif', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `CustomerID` int(5) NOT NULL AUTO_INCREMENT,
  `Email` varchar(30) NOT NULL,
  `password` varchar(15) NOT NULL,
  `FirstName` varchar(10) NOT NULL,
  `LastName` varchar(10) NOT NULL,
  `DrivLicNum` varchar(7) NOT NULL,
  `Address` varchar(25) DEFAULT NULL,
  `City` varchar(10) NOT NULL,
  `State` varchar(10) NOT NULL,
  `ZipCode` int(5) NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `Email`, `password`, `FirstName`, `LastName`, `DrivLicNum`, `Address`, `City`, `State`, `ZipCode`) VALUES
(1, 'mee@google.com', 'manisha', 'Mini', 'Vyas', 'D123456', '858 Living St Address ', 'Sunnyvale', 'Clifornia', 456257),
(2, 'hello@mail.con', 'rajan', 'Rajan', 'Vyas', 'D546786', '234 Some address', 'Newarkk', 'Navada', 54622),
(3, 'him@yahoo.com', 'siddh', 'Siddh', 'Kumar', 'D434623', '333 Fun Str', 'Dali City', 'Alberta', 56465),
(5, 'den@mail.com', 'den', 'Den', 'Din', 'D789555', 'his home add', 'Miniapolis', 'Texas', 45685),
(6, 'her@mail.com', 'john', 'John', 'Winslet', 'D152625', '123 Some street', 'Redwood', 'California', 55526),
(7, 'denny@gmail.com', 'somthing', 'Denny', 'Pot', '123555', 'Hanger13 reddeer', 'Sunnyvale', 'Alberta', 45245),
(15, 'kk', 'kk', 'kk', 'kk', 'kk', 'kk', 'kk', 'kk', 66),
(16, 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 5),
(17, 'test', 'test', 'testing', 'moretestin', 'drive', 'add', 'somecity', 'state', 123456);

-- --------------------------------------------------------

--
-- Table structure for table `rentalorder`
--

CREATE TABLE IF NOT EXISTS `rentalorder` (
  `RentalOrderID` int(5) NOT NULL AUTO_INCREMENT,
  `CustomerID` varchar(5) NOT NULL,
  `CarID` varchar(5) NOT NULL,
  `StartDate` datetime NOT NULL,
  `EndDate` datetime DEFAULT NULL,
  `TotalDays` int(2) DEFAULT NULL,
  `RateApplied` double NOT NULL,
  `Amount` double NOT NULL,
  `TaxRate` double DEFAULT NULL,
  `Total` double NOT NULL,
  PRIMARY KEY (`RentalOrderID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `rentalorder`
--

INSERT INTO `rentalorder` (`RentalOrderID`, `CustomerID`, `CarID`, `StartDate`, `EndDate`, `TotalDays`, `RateApplied`, `Amount`, `TaxRate`, `Total`) VALUES
(8, '1', '7', '2014-05-25 01:02:00', '2014-05-30 03:04:00', 5, 16.99, 84.95, 4.2475, 89.1975);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
