# ************************************************************
# Sequel Pro SQL dump
# Version 4529
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.44-MariaDB-log)
# Database: panama
# Generation Time: 2016-05-09 11:41:58 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table countriesNW
# ------------------------------------------------------------

DROP TABLE IF EXISTS `countriesNW`;

CREATE TABLE `countriesNW` (
  `country_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `country_code` char(2) DEFAULT NULL,
  `country_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table edges_1DNW
# ------------------------------------------------------------

DROP TABLE IF EXISTS `edges_1DNW`;

CREATE TABLE `edges_1DNW` (
  `Unique_ID` int(11) unsigned NOT NULL DEFAULT '0',
  `Entity_ID1` int(11) unsigned DEFAULT NULL,
  `Entity_ID2` int(11) unsigned DEFAULT NULL,
  `description_` varchar(64) DEFAULT NULL,
  `date_from` char(28) DEFAULT NULL,
  `date_to` char(28) DEFAULT NULL,
  `direction` tinyint(4) DEFAULT NULL,
  `chinesePos` varchar(16) DEFAULT NULL,
  `linkType` varchar(4) DEFAULT NULL,
  KEY `Entity_ID1` (`Entity_ID1`),
  KEY `Entity_ID2` (`Entity_ID2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table node_countriesNW
# ------------------------------------------------------------

DROP TABLE IF EXISTS `node_countriesNW`;

CREATE TABLE `node_countriesNW` (
  `NODEID1` int(11) unsigned DEFAULT NULL,
  `country_code` char(2) DEFAULT NULL,
  `country_name` varchar(64) DEFAULT NULL,
  `country_id` smallint(5) unsigned DEFAULT NULL,
  KEY `NODEID1` (`NODEID1`),
  KEY `country_id` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table nodesNW
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nodesNW`;

CREATE TABLE `nodesNW` (
  `Unique_ID` int(11) unsigned DEFAULT NULL,
  `subtypes_` varchar(32) DEFAULT NULL,
  `Description_` varchar(255) DEFAULT NULL,
  `searchField_` text,
  `status` varchar(1) DEFAULT NULL,
  `desc_status` varchar(64) DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `desc_company_type` varchar(64) DEFAULT NULL,
  `inc_dat` char(28) DEFAULT NULL,
  `dorm_dat` char(28) DEFAULT NULL,
  `juris` varchar(8) DEFAULT NULL,
  `desc_jurisdiction` varchar(32) DEFAULT '',
  `completeAddresses` text,
  `agencyID` tinyint(4) DEFAULT NULL,
  `tax_stat` varchar(8) DEFAULT NULL,
  `tax_stat_description` varchar(64) DEFAULT NULL,
  KEY `Unique_ID` (`Unique_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
