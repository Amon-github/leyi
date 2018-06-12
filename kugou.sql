/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50638
Source Host           : localhost:3306
Source Database       : kugou

Target Server Type    : MYSQL
Target Server Version : 50638
File Encoding         : 65001

Date: 2018-06-09 17:36:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for friendlink
-- ----------------------------
DROP TABLE IF EXISTS `friendlink`;
CREATE TABLE `friendlink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `context` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friendlink
-- ----------------------------
INSERT INTO `friendlink` VALUES ('1', 'javascript:scroll(0,0)', '爱美网');
INSERT INTO `friendlink` VALUES ('2', 'javascript:scroll(0,0)', '央视网综艺频道');
INSERT INTO `friendlink` VALUES ('3', 'javascript:scroll(0,0)', '汽车论坛');
INSERT INTO `friendlink` VALUES ('4', 'javascript:scroll(0,0)', 'IT之家');
INSERT INTO `friendlink` VALUES ('5', 'javascript:scroll(0,0)', 'IPhone游戏');
INSERT INTO `friendlink` VALUES ('6', 'javascript:scroll(0,0)', '旅游攻略');
INSERT INTO `friendlink` VALUES ('7', 'javascript:scroll(0,0)', '悦声无限');
INSERT INTO `friendlink` VALUES ('8', 'javascript:scroll(0,0)', '华为商城');
INSERT INTO `friendlink` VALUES ('9', 'javascript:scroll(0,0)', '365音乐网');
INSERT INTO `friendlink` VALUES ('10', 'javascript:scroll(0,0)', '软件下载');
INSERT INTO `friendlink` VALUES ('11', 'javascript:scroll(0,0)', '漫漫看漫画');
INSERT INTO `friendlink` VALUES ('12', 'javascript:scroll(0,0)', '手机游戏');
INSERT INTO `friendlink` VALUES ('13', 'javascript:scroll(0,0)', '原创音乐');
INSERT INTO `friendlink` VALUES ('14', 'javascript:scroll(0,0)', '腾讯音乐人');

-- ----------------------------
-- Table structure for kguser
-- ----------------------------
DROP TABLE IF EXISTS `kguser`;
CREATE TABLE `kguser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) NOT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `nick` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `sign` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1242291756 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kguser
-- ----------------------------
INSERT INTO `kguser` VALUES ('1242291719', '15521926930', '123456', '阿蒙¤Amon', '男', '1996-01-17', '广东省广州市', '懒得签名');
INSERT INTO `kguser` VALUES ('1242291733', '15666666666', '123456a', '小K', null, null, null, null);
INSERT INTO `kguser` VALUES ('1242291739', '15555555123', '是我啊123a', '是我啊123a', null, null, null, null);
INSERT INTO `kguser` VALUES ('1242291744', '15666666612', '123456a', null, null, null, null, null);
INSERT INTO `kguser` VALUES ('1242291754', '15777777777', '123456a', null, null, null, null, null);
INSERT INTO `kguser` VALUES ('1242291755', '15333333333', '123456a', null, null, null, null, null);

-- ----------------------------
-- Table structure for parners
-- ----------------------------
DROP TABLE IF EXISTS `parners`;
CREATE TABLE `parners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of parners
-- ----------------------------
INSERT INTO `parners` VALUES ('1', 'img/you01.jpg');
INSERT INTO `parners` VALUES ('2', 'img/you02.jpg');
INSERT INTO `parners` VALUES ('3', 'img/you03.jpg');
INSERT INTO `parners` VALUES ('4', 'img/you04.jpg');
INSERT INTO `parners` VALUES ('5', 'img/you05.jpg');
INSERT INTO `parners` VALUES ('6', 'img/you06.jpg');
INSERT INTO `parners` VALUES ('7', 'img/you07.jpg');
INSERT INTO `parners` VALUES ('8', 'img/you08.jpg');
INSERT INTO `parners` VALUES ('9', 'img/you09.jpg');
INSERT INTO `parners` VALUES ('10', 'img/you10.jpg');
INSERT INTO `parners` VALUES ('11', 'img/you11.jpg');
INSERT INTO `parners` VALUES ('12', 'img/you12.jpg');
INSERT INTO `parners` VALUES ('13', 'img/you13.jpg');
INSERT INTO `parners` VALUES ('14', 'img/you14.jpg');
INSERT INTO `parners` VALUES ('15', 'img/you15.jpg');
INSERT INTO `parners` VALUES ('16', 'img/you16.jpg');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------

-- ----------------------------
-- Table structure for xgsf
-- ----------------------------
DROP TABLE IF EXISTS `xgsf`;
CREATE TABLE `xgsf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `songName` varchar(255) DEFAULT NULL,
  `songTips` varchar(255) DEFAULT NULL,
  `songTime` varchar(255) DEFAULT NULL,
  `songurl` varchar(255) DEFAULT NULL,
  `songtype` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xgsf
-- ----------------------------
INSERT INTO `xgsf` VALUES ('1', '尚雯婕 - King Of Stupidity', null, '04:10', 'http://www.kugou.com/song/mxkirc8.html#hash=2ABF9766923ABB05ABE1368D546C08C4&album_id=0', '1');
INSERT INTO `xgsf` VALUES ('2', '于文文 - 体面 (Live)', null, '04:27', 'http://www.kugou.com/song/myksc9d.html', '1');
INSERT INTO `xgsf` VALUES ('3', '牛奶咖啡 - 再见,昨天【昨日青空电影青春毕业曲】', null, '04:55', 'http://www.kugou.com/song/mxpzq63.html', '1');
INSERT INTO `xgsf` VALUES ('4', '华语群星 - 我的未来式 (十周年合唱版)【爱情公寓电影推广曲】', null, '01:36', 'http://www.kugou.com/song/my6de4c.html', '1');
INSERT INTO `xgsf` VALUES ('5', '马旭东 - 不要再想起我', null, '03:24', 'http://www.kugou.com/song/mxh7hc7.html', '1');
INSERT INTO `xgsf` VALUES ('6', '曲肖冰、王冕 - 逃逃', null, '02:42', 'http://www.kugou.com/song/myanpd1.html', '1');
INSERT INTO `xgsf` VALUES ('7', '蒋雪儿 - 人生如戏', null, '03:48', 'http://www.kugou.com/song/myanpd1.html', '1');
INSERT INTO `xgsf` VALUES ('8', '乌兰托娅 - 想你的时候就亲亲草原', '', '03:48', 'http://www.kugou.com/song/myanpd1.html', '1');
INSERT INTO `xgsf` VALUES ('9', '冷漠 - 今夜你会不会想起我', '', '02:42', 'http://www.kugou.com/song/myanpd1.html', '1');
INSERT INTO `xgsf` VALUES ('10', '麦小兜、郭聪明 - 害羞', '', '04:10', 'http://www.kugou.com/song/mxkirc8.html#hash=2ABF9766923ABB05ABE1368D546C08C4&album_id=0', '1');
INSERT INTO `xgsf` VALUES ('27', '汪晨蕊 - 还是记得你星座', null, '04:10', null, '1');
INSERT INTO `xgsf` VALUES ('28', '任妙音 - 我在想你 你在哪里', null, '04:10', null, '1');
INSERT INTO `xgsf` VALUES ('29', '韩安旭 - 梦,该勇敢去想', null, '04:10', null, '1');
INSERT INTO `xgsf` VALUES ('30', '吴亦凡 - 天地【中国新说唱主题曲】', null, '04:10', null, '1');
INSERT INTO `xgsf` VALUES ('31', '祖海 - 连翘花', null, '04:10', null, '1');
INSERT INTO `xgsf` VALUES ('32', '新街口组合、王泓漓 - 分手在北京', null, '04:10', null, '1');
INSERT INTO `xgsf` VALUES ('33', '慕容晓晓 - 生活不易', null, '04:10', null, '1');
INSERT INTO `xgsf` VALUES ('34', '杨小曼 - 可惜不是我', null, '04:10', null, '1');
INSERT INTO `xgsf` VALUES ('35', '曹晓亮、带泪的鱼 - 另类', null, '04:10', null, '1');
INSERT INTO `xgsf` VALUES ('36', '胡灵 - 十七岁', null, '04:10', null, '1');
INSERT INTO `xgsf` VALUES ('37', '卢润泽、张新洁(2) - 万物苏醒', null, '04:10', null, '1');
INSERT INTO `xgsf` VALUES ('38', '曾一鸣 - 我们都笨【我的女友要上天网络剧主题片尾曲】', null, '04:10', null, '1');
INSERT INTO `xgsf` VALUES ('39', '刘崇健、金南玲 - 习惯一个人', null, '04:10', null, '1');
INSERT INTO `xgsf` VALUES ('40', '宁浩、文牧野、黄超 - 药神之歌【我不是药神电影插曲】', null, '04:10', null, '1');
INSERT INTO `xgsf` VALUES ('47', 'Tove Lo、Charli XCX、Icona Pop、Elliphant、ALMA - bitches', null, '03:11', 'http://www.kugou.com/song/mykzd0d.html', '2');
INSERT INTO `xgsf` VALUES ('48', 'Sabrina Carpenter - Almost Love', null, '03:32', 'http://www.kugou.com/song/my5w7ce.html', '2');
INSERT INTO `xgsf` VALUES ('49', 'Rich Brian、Higher Brothers - Midsummer Madness', null, '04:40', 'http://www.kugou.com/song/myf63dc.html', '2');
INSERT INTO `xgsf` VALUES ('50', 'Little Big Town - Summer Fever', null, '03:06', null, '2');
INSERT INTO `xgsf` VALUES ('51', 'Why Don t We - Hooked', null, '03:06', null, '2');
INSERT INTO `xgsf` VALUES ('52', 'Kanye West - Yikes', null, '03:06', null, '2');
INSERT INTO `xgsf` VALUES ('53', 'Kanye West - All Mine', null, '03:06', null, '2');
INSERT INTO `xgsf` VALUES ('54', 'Maroon 5、Cardi B - Girls Like You', null, '03:06', null, '2');
INSERT INTO `xgsf` VALUES ('55', 'The 1975 - Give Yourself A Try', null, '03:06', null, '2');
INSERT INTO `xgsf` VALUES ('56', 'MNEK、Hailee Steinfeld - Colour', null, '03:06', null, '2');
INSERT INTO `xgsf` VALUES ('57', 'Lily Allen - Lost My Mind', null, '03:06', null, '2');
INSERT INTO `xgsf` VALUES ('58', 'Charli XCX - 5 In The Morning', null, '03:06', null, '2');
INSERT INTO `xgsf` VALUES ('59', 'Gorillaz、George Benson - Humility', null, '03:06', null, '2');
INSERT INTO `xgsf` VALUES ('60', 'St. Vincent - Fast Slow Disco', null, '03:06', null, '2');
INSERT INTO `xgsf` VALUES ('61', 'James Arthur - You Deserve Better', null, '03:06', null, '2');
INSERT INTO `xgsf` VALUES ('62', 'Calum Scott、Barbara Pravi - You Are The Reason (French Duet Version)', null, '03:06', null, '2');
INSERT INTO `xgsf` VALUES ('63', 'James Arthur - At My Weakest', null, '03:06', null, '2');
INSERT INTO `xgsf` VALUES ('64', 'Felix Snow、ROZES - Demons', null, '03:06', null, '2');
INSERT INTO `xgsf` VALUES ('65', 'Weezer - Africa', null, '03:06', null, '2');
INSERT INTO `xgsf` VALUES ('66', 'Underworld、Iggy Pop - Bells & Circles', null, '03:06', null, '2');
INSERT INTO `xgsf` VALUES ('67', 'Buddy Guy、James Bay - Blue No More', null, '03:06', null, '2');
INSERT INTO `xgsf` VALUES ('68', 'MAC MILLER - Programs', null, '03:06', null, '2');
INSERT INTO `xgsf` VALUES ('69', 'Drake - I m Upset', null, '03:06', null, '2');
INSERT INTO `xgsf` VALUES ('70', 'Nicky Jam、Will Smith、Era Istrefi - Live It Up (Official Song 2018 FIFA World Cup Russia)', null, '03:06', null, '2');
INSERT INTO `xgsf` VALUES ('71', '宥斌 - 숙녀 (淑女) (Lady)', null, '03:41', 'http://www.kugou.com/song/mxlwpa7.html', '3');
INSERT INTO `xgsf` VALUES ('72', 'fromis_9 - 두근두근(DKDK)', null, '03:41', 'http://www.kugou.com/song/mxlghb3.html', '3');
INSERT INTO `xgsf` VALUES ('73', 'AOA - 빙글뱅글 (Bingle Bangle)', null, '03:41', null, '3');
INSERT INTO `xgsf` VALUES ('74', 'PRISTIN V - 네 멋대로 (Get It)', null, '03:41', null, '3');
INSERT INTO `xgsf` VALUES ('75', 'Kei - Let s Pray【RICH MAN OST】', null, '03:41', null, '3');
INSERT INTO `xgsf` VALUES ('76', '南太铉(South Club) - 왕따 (OUTCAST)', null, '03:41', null, '3');
INSERT INTO `xgsf` VALUES ('77', 'VIXX - 사랑인걸까 (是爱情吗?)【你也是人类吗？ OST 】', null, '03:41', null, '3');
INSERT INTO `xgsf` VALUES ('78', 'The EastLight. - 설레임 (心动)', null, '03:41', null, '3');
INSERT INTO `xgsf` VALUES ('79', 'ELO、ZICO - OSAKA', null, '03:41', null, '3');
INSERT INTO `xgsf` VALUES ('80', '玟星、瑟琪 - SELFISH', null, '03:41', null, '3');
INSERT INTO `xgsf` VALUES ('81', 'Crush、Band Wonderlust - Stevie Wonderlust', null, '03:41', null, '3');
INSERT INTO `xgsf` VALUES ('82', 'VICTON - 오월애 (俉月哀) (TIME OF SORROW)', null, '03:41', null, '3');
INSERT INTO `xgsf` VALUES ('83', '南太铉(South Club) - Real Love【RICH MAN OST】', null, '03:41', null, '3');
INSERT INTO `xgsf` VALUES ('84', 'ELO、Dynamic Duo - Lip Service', null, '03:41', null, '3');
INSERT INTO `xgsf` VALUES ('85', 'N.Flying - HOW R U TODAY', null, '03:41', null, '3');
INSERT INTO `xgsf` VALUES ('86', '金圣圭 - 머물러줘 (Don t move) (SHINE Live ver)', null, '03:41', null, '3');
INSERT INTO `xgsf` VALUES ('87', 'Dok2、SUMIN - Bliss', null, '03:41', null, '3');
INSERT INTO `xgsf` VALUES ('88', '龙俊亨 - 무슨 말이 필요해 (Go Away)', null, '03:41', null, '3');
INSERT INTO `xgsf` VALUES ('89', 'Dreamcatcher - YOU AND I', null, '03:41', null, '3');
INSERT INTO `xgsf` VALUES ('90', 'Teen Top - 서울밤 (SEOUL NIGHT)', null, '03:41', null, '3');
INSERT INTO `xgsf` VALUES ('91', '徐恩光、李昌燮 - 소란한 하루 (My day)', null, '03:41', null, '3');
INSERT INTO `xgsf` VALUES ('92', 'Hui - 내비게이션 (Navigation)', null, '03:41', null, '3');
INSERT INTO `xgsf` VALUES ('93', 'Crush - 잊을만하면 (如果忘记了) (Bittersweet)', null, '03:41', null, '3');
INSERT INTO `xgsf` VALUES ('94', '(G)I-DLE - LATATA', null, '03:41', null, '3');
INSERT INTO `xgsf` VALUES ('95', '三代目 J Soul Brothers - 恋と愛', null, '05:09', 'http://www.kugou.com/song/my4c79e.html', '4');
INSERT INTO `xgsf` VALUES ('96', 'EXO-CBX - Ringa Ringa Ring', null, '04:13', 'http://www.kugou.com/song/mm8q901.html', '4');
INSERT INTO `xgsf` VALUES ('97', 'TrySail - Truth【BEATLESS OP2】', null, '04:13', 'http://www.kugou.com/song/my4c79e.html', '4');
