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
-- Table structure for table `surgery`
--

DROP TABLE IF EXISTS `surgery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surgery` (
  `Surgery_ID` int NOT NULL,
  `Surgery_Type` varchar(255) NOT NULL,
  `Doctor_ID` int NOT NULL,
  `Patient_ID` int NOT NULL,
  `Surgery_Cost` decimal(10,2) NOT NULL,
  `Surgery_Date` date NOT NULL,
  PRIMARY KEY (`Surgery_ID`),
  KEY `Doctor_ID` (`Doctor_ID`),
  KEY `Patient_ID` (`Patient_ID`),
  CONSTRAINT `surgery_ibfk_1` FOREIGN KEY (`Doctor_ID`) REFERENCES `doctor` (`Doctor_ID`),
  CONSTRAINT `surgery_ibfk_2` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`Patient_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surgery`
--

LOCK TABLES `surgery` WRITE;
/*!40000 ALTER TABLE `surgery` DISABLE KEYS */;
INSERT INTO `surgery` VALUES (1,'Appendectomy',1,20,5000.00,'2023-05-05'),(2,'Knee Replacement',2,12,10000.00,'2023-05-06'),(3,'Gallbladder Removal',13,3,7000.00,'2023-05-07'),(4,'Cataract Surgery',14,2,8000.00,'2023-05-08'),(5,'Hip Replacement',5,16,12000.00,'2023-05-09'),(6,'Breast Biopsy',16,6,4000.00,'2023-05-10'),(7,'Hysterectomy',7,17,9000.00,'2023-05-11'),(8,'Colonoscopy',18,8,3000.00,'2023-05-12'),(9,'Laminectomy',19,9,11000.00,'2023-05-13'),(10,'Tonsillectomy',10,11,6000.00,'2023-05-14'),(11,'Hernia Repair',12,1,8000.00,'2023-05-15'),(12,'Coronary Angioplasty',20,14,15000.00,'2023-05-16'),(13,'Prostatectomy',13,18,10000.00,'2023-05-17'),(14,'Spinal Fusion',15,19,12000.00,'2023-05-18'),(15,'Arthroscopy',20,15,5000.00,'2023-05-19'),(16,'Mastectomy',16,4,8000.00,'2023-05-20'),(17,'Tubal Ligation',17,5,7000.00,'2023-05-21'),(18,'Gastric Bypass',8,7,13000.00,'2023-05-22'),(19,'Laser Eye Surgery',19,17,9000.00,'2023-05-23'),(20,'Liposuction',12,4,10000.00,'2023-05-24');
/*!40000 ALTER TABLE `surgery` ENABLE KEYS */;
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
