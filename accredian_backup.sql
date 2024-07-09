-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: accredian
-- ------------------------------------------------------
-- Server version	8.0.38

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prisma_migrations`
--

LOCK TABLES `_prisma_migrations` WRITE;
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
INSERT INTO `_prisma_migrations` VALUES ('2d9d5bc9-5f24-4cd5-a811-0e9d4125cfbb','928ae030c9ddc3b14f1accd83203e4c21001940bc8b36c6b1fad49b2b21811bf','2024-07-06 14:30:20.023','20240706143019_init',NULL,NULL,'2024-07-06 14:30:19.926',1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referral`
--

DROP TABLE IF EXISTS `referral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referral` (
  `id` int NOT NULL AUTO_INCREMENT,
  `referrerName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referrerEmail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refereeName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refereeEmail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courseName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referral`
--

LOCK TABLES `referral` WRITE;
/*!40000 ALTER TABLE `referral` DISABLE KEYS */;
INSERT INTO `referral` VALUES (1,'Samuel Masih','samuelmasih.sls777@gmail.com','Shalom Victor','samuelgoodboy777@gmail.com','Management','2024-07-09 11:20:53.564'),(2,'Samuel Masih','samuelmasih.sls777@gmail.com','Shalom Victor','samuelgoodboy777@gmail.com','Management','2024-07-09 11:22:23.970'),(3,'Samuel Masih','samuelmasih.sls777@gmail.com','Shalom Victor','samuelgoodboy777@gmail.com','Management','2024-07-09 11:28:15.481'),(4,'Samuel Masih','samuelmasih.sls777@gmail.com','Shalom Victor','samuelgoodboy777@gmail.com','Management','2024-07-09 11:29:41.007'),(5,'Samuel Masih','samuelmasih.sls777@gmail.com','Shalom Victor','samuelgoodboy777@gmail.com','Management','2024-07-09 11:56:04.108'),(6,'Samuel Masih','samuelmasih.sls777@gmail.com','Shalom Victor','samuelgoodboy777@gmail.com','Management','2024-07-09 11:56:45.448'),(7,'Samuel Masih','samuelmasih.sls777@gmail.com','Shalom Victor','samuelgoodboy777@gmail.com','Business Management','2024-07-09 12:17:49.483'),(8,'Samuel Masih','samuelmasih.sls777@gmail.com','Shalom Victor','samuelgoodboy777@gmail.com','Data Science','2024-07-09 12:32:14.019'),(9,'Samuel Masih','samuelmasih.sls777@gmail.com','Shalom King','samuelgoodboy777@gmail.com','Business Analytics','2024-07-09 12:37:02.793');
/*!40000 ALTER TABLE `referral` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-09 20:31:28
