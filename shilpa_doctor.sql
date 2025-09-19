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
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `Doctor_ID` int NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `Address` varchar(100) NOT NULL,
  `Specialization` varchar(50) NOT NULL,
  `Phone_Num` varchar(20) NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `Schedule` varchar(100) NOT NULL,
  PRIMARY KEY (`Doctor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'Evelyn','Singh','Male','123 Main St','Cardiology','123-456-7890','1980-01-01','Tuesday-Thursday 9am-5pm'),(2,'Lucas','Chen','Female','456 Elm St','Pediatrics','555-555-5555','1985-05-15','Friday-Sunday 10am-6pm'),(3,'Charlotte','Wong','Male','789 Oak Ave','Neurology','444-444-4444','1975-08-20','Saturday-Tuesday 8am-4pm'),(4,'Mason','Gupta','Female','321 Maple Ln','Oncology','777-777-7777','1990-02-10','Wednesday-Saturday 12pm-8pm'),(5,'Amelia','Ali','Male','555 Pine St','Dermatology','999-999-9999','1988-12-25','Monday-Wednesday 1pm-9pm'),(6,'Megan','Jones','Female','888 Cherry Ave','Obstetrics and Gynecology','222-222-2222','1970-07-12','Friday 10am-6pm'),(7,'Anthony','Garcia','Male','444 Oak St','Psychiatry','888-888-8888','1995-03-05','Monday 9am-5pm'),(8,'Katherine','Nguyen','Female','777 Willow Ave','Endocrinology','666-666-6666','1982-06-30','Sunday 8am-4pm'),(9,'Kevin','Clark','Male','222 Cedar St','Urology','111-111-1111','1978-04-22','Monday-Friday 12pm-8pm'),(10,'Daniel','Kim','Female','999 Pine Ave','Rheumatology','333-333-3333','1987-09-18','Sunday-Thursday 1pm-9pm'),(11,'Samantha','Patel','Male','666 Elm St','Ophthalmology','555-123-4567','1992-11-08','Tuesday-Saturday 10am-6pm'),(12,'William','Gonzalez','Female','333 Maple Ave','Otolaryngology','987-654-3210','1984-12-31','Wednesday-Sunday 9am-5pm'),(13,'Emily','Collins','Male','111 Oak Ln','Hematology','321-654-0987','1973-03-15','Thursday 8am-4pm'),(14,'Christopher','Lee','Female','222 Pine St','Pulmonology','111-222-3333','1994-07-20','Saturday 12pm-8pm'),(15,'Jacob','Kim','Male','333 Cherry Ave','Infectious Disease','444-555-6666','1981-05-12','Friday 1pm-9pm'),(16,'Ethan','Gupta','Male','555 Oak Ave','Pediatrics','111-222-3333','1980-05-10','Monday-Friday 9am-5pm'),(17,'Isabella','Chang','Female','222 Pine Ln','Cardiology','444-555-6666','1995-12-25','Monday-Wednesday 10am-2pm'),(18,'Logan','Shah','Male','888 Cedar Ave','Oncology','777-888-9999','1987-08-16','Tuesday-Thursday 11am-3pm'),(19,'Avery','Kaur','Female','777 Willow Ln','Psychiatry','666-777-8888','1990-02-28','Monday-Friday 1pm-7pm'),(20,'Liam','Hepburn','Male','333 Oak St','Dermatology','555-666-7777','1978-06-20','Tuesday-Thursday 9am-12pm'),(21,'sai','shilpa','female','2231 live oak st','deramtology','903-355-8148','1999-01-16','none');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-18 20:13:14
