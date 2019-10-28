-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: ypiao
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `yp_address`
--

DROP TABLE IF EXISTS `yp_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `yp_address` (
  `address_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `receiver` varchar(16) DEFAULT NULL,
  `province` varchar(16) DEFAULT NULL,
  `city` varchar(16) DEFAULT NULL,
  `county` varchar(16) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `cellphone` varchar(16) DEFAULT NULL,
  `fixedphone` varchar(16) DEFAULT NULL,
  `postcode` char(6) DEFAULT NULL,
  `tag` varchar(16) DEFAULT NULL,
  `is_default` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yp_address`
--

LOCK TABLES `yp_address` WRITE;
/*!40000 ALTER TABLE `yp_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `yp_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yp_cart`
--

DROP TABLE IF EXISTS `yp_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `yp_cart` (
  `cart_id` int(11) NOT NULL,
  `tic_id` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `is_checked` int(11) DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yp_cart`
--

LOCK TABLES `yp_cart` WRITE;
/*!40000 ALTER TABLE `yp_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `yp_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yp_index_lbt`
--

DROP TABLE IF EXISTS `yp_index_lbt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `yp_index_lbt` (
  `lbt_id` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`lbt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yp_index_lbt`
--

LOCK TABLES `yp_index_lbt` WRITE;
/*!40000 ALTER TABLE `yp_index_lbt` DISABLE KEYS */;
/*!40000 ALTER TABLE `yp_index_lbt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yp_index_tic`
--

DROP TABLE IF EXISTS `yp_index_tic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `yp_index_tic` (
  `itic_id` int(11) NOT NULL,
  `itic_style` int(11) DEFAULT NULL,
  `itic_family_id` int(11) DEFAULT NULL,
  `href` varchar(45) DEFAULT NULL,
  `recommended` int(11) DEFAULT NULL,
  `top_sale` int(11) DEFAULT NULL,
  `new_arrival` int(11) DEFAULT NULL,
  PRIMARY KEY (`itic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yp_index_tic`
--

LOCK TABLES `yp_index_tic` WRITE;
/*!40000 ALTER TABLE `yp_index_tic` DISABLE KEYS */;
INSERT INTO `yp_index_tic` VALUES (1,1,1,NULL,0,NULL,NULL),(2,1,2,NULL,1,NULL,NULL),(3,1,3,NULL,2,NULL,NULL),(4,1,4,NULL,3,NULL,NULL),(5,1,5,NULL,4,NULL,NULL),(6,2,6,NULL,0,NULL,NULL),(7,2,7,NULL,1,NULL,NULL),(8,2,8,NULL,2,NULL,NULL),(9,2,9,NULL,3,NULL,NULL),(10,2,10,NULL,4,NULL,NULL),(11,3,11,NULL,0,NULL,NULL),(12,3,12,NULL,1,NULL,NULL),(13,3,13,NULL,2,NULL,NULL),(14,3,14,NULL,3,NULL,NULL),(15,3,15,NULL,4,NULL,NULL),(16,4,16,NULL,0,NULL,NULL),(17,4,17,NULL,1,NULL,NULL),(18,4,18,NULL,2,NULL,NULL),(19,4,19,NULL,3,NULL,NULL),(20,4,20,NULL,4,NULL,NULL),(21,5,21,NULL,0,NULL,NULL),(22,5,22,NULL,1,NULL,NULL),(23,5,23,NULL,2,NULL,NULL),(24,5,24,NULL,3,NULL,NULL),(25,5,25,NULL,4,NULL,NULL),(26,6,26,NULL,0,NULL,NULL),(27,6,27,NULL,1,NULL,NULL),(28,6,28,NULL,2,NULL,NULL),(29,6,29,NULL,3,NULL,NULL),(30,6,30,NULL,4,NULL,NULL),(31,0,31,NULL,0,NULL,NULL),(32,0,32,NULL,1,NULL,NULL),(33,0,33,NULL,2,NULL,NULL),(34,0,34,NULL,3,NULL,NULL),(35,0,35,NULL,4,NULL,NULL);
/*!40000 ALTER TABLE `yp_index_tic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yp_order`
--

DROP TABLE IF EXISTS `yp_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `yp_order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `order_time` bigint(20) DEFAULT NULL,
  `pay_time` bigint(20) DEFAULT NULL,
  `deliver_time` bigint(20) DEFAULT NULL,
  `received_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yp_order`
--

LOCK TABLES `yp_order` WRITE;
/*!40000 ALTER TABLE `yp_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `yp_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yp_order_detail`
--

DROP TABLE IF EXISTS `yp_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `yp_order_detail` (
  `od_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `tic_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`od_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yp_order_detail`
--

LOCK TABLES `yp_order_detail` WRITE;
/*!40000 ALTER TABLE `yp_order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `yp_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yp_tickets`
--

DROP TABLE IF EXISTS `yp_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `yp_tickets` (
  `tic_id` int(11) NOT NULL AUTO_INCREMENT,
  `tic_style` int(11) DEFAULT NULL,
  `tic_title` varchar(45) DEFAULT NULL,
  `tic_time` varchar(45) DEFAULT NULL,
  `tic_price` varchar(455) DEFAULT NULL,
  `tic_venue` varchar(45) DEFAULT NULL,
  `tic_location` varchar(45) DEFAULT NULL,
  `tic_seasons` varchar(455) DEFAULT NULL,
  `tic_schedule` varchar(455) DEFAULT NULL,
  `tic_number` varchar(455) DEFAULT NULL,
  `tic_pic` varchar(455) DEFAULT NULL,
  `tic_keyword` varchar(45) DEFAULT NULL,
  `tic_detail` text,
  `tic_zk` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yp_tickets`
--

LOCK TABLES `yp_tickets` WRITE;
/*!40000 ALTER TABLE `yp_tickets` DISABLE KEYS */;
INSERT INTO `yp_tickets` VALUES (1,1,'五月天Mayday 2019 Just Rock It!!! 蓝 | BLUE-北京站','2019.08.23-08.25','100,200,300,400,500,600,700,800,900,1000,1100,1200,1300,1400,1500','【北京】国家体育场-鸟巢','北京','2019-08-23 周五 18:30,2019-08-24 周五 18:30,2019-08-25 周日 18:30','255看台,355看台,555看台,755看台,1255（内场）,1655（内场）,1855（内场）,内场前10排,内场前5排,内场前3排,内场第1排,888元VVIP套餐,VVIP包厢（无餐）,1088元VVIP套餐,1288元VVIP套餐@255看台,355看台,555看台,755看台,1255（内场）,1655（内场）,1855（内场）,内场前10排,内场前5排,内场前3排,内场第1排,888元VVIP套餐,VVIP包厢（无餐）,1088元VVIP套餐,1288元VVIP套餐@255看台,355看台,555看台,755看台,1255（内场）,1655（内场）,1855（内场）,内场前10排,内场前5排,内场前3排,内场第1排,888元VVIP套餐,VVIP包厢（无餐）,1088元VVIP套餐,1288元VVIP套餐','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15@1,3,5,7,9,11,13,15@2,4,6,8,10,12,14','https://api.ypiao.com/event/cover.json?event_code=5337a4d160863a5f33172e599a649734&platform=6&w=196&h=252&q=80','五月天','<div class=\"noticecon\">\n                <p>\n                    </p><h4><p style=\"font-family: 微软雅黑; margin-top: 20px; margin-bottom: 0px; margin-left: 10.5pt; padding: 0px; color: rgb(102, 102, 102); font-size: 16px; background-color: rgb(255, 255, 255);\"><strong>   <span rel=\"color: rgb(255, 140, 0);\">VVIP超级包厢套餐服务，内含自助冷餐1份+本场演唱会包厢/卡座观演门票1张（套餐价值越高，门票观演位置越佳）。现抢购价888元/套、1088元/套、1288元/套，数量有限，先到先得！</span></strong><strong>    </strong></p><p style=\"font-family: 微软雅黑; margin-top: 20px; margin-bottom: 0px; margin-left: 10.5pt; padding: 0px; color: rgb(102, 102, 102); font-size: 16px; background-color: rgb(255, 255, 255);\"><strong><span rel=\"color: rgb(255, 140, 0);\"></span></strong><strong>   因此套餐特殊性演出前7-10天快递门票，如有变化另行通知。</strong>【VVIP观演位置】</p><p style=\"font-family: 微软雅黑; margin-top: 20px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-size: 16px; background-color: rgb(255, 255, 255); text-align: center;\">    VVIP超级包厢套餐服务卡座观演位置为鸟巢文化中心4层东侧，此区域坐席为ITA交流空间VVIP专属坐席，观演效果颇佳。</p><p style=\"font-family: 微软雅黑; margin-top: 20px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-size: 16px; background-color: rgb(255, 255, 255); text-align: center;\"><img alt=\"五月天Mayday 2019 Just Rock It!!! 蓝 | BLUE-北京站\" src=\"https://images.ypiao.com/event-desc-www/201906/20190612115035_50521.jpg\"></p><p style=\"font-family: 微软雅黑; margin-top: 20px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-size: 16px; background-color: rgb(255, 255, 255); text-align: center;\"><img alt=\"五月天Mayday 2019 Just Rock It!!! 蓝 | BLUE-北京站\" src=\"https://images.ypiao.com/event-desc-www/201906/20190612115036_72647.jpg\"></p><p style=\"font-family: 微软雅黑; margin-top: 20px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-size: 16px; background-color: rgb(255, 255, 255); text-align: center;\"><br></p><p>演出介绍</p><p>共赴“蓝色”盛夏 五月天六度归巢</p><p>「Mayday 2019 Just Rock It!!!“蓝 | BLUE”」北京演唱会</p><p>8月23/24/25日重返鸟巢</p><p>继去年引爆三十万歌迷“加班”狂欢后，“华语第一天团”五月天今日再次公布将携「Mayday 2019 Just Rock It!!!“蓝 | BLUE”」北京演唱会，于8月23/24/25日第六度重返鸟巢，与焦急等待已久的歌迷们再次相约北京盛夏！此次五月天六度归巢，再次刷新自身纪录，将达成鸟巢6年开唱14场的前人未达之壮举，再次证明能打破五月天演唱会纪录的，只有五月天自己！</p><p>五月天从最初带着梦想“挑战鸟巢”，一路走来成为了在鸟巢连续举办场次最多、动员人数最多、票房秒杀速度最快的传奇。以五月天演唱会场场秒杀的纪录来看，此次“归巢”将再度掀起抢票狂潮，续写票房神话。</p><p>“2019 Just Rock It!!!”搭乘蓝色时光机，相遇“青春期的五月天”<br></p><p>1999年，五月天发行第一张专辑《五月天第一张创作专辑》，开启他们音乐的“疯狂世界”，与《爱情万岁》、《人生海海》蓝色封面组成了“蓝色三部曲”，同时也是五月天的“人生三部曲”。这三张专辑是许多歌迷认识五月天的起点，一首首宣扬着五月天青春态度的歌曲，陪伴歌迷走过年少的懵懂和迷茫，赋予大家面对善与恶、爱与痛的勇气。转眼20年，他们走过无数城市，征战数不清的指标性万人场地，任意门外绕一大圈，始终未变的是不论身处何地，五月天的歌曲从未缺席。</p><p>20年前的你有过怎样的梦想，此刻你是否已成为当初期盼的自己，变故或是坚持，还好耳机里始终有一首五月天的歌唱进心里。在这20年间的演出现场中，有共同喜欢五月天的情侣在偶像的《拥抱》歌声中求婚成功；有处在毕业季的好兄弟们比肩合唱《终结孤单》；也有一张张在《人生海海》和《憨人》的歌声中泪流满面的坚强面庞……看五月天的演唱会从来不只是听三个小时的歌，你我生命中精彩的篇章也在此发生着。“2019 Just Rock It!!!”演唱会以“蓝色三部曲”的封面颜色“BLUE”为基调，借由歌曲跟着五月天回归原点，一起搭乘名为蓝的时光机，相遇“青春期的五月天”，同时对话“青春期的自己”，回看有五月天的音乐陪伴走过的生命中弥足珍贵的每个阶段。</p><p>20岁王俊凯助阵20周年“蓝三”串场电影，今年盛夏继续共赴 “鸟巢之约”</p><p>诚意十足的五月天每一次呈现给大家的演出都充满无限惊喜，此次巡回更是邀请超人气男团TFBOYS队长王俊凯出演Just Rock It“蓝 | BLUE”演唱会电影，五月天和王俊凯的组合一经曝光就刷屏网络，主唱阿信说：“这次找小凯，不只因为小凯很受欢迎，而且他今年20岁，和蓝色三部曲一样20周年。”20岁王俊凯演出20周年“蓝三”演唱会串场电影极具意义，同时电影也请到“占据”五月天青春岁月的《温柔》、《终结孤单》女主角胡安安共同参演，唤醒纯真的青春记忆。</p><p>去年“人生无限公司”鸟巢演唱会，五月天特邀张惠妹、蔡依林、黄渤三位超重磅嘉宾，为歌迷带来一连三天的意外惊喜，据主办方透露，今年8月23/24/25日的“2019 Just Rock It!!!”不论是演出环节还是曲目设置，五月天和导演组都在精心策划当中，希望让相聚在鸟巢的每一位歌迷都能亲临一场最惊喜、特别与感动的难忘现场。</p><p style=\"font-family: 微软雅黑; margin-top: 20px; margin-bottom: 0px; padding: 0px; color: rgb(102, 102, 102); font-size: 16px; background-color: rgb(255, 255, 255); text-align: center;\">「Mayday 2019 Just Rock It!!!“蓝 | BLUE”」自4月大阪城起跑，5月在中国香港迪士尼一连嗨唱6场之后，歌迷就持续喊话求安排北京鸟巢站，此次终于确定的六度归巢可以说是众望所归。鸟巢对于五月天和五迷的意义不仅是一个简单的演出场地，更将演唱会变为一场具有仪式感和特别象征意义的数万人朝圣，没有在鸟巢和五月天相遇的夏天不是完整的夏天。今年8月，让我们共赴“蓝色”盛夏，在鸟巢闪耀的星空下穿越20年，和五月天一同回归初心，回到音乐的起点。</p></h4>                <p></p>\n            </div>',NULL),(2,1,'绝色莫文蔚巡回演唱会2019-咸阳站','2019.10.19','280,380,480,680,880,1080,2010,2030,2050,3000','咸阳奥体中心体育场','咸阳','2019-10-19 周六 17:30','280元（看台票）,380元（看台票）,480元（看台票）,680元（内场票）,880元（内场票）,1080（内场票）,内场第1排,内场前3排,内场前5排,内场前10排','1,2,3,4,5,6,7,8,9,10','https://api.ypiao.com/event/cover.json?event_code=70e0980ddb9d2d262bf8ae3a705fad42&platform=6&w=196&h=252&q=80',NULL,NULL,NULL),(3,1,'周杰伦2019嘉年华世界巡回演唱会-香港站','2019.12.06-2019.12.14','100,200,300,400','香港迪士尼乐园幻想道露天场地','香港','2019-12-06 周五 19:15,2019-12-07 周六 19:15,2019-12-13 周五 19:15,2019-12-14 周六 19:15','480票面 HK$,780票面 HK$,980票面 HK$,1280票面 HK$@480票面 HK$,780票面 HK$,980票面 HK$,1280票面 HK$@480票面 HK$,780票面 HK$,980票面 HK$,1280票面 HK$@480票面 HK$,780票面 HK$,980票面 HK$,1280票面 HK$','1,2,3,4@0,2,3,4@1,0,3,4@1,2,0,4','https://api.ypiao.com/event/cover.json?event_code=07eb14f735000a19bcd2f4db35946a7e&platform=6&w=196&h=252&q=80',NULL,NULL,NULL),(4,1,'张韶涵「寓言」世界巡回演唱会-海口站','2019.11.02','280,480,680,880,1080,2010,2005,2003,2001','海口市五源河体育中心体育场','海口','2019-12-02 周六 19:30','280元(看台票),480元(看台票),680元(内场票),880元(内场票),1080(内场票),内场前10排,内场前5排,内场前3排,内场第1排','1,2,3,4,5,6,7,8,9','https://api.ypiao.com/event/cover.json?event_code=e18a944d9cea9e0b49dc35484d52e3c9&platform=6&w=196&h=252&q=80',NULL,NULL,NULL),(5,1,'“我爱”刘德华2018世界巡回演唱会-香港站补场','2020.2.15~02.22','280,480,680,880,1080,2010','香港体育馆','香港','2020-02-15 周六 20:15,2020-02-16 周日 20:15,2020-02-17 周一 20:15,2020-02-18 周二 20:15,2020-02-20 周四 20:15,2020-02-21 周五 20:15,2020-02-22 周六 20:15','HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排','1,2,3,4,5,6@0,2,3,4,5,6@1,0,3,4,5,6@1,2,0,4,5,6@1,2,3,0,5,6@1,2,3,4,0,6','https://api.ypiao.com/event/cover.json?event_code=b9e709f4f1746948deb89e8928f336f9&platform=6&w=196&h=252&q=80',NULL,NULL,NULL),(6,2,'2019年NBA上海赛 布鲁克林篮网vs洛杉矶湖人','2019年10月10日','100,200,300,400,500,600,700,800,900,1000,1100,1200,1300,1400,1500','梅赛德斯-奔驰文化中心','上海','2019-08-23 周五 18:30,2019-08-24 周五 18:30,2019-08-25 周日 18:30','255看台,355看台,555看台,755看台,1255（内场）,1655（内场）,1855（内场）,内场前10排,内场前5排,内场前3排,内场第1排,888元VVIP套餐,VVIP包厢（无餐）,1088元VVIP套餐,1288元VVIP套餐@255看台,355看台,555看台,755看台,1255（内场）,1655（内场）,1855（内场）,内场前10排,内场前5排,内场前3排,内场第1排,888元VVIP套餐,VVIP包厢（无餐）,1088元VVIP套餐,1288元VVIP套餐@255看台,355看台,555看台,755看台,1255（内场）,1655（内场）,1855（内场）,内场前10排,内场前5排,内场前3排,内场第1排,888元VVIP套餐,VVIP包厢（无餐）,1088元VVIP套餐,1288元VVIP套餐','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15@1,3,5,7,9,11,13,15@2,4,6,8,10,12,14','https://api.ypiao.com/event/cover.json?event_code=a5729a040b53178f67fdd6d227e12426&platform=6&w=196&h=252&q=80',NULL,NULL,NULL),(7,2,'2019年NBA深圳赛 洛杉矶湖人vs 布鲁克林篮网','2019年10月12日','280,380,480,680,880,1080,2010,2030,2050,3000','深圳大运中心','深圳','2019-10-19 周六 17:30','280元（看台票）,380元（看台票）,480元（看台票）,680元（内场票）,880元（内场票）,1080（内场票）,内场第1排,内场前3排,内场前5排,内场前10排','1,2,3,4,5,6,7,8,9,10','https://api.ypiao.com/event/cover.json?event_code=a5729a040b53178f67fdd6d227e12426&platform=6&w=196&h=252&q=80',NULL,NULL,NULL),(8,2,'2019北京中赫国安主场足球比赛【中超 亚冠 足协杯】','2019.04.14~12.01','100,200,300,400','工人体育场','北京','2019-12-06 周五 19:15,2019-12-07 周六 19:15,2019-12-13 周五 19:15,2019-12-14 周六 19:15','480票面 HK$,780票面 HK$,980票面 HK$,1280票面 HK$@480票面 HK$,780票面 HK$,980票面 HK$,1280票面 HK$@480票面 HK$,780票面 HK$,980票面 HK$,1280票面 HK$@480票面 HK$,780票面 HK$,980票面 HK$,1280票面 HK$','1,2,3,4@0,2,3,4@1,0,3,4@1,2,0,4','https://api.ypiao.com/event/cover.json?event_code=e0d0f4c329f9c25d945e3b500541150a&platform=6&w=196&h=252&q=80',NULL,NULL,NULL),(9,2,'2019山东鲁能泰山主场足球比赛【中超 亚冠 足协杯】','2019.03.01-12.01','280,480,680,880,1080,2010,2005,2003,2001','济南奥体中心体育场','济南','2019-12-02 周六 19:30','280元(看台票),480元(看台票),680元(内场票),880元(内场票),1080(内场票),内场前10排,内场前5排,内场前3排,内场第1排','1,2,3,4,5,6,7,8,9','https://api.ypiao.com/event/cover.json?event_code=462d398c496dfc4cc3d4b6a29588b6de&platform=6&w=196&h=252&q=80',NULL,NULL,NULL),(10,2,'2019上海上港主场足球比赛【中超 亚冠 足协杯】','2019.01-30~11.07','280,480,680,880,1080,2010','上海体育场','上海','2020-02-15 周六 20:15,2020-02-16 周日 20:15,2020-02-17 周一 20:15,2020-02-18 周二 20:15,2020-02-20 周四 20:15,2020-02-21 周五 20:15,2020-02-22 周六 20:15','HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排','1,2,3,4,5,6@0,2,3,4,5,6@1,0,3,4,5,6@1,2,0,4,5,6@1,2,3,0,5,6@1,2,3,4,0,6','https://api.ypiao.com/event/cover.json?event_code=40db6f2a54ce80d03781aa1f25fed70c&platform=6&w=196&h=252&q=80',NULL,NULL,NULL),(11,3,'【中鱼文化】神剧重燃！Black Mary Poppins中文版《水曜日》第二轮-北京站','2019.10.31-11.03','100,200,300,400,500,600,700,800,900,1000,1100,1200,1300,1400,1500','佛山大剧院-大剧场','北京','2019-08-23 周五 18:30,2019-08-24 周五 18:30,2019-08-25 周日 18:30','255看台,355看台,555看台,755看台,1255（内场）,1655（内场）,1855（内场）,内场前10排,内场前5排,内场前3排,内场第1排,888元VVIP套餐,VVIP包厢（无餐）,1088元VVIP套餐,1288元VVIP套餐@255看台,355看台,555看台,755看台,1255（内场）,1655（内场）,1855（内场）,内场前10排,内场前5排,内场前3排,内场第1排,888元VVIP套餐,VVIP包厢（无餐）,1088元VVIP套餐,1288元VVIP套餐@255看台,355看台,555看台,755看台,1255（内场）,1655（内场）,1855（内场）,内场前10排,内场前5排,内场前3排,内场第1排,888元VVIP套餐,VVIP包厢（无餐）,1088元VVIP套餐,1288元VVIP套餐','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15@1,3,5,7,9,11,13,15@2,4,6,8,10,12,14','https://api.ypiao.com/event/cover.json?event_code=a0ed94d7983466632ac65839739c6045&platform=6&w=196&h=252&q=80',NULL,NULL,NULL),(12,3,'大船文化·美国原版音乐舞台剧《汪汪队立大功-海盗的宝藏》-佛山站 ','2019.11.16','280,380,480,680,880,1080,2010,2030,2050,3000','江西艺术中心大剧院','佛山','2019-10-19 周六 17:30','280元（看台票）,380元（看台票）,480元（看台票）,680元（内场票）,880元（内场票）,1080（内场票）,内场第1排,内场前3排,内场前5排,内场前10排','1,2,3,4,5,6,7,8,9,10','https://api.ypiao.com/event/cover.json?event_code=ef658d460de8fc3c5f31ed691a6127eb&platform=6&w=196&h=252&q=80',NULL,NULL,NULL),(13,3,'凡创文化·加拿大原版音乐启蒙全场互动亲子剧《你是演奏家2·超级金贝鼓》-南昌站','2019.11.16','100,200,300,400','江西艺术中心大剧院','南昌','2019-12-06 周五 19:15,2019-12-07 周六 19:15,2019-12-13 周五 19:15,2019-12-14 周六 19:15','480票面 HK$,780票面 HK$,980票面 HK$,1280票面 HK$@480票面 HK$,780票面 HK$,980票面 HK$,1280票面 HK$@480票面 HK$,780票面 HK$,980票面 HK$,1280票面 HK$@480票面 HK$,780票面 HK$,980票面 HK$,1280票面 HK$','1,2,3,4@0,2,3,4@1,0,3,4@1,2,0,4','https://api.ypiao.com/event/cover.json?event_code=a11e1a3df951947d68d4df09e583b270&platform=6&w=196&h=252&q=80',NULL,NULL,NULL),(14,3,'大船文化·百老汇互动亲子科学剧《物理秀》中文版-宁波站','2019.10.27','280,480,680,880,1080,2010,2005,2003,2001','宁波逸夫剧院','宁波','2019-12-02 周六 19:30','280元(看台票),480元(看台票),680元(内场票),880元(内场票),1080(内场票),内场前10排,内场前5排,内场前3排,内场第1排','1,2,3,4,5,6,7,8,9','https://api.ypiao.com/event/cover.json?event_code=5405a1d22f0357aa8038e6ec0c8e69e0&platform=6&w=196&h=252&q=80',NULL,NULL,NULL),(15,3,'凡创文化·大型恐龙主题实景童话剧《你看起来好像很好吃》-海口站 ','2019.12.14','280,480,680,880,1080,2010','海南省歌舞剧院','海口','2020-02-15 周六 20:15,2020-02-16 周日 20:15,2020-02-17 周一 20:15,2020-02-18 周二 20:15,2020-02-20 周四 20:15,2020-02-21 周五 20:15,2020-02-22 周六 20:15','HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排','1,2,3,4,5,6@0,2,3,4,5,6@1,0,3,4,5,6@1,2,0,4,5,6@1,2,3,0,5,6@1,2,3,4,0,6','https://api.ypiao.com/event/cover.json?event_code=587473c05877b5d8739638d6f4cac213&platform=6&w=196&h=252&q=80',NULL,NULL,NULL),(16,4,'大船文化·放屁大象吹低音号之动物交响乐团 德国原版绘本启蒙交响音乐会-宁波站','2019.11.8','100,200,300,400,500,600,700,800,900,1000,1100,1200,1300,1400,1500','宁波逸夫剧院','宁波','2019-08-23 周五 18:30,2019-08-24 周五 18:30,2019-08-25 周日 18:30','255看台,355看台,555看台,755看台,1255（内场）,1655（内场）,1855（内场）,内场前10排,内场前5排,内场前3排,内场第1排,888元VVIP套餐,VVIP包厢（无餐）,1088元VVIP套餐,1288元VVIP套餐@255看台,355看台,555看台,755看台,1255（内场）,1655（内场）,1855（内场）,内场前10排,内场前5排,内场前3排,内场第1排,888元VVIP套餐,VVIP包厢（无餐）,1088元VVIP套餐,1288元VVIP套餐@255看台,355看台,555看台,755看台,1255（内场）,1655（内场）,1855（内场）,内场前10排,内场前5排,内场前3排,内场第1排,888元VVIP套餐,VVIP包厢（无餐）,1088元VVIP套餐,1288元VVIP套餐','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15@1,3,5,7,9,11,13,15@2,4,6,8,10,12,14','https://api.ypiao.com/event/cover.json?event_code=e4bd2da857a78526c0a33decec6d5f55&platform=6&w=196&h=252&q=80',NULL,NULL,NULL),(17,4,'【天津】500 Miles-英国梅西贝丝尤克里里Ukulele弹唱音乐会','2019.09.22 15:00','280,380,480,680,880,1080,2010,2030,2050,3000','津湾大剧院','天津','2019-10-19 周六 17:30','280元（看台票）,380元（看台票）,480元（看台票）,680元（内场票）,880元（内场票）,1080（内场票）,内场第1排,内场前3排,内场前5排,内场前10排','1,2,3,4,5,6,7,8,9,10','https://api.ypiao.com/event/cover.json?event_code=cc28103e41bdb8a46f6075af44270337&platform=6&w=196&h=252&q=80',NULL,NULL,NULL),(18,4,'大船文化`浪漫辉煌—理查德·克莱德曼2020杭州钢琴音乐会 -杭州站','2020.01.09','100,200,300,400','杭州大剧院(歌剧院)','杭州','2019-12-06 周五 19:15,2019-12-07 周六 19:15,2019-12-13 周五 19:15,2019-12-14 周六 19:15','480票面 HK$,780票面 HK$,980票面 HK$,1280票面 HK$@480票面 HK$,780票面 HK$,980票面 HK$,1280票面 HK$@480票面 HK$,780票面 HK$,980票面 HK$,1280票面 HK$@480票面 HK$,780票面 HK$,980票面 HK$,1280票面 HK$','1,2,3,4@0,2,3,4@1,0,3,4@1,2,0,4','https://api.ypiao.com/event/cover.json?event_code=8abab30e99be663bdb1ec872c77f70aa&platform=6&w=196&h=252&q=80',NULL,NULL,NULL),(19,4,'1999-2019纪念中国巡演20周年 维也纳童声合唱团亚洲巡演-南京站','2019.09.20','280,480,680,880,1080,2010,2005,2003,2001','江苏荔枝大剧院','南京','2019-12-02 周六 19:30','280元(看台票),480元(看台票),680元(内场票),880元(内场票),1080(内场票),内场前10排,内场前5排,内场前3排,内场第1排','1,2,3,4,5,6,7,8,9','https://api.ypiao.com/event/cover.json?event_code=3c0445be79d4169ca2e6ae1ee6294095&platform=6&w=196&h=252&q=80',NULL,NULL,NULL),(20,4,'德国汉诺威交响乐团2020新年音乐会','2019.12.27-12.28','280,480,680,880,1080,2010','上海商城剧院','上海','2020-02-15 周六 20:15,2020-02-16 周日 20:15,2020-02-17 周一 20:15,2020-02-18 周二 20:15,2020-02-20 周四 20:15,2020-02-21 周五 20:15,2020-02-22 周六 20:15','HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排','1,2,3,4,5,6@0,2,3,4,5,6@1,0,3,4,5,6@1,2,0,4,5,6@1,2,3,0,5,6@1,2,3,4,0,6','https://api.ypiao.com/event/cover.json?event_code=e350bd9c5eb0252aacf6d381037715af&platform=6&w=196&h=252&q=80',NULL,NULL,NULL),(21,5,'曹云金领衔出演——《听云轩相声大会》喜聚现场专场','常年','100,200,300,400,500,600,700,800,900,1000,1100,1200,1300,1400,1500','喜聚现场','北京','2019-08-23 周五 18:30,2019-08-24 周五 18:30,2019-08-25 周日 18:30','255看台,355看台,555看台,755看台,1255（内场）,1655（内场）,1855（内场）,内场前10排,内场前5排,内场前3排,内场第1排,888元VVIP套餐,VVIP包厢（无餐）,1088元VVIP套餐,1288元VVIP套餐@255看台,355看台,555看台,755看台,1255（内场）,1655（内场）,1855（内场）,内场前10排,内场前5排,内场前3排,内场第1排,888元VVIP套餐,VVIP包厢（无餐）,1088元VVIP套餐,1288元VVIP套餐@255看台,355看台,555看台,755看台,1255（内场）,1655（内场）,1855（内场）,内场前10排,内场前5排,内场前3排,内场第1排,888元VVIP套餐,VVIP包厢（无餐）,1088元VVIP套餐,1288元VVIP套餐','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15@1,3,5,7,9,11,13,15@2,4,6,8,10,12,14','https://api.ypiao.com/event/cover.json?event_code=a3f15b95c61db859105a252f52b1d361&platform=6&w=196&h=252&q=80',NULL,NULL,NULL),(22,5,'华艺星空·喜剧人来疯相声新势力2019巡演-上海站<','2020.01.11','280,380,480,680,880,1080,2010,2030,2050,3000','上海商城剧院','上海','2019-10-19 周六 17:30','280元（看台票）,380元（看台票）,480元（看台票）,680元（内场票）,880元（内场票）,1080（内场票）,内场第1排,内场前3排,内场前5排,内场前10排','1,2,3,4,5,6,7,8,9,10','https://api.ypiao.com/event/cover.json?event_code=966027bad581348e96055f49c8af90f6&platform=6&w=196&h=252&q=80',NULL,NULL,NULL),(23,5,'2019依弘剧场演出季--《盗御马》、《三击掌》','2019.08.24','100,200,300,400','依弘剧场','上海','2019-12-06 周五 19:15,2019-12-07 周六 19:15,2019-12-13 周五 19:15,2019-12-14 周六 19:15','480票面 HK$,780票面 HK$,980票面 HK$,1280票面 HK$@480票面 HK$,780票面 HK$,980票面 HK$,1280票面 HK$@480票面 HK$,780票面 HK$,980票面 HK$,1280票面 HK$@480票面 HK$,780票面 HK$,980票面 HK$,1280票面 HK$','1,2,3,4@0,2,3,4@1,0,3,4@1,2,0,4','https://api.ypiao.com/event/cover.json?event_code=126d2d6f892f0d84e78847295b714e48&platform=6&w=196&h=252&q=80',NULL,NULL,NULL),(24,5,'笑果脱口秀丨小猪主打秀 广州站','2019.08.31','280,480,680,880,1080,2010,2005,2003,2001','沃荷的房子','广州','2019-12-02 周六 19:30','280元(看台票),480元(看台票),680元(内场票),880元(内场票),1080(内场票),内场前10排,内场前5排,内场前3排,内场第1排','1,2,3,4,5,6,7,8,9','https://api.ypiao.com/event/cover.json?event_code=c557e00f7003959337544428e99c8c03&platform=6&w=196&h=252&q=80',NULL,NULL,NULL),(25,5,'2019年第八届中关村金秋演出季 《长生殿》明星版-北京站','2019.11.08','280,480,680,880,1080,2010','场馆：中国人民大学如论讲堂','北京','2020-02-15 周六 20:15,2020-02-16 周日 20:15,2020-02-17 周一 20:15,2020-02-18 周二 20:15,2020-02-20 周四 20:15,2020-02-21 周五 20:15,2020-02-22 周六 20:15','HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排','1,2,3,4,5,6@0,2,3,4,5,6@1,0,3,4,5,6@1,2,0,4,5,6@1,2,3,0,5,6@1,2,3,4,0,6','https://api.ypiao.com/event/cover.json?event_code=9961a8131c48a18b3de94578d772ebdc&platform=6&w=196&h=252&q=80',NULL,NULL,NULL),(26,6,'中国数字创意科技展暨中国游戏节-武汉站 ','2019.11.22-11.24','100,200,300,400,500,600,700,800,900,1000,1100,1200,1300,1400,1500','[武汉]光谷科技会展中心','北京','2019-08-23 周五 18:30,2019-08-24 周五 18:30,2019-08-25 周日 18:30','255看台,355看台,555看台,755看台,1255（内场）,1655（内场）,1855（内场）,内场前10排,内场前5排,内场前3排,内场第1排,888元VVIP套餐,VVIP包厢（无餐）,1088元VVIP套餐,1288元VVIP套餐@255看台,355看台,555看台,755看台,1255（内场）,1655（内场）,1855（内场）,内场前10排,内场前5排,内场前3排,内场第1排,888元VVIP套餐,VVIP包厢（无餐）,1088元VVIP套餐,1288元VVIP套餐@255看台,355看台,555看台,755看台,1255（内场）,1655（内场）,1855（内场）,内场前10排,内场前5排,内场前3排,内场第1排,888元VVIP套餐,VVIP包厢（无餐）,1088元VVIP套餐,1288元VVIP套餐','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15@1,3,5,7,9,11,13,15@2,4,6,8,10,12,14','https://api.ypiao.com/event/cover.json?event_code=50c9bb7ba8dc63b2880ab482e490fac9&platform=6&w=0&h=0&q=80',NULL,NULL,NULL),(27,6,'小橙堡&amp;安鲁】《HELLO火星》-3D数字太空展','019.06.21-08.25','280,380,480,680,880,1080,2010,2030,2050,3000','[北京]中华世纪坛','杭州','2019-10-19 周六 17:30','280元（看台票）,380元（看台票）,480元（看台票）,680元（内场票）,880元（内场票）,1080（内场票）,内场第1排,内场前3排,内场前5排,内场前10排','1,2,3,4,5,6,7,8,9,10','https://api.ypiao.com/event/cover.json?event_code=bf580a708c65c24be111c367feee1ac5&platform=6&w=0&h=0&q=80',NULL,NULL,NULL),(28,6,'2019淘宝造物节 ','2019.09.12-09.25','100,200,300,400','[杭州]杭锅老厂房','上海','2019-12-06 周五 19:15,2019-12-07 周六 19:15,2019-12-13 周五 19:15,2019-12-14 周六 19:15','480票面 HK$,780票面 HK$,980票面 HK$,1280票面 HK$@480票面 HK$,780票面 HK$,980票面 HK$,1280票面 HK$@480票面 HK$,780票面 HK$,980票面 HK$,1280票面 HK$@480票面 HK$,780票面 HK$,980票面 HK$,1280票面 HK$','1,2,3,4@0,2,3,4@1,0,3,4@1,2,0,4','https://api.ypiao.com/event/cover.json?event_code=ad12c780c8264e446c0d36e035600ddf&platform=6&w=0&h=0&q=80',NULL,NULL,NULL),(29,6,'穿越人海遇到你—魔都全城热恋情感互动展-上海站 ','2019.07.06-10.07','280,480,680,880,1080,2010,2005,2003,2001','上海]上海静安大悦城','北京','2019-12-02 周六 19:30','280元(看台票),480元(看台票),680元(内场票),880元(内场票),1080(内场票),内场前10排,内场前5排,内场前3排,内场第1排','1,2,3,4,5,6,7,8,9','https://api.ypiao.com/event/cover.json?event_code=ed0fcab9aa153ab5f9265e339d240d4c&platform=6&w=0&h=0&q=80',NULL,NULL,NULL),(30,6,'日本经典动漫原稿&amp;吉卜力工作室原稿展-北京站','2019.06.29-08.29','280,480,680,880,1080,2010','[北京]北极熊画廊','北京','2020-02-15 周六 20:15,2020-02-16 周日 20:15,2020-02-17 周一 20:15,2020-02-18 周二 20:15,2020-02-20 周四 20:15,2020-02-21 周五 20:15,2020-02-22 周六 20:15','HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排','1,2,3,4,5,6@0,2,3,4,5,6@1,0,3,4,5,6@1,2,0,4,5,6@1,2,3,0,5,6@1,2,3,4,0,6','https://api.ypiao.com/event/cover.json?event_code=14c7cb5db365cf3a9ac903226cf36d74&platform=6&w=0&h=0&q=80',NULL,NULL,NULL),(31,0,'逐梦之夜-群星演唱会-成都站','2019.08.24 19:30','100,200,300,400,500,600,700,800,900,1000,1100,1200,1300,1400,1500','双流体育中心','成都','2019-08-23 周五 18:30,2019-08-24 周五 18:30,2019-08-25 周日 18:30','255看台,355看台,555看台,755看台,1255（内场）,1655（内场）,1855（内场）,内场前10排,内场前5排,内场前3排,内场第1排,888元VVIP套餐,VVIP包厢（无餐）,1088元VVIP套餐,1288元VVIP套餐@255看台,355看台,555看台,755看台,1255（内场）,1655（内场）,1855（内场）,内场前10排,内场前5排,内场前3排,内场第1排,888元VVIP套餐,VVIP包厢（无餐）,1088元VVIP套餐,1288元VVIP套餐@255看台,355看台,555看台,755看台,1255（内场）,1655（内场）,1855（内场）,内场前10排,内场前5排,内场前3排,内场第1排,888元VVIP套餐,VVIP包厢（无餐）,1088元VVIP套餐,1288元VVIP套餐','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15@1,3,5,7,9,11,13,15@2,4,6,8,10,12,14','https://api.ypiao.com/event/cover.json?event_code=5d12a39b320d8a38c5102c3bff084593&platform=6&w=196&h=252&q=80',NULL,NULL,'2.1'),(32,0,'Q版动漫卡通舞台剧《拇指熊卜达》-北京站','2019.08.17-08.25','280,380,480,680,880,1080,2010,2030,2050,3000','梅兰芳大剧院-四层小剧场','北京','2019-10-19 周六 17:30','280元（看台票）,380元（看台票）,480元（看台票）,680元（内场票）,880元（内场票）,1080（内场票）,内场第1排,内场前3排,内场前5排,内场前10排','1,2,3,4,5,6,7,8,9,10','https://api.ypiao.com/event/cover.json?event_code=18c0b169b7ce285f324b49fd1073864d&platform=6&w=196&h=252&q=80',NULL,NULL,'2.2'),(33,0,'大演时代·北京欢乐谷史诗级大型演出《金面王朝》','2019.08.24-09.22','100,200,300,400','华侨城大剧院(北京)','北京','2019-12-06 周五 19:15,2019-12-07 周六 19:15,2019-12-13 周五 19:15,2019-12-14 周六 19:15','480票面 HK$,780票面 HK$,980票面 HK$,1280票面 HK$@480票面 HK$,780票面 HK$,980票面 HK$,1280票面 HK$@480票面 HK$,780票面 HK$,980票面 HK$,1280票面 HK$@480票面 HK$,780票面 HK$,980票面 HK$,1280票面 HK$','1,2,3,4@0,2,3,4@1,0,3,4@1,2,0,4','https://api.ypiao.com/event/cover.json?event_code=77ca1c7b5d3d246817989e6d56c073f7&platform=6&w=196&h=252&q=80',NULL,NULL,'2.3'),(34,0,'小橙堡&amp;安鲁】《HELLO火星》-3D数字太空展','2019.06.21-08.25','280,480,680,880,1080,2010,2005,2003,2001','中华世纪坛','北京','2019-12-02 周六 19:30','280元(看台票),480元(看台票),680元(内场票),880元(内场票),1080(内场票),内场前10排,内场前5排,内场前3排,内场第1排','1,2,3,4,5,6,7,8,9','https://api.ypiao.com/event/cover.json?event_code=bf580a708c65c24be111c367feee1ac5&platform=6&w=196&h=252&q=80',NULL,NULL,'2.4'),(35,0,'侧田 My Beautiful Curse 巡回演唱会首站 中山站','2019年8月24日','280,480,680,880,1080,2010','中山市兴中体育场','中山','2020-02-15 周六 20:15,2020-02-16 周日 20:15,2020-02-17 周一 20:15,2020-02-18 周二 20:15,2020-02-20 周四 20:15,2020-02-21 周五 20:15,2020-02-22 周六 20:15','HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排@HK$380,HK$580,HK$980,HK$980前十排,HK$980前五排,HK$980第一排',NULL,'https://api.ypiao.com/event/cover.json?event_code=14cbd7ab31dba4f0b37818b4286d7549&platform=6&w=196&h=252&q=80',NULL,NULL,'2.5');
/*!40000 ALTER TABLE `yp_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yp_tickets_family`
--

DROP TABLE IF EXISTS `yp_tickets_family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `yp_tickets_family` (
  `tf_id` int(11) NOT NULL,
  `tf_name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`tf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yp_tickets_family`
--

LOCK TABLES `yp_tickets_family` WRITE;
/*!40000 ALTER TABLE `yp_tickets_family` DISABLE KEYS */;
/*!40000 ALTER TABLE `yp_tickets_family` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yp_user`
--

DROP TABLE IF EXISTS `yp_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `yp_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yp_user`
--

LOCK TABLES `yp_user` WRITE;
/*!40000 ALTER TABLE `yp_user` DISABLE KEYS */;
INSERT INTO `yp_user` VALUES (1,'Ariel','jihongyu','Ariel_jhy@163.com','18266647973','./img/login/girl.png','冀宏宇',0),(2,'admin','admin','12','12','./img/login/boy.png','12',1),(8,'ji','jhyjhy',NULL,'18266647974','./img/login/girl.png','ji',0);
/*!40000 ALTER TABLE `yp_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-10 15:21:50
