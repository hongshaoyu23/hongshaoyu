/*
SQLyog v10.2 
MySQL - 5.7.29-log : Database - class_demo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`class_demo` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `class_demo`;

/*Table structure for table `button` */

DROP TABLE IF EXISTS `button`;

CREATE TABLE `button` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bname` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `button` */

insert  into `button`(`id`,`bname`) values (1,'<button type=\"button\" lay-event=\"deddddlUser\" class=\"layui-btn layui-btn-danger\"><i class=\"layui-icon\">&#xe640;</i>删除用户</button>'),(2,'<button type=\"button\" lay-event=\"upUser\" class=\"layui-btn layui-btn-normal\"><i class=\"layui-icon\">&#xe642;</i>修改用户</button>'),(3,'<button type=\"button\" lay-event=\"addUser\" class=\"layui-btn layui-btn-warm\"><i class=\"layui-icon\">&#xe654;</i>新增菜单</button>'),(4,'<button type=\'button\' lay-event=\'deddddUser\' class=\'layui-btn layui-btn-primary xz\'><i class=\'layui-icon\'>&#xe654;</i>签到</button>');

/*Table structure for table `class` */

DROP TABLE IF EXISTS `class`;

CREATE TABLE `class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `teacherid` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `class` */

insert  into `class`(`id`,`bname`,`teacherid`,`data`) values (1,'Y2',1,'2021-04-28'),(2,'Accp96',3,'2021-04-28'),(3,'Accp77',3,'2021-04-28'),(5,'Accp971',1,'2021-04-29');

/*Table structure for table `jiaoyuan` */

DROP TABLE IF EXISTS `jiaoyuan`;

CREATE TABLE `jiaoyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jiaoname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `jiaoyuan` */

insert  into `jiaoyuan`(`id`,`jiaoname`) values (1,'卞显路'),(2,'裴勃'),(3,'张三');

/*Table structure for table `ls_menu` */

DROP TABLE IF EXISTS `ls_menu`;

CREATE TABLE `ls_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mname` varchar(100) DEFAULT NULL,
  `mfatherid` int(11) DEFAULT NULL,
  `mfunction` varchar(100) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `mbtn` varchar(300) DEFAULT NULL,
  `icon` varchar(1000) DEFAULT NULL,
  `resKey` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `js` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

/*Data for the table `ls_menu` */

insert  into `ls_menu`(`id`,`mname`,`mfatherid`,`mfunction`,`type`,`mbtn`,`icon`,`resKey`,`description`,`url`,`js`) values (1,'日常管理',0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(2,'系统基础管理',0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(3,'班级管理',2,NULL,2,NULL,NULL,NULL,NULL,'news?action=bop','jss/banji.js'),(4,'每日一签',1,NULL,2,'',NULL,NULL,NULL,'news?action=aop','jss/userlist.js'),(5,'老师新增',8,NULL,3,'<button type=\"button\" lay-event=\"addUser\" class=\"layui-btn layui-btn-warm\"><i class=\"layui-icon\">&#xe654;</i>新增菜单</button>',NULL,NULL,NULL,'',''),(6,'老师删除',8,NULL,3,'<button TYPE=\'button\' lay-event=\'deddddlUser\' class=\'layui-btn layui-btn-danger xz\'><i class=\'layui-',NULL,NULL,NULL,NULL,NULL),(7,'老师修改',8,NULL,3,'<button TYPE=\'button\' lay-event=\'upUser\' class=\'layui-btn layui-btn-normal xz\'><i class=\'layui-icon\'',NULL,NULL,NULL,NULL,NULL),(8,'每日签到',4,NULL,3,'<button type=\'button\' lay-event=\'deddddUser\' class=\'layui-btn layui-btn-primary xz\'><i class=\'layui-icon\'>&#xe654;</i>签到</button>',NULL,NULL,NULL,NULL,NULL),(9,'角色管理',2,NULL,2,NULL,NULL,NULL,NULL,'news?action=jop','jss/juese.js'),(10,'权限管理',2,NULL,2,NULL,NULL,NULL,NULL,'news?action=qop','jss/quanxian.js'),(11,'学生管理',2,NULL,2,NULL,NULL,NULL,NULL,'news?action=xop','jss/xuesheng.js'),(12,'班级新增',3,NULL,3,'<button type=\"button\" lay-event=\"addUser\" class=\"layui-btn layui-btn-warm\"><i class=\"layui-icon\">&#xe654;</i>新增班级</button>',NULL,NULL,NULL,NULL,NULL),(13,'班级删除',3,NULL,3,'<button type=\"button\" lay-event=\"deddddlUser\" class=\"layui-btn layui-btn-danger\"><i class=\"layui-icon\">&#xe640;</i>删除班级</button>',NULL,NULL,NULL,NULL,NULL),(14,'班级修改',3,NULL,3,'<button type=\"button\" lay-event=\"upUser\" class=\"layui-btn layui-btn-normal\"><i class=\"layui-icon\">&#xe642;</i>修改班级</button>',NULL,NULL,NULL,NULL,NULL),(81,'权限新增',10,NULL,3,'<button type=\"button\" lay-event=\"addUser\" class=\"layui-btn layui-btn-warm\"><i class=\"layui-icon\">&#xe654;</i>新增权限</button>',NULL,NULL,NULL,NULL,NULL),(82,'权限删除',10,NULL,3,'<button type=\"button\" lay-event=\"deddddlUser\" class=\"layui-btn layui-btn-danger\"><i class=\"layui-icon\">&#xe640;</i>权限删除</button>',NULL,NULL,NULL,NULL,NULL),(83,'权限修改',10,NULL,3,'<button type=\"button\" lay-event=\"upUser\" class=\"layui-btn layui-btn-normal\"><i class=\"layui-icon\">&#xe642;</i>权限修改</button>',NULL,NULL,NULL,NULL,NULL),(94,'学生新增',11,NULL,3,'<button type=\"button\" lay-event=\"addUser\" class=\"layui-btn layui-btn-warm\"><i class=\"layui-icon\">&#xe654;</i>新增学生</button>',NULL,NULL,NULL,NULL,NULL),(95,'学生删除',11,NULL,3,'<button type=\"button\" lay-event=\"deddddlUser\" class=\"layui-btn layui-btn-danger\"><i class=\"layui-icon\">&#xe640;</i>删除学生</button>',NULL,NULL,NULL,NULL,NULL),(96,'学生修改',11,NULL,3,'<button type=\"button\" lay-event=\"upUser\" class=\"layui-btn layui-btn-normal\"><i class=\"layui-icon\">&#xe642;</i>学生修改</button>',NULL,NULL,NULL,NULL,NULL),(97,'角色修改',9,NULL,3,'<button type=\"button\" lay-event=\"upUser\" class=\"layui-btn layui-btn-normal\"><i class=\"layui-icon\">&#xe642;</i>角色修改</button>',NULL,NULL,NULL,NULL,NULL),(98,'角色新增',9,NULL,3,'<button type=\"button\" lay-event=\"addUser\" class=\"layui-btn layui-btn-warm\"><i class=\"layui-icon\">&#xe654;</i>角色新增</button>',NULL,NULL,NULL,NULL,NULL),(99,'角色删除',9,NULL,3,'<button type=\"button\" lay-event=\"deddddlUser\" class=\"layui-btn layui-btn-danger\"><i class=\"layui-icon\">&#xe640;</i>角色删除</button>',NULL,NULL,NULL,NULL,NULL),(101,'查看签到',1,NULL,2,NULL,NULL,NULL,NULL,'news?action=zop','jss/qxcx.js');

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `role` */

insert  into `role`(`id`,`jname`) values (1,'学生'),(2,'老师'),(3,'班长');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loginname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classid` int(11) DEFAULT NULL,
  `datas` date DEFAULT NULL,
  `deltes` int(11) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `student` */

insert  into `student`(`id`,`xname`,`loginname`,`password`,`classid`,`datas`,`deltes`,`roleid`) values (1,'关贤安','gxn','123',1,'2021-04-28',0,1),(2,'谢康','xk','123',1,'2021-04-28',0,1),(3,'卞显路','bxl','123',0,'2021-04-28',0,2),(4,'裴勃','pb','123',0,'2021-04-28',0,2),(5,'张三','张三','123',1,'2021-04-28',0,1),(8,'31','31','31',1,NULL,NULL,1),(13,'3','2','1',1,NULL,NULL,1),(14,'1','1','123',1,NULL,NULL,1);

/*Table structure for table `student_role` */

DROP TABLE IF EXISTS `student_role`;

CREATE TABLE `student_role` (
  `xid` int(11) DEFAULT NULL,
  `qid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `student_role` */

insert  into `student_role`(`xid`,`qid`) values (1,4),(2,4),(3,1),(3,2),(3,3),(3,6),(3,7),(4,1),(4,2),(4,3),(4,5),(4,6),(4,7),(5,4),(6,4),(1,1),(3,9),(3,11),(3,10),(3,12),(3,13),(3,14),(3,4),(2,1),(2,4),(3,101);

/*Table structure for table `time` */

DROP TABLE IF EXISTS `time`;

CREATE TABLE `time` (
  `id` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `deletes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `time` */

insert  into `time`(`id`,`data`,`deletes`) values (3,'2021-04-29',1),(3,'2021-04-30',1),(1,'2021-04-30',1),(2,'2021-04-30',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
