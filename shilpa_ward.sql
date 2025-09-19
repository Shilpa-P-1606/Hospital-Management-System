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
-- Table structure for table `ward`
--

DROP TABLE IF EXISTS `ward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ward` (
  `Ward_ID` int NOT NULL,
  `Ward_Name` varchar(50) NOT NULL,
  `Ward_Type` varchar(50) NOT NULL,
  `Ward_Capacity` int NOT NULL,
  `Availability` varchar(20) NOT NULL,
  `Current_Occupancy` int NOT NULL,
  `Ward_Charge` varchar(20) NOT NULL,
  PRIMARY KEY (`Ward_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ward`
--

LOCK TABLES `ward` WRITE;
/*!40000 ALTER TABLE `ward` DISABLE KEYS */;
INSERT INTO `ward` VALUES (1,'Cardiology Ward','Cardiology',10,'Available',0,'Olivia'),(2,'Oncology Ward','Oncology',12,'Available',0,'Benjamin'),(3,'Neurology Ward','Neurology',8,'Occupied',8,'Isabella'),(4,'Pediatrics Ward','Pediatrics',15,'Available',0,'Lucas'),(5,'Surgical Ward','Surgical',20,'Occupied',15,'Victoria'),(6,'Psychiatric Ward','Psychiatry',6,'Available',0,'Ethan'),(7,'Maternity Ward','Maternity',10,'Occupied',7,'Leah'),(8,'Orthopedic Ward','Orthopedic',12,'Available',0,'Alexander'),(9,'Intensive Care Unit','ICU',5,'Occupied',5,'Sofia'),(10,'Emergency Ward','Emergency',10,'Occupied',9,'Caleb'),(11,'Neonatal Intensive Care Unit','NICU',8,'Available',0,'Ava'),(12,'Gynecology Ward','Gynecology',10,'Occupied',8,'Wyatt'),(13,'Hematology Ward','Hematology',6,'Available',0,'Maya'),(14,'Endocrinology Ward','Endocrinology',6,'Available',0,'Levi'),(15,'Dermatology Ward','Dermatology',8,'Occupied',6,'Naomi'),(16,'Gastroenterology Ward','Gastroenterology',12,'Occupied',11,'Owen'),(17,'Nephrology Ward','Nephrology',10,'Available',0,'Julia'),(18,'Radiology Ward','Radiology',6,'Available',0,'Nolan'),(19,'Pulmonology Ward','Pulmonology',8,'Occupied',4,'Audrey'),(20,'Urology Ward','Urology',10,'Available',0,'Sebastian');
/*!40000 ALTER TABLE `ward` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-18 20:16:34
