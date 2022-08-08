-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: words
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `w_admin`
--

DROP TABLE IF EXISTS `w_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `w_admin` (
  `Auser` varchar(20) NOT NULL,
  `Apwd` varchar(20) NOT NULL,
  `Aname` varchar(20) NOT NULL,
  `Agender` varchar(10) NOT NULL,
  `Aage` int NOT NULL,
  `Aphone` varchar(20) NOT NULL,
  PRIMARY KEY (`Auser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w_admin`
--

LOCK TABLES `w_admin` WRITE;
/*!40000 ALTER TABLE `w_admin` DISABLE KEYS */;
INSERT INTO `w_admin` VALUES ('admin','admin','管理员','男',40,'187412582');
/*!40000 ALTER TABLE `w_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w_stu`
--

DROP TABLE IF EXISTS `w_stu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `w_stu` (
  `Suser` varchar(20) NOT NULL,
  `Spwd` varchar(100) NOT NULL,
  `salt` varchar(30) NOT NULL,
  `Sname` varchar(20) NOT NULL,
  `Sgender` varchar(10) NOT NULL,
  `Sage` int NOT NULL,
  `Spro` varchar(20) NOT NULL,
  `Sphone` varchar(20) NOT NULL,
  `Sscore` int DEFAULT '0',
  `path` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Suser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w_stu`
--

LOCK TABLES `w_stu` WRITE;
/*!40000 ALTER TABLE `w_stu` DISABLE KEYS */;
INSERT INTO `w_stu` VALUES ('1321','BCC75B3E133642A4AFD61ECAED1955D8','8cb9f6','张三','男',12,'信息安全','1231243',0,'3.jpg'),('142555','CC35E93A19B495563ACBA5C95A0D317E','248ef6','徐真','男',22,'信息安全','18720015037',0,'me.jpg'),('147258258','EAA5AE35A4AD24204C6B4FED72C65C92','f2d7ab','丁力','男',12,'信息安全','187521512',50,'1.png'),('147852','0DD6A45FC79D5843BD5CA11BD83187E0','1c796f','王军','男',20,'软件工程','1870521554',30,'4.jpg'),('1908328781','6411DC3756F25C4F413D204D02814489','236bcf','丁俊','男',20,'信息安全','18702536309',13,'dingjun.jpg'),('416416','D037EBEC80576E0B49A89D0A96A45CE3','5fa72d','聂思静','男',22,'软件工程','18745151515',30,'12.jpeg');
/*!40000 ALTER TABLE `w_stu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w_teacher`
--

DROP TABLE IF EXISTS `w_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `w_teacher` (
  `Tuser` varchar(20) NOT NULL,
  `Tpwd` varchar(100) NOT NULL,
  `salt` varchar(30) NOT NULL,
  `Tname` varchar(20) NOT NULL,
  `Tgender` varchar(10) NOT NULL,
  `Tage` int NOT NULL,
  `Tpro` varchar(20) NOT NULL,
  `Tphone` varchar(20) NOT NULL,
  `path` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Tuser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='老师表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w_teacher`
--

LOCK TABLES `w_teacher` WRITE;
/*!40000 ALTER TABLE `w_teacher` DISABLE KEYS */;
INSERT INTO `w_teacher` VALUES ('582147','828795EE34B3694C5356AA47BBA6E7C2','e9cbd1','李向军','男',30,'软件工程','1478569321','dbcb00dec3.jpg'),('741852','2CB5FADEAB585B4F47D9BE710E908B7D','3a5d8e','文静','女',29,'信息安全','187521454','3.jpg');
/*!40000 ALTER TABLE `w_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `w_word`
--

DROP TABLE IF EXISTS `w_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `w_word` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Che` varchar(100) NOT NULL,
  `Eng` varchar(100) NOT NULL,
  `deep` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `w_word`
--

LOCK TABLES `w_word` WRITE;
/*!40000 ALTER TABLE `w_word` DISABLE KEYS */;
INSERT INTO `w_word` VALUES (1,'放弃','abandon',1),(2,'实际地','actually',0),(3,'敏锐的','acute',1),(4,'使适应','adapt',1),(5,'调整','adjust',1),(6,'承认','admit',1),(7,'钦佩，羡慕','admire',0),(8,'足够的','adequate',0),(9,'加，加法','addition',0),(10,'管理，管理部门','adminisration',0),(11,'雕刻','carve',0),(12,'目录','category',0),(13,'捉住','catch',0),(14,'情况,事实','case',0),(15,'现金','cash',0),(16,'偶然的','casual',0),(17,'爱情','love',0),(18,'继续','go on',1),(19,'超神的','legendary',1),(20,'狗带','godie',0),(21,'湖','lake',0),(22,'处理，解决','dispose',1),(23,'改变','alter',0),(24,'割裂','split',1),(25,'滑动','slip',0),(26,'细菌','bacteria',0),(27,'转变','transform',0),(28,'转移,转动','shift',0),(29,'消失','vanish',0),(30,'吞下','swallow',0),(31,'加速','accelerate',0),(32,'绝对的','absolute',0),(33,'边界','boundary',0),(34,'徒劳','vain',1);
/*!40000 ALTER TABLE `w_word` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-09 10:45:01
