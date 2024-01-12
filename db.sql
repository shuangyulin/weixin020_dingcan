/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm04gz3
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm04gz3` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm04gz3`;

/*Table structure for table `caipinfenlei` */

DROP TABLE IF EXISTS `caipinfenlei`;

CREATE TABLE `caipinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinfenlei` varchar(200) NOT NULL COMMENT '菜品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caipinfenlei` (`caipinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1614914989609 DEFAULT CHARSET=utf8 COMMENT='菜品分类';

/*Data for the table `caipinfenlei` */

insert  into `caipinfenlei`(`id`,`addtime`,`caipinfenlei`) values (21,'2021-03-05 11:17:50','面食类'),(22,'2021-03-05 11:17:50','下午茶'),(23,'2021-03-05 11:17:50','家常菜'),(24,'2021-03-05 11:17:50','汉堡披萨'),(1614914989608,'2021-03-05 11:29:49','日韩料理');

/*Table structure for table `caipinpingjia` */

DROP TABLE IF EXISTS `caipinpingjia`;

CREATE TABLE `caipinpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caipinfenlei` varchar(200) DEFAULT NULL COMMENT '菜品分类',
  `kouwei` varchar(200) DEFAULT NULL COMMENT '口味',
  `baozhuang` varchar(200) DEFAULT NULL COMMENT '包装',
  `pingjianeirong` longtext COMMENT '评价内容',
  `tianjiatupian` varchar(200) DEFAULT NULL COMMENT '添加图片',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614915967707 DEFAULT CHARSET=utf8 COMMENT='菜品评价';

/*Data for the table `caipinpingjia` */

insert  into `caipinpingjia`(`id`,`addtime`,`dingdanbianhao`,`caipinmingcheng`,`caipinfenlei`,`kouwei`,`baozhuang`,`pingjianeirong`,`tianjiatupian`,`yonghuming`,`sfsh`,`shhf`,`userid`) values (61,'2021-03-05 11:17:50','订单编号1','菜品名称1','菜品分类1','1星','1星','评价内容1','http://localhost:8080/ssm04gz3/upload/caipinpingjia_tianjiatupian1.jpg','用户名1','是','',1),(62,'2021-03-05 11:17:50','订单编号2','菜品名称2','菜品分类2','1星','1星','评价内容2','http://localhost:8080/ssm04gz3/upload/caipinpingjia_tianjiatupian2.jpg','用户名2','是','',2),(63,'2021-03-05 11:17:50','订单编号3','菜品名称3','菜品分类3','1星','1星','评价内容3','http://localhost:8080/ssm04gz3/upload/caipinpingjia_tianjiatupian3.jpg','用户名3','是','',3),(64,'2021-03-05 11:17:50','订单编号4','菜品名称4','菜品分类4','1星','1星','评价内容4','http://localhost:8080/ssm04gz3/upload/caipinpingjia_tianjiatupian4.jpg','用户名4','是','',4),(65,'2021-03-05 11:17:50','订单编号5','菜品名称5','菜品分类5','1星','1星','评价内容5','http://localhost:8080/ssm04gz3/upload/caipinpingjia_tianjiatupian5.jpg','用户名5','是','',5),(66,'2021-03-05 11:17:50','订单编号6','菜品名称6','菜品分类6','1星','1星','评价内容6','http://localhost:8080/ssm04gz3/upload/caipinpingjia_tianjiatupian6.jpg','用户名6','是','',6),(1614915399796,'2021-03-05 11:36:39','1614915156040','麻辣小龙虾','家常菜','5星','4星','还不错','http://localhost:8080/ssm04gz3/upload/1614915395009.jpg','1','是','感谢支持',1614915133851),(1614915967706,'2021-03-05 11:46:07','1614915781573','麻辣小龙虾','家常菜','5星','4星','鲜香麻辣，小龙虾很不错','http://localhost:8080/ssm04gz3/upload/1614915955211.jpg','2','是','感谢支持',1614915645567);

/*Table structure for table `caipinxinxi` */

DROP TABLE IF EXISTS `caipinxinxi`;

CREATE TABLE `caipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinmingcheng` varchar(200) NOT NULL COMMENT '菜品名称',
  `caipinfenlei` varchar(200) NOT NULL COMMENT '菜品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `caipinjiage` int(11) DEFAULT NULL COMMENT '菜品价格',
  `cailiao` varchar(200) DEFAULT NULL COMMENT '材料',
  `fenliang` varchar(200) DEFAULT NULL COMMENT '份量',
  `caipinjieshao` longtext COMMENT '菜品介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614915046305 DEFAULT CHARSET=utf8 COMMENT='菜品信息';

/*Data for the table `caipinxinxi` */

insert  into `caipinxinxi`(`id`,`addtime`,`caipinmingcheng`,`caipinfenlei`,`tupian`,`caipinjiage`,`cailiao`,`fenliang`,`caipinjieshao`,`clicktime`,`clicknum`) values (31,'2021-03-05 11:17:50','菜品名称1','家常菜','http://localhost:8080/ssm04gz3/upload/caipinxinxi_tupian1.jpg',1,'材料1','份量1','<p>菜品介绍1</p>','2021-03-05 11:24:13',2),(32,'2021-03-05 11:17:50','菜品名称2','下午茶','http://localhost:8080/ssm04gz3/upload/1614914692151.jpg',2,'材料2','份量2','<p>菜品介绍2</p>','2021-03-05 11:24:20',3),(34,'2021-03-05 11:17:50','菜品名称4','家常菜','http://localhost:8080/ssm04gz3/upload/1614914715288.jpg',4,'材料4','份量4','<p>菜品介绍4</p>','2021-03-05 11:25:05',5),(35,'2021-03-05 11:17:50','菜品名称5','汉堡披萨','http://localhost:8080/ssm04gz3/upload/caipinxinxi_tupian5.jpg',5,'材料5','份量5','<p>菜品介绍5</p>','2021-03-05 11:42:14',14),(36,'2021-03-05 11:17:50','菜品名称6','面食类','http://localhost:8080/ssm04gz3/upload/1614914737232.jpg',6,'材料6','份量6','<p>菜品介绍6</p>','2021-03-05 11:25:29',8),(1614915046304,'2021-03-05 11:30:46','麻辣小龙虾','家常菜','http://localhost:8080/ssm04gz3/upload/1614915023690.jpg',88,'小龙虾','2人份','<p>花式麻辣小龙虾是一道色香味俱全的名肴，属于川菜系。肉香味美，色泽诱人，滋补强壮，口感甚佳，令人垂涎的现代菜肴。</p><p><img src=\"http://localhost:8080/ssm04gz3/upload/1614915045078.jpg\"></p>','2021-03-05 11:43:22',5);

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614915884115 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (81,'2021-03-05 11:17:50',1,1,'提问1','回复1',1),(82,'2021-03-05 11:17:50',2,2,'提问2','回复2',2),(83,'2021-03-05 11:17:50',3,3,'提问3','回复3',3),(84,'2021-03-05 11:17:50',4,4,'提问4','回复4',4),(85,'2021-03-05 11:17:50',5,5,'提问5','回复5',5),(86,'2021-03-05 11:17:50',6,6,'提问6','回复6',6),(1614915201202,'2021-03-05 11:33:20',1614915133851,NULL,'请问有糖醋鱼吗',NULL,0),(1614915314976,'2021-03-05 11:35:14',1614915133851,1,NULL,'暂时没有哦',NULL),(1614915835364,'2021-03-05 11:43:54',1614915645567,NULL,'请问有东坡肉吗',NULL,0),(1614915884114,'2021-03-05 11:44:43',1614915645567,1,NULL,'暂时没有',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm04gz3/upload/1614915055678.jpg'),(2,'picture2','http://localhost:8080/ssm04gz3/upload/1614915067336.jpg'),(3,'picture3','http://localhost:8080/ssm04gz3/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `dingdantousu` */

DROP TABLE IF EXISTS `dingdantousu`;

CREATE TABLE `dingdantousu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caipinfenlei` varchar(200) DEFAULT NULL COMMENT '菜品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xiadanshuliang` varchar(200) DEFAULT NULL COMMENT '下单数量',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `tousuneirong` longtext COMMENT '投诉内容',
  `tousushijian` date DEFAULT NULL COMMENT '投诉时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614915911064 DEFAULT CHARSET=utf8 COMMENT='订单投诉';

/*Data for the table `dingdantousu` */

insert  into `dingdantousu`(`id`,`addtime`,`dingdanbianhao`,`caipinmingcheng`,`caipinfenlei`,`tupian`,`xiadanshuliang`,`zongjine`,`tousuneirong`,`tousushijian`,`yonghuming`,`sfsh`,`shhf`,`userid`) values (71,'2021-03-05 11:17:50','订单编号1','菜品名称1','菜品分类1','http://localhost:8080/ssm04gz3/upload/dingdantousu_tupian1.jpg','下单数量1','总金额1','投诉内容1','2021-03-05','用户名1','是','',1),(72,'2021-03-05 11:17:50','订单编号2','菜品名称2','菜品分类2','http://localhost:8080/ssm04gz3/upload/dingdantousu_tupian2.jpg','下单数量2','总金额2','投诉内容2','2021-03-05','用户名2','是','',2),(73,'2021-03-05 11:17:50','订单编号3','菜品名称3','菜品分类3','http://localhost:8080/ssm04gz3/upload/dingdantousu_tupian3.jpg','下单数量3','总金额3','投诉内容3','2021-03-05','用户名3','是','',3),(74,'2021-03-05 11:17:50','订单编号4','菜品名称4','菜品分类4','http://localhost:8080/ssm04gz3/upload/dingdantousu_tupian4.jpg','下单数量4','总金额4','投诉内容4','2021-03-05','用户名4','是','',4),(75,'2021-03-05 11:17:50','订单编号5','菜品名称5','菜品分类5','http://localhost:8080/ssm04gz3/upload/dingdantousu_tupian5.jpg','下单数量5','总金额5','投诉内容5','2021-03-05','用户名5','是','',5),(76,'2021-03-05 11:17:50','订单编号6','菜品名称6','菜品分类6','http://localhost:8080/ssm04gz3/upload/dingdantousu_tupian6.jpg','下单数量6','总金额6','投诉内容6','2021-03-05','用户名6','是','',6),(1614915346207,'2021-03-05 11:35:45','1614915156040','麻辣小龙虾','家常菜','http://localhost:8080/ssm04gz3/upload/1614915023690.jpg','1','88','迟迟不送餐','2021-03-05','1','是','很抱歉，马上送达',1614915133851),(1614915911063,'2021-03-05 11:45:10','1614915781573','麻辣小龙虾','家常菜','http://localhost:8080/ssm04gz3/upload/1614915023690.jpg','2','176','为什么菜还没送到','2021-03-05','2','是','很抱歉，马上安排送到',1614915645567);

/*Table structure for table `dingdanxinxi` */

DROP TABLE IF EXISTS `dingdanxinxi`;

CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caipinfenlei` varchar(200) DEFAULT NULL COMMENT '菜品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `caipinjiage` int(11) DEFAULT NULL COMMENT '菜品价格',
  `xiadanshuliang` int(11) DEFAULT NULL COMMENT '下单数量',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `songcandizhi` varchar(200) DEFAULT NULL COMMENT '送餐地址',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614915800772 DEFAULT CHARSET=utf8 COMMENT='订单信息';

/*Data for the table `dingdanxinxi` */

insert  into `dingdanxinxi`(`id`,`addtime`,`dingdanbianhao`,`caipinmingcheng`,`caipinfenlei`,`tupian`,`caipinjiage`,`xiadanshuliang`,`zongjine`,`xiadanshijian`,`beizhu`,`yonghuming`,`lianxidianhua`,`songcandizhi`,`sfsh`,`shhf`,`ispay`,`userid`) values (41,'2021-03-05 11:17:50','订单编号1','菜品名称1','菜品分类1','http://localhost:8080/ssm04gz3/upload/dingdanxinxi_tupian1.jpg',1,1,'总金额1','2021-03-05 11:17:50','备注1','用户名1','联系电话1','送餐地址1','是','','未支付',1),(42,'2021-03-05 11:17:50','订单编号2','菜品名称2','菜品分类2','http://localhost:8080/ssm04gz3/upload/dingdanxinxi_tupian2.jpg',2,2,'总金额2','2021-03-05 11:17:50','备注2','用户名2','联系电话2','送餐地址2','是','','未支付',2),(43,'2021-03-05 11:17:50','订单编号3','菜品名称3','菜品分类3','http://localhost:8080/ssm04gz3/upload/dingdanxinxi_tupian3.jpg',3,3,'总金额3','2021-03-05 11:17:50','备注3','用户名3','联系电话3','送餐地址3','是','','未支付',3),(44,'2021-03-05 11:17:50','订单编号4','菜品名称4','菜品分类4','http://localhost:8080/ssm04gz3/upload/dingdanxinxi_tupian4.jpg',4,4,'总金额4','2021-03-05 11:17:50','备注4','用户名4','联系电话4','送餐地址4','是','','未支付',4),(45,'2021-03-05 11:17:50','订单编号5','菜品名称5','菜品分类5','http://localhost:8080/ssm04gz3/upload/dingdanxinxi_tupian5.jpg',5,5,'总金额5','2021-03-05 11:17:50','备注5','用户名5','联系电话5','送餐地址5','是','','未支付',5),(46,'2021-03-05 11:17:50','订单编号6','菜品名称6','菜品分类6','http://localhost:8080/ssm04gz3/upload/dingdanxinxi_tupian6.jpg',6,6,'总金额6','2021-03-05 11:17:50','备注6','用户名6','联系电话6','送餐地址6','是','','未支付',6),(1614915173510,'2021-03-05 11:32:53','1614915156040','麻辣小龙虾','家常菜','http://localhost:8080/ssm04gz3/upload/1614915023690.jpg',88,1,'88','2021-03-05 11:32:36','12点半前送达','1','12312345645','梅州市新县城9号','是','ok','已支付',1614915133851),(1614915800771,'2021-03-05 11:43:20','1614915781573','麻辣小龙虾','家常菜','http://localhost:8080/ssm04gz3/upload/1614915023690.jpg',88,2,'176','2021-03-05 11:43:01','12点半前送达','2','12345678945','梅州市新县城8号','是','ok','已支付',1614915645567);

/*Table structure for table `discusscaipinxinxi` */

DROP TABLE IF EXISTS `discusscaipinxinxi`;

CREATE TABLE `discusscaipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='菜品信息评论表';

/*Data for the table `discusscaipinxinxi` */

insert  into `discusscaipinxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (111,'2021-03-05 11:17:50',1,1,'评论内容1','回复内容1'),(112,'2021-03-05 11:17:50',2,2,'评论内容2','回复内容2'),(113,'2021-03-05 11:17:50',3,3,'评论内容3','回复内容3'),(114,'2021-03-05 11:17:50',4,4,'评论内容4','回复内容4'),(115,'2021-03-05 11:17:50',5,5,'评论内容5','回复内容5'),(116,'2021-03-05 11:17:50',6,6,'评论内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614915102132 DEFAULT CHARSET=utf8 COMMENT='菜品资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-03-05 11:17:50','标题1','简介1','http://localhost:8080/ssm04gz3/upload/news_picture1.jpg','内容1'),(102,'2021-03-05 11:17:50','标题2','简介2','http://localhost:8080/ssm04gz3/upload/news_picture2.jpg','内容2'),(103,'2021-03-05 11:17:50','标题3','简介3','http://localhost:8080/ssm04gz3/upload/1614914771678.jpg','<p>内容3</p>'),(105,'2021-03-05 11:17:50','标题5','简介5','http://localhost:8080/ssm04gz3/upload/1614914762802.jpg','<p>内容5</p>'),(106,'2021-03-05 11:17:50','标题6','简介6','http://localhost:8080/ssm04gz3/upload/news_picture6.jpg','内容6'),(1614915102131,'2021-03-05 11:31:41','新菜品上市','新菜品上市','http://localhost:8080/ssm04gz3/upload/1614915080663.jpg','<p>新菜品上市</p><p><img src=\"http://localhost:8080/ssm04gz3/upload/1614915100104.jpg\"></p><p><br></p>');

/*Table structure for table `peisongxinxi` */

DROP TABLE IF EXISTS `peisongxinxi`;

CREATE TABLE `peisongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caipinfenlei` varchar(200) DEFAULT NULL COMMENT '菜品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xiadanshuliang` varchar(200) DEFAULT NULL COMMENT '下单数量',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `peisongzhuangtai` varchar(200) DEFAULT NULL COMMENT '配送状态',
  `gengxinshijian` datetime DEFAULT NULL COMMENT '更新时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614915870215 DEFAULT CHARSET=utf8 COMMENT='配送信息';

/*Data for the table `peisongxinxi` */

insert  into `peisongxinxi`(`id`,`addtime`,`dingdanbianhao`,`caipinmingcheng`,`caipinfenlei`,`tupian`,`xiadanshuliang`,`zongjine`,`peisongzhuangtai`,`gengxinshijian`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`,`userid`) values (51,'2021-03-05 11:17:50','订单编号1','菜品名称1','菜品分类1','http://localhost:8080/ssm04gz3/upload/peisongxinxi_tupian1.jpg','下单数量1','总金额1','配送中','2021-03-05 11:17:50','用户名1','联系电话1','是','',1),(52,'2021-03-05 11:17:50','订单编号2','菜品名称2','菜品分类2','http://localhost:8080/ssm04gz3/upload/peisongxinxi_tupian2.jpg','下单数量2','总金额2','配送中','2021-03-05 11:17:50','用户名2','联系电话2','是','',2),(53,'2021-03-05 11:17:50','订单编号3','菜品名称3','菜品分类3','http://localhost:8080/ssm04gz3/upload/peisongxinxi_tupian3.jpg','下单数量3','总金额3','配送中','2021-03-05 11:17:50','用户名3','联系电话3','是','',3),(54,'2021-03-05 11:17:50','订单编号4','菜品名称4','菜品分类4','http://localhost:8080/ssm04gz3/upload/peisongxinxi_tupian4.jpg','下单数量4','总金额4','配送中','2021-03-05 11:17:50','用户名4','联系电话4','是','',4),(55,'2021-03-05 11:17:50','订单编号5','菜品名称5','菜品分类5','http://localhost:8080/ssm04gz3/upload/peisongxinxi_tupian5.jpg','下单数量5','总金额5','配送中','2021-03-05 11:17:50','用户名5','联系电话5','是','',5),(56,'2021-03-05 11:17:50','订单编号6','菜品名称6','菜品分类6','http://localhost:8080/ssm04gz3/upload/peisongxinxi_tupian6.jpg','下单数量6','总金额6','配送中','2021-03-05 11:17:50','用户名6','联系电话6','是','',6),(1614915258441,'2021-03-05 11:34:17','1614915156040','麻辣小龙虾','家常菜','http://localhost:8080/ssm04gz3/upload/1614915023690.jpg','1','88','已完成','2021-03-05 12:34:17','1','12312345645','是','已收货',1614915133851),(1614915870214,'2021-03-05 11:44:30','1614915781573','麻辣小龙虾','家常菜','http://localhost:8080/ssm04gz3/upload/1614915023690.jpg','2','176','已完成','2021-03-05 12:30:18','2','12345678945','是','已收到',1614915645567);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614915778395 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'用户1','yonghu','用户','fwmlj7i6muhjuos0rt507hhsb72zznxe','2021-03-05 11:21:42','2021-03-05 12:30:09'),(2,1,'abo','users','管理员','5ctbmdwhc67ezqen5myqhk96cooo5ar3','2021-03-05 11:23:10','2021-03-05 12:29:38'),(3,1614915133851,'1','yonghu','用户','195wotdk3ihu3bc5lwl8en363cm3ksz6','2021-03-05 11:32:20','2021-03-05 12:32:20'),(4,1614915645567,'2','yonghu','用户','2ul6ehmce7crmc5xbvgp20331kjoejix','2021-03-05 11:41:36','2021-03-05 12:41:36');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-05 11:17:50');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1614915645568 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`lianxidianhua`) values (11,'2021-03-05 11:17:50','用户1','123456','姓名1','男','http://localhost:8080/ssm04gz3/upload/yonghu_touxiang1.jpg','13823888881'),(12,'2021-03-05 11:17:50','用户2','123456','姓名2','男','http://localhost:8080/ssm04gz3/upload/yonghu_touxiang2.jpg','13823888882'),(13,'2021-03-05 11:17:50','用户3','123456','姓名3','男','http://localhost:8080/ssm04gz3/upload/yonghu_touxiang3.jpg','13823888883'),(14,'2021-03-05 11:17:50','用户4','123456','姓名4','男','http://localhost:8080/ssm04gz3/upload/yonghu_touxiang4.jpg','13823888884'),(15,'2021-03-05 11:17:50','用户5','123456','姓名5','男','http://localhost:8080/ssm04gz3/upload/yonghu_touxiang5.jpg','13823888885'),(16,'2021-03-05 11:17:50','用户6','123456','姓名6','男','http://localhost:8080/ssm04gz3/upload/yonghu_touxiang6.jpg','13823888886'),(1614915133851,'2021-03-05 11:32:13','1','1','陈永','男','http://localhost:8080/ssm04gz3/upload/1614915149625.jpg','12312345645'),(1614915645567,'2021-03-05 11:40:45','2','2','陈一','女','http://localhost:8080/ssm04gz3/upload/1614915705092.jpg','12345678945');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
