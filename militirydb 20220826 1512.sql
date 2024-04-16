-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.19


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema gfgc_militory
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ gfgc_militory;
USE gfgc_militory;

--
-- Table structure for table `gfgc_militory`.`admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_militory`.`admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`username`,`password`) VALUES 
 ('admin','password');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Table structure for table `gfgc_militory`.`exams`
--

DROP TABLE IF EXISTS `exams`;
CREATE TABLE `exams` (
  `examname` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `eligibility` varchar(50) DEFAULT NULL,
  `contacts` text,
  `description` text,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rescheduledate` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `examname` (`examname`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_militory`.`exams`
--

/*!40000 ALTER TABLE `exams` DISABLE KEYS */;
INSERT INTO `exams` (`examname`,`date`,`eligibility`,`contacts`,`description`,`id`,`rescheduledate`,`category`) VALUES 
 ('Navy entrance exam','2022-08-26','all degree','6625255252','needs good body condition',3,'2022-08-30',NULL);
/*!40000 ALTER TABLE `exams` ENABLE KEYS */;


--
-- Table structure for table `gfgc_militory`.`feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `name` varchar(50) DEFAULT NULL,
  `feedback` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_militory`.`feedback`
--

/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` (`name`,`feedback`) VALUES 
 ('ravish','nice information');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


--
-- Table structure for table `gfgc_militory`.`materials`
--

DROP TABLE IF EXISTS `materials`;
CREATE TABLE `materials` (
  `category` varchar(50) DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_militory`.`materials`
--

/*!40000 ALTER TABLE `materials` DISABLE KEYS */;
INSERT INTO `materials` (`category`,`filename`) VALUES 
 ('Navy','listcg.pdf');
/*!40000 ALTER TABLE `materials` ENABLE KEYS */;


--
-- Table structure for table `gfgc_militory`.`posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `message` varchar(100) NOT NULL,
  PRIMARY KEY (`message`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gfgc_militory`.`posts`
--

/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`message`) VALUES 
 ('hi how are you'),
 ('hi where is milana'),
 ('how can i pay road tax'),
 ('How can I reach jog'),
 ('how is lion safari '),
 ('how malpe'),
 ('i am lost in goa'),
 ('where is hospital'),
 ('where is hotel paradise'),
 ('where is metro'),
 ('where is railway station '),
 ('where is sahydri'),
 ('where is stadum');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;


--
-- Table structure for table `gfgc_militory`.`reply`
--

DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `question` varchar(50) DEFAULT NULL,
  `answer` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_militory`.`reply`
--

/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` (`question`,`answer`) VALUES 
 ('where is sahydri','near MRS');
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;


--
-- Table structure for table `gfgc_militory`.`selection`
--

DROP TABLE IF EXISTS `selection`;
CREATE TABLE `selection` (
  `category` varchar(50) DEFAULT NULL,
  `post` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `height` varchar(50) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `chest` varchar(50) DEFAULT NULL,
  `eyesight` varchar(50) DEFAULT NULL,
  `physicalstrngth` varchar(50) DEFAULT NULL,
  `qualification` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_post` (`category`,`post`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_militory`.`selection`
--

/*!40000 ALTER TABLE `selection` DISABLE KEYS */;
INSERT INTO `selection` (`category`,`post`,`gender`,`height`,`weight`,`chest`,`eyesight`,`physicalstrngth`,`qualification`,`id`) VALUES 
 ('Militory','gaurds','male','170','70','15','noramal','normal','Degree',3);
/*!40000 ALTER TABLE `selection` ENABLE KEYS */;


--
-- Table structure for table `gfgc_militory`.`trainingcenter`
--

DROP TABLE IF EXISTS `trainingcenter`;
CREATE TABLE `trainingcenter` (
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `description` text,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_militory`.`trainingcenter`
--

/*!40000 ALTER TABLE `trainingcenter` DISABLE KEYS */;
INSERT INTO `trainingcenter` (`name`,`address`,`phone`,`email`,`description`,`id`) VALUES 
 ('MEG','bangalore','9965858585','meg@gmail.com','trainging for army',1);
/*!40000 ALTER TABLE `trainingcenter` ENABLE KEYS */;


--
-- Table structure for table `gfgc_militory`.`users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_militory`.`users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`name`,`address`,`phone`,`password`,`email`,`id`) VALUES 
 ('ravi','shimoga','9985858585','Ravish123','ravi@gmail.com',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
