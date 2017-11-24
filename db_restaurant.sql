-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 23, 2013 at 01:11 AM
-- Server version: 5.5.30-30.2
-- PHP Version: 5.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `taufan20_restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
	`Category_ID`    INT(11)     NOT NULL AUTO_INCREMENT,
	`Category_name`  VARCHAR(20) NOT NULL,
	`Category_image` TEXT        NOT NULL,
	PRIMARY KEY (`Category_ID`)
)
	ENGINE = MyISAM
	DEFAULT CHARSET = utf8
	AUTO_INCREMENT = 21;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE IF NOT EXISTS `tbl_menu` (
	`Menu_ID`     INT(11)     NOT NULL AUTO_INCREMENT,
	`Menu_name`   VARCHAR(50) NOT NULL,
	`Category_ID` INT(11)     NOT NULL,
	`Price`       DOUBLE      NOT NULL,
	`Serve_for`   INT(3)      NOT NULL,
	`Menu_image`  TEXT        NOT NULL,
	`Description` TEXT        NOT NULL,
	PRIMARY KEY (`Menu_ID`)
)
	ENGINE = MyISAM
	DEFAULT CHARSET = utf8
	AUTO_INCREMENT = 67;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reservation`
--

CREATE TABLE IF NOT EXISTS `tbl_reservation` (
	`ID`               INT(11)     NOT NULL AUTO_INCREMENT,
	`Name`             VARCHAR(50) NOT NULL,
	`Number_of_people` INT(11)     NOT NULL,
	`Date_n_Time`      DATETIME    NOT NULL,
	`Phone_number`     VARCHAR(15) NOT NULL,
	`Order_list`       TEXT        NOT NULL,
	`Status`           CHAR(1)     NOT NULL DEFAULT '0',
	`Comment`          TEXT        NOT NULL,
	PRIMARY KEY (`ID`)
)
	ENGINE = MyISAM
	DEFAULT CHARSET = utf8
	AUTO_INCREMENT = 55;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE IF NOT EXISTS `tbl_setting` (
	`Variable` VARCHAR(20) NOT NULL,
	`Value`    VARCHAR(5)  NOT NULL
)
	ENGINE = MyISAM
	DEFAULT CHARSET = utf8;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`Variable`, `Value`) VALUES
	('Tax', '10'),
	('Currency', 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
	`ID`       INT(11)      NOT NULL AUTO_INCREMENT,
	`Username` VARCHAR(15)  NOT NULL,
	`Password` TEXT         NOT NULL,
	`Email`    VARCHAR(100) NOT NULL,
	PRIMARY KEY (`ID`)
)
	ENGINE = MyISAM
	DEFAULT CHARSET = utf8
	AUTO_INCREMENT = 2;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`ID`, `Username`, `Password`, `Email`) VALUES
	(1, 'admin', 'd82494f05d6917ba02f7aaa29689ccb444bb73f20380876cb05d1f37537b7892', 'email@website.com');

/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
