-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2018 at 08:57 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bccl`
--

-- --------------------------------------------------------

--
-- Table structure for table `allocation`
--

CREATE TABLE `allocation` (
  `pisno` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `sector` varchar(30) NOT NULL,
  `quarterno` varchar(50) NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `depn` int(11) NOT NULL,
  `empn` int(11) NOT NULL,
  `workplace` varchar(50) NOT NULL,
  `hodname` varchar(30) NOT NULL,
  `grade` varchar(20) DEFAULT NULL,
  `executivesgrade` varchar(20) DEFAULT NULL,
  `nonexecutivesgrade` varchar(20) DEFAULT NULL,
  `pisno` int(11) NOT NULL,
  `applicationno` int(11) NOT NULL,
  `dates` date NOT NULL,
  `times` time NOT NULL,
  `ip` varchar(16) NOT NULL,
  `approved_by_hod` char(1) NOT NULL,
  `approved_by_admin` text NOT NULL,
  `approved_by_director` text NOT NULL,
  `alloted` varchar(20) NOT NULL,
  `remarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`depn`, `empn`, `workplace`, `hodname`, `grade`, `executivesgrade`, `nonexecutivesgrade`, `pisno`, `applicationno`, `dates`, `times`, `ip`, `approved_by_hod`, `approved_by_admin`, `approved_by_director`, `alloted`, `remarks`) VALUES
(11111, 698758, 'erdzghhjzt', 'hghyzy', 'Executive', 'E3', '', 64876, 5, '0000-00-00', '20:20:05', '', '', '', '', '', ''),
(11111, 213251, 'shgshsshs', 'shgshgsg', 'Executive', 'E1', '', 158423, 20, '2018-06-12', '11:24:49', '::1', 'Y', '', '', '', ''),
(11111, 26278298, 'shgfsjs', 'sjhsjhs', 'Executive', 'E3', '', 252762, 4, '0000-00-00', '23:51:44', '', 'Y', '', '', '', ''),
(11111, 51548, 'hchuchc', 'jgcbuchc', 'Executive', 'E3', '', 321329, 23, '2018-06-12', '12:19:16', '::1', '', '', '', '', ''),
(11111, 65498, 'wkjniww', 'hgvu', 'Non Executive', '', 'Technician', 652698, 16, '2018-06-06', '01:46:42', '::1', '', '', '', '', ''),
(11111, 1654959, 'kshiss', 'sjhbsuhs', 'Non Executive', '', 'Supervisor', 2165498, 12, '2018-06-06', '01:40:19', '::1', '', '', '', '', ''),
(393839, 939333, 'sjsjsis', 'sjsjhsh', 'Executive', 'E4', '', 3983983, 3, '0000-00-00', '20:20:05', '', '', '', '', '', ''),
(656878, 65878, 'hahaiah', 'jaghvyga', 'Executive', 'E5', '', 7876979, 1, '0000-00-00', '20:20:05', '', 'Y', '', '', '', ''),
(11111, 76586797, 'zzzuziziyz', 'zuygzuyz', 'Non Executive', '', 'Technician', 9769787, 17, '2018-06-06', '01:51:47', '::1', 'Y', '', '', '', ''),
(43689, 7348, 'begkenl', 'vkjndgkk', 'Executive', 'E5', '', 12345678, 21, '2018-06-12', '11:52:38', '172.20.3.219', '', '', '', '', ''),
(11111, 66498, 'sytsusuys', 'sygsuysus', 'Non Executive', '', 'Technician', 27282862, 10, '2018-06-06', '01:36:55', '::1', '', '', '', '', ''),
(337393, 3873873, 'duhdbuhd', 'djhdjhd', 'Executive', 'E3', '', 47487484, 2, '0000-00-00', '20:20:05', '', '', '', '', '', ''),
(11111, 232165, 'snisusis', 'sygsuy', 'Non Executive', '', 'Supervisor', 56854656, 19, '2018-06-06', '01:54:07', '::1', 'Y', '', '', '', ''),
(7172827, 2782728, 'akjnkajakja', '11111', 'Non Executive', '', 'Supervisor', 87187171, 6, '2018-06-06', '01:33:11', '::1', '', '', '', '', ''),
(11111, 755869, 'sbfk', 'bfklfn', 'Executive', 'null', '', 152367458, 22, '2018-06-12', '11:54:56', '172.20.3.219', 'Y', 'Y', 'N', '', 'wrong pis'),
(11111, 2215546, 'wjhwjhwj', 'hgwhwgw', 'Non Executive', '', 'Supervisor', 2147483647, 7, '2018-06-06', '01:34:53', '::1', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `aadhar` varchar(50) NOT NULL,
  `joinletter` varchar(50) NOT NULL,
  `pisno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `pis` int(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `depn` int(11) DEFAULT NULL,
  `role` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`pis`, `password`, `depn`, `role`) VALUES
(12345, '$2y$10$FZTzjQWdjghoNs5Gmj0SoeKrCG/GJd70mGZWQEIHsUK3G.ulVxDRq', 0, 'master'),
(1234, '$2y$10$egMKfNtaf3pkQd1zQutKSeE3vEUqsb0KEfzIRUKnfDTkTCPcGgxyq', 0, 'admin'),
(123468, '$2y$10$n.cdvSYmuy2/r9Lq0cWb4uTgZPzs7./4By1TbHWA55.INVJEekKq2', 0, 'director'),
(1234567, '$2y$10$.1POYBg8iQz20Xtb33Bn3.tZ0H4VJAcHc5LXrG3eCPjDOjPGCvuPu', 11111, 'hod');

-- --------------------------------------------------------

--
-- Table structure for table `pagedetail`
--

CREATE TABLE `pagedetail` (
  `pageno` int(11) NOT NULL,
  `page-detail` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quarter`
--

CREATE TABLE `quarter` (
  `type` varchar(20) NOT NULL,
  `sector` varchar(20) NOT NULL,
  `conditions` varchar(20) NOT NULL,
  `vaccancy` varchar(20) NOT NULL,
  `quarterno` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quarter`
--

INSERT INTO `quarter` (`type`, `sector`, `conditions`, `vaccancy`, `quarterno`) VALUES
('A', 'sector-1', 'good', 'vaccant', '1'),
('B', 'sector-1', 'good', 'vaccant', '1'),
('C', 'sector-1', 'good', 'vaccant', '1'),
('A', 'sector-1', 'good', 'vaccant', '2'),
('A', 'sector-2', 'good', 'vaccant', '3');

-- --------------------------------------------------------

--
-- Table structure for table `useraccess`
--

CREATE TABLE `useraccess` (
  `pisno` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `1` varchar(10) NOT NULL,
  `2` varchar(10) NOT NULL,
  `3` varchar(10) NOT NULL,
  `4` varchar(10) NOT NULL,
  `5` varchar(10) NOT NULL,
  `6` varchar(10) NOT NULL,
  `7` varchar(10) NOT NULL,
  `8` varchar(10) NOT NULL,
  `9` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userdetail`
--

CREATE TABLE `userdetail` (
  `name` text,
  `fathername` text,
  `position` varchar(20) DEFAULT NULL,
  `division` varchar(30) DEFAULT NULL,
  `directorate` varchar(30) DEFAULT NULL,
  `appointmentdate` date DEFAULT NULL,
  `joiningdate` date DEFAULT NULL,
  `currentcategory` varchar(30) DEFAULT NULL,
  `salary` float DEFAULT NULL,
  `pisno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userdetail`
--

INSERT INTO `userdetail` (`name`, `fathername`, `position`, `division`, `directorate`, `appointmentdate`, `joiningdate`, `currentcategory`, `salary`, `pisno`) VALUES
('qqqqqq', 'qqwwww', 'qqqqq', '2982982', '2018-06-01', '2018-06-23', '0000-00-00', '87187171', 0, 0),
('aditi', 'sbjs', 'susuyisus', 'siysiysys', 'suysuysiys', '2018-06-01', '2018-06-09', 'sgvssu', 123468, 158423),
('Vivek kumar', 'whgwhgw', 'tfuyid', 'djhdhd', 'djvdj', '2018-05-02', '2018-05-11', 'sjhsjhs', 262872, 252762),
('uuxyg', 'cuhbuchc', 'uhbcuhc', 'chbcu', 'cijnci', '2018-06-07', '2018-06-09', 'ucuchuc', 67675, 321329),
('sb djdj', 'diijdijd', 'dijndis', 'aiua9ia', 'auyha9ua', '2018-05-08', '2018-05-23', 'fjfjfj', 498494, 3983983),
('hggvugs', 'sihusuhs', 'sugvsus', 'sutfsuts', 'suytsus', '2018-05-02', '2018-05-04', 'ayuaua', 86576, 7876979),
('zyygziyz', 'zjhzjzz', 'zgzygzuz', 'zytfzuziz', 'zzuzuizz', '2018-06-15', '2018-06-02', 'ziuhz97z8z', 888697, 9769787),
('vkup', 'bshbhvsk', 'uebfl', 'ehbfel', 'bekurg', '2018-06-02', '2018-06-09', 'ywgfro', 4576490, 12345678),
('skjskjs', 'sjnsjns', 'sjskjsb', 'sjbskjs', 'sjnskjs', '2018-06-02', '2018-06-22', 'shsissis', 321323, 56854656),
('sawariya chor', 'jkgnmh', 'vdbhbfj', 'byfbjf', 'jbdvl', '2018-06-02', '2018-06-09', 'bgls', 43657, 152367458);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allocation`
--
ALTER TABLE `allocation`
  ADD PRIMARY KEY (`pisno`);

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`pisno`),
  ADD UNIQUE KEY `applicationno` (`applicationno`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`pisno`);

--
-- Indexes for table `userdetail`
--
ALTER TABLE `userdetail`
  ADD PRIMARY KEY (`pisno`),
  ADD KEY `pisno` (`pisno`),
  ADD KEY `pisno_2` (`pisno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `applicationno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
