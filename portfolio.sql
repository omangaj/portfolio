CREATE DATABASE  IF NOT EXISTS `omkar_portfolio` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `omkar_portfolio`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: omkar_portfolio
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add profetion',7,'add_profetion'),(26,'Can change profetion',7,'change_profetion'),(27,'Can delete profetion',7,'delete_profetion'),(28,'Can view profetion',7,'view_profetion'),(29,'Can add mydata',8,'add_mydata'),(30,'Can change mydata',8,'change_mydata'),(31,'Can delete mydata',8,'delete_mydata'),(32,'Can view mydata',8,'view_mydata'),(33,'Can add links',9,'add_links'),(34,'Can change links',9,'change_links'),(35,'Can delete links',9,'delete_links'),(36,'Can view links',9,'view_links'),(37,'Can add experience',10,'add_experience'),(38,'Can change experience',10,'change_experience'),(39,'Can delete experience',10,'delete_experience'),(40,'Can view experience',10,'view_experience'),(41,'Can add my_skill',11,'add_my_skill'),(42,'Can change my_skill',11,'change_my_skill'),(43,'Can delete my_skill',11,'delete_my_skill'),(44,'Can view my_skill',11,'view_my_skill'),(45,'Can add code_ editor',12,'add_code_editor'),(46,'Can change code_ editor',12,'change_code_editor'),(47,'Can delete code_ editor',12,'delete_code_editor'),(48,'Can view code_ editor',12,'view_code_editor'),(49,'Can add hobbies',13,'add_hobbies'),(50,'Can change hobbies',13,'change_hobbies'),(51,'Can delete hobbies',13,'delete_hobbies'),(52,'Can view hobbies',13,'view_hobbies'),(53,'Can add language',14,'add_language'),(54,'Can change language',14,'change_language'),(55,'Can delete language',14,'delete_language'),(56,'Can view language',14,'view_language'),(57,'Can add soft_ skill',15,'add_soft_skill'),(58,'Can change soft_ skill',15,'change_soft_skill'),(59,'Can delete soft_ skill',15,'delete_soft_skill'),(60,'Can view soft_ skill',15,'view_soft_skill'),(61,'Can add about',16,'add_about'),(62,'Can change about',16,'change_about'),(63,'Can delete about',16,'delete_about'),(64,'Can view about',16,'view_about'),(65,'Can add education',17,'add_education'),(66,'Can change education',17,'change_education'),(67,'Can delete education',17,'delete_education'),(68,'Can view education',17,'view_education');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$zDHhuUs3FFaD5Qa6hWYK3U$aKk4V7a4VlRR9FFNaPZA41w5mVupTwd2G+far2O0A9g=','2024-10-10 10:35:13.706699',1,'omkar','','','omkarangaj2018@gmail.com',1,1,'2024-10-09 09:59:02.351312');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-10-09 10:17:32.517430','1','Student',1,'[{\"added\": {}}]',7,1),(2,'2024-10-09 10:17:52.316764','2','Backend Developer',1,'[{\"added\": {}}]',7,1),(3,'2024-10-09 10:34:35.297695','1','Omkar Ananda Angaj',1,'[{\"added\": {}}]',8,1),(4,'2024-10-09 16:33:04.492004','1','Omkar Ananda Angaj',2,'[{\"changed\": {\"fields\": [\"Photo\"]}}]',8,1),(5,'2024-10-09 17:12:49.722096','1','Omkar Ananda Angaj',2,'[{\"changed\": {\"fields\": [\"Profetion\"]}}]',8,1),(6,'2024-10-09 17:18:02.172287','1','Omkar Ananda Angaj',2,'[{\"changed\": {\"fields\": [\"Education\"]}}]',8,1),(7,'2024-10-09 17:24:23.340822','1','Github',1,'[{\"added\": {}}]',9,1),(8,'2024-10-09 17:25:34.210501','2','Linkedin',1,'[{\"added\": {}}]',9,1),(9,'2024-10-09 17:38:06.576686','1','-----',1,'[{\"added\": {}}]',10,1),(10,'2024-10-09 17:41:03.605644','1','-----',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',10,1),(11,'2024-10-09 17:51:48.126780','1','Python',1,'[{\"added\": {}}]',11,1),(12,'2024-10-09 17:52:03.411414','2','HTML',1,'[{\"added\": {}}]',11,1),(13,'2024-10-09 17:52:13.341133','3','CSS',1,'[{\"added\": {}}]',11,1),(14,'2024-10-09 17:52:49.925812','4','Django',1,'[{\"added\": {}}]',11,1),(15,'2024-10-09 17:53:09.346698','5','Vs_Code',1,'[{\"added\": {}}]',11,1),(16,'2024-10-09 17:53:23.827027','6','Pycharm',1,'[{\"added\": {}}]',11,1),(17,'2024-10-10 10:50:07.196746','6','Pycharm',3,'',11,1),(18,'2024-10-10 10:50:07.203941','5','Vs_Code',3,'',11,1),(19,'2024-10-10 10:53:56.472902','2','Python Developer',1,'[{\"added\": {}}]',16,1),(20,'2024-10-10 10:54:09.729186','1','Marathi',1,'[{\"added\": {}}]',14,1),(21,'2024-10-10 10:54:15.980572','2','Hindi',1,'[{\"added\": {}}]',14,1),(22,'2024-10-10 10:54:23.093493','3','English',1,'[{\"added\": {}}]',14,1),(23,'2024-10-10 10:55:39.467726','1','Vs_Code',1,'[{\"added\": {}}]',12,1),(24,'2024-10-10 10:55:55.312806','2','PyCharm',1,'[{\"added\": {}}]',12,1),(25,'2024-10-10 10:56:09.468289','3','IDLE',1,'[{\"added\": {}}]',12,1),(26,'2024-10-10 10:57:33.921438','4','Dev c++',1,'[{\"added\": {}}]',12,1),(27,'2024-10-10 10:57:49.403690','1','Problem-solving',1,'[{\"added\": {}}]',15,1),(28,'2024-10-10 10:57:57.496764','2','Teamwork',1,'[{\"added\": {}}]',15,1),(29,'2024-10-10 10:58:07.344417','3','Learner',1,'[{\"added\": {}}]',15,1),(30,'2024-10-10 10:58:29.628901','4','Hard-work',1,'[{\"added\": {}}]',15,1),(31,'2024-10-10 10:58:43.522057','1','Driving',1,'[{\"added\": {}}]',13,1),(32,'2024-10-10 10:58:51.490867','2','Swimming',1,'[{\"added\": {}}]',13,1),(33,'2024-10-10 10:59:04.572755','3','Learning new things',1,'[{\"added\": {}}]',13,1),(34,'2024-10-10 11:40:11.425091','2','Python Developer',2,'[{\"changed\": {\"fields\": [\"Resume\", \"About resume\"]}}]',16,1),(35,'2024-10-10 17:39:50.186532','1','Education object (1)',1,'[{\"added\": {}}]',17,1),(36,'2024-10-10 17:40:42.194166','2','Bachelor of Science',1,'[{\"added\": {}}]',17,1),(37,'2024-10-10 17:41:01.828025','2','Bachelor of Science',3,'',17,1),(38,'2024-10-10 17:49:08.882940','3','Higher Secondary School',1,'[{\"added\": {}}]',17,1),(39,'2024-10-10 17:52:06.911723','4','Secondary School',1,'[{\"added\": {}}]',17,1),(40,'2024-10-10 18:44:07.412405','3','Instagram',1,'[{\"added\": {}}]',9,1),(41,'2024-10-10 18:44:56.474636','4','Facebook',1,'[{\"added\": {}}]',9,1),(42,'2024-10-10 19:02:34.163121','1','Github',2,'[{\"changed\": {\"fields\": [\"Icon\"]}}]',9,1),(43,'2024-10-10 19:02:46.843218','2','Linkedin',2,'[{\"changed\": {\"fields\": [\"Icon\"]}}]',9,1),(44,'2024-10-10 19:03:02.773201','3','Instagram',2,'[{\"changed\": {\"fields\": [\"Icon\"]}}]',9,1),(45,'2024-10-10 19:03:12.912093','4','Facebook',2,'[{\"changed\": {\"fields\": [\"Icon\"]}}]',9,1),(46,'2024-10-10 19:04:56.616191','2','Linkedin',2,'[]',9,1),(47,'2024-10-10 19:05:12.259933','4','Facebook',2,'[]',9,1),(48,'2024-10-10 19:05:26.401226','3','Instagram',2,'[]',9,1),(49,'2024-10-11 10:56:26.960223','1','Github',2,'[{\"changed\": {\"fields\": [\"Icon\"]}}]',9,1),(50,'2024-10-11 10:56:59.530852','4','Facebook',2,'[{\"changed\": {\"fields\": [\"Icon\"]}}]',9,1),(51,'2024-10-11 10:57:24.815637','3','Instagram',2,'[{\"changed\": {\"fields\": [\"Icon\"]}}]',9,1),(52,'2024-10-11 10:57:57.984421','2','Linkedin',2,'[{\"changed\": {\"fields\": [\"Icon\"]}}]',9,1),(53,'2024-10-11 11:09:07.281833','1','Omkar Ananda Angaj',2,'[{\"changed\": {\"fields\": [\"Photo\"]}}]',8,1),(54,'2024-10-11 11:40:18.161846','1','Omkar Ananda Angaj',2,'[{\"changed\": {\"fields\": [\"Background img\", \"Profile img\"]}}]',8,1),(55,'2024-10-11 11:50:29.361149','1','Omkar Ananda Angaj',2,'[{\"changed\": {\"fields\": [\"Background img\"]}}]',8,1),(56,'2024-10-11 11:52:08.329258','1','Omkar Ananda Angaj',2,'[{\"changed\": {\"fields\": [\"Background img\"]}}]',8,1),(57,'2024-10-11 11:53:17.953450','1','Omkar Ananda Angaj',2,'[{\"changed\": {\"fields\": [\"Background img\"]}}]',8,1),(58,'2024-10-11 14:25:25.463509','1','Omkar Ananda Angaj',2,'[{\"changed\": {\"fields\": [\"Background img\"]}}]',8,1),(59,'2024-10-11 14:31:29.653062','1','Omkar Ananda Angaj',2,'[{\"changed\": {\"fields\": [\"Background img\"]}}]',8,1),(60,'2024-10-11 14:32:11.875703','1','Omkar Ananda Angaj',2,'[{\"changed\": {\"fields\": [\"Background img\"]}}]',8,1),(61,'2024-10-11 14:32:58.446312','1','Omkar Ananda Angaj',2,'[{\"changed\": {\"fields\": [\"Background img\"]}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(16,'myapp','about'),(12,'myapp','code_editor'),(17,'myapp','education'),(10,'myapp','experience'),(13,'myapp','hobbies'),(14,'myapp','language'),(9,'myapp','links'),(11,'myapp','my_skill'),(8,'myapp','mydata'),(7,'myapp','profetion'),(15,'myapp','soft_skill'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-10-09 09:57:57.085633'),(2,'auth','0001_initial','2024-10-09 09:57:57.324857'),(3,'admin','0001_initial','2024-10-09 09:57:57.375694'),(4,'admin','0002_logentry_remove_auto_add','2024-10-09 09:57:57.390166'),(5,'admin','0003_logentry_add_action_flag_choices','2024-10-09 09:57:57.396817'),(6,'contenttypes','0002_remove_content_type_name','2024-10-09 09:57:57.460455'),(7,'auth','0002_alter_permission_name_max_length','2024-10-09 09:57:57.539221'),(8,'auth','0003_alter_user_email_max_length','2024-10-09 09:57:57.564549'),(9,'auth','0004_alter_user_username_opts','2024-10-09 09:57:57.569248'),(10,'auth','0005_alter_user_last_login_null','2024-10-09 09:57:57.620616'),(11,'auth','0006_require_contenttypes_0002','2024-10-09 09:57:57.625642'),(12,'auth','0007_alter_validators_add_error_messages','2024-10-09 09:57:57.632002'),(13,'auth','0008_alter_user_username_max_length','2024-10-09 09:57:57.686596'),(14,'auth','0009_alter_user_last_name_max_length','2024-10-09 09:57:57.736700'),(15,'auth','0010_alter_group_name_max_length','2024-10-09 09:57:57.755748'),(16,'auth','0011_update_proxy_permissions','2024-10-09 09:57:57.764534'),(17,'auth','0012_alter_user_first_name_max_length','2024-10-09 09:57:57.818893'),(18,'myapp','0001_initial','2024-10-09 09:57:57.832649'),(19,'sessions','0001_initial','2024-10-09 09:57:57.853704'),(20,'myapp','0002_mydata','2024-10-09 10:30:22.702998'),(21,'myapp','0003_delete_profetion_alter_mydata_options_and_more','2024-10-09 17:12:33.171268'),(22,'myapp','0004_rename_adress_mydata_address_mydata_education','2024-10-09 17:17:34.797551'),(23,'myapp','0005_links_alter_mydata_options','2024-10-09 17:23:51.372918'),(24,'myapp','0006_experience','2024-10-09 17:37:32.818818'),(25,'myapp','0007_experience_name','2024-10-09 17:40:51.686872'),(26,'myapp','0008_my_skill','2024-10-09 17:51:31.695745'),(27,'myapp','0009_code_editor_hobbies_language_soft_skill_and_more','2024-10-10 10:49:44.777488'),(28,'myapp','0010_alter_about_domain','2024-10-10 10:51:46.405089'),(29,'myapp','0011_rename_about_about_about','2024-10-10 11:03:22.865560'),(30,'myapp','0012_about_about_resume_about_resume_and_more','2024-10-10 11:38:32.373971'),(31,'myapp','0013_experience_profetion','2024-10-10 11:48:59.446448'),(32,'myapp','0014_rename_profetion_experience_position','2024-10-10 11:50:33.952938'),(33,'myapp','0015_rename_education_mydata_high_education','2024-10-10 17:13:32.860780'),(34,'myapp','0016_education','2024-10-10 17:25:34.262531'),(35,'myapp','0017_alter_education_std','2024-10-10 17:33:33.768403'),(36,'myapp','0018_remove_education_degree_alter_education_percentage','2024-10-10 17:39:44.492787'),(37,'myapp','0019_alter_education_options_alter_education_branch','2024-10-10 17:51:31.438722'),(38,'myapp','0020_links_icon','2024-10-10 19:00:28.849676'),(39,'myapp','0021_remove_links_icon_links_icon','2024-10-10 19:06:56.881835'),(40,'myapp','0022_rename_photo_mydata_background_img_and_more','2024-10-11 11:37:34.883653');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('xghjl9dg2c3v0zdnush82z7i7xztoc9v','.eJxVjMsOwiAUBf-FtSFAebp0328g9_KQqoGktCvjv0uTLnR7Zua8iYd9K37vafVLJFfCyeV3QwjPVA8QH1DvjYZWt3VBeij0pJ3OLabX7XT_Dgr0MmrtDJtY5lGrrILONoIRWseEAdMklbBMCgeWcQDlEkI2EjgMzyKOgny-46A4lA:1syTkF:nM6nLfXZLuS32InpAskhOr4kiLiFVlCHXlJnJCh0QZ8','2024-10-23 10:16:39.295941'),('yxt6fwwecb0o7oed9lqqaphu671xt8ou','.eJxVjMsOwiAUBf-FtSFAebp0328g9_KQqoGktCvjv0uTLnR7Zua8iYd9K37vafVLJFfCyeV3QwjPVA8QH1DvjYZWt3VBeij0pJ3OLabX7XT_Dgr0MmrtDJtY5lGrrILONoIRWseEAdMklbBMCgeWcQDlEkI2EjgMzyKOgny-46A4lA:1syqVl:2RmhtGsN5nbWG4B2N9n5LMcw9y13HyMSluUd872ltec','2024-10-24 10:35:13.712916');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_about`
--

DROP TABLE IF EXISTS `myapp_about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_about` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `about` longtext NOT NULL,
  `profile` varchar(50) NOT NULL,
  `domain` varchar(50) DEFAULT NULL,
  `high_education` varchar(50) NOT NULL,
  `name_id` bigint NOT NULL,
  `about_resume` longtext,
  `resume` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_about_name_id_7f193b2d_fk_myapp_mydata_id` (`name_id`),
  CONSTRAINT `myapp_about_name_id_7f193b2d_fk_myapp_mydata_id` FOREIGN KEY (`name_id`) REFERENCES `myapp_mydata` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_about`
--

LOCK TABLES `myapp_about` WRITE;
/*!40000 ALTER TABLE `myapp_about` DISABLE KEYS */;
INSERT INTO `myapp_about` VALUES (2,'I am B.sc computer science student from Shivaji\r\nUniversity, Passianate about problem-solving skill and\r\ntake new challenges every time. And I always ready to\r\nlearn new things and how it work.','Python Developer','-----','B.sc Computer Science',1,'The above all the information is true and correct to\r\nthe my best of knowledge.','media/myphoto/OMKAR_ANGAJ.pdf');
/*!40000 ALTER TABLE `myapp_about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_code_editor`
--

DROP TABLE IF EXISTS `myapp_code_editor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_code_editor` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `editor` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_code_editor`
--

LOCK TABLES `myapp_code_editor` WRITE;
/*!40000 ALTER TABLE `myapp_code_editor` DISABLE KEYS */;
INSERT INTO `myapp_code_editor` VALUES (1,'Vs_Code'),(2,'PyCharm'),(3,'IDLE'),(4,'Dev c++');
/*!40000 ALTER TABLE `myapp_code_editor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_education`
--

DROP TABLE IF EXISTS `myapp_education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_education` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `college` varchar(50) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `std` varchar(50) NOT NULL,
  `first_year` varchar(4) NOT NULL,
  `final_year` varchar(4) NOT NULL,
  `grade` varchar(5) NOT NULL,
  `percentage` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_education`
--

LOCK TABLES `myapp_education` WRITE;
/*!40000 ALTER TABLE `myapp_education` DISABLE KEYS */;
INSERT INTO `myapp_education` VALUES (1,'Sadashivrao Mandlik Mahavidyalay','Science','Bachelor of Science','2020','2023','A+',78.48),(3,'Shivraj Jr.College Murgud','Science','Higher Secondary School','2019','2020','||',53.38),(4,'Shivraj Vidyalaya Murgud','-----','Secondary School','2017','2018','First',70);
/*!40000 ALTER TABLE `myapp_education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_experience`
--

DROP TABLE IF EXISTS `myapp_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_experience` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `experience` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `job_role` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `name_id` bigint DEFAULT NULL,
  `Work_experience` longtext,
  `joining_date` varchar(100) DEFAULT NULL,
  `resignation_date` varchar(100) DEFAULT NULL,
  `Position` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_experience_name_id_ba991610_fk_myapp_mydata_id` (`name_id`),
  CONSTRAINT `myapp_experience_name_id_ba991610_fk_myapp_mydata_id` FOREIGN KEY (`name_id`) REFERENCES `myapp_mydata` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_experience`
--

LOCK TABLES `myapp_experience` WRITE;
/*!40000 ALTER TABLE `myapp_experience` DISABLE KEYS */;
INSERT INTO `myapp_experience` VALUES (1,'Fresher','-----','-----','-----',1,NULL,'-----','-----','-----');
/*!40000 ALTER TABLE `myapp_experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_hobbies`
--

DROP TABLE IF EXISTS `myapp_hobbies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_hobbies` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `hobbie` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_hobbies`
--

LOCK TABLES `myapp_hobbies` WRITE;
/*!40000 ALTER TABLE `myapp_hobbies` DISABLE KEYS */;
INSERT INTO `myapp_hobbies` VALUES (1,'Driving'),(2,'Swimming'),(3,'Learning new things');
/*!40000 ALTER TABLE `myapp_hobbies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_language`
--

DROP TABLE IF EXISTS `myapp_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_language` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `language` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_language`
--

LOCK TABLES `myapp_language` WRITE;
/*!40000 ALTER TABLE `myapp_language` DISABLE KEYS */;
INSERT INTO `myapp_language` VALUES (1,'Marathi'),(2,'Hindi'),(3,'English');
/*!40000 ALTER TABLE `myapp_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_links`
--

DROP TABLE IF EXISTS `myapp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_links` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `link` varchar(200) NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_links`
--

LOCK TABLES `myapp_links` WRITE;
/*!40000 ALTER TABLE `myapp_links` DISABLE KEYS */;
INSERT INTO `myapp_links` VALUES (1,'Github','https://github.com/omangaj','fa-brands fa-github'),(2,'Linkedin','https://www.linkedin.com/in/omkar-angaj-4aaa98319/','fa-brands fa-linkedin'),(3,'Instagram','https://www.instagram.com/omi____03/','fa-brands fa-instagram'),(4,'Facebook','https://www.facebook.com/omkar.angaj.3','fa-brands fa-facebook');
/*!40000 ALTER TABLE `myapp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_my_skill`
--

DROP TABLE IF EXISTS `myapp_my_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_my_skill` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `skill_name` varchar(100) NOT NULL,
  `skill_percentage` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_my_skill`
--

LOCK TABLES `myapp_my_skill` WRITE;
/*!40000 ALTER TABLE `myapp_my_skill` DISABLE KEYS */;
INSERT INTO `myapp_my_skill` VALUES (1,'Python',85),(2,'HTML',80),(3,'CSS',70),(4,'Django',80);
/*!40000 ALTER TABLE `myapp_my_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_mydata`
--

DROP TABLE IF EXISTS `myapp_mydata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_mydata` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `background_img` varchar(100) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `address` varchar(200) NOT NULL,
  `profetion` varchar(150) DEFAULT NULL,
  `high_education` varchar(200) DEFAULT NULL,
  `profile_img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_mydata`
--

LOCK TABLES `myapp_mydata` WRITE;
/*!40000 ALTER TABLE `myapp_mydata` DISABLE KEYS */;
INSERT INTO `myapp_mydata` VALUES (1,'Omkar Ananda Angaj','media/myphoto/IMG_0648_P88Zvsj.png','07709172848','omkarangaj2018@gmail.com','337,at-devale galli,chimgaon ,tal-kagal,dist-kolhapur 416219','Student','B.sc Computer Science','media/myphoto/om.jpg');
/*!40000 ALTER TABLE `myapp_mydata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myapp_soft_skill`
--

DROP TABLE IF EXISTS `myapp_soft_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myapp_soft_skill` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `soft_skill` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myapp_soft_skill`
--

LOCK TABLES `myapp_soft_skill` WRITE;
/*!40000 ALTER TABLE `myapp_soft_skill` DISABLE KEYS */;
INSERT INTO `myapp_soft_skill` VALUES (1,'Problem-solving'),(2,'Teamwork'),(3,'Learner'),(4,'Hard-work');
/*!40000 ALTER TABLE `myapp_soft_skill` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-21 11:54:17
