-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2024 at 04:05 PM
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
-- Database: `terminal`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_comments`
--

CREATE TABLE `account_comments` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account_comments`
--

INSERT INTO `account_comments` (`id`, `user`, `email`, `comments`) VALUES
(1, 'asd asd', 'asd@gmail.com', 'Your cancellation request for Dinajpur-Rangpur Date :2024-02-05 Time:9AM is pending now'),
(2, 'asd asd', '', 'No Incoming Messages'),
(3, 'asd asd', 'asdasd@gmsil.com', 'No Incoming Messages');

-- --------------------------------------------------------

--
-- Table structure for table `busbook`
--

CREATE TABLE `busbook` (
  `id` int(11) NOT NULL,
  `busno` varchar(255) NOT NULL,
  `seat` int(11) NOT NULL,
  `customer` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `busbook`
--

INSERT INTO `busbook` (`id`, `busno`, `seat`, `customer`, `email`, `mobile`, `address`, `date`, `time`, `price`) VALUES
(19, 'Dinajpur-Bogra', 1, 'asd asd', 'asd@gmail.com', '12312312312', 'asd', '2024-02-10', '9AM', '800'),
(20, 'Dinajpur-Bogra', 2, 'asd asd', 'asd@gmail.com', '12312312312', 'asd', '2024-02-10', '9AM', '800'),
(21, 'Dinajpur-Bogra', 5, 'asd asd', 'asd@gmail.com', '12312312312', 'asd', '2024-02-10', '9AM', '800'),
(22, 'Dinajpur-Bogra', 6, 'asd asd', 'asd@gmail.com', '12312312312', 'asd', '2024-02-10', '9AM', '800'),
(23, 'Dinajpur-Bogra', 7, 'asd asd', 'asdasd@gmsil.com', '12312312312', 'asd', '2024-02-10', '9AM', '600'),
(24, 'Dinajpur-Bogra', 8, 'asd asd', 'asdasd@gmsil.com', '12312312312', 'asd', '2024-02-10', '9AM', '600'),
(25, 'Dinajpur-Bogra', 12, 'asd asd', 'asdasd@gmsil.com', '12312312312', 'asd', '2024-02-10', '9AM', '600');

-- --------------------------------------------------------

--
-- Table structure for table `bus_schedule`
--

CREATE TABLE `bus_schedule` (
  `id` int(11) NOT NULL,
  `busno` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `seats_available` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus_schedule`
--

INSERT INTO `bus_schedule` (`id`, `busno`, `date`, `time`, `price`, `seats_available`) VALUES
(10, 'Dinajpur-Bogra', '2024-02-10', '9AM', '200', 33),
(11, 'Dinajpur-Rangpur', '2024-02-08', '9AM', '200', 40);

-- --------------------------------------------------------

--
-- Table structure for table `customer_account`
--

CREATE TABLE `customer_account` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `profession` varchar(255) NOT NULL,
  `birth_date` varchar(255) NOT NULL,
  `nid` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_account`
--

INSERT INTO `customer_account` (`id`, `fname`, `lname`, `user`, `profession`, `birth_date`, `nid`, `gender`, `email`, `mobile`, `password`, `location`) VALUES
(1, 'asd', 'asd', 'asd asd', 'asd', '2024-02-05', '123123123', 'Male', 'asd@gmail.com', '12312312312', 'asd@A222', 'asd'),
(2, 'asd', 'asd', 'asd asd', 'asd', '2024-02-05', '123123123', 'Male', '', '12312312312', 'asd@A222', 'asd'),
(3, 'asd', 'asd', 'asd asd', 'asd', '2024-02-08', '123', 'Male', 'asdasd@gmsil.com', '12312312312', 'asd@A222', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `deleted_accounts`
--

CREATE TABLE `deleted_accounts` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `my_receipt`
--

CREATE TABLE `my_receipt` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `busno` varchar(255) NOT NULL,
  `seatno` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `my_receipt`
--

INSERT INTO `my_receipt` (`id`, `email`, `busno`, `seatno`, `date`, `time`, `mobile`) VALUES
(3, 'asd@gmail.com', 'Dinajpur-Rangpur', 'S : 11, 10', '2024-02-08', '9AM', '12312312312'),
(4, 'asd@gmail.com', 'Dinajpur-Bogra', 'S : 2, 6, 10', '2024-02-08', '9AM', '12312312312'),
(5, '', 'Dinajpur-Rangpur', 'S : 5, 9, 13, 14', '2024-02-08', '9AM', '12312312312'),
(6, 'asd@gmail.com', 'Dinajpur-Bogra', 'S : 1, 2, 5, 6', '2024-02-10', '9AM', '12312312312'),
(7, 'asdasd@gmsil.com', 'Dinajpur-Bogra', 'S : 7, 8, 12', '2024-02-10', '9AM', '12312312312');

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `id` int(11) NOT NULL,
  `busno` varchar(255) NOT NULL,
  `seat` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`id`, `busno`, `seat`, `price`, `date`, `time`, `status`) VALUES
(401, 'Dinajpur-Bogra', 1, '200', '2024-02-10', '9AM', 'Seat_Reserved'),
(402, 'Dinajpur-Bogra', 2, '200', '2024-02-10', '9AM', 'Seat_Reserved'),
(403, 'Dinajpur-Bogra', 3, '200', '2024-02-10', '9AM', 'Unbooked'),
(404, 'Dinajpur-Bogra', 4, '200', '2024-02-10', '9AM', 'Unbooked'),
(405, 'Dinajpur-Bogra', 5, '200', '2024-02-10', '9AM', 'Seat_Reserved'),
(406, 'Dinajpur-Bogra', 6, '200', '2024-02-10', '9AM', 'Seat_Reserved'),
(407, 'Dinajpur-Bogra', 7, '200', '2024-02-10', '9AM', 'Seat_Reserved'),
(408, 'Dinajpur-Bogra', 8, '200', '2024-02-10', '9AM', 'Seat_Reserved'),
(409, 'Dinajpur-Bogra', 9, '200', '2024-02-10', '9AM', 'Unbooked'),
(410, 'Dinajpur-Bogra', 10, '200', '2024-02-10', '9AM', 'Unbooked'),
(411, 'Dinajpur-Bogra', 11, '200', '2024-02-10', '9AM', 'Unbooked'),
(412, 'Dinajpur-Bogra', 12, '200', '2024-02-10', '9AM', 'Seat_Reserved'),
(413, 'Dinajpur-Bogra', 13, '200', '2024-02-10', '9AM', 'Unbooked'),
(414, 'Dinajpur-Bogra', 14, '200', '2024-02-10', '9AM', 'Unbooked'),
(415, 'Dinajpur-Bogra', 15, '200', '2024-02-10', '9AM', 'Unbooked'),
(416, 'Dinajpur-Bogra', 16, '200', '2024-02-10', '9AM', 'Unbooked'),
(417, 'Dinajpur-Bogra', 17, '200', '2024-02-10', '9AM', 'Unbooked'),
(418, 'Dinajpur-Bogra', 18, '200', '2024-02-10', '9AM', 'Unbooked'),
(419, 'Dinajpur-Bogra', 19, '200', '2024-02-10', '9AM', 'Unbooked'),
(420, 'Dinajpur-Bogra', 20, '200', '2024-02-10', '9AM', 'Unbooked'),
(421, 'Dinajpur-Bogra', 21, '200', '2024-02-10', '9AM', 'Unbooked'),
(422, 'Dinajpur-Bogra', 22, '200', '2024-02-10', '9AM', 'Unbooked'),
(423, 'Dinajpur-Bogra', 23, '200', '2024-02-10', '9AM', 'Unbooked'),
(424, 'Dinajpur-Bogra', 24, '200', '2024-02-10', '9AM', 'Unbooked'),
(425, 'Dinajpur-Bogra', 25, '200', '2024-02-10', '9AM', 'Unbooked'),
(426, 'Dinajpur-Bogra', 26, '200', '2024-02-10', '9AM', 'Unbooked'),
(427, 'Dinajpur-Bogra', 27, '200', '2024-02-10', '9AM', 'Unbooked'),
(428, 'Dinajpur-Bogra', 28, '200', '2024-02-10', '9AM', 'Unbooked'),
(429, 'Dinajpur-Bogra', 29, '200', '2024-02-10', '9AM', 'Unbooked'),
(430, 'Dinajpur-Bogra', 30, '200', '2024-02-10', '9AM', 'Unbooked'),
(431, 'Dinajpur-Bogra', 31, '200', '2024-02-10', '9AM', 'Unbooked'),
(432, 'Dinajpur-Bogra', 32, '200', '2024-02-10', '9AM', 'Unbooked'),
(433, 'Dinajpur-Bogra', 33, '200', '2024-02-10', '9AM', 'Unbooked'),
(434, 'Dinajpur-Bogra', 34, '200', '2024-02-10', '9AM', 'Unbooked'),
(435, 'Dinajpur-Bogra', 35, '200', '2024-02-10', '9AM', 'Unbooked'),
(436, 'Dinajpur-Bogra', 36, '200', '2024-02-10', '9AM', 'Unbooked'),
(437, 'Dinajpur-Bogra', 37, '200', '2024-02-10', '9AM', 'Unbooked'),
(438, 'Dinajpur-Bogra', 38, '200', '2024-02-10', '9AM', 'Unbooked'),
(439, 'Dinajpur-Bogra', 39, '200', '2024-02-10', '9AM', 'Unbooked'),
(440, 'Dinajpur-Bogra', 40, '200', '2024-02-10', '9AM', 'Unbooked'),
(441, 'Dinajpur-Rangpur', 1, '200', '2024-02-08', '9AM', 'Unbooked'),
(442, 'Dinajpur-Rangpur', 2, '200', '2024-02-08', '9AM', 'Unbooked'),
(443, 'Dinajpur-Rangpur', 3, '200', '2024-02-08', '9AM', 'Unbooked'),
(444, 'Dinajpur-Rangpur', 4, '200', '2024-02-08', '9AM', 'Unbooked'),
(445, 'Dinajpur-Rangpur', 5, '200', '2024-02-08', '9AM', 'Unbooked'),
(446, 'Dinajpur-Rangpur', 6, '200', '2024-02-08', '9AM', 'Unbooked'),
(447, 'Dinajpur-Rangpur', 7, '200', '2024-02-08', '9AM', 'Unbooked'),
(448, 'Dinajpur-Rangpur', 8, '200', '2024-02-08', '9AM', 'Unbooked'),
(449, 'Dinajpur-Rangpur', 9, '200', '2024-02-08', '9AM', 'Unbooked'),
(450, 'Dinajpur-Rangpur', 10, '200', '2024-02-08', '9AM', 'Unbooked'),
(451, 'Dinajpur-Rangpur', 11, '200', '2024-02-08', '9AM', 'Unbooked'),
(452, 'Dinajpur-Rangpur', 12, '200', '2024-02-08', '9AM', 'Unbooked'),
(453, 'Dinajpur-Rangpur', 13, '200', '2024-02-08', '9AM', 'Unbooked'),
(454, 'Dinajpur-Rangpur', 14, '200', '2024-02-08', '9AM', 'Unbooked'),
(455, 'Dinajpur-Rangpur', 15, '200', '2024-02-08', '9AM', 'Unbooked'),
(456, 'Dinajpur-Rangpur', 16, '200', '2024-02-08', '9AM', 'Unbooked'),
(457, 'Dinajpur-Rangpur', 17, '200', '2024-02-08', '9AM', 'Unbooked'),
(458, 'Dinajpur-Rangpur', 18, '200', '2024-02-08', '9AM', 'Unbooked'),
(459, 'Dinajpur-Rangpur', 19, '200', '2024-02-08', '9AM', 'Unbooked'),
(460, 'Dinajpur-Rangpur', 20, '200', '2024-02-08', '9AM', 'Unbooked'),
(461, 'Dinajpur-Rangpur', 21, '200', '2024-02-08', '9AM', 'Unbooked'),
(462, 'Dinajpur-Rangpur', 22, '200', '2024-02-08', '9AM', 'Unbooked'),
(463, 'Dinajpur-Rangpur', 23, '200', '2024-02-08', '9AM', 'Unbooked'),
(464, 'Dinajpur-Rangpur', 24, '200', '2024-02-08', '9AM', 'Unbooked'),
(465, 'Dinajpur-Rangpur', 25, '200', '2024-02-08', '9AM', 'Unbooked'),
(466, 'Dinajpur-Rangpur', 26, '200', '2024-02-08', '9AM', 'Unbooked'),
(467, 'Dinajpur-Rangpur', 27, '200', '2024-02-08', '9AM', 'Unbooked'),
(468, 'Dinajpur-Rangpur', 28, '200', '2024-02-08', '9AM', 'Unbooked'),
(469, 'Dinajpur-Rangpur', 29, '200', '2024-02-08', '9AM', 'Unbooked'),
(470, 'Dinajpur-Rangpur', 30, '200', '2024-02-08', '9AM', 'Unbooked'),
(471, 'Dinajpur-Rangpur', 31, '200', '2024-02-08', '9AM', 'Unbooked'),
(472, 'Dinajpur-Rangpur', 32, '200', '2024-02-08', '9AM', 'Unbooked'),
(473, 'Dinajpur-Rangpur', 33, '200', '2024-02-08', '9AM', 'Unbooked'),
(474, 'Dinajpur-Rangpur', 34, '200', '2024-02-08', '9AM', 'Unbooked'),
(475, 'Dinajpur-Rangpur', 35, '200', '2024-02-08', '9AM', 'Unbooked'),
(476, 'Dinajpur-Rangpur', 36, '200', '2024-02-08', '9AM', 'Unbooked'),
(477, 'Dinajpur-Rangpur', 37, '200', '2024-02-08', '9AM', 'Unbooked'),
(478, 'Dinajpur-Rangpur', 38, '200', '2024-02-08', '9AM', 'Unbooked'),
(479, 'Dinajpur-Rangpur', 39, '200', '2024-02-08', '9AM', 'Unbooked'),
(480, 'Dinajpur-Rangpur', 40, '200', '2024-02-08', '9AM', 'Unbooked');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_cancel`
--

CREATE TABLE `ticket_cancel` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `busno` varchar(255) NOT NULL,
  `seat` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `operator` varchar(255) NOT NULL,
  `card_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_comments`
--
ALTER TABLE `account_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `busbook`
--
ALTER TABLE `busbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_schedule`
--
ALTER TABLE `bus_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_account`
--
ALTER TABLE `customer_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deleted_accounts`
--
ALTER TABLE `deleted_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_receipt`
--
ALTER TABLE `my_receipt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_cancel`
--
ALTER TABLE `ticket_cancel`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_comments`
--
ALTER TABLE `account_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `busbook`
--
ALTER TABLE `busbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `bus_schedule`
--
ALTER TABLE `bus_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customer_account`
--
ALTER TABLE `customer_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `deleted_accounts`
--
ALTER TABLE `deleted_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `my_receipt`
--
ALTER TABLE `my_receipt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=481;

--
-- AUTO_INCREMENT for table `ticket_cancel`
--
ALTER TABLE `ticket_cancel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
