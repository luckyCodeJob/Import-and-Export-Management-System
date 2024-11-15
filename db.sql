/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssms046n
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssms046n` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssms046n`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssms046n/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssms046n/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssms046n/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `huowuchuhuo` */

DROP TABLE IF EXISTS `huowuchuhuo`;

CREATE TABLE `huowuchuhuo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huowumingcheng` varchar(200) DEFAULT NULL COMMENT '货物名称',
  `huowuleixing` varchar(200) DEFAULT NULL COMMENT '货物类型',
  `chushoukehu` varchar(200) NOT NULL COMMENT '出售客户',
  `chukujiage` int(11) NOT NULL COMMENT '出库价格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `zongjiage` int(11) DEFAULT NULL COMMENT '总价格',
  `chukushijian` date DEFAULT NULL COMMENT '出库时间',
  `chukuneirong` longtext COMMENT '出库内容',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='货物出货';

/*Data for the table `huowuchuhuo` */

insert  into `huowuchuhuo`(`id`,`addtime`,`huowumingcheng`,`huowuleixing`,`chushoukehu`,`chukujiage`,`shuliang`,`zongjiage`,`chukushijian`,`chukuneirong`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (51,'2021-05-17 14:12:07','货物名称1','货物类型1','出售客户1',1,1,1,'2021-05-17','出库内容1','用户名1','姓名1','是','');
insert  into `huowuchuhuo`(`id`,`addtime`,`huowumingcheng`,`huowuleixing`,`chushoukehu`,`chukujiage`,`shuliang`,`zongjiage`,`chukushijian`,`chukuneirong`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (52,'2021-05-17 14:12:07','货物名称2','货物类型2','出售客户2',2,2,2,'2021-05-17','出库内容2','用户名2','姓名2','是','');
insert  into `huowuchuhuo`(`id`,`addtime`,`huowumingcheng`,`huowuleixing`,`chushoukehu`,`chukujiage`,`shuliang`,`zongjiage`,`chukushijian`,`chukuneirong`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (53,'2021-05-17 14:12:07','货物名称3','货物类型3','出售客户3',3,3,3,'2021-05-17','出库内容3','用户名3','姓名3','是','');
insert  into `huowuchuhuo`(`id`,`addtime`,`huowumingcheng`,`huowuleixing`,`chushoukehu`,`chukujiage`,`shuliang`,`zongjiage`,`chukushijian`,`chukuneirong`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (54,'2021-05-17 14:12:07','货物名称4','货物类型4','出售客户4',4,4,4,'2021-05-17','出库内容4','用户名4','姓名4','是','');
insert  into `huowuchuhuo`(`id`,`addtime`,`huowumingcheng`,`huowuleixing`,`chushoukehu`,`chukujiage`,`shuliang`,`zongjiage`,`chukushijian`,`chukuneirong`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (55,'2021-05-17 14:12:07','货物名称5','货物类型5','出售客户5',5,5,5,'2021-05-17','出库内容5','用户名5','姓名5','是','');
insert  into `huowuchuhuo`(`id`,`addtime`,`huowumingcheng`,`huowuleixing`,`chushoukehu`,`chukujiage`,`shuliang`,`zongjiage`,`chukushijian`,`chukuneirong`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (56,'2021-05-17 14:12:07','货物名称6','货物类型6','出售客户6',6,6,6,'2021-05-17','出库内容6','用户名6','姓名6','是','');

/*Table structure for table `huowuleixing` */

DROP TABLE IF EXISTS `huowuleixing`;

CREATE TABLE `huowuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huowuleixing` varchar(200) NOT NULL COMMENT '货物类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='货物类型';

/*Data for the table `huowuleixing` */

insert  into `huowuleixing`(`id`,`addtime`,`huowuleixing`) values (31,'2021-05-17 14:12:07','货物类型1');
insert  into `huowuleixing`(`id`,`addtime`,`huowuleixing`) values (32,'2021-05-17 14:12:07','货物类型2');
insert  into `huowuleixing`(`id`,`addtime`,`huowuleixing`) values (33,'2021-05-17 14:12:07','货物类型3');
insert  into `huowuleixing`(`id`,`addtime`,`huowuleixing`) values (34,'2021-05-17 14:12:07','货物类型4');
insert  into `huowuleixing`(`id`,`addtime`,`huowuleixing`) values (35,'2021-05-17 14:12:07','货物类型5');
insert  into `huowuleixing`(`id`,`addtime`,`huowuleixing`) values (36,'2021-05-17 14:12:07','货物类型6');

/*Table structure for table `huowuruku` */

DROP TABLE IF EXISTS `huowuruku`;

CREATE TABLE `huowuruku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huowumingcheng` varchar(200) DEFAULT NULL COMMENT '货物名称',
  `huowuleixing` varchar(200) DEFAULT NULL COMMENT '货物类型',
  `gongyingshangmingcheng` varchar(200) NOT NULL COMMENT '供应商名称',
  `rukujiage` int(11) NOT NULL COMMENT '入库价格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `zongjiage` int(11) DEFAULT NULL COMMENT '总价格',
  `rukuriqi` date DEFAULT NULL COMMENT '入库日期',
  `rukuneirong` longtext COMMENT '入库内容',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='货物入库';

/*Data for the table `huowuruku` */

insert  into `huowuruku`(`id`,`addtime`,`huowumingcheng`,`huowuleixing`,`gongyingshangmingcheng`,`rukujiage`,`shuliang`,`zongjiage`,`rukuriqi`,`rukuneirong`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (41,'2021-05-17 14:12:07','货物名称1','货物类型1','供应商名称1',1,1,1,'2021-05-17','入库内容1','用户名1','姓名1','是','');
insert  into `huowuruku`(`id`,`addtime`,`huowumingcheng`,`huowuleixing`,`gongyingshangmingcheng`,`rukujiage`,`shuliang`,`zongjiage`,`rukuriqi`,`rukuneirong`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (42,'2021-05-17 14:12:07','货物名称2','货物类型2','供应商名称2',2,2,2,'2021-05-17','入库内容2','用户名2','姓名2','是','');
insert  into `huowuruku`(`id`,`addtime`,`huowumingcheng`,`huowuleixing`,`gongyingshangmingcheng`,`rukujiage`,`shuliang`,`zongjiage`,`rukuriqi`,`rukuneirong`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (43,'2021-05-17 14:12:07','货物名称3','货物类型3','供应商名称3',3,3,3,'2021-05-17','入库内容3','用户名3','姓名3','是','');
insert  into `huowuruku`(`id`,`addtime`,`huowumingcheng`,`huowuleixing`,`gongyingshangmingcheng`,`rukujiage`,`shuliang`,`zongjiage`,`rukuriqi`,`rukuneirong`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (44,'2021-05-17 14:12:07','货物名称4','货物类型4','供应商名称4',4,4,4,'2021-05-17','入库内容4','用户名4','姓名4','是','');
insert  into `huowuruku`(`id`,`addtime`,`huowumingcheng`,`huowuleixing`,`gongyingshangmingcheng`,`rukujiage`,`shuliang`,`zongjiage`,`rukuriqi`,`rukuneirong`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (45,'2021-05-17 14:12:07','货物名称5','货物类型5','供应商名称5',5,5,5,'2021-05-17','入库内容5','用户名5','姓名5','是','');
insert  into `huowuruku`(`id`,`addtime`,`huowumingcheng`,`huowuleixing`,`gongyingshangmingcheng`,`rukujiage`,`shuliang`,`zongjiage`,`rukuriqi`,`rukuneirong`,`yonghuming`,`xingming`,`sfsh`,`shhf`) values (46,'2021-05-17 14:12:07','货物名称6','货物类型6','供应商名称6',6,6,6,'2021-05-17','入库内容6','用户名6','姓名6','是','');

/*Table structure for table `huowuxinxi` */

DROP TABLE IF EXISTS `huowuxinxi`;

CREATE TABLE `huowuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huowumingcheng` varchar(200) NOT NULL COMMENT '货物名称',
  `huowuleixing` varchar(200) NOT NULL COMMENT '货物类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `cangkumingcheng` varchar(200) NOT NULL COMMENT '仓库名称',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='货物信息';

/*Data for the table `huowuxinxi` */

insert  into `huowuxinxi`(`id`,`addtime`,`huowumingcheng`,`huowuleixing`,`tupian`,`shuliang`,`cangkumingcheng`,`riqi`,`beizhu`) values (21,'2021-05-17 14:12:07','货物名称1','货物类型1','http://localhost:8080/ssms046n/upload/huowuxinxi_tupian1.jpg',1,'仓库名称1','2021-05-17','备注1');
insert  into `huowuxinxi`(`id`,`addtime`,`huowumingcheng`,`huowuleixing`,`tupian`,`shuliang`,`cangkumingcheng`,`riqi`,`beizhu`) values (22,'2021-05-17 14:12:07','货物名称2','货物类型2','http://localhost:8080/ssms046n/upload/huowuxinxi_tupian2.jpg',2,'仓库名称2','2021-05-17','备注2');
insert  into `huowuxinxi`(`id`,`addtime`,`huowumingcheng`,`huowuleixing`,`tupian`,`shuliang`,`cangkumingcheng`,`riqi`,`beizhu`) values (23,'2021-05-17 14:12:07','货物名称3','货物类型3','http://localhost:8080/ssms046n/upload/huowuxinxi_tupian3.jpg',3,'仓库名称3','2021-05-17','备注3');
insert  into `huowuxinxi`(`id`,`addtime`,`huowumingcheng`,`huowuleixing`,`tupian`,`shuliang`,`cangkumingcheng`,`riqi`,`beizhu`) values (24,'2021-05-17 14:12:07','货物名称4','货物类型4','http://localhost:8080/ssms046n/upload/huowuxinxi_tupian4.jpg',4,'仓库名称4','2021-05-17','备注4');
insert  into `huowuxinxi`(`id`,`addtime`,`huowumingcheng`,`huowuleixing`,`tupian`,`shuliang`,`cangkumingcheng`,`riqi`,`beizhu`) values (25,'2021-05-17 14:12:07','货物名称5','货物类型5','http://localhost:8080/ssms046n/upload/huowuxinxi_tupian5.jpg',5,'仓库名称5','2021-05-17','备注5');
insert  into `huowuxinxi`(`id`,`addtime`,`huowumingcheng`,`huowuleixing`,`tupian`,`shuliang`,`cangkumingcheng`,`riqi`,`beizhu`) values (26,'2021-05-17 14:12:07','货物名称6','货物类型6','http://localhost:8080/ssms046n/upload/huowuxinxi_tupian6.jpg',6,'仓库名称6','2021-05-17','备注6');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','1sx2jo5d9k65q3hf42j1ta0j6kgyoc35','2021-05-17 14:13:08','2021-05-17 15:13:09');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,11,'1','yonghu','用户','i5cndc23e9fd2o3t4sxvn5nz9ntatns2','2021-05-17 14:13:15','2021-05-17 15:13:15');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-17 14:12:07');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`dianhua`) values (11,'2021-05-17 14:12:07','1','1','姓名1','男','http://localhost:8080/ssms046n/upload/yonghu_touxiang1.jpg','773890001@qq.com','13823888881');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`dianhua`) values (12,'2021-05-17 14:12:07','用户2','123456','姓名2','男','http://localhost:8080/ssms046n/upload/yonghu_touxiang2.jpg','773890002@qq.com','13823888882');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`dianhua`) values (13,'2021-05-17 14:12:07','用户3','123456','姓名3','男','http://localhost:8080/ssms046n/upload/yonghu_touxiang3.jpg','773890003@qq.com','13823888883');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`dianhua`) values (14,'2021-05-17 14:12:07','用户4','123456','姓名4','男','http://localhost:8080/ssms046n/upload/yonghu_touxiang4.jpg','773890004@qq.com','13823888884');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`dianhua`) values (15,'2021-05-17 14:12:07','用户5','123456','姓名5','男','http://localhost:8080/ssms046n/upload/yonghu_touxiang5.jpg','773890005@qq.com','13823888885');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`dianhua`) values (16,'2021-05-17 14:12:07','用户6','123456','姓名6','男','http://localhost:8080/ssms046n/upload/yonghu_touxiang6.jpg','773890006@qq.com','13823888886');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
