-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2021 at 03:28 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `paperless_hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `applied`
--

CREATE TABLE IF NOT EXISTS `applied` (
  `Student_id` int(11) DEFAULT NULL,
  `Hostel_num` int(11) DEFAULT NULL,
  `Application_Status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `applied`
--

INSERT INTO `applied` (`Student_id`, `Hostel_num`, `Application_Status`) VALUES
(172120065, 2, 'Allotted'),
(172120015, 2, 'Allotted'),
(172120019, 4, 'Allotted'),
(172120006, 3, 'Allotted'),
(172120077, 2, 'All'),
(172120078, 2, 'Allotted'),
(172120003, 2, 'Allotted');

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE IF NOT EXISTS `fee` (
  `Student_id` varchar(11) DEFAULT NULL,
  `FEE_MONTH` varchar(10) DEFAULT NULL,
  `Fee_description` varchar(15) DEFAULT NULL,
  `fee_id` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fee`
--

INSERT INTO `fee` (`Student_id`, `FEE_MONTH`, `Fee_description`, `fee_id`) VALUES
('172120066', 'January', 'HOstel fee', '12345678'),
('172120065', 'January', 'Hostel fee', 'DU1234'),
('172120043', 'December', 'HOstel fee', 'DU123456'),
('172120077', 'January', 'Hostel fee', 'DU1236589'),
('172120015', 'June', 'Hostel fee', 'DU14562875'),
('172120015', 'June', 'Hostel fee', 'DU14562879'),
('172120052', 'January', 'Hostel fee', 'DU14789756'),
('172120065', 'January', 'Mess fee', 'DU345'),
('172120003', 'January', 'Hostel fee', 'DU67453'),
('172120078', 'January', 'Hostel fee', 'DU76895'),
('172120011', 'July', 'Hostel fee', 'DU785634'),
('172120006', 'July', 'Hostel fee', 'DU89675'),
('172120019', 'July', 'Hostel fee', 'DU9786'),
('1234', 'January', 'Hostel fee', 'DUYr5643');

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE IF NOT EXISTS `hostel` (
  `Hostel_num` int(11) NOT NULL DEFAULT '0',
  `No_of_rooms` int(3) DEFAULT NULL,
  `No_of_students` int(3) DEFAULT NULL,
  `Annual_expenses` int(8) DEFAULT NULL,
  `Warden_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`Hostel_num`, `No_of_rooms`, `No_of_students`, `Annual_expenses`, `Warden_id`) VALUES
(1, 100, 200, 500000, 1010),
(2, 150, 300, 800000, 1003),
(3, 200, 400, 1000000, 1004),
(4, 200, 400, 1000000, 1005),
(5, 200, 400, 1000000, 1006),
(6, 200, 400, 1000000, 1007),
(7, 500, 1000, 2000000, 1008),
(8, 300, 600, 1500000, 1009),
(9, 400, 400, 25000000, 1002),
(10, 250, 500, 1000000, 1001);

-- --------------------------------------------------------

--
-- Table structure for table `mess`
--

CREATE TABLE IF NOT EXISTS `mess` (
  `mess_id` varchar(30) NOT NULL,
  `Hostel_no` int(11) DEFAULT NULL,
  `Mess_incharge_id` int(11) DEFAULT NULL,
  `Monthly_charges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mess`
--

INSERT INTO `mess` (`mess_id`, `Hostel_no`, `Mess_incharge_id`, `Monthly_charges`) VALUES
('1-A', 1, 1011, 2500),
('1-B', 1, 1011, 2500),
('10-A', 10, 1012, 2500),
('10-B', 10, 1012, 2500),
('2-A', 2, 1013, 2500),
('2-B', 2, 1013, 2500),
('3-A', 3, 1014, 2200),
('3-B', 3, 1014, 2200),
('4-A', 4, 1015, 2500),
('4-B', 4, 1015, 2500),
('5-A', 5, 1016, 2500),
('5-B', 5, 1016, 2500),
('6-A', 6, 1017, 2500),
('6-B', 6, 1017, 2500),
('7-A', 7, 1018, 1800),
('7-B', 7, 1018, 1800),
('8-A', 8, 1019, 2500),
('8-B', 8, 1019, 2500),
('9-A', 9, 1020, 2500),
('9-B', 9, 1020, 2500),
('9-C', 9, 1020, 2500);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `room_id` varchar(30) NOT NULL,
  `Capacity` int(5) DEFAULT NULL,
  `Hostel_num` int(5) DEFAULT NULL,
  `Room_status` varchar(10) DEFAULT NULL,
  `vacant_seats` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `Capacity`, `Hostel_num`, `Room_status`, `vacant_seats`) VALUES
('2201', 2, 3, 'Vacant', 2),
('2232', 2, 5, 'Vacant', 1),
('A-7001', 3, 7, 'Vacant', 2),
('A-8026', 2, 8, 'Vacant', 1),
('A-9106', 1, 9, 'Not vacant', 0),
('B-10030', 2, 10, 'Not vacant', 0),
('B-3005', 2, 3, 'Not vacant', 0),
('B-9304', 1, 9, 'Vacant', 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `Emp_id` int(11) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Contact_no` varchar(11) DEFAULT NULL,
  `Designation` varchar(30) DEFAULT NULL,
  `Hostel_no` int(2) DEFAULT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(12) NOT NULL,
  `Gender` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Emp_id`, `Name`, `Address`, `Contact_no`, `Designation`, `Hostel_no`, `Email`, `Password`, `Gender`) VALUES
(1001, 'Dr. G.S. Sharma', '3/33 ,Manit Staff quarter,MANIT', '2147483647', 'Warden', 10, '', '', ''),
(1002, 'Dr. M.P/. Singh', '3/30 ,Manit Staff quarter,MANIT', '2147483647', 'Warden', 9, '', '', ''),
(1003, 'Dr. L.P. Singh', '2/25 ,Manit Staff quarter,MANIT', '2147483647', 'Warden', 2, '', '', ''),
(1004, 'Dr. Sachin Sharma', '3/21 ,Manit Staff quarter,MANIT', '2147483647', 'Warden', 3, '', '', ''),
(1005, 'Dr. Raja Subramanyam', '3/45 ,Manit Staff quarter,MANIT', '2147483647', 'Warden', 4, '', '', ''),
(1006, 'Dr. Lal Singh', '3/40 ,Manit Staff quarter,MANIT', '2135468790', 'Warden', 5, '', '', ''),
(1007, 'Dr. Raju Krishna', '2/32 ,Manit Staff quarter,MANIT', '2147483647', 'Warden', 6, '', '', ''),
(1008, 'Dr. Mina Kumari', '7/45 ,Manit Staff quarter,MANIT', '1234567890', 'Warden', 7, '', '', ''),
(1009, 'Dr. Arjun Singh', '4/45 ,Manit Staff quarter,MANIT', '2147483647', 'Warden', 8, '', '', ''),
(1010, 'Dr. Surya Sharma', '1/45 ,Manit Staff quarter,MANIT', '2147483647', 'Warden', 1, '', '', ''),
(1011, 'Amit Sharma', 'Vaishali Nagar', '2147483647', 'Mess Incha', 1, '', '', ''),
(1012, 'Sandeep Acharya', 'Vaishali Nagar', '2147483647', 'Mess Incha', 10, '', '', ''),
(1013, 'Arun ', 'M.P. Nagar', '1236987450', 'Mess Incha', 2, '', '', ''),
(1014, 'Abhishek', 'T.T. Nagar', '2147483647', 'Mess Incha', 3, '', '', ''),
(1015, 'Devesh', 'Nehru Nagar', '2147483647', 'Mess Incha', 4, '', '', ''),
(1016, 'Krishna', 'Jawahar Chowk', '2147483647', 'Mess Incha', 5, '', '', ''),
(1017, 'Harshit', 'Kamla Nagar', '1236547890', 'Mess Incha', 6, '', '', ''),
(1018, 'Akhilesh', 'Kotra', '2147483647', 'Mess Incha', 7, '', '', ''),
(1019, 'Ashish', 'Arera Colony', '2147483647', 'Mess Incha', 8, '', '', ''),
(1020, 'Rajesh', 'Kamla Nagar', '1254789630', 'Mess Incha', 9, '', '', ''),
(12345, 'Ashu', NULL, NULL, NULL, NULL, 'ashu@gmail', '12345', 'male'),
(17212000, 'Ashish', 'BHU', '9999555522', 'Warden', NULL, 'ashish1@gmail.com', '12345', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `Student_id` int(9) NOT NULL,
  `Student_name` varchar(25) DEFAULT NULL,
  `Student_fathername` varchar(30) DEFAULT NULL,
  `Department` varchar(8) DEFAULT NULL,
  `room_id` varchar(30) DEFAULT NULL,
  `Contact_no` varchar(11) DEFAULT NULL,
  `DOB` varchar(20) DEFAULT NULL,
  `Hostel_building_no` int(4) DEFAULT NULL,
  `mess_id` varchar(30) DEFAULT NULL,
  `Allotment_date` varchar(20) DEFAULT NULL,
  `Address` varchar(70) DEFAULT NULL,
  `F_mob_no` varchar(10) DEFAULT NULL,
  `Image` varchar(50) DEFAULT NULL,
  `Email` varchar(25) NOT NULL,
  `Password` varchar(12) NOT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `City` varchar(12) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `Pin` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_id`, `Student_name`, `Student_fathername`, `Department`, `room_id`, `Contact_no`, `DOB`, `Hostel_building_no`, `mess_id`, `Allotment_date`, `Address`, `F_mob_no`, `Image`, `Email`, `Password`, `Gender`, `City`, `State`, `Pin`) VALUES
(1234, 'Anita Yadav', 'R K yadav', 'MCA', NULL, '456789152', '1998-11-05', 2, NULL, '2019-05-07', 'Muimbai', '856795648', 'hindi_160.jpg_480_480_0_64000_0_1_0.jpg', 'anita@gmail.com', '1234', 'female', 'Mumbai', 'Maharastra', '421201'),
(172120003, 'Abhishek Rajput', 'Jagdish Rajput', '', NULL, '', '2019-04-08', 2, NULL, '2019-04-09', 'Prempur', '9874561232', 'rajput.jpg', 'Abhi@gmail.com', '12345', 'male', 'Gwalior', 'M.P.', '564561'),
(172120006, 'Ankit', 'Mishra Ji', 'MCA', NULL, '7388565623', '1995-11-13', 3, NULL, '2019-04-08', 'Kanpur Dehat', '9956525223', 'ankit.jpg', 'ankit@gmail.com', '12345', 'male', 'Kanpur', 'U.P.', '221011'),
(172120011, 'Madhu Purty', 'Mr. Purty', 'MCA', NULL, '7778895645', '1996-02-06', 4, NULL, '2019-04-09', 'Jharkhnad', '9865327845', 'madhu.jpg', 'madhu@gmail.com', '12345', 'male', 'Jamshedpur', 'Jharkhand', '451245'),
(172120015, 'Muskan Rauniyar', 'Ashish ', 'MCA', NULL, '5212369878', '2012-08-11', 2, NULL, '2019-04-08', 'Balliya', '', 'muskan.jpg', 'muskan@gmail.com', '123456', 'male', 'Balliya', 'U.P.', '123456'),
(172120019, 'Vaibhaw', 'Mr. Agrawal', 'MCA ', NULL, '9595959595', '1997-09-21', 4, NULL, '2019-04-08', 'Near Kanpur centre Railways', '9898989565', '(117).JPG', 'vibhu@gmail.com', '12345', 'male', 'Kanpur', 'U.P.', '425146'),
(172120043, 'Vijeta Yadav', 'Mr. Harinarayan Ji Parmar', 'MCA', NULL, '9589896059', '1996-11-03', 7, NULL, '2020-12-09', 'Bhopal', '9589896059', 'WIN_20200104_17_09_52_Pro (2).jpg', 'vijetaparmar@gmail.com', 'Ashish143', 'female', 'Bhopal', 'Madhya Pradesh', '462013'),
(172120052, 'Aditya Jhamad', 'Rajendra Jhamad', 'MCA', NULL, '7772877745', '1997-04-19', NULL, NULL, NULL, 'Indore', '5467891238', '01.JPG', 'aditya@gmail.com', '12345', 'male', 'Indore', 'M.P.', '456789'),
(172120065, 'Ashish Yadav', 'R S Yadav', 'MCA', NULL, '9452525256', '1996-09-07', 2, NULL, '2019-04-08', 'BHU', '9999555522', 'PP0001.JPG', 'ashish@gmail.com', '12345', 'male', 'Varanasi', 'Uttar Pradesh', '221011'),
(172120066, 'Priya', 'Mr. asdfg', '', NULL, '9898989898', '2017-11-09', 7, NULL, '2020-12-09', 'qawertgyhujk', '9797979898', 'WIN_20200104_17_09_52_Pro (2).jpg', 'priyakumari@gmail.com', '172120066', 'female', 'aqwedrftgh', 'awsedrty', ''),
(172120077, 'Sunil', 'Metap Singh', 'MCA', NULL, '8076363506', '1996-09-11', 2, NULL, '2019-04-08', 'Delhi', '8529637412', 'sunil.jpg', 'sunil@gmail.com', '12345', 'male', 'Delhi', 'Delhi', '110096'),
(172120078, 'Sajal', 'Mr. Pandey Ji', 'MCA', NULL, '452542541', '2019-04-09', 2, NULL, '2019-04-08', 'Krishna Nagar', '9956261086', '1.jpg', 'sajal@gmail.com', '12345', 'male', 'Lucknow', 'U.P.', '451242'),
(172120079, 'Ayush Gupta', NULL, NULL, NULL, NULL, NULL, 3, NULL, '2019-04-09', NULL, NULL, NULL, 'ayush@gmail.com', '12345', 'male', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applied`
--
ALTER TABLE `applied`
  ADD KEY `fk_11_idx` (`Student_id`), ADD KEY `fk_12_idx` (`Hostel_num`);

--
-- Indexes for table `fee`
--
ALTER TABLE `fee`
  ADD PRIMARY KEY (`fee_id`);

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`Hostel_num`), ADD KEY `fk_1_idx` (`Warden_id`);

--
-- Indexes for table `mess`
--
ALTER TABLE `mess`
  ADD PRIMARY KEY (`mess_id`), ADD KEY `fk_3_idx` (`Hostel_no`), ADD KEY `fk_4_idx` (`Mess_incharge_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`), ADD KEY `fk_7_idx` (`Hostel_num`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`Emp_id`), ADD KEY `fk_2_idx` (`Hostel_no`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_id`), ADD KEY `fk_1_idx` (`Hostel_building_no`), ADD KEY `fk_10_idx` (`mess_id`), ADD KEY `fk_8_idx` (`room_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applied`
--
ALTER TABLE `applied`
ADD CONSTRAINT `fk_11` FOREIGN KEY (`Student_id`) REFERENCES `student` (`Student_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_12` FOREIGN KEY (`Hostel_num`) REFERENCES `hostel` (`Hostel_num`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hostel`
--
ALTER TABLE `hostel`
ADD CONSTRAINT `fk_1` FOREIGN KEY (`Warden_id`) REFERENCES `staff` (`Emp_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mess`
--
ALTER TABLE `mess`
ADD CONSTRAINT `fk_3` FOREIGN KEY (`Hostel_no`) REFERENCES `hostel` (`Hostel_num`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_4` FOREIGN KEY (`Mess_incharge_id`) REFERENCES `staff` (`Emp_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `room`
--
ALTER TABLE `room`
ADD CONSTRAINT `fk_7` FOREIGN KEY (`Hostel_num`) REFERENCES `hostel` (`Hostel_num`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
ADD CONSTRAINT `fk_2` FOREIGN KEY (`Hostel_no`) REFERENCES `hostel` (`Hostel_num`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
ADD CONSTRAINT `fk_10` FOREIGN KEY (`mess_id`) REFERENCES `mess` (`mess_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `fk_8` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_9` FOREIGN KEY (`Hostel_building_no`) REFERENCES `hostel` (`Hostel_num`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
