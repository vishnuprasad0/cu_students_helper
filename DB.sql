/*
SQLyog Community Edition- MySQL GUI v8.03 
MySQL - 5.5.5-10.4.25-MariaDB : Database - cu student helper
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`cu student helper` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `cu student helper`;

/*Table structure for table `feedbacks` */

DROP TABLE IF EXISTS `feedbacks`;

CREATE TABLE `feedbacks` (
  `FEEDBACK_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `FEEDBACK` varchar(1000) DEFAULT NULL,
  `NAME` varchar(30) DEFAULT NULL,
  `DATE` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`FEEDBACK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedbacks` */

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `LOGIN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `TYPE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`LOGIN_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`LOGIN_ID`,`USERNAME`,`PASSWORD`,`TYPE`) values (1,'admin','admin','admin'),(2,'t','t','teacher');

/*Table structure for table `materials` */

DROP TABLE IF EXISTS `materials`;

CREATE TABLE `materials` (
  `M_ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGIN_ID` int(11) DEFAULT NULL,
  `MATERIAL` varchar(350) DEFAULT NULL,
  `DATE` varchar(15) DEFAULT NULL,
  `SUBJECT_NAME` varchar(20) DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`M_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `materials` */

insert  into `materials`(`M_ID`,`LOGIN_ID`,`MATERIAL`,`DATE`,`SUBJECT_NAME`,`STATUS`) values (1,1,NULL,'7',NULL,NULL);

/*Table structure for table `notification` */

DROP TABLE IF EXISTS `notification`;

CREATE TABLE `notification` (
  `NOTIFICATION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOTIFICATION` varchar(300) DEFAULT NULL,
  `DATE` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`NOTIFICATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `notification` */

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `STUDENT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGIN_ID` int(11) DEFAULT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `DEPARTMENT` varchar(50) DEFAULT NULL,
  `DOB` varchar(30) DEFAULT NULL,
  `EMAIL_ID` varchar(255) DEFAULT NULL,
  `PLACE` varchar(100) DEFAULT NULL,
  `POST_OFFICE` varchar(100) DEFAULT NULL,
  `PIN_CODE` varchar(11) DEFAULT NULL,
  `MOBILE_NUMBER` bigint(11) DEFAULT NULL,
  `COLLEGE` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`STUDENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`STUDENT_ID`,`LOGIN_ID`,`FIRST_NAME`,`LAST_NAME`,`GENDER`,`DEPARTMENT`,`DOB`,`EMAIL_ID`,`PLACE`,`POST_OFFICE`,`PIN_CODE`,`MOBILE_NUMBER`,`COLLEGE`) values (1,0,'name','name','MALE','BCA','1 2 3','gmail.com','clt','kkd',0,1,'clg'),(2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL);

/*Table structure for table `teachers` */

DROP TABLE IF EXISTS `teachers`;

CREATE TABLE `teachers` (
  `TEACHER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `QUALIFICATION` varchar(50) DEFAULT NULL,
  `GENDER` varchar(15) DEFAULT NULL,
  `DOB` varchar(30) DEFAULT NULL,
  `DEPARTMENT` varchar(50) DEFAULT NULL,
  `COLLEGE` varchar(100) DEFAULT NULL,
  `EMAIL_ID` varchar(255) DEFAULT NULL,
  `MOBILE_NO` varchar(11) DEFAULT NULL,
  `PLACE` varchar(100) DEFAULT NULL,
  `POST_OFFICE` varchar(100) DEFAULT NULL,
  `PIN_CODE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`TEACHER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `teachers` */

insert  into `teachers`(`TEACHER_ID`,`FIRST_NAME`,`LAST_NAME`,`QUALIFCATION`,`GENDER`,`DOB`,`DEPARTMENT`,`COLLEGE`,`EMAIL_ID`,`MOBILE_NO`,`PLACE`,`POST_OFFICE`,`PIN_CODE`) values (1,'teacher','teacher','a','b','a',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
