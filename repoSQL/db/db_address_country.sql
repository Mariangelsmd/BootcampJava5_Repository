-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: db_address
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
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `id_country` int NOT NULL AUTO_INCREMENT,
  `country` varchar(50) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_country`),
  UNIQUE KEY `id_country` (`id_country`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'España','2023-10-18 09:13:13'),(2,'Francia','2023-10-18 09:13:13'),(3,'Portugual','2023-10-18 09:13:13'),(4,'Andorra','2023-10-18 09:13:13'),(5,'Italia','2023-10-18 09:13:13'),(6,'Alemania','2023-10-18 09:13:13'),(7,'Noruega','2023-10-18 09:13:13'),(8,'Suecia','2023-10-18 09:13:13'),(9,'Grecia','2023-10-18 09:13:13'),(10,'Rumania','2023-10-18 09:13:13'),(11,'España','2023-10-18 09:13:48'),(12,'Francia','2023-10-18 09:13:48'),(13,'Portugual','2023-10-18 09:13:48'),(14,'Andorra','2023-10-18 09:13:48'),(15,'Italia','2023-10-18 09:13:48'),(16,'Alemania','2023-10-18 09:13:48'),(17,'Noruega','2023-10-18 09:13:48'),(18,'Suecia','2023-10-18 09:13:48'),(19,'Grecia','2023-10-18 09:13:48'),(20,'Rumania','2023-10-18 09:13:48'),(21,'España','2023-10-18 09:36:25'),(22,'Francia','2023-10-18 09:36:25'),(23,'Portugual','2023-10-18 09:36:25'),(24,'Andorra','2023-10-18 09:36:25'),(25,'Italia','2023-10-18 09:36:25'),(26,'Alemania','2023-10-18 09:36:25'),(27,'Noruega','2023-10-18 09:36:25'),(28,'Suecia','2023-10-18 09:36:25'),(29,'Grecia','2023-10-18 09:36:25'),(30,'Rumania','2023-10-18 09:36:25');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-18 11:41:09
