/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.5.30 : Database - onlinementoringsystem
*********************************************************************
Server version : 5.5.30
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `onlinementoringsystem`;

USE `onlinementoringsystem`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `college` */

DROP TABLE IF EXISTS `college`;

CREATE TABLE `college` (
  `cid` varchar(200) DEFAULT NULL,
  `clgname` varchar(200) DEFAULT NULL,
  `clgcode` varchar(200) DEFAULT NULL,
  `clguni` varchar(200) DEFAULT NULL,
  `clglocation` varchar(200) DEFAULT NULL,
  `clgbranch` varchar(200) DEFAULT NULL,
  `clg` varchar(2000) DEFAULT NULL,
  `uname` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `msg` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `college` */

insert  into `college`(`cid`,`clgname`,`clgcode`,`clguni`,`clglocation`,`clgbranch`,`clg`,`uname`,`email`,`msg`) values ('1','Sv College Of Engg And Technology','SVCET','jntuh','India,Hyderabad','ece,cse,eee','jflskdfjsdfjdfdgfndkgfhdkg\r\nsdhgdkjghdfgfndkjhgdfg\r\ndfsjgdkgnhfdghdflg','y.venkat07','y.venkat07@gmail.com','clg'),('2','Cloud technologies of Engg and Tech','CTET','jntuh','India,Hyderabad','mech,civil,cse it eee,ece','Address: Siri Towers, #304, Behind Prime Hospitals, Maitrivanam,, Ameerpet, Hyderabad, Telangana 500016\r\nHours: Open today · 10AM?8PM\r\nPhone: 081219 53811','mentor1','mentor1@gmail.com','clg');

/*Table structure for table `doubt` */

DROP TABLE IF EXISTS `doubt`;

CREATE TABLE `doubt` (
  `dbid` varchar(200) DEFAULT NULL,
  `uname` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `doubt` varchar(2000) DEFAULT NULL,
  `msg` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doubt` */

insert  into `doubt`(`dbid`,`uname`,`email`,`doubt`,`msg`) values ('1','chalapthi','y.chalapathi07@gmail.com','is tomorrow holiday or not','doubt'),('2','junior1','junior1@gmail.com','In CT company how many job are available.','doubt');

/*Table structure for table `job` */

DROP TABLE IF EXISTS `job`;

CREATE TABLE `job` (
  `jbid` varchar(200) DEFAULT NULL,
  `cmpname` varchar(200) DEFAULT NULL,
  `cmpcategory` varchar(200) DEFAULT NULL,
  `cmplocation` varchar(200) DEFAULT NULL,
  `cmprequired` varchar(200) DEFAULT NULL,
  `cmpskills` varchar(200) DEFAULT NULL,
  `job` varchar(2000) DEFAULT NULL,
  `uname` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `msg` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `job` */

insert  into `job`(`jbid`,`cmpname`,`cmpcategory`,`cmplocation`,`cmprequired`,`cmpskills`,`job`,`uname`,`email`,`msg`) values ('1','CT','Private ltd Company','India','softwre Developer','java,sql,html','Address: Siri Towers, #304, Behind Prime Hospitals, Maitrivanam,, Ameerpet, Hyderabad, Telangana 500016\r\nHours: Open today · 10AM?8PM\r\nPhone: 081219 53811','y.venkat07','y.venkat07@gmail.com','job'),('2','cloud','Private ltd Company','India','softwre Developer','java,sql,html','Address: Siri Towers, #304, Behind Prime Hospitals, Maitrivanam,, Ameerpet, Hyderabad, Telangana 500016\r\nHours: Open today · 10AM?8PM\r\nPhone: 081219 53811','mentor1','mentor1@gmail.com','job');

/*Table structure for table `mregister` */

DROP TABLE IF EXISTS `mregister`;

CREATE TABLE `mregister` (
  `id` varchar(100) DEFAULT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `htno` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `phno` varchar(100) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `status_r` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mregister` */

insert  into `mregister`(`id`,`uname`,`htno`,`email`,`pass`,`phno`,`pic`,`status_r`) values ('1','y.venkat07','1111111','y.venkat07@gmail.com','12345','9966143047','child.jpg','login'),('2','mentor1','2222222','mentor1@gmail.com','12345','9966143047','children.jpg','login');

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `id` varchar(100) DEFAULT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `htno` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `phno` varchar(100) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `status_r` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`id`,`uname`,`htno`,`email`,`pass`,`phno`,`pic`,`status_r`) values ('1','chalapthi','33333333','y.chalapathi07@gmail.com','12345','9966143047','IMG-20150730-WA0012.jpg','login'),('2','junior1','444444','junior1@gmail.com','12345','9966143047','IMG-20150731-WA0000.jpg','login');

/*Table structure for table `reply` */

DROP TABLE IF EXISTS `reply`;

CREATE TABLE `reply` (
  `rid` varchar(200) DEFAULT NULL,
  `dbid` varchar(200) DEFAULT NULL,
  `jemail` varchar(200) DEFAULT NULL,
  `jdoubt` varchar(2000) DEFAULT NULL,
  `reply` varchar(2000) DEFAULT NULL,
  `uname` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `msg` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reply` */

insert  into `reply`(`rid`,`dbid`,`jemail`,`jdoubt`,`reply`,`uname`,`email`,`msg`) values ('1','1','y.chalapathi07@gmail.com','is tomorrow holiday or not','no \r\nthere is a seminor tomorrow','y.venkat07','y.venkat07@gmail.com','reply'),('2','1','y.chalapathi07@gmail.com','is tomorrow holiday or not','may be a chance for eee only','mentor1','mentor1@gmail.com','reply'),('3','1','y.chalapathi07@gmail.com','is tomorrow holiday or not','i dont know exactly \r\n','mentor1','mentor1@gmail.com','reply'),('4','2','junior1@gmail.com','In CT company how many job are available.','only two vacancies for freshers','y.venkat07','y.venkat07@gmail.com','reply');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
