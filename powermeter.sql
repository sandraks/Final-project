-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2020 at 08:07 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `powermeter`
--

-- --------------------------------------------------------

--
-- Table structure for table `control`
--

CREATE TABLE IF NOT EXISTS `control` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `dev1cnt` varchar(15) NOT NULL,
  `dev2cnt` varchar(15) NOT NULL,
  `dev3cnt` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `control`
--

INSERT INTO `control` (`id`, `dev1cnt`, `dev2cnt`, `dev3cnt`) VALUES
(1, '0', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `devcond`
--

CREATE TABLE IF NOT EXISTS `devcond` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dev1_con` varchar(50) NOT NULL,
  `dev2_con` varchar(50) NOT NULL,
  `dev3_con` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `devcond`
--

INSERT INTO `devcond` (`id`, `dev1_con`, `dev2_con`, `dev3_con`) VALUES
(1, 'Device OFF', 'Working Good', 'Showing some variation');

-- --------------------------------------------------------

--
-- Table structure for table `power`
--

CREATE TABLE IF NOT EXISTS `power` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `lineVolt` varchar(50) NOT NULL,
  `dev1_P` varchar(50) NOT NULL,
  `dev1_U` varchar(50) NOT NULL,
  `dev2_P` varchar(50) NOT NULL,
  `dev2_U` varchar(50) NOT NULL,
  `dev3_P` varchar(50) NOT NULL,
  `dev3_U` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `status` varchar(15) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `power`
--

INSERT INTO `power` (`id`, `lineVolt`, `dev1_P`, `dev1_U`, `dev2_P`, `dev2_U`, `dev3_P`, `dev3_U`, `amount`, `status`, `dt`) VALUES
(1, '247.00', '0.00', '11.41', '40.38', '1.51', '138.70', '141.85', '77.39', '1', '2020-06-23 09:01:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
