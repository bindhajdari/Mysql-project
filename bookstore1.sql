-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: bookstore
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `age` varchar(45) DEFAULT NULL,
  `best_selling_books` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (4,'Fyodor','Dostoeyvesky','Russia',NULL,'3'),(5,'Albert ','Camus','France',NULL,'4'),(6,'Sun','Tzu','Greece',NULL,'1'),(7,'Robert','Greene','USA','45','2'),(8,'Friderich','Nietzsche','Germany',NULL,'5'),(9,'Plato','Aristocles','Greece',NULL,NULL),(10,'Marcus','Arelius','Greece',NULL,'1'),(11,'Marc ','Manson','USA','41','2'),(12,'Cal ','Newport','USA','35','2'),(13,'Napoleon','Hill','USA',NULL,'1'),(14,'James','Clear','USA','47','1');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `isbn` varchar(45) NOT NULL,
  `title` varchar(45) NOT NULL,
  `genre` varchar(45) NOT NULL,
  `publication_year` varchar(45) NOT NULL,
  `price` varchar(45) NOT NULL,
  `author_id` int DEFAULT NULL,
  `publishers_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `isbn_UNIQUE` (`isbn`),
  KEY `fk_authours_id_books_idx` (`author_id`),
  KEY `fk_publishers_id_books_idx` (`publishers_id`),
  CONSTRAINT `fk_authours_id_books` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_publishers_id_books` FOREIGN KEY (`publishers_id`) REFERENCES `publishers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'921-11-34','Think And Grow Rich','Non-Fiction','1956','20',NULL,NULL),(2,'201-12-44','The Brothers Karamazov','Fiction','1856','35',NULL,NULL),(3,'312-45-11','Republic','Philosophical','153','25',NULL,NULL),(4,'193-12-13','48 Laws Of Power','Non-Fiction','2015','30',NULL,NULL),(5,'241-41-12','Atomic Habits','Non-Fiction','2016','35',NULL,NULL),(6,'231-31-12','Thus Spoke Zarathustra','Philosophical','1911','22',NULL,NULL),(7,'121-13-13','Crime And Punishment','Fiction','1869','31',NULL,NULL),(8,'123-11-75','Meditations','Philosophical','143','37',NULL,NULL),(9,'124-12-56','Art of War','Philosophical','146','24',NULL,NULL),(10,'675-13-11','The Subtle Art Of Not Giving A F','Non-Fiction','2019','26',NULL,NULL),(11,'562-23-14','Deep Work','Non-Fiction','2011','27',NULL,NULL),(12,'452-12-51','The Stranger','Fiction','1978','31',NULL,NULL);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `shipping_adress` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Liridon','Gashi','Liridon@gmail.com','044-13-13','Gjilan,Rr.Nena Tereze'),(2,'Elira','Xhafa','Elira@hotmail.com','044-13-14','Prishinte,Rr.Ismail Kadare'),(3,'Vjollca','Bajrami','Vjollca@yahoo.com','033-13-11','Ferizaj,Rr.Fan Noli'),(4,'Arben','Krasniqi','Arben@Live.com','031-11-12','Peje,Rr.Ismail Qemaili'),(5,'Shqipe','Kuka','Shqipe@org.com','031-13-11','Shkoder,Rr. Pal Engjelli'),(6,'Ilir','Hoxha','Ilir@gmail.com','031-13-65','Gjirokaster,Rr. Enver Hoxha'),(7,'Valbona','Murati','Valbona@hotmail.com','067-54-35','Vlore, Rr. Pjeter Bogdani'),(8,'Besnik','Gjokaj','Besnik@live.com','056-15-41','Mitrovice, Rr. Kreshnik Fazliu'),(9,'Lumnije','Berisha','Lumnije@gmail.com','064-23-13','Prizren, Rr. Naim Frasheri');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `book_id` int DEFAULT NULL,
  `qty` varchar(45) NOT NULL,
  `price` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_id_order_details_idx` (`order_id`),
  KEY `fk_book_id_order_details_idx` (`book_id`),
  CONSTRAINT `fk_book_id_order_details` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_order_id_order_details` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (1,1,2,'3','105'),(2,3,5,'1','35'),(3,4,7,'1','31'),(4,5,4,'6','180'),(5,2,6,'3','66'),(6,6,8,'4','148');
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `order_date` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_customer_id_orders_idx` (`customer_id`),
  CONSTRAINT `fk_customer_id_orders` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,2,'2023-08-12'),(2,4,'2020-12-11'),(3,7,'2018-12-04'),(4,9,'2017-12-13'),(5,1,'2015-07-31'),(6,3,'2011-04-12');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishers`
--

DROP TABLE IF EXISTS `publishers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publishers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `located_at` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishers`
--

LOCK TABLES `publishers` WRITE;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;
INSERT INTO `publishers` VALUES (1,'Dukagjini','Rr.Fevzi Sulejmani','013-13-11','Prishtina'),(2,'Albasi','Rr.Gjergj Fishta','011-31-11','Shkoder'),(3,'Onufri','Rr.Hasan Prishtina','044-12-31','Tirana'),(4,'Dudaj','Rr.Gjergj Kastrioti','011-41-13','Tirana'),(5,'Ideart','Rr.Faik Konica','014-14-11','Prishina');
/*!40000 ALTER TABLE `publishers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-19 17:27:47
