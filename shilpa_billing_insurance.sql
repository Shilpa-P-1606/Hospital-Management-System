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
-- Table structure for table `billing_insurance`
--

DROP TABLE IF EXISTS `billing_insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing_insurance` (
  `Bill_ID` int NOT NULL,
  `Patient_ID` int NOT NULL,
  `Date` date NOT NULL,
  `Amount_Due` decimal(10,2) NOT NULL,
  `Insurance_Provider` varchar(100) DEFAULT NULL,
  `Insurance_Policy_Number` varchar(50) DEFAULT NULL,
  `Claim_Status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Bill_ID`),
  KEY `Patient_ID` (`Patient_ID`),
  CONSTRAINT `billing_insurance_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`Patient_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing_insurance`
--

LOCK TABLES `billing_insurance` WRITE;
/*!40000 ALTER TABLE `billing_insurance` DISABLE KEYS */;
INSERT INTO `billing_insurance` VALUES (1,1,'2023-05-05',5000.00,'BlueCross','BC12345','Paid'),(2,2,'2023-05-06',1500.00,'Aetna','AE98765','Pending'),(3,3,'2023-05-07',2000.00,'UnitedHealth','UH54321','Denied'),(4,4,'2023-05-08',7500.00,'Cigna','CG67890','Paid'),(5,5,'2023-05-09',800.00,NULL,NULL,'Uninsured');
/*!40000 ALTER TABLE `billing_insurance` ENABLE KEYS */;
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
