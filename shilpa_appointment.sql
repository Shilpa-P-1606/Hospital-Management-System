-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: shilpa
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `Appointment_ID` int NOT NULL,
  `Patient_ID` int NOT NULL,
  `Doctor_ID` int NOT NULL,
  `Appointment_Date` date NOT NULL,
  `Reason_for_Appointment` varchar(255) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Appointment_ID`),
  KEY `Patient_ID` (`Patient_ID`),
  KEY `Doctor_ID` (`Doctor_ID`),
  CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`Patient_ID`),
  CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`Doctor_ID`) REFERENCES `doctor` (`Doctor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1,1,1,'2023-05-01','Chest pain consultation','Completed'),(2,2,2,'2023-05-02','Pediatric checkup','Completed'),(3,3,3,'2023-05-03','Migraine evaluation','Scheduled'),(4,4,4,'2023-05-04','Cancer follow-up','Completed'),(5,5,5,'2023-05-05','Skin rash treatment','Scheduled');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-18 20:21:28
