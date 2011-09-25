 

###################
# Dumping table `attachments`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `container_id` int(11) NOT NULL DEFAULT '0',
  `container_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disk_filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `digest` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `downloads` int(11) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_attachments_on_container_id_and_container_type` (`container_id`,`container_type`),
  KEY `index_attachments_on_author_id` (`author_id`),
  KEY `index_attachments_on_created_on` (`created_on`)
) ENGINE=InnoDB AUTO_INCREMENT=6996 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:46

INSERT INTO `attachments` VALUES ('1','2','WikiPage','Step6.png','100329134606_Step6.png','7933','image/png','1abe5a5878a96502e4b73912c92b5926','0','3','2010-03-29 13:46:06','');
INSERT INTO `attachments` VALUES ('2','2','WikiPage','Step7.png','100329134606_Step7.png','8721','image/png','876ddd12e94a7f1e0a89459afbb7e3e3','0','3','2010-03-29 13:46:06','');
INSERT INTO `attachments` VALUES ('3','2','WikiPage','Step8.png','100329134606_Step8.png','13760','image/png','2c281b37c8322075c81e4f4056561996','0','3','2010-03-29 13:46:06','');
INSERT INTO `attachments` VALUES ('4','2','WikiPage','Step1.png','100329134606_Step1.png','7254','image/png','eca9d65c5ad00d0e20fb11a9388aa01a','0','3','2010-03-29 13:46:06','');
INSERT INTO `attachments` VALUES ('5','2','WikiPage','Step2.png','100329134606_Step2.png','10350','image/png','2cb20aeb0195eca551c4d8a0af7b2af9','0','3','2010-03-29 13:46:06','');
INSERT INTO `attachments` VALUES ('6','2','WikiPage','Step3.png','100329134606_Step3.png','6513','image/png','b43fec05ceeb8e941836ed801473edfc','0','3','2010-03-29 13:46:06','');
INSERT INTO `attachments` VALUES ('7','2','WikiPage','Step4.png','100329134606_Step4.png','8517','image/png','5b315c0635606e64901a07c2779a94b0','0','3','2010-03-29 13:46:06','');
INSERT INTO `attachments` VALUES ('8','2','WikiPage','Step5.png','100329134606_Step5.png','12300','image/png','28579c6834ebae9e0516c0b09244f348','0','3','2010-03-29 13:46:06','');


###################
# Dumping table `auth_sources`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `auth_sources`
--

DROP TABLE IF EXISTS `auth_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `host` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `account` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `base_dn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attr_login` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attr_firstname` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attr_lastname` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attr_mail` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `onthefly_register` tinyint(1) NOT NULL DEFAULT '0',
  `tls` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_auth_sources_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:46



###################
# Dumping table `boards`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `boards`
--

DROP TABLE IF EXISTS `boards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT '1',
  `topics_count` int(11) NOT NULL DEFAULT '0',
  `messages_count` int(11) NOT NULL DEFAULT '0',
  `last_message_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `boards_project_id` (`project_id`),
  KEY `index_boards_on_last_message_id` (`last_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=352 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:46



###################
# Dumping table `changes`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `changes`
--

DROP TABLE IF EXISTS `changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `changeset_id` int(11) NOT NULL,
  `action` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` text COLLATE utf8_unicode_ci NOT NULL,
  `from_path` text COLLATE utf8_unicode_ci,
  `from_revision` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `revision` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `changesets_changeset_id` (`changeset_id`)
) ENGINE=InnoDB AUTO_INCREMENT=634353 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:46

INSERT INTO `changes` VALUES ('498040','46239','A','README',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('500294','46414','M','README',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('500295','46415','M','README',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('500296','46416','A','file2.txt',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('500297','46417','A','file3.txt',NULL,NULL,NULL,NULL);
INSERT INTO `changes` VALUES ('500298','46418','M','file3.txt',NULL,NULL,NULL,NULL);


###################
# Dumping table `changesets`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `changesets`
--

DROP TABLE IF EXISTS `changesets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changesets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `repository_id` int(11) NOT NULL,
  `revision` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `committer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `committed_on` datetime NOT NULL,
  `comments` text COLLATE utf8_unicode_ci,
  `commit_date` date DEFAULT NULL,
  `scmid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `changesets_repos_rev` (`repository_id`,`revision`),
  KEY `index_changesets_on_user_id` (`user_id`),
  KEY `index_changesets_on_repository_id` (`repository_id`),
  KEY `index_changesets_on_committed_on` (`committed_on`),
  KEY `changesets_repos_scmid` (`repository_id`,`scmid`)
) ENGINE=InnoDB AUTO_INCREMENT=54733 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47

INSERT INTO `changesets` VALUES ('46239','437','6a3b8b2d8d9528fcac4b86250fb6f400e8abadd0','Brad Rushworth <brad@bitbot.com.au>','2011-06-19 22:07:44','Initial commit','2011-06-19','6a3b8b2d8d9528fcac4b86250fb6f400e8abadd0','3');
INSERT INTO `changesets` VALUES ('46414','437','d8f51954c31f624467f4a5d52aa546730f6b0719','Brad Rushworth <brad@bitbot.com.au>','2011-06-21 22:01:47','This is my comment.','2011-06-21','d8f51954c31f624467f4a5d52aa546730f6b0719','3');
INSERT INTO `changesets` VALUES ('46415','437','266da668156f48072a4cb7d4075a03593bc3efc6','Brad Rushworth <brad@bitbot.com.au>','2011-06-21 22:04:31','This is commit two.','2011-06-21','266da668156f48072a4cb7d4075a03593bc3efc6','3');
INSERT INTO `changesets` VALUES ('46416','437','1cd89709c43ff634b84f775bbe268bd5417c7674','Brad Rushworth <brad@bitbot.com.au>','2011-06-21 22:06:11','Commit 3.','2011-06-21','1cd89709c43ff634b84f775bbe268bd5417c7674','3');
INSERT INTO `changesets` VALUES ('46417','437','352e8dc588b7cefbdf16fa3969bec92ac4ee74da','Brad Rushworth <brad@bitbot.com.au>','2011-06-21 22:31:40','File 3 commited.','2011-06-21','352e8dc588b7cefbdf16fa3969bec92ac4ee74da','3');
INSERT INTO `changesets` VALUES ('46418','437','038b5f60a494476d93d6ce0ba2f3ad364b14b207','Brad Rushworth <brad@bitbot.com.au>','2011-06-21 22:32:46','Adding stuff to file 3.','2011-06-21','038b5f60a494476d93d6ce0ba2f3ad364b14b207','3');


###################
# Dumping table `changesets_issues`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `changesets_issues`
--

DROP TABLE IF EXISTS `changesets_issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changesets_issues` (
  `changeset_id` int(11) NOT NULL,
  `issue_id` int(11) NOT NULL,
  UNIQUE KEY `changesets_issues_ids` (`changeset_id`,`issue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47



###################
# Dumping table `comments`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commented_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `commented_id` int(11) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `comments` text COLLATE utf8_unicode_ci,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_commented_id_and_commented_type` (`commented_id`,`commented_type`),
  KEY `index_comments_on_author_id` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=314 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47



###################
# Dumping table `custom_fields`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `field_format` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `possible_values` text COLLATE utf8_unicode_ci,
  `regexp` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT '0',
  `max_length` int(11) NOT NULL DEFAULT '0',
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_for_all` tinyint(1) NOT NULL DEFAULT '0',
  `is_filter` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT '1',
  `searchable` tinyint(1) DEFAULT '0',
  `default_value` text COLLATE utf8_unicode_ci,
  `editable` tinyint(1) DEFAULT '1',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_custom_fields_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47

INSERT INTO `custom_fields` VALUES ('1','UserCustomField','Country','string','--- []\n\n','','3','20','1','0','0','1','0','','1','1');
INSERT INTO `custom_fields` VALUES ('2','IssueCustomField','Sequencing','int','--- []\n\n','','0','0','0','0','1','1','0','','1','1');
INSERT INTO `custom_fields` VALUES ('3','UserCustomField','Company','string','--- []\n\n','','0','200','0','0','0','2','0','','1','1');
INSERT INTO `custom_fields` VALUES ('4','UserCustomField','Website','string','--- []\n\n','https?://([-\\w\\.]+)+(:\\d+)?(/([\\w/_\\.]*(\\?\\S+)?)?)?','0','0','0','0','0','3','0','','1','1');
INSERT INTO `custom_fields` VALUES ('5','ProjectCustomField','Project Type','list','--- \n- Personal Use\n- Team Collaboration\n- Client Collaboration\n- FOSS\n- Redmine Trial\n- Other\n','','0','0','0','0','0','1','1','','1','1');


###################
# Dumping table `custom_fields_projects`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `custom_fields_projects`
--

DROP TABLE IF EXISTS `custom_fields_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields_projects` (
  `custom_field_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  KEY `index_custom_fields_projects_on_custom_field_id_and_project_id` (`custom_field_id`,`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47



###################
# Dumping table `custom_fields_trackers`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `custom_fields_trackers`
--

DROP TABLE IF EXISTS `custom_fields_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields_trackers` (
  `custom_field_id` int(11) NOT NULL DEFAULT '0',
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  KEY `index_custom_fields_trackers_on_custom_field_id_and_tracker_id` (`custom_field_id`,`tracker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47

INSERT INTO `custom_fields_trackers` VALUES ('2','1');
INSERT INTO `custom_fields_trackers` VALUES ('2','2');
INSERT INTO `custom_fields_trackers` VALUES ('2','3');
INSERT INTO `custom_fields_trackers` VALUES ('2','4');


###################
# Dumping table `custom_values`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `custom_values`
--

DROP TABLE IF EXISTS `custom_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customized_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `customized_id` int(11) NOT NULL DEFAULT '0',
  `custom_field_id` int(11) NOT NULL DEFAULT '0',
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `custom_values_customized` (`customized_type`,`customized_id`),
  KEY `index_custom_values_on_custom_field_id` (`custom_field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18489 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47

INSERT INTO `custom_values` VALUES ('161','Principal','3','1','Australia');
INSERT INTO `custom_values` VALUES ('1594','Principal','3','3','BitBot Software Pty Ltd');
INSERT INTO `custom_values` VALUES ('1597','Principal','3','4','http://brad.bitbot.com.au');
INSERT INTO `custom_values` VALUES ('6753','Principal','4','3','');
INSERT INTO `custom_values` VALUES ('6754','Principal','4','4','');
INSERT INTO `custom_values` VALUES ('10543','Project','2','5','Personal Use');
INSERT INTO `custom_values` VALUES ('10545','Principal','4','1','Australia');


###################
# Dumping table `documents`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_project_id` (`project_id`),
  KEY `index_documents_on_category_id` (`category_id`),
  KEY `index_documents_on_created_on` (`created_on`)
) ENGINE=InnoDB AUTO_INCREMENT=684 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47



###################
# Dumping table `enabled_modules`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `enabled_modules`
--

DROP TABLE IF EXISTS `enabled_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enabled_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `enabled_modules_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28940 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47

INSERT INTO `enabled_modules` VALUES ('9','2','issue_tracking');
INSERT INTO `enabled_modules` VALUES ('10','2','time_tracking');
INSERT INTO `enabled_modules` VALUES ('11','2','news');
INSERT INTO `enabled_modules` VALUES ('12','2','documents');
INSERT INTO `enabled_modules` VALUES ('13','2','files');
INSERT INTO `enabled_modules` VALUES ('14','2','wiki');
INSERT INTO `enabled_modules` VALUES ('15','2','repository');
INSERT INTO `enabled_modules` VALUES ('16','2','boards');
INSERT INTO `enabled_modules` VALUES ('3159','2','calendar');
INSERT INTO `enabled_modules` VALUES ('3160','2','gantt');


###################
# Dumping table `enumerations`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `enumerations`
--

DROP TABLE IF EXISTS `enumerations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enumerations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `position` int(11) DEFAULT '1',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `project_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_enumerations_on_project_id` (`project_id`),
  KEY `index_enumerations_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47

INSERT INTO `enumerations` VALUES ('1','User documentation','1','0','DocumentCategory','1',NULL,NULL);
INSERT INTO `enumerations` VALUES ('2','Technical documentation','2','0','DocumentCategory','1',NULL,NULL);
INSERT INTO `enumerations` VALUES ('3','Low','1','0','IssuePriority','1',NULL,NULL);
INSERT INTO `enumerations` VALUES ('4','Normal','2','1','IssuePriority','1',NULL,NULL);
INSERT INTO `enumerations` VALUES ('5','High','3','0','IssuePriority','1',NULL,NULL);
INSERT INTO `enumerations` VALUES ('6','Urgent','4','0','IssuePriority','1',NULL,NULL);
INSERT INTO `enumerations` VALUES ('7','Immediate','5','0','IssuePriority','1',NULL,NULL);
INSERT INTO `enumerations` VALUES ('8','Design','1','0','TimeEntryActivity','1',NULL,NULL);
INSERT INTO `enumerations` VALUES ('9','Development','2','0','TimeEntryActivity','1',NULL,NULL);
INSERT INTO `enumerations` VALUES ('10','Administrative','3','0','TimeEntryActivity','1',NULL,NULL);
INSERT INTO `enumerations` VALUES ('56','Planning','49','0','TimeEntryActivity','1',NULL,NULL);


###################
# Dumping table `gitosis_public_keys`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `gitosis_public_keys`
--

DROP TABLE IF EXISTS `gitosis_public_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gitosis_public_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `key` text,
  `active` tinyint(1) DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47



###################
# Dumping table `groups_users`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `groups_users`
--

DROP TABLE IF EXISTS `groups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_users` (
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  UNIQUE KEY `groups_users_ids` (`group_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47

INSERT INTO `groups_users` VALUES ('5','3');


###################
# Dumping table `issue_categories`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `issue_categories`
--

DROP TABLE IF EXISTS `issue_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `assigned_to_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `issue_categories_project_id` (`project_id`),
  KEY `index_issue_categories_on_assigned_to_id` (`assigned_to_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1936 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47



###################
# Dumping table `issue_relations`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `issue_relations`
--

DROP TABLE IF EXISTS `issue_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issue_from_id` int(11) NOT NULL,
  `issue_to_id` int(11) NOT NULL,
  `relation_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `delay` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_issue_relations_on_issue_from_id` (`issue_from_id`),
  KEY `index_issue_relations_on_issue_to_id` (`issue_to_id`)
) ENGINE=InnoDB AUTO_INCREMENT=841 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47



###################
# Dumping table `issue_statuses`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `issue_statuses`
--

DROP TABLE IF EXISTS `issue_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_closed` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT '1',
  `default_done_ratio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_issue_statuses_on_position` (`position`),
  KEY `index_issue_statuses_on_is_closed` (`is_closed`),
  KEY `index_issue_statuses_on_is_default` (`is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47

INSERT INTO `issue_statuses` VALUES ('1','New','0','1','1',NULL);
INSERT INTO `issue_statuses` VALUES ('2','Assigned','0','0','2',NULL);
INSERT INTO `issue_statuses` VALUES ('3','Resolved','0','0','3',NULL);
INSERT INTO `issue_statuses` VALUES ('4','Approved','0','0','4',NULL);
INSERT INTO `issue_statuses` VALUES ('5','Closed','1','0','5',NULL);
INSERT INTO `issue_statuses` VALUES ('6','Rejected','1','0','6',NULL);


###################
# Dumping table `issues`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `due_date` date DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT '0',
  `assigned_to_id` int(11) DEFAULT NULL,
  `priority_id` int(11) NOT NULL DEFAULT '0',
  `fixed_version_id` int(11) DEFAULT NULL,
  `author_id` int(11) NOT NULL DEFAULT '0',
  `lock_version` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `done_ratio` int(11) NOT NULL DEFAULT '0',
  `estimated_hours` float DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `root_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `issues_project_id` (`project_id`),
  KEY `index_issues_on_status_id` (`status_id`),
  KEY `index_issues_on_category_id` (`category_id`),
  KEY `index_issues_on_assigned_to_id` (`assigned_to_id`),
  KEY `index_issues_on_fixed_version_id` (`fixed_version_id`),
  KEY `index_issues_on_tracker_id` (`tracker_id`),
  KEY `index_issues_on_priority_id` (`priority_id`),
  KEY `index_issues_on_author_id` (`author_id`),
  KEY `index_issues_on_created_on` (`created_on`),
  KEY `index_issues_on_root_id_and_lft_and_rgt` (`root_id`,`lft`,`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=31919 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47



###################
# Dumping table `journal_details`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `journal_details`
--

DROP TABLE IF EXISTS `journal_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journal_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journal_id` int(11) NOT NULL DEFAULT '0',
  `property` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `prop_key` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `old_value` text COLLATE utf8_unicode_ci,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `journal_details_journal_id` (`journal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71959 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47



###################
# Dumping table `journals`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `journals`
--

DROP TABLE IF EXISTS `journals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journalized_id` int(11) NOT NULL DEFAULT '0',
  `journalized_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `notes` text COLLATE utf8_unicode_ci,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `journals_journalized_id` (`journalized_id`,`journalized_type`),
  KEY `index_journals_on_user_id` (`user_id`),
  KEY `index_journals_on_journalized_id` (`journalized_id`),
  KEY `index_journals_on_created_on` (`created_on`)
) ENGINE=InnoDB AUTO_INCREMENT=60703 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47



###################
# Dumping table `member_roles`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `member_roles`
--

DROP TABLE IF EXISTS `member_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `inherited_from` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_member_roles_on_member_id` (`member_id`),
  KEY `index_member_roles_on_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8965 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47

INSERT INTO `member_roles` VALUES ('5','4','3',NULL);
INSERT INTO `member_roles` VALUES ('6187','4','4',NULL);
INSERT INTO `member_roles` VALUES ('6188','4','5',NULL);
INSERT INTO `member_roles` VALUES ('6','5','5',NULL);
INSERT INTO `member_roles` VALUES ('6182','4554','3',NULL);
INSERT INTO `member_roles` VALUES ('6183','4554','4',NULL);
INSERT INTO `member_roles` VALUES ('6189','4554','5',NULL);


###################
# Dumping table `members`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `mail_notification` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_members_on_user_id_and_project_id` (`user_id`,`project_id`),
  KEY `index_members_on_user_id` (`user_id`),
  KEY `index_members_on_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6585 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47

INSERT INTO `members` VALUES ('4','4','2','2010-03-27 00:19:57','0');
INSERT INTO `members` VALUES ('5','6','2','2010-03-29 13:08:01','0');
INSERT INTO `members` VALUES ('4554','3','2','2011-06-19 19:10:34','0');


###################
# Dumping table `messages`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `board_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8_unicode_ci,
  `author_id` int(11) DEFAULT NULL,
  `replies_count` int(11) NOT NULL DEFAULT '0',
  `last_reply_id` int(11) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `locked` tinyint(1) DEFAULT '0',
  `sticky` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `messages_board_id` (`board_id`),
  KEY `messages_parent_id` (`parent_id`),
  KEY `index_messages_on_last_reply_id` (`last_reply_id`),
  KEY `index_messages_on_author_id` (`author_id`),
  KEY `index_messages_on_created_on` (`created_on`)
) ENGINE=InnoDB AUTO_INCREMENT=1974 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47



###################
# Dumping table `news`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `summary` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `author_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `comments_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `news_project_id` (`project_id`),
  KEY `index_news_on_author_id` (`author_id`),
  KEY `index_news_on_created_on` (`created_on`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47



###################
# Dumping table `open_id_authentication_associations`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `open_id_authentication_associations`
--

DROP TABLE IF EXISTS `open_id_authentication_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_id_authentication_associations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issued` int(11) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assoc_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `server_url` blob,
  `secret` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47

INSERT INTO `open_id_authentication_associations` VALUES ('1','1315779665','1799','oida-1315779668040-1825990640','HMAC-SHA1','http://www.blogger.com/openid-server.g','¶ù~∫º\ZEE—⁄◊Bmnµ');
INSERT INTO `open_id_authentication_associations` VALUES ('2','1315779793','1208213','1315779787:gdUJM3N2isvB7WIZcqOA:c709525541','HMAC-SHA1','http://www.livejournal.com/openid/server.bml','˚fÈö\"9 aﬂ1Õáe*÷∂Uo');


###################
# Dumping table `open_id_authentication_nonces`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `open_id_authentication_nonces`
--

DROP TABLE IF EXISTS `open_id_authentication_nonces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_id_authentication_nonces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` int(11) NOT NULL,
  `server_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47

INSERT INTO `open_id_authentication_nonces` VALUES ('1','1315779817','http://www.livejournal.com/openid/server.bml','E5gZfM');


###################
# Dumping table `projects`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `homepage` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_projects_on_lft` (`lft`),
  KEY `index_projects_on_rgt` (`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=3307 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47

INSERT INTO `projects` VALUES ('2','Brads Private Test','This is my private testing project.','','0',NULL,'2010-03-27 00:19:57','2010-03-27 00:19:57','private-test','1','221','222');


###################
# Dumping table `projects_trackers`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `projects_trackers`
--

DROP TABLE IF EXISTS `projects_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_trackers` (
  `project_id` int(11) NOT NULL DEFAULT '0',
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `projects_trackers_unique` (`project_id`,`tracker_id`),
  KEY `projects_trackers_project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47

INSERT INTO `projects_trackers` VALUES ('2','1');
INSERT INTO `projects_trackers` VALUES ('2','2');
INSERT INTO `projects_trackers` VALUES ('2','3');
INSERT INTO `projects_trackers` VALUES ('2','4');


###################
# Dumping table `queries`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `queries`
--

DROP TABLE IF EXISTS `queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filters` text COLLATE utf8_unicode_ci,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `column_names` text COLLATE utf8_unicode_ci,
  `sort_criteria` text COLLATE utf8_unicode_ci,
  `group_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_queries_on_project_id` (`project_id`),
  KEY `index_queries_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=561 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47



###################
# Dumping table `repositories`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `repositories`
--

DROP TABLE IF EXISTS `repositories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repositories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `login` varchar(60) COLLATE utf8_unicode_ci DEFAULT '',
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `root_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path_encoding` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_encoding` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra_info` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_repositories_on_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=624 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47

INSERT INTO `repositories` VALUES ('437','2','/usr/local/git/repositories/private-test.git','','','/usr/local/git/repositories/private-test.git','Git',NULL,NULL,'--- \nbranches: \n  master: \n    last_scmid: 038b5f60a494476d93d6ce0ba2f3ad364b14b207\ndb_consistent: \n  ordering: 1\n');


###################
# Dumping table `roles`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `position` int(11) DEFAULT '1',
  `assignable` tinyint(1) DEFAULT '1',
  `builtin` int(11) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8_unicode_ci,
  `issues_visibility` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47

INSERT INTO `roles` VALUES ('1','Non member','1','1','1','--- \n- :add_project\n- :add_messages\n- :view_calendar\n- :view_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :comment_news\n- :browse_repository\n- :view_changesets\n- :view_wiki_pages\n- :view_wiki_edits\n- :edit_wiki_pages\n','default');
INSERT INTO `roles` VALUES ('2','Anonymous','2','1','2','--- \n- :view_calendar\n- :view_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :browse_repository\n- :view_changesets\n- :view_wiki_pages\n','default');
INSERT INTO `roles` VALUES ('3','Manager','3','1','0','--- \n- :add_project\n- :edit_project\n- :select_project_modules\n- :manage_members\n- :manage_versions\n- :add_subprojects\n- :delete_project\n- :manage_boards\n- :add_messages\n- :edit_messages\n- :edit_own_messages\n- :delete_messages\n- :delete_own_messages\n- :view_calendar\n- :manage_documents\n- :view_documents\n- :manage_files\n- :view_files\n- :view_gantt\n- :manage_categories\n- :view_issues\n- :add_issues\n- :edit_issues\n- :manage_issue_relations\n- :manage_subtasks\n- :set_issues_private\n- :set_own_issues_private\n- :add_issue_notes\n- :edit_issue_notes\n- :edit_own_issue_notes\n- :move_issues\n- :delete_issues\n- :manage_public_queries\n- :save_queries\n- :view_issue_watchers\n- :add_issue_watchers\n- :delete_issue_watchers\n- :manage_news\n- :comment_news\n- :manage_repository\n- :browse_repository\n- :view_changesets\n- :commit_access\n- :log_time\n- :view_time_entries\n- :edit_time_entries\n- :edit_own_time_entries\n- :manage_project_activities\n- :manage_wiki\n- :rename_wiki_pages\n- :delete_wiki_pages\n- :view_wiki_pages\n- :export_wiki_pages\n- :view_wiki_edits\n- :edit_wiki_pages\n- :delete_wiki_pages_attachments\n- :protect_wiki_pages\n','default');
INSERT INTO `roles` VALUES ('4','Developer','4','1','0','--- \n- :add_project\n- :manage_versions\n- :add_subprojects\n- :add_messages\n- :edit_own_messages\n- :view_calendar\n- :manage_documents\n- :view_documents\n- :manage_files\n- :view_files\n- :view_gantt\n- :manage_categories\n- :view_issues\n- :add_issues\n- :edit_issues\n- :manage_issue_relations\n- :manage_subtasks\n- :set_issues_private\n- :set_own_issues_private\n- :add_issue_notes\n- :edit_own_issue_notes\n- :manage_public_queries\n- :save_queries\n- :view_issue_watchers\n- :add_issue_watchers\n- :manage_news\n- :comment_news\n- :browse_repository\n- :view_changesets\n- :commit_access\n- :log_time\n- :view_time_entries\n- :edit_time_entries\n- :edit_own_time_entries\n- :manage_project_activities\n- :rename_wiki_pages\n- :delete_wiki_pages\n- :view_wiki_pages\n- :export_wiki_pages\n- :view_wiki_edits\n- :edit_wiki_pages\n- :delete_wiki_pages_attachments\n','default');
INSERT INTO `roles` VALUES ('5','Reporter','5','1','0','--- \n- :add_project\n- :add_messages\n- :edit_own_messages\n- :view_calendar\n- :view_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :manage_issue_relations\n- :manage_subtasks\n- :set_own_issues_private\n- :add_issue_notes\n- :edit_own_issue_notes\n- :save_queries\n- :view_issue_watchers\n- :add_issue_watchers\n- :comment_news\n- :browse_repository\n- :view_changesets\n- :log_time\n- :view_time_entries\n- :edit_own_time_entries\n- :view_wiki_pages\n- :export_wiki_pages\n- :view_wiki_edits\n- :edit_wiki_pages\n','default');
INSERT INTO `roles` VALUES ('6','Guest','6','1','0','--- \n- :add_project\n- :add_messages\n- :view_calendar\n- :view_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :comment_news\n- :view_wiki_pages\n- :export_wiki_pages\n- :view_wiki_edits\n','default');


###################
# Dumping table `schema_migrations`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47

INSERT INTO `schema_migrations` VALUES ('1');
INSERT INTO `schema_migrations` VALUES ('1-redmine_theme_changer');
INSERT INTO `schema_migrations` VALUES ('10');
INSERT INTO `schema_migrations` VALUES ('100');
INSERT INTO `schema_migrations` VALUES ('101');
INSERT INTO `schema_migrations` VALUES ('102');
INSERT INTO `schema_migrations` VALUES ('103');
INSERT INTO `schema_migrations` VALUES ('104');
INSERT INTO `schema_migrations` VALUES ('105');
INSERT INTO `schema_migrations` VALUES ('106');
INSERT INTO `schema_migrations` VALUES ('107');
INSERT INTO `schema_migrations` VALUES ('108');
INSERT INTO `schema_migrations` VALUES ('11');
INSERT INTO `schema_migrations` VALUES ('12');
INSERT INTO `schema_migrations` VALUES ('13');
INSERT INTO `schema_migrations` VALUES ('14');
INSERT INTO `schema_migrations` VALUES ('15');
INSERT INTO `schema_migrations` VALUES ('16');
INSERT INTO `schema_migrations` VALUES ('17');
INSERT INTO `schema_migrations` VALUES ('18');
INSERT INTO `schema_migrations` VALUES ('19');
INSERT INTO `schema_migrations` VALUES ('2');
INSERT INTO `schema_migrations` VALUES ('20');
INSERT INTO `schema_migrations` VALUES ('20090214190337');
INSERT INTO `schema_migrations` VALUES ('20090312172426');
INSERT INTO `schema_migrations` VALUES ('20090312194159');
INSERT INTO `schema_migrations` VALUES ('20090318181151');
INSERT INTO `schema_migrations` VALUES ('20090323224724');
INSERT INTO `schema_migrations` VALUES ('20090401221305');
INSERT INTO `schema_migrations` VALUES ('20090401231134');
INSERT INTO `schema_migrations` VALUES ('20090403001910');
INSERT INTO `schema_migrations` VALUES ('20090406161854');
INSERT INTO `schema_migrations` VALUES ('20090425161243');
INSERT INTO `schema_migrations` VALUES ('20090503121501');
INSERT INTO `schema_migrations` VALUES ('20090503121505');
INSERT INTO `schema_migrations` VALUES ('20090503121510');
INSERT INTO `schema_migrations` VALUES ('20090614091200');
INSERT INTO `schema_migrations` VALUES ('20090704172350');
INSERT INTO `schema_migrations` VALUES ('20090704172355');
INSERT INTO `schema_migrations` VALUES ('20090704172358');
INSERT INTO `schema_migrations` VALUES ('20091010093521');
INSERT INTO `schema_migrations` VALUES ('20091017212227');
INSERT INTO `schema_migrations` VALUES ('20091017212457');
INSERT INTO `schema_migrations` VALUES ('20091017212644');
INSERT INTO `schema_migrations` VALUES ('20091017212938');
INSERT INTO `schema_migrations` VALUES ('20091017213027');
INSERT INTO `schema_migrations` VALUES ('20091017213113');
INSERT INTO `schema_migrations` VALUES ('20091017213151');
INSERT INTO `schema_migrations` VALUES ('20091017213228');
INSERT INTO `schema_migrations` VALUES ('20091017213257');
INSERT INTO `schema_migrations` VALUES ('20091017213332');
INSERT INTO `schema_migrations` VALUES ('20091017213444');
INSERT INTO `schema_migrations` VALUES ('20091017213536');
INSERT INTO `schema_migrations` VALUES ('20091017213642');
INSERT INTO `schema_migrations` VALUES ('20091017213716');
INSERT INTO `schema_migrations` VALUES ('20091017213757');
INSERT INTO `schema_migrations` VALUES ('20091017213835');
INSERT INTO `schema_migrations` VALUES ('20091017213910');
INSERT INTO `schema_migrations` VALUES ('20091017214015');
INSERT INTO `schema_migrations` VALUES ('20091017214107');
INSERT INTO `schema_migrations` VALUES ('20091017214136');
INSERT INTO `schema_migrations` VALUES ('20091017214236');
INSERT INTO `schema_migrations` VALUES ('20091017214308');
INSERT INTO `schema_migrations` VALUES ('20091017214336');
INSERT INTO `schema_migrations` VALUES ('20091017214406');
INSERT INTO `schema_migrations` VALUES ('20091017214440');
INSERT INTO `schema_migrations` VALUES ('20091017214519');
INSERT INTO `schema_migrations` VALUES ('20091017214611');
INSERT INTO `schema_migrations` VALUES ('20091017214644');
INSERT INTO `schema_migrations` VALUES ('20091017214720');
INSERT INTO `schema_migrations` VALUES ('20091017214750');
INSERT INTO `schema_migrations` VALUES ('20091025163651');
INSERT INTO `schema_migrations` VALUES ('20091108092559');
INSERT INTO `schema_migrations` VALUES ('20091114105931');
INSERT INTO `schema_migrations` VALUES ('20091119162427-redmine_gitosis');
INSERT INTO `schema_migrations` VALUES ('20091123212029');
INSERT INTO `schema_migrations` VALUES ('20091205124427');
INSERT INTO `schema_migrations` VALUES ('20091220183509');
INSERT INTO `schema_migrations` VALUES ('20091220183727');
INSERT INTO `schema_migrations` VALUES ('20091220184736');
INSERT INTO `schema_migrations` VALUES ('20091225164732');
INSERT INTO `schema_migrations` VALUES ('20091227112908');
INSERT INTO `schema_migrations` VALUES ('20100129193402');
INSERT INTO `schema_migrations` VALUES ('20100129193813');
INSERT INTO `schema_migrations` VALUES ('20100221100219');
INSERT INTO `schema_migrations` VALUES ('20100313132032');
INSERT INTO `schema_migrations` VALUES ('20100313171051');
INSERT INTO `schema_migrations` VALUES ('20100705164950');
INSERT INTO `schema_migrations` VALUES ('20100819172912');
INSERT INTO `schema_migrations` VALUES ('20101022164431-redmine_jchat');
INSERT INTO `schema_migrations` VALUES ('20101104182107');
INSERT INTO `schema_migrations` VALUES ('20101107130441');
INSERT INTO `schema_migrations` VALUES ('20101114115114');
INSERT INTO `schema_migrations` VALUES ('20101114115359');
INSERT INTO `schema_migrations` VALUES ('20110220160626');
INSERT INTO `schema_migrations` VALUES ('20110223180944');
INSERT INTO `schema_migrations` VALUES ('20110223180953');
INSERT INTO `schema_migrations` VALUES ('20110224000000');
INSERT INTO `schema_migrations` VALUES ('20110226120112');
INSERT INTO `schema_migrations` VALUES ('20110226120132');
INSERT INTO `schema_migrations` VALUES ('20110227125750');
INSERT INTO `schema_migrations` VALUES ('20110228000000');
INSERT INTO `schema_migrations` VALUES ('20110228000100');
INSERT INTO `schema_migrations` VALUES ('20110401192910');
INSERT INTO `schema_migrations` VALUES ('20110408103312');
INSERT INTO `schema_migrations` VALUES ('20110412065600');
INSERT INTO `schema_migrations` VALUES ('20110511000000');
INSERT INTO `schema_migrations` VALUES ('21');
INSERT INTO `schema_migrations` VALUES ('22');
INSERT INTO `schema_migrations` VALUES ('23');
INSERT INTO `schema_migrations` VALUES ('24');
INSERT INTO `schema_migrations` VALUES ('25');
INSERT INTO `schema_migrations` VALUES ('26');
INSERT INTO `schema_migrations` VALUES ('27');
INSERT INTO `schema_migrations` VALUES ('28');
INSERT INTO `schema_migrations` VALUES ('29');
INSERT INTO `schema_migrations` VALUES ('3');
INSERT INTO `schema_migrations` VALUES ('30');
INSERT INTO `schema_migrations` VALUES ('31');
INSERT INTO `schema_migrations` VALUES ('32');
INSERT INTO `schema_migrations` VALUES ('33');
INSERT INTO `schema_migrations` VALUES ('34');
INSERT INTO `schema_migrations` VALUES ('35');
INSERT INTO `schema_migrations` VALUES ('36');
INSERT INTO `schema_migrations` VALUES ('37');
INSERT INTO `schema_migrations` VALUES ('38');
INSERT INTO `schema_migrations` VALUES ('39');
INSERT INTO `schema_migrations` VALUES ('4');
INSERT INTO `schema_migrations` VALUES ('40');
INSERT INTO `schema_migrations` VALUES ('41');
INSERT INTO `schema_migrations` VALUES ('42');
INSERT INTO `schema_migrations` VALUES ('43');
INSERT INTO `schema_migrations` VALUES ('44');
INSERT INTO `schema_migrations` VALUES ('45');
INSERT INTO `schema_migrations` VALUES ('46');
INSERT INTO `schema_migrations` VALUES ('47');
INSERT INTO `schema_migrations` VALUES ('48');
INSERT INTO `schema_migrations` VALUES ('49');
INSERT INTO `schema_migrations` VALUES ('5');
INSERT INTO `schema_migrations` VALUES ('50');
INSERT INTO `schema_migrations` VALUES ('51');
INSERT INTO `schema_migrations` VALUES ('52');
INSERT INTO `schema_migrations` VALUES ('53');
INSERT INTO `schema_migrations` VALUES ('54');
INSERT INTO `schema_migrations` VALUES ('55');
INSERT INTO `schema_migrations` VALUES ('56');
INSERT INTO `schema_migrations` VALUES ('57');
INSERT INTO `schema_migrations` VALUES ('58');
INSERT INTO `schema_migrations` VALUES ('59');
INSERT INTO `schema_migrations` VALUES ('6');
INSERT INTO `schema_migrations` VALUES ('60');
INSERT INTO `schema_migrations` VALUES ('61');
INSERT INTO `schema_migrations` VALUES ('62');
INSERT INTO `schema_migrations` VALUES ('63');
INSERT INTO `schema_migrations` VALUES ('64');
INSERT INTO `schema_migrations` VALUES ('65');
INSERT INTO `schema_migrations` VALUES ('66');
INSERT INTO `schema_migrations` VALUES ('67');
INSERT INTO `schema_migrations` VALUES ('68');
INSERT INTO `schema_migrations` VALUES ('69');
INSERT INTO `schema_migrations` VALUES ('7');
INSERT INTO `schema_migrations` VALUES ('70');
INSERT INTO `schema_migrations` VALUES ('71');
INSERT INTO `schema_migrations` VALUES ('72');
INSERT INTO `schema_migrations` VALUES ('73');
INSERT INTO `schema_migrations` VALUES ('74');
INSERT INTO `schema_migrations` VALUES ('75');
INSERT INTO `schema_migrations` VALUES ('76');
INSERT INTO `schema_migrations` VALUES ('77');
INSERT INTO `schema_migrations` VALUES ('78');
INSERT INTO `schema_migrations` VALUES ('79');
INSERT INTO `schema_migrations` VALUES ('8');
INSERT INTO `schema_migrations` VALUES ('80');
INSERT INTO `schema_migrations` VALUES ('81');
INSERT INTO `schema_migrations` VALUES ('82');
INSERT INTO `schema_migrations` VALUES ('83');
INSERT INTO `schema_migrations` VALUES ('84');
INSERT INTO `schema_migrations` VALUES ('85');
INSERT INTO `schema_migrations` VALUES ('86');
INSERT INTO `schema_migrations` VALUES ('87');
INSERT INTO `schema_migrations` VALUES ('88');
INSERT INTO `schema_migrations` VALUES ('89');
INSERT INTO `schema_migrations` VALUES ('9');
INSERT INTO `schema_migrations` VALUES ('90');
INSERT INTO `schema_migrations` VALUES ('91');
INSERT INTO `schema_migrations` VALUES ('92');
INSERT INTO `schema_migrations` VALUES ('93');
INSERT INTO `schema_migrations` VALUES ('94');
INSERT INTO `schema_migrations` VALUES ('95');
INSERT INTO `schema_migrations` VALUES ('96');
INSERT INTO `schema_migrations` VALUES ('97');
INSERT INTO `schema_migrations` VALUES ('98');
INSERT INTO `schema_migrations` VALUES ('99');


###################
# Dumping table `settings`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8_unicode_ci,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_settings_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47

INSERT INTO `settings` VALUES ('1','text_formatting','textile','2010-03-26 23:31:32');
INSERT INTO `settings` VALUES ('2','protocol','http','2011-06-08 19:11:29');
INSERT INTO `settings` VALUES ('3','welcome_text','Welcome to \"BitBot Software\'s\":http://www.bitbot.com.au/ free service called \"Hosted Redmine\":http://www.hostedredmine.com/. This site has been operating since March 2010 and provides free project management software.\r\n\r\nWe host \"Redmine\":http://www.redmine.org/ projects free of charge within our high quality server environment. All we ask in return is a simple link of appreciation from your website to ours. And yes, you are welcome to use this website for commercial activities, provided you properly attribute our efforts.\r\n\r\nWe are long-term users of Redmine. Hosting this service is part of our contribution back to the community.\r\n\r\nIf you are just looking to experiment with Redmine\'s features, we recommend you use the \"official demo\":http://demo.redmine.org/ instead.\r\n\r\nPlease register for your \"free account here\":http://www.hostedredmine.com/account/register. After you have registered and verified your email address, feel free to create your own private or public project. Instructions on \"registering can be found here\":http://www.hostedredmine.com/projects/hosted-redmine/wiki/Register.\r\n\r\nHostedRedmine.com has the following features:\r\n* Redmine 1.2 Stable branch (standard and improved workflows and trackers).\r\n* Subversion (SVN) repositories can be used remotely.\r\n* Secure \"SSL HTTPS\":https://www.hostedredmine.com/ is also available.\r\n* Theme changer plugin to allow you to choose your own theme (including Mar≠tini Mod≠ula).\r\n* Mylyn connector plugin for Eclipse.\r\n* Redmine issue notification plugin emails you when the due date is near.\r\n* Other plugins are available.\r\n\r\nIf you need support or want to suggest a feature, please do so in the \"Hosted Redmine project\":http://www.hostedredmine.com/projects/hosted-redmine after signing in. If you are having problems signing in or need to discuss a matter privately, please email bitbot at bitbot.com.au.\r\n\r\nWe respect the privacy and confidentiality of your data. This service runs from a Virtual Private Server (VPS) in the United States of America, and only BitBot Software Pty Ltd (an Australian company) has data access.\r\n\r\nYou may \"download an export\":https://www.hostedredmine.com/export/index.php of your data from HostedRedmine.com at any time free of charge. We ask that you please delete your projects from HostedRedmine.com if you no longer need them, to save disk space for other users.\r\n\r\nNote that we do reserve the right to terminate access to the site for any account that we believe is detrimental to this service at our sole discretion. We reserve the right to display advertisements, such as Google AdWords. The data entered into Redmine remains yours, however you permit us to make copies as necessary for backups and other maintenance activities.\r\n\r\nHosted Redmine is proudly brought to you by \"BitBot Software Pty Ltd\":http://www.bitbot.com.au/. We help strengthen businesses with open-source software. BitBot was founded in June 2008 and we are based in Newcastle, NSW, Australia.','2011-09-25 11:20:10');
INSERT INTO `settings` VALUES ('4','app_title','Free Redmine Hosting :: Manage Your Projects','2011-06-09 18:45:02');
INSERT INTO `settings` VALUES ('5','feeds_limit','15','2010-03-26 23:31:32');
INSERT INTO `settings` VALUES ('6','wiki_compression','','2010-03-26 23:31:32');
INSERT INTO `settings` VALUES ('7','diff_max_lines_displayed','1500','2010-03-26 23:31:32');
INSERT INTO `settings` VALUES ('8','activity_days_default','30','2010-03-26 23:31:32');
INSERT INTO `settings` VALUES ('9','attachment_max_size','3072','2011-02-05 11:59:04');
INSERT INTO `settings` VALUES ('10','file_max_size_displayed','512','2010-03-26 23:31:32');
INSERT INTO `settings` VALUES ('11','host_name','www.hostedredmine.com','2010-03-27 00:26:10');
INSERT INTO `settings` VALUES ('12','per_page_options','25,50,100','2010-03-26 23:31:33');
INSERT INTO `settings` VALUES ('13','ui_theme','ModulaMojito','2010-11-06 11:30:37');
INSERT INTO `settings` VALUES ('14','default_language','en','2010-03-26 23:32:11');
INSERT INTO `settings` VALUES ('15','gravatar_default','identicon','2010-11-06 11:32:50');
INSERT INTO `settings` VALUES ('16','user_format','firstname_lastname','2010-03-26 23:32:11');
INSERT INTO `settings` VALUES ('17','start_of_week','','2010-03-26 23:32:11');
INSERT INTO `settings` VALUES ('18','date_format','%Y-%m-%d','2010-03-29 14:56:09');
INSERT INTO `settings` VALUES ('19','gravatar_enabled','1','2010-11-06 11:31:14');
INSERT INTO `settings` VALUES ('20','time_format','%I:%M %p','2010-03-29 14:56:09');
INSERT INTO `settings` VALUES ('21','rest_api_enabled','1','2010-07-28 18:46:37');
INSERT INTO `settings` VALUES ('22','lost_password','1','2010-03-26 23:33:45');
INSERT INTO `settings` VALUES ('23','openid','0','2011-09-12 09:11:31');
INSERT INTO `settings` VALUES ('24','password_min_length','4','2010-03-26 23:33:45');
INSERT INTO `settings` VALUES ('25','login_required','0','2010-03-26 23:33:45');
INSERT INTO `settings` VALUES ('26','self_registration','3','2011-04-04 07:43:50');
INSERT INTO `settings` VALUES ('27','default_projects_public','0','2010-03-26 23:34:29');
INSERT INTO `settings` VALUES ('28','sequential_project_identifiers','0','2010-03-26 23:34:23');
INSERT INTO `settings` VALUES ('29','default_projects_modules','--- \n- issue_tracking\n- time_tracking\n- news\n- documents\n- files\n- wiki\n- repository\n- boards\n','2010-03-26 23:34:23');
INSERT INTO `settings` VALUES ('30','new_project_user_role_id','3','2010-03-26 23:34:23');
INSERT INTO `settings` VALUES ('31','emails_footer','You have received this notification because you have either subscribed to it, or are involved in it.\r\nTo change your notification preferences, please click here: http://www.hostedredmine.com/my/account','2011-06-08 19:11:47');
INSERT INTO `settings` VALUES ('32','plain_text_mail','0','2010-03-26 23:35:38');
INSERT INTO `settings` VALUES ('33','mail_from','HostedRedmine.com <no-reply@hostedredmine.com>','2011-05-20 14:59:31');
INSERT INTO `settings` VALUES ('34','bcc_recipients','1','2010-03-26 23:35:38');
INSERT INTO `settings` VALUES ('35','notified_events','--- \n- issue_added\n- issue_updated\n- issue_note_added\n- news_added\n- news_comment_added\n- document_added\n- file_added\n- message_posted\n','2011-06-12 20:57:54');
INSERT INTO `settings` VALUES ('36','autologin','365','2011-04-04 07:43:50');
INSERT INTO `settings` VALUES ('37','repositories_encodings','','2010-03-29 14:57:27');
INSERT INTO `settings` VALUES ('38','commit_logs_encoding','UTF-8','2010-03-29 14:57:27');
INSERT INTO `settings` VALUES ('39','commit_fix_status_id','3','2011-01-13 21:44:28');
INSERT INTO `settings` VALUES ('40','sys_api_enabled','0','2010-03-29 14:57:27');
INSERT INTO `settings` VALUES ('41','commit_ref_keywords','refs,references,IssueID','2010-03-29 14:57:27');
INSERT INTO `settings` VALUES ('42','repository_log_display_limit','100','2010-03-29 14:57:27');
INSERT INTO `settings` VALUES ('43','commit_fix_done_ratio','100','2010-03-29 14:57:27');
INSERT INTO `settings` VALUES ('44','autofetch_changesets','1','2010-03-29 14:57:27');
INSERT INTO `settings` VALUES ('45','commit_fix_keywords','fixes,closes,fixed','2010-11-14 10:59:38');
INSERT INTO `settings` VALUES ('46','enabled_scm','--- \n- Subversion\n','2011-07-31 22:17:13');
INSERT INTO `settings` VALUES ('47','cache_formatted_text','0','2010-07-24 12:28:42');
INSERT INTO `settings` VALUES ('48','commit_logtime_enabled','0','2011-01-13 21:44:28');
INSERT INTO `settings` VALUES ('49','plugin_google_analytics_plugin','--- !map:HashWithIndifferentAccess \ngoogle_analytics_log_authenticated: \"1\"\ngoogle_analytics_code: |-\n  <script type=\"text/javascript\">\r\n  \r\n    var _gaq = _gaq || [];\r\n    _gaq.push([\'_setAccount\', \'UA-12687515-3\']);\r\n    _gaq.push([\'_setCustomVar\', 1, \'Login\', document.getElementById(\'loggedas\') != null\r\n    ? document.getElementById(\'loggedas\').childNodes[1].textContent : \'(anonymous)\', 1]);\r\n    _gaq.push([\'_trackPageview\']);\r\n  \r\n    (function() {\r\n      var ga = document.createElement(\'script\'); ga.type = \'text/javascript\'; ga.async = true;\r\n      ga.src = (\'https:\' == document.location.protocol ? \'https://ssl\' : \'http://www\') + \'.google-analytics.com/ga.js\';\r\n      var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(ga, s);\r\n    })();\r\n  \r\n  </script>\ngoogle_analytics_log_anonymous: \"1\"\n','2011-02-05 10:17:00');
INSERT INTO `settings` VALUES ('50','cross_project_issue_relations','0','2011-04-04 07:45:16');
INSERT INTO `settings` VALUES ('51','issue_done_ratio','issue_field','2011-04-04 07:45:16');
INSERT INTO `settings` VALUES ('52','issue_list_default_columns','--- \n- tracker\n- status\n- priority\n- subject\n- assigned_to\n- updated_on\n- category\n','2011-04-04 07:45:16');
INSERT INTO `settings` VALUES ('53','issues_export_limit','500','2011-04-04 07:45:16');
INSERT INTO `settings` VALUES ('54','gantt_items_limit','500','2011-04-04 07:45:16');
INSERT INTO `settings` VALUES ('55','display_subprojects_issues','1','2011-04-04 07:45:16');
INSERT INTO `settings` VALUES ('56','plugin_redmine_delete_project','--- !map:HashWithIndifferentAccess \nrepos_path: /var/svn\ndestroy: \"yes\"\nstatus_number: \"1001\"\nchmod: \"no\"\n','2011-04-15 20:35:49');
INSERT INTO `settings` VALUES ('57','plugin_redmine_project_filtering','--- \ncss: |\n  \n  #project_filtering label { display: block; }\n  #project_filtering p { float: left; }\n  #project_filtering p.q { width: 30em; }\n  #project_filtering p.custom_field { width: 10em; }\n  #project_filtering p.buttons { clear: both; with: 100%; float: none; }\n  \n  ul.filter_fields { padding: 0; }\n  ul.filter_fields li {\n    list-style-type: none;\n    display: inline;\n    margin: 0 10px 0 0;\n  }\n\n:used_fields: \n  \"5\": \"1\"\nused_fields: {}\n\n','2011-04-17 22:09:38');
INSERT INTO `settings` VALUES ('58','emails_header','','2011-05-20 14:59:31');
INSERT INTO `settings` VALUES ('59','default_notification_option','only_my_events','2011-05-20 14:59:31');
INSERT INTO `settings` VALUES ('60','plugin_redmine_gitosis','--- !map:HashWithIndifferentAccess \nbasePath: /usr/local/git/repositories/\ndeveloperBaseUrls: \"git@rails.bitbot.net.au:\"\nrepoNameCustomField: \"\"\nreadOnlyBaseUrls: \"\"\ngitosisUrl: git@rails.bitbot.net.au:gitosis-admin.git\ngitosisIdentityFile: /usr/local/www/hostedredmine.com/redmine/vendor/plugins/redmine_gitosis/extra/ssh/private_key\n','2011-06-19 21:54:14');


###################
# Dumping table `theme_changer_user_settings`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `theme_changer_user_settings`
--

DROP TABLE IF EXISTS `theme_changer_user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `theme_changer_user_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2434 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47

INSERT INTO `theme_changer_user_settings` VALUES ('1','3','__system_setting__','2011-09-11 22:52:01');


###################
# Dumping table `time_entries`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `time_entries`
--

DROP TABLE IF EXISTS `time_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `issue_id` int(11) DEFAULT NULL,
  `hours` float NOT NULL,
  `comments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activity_id` int(11) NOT NULL,
  `spent_on` date NOT NULL,
  `tyear` int(11) NOT NULL,
  `tmonth` int(11) NOT NULL,
  `tweek` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time_entries_project_id` (`project_id`),
  KEY `time_entries_issue_id` (`issue_id`),
  KEY `index_time_entries_on_activity_id` (`activity_id`),
  KEY `index_time_entries_on_user_id` (`user_id`),
  KEY `index_time_entries_on_created_on` (`created_on`)
) ENGINE=InnoDB AUTO_INCREMENT=9453 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47

INSERT INTO `time_entries` VALUES ('29','28','2','190','2','','8','2010-04-14','2010','4','15','2010-04-14 17:55:37','2010-04-14 17:55:37');
INSERT INTO `time_entries` VALUES ('42','28','2','196','1.5','','8','2010-04-20','2010','4','16','2010-04-20 01:27:26','2010-04-20 01:27:26');
INSERT INTO `time_entries` VALUES ('43','28','2','213','2','','8','2010-04-20','2010','4','16','2010-04-20 01:37:12','2010-04-20 01:37:12');
INSERT INTO `time_entries` VALUES ('59','28','2','213','6','','8','2010-04-21','2010','4','16','2010-04-21 08:35:53','2010-04-21 08:35:53');
INSERT INTO `time_entries` VALUES ('60','28','2','213','6','','8','2010-04-21','2010','4','16','2010-04-21 08:36:22','2010-04-21 08:36:22');
INSERT INTO `time_entries` VALUES ('77','28','2','322','1.5','','8','2010-04-27','2010','4','17','2010-04-27 06:36:04','2010-04-27 06:36:04');
INSERT INTO `time_entries` VALUES ('162','26','2','470','6','','8','2010-05-12','2010','5','19','2010-05-12 16:07:19','2010-05-12 16:07:19');
INSERT INTO `time_entries` VALUES ('163','28','2','321','5','','8','2010-05-12','2010','5','19','2010-05-12 16:07:47','2010-05-12 16:07:47');
INSERT INTO `time_entries` VALUES ('164','28','2','321','5','','8','2010-05-12','2010','5','19','2010-05-12 16:08:01','2010-05-12 16:08:01');
INSERT INTO `time_entries` VALUES ('165','28','2','320','2','','8','2010-05-12','2010','5','19','2010-05-12 16:10:35','2010-05-12 16:10:35');
INSERT INTO `time_entries` VALUES ('166','28','2','206','2','','8','2010-05-12','2010','5','19','2010-05-12 16:11:19','2010-05-12 16:11:19');
INSERT INTO `time_entries` VALUES ('197','26','2','629','12','','8','2010-05-18','2010','5','20','2010-05-18 16:04:14','2010-05-18 16:04:14');


###################
# Dumping table `tokens`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `action` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tokens_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23340 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47

INSERT INTO `tokens` VALUES ('11263','2','recovery','9297b56e757c08c07724bf44da116616ceff23e9','2011-02-28 10:08:19');
INSERT INTO `tokens` VALUES ('4','3','feeds','50cb9cdec81f3840683938d7be4bdba0754b3daf','2010-03-26 23:27:30');
INSERT INTO `tokens` VALUES ('2505','3','api','38307e404054b719541485792398af87a911ce80','2010-08-13 08:33:41');
INSERT INTO `tokens` VALUES ('14582','3','autologin','59642f26e89b7424e166c80e525c0ddd1c214318','2011-04-17 21:47:16');
INSERT INTO `tokens` VALUES ('7','4','feeds','d1c5de5a6305a6f88d2b0322244580a172ac2308','2010-03-27 00:13:35');
INSERT INTO `tokens` VALUES ('10','6','feeds','1cef2267f7db82366434bf97aaa94b36eb8665a4','2010-03-29 13:05:02');


###################
# Dumping table `trackers`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `trackers`
--

DROP TABLE IF EXISTS `trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trackers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_in_chlog` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT '1',
  `is_in_roadmap` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:47

INSERT INTO `trackers` VALUES ('1','Bug','1','3','1');
INSERT INTO `trackers` VALUES ('2','Feature','1','1','1');
INSERT INTO `trackers` VALUES ('3','Support','0','2','0');
INSERT INTO `trackers` VALUES ('4','Task','0','4','1');


###################
# Dumping table `user_preferences`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `others` text COLLATE utf8_unicode_ci,
  `hide_mail` tinyint(1) DEFAULT '0',
  `time_zone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_preferences_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4581 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:48

INSERT INTO `user_preferences` VALUES ('2','2','--- {}\n\n','0',NULL);
INSERT INTO `user_preferences` VALUES ('4','3','--- \n:comments_sorting: asc\n:no_self_notified: true\n:warn_on_leaving_unsaved: \"1\"\n:gantt_zoom: 2\n:gantt_months: 6\n:diff_type: inline\n','1','Sydney');
INSERT INTO `user_preferences` VALUES ('3','4','--- \n:no_self_notified: false\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \"1\"\n','0','');
INSERT INTO `user_preferences` VALUES ('5','6','--- {}\n\n','0',NULL);


###################
# Dumping table `users`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hashed_password` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `firstname` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mail` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `last_login_on` datetime DEFAULT NULL,
  `language` varchar(5) COLLATE utf8_unicode_ci DEFAULT '',
  `auth_source_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `identity_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_notification` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `salt` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_users_on_id_and_type` (`id`,`type`),
  KEY `index_users_on_auth_source_id` (`auth_source_id`),
  KEY `index_users_on_type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=4779 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:48

INSERT INTO `users` VALUES ('2','','','','Anonymous','','0','0',NULL,'',NULL,'2010-03-26 22:55:32','2010-03-26 22:55:32','AnonymousUser',NULL,'only_my_events',NULL);
INSERT INTO `users` VALUES ('3','brad','41f0fcb53a109539aafd16f8ddc6e07d2d09fb88','Brad','Rushworth','brad@bitbot.com.au','1','1','2011-09-12 09:11:09','en',NULL,'2010-03-26 23:26:33','2011-09-12 09:12:33','User',NULL,'only_my_events','68b2a59dc6ddf7772a92df083003098c');
INSERT INTO `users` VALUES ('4','brad_testing','10554b26b647bd5990014b1d08e0a91b00916abb','Brad','Rushworth Testing','brad@bravo.net.au','0','1','2011-04-17 21:46:15','en',NULL,'2010-03-27 00:10:43','2011-06-19 22:10:22','User',NULL,'only_my_events','88f6532f8b3fe242cd49348ee5c2fdee');
INSERT INTO `users` VALUES ('6','brushworth','013cb1181f6d8a9c9b578f3187a9aa22acec7ca0','Brad','brushworth at bitbot.com.au','brushworth@bitbot.com.au','0','3','2010-03-29 14:04:44','en',NULL,'2010-03-29 13:03:12','2010-03-29 21:56:45','User',NULL,'only_my_events','bfceb4cf8d3fc906178999a96cefe7e0');


###################
# Dumping table `versions`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `effective_date` date DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `wiki_page_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'open',
  `sharing` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  PRIMARY KEY (`id`),
  KEY `versions_project_id` (`project_id`),
  KEY `index_versions_on_sharing` (`sharing`)
) ENGINE=InnoDB AUTO_INCREMENT=1270 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:48



###################
# Dumping table `watchers`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `watchers`
--

DROP TABLE IF EXISTS `watchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `watchers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `watchable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `watchable_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `watchers_user_id_type` (`user_id`,`watchable_type`),
  KEY `index_watchers_on_user_id` (`user_id`),
  KEY `index_watchers_on_watchable_id_and_watchable_type` (`watchable_id`,`watchable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=26542 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:48



###################
# Dumping table `wiki_content_versions`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `wiki_content_versions`
--

DROP TABLE IF EXISTS `wiki_content_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_content_versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wiki_content_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `data` longblob,
  `compression` varchar(6) COLLATE utf8_unicode_ci DEFAULT '',
  `comments` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `updated_on` datetime NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_content_versions_wcid` (`wiki_content_id`),
  KEY `index_wiki_content_versions_on_updated_on` (`updated_on`)
) ENGINE=InnoDB AUTO_INCREMENT=8433 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:48

INSERT INTO `wiki_content_versions` VALUES ('2','2','2','3','h1. Register, create new projects and join existing projects\r\n\r\n\r\nh2. Register\r\n\r\n\r\n\r\n\r\nh2. Create new projects\r\n\r\n\r\n\r\n\r\nh2. Join existing projects','','','2010-03-29 13:42:25','1');
INSERT INTO `wiki_content_versions` VALUES ('3','2','2','3','h1. Register, create new projects and join existing projects\r\n\r\n\r\nh2. Register\r\n\r\nStep 1: Click on the \"Register\" link.\r\n\r\n!Step1.png!\r\n\r\nStep 2: Fill in your account details.\r\n\r\n!Step2.png!\r\n\r\nStep 3: Confirm your email address by clicking on the link in your Inbox.\r\n\r\n!Step3.png!\r\n\r\nStep4: Login with your new account details.\r\n\r\n!Step4.png!\r\n\r\n\r\nh2. Create new projects\r\n\r\nStep 1: Click on the \"Projects\" link.\r\n\r\n!Step5.png!\r\n\r\nStep 2: Click on the \"New Project\" link.\r\n\r\n!Step6.png!\r\n\r\nStep 3: Fill in the project details.\r\n\r\n!Step7.png!\r\n\r\nStep 4: Configure the project settings to your needs.\r\n\r\nIf you desire a project where anybody can see your project, please tick the \"Public\" button. Note however, that contributors need a HostedRedmine.com account to add/edit content in your project.\r\n\r\nCongratulations, your new project is now ready to use.\r\n\r\n\r\nh2. Join existing projects\r\n\r\nYou can add other HostedRedmine.com users to your project. This allows you to collaborate with other people.\r\n\r\n!Step8.png!','','','2010-03-29 13:56:13','2');
INSERT INTO `wiki_content_versions` VALUES ('4','2','2','3','h1. Register, create new projects and join existing projects\r\n\r\n\r\nh2. Register\r\n\r\nh3. Step 1: Click on the \"Register\" link.\r\n\r\n!Step1.png!\r\n\r\nh3. Step 2: Fill in your account details.\r\n\r\n!Step2.png!\r\n\r\nh3. Step 3: Confirm your email address by clicking on the link in your Inbox.\r\n\r\n!Step3.png!\r\n\r\nh3. Step4: Login with your new account details.\r\n\r\n!Step4.png!\r\n\r\n\r\nh2. Create new projects\r\n\r\nh3. Step 1: Click on the \"Projects\" link.\r\n\r\n!Step5.png!\r\n\r\nh3. Step 2: Click on the \"New Project\" link.\r\n\r\n!Step6.png!\r\n\r\nh3. Step 3: Fill in the project details.\r\n\r\n!Step7.png!\r\n\r\nh3. Step 4: Configure the project settings to your needs.\r\n\r\nIf you desire a project where anybody can see your project, please tick the \"Public\" button. Note however, that contributors need a HostedRedmine.com account to add/edit content in your project.\r\n\r\nCongratulations, your new project is now ready to use.\r\n\r\n\r\nh2. Join existing projects\r\n\r\nh3. Add contributors\r\n\r\nYou can add other HostedRedmine.com users to your project. This allows you to collaborate with other people.\r\n\r\n!Step8.png!\r\n\r\nYou should now have multiple contributors on your project.','','','2010-03-29 13:58:25','3');
INSERT INTO `wiki_content_versions` VALUES ('214','2','2','3','h1. Register, create new projects and join existing projects\r\n\r\n\r\nh2. Register\r\n\r\nh3. Step 1: Click on the \"Register\" link.\r\n\r\n!Step1.png!\r\n\r\nh3. Step 2: Fill in your account details.\r\n\r\n!Step2.png!\r\n\r\nh3. Step 3: Confirm your email address by clicking on the link in your Inbox.\r\n\r\n!Step3.png!\r\n\r\nh3. Step4: Login with your new account details.\r\n\r\n!Step4.png!\r\n\r\n\r\nh2. Create new projects\r\n\r\nh3. Step 1: Click on the \"Projects\" link.\r\n\r\n!Step5.png!\r\n\r\nh3. Step 2: Click on the \"New Project\" link.\r\n\r\n!Step6.png!\r\n\r\nh3. Step 3: Fill in the project details.\r\n\r\n!Step7.png!\r\n\r\nh3. Step 4: Configure the project settings to your needs.\r\n\r\nIf you desire a project where anybody can see your project, please tick the \"Public\" button. Note however, that contributors need a HostedRedmine.com account to add/edit content in your project.\r\n\r\nCongratulations, your new project is now ready to use.\r\n\r\n\r\nh2. Join existing projects\r\n\r\nh3. Add contributors\r\n\r\nYou can add other HostedRedmine.com users to your project. This allows you to collaborate with other people.\r\n\r\n!Step8.png!\r\n\r\nYou should now have multiple contributors on your project.\r\n\r\nh3. Roles\r\n\r\nFor your information, the project roles available are Manager, Developer and Reporter.\r\n\r\nManagers have full control over issue workflow. Developers and Reporters have the following permissions:\r\n\r\n!Developer.png!\r\n\r\n!Reporter.png!\r\n\r\n---','','','2010-05-31 22:51:55','4');
INSERT INTO `wiki_content_versions` VALUES ('4234','2','2','3','h1. Register, create new projects and join existing projects\r\n\r\n---\r\n\r\nh2. Register\r\n\r\nh3. Step 1: Click on the \"Register\" link.\r\n\r\n!Step1.png!\r\n\r\nh3. Step 2: Fill in your account details.\r\n\r\n!Step2.png!\r\n\r\nh3. Step 3: -Confirm your email address by clicking on the link in your Inbox.- We now have automatic activation turned on.\r\n\r\n!Step3.png!\r\n\r\nh3. Step 4: Login with your new account details.\r\n\r\n!Step4.png!\r\n\r\n\r\n---\r\n\r\nh2. Create new projects\r\n\r\nh3. Step 1: Click on the \"Projects\" link.\r\n\r\n!Step5.png!\r\n\r\nh3. Step 2: Click on the \"New Project\" link.\r\n\r\n!Step6.png!\r\n\r\nh3. Step 3: Fill in the project details.\r\n\r\n!Step7.png!\r\n\r\nh3. Step 4: Configure the project settings to your needs.\r\n\r\nIf you would like your project to be viewable by anybody, please tick the @Public@ button. Remember that your contributors need their own HostedRedmine.com account to add/edit content in your project and you need to configure their permissions.\r\n\r\nCongratulations, your new project is now ready to use.\r\n\r\n\r\n---\r\n\r\nh2. Join existing projects\r\n\r\nh3. Add contributors\r\n\r\nYou can add other HostedRedmine.com users to your project. This allows you to collaborate with other people.\r\n\r\n!Step8.png!\r\n\r\nYou should now have multiple contributors on your project.\r\n\r\nh3. Roles\r\n\r\nThe project roles available are Manager, Developer, Reporter and Guest. You can learn more about [[Workflows]] on the wiki page.\r\n\r\n\r\n---','','','2011-04-17 22:00:45','5');


###################
# Dumping table `wiki_contents`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `wiki_contents`
--

DROP TABLE IF EXISTS `wiki_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `text` longtext COLLATE utf8_unicode_ci,
  `comments` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `updated_on` datetime NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_contents_page_id` (`page_id`),
  KEY `index_wiki_contents_on_author_id` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2000 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:48

INSERT INTO `wiki_contents` VALUES ('2','2','3','h1. Register, create new projects and join existing projects\r\n\r\n---\r\n\r\nh2. Register\r\n\r\nh3. Step 1: Click on the \"Register\" link.\r\n\r\n!Step1.png!\r\n\r\nh3. Step 2: Fill in your account details.\r\n\r\n!Step2.png!\r\n\r\nh3. Step 3: -Confirm your email address by clicking on the link in your Inbox.- We now have automatic activation turned on.\r\n\r\n!Step3.png!\r\n\r\nh3. Step 4: Login with your new account details.\r\n\r\n!Step4.png!\r\n\r\n\r\n---\r\n\r\nh2. Create new projects\r\n\r\nh3. Step 1: Click on the \"Projects\" link.\r\n\r\n!Step5.png!\r\n\r\nh3. Step 2: Click on the \"New Project\" link.\r\n\r\n!Step6.png!\r\n\r\nh3. Step 3: Fill in the project details.\r\n\r\n!Step7.png!\r\n\r\nh3. Step 4: Configure the project settings to your needs.\r\n\r\nIf you would like your project to be viewable by anybody, please tick the @Public@ button. Remember that your contributors need their own HostedRedmine.com account to add/edit content in your project and you need to configure their permissions.\r\n\r\nCongratulations, your new project is now ready to use.\r\n\r\n\r\n---\r\n\r\nh2. Join existing projects\r\n\r\nh3. Add contributors\r\n\r\nYou can add other HostedRedmine.com users to your project. This allows you to collaborate with other people.\r\n\r\n!Step8.png!\r\n\r\nYou should now have multiple contributors on your project.\r\n\r\nh3. Roles\r\n\r\nThe project roles available are Manager, Developer, Reporter and Guest. You can learn more about [[Workflows]] on the wiki page.\r\n\r\n\r\n---','','2011-04-17 22:00:45','5');


###################
# Dumping table `wiki_pages`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `wiki_pages`
--

DROP TABLE IF EXISTS `wiki_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wiki_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `protected` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_pages_wiki_id_title` (`wiki_id`,`title`),
  KEY `index_wiki_pages_on_wiki_id` (`wiki_id`),
  KEY `index_wiki_pages_on_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2000 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:48



###################
# Dumping table `wiki_redirects`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `wiki_redirects`
--

DROP TABLE IF EXISTS `wiki_redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_redirects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wiki_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redirects_to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_redirects_wiki_id_title` (`wiki_id`,`title`),
  KEY `index_wiki_redirects_on_wiki_id` (`wiki_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:48



###################
# Dumping table `wikis`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `wikis`
--

DROP TABLE IF EXISTS `wikis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wikis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `start_page` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `wikis_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3077 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:48

INSERT INTO `wikis` VALUES ('2','2','Wiki','1');


###################
# Dumping table `workflows`
###################

-- MySQL dump 10.13  Distrib 5.1.58, for portbld-freebsd8.2 (amd64)
--
-- Host: 174.136.100.195    Database: hostedredmine
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `workflows`
--

DROP TABLE IF EXISTS `workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  `old_status_id` int(11) NOT NULL DEFAULT '0',
  `new_status_id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  `assignee` tinyint(1) NOT NULL DEFAULT '0',
  `author` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `wkfs_role_tracker_old_status` (`role_id`,`tracker_id`,`old_status_id`),
  KEY `index_workflows_on_old_status_id` (`old_status_id`),
  KEY `index_workflows_on_role_id` (`role_id`),
  KEY `index_workflows_on_new_status_id` (`new_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=716 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-09-25 12:17:48

INSERT INTO `workflows` VALUES ('31','2','1','2','3','0','0');
INSERT INTO `workflows` VALUES ('32','2','1','3','3','0','0');
INSERT INTO `workflows` VALUES ('33','2','1','4','3','0','0');
INSERT INTO `workflows` VALUES ('34','2','1','5','3','0','0');
INSERT INTO `workflows` VALUES ('35','2','1','6','3','0','0');
INSERT INTO `workflows` VALUES ('36','2','2','1','3','0','0');
INSERT INTO `workflows` VALUES ('37','2','2','3','3','0','0');
INSERT INTO `workflows` VALUES ('38','2','2','4','3','0','0');
INSERT INTO `workflows` VALUES ('39','2','2','5','3','0','0');
INSERT INTO `workflows` VALUES ('40','2','2','6','3','0','0');
INSERT INTO `workflows` VALUES ('41','2','3','1','3','0','0');
INSERT INTO `workflows` VALUES ('42','2','3','2','3','0','0');
INSERT INTO `workflows` VALUES ('43','2','3','4','3','0','0');
INSERT INTO `workflows` VALUES ('44','2','3','5','3','0','0');
INSERT INTO `workflows` VALUES ('45','2','3','6','3','0','0');
INSERT INTO `workflows` VALUES ('46','2','4','1','3','0','0');
INSERT INTO `workflows` VALUES ('47','2','4','2','3','0','0');
INSERT INTO `workflows` VALUES ('48','2','4','3','3','0','0');
INSERT INTO `workflows` VALUES ('49','2','4','5','3','0','0');
INSERT INTO `workflows` VALUES ('50','2','4','6','3','0','0');
INSERT INTO `workflows` VALUES ('51','2','5','1','3','0','0');
INSERT INTO `workflows` VALUES ('52','2','5','2','3','0','0');
INSERT INTO `workflows` VALUES ('53','2','5','3','3','0','0');
INSERT INTO `workflows` VALUES ('54','2','5','4','3','0','0');
INSERT INTO `workflows` VALUES ('55','2','5','6','3','0','0');
INSERT INTO `workflows` VALUES ('56','2','6','1','3','0','0');
INSERT INTO `workflows` VALUES ('57','2','6','2','3','0','0');
INSERT INTO `workflows` VALUES ('58','2','6','3','3','0','0');
INSERT INTO `workflows` VALUES ('59','2','6','4','3','0','0');
INSERT INTO `workflows` VALUES ('60','2','6','5','3','0','0');
INSERT INTO `workflows` VALUES ('216','2','6','2','5','0','0');
INSERT INTO `workflows` VALUES ('217','2','1','5','5','0','0');
INSERT INTO `workflows` VALUES ('218','2','1','6','5','0','0');
INSERT INTO `workflows` VALUES ('219','2','2','6','5','0','0');
INSERT INTO `workflows` VALUES ('220','2','3','4','5','0','0');
INSERT INTO `workflows` VALUES ('221','2','3','5','5','0','0');
INSERT INTO `workflows` VALUES ('222','2','4','5','5','0','0');
INSERT INTO `workflows` VALUES ('223','2','5','2','5','0','0');
INSERT INTO `workflows` VALUES ('224','2','6','2','4','0','0');
INSERT INTO `workflows` VALUES ('225','2','6','3','4','0','0');
INSERT INTO `workflows` VALUES ('226','2','6','4','4','0','0');
INSERT INTO `workflows` VALUES ('227','2','6','5','4','0','0');
INSERT INTO `workflows` VALUES ('228','2','1','2','4','0','0');
INSERT INTO `workflows` VALUES ('229','2','1','3','4','0','0');
INSERT INTO `workflows` VALUES ('230','2','1','4','4','0','0');
INSERT INTO `workflows` VALUES ('231','2','1','5','4','0','0');
INSERT INTO `workflows` VALUES ('232','2','1','6','4','0','0');
INSERT INTO `workflows` VALUES ('233','2','2','3','4','0','0');
INSERT INTO `workflows` VALUES ('234','2','2','4','4','0','0');
INSERT INTO `workflows` VALUES ('235','2','2','5','4','0','0');
INSERT INTO `workflows` VALUES ('236','2','2','6','4','0','0');
INSERT INTO `workflows` VALUES ('237','2','3','2','4','0','0');
INSERT INTO `workflows` VALUES ('238','2','3','4','4','0','0');
INSERT INTO `workflows` VALUES ('239','2','3','5','4','0','0');
INSERT INTO `workflows` VALUES ('240','2','4','2','4','0','0');
INSERT INTO `workflows` VALUES ('241','2','4','3','4','0','0');
INSERT INTO `workflows` VALUES ('242','2','4','5','4','0','0');
INSERT INTO `workflows` VALUES ('243','2','5','2','4','0','0');
INSERT INTO `workflows` VALUES ('244','2','5','3','4','0','0');
INSERT INTO `workflows` VALUES ('245','2','5','4','4','0','0');
INSERT INTO `workflows` VALUES ('431','1','1','2','3','0','0');
INSERT INTO `workflows` VALUES ('432','1','1','3','3','0','0');
INSERT INTO `workflows` VALUES ('433','1','1','4','3','0','0');
INSERT INTO `workflows` VALUES ('434','1','1','5','3','0','0');
INSERT INTO `workflows` VALUES ('435','1','1','6','3','0','0');
INSERT INTO `workflows` VALUES ('436','1','2','1','3','0','0');
INSERT INTO `workflows` VALUES ('437','1','2','3','3','0','0');
INSERT INTO `workflows` VALUES ('438','1','2','4','3','0','0');
INSERT INTO `workflows` VALUES ('439','1','2','5','3','0','0');
INSERT INTO `workflows` VALUES ('440','1','2','6','3','0','0');
INSERT INTO `workflows` VALUES ('441','1','3','1','3','0','0');
INSERT INTO `workflows` VALUES ('442','1','3','2','3','0','0');
INSERT INTO `workflows` VALUES ('443','1','3','4','3','0','0');
INSERT INTO `workflows` VALUES ('444','1','3','5','3','0','0');
INSERT INTO `workflows` VALUES ('445','1','3','6','3','0','0');
INSERT INTO `workflows` VALUES ('446','1','4','1','3','0','0');
INSERT INTO `workflows` VALUES ('447','1','4','2','3','0','0');
INSERT INTO `workflows` VALUES ('448','1','4','3','3','0','0');
INSERT INTO `workflows` VALUES ('449','1','4','5','3','0','0');
INSERT INTO `workflows` VALUES ('450','1','4','6','3','0','0');
INSERT INTO `workflows` VALUES ('451','1','5','1','3','0','0');
INSERT INTO `workflows` VALUES ('452','1','5','2','3','0','0');
INSERT INTO `workflows` VALUES ('453','1','5','3','3','0','0');
INSERT INTO `workflows` VALUES ('454','1','5','4','3','0','0');
INSERT INTO `workflows` VALUES ('455','1','5','6','3','0','0');
INSERT INTO `workflows` VALUES ('456','1','6','1','3','0','0');
INSERT INTO `workflows` VALUES ('457','1','6','2','3','0','0');
INSERT INTO `workflows` VALUES ('458','1','6','3','3','0','0');
INSERT INTO `workflows` VALUES ('459','1','6','4','3','0','0');
INSERT INTO `workflows` VALUES ('460','1','6','5','3','0','0');
INSERT INTO `workflows` VALUES ('462','1','1','2','4','0','0');
INSERT INTO `workflows` VALUES ('463','1','1','3','4','0','0');
INSERT INTO `workflows` VALUES ('464','1','1','4','4','0','0');
INSERT INTO `workflows` VALUES ('465','1','1','5','4','0','0');
INSERT INTO `workflows` VALUES ('466','1','1','6','4','0','0');
INSERT INTO `workflows` VALUES ('467','1','2','3','4','0','0');
INSERT INTO `workflows` VALUES ('468','1','2','4','4','0','0');
INSERT INTO `workflows` VALUES ('469','1','2','5','4','0','0');
INSERT INTO `workflows` VALUES ('470','1','2','6','4','0','0');
INSERT INTO `workflows` VALUES ('471','1','3','2','4','0','0');
INSERT INTO `workflows` VALUES ('472','1','3','4','4','0','0');
INSERT INTO `workflows` VALUES ('473','1','3','5','4','0','0');
INSERT INTO `workflows` VALUES ('474','1','4','2','4','0','0');
INSERT INTO `workflows` VALUES ('475','1','4','3','4','0','0');
INSERT INTO `workflows` VALUES ('476','1','4','5','4','0','0');
INSERT INTO `workflows` VALUES ('477','1','5','2','4','0','0');
INSERT INTO `workflows` VALUES ('478','1','5','3','4','0','0');
INSERT INTO `workflows` VALUES ('479','1','5','4','4','0','0');
INSERT INTO `workflows` VALUES ('480','1','6','2','4','0','0');
INSERT INTO `workflows` VALUES ('481','1','6','3','4','0','0');
INSERT INTO `workflows` VALUES ('482','1','6','4','4','0','0');
INSERT INTO `workflows` VALUES ('483','1','6','5','4','0','0');
INSERT INTO `workflows` VALUES ('493','1','1','5','5','0','0');
INSERT INTO `workflows` VALUES ('494','1','1','6','5','0','0');
INSERT INTO `workflows` VALUES ('495','1','2','6','5','0','0');
INSERT INTO `workflows` VALUES ('496','1','3','4','5','0','0');
INSERT INTO `workflows` VALUES ('497','1','3','5','5','0','0');
INSERT INTO `workflows` VALUES ('498','1','4','5','5','0','0');
INSERT INTO `workflows` VALUES ('499','1','5','2','5','0','0');
INSERT INTO `workflows` VALUES ('500','1','6','2','5','0','0');
INSERT INTO `workflows` VALUES ('508','3','1','2','3','0','0');
INSERT INTO `workflows` VALUES ('509','3','1','3','3','0','0');
INSERT INTO `workflows` VALUES ('510','3','1','4','3','0','0');
INSERT INTO `workflows` VALUES ('511','3','1','5','3','0','0');
INSERT INTO `workflows` VALUES ('512','3','1','6','3','0','0');
INSERT INTO `workflows` VALUES ('513','3','2','1','3','0','0');
INSERT INTO `workflows` VALUES ('514','3','2','3','3','0','0');
INSERT INTO `workflows` VALUES ('515','3','2','4','3','0','0');
INSERT INTO `workflows` VALUES ('516','3','2','5','3','0','0');
INSERT INTO `workflows` VALUES ('517','3','2','6','3','0','0');
INSERT INTO `workflows` VALUES ('518','3','3','1','3','0','0');
INSERT INTO `workflows` VALUES ('519','3','3','2','3','0','0');
INSERT INTO `workflows` VALUES ('520','3','3','4','3','0','0');
INSERT INTO `workflows` VALUES ('521','3','3','5','3','0','0');
INSERT INTO `workflows` VALUES ('522','3','3','6','3','0','0');
INSERT INTO `workflows` VALUES ('523','3','4','1','3','0','0');
INSERT INTO `workflows` VALUES ('524','3','4','2','3','0','0');
INSERT INTO `workflows` VALUES ('525','3','4','3','3','0','0');
INSERT INTO `workflows` VALUES ('526','3','4','5','3','0','0');
INSERT INTO `workflows` VALUES ('527','3','4','6','3','0','0');
INSERT INTO `workflows` VALUES ('528','3','5','1','3','0','0');
INSERT INTO `workflows` VALUES ('529','3','5','2','3','0','0');
INSERT INTO `workflows` VALUES ('530','3','5','3','3','0','0');
INSERT INTO `workflows` VALUES ('531','3','5','4','3','0','0');
INSERT INTO `workflows` VALUES ('532','3','5','6','3','0','0');
INSERT INTO `workflows` VALUES ('533','3','6','1','3','0','0');
INSERT INTO `workflows` VALUES ('534','3','6','2','3','0','0');
INSERT INTO `workflows` VALUES ('535','3','6','3','3','0','0');
INSERT INTO `workflows` VALUES ('536','3','6','4','3','0','0');
INSERT INTO `workflows` VALUES ('537','3','6','5','3','0','0');
INSERT INTO `workflows` VALUES ('539','3','1','2','4','0','0');
INSERT INTO `workflows` VALUES ('540','3','1','3','4','0','0');
INSERT INTO `workflows` VALUES ('541','3','1','4','4','0','0');
INSERT INTO `workflows` VALUES ('542','3','1','5','4','0','0');
INSERT INTO `workflows` VALUES ('543','3','1','6','4','0','0');
INSERT INTO `workflows` VALUES ('544','3','2','3','4','0','0');
INSERT INTO `workflows` VALUES ('545','3','2','4','4','0','0');
INSERT INTO `workflows` VALUES ('546','3','2','5','4','0','0');
INSERT INTO `workflows` VALUES ('547','3','2','6','4','0','0');
INSERT INTO `workflows` VALUES ('548','3','3','2','4','0','0');
INSERT INTO `workflows` VALUES ('549','3','3','4','4','0','0');
INSERT INTO `workflows` VALUES ('550','3','3','5','4','0','0');
INSERT INTO `workflows` VALUES ('551','3','4','2','4','0','0');
INSERT INTO `workflows` VALUES ('552','3','4','3','4','0','0');
INSERT INTO `workflows` VALUES ('553','3','4','5','4','0','0');
INSERT INTO `workflows` VALUES ('554','3','5','2','4','0','0');
INSERT INTO `workflows` VALUES ('555','3','5','3','4','0','0');
INSERT INTO `workflows` VALUES ('556','3','5','4','4','0','0');
INSERT INTO `workflows` VALUES ('557','3','6','2','4','0','0');
INSERT INTO `workflows` VALUES ('558','3','6','3','4','0','0');
INSERT INTO `workflows` VALUES ('559','3','6','4','4','0','0');
INSERT INTO `workflows` VALUES ('560','3','6','5','4','0','0');
INSERT INTO `workflows` VALUES ('570','3','1','5','5','0','0');
INSERT INTO `workflows` VALUES ('571','3','1','6','5','0','0');
INSERT INTO `workflows` VALUES ('572','3','2','6','5','0','0');
INSERT INTO `workflows` VALUES ('573','3','3','4','5','0','0');
INSERT INTO `workflows` VALUES ('574','3','3','5','5','0','0');
INSERT INTO `workflows` VALUES ('575','3','4','5','5','0','0');
INSERT INTO `workflows` VALUES ('576','3','5','2','5','0','0');
INSERT INTO `workflows` VALUES ('577','3','6','2','5','0','0');
INSERT INTO `workflows` VALUES ('585','4','1','2','3','0','0');
INSERT INTO `workflows` VALUES ('586','4','1','3','3','0','0');
INSERT INTO `workflows` VALUES ('587','4','1','4','3','0','0');
INSERT INTO `workflows` VALUES ('588','4','1','5','3','0','0');
INSERT INTO `workflows` VALUES ('589','4','1','6','3','0','0');
INSERT INTO `workflows` VALUES ('590','4','2','1','3','0','0');
INSERT INTO `workflows` VALUES ('591','4','2','3','3','0','0');
INSERT INTO `workflows` VALUES ('592','4','2','4','3','0','0');
INSERT INTO `workflows` VALUES ('593','4','2','5','3','0','0');
INSERT INTO `workflows` VALUES ('594','4','2','6','3','0','0');
INSERT INTO `workflows` VALUES ('595','4','3','1','3','0','0');
INSERT INTO `workflows` VALUES ('596','4','3','2','3','0','0');
INSERT INTO `workflows` VALUES ('597','4','3','4','3','0','0');
INSERT INTO `workflows` VALUES ('598','4','3','5','3','0','0');
INSERT INTO `workflows` VALUES ('599','4','3','6','3','0','0');
INSERT INTO `workflows` VALUES ('600','4','4','1','3','0','0');
INSERT INTO `workflows` VALUES ('601','4','4','2','3','0','0');
INSERT INTO `workflows` VALUES ('602','4','4','3','3','0','0');
INSERT INTO `workflows` VALUES ('603','4','4','5','3','0','0');
INSERT INTO `workflows` VALUES ('604','4','4','6','3','0','0');
INSERT INTO `workflows` VALUES ('605','4','5','1','3','0','0');
INSERT INTO `workflows` VALUES ('606','4','5','2','3','0','0');
INSERT INTO `workflows` VALUES ('607','4','5','3','3','0','0');
INSERT INTO `workflows` VALUES ('608','4','5','4','3','0','0');
INSERT INTO `workflows` VALUES ('609','4','5','6','3','0','0');
INSERT INTO `workflows` VALUES ('610','4','6','1','3','0','0');
INSERT INTO `workflows` VALUES ('611','4','6','2','3','0','0');
INSERT INTO `workflows` VALUES ('612','4','6','3','3','0','0');
INSERT INTO `workflows` VALUES ('613','4','6','4','3','0','0');
INSERT INTO `workflows` VALUES ('614','4','6','5','3','0','0');
INSERT INTO `workflows` VALUES ('616','4','1','2','4','0','0');
INSERT INTO `workflows` VALUES ('617','4','1','3','4','0','0');
INSERT INTO `workflows` VALUES ('618','4','1','4','4','0','0');
INSERT INTO `workflows` VALUES ('619','4','1','5','4','0','0');
INSERT INTO `workflows` VALUES ('620','4','1','6','4','0','0');
INSERT INTO `workflows` VALUES ('621','4','2','3','4','0','0');
INSERT INTO `workflows` VALUES ('622','4','2','4','4','0','0');
INSERT INTO `workflows` VALUES ('623','4','2','5','4','0','0');
INSERT INTO `workflows` VALUES ('624','4','2','6','4','0','0');
INSERT INTO `workflows` VALUES ('625','4','3','2','4','0','0');
INSERT INTO `workflows` VALUES ('626','4','3','4','4','0','0');
INSERT INTO `workflows` VALUES ('627','4','3','5','4','0','0');
INSERT INTO `workflows` VALUES ('628','4','4','2','4','0','0');
INSERT INTO `workflows` VALUES ('629','4','4','3','4','0','0');
INSERT INTO `workflows` VALUES ('630','4','4','5','4','0','0');
INSERT INTO `workflows` VALUES ('631','4','5','2','4','0','0');
INSERT INTO `workflows` VALUES ('632','4','5','3','4','0','0');
INSERT INTO `workflows` VALUES ('633','4','5','4','4','0','0');
INSERT INTO `workflows` VALUES ('634','4','6','2','4','0','0');
INSERT INTO `workflows` VALUES ('635','4','6','3','4','0','0');
INSERT INTO `workflows` VALUES ('636','4','6','4','4','0','0');
INSERT INTO `workflows` VALUES ('637','4','6','5','4','0','0');
INSERT INTO `workflows` VALUES ('647','4','1','5','5','0','0');
INSERT INTO `workflows` VALUES ('648','4','1','6','5','0','0');
INSERT INTO `workflows` VALUES ('649','4','2','6','5','0','0');
INSERT INTO `workflows` VALUES ('650','4','3','4','5','0','0');
INSERT INTO `workflows` VALUES ('651','4','3','5','5','0','0');
INSERT INTO `workflows` VALUES ('652','4','4','5','5','0','0');
INSERT INTO `workflows` VALUES ('653','4','5','2','5','0','0');
INSERT INTO `workflows` VALUES ('654','4','6','2','5','0','0');
INSERT INTO `workflows` VALUES ('670','3','1','5','6','0','0');
INSERT INTO `workflows` VALUES ('671','3','1','6','6','0','0');
INSERT INTO `workflows` VALUES ('672','3','2','6','6','0','0');
INSERT INTO `workflows` VALUES ('673','3','3','4','6','0','0');
INSERT INTO `workflows` VALUES ('674','3','3','5','6','0','0');
INSERT INTO `workflows` VALUES ('675','3','4','5','6','0','0');
INSERT INTO `workflows` VALUES ('676','3','5','2','6','0','0');
INSERT INTO `workflows` VALUES ('677','3','6','2','6','0','0');
INSERT INTO `workflows` VALUES ('685','1','1','5','6','0','0');
INSERT INTO `workflows` VALUES ('686','1','1','6','6','0','0');
INSERT INTO `workflows` VALUES ('687','1','2','6','6','0','0');
INSERT INTO `workflows` VALUES ('688','1','3','4','6','0','0');
INSERT INTO `workflows` VALUES ('689','1','3','5','6','0','0');
INSERT INTO `workflows` VALUES ('690','1','4','5','6','0','0');
INSERT INTO `workflows` VALUES ('691','1','5','2','6','0','0');
INSERT INTO `workflows` VALUES ('692','1','6','2','6','0','0');
INSERT INTO `workflows` VALUES ('700','4','1','5','6','0','0');
INSERT INTO `workflows` VALUES ('701','4','1','6','6','0','0');
INSERT INTO `workflows` VALUES ('702','4','2','6','6','0','0');
INSERT INTO `workflows` VALUES ('703','4','3','4','6','0','0');
INSERT INTO `workflows` VALUES ('704','4','3','5','6','0','0');
INSERT INTO `workflows` VALUES ('705','4','4','5','6','0','0');
INSERT INTO `workflows` VALUES ('706','4','5','2','6','0','0');
INSERT INTO `workflows` VALUES ('707','4','6','2','6','0','0');
INSERT INTO `workflows` VALUES ('708','2','6','2','6','0','0');
INSERT INTO `workflows` VALUES ('709','2','1','6','6','0','0');
INSERT INTO `workflows` VALUES ('710','2','1','5','6','0','0');
INSERT INTO `workflows` VALUES ('711','2','2','6','6','0','0');
INSERT INTO `workflows` VALUES ('712','2','3','4','6','0','0');
INSERT INTO `workflows` VALUES ('713','2','3','5','6','0','0');
INSERT INTO `workflows` VALUES ('714','2','4','5','6','0','0');
INSERT INTO `workflows` VALUES ('715','2','5','2','6','0','0');

