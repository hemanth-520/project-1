/*
MySQL Data Transfer
Source Host: localhost
Source Database: bullynet
Target Host: localhost
Target Database: bullynet
Date: 03-Sep-21 6:27:14 PM
*/

create database bullynet;

use bullynet;


SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL auto_increment,
  `username` text NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for filter
-- ----------------------------
DROP TABLE IF EXISTS `filter`;
CREATE TABLE `filter` (
  `tctype` text,
  `filter` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for friend_search
-- ----------------------------
DROP TABLE IF EXISTS `friend_search`;
CREATE TABLE `friend_search` (
  `id` int(11) NOT NULL auto_increment,
  `username` text,
  `keyword` text,
  `date` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for req_res
-- ----------------------------
DROP TABLE IF EXISTS `req_res`;
CREATE TABLE `req_res` (
  `id` int(11) NOT NULL auto_increment,
  `requestfrom` text,
  `requestto` text,
  `status` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for results
-- ----------------------------
DROP TABLE IF EXISTS `results`;
CREATE TABLE `results` (
  `ftype` text,
  `fcount` int(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for retweets
-- ----------------------------
DROP TABLE IF EXISTS `retweets`;
CREATE TABLE `retweets` (
  `id` int(11) NOT NULL auto_increment,
  `username` text,
  `tweet_name` text,
  `comment` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for tweets
-- ----------------------------
DROP TABLE IF EXISTS `tweets`;
CREATE TABLE `tweets` (
  `id` int(11) NOT NULL auto_increment,
  `tname` text,
  `image` blob,
  `description` text,
  `date` text,
  `rank` int(11) default NULL,
  `user` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(45) default NULL,
  `password` varchar(45) default NULL,
  `email` varchar(45) default NULL,
  `mobile` varchar(45) default NULL,
  `address` text,
  `dob` varchar(45) default NULL,
  `gender` varchar(45) default NULL,
  `status` varchar(45) default NULL,
  `profession` varchar(45) default NULL,
  `image` longblob,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'admin');
INSERT INTO `filter` VALUES ('Positive', 'Good');
INSERT INTO `filter` VALUES ('Negative', 'Bad');
INSERT INTO `filter` VALUES ('Cyberbulling', 'Kill');
INSERT INTO `filter` VALUES ('Positive', 'Beautiful');
INSERT INTO `filter` VALUES ('Negative', 'worst');
INSERT INTO `filter` VALUES ('Cyberbulling', 'kidnap');
INSERT INTO `filter` VALUES ('Negative', 'Dangerous');
INSERT INTO `filter` VALUES ('Cyberbulling', 'Stupid');
INSERT INTO `filter` VALUES ('Cyberbulling', 'blast');
INSERT INTO `filter` VALUES ('Cyberbulling', 'Rascal');
INSERT INTO `filter` VALUES ('Cyberbulling', 'violance');
INSERT INTO `filter` VALUES ('Cyberbulling', 'violence');
