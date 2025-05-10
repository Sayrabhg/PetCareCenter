-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2025 at 07:41 PM
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
-- Database: `pet_care_center`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `contact` ()   BEGIN
    SELECT branch_location, contact_no FROM branch;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `adaptability`
--

CREATE TABLE `adaptability` (
  `id_no` int(5) NOT NULL DEFAULT 0,
  `adaptability` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `adaptability`
--

INSERT INTO `adaptability` (`id_no`, `adaptability`) VALUES
(141, 'cold'),
(141, 'Moderate'),
(142, 'Moderate'),
(143, 'Moderate'),
(144, 'Moderate'),
(145, 'Moderate'),
(146, 'Cold'),
(147, 'Moderate'),
(148, 'Moderate'),
(149, 'High Temperature'),
(150, 'Moderate'),
(151, 'High Temperature'),
(151, 'Moderate'),
(152, 'Moderate'),
(153, 'Moderate'),
(154, 'Cold'),
(154, 'Moderate'),
(155, 'Moderate'),
(156, 'Moderate'),
(157, 'Moderate'),
(158, 'Moderate'),
(159, 'Moderate'),
(160, 'Moderate'),
(161, 'Moderate'),
(162, 'Moderate'),
(163, 'Moderate'),
(164, 'Moderate'),
(165, 'Moderate'),
(166, 'Moderate'),
(167, 'Moderate'),
(168, 'Cold'),
(168, 'Moderate'),
(169, 'cold'),
(170, 'Moderate');

-- --------------------------------------------------------

--
-- Table structure for table `adoption`
--

CREATE TABLE `adoption` (
  `cat_id` int(5) NOT NULL DEFAULT 0,
  `adoption_date` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `adoption`
--

INSERT INTO `adoption` (`cat_id`, `adoption_date`) VALUES
(49, '2024-04-18'),
(1001, '2024-04-18'),
(1002, '2024-04-18'),
(1003, '2024-04-18'),
(1004, '2024-04-18'),
(1005, '2024-04-18'),
(1006, '2024-04-18'),
(1008, '2024-04-18'),
(1009, '2024-04-18'),
(1010, '2024-04-18'),
(1011, '2024-04-18'),
(1012, '2024-04-18'),
(1016, '2024-04-18');

--
-- Triggers `adoption`
--
DELIMITER $$
CREATE TRIGGER `adoption_date` BEFORE INSERT ON `adoption` FOR EACH ROW set new.adoption_date=NOW()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `animals`
--

CREATE TABLE `animals` (
  `id_no` int(5) NOT NULL,
  `branch_id` int(5) DEFAULT NULL,
  `bcode` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `animals`
--

INSERT INTO `animals` (`id_no`, `branch_id`, `bcode`) VALUES
(141, 101, 'A1'),
(142, 101, 'A1'),
(143, 101, 'A1'),
(144, 101, 'A2'),
(145, 101, 'B1'),
(146, 101, 'D1'),
(147, 101, 'E1'),
(148, 101, 'F2'),
(149, 101, 'H2'),
(150, 102, 'A1'),
(151, 102, 'A2'),
(152, 103, 'C1'),
(153, 103, 'G1'),
(154, 103, 'G1'),
(155, 103, 'J1'),
(156, 104, 'B1'),
(157, 104, 'B2'),
(158, 104, 'C3'),
(159, 104, 'G1'),
(160, 104, 'H1'),
(161, 105, 'D2'),
(162, 105, 'B1'),
(163, 105, 'A1'),
(164, 105, 'I2'),
(165, 106, 'J2'),
(166, 106, 'I1'),
(167, 107, 'C2'),
(168, 108, 'D1'),
(169, 109, 'A1'),
(170, 110, 'F1');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int(5) NOT NULL,
  `branch_location` varchar(20) DEFAULT NULL,
  `mgr_id` int(5) DEFAULT NULL,
  `mgr_startdate` date DEFAULT NULL,
  `contact_no` bigint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_location`, `mgr_id`, `mgr_startdate`, `contact_no`) VALUES
(101, 'Jayanagar Bengaluru', 7, '2015-01-01', 9902830948),
(102, 'Shivmogga', 14, '2016-07-01', 7019724967),
(103, 'Udupi', 2, '2018-02-01', 9845328435),
(104, 'Ananthapura', 12, '2017-06-01', 9066965867),
(105, 'Tumkur', 15, '2017-09-01', 9902842899),
(106, 'Shirsi', 13, '2016-03-01', 7892841180),
(107, 'Kanakpura', 10, '2018-05-01', 8026531117),
(108, 'Uttaralli Bengaluru', 9, '2016-04-01', 8025731717),
(109, 'Mangalore', 4, '2018-01-01', 8553393363),
(110, 'Chikmangluru', 5, '2017-12-01', 8026484762);

-- --------------------------------------------------------

--
-- Table structure for table `breed`
--

CREATE TABLE `breed` (
  `species_no` int(5) DEFAULT NULL,
  `breed_code` varchar(5) NOT NULL,
  `bname` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `breed`
--

INSERT INTO `breed` (`species_no`, `breed_code`, `bname`) VALUES
(11, 'A1', 'Spotted Cat'),
(11, 'A2', 'Domestic short-haire'),
(12, 'B1', 'Indian paraiah dog'),
(12, 'B2', 'Pug'),
(13, 'C1', 'Ducks'),
(13, 'C2', 'Parrots'),
(13, 'C3', 'Pigeons'),
(14, 'D1', 'Rohu'),
(14, 'D2', 'Orangefin labeo'),
(15, 'E1', 'Deccani Sheep'),
(16, 'F1', 'Roborovski Hamsters'),
(16, 'F2', 'Djungarian Hamsters'),
(17, 'G1', 'Alaskan Rabbit'),
(18, 'H1', 'Red Sindhi'),
(18, 'H2', 'Domestic native cow'),
(19, 'I1', 'Marwari Horse'),
(19, 'I2', 'Kathyawari Horse'),
(20, 'J1', 'Audithia Turtle'),
(20, 'J2', 'Caspian pond Turtle');

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE `catalog` (
  `cat_id` int(5) NOT NULL,
  `id_no` int(5) DEFAULT NULL,
  `vaccinated` varchar(20) DEFAULT NULL,
  `location_found` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`cat_id`, `id_no`, `vaccinated`, `location_found`) VALUES
(1001, 141, 'yes', 'Centre'),
(1002, 142, 'yes', 'JP Nagar'),
(1003, 145, 'No', 'Jayanagar'),
(1004, 150, 'No', 'Tumkur'),
(1005, 154, 'Yes', 'chikmangaluru'),
(1006, 159, 'Yes', 'Kanakpura'),
(1007, 163, 'Yes', 'Shivmogga'),
(1008, 165, 'No', 'Shirsi'),
(1009, 167, 'yes', 'Ananthapura'),
(1010, 168, 'yes', 'Uttarahalli'),
(1011, 169, 'yes', 'Jayanagar'),
(1012, 170, 'yes', 'Jayanagar'),
(1013, 143, 'No', 'Jayanagar'),
(1014, 144, 'No', 'Jayanagar'),
(1015, 146, 'No', 'Jayanagar'),
(1016, 147, 'Yes', 'Jayanagar'),
(1017, 148, 'No', 'Jayanagar'),
(1018, 149, 'No', 'Jayanagar'),
(1019, 151, 'No', 'Uttarahalli'),
(1020, 152, 'No', 'Uttarahalli'),
(1021, 153, 'No', 'Uttarahalli'),
(1022, 155, 'No', 'Shirsi'),
(1023, 156, 'No', 'Uttarahalli'),
(1024, 157, 'No', 'Uttarahalli'),
(1025, 158, 'No', 'Kanakpura'),
(1026, 160, 'No', 'Mangalore'),
(1027, 161, 'No', 'Centre'),
(1028, 162, 'No', 'Shivmogga'),
(1029, 164, 'No', 'Tumkur'),
(1030, 166, 'No', 'Kundapura');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(200) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Breed` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `Name`, `Email`, `Mobile`, `Breed`, `Message`) VALUES
(1, 'Dikshita Sahare', 'dikshita@gmail.com', '09028830801', 'Other', 'Kitten'),
(2, 'Saurabh Bante', 'saurabhbante31@gmail.com', '902883080', 'Other', 'Yunno'),
(3, 'Bhushan Meshram', 'bhushanmeshram@12.gmail.com', '7212323218', 'Indian paraiah dog', 'Good Condition'),
(4, 'Swagati Pachare', 'swagatipachare12@gmail.com', '9977663536', 'Orangefin labeo', 'preety \r\n'),
(5, 'Chetna Sarode', 'chetnasarode@gmail.com', '9976382637', 'Domestic native cow', 'good health or in good condition'),
(6, 'Aniket Khapekar', 'anyakhapekar@gmai.com', '9977463527', 'Spotted Cat', 'in good condition'),
(7, 'Ganvir Tupte', 'ganvir@Yahoo.com', '9342726374', 'Red Sindhi', 'male '),
(8, 'Prakash Patkar', 'prkashPathkar@gmail.com', '9967236353', 'Kathyawari Horse', 'strong mode');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(5) NOT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `salary` int(8) DEFAULT NULL,
  `department` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `fname`, `lname`, `dob`, `address`, `salary`, `department`) VALUES
(1, 'Bhushan', 'Meshram', '2001-06-27', 'Nagpur', 50000, 'General Manager'),
(2, 'Aniket', 'Khapekar', '2001-03-27', 'Nagpur', 45000, 'Duty Doctor'),
(3, 'Swagati', 'Pachare', '2000-07-04', 'Nagpur', 45000, 'Duty Doctor'),
(4, 'Anuraag', 'Tiwari', '2004-09-09', 'Nagpur', 40000, 'Care Taker'),
(5, 'Saurabh', 'Bante', '2003-02-28', 'Nagpur', 70000, 'CEO'),
(6, 'Chetna', 'Sarode', '2002-12-15', 'Umred', 45000, 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user` varchar(20) NOT NULL,
  `pass` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user`, `pass`) VALUES
('Bhushan', 'Pass@123'),
('Saurabh', 'Pass@123');

-- --------------------------------------------------------

--
-- Table structure for table `other_healthcond`
--

CREATE TABLE `other_healthcond` (
  `cat_id` int(5) NOT NULL DEFAULT 0,
  `other_healthcond` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `other_healthcond`
--

INSERT INTO `other_healthcond` (`cat_id`, `other_healthcond`) VALUES
(1001, 'None'),
(1002, 'Anemia'),
(1005, 'Calcium Deficiency'),
(1006, 'BSE'),
(1007, 'Hindlegs handicapped'),
(1009, 'None'),
(1010, 'None'),
(1011, 'None'),
(1012, 'None'),
(1016, 'Eye infection');

-- --------------------------------------------------------

--
-- Table structure for table `species`
--

CREATE TABLE `species` (
  `species_no` int(5) NOT NULL,
  `species_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `species`
--

INSERT INTO `species` (`species_no`, `species_name`) VALUES
(11, 'Cats'),
(12, 'Dogs'),
(13, 'Birds'),
(14, 'Fishes'),
(15, 'Sheeps'),
(16, 'Hamsters'),
(17, 'Rabbits'),
(18, 'Cows'),
(19, 'Horses'),
(20, 'Turtles');

-- --------------------------------------------------------

--
-- Table structure for table `works_for`
--

CREATE TABLE `works_for` (
  `emp_id` int(5) NOT NULL DEFAULT 0,
  `branch_id` int(5) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `works_for`
--

INSERT INTO `works_for` (`emp_id`, `branch_id`) VALUES
(1, 108),
(2, 103),
(3, 106),
(4, 109),
(5, 110),
(6, 101),
(6, 108),
(7, 101),
(8, 107),
(9, 108),
(10, 107),
(11, 101),
(12, 104),
(13, 106),
(14, 102),
(15, 105);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adaptability`
--
ALTER TABLE `adaptability`
  ADD PRIMARY KEY (`id_no`,`adaptability`);

--
-- Indexes for table `adoption`
--
ALTER TABLE `adoption`
  ADD PRIMARY KEY (`cat_id`,`adoption_date`);

--
-- Indexes for table `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`id_no`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `bcode` (`bcode`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`),
  ADD KEY `mgr_id` (`mgr_id`);

--
-- Indexes for table `breed`
--
ALTER TABLE `breed`
  ADD PRIMARY KEY (`breed_code`),
  ADD KEY `species_no` (`species_no`);

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`cat_id`),
  ADD KEY `id_no` (`id_no`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `other_healthcond`
--
ALTER TABLE `other_healthcond`
  ADD PRIMARY KEY (`cat_id`,`other_healthcond`);

--
-- Indexes for table `species`
--
ALTER TABLE `species`
  ADD PRIMARY KEY (`species_no`);

--
-- Indexes for table `works_for`
--
ALTER TABLE `works_for`
  ADD PRIMARY KEY (`emp_id`,`branch_id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
