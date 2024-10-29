-- MySQL dump 10.13  Distrib 8.0.37, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: hjh_ai_image
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `hjh_departments`
--

DROP TABLE IF EXISTS `hjh_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hjh_departments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL DEFAULT '0' COMMENT '父级ID',
  `department_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '部门名称',
  `principal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '负责人',
  `mobile` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '负责人联系方式',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `status` smallint NOT NULL DEFAULT '1' COMMENT '1 正常 2 停用',
  `sort` int NOT NULL DEFAULT '1' COMMENT '排序',
  `creator_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'creator id',
  `created_at` int unsigned NOT NULL DEFAULT '0' COMMENT 'created time',
  `updated_at` int unsigned NOT NULL DEFAULT '0' COMMENT 'updated time',
  `deleted_at` int unsigned NOT NULL DEFAULT '0' COMMENT 'delete time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hjh_departments`
--

LOCK TABLES `hjh_departments` WRITE;
/*!40000 ALTER TABLE `hjh_departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `hjh_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hjh_failed_jobs`
--

DROP TABLE IF EXISTS `hjh_failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hjh_failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hjh_failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hjh_failed_jobs`
--

LOCK TABLES `hjh_failed_jobs` WRITE;
/*!40000 ALTER TABLE `hjh_failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `hjh_failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hjh_jobs`
--

DROP TABLE IF EXISTS `hjh_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hjh_jobs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '岗位名称',
  `coding` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人ID',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1 正常 2 停用',
  `sort` int NOT NULL DEFAULT '1' COMMENT '排序',
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '岗位描述',
  `creator_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'creator id',
  `created_at` int unsigned NOT NULL DEFAULT '0' COMMENT 'created time',
  `updated_at` int unsigned NOT NULL DEFAULT '0' COMMENT 'updated time',
  `deleted_at` int unsigned NOT NULL DEFAULT '0' COMMENT 'delete time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='岗位表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hjh_jobs`
--

LOCK TABLES `hjh_jobs` WRITE;
/*!40000 ALTER TABLE `hjh_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `hjh_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hjh_log_login`
--

DROP TABLE IF EXISTS `hjh_log_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hjh_log_login` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '登录账户',
  `login_ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '登录的IP',
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '浏览器',
  `platform` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '平台',
  `login_at` int NOT NULL COMMENT '平台',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1:normal 2: forbidden',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hjh_log_login`
--

LOCK TABLES `hjh_log_login` WRITE;
/*!40000 ALTER TABLE `hjh_log_login` DISABLE KEYS */;
INSERT INTO `hjh_log_login` VALUES (1,'catch@admin.com','123.168.86.223','Chrome','Mac OS',1730115411,1),(2,'catch@admin.com','123.168.86.223','Chrome','Mac OS',1730116006,1),(3,'catch@admin.com','123.168.86.223','Chrome','Mac OS',1730116647,1),(4,'catch@admin.com','123.168.86.223','Chrome','Mac OS',1730116653,1),(5,'catch@admin.com','123.168.86.223','Chrome','Mac OS',1730118218,1);
/*!40000 ALTER TABLE `hjh_log_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hjh_log_operate`
--

DROP TABLE IF EXISTS `hjh_log_operate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hjh_log_operate` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '操作',
  `action` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '操作',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '参数',
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ip 地址',
  `http_method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'http 请求方式',
  `http_code` smallint NOT NULL COMMENT 'http status code',
  `start_at` int unsigned NOT NULL COMMENT '请求开始时间',
  `time_taken` smallint NOT NULL COMMENT '请求消耗时间/ms',
  `creator_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'creator id',
  `created_at` int unsigned NOT NULL DEFAULT '0' COMMENT 'created time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='操作日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hjh_log_operate`
--

LOCK TABLES `hjh_log_operate` WRITE;
/*!40000 ALTER TABLE `hjh_log_operate` DISABLE KEYS */;
INSERT INTO `hjh_log_operate` VALUES (1,'user','user@online','[]','123.168.86.223','GET',200,1730115411,16,1,1730115411),(2,'user','user@online','[]','123.168.86.223','GET',200,1730115432,26,1,1730115432),(3,'user','user@loginLog','{\"page\":\"1\",\"limit\":\"10\"}','123.168.86.223','GET',200,1730115432,28,1,1730115432),(4,'user','user@operateLog','{\"page\":\"1\",\"limit\":\"10\",\"scope\":\"self\"}','123.168.86.223','GET',200,1730115432,21,1,1730115432),(5,'common','upload@image','{\"image\":{}}','123.168.86.223','POST',200,1730115437,19,1,1730115437),(6,'user','user@online','{\"avatar\":\"https:\\/\\/hjh-image2.wepromo.cn\\/uploads\\/image\\/2024-10-28\\/20245zFbJCDojF1730115437.png\",\"username\":\"catchadmin\",\"email\":\"catch@admin.com\",\"password\":null}','123.168.86.223','POST',200,1730115438,23,1,1730115438),(7,'user','user@online','[]','123.168.86.223','GET',200,1730115438,12,1,1730115438),(8,'user','user@online','[]','123.168.86.223','GET',200,1730115575,19,1,1730115575),(9,'user','user@online','[]','123.168.86.223','GET',200,1730115750,18,1,1730115750),(10,'user','user@online','[]','123.168.86.223','GET',200,1730115859,32,1,1730115859),(11,'user','user@online','[]','123.168.86.223','GET',200,1730116007,28,1,1730116007),(12,'user','user@online','[]','123.168.86.223','GET',200,1730116014,27,1,1730116014),(13,'user','user@online','[]','123.168.86.223','GET',200,1730116133,27,1,1730116133),(14,'user','user@online','[]','123.168.86.223','GET',200,1730116648,29,1,1730116648),(15,'user','user@online','[]','123.168.86.223','GET',200,1730116665,27,1,1730116665),(16,'user','user@online','[]','123.168.86.223','GET',200,1730117200,30,1,1730117200),(17,'user','user@online','[]','123.168.86.223','GET',200,1730117434,26,1,1730117434),(18,'user','user@online','[]','123.168.86.223','GET',200,1730118062,26,1,1730118062),(19,'user','user@online','[]','123.168.86.223','GET',200,1730118075,26,1,1730118075),(20,'user','user@online','[]','123.168.86.223','GET',200,1730118195,28,1,1730118195),(21,'user','user@online','[]','123.168.86.223','GET',200,1730118204,27,1,1730118204),(22,'user','user@online','[]','123.168.86.223','GET',200,1730118218,25,1,1730118218),(23,'user','user@online','[]','123.168.86.223','GET',200,1730118366,26,1,1730118366),(24,'user','user@online','[]','123.168.86.223','GET',200,1730118477,33,1,1730118477),(25,'user','user@online','[]','123.168.86.223','GET',200,1730118557,26,1,1730118557),(26,'user','user@online','[]','123.168.86.223','GET',200,1730118722,26,1,1730118722),(27,'user','user@online','[]','123.168.86.223','GET',200,1730118798,28,1,1730118798),(28,'user','user@online','[]','123.168.86.223','GET',200,1730118843,29,1,1730118843),(29,'user','user@online','[]','123.168.86.223','GET',200,1730118952,28,1,1730118952),(30,'permissions','roles@index','[]','123.168.86.223','GET',200,1730118955,23,1,1730118955),(31,'permissions','permissions@index','[]','123.168.86.223','GET',200,1730118962,29,1,1730118962),(32,'permissions','jobs@index','{\"page\":\"1\",\"limit\":\"10\"}','123.168.86.223','GET',200,1730118964,20,1,1730118964),(33,'permissions','departments@index','[]','123.168.86.223','GET',200,1730118965,20,1,1730118965),(34,'permissions','roles@index','[]','123.168.86.223','GET',200,1730118966,23,1,1730118966),(35,'permissions','jobs@index','{\"page\":\"1\",\"limit\":\"10\"}','123.168.86.223','GET',200,1730118967,20,1,1730118967),(36,'permissions','permissions@index','[]','123.168.86.223','GET',200,1730118969,28,1,1730118969),(37,'permissions','permissions@show','[]','123.168.86.223','GET',200,1730118971,29,1,1730118971),(38,'common','option@index','[]','123.168.86.223','GET',200,1730118971,30,1,1730118971),(39,'common','option@index','[]','123.168.86.223','GET',200,1730118971,31,1,1730118971),(40,'permissions','permissions@index','[]','123.168.86.223','GET',200,1730118971,41,1,1730118971),(41,'common','option@index','{\"module\":\"permissions\"}','123.168.86.223','GET',200,1730118972,20,1,1730118972),(42,'common','option@index','{\"module\":\"permissions\"}','123.168.86.223','GET',200,1730118972,16,1,1730118972),(43,'common','option@index','[]','123.168.86.223','GET',200,1730118982,18,1,1730118982),(44,'common','option@index','{\"module\":\"permissions\"}','123.168.86.223','GET',200,1730118982,14,1,1730118982),(45,'common','option@index','{\"module\":\"permissions\"}','123.168.86.223','GET',200,1730118983,24,1,1730118983),(46,'permissions','roles@index','[]','123.168.86.223','GET',200,1730118986,22,1,1730118986),(47,'permissions','roles@index','[]','123.168.86.223','GET',200,1730119045,21,1,1730119045),(48,'permissions','permissions@index','[]','123.168.86.223','GET',200,1730119046,26,1,1730119046),(49,'permissions','roles@index','[]','123.168.86.223','GET',200,1730119048,20,1,1730119048),(50,'permissions','departments@index','[]','123.168.86.223','GET',200,1730119053,31,1,1730119053),(51,'permissions','roles@index','{\"id\":null}','123.168.86.223','GET',200,1730119053,45,1,1730119053),(52,'common','option@index','[]','123.168.86.223','GET',200,1730119053,45,1,1730119053),(53,'permissions','permissions@index','{\"from\":\"role\"}','123.168.86.223','GET',200,1730119053,50,1,1730119053),(54,'permissions','roles@store','{\"role_name\":\"test\",\"identify\":\"test\",\"parent_id\":0}','123.168.86.223','POST',200,1730119058,45,1,1730119058),(55,'permissions','roles@index','[]','123.168.86.223','GET',200,1730119058,16,1,1730119058),(56,'permissions','jobs@index','{\"page\":\"1\",\"limit\":\"10\"}','123.168.86.223','GET',200,1730119061,20,1,1730119061),(57,'permissions','departments@index','[]','123.168.86.223','GET',200,1730119062,19,1,1730119062),(58,'permissions','roles@index','[]','123.168.86.223','GET',200,1730119063,20,1,1730119063),(59,'permissions','roles@index','[]','123.168.86.223','GET',200,1730119066,22,1,1730119066),(60,'user','user@online','[]','123.168.86.223','GET',200,1730119724,30,1,1730119724),(61,'permissions','roles@index','[]','123.168.86.223','GET',200,1730119725,23,1,1730119725),(62,'permissions','permissions@index','[]','123.168.86.223','GET',200,1730119761,28,1,1730119761),(63,'common','option@index','[]','123.168.86.223','GET',200,1730119764,34,1,1730119764),(64,'common','option@index','[]','123.168.86.223','GET',200,1730119764,38,1,1730119764),(65,'permissions','permissions@show','[]','123.168.86.223','GET',200,1730119764,39,1,1730119764),(66,'permissions','permissions@index','[]','123.168.86.223','GET',200,1730119764,46,1,1730119764),(67,'common','option@index','{\"module\":\"system\"}','123.168.86.223','GET',200,1730119764,14,1,1730119764),(68,'permissions','permissions@index','[]','123.168.86.223','GET',200,1730119921,32,1,1730119921),(69,'user','user@online','[]','123.168.86.223','GET',200,1730120035,36,1,1730120035),(70,'permissions','permissions@index','[]','123.168.86.223','GET',200,1730120036,28,1,1730120036),(71,'user','user@online','[]','123.168.86.223','GET',200,1730120042,35,1,1730120042),(72,'permissions','permissions@index','[]','123.168.86.223','GET',200,1730120042,21,1,1730120042),(73,'user','user@online','[]','123.168.86.223','GET',200,1730120058,29,1,1730120058),(74,'permissions','permissions@index','[]','123.168.86.223','GET',200,1730120122,28,1,1730120122),(75,'permissions','roles@index','[]','123.168.86.223','GET',200,1730120125,23,1,1730120126),(76,'permissions','permissions@index','[]','123.168.86.223','GET',200,1730120127,86,1,1730120127),(77,'common','option@index','[]','123.168.86.223','GET',200,1730120132,41,1,1730120132),(78,'common','option@index','[]','123.168.86.223','GET',200,1730120132,40,1,1730120132),(79,'permissions','permissions@show','[]','123.168.86.223','GET',200,1730120132,40,1,1730120132),(80,'permissions','permissions@index','[]','123.168.86.223','GET',200,1730120132,52,1,1730120132),(81,'common','option@index','{\"module\":\"system\"}','123.168.86.223','GET',200,1730120133,18,1,1730120133),(82,'common','option@index','{\"module\":\"system\"}','123.168.86.223','GET',200,1730120135,22,1,1730120135),(83,'common','option@index','[]','123.168.86.223','GET',200,1730120136,23,1,1730120136),(84,'common','option@index','{\"module\":\"system\"}','123.168.86.223','GET',200,1730120136,19,1,1730120136),(85,'permissions','roles@index','[]','123.168.86.223','GET',200,1730120225,22,1,1730120225),(86,'common','option@index','[]','123.168.86.223','GET',200,1730120227,41,1,1730120227),(87,'permissions','roles@index','{\"id\":\"1\"}','123.168.86.223','GET',200,1730120227,41,1,1730120227),(88,'permissions','departments@index','[]','123.168.86.223','GET',200,1730120227,45,1,1730120227),(89,'permissions','roles@show','[]','123.168.86.223','GET',200,1730120227,50,1,1730120227),(90,'permissions','permissions@index','{\"from\":\"role\"}','123.168.86.223','GET',200,1730120227,27,1,1730120228),(91,'permissions','permissions@index','[]','123.168.86.223','GET',200,1730120237,29,1,1730120237),(92,'permissions','jobs@index','{\"page\":\"1\",\"limit\":\"10\"}','123.168.86.223','GET',200,1730120239,20,1,1730120239),(93,'permissions','departments@index','[]','123.168.86.223','GET',200,1730120240,19,1,1730120240),(94,'permissions','permissions@index','[]','123.168.86.223','GET',200,1730120242,27,1,1730120242),(95,'common','option@index','[]','123.168.86.223','GET',200,1730120358,22,1,1730120358),(96,'common','option@index','[]','123.168.86.223','GET',200,1730120358,13,1,1730120358),(97,'permissions','permissions@show','[]','123.168.86.223','GET',200,1730120358,20,1,1730120358),(98,'permissions','permissions@index','[]','123.168.86.223','GET',200,1730120358,27,1,1730120358),(99,'common','option@index','{\"module\":\"system\"}','123.168.86.223','GET',200,1730120358,13,1,1730120358),(100,'user','user@online','[]','123.168.86.223','GET',200,1730120386,27,1,1730120386),(101,'permissions','permissions@index','[]','123.168.86.223','GET',200,1730120387,54,1,1730120388),(102,'system','dictionary@index','{\"page\":\"1\",\"limit\":\"10\"}','123.168.86.223','GET',200,1730120392,22,1,1730120392),(103,'permissions','permissions@index','[]','123.168.86.223','GET',200,1730120395,55,1,1730120395),(104,'common','option@index','[]','123.168.86.223','GET',200,1730120411,43,1,1730120411),(105,'common','option@index','[]','123.168.86.223','GET',200,1730120411,38,1,1730120411),(106,'permissions','permissions@show','[]','123.168.86.223','GET',200,1730120411,41,1,1730120411),(107,'permissions','permissions@index','[]','123.168.86.223','GET',200,1730120411,48,1,1730120411),(108,'common','option@index','{\"module\":\"system\"}','123.168.86.223','GET',200,1730120411,18,1,1730120411),(109,'common','option@index','{\"module\":\"system\"}','123.168.86.223','GET',200,1730120411,17,1,1730120411),(110,'user','user@online','[]','123.168.86.223','GET',200,1730120488,27,1,1730120488),(111,'permissions','permissions@index','[]','123.168.86.223','GET',200,1730120489,28,1,1730120489),(112,'system','dictionary@index','{\"page\":\"1\",\"limit\":\"10\"}','123.168.86.223','GET',200,1730120499,21,1,1730120499),(113,'system','dictionary@store','{\"name\":\"test\",\"key\":\"test\"}','123.168.86.223','POST',200,1730120504,27,1,1730120504),(114,'system','dictionary@index','{\"page\":\"1\",\"limit\":\"10\"}','123.168.86.223','GET',200,1730120505,22,1,1730120505),(115,'system','dictionary@show','[]','123.168.86.223','GET',200,1730120507,20,1,1730120507),(116,'system','dictionaryvalues@index','{\"page\":\"1\",\"limit\":\"10\",\"dic_id\":\"1\"}','123.168.86.223','GET',200,1730120510,23,1,1730120510),(117,'system','dictionaryvalues@store','{\"value\":1,\"sort\":1,\"dic_id\":\"1\",\"label\":\"test\"}','123.168.86.223','POST',200,1730120515,30,1,1730120515),(118,'system','dictionaryvalues@index','{\"page\":\"1\",\"limit\":\"10\"}','123.168.86.223','GET',200,1730120515,17,1,1730120515),(119,'permissions','roles@index','[]','123.168.86.223','GET',200,1730120519,28,1,1730120519),(120,'permissions','roles@index','[]','123.168.86.223','GET',200,1730120523,23,1,1730120523),(121,'permissions','roles@index','[]','123.168.86.223','GET',200,1730120564,24,1,1730120564),(122,'system','dictionary@index','{\"page\":\"1\",\"limit\":\"10\"}','123.168.86.223','GET',200,1730120567,23,1,1730120567),(123,'permissions','roles@index','[]','123.168.86.223','GET',200,1730120568,20,1,1730120568),(124,'user','user@online','[]','123.168.86.223','GET',200,1730122529,28,1,1730122529),(125,'user','user@online','[]','123.168.86.223','GET',200,1730182030,27,1,1730182030),(126,'user','user@online','[]','123.168.86.223','GET',200,1730182283,28,1,1730182283),(127,'user','user@online','[]','123.168.86.223','GET',200,1730182383,29,1,1730182383),(128,'user','user@online','[]','123.168.86.223','GET',200,1730182549,30,1,1730182549),(129,'user','user@online','[]','123.168.86.223','GET',200,1730182689,30,1,1730182690),(130,'user','user@online','[]','123.168.86.223','GET',200,1730182819,27,1,1730182819),(131,'user','user@online','[]','123.168.86.223','GET',200,1730182984,28,1,1730182984),(132,'user','user@online','[]','123.168.86.223','GET',200,1730183218,28,1,1730183218),(133,'user','user@online','[]','123.168.86.223','GET',200,1730183603,31,1,1730183603),(134,'user','user@online','[]','123.168.86.223','GET',200,1730183929,26,1,1730183929),(135,'user','user@online','[]','123.168.86.223','GET',200,1730184398,31,1,1730184398),(136,'system','dictionary@index','{\"page\":\"1\",\"limit\":\"10\"}','123.168.86.223','GET',200,1730185294,23,1,1730185294),(137,'permissions','roles@index','[]','123.168.86.223','GET',200,1730185297,22,1,1730185297),(138,'user','user@online','[]','123.168.86.223','GET',200,1730186249,29,1,1730186249),(139,'permissions','roles@index','[]','123.168.86.223','GET',200,1730186250,23,1,1730186250),(140,'user','user@online','[]','123.168.86.223','GET',200,1730187382,31,1,1730187382),(141,'permissions','roles@index','[]','123.168.86.223','GET',200,1730187383,21,1,1730187383),(142,'user','user@online','[]','123.168.86.223','GET',200,1730188412,28,1,1730188412),(143,'permissions','roles@index','[]','123.168.86.223','GET',200,1730188413,24,1,1730188413),(144,'permissions','permissions@index','[]','123.168.86.223','GET',200,1730188418,30,1,1730188418);
/*!40000 ALTER TABLE `hjh_log_operate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hjh_migrations`
--

DROP TABLE IF EXISTS `hjh_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hjh_migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hjh_migrations`
--

LOCK TABLES `hjh_migrations` WRITE;
/*!40000 ALTER TABLE `hjh_migrations` DISABLE KEYS */;
INSERT INTO `hjh_migrations` VALUES (1,'2022_12_04_060250_create_users',1),(2,'2022_12_04_062539_create_log_login',2),(3,'2022_12_17_031519_create_log_operate',3),(4,'Schemas',4),(5,'2019_08_19_000000_create_failed_jobs_table',5),(6,'2019_12_14_000001_create_personal_access_tokens_table',5),(7,'2022_12_05_084442_create_roles',6),(8,'2022_12_06_110551_create_jobs',7),(9,'2022_12_07_075441_create_departments',8),(10,'2022_12_07_103318_create_permissions',9),(11,'2022_12_10_061840_create_user_has_roles',10),(12,'2022_12_10_061857_create_role_has_permissions',11),(13,'2022_12_10_061919_create_user_has_jobs',12),(14,'2022_12_10_061928_create_role_has_departments',13),(15,'2023_03_01_142043_create_remove_is_inner',14),(16,'2023_04_17_141652_create_update_permissions',15),(17,'2023_05_08_043214_create_system_dictionary',16),(18,'2023_05_08_043740_create_system_dictionary_values',17);
/*!40000 ALTER TABLE `hjh_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hjh_permissions`
--

DROP TABLE IF EXISTS `hjh_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hjh_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL DEFAULT '0' COMMENT '父级菜单',
  `permission_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜单名称',
  `route` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '前端路由',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单 icon',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属模块',
  `permission_mark` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '权限标识,使用 @ 分割',
  `component` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '组件',
  `redirect` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '跳转地址',
  `keepalive` tinyint NOT NULL DEFAULT '1' COMMENT '1 缓存 2 不缓存',
  `type` tinyint NOT NULL DEFAULT '1' COMMENT '1 目录 2 菜单 3 按钮',
  `hidden` tinyint NOT NULL DEFAULT '1' COMMENT '1 显示 2 隐藏',
  `sort` int NOT NULL DEFAULT '1' COMMENT '排序',
  `active_menu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '访问内页时，需要激活的菜单栏',
  `creator_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'creator id',
  `created_at` int unsigned NOT NULL DEFAULT '0' COMMENT 'created time',
  `updated_at` int unsigned NOT NULL DEFAULT '0' COMMENT 'updated time',
  `deleted_at` int unsigned NOT NULL DEFAULT '0' COMMENT 'delete time',
  PRIMARY KEY (`id`),
  KEY `hjh_permissions_module_permission_mark_index` (`module`,`permission_mark`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hjh_permissions`
--

LOCK TABLES `hjh_permissions` WRITE;
/*!40000 ALTER TABLE `hjh_permissions` DISABLE KEYS */;
INSERT INTO `hjh_permissions` VALUES (1,0,'权限管理','/permission','arrow-down-on-square-stack','permissions','','/admin/layout/index.vue',NULL,1,1,1,1,'',0,1670579928,1672798090,0),(2,1,'角色管理','roles','arrow-left-circle','permissions','Roles','/permissions/roles/index.vue',NULL,1,2,1,6,'',0,1670579968,1672798090,0),(3,2,'列表','','','permissions','Roles@index','','',1,3,1,1,'',1,1671526858,1672798090,0),(4,2,'新增','','','permissions','Roles@store','','',1,3,1,2,'',1,1671526858,1672798090,0),(5,2,'读取','','','permissions','Roles@show','','',1,3,1,3,'',1,1671526858,1672798090,0),(6,2,'更新','','','permissions','Roles@update','','',1,3,1,4,'',1,1671526858,1672798090,0),(7,2,'删除','','','permissions','Roles@destroy','','',1,3,1,5,'',1,1671526858,1672798090,0),(8,1,'菜单管理','permissions','finger-print','permissions','Permissions','/permissions/permissions/index.vue',NULL,1,2,1,1,'',0,1670641371,1672798090,0),(9,8,'列表','','','permissions','Permissions@index','','',1,3,1,1,'',1,1671524755,1672798090,0),(10,8,'新增','','','permissions','Permissions@store','','',1,3,1,2,'',1,1671524755,1672798090,0),(11,8,'读取','','','permissions','Permissions@show','','',1,3,1,3,'',1,1671524755,1672798090,0),(12,8,'更新','','','permissions','Permissions@update','','',1,3,1,4,'',1,1671524756,1672798090,0),(13,8,'删除','','','permissions','Permissions@destroy','','',1,3,1,5,'',1,1671524756,1672798090,0),(14,8,'禁用/启用','','','permissions','Permissions@enable','','',1,3,1,6,'',1,1671524756,1672798090,0),(15,1,'岗位管理','jobs','globe-americas','permissions','Jobs','/permissions/jobs/index.vue',NULL,1,2,1,1,'',0,1670641399,1672798090,0),(16,15,'列表','','','permissions','Jobs@index','','',1,3,1,1,'',1,1671524747,1672798090,0),(17,15,'新增','','','permissions','Jobs@store','','',1,3,1,2,'',1,1671524747,1672798090,0),(18,15,'读取','','','permissions','Jobs@show','','',1,3,1,3,'',1,1671524747,1672798090,0),(19,15,'更新','','','permissions','Jobs@update','','',1,3,1,4,'',1,1671524747,1672798090,0),(20,15,'删除','','','permissions','Jobs@destroy','','',1,3,1,5,'',1,1671524747,1672798090,0),(21,15,'禁用/启用','','','permissions','Jobs@enable','','',1,3,1,6,'',1,1671524747,1672798090,0),(22,1,'部门管理','departments','table-cells','permissions','Departments','/permissions/departments/index.vue',NULL,1,2,1,1,'',0,1670641426,1672798090,0),(23,22,'列表','','','permissions','Departments@index','','',1,3,1,1,'',1,1671501850,1672798090,0),(24,22,'新增','','','permissions','Departments@store','','',1,3,1,1,'',1,1671501861,1672798090,0),(25,22,'读取','','','permissions','Departments@show','','',1,3,1,1,'',1,1671501872,1672798090,0),(26,22,'更新','','','permissions','Departments@update','','',1,3,1,1,'',1,1671517311,1672798090,0),(27,22,'删除','','','permissions','Departments@destroy','','',1,3,1,1,'',1,1671517324,1672798090,0),(28,22,'禁用/启用','','','permissions','Departments@enable','','',1,3,1,6,'',1,1671524493,1672798090,0),(29,0,'系统管理','/system','server-stack','system','','',NULL,1,1,1,1,'',1,1683535826,1683535826,0),(30,29,'字典管理','dictionary','','system','dictionary','/system/dictionary/index.vue','',1,2,1,1,'',1,1683535863,1683535874,0),(31,30,'删除','','','system','dictionary@destroy','','',1,3,1,5,'',1,1683535980,1683535980,0),(32,30,'列表','','','system','dictionary@index','','',1,3,1,1,'',1,1683535980,1683535980,0),(33,30,'读取','','','system','dictionary@show','','',1,3,1,3,'',1,1683535980,1683535980,0),(34,30,'新增','','','system','dictionary@store','','',1,3,1,2,'',1,1683535980,1683535980,0),(35,30,'更新','','','system','dictionary@update','','',1,3,1,4,'',1,1683535980,1683535980,0),(36,29,'字典值管理','dictionary/values/:id','','system','dictionaryValues','/system/dictionaryValues/index.vue','',2,2,2,1,'/system/dictionary',1,1683535961,1683593856,0);
/*!40000 ALTER TABLE `hjh_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hjh_personal_access_tokens`
--

DROP TABLE IF EXISTS `hjh_personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hjh_personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hjh_personal_access_tokens_token_unique` (`token`),
  KEY `hjh_personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hjh_personal_access_tokens`
--

LOCK TABLES `hjh_personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `hjh_personal_access_tokens` DISABLE KEYS */;
INSERT INTO `hjh_personal_access_tokens` VALUES (2,'Modules\\User\\Models\\User',1,'token','285113433ce4a2d9381149580adc02b6d96423ec54f3463cf4f1882a66e1d53d','[\"*\"]','2024-10-28 11:48:53',NULL,'2024-10-28 11:46:46','2024-10-28 11:48:53'),(3,'Modules\\User\\Models\\User',1,'token','360b6ac8ff6d603f23658ea36e67c7a69267f34e50af925ff4f5ef65b0d8af64','[\"*\"]','2024-10-28 11:57:28',NULL,'2024-10-28 11:57:27','2024-10-28 11:57:28'),(5,'Modules\\User\\Models\\User',1,'token','4363f1f186052ad1bb8959f48de7ecff5c42f9c15ea88f4833d5deecf256650e','[\"*\"]','2024-10-29 07:53:38',NULL,'2024-10-28 12:23:38','2024-10-29 07:53:38');
/*!40000 ALTER TABLE `hjh_personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hjh_role_has_departments`
--

DROP TABLE IF EXISTS `hjh_role_has_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hjh_role_has_departments` (
  `role_id` int NOT NULL COMMENT 'roles primary key',
  `department_id` int NOT NULL COMMENT 'departments primary key'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='role relate departments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hjh_role_has_departments`
--

LOCK TABLES `hjh_role_has_departments` WRITE;
/*!40000 ALTER TABLE `hjh_role_has_departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `hjh_role_has_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hjh_role_has_permissions`
--

DROP TABLE IF EXISTS `hjh_role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hjh_role_has_permissions` (
  `role_id` int NOT NULL COMMENT 'roles primary key',
  `permission_id` int NOT NULL COMMENT 'permissions primary key'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='role relate permissions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hjh_role_has_permissions`
--

LOCK TABLES `hjh_role_has_permissions` WRITE;
/*!40000 ALTER TABLE `hjh_role_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `hjh_role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hjh_roles`
--

DROP TABLE IF EXISTS `hjh_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hjh_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名称',
  `identify` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色的标识，用英文表示',
  `parent_id` int NOT NULL DEFAULT '0' COMMENT '父级ID',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色描述',
  `data_range` smallint NOT NULL DEFAULT '0' COMMENT '1 全部数据 2 自定义数据 3 仅本人数据 4 部门数据 5 部门及以下数据',
  `creator_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'creator id',
  `created_at` int unsigned NOT NULL DEFAULT '0' COMMENT 'created time',
  `updated_at` int unsigned NOT NULL DEFAULT '0' COMMENT 'updated time',
  `deleted_at` int unsigned NOT NULL DEFAULT '0' COMMENT 'delete time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hjh_roles`
--

LOCK TABLES `hjh_roles` WRITE;
/*!40000 ALTER TABLE `hjh_roles` DISABLE KEYS */;
INSERT INTO `hjh_roles` VALUES (1,'test','test',0,NULL,0,1,1730119058,1730119058,0);
/*!40000 ALTER TABLE `hjh_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hjh_schemas`
--

DROP TABLE IF EXISTS `hjh_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hjh_schemas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '模块名称',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'schema 名称',
  `columns` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '字段',
  `is_soft_delete` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 是 2 否',
  `created_at` int unsigned NOT NULL DEFAULT '0' COMMENT 'created time',
  `updated_at` int unsigned NOT NULL DEFAULT '0' COMMENT 'updated time',
  `deleted_at` int unsigned NOT NULL DEFAULT '0' COMMENT 'delete time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hjh_schemas`
--

LOCK TABLES `hjh_schemas` WRITE;
/*!40000 ALTER TABLE `hjh_schemas` DISABLE KEYS */;
/*!40000 ALTER TABLE `hjh_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hjh_system_dictionary`
--

DROP TABLE IF EXISTS `hjh_system_dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hjh_system_dictionary` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '字典名称',
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '字典 key',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '状态 1 启用 2 禁用',
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  `creator_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'creator id',
  `created_at` int unsigned NOT NULL DEFAULT '0' COMMENT 'created time',
  `updated_at` int unsigned NOT NULL DEFAULT '0' COMMENT 'updated time',
  `deleted_at` int unsigned NOT NULL DEFAULT '0' COMMENT 'delete time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='字段管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hjh_system_dictionary`
--

LOCK TABLES `hjh_system_dictionary` WRITE;
/*!40000 ALTER TABLE `hjh_system_dictionary` DISABLE KEYS */;
INSERT INTO `hjh_system_dictionary` VALUES (1,'test','test',1,'',1,1730120504,1730120504,0);
/*!40000 ALTER TABLE `hjh_system_dictionary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hjh_system_dictionary_values`
--

DROP TABLE IF EXISTS `hjh_system_dictionary_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hjh_system_dictionary_values` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `dic_id` int NOT NULL COMMENT '字典ID',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '值名称',
  `value` tinyint NOT NULL COMMENT '对应值',
  `sort` int NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '状态 1 正常 2 禁用',
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `creator_id` int unsigned NOT NULL DEFAULT '0' COMMENT 'creator id',
  `created_at` int unsigned NOT NULL DEFAULT '0' COMMENT 'created time',
  `updated_at` int unsigned NOT NULL DEFAULT '0' COMMENT 'updated time',
  `deleted_at` int unsigned NOT NULL DEFAULT '0' COMMENT 'delete time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='字典对应值';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hjh_system_dictionary_values`
--

LOCK TABLES `hjh_system_dictionary_values` WRITE;
/*!40000 ALTER TABLE `hjh_system_dictionary_values` DISABLE KEYS */;
INSERT INTO `hjh_system_dictionary_values` VALUES (1,1,'test',1,1,1,'',1,1730120515,1730120515,0);
/*!40000 ALTER TABLE `hjh_system_dictionary_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hjh_user_has_jobs`
--

DROP TABLE IF EXISTS `hjh_user_has_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hjh_user_has_jobs` (
  `user_id` int NOT NULL COMMENT 'users primary key',
  `job_id` int NOT NULL COMMENT 'jobs primary key'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='user relate jobs';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hjh_user_has_jobs`
--

LOCK TABLES `hjh_user_has_jobs` WRITE;
/*!40000 ALTER TABLE `hjh_user_has_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `hjh_user_has_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hjh_user_has_roles`
--

DROP TABLE IF EXISTS `hjh_user_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hjh_user_has_roles` (
  `user_id` int NOT NULL COMMENT 'users primary key',
  `role_id` int NOT NULL COMMENT 'roles primary key'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='user relate roles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hjh_user_has_roles`
--

LOCK TABLES `hjh_user_has_roles` WRITE;
/*!40000 ALTER TABLE `hjh_user_has_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `hjh_user_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hjh_users`
--

DROP TABLE IF EXISTS `hjh_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hjh_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '昵称',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '邮箱',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `remember_token` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'token',
  `department_id` int NOT NULL DEFAULT '0' COMMENT '部门ID',
  `creator_id` int NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1:normal 2: forbidden',
  `login_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '登录IP',
  `login_at` int NOT NULL DEFAULT '0' COMMENT '登录时间',
  `created_at` int unsigned NOT NULL DEFAULT '0' COMMENT 'created time',
  `updated_at` int unsigned NOT NULL DEFAULT '0' COMMENT 'updated time',
  `deleted_at` int unsigned NOT NULL DEFAULT '0' COMMENT 'delete time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hjh_users`
--

LOCK TABLES `hjh_users` WRITE;
/*!40000 ALTER TABLE `hjh_users` DISABLE KEYS */;
INSERT INTO `hjh_users` VALUES (1,'catchadmin','$2y$10$45McEHlNcQfu8KT4HiEXW.P/DhylZ.j7J3Vv2u.uVHOF7JFznfRtq','catch@admin.com','https://hjh-image2.wepromo.cn/uploads/image/2024-10-28/20245zFbJCDojF1730115437.png',NULL,0,1,1,'123.168.86.223',1730118218,1730115331,1730118218,0);
/*!40000 ALTER TABLE `hjh_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-29 16:15:11
