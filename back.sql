-- MySQL dump 10.16  Distrib 10.1.22-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: back
-- ------------------------------------------------------
-- Server version	10.1.22-MariaDB-1~xenial

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `city_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Christiansenberg',NULL,NULL),(2,'Naderbury',NULL,NULL),(3,'Gladysberg',NULL,NULL),(4,'Port Delbert',NULL,NULL),(5,'Vitaside',NULL,NULL),(6,'Christiansenside',NULL,NULL),(7,'Wisokymouth',NULL,NULL),(8,'New Annetta',NULL,NULL),(9,'Rafaelachester',NULL,NULL),(10,'Ashlynnshire',NULL,NULL),(11,'Casperborough',NULL,NULL),(12,'Port Rex',NULL,NULL),(13,'Goodwinmouth',NULL,NULL),(14,'Willmsside',NULL,NULL),(15,'Lake Kiana',NULL,NULL),(16,'Dinomouth',NULL,NULL),(17,'Urielmouth',NULL,NULL),(18,'Howellhaven',NULL,NULL),(19,'North Emmy',NULL,NULL),(20,'New Collin',NULL,NULL),(21,'Mitchelland',NULL,NULL),(22,'South Daniellamouth',NULL,NULL),(23,'East Loyceport',NULL,NULL),(24,'Torpland',NULL,NULL),(25,'New Remingtonchester',NULL,NULL),(26,'West Louisabury',NULL,NULL),(27,'Sporerhaven',NULL,NULL),(28,'Dachberg',NULL,NULL),(29,'Port Salvadorstad',NULL,NULL),(30,'Harryburgh',NULL,NULL),(31,'South Luciano',NULL,NULL),(32,'Dickimouth',NULL,NULL),(33,'East Izaiahland',NULL,NULL),(34,'Bahringerchester',NULL,NULL),(35,'New Marley',NULL,NULL),(36,'Moorestad',NULL,NULL),(37,'Tressieborough',NULL,NULL),(38,'Ullrichport',NULL,NULL),(39,'North Victor',NULL,NULL),(40,'Satterfieldburgh',NULL,NULL),(41,'Greenmouth',NULL,NULL),(42,'Melisaville',NULL,NULL),(43,'Larsontown',NULL,NULL),(44,'Whiteton',NULL,NULL),(45,'Hartmannshire',NULL,NULL),(46,'Judahborough',NULL,NULL),(47,'Henryview',NULL,NULL),(48,'Lake Raphaelle',NULL,NULL),(49,'Larkinland',NULL,NULL),(50,'Port Alia',NULL,NULL),(51,'South Josefatown',NULL,NULL),(52,'Genesisport',NULL,NULL),(53,'Lake Kurtis',NULL,NULL),(54,'New Isaac',NULL,NULL),(55,'North Kale',NULL,NULL),(56,'South Aliyahport',NULL,NULL),(57,'North Blaiseport',NULL,NULL),(58,'Keatonville',NULL,NULL),(59,'Altenwerthshire',NULL,NULL),(60,'West Mabellestad',NULL,NULL),(61,'Jaidahaven',NULL,NULL),(62,'Coytown',NULL,NULL),(63,'Cieloburgh',NULL,NULL),(64,'Lake Loraineview',NULL,NULL),(65,'Alenastad',NULL,NULL),(66,'Brownhaven',NULL,NULL),(67,'Hermistonhaven',NULL,NULL),(68,'Pollichfurt',NULL,NULL),(69,'Schulistview',NULL,NULL),(70,'North Marcelo',NULL,NULL),(71,'West Myrtieport',NULL,NULL),(72,'Port Kacie',NULL,NULL),(73,'South Eldoramouth',NULL,NULL),(74,'South Melvinaberg',NULL,NULL),(75,'Janisfort',NULL,NULL),(76,'McKenzieport',NULL,NULL),(77,'Madisonstad',NULL,NULL),(78,'East Orlando',NULL,NULL),(79,'East Jonatanbury',NULL,NULL),(80,'North Josiah',NULL,NULL),(81,'East Retha',NULL,NULL),(82,'Alekbury',NULL,NULL),(83,'West Tyree',NULL,NULL),(84,'West Forrestfort',NULL,NULL),(85,'West Enricoview',NULL,NULL),(86,'Tyshawnfurt',NULL,NULL),(87,'Lake Stanley',NULL,NULL),(88,'Larsonchester',NULL,NULL),(89,'Collinschester',NULL,NULL),(90,'Keenanbury',NULL,NULL),(91,'West Bernadine',NULL,NULL),(92,'Casperside',NULL,NULL),(93,'South Mariah',NULL,NULL),(94,'Ellenburgh',NULL,NULL),(95,'South Hankfurt',NULL,NULL),(96,'New Juwanchester',NULL,NULL),(97,'Preciousmouth',NULL,NULL),(98,'Alfredamouth',NULL,NULL),(99,'Clarabelleshire',NULL,NULL),(100,'West Aurelio',NULL,NULL);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2018_12_13_230059_add_fields_table_users',2),(4,'2019_03_08_201422_create_city_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'Camilo Beltrán','camix242@gmail.com','$2y$10$KDzprDkCt2SOzplaoJkx1.6lVQepPxcYrwRQhTLzxYWY1i31L2Zxi','LMEb82fcGiSk7k0hVwgv8WeBD9pZ68xxSDTNT737mCtIUoTIX8zaedpHd1hq','2019-03-09 01:04:50','2019-03-09 02:30:36','camilo beltrán',1),(4,'asdf adsf','casd@sad.com','$2y$10$IqZj9Gw.oUiYV24kNHjK1.MdJX/hITl.tCdNdPoCGljURb47L9cVa',NULL,'2019-03-09 02:08:41','2019-03-09 02:09:33','prueba23',3);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-08 16:34:04
