
/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP DATABASE 'websiteData';
CREATE DATABASE /*!32312 IF NOT EXISTS*/`websiteData` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `websiteData`;

/*Table structure for table `websites` */

DROP TABLE IF EXISTS `websites`;

CREATE TABLE `websites` (
  `url` varchar(50) NOT NULL,
  `title` varchar(10000),
  `data` varchar(10000)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;


