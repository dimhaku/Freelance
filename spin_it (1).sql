-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2015 at 05:01 AM
-- Server version: 5.6.25
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spin it`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL,
  `companyName` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `type` int(1) NOT NULL DEFAULT '0',
  `location` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `companyName`, `email`, `password`, `description`, `type`, `location`) VALUES
(1, 'Google', 'google@gmail.com', '123', 'I am a Company Looking to hire new talent.', 0, ''),
(2, 'ap', 'p', 'p', 'p', 0, 'p'),
(3, 'my shop', 'rrs250@hotmail.com', 'lskers24', 'my job', 0, 'redmond'),
(4, 'Peter', 'peter', 'peter', 'We are making a demo', 0, 'Seattle'),
(5, '', '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `freelancers`
--

CREATE TABLE IF NOT EXISTS `freelancers` (
  `id` int(11) NOT NULL,
  `firstName` varchar(256) NOT NULL,
  `lastName` varchar(256) NOT NULL,
  `websites` varchar(256) NOT NULL,
  `email` varchar(256) DEFAULT NULL,
  `password` varchar(256) NOT NULL,
  `type` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `freelancers`
--

INSERT INTO `freelancers` (`id`, `firstName`, `lastName`, `websites`, `email`, `password`, `type`) VALUES
(1, 'Peter', 'Nguyen', 'google.com', 'petertrung@comcast.net', '123', 1),
(2, 'Sam', 'Hamm', 'codefellows.org', 'code@codefellows.org', '123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jobpost`
--

CREATE TABLE IF NOT EXISTS `jobpost` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `job` text NOT NULL,
  `des` text NOT NULL,
  `location` varchar(150) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `company` varchar(150) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobpost`
--

INSERT INTO `jobpost` (`id`, `title`, `job`, `des`, `location`, `date`, `company`) VALUES
(12, 'Full-stack JavaScript Developer', 'JavaScript,Jquery,Ajax,JSON', 'Organic crucifix fingerstache, irony hoodie High Life sustainable fixie kale chips drinking vinegar cronut cliche squid keffiyeh. Normcore letterpress hoodie authentic, brunch banh mi kogi fanny pack try-hard cornhole flexitarian church-key Vice trust fund crucifix. Tumblr farm-to-table Brooklyn, letterpress kale chips kogi Marfa health goth synth cold-pressed lumbersexual. Skateboard try-hard raw denim, kogi retro drinking vinegar brunch Bushwick Odd Future Vice migas. Blue Bottle selfies try-hard Tumblr pickled, McSweeney''s synth. Messenger bag viral heirloom food truck Helvetica tofu salvia Austin. Schlitz flannel readymade biodiesel sartorial, meggings raw denim hoodie paleo stumptown Austin.', 'Seattle', '2015-08-27 21:05:27', 'Code Fellows'),
(11, 'Data Entry', 'PHP,Mysql,Firebase,JSON,Ajax,Jquery', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. Morbi lectus risus, iaculis vel, suscipit quis, luctu.', 'Renton', '2015-08-27 16:27:09', 'Emerald City Smoothies'),
(10, 'Front End Web Developer', 'HTML,CSS,JavaScript', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. Morbi lectus risus, iaculis vel, suscipit quis, luctu.', 'Seattle', '2015-08-27 16:25:04', 'Top Pot');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `freelancers`
--
ALTER TABLE `freelancers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobpost`
--
ALTER TABLE `jobpost`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `freelancers`
--
ALTER TABLE `freelancers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `jobpost`
--
ALTER TABLE `jobpost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
