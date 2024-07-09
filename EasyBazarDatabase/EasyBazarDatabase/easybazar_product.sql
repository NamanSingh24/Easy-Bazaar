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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `supplier_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `discount_price` decimal(10,2) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `material` varchar(100) DEFAULT NULL,
  `gender` enum('Men','Women','Unisex','Kids') DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `description` text,
  `src` varchar(255) DEFAULT NULL,
  `category` varchar(50) NOT NULL,
  PRIMARY KEY (`product_id`,`supplier_id`),
  KEY `supplier_id` (`supplier_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `vendor` (`vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (67,1001,'Cartoon Astronaut T-shirt',19.99,'10 20 15 5',19.99,'S M L XL','White','Cotton','Unisex','Adidas','A trendy cartoon astronaut t-shirt.','img/products/shirt/f6.jpg','Shirt'),(68,1002,'Beach Shirt',15.99,'15 25 10 5',15.99,'S M L XL','Black','Cotton','Men','Nike','A plain black t-shirt perfect for casual wear.','img/products/shirt/f2.jpg','Shirt'),(69,1003,'Flower Pattern Shirt',17.99,'12 18 20 10',17.99,'S M L XL','Blue','Polyester','Women','Reebok','A stylish V-neck t-shirt.','img/products/shirt/f3.jpg','Shirt'),(70,1004,'Flower Pattern Shirt',18.99,'20 30 25 15',18.99,'S M L XL','Red','Cotton','Men','Puma','A comfortable striped t-shirt.','img/products/shirt/f4.jpg','Shirt'),(71,1005,'Tiger Pattern',20.99,'5 10 8 2',20.99,'S M L XL','Dark Yellow','Cotton','Unisex','Gucci','A graphic tee with vibrant designs.','img/products/shirt/tiger_pattern_shirt.jpg','Shirt'),(72,1006,'Polo Shirt',22.99,'10 20 15 10',22.99,'S M L XL','Dark Blue','Polyester','Men','Levis','A classic polo shirt.','img/products/shirt/dress_dark_blue_shirt.jpg','Shirt'),(73,1007,'Printed Shirt',21.99,'5 10 10 5',21.99,'S M L XL','Black','Cotton','Unisex','Under Armour','A long sleeve t-shirt for cooler days.','img/products/f3.jpg','Shirt'),(74,1008,'Printed Shirt',14.99,'15 20 10 10',14.99,'S M L XL','Yellow','Cotton','Women','Adidas','A tank top for hot summer days.','img/products/shirt/printed_shirt.jpg','Shirt'),(75,1009,'Shirt Combo',29.99,'8 12 10 5',29.99,'S M L XL','Orange with White','Fleece','Unisex','Nike','A cozy look for all seasons.','img/products/shirt/f6.jpg','Shirt'),(76,1010,'Beach',25.99,'10 20 15 10',25.99,'S M L XL','Navy','Cotton','Men','Reebok','A cool airy shirt for casual wear.','img/products/shirt/f1.jpg','Shirt'),(77,1011,'Denim Jacket',49.99,'2 3 4 6',49.99,'S M L XL','Blue','Denim','Unisex','Levis','A classic denim jacket.','img/products/jacket/f11.jpg','Jacket'),(78,1012,'Leather Jacket',89.99,'1 2 3 4',89.99,'S M L XL','Black','Leather','Men','Gucci','A stylish leather jacket.','img/products/jacket/f12.jpg','Jacket'),(79,1013,'Track Pants',35.99,'10 15 10 5',35.99,'S M L XL','Grey','Polyester','Unisex','Nike','Comfortable track pants.','img/products/pants/track1.png','Trouser'),(80,1014,'Jeans',39.99,'15 20 15 10',39.99,'S M L XL','Blue','Denim','Men','Levis','Classic blue jeans.','img/products/pants/j1.png','Trouser'),(81,1015,'Chinos',29.99,'10 12 8 5',29.99,'S M L XL','Dark Green','Cotton','Men','Puma','Stylish khaki chinos.','img/products/pants/chinos1.png','Trouser'),(82,1016,'Shorts',19.99,'20 25 15 10',19.99,'S M L XL','Light Grey','Polyester','Women','Under Armour','Comfortable shorts for active wear.','img/products/pants/n6.jpg','Trouser'),(83,1017,'Bell Trouser with Blossom',24.99,'5 10 8 7',24.99,'S M L XL','Light Greyish-Green','Cotton','Women','Gucci','A stylish light greyish-green trouser.','img/products/pants/f17.jpg','Pant'),(84,1018,'Sneakers',59.99,'10 15 10 5',59.99,'6 7 8 9','White','Leather','Unisex','Adidas','Comfortable white sneakers.','img/products/shoes/custom_air_force_one.jpg','Shoes'),(85,1019,'Air Jordan Travis',65.99,'12 18 10 8',65.99,'6 7 8 9','Black','Mesh','Unisex','Nike','High-performance running shoes.','img/products/shoes/air_jordan_travis.jpg','Shoes'),(86,1020,'Blue Canvas',79.99,'5 10 8 4',79.99,'7 8 9 10','Brown','Canvas','Men','Nike','Elegant formal shoes.','img/products/shoes/blue_canvas.jpg','Shoes'),(87,1021,'Air Jordan Low Top',45.99,'15 20 10 5',45.99,'6 7 8 9','Blue','Canvas','Unisex','Nike','Stylish casual shoes.','img/products/shoes/air_jordan_low_top.jpg','Shoes'),(88,1022,'Wristwatch',199.99,'10 20 15 10',199.99,'One Size','Silver','Metal','Unisex','Gucci','Luxury wristwatch.','img/products/watch/f22.jpg','Watch'),(89,1023,'Smartwatch',149.99,'25 30 20 15',149.99,'One Size','Black','Plastic','Unisex','Apple','Feature-rich smartwatch.','img/products/watch/f23.jpg','Watch'),(90,1024,'Analog Watch',89.99,'15 20 10 5',89.99,'One Size','Gold','Metal','Women','Rolex','Elegant analog watch.','img/products/watch/f24.jpg','Watch'),(91,1025,'Digital Watch',49.99,'20 25 15 10',49.99,'One Size','Black','Plastic','Men','Casio','Functional digital watch.','img/products/watch/f25.jpg','Watch'),(92,1026,'Check Shirt',199.99,'5 10 8 4',199.99,'S M L XL','Black','Wool','Men','Armani','Elegant black suit.','img/products/shirt/check_shirt.jpg','Shirt'),(93,1027,'Blue Check Shirt',149.99,'10 15 10 5',149.99,'S M L XL','Navy','Cotton','Women','H&M','Stylish navy shirt.','img/products/shirt/blue_check_shirt.jpg','Shirt'),(94,1028,'Gucci Casual Trouser',79.99,'20 25 15 10',79.99,'S M L XL','Red','Silk','Unisex','Gucci','Elegant red dress.','img/products/pants/beige_pants.png','Pants'),(95,1029,'Trousers',49.99,'10 15 10 5',49.99,'S M L XL','Grey','Polyester','Men','Levis','Comfortable trousers for everyday wear.','img/products/pants/additrouser.png','Pants');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
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
