-- MySQL dump 10.13  Distrib 5.5.42, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: moloney_development
-- ------------------------------------------------------
-- Server version	5.5.42-1

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
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `document_file_file_name` varchar(255) DEFAULT NULL,
  `document_file_content_type` varchar(255) DEFAULT NULL,
  `document_file_file_size` int(11) DEFAULT NULL,
  `document_file_updated_at` datetime DEFAULT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_documents_on_slug` (`slug`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (1,'Rody the Rover Songster, 1873',NULL,'<p>Songsters, compilations of lyrics without music, were cheaply mass produced in the U.S. throughout the nineteenth century. The general public were expected to know the tunes already or supply their own.</p>\r\n','2015-03-20 17:24:53','2015-03-21 15:47:50','rody-the-rover-songster-1873','4648359830_41e0e19ca6_b.jpg','image/jpeg',578907,'2015-03-21 15:47:50','Moloney AIA031_4, Box 48, Folder 29'),(2,'One of the Finest Songster',NULL,'<p>Songsters, compilations of lyrics without music, were cheaply mass produced in the U.S. throughout the nineteenth century. The general public were expected to know the tunes already or supply their own.</p>\r\n','2015-03-20 17:26:14','2015-03-21 15:47:50','one-of-the-finest-songster','4647745231_356ed17f77_b.jpg','image/jpeg',828490,'2015-03-21 15:47:50','Moloney AIA031_4, Box 48, Folder 10'),(3,'Squatter Sovereignty Songster',NULL,'<p>Harrigan and Hart were early innovators in the genre of musical comedy. This cover depicts a shanty town struggle in New York&#39;s Central Park.</p>\r\n','2015-03-20 17:26:57','2015-03-21 15:47:51','squatter-sovereignty-songster','4647745297_32c48cd7d1_b.jpg','image/jpeg',632096,'2015-03-21 15:47:51','Moloney AIA031_4, Box 48, Folder 33'),(4,'Burdett\'s Irish Dialect Recitations and Readings, 1883',NULL,'<p>The next three covers feature variations on a classic stereotype, the &quot;stage Irishman.&quot;</p>\r\n','2015-03-20 17:27:34','2015-03-21 15:47:51','burdett-s-irish-dialect-recitations-and-readings-1883','4648323328_3e2ca8f914_b.jpg','image/jpeg',685456,'2015-03-21 15:47:51','Moloney AIA031_4, Box 51, Folder 1'),(5,'Moloney AIA031_4, Box 10, Folder 17',NULL,'','2015-03-20 17:28:15','2015-03-21 15:47:51','moloney-aia031_4-box-10-folder-17','4647738145_ea2311ecf4_b.jpg','image/jpeg',303846,'2015-03-21 15:47:51','Fine Ould Irish Gintleman, 1845'),(6,'Wearing of the Green, 1865',NULL,'','2015-03-20 17:28:50','2015-03-21 15:47:51','wearing-of-the-green-1865','4647739145_0a1490d525_b.jpg','image/jpeg',492185,'2015-03-21 15:47:51','Moloney AIA031_4, Box 40, Folder 5'),(7,'My Wild Irish Rose, 1899',NULL,'<p>Irish-American stage star, and Buffalo, New York native Chauncey Olcott also co-wrote &quot;When Irish Eyes Are Smiling.&quot;</p>\r\n','2015-03-20 17:29:20','2015-03-21 15:47:51','my-wild-irish-rose-1899','4648353770_6bb216a174_b.jpg','image/jpeg',357529,'2015-03-21 15:47:51','Moloney AIA031_4, Box 29, Folder 34'),(8,'Sweet Eileen Machree, 1891',NULL,'<p>An extremely lucrative business between the American Civil War and World War II, the sheet music industry that catered to Irish-Americans capitalized on nostalgia for a mythical Ireland left behind: a beautiful countryside populated by beautiful women.</p>\r\n','2015-03-20 17:30:00','2015-03-21 15:47:52','sweet-eileen-machree-1891','4647738083_b111580013_b.jpg','image/jpeg',365142,'2015-03-21 15:47:51','Moloney AIA031_4, Box 36, Folder 33'),(9,'Her Name is Mary Donohue, 1909',NULL,'','2015-03-20 17:30:29','2015-03-21 15:47:52','her-name-is-mary-donohue-1909','4648353622_61d8e9f687_b.jpg','image/jpeg',689893,'2015-03-21 15:47:52','Moloney AIA031_4, Box 12, Folder 28'),(10,'In Old Ireland, 1913',NULL,'','2015-03-20 17:30:53','2015-03-21 15:47:52','in-old-ireland-1913','4648353046_eeb5d5d574_b.jpg','image/jpeg',547432,'2015-03-21 15:47:52','Moloney AIA031_4, Box 15, Folder 32'),(11,'Won\'t You Come Back to Old Ireland, 1914',NULL,'','2015-03-20 17:31:32','2015-03-21 15:47:52','won-t-you-come-back-to-old-ireland-1914','4647738009_a72cbda232_b.jpg','image/jpeg',581345,'2015-03-21 15:47:52','Moloney AIA031_4, Box 43, Folder 1'),(12,'You Remind Me of Dear Old Ireland, 1916',NULL,'','2015-03-20 17:32:07','2015-03-21 15:47:52','you-remind-me-of-dear-old-ireland-1916','4647739291_9b03d58255_b.jpg','image/jpeg',440821,'2015-03-21 15:47:52','Moloney AIA031_4, Box 43, Folder 13'),(13,'Irish, Hebrew and Dutch Jokes, 1916',NULL,'<p>By the 1880s, German, Italian and Jewish immigrants began to outnumber the Irish in New York City, leading both to ethnic tension and ethnic humor that still resonated in these early twentieth century joke books.</p>\r\n','2015-03-20 17:32:50','2015-03-21 15:47:52','irish-hebrew-and-dutch-jokes-1916','4647708209_53203800a7_b.jpg','image/jpeg',950865,'2015-03-21 15:47:52','Moloney AIA031_4, Box 51, Folder 12'),(14,'Postcard: Irish-American Solidarity',NULL,'','2015-03-20 17:33:25','2015-03-21 16:40:47','postcard-irish-american-solidarity','irish_american_soli.jpg','image/jpeg',98269,'2015-03-21 16:40:46','Moloney AIA031_4, Box 53, IA 12');
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-21 20:45:46
