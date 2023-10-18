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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id_address` int NOT NULL AUTO_INCREMENT,
  `address` varchar(100) DEFAULT NULL,
  `district` varchar(20) DEFAULT NULL,
  `postalZIP` varchar(10) DEFAULT NULL,
  `phonenumber` varchar(20) DEFAULT NULL,
  `location` varchar(20) DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_address`),
  UNIQUE KEY `id_address` (`id_address`),
  KEY `city_id` (`city_id`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`id_city`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Las Rozas 4','Las Rozas','24856','51468594','Mad',1,'2023-10-18 09:35:04'),(2,'Disneyland 1','Disney','24456','51479494','Par',2,'2023-10-18 09:35:04'),(3,'Rua Angusta 38','Angusta','75456','36979494','Lis',3,'2023-10-18 09:35:04'),(4,'Avinguda Meritxell 8','Meritxell','79456','635849152','And',4,'2023-10-18 09:35:04'),(5,'Via del Corso 6','Corso','09846','648521469','Rom',5,'2023-10-18 09:35:04'),(6,'Unter den Linden 42','Unter','24456','51address479494','Ber',6,'2023-10-18 09:35:04'),(7,'Karl Johans gate 4','Karl','24866','548216957','Osl',7,'2023-10-18 09:35:04'),(8,'Drottninggatan 1','Gatan','05649','748615483','Est',8,'2023-10-18 09:35:04'),(9,'Ermou Street 76','Ermou','48510','631548954','Ate',9,'2023-10-18 09:35:04'),(10,'Calea Victoriei 7','Calea','06492','664985496','Buc',10,'2023-10-18 09:35:04'),(11,'Las Rozas 4','Las Rozas','24856','51468594','Mad',1,'2023-10-18 09:36:34'),(12,'Disneyland 1','Disney','24456','51479494','Par',2,'2023-10-18 09:36:34'),(13,'Rua Angusta 38','Angusta','75456','36979494','Lis',3,'2023-10-18 09:36:34'),(14,'Avinguda Meritxell 8','Meritxell','79456','635849152','And',4,'2023-10-18 09:36:34'),(15,'Via del Corso 6','Corso','09846','648521469','Rom',5,'2023-10-18 09:36:34'),(16,'Unter den Linden 42','Unter','24456','51address479494','Ber',6,'2023-10-18 09:36:34'),(17,'Karl Johans gate 4','Karl','24866','548216957','Osl',7,'2023-10-18 09:36:34'),(18,'Drottninggatan 1','Gatan','05649','748615483','Est',8,'2023-10-18 09:36:34'),(19,'Ermou Street 76','Ermou','48510','631548954','Ate',9,'2023-10-18 09:36:34'),(20,'Calea Victoriei 7','Calea','06492','664985496','Buc',10,'2023-10-18 09:36:34');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
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
