-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: team11
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addrLine1` varchar(45) DEFAULT NULL,
  `addrLine2` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `ZIP` int(11) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `link_id` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,'Hno 53','jhasghja','Badli Delhi','Delhi',110042,'India',3,'customer'),(2,'Hno 53','hg','Badli Delhi','Delhi',110042,'India',4,'customer'),(3,'SAHGDHSAG','JDHJKFGDSJ','JDSHHFGS','HDKJSGFHJ',110042,'JDHFG',1,'payment'),(4,'Hno 53','jsgfdg','Badli Delhi','Delhi',110042,'India',6,'customer'),(5,'Hno 53','hjsdvbh','Badli Delhi','Delhi',110042,'India',7,'customer'),(6,'Hno 53','Near Shivalyamandir','Delhi','Delhi',110042,'India',2,'payment'),(7,'B1/22','poket 6','delhi','delhi',110086,'India',1,'rental_location'),(8,'H66','Kadambari Appt','Delhi','Delhi',110085,'India',8,'customer'),(9,'ABCD','ABAFJ','GSHGF','NJDJ',110042,'India',3,'payment'),(10,'A-12/45','poket 8','Delhi','Delhi',110042,'India',2,'rental_location'),(11,'A-12/45','poket 8','Delhi','Delhi',110042,'India',3,'rental_location'),(12,'Hno 53','Near Shivalyamandir','Badli Delhi','Delhi',110042,'India',9,'customer');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(100) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `context`
--

DROP TABLE IF EXISTS `context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `context` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `membershipPrice` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `context`
--

LOCK TABLES `context` WRITE;
/*!40000 ALTER TABLE `context` DISABLE KEYS */;
INSERT INTO `context` VALUES (1,50);
/*!40000 ALTER TABLE `context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dl`
--

DROP TABLE IF EXISTS `dl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dl_number` varchar(45) NOT NULL,
  `dl_state` varchar(45) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id_idx` (`id`),
  KEY `customer_id_idx1` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dl`
--

LOCK TABLES `dl` WRITE;
/*!40000 ALTER TABLE `dl` DISABLE KEYS */;
INSERT INTO `dl` VALUES (1,'0123456','Delhi',1),(2,'7894563','Haryana',2),(3,'jaSKDH','JDJB',3),(4,'jksncj','jshncjksc',4),(5,'hsjgdh','dgfhdegf',6),(6,'hgasdhghs','hsgbhcgb',7),(7,'DL015775565','Delhi',8),(8,'DL015775565','Delhi',9);
/*!40000 ALTER TABLE `dl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Sec 22 Rohini',30),(2,'Sec 18 Rohini',10),(3,'Sec 7 Rohini',10);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardNumber` varchar(45) DEFAULT NULL,
  `monthExpiration` int(11) DEFAULT NULL,
  `yearExpiration` int(11) DEFAULT NULL,
  `securityCode` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
INSERT INTO `payment_methods` VALUES (1,'145612367896456',2,2022,82,2),(2,'123364489556',2,2022,133,7),(3,'14569755562',2,2022,82,8);
/*!40000 ALTER TABLE `payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pickupTime` datetime DEFAULT NULL,
  `rentalDuration` double DEFAULT NULL,
  `isHourly` int(11) DEFAULT NULL,
  `timeDue` datetime DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `timeReturned` datetime DEFAULT NULL,
  `isActive` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (3,'2017-04-06 00:00:00',2,0,'2017-04-06 00:00:00',2,1,2,'2017-04-06 00:00:00',NULL),(4,'2017-04-08 00:00:00',3,0,'2017-04-09 00:00:00',2,1,2,'2017-05-13 17:30:30',NULL),(5,'2017-05-03 00:00:00',2,0,'2017-05-05 00:00:00',2,1,2,'2017-05-13 17:33:26',NULL),(6,'2017-03-16 00:00:00',3,0,'2017-03-07 00:00:00',4,1,2,'2017-05-13 17:33:44',NULL),(7,'2017-05-01 00:00:00',2,1,'2017-05-01 00:00:00',2,1,2,'2017-05-13 21:25:16',NULL),(8,'2017-05-14 00:00:00',7,0,'2017-05-14 00:00:00',4,1,2,NULL,NULL),(9,'2017-07-13 00:00:00',2,0,'2017-07-13 00:00:00',4,1,7,'2017-05-14 21:42:59',NULL);
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `isAdmin` int(11) NOT NULL,
  `emailAddress` varchar(45) NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `membershipExpiration` date NOT NULL DEFAULT '2017-06-30',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'nitore','1234',1,'anil.nitore@gmail.com','Anil','Nitore','2017-12-31'),(2,'customer','123456',0,'cust.team11@gmail.com','Anil','Nitore','2019-01-01'),(3,'Admin','1234',0,'anil.nitore@gmail.com','anil','nitore','0000-00-00'),(4,'test2','123456',0,'anil.nitore@gmail.com','anil','nitore','0000-00-00'),(6,'test3','123456',0,'anil.nitore@gmail.com','test3','test3','2017-06-30'),(7,'test4','1234',0,'anil.nitore@gmail.com','test2','test2','2019-06-30'),(8,'aakash','123456',0,'anil.nitore@outlook.com','Aakash','Gupta','2018-09-30'),(9,'Test5','S9N64Q4O',0,'anil.nitore@gmail.com','Ani','Nit','2017-06-30');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_types`
--

DROP TABLE IF EXISTS `vehicle_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) DEFAULT NULL,
  `hourlyRate` double DEFAULT NULL,
  `dailyRate` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_types`
--

LOCK TABLES `vehicle_types` WRITE;
/*!40000 ALTER TABLE `vehicle_types` DISABLE KEYS */;
INSERT INTO `vehicle_types` VALUES (1,'Luxury SUV',5,20),(2,'Mini Deluxe',2,10),(3,'Mini Economy',1,5);
/*!40000 ALTER TABLE `vehicle_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `make` varchar(100) DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `tag` varchar(45) DEFAULT NULL,
  `mileage` int(11) DEFAULT NULL,
  `serviceDate` date DEFAULT NULL,
  `vehicleCondition` varchar(45) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (2,'Mahindra','KUV 100',2016,'DL2C0399',20,'2017-03-30','Awesome',1,1),(3,'TATA','TIAGO',2016,'DL3C3689',25,'2016-12-31','Good',2,2),(4,'TATA','TIAGO',2016,'DL3C3689',25,'2016-12-31','Good',2,1),(5,'Ford','Ecosport',2016,'DL3C3687',20,'2016-12-30','Good',1,3);
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-01 14:35:33
