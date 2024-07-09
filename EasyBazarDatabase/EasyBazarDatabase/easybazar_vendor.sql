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
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor` (
  `vendor_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1030 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (1001,'ABC Company','123 Main Street, City A','password123'),(1002,'XYZ Corporation','456 Elm Street, City B','pass456word'),(1003,'Smith & Sons','789 Oak Street, City C','letmein789'),(1004,'Johnson Enterprises','101 Pine Street, City D','secure1234'),(1005,'Acme Industries','202 Maple Street, City E','p@ssw0rd'),(1006,'Jones Ltd.','303 Cedar Street, City F','password!'),(1007,'Miller Co.','404 Walnut Street, City G','12345678'),(1008,'White Manufacturing','505 Birch Street, City H','qwerty'),(1009,'Brown Brothers','606 Hickory Street, City I','abcdefg'),(1010,'Wilson & Co.','707 Spruce Street, City J','password1'),(1011,'Clark Industries','808 Fir Street, City K','pass1234'),(1012,'Taylor Corporation','909 Sycamore Street, City L','letmein'),(1013,'Davis Enterprises','1010 Aspen Street, City M','password123'),(1014,'Martinez Ltd.','1111 Cedar Street, City N','password123!'),(1015,'Anderson Manufacturing','1212 Elm Street, City O','abc123'),(1016,'Thomas & Sons','1313 Maple Street, City P','123456'),(1017,'Roberts Inc.','1414 Oak Street, City Q','password'),(1018,'Garcia Corporation','1515 Pine Street, City R','qazwsx'),(1019,'Lee Co.','1616 Birch Street, City S','trustno1'),(1020,'Harris Industries','1717 Cedar Street, City T','letmein123'),(1021,'Clarkson Ltd.','1818 Elm Street, City U','pass@word'),(1022,'Murphy & Co.','1919 Hickory Street, City V','password1234'),(1023,'Sullivan Enterprises','2020 Sycamore Street, City W','password!@#'),(1024,'Jackson Manufacturing','2121 Aspen Street, City X','123abc'),(1025,'Thompson Corporation','2222 Cedar Street, City Y','abcd1234'),(1026,'Evans Ltd.','2323 Elm Street, City Z','password12'),(1027,'King Industries','2424 Maple Street, City A1','password@123'),(1028,'Baker Co.','2525 Oak Street, City B1','passw0rd'),(1029,'Green Corporation','2626 Pine Street, City C1','password321');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
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
