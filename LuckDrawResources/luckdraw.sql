# Host: 127.0.0.1  (Version 8.0.16)
# Date: 2021-12-15 11:03:22
# Generator: MySQL-Front 6.0  (Build 1.57)


#
# Structure for table "awardinfo"
#

DROP TABLE IF EXISTS `awardinfo`;
CREATE TABLE `awardinfo` (
  `Aid` int(11) NOT NULL AUTO_INCREMENT,
  `awardname` varchar(255) DEFAULT NULL,
  `awardImg` varchar(255) DEFAULT NULL,
  `awardprice` float DEFAULT NULL,
  `stauts` int(11) DEFAULT NULL,
  `mark` varchar(50) DEFAULT NULL,
  `awardnum` int(11) DEFAULT '0',
  `rankid` int(11) DEFAULT '0',
  PRIMARY KEY (`Aid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "awardinfo"
#

INSERT INTO `awardinfo` VALUES (1,'Nintendo switch','无',2000,0,'掌机',0,0),(2,'Nintendo switch','无',2000,0,'掌机',0,0);

#
# Structure for table "rankinfo"
#

DROP TABLE IF EXISTS `rankinfo`;
CREATE TABLE `rankinfo` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `rankname` varchar(255) DEFAULT NULL,
  `ranknum` int(11) DEFAULT NULL,
  `stauts` int(11) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "rankinfo"
#

INSERT INTO `rankinfo` VALUES (1,'一等奖',1,1),(2,'二等奖',2,1),(3,'三等奖',3,1);

#
# Structure for table "stuffinfo"
#

DROP TABLE IF EXISTS `stuffinfo`;
CREATE TABLE `stuffinfo` (
  `Sid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `stauts` int(11) DEFAULT NULL,
  PRIMARY KEY (`Sid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "stuffinfo"
#

INSERT INTO `stuffinfo` VALUES (1,'小猪配齐','16789056234',0),(2,'小猪配齐','16789056234',0);

#
# Structure for table "awardwinner"
#

DROP TABLE IF EXISTS `awardwinner`;
CREATE TABLE `awardwinner` (
  `Gid` int(11) NOT NULL AUTO_INCREMENT,
  `Sid` int(11) DEFAULT NULL,
  `Aid` int(11) DEFAULT NULL,
  PRIMARY KEY (`Gid`),
  KEY `fk_stuff` (`Sid`),
  KEY `fk_award` (`Aid`),
  CONSTRAINT `fk_award` FOREIGN KEY (`Aid`) REFERENCES `awardinfo` (`Aid`),
  CONSTRAINT `fk_stuff` FOREIGN KEY (`Sid`) REFERENCES `stuffinfo` (`Sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "awardwinner"
#


#
# Structure for table "theme"
#

DROP TABLE IF EXISTS `theme`;
CREATE TABLE `theme` (
  `Tid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Tid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "theme"
#

INSERT INTO `theme` VALUES (1,'热烈XXXX','blue');

#
# Structure for table "userinfo"
#

DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `Uid` int(11) NOT NULL AUTO_INCREMENT,
  `admin` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `headImg` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "userinfo"
#

INSERT INTO `userinfo` VALUES (1,'admin','root','麦兜','无'),(2,'admin','root','麦兜','无');
