/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - diannaopeijianxiaoshouguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`diannaopeijianxiaoshouguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `diannaopeijianxiaoshouguanlixitong`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616554050017 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1616552230495,'2021-03-24 10:17:10',1616551958455,'河南省郑州市金水区杜岭街道二七路101号郑州市人民公园','张9','17703786969','是'),(1616554050016,'2021-03-24 10:47:29',1616552653468,'河南省郑州市管城回族区北下街街道东太康路42号中国网通二七路综合生产楼','张10','17703786969','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (22,'picture2','http://localhost:8080/diannaopeijianxiaoshouguanlixitong/upload/1616551865388.jpg'),(23,'picture2','http://localhost:8080/diannaopeijianxiaoshouguanlixitong/upload/1616551875310.jpg'),(24,'picture2','http://localhost:8080/diannaopeijianxiaoshouguanlixitong/upload/1616552140912.jpg');

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617006335984 DEFAULT CHARSET=utf8 COMMENT='商品评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (1617006278092,'2021-03-29 16:24:37',1616550894153,1614430386281,'sss',NULL),(1617006335983,'2021-03-29 16:25:35',1616550894153,1614430386281,'999',NULL);

/*Table structure for table `jifenjilu` */

DROP TABLE IF EXISTS `jifenjilu`;

CREATE TABLE `jifenjilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` bigint(20) NOT NULL COMMENT '用户id',
  `shangpinxinxi_id` bigint(20) NOT NULL COMMENT '商品id',
  `jifenjilu_types` varchar(200) DEFAULT NULL COMMENT '积分类型',
  `buynumber` int(11) NOT NULL COMMENT '积分数量',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='积分';

/*Data for the table `jifenjilu` */

insert  into `jifenjilu`(`id`,`yonghu_id`,`shangpinxinxi_id`,`jifenjilu_types`,`buynumber`,`insert_time`,`create_time`) values (1,1616551958455,1616550721129,'添加',8,'2021-03-24 10:18:02','2021-03-24 10:18:02'),(2,1616551958455,1616550894153,'添加',4,'2021-03-24 10:20:11','2021-03-24 10:20:12'),(3,1616551958455,1616550894153,'使用',8,'2021-03-24 10:20:11','2021-03-24 10:20:12'),(4,1616551958455,1616550894153,'添加',2,'2021-03-24 10:22:57','2021-03-24 10:22:57'),(5,1616551958455,1616550971668,'添加',18,'2021-03-24 10:22:57','2021-03-24 10:22:57');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617015597402 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (1617015486866,'2021-03-29 18:58:06',1614430386281,'a2','sssss','111'),(1617015597401,'2021-03-29 18:59:56',1614430386281,'a2','留言1','看到了');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (81,'2021-03-23 22:39:58','新闻标题1','http://localhost:8080/diannaopeijianxiaoshouguanlixitong/upload/news_picture1.jpg','内容1'),(82,'2021-03-23 22:39:58','新闻标题2','http://localhost:8080/diannaopeijianxiaoshouguanlixitong/upload/news_picture2.jpg','内容2'),(83,'2021-03-23 22:39:58','新闻标题3','http://localhost:8080/diannaopeijianxiaoshouguanlixitong/upload/news_picture3.jpg','内容3'),(84,'2021-03-23 22:39:58','新闻标题4','http://localhost:8080/diannaopeijianxiaoshouguanlixitong/upload/news_picture4.jpg','内容4'),(85,'2021-03-23 22:39:58','新闻标题5','http://localhost:8080/diannaopeijianxiaoshouguanlixitong/upload/news_picture5.jpg','内容5');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1616552578600 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1616552248228,'2021-03-24 10:17:27','202132410172728573378','shangpinxinxi',1616551958455,1616550721129,'SK 海力士内存条','http://localhost:8080/diannaopeijianxiaoshouguanlixitong/upload/1616550633450.webp',1,100,88,100,88,1,'未支付','河南省郑州市金水区杜岭街道二七路101号郑州市人民公园'),(1616552282721,'2021-03-24 10:18:02','20213241018219794787','shangpinxinxi',1616551958455,1616550721129,'SK 海力士内存条','http://localhost:8080/diannaopeijianxiaoshouguanlixitong/upload/1616550633450.webp',1,100,88,100,88,1,'已完成','河南省郑州市金水区杜岭街道二七路101号郑州市人民公园'),(1616552412274,'2021-03-24 10:20:11','202132410201188733920','shangpinxinxi',1616551958455,1616550894153,'复仇者系列ddr4 16G','http://localhost:8080/diannaopeijianxiaoshouguanlixitong/upload/1616550737594.webp',2,100,99,200,198,1,'已完成','河南省郑州市金水区杜岭街道二七路101号郑州市人民公园'),(1616552577838,'2021-03-24 10:22:57','202132410225731399126','shangpinxinxi',1616551958455,1616550894153,'复仇者系列ddr4 16G','http://localhost:8080/diannaopeijianxiaoshouguanlixitong/upload/1616550737594.webp',1,100,99,100,99,1,'已支付','河南省郑州市金水区杜岭街道二七路101号郑州市人民公园'),(1616552578599,'2021-03-24 10:22:57','202132410225733511061','shangpinxinxi',1616551958455,1616550971668,'金士顿骇客神条ddr4 8g','http://localhost:8080/diannaopeijianxiaoshouguanlixitong/upload/1616550926603.webp',3,100,66,300,198,1,'已支付','河南省郑州市金水区杜岭街道二七路101号郑州市人民公园');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616551980326 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (21,'2021-03-23 22:39:58','CPU'),(22,'2021-03-23 22:39:58','散热器'),(23,'2021-03-23 22:39:58','主板'),(24,'2021-03-23 22:39:58','内存'),(25,'2021-03-23 22:39:58','显卡'),(26,'2021-03-23 22:39:58','存储'),(27,'2021-03-24 09:22:56','机箱'),(28,'2021-03-24 09:22:56','电源'),(1616551980325,'2021-03-24 10:12:59','分类1');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `xiangqing` longtext COMMENT '详情',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '原价',
  `discountprice` float DEFAULT NULL COMMENT '折扣价',
  `jifen` float DEFAULT NULL,
  `flag` int(11) DEFAULT NULL COMMENT '是否上架(1:上架,2:下架)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616552069777 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`shuliang`,`pinpai`,`guige`,`xiangqing`,`fengmian`,`clicktime`,`clicknum`,`price`,`discountprice`,`jifen`,`flag`) values (1616550721129,'2021-03-24 09:52:01','1616550604','SK 海力士内存条','内存','98','海力士','8G','SK 海力士内存条详情\r\n','http://localhost:8080/diannaopeijianxiaoshouguanlixitong/upload/1616550633450.webp','2021-03-29 18:55:24',10,100,88,8,1),(1616550894153,'2021-03-24 09:54:53','1616550726','复仇者系列ddr4 16G','内存','97','复仇者','16G','复仇者系列ddr4 16G详情\r\n','http://localhost:8080/diannaopeijianxiaoshouguanlixitong/upload/1616550737594.webp','2021-03-29 16:25:39',11,100,99,2,1),(1616550971668,'2021-03-24 09:56:11','1616550904','金士顿骇客神条ddr4 8g','内存','117','金士顿','8g','金士顿骇客神条ddr4 8g的详情\r\n','http://localhost:8080/diannaopeijianxiaoshouguanlixitong/upload/1616550926603.webp','2021-03-24 10:22:57',4,100,66,6,1),(1616551101631,'2021-03-24 09:58:21','1616551020','科硕 1t储存','存储','100','科硕','1t','科硕 1t储存的详情\r\n','http://localhost:8080/diannaopeijianxiaoshouguanlixitong/upload/1616551064815.webp',NULL,0,100,55,10,1),(1616551181917,'2021-03-24 09:59:41','1616551141','酷睿六扇散热器','散热器','100','酷睿','六扇','酷睿六扇散热器 的详情\r\n','http://localhost:8080/diannaopeijianxiaoshouguanlixitong/upload/1616551168881.webp',NULL,0,100,66,6,1),(1616551254678,'2021-03-24 10:00:54','1616551192','酷睿双扇散热器','散热器','100','酷睿','双扇','酷睿双扇散热器 的详情\r\n','http://localhost:8080/diannaopeijianxiaoshouguanlixitong/upload/1616551241319.webp',NULL,0,100,33,3,1),(1616551311755,'2021-03-24 10:01:50','1616551264','铝合金散热器','散热器','100','普通','铝合金','铝合金散热器 的详情\r\n','http://localhost:8080/diannaopeijianxiaoshouguanlixitong/upload/1616551292089.webp',NULL,0,88,66,6,1),(1616551541974,'2021-03-24 10:05:41','1616551320','三星ddr4 8g','内存','100','三星','8g','三星ddr4 8g 的详情\r\n','http://localhost:8080/diannaopeijianxiaoshouguanlixitong/upload/1616551326964.webp',NULL,0,200,166,10,1),(1616552069776,'2021-03-24 10:14:28','1616552020','西部数据1t硬盘','存储','109','西部数据','1t','西部数据1t硬盘 的详情\r\n','http://localhost:8080/diannaopeijianxiaoshouguanlixitong/upload/1616552024797.webp','2021-03-24 10:15:18',2,100,33,3,1);

/*Table structure for table `shouhou` */

DROP TABLE IF EXISTS `shouhou`;

CREATE TABLE `shouhou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `orderid` varchar(200) NOT NULL COMMENT '订单id',
  `suqiu` varchar(200) NOT NULL COMMENT '诉求内容',
  `suqiutime` timestamp NULL DEFAULT NULL COMMENT '诉求时间',
  `shouhoutype` int(11) NOT NULL COMMENT '售后类型 1:已处理  2 未处理',
  `chulitype` int(11) DEFAULT NULL COMMENT '处理结果  1:已解决  2:未解决',
  `chulicontent` varchar(200) DEFAULT NULL,
  `chulitime` timestamp NULL DEFAULT NULL COMMENT '处理时间',
  `addtime` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1374546922540109827 DEFAULT CHARSET=utf8 COMMENT='售后表';

/*Data for the table `shouhou` */

insert  into `shouhou`(`id`,`orderid`,`suqiu`,`suqiutime`,`shouhoutype`,`chulitype`,`chulicontent`,`chulitime`,`addtime`) values (1374546922540109826,'202132410201188733920','质量不好','2021-03-24 10:21:39',1,1,'给换货','2021-03-24 10:22:02','2021-03-24 10:21:39');

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
) ENGINE=InnoDB AUTO_INCREMENT=1616552591351 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1616552591350,'2021-03-24 10:23:11',1616551958455,1616550894153,'shangpinxinxi','复仇者系列ddr4 16G','http://localhost:8080/diannaopeijianxiaoshouguanlixitong/upload/1616550737594.webp');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (15,1615339905628,'a3','yonghu','用户','zdd1fpxoqxczre5mxlk9bb11jdatqdwd','2021-03-23 20:47:07','2021-03-23 21:48:25'),(16,1,'admin','users','管理员','6xtzeapxmfvboie74v5eplg4nygws4nc','2021-03-23 20:47:22','2021-03-29 19:58:24'),(17,1616551958455,'a9','yonghu','用户','tn2bgqzgao15rzu1ofuaoy908ig08z8r','2021-03-24 10:13:25','2021-03-24 11:41:25'),(18,1616552653468,'a10','yonghu','用户','qwm9tv8zr9f830apl6b9mx665rhdwcku','2021-03-24 10:24:37','2021-03-24 11:24:38'),(19,1614430386281,'a2','yonghu','用户','j3o24dho3byut3ks2vcpqtq0g0ybergn','2021-03-29 16:24:22','2021-03-29 19:55:38');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','123456','管理员','2021-03-09 22:39:58');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  `jifen` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616552653469 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`lianxidianhua`,`dianziyouxiang`,`money`,`jifen`) values (1614430386281,'2021-02-27 20:53:06','a2','a2','123456','男','13823888883','229992@qq.ccom',1286,112),(1614431342348,'2021-02-27 21:09:02','a4','a4','123456','男','a41','22850@qq.com',98,52),(1615339905628,'2021-03-10 09:31:45','a3','a3','123456','男','13823888883','77389000222@qq.com',1926,3),(1615605788598,'2021-03-13 11:23:08','a5','张5','123456','女','17703786969','2@qq.ccom',0,0),(1616551958455,'2021-03-24 10:12:38','a9','张9','123456','女','17703786939','2222222@qq.ccom',9128,24),(1616552653468,'2021-03-24 10:24:13','a10','张10','123456',NULL,'17703786910','22@qq.com',0,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
