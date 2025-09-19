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
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `Patient_ID` int NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `Phone_Num` varchar(20) NOT NULL,
  PRIMARY KEY (`Patient_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'John','Doe','Male','123 Main St','1980-01-01','123-456-7890'),(2,'Jane','Doe','Female','456 Elm St','1985-05-15','555-555-5555'),(3,'Bob','Smith','Male','789 Oak Ave','1975-08-20','444-444-4444'),(4,'Sara','Johnson','Female','321 Maple Ln','1990-02-10','777-777-7777'),(5,'David','Lee','Male','555 Pine St','1988-12-25','999-999-9999'),(6,'Jessica','Davis','Female','888 Cherry Ave','1970-07-12','222-222-2222'),(7,'Michael','Brown','Male','444 Oak St','1995-03-05','888-888-8888'),(8,'Rachel','Garcia','Female','777 Willow Ave','1982-06-30','666-666-6666'),(9,'Kevin','Clark','Male','222 Cedar St','1978-04-22','111-111-1111'),(10,'Amy','Lopez','Female','999 Pine Ave','1987-09-18','333-333-3333'),(11,'Daniel','Chen','Male','666 Elm St','1992-11-08','555-123-4567'),(12,'Emily','Wong','Female','333 Maple Ave','1984-12-31','987-654-3210'),(13,'Alex','Taylor','Male','111 Oak Ln','1973-03-15','321-654-0987'),(14,'Olivia','Nguyen','Female','222 Pine St','1994-07-20','111-222-3333'),(15,'Jacob','Kim','Male','333 Cherry Ave','1981-05-12','444-555-6666'),(16,'Grace','Gonzalez','Female','777 Cedar St','1993-08-02','777-888-9999'),(17,'William','Liu','Male','444 Oak Ave','1976-09-23','222-333-4444'),(18,'Ava','Patel','Female','555 Willow Ln','1989-04-14','999-888-7777'),(19,'Mason','Singh','Male','999 Elm Ave','1983-11-26','666-777-8888'),(20,'Sophia','Lee','Female','888 Maple St','1991-02-18','123-456-7890');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
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
