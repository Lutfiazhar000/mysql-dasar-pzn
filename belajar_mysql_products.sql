-- MySQL dump 10.19  Distrib 10.3.34-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: belajar_mysql
-- ------------------------------------------------------
-- Server version	10.3.34-MariaDB-0ubuntu0.20.04.1

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` varchar(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_category` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_products_categories` (`id_category`),
  FULLTEXT KEY `products_search` (`name`,`description`),
  CONSTRAINT `fk_products_categories` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`),
  CONSTRAINT `price_check` CHECK (`price` >= 1000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('P0001','rawon setan','rawon setan oleh-oleh khas SBY',20000,20,'2022-10-17 02:49:44','C0001'),('P0002','indomie goreng','mie goreng nasi padang',5000,30,'2022-10-17 03:16:03','C0001'),('P0003','nasi goreng','nasi goreng special',22000,35,'2022-10-17 03:00:39','C0001'),('P0004','soto lamongan','soto limited edition',30000,12,'2022-10-17 03:00:39','C0001'),('P0005','rujak cingur','rujak cingur bu menir',13000,18,'2022-10-17 03:00:39','C0001'),('P0006','minyak goreng','miyak goreng kelapa muda',30000,14,'2022-10-17 03:16:03','C0003'),('P0007','beras koi','beras premium',110000,34,'2022-10-17 03:16:03','C0003'),('P0008','susu kental manis','susu kental manis tiang bendera',9000,41,'2022-10-17 03:16:03','C0003'),('P0009','air mineral','air minum',1500,24,'2022-10-17 03:16:03','C0003'),('P0010','kecap manis','kecap manis cap jerapah',17000,28,'2022-10-17 03:16:03','C0003'),('P0011','saos sambel','saos sambal pedas JKL',46000,24,'2022-10-17 04:19:47','C0003'),('P0012','cuka','cuka cap mama',2300,43,'2022-10-17 04:19:47','C0003'),('P0013','cabai rawit','cabai rawit segar',50000,30,'2022-10-17 04:24:54','C0003'),('P0014','jeruk impor','jeruk segar impor china',32000,55,'2022-10-17 04:24:54','C0002'),('P0015','garam','garam himalaya',36000,76,'2022-10-17 04:24:54','C0003'),('P0016','kopi hitam','kopi hitam waris',3000,55,'2022-10-17 04:46:07','C0002'),('P0017','beras kencur','jamu beras kencur cap janda muda',4000,56,'2022-10-17 04:46:07','C0002'),('P0018','sup buah','sup buah segar',4000,38,'2022-10-17 04:55:03','C0002'),('P0019','teh manis','teh manis cap teteh',3500,42,'2022-10-17 04:57:13','C0002'),('P0020','jahe hangat','jahe hangat best seller',4500,32,'2022-10-17 04:57:13','C0002'),('P0021','permen jahe','permen jahe asli',5000,20,'2022-10-22 07:44:03','C0001'),('P0022','minyak kemiri','minyak kemiri serbaguna cap nenek',7000,34,'2022-10-23 10:18:19','C0003'),('P0023','kertas hvs a4','kertas hvs sinar mars',45000,60,'2022-10-23 10:18:19','C0003'),('P0024','pesil 6z','pensil standar internasional',5000,29,'2022-10-23 10:18:19','C0003'),('P0025','minyak kayu putih','minyak kayu putih impor thailand',10000,74,'2022-10-23 10:18:19','C0003');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-29 21:02:15
