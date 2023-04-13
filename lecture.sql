CREATE DATABASE  IF NOT EXISTS `lecture` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lecture`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lecture
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `authority_mst`
--

DROP TABLE IF EXISTS `authority_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authority_mst` (
  `authority_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`authority_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authority_mst`
--

LOCK TABLES `authority_mst` WRITE;
/*!40000 ALTER TABLE `authority_mst` DISABLE KEYS */;
INSERT INTO `authority_mst` VALUES (1,1,1);
/*!40000 ALTER TABLE `authority_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_mst`
--

DROP TABLE IF EXISTS `course_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_mst` (
  `csm_id` int NOT NULL AUTO_INCREMENT,
  `ltm_id` int NOT NULL,
  `sdm_id` int NOT NULL,
  `registe_date` date NOT NULL,
  PRIMARY KEY (`csm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_mst`
--

LOCK TABLES `course_mst` WRITE;
/*!40000 ALTER TABLE `course_mst` DISABLE KEYS */;
INSERT INTO `course_mst` VALUES (1,1,1,'2023-04-01'),(2,2,1,'2023-04-01'),(3,3,1,'2023-04-01'),(4,4,1,'2023-04-01'),(5,1,2,'2023-04-01'),(6,3,2,'2023-04-01'),(7,5,2,'2023-04-01'),(8,7,2,'2023-04-01'),(9,2,2,'2023-04-01'),(10,9,2,'2023-04-01'),(11,3,3,'2023-04-01'),(12,4,3,'2023-04-01'),(13,5,3,'2023-04-01'),(14,8,3,'2023-04-01'),(15,6,3,'2023-04-01'),(16,5,4,'2023-04-01'),(17,6,4,'2023-04-01'),(18,7,4,'2023-04-01'),(19,8,4,'2023-04-01'),(20,11,4,'2023-04-01'),(21,5,5,'2023-04-01'),(22,7,5,'2023-04-01'),(23,8,5,'2023-04-01'),(24,10,5,'2023-04-01'),(25,9,6,'2023-04-01'),(26,10,6,'2023-04-01'),(27,11,6,'2023-04-01'),(28,4,7,'2023-04-01'),(29,5,7,'2023-04-01'),(30,6,7,'2023-04-01'),(31,1,8,'2023-04-01'),(32,5,8,'2023-04-01'),(33,8,8,'2023-04-01'),(34,9,8,'2023-04-01'),(35,10,8,'2023-04-01'),(36,11,8,'2023-04-01'),(37,11,11,'2023-04-01'),(38,11,11,'2023-04-01'),(39,1,11,'2023-04-01');
/*!40000 ALTER TABLE `course_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor_mst`
--

DROP TABLE IF EXISTS `instructor_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructor_mst` (
  `itm_id` int NOT NULL AUTO_INCREMENT,
  `itm_name` varchar(45) NOT NULL,
  `itm_birth` date NOT NULL,
  PRIMARY KEY (`itm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='강사 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor_mst`
--

LOCK TABLES `instructor_mst` WRITE;
/*!40000 ALTER TABLE `instructor_mst` DISABLE KEYS */;
INSERT INTO `instructor_mst` VALUES (1,'김영한','2023-04-10'),(2,'토비','2022-02-10'),(3,'김정한','2022-01-03'),(4,'조현영','2022-01-11'),(5,'텔레토비','2022-01-11');
/*!40000 ALTER TABLE `instructor_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecture_mst`
--

DROP TABLE IF EXISTS `lecture_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecture_mst` (
  `ltm_id` int NOT NULL AUTO_INCREMENT,
  `ltm_name` varchar(45) NOT NULL,
  `ltm_price` int NOT NULL,
  `itm_id` int NOT NULL,
  PRIMARY KEY (`ltm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='강의 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecture_mst`
--

LOCK TABLES `lecture_mst` WRITE;
/*!40000 ALTER TABLE `lecture_mst` DISABLE KEYS */;
INSERT INTO `lecture_mst` VALUES (1,'스프링 부트 - 핵심 원리와 활용',99000,1),(2,'스프링 MVC 1편 - 백엔드 웹 개발 핵심 기술',99000,1),(3,'실전! 스프링 부트와 JPA 활용1 - 웹 애플리케이션 개발',88000,1),(4,'스프링 DB 2편 - 데이터 접근 활용 기술',99000,1),(5,'스프링 DB 1편 - 데이터 접근 핵심 원리',77000,1),(6,'스프링 핵심 원리 - 고급편',121000,1),(7,'토비의 스프링 부투 - 이해와 원리',99000,2),(8,'만들고 비교하며 학습하는 리액트 (React)',55000,3),(9,'[리뉴얼]React로 NodeBird SNS 만들기',88000,4),(10,'[리뉴얼]타입스크립트 올인원 : Part1. 기본문법편',36300,4),(11,'[개정3판] Node.js 교과서 - 기본부터 프로젝트 실습까지',49500,4);
/*!40000 ALTER TABLE `lecture_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_mst`
--

DROP TABLE IF EXISTS `role_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_mst` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(45) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_mst`
--

LOCK TABLES `role_mst` WRITE;
/*!40000 ALTER TABLE `role_mst` DISABLE KEYS */;
INSERT INTO `role_mst` VALUES (1,'ROLE_USER'),(2,'ROLE_MANAGER'),(3,'ROLE_ADMIN');
/*!40000 ALTER TABLE `role_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_mst`
--

DROP TABLE IF EXISTS `student_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_mst` (
  `sdm_id` int NOT NULL AUTO_INCREMENT,
  `sdm_name` varchar(45) NOT NULL,
  `sdm_birth` date NOT NULL,
  PRIMARY KEY (`sdm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='수강생 정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_mst`
--

LOCK TABLES `student_mst` WRITE;
/*!40000 ALTER TABLE `student_mst` DISABLE KEYS */;
INSERT INTO `student_mst` VALUES (1,'김종환','1995-05-03'),(2,'손민재','1997-05-03'),(3,'황창욱','1994-12-03'),(4,'김상현','1998-12-03'),(5,'손지호','1995-07-03'),(6,'고병수','1995-07-03'),(7,'최해혁','1990-03-03'),(8,'강대협','1990-03-03'),(9,'이강용','1992-01-03');
/*!40000 ALTER TABLE `student_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_mst`
--

DROP TABLE IF EXISTS `user_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_mst` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_mst`
--

LOCK TABLES `user_mst` WRITE;
/*!40000 ALTER TABLE `user_mst` DISABLE KEYS */;
INSERT INTO `user_mst` VALUES (1,'abc','$2a$10$JbUNG0aMOxZAchoz9vtyze/TnYODfaeJUtLIryI4WrzXNaSNLu7KC','김준일','abc@gmail.com');
/*!40000 ALTER TABLE `user_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'lecture'
--

--
-- Dumping routines for database 'lecture'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-13 17:46:16
