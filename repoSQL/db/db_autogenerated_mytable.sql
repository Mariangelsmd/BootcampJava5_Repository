-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: db_autogenerated
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
-- Table structure for table `mytable`
--

DROP TABLE IF EXISTS `mytable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mytable` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `numberrange` int DEFAULT NULL,
  `text` text,
  `postalZip` varchar(15) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `list` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mytable`
--

LOCK TABLES `mytable` WRITE;
/*!40000 ALTER TABLE `mytable` DISABLE KEYS */;
INSERT INTO `mytable` VALUES (1,8,'sem semper erat, in consectetuer ipsum nunc id enim. Curabitur','1344-1334','Tula Oblast','Austria','11','997-7920 Vivamus St.','consectetuer.rhoncus.nullam@hotmail.com','Bradley Gordon','(855) 835-8816'),(2,9,'tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio.','7800','Northern Territory','South Korea','17','Ap #583-5169 Luctus St.','libero.proin@yahoo.edu','Isabelle Hood','(573) 712-5822'),(3,3,'tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec','248677','Friuli-Venezia Giulia','Peru','11','Ap #183-3872 Ut Rd.','non@outlook.couk','Charissa Sheppard','1-467-867-0586'),(4,9,'dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel,','1523','Zhōngnán','Philippines','17','Ap #512-3838 Tellus Av.','eros.nec@google.edu','Kiayada Hull','1-647-378-5311'),(5,1,'neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce','42211','Upper Austria','Ukraine','3','P.O. Box 695, 8841 Ultrices Ave','montes@yahoo.ca','Jamalia Mcdaniel','(722) 523-4168'),(6,10,'eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis,','95550','Basse-Normandie','Costa Rica','13','7224 Est Av.','arcu.imperdiet@google.org','Hiroko Ferguson','(441) 568-4564'),(7,2,'molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras','59639','Sicilia','South Africa','15','553-4728 Ac, Av.','nec.metus@yahoo.net','Drake Mercado','1-175-463-6194'),(8,9,'tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu','771791','Cartago','Costa Rica','17','P.O. Box 874, 3311 Eu, Ave','risus.nunc.ac@aol.com','Germane Rojas','(165) 866-4583'),(9,4,'fermentum metus. Aenean sed pede nec ante blandit viverra. Donec','12687','Norte de Santander','Philippines','7','927-7615 Quam St.','lobortis.quam@protonmail.couk','Alexa George','1-854-116-3349'),(10,4,'est, mollis non, cursus non, egestas a, dui. Cras pellentesque.','866847','Gävleborgs län','South Korea','3','187-7690 Nunc Street','id.sapien.cras@outlook.net','Aaron Hahn','(555) 728-2300'),(11,2,'pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus','581675','Vlaams-Brabant','Sweden','11','P.O. Box 520, 5150 Risus. Rd.','vitae.aliquet@outlook.org','Tara Leon','(532) 429-7653'),(12,5,'lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in','883484','Nairnshire','Costa Rica','5','535-7440 Nec Ave','nonummy.ultricies.ornare@google.com','Adrian Vance','1-135-533-3418'),(13,1,'pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum.','3280','Huila','Turkey','19','271-4534 Feugiat Av.','lorem.lorem@yahoo.edu','Jamalia Hancock','(554) 817-4814'),(14,4,'non enim. Mauris quis turpis vitae purus gravida sagittis. Duis','878647','Lower Austria','Germany','9','978-1405 Risus. Road','massa.non@aol.org','Meredith Benton','1-540-482-9563'),(15,6,'sem mollis dui, in sodales elit erat vitae risus. Duis','45221','New South Wales','Australia','19','Ap #558-7449 Justo St.','aliquet@yahoo.ca','Heidi Barker','(343) 550-2648'),(16,4,'non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat','92336','Xīběi','Russian Federation','11','143-8269 Risus. Rd.','a.magna.lorem@yahoo.couk','Kylynn Garza','(682) 155-3669'),(17,7,'eget nisi dictum augue malesuada malesuada. Integer id magna et','87461','Bremen','Peru','17','415-2735 Donec St.','aliquam.auctor@hotmail.net','Rae Bright','1-363-274-4673'),(18,1,'ultrices a, auctor non, feugiat nec, diam. Duis mi enim,','251535','Connacht','Brazil','15','2872 Eu, Road','tincidunt.pede@google.edu','Justine Mcneil','(683) 609-7353'),(19,8,'urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat','61563','Eastern Cape','Turkey','17','818-531 Nunc Rd.','arcu.imperdiet@google.net','Talon Rutledge','(237) 834-8892'),(20,10,'ante ipsum primis in faucibus orci luctus et ultrices posuere','36316','North Region','Italy','1','Ap #272-1583 Ut Av.','justo.proin@protonmail.net','Jermaine Higgins','1-622-542-2867'),(21,2,'a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','38435-78477','South Island','Nigeria','5','7519 Tristique Av.','vestibulum@hotmail.com','Tarik Bryant','1-417-901-2936'),(22,8,'lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras','S8W 1W1','Córdoba','Ukraine','13','P.O. Box 669, 4046 Aliquam Av.','ac.urna@google.edu','Hannah Keller','1-780-625-5565'),(24,10,'mollis dui, in sodales elit erat vitae risus. Duis a','783007','İzmir','South Africa','13','Ap #395-9710 Metus Avenue','tempor@outlook.ca','Beatrice Chambers','(161) 322-2717'),(25,6,'montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique','728842','East Nusa Tenggara','France','15','184-8363 Massa. St.','morbi.non@hotmail.com','Jason Blackwell','1-581-170-7738'),(26,3,'Curae Phasellus ornare. Fusce mollis. Duis sit amet diam eu','2825 FU','Östergötlands län','Russian Federation','15','333-3635 Sociis Avenue','condimentum@hotmail.edu','Alec Riley','1-451-635-3980'),(27,3,'mauris ut mi. Duis risus odio, auctor vitae, aliquet nec,','45429-673','Lower Austria','United States','15','289-2746 Metus. Av.','lectus.nullam.suscipit@protonmail.couk','Jane Hensley','1-882-314-5428'),(28,3,'at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit','2448','Amur Oblast','Spain','3','3832 Sociis Rd.','eget@icloud.edu','Justina Witt','(538) 245-6310'),(29,5,'magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed,','5846 GP','Huádōng','United Kingdom','13','Ap #928-8422 Quisque St.','fringilla@protonmail.com','Destiny Warren','(448) 320-0660'),(31,4,'Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus','443886','Cordillera Administrative Region','Poland','1','Ap #258-6400 Lacus. St.','dictum.ultricies@icloud.org','Kylynn Lowery','(459) 671-0361'),(32,3,'sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra,','04453','West Bengal','India','17','378-8108 Non Street','pharetra@icloud.edu','Hanna Reese','(511) 946-8298'),(33,9,'scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia.','4680 QS','Connacht','South Africa','17','Ap #511-9846 Enim. Road','ultricies.dignissim.lacus@protonmail.com','Grant Williamson','(604) 491-3296'),(34,9,'mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In','01327','Western Cape','United Kingdom','17','Ap #232-2031 Nascetur St.','mauris@yahoo.com','Nathan Jefferson','1-994-348-2483'),(35,5,'non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis','3645 VJ','Dolnośląskie','Brazil','11','265-315 Sem, St.','dui@protonmail.edu','Tatum Noel','(588) 281-1668'),(36,3,'tempor erat neque non quam. Pellentesque habitant morbi tristique senectus','69873','Arica y Parinacota','Belgium','19','422-538 Nunc Ave','fringilla.purus@google.com','Vivian Powell','1-446-653-6488'),(37,1,'nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis','R7P 6L1','South Island','Italy','7','2137 Ipsum Avenue','curabitur.massa.vestibulum@yahoo.couk','Ginger Odom','(811) 970-9759'),(38,1,'arcu. Vestibulum ante ipsum primis in faucibus orci luctus et','73-700','Aragón','Ireland','19','Ap #295-1725 Molestie St.','duis.ac@aol.net','Christen Hunt','1-546-623-4314'),(40,0,'Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi','34671','Antofagasta','Ireland','15','4047 Nullam St.','risus.quisque@protonmail.ca','Gemma Fuller','(492) 788-1575'),(41,3,'Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam.','3317','Osun','Canada','9','Ap #831-5060 Non Ave','ornare.in@yahoo.org','Justina Blanchard','(658) 524-3773'),(42,6,'Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede.','2638','Central Region','Indonesia','15','Ap #628-5952 Sociis Rd.','ipsum@google.edu','Georgia Kelley','(653) 185-3765'),(43,9,'enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida.','37785','North Region','Belgium','11','2983 A Street','ornare.egestas.ligula@outlook.net','Lacy Gillespie','(543) 721-5071'),(44,7,'augue ac ipsum. Phasellus vitae mauris sit amet lorem semper','8127','Punjab','Netherlands','11','Ap #440-9686 Natoque Rd.','luctus.aliquet@hotmail.couk','Harlan Boyle','1-206-877-2938'),(45,3,'hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium','11138','Northern Territory','Ukraine','3','Ap #638-9445 Velit St.','erat.nonummy@outlook.edu','Tatiana Gray','1-685-264-5539'),(46,1,'consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales','3461 RP','Jharkhand','Mexico','3','3092 Ligula. Av.','elit@aol.com','Hamish Rollins','1-154-718-6657'),(47,2,'est ac facilisis facilisis, magna tellus faucibus leo, in lobortis','46481','Drenthe','Ukraine','3','219-5918 Mauris Road','placerat.orci@hotmail.com','Victor Hopkins','(353) 994-2153'),(48,9,'enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris','554665','Leinster','China','11','Ap #196-6880 Metus Ave','neque@icloud.net','Lois Randall','(584) 585-1064'),(49,9,'lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse','065832','Xīnán','France','7','Ap #140-8977 Erat. Av.','massa.quisque@google.net','Rowan Weiss','1-200-586-3554'),(50,5,'felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem,','296245','Midi-Pyrénées','Spain','13','Ap #121-3755 Nulla St.','nunc@aol.couk','Bruno Schwartz','1-694-633-5650'),(51,5,'Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non,','8329','Free State','Germany','17','P.O. Box 185, 9794 Augue Avenue','libero.mauris@aol.net','Rahim Stafford','1-435-337-2943'),(52,4,'placerat, augue. Sed molestie. Sed id risus quis diam luctus','5451','Provence-Alpes-Côte d\'Azur','Spain','5','P.O. Box 539, 5532 Nunc Rd.','metus.in@protonmail.net','Blake Fuller','(331) 462-7458'),(53,8,'ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor.','2546','Sverdlovsk Oblast','Philippines','15','110-3206 Feugiat Rd.','fusce.mollis@protonmail.couk','Vernon Bradshaw','(408) 313-2637'),(54,4,'pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus','40103','Rajasthan','Costa Rica','3','P.O. Box 117, 5782 Pharetra Av.','quis.accumsan@hotmail.couk','Carson Higgins','(605) 931-3398'),(55,7,'facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus','LP3 2IU','Jigawa','China','5','936-9143 Ut Av.','nisl@google.net','Hop Barnes','1-500-715-7357'),(56,8,'montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque','9414','Leinster','Chile','11','Ap #759-3428 Ligula. Rd.','cursus.luctus.ipsum@protonmail.net','Charles Melendez','(530) 254-5374'),(57,4,'quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis','652521','Hậu Giang','Ireland','17','Ap #451-2901 Nulla. Ave','a@yahoo.ca','Jin Hancock','1-683-444-3666'),(58,6,'lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed','36057','Tula Oblast','Peru','11','P.O. Box 243, 5163 Ornare Road','etiam.imperdiet.dictum@protonmail.com','Henry Ward','(587) 128-0445'),(59,3,'velit eget laoreet posuere, enim nisl elementum purus, accumsan interdum','27371','Jalisco','Mexico','19','910-3817 Porttitor Rd.','ipsum.nunc.id@protonmail.edu','Simone Dawson','(273) 666-1123'),(60,5,'Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc','31C 0S3','Namen','Pakistan','5','222-6132 Lorem Rd.','purus.maecenas@icloud.net','Blythe Gamble','(651) 275-4526'),(61,1,'ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed','62940','Nordland','South Korea','13','5213 Justo Av.','amet.ultricies@aol.org','Raja Patterson','1-868-826-3614'),(62,4,'vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur','23638','Sơn La','Poland','13','988-5985 Accumsan Avenue','arcu.vestibulum@aol.net','Robin Delgado','(732) 785-9248'),(63,4,'justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed','36574','Møre og Romsdal','United States','1','375-5585 Aenean Street','leo@hotmail.edu','Daniel Powers','(985) 495-7685'),(64,3,'In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas','13495','Lambayeque','Australia','9','149-5152 Mauris Street','sed@icloud.edu','Abdul Madden','(827) 554-7558'),(65,5,'Nam nulla magna, malesuada vel, convallis in, cursus et, eros.','60613','West Region','United Kingdom','9','Ap #254-5970 Curae Avenue','nunc.sit@outlook.org','Leandra Henderson','(217) 176-3343'),(66,5,'ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam','735332','Puntarenas','Russian Federation','9','Ap #131-8908 Dolor St.','natoque.penatibus.et@icloud.com','Margaret Joyce','(845) 521-6886'),(67,7,'Maecenas libero est, congue a, aliquet vel, vulputate eu, odio.','1876-4963','Innlandet','Vietnam','17','191-6470 Nam Street','fringilla.purus@outlook.couk','Bryar Henry','(864) 831-8656'),(68,6,'id nunc interdum feugiat. Sed nec metus facilisis lorem tristique','4151-8191','Oklahoma','Turkey','11','Ap #737-2675 Et St.','malesuada.vel@outlook.ca','Freya Brady','(495) 176-5787'),(69,5,'eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit','38517','Brussels Hoofdstedelijk Gewest','United Kingdom','5','Ap #129-3218 Orci, Avenue','lacinia.sed@google.com','Ocean Jimenez','1-252-127-3233'),(70,8,'cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula','117099','Zhōngnán','Vietnam','19','Ap #191-2571 Tellus. Rd.','amet.luctus.vulputate@aol.ca','Judith Maddox','(414) 341-6626'),(71,3,'ornare, lectus ante dictum mi, ac mattis velit justo nec','58281','Bourgogne','Mexico','19','8018 Augue St.','at.libero@google.com','Jackson Gillespie','1-731-476-3411'),(72,6,'morbi tristique senectus et netus et malesuada fames ac turpis','30001','Orenburg Oblast','Italy','7','606-1014 Ultricies Street','auctor@google.org','Uma Romero','1-208-227-2385'),(73,9,'urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis','42447','Kyiv oblast','Austria','5','783-6022 In Av.','molestie.tortor@yahoo.com','Lester Berger','1-202-663-6123'),(74,2,'Vivamus non lorem vitae odio sagittis semper. Nam tempor diam','560497','Cordillera Administrative Region','Costa Rica','3','3382 Lobortis Rd.','mi.felis.adipiscing@hotmail.couk','Rashad Burke','1-951-757-4847'),(75,2,'hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer,','67668','West Nusa Tenggara','Sweden','13','Ap #249-5473 Etiam Street','lectus.ante@yahoo.edu','Abbot Delgado','1-528-619-3574'),(76,4,'sem egestas blandit. Nam nulla magna, malesuada vel, convallis in,','57-63','Schleswig-Holstein','Philippines','9','3259 Enim. Rd.','ad.litora.torquent@google.net','Seth Barry','(253) 258-8448'),(77,9,'nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc.','1588-6368','Munster','Brazil','15','560-9466 Et, Road','sed.facilisis.vitae@yahoo.net','Jemima Rollins','(246) 488-6482'),(78,4,'scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia.','3287','Kujawsko-pomorskie','Brazil','3','Ap #878-3280 Sed Avenue','suspendisse.dui@aol.net','Cherokee Dillon','1-956-747-6662'),(79,5,'eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum','8862','Southeast Sulawesi','Germany','1','772-8717 Accumsan Street','id.mollis@protonmail.edu','Malik Foley','1-249-208-1181'),(80,7,'nunc nulla vulputate dui, nec tempus mauris erat eget ipsum.','8028','Huádōng','Nigeria','15','700-5439 Porta Road','a@yahoo.com','Uriah Finley','(876) 577-3148'),(81,2,'rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in,','32185','Western Cape','Belgium','17','Ap #865-1497 Ut Av.','tellus.id@aol.couk','Quamar English','1-532-362-0176'),(82,2,'non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu.','5162','West Region','Costa Rica','13','Ap #599-2022 Eros. Rd.','scelerisque@google.net','Ainsley Mcclain','1-248-349-3789'),(83,4,'tortor at risus. Nunc ac sem ut dolor dapibus gravida.','978776','Nordland','Spain','9','438-1776 Vestibulum Street','erat.etiam.vestibulum@yahoo.net','Randall Burton','(455) 623-6831'),(84,6,'Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue.','198614','Central Region','India','11','P.O. Box 544, 7123 Curabitur St.','bibendum.ullamcorper@aol.org','Silas Greene','(211) 202-0451'),(85,4,'massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede','555440','Waals-Brabant','Mexico','9','Ap #218-6722 Eu Avenue','ante@protonmail.edu','Fritz Delaney','1-878-787-7168'),(86,1,'et ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis','67312-605','Free State','Chile','11','414-8704 Proin Rd.','mauris.suspendisse@icloud.com','Alika Ware','1-956-162-5330'),(87,5,'sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus','3772','Sardegna','France','3','804-5246 Nascetur Street','egestas@aol.org','Willow Hood','(357) 353-3703'),(88,0,'posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget,','9811','Cherkasy oblast','Nigeria','3','400-8818 Mi. Rd.','ac.nulla@hotmail.com','Lucius Hall','1-353-730-2793'),(89,2,'ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu,','234161','Lombardia','Canada','3','Ap #667-4982 Orci Road','suspendisse.tristique@aol.ca','Debra Evans','1-514-456-7798'),(90,2,'Nullam velit dui, semper et, lacinia vitae, sodales at, velit.','4203-1262','Limousin','Russian Federation','7','Ap #397-1315 Enim. St.','mauris@google.net','Beverly Malone','1-377-566-3793'),(91,3,'adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc','3353','Galicia','Ukraine','11','5595 Sed St.','fringilla.porttitor@yahoo.couk','August Casey','1-641-935-3607'),(92,10,'ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem','6747-3202','Azad Kashmir','Sweden','11','894-5426 Congue Road','massa.vestibulum@aol.org','Xavier Larsen','1-872-542-2632'),(94,10,'pede. Praesent eu dui. Cum sociis natoque penatibus et magnis','9789','Mpumalanga','Italy','7','Ap #219-9368 Sem Road','semper.tellus.id@aol.edu','Jonas Simpson','(628) 480-3431'),(95,2,'id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor,','03284','Delaware','Costa Rica','11','946-9204 Donec Avenue','et.eros@outlook.org','Palmer Anderson','(624) 329-0116'),(96,7,'massa non ante bibendum ullamcorper. Duis cursus, diam at pretium','383954','Pernambuco','Canada','7','Ap #211-5118 Nec St.','quisque.libero@yahoo.edu','Rae Crosby','(415) 871-4154'),(97,6,'Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris','586455','Henegouwen','Chile','13','P.O. Box 198, 3338 Accumsan Rd.','mauris.blandit.mattis@protonmail.edu','Sonya Deleon','1-687-785-5858'),(98,10,'Sed auctor odio a purus. Duis elementum, dui quis accumsan','45482-75788','North Chungcheong','Nigeria','9','P.O. Box 895, 1091 Dictum Avenue','viverra.donec@hotmail.com','Fletcher Potts','1-305-511-4862'),(99,1,'Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo','54374','Northern Territory','Peru','17','601-8990 Leo. St.','ipsum.cursus@outlook.org','Kelly West','(125) 405-5123');
/*!40000 ALTER TABLE `mytable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-17 22:26:55
