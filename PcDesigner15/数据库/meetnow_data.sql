-- MySQL dump 10.13  Distrib 5.6.50, for Linux (x86_64)
--
-- Host: localhost    Database: meetnow_data
-- ------------------------------------------------------
-- Server version	5.6.50-log

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
-- Table structure for table `atlas_data`
--

DROP TABLE IF EXISTS `atlas_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atlas_data` (
  `post_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `post_author` varchar(50) NOT NULL DEFAULT 'Lesterbor',
  `post_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`post_id`),
  UNIQUE KEY `post_id` (`post_id`),
  KEY `post_id_2` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atlas_data`
--

LOCK TABLES `atlas_data` WRITE;
/*!40000 ALTER TABLE `atlas_data` DISABLE KEYS */;
INSERT INTO `atlas_data` VALUES (3,'2022-03-31 04:55:03','Lesterbor','http://www.cpdesign.com/Static/atlas/2.jpg'),(4,'2022-03-31 04:55:07','Lesterbor','http://www.cpdesign.com/Static/atlas/3.jpg'),(68,'2022-03-31 06:10:37','Lesterbor','http://www.cpdesign.com/Static/atlas/1648707037611.jpg'),(69,'2022-03-31 06:10:37','Lesterbor','http://www.cpdesign.com/Static/atlas/1648707037588.jpg'),(70,'2022-03-31 06:10:38','Lesterbor','http://www.cpdesign.com/Static/atlas/1648707038808.jpg'),(71,'2022-03-31 06:10:38','Lesterbor','http://www.cpdesign.com/Static/atlas/1648707038852.jpg'),(72,'2022-03-31 06:10:39','Lesterbor','http://www.cpdesign.com/Static/atlas/1648707039506.jpg'),(73,'2022-03-31 06:10:39','Lesterbor','http://www.cpdesign.com/Static/atlas/1648707039919.jpg'),(74,'2022-03-31 06:10:39','Lesterbor','http://www.cpdesign.com/Static/atlas/1648707039673.jpg'),(75,'2022-03-31 06:10:40','Lesterbor','http://www.cpdesign.com/Static/atlas/1648707040402.jpg'),(76,'2022-03-31 06:10:40','Lesterbor','http://www.cpdesign.com/Static/atlas/1648707040274.jpg'),(77,'2022-03-31 06:10:41','Lesterbor','http://www.cpdesign.com/Static/atlas/1648707041330.jpg'),(78,'2022-03-31 06:10:41','Lesterbor','http://www.cpdesign.com/Static/atlas/1648707041531.jpg'),(79,'2022-03-31 06:10:41','Lesterbor','http://www.cpdesign.com/Static/atlas/1648707041464.jpg'),(80,'2022-04-05 04:14:45','Lesterbor','http://www.cpdesign.com/Static/atlas/1649132085552.jpg'),(83,'2022-04-11 05:43:16','Lesterbor','http://www.cpdesign.com/Static/atlas/1649655796244.jpg'),(84,'2022-04-11 05:43:16','Lesterbor','http://www.cpdesign.com/Static/atlas/1649655796230.jpg'),(85,'2022-04-11 05:43:16','Lesterbor','http://www.cpdesign.com/Static/atlas/1649655796257.jpg'),(86,'2022-04-11 05:43:16','Lesterbor','http://www.cpdesign.com/Static/atlas/1649655796891.jpg'),(87,'2022-04-11 05:43:17','Lesterbor','http://www.cpdesign.com/Static/atlas/1649655797815.jpg'),(88,'2022-04-11 05:43:17','Lesterbor','http://www.cpdesign.com/Static/atlas/1649655797773.jpg'),(89,'2022-04-11 05:43:17','Lesterbor','http://www.cpdesign.com/Static/atlas/1649655797605.jpg'),(90,'2022-04-11 05:43:17','Lesterbor','http://www.cpdesign.com/Static/atlas/1649655797933.jpg'),(91,'2022-04-11 05:43:18','Lesterbor','http://www.cpdesign.com/Static/atlas/1649655798680.jpg');
/*!40000 ALTER TABLE `atlas_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `community_data`
--

DROP TABLE IF EXISTS `community_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `community_data` (
  `post_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `post_type` varchar(100) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `post_authorid` int(11) DEFAULT NULL,
  `post_author` varchar(50) DEFAULT NULL,
  `post_static` varchar(10) DEFAULT 'close',
  `post_title` varchar(100) DEFAULT NULL,
  `post_image` varchar(100) DEFAULT NULL,
  `post_introduction` varchar(300) DEFAULT NULL,
  `post_content` longtext CHARACTER SET utf8mb4,
  `post_follow` int(11) DEFAULT NULL,
  PRIMARY KEY (`post_id`),
  UNIQUE KEY `post_id` (`post_id`),
  KEY `post_id_2` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community_data`
--

LOCK TABLES `community_data` WRITE;
/*!40000 ALTER TABLE `community_data` DISABLE KEYS */;
INSERT INTO `community_data` VALUES (45,'2022-04-08 04:32:38','community_theme',NULL,17,'即见Admin','open','疫情期间，社区工委举行“棋牌类活动”','http://www.cpdesign.com/Static/community/cover/1649392357.jpg','为了活跃学生宿舍的文化氛围，增进寝室成员间的友谊，丰富学生的日常生活，特举行“欢乐学生社区棋牌”趣味活动大赛。本次比赛主题为“棋心博疫 以牌融情”','<p style=\"margin: 6pt 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">一、活动项目</span><span style=\"font-family: 微软雅黑; letter-spacing: 0pt; font-size: 12pt;\"></span></p><p style=\"margin: 6pt 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;我们共设围棋、中国象棋、五子棋以及斗“地主”四个棋牌类比赛项目。</span><span style=\"font-family: 微软雅黑; letter-spacing: 0pt; font-size: 12pt;\"></span></p><p style=\"margin: 6pt 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">二、活动地点</span><span style=\"font-family: 微软雅黑; letter-spacing: 0pt; font-size: 12pt;\"></span></p><p style=\"margin: 6pt 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;以各楼座为单位，比赛地点设置在本楼座空寝室内（建议比赛地点设在辅导员值班室）。比赛寝室指定后，请于赛前报到社区工委办公室。其中，全校各楼座围棋比赛（包括决赛、初赛）地点设在大学生自律委员会（社区工委）活动室（地点为七舍一楼大厅左侧），赛前请各楼座值班辅导员把围棋参赛名单报到社区工委，围棋参赛人员名单祥见附件2</span><span style=\"font-family: 微软雅黑; letter-spacing: 0pt; font-size: 12pt;\"></span></p><p style=\"margin: 6pt 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">三、活动时间</span><span style=\"font-family: 微软雅黑; letter-spacing: 0pt; font-size: 12pt;\"></span></p><p style=\"margin: 6pt 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">比赛项目分初赛、决赛两个阶段。</span><span style=\"font-family: 微软雅黑; letter-spacing: 0pt; font-size: 12pt;\"></span></p><p style=\"margin: 6pt 0pt; text-indent: 21pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">初赛时间为</span><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">3月22日-3月30日</span><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">18:00-20:00</span><span style=\"font-family: 微软雅黑; letter-spacing: 0pt; font-size: 12pt;\"></span></p><p style=\"margin: 6pt 0pt; text-indent: 21pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">决赛时间为</span><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">3月31日-4月2日</span><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">18:00-20:00</span><span style=\"font-family: 微软雅黑; letter-spacing: 0pt; font-size: 12pt;\"></span></p><p style=\"margin: 6pt 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">四、参与方式</span><span style=\"font-family: 微软雅黑; letter-spacing: 0pt; font-size: 12pt;\"></span></p><p style=\"margin: 6pt 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;各楼座同学可通过楼座微信群进行报名，由各楼座工作人员进行统计汇总。根据各项比赛报名人数进行抽签分组进行比赛，比赛采取淘汰制，决出参加各楼座决赛人员名单。寝室每名成员皆可报名，项目不限（棋类或牌类）。此次活动可到到梦空间（ID:5164300）报名，获得活动学分。</span><span style=\"font-family: 微软雅黑; letter-spacing: 0pt; font-size: 12pt;\"></span></p><p style=\"margin: 6pt 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">五、注意事项</span><span style=\"font-family: 微软雅黑; letter-spacing: 0pt; font-size: 12pt;\"></span></p><p style=\"margin: 6pt 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;1.各楼座参赛学生名单由楼座值班辅导员通过楼座微信群分类进行统计。比赛及工作人员组织由各楼座值班辅导员负责实施。</span><span style=\"font-family: 微软雅黑; letter-spacing: 0pt; font-size: 12pt;\"></span></p><p style=\"margin: 6pt 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;2.参赛者必须按照抽签分组顺序进行比赛，按要求准时到场，否则视为弃权。活动所用棋具等应及时安排到位。</span><span style=\"font-family: 微软雅黑; letter-spacing: 0pt; font-size: 12pt;\"></span></p><p style=\"margin: 6pt 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;3.比赛过程中，裁判人员务必按比赛项目规则进行公平公正裁判。</span><span style=\"font-family: 微软雅黑; letter-spacing: 0pt; font-size: 12pt;\"></span></p><p style=\"margin: 6pt 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;4.线下所有参与人员及工作人员均必须佩戴口罩。</span><span style=\"font-family: 微软雅黑; letter-spacing: 0pt; font-size: 12pt;\"></span></p><p style=\"margin: 6pt 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;5.每局比赛寝室内除比赛人员和2名工作人员外，其它人员不得入内。</span><span style=\"font-family: 微软雅黑; letter-spacing: 0pt; font-size: 12pt;\"></span></p><p style=\"margin: 6pt 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;6.非参赛人员有意观看比赛者，可通过腾讯会议进行线上观看。腾讯会议申请由各楼座值班辅导员负责申请并下发到楼座微信群。</span><span style=\"font-family: 微软雅黑; letter-spacing: 0pt; font-size: 12pt;\"></span></p><p style=\"margin: 6pt 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;7.比赛用具（中国象棋、围棋、五子棋、扑克牌）由大学生自律委员会（社区工委）提供，比赛桌椅由值班辅导员负责安排。</span><span style=\"font-family: 微软雅黑; letter-spacing: 0pt; font-size: 12pt;\"></span></p><p style=\"margin: 6pt 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;8.各楼座通过初赛比赛结果筛选出决赛名单（每个项目的第一名），并及时报到大学生自律委员会（社区工委）进行汇总（决赛名单样表见附件3）。根据决赛名单由大学生自律委员会（社区工委）组织进行各楼座决赛。决赛地点设在大学生自律委员会（社区工委）活动室（地点为七舍一楼大厅左侧）。</span><span style=\"font-family: 微软雅黑; letter-spacing: 0pt; font-size: 12pt;\"></span></p>',0),(49,'2022-04-09 05:09:42','community_theme',NULL,17,'即见Admin','open','辽宁石油化工大学第一届开湖鱼品鉴文化节开幕','http://www.cpdesign.com/Static/community/cover/1649480798.jpg','辽宁石油化工大学第一届开湖鱼品鉴文化节开幕','<p style=\"margin: 6pt 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp; &nbsp;由于新冠肺炎疫情在秋冬季节容易反复，我们目前还进行着疫情防控常态化工作，为了适当放松学生的压力，调整大家身心状态，缓解情绪，学校决定，组织举行一场钓鱼比赛。</span><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"></span></p><p style=\"margin: 6pt 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><img src=\"http://www.cpdesign.com/Static/community/user/1649480951.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></span></p>',0),(50,'2022-04-09 05:18:43','community_comment',NULL,7,'Lesterbor','open',NULL,NULL,NULL,'<p style=\"margin: 6pt 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;赛后学生还能免费尝到钓到的鱼，各种鱼类美食，应接不暇，真的是太好啦</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"></span><span style=\"font-size: 14px; display: inline !important;\">?</span></p><p style=\"margin: 6pt 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><img src=\"http://www.cpdesign.com/Static/community/user/1649481402.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></span></p>',49),(51,'2022-04-09 05:18:26','community_comment',NULL,17,'即见Admin','close',NULL,NULL,NULL,'<p style=\"margin: 6pt 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;感觉特别可以，活跃了校园气氛、增加了学生的交流机会</span><span style=\"font-family: 宋体; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"></span></p><p style=\"margin: 6pt 0pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; color: rgb(51, 51, 51); letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><img src=\"http://www.cpdesign.com/Static/community/user/1649481503.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></span></p>',49),(54,'2022-04-11 03:48:57','community_theme',NULL,17,'即见Admin','open','新生入学注意事项','http://www.cpdesign.com/Static/community/cover/1649648922.jpg','尽快适应校园环境:进入大学，就是一个新的环境，接触新的人，你的所有过去对于他们来说是一张白纸，这是你最好的重新塑造自己形象的时候，改掉以前的缺点，以全新的形象出现','<p style=\"margin-top: 6pt; margin-right: 0pt; margin-bottom: 6pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;自己准备行李，不再让爸爸妈妈帮自己打包行李，提前规划好自己应该带什么，自己准备所有的行李，并整齐的打包行李，知道自己的物品在哪里摆放，做一个整洁细致的人。</span><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"></span></p><p style=\"margin-top: 6pt; margin-right: 0pt; margin-bottom: 6pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;可通过大学官方网站阅读学校介绍，熟悉学校情况，了 解学校所在地域、校史、组织机构等信息，自己将就读的学院、系和专业的基本情况以及就业情况等。</span><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"></span></p><p style=\"margin-top: 6pt; margin-right: 0pt; margin-bottom: 6pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;查看新学期课程，提前为大学专业课的学习做些准备。还可以关注大学的官方微信、微博等，获取更多的入学攻略。</span><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"></span></p><p style=\"margin-top: 6pt; margin-right: 0pt; margin-bottom: 6pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;可以通过学长学姐来提前了解学校内部的设施和构造，了 解食堂、教学楼、宿舍楼、操场、超市、菜鸟驿站等主要设施的方位。</span><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"></span></p><p style=\"margin-top: 6pt; margin-right: 0pt; margin-bottom: 6pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;从第一天开始，就自己来完成报到所需的各项填表、注册和缴费，毕竟之后这些事情都要由我们自己来完成。</span><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"></span></p><p style=\"margin-top: 6pt; margin-right: 0pt; margin-bottom: 6pt; text-indent: 0pt; padding: 0pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;&nbsp;&nbsp;&nbsp;忘掉自己的高考分数，在新的学校里，优秀需要我们重新来证明。</span><span style=\"font-family: 宋体; letter-spacing: 0pt; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"></span></p>',0);
/*!40000 ALTER TABLE `community_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countdown_data`
--

DROP TABLE IF EXISTS `countdown_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countdown_data` (
  `post_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_time` datetime DEFAULT NULL,
  `post_type` varchar(100) DEFAULT NULL,
  `post_title` varchar(100) DEFAULT NULL,
  `post_content` longtext CHARACTER SET utf8mb4,
  PRIMARY KEY (`post_id`),
  UNIQUE KEY `post_id` (`post_id`),
  KEY `post_id_2` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countdown_data`
--

LOCK TABLES `countdown_data` WRITE;
/*!40000 ALTER TABLE `countdown_data` DISABLE KEYS */;
INSERT INTO `countdown_data` VALUES (2,'2022-03-12 00:00:00','countdown','2022年中小学教师资格考试',NULL),(3,'2022-06-11 00:00:00','countdown','2022年英语四六级考试(上半年)',NULL),(4,'2022-05-28 00:00:00','countdown','2022年全国计算机二级考试(第二次)',NULL),(6,NULL,'saying','B.V','人天天都学到一点东西,而往往所学到的是发现昨日学到的是错的。'),(7,NULL,'saying','阿卜·日·法拉兹','学问是异常珍贵的东西，从任何源泉吸收都不可耻。'),(8,NULL,'saying','孟郊','春风得意马蹄疾，一日看尽长安花。'),(12,NULL,'defaultbackground','http://www.cpdesign.com/Static/countdown/countdown_background.jpg',NULL),(16,'2022-06-09 00:00:00','countdown','2022计算机设计大赛','加油！！！<br/>加加油！！！！'),(19,NULL,'saying','佚 名','好问的人，只做了五分种的愚人；耻于发问的人，终身为愚人。'),(23,NULL,'background','http://www.cpdesign.com/Static/countdown/1649133857689.jpg',NULL),(24,NULL,'background','http://www.cpdesign.com/Static/countdown/1649133858530.jpg',NULL),(25,NULL,'background','http://www.cpdesign.com/Static/countdown/1649133858537.jpg',NULL),(26,NULL,'background','http://www.cpdesign.com/Static/countdown/1649133858449.jpg',NULL),(28,NULL,'background','http://www.cpdesign.com/Static/countdown/1649133859118.jpg',NULL),(29,'2022-04-08 00:00:00','countdown','2022年高级会计师考试','	如因疫情原因导致不能正常开考，以教育部和各省教育考试院通知为准。'),(31,NULL,'saying','李白','长风破浪会有时，直挂云帆济沧海。'),(32,'2022-12-25 00:00:00','countdown','2022年全国硕士研究生招生考试','加油！<br/>加油！'),(33,NULL,'saying','李白','长风破浪会有时，直挂云帆济沧海。');
/*!40000 ALTER TABLE `countdown_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_config`
--

DROP TABLE IF EXISTS `index_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_config` (
  `post_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `post_type` varchar(100) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `post_content` longtext,
  `title` longtext,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=404 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_config`
--

LOCK TABLES `index_config` WRITE;
/*!40000 ALTER TABLE `index_config` DISABLE KEYS */;
INSERT INTO `index_config` VALUES (1,'2022-04-10 14:20:31','introduce',NULL,NULL,'<p>&nbsp; &nbsp; 位于<font color=\"#4d80bf\">辽宁省抚顺市</font>，是以石油石化为特色的多科性省属重点大学，辽宁省与<font color=\"#4d80bf\">中石油</font>、<font color=\"#4d80bf\">中石化</font>、<font color=\"#4d80bf\">中海油</font>共建高校，为教育部“卓越工程师教育培养计划”高校、应急管理学院建设首批试点学校、中国政府奖学金来华留学生接收院校、辽宁省一流学科（A类）建设高校，是教育部确定的少数民族高层次人才基础培训基地、少数民族本科预科生培养基地、辽宁省石油化工紧缺本科人才培养基地。<br/>    &nbsp;&nbsp;&nbsp;&nbsp;学校创办于1950年，是<font color=\"#4d80bf\">中华人民共和国第一所石油工业学校</font>。1953年迁至抚顺办学，时名抚顺石油学校。1958年升格为抚顺石油学院。1970年更名抚顺化工学院。1980年成立抚顺石油学院。2000年11月，原抚顺煤炭工业学校并入。2002年2月更名为辽宁石油化工大学。<br/>    &nbsp;&nbsp;&nbsp;&nbsp;截至2020年12月，学校占地面积1890亩，总建筑面积53.2万平方米，馆藏纸质文献148.14万余册；设有20个学院，有14个一级学科硕士点，10个硕士专业学位授权类别，56个本科专业；有教师1147人，全日制在校学生18833人，其中研究生1680人，本科生16135人、少数民族预科生235人、留学生783人。</p><p>新中国第一所石油工业学校</p><p>&nbsp; &nbsp;&nbsp;<br/></p>',NULL),(5,'2022-03-19 06:54:10','slide',NULL,NULL,'http://www.cpdesign.com/Static/index/slide/1.jpg',NULL),(6,'2022-03-19 06:54:10','slide',NULL,NULL,'http://www.cpdesign.com/Static/index/slide/2.jpg',NULL),(7,'2022-03-19 06:54:10','slide',NULL,NULL,'http://www.cpdesign.com/Static/index/slide/3.jpg',NULL),(8,'2022-03-19 06:54:10','slide',NULL,NULL,'http://www.cpdesign.com/Static/index/slide/4.jpg',NULL),(9,'2022-03-19 06:54:10','slide',NULL,NULL,'http://www.cpdesign.com/Static/index/slide/5.jpg',NULL),(379,'2022-04-10 14:20:49','timeline',0,'1950年','大连石油工业学校','由燃料工业部石油管理总局委托大连公司办石油工业学校，校名中央燃料工业部大连石油工业学校。11月1日，中央燃料工业部大连石油工业学校举行开学典礼。'),(380,'2022-04-10 14:20:49','timeline',1,'1953年','抚顺石油学校','根据国家第一个五年计划确定的发展石油工业的方针和任务，中央燃料工业部将学校北迁抚顺办学，更名为“抚顺石油学校”。'),(381,'2022-04-10 14:20:49','timeline',2,'1958年','抚顺石油学校','辽宁省委决定在抚顺石油学校基础上创办抚顺石油学院，开办本科教育，仍隶属石油工业部领导。'),(382,'2022-04-10 14:20:49','timeline',3,'1962年','抚顺石油学校','抚顺石油学院由本科学院调整回中专学校。'),(383,'2022-04-10 14:20:49','timeline',4,'1971年','抚顺化工学院','沈阳化工学院搬迁到抚顺石油学校校址办学，与抚顺石油学校合并后更名抚顺化工学院，抚顺石油学校撤销。'),(384,'2022-04-10 14:20:49','timeline',5,'1978年','抚顺化工学院','辽宁省革委会决定撤销抚顺化工学院建制，原沈阳化工学院部分迁回沈阳办学。'),(385,'2022-04-10 14:20:49','timeline',6,'1980年','抚顺石油学院','沈阳化工学院抚顺石油分院、辽宁石油工业学校合并组建抚顺石油学院。'),(386,'2022-04-10 14:20:49','timeline',7,'1984年','抚顺石油学院','抚顺石油学院划归中国石油化工总公司领导。'),(387,'2022-04-10 14:20:49','timeline',8,'2000年','抚顺石油学院','抚顺石油学院由中央部委划转为辽宁省人民政府领导，实行“中央与地方共建，以地方为主”的管理体制。'),(388,'2022-04-10 14:20:49','timeline',9,'2002年','辽宁石油化工大学','教育部同意抚顺石油学院更名为辽宁石油化工大学。'),(389,'2022-04-10 14:20:49','timeline',10,'现在','辽宁石油化工大学','艰苦奋斗'),(390,'2022-04-10 14:20:49','timeline',11,'将来','将来','为祖国奉献燃烧的爱'),(391,'2022-04-10 14:21:24','major',1,NULL,'0','辽宁石油化工大学'),(392,'2022-04-10 14:21:24','major',1001,NULL,'1','石油化工学院'),(393,'2022-04-10 14:21:24','major',10001,NULL,'1001','化工安全工程专业'),(394,'2022-04-10 14:21:24','major',10002,NULL,'1001','环境科学专业'),(395,'2022-04-10 14:21:24','major',10003,NULL,'1001','安全工程专业（辽宁省一流本科专业建设点）'),(396,'2022-04-10 14:21:24','major',10004,NULL,'1001','环境工程专业（辽宁省一流本科专业建设点）'),(397,'2022-04-10 14:21:24','major',1002,NULL,'1','信息与控制工程学院'),(398,'2022-04-10 14:21:24','major',10001,NULL,'1002','自动化专业（教育部卓越工程师教育培养计划）'),(399,'2022-04-10 14:21:24','major',10002,NULL,'1002','自动化专业（国家级一流本科专业建设点）'),(400,'2022-04-10 14:21:24','major',10003,NULL,'1002','测控技术与仪器'),(401,'2022-04-10 14:21:24','major',1003,NULL,'1','土木工程学院'),(402,'2022-04-10 14:21:24','major',10001,NULL,'1003','土木工程专业'),(403,'2022-04-10 14:21:24','major',10002,NULL,'1003','交通运输专业');
/*!40000 ALTER TABLE `index_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map_data`
--

DROP TABLE IF EXISTS `map_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map_data` (
  `post_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `post_type` varchar(100) DEFAULT NULL,
  `post_posx` varchar(50) DEFAULT NULL,
  `post_posy` varchar(50) DEFAULT NULL,
  `post_title` varchar(100) DEFAULT NULL,
  `post_content` longtext CHARACTER SET utf8mb4,
  PRIMARY KEY (`post_id`),
  UNIQUE KEY `post_id` (`post_id`),
  KEY `post_id_2` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_data`
--

LOCK TABLES `map_data` WRITE;
/*!40000 ALTER TABLE `map_data` DISABLE KEYS */;
INSERT INTO `map_data` VALUES (1,'2022-04-02 05:14:06','introduce','123.79082','41.854909','校警察局','null'),(2,'2022-04-02 05:13:59','introduce','123.790842','41.854613','网络中心','null'),(3,'2022-04-02 05:13:49','introduce','123.790721','41.854001','第一教学楼','null'),(4,'2022-04-02 13:08:49','introduce','123.790594','41.859252','图书馆','<img style=\"width:100%\" src=\"http://www.cpdesign.com/Static/map/mapindeu/1231.jpg\"/>'),(5,'2022-04-03 02:40:31','introduce','123.789767','41.854667','行政楼','<p>行政楼一楼为·······</p><p>行政楼二楼为······<br/><img src=\"http://www.cpdesign.com/Static/map/mapindeu/1648953509.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>'),(6,'2022-04-02 06:58:14','introduce','123.791484','41.858306','第五教学楼','null'),(7,'2022-04-03 04:01:04','tips',NULL,NULL,'沈阳北站-学校','<p>a啊实打实</p><p><span style=\"display: inline !important;\">暗示法傻傻的方法发送的覅华硕</span><br/></p><p><span style=\"display: inline !important;\"><span style=\"display: inline !important;\">暗示法傻傻的方法发送的覅华硕</span><br/></span></p>'),(13,'2022-04-03 03:02:00','introduce','123.788523','41.857905','大学生活动中心','<p>内有四史馆</p><p>一些历史照片</p><p>各种实习间等大型实习设备</p><p><img src=\"http://www.cpdesign.com/Static/map/mapindeu/1648954908.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>'),(14,'2022-04-03 03:11:09','introduce','123.79014','41.858202','第四教学楼','<p>第四教学楼分为AB座</p><p>A座只有三楼有大教室 B座有五楼无大教室</p><p>第四教学楼楼座</p><p><img src=\"http://www.cpdesign.com/Static/map/mapindeu/1648955380.jpg\" style=\"max-width:100%;\" contenteditable=\"false\" width=\"100%\"/><br/><img src=\"http://www.cpdesign.com/Static/map/mapindeu/1648955390.jpg\" style=\"max-width:100%;\" contenteditable=\"false\" width=\"100%\"/></p>'),(16,'2022-04-03 04:14:27','tips',NULL,NULL,'测试Tips完全可编辑的','<p>Tips提交实例</p><p>写一些小提示到地图页展示</p><p>比如：</p><p>&nbsp; &nbsp; 如何从沈阳北站坐车到学校<br/></p><p>&nbsp; &nbsp; 如何从桃仙机场坐车到学校<br/></p><p><img src=\"http://www.cpdesign.com/Static/map/mapindeu/1648959259.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>'),(17,'2022-04-09 06:44:25','tips',NULL,NULL,'桃仙机场 > 学校','<p>出航站楼之后<span style=\"display: inline !important;\">横穿过马路，正对面会有一个汽车站，如果学校有接送就不要进售票处，直接去停车场，找学校的接送车，若学校没有接送则进售票处买票，到达站为辽宁石油化工大学站，之后在等待厅等待即可，车准备出发之后则会开始安检上车。</span></p>'),(18,'2022-04-11 06:15:12','introduce','123.788987','41.854114','第三教学楼','<p><img src=\"http://www.cpdesign.com/Static/map/mapindeu/1649657706.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>'),(19,'2022-04-11 06:15:37','tips',NULL,NULL,'学校-桃仙机场','<p>关注公众号“蓝翼航空”提前在微信小程序上买从石化大学到机场的票，届时可座小三轮车到达乘车点（目的地：蓝翼航空候车处）即可</p>');
/*!40000 ALTER TABLE `map_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receive_data`
--

DROP TABLE IF EXISTS `receive_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receive_data` (
  `post_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_time` varchar(50) DEFAULT NULL,
  `post_type` varchar(100) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `post_authorid` int(11) DEFAULT NULL,
  `post_author` varchar(50) DEFAULT NULL,
  `post_qq` varchar(50) DEFAULT NULL,
  `post_static` varchar(10) DEFAULT 'close',
  `post_title` varchar(100) DEFAULT NULL,
  `post_image` varchar(100) DEFAULT NULL,
  `post_introduction` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`post_id`),
  UNIQUE KEY `post_id` (`post_id`),
  KEY `post_id_2` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receive_data`
--

LOCK TABLES `receive_data` WRITE;
/*!40000 ALTER TABLE `receive_data` DISABLE KEYS */;
INSERT INTO `receive_data` VALUES (1,'2022-03-27 02:35:00','collar',NULL,7,'Lesterbor','3097178439','open','捡到一部手机','http://www.cpdesign.com/Static/receive/user/1648300685.jpg','第3小节课于第四教学楼B座405抽屉中拾得'),(2,'2022-03-27 12:35:54','found',NULL,7,'Lesterbor','1235466','open','丢了一个手环','null','与操场跑步时意外掉落，手环为黑色，上面的字母是TCN，希望捡到的同学可以联系我'),(3,'2022-03-27 13:25:16','found',NULL,7,'Lesterbor','46516515','open','丢了一件衣服','null','本人不慎，于xxxx年x月x日上午8时左右在xxx公园遗失棕色公文包一只，内有身份证、驾驶证、工作证等证件以及带有瑞士小军刀的钥匙一串。拾到者请拨手机xxxxxxxx与本人联系。面谢。'),(4,'2022-03-27 13:29:44','found',NULL,7,'Lesterbor','123456','open','一个钱包','http://www.cpdesign.com/Static/receive/user/1648358875.jpg','本立3月26晚上在惠福路吃飯.隨後沿大德路跟朋友走回家.然後從朋友家走回惠福中路一直沿人民路.西門口口廣場到西華路一路回家.到了彩虹橋發現錢包丟失了.裡面有證據跟銀行卡.麻煩撿到聯繫.'),(5,'2022-03-27 13:29:42','found',NULL,7,'Lesterbor','56465416165','open','丢了毕业证书','null','毕业证和学位证放在一起的，有见到希望提供线索，证件非常重要，网络部门'),(6,'2022-03-27 13:29:40','found',NULL,7,'Lesterbor','309717489496','open','丢失黑色小包一个','null','本人于2022.3.21凌晨3：10左右，从川心小区打车到火车站，在火车站附近丢失黑色小包一个，内有身份证银行卡外加驾驶证，如有拾者速与我联系，必有重谢！！！'),(12,'2022-03-25 23:13:00','found',NULL,7,'Lesterbor','132456789','open','灰色双肩背包（重酬）','http://www.cpdesign.com/Static/receive/user/1648374770.jpg','25号23点左右在的士上遗失一个灰色华为双肩背包在车上，里面还有一台灰色华为笔记本+两个文件袋（非常重要）里面有购房合同还有发票'),(13,'2022-04-06 09:45:51','found',NULL,16,'Admin','312548520','open','丢失一部手机','null','本人不慎与周三在操场跑步时丢失一部手机，锁屏壁纸为柯南照片手机壳为黑色'),(15,'2022-04-07 18:59:52','found',NULL,17,'即见Admin','309717489496','close','丢了一件衣服','null','售达方工时费微分神鼎飞丹砂佛代数法1的互感ID司法部个梵蒂冈费高回报的分公司本地费饿哦日剧他个人画个鄂破人格和光谱爱好吧诶欧冠好吧覅㝉'),(19,'2022-04-11 13:18:29','found',NULL,17,'即见Admin','309717489496','open','丢失一部剃须刀','http://www.cpdesign.com/Static/receive/user/1649654322.jpg','本人与四舍洗漱池洗漱时不慎将剃须刀放在台子上，忘记拿走，望捡到的同学可以跟我联系，谢谢');
/*!40000 ALTER TABLE `receive_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_data`
--

DROP TABLE IF EXISTS `user_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_data` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_identity` varchar(10) NOT NULL DEFAULT '0',
  `user_name` varchar(50) DEFAULT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_pass` varchar(50) DEFAULT NULL,
  `user_ico` varchar(100) DEFAULT 'http://www.cpdesign.com/Static/user/default_head.jpg',
  `personality` longtext,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_data`
--

LOCK TABLES `user_data` WRITE;
/*!40000 ALTER TABLE `user_data` DISABLE KEYS */;
INSERT INTO `user_data` VALUES (7,'0','Lesterbor','2386229885@qq.com','e10adc3949ba59abbe56e057f20f883e','http://www.cpdesign.com/Static/user/userico/Lesterbor.jpg',NULL),(12,'0','戴戴','547110971@qq.com','e10adc3949ba59abbe56e057f20f883e','http://www.cpdesign.com/Static/user/userico/default_head.j',NULL),(17,'1','即见Admin','Lesterbor@163.com','10ef6fbb0d1a8a5a2c9743208662306d','http://www.cpdesign.com/Static/user/userico/1649659196.jpg','前程似锦'),(19,'0','Divi','3520256288@qq.com','e10adc3949ba59abbe56e057f20f883e','http://www.cpdesign.com/Static/user/default_head.jpg',NULL);
/*!40000 ALTER TABLE `user_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'meetnow_data'
--

--
-- Dumping routines for database 'meetnow_data'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-14 18:52:05
