# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.29)
# Database: temp
# Generation Time: 2013-05-30 00:16:44 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table AuthAssignment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `AuthAssignment`;

CREATE TABLE `AuthAssignment` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`itemname`,`userid`),
  CONSTRAINT `AuthAssignment_ibfk_1` FOREIGN KEY (`itemname`) REFERENCES `AuthItem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `AuthAssignment` WRITE;
/*!40000 ALTER TABLE `AuthAssignment` DISABLE KEYS */;

INSERT INTO `AuthAssignment` (`itemname`, `userid`, `bizrule`, `data`)
VALUES
	('Admin','1',NULL,'N;'),
	('User.Profile.*','1',NULL,'N;');

/*!40000 ALTER TABLE `AuthAssignment` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table AuthItem
# ------------------------------------------------------------

DROP TABLE IF EXISTS `AuthItem`;

CREATE TABLE `AuthItem` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `AuthItem` WRITE;
/*!40000 ALTER TABLE `AuthItem` DISABLE KEYS */;

INSERT INTO `AuthItem` (`name`, `type`, `description`, `bizrule`, `data`)
VALUES
	('Admin',2,NULL,NULL,'N;'),
	('Authenticated',2,NULL,NULL,'N;'),
	('Guest',2,NULL,NULL,'N;'),
	('Site.*',1,NULL,NULL,'N;'),
	('Site.Contact',0,NULL,NULL,'N;'),
	('Site.Error',0,NULL,NULL,'N;'),
	('Site.Index',0,NULL,NULL,'N;'),
	('Site.Login',0,NULL,NULL,'N;'),
	('Site.Logout',0,NULL,NULL,'N;'),
	('User.Activation.*',1,NULL,NULL,'N;'),
	('User.Activation.Activation',0,NULL,NULL,'N;'),
	('User.Admin.*',1,NULL,NULL,'N;'),
	('User.Admin.Admin',0,NULL,NULL,'N;'),
	('User.Admin.Create',0,NULL,NULL,'N;'),
	('User.Admin.Delete',0,NULL,NULL,'N;'),
	('User.Admin.Update',0,NULL,NULL,'N;'),
	('User.Admin.View',0,NULL,NULL,'N;'),
	('User.Default.*',1,NULL,NULL,'N;'),
	('User.Default.Index',0,NULL,NULL,'N;'),
	('User.Login.*',1,NULL,NULL,'N;'),
	('User.Login.Login',0,NULL,NULL,'N;'),
	('User.Logout.*',1,NULL,NULL,'N;'),
	('User.Logout.Logout',0,NULL,NULL,'N;'),
	('User.Profile.*',1,NULL,NULL,'N;'),
	('User.Profile.Changepassword',0,NULL,NULL,'N;'),
	('User.Profile.Edit',0,NULL,NULL,'N;'),
	('User.Profile.Profile',0,NULL,NULL,'N;'),
	('User.ProfileField.*',1,NULL,NULL,'N;'),
	('User.ProfileField.Admin',0,NULL,NULL,'N;'),
	('User.ProfileField.Create',0,NULL,NULL,'N;'),
	('User.ProfileField.Delete',0,NULL,NULL,'N;'),
	('User.ProfileField.Update',0,NULL,NULL,'N;'),
	('User.ProfileField.View',0,NULL,NULL,'N;'),
	('User.Recovery.*',1,NULL,NULL,'N;'),
	('User.Recovery.Recovery',0,NULL,NULL,'N;'),
	('User.Registration.*',1,NULL,NULL,'N;'),
	('User.Registration.Registration',0,NULL,NULL,'N;'),
	('User.User.*',1,NULL,NULL,'N;'),
	('User.User.Index',0,NULL,NULL,'N;'),
	('User.User.View',0,NULL,NULL,'N;');

/*!40000 ALTER TABLE `AuthItem` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table AuthItemChild
# ------------------------------------------------------------

DROP TABLE IF EXISTS `AuthItemChild`;

CREATE TABLE `AuthItemChild` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `AuthItemChild_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `AuthItem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `AuthItemChild_ibfk_2` FOREIGN KEY (`child`) REFERENCES `AuthItem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `AuthItemChild` WRITE;
/*!40000 ALTER TABLE `AuthItemChild` DISABLE KEYS */;

INSERT INTO `AuthItemChild` (`parent`, `child`)
VALUES
	('Guest','User.Profile.*'),
	('Guest','User.Profile.Profile');

/*!40000 ALTER TABLE `AuthItemChild` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table comment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `create_time` int(11) DEFAULT NULL,
  `author` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_comment_post` (`post_id`),
  CONSTRAINT `FK_comment_post` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;

INSERT INTO `comment` (`id`, `content`, `status`, `create_time`, `author`, `email`, `url`, `post_id`)
VALUES
	(1,'This is a test comment.',2,1230952187,'Tester','tester@example.com',NULL,2);

/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `content`;

CREATE TABLE `content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page` varchar(11) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;

INSERT INTO `content` (`id`, `page`, `title`, `content`)
VALUES
	(1,'Home','How FundMe Works',NULL),
	(2,'About','Our Mission','FundMe wishes to provide the opportunity for students to learn beyond secondary education without the threat of accumulating a large and overwhelming amount of debt. It takes a village to raise a child and we want to be that village.	'),
	(3,'About','What We Believe',NULL);

/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table lookup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lookup`;

CREATE TABLE `lookup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `code` int(11) NOT NULL,
  `type` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `lookup` WRITE;
/*!40000 ALTER TABLE `lookup` DISABLE KEYS */;

INSERT INTO `lookup` (`id`, `name`, `code`, `type`, `position`)
VALUES
	(1,'Draft',1,'PostStatus',1),
	(2,'Published',2,'PostStatus',2),
	(3,'Archived',3,'PostStatus',3),
	(4,'Pending Approval',1,'CommentStatus',1),
	(5,'Approved',2,'CommentStatus',2);

/*!40000 ALTER TABLE `lookup` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table post
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `tags` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_post_author` (`author_id`),
  CONSTRAINT `FK_post_author` FOREIGN KEY (`author_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;

INSERT INTO `post` (`id`, `title`, `content`, `tags`, `status`, `create_time`, `update_time`, `author_id`)
VALUES
	(1,'Welcome!','This blog system is developed using Yii. It is meant to demonstrate how to use Yii to build a complete real-world application. Complete source code may be found in the Yii releases.\n\nFeel free to try this system by writing new posts and posting comments.','yii, blog',2,1230952187,1230952187,1),
	(2,'A Test Post','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','test',2,1230952187,1230952187,1);

/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table profiles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `lastname` varchar(50) NOT NULL DEFAULT '',
  `firstname` varchar(50) NOT NULL DEFAULT '',
  `need` int(10) NOT NULL DEFAULT '0',
  `college` varchar(50) NOT NULL DEFAULT '',
  `career` varchar(50) NOT NULL DEFAULT '',
  `statement` varchar(500) NOT NULL DEFAULT '',
  `profileimg` varchar(255) NOT NULL DEFAULT 'images/profile_pic.png',
  `upload1` varchar(255) NOT NULL DEFAULT 'images/file.png',
  `upload2` varchar(255) NOT NULL DEFAULT 'images/file.png',
  `upload3` varchar(255) NOT NULL DEFAULT 'images/file.png',
  `upload4` varchar(255) NOT NULL DEFAULT 'images/file.png',
  `gpa` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`user_id`),
  CONSTRAINT `user_profile_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;

INSERT INTO `profiles` (`user_id`, `lastname`, `firstname`, `need`, `college`, `career`, `statement`, `profileimg`, `upload1`, `upload2`, `upload3`, `upload4`, `gpa`)
VALUES
	(1,'Jones','Elizabeth',25000,'','','','assets/2.png','images/file.png','images/file.png','images/file.png','images/file.png',0.00),
	(2,'Smith','Alex',25000,'University of CA Los Angeles','Computer Science','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut rutrum mauris in nisi varius vel aliquet mauris pretium. Vivamus cursus odio sed nulla egestas tempor. Mauris lobortis ligula et leo scelerisque pretium. Donec nisl lorem, congue eu elementum at, euismod eget libero. Curabitur lacinia, mauris vel tempus vulputate, magna ligula fringilla sem, et porta mi nisi vitae sem. Cras in euismod risus. Mauris vel viverra neque. Etiam lacinia, mi non hendrerit hendrerit, nunc est condimentum erat, ','assets/3.png','images/file.png','images/file.png','images/file.png','images/file.png',3.75),
	(3,'Small','Tiffany',0,'','','','images/profile_pic.png','images/file.png','images/file.png','images/file.png','images/file.png',0.00),
	(4,'Small','Tiffany',0,'','','','images/profile_pic.png','images/file.png','images/file.png','images/file.png','images/file.png',0.00),
	(5,'Allowitz','Sophia',0,'','','','images/profile_pic.png','images/file.png','images/file.png','images/file.png','images/file.png',0.00);

/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table profiles_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `profiles_fields`;

CREATE TABLE `profiles_fields` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `varname` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `field_type` varchar(50) NOT NULL,
  `field_size` varchar(15) NOT NULL DEFAULT '0',
  `field_size_min` varchar(15) NOT NULL DEFAULT '0',
  `required` int(1) NOT NULL DEFAULT '0',
  `match` varchar(255) NOT NULL DEFAULT '',
  `range` varchar(255) NOT NULL DEFAULT '',
  `error_message` varchar(255) NOT NULL DEFAULT '',
  `other_validator` varchar(5000) NOT NULL DEFAULT '',
  `default` varchar(255) NOT NULL DEFAULT '',
  `widget` varchar(255) NOT NULL DEFAULT '',
  `widgetparams` varchar(5000) NOT NULL DEFAULT '',
  `position` int(3) NOT NULL DEFAULT '0',
  `visible` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `varname` (`varname`,`widget`,`visible`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

LOCK TABLES `profiles_fields` WRITE;
/*!40000 ALTER TABLE `profiles_fields` DISABLE KEYS */;

INSERT INTO `profiles_fields` (`id`, `varname`, `title`, `field_type`, `field_size`, `field_size_min`, `required`, `match`, `range`, `error_message`, `other_validator`, `default`, `widget`, `widgetparams`, `position`, `visible`)
VALUES
	(1,'lastname','Last Name','VARCHAR','50','3',1,'','','Incorrect Last Name (length between 3 and 50 characters).','','','','',2,3),
	(2,'firstname','First Name','VARCHAR','50','3',1,'','','Incorrect First Name (length between 3 and 50 characters).','','','','',1,3),
	(6,'need','Need','INTEGER','10','0',0,'','','','','0','','',4,3),
	(8,'college','College','VARCHAR','50','5',0,'','','','','','','',3,3),
	(9,'career','Career','VARCHAR','50','5',0,'','','','','','','',5,3),
	(10,'statement','Statement','VARCHAR','500','100',0,'','','','','','','',6,3),
	(17,'profileimg','Profile Picture','VARCHAR','255','0',0,'','','','','images/profile_pic.png','UWfile','',0,3),
	(18,'upload1','File 1','VARCHAR','255','0',0,'','','','','images/file.png','UWfile','',7,3),
	(19,'upload2','File 2','VARCHAR','255','0',0,'','','','','images/file.png','UWfile','',8,3),
	(20,'upload3','File 3','VARCHAR','255','0',0,'','','','','images/file.png','UWfile','',9,3),
	(21,'upload4','File 4','VARCHAR','255','0',0,'','','','','images/file.png','UWfile','',10,3),
	(22,'gpa','Current GPA','DECIMAL','10,2','0',0,'','','','','0','','',11,3);

/*!40000 ALTER TABLE `profiles_fields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Rights
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Rights`;

CREATE TABLE `Rights` (
  `itemname` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`itemname`),
  CONSTRAINT `Rights_ibfk_1` FOREIGN KEY (`itemname`) REFERENCES `AuthItem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table tag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tag`;

CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `frequency` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;

INSERT INTO `tag` (`id`, `name`, `frequency`)
VALUES
	(1,'yii',1),
	(2,'blog',1),
	(3,'test',1);

/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tbl_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_user`;

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `profile` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;

INSERT INTO `tbl_user` (`id`, `username`, `password`, `email`, `profile`)
VALUES
	(1,'demo','$2a$10$JTJf6/XqC94rrOtzuF397OHa4mbmZrVTBOQCmYD9U.obZRUut4BoC','webmaster@example.com',NULL);

/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activkey` varchar(128) NOT NULL DEFAULT '',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastvisit_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `superuser` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `status` (`status`),
  KEY `superuser` (`superuser`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `username`, `password`, `email`, `activkey`, `create_at`, `lastvisit_at`, `superuser`, `status`)
VALUES
	(1,'admin','21232f297a57a5a743894a0e4a801fc3','webmaster@example.com','9a24eff8c15a6a141ece27eb6947da0f','2013-05-17 13:16:02','2013-05-18 23:13:03',1,1),
	(2,'demo','fe01ce2a7fbac8fafaed7c982a04e229','demo@example.net','099f825543f7850cc038b90aaff39fac','2013-05-17 13:16:02','2013-05-17 23:58:38',0,1),
	(3,'CollegeGal23','5f4dcc3b5aa765d61d8327deb882cf99','tiffany.small@me.com','44f9281db3788bc0357ff02439bb391d','2013-05-23 11:58:26','0000-00-00 00:00:00',0,0),
	(4,'TSmall86','9a515a7bb61baef599b936cbe1fb064c','tiffany.janae@me.com','54d3b2be6d2f25c221e26bba4bc03007','2013-05-29 12:35:18','0000-00-00 00:00:00',0,0),
	(5,'CollegeGal21','5f4dcc3b5aa765d61d8327deb882cf99','sophia@example.com','972331bd84964da56d7d766a10387470','2013-05-29 17:00:54','0000-00-00 00:00:00',0,1);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
