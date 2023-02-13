/*
SQLyog Community v13.0.1 (64 bit)
MySQL - 5.5.20-log : Database - cu student helper
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
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
<<<<<<< HEAD
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
=======
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
>>>>>>> origin/master

/*Data for the table `feedbacks` */

insert  into `feedbacks`(`FEEDBACK_ID`,`USER_ID`,`FEEDBACK`,`NAME`,`DATE`) values 
<<<<<<< HEAD
(1,0,'test','test','test'),
(2,1,'ggggggggggg',NULL,'2023-01-07'),
(3,1,'aaaaaaa',NULL,'2023-01-07'),
(4,1,'feedback senteddd',NULL,'2023-01-13'),
(5,1,'wooden',NULL,'2023-01-14'),
(6,1,'wig fghdhdjjhhdhhdddhggddifrjcjevkdv',NULL,'2023-01-14');
=======
(1,0,'test','test','test');
>>>>>>> origin/master

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `LOGIN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `TYPE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`LOGIN_ID`)
<<<<<<< HEAD
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;
=======
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
>>>>>>> origin/master

/*Data for the table `login` */

insert  into `login`(`LOGIN_ID`,`USERNAME`,`PASSWORD`,`TYPE`) values 
(1,'admin','admin','admin'),
(2,'t','t','teacher'),
<<<<<<< HEAD
(3,'s','s','student'),
(4,'d','d','student'),
(5,'ammu','ammu','teacher'),
(6,'ammu','ammu','teacher'),
(9,'ammu','cfc','teacher'),
(10,'ammu','ammu','teacher'),
(11,'ammu','123','teacher'),
(102,'rahul','rahul','student'),
(103,'g','g','student');
=======
(3,'ammu','ammu','teacher'),
(4,'ammu','ammu','teacher'),
(5,'ammu','ammu','teacher'),
(6,'ammu','ammu','teacher'),
(7,'ammu','ammu','teacher'),
(8,'ammu','cfc','teacher'),
(9,'ammu','cfc','teacher'),
(10,'ammu','ammu','teacher');
>>>>>>> origin/master

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
<<<<<<< HEAD
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
=======
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
>>>>>>> origin/master

/*Data for the table `materials` */

insert  into `materials`(`M_ID`,`LOGIN_ID`,`MATERIAL`,`DATE`,`SUBJECT_NAME`,`STATUS`) values 
(1,1,'test','01-01-22','toc','accepted'),
<<<<<<< HEAD
(4,2,'e-commerce.pptx','2022-12-03','ecommerce','accepted'),
(5,2,'coa_assignment.pdf','2022-12-05','coa','accepted'),
(7,2,'coa_assignment.pdf','2022-12-05','coa','accepted'),
(10,2,'e-commerce_1.pptx','2022-12-05','e commerse','accepted'),
(12,2,'1134259.jpg','2023-01-28','test img','accepted'),
(13,1,'Hallticket_SFAUBCA037_08-01-2023_1_1.pdf','2023-01-28','sample','pending');
=======
(4,2,'e-commerce.pptx','2022-12-03','ecommerce','accepted');
>>>>>>> origin/master

/*Table structure for table `notification` */

DROP TABLE IF EXISTS `notification`;

CREATE TABLE `notification` (
  `NOTIFICATION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOTIFICATION` varchar(300) DEFAULT NULL,
  `DATE` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`NOTIFICATION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `notification` */

insert  into `notification`(`NOTIFICATION_ID`,`NOTIFICATION`,`DATE`) values 
(1,'test','test'),
(2,'test','test');

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
<<<<<<< HEAD
  `MOBILE_NUMBER` bigint(11) DEFAULT NULL,
  `COLLEGE` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`STUDENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`STUDENT_ID`,`LOGIN_ID`,`FIRST_NAME`,`LAST_NAME`,`GENDER`,`DEPARTMENT`,`DOB`,`EMAIL_ID`,`PLACE`,`POST_OFFICE`,`MOBILE_NUMBER`,`COLLEGE`) values 
(4,41,'fname','lname',NULL,'dep',NULL,'email','place','post',0,'CLg'),
(5,42,'','ggg',NULL,'ggv',NULL,'fff','vvv','vvv',0,'vvv'),
(6,43,'fcc','ffff',NULL,'vc',NULL,'fcf','vfc','cfff',0,'fff'),
(7,44,'first name ','l namw',NULL,'dep',NULL,'email','place','post',0,'college'),
(8,45,'fname','laname',NULL,'dep','male','email','place','post',0,'college'),
(9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10,97,'2023-01-14','female','fnameeee','lnameee','pppppppp','mailll','postrtt','987654321',0,'fffffffff'),
(11,98,'firstname','lanme','Other','department','2023-01-28','email','placess','postt',984654321,'college'),
(12,99,'A','B','Male','bcom','2023-01-28','Email','avd','athavanad',9999999999,'safa'),
(13,100,'A','B','Male','bcom','2023-01-28','Email','avd','athavanad',9999999999,'safa'),
(14,101,'rahul','kk','Male','bca','2023-01-28','rahul@domain.com','vly','kavumpuram',984654351,'safa'),
(15,102,'rahul','kk','Male','bca','2023-01-28','gmail.com','avd','post',9846543123,'college'),
(16,103,'cc','ff','Other','v','2023-01-28','f','v','c',8,'v');
=======
  `PIN_CODE` varchar(11) DEFAULT NULL,
  `MOBILE_NUMBER` bigint(11) DEFAULT NULL,
  `COLLEGE` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`STUDENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`STUDENT_ID`,`LOGIN_ID`,`FIRST_NAME`,`LAST_NAME`,`GENDER`,`DEPARTMENT`,`DOB`,`EMAIL_ID`,`PLACE`,`POST_OFFICE`,`PIN_CODE`,`MOBILE_NUMBER`,`COLLEGE`) values 
(1,0,'name','name','MALE','BCA','1 2 3','gmail.com','clt','kkd','0',1,'clg'),
(2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL);
>>>>>>> origin/master

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
<<<<<<< HEAD
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
=======
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
>>>>>>> origin/master

/*Data for the table `teachers` */

insert  into `teachers`(`TEACHER_ID`,`FIRST_NAME`,`LAST_NAME`,`QUALIFICATION`,`GENDER`,`DOB`,`DEPARTMENT`,`COLLEGE`,`EMAIL_ID`,`MOBILE_NO`,`PLACE`,`POST_OFFICE`,`PIN_CODE`) values 
(2,'ammu','m','mca','female','18-8-2021','cs','ihrd','ammu@gmail.com','8089677890','test','jj','678905'),
(3,'ammu','m','mca','male','18-8-2021','cs','ihrd','ammu@gmail.com','8089677890','test','jj','678905'),
(4,'ammu','m','mca','male','18-8-2021','cs','ihrd','ammu@gmail.com','8089677890','test','jj','678905'),
(5,'ammu','mmu','mca','female','23/02/33','bv','ihrd','ammu@gmail.com','8089677890','fdd','dfd','678905'),
(6,'ammu','mmu','mca','female','mmmmmmm','bv','ihrd','ammu@gmail.com','8089677890','fdd','dfd','678905'),
<<<<<<< HEAD
(7,'ammu','mmu','mca','female','2019-11-12','cs','safa','ammu@gmail.com','8089677890','test','dfd','678905'),
(8,'ammu','m','mca','male','2019-12-11','cs','safa','ammu@gmail.com','8089677890','test','kerala','678905');
=======
(7,'ammu','mmu','mca','female','2019-11-12','cs','safa','ammu@gmail.com','8089677890','test','dfd','678905');
>>>>>>> origin/master

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
