-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: easybazar
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(40) NOT NULL,
  `MIDDLE_NAME` varchar(40) DEFAULT NULL,
  `LAST_NAME` varchar(40) DEFAULT NULL,
  `EMAIL` varchar(40) NOT NULL,
  `PHONE_NUMBER` varchar(10) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `ACCOUNT_NO` varchar(14) DEFAULT NULL,
  `POST` varchar(100) DEFAULT NULL,
  `DEPT_ID` int DEFAULT NULL,
  `SALARY` int DEFAULT NULL,
  `MANAGER_ID` int DEFAULT NULL,
  `DOJ` date NOT NULL,
  `GENDER` varchar(1) DEFAULT NULL,
  `BRANCH` varchar(100) DEFAULT NULL,
  `HOURLY_PAY` decimal(10,2) DEFAULT NULL,
  `AGE` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `EMAIL` (`EMAIL`),
  KEY `DEPT_ID` (`DEPT_ID`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`DEPT_ID`) REFERENCES `department` (`DEPT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'John','Doe','','john.doe@gamil.com','1234567890',NULL,'1990-01-01','12345678901234','Manager',1,49999,NULL,'2023-01-01','M','Branch A',312.49,NULL),(2,'Grace','Allen','','grace.allen@example.com','1234567890',NULL,'1992-08-10','12345678901234','Employee',9,47999,24,'2023-11-15','F','Branch C',299.99,NULL),(3,'Henry','Ward','','henry.ward@example.com','2345678901',NULL,'1989-04-20','23456789012345','Manager',9,62999,NULL,'2023-12-01','M','Branch A',393.74,NULL),(4,'Sophia','Foster','','sophia.foster@example.com','3456789012',NULL,'1994-10-15','34567890123456','Employee',4,48999,26,'2023-12-15','F','Branch B',306.24,NULL),(5,'Ethan','Evans','','ethan.evans@example.com','4567890123',NULL,'1988-05-05','45678901234567','Manager',4,63999,NULL,'2024-01-01','M','Branch B',399.99,NULL),(6,'Isabella','Dixon','','isabella.dixon@example.com','5678901234',NULL,'1991-12-01','56789012345678','Employee',4,50999,28,'2024-01-15','F','Branch A',318.74,NULL),(7,'Jackson','Shaw','','jackson.shaw@example.com','6789012345',NULL,'1996-02-28','67890123456789','Manager',6,64999,NULL,'2024-02-01','M','Branch C',406.24,NULL),(8,'Ava','Jordan','','ava.jordan@example.com','7890123456',NULL,'1989-07-20','78901234567890','Employee',6,49999,30,'2024-02-15','F','Branch C',312.49,NULL),(9,'Liam','Harper','','liam.harper@example.com','8901234567',NULL,'1993-03-12','89012345678901','Manager',8,65999,NULL,'2024-03-01','M','Branch A',412.49,NULL),(10,'Charlotte','Cole','','charlotte.cole@example.com','9012345678',NULL,'1987-09-08','90123456789012','Employee',8,51999,32,'2024-03-15','F','Branch B',324.99,NULL),(11,'Mason','Fisher','','mason.fisher@example.com','0123456789',NULL,'1990-04-25','01234567890123','Manager',7,66999,NULL,'2024-04-01','M','Branch B',418.74,NULL),(12,'Amelia','Harrison','','amelia.harrison@example.com','1234567890',NULL,'1985-11-17','12345678901234','Employee',7,50999,34,'2024-04-15','F','Branch C',318.74,NULL),(13,'Noah','Dunn','','noah.dunn@example.com','2345678901',NULL,'1995-06-30','23456789012345','Manager',6,67999,NULL,'2024-05-01','M','Branch A',424.99,NULL),(14,'Ella','Perkins','','ella.perkins@example.com','3456789012',NULL,'1988-01-22','34567890123456','Employee',5,52999,36,'2024-05-15','F','Branch B',331.24,NULL),(15,'Jacob','Gardner','','jacob.gardner@example.com','4567890123',NULL,'1992-07-18','45678901234567','Manager',4,68999,NULL,'2024-06-01','M','Branch B',431.24,NULL),(16,'Abigail','Stephens','','abigail.stephens@example.com','5678901234',NULL,'1986-12-04','56789012345678','Employee',4,53999,38,'2024-06-15','F','Branch A',337.49,NULL),(17,'Oliver','Chapman','','oliver.chapman@example.com','6789012345',NULL,'1991-05-27','67890123456789','Manager',3,69999,NULL,'2024-07-01','M','Branch C',437.49,NULL),(18,'Alice','Smith','','alice.smith@example.com','2345678901',NULL,'1995-02-15','23456789012345','Employee',1,39999,1,'2023-01-15','F','Branch A',249.99,NULL),(19,'Michael','Johnson','','michael.johnson@example.com','3456789012',NULL,'1988-06-30','34567890123456','Employee',2,44999,1,'2023-02-01','M','Branch B',281.24,NULL),(20,'Emma','Lee','','emma.lee@example.com','4567890123',NULL,'1992-11-20','45678901234567','Manager',2,54999,NULL,'2023-03-01','F','Branch B',343.74,NULL),(21,'David','Wong','','david.wong@example.com','5678901234',NULL,'1987-04-05','56789012345678','Employee',1,47999,4,'2023-03-15','M','Branch A',299.99,NULL),(22,'Sarah','Taylor','','sarah.taylor@example.com','6789012345',NULL,'1993-09-10','67890123456789','Manager',3,51999,NULL,'2023-04-01','F','Branch C',324.99,NULL),(23,'Robert','Chen','','robert.chen@example.com','7890123456',NULL,'1990-03-25','78901234567890','Employee',3,46999,7,'2023-04-15','M','Branch C',293.74,NULL),(24,'Emily','Brown','','emily.brown@example.com','8901234567',NULL,'1994-07-12','89012345678901','Manager',1,53999,NULL,'2023-05-01','F','Branch A',337.49,NULL),(25,'Daniel','Liu','','daniel.liu@example.com','9012345678',NULL,'1989-12-28','90123456789012','Employee',2,45999,10,'2023-05-15','M','Branch B',287.49,NULL),(26,'Olivia','Garcia','','olivia.garcia@example.com','0123456789',NULL,'1991-05-18','01234567890123','Manager',2,57999,NULL,'2023-06-01','F','Branch B',362.49,NULL),(27,'James','Rodriguez','','james.rodriguez@example.com','1234567890',NULL,'1985-08-22','12345678901234','Manager',3,55999,NULL,'2023-07-01','M','Branch C',349.99,NULL),(28,'Sophia','Martinez','','sophia.martinez@example.com','2345678901',NULL,'1996-01-30','23456789012345','Employee',1,48999,14,'2023-07-15','F','Branch A',306.24,NULL),(29,'Alexander','Nguyen','','alexander.nguyen@example.com','3456789012',NULL,'1986-10-17','34567890123456','Manager',1,59999,NULL,'2023-08-01','M','Branch A',374.99,NULL),(30,'Ava','Perez','','ava.perez@example.com','4567890123',NULL,'1992-03-05','45678901234567','Employee',2,47999,16,'2023-08-15','F','Branch B',299.99,NULL),(31,'Benjamin','Gonzalez','','benjamin.gonzalez@example.com','5678901234',NULL,'1988-11-28','56789012345678','Manager',2,58999,NULL,'2023-09-01','M','Branch B',368.74,NULL),(32,'Mia','Wilson','','mia.wilson@example.com','6789012345',NULL,'1993-06-14','67890123456789','Employee',3,48999,19,'2023-09-15','F','Branch C',306.24,NULL),(33,'William','Lopez','','william.lopez@example.com','7890123456',NULL,'1990-01-25','78901234567890','Manager',3,60999,NULL,'2023-10-01','M','Branch C',381.24,NULL),(34,'Charlotte','Hernandez','','charlotte.hernandez@example.com','8901234567',NULL,'1994-04-09','89012345678901','Employee',1,49999,22,'2023-10-15','F','Branch A',312.49,NULL),(35,'Daniel','Garcia','','daniel.garcia@example.com','9012345678',NULL,'1989-09-24','90123456789012','Manager',1,61999,NULL,'2023-11-01','M','Branch A',387.49,NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-09 19:22:02
