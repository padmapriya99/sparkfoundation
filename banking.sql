-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2021 at 08:46 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banking`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `current_balance` float(10,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `current_balance`, `created_at`, `updated_at`) VALUES
(1, 'siva', 'siva@gmail.com', 400.00, '2021-10-18 06:57:33', '2021-10-18 06:57:33'),
(2, 'bhuvanesh', 'bhuvanesh@gmail.com', 500.00, '2021-10-18 06:57:33', '2021-10-18 06:57:33'),
(3, 'prathap', 'prathap@gmail.com', 500.00, '2021-10-18 06:58:30', '2021-10-18 06:58:30'),
(4, 'sasi', 'sasi@gmail.com', 500.00, '2021-10-18 06:58:30', '2021-10-18 06:58:30'),
(5, 'santhosh', 'santhosh@gmail.com', 500.00, '2021-10-18 06:59:07', '2021-10-18 06:59:07'),
(6, 'sathish', 'sathish@gmail.com', 500.00, '2021-10-18 06:59:07', '2021-10-18 06:59:07'),
(7, 'muthu', 'muthu@gmail.com', 500.00, '2021-10-18 06:59:55', '2021-10-18 06:59:55'),
(8, 'rahul', 'rahul@gmail.com', 500.00, '2021-10-18 06:59:55', '2021-10-18 06:59:55'),
(9, 'mani', 'mani@gmail.com', 500.00, '2021-10-18 07:01:37', '2021-10-18 07:01:37'),
(10, 'raj', 'raj@gmail.com', 500.00, '2021-10-18 07:01:37', '2021-10-18 07:01:37');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `trans_id` varchar(191) NOT NULL,
  `transfer_amt` float(10,2) NOT NULL,
  `transfer_to_name` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`id`, `cus_id`, `trans_id`, `transfer_amt`, `transfer_to_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'uXPbhFzCFG', 100.00, 'prathap', '2021-10-18 12:05:51', '2021-10-18 12:05:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
