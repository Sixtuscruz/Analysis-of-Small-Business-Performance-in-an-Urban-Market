# Analysis of Small Business Performance in an Urban Market

## Project Overview

### Objective

This project evaluates the performance and challenges of small businesses in a Nigerian urban market (e.g., Lagos, Kano, and Port Harcourt). This study will assess revenue trends, expenses, customer demographics, and business challenges, providing insights to support small business growth.

## Data Collection 

### Methodology 
- In this project analysis, we used Kobo Toolbox to design and distribute surveys to small business owners.
- Dataset Size: A total number of 166 survey samples were collected from business owners in Nigeria; 41 in Lagos, 47 from Kano, and 78 from Port Harcourt.
- Business Types: Manufacturing(59), Retail(64), Services(43).
- Collected structured data on key business factors, including:

### Data Storage

- Store responses in SQL database for structured querying.
- Export data to Excel from MySQl for Preliminary analysis.

## Data Cleaning & Processing

- Excel: Remove duplicates, handle missing values, and normalize data.

[See Excel Data analysis here](https://github.com/user-attachments/files/19836300/Analysis_of_Small_Business_Performance_in_an_Urban_Market_-_all_versions_-_False_-_2025-03-27-23-07-13.xlsx)

  - SQL: Create tables and queries to filter, aggregate, and sort data.

[Uploa-- phpMyAdmin SQL Dump
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
ding business analysis.sql…]()

- Data Transformation: Convert categorical responses into numerical values where needed for better analysis.

## Data Analysis

### Tools used

- SQL: Query and filter data for trends and correlations.
- Excel: Perform calculations, pivot tables, and summary statistics.
- Datawrapper: Create dynamic visualizations for business performance insights.

### Explanatory Data Analysis(EDA)

EDA inludes exploring business performances questions, such as;

- What type of business do you operate?
- Where has this business been operating in the last decade?
- What is your avarage monthly revenue?
- What are your avarage monthly expenses?
- What are your top 3 expenses?
- What are the biggest challenges your business faces?
- What is the age group of your typical customers?
- What is the gender distribution of your customers?
- How often do your customers make purchases?
- What is the occupation of your customers?

#### Querying Dataset on MySQL

Here are some of the interesting codes/features i worked with:
```sql

Database set up:
CREATE DATABASE business_datab;

Table set up codes:

CREATE TABLE business_data (
    Id FLOAT,
    Business_Type VARCHAR(50),
    Business_Location VARCHAR(50),
    Revenue_Midpoint FLOAT,
    Expenses_Midpoint FLOAT,
    Rent INT,
    Salaries INT,
    Inventory INT,
    Marketing INT,
    Power_Supply INT,
    Others INT,
    Power_Supply_Issues INT,
    Access_to_Credit INT,
    High_Taxes INT,
    High_Rent_Costs INT,
    Competition INT,
    Profit FLOAT,
    Profit_Margin FLOAT,
    Growth_Rate FLOAT
);


Growth Rate codes:

SELECT 
    id,
    business_type,
    business_location,
    revenue_midpoint AS current_revenue,
    ((revenue_midpoint - expenses_midpoint) * 1.0 / expenses_midpoint) * 100 AS growth_rate
FROM business_data
WHERE expenses_midpoint IS NOT NULL;


Profit margin codes:

SELECT 
    Id,
    Business_Type,
    Business_Location,
    Revenue_Midpoint,
    Profit,
    Profit_Margin AS Provided_Profit_Margin,
    CASE 
        WHEN Revenue_Midpoint = 0 THEN NULL 
        ELSE ROUND(CAST(Profit AS FLOAT) / Revenue_Midpoint, 2) 
    END AS Calculated_Profit_Margin
FROM business_data;


Avarage KPIs by business Type codes:

SELECT 
    Business_Type,
    AVG(Profit_Margin) AS Avg_Profit_Margin,
    AVG(Growth_Rate) AS Avg_Growth_Rate,
    AVG(Revenue_Midpoint) AS Avg_Revenue,
    AVG(Expenses_Midpoint) AS Avg_Expenses
FROM business_data
GROUP BY Business_Type;

Common_challenges by frequency codes: 

SELECT 
    SUM(Power_Supply_Issues) AS Power_Supply_Issues_Count,
    SUM(Access_to_Credit) AS Access_to_Credit_Count,
    SUM(High_Taxes) AS High_Taxes_Count,
    SUM(High_Rent_Costs) AS High_Rent_Costs_Count,
    SUM(Competition) AS Competition_Count,
    (SUM(Power_Supply_Issues) * 100.0 / COUNT(*)) AS Power_Supply_Issues_Pct,
    (SUM(Access_to_Credit) * 100.0 / COUNT(*)) AS Access_to_Credit_Pct,
    (SUM(High_Taxes) * 100.0 / COUNT(*)) AS High_Taxes_Pct,
    (SUM(High_Rent_Costs) * 100.0 / COUNT(*)) AS High_Rent_Costs_Pct,
    (SUM(Competition) * 100.0 / COUNT(*)) AS Competition_Pct
FROM business_data;

common challenges by business location codes:

SELECT 
    Business_Location,
    ROUND(SUM(Power_Supply_Issues) * 100.0 / COUNT(*), 0) AS Power_Percentage,
    ROUND(SUM(High_Rent_Costs) * 100.0 / COUNT(*), 0) AS Rent_Percentage,
    ROUND(SUM(Competition) * 100.0 / COUNT(*), 0) AS Competition_Percentage,
    ROUND(SUM(Access_to_Credit) * 100.0 / COUNT(*), 0) AS Credit_Percentage
FROM 
    business_data
GROUP BY 
    Business_Location
ORDER BY 
    Business_Location;


Business performance metrics codes:

SELECT 
    Business_Type,
    ROUND(AVG(Revenue_Midpoint), 2) AS Avg_Revenue,
    MIN(Revenue_Midpoint) AS Min_Revenue,
    MAX(Revenue_Midpoint) AS Max_Revenue,
    SUM(Revenue_Midpoint) AS Total_Revenue,
    ROUND(AVG(Expenses_Midpoint), 2) AS Avg_Expenses,
    ROUND(AVG(Rent) * 100, 2) AS Percent_Rent,
    ROUND(AVG(Salaries) * 100, 2) AS Percent_Salaries,
    ROUND(AVG(Inventory) * 100, 2) AS Percent_Inventory,
    ROUND(AVG(Marketing) * 100, 2) AS Percent_Marketing,
    ROUND(AVG(Power_Supply) * 100, 2) AS Percent_Power_Supply,
    ROUND(AVG(Others) * 100, 2) AS Percent_Others,
    ROUND(AVG(Power_Supply_Issues) * 100, 2) AS Percent_Power_Supply_Issues,
    ROUND(AVG(Access_to_Credit) * 100, 2) AS Percent_Access_to_Credit,
    ROUND(AVG(High_Taxes) * 100, 2) AS Percent_High_Taxes,
    ROUND(AVG(High_Rent_Costs) * 100, 2) AS Percent_High_Rent_Costs,
    ROUND(AVG(Competition) * 100, 2) AS Percent_Competition,
    COUNT(*) AS Business_Count
FROM business_data
GROUP BY Business_Type
ORDER BY Business_Type;
```

### Key Performance Indicators (KPIs)

#### 1. Profit Margin
Profit margin = (Revenue - Expenses) / Revenue. Since revenue and expenses are given in ranges, I’ll use midpoints for calculations:
- Revenue ranges: <100k (50k), 100k-500k (300k), 500k-1M (750k), >1M (1.5M assumed).
- Expense ranges: <50k (30k), 50k-300k (175k), 300k-700k (500k), >700k (1.50k assumed).

*Sample Calculation:*
- Business 1 (Retail, Lagos): Revenue = 300k, Expenses = 500k → Profit = 300k - 500k = -200k, Margin = -66.7% (loss).
- Business 4 (Manufacturing, Lagos): Revenue = 1.5M, Expenses = 175k → Profit = 1.325M, Margin = 88.3%.

Findings: 
*Profit margin by business type*
- Manufacturing (31.9%).
- Retail (27.7%).
- Services (18.94%).

![profit margin by business type](https://github.com/user-attachments/assets/a50796c2-4cb1-44be-b6ef-712a840ea9eb)

*Profit margin by business location*
- Kano (23.13%).
- Lagos (19.89%).
- Port Harcourt (35.52%).


![profit margin by business location](https://github.com/user-attachments/assets/7f91d6ec-e172-411b-849c-b14247007fc2)


#### 2. Expense Distribution
- *Expense Breakdown:*
  - <50k: 52 (31%).
  - 50k-300k: 48 (29%).
  - 300k-700k: 29 (17%).
  - >700k: 37 (22%).
- *Top Expenses (Frequency):*
  - Rent: 111 (66%).
  - Salaries: 112 (67%).
  - Marketing: 108 (65%).
  - Power Supply: 124 (74%).
  - Inventory: 33 (19%).
  - Others: 12 (7%, e.g., food, feeding, shortage of workers).

#### 3. Common Challenges
- *Challenge Frequency:*
  - Power Supply Issues: 139 (83%) – most pervasive.
  - High Rent Costs: 63 (37%).
  - Competition: 55 (33%).
  - Access to Credit: 35 (21%).
  - High Taxes: 33 (19%).
- *By Location:*
  - Lagos: Power (92.7%), Rent (46.3%), Competition (19.5%).
  - Kano: Power (83%), Competition (36.2%), Rent (38.3%).
  - Port Harcourt: Power (79.5%), Rent (33.3%), Access to Credit (25.6%).
 
#### 4. Growth Rate by business location
- *Breakdown:*
  - Lagos: 41 (1,926,500,000).
  - Kano: 47 (2,490,500,000).
  - Port Harcourt: 78 (3,977,000,000).

### Analysis by Business Type and Location
- *Retail:*
  - Revenue: Often <500k (54%), struggles with profitability.
  - Challenges: Power (91%), Rent (41%).
  - Customers: Younger (18-35, 70%), daily purchases (67%).
- *Manufacturing:*
  - Revenue: High (>1M, 55%), better margins.
  - Challenges: Power (91%), Rent (31%).
  - Customers: Older (36-50, 47%), occasional/weekly purchases.
- *Services:*
  - Revenue: Mixed (500k-1M, 35%), moderate margins.
  - Challenges: Power (86%), Rent (28%).
  - Customers: Balanced age, daily purchases (58%).

- *Lagos:*
  - High revenue (41% >1M), manufacturing-driven.
  - Power and rent dominate challenges.
- *Kano:*
  - Polarized revenue, strong student customer base.
  - Power and competition key issues.
- *Port Harcourt:*
  - Mixed performance, more credit access issues.

## Findings
- *Average Profit Margin by Type:*
  - Retail: ~10% (many low-revenue businesses report losses).
  - Manufacturing: ~40% (higher revenue, moderate expenses).
  - Services: ~25% (balanced revenue and expenses).
- *By Location:*
  - Lagos: ~30% (driven by high-revenue manufacturing).
  - Kano: ~20% (mixed performance).
  - Port Harcourt: ~15% (more losses in retail).

### Data Visualization

- Here, i'm going to use Datawrapper for visualization to create an interactive dashboard.
- This visualization will use a clustered column to visualize business performance metrics, such as revenue trends, expense breakdowns, and challenge distributions.
   - [download interactive dashboard here](https://datawrapper.dwcdn.net/5Rx2L/2)

  ![5Rx2L-business-performance-metrics](https://github.com/user-attachments/assets/c8269a6b-354a-4ad0-8e2c-32a6fefb7bc5)












