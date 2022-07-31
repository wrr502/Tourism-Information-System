/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50160
Source Host           : localhost:3306
Source Database       : jspmlyxxxtb2b4mysql

Target Server Type    : MYSQL
Target Server Version : 50160
File Encoding         : 65001

Date: 2019-04-17 15:31:09
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `allusers`
-- ----------------------------
DROP TABLE IF EXISTS `allusers`;
CREATE TABLE `allusers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `cx` varchar(50) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of allusers
-- ----------------------------
INSERT INTO `allusers` VALUES ('1', 'hsg', 'hsg', '超级管理员', '2019-04-07 15:30:01');
INSERT INTO `allusers` VALUES ('2', 'admin', 'admin', '普通管理员', '2019-04-07 01:44:17');

-- ----------------------------
-- Table structure for `dx`
-- ----------------------------
DROP TABLE IF EXISTS `dx`;
CREATE TABLE `dx` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `leibie` varchar(50) DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dx
-- ----------------------------
INSERT INTO `dx` VALUES ('1', '系统公告', '<p>\r\n	欢迎大家登陆<span style=\"color:#FFFFFF;font-family:宋体;font-size:25.3333px;font-weight:bold;background-color:#339999;\">基于web的旅游信息系统系统</span>，我站主要是为广大朋友精心制作的一个系统，希望大家能够在我站获得一个好心情，谢谢！\r\n</p>\r\n<p>\r\n	自强不息，海纳百川，努力学习！的的的顶顶顶顶顶顶顶顶顶顶\r\n</p>');
INSERT INTO `dx` VALUES ('2', '系统简介', '<span style=\"color:#FFFFFF;font-family:宋体;font-size:25.3333px;font-weight:bold;background-color:#339999;\">基于web的旅游信息系统</span><span style=\"color:#FFFFFF;font-family:宋体;font-size:25.3333px;font-weight:bold;background-color:#339999;\">旅游管理系统</span>系统简介的的的顶顶顶顶顶顶顶顶顶顶');
INSERT INTO `dx` VALUES ('3', '联系我们', '????');
INSERT INTO `dx` VALUES ('4', '关于我们', '??????');

-- ----------------------------
-- Table structure for `goumaijilu`
-- ----------------------------
DROP TABLE IF EXISTS `goumaijilu`;
CREATE TABLE `goumaijilu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `jingdianbianhao` varchar(50) DEFAULT NULL,
  `jingdianmingcheng` varchar(50) DEFAULT NULL,
  `piaojia` varchar(50) DEFAULT NULL,
  `goumaishuliang` varchar(50) DEFAULT NULL,
  `zonge` varchar(50) DEFAULT NULL,
  `goumairen` varchar(50) DEFAULT NULL,
  `iszf` varchar(2) DEFAULT '否',
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goumaijilu
-- ----------------------------
INSERT INTO `goumaijilu` VALUES ('1', '03061655571359', '海南三亚5日4晚跟团游', '2034', '2', '4068.0', '555', '是', '2019-04-07 17:55:53');
INSERT INTO `goumaijilu` VALUES ('2', '03061652102098', '印度尼西亚巴厘岛+蓝梦岛7日5晚跟团游', '4599', '3', '13797.0', 'aaa', '是', '2019-04-07 18:06:59');
INSERT INTO `goumaijilu` VALUES ('3', '888', '商品B', '8888', '1', '8888.0', '666', '是', '2019-04-07 01:46:24');
INSERT INTO `goumaijilu` VALUES ('4', '04132139191377', '万里长城', '88', '2', '176.0', '111', '是', '2019-04-13 21:42:07');
INSERT INTO `goumaijilu` VALUES ('5', '04161438272135', '广州xx景点', '88', '2', '176.0', '333', '是', '2019-04-16 14:39:59');

-- ----------------------------
-- Table structure for `liuyanban`
-- ----------------------------
DROP TABLE IF EXISTS `liuyanban`;
CREATE TABLE `liuyanban` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `cheng` varchar(50) DEFAULT NULL,
  `xingbie` varchar(2) DEFAULT NULL,
  `QQ` varchar(50) DEFAULT NULL,
  `youxiang` varchar(50) DEFAULT NULL,
  `dianhua` varchar(50) DEFAULT NULL,
  `neirong` text,
  `addtime` datetime DEFAULT NULL,
  `huifuneirong` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of liuyanban
-- ----------------------------
INSERT INTO `liuyanban` VALUES ('1', 'ewterte', '1', '32342335345', '323423@qq.com', '32442894', 'erterterte', '2019-04-07 18:02:54', '');
INSERT INTO `liuyanban` VALUES ('2', '张三', '1', '', '', '', '咨询', '2019-04-07 01:42:47', '好好');
INSERT INTO `liuyanban` VALUES ('3', '张三', '1', '', '', '', '咨询预订', '2019-04-13 21:36:45', 'vb ');
INSERT INTO `liuyanban` VALUES ('4', '张三', '1', '', '', '', '咨询订票', '2019-04-16 14:36:57', '不错');

-- ----------------------------
-- Table structure for `lvyoujingdian`
-- ----------------------------
DROP TABLE IF EXISTS `lvyoujingdian`;
CREATE TABLE `lvyoujingdian` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `jingdianbianhao` varchar(50) DEFAULT NULL,
  `jingdianmingcheng` varchar(50) DEFAULT NULL,
  `jingdiandengji` varchar(50) DEFAULT NULL,
  `piaojia` varchar(50) DEFAULT NULL,
  `diliweizhi` text,
  `jingdianzhaopian` varchar(50) DEFAULT NULL,
  `jingdianjianjie` longtext,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lvyoujingdian
-- ----------------------------
INSERT INTO `lvyoujingdian` VALUES ('1', '03061621351231', '西湖', '五星级', '55', '浙江省杭州市西湖区', 'upload/1520324601376.jpg', '西湖，位于浙江省杭州市西面，是中国大陆首批国家重点风景名胜区和中国十大风景名胜之一。它是中国大陆主要的观赏性淡水湖泊之一，也是现今《世界遗产名录》中少数几个和中国唯一一个湖泊类文化遗产。\r\n西湖三面环山，面积约6.39平方千米，东西宽约2.8千米，南北长约3.2千米，绕湖一周近15千米。湖中被孤山、白堤、苏堤、杨公堤分隔，按面积大小分别为外西湖、西里湖、北里湖、小南湖及岳湖等五片水面，苏堤、白堤越过湖面，小瀛洲、湖心亭、阮公墩三个小岛鼎立于外西湖湖心，夕照山的雷峰塔与宝石山的保?塔隔湖相映，由此形成了“一山、二塔、三岛、三堤、五湖”的基本格局。', '2019-04-07 16:23:33');
INSERT INTO `lvyoujingdian` VALUES ('2', '03061623428495', '丽江古城', '三星级', '88', '云南省丽江市古城区', 'upload/1520324893169.jpg', '丽江古城位于云南省丽江市古城区，又名大研镇，坐落在丽江坝中部，始建于宋末元初（公元13世纪后期），地处云贵高原，面积为7.279平方公里。\r\n丽江古城内的街道依山傍水修建，以红色角砾岩铺就，有四方街、木府、五凤楼等景点。丽江为第二批被批准的中国历史文化名城之一，是中国以整座古城申报世界文化遗产获得成功的两座古城之一。\r\n丽江古城有着多彩的地方民族习俗和娱乐活动，纳西古乐、东巴仪式、占卜文化、古镇酒吧以及纳西族火把节等，别具一格。丽江古城体现了中国古代城市建设的成就，是中国民居中具有鲜明特色和风格的类型之一。', '2019-04-07 16:28:43');
INSERT INTO `lvyoujingdian` VALUES ('3', '03061632171532', '黄山', '五星级', '66', '黄山位于安徽南部黄山市境内，山境南北长约40千米，东西宽约30千米，总面积约1200平方千米', 'upload/1520325169218.jpg', '黄山：世界文化与自然双重遗产，世界地质公园，国家AAAAA级旅游景区，国家级风景名胜区，全国文明风景旅游区示范点，中华十大名山，天下第一奇山。\r\n黄山位于安徽省南部黄山市境内，有72峰，主峰莲花峰海拔1864米，与光明顶、天都峰并称三大黄山主峰，为36大峰之一。黄山是安徽旅游的标志，是中国十大风景名胜唯一的山岳风光。\r\n黄山原名“黟山”，因峰岩青黑，遥望苍黛而名。后因传说轩辕黄帝曾在此炼丹，故改名为“黄山”。黄山代表景观有“四绝三瀑”，四绝：奇松、怪石、云海、温泉；三瀑：人字瀑、百丈泉、九龙瀑。黄山迎客松是安徽人民热情友好的象征，承载着拥抱世界的东方礼仪文化。\r\n明朝旅行家徐霞客登临黄山时赞叹：“薄海内外之名山，无如徽之黄山。登黄山，天下无山，观止矣！”被后人引申为“五岳归来不看山，黄山归来不看岳”。', '2019-04-07 16:32:51');
INSERT INTO `lvyoujingdian` VALUES ('4', '03061803541699', '景点A', '一星级', '32', '水电费水电费是', 'upload/1520330652167.jpg', '的发送到发送到', '2019-04-07 18:04:14');
INSERT INTO `lvyoujingdian` VALUES ('5', '03061803541666', '景点66', '一星级', '32', '浙江省杭州市西', 'upload/1520330652167.jpg', '的发送到发送到', '2019-04-07 18:04:14');
INSERT INTO `lvyoujingdian` VALUES ('6', '04132139191377', '万里长城', '五星级', '88', '中国北京', 'upload/1555162815845.jpg', '<p>\r\n	万里长城万里长城万里长城万里长城\r\n</p>\r\n<p>\r\n	万里长城万里长城\r\n</p>\r\n<p>\r\n	<img src=\"/jspmlyxxxtB2B4/attached/image/20190413/20190413214039_231.jpg\" alt=\"\" />\r\n</p>', '2019-04-13 21:40:40');
INSERT INTO `lvyoujingdian` VALUES ('7', '04161438272135', '广州xx景点', '五星级', '88', '广州xx景点广州xx景点', 'upload/1555396731104.jpg', '广州xx景点广州xx景点广州xx景点广州xx景点广州xx景点广州xx景点', '2019-04-16 14:38:55');

-- ----------------------------
-- Table structure for `pinglun`
-- ----------------------------
DROP TABLE IF EXISTS `pinglun`;
CREATE TABLE `pinglun` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `xinwenID` varchar(50) DEFAULT NULL,
  `pinglunneirong` text,
  `pinglunren` varchar(50) DEFAULT NULL,
  `pingfen` varchar(50) DEFAULT NULL,
  `biao` varchar(50) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pinglun
-- ----------------------------
INSERT INTO `pinglun` VALUES ('1', '4', 'asdfasdsad', 'aaa', '1', 'jiudianxinxi', '2019-04-07 18:06:18');
INSERT INTO `pinglun` VALUES ('2', '4', 'sdfsdf', 'aaa', '1', 'lvyoujingdian', '2019-04-07 18:06:35');
INSERT INTO `pinglun` VALUES ('3', '6', 'vb ', '666', '1', 'lvyoushangpin', '2019-04-07 01:46:15');
INSERT INTO `pinglun` VALUES ('4', '6', '好玩', '111', '5', 'lvyoujingdian', '2019-04-13 21:42:37');

-- ----------------------------
-- Table structure for `shoucangjilu`
-- ----------------------------
DROP TABLE IF EXISTS `shoucangjilu`;
CREATE TABLE `shoucangjilu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `xwid` varchar(50) DEFAULT NULL,
  `ziduan` varchar(50) DEFAULT NULL,
  `biao` varchar(50) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoucangjilu
-- ----------------------------
INSERT INTO `shoucangjilu` VALUES ('1', 'aaa', '4', 'jiudianmingcheng', 'jiudianxinxi', '2019-04-07 18:06:21');
INSERT INTO `shoucangjilu` VALUES ('2', '666', '6', 'shangpinmingcheng', 'lvyoushangpin', '2019-04-07 01:46:18');
INSERT INTO `shoucangjilu` VALUES ('3', '111', '6', 'jingdianmingcheng', 'lvyoujingdian', '2019-04-13 21:42:42');
INSERT INTO `shoucangjilu` VALUES ('4', '333', '7', 'jingdianmingcheng', 'lvyoujingdian', '2019-04-16 14:39:41');

-- ----------------------------
-- Table structure for `xinwentongzhi`
-- ----------------------------
DROP TABLE IF EXISTS `xinwentongzhi`;
CREATE TABLE `xinwentongzhi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `biaoti` text,
  `leibie` varchar(50) DEFAULT NULL,
  `neirong` longtext,
  `tianjiaren` varchar(50) DEFAULT NULL,
  `shouyetupian` varchar(50) DEFAULT NULL,
  `dianjilv` int(11) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xinwentongzhi
-- ----------------------------
INSERT INTO `xinwentongzhi` VALUES ('14', '中国摩天大楼遍地开花 专家称建得太高反而不经济', '旅游攻略', '<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">据经济之声《天下公司》报道，远大科技在长沙开工建设的“天空之城”，号称7个月内建完838米。这座将比迪拜塔高出10米的世界第一高楼引发关注，随着它被叫停，关于摩天大楼的冷思考也越来越多。全国各地在建和计划建设的摩天大楼如雨后春笋般出现，它们不断刷新着“最新”和“最高”的纪录，但我们需要这么多摩天大楼吗？它们又是否存在质量和安全隐患呢？</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">远大科技集团总裁张跃是“天空城市”的构想者，他去年在长沙市望城区拿地，筹备并评估设计图纸，今年7月20日举行开工典礼。“天空城市”高度838米，地下6层、地上202层，建成后将超过迪拜塔成为世界第一高楼。张跃表示要用现场装配钢结构造这座楼，预计造价90亿元，7个月完工。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">远大科技集团经营中央空调起家，2008年才进军建筑行业，他们高调的第一高楼引来质疑。比如，这样造楼安全吗？四天后，湖南第一高楼“天空城市”被政府叫停。远大科技集团总裁张跃对项目被叫停很遗憾。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">最近十年来，摩天大楼如雨后春笋般在中国遍地开花，很多城市欢迎摩天大楼，一方面节省土地，另一方面它象征着城市的繁华。根据《2012摩天城市报告》显示，中国内地拥有非住宅类摩天大楼总数470座，在建为332座，规划为516座；而美国现有同类摩天大楼为533座，在建6座，规划24座。预计至2022年，中国摩天大楼总数将达1318座，将是美国的2.3倍。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">中国房地产经理人联盟秘书长陈云峰说，摩天大楼是经济快速发展的产物，这类建筑可以容纳很多人，但本身却并不经济。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">陈云峰：建筑的设计要求、材料要求都是非常高的，太高了之后它反倒不经济了。因为建筑非常高，你的挖地基也要增加，用的钢铁材料强度也要增加，而且还要有一定的弹性，对成本控制反倒不利了。这些高层还要有幕墙，就会有一些反光，对周围的建筑有压抑感，包括光的传播都是有一定坏处。超高层的能耗要求很高。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">建设高楼大厦最初本身是为了节约土地，不过现在已经演变成为了城市名片。不过在为城市增光的同时，在消防、抗震等方面它们表现得相对脆弱。中国城市规划设计研究院总规划师杨保军说，摩天大楼的安全性最让公众担忧。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">杨保军：对于超负荷建筑的安全性是大家共同关注的，它跟一般建筑相比，比方说它要在抗风方面、风动试验是不是稳妥，还有抗震的试验万一发生地震，那么它的危险性要比别的要大，还有就是它的地基是不是要承受这么高的高度。另外，消防是更加重要的一个环节，对于这种超高层它会有一些特殊的要求。如果特殊的要求也能确保它的结构的安全、以及各种抗风险的安全也有相关的证明，大家才能放心的让他建。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">问题是中国需要这么多摩天大楼吗？全国各地建设大楼不断“求新”、“求高”，似乎成了各城市之间无形的竞赛。天津117大厦效果图，高597米，预计将于2016年前竣工投用，届时成为京津地区新标志性建筑。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">正在兴建的中国第二高楼湖北武汉绿地中心高达606米，但仍计划更改规划进行拔高，冲击中国第一高楼。高达660米的深圳平安金融中心已经开建；列入规划的山东青岛777大厦则高达700米，如果建成将再次刷新中国第一高楼的纪录。</P>\r\n<P style=\"TEXT-INDENT: 30px; MARGIN: 0px 3px 15px\">摩天大楼的应用：除了高度，摩天大楼在功能和造价上也极为“相似”：几乎无一例外地涵盖了超豪华五星级酒店、国际5A级写字楼、豪宅及大型购物中心等综合性业态，建筑面积上百万平方米，总投资数十亿元，打出的广告语也如此一致：“城市的地标性建筑”、“城市发展的标志”等等。</P>', 'hsg', 'upload/1317085910921.jpg', '6', '2019-04-07 15:37:53');
INSERT INTO `xinwentongzhi` VALUES ('16', '苍南县旅游景区（点）道路交通指引标志工程施工招标公告', '旅游攻略', '<p class=\"MsoNormal\" style=\"text-indent:174pt;text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;font-family:宋体;\">CNJS101105-144 </span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;font-family:宋体;\"> <span><span> </span></span></span><span style=\"font-size:12pt;color:#333333;font-family:宋体;\">苍南县旅游景区（点）道路交通指引标志工程已由苍发改投<span><span>[2010]69</span>号文批准实施。苍南县风景旅游管理局（下称招标人）负责本项目的招标。现决定对该项目进行公开招标，实行资格后审。</span></span><span style=\"font-size:12pt;color:#333333;font-family:宋体;\"> </span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24pt;text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;font-family:宋体;\">1. </span><span style=\"font-size:12pt;color:#333333;font-family:宋体;\">本次招标范围为苍南县旅游景区内的道路交通指引标志工程。<span><span> </span> </span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24pt;text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;font-family:宋体;\">计划工期：<span><span>60</span>日历天，缺陷责任期<span>24</span>个月。</span><span><span> </span> </span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24pt;text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;font-family:宋体;\">2.</span><span style=\"font-size:12pt;color:#333333;font-family:宋体;\">资质要求<span><span> </span> </span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24pt;text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;font-family:宋体;\">凡具有独立法人资格的公路交通工程专业承包交通安全设施专项资质的企业均可参加本项目的投标。</span><span style=\"font-size:12pt;color:#333333;font-family:宋体;\"> </span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24pt;text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;font-family:宋体;\">3</span><span style=\"font-size:12pt;color:#333333;font-family:宋体;\">、</span><span style=\"font-size:12pt;color:#333333;font-family:宋体;\">投标人可于<span><span>2010</span>年<span>11</span>月<span>8</span>日至<span>2010</span>年<span>11</span>月<span>12</span>日</span></span><span style=\"font-size:12pt;color:#333333;font-family:宋体;\">北京时间每天<span><span>9</span>：<span>00~11</span>：<span>00</span>和<span>14</span>：<span>30~16</span>：<span>30,</span></span></span><span style=\"font-size:12pt;color:#333333;font-family:宋体;\">持单位介绍信、交易证、营业执照（副本）、资质证书（副本）、安全生产许可证（副本）、经办人身份证（原件）及上述证件的彩色复印件（加盖公章）到苍南县公共资源交易中心（苍南县城江湾路环保大厦<span><span>4</span>楼）洽购招标文件。施工招标文件及施工图纸每套售价<span>500</span>元，售后不退。</span><span><span> </span> </span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21pt;text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;line-height:150%;font-family:宋体;\">4</span><span style=\"font-size:12pt;color:#333333;line-height:150%;font-family:宋体;\">、招标人将于下列时间和地点组织进行工程现场考察并召开标前会议，投标人应派相关负责人参加现场考察及标前会议。 <span> </span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21pt;text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;line-height:150%;font-family:宋体;\">现场考察时间：<span><span>2010</span>年<span>11</span>月<span>14</span>日<span>9:00</span>时，集中地点：自行组织</span><span><span> </span> </span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24pt;text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;font-family:宋体;\">标前会议时间：<span><span>2010</span>年<span>11</span>月<span>22</span>日<span>9:30</span>时，地点：苍南县风景旅游管理局三楼会议室 </span><span> </span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:23.4pt;text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;font-family:宋体;\">5</span><span style=\"font-size:12pt;color:#333333;font-family:宋体;\">、投标文件送交的截止时间为<span><span>2010</span>年<span>11</span>月<span>30</span>日<span>9</span>：<span>30</span>时，投标文件必须在上述时间前送交至： </span><span> </span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:10pt;text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;font-family:宋体;\">单位：苍南县公共资源交易中心<span><span> </span> </span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:10pt;text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;font-family:宋体;\">地址：苍南县城江湾路环保大厦<span><span>4</span>楼</span><span><span> </span> </span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:23.4pt;text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;font-family:宋体;\">6</span><span style=\"font-size:12pt;color:#333333;font-family:宋体;\">、投标人在递交投标文件时必须：提供由苍南县公共资源交易中心开具的投标保证金收据原件及复印件，否则其投标文件将被拒收。<span><span> </span> </span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:23.4pt;text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;font-family:宋体;\">7</span><span style=\"font-size:12pt;color:#333333;font-family:宋体;\">、招标人定于<span><span>2010</span>年<span>11</span>月<span>30</span>日<span>9</span>：<span>30</span>时在苍南县公共资源交易中心举行公开开标。投标人必须派其法定代表人或其授权的代理人出席，并携带拟投入主要人员证件原件备查。</span><strong> </strong></span><strong><span style=\"font-size:12pt;font-family:宋体;\"> </span></strong> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:23.4pt;text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;font-family:宋体;\">8</span><span style=\"font-size:12pt;color:#333333;font-family:宋体;\">、应按规定以电汇或转账的方式向招标人提交投标担保，投标担保金额为人民币<u> <strong>肆万元</strong></u>，投标担保必须在投标截止期前到达招标人指定账户。 </span><span style=\"font-size:12pt;font-family:宋体;\"> </span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;line-height:150%;font-family:宋体;\"> </span><strong><span style=\"font-size:12pt;color:#333333;line-height:150%;font-family:宋体;\">投标保证金汇入的户名：苍南县公共资源交易中心保证金专户 </span></strong><strong><span style=\"font-size:12pt;line-height:150%;font-family:宋体;\"> </span></strong> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:36.15pt;text-align:left;\" align=\"left\">\r\n	<strong><span style=\"font-size:12pt;color:#333333;font-family:宋体;\">开户银行：苍南县工行营业部<span><span><span> </span></span> </span></span></strong> \r\n</p>\r\n<p>\r\n	<strong><span></span></strong> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:36.15pt;text-align:left;\" align=\"left\">\r\n	<strong><span style=\"font-size:12pt;color:#333333;font-family:宋体;\">银行帐户：<span><span>1203 2840 2920 0215 844 </span> </span></span></strong> \r\n</p>\r\n<p>\r\n	<strong><span></span></strong> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:36.15pt;text-align:left;\" align=\"left\">\r\n	<strong><span style=\"font-size:12pt;color:#333333;font-family:宋体;\">电<span><span><span> </span></span>话：<span>0577- 68708516</span></span></span></strong><span style=\"font-size:12pt;color:#333333;font-family:宋体;\"> </span><span style=\"font-size:12pt;font-family:宋体;\"> </span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;font-family:宋体;\"> <span><span> </span></span></span><span style=\"font-size:12pt;color:#333333;font-family:宋体;\">招 标 人：苍南县风景旅游管理局 <span> </span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:36pt;text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;font-family:宋体;\">地<span><span><span> </span></span>址：苍南县灵溪镇玉苍路（老县府后座）</span><span><span> </span> </span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:36pt;text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;font-family:宋体;\">电<span><span><span> </span></span>话：</span><span><span> 0577-647 </span> </span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:36pt;text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;font-family:宋体;\">传<span><span><span> </span></span>真：</span><span><span> 0577-647 </span> </span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:36pt;text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;font-family:宋体;\">联 系 人：陆先生<span><span> </span> </span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:36pt;text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;font-family:宋体;\">招标代理： 温州市建设工程投资咨询公司<span><span> </span> </span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:36pt;text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;font-family:宋体;\">地<span><span><span> </span></span>址：苍南县灵溪镇玉苍路<span>555</span>号建设银行四楼</span><span><span> </span> </span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:36pt;text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;font-family:宋体;\">电<span><span><span> </span></span>话：</span><span><span> 0577-64762380 </span> </span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:36pt;text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;font-family:宋体;\">传<span><span><span> </span></span>真：</span><span><span> 0577-64762380 </span> </span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:36pt;text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;font-family:宋体;\">联 系 人：缪先生<span><span> </span> </span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;font-family:宋体;\"> <span><span> </span></span> </span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:264pt;text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;font-family:宋体;\"><span><span> </span></span></span><span style=\"font-size:12pt;color:#333333;font-family:宋体;\">苍南县风景旅游管理局<span><span> </span> </span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:264pt;text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;font-family:宋体;\">苍南县公共资源交易中心<span><span> </span> </span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p>\r\n	<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:276pt;text-align:left;\" align=\"left\">\r\n	<span style=\"font-size:12pt;color:#333333;font-family:宋体;\">二Ｏ一Ｏ年十一月五日</span> \r\n</p>', 'hsg', 'upload/1554572376782.jpg', '95', '2019-04-07 15:55:49');
INSERT INTO `xinwentongzhi` VALUES ('17', '未来太空飞船造型是怎样的', '旅游攻略', '&nbsp;&nbsp;&nbsp; 据<a href=\"http://wenwen.soso.com/z/Search.e?sp=S%E5%9B%BD%E5%A4%96%E5%AA%92%E4%BD%93&ch=w.search.jhlink\" target=\"_blank\"><span>国外媒体</span></a>报道，随着<a href=\"http://wenwen.soso.com/z/Search.e?sp=S%E7%BE%8E%E5%9B%BD%E8%88%AA%E5%A4%A9%E9%A3%9E%E6%9C%BA&ch=w.search.jhlink\" target=\"_blank\"><span>美国航天飞机</span></a>的退役，太空飞行器的家族中又少了一个重要成员，航天设计师们也在开始着手下一代太空船的构思。不过，<a href=\"http://wenwen.soso.com/z/Search.e?sp=S%E7%A7%91%E5%B9%BB%E5%B0%8F%E8%AF%B4&ch=w.search.jhlink\" target=\"_blank\"><span>科幻小说</span></a>家和插图画家们很早以前就已经为他们设计了理想的未来太空船版本。<a href=\"http://wenwen.soso.com/z/Search.e?sp=S%E7%A7%91%E5%B9%BB&ch=w.search.jhlink\" target=\"_blank\"><span>科幻</span></a>理论家认为，未来太空船的设计或许真的可能从这些科幻小说插图中获取灵感。\r\n<p>\r\n	有人认为，科幻艺术家与实际的太空船设计师之间的界限事实上很模糊。<a href=\"http://wenwen.soso.com/z/Search.e?sp=S%E7%BE%8E%E5%9B%BD%E8%91%97%E5%90%8D&ch=w.search.jhlink\" target=\"_blank\"><span>美国著名</span></a>的太空美术之父<a href=\"http://wenwen.soso.com/z/Search.e?sp=S%E5%88%87%E6%96%AF&ch=w.search.jhlink\" target=\"_blank\"><span>切斯</span></a>利-邦尼斯泰尔不仅仅对科幻小说的创作，甚至对美国的太空计划都具有重要的影响。美国宇航局德裔火箭技术和太空探测设计师韦纳-冯-<a href=\"http://wenwen.soso.com/z/Search.e?sp=S%E5%B8%83%E5%8A%B3%E6%81%A9&ch=w.search.jhlink\" target=\"_blank\"><span>布劳恩</span></a>也曾经从著名科幻小说家<a href=\"http://wenwen.soso.com/z/Search.e?sp=S%E6%9C%B1%E5%88%A9&ch=w.search.jhlink\" target=\"_blank\"><span>朱利</span></a>斯-凡尔纳和<a href=\"http://wenwen.soso.com/z/Search.e?sp=S%E8%B5%AB%E4%BC%AF%E7%89%B9&ch=w.search.jhlink\" target=\"_blank\"><span>赫伯特</span></a>-乔治-<a href=\"http://wenwen.soso.com/z/Search.e?sp=S%E5%A8%81%E5%B0%94%E6%96%AF&ch=w.search.jhlink\" target=\"_blank\"><span>威尔斯</span></a>那里获得灵感，委托邦尼斯泰尔为他的太空飞行概念介绍<a href=\"http://wenwen.soso.com/z/Search.e?sp=S%E6%80%A7%E6%96%87%E7%AB%A0&ch=w.search.jhlink\" target=\"_blank\"><span>性文章</span></a>创作插图，并将插图随同文章公开发表。布劳恩的技术与邦尼斯泰尔的艺术构想的完美结合让太空科学更容易被外行的读者们理解和接受。当然，在理解和接受这种概念后，作为纳税人的外行读者们就更容易接受政府的太空计划，在大选表决时更倾向地做出自己的决定。\r\n</p>\r\n<p>\r\n	科幻小说和<a href=\"http://wenwen.soso.com/z/Search.e?sp=S%E5%B9%BB%E6%83%B3%E8%89%BA%E6%9C%AF&ch=w.search.jhlink\" target=\"_blank\"><span>幻想艺术</span></a>家协会每年都会向在科幻和幻想艺术领域产生重要影响的人颁发“切斯利”奖。拉里-<a href=\"http://wenwen.soso.com/z/Search.e?sp=S%E6%9C%97%E6%A0%BC&ch=w.search.jhlink\" target=\"_blank\"><span>朗格</span></a>是一名德裔画家，他曾经为军队飞行手册创<a href=\"http://wenwen.soso.com/z/Search.e?sp=S%E4%BD%9C%E5%9B%BE&ch=w.search.jhlink\" target=\"_blank\"><span>作图</span></a>解，并被指定负责美国宇航局下一代太空船的<a href=\"http://wenwen.soso.com/z/Search.e?sp=S%E5%A4%96%E8%A7%82%E8%AE%BE%E8%AE%A1&ch=w.search.jhlink\" target=\"_blank\"><span>外观设计</span></a>。他和他的创作团队通过将布劳恩的思想进行图解，从而创作了自己的太空站设计版本。拉里-朗格后来成为《2001:<a href=\"http://wenwen.soso.com/z/Search.e?sp=S%E5%A4%AA%E7%A9%BA%E6%BC%AB%E6%B8%B8&ch=w.search.jhlink\" target=\"_blank\"><span>太空漫游</span></a>》中的太空<a href=\"http://wenwen.soso.com/z/Search.e?sp=S%E4%BA%A7%E5%93%81%E8%AE%BE%E8%AE%A1&ch=w.search.jhlink\" target=\"_blank\"><span>产品设计</span></a>师和艺术指导。\r\n</p>\r\n<p>\r\n	英国艺术家<a href=\"http://wenwen.soso.com/z/Search.e?sp=S%E5%85%8B%E9%87%8C%E6%96%AF&ch=w.search.jhlink\" target=\"_blank\"><span>克里斯</span></a>-弗斯的科幻小说插图<a href=\"http://wenwen.soso.com/z/Search.e?sp=S%E8%89%BA%E6%9C%AF%E4%BD%9C%E5%93%81&ch=w.search.jhlink\" target=\"_blank\"><span>艺术作品</span></a>更是将艺术创作带进了真实的太空旅行领域，他的作品汇总于一本名为《硬件：克里斯-弗斯最后的科幻小说作品》的新书中。在新书的封面上，弗斯引领了一种新型的太空艺术风格，其最显著的特点就是将巨大、艳丽的<a href=\"http://wenwen.soso.com/z/Search.e?sp=S%E5%A4%AA%E7%A9%BA%E9%A3%9E%E8%88%B9&ch=w.search.jhlink\" target=\"_blank\"><span>太空飞船</span></a>置身于旋涡状的太空背景中。弗斯曾经负责为多部<a href=\"http://wenwen.soso.com/z/Search.e?sp=S%E7%A7%91%E5%B9%BB%E7%94%B5%E5%BD%B1&ch=w.search.jhlink\" target=\"_blank\"><span>科幻电影</span></a>进行艺术创作。\r\n</p>\r\n<p>\r\n	<a href=\"http://wenwen.soso.com/z/Search.e?sp=S%E8%88%AA%E5%A4%A9%E9%A3%9E%E6%9C%BA&ch=w.search.jhlink\" target=\"_blank\"><span>航天飞机</span></a>计划的结束意味着太空船工程师和设计师们将面临新的挑战。他们或许能够从这些艺术家这里获得灵感。由于政府资金紧缩，许多太空项目可能要转向私营投资者。一些公司，如<a href=\"http://wenwen.soso.com/z/Search.e?sp=S%E6%B3%A2%E9%9F%B3%E5%85%AC%E5%8F%B8&ch=w.search.jhlink\" target=\"_blank\"><span>波音公司</span></a>等，将会引诱消费者开始为太空旅行付费。为了在未来太空旅行可能的激烈竞争中立于不败之地，这些公司不得不提早将目标转向太空飞行。科幻理论家加里-<a href=\"http://wenwen.soso.com/z/Search.e?sp=S%E5%A8%81%E6%96%AF%E7%89%B9&ch=w.search.jhlink\" target=\"_blank\"><span>威斯特</span></a>法尔博士认为，“一家有进取心的公司，要想取得成功，就必须提供他们具有独特优势的太空船来吸引政府和私人乘客，这些太空船要像弗斯创作的版本那样别具一格。弗斯的太空船之所以如此华丽，不仅仅在于将其设计成流线型的结构，他还大胆使用了明亮的色调。”\r\n</p>\r\n<p>\r\n	一些人或许很奇怪地发现，像拉里-朗格这样的美国宇航局员工，竟然从高深的太空项目转向好莱坞发展，甚至还因为担任《帝国反击战》的艺术指导而获<a href=\"http://wenwen.soso.com/z/Search.e?sp=S%E5%A5%A5%E6%96%AF%E5%8D%A1&ch=w.search.jhlink\" target=\"_blank\"><span>奥斯卡</span></a>提名。\r\n</p>', 'hsg', 'upload/1554572307871.jpg', '19', '2019-04-07 15:55:50');
INSERT INTO `xinwentongzhi` VALUES ('18', '国航赴埃接滞留旅客航班今天返回北京', '旅游攻略', '&nbsp;&nbsp;&nbsp; 北京２月１日电（记者林红梅）北京时间２月１日早７时３４分，国航ＣＣＡ０５６搭载着２６５名旅客，从埃及开罗机场起飞，向中国北京飞去，预计将在１７时３０分左右到达北京首都国际机场。\r\n<p>\r\n	与此同时，北京时间２月１日凌晨２时３０分和３时，国航派出的２架Ａ３３０飞机相继从首都机场起飞前往开罗，继续接回滞留的中方人员。航班号分别为ＣＣＡ０５７和ＣＣＡ０５８，飞机号分别是Ｂ６１１７和Ｂ６１１３。\r\n</p>\r\n<p>\r\n	国航有关负责人２月１日在此间对记者介绍说，１月３１日，中国政府决定增派航班接回滞留在埃及的中方人员。由于国航在开罗没有定期航班，空中要飞越七八个国家，需临时办理航路申请、外交手续等等，大大增加了飞行准备难度。接到通知后，国航快速反应，有序安排，备降场和天气资料、来回程餐食、必要的地面保障设备和航材等，在短短几个小时内到位。１月３１日１１时３０分，第一架飞机从北京首都机场滑出，１１时４８分顺利升空，于北京时间１月３１日２２时３１分，经过１０个半小时的长途飞行，安全降落在开罗机场。\r\n</p>\r\n<p>\r\n	由于当地局势严峻，当地机场的保障出现极大的不正常，旅客办理海关、边检、值机等手续以及行李装机、组织上客等遇到重重困难，给国航ＣＣＡ０５６载客带来巨大难度。在中国使馆的协调和机组的不断努力下，国航ＣＣＡ０５６终于在２月１日早上再次拉起飞向北京。\r\n</p>\r\n<p>\r\n	国航这位负责人表示，为最大限度载客，国航减少了一切不必要的设施，但考虑到这几天滞留人员饮食可能不规律，特意加带了正餐。\r\n</p>\r\n<!-- end_ct -->', 'hsg', 'upload/1554572285995.jpg', '56', '2019-04-07 15:55:50');
INSERT INTO `xinwentongzhi` VALUES ('19', '韩媒称中国雾霾影响韩国 导致韩国首都雾霾频发', '旅游攻略', '<p style=\"text-indent:30px;\">\r\n	据外媒报道，中国70个城市空气经常性出现雾霾。特别是今年中国雾霾天数比常年偏多，创下52年来最高纪录。 中国的雾霾引发了邻国韩国的抱怨和担忧，韩国《中央日报》11月6日援引韩国环境科学院的调查称，受中国雾霾影响，今年首尔等韩国首都圈地区雾霾污染次数剧增，源自中国的“黑色灾难”正在威胁朝鲜半岛。\r\n</p>\r\n<p style=\"text-indent:30px;\">\r\n	韩国环境科学院大气环境研究科科长洪俞德(音译)表示：“随着中国可吸入颗粒物污染的加剧，中国的污染物质乘着气流来到韩国的次数也日益增加。在韩国国内，又恰巧具备了大气停滞等加重污染的条件，因此，韩国的污染情况也在加剧。”\r\n</p>\r\n<p style=\"text-indent:30px;\">\r\n	报道称，雾霾侵袭韩国，虽然也不能排除受到韩国国内的影响，但是，源自中国雾霾的可吸入颗粒物也产生了一定影响。专家认为，韩国国内可吸入颗粒物污染中，源自中国的烟雾所占比重达到30~50%。\r\n</p>\r\n<p style=\"text-indent:30px;\">\r\n	洪俞德还表示：“中国本月中旬起开始正式供暖。由于韩国国内也开始供暖，今年冬天，可吸入颗粒物污染情况将极为严重。”\r\n</p>\r\n<p style=\"text-indent:30px;\">\r\n	专家指出，中国雾霾中的细颗粒物(PM2.5)较多，对健康有着非常严重的影响。细颗粒物指的是直径不到2.5微米的微小粉尘。它可以渗透到呼吸器官深处。据韩国环境科学院的分析结果显示，10月29日中国雾霾来袭时，韩国首都圈的可吸入颗粒物中，细颗粒物所占比重达到了85%。这比今年1月至10月的整体平均值69%都要高。铅、砷、锌等重金属的浓度达到了平时的1.5倍。\r\n</p>\r\n<p style=\"text-indent:30px;\">\r\n	韩国仁荷大学林钟翰教授表示：“细颗粒物不仅会导致哮喘等呼吸系统疾病，还会渗透到血管内，提升血管的粘度，导致心脏病、中风等心血管疾病恶化等，增高了住院率、死亡率。”在细颗粒物中含有导致癌症的有害重金属以及多环芳烃(PAHs)等致癌物质。如长期暴露在此环境下，可能会引发肺癌。\r\n</p>\r\n<p style=\"text-indent:30px;\">\r\n	在韩国，对中国雾霾的抱怨不时见诸报端。韩国KBS电视台11月3日报道称，中国的雾霾可以称作“人类历史上最严重的大气污染”，目前该污染正持续对朝鲜半岛产生影响。从上月29日开始，含有大量有毒化学物质和重金属的中国雾霾覆盖首尔。根据环境部当时测量的结果，首尔大气中神经性有毒物质“铅”的含量是平时的8倍，“砷”和“镍”的含量是平时的4倍，平时根本难得一见的“铬”也被检测出来。主要由煤炭燃烧产生的硫化物和氮化物等污染物质达到平常的6倍以上。\r\n</p>\r\n<p style=\"text-indent:30px;\">\r\n	《朝鲜日报》报道称，韩国PM10浓度一年中最高的时期通常是中国的冬季，即12月至3月。中国雾霾主要来自于北京所在的华北地区，该地区的雾霾冬季随着西北风移动，最快6小时，最慢一两天就会越过黄海覆盖朝鲜半岛。有韩国环境专家认为，中国雾霾在经过黄海的过程中会有所稀释，但40%至50%依然转移到朝鲜半岛。(泰和)\r\n</p>\r\n<!--/enpcontent-->', 'hsg', 'upload/1554572265989.jpg', '29', '2019-04-07 15:55:50');
INSERT INTO `xinwentongzhi` VALUES ('20', '万豪冠名省绿色旅游饭店（图）', '旅游攻略', '<p align=\"center\">\r\n	<img src=\"http://pic2.66wz.com/0/10/35/59/10355999_908812.jpg\" border=\"0\" /> \r\n</p>\r\n<!--advertisement code begin--><!--advertisement code end-->\r\n<p>\r\n	12月28日消息：万豪大酒店在节能减排上下足功夫，很多设施都打上了“低碳环保”的标签。日前，该酒店通过了省旅游局、省计委、省环保局的评审，成为省绿色旅游饭店。图为员工在清理废旧电池回收箱里的废旧电池。（李士明/摄）\r\n</p>', 'hsg', 'upload/1554572236686.jpg', '48', '2019-04-07 15:55:50');
INSERT INTO `xinwentongzhi` VALUES ('21', '世界最大牛排4.25千克 大胃王一次吃完可免单', '旅游攻略', '<SPAN id=content>\r\n<P>　　如果你爱吃牛排，不妨试试挑战英国伍斯特郡“鸭子客栈”餐馆推出的超级牛排套餐。套餐中的主菜牛排号称“世界最大牛排”，重约4.25千克，此外还有炸薯条、<SPAN style=\"BORDER-BOTTOM: 0px dotted; COLOR: #0084d8; CURSOR: hand; TEXT-DECORATION: underline\" name=\"HL_TAG\">炸洋葱圈</SPAN>、烤蘑菇和烤番茄作配菜。套餐价110英镑，挑战成功者可以免单，不过自推出至今挑战者寥寥无几，更无一人成功。</P>\r\n<P>　　“<SPAN style=\"BORDER-BOTTOM: 0px dotted; COLOR: #0084d8; CURSOR: hand; TEXT-DECORATION: underline\" name=\"HL_TAG\">鸭子客栈</SPAN>”位于伍斯特郡雷迪奇，去年推出超级牛排套餐。英国《每日邮报》刊登的照片显示，它的最大特点就是牛排分量超大。牛排30厘米见方，厚10厘米，重4.25千克，厨师需要耗费至少2小时才能把肉煎成三四分熟的程度。餐馆老板阿什利·加根和路易丝·加根夫妇介绍说，他们先前供应的牛排是标准重量，重约0.45千克，后来有顾客提议，要求提供分量更足的牛排，于是他们萌生提供这种超量牛排的想法。超级牛排的重量是标准牛排的近10倍。</P></SPAN>', 'hsg', 'upload/1317085922265.jpg', '31', '2019-04-07 15:55:50');
INSERT INTO `xinwentongzhi` VALUES ('30', '玩丽江', '旅游攻略', '<p>\r\n	玩丽江玩丽江玩丽江玩丽江玩丽江玩丽江玩丽江玩丽江玩丽江玩丽江\r\n</p>\r\n<p>\r\n	玩丽江\r\n</p>\r\n<p>\r\n	玩丽江玩丽江玩丽江玩丽江玩丽江玩丽江\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	玩丽江玩丽江玩丽江\r\n</p>', 'hsg', 'upload/1555396533303.jpg', '1', '2019-04-07 01:44:40');
INSERT INTO `xinwentongzhi` VALUES ('31', '旅游心得', '旅游攻略', '<p>\r\n	旅游心得旅游心得旅游心得旅游心得旅游心得\r\n</p>\r\n<p>\r\n	旅游心得旅游心得旅游心得旅游心得\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	旅游心得旅游心得旅游心得旅游心得旅游心得旅游心得旅游心得\r\n</p>', 'hsg', 'upload/1555396518975.jpg', '4', '2019-04-13 21:38:59');

-- ----------------------------
-- Table structure for `yonghuzhuce`
-- ----------------------------
DROP TABLE IF EXISTS `yonghuzhuce`;
CREATE TABLE `yonghuzhuce` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `yonghuming` varchar(50) DEFAULT NULL,
  `mima` varchar(50) DEFAULT NULL,
  `xingming` varchar(50) DEFAULT NULL,
  `xingbie` varchar(2) DEFAULT NULL,
  `chushengnianyue` varchar(50) DEFAULT NULL,
  `QQ` varchar(50) DEFAULT NULL,
  `youxiang` varchar(50) DEFAULT NULL,
  `dianhua` varchar(50) DEFAULT NULL,
  `shenfenzheng` varchar(50) DEFAULT NULL,
  `touxiang` varchar(50) DEFAULT NULL,
  `dizhi` text,
  `beizhu` text,
  `addtime` datetime DEFAULT NULL,
  `issh` varchar(2) DEFAULT '否',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yonghuzhuce
-- ----------------------------
INSERT INTO `yonghuzhuce` VALUES ('2', 'leejie', 'leejie', '李龙', '男', '2012-05-21', '851781333', 'fege@126.com', '63474337', '623632153', 'upload/1333963398718.gif', '温州飞翔路2号', 'htrjrtjr', '2019-04-07 15:30:01', '是');
INSERT INTO `yonghuzhuce` VALUES ('3', 'mygod', 'mygod', '陈德才', '男', '2012-02-02', '870538338', 'gshf@yahoo.com', '9696556', '33253636', 'upload/1333963445546.gif', '杭州四季青广场3号', 'hdhffd', '2019-04-07 15:30:01', '是');
INSERT INTO `yonghuzhuce` VALUES ('5', 'aaa', 'aaa', 'ghfgh', '男', '2018-03-13', '32342335345', '323423@qq.com', '13827628331', '322334545345345345', 'upload/1520330503906.jpg', 'ersefsd', 'ertert', '2019-04-07 18:01:49', '是');
INSERT INTO `yonghuzhuce` VALUES ('7', '111', '111', '张三', '男', '2014-04-13', '54254646', '7775655@qq.com', '13555555555', '330327199012120012', 'upload/1555162643464.gif', '中国浙江xx', '', '2019-04-13 21:37:26', '是');
INSERT INTO `yonghuzhuce` VALUES ('8', '333', '333', '李四', '男', '2014-04-16', '54254646', '7775655@qq.com', '13555555555', '330327199012120012', 'upload/1555396652993.jpg', '中国浙江xx', '', '2019-04-16 14:37:36', '是');

-- ----------------------------
-- Table structure for `youqinglianjie`
-- ----------------------------
DROP TABLE IF EXISTS `youqinglianjie`;
CREATE TABLE `youqinglianjie` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `wangzhanmingcheng` varchar(50) DEFAULT NULL,
  `wangzhi` varchar(50) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of youqinglianjie
-- ----------------------------
INSERT INTO `youqinglianjie` VALUES ('1', '百度', 'http://www.baidu.com', '2019-04-07 15:30:01');
INSERT INTO `youqinglianjie` VALUES ('2', '谷歌', 'http://www.google.cn', '2019-04-07 15:30:01');
INSERT INTO `youqinglianjie` VALUES ('3', '新浪', 'http://www.sina.com', '2019-04-07 15:30:01');
INSERT INTO `youqinglianjie` VALUES ('4', '雅虎', 'http://www.yahoo.cn', '2019-04-07 15:30:01');
INSERT INTO `youqinglianjie` VALUES ('5', '腾讯', 'http://www.qq.com', '2019-04-07 15:30:01');
