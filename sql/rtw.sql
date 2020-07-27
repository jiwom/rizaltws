-- phpMyAdmin SQL Dump
-- version 2.8.1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Jul 27, 2020 at 01:10 PM
-- Server version: 5.0.21
-- PHP Version: 5.1.4
-- 
-- Database: `food`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `items`
-- 

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `deleted` tinyint(4) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `items`
-- 

INSERT INTO `items` VALUES (1, 'Item 1', 25, 1);
INSERT INTO `items` VALUES (2, 'Item 2', 45, 0);
INSERT INTO `items` VALUES (3, 'Item 3', 20, 0);
INSERT INTO `items` VALUES (4, 'Item 4', 15, 1);
INSERT INTO `items` VALUES (5, 'Item 5', 20, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `order_details`
-- 

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `order_details`
-- 

INSERT INTO `order_details` VALUES (1, 1, 2, 2, 90);
INSERT INTO `order_details` VALUES (2, 1, 3, 3, 60);
INSERT INTO `order_details` VALUES (3, 2, 2, 2, 90);
INSERT INTO `order_details` VALUES (4, 2, 3, 2, 40);
INSERT INTO `order_details` VALUES (5, 3, 2, 2, 90);
INSERT INTO `order_details` VALUES (6, 3, 3, 2, 40);
INSERT INTO `order_details` VALUES (7, 4, 2, 2, 90);
INSERT INTO `order_details` VALUES (8, 4, 3, 2, 40);
INSERT INTO `order_details` VALUES (9, 5, 2, 5, 225);
INSERT INTO `order_details` VALUES (10, 5, 3, 2, 40);
INSERT INTO `order_details` VALUES (11, 5, 5, 1, 20);
INSERT INTO `order_details` VALUES (12, 6, 2, 5, 225);
INSERT INTO `order_details` VALUES (13, 6, 3, 3, 60);
INSERT INTO `order_details` VALUES (14, 6, 5, 2, 40);

-- --------------------------------------------------------

-- 
-- Table structure for table `orders`
-- 

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address` varchar(300) NOT NULL,
  `description` varchar(300) NOT NULL,
  `date` datetime NOT NULL,
  `payment_type` varchar(16) NOT NULL default 'Wallet',
  `total` int(11) NOT NULL,
  `status` varchar(25) NOT NULL default 'Yet to be delivered',
  `deleted` tinyint(4) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `orders`
-- 

INSERT INTO `orders` VALUES (1, 2, 'Address 2', 'Sample Description 1', '2017-03-28 17:32:41', 'Wallet', 150, 'Yet to be delivered', 0);
INSERT INTO `orders` VALUES (2, 2, 'New address 2', '', '2017-03-28 17:43:05', 'Wallet', 130, 'Cancelled by Customer', 1);
INSERT INTO `orders` VALUES (3, 3, 'Address 3', 'Sample Description 2', '2017-03-28 19:49:33', 'Cash On Delivery', 130, 'Yet to be delivered', 0);
INSERT INTO `orders` VALUES (4, 3, 'Address 3', '', '2017-03-28 19:52:01', 'Cash On Delivery', 130, 'Cancelled by Customer', 1);
INSERT INTO `orders` VALUES (5, 3, 'New Address 3', '', '2017-03-28 20:47:28', 'Wallet', 285, 'Paused', 0);
INSERT INTO `orders` VALUES (6, 3, 'New Address 3', '', '2017-03-30 00:43:31', 'Wallet', 325, 'Cancelled by Customer', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `users`
-- 

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role` varchar(15) NOT NULL default 'Customer',
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) default NULL,
  `address` varchar(300) default NULL,
  `contact` bigint(11) NOT NULL,
  `verified` tinyint(1) NOT NULL default '0',
  `deleted` tinyint(4) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `users`
-- 

INSERT INTO `users` VALUES (1, 'Administrator', 'Admin 1', 'admin123', 'admin', '', 'Address 1', 9898000000, 1, 0);
INSERT INTO `users` VALUES (0, 'Customer', 'Mary joy castillo', 'castillo14', 'lolomoto', 'castillomaryjoy14@gmail.com', 'Blk 31 lot 6 bougainvilla st. maligaya park novaliches qc', 9125151252, 0, 0);
