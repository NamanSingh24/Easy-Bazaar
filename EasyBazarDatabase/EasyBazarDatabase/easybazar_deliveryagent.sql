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
-- Table structure for table `deliveryagent`
--

DROP TABLE IF EXISTS `deliveryagent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveryagent` (
  `agent_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `availability` tinyint(1) NOT NULL,
  PRIMARY KEY (`agent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5039 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryagent`
--

LOCK TABLES `deliveryagent` WRITE;
/*!40000 ALTER TABLE `deliveryagent` DISABLE KEYS */;
INSERT INTO `deliveryagent` VALUES (5010,'John Doe','123-456-7890','password123',1),(5011,'Alice Smith','234-567-8901','pass456word',1),(5012,'Bob Johnson','345-678-9012','letmein789',0),(5013,'Emily Brown','456-789-0123','secure1234',1),(5014,'Michael Wilson','567-890-1234','p@ssw0rd',1),(5015,'Emma Garcia','678-901-2345','password!',0),(5016,'William Martinez','789-012-3456','12345678',1),(5017,'Olivia Taylor','890-123-4567','qwerty',1),(5018,'James Clark','901-234-5678','abcdefg',0),(5019,'Sophia Rodriguez','012-345-6789','password1',1),(5020,'Alexander Hernandez','123-456-7890','pass1234',0),(5021,'Charlotte Young','234-567-8901','letmein',1),(5022,'Daniel Lee','345-678-9012','password123',1),(5023,'Grace Gonzalez','456-789-0123','password123!',0),(5024,'Henry Lewis','567-890-1234','abc123',1),(5025,'Ava Walker','678-901-2345','123456',1),(5026,'Jackson Hall','789-012-3456','password',0),(5027,'Madison Allen','890-123-4567','qazwsx',1),(5028,'David Scott','901-234-5678','trustno1',1),(5029,'Lily Green','012-345-6789','letmein123',0),(5030,'Ethan King','123-456-7890','pass@word',1),(5031,'Chloe Hill','234-567-8901','password1234',1),(5032,'Mia Carter','345-678-9012','password!@#',0),(5033,'Noah Baker','456-789-0123','123abc',1),(5034,'Ella Rivera','567-890-1234','abcd1234',1),(5035,'Aiden Cooper','678-901-2345','password12',0),(5036,'Isabella Flores','789-012-3456','password@123',1),(5037,'Jacob Morris','890-123-4567','passw0rd',1),(5038,'Avery Peterson','901-234-5678','password321',0);
/*!40000 ALTER TABLE `deliveryagent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-09 19:22:03
