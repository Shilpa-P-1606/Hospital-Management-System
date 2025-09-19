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
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `Staff_ID` int NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Job_Title` varchar(50) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Schedule` varchar(100) NOT NULL,
  PRIMARY KEY (`Staff_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Sarah','Johnson','Female','123 Main St','Registered Nurse','Cardiology','Monday-Friday 9AM-5PM'),(2,'Daniel','Chen','Male','456 Elm St','Cardiologist','Cardiology','Monday-Friday 8AM-4PM'),(3,'Emily','Wong','Female','789 Oak Ave','Surgeon','Surgery','Tuesday-Saturday 10AM-6PM'),(4,'David','Lee','Male','321 Maple Ln','Licensed Practical Nurse','Pediatrics','Monday-Friday 8AM-4PM'),(5,'Olivia','Nguyen','Female','555 Pine St','Pediatrician','Pediatrics','Monday-Friday 9AM-5PM'),(6,'Grace','Gonzalez','Female','888 Cherry Ave','Registered Nurse','Emergency Medicine','Saturday-Wednesday 11AM-7PM'),(7,'Ava','Patel','Female','444 Oak St','Family Practitioner','Family Medicine','Monday-Friday 9AM-5PM'),(8,'William','Liu','Male','777 Willow Ave','Neurologist','Neurology','Monday-Friday 8AM-4PM'),(9,'Sophia','Lee','Female','222 Cedar St','Licensed Practical Nurse','Oncology','Thursday-Monday 12PM-8PM'),(10,'Mason','Singh','Male','999 Pine Ave','Oncologist','Oncology','Monday-Friday 9AM-5PM'),(11,'Emma','Garcia','Female','666 Elm St','Registered Nurse','Intensive Care Unit','Wednesday-Sunday 10AM-6PM'),(12,'James','Smith','Male','333 Maple Ave','Intensivist','Intensive Care Unit','Monday-Friday 8AM-4PM'),(13,'Isabella','Brown','Female','111 Oak Ln','Endocrinologist','Endocrinology','Tuesday-Saturday 9AM-5PM'),(14,'Noah','Taylor','Male','222 Pine St','Licensed Practical Nurse','Psychiatry','Monday-Friday 8AM-4PM'),(15,'Sophie','Clark','Female','333 Cherry Ave','Psychiatrist','Psychiatry','Monday-Friday 9AM-5PM'),(16,'Eva','Kim','Female','888 Willow Ln','Registered Nurse','Nursing','Saturday-Wednesday 11AM-7PM'),(17,'Connor','Gonzalez','Male','444 Pine St','Emergency Physician','Emergency','Wednesday-Sunday 10AM-6PM'),(18,'Leah','Chen','Female','111 Willow Ave','Pediatrician','Pediatrics','Wednesday-Sunday 10AM-6PM'),(19,'Lucas','Patel','Male','999 Cedar Ln','Surgeon','Surgery','Thursday-Monday 12PM-8PM'),(20,'Bella','Singh','Female','777 Cherry St','Radiologist','Radiology','Tuesday-Saturday 9AM-5PM');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
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
