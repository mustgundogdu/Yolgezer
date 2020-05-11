-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: dork
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

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
-- Table structure for table `query`
--

DROP TABLE IF EXISTS `query`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `query` (
  `query_id` int(11) DEFAULT NULL,
  `query_name` varchar(50) DEFAULT NULL,
  KEY `query_id` (`query_id`),
  CONSTRAINT `query_ibfk_1` FOREIGN KEY (`query_id`) REFERENCES `query_type` (`query_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `query`
--

LOCK TABLES `query` WRITE;
/*!40000 ALTER TABLE `query` DISABLE KEYS */;
INSERT INTO `query` VALUES (1,'intitle:\"index of\" \"graphql/subscription\"'),(1,'intitle:\"index of\" \"/admin/backup\"'),(1,'intitle:\"index of\" \"admin/json\"'),(1,'intitle:\"index of\" \"/admin_backup\"'),(1,'intitle:\"index of\" \"git-jira-log\"'),(1,'intitle:\"index of\" db.frm'),(1,'intitle:\"index of\" \"/db_backups/\"'),(1,'intitle:\"index of\" \"proxy.pac\" OR \"proxy.pac.bak\"'),(1,'intitle:\"index of\" \"common.crt\" OR \"ca.crt\"'),(1,'intitle:\"index of\" \"global.asa\"'),(1,'intitle: \"index of\" \"MySQL-Router\"'),(1,'intitle:\"index of\" \"jwt-auth\"'),(1,'intitle:\"index of\" \"/concrete/Authentication\"'),(1,'intitle:\"index of\" \"maven-metadata.xml\" \"Port 80\"'),(1,'intitle:\"index of\" \"config.py\"'),(2,'intitle:\"index of\" intext:\"Includes wordpress\"'),(2,'inurl:\"/wp-json/\" -wordpress'),(3,'intitle:index.of \"admin\" filetype:sql'),(3,'filetype:git -github.com inurl:\"/.git\"'),(3,'log inurl:linklint filetype:txt -\"checking\"'),(3,'filetype:ini Desktop.iniintext:mydocs.dll'),(3,'intitle:\"webadmin - /*\" filetype:php');
/*!40000 ALTER TABLE `query` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `query_type`
--

DROP TABLE IF EXISTS `query_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `query_type` (
  `query_id` int(11) NOT NULL,
  `query_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`query_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `query_type`
--

LOCK TABLES `query_type` WRITE;
/*!40000 ALTER TABLE `query_type` DISABLE KEYS */;
INSERT INTO `query_type` VALUES (1,'Specific and Important Files'),(2,'Wordpress Website'),(3,'File type');
/*!40000 ALTER TABLE `query_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-10  9:41:50
