/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.7.22 : Database - sms_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sms_db` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `sms_db`;

/*Table structure for table `sms_d_applytask` */

DROP TABLE IF EXISTS `sms_d_applytask`;

CREATE TABLE `sms_d_applytask` (
  `taskId` int(11) NOT NULL AUTO_INCREMENT,
  `sendPerson` varchar(20) COLLATE utf8_bin NOT NULL,
  `applyTime` datetime NOT NULL,
  `templateId` int(11) NOT NULL,
  `smsContext` varchar(200) COLLATE utf8_bin NOT NULL,
  `beginTime` datetime NOT NULL,
  `endTime` datetime NOT NULL,
  `runTime` varchar(50) COLLATE utf8_bin NOT NULL,
  `sendSmsNums` int(11) NOT NULL,
  `totalPrice` decimal(7,3) NOT NULL,
  `taskDesc` varchar(50) COLLATE utf8_bin NOT NULL,
  `applyDevel` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `approvalStatus` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `remark1` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `remark2` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`taskId`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `sms_d_smsphonecurrent` */

DROP TABLE IF EXISTS `sms_d_smsphonecurrent`;

CREATE TABLE `sms_d_smsphonecurrent` (
  `uniqueId` int(11) NOT NULL AUTO_INCREMENT,
  `taskId` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `telephone` varchar(20) COLLATE utf8_bin NOT NULL,
  `createTime` datetime NOT NULL,
  `remark1` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`uniqueId`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `sms_d_smsreport` */

DROP TABLE IF EXISTS `sms_d_smsreport`;

CREATE TABLE `sms_d_smsreport` (
  `uniqueId` int(11) NOT NULL AUTO_INCREMENT,
  `phoneNumber` varchar(20) COLLATE utf8_bin NOT NULL,
  `success` tinyint(1) NOT NULL,
  `bizId` varchar(30) COLLATE utf8_bin NOT NULL,
  `outId` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `sendTime` varchar(30) COLLATE utf8_bin NOT NULL,
  `reportTime` varchar(30) COLLATE utf8_bin NOT NULL,
  `errCode` varchar(30) COLLATE utf8_bin NOT NULL,
  `errMsg` varchar(30) COLLATE utf8_bin NOT NULL,
  `smsSize` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `remark` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`uniqueId`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `sms_d_smsup` */

DROP TABLE IF EXISTS `sms_d_smsup`;

CREATE TABLE `sms_d_smsup` (
  `unique` int(11) NOT NULL AUTO_INCREMENT,
  `phoneNumber` varchar(20) COLLATE utf8_bin NOT NULL,
  `content` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `signName` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `sendTime` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `destCode` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `sequence_id` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `remark` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`unique`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `sms_o_sign` */

DROP TABLE IF EXISTS `sms_o_sign`;

CREATE TABLE `sms_o_sign` (
  `signId` int(11) NOT NULL AUTO_INCREMENT,
  `signName` varchar(30) COLLATE utf8_bin NOT NULL,
  `approvalNo` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `approvalDesc` varchar(20) COLLATE utf8_bin NOT NULL,
  `approvalStatus` varchar(20) COLLATE utf8_bin NOT NULL,
  `remark1` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`signId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Table structure for table `sms_o_smstemplate` */

DROP TABLE IF EXISTS `sms_o_smstemplate`;

CREATE TABLE `sms_o_smstemplate` (
  `templateId` int(11) NOT NULL AUTO_INCREMENT,
  `signId` int(11) DEFAULT NULL,
  `templateName` varchar(20) COLLATE utf8_bin NOT NULL,
  `templateType` varchar(20) COLLATE utf8_bin NOT NULL,
  `smsUnitPrice` decimal(7,3) NOT NULL,
  `smsTemplateCode` varchar(20) COLLATE utf8_bin NOT NULL,
  `smsTemplateContext` varchar(200) COLLATE utf8_bin NOT NULL,
  `smsTemplateVars` varchar(200) COLLATE utf8_bin NOT NULL,
  `smsTemplateDesc` varchar(200) COLLATE utf8_bin NOT NULL,
  `createTime` datetime NOT NULL,
  `approveStatus` varchar(20) COLLATE utf8_bin NOT NULL,
  `remark1` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`templateId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
