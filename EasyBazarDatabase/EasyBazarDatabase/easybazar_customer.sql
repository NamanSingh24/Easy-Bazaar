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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10041 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (10012,'Alice Johnson','123 Main Street, City A',35,'password123','123-456-7890',NULL),(10013,'Bob Smith','456 Elm Street, City B',28,'pass456word','234-567-8901',NULL),(10014,'Charlie Brown','789 Oak Street, City C',42,'letmein789','345-678-9012',NULL),(10015,'David Davis','101 Pine Street, City D',50,'secure1234','456-789-0123',NULL),(10016,'Eve Wilson','202 Maple Street, City E',26,'p@ssw0rd','567-890-1234',NULL),(10017,'Frank Miller','303 Cedar Street, City F',38,'password!','678-901-2345',NULL),(10018,'Grace Taylor','404 Walnut Street, City G',45,'12345678','789-012-3456',NULL),(10019,'Henry Clark','505 Birch Street, City H',33,'qwerty','890-123-4567',NULL),(10020,'Ivy White','606 Hickory Street, City I',29,'abcdefg','901-234-5678',NULL),(10021,'Jack Martinez','707 Spruce Street, City J',48,'password1','012-345-6789',NULL),(10022,'Kate Anderson','808 Fir Street, City K',36,'pass1234','123-456-7890',NULL),(10023,'Liam Harris','909 Sycamore Street, City L',31,'letmein','234-567-8901',NULL),(10024,'Mia Wilson','1010 Aspen Street, City M',40,'password123','345-678-9012',NULL),(10025,'Noah Clark','1111 Cedar Street, City N',27,'password123!','456-789-0123',NULL),(10026,'Olivia Lee','1212 Elm Street, City O',39,'abc123','567-890-1234',NULL),(10027,'Peter Thompson','1313 Maple Street, City P',32,'123456','678-901-2345',NULL),(10028,'Queen Garcia','1414 Oak Street, City Q',47,'password','789-012-3456',NULL),(10029,'Robert Brown','1515 Pine Street, City R',25,'qazwsx','890-123-4567',NULL),(10030,'Samantha Martinez','1616 Birch Street, City S',41,'trustno1','901-234-5678',NULL),(10031,'Thomas Wilson','1717 Cedar Street, City T',30,'letmein123','012-345-6789',NULL),(10032,'Ursula Clark','1818 Elm Street, City U',37,'pass@word','123-456-7890',NULL),(10033,'Victor Taylor','1919 Hickory Street, City V',34,'password1234','234-567-8901',NULL),(10034,'Wendy Davis','2020 Sycamore Street, City W',43,'password!@#','345-678-9012',NULL),(10035,'Xavier Johnson','2121 Aspen Street, City X',28,'123abc','456-789-0123',NULL),(10036,'Yvonne Wilson','2222 Cedar Street, City Y',45,'abcd1234','567-890-1234',NULL),(10037,'Zack Anderson','2323 Elm Street, City Z',29,'password12','678-901-2345',NULL),(10038,'Abigail Martinez','2424 Maple Street, City A1',35,'password@123','789-012-3456',NULL),(10039,'Benjamin Harris','2525 Oak Street, City B1',33,'passw0rd','890-123-4567',NULL),(10040,'Caroline Brown','2626 Pine Street, City C1',39,'password321','901-234-5678',NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
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
