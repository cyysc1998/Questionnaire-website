CREATE DATABASE  IF NOT EXISTS `questionnaire` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `questionnaire`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: questionnaire
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `q_id` int(11) DEFAULT NULL,
  `time` date DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES (140,'孙超','123.165.239.30',1,'黑龙江省哈尔滨市',105,'2020-06-10',53),(141,'0','123.165.239.30',2,'黑龙江省哈尔滨市',105,'2020-06-10',53),(142,'0','123.165.239.30',3,'黑龙江省哈尔滨市',105,'2020-06-10',53),(143,'0-1','123.165.239.30',4,'黑龙江省哈尔滨市',105,'2020-06-10',53),(144,'1','123.165.239.30',5,'黑龙江省哈尔滨市',105,'2020-06-10',53),(145,'1.5','123.165.239.30',6,'黑龙江省哈尔滨市',105,'2020-06-10',53),(146,'5','123.165.239.30',7,'黑龙江省哈尔滨市',105,'2020-06-10',53),(147,'张三','123.165.239.30',1,'黑龙江省哈尔滨市',105,'2020-06-10',-1),(148,'1','123.165.239.30',2,'黑龙江省哈尔滨市',105,'2020-06-10',-1),(149,'2-1','123.165.239.30',4,'黑龙江省哈尔滨市',105,'2020-06-10',-1),(150,'2','123.165.239.30',5,'黑龙江省哈尔滨市',105,'2020-06-10',-1),(151,'5','123.165.239.30',6,'黑龙江省哈尔滨市',105,'2020-06-10',-1),(152,'4','123.165.239.30',7,'黑龙江省哈尔滨市',105,'2020-06-10',-1);
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `choice_collect`
--

DROP TABLE IF EXISTS `choice_collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `choice_collect` (
  `id` int(11) NOT NULL,
  `display` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `choice_collect`
--

LOCK TABLES `choice_collect` WRITE;
/*!40000 ALTER TABLE `choice_collect` DISABLE KEYS */;
INSERT INTO `choice_collect` VALUES (7,1,'今日是否因发热请假未到岗或未返校？'),(13,1,'是否做过核酸检测？'),(19,1,'是否已经申请校区所在地健康码？'),(26,1,'今日申领校区所在地健康码的颜色为？'),(36,1,'目前了解疫情的渠道为？'),(59,1,'今日是否因发热请假未到岗或未返校？'),(65,1,'是否做过核酸检测？'),(71,1,'是否已经申请校区所在地健康码？'),(78,1,'今日申领校区所在地健康码的颜色为？'),(88,1,'目前了解疫情的渠道为？'),(108,1,'您是否申请了健康码？'),(115,1,'您健康码的颜色为？'),(125,1,'您了解疫情的渠道为？');
/*!40000 ALTER TABLE `choice_collect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `choice_logic`
--

DROP TABLE IF EXISTS `choice_logic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `choice_logic` (
  `id` int(11) NOT NULL,
  `choice_id` int(11) DEFAULT NULL,
  `logic_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `choice_logic`
--

LOCK TABLES `choice_logic` WRITE;
/*!40000 ALTER TABLE `choice_logic` DISABLE KEYS */;
INSERT INTO `choice_logic` VALUES (22,20,6),(74,72,6),(111,109,3);
/*!40000 ALTER TABLE `choice_logic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `choice_map`
--

DROP TABLE IF EXISTS `choice_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `choice_map` (
  `id` int(11) NOT NULL,
  `choice_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `choice_map`
--

LOCK TABLES `choice_map` WRITE;
/*!40000 ALTER TABLE `choice_map` DISABLE KEYS */;
INSERT INTO `choice_map` VALUES (9,8,7),(11,10,7),(15,14,13),(17,16,13),(21,20,19),(24,23,19),(28,27,26),(30,29,26),(32,31,26),(34,33,26),(38,37,36),(40,39,36),(42,41,36),(44,43,36),(61,60,59),(63,62,59),(67,66,65),(69,68,65),(73,72,71),(76,75,71),(80,79,78),(82,81,78),(84,83,78),(86,85,78),(90,89,88),(92,91,88),(94,93,88),(96,95,88),(110,109,108),(113,112,108),(117,116,115),(119,118,115),(121,120,115),(123,122,115),(127,126,125),(129,128,125),(131,130,125);
/*!40000 ALTER TABLE `choice_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `choices`
--

DROP TABLE IF EXISTS `choices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `choices` (
  `id` int(11) NOT NULL,
  `choice` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `choices`
--

LOCK TABLES `choices` WRITE;
/*!40000 ALTER TABLE `choices` DISABLE KEYS */;
INSERT INTO `choices` VALUES (8,'是'),(10,'否'),(14,'是'),(16,'否'),(20,'是'),(23,'否'),(27,'绿码'),(29,'红码'),(31,'黄码'),(33,'橙码'),(37,'政府报道'),(39,'媒体宣传'),(41,'老师同学'),(43,'家人亲戚'),(60,'是'),(62,'否'),(66,'是'),(68,'否'),(72,'是'),(75,'否'),(79,'绿码'),(81,'红码'),(83,'黄码'),(85,'橙码'),(89,'政府报道'),(91,'媒体宣传'),(93,'老师同学'),(95,'家人亲戚'),(109,'是'),(112,'否'),(116,'绿色'),(118,'红色'),(120,'橙色'),(122,'黄色'),(126,'政府宣传'),(128,'媒体报道'),(130,'亲友朋友');
/*!40000 ALTER TABLE `choices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `float_collect`
--

DROP TABLE IF EXISTS `float_collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `float_collect` (
  `id` int(11) NOT NULL,
  `display` int(11) DEFAULT NULL,
  `max` double DEFAULT NULL,
  `min` double DEFAULT NULL,
  `precious` double DEFAULT NULL,
  `step` double DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `float_collect`
--

LOCK TABLES `float_collect` WRITE;
/*!40000 ALTER TABLE `float_collect` DISABLE KEYS */;
INSERT INTO `float_collect` VALUES (48,1,5,1,0.1,0.1,'平均每天使用口罩个数为？'),(100,1,5,1,0.1,0.1,'平均每天使用口罩个数为？'),(135,1,10,0,0.1,0.1,'您平均每天使用口罩数量为？');
/*!40000 ALTER TABLE `float_collect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (165),(165),(165),(165),(165),(165),(165),(165),(165),(165),(165),(165),(165),(165);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `integer_collect`
--

DROP TABLE IF EXISTS `integer_collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `integer_collect` (
  `id` int(11) NOT NULL,
  `display` int(11) DEFAULT NULL,
  `max` int(11) DEFAULT NULL,
  `min` int(11) DEFAULT NULL,
  `step` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `integer_collect`
--

LOCK TABLES `integer_collect` WRITE;
/*!40000 ALTER TABLE `integer_collect` DISABLE KEYS */;
INSERT INTO `integer_collect` VALUES (46,1,10,0,1,'目前每天出门次数为？'),(98,1,10,0,1,'目前每天出门次数为？'),(133,1,10,0,1,'您每天出门次数为？');
/*!40000 ALTER TABLE `integer_collect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `classified_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `questionnaire_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (4,3,1,2,4),(6,5,2,2,4),(12,7,3,2,0),(18,13,4,2,0),(25,19,5,2,0),(35,26,6,2,0),(45,36,7,2,1),(47,46,8,2,2),(49,48,9,2,3),(51,50,10,2,5),(56,55,1,54,4),(58,57,2,54,4),(64,59,3,54,0),(70,65,4,54,0),(77,71,5,54,0),(87,78,6,54,0),(97,88,7,54,1),(99,98,8,54,2),(101,100,9,54,3),(103,102,10,54,5),(107,106,1,105,4),(114,108,2,105,0),(124,115,3,105,0),(132,125,4,105,1),(134,133,5,105,2),(136,135,6,105,3),(138,137,7,105,5),(157,156,1,155,4),(161,160,1,159,4),(164,163,1,162,4);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questionnaire`
--

DROP TABLE IF EXISTS `questionnaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `questionnaire` (
  `id` int(11) NOT NULL,
  `answer_number` int(11) DEFAULT NULL,
  `begin_time` date DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  `max_times` int(11) DEFAULT NULL,
  `need_register` bit(1) DEFAULT NULL,
  `times_per_day` bit(1) DEFAULT NULL,
  `times_total` bit(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionnaire`
--

LOCK TABLES `questionnaire` WRITE;
/*!40000 ALTER TABLE `questionnaire` DISABLE KEYS */;
INSERT INTO `questionnaire` VALUES (2,0,'2020-06-10','2020-06-24','温馨提示：不外出、不聚集、不吃野味，戴口罩、勤洗手、咳嗽有礼，开窗通风、发热就诊',2,_binary '\0',_binary '',_binary '\0','健康状况每日上报'),(54,0,'2020-06-10','2020-06-24','温馨提示：不外出、不聚集、不吃野味，戴口罩、勤洗手、咳嗽有礼，开窗通风、发热就诊',2,_binary '\0',_binary '',_binary '\0','健康状况每日上报'),(105,2,'2020-06-10','2020-06-17','这是一个 对新冠疫情调查的问卷，请认真填写，谢谢参与！',2,_binary '\0',_binary '',_binary '\0','新冠疫情调查'),(153,0,'2020-06-10','2020-06-17','测试仅限注册用户填写问卷',365,_binary '',_binary '\0',_binary '\0','测试仅限注册用户填写的问卷'),(155,0,'2020-06-10','2020-06-17','测试仅限注册用户填写的问卷',365,_binary '',_binary '\0',_binary '\0','测试仅限注册用户填写的问卷'),(159,0,'2020-06-10','2020-06-11','测试不完整题目',365,_binary '\0',_binary '\0',_binary '\0','测试不完整题目'),(162,0,'2020-06-10','2020-06-11','测试不完整题目',365,_binary '\0',_binary '\0',_binary '\0','测试不完整题目');
/*!40000 ALTER TABLE `questionnaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rate_collect`
--

DROP TABLE IF EXISTS `rate_collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rate_collect` (
  `id` int(11) NOT NULL,
  `display` int(11) DEFAULT NULL,
  `max` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rate_collect`
--

LOCK TABLES `rate_collect` WRITE;
/*!40000 ALTER TABLE `rate_collect` DISABLE KEYS */;
INSERT INTO `rate_collect` VALUES (50,1,5,'您对目前学习环境的评价为？'),(102,1,5,'您对目前学习环境的评价为？'),(137,1,5,'您对本问卷的评价为？');
/*!40000 ALTER TABLE `rate_collect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `related_logic`
--

DROP TABLE IF EXISTS `related_logic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `related_logic` (
  `id` int(11) NOT NULL,
  `related_list` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `related_logic`
--

LOCK TABLES `related_logic` WRITE;
/*!40000 ALTER TABLE `related_logic` DISABLE KEYS */;
/*!40000 ALTER TABLE `related_logic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `text_collect`
--

DROP TABLE IF EXISTS `text_collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `text_collect` (
  `id` int(11) NOT NULL,
  `display` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `text_collect`
--

LOCK TABLES `text_collect` WRITE;
/*!40000 ALTER TABLE `text_collect` DISABLE KEYS */;
INSERT INTO `text_collect` VALUES (3,1,'姓名'),(5,1,'学号'),(55,1,'姓名'),(57,1,'学号'),(106,1,'您的姓名？'),(156,1,'请输入您的姓名'),(160,1,'您的姓名'),(163,1,'您的姓名');
/*!40000 ALTER TABLE `text_collect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `register_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'18245101590@163.com','Fangz','123456','2020-06-10'),(53,'admin@zju.edu.cn','admin','admin','2020-06-10');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_questionnaire`
--

DROP TABLE IF EXISTS `user_questionnaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_questionnaire` (
  `id` int(11) NOT NULL,
  `q_id` int(11) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_questionnaire`
--

LOCK TABLES `user_questionnaire` WRITE;
/*!40000 ALTER TABLE `user_questionnaire` DISABLE KEYS */;
INSERT INTO `user_questionnaire` VALUES (52,2,1),(104,54,53),(139,105,53),(158,155,53);
/*!40000 ALTER TABLE `user_questionnaire` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-13 10:43:40
