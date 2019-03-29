-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2018 at 02:31 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbdms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 06:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblblooddonars`
--

CREATE TABLE `tblblooddonars` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Message` mediumtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblblooddonars`
--

INSERT INTO `tblblooddonars` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Gender`, `Age`, `BloodGroup`, `Address`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Asmaul Hossna', '9999857868', 'asma@gmail.com', 'Female', 27, 'O+', 'Dhaka', 'Donating blood means helping people, that\'s why I want to donate blood.', '2017-12-05 14:14:16', 1),
(2, 'Kamal Pasha', '41241241241', 'kamal@dfdsf.com', 'Male', 34, 'O-', 'Chittagong', ' This page is such a helping hand.', '2017-12-05 14:48:11', 1),
(3, 'Zainul Mahmud', '42352352352', 'Zainul@gmail.com', 'Male', 23, 'A+', 'Halishohor', 'It\'s such a great opportunity for helping people and also getting help.', '2017-12-05 01:21:21', 1),
(4, 'Nazifa Zarin', '35345435345', 'nazifa@gmail.com', 'Female', 23, 'O+', 'Chittagong', 'It\'s such a helping tool.', '2017-12-05 01:21:42', 1),
(5, 'Sajeda Akhter', '8569855244', 'niiii@test.com', 'Female', 32, 'A-', 'Test Demo', 'It\'s a great opportunity to donate blood.', '2017-12-05 03:00:18', 1),
(6, 'Roshni Tasnim', '01823456712', 'roshni@gmail.com', 'Female', 22, 'A+', 'Chittagong', 'I want to donate blood because by doing this I can help many more lives.', '2018-02-19 17:10:58', 0),
(7, 'Tanzina Yousuf', '01723443215', 'tanzina@gmail.com', 'Female', 22, 'AB+', 'Chittagong', 'I think donating blood means living another life and saving another life.', '2018-02-19 17:35:00', 1),
(8, 'Muntajim Binte Yousuf', '01754312345', 'mun@gmail.com', 'Female', 27, 'A+', 'CRB, Chittagong', ' Donate blood, save lives.', '2018-02-22 08:07:12', 1),
(9, 'Roksana Islam', '01765434521', 'islam@gmail.com', 'Female', 35, 'O-', 'Dhaka', ' I can only be able to donate blood in my city.', '2018-03-21 18:09:32', 1),
(10, 'Tarek Hasan', '01524321235', 'tarek@gmail.com', 'Male', 23, 'B+', 'Barishal', ' I want to help people', '2018-03-21 18:23:32', 1),
(11, 'Moinul Ahmed', '01765456765', 'mahmed@gmail.com', 'Male', 25, 'A-', 'Chittagong', ' I want to donate blood', '2018-03-21 19:15:01', 1),
(12, 'Tasnuva Tazin', '01514323454', 'tasnuva@gmail.com', 'Female', 23, 'A+', 'Chittagong', ' I want to help people', '2018-03-21 19:44:08', 1),
(13, 'Munira Ahmed', '01543212345', 'mun1@gmail.com', 'Female', 23, 'B-', 'Chittagong', ' I want to help people.', '2018-03-22 04:43:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblbloodgroup`
--

CREATE TABLE `tblbloodgroup` (
  `id` int(11) NOT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbloodgroup`
--

INSERT INTO `tblbloodgroup` (`id`, `BloodGroup`, `PostingDate`) VALUES
(1, 'A+', '2018-03-20 16:40:39'),
(2, 'A-', '2018-03-20 16:40:57'),
(3, 'B+', '2018-03-20 16:41:11'),
(4, 'B-', '2018-03-20 16:41:23'),
(5, 'O+', '2018-03-20 16:41:40'),
(8, 'AB+', '2018-03-20 16:42:07'),
(9, 'AB-', '2018-03-20 16:42:18'),
(15, 'O-', '2018-03-22 04:46:44');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'BloodBud																								', 'bloodbud@gmail.com', '01523456543');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Roshni Tasnim', 'roshni@gmail.com', '01523421345', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley ', '2018-03-20 16:45:38', 1),
(2, 'Tanzina Yousuf ', 'tanzina@gmail.com', '01823454321', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley ', '2018-03-20 16:46:25', 1),
(3, 'Nazifa Zarin', 'nazifa@gmail.com', '01987645678', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley ', '2018-03-20 16:46:59', 1),
(4, 'Sajeda Akter', 'sajeda@gmail.com', '01765434565', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley ', '2018-03-20 16:47:35', NULL),
(5, 'Samiya Tasnim', 'samy@gmail.com', '01987734543', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley ', '2018-03-20 16:48:16', NULL),
(6, 'Hasina Begum', 'hasina@gmail.com', '01543223456', 'I need an emergency collection of O- blood. please contact with me as soon as possible.', '2018-03-21 19:24:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Emergency Contacts', 'donor', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">\r\n<pre style=\"color:white\"><h3>Dhaka Division</h3>\r\n\r\n<b>Shandhani Dhaka Medical College Branch</b>\r\nContact: 9668690,861674\r\n\r\n\r\n<b>Shandhani Dhaka Dental College Branch</b>\r\nContact: 9011887\r\n\r\n\r\n<b>Shandhani Bangladesh Medical College Unit (BMC)</b>\r\nContact: Phone No: 9124619, 9118202 Ext. - 430. Cell No: 0152-371531,0152-423441\r\nEmail: sandhani_bmc@yahoo.com\r\n\r\n\r\n<b>Retina Blood Bank Nowab Habibullah Road, Shahbag, Dhaka (Behind PG Hospital)</b>\r\nContact: 01614-606411, 02-9663853\r\n\r\n\r\n<b>Red Crescent Blood Bank</b>\r\nContact: 9116563, 8121497\r\n\r\n\r\n<b>Shandhani International Eye Bank</b>\r\nContact: 9124353,01190151480\r\n\r\n\r\n<b>Sir Salimullah College Blood Bank</b>\r\nContact: 7319123\r\n\r\n\r\n<b>Islami Bank Hospital Blood Bank</b>\r\nContact: 8317090,8321495\r\n\r\n\r\n<b>Quantum Foundation</b>\r\nContact: 9351969,8322987,9341441,8319377\r\n\r\n\r\n<h3>Chittagong Division</h3>\r\n\r\n<b>Chittagong Medical College, Chittagong</b>\r\nTel: 616891-94, 94616199 \r\n\r\n                                              \r\n<b>Fatema Begum Red Crescent Blood Center 395, Anderkilla, Chittagong</b>\r\nTel: 031-620685, 612395, 620926\r\n\r\n\r\n<b>Port Hospital Chittagong</b>\r\nTel: 502024\r\n\r\n\r\n<b>Railway Hospital Chittagong</b>\r\nTel: 720121-39\r\n\r\n\r\n<b>Sandhani Chittagong Medical College Unit, Chittagong</b>\r\nTel: 031-616625\r\n\r\n\r\n<h3>Rajshahi Division</h3>\r\n\r\n<b>Sandhani Rangpur Medical College Unit, Rangpur</b>\r\nTel: 52165180\r\n\r\n\r\n<b>Sandhani Bogra Shahid Ziaur Rahman Medical College Unit, Bogra</b> \r\nTel: 644-5100295\r\n\r\n\r\n<b>Sandhani Dinajpur Medical College Unit, Dinajpur</b>\r\nTel: 0531-4787\r\n\r\n\r\n<b>Sandhani Rajshahi Medical College Unit, Rajshahi</b>\r\nTel: 0721-52165180, 01721773080\r\n\r\n\r\n<b>Begum Tayeeba Mojumder Red Crescent Blood Centre Paharpur, Dinajpur</b>\r\nTel: 0531-64021\r\n\r\n\r\n<h3>Khulna Division</h3>\r\n\r\n<b>Sandhani Khulna Medical College Unit, Khulna</b>\r\nTel: 041-761509\r\n\r\n\r\n<b>Blood Bank Khulna</b>\r\nTel: 762006\r\n\r\n\r\n<h3>Sylhet Division</h3>\r\n\r\n<b>Sandhani Sylhet Osmani Medical College Unit, Sylhet </b>\r\nTel: 0821-710880\r\n\r\n</pre></span>'),
(3, 'Few Words', 'aboutus', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">\r\n<h3 style=\"color:#f67280\">Your Support Expands Our Abilities</h3>\r\n\r\n<p style=\"color:#f8b195\"><b>Donate in the lab</b>- Only the blood that is donated in the lab may be separated into different components. We are able to supply 400 units of blood if there is enough collection.</p>\r\n\r\n<p style=\"color:#f8b195\"><b>Host a blood camp</b>- If you are a part of any voluntary, social or professional organization, you can support by arranging blood donation awareness programs or blood camps or ‘Indomitable 19’ drive.</p>\r\n\r\n<p style=\"color:#f8b195\"><b>Work as a volunteers</b>- Take volunteer opportunities available at blood lab and camps. A great service for humanity will bring you immense joy and ultimate contentment.</p>\r\n\r\n<p style=\"color:#f8b195\"><b>Build your career</b>- If you want build a career with Quantum Voluntary Blood Donation Program, we welcome you. Send us your CV via email or post.</p>\r\n</span>						');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
