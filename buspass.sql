/*
MySQL Data Transfer
Source Host: localhost
Source Database: buspass
Target Host: localhost
Target Database: buspass
Date: 1/6/2023 8:17:37 PM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(200) default NULL,
  `password` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for applybuspass
-- ----------------------------
DROP TABLE IF EXISTS `applybuspass`;
CREATE TABLE `applybuspass` (
  `username` varchar(200) default NULL,
  `from` varchar(200) default NULL,
  `to` varchar(200) default NULL,
  `status` varchar(200) default NULL,
  `Cid` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `qrcode` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `cid` varchar(200) default NULL,
  `firstname` varchar(200) default NULL,
  `lastname` varchar(200) default NULL,
  `email` varchar(200) default NULL,
  `mobile` varchar(200) default NULL,
  `address` varchar(200) default NULL,
  `username` varchar(200) default NULL,
  `password` varchar(200) default NULL,
  `role` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `username` varchar(200) default NULL,
  `password` varchar(200) default NULL,
  `role` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for payments
-- ----------------------------
DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments` (
  `pid` varchar(255) default NULL,
  `uname` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `phone` varchar(255) default NULL,
  `from` varchar(255) default NULL,
  `to` varchar(255) default NULL,
  `paymethod` varchar(255) default NULL,
  `price` int(11) default NULL,
  `payde` varchar(255) default NULL,
  `cvv` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `admin` VALUES ('cloud', 'cloud');
INSERT INTO `applybuspass` VALUES ('sudharshan', 'Hyderabad', 'Kadapa', 'Accepted', 'CNT_7572914', 'sudharshan.kota@gmail.com', 'images/sudharshan.png');
INSERT INTO `customer` VALUES ('CNT_7572914', 'sudharshan', 'kota', 'sudharshan.kota@gmail.com', '9876543210', 'Image Hospital\r\n1-92', 'sudharshan', 'sudharshan', 'customer');
INSERT INTO `login` VALUES ('sudharshan', 'sudharshan', 'customer');
