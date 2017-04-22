-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2017 at 06:30 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csi`
--

-- --------------------------------------------------------

--
-- Table structure for table `csireg`
--

CREATE TABLE `csireg` (
  `id` int(3) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `mname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(7) NOT NULL,
  `contact` bigint(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `addr` text NOT NULL,
  `city` varchar(15) NOT NULL,
  `dept` varchar(12) NOT NULL,
  `year` varchar(10) NOT NULL,
  `sid` bigint(10) NOT NULL,
  `skill` varchar(25) NOT NULL,
  `addt` text NOT NULL,
  `amount` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `csireg`
--

INSERT INTO `csireg` (`id`, `fname`, `mname`, `lname`, `dob`, `gender`, `contact`, `email`, `addr`, `city`, `dept`, `year`, `sid`, `skill`, `addt`, `amount`) VALUES
(1, 'Sanika', 'sunil', 'Bhat', '1998-05-18', 'female', 9619082271, 'bhat.sanika@gmail.com', 'Opp vandana talkies, old agra road', 'Thane', 'IT', 'SE', 2015134222, 'java', 'Nothing', 0),
(2, 'Sanika', 'sunil', 'Bhat', '2017-05-18', 'female', 9619082271, 'bhat.sanika@gmail.com', 'Opp vandana talkies, old agra road', 'Thane', 'IT', 'SE', 2015134222, 'java', 'nothing', 400),
(3, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(4, 'Sanika', 'sunil', 'Bhat', '2017-04-02', 'female', 9619082271, 'bhat.sanika@gmail.com', 'Opp vandana talkies, old agra road', 'Thane', 'IT', 'SE', 2015134222, 'css', 'nothing', 400),
(5, 'Sanika', 'Sunil', 'Bhat', '2017-04-02', 'female', 9619082271, 'bhat.sanika@gmail.com', 'Opp vandana talkies, old agra road', 'Thane', 'IT', 'SE', 2015134222, 'C', '', 400),
(6, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(7, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(8, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(9, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(10, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(11, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(12, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(13, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(14, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(15, 'Rucha', 'Sunildutta', 'Brwankar', '1997-06-17', 'female', 9987271002, 'borwankarrucha@gmail.com', 'thane', 'thane', 'EXTC', 'SE', 2015134234, 'java', 'naaahhh', 300),
(16, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(17, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(18, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(19, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(20, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(21, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(22, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(23, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(24, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(25, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(26, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(27, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(28, 'Sanika', 'sunil', 'Bhat', '2017-04-03', 'female', 9619082271, 'bhat.sanika@gmail.com', 'Opp vandana talkies, old agra road', 'Thane', 'IT', 'SE', 2015134222, 'java', 'nope', 300),
(29, 'Sanika', 'sunil', 'Bhat', '2017-04-03', 'female', 9619082271, 'bhat.sanika@gmail.com', 'Opp vandana talkies, old agra road', 'Thane', 'IT', 'SE', 2015134222, 'java', 'nope', 2070),
(30, 'Sanika', 'sunil', 'Bhat', '2017-04-03', 'female', 9619082271, 'bhat.sanika@gmail.com', 'Opp vandana talkies, old agra road', 'Thane', 'COMPS', 'SE', 2015134222, 'java', 'jbsjm', 300),
(31, 'Sanika', 'sunil', 'Bhat', '2017-04-03', 'female', 9619082271, 'bhat.sanika@gmail.com', 'Opp vandana talkies, old agra road', 'Thane', 'COMPS', 'FE', 2015134222, 'java', 'jdhiek', 300),
(32, 'Sanika', 'sunil', 'Bhat', '2017-04-12', 'female', 9619082271, 'bhat.sanika@gmail.com', 'Opp vandana talkies, old agra road', 'Thane', 'IT', 'FE', 2015134222, 'java', 'nop', 300),
(33, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(34, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(35, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(36, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(37, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(38, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(39, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(40, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(41, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(42, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(43, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(44, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0),
(45, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', 0, '', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `csireg`
--
ALTER TABLE `csireg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `csireg`
--
ALTER TABLE `csireg`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
