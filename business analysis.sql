-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2025 at 03:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `business_datab`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `average_kpis_by_business_location`
-- (See below for the actual view)
--
CREATE TABLE `average_kpis_by_business_location` (
`Business_Location` varchar(50)
,`Power_Percentage` decimal(36,0)
,`Rent_Percentage` decimal(36,0)
,`Competition_Percentage` decimal(36,0)
,`Credit_Percentage` decimal(36,0)
);

-- --------------------------------------------------------

--
-- Table structure for table `business_data`
--

CREATE TABLE `business_data` (
  `Id` float DEFAULT NULL,
  `Business_Type` varchar(50) DEFAULT NULL,
  `Business_Location` varchar(50) DEFAULT NULL,
  `Revenue_Midpoint` float DEFAULT NULL,
  `Expenses_Midpoint` float DEFAULT NULL,
  `Rent` int(11) DEFAULT NULL,
  `Salaries` int(11) DEFAULT NULL,
  `Inventory` int(11) DEFAULT NULL,
  `Marketing` int(11) DEFAULT NULL,
  `Power_Supply` int(11) DEFAULT NULL,
  `Others` int(11) DEFAULT NULL,
  `Power_Supply_Issues` int(11) DEFAULT NULL,
  `Access_to_Credit` int(11) DEFAULT NULL,
  `High_Taxes` int(11) DEFAULT NULL,
  `High_Rent_Costs` int(11) DEFAULT NULL,
  `Competition` int(11) DEFAULT NULL,
  `Profit` float DEFAULT NULL,
  `Profit_Margin` float DEFAULT NULL,
  `Growth_Rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `business_data`
--

INSERT INTO `business_data` (`Id`, `Business_Type`, `Business_Location`, `Revenue_Midpoint`, `Expenses_Midpoint`, `Rent`, `Salaries`, `Inventory`, `Marketing`, `Power_Supply`, `Others`, `Power_Supply_Issues`, `Access_to_Credit`, `High_Taxes`, `High_Rent_Costs`, `Competition`, `Profit`, `Profit_Margin`, `Growth_Rate`) VALUES
(1, 'retail', 'lagos', 300000, 500000, 1, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, -200000, -0.67, -20000000),
(2, 'manufacturing', 'lagos', 750000, 1050000, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, -300000, -0.4, -30000000),
(3, 'manufacturing', 'lagos', 1500000, 500000, 1, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1000000, 0.67, 100000000),
(4, 'manufacturing', 'lagos', 1500000, 175000, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1325000, 0.88, 132500000),
(5, 'retail', 'lagos', 300000, 30000, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 0, 270000, 0.9, 27000000),
(6, 'manufacturing', 'lagos', 1500000, 1050000, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 450000, 0.3, 45000000),
(7, 'manufacturing', 'lagos', 1500000, 500000, 1, 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, 1000000, 0.67, 100000000),
(8, 'services', 'kano', 1500000, 175000, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1325000, 0.88, 132500000),
(9, 'retail', 'kano', 300000, 30000, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 270000, 0.9, 27000000),
(10, 'retail', 'kano', 50000, 30000, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 20000, 0.4, 2000000),
(11, 'manufacturing', 'kano', 1500000, 175000, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1325000, 0.88, 132500000),
(12, 'manufacturing', 'lagos', 1500000, 175000, 1, 1, 1, 0, 0, 0, 1, 0, 0, 1, 0, 1325000, 0.88, 132500000),
(13, 'manufacturing', 'port_harcourt', 50000, 30000, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, 20000, 0.4, 2000000),
(14, 'manufacturing', 'port_harcourt', 50000, 30000, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 20000, 0.4, 2000000),
(15, 'manufacturing', 'lagos', 1500000, 500000, 1, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1000000, 0.67, 100000000),
(16, 'services', 'lagos', 750000, 500000, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 250000, 0.33, 25000000),
(17, 'services', 'port_harcourt', 300000, 175000, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 125000, 0.42, 12500000),
(18, 'services', 'lagos', 50000, 30000, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 20000, 0.4, 2000000),
(19, 'retail', 'port_harcourt', 50000, 30000, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 20000, 0.4, 2000000),
(20, 'retail', 'port_harcourt', 300000, 30000, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 270000, 0.9, 27000000),
(21, 'manufacturing', 'port_harcourt', 300000, 175000, 1, 0, 1, 0, 1, 0, 1, 1, 0, 0, 1, 125000, 0.42, 12500000),
(22, 'services', 'port_harcourt', 300000, 30000, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 1, 270000, 0.9, 27000000),
(23, 'manufacturing', 'lagos', 1500000, 500000, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1000000, 0.67, 100000000),
(24, 'retail', 'lagos', 300000, 30000, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 270000, 0.9, 27000000),
(25, 'services', 'lagos', 750000, 175000, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 575000, 0.77, 57500000),
(26, 'services', 'lagos', 750000, 175000, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 575000, 0.77, 57500000),
(27, 'retail', 'lagos', 1500000, 500000, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 1000000, 0.67, 100000000),
(28, 'services', 'lagos', 300000, 30000, 0, 1, 0, 1, 1, 0, 1, 0, 1, 1, 0, 270000, 0.9, 27000000),
(29, 'services', 'lagos', 300000, 30000, 0, 1, 1, 1, 0, 0, 1, 0, 0, 1, 0, 270000, 0.9, 27000000),
(30, 'manufacturing', 'lagos', 750000, 175000, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 0, 575000, 0.77, 57500000),
(31, 'manufacturing', 'lagos', 750000, 175000, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 575000, 0.77, 57500000),
(32, 'retail', 'lagos', 50000, 30000, 0, 1, 0, 1, 1, 0, 0, 1, 1, 1, 0, 20000, 0.4, 2000000),
(33, 'manufacturing', 'lagos', 300000, 175000, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 125000, 0.42, 12500000),
(34, 'retail', 'lagos', 50000, 30000, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 20000, 0.4, 2000000),
(35, 'services', 'lagos', 300000, 30000, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 270000, 0.9, 27000000),
(36, 'manufacturing', 'kano', 300000, 30000, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 270000, 0.9, 27000000),
(37, 'retail', 'kano', 50000, 30000, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 20000, 0.4, 2000000),
(38, 'retail', 'kano', 50000, 30000, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 20000, 0.4, 2000000),
(39, 'retail', 'lagos', 50000, 30000, 1, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 20000, 0.4, 2000000),
(40, 'services', 'kano', 1500000, 500000, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 1000000, 0.67, 100000000),
(41, 'manufacturing', 'port_harcourt', 1500000, 175000, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1325000, 0.88, 132500000),
(42, 'manufacturing', 'port_harcourt', 1500000, 175000, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 1325000, 0.88, 132500000),
(43, 'services', 'port_harcourt', 1500000, 175000, 1, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 1325000, 0.88, 132500000),
(44, 'retail', 'port_harcourt', 1500000, 175000, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1325000, 0.88, 132500000),
(45, 'retail', 'port_harcourt', 750000, 175000, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 575000, 0.77, 57500000),
(46, 'services', 'lagos', 750000, 175000, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 575000, 0.77, 57500000),
(47, 'services', 'port_harcourt', 750000, 30000, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 720000, 0.96, 72000000),
(48, 'services', 'port_harcourt', 1500000, 175000, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 0, 1325000, 0.88, 132500000),
(49, 'retail', 'port_harcourt', 750000, 175000, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 575000, 0.77, 57500000),
(50, 'services', 'port_harcourt', 750000, 30000, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 720000, 0.96, 72000000),
(51, 'services', 'port_harcourt', 750000, 30000, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 1, 720000, 0.96, 72000000),
(52, 'retail', 'kano', 1500000, 30000, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1470000, 0.98, 147000000),
(53, 'manufacturing', 'port_harcourt', 1500000, 1050000, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 450000, 0.3, 45000000),
(54, 'manufacturing', 'kano', 1500000, 500000, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1000000, 0.67, 100000000),
(55, 'services', 'kano', 1500000, 175000, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1325000, 0.88, 132500000),
(56, 'manufacturing', 'kano', 1500000, 175000, 0, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1325000, 0.88, 132500000),
(57, 'manufacturing', 'port_harcourt', 1500000, 175000, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1325000, 0.88, 132500000),
(58, 'retail', 'kano', 50000, 30000, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 20000, 0.4, 2000000),
(59, 'retail', 'lagos', 1500000, 500000, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1000000, 0.67, 100000000),
(60, 'retail', 'kano', 750000, 175000, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 575000, 0.77, 57500000),
(61, 'manufacturing', 'lagos', 1500000, 500000, 1, 1, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1000000, 0.67, 100000000),
(62, 'retail', 'port_harcourt', 300000, 30000, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 1, 270000, 0.9, 27000000),
(63, 'retail', 'lagos', 300000, 1050000, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, -750000, -2.5, -75000000),
(64, 'retail', 'kano', 300000, 30000, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 270000, 0.9, 27000000),
(65, 'retail', 'kano', 300000, 30000, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 270000, 0.9, 27000000),
(66, 'retail', 'port_harcourt', 750000, 500000, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 250000, 0.33, 25000000),
(67, 'manufacturing', 'port_harcourt', 750000, 30000, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 0, 720000, 0.96, 72000000),
(68, 'services', 'port_harcourt', 1500000, 1050000, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 450000, 0.3, 45000000),
(69, 'manufacturing', 'port_harcourt', 1500000, 1050000, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 450000, 0.3, 45000000),
(70, 'manufacturing', 'port_harcourt', 1500000, 500000, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1000000, 0.67, 100000000),
(71, 'manufacturing', 'port_harcourt', 50000, 30000, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 20000, 0.4, 2000000),
(72, 'retail', 'port_harcourt', 50000, 30000, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 20000, 0.4, 2000000),
(73, 'retail', 'port_harcourt', 50000, 30000, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 20000, 0.4, 2000000),
(74, 'retail', 'port_harcourt', 50000, 30000, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 20000, 0.4, 2000000),
(75, 'retail', 'port_harcourt', 50000, 30000, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 20000, 0.4, 2000000),
(76, 'retail', 'port_harcourt', 50000, 30000, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, 0, 20000, 0.4, 2000000),
(77, 'retail', 'port_harcourt', 50000, 30000, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 20000, 0.4, 2000000),
(78, 'retail', 'port_harcourt', 50000, 30000, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 20000, 0.4, 2000000),
(79, 'services', 'kano', 1500000, 175000, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 1325000, 0.88, 132500000),
(80, 'manufacturing', 'kano', 300000, 30000, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 270000, 0.9, 27000000),
(81, 'services', 'kano', 1500000, 30000, 0, 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 1470000, 0.98, 147000000),
(82, 'services', 'kano', 750000, 500000, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 250000, 0.33, 25000000),
(83, 'manufacturing', 'kano', 1500000, 1050000, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 450000, 0.3, 45000000),
(84, 'manufacturing', 'kano', 1500000, 1050000, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 450000, 0.3, 45000000),
(85, 'manufacturing', 'port_harcourt', 1500000, 1050000, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 450000, 0.3, 45000000),
(86, 'manufacturing', 'port_harcourt', 1500000, 1050000, 1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 450000, 0.3, 45000000),
(87, 'manufacturing', 'port_harcourt', 1500000, 1050000, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 450000, 0.3, 45000000),
(88, 'manufacturing', 'port_harcourt', 1500000, 1050000, 1, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 450000, 0.3, 45000000),
(89, 'retail', 'port_harcourt', 1500000, 1050000, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 450000, 0.3, 45000000),
(90, 'services', 'port_harcourt', 750000, 30000, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 720000, 0.96, 72000000),
(91, 'services', 'port_harcourt', 1500000, 1050000, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 450000, 0.3, 45000000),
(92, 'retail', 'port_harcourt', 1500000, 175000, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1325000, 0.88, 132500000),
(93, 'services', 'kano', 1500000, 1050000, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 450000, 0.3, 45000000),
(94, 'manufacturing', 'port_harcourt', 1500000, 1050000, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 450000, 0.3, 45000000),
(95, 'retail', 'lagos', 750000, 30000, 0, 1, 0, 1, 1, 0, 1, 1, 0, 0, 0, 720000, 0.96, 72000000),
(96, 'services', 'port_harcourt', 750000, 175000, 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 575000, 0.77, 57500000),
(97, 'services', 'port_harcourt', 750000, 175000, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 575000, 0.77, 57500000),
(98, 'manufacturing', 'lagos', 1500000, 1050000, 1, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 450000, 0.3, 45000000),
(99, 'retail', 'lagos', 1500000, 1050000, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 450000, 0.3, 45000000),
(100, 'retail', 'kano', 1500000, 1050000, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 0, 450000, 0.3, 45000000),
(101, 'services', 'kano', 750000, 30000, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 720000, 0.96, 72000000),
(102, 'retail', 'lagos', 1500000, 1050000, 1, 1, 0, 0, 1, 0, 1, 1, 1, 0, 0, 450000, 0.3, 45000000),
(103, 'services', 'lagos', 750000, 500000, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 250000, 0.33, 25000000),
(104, 'retail', 'kano', 1500000, 1050000, 1, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 450000, 0.3, 45000000),
(105, 'retail', 'port_harcourt', 750000, 175000, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 575000, 0.77, 57500000),
(106, 'retail', 'kano', 300000, 30000, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 270000, 0.9, 27000000),
(107, 'retail', 'kano', 750000, 500000, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1, 1, 250000, 0.33, 25000000),
(108, 'retail', 'kano', 1500000, 175000, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 1325000, 0.88, 132500000),
(109, 'retail', 'lagos', 750000, 175000, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 575000, 0.77, 57500000),
(110, 'services', 'kano', 750000, 500000, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, 250000, 0.33, 25000000),
(111, 'manufacturing', 'kano', 1500000, 500000, 1, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1000000, 0.67, 100000000),
(112, 'services', 'lagos', 1500000, 1050000, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 450000, 0.3, 45000000),
(113, 'services', 'kano', 1500000, 1050000, 1, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 450000, 0.3, 45000000),
(114, 'services', 'port_harcourt', 1500000, 1050000, 1, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 450000, 0.3, 45000000),
(115, 'manufacturing', 'kano', 1500000, 175000, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1325000, 0.88, 132500000),
(116, 'manufacturing', 'port_harcourt', 750000, 175000, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 575000, 0.77, 57500000),
(117, 'retail', 'kano', 1500000, 1050000, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0, 450000, 0.3, 45000000),
(118, 'manufacturing', 'kano', 1500000, 500000, 1, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1000000, 0.67, 100000000),
(119, 'manufacturing', 'kano', 750000, 500000, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 250000, 0.33, 25000000),
(120, 'manufacturing', 'lagos', 1500000, 1050000, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 450000, 0.3, 45000000),
(121, 'retail', 'lagos', 50000, 30000, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 20000, 0.4, 2000000),
(122, 'services', 'lagos', 1500000, 175000, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1325000, 0.88, 132500000),
(123, 'retail', 'port_harcourt', 300000, 1050000, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, -750000, -2.5, -75000000),
(124, 'retail', 'port_harcourt', 1500000, 1050000, 1, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 450000, 0.3, 45000000),
(125, 'retail', 'port_harcourt', 300000, 500000, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, -200000, -0.67, -20000000),
(126, 'manufacturing', 'port_harcourt', 1500000, 30000, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1470000, 0.98, 147000000),
(127, 'manufacturing', 'port_harcourt', 1500000, 175000, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1325000, 0.88, 132500000),
(128, 'manufacturing', 'port_harcourt', 1500000, 175000, 1, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1325000, 0.88, 132500000),
(129, 'services', 'port_harcourt', 750000, 1050000, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, -300000, -0.4, -30000000),
(130, 'retail', 'port_harcourt', 1500000, 500000, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1000000, 0.67, 100000000),
(131, 'retail', 'port_harcourt', 750000, 1050000, 1, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, -300000, -0.4, -30000000),
(132, 'manufacturing', 'port_harcourt', 1500000, 175000, 0, 1, 0, 1, 1, 0, 0, 0, 1, 0, 0, 1325000, 0.88, 132500000),
(133, 'manufacturing', 'port_harcourt', 1500000, 1050000, 0, 1, 1, 1, 0, 0, 1, 0, 1, 0, 0, 450000, 0.3, 45000000),
(134, 'retail', 'port_harcourt', 1500000, 175000, 1, 1, 1, 0, 0, 0, 1, 0, 0, 1, 1, 1325000, 0.88, 132500000),
(135, 'manufacturing', 'port_harcourt', 1500000, 500000, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 0, 1000000, 0.67, 100000000),
(136, 'retail', 'port_harcourt', 300000, 175000, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 125000, 0.42, 12500000),
(137, 'manufacturing', 'kano', 750000, 1050000, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, -300000, -0.4, -30000000),
(138, 'retail', 'port_harcourt', 1500000, 1050000, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 450000, 0.3, 45000000),
(139, 'manufacturing', 'kano', 750000, 1050000, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, -300000, -0.4, -30000000),
(140, 'manufacturing', 'kano', 1500000, 1050000, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 450000, 0.3, 45000000),
(141, 'manufacturing', 'kano', 1500000, 1050000, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 450000, 0.3, 45000000),
(142, 'services', 'kano', 300000, 175000, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 125000, 0.42, 12500000),
(143, 'services', 'kano', 50000, 175000, 0, 1, 0, 1, 1, 0, 1, 1, 0, 0, 0, -125000, -2.5, -12500000),
(144, 'retail', 'port_harcourt', 300000, 500000, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, -200000, -0.67, -20000000),
(145, 'retail', 'port_harcourt', 300000, 30000, 0, 1, 0, 1, 1, 0, 0, 0, 1, 0, 0, 270000, 0.9, 27000000),
(146, 'services', 'port_harcourt', 750000, 500000, 0, 1, 1, 0, 1, 0, 0, 1, 0, 1, 0, 250000, 0.33, 25000000),
(147, 'manufacturing', 'port_harcourt', 1500000, 30000, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1470000, 0.98, 147000000),
(148, 'services', 'port_harcourt', 300000, 500000, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, -200000, -0.67, -20000000),
(149, 'manufacturing', 'port_harcourt', 300000, 30000, 0, 1, 0, 1, 1, 0, 1, 0, 1, 1, 0, 270000, 0.9, 27000000),
(150, 'retail', 'port_harcourt', 1500000, 500000, 0, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1000000, 0.67, 100000000),
(151, 'services', 'kano', 750000, 1050000, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 0, -300000, -0.4, -30000000),
(152, 'retail', 'lagos', 50000, 30000, 0, 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 20000, 0.4, 2000000),
(153, 'manufacturing', 'port_harcourt', 750000, 30000, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 720000, 0.96, 72000000),
(154, 'manufacturing', 'port_harcourt', 300000, 500000, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, -200000, -0.67, -20000000),
(155, 'manufacturing', 'port_harcourt', 750000, 500000, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 250000, 0.33, 25000000),
(156, 'retail', 'port_harcourt', 750000, 175000, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 0, 575000, 0.77, 57500000),
(157, 'services', 'kano', 750000, 175000, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 575000, 0.77, 57500000),
(158, 'retail', 'kano', 300000, 30000, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 270000, 0.9, 27000000),
(159, 'manufacturing', 'kano', 300000, 175000, 1, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 125000, 0.42, 12500000),
(160, 'manufacturing', 'port_harcourt', 1500000, 175000, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1325000, 0.88, 132500000),
(161, 'services', 'port_harcourt', 50000, 175000, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, -125000, -2.5, -12500000),
(162, 'retail', 'port_harcourt', 300000, 175000, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 125000, 0.42, 12500000),
(163, 'retail', 'port_harcourt', 300000, 30000, 1, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 270000, 0.9, 27000000),
(164, 'retail', 'port_harcourt', 1500000, 30000, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1470000, 0.98, 147000000),
(165, 'retail', 'kano', 750000, 175000, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 575000, 0.77, 57500000),
(166, 'services', 'lagos', 750000, 175000, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 575000, 0.77, 57500000);

-- --------------------------------------------------------

--
-- Stand-in structure for view `business_performance_metrics`
-- (See below for the actual view)
--
CREATE TABLE `business_performance_metrics` (
`Business_Type` varchar(50)
,`Avg_Revenue` double(19,2)
,`Min_Revenue` float
,`Max_Revenue` float
,`Total_Revenue` double
,`Avg_Expenses` double(19,2)
,`Percent_Rent` decimal(16,2)
,`Percent_Salaries` decimal(16,2)
,`Percent_Inventory` decimal(16,2)
,`Percent_Marketing` decimal(16,2)
,`Percent_Power_Supply` decimal(16,2)
,`Percent_Others` decimal(16,2)
,`Percent_Power_Supply_Issues` decimal(16,2)
,`Percent_Access_to_Credit` decimal(16,2)
,`Percent_High_Taxes` decimal(16,2)
,`Percent_High_Rent_Costs` decimal(16,2)
,`Percent_Competition` decimal(16,2)
,`Business_Count` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `common_challenges_by_business_location`
-- (See below for the actual view)
--
CREATE TABLE `common_challenges_by_business_location` (
`Business_Location` varchar(50)
,`Power_Percentage` decimal(36,0)
,`Rent_Percentage` decimal(36,0)
,`Competition_Percentage` decimal(36,0)
,`Credit_Percentage` decimal(36,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `common_challenges_by_frequency_view`
-- (See below for the actual view)
--
CREATE TABLE `common_challenges_by_frequency_view` (
`Power_Supply_Issues_Count` decimal(32,0)
,`Access_to_Credit_Count` decimal(32,0)
,`High_Taxes_Count` decimal(32,0)
,`High_Rent_Costs_Count` decimal(32,0)
,`Competition_Count` decimal(32,0)
,`Power_Supply_Issues_Pct` decimal(40,5)
,`Access_to_Credit_Pct` decimal(40,5)
,`High_Taxes_Pct` decimal(40,5)
,`High_Rent_Costs_Pct` decimal(40,5)
,`Competition_Pct` decimal(40,5)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `growth_rate`
-- (See below for the actual view)
--
CREATE TABLE `growth_rate` (
`id` float
,`business_type` varchar(50)
,`business_location` varchar(50)
,`current_revenue` float
,`growth_rate` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `profit_margin_view`
-- (See below for the actual view)
--
CREATE TABLE `profit_margin_view` (
`Id` float
,`Business_Type` varchar(50)
,`Business_Location` varchar(50)
,`Revenue_Midpoint` float
,`Profit` float
,`Provided_Profit_Margin` float
,`Calculated_Profit_Margin` double(19,2)
);

-- --------------------------------------------------------

--
-- Structure for view `average_kpis_by_business_location`
--
DROP TABLE IF EXISTS `average_kpis_by_business_location`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `average_kpis_by_business_location`  AS SELECT `business_data`.`Business_Location` AS `Business_Location`, round(sum(`business_data`.`Power_Supply_Issues`) * 100.0 / count(0),0) AS `Power_Percentage`, round(sum(`business_data`.`High_Rent_Costs`) * 100.0 / count(0),0) AS `Rent_Percentage`, round(sum(`business_data`.`Competition`) * 100.0 / count(0),0) AS `Competition_Percentage`, round(sum(`business_data`.`Access_to_Credit`) * 100.0 / count(0),0) AS `Credit_Percentage` FROM `business_data` GROUP BY `business_data`.`Business_Location` ORDER BY `business_data`.`Business_Location` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `business_performance_metrics`
--
DROP TABLE IF EXISTS `business_performance_metrics`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `business_performance_metrics`  AS SELECT `business_data`.`Business_Type` AS `Business_Type`, round(avg(`business_data`.`Revenue_Midpoint`),2) AS `Avg_Revenue`, min(`business_data`.`Revenue_Midpoint`) AS `Min_Revenue`, max(`business_data`.`Revenue_Midpoint`) AS `Max_Revenue`, sum(`business_data`.`Revenue_Midpoint`) AS `Total_Revenue`, round(avg(`business_data`.`Expenses_Midpoint`),2) AS `Avg_Expenses`, round(avg(`business_data`.`Rent`) * 100,2) AS `Percent_Rent`, round(avg(`business_data`.`Salaries`) * 100,2) AS `Percent_Salaries`, round(avg(`business_data`.`Inventory`) * 100,2) AS `Percent_Inventory`, round(avg(`business_data`.`Marketing`) * 100,2) AS `Percent_Marketing`, round(avg(`business_data`.`Power_Supply`) * 100,2) AS `Percent_Power_Supply`, round(avg(`business_data`.`Others`) * 100,2) AS `Percent_Others`, round(avg(`business_data`.`Power_Supply_Issues`) * 100,2) AS `Percent_Power_Supply_Issues`, round(avg(`business_data`.`Access_to_Credit`) * 100,2) AS `Percent_Access_to_Credit`, round(avg(`business_data`.`High_Taxes`) * 100,2) AS `Percent_High_Taxes`, round(avg(`business_data`.`High_Rent_Costs`) * 100,2) AS `Percent_High_Rent_Costs`, round(avg(`business_data`.`Competition`) * 100,2) AS `Percent_Competition`, count(0) AS `Business_Count` FROM `business_data` GROUP BY `business_data`.`Business_Type` ORDER BY `business_data`.`Business_Type` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `common_challenges_by_business_location`
--
DROP TABLE IF EXISTS `common_challenges_by_business_location`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `common_challenges_by_business_location`  AS SELECT `business_data`.`Business_Location` AS `Business_Location`, round(sum(`business_data`.`Power_Supply_Issues`) * 100.0 / count(0),0) AS `Power_Percentage`, round(sum(`business_data`.`High_Rent_Costs`) * 100.0 / count(0),0) AS `Rent_Percentage`, round(sum(`business_data`.`Competition`) * 100.0 / count(0),0) AS `Competition_Percentage`, round(sum(`business_data`.`Access_to_Credit`) * 100.0 / count(0),0) AS `Credit_Percentage` FROM `business_data` GROUP BY `business_data`.`Business_Location` ORDER BY `business_data`.`Business_Location` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `common_challenges_by_frequency_view`
--
DROP TABLE IF EXISTS `common_challenges_by_frequency_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `common_challenges_by_frequency_view`  AS SELECT sum(`business_data`.`Power_Supply_Issues`) AS `Power_Supply_Issues_Count`, sum(`business_data`.`Access_to_Credit`) AS `Access_to_Credit_Count`, sum(`business_data`.`High_Taxes`) AS `High_Taxes_Count`, sum(`business_data`.`High_Rent_Costs`) AS `High_Rent_Costs_Count`, sum(`business_data`.`Competition`) AS `Competition_Count`, sum(`business_data`.`Power_Supply_Issues`) * 100.0 / count(0) AS `Power_Supply_Issues_Pct`, sum(`business_data`.`Access_to_Credit`) * 100.0 / count(0) AS `Access_to_Credit_Pct`, sum(`business_data`.`High_Taxes`) * 100.0 / count(0) AS `High_Taxes_Pct`, sum(`business_data`.`High_Rent_Costs`) * 100.0 / count(0) AS `High_Rent_Costs_Pct`, sum(`business_data`.`Competition`) * 100.0 / count(0) AS `Competition_Pct` FROM `business_data` ;

-- --------------------------------------------------------

--
-- Structure for view `growth_rate`
--
DROP TABLE IF EXISTS `growth_rate`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `growth_rate`  AS SELECT `business_data`.`Id` AS `id`, `business_data`.`Business_Type` AS `business_type`, `business_data`.`Business_Location` AS `business_location`, `business_data`.`Revenue_Midpoint` AS `current_revenue`, (`business_data`.`Revenue_Midpoint` - `business_data`.`Expenses_Midpoint`) * 1.0 / `business_data`.`Expenses_Midpoint` * 100 AS `growth_rate` FROM `business_data` WHERE `business_data`.`Expenses_Midpoint` is not null ;

-- --------------------------------------------------------

--
-- Structure for view `profit_margin_view`
--
DROP TABLE IF EXISTS `profit_margin_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `profit_margin_view`  AS SELECT `business_data`.`Id` AS `Id`, `business_data`.`Business_Type` AS `Business_Type`, `business_data`.`Business_Location` AS `Business_Location`, `business_data`.`Revenue_Midpoint` AS `Revenue_Midpoint`, `business_data`.`Profit` AS `Profit`, `business_data`.`Profit_Margin` AS `Provided_Profit_Margin`, CASE WHEN `business_data`.`Revenue_Midpoint` = 0 THEN NULL ELSE round(cast(`business_data`.`Profit` as float) / `business_data`.`Revenue_Midpoint`,2) END AS `Calculated_Profit_Margin` FROM `business_data` ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
