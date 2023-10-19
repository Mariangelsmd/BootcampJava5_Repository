-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: db_movies
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
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `yeat` int DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `certificate` varchar(45) DEFAULT NULL,
  `runtime` int DEFAULT NULL,
  `imbd_rating` float DEFAULT NULL,
  `descript` text,
  `metascore` int DEFAULT NULL,
  `votes` int DEFAULT NULL,
  `gross` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Titanic',1997,'https://example.com/titanic.jpg','PG-13',195,7.8,'A love story on a sinking ship.',75,1200000,2200000000),(2,'Grease',1978,'https://example.com/grease.jpg','PG',110,7.2,'A musical about high school romance.',68,500000,396000000),(3,'Pulp Fiction',1994,'https://example.com/pulpfiction.jpg','R',154,8.9,'Crime and dark humor intersect in Los Angeles.',94,1500000,214000000),(4,'Blade Runner',1982,'https://example.com/bladerunner.jpg','R',117,8.1,'A dystopian future where humans and replicants coexist.',89,900000,33000000),(5,'El resplandor',1980,'https://example.com/shining.jpg','R',146,8.4,'A family encounters supernatural forces at an isolated hotel.',63,800000,44701672),(6,'El Padrino',1972,'https://example.com/godfather.jpg','R',175,9.2,'The story of the Corleone crime family.',100,2000000,245066411),(7,'Origen',2010,'https://example.com/inception.jpg','PG-13',148,8.8,'A thief enters the dreams of others.',74,2000000,829895144),(8,'Regreso al futuro',1985,'https://example.com/bttf.jpg','PG',116,8.5,'Time-travel adventure with Marty McFly and Doc Brown.',87,900000,381109762),(9,'American History X',1998,'https://example.com/americanhistoryx.jpg','R',119,8.5,'A former neo-nazi tries to prevent his brother from going down the same wrong path.',62,800000,23700184),(10,'Casablanca',1942,'https://example.com/casablanca.jpg','PG',102,8.5,'Romantic drama set during World War II.',100,600000,10462500);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-19 17:26:25
