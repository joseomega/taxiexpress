-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: taxixpressapp_development
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.14.04.1

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
-- Table structure for table `autos`
--

DROP TABLE IF EXISTS `autos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Marca` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Modelo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Año` date DEFAULT NULL,
  `Placa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Capacidad` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autos`
--

LOCK TABLES `autos` WRITE;
/*!40000 ALTER TABLE `autos` DISABLE KEYS */;
INSERT INTO `autos` VALUES (1,'Kia','Rio','2015-09-23','NG-5210',6,'2015-09-23 14:51:50','2015-09-23 14:51:50'),(2,'Nissan','Sentra','2013-10-01','POB-234',5,'2015-10-01 04:44:16','2015-10-01 04:44:16');
/*!40000 ALTER TABLE `autos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chofers`
--

DROP TABLE IF EXISTS `chofers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chofers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Apellido` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DNI` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Direccion` text COLLATE utf8_unicode_ci,
  `Telefono` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auto_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_chofers_on_auto_id` (`auto_id`),
  CONSTRAINT `fk_rails_3a1aa8e814` FOREIGN KEY (`auto_id`) REFERENCES `autos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chofers`
--

LOCK TABLES `chofers` WRITE;
/*!40000 ALTER TABLE `chofers` DISABLE KEYS */;
INSERT INTO `chofers` VALUES (1,'Julian','Martel','44151200','E. Barreda 451 La Victoria','987451200',1,'2015-09-23 18:06:52','2015-09-23 18:06:52'),(2,'Manuel','Ramos','78451200','Los Portales 561 Los Olivos','987412005',2,'2015-10-01 18:01:11','2015-10-01 18:01:11');
/*!40000 ALTER TABLE `chofers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Apellido` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DNI` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Telefono` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Direccion` text COLLATE utf8_unicode_ci,
  `Correo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Usuario` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Contraseña` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (2,'Alexis','Maldonado','42184511','+51966358324','Teofilo Castillo\r\n664','alexismaldonado112@tqc.com.pe','Sauron','P@ssw0rd','2015-09-23 04:20:22','2015-09-23 04:20:22'),(3,'Joel','Mejia','45341231','987654321','Las Artes 1452','joel@hotmail.com','jmejia','joel','2015-09-30 03:45:36','2015-09-30 03:45:36'),(4,'Carmen','Paredes','09878762','987625638','Las Begonias 098','carmen@gmail.com','carmen','carmen','2015-09-30 03:46:51','2015-09-30 03:46:51'),(5,'Kelly','Montejo','67541320','987652761','La Paz 345 San Miguel','kmontejo@gmail.com','kmontejo','kelly','2015-09-30 03:47:08','2015-10-01 04:36:19');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20150918215431'),('20150919020525'),('20150919230945'),('20150922152445'),('20150923053348'),('20150923071158'),('20150923135427'),('20150923140521'),('20150923140724'),('20151001042948');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'alexismaldonado112@gmail.com','$2a$10$ng6X7KzriMWITuXsqVFXgeRL.LqqZiBoJ7Iqab/TwAdIFa/SgcRT6',NULL,NULL,NULL,22,'2015-10-10 13:54:59','2015-10-09 16:22:41','200.0.118.173','190.233.151.194','2015-10-01 05:01:49','2015-10-10 13:54:59');
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

-- Dump completed on 2015-10-10 14:14:04
