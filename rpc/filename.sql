-- MySQL dump 10.16  Distrib 10.1.35-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: upt_mysql_db
-- ------------------------------------------------------
-- Server version	10.1.35-MariaDB-1

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
-- Table structure for table `agent_agent`
--

DROP TABLE IF EXISTS `agent_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agent_agent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `finger` longtext NOT NULL,
  `nom` varchar(45) NOT NULL,
  `post_nom` varchar(45) NOT NULL,
  `pre_nom` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent_agent`
--

LOCK TABLES `agent_agent` WRITE;
/*!40000 ALTER TABLE `agent_agent` DISABLE KEYS */;
/*!40000 ALTER TABLE `agent_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agent_presencesag`
--

DROP TABLE IF EXISTS `agent_presencesag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agent_presencesag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jour` date NOT NULL,
  `arrivee` tinyint(1) NOT NULL,
  `depart` tinyint(1) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `heure` time(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `agent_presencesag_agent_id_7dfdffa6_fk_agent_agent_id` (`agent_id`),
  CONSTRAINT `agent_presencesag_agent_id_7dfdffa6_fk_agent_agent_id` FOREIGN KEY (`agent_id`) REFERENCES `agent_agent` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent_presencesag`
--

LOCK TABLES `agent_presencesag` WRITE;
/*!40000 ALTER TABLE `agent_presencesag` DISABLE KEYS */;
/*!40000 ALTER TABLE `agent_presencesag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add agent',7,'add_agent'),(26,'Can change agent',7,'change_agent'),(27,'Can delete agent',7,'delete_agent'),(28,'Can view agent',7,'view_agent'),(29,'Can add presencesAg',8,'add_presencesag'),(30,'Can change presencesAg',8,'change_presencesag'),(31,'Can delete presencesAg',8,'delete_presencesag'),(32,'Can view presencesAg',8,'view_presencesag'),(33,'Can add enseignant',9,'add_enseignant'),(34,'Can change enseignant',9,'change_enseignant'),(35,'Can delete enseignant',9,'delete_enseignant'),(36,'Can view enseignant',9,'view_enseignant'),(37,'Can add cours',10,'add_cours'),(38,'Can change cours',10,'change_cours'),(39,'Can delete cours',10,'delete_cours'),(40,'Can view cours',10,'view_cours'),(41,'Can add etudiant',11,'add_etudiant'),(42,'Can change etudiant',11,'change_etudiant'),(43,'Can delete etudiant',11,'delete_etudiant'),(44,'Can view etudiant',11,'view_etudiant'),(45,'Can add presencesEt',12,'add_presenceset'),(46,'Can change presencesEt',12,'change_presenceset'),(47,'Can delete presencesEt',12,'delete_presenceset'),(48,'Can view presencesEt',12,'view_presenceset'),(49,'Can add examen',13,'add_examen'),(50,'Can change examen',13,'change_examen'),(51,'Can delete examen',13,'delete_examen'),(52,'Can view examen',13,'view_examen');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$120000$SKX7sBBf08rW$1vZk9iYcJsKunUMpoOF/UvxgNxw4IG9hAdimfr9f+j4=','2019-01-02 20:30:10.110818',1,'premices','','','premices.tuvere@gmail.com',1,1,'2019-01-01 00:09:16.848932');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cours_cours`
--

DROP TABLE IF EXISTS `cours_cours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cours_cours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intitule` varchar(45) NOT NULL,
  `volume` int(11) NOT NULL,
  `enseignant_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cours_cours_enseignant_id_c1d624c1_fk_cours_enseignant_id` (`enseignant_id`),
  CONSTRAINT `cours_cours_enseignant_id_c1d624c1_fk_cours_enseignant_id` FOREIGN KEY (`enseignant_id`) REFERENCES `cours_enseignant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cours_cours`
--

LOCK TABLES `cours_cours` WRITE;
/*!40000 ALTER TABLE `cours_cours` DISABLE KEYS */;
/*!40000 ALTER TABLE `cours_cours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cours_enseignant`
--

DROP TABLE IF EXISTS `cours_enseignant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cours_enseignant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `finger` longtext NOT NULL,
  `nom` longtext NOT NULL,
  `post_nom` longtext NOT NULL,
  `pre_nom` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cours_enseignant`
--

LOCK TABLES `cours_enseignant` WRITE;
/*!40000 ALTER TABLE `cours_enseignant` DISABLE KEYS */;
/*!40000 ALTER TABLE `cours_enseignant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cours_etudiant`
--

DROP TABLE IF EXISTS `cours_etudiant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cours_etudiant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `finger` longtext NOT NULL,
  `nom` varchar(45) NOT NULL,
  `post_nom` varchar(45) NOT NULL,
  `pre_nom` varchar(45) NOT NULL,
  `faculte` varchar(45) NOT NULL,
  `promotion` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cours_etudiant`
--

LOCK TABLES `cours_etudiant` WRITE;
/*!40000 ALTER TABLE `cours_etudiant` DISABLE KEYS */;
/*!40000 ALTER TABLE `cours_etudiant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cours_etudiant_cours_suivis`
--

DROP TABLE IF EXISTS `cours_etudiant_cours_suivis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cours_etudiant_cours_suivis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `etudiant_id` int(11) NOT NULL,
  `cours_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cours_etudiant_cours_suivis_etudiant_id_cours_id_1906634a_uniq` (`etudiant_id`,`cours_id`),
  KEY `cours_etudiant_cours_suivis_cours_id_a28c0682_fk_cours_cours_id` (`cours_id`),
  CONSTRAINT `cours_etudiant_cours_etudiant_id_5412b266_fk_cours_etu` FOREIGN KEY (`etudiant_id`) REFERENCES `cours_etudiant` (`id`),
  CONSTRAINT `cours_etudiant_cours_suivis_cours_id_a28c0682_fk_cours_cours_id` FOREIGN KEY (`cours_id`) REFERENCES `cours_cours` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cours_etudiant_cours_suivis`
--

LOCK TABLES `cours_etudiant_cours_suivis` WRITE;
/*!40000 ALTER TABLE `cours_etudiant_cours_suivis` DISABLE KEYS */;
/*!40000 ALTER TABLE `cours_etudiant_cours_suivis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cours_presenceset`
--

DROP TABLE IF EXISTS `cours_presenceset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cours_presenceset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jour` date NOT NULL,
  `debut` tinyint(1) NOT NULL,
  `fin` tinyint(1) NOT NULL,
  `pause` tinyint(1) NOT NULL,
  `etudiant_id` int(11) NOT NULL,
  `heure` time(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cours_presenceset_etudiant_id_2951a19e_fk_cours_etudiant_id` (`etudiant_id`),
  CONSTRAINT `cours_presenceset_etudiant_id_2951a19e_fk_cours_etudiant_id` FOREIGN KEY (`etudiant_id`) REFERENCES `cours_etudiant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cours_presenceset`
--

LOCK TABLES `cours_presenceset` WRITE;
/*!40000 ALTER TABLE `cours_presenceset` DISABLE KEYS */;
/*!40000 ALTER TABLE `cours_presenceset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'agent','agent'),(8,'agent','presencesag'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(10,'cours','cours'),(9,'cours','enseignant'),(11,'cours','etudiant'),(12,'cours','presenceset'),(13,'examen','examen'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-12-31 15:32:49.479598'),(2,'auth','0001_initial','2018-12-31 15:33:01.081967'),(3,'admin','0001_initial','2018-12-31 15:33:03.570387'),(4,'admin','0002_logentry_remove_auto_add','2018-12-31 15:33:03.640020'),(5,'admin','0003_logentry_add_action_flag_choices','2018-12-31 15:33:03.705215'),(6,'agent','0001_initial','2018-12-31 15:33:05.511946'),(7,'agent','0002_auto_20181231_1532','2018-12-31 15:33:06.750556'),(8,'contenttypes','0002_remove_content_type_name','2018-12-31 15:33:08.089101'),(9,'auth','0002_alter_permission_name_max_length','2018-12-31 15:33:09.105921'),(10,'auth','0003_alter_user_email_max_length','2018-12-31 15:33:10.065276'),(11,'auth','0004_alter_user_username_opts','2018-12-31 15:33:10.135982'),(12,'auth','0005_alter_user_last_login_null','2018-12-31 15:33:11.579457'),(13,'auth','0006_require_contenttypes_0002','2018-12-31 15:33:11.657588'),(14,'auth','0007_alter_validators_add_error_messages','2018-12-31 15:33:11.724508'),(15,'auth','0008_alter_user_username_max_length','2018-12-31 15:33:13.184754'),(16,'auth','0009_alter_user_last_name_max_length','2018-12-31 15:33:14.899835'),(17,'sessions','0001_initial','2018-12-31 15:33:16.659203'),(18,'agent','0003_agent_presencesag','2018-12-31 15:35:29.341308'),(19,'cours','0001_initial','2018-12-31 15:37:36.110901'),(20,'examen','0001_initial','2018-12-31 16:07:13.065663'),(21,'agent','0004_auto_20181231_1714','2018-12-31 17:15:03.904780'),(22,'cours','0002_auto_20181231_1714','2018-12-31 17:15:08.314415'),(23,'cours','0003_auto_20181231_1731','2018-12-31 17:31:11.983647'),(24,'cours','0004_presenceset_heure','2019-01-01 00:41:35.343646'),(25,'agent','0005_presencesag_heure','2019-01-01 00:46:02.510498'),(26,'examen','0002_examen_heure','2019-01-01 00:46:03.225665');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('eks8vds7xy3vzm6zc3198jz2vqkrzyy8','N2M0MzRhZjFmZWE5YTg4ZjJkOTIwYzYzZWQzNzg4MGI5ZTA0MjVlNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMDM0N2Q3M2RmMTc5ODRlYjk0NmJiZjViMzMxMzA0NGZhZTM2OGNmIn0=','2019-01-16 20:30:10.174093');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examen_examen`
--

DROP TABLE IF EXISTS `examen_examen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examen_examen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jour` date NOT NULL,
  `duree` int(11) NOT NULL,
  `cours_id` int(11) NOT NULL,
  `etudiant_id` int(11) NOT NULL,
  `heure` time(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `examen_examen_cours_id_3e250f6c_fk_cours_cours_id` (`cours_id`),
  KEY `examen_examen_etudiant_id_591a1b9d_fk_cours_etudiant_id` (`etudiant_id`),
  CONSTRAINT `examen_examen_cours_id_3e250f6c_fk_cours_cours_id` FOREIGN KEY (`cours_id`) REFERENCES `cours_cours` (`id`),
  CONSTRAINT `examen_examen_etudiant_id_591a1b9d_fk_cours_etudiant_id` FOREIGN KEY (`etudiant_id`) REFERENCES `cours_etudiant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examen_examen`
--

LOCK TABLES `examen_examen` WRITE;
/*!40000 ALTER TABLE `examen_examen` DISABLE KEYS */;
/*!40000 ALTER TABLE `examen_examen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_details`
--

DROP TABLE IF EXISTS `users_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `post_nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `finger` longtext NOT NULL,
  `faculte` varchar(100) NOT NULL,
  `promotion` varchar(100) NOT NULL,
  `option__` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_details`
--

LOCK TABLES `users_details` WRITE;
/*!40000 ALTER TABLE `users_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-08 15:01:04
