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
INSERT INTO `Building` VALUES (1,'Block-A','A',200000),(2,'Block-B','B',200000),(3,'Block-C','C',200000),(4,'Block-D','D',200000);
/*!40000 ALTER TABLE `Building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Doc_present_room`
--

DROP TABLE IF EXISTS `Doc_present_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Doc_present_room` (
  `Doctor_ID` int(11) NOT NULL,
  `Room_ID` int(11) NOT NULL,
  KEY `Doctor_ID` (`Doctor_ID`),
  KEY `Room_ID` (`Room_ID`),
  CONSTRAINT `Doc_present_room_ibfk_1` FOREIGN KEY (`Doctor_ID`) REFERENCES `Doctor` (`ID`),
  CONSTRAINT `Doc_present_room_ibfk_2` FOREIGN KEY (`Room_ID`) REFERENCES `Rooms` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Doc_present_room`
--

LOCK TABLES `Doc_present_room` WRITE;
/*!40000 ALTER TABLE `Doc_present_room` DISABLE KEYS */;
INSERT INTO `Doc_present_room` VALUES (98001,1),(99001,1),(100001,2),(198001,3),(198003,4);
/*!40000 ALTER TABLE `Doc_present_room` ENABLE KEYS */;
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
INSERT INTO `Drug` VALUES (1,'Paracetamol',5,'0000-00-00','0000-00-00',500),(2,'Aspirin',10,'0000-00-00','0000-00-00',50),(3,'Adderall',18,'0000-00-00','0000-00-00',50),(4,'Zantac',25,'0000-00-00','0000-00-00',100),(5,'Gabitril',22,'0000-00-00','0000-00-00',50),(6,'Belviq',23,'0000-00-00','0000-00-00',30),(7,'Bellimumab',40,'0000-00-00','0000-00-00',20),(8,'Zytiga',52,'0000-00-00','0000-00-00',40),(9,'Glybera',100000,'0000-00-00','0000-00-00',10);
/*!40000 ALTER TABLE `Drug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Drug_in_pharmacy`
--

DROP TABLE IF EXISTS `Drug_in_pharmacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Drug_in_pharmacy` (
  `Drug_ID` int(11) NOT NULL,
  `Pharmacy_ID` int(11) NOT NULL,
  KEY `Drug_ID` (`Drug_ID`),
  KEY `Pharmacy_ID` (`Pharmacy_ID`),
  CONSTRAINT `Drug_in_pharmacy_ibfk_1` FOREIGN KEY (`Drug_ID`) REFERENCES `Drug` (`ID`),
  CONSTRAINT `Drug_in_pharmacy_ibfk_2` FOREIGN KEY (`Pharmacy_ID`) REFERENCES `Pharmacy` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Drug_in_pharmacy`
--

LOCK TABLES `Drug_in_pharmacy` WRITE;
/*!40000 ALTER TABLE `Drug_in_pharmacy` DISABLE KEYS */;
INSERT INTO `Drug_in_pharmacy` VALUES (1,1),(2,1),(3,1),(8,1),(4,2),(5,2),(6,2),(7,2),(9,2);
/*!40000 ALTER TABLE `Drug_in_pharmacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `Drug_list`
--

DROP TABLE IF EXISTS `Drug_list`;
/*!50001 DROP VIEW IF EXISTS `Drug_list`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `Drug_list` AS SELECT 
 1 AS `ID`,
 1 AS `Name`,
 1 AS `Cost`,
 1 AS `Imported_date`,
 1 AS `Expiry_date`,
 1 AS `Quantity_available`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Lab_at_room`
--

DROP TABLE IF EXISTS `Lab_at_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lab_at_room` (
  `Lab_ID` int(11) NOT NULL,
  `Room_ID` int(11) NOT NULL,
  KEY `Lab_ID` (`Lab_ID`),
  KEY `Room_ID` (`Room_ID`),
  CONSTRAINT `Lab_at_room_ibfk_1` FOREIGN KEY (`Lab_ID`) REFERENCES `Labs` (`ID`),
  CONSTRAINT `Lab_at_room_ibfk_2` FOREIGN KEY (`Room_ID`) REFERENCES `Rooms` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lab_at_room`
--

LOCK TABLES `Lab_at_room` WRITE;
/*!40000 ALTER TABLE `Lab_at_room` DISABLE KEYS */;
INSERT INTO `Lab_at_room` VALUES (1,10),(2,11),(3,12),(4,13);
/*!40000 ALTER TABLE `Lab_at_room` ENABLE KEYS */;
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
-- Table structure for table `Nurse_governs_ward`
--

DROP TABLE IF EXISTS `Nurse_governs_ward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Nurse_governs_ward` (
  `Nurse_ID` int(11) NOT NULL,
  `Ward_ID` int(11) NOT NULL,
  KEY `Nurse_ID` (`Nurse_ID`),
  KEY `Ward_ID` (`Ward_ID`),
  CONSTRAINT `Nurse_governs_ward_ibfk_1` FOREIGN KEY (`Nurse_ID`) REFERENCES `Nurse` (`ID`),
  CONSTRAINT `Nurse_governs_ward_ibfk_2` FOREIGN KEY (`Ward_ID`) REFERENCES `Ward` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Nurse_governs_ward`
--

LOCK TABLES `Nurse_governs_ward` WRITE;
/*!40000 ALTER TABLE `Nurse_governs_ward` DISABLE KEYS */;
INSERT INTO `Nurse_governs_ward` VALUES (4,1),(2,3),(2,4),(3,5),(1,2);
/*!40000 ALTER TABLE `Nurse_governs_ward` ENABLE KEYS */;
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
-- Table structure for table `Pat_admit_ward`
--

DROP TABLE IF EXISTS `Pat_admit_ward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pat_admit_ward` (
  `Patient_ID` int(11) NOT NULL,
  `Ward_ID` int(11) NOT NULL,
  KEY `Patient_ID` (`Patient_ID`),
  KEY `Ward_ID` (`Ward_ID`),
  CONSTRAINT `Pat_admit_ward_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `Patient` (`ID`),
  CONSTRAINT `Pat_admit_ward_ibfk_2` FOREIGN KEY (`Ward_ID`) REFERENCES `Ward` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pat_admit_ward`
--

LOCK TABLES `Pat_admit_ward` WRITE;
/*!40000 ALTER TABLE `Pat_admit_ward` DISABLE KEYS */;
INSERT INTO `Pat_admit_ward` VALUES (1,1),(3,2),(4,1),(5,3);
/*!40000 ALTER TABLE `Pat_admit_ward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pat_attends_doc`
--

DROP TABLE IF EXISTS `Pat_attends_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pat_attends_doc` (
  `Doctor_ID` int(11) NOT NULL,
  `Patient_ID` int(11) NOT NULL,
  KEY `Doctor_ID` (`Doctor_ID`),
  KEY `Patient_ID` (`Patient_ID`),
  CONSTRAINT `Pat_attends_doc_ibfk_1` FOREIGN KEY (`Doctor_ID`) REFERENCES `Doctor` (`ID`),
  CONSTRAINT `Pat_attends_doc_ibfk_2` FOREIGN KEY (`Patient_ID`) REFERENCES `Patient` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pat_attends_doc`
--

LOCK TABLES `Pat_attends_doc` WRITE;
/*!40000 ALTER TABLE `Pat_attends_doc` DISABLE KEYS */;
INSERT INTO `Pat_attends_doc` VALUES (98001,1),(98001,2),(98001,4),(100001,3),(198003,5);
/*!40000 ALTER TABLE `Pat_attends_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pat_refer_lab`
--

DROP TABLE IF EXISTS `Pat_refer_lab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pat_refer_lab` (
  `Patient_ID` int(11) NOT NULL,
  `Lab_ID` int(11) NOT NULL,
  KEY `Patient_ID` (`Patient_ID`),
  KEY `Lab_ID` (`Lab_ID`),
  CONSTRAINT `Pat_refer_lab_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `Patient` (`ID`),
  CONSTRAINT `Pat_refer_lab_ibfk_2` FOREIGN KEY (`Lab_ID`) REFERENCES `Labs` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pat_refer_lab`
--

LOCK TABLES `Pat_refer_lab` WRITE;
/*!40000 ALTER TABLE `Pat_refer_lab` DISABLE KEYS */;
INSERT INTO `Pat_refer_lab` VALUES (1,1),(2,3),(3,1),(4,4),(5,3),(3,3);
/*!40000 ALTER TABLE `Pat_refer_lab` ENABLE KEYS */;
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
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER pat_remove_trigger AFTER DELETE ON Patient
FOR EACH ROW
BEGIN
UPDATE Ward SET Occupancy=Occupancy-1 where ID = (select Ward_ID from Pat_admit_ward where Patient_ID=OLD.ID);
DELETE FROM Pat_admit_ward where Patient_ID=OLD.ID;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Patient_bill_drug`
--

DROP TABLE IF EXISTS `Patient_bill_drug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Patient_bill_drug` (
  `Patient_ID` int(11) NOT NULL,
  `Drug_ID` int(11) NOT NULL,
  `Doctor_ID` int(11) NOT NULL,
  KEY `Patient_ID` (`Patient_ID`),
  KEY `Drug_ID` (`Drug_ID`),
  CONSTRAINT `Patient_bill_drug_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `Patient` (`ID`),
  CONSTRAINT `Patient_bill_drug_ibfk_2` FOREIGN KEY (`Drug_ID`) REFERENCES `Drug` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patient_bill_drug`
--

LOCK TABLES `Patient_bill_drug` WRITE;
/*!40000 ALTER TABLE `Patient_bill_drug` DISABLE KEYS */;
INSERT INTO `Patient_bill_drug` VALUES (1,1,98001),(1,2,98001),(2,9,99001),(3,4,198001),(4,6,98001),(5,3,198003),(5,7,198003);
/*!40000 ALTER TABLE `Patient_bill_drug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `Patient_list`
--

DROP TABLE IF EXISTS `Patient_list`;
/*!50001 DROP VIEW IF EXISTS `Patient_list`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `Patient_list` AS SELECT 
 1 AS `ID`,
 1 AS `Name`,
 1 AS `Age`,
 1 AS `Medical_history`*/;
SET character_set_client = @saved_cs_client;

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
INSERT INTO `Pharmacist` VALUES (1,'Godson',20000,'9148 Lantern Road'),(2,'Rhaegar Targarean',20000,'Dragonstone'),(3,'Oberon Martell',20000,'Dorne'),(4,'Myrion V',20000,'KTNGL'),(5,'Jon Snow',20000,'Winterfell');
/*!40000 ALTER TABLE `Pharmacist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pharmacist_at_pharmacy`
--

DROP TABLE IF EXISTS `Pharmacist_at_pharmacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pharmacist_at_pharmacy` (
  `Pharmacist_ID` int(11) NOT NULL,
  `Pharmacy_ID` int(11) NOT NULL,
  KEY `Pharmacist_ID` (`Pharmacist_ID`),
  KEY `Pharmacy_ID` (`Pharmacy_ID`),
  CONSTRAINT `Pharmacist_at_pharmacy_ibfk_1` FOREIGN KEY (`Pharmacist_ID`) REFERENCES `Pharmacist` (`ID`),
  CONSTRAINT `Pharmacist_at_pharmacy_ibfk_2` FOREIGN KEY (`Pharmacy_ID`) REFERENCES `Pharmacy` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pharmacist_at_pharmacy`
--

LOCK TABLES `Pharmacist_at_pharmacy` WRITE;
/*!40000 ALTER TABLE `Pharmacist_at_pharmacy` DISABLE KEYS */;
INSERT INTO `Pharmacist_at_pharmacy` VALUES (1,1),(2,2),(3,2),(4,1),(5,1);
/*!40000 ALTER TABLE `Pharmacist_at_pharmacy` ENABLE KEYS */;
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
-- Table structure for table `Pharmacy_at_room`
--

DROP TABLE IF EXISTS `Pharmacy_at_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pharmacy_at_room` (
  `Pharmacy_ID` int(11) NOT NULL,
  `Room_ID` int(11) NOT NULL,
  KEY `Pharmacy_ID` (`Pharmacy_ID`),
  KEY `Room_ID` (`Room_ID`),
  CONSTRAINT `Pharmacy_at_room_ibfk_1` FOREIGN KEY (`Pharmacy_ID`) REFERENCES `Pharmacy` (`ID`),
  CONSTRAINT `Pharmacy_at_room_ibfk_2` FOREIGN KEY (`Room_ID`) REFERENCES `Rooms` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pharmacy_at_room`
--

LOCK TABLES `Pharmacy_at_room` WRITE;
/*!40000 ALTER TABLE `Pharmacy_at_room` DISABLE KEYS */;
INSERT INTO `Pharmacy_at_room` VALUES (1,8),(2,9);
/*!40000 ALTER TABLE `Pharmacy_at_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Room_at_building`
--

DROP TABLE IF EXISTS `Room_at_building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Room_at_building` (
  `Building_ID` int(11) NOT NULL,
  `Room_ID` int(11) NOT NULL,
  KEY `Building_ID` (`Building_ID`),
  KEY `Room_ID` (`Room_ID`),
  CONSTRAINT `Room_at_building_ibfk_1` FOREIGN KEY (`Building_ID`) REFERENCES `Building` (`ID`),
  CONSTRAINT `Room_at_building_ibfk_2` FOREIGN KEY (`Room_ID`) REFERENCES `Rooms` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Room_at_building`
--

LOCK TABLES `Room_at_building` WRITE;
/*!40000 ALTER TABLE `Room_at_building` DISABLE KEYS */;
INSERT INTO `Room_at_building` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(2,6),(2,7),(2,8),(2,9),(2,10),(3,11),(3,12),(3,13),(3,14),(4,15),(4,16),(4,17),(4,18);
/*!40000 ALTER TABLE `Room_at_building` ENABLE KEYS */;
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
INSERT INTO `Security` VALUES (1,'Raman','Morning',12000,'92 Illinois Ave'),(2,'Arjunan','Morning',12000,'Park Avenue'),(3,'Govardhan','Night',12000,'West Avenue'),(4,'Hamsa','Night',12000,'South Avenue'),(5,'Kishkindan','Morning',12000,'Park Avenue'),(6,'Luttapi','Night',12000,'Balarama'),(7,'R A Jappan','Morning',12000,'Matanjeri'),(8,'Kambodharan','Night',12000,'East fort'),(9,'Dinkan','Morning',12000,'Savier Caves'),(10,'Shaji Pappan','Night',12000,'Munnar');
/*!40000 ALTER TABLE `Security` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Security_assign_building`
--

DROP TABLE IF EXISTS `Security_assign_building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Security_assign_building` (
  `Security_ID` int(11) NOT NULL,
  `Building_ID` int(11) NOT NULL,
  KEY `Security_ID` (`Security_ID`),
  KEY `Building_ID` (`Building_ID`),
  CONSTRAINT `Security_assign_building_ibfk_1` FOREIGN KEY (`Security_ID`) REFERENCES `Security` (`ID`),
  CONSTRAINT `Security_assign_building_ibfk_2` FOREIGN KEY (`Building_ID`) REFERENCES `Building` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Security_assign_building`
--

LOCK TABLES `Security_assign_building` WRITE;
/*!40000 ALTER TABLE `Security_assign_building` DISABLE KEYS */;
INSERT INTO `Security_assign_building` VALUES (1,1),(2,1),(3,2),(4,2),(5,3),(6,3),(7,4),(8,4),(9,1),(10,3);
/*!40000 ALTER TABLE `Security_assign_building` ENABLE KEYS */;
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

--
-- Table structure for table `Ward_at_room`
--

DROP TABLE IF EXISTS `Ward_at_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ward_at_room` (
  `Ward_ID` int(11) NOT NULL,
  `Room_ID` int(11) NOT NULL,
  KEY `Ward_ID` (`Ward_ID`),
  KEY `Room_ID` (`Room_ID`),
  CONSTRAINT `Ward_at_room_ibfk_1` FOREIGN KEY (`Ward_ID`) REFERENCES `Ward` (`ID`),
  CONSTRAINT `Ward_at_room_ibfk_2` FOREIGN KEY (`Room_ID`) REFERENCES `Rooms` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ward_at_room`
--

LOCK TABLES `Ward_at_room` WRITE;
/*!40000 ALTER TABLE `Ward_at_room` DISABLE KEYS */;
INSERT INTO `Ward_at_room` VALUES (1,14),(2,15),(3,16),(4,17),(5,18);
/*!40000 ALTER TABLE `Ward_at_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `Ward_info`
--

DROP TABLE IF EXISTS `Ward_info`;
/*!50001 DROP VIEW IF EXISTS `Ward_info`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `Ward_info` AS SELECT 
 1 AS `ID`,
 1 AS `Occupancy`,
 1 AS `Capacity`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `Drug_list`
--

/*!50001 DROP VIEW IF EXISTS `Drug_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Drug_list` AS select `Drug`.`ID` AS `ID`,`Drug`.`Name` AS `Name`,`Drug`.`Cost` AS `Cost`,`Drug`.`Imported_date` AS `Imported_date`,`Drug`.`Expiry_date` AS `Expiry_date`,`Drug`.`Quantity_available` AS `Quantity_available` from `Drug` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Patient_list`
--

/*!50001 DROP VIEW IF EXISTS `Patient_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Patient_list` AS select `Patient`.`ID` AS `ID`,`Patient`.`Name` AS `Name`,`Patient`.`Age` AS `Age`,`Patient`.`Medical_history` AS `Medical_history` from `Patient` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Ward_info`
--

/*!50001 DROP VIEW IF EXISTS `Ward_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Ward_info` AS select `Ward`.`ID` AS `ID`,`Ward`.`Occupancy` AS `Occupancy`,`Ward`.`Capacity` AS `Capacity` from `Ward` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-22 18:03:24
