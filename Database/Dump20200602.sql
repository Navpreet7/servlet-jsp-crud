CREATE DATABASE  IF NOT EXISTS `expense_details` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `expense_details`;
-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: expense_details
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expense` (
  `expense_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `expense_details` varchar(200) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `created_time` varchar(45) DEFAULT NULL,
  `updated_time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`expense_id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense`
--

LOCK TABLES `expense` WRITE;
/*!40000 ALTER TABLE `expense` DISABLE KEYS */;
INSERT INTO `expense` VALUES (1,1,'Dinner with client',100,'Mon Jun 01 20:09:05 JST 2020','Mon Jun 01 20:09:05 JST 2020'),(2,1,'Transport',100,'Mon Jun 01 22:16:31 JST 2020','Mon Jun 01 22:16:31 JST 2020'),(3,1,'Cab',30,'Mon Jun 01 22:47:19 JST 2020','Mon Jun 01 22:47:19 JST 2020'),(4,1,'cab',120,'Mon Jun 01 22:50:11 JST 2020','Mon Jun 01 22:50:11 JST 2020'),(5,1,'Files',1200,'Mon Jun 01 22:52:19 JST 2020','Mon Jun 01 22:52:19 JST 2020'),(6,1,'acb',1200,'Mon Jun 01 23:02:07 JST 2020','Mon Jun 01 23:02:07 JST 2020'),(7,1,'nav',100,'Mon Jun 01 23:02:27 JST 2020','Mon Jun 01 23:02:27 JST 2020'),(8,2,'cab',1200,'Mon Jun 01 23:14:34 JST 2020','Mon Jun 01 23:14:34 JST 2020'),(9,2,'car',1200,'Mon Jun 01 23:14:40 JST 2020','Mon Jun 01 23:14:40 JST 2020'),(10,4,'cab',120,'Mon Jun 01 23:22:25 JST 2020','Mon Jun 01 23:22:25 JST 2020'),(11,4,'dinner',100,'Mon Jun 01 23:22:32 JST 2020','Mon Jun 01 23:22:32 JST 2020');
/*!40000 ALTER TABLE `expense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email_id` varchar(45) DEFAULT NULL,
  `created_at` varchar(45) DEFAULT NULL,
  `updated_at` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'navpreet7','abc@1234','Navpreet','Singh','nav.mehta8@gmail.com','Mon Jun 01 20:08:12 JST 2020','Mon Jun 01 20:08:12 JST 2020'),(2,'narsima6','abc@1234','Narsima','Rao','abc@gmail.com','Mon Jun 01 23:10:38 JST 2020','Mon Jun 01 23:10:38 JST 2020'),(3,'kartik12','abc@1234','kartik','rao','gh@gmail.com','Mon Jun 01 23:12:08 JST 2020','Mon Jun 01 23:12:08 JST 2020'),(4,'rajbir6','abc@1234','rajbir','Singh','rajbirsinghg4@gmail.cmo','Mon Jun 01 23:22:08 JST 2020','Mon Jun 01 23:22:08 JST 2020');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-02 13:57:55
