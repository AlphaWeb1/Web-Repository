-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2016 at 07:06 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `prsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_tbl`
--

CREATE TABLE IF NOT EXISTS `blog_tbl` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `blog_date` date NOT NULL,
  `blog_time` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `blog_tbl`
--

INSERT INTO `blog_tbl` (`id`, `email`, `content`, `blog_date`, `blog_time`) VALUES
(1, 'dave@localhost.local', 'This is gonna be fun... The more you dedicate your time and energy to something worth doing, believe me the reward is gonna be a huge success..', '2016-06-08', '00:00:00'),
(2, 'dave@localhost.com', 'This is gonna be a good beginning. Hopefully you''ll be able to find your truself. Life can be so mean sometimes. Do not expect every moment of your life to be perfect, cos life is full of ups and downs...', '2016-06-07', '00:00:00'),
(3, 'dave@localhost.local', 'No matter how small opportunity may look just take advantage of it and see how big ones will start evolving...', '2016-06-08', '02:06:33'),
(4, 'dave@localhost.local', 'No matter how small opportunity may look just take advantage of it and see how big ones will start evolving...', '2016-06-08', '02:06:44'),
(5, 'dave@localhost.local', 'This is gonna be fun... The more you dedicate your time and energy to something worth doing, believe me the reward is gonna be a huge success..', '2016-06-08', '02:12:10'),
(6, 'dave@localhost.local', 'This is gonna be fun... The more you dedicate your time and energy to something worth doing, believe me the reward is gonna be a huge success..', '2016-06-08', '06:01:42');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE IF NOT EXISTS `enquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enq_date` varchar(32) NOT NULL,
  `enq_name` varchar(32) NOT NULL,
  `enq_email` varchar(255) NOT NULL,
  `enq_phone` varchar(32) NOT NULL,
  `enq_comment` varchar(255) NOT NULL,
  `enq_gender` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `consignee` varchar(255) NOT NULL,
  `consignment` varchar(255) NOT NULL,
  `departure_date` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `delivery_address` varchar(255) NOT NULL,
  `accred_agent` varchar(255) NOT NULL,
  `consignee_contact` varchar(255) NOT NULL,
  `Track-ID` varchar(255) NOT NULL,
  `Pwd` varchar(255) NOT NULL,
  `Fname` varchar(32) NOT NULL,
  `Lname` varchar(32) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Telephone` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `security_quest`
--

CREATE TABLE IF NOT EXISTS `security_quest` (
  `id` int(99) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `recovery_quest` varchar(255) NOT NULL,
  `recovery_ans` varchar(255) NOT NULL,
  `enable_pattern` int(1) NOT NULL,
  `enable_email` int(1) NOT NULL,
  `enable_phone` int(1) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `security_quest`
--

INSERT INTO `security_quest` (`id`, `email`, `recovery_quest`, `recovery_ans`, `enable_pattern`, `enable_email`, `enable_phone`, `keyword`) VALUES
(1, 'dave@localhost.local', 'what is the name of your aunt', 'sister fadekemi bello', 1, 0, 0, 'fadekemi'),
(2, 'samson@localhost.local', 'What is the name of your favorite food?', 'semo and egusi', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `signup_tbl`
--

CREATE TABLE IF NOT EXISTS `signup_tbl` (
  `id` int(99) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pic_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `signup_tbl`
--

INSERT INTO `signup_tbl` (`id`, `fullname`, `email`, `password`, `address`, `phone`, `pic_path`) VALUES
(1, 'Adekunle David', 'dave@localhost.local', '123', 'iganmode road ota', '2348188551310', 'public/images/profile_images/dave@localhost.local.jpg'),
(2, 'dave', 'dave@localhost.com', '1234', '', '+23408188551310', ''),
(3, 'Samson Dave', 'samson@localhost.local', '43er', '', '08012343211', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
