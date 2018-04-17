/*
SQLyog Enterprise - MySQL GUI v6.14
MySQL - 5.5.22 : Database - hongshan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `hongshan`;

USE `hongshan`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `customer_id` varchar(255) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL COMMENT '外联user_id',
  `customer_grade` varchar(255) DEFAULT NULL COMMENT '客户分级',
  `customer_name` varchar(255) DEFAULT NULL COMMENT '客户姓名',
  `customer_origin` varchar(255) DEFAULT NULL COMMENT '客户来源',
  `customer_telephone` varchar(255) DEFAULT NULL,
  `customer_phone` varchar(255) DEFAULT NULL COMMENT '客户手机',
  `customer_qq` varchar(255) DEFAULT NULL COMMENT '客户qq',
  `customer_weixin` varchar(255) DEFAULT NULL COMMENT '客户微信',
  `customer_city` varchar(255) DEFAULT NULL,
  `customer_address` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `customer` */

insert  into `customer`(`customer_id`,`user_id`,`customer_grade`,`customer_name`,`customer_origin`,`customer_telephone`,`customer_phone`,`customer_qq`,`customer_weixin`,`customer_city`,`customer_address`,`create_time`) values ('1','2','B','李四1','网站','11111','15784654814','4567891','488481','','石家庄市桥西区','2018-03-31 10:51:20'),('2','2','A','李四2','网站','111111','15784654814','4567891','488481',NULL,'石家庄市桥西区','2018-03-31 10:51:20'),('3','3','A','李四3','网站','1111','15784654814','4567891','488481',NULL,'石家庄市桥西区','2018-03-31 10:51:20'),('4','3','A','李四4','网站','1111','15784654814','4567891','488481',NULL,'石家庄市桥西区','2018-03-31 10:51:20'),('4dc53967bff24b22809d828d47850b49','2','C','周六','网站','123213','213213','213213','12321','3123','123213','2018-04-11 09:03:42'),('5e05988300a145c0a4539614575ec706','2','A','问问群二23123213','wqe213213',NULL,'1232121321','32131223121','12321333213','2132132213','213213213213','2018-04-11 14:05:55'),('cc7196f24d0647da99c487e1cd116eba','2','','测试','网站',NULL,'3123','3213','321321','213213','123213','2018-04-11 14:03:52');

/*Table structure for table `project` */

DROP TABLE IF EXISTS `project`;

CREATE TABLE `project` (
  `project_id` varchar(100) NOT NULL,
  `customer_id` varchar(255) DEFAULT NULL COMMENT '项目所属用户',
  `project_platform` varchar(255) DEFAULT NULL COMMENT '项目平台',
  `project_number` varchar(255) DEFAULT NULL COMMENT '项目编号',
  `project_budget` varchar(255) DEFAULT NULL COMMENT '客户预算',
  `project_quote` varchar(255) DEFAULT NULL COMMENT '项目报价',
  `project_name` varchar(255) DEFAULT NULL COMMENT '项目名称',
  `project_req` text COMMENT '项目需求',
  `project_state` varchar(255) DEFAULT NULL COMMENT '项目状态',
  `project_manager` varchar(255) DEFAULT NULL COMMENT '项目经理',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `project` */

insert  into `project`(`project_id`,`customer_id`,`project_platform`,`project_number`,`project_budget`,`project_quote`,`project_name`,`project_req`,`project_state`,`project_manager`,`create_time`) values ('0941746cd249413e93ddf03c4f727fa9','1','wewqe','wqewqewqe','qwewqeeqwe','ewqewq','fasfsfsad','       ewqeqwewqewq         ','有合同','ewqewq','2018-04-11 14:28:27'),('1','1','一品威客','596514','1-3w','3.7','婚恋交友网站开发111','有基本功能就好……比如会员资料，身份认证，搜索功能，信息聊天功能\r\n生活地区，籍贯，年龄，身高，学历，月收入，星座，爱好\r\n不显示照片，我看很多婚恋网站首页都是照片\r\n所以有昵称和头像就好\r\n但是个人资料里面可以上传照片的\r\n后台是PC端，客户端（安卓和IOS）\r\n这个要有，要充值才是会员\r\n照片是在自己的资料里面，比如陪陪上，可以上传照片也可以没有\r\n会员一次性购买吧，不分等级\r\n一次性买会员就都可以，聊天发信息都可以的\r\n永久的\r\n第二页分类……比如社区服务，会友天地，聊天室，资讯分享等\r\n这个应该可以浏览的，就是不能发信息聊天\r\n你说呢，这个怎么办才好\r\n不是会员只能看到第二页分类\r\n聊天室可以平台开设，招募聊天室管理员\r\n平台分城市吗，不分吧全国\r\n聊天室还是不分城市，只是在社区服务里面可以分\r\n请参考信义堂网站首页和第二页和陪陪里面的聊天秀场和个人资料显示\r\n社区服务想设牧养团契奉献榜，一些看望孤寡老人和慰问孤儿院儿童的活动资讯有图片\r\n通知形式就好','无合同',NULL,'2018-03-31 10:50:21'),('17af683e9eb748c6be7367af2dfa9494','1','wqewq11','qwewq111','wqewqe11','qwewq11','qwewq11111','ewqe11','无合同','11','2018-04-04 16:29:41'),('2','2','一品威客','596514','1-3w','3.7','婚恋交友网站开发','有基本功能就好……比如会员资料，身份认证，搜索功能，信息聊天功能\r\n生活地区，籍贯，年龄，身高，学历，月收入，星座，爱好\r\n不显示照片，我看很多婚恋网站首页都是照片\r\n所以有昵称和头像就好\r\n但是个人资料里面可以上传照片的\r\n后台是PC端，客户端（安卓和IOS）\r\n这个要有，要充值才是会员\r\n照片是在自己的资料里面，比如陪陪上，可以上传照片也可以没有\r\n会员一次性购买吧，不分等级\r\n一次性买会员就都可以，聊天发信息都可以的\r\n永久的\r\n第二页分类……比如社区服务，会友天地，聊天室，资讯分享等\r\n这个应该可以浏览的，就是不能发信息聊天\r\n你说呢，这个怎么办才好\r\n不是会员只能看到第二页分类\r\n聊天室可以平台开设，招募聊天室管理员\r\n平台分城市吗，不分吧全国\r\n聊天室还是不分城市，只是在社区服务里面可以分\r\n请参考信义堂网站首页和第二页和陪陪里面的聊天秀场和个人资料显示\r\n社区服务想设牧养团契奉献榜，一些看望孤寡老人和慰问孤儿院儿童的活动资讯有图片\r\n通知形式就好','无合同',NULL,'2018-03-31 10:50:21'),('228d45dde1e344bfade9e36f9042c4dd','1','121','121','12','12','qwewq','121','121',NULL,'2018-04-04 16:31:28'),('3','3','一品威客','596514','1-3w','3.7','婚恋交友网站开发','有基本功能就好……比如会员资料，身份认证，搜索功能，信息聊天功能\r\n生活地区，籍贯，年龄，身高，学历，月收入，星座，爱好\r\n不显示照片，我看很多婚恋网站首页都是照片\r\n所以有昵称和头像就好\r\n但是个人资料里面可以上传照片的\r\n后台是PC端，客户端（安卓和IOS）\r\n这个要有，要充值才是会员\r\n照片是在自己的资料里面，比如陪陪上，可以上传照片也可以没有\r\n会员一次性购买吧，不分等级\r\n一次性买会员就都可以，聊天发信息都可以的\r\n永久的\r\n第二页分类……比如社区服务，会友天地，聊天室，资讯分享等\r\n这个应该可以浏览的，就是不能发信息聊天\r\n你说呢，这个怎么办才好\r\n不是会员只能看到第二页分类\r\n聊天室可以平台开设，招募聊天室管理员\r\n平台分城市吗，不分吧全国\r\n聊天室还是不分城市，只是在社区服务里面可以分\r\n请参考信义堂网站首页和第二页和陪陪里面的聊天秀场和个人资料显示\r\n社区服务想设牧养团契奉献榜，一些看望孤寡老人和慰问孤儿院儿童的活动资讯有图片\r\n通知形式就好','无合同',NULL,'2018-03-31 10:50:21'),('4','4','一品威客','596514','1-3w','3.7','婚恋交友网站开发','有基本功能就好……比如会员资料，身份认证，搜索功能，信息聊天功能\r\n生活地区，籍贯，年龄，身高，学历，月收入，星座，爱好\r\n不显示照片，我看很多婚恋网站首页都是照片\r\n所以有昵称和头像就好\r\n但是个人资料里面可以上传照片的\r\n后台是PC端，客户端（安卓和IOS）\r\n这个要有，要充值才是会员\r\n照片是在自己的资料里面，比如陪陪上，可以上传照片也可以没有\r\n会员一次性购买吧，不分等级\r\n一次性买会员就都可以，聊天发信息都可以的\r\n永久的\r\n第二页分类……比如社区服务，会友天地，聊天室，资讯分享等\r\n这个应该可以浏览的，就是不能发信息聊天\r\n你说呢，这个怎么办才好\r\n不是会员只能看到第二页分类\r\n聊天室可以平台开设，招募聊天室管理员\r\n平台分城市吗，不分吧全国\r\n聊天室还是不分城市，只是在社区服务里面可以分\r\n请参考信义堂网站首页和第二页和陪陪里面的聊天秀场和个人资料显示\r\n社区服务想设牧养团契奉献榜，一些看望孤寡老人和慰问孤儿院儿童的活动资讯有图片\r\n通知形式就好','无合同',NULL,'2018-03-31 10:50:21'),('66ee2d45b0aa4026b6eb5df3696f6412','1','11','11','wqewqe','ewq','qwewq','ewqe','eqw',NULL,'2018-04-04 16:29:12'),('9db9eed0678f483f9b2d6bb56106e48a','1','一品威客','596514','1-3w','3.7','婚恋交友网站开发11','有基本功能就好……比如会员资料，身份认证，搜索功能，信息聊天功能\r\n生活地区，籍贯，年龄，身高，学历，月收入，星座，爱好\r\n不显示照片，我看很多婚恋网站首页都是照片\r\n所以有昵称和头像就好\r\n但是个人资料里面可以上传照片的\r\n后台是PC端，客户端（安卓和IOS）\r\n这个要有，要充值才是会员\r\n照片是在自己的资料里面，比如陪陪上，可以上传照片也可以没有\r\n会员一次性购买吧，不分等级\r\n一次性买会员就都可以，聊天发信息都可以的\r\n永久的\r\n第二页分类……比如社区服务，会友天地，聊天室，资讯分享等\r\n这个应该可以浏览的，就是不能发信息聊天\r\n你说呢，这个怎么办才好\r\n不是会员只能看到第二页分类\r\n聊天室可以平台开设，招募聊天室管理员\r\n平台分城市吗，不分吧全国\r\n聊天室还是不分城市，只是在社区服务里面可以分\r\n请参考信义堂网站首页和第二页和陪陪里面的聊天秀场和个人资料显示\r\n社区服务想设牧养团契奉献榜，一些看望孤寡老人和慰问孤儿院儿童的活动资讯有图片\r\n通知形式就好','无合同',NULL,'2018-04-04 16:57:33'),('f8ff2f915ca143ac81f7952b69adbe38','1','ewqewq','wqewqe','ewqewqe','ewqe','wqewqewq','      ewqeqweqw          ','无合同','ewqewq','2018-04-11 14:22:55');

/*Table structure for table `project_tracking` */

DROP TABLE IF EXISTS `project_tracking`;

CREATE TABLE `project_tracking` (
  `project_tracking_id` varchar(100) NOT NULL COMMENT '项目跟踪',
  `project_id` varchar(255) DEFAULT NULL COMMENT '项目id',
  `project_tracking_details` varchar(255) DEFAULT NULL COMMENT '跟踪详情',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`project_tracking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `project_tracking` */

insert  into `project_tracking`(`project_tracking_id`,`project_id`,`project_tracking_details`,`create_time`) values ('1','1','QQ沟通，已经发过报价，客户在等案例发过去，','2018-03-31 10:54:31'),('11580edee923471b9ffa27b7a2e736d2','f8ff2f915ca143ac81f7952b69adbe38','qwewqe','2018-04-11 14:53:24'),('2','1','QQ沟通，已经发过报价，客户在等案例发过去，','2018-03-31 10:54:31'),('3','2','QQ沟通，已经发过报价，客户在等案例发过去，','2018-03-31 10:54:31'),('4','2','QQ沟通，已经发过报价，客户在等案例发过去，','2018-03-31 10:54:31'),('5','3','QQ沟通，已经发过报价，客户在等案例发过去，','2018-03-31 10:54:31'),('52dd7ee781224de28aa1599901329de6','2','qwewqwqewqe','2018-04-04 17:42:04'),('5b1b1c9d8d684b5394cda4ef0b03422b','2','qwewqewqewqewqewqe','2018-04-04 17:43:54'),('5bda5cb19f564307a19585ca5b431a86','9db9eed0678f483f9b2d6bb56106e48a','wqewqewq','2018-04-11 14:53:00'),('6','3','QQ沟通，已经发过报价，客户在等案例发过去，','2018-03-31 10:54:31'),('6c179371ea264b9abcb8b6b9d8408204','2','jiojoijioio','2018-04-04 17:50:26'),('7','4','QQ沟通，已经发过报价，客户在等案例发过去，','2018-03-31 10:54:31'),('8','4','QQ沟通，已经发过报价，客户在等案例发过去，','2018-03-31 10:54:31'),('ab7ce74512dc4a8596847bfdae3cd9aa','1','eqwewqewq','2018-04-04 17:52:10'),('d7ccccb3fc7f45fbaea18d4808c6edf1','1','dasdsad','2018-04-04 17:40:37');

/*Table structure for table `task` */

DROP TABLE IF EXISTS `task`;

CREATE TABLE `task` (
  `task_id` varchar(100) DEFAULT NULL COMMENT '任务id',
  `user_relation_id` varchar(255) DEFAULT NULL COMMENT '任务关系id',
  `task_assigner_target` varchar(255) DEFAULT NULL COMMENT '分配任务目标',
  `task_ideal_target` varchar(255) DEFAULT NULL COMMENT '理想任务目标',
  `task_real_completion` varchar(255) DEFAULT NULL COMMENT '实际完成的任务目标',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `task` */

insert  into `task`(`task_id`,`user_relation_id`,`task_assigner_target`,`task_ideal_target`,`task_real_completion`,`createtime`) values ('1','1','2','5','4','2018-04-12 10:02:14'),('2','2','2','5','3',NULL);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL COMMENT '0 超级管理员 1普通管理员',
  `user_account` varchar(255) DEFAULT NULL COMMENT '用户账号',
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL COMMENT '用户密码',
  `user_islock` varchar(255) DEFAULT NULL COMMENT '是否被锁',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`user_id`,`role`,`user_account`,`user_name`,`user_password`,`user_islock`,`create_time`) values ('1','0','zhangsan','张三','111111','0','2018-03-31 10:52:23'),('2','1','wangwu','王五','111111','0','2018-03-31 11:10:38'),('3','1','zhaoliu','赵六','111111','0','2018-03-31 11:11:14'),('4','2','cap1','队长1','111111','0','2018-03-31 11:11:14'),('5','2','cap2','队长2','111111','0','2018-04-11 11:11:14'),('6','1','liqi','李七','111111','0','2018-04-11 11:11:14'),('7','1','zhouba','周八','111111','0','2018-04-12 10:02:14');

/*Table structure for table `user_relation` */

DROP TABLE IF EXISTS `user_relation`;

CREATE TABLE `user_relation` (
  `user_relation_id` varchar(100) DEFAULT NULL,
  `user_id` varchar(100) DEFAULT NULL COMMENT '用户id',
  `user_parent_id` varchar(100) DEFAULT NULL COMMENT '上级id',
  `createtime` varchar(100) DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_relation` */

insert  into `user_relation`(`user_relation_id`,`user_id`,`user_parent_id`,`createtime`) values ('1','2','4','2018-04-12 10:02:14'),('2','3','4','2018-04-12 10:02:14'),('3','6','5','2018-04-12 10:02:14'),('4','7','5','2018-04-12 10:02:14'),('5','4','1','2018-04-12 10:02:14'),(NULL,'5','1','2018-04-12 10:02:14');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
