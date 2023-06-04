-- MariaDB dump 10.19  Distrib 10.11.3-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: nutrifit
-- ------------------------------------------------------
-- Server version	10.11.3-MariaDB-1:10.11.3+maria~ubu1804

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_actionscheduler_actions`
--

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) NOT NULL,
  `status` varchar(20) NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) DEFAULT NULL,
  `schedule` longtext DEFAULT NULL,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

LOCK TABLES `wp_actionscheduler_actions` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_actions` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_actions` VALUES
(144,'action_scheduler/migration_hook','complete','2023-06-01 09:49:13','2023-06-01 09:49:13','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1685612953;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1685612953;}',1,1,'2023-06-01 09:52:08','2023-06-01 09:52:08',0,NULL),
(145,'wp_mail_smtp_summary_report_email','pending','2023-06-05 14:00:00','2023-06-05 14:00:00','[null]','O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1685973600;s:18:\"\0*\0first_timestamp\";i:1685973600;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1685973600;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
(146,'wp_mail_smtp_admin_notifications_update','complete','2023-06-01 10:13:46','2023-06-01 10:13:46','[1]','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2023-06-01 10:13:46','2023-06-01 10:13:46',0,NULL),
(147,'action_scheduler/migration_hook','complete','2023-06-01 21:49:53','2023-06-01 21:49:53','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1685656193;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1685656193;}',1,1,'2023-06-01 21:50:02','2023-06-01 21:50:02',0,NULL),
(148,'wp_mail_smtp_admin_notifications_update','complete','2023-06-02 14:32:28','2023-06-02 14:32:28','[2]','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2023-06-02 14:32:53','2023-06-02 14:32:53',0,NULL),
(149,'wp_mail_smtp_admin_notifications_update','complete','2023-06-03 23:30:39','2023-06-03 23:30:39','[3]','O:28:\"ActionScheduler_NullSchedule\":0:{}',2,1,'2023-06-03 23:30:40','2023-06-03 23:30:40',0,NULL),
(150,'action_scheduler/migration_hook','complete','2023-06-04 12:14:36','2023-06-04 12:14:36','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1685880876;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1685880876;}',1,1,'2023-06-04 12:15:13','2023-06-04 12:15:13',0,NULL);
/*!40000 ALTER TABLE `wp_actionscheduler_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_claims`
--

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=652 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_claims`
--

LOCK TABLES `wp_actionscheduler_claims` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_groups`
--

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

LOCK TABLES `wp_actionscheduler_groups` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_groups` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_groups` VALUES
(1,'action-scheduler-migration'),
(2,'wp_mail_smtp');
/*!40000 ALTER TABLE `wp_actionscheduler_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_logs`
--

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) unsigned NOT NULL,
  `message` text NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

LOCK TABLES `wp_actionscheduler_logs` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_logs` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_logs` VALUES
(1,144,'action created','2023-06-01 09:48:13','2023-06-01 09:48:13'),
(2,144,'action started via WP Cron','2023-06-01 09:52:08','2023-06-01 09:52:08'),
(3,144,'action complete via WP Cron','2023-06-01 09:52:08','2023-06-01 09:52:08'),
(4,145,'action created','2023-06-01 09:52:09','2023-06-01 09:52:09'),
(5,146,'action created','2023-06-01 10:13:46','2023-06-01 10:13:46'),
(6,146,'action started via WP Cron','2023-06-01 10:13:46','2023-06-01 10:13:46'),
(7,146,'action complete via WP Cron','2023-06-01 10:13:46','2023-06-01 10:13:46'),
(8,147,'action created','2023-06-01 21:48:53','2023-06-01 21:48:53'),
(9,147,'action started via Async Request','2023-06-01 21:50:02','2023-06-01 21:50:02'),
(10,147,'action complete via Async Request','2023-06-01 21:50:02','2023-06-01 21:50:02'),
(11,148,'action created','2023-06-02 14:32:28','2023-06-02 14:32:28'),
(12,148,'action started via Async Request','2023-06-02 14:32:52','2023-06-02 14:32:52'),
(13,148,'action complete via Async Request','2023-06-02 14:32:53','2023-06-02 14:32:53'),
(14,149,'action created','2023-06-03 23:30:39','2023-06-03 23:30:39'),
(15,149,'action started via Async Request','2023-06-03 23:30:40','2023-06-03 23:30:40'),
(16,149,'action complete via Async Request','2023-06-03 23:30:40','2023-06-03 23:30:40'),
(17,150,'action created','2023-06-04 12:13:36','2023-06-04 12:13:36'),
(18,150,'action started via WP Cron','2023-06-04 12:15:13','2023-06-04 12:15:13'),
(19,150,'action complete via WP Cron','2023-06-04 12:15:13','2023-06-04 12:15:13');
/*!40000 ALTER TABLE `wp_actionscheduler_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bm_guests`
--

DROP TABLE IF EXISTS `wp_bm_guests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_bm_guests` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `secret` varchar(30) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `ip` varchar(40) NOT NULL,
  `meta` longtext NOT NULL,
  `last_active` datetime DEFAULT NULL,
  `last_changed` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bm_guests`
--

LOCK TABLES `wp_bm_guests` WRITE;
/*!40000 ALTER TABLE `wp_bm_guests` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_bm_guests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bm_mentions`
--

DROP TABLE IF EXISTS `wp_bm_mentions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_bm_mentions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thread_id` bigint(20) NOT NULL,
  `message_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type` enum('mention','reply','reaction') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bm_mentions`
--

LOCK TABLES `wp_bm_mentions` WRITE;
/*!40000 ALTER TABLE `wp_bm_mentions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_bm_mentions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bm_message_messages`
--

DROP TABLE IF EXISTS `wp_bm_message_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_bm_message_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thread_id` bigint(20) NOT NULL,
  `sender_id` bigint(20) NOT NULL,
  `message` longtext NOT NULL,
  `date_sent` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_id` (`sender_id`),
  KEY `thread_id` (`thread_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bm_message_messages`
--

LOCK TABLES `wp_bm_message_messages` WRITE;
/*!40000 ALTER TABLE `wp_bm_message_messages` DISABLE KEYS */;
INSERT INTO `wp_bm_message_messages` VALUES
(1,1,3,'hola que ase uwuwuw☺️','2023-05-30 19:56:36'),
(2,1,4,'hola','2023-05-30 21:32:52'),
(3,1,4,'que tal','2023-05-30 21:33:37'),
(4,2,1,'lalalala','2023-05-30 21:40:13'),
(6,1,4,'estoy volviendo a probar','2023-05-30 21:47:57'),
(7,1,4,'si te sale las notis de no leido','2023-05-30 21:48:03'),
(8,1,4,'twtqtqtqtqtq','2023-05-30 21:57:23'),
(9,4,4,'Hola','2023-05-31 17:01:05'),
(10,1,3,'Send nudes','2023-05-31 21:59:43'),
(11,5,3,'Hola','2023-06-01 15:35:04'),
(12,5,3,'te ha gustado la receta de hoy?','2023-06-01 15:35:17'),
(13,5,5,'Sii genial','2023-06-01 15:35:30'),
(14,6,28,'Hola Eladio!! Es un placer tenerte como paciente','2023-06-04 19:19:56'),
(15,6,28,'Ya te he asignado la receta para mañana','2023-06-04 19:20:08');
/*!40000 ALTER TABLE `wp_bm_message_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bm_message_meta`
--

DROP TABLE IF EXISTS `wp_bm_message_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_bm_message_meta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bm_message_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `bm_message_id` (`bm_message_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bm_message_meta`
--

LOCK TABLES `wp_bm_message_meta` WRITE;
/*!40000 ALTER TABLE `wp_bm_message_meta` DISABLE KEYS */;
INSERT INTO `wp_bm_message_meta` VALUES
(1,1,'bm_last_update','16854765966410'),
(2,1,'bm_created_time','16854765966410'),
(3,2,'bm_last_update','16854823726015'),
(4,2,'bm_created_time','16854823726015'),
(5,3,'bm_last_update','16854824175248'),
(6,3,'bm_created_time','16854824175248'),
(7,4,'bm_last_update','16854828134016'),
(8,4,'bm_created_time','16854828134016'),
(11,5,'bm_last_update','16854829539813'),
(12,6,'bm_last_update','16854832770842'),
(13,6,'bm_created_time','16854832770842'),
(14,7,'bm_last_update','16854832832609'),
(15,7,'bm_created_time','16854832832609'),
(16,8,'bm_last_update','16854838439800'),
(17,8,'bm_created_time','16854838439800'),
(18,9,'bm_last_update','16855524654352'),
(19,9,'bm_created_time','16855524654352'),
(20,10,'bm_last_update','16855703838607'),
(21,10,'bm_created_time','16855703838607'),
(22,11,'bm_last_update','16856337041167'),
(23,11,'bm_created_time','16856337041167'),
(24,12,'bm_last_update','16856337173735'),
(25,12,'bm_created_time','16856337173735'),
(26,13,'bm_last_update','16856337301962'),
(27,13,'bm_created_time','16856337301962'),
(28,14,'bm_last_update','16859063963753'),
(29,14,'bm_created_time','16859063963753'),
(30,15,'bm_last_update','16859064087644'),
(31,15,'bm_created_time','16859064087644');
/*!40000 ALTER TABLE `wp_bm_message_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bm_message_recipients`
--

DROP TABLE IF EXISTS `wp_bm_message_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_bm_message_recipients` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `thread_id` bigint(20) NOT NULL,
  `unread_count` int(10) NOT NULL DEFAULT 0,
  `last_read` datetime DEFAULT NULL,
  `last_delivered` datetime DEFAULT NULL,
  `is_muted` tinyint(1) NOT NULL DEFAULT 0,
  `is_pinned` tinyint(1) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `last_update` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_thread` (`user_id`,`thread_id`),
  KEY `user_id` (`user_id`),
  KEY `thread_id` (`thread_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `unread_count` (`unread_count`),
  KEY `is_pinned` (`is_pinned`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bm_message_recipients`
--

LOCK TABLES `wp_bm_message_recipients` WRITE;
/*!40000 ALTER TABLE `wp_bm_message_recipients` DISABLE KEYS */;
INSERT INTO `wp_bm_message_recipients` VALUES
(1,4,1,0,NULL,NULL,0,0,0,16855739318193),
(2,3,1,0,NULL,NULL,0,0,0,16855703838641),
(3,6,2,1,NULL,NULL,0,0,0,16854829014603),
(4,1,2,0,NULL,NULL,0,0,1,16854829014603),
(7,1,4,0,NULL,NULL,0,0,0,16855682924309),
(8,4,4,0,NULL,NULL,0,0,0,16855524654400),
(9,5,5,0,NULL,NULL,0,0,0,16856337302101),
(10,3,5,0,NULL,NULL,0,0,0,16856337346839),
(11,21,6,0,NULL,NULL,0,0,0,16859064318791),
(12,28,6,0,NULL,NULL,0,0,0,16859064087740);
/*!40000 ALTER TABLE `wp_bm_message_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bm_moderation`
--

DROP TABLE IF EXISTS `wp_bm_moderation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_bm_moderation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `thread_id` bigint(20) NOT NULL,
  `type` enum('ban','mute') NOT NULL,
  `expiration` datetime DEFAULT NULL,
  `admin_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_thread_type` (`user_id`,`thread_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bm_moderation`
--

LOCK TABLES `wp_bm_moderation` WRITE;
/*!40000 ALTER TABLE `wp_bm_moderation` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_bm_moderation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bm_thread_meta`
--

DROP TABLE IF EXISTS `wp_bm_thread_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_bm_thread_meta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bm_thread_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `thread_id` (`bm_thread_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bm_thread_meta`
--

LOCK TABLES `wp_bm_thread_meta` WRITE;
/*!40000 ALTER TABLE `wp_bm_thread_meta` DISABLE KEYS */;
INSERT INTO `wp_bm_thread_meta` VALUES
(1,1,'thread_starter_user_id','3'),
(2,1,'thread_start_time','1685476596'),
(3,2,'thread_starter_user_id','1'),
(4,2,'thread_start_time','1685482813'),
(7,3,'bm_last_update','16854829540124'),
(8,4,'thread_starter_user_id','4'),
(9,4,'thread_start_time','1685552465'),
(10,5,'thread_starter_user_id','3'),
(11,5,'thread_start_time','1685633704'),
(12,6,'thread_starter_user_id','28'),
(13,6,'thread_start_time','1685906396');
/*!40000 ALTER TABLE `wp_bm_thread_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bm_threads`
--

DROP TABLE IF EXISTS `wp_bm_threads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_bm_threads` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL,
  `type` enum('thread','group','chat-room') NOT NULL DEFAULT 'thread',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bm_threads`
--

LOCK TABLES `wp_bm_threads` WRITE;
/*!40000 ALTER TABLE `wp_bm_threads` DISABLE KEYS */;
INSERT INTO `wp_bm_threads` VALUES
(1,'prueba','thread'),
(2,'','thread'),
(4,'Hola','thread'),
(5,'Prueba','thread'),
(6,'BIenvenido','thread');
/*!40000 ALTER TABLE `wp_bm_threads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES
(1,1,'Un comentarista de WordPress','wapuu@wordpress.example','https://es.wordpress.org/','','2023-04-13 11:25:32','2023-04-13 11:25:32','Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita en el escritorio la pantalla de comentarios.\nLos avatares de los comentaristas provienen de <a href=\"https://es.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_menu`
--

DROP TABLE IF EXISTS `wp_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `wp_user_id` int(11) NOT NULL,
  `day` varchar(16) NOT NULL,
  `week` int(11) NOT NULL,
  `status` varchar(8) NOT NULL,
  `info` varchar(32) NOT NULL,
  `plato_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `plato_id` (`plato_id`),
  KEY `wp_user_id` (`wp_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_menu`
--

LOCK TABLES `wp_menu` WRITE;
/*!40000 ALTER TABLE `wp_menu` DISABLE KEYS */;
INSERT INTO `wp_menu` VALUES
(1,34,'lunes',23,'','',68),
(2,7,'Tuesday',22,'','',66),
(3,7,'Tuesday',22,'','',67),
(4,7,'Tuesday',22,'','',101),
(5,7,'Tuesday',22,'','',102),
(6,6,'Wednesday',22,'','',113),
(7,6,'Wednesday',22,'','',127),
(8,6,'Wednesday',22,'','',119),
(9,6,'Wednesday',22,'','',111),
(10,7,'Thursday',22,'','',117),
(11,7,'Thursday',22,'','',109),
(12,7,'Thursday',22,'','',137),
(13,7,'Thursday',22,'','',111),
(22,5,'Friday',22,'','',129),
(23,5,'Friday',22,'','',109),
(24,5,'Friday',22,'','',119),
(25,5,'Friday',22,'','',133),
(26,4,'Saturday',22,'','',129),
(27,4,'Saturday',22,'','',109),
(28,4,'Saturday',22,'','',119),
(29,4,'Saturday',22,'','',115),
(54,4,'Thursday',22,'','',113),
(55,4,'Thursday',22,'','',123),
(56,4,'Thursday',22,'','',135),
(57,4,'Thursday',22,'','',131),
(58,5,'Thursday',22,'','',117),
(59,5,'Thursday',22,'','',109),
(60,5,'Thursday',22,'','',135),
(61,5,'Thursday',22,'','',115),
(62,21,'Monday',23,'','',129),
(63,21,'Monday',23,'','',127),
(64,21,'Monday',23,'','',137),
(65,21,'Monday',23,'','',131);
/*!40000 ALTER TABLE `wp_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=2230 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES
(1,'siteurl','https://stoic-khorana.5-135-116-99.plesk.page','yes'),
(2,'home','https://stoic-khorana.5-135-116-99.plesk.page','yes'),
(3,'blogname','Nutrifit+','yes'),
(4,'blogdescription','Tu app de gestión para nutricionistas','yes'),
(5,'users_can_register','0','yes'),
(6,'admin_email','eva.s284913@cesurformacion.com','yes'),
(7,'start_of_week','1','yes'),
(8,'use_balanceTags','0','yes'),
(9,'use_smilies','1','yes'),
(10,'require_name_email','1','yes'),
(11,'comments_notify','1','yes'),
(12,'posts_per_rss','10','yes'),
(13,'rss_use_excerpt','0','yes'),
(14,'mailserver_url','mail.example.com','yes'),
(15,'mailserver_login','login@example.com','yes'),
(16,'mailserver_pass','password','yes'),
(17,'mailserver_port','110','yes'),
(18,'default_category','1','yes'),
(19,'default_comment_status','open','yes'),
(20,'default_ping_status','open','yes'),
(21,'default_pingback_flag','0','yes'),
(22,'posts_per_page','4','yes'),
(23,'date_format','j \\d\\e F \\d\\e Y','yes'),
(24,'time_format','H:i','yes'),
(25,'links_updated_date_format','j \\d\\e F \\d\\e Y H:i','yes'),
(26,'comment_moderation','0','yes'),
(27,'moderation_notify','1','yes'),
(28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes'),
(29,'rewrite_rules','a:136:{s:10:\"recetas/?$\";s:37:\"index.php?post_type=recetas_post_type\";s:40:\"recetas/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?post_type=recetas_post_type&feed=$matches[1]\";s:35:\"recetas/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?post_type=recetas_post_type&feed=$matches[1]\";s:27:\"recetas/page/([0-9]{1,})/?$\";s:55:\"index.php?post_type=recetas_post_type&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"recetas/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"recetas/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"recetas/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"recetas/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"recetas/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"recetas/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"recetas/([^/]+)/embed/?$\";s:50:\"index.php?recetas_post_type=$matches[1]&embed=true\";s:28:\"recetas/([^/]+)/trackback/?$\";s:44:\"index.php?recetas_post_type=$matches[1]&tb=1\";s:48:\"recetas/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?recetas_post_type=$matches[1]&feed=$matches[2]\";s:43:\"recetas/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?recetas_post_type=$matches[1]&feed=$matches[2]\";s:36:\"recetas/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?recetas_post_type=$matches[1]&paged=$matches[2]\";s:43:\"recetas/([^/]+)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?recetas_post_type=$matches[1]&cpage=$matches[2]\";s:32:\"recetas/([^/]+)(?:/([0-9]+))?/?$\";s:56:\"index.php?recetas_post_type=$matches[1]&page=$matches[2]\";s:24:\"recetas/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"recetas/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"recetas/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"recetas/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"recetas/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"recetas/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"bpbm-chat/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"bpbm-chat/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"bpbm-chat/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"bpbm-chat/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"bpbm-chat/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"bpbm-chat/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"bpbm-chat/([^/]+)/embed/?$\";s:57:\"index.php?post_type=bpbm-chat&name=$matches[1]&embed=true\";s:30:\"bpbm-chat/([^/]+)/trackback/?$\";s:51:\"index.php?post_type=bpbm-chat&name=$matches[1]&tb=1\";s:38:\"bpbm-chat/([^/]+)/page/?([0-9]{1,})/?$\";s:64:\"index.php?post_type=bpbm-chat&name=$matches[1]&paged=$matches[2]\";s:45:\"bpbm-chat/([^/]+)/comment-page-([0-9]{1,})/?$\";s:64:\"index.php?post_type=bpbm-chat&name=$matches[1]&cpage=$matches[2]\";s:34:\"bpbm-chat/([^/]+)(?:/([0-9]+))?/?$\";s:63:\"index.php?post_type=bpbm-chat&name=$matches[1]&page=$matches[2]\";s:26:\"bpbm-chat/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"bpbm-chat/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"bpbm-chat/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"bpbm-chat/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"bpbm-chat/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"bpbm-chat/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes'),
(30,'hack_file','0','yes'),
(31,'blog_charset','UTF-8','yes'),
(32,'moderation_keys','','no'),
(33,'active_plugins','a:6:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:41:\"bp-better-messages/bp-better-messages.php\";i:3;s:23:\"evatellez/evatellez.php\";i:5;s:63:\"limit-login-attempts-reloaded/limit-login-attempts-reloaded.php\";i:7;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";i:8;s:33:\"wps-hide-login/wps-hide-login.php\";}','yes'),
(34,'category_base','','yes'),
(35,'ping_sites','http://rpc.pingomatic.com/','yes'),
(36,'comment_max_links','2','yes'),
(37,'gmt_offset','0','yes'),
(38,'default_email_category','1','yes'),
(39,'recently_edited','a:5:{i:0;s:121:\"/var/www/vhosts/stoic-khorana.5-135-116-99.plesk.page/httpdocs/nutrifit/wp-content/plugins/advanced-custom-fields/acf.php\";i:2;s:114:\"/var/www/vhosts/stoic-khorana.5-135-116-99.plesk.page/httpdocs/nutrifit/wp-content/plugins/evatellez/evatellez.php\";i:3;s:75:\"C:\\xampp\\htdocs\\nutrifit+/wp-content/plugins/advanced-custom-fields/acf.php\";i:4;s:101:\"C:\\xampp\\htdocs\\nutrifit+/wp-content/themes/twentytwentyone/template-parts/content/content-single.php\";i:5;s:0:\"\";}','no'),
(40,'template','nutrifit-plus','yes'),
(41,'stylesheet','nutrifit-plus','yes'),
(42,'comment_registration','0','yes'),
(43,'html_type','text/html','yes'),
(44,'use_trackback','0','yes'),
(45,'default_role','paciente','yes'),
(46,'db_version','53496','yes'),
(47,'uploads_use_yearmonth_folders','1','yes'),
(48,'upload_path','','yes'),
(49,'blog_public','0','yes'),
(50,'default_link_category','2','yes'),
(51,'show_on_front','posts','yes'),
(52,'tag_base','','yes'),
(53,'show_avatars','1','yes'),
(54,'avatar_rating','G','yes'),
(55,'upload_url_path','','yes'),
(56,'thumbnail_size_w','150','yes'),
(57,'thumbnail_size_h','150','yes'),
(58,'thumbnail_crop','1','yes'),
(59,'medium_size_w','300','yes'),
(60,'medium_size_h','300','yes'),
(61,'avatar_default','mystery','yes'),
(62,'large_size_w','1024','yes'),
(63,'large_size_h','1024','yes'),
(64,'image_default_link_type','none','yes'),
(65,'image_default_size','','yes'),
(66,'image_default_align','','yes'),
(67,'close_comments_for_old_posts','0','yes'),
(68,'close_comments_days_old','14','yes'),
(69,'thread_comments','1','yes'),
(70,'thread_comments_depth','5','yes'),
(71,'page_comments','0','yes'),
(72,'comments_per_page','50','yes'),
(73,'default_comments_page','newest','yes'),
(74,'comment_order','asc','yes'),
(75,'sticky_posts','a:0:{}','yes'),
(76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
(77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
(78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
(79,'uninstall_plugins','a:0:{}','no'),
(80,'timezone_string','','yes'),
(81,'page_for_posts','0','yes'),
(82,'page_on_front','0','yes'),
(83,'default_post_format','0','yes'),
(84,'link_manager_enabled','0','yes'),
(85,'finished_splitting_shared_terms','1','yes'),
(86,'site_icon','0','yes'),
(87,'medium_large_size_w','768','yes'),
(88,'medium_large_size_h','0','yes'),
(89,'wp_page_for_privacy_policy','3','yes'),
(90,'show_comments_cookies_opt_in','1','yes'),
(91,'admin_email_lifespan','1696937132','yes'),
(92,'disallowed_keys','','no'),
(93,'comment_previously_approved','1','yes'),
(94,'auto_plugin_theme_update_emails','a:0:{}','no'),
(95,'auto_update_core_dev','enabled','yes'),
(96,'auto_update_core_minor','enabled','yes'),
(97,'auto_update_core_major','enabled','yes'),
(98,'wp_force_deactivated_plugins','a:0:{}','yes'),
(99,'initial_db_version','53496','yes'),
(100,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:73:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:16:\"restrict_content\";b:1;s:10:\"list_roles\";b:1;s:12:\"create_roles\";b:1;s:12:\"delete_roles\";b:1;s:10:\"edit_roles\";b:1;s:12:\"edit_recetas\";b:1;s:19:\"edit_others_recetas\";b:1;s:15:\"publish_recetas\";b:1;s:20:\"read_private_recetas\";b:1;s:12:\"read_recetas\";b:1;s:14:\"delete_recetas\";b:1;s:11:\"edit_receta\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"nutricionista\";a:2:{s:4:\"name\";s:13:\"Nutricionista\";s:12:\"capabilities\";a:35:{s:19:\"edit_others_recetas\";b:1;s:12:\"edit_recetas\";b:1;s:15:\"publish_recetas\";b:1;s:20:\"read_private_recetas\";b:1;s:12:\"read_recetas\";b:1;s:11:\"edit_receta\";b:1;s:14:\"delete_recetas\";b:1;s:20:\"edit_user_management\";b:1;s:20:\"read_user_management\";b:1;s:22:\"delete_user_management\";b:1;s:21:\"edit_user_managements\";b:1;s:28:\"edit_others_user_managements\";b:1;s:24:\"publish_user_managements\";b:1;s:29:\"read_private_user_managements\";b:1;s:23:\"delete_user_managements\";b:1;s:31:\"delete_private_user_managements\";b:1;s:33:\"delete_published_user_managements\";b:1;s:30:\"delete_others_user_managements\";b:1;s:29:\"edit_private_user_managements\";b:1;s:31:\"edit_published_user_managements\";b:1;s:23:\"create_user_managements\";b:1;s:13:\"edit_usuarios\";b:1;s:13:\"read_usuarios\";b:1;s:15:\"delete_usuarios\";b:1;s:20:\"edit_others_usuarios\";b:1;s:16:\"publish_usuarios\";b:1;s:21:\"read_private_usuarios\";b:1;s:15:\"create_usuarios\";b:1;s:23:\"edit_published_usuarios\";b:1;s:25:\"delete_published_usuarios\";b:1;s:12:\"create_users\";b:1;s:10:\"list_users\";b:1;s:4:\"read\";b:1;s:10:\"edit_users\";b:1;s:17:\"edit_others_users\";b:1;}}s:8:\"paciente\";a:2:{s:4:\"name\";s:8:\"Paciente\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}}','yes'),
(101,'fresh_site','0','yes'),
(102,'WPLANG','es_ES','yes'),
(103,'user_count','16','no'),
(104,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:160:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Entradas recientes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentarios recientes</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:151:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorías</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes'),
(105,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes'),
(106,'cron','a:12:{i:1685906472;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1685906629;a:1:{s:37:\"bp_better_messages_send_notifications\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:32:\"bp_better_messages_notifications\";s:4:\"args\";a:0:{}s:8:\"interval\";i:900;}}}i:1685906662;a:2:{s:36:\"bp_better_messages_clear_attachments\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:15:\"fifteen_minutes\";s:4:\"args\";a:0:{}s:8:\"interval\";i:900;}}s:27:\"better_messages_cleaner_job\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:27:\"better_messages_cleaner_job\";s:4:\"args\";a:0:{}s:8:\"interval\";i:300;}}}i:1685906733;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1685916879;a:1:{s:31:\"fs_data_sync_bp-better-messages\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1685921133;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1685921183;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1685964333;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1685964383;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1685964384;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1686309933;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes'),
(107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(109,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(114,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(115,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(116,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(117,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(118,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(119,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(120,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(122,'recovery_keys','a:0:{}','yes'),
(123,'theme_mods_twentytwentythree','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1683300967;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes'),
(125,'https_detection_errors','a:1:{s:19:\"bad_response_source\";a:1:{i:0;s:50:\"Parece que la respuesta no proviene de este sitio.\";}}','yes'),
(148,'can_compress_scripts','1','no'),
(157,'finished_updating_comment_type','1','yes'),
(170,'_transient_health-check-site-status-result','{\"good\":15,\"recommended\":5,\"critical\":0}','yes'),
(224,'current_theme','Nutrifit+','yes'),
(225,'theme_mods_nutrifit-plus','a:13:{i:0;b:0;s:18:\"nav_menu_locations\";a:4:{s:13:\"Menu Dietista\";i:3;s:8:\"dietista\";i:3;s:18:\"menu-nutricionista\";i:3;s:13:\"menu-paciente\";i:4;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1683301812;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}s:18:\"custom_css_post_id\";i:-1;s:16:\"bm-border-radius\";s:1:\"5\";s:15:\"bm-date-enabled\";b:1;s:19:\"bm-private-sub-name\";s:6:\"online\";s:13:\"main-bm-color\";s:7:\"#68ba35\";s:29:\"bm-modern-right-side-nickname\";s:7:\"#68ba35\";s:8:\"bm-theme\";s:5:\"light\";s:23:\"bm-modern-right-side-bg\";s:7:\"#68ba35\";s:16:\"bm-modern-radius\";s:1:\"8\";s:14:\"bm-date-radius\";s:1:\"3\";}','yes'),
(226,'theme_switched','','yes'),
(228,'theme_mods_twentytwentyone','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1683540536;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}}}}','yes'),
(238,'recently_activated','a:3:{s:28:\"laravel-dd/wp-laravel-dd.php\";i:1685880816;s:35:\"wp-hooks-finder/wp-hooks-finder.php\";i:1685656140;s:31:\"code-snippets/code-snippets.php\";i:1685656133;}','yes'),
(239,'code_snippets_version','3.4.0','yes'),
(240,'code_snippets_settings','a:3:{s:7:\"general\";a:6:{s:19:\"activate_by_default\";b:1;s:11:\"enable_tags\";b:1;s:18:\"enable_description\";b:1;s:10:\"list_order\";s:12:\"priority-asc\";s:13:\"disable_prism\";b:0;s:18:\"complete_uninstall\";b:0;}s:18:\"description_editor\";a:3:{s:4:\"rows\";i:5;s:12:\"use_full_mce\";b:0;s:13:\"media_buttons\";b:0;}s:6:\"editor\";a:11:{s:5:\"theme\";s:7:\"default\";s:16:\"indent_with_tabs\";b:1;s:8:\"tab_size\";i:4;s:11:\"indent_unit\";i:4;s:10:\"wrap_lines\";b:1;s:12:\"code_folding\";b:1;s:12:\"line_numbers\";b:1;s:19:\"auto_close_brackets\";b:1;s:27:\"highlight_selection_matches\";b:1;s:21:\"highlight_active_line\";b:1;s:6:\"keymap\";s:7:\"default\";}}','yes'),
(241,'recently_activated_snippets','a:0:{}','yes'),
(246,'om4_cpt_editor','a:2:{s:7:\"version\";i:1;s:8:\"settings\";a:1:{s:5:\"types\";a:0:{}}}','yes'),
(253,'cptui_new_install','false','yes'),
(254,'cptui_post_types','a:1:{s:7:\"recetas\";a:34:{s:4:\"name\";s:7:\"recetas\";s:5:\"label\";s:7:\"Recetas\";s:14:\"singular_label\";s:6:\"Receta\";s:11:\"description\";s:48:\"Ver y añadir nuevas recetas para tus pacientes.\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:7:\"Recetas\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:7:\"Recetas\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:4:\"true\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:1:\"4\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:14:\"dashicons-food\";s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:1:{i:0;s:8:\"category\";}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:7:\"Recetas\";s:9:\"all_items\";s:17:\"Todas las recetas\";s:7:\"add_new\";s:20:\"Crear/Añadir receta\";s:12:\"add_new_item\";s:26:\"Crear/Añadir nueva receta\";s:9:\"edit_item\";s:13:\"Editar receta\";s:9:\"view_item\";s:10:\"Ver receta\";s:10:\"view_items\";s:11:\"Ver recetas\";s:12:\"search_items\";s:14:\"Buscar recetas\";s:9:\"not_found\";s:28:\"No se han encontrado recetas\";s:18:\"not_found_in_trash\";s:43:\"No se han encontrado recetas en la papelera\";s:8:\"new_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}}','yes'),
(264,'whatthefile-install-date','2023-05-05','no'),
(269,'acf_version','6.1.6','yes'),
(319,'recovery_mode_email_last_sent','1685105460','yes'),
(355,'category_children','a:0:{}','yes'),
(454,'_transient_timeout_members_30days_flag','1686322182','no'),
(455,'_transient_members_30days_flag','1','no'),
(456,'members_activated','1683730182','yes'),
(457,'members_addons_migrated','1','yes'),
(458,'widget_members-widget-login','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(459,'widget_members-widget-users','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(461,'members_notifications','a:4:{s:6:\"update\";i:1684702174;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}','yes'),
(533,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes'),
(582,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:30:\"eva.s284913@cesurformacion.com\";s:7:\"version\";s:5:\"6.2.2\";s:9:\"timestamp\";i:1684662896;}','no'),
(876,'using_application_passwords','1','no'),
(948,'fs_active_plugins','O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:34:\"bp-better-messages/vendor/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.5.8\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1685473760;s:11:\"plugin_path\";s:41:\"bp-better-messages/bp-better-messages.php\";}}s:7:\"abspath\";s:72:\"/var/www/vhosts/stoic-khorana.5-135-116-99.plesk.page/httpdocs/nutrifit/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:41:\"bp-better-messages/bp-better-messages.php\";s:8:\"sdk_path\";s:34:\"bp-better-messages/vendor/freemius\";s:7:\"version\";s:5:\"2.5.8\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1685473760;}}','yes'),
(949,'fs_debug_mode','','yes'),
(950,'fs_accounts','a:16:{s:21:\"id_slug_type_path_map\";a:1:{i:1557;a:3:{s:4:\"slug\";s:18:\"bp-better-messages\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:41:\"bp-better-messages/bp-better-messages.php\";}}s:11:\"plugin_data\";a:1:{s:18:\"bp-better-messages\";a:26:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:41:\"bp-better-messages/bp-better-messages.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1685473760;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:0;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.5.8\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";s:6:\"2.1.10\";s:14:\"plugin_version\";s:6:\"2.1.11\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:37:\"stoic-khorana.5-135-116-99.plesk.page\";s:9:\"server_ip\";s:12:\"5.135.116.99\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1685473770;s:7:\"version\";s:6:\"2.1.10\";}s:15:\"prev_is_premium\";b:0;s:30:\"is_diagnostic_tracking_allowed\";b:1;s:30:\"is_extensions_tracking_allowed\";b:1;s:14:\"has_trial_plan\";b:1;s:19:\"keepalive_timestamp\";i:1685834985;s:20:\"activation_timestamp\";i:1685473770;s:9:\"sync_cron\";O:8:\"stdClass\":5:{s:7:\"version\";s:6:\"2.1.10\";s:7:\"blog_id\";i:0;s:11:\"sdk_version\";s:5:\"2.5.8\";s:9:\"timestamp\";i:1685473773;s:2:\"on\";b:1;}s:14:\"sync_timestamp\";i:1685834985;s:22:\"install_sync_timestamp\";i:1685834985;s:15:\"is_whitelabeled\";b:0;s:21:\"trial_promotion_shown\";i:1685567977;s:9:\"beta_data\";a:2:{s:7:\"is_beta\";b:0;s:7:\"version\";s:6:\"2.1.11\";}}}s:13:\"file_slug_map\";a:1:{s:41:\"bp-better-messages/bp-better-messages.php\";s:18:\"bp-better-messages\";}s:7:\"plugins\";a:1:{s:18:\"bp-better-messages\";O:9:\"FS_Plugin\":24:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:15:\"Better Messages\";s:4:\"slug\";s:18:\"bp-better-messages\";s:12:\"premium_slug\";s:26:\"bp-better-messages-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:41:\"bp-better-messages/bp-better-messages.php\";s:7:\"version\";s:6:\"2.1.11\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:19:\"- WebSocket Version\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:17:\"opt_in_moderation\";N;s:10:\"public_key\";s:32:\"pk_8af54172153e9907893f32a4706e2\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"1557\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"0e96f286e6b8211b20d2f779881d29d9\";s:5:\"plans\";a:1:{s:18:\"bp-better-messages\";a:3:{i:0;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:8:\"MTU1Nw==\";s:4:\"name\";s:8:\"ZnJlZQ==\";s:5:\"title\";s:8:\"QUpBWA==\";s:11:\"description\";N;s:17:\"is_free_localhost\";s:4:\"MQ==\";s:17:\"is_block_features\";s:4:\"MQ==\";s:12:\"license_type\";s:4:\"MA==\";s:16:\"is_https_support\";s:0:\"\";s:12:\"trial_period\";N;s:23:\"is_require_subscription\";s:0:\"\";s:10:\"support_kb\";s:56:\"aHR0cHM6Ly93d3cud29yZHBsdXMub3JnL2tub3dsZWRnZS1iYXNlLw==\";s:13:\"support_forum\";s:76:\"aHR0cHM6Ly93d3cud29yZHBsdXMub3JnL2ZvcnVtcy9mb3J1bS9icC1iZXR0ZXItbWVzc2FnZXMv\";s:13:\"support_email\";s:40:\"c3VwcG9ydEBicGJldHRlcm1lc3NhZ2VzLmNvbQ==\";s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";s:0:\"\";s:11:\"is_featured\";s:0:\"\";s:2:\"id\";s:8:\"MjYyMQ==\";s:7:\"updated\";s:28:\"MjAyMy0wMy0wNiAxNDo1NDoxMg==\";s:7:\"created\";s:28:\"MjAxOC0wMi0yNyAwMzoxMDoxOA==\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}i:1;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:8:\"MTU1Nw==\";s:4:\"name\";s:12:\"d2Vic29ja2V0\";s:5:\"title\";s:12:\"V2ViU29ja2V0\";s:11:\"description\";N;s:17:\"is_free_localhost\";s:0:\"\";s:17:\"is_block_features\";s:4:\"MQ==\";s:12:\"license_type\";s:4:\"MA==\";s:16:\"is_https_support\";s:0:\"\";s:12:\"trial_period\";s:4:\"Mw==\";s:23:\"is_require_subscription\";s:4:\"MQ==\";s:10:\"support_kb\";s:56:\"aHR0cHM6Ly93d3cud29yZHBsdXMub3JnL2tub3dsZWRnZS1iYXNlLw==\";s:13:\"support_forum\";s:76:\"aHR0cHM6Ly93d3cud29yZHBsdXMub3JnL2ZvcnVtcy9mb3J1bS9icC1iZXR0ZXItbWVzc2FnZXMv\";s:13:\"support_email\";s:40:\"c3VwcG9ydEBicGJldHRlcm1lc3NhZ2VzLmNvbQ==\";s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";s:0:\"\";s:11:\"is_featured\";s:4:\"MQ==\";s:2:\"id\";s:8:\"MjU0Nw==\";s:7:\"updated\";s:28:\"MjAyMy0wMy0yNiAwODowMjowNg==\";s:7:\"created\";s:28:\"MjAxOC0wMi0xNSAxNDo1OToyMw==\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}i:2;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:8:\"MTU1Nw==\";s:4:\"name\";s:28:\"d2Vic29ja2V0c2VsZmhvc3RlZA==\";s:5:\"title\";s:28:\"V2Vic29ja2V0IFNlbGYgSG9zdGVk\";s:11:\"description\";s:0:\"\";s:17:\"is_free_localhost\";s:0:\"\";s:17:\"is_block_features\";s:4:\"MQ==\";s:12:\"license_type\";s:4:\"MA==\";s:16:\"is_https_support\";s:0:\"\";s:12:\"trial_period\";N;s:23:\"is_require_subscription\";s:0:\"\";s:10:\"support_kb\";s:56:\"aHR0cHM6Ly93d3cud29yZHBsdXMub3JnL2tub3dsZWRnZS1iYXNlLw==\";s:13:\"support_forum\";s:76:\"aHR0cHM6Ly93d3cud29yZHBsdXMub3JnL2ZvcnVtcy9mb3J1bS9icC1iZXR0ZXItbWVzc2FnZXMv\";s:13:\"support_email\";s:40:\"c3VwcG9ydEBicGJldHRlcm1lc3NhZ2VzLmNvbQ==\";s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";s:0:\"\";s:11:\"is_featured\";s:0:\"\";s:2:\"id\";s:8:\"MTIzMDk=\";s:7:\"updated\";s:28:\"MjAyMi0wMS0wNCAxNzoyNTowNw==\";s:7:\"created\";s:28:\"MjAyMS0wMS0wMiAxMTowNDo1NA==\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}}s:14:\"active_plugins\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1685834985;s:3:\"md5\";s:32:\"615607e2275bca017d8168a255d856a4\";s:7:\"plugins\";a:7:{s:30:\"advanced-custom-fields/acf.php\";a:5:{s:4:\"slug\";s:22:\"advanced-custom-fields\";s:7:\"version\";s:5:\"6.1.6\";s:5:\"title\";s:22:\"Advanced Custom Fields\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:41:\"bp-better-messages/bp-better-messages.php\";a:5:{s:4:\"slug\";s:18:\"bp-better-messages\";s:7:\"version\";s:6:\"2.1.10\";s:5:\"title\";s:15:\"Better Messages\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:23:\"evatellez/evatellez.php\";a:5:{s:4:\"slug\";s:9:\"evatellez\";s:7:\"version\";s:3:\"1.0\";s:5:\"title\";s:11:\"Eva Téllez\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:28:\"laravel-dd/wp-laravel-dd.php\";a:5:{s:4:\"slug\";s:10:\"laravel-dd\";s:7:\"version\";s:5:\"1.0.1\";s:5:\"title\";s:24:\"Laravel DD for Wordpress\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:63:\"limit-login-attempts-reloaded/limit-login-attempts-reloaded.php\";a:5:{s:4:\"slug\";s:29:\"limit-login-attempts-reloaded\";s:7:\"version\";s:7:\"2.25.18\";s:5:\"title\";s:29:\"Limit Login Attempts Reloaded\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:33:\"wps-hide-login/wps-hide-login.php\";a:5:{s:4:\"slug\";s:14:\"wps-hide-login\";s:7:\"version\";s:5:\"1.9.8\";s:5:\"title\";s:14:\"WPS Hide Login\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";a:5:{s:4:\"slug\";s:12:\"wp-mail-smtp\";s:7:\"version\";s:5:\"3.8.0\";s:5:\"title\";s:12:\"WP Mail SMTP\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}}}s:11:\"all_plugins\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1685692214;s:3:\"md5\";s:32:\"6be0e8f49b6b6c5bf37ee84350026f73\";s:7:\"plugins\";a:10:{s:30:\"advanced-custom-fields/acf.php\";a:5:{s:4:\"slug\";s:22:\"advanced-custom-fields\";s:7:\"version\";s:5:\"6.1.6\";s:5:\"title\";s:22:\"Advanced Custom Fields\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:19:\"akismet/akismet.php\";a:5:{s:4:\"slug\";s:7:\"akismet\";s:7:\"version\";s:3:\"5.1\";s:5:\"title\";s:34:\"Akismet Anti-Spam: Spam Protection\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:41:\"bp-better-messages/bp-better-messages.php\";a:6:{s:4:\"slug\";s:18:\"bp-better-messages\";s:7:\"version\";s:6:\"2.1.10\";s:5:\"title\";s:15:\"Better Messages\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;s:7:\"Version\";s:6:\"2.1.11\";}s:31:\"code-snippets/code-snippets.php\";a:5:{s:4:\"slug\";s:13:\"code-snippets\";s:7:\"version\";s:5:\"3.4.0\";s:5:\"title\";s:13:\"Code Snippets\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:23:\"evatellez/evatellez.php\";a:5:{s:4:\"slug\";s:9:\"evatellez\";s:7:\"version\";s:3:\"1.0\";s:5:\"title\";s:11:\"Eva Téllez\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:28:\"laravel-dd/wp-laravel-dd.php\";a:5:{s:4:\"slug\";s:10:\"laravel-dd\";s:7:\"version\";s:5:\"1.0.1\";s:5:\"title\";s:24:\"Laravel DD for Wordpress\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:63:\"limit-login-attempts-reloaded/limit-login-attempts-reloaded.php\";a:5:{s:4:\"slug\";s:29:\"limit-login-attempts-reloaded\";s:7:\"version\";s:7:\"2.25.18\";s:5:\"title\";s:29:\"Limit Login Attempts Reloaded\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:33:\"wps-hide-login/wps-hide-login.php\";a:5:{s:4:\"slug\";s:14:\"wps-hide-login\";s:7:\"version\";s:5:\"1.9.8\";s:5:\"title\";s:14:\"WPS Hide Login\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:35:\"wp-hooks-finder/wp-hooks-finder.php\";a:5:{s:4:\"slug\";s:15:\"wp-hooks-finder\";s:7:\"version\";s:5:\"1.2.3\";s:5:\"title\";s:15:\"WP Hooks Finder\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";a:5:{s:4:\"slug\";s:12:\"wp-mail-smtp\";s:7:\"version\";s:5:\"3.8.0\";s:5:\"title\";s:12:\"WP Mail SMTP\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}}}s:10:\"all_themes\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1685834985;s:3:\"md5\";s:32:\"726b76785e424f9579baab92e97b17ae\";s:6:\"themes\";a:4:{s:13:\"nutrifit-plus\";a:5:{s:4:\"slug\";s:13:\"nutrifit-plus\";s:7:\"version\";s:3:\"1.3\";s:5:\"title\";s:9:\"Nutrifit+\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:15:\"twentytwentyone\";a:5:{s:4:\"slug\";s:15:\"twentytwentyone\";s:7:\"version\";s:3:\"1.8\";s:5:\"title\";s:17:\"Twenty Twenty-One\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:17:\"twentytwentythree\";a:5:{s:4:\"slug\";s:17:\"twentytwentythree\";s:7:\"version\";s:3:\"1.1\";s:5:\"title\";s:19:\"Twenty Twenty-Three\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:15:\"twentytwentytwo\";a:5:{s:4:\"slug\";s:15:\"twentytwentytwo\";s:7:\"version\";s:3:\"1.4\";s:5:\"title\";s:17:\"Twenty Twenty-Two\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}}}s:5:\"sites\";a:1:{s:18:\"bp-better-messages\";O:7:\"FS_Site\":25:{s:7:\"site_id\";s:9:\"177227228\";s:9:\"plugin_id\";s:4:\"1557\";s:7:\"user_id\";s:7:\"7074272\";s:5:\"title\";s:9:\"Nutrifit+\";s:3:\"url\";s:45:\"https://stoic-khorana.5-135-116-99.plesk.page\";s:7:\"version\";s:6:\"2.1.11\";s:8:\"language\";s:2:\"es\";s:16:\"platform_version\";s:5:\"6.2.2\";s:11:\"sdk_version\";s:5:\"2.5.8\";s:28:\"programming_language_version\";s:6:\"8.0.28\";s:7:\"plan_id\";s:4:\"2621\";s:10:\"license_id\";N;s:13:\"trial_plan_id\";N;s:10:\"trial_ends\";N;s:10:\"is_premium\";b:0;s:15:\"is_disconnected\";b:0;s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;s:7:\"is_beta\";b:0;s:10:\"public_key\";s:32:\"pk_ffa68b4df45a4f040795ce246c8be\";s:10:\"secret_key\";s:32:\"sk_8:4JCLA_K=1}d+fqBEC%8@8TU.gEY\";s:2:\"id\";s:8:\"12247646\";s:7:\"updated\";s:19:\"2023-05-31 09:49:03\";s:7:\"created\";s:19:\"2023-05-30 19:09:30\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:5:\"users\";a:1:{i:7074272;O:7:\"FS_User\":12:{s:5:\"email\";s:30:\"eva.s284913@cesurformacion.com\";s:5:\"first\";s:5:\"Admin\";s:4:\"last\";s:0:\"\";s:11:\"is_verified\";b:0;s:11:\"customer_id\";N;s:5:\"gross\";N;s:10:\"public_key\";s:32:\"pk_39711f22f624e91a1b4e0df42feda\";s:10:\"secret_key\";s:32:\"sk_5WUw<Btk6-q@R?S9q(k5VE45NSZ*r\";s:2:\"id\";s:7:\"7074272\";s:7:\"updated\";N;s:7:\"created\";s:19:\"2023-05-30 19:09:30\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:6:\"addons\";a:1:{i:1557;a:3:{i:0;O:9:\"FS_Plugin\":24:{s:16:\"parent_plugin_id\";s:4:\"1557\";s:5:\"title\";s:14:\"Voice Messages\";s:4:\"slug\";s:33:\"bp-better-messages-voice-messages\";s:12:\"premium_slug\";s:33:\"bp-better-messages-voice-messages\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";N;s:19:\"is_wp_org_compliant\";b:0;s:22:\"premium_releases_count\";i:16;s:4:\"file\";N;s:7:\"version\";N;s:11:\"auto_update\";N;s:4:\"info\";O:14:\"FS_Plugin_Info\":13:{s:9:\"plugin_id\";s:4:\"8659\";s:11:\"description\";s:70:\"Enable your users to send voice messages additionally to text messages\";s:17:\"short_description\";s:70:\"Enable your users to send voice messages additionally to text messages\";s:10:\"banner_url\";s:67:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/8659/banner.png\";s:15:\"card_banner_url\";s:72:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/8659/card_banner.png\";s:15:\"selling_point_0\";s:0:\"\";s:15:\"selling_point_1\";s:0:\"\";s:15:\"selling_point_2\";s:0:\"\";s:11:\"screenshots\";O:8:\"stdClass\":3:{s:12:\"screenshot_0\";s:74:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/8659/screenshots/0.png\";s:12:\"screenshot_1\";s:74:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/8659/screenshots/1.png\";s:12:\"screenshot_2\";s:74:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/8659/screenshots/2.png\";}s:2:\"id\";s:4:\"2293\";s:7:\"updated\";s:19:\"2021-07-09 13:08:04\";s:7:\"created\";s:19:\"2021-07-05 16:22:46\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:17:\"opt_in_moderation\";N;s:10:\"public_key\";s:32:\"pk_745a013c686d96e42b595ae8af577\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"8659\";s:7:\"updated\";s:19:\"2023-06-03 20:29:33\";s:7:\"created\";s:19:\"2021-07-05 16:03:13\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}i:1;O:9:\"FS_Plugin\":24:{s:16:\"parent_plugin_id\";s:4:\"1557\";s:5:\"title\";s:22:\"WC Vendors Integration\";s:4:\"slug\";s:38:\"better-messages-wc-vendors-integration\";s:12:\"premium_slug\";s:37:\"bp-better-messages-wc-vendors-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";N;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";i:0;s:4:\"file\";N;s:7:\"version\";N;s:11:\"auto_update\";N;s:4:\"info\";O:14:\"FS_Plugin_Info\":13:{s:9:\"plugin_id\";s:4:\"8691\";s:11:\"description\";s:224:\"<p>Integration with <a href=\"https://www.wordplus.org/wcvendors\" target=\"_blank\">WC Vendors</a> plugin.</p>\n\n<p>Allows connect sellers and buyers with private messaging system</p>\n\nhttps://www.youtube.com/watch?v=Z3h1UQ03wPE\";s:17:\"short_description\";s:34:\"Integration with WC Vendors plugin\";s:10:\"banner_url\";N;s:15:\"card_banner_url\";s:72:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/8691/card_banner.png\";s:15:\"selling_point_0\";s:0:\"\";s:15:\"selling_point_1\";s:0:\"\";s:15:\"selling_point_2\";s:0:\"\";s:11:\"screenshots\";O:8:\"stdClass\":3:{s:12:\"screenshot_0\";s:74:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/8691/screenshots/0.png\";s:12:\"screenshot_1\";s:74:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/8691/screenshots/1.png\";s:12:\"screenshot_2\";s:74:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/8691/screenshots/2.png\";}s:2:\"id\";s:4:\"2327\";s:7:\"updated\";s:19:\"2021-11-03 22:08:47\";s:7:\"created\";s:19:\"2021-07-30 09:34:28\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:17:\"opt_in_moderation\";N;s:10:\"public_key\";s:32:\"pk_81572487ef5c67b080edb79788813\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"8691\";s:7:\"updated\";s:19:\"2023-06-03 16:31:06\";s:7:\"created\";s:19:\"2021-07-10 14:54:00\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}i:2;O:9:\"FS_Plugin\":24:{s:16:\"parent_plugin_id\";s:4:\"1557\";s:5:\"title\";s:16:\"WCFM Integration\";s:4:\"slug\";s:32:\"better-messages-wcfm-integration\";s:12:\"premium_slug\";s:31:\"bp-better-messages-wcfm-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";N;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";i:0;s:4:\"file\";N;s:7:\"version\";N;s:11:\"auto_update\";N;s:4:\"info\";O:14:\"FS_Plugin_Info\":13:{s:9:\"plugin_id\";s:4:\"9247\";s:11:\"description\";s:198:\"<p>Integration with <a href=\"https://www.wordplus.org/wcfm\" target=\"_blank\">WCFM</a> plugin.</p>\n\n<p>Allows connect sellers and buyers with private messaging system</p>\n\nhttps://youtu.be/nuceECo08P4\";s:17:\"short_description\";s:28:\"Integration with WCFM plugin\";s:10:\"banner_url\";N;s:15:\"card_banner_url\";s:72:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/9247/card_banner.png\";s:15:\"selling_point_0\";N;s:15:\"selling_point_1\";N;s:15:\"selling_point_2\";N;s:11:\"screenshots\";O:8:\"stdClass\":3:{s:12:\"screenshot_0\";s:74:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/9247/screenshots/0.png\";s:12:\"screenshot_1\";s:74:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/9247/screenshots/1.png\";s:12:\"screenshot_2\";s:74:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/9247/screenshots/2.jpg\";}s:2:\"id\";s:4:\"2448\";s:7:\"updated\";s:19:\"2021-11-17 11:27:50\";s:7:\"created\";s:19:\"2021-10-30 15:42:03\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:17:\"opt_in_moderation\";N;s:10:\"public_key\";s:32:\"pk_197f39d30b61daddcecd3e59bc39c\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"9247\";s:7:\"updated\";s:19:\"2023-06-03 10:25:17\";s:7:\"created\";s:19:\"2021-10-30 06:14:13\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}}s:23:\"user_id_license_ids_map\";a:1:{i:1557;a:1:{i:7074272;a:0:{}}}s:12:\"all_licenses\";a:1:{i:1557;a:0:{}}s:13:\"admin_notices\";a:1:{s:18:\"bp-better-messages\";a:0:{}}s:7:\"updates\";a:1:{i:1557;N;}}','yes'),
(951,'better_messages_2_db_version','0.5','yes'),
(952,'better_messages_db_migrated','1','yes'),
(953,'fs_api_cache','a:9:{s:26:\"get:/v1/users/7074272.json\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":9:{s:5:\"email\";s:30:\"eva.s284913@cesurformacion.com\";s:5:\"first\";s:5:\"Admin\";s:4:\"last\";s:0:\"\";s:11:\"is_verified\";b:0;s:10:\"secret_key\";s:32:\"sk_5WUw<Btk6-q@R?S9q(k5VE45NSZ*r\";s:10:\"public_key\";s:32:\"pk_39711f22f624e91a1b4e0df42feda\";s:2:\"id\";s:7:\"7074272\";s:7:\"created\";s:19:\"2023-05-30 19:09:30\";s:7:\"updated\";N;}s:7:\"created\";i:1685473770;s:9:\"timestamp\";i:1685560170;}s:30:\"get:/v1/installs/12247646.json\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":33:{s:7:\"site_id\";s:9:\"177227228\";s:9:\"plugin_id\";s:4:\"1557\";s:7:\"user_id\";s:7:\"7074272\";s:3:\"url\";s:45:\"https://stoic-khorana.5-135-116-99.plesk.page\";s:5:\"title\";s:9:\"Nutrifit+\";s:7:\"version\";s:6:\"2.1.10\";s:7:\"plan_id\";s:4:\"2621\";s:10:\"license_id\";N;s:13:\"trial_plan_id\";N;s:10:\"trial_ends\";N;s:15:\"subscription_id\";N;s:5:\"gross\";i:0;s:12:\"country_code\";s:2:\"es\";s:8:\"language\";s:2:\"es\";s:16:\"platform_version\";s:5:\"6.2.2\";s:11:\"sdk_version\";s:5:\"2.5.8\";s:28:\"programming_language_version\";s:6:\"8.0.28\";s:9:\"is_active\";b:1;s:15:\"is_disconnected\";b:0;s:10:\"is_premium\";b:0;s:14:\"is_uninstalled\";b:0;s:9:\"is_locked\";b:0;s:6:\"source\";i:0;s:8:\"upgraded\";N;s:12:\"last_seen_at\";s:19:\"2023-05-30 19:09:32\";s:26:\"last_served_update_version\";N;s:10:\"secret_key\";s:32:\"sk_8:4JCLA_K=1}d+fqBEC%8@8TU.gEY\";s:10:\"public_key\";s:32:\"pk_ffa68b4df45a4f040795ce246c8be\";s:2:\"id\";s:8:\"12247646\";s:7:\"created\";s:19:\"2023-05-30 19:09:30\";s:7:\"updated\";N;s:7:\"charset\";N;s:7:\"is_beta\";b:0;}s:7:\"created\";i:1685473770;s:9:\"timestamp\";i:1685560170;}s:45:\"get:/v1/users/7074272/plugins/1557/plans.json\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":1:{s:5:\"plans\";a:3:{i:0;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:4:\"1557\";s:4:\"name\";s:4:\"free\";s:5:\"title\";s:4:\"AJAX\";s:11:\"description\";N;s:17:\"is_free_localhost\";b:1;s:17:\"is_block_features\";b:1;s:12:\"license_type\";i:0;s:16:\"is_https_support\";b:0;s:12:\"trial_period\";N;s:23:\"is_require_subscription\";b:0;s:10:\"support_kb\";s:40:\"https://www.wordplus.org/knowledge-base/\";s:13:\"support_forum\";s:57:\"https://www.wordplus.org/forums/forum/bp-better-messages/\";s:13:\"support_email\";s:28:\"support@bpbettermessages.com\";s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";b:0;s:11:\"is_featured\";b:0;s:2:\"id\";s:4:\"2621\";s:7:\"updated\";s:19:\"2023-03-06 14:54:12\";s:7:\"created\";s:19:\"2018-02-27 03:10:18\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}i:1;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:4:\"1557\";s:4:\"name\";s:9:\"websocket\";s:5:\"title\";s:9:\"WebSocket\";s:11:\"description\";N;s:17:\"is_free_localhost\";b:0;s:17:\"is_block_features\";b:1;s:12:\"license_type\";i:0;s:16:\"is_https_support\";b:0;s:12:\"trial_period\";i:3;s:23:\"is_require_subscription\";b:1;s:10:\"support_kb\";s:40:\"https://www.wordplus.org/knowledge-base/\";s:13:\"support_forum\";s:57:\"https://www.wordplus.org/forums/forum/bp-better-messages/\";s:13:\"support_email\";s:28:\"support@bpbettermessages.com\";s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";b:0;s:11:\"is_featured\";b:1;s:2:\"id\";s:4:\"2547\";s:7:\"updated\";s:19:\"2023-03-26 08:02:06\";s:7:\"created\";s:19:\"2018-02-15 14:59:23\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}i:2;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:4:\"1557\";s:4:\"name\";s:19:\"websocketselfhosted\";s:5:\"title\";s:21:\"Websocket Self Hosted\";s:11:\"description\";s:0:\"\";s:17:\"is_free_localhost\";b:0;s:17:\"is_block_features\";b:1;s:12:\"license_type\";i:0;s:16:\"is_https_support\";b:0;s:12:\"trial_period\";N;s:23:\"is_require_subscription\";b:0;s:10:\"support_kb\";s:40:\"https://www.wordplus.org/knowledge-base/\";s:13:\"support_forum\";s:57:\"https://www.wordplus.org/forums/forum/bp-better-messages/\";s:13:\"support_email\";s:28:\"support@bpbettermessages.com\";s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";b:0;s:11:\"is_featured\";b:0;s:2:\"id\";s:5:\"12309\";s:7:\"updated\";s:19:\"2022-01-04 17:25:07\";s:7:\"created\";s:19:\"2021-01-02 11:04:54\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}}s:7:\"created\";i:1685834985;s:9:\"timestamp\";i:1685921385;}s:60:\"get:/v1/installs/12247646/addons.json?enriched=true&count=50\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":1:{s:7:\"plugins\";a:3:{i:0;O:8:\"stdClass\":34:{s:16:\"parent_plugin_id\";s:4:\"1557\";s:12:\"developer_id\";s:4:\"1740\";s:8:\"store_id\";s:3:\"692\";s:10:\"install_id\";s:7:\"7720304\";s:4:\"slug\";s:33:\"bp-better-messages-voice-messages\";s:5:\"title\";s:14:\"Voice Messages\";s:11:\"environment\";i:0;s:4:\"icon\";N;s:15:\"default_plan_id\";s:5:\"14467\";s:5:\"plans\";i:14467;s:8:\"features\";N;s:17:\"money_back_period\";i:7;s:13:\"refund_policy\";s:6:\"strict\";s:24:\"annual_renewals_discount\";N;s:22:\"renewals_discount_type\";s:10:\"percentage\";s:11:\"is_released\";b:1;s:15:\"is_sdk_required\";b:1;s:18:\"is_pricing_visible\";b:1;s:19:\"is_wp_org_compliant\";b:0;s:6:\"is_off\";b:0;s:24:\"is_only_for_new_installs\";b:0;s:14:\"installs_limit\";N;s:19:\"free_releases_count\";i:0;s:22:\"premium_releases_count\";i:16;s:17:\"accepted_payments\";i:0;s:7:\"plan_id\";s:1:\"0\";s:4:\"type\";s:6:\"plugin\";s:9:\"is_static\";b:0;s:10:\"public_key\";s:32:\"pk_745a013c686d96e42b595ae8af577\";s:2:\"id\";s:4:\"8659\";s:7:\"created\";s:19:\"2021-07-05 16:03:13\";s:7:\"updated\";s:19:\"2023-06-03 20:29:33\";s:4:\"info\";O:8:\"stdClass\":13:{s:9:\"plugin_id\";s:4:\"8659\";s:3:\"url\";N;s:11:\"description\";s:70:\"Enable your users to send voice messages additionally to text messages\";s:17:\"short_description\";s:70:\"Enable your users to send voice messages additionally to text messages\";s:10:\"banner_url\";s:67:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/8659/banner.png\";s:15:\"card_banner_url\";s:72:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/8659/card_banner.png\";s:15:\"selling_point_0\";s:0:\"\";s:15:\"selling_point_1\";s:0:\"\";s:15:\"selling_point_2\";s:0:\"\";s:11:\"screenshots\";O:8:\"stdClass\":3:{s:12:\"screenshot_0\";s:74:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/8659/screenshots/0.png\";s:12:\"screenshot_1\";s:74:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/8659/screenshots/1.png\";s:12:\"screenshot_2\";s:74:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/8659/screenshots/2.png\";}s:2:\"id\";s:4:\"2293\";s:7:\"created\";s:19:\"2021-07-05 16:22:46\";s:7:\"updated\";s:19:\"2021-07-09 13:08:04\";}s:12:\"premium_slug\";s:33:\"bp-better-messages-voice-messages\";}i:1;O:8:\"stdClass\":34:{s:16:\"parent_plugin_id\";s:4:\"1557\";s:12:\"developer_id\";s:4:\"1740\";s:8:\"store_id\";s:3:\"692\";s:10:\"install_id\";s:7:\"7757517\";s:4:\"slug\";s:38:\"better-messages-wc-vendors-integration\";s:5:\"title\";s:22:\"WC Vendors Integration\";s:11:\"environment\";i:0;s:4:\"icon\";N;s:15:\"default_plan_id\";s:5:\"14521\";s:5:\"plans\";i:14521;s:8:\"features\";N;s:17:\"money_back_period\";N;s:13:\"refund_policy\";N;s:24:\"annual_renewals_discount\";N;s:22:\"renewals_discount_type\";s:10:\"percentage\";s:11:\"is_released\";b:1;s:15:\"is_sdk_required\";b:1;s:18:\"is_pricing_visible\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:6:\"is_off\";b:0;s:24:\"is_only_for_new_installs\";b:0;s:14:\"installs_limit\";N;s:19:\"free_releases_count\";i:4;s:22:\"premium_releases_count\";i:0;s:17:\"accepted_payments\";i:0;s:7:\"plan_id\";s:1:\"0\";s:4:\"type\";s:6:\"plugin\";s:9:\"is_static\";b:0;s:10:\"public_key\";s:32:\"pk_81572487ef5c67b080edb79788813\";s:2:\"id\";s:4:\"8691\";s:7:\"created\";s:19:\"2021-07-10 14:54:00\";s:7:\"updated\";s:19:\"2023-06-03 16:31:06\";s:4:\"info\";O:8:\"stdClass\":13:{s:9:\"plugin_id\";s:4:\"8691\";s:3:\"url\";N;s:11:\"description\";s:224:\"<p>Integration with <a href=\"https://www.wordplus.org/wcvendors\" target=\"_blank\">WC Vendors</a> plugin.</p>\n\n<p>Allows connect sellers and buyers with private messaging system</p>\n\nhttps://www.youtube.com/watch?v=Z3h1UQ03wPE\";s:17:\"short_description\";s:34:\"Integration with WC Vendors plugin\";s:10:\"banner_url\";N;s:15:\"card_banner_url\";s:72:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/8691/card_banner.png\";s:15:\"selling_point_0\";s:0:\"\";s:15:\"selling_point_1\";s:0:\"\";s:15:\"selling_point_2\";s:0:\"\";s:11:\"screenshots\";O:8:\"stdClass\":3:{s:12:\"screenshot_0\";s:74:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/8691/screenshots/0.png\";s:12:\"screenshot_1\";s:74:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/8691/screenshots/1.png\";s:12:\"screenshot_2\";s:74:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/8691/screenshots/2.png\";}s:2:\"id\";s:4:\"2327\";s:7:\"created\";s:19:\"2021-07-30 09:34:28\";s:7:\"updated\";s:19:\"2021-11-03 22:08:47\";}s:12:\"premium_slug\";s:37:\"bp-better-messages-wc-vendors-premium\";}i:2;O:8:\"stdClass\":34:{s:16:\"parent_plugin_id\";s:4:\"1557\";s:12:\"developer_id\";s:4:\"1740\";s:8:\"store_id\";s:3:\"692\";s:10:\"install_id\";s:7:\"8425765\";s:4:\"slug\";s:32:\"better-messages-wcfm-integration\";s:5:\"title\";s:16:\"WCFM Integration\";s:11:\"environment\";i:0;s:4:\"icon\";N;s:15:\"default_plan_id\";s:5:\"15556\";s:5:\"plans\";i:15556;s:8:\"features\";N;s:17:\"money_back_period\";N;s:13:\"refund_policy\";N;s:24:\"annual_renewals_discount\";N;s:22:\"renewals_discount_type\";s:10:\"percentage\";s:11:\"is_released\";b:1;s:15:\"is_sdk_required\";b:1;s:18:\"is_pricing_visible\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:6:\"is_off\";b:0;s:24:\"is_only_for_new_installs\";b:0;s:14:\"installs_limit\";N;s:19:\"free_releases_count\";i:3;s:22:\"premium_releases_count\";i:0;s:17:\"accepted_payments\";i:0;s:7:\"plan_id\";s:1:\"0\";s:4:\"type\";s:6:\"plugin\";s:9:\"is_static\";b:0;s:10:\"public_key\";s:32:\"pk_197f39d30b61daddcecd3e59bc39c\";s:2:\"id\";s:4:\"9247\";s:7:\"created\";s:19:\"2021-10-30 06:14:13\";s:7:\"updated\";s:19:\"2023-06-03 10:25:17\";s:4:\"info\";O:8:\"stdClass\":13:{s:9:\"plugin_id\";s:4:\"9247\";s:3:\"url\";N;s:11:\"description\";s:198:\"<p>Integration with <a href=\"https://www.wordplus.org/wcfm\" target=\"_blank\">WCFM</a> plugin.</p>\n\n<p>Allows connect sellers and buyers with private messaging system</p>\n\nhttps://youtu.be/nuceECo08P4\";s:17:\"short_description\";s:28:\"Integration with WCFM plugin\";s:10:\"banner_url\";N;s:15:\"card_banner_url\";s:72:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/9247/card_banner.png\";s:15:\"selling_point_0\";N;s:15:\"selling_point_1\";N;s:15:\"selling_point_2\";N;s:11:\"screenshots\";O:8:\"stdClass\":3:{s:12:\"screenshot_0\";s:74:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/9247/screenshots/0.png\";s:12:\"screenshot_1\";s:74:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/9247/screenshots/1.png\";s:12:\"screenshot_2\";s:74:\"https://s3-us-west-2.amazonaws.com/freemius/plugins/9247/screenshots/2.jpg\";}s:2:\"id\";s:4:\"2448\";s:7:\"created\";s:19:\"2021-10-30 15:42:03\";s:7:\"updated\";s:19:\"2021-11-17 11:27:50\";}s:12:\"premium_slug\";s:31:\"bp-better-messages-wcfm-premium\";}}}s:7:\"created\";i:1685835037;s:9:\"timestamp\";i:1685921437;}s:65:\"get:/v1/users/7074272/plugins/1557/licenses.json?is_enriched=true\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":1:{s:8:\"licenses\";a:0:{}}s:7:\"created\";i:1685834985;s:9:\"timestamp\";i:1685921385;}s:74:\"get:/v1/installs/12247646/updates/latest.json?is_premium=false&readme=true\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":20:{s:9:\"plugin_id\";s:4:\"1557\";s:12:\"developer_id\";s:4:\"1740\";s:4:\"slug\";N;s:12:\"premium_slug\";s:28:\"bp-better-messages-websocket\";s:7:\"version\";s:6:\"2.1.11\";s:11:\"sdk_version\";s:5:\"2.5.8\";s:25:\"requires_platform_version\";s:5:\"5.9.0\";s:37:\"requires_programming_language_version\";s:3:\"7.1\";s:20:\"tested_up_to_version\";s:5:\"6.2.2\";s:8:\"has_free\";b:1;s:11:\"has_premium\";b:1;s:12:\"release_mode\";s:8:\"released\";s:5:\"limit\";N;s:7:\"uniques\";i:684;s:2:\"id\";s:5:\"57587\";s:7:\"created\";s:19:\"2023-05-30 19:34:45\";s:7:\"updated\";s:19:\"2023-05-31 20:33:24\";s:11:\"is_released\";b:0;s:3:\"url\";s:389:\"https://api.freemius.com/v1/installs/12247646/updates/57587.zip?is_premium=false&authorization=FSLA+12247646%3An_TXt-WcrF9NV5TtS6rgYnPStbwvWGcl7z9u7Yx-gZeYIngzdGXJpZDnBL0_gxnbzyKpGYOvnzJGYcNpei1a1yGdqO85URTATnZAElh5vNzq0RA3T9-Y2lKQmW4SJS1iJ4rjkvpEljW890L-Cbco4mIYaHND5R50N7yG_veXuMNTQRcvfAfp6LkZf_WPKwt00LPS017XYTDUEWXm-0JzFr6SLpVH7jKrUCoWyK765P1bYW-89lt1GzDuh6zLKk9ydaTyXeFWMFsJMEaLoRwC6A\";s:6:\"readme\";O:8:\"stdClass\":11:{s:4:\"name\";s:91:\"Better Messages – Live Chat for WordPress, BuddyPress, PeepSo, Ultimate Member, BuddyBoss\";s:4:\"slug\";s:18:\"bp-better-messages\";s:4:\"tags\";O:8:\"stdClass\":6:{s:10:\"BuddyPress\";s:10:\"BuddyPress\";s:15:\"Ultimate Member\";s:15:\"Ultimate Member\";s:15:\"private message\";s:15:\"private message\";s:4:\"chat\";s:4:\"chat\";s:9:\"messaging\";s:9:\"messaging\";s:8:\"messages\";s:8:\"messages\";}s:8:\"requires\";s:5:\"5.9.0\";s:12:\"requires_php\";s:3:\"7.1\";s:6:\"tested\";s:5:\"6.2.2\";s:10:\"stable_tag\";s:6:\"2.1.11\";s:8:\"sections\";O:8:\"stdClass\":5:{s:11:\"description\";s:6539:\"<p><strong>Better Messages</strong> – is <strong>realtime private messaging system for WordPress, BuddyPress, BuddyBoss Platform, Ultimate Member, PeepSo</strong> and any other WordPress powered websites.</p>\n\n<p>This private messages plugin packed with tons of features and settings to take engagement of your website users to the next level with <strong>realtime chat features</strong>, private <strong>video and audio call</strong>, <strong>group video calls</strong> and many other features.</p>\n\n<p>Live chat functionality allow creating chatrooms or just private conversations between website users.</p>\n\n<p>\"<strong>Better Messages</strong>\" plugin is formerly called \"<strong>BP Better Messages</strong>\".</p>\n\n<p><strong><a href=\"https://www.better-messages.com/\">More Info &amp; Demo &amp; Knowledge Base</a></strong></p>\n\n<p><strong><a href=\"https://www.wordplus.org/bm-translate/\">Translate Better Messages to your language</a></strong></p>\n\n<p>https://www.youtube.com/watch?v=WdsZb8SB0S8</p>\n\n<p><strong>Improved features comparing to standard system:</strong></p>\n\n<ul>\n<li>AJAX or WebSocket powered realtime conversations</li>\n<li>Reworked email notifications</li>\n<li>Fully new concept and design</li>\n<li>Files Uploading</li>\n<li>Embedded links with thumbnail, title, etc...</li>\n<li>Emoji selector (using jsdelivr CDN to serve EmojiOne)</li>\n<li>Messages deleting</li>\n<li>Messages editing</li>\n<li>oEmbed YouTube, Vimeo, VideoPress, Flickr, DailyMotion, Kickstarter, Meetup.com, Mixcloud, SoundCloud and more</li>\n<li>Message sound notification</li>\n<li>Whole site messages notifications (User will be notified anywhere with small notification window)</li>\n<li>Mass messaging feature</li>\n<li>Mentions feature</li>\n<li>Bad words filter</li>\n<li>Block user feature</li>\n<li>Reactions to messages</li>\n<li>Messages for BuddyPress Groups, PeepSo Groups, Ultimate Member Groups</li>\n<li>Chat Rooms</li>\n<li>Voice Messages (available as addon)</li>\n<li>Pinned conversations feature</li>\n</ul>\n\n<p><strong>And many more features not listed here and constantly expanding</strong></p>\n\n<p><strong>Supported features from standard messages system:</strong></p>\n\n<ul>\n<li>Private Conversations</li>\n<li>Multiple Users Conversations</li>\n<li>Subjects</li>\n<li>Searching</li>\n<li>Mark messages as favorite</li>\n</ul>\n\n<p><strong>Compatible plugins:</strong></p>\n\n<ul>\n<li><a href=\"https://wordpress.org/plugins/buddypress\">BuddyPress</a></li>\n<li><a href=\"https://wordpress.org/plugins/ultimate-member\">Ultimate Member</a></li>\n<li><a href=\"https://www.wordplus.org/peepso\">PeepSo</a></li>\n<li><a href=\"https://www.wordplus.org/profilegrid\">ProfileGrid</a></li>\n<li><a href=\"https://www.better-messages.com/docs/integrations/userswp/\">UsersWP</a></li>\n<li><a href=\"https://www.better-messages.com/docs/integrations/onesignal/\">OneSignal</a></li>\n<li><a href=\"https://www.better-messages.com/docs/integrations/wp-user-manager/\">WP User Manager</a></li>\n<li><a href=\"https://www.better-messages.com/docs/integrations/wpforo/\">wpForo</a></li>\n<li><a href=\"https://www.wordplus.org/knowledge-base/wc-vendors/\">WC Vendors</a></li>\n<li><a href=\"https://www.wordplus.org/knowledge-base/wcfm/\">WCFM</a></li>\n<li><a href=\"https://www.wordplus.org/knowledge-base/woocommerce-my-account/\">WooCommerce</a></li>\n<li><a href=\"https://www.wordplus.org/bpvm\">Verified Member for BuddyPress</a> - verified badges for users</li>\n<li><a href=\"https://www.wordplus.org/automatorwp\">AutomatorWP</a></li>\n<li><a href=\"https://www.wordplus.org/uncanny\">Uncanny Automator</a></li>\n<li><a href=\"https://www.wordplus.org/mc\">MyCRED</a> - charge for messages</li>\n<li><a href=\"https://www.wordplus.org/BSRB\">Block, Suspend, Report for BuddyPress</a> - allow users block each other</li>\n<li><a href=\"https://www.wordplus.org/youzer\">Youzer</a> (Youzify)</li>\n<li><a href=\"https://www.wordplus.org/pmpro\">Paid Memberships Pro</a></li>\n</ul>\n\n<p><strong>Tested themes:</strong></p>\n\n<ul>\n<li><a href=\"https://www.wordplus.org/buddyx\">BuddyX</a></li>\n<li><a href=\"https://www.wordplus.org/socialv\">SocialV</a></li>\n<li><a href=\"https://www.wordplus.org/gwangi\">Gwangi</a></li>\n<li><a href=\"https://www.wordplus.org/vikinger\">Vikinger</a></li>\n<li><a href=\"https://www.wordplus.org/cera\">Cera</a></li>\n<li><a href=\"https://www.wordplus.org/gorgo\">Gorgo</a></li>\n<li><a href=\"https://www.wordplus.org/beehive\">Beehive</a></li>\n<li><a href=\"https://www.wordplus.org/buddyboss\">BuddyBoss</a></li>\n</ul>\n\n<p><strong>Tested plugins:</strong></p>\n\n<ul>\n<li>LocoTranslate</li>\n<li>WPML</li>\n</ul>\n\n<p><strong>Feel free to report any incompatibility or request more plugin/theme integrations!</strong></p>\n\n<p><strong>WebSocket version:</strong></p>\n\n<p>WebSocket version is a paid option, you can get license key on our website.</p>\n\n<p>We are using our server to implement websockets communications between your site and users.</p>\n\n<p>Our websockets servers are completely private and do not store or track any private data.</p>\n\n<ul>\n<li><strong>Significantly</strong> reduces the load on your server</li>\n<li><strong>Instant</strong> conversations and notifications</li>\n<li><strong>NEW</strong> Video calls feature</li>\n<li><strong>NEW</strong> Audio calls feature</li>\n<li><strong>NEW</strong> Group Video Chats</li>\n<li><strong>NEW</strong> Group Audio Chats</li>\n<li><strong>NEW</strong> Screen Share feature</li>\n<li><strong>NEW</strong> Web Push feature</li>\n<li>Messages Delivery Status (sent, delivered, seen)</li>\n<li>Typing indicator (indicates if another participant writing message at the moment)</li>\n<li>Online indicator</li>\n<li>Works with shared hosting</li>\n<li>More features coming!</li>\n</ul>\n\n<p><a href=\"https://medium.com/@monica.lucarini28/is-websocket-a-game-changer-aeaef68d1fba\">Why WebSockets are a game-changer?</a></p>\n\n<p><strong><a href=\"https://www.wordplus.org/downloads/bp-better-messages/\">Get WebSocket version license key</a> | <a href=\"https://www.wordplus.org/end-user-license-agreement/\">Terms of Use</a></strong></p>\n\n<p>Languages:</p>\n\n<ul>\n<li>English</li>\n<li>Spanish</li>\n<li>Portuguese (Brazil)</li>\n<li>Russian</li>\n<li>Dutch</li>\n<li>Italiano</li>\n<li>Turkish</li>\n<li>Japanese</li>\n<li>Danish</li>\n<li>Korean <a href=\"https://profiles.wordpress.org/modelaid/\">@modelaid</a></li>\n</ul>\n\n<p>RTL Layout built in to plugin.</p>\n\n<p>You can translate plugin to your language with LocoTranslate or <a href=\"https://translate.wordpress.org/projects/wp-plugins/bp-better-messages/\">participate in plugin translation</a>.</p>\";s:12:\"installation\";s:322:\"<ol>\n<li>Upload the plugin files to the <code>/wp-content/plugins/bp-better-messages</code> directory, or install the plugin through the WordPress plugins screen directly.</li>\n<li>Activate the plugin through the \'Plugins\' screen in WordPress</li>\n<li>Use the Settings -> Better Messages to configure the plugin</li>\n</ol>\";s:3:\"faq\";s:123:\"<h4>Please visit KnowledgeBase</h4>\n\n<p><a href=\"https://www.better-messages.com/\">https://www.better-messages.com/</a></p>\";s:9:\"changelog\";s:33484:\"<h4>2.1.11</h4>\n\n<ul>\n<li>Emoji encoding for databases which not supports UTFMB4</li>\n<li>Fixed files uploading for guests users</li>\n<li>Minor bugfixes and improvements</li>\n</ul>\n\n<h4>2.1.10</h4>\n\n<ul>\n<li>Other: Added automatic conversion of database to utf8mb4 encoding to fix emojis at some installations</li>\n</ul>\n\n<h4>2.1.9</h4>\n\n<ul>\n<li>Other: Improved sync with BuddyPress/BuddyBoss Groups</li>\n<li>Other: Minor bugfixes and improvements</li>\n</ul>\n\n<h4>2.1.8</h4>\n\n<ul>\n<li>Compatibility: Improved user-agent recognition to fix issue with WPMobile.app and iPad devices</li>\n<li>Other: Minor bugfixes and improvements</li>\n</ul>\n\n<h4>2.1.7</h4>\n\n<ul>\n<li>Prevent already joined guest users to reply in chat rooms if the option is disabled in chat room settings</li>\n<li>Reviewed database creation logic to prevent issues in some hosting configurations</li>\n<li>Added debug info about database to Settings page</li>\n<li>Other: Minor bugfixes and improvements</li>\n</ul>\n\n<h4>2.1.6</h4>\n\n<ul>\n<li>Improvement: PeepSo Verified will members, will now also be displayed as verified in Better Messages</li>\n<li>Other: Minor bugfixes and improvements</li>\n</ul>\n\n<h4>2.1.4</h4>\n\n<ul>\n<li>Bugfix: Replaced regex expression which is unsupported in iOS 15 and older versions and caused issues with them</li>\n</ul>\n\n<h4>2.1.3</h4>\n\n<ul>\n<li>Added: Added option to enable/disable push notifications for group chats</li>\n<li>Improvement: Added/documented new possibilities for customization\n\n<ul>\n<li><a href=\"https://www.better-messages.com/docs/development/js-filters/better_messages_header_element/\">better_messages_header_element</a></li>\n<li><a href=\"https://www.better-messages.com/docs/development/js-filters/better_messages_footer_element/\">better_messages_footer_element</a></li>\n<li><a href=\"https://www.better-messages.com/docs/development/js-filters/better_messages_username_class/\">better_messages_username_class</a></li>\n</ul></li>\n<li>Other: Tuned words list for generation names for guests users</li>\n<li>Other: Many minor bugfixes and improvements</li>\n</ul>\n\n<h4>2.1.2</h4>\n\n<ul>\n<li>Added: Integration with OneSignal Push Notifications plugin (only WebSocket version)\n\n<ul>\n<li><a href=\"https://www.better-messages.com/docs/integrations/onesignal/\">How to configure OneSignal</a></li>\n</ul></li>\n<li>Other: Tuned logic of generation names for guests users</li>\n<li>Other: Optimized logic for push notifications to allow easy 3rd party integration (only WebSocket version)</li>\n</ul>\n\n<h4>2.1.1</h4>\n\n<ul>\n<li>Other: Not load scripts for un-logged in users when its not needed</li>\n</ul>\n\n<h4>2.1.0</h4>\n\n<ul>\n<li>New feature: Guest access for chat rooms</li>\n<li>Other: Many changes in plugin code logic to support guest users</li>\n<li>Other: Minor bugfixes and improvements</li>\n</ul>\n\n<h4>2.0.110 - 2.0.114</h4>\n\n<ul>\n<li>Maintenance update: Multiple minor enhancements, performance improvements and bugfixes</li>\n</ul>\n\n<h4>2.0.109</h4>\n\n<ul>\n<li>Improvement: Avatars in messages list are now sticky</li>\n<li>Improvement: Dates in messages list are now sticky on scroll</li>\n<li>Improvement: New moderation features for Chat Rooms\n\n<ul>\n<li>Mute user - temporary mute user from writing in the chat room</li>\n<li>Ban user - temporary ban user from joining the chat room</li>\n<li>Added filter to participant list to filter muted &amp; banned users</li>\n</ul></li>\n<li>Other: Minor bugfixes and improvements</li>\n</ul>\n\n<h4>2.0.108</h4>\n\n<ul>\n<li>Bugfix: Fixed memory leak under specific conditions</li>\n<li>Other: Minor optimizations of the plugin</li>\n</ul>\n\n<h4>2.0.106</h4>\n\n<ul>\n<li>Improvement: Sync with new BuddyBoss Notifications settings in user profile</li>\n<li>Improvement: BuddyBoss App push notifications support</li>\n<li>Improvement: Tuned message context menu logic on mobile devices</li>\n<li>Improvement: Minor tuning of conversation context menu logic</li>\n<li>Improvement: Added/documented new possibilities for developers\n\n<ul>\n<li><a href=\"https://www.better-messages.com/docs/development/js-filters/better_messages_participants_list_after/\">better_messages_participants_list_after</a></li>\n</ul></li>\n<li>Other: Moved Freemius SDK to vendors folder</li>\n<li>Other: Added option to reinstall database table to plugin settings</li>\n<li>Other: Minor bugfixes and improvements</li>\n</ul>\n\n<h4>2.0.105</h4>\n\n<ul>\n<li>Improvement: Added option to Pin Conversations to top of conversation list</li>\n<li>Other: Minor bugfixes and improvements</li>\n</ul>\n\n<h4>2.0.103 - 2.0.104</h4>\n\n<ul>\n<li>Change: Replaced delete button in conversations list with three dots context menu</li>\n<li>Improvement: Added right click menu to conversations list</li>\n<li>Improvement: Making ready for BP Rewrite update</li>\n<li>Other: Tuned Emoji Picker position in full screen view</li>\n<li>Improvement: Added basic filter by sender ID to messages viewer</li>\n<li>Improvement: Added new functions for developers\n\n<ul>\n<li><a href=\"https://www.better-messages.com/docs/development/js-functions/miniChatClose\">miniChatClose</a></li>\n<li><a href=\"https://www.better-messages.com/docs/development/js-functions/miniChatOpen\">miniChatOpen</a></li>\n<li><a href=\"https://www.better-messages.com/docs/development/js-functions/openChatWithUser\">openChatWithUser</a></li>\n</ul></li>\n<li>Improvement: Added new filter for developers better_messages_search_user_results</li>\n<li>Improvement: Added new filter for developers better_messages_search_messages_results</li>\n<li>Improvement: Added option to hide \"Tap to open\" Message for mobile mode</li>\n<li>Other: Added support for AutomatorWP - Schedule Actions</li>\n<li>Other: Minor bugfixes and improvements</li>\n</ul>\n\n<h4>2.0.102</h4>\n\n<ul>\n<li>Improvement: Added option to select popup notification position on mobile devices</li>\n<li>Improvement: Added/documented new possibilities for developers\n\n<ul>\n<li><a href=\"https://www.better-messages.com/docs/development/js-filters/better_messages_single_message_class\">better_messages_single_message_class</a></li>\n</ul></li>\n<li>Other: Added better_messages_user_file_uploaded action for developers</li>\n<li>Other: Minor bugfixes and improvements</li>\n</ul>\n\n<h4>2.0.100</h4>\n\n<ul>\n<li>Other: Added better_messages_filter_message_content_overwrite filter for developers</li>\n<li>Other: Added integration with Youzify Verified Profile</li>\n<li>Other: Added option to disable syncing of opened mini chats between browser tabs</li>\n<li>Bugfix: Some emojis was not displayed properly in Reactions Picker</li>\n<li>Other: Minor bugfixes and improvements</li>\n</ul>\n\n<h4>2.0.98</h4>\n\n<ul>\n<li>Change: Remove email notifications setting from user settings if emails are disabled</li>\n<li>Change: Tuned position of private messages button in Ultimate Member profile on mobile devices</li>\n<li>Change: better_messages_messages_list_before JS hook now also works in mini chats</li>\n<li>Other: Do not show last active time if user was never logged in</li>\n</ul>\n\n<h4>2.0.97</h4>\n\n<ul>\n<li>Improvement: Improved handling of errors and restrictions displaying</li>\n<li>CSS: Added font-weight:normal to better messages styles as some websites showed interface in bold font</li>\n<li>Other: Optimized scripts loading in WP Admin</li>\n</ul>\n\n<h4>2.0.96</h4>\n\n<ul>\n<li>Maintenance update: Minor bugfixes and improvements</li>\n</ul>\n\n<h4>2.0.95</h4>\n\n<ul>\n<li>Improvement: Added new hook for developers \'better_messages_register_call_usage\'</li>\n<li>Improvement: Tuned login button styling for the chat room</li>\n<li>Other: Resolved Rest API incompatibility with LearnPress</li>\n<li>Fix: Disable user settings option</li>\n<li>Other: Minor CSS Improvements</li>\n</ul>\n\n<h4>2.0.94</h4>\n\n<ul>\n<li>Bugfix: Deleted users in PeepSo was displaying wrong name</li>\n<li>Bugfix: MyCred charged for new thread creation when it\'s not needed</li>\n</ul>\n\n<h4>2.0.93</h4>\n\n<ul>\n<li>Improvement: Added new shortcode\n\n<ul>\n<li><a href=\"https://www.better-messages.com/docs/shortcodes/better_messages_single_conversation/\">better_messages_single_conversation</a></li>\n</ul></li>\n<li>Other: Minor bugfixes and improvements</li>\n</ul>\n\n<h4>2.0.92</h4>\n\n<ul>\n<li>Maintenance update: Minor bugfixes and improvements</li>\n</ul>\n\n<h4>2.0.89 - 2.0.90</h4>\n\n<ul>\n<li>Improvement: Added <a href=\"https://www.better-messages.com/docs/integrations/automatorwp/\">initial integration</a> with <a href=\"https://www.wordplus.org/automatorwp\">AutomatorWP</a>, which allows to send private message on various number of custom triggers</li>\n<li>Improvement: Added <a href=\"https://www.better-messages.com/docs/integrations/uncanny-automator/\">initial integration</a> with <a href=\"https://www.wordplus.org/uncanny\">Uncanny Automator</a>, which allows to send private message on various number of custom triggers</li>\n<li>Change: Refactor messages_message_sent to better_messages_message_sent hook to avoid conflict with some plugins</li>\n<li>Change: Refactored message hooks to avoid conflict with some plugins</li>\n<li>Change: Reviewed media codecs used for private video calls to improve quality of calls on some devices</li>\n<li>Fallback to BuddyPress messages_new_message function is now optional and needs to be enabled in plugin settings if needed</li>\n<li>Other: Minor bugfixes and improvements</li>\n</ul>\n\n<h4>2.0.88</h4>\n\n<ul>\n<li>Improvement: Added fallback to BuddyPress messages_new_message function</li>\n<li>Improvement: Improved handling of devices without free storage space</li>\n<li>Improvement: Improved preloading logic for threads list</li>\n<li>Bugfix: Fixed name/avatar of caller in push notifications</li>\n<li>Other: Minor bugfixes and improvements</li>\n</ul>\n\n<h4>2.0.86 - 2.0.87</h4>\n\n<ul>\n<li>Improvement: Workaround for firefox bug to make mentions work</li>\n<li>Improvement: Redirection to chat page from login form</li>\n<li>Bugfix: Modals now visible when chat is expanded to full window</li>\n<li>Other: Minor bugfixes and improvements</li>\n</ul>\n\n<h4>2.0.85</h4>\n\n<ul>\n<li>Bugfix: Fixed file uploading</li>\n<li>Change: Do not auto open chat rooms in full screen at mobile devices</li>\n</ul>\n\n<h4>2.0.82 - 2.0.84</h4>\n\n<ul>\n<li>Many changes and optimizations in Better Messages core engine to improve stability at some devices and optimize CPU load generally</li>\n<li>Bugfix: Users was not removed from blocklist when unblocked in the settings page</li>\n</ul>\n\n<h4>2.0.80 - 2.0.81</h4>\n\n<ul>\n<li>Improvement: Chat room login button will redirect to chat room</li>\n<li>Improvement: Mentions of currently logged-in user is now bold to make them more noticeable</li>\n<li>Improvement: Replies to messages now also possible with Voice Messages</li>\n<li>Improvement: Added/documented new possibilities for developers\n\n<ul>\n<li><a href=\"https://www.better-messages.com/docs/development/js-filters/better_messages_send_button_after/\">better_messages_send_button_after</a></li>\n</ul></li>\n<li>Improvement: Improved multiline paste</li>\n<li>Other: Many code level logic optimizations, which should improve performance at some devices</li>\n<li>Other: Fixed few strings translation domain</li>\n<li>Other: Minor bugfixes and improvements</li>\n</ul>\n\n<h4>2.0.78 - 2.0.79</h4>\n\n<ul>\n<li>Change: Scrollbar now visible on desktop devices when moving over scrolling area (some users cant scroll without scrollbar on desktop)</li>\n<li>Improvement: Performance optimizations</li>\n<li>Improvement: Improved compatibility with old devices</li>\n<li>Improvement: Improved compatibility when indexedDB is not available</li>\n</ul>\n\n<h4>2.0.77</h4>\n\n<ul>\n<li>Improvement: Improved compatibility with screen readers</li>\n<li>Improvement: Improved compatibility with BuddyPress notifications</li>\n<li>Improvement: Improved compatibility with mobile devices when Mobile mode is disabled</li>\n<li>Improvement: Minor improvements to initial messages loading logic</li>\n<li>Improvement: Minor improvements to delivery messages and statuses logic</li>\n<li>Improvement: Optimized clearing and deletion of conversations process</li>\n<li>Bugfix: Fixed few deprecations and php notices</li>\n</ul>\n\n<h4>2.0.76</h4>\n\n<ul>\n<li>Improvement: Full compatibility with WordPress translation system\n\n<ul>\n<li><a href=\"https://www.wordplus.org/bm-translate/\">Translate Better Messages to Your Language</a></li>\n</ul></li>\n<li>Improvement: Updated many backend strings with comments for easier translation</li>\n<li>Bugfix: Fixed Audio/Video Call buttons for mini widgets in Better Messages settings -> Widgets -> Mini Chats setting.</li>\n<li>Other: Changed few secondary translation strings to keep consistency between translations naming</li>\n</ul>\n\n<h4>2.0.75</h4>\n\n<ul>\n<li>Improvement: Close reactions and message status detailed list modals on outside clicks</li>\n<li>Improvement: Added/documented new possibilities for developers\n\n<ul>\n<li><a href=\"https://www.better-messages.com/docs/development/php-actions/better_messages_message_sent/\">better_messages_message_sent</a></li>\n</ul></li>\n<li>Improvement: Do not send additional requests when conversation is already synced to save web hosting server resources</li>\n<li>Improvement (WebSocket only): Improved push subscriptions save logic to avoid additional requests</li>\n<li>Improvement/Bugfix: Allowed HTML in restriction messages</li>\n<li>Bugfix: Removed excess div from get_conversation_layout function</li>\n<li>Bugfix: Fixed \"Missed audio call\" string (not appeared in translations)</li>\n<li>Other: Other CSS improvements</li>\n</ul>\n\n<h4>2.0.74</h4>\n\n<ul>\n<li>Improvement: Added option to enable Detailed Reactions List to plugin settings. This feature allow to see who put reactions on the specific message.</li>\n<li>Improvement: Added/documented new possibilities for developers\n\n<ul>\n<li><a href=\"https://www.better-messages.com/docs/development/js-filters/better_messages_messages_list_before/\">better_messages_messages_list_before</a></li>\n</ul></li>\n<li>Improvement: Improved behaviour when user removed from chat room</li>\n<li>Improvement (WebSocket only): Improved sync with WebSocket servers</li>\n<li>Bugfix: Fixed favorited page layout when using standard layout</li>\n</ul>\n\n<h4>2.0.73</h4>\n\n<ul>\n<li>Improvement: Added basic integration with <a href=\"https://www.better-messages.com/docs/integrations/wpforo/\">wpForo</a></li>\n<li>Improvement: Added option how to handle deleted conversations to plugin settings, please check plugin settings under Messages tab to learn</li>\n<li>Improvement: Added avatars fallback when no avatar available</li>\n<li>Bugfix: Fixed displaying of conversation with deleted user</li>\n<li>Bugfix: Chat Room was not working properly in some specific cases</li>\n<li>Other: Other CSS improvements</li>\n</ul>\n\n<h4>2.0.72</h4>\n\n<ul>\n<li>Improvement (WebSocket only): Added option to enable Detailed Messages Status in group conversations to plugin settings. This feature allow to see who seen the message in group conversations.</li>\n<li>Improvement: Added/documented new possibilities for developers\n\n<ul>\n<li>get_thread_type filter</li>\n</ul></li>\n<li>Bugfix/Improvement: Open member profile button does not show in mini chat anymore if there is no profile</li>\n<li>Bugfix: Fixed Voice Messages button not displaying in some cases on mobile</li>\n<li>Bugfix: Fixed Voice Messages notifications in emails</li>\n<li>Bugfix: Fixed mobile button margin bottom settings</li>\n<li>Other: Other CSS improvements</li>\n</ul>\n\n<h4>2.0.71</h4>\n\n<ul>\n<li>Bugfix: CSS Fix: Mobile floating icon color in dark mode</li>\n</ul>\n\n<h4>2.0.70</h4>\n\n<ul>\n<li>Improvement: Improved compatibility with BuddyX theme</li>\n<li>Improvement: Improved compatibility with old iOS 13</li>\n<li>Improvement (WebSocket only): Added option to show message statuses in conversations list to plugin settings</li>\n<li>Improvement (WebSocket only): Improved private calls behaviour. (Users now can start &amp; accept call in the same page instead of being redirected to user inbox)</li>\n<li>Improvement (WebSocket only): Improvement server sync when creating new conversation</li>\n<li>Bugfix/Improvement: Improved detection of mobile devices</li>\n</ul>\n\n<h4>2.0.69</h4>\n\n<ul>\n<li>Improvement: Playing message notification sound only if conversation is not visible</li>\n<li>Improvement (WebSocket only): Faster and more smooth message status delivery</li>\n<li>Improvement: Added/documented new possibilities for developers\n\n<ul>\n<li><a href=\"https://www.better-messages.com/docs/development/php-filters/better_messages_login_url/\">better_messages_login_url</a></li>\n</ul></li>\n<li>Bugfix/Improvement: Correctly handling screen orientation change on mobile</li>\n<li>Other: Other CSS improvements</li>\n</ul>\n\n<h4>2.0.68</h4>\n\n<ul>\n<li>Improvement: Added conversation subject to onsite notification popups</li>\n<li>Improvement: Admin can see all participants when seeing other user conversation</li>\n<li>Improvement: Admin option to set onsite notifications position to plugin settings</li>\n<li>Improvement: Added close all button to onsite notifications stack, if more than 2 messages shown</li>\n<li>Improvement: Added/documented new possibilities for developers\n\n<ul>\n<li><a href=\"https://www.better-messages.com/docs/development/js-actions/better_messages_chat_room_join/\">better_messages_chat_room_join</a></li>\n<li><a href=\"https://www.better-messages.com/docs/development/js-actions/better_messages_chat_room_leave/\">better_messages_chat_room_leave</a></li>\n</ul></li>\n<li>Bugfix: Fixed desktop devices with touch screens</li>\n<li>Bugfix: Mini widgets close button was not showing in AJAX version</li>\n<li>Bugfix: Fixed console error when push notifications are disabled</li>\n<li>Bugfix: Avoided critical error under some conditions</li>\n<li>Other: Other minor UX/CSS improvements</li>\n</ul>\n\n<h4>2.0.67</h4>\n\n<ul>\n<li>Improvement: Removed reply button if user has no permission to write new messages in conversation</li>\n<li>Improvement: Bulk message page enter now create new line on enter</li>\n<li>Improvement: Added fallback to get_threads function, which is not used anymore by plugin</li>\n<li>Improvement: Added/documented new functions for developers\n\n<ul>\n<li><a href=\"https://www.better-messages.com/docs/development/php-functions/get_unique_conversation_id\">get_unique_conversation_id</a></li>\n</ul></li>\n<li>Improvement: Shortcodes documentation and improvements\n\n<ul>\n<li><a href=\"https://www.better-messages.com/docs/shortcodes/better_messages\">better_messages</a></li>\n<li><a href=\"https://www.better-messages.com/docs/shortcodes/better_messages_mini_chat_button\">better_messages_mini_chat_button</a></li>\n<li><a href=\"https://www.better-messages.com/docs/shortcodes/better_messages_my_messages_url\">better_messages_my_messages_url</a></li>\n<li><a href=\"https://www.better-messages.com/docs/shortcodes/better_messages_unread_counter\">better_messages_unread_counter</a></li>\n<li><a href=\"https://www.better-messages.com/docs/shortcodes/better_messages_pm_button\">better_messages_pm_button</a></li>\n<li><a href=\"https://www.better-messages.com/docs/shortcodes/better_messages_audio_call_button\">better_messages_audio_call_button</a></li>\n<li><a href=\"https://www.better-messages.com/docs/shortcodes/better_messages_video_call_button\">better_messages_video_call_button</a></li>\n</ul></li>\n<li>Bugfix: Fixed participants button was not shown in chat rooms sometimes</li>\n<li>Bugfix: Fixed mentions on iOS</li>\n<li>Other: Improved local database errors handling</li>\n<li>Other: Changed class .info to .bm-info to avoid conflicts with some themes.</li>\n</ul>\n\n<h4>2.0.66</h4>\n\n<ul>\n<li>Improvement: Added placeholder for the messages container</li>\n<li>Improvement: Added better placeholder for conversations list</li>\n<li>Improvement: Added better placeholder for friends and groups lists</li>\n<li>Improvement: Moving scripts to header for faster initialization</li>\n<li>Improvement: Added option what to show under username in private conversations (Online indicator, Subject or Nothing) to WP Customizer</li>\n<li>Improvement: Improved some SQL queries for better performance in huge websites</li>\n</ul>\n\n<h4>2.0.65</h4>\n\n<ul>\n<li>Improvement: PeepSo Integration: Added header messages popup</li>\n<li>Improvement: Ultimate Member Integration: Added header messages to UM theme</li>\n<li>Improvement: Added option to never delete uploaded attachments</li>\n<li>Improvement: Added option to place mini widgets at left side to WP Customizer</li>\n<li>Improvement: Added option to remove date labels in messages list to WP Customizer</li>\n<li>Improvement: Added option to make message window rounded to WP Customizer</li>\n<li>Improvement: Added option to make mini widgets and buttons inside rounded to WP Customizer</li>\n<li>Improvement: Hide messages from blocked users in conversations list</li>\n<li>Improvement: Added/documented new functions\n\n<ul>\n<li><a href=\"https://www.better-messages.com/docs/development/js-functions/openNewConversationWidget\">openNewConversationWidget</a></li>\n</ul></li>\n</ul>\n\n<h4>2.0.64</h4>\n\n<ul>\n<li>Improvement: Automatically truncate message content to 50 characters in conversation list</li>\n<li>Improvement: Added/documented new functions and filters requested by developers\n\n<ul>\n<li><a href=\"https://www.better-messages.com/docs/development/php-functions/new_message/\">new_message</a></li>\n<li><a href=\"https://www.better-messages.com/docs/development/php-filters/better_messages_can_send_message/\">better_messages_can_send_message</a></li>\n<li><a href=\"https://www.better-messages.com/docs/development/php-actions/better_messages_before_message_send/\">better_messages_before_message_send</a></li>\n<li><a href=\"https://www.better-messages.com/docs/development/php-functions/get_private_conversation_id/\">get_private_conversation_id</a></li>\n<li><a href=\"https://www.better-messages.com/docs/development/php-actions/better_messages_before_new_thread/\">better_messages_before_new_thread</a></li>\n</ul></li>\n<li>Improvement: Automatically rerender on initial emoji initialization</li>\n<li>Improvement: Minor improvements to GIF selector logic</li>\n<li>Improvement: Other minor CSS improvements</li>\n<li>Bugfix: Fixed more GIFs lazy loading when using search</li>\n<li>Bugfix: Fixed PHP warning on searching of Stickers when results are empty</li>\n<li>Bugfix: Removed miniFriends, miniGroups PHP warnings</li>\n</ul>\n\n<h4>2.0.63</h4>\n\n<ul>\n<li>Improvement: Avatars in conversations list are not more clickable on mobile</li>\n<li>Improvement: Added new function for developers <a href=\"https://www.better-messages.com/docs/development/php-functions/get_user_conversation_url\">get_user_conversation_url</a></li>\n<li>Improvement: Improved CSS to avoid conflicts with some plugins at new conversations screen</li>\n<li>Improvement: Improved message which contains only files will show placeholder while attachments are loading</li>\n<li>Improvement: Fixed uploading of WebP images if they are sending as JPG</li>\n<li>Improvement: Improved file uploader errors handling</li>\n<li>Improvement: Other minor CSS improvements</li>\n<li>Bugfix: Mini Widgets container do not show anymore without widgets enabled</li>\n</ul>\n\n<h4>2.0.62</h4>\n\n<ul>\n<li>Improvement: Added option where to show messages sent date (at the message itself or at the start of messages stack) to WP Customizer</li>\n<li>Improvement: Added option to control where to show or hide avatars in messages list to WP Customizer</li>\n<li>Improvement: Minor ux improvement on context menu three dots click</li>\n<li>Translations: Fixed wrong string for user unblock popup</li>\n<li>Improvement: Possible to add /?openFullScreen to messages page url, and it will be opened in full screen mode automatically</li>\n<li>Improvement: Added hooks and functions which allow to implement any custom realtime functionality using WebSocket servers:\n\n<ul>\n<li><a href=\"https://www.better-messages.com/docs/development/js-actions/better_messages_realtime_event\">better_messages_realtime_event</a></li>\n<li><a href=\"https://www.better-messages.com/docs/development/php-functions/send_realtime_event\">send_realtime_event</a></li>\n</ul></li>\n</ul>\n\n<h4>2.0.61</h4>\n\n<ul>\n<li>Improvement: Added basic integration with WP User Manager: https://www.better-messages.com/docs/integrations/wp-user-manager/</li>\n<li>Improvement: Added basic integration with UsersWP: https://www.better-messages.com/docs/integrations/userswp/</li>\n<li>Bugfix: Group Chats with avatars disabled displaying in proper width</li>\n<li>Bugfix: Fixed mobile view wrong view positioning when mobile Full Screen Mode is disabled</li>\n<li>Bugfix: Added missing translation string for Group Online Participant</li>\n<li>Other: Updated Freemius SDK to the latest version</li>\n</ul>\n\n<h4>2.0.60</h4>\n\n<ul>\n<li>Improvement: Added option to hide avatars from group chats to WP Customizer</li>\n<li>Improvement: Clicking on friends in mobile view does not redirect to other page anymore</li>\n<li>Improvement: Added call and video icons to BuddyBoss profile</li>\n<li>Improvement: Added new function for devs: https://www.better-messages.com/docs/development/php-functions/create_conversation_link/</li>\n<li>Improvement: Added basic integration with ProfileGrid: https://www.better-messages.com/docs/integrations/profile-grid/</li>\n<li>Bugfix: Removed rest request to unexisting endpoint when no words black list is active</li>\n<li>Bugfix: Admin received more messages than it should</li>\n</ul>\n\n<h4>2.0.59</h4>\n\n<ul>\n<li>Improvement: Bad words list now saved in local DB for better performance</li>\n<li>Bugfix: Fixed bug with translation files generator</li>\n<li>Bugfix: Fixed settings pages created a lot of /// characters in some cases</li>\n<li>Bugfix: Fixed logical issue with copy text button</li>\n</ul>\n\n<h4>2.0.56 - 2.0.58</h4>\n\n<ul>\n<li>Improvement: Returned admin functions for other conversations</li>\n<li>Improvement: Added copy text option to message context menu</li>\n<li>Improvement: Added block user button to conversation participant list</li>\n<li>Improvement: Listing online users first in conversation participant list</li>\n<li>Improvement: Added lazy rendering to conversation participant list to handle very long lists with no lags</li>\n<li>Improvement: Listing online users first in friends list</li>\n<li>Improvement: Added tooltip background and text colors configuration to WP Customizer</li>\n<li>Improvement: Do not open context when clicking on video or audio, so it`s possible to download</li>\n<li>Improvement: Fallback to use of RAM if device has no free storage space</li>\n<li>Improvement: Added support for older iOS devices</li>\n<li>Improvement: Added nocache header for rest api requests</li>\n<li>Improvement: Performance optimizations</li>\n<li>Bugfix: Messages statuses can be hidden now</li>\n</ul>\n\n<h4>2.0.55</h4>\n\n<ul>\n<li>Improvement: Few translations strings grammar was improved (if you\'re using translation you will need to translate this strings again)</li>\n<li>Improvement: Hide mobile close button when using in BB App WebView fallback</li>\n<li>Improvement: Added fallbacks to be compatible with BP Registration options after update</li>\n<li>Improvement: Adding javascript hooks for developers</li>\n<li>Improvement: Starting to javascript hooks for customization: https://www.better-messages.com/docs/category/customization</li>\n<li>Improvement: Added initial height for chat rooms and group chats</li>\n<li>Improvement: Removed initial animation in chat rooms and groups</li>\n<li>Improvement: Minor CSS improvements</li>\n<li>Improvement: New Better Messages homepage and documentation: https://www.better-messages.com/</li>\n<li>Bugfix: Attachment was not sending when pressing enter</li>\n</ul>\n\n<h4>2.0.53 - 2.0.54</h4>\n\n<ul>\n<li>Improvement: Message editor should now correctly support all languages autocompletion</li>\n<li>Improvement: Message editor should now correctly support \"Firefox for Android\" keyboard</li>\n<li>Improvement: Added ability to message same conversation in private threads (if exists)</li>\n<li>Improvement: Added translation strings for emoji picker</li>\n<li>Improvement: Emoji data now loaded even if BuddBoss Rest Api is restricted</li>\n<li>Improvement: Reduced JS file size</li>\n<li>Bugfix: Group conversation starter could not kick members</li>\n</ul>\n\n<h4>2.0.52</h4>\n\n<ul>\n<li>Improvement: Improved text formatting tooltip styling</li>\n<li>Improvement: Slightly tuned unread conversation logic</li>\n<li>Bugfix: Fixed plugin contact us form</li>\n<li>Bugfix: Ultimate Member group avatars now displayed correctly</li>\n</ul>\n\n<h4>2.0.47 - 2.0.51</h4>\n\n<ul>\n<li>Improvement: Translations can work from plugin folder as well</li>\n<li>Improvement: Improved compatibility with some optimization plugins</li>\n<li>Improvement: Added missing participants count in group chats at ajax version</li>\n<li>Improvement: Added files to messages viewer</li>\n<li>Improvement: Added button to download files in images lightbox</li>\n<li>Improvement: Added date radius setting to WP Customizer</li>\n<li>Improvement: Ensure version is exists in scripts tag to avoid cache issues</li>\n<li>Improvement: Added checks and fallbacks if wrong browser locale provided</li>\n<li>Improvement: Fallback BP_Better_Messages class</li>\n<li>Improvement: Fallback BP_Better_Messages_Hooks class</li>\n<li>Bugfix: Fixed translation issues</li>\n<li>Bugfix: Fixed file uploading when replying to message</li>\n<li>Bugfix: Removed usage of wp_cache_delete_multiple to support older WP versions</li>\n<li>Other bugfixes and improvements</li>\n</ul>\n\n<h4>2.0.42 - 2.0.46</h4>\n\n<ul>\n<li>Improvement: Do not show tooltips on avatars and usernames if there is no profile url</li>\n<li>Improvement: Added polyfill to str_ends_with function when using with old WP versions</li>\n<li>Improvement: Images lightbox does not require CORS headers anymore</li>\n<li>Improvement: Automatically authorization token in case of expiration</li>\n<li>Improvement: Added avatar radius setting to WP Customizer</li>\n<li>Improvement: Added RTL Support</li>\n<li>Improvement: Emoticons to emojis conversion</li>\n<li>Bugfix: New conversation button in mini messages now redirects to correct page when mini chats are disabled</li>\n<li>Bugfix: New chat room could not be loaded properly</li>\n<li>Bugfix: Logged-out user couldn\'t access chat room</li>\n<li>Bugfix: Sound notifications were played when not needed in some cases</li>\n<li>Bugfix: Added scroller to user settings page</li>\n<li>Other bugfixes and improvements</li>\n</ul>\n\n<h4>2.0.41</h4>\n\n<ul>\n<li>Fixed critical error in BuddyPress Group Chat</li>\n</ul>\n\n<h4>2.0.40</h4>\n\n<ul>\n<li>Initial public release of Better Messages 2.0</li>\n<li>Other improvements</li>\n</ul>\n\n<h4>2.0.38</h4>\n\n<ul>\n<li>Admin can always search within all users</li>\n<li>Hiding non friends from search suggestions if only friends mode is enabled</li>\n<li>More tunes to users search logic</li>\n<li>Reviewed MyCred integration</li>\n<li>Added back icons to messages which displaying missed and past calls</li>\n<li>Fixed messages placeholders displayed wrongly in some cases</li>\n<li>Other improvements</li>\n</ul>\n\n<h4>2.0.35</h4>\n\n<ul>\n<li>Added typing indicators to mini chats</li>\n<li>Added participants number to mini chats</li>\n<li>Fixed muted conversations triggered sound notifications</li>\n<li>Improved search users logic</li>\n<li>Added all additional controls to mini chats</li>\n<li>Some other CSS improvements</li>\n</ul>\n\n<h4>2.0.34</h4>\n\n<ul>\n<li>Reviewed on site notifications position logic</li>\n<li>Fixed not all messages loaded in conversation sometimes</li>\n<li>Fixed camera/mic in call was not possible to switch</li>\n<li>Some performance optimizations</li>\n<li>Many other small but important bugfixes and improvements</li>\n</ul>\n\n<h4>2.0.33</h4>\n\n<ul>\n<li>Added images lightbox</li>\n<li>Started work on mobile app version</li>\n<li>Other bugfixes and improvements</li>\n</ul>\n\n<h4>2.0.32</h4>\n\n<ul>\n<li>Android jumping keyboard issue should be fixed</li>\n<li>Added loading indicator to the threads list</li>\n</ul>\n\n<h4>2.0.31</h4>\n\n<ul>\n<li>This update targeted to fix Android Keyboard issues</li>\n<li>Some other CSS improvements</li>\n</ul>\n\n<h4>2.0.30</h4>\n\n<ul>\n<li>Added back proposal to subscribe to push notifications</li>\n<li>Removed HTML tags &amp; correctly displaying Emojies in local notifications</li>\n<li>Fixed lazy loading in Friends List</li>\n<li>Added back search in friends and groups list</li>\n</ul>\n\n<h4>2.0.29</h4>\n\n<ul>\n<li>This update targeted to fix Android Keyboard issues</li>\n<li>Updated Freemius SDK</li>\n</ul>\n\n<h4>2.0.28</h4>\n\n<ul>\n<li>Added many customization options to WP Customizer</li>\n<li>Added built-in dark mode</li>\n<li>Many bugfixes and improvements</li>\n</ul>\n\n<h4>2.0.27</h4>\n\n<ul>\n<li>Returned settings button in mobile view when bottom tabs are activated</li>\n<li>Making it work properly with Google Translate</li>\n<li>Every time settings are saved, client side database will be completely refreshed</li>\n</ul>\n\n<h4>2.0.26</h4>\n\n<ul>\n<li>Improved browser database syncing</li>\n<li>Improved UX to avoid sending multiple messages when sending attachments</li>\n</ul>\n\n<h4>2.0.25</h4>\n\n<ul>\n<li>Android keyboard fixes</li>\n<li>Fixed emojies conflict on mobile keyboards</li>\n<li>Added small avatar to conversation list for multiple participants conversations</li>\n<li>Other bugfixes and improvements</li>\n</ul>\n\n<h4>2.0.24</h4>\n\n<ul>\n<li>MySQL Query Performance fix</li>\n</ul>\n\n<h4>2.0.23</h4>\n\n<ul>\n<li>Added bulk messages back</li>\n<li>Bugfixes and improvements</li>\n</ul>\n\n<h4>2.0.1 - 2.0.22</h4>\n\n<ul>\n<li>Bugfixes and improvements</li>\n</ul>\n\n<h4>2.0.0</h4>\n\n<ul>\n<li>Initial Beta Release</li>\n</ul>\";s:11:\"screenshots\";s:0:\"\";}s:14:\"upgrade_notice\";s:101:\"Added guest access for chat rooms. Many changes in plugin backend logic to support guest users access\";s:7:\"version\";s:6:\"2.1.11\";s:13:\"download_link\";s:389:\"https://api.freemius.com/v1/installs/12247646/updates/57587.zip?is_premium=false&authorization=FSLA+12247646%3An_TXt-WcrF9NV5TtS6rgYnPStbwvWGcl7z9u7Yx-gZeYIngzdGXJpZDnBL0_gxnbzyKpGYOvnzJGYcNpei1a1yGdqO85URTATnZAElh5vNzq0RA3T9-Y2lKQmW4SJS1iJ4rjkvpEljW890L-Cbco4mIYaHND5R50N7yG_veXuMNTQRcvfAfp6LkZf_WPKwt00LPS017XYTDUEWXm-0JzFr6SLpVH7jKrUCoWyK765P1bYW-89lt1GzDuh6zLKk9ydaTyXeFWMFsJMEaLoRwC6A\";}}s:7:\"created\";i:1685568231;s:9:\"timestamp\";i:1685571831;}s:68:\"get:/v1/users/7074272/plugins/1557/payments.json?include_addons=true\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":2:{s:8:\"payments\";a:0:{}s:9:\"discounts\";a:0:{}}s:7:\"created\";i:1685568231;s:9:\"timestamp\";i:1685654631;}s:53:\"get:/v1/plugins/1557/addons/pricing.json?type=visible\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":1:{s:6:\"addons\";a:3:{i:0;O:8:\"stdClass\":2:{s:2:\"id\";i:8691;s:5:\"plans\";a:1:{i:0;O:8:\"stdClass\":22:{s:9:\"plugin_id\";s:4:\"8691\";s:4:\"name\";s:4:\"free\";s:5:\"title\";s:4:\"Free\";s:11:\"description\";N;s:17:\"is_free_localhost\";b:1;s:17:\"is_block_features\";b:1;s:25:\"is_block_features_monthly\";b:1;s:12:\"license_type\";i:0;s:16:\"is_https_support\";b:0;s:12:\"trial_period\";N;s:23:\"is_require_subscription\";b:0;s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";N;s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";b:0;s:11:\"is_featured\";b:0;s:9:\"is_hidden\";b:0;s:2:\"id\";s:5:\"14521\";s:7:\"created\";s:19:\"2021-07-10 14:54:00\";s:7:\"updated\";N;}}}i:1;O:8:\"stdClass\":2:{s:2:\"id\";i:9247;s:5:\"plans\";a:1:{i:0;O:8:\"stdClass\":22:{s:9:\"plugin_id\";s:4:\"9247\";s:4:\"name\";s:4:\"free\";s:5:\"title\";s:4:\"Free\";s:11:\"description\";N;s:17:\"is_free_localhost\";b:1;s:17:\"is_block_features\";b:1;s:25:\"is_block_features_monthly\";b:1;s:12:\"license_type\";i:0;s:16:\"is_https_support\";b:0;s:12:\"trial_period\";N;s:23:\"is_require_subscription\";b:0;s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";N;s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";b:0;s:11:\"is_featured\";b:0;s:9:\"is_hidden\";b:0;s:2:\"id\";s:5:\"15556\";s:7:\"created\";s:19:\"2021-10-30 06:14:13\";s:7:\"updated\";N;}}}i:2;O:8:\"stdClass\":2:{s:2:\"id\";i:8659;s:5:\"plans\";a:1:{i:0;O:8:\"stdClass\":23:{s:9:\"plugin_id\";s:4:\"8659\";s:4:\"name\";s:8:\"standard\";s:5:\"title\";s:8:\"Standard\";s:11:\"description\";N;s:17:\"is_free_localhost\";b:1;s:17:\"is_block_features\";b:1;s:25:\"is_block_features_monthly\";b:1;s:12:\"license_type\";i:0;s:16:\"is_https_support\";b:0;s:12:\"trial_period\";N;s:23:\"is_require_subscription\";b:0;s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";N;s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";b:0;s:11:\"is_featured\";b:1;s:9:\"is_hidden\";b:0;s:2:\"id\";s:5:\"14467\";s:7:\"created\";s:19:\"2021-07-05 16:20:02\";s:7:\"updated\";s:19:\"2021-07-05 17:16:06\";s:7:\"pricing\";a:1:{i:0;O:8:\"stdClass\":10:{s:7:\"plan_id\";s:5:\"14467\";s:8:\"licenses\";i:1;s:13:\"monthly_price\";N;s:12:\"annual_price\";d:11.99;s:14:\"lifetime_price\";d:39.99;s:9:\"is_hidden\";b:0;s:2:\"id\";s:5:\"15931\";s:7:\"created\";s:19:\"2021-07-05 16:20:41\";s:7:\"updated\";s:19:\"2021-07-09 12:17:17\";s:8:\"currency\";s:3:\"usd\";}}}}}}}s:7:\"created\";i:1685568245;s:9:\"timestamp\";i:1685654645;}s:47:\"get:/v1/users/7074272/licenses.json?type=active\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":1:{s:8:\"licenses\";a:0:{}}s:7:\"created\";i:1685835037;s:9:\"timestamp\";i:1685921437;}}','no'),
(957,'fs_gdpr','a:1:{s:2:\"u1\";a:1:{s:18:\"show_opt_in_notice\";b:0;}}','yes'),
(958,'_site_transient_timeout_fs_locked_1','2000833772','no'),
(959,'_site_transient_fs_locked_1','1','no'),
(964,'bp-better-chat-settings','a:183:{s:9:\"mechanism\";s:4:\"ajax\";s:8:\"template\";s:6:\"modern\";s:15:\"thread_interval\";s:1:\"3\";s:13:\"site_interval\";s:2:\"10\";s:18:\"attachmentsFormats\";a:5:{i:0;s:3:\"jpg\";i:1;s:4:\"jpeg\";i:2;s:3:\"jpe\";i:3;s:3:\"gif\";i:4;s:3:\"png\";}s:20:\"attachmentsRetention\";s:3:\"365\";s:17:\"attachmentsEnable\";s:1:\"1\";s:15:\"attachmentsHide\";s:1:\"1\";s:21:\"attachmentsRandomName\";s:1:\"1\";s:18:\"attachmentsMaxSize\";s:2:\"30\";s:20:\"attachmentsMaxNumber\";i:0;s:15:\"miniChatsEnable\";s:1:\"0\";s:14:\"searchAllUsers\";s:1:\"1\";s:14:\"disableSubject\";s:1:\"0\";s:20:\"disableEnterForTouch\";s:1:\"1\";s:14:\"autoFullScreen\";s:1:\"1\";s:12:\"tapToOpenMsg\";s:1:\"1\";s:11:\"mobilePopup\";s:1:\"0\";s:16:\"mobileFullScreen\";s:1:\"1\";s:8:\"chatPage\";s:3:\"103\";s:14:\"messagesStatus\";s:1:\"0\";s:18:\"messagesStatusList\";s:1:\"0\";s:22:\"messagesStatusDetailed\";s:1:\"0\";s:19:\"allowDeleteMessages\";s:1:\"0\";s:9:\"fastStart\";s:1:\"1\";s:17:\"miniThreadsEnable\";s:1:\"0\";s:17:\"miniFriendsEnable\";s:1:\"0\";s:11:\"friendsMode\";s:1:\"0\";s:16:\"singleThreadMode\";s:1:\"1\";s:19:\"disableGroupThreads\";s:1:\"1\";s:12:\"oEmbedEnable\";s:1:\"1\";s:22:\"disableEnterForDesktop\";s:1:\"0\";s:14:\"rateLimitReply\";a:6:{s:6:\"editor\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"type\";s:4:\"hour\";}s:6:\"author\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"type\";s:4:\"hour\";}s:11:\"contributor\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"type\";s:4:\"hour\";}s:10:\"subscriber\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"type\";s:4:\"hour\";}s:13:\"nutricionista\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"type\";s:4:\"hour\";}s:8:\"paciente\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"type\";s:4:\"hour\";}}s:21:\"rateLimitReplyMessage\";s:41:\"Su límite de respuestas ha sido superado\";s:18:\"restrictNewThreads\";a:1:{i:0;s:8:\"paciente\";}s:25:\"restrictNewThreadsMessage\";s:39:\"No puedes iniciar nuevas conversaciones\";s:20:\"restrictBadWordsList\";s:49:\"Su mensaje contiene una palabra de la lista negra\";s:39:\"restrictNewThreadsRemoveNewThreadButton\";s:1:\"0\";s:18:\"restrictNewReplies\";a:0:{}s:25:\"restrictNewRepliesMessage\";s:44:\"You are not allowed to continue conversation\";s:13:\"restrictCalls\";a:0:{}s:20:\"restrictCallsMessage\";s:34:\"You are not allowed to make a call\";s:20:\"restrictViewMessages\";a:0:{}s:27:\"restrictViewMessagesMessage\";s:14:\"Message hidden\";s:23:\"restrictViewMiniThreads\";a:0:{}s:23:\"restrictViewMiniFriends\";a:0:{}s:22:\"restrictViewMiniGroups\";a:0:{}s:19:\"restrictMobilePopup\";a:0:{}s:10:\"videoCalls\";s:1:\"0\";s:10:\"audioCalls\";s:1:\"0\";s:14:\"userListButton\";s:1:\"0\";s:16:\"UMuserListButton\";s:1:\"0\";s:12:\"combinedView\";s:1:\"1\";s:23:\"enablePushNotifications\";s:1:\"0\";s:12:\"colorGeneral\";s:7:\"#21759b\";s:17:\"encryptionEnabled\";s:1:\"0\";s:12:\"stipopApiKey\";s:0:\"\";s:14:\"stipopLanguage\";s:2:\"en\";s:16:\"allowMuteThreads\";s:1:\"1\";s:16:\"callsRevertIcons\";s:1:\"0\";s:20:\"callRequestTimeLimit\";i:30;s:25:\"offlineCallsNotifications\";s:1:\"0\";s:17:\"callsLimitFriends\";s:1:\"0\";s:19:\"stopBPNotifications\";s:1:\"0\";s:23:\"restrictThreadsDeleting\";s:1:\"1\";s:23:\"disableFavoriteMessages\";s:1:\"1\";s:13:\"disableSearch\";s:1:\"0\";s:19:\"disableUserSettings\";s:1:\"0\";s:16:\"disableNewThread\";s:1:\"0\";s:16:\"profileVideoCall\";s:1:\"0\";s:16:\"profileAudioCall\";s:1:\"0\";s:17:\"miniChatAudioCall\";s:1:\"0\";s:17:\"miniChatVideoCall\";s:1:\"0\";s:18:\"disableUsersSearch\";s:1:\"0\";s:17:\"fixedHeaderHeight\";i:0;s:25:\"mobilePopupLocationBottom\";i:20;s:18:\"rateLimitNewThread\";i:0;s:21:\"notificationsInterval\";i:15;s:25:\"disableOnSiteNotification\";s:1:\"0\";s:17:\"allowSoundDisable\";s:1:\"1\";s:12:\"enableGroups\";s:1:\"0\";s:16:\"enableMiniGroups\";s:1:\"0\";s:15:\"allowGroupLeave\";s:1:\"0\";s:11:\"giphyApiKey\";s:0:\"\";s:18:\"giphyContentRating\";s:1:\"g\";s:13:\"giphyLanguage\";s:2:\"en\";s:13:\"enableReplies\";s:1:\"1\";s:17:\"messagesMinHeight\";i:450;s:14:\"messagesHeight\";i:650;s:16:\"sideThreadsWidth\";i:320;s:17:\"notificationSound\";i:100;s:9:\"sentSound\";i:50;s:9:\"callSound\";i:100;s:12:\"dialingSound\";i:50;s:12:\"modernLayout\";s:5:\"right\";s:16:\"deletedBehaviour\";s:6:\"ignore\";s:17:\"allowEditMessages\";s:1:\"0\";s:15:\"enableNiceLinks\";s:1:\"1\";s:12:\"userStatuses\";s:1:\"0\";s:15:\"myProfileButton\";s:1:\"1\";s:18:\"titleNotifications\";s:1:\"1\";s:21:\"enableMiniCloseButton\";s:1:\"0\";s:13:\"bpProfileSlug\";s:11:\"bp-messages\";s:11:\"bpGroupSlug\";s:11:\"bp-messages\";s:19:\"mobilePopupLocation\";s:5:\"right\";s:20:\"mobileOnsiteLocation\";s:4:\"auto\";s:12:\"badWordsList\";s:0:\"\";s:16:\"groupCallsGroups\";s:1:\"0\";s:17:\"groupCallsThreads\";s:1:\"0\";s:15:\"groupCallsChats\";s:1:\"0\";s:21:\"groupAudioCallsGroups\";s:1:\"0\";s:22:\"groupAudioCallsThreads\";s:1:\"0\";s:20:\"groupAudioCallsChats\";s:1:\"0\";s:27:\"allowUsersRestictNewThreads\";s:1:\"0\";s:18:\"enableGroupsEmails\";s:1:\"0\";s:17:\"enableGroupsPushs\";s:1:\"0\";s:17:\"desktopFullScreen\";s:1:\"1\";s:17:\"restrictRoleBlock\";a:1:{i:0;a:3:{s:4:\"from\";s:8:\"paciente\";s:2:\"to\";s:13:\"administrator\";s:7:\"message\";s:40:\"No puedes enviar mensajes a este usuario\";}}s:26:\"friendsOnSiteNotifications\";s:1:\"0\";s:25:\"groupsOnSiteNotifications\";s:1:\"0\";s:22:\"enableUsersSuggestions\";s:1:\"1\";s:28:\"hidePossibleBreakingElements\";s:1:\"0\";s:22:\"myCredNewMessageCharge\";a:6:{s:6:\"editor\";a:1:{s:5:\"value\";s:1:\"0\";}s:6:\"author\";a:1:{s:5:\"value\";s:1:\"0\";}s:11:\"contributor\";a:1:{s:5:\"value\";s:1:\"0\";}s:10:\"subscriber\";a:1:{s:5:\"value\";s:1:\"0\";}s:13:\"nutricionista\";a:1:{s:5:\"value\";s:1:\"0\";}s:8:\"paciente\";a:1:{s:5:\"value\";s:1:\"0\";}}s:29:\"myCredNewMessageChargeMessage\";s:40:\"Not enough points to send a new message.\";s:21:\"myCredNewThreadCharge\";a:6:{s:6:\"editor\";a:1:{s:5:\"value\";s:1:\"0\";}s:6:\"author\";a:1:{s:5:\"value\";s:1:\"0\";}s:11:\"contributor\";a:1:{s:5:\"value\";s:1:\"0\";}s:10:\"subscriber\";a:1:{s:5:\"value\";s:1:\"0\";}s:13:\"nutricionista\";a:1:{s:5:\"value\";s:1:\"0\";}s:8:\"paciente\";a:1:{s:5:\"value\";s:1:\"0\";}}s:28:\"myCredNewThreadChargeMessage\";s:46:\"Not enough points to start a new conversation.\";s:19:\"createEmailTemplate\";s:1:\"0\";s:25:\"notificationsOfflineDelay\";i:15;s:24:\"bbPressAuthorDetailsLink\";s:1:\"1\";s:17:\"enableGroupsFiles\";s:1:\"0\";s:21:\"combinedFriendsEnable\";s:1:\"0\";s:19:\"mobileFriendsEnable\";s:1:\"0\";s:20:\"combinedGroupsEnable\";s:1:\"0\";s:18:\"mobileGroupsEnable\";s:1:\"0\";s:17:\"umProfilePMButton\";s:1:\"1\";s:17:\"umOnlyFriendsMode\";s:1:\"0\";s:19:\"umOnlyFollowersMode\";s:1:\"0\";s:15:\"allowUsersBlock\";s:1:\"0\";s:18:\"restrictBlockUsers\";a:1:{i:0;s:8:\"paciente\";}s:23:\"restrictBlockUsersImmun\";a:1:{i:0;s:13:\"nutricionista\";}s:14:\"messagesViewer\";s:1:\"1\";s:19:\"offlineCallsAllowed\";s:1:\"0\";s:15:\"enableReactions\";s:1:\"1\";s:20:\"enableReactionsPopup\";s:1:\"1\";s:12:\"peepsoHeader\";s:1:\"1\";s:22:\"peepsoProfileVideoCall\";s:1:\"0\";s:22:\"peepsoProfileAudioCall\";s:1:\"0\";s:19:\"UMminiFriendsEnable\";s:1:\"0\";s:23:\"UMcombinedFriendsEnable\";s:1:\"0\";s:21:\"UMmobileFriendsEnable\";s:1:\"0\";s:17:\"PSonlyFriendsMode\";s:1:\"0\";s:19:\"PSminiFriendsEnable\";s:1:\"0\";s:23:\"PScombinedFriendsEnable\";s:1:\"0\";s:21:\"PSmobileFriendsEnable\";s:1:\"0\";s:14:\"PSenableGroups\";s:1:\"0\";s:19:\"PSenableGroupsFiles\";s:1:\"0\";s:20:\"PSenableGroupsEmails\";s:1:\"0\";s:19:\"PSenableGroupsPushs\";s:1:\"0\";s:18:\"PSminiGroupsEnable\";s:1:\"0\";s:22:\"PScombinedGroupsEnable\";s:1:\"0\";s:20:\"PSmobileGroupsEnable\";s:1:\"0\";s:14:\"UMenableGroups\";s:1:\"0\";s:19:\"UMenableGroupsFiles\";s:1:\"0\";s:20:\"UMenableGroupsEmails\";s:1:\"0\";s:19:\"UMenableGroupsPushs\";s:1:\"0\";s:18:\"UMminiGroupsEnable\";s:1:\"0\";s:22:\"UMcombinedGroupsEnable\";s:1:\"0\";s:20:\"UMmobileGroupsEnable\";s:1:\"0\";s:19:\"privateThreadInvite\";s:1:\"0\";s:16:\"reactionsEmojies\";a:6:{s:5:\"1f914\";s:8:\"Thinking\";s:4:\"2b50\";s:4:\"Star\";s:5:\"1f632\";s:3:\"WOW\";s:5:\"1f60d\";s:4:\"Love\";s:5:\"1f44c\";s:4:\"Okay\";s:5:\"1f44d\";s:9:\"Thumbs up\";}s:15:\"bpForceMiniChat\";s:1:\"0\";s:15:\"umForceMiniChat\";s:1:\"0\";s:15:\"psForceMiniChat\";s:1:\"0\";s:8:\"emojiSet\";s:5:\"apple\";s:21:\"attachmentsAllowPhoto\";s:1:\"1\";s:14:\"onsitePosition\";s:5:\"right\";s:10:\"bpFallback\";s:1:\"0\";s:19:\"miniChatDisableSync\";s:1:\"0\";s:13:\"pinnedThreads\";s:1:\"1\";s:9:\"bpAppPush\";s:1:\"0\";s:11:\"supportChat\";s:1:\"0\";s:13:\"emojiSettings\";s:0:\"\";s:10:\"updateTime\";i:1685568229;}','yes'),
(1067,'limit_login_activation_timestamp','1685529235','yes'),
(1068,'limit_login_notice_enable_notify_timestamp','1682764435','yes'),
(1069,'limit_login_lockouts','a:0:{}','yes'),
(1070,'limit_login_logged','a:0:{}','yes'),
(1071,'limit_login_retries','a:2:{s:13:\"79.116.208.42\";i:2;s:13:\"84.124.186.65\";i:1;}','yes'),
(1072,'limit_login_retries_valid','a:2:{s:13:\"79.116.208.42\";i:1685967199;s:13:\"84.124.186.65\";i:1685990305;}','yes'),
(1073,'limit_login_onboarding_popup_shown','1','yes'),
(1074,'limit_login_admin_notify_email','eva.s284913@cesurformacion.com','yes'),
(1075,'limit_login_lockout_notify','email','yes'),
(1080,'new_admin_email','eva.s284913@cesurformacion.com','yes'),
(1081,'whl_page','login','yes'),
(1082,'whl_redirect_admin','404','yes'),
(1276,'limit_login_retries_stats','a:6:{i:1685566800;i:1;i:1685574000;i:1;i:1685577600;i:1;i:1685836800;i:1;i:1685880000;i:1;i:1685901600;i:1;}','no'),
(1355,'action_scheduler_hybrid_store_demarkation','143','yes'),
(1356,'schema-ActionScheduler_StoreSchema','6.0.1685612892','yes'),
(1357,'schema-ActionScheduler_LoggerSchema','3.0.1685612892','yes'),
(1358,'wp_mail_smtp_initial_version','3.8.0','no'),
(1359,'wp_mail_smtp_version','3.8.0','no'),
(1360,'wp_mail_smtp','a:11:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:26:\"nutrifitplus2023@gmail.com\";s:9:\"from_name\";s:9:\"Nutrifit+\";s:6:\"mailer\";s:5:\"gmail\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:1;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:7:{s:7:\"autotls\";s:3:\"yes\";s:4:\"auth\";s:3:\"yes\";s:4:\"host\";s:37:\"stoic-khorana.5-135-116-99.plesk.page\";s:10:\"encryption\";s:4:\"none\";s:4:\"port\";s:3:\"465\";s:4:\"user\";s:54:\"nutrifitplus2023@stoic-khorana.5-135-116-99.plesk.page\";s:4:\"pass\";s:16:\"Nutrifit123qwe,.\";}s:7:\"general\";a:1:{s:29:\"summary_report_email_disabled\";b:0;}s:9:\"sendlayer\";a:1:{s:7:\"api_key\";s:0:\"\";}s:7:\"smtpcom\";a:2:{s:7:\"api_key\";s:0:\"\";s:7:\"channel\";s:0:\"\";}s:10:\"sendinblue\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";}s:5:\"gmail\";a:6:{s:9:\"client_id\";s:72:\"408188042377-d7hbvk7qboe671apfkfh023kn4plgsh2.apps.googleusercontent.com\";s:13:\"client_secret\";s:35:\"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\";s:20:\"is_setup_wizard_auth\";b:0;s:9:\"auth_code\";s:73:\"4/0AbUR2VO7Suffg7UykAzrXPYFRNrzBViq7Aj0M_QPMpRg41A3NU8IsNcII8nm5dOv2J2lfw\";s:12:\"access_token\";a:6:{s:12:\"access_token\";s:214:\"ya29.a0AWY7Cknnk7Z3aExTsjfggeYp4GAY1x4-67msp8NFthvfABo1V0Nv59A23i7NCJVd5D8vZTOy7uDnTYw3o9cI7uJAutufYe3W0FhxDSmGiOh19LMQ7qMiSxHjvV8xyGJeT_WT6t46NXQ1cxiGK4ptwhXTD-dXHa2VaCgYKATQSARESFQG1tDrpLRxI4qUVF6268vqzGcQ24w0167\";s:10:\"expires_in\";i:3599;s:5:\"scope\";s:24:\"https://mail.google.com/\";s:10:\"token_type\";s:6:\"Bearer\";s:7:\"created\";i:1685902887;s:13:\"refresh_token\";s:103:\"1//03HVAkjoV8NVuCgYIARAAGAMSNwF-L9IrCT2d9bOvoC06phE8dnFENgxe4IkFcd4lsG2-lOaIwyCuOznZe7G_2hnmkIOQ9RKMbsg\";}s:13:\"refresh_token\";s:103:\"1//03HVAkjoV8NVuCgYIARAAGAMSNwF-L9IrCT2d9bOvoC06phE8dnFENgxe4IkFcd4lsG2-lOaIwyCuOznZe7G_2hnmkIOQ9RKMbsg\";}s:7:\"mailgun\";a:3:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";s:6:\"region\";s:2:\"US\";}s:8:\"postmark\";a:2:{s:16:\"server_api_token\";s:0:\"\";s:14:\"message_stream\";s:0:\"\";}s:8:\"sendgrid\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";}s:9:\"sparkpost\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"region\";s:2:\"US\";}}','no'),
(1361,'wp_mail_smtp_activated_time','1685612892','no'),
(1362,'wp_mail_smtp_activated','a:1:{s:4:\"lite\";i:1685612892;}','yes'),
(1365,'action_scheduler_lock_async-request-runner','1685905836','yes'),
(1369,'wp_mail_smtp_migration_version','5','yes'),
(1370,'wp_mail_smtp_debug_events_db_version','1','yes'),
(1371,'wp_mail_smtp_activation_prevent_redirect','1','yes'),
(1372,'wp_mail_smtp_setup_wizard_stats','a:3:{s:13:\"launched_time\";i:1685612910;s:14:\"completed_time\";i:0;s:14:\"was_successful\";b:0;}','no'),
(1377,'wp_mail_smtp_review_notice','a:2:{s:4:\"time\";i:1685614426;s:9:\"dismissed\";b:0;}','yes'),
(1378,'wp_mail_smtp_notifications','a:4:{s:6:\"update\";i:1685835040;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}','yes'),
(1383,'wp_mail_smtp_mail_key','W30jgN3vV/O2oV/dSClzJmk2RJpeVNIYww6SowRaFo0=','yes'),
(1384,'wp_mail_smtp_debug','a:0:{}','no'),
(1418,'wp_mail_smtp_lite_sent_email_counter','6','yes'),
(1419,'wp_mail_smtp_lite_weekly_sent_email_counter','a:1:{i:22;i:6;}','yes'),
(1477,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-6.2.2.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-6.2.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.2.2\";s:7:\"version\";s:5:\"6.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1685879600;s:15:\"version_checked\";s:5:\"6.2.2\";s:12:\"translations\";a:0:{}}','no'),
(1479,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1685879601;s:7:\"checked\";a:4:{s:13:\"nutrifit-plus\";s:3:\"1.3\";s:15:\"twentytwentyone\";s:3:\"1.8\";s:17:\"twentytwentythree\";s:3:\"1.1\";s:15:\"twentytwentytwo\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.1.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no'),
(1889,'_site_transient_timeout_browser_2d3bcfcec0eb62f24aad5cce4f806ba3','1686259365','no'),
(1890,'_site_transient_browser_2d3bcfcec0eb62f24aad5cce4f806ba3','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"113.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no'),
(1907,'_site_transient_timeout_browser_5824795e8b320cf6e29b3e88bec508ee','1686259434','no'),
(1908,'_site_transient_browser_5824795e8b320cf6e29b3e88bec508ee','a:10:{s:4:\"name\";s:7:\"unknown\";s:7:\"version\";s:0:\"\";s:8:\"platform\";s:0:\"\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no'),
(1927,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1685879601;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:9:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.1.6\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:41:\"bp-better-messages/bp-better-messages.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/bp-better-messages\";s:4:\"slug\";s:18:\"bp-better-messages\";s:6:\"plugin\";s:41:\"bp-better-messages/bp-better-messages.php\";s:11:\"new_version\";s:6:\"2.1.11\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/bp-better-messages/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/bp-better-messages.2.1.11.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/bp-better-messages/assets/icon-256x256.png?rev=2835105\";s:2:\"1x\";s:71:\"https://ps.w.org/bp-better-messages/assets/icon-128x128.png?rev=2835093\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/bp-better-messages/assets/banner-772x250.jpg?rev=1571154\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"5.9.0\";}s:31:\"code-snippets/code-snippets.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/code-snippets\";s:4:\"slug\";s:13:\"code-snippets\";s:6:\"plugin\";s:31:\"code-snippets/code-snippets.php\";s:11:\"new_version\";s:5:\"3.4.0\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/code-snippets/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/code-snippets.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:58:\"https://ps.w.org/code-snippets/assets/icon.svg?rev=2148878\";s:3:\"svg\";s:58:\"https://ps.w.org/code-snippets/assets/icon.svg?rev=2148878\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/code-snippets/assets/banner-1544x500.png?rev=2260997\";s:2:\"1x\";s:68:\"https://ps.w.org/code-snippets/assets/banner-772x250.png?rev=2256244\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:28:\"laravel-dd/wp-laravel-dd.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:24:\"w.org/plugins/laravel-dd\";s:4:\"slug\";s:10:\"laravel-dd\";s:6:\"plugin\";s:28:\"laravel-dd/wp-laravel-dd.php\";s:11:\"new_version\";s:5:\"1.0.1\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/laravel-dd/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/plugin/laravel-dd.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/laravel-dd/assets/icon-256x256.png?rev=1832586\";s:2:\"1x\";s:63:\"https://ps.w.org/laravel-dd/assets/icon-128x128.png?rev=1832586\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/laravel-dd/assets/banner-1544x500.png?rev=1832586\";s:2:\"1x\";s:65:\"https://ps.w.org/laravel-dd/assets/banner-772x250.png?rev=1832586\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"3.0.1\";}s:63:\"limit-login-attempts-reloaded/limit-login-attempts-reloaded.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:43:\"w.org/plugins/limit-login-attempts-reloaded\";s:4:\"slug\";s:29:\"limit-login-attempts-reloaded\";s:6:\"plugin\";s:63:\"limit-login-attempts-reloaded/limit-login-attempts-reloaded.php\";s:11:\"new_version\";s:7:\"2.25.18\";s:3:\"url\";s:60:\"https://wordpress.org/plugins/limit-login-attempts-reloaded/\";s:7:\"package\";s:80:\"https://downloads.wordpress.org/plugin/limit-login-attempts-reloaded.2.25.18.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/limit-login-attempts-reloaded/assets/icon-256x256.png?rev=2456910\";s:2:\"1x\";s:82:\"https://ps.w.org/limit-login-attempts-reloaded/assets/icon-128x128.png?rev=2456910\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:85:\"https://ps.w.org/limit-login-attempts-reloaded/assets/banner-1544x500.png?rev=2456910\";s:2:\"1x\";s:84:\"https://ps.w.org/limit-login-attempts-reloaded/assets/banner-772x250.png?rev=2456910\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.0\";}s:35:\"wp-hooks-finder/wp-hooks-finder.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/wp-hooks-finder\";s:4:\"slug\";s:15:\"wp-hooks-finder\";s:6:\"plugin\";s:35:\"wp-hooks-finder/wp-hooks-finder.php\";s:11:\"new_version\";s:5:\"1.2.3\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/wp-hooks-finder/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/wp-hooks-finder.1.2.3.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/wp-hooks-finder/assets/icon-128x128.jpg?rev=2501642\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/wp-hooks-finder/assets/banner-772x250.jpg?rev=2501637\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"3.8.0\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.3.8.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.jpg?rev=2811094\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.jpg?rev=2811094\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";}s:33:\"wps-hide-login/wps-hide-login.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/wps-hide-login\";s:4:\"slug\";s:14:\"wps-hide-login\";s:6:\"plugin\";s:33:\"wps-hide-login/wps-hide-login.php\";s:11:\"new_version\";s:5:\"1.9.8\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wps-hide-login/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wps-hide-login.1.9.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-256x256.png?rev=1820667\";s:2:\"1x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-128x128.png?rev=1820667\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wps-hide-login/assets/banner-1544x500.jpg?rev=1820667\";s:2:\"1x\";s:69:\"https://ps.w.org/wps-hide-login/assets/banner-772x250.jpg?rev=1820667\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.1\";}}s:7:\"checked\";a:10:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.1.6\";s:19:\"akismet/akismet.php\";s:3:\"5.1\";s:41:\"bp-better-messages/bp-better-messages.php\";s:6:\"2.1.11\";s:31:\"code-snippets/code-snippets.php\";s:5:\"3.4.0\";s:23:\"evatellez/evatellez.php\";s:3:\"1.0\";s:28:\"laravel-dd/wp-laravel-dd.php\";s:5:\"1.0.1\";s:63:\"limit-login-attempts-reloaded/limit-login-attempts-reloaded.php\";s:7:\"2.25.18\";s:35:\"wp-hooks-finder/wp-hooks-finder.php\";s:5:\"1.2.3\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"3.8.0\";s:33:\"wps-hide-login/wps-hide-login.php\";s:5:\"1.9.8\";}}','no'),
(1979,'_site_transient_timeout_php_check_3fde9d06ba9e4fd20d08658e6f30b792','1686320746','no'),
(1980,'_site_transient_php_check_3fde9d06ba9e4fd20d08658e6f30b792','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no'),
(2020,'_site_transient_timeout_browser_c2e8770a57bb05f02fa99fc10237a511','1686439839','no'),
(2021,'_site_transient_browser_c2e8770a57bb05f02fa99fc10237a511','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"113.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no'),
(2080,'_site_transient_timeout_theme_roots','1685881401','no'),
(2081,'_site_transient_theme_roots','a:4:{s:13:\"nutrifit-plus\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}','no'),
(2108,'_transient_timeout_as-post-store-dependencies-met','1685967216','no'),
(2109,'_transient_as-post-store-dependencies-met','yes','no'),
(2112,'action_scheduler_migration_status','complete','yes'),
(2113,'_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a','1685891725','no'),
(2114,'_site_transient_poptags_40cd750bba9870f18aada2478b24840a','O:8:\"stdClass\":100:{s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:6107;}s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4821;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2786;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2674;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:2054;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1917;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1909;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1645;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1567;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1555;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1549;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1515;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1507;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1488;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1369;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1316;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1272;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1175;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1155;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1148;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:1057;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:1023;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:1002;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:965;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:903;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:896;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:881;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:880;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:877;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:873;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:867;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:833;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:798;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:795;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:781;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:778;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:773;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:765;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:740;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:733;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:731;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:729;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:724;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:689;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:685;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:685;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:675;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:666;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:634;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:623;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:617;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:611;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:609;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:608;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:601;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:594;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:592;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:589;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:578;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:571;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:570;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:568;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:566;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:557;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:556;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:543;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:540;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:533;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:532;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:530;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:528;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:519;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:512;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:510;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:508;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:506;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:487;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:478;}s:6:\"blocks\";a:3:{s:4:\"name\";s:6:\"blocks\";s:4:\"slug\";s:6:\"blocks\";s:5:\"count\";i:475;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:466;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:449;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:448;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:448;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:437;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:432;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:426;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:425;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:424;}s:7:\"gateway\";a:3:{s:4:\"name\";s:7:\"gateway\";s:4:\"slug\";s:7:\"gateway\";s:5:\"count\";i:423;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:422;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:421;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:420;}s:8:\"payments\";a:3:{s:4:\"name\";s:8:\"payments\";s:4:\"slug\";s:8:\"payments\";s:5:\"count\";i:418;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:412;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:407;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:398;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:396;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:395;}s:8:\"checkout\";a:3:{s:4:\"name\";s:8:\"checkout\";s:4:\"slug\";s:8:\"checkout\";s:5:\"count\";i:392;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:390;}}','no'),
(2164,'_transient_timeout_action_scheduler_last_pastdue_actions_check','1685924487','no'),
(2165,'_transient_action_scheduler_last_pastdue_actions_check','1685902887','no'),
(2175,'_site_transient_timeout_available_translations','1685914705','no'),
(2176,'_site_transient_available_translations','a:130:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.0.5/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:8:\"6.2-beta\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.2-beta/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-02 03:21:35\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"متابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.22/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-28 09:55:22\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.23/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-29 17:05:45\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-02 11:24:48\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"অবিরত\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-02-22 20:45:53\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-31 12:35:10\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 09:37:21\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-10 08:48:02\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-20 20:08:45\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-29 21:14:35\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-28 07:33:50\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/6.2.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 14:37:33\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.2.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-28 07:37:41\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 12:57:54\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-31 08:16:50\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-11 07:12:43\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-07 21:00:17\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2022-04-01 22:35:34\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.5/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2021-12-24 12:36:39\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.5/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-19 10:51:23\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-17 04:31:21\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-19 05:08:30\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-10 12:37:03\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-14 22:16:37\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-21 13:32:10\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-15 19:52:49\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.7/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2021-10-04 20:53:18\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.7/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-06-14 16:02:22\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.13\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.13/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.18\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.18/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 14:08:08\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-08-12 08:38:59\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-24 16:21:45\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-13 11:28:33\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-05 06:53:02\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-17 05:20:27\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-30 14:40:46\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-25 15:00:05\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-22 13:54:46\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2023-04-30 13:56:46\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.22/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"fy\";a:8:{s:8:\"language\";s:2:\"fy\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-12-25 12:53:23\";s:12:\"english_name\";s:7:\"Frisian\";s:11:\"native_name\";s:5:\"Frysk\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/fy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fy\";i:2;s:3:\"fry\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Trochgean\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-23 05:45:53\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.23/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ચાલુ રાખો\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.30\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.30/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-28 22:06:16\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:6:\"5.4.13\";s:7:\"updated\";s:19:\"2020-11-06 12:34:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.13/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-28 10:18:51\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-01 14:57:37\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-10 07:01:02\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.23/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-12 13:09:27\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-24 05:57:21\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.23/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2023-05-19 07:40:56\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.5/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-28 12:09:00\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.23/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.18\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.18/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"6.1.3\";s:7:\"updated\";s:19:\"2022-10-20 17:15:28\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.3/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-30 08:24:13\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-04 13:44:22\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"6.1.3\";s:7:\"updated\";s:19:\"2022-11-24 03:51:58\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.3/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-25 02:26:43\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"6.0.5\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.5/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-09 01:41:47\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2019-11-22 15:32:08\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.23/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.12\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.5.12/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.35\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.35/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-01 10:02:11\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-03 04:46:20\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-30 10:02:03\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-02 14:36:47\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-02-22 21:20:14\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.2.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.22/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-02 09:25:34\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.31\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.31/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-30 23:24:56\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.2.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-12 08:28:13\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-10-01 12:16:29\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-01 16:49:15\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-04 08:31:30\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-02 11:00:11\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.13\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.13/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-06-02 10:42:08\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-04-03 08:30:58\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-29 11:33:10\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-10 11:33:13\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2021-08-01 21:21:06\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.7/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-11 17:06:50\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:6:\"5.3.15\";s:7:\"updated\";s:19:\"2019-10-13 15:35:35\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.15/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.35\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.35/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.8.7\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.7/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.22\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.22/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-22 10:14:53\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:6:\"4.9.23\";s:7:\"updated\";s:19:\"2021-07-03 18:41:33\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.23/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"6.1.3\";s:7:\"updated\";s:19:\"2023-03-04 10:46:30\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.3/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.13\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.13/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-03-10 01:15:33\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.2.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-16 19:47:32\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"6.2.2\";s:7:\"updated\";s:19:\"2023-05-24 10:05:05\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.2.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=1040 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES
(1,2,'_wp_page_template','default'),
(2,3,'_wp_page_template','default'),
(5,10,'_edit_lock','1683303722:1'),
(6,11,'_edit_lock','1683561150:1'),
(8,13,'_edit_lock','1685839790:1'),
(9,13,'_edit_last','1'),
(10,1,'_edit_lock','1683304950:1'),
(22,11,'_edit_last','1'),
(23,11,'imagen_del_plato','29'),
(24,11,'_imagen_del_plato','field_6458ee062877e'),
(25,11,'tiempo_de_ejecucion','150'),
(26,11,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(27,11,'complejidad','Complejo'),
(28,11,'_complejidad','field_6458e7fe28775'),
(29,11,'tipo_de_comida','Desayuno'),
(30,11,'_tipo_de_comida','field_6458e84f28776'),
(31,11,'calorias','50'),
(32,11,'_calorias','field_6458e8ac28777'),
(33,11,'fibra','50'),
(34,11,'_fibra','field_6458e8c028778'),
(35,11,'proteinas','499'),
(36,11,'_proteinas','field_6458e8d128779'),
(37,11,'grasas','50'),
(38,11,'_grasas','field_6458e8f42877a'),
(39,11,'azucares','50'),
(40,11,'_azucares','field_6458ed1a2877b'),
(41,11,'ingredientes','LOLOLO'),
(42,11,'_ingredientes','field_6458ed452877c'),
(43,11,'instrucciones','LOLOL'),
(44,11,'_instrucciones','field_6458edb32877d'),
(46,31,'_edit_lock','1683564226:1'),
(49,31,'_edit_last','1'),
(50,31,'imagen_del_plato','32'),
(51,31,'_imagen_del_plato','field_6458ee062877e'),
(52,31,'tiempo_de_ejecucion','30'),
(53,31,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(54,31,'complejidad','Fácil'),
(55,31,'_complejidad','field_6458e7fe28775'),
(56,31,'tipo_de_comida','Almuerzo'),
(57,31,'_tipo_de_comida','field_6458e84f28776'),
(58,31,'calorias','50'),
(59,31,'_calorias','field_6458e8ac28777'),
(60,31,'fibra','50'),
(61,31,'_fibra','field_6458e8c028778'),
(62,31,'proteinas','50'),
(63,31,'_proteinas','field_6458e8d128779'),
(64,31,'grasas','50'),
(65,31,'_grasas','field_6458e8f42877a'),
(66,31,'azucares','50'),
(67,31,'_azucares','field_6458ed1a2877b'),
(68,31,'ingredientes','uno\r\ndos\r\ntres\r\ncuatro'),
(69,31,'_ingredientes','field_6458ed452877c'),
(70,31,'instrucciones','uno \r\ndos \r\ntres \r\ncuatro'),
(71,31,'_instrucciones','field_6458edb32877d'),
(72,33,'_edit_lock','1683630960:1'),
(75,33,'_edit_last','1'),
(76,33,'imagen_del_plato','34'),
(77,33,'_imagen_del_plato','field_6458ee062877e'),
(78,33,'tiempo_de_ejecucion','35'),
(79,33,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(80,33,'complejidad','Fácil'),
(81,33,'_complejidad','field_6458e7fe28775'),
(82,33,'tipo_de_comida','Almuerzo'),
(83,33,'_tipo_de_comida','field_6458e84f28776'),
(84,33,'calorias','578'),
(85,33,'_calorias','field_6458e8ac28777'),
(86,33,'fibra','19'),
(87,33,'_fibra','field_6458e8c028778'),
(88,33,'proteinas','31.2'),
(89,33,'_proteinas','field_6458e8d128779'),
(90,33,'grasas','10.5'),
(91,33,'_grasas','field_6458e8f42877a'),
(92,33,'azucares','12'),
(93,33,'_azucares','field_6458ed1a2877b'),
(94,33,'ingredientes','Macarrones (125g), Patatas (100g), media zanahoria,'),
(95,33,'_ingredientes','field_6458ed452877c'),
(96,33,'instrucciones','Hervir las patatas y las zanahorias hasta que estén blandas ~15 minutos - escurrir una vez cocidas, Cocer la pasta según las instrucciones ~10 minutos - escurrir una vez cocida'),
(97,33,'_instrucciones','field_6458edb32877d'),
(105,33,'carbohidratos','84.2'),
(106,33,'_carbohidratos','field_64592e5efc11b'),
(107,41,'_edit_lock','1683631680:1'),
(110,41,'_edit_last','1'),
(111,41,'imagen_del_plato','42'),
(112,41,'_imagen_del_plato','field_6458ee062877e'),
(113,41,'tiempo_de_ejecucion','20'),
(114,41,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(115,41,'complejidad','Fácil'),
(116,41,'_complejidad','field_6458e7fe28775'),
(117,41,'tipo_de_comida','Almuerzo'),
(118,41,'_tipo_de_comida','field_6458e84f28776'),
(119,41,'calorias','319'),
(120,41,'_calorias','field_6458e8ac28777'),
(121,41,'fibra','6.3'),
(122,41,'_fibra','field_6458e8c028778'),
(123,41,'proteinas','9.5'),
(124,41,'_proteinas','field_6458e8d128779'),
(125,41,'carbohidratos','39.4'),
(126,41,'_carbohidratos','field_64592e5efc11b'),
(127,41,'grasas','12.4'),
(128,41,'_grasas','field_6458e8f42877a'),
(129,41,'azucares','7.5'),
(130,41,'_azucares','field_6458ed1a2877b'),
(131,41,'ingredientes','ddddddd'),
(132,41,'_ingredientes','field_6458ed452877c'),
(133,41,'instrucciones','dddddd'),
(134,41,'_instrucciones','field_6458edb32877d'),
(135,43,'_edit_lock','1683632008:1'),
(138,43,'_edit_last','1'),
(139,43,'imagen_del_plato','44'),
(140,43,'_imagen_del_plato','field_6458ee062877e'),
(141,43,'tiempo_de_ejecucion','10'),
(142,43,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(143,43,'complejidad','Fácil'),
(144,43,'_complejidad','field_6458e7fe28775'),
(145,43,'tipo_de_comida','Desayuno'),
(146,43,'_tipo_de_comida','field_6458e84f28776'),
(147,43,'calorias','569'),
(148,43,'_calorias','field_6458e8ac28777'),
(149,43,'fibra','16.4'),
(150,43,'_fibra','field_6458e8c028778'),
(151,43,'proteinas','21.2'),
(152,43,'_proteinas','field_6458e8d128779'),
(153,43,'carbohidratos','79.4'),
(154,43,'_carbohidratos','field_64592e5efc11b'),
(155,43,'grasas','17.8'),
(156,43,'_grasas','field_6458e8f42877a'),
(157,43,'azucares','27.2'),
(158,43,'_azucares','field_6458ed1a2877b'),
(159,43,'ingredientes','ccc'),
(160,43,'_ingredientes','field_6458ed452877c'),
(161,43,'instrucciones','cccccc'),
(162,43,'_instrucciones','field_6458edb32877d'),
(163,45,'_edit_lock','1683632211:1'),
(166,45,'_edit_last','1'),
(167,45,'imagen_del_plato','46'),
(168,45,'_imagen_del_plato','field_6458ee062877e'),
(169,45,'tiempo_de_ejecucion','15'),
(170,45,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(171,45,'complejidad','Fácil'),
(172,45,'_complejidad','field_6458e7fe28775'),
(173,45,'tipo_de_comida','Cena'),
(174,45,'_tipo_de_comida','field_6458e84f28776'),
(175,45,'calorias','436'),
(176,45,'_calorias','field_6458e8ac28777'),
(177,45,'fibra','12.5'),
(178,45,'_fibra','field_6458e8c028778'),
(179,45,'proteinas','10.2'),
(180,45,'_proteinas','field_6458e8d128779'),
(181,45,'carbohidratos','78.5'),
(182,45,'_carbohidratos','field_64592e5efc11b'),
(183,45,'grasas','9.9'),
(184,45,'_grasas','field_6458e8f42877a'),
(185,45,'azucares','29.8'),
(186,45,'_azucares','field_6458ed1a2877b'),
(187,45,'ingredientes','ffff'),
(188,45,'_ingredientes','field_6458ed452877c'),
(189,45,'instrucciones','fffff'),
(190,45,'_instrucciones','field_6458edb32877d'),
(191,47,'_edit_lock','1683632374:1'),
(194,47,'_edit_last','1'),
(195,47,'imagen_del_plato','48'),
(196,47,'_imagen_del_plato','field_6458ee062877e'),
(197,47,'tiempo_de_ejecucion','10'),
(198,47,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(199,47,'complejidad','Fácil'),
(200,47,'_complejidad','field_6458e7fe28775'),
(201,47,'tipo_de_comida','Cena'),
(202,47,'_tipo_de_comida','field_6458e84f28776'),
(203,47,'calorias','496'),
(204,47,'_calorias','field_6458e8ac28777'),
(205,47,'fibra','13.7'),
(206,47,'_fibra','field_6458e8c028778'),
(207,47,'proteinas','17.9'),
(208,47,'_proteinas','field_6458e8d128779'),
(209,47,'carbohidratos','52.5'),
(210,47,'_carbohidratos','field_64592e5efc11b'),
(211,47,'grasas','21.3'),
(212,47,'_grasas','field_6458e8f42877a'),
(213,47,'azucares','3.2'),
(214,47,'_azucares','field_6458ed1a2877b'),
(215,47,'ingredientes','ccc'),
(216,47,'_ingredientes','field_6458ed452877c'),
(217,47,'instrucciones','ccc'),
(218,47,'_instrucciones','field_6458edb32877d'),
(219,49,'_edit_lock','1683632521:1'),
(222,49,'_edit_last','1'),
(223,49,'imagen_del_plato','50'),
(224,49,'_imagen_del_plato','field_6458ee062877e'),
(225,49,'tiempo_de_ejecucion','70'),
(226,49,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(227,49,'complejidad','Moderada'),
(228,49,'_complejidad','field_6458e7fe28775'),
(229,49,'tipo_de_comida','Merienda'),
(230,49,'_tipo_de_comida','field_6458e84f28776'),
(231,49,'calorias','365'),
(232,49,'_calorias','field_6458e8ac28777'),
(233,49,'fibra','12.3'),
(234,49,'_fibra','field_6458e8c028778'),
(235,49,'proteinas','18.3'),
(236,49,'_proteinas','field_6458e8d128779'),
(237,49,'carbohidratos','38.2'),
(238,49,'_carbohidratos','field_64592e5efc11b'),
(239,49,'grasas','14'),
(240,49,'_grasas','field_6458e8f42877a'),
(241,49,'azucares','10.4'),
(242,49,'_azucares','field_6458ed1a2877b'),
(243,49,'ingredientes','ddddddd'),
(244,49,'_ingredientes','field_6458ed452877c'),
(245,49,'instrucciones','dddddddd'),
(246,49,'_instrucciones','field_6458edb32877d'),
(247,51,'_edit_lock','1683632680:1'),
(250,51,'_edit_last','1'),
(251,51,'imagen_del_plato','52'),
(252,51,'_imagen_del_plato','field_6458ee062877e'),
(253,51,'tiempo_de_ejecucion','30'),
(254,51,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(255,51,'complejidad','Fácil'),
(256,51,'_complejidad','field_6458e7fe28775'),
(257,51,'tipo_de_comida','Almuerzo'),
(258,51,'_tipo_de_comida','field_6458e84f28776'),
(259,51,'calorias','810'),
(260,51,'_calorias','field_6458e8ac28777'),
(261,51,'fibra','20.3'),
(262,51,'_fibra','field_6458e8c028778'),
(263,51,'proteinas','28.5'),
(264,51,'_proteinas','field_6458e8d128779'),
(265,51,'carbohidratos','89.1'),
(266,51,'_carbohidratos','field_64592e5efc11b'),
(267,51,'grasas','33.6'),
(268,51,'_grasas','field_6458e8f42877a'),
(269,51,'azucares','14.2'),
(270,51,'_azucares','field_6458ed1a2877b'),
(271,51,'ingredientes','fffff'),
(272,51,'_ingredientes','field_6458ed452877c'),
(273,51,'instrucciones','fffffffff'),
(274,51,'_instrucciones','field_6458edb32877d'),
(275,53,'_edit_lock','1684752396:1'),
(277,59,'_edit_lock','1684775665:3'),
(278,59,'_edit_last','1'),
(281,59,'imagen_del_plato','60'),
(282,59,'_imagen_del_plato','field_6458ee062877e'),
(283,59,'tiempo_de_ejecucion','30'),
(284,59,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(285,59,'complejidad','Fácil'),
(286,59,'_complejidad','field_6458e7fe28775'),
(287,59,'tipo_de_comida','Almuerzo'),
(288,59,'_tipo_de_comida','field_6458e84f28776'),
(289,59,'calorias','50'),
(290,59,'_calorias','field_6458e8ac28777'),
(291,59,'fibra','50'),
(292,59,'_fibra','field_6458e8c028778'),
(293,59,'proteinas','50'),
(294,59,'_proteinas','field_6458e8d128779'),
(295,59,'carbohidratos','50'),
(296,59,'_carbohidratos','field_64592e5efc11b'),
(297,59,'grasas','50'),
(298,59,'_grasas','field_6458e8f42877a'),
(299,59,'azucares','50'),
(300,59,'_azucares','field_6458ed1a2877b'),
(301,59,'ingredientes','fff'),
(302,59,'_ingredientes','field_6458ed452877c'),
(303,59,'instrucciones','fffff'),
(304,59,'_instrucciones','field_6458edb32877d'),
(329,62,'_edit_last','1'),
(330,62,'imagen_del_plato',''),
(331,62,'_imagen_del_plato','field_6458ee062877e'),
(332,62,'tiempo_de_ejecucion','30'),
(333,62,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(334,62,'complejidad','Fácil'),
(335,62,'_complejidad','field_6458e7fe28775'),
(336,62,'tipo_de_comida','Almuerzo'),
(337,62,'_tipo_de_comida','field_6458e84f28776'),
(338,62,'calorias','50'),
(339,62,'_calorias','field_6458e8ac28777'),
(340,62,'fibra','50'),
(341,62,'_fibra','field_6458e8c028778'),
(342,62,'proteinas','50'),
(343,62,'_proteinas','field_6458e8d128779'),
(344,62,'carbohidratos','50'),
(345,62,'_carbohidratos','field_64592e5efc11b'),
(346,62,'grasas','50'),
(347,62,'_grasas','field_6458e8f42877a'),
(348,62,'azucares','50'),
(349,62,'_azucares','field_6458ed1a2877b'),
(350,62,'ingredientes',''),
(351,62,'_ingredientes','field_6458ed452877c'),
(352,62,'instrucciones',''),
(353,62,'_instrucciones','field_6458edb32877d'),
(354,62,'_edit_lock','1683740016:1'),
(355,64,'_edit_last','1'),
(356,64,'imagen_del_plato',''),
(357,64,'_imagen_del_plato','field_6458ee062877e'),
(358,64,'tiempo_de_ejecucion','30'),
(359,64,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(360,64,'complejidad','Fácil'),
(361,64,'_complejidad','field_6458e7fe28775'),
(362,64,'tipo_de_comida','Almuerzo'),
(363,64,'_tipo_de_comida','field_6458e84f28776'),
(364,64,'calorias','50'),
(365,64,'_calorias','field_6458e8ac28777'),
(366,64,'fibra','50'),
(367,64,'_fibra','field_6458e8c028778'),
(368,64,'proteinas','50'),
(369,64,'_proteinas','field_6458e8d128779'),
(370,64,'carbohidratos','50'),
(371,64,'_carbohidratos','field_64592e5efc11b'),
(372,64,'grasas','50'),
(373,64,'_grasas','field_6458e8f42877a'),
(374,64,'azucares','50'),
(375,64,'_azucares','field_6458ed1a2877b'),
(376,64,'ingredientes',''),
(377,64,'_ingredientes','field_6458ed452877c'),
(378,64,'instrucciones',''),
(379,64,'_instrucciones','field_6458edb32877d'),
(380,64,'_edit_lock','1684775494:3'),
(381,65,'_edit_last','1'),
(382,65,'imagen_del_plato',''),
(383,65,'_imagen_del_plato','field_6458ee062877e'),
(384,65,'tiempo_de_ejecucion','30'),
(385,65,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(386,65,'complejidad','Fácil'),
(387,65,'_complejidad','field_6458e7fe28775'),
(388,65,'tipo_de_comida','Almuerzo'),
(389,65,'_tipo_de_comida','field_6458e84f28776'),
(390,65,'calorias','50'),
(391,65,'_calorias','field_6458e8ac28777'),
(392,65,'fibra','50'),
(393,65,'_fibra','field_6458e8c028778'),
(394,65,'proteinas','50'),
(395,65,'_proteinas','field_6458e8d128779'),
(396,65,'carbohidratos','50'),
(397,65,'_carbohidratos','field_64592e5efc11b'),
(398,65,'grasas','50'),
(399,65,'_grasas','field_6458e8f42877a'),
(400,65,'azucares','50'),
(401,65,'_azucares','field_6458ed1a2877b'),
(402,65,'ingredientes',''),
(403,65,'_ingredientes','field_6458ed452877c'),
(404,65,'instrucciones',''),
(405,65,'_instrucciones','field_6458edb32877d'),
(406,65,'_edit_lock','1684782495:3'),
(407,66,'_edit_lock','1685108688:3'),
(408,66,'_edit_last','3'),
(409,66,'imagen_del_plato',''),
(410,66,'_imagen_del_plato','field_6458ee062877e'),
(411,66,'tiempo_de_ejecucion','30'),
(412,66,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(413,66,'complejidad','Fácil'),
(414,66,'_complejidad','field_6458e7fe28775'),
(415,66,'tipo_de_comida','Desayuno'),
(416,66,'_tipo_de_comida','field_6458e84f28776'),
(417,66,'calorias','50'),
(418,66,'_calorias','field_6458e8ac28777'),
(419,66,'fibra','50'),
(420,66,'_fibra','field_6458e8c028778'),
(421,66,'proteinas','50'),
(422,66,'_proteinas','field_6458e8d128779'),
(423,66,'carbohidratos','50'),
(424,66,'_carbohidratos','field_64592e5efc11b'),
(425,66,'grasas','50'),
(426,66,'_grasas','field_6458e8f42877a'),
(427,66,'azucares','50'),
(428,66,'_azucares','field_6458ed1a2877b'),
(429,66,'ingredientes','ffsdfsdf'),
(430,66,'_ingredientes','field_6458ed452877c'),
(431,66,'instrucciones','ffsdsdf'),
(432,66,'_instrucciones','field_6458edb32877d'),
(433,67,'_edit_lock','1684775482:3'),
(434,67,'_edit_last','1'),
(435,68,'_wp_attached_file','2023/05/482c849c-010b-4e5c-b973-0f4e324c319c_fried-bean-mushroom-wraps-1.png'),
(436,68,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:768;s:6:\"height\";i:960;s:4:\"file\";s:76:\"2023/05/482c849c-010b-4e5c-b973-0f4e324c319c_fried-bean-mushroom-wraps-1.png\";s:8:\"filesize\";i:1178784;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(437,67,'imagen_del_plato','68'),
(438,67,'_imagen_del_plato','field_6458ee062877e'),
(439,67,'tiempo_de_ejecucion','30'),
(440,67,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(441,67,'complejidad','Fácil'),
(442,67,'_complejidad','field_6458e7fe28775'),
(443,67,'tipo_de_comida','Almuerzo'),
(444,67,'_tipo_de_comida','field_6458e84f28776'),
(445,67,'calorias','50'),
(446,67,'_calorias','field_6458e8ac28777'),
(447,67,'fibra','50'),
(448,67,'_fibra','field_6458e8c028778'),
(449,67,'proteinas','50'),
(450,67,'_proteinas','field_6458e8d128779'),
(451,67,'carbohidratos','50'),
(452,67,'_carbohidratos','field_64592e5efc11b'),
(453,67,'grasas','50'),
(454,67,'_grasas','field_6458e8f42877a'),
(455,67,'azucares','50'),
(456,67,'_azucares','field_6458ed1a2877b'),
(457,67,'ingredientes',''),
(458,67,'_ingredientes','field_6458ed452877c'),
(459,67,'instrucciones',''),
(460,67,'_instrucciones','field_6458edb32877d'),
(461,62,'_wp_trash_meta_status','publish'),
(462,62,'_wp_trash_meta_time','1683742982'),
(463,62,'_wp_desired_post_slug','receta-2'),
(464,75,'_menu_item_type','post_type_archive'),
(465,75,'_menu_item_menu_item_parent','0'),
(466,75,'_menu_item_object_id','-11'),
(467,75,'_menu_item_object','recetas_post_type'),
(468,75,'_menu_item_target',''),
(469,75,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
(470,75,'_menu_item_xfn',''),
(471,75,'_menu_item_url',''),
(473,75,'_wp_old_date','2023-05-12'),
(474,76,'_menu_item_type','post_type_archive'),
(475,76,'_menu_item_menu_item_parent','0'),
(476,76,'_menu_item_object_id','-11'),
(477,76,'_menu_item_object','recetas_post_type'),
(478,76,'_menu_item_target',''),
(479,76,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
(480,76,'_menu_item_xfn',''),
(481,76,'_menu_item_url',''),
(483,77,'_menu_item_type','post_type'),
(484,77,'_menu_item_menu_item_parent','0'),
(485,77,'_menu_item_object_id','53'),
(486,77,'_menu_item_object','page'),
(487,77,'_menu_item_target',''),
(488,77,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
(489,77,'_menu_item_xfn',''),
(490,77,'_menu_item_url',''),
(492,79,'_edit_lock','1685052219:1'),
(493,79,'_wp_page_template','template-listapacientesnutricionista.php'),
(494,82,'_menu_item_type','post_type'),
(495,82,'_menu_item_menu_item_parent','0'),
(496,82,'_menu_item_object_id','79'),
(497,82,'_menu_item_object','page'),
(498,82,'_menu_item_target',''),
(499,82,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
(500,82,'_menu_item_xfn',''),
(501,82,'_menu_item_url',''),
(503,84,'_edit_lock','1685052245:1'),
(504,86,'_edit_lock','1684445621:1'),
(505,88,'_edit_lock','1684680191:1'),
(506,59,'_wp_trash_meta_status','publish'),
(507,59,'_wp_trash_meta_time','1684775693'),
(508,59,'_wp_desired_post_slug','prueba'),
(509,96,'_edit_lock','1685100831:1'),
(510,96,'_edit_last','3'),
(511,96,'imagen_del_plato','99'),
(512,96,'_imagen_del_plato','field_6458ee062877e'),
(513,96,'tiempo_de_ejecucion','30'),
(514,96,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(515,96,'complejidad','Fácil'),
(516,96,'_complejidad','field_6458e7fe28775'),
(517,96,'tipo_de_comida','Almuerzo'),
(518,96,'_tipo_de_comida','field_6458e84f28776'),
(519,96,'calorias','50'),
(520,96,'_calorias','field_6458e8ac28777'),
(521,96,'fibra','50'),
(522,96,'_fibra','field_6458e8c028778'),
(523,96,'proteinas','50'),
(524,96,'_proteinas','field_6458e8d128779'),
(525,96,'carbohidratos','50'),
(526,96,'_carbohidratos','field_64592e5efc11b'),
(527,96,'grasas','50'),
(528,96,'_grasas','field_6458e8f42877a'),
(529,96,'azucares','50'),
(530,96,'_azucares','field_6458ed1a2877b'),
(531,96,'ingredientes','uno\r\ndos \r\ntres\r\ncuatro'),
(532,96,'_ingredientes','field_6458ed452877c'),
(533,96,'instrucciones','uno\r\ndos \r\ntres\r\ncuatro'),
(534,96,'_instrucciones','field_6458edb32877d'),
(536,2,'_edit_lock','1685052231:1'),
(537,99,'_wp_attached_file','2023/05/482c849c-010b-4e5c-b973-0f4e324c319c_fried-bean-mushroom-wraps-2.png'),
(538,99,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:768;s:6:\"height\";i:960;s:4:\"file\";s:76:\"2023/05/482c849c-010b-4e5c-b973-0f4e324c319c_fried-bean-mushroom-wraps-2.png\";s:8:\"filesize\";i:1178784;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:76:\"482c849c-010b-4e5c-b973-0f4e324c319c_fried-bean-mushroom-wraps-2-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:138208;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:76:\"482c849c-010b-4e5c-b973-0f4e324c319c_fried-bean-mushroom-wraps-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:50664;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(539,101,'_edit_lock','1685472666:1'),
(540,101,'_edit_last','1'),
(541,101,'imagen_del_plato',''),
(542,101,'_imagen_del_plato','field_6458ee062877e'),
(543,101,'tiempo_de_ejecucion','30'),
(544,101,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(545,101,'complejidad','Fácil'),
(546,101,'_complejidad','field_6458e7fe28775'),
(547,101,'tipo_de_comida','Merienda'),
(548,101,'_tipo_de_comida','field_6458e84f28776'),
(549,101,'calorias','50'),
(550,101,'_calorias','field_6458e8ac28777'),
(551,101,'fibra','50'),
(552,101,'_fibra','field_6458e8c028778'),
(553,101,'proteinas','50'),
(554,101,'_proteinas','field_6458e8d128779'),
(555,101,'carbohidratos','50'),
(556,101,'_carbohidratos','field_64592e5efc11b'),
(557,101,'grasas','50'),
(558,101,'_grasas','field_6458e8f42877a'),
(559,101,'azucares','50'),
(560,101,'_azucares','field_6458ed1a2877b'),
(561,101,'ingredientes','cc'),
(562,101,'_ingredientes','field_6458ed452877c'),
(563,101,'instrucciones','cc'),
(564,101,'_instrucciones','field_6458edb32877d'),
(565,102,'_edit_lock','1685473541:1'),
(566,102,'_edit_last','1'),
(567,102,'imagen_del_plato',''),
(568,102,'_imagen_del_plato','field_6458ee062877e'),
(569,102,'tiempo_de_ejecucion','30'),
(570,102,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(571,102,'complejidad','Fácil'),
(572,102,'_complejidad','field_6458e7fe28775'),
(573,102,'tipo_de_comida','Cena'),
(574,102,'_tipo_de_comida','field_6458e84f28776'),
(575,102,'calorias','50'),
(576,102,'_calorias','field_6458e8ac28777'),
(577,102,'fibra','50'),
(578,102,'_fibra','field_6458e8c028778'),
(579,102,'proteinas','50'),
(580,102,'_proteinas','field_6458e8d128779'),
(581,102,'carbohidratos','50'),
(582,102,'_carbohidratos','field_64592e5efc11b'),
(583,102,'grasas','50'),
(584,102,'_grasas','field_6458e8f42877a'),
(585,102,'azucares','50'),
(586,102,'_azucares','field_6458ed1a2877b'),
(587,102,'ingredientes','fggg'),
(588,102,'_ingredientes','field_6458ed452877c'),
(589,102,'instrucciones','gggf'),
(590,102,'_instrucciones','field_6458edb32877d'),
(591,103,'_edit_lock','1685476127:1'),
(592,107,'_edit_lock','1685476294:1'),
(593,107,'_wp_trash_meta_status','publish'),
(594,107,'_wp_trash_meta_time','1685476327'),
(595,108,'_wp_trash_meta_status','publish'),
(596,108,'_wp_trash_meta_time','1685482835'),
(597,109,'_edit_lock','1685716594:13'),
(598,109,'_edit_last','3'),
(599,110,'_wp_attached_file','2023/05/9065b0db-a356-443c-810d-41ca02915c84_cherry-sundried-tomato-pasta.png'),
(600,110,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:768;s:6:\"height\";i:960;s:4:\"file\";s:77:\"2023/05/9065b0db-a356-443c-810d-41ca02915c84_cherry-sundried-tomato-pasta.png\";s:8:\"filesize\";i:880498;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:77:\"9065b0db-a356-443c-810d-41ca02915c84_cherry-sundried-tomato-pasta-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:111326;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:77:\"9065b0db-a356-443c-810d-41ca02915c84_cherry-sundried-tomato-pasta-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:39815;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(601,109,'imagen_del_plato','110'),
(602,109,'_imagen_del_plato','field_6458ee062877e'),
(603,109,'tiempo_de_ejecucion','20'),
(604,109,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(605,109,'complejidad','Fácil'),
(606,109,'_complejidad','field_6458e7fe28775'),
(607,109,'tipo_de_comida','Almuerzo'),
(608,109,'_tipo_de_comida','field_6458e84f28776'),
(609,109,'calorias','319'),
(610,109,'_calorias','field_6458e8ac28777'),
(611,109,'fibra','6.3'),
(612,109,'_fibra','field_6458e8c028778'),
(613,109,'proteinas','9.5'),
(614,109,'_proteinas','field_6458e8d128779'),
(615,109,'carbohidratos','39.4'),
(616,109,'_carbohidratos','field_64592e5efc11b'),
(617,109,'grasas','12.4'),
(618,109,'_grasas','field_6458e8f42877a'),
(619,109,'azucares','7.5'),
(620,109,'_azucares','field_6458ed1a2877b'),
(621,109,'ingredientes','Pasta tipo penne (100g)\r\nTomates cherrys (100g)\r\nCebolla picada (1/4 de unidad)\r\nCaldo de verduras (50ml)\r\nTomate triturado (5g)\r\nTomates secos, picados en trozos grandes (25g)\r\nAceite de oliva (1 y 1/2 cucharadas)\r\nQueso parmesano rayado (1 cucharadita)'),
(622,109,'_ingredientes','field_6458ed452877c'),
(623,109,'instrucciones','Cocine la pasta según las instrucciones ~ 10 minutos – escúrrala una vez cocida.\r\nCaliente un wok a fuego alto, una vez caliente agregue el aceite de oliva junto con la cebolla picada y saltee durante ~ 4 minutos.\r\nAgregue los tomates cherry y cocine hasta que estén pochaditos ~ 4 minutos.\r\nAgregue el tomate triturado, el caldo de verduras y los tomates secos picados, mezcle bien.\r\nAgregue la pasta al wok, mezcle bien y retire del fuego.\r\nServir en un bol y echar el queso parmesano rayado por encima.'),
(624,109,'_instrucciones','field_6458edb32877d'),
(625,111,'_edit_lock','1685532443:3'),
(626,111,'_edit_last','3'),
(627,112,'_wp_attached_file','2023/05/482c849c-010b-4e5c-b973-0f4e324c319c_fried-bean-mushroom-wraps.png'),
(628,112,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:768;s:6:\"height\";i:960;s:4:\"file\";s:74:\"2023/05/482c849c-010b-4e5c-b973-0f4e324c319c_fried-bean-mushroom-wraps.png\";s:8:\"filesize\";i:1178784;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:74:\"482c849c-010b-4e5c-b973-0f4e324c319c_fried-bean-mushroom-wraps-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:138208;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:74:\"482c849c-010b-4e5c-b973-0f4e324c319c_fried-bean-mushroom-wraps-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:50664;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(629,111,'imagen_del_plato','112'),
(630,111,'_imagen_del_plato','field_6458ee062877e'),
(631,111,'tiempo_de_ejecucion','30'),
(632,111,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(633,111,'complejidad','Moderada'),
(634,111,'_complejidad','field_6458e7fe28775'),
(635,111,'tipo_de_comida','Cena'),
(636,111,'_tipo_de_comida','field_6458e84f28776'),
(637,111,'calorias','810'),
(638,111,'_calorias','field_6458e8ac28777'),
(639,111,'fibra','20.3'),
(640,111,'_fibra','field_6458e8c028778'),
(641,111,'proteinas','28.5'),
(642,111,'_proteinas','field_6458e8d128779'),
(643,111,'carbohidratos','92.1'),
(644,111,'_carbohidratos','field_64592e5efc11b'),
(645,111,'grasas','33.6'),
(646,111,'_grasas','field_6458e8f42877a'),
(647,111,'azucares','14.2'),
(648,111,'_azucares','field_6458ed1a2877b'),
(649,111,'ingredientes','Frijoles rojos (125g)\r\nHongos cortados en rodajas (100g)\r\nCebolla cortada en rodajas (1/2 unidad)\r\nDientes de ajo (2 unidades)\r\nTomate triturado (10g)\r\nComino molido (1 cucharadita)\r\nPimentón ahumado (1/2 cucharadita)\r\nCaldo de verduras (100ml)\r\nMayonesa (20g)\r\nPasta de chipotle (5g)\r\nJugo de medio limón\r\nTortilla de trigo integral (2 unidades)\r\nLechuga baby (1/2 unidad)\r\nQueso feta (15g)\r\nAceite de oliva (1 y 1/2 cucharadas)'),
(650,111,'_ingredientes','field_6458ed452877c'),
(651,111,'instrucciones','Escurra y enjuague los frijoles rojos, luego agregue la mitad a un tazón y triture con el dorso de un tenedor.\r\nCalienta un wok a fuego medio-alto. Una vez caliente, agregue el aceite y la cebolla en rodajas; fría durante 4 minutos, revolviendo ocasionalmente.\r\nAñadir los champiñones en rodajas y freír durante 4 minutos hasta que estén tiernos.\r\nMachaque los ajos y añádalos junto al tomate triturado, el comino, el pimentón ahumado y los frijoles rojos; cocine por 1 minuto.\r\nAgregue el caldo de verduras y cocine durante 6 minutos; retire el fuego una vez hecho.\r\nEn un tazón pequeño, agregue la mayonesa, la pasta de chipotle y sazone al gusto con jugo de limón; mezcle bien.\r\nCoja una tortilla de trigo integral y agregue la lechuga baby, un par de cucharadas de la mezcla de frijoles, champiñones y espolvoree un poco de queso feta encima con una llovizna de mayonesa de chipotle.'),
(652,111,'_instrucciones','field_6458edb32877d'),
(653,113,'_edit_lock','1685533098:3'),
(654,113,'_edit_last','3'),
(655,114,'_wp_attached_file','2023/05/350441c2-5110-403f-bd30-97d8f2c547ea_banana-cinnamon-surreal-overnight-oats.png'),
(656,114,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:768;s:6:\"height\";i:960;s:4:\"file\";s:87:\"2023/05/350441c2-5110-403f-bd30-97d8f2c547ea_banana-cinnamon-surreal-overnight-oats.png\";s:8:\"filesize\";i:795267;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:87:\"350441c2-5110-403f-bd30-97d8f2c547ea_banana-cinnamon-surreal-overnight-oats-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:101510;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:87:\"350441c2-5110-403f-bd30-97d8f2c547ea_banana-cinnamon-surreal-overnight-oats-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:39209;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(657,113,'imagen_del_plato','114'),
(658,113,'_imagen_del_plato','field_6458ee062877e'),
(659,113,'tiempo_de_ejecucion','10'),
(660,113,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(661,113,'complejidad','Fácil'),
(662,113,'_complejidad','field_6458e7fe28775'),
(663,113,'tipo_de_comida','Desayuno'),
(664,113,'_tipo_de_comida','field_6458e84f28776'),
(665,113,'calorias','569'),
(666,113,'_calorias','field_6458e8ac28777'),
(667,113,'fibra','16.4'),
(668,113,'_fibra','field_6458e8c028778'),
(669,113,'proteinas','21.2'),
(670,113,'_proteinas','field_6458e8d128779'),
(671,113,'carbohidratos','79.4'),
(672,113,'_carbohidratos','field_64592e5efc11b'),
(673,113,'grasas','17.8'),
(674,113,'_grasas','field_6458e8f42877a'),
(675,113,'azucares','27.2'),
(676,113,'_azucares','field_6458ed1a2877b'),
(677,113,'ingredientes','Copos de avena (50g)\r\nSemillas de chía (1 cucharadita)\r\nSemillas de lino (1 cucharadita)\r\nPlátano (1 unidad)\r\nLeche de almendras (200ml)\r\nCereales con canela (20g)\r\nSirope de arce (1 cucharada)'),
(678,113,'_ingredientes','field_6458ed452877c'),
(679,113,'instrucciones','En un recipiente pequeño, añade la avena, las semillas de lino, las semillas de chía y la leche de almendras; mézclalos y mételos en la nevera toda la noche o al menos durante 6 horas.\r\nUna vez listo para comer, sácalo de la nevera y añádele el plátano cortado en rodajas y los cereales con canela.\r\nTerminar con un chorrito de sirope de arce.'),
(680,113,'_instrucciones','field_6458edb32877d'),
(681,115,'_edit_lock','1685533790:3'),
(682,115,'_edit_last','3'),
(683,116,'_wp_attached_file','2023/05/6888281e-7d9d-4f83-abcb-6c1ac5eaf88c_chickpea-mayo-sandwhich.png'),
(684,116,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:768;s:6:\"height\";i:960;s:4:\"file\";s:72:\"2023/05/6888281e-7d9d-4f83-abcb-6c1ac5eaf88c_chickpea-mayo-sandwhich.png\";s:8:\"filesize\";i:786712;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:72:\"6888281e-7d9d-4f83-abcb-6c1ac5eaf88c_chickpea-mayo-sandwhich-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:102656;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:72:\"6888281e-7d9d-4f83-abcb-6c1ac5eaf88c_chickpea-mayo-sandwhich-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:41226;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(685,115,'imagen_del_plato','116'),
(686,115,'_imagen_del_plato','field_6458ee062877e'),
(687,115,'tiempo_de_ejecucion','10'),
(688,115,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(689,115,'complejidad','Fácil'),
(690,115,'_complejidad','field_6458e7fe28775'),
(691,115,'tipo_de_comida','Cena'),
(692,115,'_tipo_de_comida','field_6458e84f28776'),
(693,115,'calorias','496'),
(694,115,'_calorias','field_6458e8ac28777'),
(695,115,'fibra','13.7'),
(696,115,'_fibra','field_6458e8c028778'),
(697,115,'proteinas','17.9'),
(698,115,'_proteinas','field_6458e8d128779'),
(699,115,'carbohidratos','52.5'),
(700,115,'_carbohidratos','field_64592e5efc11b'),
(701,115,'grasas','21.3'),
(702,115,'_grasas','field_6458e8f42877a'),
(703,115,'azucares','3.2'),
(704,115,'_azucares','field_6458ed1a2877b'),
(705,115,'ingredientes','Garbanzos (125g)\r\nMayonesa (1 y 1/2 cucharada)\r\nJugo de limón (1/4 de unidad)\r\nMostaza de Dijon (1/4 cucharadita)\r\nSal (1/2 cucharadita)\r\nPimienta negra molida (1/2 cucharadita)\r\nPerejil cortado (5g)\r\nPan de molde integral (2 rebanadas)'),
(706,115,'_ingredientes','field_6458ed452877c'),
(707,115,'instrucciones','Escurrir y enjuagar los garbanzos, añadirlos a un cuenco y aplastarlos con el dorso de un tenedor.\r\nAñada al bol la mayonesa, el zumo de limón, la mostaza de Dijon, la sal, la pimienta y el perejil.\r\nAñadir la mezcla de garbanzos al pan y crear un sándwich.'),
(708,115,'_instrucciones','field_6458edb32877d'),
(709,117,'_edit_lock','1685534922:3'),
(710,117,'_edit_last','3'),
(711,118,'_wp_attached_file','2023/05/91905468-bc83-43df-b6bf-01db85d74045_pumpkin-pie-porridge.png'),
(712,118,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:768;s:6:\"height\";i:960;s:4:\"file\";s:69:\"2023/05/91905468-bc83-43df-b6bf-01db85d74045_pumpkin-pie-porridge.png\";s:8:\"filesize\";i:773274;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:69:\"91905468-bc83-43df-b6bf-01db85d74045_pumpkin-pie-porridge-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:102824;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:69:\"91905468-bc83-43df-b6bf-01db85d74045_pumpkin-pie-porridge-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:38097;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(713,117,'imagen_del_plato','118'),
(714,117,'_imagen_del_plato','field_6458ee062877e'),
(715,117,'tiempo_de_ejecucion','15'),
(716,117,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(717,117,'complejidad','Fácil'),
(718,117,'_complejidad','field_6458e7fe28775'),
(719,117,'tipo_de_comida','Desayuno'),
(720,117,'_tipo_de_comida','field_6458e84f28776'),
(721,117,'calorias','436'),
(722,117,'_calorias','field_6458e8ac28777'),
(723,117,'fibra','12.5'),
(724,117,'_fibra','field_6458e8c028778'),
(725,117,'proteinas','10.2'),
(726,117,'_proteinas','field_6458e8d128779'),
(727,117,'carbohidratos','79.5'),
(728,117,'_carbohidratos','field_64592e5efc11b'),
(729,117,'grasas','9.9'),
(730,117,'_grasas','field_6458e8f42877a'),
(731,117,'azucares','29.8'),
(732,117,'_azucares','field_6458ed1a2877b'),
(733,117,'ingredientes','Copos de avena (50g)\r\nLeche de almendras (200ml)\r\nPlátano (1 unidad)\r\nDátiles (2 unidades)\r\nAgua (100ml)\r\nSirope de arce (1 y 1/2 cucharaditas)\r\nCanela molida (1/2 cucharadita)\r\nJengibre molido (1/4 cucharadita)\r\nClavo molido (1/8 cucharadita)\r\nNuez moscada molida (1/8 cucharadita)\r\nSemillas de calabaza (10g)'),
(734,117,'_ingredientes','field_6458ed452877c'),
(735,117,'instrucciones','Añada los dátiles y el agua en un bol y métalo en el microondas durante 30 segundos.\r\nSacar del microondas y aplastar con un tenedor.\r\nAñada el plátano al bol y machacarlo con un tenedor.\r\nEn una cacerola pequeña, agregue avena, canela, jengibre, clavo, nuez moscada, jarabe de arce y leche de almendras; cocine por 5 minutos.\r\nPasar a un bol y espolvorear las semillas de calabaza por encima.'),
(736,117,'_instrucciones','field_6458edb32877d'),
(737,119,'_edit_lock','1685548322:3'),
(738,119,'_edit_last','3'),
(739,120,'_wp_attached_file','2023/05/d8263ff5-5a84-439d-a43e-6628922f376a_chocolate-peanut-butter-protein-bars.png'),
(740,120,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:768;s:6:\"height\";i:960;s:4:\"file\";s:85:\"2023/05/d8263ff5-5a84-439d-a43e-6628922f376a_chocolate-peanut-butter-protein-bars.png\";s:8:\"filesize\";i:1141773;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:85:\"d8263ff5-5a84-439d-a43e-6628922f376a_chocolate-peanut-butter-protein-bars-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:127746;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:85:\"d8263ff5-5a84-439d-a43e-6628922f376a_chocolate-peanut-butter-protein-bars-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:49419;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(741,119,'imagen_del_plato','120'),
(742,119,'_imagen_del_plato','field_6458ee062877e'),
(743,119,'tiempo_de_ejecucion','70'),
(744,119,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(745,119,'complejidad','Difícil'),
(746,119,'_complejidad','field_6458e7fe28775'),
(747,119,'tipo_de_comida','Merienda'),
(748,119,'_tipo_de_comida','field_6458e84f28776'),
(749,119,'calorias','365'),
(750,119,'_calorias','field_6458e8ac28777'),
(751,119,'fibra','12.3'),
(752,119,'_fibra','field_6458e8c028778'),
(753,119,'proteinas','18.3'),
(754,119,'_proteinas','field_6458e8d128779'),
(755,119,'carbohidratos','38.2'),
(756,119,'_carbohidratos','field_64592e5efc11b'),
(757,119,'grasas','14'),
(758,119,'_grasas','field_6458e8f42877a'),
(759,119,'azucares','10.4'),
(760,119,'_azucares','field_6458ed1a2877b'),
(761,119,'ingredientes','Dátiles (8 unidades)\r\nCopos de avena (160g)\r\nCrema de cacahuete (40g)\r\nProteína en polvo de chocolate (40g)\r\nLeche de almendras (200ml)\r\nSemillas de chía (4 cucharaditas)\r\nCacao en polvo desgrasado (2 cucharadas)\r\nAgua (40ml)'),
(762,119,'_ingredientes','field_6458ed452877c'),
(763,119,'instrucciones','Añada los dátiles y el agua en un bol y métalo en el microondas durante 1 minuto.\r\nSacar del microondas y aplastar con un tenedor.\r\nCalentar en el microondas durante 1 minuto más y aplastar con un tenedor hasta que se convierta en una pasta.\r\nAñadir la crema de cacahuete y la leche de almendras.\r\nPonga la avena, la proteína en polvo de chocolate, las semillas de chía y el cacao en polvo desgrasado en un bol aparte.\r\nVerter la mezcla de crema de cacahuete en los ingredientes secos y mezclar bien (añadir más leche de almendras si está demasiado seco).\r\nAñada la mezcla a un plato pequeño y métalo en el frigorífico durante al menos 60 minutos.\r\nSaca el plato pequeño del frigorífico y córtalo para crear barritas.'),
(764,119,'_instrucciones','field_6458edb32877d'),
(765,121,'_edit_lock','1685545807:3'),
(766,121,'_edit_last','3'),
(767,122,'_wp_attached_file','2023/05/fad9e994-32e9-4511-b620-5b3a6287009f_mushroom-spinach-pesto-toasted-sandwich.png'),
(768,122,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:768;s:6:\"height\";i:960;s:4:\"file\";s:88:\"2023/05/fad9e994-32e9-4511-b620-5b3a6287009f_mushroom-spinach-pesto-toasted-sandwich.png\";s:8:\"filesize\";i:867091;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:88:\"fad9e994-32e9-4511-b620-5b3a6287009f_mushroom-spinach-pesto-toasted-sandwich-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:108617;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:88:\"fad9e994-32e9-4511-b620-5b3a6287009f_mushroom-spinach-pesto-toasted-sandwich-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:39549;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(769,121,'imagen_del_plato','122'),
(770,121,'_imagen_del_plato','field_6458ee062877e'),
(771,121,'tiempo_de_ejecucion','25'),
(772,121,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(773,121,'complejidad','Fácil'),
(774,121,'_complejidad','field_6458e7fe28775'),
(775,121,'tipo_de_comida','Almuerzo'),
(776,121,'_tipo_de_comida','field_6458e84f28776'),
(777,121,'calorias','462'),
(778,121,'_calorias','field_6458e8ac28777'),
(779,121,'fibra','12.4'),
(780,121,'_fibra','field_6458e8c028778'),
(781,121,'proteinas','21.2'),
(782,121,'_proteinas','field_6458e8d128779'),
(783,121,'carbohidratos','40.4'),
(784,121,'_carbohidratos','field_64592e5efc11b'),
(785,121,'grasas','22.6'),
(786,121,'_grasas','field_6458e8f42877a'),
(787,121,'azucares','6.6'),
(788,121,'_azucares','field_6458ed1a2877b'),
(789,121,'ingredientes','Champiñones (100g)\r\nEspinacas (37.5g)\r\nDiente de ajo (1 unidad)\r\nAceite de oliva (1 y 1/2 cucharadas)\r\nPan de molde integral (2 rebanadas)\r\nTomate (1/2 unidad)\r\nNueces (10g)\r\nAlbahaca (7.5g)\r\nQueso havarti rayado (3/4 cucharada)\r\nJugo de limón (1/8 cucharada)\r\nSal (1/2 cucharada)\r\nPimienta negra molida (1/2 cucharada)'),
(790,121,'_ingredientes','field_6458ed452877c'),
(791,121,'instrucciones','Calentar una sartén a fuego fuerte, una vez caliente añadir el aceite de oliva junto con los champiñones y el ajo - cocinar durante ~ 4 min.\r\nAñade las espinacas a la sartén y cocínalas hasta que se pochen.\r\nAñadir las nueces, las espinacas, la albahaca, el ajo, el queso havarti rayado, el jugo de limón, la sal, la pimienta y el aceite de oliva a un mortero y machacar los ingredientes hasta obtener una pasta homogénea.\r\nSaca el pan de la sartén, coloca la mezcla de champiñones en cada rebanada de pan y pon encima rodajas de tomate.\r\nUnta otra rebanada de pan con pesto y colócala encima del tomate para crear un sándwich, con el pesto hacia abajo.\r\nPoner de nuevo en la sartén por el lado sin tostar y tostar durante unos 3 minutos - sacar y cortar por la mitad.'),
(792,121,'_instrucciones','field_6458edb32877d'),
(793,123,'_edit_lock','1685546631:3'),
(794,123,'_edit_last','3'),
(795,124,'_wp_attached_file','2023/05/95c4312f-2080-43a8-ae4e-363803bb2629_cauliflower-steaks-couscous-salad.png'),
(796,124,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:768;s:6:\"height\";i:1024;s:4:\"file\";s:82:\"2023/05/95c4312f-2080-43a8-ae4e-363803bb2629_cauliflower-steaks-couscous-salad.png\";s:8:\"filesize\";i:1165762;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:82:\"95c4312f-2080-43a8-ae4e-363803bb2629_cauliflower-steaks-couscous-salad-225x300.png\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:117092;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:82:\"95c4312f-2080-43a8-ae4e-363803bb2629_cauliflower-steaks-couscous-salad-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:45134;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(797,123,'imagen_del_plato','124'),
(798,123,'_imagen_del_plato','field_6458ee062877e'),
(799,123,'tiempo_de_ejecucion','35'),
(800,123,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(801,123,'complejidad','Moderada'),
(802,123,'_complejidad','field_6458e7fe28775'),
(803,123,'tipo_de_comida','Almuerzo'),
(804,123,'_tipo_de_comida','field_6458e84f28776'),
(805,123,'calorias','457'),
(806,123,'_calorias','field_6458e8ac28777'),
(807,123,'fibra','11.8'),
(808,123,'_fibra','field_6458e8c028778'),
(809,123,'proteinas','14.5'),
(810,123,'_proteinas','field_6458e8d128779'),
(811,123,'carbohidratos','39.2'),
(812,123,'_carbohidratos','field_64592e5efc11b'),
(813,123,'grasas','28.4'),
(814,123,'_grasas','field_6458e8f42877a'),
(815,123,'azucares','17.2'),
(816,123,'_azucares','field_6458ed1a2877b'),
(817,123,'ingredientes','Coliflor (250g)\r\nTahini (1 y 1/2 cucharadas)\r\nJugo de medio limón\r\nDiente de ajo (1 unidad)\r\nPimentón ahumado (3/4 cucharadita)\r\nPimienta negra molida (1/4 cucharadita)\r\nAgua (10ml)\r\nCuscús (50g)\r\nManzana (1/4 unidad)\r\nPimiento rojo (1/4 unidad)\r\nTomate (1/2 unidad)\r\nNueces (10g)\r\nPerejil (10g)\r\nAceite de oliva (1 y 1/2 cucharadas)\r\nVinagre balsámico (3/4 cucharada)\r\nSirope de arce (3/4 cucharada)\r\nMostaza de Dijon (1/4 cucharada)'),
(818,123,'_ingredientes','field_6458ed452877c'),
(819,123,'instrucciones','Precalentar el horno a 200°C.\r\nCortar la coliflor en trozos de unos 2 cm de ancho.\r\nEn un bol, añadir el tahini, el zumo de limón, el ajo machacado, el pimentón ahumado, la sal, la pimienta y el agua; mezclar hasta obtener una mezcla homogénea.\r\nAñade los trozos de coliflor uno a uno al bol, asegurándote de que ambos lados quedan cubiertos por la salsa, y colócalos en una bandeja de horno.\r\nUna vez que todos los trozos de coliflor estén en la bandeja, métala en el horno y cocínelos durante 20-25 minutos, dándoles la vuelta a la mitad.\r\nMientras se cuece la coliflor, añada el cuscús y el agua caliente en un bol. Después de unos 2 minutos, esponje el cuscús con un tenedor.\r\nDejar enfriar el cuscús y añadir la manzana cortada en dados, el pimiento rojo cortada en dados, los tomates cortada en dados, las nueces y el perejil - mezclarlo todo con un tenedor.\r\nEn un bol pequeño, añada el aceite de oliva, el vinagre balsámico, el sirope de arce y la mostaza de dijon; mézclelo todo con una cuchara.\r\nAñada la vinagreta al cuscús y mézclelo todo bien hasta que quede uniforme.\r\nSirve la ensalada de cuscús con los filetes de coliflor por encima y perejil picado.'),
(820,123,'_instrucciones','field_6458edb32877d'),
(821,125,'_edit_lock','1685547078:3'),
(822,125,'_edit_last','3'),
(823,126,'_wp_attached_file','2023/05/02c33162-975d-4a6c-aafa-afac0bdae3d4_miso-soup.png'),
(824,126,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:768;s:6:\"height\";i:960;s:4:\"file\";s:58:\"2023/05/02c33162-975d-4a6c-aafa-afac0bdae3d4_miso-soup.png\";s:8:\"filesize\";i:1065709;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:58:\"02c33162-975d-4a6c-aafa-afac0bdae3d4_miso-soup-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:129015;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:58:\"02c33162-975d-4a6c-aafa-afac0bdae3d4_miso-soup-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:44148;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(825,125,'imagen_del_plato','126'),
(826,125,'_imagen_del_plato','field_6458ee062877e'),
(827,125,'tiempo_de_ejecucion','15'),
(828,125,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(829,125,'complejidad','Fácil'),
(830,125,'_complejidad','field_6458e7fe28775'),
(831,125,'tipo_de_comida','Almuerzo'),
(832,125,'_tipo_de_comida','field_6458e84f28776'),
(833,125,'calorias','365'),
(834,125,'_calorias','field_6458e8ac28777'),
(835,125,'fibra','11.9'),
(836,125,'_fibra','field_6458e8c028778'),
(837,125,'proteinas','16.1'),
(838,125,'_proteinas','field_6458e8d128779'),
(839,125,'carbohidratos','67.1'),
(840,125,'_carbohidratos','field_64592e5efc11b'),
(841,125,'grasas','5.1'),
(842,125,'_grasas','field_6458e8f42877a'),
(843,125,'azucares','13.3'),
(844,125,'_azucares','field_6458ed1a2877b'),
(845,125,'ingredientes','Champiñones (62.5g)\r\nZanahoria (1 unidad)\r\nBrócoli (1/4 unidad)\r\nCebolleta (2 unidades)\r\nCaldo de verduras (300ml)\r\nPasta blanca de miso (1 y 1/2 cucharadas)\r\nFideos de ramen (60g)\r\nPerejil (5g)'),
(846,125,'_ingredientes','field_6458ed452877c'),
(847,125,'instrucciones','Añadir el caldo de verduras y la pasta de miso a una olla y llevar a ebullición (unos 3 minutos).\r\nAñade a la olla los champiñones, ¾ de la cebolleta, la zanahoria y el brócoli y cuécelos durante 4 minutos hasta que estén tiernos.\r\nMientras esto se cuece, cuece los fideos siguiendo las instrucciones del paquete.\r\nUna vez listos, escurrir y añadir a la sopa.\r\nDisfrútalo con perejil picado y la cebolleta restante.'),
(848,125,'_instrucciones','field_6458edb32877d'),
(849,127,'_edit_lock','1685547854:3'),
(850,127,'_edit_last','3'),
(851,128,'_wp_attached_file','2023/05/28d728c2-e5e5-4577-a7f0-938abdff5681_pak-choi-broth.png'),
(852,128,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:768;s:6:\"height\";i:1024;s:4:\"file\";s:63:\"2023/05/28d728c2-e5e5-4577-a7f0-938abdff5681_pak-choi-broth.png\";s:8:\"filesize\";i:843343;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:63:\"28d728c2-e5e5-4577-a7f0-938abdff5681_pak-choi-broth-225x300.png\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:98215;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:63:\"28d728c2-e5e5-4577-a7f0-938abdff5681_pak-choi-broth-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:39441;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(853,127,'imagen_del_plato','128'),
(854,127,'_imagen_del_plato','field_6458ee062877e'),
(855,127,'tiempo_de_ejecucion','20'),
(856,127,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(857,127,'complejidad','Fácil'),
(858,127,'_complejidad','field_6458e7fe28775'),
(859,127,'tipo_de_comida','Almuerzo'),
(860,127,'_tipo_de_comida','field_6458e84f28776'),
(861,127,'calorias','234'),
(862,127,'_calorias','field_6458e8ac28777'),
(863,127,'fibra','6.3'),
(864,127,'_fibra','field_6458e8c028778'),
(865,127,'proteinas','10.2'),
(866,127,'_proteinas','field_6458e8d128779'),
(867,127,'carbohidratos','20.7'),
(868,127,'_carbohidratos','field_64592e5efc11b'),
(869,127,'grasas','12'),
(870,127,'_grasas','field_6458e8f42877a'),
(871,127,'azucares','11'),
(872,127,'_azucares','field_6458ed1a2877b'),
(873,127,'ingredientes','Pak choi (1 unidad)\r\nGuindilla roja (1/2 unidad)\r\nJengibre (5g)\r\nZanahoria (1/2 unidad)\r\nChampiñones (80g)\r\nCaldo de verduras (500ml)\r\nSalsa de soja (1 y 1/2 cucharadas)\r\nPasta blanca de miso (1 y 1/2 cucharadas)\r\nVinagre de arroz (1 y 1/2 cucharadas)\r\nAceite de oliva (1 y 1/2 cucharadas)\r\nSemillas de sésamo (1 cucharadita)'),
(874,127,'_ingredientes','field_6458ed452877c'),
(875,127,'instrucciones','Calentar una olla a fuego fuerte, una vez caliente añadir el aceite de oliva, la guindilla y el jengibre - saltear durante 1 minuto.\r\nAñadir la zanahoria y los champiñones cortados previamente en tiras - rehogar 4 min.\r\nReduzca el fuego a medio-bajo y añada el caldo de verduras, la salsa de soja, la pasta de miso y el vinagre de arroz - cocine durante 5 min.\r\nAñade el pak choi, deja que se marchite antes de apagar el fuego.\r\nServir el caldo con una pizca de semillas de sésamo.'),
(876,127,'_instrucciones','field_6458edb32877d'),
(877,102,'_wp_trash_meta_status','publish'),
(878,102,'_wp_trash_meta_time','1685548024'),
(879,102,'_wp_desired_post_slug','receta-cena'),
(880,101,'_wp_trash_meta_status','publish'),
(881,101,'_wp_trash_meta_time','1685548027'),
(882,101,'_wp_desired_post_slug','receta-merienda'),
(883,96,'_wp_trash_meta_status','publish'),
(884,96,'_wp_trash_meta_time','1685548031'),
(885,96,'_wp_desired_post_slug','receta-7'),
(886,67,'_wp_trash_meta_status','publish'),
(887,67,'_wp_trash_meta_time','1685548170'),
(888,67,'_wp_desired_post_slug','receta-6-wiii'),
(889,66,'_wp_trash_meta_status','publish'),
(890,66,'_wp_trash_meta_time','1685548172'),
(891,66,'_wp_desired_post_slug','receta-5'),
(892,65,'_wp_trash_meta_status','publish'),
(893,65,'_wp_trash_meta_time','1685548175'),
(894,65,'_wp_desired_post_slug','receta-3-2'),
(895,64,'_wp_trash_meta_status','publish'),
(896,64,'_wp_trash_meta_time','1685548177'),
(897,64,'_wp_desired_post_slug','receta-3'),
(898,129,'_edit_lock','1685565193:3'),
(899,129,'_edit_last','3'),
(900,130,'_wp_attached_file','2023/05/aa141b1b-b51e-4314-b5d5-e18cb7d6f43a_berry-overnight-oats.png'),
(901,130,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:768;s:6:\"height\";i:1024;s:4:\"file\";s:69:\"2023/05/aa141b1b-b51e-4314-b5d5-e18cb7d6f43a_berry-overnight-oats.png\";s:8:\"filesize\";i:663277;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:69:\"aa141b1b-b51e-4314-b5d5-e18cb7d6f43a_berry-overnight-oats-225x300.png\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:81749;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:69:\"aa141b1b-b51e-4314-b5d5-e18cb7d6f43a_berry-overnight-oats-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:36557;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(902,129,'imagen_del_plato','130'),
(903,129,'_imagen_del_plato','field_6458ee062877e'),
(904,129,'tiempo_de_ejecucion','370'),
(905,129,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(906,129,'complejidad','Difícil'),
(907,129,'_complejidad','field_6458e7fe28775'),
(908,129,'tipo_de_comida','Desayuno'),
(909,129,'_tipo_de_comida','field_6458e84f28776'),
(910,129,'calorias','530'),
(911,129,'_calorias','field_6458e8ac28777'),
(912,129,'fibra','18.9'),
(913,129,'_fibra','field_6458e8c028778'),
(914,129,'proteinas','15.6'),
(915,129,'_proteinas','field_6458e8d128779'),
(916,129,'carbohidratos','60.6'),
(917,129,'_carbohidratos','field_64592e5efc11b'),
(918,129,'grasas','24.7'),
(919,129,'_grasas','field_6458e8f42877a'),
(920,129,'azucares','20.1'),
(921,129,'_azucares','field_6458ed1a2877b'),
(922,129,'ingredientes','Copos de avena (40g)\r\nSemilla de lino (1 cucharada)\r\nSemillas de chía (1 cucharada)\r\nLeche de almendras (200ml)\r\nPlátano cortadas (1/2 unidad)\r\nFresas cortadas (40g)\r\nFrambuesas (40g)\r\nArándanos (40g)\r\nAlmendras fileteadas (10g)\r\nSemillas de girasol (10g)\r\nSirope de arce (1 cucharadita)'),
(923,129,'_ingredientes','field_6458ed452877c'),
(924,129,'instrucciones','En un recipiente pequeño , agregue avena, semillas de lino, semillas de chía y leche de almendras; mezcle y coloque en el refrigerador durante la noche o durante al menos 6 horas.\r\nUna vez listo para comer, sácalo del refrigerador y agrega plátano, fresas, frambuesas y arándanos.\r\nEspolvorear por encima almendras laminadas y semillas de girasol.\r\nTermine con una llovizna de jarabe de arce.'),
(925,129,'_instrucciones','field_6458edb32877d'),
(926,131,'_edit_lock','1685566090:3'),
(927,131,'_edit_last','3'),
(928,132,'_wp_attached_file','2023/05/596b2cf4-2aae-469e-b87f-91be000d66a6_guacamole.png'),
(929,132,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:768;s:6:\"height\";i:960;s:4:\"file\";s:58:\"2023/05/596b2cf4-2aae-469e-b87f-91be000d66a6_guacamole.png\";s:8:\"filesize\";i:1074058;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:58:\"596b2cf4-2aae-469e-b87f-91be000d66a6_guacamole-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:127349;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:58:\"596b2cf4-2aae-469e-b87f-91be000d66a6_guacamole-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:46276;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(930,131,'imagen_del_plato','132'),
(931,131,'_imagen_del_plato','field_6458ee062877e'),
(932,131,'tiempo_de_ejecucion','15'),
(933,131,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(934,131,'complejidad','Fácil'),
(935,131,'_complejidad','field_6458e7fe28775'),
(936,131,'tipo_de_comida','Cena'),
(937,131,'_tipo_de_comida','field_6458e84f28776'),
(938,131,'calorias','248'),
(939,131,'_calorias','field_6458e8ac28777'),
(940,131,'fibra','10.8'),
(941,131,'_fibra','field_6458e8c028778'),
(942,131,'proteinas','3.9'),
(943,131,'_proteinas','field_6458e8d128779'),
(944,131,'carbohidratos','21.9'),
(945,131,'_carbohidratos','field_64592e5efc11b'),
(946,131,'grasas','18.3'),
(947,131,'_grasas','field_6458e8f42877a'),
(948,131,'azucares','5.9'),
(949,131,'_azucares','field_6458ed1a2877b'),
(950,131,'ingredientes','Aguacate (1 unidad)\r\nTomate picado (1/2 unidad)\r\nCebolla (1/2 unidad)\r\nGuindilla roja (1/2 unidad)\r\nJugo de limón (1/2 unidad)\r\nCilantro (10g)\r\nSal (1/2 cucharadita)\r\nPimienta negra molida (1/2 cucharadita)'),
(951,131,'_ingredientes','field_6458ed452877c'),
(952,131,'instrucciones','Picar la cebolla en trozos pequeños y añadir la mitad al mortero.\r\nQuitar las pepitas a la guindilla, picarla finamente y añadirla al mortero.\r\nPica el cilantro y añade la mitad al mortero.\r\nHacer rodar el limón sobre una tabla de cortar, cortarlo por la mitad y exprimir el zumo en el mortero.\r\nUtilizar el mortero para triturar los ingredientes durante ~1 minuto.\r\nCortar el aguacate por la mitad y en dados.\r\nEchar el aguacate en el mortero y machacarlo con el mortero.\r\nPasar el contenido del mortero a una fuente de servir, añadir la otra mitad de la cebolla y el cilantro.\r\nPica el tomate en trozos pequeños y añádelo al bol de servir.\r\nSazonar con sal y pimienta y mezclar todo.\r\nPruébelo y añada más lima si es necesario.'),
(953,131,'_instrucciones','field_6458edb32877d'),
(954,133,'_edit_lock','1685566594:3'),
(955,133,'_edit_last','3'),
(956,134,'_wp_attached_file','2023/05/ce4b894f-da2c-47a2-a1c4-bca15fc03833_asian-style-spiced-veggie-noodles.png'),
(957,134,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:768;s:6:\"height\";i:960;s:4:\"file\";s:82:\"2023/05/ce4b894f-da2c-47a2-a1c4-bca15fc03833_asian-style-spiced-veggie-noodles.png\";s:8:\"filesize\";i:861547;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:82:\"ce4b894f-da2c-47a2-a1c4-bca15fc03833_asian-style-spiced-veggie-noodles-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:113219;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:82:\"ce4b894f-da2c-47a2-a1c4-bca15fc03833_asian-style-spiced-veggie-noodles-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:44236;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(958,133,'imagen_del_plato','134'),
(959,133,'_imagen_del_plato','field_6458ee062877e'),
(960,133,'tiempo_de_ejecucion','20'),
(961,133,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(962,133,'complejidad','Fácil'),
(963,133,'_complejidad','field_6458e7fe28775'),
(964,133,'tipo_de_comida','Cena'),
(965,133,'_tipo_de_comida','field_6458e84f28776'),
(966,133,'calorias','672'),
(967,133,'_calorias','field_6458e8ac28777'),
(968,133,'fibra','13'),
(969,133,'_fibra','field_6458e8c028778'),
(970,133,'proteinas','20.7'),
(971,133,'_proteinas','field_6458e8d128779'),
(972,133,'carbohidratos','127.5'),
(973,133,'_carbohidratos','field_64592e5efc11b'),
(974,133,'grasas','12.1'),
(975,133,'_grasas','field_6458e8f42877a'),
(976,133,'azucares','28.4'),
(977,133,'_azucares','field_6458ed1a2877b'),
(978,133,'ingredientes','Champiñones (200g)\r\nFideos de huevo (200g)\r\nPimiento rojo (2 unidades)\r\nCebolleta (4 unidades)\r\nJugo de lima (1 unidad)\r\nCilantro (20g)\r\nSalsa de soja (4 cucharadas)\r\nAzúcar moreno (2 cucharadas)\r\nVinagre de arroz (2 cucharadas)\r\nSirope de arce (1 cucharada)\r\nPimentón ahumado (2 cucharaditas)\r\nPimienta negra molida (1 cucharadita)\r\nCilantro molido (1 cucharadita)\r\nSemillas de mostaza amarilla (1/2 cucharadita)\r\nComino molido (1/2 cucharadita)\r\nAceite de oliva (1 cucharada)'),
(979,133,'_ingredientes','field_6458ed452877c'),
(980,133,'instrucciones','Cocine los fideos según las instrucciones y escúrralos una vez cocidos.\r\nCalentar un wok a fuego medio. Una vez caliente, agregue aceite y champiñones, cocine por 3 minutos.\r\nMientras se cocinan los champiñones, en una cacerola pequeña, agregue el azúcar y la salsa de soja, cocine por 2 minutos o hasta que espese (revolviendo con frecuencia); cuando esté listo, retírelo del fuego.\r\nA la cacerola agregue vinagre de arroz y sirope de arce, mezcle y deje para más tarde.\r\nAgregue al wok el pimiento rojo en rodajas, la cebolleta en rodajas y todas las especias; cocine por 2 minutos.\r\nAgregue los fideos al wok y vierta la salsa por encima, mezcle todo y retire del fuego.\r\nServir con cilantro picado y un chorrito de jugo de lima.'),
(981,133,'_instrucciones','field_6458edb32877d'),
(982,135,'_edit_lock','1685567063:3'),
(983,135,'_edit_last','3'),
(984,136,'_wp_attached_file','2023/05/0e0e10a9-f7e6-4725-85ed-c0288f65ccac_banana-berry-porridge.png'),
(985,136,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:768;s:6:\"height\";i:960;s:4:\"file\";s:70:\"2023/05/0e0e10a9-f7e6-4725-85ed-c0288f65ccac_banana-berry-porridge.png\";s:8:\"filesize\";i:747679;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:70:\"0e0e10a9-f7e6-4725-85ed-c0288f65ccac_banana-berry-porridge-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:98443;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:70:\"0e0e10a9-f7e6-4725-85ed-c0288f65ccac_banana-berry-porridge-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:40824;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(986,135,'imagen_del_plato','136'),
(987,135,'_imagen_del_plato','field_6458ee062877e'),
(988,135,'tiempo_de_ejecucion','10'),
(989,135,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(990,135,'complejidad','Fácil'),
(991,135,'_complejidad','field_6458e7fe28775'),
(992,135,'tipo_de_comida','Merienda'),
(993,135,'_tipo_de_comida','field_6458e84f28776'),
(994,135,'calorias','544'),
(995,135,'_calorias','field_6458e8ac28777'),
(996,135,'fibra','18.1'),
(997,135,'_fibra','field_6458e8c028778'),
(998,135,'proteinas','16.5'),
(999,135,'_proteinas','field_6458e8d128779'),
(1000,135,'carbohidratos','76.5'),
(1001,135,'_carbohidratos','field_64592e5efc11b'),
(1002,135,'grasas','20.7'),
(1003,135,'_grasas','field_6458e8f42877a'),
(1004,135,'azucares','21.4'),
(1005,135,'_azucares','field_6458ed1a2877b'),
(1006,135,'ingredientes','Copos de avena (50g)\r\nSemillas de lino (1 cucharada)\r\nCanela molida (1/2 cucharadita)\r\nLeche de almendras (250ml)\r\nPlátano (1 unidad)\r\nFresas (50g)\r\nFrambuesas (30g)\r\nArándanos (20g)\r\nMantequilla de maní (15g)\r\nSemillas de calabaza (10g)'),
(1007,135,'_ingredientes','field_6458ed452877c'),
(1008,135,'instrucciones','En una cacerola pequeña , agregue avena, semillas de lino, canela, la mitad del plátano troceado y la leche de almendras; cocine por 5 minutos.\r\nMover a un tazón y mezclar con la mantequilla de maní.\r\nAgregue los ingredientes: plátano, fresas, frambuesas, arándanos y semillas de calabaza.'),
(1009,135,'_instrucciones','field_6458edb32877d'),
(1010,137,'_edit_lock','1685567582:3'),
(1011,137,'_edit_last','3'),
(1012,138,'_wp_attached_file','2023/05/338b523d-73cc-439a-acd0-d02eaff6ba7e_nutty-apple-date-porridge.png'),
(1013,138,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:768;s:6:\"height\";i:960;s:4:\"file\";s:74:\"2023/05/338b523d-73cc-439a-acd0-d02eaff6ba7e_nutty-apple-date-porridge.png\";s:8:\"filesize\";i:705421;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:74:\"338b523d-73cc-439a-acd0-d02eaff6ba7e_nutty-apple-date-porridge-240x300.png\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:101029;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:74:\"338b523d-73cc-439a-acd0-d02eaff6ba7e_nutty-apple-date-porridge-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:41458;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1014,137,'imagen_del_plato','138'),
(1015,137,'_imagen_del_plato','field_6458ee062877e'),
(1016,137,'tiempo_de_ejecucion','10'),
(1017,137,'_tiempo_de_ejecucion','field_6458e7a6969b0'),
(1018,137,'complejidad','Fácil'),
(1019,137,'_complejidad','field_6458e7fe28775'),
(1020,137,'tipo_de_comida','Merienda'),
(1021,137,'_tipo_de_comida','field_6458e84f28776'),
(1022,137,'calorias','596'),
(1023,137,'_calorias','field_6458e8ac28777'),
(1024,137,'fibra','16.3'),
(1025,137,'_fibra','field_6458e8c028778'),
(1026,137,'proteinas','13.8'),
(1027,137,'_proteinas','field_6458e8d128779'),
(1028,137,'carbohidratos','87'),
(1029,137,'_carbohidratos','field_64592e5efc11b'),
(1030,137,'grasas','24.7'),
(1031,137,'_grasas','field_6458e8f42877a'),
(1032,137,'azucares','41.8'),
(1033,137,'_azucares','field_6458ed1a2877b'),
(1034,137,'ingredientes','Copos de avena (50g)\r\nSemilla de lino (1 cucharada)\r\nCanela molida (1 cucharadita)\r\nManzana (1 unidad)\r\nDátiles (2 unidades)\r\nLeche de almendras (250ml)\r\nAnacardos (15g)\r\nAlmendras (10g)\r\nSirope de agave (1 cucharada)'),
(1035,137,'_ingredientes','field_6458ed452877c'),
(1036,137,'instrucciones','En una cacerola pequeña, agregue avena, semillas de lino, canela, manzana troceada, dátiles cortado y leche de almendras; cocine por 5 minutos.\r\nPasar a un bol y espolvorear nueces y sirope de agave por encima.'),
(1037,137,'_instrucciones','field_6458edb32877d'),
(1038,139,'_edit_lock','1685572332:3'),
(1039,145,'_edit_lock','1685837943:1');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES
(1,1,'2023-04-13 11:25:32','2023-04-13 11:25:32','<!-- wp:paragraph -->\n<p>Te damos la bienvenida a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡luego empieza a escribir!</p>\n<!-- /wp:paragraph -->','¡Hola, mundo!','','publish','open','open','','hola-mundo','','','2023-04-13 11:25:32','2023-04-13 11:25:32','',0,'http://127.0.0.1/nutrifit+/?p=1',0,'post','',1),
(2,1,'2023-04-13 11:25:32','2023-04-13 11:25:32','<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Hola! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://127.0.0.1/nutrifit+/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->','Página de ejemplo','','publish','closed','open','','pagina-ejemplo','','','2023-04-13 11:25:32','2023-04-13 11:25:32','',0,'http://127.0.0.1/nutrifit+/?page_id=2',0,'page','',0),
(3,1,'2023-04-13 11:25:32','2023-04-13 11:25:32','<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>La dirección de nuestra web es: http://127.0.0.1/nutrifit+.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentarios</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de tu comentario.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Medios</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si subes imágenes a la web, deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de ubicación de las imágenes de la web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando accedas, también instalaremos varias cookies para guardar tu información de acceso y tus opciones de visualización de pantalla. Las cookies de acceso duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas «Recuérdarme», tu acceso perdurará durante dos semanas. Si sales de tu cuenta, las cookies de acceso se eliminarán.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contenido incrustado de otros sitios web</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras webs se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Con quién compartimos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si solicitas un restablecimiento de contraseña, tu dirección IP será incluida en el correo electrónico de restablecimiento.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cuánto tiempo conservamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente, en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tienes sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dónde se envían tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p><!-- /wp:paragraph -->','Política de privacidad','','draft','closed','open','','politica-privacidad','','','2023-04-13 11:25:32','2023-04-13 11:25:32','',0,'http://127.0.0.1/nutrifit+/?page_id=3',0,'page','',0),
(7,1,'2023-05-03 08:20:17','2023-05-03 08:20:17','{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-twentytwentythree','','','2023-05-03 08:20:17','2023-05-03 08:20:17','',0,'http://127.0.0.1/nutrifit+/2023/05/03/wp-global-styles-twentytwentythree/',0,'wp_global_styles','',0),
(10,1,'2023-05-05 16:24:20','2023-05-05 16:24:20','<!-- wp:paragraph -->\n<p>dasdsadasdsa</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>dasdsadas</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>dasdasdas</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Receta 1','','draft','closed','closed','','receta-1','','','2023-05-08 12:44:03','2023-05-08 12:44:03','',0,'http://127.0.0.1/nutrifit+/?post_type=receta&#038;p=10',0,'receta','',0),
(11,1,'2023-05-05 16:24:43','2023-05-05 16:24:43','<!-- wp:paragraph -->\n<p>dasdasadsda</p>\n<!-- /wp:paragraph -->','Receta 4','','publish','closed','closed','','receta-2','','','2023-05-08 15:41:00','2023-05-08 15:41:00','',0,'http://127.0.0.1/nutrifit+/?post_type=receta&#038;p=11',0,'receta','',0),
(13,1,'2023-05-05 16:30:19','2023-05-05 16:30:19','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"recetas_post_type\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Recetas','recetas','publish','closed','closed','','group_64552eda7274f','','','2023-05-10 16:01:22','2023-05-10 16:01:22','',0,'http://127.0.0.1/nutrifit+/?post_type=acf-field-group&#038;p=13',0,'acf-field-group','',0),
(17,1,'2023-05-08 12:15:55','2023-05-08 12:15:55','a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:30;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Tiempo de ejecución (MInutos)','tiempo_de_ejecucion','publish','closed','closed','','field_6458e7a6969b0','','','2023-05-08 17:18:13','2023-05-08 17:18:13','',13,'http://127.0.0.1/nutrifit+/?post_type=acf-field&#038;p=17',1,'acf-field','',0),
(18,1,'2023-05-08 12:42:20','2023-05-08 12:42:20','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:10:\"uploadedTo\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}','Imagen del plato','imagen_del_plato','publish','closed','closed','','field_6458ee062877e','','','2023-05-08 12:42:20','2023-05-08 12:42:20','',13,'http://127.0.0.1/nutrifit+/?post_type=acf-field&p=18',0,'acf-field','',0),
(19,1,'2023-05-08 12:42:20','2023-05-08 12:42:20','a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:6:\"Fácil\";s:6:\"Fácil\";s:8:\"Moderada\";s:8:\"Moderada\";s:8:\"Difícil\";s:8:\"Difícil\";}s:13:\"default_value\";s:6:\"Fácil\";s:13:\"return_format\";s:5:\"value\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}','Complejidad','complejidad','publish','closed','closed','','field_6458e7fe28775','','','2023-05-08 16:07:35','2023-05-08 16:07:35','',13,'http://127.0.0.1/nutrifit+/?post_type=acf-field&#038;p=19',2,'acf-field','',0),
(20,1,'2023-05-08 12:42:20','2023-05-08 12:42:20','a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:4:{s:8:\"Desayuno\";s:8:\"Desayuno\";s:8:\"Almuerzo\";s:8:\"Almuerzo\";s:8:\"Merienda\";s:8:\"Merienda\";s:4:\"Cena\";s:4:\"Cena\";}s:13:\"default_value\";s:8:\"Almuerzo\";s:13:\"return_format\";s:5:\"value\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}','Tipo de comida','tipo_de_comida','publish','closed','closed','','field_6458e84f28776','','','2023-05-08 12:42:20','2023-05-08 12:42:20','',13,'http://127.0.0.1/nutrifit+/?post_type=acf-field&p=20',3,'acf-field','',0),
(21,1,'2023-05-08 12:42:20','2023-05-08 12:42:20','a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:50;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Calorias','calorias','publish','closed','closed','','field_6458e8ac28777','','','2023-05-08 12:42:20','2023-05-08 12:42:20','',13,'http://127.0.0.1/nutrifit+/?post_type=acf-field&p=21',4,'acf-field','',0),
(22,1,'2023-05-08 12:42:20','2023-05-08 12:42:20','a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:50;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Fibra','fibra','publish','closed','closed','','field_6458e8c028778','','','2023-05-08 12:42:20','2023-05-08 12:42:20','',13,'http://127.0.0.1/nutrifit+/?post_type=acf-field&p=22',5,'acf-field','',0),
(23,1,'2023-05-08 12:42:20','2023-05-08 12:42:20','a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:50;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Proteinas','proteinas','publish','closed','closed','','field_6458e8d128779','','','2023-05-08 12:42:20','2023-05-08 12:42:20','',13,'http://127.0.0.1/nutrifit+/?post_type=acf-field&p=23',6,'acf-field','',0),
(24,1,'2023-05-08 12:42:20','2023-05-08 12:42:20','a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:50;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Grasas','grasas','publish','closed','closed','','field_6458e8f42877a','','','2023-05-08 17:17:08','2023-05-08 17:17:08','',13,'http://127.0.0.1/nutrifit+/?post_type=acf-field&#038;p=24',8,'acf-field','',0),
(25,1,'2023-05-08 12:42:20','2023-05-08 12:42:20','a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:50;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Azúcares','azucares','publish','closed','closed','','field_6458ed1a2877b','','','2023-05-08 17:17:08','2023-05-08 17:17:08','',13,'http://127.0.0.1/nutrifit+/?post_type=acf-field&#038;p=25',9,'acf-field','',0),
(26,1,'2023-05-08 12:42:20','2023-05-08 12:42:20','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Ingredientes','ingredientes','publish','closed','closed','','field_6458ed452877c','','','2023-05-08 17:17:08','2023-05-08 17:17:08','',13,'http://127.0.0.1/nutrifit+/?post_type=acf-field&#038;p=26',10,'acf-field','',0),
(27,1,'2023-05-08 12:42:20','2023-05-08 12:42:20','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Instrucciones de preparación','instrucciones','publish','closed','closed','','field_6458edb32877d','','','2023-05-08 17:17:08','2023-05-08 17:17:08','',13,'http://127.0.0.1/nutrifit+/?post_type=acf-field&#038;p=27',11,'acf-field','',0),
(31,1,'2023-05-08 16:22:35','2023-05-08 16:22:35','<!-- wp:paragraph -->\n<p>Nutty vegan macaroni &amp; cheese</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Nutty vegan macaroni &amp; cheese','','publish','closed','closed','','nutty-vegan-macaroni-cheese','','','2023-05-08 16:42:06','2023-05-08 16:42:06','',0,'http://127.0.0.1/nutrifit+/?post_type=receta&#038;p=31',0,'receta','',0),
(33,1,'2023-05-08 16:55:44','2023-05-08 16:55:44','','Macarrones con queso veganos y nueces','','publish','closed','closed','','nutty-vegan-macaroni-cheese','','','2023-05-09 11:15:59','2023-05-09 11:15:59','',0,'http://127.0.0.1/nutrifit+/?post_type=recetas&#038;p=33',0,'recetas','',0),
(36,1,'2023-05-08 17:17:08','2023-05-08 17:17:08','a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:50;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Carbohidratos','carbohidratos','publish','closed','closed','','field_64592e5efc11b','','','2023-05-08 17:17:08','2023-05-08 17:17:08','',13,'http://127.0.0.1/nutrifit+/?post_type=acf-field&p=36',7,'acf-field','',0),
(41,1,'2023-05-09 11:27:52','2023-05-09 11:27:52','','Pasta con cerezas y tomate seco','','publish','closed','closed','','pasta-con-cerezas-y-tomate-seco','','','2023-05-09 11:27:52','2023-05-09 11:27:52','',0,'http://127.0.0.1/nutrifit+/?post_type=recetas&#038;p=41',0,'recetas','',0),
(43,1,'2023-05-09 11:32:47','2023-05-09 11:32:47','','Avena con plátano y canela','','publish','closed','closed','','avena-con-platano-y-canela','','','2023-05-09 11:32:47','2023-05-09 11:32:47','',0,'http://127.0.0.1/nutrifit+/?post_type=recetas&#038;p=43',0,'recetas','',0),
(45,1,'2023-05-09 11:36:50','2023-05-09 11:36:50','','Gachas de calabaza','','publish','closed','closed','','gachas-de-calabaza','','','2023-05-09 11:36:50','2023-05-09 11:36:50','',0,'http://127.0.0.1/nutrifit+/?post_type=recetas&#038;p=45',0,'recetas','',0),
(47,1,'2023-05-09 11:39:33','2023-05-09 11:39:33','','Sándwich de garbanzos con mayonesa','','publish','closed','closed','','sandwich-de-garbanzos-con-mayonesa','','','2023-05-09 11:39:33','2023-05-09 11:39:33','',0,'http://127.0.0.1/nutrifit+/?post_type=recetas&#038;p=47',0,'recetas','',0),
(49,1,'2023-05-09 11:42:00','2023-05-09 11:42:00','','Barritas proteicas de chocolate y mantequilla de cacahuete','','publish','closed','closed','','barritas-proteicas-de-chocolate-y-mantequilla-de-cacahuete','','','2023-05-09 11:42:00','2023-05-09 11:42:00','',0,'http://127.0.0.1/nutrifit+/?post_type=recetas&#038;p=49',0,'recetas','',0),
(51,1,'2023-05-09 11:44:39','2023-05-09 11:44:39','','Wraps de setas fritas y judías','','publish','closed','closed','','wraps-de-setas-fritas-y-judias','','','2023-05-09 11:44:39','2023-05-09 11:44:39','',0,'http://127.0.0.1/nutrifit+/?post_type=recetas&#038;p=51',0,'recetas','',0),
(53,1,'2023-05-09 21:42:39','2023-05-09 21:42:39','','Index paciente','','publish','closed','closed','','paciente','','','2023-05-16 17:04:18','2023-05-16 17:04:18','',0,'http://127.0.0.1/nutrifit+/?page_id=53',0,'page','',0),
(54,1,'2023-05-09 21:42:39','2023-05-09 21:42:39','','indexpaciente','','inherit','closed','closed','','53-revision-v1','','','2023-05-09 21:42:39','2023-05-09 21:42:39','',53,'http://127.0.0.1/nutrifit+/?p=54',0,'revision','',0),
(56,1,'2023-05-10 12:20:53','2023-05-10 12:20:53','','paciente','','inherit','closed','closed','','53-revision-v1','','','2023-05-10 12:20:53','2023-05-10 12:20:53','',53,'http://127.0.0.1/nutrifit+/?p=56',0,'revision','',0),
(59,1,'2023-05-10 16:02:17','2023-05-10 16:02:17','','Receta 1','','trash','closed','closed','','prueba__trashed','','','2023-05-22 17:14:53','2023-05-22 17:14:53','',0,'http://127.0.0.1/nutrifit+/?post_type=recetas_post_type&#038;p=59',0,'recetas_post_type','',0),
(62,1,'2023-05-10 17:35:58','2023-05-10 17:35:58','','Receta 2','','trash','closed','closed','','receta-2__trashed','','','2023-05-10 18:23:02','2023-05-10 18:23:02','',0,'http://127.0.0.1/nutrifit+/?post_type=recetas_post_type&#038;p=62',0,'recetas_post_type','',0),
(64,1,'2023-05-10 17:36:07','2023-05-10 17:36:07','','Receta 4','','trash','closed','closed','','receta-3__trashed','','','2023-05-31 15:49:37','2023-05-31 15:49:37','',0,'http://127.0.0.1/nutrifit+/?post_type=recetas_post_type&#038;p=64',0,'recetas_post_type','',0),
(65,1,'2023-05-10 17:36:39','2023-05-10 17:36:39','','receta 3','','trash','closed','closed','','receta-3-2__trashed','','','2023-05-31 15:49:35','2023-05-31 15:49:35','',0,'http://127.0.0.1/nutrifit+/?post_type=recetas_post_type&#038;p=65',0,'recetas_post_type','',0),
(66,1,'2023-05-10 17:36:59','2023-05-10 17:36:59','','Receta 5','','trash','closed','closed','','receta-5__trashed','','','2023-05-31 15:49:32','2023-05-31 15:49:32','',0,'http://127.0.0.1/nutrifit+/?post_type=recetas_post_type&#038;p=66',0,'recetas_post_type','',0),
(67,1,'2023-05-10 18:17:46','2023-05-10 18:17:46','','Receta 6 wiii','','trash','closed','closed','','receta-6-wiii__trashed','','','2023-05-31 15:49:30','2023-05-31 15:49:30','',0,'http://127.0.0.1/nutrifit+/?post_type=recetas_post_type&#038;p=67',0,'recetas_post_type','',0),
(68,1,'2023-05-10 18:17:43','2023-05-10 18:17:43','','482c849c-010b-4e5c-b973-0f4e324c319c_fried-bean-mushroom-wraps','','inherit','open','closed','','482c849c-010b-4e5c-b973-0f4e324c319c_fried-bean-mushroom-wraps-2','','','2023-05-10 18:17:43','2023-05-10 18:17:43','',67,'http://127.0.0.1/nutrifit+/wp-content/uploads/2023/05/482c849c-010b-4e5c-b973-0f4e324c319c_fried-bean-mushroom-wraps-1.png',0,'attachment','image/png',0),
(75,1,'2023-05-16 17:05:07','2023-05-12 07:11:36','Contenido de recetas','Menús','','publish','closed','closed','','75','','','2023-05-16 17:05:07','2023-05-16 17:05:07','',0,'http://127.0.0.1/nutrifit+/?p=75',2,'nav_menu_item','',0),
(76,1,'2023-05-16 14:15:50','2023-05-16 14:01:39','Contenido de recetas','Menú','','publish','closed','closed','','76','','','2023-05-16 14:15:50','2023-05-16 14:15:50','',0,'http://127.0.0.1/nutrifit+/?p=76',2,'nav_menu_item','',0),
(77,1,'2023-05-16 14:15:50','2023-05-16 14:01:39','','Home','','publish','closed','closed','','77','','','2023-05-16 14:15:50','2023-05-16 14:15:50','',0,'http://127.0.0.1/nutrifit+/?p=77',1,'nav_menu_item','',0),
(79,1,'2023-05-16 16:55:18','2023-05-16 16:55:18','','Listado pacientes','','publish','closed','closed','','pacientes','','','2023-05-16 17:03:44','2023-05-16 17:03:44','',0,'http://127.0.0.1/nutrifit+/?page_id=79',0,'page','',0),
(80,1,'2023-05-16 16:55:18','2023-05-16 16:55:18','','Listado pacientes','','inherit','closed','closed','','79-revision-v1','','','2023-05-16 16:55:18','2023-05-16 16:55:18','',79,'http://127.0.0.1/nutrifit+/?p=80',0,'revision','',0),
(81,1,'2023-05-16 17:04:18','2023-05-16 17:04:18','','Index paciente','','inherit','closed','closed','','53-revision-v1','','','2023-05-16 17:04:18','2023-05-16 17:04:18','',53,'http://127.0.0.1/nutrifit+/?p=81',0,'revision','',0),
(82,1,'2023-05-16 17:05:07','2023-05-16 17:04:44','','Pacientes','','publish','closed','closed','','pacientes','','','2023-05-16 17:05:07','2023-05-16 17:05:07','',0,'http://127.0.0.1/nutrifit+/?p=82',1,'nav_menu_item','',0),
(84,1,'2023-05-18 20:58:53','2023-05-18 20:58:53','','Menus nutricionista','','publish','closed','closed','','menus','','','2023-05-18 20:58:53','2023-05-18 20:58:53','',0,'http://127.0.0.1/nutrifit+/?page_id=84',0,'page','',0),
(85,1,'2023-05-18 20:58:53','2023-05-18 20:58:53','','Menus nutricionista','','inherit','closed','closed','','84-revision-v1','','','2023-05-18 20:58:53','2023-05-18 20:58:53','',84,'http://127.0.0.1/nutrifit+/?p=85',0,'revision','',0),
(86,1,'2023-05-18 21:25:25','2023-05-18 21:25:25','','Menu semanal nutricionista','','publish','closed','closed','','menusemanal','','','2023-05-18 21:25:25','2023-05-18 21:25:25','',0,'http://127.0.0.1/nutrifit+/?page_id=86',0,'page','',0),
(87,1,'2023-05-18 21:25:13','2023-05-18 21:25:13','','Menu semanal nutricionista','','inherit','closed','closed','','86-revision-v1','','','2023-05-18 21:25:13','2023-05-18 21:25:13','',86,'http://127.0.0.1/nutrifit+/?p=87',0,'revision','',0),
(88,1,'2023-05-21 14:45:34','2023-05-21 14:45:34','','Menu categoria nutricionista','','publish','closed','closed','','menucategoria','','','2023-05-21 14:45:34','2023-05-21 14:45:34','',0,'http://127.0.0.1/nutrifit+/?page_id=88',0,'page','',0),
(89,1,'2023-05-21 14:45:34','2023-05-21 14:45:34','','Menu categoria nutricionista','','inherit','closed','closed','','88-revision-v1','','','2023-05-21 14:45:34','2023-05-21 14:45:34','',88,'http://127.0.0.1/nutrifit+/?p=89',0,'revision','',0),
(96,3,'2023-05-22 17:15:14','2023-05-22 17:15:14','','Receta 7','','trash','closed','closed','','receta-7__trashed','','','2023-05-31 15:47:11','2023-05-31 15:47:11','',0,'http://127.0.0.1/nutrifit+/?post_type=recetas_post_type&#038;p=96',0,'recetas_post_type','',0),
(99,3,'2023-05-26 11:34:12','2023-05-26 11:34:12','','482c849c-010b-4e5c-b973-0f4e324c319c_fried-bean-mushroom-wraps-2.png','','inherit','open','closed','','482c849c-010b-4e5c-b973-0f4e324c319c_fried-bean-mushroom-wraps-2-png','','','2023-05-26 11:34:13','2023-05-26 11:34:13','',96,'https://stoic-khorana.5-135-116-99.plesk.page/wp-content/uploads/2023/05/482c849c-010b-4e5c-b973-0f4e324c319c_fried-bean-mushroom-wraps-2.png',0,'attachment','image/png',0),
(101,1,'2023-05-30 18:53:26','2023-05-30 18:53:26','','Receta merienda','','trash','closed','closed','','receta-merienda__trashed','','','2023-05-31 15:47:07','2023-05-31 15:47:07','',0,'https://stoic-khorana.5-135-116-99.plesk.page/?post_type=recetas_post_type&#038;p=101',0,'recetas_post_type','',0),
(102,1,'2023-05-30 18:53:42','2023-05-30 18:53:42','','Receta cena','','trash','closed','closed','','receta-cena__trashed','','','2023-05-31 15:47:04','2023-05-31 15:47:04','',0,'https://stoic-khorana.5-135-116-99.plesk.page/?post_type=recetas_post_type&#038;p=102',0,'recetas_post_type','',0),
(103,1,'2023-05-30 19:10:51','2023-05-30 19:10:51','<!-- wp:shortcode -->\n[better_messages]\n<!-- /wp:shortcode -->','Chat','','publish','closed','closed','','chat','','','2023-05-30 19:18:59','2023-05-30 19:18:59','',0,'https://stoic-khorana.5-135-116-99.plesk.page/?page_id=103',0,'page','',0),
(104,1,'2023-05-30 19:10:51','2023-05-30 19:10:51','','Chat','','inherit','closed','closed','','103-revision-v1','','','2023-05-30 19:10:51','2023-05-30 19:10:51','',103,'https://stoic-khorana.5-135-116-99.plesk.page/?p=104',0,'revision','',0),
(105,1,'2023-05-30 19:17:53','2023-05-30 19:17:53','<!-- wp:shortcode -->\n[bp-better-messages]\n<!-- /wp:shortcode -->','Chat','','inherit','closed','closed','','103-revision-v1','','','2023-05-30 19:17:53','2023-05-30 19:17:53','',103,'https://stoic-khorana.5-135-116-99.plesk.page/?p=105',0,'revision','',0),
(106,1,'2023-05-30 19:18:59','2023-05-30 19:18:59','<!-- wp:shortcode -->\n[better_messages]\n<!-- /wp:shortcode -->','Chat','','inherit','closed','closed','','103-revision-v1','','','2023-05-30 19:18:59','2023-05-30 19:18:59','',103,'https://stoic-khorana.5-135-116-99.plesk.page/?p=106',0,'revision','',0),
(107,1,'2023-05-30 19:52:07','2023-05-30 19:52:07','{\n    \"nutrifit-plus::bm-border-radius\": {\n        \"value\": \"1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-05-30 19:50:34\"\n    },\n    \"nutrifit-plus::bm-date-enabled\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-05-30 19:50:34\"\n    },\n    \"nutrifit-plus::bm-private-sub-name\": {\n        \"value\": \"online\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-05-30 19:50:34\"\n    },\n    \"nutrifit-plus::main-bm-color\": {\n        \"value\": \"#68ba35\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-05-30 19:51:34\"\n    },\n    \"nutrifit-plus::bm-modern-right-side-nickname\": {\n        \"value\": \"#68ba35\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-05-30 19:52:07\"\n    },\n    \"nutrifit-plus::bm-theme\": {\n        \"value\": \"light\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-05-30 19:51:34\"\n    },\n    \"nutrifit-plus::bm-modern-right-side-bg\": {\n        \"value\": \"#68ba35\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-05-30 19:52:07\"\n    }\n}','','','trash','closed','closed','','6264b1ad-6af0-4aa8-8ae8-049b4bce53c0','','','2023-05-30 19:52:07','2023-05-30 19:52:07','',0,'https://stoic-khorana.5-135-116-99.plesk.page/?p=107',0,'customize_changeset','',0),
(108,1,'2023-05-30 21:40:35','2023-05-30 21:40:35','{\n    \"nutrifit-plus::bm-border-radius\": {\n        \"value\": \"5\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-05-30 21:40:35\"\n    },\n    \"nutrifit-plus::bm-modern-radius\": {\n        \"value\": \"8\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-05-30 21:40:35\"\n    },\n    \"nutrifit-plus::bm-date-radius\": {\n        \"value\": \"3\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-05-30 21:40:35\"\n    }\n}','','','trash','closed','closed','','9fb36a05-48c3-42bc-88f6-51e1eaa5705f','','','2023-05-30 21:40:35','2023-05-30 21:40:35','',0,'https://stoic-khorana.5-135-116-99.plesk.page/2023/05/30/9fb36a05-48c3-42bc-88f6-51e1eaa5705f/',0,'customize_changeset','',0),
(109,3,'2023-05-31 11:04:13','2023-05-31 11:04:13','','Pasta con cherrys y tomate seco','','publish','closed','closed','','pasta-con-cherrys-y-tomate-seco','','','2023-05-31 11:25:12','2023-05-31 11:25:12','',0,'https://stoic-khorana.5-135-116-99.plesk.page/?post_type=recetas_post_type&#038;p=109',0,'recetas_post_type','',0),
(110,3,'2023-05-31 11:04:13','2023-05-31 11:04:13','','9065b0db-a356-443c-810d-41ca02915c84_cherry-sundried-tomato-pasta.png','','inherit','open','closed','','9065b0db-a356-443c-810d-41ca02915c84_cherry-sundried-tomato-pasta-png','','','2023-05-31 11:04:13','2023-05-31 11:04:13','',109,'https://stoic-khorana.5-135-116-99.plesk.page/wp-content/uploads/2023/05/9065b0db-a356-443c-810d-41ca02915c84_cherry-sundried-tomato-pasta.png',0,'attachment','image/png',0),
(111,3,'2023-05-31 11:24:18','2023-05-31 11:24:18','','Wraps de frijoles fritos y champiñones','','publish','closed','closed','','wraps-de-frijoles-fritos-y-champinones','','','2023-05-31 11:24:48','2023-05-31 11:24:48','',0,'https://stoic-khorana.5-135-116-99.plesk.page/?post_type=recetas_post_type&#038;p=111',0,'recetas_post_type','',0),
(112,3,'2023-05-31 11:24:18','2023-05-31 11:24:18','','482c849c-010b-4e5c-b973-0f4e324c319c_fried-bean-mushroom-wraps.png','','inherit','open','closed','','482c849c-010b-4e5c-b973-0f4e324c319c_fried-bean-mushroom-wraps-png','','','2023-05-31 11:24:18','2023-05-31 11:24:18','',111,'https://stoic-khorana.5-135-116-99.plesk.page/wp-content/uploads/2023/05/482c849c-010b-4e5c-b973-0f4e324c319c_fried-bean-mushroom-wraps.png',0,'attachment','image/png',0),
(113,3,'2023-05-31 11:38:48','2023-05-31 11:38:48','','Copos de avena con plátano y canela','','publish','closed','closed','','copos-de-avena-con-platano-y-canela','','','2023-05-31 11:38:57','2023-05-31 11:38:57','',0,'https://stoic-khorana.5-135-116-99.plesk.page/?post_type=recetas_post_type&#038;p=113',0,'recetas_post_type','',0),
(114,3,'2023-05-31 11:38:48','2023-05-31 11:38:48','','350441c2-5110-403f-bd30-97d8f2c547ea_banana-cinnamon-surreal-overnight-oats.png','','inherit','open','closed','','350441c2-5110-403f-bd30-97d8f2c547ea_banana-cinnamon-surreal-overnight-oats-png','','','2023-05-31 11:38:48','2023-05-31 11:38:48','',113,'https://stoic-khorana.5-135-116-99.plesk.page/wp-content/uploads/2023/05/350441c2-5110-403f-bd30-97d8f2c547ea_banana-cinnamon-surreal-overnight-oats.png',0,'attachment','image/png',0),
(115,3,'2023-05-31 11:49:52','2023-05-31 11:49:52','','Sándwich de garbanzos con mayonesa','','publish','closed','closed','','sandwich-de-garbanzos-con-mayonesa','','','2023-05-31 11:49:52','2023-05-31 11:49:52','',0,'https://stoic-khorana.5-135-116-99.plesk.page/?post_type=recetas_post_type&#038;p=115',0,'recetas_post_type','',0),
(116,3,'2023-05-31 11:49:52','2023-05-31 11:49:52','','6888281e-7d9d-4f83-abcb-6c1ac5eaf88c_chickpea-mayo-sandwhich.png','','inherit','open','closed','','6888281e-7d9d-4f83-abcb-6c1ac5eaf88c_chickpea-mayo-sandwhich-png','','','2023-05-31 11:49:53','2023-05-31 11:49:53','',115,'https://stoic-khorana.5-135-116-99.plesk.page/wp-content/uploads/2023/05/6888281e-7d9d-4f83-abcb-6c1ac5eaf88c_chickpea-mayo-sandwhich.png',0,'attachment','image/png',0),
(117,3,'2023-05-31 12:10:13','2023-05-31 12:10:13','','Gachas de calabaza','','publish','closed','closed','','gachas-de-calabaza','','','2023-05-31 12:10:13','2023-05-31 12:10:13','',0,'https://stoic-khorana.5-135-116-99.plesk.page/?post_type=recetas_post_type&#038;p=117',0,'recetas_post_type','',0),
(118,3,'2023-05-31 12:10:13','2023-05-31 12:10:13','','91905468-bc83-43df-b6bf-01db85d74045_pumpkin-pie-porridge.png','','inherit','open','closed','','91905468-bc83-43df-b6bf-01db85d74045_pumpkin-pie-porridge-png','','','2023-05-31 12:10:13','2023-05-31 12:10:13','',117,'https://stoic-khorana.5-135-116-99.plesk.page/wp-content/uploads/2023/05/91905468-bc83-43df-b6bf-01db85d74045_pumpkin-pie-porridge.png',0,'attachment','image/png',0),
(119,3,'2023-05-31 12:27:42','2023-05-31 12:27:42','','Barritas proteicas de chocolate y mantequilla de cacahuete','','publish','closed','closed','','barritas-proteicas-de-chocolate-y-mantequilla-de-cacahuete','','','2023-05-31 15:52:14','2023-05-31 15:52:14','',0,'https://stoic-khorana.5-135-116-99.plesk.page/?post_type=recetas_post_type&#038;p=119',0,'recetas_post_type','',0),
(120,3,'2023-05-31 12:27:42','2023-05-31 12:27:42','','d8263ff5-5a84-439d-a43e-6628922f376a_chocolate-peanut-butter-protein-bars.png','','inherit','open','closed','','d8263ff5-5a84-439d-a43e-6628922f376a_chocolate-peanut-butter-protein-bars-png','','','2023-05-31 12:27:42','2023-05-31 12:27:42','',119,'https://stoic-khorana.5-135-116-99.plesk.page/wp-content/uploads/2023/05/d8263ff5-5a84-439d-a43e-6628922f376a_chocolate-peanut-butter-protein-bars.png',0,'attachment','image/png',0),
(121,3,'2023-05-31 15:04:55','2023-05-31 15:04:55','','Sándwich tostado de champiñones, espinacas y pesto','','publish','closed','closed','','sandwich-tostado-de-champinones-espinacas-y-pesto','','','2023-05-31 15:05:09','2023-05-31 15:05:09','',0,'https://stoic-khorana.5-135-116-99.plesk.page/?post_type=recetas_post_type&#038;p=121',0,'recetas_post_type','',0),
(122,3,'2023-05-31 15:04:55','2023-05-31 15:04:55','','fad9e994-32e9-4511-b620-5b3a6287009f_mushroom-spinach-pesto-toasted-sandwich.png','','inherit','open','closed','','fad9e994-32e9-4511-b620-5b3a6287009f_mushroom-spinach-pesto-toasted-sandwich-png','','','2023-05-31 15:04:55','2023-05-31 15:04:55','',121,'https://stoic-khorana.5-135-116-99.plesk.page/wp-content/uploads/2023/05/fad9e994-32e9-4511-b620-5b3a6287009f_mushroom-spinach-pesto-toasted-sandwich.png',0,'attachment','image/png',0),
(123,3,'2023-05-31 15:24:24','2023-05-31 15:24:24','','Filetes de coliflor al tahini con ensalada de cuscús','','publish','closed','closed','','filetes-de-coliflor-al-tahini-con-ensalada-de-cuscus','','','2023-05-31 15:24:24','2023-05-31 15:24:24','',0,'https://stoic-khorana.5-135-116-99.plesk.page/?post_type=recetas_post_type&#038;p=123',0,'recetas_post_type','',0),
(124,3,'2023-05-31 15:24:24','2023-05-31 15:24:24','','95c4312f-2080-43a8-ae4e-363803bb2629_cauliflower-steaks-couscous-salad.png','','inherit','open','closed','','95c4312f-2080-43a8-ae4e-363803bb2629_cauliflower-steaks-couscous-salad-png','','','2023-05-31 15:24:24','2023-05-31 15:24:24','',123,'https://stoic-khorana.5-135-116-99.plesk.page/wp-content/uploads/2023/05/95c4312f-2080-43a8-ae4e-363803bb2629_cauliflower-steaks-couscous-salad.png',0,'attachment','image/png',0),
(125,3,'2023-05-31 15:33:03','2023-05-31 15:33:03','','Ramen de champiñones, zanahoria y brócoli','','publish','closed','closed','','ramen-de-champinones-zanahoria-y-brocoli','','','2023-05-31 15:33:03','2023-05-31 15:33:03','',0,'https://stoic-khorana.5-135-116-99.plesk.page/?post_type=recetas_post_type&#038;p=125',0,'recetas_post_type','',0),
(126,3,'2023-05-31 15:33:03','2023-05-31 15:33:03','','02c33162-975d-4a6c-aafa-afac0bdae3d4_miso-soup.png','','inherit','open','closed','','02c33162-975d-4a6c-aafa-afac0bdae3d4_miso-soup-png','','','2023-05-31 15:33:04','2023-05-31 15:33:04','',125,'https://stoic-khorana.5-135-116-99.plesk.page/wp-content/uploads/2023/05/02c33162-975d-4a6c-aafa-afac0bdae3d4_miso-soup.png',0,'attachment','image/png',0),
(127,3,'2023-05-31 15:43:26','2023-05-31 15:43:26','','Caldo de Pak choi, zanahoria y setas','','publish','closed','closed','','caldo-de-pak-choi-zanahoria-y-setas','','','2023-05-31 15:43:26','2023-05-31 15:43:26','',0,'https://stoic-khorana.5-135-116-99.plesk.page/?post_type=recetas_post_type&#038;p=127',0,'recetas_post_type','',0),
(128,3,'2023-05-31 15:43:26','2023-05-31 15:43:26','','28d728c2-e5e5-4577-a7f0-938abdff5681_pak-choi-broth.png','','inherit','open','closed','','28d728c2-e5e5-4577-a7f0-938abdff5681_pak-choi-broth-png','','','2023-05-31 15:43:27','2023-05-31 15:43:27','',127,'https://stoic-khorana.5-135-116-99.plesk.page/wp-content/uploads/2023/05/28d728c2-e5e5-4577-a7f0-938abdff5681_pak-choi-broth.png',0,'attachment','image/png',0),
(129,3,'2023-05-31 20:35:35','2023-05-31 20:35:35','','Copos de avena con bayas','','publish','closed','closed','','copos-de-avena-con-bayas','','','2023-05-31 20:35:35','2023-05-31 20:35:35','',0,'https://stoic-khorana.5-135-116-99.plesk.page/?post_type=recetas_post_type&#038;p=129',0,'recetas_post_type','',0),
(130,3,'2023-05-31 20:35:35','2023-05-31 20:35:35','','aa141b1b-b51e-4314-b5d5-e18cb7d6f43a_berry-overnight-oats.png','','inherit','open','closed','','aa141b1b-b51e-4314-b5d5-e18cb7d6f43a_berry-overnight-oats-png','','','2023-05-31 20:35:35','2023-05-31 20:35:35','',129,'https://stoic-khorana.5-135-116-99.plesk.page/wp-content/uploads/2023/05/aa141b1b-b51e-4314-b5d5-e18cb7d6f43a_berry-overnight-oats.png',0,'attachment','image/png',0),
(131,3,'2023-05-31 20:50:08','2023-05-31 20:50:08','','Guacamole al mortero','','publish','closed','closed','','guacamole-al-mortero','','','2023-05-31 20:50:08','2023-05-31 20:50:08','',0,'https://stoic-khorana.5-135-116-99.plesk.page/?post_type=recetas_post_type&#038;p=131',0,'recetas_post_type','',0),
(132,3,'2023-05-31 20:50:08','2023-05-31 20:50:08','','596b2cf4-2aae-469e-b87f-91be000d66a6_guacamole.png','','inherit','open','closed','','596b2cf4-2aae-469e-b87f-91be000d66a6_guacamole-png','','','2023-05-31 20:50:09','2023-05-31 20:50:09','',131,'https://stoic-khorana.5-135-116-99.plesk.page/wp-content/uploads/2023/05/596b2cf4-2aae-469e-b87f-91be000d66a6_guacamole.png',0,'attachment','image/png',0),
(133,3,'2023-05-31 20:58:55','2023-05-31 20:58:55','','Fideos vegetarianos especiados al estilo asiático','','publish','closed','closed','','fideos-vegetarianos-especiados-al-estilo-asiatico','','','2023-05-31 20:58:55','2023-05-31 20:58:55','',0,'https://stoic-khorana.5-135-116-99.plesk.page/?post_type=recetas_post_type&#038;p=133',0,'recetas_post_type','',0),
(134,3,'2023-05-31 20:58:55','2023-05-31 20:58:55','','ce4b894f-da2c-47a2-a1c4-bca15fc03833_asian-style-spiced-veggie-noodles.png','','inherit','open','closed','','ce4b894f-da2c-47a2-a1c4-bca15fc03833_asian-style-spiced-veggie-noodles-png','','','2023-05-31 20:58:56','2023-05-31 20:58:56','',133,'https://stoic-khorana.5-135-116-99.plesk.page/wp-content/uploads/2023/05/ce4b894f-da2c-47a2-a1c4-bca15fc03833_asian-style-spiced-veggie-noodles.png',0,'attachment','image/png',0),
(135,3,'2023-05-31 21:04:28','2023-05-31 21:04:28','','Gachas de plátano y bayas','','publish','closed','closed','','gachas-de-platano-y-bayas','','','2023-05-31 21:04:28','2023-05-31 21:04:28','',0,'https://stoic-khorana.5-135-116-99.plesk.page/?post_type=recetas_post_type&#038;p=135',0,'recetas_post_type','',0),
(136,3,'2023-05-31 21:04:28','2023-05-31 21:04:28','','0e0e10a9-f7e6-4725-85ed-c0288f65ccac_banana-berry-porridge.png','','inherit','open','closed','','0e0e10a9-f7e6-4725-85ed-c0288f65ccac_banana-berry-porridge-png','','','2023-05-31 21:04:28','2023-05-31 21:04:28','',135,'https://stoic-khorana.5-135-116-99.plesk.page/wp-content/uploads/2023/05/0e0e10a9-f7e6-4725-85ed-c0288f65ccac_banana-berry-porridge.png',0,'attachment','image/png',0),
(137,3,'2023-05-31 21:15:24','2023-05-31 21:15:24','','Gachas de nuez, manzana y dátiles','','publish','closed','closed','','gachas-de-nuez-manzana-y-datiles','','','2023-05-31 21:15:24','2023-05-31 21:15:24','',0,'https://stoic-khorana.5-135-116-99.plesk.page/?post_type=recetas_post_type&#038;p=137',0,'recetas_post_type','',0),
(138,3,'2023-05-31 21:15:24','2023-05-31 21:15:24','','338b523d-73cc-439a-acd0-d02eaff6ba7e_nutty-apple-date-porridge.png','','inherit','open','closed','','338b523d-73cc-439a-acd0-d02eaff6ba7e_nutty-apple-date-porridge-png','','','2023-05-31 21:15:24','2023-05-31 21:15:24','',137,'https://stoic-khorana.5-135-116-99.plesk.page/wp-content/uploads/2023/05/338b523d-73cc-439a-acd0-d02eaff6ba7e_nutty-apple-date-porridge.png',0,'attachment','image/png',0),
(139,3,'2023-05-31 22:31:56','0000-00-00 00:00:00','','Borrador automático','','auto-draft','closed','closed','','','','','2023-05-31 22:31:56','0000-00-00 00:00:00','',0,'https://stoic-khorana.5-135-116-99.plesk.page/?post_type=recetas_post_type&p=139',0,'recetas_post_type','',0),
(140,3,'2023-05-31 22:35:44','0000-00-00 00:00:00','','Borrador automático','','auto-draft','closed','closed','','','','','2023-05-31 22:35:44','0000-00-00 00:00:00','',0,'https://stoic-khorana.5-135-116-99.plesk.page/?post_type=recetas_post_type&p=140',0,'recetas_post_type','',0),
(141,3,'2023-05-31 22:36:04','0000-00-00 00:00:00','','Borrador automático','','auto-draft','closed','closed','','','','','2023-05-31 22:36:04','0000-00-00 00:00:00','',0,'https://stoic-khorana.5-135-116-99.plesk.page/?post_type=recetas_post_type&p=141',0,'recetas_post_type','',0),
(142,3,'2023-05-31 22:57:26','0000-00-00 00:00:00','','Borrador automático','','auto-draft','closed','closed','','','','','2023-05-31 22:57:26','0000-00-00 00:00:00','',0,'https://stoic-khorana.5-135-116-99.plesk.page/?post_type=recetas_post_type&p=142',0,'recetas_post_type','',0),
(143,13,'2023-06-02 14:32:28','0000-00-00 00:00:00','','Borrador automático','','auto-draft','open','open','','','','','2023-06-02 14:32:28','0000-00-00 00:00:00','',0,'https://stoic-khorana.5-135-116-99.plesk.page/?p=143',0,'post','',0),
(144,1,'2023-06-03 23:30:39','0000-00-00 00:00:00','','Borrador automático','','auto-draft','open','open','','','','','2023-06-03 23:30:39','0000-00-00 00:00:00','',0,'https://stoic-khorana.5-135-116-99.plesk.page/?p=144',0,'post','',0),
(145,1,'2023-06-04 00:18:32','0000-00-00 00:00:00','','Borrador automático','','auto-draft','closed','closed','','','','','2023-06-04 00:18:32','0000-00-00 00:00:00','',0,'https://stoic-khorana.5-135-116-99.plesk.page/?post_type=recetas_post_type&p=145',0,'recetas_post_type','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_snippets`
--

DROP TABLE IF EXISTS `wp_snippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_snippets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `description` text NOT NULL,
  `code` longtext NOT NULL,
  `tags` longtext NOT NULL,
  `scope` varchar(15) NOT NULL DEFAULT 'global',
  `priority` smallint(6) NOT NULL DEFAULT 10,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `scope` (`scope`),
  KEY `active` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_snippets`
--

LOCK TABLES `wp_snippets` WRITE;
/*!40000 ALTER TABLE `wp_snippets` DISABLE KEYS */;
INSERT INTO `wp_snippets` VALUES
(1,'Hacer que los nombres de archivos subidos estén en minúsculas','Asegura que las subidas de imágenes y archivos tengan nombres de archivo en minúsculas.\n\nEsto es un fragmento de código de ejemplo. Siéntente libre de usarlo, editarlo o eliminarlo.','add_filter( \'sanitize_file_name\', \'mb_strtolower\' );','sample, media','global',10,0,'2023-05-05 15:52:30'),
(2,'Desactivar barra de administración','Desactiva la barra de administración de WordPress para todos excepto para los administradores.\n\nEsto es un fragmento de código de ejemplo. Siéntente libre de usarlo, editarlo o eliminarlo.','add_action( \'wp\', function () {\n	if ( ! current_user_can( \'manage_options\' ) ) {\n		show_admin_bar( false );\n	}\n} );','sample, admin-bar','front-end',10,0,'2023-05-05 15:52:30'),
(3,'Permitir emoticonos','Permite la conversión de emoticonos en lugares oscuros.\n\nEsto es un fragmento de código de ejemplo. Siéntente libre de usarlo, editarlo o eliminarlo.','add_filter( \'widget_text\', \'convert_smilies\' );\nadd_filter( \'the_title\', \'convert_smilies\' );\nadd_filter( \'wp_title\', \'convert_smilies\' );\nadd_filter( \'get_bloginfo\', \'convert_smilies\' );','sample','global',10,0,'2023-05-05 15:52:30'),
(4,'Año actual','Shortcode para insertar el año actual en una entrada o página…\n\nEsto es un fragmento de código de ejemplo. Siéntente libre de usarlo, editarlo o eliminarlo.','<?php echo date( \'Y\' ); ?>','sample, dates','content',10,0,'2023-05-05 15:52:30'),
(5,'','','// Disable the toolbar completely for all users\r\nadd_filter(\'show_admin_bar\', \'__return_false\');','','global',10,0,'2023-05-05 15:53:14'),
(6,'','','var_dump($_GET);\r\n','','global',10,0,'2023-05-05 15:55:50'),
(7,'CPT Recetas','','// Register Custom Post Type\r\nfunction recetas_post_type() {\r\n\r\n	$labels = array(\r\n		\'name\'                  => _x( \'Recetas\', \'Post Type General Name\', \'recetas_domain\' ),\r\n		\'singular_name\'         => _x( \'Receta\', \'Post Type Singular Name\', \'recetas_domain\' ),\r\n		\'menu_name\'             => __( \'Recetas\', \'recetas_domain\' ),\r\n		\'name_admin_bar\'        => __( \'Recetas\', \'recetas_domain\' ),\r\n		\'archives\'              => __( \'Archivo recetas\', \'recetas_domain\' ),\r\n		\'attributes\'            => __( \'Atributos recetas\', \'recetas_domain\' ),\r\n		\'parent_item_colon\'     => __( \'Receta padre:\', \'recetas_domain\' ),\r\n		\'all_items\'             => __( \'Todas\', \'recetas_domain\' ),\r\n		\'add_new_item\'          => __( \'Añadir nueva\', \'recetas_domain\' ),\r\n		\'add_new\'               => __( \'Añadir\', \'recetas_domain\' ),\r\n		\'new_item\'              => __( \'Nueva\', \'recetas_domain\' ),\r\n		\'edit_item\'             => __( \'Editar\', \'recetas_domain\' ),\r\n		\'update_item\'           => __( \'Actualizar\', \'recetas_domain\' ),\r\n		\'view_item\'             => __( \'Ver receta\', \'recetas_domain\' ),\r\n		\'view_items\'            => __( \'Ver recetas\', \'recetas_domain\' ),\r\n		\'search_items\'          => __( \'Buscar receta\', \'recetas_domain\' ),\r\n		\'not_found\'             => __( \'Receta no encontrada\', \'recetas_domain\' ),\r\n		\'not_found_in_trash\'    => __( \'Receta no encontrada en la papelera\', \'recetas_domain\' ),\r\n		\'featured_image\'        => __( \'Imagen destacada\', \'recetas_domain\' ),\r\n		\'set_featured_image\'    => __( \'Asignar imagen destacada\', \'recetas_domain\' ),\r\n		\'remove_featured_image\' => __( \'Eliminar imagen destacada\', \'recetas_domain\' ),\r\n		\'use_featured_image\'    => __( \'Usar como imagen destacada\', \'recetas_domain\' ),\r\n		\'insert_into_item\'      => __( \'Insertar en receta\', \'recetas_domain\' ),\r\n		\'uploaded_to_this_item\' => __( \'Subir a receta\', \'recetas_domain\' ),\r\n		\'items_list\'            => __( \'Lista receta\', \'recetas_domain\' ),\r\n		\'items_list_navigation\' => __( \'Navegación recetas\', \'recetas_domain\' ),\r\n		\'filter_items_list\'     => __( \'Filtro recetas\', \'recetas_domain\' ),\r\n	);\r\n	$rewrite = array(\r\n		\'slug\'                  => \'recetas\',\r\n		\'with_front\'            => true,\r\n		\'pages\'                 => true,\r\n		\'feeds\'                 => true,\r\n	);\r\n	$args = array(\r\n		\'label\'                 => __( \'Receta\', \'recetas_domain\' ),\r\n		\'description\'           => __( \'Contenido de recetas\', \'recetas_domain\' ),\r\n		\'labels\'                => $labels,\r\n		\'supports\'              => array( \'title\' ),\r\n		\'taxonomies\'            => array( \'category\', \'post_tag\' ),\r\n		\'hierarchical\'          => false,\r\n		\'public\'                => true,\r\n		\'show_ui\'               => true,\r\n		\'show_in_menu\'          => true,\r\n		\'menu_position\'         => 5,\r\n		\'menu_icon\'             => \'dashicons-food\',\r\n		\'show_in_admin_bar\'     => true,\r\n		\'show_in_nav_menus\'     => true,\r\n		\'can_export\'            => true,\r\n		\'has_archive\'           => true,\r\n		\'exclude_from_search\'   => false,\r\n		\'publicly_queryable\'    => true,\r\n		\'rewrite\'               => $rewrite,\r\n		\'capability_type\'       => \'page\',\r\n	);\r\n	register_post_type( \'recetas_post_type\', $args );\r\n\r\n}\r\nadd_action( \'init\', \'recetas_post_type\', 0 );','','global',10,0,'2023-05-10 16:00:54'),
(8,'Añadir CPT a consulta','','add_action( \'pre_get_posts\', \'add_my_post_types_to_query\' );\r\n\r\nfunction add_my_post_types_to_query( $query ) {\r\n	if ( (is_single() || is_home() || is_category() ) && $query->is_main_query() )\r\n		$query->set( \'post_type\', array( \'post\', \'recetas_post_type\' ) );\r\n\r\n	return $query;\r\n}','','global',10,0,'2023-05-10 16:10:14');
/*!40000 ALTER TABLE `wp_snippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES
(1,1,0),
(7,2,0),
(75,3,0),
(76,4,0),
(77,4,0),
(82,3,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES
(1,1,'category','',0,1),
(2,2,'wp_theme','',0,1),
(3,3,'nav_menu','',0,2),
(4,4,'nav_menu','',0,2);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES
(1,'Sin categoría','sin-categoria',0),
(2,'twentytwentythree','twentytwentythree',0),
(3,'Nutricionista','nutricionista',0),
(4,'Paciente','paciente',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=584 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES
(1,1,'nickname','nutrifitplus_admin'),
(2,1,'first_name',''),
(3,1,'last_name',''),
(4,1,'description',''),
(5,1,'rich_editing','true'),
(6,1,'syntax_highlighting','true'),
(7,1,'comment_shortcuts','false'),
(8,1,'admin_color','admin_panel_nutrifit'),
(9,1,'use_ssl','0'),
(10,1,'show_admin_bar_front','true'),
(11,1,'locale',''),
(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),
(13,1,'wp_user_level','10'),
(14,1,'dismissed_wp_pointers','theme_editor_notice,plugin_editor_notice'),
(15,1,'show_welcome_panel','0'),
(17,1,'wp_dashboard_quick_press_last_post_id','144'),
(18,1,'community-events-location','a:1:{s:2:\"ip\";s:12:\"79.116.208.0\";}'),
(19,1,'wp_persisted_preferences','a:2:{s:14:\"core/edit-post\";a:4:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:16:\"discussion-panel\";}s:10:\"editorMode\";s:6:\"visual\";}s:9:\"_modified\";s:24:\"2023-05-18T21:25:19.126Z\";}'),
(38,1,'manageedit-acf-post-typecolumnshidden','a:1:{i:0;s:7:\"acf-key\";}'),
(39,1,'acf_user_settings','a:1:{s:19:\"post-type-first-run\";b:1;}'),
(40,1,'closedpostboxes_acf-post-type','a:0:{}'),
(41,1,'metaboxhidden_acf-post-type','a:2:{i:0;s:21:\"acf-advanced-settings\";i:1;s:7:\"slugdiv\";}'),
(42,1,'closedpostboxes_receta','a:0:{}'),
(43,1,'metaboxhidden_receta','a:0:{}'),
(44,1,'wp_user-settings','libraryContent=browse'),
(45,1,'wp_user-settings-time','1683560456'),
(46,1,'closedpostboxes_toplevel_page_members','a:0:{}'),
(47,1,'metaboxhidden_toplevel_page_members','a:0:{}'),
(52,1,'closedpostboxes_recetas_post_type','a:3:{i:0;s:11:\"categorydiv\";i:1;s:16:\"tagsdiv-post_tag\";i:2;s:10:\"members-cp\";}'),
(53,1,'metaboxhidden_recetas_post_type','a:1:{i:0;s:7:\"slugdiv\";}'),
(55,3,'nickname','nutricionista'),
(56,3,'first_name','Nutricionista'),
(57,3,'last_name','Nutricionista'),
(58,3,'description',''),
(59,3,'rich_editing','true'),
(60,3,'syntax_highlighting','true'),
(61,3,'comment_shortcuts','false'),
(62,3,'admin_color','admin_panel_nutrifit'),
(63,3,'use_ssl','0'),
(64,3,'show_admin_bar_front','true'),
(65,3,'locale',''),
(66,3,'wp_capabilities','a:1:{s:13:\"nutricionista\";b:1;}'),
(67,3,'wp_user_level','0'),
(68,3,'dismissed_wp_pointers',''),
(70,3,'community-events-location','a:1:{s:2:\"ip\";s:12:\"79.116.208.0\";}'),
(75,4,'nickname','paciente1'),
(76,4,'first_name','paciente1'),
(77,4,'last_name','paciente1'),
(78,4,'description',''),
(79,4,'rich_editing','true'),
(80,4,'syntax_highlighting','true'),
(81,4,'comment_shortcuts','false'),
(82,4,'admin_color','admin_panel_nutrifit'),
(83,4,'use_ssl','0'),
(84,4,'show_admin_bar_front','true'),
(85,4,'locale',''),
(86,4,'wp_capabilities','a:1:{s:8:\"paciente\";b:1;}'),
(87,4,'wp_user_level','0'),
(88,4,'dismissed_wp_pointers',''),
(90,4,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(93,5,'nickname','paciente2'),
(94,5,'first_name','paciente2'),
(95,5,'last_name','paciente2'),
(96,5,'description',''),
(97,5,'rich_editing','true'),
(98,5,'syntax_highlighting','true'),
(99,5,'comment_shortcuts','false'),
(100,5,'admin_color','fresh'),
(101,5,'use_ssl','0'),
(102,5,'show_admin_bar_front','true'),
(103,5,'locale',''),
(104,5,'wp_capabilities','a:1:{s:8:\"paciente\";b:1;}'),
(105,5,'wp_user_level','0'),
(106,5,'dismissed_wp_pointers',''),
(130,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(131,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}'),
(132,1,'closedpostboxes_nav-menus','a:0:{}'),
(133,1,'nav_menu_recently_edited','3'),
(138,1,'whatthefile-hide-notice','1'),
(175,3,'manageuserscolumnshidden','a:0:{}'),
(300,13,'nickname','francisco_admin'),
(301,13,'first_name','Francisco'),
(302,13,'last_name','Romero'),
(303,13,'description',''),
(304,13,'rich_editing','true'),
(305,13,'syntax_highlighting','true'),
(306,13,'comment_shortcuts','false'),
(307,13,'admin_color','admin_panel_nutrifit'),
(308,13,'use_ssl','0'),
(309,13,'show_admin_bar_front','true'),
(310,13,'locale',''),
(311,13,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),
(312,13,'wp_user_level','10'),
(314,13,'wp_dashboard_quick_press_last_post_id','143'),
(315,13,'community-events-location','a:1:{s:2:\"ip\";s:12:\"154.56.136.0\";}'),
(316,3,'_application_passwords','a:1:{i:0;a:7:{s:4:\"uuid\";s:36:\"8b28f4f5-7f05-4928-a58d-8ecc0ded5431\";s:6:\"app_id\";s:0:\"\";s:4:\"name\";s:3:\"API\";s:8:\"password\";s:34:\"$P$BSRBQA1CNexeEa8SXs1tDEx7FVfB/j.\";s:7:\"created\";i:1685102763;s:9:\"last_used\";N;s:7:\"last_ip\";N;}}'),
(331,5,'nutricionista_id','3'),
(332,3,'closedpostboxes_dashboard','a:0:{}'),
(333,3,'metaboxhidden_dashboard','a:2:{i:0;s:18:\"dashboard_activity\";i:1;s:17:\"dashboard_primary\";}'),
(334,3,'wp_user-settings','mfold=o'),
(335,3,'wp_user-settings-time','1685530306'),
(336,13,'bpbm_last_activity','2023-06-01 21:48:24'),
(338,3,'bpbm_last_activity','2023-06-04 18:54:53'),
(339,1,'bpbm_last_activity','2023-06-04 19:10:20'),
(345,4,'bpbm_last_activity','2023-06-04 18:56:06'),
(346,5,'bpbm_last_activity','2023-06-01 15:34:04'),
(355,3,'bp-better-messages-last-notified','a:1:{i:1;s:1:\"8\";}'),
(357,1,'closedpostboxes_dashboard','a:0:{}'),
(358,1,'metaboxhidden_dashboard','a:5:{i:0;s:19:\"dashboard_right_now\";i:1;s:32:\"wp_mail_smtp_reports_widget_lite\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";i:4;s:18:\"dashboard_activity\";}'),
(359,1,'meta-box-order_dashboard','a:4:{s:6:\"normal\";s:37:\"llar_stats_widget,dashboard_right_now\";s:4:\"side\";s:61:\"dashboard_quick_press,dashboard_primary,dashboard_site_health\";s:7:\"column3\";s:18:\"dashboard_activity\";s:7:\"column4\";s:0:\"\";}'),
(360,1,'bp-better-messages-last-notified','a:1:{i:4;s:1:\"9\";}'),
(363,4,'bp-better-messages-last-notified','a:1:{i:1;s:2:\"10\";}'),
(364,4,'nutricionista_id','3'),
(414,13,'session_tokens','a:2:{s:64:\"002f63a81c5dbfe92aedb3ecaa259856e59028172836e0f4f62d0d135c640d35\";a:4:{s:10:\"expiration\";i:1685827364;s:2:\"ip\";s:13:\"154.56.136.55\";s:2:\"ua\";s:129:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57\";s:5:\"login\";i:1685654564;}s:64:\"6e864080e40d12fe4fd435772077bf1a95b065ad0ab9e3af27480629d3f96be6\";a:4:{s:10:\"expiration\";i:1685889148;s:2:\"ip\";s:13:\"154.56.136.55\";s:2:\"ua\";s:129:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57\";s:5:\"login\";i:1685716348;}}'),
(415,13,'dismissed_wp_pointers','plugin_editor_notice'),
(422,3,'session_tokens','a:1:{s:64:\"c8747ef9ed397d086545faab9aa564d3838f3ec807de2069c8499790f5b23a42\";a:4:{s:10:\"expiration\";i:1686076739;s:2:\"ip\";s:13:\"84.124.186.65\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1685903939;}}'),
(425,18,'nickname','Helena'),
(426,18,'first_name','Helena'),
(427,18,'last_name','Hermoso'),
(428,18,'description',''),
(429,18,'rich_editing','true'),
(430,18,'syntax_highlighting','true'),
(431,18,'comment_shortcuts','false'),
(432,18,'admin_color','fresh'),
(433,18,'use_ssl','0'),
(434,18,'show_admin_bar_front','true'),
(435,18,'locale',''),
(436,18,'wp_capabilities','a:1:{s:8:\"paciente\";b:1;}'),
(437,18,'wp_user_level','0'),
(438,19,'nickname','Elena'),
(439,19,'first_name','Elena'),
(440,19,'last_name','Espinoza'),
(441,19,'description',''),
(442,19,'rich_editing','true'),
(443,19,'syntax_highlighting','true'),
(444,19,'comment_shortcuts','false'),
(445,19,'admin_color','fresh'),
(446,19,'use_ssl','0'),
(447,19,'show_admin_bar_front','true'),
(448,19,'locale',''),
(449,19,'wp_capabilities','a:1:{s:8:\"paciente\";b:1;}'),
(450,19,'wp_user_level','0'),
(451,20,'nickname','Emma'),
(452,20,'first_name','Emma'),
(453,20,'last_name','Esteve'),
(454,20,'description',''),
(455,20,'rich_editing','true'),
(456,20,'syntax_highlighting','true'),
(457,20,'comment_shortcuts','false'),
(458,20,'admin_color','fresh'),
(459,20,'use_ssl','0'),
(460,20,'show_admin_bar_front','true'),
(461,20,'locale',''),
(462,20,'wp_capabilities','a:1:{s:8:\"paciente\";b:1;}'),
(463,20,'wp_user_level','0'),
(464,21,'nickname','Eladio'),
(465,21,'first_name','Eladio'),
(466,21,'last_name','Portillo'),
(467,21,'description',''),
(468,21,'rich_editing','true'),
(469,21,'syntax_highlighting','true'),
(470,21,'comment_shortcuts','false'),
(471,21,'admin_color','fresh'),
(472,21,'use_ssl','0'),
(473,21,'show_admin_bar_front','true'),
(474,21,'locale',''),
(475,21,'wp_capabilities','a:1:{s:8:\"paciente\";b:1;}'),
(476,21,'wp_user_level','0'),
(477,22,'nickname','Nil'),
(478,22,'first_name','Nil'),
(479,22,'last_name','Fuente'),
(480,22,'description',''),
(481,22,'rich_editing','true'),
(482,22,'syntax_highlighting','true'),
(483,22,'comment_shortcuts','false'),
(484,22,'admin_color','fresh'),
(485,22,'use_ssl','0'),
(486,22,'show_admin_bar_front','true'),
(487,22,'locale',''),
(488,22,'wp_capabilities','a:1:{s:8:\"paciente\";b:1;}'),
(489,22,'wp_user_level','0'),
(490,23,'nickname','Pedro'),
(491,23,'first_name','Pedro'),
(492,23,'last_name','Calleja'),
(493,23,'description',''),
(494,23,'rich_editing','true'),
(495,23,'syntax_highlighting','true'),
(496,23,'comment_shortcuts','false'),
(497,23,'admin_color','fresh'),
(498,23,'use_ssl','0'),
(499,23,'show_admin_bar_front','true'),
(500,23,'locale',''),
(501,23,'wp_capabilities','a:1:{s:8:\"paciente\";b:1;}'),
(502,23,'wp_user_level','0'),
(503,24,'nickname','Nora'),
(504,24,'first_name','Nora'),
(505,24,'last_name','Castellanos'),
(506,24,'description',''),
(507,24,'rich_editing','true'),
(508,24,'syntax_highlighting','true'),
(509,24,'comment_shortcuts','false'),
(510,24,'admin_color','fresh'),
(511,24,'use_ssl','0'),
(512,24,'show_admin_bar_front','true'),
(513,24,'locale',''),
(514,24,'wp_capabilities','a:1:{s:8:\"paciente\";b:1;}'),
(515,24,'wp_user_level','0'),
(516,25,'nickname','Silvia'),
(517,25,'first_name','Silvia'),
(518,25,'last_name','Serrano'),
(519,25,'description',''),
(520,25,'rich_editing','true'),
(521,25,'syntax_highlighting','true'),
(522,25,'comment_shortcuts','false'),
(523,25,'admin_color','fresh'),
(524,25,'use_ssl','0'),
(525,25,'show_admin_bar_front','true'),
(526,25,'locale',''),
(527,25,'wp_capabilities','a:1:{s:8:\"paciente\";b:1;}'),
(528,25,'wp_user_level','0'),
(529,26,'nickname','Nahia'),
(530,26,'first_name','Nahia'),
(531,26,'last_name','Menendez'),
(532,26,'description',''),
(533,26,'rich_editing','true'),
(534,26,'syntax_highlighting','true'),
(535,26,'comment_shortcuts','false'),
(536,26,'admin_color','fresh'),
(537,26,'use_ssl','0'),
(538,26,'show_admin_bar_front','true'),
(539,26,'locale',''),
(540,26,'wp_capabilities','a:1:{s:8:\"paciente\";b:1;}'),
(541,26,'wp_user_level','0'),
(542,21,'bpbm_last_activity','2023-06-04 19:20:29'),
(543,19,'bpbm_last_activity','1970-01-01 00:00:00'),
(544,20,'bpbm_last_activity','1970-01-01 00:00:00'),
(545,18,'bpbm_last_activity','1970-01-01 00:00:00'),
(546,26,'bpbm_last_activity','1970-01-01 00:00:00'),
(547,22,'bpbm_last_activity','1970-01-01 00:00:00'),
(548,24,'bpbm_last_activity','1970-01-01 00:00:00'),
(549,23,'bpbm_last_activity','1970-01-01 00:00:00'),
(550,25,'bpbm_last_activity','1970-01-01 00:00:00'),
(551,27,'nickname','Nuria'),
(552,27,'first_name','Nuria'),
(553,27,'last_name','Duran'),
(554,27,'description',''),
(555,27,'rich_editing','true'),
(556,27,'syntax_highlighting','true'),
(557,27,'comment_shortcuts','false'),
(558,27,'admin_color','fresh'),
(559,27,'use_ssl','0'),
(560,27,'show_admin_bar_front','true'),
(561,27,'locale',''),
(562,27,'wp_capabilities','a:1:{s:8:\"paciente\";b:1;}'),
(563,27,'wp_user_level','0'),
(564,28,'nickname','Eva'),
(565,28,'first_name','Eva'),
(566,28,'last_name','Téllez'),
(567,28,'description',''),
(568,28,'rich_editing','true'),
(569,28,'syntax_highlighting','true'),
(570,28,'comment_shortcuts','false'),
(571,28,'admin_color','fresh'),
(572,28,'use_ssl','0'),
(573,28,'show_admin_bar_front','true'),
(574,28,'locale',''),
(575,28,'wp_capabilities','a:1:{s:13:\"nutricionista\";b:1;}'),
(576,28,'wp_user_level','0'),
(578,28,'bpbm_last_activity','2023-06-04 19:19:31'),
(581,21,'nutricionista_id','28');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES
(1,'nutrifitplus_admin','$P$BqOD2zCoPgrLEUWOdMSXCMQitLGV4s1','nutrifitplus_admin','eva.s284913@cesurformacion.com','http://127.0.0.1/nutrifit+','2023-04-13 11:25:32','',0,'nutrifitplus_admin'),
(3,'nutricionista','$P$BEJ1gkQx8U1J9hD4UFxOBM97nutJg8/','nutricionista','nutricionista@nutricionista.com','','2023-05-10 18:25:55','1683743157:$P$BqaJzAr.fwM0SMCDRcWje9iB48yJTu.',0,'Nutricionista Nutricionista'),
(4,'paciente1','$P$B0XVn9cg7Uq65QPmMpVpWCo7vupH1A1','paciente1','paciente1@paciente1.com','','2023-05-10 20:42:42','',0,'paciente1 paciente1'),
(5,'paciente2','$P$B.MRVVrrTCezpYZfFwtJ/DKCNb0UyU.','paciente2','brendaeva5@gmail.com','','2023-05-10 20:47:04','1683751627:$P$ByFyR39oZ1kDwDceBifsrk.JrM90nH0',0,'paciente2 paciente2'),
(13,'francisco_admin','$P$BZ63UbDuioh.Qkz7oaOSIVJDtcz1hN.','francisco_admin','francisco.romero@cesurformacion.com','','2023-05-26 11:08:19','',0,'Francisco Romero'),
(18,'Helena','$P$Bp89AmNQoEi8kMuKFXcexN1Tfo9znt0','helena','helena@nutrifit.com','','2023-06-04 19:03:09','',0,'Helena Hermoso'),
(19,'Elena','$P$BuNTZB78b/xmqQvUULg0fPDuqLA5/A1','elena','elena@nutrifit.com','','2023-06-04 19:03:49','',0,'Elena Espinoza'),
(20,'Emma','$P$Bxa1joIRFiPKC/dFVy2BLx0IeR4U9d1','emma','emma@nutrifit.com','','2023-06-04 19:04:21','',0,'Emma Esteve'),
(21,'Eladio','$P$BNhGK5XnFqns1zFhtaHMkb0wMB/EuN/','eladio','eladio@nutrifit.com','','2023-06-04 19:04:52','',0,'Eladio Portillo'),
(22,'Nil','$P$B0SOfHE4MqKzHJ.FiPFMZxfoDNMndI1','nil','nil@nutrifit.com','','2023-06-04 19:05:22','',0,'Nil Fuente'),
(23,'Pedro','$P$BYKlCSekQKTeatBho6LFXVOX1hgsk10','pedro','pedro@nutrifit.com','','2023-06-04 19:05:54','',0,'Pedro Calleja'),
(24,'Nora','$P$Bw9LLnSi7FmP/D7i59sYdyfhkFSLqx.','nora','nora@nutrifit.com','','2023-06-04 19:07:03','',0,'Nora Castellanos'),
(25,'Silvia','$P$B4UU3EEr50GpLWuryz0jbMgTsyfcgv1','silvia','silvia@nutrifit.com','','2023-06-04 19:07:44','',0,'Silvia Serrano'),
(26,'Nahia','$P$BAUFhbnA6UO0GLIGfw1tkfWEQNxWEn.','nahia','nahia@nutrifit.com','','2023-06-04 19:08:48','',0,'Nahia Menendez'),
(27,'Nuria','$P$BC8l4P2X7s7/C2PNkTKXI2TnmbtNT/1','nuria','nuria@nutrifit.com','','2023-06-04 19:09:36','',0,'Nuria Duran'),
(28,'Eva','$P$BRUYZ16PIvDBCgY5Q7.MXLcTy/yYlk/','eva','eva@nutrifit.com','','2023-06-04 19:10:19','',0,'Eva Téllez');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpmailsmtp_debug_events`
--

DROP TABLE IF EXISTS `wp_wpmailsmtp_debug_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpmailsmtp_debug_events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text DEFAULT NULL,
  `initiator` text DEFAULT NULL,
  `event_type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpmailsmtp_debug_events`
--

LOCK TABLES `wp_wpmailsmtp_debug_events` WRITE;
/*!40000 ALTER TABLE `wp_wpmailsmtp_debug_events` DISABLE KEYS */;
INSERT INTO `wp_wpmailsmtp_debug_events` VALUES
(1,'Mailer: Other SMTP\r\nSMTP Error: Could not connect to SMTP host.','{\"file\":\"\\/var\\/www\\/vhosts\\/stoic-khorana.5-135-116-99.plesk.page\\/httpdocs\\/nutrifit\\/wp-content\\/plugins\\/wp-mail-smtp\\/src\\/Admin\\/Pages\\/TestTab.php\",\"line\":349}',0,'2023-06-01 10:22:35'),
(2,'Mailer: Other SMTP\r\nSMTP Error: Could not connect to SMTP host.','{\"file\":\"\\/var\\/www\\/vhosts\\/stoic-khorana.5-135-116-99.plesk.page\\/httpdocs\\/nutrifit\\/wp-content\\/plugins\\/wp-mail-smtp\\/src\\/Admin\\/Pages\\/TestTab.php\",\"line\":349}',0,'2023-06-01 10:23:27');
/*!40000 ALTER TABLE `wp_wpmailsmtp_debug_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpmailsmtp_tasks_meta`
--

DROP TABLE IF EXISTS `wp_wpmailsmtp_tasks_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpmailsmtp_tasks_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `data` longtext NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpmailsmtp_tasks_meta`
--

LOCK TABLES `wp_wpmailsmtp_tasks_meta` WRITE;
/*!40000 ALTER TABLE `wp_wpmailsmtp_tasks_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpmailsmtp_tasks_meta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-04 19:23:28
