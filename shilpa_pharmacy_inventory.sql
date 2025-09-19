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
-- Table structure for table `pharmacy_inventory`
--

DROP TABLE IF EXISTS `pharmacy_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pharmacy_inventory` (
  `Medicine_ID` int NOT NULL,
  `Medicine_Name` varchar(255) NOT NULL,
  `Manufacturer` varchar(255) NOT NULL,
  `Expiry_Date` date NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Quantity` int NOT NULL,
  PRIMARY KEY (`Medicine_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pharmacy_inventory`
--

LOCK TABLES `pharmacy_inventory` WRITE;
/*!40000 ALTER TABLE `pharmacy_inventory` DISABLE KEYS */;
INSERT INTO `pharmacy_inventory` VALUES (1,'Aspirin','Bayer','2024-06-01',10.99,50),(2,'Ibuprofen','Advil','2023-09-01',8.99,70),(3,'Acetaminophen','Tylenol','2024-12-01',12.99,30),(4,'Loratadine','Claritin','2023-11-01',14.99,20),(5,'Diphenhydramine','Benadryl','2023-08-01',9.99,40),(6,'Naproxen','Aleve','2022-10-01',11.99,60),(7,'Cetirizine','Zyrtec','2023-05-01',15.99,25),(8,'Lansoprazole','Prevacid','2025-03-01',19.99,15),(9,'Omeprazole','Prilosec','2024-07-01',17.99,35),(10,'Simvastatin','Zocor','2024-09-01',22.99,10),(11,'Atorvastatin','Lipitor','2023-12-01',24.99,5),(12,'Rosuvastatin','Crestor','2022-08-01',27.99,8),(13,'Metformin','Glucophage','2025-02-01',7.99,45),(14,'Lisinopril','Zestril','2023-10-01',5.99,60),(15,'Losartan','Cozaar','2024-01-01',8.99,30),(16,'Amlodipine','Norvasc','2024-02-01',6.99,40),(17,'Metoprolol','Lopressor','2022-11-01',11.99,20),(18,'Warfarin','Coumadin','2023-06-01',9.99,50),(19,'Clopidogrel','Plavix','2022-12-01',18.99,15),(20,'Ranitidine','Zantac','2023-03-01',7.99,25);
/*!40000 ALTER TABLE `pharmacy_inventory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-18 20:14:58
