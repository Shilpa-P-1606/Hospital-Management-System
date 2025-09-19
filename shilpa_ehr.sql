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
-- Table structure for table `ehr`
--

DROP TABLE IF EXISTS `ehr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ehr` (
  `EHR_ID` int NOT NULL,
  `Patient_ID` int NOT NULL,
  `Doctor_ID` int NOT NULL,
  `Medical_History` text,
  `Diagnosis` varchar(255) DEFAULT NULL,
  `Lab_Test_Results` text,
  PRIMARY KEY (`EHR_ID`),
  KEY `Patient_ID` (`Patient_ID`),
  KEY `Doctor_ID` (`Doctor_ID`),
  CONSTRAINT `ehr_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`Patient_ID`),
  CONSTRAINT `ehr_ibfk_2` FOREIGN KEY (`Doctor_ID`) REFERENCES `doctor` (`Doctor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ehr`
--

LOCK TABLES `ehr` WRITE;
/*!40000 ALTER TABLE `ehr` DISABLE KEYS */;
INSERT INTO `ehr` VALUES (1,1,1,'History of hypertension','Angina','ECG abnormal'),(2,2,2,'Routine pediatric visits','Flu','Blood test normal'),(3,3,3,'Recurring migraines','Migraine','MRI clear'),(4,4,4,'Breast cancer history','Breast Cancer','Mammogram abnormal'),(5,5,5,'History of eczema','Skin allergy','Biopsy normal');
/*!40000 ALTER TABLE `ehr` ENABLE KEYS */;
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
