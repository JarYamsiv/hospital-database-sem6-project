-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	5.7.21-1ubuntu1

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
-- Table structure for table `Building`
--

DROP TABLE IF EXISTS `Building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Building` (
  `ID` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Block` varchar(25) NOT NULL,
  `Budget` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Building`
--

LOCK TABLES `Building` WRITE;
/*!40000 ALTER TABLE `Building` DISABLE KEYS */;
/*!40000 ALTER TABLE `Building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Doctor`
--

DROP TABLE IF EXISTS `Doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Doctor` (
  `ID` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Specialization` varchar(25) NOT NULL,
  `Salary` int(11) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Doctor`
--

LOCK TABLES `Doctor` WRITE;
/*!40000 ALTER TABLE `Doctor` DISABLE KEYS */;
INSERT INTO `Doctor` VALUES (98001,'Michael','General Medicine',80000,'Room 117, Hostel-1, IIT Palakkad'),(99001,'Daniel','General Medicine',85000,'Room 118, Hostel-1, IIT Palakkad'),(100001,'Lauren','Cardiologist',90000,'Room 212, Hostel-1, IIT Palakkad'),(198001,'Ryan','Cardiologist',90000,'Room 217, Hostel-1, IIT Palakkad'),(198003,'Bryan','Neuro',90000,'Room 218, Hostel-1, IIT Palakkad');
/*!40000 ALTER TABLE `Doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Drug`
--

DROP TABLE IF EXISTS `Drug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Drug` (
  `ID` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Cost` int(11) NOT NULL,
  `Imported_date` date NOT NULL,
  `Expiry_date` date NOT NULL,
  `Quantity_available` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Drug`
--

LOCK TABLES `Drug` WRITE;
/*!40000 ALTER TABLE `Drug` DISABLE KEYS */;
/*!40000 ALTER TABLE `Drug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Labs`
--

DROP TABLE IF EXISTS `Labs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Labs` (
  `ID` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Building` varchar(25) NOT NULL,
  `Start_time` time(6) NOT NULL,
  `Close_time` time(6) NOT NULL,
  `Occupancy` int(11) NOT NULL,
  `Capacity` int(11) NOT NULL,
  `Budget` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Labs`
--

LOCK TABLES `Labs` WRITE;
/*!40000 ALTER TABLE `Labs` DISABLE KEYS */;
INSERT INTO `Labs` VALUES (1,'X-Ray','Block-A','09:00:00.000000','20:00:00.000000',1,10,100000),(2,'ECG','Block-B','09:00:00.000000','20:00:00.000000',3,10,100000),(3,'Sonography','Block-B','09:00:00.000000','20:00:00.000000',0,10,100000),(4,'Gastroscopy','Block-D','09:00:00.000000','20:00:00.000000',5,10,200000);
/*!40000 ALTER TABLE `Labs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Nurse`
--

DROP TABLE IF EXISTS `Nurse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Nurse` (
  `ID` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Specialization` varchar(25) NOT NULL,
  `Salary` int(11) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Nurse`
--

LOCK TABLES `Nurse` WRITE;
/*!40000 ALTER TABLE `Nurse` DISABLE KEYS */;
INSERT INTO `Nurse` VALUES (1,'Rini','Cardiac unit',25000,'83 E. Tallwood Road'),(2,'Arthana','ICU',26000,'8142 East Sage Circle'),(3,'Nimya','Emergancy',29000,'38 Parker Lane'),(4,'Bridget','General',22000,'990 East Lakeshore'),(5,'Indiana','General',22000,'382 Arrowhead Ave'),(6,'Bringa','General',22000,'19 Fremont Drive'),(7,'Ankita','Emergancy',29000,'9295 Walt Whitman Street'),(8,'Dany','Cardiac unit',25000,'42 East Myers Drive'),(9,'Ava','ICU',26000,'250 Logan St.Missoula');
/*!40000 ALTER TABLE `Nurse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Operating_theatre`
--

DROP TABLE IF EXISTS `Operating_theatre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Operating_theatre` (
  `ID` int(11) NOT NULL,
  `Doctor_ID` int(11) NOT NULL,
  `Specialization` varchar(25) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Doctor_ID` (`Doctor_ID`),
  CONSTRAINT `Operating_theatre_ibfk_1` FOREIGN KEY (`Doctor_ID`) REFERENCES `Doctor` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Operating_theatre`
--

LOCK TABLES `Operating_theatre` WRITE;
/*!40000 ALTER TABLE `Operating_theatre` DISABLE KEYS */;
/*!40000 ALTER TABLE `Operating_theatre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Patient`
--

DROP TABLE IF EXISTS `Patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Patient` (
  `ID` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Age` int(11) NOT NULL,
  `Last_visit` date DEFAULT NULL,
  `Address` varchar(50) NOT NULL,
  `Medical_history` varchar(250) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patient`
--

LOCK TABLES `Patient` WRITE;
/*!40000 ALTER TABLE `Patient` DISABLE KEYS */;
INSERT INTO `Patient` VALUES (1,'Ringer',24,NULL,'223 E. Concord','First time visitor here'),(2,'Arjun',21,'2018-12-05','12529 State Road 535','Vistied for headache'),(3,'Gokul Shaji',22,'2019-01-01','Alappuzha','Previously visited for severe back pain, bedridden multiple times'),(4,'Bhagya',26,NULL,'2855 South Orange Ave','First time visitor here'),(5,'Vivek',21,NULL,'7822 W. Sand Lake Rd','First time visitor here');
/*!40000 ALTER TABLE `Patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pharmacist`
--

DROP TABLE IF EXISTS `Pharmacist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pharmacist` (
  `ID` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Salary` int(11) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pharmacist`
--

LOCK TABLES `Pharmacist` WRITE;
/*!40000 ALTER TABLE `Pharmacist` DISABLE KEYS */;
/*!40000 ALTER TABLE `Pharmacist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pharmacy`
--

DROP TABLE IF EXISTS `Pharmacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pharmacy` (
  `ID` int(11) NOT NULL,
  `Worker_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pharmacy`
--

LOCK TABLES `Pharmacy` WRITE;
/*!40000 ALTER TABLE `Pharmacy` DISABLE KEYS */;
INSERT INTO `Pharmacy` VALUES (1,4),(2,3);
/*!40000 ALTER TABLE `Pharmacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rooms`
--

DROP TABLE IF EXISTS `Rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Rooms` (
  `ID` int(11) NOT NULL,
  `Building` varchar(25) NOT NULL,
  `Room_size` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rooms`
--

LOCK TABLES `Rooms` WRITE;
/*!40000 ALTER TABLE `Rooms` DISABLE KEYS */;
INSERT INTO `Rooms` VALUES (1,'Block-A',10),(2,'Block-B',15),(3,'Block-A',10),(4,'Block-C',20),(5,'Block-A',10),(6,'Block-D',10),(7,'Block-D',10),(8,'Block-A',10),(9,'Block-C',10),(10,'Block-B',10),(11,'Block-A',10),(12,'Block-D',10),(13,'Block-C',10),(14,'Block-A',10),(15,'Block-B',10),(16,'Block-D',10),(17,'Block-A',10),(18,'Block-B',10);
/*!40000 ALTER TABLE `Rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Security`
--

DROP TABLE IF EXISTS `Security`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Security` (
  `ID` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Shift` varchar(25) NOT NULL,
  `Salary` int(11) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Security`
--

LOCK TABLES `Security` WRITE;
/*!40000 ALTER TABLE `Security` DISABLE KEYS */;
/*!40000 ALTER TABLE `Security` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ward`
--

DROP TABLE IF EXISTS `Ward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ward` (
  `ID` int(11) NOT NULL,
  `Occupancy` int(11) NOT NULL,
  `Capacity` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ward`
--

LOCK TABLES `Ward` WRITE;
/*!40000 ALTER TABLE `Ward` DISABLE KEYS */;
INSERT INTO `Ward` VALUES (1,3,10),(2,4,10),(3,0,10),(4,0,10),(5,5,10);
/*!40000 ALTER TABLE `Ward` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-11 20:38:40
