/*
 Navicat Premium Data Transfer

 Source Server         : 1111
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : 139.199.103.116:3306
 Source Schema         : nideshop

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 29/04/2019 11:46:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for nideshop_ad
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_ad`;
CREATE TABLE `nideshop_ad` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `ad_position_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `position_id` (`ad_position_id`),
  KEY `enabled` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='banner图表\n';

-- ----------------------------
-- Records of nideshop_ad
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_ad` VALUES (3, 1, 1, '博迈德小程序', '', 'https://www.wangcong.fun:8002/static/upload/banner/17e295fe-fab5-41f9-89cc-79ba34f8242f.jpg', '小程序来啦', 0, 1);
INSERT INTO `nideshop_ad` VALUES (5, 1, 1, '满额包邮', '', 'https://www.wangcong.fun:8002/static/upload/banner/56873c93-1d35-46e5-ac59-2e16f820aa67.jpg', '满1000包邮', 0, 1);
COMMIT;

-- ----------------------------
-- Table structure for nideshop_ad_position
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_ad_position`;
CREATE TABLE `nideshop_ad_position` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='banner';

-- ----------------------------
-- Records of nideshop_ad_position
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_ad_position` VALUES (1, '移动端首页轮播广告', 750, 200, '');
COMMIT;

-- ----------------------------
-- Table structure for nideshop_address
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_address`;
CREATE TABLE `nideshop_address` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `country_id` smallint(5) NOT NULL DEFAULT '0',
  `province_id` smallint(5) NOT NULL DEFAULT '0',
  `city_id` smallint(5) NOT NULL DEFAULT '0',
  `district_id` smallint(5) NOT NULL DEFAULT '0',
  `address` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobile` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of nideshop_address
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_address` VALUES (3, '小明', 1, 1, 20, 233, 2414, '民族大道1号', '13800008888', 1);
COMMIT;

-- ----------------------------
-- Table structure for nideshop_admin
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_admin`;
CREATE TABLE `nideshop_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '''''',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '''''',
  `password_salt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '''''',
  `last_login_ip` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '''''',
  `last_login_time` int(11) NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '''''',
  `admin_role_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of nideshop_admin
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_admin` VALUES (1, 'admin', 'bb87bf23d14b27de74530dec20e234f3', 'ABCDEF', '::ffff:223.72.141.97', 1555377352, 0, 0, '\'\'', 0);
INSERT INTO `nideshop_admin` VALUES (2, '123', 'e7b3e907df88943aff31c0007feecdb6', 'ABCDEF', '0', 0, 0, 0, '\'\'', 0);
COMMIT;

-- ----------------------------
-- Table structure for nideshop_attribute
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_attribute`;
CREATE TABLE `nideshop_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `input_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `values` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cat_id` (`attribute_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of nideshop_attribute
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_attribute` VALUES (1, 1008009, '货号', 1, '', 0);
INSERT INTO `nideshop_attribute` VALUES (2, 1008009, '规格', 1, '', 0);
INSERT INTO `nideshop_attribute` VALUES (3, 1008009, '价格', 1, '', 0);
INSERT INTO `nideshop_attribute` VALUES (8, 1008008, '货号', 1, '', 0);
INSERT INTO `nideshop_attribute` VALUES (9, 1008008, '规格', 1, '', 0);
INSERT INTO `nideshop_attribute` VALUES (15, 1008008, '价格', 1, '', 0);
INSERT INTO `nideshop_attribute` VALUES (16, 1008002, '货号', 1, '', 0);
INSERT INTO `nideshop_attribute` VALUES (20, 1036000, '货号', 1, '', 0);
INSERT INTO `nideshop_attribute` VALUES (21, 1036000, '规格', 1, '', 0);
INSERT INTO `nideshop_attribute` VALUES (28, 1036000, '价格', 1, '', 0);
INSERT INTO `nideshop_attribute` VALUES (41, 1008002, '规格', 1, '', 0);
INSERT INTO `nideshop_attribute` VALUES (42, 1017000, '货号', 1, '', 0);
INSERT INTO `nideshop_attribute` VALUES (43, 1008016, '货号', 1, '', 0);
INSERT INTO `nideshop_attribute` VALUES (44, 1008016, '规格', 1, '', 0);
INSERT INTO `nideshop_attribute` VALUES (47, 1017000, '规格', 1, '', 0);
INSERT INTO `nideshop_attribute` VALUES (48, 1017000, '价格', 1, '', 0);
INSERT INTO `nideshop_attribute` VALUES (50, 1011004, '货号', 1, '', 0);
INSERT INTO `nideshop_attribute` VALUES (51, 1011004, '规格', 1, '', 0);
INSERT INTO `nideshop_attribute` VALUES (52, 1011004, '价格', 1, '', 0);
INSERT INTO `nideshop_attribute` VALUES (66, 1015000, '货号', 1, '', 0);
INSERT INTO `nideshop_attribute` VALUES (67, 1015000, '规格', 1, '', 0);
INSERT INTO `nideshop_attribute` VALUES (68, 1015000, '价格', 1, '', 0);
INSERT INTO `nideshop_attribute` VALUES (94, 1008002, '规格', 1, '', 0);
INSERT INTO `nideshop_attribute` VALUES (95, 1008002, '价格', 1, '', 0);
INSERT INTO `nideshop_attribute` VALUES (103, 1036001, '货号', 1, '', 0);
INSERT INTO `nideshop_attribute` VALUES (104, 1036001, '规格', 1, '', 0);
INSERT INTO `nideshop_attribute` VALUES (105, 1036001, '价格', 1, '', 0);
INSERT INTO `nideshop_attribute` VALUES (106, 1008016, '价格', 1, '', 0);
COMMIT;

-- ----------------------------
-- Table structure for nideshop_attribute_category
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_attribute_category`;
CREATE TABLE `nideshop_attribute_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1036002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of nideshop_attribute_category
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_attribute_category` VALUES (1008002, '核酸纯化', 1);
INSERT INTO `nideshop_attribute_category` VALUES (1008008, 'PCR', 1);
INSERT INTO `nideshop_attribute_category` VALUES (1008009, 'Marker', 1);
INSERT INTO `nideshop_attribute_category` VALUES (1008016, '克隆载体', 1);
INSERT INTO `nideshop_attribute_category` VALUES (1011004, '感受态', 1);
INSERT INTO `nideshop_attribute_category` VALUES (1015000, '蛋白', 1);
INSERT INTO `nideshop_attribute_category` VALUES (1017000, '转染试剂', 1);
INSERT INTO `nideshop_attribute_category` VALUES (1036000, '即用试剂', 1);
INSERT INTO `nideshop_attribute_category` VALUES (1036001, '电泳', 1);
COMMIT;

-- ----------------------------
-- Table structure for nideshop_brand
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_brand`;
CREATE TABLE `nideshop_brand` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `list_pic_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `simple_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pic_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `floor_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `app_list_pic_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `new_pic_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `new_sort_order` tinyint(2) unsigned NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`),
  KEY `is_show` (`is_show`)
) ENGINE=InnoDB AUTO_INCREMENT=1046001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='品牌信息';

-- ----------------------------
-- Records of nideshop_brand
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_brand` VALUES (1001000, 'MUJI制造商', 'http://yanxuan.nosdn.127.net/1541445967645114dd75f6b0edc4762d.png', '严选精选了MUJI制造商和生产原料，\n用几乎零利润的价格，剔除品牌溢价，\n让用户享受原品牌的品质生活。', 'http://yanxuan.nosdn.127.net/4ea3f1e60dd77c45c218e503d721a1ed.jpg', 2, 1, 12.90, 'http://yanxuan.nosdn.127.net/1541445967645114dd75f6b0edc4762d.png', 1, 'http://yanxuan.nosdn.127.net/4ea3f1e60dd77c45c218e503d721a1ed.jpg', 2);
INSERT INTO `nideshop_brand` VALUES (1001002, '内野制造商', 'http://yanxuan.nosdn.127.net/8ca3ce091504f8aa1fba3fdbb7a6e351.png', '严选从世界各地挑选毛巾，最终选择了为日本内野代工的工厂，追求毛巾的柔软度与功能性。品质比肩商场几百元的毛巾。', 'http://yanxuan.nosdn.127.net/e50654982984206b54e9226e5ab7f90c.jpg', 10, 1, 29.00, 'http://yanxuan.nosdn.127.net/8ca3ce091504f8aa1fba3fdbb7a6e351.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1001003, 'Adidas制造商', 'http://yanxuan.nosdn.127.net/335334d0deaff6dc3376334822ab3a2f.png', '严选找到为Adidas等品牌制造商，\n选取优质原材料，与厂方一起设计，\n为你提供好的理想的运动装备。', 'http://yanxuan.nosdn.127.net/6f954ea8cee30e161dda048ffbfd950f.png', 30, 1, 49.00, 'http://yanxuan.nosdn.127.net/335334d0deaff6dc3376334822ab3a2f.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1001007, '优衣库制造商', 'http://yanxuan.nosdn.127.net/0d72832e37e7e3ea391b519abbbc95a3.png', '严选找到日本知名服装UNIQLO的制造商，\n选取优质长绒棉和精梳工艺，\n与厂方一起设计，为你提供理想的棉袜。', 'http://yanxuan.nosdn.127.net/f3d196c03f8aac5625faba00d670ee03.jpg', 12, 1, 29.00, 'http://yanxuan.nosdn.127.net/0d72832e37e7e3ea391b519abbbc95a3.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1001008, '膳魔师制造商', 'http://yanxuan.nosdn.127.net/5fd51e29b9459dae7df8040c8219f241.png', '严选深入保温行业内部，\n找到德国膳魔师制造商的代工厂。\n同样的品质，却有更优的价格。', 'http://yanxuan.nosdn.127.net/c4ab88f475e375c5748fa13d8bf2858d.png', 40, 1, 45.00, 'http://yanxuan.nosdn.127.net/5fd51e29b9459dae7df8040c8219f241.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1001010, '星巴克制造商', 'http://yanxuan.nosdn.127.net/5668bc50f2f2e551891044525710dc84.png', '严选寻访全国保温杯制造企业，\n最终找到高端咖啡品牌星巴克的制造商，\n专注保温杯生产20年，品质与颜值兼备。', 'http://yanxuan.nosdn.127.net/2433b04ea9d7adda1d2e834786872237.jpg', 34, 1, 39.00, 'http://yanxuan.nosdn.127.net/5668bc50f2f2e551891044525710dc84.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1001012, 'Wedgwood制造商', 'http://yanxuan.nosdn.127.net/68940e8e23f96dbeb3548d943d83d5e4.png', '严选寻访英国皇室御用陶瓷Wedgwood制造商，\n制模到成品，历经25道工序、7次检验、3次烧制，\n你看不见的地方，我们也在坚持。', 'http://yanxuan.nosdn.127.net/6d6124123311f85903a8bc864d37464c.jpg', 21, 1, 39.00, 'http://yanxuan.nosdn.127.net/68940e8e23f96dbeb3548d943d83d5e4.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1001013, 'Royal Doulton制造商', 'http://yanxuan.nosdn.127.net/0de643a02043fd9680b11e21c452adaa.png', '严选深入英国最大骨瓷品牌Royal Doulton制造商， \n顶级英国瓷器的代名词，广受世界皇室喜爱。\n每件瓷器，都有自己的故事。', 'http://yanxuan.nosdn.127.net/0e8311d2246e5643c622743d9684f235.jpg', 47, 1, 24.90, 'http://yanxuan.nosdn.127.net/0de643a02043fd9680b11e21c452adaa.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1001015, '日本KEYUCA制造商', 'http://yanxuan.nosdn.127.net/9b85b45f23da558be101dbcc273b1d6d.png', 'KEYUCA是日本餐具及料理用具品牌，\n遵循极简原木风，高端餐具体验。\n严选的餐具正是来自这一品牌制造商。', 'http://yanxuan.nosdn.127.net/d91db0c68c50cd109c16f0ad1427ed0b.jpg', 49, 1, 14.90, 'http://yanxuan.nosdn.127.net/9b85b45f23da558be101dbcc273b1d6d.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1001016, '爱慕制造商', 'http://yanxuan.nosdn.127.net/5104f84110eac111968c63c18ebd62c0.png', '150家样品比对筛选，20家工厂深入走访，\n严选最终选定高端内衣爱慕制造商，\n20年品质保证，为你打造天然舒适的衣物。', 'http://yanxuan.nosdn.127.net/833104a2ac047faccd90cc6b98ccf4be.jpg', 9, 1, 35.00, 'http://yanxuan.nosdn.127.net/5104f84110eac111968c63c18ebd62c0.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1001020, 'Ralph Lauren制造商', 'http://yanxuan.nosdn.127.net/9df78eb751eae2546bd3ee7e61c9b854.png', '我们与Ralph Lauren Home的制造商成功接洽，掌握先进的生产设备，传承品牌工艺和工序。追求生活品质的你，值得拥有。', 'http://yanxuan.nosdn.127.net/089e4066f0c2bc6b062d17c6292735dc.png', 20, 1, 29.00, 'http://yanxuan.nosdn.127.net/9df78eb751eae2546bd3ee7e61c9b854.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1001037, '新秀丽制造商', 'http://yanxuan.nosdn.127.net/80dce660938931956ee9a3a2b111bd37.jpg', '严选为制作品质与颜值兼具的箱包，\n选定新秀丽、CK、Ricardo等品牌合作的制造商，\n拥有国内先进流水线20余条，实力保障品质。', 'http://yanxuan.nosdn.127.net/af5719e20bdbd214a9ce7d961e9031c5.png', 5, 1, 59.00, 'http://yanxuan.nosdn.127.net/80dce660938931956ee9a3a2b111bd37.jpg', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1001038, 'Coach制造商', 'http://yanxuan.nosdn.127.net/1b1cc16135fd8467d40983f75f644127.png', '严选为制作高品质高颜值皮具配件，\n由Coach、MK等品牌制造商生产，\n由严选360度全程监制，给你带来优质皮具。', 'http://yanxuan.nosdn.127.net/c933a662bb79b2a47280363e35ab994b.png', 3, 1, 49.00, 'http://yanxuan.nosdn.127.net/1b1cc16135fd8467d40983f75f644127.png', 1, 'http://yanxuan.nosdn.127.net/b5cd73d3b310bad02539412f064d4ea1.jpg', 10);
INSERT INTO `nideshop_brand` VALUES (1001039, 'MK制造商', 'http://yanxuan.nosdn.127.net/fc9cd1309374f7707855de80522fb310.jpg', '严选为制造高品质的皮具，\n选择Michael Kors品牌合作的制造工厂，\n18年专业皮具生产经验，手工至美，品质保证。', 'http://yanxuan.nosdn.127.net/c302c82dafcb53ba233aa1e277063a1c.png', 17, 1, 79.00, 'http://yanxuan.nosdn.127.net/fc9cd1309374f7707855de80522fb310.jpg', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1001045, '罗莱制造商', 'http://yanxuan.nosdn.127.net/14122a41a4985d23e1a172302ee818e9.png', '严选团队为打造吸湿透气柔软的蚕丝被，\n从蚕茧原材到温感性能，多次甄选测试\n选择罗莱制造商工厂，手工处理，优质舒适。', 'http://yanxuan.nosdn.127.net/a88d8eae6d492492da07eca7616dce42.jpg', 45, 1, 699.00, 'http://yanxuan.nosdn.127.net/14122a41a4985d23e1a172302ee818e9.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1003000, 'Carters制造商', 'http://yanxuan.nosdn.127.net/efe9131599ced0297213e6ec67eb2174.png', '来自Carters大牌代工厂生产，\n严选纯天然材料，无荧光不添加，\nITS安心标志权威检测，安全护航。', 'http://yanxuan.nosdn.127.net/a3fd78f8cf429a34e1e2ea761466d428.jpg', 41, 1, 19.90, 'http://yanxuan.nosdn.127.net/efe9131599ced0297213e6ec67eb2174.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1005001, 'Goody制造商', 'http://yanxuan.nosdn.127.net/7c918f37de108f3687d69b39daab34eb.png', '严选深入美国百年发饰品牌Goody制造商，\n确保每把梳子做工精湛，养护头皮。\n戴安娜王妃的最爱，你也能拥有。', 'http://yanxuan.nosdn.127.net/431cd1e6bfca9964f96f1964a8b08ebb.jpg', 48, 1, 39.00, 'http://yanxuan.nosdn.127.net/7c918f37de108f3687d69b39daab34eb.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1006000, '范思哲制造商', 'http://yanxuan.nosdn.127.net/c80ae035387495a61a4515906205efff.png', '严选找寻意大利奢侈品牌范思哲Versace的制造商，\n致力于为用户带来精致、优雅、时尚的皮包，\n传承独特美感，体验品质生活。', 'http://yanxuan.nosdn.127.net/4e5e9e8cf9ce08f256494321ba4d3c2a.jpg', 18, 1, 99.00, 'http://yanxuan.nosdn.127.net/c80ae035387495a61a4515906205efff.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1008000, 'WPC制造商', 'http://yanxuan.nosdn.127.net/c4e97cc87186ce17f9316f3ba39e220c.png', '严选寻找日本雨伞品牌W.P.C制造商，\n采用严谨工艺以及环保材料，\n沉淀15年行业经验，打造精致雨具。', 'http://yanxuan.nosdn.127.net/83889aa01e7cf8e0ff605c317a01e55d.jpg', 22, 1, 59.00, 'http://yanxuan.nosdn.127.net/c4e97cc87186ce17f9316f3ba39e220c.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1010001, '竹宝堂制造商', 'http://yanxuan.nosdn.127.net/61b0b7ae4f0163422009defbceaa41ad.jpg', '严选走访河北、安徽等制刷基地，\n选定竹宝堂、丝芙兰等品牌的制造商，\n严格把关生产与质检，与您一同追求美的生活。', 'http://yanxuan.nosdn.127.net/279cf74ac294e67f7f99cf2d47a1365c.jpg', 39, 1, 29.00, 'http://yanxuan.nosdn.127.net/61b0b7ae4f0163422009defbceaa41ad.jpg', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1010002, '资生堂制造商', 'http://yanxuan.nosdn.127.net/5449236b80d1e678dedee2f626cd67c4.png', '发现美，成为美，是女性一生的追求。\n严选找寻资生堂代工厂，打造天然美妆产品，\n致力于带来更多美的体验和享受。', 'http://yanxuan.nosdn.127.net/af464d5281dfbd286dab569a03264a33.jpg', 19, 1, 29.00, 'http://yanxuan.nosdn.127.net/5449236b80d1e678dedee2f626cd67c4.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1015000, 'NITORI制造商', 'http://yanxuan.nosdn.127.net/6f3d310601b18610553c675e0e14d107.png', '宠物是人类最温情的陪伴，\n严选找寻日本最大家居品牌NITORI制造商，\n每一个脚印，都是为了更好地关怀你的TA', 'http://yanxuan.nosdn.127.net/0657854429c6717e8ace7dcff6a2468b.jpg', 43, 1, 69.00, 'http://yanxuan.nosdn.127.net/6f3d310601b18610553c675e0e14d107.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1016002, 'HUGO BOSS制造商', 'http://yanxuan.nosdn.127.net/70ada9877b2efa82227437af3231fe50.png', '严选深入德国知名奢侈品HUGO BOSS的制造商，\n开发睡衣、睡袍、休闲裤等轻奢品质家居服，\n希望你在家的每一天都优雅精致。', 'http://yanxuan.nosdn.127.net/888289da7fe200949806eefa069af019.jpg', 11, 1, 45.00, 'http://yanxuan.nosdn.127.net/70ada9877b2efa82227437af3231fe50.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1018000, 'Sperry制造商', 'http://yanxuan.nosdn.127.net/2eb12d84037346441088267432da31c4.png', '严选团队对比多家硫化鞋制造商产品质量，\n走访多个制鞋工厂，最终选定Sperry品牌制造商，\n为你提供一双舒适有型的高品质帆布鞋。', 'http://yanxuan.nosdn.127.net/952b9f38a729533a058ee88572a370fa.jpg', 32, 1, 199.00, 'http://yanxuan.nosdn.127.net/2eb12d84037346441088267432da31c4.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1021000, 'Marc Jacobs制造商', 'http://yanxuan.nosdn.127.net/c8dac4eb1a458d778420ba520edab3d0.png', '严选寻访独立设计品牌Marc Jacobs的制造商，\n严格选材，细究纺织与生产的细节，多次打磨，\n初心不忘，为你带来优雅高档的服饰配件。', 'http://yanxuan.nosdn.127.net/ce5762f1fd4bde61b57864e765c605e3.jpg', 24, 1, 69.00, 'http://yanxuan.nosdn.127.net/c8dac4eb1a458d778420ba520edab3d0.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1022000, 'UGG制造商', 'http://yanxuan.nosdn.127.net/4d2a3dea7e0172ae48e8161f04cfa045.jpg', '为寻找优质的皮毛一体雪地靴，\n严选走访多家雪地靴制造商，对比工艺，\n甄选UGG认可的代工厂，只为足下的优雅舒适。', 'http://yanxuan.nosdn.127.net/efbc6a6044dd07697d2f26bf5033c335.jpg', 29, 1, 59.00, 'http://yanxuan.nosdn.127.net/4d2a3dea7e0172ae48e8161f04cfa045.jpg', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1022001, 'Palladium制造商', 'http://yanxuan.nosdn.127.net/3480f2a4026c60eb4921f0aa3facbde8.png', '严选探访多个制鞋大厂，选定Palladium制造商，\n对比工艺选材，找到传承多年的制鞋配方，\n只为制作一款高品质休闲鞋。', 'http://yanxuan.nosdn.127.net/119717ea4459a8fb3185cec4eb80a284.jpg', 31, 1, 249.00, 'http://yanxuan.nosdn.127.net/3480f2a4026c60eb4921f0aa3facbde8.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1023000, 'PetitBateau小帆船制造商', 'http://yanxuan.nosdn.127.net/1a11438598f1bb52b1741e123b523cb5.jpg', '为打造适合宝宝的婴童服装，\n严选团队寻找PetitBateau小帆船的品牌制造商，\n无荧光剂，国家A类标准，让宝宝穿的放心。', 'http://yanxuan.nosdn.127.net/faad5a05a119b789956e4ce2e26e94ef.jpg', 25, 1, 36.00, 'http://yanxuan.nosdn.127.net/1a11438598f1bb52b1741e123b523cb5.jpg', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1024000, 'WMF制造商', 'http://yanxuan.nosdn.127.net/2018e9ac91ec37d9aaf437a1fd5d7070.png', '严选找寻德国百年高端厨具WMF的制造商，\n选择拥有14年经验的不锈钢生产工厂，\n为你甄选事半功倍的优质厨具。', 'http://yanxuan.nosdn.127.net/2a2ae0d49043e525db8d0d8d84460ac8.png', 8, 1, 9.90, 'http://yanxuan.nosdn.127.net/2018e9ac91ec37d9aaf437a1fd5d7070.png', 1, 'http://yanxuan.nosdn.127.net/abcfa79205679db51198adc19c184dd1.jpg', 3);
INSERT INTO `nideshop_brand` VALUES (1024001, 'OBH制造商', 'http://yanxuan.nosdn.127.net/bf3499ac17a11ffb9bb7caa47ebef2dd.png', '严选寻找OBH品牌的制造商，打造精致厨具，\n韩国独资工厂制造，严格质检，品质雕琢\n力求为消费者带来全新的烹饪体验。', 'http://yanxuan.nosdn.127.net/44e14d6ec4db2e6c66b0fde521603f85.jpg', 42, 1, 39.00, 'http://yanxuan.nosdn.127.net/bf3499ac17a11ffb9bb7caa47ebef2dd.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1024003, 'Stoneline制造商', 'http://yanxuan.nosdn.127.net/3a44ae7db86f3f9b6e542720c54cc349.png', '严选找寻德国经典品牌Stoneline的制造商，\n追踪工艺，考量细节，亲自试用，\n为你甄选出最合心意的锅具和陶瓷刀，下厨如神。', 'http://yanxuan.nosdn.127.net/6dc7eecce99cb8f5ab6d86c76415cbec.png', 28, 1, 9.90, 'http://yanxuan.nosdn.127.net/3a44ae7db86f3f9b6e542720c54cc349.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1024006, 'KitchenAid制造商', 'http://yanxuan.nosdn.127.net/e11385bf29d1b3949435b80fcd000948.png', '严选寻访KitchenAid品牌的制造商，\n采用德国LFGB认证食品级专用不锈钢，\n欧式简约设计，可靠安心，尽享下厨乐趣。', 'http://yanxuan.nosdn.127.net/2f79a254cd4020966ea1272e2d27b510.jpg', 46, 1, 98.00, 'http://yanxuan.nosdn.127.net/e11385bf29d1b3949435b80fcd000948.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1025000, 'Timberland制造商', 'http://yanxuan.nosdn.127.net/6dcadb0791b33aa9fd00380b44fa6645.png', '为制作优质时尚的工装鞋靴，\n严选团队深入探访国内外制靴大厂，选择Timberland制造商，\n工厂拥有15年制鞋历史，专业品质有保证。', 'http://yanxuan.nosdn.127.net/5b35f510110d0c031eb6bf63854597b8.png', 37, 1, 359.00, 'http://yanxuan.nosdn.127.net/6dcadb0791b33aa9fd00380b44fa6645.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1025001, 'Kenneth Cole制造商', 'http://yanxuan.nosdn.127.net/236322546c6860e1662ab147d6b0ba2f.jpg', '为出品优质格调的商务鞋靴，\n严选团队选择Kenneth Cole品牌合作的制造商，\n一切努力，只为打造高品质鞋靴。', 'http://yanxuan.nosdn.127.net/63a1df6f5d26faadffa33bac2d51ddc4.jpg', 7, 1, 349.00, 'http://yanxuan.nosdn.127.net/236322546c6860e1662ab147d6b0ba2f.jpg', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1026000, 'CK制造商', 'http://yanxuan.nosdn.127.net/658f09b7ec522d31742b47b914d64338.png', '严选寻访Calvin Klein品牌的制造商，\n深入世界领带第一生产地，设计与品质并重，\n致力于给消费者带来优质典雅的服饰用品。', 'http://yanxuan.nosdn.127.net/fb139c9f11a10deb41beeb42aaad488e.png', 1, 1, 39.00, 'http://yanxuan.nosdn.127.net/658f09b7ec522d31742b47b914d64338.png', 1, 'http://yanxuan.nosdn.127.net/76638fb8e6990aadf837ce761c3b7399.jpg', 1);
INSERT INTO `nideshop_brand` VALUES (1026001, 'Under Armour制造商', 'http://yanxuan.nosdn.127.net/4e93ea29b1d06fabfd24ba68a9b20a34.jpg', '严选为甄选优质好袜，走访东北、新疆等产袜基地，\n最终选定Under Armour品牌的合作制造商，\n从原料、工艺、品质多维度筛选监制，保证好品质。', 'http://yanxuan.nosdn.127.net/b00570a5edc8da2f4a629fbdddb0b03c.jpg', 35, 1, 39.00, 'http://yanxuan.nosdn.127.net/4e93ea29b1d06fabfd24ba68a9b20a34.jpg', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1028000, 'Gucci制造商', 'http://yanxuan.nosdn.127.net/278869cad9bf5411ffc18982686b88fb.jpg', '严选为设计一款优雅时尚的品质礼帽，\n找寻拥有10来年经验的大型毛毡帽厂商合作，\n坚持打造好设计、好工艺、好材质的潮流礼帽。', 'http://yanxuan.nosdn.127.net/7749ff4939c0a62689c5d1de7fba2860.png', 23, 1, 59.00, 'http://yanxuan.nosdn.127.net/278869cad9bf5411ffc18982686b88fb.jpg', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1028003, 'Burberry制造商', 'http://yanxuan.nosdn.127.net/07af01e281c7e0b912d162d611e22c32.jpg', '为打造时尚舒适的童装系列，\n严选选择Burberry制造商，优化版型配色\n英伦风情融入经典格纹，百搭优雅气质款。', 'http://yanxuan.nosdn.127.net/1a874a6b8cf8c17ef7420b2449179eae.jpg', 4, 1, 99.00, 'http://yanxuan.nosdn.127.net/07af01e281c7e0b912d162d611e22c32.jpg', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1033003, 'Armani制造商', 'http://yanxuan.nosdn.127.net/981e06f0f46f5f1f041d7de3dd3202e6.jpg', '严选团队携手国际标准化专业生产厂家，\n厂家长期为Armani、Alexander wang等知名品牌代工，\n专业进口设备，精密质量把控，精于品质居家体验。', 'http://yanxuan.nosdn.127.net/cc2513963d45c8a0787bc9650e95b3bc.jpg', 26, 1, 199.00, 'http://yanxuan.nosdn.127.net/981e06f0f46f5f1f041d7de3dd3202e6.jpg', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1033004, '爱马仕集团制造商', 'http://yanxuan.nosdn.127.net/d98470dd728fb5a91f7aceade07572b5.png', '严选采用欧洲一线品牌爱马仕的御用香料供应商，\n经过反复配比改良、试香调香、选品定样，\n为你带来独特馥郁的散香体验。', 'http://yanxuan.nosdn.127.net/dd4b9a6cb73e3e1c61c79cbd4bb0bca0.jpg', 33, 1, 19.00, 'http://yanxuan.nosdn.127.net/d98470dd728fb5a91f7aceade07572b5.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1034001, 'Alexander McQueen制造商', 'http://yanxuan.nosdn.127.net/db7ee9667d84cbce573688297586699c.jpg', '为制造精致实用的高品质包包，\n严选团队选择Alexander McQueen制造商，\n严格筛选，带来轻奢优雅体验。', 'http://yanxuan.nosdn.127.net/48d8b0a9cd41cd7028b055d6d2b4b57e.jpg', 16, 1, 69.00, 'http://yanxuan.nosdn.127.net/db7ee9667d84cbce573688297586699c.jpg', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1037000, '厚木ATSUGI制造商', 'http://yanxuan.nosdn.127.net/7df55c408dbac6085ed6c30836c828ac.jpg', '严选考究袜子品质，层层把关原料生产，\n携手12年行业生产资质的厚木品牌制造商，\n带来轻盈优雅，舒适显瘦的袜子系列。', 'http://yanxuan.nosdn.127.net/51f1a2b3e663989e8880066af929ce50.jpg', 27, 1, 29.00, 'http://yanxuan.nosdn.127.net/7df55c408dbac6085ed6c30836c828ac.jpg', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1038000, 'Birkenstock集团制造商', 'http://yanxuan.nosdn.127.net/05a2ecffb60b77e4c165bd8492e5c22a.jpg', '为打造一双舒适的软木拖鞋，\n严选团队寻找BIRKENSTOCK集团旗下产品制造商，\n360度全程监制，舒适随脚，百搭文艺。', 'http://yanxuan.nosdn.127.net/0996a492f86f01cb83cd3737ad325e23.jpg', 14, 1, 59.90, 'http://yanxuan.nosdn.127.net/05a2ecffb60b77e4c165bd8492e5c22a.jpg', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1038001, 'Nine West制造商', 'http://yanxuan.nosdn.127.net/ad4df7848ce450f00483c2d5e9f2bfa7.png', '为打造一双优雅舒适的高跟鞋，\n严选选择美国Nine West玖熙品牌的制造商，\n让美丽绽放在足尖。', 'http://yanxuan.nosdn.127.net/38d494067453afa08d2b26d8227558fc.jpg', 13, 1, 219.00, 'http://yanxuan.nosdn.127.net/ad4df7848ce450f00483c2d5e9f2bfa7.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1039000, 'TEFAL制造商', 'http://yanxuan.nosdn.127.net/2b7a07e25a3f3be886a7fb90ba975bb7.png', '严选对标国际品质，致力于高品质生活好物，\n执着寻求优质厨房电器供应商，\n携手WMF、Tefal制造商，打造高品质厨具。', 'http://yanxuan.nosdn.127.net/713daad73395a4f3d06f5dd07ed927d4.jpg', 44, 1, 259.00, 'http://yanxuan.nosdn.127.net/2b7a07e25a3f3be886a7fb90ba975bb7.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1039001, '京瓷制造商', 'http://yanxuan.nosdn.127.net/3dda530605e3ab1c82d5ed30f2489473.png', '严选想为你的厨房生活，带来新鲜感和活力，\n深入全国各地，选择日本京瓷等品牌代工厂，\n打造钻石系列厨具，颜值与品质兼具。', 'http://yanxuan.nosdn.127.net/de8c967f47c47e48aaaf461a5e24bc4c.jpg', 38, 1, 89.00, 'http://yanxuan.nosdn.127.net/3dda530605e3ab1c82d5ed30f2489473.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1040000, 'Tescom制造商', 'http://yanxuan.nosdn.127.net/c17cd65971189fdc28f5bd6b78f657a7.png', '严选为打造时尚健康的个护电器，\n选择Tescom品牌制造商，全球最大个护电器工厂之一，\n拥有20年经验，出口180多个国家，品质有保障。', 'http://yanxuan.nosdn.127.net/21ff3c560b263cf45dd2b8c92091768b.jpg', 15, 1, 59.00, 'http://yanxuan.nosdn.127.net/c17cd65971189fdc28f5bd6b78f657a7.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1041000, 'BCBG制造商', 'http://yanxuan.nosdn.127.net/b9072023afd3621714fd5c49f140fca8.png', '严选从产品源头开始，每道工序质量把关，\n选择美国知名品牌BCBG的制造商合作，\n严谨匠心，致力于优质柔滑的睡衣穿搭产品。', 'http://yanxuan.nosdn.127.net/3f2a66543f4c6e2abd5de2d280ff7960.png', 36, 1, 99.00, 'http://yanxuan.nosdn.127.net/b9072023afd3621714fd5c49f140fca8.png', 0, '', 10);
INSERT INTO `nideshop_brand` VALUES (1046000, 'Police制造商', 'http://yanxuan.nosdn.127.net/66e2cb956a9dd1efc7732bea278e901e.png', '严选团队选定Police品牌制造商合作，\n有11年眼镜生产资质，兼顾品质与品味，\n为你带来专业时尚的墨镜。', 'http://yanxuan.nosdn.127.net/d48930cbb91f0e3adafe5341ce270a4e.png', 6, 1, 109.00, 'http://yanxuan.nosdn.127.net/66e2cb956a9dd1efc7732bea278e901e.png', 0, '', 10);
COMMIT;

-- ----------------------------
-- Table structure for nideshop_cart
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_cart`;
CREATE TABLE `nideshop_cart` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `retail_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_specifition_name_value` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '规格属性组成的字符串，用来显示用',
  `goods_specifition_ids` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'product表对应的goods_specifition_ids',
  `checked` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `list_pic_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of nideshop_cart
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_cart` VALUES (99, 0, '1', 1116011, '1116011', 167, '蔓越莓曲奇 200克', 36.00, 36.00, 8, '', '', 1, 'http://yanxuan.nosdn.127.net/767b370d07f3973500db54900bcbd2a7.png');
INSERT INTO `nideshop_cart` VALUES (100, 0, '1', 1181046, '', 258, 'Ni-IDA MagAgarose Beads琼脂糖磁珠', 580.00, 580.00, 2, '', '', 1, 'https://www.wangcong.fun:8002/static/upload/brand/3c75da0b-ba36-475f-9bd4-c96b35be530d.jpg');
COMMIT;

-- ----------------------------
-- Table structure for nideshop_category
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_category`;
CREATE TABLE `nideshop_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `front_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '50',
  `show_index` tinyint(1) NOT NULL DEFAULT '0',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `banner_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `icon_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wap_banner_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `front_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1036003 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of nideshop_category
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_category` VALUES (1005000, '核酸纯化', '', '回家，放松身心', 0, 1, 1, 1, 'http://yanxuan.nosdn.127.net/92357337378cce650797444bc107b0f7.jpg', 'http://yanxuan.nosdn.127.net/a45c2c262a476fea0b9fc684fed91ef5.png', '//nos.netease.com/yanxuan/f0d0e1a542e2095861b42bf789d948ce.jpg', 'https://www.wangcong.fun:8002/static/upload/category/7df03bf1-eadf-4626-b3a1-d89cc6ded433.jpg', 'L1', 0, '方便快捷，质量稳定，功能强大');
INSERT INTO `nideshop_category` VALUES (1005001, 'PCR', '', '厨房', 0, 2, 2, 1, 'http://yanxuan.nosdn.127.net/f4ff8b3d5b0767d4e578575c1fd6b921.jpg', 'http://yanxuan.nosdn.127.net/ad8b00d084cb7d0958998edb5fee9c0a.png', '//nos.netease.com/yanxuan/88855173a0cfcfd889ee6394a3259c4f.jpg', 'https://www.wangcong.fun:8002/static/upload/category/8bebd594-8633-4508-8255-50496237f904.jpg', 'L1', 0, 'PCR相关产品');
INSERT INTO `nideshop_category` VALUES (1005002, '转染试剂', '', '好吃，高颜值美食', 0, 8, 8, 1, 'http://yanxuan.nosdn.127.net/dd6cc8a7e996936768db5634f12447ed.jpg', 'http://yanxuan.nosdn.127.net/c9280327a3fd2374c000f6bf52dff6eb.png', '//nos.netease.com/yanxuan/9a29ef4f41c305a12e1459f12abd290f.jpg', 'https://www.wangcong.fun:8002/static/upload/category/5ad38271-7d0d-48c6-8036-0e4f75b6086e.jpg', 'L1', 0, '转染试剂');
INSERT INTO `nideshop_category` VALUES (1005008, '荧光定量', '', '皇家道尔顿、日本KEYUCA制造商出品', 1005001, 3, 4, 1, 'http://yanxuan.nosdn.127.net/f109afbb7e7a00c243c1da29991a5aa3.png', '', '', 'http://yanxuan.nosdn.127.net/695ed861a63d8c0fc51a51f42a5a993b.png', 'L2', 0, '荧光定量qPCR及qRT-PCR');
INSERT INTO `nideshop_category` VALUES (1005012, '转染试剂', '', '天时、地利、人和，寻找这个时节这个地点的味道', 1005002, 10, 10, 0, 'http://yanxuan.nosdn.127.net/e050980992725b7932bb3645fe5aec08.png', '', '', 'http://yanxuan.nosdn.127.net/80db363e0687b1a65edc6e75c1b99726.png', 'L2', 0, '天时地利人和，寻找这个时节这个地点的味道');
INSERT INTO `nideshop_category` VALUES (1007000, '普通PCR', '', '10Q品质控制系统', 1005001, 1, 2, 1, 'http://yanxuan.nosdn.127.net/0b244d3575b737c8f0ed7e84c5c4abd2.png', '', '', 'http://yanxuan.nosdn.127.net/ec53828a3814171079178a59fb2593da.png', 'L2', 0, '普通PCR');
INSERT INTO `nideshop_category` VALUES (1008000, 'Marker', '', '配角，亦是主角', 0, 3, 3, 1, 'http://yanxuan.nosdn.127.net/cad5aba2bc52d3b8adfd0232c9814de2.jpg', 'http://yanxuan.nosdn.127.net/11abb11c4cfdee59abfb6d16caca4c6a.png', '//nos.netease.com/yanxuan/935f1ab7dcfeb4bbd4a5da9935161aaf.jpg', 'https://www.wangcong.fun:8002/static/upload/category/6ca8bc93-fdf2-4892-ba92-0eb74baff779.jpg', 'L1', 0, '条带清晰，背景干净');
INSERT INTO `nideshop_category` VALUES (1008001, '大肠杆菌克隆感受态', '', '精选长绒棉，出口日本品质标准', 1013001, 1, 1, 1, 'http://yanxuan.nosdn.127.net/44ad9a739380aa6b7cf956fb2a06e7a7.png', '', '', 'http://yanxuan.nosdn.127.net/c53d2dd5ba6b1cfb55bd42ea0783f051.png', 'L2', 0, '大肠杆菌克隆感受态');
INSERT INTO `nideshop_category` VALUES (1008008, 'RNA提取', '', '选用优质材料，确保好芯', 1005000, 1, 2, 1, 'http://yanxuan.nosdn.127.net/927bc33f7ae2895dd6c11cf91f5e3228.png', '', '', 'https://www.wangcong.fun:8002/static/upload/category/29401b50-85dd-4e8c-825d-9ae64bb759d7.jpg', 'L2', 0, 'RNA提取');
INSERT INTO `nideshop_category` VALUES (1008009, '纯化回收', '', '严格用料，亲肤舒适', 1005000, 4, 3, 1, 'http://yanxuan.nosdn.127.net/243e5bf327a87217ad1f54592f0176ec.png', '', '', 'https://www.wangcong.fun:8002/static/upload/category/dd6dfbad-aa68-454e-aaea-bef6c1277a76.jpg', 'L2', 0, '纯化回收');
INSERT INTO `nideshop_category` VALUES (1008012, '反转录RT-PCR', '', '日日使用的物件，制作精良才能更耐用', 1005001, 2, 3, 1, 'http://yanxuan.nosdn.127.net/22db4ccbf52dc62c723ac83aa587812a.png', '', '', 'http://yanxuan.nosdn.127.net/5b94463017437467a93ae4af17c2ba4f.png', 'L2', 0, '反转录RT-PCR');
INSERT INTO `nideshop_category` VALUES (1010000, '克隆载体', '', '贴身的，要亲肤', 0, 4, 4, 1, 'http://yanxuan.nosdn.127.net/003e1d1289f4f290506ac2aedbd09d35.jpg', 'http://yanxuan.nosdn.127.net/28a685c96f91584e7e4876f1397767db.png', '//nos.netease.com/yanxuan/135113d6a43536b717063413fa24d69a.jpg', 'https://www.wangcong.fun:8002/static/upload/category/98e8cb30-bf2e-4ab1-b00b-a3dd78333131.jpg', 'L1', 0, '方便快捷，质量稳定');
INSERT INTO `nideshop_category` VALUES (1010001, 'T4克隆', '', '自然染料，亲肤舒适', 1010000, 2, 2, 1, 'http://yanxuan.nosdn.127.net/20279e1753e4eedc6e347857acda9681.png', '', '', 'http://yanxuan.nosdn.127.net/02fede55aba1bc6c9d7f7c01682f9e2d.png', 'L2', 0, 'T4克隆');
INSERT INTO `nideshop_category` VALUES (1010002, 'TOPO克隆', '', '透气洁净，环保染制', 1010000, 1, 1, 1, 'http://yanxuan.nosdn.127.net/364269344ed69adafe1b70ab7998fc50.png', '', '', 'http://yanxuan.nosdn.127.net/0a7fe0a08c195ca2cf55d12cd3c30f09.png', 'L2', 0, 'TOPO克隆');
INSERT INTO `nideshop_category` VALUES (1010003, '磁珠法', '', '手工编织，时尚环保', 1005000, 5, 4, 1, 'http://yanxuan.nosdn.127.net/83d4c87f28c993af1aa8d3e4d30a2fa2.png', '', '', 'https://www.wangcong.fun:8002/static/upload/category/ed31c999-4da9-4400-9347-70401128711e.jpg', 'L2', 0, '磁珠法');
INSERT INTO `nideshop_category` VALUES (1011000, '蛋白', '', '爱，从心开始', 0, 6, 6, 1, 'http://yanxuan.nosdn.127.net/7dc78383e44df530f543659a977740de.jpg', 'http://yanxuan.nosdn.127.net/1ba9967b8de1ac50fad21774a4494f5d.png', '//nos.netease.com/yanxuan/8ab3c73fe90951a942e8b06d848f8743.jpg', 'https://www.wangcong.fun:8002/static/upload/category/6c8a4683-334e-460f-ac50-53cfd83092a0.jpg', 'L1', 0, '蛋白质相关');
INSERT INTO `nideshop_category` VALUES (1011003, '质粒提取', '', '助你拥有舒眠好梦', 1005000, 3, 3, 1, 'http://yanxuan.nosdn.127.net/316afeb3948b295dfe073e4c51f77a42.png', '', '', 'https://www.wangcong.fun:8002/static/upload/category/abced28e-333a-4de7-b493-ad31cdb9219c.jpg', 'L2', 0, '质粒提取');
INSERT INTO `nideshop_category` VALUES (1012000, '电泳', '', '解忧，每个烦恼', 0, 7, 7, 1, 'http://yanxuan.nosdn.127.net/d233a1a9060a22e8eb0e2b326252eece.jpg', 'http://yanxuan.nosdn.127.net/c2a3d6349e72c35931fe3b5bcd0966be.png', '//nos.netease.com/yanxuan/a0c91ae573079830743dec6ee08f5841.jpg', 'https://www.wangcong.fun:8002/static/upload/category/4a21de28-d57d-466b-a566-e437a9cc9ccc.jpg', 'L1', 0, '电泳');
INSERT INTO `nideshop_category` VALUES (1012001, 'Marker', '', '箱子里装着你的生活', 1008000, 1, 1, 1, 'http://yanxuan.nosdn.127.net/3050a2b3052d766c4b460d4b766353a3.png', '', '', 'http://yanxuan.nosdn.127.net/0645dcda6172118f9295630c2a6f234f.png', 'L2', 0, 'Marker');
INSERT INTO `nideshop_category` VALUES (1013001, '感受态', '', '亲肤之物，严选天然', 0, 5, 5, 1, 'http://yanxuan.nosdn.127.net/ef8c49f8c92d1f86eb76dec0b5bc7cef.jpg', 'http://yanxuan.nosdn.127.net/9fe068776b6b1fca13053d68e9c0a83f.png', '//nos.netease.com/yanxuan/14bb4a29498a0f93a1ea001f26fea1dd.jpg', 'https://www.wangcong.fun:8002/static/upload/category/9d7507f0-2729-4686-ab8d-3d29a3f40f52.jpg', 'L1', 0, '感受态细胞');
INSERT INTO `nideshop_category` VALUES (1013002, '大肠杆菌电转感受态', '', '竹宝堂、资生堂等制造商出品', 1013001, 3, 3, 1, 'http://yanxuan.nosdn.127.net/aa49c088f74a1c318f1765cc2703495a.png', '', '', 'http://yanxuan.nosdn.127.net/d6a7b9a2eb6af92d709429798a4ca3ea.png', 'L2', 0, '大肠杆菌电转感受态');
INSERT INTO `nideshop_category` VALUES (1013003, '农杆菌电转感受态', '', '护发超有效小秘诀', 1013001, 5, 5, 1, 'http://yanxuan.nosdn.127.net/672ddbed88d9762d2be789080880b16a.png', '', '', 'http://yanxuan.nosdn.127.net/398375d0e39574c6e87273d328316186.png', 'L2', 0, '农杆菌电转感受态');
INSERT INTO `nideshop_category` VALUES (1013004, '大肠杆菌表达感受态', '', '提炼纯净，清雅不腻', 1013001, 2, 2, 1, 'http://yanxuan.nosdn.127.net/d43e7af0a6a9385d88be2ca1df679158.png', '', '', 'http://yanxuan.nosdn.127.net/fc7764ff8e12d18f6c5881a32318ed16.png', 'L2', 0, '大肠杆菌表达感受态');
INSERT INTO `nideshop_category` VALUES (1015001, '无缝克隆', '', '立体裁剪，专为国人打造', 1010000, 3, 3, 1, 'http://yanxuan.nosdn.127.net/24a7a33cfeac0bb87a737480db79e053.png', '', '', 'http://yanxuan.nosdn.127.net/505c9a5a794b79e85fef4654722b3447.png', 'L2', 0, '无缝克隆');
INSERT INTO `nideshop_category` VALUES (1019000, '即用试剂', '', '爱好，点缀生活', 0, 9, 9, 1, 'http://yanxuan.nosdn.127.net/99107fbd76eb66cd537213e478189ae1.png', 'http://yanxuan.nosdn.127.net/7093cfecb9dde1dd3eaf459623df4071.png', '//nos.netease.com/yanxuan/72de912b6350b33ecf88a27498840e62.jpg', 'https://www.wangcong.fun:8002/static/upload/category/59c1f2cd-17a4-4925-bafe-2284676e6e43.jpg', 'L1', 0, '即用型试剂');
INSERT INTO `nideshop_category` VALUES (1020001, '农杆菌感受态', '', '天然成分，无化学添加', 1013001, 4, 4, 1, 'http://yanxuan.nosdn.127.net/f73df75f334126cf1f3823696ea0663c.png', '', '', 'http://yanxuan.nosdn.127.net/babf6573f8acd53f21205a7577ec03e1.png', 'L2', 0, '农杆菌感受态');
INSERT INTO `nideshop_category` VALUES (1020003, '蛋白', '', '100%纯棉，无荧光剂，严格质检', 1011000, 1, 1, 1, 'http://yanxuan.nosdn.127.net/4e50f3c4e4d0a64cd0ad14cfc0b6bd17.png', '', '', 'http://yanxuan.nosdn.127.net/004f5f96df4aeb0645abbd70c0637239.png', 'L2', 0, '蛋白质相关');
INSERT INTO `nideshop_category` VALUES (1032004, '即用型试剂', '', '星际争霸II周边', 1019000, 5, 5, 1, 'http://yanxuan.nosdn.127.net/433ff879a3686625535ca0304be22ab2.png', '', '', 'https://www.wangcong.fun:8002/static/upload/category/5fad813f-71cb-43fd-893a-e43d2512568b.jpg', 'L2', 0, '记录科普卢星区的战斗时光');
INSERT INTO `nideshop_category` VALUES (1036000, 'DNA提取', '', '夏凉床品，舒适一夏', 1005000, 2, 1, 1, 'http://yanxuan.nosdn.127.net/13ff4decdf38fe1a5bde34f0e0cc635a.png', '', '', 'https://www.wangcong.fun:8002/static/upload/category/ce6ee53f-da36-4ff1-8bf4-c41d645d8115.jpg', 'L2', 0, 'DNA提取');
INSERT INTO `nideshop_category` VALUES (1036002, '电泳相关', '', '给你的爱车添装备', 1012000, 10, 10, 1, 'http://yanxuan.nosdn.127.net/382cda1ef9cca77d99bcef05070d7db0.png', '', '', 'https://www.wangcong.fun:8002/static/upload/category/3ff366c0-9855-4130-8081-af031bef64e7.jpg', 'L2', 0, '电泳相关');
COMMIT;

-- ----------------------------
-- Table structure for nideshop_channel
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_channel`;
CREATE TABLE `nideshop_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `icon_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sort_order` int(4) unsigned NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='分类信息\n';

-- ----------------------------
-- Records of nideshop_channel
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_channel` VALUES (1, '核酸纯化', '/pages/category/category?id=1005000', 'https://www.wangcong.fun:8002/static/upload/channel/91efd9ab-eec9-46ae-93ce-2ca5ae7af6c2.jpg', 1);
INSERT INTO `nideshop_channel` VALUES (2, 'PCR', '/pages/category/category?id=1005001', 'https://www.wangcong.fun:8002/static/upload/channel/2ab965ad-1558-4ae4-bc68-8ca235e9f001.jpg', 2);
INSERT INTO `nideshop_channel` VALUES (4, 'Marker', '/pages/category/category?id=1008000', 'https://www.wangcong.fun:8002/static/upload/channel/6e647865-fe62-4167-82d6-48226663b3f0.jpg', 4);
INSERT INTO `nideshop_channel` VALUES (5, '克隆载体', '/pages/category/category?id=1010000', 'https://www.wangcong.fun:8002/static/upload/channel/67edd965-b272-4c39-8c26-3205219fdc0e.jpg', 4);
INSERT INTO `nideshop_channel` VALUES (8, '感受态', '/pages/category/category?id=1013001', 'https://www.wangcong.fun:8002/static/upload/channel/4f5e9fa9-bad1-4d89-828e-43f65b7eb85b.jpg', 5);
COMMIT;

-- ----------------------------
-- Table structure for nideshop_collect
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_collect`;
CREATE TABLE `nideshop_collect` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `value_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `is_attention` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是关注',
  `type_id` int(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`value_id`),
  KEY `is_attention` (`is_attention`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of nideshop_collect
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_collect` VALUES (17, 1, 1181000, 1495381237, 0, 0);
INSERT INTO `nideshop_collect` VALUES (18, 1, 1015007, 1495466325, 0, 0);
INSERT INTO `nideshop_collect` VALUES (19, 1, 1152161, 1495970357, 0, 0);
INSERT INTO `nideshop_collect` VALUES (21, 1, 1156006, 1497685421, 0, 0);
INSERT INTO `nideshop_collect` VALUES (31, 11, 1011004, 1500822827, 0, 0);
INSERT INTO `nideshop_collect` VALUES (33, 11, 1015007, 1500823262, 0, 0);
INSERT INTO `nideshop_collect` VALUES (44, 11, 1134030, 1500987695, 0, 0);
INSERT INTO `nideshop_collect` VALUES (47, 11, 1009012, 1500987979, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for nideshop_comment
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_comment`;
CREATE TABLE `nideshop_comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `value_id` int(11) unsigned NOT NULL DEFAULT '0',
  `content` varchar(6550) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '储存为base64编码',
  `add_time` bigint(12) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `new_content` varchar(6550) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `id_value` (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for nideshop_comment_picture
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_comment_picture`;
CREATE TABLE `nideshop_comment_picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) unsigned NOT NULL DEFAULT '0',
  `pic_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of nideshop_comment_picture
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_comment_picture` VALUES (1, 1, 'https://yanxuan.nosdn.127.net/218783173f303ec6d8766810951d0790.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (2, 2, 'https://yanxuan.nosdn.127.net/33978a0d6f56d94c45e4fc594b4b8606.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (3, 3, 'https://yanxuan.nosdn.127.net/d3975d1b6d88e9f9d762cd9a879d1a14.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (4, 4, 'https://yanxuan.nosdn.127.net/7215309e93c48cca08ca6910194eb3b0.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (5, 5, 'http://yanxuan.nosdn.127.net/d85a556893919038b56a95b71c9a1228.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (6, 32, 'http://yanxuan.nosdn.127.net/1637021a44433992f403a4b925401a3b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (7, 32, 'http://yanxuan.nosdn.127.net/5fd615a8f21050ac8f20a542f8e688a1.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (8, 32, 'http://yanxuan.nosdn.127.net/968836b81e80750944ca350808763281.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (9, 33, 'http://yanxuan.nosdn.127.net/1943a9a6a203fa2ff56bc0800ed5cbfd.png', 5);
INSERT INTO `nideshop_comment_picture` VALUES (10, 34, 'https://yanxuan.nosdn.127.net/b8b063c9b0199ed290f4b3ca49bf4b6c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (11, 35, 'https://yanxuan.nosdn.127.net/f0ec4c28b64d4b676ba629c1fb006429.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (12, 36, 'https://yanxuan.nosdn.127.net/4eff94aed684b2d8255e73686f570be8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (13, 37, 'https://yanxuan.nosdn.127.net/2ef5ee9903685928d7d1e1bf2fd5c1de.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (14, 38, 'https://yanxuan.nosdn.127.net/01c3db0f9bfb16e969c4e968fe8a68f4.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (15, 39, 'https://yanxuan.nosdn.127.net/5bf789025ccc72802ce58561e494c3aa.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (16, 40, 'https://yanxuan.nosdn.127.net/20dfd145606fc60d914b2b7833e92c01.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (17, 40, 'https://yanxuan.nosdn.127.net/1dcc038f9e39998a43f2d3fd9315469e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (18, 41, 'https://yanxuan.nosdn.127.net/a70b34d03da3d280d0fd79181d56589c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (19, 41, 'https://yanxuan.nosdn.127.net/4f07e2b6d807ff345a473d5da3c26968.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (20, 42, 'https://yanxuan.nosdn.127.net/c82b3ab3d224aa76740b9e3255adf3fb.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (21, 43, 'https://yanxuan.nosdn.127.net/c35d48dcada22ec1c44294f6b0a428e1.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (22, 44, 'https://yanxuan.nosdn.127.net/1f8547923b6ffcba581239611f693ac2.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (23, 45, 'https://yanxuan.nosdn.127.net/90b284e3610a519a46aaa2f68eda2c48.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (24, 45, 'https://yanxuan.nosdn.127.net/cc6273be455c3316dce5cf704401df43.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (25, 46, 'https://yanxuan.nosdn.127.net/7609fb3c38f9bd7dd9af11f5818f0be5.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (26, 46, 'https://yanxuan.nosdn.127.net/c4061c4d985e27d323bb0129b86ec55a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (27, 46, 'https://yanxuan.nosdn.127.net/2161ee60cc43edcff1e31a2bdf86a903.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (28, 47, 'https://yanxuan.nosdn.127.net/91ec809b19884e57c0d109b4412ee030.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (29, 48, 'https://yanxuan.nosdn.127.net/a2a7cc43bfab52175f6b8c12703f87d9.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (30, 49, 'https://yanxuan.nosdn.127.net/7d7199ef7682089c9c7b45d3d2c4fed9.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (31, 50, 'https://yanxuan.nosdn.127.net/0e10cb5879b7559415a9f8271b0d8fb0.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (32, 50, 'https://yanxuan.nosdn.127.net/31dd362b4c47ba25994cec82020a466a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (33, 50, 'https://yanxuan.nosdn.127.net/33c360c34b5fd14fbd51ab7f96a23f93.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (34, 51, 'http://yanxuan.nosdn.127.net/76735794dcee4fc7763c9e5387e0c2ce.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (35, 52, 'https://yanxuan.nosdn.127.net/5043098d243e80629ab3d45efbc46f2a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (36, 52, 'https://yanxuan.nosdn.127.net/a599a3df10cb2ae5f8d4aa293f6f7ef5.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (37, 53, 'https://yanxuan.nosdn.127.net/940ba0e376afe987fffbf0174151980b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (38, 53, 'https://yanxuan.nosdn.127.net/91730445ae6b47e989fb112cd13df259.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (39, 53, 'https://yanxuan.nosdn.127.net/bbd62a0f2f60443812c1dc51ee61e55f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (40, 53, 'https://yanxuan.nosdn.127.net/55dc0ff04281a0a3ccc3bf58b86d080d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (41, 54, 'https://yanxuan.nosdn.127.net/1d3b96140cd0cd9da2781aed350f65ca.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (42, 54, 'https://yanxuan.nosdn.127.net/c98e86e420c3c50f377054ad465663b6.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (43, 55, 'https://yanxuan.nosdn.127.net/4b36085027dfa17f41ae18a8a59866bf.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (44, 55, 'https://yanxuan.nosdn.127.net/e7f5b357910d79b6da7ab159500ed112.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (45, 55, 'https://yanxuan.nosdn.127.net/bf3a081b3859ff62c21249c2b5443857.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (46, 55, 'https://yanxuan.nosdn.127.net/442180cdbc773cd453447acbe18076a4.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (47, 56, 'https://yanxuan.nosdn.127.net/5995203d941cd9ec29d72f88e2068470.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (48, 57, 'https://yanxuan.nosdn.127.net/e952e01ca4cc9a6e98ac1b94c22897c1.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (49, 58, 'https://yanxuan.nosdn.127.net/ef9baeb4716e707430504c85a31bf23d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (50, 59, 'http://yanxuan.nosdn.127.net/3be9a5226968a712d0f070ad68f64dec.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (51, 59, 'http://yanxuan.nosdn.127.net/8fdc01147eb50e9087aa00a2f62fac2d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (52, 59, 'http://yanxuan.nosdn.127.net/4235a53cf606ae4bc0fea7a30af393bd.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (53, 60, 'https://yanxuan.nosdn.127.net/3369a66fb9df9b7d5b6ae2978d36610f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (54, 61, 'https://yanxuan.nosdn.127.net/709c587f5f7d92f48332d06eb18e7126.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (55, 61, 'https://yanxuan.nosdn.127.net/6e1774068ce6b020c50c3c5d4a8e7dfc.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (56, 62, 'https://yanxuan.nosdn.127.net/5e10bd6ac6cb217268b4483a10bea56f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (57, 63, 'https://yanxuan.nosdn.127.net/a3078f1431a1aca14caa560a6ff908a5.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (58, 64, 'https://yanxuan.nosdn.127.net/62c0b62ad5eb0c20337eabbf367e4278.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (59, 65, 'https://yanxuan.nosdn.127.net/681b2327038b1c2c10af89b2527d7eda.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (60, 65, 'https://yanxuan.nosdn.127.net/71ccaffde9e79a89ad185ff9bdab40d7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (61, 65, 'https://yanxuan.nosdn.127.net/e7742118d188ea3173ad5112a8a6f061.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (62, 65, 'https://yanxuan.nosdn.127.net/3d77a201cbff3fae0c2d35c8dbe7ce30.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (63, 66, 'https://yanxuan.nosdn.127.net/e44577b3101696c64196ca2ac6aed4d0.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (64, 66, 'https://yanxuan.nosdn.127.net/19dc77eb45ad562080ae3f1b26220ecb.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (65, 67, 'https://yanxuan.nosdn.127.net/c7ddd8ce4d2588f88bee2bdc325b16e8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (66, 67, 'https://yanxuan.nosdn.127.net/63917d8d98648a1f6780113b81eaf49d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (67, 67, 'https://yanxuan.nosdn.127.net/3cb128218eb997e9f3b9e2b3f977bb42.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (68, 68, 'https://yanxuan.nosdn.127.net/d9c4a183033024979794f5d125718c36.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (69, 69, 'https://yanxuan.nosdn.127.net/a9f9168ce83e7d73345aec85d3a58a48.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (70, 69, 'https://yanxuan.nosdn.127.net/683e47e56d8a123ef101d64afb22b293.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (71, 70, 'https://yanxuan.nosdn.127.net/2edff0244918811c38ce88eccd67d979.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (72, 70, 'https://yanxuan.nosdn.127.net/ee205358200c2834f6fe1457e6b8cc0c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (73, 71, 'https://yanxuan.nosdn.127.net/874a5450cc4a013fafbb699d1be8f7e6.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (74, 72, 'http://yanxuan.nosdn.127.net/6086f9c60725981a62bcb7cb9b16f96d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (75, 73, 'http://yanxuan.nosdn.127.net/a80a47d1da70aecda367c8346f6c4b28.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (76, 73, 'http://yanxuan.nosdn.127.net/c03e0d833114a274c14e78078e209f23.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (77, 74, 'https://yanxuan.nosdn.127.net/d604e96c8fd278287b0b5938a6329d91.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (78, 75, 'https://yanxuan.nosdn.127.net/d1a19fc34300d9777fa461e429953f47.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (79, 76, 'http://yanxuan.nosdn.127.net/f66f5867db18972a129da330db4c1a62.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (80, 77, 'https://yanxuan.nosdn.127.net/a74a0afeb7565c6e4faaa6eb9cf4749f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (81, 78, 'http://yanxuan.nosdn.127.net/d0ba5d4d2e3749630dea1e22f5cea279.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (82, 78, 'http://yanxuan.nosdn.127.net/47cfc56cbe26aab5c357b8f202d0e1ff.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (83, 79, 'https://yanxuan.nosdn.127.net/a6efb53eb88e7a64d2684e40f7a52d3f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (84, 80, 'https://yanxuan.nosdn.127.net/011740faaf3a95b9199098814e36e385.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (85, 81, 'http://yanxuan.nosdn.127.net/998e430d04f8bb8b1d884bac1a02e313.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (86, 82, 'http://yanxuan.nosdn.127.net/9e81c34c4ff7c22bc349c6d268307dd2.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (87, 82, 'http://yanxuan.nosdn.127.net/44e4a90615bece2401be24a2bf93ee69.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (88, 83, 'http://yanxuan.nosdn.127.net/3afa633ff158ed7739e99f242e6217d0.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (89, 83, 'http://yanxuan.nosdn.127.net/ab1c13bd41274a8c42d58cfd9c905aa1.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (90, 84, 'http://yanxuan.nosdn.127.net/1ddafd57c3cc4c7fd3cd605ce6e5fdff.JPG', 5);
INSERT INTO `nideshop_comment_picture` VALUES (91, 84, 'http://yanxuan.nosdn.127.net/a7d5e47ef16d5a6cadec4a62846e28e1.JPG', 5);
INSERT INTO `nideshop_comment_picture` VALUES (92, 85, 'http://yanxuan.nosdn.127.net/49ce7f46d4978157321812d2ca8e4846.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (93, 86, 'http://yanxuan.nosdn.127.net/8bb54ef41cc46ebd96577c38eb87715d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (94, 87, 'http://yanxuan.nosdn.127.net/2b52a8a6e59e8b2124cf2739af13910f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (95, 87, 'http://yanxuan.nosdn.127.net/96c5f2780a71c0b24ab6741f531a5711.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (96, 88, 'http://yanxuan.nosdn.127.net/20553ede4645fed898754f06a3bd9d9c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (97, 88, 'http://yanxuan.nosdn.127.net/0213cae3ef5a865bb6dd8db6015cfc86.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (98, 88, 'http://yanxuan.nosdn.127.net/aa4f3ead32776fc29f6d065ce3292c08.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (99, 88, 'http://yanxuan.nosdn.127.net/d437f107e112d9b6dd944efadbb9f451.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (100, 89, 'http://yanxuan.nosdn.127.net/b0b43ef8aee2a518e256904ed9fd09fc.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (101, 90, 'http://yanxuan.nosdn.127.net/1de092f2aad814487558f41b3de008cf.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (102, 90, 'http://yanxuan.nosdn.127.net/3172ec3dd5de21b03310dcffdcc218c6.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (103, 90, 'http://yanxuan.nosdn.127.net/490ea866acd1e3ee81515bbe5b2b6825.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (104, 90, 'http://yanxuan.nosdn.127.net/7a4dd625b8189905b263d23e5ecc0e23.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (105, 91, 'https://yanxuan.nosdn.127.net/5779110874e03e1364ae2d3e74e78cee.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (106, 91, 'https://yanxuan.nosdn.127.net/06f11a4b428f316dbab2b664c2838faa.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (107, 92, 'https://yanxuan.nosdn.127.net/501c14b56ed0d7a6fb6a5f47ca90f51d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (108, 92, 'https://yanxuan.nosdn.127.net/488c125fb54f8a6ee5f66cc3849a6b55.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (109, 93, 'https://yanxuan.nosdn.127.net/2c0edd6951c4ccdc6816a6654ae153ea.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (110, 93, 'https://yanxuan.nosdn.127.net/d2cf24a8b7e98fdc14e55213f7a12f1f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (111, 93, 'https://yanxuan.nosdn.127.net/044ad064291fdd00fdb7222634ea1c00.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (112, 100, 'https://yanxuan.nosdn.127.net/692898a037906863f4130cc28aa96f54.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (113, 100, 'https://yanxuan.nosdn.127.net/daea9059182226688f60b1c7ee943b1a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (114, 100, 'https://yanxuan.nosdn.127.net/13026a745b1269591968eb5774beea93.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (115, 101, 'https://yanxuan.nosdn.127.net/a5e70db6cb702cdb15c25410240da4e0.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (116, 102, 'https://yanxuan.nosdn.127.net/0eaedb093836fc19b44c9762ec4245f9.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (117, 102, 'https://yanxuan.nosdn.127.net/64b07866551aca5ab545b6945c3aa238.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (118, 103, 'https://yanxuan.nosdn.127.net/31d573ea8e20c70c46f3e2a981201587.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (119, 104, 'https://yanxuan.nosdn.127.net/f48b64fc44e30b9353699d75cae4d38d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (120, 104, 'https://yanxuan.nosdn.127.net/8be7358f3367af5f9b4607bb5904185a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (121, 105, 'https://yanxuan.nosdn.127.net/ed462bd77a20e2442c2d56d98d32ee8d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (122, 105, 'https://yanxuan.nosdn.127.net/31388ad9b235215a4f0974a66e748575.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (123, 106, 'https://yanxuan.nosdn.127.net/19876c8e3661289f0b9a07a3948ad2b1.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (124, 107, 'https://yanxuan.nosdn.127.net/d6d444376770e922138b1d12c18c020a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (125, 108, 'https://yanxuan.nosdn.127.net/9285abeba996f87ffb126d761a7bea29.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (126, 109, 'https://yanxuan.nosdn.127.net/b38e68c198d8b1d41be27c9e8c4ee73d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (127, 110, 'https://yanxuan.nosdn.127.net/01ce532366fb5dc49eb88e490d5d3984.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (128, 110, 'https://yanxuan.nosdn.127.net/c509586b0e728860a8d14870f06112fb.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (129, 111, 'https://yanxuan.nosdn.127.net/6b6a073e6d7caad43f5e8cf9833da01e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (130, 112, 'https://yanxuan.nosdn.127.net/3853600951a35647609c6844dcdd6c86.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (131, 112, 'https://yanxuan.nosdn.127.net/b1638f9674d1d8e9ca1872b12312f68f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (132, 113, 'https://yanxuan.nosdn.127.net/4c5dfff639bc36a67ee8a35892f8d200.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (133, 114, 'https://yanxuan.nosdn.127.net/0ed20445542ab57b134ac1c7d3a0faea.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (134, 115, 'https://yanxuan.nosdn.127.net/c5f4909c19090e6e61157fa9eda1d0de.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (135, 116, 'https://yanxuan.nosdn.127.net/e94d6adaec4edf5702d3210b3d6ebe58.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (136, 116, 'https://yanxuan.nosdn.127.net/42369e5b147025746542231936d63ac5.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (137, 116, 'https://yanxuan.nosdn.127.net/03a66e35f55d08c2de10834ce415bf89.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (138, 116, 'https://yanxuan.nosdn.127.net/2bd45812d820f727c2e7f3fa3988dbce.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (139, 117, 'https://yanxuan.nosdn.127.net/66f272393658392a6f023898dccb9e90.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (140, 118, 'https://yanxuan.nosdn.127.net/84b6457d734c73414da6ba6247ac18af.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (141, 119, 'https://yanxuan.nosdn.127.net/a27659551c60008c31b1b48a2fa62c88.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (142, 120, 'https://yanxuan.nosdn.127.net/6b06e92c9783ebbdda81346912296b58.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (143, 120, 'https://yanxuan.nosdn.127.net/2b4c5c819f6af06e79d57ea098a39a56.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (144, 129, 'https://yanxuan.nosdn.127.net/8736be0264f1d722cef01939836973e0.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (145, 129, 'https://yanxuan.nosdn.127.net/d0a72092ca8ca6077215e9f23efa31e2.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (146, 130, 'https://yanxuan.nosdn.127.net/6364c9dd6affe4796937326445ecc064.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (147, 131, 'https://yanxuan.nosdn.127.net/eba8499ab70da5138d0d5511a79a8e35.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (148, 132, 'https://yanxuan.nosdn.127.net/c2fa7ba74c8b80fb36a5224931570be0.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (149, 133, 'https://yanxuan.nosdn.127.net/f997931b3715affcb7546ca70010d558.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (150, 134, 'https://yanxuan.nosdn.127.net/e871c512e6183395b40eea65033633ec.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (151, 134, 'https://yanxuan.nosdn.127.net/3abc075b9a60c6b99507636a96dd001f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (152, 135, 'https://yanxuan.nosdn.127.net/52d48f5df17c94de6efc03220e808f60.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (153, 135, 'https://yanxuan.nosdn.127.net/4caaf0a13a70f801f62efdcc0b12c69e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (154, 136, 'https://yanxuan.nosdn.127.net/27bd18e109bfec677acb114f0df15049.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (155, 137, 'https://yanxuan.nosdn.127.net/97b8b982e976f2b7e3fd8f453378212d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (156, 138, 'https://yanxuan.nosdn.127.net/7b0bc93f9eaa88ea9354d6e33afa514d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (157, 139, 'https://yanxuan.nosdn.127.net/0fcae1110d09b0c7ef44778781c39a5d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (158, 139, 'https://yanxuan.nosdn.127.net/505f58c738ca26fc35a5f58e2e5d2db7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (159, 139, 'https://yanxuan.nosdn.127.net/cb6db0c1f24151323f0bd8e40e6c63db.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (160, 139, 'https://yanxuan.nosdn.127.net/a4d3db8aec4933a24b031b3c331829da.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (161, 140, 'https://yanxuan.nosdn.127.net/e1466fdabc2df0ec42261139858eac99.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (162, 140, 'https://yanxuan.nosdn.127.net/64a7d1ed37be1b9f5f45552cf0c59eb7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (163, 140, 'https://yanxuan.nosdn.127.net/5a4dfa6ffe661f52705fa01b3db10217.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (164, 140, 'https://yanxuan.nosdn.127.net/8dd061631aca0194517f2e17826c4571.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (165, 141, 'http://yanxuan.nosdn.127.net/b536d19af6299dfbea2362954e7b3ba2.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (166, 141, 'http://yanxuan.nosdn.127.net/3629cb676c071af26023f2cae21520e6.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (167, 141, 'http://yanxuan.nosdn.127.net/57e702c6068668e6a025ff799162dcb4.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (168, 141, 'http://yanxuan.nosdn.127.net/1e7a50c0866931982f64ebc4dcf1dd07.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (169, 142, 'https://yanxuan.nosdn.127.net/01671ffc2f8f533dc10b9fae5e888b02.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (170, 143, 'https://yanxuan.nosdn.127.net/0551f86464a85f7bef8636e82d2a16c1.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (171, 144, 'http://yanxuan.nosdn.127.net/8bae8bc13f53b8d77e3da8a339a826b8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (172, 144, 'http://yanxuan.nosdn.127.net/6eadf3d5235e875a13fb9e094c25d3ca.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (173, 145, 'http://yanxuan.nosdn.127.net/0203d4a921a735a03a9ec2509a4ca5f9.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (174, 146, 'https://yanxuan.nosdn.127.net/ccd0091d097f9da975848aeedf729da3.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (175, 147, 'https://yanxuan.nosdn.127.net/117da716695d4cd0666b4a4f1614a00d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (176, 148, 'http://yanxuan.nosdn.127.net/0d9bd7d05a75234ac5fb56569fa3afbf.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (177, 149, 'http://yanxuan.nosdn.127.net/161eaf989138d13499c4b0ec83f4a4fb.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (178, 149, 'http://yanxuan.nosdn.127.net/8e4a2ecdf1b4586ad54a666f6c9ddb6b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (179, 149, 'http://yanxuan.nosdn.127.net/cd0efbf8cd0c2aacb6e3a4de8aee0f0c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (180, 150, 'http://yanxuan.nosdn.127.net/37741286381028ce1db15966140ad90c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (181, 154, 'https://yanxuan.nosdn.127.net/0b698871fee771050538f9e98d6cc1bf.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (182, 154, 'https://yanxuan.nosdn.127.net/243c459a1195839cf45084f35540c2dc.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (183, 155, 'https://yanxuan.nosdn.127.net/e3573ec3d123bde7311edd874ff9e3b2.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (184, 155, 'https://yanxuan.nosdn.127.net/9b2308745635c95764a32e122d52e2dd.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (185, 156, 'http://yanxuan.nosdn.127.net/0eaea152d968cb88ba8a6082f49254c9.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (186, 156, 'http://yanxuan.nosdn.127.net/4a13a803fc6993845c98754a7dd714cd.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (187, 157, 'https://yanxuan.nosdn.127.net/163aa25c63783f245b2903f7230db795.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (188, 158, 'https://yanxuan.nosdn.127.net/6815e6e715e469f9e0498a84c248f3b7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (189, 159, 'https://yanxuan.nosdn.127.net/3c86f256e559dfcb5c6ac12ee6f0957e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (190, 160, 'https://yanxuan.nosdn.127.net/0d35feb8182002ce0efa39dd04c8e188.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (191, 160, 'https://yanxuan.nosdn.127.net/15802fa58be1a8c9ee114f526ee88337.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (192, 161, 'https://yanxuan.nosdn.127.net/5f996396607421ab20f91d12fbd84f97.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (193, 162, 'https://yanxuan.nosdn.127.net/ba6c27952db325c72f5b1f2ad76c2acd.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (194, 163, 'https://yanxuan.nosdn.127.net/357dfd5e73d3c7b8d93b598dc5cfa3c2.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (195, 163, 'https://yanxuan.nosdn.127.net/d80005eeb4a494fe820a2a993d8c10bf.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (196, 164, 'https://yanxuan.nosdn.127.net/3aa16a41e998d7cb01646612a085d74e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (197, 165, 'http://yanxuan.nosdn.127.net/71fd5f70b7da24c755370aff3767d0e2.JPG', 5);
INSERT INTO `nideshop_comment_picture` VALUES (198, 166, 'https://yanxuan.nosdn.127.net/1f8379242fa0dfe2be0b63299a92de8a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (199, 167, 'https://yanxuan.nosdn.127.net/303f07460c563b2809e8a28c42ec2974.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (200, 168, 'https://yanxuan.nosdn.127.net/5f9179e49cd6f301d933a20b9ea15ff7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (201, 168, 'https://yanxuan.nosdn.127.net/e3598c1c76af2977f8e47657e79073d8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (202, 168, 'https://yanxuan.nosdn.127.net/cd2a1ce5f8c8c6462873cbc883064cab.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (203, 168, 'https://yanxuan.nosdn.127.net/b0e5cc9f65ce8c473bb60e33d702c174.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (204, 169, 'https://yanxuan.nosdn.127.net/ca5f41ddb4e996752eaee88c603f89db.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (205, 169, 'https://yanxuan.nosdn.127.net/ccc7e1ced6ae6653d27db2d2a5dad2bc.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (206, 169, 'https://yanxuan.nosdn.127.net/a676fec8d311b18352041938eb47f2fa.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (207, 170, 'https://yanxuan.nosdn.127.net/510daeeeb0d7ab374d19118b56907d03.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (208, 171, 'http://yanxuan.nosdn.127.net/acf4545e5f5155610a9920639554eaca.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (209, 172, 'https://yanxuan.nosdn.127.net/32867c025eda5d3fdceb6106420cfff3.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (210, 173, 'http://yanxuan.nosdn.127.net/2ac89fe52540efd8343791fc1fd2b155.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (211, 174, 'http://yanxuan.nosdn.127.net/d78ca7784908b91c720ec735c5a804c8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (212, 174, 'http://yanxuan.nosdn.127.net/a00bd908f3cb0e5a20e1a47574d1c243.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (213, 175, 'http://yanxuan.nosdn.127.net/d83c8a7bea22d11b5c87f90eac4dc39a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (214, 176, 'https://yanxuan.nosdn.127.net/9abf716e255f1436439559a9792d0741.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (215, 176, 'https://yanxuan.nosdn.127.net/5c4ceaa303be30f8dea7e6d797fb48c7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (216, 177, 'https://yanxuan.nosdn.127.net/789eabd8acb8033a645d657761d664b2.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (217, 178, 'http://yanxuan.nosdn.127.net/b31f1ba01ad55a1c5c211fc78c9151ce.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (218, 179, 'http://yanxuan.nosdn.127.net/081d8d7ba1363e567f1a4ba3a510746f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (219, 180, 'https://yanxuan.nosdn.127.net/38efadd5eee61fb44488062a4cb13f50.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (220, 181, 'https://yanxuan.nosdn.127.net/827017ba882ecc73bbc84b158ce52f58.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (221, 182, 'https://yanxuan.nosdn.127.net/642f783d1a82bcddca5c8b6d60a50587.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (222, 183, 'https://yanxuan.nosdn.127.net/490b249734045af43acec2bd059a9e17.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (223, 192, 'https://yanxuan.nosdn.127.net/a411c758836a8e5f785f9c887c9eade7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (224, 193, 'https://yanxuan.nosdn.127.net/510bdb612db9dc0afcf521ecfab0d544.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (225, 194, 'https://yanxuan.nosdn.127.net/ec18a1d6f7570d91ffcb00522992a7b9.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (226, 194, 'https://yanxuan.nosdn.127.net/f5ca9301a37bfc4ffb9159b7a0dc9058.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (227, 195, 'https://yanxuan.nosdn.127.net/59df349a01837ab721218fb7809871d2.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (228, 195, 'https://yanxuan.nosdn.127.net/5148b82159c373293feda182407596c8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (229, 196, 'https://yanxuan.nosdn.127.net/5d775bd76f04920099a642ba183ac9cf.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (230, 197, 'https://yanxuan.nosdn.127.net/49030becc853b68b813089a0ac1a6c4e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (231, 198, 'https://yanxuan.nosdn.127.net/f1a26f246acd80b93a3ffd3b71be93ce.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (232, 199, 'https://yanxuan.nosdn.127.net/b4f1e58479a242366bea4d6dbf2ff4ec.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (233, 199, 'https://yanxuan.nosdn.127.net/fe732c746cccc711667b0cd337ccfba3.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (234, 199, 'https://yanxuan.nosdn.127.net/756d3468dab3c5a5de9685d8faa6dd18.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (235, 200, 'https://yanxuan.nosdn.127.net/0cea9a7b366b8e3fcef5269137294359.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (236, 200, 'https://yanxuan.nosdn.127.net/051786f7e3eb36cabb458779c5fae9fe.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (237, 201, 'https://yanxuan.nosdn.127.net/3161beb18ccf054115315cf09557ed59.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (238, 202, 'https://yanxuan.nosdn.127.net/bc547322ad5a8164a388d56508fc93eb.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (239, 202, 'https://yanxuan.nosdn.127.net/5894aad819e9c15ecffe88e9445884ae.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (240, 203, 'https://yanxuan.nosdn.127.net/1c62d0c41cebccd9e06dc23fe6ed111e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (241, 203, 'https://yanxuan.nosdn.127.net/47a2b22b14723f79eb1e89cd26606fcb.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (242, 203, 'https://yanxuan.nosdn.127.net/a2991ed5eac58e80a356dc784307490d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (243, 203, 'https://yanxuan.nosdn.127.net/546c5ed73a242dc0f11949d1e8607519.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (244, 204, 'https://yanxuan.nosdn.127.net/d29440e326ad54261947b202a3f26f8b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (245, 205, 'https://yanxuan.nosdn.127.net/fb163c8f9605e606ecab378434cc8587.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (246, 206, 'https://yanxuan.nosdn.127.net/ed6084e670a4ea08448305f4fb6e5a81.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (247, 207, 'https://yanxuan.nosdn.127.net/3b789d855d6db896392a71364356b927.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (248, 208, 'https://yanxuan.nosdn.127.net/78060b1c3cb24079d7a771536019f990.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (249, 208, 'https://yanxuan.nosdn.127.net/ae1d9d70310386d7acae2e7b74e03fd2.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (250, 208, 'https://yanxuan.nosdn.127.net/d4e20b69d45c2b1cac898146b53e758e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (251, 208, 'https://yanxuan.nosdn.127.net/25da72ece123bb0a092c183c5eac342c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (252, 209, 'https://yanxuan.nosdn.127.net/30d544de9c2596371557c9309c843eb1.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (253, 210, 'https://yanxuan.nosdn.127.net/debd2800a3e746d420e450eb05ad4125.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (254, 211, 'https://yanxuan.nosdn.127.net/b007ab3de1c4c9fbea625db5615d49aa.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (255, 212, 'https://yanxuan.nosdn.127.net/b255ead740392bd237ef95a676342833.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (256, 212, 'https://yanxuan.nosdn.127.net/79b7fc5c13193a2ab5f4d816fd01f91a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (257, 219, 'https://yanxuan.nosdn.127.net/7fb1a52e793f738cb9db3660e88756b7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (258, 220, 'https://yanxuan.nosdn.127.net/44668cb4f55f120a5fe9ebda02e4b3a8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (259, 220, 'https://yanxuan.nosdn.127.net/1e2647e8db48c19aec29a9b43c30d4a3.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (260, 221, 'https://yanxuan.nosdn.127.net/859dbc341a909ba142c907ff4adb3ae9.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (261, 221, 'https://yanxuan.nosdn.127.net/36c37e008facb551c60398e61244499b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (262, 221, 'https://yanxuan.nosdn.127.net/21430602d5024448e6928d2c28a9c0aa.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (263, 221, 'https://yanxuan.nosdn.127.net/66a07ac23e1b31f040af1db1c26e9db3.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (264, 222, 'https://yanxuan.nosdn.127.net/b3f1dff629e4552bd48dc7bc448c87cc.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (265, 223, 'https://yanxuan.nosdn.127.net/2c8ea07e47fd634985763f7542edb147.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (266, 223, 'https://yanxuan.nosdn.127.net/255aa07962209d5efc43db25b9fc420d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (267, 223, 'https://yanxuan.nosdn.127.net/a0dee9b14a716c912ce7b129ed659943.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (268, 224, 'https://yanxuan.nosdn.127.net/1493e2f39572135d26d7d44e2ee8a17d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (269, 225, 'https://yanxuan.nosdn.127.net/d27341b40f9dded7af6d48b17b3900b0.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (270, 225, 'https://yanxuan.nosdn.127.net/3311e083d8a6e2600a8efd6767141940.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (271, 226, 'https://yanxuan.nosdn.127.net/ab40216e0e13bd43e6ce05cb70bf70ed.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (272, 227, 'https://yanxuan.nosdn.127.net/28c3fe99d7c0845d2159821c775daa53.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (273, 228, 'https://yanxuan.nosdn.127.net/bff1a43f24ffe812cc66906199515076.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (274, 228, 'https://yanxuan.nosdn.127.net/ef5442e53f8e7af08a883bd63b14288d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (275, 229, 'https://yanxuan.nosdn.127.net/0f8e9999e678270f398508fe2b2410ed.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (276, 230, 'https://yanxuan.nosdn.127.net/67987297b5cbf94ab90d7b2170fb3296.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (277, 230, 'https://yanxuan.nosdn.127.net/e94869548ec9f377051f2e1d18341885.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (278, 231, 'https://yanxuan.nosdn.127.net/24ca01952605584b0290ccbaa9a6f199.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (279, 231, 'https://yanxuan.nosdn.127.net/113358276be0129a8057b095220d308d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (280, 232, 'https://yanxuan.nosdn.127.net/4a5bbc43ce53d987ab8e6348ea85dd2f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (281, 233, 'https://yanxuan.nosdn.127.net/2bb50e6bfe365614f6ae5aa1155703b2.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (282, 234, 'https://yanxuan.nosdn.127.net/c8eaaf0aae9f2ede1f9d33744ba7f8ff.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (283, 235, 'https://yanxuan.nosdn.127.net/0094a3508a0b37d8759597d183c85222.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (284, 236, 'https://yanxuan.nosdn.127.net/b8bab304cbf3c2991d0bb367c05298da.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (285, 237, 'https://yanxuan.nosdn.127.net/2f9c157a74efe18716c367c83eb05cd7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (286, 238, 'https://yanxuan.nosdn.127.net/4a474f7688de05eab8f015132cef432c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (287, 239, 'https://yanxuan.nosdn.127.net/969eb7f65ab6aa69e7f242d11a29c32d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (288, 240, 'https://yanxuan.nosdn.127.net/a8cd41200248e7b36e90482e9caa7e94.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (289, 241, 'https://yanxuan.nosdn.127.net/a3bd6f130fe3ee340037a37b6c721d16.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (290, 242, 'https://yanxuan.nosdn.127.net/6a10b3f27172cba92c05cd0530655aff.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (291, 242, 'https://yanxuan.nosdn.127.net/85e5548a59543b56e668cc0e4dfc45fc.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (292, 243, 'https://yanxuan.nosdn.127.net/932ce1df5850a70e25c997ae74682ae4.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (293, 244, 'https://yanxuan.nosdn.127.net/7215aa51acd444921885a6df839c4c97.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (294, 244, 'https://yanxuan.nosdn.127.net/8ca6c7d1609b2cf9a6da9cf9d28946e8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (295, 244, 'https://yanxuan.nosdn.127.net/742cb4d878399dbc16ee016bdcc8a1fc.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (296, 249, 'https://yanxuan.nosdn.127.net/0ecf956ee0cfe4b660e5dc435d6cf6e8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (297, 250, 'https://yanxuan.nosdn.127.net/988d68ce481b4e1425bb12489787900a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (298, 251, 'https://yanxuan.nosdn.127.net/3e1738e13e6dbfc758906ba604738fab.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (299, 251, 'https://yanxuan.nosdn.127.net/11847bb011f62259378b0a6ba94e04a1.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (300, 251, 'https://yanxuan.nosdn.127.net/b3eebbdb1e5fdaf2afd91141284c53d0.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (301, 252, 'https://yanxuan.nosdn.127.net/ccc0fd11392c2880ba9958da9c9d7e2b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (302, 253, 'https://yanxuan.nosdn.127.net/6c96022a4cfaa246baecd50076eb9f42.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (303, 254, 'https://yanxuan.nosdn.127.net/b020d52ddc614fdcf9ec816482bbb464.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (304, 255, 'https://yanxuan.nosdn.127.net/e337cf4321f2e318fcd703c13a073b19.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (305, 256, 'https://yanxuan.nosdn.127.net/5789a2ddfc467d218e6a85cb842833f3.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (306, 257, 'https://yanxuan.nosdn.127.net/1811203fecc7b720d3d00cd33acfdbfd.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (307, 258, 'https://yanxuan.nosdn.127.net/71ada136cdd64373601825214011af22.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (308, 258, 'https://yanxuan.nosdn.127.net/07cad4eb2ac9535220388f0614518be0.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (309, 258, 'https://yanxuan.nosdn.127.net/ab01443acbffa84c8a979f61086e2feb.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (310, 259, 'https://yanxuan.nosdn.127.net/47161cc3669b3a91e3a7c95aced21815.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (311, 260, 'https://yanxuan.nosdn.127.net/9e7936d8eae4f7a45a5bbe37879b298c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (312, 261, 'https://yanxuan.nosdn.127.net/a07e1324bca05e5c2198c7fdcdbbfef5.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (313, 262, 'https://yanxuan.nosdn.127.net/d74f0faab980d50255486c550b920e23.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (314, 263, 'https://yanxuan.nosdn.127.net/9d9ecac6a61f7b1c0fcdfe332426fa75.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (315, 264, 'https://yanxuan.nosdn.127.net/5946e8e602b1e00ed1a96c9c878b7c73.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (316, 265, 'https://yanxuan.nosdn.127.net/0f451fb2b42e6437c158cd7bebc42b7c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (317, 266, 'https://yanxuan.nosdn.127.net/633602f256da4e2c6d42b3fe3cf9b2cd.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (318, 266, 'https://yanxuan.nosdn.127.net/d0c54709e1e2cfe4e4e5a088941dc65b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (319, 267, 'https://yanxuan.nosdn.127.net/56d816049828593feba466b2726f261a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (320, 268, 'https://yanxuan.nosdn.127.net/7bc086b44be7d9b817e12241a88b6220.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (321, 269, 'https://yanxuan.nosdn.127.net/431be25b6a30a2ed03ac47cf8300b03b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (322, 269, 'https://yanxuan.nosdn.127.net/2a0ade4dd55807a40cc4f1fd0d94c68b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (323, 270, 'https://yanxuan.nosdn.127.net/02cb14b2e29256273d8c29a0dea86f1f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (324, 271, 'https://yanxuan.nosdn.127.net/3fcd5c4831a8c6ae297d2df19194843c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (325, 272, 'https://yanxuan.nosdn.127.net/156aa67d25e08d2bb0e07c36f3949b38.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (326, 272, 'https://yanxuan.nosdn.127.net/662f6f65414bf0b96deaed9032c72378.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (327, 273, 'https://yanxuan.nosdn.127.net/7f986d83a287bce0544c34a52361d862.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (328, 274, 'https://yanxuan.nosdn.127.net/014108f56d8cfa0a789b2630ea657a83.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (329, 275, 'https://yanxuan.nosdn.127.net/7ecd64239acdbf3d880e3c0d89ddc954.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (330, 276, 'https://yanxuan.nosdn.127.net/cd8cffb16f9dbd42d26c2467c3b82363.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (331, 277, 'https://yanxuan.nosdn.127.net/d19829938e1089c751b4bec660b302e8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (332, 278, 'https://yanxuan.nosdn.127.net/647c6245bb7a41323c3ce2cff9bb639e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (333, 278, 'https://yanxuan.nosdn.127.net/1da70ad5d263120bbe8a309c9d87eb10.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (334, 278, 'https://yanxuan.nosdn.127.net/096ee1bcd1e8143916c89d0b756bf0b6.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (335, 278, 'https://yanxuan.nosdn.127.net/cd60d3af53d09fed72352c310457bd98.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (336, 279, 'https://yanxuan.nosdn.127.net/e682cb83a0f6c72b6a7bab66e310c093.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (337, 279, 'https://yanxuan.nosdn.127.net/ebc6cbf55475566f7a383a04acbfef5d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (338, 280, 'https://yanxuan.nosdn.127.net/7638d404f13588d32f32989767e58b4f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (339, 281, 'https://yanxuan.nosdn.127.net/f086163bcb8ba408a5862f275e6067a9.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (340, 282, 'https://yanxuan.nosdn.127.net/9d1baa05053cbdbd89149d9fd3cdc448.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (341, 283, 'https://yanxuan.nosdn.127.net/afd45ceb55bc6bddc44cf50a5325401d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (342, 283, 'https://yanxuan.nosdn.127.net/27b45e94dd7a987829c32dd7422819f0.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (343, 284, 'https://yanxuan.nosdn.127.net/771bef5ae8b66de0852e6e1a7a40319b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (344, 285, 'https://yanxuan.nosdn.127.net/c5e2f6adb442afda75887456a2c7842b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (345, 286, 'https://yanxuan.nosdn.127.net/caf4a75974f6d2ef220b47c7f0df0738.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (346, 287, 'https://yanxuan.nosdn.127.net/dd181bbf2b271c1c66eff6068de50dc8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (347, 287, 'https://yanxuan.nosdn.127.net/4ca7b2d4e1b193e378de57645e0338ec.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (348, 288, 'https://yanxuan.nosdn.127.net/d14c3df3856e42532ca3627243b56e5c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (349, 289, 'http://yanxuan.nosdn.127.net/01dfbe2416893d0429da5516cdd9502d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (350, 290, 'http://yanxuan.nosdn.127.net/e969eaebf84ce032638940d4a99cf842.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (351, 291, 'http://yanxuan.nosdn.127.net/0b4748f99e520ce931291fa92b98a723.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (352, 301, 'https://yanxuan.nosdn.127.net/3057506509b4cc0e612516375fde2408.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (353, 301, 'https://yanxuan.nosdn.127.net/32ed6eab4918d9bc749e8083111bf180.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (354, 302, 'https://yanxuan.nosdn.127.net/052e2518fae1f5d772ca0d1352e9bc25.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (355, 303, 'https://yanxuan.nosdn.127.net/839197bb4193cadec20c7a668f164abb.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (356, 304, 'https://yanxuan.nosdn.127.net/38f5c1f70a9c9c5e45f2fcb0b5184641.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (357, 305, 'http://yanxuan.nosdn.127.net/1c2bcd3005dbf06b98518524afb04f4e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (358, 306, 'http://yanxuan.nosdn.127.net/f1f1e1333d1274e0787f1d805767cc2d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (359, 309, 'http://yanxuan.nosdn.127.net/4c965af8feecdff00f8ef2083041d211.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (360, 309, 'http://yanxuan.nosdn.127.net/5db2ec27fe5f4da0ad15e745fb190703.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (361, 331, 'https://yanxuan.nosdn.127.net/635170b308fb7488adcc916c50513998.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (362, 331, 'https://yanxuan.nosdn.127.net/f53167e6e44205599d358e88fc1d0b27.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (363, 331, 'https://yanxuan.nosdn.127.net/e7b57b47db189cc8b9dba730953048f0.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (364, 332, 'https://yanxuan.nosdn.127.net/a4930439358a64cd1ae391ac021a1267.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (365, 332, 'https://yanxuan.nosdn.127.net/6bfc27e44113c231c809ecbbe8fc30b0.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (366, 333, 'https://yanxuan.nosdn.127.net/21ba531d3d76877f426de429d57f1f91.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (367, 333, 'https://yanxuan.nosdn.127.net/999578493838a59218230b19fc57f91d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (368, 333, 'https://yanxuan.nosdn.127.net/0e49046b0ab483c0b4935ae6da13c1af.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (369, 334, 'https://yanxuan.nosdn.127.net/fd0a27fd1d0753fda7b3b51aca10048a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (370, 335, 'https://yanxuan.nosdn.127.net/a7f4a05abc17737d47e1d87d4803de86.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (371, 336, 'https://yanxuan.nosdn.127.net/ddb730d6b3a0405ba62da7e1015d9058.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (372, 337, 'https://yanxuan.nosdn.127.net/07367c480302a7536edf39eb66927f22.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (373, 337, 'https://yanxuan.nosdn.127.net/adf211d67143b56433a5949131b2376d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (374, 338, 'https://yanxuan.nosdn.127.net/37f07aeff1f2ca0f266c3b63ed14ddb6.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (375, 339, 'https://yanxuan.nosdn.127.net/d7f22f2bab32a044d649b1c73f2b9a95.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (376, 339, 'https://yanxuan.nosdn.127.net/8d074111cbe37a96b4c5bde64eda7747.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (377, 340, 'https://yanxuan.nosdn.127.net/1cc9dbaf08d59f1e8e20ceacf37b528f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (378, 340, 'https://yanxuan.nosdn.127.net/2a34ee756c626188683150636e5a97cd.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (379, 340, 'https://yanxuan.nosdn.127.net/d15b196d104468b9af5336460d668ac9.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (380, 341, 'https://yanxuan.nosdn.127.net/5db4b968c03ca319772f5f8fc19fb499.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (381, 341, 'https://yanxuan.nosdn.127.net/b29e848512311c2ae3b41c281dfdd7c3.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (382, 342, 'https://yanxuan.nosdn.127.net/28c2258831b97c2ee2d023c903b2e479.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (383, 342, 'https://yanxuan.nosdn.127.net/c6ed25afdd223e407ff5e4c5ba1a36a8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (384, 343, 'https://yanxuan.nosdn.127.net/0eab994ad4bce67a91a31c8b8ba6b779.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (385, 343, 'https://yanxuan.nosdn.127.net/f1a6a066ce0870e42251b8de39a8dadd.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (386, 344, 'https://yanxuan.nosdn.127.net/3e03a9d133ca322c436215aa31ce9560.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (387, 345, 'https://yanxuan.nosdn.127.net/34c2152720a488a7f15986a693c8c9bc.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (388, 345, 'https://yanxuan.nosdn.127.net/9e20d4848260f11b14966a96b13ccdca.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (389, 346, 'https://yanxuan.nosdn.127.net/0c9c3aaad0ee1db23010f2882fbe1b33.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (390, 347, 'https://yanxuan.nosdn.127.net/b53073ebee0024459ee2fe0e4d3c5fc5.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (391, 348, 'https://yanxuan.nosdn.127.net/6a7825a1ddf67d61c7433df105a6baba.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (392, 349, 'https://yanxuan.nosdn.127.net/8459e0a6e239c46942de324a55e2c99e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (393, 349, 'https://yanxuan.nosdn.127.net/fe615d5dad609e8221b4667243fbd5d4.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (394, 350, 'https://yanxuan.nosdn.127.net/377394ea763cf519a56d8f0dd0d8f7db.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (395, 350, 'https://yanxuan.nosdn.127.net/52991510bc74fad033e7b249d7b9be13.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (396, 351, 'https://yanxuan.nosdn.127.net/1d132318eb02ffe326361b49106885cf.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (397, 351, 'https://yanxuan.nosdn.127.net/6129ceaf1df0a28270c8ac3f14e0bbce.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (398, 352, 'https://yanxuan.nosdn.127.net/415967bab62b55d5bd253a5b26784d06.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (399, 352, 'https://yanxuan.nosdn.127.net/71504a1c7520729d501dec2430f834c2.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (400, 353, 'https://yanxuan.nosdn.127.net/9ea5e29bc21bd9ec70fe7842183c2489.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (401, 353, 'https://yanxuan.nosdn.127.net/540d6c43e5158695e99d7d4b3ace78bd.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (402, 354, 'https://yanxuan.nosdn.127.net/1f9dec128763bd92305fb76adf6e7371.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (403, 355, 'https://yanxuan.nosdn.127.net/0a2dabac03704e85b7b61b224aa69832.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (404, 356, 'https://yanxuan.nosdn.127.net/990daee00e22c42b1b79eeae9981c673.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (405, 356, 'https://yanxuan.nosdn.127.net/dc071c856d9fffd31b53eec17e274a67.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (406, 357, 'https://yanxuan.nosdn.127.net/0e5afb723baf9d1e863ae0d97337aefe.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (407, 358, 'https://yanxuan.nosdn.127.net/662393c53e638f08d81035f611b1e4fc.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (408, 359, 'https://yanxuan.nosdn.127.net/b6459dfc4274559982b0389884dd30d1.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (409, 360, 'http://yanxuan.nosdn.127.net/8108f53f41effcb7581cc1c03b3191de.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (410, 361, 'https://yanxuan.nosdn.127.net/4c3d137c1e299e5502fd0537281e5d04.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (411, 362, 'https://yanxuan.nosdn.127.net/b54ed26bd3fa54e53e7b7c50ae514751.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (412, 363, 'https://yanxuan.nosdn.127.net/f019d4ff0e4fdaf4c4123167870c28b7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (413, 364, 'https://yanxuan.nosdn.127.net/75bab0a63713b6a37b83ff6e900c10d0.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (414, 364, 'https://yanxuan.nosdn.127.net/f0246ffca30bd97a32cf47da0d1b42e1.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (415, 365, 'https://yanxuan.nosdn.127.net/6b32775ff2d3b7a4c8b81d78161209fc.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (416, 366, 'https://yanxuan.nosdn.127.net/90f664150dd6a28f4ea74ad7e9ec4a28.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (417, 366, 'https://yanxuan.nosdn.127.net/8774ba9d9239f3e39877f555acaf15b8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (418, 373, 'https://yanxuan.nosdn.127.net/45573a8d626928fefcb8fb7c7bcdc6b7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (419, 373, 'https://yanxuan.nosdn.127.net/0307884c4b73c2e6b0a5fd70ecb6235a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (420, 374, 'https://yanxuan.nosdn.127.net/65084b80fa3a0a5c40c6af4f4574e257.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (421, 374, 'https://yanxuan.nosdn.127.net/ba42c4196b5e35820e3876edfa271d10.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (422, 375, 'https://yanxuan.nosdn.127.net/b57c8ed5c06023a9602e181d0616ca47.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (423, 376, 'https://yanxuan.nosdn.127.net/59e2113b257f591aac6cd05fe01bb34f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (424, 377, 'https://yanxuan.nosdn.127.net/6f872a084f469dbf1d2071e1502b7265.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (425, 378, 'https://yanxuan.nosdn.127.net/1709ad9668080f5d68e4d99af71e2715.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (426, 379, 'https://yanxuan.nosdn.127.net/d31116d0a2308816f7132058cf65996b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (427, 379, 'https://yanxuan.nosdn.127.net/476d82da9638aa3c078a85fe86f33455.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (428, 380, 'https://yanxuan.nosdn.127.net/4fe031edec3f8274be884cf3ecc179de.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (429, 381, 'https://yanxuan.nosdn.127.net/107d05282780754c9caa389cbc675931.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (430, 382, 'https://yanxuan.nosdn.127.net/771d79c61b79683b575d6896945626b9.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (431, 383, 'https://yanxuan.nosdn.127.net/78ddc578bc98934b2afc1235d04a2ce8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (432, 384, 'https://yanxuan.nosdn.127.net/82d0bb3c13ebb8c12759a604ebfecf46.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (433, 384, 'https://yanxuan.nosdn.127.net/8830ef8eed5b08626e5d63bd18ca2511.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (434, 385, 'https://yanxuan.nosdn.127.net/1939b8c48f5fa5c7bd421399bb47195a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (435, 386, 'https://yanxuan.nosdn.127.net/afcadcb617c6fbe9296333f34e84a910.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (436, 387, 'https://yanxuan.nosdn.127.net/3c427d485030de309dbb05082833485e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (437, 387, 'https://yanxuan.nosdn.127.net/7de21d869a06cec111430043e9476807.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (438, 388, 'https://yanxuan.nosdn.127.net/0b6dacaa8a042d32aba41eba382831fe.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (439, 389, 'https://yanxuan.nosdn.127.net/d848bb60aebae7cad32bf1b3ad20eec5.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (440, 390, 'https://yanxuan.nosdn.127.net/82d0bb3c13ebb8c12759a604ebfecf46.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (441, 390, 'https://yanxuan.nosdn.127.net/8830ef8eed5b08626e5d63bd18ca2511.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (442, 391, 'https://yanxuan.nosdn.127.net/977b2150ba8d0eb116fe28d5007be2b7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (443, 391, 'https://yanxuan.nosdn.127.net/e146d5dd0edcede5bc6e34ad4fb7705d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (444, 393, 'https://yanxuan.nosdn.127.net/fbfd0741f4296cd6ef8494703f2012a4.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (445, 394, 'https://yanxuan.nosdn.127.net/af231880521c66710957202477b0d00b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (446, 395, 'https://yanxuan.nosdn.127.net/34ab034f68d41a1c929e05616f17c5e5.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (447, 395, 'https://yanxuan.nosdn.127.net/fb330041a2215d63a6dda00d0d1f74f7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (448, 395, 'https://yanxuan.nosdn.127.net/0e05c2b6991b08e0c57df46588a93392.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (449, 395, 'https://yanxuan.nosdn.127.net/d941f8ca89634db5b8b32ab435b5034a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (450, 396, 'https://yanxuan.nosdn.127.net/e7be56d46a0076091e873413d5b7f630.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (451, 396, 'https://yanxuan.nosdn.127.net/72bf1ac2cab80221b79cf4d49d2deae3.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (452, 396, 'https://yanxuan.nosdn.127.net/f9fb4f6cf50bd3097004f4bd2cbcb91f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (453, 397, 'https://yanxuan.nosdn.127.net/3efd90c51ccb43ff93d23d96b156ab7a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (454, 398, 'https://yanxuan.nosdn.127.net/db5f2acb16b53aa0ee0dacd9ebf7a572.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (455, 399, 'https://yanxuan.nosdn.127.net/d276cf117e469d6f594889a517536d8d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (456, 399, 'https://yanxuan.nosdn.127.net/9e5ab36536442c1cf5d908151c8ef658.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (457, 399, 'https://yanxuan.nosdn.127.net/e280fe74f962b7cc9efbb07fa10050d2.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (458, 399, 'https://yanxuan.nosdn.127.net/39ba6fa7d9e810104bc050b59b293cae.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (459, 400, 'https://yanxuan.nosdn.127.net/9acc2457fae7b44f46cbf38dfc46a207.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (460, 401, 'https://yanxuan.nosdn.127.net/00fb73c8a948f8079217a24c80d43ca2.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (461, 402, 'https://yanxuan.nosdn.127.net/bff23e525e949e872b930e710d08ccc8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (462, 402, 'https://yanxuan.nosdn.127.net/e838d02a8dbe90a22e3d552dcc873118.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (463, 403, 'https://yanxuan.nosdn.127.net/22b0065c003aa2e567870cef17292b2f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (464, 404, 'https://yanxuan.nosdn.127.net/7a729ed5625387171597be75d99d82b7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (465, 405, 'http://yanxuan.nosdn.127.net/4a066e86af7fae026b8bfc1d4acd26d3.png', 5);
INSERT INTO `nideshop_comment_picture` VALUES (466, 406, 'https://yanxuan.nosdn.127.net/034359a1d899f2e3de6666a987284704.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (467, 407, 'https://yanxuan.nosdn.127.net/f2ff354d8d573ef7265a04b3213b0657.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (468, 408, 'https://yanxuan.nosdn.127.net/9e0e131d1c9ac1694a4a21d95f10d13c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (469, 409, 'https://yanxuan.nosdn.127.net/f878ae2a2c8950d11d35fcf93115968d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (470, 409, 'https://yanxuan.nosdn.127.net/bc5fd9cf526fd74cec4ac931369dc9b4.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (471, 410, 'https://yanxuan.nosdn.127.net/110d61a1bb10ab2c1273859589e06aaa.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (472, 411, 'https://yanxuan.nosdn.127.net/a76de192aa1df77f12336275abc705a9.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (473, 412, 'https://yanxuan.nosdn.127.net/0fbb7573e64ebf5db125401fb129403d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (474, 412, 'https://yanxuan.nosdn.127.net/f56dcadfa362b6e53239ebc91753aba8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (475, 412, 'https://yanxuan.nosdn.127.net/bed16cde08d5035a14bc2cb2fab9376b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (476, 413, 'https://yanxuan.nosdn.127.net/c634bca55395e106ed9d9e73f15e2b23.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (477, 414, 'https://yanxuan.nosdn.127.net/4d74146663ff6bf900ad47f1843bf451.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (478, 415, 'https://yanxuan.nosdn.127.net/04ede9f5591458715b3cf4013edf5239.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (479, 416, 'https://yanxuan.nosdn.127.net/20842408304e34045e2c5c95d98657da.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (480, 417, 'https://yanxuan.nosdn.127.net/efa79ae21d5235c277d6e2b14eb67d76.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (481, 418, 'https://yanxuan.nosdn.127.net/70318a0f18f00cc63294f4d0f865c1a0.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (482, 419, 'https://yanxuan.nosdn.127.net/154652fd3dfbe7ad2d1414f280518be9.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (483, 420, 'https://yanxuan.nosdn.127.net/143711134f3cb97409ddcd1e19d67956.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (484, 423, 'https://yanxuan.nosdn.127.net/40e4859453a6cfaa129fbb740f335cc7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (485, 424, 'https://yanxuan.nosdn.127.net/46e9a8a98f52712c49871e60d706d79c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (486, 425, 'https://yanxuan.nosdn.127.net/d6c2b3a13609142f36bb8f58984e82e6.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (487, 425, 'https://yanxuan.nosdn.127.net/e343c8d89cea3e513b0335e8adcddb65.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (488, 426, 'https://yanxuan.nosdn.127.net/c9da1feb565f8d0aa7c7fb2804b700f1.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (489, 427, 'https://yanxuan.nosdn.127.net/de21e4f108b4802ae9c0c29fe93ef606.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (490, 427, 'https://yanxuan.nosdn.127.net/1e5877efb64d03264d86fd7cecf5a16b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (491, 427, 'https://yanxuan.nosdn.127.net/433a70e334bcc9b42aa9dd6e37ae5223.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (492, 428, 'https://yanxuan.nosdn.127.net/d6f4939f66356b71139914724d99378d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (493, 428, 'https://yanxuan.nosdn.127.net/1fff5064bd1c6a9663a2e78e49e0b2fa.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (494, 429, 'https://yanxuan.nosdn.127.net/deaac3830cc1b39f4036aad11481911d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (495, 430, 'https://yanxuan.nosdn.127.net/fabdf1c9e3502a4a7880ab62234c4b08.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (496, 431, 'https://yanxuan.nosdn.127.net/b88cfd6f084f637f3c384282b377693f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (497, 432, 'https://yanxuan.nosdn.127.net/39827391676935a0b5b438063217e650.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (498, 433, 'https://yanxuan.nosdn.127.net/2def98a9ebeb2ab21928ef22de8969e9.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (499, 434, 'https://yanxuan.nosdn.127.net/dc4abe070c7d90fa1567b5a102259445.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (500, 435, 'https://yanxuan.nosdn.127.net/46de2bb73159a6d39e2486aba890b43e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (501, 436, 'https://yanxuan.nosdn.127.net/38519811d2a30ef63cd9a5347ec1d21f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (502, 436, 'https://yanxuan.nosdn.127.net/d01f3c7c39febd471ce3051097ddffed.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (503, 437, 'https://yanxuan.nosdn.127.net/6b8f525cf1190b213c75b3c041724f98.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (504, 438, 'https://yanxuan.nosdn.127.net/1be7ecf2c80c3e1d5ed273fc4a6b1d05.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (505, 438, 'https://yanxuan.nosdn.127.net/3781e0e8f999e6ffaebd116a63b092e4.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (506, 439, 'https://yanxuan.nosdn.127.net/89b164312caa1ab479d4d4776754d64f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (507, 440, 'https://yanxuan.nosdn.127.net/8387a4c36cf221875e442ff79ee8e2d7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (508, 440, 'https://yanxuan.nosdn.127.net/668a9e7d80a55d6182b1fa831bd7ca10.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (509, 440, 'https://yanxuan.nosdn.127.net/a244df8022193c5dcf240c509349af39.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (510, 441, 'https://yanxuan.nosdn.127.net/9fa9b008ee0cd8ca7d0cb8d5a374a3f9.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (511, 441, 'https://yanxuan.nosdn.127.net/a740874a93fb86758e9bfc6ce5edcc07.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (512, 442, 'https://yanxuan.nosdn.127.net/2fc64ae459ba627b350058cd2a9fcd9a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (513, 443, 'https://yanxuan.nosdn.127.net/d5c64c787daf196c781ce89c212161de.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (514, 444, 'https://yanxuan.nosdn.127.net/f88dc1f34457cd746bf69d56f9007864.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (515, 444, 'https://yanxuan.nosdn.127.net/d1869783fac3c7ba1eb25cbd79c7d8fb.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (516, 444, 'https://yanxuan.nosdn.127.net/5ba061e6048ff7cf3ffc86c736b73fe7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (517, 445, 'https://yanxuan.nosdn.127.net/351d16f83bbc87c7e95a730d5a939f0b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (518, 446, 'http://yanxuan.nosdn.127.net/8c57c950d9ffb76b895b80a7fe1acab7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (519, 446, 'http://yanxuan.nosdn.127.net/ab9303135e7a016c4d06129e44075d37.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (520, 446, 'http://yanxuan.nosdn.127.net/b4c0519875ccf2927f53027b603644a8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (521, 447, 'http://yanxuan.nosdn.127.net/c47fef50da78c59ae95e40c4a602e5fc.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (522, 448, 'http://yanxuan.nosdn.127.net/eab951dd532a3f2e05fb707e2e9895c7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (523, 448, 'http://yanxuan.nosdn.127.net/efb925c430e3983e289a6b93cb41e0df.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (524, 448, 'http://yanxuan.nosdn.127.net/c417161df96586b583f99958cb572a42.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (525, 449, 'https://yanxuan.nosdn.127.net/19e929005c199443ee3a16c011941670.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (526, 449, 'https://yanxuan.nosdn.127.net/431da993fcc0eb5b4f769b1fe732d7e1.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (527, 450, 'https://yanxuan.nosdn.127.net/3809b558a500ff7f003dae2bf1c24d01.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (528, 450, 'https://yanxuan.nosdn.127.net/f8d0f0c1d7d06cbb6eb4186ae4e01ac8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (529, 452, 'https://yanxuan.nosdn.127.net/920e65862ada7abdc90a557bb52bb5a9.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (530, 453, 'https://yanxuan.nosdn.127.net/2b605f9207ed20a204657239b7e3aa54.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (531, 453, 'https://yanxuan.nosdn.127.net/0537d635b0681d808a49c938eb1e5bd0.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (532, 453, 'https://yanxuan.nosdn.127.net/3fc181758d5f01eec774fee18eb504cf.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (533, 453, 'https://yanxuan.nosdn.127.net/f49797d3383f97f5943e625c1f0f1d91.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (534, 454, 'https://yanxuan.nosdn.127.net/df6d961b8b7fb26fae2e88535de262c6.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (535, 454, 'https://yanxuan.nosdn.127.net/89fb73ced773b39fab4082c11ab58673.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (536, 455, 'https://yanxuan.nosdn.127.net/7498e2940b28af120cd0ec92a0c66638.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (537, 456, 'https://yanxuan.nosdn.127.net/dd77d62b07a89101bc5a0a1ebc6957cc.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (538, 457, 'https://yanxuan.nosdn.127.net/376436f6099e0fa98a7f9ec27af993cb.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (539, 457, 'https://yanxuan.nosdn.127.net/e0986515721ad7aba8a4788c1eed0a02.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (540, 458, 'https://yanxuan.nosdn.127.net/f407f00c3a782907f3bd947597f1ea4b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (541, 459, 'https://yanxuan.nosdn.127.net/3cfd42b6bbb132b7c28b169711bd4a18.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (542, 460, 'https://yanxuan.nosdn.127.net/e00891ae79fe658b8e3de2917205015f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (543, 461, 'https://yanxuan.nosdn.127.net/1e22290cbe14a2e98441939baab3cf58.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (544, 462, 'https://yanxuan.nosdn.127.net/2a68e9bbc4d675c1bd723a5338a82528.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (545, 462, 'https://yanxuan.nosdn.127.net/a0cb6796e54659385946120e430dae59.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (546, 462, 'https://yanxuan.nosdn.127.net/4392e767d216022e5359b7709a5ae3b9.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (547, 463, 'https://yanxuan.nosdn.127.net/05d02da308e3989c9fca0d5f4896a72b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (548, 464, 'https://yanxuan.nosdn.127.net/0c5620ccad56f071205697e37885fd62.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (549, 465, 'https://yanxuan.nosdn.127.net/061ae0703caf5ebadccc08eea088fdf8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (550, 466, 'https://yanxuan.nosdn.127.net/bd13195748611dd22bba00b6a194f980.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (551, 467, 'http://yanxuan.nosdn.127.net/d51d8ca125798583b4c317d4918b8e0a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (552, 467, 'http://yanxuan.nosdn.127.net/635d93871385e2fc2c6fc6eee1f8c383.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (553, 467, 'http://yanxuan.nosdn.127.net/5cc284cb123784f42d8ffeb342ac0e08.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (554, 467, 'http://yanxuan.nosdn.127.net/9c4ecd1c979ea4c518dd013bee05b711.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (555, 468, 'http://yanxuan.nosdn.127.net/bfa855a97f4c260766d2d949f5a4623f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (556, 469, 'https://yanxuan.nosdn.127.net/adeb8c4ce257ce5ed8b42ad926bf2f39.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (557, 469, 'https://yanxuan.nosdn.127.net/f3cbccb526b8bfe70f19fd8dc6474cac.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (558, 469, 'https://yanxuan.nosdn.127.net/edfe4f2f59733f47420044ec803d3511.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (559, 470, 'https://yanxuan.nosdn.127.net/9c5d81d2e894be9a2edf15e4ffce5c86.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (560, 471, 'https://yanxuan.nosdn.127.net/55eda2d46e781602fe1732ab087dd6ec.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (561, 472, 'http://yanxuan.nosdn.127.net/ac7f99a0d6ed0630595896754d22ecaa.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (562, 472, 'http://yanxuan.nosdn.127.net/6c2c98716fc61299d19be8d1484f95e2.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (563, 472, 'http://yanxuan.nosdn.127.net/a755022c0d6fe33716aea91aad8eb752.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (564, 472, 'http://yanxuan.nosdn.127.net/729e5d7f1424d8b43873f7fa33d1ad6d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (565, 473, 'https://yanxuan.nosdn.127.net/aca9c69d3b7c13312dbd3a37509b51c3.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (566, 474, 'https://yanxuan.nosdn.127.net/84d494d5b7f0c28a326c8092ee1a55ea.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (567, 475, 'http://yanxuan.nosdn.127.net/f54ba5cceada35bd0afc275760ebbac0.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (568, 476, 'https://yanxuan.nosdn.127.net/f2bded32842321014e42237e44e354f8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (569, 477, 'http://yanxuan.nosdn.127.net/e6ba6f9d97f304ca62d417fec4a3fbde.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (570, 478, 'https://yanxuan.nosdn.127.net/ba5d1d8c134420dc12044b34f5124f7b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (571, 479, 'https://yanxuan.nosdn.127.net/c5af0a8d29ab91608dc382026cf28b7f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (572, 480, 'https://yanxuan.nosdn.127.net/3248f4e4255c42604a0434417c086831.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (573, 481, 'https://yanxuan.nosdn.127.net/3743c2d0fb230661399466105afb5d7a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (574, 482, 'http://yanxuan.nosdn.127.net/62c27ea54e33932e563afeec1c476241.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (575, 483, 'https://yanxuan.nosdn.127.net/1754d66ddacaa93156bfe018a46d3762.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (576, 484, 'https://yanxuan.nosdn.127.net/244f35238f3e8a49444d51f71faf6e62.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (577, 485, 'https://yanxuan.nosdn.127.net/c57a8dc16113bd7c01a3d707cb97f7db.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (578, 485, 'https://yanxuan.nosdn.127.net/d5afdb995c94d703f890237c92e7c2bc.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (579, 486, 'https://yanxuan.nosdn.127.net/7b4d2e62598b06a44588bd522f3da4d8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (580, 487, 'https://yanxuan.nosdn.127.net/2ea24ad589d12d7ad7764069000436f9.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (581, 488, 'https://yanxuan.nosdn.127.net/cffd147b1f0565d02b985f79ccf25636.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (582, 489, 'http://yanxuan.nosdn.127.net/cd1ae96536d55fcafb5d3707c0a3479e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (583, 490, 'http://yanxuan.nosdn.127.net/8a339c4213d38c26e7434d904b7ef44e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (584, 490, 'http://yanxuan.nosdn.127.net/0987c789450e8578e8771182cc4f8b74.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (585, 491, 'http://yanxuan.nosdn.127.net/e121edd11baa997bf99ce28ecd9c57d1.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (586, 491, 'http://yanxuan.nosdn.127.net/73a22cd09dcce6c143bf13ed2d87f411.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (587, 491, 'http://yanxuan.nosdn.127.net/666d89f0b2f8082b853bcc85b05f80f8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (588, 492, 'http://yanxuan.nosdn.127.net/3295e86831e58a547c9d02af398ebdf2.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (589, 493, 'http://yanxuan.nosdn.127.net/d501148d4be2683fc216f4820587aa19.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (590, 494, 'http://yanxuan.nosdn.127.net/38173cfe72e6a3c7399fd9bce2b1a508.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (591, 494, 'http://yanxuan.nosdn.127.net/6c1c7dcdcb8a3d67c46859b81fcd54fb.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (592, 494, 'http://yanxuan.nosdn.127.net/4975a8cd6eaeccb64104190cebe83fef.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (593, 495, 'http://yanxuan.nosdn.127.net/849ce52f9c5eb124a4e309b04f8ad455.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (594, 496, 'http://yanxuan.nosdn.127.net/720c372249378c53e24d952c8e4b371d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (595, 496, 'http://yanxuan.nosdn.127.net/ce7617ebaca5705074401054626025e1.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (596, 497, 'http://yanxuan.nosdn.127.net/faea0a3bdf26a4976b9944979a0aac5e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (597, 498, 'http://yanxuan.nosdn.127.net/2208450720dd7bf51abacc8ac5d751ff.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (598, 499, 'http://yanxuan.nosdn.127.net/e6c3665c5b5cf77f306ad470473f63f9.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (599, 500, 'http://yanxuan.nosdn.127.net/3d30bd75af0cf2e5bca67650c85dc72c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (600, 501, 'http://yanxuan.nosdn.127.net/e424bc35c6e4eb4d31b58e06c4ff95f8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (601, 502, 'http://yanxuan.nosdn.127.net/b12ac1dea50b7293bfbd23957508fb17.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (602, 502, 'http://yanxuan.nosdn.127.net/1ce39f5f3618a0298ddbb8a02eda63ef.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (603, 502, 'http://yanxuan.nosdn.127.net/319bb56d8b76ed9dac75a0264b7332b4.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (604, 503, 'http://yanxuan.nosdn.127.net/1ee3507c19892c726bf817fdf4d808a8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (605, 511, 'https://yanxuan.nosdn.127.net/c9c5b3f9928980e9c9005e90fa569efb.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (606, 512, 'https://yanxuan.nosdn.127.net/06d74a02957e20cedca8c809a42d7114.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (607, 512, 'https://yanxuan.nosdn.127.net/373992f52f275ffc7eafcc7104a2b310.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (608, 512, 'https://yanxuan.nosdn.127.net/2bb835d88a0869ab3ef71eb823c0ca6f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (609, 512, 'https://yanxuan.nosdn.127.net/2524c9e01b537f6f47f775d6aef36af4.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (610, 513, 'https://yanxuan.nosdn.127.net/809fa35edcaae9a3c0b603e4f4418bef.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (611, 518, 'https://yanxuan.nosdn.127.net/ce1c368ebff8ab2c7b8bc93cb04942ef.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (612, 519, 'https://yanxuan.nosdn.127.net/7c750b62d6fb0c0f0783b5b87b346c4c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (613, 520, 'https://yanxuan.nosdn.127.net/f121df81266b5ead7cebc1631877ace6.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (614, 520, 'https://yanxuan.nosdn.127.net/5a22c27871fad83331c162755d0d1470.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (615, 521, 'https://yanxuan.nosdn.127.net/550e8928c05388e5b2a5b01283702fd8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (616, 522, 'https://yanxuan.nosdn.127.net/4fffdb82fa6ab43a6365c2029f6df519.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (617, 523, 'https://yanxuan.nosdn.127.net/34cdf7cb9c69a64fde058e68ca7982d2.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (618, 524, 'https://yanxuan.nosdn.127.net/8bf5549a93222415180503e0016cdded.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (619, 525, 'https://yanxuan.nosdn.127.net/8dc64013c5f2415d552975293b7ec31f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (620, 526, 'https://yanxuan.nosdn.127.net/1356367de183000f92789cb0cc1bd242.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (621, 526, 'https://yanxuan.nosdn.127.net/1e7a72baa7fee3723c0fb489161eda58.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (622, 526, 'https://yanxuan.nosdn.127.net/49678012c43a0c3537c4cd35b35471d1.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (623, 527, 'https://yanxuan.nosdn.127.net/94ec44fd7daea95d46f184ad3bb8a68a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (624, 528, 'https://yanxuan.nosdn.127.net/28d2de003efe4566a9bd1de3cd45b4f5.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (625, 528, 'https://yanxuan.nosdn.127.net/82c3cab9b69f61bcd50e5fbab3aa5baf.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (626, 529, 'https://yanxuan.nosdn.127.net/62fc3fa5cb0a0185277a1e0b53fb0b34.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (627, 530, 'https://yanxuan.nosdn.127.net/9fe8daa5581acff11096306b9607bb82.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (628, 531, 'https://yanxuan.nosdn.127.net/fb29b948cae39766c37fa3aa4f164d58.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (629, 532, 'https://yanxuan.nosdn.127.net/dabf8a152140604c8c033549f408e324.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (630, 532, 'https://yanxuan.nosdn.127.net/d404e0e3edf0eae7e80f12c6372bce94.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (631, 533, 'https://yanxuan.nosdn.127.net/49fbf82054a53d7a6176fc793ff57917.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (632, 534, 'http://yanxuan.nosdn.127.net/37334e62e1c8b53562768522bcbcc13f.png', 5);
INSERT INTO `nideshop_comment_picture` VALUES (633, 535, 'https://yanxuan.nosdn.127.net/f1d1f25800dd4e7a1406f18708c56950.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (634, 535, 'https://yanxuan.nosdn.127.net/162c475af76421c5bd4848cbbd29efaa.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (635, 535, 'https://yanxuan.nosdn.127.net/5498420b755644f1bd275152dd6716cf.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (636, 536, 'https://yanxuan.nosdn.127.net/4a354c99b743c91063f8f6cbc213220e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (637, 536, 'https://yanxuan.nosdn.127.net/f4d1aae3a27fc895fbdfe2598451e06f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (638, 537, 'https://yanxuan.nosdn.127.net/fc6844a7331ac8b7b07ae78e803a7d45.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (639, 538, 'https://yanxuan.nosdn.127.net/b56a20b9a282747a1047933e25ed94e9.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (640, 538, 'https://yanxuan.nosdn.127.net/e81787ee465b0804e1f320899d9bea6c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (641, 539, 'https://yanxuan.nosdn.127.net/bc8ccb8692e92a75c6dfe71664510830.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (642, 540, 'https://yanxuan.nosdn.127.net/9919d565b801e84addd8f68f44b61050.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (643, 543, 'https://yanxuan.nosdn.127.net/95c04489fe537931d46712efe33150b2.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (644, 544, 'https://yanxuan.nosdn.127.net/a161e2f52440acf5a3020b18b46cc8b1.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (645, 544, 'https://yanxuan.nosdn.127.net/ec0a51ff14b0a8643868f98e10c5fa4c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (646, 545, 'https://yanxuan.nosdn.127.net/d62c8e52b81ad641e840be162c4deeb4.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (647, 545, 'https://yanxuan.nosdn.127.net/3cf1977b037354dd9135b2924f01807e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (648, 546, 'https://yanxuan.nosdn.127.net/458788add98d177564744c1e64805aa6.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (649, 546, 'https://yanxuan.nosdn.127.net/ec32609a76df38733f1352b8279c19e1.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (650, 547, 'https://yanxuan.nosdn.127.net/09e6f7935abe6919fbb85c045453d649.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (651, 548, 'https://yanxuan.nosdn.127.net/97f82258d18ecb3bf33e13c8d1264522.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (652, 548, 'https://yanxuan.nosdn.127.net/9b1c323751b77840d8e01f82f10c7a3f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (653, 549, 'https://yanxuan.nosdn.127.net/dd235ed4c86af50dfffb08a11ee1b6d3.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (654, 550, 'http://yanxuan.nosdn.127.net/e5bad28ebdf9a355d38fbc5e55865b55.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (655, 550, 'http://yanxuan.nosdn.127.net/0dfcd3a55f00b6dcdce1e4bbb28b5981.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (656, 551, 'https://yanxuan.nosdn.127.net/a8d700cb145afb5238c59fadb917ecf2.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (657, 551, 'https://yanxuan.nosdn.127.net/1c07b35ae6d1211045289944c9062b1f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (658, 552, 'http://yanxuan.nosdn.127.net/171da27ecbbc4ad321f94d6e08a6cd9e.png', 5);
INSERT INTO `nideshop_comment_picture` VALUES (659, 553, 'http://yanxuan.nosdn.127.net/7b08d1772f9a8bf6b69e0d360c562396.png', 5);
INSERT INTO `nideshop_comment_picture` VALUES (660, 554, 'https://yanxuan.nosdn.127.net/99501eb64c85b80f8441bb29c7e0404d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (661, 554, 'https://yanxuan.nosdn.127.net/611b91b36cdf83550e8ff51519b70b71.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (662, 554, 'https://yanxuan.nosdn.127.net/3b5f7c7979f28313a9ed0b4c2e9d0935.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (663, 555, 'https://yanxuan.nosdn.127.net/1680a1a0d0f15461b45c7c7ddb0e286e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (664, 556, 'https://yanxuan.nosdn.127.net/58a4c9453b58c42961f84c668571a7ed.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (665, 557, 'http://yanxuan.nosdn.127.net/b7350262c6e28c90629e62c94371c35b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (666, 558, 'http://yanxuan.nosdn.127.net/8547f26652a6c2059b4e0a246a16209b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (667, 559, 'http://yanxuan.nosdn.127.net/c98335cc4cb2411d90e7a0b806412383.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (668, 560, 'http://yanxuan.nosdn.127.net/35e36e81f65499831b278b57909c23a5.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (669, 561, 'http://yanxuan.nosdn.127.net/1d269667e4726de78e50ab31eadb6195.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (670, 562, 'http://yanxuan.nosdn.127.net/2165d24376b3601a69fa527363ead10e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (671, 563, 'http://yanxuan.nosdn.127.net/e8fd89a7508fc53b83b7fba07e809a48.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (672, 563, 'http://yanxuan.nosdn.127.net/3794b5a39646825076be8ca906dd68f1.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (673, 564, 'http://yanxuan.nosdn.127.net/d10f75cea70f3c9deece05f45d5182cd.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (674, 565, 'http://yanxuan.nosdn.127.net/e4e1354ce6559657aea7262fe64c23be.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (675, 571, 'https://yanxuan.nosdn.127.net/a8a0454723859c92af1dc6a10272b535.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (676, 572, 'https://yanxuan.nosdn.127.net/b7e3e6d54808e7bc296699e41d597543.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (677, 572, 'https://yanxuan.nosdn.127.net/65e0859c700533fcc37ce691978ea68e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (678, 578, 'https://yanxuan.nosdn.127.net/c55679696d860ec563e18b366982d09e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (679, 578, 'https://yanxuan.nosdn.127.net/bd1fd4276a9bb4e770397ec227512225.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (680, 579, 'https://yanxuan.nosdn.127.net/abd45ff67391e8e176f7e503e75c4283.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (681, 580, 'https://yanxuan.nosdn.127.net/f3daf5ae597a91cbfe0ab36a603a716b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (682, 580, 'https://yanxuan.nosdn.127.net/d407a299c050a00bb3f8c19c1bbe5ce9.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (683, 580, 'https://yanxuan.nosdn.127.net/39584183f2fcaad576f84949ec7b6cfc.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (684, 581, 'https://yanxuan.nosdn.127.net/62571b423e27cd69ffb391457a5916de.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (685, 581, 'https://yanxuan.nosdn.127.net/e99535c6492b6c01bfc85b72872b2304.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (686, 581, 'https://yanxuan.nosdn.127.net/2c6c6a59044bed5367533b478d145430.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (687, 581, 'https://yanxuan.nosdn.127.net/b6e369f36cf152ebd7147644f7f70fd5.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (688, 582, 'https://yanxuan.nosdn.127.net/46e48ab353bddccec633f12b5a521121.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (689, 583, 'https://yanxuan.nosdn.127.net/94fb9d130db489471b7706e7156b9a21.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (690, 583, 'https://yanxuan.nosdn.127.net/1f1d98dc5095455b2689ca61c624057f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (691, 584, 'https://yanxuan.nosdn.127.net/06cc1e8d844bac13f1a86665200d7e06.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (692, 585, 'https://yanxuan.nosdn.127.net/62a25ab3e6125a6ffb4b805300025dbc.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (693, 585, 'https://yanxuan.nosdn.127.net/efc8416ff62cbdaaa1aff5a8554b2ebe.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (694, 585, 'https://yanxuan.nosdn.127.net/53f6044d48b5f83be9d35b23d738dd94.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (695, 586, 'https://yanxuan.nosdn.127.net/f2d4bf919bf85438207094e34f8ebffa.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (696, 586, 'https://yanxuan.nosdn.127.net/98968a2e332cba9ac0a6f80503fc4f6e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (697, 587, 'https://yanxuan.nosdn.127.net/08040bdcfc774498e07e0b13c4a6723d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (698, 588, 'https://yanxuan.nosdn.127.net/f110b82871829aac038e1fb510511c91.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (699, 589, 'https://yanxuan.nosdn.127.net/dda9a1c41db0001848bcbc2819af17ca.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (700, 590, 'https://yanxuan.nosdn.127.net/a3e192773af517323ee0ac09ef79ee84.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (701, 591, 'https://yanxuan.nosdn.127.net/a674065cd6ea8d9708e2105304fb95ca.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (702, 591, 'https://yanxuan.nosdn.127.net/b20a0f0e4722f7833d63c94c27ae7a11.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (703, 591, 'https://yanxuan.nosdn.127.net/2b5ae81d7182072323d4fd9bf4a5c6b4.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (704, 591, 'https://yanxuan.nosdn.127.net/04db196793abaf5b197abfafe4f5e702.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (705, 592, 'https://yanxuan.nosdn.127.net/7f1d3d8f3630374566ce945bcc5aed04.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (706, 593, 'https://yanxuan.nosdn.127.net/17fb23e441621e775c772c5c912023f0.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (707, 594, 'https://yanxuan.nosdn.127.net/237be23e775e718b5807c2e7821db508.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (708, 595, 'https://yanxuan.nosdn.127.net/262e60c88bb8c311ac2fe899e91d38a4.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (709, 595, 'https://yanxuan.nosdn.127.net/8d4e1d65263bcf6f9f9959a9be217bb8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (710, 596, 'https://yanxuan.nosdn.127.net/f86d9c02d903cda604d1b9d9fc76d8ef.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (711, 596, 'https://yanxuan.nosdn.127.net/787926f1b714f6f6b35c3da615b3a788.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (712, 597, 'https://yanxuan.nosdn.127.net/cfea23e4f65e5492d3f833e29559811c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (713, 598, 'https://yanxuan.nosdn.127.net/fe4048e0ab7956f7f09726705f972078.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (714, 599, 'https://yanxuan.nosdn.127.net/c29a35eff0c1f0c778c03d56d5ceb488.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (715, 600, 'https://yanxuan.nosdn.127.net/c1737ac2361f9e2aeda91382d35ca20e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (716, 601, 'https://yanxuan.nosdn.127.net/6d3a49740677455d0fb899267765e7dc.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (717, 601, 'https://yanxuan.nosdn.127.net/4982866d44171c1d1f376cad111d55f5.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (718, 602, 'https://yanxuan.nosdn.127.net/db0917423ddfc7d51127f3a4bfa67305.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (719, 603, 'https://yanxuan.nosdn.127.net/5d0b6d9aeac3e29dfe427792dd5fcd22.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (720, 604, 'https://yanxuan.nosdn.127.net/a56dfe21a69ad1f9f3bbccaa8ded7799.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (721, 604, 'https://yanxuan.nosdn.127.net/7aa1d24c5e2c5a8624d0390a6d170a31.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (722, 604, 'https://yanxuan.nosdn.127.net/96ee70bdf77d62f82b1ddc9989f10ad9.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (723, 604, 'https://yanxuan.nosdn.127.net/1f0398106b3e75f3e8fe0b85a051d937.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (724, 605, 'https://yanxuan.nosdn.127.net/f2754cd849fc7202daff2643bf2d8783.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (725, 606, 'https://yanxuan.nosdn.127.net/1b14d8c62aab87e8897e8534e8d08d30.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (726, 607, 'https://yanxuan.nosdn.127.net/5cd0ebe5edaab4fe0dd5a20beab9973f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (727, 608, 'https://yanxuan.nosdn.127.net/e02ca8a637c311e2d8a7c93a683e9d20.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (728, 608, 'https://yanxuan.nosdn.127.net/ea78ba8241e4e0bf8bbe5038da19a72a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (729, 608, 'https://yanxuan.nosdn.127.net/ad662ac8a06d7ef7a3c66a0317cb6ccf.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (730, 609, 'http://yanxuan.nosdn.127.net/5cc5f18c584d773fae633b6563b8713e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (731, 609, 'http://yanxuan.nosdn.127.net/4afc42f76816931ea4bd6bac28625289.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (732, 610, 'http://yanxuan.nosdn.127.net/74493d3423183023fc617aa2b14345d5.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (733, 610, 'http://yanxuan.nosdn.127.net/14e196fbca9e656ffd2456e636221d51.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (734, 611, 'http://yanxuan.nosdn.127.net/b3463ea8bc10368ee81b829fe11bd487.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (735, 612, 'http://yanxuan.nosdn.127.net/1281ddf340551bcdd484388fe46be141.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (736, 627, 'https://yanxuan.nosdn.127.net/4f82acbd3717611306137018282047fe.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (737, 631, 'https://yanxuan.nosdn.127.net/60ea9abdc146361d85c23d25502d63b6.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (738, 631, 'https://yanxuan.nosdn.127.net/052f9f4432392c7c218a1534902acefa.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (739, 634, 'https://yanxuan.nosdn.127.net/a8d21e18d3902010ddf5d01bfa546e78.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (740, 634, 'https://yanxuan.nosdn.127.net/9ba7a9fbb56fa85a94bfbbf3540c6c96.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (741, 634, 'https://yanxuan.nosdn.127.net/976c474e5bbc687467b8b27a5b9a0796.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (742, 634, 'https://yanxuan.nosdn.127.net/4f517fd870b2fa0b0d0577baf9b951a3.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (743, 635, 'https://yanxuan.nosdn.127.net/9cdaf0bda6c875f8ba9e1baf17b4df2f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (744, 636, 'https://yanxuan.nosdn.127.net/5638b05b2f7f0c3c4605878bbe8d5dff.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (745, 636, 'https://yanxuan.nosdn.127.net/2b628823d155af9a6e2cb27f1dbc057b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (746, 637, 'https://yanxuan.nosdn.127.net/9d41ed14d278a29f3284135b5eaaab1c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (747, 638, 'https://yanxuan.nosdn.127.net/dbfb7913eb778363595004e18765e5c8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (748, 639, 'https://yanxuan.nosdn.127.net/a6a5a04bbcf72df70a24e8d13eca060c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (749, 640, 'https://yanxuan.nosdn.127.net/ece318e743ceaa23149f772ba6031b03.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (750, 641, 'https://yanxuan.nosdn.127.net/134049bd13f120c24450b268f02b08ec.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (751, 642, 'https://yanxuan.nosdn.127.net/5494f065d611215430847bcd2c463057.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (752, 643, 'https://yanxuan.nosdn.127.net/16f8f015384610efe99154e7643a83b6.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (753, 644, 'https://yanxuan.nosdn.127.net/0ea2b71863166f483e0b7210229caa9f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (754, 644, 'https://yanxuan.nosdn.127.net/3ec26a344972521786d0bbc531ebece7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (755, 645, 'https://yanxuan.nosdn.127.net/d65b9d64714ae14745e54e862232f3a6.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (756, 646, 'https://yanxuan.nosdn.127.net/1131321e97086a8f36adf9e9fc9b8efe.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (757, 646, 'https://yanxuan.nosdn.127.net/789b8b698d5ed987956fa04842cccd99.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (758, 647, 'https://yanxuan.nosdn.127.net/bd36e5e737766d6038cbedf78d9b4104.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (759, 647, 'https://yanxuan.nosdn.127.net/d050def0183e7ff1a2d5719b01c3e770.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (760, 648, 'https://yanxuan.nosdn.127.net/61a8235883d29885426a1b46a26c198a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (761, 649, 'https://yanxuan.nosdn.127.net/51764b9aad0eb2c1c9f63c04f426c372.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (762, 650, 'https://yanxuan.nosdn.127.net/1510fc4f3cb6ad70c7a6d5c800ef3582.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (763, 650, 'https://yanxuan.nosdn.127.net/b070ad49f34eb7230526be131e90e37f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (764, 650, 'https://yanxuan.nosdn.127.net/846c2c947b1e16ea48fe45eaf10ba8d5.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (765, 650, 'https://yanxuan.nosdn.127.net/1b21db23cf0b66204f995b03f6599ac3.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (766, 651, 'https://yanxuan.nosdn.127.net/2db07c73bd33799d9faa0f81c2effa08.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (767, 651, 'https://yanxuan.nosdn.127.net/3cdfaf928cc82ed8bb4393b16503e1fc.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (768, 651, 'https://yanxuan.nosdn.127.net/90ffc9ac073531cf5c916e23dda1f801.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (769, 652, 'https://yanxuan.nosdn.127.net/2b09774e999d31164adabddc65136476.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (770, 652, 'https://yanxuan.nosdn.127.net/c810a49af0e195e8c58bbae9f988edb4.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (771, 653, 'https://yanxuan.nosdn.127.net/842ac31942b2629b04f799a77a0f3ba8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (772, 654, 'https://yanxuan.nosdn.127.net/d26629d083fa34b55edc6468c86b59a2.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (773, 654, 'https://yanxuan.nosdn.127.net/0a448cad97e277cc274ad92b855e38ee.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (774, 655, 'https://yanxuan.nosdn.127.net/7f392750ace1fa1423d4bf233c3bde0a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (775, 656, 'https://yanxuan.nosdn.127.net/be868b285026c4671db000ca77457972.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (776, 657, 'http://yanxuan.nosdn.127.net/f39999946017eef65aab38260e08de8d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (777, 658, 'http://yanxuan.nosdn.127.net/82a3e6a6e3fcced4a597d4edb0ad62a2.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (778, 658, 'http://yanxuan.nosdn.127.net/30874df735f1db24229b318896c6747a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (779, 659, 'http://yanxuan.nosdn.127.net/9afaacec380dc7d203b427e070b3aa54.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (780, 659, 'http://yanxuan.nosdn.127.net/da4b6a08cce4d8a10e21d91c2d6f3de0.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (781, 660, 'http://yanxuan.nosdn.127.net/18cf5680b41bb410bfc88cbc5e06d9f8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (782, 660, 'http://yanxuan.nosdn.127.net/5a851b672f640a4d1cd4f96730fc7046.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (783, 661, 'https://yanxuan.nosdn.127.net/9f75d85a4bd001818fa4f2a8f2c29e3c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (784, 662, 'https://yanxuan.nosdn.127.net/2dd23da488a4d07fb2b64cc3d2c4e806.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (785, 663, 'https://yanxuan.nosdn.127.net/7a0e7b7df09c42762e972d557dc534a4.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (786, 664, 'https://yanxuan.nosdn.127.net/35e37bc6928c93a631f2b3b1740ff372.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (787, 664, 'https://yanxuan.nosdn.127.net/6398bcdc7436ebe90109b240079f712c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (788, 665, 'https://yanxuan.nosdn.127.net/e6e70b7625ac4bf13f5a1d04857d1db8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (789, 665, 'https://yanxuan.nosdn.127.net/f204578c9da9828343296c2d4eb45946.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (790, 666, 'https://yanxuan.nosdn.127.net/30b40a6fade9533e1bc2afe208f050c8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (791, 667, 'https://yanxuan.nosdn.127.net/6064876ae6e9ebfaf9c9ec0e5f35dab7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (792, 668, 'https://yanxuan.nosdn.127.net/cca672a276c7835243a70d7fc1aac70d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (793, 669, 'https://yanxuan.nosdn.127.net/cb1fcaa7bc69a55ae0c474248ce962f3.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (794, 670, 'https://yanxuan.nosdn.127.net/3caebeae559571fd6478426f7dd767bf.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (795, 671, 'https://yanxuan.nosdn.127.net/cce740576b97af0812f1df57eee9813f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (796, 671, 'https://yanxuan.nosdn.127.net/40541e1761b33eeaa454580437942813.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (797, 672, 'https://yanxuan.nosdn.127.net/c70a8cd8eff8dbd8360cc55fce9f43c1.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (798, 673, 'https://yanxuan.nosdn.127.net/c5408297544de75b1abdea6fba6a2aa7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (799, 673, 'https://yanxuan.nosdn.127.net/5419af51367403ced87cecaef018678f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (800, 674, 'https://yanxuan.nosdn.127.net/235cb2276828b8620f5d9f812b74d277.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (801, 674, 'https://yanxuan.nosdn.127.net/7f6bbe6232b289dc9e075ae8c089f633.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (802, 674, 'https://yanxuan.nosdn.127.net/ef3726418b70741be8fcd221bb24ffeb.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (803, 675, 'https://yanxuan.nosdn.127.net/dc27105cf7ef60cf15f47550a9ad5a1e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (804, 676, 'https://yanxuan.nosdn.127.net/52c7bae9d4476b2a7588003ef486358d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (805, 677, 'https://yanxuan.nosdn.127.net/c3bab17fb65e36810867c2e62958084f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (806, 678, 'https://yanxuan.nosdn.127.net/fbc3e351a1c14d0ef70d53909f749f86.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (807, 679, 'https://yanxuan.nosdn.127.net/c72264ef9edaf220b555c4073b60896d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (808, 680, 'https://yanxuan.nosdn.127.net/9bc7321e6cab101eeb80f7cf81d6bf62.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (809, 681, 'https://yanxuan.nosdn.127.net/89179186775daf9833d49a0c77d07a6c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (810, 682, 'https://yanxuan.nosdn.127.net/5fe2399928dd3c90a4c8841d5668dd78.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (811, 683, 'https://yanxuan.nosdn.127.net/6cae0aa81bc1a0244a116a4abf3839a5.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (812, 684, 'https://yanxuan.nosdn.127.net/a38a9bdd3eb2bef7706a478fb73ceb83.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (813, 684, 'https://yanxuan.nosdn.127.net/7784023ce0d3d8f661d977b59f4679eb.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (814, 685, 'https://yanxuan.nosdn.127.net/e0ca28bce4d92eedb239ea60ac99260c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (815, 685, 'https://yanxuan.nosdn.127.net/2858a6c28f2c6f6402fad39069ae48a3.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (816, 685, 'https://yanxuan.nosdn.127.net/427431006fefeca537e61d37940147c3.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (817, 686, 'https://yanxuan.nosdn.127.net/7a7884f4863abe114ee2f4faad1b364f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (818, 686, 'https://yanxuan.nosdn.127.net/fd739b388596b39039f2a695147ee5ac.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (819, 687, 'https://yanxuan.nosdn.127.net/e839eaa10c9c04e3b904c87182289cbe.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (820, 688, 'https://yanxuan.nosdn.127.net/075f10ce762b652b345c6682b537b2d7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (821, 689, 'https://yanxuan.nosdn.127.net/b801aef265eb9509204afc0609053372.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (822, 690, 'https://yanxuan.nosdn.127.net/8e91915bb739af606136a9fd73625adb.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (823, 691, 'https://yanxuan.nosdn.127.net/3bac7631effc2f0c3749b5a78b2edf27.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (824, 691, 'https://yanxuan.nosdn.127.net/bd7cf1d02ab7c112879239a161b36d85.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (825, 691, 'https://yanxuan.nosdn.127.net/8e22d927ded0f0bd170830f6bd65cdac.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (826, 691, 'https://yanxuan.nosdn.127.net/e704b49044b98e3cbc9d46f399a5e06e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (827, 692, 'https://yanxuan.nosdn.127.net/062e060a5bf6708a8765c1f7ee2cbe58.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (828, 692, 'https://yanxuan.nosdn.127.net/883d1f066fb7d502b775d042244ee248.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (829, 692, 'https://yanxuan.nosdn.127.net/5e9bb9c40eee150c3f5e6db90ca0eae5.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (830, 692, 'https://yanxuan.nosdn.127.net/d25f2738b9dfb101cabc6ffbf8e643a2.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (831, 693, 'https://yanxuan.nosdn.127.net/83bac5372bb94d285a9b7cb7244bacbd.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (832, 693, 'https://yanxuan.nosdn.127.net/42a8e3a6f1e7102ab4155c3fc89f7a1a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (833, 694, 'https://yanxuan.nosdn.127.net/fed84f99370c5c3be71b3822ebd9b93a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (834, 695, 'https://yanxuan.nosdn.127.net/06a0bc6b753239b72a5806b780948a49.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (835, 696, 'https://yanxuan.nosdn.127.net/ae535db21f5b4bcb21a357aef1bd20d8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (836, 697, 'https://yanxuan.nosdn.127.net/f21092b191df521b7b166187c5a483d9.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (837, 698, 'https://yanxuan.nosdn.127.net/15fd0d9fcafa149985f2ea482ec40dc2.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (838, 699, 'https://yanxuan.nosdn.127.net/53cddbfd559e0b7a592b60ebdaff209c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (839, 700, 'https://yanxuan.nosdn.127.net/05ab9dc44e3e145095435c8e053aaa0a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (840, 701, 'https://yanxuan.nosdn.127.net/cd1e68034831bcaedbadf662e8c2acd6.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (841, 702, 'http://yanxuan.nosdn.127.net/9568f7b3475d7a661eece12a6adbb962.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (842, 702, 'http://yanxuan.nosdn.127.net/e0503f144ae9ecd630c7316c0edb1f81.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (843, 702, 'http://yanxuan.nosdn.127.net/788d59055a27ae9ea96aca198e524170.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (844, 702, 'http://yanxuan.nosdn.127.net/c3538d8bb6a0d8dbe3abb3676d2a515d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (845, 703, 'http://yanxuan.nosdn.127.net/81cc392a3c8da91d00b655f56e215e49.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (846, 704, 'http://yanxuan.nosdn.127.net/4085c4e87b6d016cf857dd1582ba7a97.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (847, 705, 'http://yanxuan.nosdn.127.net/b5d40bf84c572224c6ad65b90899a79b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (848, 705, 'http://yanxuan.nosdn.127.net/264911e117b8a5ea5ed829b10783e48e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (849, 705, 'http://yanxuan.nosdn.127.net/0a3f0c41104fe3f681c4dd2aca9e949e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (850, 705, 'http://yanxuan.nosdn.127.net/87611d9d17d3ab7a46f60ce52e6c9cd8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (851, 706, 'https://yanxuan.nosdn.127.net/bcd07ba53cca44579466390a69855974.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (852, 707, 'http://yanxuan.nosdn.127.net/0677ec012ea010f8335c26d31512297d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (853, 708, 'https://yanxuan.nosdn.127.net/966f53e8781775f05a252f6bc6b899ee.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (854, 709, 'http://yanxuan.nosdn.127.net/cd7a4c223497c3f438adaa4a9ee1fae5.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (855, 710, 'http://yanxuan.nosdn.127.net/5475a1f79f787cdded23be7b6f413e19.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (856, 711, 'http://yanxuan.nosdn.127.net/0da9ce2de0ee9efcce4fbae5777d9075.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (857, 712, 'http://yanxuan.nosdn.127.net/f686c636292c742f83cab009f7d177d4.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (858, 712, 'http://yanxuan.nosdn.127.net/9d6c10a99e5316ef24443644de76bc13.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (859, 712, 'http://yanxuan.nosdn.127.net/8063a9ad43c8b2f3a6175772ade87a64.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (860, 712, 'http://yanxuan.nosdn.127.net/0aa52522dac9fc1a42cb7cbf7a9db0f5.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (861, 713, 'http://yanxuan.nosdn.127.net/be62a63f1d1f34344eafc4a9439cda09.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (862, 714, 'http://yanxuan.nosdn.127.net/45b0c3696557aa9171b8b3b0e5b9db05.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (863, 714, 'http://yanxuan.nosdn.127.net/5bfcb3bd63a0f8d7203781a06b242cd0.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (864, 715, 'http://yanxuan.nosdn.127.net/0e8fdb5e2d9aff68348b7adf76cc82ea.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (865, 715, 'http://yanxuan.nosdn.127.net/f583550776bf9e65a834a2f5829717eb.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (866, 715, 'http://yanxuan.nosdn.127.net/b1f5c3b311732bcfc159efc6e2e61e2b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (867, 716, 'http://yanxuan.nosdn.127.net/0a36510f3e91726808658629e2c87139.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (868, 717, 'http://yanxuan.nosdn.127.net/a29520b9a2ebe870e544a035e100a963.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (869, 718, 'http://yanxuan.nosdn.127.net/9e9a5eea34c3027b949b6a389a8dafc6.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (870, 718, 'http://yanxuan.nosdn.127.net/10f594c0d0110cc274b16ef69183dd5e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (871, 718, 'http://yanxuan.nosdn.127.net/bef0054faf1abe16d1f1acd20909acb6.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (872, 718, 'http://yanxuan.nosdn.127.net/b2b40c71d4828263aada7c4fd9a7addc.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (873, 719, 'http://yanxuan.nosdn.127.net/08f9f3defacb5e292d1edfb5ed06bdf5.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (874, 719, 'http://yanxuan.nosdn.127.net/d4dbbd3c5e1e811b28b136ba23b41dfd.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (875, 719, 'http://yanxuan.nosdn.127.net/7cfb477cc26bf4e2cf5c551b73e785a7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (876, 720, 'http://yanxuan.nosdn.127.net/5899097cd481fc58c9b89c80d522ddc1.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (877, 720, 'http://yanxuan.nosdn.127.net/8e22c2851bbab5d6fa3f158b784d9dc2.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (878, 721, 'https://yanxuan.nosdn.127.net/6170afd3f89cc8497f883e04fcb745db.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (879, 725, 'https://yanxuan.nosdn.127.net/3c5683a1ba3e71475ce10cf4dfa9538c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (880, 726, 'https://yanxuan.nosdn.127.net/5e7768781da0f976c058b69fc49584ee.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (881, 726, 'https://yanxuan.nosdn.127.net/2f4f59f8d7201a6984d130ecae76af41.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (882, 727, 'https://yanxuan.nosdn.127.net/e71aabbf15fadc6dfff0e3fc614d99b9.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (883, 728, 'https://yanxuan.nosdn.127.net/59f03bcc980dce726bc85d94cf889d46.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (884, 728, 'https://yanxuan.nosdn.127.net/7250913912c7400bd9978a4381adeab5.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (885, 729, 'https://yanxuan.nosdn.127.net/fe32dc20c222126372d44b77a707e414.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (886, 729, 'https://yanxuan.nosdn.127.net/8cae3963075ac4e1628fdc9bbd9781b5.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (887, 729, 'https://yanxuan.nosdn.127.net/89f5f7f71ecf8d3905f9e01d8fab0be6.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (888, 729, 'https://yanxuan.nosdn.127.net/4d002b7e1b797918d3e57f39ddbb16a1.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (889, 730, 'https://yanxuan.nosdn.127.net/bfc631af83e81eea39ac731229932cde.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (890, 731, 'https://yanxuan.nosdn.127.net/914b65d13dca66952ce479510bffea38.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (891, 732, 'https://yanxuan.nosdn.127.net/f0cc6c191b402c3d672af33fec94bad2.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (892, 733, 'https://yanxuan.nosdn.127.net/e960ba694a64bd325d1da1e2e645501a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (893, 733, 'https://yanxuan.nosdn.127.net/6d7888decc4dbff22cdbafcd4c2b832f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (894, 734, 'https://yanxuan.nosdn.127.net/20cdbfbcabe83d1853145f9d2d5b61b3.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (895, 735, 'https://yanxuan.nosdn.127.net/c3641a83243a2f114a53bd2678c5da0f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (896, 736, 'https://yanxuan.nosdn.127.net/2e7071c0c9b6767b7e7f296636c9e147.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (897, 736, 'https://yanxuan.nosdn.127.net/81846d5503897013aed2f0aac9b1b244.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (898, 736, 'https://yanxuan.nosdn.127.net/323134fa126b1a9cd98d7486ecb85cf3.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (899, 736, 'https://yanxuan.nosdn.127.net/e7e31b7df68f3a520e7159001853a196.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (900, 737, 'https://yanxuan.nosdn.127.net/fd53e167497bbbb97e3770718f6996fa.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (901, 738, 'https://yanxuan.nosdn.127.net/7a14329425e91d548476883acacb6aba.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (902, 739, 'https://yanxuan.nosdn.127.net/4bfb1a135cb9ba245547f44084c5e89e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (903, 740, 'https://yanxuan.nosdn.127.net/656bd34fe25c3f628f4da98d8b64822d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (904, 741, 'https://yanxuan.nosdn.127.net/f694324ff5889ba7f8a8f668187772dd.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (905, 742, 'https://yanxuan.nosdn.127.net/42d2187e546b7106147bfdb2c6eb8230.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (906, 743, 'https://yanxuan.nosdn.127.net/783e288df5837acb5c58d95c026c3da9.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (907, 744, 'https://yanxuan.nosdn.127.net/1d2b8fa0f32beb9cb118ee8509498d2f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (908, 745, 'https://yanxuan.nosdn.127.net/a45ecc0098671df5228f0c57f260878c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (909, 745, 'https://yanxuan.nosdn.127.net/40ec203b83a452c5f0c5aea9227007ae.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (910, 745, 'https://yanxuan.nosdn.127.net/339978754e04337b75301f9a38bf4698.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (911, 746, 'https://yanxuan.nosdn.127.net/4469ccfbe048afe16ed740f954ee1505.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (912, 747, 'https://yanxuan.nosdn.127.net/5bee13beb6aad11e1a5f52dc55f219a3.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (913, 747, 'https://yanxuan.nosdn.127.net/00374131d4a0e96276ffbb8146708eea.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (914, 748, 'https://yanxuan.nosdn.127.net/04157d6013ce501cc25f592b4057fa1c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (915, 748, 'https://yanxuan.nosdn.127.net/ec5ce24e7816b2535d76a678d8ed882f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (916, 749, 'https://yanxuan.nosdn.127.net/a6cabf73f34e08ad423cedb625386786.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (917, 750, 'https://yanxuan.nosdn.127.net/d1c8c41a9f469076d11680777b5ea2cb.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (918, 751, 'https://yanxuan.nosdn.127.net/cdecde7bf71220849f9c3cfe1720305d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (919, 751, 'https://yanxuan.nosdn.127.net/d811ba10f8618b7d79cf9a52f2fdd4bd.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (920, 752, 'https://yanxuan.nosdn.127.net/c5d24cd977f7e6a22b2c49d95a016506.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (921, 752, 'https://yanxuan.nosdn.127.net/d49149d0bd4feed76a315112bb19c1e7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (922, 757, 'https://yanxuan.nosdn.127.net/f96d2b67ebbdea6fa5e35e54bf0051a6.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (923, 757, 'https://yanxuan.nosdn.127.net/ad3b11cc8a6efa68e2a3bf0a1287db79.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (924, 757, 'https://yanxuan.nosdn.127.net/2a3a2e4c8a8fa61129f8f63cc3b18e67.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (925, 758, 'https://yanxuan.nosdn.127.net/0ed3434a8d9f34a9c9cb163271b2b351.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (926, 758, 'https://yanxuan.nosdn.127.net/d610e4e5e96e331b37fb2660e75d68b7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (927, 759, 'https://yanxuan.nosdn.127.net/ccf3d20d22cc236f18645a31440d01eb.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (928, 759, 'https://yanxuan.nosdn.127.net/13d0b4c8f12f86a6f7b22b1f33e33996.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (929, 759, 'https://yanxuan.nosdn.127.net/563b6276a8301b54a282db2f4e81aea3.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (930, 760, 'https://yanxuan.nosdn.127.net/ffbdbc7663e2cb91aa0ad6b8cfb2a718.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (931, 761, 'https://yanxuan.nosdn.127.net/9fcf69c825c9e0d5710e0266b6d40866.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (932, 762, 'https://yanxuan.nosdn.127.net/c139c422e588bcb9e4ac33ee6bd184e3.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (933, 762, 'https://yanxuan.nosdn.127.net/319f26a8f035a0e256de94f798ccac70.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (934, 763, 'https://yanxuan.nosdn.127.net/7484a3371c630347d6b938f281461891.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (935, 764, 'https://yanxuan.nosdn.127.net/0d195542a6802d85e8e7d2a0e01e0765.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (936, 764, 'https://yanxuan.nosdn.127.net/70de86f834585eb526a511c30b2f3210.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (937, 764, 'https://yanxuan.nosdn.127.net/f035f61f705f7c003565b529fbf44cbf.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (938, 765, 'https://yanxuan.nosdn.127.net/f314a6af836f4729b6d056ae89a425a4.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (939, 766, 'https://yanxuan.nosdn.127.net/0ac042af63b99779a3ff4aa45c87f669.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (940, 767, 'https://yanxuan.nosdn.127.net/a5cd307aeb90e8a82fa0dea5b5eb21de.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (941, 768, 'https://yanxuan.nosdn.127.net/e22e5333296b2449a7efe2f8da18da74.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (942, 768, 'https://yanxuan.nosdn.127.net/9d2e95b6788b928e46e3342b8bed8618.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (943, 769, 'https://yanxuan.nosdn.127.net/882203bf19bae17f4677e6417afff6cf.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (944, 770, 'https://yanxuan.nosdn.127.net/0bce6fa312b6f1c3e929c448fdb5e6c5.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (945, 771, 'https://yanxuan.nosdn.127.net/3c560b411191814d224b2ff1969c67a3.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (946, 772, 'https://yanxuan.nosdn.127.net/eb94697660a4c5c9fd18ed864182de21.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (947, 773, 'https://yanxuan.nosdn.127.net/06ee54a135f605d55165a7810ed98ecd.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (948, 773, 'https://yanxuan.nosdn.127.net/9439bc7eff6e5b0a2baf63e73693dc56.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (949, 773, 'https://yanxuan.nosdn.127.net/8401ea124553d6d7a204796b689573b8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (950, 774, 'https://yanxuan.nosdn.127.net/6c26ef6c0367e93f4903545eab9b4633.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (951, 775, 'https://yanxuan.nosdn.127.net/1ddb72f23ddad3e07ebcda5ef94085b5.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (952, 776, 'https://yanxuan.nosdn.127.net/13339d32178b0c752137cbec4b25595a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (953, 777, 'https://yanxuan.nosdn.127.net/5bac771eeac478c87ca0188512fa2d2b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (954, 778, 'https://yanxuan.nosdn.127.net/8eacf960a27bc0c30edca041d7d4426d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (955, 779, 'https://yanxuan.nosdn.127.net/8f3f29af175491ca569c3ecf1ffc3099.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (956, 780, 'https://yanxuan.nosdn.127.net/f107eac213d14fe2beaed9cd76742719.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (957, 781, 'https://yanxuan.nosdn.127.net/b4322ca1ad69c3fc7342943e0fdbf96c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (958, 782, 'https://yanxuan.nosdn.127.net/34fae145174f359ea4f21776666eded6.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (959, 783, 'https://yanxuan.nosdn.127.net/e56df06bd57fb972cd02628adf6c3588.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (960, 783, 'https://yanxuan.nosdn.127.net/3d19058f5f0a91ef713f60f9873782a4.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (961, 784, 'https://yanxuan.nosdn.127.net/82a6dfc95ff74175592dec88fd2d3eb7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (962, 784, 'https://yanxuan.nosdn.127.net/232f54fdb4d0c7f7d941c6a2e1b5a7d7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (963, 784, 'https://yanxuan.nosdn.127.net/2c16bbd157bf60112c81767e98fbf6b2.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (964, 784, 'https://yanxuan.nosdn.127.net/fa90fe5835c499154d63fa3a85749d5e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (965, 785, 'http://yanxuan.nosdn.127.net/b9af549bff801596eea08b7cadfc33ca.png', 5);
INSERT INTO `nideshop_comment_picture` VALUES (966, 786, 'http://yanxuan.nosdn.127.net/b501fd63bcbebae706f53512adf7e4e3.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (967, 787, 'http://yanxuan.nosdn.127.net/74c24d248c54bd59c3a2889e4eeb25a9.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (968, 788, 'http://yanxuan.nosdn.127.net/99971f16173b839091795ff084895811.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (969, 789, 'http://yanxuan.nosdn.127.net/7198431f3033432f02cf051b0b16922b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (970, 790, 'http://yanxuan.nosdn.127.net/f6374cebaf4a8c3569b7919b07ebf3ee.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (971, 811, 'https://yanxuan.nosdn.127.net/2f79497bf891df4b1e80b38c3ffcece2.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (972, 811, 'https://yanxuan.nosdn.127.net/ff2ae826208f45fd2b2a72e2b62f3f9e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (973, 811, 'https://yanxuan.nosdn.127.net/ef9a10ab35dc14a0ace6972f6de8a79c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (974, 811, 'https://yanxuan.nosdn.127.net/325f815a4d141d47b129b7783fc5566a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (975, 812, 'https://yanxuan.nosdn.127.net/3053c03b415a6c11d324b199027bc27d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (976, 813, 'https://yanxuan.nosdn.127.net/c6ef20cd6a48735c666b33b1b9f4c04f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (977, 814, 'https://yanxuan.nosdn.127.net/318b45d885ca1ec7164f3772b353a1f3.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (978, 814, 'https://yanxuan.nosdn.127.net/e3a917edd481b0cbd43d595ed1cf3359.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (979, 815, 'https://yanxuan.nosdn.127.net/7b8a275bb7b1d0bd3e46fa31792d3eed.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (980, 816, 'https://yanxuan.nosdn.127.net/b969bd9868cac8b8f7a8f2351fb905a4.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (981, 817, 'https://yanxuan.nosdn.127.net/c040519ed5837697873bc3b5865ff9ec.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (982, 818, 'https://yanxuan.nosdn.127.net/612f864bd517838d2557087da58ef449.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (983, 819, 'https://yanxuan.nosdn.127.net/c460a8ec1823a70b6c9961ce4f845ee2.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (984, 820, 'https://yanxuan.nosdn.127.net/fafae471e228da34674aa87c2ade2f72.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (985, 820, 'https://yanxuan.nosdn.127.net/08f900afdd6ad904814e43b663f9436f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (986, 821, 'https://yanxuan.nosdn.127.net/2287477c1dfcd1ec4e6ffe41fc9af67e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (987, 822, 'https://yanxuan.nosdn.127.net/df783bf33034094085d9e3339fecee72.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (988, 823, 'http://yanxuan.nosdn.127.net/36f0f0daac56f48ddf68db0de836f9f5.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (989, 824, 'https://yanxuan.nosdn.127.net/5d64118e8e9cd7a5e21e202b74519d54.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (990, 825, 'https://yanxuan.nosdn.127.net/6c43f5a8b46bafb538ab3edbe39973e0.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (991, 826, 'https://yanxuan.nosdn.127.net/c048754ce8df7c349e3ecd9da447541a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (992, 827, 'http://yanxuan.nosdn.127.net/a046988f58b30ca8c85418c773dd36f2.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (993, 828, 'http://yanxuan.nosdn.127.net/87ae5aa545acd4aad83196321d998466.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (994, 829, 'http://yanxuan.nosdn.127.net/c861524983d483a940e7f9f0d5533694.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (995, 830, 'http://yanxuan.nosdn.127.net/40aa13edb134d75adccd955d61191fac.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (996, 830, 'http://yanxuan.nosdn.127.net/a19c2a0e56f1fda17155f024dd6edec0.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (997, 831, 'http://yanxuan.nosdn.127.net/498b29a4fde8826560353a01a85d87f1.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (998, 831, 'http://yanxuan.nosdn.127.net/9a01b320bef853904c64cadca194c9fa.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (999, 832, 'http://yanxuan.nosdn.127.net/bcd59ba1375fc55b34e0c44499a87ea2.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1000, 832, 'http://yanxuan.nosdn.127.net/34e7e2a8fe9587b52a8aff3a8de1a9c0.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1001, 833, 'http://yanxuan.nosdn.127.net/f272b8cae554ad4dccafe07858338a54.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1002, 833, 'http://yanxuan.nosdn.127.net/62e274fe5ce7ec08cb1c452869b12ad0.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1003, 834, 'http://yanxuan.nosdn.127.net/f40ca520b3783c406c3f124175d1339b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1004, 834, 'http://yanxuan.nosdn.127.net/de71f77e64c5249724feb3b3c6df4b5f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1005, 835, 'http://yanxuan.nosdn.127.net/cdc89f079d96bd5edc92db11c03bc4d5.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1006, 836, 'http://yanxuan.nosdn.127.net/24005064eb747cf88c727926e296a4b1.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1007, 837, 'http://yanxuan.nosdn.127.net/aa36bd32c6aafcd2c7d07bb975664521.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1008, 838, 'http://yanxuan.nosdn.127.net/7b5fd267b222ebaa942c20f1f4433d30.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1009, 838, 'http://yanxuan.nosdn.127.net/855c6e8e34a66fcffdba04155bc662c2.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1010, 839, 'http://yanxuan.nosdn.127.net/c0755383bcb4f621bf90cfce50eb512f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1011, 840, 'http://yanxuan.nosdn.127.net/56d754e102babbf3089811fc8824fd95.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1012, 841, 'https://yanxuan.nosdn.127.net/7bb3b32966993aacd903b2f24466cae5.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1013, 842, 'https://yanxuan.nosdn.127.net/275eda2f67b16f91180197746be05ffb.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1014, 842, 'https://yanxuan.nosdn.127.net/3e9e44ddd976ca68d2dfce46b47cff17.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1015, 843, 'https://yanxuan.nosdn.127.net/e35f1e24822d0c7458a40acdcd45ca7f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1016, 844, 'https://yanxuan.nosdn.127.net/07e03eee27c2563b3e90fcee8d672990.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1017, 845, 'https://yanxuan.nosdn.127.net/994a35a72e099f986158cf531a3a618e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1018, 846, 'https://yanxuan.nosdn.127.net/0c2490962517aa6ea8c5e6432b92f7f7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1019, 847, 'http://yanxuan.nosdn.127.net/eeb5f9d76d341e1671305d813d9d39c6.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1020, 848, 'https://yanxuan.nosdn.127.net/a53d6f7b860dcb6952ef30a494bc1c4e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1021, 849, 'http://yanxuan.nosdn.127.net/83c871636070b26e4e61b476da9c31fb.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1022, 850, 'http://yanxuan.nosdn.127.net/c186af83f0cb31bc9aabc06389e57e24.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1023, 851, 'http://yanxuan.nosdn.127.net/55dad2cbefa4ed317015664bc57ee145.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1024, 852, 'http://yanxuan.nosdn.127.net/85e4b5add3a613eeb6311177dbcab51c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1025, 853, 'http://yanxuan.nosdn.127.net/d4bc6beaeb7514ad2d42dcc5b3134484.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1026, 853, 'http://yanxuan.nosdn.127.net/a0a6d1cc8be2c17c48bc855bb812b674.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1027, 853, 'http://yanxuan.nosdn.127.net/e51ca1b85413f5539a60c0535d2f6d42.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1028, 854, 'http://yanxuan.nosdn.127.net/2c1643dfe3bdbe2a446ec57d4f4aa0a3.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1029, 855, 'http://yanxuan.nosdn.127.net/9b0462e86060217e56bcfdc9ffc446ef.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1030, 856, 'http://yanxuan.nosdn.127.net/82ce49069472c58af5efe1ea8bf8b9db.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1031, 857, 'http://yanxuan.nosdn.127.net/1c21a8a68e8d23997fcc45eaf9b88905.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1032, 858, 'http://yanxuan.nosdn.127.net/1403f2c969126cbe037116a6a81b4015.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1033, 871, 'https://yanxuan.nosdn.127.net/8c2d79eafce30b33981623b5602764db.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1034, 872, 'https://yanxuan.nosdn.127.net/0a4cf3b05d448fe3eab0b27780f8c187.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1035, 872, 'https://yanxuan.nosdn.127.net/64758242eba35c7a877ee002b8c209a6.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1036, 872, 'https://yanxuan.nosdn.127.net/ead4aee12a369b84288051c3c6000483.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1037, 873, 'https://yanxuan.nosdn.127.net/aa79c0bd1fd09987e0c39dac814c1c64.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1038, 874, 'https://yanxuan.nosdn.127.net/78ac06394b23de5e513919e41eccb3e9.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1039, 874, 'https://yanxuan.nosdn.127.net/b76613c7c826ce002bd1c8fd14bd0a2e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1040, 875, 'https://yanxuan.nosdn.127.net/3f87b2886be7b41ff2bbcf0ccddb947d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1041, 876, 'https://yanxuan.nosdn.127.net/15fa1943125e2e137c9064ac90dc1866.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1042, 877, 'https://yanxuan.nosdn.127.net/b32f86638f2fd142256068f2ac3c1961.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1043, 878, 'https://yanxuan.nosdn.127.net/170ffe4237c3e60cf6f1ad67bc6a3dc5.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1044, 879, 'https://yanxuan.nosdn.127.net/34e5d442c699c3b7f7e8b47a75dd352c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1045, 880, 'https://yanxuan.nosdn.127.net/af59bf890bcbe03f1319702ca2b422cd.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1046, 881, 'https://yanxuan.nosdn.127.net/a92cfa969a468ff2145e31c0683693f4.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1047, 882, 'https://yanxuan.nosdn.127.net/21eeacf0f39aaf8ae7716a457d4b7f1a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1048, 882, 'https://yanxuan.nosdn.127.net/d7202fa92aaa88f60c7927803633bfe7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1049, 883, 'http://yanxuan.nosdn.127.net/4cfb39eb0b927e00621011c54a6b951b.png', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1050, 884, 'https://yanxuan.nosdn.127.net/457043886189b21710a4922cf3cc4841.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1051, 885, 'https://yanxuan.nosdn.127.net/e35e6096f55159e96a179feb3512bb93.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1052, 886, 'https://yanxuan.nosdn.127.net/11f78c67c1a3959310ded640591a8172.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1053, 887, 'https://yanxuan.nosdn.127.net/4f97a5727a3712d580edfdd95592603d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1054, 888, 'https://yanxuan.nosdn.127.net/d638aa55a696467effbf481b53c58fac.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1055, 888, 'https://yanxuan.nosdn.127.net/15bd39cc0aeb8d25401e3af19a1d3720.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1056, 888, 'https://yanxuan.nosdn.127.net/b1301a3efdb5fa1650c4169b0e9a606a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1057, 889, 'https://yanxuan.nosdn.127.net/90a5c9028839b67b067613928aadceb7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1058, 890, 'http://yanxuan.nosdn.127.net/edf3d1345b3c091015e64651222e0d47.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1059, 891, 'http://yanxuan.nosdn.127.net/7b31bf2e3df8a241ea8a7da372b9402c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1060, 891, 'http://yanxuan.nosdn.127.net/a8a66f882b60538ba55a23b5aa09ece4.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1061, 892, 'http://yanxuan.nosdn.127.net/822074577bb1bb822c9a021c502dcb8b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1062, 893, 'http://yanxuan.nosdn.127.net/1ab41f9e615b88b0784225cbdfd9c0d6.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1063, 894, 'http://yanxuan.nosdn.127.net/8df06db908d81bff38b8689ec68ab714.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1064, 895, 'http://yanxuan.nosdn.127.net/42008c255804d6e0f06f31744a1e22ee.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1065, 896, 'http://yanxuan.nosdn.127.net/1cc43a6771511e760b983e0a52b30dec.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1066, 897, 'http://yanxuan.nosdn.127.net/7df109e1a62f0fe6b8afbef55e24b3fb.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1067, 898, 'http://yanxuan.nosdn.127.net/1cc84f5e4016d2b9b83ca1d77c7d860c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1068, 899, 'http://yanxuan.nosdn.127.net/dbe3d7a2091ab13b715c4825f50d5a05.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1069, 899, 'http://yanxuan.nosdn.127.net/cbee7f9389c280a11dbf3ae5bb8ad0e7.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1070, 900, 'http://yanxuan.nosdn.127.net/e6be3da1ff67bf4111c569fa8c47ac43.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1071, 901, 'https://yanxuan.nosdn.127.net/5fe1121396458cfe0dc1b25ec86f7ff9.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1072, 901, 'https://yanxuan.nosdn.127.net/d5a55abd6ced5c811d775b04929aaabc.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1073, 901, 'https://yanxuan.nosdn.127.net/f1764d820ba6ddaf51d297e3cf3826cd.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1074, 902, 'https://yanxuan.nosdn.127.net/f753f91430dfb56f574c737d4b2fde46.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1075, 903, 'https://yanxuan.nosdn.127.net/556cb7799b8218db00c3a65241e0f92b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1076, 904, 'https://yanxuan.nosdn.127.net/f3376d3767e3cd7a899773d680189d37.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1077, 905, 'https://yanxuan.nosdn.127.net/9f835306fae8b851a834cc904630a5b3.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1078, 905, 'https://yanxuan.nosdn.127.net/5ef2a535450ae53897ac7700912c3b42.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1079, 905, 'https://yanxuan.nosdn.127.net/c2fedbb59dc123a23c9521076848d0dc.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1080, 906, 'https://yanxuan.nosdn.127.net/f45ad4b14d9da7e3093e5c3b4d036753.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1081, 906, 'https://yanxuan.nosdn.127.net/a3ee0882bc45fb2caa264a90975f856b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1082, 906, 'https://yanxuan.nosdn.127.net/1ea4c31b4ee206c04a49da856f0fe677.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1083, 906, 'https://yanxuan.nosdn.127.net/93d17fbea0a17301bf9c6433199dcb0b.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1084, 907, 'https://yanxuan.nosdn.127.net/05e880ce4068ca33e53e191185fb811f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1085, 908, 'https://yanxuan.nosdn.127.net/cee78b5874dc15f3f4711e3b220cfafd.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1086, 909, 'https://yanxuan.nosdn.127.net/67370cdb21d9ff8c1bb4ed2dae87a5c3.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1087, 910, 'https://yanxuan.nosdn.127.net/8e474c5d740ef49115c7f0572ac8ea31.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1088, 910, 'https://yanxuan.nosdn.127.net/75ba158e6f8c5f62413707082d9cf8ae.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1089, 911, 'https://yanxuan.nosdn.127.net/cdb53b25adba61ea490ce9ec84b159b3.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1090, 913, 'https://yanxuan.nosdn.127.net/43fdb1502679c50f6aa09acfb24cdfe3.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1091, 914, 'https://yanxuan.nosdn.127.net/db13b4127fd18a55c6e401be96ba877a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1092, 914, 'https://yanxuan.nosdn.127.net/ae1c1dd61cdbfc8ffe68bba8479c1d1e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1093, 914, 'https://yanxuan.nosdn.127.net/d09e0a2ad05ea9c5600f92fd612726b8.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1094, 914, 'https://yanxuan.nosdn.127.net/e86109c6c174a3901dffaa8787f6cb72.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1095, 915, 'https://yanxuan.nosdn.127.net/0c540031d15549707903f616c150b9fc.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1096, 915, 'https://yanxuan.nosdn.127.net/029881404b69292f7c502379db227d9a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1097, 916, 'http://yanxuan.nosdn.127.net/0efd8cd4dd510844333671fc60f19734.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1098, 917, 'https://yanxuan.nosdn.127.net/2b93c0d0d194e3fb09fa5d43b949a3d9.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1099, 918, 'http://yanxuan.nosdn.127.net/a87adeaa315060be6c5c6d7bb3a6b203.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1100, 918, 'http://yanxuan.nosdn.127.net/6d8a8f800ccd811ff770a2c6c75545eb.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1101, 918, 'http://yanxuan.nosdn.127.net/a2746d61dae1f250ffd79fc73ec221ce.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1102, 919, 'http://yanxuan.nosdn.127.net/d18f3783f352afee5ff78af88940df22.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1103, 919, 'http://yanxuan.nosdn.127.net/814d347fdca2087cb8b12abd334c1c23.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1104, 920, 'http://yanxuan.nosdn.127.net/b8c4879ffc89318aea3fbf8f20a126ef.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1105, 921, 'http://yanxuan.nosdn.127.net/5091f0f6ae132a2f3cece0619ee9ea0d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1106, 922, 'http://yanxuan.nosdn.127.net/525c0db54abb9f496b8dca944963a18e.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1107, 922, 'http://yanxuan.nosdn.127.net/b3ef54154c756043c23ae027251a5b5d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1108, 923, 'http://yanxuan.nosdn.127.net/9f63b36112e51106414b8aa14b1e1073.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1109, 924, 'http://yanxuan.nosdn.127.net/c78e6a9e8afdf38f20cd54831327236d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1110, 925, 'http://yanxuan.nosdn.127.net/b294a2c44e67b4e616b484684d0a472d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1111, 926, 'http://yanxuan.nosdn.127.net/6f85c85e3926e1a1e20dd5a4f5b1296a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1112, 927, 'http://yanxuan.nosdn.127.net/0c40f1b1de316fe3bf34462d222d4fc6.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1113, 928, 'http://yanxuan.nosdn.127.net/a6e7b13576b56af9d0868c94d4130d69.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1114, 929, 'http://yanxuan.nosdn.127.net/a1bc975c41d14de42a5e751fb1f9a69f.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1115, 929, 'http://yanxuan.nosdn.127.net/5b95705cb60e8a884cf0de925938159d.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1116, 930, 'http://yanxuan.nosdn.127.net/e9955c289e13c8b54d2c10cc59a97a5c.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1117, 948, 'https://yanxuan.nosdn.127.net/c4110c2c5355951cd1072ef50cb3d747.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1118, 948, 'https://yanxuan.nosdn.127.net/fe5793902da1d1c699b74b89246a2b36.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1119, 950, 'https://yanxuan.nosdn.127.net/4ac4120ce2686db84fd0147a53497f5a.jpg', 5);
INSERT INTO `nideshop_comment_picture` VALUES (1120, 950, 'https://yanxuan.nosdn.127.net/fb39c5ecdb034a4a9444fa84c6916fe8.jpg', 5);
COMMIT;

-- ----------------------------
-- Table structure for nideshop_coupon
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_coupon`;
CREATE TABLE `nideshop_coupon` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `send_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `min_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `max_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `send_start_date` int(11) NOT NULL DEFAULT '0',
  `send_end_date` int(11) NOT NULL DEFAULT '0',
  `use_start_date` int(11) NOT NULL DEFAULT '0',
  `use_end_date` int(11) NOT NULL DEFAULT '0',
  `min_goods_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of nideshop_coupon
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_coupon` VALUES (1, '用户红包', 2.00, 0, 0.00, 0.00, 1242057600, 1244736000, 1242057600, 1250006400, 500.00);
INSERT INTO `nideshop_coupon` VALUES (2, '商品红包', 10.00, 1, 0.00, 0.00, 1241971200, 1250352000, 1242057600, 1250006400, 500.00);
INSERT INTO `nideshop_coupon` VALUES (3, '订单红包', 20.00, 2, 1500.00, 0.00, 1242057600, 1309363200, 1242057600, 1257955200, 800.00);
INSERT INTO `nideshop_coupon` VALUES (4, '线下红包', 5.00, 3, 0.00, 0.00, 1242057600, 1244736000, 1242057600, 1255449600, 360.00);
COMMIT;

-- ----------------------------
-- Table structure for nideshop_feedback
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_feedback`;
CREATE TABLE `nideshop_feedback` (
  `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `msg_title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `msg_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `msg_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `msg_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `message_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `order_id` int(11) unsigned NOT NULL DEFAULT '0',
  `msg_area` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of nideshop_feedback
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_feedback` VALUES (1, 0, 1, 'nideshop', 'nideshop@nideshop.com', '三星SGH-F258什么时候到', 4, 0, '三星SGH-F258什么时候有货', 1242107197, '', 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for nideshop_footprint
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_footprint`;
CREATE TABLE `nideshop_footprint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `goods_id` int(11) NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for nideshop_goods
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_goods`;
CREATE TABLE `nideshop_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '商品类型id',
  `goods_sn` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '商品名字',
  `brand_id` int(11) unsigned DEFAULT '0',
  `goods_number` mediumint(8) unsigned DEFAULT '0',
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '关键词',
  `goods_brief` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '商品简要',
  `goods_desc` longtext COLLATE utf8mb4_unicode_ci COMMENT '商品详情',
  `is_on_sale` tinyint(1) unsigned DEFAULT '1',
  `add_time` int(10) unsigned DEFAULT '0',
  `sort_order` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '商品排序',
  `is_delete` tinyint(1) unsigned DEFAULT '0',
  `attribute_category` int(11) unsigned DEFAULT '0',
  `counter_price` decimal(10,2) unsigned DEFAULT '0.00' COMMENT '专柜价格',
  `extra_price` decimal(10,2) unsigned DEFAULT '0.00' COMMENT '附加价格',
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '新商品',
  `goods_unit` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品单位',
  `primary_pic_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品主图',
  `list_pic_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品列表图',
  `retail_price` decimal(10,2) unsigned DEFAULT '0.00' COMMENT '零售价格',
  `sell_volume` int(11) unsigned DEFAULT '0' COMMENT '销售量',
  `primary_product_id` int(11) unsigned DEFAULT '0' COMMENT '主sku　product_id',
  `unit_price` decimal(10,2) unsigned DEFAULT '0.00' COMMENT '单位价格，单价',
  `promotion_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '推销详情',
  `promotion_tag` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '推向tag',
  `app_exclusive_price` decimal(10,2) unsigned DEFAULT NULL COMMENT 'APP专享价',
  `is_app_exclusive` tinyint(1) unsigned DEFAULT NULL COMMENT '是否是APP专属',
  `is_limited` tinyint(1) unsigned DEFAULT NULL,
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '热门商品',
  `desc_video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '商品描述视频',
  PRIMARY KEY (`id`),
  KEY `goods_sn` (`goods_sn`),
  KEY `cat_id` (`category_id`),
  KEY `brand_id` (`brand_id`),
  KEY `goods_number` (`goods_number`),
  KEY `sort_order` (`sort_order`)
) ENGINE=InnoDB AUTO_INCREMENT=1181097 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='商品信息';

-- ----------------------------
-- Records of nideshop_goods
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_goods` VALUES (1181015, 1008008, '', 'TRzol（总 RNA 提取试剂）', 0, 200, 'trzol,RNA提取', 'TRzol（总 RNA 提取试剂）', '<p><strong>产品介绍：</strong></p><p><br></p><p>&nbsp;&nbsp;TRzol试剂是直接从细胞或组织中提取总RNA的试剂。它在破碎和溶解细胞时能保持RNA的完整性。加入氯仿后离心，样品分成水样层和有机层。RNA存在于水样层中。收集上面的的水样层后，RNA可以通过异丙醇沉淀来回收。</p><p><br></p><p>&nbsp;无论是人、动物、植物还是细菌组织，该方法对少量及大量的组织和细胞均有较好的分离效果。TRzol试剂操作上的简单性允许同时处理多个的样品。所有的操作可以在一小时内完成。TRzol抽提的总RNA能够避免DNA和蛋白的污染。故而能够做RNA印迹分析、斑点杂交、poly(A)+选择、体外转录、RNA酶保护分析和分子克隆。</p><p><br></p><p>&nbsp;TRzol试剂能促进不同种属不同分子量大小的多种RNA的析出。例如，从大鼠肝脏抽提的RNA通过琼脂糖凝胶电泳并用溴化乙锭染色，可见许多介于7 kb和15 kb之间不连续的高分子量条带(mRNA和hnRNA成分)，两条优势核糖体~5kb (28S)和~2kb(18S)，低分子量RNA介于0.1和0.3kb之间 (tRNA，5S)。当抽提的RNA用TE稀释时其A 260 /A 280 比值≥1.8。</p><p><br></p><p><br></p><p><br></p><p><strong>产品储存</strong>：TRzol在室温下能稳定保存12个月。尽管如此，为达到最佳效果，我们建议保存在2-8℃的环境下。</p><p><br></p><p><br></p><p class=\"ql-align-center\">（具体操作详见说明书）</p><p class=\"ql-indent-1\"><br></p>', 0, 0, 100, 0, 0, 0.00, 0.00, 0, NULL, 'https://www.wangcong.fun:8002/static/upload/brand/a14c0ea0-00c1-4820-af33-9c700af9ef65.jpg', 'https://www.wangcong.fun:8002/static/upload/brand/20698fe2-5c10-42cf-97f9-c2b525bfbb5d.jpg', 360.00, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 1, '');
INSERT INTO `nideshop_goods` VALUES (1181018, 1008008, '', 'TRzol LS（液体样本 RNA 提取试剂）', 0, 200, 'trzol,RNA提取', 'TRzol LS（液体样本 RNA 提取试剂）试剂盒', '<p class=\"ql-indent-1\">产品介绍：</p><p class=\"ql-indent-1\"><br></p><p class=\"ql-indent-1\"><br></p><p class=\"ql-indent-1\">&nbsp;TRzol LS试剂是直接从来源于人、动植物、酵母、细菌和病毒的液体样品中提取总RNA的试剂。它在破碎和溶解细胞时能保持RNA的完整性。加入氯仿后离心，样品分成水样层和有机层。收集上面的的水样层后，RNA可以通过异丙醇沉淀来回收。</p><p class=\"ql-indent-1\"><br></p><p class=\"ql-indent-1\">无论是人、动物、植物还是细菌组织，该方法对少量及大量的组织和细胞均有较好的分离效果。TRzol LS试剂操作上的简单性允许同时处理多个的样品。所有的操作可以在一小时内完成。TRzol LS抽提的总RNA能够避免DNA和蛋白的污染。故而能够作RNA印迹分析、斑点杂交、poly(A)+选择、体外翻译、RNA酶保护分析和分子克隆。如果是用于PCR，当两条引物位于单一外显子内时，建议用扩增级的DNaseI来处理抽提的总RNA。</p><p class=\"ql-indent-1\"><br></p><p class=\"ql-indent-1\">TRzol LS试剂能促进不同种属不同分子量大小的多种RNA的析出。例如，从大鼠肝脏抽提的RNA琼脂糖凝胶电泳并用溴化乙啶染色，可见许多介于7kb和15kb之间不连续的高分子量条带，两条优势核糖体-5kb (28S)和-2kb(18S)，低分子量RNA介于0.1和0.3 kb之间 (tRNA, 5S)。当抽提的RNA用TE稀释时其A260/A280比值≥1.8。</p><p class=\"ql-indent-1\"><br></p><p><br></p><p class=\"ql-indent-1\">产品储存：TRzol LS在室温下能稳定保存12个月。尽管如此，为达到最佳效果，我们建议保存在2~8°C的环境下。&nbsp;</p>', 0, 0, 100, 0, 0, 0.00, 0.00, 0, NULL, 'https://www.wangcong.fun:8002/static/upload/brand/df532248-49b3-4708-ace3-f8137b3968d5.jpg', 'https://www.wangcong.fun:8002/static/upload/brand/796dcc1e-31ec-47e6-9e3b-f7273a4602b6.jpg', 690.00, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 1, '');
INSERT INTO `nideshop_goods` VALUES (1181019, 1008008, '', 'EASYspin 植物RNA快速提取试剂盒（DNase Ⅰ)', 0, 200, 'trzol,RNA提取', 'TRzol LS（液体样本 RNA 提取试剂）试剂盒', '<p class=\"ql-indent-1\">产品介绍：</p><p class=\"ql-indent-1\"><br></p><p class=\"ql-indent-1\"><br></p><p class=\"ql-indent-1\">&nbsp;TRzol LS试剂是直接从来源于人、动植物、酵母、细菌和病毒的液体样品中提取总RNA的试剂。它在破碎和溶解细胞时能保持RNA的完整性。加入氯仿后离心，样品分成水样层和有机层。收集上面的的水样层后，RNA可以通过异丙醇沉淀来回收。</p><p class=\"ql-indent-1\"><br></p><p class=\"ql-indent-1\">无论是人、动物、植物还是细菌组织，该方法对少量及大量的组织和细胞均有较好的分离效果。TRzol LS试剂操作上的简单性允许同时处理多个的样品。所有的操作可以在一小时内完成。TRzol LS抽提的总RNA能够避免DNA和蛋白的污染。故而能够作RNA印迹分析、斑点杂交、poly(A)+选择、体外翻译、RNA酶保护分析和分子克隆。如果是用于PCR，当两条引物位于单一外显子内时，建议用扩增级的DNaseI来处理抽提的总RNA。</p><p class=\"ql-indent-1\"><br></p><p class=\"ql-indent-1\">TRzol LS试剂能促进不同种属不同分子量大小的多种RNA的析出。例如，从大鼠肝脏抽提的RNA琼脂糖凝胶电泳并用溴化乙啶染色，可见许多介于7kb和15kb之间不连续的高分子量条带，两条优势核糖体-5kb (28S)和-2kb(18S)，低分子量RNA介于0.1和0.3 kb之间 (tRNA, 5S)。当抽提的RNA用TE稀释时其A260/A280比值≥1.8。</p><p class=\"ql-indent-1\"><br></p><p><br></p><p class=\"ql-indent-1\">产品储存：TRzol LS在室温下能稳定保存12个月。尽管如此，为达到最佳效果，我们建议保存在2~8°C的环境下。&nbsp;</p>', 0, 0, 100, 0, 0, 0.00, 0.00, 0, NULL, 'https://www.wangcong.fun:8002/static/upload/brand/a54c44bb-8f03-426f-8d60-15e1e26627b4.jpg', 'https://www.wangcong.fun:8002/static/upload/brand/3f07850e-6d9f-4a12-83a9-c093c94779e5.jpg', 550.00, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '');
INSERT INTO `nideshop_goods` VALUES (1181020, 1008008, '', 'EASYspin组织/细胞RNA快速提取试剂盒（Dnase I）', 0, 200, 'EASYspin,组织RNA提取', 'EASYspin组织/细胞RNA快速提取试剂盒（Dnase I）', '<p><br></p><p><strong>产品介绍：</strong></p><p><br></p><p>&nbsp;独特的裂解液/β-巯基乙醇迅速裂解细胞和灭活细胞RNA酶，然后用乙醇调节结合条件后,RNA在高离序盐状态下选择性吸附于离心柱内硅基质膜，再通过一系列快速的漂洗－离心的步骤, 去蛋白液和漂洗液将细胞代谢物，蛋白等杂质去除，最后低盐的RNase free H20将纯净RNA从硅基质膜上洗脱。</p><p><br></p><p><br></p><p><strong>产品特点：</strong></p><p><br></p><p>1.重复性好，离心吸附柱内硅基质膜全部采用进口特制吸附膜，柱与柱之间吸附量差异极小。</p><p><br></p><p>2.操作安全，不需要使用有毒的苯酚，氯仿等试剂，也不需要乙醇沉淀等步骤。</p><p><br></p><p>3.简便快捷，单个样品操作一般可在30分钟内完成。&nbsp;</p><p><br></p><p><br></p><p><br></p><p><strong>产品储存</strong>:本试剂盒在室温储存12个月不影响使用效果。&nbsp;</p><p><br></p><p><br></p><p><br></p><p><strong>自备试剂</strong>:β-巯基乙醇、无水乙醇（Dnase I）</p><p class=\"ql-indent-1\"><br></p>', 0, 0, 100, 0, 0, 0.00, 0.00, 0, NULL, 'https://www.wangcong.fun:8002/static/upload/brand/0d0b729b-7fb2-4429-a1b2-cf5109a11198.jpg', 'https://www.wangcong.fun:8002/static/upload/brand/78786c5f-24a8-4e4c-9abf-9bcab0164630.jpg', 1090.00, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '');
INSERT INTO `nideshop_goods` VALUES (1181021, 1008008, '', 'EASYspin全血RNA快速提取试剂盒（Dnase I）', 0, 200, 'EASYspin,RNA提取', 'EASYspin全血RNA快速提取试剂盒（Dnase I）', '<p><strong>产品介绍：</strong></p><p><br></p><p>&nbsp;&nbsp;红细胞裂解液选择性裂解红细胞,然后独特的裂解液/β-巯基乙醇迅速裂解白细胞和灭活细胞RNA酶，然后用乙醇调节结合条件后,RNA在高离序盐状态下选择性吸附于离心柱内硅基质膜，再通过一系列快速的漂洗－离心的步骤, 去蛋白液和漂洗液将细胞代谢物，蛋白等杂质去除，最后低盐的RNase free H20将RNA从硅基质膜上洗脱。</p><p><br></p><p><br></p><p><strong>产品特点：</strong></p><p><br></p><p>1.重复性好，柱与柱之间吸附量差异极小。克服了国产试剂盒膜质量不稳定的弊端。</p><p><br></p><p>2.操作安全，不需要使用有毒的苯酚，氯仿等试剂，也不需要乙醇沉淀等步骤.</p><p><br></p><p>3.简便快捷，单个样品操作一般可在40分钟内完成。&nbsp;</p><p><br></p><p><br></p><p><br></p><p><strong>产品储存:</strong>本试剂盒在规定保存温度储存12个月不影响使用效果。</p><p><br></p><p><br></p><p><strong>自备试剂</strong>:β-巯基乙醇、无水乙醇</p>', 0, 0, 100, 0, 0, 0.00, 0.00, 0, NULL, 'https://www.wangcong.fun:8002/static/upload/brand/b6629b0b-e2ce-4404-9a50-f99e98e32b22.jpg', 'https://www.wangcong.fun:8002/static/upload/brand/e8a1daab-e4a2-4cc6-bcbc-1933b10c4463.jpg', 1190.00, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '');
INSERT INTO `nideshop_goods` VALUES (1181022, 1008008, '', 'RNApure 超纯总 RNA 快速提取试剂盒 (DNase I)', 0, 0, 'RNApure,RNA提取', 'RNApure 超纯总 RNA 快速提取试剂盒 (DNase I)', '<p><strong>产品介绍：</strong></p><p><br></p><p><br></p><p>&nbsp;&nbsp;&nbsp;改进的异硫氰酸胍/酚一步法裂解细胞和灭活RNA 酶，然后总RNA在高离序盐状态下选择性吸附于离心柱内硅基质膜，再通过一系列快速的漂洗－离心的步骤, 去蛋白液和漂洗液将细胞代谢物、蛋白等杂质去除，最后低盐的RNase free water将纯净RNA从硅基质膜上洗脱。</p><p><br></p><p><br></p><p><br></p><p><strong>产品特点：</strong></p><p><br></p><p>1.离心吸附柱内硅基质膜全部采用进口世界著名公司特制吸附膜，柱与柱之间吸附量差异极小，可重复性好。克服了国产试剂盒膜质量不稳定的弊端。</p><p><br></p><p>2.结合了异硫氰酸胍/酚一步法试剂稳定性好，纯度高和离心柱方便快捷的优点，RNA可以直接从离心柱上洗脱避免了过度干燥不易溶解问题。</p><p><br></p><p>3.独有的RL裂解液配方，可以有效的消除基因组污染。</p><p><br></p><p>4.有效的去除了5S在总RNA中含量，提高了纯度。</p><p><br></p><p><br></p><p><br></p><p><strong>产品储存：</strong>本产品收到后按照上面指示温度存放各成份，储存12个月不影响使用效果。&nbsp;</p>', 0, 0, 100, 0, 0, 0.00, 0.00, 0, NULL, 'https://www.wangcong.fun:8002/static/upload/brand/b7a83a18-a409-48a1-a18f-02bdf2e9c53f.jpg', 'https://www.wangcong.fun:8002/static/upload/brand/d6892f02-93e1-43e3-8998-f8dbe7782f03.jpg', 440.00, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '');
INSERT INTO `nideshop_goods` VALUES (1181046, 1020003, '', 'Ni-IDA MagAgarose Beads琼脂糖磁珠', 0, 200, '琼脂糖磁珠,镍柱', 'Ni-IDA琼脂糖磁珠可用于简单、快速地小量提取组氨酸标签蛋白。磁珠与表达组氨酸标签蛋白的细胞裂解液混合，使用磁分离方法，通过结合、洗涤和洗脱等步骤就可以纯化出目的蛋白。', '<p><strong style=\"background-color: rgb(217, 217, 217);\">产品介绍：</strong></p><p>Ni-IDA琼脂糖磁珠可用于简单、快速地小量提取组氨酸标签蛋白。磁珠与表达组氨酸标签蛋白的细胞裂解液混合，使用磁分离方法，通过结合、洗涤和洗脱等步骤就可以纯化出目的蛋白。与传统层析方式使用的金属螯合琼脂糖柱材相比，采用磁珠纯化组氨酸标签蛋白，无需控制流速。无需昂贵的层析设备。样品与磁珠的特异性结合、洗涤以及目标蛋白的洗脱变得简单、快速、易操作。在一小时内便能获得高纯度的目标蛋白，且能轻松实现高通量和大规模样品的平行处理。</p><p><br></p><p><strong style=\"background-color: rgb(217, 217, 217);\">自备器材和试剂：</strong>磁力架，带组氨酸标签的重组蛋白，缓冲液，摇床或旋转混合仪。</p><p><br></p><p><strong style=\"background-color: rgb(217, 217, 217);\">适用范围：</strong>用于纯化细菌、酵母、昆虫和哺乳动物细胞等系统表达的可溶性组氨酸标签蛋白，也可用于变性蛋白的纯化（包涵体蛋白需在变性条件下进行）。</p>', 0, 0, 100, 0, 0, 0.00, 0.00, 1, NULL, 'https://www.wangcong.fun:8002/static/upload/brand/2394d7f5-72ac-4e9b-aa2d-1a9f8b3dd628.jpg', 'https://www.wangcong.fun:8002/static/upload/brand/3c75da0b-ba36-475f-9bd4-c96b35be530d.jpg', 580.00, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '');
INSERT INTO `nideshop_goods` VALUES (1181063, 1008001, '', 'Stable 感受态细胞', 0, 200, '感受态,Stable感受态', '本公司生产的Stable感受态细胞是采用Stable菌株经特殊工艺制备得到的感受态细胞。Stable菌株特别适用于具有末端重复序列的逆转录病毒或慢病毒质粒的构建和扩增，也适用于重复DNA序列的克隆和扩增。', '<p><strong style=\"background-color: rgb(216, 216, 216);\">储存条件：</strong>-70℃保存，避免反复冻融。不适合在液氮中保存。</p><p><br></p><p><br></p><p><strong style=\"background-color: rgb(216, 216, 216);\">产品介绍：</strong></p><p><br></p><p>本公司生产的Stable感受态细胞是采用Stable菌株经特殊工艺制备得到的感受态细胞。Stable菌株特别适用于具有末端重复序列的逆转录病毒或慢病毒质粒的构建和扩增，也适用于重复DNA序列的克隆和扩增。Stable具有与Stbl3和Stbl4完全不同的基因型，比Stbl3和Stbl4生长速度更快，性能更好。核酸内切酶 (endA1)基因的缺失有利于提高质粒DNA的产量和质量。ΔlacZM15基因的存在可用于蓝白斑筛选。菌株还具有抗T1噬菌体感染的特点。Stable感受态细胞经pUC19质粒检测转化效率&gt;108 cfu/μg DNA。</p><p><br></p><p><br></p><p><strong style=\"background-color: rgb(216, 216, 216);\">基因型：</strong></p><p><br></p><p>F´ proA+B+ lacIq Δ(lacZ)M15 zzf::Tn10 (TetR)/Δ(ara-leu) 7697 araD139 fhuA ΔlacX74 galK16 galE15</p><p><br></p><p>e14- f80dlacZΔM15 recA1 relA1 endA1 nupG rpsL (StrR) rph spoT1 Δ(mrr-hsdRMS-mcrBC)</p><p><br></p><p><br></p><p><br></p><p><strong style=\"background-color: rgb(216, 216, 216);\">菌株抗性：</strong>对氨苄青霉素、氯霉素、卡那霉素、壮观霉素和呋喃妥因敏感。具有四环素和链霉素抗性。</p>', 0, 0, 100, 0, 0, 0.00, 0.00, 1, NULL, 'https://www.wangcong.fun:8002/static/upload/brand/34d24cdc-9b0c-47af-8327-28c58f78048e.jpg', 'https://www.wangcong.fun:8002/static/upload/brand/39bb56d2-eab9-4817-80a4-6dcb8f4f858b.png', 420.00, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '');
INSERT INTO `nideshop_goods` VALUES (1181064, 1008001, '', 'TOP10 感受态细胞', 0, 200, '感受态,TOP10', '本公司生产的TOP10感受态细胞是采用大肠杆菌TOP10菌株经特殊工艺处理得到的感受态细胞，可用于DNA的化学转化。', '<p><strong style=\"background-color: rgb(216, 216, 216);\">储存条件：</strong>-70℃保存，避免反复冻融。</p><p><br></p><p class=\"ql-align-justify\"><strong style=\"background-color: rgb(216, 216, 216);\">产品介绍：</strong></p><p class=\"ql-align-justify\">本公司生产的TOP10感受态细胞是采用大肠杆菌TOP10菌株经特殊工艺处理得到的感受态细胞，可用于DNA的化学转化。使用pUC19质粒检测，转化效率可达10<sup>8&nbsp;</sup>cfu/µg，-70℃保存几个月转化效率不发生改变。每支感受态可以酌情分装使用，降低了实验的成本。质量稳定，使用方便，质优价廉。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong style=\"background-color: rgb(216, 216, 216);\">基因型：</strong></p><p class=\"ql-align-justify\"><em>F-mcrAΔ(mrr-hsdRMS-mcrBC)φ80lacZΔM15ΔlacX74recA1araΔ139Δ(ara-leu)7697galUgalKrpsL(str</em><sup><em>R</em></sup><em>)endA1nupG</em></p><p class=\"ql-align-justify\"><br></p><p><strong style=\"background-color: rgb(216, 216, 216);\">产品特点：</strong></p><p class=\"ql-align-justify\">一种用于铺制与培养质粒平板和粘粒平板的重级缺陷的抑制型株。其φ80 lacZΔM15基因的产物可与pUC载体编码的β-半乳糖苷酶氨基端实现α互补，可用于蓝白斑筛选。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong style=\"background-color: rgb(216, 216, 216);\">抗生素耐药性：</strong>细胞具有链霉素抗性。</p><p><br></p><p class=\"ql-align-center\"><span style=\"color: rgb(153, 153, 153);\">（具体操作详见说明书）</span></p>', 0, 0, 100, 0, 0, 0.00, 0.00, 0, NULL, 'https://www.wangcong.fun:8002/static/upload/brand/534b4137-210b-4495-b0a8-bc9466b7d68d.jpg', 'https://www.wangcong.fun:8002/static/upload/brand/799fffd6-fc2b-4f86-9205-bd17bfe5fc02.jpg', 170.00, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 1, '');
INSERT INTO `nideshop_goods` VALUES (1181067, 1007000, '', '1×Plant Direct PCR MasterMix', 0, 200, '植物扩增,PCR', '1×植物直接扩增PCR MasterMix 含有聚合酶、dNTPs和PCR 反应所需的缓冲液，是一种即用型PCR 扩增试剂使用时，只需加入引物和直径为0.5-1mm大小的叶片进行直接PCR 扩增。', '<p><strong style=\"background-color: rgb(217, 217, 217);\">储存条件：</strong>-20℃保存，有效期两年。</p><p><br></p><p><strong style=\"background-color: rgb(217, 217, 217);\">产品介绍：</strong></p><p>1×植物直接扩增PCR&nbsp;MasterMix&nbsp;含有聚合酶、dNTPs和PCR&nbsp;反应所需的缓冲液，是一种即用型PCR&nbsp;扩增试剂使用时，只需加入引物和直径为0.5-1mm大小的叶片进行直接PCR&nbsp;扩增。本产品可以直接使用微量植物叶片（如：水稻、小麦、烟草、玉米、大豆、油菜和西红柿等，叶片长度0.5-1mm见方）进行PCR反应，该PCR预混匀具有很强的扩增能力。该PCR&nbsp;预混液能节省实验时间，避免了常规PCR&nbsp;试剂多次加样造成的实验污染。预混液本身含有染料，扩增完成后可直接上样，进行电泳检测。</p><p><br></p><p><strong style=\"background-color: rgb(217, 217, 217);\">产品应用:</strong></p><p>试剂盒可用于以下用途：转基因植株鉴定、植物基因分型等。</p>', 0, 0, 100, 0, 0, 0.00, 0.00, 1, NULL, 'https://www.wangcong.fun:8002/static/upload/brand/0a555588-a5ad-49c6-a843-f7614058bd26.jpg', 'https://www.wangcong.fun:8002/static/upload/brand/141d5c74-39a7-4dcf-bf94-312b6fe01813.jpg', 120.00, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '');
INSERT INTO `nideshop_goods` VALUES (1181068, 1015001, '', 'EasyMut gene multisite mutagenesis kit（多点突变试剂盒）', 0, 200, ' 无缝克隆,点突变', 'EasyMut基因多点突变试剂盒利用无缝克隆技术来实现基因的定点突变，可用于单点突变和多点突变质粒的构建。', '<p><strong style=\"background-color: rgb(217, 217, 217);\">产品储存：</strong>请按产品指示温度保存各成分</p><p><strong>&nbsp;</strong></p><p><strong style=\"background-color: rgb(217, 217, 217);\">产品介绍：</strong></p><p>本产品利用无缝克隆技术来实现基因的定点突变，可用于单点突变和多点突变质粒的构建。本产品无需除去甲基化模板质粒，无需PCR扩增出整个质粒，并且引物设计更加简便快速，因此可以更加快速，高效地实现定点突变。</p><p>&nbsp;</p><p><strong style=\"background-color: rgb(217, 217, 217);\">产品特点：</strong></p><p>1.&nbsp;利用2×Xerox PCR Master Mix扩增片段，缩短扩增时间（2-4 kb/min），提高保真性；</p><p>2.&nbsp;引物设计更加简单，快速；</p><p>3.&nbsp;省略消化甲基化模板质粒的步骤，更加快速，高效；</p><p>4.&nbsp;无需PCR扩增出整个质粒，减少载体的突变。</p>', 0, 0, 100, 0, 0, 0.00, 0.00, 1, NULL, 'https://www.wangcong.fun:8002/static/upload/brand/74714d27-299d-429f-88ae-eab143d34098.jpg', 'https://www.wangcong.fun:8002/static/upload/brand/eb750570-77da-4fbc-8d82-51122febe9a1.jpg', 1800.00, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '');
INSERT INTO `nideshop_goods` VALUES (1181074, 1008012, '', 'M-MLV 4 Reverse Transcriptase(200U/ul)', 0, 200, '反转录', 'M-MLV 4 Reverse Transcriptase(200U/ul)是通过基因重组技术改造，在大肠杆菌中表达纯化得到的高温反转录酶，去除RNaseH活性。', '<p><strong style=\"background-color: rgb(217, 217, 217);\">储存条件：</strong><strong>-</strong>20℃保存两年。</p><p><br></p><p><strong style=\"background-color: rgb(217, 217, 217);\">制品说明：</strong></p><p>本制品是通过基因重组技术改造，在大肠杆菌中表达纯化得到的高温反转录酶，去除RNaseH活性。该酶可在42℃-65℃条件下合成第一链cDNA，具有灵敏度高，特异性高，热稳定性高和半衰期长的特点。聚合能力强，具有更强的延伸能力，可用于较长的cDNA合成以及高比例的全长cDNA文库的构建等。</p><p><br></p><p><strong style=\"background-color: rgb(217, 217, 217);\">适用范围：</strong>第一链cDNA合成。可用高拷贝、低拷贝基因的检测。</p><p><br></p><p>（具体操作详情见说明书）</p>', 0, 0, 100, 0, 0, 0.00, 0.00, 1, NULL, 'https://www.wangcong.fun:8002/static/upload/brand/afcb1d64-17cf-44c3-a131-bca1cd0cd4fc.jpg', 'https://www.wangcong.fun:8002/static/upload/brand/a637f191-8816-4f36-9c69-222306b0c484.jpg', 350.00, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '');
INSERT INTO `nideshop_goods` VALUES (1181090, 1008008, '', 'PLANTaid 植物 RNA 助提剂', 0, 200, 'RNA 助提剂', '植物助提剂PLANTaid是针对植物RNA提取时，针对富含多糖多酚等不容易清除的特点设计的一种多糖多酚植物RNA提取的辅助剂，主要成份为聚乙烯吡咯烷酮等高分子化合物。', '<p><strong style=\"background-color: rgb(216, 216, 216);\">产品介绍:</strong></p><p>	</p><p class=\"ql-align-justify\">	&nbsp;植物助提剂PLANTaid是针对植物RNA提取时，针对富含多糖多酚等不容易清除的特点设计的一种多糖多酚植物RNA提取的辅助剂，主要成份为聚乙烯吡咯烷酮等高分子化合物。它们可以和多糖多酚等杂质结合，通过离心去除。它和绝大多数常用的使用高离序盐（chaotropic salts&nbsp;）如异硫氰酸胍的RNA提取方法兼容。使用方法简便，只要在正常的RNA提取步骤中加一步骤即可。将PLANTaid加入裂解液后，研磨，匀浆，PLANTaid和多糖多酚等杂质结合，离心将PLANTaid，多糖多酚和任何不溶解的杂质去除,取上清就可以继续后面的正常RNA提取步骤。</p><p>	</p><p><br></p><p><strong style=\"background-color: rgb(216, 216, 216);\">产品特点:</strong></p><p>1. 有效结合RNA提取过程中的多糖多酚，使提出的RNA更纯净。</p><p>2. 可以和多种RNA提取方法相结合，实用性很广。</p><p><br></p><p>&nbsp;</p><p><strong style=\"background-color: rgb(216, 216, 216);\">产品储存:</strong>常温运输，室温或者4°C可保存6个月。&nbsp;</p>', 0, 0, 100, 0, 0, 0.00, 0.00, 0, NULL, 'https://www.wangcong.fun:8002/static/upload/brand/1296d76f-8563-4e96-ae64-72ee7c8a7f7f.png', 'https://www.wangcong.fun:8002/static/upload/brand/ac466e0e-0785-4a20-8e18-15957fa456ab.png', 100.00, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '');
INSERT INTO `nideshop_goods` VALUES (1181091, 1008008, '', '病毒基因组 DNA/RNA 快速提取试剂盒', 0, 200, '病毒基因组提取', '采用特异性结合病毒DNA/RNA 的离心吸附柱和独特的缓冲液系统，病毒DNA/RNA提取试剂盒适合于从体液，包括血浆、血清、腹水、培养细胞上清液、脑脊髓液及尿液等中快速提取高纯病毒DNA/RNA。', '<p><strong style=\"background-color: rgb(216, 216, 216);\">产品介绍:</strong></p><p><br></p><p>	采用特异性结合病毒DNA/RNA 的离心吸附柱和独特的缓冲液系统，病毒DNA/RNA提取试剂盒适合于从体液，包括血浆、血清、腹水、培养细胞上清液、脑脊髓液及尿液等中快速提取高纯病毒DNA/RNA。病毒DNA/RNA裂解消化处理后在高离序盐状态下选择性吸附于离心柱内硅基质膜（特别配备了Carrier RNA可以从体系中轻松捕获微量病毒DNA/RNA），再通过一系列快速的漂洗－离心的步骤，将盐、细胞代谢物、蛋白等杂质去除，最后低盐的洗脱缓冲液将纯净的病毒DNA/RNA从硅基质膜上洗脱。纯化后的病毒核酸无杂质和PCR抑制剂，可直接适用于PCR/RT-PCR分析。&nbsp;</p><p>	</p><p><br></p><p><strong style=\"background-color: rgb(216, 216, 216);\">产品特点:</strong></p><p><br></p><p>1.不需要使用有毒的苯酚等试剂，也不需要乙醇沉淀等步骤。</p><p>2.节省时间，简捷，单个样品操作一般可在20分钟内完成。</p><p>3.配备了Carrier RNA用于充分收集特别微量病毒DNA/RNA。</p><p>4.多次柱漂洗确保高纯度，提取的病毒DNA/RNA纯度高，质量稳定可靠，可适用于各种常规操作，包括PCR/RT-PCR、酶切、测序、Southern杂交等。&nbsp;</p><p><br></p><p><br></p><p><strong style=\"background-color: rgb(216, 216, 216);\">产品储存:</strong>本产品收到后按照上面指示温度存放各成份，储存12个月不影响使用效果。&nbsp;</p><p><br></p><p><br></p><p><strong style=\"background-color: rgb(216, 216, 216);\">自备试剂:</strong>无水乙醇</p><p><br></p><p class=\"ql-align-center\"><span style=\"color: rgb(165, 165, 165);\">（具体操作详见说明书）</span></p><p><br></p>', 0, 0, 100, 0, 0, 0.00, 0.00, 0, NULL, 'https://www.wangcong.fun:8002/static/upload/brand/c03c4891-be1d-4ccc-965a-8a5a6f52ab5c.png', 'https://www.wangcong.fun:8002/static/upload/brand/604db7c3-f28d-41be-b610-52984f4723f2.png', 1020.00, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '');
INSERT INTO `nideshop_goods` VALUES (1181092, 1008008, '', 'RNAclean RNA 清洁纯化试剂盒', 0, 200, 'RNA纯化', '本试剂盒使用离心吸附柱硅基质膜全部采用进口特制吸附膜，柱与柱之间吸附量差异极小、可重复性好。', '<p><strong style=\"background-color: rgb(216, 216, 216);\">产品介绍:</strong></p><p><br></p><p>	本试剂盒使用离心吸附柱硅基质膜全部采用进口特制吸附膜，柱与柱之间吸附量差异极小、可重复性好。在高盐条件下RNA 与硅胶吸附膜高效、专一地结合，同时最大限度除去蛋白质、无机盐离子和许多有机杂质等，在低盐条件下，RNA被洗脱。可处理的RNA样品量可高达50μg。本试剂盒用于从酶反应液（如DNase处理、蛋白酶处理、RNA标记等）中纯化回收RNA，也可用于从其它方式提取获得的RNA的纯化。纯化的总RNA没有蛋白的污染，所得的RNA可用于Northern blot、Dot blot、mRNA提取、cDNA合成、引物延伸、差异显示等。&nbsp;</p><p>	</p><p><br></p><p><strong style=\"background-color: rgb(216, 216, 216);\">产品特点：</strong></p><p><br></p><p>1. 重复性好，离心吸附柱内硅基质膜全部采用进口特制吸附膜，柱与柱之间吸附量差异极小。</p><p>2. 节省时间、简捷，单个样品操作一般可在20分钟内完成。</p><p>3. 可配合RNase free DNase直接在离心吸附柱子RA上面消化DNA。&nbsp;</p><p><br></p><p><strong style=\"background-color: rgb(216, 216, 216);\">产品储存：</strong>本试剂盒在室温储存12个月不影响使用效果。&nbsp;</p><p>	</p><p><strong style=\"background-color: rgb(216, 216, 216);\">储存事项：</strong></p><p><br></p><p>1. 所有的溶液应该是澄清的，如果环境温度低时溶液可能形成沉淀，此时不应该直接使用，可在37℃水浴加热几分钟，即可恢复澄清。</p><p>2. 避免试剂长时间暴露于空气中产生挥发、氧化、PH值变化，各溶液使用后应及时盖紧盖子。</p><p><br></p><p class=\"ql-align-center\"><span style=\"color: rgb(165, 165, 165);\">（具体操作详见说明书）</span></p><p><br></p>', 0, 0, 100, 0, 0, 0.00, 0.00, 0, NULL, 'https://www.wangcong.fun:8002/static/upload/brand/0d8f2820-a480-445e-8e30-4d512e4e1bda.png', 'https://www.wangcong.fun:8002/static/upload/brand/3d86041c-d4e4-427d-9de0-cb3ad24f62c2.png', 600.00, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '');
INSERT INTO `nideshop_goods` VALUES (1181093, 1008008, '', 'RNAfixer 无液氮 RNA 样品储存液', 0, 200, '无液氮', 'RNAfixer 是一种水相的，无毒的组织保存液体，可以迅速渗入新鲜组织细胞的胞浆中，在非冻状态下原位稳定和保护细胞内的RNA。', '<p><strong style=\"background-color: rgb(216, 216, 216);\">产品介绍：</strong></p><p><br></p><p>	&nbsp;RNAfixer 是一种水相的，无毒的组织保存液体，可以迅速渗入新鲜组织细胞的胞浆中，在非冻状态下原位稳定和保护细胞内的RNA。取下组织薄片后立刻浸入RNAfixer保存并不影响将来提取RNA的质量和数量。RNAfixer消除了RNA样品需要立刻处理或者必须液氮保存的不方便。浸入RNAfixer后，新鲜组织细胞中RNA可以完好的在37℃下保存一天, 在25℃下保存一周, 4℃下保存一个月,在-20℃或-80℃下长期保存。RNA病毒样品(如HCV 和HIV)可在37℃保存一个月。适用于动物组织（心、肝、肾、肌肉、睾丸、脑、脾等）、培养细胞、RNA病毒、果蝇、细菌、白细胞、一些植物组织等。&nbsp;</p><p>	</p><p><strong style=\"background-color: rgb(216, 216, 216);\">产品特点：</strong></p><p><br></p><p>1.操作容易：将组织剪成适当大小，浸没在RNAfixer中即可使其RNA不被降解。</p><p>2. 无需液氮：使样品的保存不需液氮,干冰或-80℃冰箱, 尤其适用于临床和野外样品的快速和大规模采集。</p><p>3. 方便运输：处理过的样品能在25℃保存一周, 使样品邮寄和运输变得容易和便宜, 有利学术合作和交流。</p><p>4. 多次冻融: 经RNAfixer处理的样品可反复冻融多次, 其间可对样品进行各种处理而不影响最终提取的RNA 的质量。</p><p>5. 可比性强: RNAfixer能减少大规模样品处理中的误差, 增加各次实验数间的可比性,对大规模基因表达谱的分析尤其有用。</p><p>6. 兼容性广: 多种总RNA提取试剂都可以用来提取保存在RNAfixer内样品。还可以直接用于组织切片，免疫学和流式细胞分析而不影响RNA提取的质量。&nbsp;</p><p><br></p><p><strong style=\"background-color: rgb(216, 216, 216);\">产品储存：</strong>透明液体，室温(18-25℃)保存期限为12个月，如果使用时发现有沉淀或者析出，可以在37℃加热重新溶解后使用，不影响产品质量。&nbsp;</p>', 0, 0, 100, 0, 0, 0.00, 0.00, 0, NULL, 'https://www.wangcong.fun:8002/static/upload/brand/190d465c-6212-4f47-aed5-0945897dc376.png', 'https://www.wangcong.fun:8002/static/upload/brand/7c4421f2-4a9c-4843-b7d3-5b5f9b31a42c.png', 450.00, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '');
INSERT INTO `nideshop_goods` VALUES (1181094, 1008008, '', 'RNAsafe 高效RNase灭活剂', 0, 200, '灭活剂,RNase', ' RNAsafe含有数种特殊化合物，可使RNase失活，高效去除各种溶液或者反应缓冲液中可能存在的RNase污染，从而防止RNA的降解。', '<p><strong>产品介绍:</strong></p><p><br></p><p>&nbsp;&nbsp;RNAsafe含有数种特殊化合物，可使RNase失活，高效去除各种溶液或者反应缓冲液中可能存在的RNase污染，从而防止RNA的降解。RNAsafe可用于制备RNA悬浮液，并可加入到各种RNA的反应液中（如体外转录、逆转录、RT-PCR、探针制备、分子杂交、Nuclease Protection Assay等），灭活可能存在的微量RNase污染，以增进RNA稳定性，获得更佳实验结果。&nbsp;</p><p><br></p><p><br></p><p><strong>产品特点：</strong></p><p><br></p><p>1. 适合于各种缓冲液，包括不能由DEPC处理的Tris及MOPS缓冲液系统等。</p><p><br></p><p>2. 安全，方便地去除溶液中微量的RNase。</p><p><br></p><p>3. 处理过的溶液随时可以再处理（60℃ 10-20分钟），以去除任何可能发生的后续RNase污染。</p><p><br></p><p>4. 不影响逆转录酶、RNA聚合酶和耐热DNA聚合酶的活性，可用于逆转录和体外转录反应。</p><p><br></p><p>5. 处理后不需高压灭菌。&nbsp;</p><p><br></p><p><br></p><p><strong>产品储存：</strong>－20℃保存半年以上&nbsp;</p>', 0, 0, 100, 0, 0, 0.00, 0.00, 0, NULL, 'https://www.wangcong.fun:8002/static/upload/brand/d52714dd-7415-477d-a5f4-6e7155f5ed7a.png', 'https://www.wangcong.fun:8002/static/upload/brand/d8a38ee3-97ff-4b75-b9dd-d9f6f1d7ca1e.png', 680.00, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '');
INSERT INTO `nideshop_goods` VALUES (1181095, 1008008, '', 'RNAlong RNA长期保存液', 0, 200, 'RNA保存液', 'RNA性质不稳定，极易降解。溶解于无RNase 的TE或水中的纯化RNA，即便是储存于-20 ºC也难免降解。', '<p><strong style=\"background-color: rgb(216, 216, 216);\">产品储存：</strong>4℃&nbsp;</p><p><br></p><p><br></p><p><strong style=\"background-color: rgb(216, 216, 216);\">产品介绍：</strong></p><p><br></p><p>&nbsp;&nbsp;&nbsp;&nbsp;RNA性质不稳定，极易降解。溶解于无RNase 的TE或水中的纯化RNA，即便是储存于-20 ºC也难免降解。为解决这一问题，可以将RNA沉淀或RNA溶液溶解于RNA长期保存液中，可以允许RNA 在4ºC过夜或-20 ºC保存至少1年而免于降解。RNA长期保存液是RNA样品运输和中长期保存的最佳选择。需要时可用常规乙醇法沉淀回收RNA，或直接吸取储存于RNA溶解保护液中的高浓度RNA(可达4mg/ml)进行RNA电泳、Northern Blot。&nbsp;</p><p><br></p><p><br></p><p><strong style=\"background-color: rgb(216, 216, 216);\">产品特点：</strong></p><p><br></p><p>将RNA沉淀或RNA溶液溶解于RNA长期保存液中，可以允许RNA在4ºC过夜或-20ºC保存至少1年而免于降解。&nbsp;</p><p><br></p><p><strong style=\"background-color: rgb(216, 216, 216);\">注意事项：</strong></p><p><br></p><p>1.RNA长期保存液可能抑制逆转录酶活性，做RT-PCR反应前应该用乙醇沉淀RNA。</p><p>2.在RNA 长期保存液中的RNA 的终浓度不应该超过4μg /μl。</p>', 0, 0, 100, 0, 0, 0.00, 0.00, 0, NULL, 'https://www.wangcong.fun:8002/static/upload/brand/2ee87181-9b26-4102-9a3c-6326ac36bdcf.png', 'https://www.wangcong.fun:8002/static/upload/brand/1e71f478-a6ac-4afc-b8bb-0b04a77b34ba.png', 85.00, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '');
INSERT INTO `nideshop_goods` VALUES (1181096, 1008008, '', 'RNase Away 即用型强力 RNase 灭活剂', 0, 200, '灭活剂', 'RNaseAway主要用来清除实验器具表面RNA酶。它含有数种抑制RNA酶成份，可以有效的清除包括操作台，玻璃表面，塑料表面等处的RNA酶污染。', '<p><strong style=\"background-color: rgb(216, 216, 216);\">产品介绍:</strong></p><p><br></p><p>&nbsp;&nbsp;&nbsp;RNaseAway主要用来清除实验器具表面RNA酶。它含有数种抑制RNA酶成份，可以有效的清除包括操作台，玻璃表面，塑料表面等处的RNA酶污染。&nbsp;</p><p><br></p><p><strong style=\"background-color: rgb(216, 216, 216);\">产品特点:</strong>用于清除实验器皿表面的RNase。&nbsp;</p><p><br></p><p><strong style=\"background-color: rgb(216, 216, 216);\">产品储存:</strong>室温6个月&nbsp;</p><p><br></p><p><strong style=\"background-color: rgb(216, 216, 216);\">注意事项:</strong></p><p><br></p><p>1. RNaseAway环境温度低时可能会析出浑浊或者沉淀，可在37℃水浴加热几分钟，即可恢复澄清，不要剧烈摇晃，以免形成过量的泡沫。</p><p>2. 避免试剂长时间暴露于空气中产生挥发、氧化、PH值变化影响使用效果，各溶液使用后应及时盖紧盖子。</p><p>3. RNaseAway有腐蚀性，操作时候应该戴手套，并且避免用于某些易腐蚀的金属表面。</p>', 0, 0, 100, 0, 0, 0.00, 0.00, 0, NULL, 'https://www.wangcong.fun:8002/static/upload/brand/9b912657-b269-44a8-a985-8d0e30a5e32b.png', 'https://www.wangcong.fun:8002/static/upload/brand/7a3fe70d-3f17-4271-bb6b-ddcbf7376452.png', 250.00, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, 0, '');
COMMIT;

-- ----------------------------
-- Table structure for nideshop_goods_attribute
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_goods_attribute`;
CREATE TABLE `nideshop_goods_attribute` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) unsigned NOT NULL DEFAULT '0',
  `attribute_id` int(11) unsigned NOT NULL DEFAULT '0',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`),
  KEY `attr_id` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of nideshop_goods_attribute
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_goods_attribute` VALUES (922, 1181000, 16, 'RA101-01');
INSERT INTO `nideshop_goods_attribute` VALUES (923, 1181000, 16, 'RA101-02');
INSERT INTO `nideshop_goods_attribute` VALUES (924, 1181000, 41, '50ml');
INSERT INTO `nideshop_goods_attribute` VALUES (925, 1181000, 41, '50ml×2');
INSERT INTO `nideshop_goods_attribute` VALUES (926, 1181000, 95, '360');
INSERT INTO `nideshop_goods_attribute` VALUES (927, 1181000, 95, '580');
INSERT INTO `nideshop_goods_attribute` VALUES (951, 1181023, 16, 'RA102-01');
INSERT INTO `nideshop_goods_attribute` VALUES (952, 1181023, 41, '50ml×2');
INSERT INTO `nideshop_goods_attribute` VALUES (953, 1181023, 95, '690');
INSERT INTO `nideshop_goods_attribute` VALUES (963, 1181022, 16, 'RA103-01,RA103-02');
INSERT INTO `nideshop_goods_attribute` VALUES (964, 1181022, 41, '20次,50次');
INSERT INTO `nideshop_goods_attribute` VALUES (965, 1181022, 95, '440,890');
INSERT INTO `nideshop_goods_attribute` VALUES (975, 1181024, 16, 'RA101-01,RA101-02,RA101-11,RA101-12');
INSERT INTO `nideshop_goods_attribute` VALUES (976, 1181024, 41, '50ml,50mlx2,50ml,50mlx2');
INSERT INTO `nideshop_goods_attribute` VALUES (977, 1181024, 95, '360,580,360,580');
INSERT INTO `nideshop_goods_attribute` VALUES (1002, 1181070, 16, '111');
INSERT INTO `nideshop_goods_attribute` VALUES (1006, 1181073, 16, '111');
INSERT INTO `nideshop_goods_attribute` VALUES (1007, 1181073, 16, '2222');
INSERT INTO `nideshop_goods_attribute` VALUES (1053, 1181020, 16, 'RA105-01');
INSERT INTO `nideshop_goods_attribute` VALUES (1054, 1181020, 41, '50次');
INSERT INTO `nideshop_goods_attribute` VALUES (1055, 1181020, 95, '1090');
INSERT INTO `nideshop_goods_attribute` VALUES (1059, 1181018, 16, 'RA102-01');
INSERT INTO `nideshop_goods_attribute` VALUES (1060, 1181018, 41, '50ml×2');
INSERT INTO `nideshop_goods_attribute` VALUES (1061, 1181018, 95, '690');
INSERT INTO `nideshop_goods_attribute` VALUES (1062, 1181019, 16, 'RA106-01,RA106-02');
INSERT INTO `nideshop_goods_attribute` VALUES (1063, 1181019, 41, '20次,50次');
INSERT INTO `nideshop_goods_attribute` VALUES (1064, 1181019, 95, '550,1190');
INSERT INTO `nideshop_goods_attribute` VALUES (1065, 1181021, 16, 'RA104-01');
INSERT INTO `nideshop_goods_attribute` VALUES (1066, 1181021, 41, '50次');
INSERT INTO `nideshop_goods_attribute` VALUES (1067, 1181021, 95, '1190');
INSERT INTO `nideshop_goods_attribute` VALUES (1068, 1181046, 66, 'PA303-01');
INSERT INTO `nideshop_goods_attribute` VALUES (1069, 1181046, 67, '1ml');
INSERT INTO `nideshop_goods_attribute` VALUES (1070, 1181046, 68, '580');
INSERT INTO `nideshop_goods_attribute` VALUES (1071, 1181063, 50, 'BC118-01');
INSERT INTO `nideshop_goods_attribute` VALUES (1072, 1181063, 51, '100ul×20');
INSERT INTO `nideshop_goods_attribute` VALUES (1073, 1181063, 52, '420');
INSERT INTO `nideshop_goods_attribute` VALUES (1077, 1181064, 50, 'BC101-01,BC101-02');
INSERT INTO `nideshop_goods_attribute` VALUES (1078, 1181064, 51, '100ul×10,100ul×20');
INSERT INTO `nideshop_goods_attribute` VALUES (1079, 1181064, 52, '170,310');
INSERT INTO `nideshop_goods_attribute` VALUES (1080, 1181067, 8, 'MT214-01,MT214-02,MT214-03');
INSERT INTO `nideshop_goods_attribute` VALUES (1081, 1181067, 9, '1ml,1mlx5,1mlx100');
INSERT INTO `nideshop_goods_attribute` VALUES (1082, 1181067, 15, '120,500,9000');
INSERT INTO `nideshop_goods_attribute` VALUES (1089, 1181015, 16, 'RA101-01,RA101-02,RA101-11,RA101-12');
INSERT INTO `nideshop_goods_attribute` VALUES (1090, 1181015, 41, '50ml,50mlx2,50ml,50mlx2');
INSERT INTO `nideshop_goods_attribute` VALUES (1091, 1181015, 95, '360,580,360,580');
INSERT INTO `nideshop_goods_attribute` VALUES (1092, 1181068, 43, 'CL307-01');
INSERT INTO `nideshop_goods_attribute` VALUES (1093, 1181068, 44, '20次');
INSERT INTO `nideshop_goods_attribute` VALUES (1094, 1181068, 106, '1800');
INSERT INTO `nideshop_goods_attribute` VALUES (1095, 1181074, 8, 'AT303-01,AT303-02');
INSERT INTO `nideshop_goods_attribute` VALUES (1096, 1181074, 9, '10000U,10000Ux5');
INSERT INTO `nideshop_goods_attribute` VALUES (1097, 1181074, 15, '350,1600');
INSERT INTO `nideshop_goods_attribute` VALUES (1098, 1181090, 16, 'RA107-01');
INSERT INTO `nideshop_goods_attribute` VALUES (1099, 1181090, 41, '5ml×2');
INSERT INTO `nideshop_goods_attribute` VALUES (1100, 1181090, 95, '100');
INSERT INTO `nideshop_goods_attribute` VALUES (1101, 1181091, 16, 'RA108-01');
INSERT INTO `nideshop_goods_attribute` VALUES (1102, 1181091, 41, '50 次');
INSERT INTO `nideshop_goods_attribute` VALUES (1103, 1181091, 95, '1020');
INSERT INTO `nideshop_goods_attribute` VALUES (1104, 1181092, 16, 'RA109-01');
INSERT INTO `nideshop_goods_attribute` VALUES (1105, 1181092, 41, '50次');
INSERT INTO `nideshop_goods_attribute` VALUES (1106, 1181092, 95, '600');
INSERT INTO `nideshop_goods_attribute` VALUES (1107, 1181093, 16, '');
INSERT INTO `nideshop_goods_attribute` VALUES (1108, 1181093, 41, '');
INSERT INTO `nideshop_goods_attribute` VALUES (1109, 1181093, 95, '');
INSERT INTO `nideshop_goods_attribute` VALUES (1110, 1181094, 16, '');
INSERT INTO `nideshop_goods_attribute` VALUES (1111, 1181094, 41, '');
INSERT INTO `nideshop_goods_attribute` VALUES (1112, 1181094, 95, '');
INSERT INTO `nideshop_goods_attribute` VALUES (1113, 1181095, 16, '');
INSERT INTO `nideshop_goods_attribute` VALUES (1114, 1181095, 41, '');
INSERT INTO `nideshop_goods_attribute` VALUES (1115, 1181095, 95, '');
INSERT INTO `nideshop_goods_attribute` VALUES (1116, 1181096, 16, '');
INSERT INTO `nideshop_goods_attribute` VALUES (1117, 1181096, 41, '');
INSERT INTO `nideshop_goods_attribute` VALUES (1118, 1181096, 95, '');
COMMIT;

-- ----------------------------
-- Table structure for nideshop_goods_gallery
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_goods_gallery`;
CREATE TABLE `nideshop_goods_gallery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) unsigned NOT NULL DEFAULT '0',
  `img_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `img_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sort_order` int(11) unsigned NOT NULL DEFAULT '5',
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=904 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of nideshop_goods_gallery
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_goods_gallery` VALUES (1, 1006002, 'http://yanxuan.nosdn.127.net/4eb09e08ac9de543d2291d27a6be0b54.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (2, 1006002, 'http://yanxuan.nosdn.127.net/0c9eb81c7594dbe42802ff1ebbece51a.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (3, 1006002, 'http://yanxuan.nosdn.127.net/8cfc7b6bfd28687ab3399da08e5ba61b.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (4, 1006002, 'http://yanxuan.nosdn.127.net/b98cfd7f197b62abd1679321eae253a6.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (5, 1006007, 'http://yanxuan.nosdn.127.net/b7e3438c473a296a7e9feecbd4139af5.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (6, 1006007, 'http://yanxuan.nosdn.127.net/70422011e5a9855a0723c9c08d0cbbb0.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (7, 1006007, 'http://yanxuan.nosdn.127.net/f65dbb00aff8b43be02f2c8104208877.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (8, 1006007, 'http://yanxuan.nosdn.127.net/85e8575c8e473a2f71054e9e36b1211c.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (9, 1006010, 'http://yanxuan.nosdn.127.net/9b40ba300851af1b84ca0749bae70718.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (10, 1006010, 'http://yanxuan.nosdn.127.net/fd7465ba32e23fd107161306d6b580cc.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (11, 1006010, 'http://yanxuan.nosdn.127.net/288dc3fe3238962519f3abd5201e411e.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (12, 1006010, 'http://yanxuan.nosdn.127.net/06cb7ac0991cb4ea236c826e8e6f0a9c.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (13, 1006013, 'http://yanxuan.nosdn.127.net/d83cbd9ec177276ba2582ee393eff3db.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (14, 1006013, 'http://yanxuan.nosdn.127.net/b73852cf22939c4995a5bc8996a4afdd.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (15, 1006013, 'http://yanxuan.nosdn.127.net/d2fe16d259e0187d6b53eef028e843d1.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (16, 1006013, 'http://yanxuan.nosdn.127.net/4e8f5c09ae9dd03b5ae5b1287b598cc5.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (17, 1006014, 'http://yanxuan.nosdn.127.net/22535d179b6796fbd45a83d6ecea3b50.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (18, 1006014, 'http://yanxuan.nosdn.127.net/6e93d7d868d918bef0138748ffbd9458.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (19, 1006014, 'http://yanxuan.nosdn.127.net/ccc21b29557929ec99067a445fc74ea3.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (20, 1006014, 'http://yanxuan.nosdn.127.net/1479bec93b57855889d93a9f4eef0b72.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (21, 1009009, 'http://yanxuan.nosdn.127.net/33a04714bc15a43d0ce87d71d1d9694a.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (22, 1009009, 'http://yanxuan.nosdn.127.net/e0999e26962b6e88b05fdfe9ba8ff644.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (23, 1009009, 'http://yanxuan.nosdn.127.net/dd2aff7f4edb26f5e0f691e94a51c66a.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (24, 1009009, 'http://yanxuan.nosdn.127.net/78059fd78b649d395f8e5740ba8eb99e.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (25, 1009012, 'http://yanxuan.nosdn.127.net/c2f88baff6d3d9c954bf437649d26954.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (26, 1009012, 'http://yanxuan.nosdn.127.net/36176eb5337c5048cf4403b145f43bc4.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (27, 1009012, 'http://yanxuan.nosdn.127.net/13aae0f61d87198867c088aa50c00043.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (28, 1009012, 'http://yanxuan.nosdn.127.net/40e881087eae3ef541aa13f6b4e9d356.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (29, 1009013, 'http://yanxuan.nosdn.127.net/34bb2ff0358432c3f15e6afa0d5d2104.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (30, 1009013, 'http://yanxuan.nosdn.127.net/5114eb391397033eca305055e21d9cb3.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (31, 1009013, 'http://yanxuan.nosdn.127.net/73a866b532183dec74232b0cc1b36428.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (32, 1009013, 'http://yanxuan.nosdn.127.net/331a2954f81d0cfe764cbdf2e5b6b328.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (33, 1009024, 'http://yanxuan.nosdn.127.net/9460f6b30661548c4a864607bfcdf4ca.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (34, 1009024, 'http://yanxuan.nosdn.127.net/acbdb480bcad193fad77ef6c4f52192e.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (35, 1009024, 'http://yanxuan.nosdn.127.net/e6feb5f4a0989d212bce068d4907657d.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (36, 1009024, 'http://yanxuan.nosdn.127.net/6059ab6e106d97c29d5723c1d6f1a11f.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (37, 1010000, 'http://yanxuan.nosdn.127.net/57779dbcd9cbb95241123d798f4693c2.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (38, 1010000, 'http://yanxuan.nosdn.127.net/64c52113e0c5ca42cd363d5854280119.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (39, 1010000, 'http://yanxuan.nosdn.127.net/b578539da6f0e39eb74991e9a0b74a90.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (40, 1010000, 'http://yanxuan.nosdn.127.net/b544dee2401c02e95c0a7bc70960eadf.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (41, 1010001, 'http://yanxuan.nosdn.127.net/5abc565d5b01e8de15fa16acf58ed40e.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (42, 1010001, 'http://yanxuan.nosdn.127.net/36cb5783a102c30b818adb7bf5dfde5b.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (43, 1010001, 'http://yanxuan.nosdn.127.net/057bee2ec4c883077f4dc710c4076369.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (44, 1010001, 'http://yanxuan.nosdn.127.net/01a2844b480d2456d2e764c0ea2f8201.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (45, 1011004, 'http://yanxuan.nosdn.127.net/f7e77331229098060bbacf2fc6c1708b.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (46, 1011004, 'http://yanxuan.nosdn.127.net/2720383ea168872acc8d492de9573cc6.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (47, 1011004, 'http://yanxuan.nosdn.127.net/45e4c14029626178419c82f2837f51ca.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (48, 1011004, 'http://yanxuan.nosdn.127.net/bb6c28d502704d5c1645d066f79bf61d.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (49, 1015007, 'http://yanxuan.nosdn.127.net/013657a5a5faf8a9a7e3f39b5bba4eac.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (50, 1015007, 'http://yanxuan.nosdn.127.net/d46ba997e163430e43735e4ad1caeff0.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (51, 1015007, 'http://yanxuan.nosdn.127.net/a90e545295d22de031b10aee631e48fe.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (52, 1015007, 'http://yanxuan.nosdn.127.net/f7188ec871d1f721f64cbe04860a4fe2.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (53, 1019000, 'http://yanxuan.nosdn.127.net/129cf4c83627828d8c68134eed07acba.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (54, 1019000, 'http://yanxuan.nosdn.127.net/155cd16ef921a10849eb6f353a81711d.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (55, 1019000, 'http://yanxuan.nosdn.127.net/50c44c65dc8913fbc87da4d29e4e16a1.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (56, 1019000, 'http://yanxuan.nosdn.127.net/007f21a042e9bc44ac4f44db11e5428b.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (57, 1019001, 'http://yanxuan.nosdn.127.net/35634c85786bb56314df11c0dbea1b57.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (58, 1019001, 'http://yanxuan.nosdn.127.net/cdcdee30c0d89fd4defb57539dfab468.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (59, 1019001, 'http://yanxuan.nosdn.127.net/9bbfbeead2e0b038f6ee002a2f556281.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (60, 1019001, 'http://yanxuan.nosdn.127.net/e86e34c26d2b6d6caa02cd6cf4039cf5.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (61, 1019002, 'http://yanxuan.nosdn.127.net/c51baecb5f1b3ae106edca6921f74ba8.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (62, 1019002, 'http://yanxuan.nosdn.127.net/26a804344502042242df6c3d38ccd3d4.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (63, 1019002, 'http://yanxuan.nosdn.127.net/a3c11ba31e777302be5569b8f76eadc1.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (64, 1019002, 'http://yanxuan.nosdn.127.net/dbb20bd6803e83b02f4880e1a4f22ad2.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (65, 1019006, 'http://yanxuan.nosdn.127.net/7d5b06bf24cf343ac939b38fb8c1a1c7.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (66, 1019006, 'http://yanxuan.nosdn.127.net/343d55292417edd5c3959f3ff5c28020.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (67, 1019006, 'http://yanxuan.nosdn.127.net/3e2d677726a32443cfb4e82b15829ff3.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (68, 1019006, 'http://yanxuan.nosdn.127.net/fff8d78ae12dfe5477e16669664ba4f5.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (69, 1020000, 'http://yanxuan.nosdn.127.net/e163b42594b58936ee8500abb8b4112c.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (70, 1020000, 'http://yanxuan.nosdn.127.net/1f6f41a8c5cdafe375548d77e9f06d78.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (71, 1020000, 'http://yanxuan.nosdn.127.net/b69fd91ecc1c9b9aa431b8df4298a6a1.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (72, 1020000, 'http://yanxuan.nosdn.127.net/a621c700d49357a4ab46c6c7a97fa83c.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (73, 1021004, 'http://yanxuan.nosdn.127.net/7040cb7e6982c3e008575a4ef28c9ca2.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (74, 1021004, 'http://yanxuan.nosdn.127.net/28f75df99da69ef03d1a9eb581571438.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (75, 1021004, 'http://yanxuan.nosdn.127.net/21bdfbb496ba391223b1ea35cecf61a5.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (76, 1021004, 'http://yanxuan.nosdn.127.net/6b00e7da23c7d6db26e6d7b6a7615dd2.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (77, 1021010, 'http://yanxuan.nosdn.127.net/4b0e35f974567e45c3070e85e228fae0.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (78, 1021010, 'http://yanxuan.nosdn.127.net/b7dfccd8bdc97d8823ac0e7ef788ffb3.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (79, 1021010, 'http://yanxuan.nosdn.127.net/7a4b5ffb08ac487647c2988ec0d8186d.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (80, 1021010, 'http://yanxuan.nosdn.127.net/13f2f859d43aff3f67b4d81f74b84cc3.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (81, 1022000, 'http://yanxuan.nosdn.127.net/61a44e7426fbc32db87afd48d85f2e99.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (82, 1022000, 'http://yanxuan.nosdn.127.net/ac649a9fc8332aae1c60e8a10fb5a775.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (83, 1022000, 'http://yanxuan.nosdn.127.net/3664e1b166b8dd54d05edd631e6966f9.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (84, 1022000, 'http://yanxuan.nosdn.127.net/989d0d84d55e4a77a1c6dafa0a3bc207.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (85, 1022001, 'http://yanxuan.nosdn.127.net/7c782187c209bed0457ed114569cdedf.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (86, 1022001, 'http://yanxuan.nosdn.127.net/045f5f28165e3f1144fe86ddbbab2ba3.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (87, 1022001, 'http://yanxuan.nosdn.127.net/afda747fab1299be4594f00b3e4e31d2.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (88, 1022001, 'http://yanxuan.nosdn.127.net/2860490e0349016cfc4a6a1d4f57c55d.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (89, 1023012, 'http://yanxuan.nosdn.127.net/184c7ed8ac2ac4f8a7b33ee9d41fde77.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (90, 1023012, 'http://yanxuan.nosdn.127.net/46f42df107e2e338503fd13c4c8be128.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (91, 1023012, 'http://yanxuan.nosdn.127.net/a584f3f733da004d602b3be9d07c3473.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (92, 1023012, 'http://yanxuan.nosdn.127.net/733430be1402c5e645bb40f0682b8ae5.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (93, 1023032, 'http://yanxuan.nosdn.127.net/bbd9bf40c371e5beb0b380f3f431082f.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (94, 1023032, 'http://yanxuan.nosdn.127.net/2b786fa55756292a644dcf7b6f85b1d8.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (95, 1023032, 'http://yanxuan.nosdn.127.net/61a92631136272bf12cba53a4f27edfe.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (96, 1023032, 'http://yanxuan.nosdn.127.net/4c36bfcea9ca68e120f3aadd072bfd1e.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (97, 1023034, 'http://yanxuan.nosdn.127.net/8c244a002f59df20637f3562b768621e.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (98, 1023034, 'http://yanxuan.nosdn.127.net/cc6efd29fb63ff82996f748770efb3de.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (99, 1023034, 'http://yanxuan.nosdn.127.net/66104d84d806a01ff1b97efb730ea577.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (100, 1023034, 'http://yanxuan.nosdn.127.net/a16b2d6dc024e24cf1472c3f0f78940a.png', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (101, 1027004, 'http://yanxuan.nosdn.127.net/d2e98b8645e07db420f19433079c690b.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (102, 1027004, 'http://yanxuan.nosdn.127.net/a32ae0e783c87db508689b42acaf45d5.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (103, 1027004, 'http://yanxuan.nosdn.127.net/0eaf73715435fd18573b523ceb14125c.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (104, 1027004, 'http://yanxuan.nosdn.127.net/55ef8f825782fef23d88479cec7691d9.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (105, 1029005, 'http://yanxuan.nosdn.127.net/7ef08c09c7322d9cb24528aec8802155.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (106, 1029005, 'http://yanxuan.nosdn.127.net/5807317c3918f1ac2cf060cf5944602f.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (107, 1029005, 'http://yanxuan.nosdn.127.net/838453906fdbcd5009186356e356ee62.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (108, 1029005, 'http://yanxuan.nosdn.127.net/d131ee4307756bcc72054f9a8d9c9b43.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (109, 1030001, 'http://yanxuan.nosdn.127.net/b57e971ab0de96e159c2e8de13df25bd.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (110, 1030001, 'http://yanxuan.nosdn.127.net/1e06cd5c6107e37214ea9cf13ef08676.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (111, 1030001, 'http://yanxuan.nosdn.127.net/a7351368b2e1d57958c66a7225230b24.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (112, 1030001, 'http://yanxuan.nosdn.127.net/3b9d726451cbe3c2d4432613d48bc6e9.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (113, 1030002, 'http://yanxuan.nosdn.127.net/63096efbd6271a42d3d830e79bf9635f.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (114, 1030002, 'http://yanxuan.nosdn.127.net/50643ebbcf8a243ca609477f431fe75a.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (115, 1030002, 'http://yanxuan.nosdn.127.net/bfc9ea77fa117eaa6be19ca7329d4c95.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (116, 1030002, 'http://yanxuan.nosdn.127.net/a8540865c48fb297f77d30cdf3fb4884.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (117, 1030003, 'http://yanxuan.nosdn.127.net/1e0a3442eba15bcff79112b6462a8e08.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (118, 1030003, 'http://yanxuan.nosdn.127.net/9750ed0f968d4c879c37396f533f02dc.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (119, 1030003, 'http://yanxuan.nosdn.127.net/725bf6af1c14901068370aa051acecea.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (120, 1030003, 'http://yanxuan.nosdn.127.net/aff411a94562694cbdba5a415ff5dda2.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (121, 1030004, 'http://yanxuan.nosdn.127.net/ff71d72ea77f23c6ebc7f77dd88ab947.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (122, 1030004, 'http://yanxuan.nosdn.127.net/a846819b20cde76700c3e6c9179fff03.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (123, 1030004, 'http://yanxuan.nosdn.127.net/8862d704f5590dc42c538a85120e1525.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (124, 1030004, 'http://yanxuan.nosdn.127.net/cc182d01d83a3aea2f2928190ce523b6.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (125, 1030005, 'http://yanxuan.nosdn.127.net/d01e245eaeeff36003b083f9e48421a0.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (126, 1030005, 'http://yanxuan.nosdn.127.net/71fbb4653d7de33f53f8d272eebe9c8e.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (127, 1030005, 'http://yanxuan.nosdn.127.net/66a750c2205b4ed159818cfefc961d32.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (128, 1030005, 'http://yanxuan.nosdn.127.net/59b6eeb70a31992b1ea9b5fb3c781c27.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (129, 1030006, 'http://yanxuan.nosdn.127.net/ef222b9012932fa7b19bef69069156ed.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (130, 1030006, 'http://yanxuan.nosdn.127.net/e367cc48de5c3fd5f52bbf76cb65ee5a.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (131, 1030006, 'http://yanxuan.nosdn.127.net/3bf6f6d4d373c572d7444a935a3e1e3b.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (132, 1030006, 'http://yanxuan.nosdn.127.net/226a9cd3bed63052e40d2de2fd3c7b6f.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (133, 1035006, 'http://yanxuan.nosdn.127.net/da263f1716b141df0339ea6b8176ce6f.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (134, 1035006, 'http://yanxuan.nosdn.127.net/873f61c908523bc4257a4b511e9e422f.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (135, 1035006, 'http://yanxuan.nosdn.127.net/ecc95cf18f99dee5bfe65f016fa8535f.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (136, 1035006, 'http://yanxuan.nosdn.127.net/80ef121faf019295c15d73ee8cf35425.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (137, 1036002, 'http://yanxuan.nosdn.127.net/1c3acbfaa67a1a2034c53d6a12b87b5b.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (138, 1036002, 'http://yanxuan.nosdn.127.net/49366cac271c5614501660ccf2c886a6.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (139, 1036002, 'http://yanxuan.nosdn.127.net/6def3e5d0f22d46c20f88304f2dd1f23.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (140, 1036002, 'http://yanxuan.nosdn.127.net/49844b0d390c2a1cf6147e80de8c2e51.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (141, 1036013, 'http://yanxuan.nosdn.127.net/e78d08c1c34aac63f3b73f2029ca4e77.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (142, 1036013, 'http://yanxuan.nosdn.127.net/29f185e123c9e1f4c075ff014db44324.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (143, 1036013, 'http://yanxuan.nosdn.127.net/b2f4d0efc4dc1baf94aaa36712681da5.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (144, 1036013, 'http://yanxuan.nosdn.127.net/b342166f7e4c5eb4a430d524f248ef07.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (145, 1036016, 'http://yanxuan.nosdn.127.net/e4cd24991107bf5f020877ae356d5e91.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (146, 1036016, 'http://yanxuan.nosdn.127.net/a98f3626eddeb5840c1ad3f72b5ba368.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (147, 1036016, 'http://yanxuan.nosdn.127.net/2766b097e1b9b3993cf11c68c5581631.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (148, 1036016, 'http://yanxuan.nosdn.127.net/1fe07019b1a38aa1ff5e4da9c301642e.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (149, 1037011, 'http://yanxuan.nosdn.127.net/52e1230341bde01128645c65650f601c.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (150, 1037011, 'http://yanxuan.nosdn.127.net/49b3a096adad4ba4228d5d4fc00eb85f.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (151, 1037011, 'http://yanxuan.nosdn.127.net/01460a9963bdecead79ce86c7df1e90a.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (152, 1037011, 'http://yanxuan.nosdn.127.net/ed12a0fc67eea2fec8a81dd044af28d2.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (153, 1037012, 'http://yanxuan.nosdn.127.net/d37e9d2b6bf71d4afa92928313abb69a.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (154, 1037012, 'http://yanxuan.nosdn.127.net/8ab74790baa735d1afba16aae5464180.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (155, 1037012, 'http://yanxuan.nosdn.127.net/2e1cb4e60899b883dd1824ad9ad8f6d3.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (156, 1037012, 'http://yanxuan.nosdn.127.net/cac91a5d7952110cda8b857c7b92703c.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (157, 1039051, 'http://yanxuan.nosdn.127.net/0b89243ca9fbfbc22469a5970cb1e626.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (158, 1039051, 'http://yanxuan.nosdn.127.net/73c86d83c8b691609dadf738b1c5fc04.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (159, 1039051, 'http://yanxuan.nosdn.127.net/ce894f867b1e3db7ba780726406c86f0.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (160, 1039051, 'http://yanxuan.nosdn.127.net/c031141657ed452c8ef2ab72aae4618e.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (161, 1043005, 'http://yanxuan.nosdn.127.net/e48d2eb849c4426894fad347e9b8691a.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (162, 1043005, 'http://yanxuan.nosdn.127.net/b19866dcc87474faed9e1dbc46f65bcc.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (163, 1043005, 'http://yanxuan.nosdn.127.net/1a63d1f3785071edcc40e98440950f7c.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (164, 1043005, 'http://yanxuan.nosdn.127.net/ba5890ed54ea33c387e9773ab3f5523c.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (165, 1044012, 'http://yanxuan.nosdn.127.net/01cfb372bafa59df04933cd8eeaba197.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (166, 1044012, 'http://yanxuan.nosdn.127.net/193969cf544ac650325e36672e219137.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (167, 1044012, 'http://yanxuan.nosdn.127.net/e08100fe3969def50321373bcfb2b0a8.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (168, 1044012, 'http://yanxuan.nosdn.127.net/72a8bb704e9485c512fdc4831207eec0.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (169, 1046044, 'http://yanxuan.nosdn.127.net/20289753360694c2787b3d65ce9377ac.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (170, 1046044, 'http://yanxuan.nosdn.127.net/17b3b43e437cfe1c764710ff5d1834a5.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (171, 1046044, 'http://yanxuan.nosdn.127.net/1133086c5ee5994545ff68587ded4cb5.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (172, 1046044, 'http://yanxuan.nosdn.127.net/72177689d24d3684d341bb38b94468fa.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (173, 1048005, 'http://yanxuan.nosdn.127.net/112dfb2b0d975c8d525230e91d0b8add.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (174, 1048005, 'http://yanxuan.nosdn.127.net/7fe261a864417c0b78bca12b207678b5.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (175, 1048005, 'http://yanxuan.nosdn.127.net/d3491f2073d31d68af1dd5e050e54efb.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (176, 1048005, 'http://yanxuan.nosdn.127.net/63721e6063a5ba7e218441efd011066e.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (177, 1055012, 'http://yanxuan.nosdn.127.net/55d2d990f71f618146238f5bbf36d650.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (178, 1055012, 'http://yanxuan.nosdn.127.net/4663facadd6c50f7ff11cd92b3cd8e7a.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (179, 1055012, 'http://yanxuan.nosdn.127.net/1c8123fb59473106eb829b6001c59701.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (180, 1055012, 'http://yanxuan.nosdn.127.net/0eeb46f412322fe591fcf134b877c74f.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (181, 1055016, 'http://yanxuan.nosdn.127.net/16fe67152585f306df7de145af71315d.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (182, 1055016, 'http://yanxuan.nosdn.127.net/1ade16619d245b1edcd2179321e6387b.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (183, 1055016, 'http://yanxuan.nosdn.127.net/688a1f344a0d898d4ef9c834f236addc.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (184, 1055016, 'http://yanxuan.nosdn.127.net/7d8801b01b1c53cbdfc07678099ebe80.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (185, 1057036, 'http://yanxuan.nosdn.127.net/bec107bf0cc86dcf90fa084584d68c76.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (186, 1057036, 'http://yanxuan.nosdn.127.net/d5da1d907ce3e5dcc8cf72e925d9494b.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (187, 1057036, 'http://yanxuan.nosdn.127.net/2f82661892afb0fd5efa8ff343f9941e.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (188, 1057036, 'http://yanxuan.nosdn.127.net/fd1d9edc261fb68844c0fb65f0c1a4a4.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (189, 1064000, 'http://yanxuan.nosdn.127.net/d37918aa7193ac6b593f312b521468f0.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (190, 1064000, 'http://yanxuan.nosdn.127.net/31b03320d8a2d98ba118af4bb9d95c27.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (191, 1064000, 'http://yanxuan.nosdn.127.net/cdf49298d942c0326b544bb4cbe68fef.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (192, 1064000, 'http://yanxuan.nosdn.127.net/4a33476bcd469d4e94d2d400c738de04.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (193, 1064002, 'http://yanxuan.nosdn.127.net/874a3f226d63546ca28f774cd9242251.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (194, 1064002, 'http://yanxuan.nosdn.127.net/5e728b405af9d32114162800ffa67d8b.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (195, 1064002, 'http://yanxuan.nosdn.127.net/eb83d490f564fd34b18b65583d0658d1.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (196, 1064002, 'http://yanxuan.nosdn.127.net/af4347f2c2333dfbf654d6b5e549f9e8.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (197, 1064003, 'http://yanxuan.nosdn.127.net/b2de2ebcee090213861612909374f9f8.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (198, 1064003, 'http://yanxuan.nosdn.127.net/3b905dd63fc81b0359a2716fe2a48b65.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (199, 1064003, 'http://yanxuan.nosdn.127.net/dbb11f9a0277b957ee7fa1c82f77d0bd.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (200, 1064003, 'http://yanxuan.nosdn.127.net/9e2f6edb8edfedb03a2e3e6cdfe37b51.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (201, 1064004, 'http://yanxuan.nosdn.127.net/0ce6d033a3550d293737007a088026e1.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (202, 1064004, 'http://yanxuan.nosdn.127.net/510b4711672df2d9b2d83e1505cdc4a3.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (203, 1064004, 'http://yanxuan.nosdn.127.net/d7e4f07329f9ff163ae0e37512ff56d3.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (204, 1064004, 'http://yanxuan.nosdn.127.net/b5cfb249243d2e0d7704c4b84d71e4c1.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (205, 1064006, 'http://yanxuan.nosdn.127.net/d129f712c8aac8835695f61980c621c0.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (206, 1064006, 'http://yanxuan.nosdn.127.net/b4b6641252b78dbcf1572a8995f9666d.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (207, 1064006, 'http://yanxuan.nosdn.127.net/11d466acd868271a6b6c04aa80013232.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (208, 1064006, 'http://yanxuan.nosdn.127.net/a40d02a081b575d8d01808aab3eb2720.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (209, 1064007, 'http://yanxuan.nosdn.127.net/08d319bdd8632420431ff35f23b3578c.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (210, 1064007, 'http://yanxuan.nosdn.127.net/67dd8f238eb459a745094c2d6cba0499.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (211, 1064007, 'http://yanxuan.nosdn.127.net/b4622b31990831f1bfc9116ced8f4e5c.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (212, 1064007, 'http://yanxuan.nosdn.127.net/9931432a7e088a9cd9e62839f4a8c3cd.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (213, 1064021, 'http://yanxuan.nosdn.127.net/fbe15281f89334032ab69e4e6751da64.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (214, 1064021, 'http://yanxuan.nosdn.127.net/997b3ceebb607dde42a17e320a830495.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (215, 1064021, 'http://yanxuan.nosdn.127.net/4b8d97703408cac441e0e0f47f8494da.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (216, 1064021, 'http://yanxuan.nosdn.127.net/b827d1d35e69f6e96e8b99889d322f57.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (217, 1064022, 'http://yanxuan.nosdn.127.net/42b2a421dd83bcf26162b044ff363769.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (218, 1064022, 'http://yanxuan.nosdn.127.net/0e38e0c1b48d36865d8303988631cb9c.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (219, 1064022, 'http://yanxuan.nosdn.127.net/4ddffcd3a434d9a11c6499dd88f7587e.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (220, 1064022, 'http://yanxuan.nosdn.127.net/d9ec4d2b23122e2c234bfec9a864cb67.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (221, 1065004, 'http://yanxuan.nosdn.127.net/3ca2cf7fcfb2bf2b9eba22157a636344.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (222, 1065004, 'http://yanxuan.nosdn.127.net/95d190d1f69187f02385ebc493342cb8.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (223, 1065004, 'http://yanxuan.nosdn.127.net/954b84c81b137c4cf15c93d21d4e4945.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (224, 1065004, 'http://yanxuan.nosdn.127.net/38d3e733df9a3c7dc2b47f4895fe36cb.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (225, 1065005, 'http://yanxuan.nosdn.127.net/6908648f0e5168369d13e8f376b7ed22.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (226, 1065005, 'http://yanxuan.nosdn.127.net/7bf78e4b6bfad80b2d64b7f43e952962.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (227, 1065005, 'http://yanxuan.nosdn.127.net/35777d14d555a8f502587e8d8ed8330e.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (228, 1065005, 'http://yanxuan.nosdn.127.net/8cf033728913902f68f0b081ab118b5f.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (229, 1068010, 'http://yanxuan.nosdn.127.net/84d68d030d379712544c1df2fe5dd75a.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (230, 1068010, 'http://yanxuan.nosdn.127.net/977d1c16a4902d50712a00a0b2415d55.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (231, 1068010, 'http://yanxuan.nosdn.127.net/4794dea6cd4bf39626b00335c00b2257.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (232, 1068010, 'http://yanxuan.nosdn.127.net/8e3c52a8645ab6c83ceff377f33a5500.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (233, 1068011, 'http://yanxuan.nosdn.127.net/ccd6d04356b4b8fa00659b7c287a742f.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (234, 1068011, 'http://yanxuan.nosdn.127.net/a3fddd5ba2d029c8adc22f4346d15be2.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (235, 1068011, 'http://yanxuan.nosdn.127.net/afe43ecb0839d0f1d91551a357db65a9.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (236, 1068011, 'http://yanxuan.nosdn.127.net/85dcb0a492eefb8a64c963400fac48a8.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (237, 1068012, 'http://yanxuan.nosdn.127.net/b99da1e1f21b0fe977c170ab9c06d43b.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (238, 1068012, 'http://yanxuan.nosdn.127.net/bbad82d64b6e7a02d0b1d98189ed4fa2.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (239, 1068012, 'http://yanxuan.nosdn.127.net/e50f8e392c50d9c0538ccfd452849e6a.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (240, 1068012, 'http://yanxuan.nosdn.127.net/98d6ac6863c11e016ab620dc5d79c13c.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (241, 1071004, 'http://yanxuan.nosdn.127.net/38bc080faa7fc71f0659d8f01c2732cb.png', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (242, 1071004, 'http://yanxuan.nosdn.127.net/2fb5b6d817c8abe928499b38e85f9175.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (243, 1071004, 'http://yanxuan.nosdn.127.net/a7b14f413a7880aeab33d54273b75a61.png', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (244, 1071004, 'http://yanxuan.nosdn.127.net/86a75ab34cdc6dba5f86917dbfc5c573.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (245, 1071005, 'http://yanxuan.nosdn.127.net/821f3e9e08116060fef28f24f787d05c.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (246, 1071005, 'http://yanxuan.nosdn.127.net/508d8f7768e53fd2e8666a10882ae09a.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (247, 1071005, 'http://yanxuan.nosdn.127.net/1df6745760f5c35089e542835e6e0c9f.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (248, 1071005, 'http://yanxuan.nosdn.127.net/100d0c180c2569cb2e4b221620a9d7ca.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (249, 1071006, 'http://yanxuan.nosdn.127.net/1abb129cd7cab1f6469adf6bcde59a3d.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (250, 1071006, 'http://yanxuan.nosdn.127.net/1b5b295e3dfc745c0759e0ebbf683bdf.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (251, 1071006, 'http://yanxuan.nosdn.127.net/07b8e6b55ebcbb5554c99f8d4a43d9aa.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (252, 1071006, 'http://yanxuan.nosdn.127.net/07fb9bad42bc23e248039fdd61abfb31.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (253, 1072000, 'http://yanxuan.nosdn.127.net/7814d8085b2258f916a3697bca6aea83.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (254, 1072000, 'http://yanxuan.nosdn.127.net/cef89da34299cd7cebd7a73f0ae3c04a.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (255, 1072000, 'http://yanxuan.nosdn.127.net/e4649c66dd5541878d4ff55eb3991bcd.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (256, 1072000, 'http://yanxuan.nosdn.127.net/0e36b9e351760706e6c15d8e82d671bb.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (257, 1072001, 'http://yanxuan.nosdn.127.net/cfde5301ba393421dc2e3ae718f1e1df.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (258, 1072001, 'http://yanxuan.nosdn.127.net/09fb1d7566f5eaf4a1888e986e22d680.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (259, 1072001, 'http://yanxuan.nosdn.127.net/f9cefc0ae2125053eda113e9ffc46625.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (260, 1072001, 'http://yanxuan.nosdn.127.net/a06657b204eeec45cc40137711c8ab87.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (261, 1075023, 'http://yanxuan.nosdn.127.net/db89f8742e3bda3bae05ea56c2d4d6b3.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (262, 1075023, 'http://yanxuan.nosdn.127.net/4943dc2f6192742f25b3d53a4dab9dcf.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (263, 1075023, 'http://yanxuan.nosdn.127.net/ad02e74a05f02d1d347a34612f673783.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (264, 1075023, 'http://yanxuan.nosdn.127.net/cf2b3277065fd8cf027fad31cc1c2290.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (265, 1075024, 'http://yanxuan.nosdn.127.net/20b8099e0b733dd772eddc867286e4ef.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (266, 1075024, 'http://yanxuan.nosdn.127.net/24d57fc1aaee7ef34d5ad742dbe71c75.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (267, 1075024, 'http://yanxuan.nosdn.127.net/2e9cf29302ae0d14eb86765d4f04b280.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (268, 1075024, 'http://yanxuan.nosdn.127.net/32fe42db040cebe98cdac1cb03fcbe10.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (269, 1081000, 'http://yanxuan.nosdn.127.net/a4fda9721fda4cb644f7eaf8e07a26f0.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (270, 1081000, 'http://yanxuan.nosdn.127.net/086010dccc921d77f21c67d15b3f4233.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (271, 1081000, 'http://yanxuan.nosdn.127.net/f652505736cd034a74c2dc89637dcd4e.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (272, 1081000, 'http://yanxuan.nosdn.127.net/bb03b98fb84fa9cdbc3ea4616c7db915.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (273, 1081002, 'http://yanxuan.nosdn.127.net/73c8f8fdbbbafc138ed2c19f7a7e518f.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (274, 1081002, 'http://yanxuan.nosdn.127.net/ab092f06061931198edcf473286efd0e.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (275, 1081002, 'http://yanxuan.nosdn.127.net/4881e1b07627266a2c67d2f26db1cbfe.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (276, 1081002, 'http://yanxuan.nosdn.127.net/d08aa4841b37ef3f78ef6c27e093857a.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (277, 1083009, 'http://yanxuan.nosdn.127.net/157be86783a0cab72ac5bd73d9de79aa.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (278, 1083009, 'http://yanxuan.nosdn.127.net/238d39c9f49c2ab186be2cdbe21ebad4.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (279, 1083009, 'http://yanxuan.nosdn.127.net/d361a0c72f4c3d8b61d1502d47878d97.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (280, 1083009, 'http://yanxuan.nosdn.127.net/7f1ab428fbea15ea9c02af2b44b452e1.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (281, 1083010, 'http://yanxuan.nosdn.127.net/d22c4d48a852444f82f411ab8527e197.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (282, 1083010, 'http://yanxuan.nosdn.127.net/31627021573831753fd8635a73b2186c.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (283, 1083010, 'http://yanxuan.nosdn.127.net/172d2bfb2ad0dccd79c2e3cd64557cac.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (284, 1083010, 'http://yanxuan.nosdn.127.net/16e3828d30c2fcde21c503849cd4fb27.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (285, 1084001, 'http://yanxuan.nosdn.127.net/8e316090dd262ca0a4fe8f37bdc1f1aa.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (286, 1084001, 'http://yanxuan.nosdn.127.net/3eb572eef0f47c125cbe99514e021d8f.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (287, 1084001, 'http://yanxuan.nosdn.127.net/cf87ca367a793e250f27a831da7e142e.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (288, 1084001, 'http://yanxuan.nosdn.127.net/0e6431e884c7afbe4c648f0317a368eb.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (289, 1084003, 'http://yanxuan.nosdn.127.net/400d5759394edc78db8006bbd459e911.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (290, 1084003, 'http://yanxuan.nosdn.127.net/f63ac83618c3bfb00b6d27336be0485c.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (291, 1084003, 'http://yanxuan.nosdn.127.net/f5566e6a2b7e3e90472beda8e057d78a.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (292, 1084003, 'http://yanxuan.nosdn.127.net/74817e867e569dbd06133b3eead467b4.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (293, 1086015, 'http://yanxuan.nosdn.127.net/9331158a10c79a0663e53865cd1689ec.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (294, 1086015, 'http://yanxuan.nosdn.127.net/b4706343b3817e690d778e5f8a68a8de.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (295, 1086015, 'http://yanxuan.nosdn.127.net/7a8499c2ded7790addffb9d87fc4532b.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (296, 1086015, 'http://yanxuan.nosdn.127.net/2831d02bb34fabbcaf602fdf7a9cc409.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (297, 1086023, 'http://yanxuan.nosdn.127.net/5a16ce8c351ee6d0dc8f27bed1e29e15.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (298, 1086023, 'http://yanxuan.nosdn.127.net/eddb587eb4b502e4abb186eac0a819bb.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (299, 1086023, 'http://yanxuan.nosdn.127.net/28844a40fc7a7ad714c796769fa54df2.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (300, 1086023, 'http://yanxuan.nosdn.127.net/f6185198a77cd6c98758b4757f17c703.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (301, 1086024, 'http://yanxuan.nosdn.127.net/431b952038783b216b8a75e132025ea2.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (302, 1086024, 'http://yanxuan.nosdn.127.net/32704d4062a4a1224ce18721519d640e.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (303, 1086024, 'http://yanxuan.nosdn.127.net/ecc74550afbf00a3d73f4b7109304f44.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (304, 1086024, 'http://yanxuan.nosdn.127.net/9b01c6a0aa47de63a25558a0c26f8ff2.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (305, 1086025, 'http://yanxuan.nosdn.127.net/7073844c6513a8b11a6777fdcc09d1a6.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (306, 1086025, 'http://yanxuan.nosdn.127.net/a5381526f8578910804a5745e7e1f23a.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (307, 1086025, 'http://yanxuan.nosdn.127.net/910fe6194082bcf813fa6442261398b7.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (308, 1086025, 'http://yanxuan.nosdn.127.net/ff22d298cf6835407913f257f39bf1d5.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (309, 1086026, 'http://yanxuan.nosdn.127.net/75b103689a95765ada0639fc5b4dee12.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (310, 1086026, 'http://yanxuan.nosdn.127.net/f254d7b695ac6cb9a8b4593174a5e0b0.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (311, 1086026, 'http://yanxuan.nosdn.127.net/9cf92ae9057a03482b27437578c484c5.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (312, 1086026, 'http://yanxuan.nosdn.127.net/77771fc2202855c26bf58788837e8097.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (313, 1090004, 'http://yanxuan.nosdn.127.net/fd485228946efc3d3b54f4bf6bf9dd9e.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (314, 1090004, 'http://yanxuan.nosdn.127.net/184ec60b12c918282cfc9c8b3d6fdff4.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (315, 1090004, 'http://yanxuan.nosdn.127.net/63952024af0379a53ae88513b87a6a47.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (316, 1090004, 'http://yanxuan.nosdn.127.net/1180f6fd43359f216c9b9af6339f17f2.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (317, 1092024, 'http://yanxuan.nosdn.127.net/9c42a6bac4380d79d4dccb68ac2b4bcc.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (318, 1092024, 'http://yanxuan.nosdn.127.net/18f86419d1f26597087a999b3e539b50.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (319, 1092024, 'http://yanxuan.nosdn.127.net/2cca81110d5a9ae4a012ab69b86a2246.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (320, 1092024, 'http://yanxuan.nosdn.127.net/c00fcd20e4147e3f5b32db47161eae81.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (321, 1092038, 'http://yanxuan.nosdn.127.net/c66754d7643f2a2436aee1195ad01251.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (322, 1092038, 'http://yanxuan.nosdn.127.net/80fbb65d15520920326e9fcd881c9725.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (323, 1092038, 'http://yanxuan.nosdn.127.net/ff2ee56c1ebdb228591950364f209fb1.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (324, 1092038, 'http://yanxuan.nosdn.127.net/da541d4964c64a4065ce16f08da162c1.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (325, 1092039, 'http://yanxuan.nosdn.127.net/b50a9a25a4bce5e5ed533dfbb79a2291.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (326, 1092039, 'http://yanxuan.nosdn.127.net/cfb74ab8c094ef7d6ea81691ccbcd72b.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (327, 1092039, 'http://yanxuan.nosdn.127.net/d55ec11fb9f3fd8d7427de1e4e597cbe.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (328, 1092039, 'http://yanxuan.nosdn.127.net/9e1821d07934c717c3ff8a031e57ee48.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (329, 1093000, 'http://yanxuan.nosdn.127.net/e5143014acaf1831007c3a90eb4f2ed8.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (330, 1093000, 'http://yanxuan.nosdn.127.net/70dffe9b1f565e57866c8d2cbaaf35fc.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (331, 1093000, 'http://yanxuan.nosdn.127.net/8d411259e7af9b37f859858b5cd9027a.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (332, 1093000, 'http://yanxuan.nosdn.127.net/5d467a34e978f99ad5a36b5cff7de7d9.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (333, 1093001, 'http://yanxuan.nosdn.127.net/1bfba99384357392f90cd06a63d1f152.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (334, 1093001, 'http://yanxuan.nosdn.127.net/9d9b14c89edd8ebfeb886b7aed80e79c.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (335, 1093001, 'http://yanxuan.nosdn.127.net/3aff9a88b67003e08ebe2f75c3e71aed.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (336, 1093001, 'http://yanxuan.nosdn.127.net/eee4ccfba75b991d6fc4b3a25ee253bd.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (337, 1093002, 'http://yanxuan.nosdn.127.net/327762ee4559fb78ca99bdfec4ba2941.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (338, 1093002, 'http://yanxuan.nosdn.127.net/63014fa05d18b3b8d312c37646ac78c5.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (339, 1093002, 'http://yanxuan.nosdn.127.net/0c6554fa7977ab5afb9405053f04885c.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (340, 1093002, 'http://yanxuan.nosdn.127.net/7c9340a889501907e5315a572eb0bc9f.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (341, 1097004, 'http://yanxuan.nosdn.127.net/dea90e7c308bb1bd9e926cfbe493f243.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (342, 1097004, 'http://yanxuan.nosdn.127.net/308fab883bb2a72adac0e724a3d9aabd.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (343, 1097004, 'http://yanxuan.nosdn.127.net/3d13ba389f3be260c930f582545b9d5d.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (344, 1097004, 'http://yanxuan.nosdn.127.net/524175ab6d501444ac03cb0c89963ca0.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (345, 1097005, 'http://yanxuan.nosdn.127.net/3dcd74c8999973a1acc95adbb36e03c6.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (346, 1097005, 'http://yanxuan.nosdn.127.net/80dda4e65f1d9773261133dcf039f7af.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (347, 1097005, 'http://yanxuan.nosdn.127.net/99e6011cd4a60538e195f006c5aaa149.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (348, 1097005, 'http://yanxuan.nosdn.127.net/0162fbe591f22997baf27237b9d3f2c5.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (349, 1097006, 'http://yanxuan.nosdn.127.net/ad2a04fdb774ab47d0b5b3dee963d723.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (350, 1097006, 'http://yanxuan.nosdn.127.net/babab8572b7c88ad774ab70bfad4a84a.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (351, 1097006, 'http://yanxuan.nosdn.127.net/6528419efacdae10bc9e44a7c73c6489.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (352, 1097006, 'http://yanxuan.nosdn.127.net/38978a1165dde6b85d5b989103a95b26.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (353, 1097007, 'http://yanxuan.nosdn.127.net/92bd1250c8a3754514d7d2413b140e6f.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (354, 1097007, 'http://yanxuan.nosdn.127.net/a38077a8b7f2f973e0690f4a64a84dea.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (355, 1097007, 'http://yanxuan.nosdn.127.net/260dad27e017fb2d99fc41466ed43079.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (356, 1097007, 'http://yanxuan.nosdn.127.net/c1b74831df9bf78eb866fc69669dcf80.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (357, 1097009, 'http://yanxuan.nosdn.127.net/afde10721fa5d6004f98a1e3a4f91db8.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (358, 1097009, 'http://yanxuan.nosdn.127.net/f10669167b6ab602064045e0c4134afd.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (359, 1097009, 'http://yanxuan.nosdn.127.net/5e0ab33f6849c890fcce2c3e61fa3fc2.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (360, 1097009, 'http://yanxuan.nosdn.127.net/a514463e8908df89cb25719ad7eaa077.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (361, 1097011, 'http://yanxuan.nosdn.127.net/181897e9942cb5331442e5f6b9dee863.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (362, 1097011, 'http://yanxuan.nosdn.127.net/303deaccd2b467ab0ac796348da2f6c2.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (363, 1097011, 'http://yanxuan.nosdn.127.net/86bf916dd76e5a855fbc8aa49d4557b2.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (364, 1097011, 'http://yanxuan.nosdn.127.net/1a734852ebcca0a0a328f82b15be2cd8.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (365, 1097012, 'http://yanxuan.nosdn.127.net/01b5b444615b342c554d22c58d044e35.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (366, 1097012, 'http://yanxuan.nosdn.127.net/90eb435f5c0e4f98977a4c1fea3bd537.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (367, 1097012, 'http://yanxuan.nosdn.127.net/8d9922c1f2a3cea91f0b5e808ca9245d.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (368, 1097012, 'http://yanxuan.nosdn.127.net/89ee10d06789cda29a697446c014ef70.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (369, 1097013, 'http://yanxuan.nosdn.127.net/397dfb128336c9054753179a04bcfb9d.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (370, 1097013, 'http://yanxuan.nosdn.127.net/a668ea514089b6825743444132e7c0ab.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (371, 1097013, 'http://yanxuan.nosdn.127.net/cdcce8f4a28fdb66f131f960055fffa4.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (372, 1097013, 'http://yanxuan.nosdn.127.net/cf35bdb41354da6243f08d0e886eb796.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (373, 1097014, 'http://yanxuan.nosdn.127.net/756b9ad8168b6f05faed90f010cddc13.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (374, 1097014, 'http://yanxuan.nosdn.127.net/3b963f2d5ad9ccbf17753ccadd1d46b7.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (375, 1097014, 'http://yanxuan.nosdn.127.net/efd1ccfdd46a2f40f9e825a6d4348252.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (376, 1097014, 'http://yanxuan.nosdn.127.net/7fa5dc7c08d7a1b6da3f17029a93b93d.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (377, 1097016, 'http://yanxuan.nosdn.127.net/3f8eaea08de42601c4fbbbf44f57a51f.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (378, 1097016, 'http://yanxuan.nosdn.127.net/ba098f23eb7e21ecf524b7f8833d117f.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (379, 1097016, 'http://yanxuan.nosdn.127.net/c569bc70282462cae8cf948612429b33.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (380, 1097016, 'http://yanxuan.nosdn.127.net/a5a3e4c0825751977900838aba75df90.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (381, 1097017, 'http://yanxuan.nosdn.127.net/4973ea5a10f2c52ca2e2d416f1e7898d.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (382, 1097017, 'http://yanxuan.nosdn.127.net/56993e4764ce4cdb6469bd4d963929aa.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (383, 1097017, 'http://yanxuan.nosdn.127.net/22807c5a25e0d8d49fd46da143c1b23f.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (384, 1097017, 'http://yanxuan.nosdn.127.net/2b1b8ce51e1f41d073a5ef980ef5887c.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (385, 1100000, 'http://yanxuan.nosdn.127.net/66bd23f2d520195c487cf6afbe1e1f82.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (386, 1100000, 'http://yanxuan.nosdn.127.net/1ee354a7e3cf58a6317fced4107cd6a1.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (387, 1100000, 'http://yanxuan.nosdn.127.net/7419b0bf5554c3f17fe5d999d779555e.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (388, 1100000, 'http://yanxuan.nosdn.127.net/d8f74a7c9836024618a322b1da9f410f.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (389, 1100001, 'http://yanxuan.nosdn.127.net/22948407b79bf9cf67c39f111fb9024b.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (390, 1100001, 'http://yanxuan.nosdn.127.net/14d9efa1bfbe9d0747e950bb74fa07e7.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (391, 1100001, 'http://yanxuan.nosdn.127.net/46bf309e5ebc33f38d19957f9f2664f3.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (392, 1100001, 'http://yanxuan.nosdn.127.net/de5093b5353259604b68418fe58c6cea.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (393, 1100002, 'http://yanxuan.nosdn.127.net/b2f5fd5577d07a69e4f4f8919132901d.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (394, 1100002, 'http://yanxuan.nosdn.127.net/fb7b80643e0bc30a78688a964c3aee57.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (395, 1100002, 'http://yanxuan.nosdn.127.net/393e848f1da052784efe77f565b86dbb.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (396, 1100002, 'http://yanxuan.nosdn.127.net/8f4ed88b7550586de659a767bb409799.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (397, 1108029, 'http://yanxuan.nosdn.127.net/0c8df971748c9e84759dbacaf8b6d1b9.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (398, 1108029, 'http://yanxuan.nosdn.127.net/870481d2629256214d404cb42af00cbc.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (399, 1108029, 'http://yanxuan.nosdn.127.net/43f94a4f78c77078194f882534c73dd1.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (400, 1108029, 'http://yanxuan.nosdn.127.net/b8f00bf92940a0f65d251df91afb586b.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (401, 1108030, 'http://yanxuan.nosdn.127.net/139b7be83a064eaa5f99feeea44729fd.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (402, 1108030, 'http://yanxuan.nosdn.127.net/ad6757535783bbbba22325943caad862.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (403, 1108030, 'http://yanxuan.nosdn.127.net/3528b0ec40265759371405415b74c734.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (404, 1108030, 'http://yanxuan.nosdn.127.net/61d995604039df8026fee4b3c15e8692.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (405, 1108031, 'http://yanxuan.nosdn.127.net/f2c5d5f0e1628cd1e834b7b0221cf513.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (406, 1108031, 'http://yanxuan.nosdn.127.net/49c00c7cffcbc5fc6438bdac50f772e0.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (407, 1108031, 'http://yanxuan.nosdn.127.net/7ae6591eca8cedeb94270d0c73eaebd7.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (408, 1108031, 'http://yanxuan.nosdn.127.net/2d0e71288124d5ca4ba44f826b53c78b.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (409, 1108032, 'http://yanxuan.nosdn.127.net/971ba39166439705d7a254d5d736a753.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (410, 1108032, 'http://yanxuan.nosdn.127.net/16c11f11c03b0f0e596f6c9cd85170bc.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (411, 1108032, 'http://yanxuan.nosdn.127.net/31469f008127ea2f1c7ffed1755fff42.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (412, 1108032, 'http://yanxuan.nosdn.127.net/31376f28a3d00cfe767713b93d3a84be.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (413, 1109004, 'http://yanxuan.nosdn.127.net/ed50cbf7fab10b35f676e2451e112130.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (414, 1109004, 'http://yanxuan.nosdn.127.net/6e13c6483850a3fb217b888ff22eee6d.png', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (415, 1109004, 'http://yanxuan.nosdn.127.net/d5d2f5173682bcd9e1d5472b7dcac591.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (416, 1109004, 'http://yanxuan.nosdn.127.net/cb465057857eade369ace03ad95d6765.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (417, 1109005, 'http://yanxuan.nosdn.127.net/fc5bf833a02a3be40e3e396a1c5a9c13.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (418, 1109005, 'http://yanxuan.nosdn.127.net/43870fe7ec3c7186fb093ab50d94fa3a.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (419, 1109005, 'http://yanxuan.nosdn.127.net/66ac578985180b614c88fda44a2eb26b.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (420, 1109005, 'http://yanxuan.nosdn.127.net/afcd8c99f588072f1ad755762294dca1.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (421, 1109008, 'http://yanxuan.nosdn.127.net/52e1a79197af9b1cc73c836f74b190d4.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (422, 1109008, 'http://yanxuan.nosdn.127.net/4c07ef11f91c4139411f5fff38c78750.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (423, 1109008, 'http://yanxuan.nosdn.127.net/6ac6c255e6ad5039e903f3051b56e25e.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (424, 1109008, 'http://yanxuan.nosdn.127.net/88aef8f37fd7be612875d93a1b3867c4.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (425, 1109034, 'http://yanxuan.nosdn.127.net/0251bd141f5b55bd4311678750a6b344.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (426, 1109034, 'http://yanxuan.nosdn.127.net/59c2d5822cda19f8caa2d9034937f565.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (427, 1109034, 'http://yanxuan.nosdn.127.net/3d089c7c2a04ee17767a283a9f115dd0.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (428, 1109034, 'http://yanxuan.nosdn.127.net/0421111cdef15b0c9777da80eb66f696.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (429, 1110002, 'http://yanxuan.nosdn.127.net/375db2797db92b446d45b3003ca84660.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (430, 1110002, 'http://yanxuan.nosdn.127.net/9d2c517b9da985b9c997f6d9cb597ac0.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (431, 1110002, 'http://yanxuan.nosdn.127.net/6eb39c3ee3db8d9a6a2cbf3d2d2f581c.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (432, 1110002, 'http://yanxuan.nosdn.127.net/5e230a93445d2791719f9421a66113e3.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (433, 1110003, 'http://yanxuan.nosdn.127.net/0d2a885f2219169d4b3d3181d908b2da.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (434, 1110003, 'http://yanxuan.nosdn.127.net/28f7b964e1e1b7987d17d768f4a22d1b.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (435, 1110003, 'http://yanxuan.nosdn.127.net/e78c22d19f799f135db2e32f7f6ad3a8.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (436, 1110003, 'http://yanxuan.nosdn.127.net/fc7d7e380bd62bec289526c753196d1d.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (437, 1110004, 'http://yanxuan.nosdn.127.net/cdae3aeda693e7cc1c4661d4f41da4d7.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (438, 1110004, 'http://yanxuan.nosdn.127.net/9a75d83304a780d04ada95c2c0a952ca.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (439, 1110004, 'http://yanxuan.nosdn.127.net/ed832cdde16e90331f2a304c6ee43da4.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (440, 1110004, 'http://yanxuan.nosdn.127.net/11741a9c889d09114fea3ee39031f6c3.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (441, 1110007, 'http://yanxuan.nosdn.127.net/02dc9714d67ac3aca20740e19b9a724a.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (442, 1110007, 'http://yanxuan.nosdn.127.net/38aaf23e7a2739e45dcdd5c50c6baa7e.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (443, 1110007, 'http://yanxuan.nosdn.127.net/0dfe050d6971180cb8cb1ea721b54e1d.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (444, 1110007, 'http://yanxuan.nosdn.127.net/51edc362a09630fd04030bcc16c2072d.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (445, 1110008, 'http://yanxuan.nosdn.127.net/4ded1e09f09d9eb1d2f24d87759fb232.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (446, 1110008, 'http://yanxuan.nosdn.127.net/ce801d4915ecca7befb5e88159b3dbb3.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (447, 1110008, 'http://yanxuan.nosdn.127.net/406423eeb3c5c5347462246767ef6bd9.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (448, 1110008, 'http://yanxuan.nosdn.127.net/4e912ca54b45f3b0cf00b5f6977d1110.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (449, 1110013, 'http://yanxuan.nosdn.127.net/26500a7b609debb80a022aa256ee2b36.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (450, 1110013, 'http://yanxuan.nosdn.127.net/2672ee0f40415c9b1fea5801f05d6a76.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (451, 1110013, 'http://yanxuan.nosdn.127.net/128554ea9fa7e86d19fff59266fe4546.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (452, 1110013, 'http://yanxuan.nosdn.127.net/a89db6a94e7a9cd260fa8de0152ff36c.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (453, 1110014, 'http://yanxuan.nosdn.127.net/ca37e1842a65ac4a062180078505687d.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (454, 1110014, 'http://yanxuan.nosdn.127.net/962a87f554c0f75d835900726608bb1b.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (455, 1110014, 'http://yanxuan.nosdn.127.net/d296eb099d54186e4b71f13aa63f71b7.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (456, 1110014, 'http://yanxuan.nosdn.127.net/4c10c26db96847b86ffe12cb4bd3c47b.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (457, 1110015, 'http://yanxuan.nosdn.127.net/34d4b8718eec825a7524934f35f6cf5b.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (458, 1110015, 'http://yanxuan.nosdn.127.net/61bd5e5bff93731eb2996d904ef4cf50.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (459, 1110015, 'http://yanxuan.nosdn.127.net/b4a80a423a5b46efe55275518ff25040.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (460, 1110015, 'http://yanxuan.nosdn.127.net/bc61a2ec7c87267d4a4055d47b4a9d8c.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (461, 1110016, 'http://yanxuan.nosdn.127.net/c53c22c14524bfe91c058b2d9f93f9bf.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (462, 1110016, 'http://yanxuan.nosdn.127.net/9c1ad6c3bf65dd9d71978e99dd9fb21f.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (463, 1110016, 'http://yanxuan.nosdn.127.net/76485086ff248ead29955f42395f050c.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (464, 1110016, 'http://yanxuan.nosdn.127.net/4642e54295c5beac2129f351c6dfa79e.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (465, 1110017, 'http://yanxuan.nosdn.127.net/0f8d2e25768ef00d8ad328fbd92a1d4b.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (466, 1110017, 'http://yanxuan.nosdn.127.net/9bfd2f6191e26c276fd9d99f8530e150.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (467, 1110017, 'http://yanxuan.nosdn.127.net/3558e5371c834f01406dc8bf8d21ea8a.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (468, 1110017, 'http://yanxuan.nosdn.127.net/5db8e913ce14b68e4edf9bc6097ee7a9.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (469, 1110018, 'http://yanxuan.nosdn.127.net/ac5f93bd705e97e96d18c44729adf111.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (470, 1110018, 'http://yanxuan.nosdn.127.net/863069f626e8093858bd944961672116.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (471, 1110018, 'http://yanxuan.nosdn.127.net/3f54aad95403f6763d2971cf64ee0f02.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (472, 1110018, 'http://yanxuan.nosdn.127.net/95fd3351c1be18c3b9ed445ef0a38434.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (473, 1110019, 'http://yanxuan.nosdn.127.net/af0a2d9555caec30d2af98cdcdeb77e8.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (474, 1110019, 'http://yanxuan.nosdn.127.net/4189295e3a005a63caddd72504381aa0.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (475, 1110019, 'http://yanxuan.nosdn.127.net/baf8d25090cebda506f461ae7224378c.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (476, 1110019, 'http://yanxuan.nosdn.127.net/93c84592192c3b89b7df46b51e7c5ab6.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (477, 1115023, 'http://yanxuan.nosdn.127.net/fc0291ab325830575c58b281c6e4ee09.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (478, 1115023, 'http://yanxuan.nosdn.127.net/d22a24b970152c1aa25386ec8d8b6db3.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (479, 1115023, 'http://yanxuan.nosdn.127.net/3d3aa5935fa24e083f2deb2697b89e93.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (480, 1115023, 'http://yanxuan.nosdn.127.net/ef5ef16cc4ddd39127e4f6d66874544a.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (481, 1115028, 'http://yanxuan.nosdn.127.net/dcc215390ba15aa8673c5cc4c56b6fae.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (482, 1115028, 'http://yanxuan.nosdn.127.net/aa8d17bcd7c0d5fa18b5b862a3484948.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (483, 1115028, 'http://yanxuan.nosdn.127.net/c99a4ecf10ca320714b437b40a68c82c.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (484, 1115028, 'http://yanxuan.nosdn.127.net/a020bf35bfa7c1b6dc75ea790c07b3d0.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (485, 1115052, 'http://yanxuan.nosdn.127.net/f6ebbc20006a323db3aea566eced761c.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (486, 1115052, 'http://yanxuan.nosdn.127.net/82f2e4d1e138b3d336570de8f2c5ba1c.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (487, 1115052, 'http://yanxuan.nosdn.127.net/feff39d9bf8340aa3ecddc8ae23d5167.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (488, 1115052, 'http://yanxuan.nosdn.127.net/cc0ccf5d41022439f0d8eb6a4830b094.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (489, 1115053, 'http://yanxuan.nosdn.127.net/41287cc5618eb5e2c01db90f569d58b7.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (490, 1115053, 'http://yanxuan.nosdn.127.net/5518a8efdbad43a695a979dc6669261d.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (491, 1115053, 'http://yanxuan.nosdn.127.net/f401c84a0b444bd4b3057aff4bf01170.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (492, 1115053, 'http://yanxuan.nosdn.127.net/253d95942c92f2ee44fa598a17288d41.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (493, 1116030, 'http://yanxuan.nosdn.127.net/30ed774f89cd6f59b4f0ed5d9e6cbc77.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (494, 1116030, 'http://yanxuan.nosdn.127.net/f079e52277f71656936a0350451ffad2.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (495, 1116030, 'http://yanxuan.nosdn.127.net/26c25328c6e044f47534b3e9582d1f2a.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (496, 1116030, 'http://yanxuan.nosdn.127.net/9dad4607a678e730230b68bf4fbf5255.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (497, 1116031, 'http://yanxuan.nosdn.127.net/562ef1acdc8c2a7d5c1fd1de8d778074.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (498, 1116031, 'http://yanxuan.nosdn.127.net/2c74a79d58a9f77cc5214bfdc807d4be.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (499, 1116031, 'http://yanxuan.nosdn.127.net/46a7feb93c24ce74b6a686053e2ddbc8.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (500, 1116031, 'http://yanxuan.nosdn.127.net/7b3084f82ec3a4389f5e5db63a82b087.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (501, 1116032, 'http://yanxuan.nosdn.127.net/25e3cedac39679c138abbe24826aaa89.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (502, 1116032, 'http://yanxuan.nosdn.127.net/d8ec444138673ac90b7932aee798b0ae.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (503, 1116032, 'http://yanxuan.nosdn.127.net/e1c3a86d25d7865d8bd25330d55044ac.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (504, 1116032, 'http://yanxuan.nosdn.127.net/8ba91bc71a0d9670d2b3436bfc802376.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (505, 1116033, 'http://yanxuan.nosdn.127.net/dc4b2d5ddc48557bd9bdce6742b66562.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (506, 1116033, 'http://yanxuan.nosdn.127.net/72cb7039372e43b4dbb9394d08374933.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (507, 1116033, 'http://yanxuan.nosdn.127.net/c8633b2b24e03bf7d5d43e39d34af757.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (508, 1116033, 'http://yanxuan.nosdn.127.net/22c0a95be135ea04bf1133e566906f4e.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (509, 1125016, 'http://yanxuan.nosdn.127.net/16dd2a12b4ab2651dc7450127eed6d68.png', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (510, 1125016, 'http://yanxuan.nosdn.127.net/fe0f0fbc76283801b5b565c629f9cf35.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (511, 1125016, 'http://yanxuan.nosdn.127.net/1d316791256871884416a4ae770e0a00.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (512, 1125016, 'http://yanxuan.nosdn.127.net/6617f833f475070d3302644032c82f03.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (513, 1125017, 'http://yanxuan.nosdn.127.net/c8527661e3c87a530e30bd110a14faa9.png', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (514, 1125017, 'http://yanxuan.nosdn.127.net/fbef44dbf82b0b92c60e71b41c447f72.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (515, 1125017, 'http://yanxuan.nosdn.127.net/0890a572df4316f7020c84535b696bfe.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (516, 1125017, 'http://yanxuan.nosdn.127.net/cb3615bf2bcbc52b1f2ef1c64e2b3cac.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (517, 1127003, 'http://yanxuan.nosdn.127.net/6bd1ea1d237244d05e8fafea82f90c5b.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (518, 1127003, 'http://yanxuan.nosdn.127.net/15efb5c5c2510fe797551abaded09ae0.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (519, 1127003, 'http://yanxuan.nosdn.127.net/71c211ce909a414279004c244997f6e9.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (520, 1127003, 'http://yanxuan.nosdn.127.net/677f5d85fdd17be748446cb082def361.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (521, 1127038, 'http://yanxuan.nosdn.127.net/ea16e3e56b5e59b1e9ed06794d1b2c40.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (522, 1127038, 'http://yanxuan.nosdn.127.net/41bd77e384f61ebc93d8233709ba13f1.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (523, 1127038, 'http://yanxuan.nosdn.127.net/baf5b87ba6a481defecdc5742c9ca515.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (524, 1127038, 'http://yanxuan.nosdn.127.net/e5a5058060355b4e4c2f653ab7fbadb7.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (525, 1127039, 'http://yanxuan.nosdn.127.net/5da516d917bf7a02251ff40bd9a153c7.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (526, 1127039, 'http://yanxuan.nosdn.127.net/13c0996e62c82f00b0ba010d49447747.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (527, 1127039, 'http://yanxuan.nosdn.127.net/bd0c6fff729b4d4fa859441262d88c4c.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (528, 1127039, 'http://yanxuan.nosdn.127.net/0e8093d4a27ee7a1d0c81e3a82a49c27.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (529, 1127052, 'http://yanxuan.nosdn.127.net/be1c0672aa4f82de4179ff25c9728359.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (530, 1127052, 'http://yanxuan.nosdn.127.net/a0451cd98141887b78a48414d82f1a9a.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (531, 1127052, 'http://yanxuan.nosdn.127.net/9cdc625066ff4124e5b3dc2518529706.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (532, 1127052, 'http://yanxuan.nosdn.127.net/398686c2483deb75ca4afeee62250fc9.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (533, 1128002, 'http://yanxuan.nosdn.127.net/15a42a487b167c83a3e4f2ea099088c5.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (534, 1128002, 'http://yanxuan.nosdn.127.net/2996456487cd6e916319ad80e41c935f.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (535, 1128002, 'http://yanxuan.nosdn.127.net/fb6d907e5fa419c6b3706ed07d7343c9.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (536, 1128002, 'http://yanxuan.nosdn.127.net/a4a58f132454ba2e4bd657458c10d89b.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (537, 1130037, 'http://yanxuan.nosdn.127.net/b0ba668ae100729eb7e64926d7770780.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (538, 1130037, 'http://yanxuan.nosdn.127.net/b4f245f54e4e98f064e7fefac6a16642.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (539, 1130037, 'http://yanxuan.nosdn.127.net/f8cb009f605f1d0425627452ec8c1fd8.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (540, 1130037, 'http://yanxuan.nosdn.127.net/de3bf0eef433d216b782b9cb0830e66e.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (541, 1130038, 'http://yanxuan.nosdn.127.net/39de8ddff1b400d9a97f1e5f9e9dbfeb.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (542, 1130038, 'http://yanxuan.nosdn.127.net/3e26ee5ec4d49970a0325ca7cc2cea15.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (543, 1130038, 'http://yanxuan.nosdn.127.net/993bb3da9f03945eaef6e6199efc86c9.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (544, 1130038, 'http://yanxuan.nosdn.127.net/d39ad81f2e6babc693edaf08817bd308.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (545, 1130039, 'http://yanxuan.nosdn.127.net/19b1375334f2e19130a3ba0e993d7e91.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (546, 1130039, 'http://yanxuan.nosdn.127.net/aba31dea912ac4fa9526ddf6a014876e.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (547, 1130039, 'http://yanxuan.nosdn.127.net/7046f8b5eb83dea640eea187c6a43b11.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (548, 1130039, 'http://yanxuan.nosdn.127.net/a3d635f82a5bae0c4fa29a49367f3451.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (549, 1130041, 'http://yanxuan.nosdn.127.net/173d269f6c7b875bc433640a7cf12be4.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (550, 1130041, 'http://yanxuan.nosdn.127.net/ccec1687cfa1a47c26d5eb952074bba9.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (551, 1130041, 'http://yanxuan.nosdn.127.net/0de6c515b07b96f902b42eb4262a0c6c.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (552, 1130041, 'http://yanxuan.nosdn.127.net/f3d5ec834ce5028f306e1e1d47d868ab.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (553, 1130042, 'http://yanxuan.nosdn.127.net/b07878f08b72752e382aabb5f3e2953a.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (554, 1130042, 'http://yanxuan.nosdn.127.net/686fcb1f88a347074e403100b11bbfab.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (555, 1130042, 'http://yanxuan.nosdn.127.net/d63f27a42ba184ae7b901a8b325f3647.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (556, 1130042, 'http://yanxuan.nosdn.127.net/2ff09addcb19551f5b988a1ec2b436b3.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (557, 1130049, 'http://yanxuan.nosdn.127.net/c7ed6fa62ee79921ac580dc025df5f54.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (558, 1130049, 'http://yanxuan.nosdn.127.net/efc598e817aa7cb220fa7aa962162105.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (559, 1130049, 'http://yanxuan.nosdn.127.net/80082370ca7df234210a664f1915b717.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (560, 1130049, 'http://yanxuan.nosdn.127.net/91e49302cf4cfe00937972b103809836.png', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (561, 1130056, 'http://yanxuan.nosdn.127.net/1845c55a5c2c3c04b77fcdb31b5ea7d9.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (562, 1130056, 'http://yanxuan.nosdn.127.net/1b1a13146260738645cb9c9ee022a3e5.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (563, 1130056, 'http://yanxuan.nosdn.127.net/a4d40245f7330fc95172cc7f290b9f8e.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (564, 1130056, 'http://yanxuan.nosdn.127.net/3b9a09ffa1c18a4c28545e4dea06766a.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (565, 1131017, 'http://yanxuan.nosdn.127.net/44af43b45ba5c2cdfcc4708cc9e2a724.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (566, 1131017, 'http://yanxuan.nosdn.127.net/2f8fb59b6ee20eadae2534ff7872cb23.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (567, 1131017, 'http://yanxuan.nosdn.127.net/a7896c18b39b560cec229f119d4151dc.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (568, 1131017, 'http://yanxuan.nosdn.127.net/d80addb9b62a41d3fe2c2a9036de4686.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (569, 1134022, 'http://yanxuan.nosdn.127.net/64be227c6953e0bcf44a496aabd0d83f.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (570, 1134022, 'http://yanxuan.nosdn.127.net/ce9f1dfb57b8867361dab7afcc7c8fa1.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (571, 1134022, 'http://yanxuan.nosdn.127.net/4eb77d3e6a9d94899bad5230d189c74f.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (572, 1134022, 'http://yanxuan.nosdn.127.net/93966bbbe3f80a41c47580d83a115741.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (573, 1134030, 'http://yanxuan.nosdn.127.net/97c6d4c7e80855966f0d38392b42a570.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (574, 1134030, 'http://yanxuan.nosdn.127.net/35538160e3b41ae559031fa8c82fcebb.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (575, 1134030, 'http://yanxuan.nosdn.127.net/f2107c529bcc5c51bc3ce2b5cc9948db.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (576, 1134030, 'http://yanxuan.nosdn.127.net/9b4ee214032f7707c15943a1f1dfc881.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (577, 1134032, 'http://yanxuan.nosdn.127.net/5a9050413ef325301e5e5b6bfdcc4b58.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (578, 1134032, 'http://yanxuan.nosdn.127.net/e866882f7bb9acde7c4e1d00171741f9.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (579, 1134032, 'http://yanxuan.nosdn.127.net/23947cb71c6c2f9635b53da910ac788d.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (580, 1134032, 'http://yanxuan.nosdn.127.net/bf80a04940ae1cd3e6c584d26fdee6ed.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (581, 1134056, 'http://yanxuan.nosdn.127.net/de53227c5300dc2a4a7e25a7d6dcf5a1.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (582, 1134056, 'http://yanxuan.nosdn.127.net/8c237329b54caeef7bd7613443796db0.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (583, 1134056, 'http://yanxuan.nosdn.127.net/99b68bf325279102597cbd2829bffc09.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (584, 1134056, 'http://yanxuan.nosdn.127.net/a72497e9a412babf1143ab64394ca9de.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (585, 1135000, 'http://yanxuan.nosdn.127.net/94d2aaf45d453e491a90ea2a12c8c119.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (586, 1135000, 'http://yanxuan.nosdn.127.net/6a869e79b45fbc8604bda086d8d4515e.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (587, 1135000, 'http://yanxuan.nosdn.127.net/79f396a5eb345081078bf8e9c25314a8.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (588, 1135000, 'http://yanxuan.nosdn.127.net/127286b130ba377c46550d3829aa19e2.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (589, 1135001, 'http://yanxuan.nosdn.127.net/ff010423d0808d21f45a052378833c8b.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (590, 1135001, 'http://yanxuan.nosdn.127.net/d1eb900e90832c246c60c4cca13ccea5.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (591, 1135001, 'http://yanxuan.nosdn.127.net/7554ea2b1723eb3b521b9825c3c35d52.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (592, 1135001, 'http://yanxuan.nosdn.127.net/39695757fe860202cf2455614576adf4.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (593, 1135002, 'http://yanxuan.nosdn.127.net/cb78d268c517c15381aeb5b5905101fe.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (594, 1135002, 'http://yanxuan.nosdn.127.net/47c131a02d5d5b97ddcd19c16b391bbb.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (595, 1135002, 'http://yanxuan.nosdn.127.net/5300c083dcc0c6a856364d883f3284e8.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (596, 1135002, 'http://yanxuan.nosdn.127.net/586f42c66523559838fbb97b7315bab6.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (597, 1135050, 'http://yanxuan.nosdn.127.net/2a7f492c870c603bbb8619d6ff40c22b.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (598, 1135050, 'http://yanxuan.nosdn.127.net/c43ff066b17207c21bb99e261d23a40d.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (599, 1135050, 'http://yanxuan.nosdn.127.net/e3d397a574d0867906a69278741a1562.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (600, 1135050, 'http://yanxuan.nosdn.127.net/64c1dd9a8a3cb26f9105ac68c8700171.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (601, 1135051, 'http://yanxuan.nosdn.127.net/f3ab20a6f488fdfdadd15402f07b1794.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (602, 1135051, 'http://yanxuan.nosdn.127.net/9afed203129a696d682eb005fdf980ed.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (603, 1135051, 'http://yanxuan.nosdn.127.net/6436743044528b017ea8b40a276dde7d.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (604, 1135051, 'http://yanxuan.nosdn.127.net/7b2f3a9be300acdcb580fe75620d8133.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (605, 1135052, 'http://yanxuan.nosdn.127.net/4a052c9a96ef8f424ddb35e6a1dae822.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (606, 1135052, 'http://yanxuan.nosdn.127.net/1ad1192c393500a7d6e31036af44b0aa.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (607, 1135052, 'http://yanxuan.nosdn.127.net/de46fc2984dea187c6d95036a3ca7852.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (608, 1135052, 'http://yanxuan.nosdn.127.net/e3fc3ff866a0ac4d588f890cdc45ab20.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (609, 1135053, 'http://yanxuan.nosdn.127.net/01578bfc12384b74c0f4ce44f01ee448.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (610, 1135053, 'http://yanxuan.nosdn.127.net/e9764d9aac2a990abe7bac475d5ce116.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (611, 1135053, 'http://yanxuan.nosdn.127.net/9aa7059dc52afc82894e12c05dee3775.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (612, 1135053, 'http://yanxuan.nosdn.127.net/c77e566a855a84f69241d5db0939e160.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (613, 1135054, 'http://yanxuan.nosdn.127.net/4973d54026070f1d9083c83d5951be8b.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (614, 1135054, 'http://yanxuan.nosdn.127.net/1f6a9ce98a3e955946d52d3139b14d11.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (615, 1135054, 'http://yanxuan.nosdn.127.net/b60b64ca87333bf3601b9e502a4b4961.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (616, 1135054, 'http://yanxuan.nosdn.127.net/7255eb59c0cf8312d70a06c4ff818f64.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (617, 1135055, 'http://yanxuan.nosdn.127.net/c893004aca22660dac6b3edf8e6070cc.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (618, 1135055, 'http://yanxuan.nosdn.127.net/19f4225226cc3d044cdf22fdb5155314.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (619, 1135055, 'http://yanxuan.nosdn.127.net/8fcd82bbd0995d31310c70bb59bab52b.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (620, 1135055, 'http://yanxuan.nosdn.127.net/0e733fc07e89bb025ff5738837cc3d5a.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (621, 1135056, 'http://yanxuan.nosdn.127.net/42d0d0b58137b50c41a472b721817110.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (622, 1135056, 'http://yanxuan.nosdn.127.net/384ab49a469f592b9c3c23bdd1d99456.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (623, 1135056, 'http://yanxuan.nosdn.127.net/a0351b55ae128410718d9abbe048d59d.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (624, 1135056, 'http://yanxuan.nosdn.127.net/05a7288be96a45435fa942dfe73a37c7.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (625, 1135057, 'http://yanxuan.nosdn.127.net/86755475669812cad499b1611ea8f3e3.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (626, 1135057, 'http://yanxuan.nosdn.127.net/1521ee48cff67a3d5170b393179d8032.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (627, 1135057, 'http://yanxuan.nosdn.127.net/28aa5ccf88a314821b0e0efe25bbd356.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (628, 1135057, 'http://yanxuan.nosdn.127.net/0b18fd03be66943110e1541f2cdd1dd1.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (629, 1135058, 'http://yanxuan.nosdn.127.net/45765c794a67f43ae09e2558158e99ea.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (630, 1135058, 'http://yanxuan.nosdn.127.net/2343dfbfd4a564ce5a0c0342c754dc96.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (631, 1135058, 'http://yanxuan.nosdn.127.net/6d8a21d7dadcac97cc0fe16f4de91b7a.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (632, 1135058, 'http://yanxuan.nosdn.127.net/8bf410efc12c23f3b6a65ba3023d2f10.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (633, 1138000, 'http://yanxuan.nosdn.127.net/6c077e6fdbb1097c530ec38f805bef96.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (634, 1138000, 'http://yanxuan.nosdn.127.net/18327e601ce72fce5295c3e8a4e5edb8.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (635, 1138000, 'http://yanxuan.nosdn.127.net/5599380c7fcccc15cb60d1e1f2f4ebca.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (636, 1138000, 'http://yanxuan.nosdn.127.net/aa818e0f542b19dca3dedbd82299f5d4.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (637, 1138001, 'http://yanxuan.nosdn.127.net/26a98380a4bfc87e5bf1f284fa0e5326.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (638, 1138001, 'http://yanxuan.nosdn.127.net/0aaf361547fbf53416e39577b643f37f.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (639, 1138001, 'http://yanxuan.nosdn.127.net/d1162dd41523cacb74d55c2f020623f1.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (640, 1138001, 'http://yanxuan.nosdn.127.net/416067a61b4911bf7f6d26cd7adf8058.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (641, 1143015, 'http://yanxuan.nosdn.127.net/dee547def90dc27928f7da892059cdf4.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (642, 1143015, 'http://yanxuan.nosdn.127.net/0eaba4e65f5842069dc3701064206bbb.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (643, 1143015, 'http://yanxuan.nosdn.127.net/b6f6f87724f792525236f243aca134ad.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (644, 1143015, 'http://yanxuan.nosdn.127.net/8267a06caded158b3d59e687f8464bdd.png', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (645, 1147045, 'http://yanxuan.nosdn.127.net/fc2cc85988f5dff0cb279f71defb70e9.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (646, 1147045, 'http://yanxuan.nosdn.127.net/e4bd418068967198c004c553baeb96ea.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (647, 1147045, 'http://yanxuan.nosdn.127.net/80c19798d0c56e1c10b7b8221d6decd9.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (648, 1147045, 'http://yanxuan.nosdn.127.net/9160dde4aa5d7f961607d3e6c9d04843.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (649, 1147046, 'http://yanxuan.nosdn.127.net/bf827be7365ce9cbf63e5c09a3d02c03.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (650, 1147046, 'http://yanxuan.nosdn.127.net/dba153ee3fd18775ba79b34cfedbe7f4.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (651, 1147046, 'http://yanxuan.nosdn.127.net/b92912b2c65d2a62fcdd1167fb1aec03.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (652, 1147046, 'http://yanxuan.nosdn.127.net/efb43b046cc0102a65b967b835c3cdd9.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (653, 1147047, 'http://yanxuan.nosdn.127.net/014530f37555bba33eec154a36b78a02.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (654, 1147047, 'http://yanxuan.nosdn.127.net/7e1e516c116a663e587fc5dd3cd2f47b.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (655, 1147047, 'http://yanxuan.nosdn.127.net/db03baeb92ec4be50203dc690b793830.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (656, 1147047, 'http://yanxuan.nosdn.127.net/a9239c7e79510a1218f94da58a278a8d.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (657, 1147048, 'http://yanxuan.nosdn.127.net/cb0fc84a590f63e61b0eb3ee0833fcff.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (658, 1147048, 'http://yanxuan.nosdn.127.net/cab7242933b1d129f4f66b05e1652641.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (659, 1147048, 'http://yanxuan.nosdn.127.net/e65c7df582c401681bdaa31925cf86e4.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (660, 1147048, 'http://yanxuan.nosdn.127.net/586bdb8102b0fa378e554055a5aa58aa.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (661, 1151012, 'http://yanxuan.nosdn.127.net/a0d154954426b63e3b52f772e94d67d3.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (662, 1151012, 'http://yanxuan.nosdn.127.net/f5d8ad0faa0259483f9449de25c75060.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (663, 1151012, 'http://yanxuan.nosdn.127.net/d22ce947923b8a0411c20f603bca30cb.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (664, 1151012, 'http://yanxuan.nosdn.127.net/f7fa2262219eab101a9ae4be2f8f9376.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (665, 1151013, 'http://yanxuan.nosdn.127.net/36995f44ed0f31a66d689f60b2cf6b9c.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (666, 1151013, 'http://yanxuan.nosdn.127.net/00f009599828ba02994cf1db7ce1bf06.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (667, 1151013, 'http://yanxuan.nosdn.127.net/381ba1d947afd3ca6180c503114ebb47.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (668, 1151013, 'http://yanxuan.nosdn.127.net/40a15ca9468f56e3a3743b1afb17a8b6.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (669, 1152161, 'http://yanxuan.nosdn.127.net/38a0b23950b79611fb565bae14351a11.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (670, 1152161, 'http://yanxuan.nosdn.127.net/810555afa6919c766a33422edefb1bc8.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (671, 1152161, 'http://yanxuan.nosdn.127.net/b97b54e854660fedabc4dd07d3215216.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (672, 1152161, 'http://yanxuan.nosdn.127.net/79200063ab5893cf3fdd16f428e4d505.jpg', '', 5);
INSERT INTO `nideshop_goods_gallery` VALUES (796, 1181000, 'https://www.wangcong.fun:8002/static/upload/brand/5e5f0c4a-4e97-43a7-a55e-60049583c1c0.jpg', '', 0);
INSERT INTO `nideshop_goods_gallery` VALUES (797, 1181000, 'https://www.wangcong.fun:8002/static/upload/brand/275a61b6-9f07-4cf1-8ad0-3f357d644a40.jpg', '', 1);
INSERT INTO `nideshop_goods_gallery` VALUES (819, 1155000, 'http://yanxuan.nosdn.127.net/517914d4f7d872b17a55e9c3864df717.jpg', '', 0);
INSERT INTO `nideshop_goods_gallery` VALUES (820, 1155000, 'http://yanxuan.nosdn.127.net/6bdf224d6c0276a2737d6af775b6ed8a.jpg', '', 1);
INSERT INTO `nideshop_goods_gallery` VALUES (821, 1155000, 'http://yanxuan.nosdn.127.net/6fa8774f6da6cc473ba3714aec95f6b6.jpg', '', 2);
INSERT INTO `nideshop_goods_gallery` VALUES (822, 1155000, 'http://yanxuan.nosdn.127.net/2eca5d0f8a1ce61baf32311264cebdd1.jpg', '', 3);
INSERT INTO `nideshop_goods_gallery` VALUES (825, 1181023, 'https://www.wangcong.fun:8002/static/upload/brand/d4ac7bbe-d90d-4a5c-b5a8-01a79faed0cc.jpg', '', 0);
INSERT INTO `nideshop_goods_gallery` VALUES (832, 1181022, 'https://www.wangcong.fun:8002/static/upload/brand/e7ab1555-2555-45d9-9792-386e6cc17a23.jpg', '', 0);
INSERT INTO `nideshop_goods_gallery` VALUES (836, 1181024, 'https://www.wangcong.fun:8002/static/upload/brand/ad9986da-d8f1-4847-9baf-aad8051d7afb.jpg', '', 0);
INSERT INTO `nideshop_goods_gallery` VALUES (837, 1181024, 'https://www.wangcong.fun:8002/static/upload/brand/063441b1-e13f-428a-a5c7-b21f242f105b.jpg', '', 1);
INSERT INTO `nideshop_goods_gallery` VALUES (852, 1181070, 'https://www.wangcong.fun:8002/static/upload/brand/8ef444ec-0eda-43fa-8cc8-c63968192b61.jpg', '', 0);
INSERT INTO `nideshop_goods_gallery` VALUES (860, 1181073, 'https://www.wangcong.fun:8002/static/upload/brand/428201d9-29fb-4179-a255-f58d6e38c2e0.jpg', '', 0);
INSERT INTO `nideshop_goods_gallery` VALUES (861, 1181073, 'https://www.wangcong.fun:8002/static/upload/brand/1caf0a64-9ede-410a-848f-f5e959105c4a.jpg', '', 1);
INSERT INTO `nideshop_goods_gallery` VALUES (879, 1181020, 'https://www.wangcong.fun:8002/static/upload/brand/ed5f22c1-8d4d-4bbc-bbce-56c56285e430.jpg', '', 0);
INSERT INTO `nideshop_goods_gallery` VALUES (882, 1181018, 'https://www.wangcong.fun:8002/static/upload/brand/fc630cfc-8bd9-423d-bdb0-f0f6dde7ecc1.jpg', '', 0);
INSERT INTO `nideshop_goods_gallery` VALUES (883, 1181019, 'https://www.wangcong.fun:8002/static/upload/brand/d5c1684a-1b89-4476-893c-98cf37ee6787.jpg', '', 0);
INSERT INTO `nideshop_goods_gallery` VALUES (884, 1181021, 'https://www.wangcong.fun:8002/static/upload/brand/aad91f5c-de33-4e29-a499-8e6626a56e6d.jpg', '', 0);
INSERT INTO `nideshop_goods_gallery` VALUES (885, 1181046, 'https://www.wangcong.fun:8002/static/upload/brand/92b125ce-35bf-488d-a8be-36d2bb5bbd3f.png', '', 0);
INSERT INTO `nideshop_goods_gallery` VALUES (886, 1181063, 'https://www.wangcong.fun:8002/static/upload/brand/7320498c-dd31-46cd-8476-c11b1a02ff20.png', '', 0);
INSERT INTO `nideshop_goods_gallery` VALUES (888, 1181064, 'https://www.wangcong.fun:8002/static/upload/brand/38ed19e9-883f-4ac9-a820-6891cce7cc25.jpg', '', 0);
INSERT INTO `nideshop_goods_gallery` VALUES (889, 1181067, 'https://www.wangcong.fun:8002/static/upload/brand/4702717d-9bfc-4ab4-b62e-f8bc81855df9.jpg', '', 0);
INSERT INTO `nideshop_goods_gallery` VALUES (892, 1181015, 'https://www.wangcong.fun:8002/static/upload/brand/eab99d29-995e-477a-aa44-c0aa5a3e58e0.jpg', '', 0);
INSERT INTO `nideshop_goods_gallery` VALUES (893, 1181015, 'https://www.wangcong.fun:8002/static/upload/brand/127280da-7b96-4210-831d-082438357dde.jpg', '', 1);
INSERT INTO `nideshop_goods_gallery` VALUES (894, 1181068, 'https://www.wangcong.fun:8002/static/upload/brand/a1a230f0-e28c-4fcc-8931-bcce1484814f.jpg', '', 0);
INSERT INTO `nideshop_goods_gallery` VALUES (895, 1181074, 'https://www.wangcong.fun:8002/static/upload/brand/b268460c-e3c7-4ed2-9e43-15fd786aa1d5.jpg', '', 0);
INSERT INTO `nideshop_goods_gallery` VALUES (897, 1181090, 'https://www.wangcong.fun:8002/static/upload/brand/26c2dc6a-38cc-4aed-b245-7eb5cd7fdb51.png', '', 0);
INSERT INTO `nideshop_goods_gallery` VALUES (898, 1181091, 'https://www.wangcong.fun:8002/static/upload/brand/73306a0c-d48f-420c-a2b3-7060ed6ab800.png', '', 0);
INSERT INTO `nideshop_goods_gallery` VALUES (899, 1181092, 'https://www.wangcong.fun:8002/static/upload/brand/e6992a68-3d41-4dd5-ab17-1d11bb5500bc.png', '', 0);
INSERT INTO `nideshop_goods_gallery` VALUES (900, 1181093, 'https://www.wangcong.fun:8002/static/upload/brand/309ecc12-137d-4132-9e99-99c7fb0cb91d.png', '', 0);
INSERT INTO `nideshop_goods_gallery` VALUES (901, 1181094, 'https://www.wangcong.fun:8002/static/upload/brand/41294432-2322-4830-847a-7798d4493a62.png', '', 0);
INSERT INTO `nideshop_goods_gallery` VALUES (902, 1181095, 'https://www.wangcong.fun:8002/static/upload/brand/e0131c58-a640-4490-8931-6eba8cdfd26d.png', '', 0);
INSERT INTO `nideshop_goods_gallery` VALUES (903, 1181096, 'https://www.wangcong.fun:8002/static/upload/brand/d12d13c0-f599-4aef-9fcb-203827529f77.png', '', 0);
COMMIT;

-- ----------------------------
-- Table structure for nideshop_goods_issue
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_goods_issue`;
CREATE TABLE `nideshop_goods_issue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` text COLLATE utf8mb4_unicode_ci,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of nideshop_goods_issue
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_goods_issue` VALUES (1, '1127052', '购买运费如何收取？', '单笔订单金额（不含运费）满88元免邮费；不满88元，每单收取10元运费。\n(港澳台地区需满');
INSERT INTO `nideshop_goods_issue` VALUES (2, '1127052', '使用什么快递发货？', '严选默认使用顺丰快递发货（个别商品使用其他快递），配送范围覆盖全国大部分地区（港澳台地区除');
INSERT INTO `nideshop_goods_issue` VALUES (3, '1127052', '如何申请退货？', '1.自收到商品之日起30日内，顾客可申请无忧退货，退款将原路返还，不同的银行处理时间不同，');
INSERT INTO `nideshop_goods_issue` VALUES (4, '1127052', '如何开具发票？', '1.如需开具普通发票，请在下单时选择“我要开发票”并填写相关信息（APP仅限2.4.0及以');
COMMIT;

-- ----------------------------
-- Table structure for nideshop_goods_specification
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_goods_specification`;
CREATE TABLE `nideshop_goods_specification` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) unsigned NOT NULL DEFAULT '0',
  `specification_id` int(11) unsigned NOT NULL DEFAULT '0',
  `value` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pic_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`),
  KEY `specification_id` (`specification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='商品对应规格表值表';

-- ----------------------------
-- Table structure for nideshop_keywords
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_keywords`;
CREATE TABLE `nideshop_keywords` (
  `keyword` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `sort_order` int(11) unsigned NOT NULL DEFAULT '100',
  `scheme _url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '关键词的跳转链接',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='热闹关键词表';

-- ----------------------------
-- Records of nideshop_keywords
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_keywords` VALUES ('520元礼包抢先领', 1, 1, 1, 1, '', 1, 0);
INSERT INTO `nideshop_keywords` VALUES ('母亲节', 0, 0, 1, 100, '', 2, 0);
INSERT INTO `nideshop_keywords` VALUES ('日式', 0, 0, 1, 100, '', 3, 0);
INSERT INTO `nideshop_keywords` VALUES ('新品上市', 0, 0, 1, 100, '', 4, 0);
INSERT INTO `nideshop_keywords` VALUES ('墨镜', 0, 0, 1, 5, '', 5, 0);
INSERT INTO `nideshop_keywords` VALUES ('夏凉被', 0, 0, 1, 100, '', 6, 0);
INSERT INTO `nideshop_keywords` VALUES ('单鞋', 0, 0, 1, 8, '', 7, 0);
COMMIT;

-- ----------------------------
-- Table structure for nideshop_md5_url
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_md5_url`;
CREATE TABLE `nideshop_md5_url` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `md5` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='MD5';

-- ----------------------------
-- Records of nideshop_md5_url
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_md5_url` VALUES (14, 'ff013ccca3d549fc2013b347277acc07', '/static/upload/richText/cabde9a7-9250-4625-8a28-e9648827398b.png');
INSERT INTO `nideshop_md5_url` VALUES (15, 'b8867d18690cc98a9346d92f66837c3d', '/static/upload/richText/6f1731e6-48a8-4d17-8ed7-16bb4c2f2b85.png');
COMMIT;

-- ----------------------------
-- Table structure for nideshop_order
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_order`;
CREATE TABLE `nideshop_order` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country` smallint(5) unsigned NOT NULL DEFAULT '0',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0',
  `district` smallint(5) unsigned NOT NULL DEFAULT '0',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobile` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postscript` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pay_id` tinyint(3) NOT NULL DEFAULT '0',
  `actual_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '实际需要支付的金额',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `integral_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单总价',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品总价',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `confirm_time` int(11) unsigned NOT NULL DEFAULT '0',
  `pay_time` int(11) unsigned NOT NULL DEFAULT '0',
  `freight_price` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '配送费用',
  `coupon_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '使用的优惠券id',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `coupon_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `callback_status` enum('true','false') COLLATE utf8mb4_unicode_ci DEFAULT 'true',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  KEY `user_id` (`user_id`),
  KEY `order_status` (`order_status`),
  KEY `shipping_status` (`shipping_status`),
  KEY `pay_status` (`pay_status`),
  KEY `pay_id` (`pay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for nideshop_order_express
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_order_express`;
CREATE TABLE `nideshop_order_express` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `shipper_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `shipper_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '物流公司名称',
  `shipper_code` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '物流公司代码',
  `logistic_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '快递单号',
  `traces` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '物流跟踪信息',
  `is_finish` tinyint(1) NOT NULL DEFAULT '0',
  `request_count` int(11) DEFAULT '0' COMMENT '总查询次数',
  `request_time` int(11) DEFAULT '0' COMMENT '最近一次向第三方查询物流信息时间',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='订单物流信息表，发货时生成';

-- ----------------------------
-- Table structure for nideshop_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_order_goods`;
CREATE TABLE `nideshop_order_goods` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `goods_sn` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `retail_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_specifition_name_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `goods_specifition_ids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `list_pic_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for nideshop_product
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_product`;
CREATE TABLE `nideshop_product` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_specification_ids` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `goods_sn` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `goods_number` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `retail_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for nideshop_region
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_region`;
CREATE TABLE `nideshop_region` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '2',
  `agency_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `region_type` (`type`),
  KEY `agency_id` (`agency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4044 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of nideshop_region
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_region` VALUES (1, 0, '中国', 0, 0);
INSERT INTO `nideshop_region` VALUES (2, 1, '北京', 1, 0);
INSERT INTO `nideshop_region` VALUES (3, 1, '天津', 1, 0);
INSERT INTO `nideshop_region` VALUES (4, 1, '河北省', 1, 0);
INSERT INTO `nideshop_region` VALUES (5, 1, '山西省', 1, 0);
INSERT INTO `nideshop_region` VALUES (6, 1, '内蒙古自治区', 1, 0);
INSERT INTO `nideshop_region` VALUES (7, 1, '辽宁省', 1, 0);
INSERT INTO `nideshop_region` VALUES (8, 1, '吉林省', 1, 0);
INSERT INTO `nideshop_region` VALUES (9, 1, '黑龙江省', 1, 0);
INSERT INTO `nideshop_region` VALUES (10, 1, '上海', 1, 0);
INSERT INTO `nideshop_region` VALUES (11, 1, '江苏省', 1, 0);
INSERT INTO `nideshop_region` VALUES (12, 1, '浙江省', 1, 0);
INSERT INTO `nideshop_region` VALUES (13, 1, '安徽省', 1, 0);
INSERT INTO `nideshop_region` VALUES (14, 1, '福建省', 1, 0);
INSERT INTO `nideshop_region` VALUES (15, 1, '江西省', 1, 0);
INSERT INTO `nideshop_region` VALUES (16, 1, '山东省', 1, 0);
INSERT INTO `nideshop_region` VALUES (17, 1, '河南省', 1, 0);
INSERT INTO `nideshop_region` VALUES (18, 1, '湖北省', 1, 0);
INSERT INTO `nideshop_region` VALUES (19, 1, '湖南省', 1, 0);
INSERT INTO `nideshop_region` VALUES (20, 1, '广东省', 1, 0);
INSERT INTO `nideshop_region` VALUES (21, 1, '广西壮族自治区', 1, 0);
INSERT INTO `nideshop_region` VALUES (22, 1, '海南省', 1, 0);
INSERT INTO `nideshop_region` VALUES (23, 1, '重庆', 1, 0);
INSERT INTO `nideshop_region` VALUES (24, 1, '四川省', 1, 0);
INSERT INTO `nideshop_region` VALUES (25, 1, '贵州省', 1, 0);
INSERT INTO `nideshop_region` VALUES (26, 1, '云南省', 1, 0);
INSERT INTO `nideshop_region` VALUES (27, 1, '西藏自治区', 1, 0);
INSERT INTO `nideshop_region` VALUES (28, 1, '陕西省', 1, 0);
INSERT INTO `nideshop_region` VALUES (29, 1, '甘肃省', 1, 0);
INSERT INTO `nideshop_region` VALUES (30, 1, '青海省', 1, 0);
INSERT INTO `nideshop_region` VALUES (31, 1, '宁夏回族自治区', 1, 0);
INSERT INTO `nideshop_region` VALUES (32, 1, '新疆维吾尔自治区', 1, 0);
INSERT INTO `nideshop_region` VALUES (33, 1, '台湾', 1, 0);
INSERT INTO `nideshop_region` VALUES (34, 1, '香港特别行政区', 1, 0);
INSERT INTO `nideshop_region` VALUES (35, 1, '澳门特别行政区', 1, 0);
INSERT INTO `nideshop_region` VALUES (36, 1, '海外', 1, 0);
INSERT INTO `nideshop_region` VALUES (37, 2, '北京市', 2, 0);
INSERT INTO `nideshop_region` VALUES (38, 3, '天津市', 2, 0);
INSERT INTO `nideshop_region` VALUES (39, 4, '石家庄市', 2, 0);
INSERT INTO `nideshop_region` VALUES (40, 4, '唐山市', 2, 0);
INSERT INTO `nideshop_region` VALUES (41, 4, '秦皇岛市', 2, 0);
INSERT INTO `nideshop_region` VALUES (42, 4, '邯郸市', 2, 0);
INSERT INTO `nideshop_region` VALUES (43, 4, '邢台市', 2, 0);
INSERT INTO `nideshop_region` VALUES (44, 4, '保定市', 2, 0);
INSERT INTO `nideshop_region` VALUES (45, 4, '张家口市', 2, 0);
INSERT INTO `nideshop_region` VALUES (46, 4, '承德市', 2, 0);
INSERT INTO `nideshop_region` VALUES (47, 4, '沧州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (48, 4, '廊坊市', 2, 0);
INSERT INTO `nideshop_region` VALUES (49, 4, '衡水市', 2, 0);
INSERT INTO `nideshop_region` VALUES (50, 5, '太原市', 2, 0);
INSERT INTO `nideshop_region` VALUES (51, 5, '大同市', 2, 0);
INSERT INTO `nideshop_region` VALUES (52, 5, '阳泉市', 2, 0);
INSERT INTO `nideshop_region` VALUES (53, 5, '长治市', 2, 0);
INSERT INTO `nideshop_region` VALUES (54, 5, '晋城市', 2, 0);
INSERT INTO `nideshop_region` VALUES (55, 5, '朔州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (56, 5, '晋中市', 2, 0);
INSERT INTO `nideshop_region` VALUES (57, 5, '运城市', 2, 0);
INSERT INTO `nideshop_region` VALUES (58, 5, '忻州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (59, 5, '临汾市', 2, 0);
INSERT INTO `nideshop_region` VALUES (60, 5, '吕梁市', 2, 0);
INSERT INTO `nideshop_region` VALUES (61, 6, '呼和浩特市', 2, 0);
INSERT INTO `nideshop_region` VALUES (62, 6, '包头市', 2, 0);
INSERT INTO `nideshop_region` VALUES (63, 6, '乌海市', 2, 0);
INSERT INTO `nideshop_region` VALUES (64, 6, '赤峰市', 2, 0);
INSERT INTO `nideshop_region` VALUES (65, 6, '通辽市', 2, 0);
INSERT INTO `nideshop_region` VALUES (66, 6, '鄂尔多斯市', 2, 0);
INSERT INTO `nideshop_region` VALUES (67, 6, '呼伦贝尔市', 2, 0);
INSERT INTO `nideshop_region` VALUES (68, 6, '巴彦淖尔市', 2, 0);
INSERT INTO `nideshop_region` VALUES (69, 6, '乌兰察布市', 2, 0);
INSERT INTO `nideshop_region` VALUES (70, 6, '兴安盟', 2, 0);
INSERT INTO `nideshop_region` VALUES (71, 6, '锡林郭勒盟', 2, 0);
INSERT INTO `nideshop_region` VALUES (72, 6, '阿拉善盟', 2, 0);
INSERT INTO `nideshop_region` VALUES (73, 7, '沈阳市', 2, 0);
INSERT INTO `nideshop_region` VALUES (74, 7, '大连市', 2, 0);
INSERT INTO `nideshop_region` VALUES (75, 7, '鞍山市', 2, 0);
INSERT INTO `nideshop_region` VALUES (76, 7, '抚顺市', 2, 0);
INSERT INTO `nideshop_region` VALUES (77, 7, '本溪市', 2, 0);
INSERT INTO `nideshop_region` VALUES (78, 7, '丹东市', 2, 0);
INSERT INTO `nideshop_region` VALUES (79, 7, '锦州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (80, 7, '营口市', 2, 0);
INSERT INTO `nideshop_region` VALUES (81, 7, '阜新市', 2, 0);
INSERT INTO `nideshop_region` VALUES (82, 7, '辽阳市', 2, 0);
INSERT INTO `nideshop_region` VALUES (83, 7, '盘锦市', 2, 0);
INSERT INTO `nideshop_region` VALUES (84, 7, '铁岭市', 2, 0);
INSERT INTO `nideshop_region` VALUES (85, 7, '朝阳市', 2, 0);
INSERT INTO `nideshop_region` VALUES (86, 7, '葫芦岛市', 2, 0);
INSERT INTO `nideshop_region` VALUES (87, 8, '长春市', 2, 0);
INSERT INTO `nideshop_region` VALUES (88, 8, '吉林市', 2, 0);
INSERT INTO `nideshop_region` VALUES (89, 8, '四平市', 2, 0);
INSERT INTO `nideshop_region` VALUES (90, 8, '辽源市', 2, 0);
INSERT INTO `nideshop_region` VALUES (91, 8, '通化市', 2, 0);
INSERT INTO `nideshop_region` VALUES (92, 8, '白山市', 2, 0);
INSERT INTO `nideshop_region` VALUES (93, 8, '松原市', 2, 0);
INSERT INTO `nideshop_region` VALUES (94, 8, '白城市', 2, 0);
INSERT INTO `nideshop_region` VALUES (95, 8, '延边朝鲜族自治州', 2, 0);
INSERT INTO `nideshop_region` VALUES (96, 9, '哈尔滨市', 2, 0);
INSERT INTO `nideshop_region` VALUES (97, 9, '齐齐哈尔市', 2, 0);
INSERT INTO `nideshop_region` VALUES (98, 9, '鸡西市', 2, 0);
INSERT INTO `nideshop_region` VALUES (99, 9, '鹤岗市', 2, 0);
INSERT INTO `nideshop_region` VALUES (100, 9, '双鸭山市', 2, 0);
INSERT INTO `nideshop_region` VALUES (101, 9, '大庆市', 2, 0);
INSERT INTO `nideshop_region` VALUES (102, 9, '伊春市', 2, 0);
INSERT INTO `nideshop_region` VALUES (103, 9, '佳木斯市', 2, 0);
INSERT INTO `nideshop_region` VALUES (104, 9, '七台河市', 2, 0);
INSERT INTO `nideshop_region` VALUES (105, 9, '牡丹江市', 2, 0);
INSERT INTO `nideshop_region` VALUES (106, 9, '黑河市', 2, 0);
INSERT INTO `nideshop_region` VALUES (107, 9, '绥化市', 2, 0);
INSERT INTO `nideshop_region` VALUES (108, 9, '大兴安岭地区', 2, 0);
INSERT INTO `nideshop_region` VALUES (109, 10, '上海市', 2, 0);
INSERT INTO `nideshop_region` VALUES (110, 11, '南京市', 2, 0);
INSERT INTO `nideshop_region` VALUES (111, 11, '无锡市', 2, 0);
INSERT INTO `nideshop_region` VALUES (112, 11, '徐州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (113, 11, '常州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (114, 11, '苏州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (115, 11, '南通市', 2, 0);
INSERT INTO `nideshop_region` VALUES (116, 11, '连云港市', 2, 0);
INSERT INTO `nideshop_region` VALUES (117, 11, '淮安市', 2, 0);
INSERT INTO `nideshop_region` VALUES (118, 11, '盐城市', 2, 0);
INSERT INTO `nideshop_region` VALUES (119, 11, '扬州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (120, 11, '镇江市', 2, 0);
INSERT INTO `nideshop_region` VALUES (121, 11, '泰州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (122, 11, '宿迁市', 2, 0);
INSERT INTO `nideshop_region` VALUES (123, 12, '杭州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (124, 12, '宁波市', 2, 0);
INSERT INTO `nideshop_region` VALUES (125, 12, '温州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (126, 12, '嘉兴市', 2, 0);
INSERT INTO `nideshop_region` VALUES (127, 12, '湖州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (128, 12, '绍兴市', 2, 0);
INSERT INTO `nideshop_region` VALUES (129, 12, '金华市', 2, 0);
INSERT INTO `nideshop_region` VALUES (130, 12, '衢州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (131, 12, '舟山市', 2, 0);
INSERT INTO `nideshop_region` VALUES (132, 12, '台州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (133, 12, '丽水市', 2, 0);
INSERT INTO `nideshop_region` VALUES (134, 13, '合肥市', 2, 0);
INSERT INTO `nideshop_region` VALUES (135, 13, '芜湖市', 2, 0);
INSERT INTO `nideshop_region` VALUES (136, 13, '蚌埠市', 2, 0);
INSERT INTO `nideshop_region` VALUES (137, 13, '淮南市', 2, 0);
INSERT INTO `nideshop_region` VALUES (138, 13, '马鞍山市', 2, 0);
INSERT INTO `nideshop_region` VALUES (139, 13, '淮北市', 2, 0);
INSERT INTO `nideshop_region` VALUES (140, 13, '铜陵市', 2, 0);
INSERT INTO `nideshop_region` VALUES (141, 13, '安庆市', 2, 0);
INSERT INTO `nideshop_region` VALUES (142, 13, '黄山市', 2, 0);
INSERT INTO `nideshop_region` VALUES (143, 13, '滁州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (144, 13, '阜阳市', 2, 0);
INSERT INTO `nideshop_region` VALUES (145, 13, '宿州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (146, 13, '六安市', 2, 0);
INSERT INTO `nideshop_region` VALUES (147, 13, '亳州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (148, 13, '池州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (149, 13, '宣城市', 2, 0);
INSERT INTO `nideshop_region` VALUES (150, 14, '福州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (151, 14, '厦门市', 2, 0);
INSERT INTO `nideshop_region` VALUES (152, 14, '莆田市', 2, 0);
INSERT INTO `nideshop_region` VALUES (153, 14, '三明市', 2, 0);
INSERT INTO `nideshop_region` VALUES (154, 14, '泉州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (155, 14, '漳州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (156, 14, '南平市', 2, 0);
INSERT INTO `nideshop_region` VALUES (157, 14, '龙岩市', 2, 0);
INSERT INTO `nideshop_region` VALUES (158, 14, '宁德市', 2, 0);
INSERT INTO `nideshop_region` VALUES (159, 15, '南昌市', 2, 0);
INSERT INTO `nideshop_region` VALUES (160, 15, '景德镇市', 2, 0);
INSERT INTO `nideshop_region` VALUES (161, 15, '萍乡市', 2, 0);
INSERT INTO `nideshop_region` VALUES (162, 15, '九江市', 2, 0);
INSERT INTO `nideshop_region` VALUES (163, 15, '新余市', 2, 0);
INSERT INTO `nideshop_region` VALUES (164, 15, '鹰潭市', 2, 0);
INSERT INTO `nideshop_region` VALUES (165, 15, '赣州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (166, 15, '吉安市', 2, 0);
INSERT INTO `nideshop_region` VALUES (167, 15, '宜春市', 2, 0);
INSERT INTO `nideshop_region` VALUES (168, 15, '抚州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (169, 15, '上饶市', 2, 0);
INSERT INTO `nideshop_region` VALUES (170, 16, '济南市', 2, 0);
INSERT INTO `nideshop_region` VALUES (171, 16, '青岛市', 2, 0);
INSERT INTO `nideshop_region` VALUES (172, 16, '淄博市', 2, 0);
INSERT INTO `nideshop_region` VALUES (173, 16, '枣庄市', 2, 0);
INSERT INTO `nideshop_region` VALUES (174, 16, '东营市', 2, 0);
INSERT INTO `nideshop_region` VALUES (175, 16, '烟台市', 2, 0);
INSERT INTO `nideshop_region` VALUES (176, 16, '潍坊市', 2, 0);
INSERT INTO `nideshop_region` VALUES (177, 16, '济宁市', 2, 0);
INSERT INTO `nideshop_region` VALUES (178, 16, '泰安市', 2, 0);
INSERT INTO `nideshop_region` VALUES (179, 16, '威海市', 2, 0);
INSERT INTO `nideshop_region` VALUES (180, 16, '日照市', 2, 0);
INSERT INTO `nideshop_region` VALUES (181, 16, '莱芜市', 2, 0);
INSERT INTO `nideshop_region` VALUES (182, 16, '临沂市', 2, 0);
INSERT INTO `nideshop_region` VALUES (183, 16, '德州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (184, 16, '聊城市', 2, 0);
INSERT INTO `nideshop_region` VALUES (185, 16, '滨州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (186, 16, '菏泽市', 2, 0);
INSERT INTO `nideshop_region` VALUES (187, 17, '郑州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (188, 17, '开封市', 2, 0);
INSERT INTO `nideshop_region` VALUES (189, 17, '洛阳市', 2, 0);
INSERT INTO `nideshop_region` VALUES (190, 17, '平顶山市', 2, 0);
INSERT INTO `nideshop_region` VALUES (191, 17, '安阳市', 2, 0);
INSERT INTO `nideshop_region` VALUES (192, 17, '鹤壁市', 2, 0);
INSERT INTO `nideshop_region` VALUES (193, 17, '新乡市', 2, 0);
INSERT INTO `nideshop_region` VALUES (194, 17, '焦作市', 2, 0);
INSERT INTO `nideshop_region` VALUES (195, 17, '濮阳市', 2, 0);
INSERT INTO `nideshop_region` VALUES (196, 17, '许昌市', 2, 0);
INSERT INTO `nideshop_region` VALUES (197, 17, '漯河市', 2, 0);
INSERT INTO `nideshop_region` VALUES (198, 17, '三门峡市', 2, 0);
INSERT INTO `nideshop_region` VALUES (199, 17, '南阳市', 2, 0);
INSERT INTO `nideshop_region` VALUES (200, 17, '商丘市', 2, 0);
INSERT INTO `nideshop_region` VALUES (201, 17, '信阳市', 2, 0);
INSERT INTO `nideshop_region` VALUES (202, 17, '周口市', 2, 0);
INSERT INTO `nideshop_region` VALUES (203, 17, '驻马店市', 2, 0);
INSERT INTO `nideshop_region` VALUES (204, 18, '武汉市', 2, 0);
INSERT INTO `nideshop_region` VALUES (205, 18, '黄石市', 2, 0);
INSERT INTO `nideshop_region` VALUES (206, 18, '十堰市', 2, 0);
INSERT INTO `nideshop_region` VALUES (207, 18, '宜昌市', 2, 0);
INSERT INTO `nideshop_region` VALUES (208, 18, '襄阳市', 2, 0);
INSERT INTO `nideshop_region` VALUES (209, 18, '鄂州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (210, 18, '荆门市', 2, 0);
INSERT INTO `nideshop_region` VALUES (211, 18, '孝感市', 2, 0);
INSERT INTO `nideshop_region` VALUES (212, 18, '荆州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (213, 18, '黄冈市', 2, 0);
INSERT INTO `nideshop_region` VALUES (214, 18, '咸宁市', 2, 0);
INSERT INTO `nideshop_region` VALUES (215, 18, '随州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (216, 18, '恩施土家族苗族自治州', 2, 0);
INSERT INTO `nideshop_region` VALUES (217, 19, '长沙市', 2, 0);
INSERT INTO `nideshop_region` VALUES (218, 19, '株洲市', 2, 0);
INSERT INTO `nideshop_region` VALUES (219, 19, '湘潭市', 2, 0);
INSERT INTO `nideshop_region` VALUES (220, 19, '衡阳市', 2, 0);
INSERT INTO `nideshop_region` VALUES (221, 19, '邵阳市', 2, 0);
INSERT INTO `nideshop_region` VALUES (222, 19, '岳阳市', 2, 0);
INSERT INTO `nideshop_region` VALUES (223, 19, '常德市', 2, 0);
INSERT INTO `nideshop_region` VALUES (224, 19, '张家界市', 2, 0);
INSERT INTO `nideshop_region` VALUES (225, 19, '益阳市', 2, 0);
INSERT INTO `nideshop_region` VALUES (226, 19, '郴州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (227, 19, '永州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (228, 19, '怀化市', 2, 0);
INSERT INTO `nideshop_region` VALUES (229, 19, '娄底市', 2, 0);
INSERT INTO `nideshop_region` VALUES (230, 19, '湘西土家族苗族自治州', 2, 0);
INSERT INTO `nideshop_region` VALUES (231, 20, '广州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (232, 20, '韶关市', 2, 0);
INSERT INTO `nideshop_region` VALUES (233, 20, '深圳市', 2, 0);
INSERT INTO `nideshop_region` VALUES (234, 20, '珠海市', 2, 0);
INSERT INTO `nideshop_region` VALUES (235, 20, '汕头市', 2, 0);
INSERT INTO `nideshop_region` VALUES (236, 20, '佛山市', 2, 0);
INSERT INTO `nideshop_region` VALUES (237, 20, '江门市', 2, 0);
INSERT INTO `nideshop_region` VALUES (238, 20, '湛江市', 2, 0);
INSERT INTO `nideshop_region` VALUES (239, 20, '茂名市', 2, 0);
INSERT INTO `nideshop_region` VALUES (240, 20, '肇庆市', 2, 0);
INSERT INTO `nideshop_region` VALUES (241, 20, '惠州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (242, 20, '梅州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (243, 20, '汕尾市', 2, 0);
INSERT INTO `nideshop_region` VALUES (244, 20, '河源市', 2, 0);
INSERT INTO `nideshop_region` VALUES (245, 20, '阳江市', 2, 0);
INSERT INTO `nideshop_region` VALUES (246, 20, '清远市', 2, 0);
INSERT INTO `nideshop_region` VALUES (247, 20, '东莞市', 2, 0);
INSERT INTO `nideshop_region` VALUES (248, 20, '中山市', 2, 0);
INSERT INTO `nideshop_region` VALUES (249, 20, '东沙群岛', 2, 0);
INSERT INTO `nideshop_region` VALUES (250, 20, '潮州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (251, 20, '揭阳市', 2, 0);
INSERT INTO `nideshop_region` VALUES (252, 20, '云浮市', 2, 0);
INSERT INTO `nideshop_region` VALUES (253, 21, '南宁市', 2, 0);
INSERT INTO `nideshop_region` VALUES (254, 21, '柳州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (255, 21, '桂林市', 2, 0);
INSERT INTO `nideshop_region` VALUES (256, 21, '梧州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (257, 21, '北海市', 2, 0);
INSERT INTO `nideshop_region` VALUES (258, 21, '防城港市', 2, 0);
INSERT INTO `nideshop_region` VALUES (259, 21, '钦州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (260, 21, '贵港市', 2, 0);
INSERT INTO `nideshop_region` VALUES (261, 21, '玉林市', 2, 0);
INSERT INTO `nideshop_region` VALUES (262, 21, '百色市', 2, 0);
INSERT INTO `nideshop_region` VALUES (263, 21, '贺州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (264, 21, '河池市', 2, 0);
INSERT INTO `nideshop_region` VALUES (265, 21, '来宾市', 2, 0);
INSERT INTO `nideshop_region` VALUES (266, 21, '崇左市', 2, 0);
INSERT INTO `nideshop_region` VALUES (267, 22, '海口市', 2, 0);
INSERT INTO `nideshop_region` VALUES (268, 22, '三亚市', 2, 0);
INSERT INTO `nideshop_region` VALUES (269, 22, '三沙市', 2, 0);
INSERT INTO `nideshop_region` VALUES (270, 23, '重庆市', 2, 0);
INSERT INTO `nideshop_region` VALUES (271, 24, '成都市', 2, 0);
INSERT INTO `nideshop_region` VALUES (272, 24, '自贡市', 2, 0);
INSERT INTO `nideshop_region` VALUES (273, 24, '攀枝花市', 2, 0);
INSERT INTO `nideshop_region` VALUES (274, 24, '泸州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (275, 24, '德阳市', 2, 0);
INSERT INTO `nideshop_region` VALUES (276, 24, '绵阳市', 2, 0);
INSERT INTO `nideshop_region` VALUES (277, 24, '广元市', 2, 0);
INSERT INTO `nideshop_region` VALUES (278, 24, '遂宁市', 2, 0);
INSERT INTO `nideshop_region` VALUES (279, 24, '内江市', 2, 0);
INSERT INTO `nideshop_region` VALUES (280, 24, '乐山市', 2, 0);
INSERT INTO `nideshop_region` VALUES (281, 24, '南充市', 2, 0);
INSERT INTO `nideshop_region` VALUES (282, 24, '眉山市', 2, 0);
INSERT INTO `nideshop_region` VALUES (283, 24, '宜宾市', 2, 0);
INSERT INTO `nideshop_region` VALUES (284, 24, '广安市', 2, 0);
INSERT INTO `nideshop_region` VALUES (285, 24, '达州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (286, 24, '雅安市', 2, 0);
INSERT INTO `nideshop_region` VALUES (287, 24, '巴中市', 2, 0);
INSERT INTO `nideshop_region` VALUES (288, 24, '资阳市', 2, 0);
INSERT INTO `nideshop_region` VALUES (289, 24, '阿坝藏族羌族自治州', 2, 0);
INSERT INTO `nideshop_region` VALUES (290, 24, '甘孜藏族自治州', 2, 0);
INSERT INTO `nideshop_region` VALUES (291, 24, '凉山彝族自治州', 2, 0);
INSERT INTO `nideshop_region` VALUES (292, 25, '贵阳市', 2, 0);
INSERT INTO `nideshop_region` VALUES (293, 25, '六盘水市', 2, 0);
INSERT INTO `nideshop_region` VALUES (294, 25, '遵义市', 2, 0);
INSERT INTO `nideshop_region` VALUES (295, 25, '安顺市', 2, 0);
INSERT INTO `nideshop_region` VALUES (296, 25, '铜仁市', 2, 0);
INSERT INTO `nideshop_region` VALUES (297, 25, '黔西南布依族苗族自治州', 2, 0);
INSERT INTO `nideshop_region` VALUES (298, 25, '毕节市', 2, 0);
INSERT INTO `nideshop_region` VALUES (299, 25, '黔东南苗族侗族自治州', 2, 0);
INSERT INTO `nideshop_region` VALUES (300, 25, '黔南布依族苗族自治州', 2, 0);
INSERT INTO `nideshop_region` VALUES (301, 26, '昆明市', 2, 0);
INSERT INTO `nideshop_region` VALUES (302, 26, '曲靖市', 2, 0);
INSERT INTO `nideshop_region` VALUES (303, 26, '玉溪市', 2, 0);
INSERT INTO `nideshop_region` VALUES (304, 26, '保山市', 2, 0);
INSERT INTO `nideshop_region` VALUES (305, 26, '昭通市', 2, 0);
INSERT INTO `nideshop_region` VALUES (306, 26, '丽江市', 2, 0);
INSERT INTO `nideshop_region` VALUES (307, 26, '普洱市', 2, 0);
INSERT INTO `nideshop_region` VALUES (308, 26, '临沧市', 2, 0);
INSERT INTO `nideshop_region` VALUES (309, 26, '楚雄彝族自治州', 2, 0);
INSERT INTO `nideshop_region` VALUES (310, 26, '红河哈尼族彝族自治州', 2, 0);
INSERT INTO `nideshop_region` VALUES (311, 26, '文山壮族苗族自治州', 2, 0);
INSERT INTO `nideshop_region` VALUES (312, 26, '西双版纳傣族自治州', 2, 0);
INSERT INTO `nideshop_region` VALUES (313, 26, '大理白族自治州', 2, 0);
INSERT INTO `nideshop_region` VALUES (314, 26, '德宏傣族景颇族自治州', 2, 0);
INSERT INTO `nideshop_region` VALUES (315, 26, '怒江傈僳族自治州', 2, 0);
INSERT INTO `nideshop_region` VALUES (316, 26, '迪庆藏族自治州', 2, 0);
INSERT INTO `nideshop_region` VALUES (317, 27, '拉萨市', 2, 0);
INSERT INTO `nideshop_region` VALUES (318, 27, '昌都市', 2, 0);
INSERT INTO `nideshop_region` VALUES (319, 27, '山南地区', 2, 0);
INSERT INTO `nideshop_region` VALUES (320, 27, '日喀则市', 2, 0);
INSERT INTO `nideshop_region` VALUES (321, 27, '那曲地区', 2, 0);
INSERT INTO `nideshop_region` VALUES (322, 27, '阿里地区', 2, 0);
INSERT INTO `nideshop_region` VALUES (323, 27, '林芝市', 2, 0);
INSERT INTO `nideshop_region` VALUES (324, 28, '西安市', 2, 0);
INSERT INTO `nideshop_region` VALUES (325, 28, '铜川市', 2, 0);
INSERT INTO `nideshop_region` VALUES (326, 28, '宝鸡市', 2, 0);
INSERT INTO `nideshop_region` VALUES (327, 28, '咸阳市', 2, 0);
INSERT INTO `nideshop_region` VALUES (328, 28, '渭南市', 2, 0);
INSERT INTO `nideshop_region` VALUES (329, 28, '延安市', 2, 0);
INSERT INTO `nideshop_region` VALUES (330, 28, '汉中市', 2, 0);
INSERT INTO `nideshop_region` VALUES (331, 28, '榆林市', 2, 0);
INSERT INTO `nideshop_region` VALUES (332, 28, '安康市', 2, 0);
INSERT INTO `nideshop_region` VALUES (333, 28, '商洛市', 2, 0);
INSERT INTO `nideshop_region` VALUES (334, 29, '兰州市', 2, 0);
INSERT INTO `nideshop_region` VALUES (335, 29, '嘉峪关市', 2, 0);
INSERT INTO `nideshop_region` VALUES (336, 29, '金昌市', 2, 0);
INSERT INTO `nideshop_region` VALUES (337, 29, '白银市', 2, 0);
INSERT INTO `nideshop_region` VALUES (338, 29, '天水市', 2, 0);
INSERT INTO `nideshop_region` VALUES (339, 29, '武威市', 2, 0);
INSERT INTO `nideshop_region` VALUES (340, 29, '张掖市', 2, 0);
INSERT INTO `nideshop_region` VALUES (341, 29, '平凉市', 2, 0);
INSERT INTO `nideshop_region` VALUES (342, 29, '酒泉市', 2, 0);
INSERT INTO `nideshop_region` VALUES (343, 29, '庆阳市', 2, 0);
INSERT INTO `nideshop_region` VALUES (344, 29, '定西市', 2, 0);
INSERT INTO `nideshop_region` VALUES (345, 29, '陇南市', 2, 0);
INSERT INTO `nideshop_region` VALUES (346, 29, '临夏回族自治州', 2, 0);
INSERT INTO `nideshop_region` VALUES (347, 29, '甘南藏族自治州', 2, 0);
INSERT INTO `nideshop_region` VALUES (348, 30, '西宁市', 2, 0);
INSERT INTO `nideshop_region` VALUES (349, 30, '海东市', 2, 0);
INSERT INTO `nideshop_region` VALUES (350, 30, '海北藏族自治州', 2, 0);
INSERT INTO `nideshop_region` VALUES (351, 30, '黄南藏族自治州', 2, 0);
INSERT INTO `nideshop_region` VALUES (352, 30, '海南藏族自治州', 2, 0);
INSERT INTO `nideshop_region` VALUES (353, 30, '果洛藏族自治州', 2, 0);
INSERT INTO `nideshop_region` VALUES (354, 30, '玉树藏族自治州', 2, 0);
INSERT INTO `nideshop_region` VALUES (355, 30, '海西蒙古族藏族自治州', 2, 0);
INSERT INTO `nideshop_region` VALUES (356, 31, '银川市', 2, 0);
INSERT INTO `nideshop_region` VALUES (357, 31, '石嘴山市', 2, 0);
INSERT INTO `nideshop_region` VALUES (358, 31, '吴忠市', 2, 0);
INSERT INTO `nideshop_region` VALUES (359, 31, '固原市', 2, 0);
INSERT INTO `nideshop_region` VALUES (360, 31, '中卫市', 2, 0);
INSERT INTO `nideshop_region` VALUES (361, 32, '乌鲁木齐市', 2, 0);
INSERT INTO `nideshop_region` VALUES (362, 32, '克拉玛依市', 2, 0);
INSERT INTO `nideshop_region` VALUES (363, 32, '吐鲁番市', 2, 0);
INSERT INTO `nideshop_region` VALUES (364, 32, '哈密地区', 2, 0);
INSERT INTO `nideshop_region` VALUES (365, 32, '昌吉回族自治州', 2, 0);
INSERT INTO `nideshop_region` VALUES (366, 32, '博尔塔拉蒙古自治州', 2, 0);
INSERT INTO `nideshop_region` VALUES (367, 32, '巴音郭楞蒙古自治州', 2, 0);
INSERT INTO `nideshop_region` VALUES (368, 32, '阿克苏地区', 2, 0);
INSERT INTO `nideshop_region` VALUES (369, 32, '克孜勒苏柯尔克孜自治州', 2, 0);
INSERT INTO `nideshop_region` VALUES (370, 32, '喀什地区', 2, 0);
INSERT INTO `nideshop_region` VALUES (371, 32, '和田地区', 2, 0);
INSERT INTO `nideshop_region` VALUES (372, 32, '伊犁哈萨克自治州', 2, 0);
INSERT INTO `nideshop_region` VALUES (373, 32, '塔城地区', 2, 0);
INSERT INTO `nideshop_region` VALUES (374, 32, '阿勒泰地区', 2, 0);
INSERT INTO `nideshop_region` VALUES (375, 33, '台北市', 2, 0);
INSERT INTO `nideshop_region` VALUES (376, 33, '高雄市', 2, 0);
INSERT INTO `nideshop_region` VALUES (377, 33, '台南市', 2, 0);
INSERT INTO `nideshop_region` VALUES (378, 33, '台中市', 2, 0);
INSERT INTO `nideshop_region` VALUES (379, 33, '金门县', 2, 0);
INSERT INTO `nideshop_region` VALUES (380, 33, '南投县', 2, 0);
INSERT INTO `nideshop_region` VALUES (381, 33, '基隆市', 2, 0);
INSERT INTO `nideshop_region` VALUES (382, 33, '新竹市', 2, 0);
INSERT INTO `nideshop_region` VALUES (383, 33, '嘉义市', 2, 0);
INSERT INTO `nideshop_region` VALUES (384, 33, '新北市', 2, 0);
INSERT INTO `nideshop_region` VALUES (385, 33, '宜兰县', 2, 0);
INSERT INTO `nideshop_region` VALUES (386, 33, '新竹县', 2, 0);
INSERT INTO `nideshop_region` VALUES (387, 33, '桃园县', 2, 0);
INSERT INTO `nideshop_region` VALUES (388, 33, '苗栗县', 2, 0);
INSERT INTO `nideshop_region` VALUES (389, 33, '彰化县', 2, 0);
INSERT INTO `nideshop_region` VALUES (390, 33, '嘉义县', 2, 0);
INSERT INTO `nideshop_region` VALUES (391, 33, '云林县', 2, 0);
INSERT INTO `nideshop_region` VALUES (392, 33, '屏东县', 2, 0);
INSERT INTO `nideshop_region` VALUES (393, 33, '台东县', 2, 0);
INSERT INTO `nideshop_region` VALUES (394, 33, '花莲县', 2, 0);
INSERT INTO `nideshop_region` VALUES (395, 33, '澎湖县', 2, 0);
INSERT INTO `nideshop_region` VALUES (396, 33, '连江县', 2, 0);
INSERT INTO `nideshop_region` VALUES (397, 34, '香港岛', 2, 0);
INSERT INTO `nideshop_region` VALUES (398, 34, '九龙', 2, 0);
INSERT INTO `nideshop_region` VALUES (399, 34, '新界', 2, 0);
INSERT INTO `nideshop_region` VALUES (400, 35, '澳门半岛', 2, 0);
INSERT INTO `nideshop_region` VALUES (401, 35, '离岛', 2, 0);
INSERT INTO `nideshop_region` VALUES (402, 36, '海外', 2, 0);
INSERT INTO `nideshop_region` VALUES (403, 37, '东城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (404, 37, '西城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (405, 37, '崇文区', 3, 0);
INSERT INTO `nideshop_region` VALUES (406, 37, '宣武区', 3, 0);
INSERT INTO `nideshop_region` VALUES (407, 37, '朝阳区', 3, 0);
INSERT INTO `nideshop_region` VALUES (408, 37, '丰台区', 3, 0);
INSERT INTO `nideshop_region` VALUES (409, 37, '石景山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (410, 37, '海淀区', 3, 0);
INSERT INTO `nideshop_region` VALUES (411, 37, '门头沟区', 3, 0);
INSERT INTO `nideshop_region` VALUES (412, 37, '房山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (413, 37, '通州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (414, 37, '顺义区', 3, 0);
INSERT INTO `nideshop_region` VALUES (415, 37, '昌平区', 3, 0);
INSERT INTO `nideshop_region` VALUES (416, 37, '大兴区', 3, 0);
INSERT INTO `nideshop_region` VALUES (417, 37, '怀柔区', 3, 0);
INSERT INTO `nideshop_region` VALUES (418, 37, '平谷区', 3, 0);
INSERT INTO `nideshop_region` VALUES (419, 37, '密云县', 3, 0);
INSERT INTO `nideshop_region` VALUES (420, 37, '延庆县', 3, 0);
INSERT INTO `nideshop_region` VALUES (421, 37, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (422, 38, '和平区', 3, 0);
INSERT INTO `nideshop_region` VALUES (423, 38, '河东区', 3, 0);
INSERT INTO `nideshop_region` VALUES (424, 38, '河西区', 3, 0);
INSERT INTO `nideshop_region` VALUES (425, 38, '南开区', 3, 0);
INSERT INTO `nideshop_region` VALUES (426, 38, '河北区', 3, 0);
INSERT INTO `nideshop_region` VALUES (427, 38, '红桥区', 3, 0);
INSERT INTO `nideshop_region` VALUES (428, 38, '塘沽区', 3, 0);
INSERT INTO `nideshop_region` VALUES (429, 38, '汉沽区', 3, 0);
INSERT INTO `nideshop_region` VALUES (430, 38, '大港区', 3, 0);
INSERT INTO `nideshop_region` VALUES (431, 38, '东丽区', 3, 0);
INSERT INTO `nideshop_region` VALUES (432, 38, '西青区', 3, 0);
INSERT INTO `nideshop_region` VALUES (433, 38, '津南区', 3, 0);
INSERT INTO `nideshop_region` VALUES (434, 38, '北辰区', 3, 0);
INSERT INTO `nideshop_region` VALUES (435, 38, '武清区', 3, 0);
INSERT INTO `nideshop_region` VALUES (436, 38, '宝坻区', 3, 0);
INSERT INTO `nideshop_region` VALUES (437, 38, '滨海新区', 3, 0);
INSERT INTO `nideshop_region` VALUES (438, 38, '宁河县', 3, 0);
INSERT INTO `nideshop_region` VALUES (439, 38, '静海县', 3, 0);
INSERT INTO `nideshop_region` VALUES (440, 38, '蓟县', 3, 0);
INSERT INTO `nideshop_region` VALUES (441, 38, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (442, 39, '长安区', 3, 0);
INSERT INTO `nideshop_region` VALUES (443, 39, '桥东区', 3, 0);
INSERT INTO `nideshop_region` VALUES (444, 39, '桥西区', 3, 0);
INSERT INTO `nideshop_region` VALUES (445, 39, '新华区', 3, 0);
INSERT INTO `nideshop_region` VALUES (446, 39, '井陉矿区', 3, 0);
INSERT INTO `nideshop_region` VALUES (447, 39, '裕华区', 3, 0);
INSERT INTO `nideshop_region` VALUES (448, 39, '井陉县', 3, 0);
INSERT INTO `nideshop_region` VALUES (449, 39, '正定县', 3, 0);
INSERT INTO `nideshop_region` VALUES (450, 39, '栾城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (451, 39, '行唐县', 3, 0);
INSERT INTO `nideshop_region` VALUES (452, 39, '灵寿县', 3, 0);
INSERT INTO `nideshop_region` VALUES (453, 39, '高邑县', 3, 0);
INSERT INTO `nideshop_region` VALUES (454, 39, '深泽县', 3, 0);
INSERT INTO `nideshop_region` VALUES (455, 39, '赞皇县', 3, 0);
INSERT INTO `nideshop_region` VALUES (456, 39, '无极县', 3, 0);
INSERT INTO `nideshop_region` VALUES (457, 39, '平山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (458, 39, '元氏县', 3, 0);
INSERT INTO `nideshop_region` VALUES (459, 39, '赵县', 3, 0);
INSERT INTO `nideshop_region` VALUES (460, 39, '辛集市', 3, 0);
INSERT INTO `nideshop_region` VALUES (461, 39, '藁城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (462, 39, '晋州市', 3, 0);
INSERT INTO `nideshop_region` VALUES (463, 39, '新乐市', 3, 0);
INSERT INTO `nideshop_region` VALUES (464, 39, '鹿泉区', 3, 0);
INSERT INTO `nideshop_region` VALUES (465, 39, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (466, 40, '路南区', 3, 0);
INSERT INTO `nideshop_region` VALUES (467, 40, '路北区', 3, 0);
INSERT INTO `nideshop_region` VALUES (468, 40, '古冶区', 3, 0);
INSERT INTO `nideshop_region` VALUES (469, 40, '开平区', 3, 0);
INSERT INTO `nideshop_region` VALUES (470, 40, '丰南区', 3, 0);
INSERT INTO `nideshop_region` VALUES (471, 40, '丰润区', 3, 0);
INSERT INTO `nideshop_region` VALUES (472, 40, '滦县', 3, 0);
INSERT INTO `nideshop_region` VALUES (473, 40, '滦南县', 3, 0);
INSERT INTO `nideshop_region` VALUES (474, 40, '乐亭县', 3, 0);
INSERT INTO `nideshop_region` VALUES (475, 40, '迁西县', 3, 0);
INSERT INTO `nideshop_region` VALUES (476, 40, '玉田县', 3, 0);
INSERT INTO `nideshop_region` VALUES (477, 40, '曹妃甸区', 3, 0);
INSERT INTO `nideshop_region` VALUES (478, 40, '遵化市', 3, 0);
INSERT INTO `nideshop_region` VALUES (479, 40, '迁安市', 3, 0);
INSERT INTO `nideshop_region` VALUES (480, 40, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (481, 41, '海港区', 3, 0);
INSERT INTO `nideshop_region` VALUES (482, 41, '山海关区', 3, 0);
INSERT INTO `nideshop_region` VALUES (483, 41, '北戴河区', 3, 0);
INSERT INTO `nideshop_region` VALUES (484, 41, '青龙满族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (485, 41, '昌黎县', 3, 0);
INSERT INTO `nideshop_region` VALUES (486, 41, '抚宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (487, 41, '卢龙县', 3, 0);
INSERT INTO `nideshop_region` VALUES (488, 41, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (489, 41, '经济技术开发区', 3, 0);
INSERT INTO `nideshop_region` VALUES (490, 42, '邯山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (491, 42, '丛台区', 3, 0);
INSERT INTO `nideshop_region` VALUES (492, 42, '复兴区', 3, 0);
INSERT INTO `nideshop_region` VALUES (493, 42, '峰峰矿区', 3, 0);
INSERT INTO `nideshop_region` VALUES (494, 42, '邯郸县', 3, 0);
INSERT INTO `nideshop_region` VALUES (495, 42, '临漳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (496, 42, '成安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (497, 42, '大名县', 3, 0);
INSERT INTO `nideshop_region` VALUES (498, 42, '涉县', 3, 0);
INSERT INTO `nideshop_region` VALUES (499, 42, '磁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (500, 42, '肥乡县', 3, 0);
INSERT INTO `nideshop_region` VALUES (501, 42, '永年县', 3, 0);
INSERT INTO `nideshop_region` VALUES (502, 42, '邱县', 3, 0);
INSERT INTO `nideshop_region` VALUES (503, 42, '鸡泽县', 3, 0);
INSERT INTO `nideshop_region` VALUES (504, 42, '广平县', 3, 0);
INSERT INTO `nideshop_region` VALUES (505, 42, '馆陶县', 3, 0);
INSERT INTO `nideshop_region` VALUES (506, 42, '魏县', 3, 0);
INSERT INTO `nideshop_region` VALUES (507, 42, '曲周县', 3, 0);
INSERT INTO `nideshop_region` VALUES (508, 42, '武安市', 3, 0);
INSERT INTO `nideshop_region` VALUES (509, 42, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (510, 43, '桥东区', 3, 0);
INSERT INTO `nideshop_region` VALUES (511, 43, '桥西区', 3, 0);
INSERT INTO `nideshop_region` VALUES (512, 43, '邢台县', 3, 0);
INSERT INTO `nideshop_region` VALUES (513, 43, '临城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (514, 43, '内丘县', 3, 0);
INSERT INTO `nideshop_region` VALUES (515, 43, '柏乡县', 3, 0);
INSERT INTO `nideshop_region` VALUES (516, 43, '隆尧县', 3, 0);
INSERT INTO `nideshop_region` VALUES (517, 43, '任县', 3, 0);
INSERT INTO `nideshop_region` VALUES (518, 43, '南和县', 3, 0);
INSERT INTO `nideshop_region` VALUES (519, 43, '宁晋县', 3, 0);
INSERT INTO `nideshop_region` VALUES (520, 43, '巨鹿县', 3, 0);
INSERT INTO `nideshop_region` VALUES (521, 43, '新河县', 3, 0);
INSERT INTO `nideshop_region` VALUES (522, 43, '广宗县', 3, 0);
INSERT INTO `nideshop_region` VALUES (523, 43, '平乡县', 3, 0);
INSERT INTO `nideshop_region` VALUES (524, 43, '威县', 3, 0);
INSERT INTO `nideshop_region` VALUES (525, 43, '清河县', 3, 0);
INSERT INTO `nideshop_region` VALUES (526, 43, '临西县', 3, 0);
INSERT INTO `nideshop_region` VALUES (527, 43, '南宫市', 3, 0);
INSERT INTO `nideshop_region` VALUES (528, 43, '沙河市', 3, 0);
INSERT INTO `nideshop_region` VALUES (529, 43, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (530, 44, '新市区', 3, 0);
INSERT INTO `nideshop_region` VALUES (531, 44, '北市区', 3, 0);
INSERT INTO `nideshop_region` VALUES (532, 44, '南市区', 3, 0);
INSERT INTO `nideshop_region` VALUES (533, 44, '满城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (534, 44, '清苑县', 3, 0);
INSERT INTO `nideshop_region` VALUES (535, 44, '涞水县', 3, 0);
INSERT INTO `nideshop_region` VALUES (536, 44, '阜平县', 3, 0);
INSERT INTO `nideshop_region` VALUES (537, 44, '徐水县', 3, 0);
INSERT INTO `nideshop_region` VALUES (538, 44, '定兴县', 3, 0);
INSERT INTO `nideshop_region` VALUES (539, 44, '唐县', 3, 0);
INSERT INTO `nideshop_region` VALUES (540, 44, '高阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (541, 44, '容城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (542, 44, '涞源县', 3, 0);
INSERT INTO `nideshop_region` VALUES (543, 44, '望都县', 3, 0);
INSERT INTO `nideshop_region` VALUES (544, 44, '安新县', 3, 0);
INSERT INTO `nideshop_region` VALUES (545, 44, '易县', 3, 0);
INSERT INTO `nideshop_region` VALUES (546, 44, '曲阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (547, 44, '蠡县', 3, 0);
INSERT INTO `nideshop_region` VALUES (548, 44, '顺平县', 3, 0);
INSERT INTO `nideshop_region` VALUES (549, 44, '博野县', 3, 0);
INSERT INTO `nideshop_region` VALUES (550, 44, '雄县', 3, 0);
INSERT INTO `nideshop_region` VALUES (551, 44, '涿州市', 3, 0);
INSERT INTO `nideshop_region` VALUES (552, 44, '定州市', 3, 0);
INSERT INTO `nideshop_region` VALUES (553, 44, '安国市', 3, 0);
INSERT INTO `nideshop_region` VALUES (554, 44, '高碑店市', 3, 0);
INSERT INTO `nideshop_region` VALUES (555, 44, '高开区', 3, 0);
INSERT INTO `nideshop_region` VALUES (556, 44, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (557, 45, '桥东区', 3, 0);
INSERT INTO `nideshop_region` VALUES (558, 45, '桥西区', 3, 0);
INSERT INTO `nideshop_region` VALUES (559, 45, '宣化区', 3, 0);
INSERT INTO `nideshop_region` VALUES (560, 45, '下花园区', 3, 0);
INSERT INTO `nideshop_region` VALUES (561, 45, '宣化县', 3, 0);
INSERT INTO `nideshop_region` VALUES (562, 45, '张北县', 3, 0);
INSERT INTO `nideshop_region` VALUES (563, 45, '康保县', 3, 0);
INSERT INTO `nideshop_region` VALUES (564, 45, '沽源县', 3, 0);
INSERT INTO `nideshop_region` VALUES (565, 45, '尚义县', 3, 0);
INSERT INTO `nideshop_region` VALUES (566, 45, '蔚县', 3, 0);
INSERT INTO `nideshop_region` VALUES (567, 45, '阳原县', 3, 0);
INSERT INTO `nideshop_region` VALUES (568, 45, '怀安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (569, 45, '万全县', 3, 0);
INSERT INTO `nideshop_region` VALUES (570, 45, '怀来县', 3, 0);
INSERT INTO `nideshop_region` VALUES (571, 45, '涿鹿县', 3, 0);
INSERT INTO `nideshop_region` VALUES (572, 45, '赤城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (573, 45, '崇礼县', 3, 0);
INSERT INTO `nideshop_region` VALUES (574, 45, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (575, 46, '双桥区', 3, 0);
INSERT INTO `nideshop_region` VALUES (576, 46, '双滦区', 3, 0);
INSERT INTO `nideshop_region` VALUES (577, 46, '鹰手营子矿区', 3, 0);
INSERT INTO `nideshop_region` VALUES (578, 46, '承德县', 3, 0);
INSERT INTO `nideshop_region` VALUES (579, 46, '兴隆县', 3, 0);
INSERT INTO `nideshop_region` VALUES (580, 46, '平泉县', 3, 0);
INSERT INTO `nideshop_region` VALUES (581, 46, '滦平县', 3, 0);
INSERT INTO `nideshop_region` VALUES (582, 46, '隆化县', 3, 0);
INSERT INTO `nideshop_region` VALUES (583, 46, '丰宁满族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (584, 46, '宽城满族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (585, 46, '围场满族蒙古族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (586, 46, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (587, 47, '新华区', 3, 0);
INSERT INTO `nideshop_region` VALUES (588, 47, '运河区', 3, 0);
INSERT INTO `nideshop_region` VALUES (589, 47, '沧县', 3, 0);
INSERT INTO `nideshop_region` VALUES (590, 47, '青县', 3, 0);
INSERT INTO `nideshop_region` VALUES (591, 47, '东光县', 3, 0);
INSERT INTO `nideshop_region` VALUES (592, 47, '海兴县', 3, 0);
INSERT INTO `nideshop_region` VALUES (593, 47, '盐山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (594, 47, '肃宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (595, 47, '南皮县', 3, 0);
INSERT INTO `nideshop_region` VALUES (596, 47, '吴桥县', 3, 0);
INSERT INTO `nideshop_region` VALUES (597, 47, '献县', 3, 0);
INSERT INTO `nideshop_region` VALUES (598, 47, '孟村回族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (599, 47, '泊头市', 3, 0);
INSERT INTO `nideshop_region` VALUES (600, 47, '任丘市', 3, 0);
INSERT INTO `nideshop_region` VALUES (601, 47, '黄骅市', 3, 0);
INSERT INTO `nideshop_region` VALUES (602, 47, '河间市', 3, 0);
INSERT INTO `nideshop_region` VALUES (603, 47, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (604, 48, '安次区', 3, 0);
INSERT INTO `nideshop_region` VALUES (605, 48, '广阳区', 3, 0);
INSERT INTO `nideshop_region` VALUES (606, 48, '固安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (607, 48, '永清县', 3, 0);
INSERT INTO `nideshop_region` VALUES (608, 48, '香河县', 3, 0);
INSERT INTO `nideshop_region` VALUES (609, 48, '大城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (610, 48, '文安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (611, 48, '大厂回族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (612, 48, '开发区', 3, 0);
INSERT INTO `nideshop_region` VALUES (613, 48, '燕郊经济技术开发区', 3, 0);
INSERT INTO `nideshop_region` VALUES (614, 48, '霸州市', 3, 0);
INSERT INTO `nideshop_region` VALUES (615, 48, '三河市', 3, 0);
INSERT INTO `nideshop_region` VALUES (616, 48, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (617, 49, '桃城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (618, 49, '枣强县', 3, 0);
INSERT INTO `nideshop_region` VALUES (619, 49, '武邑县', 3, 0);
INSERT INTO `nideshop_region` VALUES (620, 49, '武强县', 3, 0);
INSERT INTO `nideshop_region` VALUES (621, 49, '饶阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (622, 49, '安平县', 3, 0);
INSERT INTO `nideshop_region` VALUES (623, 49, '故城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (624, 49, '景县', 3, 0);
INSERT INTO `nideshop_region` VALUES (625, 49, '阜城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (626, 49, '冀州市', 3, 0);
INSERT INTO `nideshop_region` VALUES (627, 49, '深州市', 3, 0);
INSERT INTO `nideshop_region` VALUES (628, 49, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (629, 50, '小店区', 3, 0);
INSERT INTO `nideshop_region` VALUES (630, 50, '迎泽区', 3, 0);
INSERT INTO `nideshop_region` VALUES (631, 50, '杏花岭区', 3, 0);
INSERT INTO `nideshop_region` VALUES (632, 50, '尖草坪区', 3, 0);
INSERT INTO `nideshop_region` VALUES (633, 50, '万柏林区', 3, 0);
INSERT INTO `nideshop_region` VALUES (634, 50, '晋源区', 3, 0);
INSERT INTO `nideshop_region` VALUES (635, 50, '清徐县', 3, 0);
INSERT INTO `nideshop_region` VALUES (636, 50, '阳曲县', 3, 0);
INSERT INTO `nideshop_region` VALUES (637, 50, '娄烦县', 3, 0);
INSERT INTO `nideshop_region` VALUES (638, 50, '古交市', 3, 0);
INSERT INTO `nideshop_region` VALUES (639, 50, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (640, 51, '城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (641, 51, '矿区', 3, 0);
INSERT INTO `nideshop_region` VALUES (642, 51, '南郊区', 3, 0);
INSERT INTO `nideshop_region` VALUES (643, 51, '新荣区', 3, 0);
INSERT INTO `nideshop_region` VALUES (644, 51, '阳高县', 3, 0);
INSERT INTO `nideshop_region` VALUES (645, 51, '天镇县', 3, 0);
INSERT INTO `nideshop_region` VALUES (646, 51, '广灵县', 3, 0);
INSERT INTO `nideshop_region` VALUES (647, 51, '灵丘县', 3, 0);
INSERT INTO `nideshop_region` VALUES (648, 51, '浑源县', 3, 0);
INSERT INTO `nideshop_region` VALUES (649, 51, '左云县', 3, 0);
INSERT INTO `nideshop_region` VALUES (650, 51, '大同县', 3, 0);
INSERT INTO `nideshop_region` VALUES (651, 51, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (652, 52, '城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (653, 52, '矿区', 3, 0);
INSERT INTO `nideshop_region` VALUES (654, 52, '郊区', 3, 0);
INSERT INTO `nideshop_region` VALUES (655, 52, '平定县', 3, 0);
INSERT INTO `nideshop_region` VALUES (656, 52, '盂县', 3, 0);
INSERT INTO `nideshop_region` VALUES (657, 52, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (658, 53, '长治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (659, 53, '襄垣县', 3, 0);
INSERT INTO `nideshop_region` VALUES (660, 53, '屯留县', 3, 0);
INSERT INTO `nideshop_region` VALUES (661, 53, '平顺县', 3, 0);
INSERT INTO `nideshop_region` VALUES (662, 53, '黎城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (663, 53, '壶关县', 3, 0);
INSERT INTO `nideshop_region` VALUES (664, 53, '长子县', 3, 0);
INSERT INTO `nideshop_region` VALUES (665, 53, '武乡县', 3, 0);
INSERT INTO `nideshop_region` VALUES (666, 53, '沁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (667, 53, '沁源县', 3, 0);
INSERT INTO `nideshop_region` VALUES (668, 53, '潞城市', 3, 0);
INSERT INTO `nideshop_region` VALUES (669, 53, '城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (670, 53, '郊区', 3, 0);
INSERT INTO `nideshop_region` VALUES (671, 53, '高新区', 3, 0);
INSERT INTO `nideshop_region` VALUES (672, 53, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (673, 54, '城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (674, 54, '沁水县', 3, 0);
INSERT INTO `nideshop_region` VALUES (675, 54, '阳城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (676, 54, '陵川县', 3, 0);
INSERT INTO `nideshop_region` VALUES (677, 54, '泽州县', 3, 0);
INSERT INTO `nideshop_region` VALUES (678, 54, '高平市', 3, 0);
INSERT INTO `nideshop_region` VALUES (679, 54, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (680, 55, '朔城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (681, 55, '平鲁区', 3, 0);
INSERT INTO `nideshop_region` VALUES (682, 55, '山阴县', 3, 0);
INSERT INTO `nideshop_region` VALUES (683, 55, '应县', 3, 0);
INSERT INTO `nideshop_region` VALUES (684, 55, '右玉县', 3, 0);
INSERT INTO `nideshop_region` VALUES (685, 55, '怀仁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (686, 55, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (687, 56, '榆次区', 3, 0);
INSERT INTO `nideshop_region` VALUES (688, 56, '榆社县', 3, 0);
INSERT INTO `nideshop_region` VALUES (689, 56, '左权县', 3, 0);
INSERT INTO `nideshop_region` VALUES (690, 56, '和顺县', 3, 0);
INSERT INTO `nideshop_region` VALUES (691, 56, '昔阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (692, 56, '寿阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (693, 56, '太谷县', 3, 0);
INSERT INTO `nideshop_region` VALUES (694, 56, '祁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (695, 56, '平遥县', 3, 0);
INSERT INTO `nideshop_region` VALUES (696, 56, '灵石县', 3, 0);
INSERT INTO `nideshop_region` VALUES (697, 56, '介休市', 3, 0);
INSERT INTO `nideshop_region` VALUES (698, 56, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (699, 57, '盐湖区', 3, 0);
INSERT INTO `nideshop_region` VALUES (700, 57, '临猗县', 3, 0);
INSERT INTO `nideshop_region` VALUES (701, 57, '万荣县', 3, 0);
INSERT INTO `nideshop_region` VALUES (702, 57, '闻喜县', 3, 0);
INSERT INTO `nideshop_region` VALUES (703, 57, '稷山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (704, 57, '新绛县', 3, 0);
INSERT INTO `nideshop_region` VALUES (705, 57, '绛县', 3, 0);
INSERT INTO `nideshop_region` VALUES (706, 57, '垣曲县', 3, 0);
INSERT INTO `nideshop_region` VALUES (707, 57, '夏县', 3, 0);
INSERT INTO `nideshop_region` VALUES (708, 57, '平陆县', 3, 0);
INSERT INTO `nideshop_region` VALUES (709, 57, '芮城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (710, 57, '永济市', 3, 0);
INSERT INTO `nideshop_region` VALUES (711, 57, '河津市', 3, 0);
INSERT INTO `nideshop_region` VALUES (712, 57, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (713, 58, '忻府区', 3, 0);
INSERT INTO `nideshop_region` VALUES (714, 58, '定襄县', 3, 0);
INSERT INTO `nideshop_region` VALUES (715, 58, '五台县', 3, 0);
INSERT INTO `nideshop_region` VALUES (716, 58, '代县', 3, 0);
INSERT INTO `nideshop_region` VALUES (717, 58, '繁峙县', 3, 0);
INSERT INTO `nideshop_region` VALUES (718, 58, '宁武县', 3, 0);
INSERT INTO `nideshop_region` VALUES (719, 58, '静乐县', 3, 0);
INSERT INTO `nideshop_region` VALUES (720, 58, '神池县', 3, 0);
INSERT INTO `nideshop_region` VALUES (721, 58, '五寨县', 3, 0);
INSERT INTO `nideshop_region` VALUES (722, 58, '岢岚县', 3, 0);
INSERT INTO `nideshop_region` VALUES (723, 58, '河曲县', 3, 0);
INSERT INTO `nideshop_region` VALUES (724, 58, '保德县', 3, 0);
INSERT INTO `nideshop_region` VALUES (725, 58, '偏关县', 3, 0);
INSERT INTO `nideshop_region` VALUES (726, 58, '原平市', 3, 0);
INSERT INTO `nideshop_region` VALUES (727, 58, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (728, 59, '尧都区', 3, 0);
INSERT INTO `nideshop_region` VALUES (729, 59, '曲沃县', 3, 0);
INSERT INTO `nideshop_region` VALUES (730, 59, '翼城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (731, 59, '襄汾县', 3, 0);
INSERT INTO `nideshop_region` VALUES (732, 59, '洪洞县', 3, 0);
INSERT INTO `nideshop_region` VALUES (733, 59, '古县', 3, 0);
INSERT INTO `nideshop_region` VALUES (734, 59, '安泽县', 3, 0);
INSERT INTO `nideshop_region` VALUES (735, 59, '浮山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (736, 59, '吉县', 3, 0);
INSERT INTO `nideshop_region` VALUES (737, 59, '乡宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (738, 59, '大宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (739, 59, '隰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (740, 59, '永和县', 3, 0);
INSERT INTO `nideshop_region` VALUES (741, 59, '蒲县', 3, 0);
INSERT INTO `nideshop_region` VALUES (742, 59, '汾西县', 3, 0);
INSERT INTO `nideshop_region` VALUES (743, 59, '侯马市', 3, 0);
INSERT INTO `nideshop_region` VALUES (744, 59, '霍州市', 3, 0);
INSERT INTO `nideshop_region` VALUES (745, 59, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (746, 60, '离石区', 3, 0);
INSERT INTO `nideshop_region` VALUES (747, 60, '文水县', 3, 0);
INSERT INTO `nideshop_region` VALUES (748, 60, '交城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (749, 60, '兴县', 3, 0);
INSERT INTO `nideshop_region` VALUES (750, 60, '临县', 3, 0);
INSERT INTO `nideshop_region` VALUES (751, 60, '柳林县', 3, 0);
INSERT INTO `nideshop_region` VALUES (752, 60, '石楼县', 3, 0);
INSERT INTO `nideshop_region` VALUES (753, 60, '岚县', 3, 0);
INSERT INTO `nideshop_region` VALUES (754, 60, '方山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (755, 60, '中阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (756, 60, '交口县', 3, 0);
INSERT INTO `nideshop_region` VALUES (757, 60, '孝义市', 3, 0);
INSERT INTO `nideshop_region` VALUES (758, 60, '汾阳市', 3, 0);
INSERT INTO `nideshop_region` VALUES (759, 60, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (760, 61, '新城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (761, 61, '回民区', 3, 0);
INSERT INTO `nideshop_region` VALUES (762, 61, '玉泉区', 3, 0);
INSERT INTO `nideshop_region` VALUES (763, 61, '赛罕区', 3, 0);
INSERT INTO `nideshop_region` VALUES (764, 61, '土默特左旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (765, 61, '托克托县', 3, 0);
INSERT INTO `nideshop_region` VALUES (766, 61, '和林格尔县', 3, 0);
INSERT INTO `nideshop_region` VALUES (767, 61, '清水河县', 3, 0);
INSERT INTO `nideshop_region` VALUES (768, 61, '武川县', 3, 0);
INSERT INTO `nideshop_region` VALUES (769, 61, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (770, 62, '东河区', 3, 0);
INSERT INTO `nideshop_region` VALUES (771, 62, '昆都仑区', 3, 0);
INSERT INTO `nideshop_region` VALUES (772, 62, '青山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (773, 62, '石拐区', 3, 0);
INSERT INTO `nideshop_region` VALUES (774, 62, '白云鄂博矿区', 3, 0);
INSERT INTO `nideshop_region` VALUES (775, 62, '九原区', 3, 0);
INSERT INTO `nideshop_region` VALUES (776, 62, '土默特右旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (777, 62, '固阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (778, 62, '达尔罕茂明安联合旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (779, 62, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (780, 63, '海勃湾区', 3, 0);
INSERT INTO `nideshop_region` VALUES (781, 63, '海南区', 3, 0);
INSERT INTO `nideshop_region` VALUES (782, 63, '乌达区', 3, 0);
INSERT INTO `nideshop_region` VALUES (783, 63, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (784, 64, '红山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (785, 64, '元宝山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (786, 64, '松山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (787, 64, '阿鲁科尔沁旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (788, 64, '巴林左旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (789, 64, '巴林右旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (790, 64, '林西县', 3, 0);
INSERT INTO `nideshop_region` VALUES (791, 64, '克什克腾旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (792, 64, '翁牛特旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (793, 64, '喀喇沁旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (794, 64, '宁城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (795, 64, '敖汉旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (796, 64, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (797, 65, '科尔沁区', 3, 0);
INSERT INTO `nideshop_region` VALUES (798, 65, '科尔沁左翼中旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (799, 65, '科尔沁左翼后旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (800, 65, '开鲁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (801, 65, '库伦旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (802, 65, '奈曼旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (803, 65, '扎鲁特旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (804, 65, '霍林郭勒市', 3, 0);
INSERT INTO `nideshop_region` VALUES (805, 65, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (806, 66, '东胜区', 3, 0);
INSERT INTO `nideshop_region` VALUES (807, 66, '达拉特旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (808, 66, '准格尔旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (809, 66, '鄂托克前旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (810, 66, '鄂托克旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (811, 66, '杭锦旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (812, 66, '乌审旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (813, 66, '伊金霍洛旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (814, 66, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (815, 67, '海拉尔区', 3, 0);
INSERT INTO `nideshop_region` VALUES (816, 67, '扎赉诺尔区', 3, 0);
INSERT INTO `nideshop_region` VALUES (817, 67, '阿荣旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (818, 67, '莫力达瓦达斡尔族自治旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (819, 67, '鄂伦春自治旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (820, 67, '鄂温克族自治旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (821, 67, '陈巴尔虎旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (822, 67, '新巴尔虎左旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (823, 67, '新巴尔虎右旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (824, 67, '满洲里市', 3, 0);
INSERT INTO `nideshop_region` VALUES (825, 67, '牙克石市', 3, 0);
INSERT INTO `nideshop_region` VALUES (826, 67, '扎兰屯市', 3, 0);
INSERT INTO `nideshop_region` VALUES (827, 67, '额尔古纳市', 3, 0);
INSERT INTO `nideshop_region` VALUES (828, 67, '根河市', 3, 0);
INSERT INTO `nideshop_region` VALUES (829, 67, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (830, 68, '临河区', 3, 0);
INSERT INTO `nideshop_region` VALUES (831, 68, '五原县', 3, 0);
INSERT INTO `nideshop_region` VALUES (832, 68, '磴口县', 3, 0);
INSERT INTO `nideshop_region` VALUES (833, 68, '乌拉特前旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (834, 68, '乌拉特中旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (835, 68, '乌拉特后旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (836, 68, '杭锦后旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (837, 68, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (838, 69, '集宁区', 3, 0);
INSERT INTO `nideshop_region` VALUES (839, 69, '卓资县', 3, 0);
INSERT INTO `nideshop_region` VALUES (840, 69, '化德县', 3, 0);
INSERT INTO `nideshop_region` VALUES (841, 69, '商都县', 3, 0);
INSERT INTO `nideshop_region` VALUES (842, 69, '兴和县', 3, 0);
INSERT INTO `nideshop_region` VALUES (843, 69, '凉城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (844, 69, '察哈尔右翼前旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (845, 69, '察哈尔右翼中旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (846, 69, '察哈尔右翼后旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (847, 69, '四子王旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (848, 69, '丰镇市', 3, 0);
INSERT INTO `nideshop_region` VALUES (849, 69, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (850, 70, '乌兰浩特市', 3, 0);
INSERT INTO `nideshop_region` VALUES (851, 70, '阿尔山市', 3, 0);
INSERT INTO `nideshop_region` VALUES (852, 70, '科尔沁右翼前旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (853, 70, '科尔沁右翼中旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (854, 70, '扎赉特旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (855, 70, '突泉县', 3, 0);
INSERT INTO `nideshop_region` VALUES (856, 70, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (857, 71, '二连浩特市', 3, 0);
INSERT INTO `nideshop_region` VALUES (858, 71, '锡林浩特市', 3, 0);
INSERT INTO `nideshop_region` VALUES (859, 71, '阿巴嘎旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (860, 71, '苏尼特左旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (861, 71, '苏尼特右旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (862, 71, '东乌珠穆沁旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (863, 71, '西乌珠穆沁旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (864, 71, '太仆寺旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (865, 71, '镶黄旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (866, 71, '正镶白旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (867, 71, '正蓝旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (868, 71, '多伦县', 3, 0);
INSERT INTO `nideshop_region` VALUES (869, 71, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (870, 72, '阿拉善左旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (871, 72, '阿拉善右旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (872, 72, '额济纳旗', 3, 0);
INSERT INTO `nideshop_region` VALUES (873, 72, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (874, 73, '和平区', 3, 0);
INSERT INTO `nideshop_region` VALUES (875, 73, '沈河区', 3, 0);
INSERT INTO `nideshop_region` VALUES (876, 73, '大东区', 3, 0);
INSERT INTO `nideshop_region` VALUES (877, 73, '皇姑区', 3, 0);
INSERT INTO `nideshop_region` VALUES (878, 73, '铁西区', 3, 0);
INSERT INTO `nideshop_region` VALUES (879, 73, '苏家屯区', 3, 0);
INSERT INTO `nideshop_region` VALUES (880, 73, '浑南区', 3, 0);
INSERT INTO `nideshop_region` VALUES (881, 73, '新城子区', 3, 0);
INSERT INTO `nideshop_region` VALUES (882, 73, '于洪区', 3, 0);
INSERT INTO `nideshop_region` VALUES (883, 73, '辽中县', 3, 0);
INSERT INTO `nideshop_region` VALUES (884, 73, '康平县', 3, 0);
INSERT INTO `nideshop_region` VALUES (885, 73, '法库县', 3, 0);
INSERT INTO `nideshop_region` VALUES (886, 73, '新民市', 3, 0);
INSERT INTO `nideshop_region` VALUES (887, 73, '浑南新区', 3, 0);
INSERT INTO `nideshop_region` VALUES (888, 73, '张士开发区', 3, 0);
INSERT INTO `nideshop_region` VALUES (889, 73, '沈北新区', 3, 0);
INSERT INTO `nideshop_region` VALUES (890, 73, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (891, 74, '中山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (892, 74, '西岗区', 3, 0);
INSERT INTO `nideshop_region` VALUES (893, 74, '沙河口区', 3, 0);
INSERT INTO `nideshop_region` VALUES (894, 74, '甘井子区', 3, 0);
INSERT INTO `nideshop_region` VALUES (895, 74, '旅顺口区', 3, 0);
INSERT INTO `nideshop_region` VALUES (896, 74, '金州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (897, 74, '长海县', 3, 0);
INSERT INTO `nideshop_region` VALUES (898, 74, '开发区', 3, 0);
INSERT INTO `nideshop_region` VALUES (899, 74, '瓦房店市', 3, 0);
INSERT INTO `nideshop_region` VALUES (900, 74, '普兰店市', 3, 0);
INSERT INTO `nideshop_region` VALUES (901, 74, '庄河市', 3, 0);
INSERT INTO `nideshop_region` VALUES (902, 74, '岭前区', 3, 0);
INSERT INTO `nideshop_region` VALUES (903, 74, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (904, 75, '铁东区', 3, 0);
INSERT INTO `nideshop_region` VALUES (905, 75, '铁西区', 3, 0);
INSERT INTO `nideshop_region` VALUES (906, 75, '立山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (907, 75, '千山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (908, 75, '台安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (909, 75, '岫岩满族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (910, 75, '高新区', 3, 0);
INSERT INTO `nideshop_region` VALUES (911, 75, '海城市', 3, 0);
INSERT INTO `nideshop_region` VALUES (912, 75, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (913, 76, '新抚区', 3, 0);
INSERT INTO `nideshop_region` VALUES (914, 76, '东洲区', 3, 0);
INSERT INTO `nideshop_region` VALUES (915, 76, '望花区', 3, 0);
INSERT INTO `nideshop_region` VALUES (916, 76, '顺城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (917, 76, '抚顺县', 3, 0);
INSERT INTO `nideshop_region` VALUES (918, 76, '新宾满族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (919, 76, '清原满族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (920, 76, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (921, 77, '平山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (922, 77, '溪湖区', 3, 0);
INSERT INTO `nideshop_region` VALUES (923, 77, '明山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (924, 77, '南芬区', 3, 0);
INSERT INTO `nideshop_region` VALUES (925, 77, '本溪满族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (926, 77, '桓仁满族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (927, 77, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (928, 78, '元宝区', 3, 0);
INSERT INTO `nideshop_region` VALUES (929, 78, '振兴区', 3, 0);
INSERT INTO `nideshop_region` VALUES (930, 78, '振安区', 3, 0);
INSERT INTO `nideshop_region` VALUES (931, 78, '宽甸满族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (932, 78, '东港市', 3, 0);
INSERT INTO `nideshop_region` VALUES (933, 78, '凤城市', 3, 0);
INSERT INTO `nideshop_region` VALUES (934, 78, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (935, 79, '古塔区', 3, 0);
INSERT INTO `nideshop_region` VALUES (936, 79, '凌河区', 3, 0);
INSERT INTO `nideshop_region` VALUES (937, 79, '太和区', 3, 0);
INSERT INTO `nideshop_region` VALUES (938, 79, '黑山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (939, 79, '义县', 3, 0);
INSERT INTO `nideshop_region` VALUES (940, 79, '凌海市', 3, 0);
INSERT INTO `nideshop_region` VALUES (941, 79, '北镇市', 3, 0);
INSERT INTO `nideshop_region` VALUES (942, 79, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (943, 80, '站前区', 3, 0);
INSERT INTO `nideshop_region` VALUES (944, 80, '西市区', 3, 0);
INSERT INTO `nideshop_region` VALUES (945, 80, '鲅鱼圈区', 3, 0);
INSERT INTO `nideshop_region` VALUES (946, 80, '老边区', 3, 0);
INSERT INTO `nideshop_region` VALUES (947, 80, '盖州市', 3, 0);
INSERT INTO `nideshop_region` VALUES (948, 80, '大石桥市', 3, 0);
INSERT INTO `nideshop_region` VALUES (949, 80, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (950, 81, '海州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (951, 81, '新邱区', 3, 0);
INSERT INTO `nideshop_region` VALUES (952, 81, '太平区', 3, 0);
INSERT INTO `nideshop_region` VALUES (953, 81, '清河门区', 3, 0);
INSERT INTO `nideshop_region` VALUES (954, 81, '细河区', 3, 0);
INSERT INTO `nideshop_region` VALUES (955, 81, '阜新蒙古族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (956, 81, '彰武县', 3, 0);
INSERT INTO `nideshop_region` VALUES (957, 81, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (958, 82, '白塔区', 3, 0);
INSERT INTO `nideshop_region` VALUES (959, 82, '文圣区', 3, 0);
INSERT INTO `nideshop_region` VALUES (960, 82, '宏伟区', 3, 0);
INSERT INTO `nideshop_region` VALUES (961, 82, '弓长岭区', 3, 0);
INSERT INTO `nideshop_region` VALUES (962, 82, '太子河区', 3, 0);
INSERT INTO `nideshop_region` VALUES (963, 82, '辽阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (964, 82, '灯塔市', 3, 0);
INSERT INTO `nideshop_region` VALUES (965, 82, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (966, 83, '双台子区', 3, 0);
INSERT INTO `nideshop_region` VALUES (967, 83, '兴隆台区', 3, 0);
INSERT INTO `nideshop_region` VALUES (968, 83, '大洼县', 3, 0);
INSERT INTO `nideshop_region` VALUES (969, 83, '盘山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (970, 83, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (971, 84, '银州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (972, 84, '清河区', 3, 0);
INSERT INTO `nideshop_region` VALUES (973, 84, '铁岭县', 3, 0);
INSERT INTO `nideshop_region` VALUES (974, 84, '西丰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (975, 84, '昌图县', 3, 0);
INSERT INTO `nideshop_region` VALUES (976, 84, '调兵山市', 3, 0);
INSERT INTO `nideshop_region` VALUES (977, 84, '开原市', 3, 0);
INSERT INTO `nideshop_region` VALUES (978, 84, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (979, 85, '双塔区', 3, 0);
INSERT INTO `nideshop_region` VALUES (980, 85, '龙城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (981, 85, '朝阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (982, 85, '建平县', 3, 0);
INSERT INTO `nideshop_region` VALUES (983, 85, '喀喇沁左翼蒙古族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (984, 85, '北票市', 3, 0);
INSERT INTO `nideshop_region` VALUES (985, 85, '凌源市', 3, 0);
INSERT INTO `nideshop_region` VALUES (986, 85, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (987, 86, '连山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (988, 86, '龙港区', 3, 0);
INSERT INTO `nideshop_region` VALUES (989, 86, '南票区', 3, 0);
INSERT INTO `nideshop_region` VALUES (990, 86, '绥中县', 3, 0);
INSERT INTO `nideshop_region` VALUES (991, 86, '建昌县', 3, 0);
INSERT INTO `nideshop_region` VALUES (992, 86, '兴城市', 3, 0);
INSERT INTO `nideshop_region` VALUES (993, 86, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (994, 87, '南关区', 3, 0);
INSERT INTO `nideshop_region` VALUES (995, 87, '宽城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (996, 87, '朝阳区', 3, 0);
INSERT INTO `nideshop_region` VALUES (997, 87, '二道区', 3, 0);
INSERT INTO `nideshop_region` VALUES (998, 87, '绿园区', 3, 0);
INSERT INTO `nideshop_region` VALUES (999, 87, '双阳区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1000, 87, '农安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1001, 87, '九台区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1002, 87, '榆树市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1003, 87, '德惠市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1004, 87, '高新技术产业开发区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1005, 87, '汽车产业开发区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1006, 87, '经济技术开发区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1007, 87, '净月旅游开发区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1008, 87, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1009, 88, '昌邑区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1010, 88, '龙潭区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1011, 88, '船营区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1012, 88, '丰满区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1013, 88, '永吉县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1014, 88, '蛟河市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1015, 88, '桦甸市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1016, 88, '舒兰市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1017, 88, '磐石市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1018, 88, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1019, 89, '铁西区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1020, 89, '铁东区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1021, 89, '梨树县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1022, 89, '伊通满族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1023, 89, '公主岭市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1024, 89, '双辽市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1025, 89, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1026, 90, '龙山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1027, 90, '西安区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1028, 90, '东丰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1029, 90, '东辽县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1030, 90, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1031, 91, '东昌区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1032, 91, '二道江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1033, 91, '通化县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1034, 91, '辉南县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1035, 91, '柳河县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1036, 91, '梅河口市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1037, 91, '集安市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1038, 91, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1039, 92, '浑江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1040, 92, '抚松县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1041, 92, '靖宇县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1042, 92, '长白朝鲜族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1043, 92, '江源区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1044, 92, '临江市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1045, 92, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1046, 93, '宁江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1047, 93, '前郭尔罗斯蒙古族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1048, 93, '长岭县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1049, 93, '乾安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1050, 93, '扶余市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1051, 93, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1052, 94, '洮北区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1053, 94, '镇赉县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1054, 94, '通榆县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1055, 94, '洮南市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1056, 94, '大安市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1057, 94, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1058, 95, '延吉市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1059, 95, '图们市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1060, 95, '敦化市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1061, 95, '珲春市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1062, 95, '龙井市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1063, 95, '和龙市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1064, 95, '汪清县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1065, 95, '安图县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1066, 95, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1067, 96, '道里区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1068, 96, '南岗区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1069, 96, '道外区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1070, 96, '香坊区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1071, 96, '动力区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1072, 96, '平房区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1073, 96, '松北区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1074, 96, '呼兰区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1075, 96, '依兰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1076, 96, '方正县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1077, 96, '宾县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1078, 96, '巴彦县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1079, 96, '木兰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1080, 96, '通河县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1081, 96, '延寿县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1082, 96, '阿城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1083, 96, '双城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1084, 96, '尚志市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1085, 96, '五常市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1086, 96, '阿城市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1087, 96, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1088, 97, '龙沙区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1089, 97, '建华区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1090, 97, '铁锋区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1091, 97, '昂昂溪区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1092, 97, '富拉尔基区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1093, 97, '碾子山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1094, 97, '梅里斯达斡尔族区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1095, 97, '龙江县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1096, 97, '依安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1097, 97, '泰来县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1098, 97, '甘南县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1099, 97, '富裕县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1100, 97, '克山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1101, 97, '克东县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1102, 97, '拜泉县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1103, 97, '讷河市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1104, 97, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1105, 98, '鸡冠区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1106, 98, '恒山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1107, 98, '滴道区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1108, 98, '梨树区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1109, 98, '城子河区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1110, 98, '麻山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1111, 98, '鸡东县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1112, 98, '虎林市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1113, 98, '密山市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1114, 98, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1115, 99, '向阳区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1116, 99, '工农区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1117, 99, '南山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1118, 99, '兴安区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1119, 99, '东山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1120, 99, '兴山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1121, 99, '萝北县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1122, 99, '绥滨县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1123, 99, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1124, 100, '尖山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1125, 100, '岭东区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1126, 100, '四方台区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1127, 100, '宝山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1128, 100, '集贤县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1129, 100, '友谊县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1130, 100, '宝清县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1131, 100, '饶河县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1132, 100, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1133, 101, '萨尔图区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1134, 101, '龙凤区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1135, 101, '让胡路区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1136, 101, '红岗区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1137, 101, '大同区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1138, 101, '肇州县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1139, 101, '肇源县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1140, 101, '林甸县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1141, 101, '杜尔伯特蒙古族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1142, 101, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1143, 102, '伊春区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1144, 102, '南岔区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1145, 102, '友好区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1146, 102, '西林区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1147, 102, '翠峦区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1148, 102, '新青区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1149, 102, '美溪区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1150, 102, '金山屯区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1151, 102, '五营区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1152, 102, '乌马河区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1153, 102, '汤旺河区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1154, 102, '带岭区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1155, 102, '乌伊岭区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1156, 102, '红星区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1157, 102, '上甘岭区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1158, 102, '嘉荫县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1159, 102, '铁力市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1160, 102, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1161, 103, '永红区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1162, 103, '向阳区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1163, 103, '前进区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1164, 103, '东风区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1165, 103, '郊区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1166, 103, '桦南县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1167, 103, '桦川县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1168, 103, '汤原县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1169, 103, '抚远县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1170, 103, '同江市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1171, 103, '富锦市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1172, 103, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1173, 104, '新兴区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1174, 104, '桃山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1175, 104, '茄子河区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1176, 104, '勃利县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1177, 104, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1178, 105, '东安区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1179, 105, '阳明区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1180, 105, '爱民区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1181, 105, '西安区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1182, 105, '东宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1183, 105, '林口县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1184, 105, '绥芬河市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1185, 105, '海林市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1186, 105, '宁安市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1187, 105, '穆棱市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1188, 105, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1189, 106, '爱辉区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1190, 106, '嫩江县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1191, 106, '逊克县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1192, 106, '孙吴县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1193, 106, '北安市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1194, 106, '五大连池市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1195, 106, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1196, 107, '北林区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1197, 107, '望奎县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1198, 107, '兰西县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1199, 107, '青冈县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1200, 107, '庆安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1201, 107, '明水县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1202, 107, '绥棱县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1203, 107, '安达市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1204, 107, '肇东市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1205, 107, '海伦市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1206, 107, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1207, 108, '松岭区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1208, 108, '新林区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1209, 108, '呼中区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1210, 108, '呼玛县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1211, 108, '塔河县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1212, 108, '漠河县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1213, 108, '加格达奇区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1214, 108, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1215, 109, '黄浦区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1216, 109, '卢湾区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1217, 109, '徐汇区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1218, 109, '长宁区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1219, 109, '静安区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1220, 109, '普陀区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1221, 109, '闸北区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1222, 109, '虹口区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1223, 109, '杨浦区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1224, 109, '闵行区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1225, 109, '宝山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1226, 109, '嘉定区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1227, 109, '浦东新区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1228, 109, '金山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1229, 109, '松江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1230, 109, '青浦区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1231, 109, '南汇区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1232, 109, '奉贤区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1233, 109, '川沙区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1234, 109, '崇明县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1235, 109, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1236, 110, '玄武区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1237, 110, '白下区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1238, 110, '秦淮区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1239, 110, '建邺区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1240, 110, '鼓楼区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1241, 110, '下关区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1242, 110, '浦口区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1243, 110, '栖霞区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1244, 110, '雨花台区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1245, 110, '江宁区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1246, 110, '六合区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1247, 110, '溧水区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1248, 110, '高淳区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1249, 110, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1250, 111, '崇安区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1251, 111, '南长区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1252, 111, '北塘区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1253, 111, '锡山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1254, 111, '惠山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1255, 111, '滨湖区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1256, 111, '江阴市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1257, 111, '宜兴市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1258, 111, '新区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1259, 111, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1260, 112, '鼓楼区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1261, 112, '云龙区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1262, 112, '九里区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1263, 112, '贾汪区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1264, 112, '泉山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1265, 112, '丰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1266, 112, '沛县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1267, 112, '铜山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1268, 112, '睢宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1269, 112, '新沂市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1270, 112, '邳州市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1271, 112, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1272, 113, '天宁区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1273, 113, '钟楼区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1274, 113, '戚墅堰区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1275, 113, '新北区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1276, 113, '武进区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1277, 113, '溧阳市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1278, 113, '金坛市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1279, 113, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1280, 114, '沧浪区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1281, 114, '平江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1282, 114, '金阊区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1283, 114, '虎丘区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1284, 114, '吴中区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1285, 114, '相城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1286, 114, '姑苏区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1287, 114, '常熟市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1288, 114, '张家港市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1289, 114, '昆山市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1290, 114, '吴江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1291, 114, '太仓市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1292, 114, '新区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1293, 114, '园区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1294, 114, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1295, 115, '崇川区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1296, 115, '港闸区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1297, 115, '通州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1298, 115, '海安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1299, 115, '如东县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1300, 115, '启东市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1301, 115, '如皋市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1302, 115, '通州市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1303, 115, '海门市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1304, 115, '开发区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1305, 115, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1306, 116, '连云区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1307, 116, '新浦区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1308, 116, '海州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1309, 116, '赣榆区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1310, 116, '东海县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1311, 116, '灌云县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1312, 116, '灌南县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1313, 116, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1314, 117, '清河区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1315, 117, '淮安区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1316, 117, '淮阴区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1317, 117, '清浦区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1318, 117, '涟水县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1319, 117, '洪泽县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1320, 117, '盱眙县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1321, 117, '金湖县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1322, 117, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1323, 118, '亭湖区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1324, 118, '盐都区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1325, 118, '响水县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1326, 118, '滨海县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1327, 118, '阜宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1328, 118, '射阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1329, 118, '建湖县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1330, 118, '东台市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1331, 118, '大丰市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1332, 118, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1333, 119, '广陵区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1334, 119, '邗江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1335, 119, '维扬区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1336, 119, '宝应县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1337, 119, '仪征市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1338, 119, '高邮市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1339, 119, '江都区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1340, 119, '经济开发区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1341, 119, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1342, 120, '京口区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1343, 120, '润州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1344, 120, '丹徒区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1345, 120, '丹阳市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1346, 120, '扬中市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1347, 120, '句容市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1348, 120, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1349, 121, '海陵区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1350, 121, '高港区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1351, 121, '兴化市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1352, 121, '靖江市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1353, 121, '泰兴市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1354, 121, '姜堰区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1355, 121, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1356, 122, '宿城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1357, 122, '宿豫区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1358, 122, '沭阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1359, 122, '泗阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1360, 122, '泗洪县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1361, 122, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1362, 123, '上城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1363, 123, '下城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1364, 123, '江干区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1365, 123, '拱墅区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1366, 123, '西湖区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1367, 123, '滨江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1368, 123, '萧山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1369, 123, '余杭区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1370, 123, '桐庐县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1371, 123, '淳安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1372, 123, '建德市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1373, 123, '富阳区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1374, 123, '临安市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1375, 123, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1376, 124, '海曙区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1377, 124, '江东区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1378, 124, '江北区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1379, 124, '北仑区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1380, 124, '镇海区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1381, 124, '鄞州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1382, 124, '象山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1383, 124, '宁海县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1384, 124, '余姚市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1385, 124, '慈溪市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1386, 124, '奉化市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1387, 124, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1388, 125, '鹿城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1389, 125, '龙湾区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1390, 125, '瓯海区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1391, 125, '洞头县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1392, 125, '永嘉县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1393, 125, '平阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1394, 125, '苍南县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1395, 125, '文成县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1396, 125, '泰顺县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1397, 125, '瑞安市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1398, 125, '乐清市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1399, 125, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1400, 126, '南湖区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1401, 126, '秀洲区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1402, 126, '嘉善县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1403, 126, '海盐县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1404, 126, '海宁市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1405, 126, '平湖市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1406, 126, '桐乡市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1407, 126, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1408, 127, '吴兴区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1409, 127, '南浔区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1410, 127, '德清县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1411, 127, '长兴县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1412, 127, '安吉县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1413, 127, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1414, 128, '越城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1415, 128, '柯桥区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1416, 128, '新昌县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1417, 128, '诸暨市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1418, 128, '上虞区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1419, 128, '嵊州市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1420, 128, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1421, 129, '婺城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1422, 129, '金东区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1423, 129, '武义县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1424, 129, '浦江县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1425, 129, '磐安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1426, 129, '兰溪市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1427, 129, '义乌市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1428, 129, '东阳市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1429, 129, '永康市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1430, 129, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1431, 130, '柯城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1432, 130, '衢江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1433, 130, '常山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1434, 130, '开化县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1435, 130, '龙游县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1436, 130, '江山市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1437, 130, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1438, 131, '定海区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1439, 131, '普陀区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1440, 131, '岱山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1441, 131, '嵊泗县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1442, 131, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1443, 132, '椒江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1444, 132, '黄岩区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1445, 132, '路桥区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1446, 132, '玉环县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1447, 132, '三门县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1448, 132, '天台县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1449, 132, '仙居县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1450, 132, '温岭市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1451, 132, '临海市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1452, 132, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1453, 133, '莲都区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1454, 133, '青田县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1455, 133, '缙云县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1456, 133, '遂昌县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1457, 133, '松阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1458, 133, '云和县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1459, 133, '庆元县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1460, 133, '景宁畲族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1461, 133, '龙泉市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1462, 133, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1463, 134, '瑶海区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1464, 134, '庐阳区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1465, 134, '蜀山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1466, 134, '包河区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1467, 134, '长丰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1468, 134, '肥东县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1469, 134, '肥西县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1470, 134, '高新区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1471, 134, '中区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1472, 134, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1473, 135, '镜湖区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1474, 135, '弋江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1475, 135, '鸠江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1476, 135, '三山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1477, 135, '芜湖县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1478, 135, '繁昌县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1479, 135, '南陵县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1480, 135, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1481, 136, '龙子湖区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1482, 136, '蚌山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1483, 136, '禹会区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1484, 136, '淮上区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1485, 136, '怀远县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1486, 136, '五河县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1487, 136, '固镇县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1488, 136, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1489, 137, '大通区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1490, 137, '田家庵区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1491, 137, '谢家集区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1492, 137, '八公山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1493, 137, '潘集区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1494, 137, '凤台县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1495, 137, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1496, 138, '金家庄区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1497, 138, '花山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1498, 138, '雨山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1499, 138, '博望区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1500, 138, '当涂县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1501, 138, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1502, 139, '杜集区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1503, 139, '相山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1504, 139, '烈山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1505, 139, '濉溪县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1506, 139, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1507, 140, '铜官山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1508, 140, '狮子山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1509, 140, '郊区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1510, 140, '铜陵县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1511, 140, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1512, 141, '迎江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1513, 141, '大观区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1514, 141, '宜秀区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1515, 141, '怀宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1516, 141, '枞阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1517, 141, '潜山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1518, 141, '太湖县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1519, 141, '宿松县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1520, 141, '望江县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1521, 141, '岳西县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1522, 141, '桐城市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1523, 141, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1524, 142, '屯溪区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1525, 142, '黄山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1526, 142, '徽州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1527, 142, '歙县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1528, 142, '休宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1529, 142, '黟县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1530, 142, '祁门县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1531, 142, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1532, 143, '琅琊区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1533, 143, '南谯区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1534, 143, '来安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1535, 143, '全椒县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1536, 143, '定远县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1537, 143, '凤阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1538, 143, '天长市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1539, 143, '明光市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1540, 143, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1541, 144, '颍州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1542, 144, '颍东区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1543, 144, '颍泉区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1544, 144, '临泉县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1545, 144, '太和县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1546, 144, '阜南县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1547, 144, '颍上县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1548, 144, '界首市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1549, 144, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1550, 145, '埇桥区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1551, 145, '砀山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1552, 145, '萧县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1553, 145, '灵璧县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1554, 145, '泗县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1555, 145, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1556, 134, '巢湖市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1557, 134, '居巢区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1558, 134, '庐江县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1559, 135, '无为县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1560, 138, '含山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1561, 138, '和县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1562, 146, '金安区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1563, 146, '裕安区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1564, 146, '寿县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1565, 146, '霍邱县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1566, 146, '舒城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1567, 146, '金寨县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1568, 146, '霍山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1569, 146, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1570, 147, '谯城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1571, 147, '涡阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1572, 147, '蒙城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1573, 147, '利辛县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1574, 147, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1575, 148, '贵池区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1576, 148, '东至县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1577, 148, '石台县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1578, 148, '青阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1579, 148, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1580, 149, '宣州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1581, 149, '郎溪县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1582, 149, '广德县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1583, 149, '泾县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1584, 149, '绩溪县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1585, 149, '旌德县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1586, 149, '宁国市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1587, 149, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1588, 150, '鼓楼区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1589, 150, '台江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1590, 150, '仓山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1591, 150, '马尾区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1592, 150, '晋安区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1593, 150, '闽侯县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1594, 150, '连江县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1595, 150, '罗源县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1596, 150, '闽清县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1597, 150, '永泰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1598, 150, '平潭县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1599, 150, '福清市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1600, 150, '长乐市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1601, 150, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1602, 151, '思明区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1603, 151, '海沧区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1604, 151, '湖里区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1605, 151, '集美区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1606, 151, '同安区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1607, 151, '翔安区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1608, 151, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1609, 152, '城厢区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1610, 152, '涵江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1611, 152, '荔城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1612, 152, '秀屿区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1613, 152, '仙游县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1614, 152, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1615, 153, '梅列区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1616, 153, '三元区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1617, 153, '明溪县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1618, 153, '清流县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1619, 153, '宁化县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1620, 153, '大田县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1621, 153, '尤溪县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1622, 153, '沙县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1623, 153, '将乐县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1624, 153, '泰宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1625, 153, '建宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1626, 153, '永安市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1627, 153, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1628, 154, '鲤城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1629, 154, '丰泽区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1630, 154, '洛江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1631, 154, '泉港区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1632, 154, '惠安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1633, 154, '安溪县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1634, 154, '永春县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1635, 154, '德化县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1636, 154, '金门县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1637, 154, '石狮市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1638, 154, '晋江市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1639, 154, '南安市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1640, 154, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1641, 155, '芗城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1642, 155, '龙文区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1643, 155, '云霄县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1644, 155, '漳浦县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1645, 155, '诏安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1646, 155, '长泰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1647, 155, '东山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1648, 155, '南靖县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1649, 155, '平和县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1650, 155, '华安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1651, 155, '龙海市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1652, 155, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1653, 156, '延平区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1654, 156, '顺昌县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1655, 156, '浦城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1656, 156, '光泽县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1657, 156, '松溪县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1658, 156, '政和县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1659, 156, '邵武市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1660, 156, '武夷山市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1661, 156, '建瓯市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1662, 156, '建阳区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1663, 156, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1664, 157, '新罗区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1665, 157, '长汀县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1666, 157, '永定区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1667, 157, '上杭县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1668, 157, '武平县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1669, 157, '连城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1670, 157, '漳平市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1671, 157, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1672, 158, '蕉城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1673, 158, '霞浦县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1674, 158, '古田县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1675, 158, '屏南县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1676, 158, '寿宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1677, 158, '周宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1678, 158, '柘荣县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1679, 158, '福安市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1680, 158, '福鼎市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1681, 158, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1682, 159, '东湖区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1683, 159, '西湖区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1684, 159, '青云谱区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1685, 159, '湾里区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1686, 159, '青山湖区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1687, 159, '南昌县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1688, 159, '新建县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1689, 159, '安义县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1690, 159, '进贤县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1691, 159, '红谷滩新区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1692, 159, '经济技术开发区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1693, 159, '昌北区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1694, 159, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1695, 160, '昌江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1696, 160, '珠山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1697, 160, '浮梁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1698, 160, '乐平市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1699, 160, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1700, 161, '安源区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1701, 161, '湘东区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1702, 161, '莲花县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1703, 161, '上栗县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1704, 161, '芦溪县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1705, 161, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1706, 162, '庐山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1707, 162, '浔阳区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1708, 162, '九江县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1709, 162, '武宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1710, 162, '修水县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1711, 162, '永修县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1712, 162, '德安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1713, 162, '星子县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1714, 162, '都昌县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1715, 162, '湖口县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1716, 162, '彭泽县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1717, 162, '瑞昌市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1718, 162, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1719, 162, '共青城市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1720, 163, '渝水区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1721, 163, '分宜县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1722, 163, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1723, 164, '月湖区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1724, 164, '余江县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1725, 164, '贵溪市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1726, 164, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1727, 165, '章贡区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1728, 165, '赣县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1729, 165, '信丰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1730, 165, '大余县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1731, 165, '上犹县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1732, 165, '崇义县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1733, 165, '安远县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1734, 165, '龙南县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1735, 165, '定南县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1736, 165, '全南县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1737, 165, '宁都县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1738, 165, '于都县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1739, 165, '兴国县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1740, 165, '会昌县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1741, 165, '寻乌县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1742, 165, '石城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1743, 165, '黄金区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1744, 165, '瑞金市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1745, 165, '南康区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1746, 165, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1747, 166, '吉州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1748, 166, '青原区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1749, 166, '吉安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1750, 166, '吉水县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1751, 166, '峡江县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1752, 166, '新干县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1753, 166, '永丰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1754, 166, '泰和县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1755, 166, '遂川县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1756, 166, '万安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1757, 166, '安福县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1758, 166, '永新县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1759, 166, '井冈山市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1760, 166, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1761, 167, '袁州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1762, 167, '奉新县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1763, 167, '万载县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1764, 167, '上高县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1765, 167, '宜丰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1766, 167, '靖安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1767, 167, '铜鼓县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1768, 167, '丰城市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1769, 167, '樟树市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1770, 167, '高安市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1771, 167, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1772, 168, '临川区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1773, 168, '南城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1774, 168, '黎川县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1775, 168, '南丰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1776, 168, '崇仁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1777, 168, '乐安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1778, 168, '宜黄县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1779, 168, '金溪县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1780, 168, '资溪县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1781, 168, '东乡县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1782, 168, '广昌县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1783, 168, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1784, 169, '信州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1785, 169, '上饶县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1786, 169, '广丰区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1787, 169, '玉山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1788, 169, '铅山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1789, 169, '横峰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1790, 169, '弋阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1791, 169, '余干县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1792, 169, '鄱阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1793, 169, '万年县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1794, 169, '婺源县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1795, 169, '德兴市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1796, 169, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1797, 170, '历下区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1798, 170, '市中区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1799, 170, '槐荫区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1800, 170, '天桥区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1801, 170, '历城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1802, 170, '长清区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1803, 170, '平阴县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1804, 170, '济阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1805, 170, '商河县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1806, 170, '章丘市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1807, 170, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1808, 171, '市南区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1809, 171, '市北区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1810, 171, '四方区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1811, 171, '黄岛区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1812, 171, '崂山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1813, 171, '李沧区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1814, 171, '城阳区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1815, 171, '开发区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1816, 171, '胶州市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1817, 171, '即墨市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1818, 171, '平度市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1819, 171, '胶南市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1820, 171, '莱西市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1821, 171, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1822, 172, '淄川区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1823, 172, '张店区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1824, 172, '博山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1825, 172, '临淄区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1826, 172, '周村区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1827, 172, '桓台县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1828, 172, '高青县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1829, 172, '沂源县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1830, 172, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1831, 173, '市中区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1832, 173, '薛城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1833, 173, '峄城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1834, 173, '台儿庄区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1835, 173, '山亭区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1836, 173, '滕州市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1837, 173, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1838, 174, '东营区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1839, 174, '河口区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1840, 174, '垦利县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1841, 174, '利津县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1842, 174, '广饶县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1843, 174, '西城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1844, 174, '东城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1845, 174, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1846, 175, '芝罘区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1847, 175, '福山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1848, 175, '牟平区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1849, 175, '莱山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1850, 175, '长岛县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1851, 175, '龙口市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1852, 175, '莱阳市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1853, 175, '莱州市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1854, 175, '蓬莱市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1855, 175, '招远市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1856, 175, '栖霞市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1857, 175, '海阳市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1858, 175, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1859, 176, '潍城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1860, 176, '寒亭区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1861, 176, '坊子区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1862, 176, '奎文区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1863, 176, '临朐县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1864, 176, '昌乐县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1865, 176, '开发区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1866, 176, '青州市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1867, 176, '诸城市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1868, 176, '寿光市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1869, 176, '安丘市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1870, 176, '高密市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1871, 176, '昌邑市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1872, 176, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1873, 177, '市中区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1874, 177, '任城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1875, 177, '微山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1876, 177, '鱼台县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1877, 177, '金乡县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1878, 177, '嘉祥县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1879, 177, '汶上县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1880, 177, '泗水县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1881, 177, '梁山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1882, 177, '曲阜市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1883, 177, '兖州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1884, 177, '邹城市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1885, 177, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1886, 178, '泰山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1887, 178, '岱岳区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1888, 178, '宁阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1889, 178, '东平县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1890, 178, '新泰市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1891, 178, '肥城市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1892, 178, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1893, 179, '环翠区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1894, 179, '文登区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1895, 179, '荣成市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1896, 179, '乳山市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1897, 179, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1898, 180, '东港区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1899, 180, '岚山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1900, 180, '五莲县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1901, 180, '莒县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1902, 180, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1903, 181, '莱城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1904, 181, '钢城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1905, 181, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1906, 182, '兰山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1907, 182, '罗庄区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1908, 182, '河东区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1909, 182, '沂南县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1910, 182, '郯城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1911, 182, '沂水县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1912, 182, '兰陵县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1913, 182, '费县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1914, 182, '平邑县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1915, 182, '莒南县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1916, 182, '蒙阴县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1917, 182, '临沭县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1918, 182, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1919, 183, '德城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1920, 183, '陵城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1921, 183, '宁津县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1922, 183, '庆云县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1923, 183, '临邑县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1924, 183, '齐河县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1925, 183, '平原县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1926, 183, '夏津县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1927, 183, '武城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1928, 183, '开发区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1929, 183, '乐陵市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1930, 183, '禹城市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1931, 183, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1932, 184, '东昌府区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1933, 184, '阳谷县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1934, 184, '莘县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1935, 184, '茌平县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1936, 184, '东阿县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1937, 184, '冠县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1938, 184, '高唐县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1939, 184, '临清市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1940, 184, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1941, 185, '滨城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1942, 185, '惠民县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1943, 185, '阳信县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1944, 185, '无棣县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1945, 185, '沾化区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1946, 185, '博兴县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1947, 185, '邹平县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1948, 185, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1949, 186, '牡丹区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1950, 186, '曹县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1951, 186, '单县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1952, 186, '成武县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1953, 186, '巨野县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1954, 186, '郓城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1955, 186, '鄄城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1956, 186, '定陶县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1957, 186, '东明县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1958, 186, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1959, 187, '中原区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1960, 187, '二七区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1961, 187, '管城回族区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1962, 187, '金水区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1963, 187, '上街区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1964, 187, '惠济区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1965, 187, '中牟县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1966, 187, '巩义市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1967, 187, '荥阳市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1968, 187, '新密市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1969, 187, '新郑市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1970, 187, '登封市', 3, 0);
INSERT INTO `nideshop_region` VALUES (1971, 187, '郑东新区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1972, 187, '高新区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1973, 187, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1974, 188, '龙亭区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1975, 188, '顺河回族区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1976, 188, '鼓楼区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1977, 188, '禹王台区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1978, 188, '金明区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1979, 188, '杞县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1980, 188, '通许县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1981, 188, '尉氏县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1982, 188, '祥符区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1983, 188, '兰考县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1984, 188, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1985, 189, '老城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1986, 189, '西工区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1987, 189, '瀍河回族区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1988, 189, '涧西区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1989, 189, '吉利区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1990, 189, '洛龙区', 3, 0);
INSERT INTO `nideshop_region` VALUES (1991, 189, '孟津县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1992, 189, '新安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1993, 189, '栾川县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1994, 189, '嵩县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1995, 189, '汝阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1996, 189, '宜阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1997, 189, '洛宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1998, 189, '伊川县', 3, 0);
INSERT INTO `nideshop_region` VALUES (1999, 189, '偃师市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2000, 190, '新华区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2001, 190, '卫东区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2002, 190, '石龙区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2003, 190, '湛河区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2004, 190, '宝丰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2005, 190, '叶县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2006, 190, '鲁山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2007, 190, '郏县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2008, 190, '舞钢市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2009, 190, '汝州市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2010, 190, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2011, 191, '文峰区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2012, 191, '北关区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2013, 191, '殷都区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2014, 191, '龙安区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2015, 191, '安阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2016, 191, '汤阴县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2017, 191, '滑县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2018, 191, '内黄县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2019, 191, '林州市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2020, 191, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2021, 192, '鹤山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2022, 192, '山城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2023, 192, '淇滨区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2024, 192, '浚县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2025, 192, '淇县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2026, 192, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2027, 193, '红旗区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2028, 193, '卫滨区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2029, 193, '凤泉区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2030, 193, '牧野区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2031, 193, '新乡县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2032, 193, '获嘉县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2033, 193, '原阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2034, 193, '延津县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2035, 193, '封丘县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2036, 193, '长垣县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2037, 193, '卫辉市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2038, 193, '辉县市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2039, 193, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2040, 194, '解放区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2041, 194, '中站区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2042, 194, '马村区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2043, 194, '山阳区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2044, 194, '修武县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2045, 194, '博爱县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2046, 194, '武陟县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2047, 194, '温县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2048, 194, '沁阳市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2049, 194, '孟州市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2050, 194, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2051, 195, '华龙区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2052, 195, '清丰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2053, 195, '南乐县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2054, 195, '范县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2055, 195, '台前县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2056, 195, '濮阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2057, 195, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2058, 196, '魏都区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2059, 196, '许昌县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2060, 196, '鄢陵县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2061, 196, '襄城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2062, 196, '禹州市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2063, 196, '长葛市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2064, 196, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2065, 197, '源汇区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2066, 197, '郾城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2067, 197, '召陵区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2068, 197, '舞阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2069, 197, '临颍县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2070, 197, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2071, 198, '湖滨区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2072, 198, '渑池县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2073, 198, '陕州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2074, 198, '卢氏县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2075, 198, '义马市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2076, 198, '灵宝市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2077, 198, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2078, 199, '宛城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2079, 199, '卧龙区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2080, 199, '南召县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2081, 199, '方城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2082, 199, '西峡县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2083, 199, '镇平县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2084, 199, '内乡县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2085, 199, '淅川县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2086, 199, '社旗县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2087, 199, '唐河县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2088, 199, '新野县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2089, 199, '桐柏县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2090, 199, '邓州市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2091, 199, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2092, 200, '梁园区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2093, 200, '睢阳区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2094, 200, '民权县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2095, 200, '睢县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2096, 200, '宁陵县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2097, 200, '柘城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2098, 200, '虞城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2099, 200, '夏邑县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2100, 200, '永城市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2101, 200, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2102, 201, '浉河区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2103, 201, '平桥区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2104, 201, '罗山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2105, 201, '光山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2106, 201, '新县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2107, 201, '商城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2108, 201, '固始县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2109, 201, '潢川县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2110, 201, '淮滨县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2111, 201, '息县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2112, 201, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2113, 202, '川汇区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2114, 202, '扶沟县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2115, 202, '西华县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2116, 202, '商水县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2117, 202, '沈丘县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2118, 202, '郸城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2119, 202, '淮阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2120, 202, '太康县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2121, 202, '鹿邑县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2122, 202, '项城市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2123, 202, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2124, 203, '驿城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2125, 203, '西平县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2126, 203, '上蔡县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2127, 203, '平舆县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2128, 203, '正阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2129, 203, '确山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2130, 203, '泌阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2131, 203, '汝南县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2132, 203, '遂平县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2133, 203, '新蔡县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2134, 203, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2135, 204, '江岸区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2136, 204, '江汉区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2137, 204, '硚口区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2138, 204, '汉阳区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2139, 204, '武昌区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2140, 204, '青山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2141, 204, '洪山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2142, 204, '东西湖区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2143, 204, '汉南区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2144, 204, '蔡甸区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2145, 204, '江夏区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2146, 204, '黄陂区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2147, 204, '新洲区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2148, 204, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2149, 205, '黄石港区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2150, 205, '西塞山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2151, 205, '下陆区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2152, 205, '铁山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2153, 205, '阳新县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2154, 205, '大冶市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2155, 205, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2156, 206, '茅箭区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2157, 206, '张湾区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2158, 206, '郧阳区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2159, 206, '郧西县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2160, 206, '竹山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2161, 206, '竹溪县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2162, 206, '房县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2163, 206, '丹江口市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2164, 206, '城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2165, 206, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2166, 207, '西陵区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2167, 207, '伍家岗区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2168, 207, '点军区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2169, 207, '猇亭区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2170, 207, '夷陵区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2171, 207, '远安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2172, 207, '兴山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2173, 207, '秭归县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2174, 207, '长阳土家族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2175, 207, '五峰土家族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2176, 207, '葛洲坝区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2177, 207, '开发区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2178, 207, '宜都市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2179, 207, '当阳市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2180, 207, '枝江市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2181, 207, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2182, 208, '襄城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2183, 208, '樊城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2184, 208, '襄州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2185, 208, '南漳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2186, 208, '谷城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2187, 208, '保康县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2188, 208, '老河口市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2189, 208, '枣阳市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2190, 208, '宜城市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2191, 208, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2192, 209, '梁子湖区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2193, 209, '华容区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2194, 209, '鄂城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2195, 209, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2196, 210, '东宝区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2197, 210, '掇刀区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2198, 210, '京山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2199, 210, '沙洋县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2200, 210, '钟祥市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2201, 210, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2202, 211, '孝南区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2203, 211, '孝昌县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2204, 211, '大悟县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2205, 211, '云梦县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2206, 211, '应城市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2207, 211, '安陆市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2208, 211, '汉川市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2209, 211, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2210, 212, '沙市区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2211, 212, '荆州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2212, 212, '公安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2213, 212, '监利县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2214, 212, '江陵县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2215, 212, '石首市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2216, 212, '洪湖市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2217, 212, '松滋市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2218, 212, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2219, 213, '黄州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2220, 213, '团风县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2221, 213, '红安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2222, 213, '罗田县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2223, 213, '英山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2224, 213, '浠水县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2225, 213, '蕲春县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2226, 213, '黄梅县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2227, 213, '麻城市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2228, 213, '武穴市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2229, 213, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2230, 214, '咸安区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2231, 214, '嘉鱼县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2232, 214, '通城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2233, 214, '崇阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2234, 214, '通山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2235, 214, '赤壁市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2236, 214, '温泉城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2237, 214, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2238, 215, '曾都区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2239, 215, '随县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2240, 215, '广水市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2241, 215, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2242, 216, '恩施市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2243, 216, '利川市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2244, 216, '建始县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2245, 216, '巴东县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2246, 216, '宣恩县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2247, 216, '咸丰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2248, 216, '来凤县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2249, 216, '鹤峰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2250, 216, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2251, 217, '芙蓉区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2252, 217, '天心区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2253, 217, '岳麓区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2254, 217, '开福区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2255, 217, '雨花区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2256, 217, '长沙县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2257, 217, '望城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2258, 217, '宁乡县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2259, 217, '浏阳市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2260, 217, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2261, 218, '荷塘区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2262, 218, '芦淞区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2263, 218, '石峰区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2264, 218, '天元区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2265, 218, '株洲县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2266, 218, '攸县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2267, 218, '茶陵县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2268, 218, '炎陵县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2269, 218, '醴陵市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2270, 218, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2271, 219, '雨湖区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2272, 219, '岳塘区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2273, 219, '湘潭县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2274, 219, '湘乡市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2275, 219, '韶山市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2276, 219, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2277, 220, '珠晖区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2278, 220, '雁峰区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2279, 220, '石鼓区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2280, 220, '蒸湘区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2281, 220, '南岳区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2282, 220, '衡阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2283, 220, '衡南县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2284, 220, '衡山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2285, 220, '衡东县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2286, 220, '祁东县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2287, 220, '耒阳市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2288, 220, '常宁市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2289, 220, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2290, 221, '双清区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2291, 221, '大祥区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2292, 221, '北塔区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2293, 221, '邵东县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2294, 221, '新邵县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2295, 221, '邵阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2296, 221, '隆回县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2297, 221, '洞口县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2298, 221, '绥宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2299, 221, '新宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2300, 221, '城步苗族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2301, 221, '武冈市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2302, 221, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2303, 222, '岳阳楼区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2304, 222, '云溪区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2305, 222, '君山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2306, 222, '岳阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2307, 222, '华容县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2308, 222, '湘阴县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2309, 222, '平江县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2310, 222, '汨罗市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2311, 222, '临湘市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2312, 222, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2313, 223, '武陵区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2314, 223, '鼎城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2315, 223, '安乡县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2316, 223, '汉寿县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2317, 223, '澧县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2318, 223, '临澧县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2319, 223, '桃源县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2320, 223, '石门县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2321, 223, '津市市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2322, 223, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2323, 224, '永定区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2324, 224, '武陵源区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2325, 224, '慈利县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2326, 224, '桑植县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2327, 224, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2328, 225, '资阳区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2329, 225, '赫山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2330, 225, '南县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2331, 225, '桃江县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2332, 225, '安化县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2333, 225, '沅江市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2334, 225, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2335, 226, '北湖区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2336, 226, '苏仙区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2337, 226, '桂阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2338, 226, '宜章县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2339, 226, '永兴县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2340, 226, '嘉禾县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2341, 226, '临武县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2342, 226, '汝城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2343, 226, '桂东县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2344, 226, '安仁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2345, 226, '资兴市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2346, 226, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2347, 227, '零陵区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2348, 227, '冷水滩区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2349, 227, '祁阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2350, 227, '东安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2351, 227, '双牌县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2352, 227, '道县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2353, 227, '江永县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2354, 227, '宁远县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2355, 227, '蓝山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2356, 227, '新田县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2357, 227, '江华瑶族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2358, 227, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2359, 228, '鹤城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2360, 228, '中方县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2361, 228, '沅陵县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2362, 228, '辰溪县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2363, 228, '溆浦县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2364, 228, '会同县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2365, 228, '麻阳苗族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2366, 228, '新晃侗族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2367, 228, '芷江侗族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2368, 228, '靖州苗族侗族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2369, 228, '通道侗族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2370, 228, '洪江市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2371, 228, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2372, 229, '娄星区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2373, 229, '双峰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2374, 229, '新化县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2375, 229, '冷水江市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2376, 229, '涟源市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2377, 229, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2378, 230, '吉首市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2379, 230, '泸溪县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2380, 230, '凤凰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2381, 230, '花垣县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2382, 230, '保靖县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2383, 230, '古丈县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2384, 230, '永顺县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2385, 230, '龙山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2386, 230, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2387, 231, '荔湾区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2388, 231, '越秀区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2389, 231, '海珠区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2390, 231, '天河区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2391, 231, '白云区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2392, 231, '黄埔区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2393, 231, '番禺区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2394, 231, '花都区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2395, 231, '南沙区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2396, 231, '萝岗区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2397, 231, '增城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2398, 231, '从化区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2399, 231, '东山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2400, 231, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2401, 232, '武江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2402, 232, '浈江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2403, 232, '曲江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2404, 232, '始兴县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2405, 232, '仁化县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2406, 232, '翁源县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2407, 232, '乳源瑶族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2408, 232, '新丰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2409, 232, '乐昌市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2410, 232, '南雄市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2411, 232, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2412, 233, '罗湖区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2413, 233, '福田区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2414, 233, '南山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2415, 233, '宝安区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2416, 233, '龙岗区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2417, 233, '盐田区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2418, 233, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2419, 233, '光明新区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2420, 233, '坪山新区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2421, 233, '大鹏新区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2422, 233, '龙华新区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2423, 234, '香洲区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2424, 234, '斗门区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2425, 234, '金湾区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2426, 234, '金唐区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2427, 234, '南湾区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2428, 234, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2429, 235, '龙湖区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2430, 235, '金平区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2431, 235, '濠江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2432, 235, '潮阳区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2433, 235, '潮南区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2434, 235, '澄海区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2435, 235, '南澳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2436, 235, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2437, 236, '禅城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2438, 236, '南海区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2439, 236, '顺德区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2440, 236, '三水区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2441, 236, '高明区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2442, 236, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2443, 237, '蓬江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2444, 237, '江海区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2445, 237, '新会区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2446, 237, '台山市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2447, 237, '开平市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2448, 237, '鹤山市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2449, 237, '恩平市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2450, 237, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2451, 238, '赤坎区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2452, 238, '霞山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2453, 238, '坡头区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2454, 238, '麻章区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2455, 238, '遂溪县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2456, 238, '徐闻县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2457, 238, '廉江市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2458, 238, '雷州市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2459, 238, '吴川市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2460, 238, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2461, 239, '茂南区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2462, 239, '电白区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2463, 239, '电白县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2464, 239, '高州市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2465, 239, '化州市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2466, 239, '信宜市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2467, 239, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2468, 240, '端州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2469, 240, '鼎湖区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2470, 240, '广宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2471, 240, '怀集县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2472, 240, '封开县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2473, 240, '德庆县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2474, 240, '高要市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2475, 240, '四会市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2476, 240, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2477, 241, '惠城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2478, 241, '惠阳区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2479, 241, '博罗县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2480, 241, '惠东县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2481, 241, '龙门县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2482, 241, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2483, 242, '梅江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2484, 242, '梅县区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2485, 242, '大埔县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2486, 242, '丰顺县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2487, 242, '五华县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2488, 242, '平远县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2489, 242, '蕉岭县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2490, 242, '兴宁市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2491, 242, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2492, 243, '城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2493, 243, '海丰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2494, 243, '陆河县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2495, 243, '陆丰市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2496, 243, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2497, 244, '源城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2498, 244, '紫金县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2499, 244, '龙川县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2500, 244, '连平县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2501, 244, '和平县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2502, 244, '东源县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2503, 244, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2504, 245, '江城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2505, 245, '阳西县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2506, 245, '阳东区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2507, 245, '阳春市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2508, 245, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2509, 246, '清城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2510, 246, '佛冈县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2511, 246, '阳山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2512, 246, '连山壮族瑶族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2513, 246, '连南瑶族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2514, 246, '清新区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2515, 246, '英德市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2516, 246, '连州市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2517, 246, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2518, 250, '湘桥区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2519, 250, '潮安区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2520, 250, '饶平县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2521, 250, '枫溪区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2522, 250, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2523, 251, '榕城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2524, 251, '揭东区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2525, 251, '揭西县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2526, 251, '惠来县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2527, 251, '普宁市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2528, 251, '东山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2529, 251, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2530, 252, '云城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2531, 252, '新兴县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2532, 252, '郁南县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2533, 252, '云安区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2534, 252, '罗定市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2535, 252, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2536, 253, '兴宁区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2537, 253, '青秀区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2538, 253, '江南区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2539, 253, '西乡塘区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2540, 253, '良庆区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2541, 253, '邕宁区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2542, 253, '武鸣区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2543, 253, '隆安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2544, 253, '马山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2545, 253, '上林县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2546, 253, '宾阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2547, 253, '横县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2548, 253, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2549, 254, '城中区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2550, 254, '鱼峰区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2551, 254, '柳南区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2552, 254, '柳北区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2553, 254, '柳江县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2554, 254, '柳城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2555, 254, '鹿寨县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2556, 254, '融安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2557, 254, '融水苗族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2558, 254, '三江侗族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2559, 254, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2560, 255, '秀峰区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2561, 255, '叠彩区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2562, 255, '象山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2563, 255, '七星区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2564, 255, '雁山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2565, 255, '阳朔县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2566, 255, '临桂区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2567, 255, '灵川县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2568, 255, '全州县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2569, 255, '兴安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2570, 255, '永福县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2571, 255, '灌阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2572, 255, '龙胜各族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2573, 255, '资源县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2574, 255, '平乐县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2575, 255, '荔浦县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2576, 255, '恭城瑶族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2577, 255, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2578, 256, '万秀区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2579, 256, '蝶山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2580, 256, '长洲区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2581, 256, '龙圩区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2582, 256, '苍梧县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2583, 256, '藤县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2584, 256, '蒙山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2585, 256, '岑溪市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2586, 256, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2587, 257, '海城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2588, 257, '银海区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2589, 257, '铁山港区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2590, 257, '合浦县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2591, 257, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2592, 258, '港口区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2593, 258, '防城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2594, 258, '上思县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2595, 258, '东兴市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2596, 258, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2597, 259, '钦南区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2598, 259, '钦北区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2599, 259, '灵山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2600, 259, '浦北县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2601, 259, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2602, 260, '港北区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2603, 260, '港南区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2604, 260, '覃塘区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2605, 260, '平南县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2606, 260, '桂平市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2607, 260, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2608, 261, '玉州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2609, 261, '福绵区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2610, 261, '容县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2611, 261, '陆川县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2612, 261, '博白县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2613, 261, '兴业县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2614, 261, '北流市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2615, 261, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2616, 262, '右江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2617, 262, '田阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2618, 262, '田东县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2619, 262, '平果县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2620, 262, '德保县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2621, 262, '靖西县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2622, 262, '那坡县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2623, 262, '凌云县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2624, 262, '乐业县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2625, 262, '田林县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2626, 262, '西林县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2627, 262, '隆林各族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2628, 262, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2629, 263, '八步区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2630, 263, '平桂管理区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2631, 263, '昭平县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2632, 263, '钟山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2633, 263, '富川瑶族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2634, 263, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2635, 264, '金城江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2636, 264, '南丹县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2637, 264, '天峨县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2638, 264, '凤山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2639, 264, '东兰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2640, 264, '罗城仫佬族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2641, 264, '环江毛南族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2642, 264, '巴马瑶族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2643, 264, '都安瑶族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2644, 264, '大化瑶族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2645, 264, '宜州市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2646, 264, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2647, 265, '兴宾区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2648, 265, '忻城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2649, 265, '象州县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2650, 265, '武宣县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2651, 265, '金秀瑶族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2652, 265, '合山市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2653, 265, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2654, 266, '江州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2655, 266, '扶绥县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2656, 266, '宁明县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2657, 266, '龙州县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2658, 266, '大新县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2659, 266, '天等县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2660, 266, '凭祥市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2661, 266, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2662, 267, '秀英区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2663, 267, '龙华区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2664, 267, '琼山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2665, 267, '美兰区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2666, 267, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2667, 269, '西沙群岛', 3, 0);
INSERT INTO `nideshop_region` VALUES (2668, 269, '南沙群岛', 3, 0);
INSERT INTO `nideshop_region` VALUES (2669, 269, '中沙群岛的岛礁及其海域', 3, 0);
INSERT INTO `nideshop_region` VALUES (2670, 189, '高新区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2671, 189, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2672, 270, '万州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2673, 270, '涪陵区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2674, 270, '渝中区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2675, 270, '大渡口区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2676, 270, '江北区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2677, 270, '沙坪坝区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2678, 270, '九龙坡区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2679, 270, '南岸区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2680, 270, '北碚区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2681, 270, '万盛区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2682, 270, '双桥区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2683, 270, '渝北区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2684, 270, '巴南区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2685, 270, '黔江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2686, 270, '长寿区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2687, 270, '綦江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2688, 270, '潼南县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2689, 270, '铜梁区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2690, 270, '大足区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2691, 270, '荣昌县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2692, 270, '璧山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2693, 270, '梁平县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2694, 270, '城口县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2695, 270, '丰都县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2696, 270, '垫江县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2697, 270, '武隆县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2698, 270, '忠县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2699, 270, '开县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2700, 270, '云阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2701, 270, '奉节县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2702, 270, '巫山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2703, 270, '巫溪县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2704, 270, '石柱土家族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2705, 270, '秀山土家族苗族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2706, 270, '酉阳土家族苗族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2707, 270, '彭水苗族土家族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2708, 270, '江津区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2709, 270, '合川区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2710, 270, '永川区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2711, 270, '南川区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2712, 270, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2713, 271, '锦江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2714, 271, '青羊区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2715, 271, '金牛区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2716, 271, '武侯区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2717, 271, '成华区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2718, 271, '龙泉驿区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2719, 271, '青白江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2720, 271, '新都区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2721, 271, '温江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2722, 271, '金堂县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2723, 271, '双流县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2724, 271, '郫县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2725, 271, '大邑县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2726, 271, '蒲江县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2727, 271, '新津县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2728, 271, '都江堰市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2729, 271, '彭州市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2730, 271, '邛崃市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2731, 271, '崇州市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2732, 271, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2733, 272, '自流井区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2734, 272, '贡井区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2735, 272, '大安区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2736, 272, '沿滩区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2737, 272, '荣县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2738, 272, '富顺县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2739, 272, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2740, 273, '东区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2741, 273, '西区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2742, 273, '仁和区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2743, 273, '米易县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2744, 273, '盐边县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2745, 273, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2746, 274, '江阳区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2747, 274, '纳溪区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2748, 274, '龙马潭区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2749, 274, '泸县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2750, 274, '合江县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2751, 274, '叙永县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2752, 274, '古蔺县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2753, 274, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2754, 275, '旌阳区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2755, 275, '中江县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2756, 275, '罗江县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2757, 275, '广汉市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2758, 275, '什邡市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2759, 275, '绵竹市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2760, 275, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2761, 276, '涪城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2762, 276, '游仙区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2763, 276, '三台县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2764, 276, '盐亭县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2765, 276, '安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2766, 276, '梓潼县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2767, 276, '北川羌族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2768, 276, '平武县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2769, 276, '高新区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2770, 276, '江油市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2771, 276, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2772, 277, '利州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2773, 277, '昭化区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2774, 277, '朝天区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2775, 277, '旺苍县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2776, 277, '青川县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2777, 277, '剑阁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2778, 277, '苍溪县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2779, 277, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2780, 278, '船山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2781, 278, '安居区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2782, 278, '蓬溪县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2783, 278, '射洪县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2784, 278, '大英县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2785, 278, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2786, 279, '市中区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2787, 279, '东兴区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2788, 279, '威远县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2789, 279, '资中县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2790, 279, '隆昌县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2791, 279, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2792, 280, '市中区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2793, 280, '沙湾区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2794, 280, '五通桥区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2795, 280, '金口河区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2796, 280, '犍为县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2797, 280, '井研县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2798, 280, '夹江县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2799, 280, '沐川县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2800, 280, '峨边彝族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2801, 280, '马边彝族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2802, 280, '峨眉山市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2803, 280, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2804, 281, '顺庆区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2805, 281, '高坪区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2806, 281, '嘉陵区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2807, 281, '南部县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2808, 281, '营山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2809, 281, '蓬安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2810, 281, '仪陇县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2811, 281, '西充县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2812, 281, '阆中市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2813, 281, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2814, 282, '东坡区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2815, 282, '仁寿县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2816, 282, '彭山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2817, 282, '洪雅县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2818, 282, '丹棱县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2819, 282, '青神县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2820, 282, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2821, 283, '翠屏区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2822, 283, '宜宾县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2823, 283, '南溪区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2824, 283, '江安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2825, 283, '长宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2826, 283, '高县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2827, 283, '珙县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2828, 283, '筠连县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2829, 283, '兴文县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2830, 283, '屏山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2831, 283, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2832, 284, '广安区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2833, 284, '前锋区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2834, 284, '岳池县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2835, 284, '武胜县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2836, 284, '邻水县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2837, 284, '华蓥市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2838, 284, '市辖区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2839, 284, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2840, 285, '通川区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2841, 285, '达川区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2842, 285, '宣汉县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2843, 285, '开江县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2844, 285, '大竹县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2845, 285, '渠县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2846, 285, '万源市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2847, 285, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2848, 286, '雨城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2849, 286, '名山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2850, 286, '荥经县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2851, 286, '汉源县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2852, 286, '石棉县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2853, 286, '天全县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2854, 286, '芦山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2855, 286, '宝兴县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2856, 286, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2857, 287, '巴州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2858, 287, '恩阳区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2859, 287, '通江县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2860, 287, '南江县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2861, 287, '平昌县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2862, 287, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2863, 288, '雁江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2864, 288, '安岳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2865, 288, '乐至县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2866, 288, '简阳市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2867, 288, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2868, 289, '汶川县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2869, 289, '理县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2870, 289, '茂县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2871, 289, '松潘县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2872, 289, '九寨沟县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2873, 289, '金川县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2874, 289, '小金县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2875, 289, '黑水县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2876, 289, '马尔康县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2877, 289, '壤塘县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2878, 289, '阿坝县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2879, 289, '若尔盖县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2880, 289, '红原县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2881, 289, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2882, 290, '康定市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2883, 290, '泸定县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2884, 290, '丹巴县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2885, 290, '九龙县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2886, 290, '雅江县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2887, 290, '道孚县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2888, 290, '炉霍县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2889, 290, '甘孜县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2890, 290, '新龙县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2891, 290, '德格县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2892, 290, '白玉县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2893, 290, '石渠县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2894, 290, '色达县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2895, 290, '理塘县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2896, 290, '巴塘县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2897, 290, '乡城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2898, 290, '稻城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2899, 290, '得荣县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2900, 290, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2901, 291, '西昌市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2902, 291, '木里藏族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2903, 291, '盐源县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2904, 291, '德昌县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2905, 291, '会理县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2906, 291, '会东县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2907, 291, '宁南县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2908, 291, '普格县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2909, 291, '布拖县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2910, 291, '金阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2911, 291, '昭觉县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2912, 291, '喜德县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2913, 291, '冕宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2914, 291, '越西县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2915, 291, '甘洛县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2916, 291, '美姑县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2917, 291, '雷波县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2918, 291, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2919, 292, '南明区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2920, 292, '云岩区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2921, 292, '花溪区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2922, 292, '乌当区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2923, 292, '白云区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2924, 292, '小河区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2925, 292, '开阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2926, 292, '息烽县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2927, 292, '修文县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2928, 292, '观山湖区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2929, 292, '清镇市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2930, 292, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2931, 293, '钟山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2932, 293, '六枝特区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2933, 293, '水城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2934, 293, '盘县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2935, 293, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2936, 294, '红花岗区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2937, 294, '汇川区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2938, 294, '遵义县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2939, 294, '桐梓县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2940, 294, '绥阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2941, 294, '正安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2942, 294, '道真仡佬族苗族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2943, 294, '务川仡佬族苗族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2944, 294, '凤冈县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2945, 294, '湄潭县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2946, 294, '余庆县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2947, 294, '习水县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2948, 294, '赤水市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2949, 294, '仁怀市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2950, 294, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2951, 295, '西秀区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2952, 295, '平坝区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2953, 295, '普定县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2954, 295, '镇宁布依族苗族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2955, 295, '关岭布依族苗族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2956, 295, '紫云苗族布依族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2957, 295, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2958, 296, '碧江区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2959, 296, '江口县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2960, 296, '玉屏侗族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2961, 296, '石阡县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2962, 296, '思南县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2963, 296, '印江土家族苗族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2964, 296, '德江县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2965, 296, '沿河土家族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2966, 296, '松桃苗族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2967, 296, '万山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2968, 296, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2969, 297, '兴义市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2970, 297, '兴仁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2971, 297, '普安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2972, 297, '晴隆县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2973, 297, '贞丰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2974, 297, '望谟县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2975, 297, '册亨县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2976, 297, '安龙县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2977, 297, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2978, 298, '七星关区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2979, 298, '大方县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2980, 298, '黔西县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2981, 298, '金沙县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2982, 298, '织金县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2983, 298, '纳雍县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2984, 298, '威宁彝族回族苗族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2985, 298, '赫章县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2986, 298, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (2987, 299, '凯里市', 3, 0);
INSERT INTO `nideshop_region` VALUES (2988, 299, '黄平县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2989, 299, '施秉县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2990, 299, '三穗县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2991, 299, '镇远县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2992, 299, '岑巩县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2993, 299, '天柱县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2994, 299, '锦屏县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2995, 299, '剑河县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2996, 299, '台江县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2997, 299, '黎平县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2998, 299, '榕江县', 3, 0);
INSERT INTO `nideshop_region` VALUES (2999, 299, '从江县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3000, 299, '雷山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3001, 299, '麻江县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3002, 299, '丹寨县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3003, 299, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3004, 300, '都匀市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3005, 300, '福泉市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3006, 300, '荔波县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3007, 300, '贵定县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3008, 300, '瓮安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3009, 300, '独山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3010, 300, '平塘县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3011, 300, '罗甸县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3012, 300, '长顺县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3013, 300, '龙里县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3014, 300, '惠水县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3015, 300, '三都水族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3016, 300, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3017, 301, '五华区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3018, 301, '盘龙区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3019, 301, '官渡区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3020, 301, '西山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3021, 301, '东川区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3022, 301, '呈贡区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3023, 301, '晋宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3024, 301, '富民县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3025, 301, '宜良县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3026, 301, '石林彝族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3027, 301, '嵩明县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3028, 301, '禄劝彝族苗族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3029, 301, '寻甸回族彝族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3030, 301, '安宁市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3031, 301, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3032, 302, '麒麟区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3033, 302, '马龙县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3034, 302, '陆良县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3035, 302, '师宗县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3036, 302, '罗平县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3037, 302, '富源县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3038, 302, '会泽县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3039, 302, '沾益县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3040, 302, '宣威市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3041, 302, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3042, 303, '红塔区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3043, 303, '江川县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3044, 303, '澄江县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3045, 303, '通海县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3046, 303, '华宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3047, 303, '易门县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3048, 303, '峨山彝族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3049, 303, '新平彝族傣族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3050, 303, '元江哈尼族彝族傣族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3051, 303, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3052, 304, '隆阳区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3053, 304, '施甸县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3054, 304, '腾冲县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3055, 304, '龙陵县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3056, 304, '昌宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3057, 304, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3058, 305, '昭阳区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3059, 305, '鲁甸县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3060, 305, '巧家县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3061, 305, '盐津县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3062, 305, '大关县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3063, 305, '永善县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3064, 305, '绥江县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3065, 305, '镇雄县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3066, 305, '彝良县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3067, 305, '威信县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3068, 305, '水富县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3069, 305, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3070, 306, '古城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3071, 306, '玉龙纳西族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3072, 306, '永胜县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3073, 306, '华坪县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3074, 306, '宁蒗彝族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3075, 306, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3076, 307, '思茅区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3077, 307, '宁洱哈尼族彝族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3078, 307, '墨江哈尼族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3079, 307, '景东彝族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3080, 307, '景谷傣族彝族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3081, 307, '镇沅彝族哈尼族拉祜族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3082, 307, '江城哈尼族彝族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3083, 307, '孟连傣族拉祜族佤族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3084, 307, '澜沧拉祜族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3085, 307, '西盟佤族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3086, 307, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3087, 308, '临翔区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3088, 308, '凤庆县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3089, 308, '云县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3090, 308, '永德县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3091, 308, '镇康县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3092, 308, '双江拉祜族佤族布朗族傣族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3093, 308, '耿马傣族佤族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3094, 308, '沧源佤族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3095, 308, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3096, 309, '楚雄市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3097, 309, '双柏县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3098, 309, '牟定县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3099, 309, '南华县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3100, 309, '姚安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3101, 309, '大姚县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3102, 309, '永仁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3103, 309, '元谋县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3104, 309, '武定县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3105, 309, '禄丰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3106, 309, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3107, 310, '个旧市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3108, 310, '开远市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3109, 310, '蒙自市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3110, 310, '屏边苗族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3111, 310, '建水县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3112, 310, '石屏县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3113, 310, '弥勒市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3114, 310, '泸西县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3115, 310, '元阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3116, 310, '红河县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3117, 310, '金平苗族瑶族傣族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3118, 310, '绿春县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3119, 310, '河口瑶族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3120, 310, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3121, 311, '文山市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3122, 311, '砚山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3123, 311, '西畴县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3124, 311, '麻栗坡县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3125, 311, '马关县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3126, 311, '丘北县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3127, 311, '广南县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3128, 311, '富宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3129, 311, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3130, 312, '景洪市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3131, 312, '勐海县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3132, 312, '勐腊县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3133, 312, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3134, 313, '大理市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3135, 313, '漾濞彝族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3136, 313, '祥云县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3137, 313, '宾川县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3138, 313, '弥渡县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3139, 313, '南涧彝族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3140, 313, '巍山彝族回族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3141, 313, '永平县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3142, 313, '云龙县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3143, 313, '洱源县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3144, 313, '剑川县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3145, 313, '鹤庆县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3146, 313, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3147, 314, '瑞丽市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3148, 314, '芒市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3149, 314, '梁河县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3150, 314, '盈江县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3151, 314, '陇川县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3152, 314, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3153, 315, '泸水县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3154, 315, '福贡县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3155, 315, '贡山独龙族怒族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3156, 315, '兰坪白族普米族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3157, 315, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3158, 316, '香格里拉市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3159, 316, '德钦县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3160, 316, '维西傈僳族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3161, 316, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3162, 317, '城关区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3163, 317, '林周县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3164, 317, '当雄县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3165, 317, '尼木县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3166, 317, '曲水县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3167, 317, '堆龙德庆县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3168, 317, '达孜县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3169, 317, '墨竹工卡县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3170, 317, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3171, 318, '卡若区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3172, 318, '江达县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3173, 318, '贡觉县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3174, 318, '类乌齐县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3175, 318, '丁青县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3176, 318, '察雅县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3177, 318, '八宿县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3178, 318, '左贡县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3179, 318, '芒康县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3180, 318, '洛隆县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3181, 318, '边坝县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3182, 318, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3183, 319, '乃东县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3184, 319, '扎囊县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3185, 319, '贡嘎县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3186, 319, '桑日县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3187, 319, '琼结县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3188, 319, '曲松县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3189, 319, '措美县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3190, 319, '洛扎县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3191, 319, '加查县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3192, 319, '隆子县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3193, 319, '错那县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3194, 319, '浪卡子县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3195, 319, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3196, 320, '桑珠孜区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3197, 320, '南木林县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3198, 320, '江孜县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3199, 320, '定日县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3200, 320, '萨迦县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3201, 320, '拉孜县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3202, 320, '昂仁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3203, 320, '谢通门县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3204, 320, '白朗县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3205, 320, '仁布县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3206, 320, '康马县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3207, 320, '定结县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3208, 320, '仲巴县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3209, 320, '亚东县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3210, 320, '吉隆县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3211, 320, '聂拉木县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3212, 320, '萨嘎县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3213, 320, '岗巴县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3214, 320, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3215, 321, '那曲县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3216, 321, '嘉黎县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3217, 321, '比如县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3218, 321, '聂荣县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3219, 321, '安多县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3220, 321, '申扎县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3221, 321, '索县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3222, 321, '班戈县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3223, 321, '巴青县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3224, 321, '尼玛县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3225, 321, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3226, 321, '双湖县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3227, 322, '普兰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3228, 322, '札达县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3229, 322, '噶尔县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3230, 322, '日土县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3231, 322, '革吉县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3232, 322, '改则县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3233, 322, '措勤县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3234, 322, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3235, 323, '巴宜区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3236, 323, '工布江达县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3237, 323, '米林县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3238, 323, '墨脱县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3239, 323, '波密县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3240, 323, '察隅县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3241, 323, '朗县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3242, 323, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3243, 324, '新城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3244, 324, '碑林区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3245, 324, '莲湖区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3246, 324, '灞桥区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3247, 324, '未央区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3248, 324, '雁塔区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3249, 324, '阎良区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3250, 324, '临潼区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3251, 324, '长安区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3252, 324, '蓝田县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3253, 324, '周至县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3254, 324, '户县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3255, 324, '高陵区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3256, 324, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3257, 325, '王益区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3258, 325, '印台区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3259, 325, '耀州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3260, 325, '宜君县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3261, 325, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3262, 326, '渭滨区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3263, 326, '金台区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3264, 326, '陈仓区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3265, 326, '凤翔县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3266, 326, '岐山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3267, 326, '扶风县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3268, 326, '眉县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3269, 326, '陇县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3270, 326, '千阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3271, 326, '麟游县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3272, 326, '凤县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3273, 326, '太白县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3274, 326, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3275, 327, '秦都区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3276, 327, '杨陵区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3277, 327, '渭城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3278, 327, '三原县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3279, 327, '泾阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3280, 327, '乾县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3281, 327, '礼泉县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3282, 327, '永寿县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3283, 327, '彬县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3284, 327, '长武县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3285, 327, '旬邑县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3286, 327, '淳化县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3287, 327, '武功县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3288, 327, '兴平市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3289, 327, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3290, 328, '临渭区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3291, 328, '华县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3292, 328, '潼关县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3293, 328, '大荔县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3294, 328, '合阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3295, 328, '澄城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3296, 328, '蒲城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3297, 328, '白水县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3298, 328, '富平县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3299, 328, '韩城市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3300, 328, '华阴市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3301, 328, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3302, 329, '宝塔区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3303, 329, '延长县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3304, 329, '延川县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3305, 329, '子长县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3306, 329, '安塞县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3307, 329, '志丹县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3308, 329, '吴起县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3309, 329, '甘泉县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3310, 329, '富县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3311, 329, '洛川县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3312, 329, '宜川县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3313, 329, '黄龙县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3314, 329, '黄陵县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3315, 329, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3316, 330, '汉台区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3317, 330, '南郑县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3318, 330, '城固县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3319, 330, '洋县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3320, 330, '西乡县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3321, 330, '勉县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3322, 330, '宁强县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3323, 330, '略阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3324, 330, '镇巴县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3325, 330, '留坝县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3326, 330, '佛坪县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3327, 330, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3328, 331, '榆阳区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3329, 331, '神木县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3330, 331, '府谷县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3331, 331, '横山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3332, 331, '靖边县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3333, 331, '定边县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3334, 331, '绥德县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3335, 331, '米脂县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3336, 331, '佳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3337, 331, '吴堡县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3338, 331, '清涧县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3339, 331, '子洲县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3340, 331, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3341, 332, '汉滨区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3342, 332, '汉阴县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3343, 332, '石泉县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3344, 332, '宁陕县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3345, 332, '紫阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3346, 332, '岚皋县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3347, 332, '平利县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3348, 332, '镇坪县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3349, 332, '旬阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3350, 332, '白河县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3351, 332, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3352, 333, '商州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3353, 333, '洛南县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3354, 333, '丹凤县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3355, 333, '商南县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3356, 333, '山阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3357, 333, '镇安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3358, 333, '柞水县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3359, 333, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3360, 334, '城关区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3361, 334, '七里河区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3362, 334, '西固区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3363, 334, '安宁区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3364, 334, '红古区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3365, 334, '永登县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3366, 334, '皋兰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3367, 334, '榆中县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3368, 334, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3369, 336, '金川区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3370, 336, '永昌县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3371, 336, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3372, 337, '白银区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3373, 337, '平川区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3374, 337, '靖远县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3375, 337, '会宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3376, 337, '景泰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3377, 337, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3378, 338, '秦州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3379, 338, '麦积区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3380, 338, '清水县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3381, 338, '秦安县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3382, 338, '甘谷县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3383, 338, '武山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3384, 338, '张家川回族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3385, 338, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3386, 339, '凉州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3387, 339, '民勤县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3388, 339, '古浪县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3389, 339, '天祝藏族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3390, 339, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3391, 340, '甘州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3392, 340, '肃南裕固族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3393, 340, '民乐县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3394, 340, '临泽县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3395, 340, '高台县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3396, 340, '山丹县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3397, 340, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3398, 341, '崆峒区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3399, 341, '泾川县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3400, 341, '灵台县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3401, 341, '崇信县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3402, 341, '华亭县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3403, 341, '庄浪县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3404, 341, '静宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3405, 341, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3406, 342, '肃州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3407, 342, '金塔县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3408, 342, '瓜州县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3409, 342, '肃北蒙古族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3410, 342, '阿克塞哈萨克族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3411, 342, '玉门市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3412, 342, '敦煌市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3413, 342, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3414, 343, '西峰区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3415, 343, '庆城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3416, 343, '环县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3417, 343, '华池县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3418, 343, '合水县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3419, 343, '正宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3420, 343, '宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3421, 343, '镇原县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3422, 343, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3423, 344, '安定区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3424, 344, '通渭县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3425, 344, '陇西县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3426, 344, '渭源县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3427, 344, '临洮县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3428, 344, '漳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3429, 344, '岷县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3430, 344, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3431, 345, '武都区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3432, 345, '成县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3433, 345, '文县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3434, 345, '宕昌县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3435, 345, '康县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3436, 345, '西和县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3437, 345, '礼县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3438, 345, '徽县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3439, 345, '两当县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3440, 345, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3441, 346, '临夏市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3442, 346, '临夏县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3443, 346, '康乐县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3444, 346, '永靖县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3445, 346, '广河县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3446, 346, '和政县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3447, 346, '东乡族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3448, 346, '积石山保安族东乡族撒拉族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3449, 346, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3450, 347, '合作市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3451, 347, '临潭县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3452, 347, '卓尼县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3453, 347, '舟曲县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3454, 347, '迭部县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3455, 347, '玛曲县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3456, 347, '碌曲县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3457, 347, '夏河县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3458, 347, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3459, 348, '城东区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3460, 348, '城中区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3461, 348, '城西区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3462, 348, '城北区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3463, 348, '大通回族土族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3464, 348, '湟中县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3465, 348, '湟源县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3466, 348, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3467, 349, '平安区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3468, 349, '民和回族土族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3469, 349, '乐都区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3470, 349, '互助土族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3471, 349, '化隆回族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3472, 349, '循化撒拉族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3473, 349, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3474, 350, '门源回族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3475, 350, '祁连县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3476, 350, '海晏县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3477, 350, '刚察县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3478, 350, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3479, 351, '同仁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3480, 351, '尖扎县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3481, 351, '泽库县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3482, 351, '河南蒙古族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3483, 351, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3484, 352, '共和县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3485, 352, '同德县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3486, 352, '贵德县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3487, 352, '兴海县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3488, 352, '贵南县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3489, 352, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3490, 353, '玛沁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3491, 353, '班玛县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3492, 353, '甘德县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3493, 353, '达日县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3494, 353, '久治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3495, 353, '玛多县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3496, 353, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3497, 354, '玉树市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3498, 354, '杂多县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3499, 354, '称多县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3500, 354, '治多县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3501, 354, '囊谦县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3502, 354, '曲麻莱县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3503, 354, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3504, 355, '格尔木市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3505, 355, '德令哈市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3506, 355, '乌兰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3507, 355, '都兰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3508, 355, '天峻县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3509, 355, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3510, 356, '兴庆区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3511, 356, '西夏区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3512, 356, '金凤区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3513, 356, '永宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3514, 356, '贺兰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3515, 356, '灵武市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3516, 356, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3517, 357, '大武口区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3518, 357, '惠农区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3519, 357, '平罗县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3520, 357, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3521, 358, '利通区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3522, 358, '红寺堡区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3523, 358, '盐池县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3524, 358, '同心县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3525, 358, '青铜峡市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3526, 358, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3527, 359, '原州区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3528, 359, '西吉县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3529, 359, '隆德县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3530, 359, '泾源县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3531, 359, '彭阳县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3532, 359, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3533, 360, '沙坡头区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3534, 360, '中宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3535, 360, '海原县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3536, 360, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3537, 361, '天山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3538, 361, '沙依巴克区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3539, 361, '新市区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3540, 361, '水磨沟区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3541, 361, '头屯河区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3542, 361, '达坂城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3543, 361, '东山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3544, 361, '米东区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3545, 361, '乌鲁木齐县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3546, 361, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3547, 362, '独山子区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3548, 362, '克拉玛依区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3549, 362, '白碱滩区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3550, 362, '乌尔禾区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3551, 362, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3552, 363, '高昌区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3553, 363, '鄯善县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3554, 363, '托克逊县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3555, 363, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3556, 364, '哈密市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3557, 364, '巴里坤哈萨克自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3558, 364, '伊吾县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3559, 364, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3560, 365, '昌吉市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3561, 365, '阜康市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3562, 365, '米泉市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3563, 365, '呼图壁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3564, 365, '玛纳斯县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3565, 365, '奇台县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3566, 365, '吉木萨尔县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3567, 365, '木垒哈萨克自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3568, 365, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3569, 366, '博乐市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3570, 366, '阿拉山口市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3571, 366, '精河县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3572, 366, '温泉县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3573, 366, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3574, 367, '库尔勒市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3575, 367, '轮台县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3576, 367, '尉犁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3577, 367, '若羌县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3578, 367, '且末县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3579, 367, '焉耆回族自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3580, 367, '和静县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3581, 367, '和硕县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3582, 367, '博湖县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3583, 367, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3584, 368, '阿克苏市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3585, 368, '温宿县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3586, 368, '库车县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3587, 368, '沙雅县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3588, 368, '新和县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3589, 368, '拜城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3590, 368, '乌什县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3591, 368, '阿瓦提县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3592, 368, '柯坪县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3593, 368, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3594, 369, '阿图什市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3595, 369, '阿克陶县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3596, 369, '阿合奇县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3597, 369, '乌恰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3598, 369, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3599, 370, '喀什市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3600, 370, '疏附县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3601, 370, '疏勒县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3602, 370, '英吉沙县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3603, 370, '泽普县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3604, 370, '莎车县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3605, 370, '叶城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3606, 370, '麦盖提县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3607, 370, '岳普湖县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3608, 370, '伽师县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3609, 370, '巴楚县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3610, 370, '塔什库尔干塔吉克自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3611, 370, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3612, 371, '和田市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3613, 371, '和田县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3614, 371, '墨玉县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3615, 371, '皮山县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3616, 371, '洛浦县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3617, 371, '策勒县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3618, 371, '于田县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3619, 371, '民丰县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3620, 371, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3621, 372, '伊宁市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3622, 372, '奎屯市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3623, 372, '伊宁县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3624, 372, '察布查尔锡伯自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3625, 372, '霍城县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3626, 372, '巩留县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3627, 372, '新源县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3628, 372, '昭苏县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3629, 372, '特克斯县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3630, 372, '尼勒克县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3631, 372, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3632, 373, '塔城市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3633, 373, '乌苏市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3634, 373, '额敏县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3635, 373, '沙湾县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3636, 373, '托里县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3637, 373, '裕民县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3638, 373, '和布克赛尔蒙古自治县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3639, 373, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3640, 374, '阿勒泰市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3641, 374, '布尔津县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3642, 374, '富蕴县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3643, 374, '福海县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3644, 374, '哈巴河县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3645, 374, '青河县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3646, 374, '吉木乃县', 3, 0);
INSERT INTO `nideshop_region` VALUES (3647, 374, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3648, 375, '中正区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3649, 375, '大同区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3650, 375, '中山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3651, 375, '松山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3652, 375, '大安区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3653, 375, '万华区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3654, 375, '信义区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3655, 375, '士林区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3656, 375, '北投区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3657, 375, '内湖区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3658, 375, '南港区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3659, 375, '文山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3660, 375, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3661, 376, '新兴区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3662, 376, '前金区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3663, 376, '芩雅区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3664, 376, '盐埕区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3665, 376, '鼓山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3666, 376, '旗津区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3667, 376, '前镇区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3668, 376, '三民区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3669, 376, '左营区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3670, 376, '楠梓区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3671, 376, '小港区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3672, 376, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3673, 376, '苓雅区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3674, 376, '仁武区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3675, 376, '大社区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3676, 376, '冈山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3677, 376, '路竹区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3678, 376, '阿莲区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3679, 376, '田寮区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3680, 376, '燕巢区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3681, 376, '桥头区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3682, 376, '梓官区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3683, 376, '弥陀区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3684, 376, '永安区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3685, 376, '湖内区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3686, 376, '凤山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3687, 376, '大寮区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3688, 376, '林园区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3689, 376, '鸟松区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3690, 376, '大树区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3691, 376, '旗山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3692, 376, '美浓区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3693, 376, '六龟区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3694, 376, '内门区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3695, 376, '杉林区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3696, 376, '甲仙区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3697, 376, '桃源区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3698, 376, '那玛夏区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3699, 376, '茂林区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3700, 376, '茄萣区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3701, 377, '中西区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3702, 377, '东区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3703, 377, '南区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3704, 377, '北区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3705, 377, '安平区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3706, 377, '安南区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3707, 377, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3708, 377, '永康区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3709, 377, '归仁区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3710, 377, '新化区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3711, 377, '左镇区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3712, 377, '玉井区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3713, 377, '楠西区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3714, 377, '南化区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3715, 377, '仁德区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3716, 377, '关庙区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3717, 377, '龙崎区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3718, 377, '官田区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3719, 377, '麻豆区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3720, 377, '佳里区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3721, 377, '西港区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3722, 377, '七股区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3723, 377, '将军区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3724, 377, '学甲区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3725, 377, '北门区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3726, 377, '新营区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3727, 377, '后壁区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3728, 377, '白河区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3729, 377, '东山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3730, 377, '六甲区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3731, 377, '下营区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3732, 377, '柳营区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3733, 377, '盐水区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3734, 377, '善化区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3735, 377, '大内区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3736, 377, '山上区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3737, 377, '新市区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3738, 377, '安定区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3739, 378, '中区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3740, 378, '东区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3741, 378, '南区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3742, 378, '西区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3743, 378, '北区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3744, 378, '北屯区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3745, 378, '西屯区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3746, 378, '南屯区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3747, 378, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3748, 378, '太平区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3749, 378, '大里区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3750, 378, '雾峰区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3751, 378, '乌日区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3752, 378, '丰原区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3753, 378, '后里区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3754, 378, '石冈区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3755, 378, '东势区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3756, 378, '和平区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3757, 378, '新社区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3758, 378, '潭子区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3759, 378, '大雅区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3760, 378, '神冈区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3761, 378, '大肚区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3762, 378, '沙鹿区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3763, 378, '龙井区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3764, 378, '梧栖区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3765, 378, '清水区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3766, 378, '大甲区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3767, 378, '外埔区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3768, 378, '大安区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3769, 379, '金沙镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3770, 379, '金湖镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3771, 379, '金宁乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3772, 379, '金城镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3773, 379, '烈屿乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3774, 379, '乌坵乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3775, 380, '南投市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3776, 380, '中寮乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3777, 380, '草屯镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3778, 380, '国姓乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3779, 380, '埔里镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3780, 380, '仁爱乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3781, 380, '名间乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3782, 380, '集集镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3783, 380, '水里乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3784, 380, '鱼池乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3785, 380, '信义乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3786, 380, '竹山镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3787, 380, '鹿谷乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3788, 381, '仁爱区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3789, 381, '信义区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3790, 381, '中正区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3791, 381, '中山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3792, 381, '安乐区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3793, 381, '暖暖区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3794, 381, '七堵区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3795, 381, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3796, 382, '东区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3797, 382, '北区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3798, 382, '香山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3799, 382, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3800, 383, '东区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3801, 383, '西区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3802, 383, '其它区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3803, 384, '万里区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3804, 384, '金山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3805, 384, '板桥区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3806, 384, '汐止区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3807, 384, '深坑区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3808, 384, '石碇区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3809, 384, '瑞芳区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3810, 384, '平溪区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3811, 384, '双溪区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3812, 384, '贡寮区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3813, 384, '新店区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3814, 384, '坪林区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3815, 384, '乌来区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3816, 384, '永和区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3817, 384, '中和区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3818, 384, '土城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3819, 384, '三峡区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3820, 384, '树林区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3821, 384, '莺歌区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3822, 384, '三重区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3823, 384, '新庄区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3824, 384, '泰山区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3825, 384, '林口区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3826, 384, '芦洲区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3827, 384, '五股区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3828, 384, '八里区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3829, 384, '淡水区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3830, 384, '三芝区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3831, 384, '石门区', 3, 0);
INSERT INTO `nideshop_region` VALUES (3832, 385, '宜兰市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3833, 385, '头城镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3834, 385, '礁溪乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3835, 385, '壮围乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3836, 385, '员山乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3837, 385, '罗东镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3838, 385, '三星乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3839, 385, '大同乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3840, 385, '五结乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3841, 385, '冬山乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3842, 385, '苏澳镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3843, 385, '南澳乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3844, 385, '钓鱼台', 3, 0);
INSERT INTO `nideshop_region` VALUES (3845, 386, '竹北市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3846, 386, '湖口乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3847, 386, '新丰乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3848, 386, '新埔镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3849, 386, '关西镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3850, 386, '芎林乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3851, 386, '宝山乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3852, 386, '竹东镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3853, 386, '五峰乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3854, 386, '横山乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3855, 386, '尖石乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3856, 386, '北埔乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3857, 386, '峨眉乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3858, 387, '中坜市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3859, 387, '平镇市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3860, 387, '龙潭乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3861, 387, '杨梅市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3862, 387, '新屋乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3863, 387, '观音乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3864, 387, '桃园市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3865, 387, '龟山乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3866, 387, '八德市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3867, 387, '大溪镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3868, 387, '复兴乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3869, 387, '大园乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3870, 387, '芦竹乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3871, 388, '竹南镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3872, 388, '头份镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3873, 388, '三湾乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3874, 388, '南庄乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3875, 388, '狮潭乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3876, 388, '后龙镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3877, 388, '通霄镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3878, 388, '苑里镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3879, 388, '苗栗市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3880, 388, '造桥乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3881, 388, '头屋乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3882, 388, '公馆乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3883, 388, '大湖乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3884, 388, '泰安乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3885, 388, '铜锣乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3886, 388, '三义乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3887, 388, '西湖乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3888, 388, '卓兰镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3889, 389, '彰化市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3890, 389, '芬园乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3891, 389, '花坛乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3892, 389, '秀水乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3893, 389, '鹿港镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3894, 389, '福兴乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3895, 389, '线西乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3896, 389, '和美镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3897, 389, '伸港乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3898, 389, '员林镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3899, 389, '社头乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3900, 389, '永靖乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3901, 389, '埔心乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3902, 389, '溪湖镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3903, 389, '大村乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3904, 389, '埔盐乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3905, 389, '田中镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3906, 389, '北斗镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3907, 389, '田尾乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3908, 389, '埤头乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3909, 389, '溪州乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3910, 389, '竹塘乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3911, 389, '二林镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3912, 389, '大城乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3913, 389, '芳苑乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3914, 389, '二水乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3915, 390, '番路乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3916, 390, '梅山乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3917, 390, '竹崎乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3918, 390, '阿里山乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3919, 390, '中埔乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3920, 390, '大埔乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3921, 390, '水上乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3922, 390, '鹿草乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3923, 390, '太保市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3924, 390, '朴子市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3925, 390, '东石乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3926, 390, '六脚乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3927, 390, '新港乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3928, 390, '民雄乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3929, 390, '大林镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3930, 390, '溪口乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3931, 390, '义竹乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3932, 390, '布袋镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3933, 391, '斗南镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3934, 391, '大埤乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3935, 391, '虎尾镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3936, 391, '土库镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3937, 391, '褒忠乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3938, 391, '东势乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3939, 391, '台西乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3940, 391, '仑背乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3941, 391, '麦寮乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3942, 391, '斗六市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3943, 391, '林内乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3944, 391, '古坑乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3945, 391, '莿桐乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3946, 391, '西螺镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3947, 391, '二仑乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3948, 391, '北港镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3949, 391, '水林乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3950, 391, '口湖乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3951, 391, '四湖乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3952, 391, '元长乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3953, 392, '屏东市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3954, 392, '三地门乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3955, 392, '雾台乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3956, 392, '玛家乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3957, 392, '九如乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3958, 392, '里港乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3959, 392, '高树乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3960, 392, '盐埔乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3961, 392, '长治乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3962, 392, '麟洛乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3963, 392, '竹田乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3964, 392, '内埔乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3965, 392, '万丹乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3966, 392, '潮州镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3967, 392, '泰武乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3968, 392, '来义乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3969, 392, '万峦乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3970, 392, '崁顶乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3971, 392, '新埤乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3972, 392, '南州乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3973, 392, '林边乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3974, 392, '东港镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3975, 392, '琉球乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3976, 392, '佳冬乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3977, 392, '新园乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3978, 392, '枋寮乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3979, 392, '枋山乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3980, 392, '春日乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3981, 392, '狮子乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3982, 392, '车城乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3983, 392, '牡丹乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3984, 392, '恒春镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3985, 392, '满州乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3986, 393, '台东市', 3, 0);
INSERT INTO `nideshop_region` VALUES (3987, 393, '绿岛乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3988, 393, '兰屿乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3989, 393, '延平乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3990, 393, '卑南乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3991, 393, '鹿野乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3992, 393, '关山镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3993, 393, '海端乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3994, 393, '池上乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3995, 393, '东河乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3996, 393, '成功镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (3997, 393, '长滨乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3998, 393, '金峰乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (3999, 393, '大武乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (4000, 393, '达仁乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (4001, 393, '太麻里乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (4002, 394, '花莲市', 3, 0);
INSERT INTO `nideshop_region` VALUES (4003, 394, '新城乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (4004, 394, '太鲁阁', 3, 0);
INSERT INTO `nideshop_region` VALUES (4005, 394, '秀林乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (4006, 394, '吉安乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (4007, 394, '寿丰乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (4008, 394, '凤林镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (4009, 394, '光复乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (4010, 394, '丰滨乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (4011, 394, '瑞穗乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (4012, 394, '万荣乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (4013, 394, '玉里镇', 3, 0);
INSERT INTO `nideshop_region` VALUES (4014, 394, '卓溪乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (4015, 394, '富里乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (4016, 395, '马公市', 3, 0);
INSERT INTO `nideshop_region` VALUES (4017, 395, '西屿乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (4018, 395, '望安乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (4019, 395, '七美乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (4020, 395, '白沙乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (4021, 395, '湖西乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (4022, 396, '南竿乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (4023, 396, '北竿乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (4024, 396, '莒光乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (4025, 396, '东引乡', 3, 0);
INSERT INTO `nideshop_region` VALUES (4026, 397, '中西区', 3, 0);
INSERT INTO `nideshop_region` VALUES (4027, 397, '湾仔', 3, 0);
INSERT INTO `nideshop_region` VALUES (4028, 397, '东区', 3, 0);
INSERT INTO `nideshop_region` VALUES (4029, 397, '南区', 3, 0);
INSERT INTO `nideshop_region` VALUES (4030, 398, '九龙城区', 3, 0);
INSERT INTO `nideshop_region` VALUES (4031, 398, '油尖旺区', 3, 0);
INSERT INTO `nideshop_region` VALUES (4032, 398, '深水埗区', 3, 0);
INSERT INTO `nideshop_region` VALUES (4033, 398, '黄大仙区', 3, 0);
INSERT INTO `nideshop_region` VALUES (4034, 398, '观塘区', 3, 0);
INSERT INTO `nideshop_region` VALUES (4035, 399, '北区', 3, 0);
INSERT INTO `nideshop_region` VALUES (4036, 399, '大埔区', 3, 0);
INSERT INTO `nideshop_region` VALUES (4037, 399, '沙田区', 3, 0);
INSERT INTO `nideshop_region` VALUES (4038, 399, '西贡区', 3, 0);
INSERT INTO `nideshop_region` VALUES (4039, 399, '元朗区', 3, 0);
INSERT INTO `nideshop_region` VALUES (4040, 399, '屯门区', 3, 0);
INSERT INTO `nideshop_region` VALUES (4041, 399, '荃湾区', 3, 0);
INSERT INTO `nideshop_region` VALUES (4042, 399, '葵青区', 3, 0);
INSERT INTO `nideshop_region` VALUES (4043, 399, '离岛区', 3, 0);
COMMIT;

-- ----------------------------
-- Table structure for nideshop_related_goods
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_related_goods`;
CREATE TABLE `nideshop_related_goods` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) unsigned NOT NULL DEFAULT '0',
  `related_goods_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for nideshop_search_history
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_search_history`;
CREATE TABLE `nideshop_search_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '搜索来源，如PC、小程序、APP等',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '搜索时间',
  `user_id` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of nideshop_search_history
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_search_history` VALUES (23, '母亲节', '', 1500564813, '1');
INSERT INTO `nideshop_search_history` VALUES (24, '日式', '', 1500564816, '1');
INSERT INTO `nideshop_search_history` VALUES (25, '日式', '', 1500564822, '1');
INSERT INTO `nideshop_search_history` VALUES (26, '清新', '', 1500564835, '1');
INSERT INTO `nideshop_search_history` VALUES (27, '日式', '', 1500638161, '1');
INSERT INTO `nideshop_search_history` VALUES (28, 'fd', '', 1549878223, '0');
INSERT INTO `nideshop_search_history` VALUES (29, 'fd4', '', 1549878239, '0');
INSERT INTO `nideshop_search_history` VALUES (30, 'fd', '', 1554963351, '0');
COMMIT;

-- ----------------------------
-- Table structure for nideshop_shipper
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_shipper`;
CREATE TABLE `nideshop_shipper` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '快递公司名称',
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '快递公司代码',
  `sort_order` int(11) NOT NULL DEFAULT '10' COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `nideshop_shipper_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='快递公司';

-- ----------------------------
-- Records of nideshop_shipper
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_shipper` VALUES (1, '顺丰速运', 'SF', 1);
INSERT INTO `nideshop_shipper` VALUES (2, '百世快递', 'HTKY', 2);
INSERT INTO `nideshop_shipper` VALUES (3, '中通快递', 'ZTO', 3);
INSERT INTO `nideshop_shipper` VALUES (4, '申通快递', 'STO', 4);
INSERT INTO `nideshop_shipper` VALUES (5, '圆通速递', 'YTO', 5);
INSERT INTO `nideshop_shipper` VALUES (6, '韵达速递', 'YD', 6);
INSERT INTO `nideshop_shipper` VALUES (7, '邮政快递包裹', 'YZPY', 7);
INSERT INTO `nideshop_shipper` VALUES (8, 'EMS', 'EMS', 8);
INSERT INTO `nideshop_shipper` VALUES (9, '天天快递', 'HHTT', 9);
INSERT INTO `nideshop_shipper` VALUES (10, '京东物流', 'JD', 10);
INSERT INTO `nideshop_shipper` VALUES (11, '全峰快递', 'QFKD', 11);
INSERT INTO `nideshop_shipper` VALUES (12, '国通快递', 'GTO', 12);
INSERT INTO `nideshop_shipper` VALUES (13, '优速快递', 'UC', 13);
COMMIT;

-- ----------------------------
-- Table structure for nideshop_specification
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_specification`;
CREATE TABLE `nideshop_specification` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='规格表';

-- ----------------------------
-- Records of nideshop_specification
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_specification` VALUES (1, '颜色', 1);
INSERT INTO `nideshop_specification` VALUES (2, '规格', 2);
COMMIT;

-- ----------------------------
-- Table structure for nideshop_topic
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_topic`;
CREATE TABLE `nideshop_topic` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '''''',
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `item_pic_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '''',
  `topic_category_id` int(11) unsigned DEFAULT '0',
  `price_info` decimal(10,2) unsigned DEFAULT '0.00',
  `read_count` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `scene_pic_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topic_template_id` int(11) unsigned DEFAULT '0',
  `topic_tag_id` int(11) unsigned DEFAULT '0',
  `sort_order` int(11) unsigned DEFAULT '100',
  `is_show` tinyint(1) unsigned DEFAULT '1',
  KEY `topic_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of nideshop_topic
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_topic` VALUES (314, '博迈德技术服务项目', '<p><img src=\"data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABQAAD/4QP7aHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjMtYzAxMSA2Ni4xNDU2NjEsIDIwMTIvMDIvMDYtMTQ6NTY6MjcgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0idXVpZDo5RTNFNUM5QThDODFEQjExODczNERCNThGRERFNEJBNyIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDo0NTNCNjEyQzVDRjMxMUU5OTAzNEVDMTBDN0ZBQkVDNSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo0NTNCNjEyQjVDRjMxMUU5OTAzNEVDMTBDN0ZBQkVDNSIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBJbGx1c3RyYXRvciBDQyAyMi4xIChXaW5kb3dzKSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOkFFRjcyRTc4NUNDQjExRTk4QTJDOERBNDgzMURDQkZGIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOkFFRjcyRTc5NUNDQjExRTk4QTJDOERB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/CK+nAelYOz5G1W52xhg4vIHoFT6FZbUPQvjGFNSN73J/IkdXMZhmhHbPwMh7vWR9iE1rF5z5IcLeMDpdie4YekrcbD6ZxNobqUu6GDKO81PoCtvpPEfHPHiEjU9UhY2SkWVk1I86Yr390h0rc6+4G1ajfavd3p/WkJHDY3uGC3vTtCstPH+nia08drv4jU+lSPWNWWRREURFERREURFERREURFERREURFERREURFERREURFERREURFERREURFERREURFERREURFERREURFERRF5ussvoLb7SHm1febcSFJP5D0qIJGIUCARQplZLjHjjMFRymh4Cctf33HcdGKz/jdl/wBNXsWp3UXsSvH7x+9Y+bSLKb24WHraPuTImem3g6arvd45xjSv/o5eYH5mnEir5vMupN2TO7aH1hY1/KOkv227Oyo9RCTv+61wR/7gsf7XM/56qn/VWpf8U9w+5Uv+i9I/4A73felGH6beDoKu5rjnGOn/AOkF2QPzOuKFU38yai/bM7soPUFWZylpLNluztqfWSnxjeMuOcP2nF6JgIKkfccax0ZKx/jdl/01Yy6ndS+3K89bj96yMOkWUPsQsHU0fcno0y0whLbLSGW0/dbQAlI+wDpVkTXErIAAYBelQUUURFERREURFERREURFERREURFERREURFERREURFERREURFERREURFERREURFEUF571E8ba7tDOpTnc25lS7LamCPg8k6iP9GPncJTHu6grIQFshabkXIBvVo+9ja7Ka16isNPrttDL5Ts2bHYxxpTsxG6rap569ylpOzR/qsflXYrBnsYtlWVhS8WXpklJUywymeywXVLANggGqrLhj9h6McPWruDUYJhVrqYgeIFtSdgGYCvYkzD8xaXmsxlsMzIkQ3cHEy07KTZjQZjNR8JPVjpi1OlXQJdSSCR1T83TwqVtyxxI4V9BoVTi1WCR5YCRQOJJwFGOyux6/QmhtXqX441HLzsTPbzU1EGMxIOXx8BUmC6ZURM5hlmQlYC3HGFBSUjxFUpL6Nhoa92HFWtzzBbQPLXZjQDECrcRmAB4kYpa1HnXUdu2XK6kMZnNYzeFxbmYyUfYoX4eGojS0NrWsrcV2WLgPzW6daniu2PcW0IIFcRRVrXWYZ5XRUc1zW5jmGXD9imMv1c8WfRZzMRoOz5LXMDkFY6VtMHDvSMc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\"></p><p><img src=\"data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABQAAD/4QP7aHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjMtYzAxMSA2Ni4xNDU2NjEsIDIwMTIvMDIvMDYtMTQ6NTY6MjcgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0idXVpZDo5RTNFNUM5QThDODFEQjExODczNERCNThGRERFNEJBNyIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDo4NDZGQ0YzNzVDRjMxMUU5QjkzMDk0NjA5NUY3MjVFNCIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo4NDZGQ0YzNjVDRjMxMUU5QjkzMDk0NjA5NUY3MjVFNCIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBJbGx1c3RyYXRvciBDQyAyMi4xIChXaW5kb3dzKSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOkM1QkY5M0FFNUNDQjExRTk5OTJGQzIzRjUzQzYzMTMxIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOkM1QkY5M0FGNUNDQjExRTk5OTJGQzIz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\"></p>', 'https://yanxuan.nosdn.127.net/14943186689221563.png', 'https://yanxuan.nosdn.127.net/14943267735961674.jpg', '博迈德技术服务快速高效，技术领先。', 2, 0.00, '6.4k', 'https://www.wangcong.fun:8002/static/upload/topic/e007e126-cc25-4dec-b6f6-858b3e162d3a.jpg', 0, 0, 1, 1);
INSERT INTO `nideshop_topic` VALUES (313, '好Marker尽在博迈德！', '<p><img src=\"data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABQAAD/4QPzaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjMtYzAxMSA2Ni4xNDU2NjEsIDIwMTIvMDIvMDYtMTQ6NTY6MjcgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0idXVpZDo1RDIwODkyNDkzQkZEQjExOTE0QTg1OTBEMzE1MDhDOCIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDpBMjAwNzJGQTVDRjMxMUU5QjNGQTlENUQ1M0M4NDVFOCIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDpBMjAwNzJGOTVDRjMxMUU5QjNGQTlENUQ1M0M4NDVFOCIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBJbGx1c3RyYXRvciBDUzYgKFdpbmRvd3MpIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6QTA5ODI3OTg1Q0NFMTFFOUIzNDNFRDM0ODg0MDAxQjgiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6QTA5ODI3OTk1Q0NFMTFFOUIzNDNFRDM0ODg0MDAxQjgiLz4gPGRjOnRpdGxlPiA8cmRmOkFsdD4gPHJkZjpsaSB4bWw6bGFuZz0ieC1kZWZhdWx0Ij7miZPljbA8L3JkZjpsaT4gPC9yZGY6QWx0PiA8L2RjOnRpdGxlPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/Pv/tAEhQaG90b3Nob3AgMy4wADhCSU0EBAAAAAAADxwBWgADGyVHHAIAAAIAAgA4QklNBCUAAAAAABD84R+JyLfJeC80YjQHWHfr/+4ADkFkb2JlAGTAAAAAAf/bAIQAAgICAgICAgICAgMCAgIDBAMCAgMEBQQEBAQEBQYFBQUFBQUGBgcHCAcHBgkJCgoJCQwMDAwMDAwMDAwMDAwMDAEDAwMFBAUJBgYJDQsJCw0PDg4ODg8PDAwMDAwPDwwMDAwMDA8MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwM/8AAEQgBZwEJAwERAAIRAQMRAf/EANMAAAEEAwEBAQAAAAAAAAAAAAQDBQYHAQIIAAkKAQACAwEBAQEAAAAAAAAAAAAAAQIDBAUGBwgQAAIBAwMCBAIHBQQFCQQGCwECAxEEBQASBiExQSITB1EUYXGRMiMVCIGhsUIW0VIzJGJygpIXweGiskNTc5PT0jRUJYOjlFUmGPDxwrPDRGTUNUVWEQABAwIEAgcEBwgBAwIGAwABABECAwQhMRIFQVFhcZEiMhMGgaGxFfDB0eFCUhRicoKSIzNTBxbxokOyJMLSYzQlF+JzNf/aAAwDAQACEQMRAD8A+2OuOor2hCIgYCoPjpJIvr8Op0017v30IQt5E01vKijqVNPr1h3KhKva1KcfFKJA61OlIRkCeabLSB4YgGFGPfXN9PbdOxtRTqeJ3KndVRUk4ROu6sqJtmALA+OmFIIzV0ckuKqH3Mgdb/GXVPJLbvED/pI26n2Nr0OzkGMhxdcDfonVE9CrH69dheeVy8MxE2KxsjXC7LjIS/MMniq7QqhvpoO2vJ7pcxrVu7kMF6nbLaVGl3syXU+g7ft1gpldZc6cwxr2/Ksu0oG25m9eGnisig1+2uvzh64hK33atGQ8REh1SC69tF4AqI39oHVWjoCtenx15anW5q6rTfEJrtLK5vrqGxtYmmubpxFFEB13H4/ADuddSzt6l1UjSpB5SLBZJERzXUVrm83aW0MV/wAOyEhgRY2msJ7W6VtqgFgplifw7bdfpK1q1aVKMJwOEQMGPDrR+lozxhWA6wR9RXOHuP7k8fxfMbyzyNrlcfM8EEpS4s2jZQyACqlq+HcdPp18U9a7RcXW6VKsBgQMDgcuS9XtPpm6urYVKRgYuR4lDn9wuG3sZRc2kBYGguI5Y6fWStP368idmuqZfR2J3HpbcYjCm/UQlcdk8Xl7mC3xuXsZp5WCxE3EaAH4kuwAA+nW+1sLidaEYwLkhnwHtPBcCvtF5TxnRmB+6V1pi+XY2JYI82kmBlkVUiurso1lM1KVivYi8DVp0BZW+jX6Kt7sMNfdLDH8J6pZLEduqDwd7mB4h1xLFTpAJESSMh43XckimqsD4gjoRrpguHCwnDApOauxumqyEk36imvaEI23HkJ+J1IZIS/09tNCwSKGugFihNpO5ifjqPFC9poXtNCWiQnr4dq6AUJ3p/pDWdWJi1e6rXtNCyCR20ISwmkpWm4Dx0knSonFPMpBHU000L3rj+VdIlk8UnWR6BVpu7fE/VpKLFIMpB/gdJJkojhRSlD8dN00VG24V3A0+GpxKbKIc8sPnMA9wFJewlSZW/0T5X/jrq7XU01gPzYfYuXu9LXQJ4gv9qhnEOMmWSLM3sdYFO6wib+dh/OR8BTprXu16I/0oHHisG12D/1ZZcFaVBrzrLvgIqA9xUUPhqUCykyrL3LsKHG5VV6ea2ncfH7yV/fr5B/tTbf7N5Ec4S+MfrXSsZ4GKqKbqqkCvXXx4LeVcHC+KLiYvza8ipk7xKIp7wxnrQfS3j9mvvXoX0ybCh+orj+rMYA5wieHWeK491VBl3VZtqD6dD4MdfRBhks8clyP+obi9hkeR4/N3ETPLbWkcEwBIDIxYoWp32kEft18s9T1hDeJUz+KnEjrDgr6P6I3KVOMqHAlx9a58mw+KYNG1jCFIp92h/YR11zdIXvfPm7uopJwvIX+Wx2LwVu1/Nlp1trOAipWRz/MR/KBUk+AB0qdCdWYhAOSWWo7nTo0ZVKpYRDlfRfhvtVg+McXx/H0u8gzW8O2/uoL65gSeVyWlb0UkEYUsTQbe3fX1Ky2mnb0RTc5YsSH9mS+H7hvta8uZVmiHOA0jAcMc/eqq908JL7aHhub4ne5oY6XNNHnMUL6VrcxtESHWJSqqQN30Hprg+oraVnRjKhOQcnieS9J6crx3Q1qVeMDIQeMtIfPmrGtY+RXEUcwy80Mcih4iZWYlWFVNKkdRrwI3S9gcKs+0rBVjaxJjoBboSk8/KLKNpEyL3Ma9WIAZgPHow1dH1BuEcq0vcqo21nMsYMlMRmuTZK5+XtpreV0Qsz3MZEY8BuMdG6n4a9FsO87lfXIp6gYjGTjh1hUX9haW9PUQQ+TH7VNI25xGgHynHpaDwuLyP8AjC+voIFwOET7T9i4rWp4z7B9qY+T5/nGDwt5lEwmHZbMK80kV1POVTdRm9NoIagA9Tu6fDXS2uibiuIVgBEjMHF/aFy96rC1tjUt3lIEOJDhxyKqiP3d5xdx1t8Pj3Rv+09ORV/YTINemnsVrHAykOz7F4yHqS9mMIRPb9qCufdzmllQ3OFsEU9nKS7a/WJCNQjsNscpS932JT9SXkc4D3/apPwr3E5fyq+u7ePAWFzBaQiSZlme22ljRKuwlHWh6bdcredup2VISpPKRORI9vBdnYN2q39YxqgRgA5IBOPDipdyDKc4gxlxdWuHs8b8qPVnuEu/m39NfvBYjAg8ak17DXz31HebjQs5VbeIjKOJ/F3eOH0wXrpUqDd2ZJ5aW97qvI+d82eMsuQRRQ7T6EQ//Z18nl6/3SI/uj+UK2NoDwVk/wBR8i/+NX/y0/8AZ16n/k95/k9wS8hT5kKjqSR4a+r5LCk6jwIP1aYKEDa5XG3t7lMba3sc2QwrImVs/uyQ+oiyIzK1PIytUMPL4V6ay0b6jWq1KUJAzpkCY4xcOD+6QfFkrp284RjMjCWR5/f0Ki+c56fOX93kOI8muLfGYrFNZXeetPmmsbW+hvYbppZGhQh0WBWR3iq1GpWmuHW9T2ctRpzlKEHEpxjKVOJBBLyGYAzMXzXtthNC0oindUhKUqmrSRHUYGBhpDnPURICWGDpTF8lW65NYXsXLbkcOm5Nc5HHXd2LqG1lW8jvoPk/mpFCPEJBG8MT7VD+oAaJHpUPVVlXqDTOQpyl3ZyjKNOROoaRM4ZjuiWkO+OARceR+klHyR5/kxgSBF3iYHXpGUiNUZzDkx0/mkrwyN9jMYbCXK3EVo895HaYwyk7nurgiNI41HVmavXp0HU0Gu5eXFvb6JVpCJMhGL5mcu6AOZ+AxXiqEKlTUIDBnPUOapP3BtcE3I8u2Q5rx/B32WgxGOx9rf3scV1b3QaQw/g+hJKfWJqvpyRkgdW7EeT3v09Uu7qrUFSEdcacYuWMZQfFtEjj+zKB5nl6jZ7a7q28TSt6k4x1yJjEmJiPFi4Hd4uCpRlPnbXLXdgvOcXZX2WyuQe3wnzvyNw011Bbi2FYleRngKM5ioQwYEk01vr7Zfa56KwGqdSWkSNM9+MRAvEE9wgnRlJ88FkoUJVaQqC3mYRiHlp1RYEvngxy1cCFtZvJf8hgwj+59tfZhbhZ7rC2V6IZ5Mfa2QtbsLbQk7GN6PUJB8oqKjqNShtl7KoNd0T3g4iTF4CnpmBEYRJq9/oD4oq2tSlbmubWUaeWox7uqR1R7x/Y7cFvhLfktzkY2HuVY5FONRWdtymO2mVlt7iGBmuRcRbCj+qSHLSFStD2pqu22zdRVpyndAiIiJNziDreLNLWWk8tJHQoXNOFOA1W8o+Y5g8fECWGnjhlg79KN4HZPe5C5zU/Kcdy6M4Ozxd7PaXz3/qTO/zondWVVhWeKZHWMdACKdDrTsu2XVC58+tVEz5UYEiUpEyEtZniAICQOERkqt4pyoQFKdGVN5EgSjpwDwI6dMgQTzCsueNVRBEgRE6BVoAB2oBr0dRcGIAGCF1FSSsJo400Jt5TjjlMFkLaNd0qx+tbjx3xeYU+ulNee9V7b8w2utSA7zah1xx+0K63npmFWnDOMm92Zm/jraQN/k4nH+LIp+8R/dX+OvmHoL0obmf624j3InuA/ikOPUPitd1WYaQrYJrr7YAuYyNt/wDD/wBonUgmMFAOb8Ffl8hK3cdtG1k9uylSWMgJaIjwpuIrrxfqD0nU3PcKV1CoIiEWIbEnFuhuBXT23cf0VQTAyL+ziuFbmCWCaW3nX057Z2jnQ91dDRh+wjXk5RMSQeC+0RqCYEhkQ66o9m+Cth7AcnyMNMploqY+Jh1gtW67qeDS9/8AVoPE69r6e27yYedMd6WXRH718z9W7x+on+npnuROPTL7B8V0BEKRgft16yOS8jHJVP732fzPt/dTbAxsb21n3fAFjGf+vrhepIarMnkQV6f0nV0X4HMEKLe1ue/N+NR2M0u+8whFrJXuYvvQsf2eX9mvktzHTN+a6+/WnkXBkMpY+3irLj8R8e2s7GRAGZXFKzBxaWOZ7zGZy9w11MQ0kcSwzWxoOgaCVCD49QwP06+tbFsn6GgCJEVJYyybqboXOq7mKp0zgJRGAzB7QnA3nLcWjPkLHH52yiG6W9sJGs50Re7Nbz+ojUHWiy/UNditc17anKcoiUYgnu4HDoP2quNK2rFoGUZcjiO0N8EnFzDjuQhlt7wvDHMhSaGeOqMrChBK1BBGuRaetLGoQSTA9I+sK2vsdbSzCQPJUhlrSKxyFxbW8qT2imtlMlCrRH7vbxHY6+obduVK/oirSmJDo5r5vuFnO1rGnKJHLqTY8STo8MiCRJBtKEVBr4a6ALYrBMagyu/g/FrfiuGW1RT81eObm9c99zDypX4IvTXk9xuzc1SeAwC9ZtVjGzpMMzifp0KdRwqyMJFDK4Ksp7FT0II+nXOlESBBDg59S64K575RhmwuUubRR/lnBls3+MbeH1qeh1+ZfV2xnab6dMeCTyh+6eHsyXZt6muIUu13VFW6yhhT7NfoGUVxwUE67ehHbpqCag3LuB4Xl6rNdNNjctFEbeLM2bbJWgbq1vOoIE0LeKMfqI1wN79N226DVJ4VAG1xz08YSH44HjE+whdCy3Kpa4DGObHnzHI9KZrD21g9Ww/P8kmWxmJKPi+N2tqLPHLJGCElmiMkrSlR0Cltg+B1z7X0nHVD9TMVIQbTTjHRScZSkHkZEcn09BWitu5IPlR0yOciXl1A4N8UTlvbmK7yF/kcBkIcMc0pXkOFubUXeMviUeP1Xtw8ZSQLI3mQ9a1Ir11K/wDS0atWdW2mKfmf3IGOulUwIcxeOmTSOIPS2ajb7qYREaoMtPhILSHQ+LjBF8d9tMdg7mzyOQvrnkeSxqvHhpLxm+WxsTsW9OxgZ5PTArQMzMwAABGrtr9LUbOcatWcqtSDiGp9NIEu1OBMtPIEmUmbFQut0nWBjECMTm2cv3jg6j/PfYnifuFlos3lp7i3v4rvHXKPAqAoLAOrBCCp3zK+0yNuKgDaNd+taU6peTvh7vtXodi9cXe0UPIpRBjpmMSfxsz592JD6QzviVrnPaC6veSW3Kcbz3JY/IwZa3yz2l3aWl5YtJbBY1PoqtvIJTGiqZhLubbRtyM6NKdEynrEi7vwI+rHpdSs/WMaVsbapawlAwMHjKUJgSc594adRJENLB8GkIyDXivYzB8c5pY8543l3xmYtLq/ZxLZxXKNZXzyv8sru6yBoxKVErO9R3ToKVxs4QqeZHA49h4ferbr13WvLGVlcUhKnKMMpGJ1wA7xYaWOl9IEWOUsSlsJ7GYTDZbkWQtORZFYebRvDzTHrb2UaXsbxemUhaOFWtgxozbSd3UeOpQtoxJLnvZ5Y+7BK69eXFzSpU50YPRINI6pkwILvIEkTPAOzZo72y9ieMe1+YmzWLvZ8leti48VbSTwxRNFEvp+oS8fmff6SUDHy+ald3R2tpCjJ48mVPqX1xdb5QFGpERjrMyxJc4tgcA2o5Z4cldrjcrD6Omtcg68SE3d66rCklIRWRB2qQP36CWSOC4Lyn6w8/iW9xd+P49DNx/PyQcWtcjPP6N5ZC4fHR2Rnt0X0Ln1oGuHe4oqwyKdtBXXYo7cJ6cTiMfj7V9S/wCBUZCgRKZ10wZkAPGTCZkxJ1Q0yEAIOTOJx4K3L79VXB8Dbe4a8osXt5fbfG4K8v5cNNHf2+UmzUEcno4kt6JlETygbm2gr5+g0Q2apU0Cm3fJGODaefJeVPpevPyjTLioZgahpMRAkPPNnbLngrsx3NOJZS9vMXaclxb5rF20d3msF87bm8sY5EV63UKyFotoYAlug+OuZO1qwAkYnSSwLFj1HivPTt6kAJGJY5Fix6jxTtZcnwM3JJOGwZKObk0eMGakxUYZmWxM5thMXVSgHqgrTdu+imn+nqCl5pHcfS/Szt2KswLPwUloR4EV7aqUVz9kfaL8z9ybnNzpC3Gbh1vprRW/EkuaDdEUA+6zjcT8OmvKV9h13pqlvLOLdPLqdewpepvJ28UYP5o7r8NPN+bK8CrRsFMfp+AUjb07dtekjEAYLxxxzRigBF1cE4qJe4lkL/gPKrcipFhLMv8ArQ0lH/V1z92p67SoOh+zFdfZKvl3tKX7Q9+C5M9przIw8tS3sraW5tr+B0yKxiojjUbllbwAVhT9uvlFS2qV4nQHYOerivo3qKNP9NqkQCDh0nkutbCHefVYeVew+nXa9I7V59T9TMd2Ph6Zfcvm19WYaBmpRbrRNx8e2vp0YuuSwCXKCRXjbqrqVYfQRQ6lOmJxMTxDdqcZMXVYtg8dbvJEbf1ChKlnJJ6ft18DuqHkVpUz+EkL1cLypKIIKjmfwMC2j3dmhWS38zQ1qCn81Pq7693/AK63oWV4baZ7lXLonw7cl5n1RayuqIq/ih/6eKaOM4a9yd6ZrP0Y/kaSCa4RpIhJ3QFVZC3XrQEa+ub7d1aVIU6WEpHM8I8e3JeT2W2hVraqgJjHgOJ4Yq0Bd8vtWAu8BZ5ZF+/PjL303P8A9DdrGP2CU68pGdePiiCOg/UftXtTRtp+GoYn9oP74/Yh8r7kYfAi1XM4nM4x7lmVUntAB5QCSrq7I46/ysddjbrOpe6tAZmwlhnyXH3O+o7cY+ZLUJOxjjlzyZR/N8r9veX2UK/1KmLubYs0UtxDIjKCKMpDKAQeh6HXB9Xf6/rb1QjHSROJLSGOeYVVp6jshj5jdYITl8vhP/8Ap7P7G15T/wDX93z933rp/N7b84Vk3NzBZ2893dSCG2tkaSeVq0VFFSelT2+GvoU5xhEylgAq6dOVSQhEOSWCqLM+83FrRkjxtvc5rcKvNGPQjU/D8UBj+wa89ceoreB7gMvd8fsXqrX0ld1A9QiHX3j7vtXMPuD+tleFckyWBt/anNZqHGwWs75C0rcBhcR+oTtjUbQlaV61o393rfQv61zATpiIBJHeJfDqw+nSoVtkoW0zTqzkSAD3QGx6y/06Ey3f647pLfDXcHtnlhBl8te4npZ3DmAWdxbRC7nqU2QTxXInR6U2qVrupqBurwkgCmGiJYk8QS3WCGI5q0bTYiIJlULyMcAOBGJwOBBcHklf/wA9+Oit7G9Pt5nXx15bTTJkhj7gK0sK28noiPeaFkuAQzMFJBAJoxWyNa9JMNNPUCxGo8yH9ypntlgAJ+ZU0EODpHQW96uzin6qcVnnxUdxwLMWgytlf3kF1IyQKqWFzFandHJVlMrSlkDEEqpNNUnfBQB82DkEA6S/iBPEdGK0Q9L+dIeVUwIJGqLHAgcD04K9+O8/4xyeWG0x1665GaIynHTRuki7RVhuoUNPobW+z3a3uiIwPeIyI+gXGv8AY7qyBlOPcBbUDh2Z+5S+VdyHpUjW4grlOoJyLm3HuMN6GTunN60XqxWMMbO7jqB1ptFSPE6515udC1LTOLOwH0C6u37Nc3w1U4912JJAH2nsXOfuV+rfj/txaY+4uuI5C7bJm5Fs6zQlFa2jEm11qrAuD0P3VAYuygCuS13Wd2JeTDGLeI8y3AFdO59ORtDHz6uEn8I5B/xEKA479emBy0F3HbceltMta2uUvWxk9tOZDDiYnnm6hwgLRrVat3O1qNSrq3d9TY+XBniHc/iwGGeaso7Rt9T/AMtR2JZgPDiccsknlv1+cUwd7d4ufHJmbyxnkgvJcfBO0EfpW3zG9Zd5jlViyICjdGNW2qC2pUbvcJxc0oYgM5IzLZKNfadshIiNaeDuwByD54e5Tv2+/V/xjn7zQWXGsj83BbC6ugIpYIoRv9No2knTazB6qNpNdpPala6+6VrWL16YY5NIY+xOj6eo3cmt6xwz1ROHtGC6H477h8b5FJbWtvPJaZO53bcbOjbqrUkB1BQ9BXvq+z3ihckRBIkeB+3Jc/cNgurMGUgDAfiH2Z+5QuP9PHEraewnxebzVpFPyax5bzKK6uBkHz+SxshntZLuS5DGMrIQWMIXeoVW6KtPQRvJgHAZEDgz/Tits/VVzUiROEC1M04MNApQkGkIiOeGWp2JJGZTBzf9KvA+Z3HKcvcZPI23IOSXl/eDJOI5orYZFbKKWJLekYZUhsvTiLNVBI56mlN9vu9WjpYBg2HNn49Zc9QVVt6ouaMYUwBoiAGxx06iC/SZOebBVty/9L/M+RZ73E5EPcWzyN5y7B8gweFS+trmF7ODOXFsyRu8cssWy2t4WiURQpu8papqRqtN/o0oU4eUQIyjIsRiYA9APeJfEnoVcd3pilCmKbaTEliMTEH24kviSi8r+nvlOM90sNyTgtpYWPtribfAYq44TZ3bWTX8UMt7c3d3cyK0bkW95NFcGEuwuaMHrQA3UN6pTtZQrEmqTI6iHbAAAdcQYv8Ah4LmSuNce94sVFuIcP8A1R43Ex2eX5Nyuxz3JOX4Cy5NkwYbxLS2Wa8ly2WspZby9i+XkjMUWz0YUHk/Bru1tuLrapzeMIGMaczEYhywEISAjE6gXPikc+9kufU1HLmE+fqnxmTksOAYrJXGQ/pDhUUmTzPN8jJAFyWSaL5G1tJ5TGYElZDNPJJMsUIOwb0Lgir0xVhrqyiB5k8BAP3YvqMgM2fTECJMs8CywbgMIv4Ri/Tk314sFWGFl9zeLcDxfC8DneW47mPPefX+OGYsIIbnGwY5cck8a4+a9muhOJ7JDPbG1mVfXLBpFCderVjaXFzKtUjTNOnSBYkiRlqbvCIi2mZ0z1xJ0ZAkrnvWp0xCJkJSmQ4yZuDvmMQ3HirDw/uv7xS+2l1mLTL3F5s5djeJYW45DiI8He+muVNpJcfP7rq1unkS3eO4XYPRYuxdioBzVdqsBdCBiB/TlM6Ja4+HU2nuyiAZAxx7zAMHUo3tx5OoH8QiHGk+Js8QcmPJNnDf1Je5fJpfcKTlmOxNlxXD8elvorWfGXtvG3rvbW8W+5tzcyIr+uxLbGUCrVCrqe6elLIUqdKBkZVJaS0oks0iWB0hw2GIPDMrPab/AHIqSqSEQIDUMDm4bEOW54KxuBc/t+J8g5BwtOJWaWuKu7+O4zdpd3VxdX6461+am9H1bKOGZ4VIjaMTLtYE0p1Plrb0ZbWdnCdCZeYiTqEfxnSNREjIROYOkhulde/9X3N9dyFeIaLtpJyiNR0gxYkZHvAqaYD3+43mcvhcF+QZG1u8wsOyWFoLiBJbn0zDFuDoWLCTr06UNAw6631PRla2oTnCUNEHwYxwD6jkeX/Rcaj6woVa0KMoS1SbEMQ5ZhmM3/6q+4stimy0/Ho76N8zZ2qXtzjhXelvIxRJD0pQsCB11wP0lUURWMToJ0g8NQxIXoxeUTXlbiQ8yMRIx4iJLA9RKdV76irVV3Ls0uLyuOxdilpe57OzK2Owk12lrLLaQyRDIXMe5WLi2ik3kAeY7VqC2vj/AKpsdF/UniIEAuz4kFh/EQu5aVdVMDinWO3M7GKlUIIao6UPx1ydnsK15cRjTwYgk/lY59fJW3FSMIF8QeCdsZi7TE2/ytlH6cW4u1SSxY+JJ/dr7jUrVKxBmXIDLzdChCjHTAME/wAaBVFRqURgrCoH7lYCDO8e3yqxbFTLdJt6ErTZIK/Chr+zXW2iuaVdhlIMuRvVpGvb94eEuqF/IcSqFfkkNQakkk/bXXqvOm+a8gbWk2StL8ssP/hx+/8At153zZc13/JhyVq5nDWGfxtxi8lCJrW4HwG5G/ldKggMvgaa87c20Limacxgfo46V7Czu6lpVFWmWI9/QehUXlvYuUSI2BziNCV/EiyCkOG/0XiUgj6xry1x6XL/ANKeH7X3L2lr6zi39enj+z9hP1quOW+zHukcZcWfGZ7b531bZ7e+hvFhHprcRvOoMi1UtGrLXae/7dZqewXFOoNQEo45HowwLHNlun6ps6lM6ZSjLDMdOOIcZKlcZ7HfqxssPk8Pm+YYi/uxiprTCZ+zjR7k3zrEIrq5d1XyofVJVVqWI/l8q7a+1UxUjKFGTOHDhgMXAx6lit9/enKM68QWLHSXfBicOtDyfp9/V9K9zb2fuHiLiG6N1HjbqfZbXMCvbLDbyTpFFKkhR0Mu0Ggd3+8FUavp7TRkQTRkDg4d+LnHVyw9nB1nnv8AMPEVgc2Okjgw/Dzx9vQr54d7Ce5dtiriPlmdx8l619LJEZLl7qSO1Kose90hQNVg7DyjaGC+Gslx6cq1JvAxiOWP38G4rZQ9W0acWmJyPPD7uL8FeXF/aPEcbvrfI3t2+Yv7UVEbxotusooQ6KQWqpFRU66NjsFK2mJyOqQ6MH5jiuLufqitdQlThHRE9J1Ecjwx44K1z1r9Ou8Q68uCyqjl/tfiOR3s+TiuJMZkJ0ozxqhhkk8HlWgYn40bXC3DZKVzIzBMZdGRPMr0m1+pK9lAUyBKAPF3A5A5dWCpPlHspzoYLMLxvIY24zklpPHiiXaLbMyEI26VCo607/v1x4en69OYOoGLhwCRh9PuXoZerLWrEgxlEsWJAOP0+9Uxh/Y/9UNteZGXJXPFry3+XvUxeSVo5MuTOs0lrC8gVIxFDM0W40NQnQMSSdlxtLwGmMncPHV3cGeXY7Y9iy2/qCHmHXKLMWloxxfu5c24dqYE9hv1nqk8Sck4teRbQlrcTtDaTBzAUaSVFt5ldfUO7aCCSFqablOmG00pvLRMdBk/HBjq+nvWeW/yg0fMhLpEejFxp+H3K7eB+x3uxBirped5XGDJmeL0pPX+Y30tIEncNBCihXuFkZQRUKRX4DBd7BOpP+mRGPIkniW58GdbLb1VRpQaYlKR4gAcA/Li7K7uNe0uMw9xa5DJ3jZW8tyW+X2KLbd/KdrAsdvcdR11qstgp0ZCczqI4fh+1czcvVNa5jKnTjoieL973YYq54SSn1d9d9eWSxFQR8dWvgojNNfXse+qGZSRlv8AcJ+nUghEeOhCbJlSUTxuqyQzBkmicBldG6MrKehBHcHSjgXCFG87wriPLLLH4rknHLDM43GFjjbG4i/Ct90TQH0VQrs/DYp5ewPTWu3va9vIzpzMZHMjji+PPHFVVKFOqAJxBAUesPZH2xxFjb4vE8a/L8Rb5e1zi4VLq5lszeWiyrGTb3Essew+u5dAArsdzVI1ulvd5UkZTm8jExdg7FuIAL4Bjw4KiO30IhhHBwWcs4fgetREfpv9t8bj+TY7BLkePW3LY7WzyQsJoleLH20hlNjA7xMyxyudzlizmgG7aANbKnqe7lKnOemRgSQ4PiIbUccwMmYdDrJLZbcRnGLxEmBb8o/CMMjxzKY7X2GvLWC7x9zyy3z2Fj47lcJhcTd482ywzZMl5LuVre42PLJJQzSenvcCnTVx9TRJExSMZ+ZCcpCTuIfhDhxEDwjUwWCWxSIMTMSjolEAxZjL8RY5v4izlDcS9i8/heX4TN3+TxuUtMVPazyXKPPHIVt0ACJC6SeZSBRjJt2qBtU9dbrv1TQr2s6UIyiZAhsCMTmS49o0u5zK5Vr6Wr0ryFWUoyjEgviDhwAY48jqZhkFf+Owl1BzPlHI7m2tkhyllj7HHXUUzvM8dqJGkWWNlCpR5Om1jUU15+tdRlZ0qESXjKciCAzyYBi7nAcRgvRW9lOF/WuJCLTjCMSCdREXJ1BmGJ4EuiuQ8jtMCthbMj3WXzs7WWBx8ccrCa79GSZEmkijkFvGREd0sgCL8a0B5cl1wopisFlVL5vOTPLyDNLBLkMcLgXVnin+XiSazxshhhcQGRC7FhudvM3gB4v1Xs1W+lSNEOQSD1cCepbrSvGm+pTKCBYVAHUn7x+Ou1te1UtvpCnDPieZWWvWlVk5yR9ulW3MOg7A66sVUEZq6JcIKTnhS5gmt5RWO4jaNx9DCh/jqcZaSJDgkYCYMTkQuYL2GS1uLqzfpJaSPFJ9akjXtKdQTAkOOK8LUhokYngVYvm+OuA67Lq3gQx6GuuPEuvRlVvk/dTi+Ha8/MUvbWGxuHtZ7yRIEh9RJDEaO869CwoK0rrFPcqMZmBJ1DkCV0IbTcTgJgDSekJuf3q4NExWa4uYmVpEZX+WUhohukFDcV8o6n4aj8zonn/KVL5RcD8v8wS9x7rcRmhsLqxtsncW9+yx29xHDCySs4JVlYT0oQDqNTdLZ21Fx0FWfJ7lgWHaEPc+6vGscIpLyO/sRNIIYHlW3j3yN2RSZxUn4DUBuVGXhJ7ConaLgZgdoWYfdbjfzs9lBHftkLRVe5s0W3Msav2LoLjcAa+I1GO5UQNTlubFHyi4dmD9YUt4/wAxsOR3d1aW8N3Bc28IuHN1GiBkZtnlKO/WvhrVQvYV30HJZrmxqW7eYBj0upZrcsSg3IOe8fwGRuMRfJkJby0t4bu5NratLHHHNv2FpKqKn02+rx1jubqlSIE5MT1rbb2NavEyhFwOpRP/AIx8KKhxJflCiyB/l1oUckK1fVpRiDQ+Oqf11H83uP2K4bXcfl94+1GWvuzxacPJbW+WuY4naOVobP1Arr95SVkNCPEaR3GgM5e4/YmNpuTlH3j7UVB7u8SuLSG+hts01pPCs8cxx7qPTZd4Y1YUFOvXUxuVuMNXx+xL5TcnHT7x9qCl95+CvbW9wJb8wXcghs5/ll2SyE02Rt6lGavSg66ZvqGIfHqP2JfLLjNh2j7Uq3udx1BWSyzUaAjdI1g1FBNKmjHoNVx3ChIsJfFOW13MQSY5dIVnQChdT4HrTW1YETqw5KHFNr9Hf6zqhTRNv906kEIn9500JtP3m+vUQhNmSz+E49DPe5vK22NgtLS4vpvWcep8tapvnlWJayOsa9W2qaakzoTZLzqxcXJxuA5HnFt/yxllssVOIposqA0U0Etx6KSpCh3T7WJiH3hu6anEMmEm3K72W8itW4RyOCN8neY03kkNp6SR2kZkS+YrdM3y9wfJCQN5b7yKOuoSChJNh59bxWAvrviPLrMjDvmZrFsLPNcRokvpG0KWxmDXR+8IUJYp5hqLJMndeWyLJPDZcP5JkJIL3HWssi2SW8RiyCCQ3Ucl1LCskVsp/H21dG8oVm6alEEJgLzJz3NqIZfkuD2Ey5W0vmt5RkcqoP4eOvLKfatrE3eV0likp5V/vatBwTwdH4vjuKwUt9dWMHqZbLpaLyHPTbTe5KSzgW3imu5FCh2CL4KFqTQCuqyXTTtpIXlUsQPt1BnUCnFV2/Vq4RCAttSAZJ0lM+xenc+GoTkpAKouScTyOQzc1xjoV9C9jEk07tRFkA2sD3PWgPbXbsdwhToiMjiD7lwL/bp1KxMBgR71Jv6WyP8A38P2t/ZrB+uitX6CXMKXRSbCPHr21gXXVUZvjfDxZ2l/kMfk89NkcldzXVrZywPHbSCeTzzRupIUBjToevhWmj5Nb1DrLvLPErqU91rwgIBmGWAUItvbD2gnyAnm4dm0urJ57q1ubi5EgaVrd5JAAyspDiqEEU3dKdtXfKqTM8m61H5jVd8OxTy14DwOTEcZNnc3uLt4skkIx9xdRLJEkQmWhrHXrStdUnYrYkkguelWfOLhgHDDoUbyXHvbTPNj7PM4LPTj1VuMU5lUILhQGU71jVkIWpqR0oQRqUNkt4eFw/Soz3WvPNuxEScP4BYcmjyVtxfOLlc+1va5TNm5t0RYmkeINIQGBEYhVjQfdZfpGg7LbmAhiw6UDda4kZYOehWPacdwnHuRkYW9kuxc4tjPvmSXbsuE202AUrU99QG30rX+2+Obl8lmurypcNrbDoUzRwwrqUc1jKqzk3EsPnMpyy+yV1dlkssfbPibM2/q3ETLICFEwqf8Q+PauiptdK6InN3HI/cuhZ7hVt4GMWY8wqiyHtL7YZaVXyOFz4S89NZIY2iihhMT7YwI4Y1VKFf5RTua06mcNppwylLtH2KyW51JZxj2H7VY/F/bPho/O7TH32R4+kVy880c4tEWaSUujSIPTp19KpAPj9OqZ7Bbz8RkeGf3K6G9V4BgI9n3qPQ8W43j+O8esJbnMZmK7wVk14bMWrIizQ7SjVi69FNaE06VpUVXyC3d3k/X9yXzmuzd1ur70i/tX7byYfH20FjnLvE4q5S8w8aLbL6csk6qXAcB1pvLmvTYD9Wrvk1HUZapOcDiPsVfzOowDRYZYfepZHwvBZLiN1nXy1/jbk208v5RdvaeqrRFgFfbGPvba9PA6pGwW0C41YY5/cpz3mvIEFsej71bUZ/HP+kT01IrkIz6NWmQZRbFN8wpI30muqVJL2x+8NTgkUByHkGD4pgsvybk2WtsDx7A2sl7mczeyCK3treIVZ3Y/YAOpPQVJpqyQfJKOa5jsv1YcFsFeT3L45yP2hGUh/Mfb2HklkzTcpx7sFhOLhtPVka8fcpNg6i5UMpKUJIQpHhipKDfp95r7le5fvfzHKDisXHPab2+t8jj5cjyFlynKpuQ5W4juZMab8VSzSyiVTLaWzMkJKRSM0qsEnKIA6UZLu4kmpJqe5J/fqpiEnTbIdzM3xOoFROawoJYAdzpAJJxUEKB8NaAELWRqIfiRQajMsEwm/VamvaaEXFGVAYjvpxzSRGrVBauwQEn9moyLBMIByWJYmv0apOKktNJkpJz1nVqbR3GtSgmG5sszfWmNx2Ne+xFzaXNxJNPZ/Jul2skrOqyepKjhad6UbvroUq8SBHipOqxk9yeM4jJZGzyXuSy3Ns89pdY+dYN0EqRtCw6SkVWTz/X0B7U5NX1TtdKZhOvESiSCMcCMxktcbGvIOIFlaGCyEuW4/gL+ztn5LbG6GQjzm62RZ7cGRQVVpmPSoHf40p211Le+o3FMVKctUSHBGRCzTiYSMZBiE3R43mEc0DDL3jwEbL63aK0YMtAfwy10zKdw6GpIBIqdWmvFQ1Bb5Ww5DdRvFb5XL2G+B4hMgsd4dmcq9UnQDaGAAA6gdTXrqP6mCbp6jM815YzSWUluLPGCzmupmiLzy70YuRE799pJJPc6z3FWM2ZIp2ikKkA9tZxgopivrKQ3WemjxKzXeQis1xmWNtaXQi9EESK0dxIhp1Ip9PQ620KsQMUxgohK2Ys5YY7mfExyxUNxb3FriondSxo1C4K+TsKU/YKknf0IFpTiDyJAKsESQ4B7FI8Bd25fJyZHDWuctJH2417O1x1I/M5ZX2ykA7WQU3N2+1wvKMw8ZAjox+CRDYFMQsM1HYYGzxOItsUMfjLS2vIJLLHz+pcRJtlNSxoOihSG+NR21P9TDmk4TnLZ52a0ZlxdpZ5F1Wix43HvAj+orE7nl3ldlVpSpPXcNS8+HNJwk7ewvo8byO1zOHXK3OTj24VxZY2FbUmEIwLRlDQv5q9SNRNxDmh1NVP4m7v1rrmpI/x/gdNCCuP8T9mlPNAQlzksdhcdksxmL+DF4nE20l5lMndOI4Le3hUvLLI7dFVVBJOpQDpFcHc+91sZyrO2nJOY2MWRxXGpIMv7a+zGRuVx1jbM3msuU87upgUtA3+JY2Lq0wFHWGW4IEWnTgmAyrX3S5F7nYvhvJ/eW3jS555Hjza8W9z+XwvjGtheyRwy2vt3xKYtcrKY5Cy3d2BPMVFVdSFWEAMvp7SmF9H/bzhXHPbrh2B4VxKxNhgMBarBZRyEtNKzVkmuLl280k88jNJK7eZnZidVaiS5USpk7BUZj4DU5YBRATd8dUFBzS0C1JPw7acQ5SRM00NtE89xNHbwRisk0jBVHh1J1f9OSYDprly2NaaKAZC39WVDJFF6i1ZR3YCvUCo66jKJMhHiQ4D4tzVgiWQIzOIMcsv5nbenDL6EshkAAkrt2V+NTTVIkCDJwwLfxZN2p6C7MikyGMMzwNkLcSxIJJYvUXcqHsxFegNNWeWTIxwcByH4JaSl/z7C+lbSjK2pju2CWsgkBEjGtAtO/bSBi0ZOGkWHT1I0Schsl5s9hES6kbLWqx2LbbtzIKRtQGjfDodSlUiBIkho+Lo61Hy5YdKRkyuNe4jtvzG29eSMyxQ+ou5kFAWHXt10iDrEPxEOB0c1LSWfgg8fnMNlZ7u2xmVtb+5sKC9ggkDvFU0G4Dt11RCtCoZRjIExzAOXWnKEohyME5nUyq5Jy1lVqbtbFBKRSSRurRuUYGgI+nRHAuEL5V88dTzfmLh9x/PMhvY/RcPXX5+3eMv1td/8kviV7a2k1KP7o+C+kHstcP/AMKOFQqNy/lm2tOoBlc9Dr7R6VmflVuP2PrK8puJ/wDcT61YnTwII+jXfWHJJyKHWh7+GoSCYQBUqSGFCNVqSxoQjIX3ChGmMEl87P1HX1jD7s5i3mmhSf5DHN6bsobaYOhoTWnTXxb1rbTnuc5iJI0xxb9kL1W1SAtwOk/FX9+mae0PtrLOk8IimzV36bhlCtSOEEg1ode09CUjCwlEhmqS+EVy94L1gf2R9avWzz2Evcpe4eyy1rdZfFosmRxsUqtNAj02M6DqA1RQ69q3FcplJVO4A6blJJTiqg07dtRTQnbQhHofIvxp100Ie4HmXp4U0HFC+XX6pfc/3590vcO39gvYj2v5dJxnjV+k/uV7hnDH5W6urdlkt7XHy30ltaOkL/iepLJsMgUgMqDdopRjEOSmys/2o/TB7kYxbfI8hyeK9uZElkvXvLdk5Zy17mbrNcfmV/EMdZTyfzzQ2s858bltOUwyTrqjivtTwXiN8c3Y4h8tyqQf5jm2euJcvmpSe9b+8aSRAf7sZRPgo1m1EhCtWGuwfWa6AhazGigeBNDqVRRig2pWg7aqTRsCbU6jqdWQSKqz3vf0/bPkDAkEG37dP+1GvP8Aq6Wnbah6vitm3h6wXGMXvFcx3+NyaYaMvi7E2EcDXBo4eh3khOn3e2vIn14Y3NOuKPgpmDas8Rjl0LrDa+6Y6sy+SZT7nXyYxMV+WoyrkfzSa59Y7pHEnq7CKdBXprAPV8/00aHljCr5hL5nUZNl7Fd8tGoy1cG9zI//AIx5Jshl8kMTEsuXtUsynrNSJYwwDKadT5q61y9d1PPrVRRD1ICOZ7rA45dKh8rGmI1ZF8k3f8WcjBBxu3GLhMfGX3wgyt+MwUoN/Tp3r01RS9YVBTtoCkGoY5nvd0jHlm6kdtBMjq8SCuPdvMS23IrQ462EfJ5vWnb1HLQEgJRPj92vXTn6srVKdzT8uLVy5xPdwAw7Eht0QYlz3UpN72Z/8wx2WXG2S3GMtGskTdIVkSSgJbr38tRTWr/mNybilW8uL04GPHEFs8ehR+Ww0mLnEurh/SxlJMpyrnt7OixT3ttFNJGhJAJmqQK/Cuul6SrmtdXNQ4GbSbg5k+CzblT0U4AcF20kZfr2Hx17sB1xSnX0/wD9Kap0q1k2PGVFe4+jVyqSa/eX6xoCF8ZPcj29y157mc/voM9ZQW97yPIzrBJZlnQPcsSpYSAMencj69fH9x36lTuKsJU5ExnIOJciehest6ZNOJfgPgvp57Z2N/NwDg01t8iYI8aodblXL1E0hNCopSmvoXpWX/4q3/d+srz99/fn1p99teF5jiV7za6y19Z3qclyYvrI2xO9V3Smkw9GEbqOo6bu3fxPpNQOSxyxVtNCyqpJFW7r8NMhktKFni3Cg6MPHVUw6YQJBHQ+GoJrKsVYMD20FC+Yn6q+IHkXvNkcjHmGxzJicdAbf5WC4U0hJDVlBI+927a+Xept2/SX9SHl6sIl9Rj+Ecl6PbaeqiD0n4rpj9MnGLyL2hs8VaZ+WA43LXccl0LeMmescHUoGVUp8Br03ou5/UWdSppZ6ssOWEVzt1DVgP2R9atvjXC8/g+Y8l5HkOXz5rF5qCOGxwMsbqtm8ZQl1JlZKHaeioO/fXrXcZLmqy4riJGMTzRo+0yemzqG2r3ahNaCvU6jihKLeWM6R+le28on6QMkyMHJJFEIJ3dQR0+GmyELvjkL+nIsnptsk2MG2sOhU07EfA6i7JI+E+X6tSAfJGSTuR906CGQswOxqrMSoHlUnoPq045oKWf7jn6NTlkkE26pipJyQUVfq7akEkLcnzCndR1GlOTlAwSKDcyj4nUU05dug7DV8clAqo/e8q3txn0YdB6BP/mDXl/WEv8A8ZVPV8V0NtH9YL5us1uqnaAB0+2mvh7l16sIclGNOhNK/u0YpuF4xLt3qaDr00OXxTKEMYd2DdNurRMgYKKSnVFCgUqR2I+nU6ZJQE2kqySBqeHT9utYcEMkQuuv0mWkQzvKJkrumx8atX4LKDr3HoWZlcVYnhEfFcbdw0I9a7tA2inhr6cAy88SjtZnWhBUr3+zU1UhWhowK/EGmmkvjd7knCJ7i+4An5fmsdImfyPzFjE5EaM07ErGDAxofChP0a+MbgLg3NTTQpyGuTE5+I597PrXrLf+3HHgPgvpp7VSwJ7bcIDXs0BOMXbGi1BHqPQn8Nuv7dfSfSwPyuh+79ZXnr7+/PrUp4bkMbPk+XflfLMtyG5sbsLkcbklPy9g5kkHo2m62hG0EECjP0UdfE+jMjp6llViwyb1Z3AZK7n3DrU9OmiJcYpLSQgsSoIXwrpoIQc0dfMP26rkEgXQpFNQUl8xf1RLhf8AjNkWvs9kMNd/lOPKrbTNFE6CLoxBRlLAk/Tr5b6n8831TRTjOPdzDkd0dILL0e3f2Bjz+K6T/THcYKP2js68lv7WzfM33yl78wyS3FFh3NIxjJah7VA16j0b5n6SpriBLzC4GQwjkuduh/qjqH1q7cVccbl5nl48dyzLZXNpYwm+wNzczyWMERSEpNFG0SxB3BUkqxNWbp1OvWl2yXNW+Y9v8NnMjks1cAx5+8tDYYzNAMZLGEwtC6xoHVW3eo5O7+99A0RmQh1D7P2Dw9vc4W+m5FkLq/wVxFNj7nYIgqxTNcCPaj16yOzE7v5m6UNNT84puplxTgNrw0zx2t/LkPmJ5rmSS4iQStLOsSyMXXqSxi3N/eYknVc5aklP4C9Su0/QPHSBZLNbXKnYCVI69NEsnQEnbAljQV6acUHJLyqfTc0Pbv8At06iUUAqk0oCamg1UFJOe1gB5T0/5NTAQm+Qszudp6HrqBzQlbZepb4dBpxDpIljtBJ6U1cSyQDqmve1q+2nJGZto2Rlm+Hm768v6tD7bU64/Fb9u/vhfH/5TPNjL5Iee2D3bzwPHeEnYkHoyD0z5j5iev7NfPPMoebEm3kzHDpcYr0ePNLwwZx8ldSRcxsxZNYBLa1qd8c3yoCynr23Vf6tQlOiKcQaB1asTzGrLswRi+ac4bDlZsrKP+rLB7pZZjdy0O14z6ezb07qAa/XrNOta65HyJMwboOPx+pHebNOMmP5X6mcMWesdsjH8mU1BirOpAk/DPZKr49dZxcWjU3pSw8XTgcseePBSAljimWWy5k13g2bO49o7cD87jBNZALlifT/AAv+7ov8vXWyFa00VGpyx8PR3eOPPHil3uaYnsOZLBm/V5Dj/VlMX5S6sfwgJlqX/CHdDTx6/braK1qZU2pybHV04dfPqSx5rvf9FyXkbZeK/vI7+9SycXV5ESUdvXr0qB2Bp213vSEonca+gaY6IsD7Fy91/tR6133r6UvPo3WRaUEPt1aqllfvLX4jQEl8pub5Sxi51zaN76BGts5kBMhkUGP8dz5gT06fHX553q0qyvaxETjUk2Bx7xXsbZvJj1D4L6Ae0kin2y4SyuNsmOBQ17gyP1Gvs3pYEbXbv+X6yvM339+fWrHt8rbzpNbWl5bXUls+25EciSvE1KBXUE7T0PQjXoASAwWVGC8OxvUG6VgF9QdAQDXqNS1EjHNCUV94B8fHUhLmokLP7OmiWSQQcsZU1A6arU182f1Iplm93smcfkLOCH8tsN9ncxM7F/RFHVldTSnSlNfIfV0qPzCp5kJEtHEFvwjDJek20HyB1n4ro/8AS/JnIva8pFfY6e8ObvPnLiVZUifyQ7RGsbVFB0NSdev9E6DZT0xIHmFgcTlFc3dP7o6h9avvH3nIrjOZKzyV1gZMTDAjWdvYzTNkVmIQsZ438qoSWpTr93XsCAy5qi/MLPDXdnyu3zWVurSwnxFv+bxQRgmK3illZZYmoSXLE1/1Roi4ZkKJCPhFxDfWT8izgX+nYJLq6RXQHHERrGyPT/EPc+J3H4DVgJTWkfDOGZG8zHG7Pk+T+fyGPs7i6tWYrILaNYUgkR26FqxrU9+tNKUiA7IKbsxjOCY2blEmT5RmUNnJjrbJwxwNILdlUCH0AqeYOVG8nd5u/fqRJwwQjc3N7fWc3JVueXZjHzXV5jzkokSR2huGWSSD0mKMVDhGr8KAE6febJCm3K347bNY5DN5HIQJkZksLM48OzCdkkj3Ex12hRI1SegPU6rg/BJQ2DkvAbyaZLblmVu5LPNz8fnjktnJF8Y44HDHYCwXylZDUDw1YQUypgmL49zW/v8AL2mQv4JZrSfBXaI0kAKxygyPGj08yEld6jx+IGoYxSTpBwO1tFiMWdyiPbG2eF1lA62sXpKHqDvDCpIavc6slLBISdIzcLt5IsekWey1vNjLSWztbiO48+2QSgO9Vo7oJTtY9qDx1Rq6E04LxE+oJ05JmYmZV9dFuKCQqJgC3StfxvjTyp06akJNwQpHteCJYGuHuCGYiRwAwUklV8oFdo6VPU+PXSkcUKpvewFvbTkQBodsX/XHx15n1f8A/wCZU9nxC27d/fHtXyFuLW7NheRyYlnDSwN6MmEgkB/Ck8xhil83+vX6KddfPYVIeZEifA/+SXMYaiMP3V6MpSK1n+ekkbFDc1htMxwyMzf5WhQzLJRhXps/2Pp1GdSPlga/xZeYfzZs2H73tSBxTnDap8jbK2JtgsUspSM4ORVUlY+qxb6qT8T0b/Z1mnU/qHvnIf8AlHTxbHq4e1S4KUvxv1zlHFph2+f6n1LRtz/iLJSdg/m7dx/NQ65Q3ER0DVU7v7WWBHdww+zBS0ppm4fIZca62GBrY1oTbygxfjGT8GjfTXzfzddaY7tFpjVV73SMcG733cEtCan4VNTLqbDj6i+A/wCwmPq0mWT8YE/AV8v830a1x3iPc71TDpGGDd37+CNGC7Y/R3jZMTkM3YyLaJ6diSsdjGYoEDTA7VUknx6k9zr1Xoq5Fe/rTGrGA8Rc5jNcrdw1KPWu8nkVB16n4a+mmS4DIn1B8NZNSuQ4ZW+61fq1oCrW6jzLT4jvo4pL5Oc/xWGueec0kusZazzS5u/9aWSJGZv8w/3iR1/br8/btd3FO8riM5ACpNmJ/MV6+2iPKj1D4L6J+0Ftbye13B90EZ241QhKgkASSUA6dhr7F6WJO12/7n1lecv/AO/PrUrseP4XCzX9xiMNZYyfKS+tlLi0t44XuZasd8zIoLtViatU9TrvErInHTQt0cofo8RpIRysG7atElFlkiop+7RKLoBZfMX9UCYlfeK/GRxU13J+V2PpXsUTuFUxLWMtH1HxodfJPVIrDcKnl1AMIYEgfhGOK9LtreQPb8V0F+l634/P7Vp6mEQWkWbvvkrS6szK0flh3EKyOV3Hr9OvW+jvM/ST1y1S1lyD0RXO3T+6OofWug8KeG/1Rl4cPhI7DksFpEctkExklt6ludqxoLoxKkgG1fKrGlB0FNesLt0LmpPkyZhDm5sNx2zyF41hB+X3FxGhE9xvYNDMS6lkRDUduppqIbiUKPGXnlqty1hxLFCYYyFbZ0jBZ7j8ISW5QSoNm0sqgvTp8NTGnmhPV+/M/kMlfW2Axr5CRLX5GzMRa5NwpRpZJj6gUqpL7aNuBAPXQw5oS98+UONW6x/Ho3ylxNEl9a3MaGq+nudyFJLBWooBNe/h11EITbkm5c4zBx/C8TIWu7ZYnu0H+ZtSrtMzbWqzo1KVoPN499SwbNCcVmyRm9CTiEd1awzXLRSn0QC5efYyxszbd+2Nmev856dNQDNmhBNJmXaNP+HtpZRyTrPczM9s+6RoQ7OAoHn3nbuPXpqZbmmtba7z8C3wxnB4LLJ2S2rQqCohlF1J/mQkqrGPw1UMevU9x00gBxKScbrK8z+bVouLRflZUI8T3KC4EnzGwy7gSuwRecDbU/EacyGzSYBB5DI8yA3YfAwTuLGZ/Rnen+dRHKxVDKShcKA9Oo7fRWAOaaa1zfuus9oj8TsDbnCyz3cwftkwT6cABnFEYU61/b8LdEeaandjLeT2VrNkIRbX0katd26gAI/ioo8g6fQx+vVRGKSrb3t8vthyWQkBVWKpPYecd/o15v1cH2yp/D/6gtm3/wB+K+Qf5W/ylxEmIxEjyNDKIbTI3UO5fSkpJvpVe9Ao6Urr56K/fBM6nEYwieIwb6816HHkO1ONvjpRdFhibUg2mwTJkpwpPy20KIuw/u7+9PN31RUrjR45eLLQPzc+PNvYmx5e9PNvZ3C2gX8skRhJJ5FykrPQogqZCakGlKeFK+OslSrHX4+A/wDGOZ4fXx9inF2y96lAx1o/zBa6vImuF/E9O5kAQkqxKCpC0I8P+XXK/UzDARiW/ZGPDFWsCh58JaObemZykfpl95W56yAsGIeqmtOwpSg1ON7MP/Thi34cupLT0puvMBbFrw/n2UCzg7EFwtISZQ/4fkr0Ip5q9OmtFG+n3f6UMOg44Njj8GxSMOlddfpKto8dkuQQRXc96RaszXFy/qSEvIpoWoO3h017T0RWlUvasjER7gwAYZrlbsGpjrXbzGuvp64Cc9ZlYmwEqajuO2tDKtExT+Zd/wAR10wcUl8YfdfnOTw3uhz+xfimUvLWDOXpt7+2iMkcqtM5qpA8Cad9fHrvZ6NxXqzFaIJnNwTiO8V6ujW004hjkPgvqJ7C5OS/9mfba+msbm1lvMMkr2zxndGWlk8r/A6+mbHQFGxpQBBEYs444leevC9aR6VZGMzK5S7y9n+TZTG/lUqxG6yFt6EF1uLDfavub1VG3qaDuPjrrEMsycJI9pNOq+Gkkhz0OhNbrIyHcPDw0DBCNjkWRQV/aPhp60mXyv8A1Y8+w/Fve2+xmVeS3F1icfPFchC0dPSCkEjxFNfMPUuy1b2+qVIMSBEN/CF6PbqohRAPT8V0x+kXleK5F7U3eUx9wzWp5Ff26SMjLuMUcFaCnbrr1HpOwnZWZpzz1E9oC526TE6oI5LpXH8qwt9mr7jVtfGXL4yFLm9sjFMojikICtvZBG1aj7rE69My5yecjaG/x99ZJcPaveW8kCXURo8RdSodT06rWo0BCqt/bvJMbZjzfKpPa428x9VeQRu1yZCk7J63V4vUFCT1oO3hLX0IUtt+M38XDZOLf1FPLM1iLOLOyIxuVYklpmYShmYginmFKdzpCWLshRRvb3Jsqwyc2ySmPHQ2O6LelZIXif1/8Umr+lRhWtGbrp624IKOuuCZ6WLINZc4urWe9xttYwyywvOkL27IzTiM3CgtJtNeo+99GmJg8EOj7TjGXgLelzLIo8zxtL5UZVVImjKRBy2wM7bz3NQB2Go6hyQniLCZC0uop5eS315aRyMy4+RYwlDJJIFZgNxADhe/ZR8TpkhskOmLEcLurRy9zyfIX5F+96od3Ao7RH06eoQFURkADp5j00auhDpKDhuXsJLBV5pkbpMffzXqG6HrSTRyptEEzM/mRT16Ad/DSlIckKwLNHWMGRg8gUK7gbQzU8xAqaVPhXUY4IKUuHooUdz305TJSGCFAJIA8dJNV/7x4S7z3ttnsNY2kt7NeLEht4QWdk3jfQL17a4fqa3rVdvqRoxMp4MBjkQVqsZAVQScF8w3/SnKkLw22K5JYmR1f1Y55Q4CqyBAWQ+WjdtfORe72JPKgD1wP0ddx6P5vet0/S/lobmS4gi5LEJITCLYTt6a1h9EOo2VDAdfr0jdbqYgG3Gb+HHN1IGkPxe9Lp+m3mcdqtvbZflMEiySOLolHfa6KmyjRUoNtR0rWupar2UtUrSJyw0kcSefSpCdMDxo6f2A9yWlvpIMxmoo7mJlt7R7WNxE5UBWDUDGhFafTquFC4EYiVoCQcTjima0Pzpmuf0++8jxw+lnroXG6X1pXxxCMkioqhVVuhXaev060QgYkvZSbBseT9Cj5sfzoa7/AE9e8073wTLziF1kNiBZPvRmcOu8+NOo6aspxlER/wDZycM/Y2GCXmD866y/Sf7ac14BJyD+rpLm+mvQZPzCWAwINxQLGoPgAuvQ+nKNU3k6poGlDQIh+buufuNSJpganLrtPXuVx06azKxRJ89j4hWT5iMfFreQD966zS3WhHPUP4T9i1x22tLLSf4h9qRHKMICCbl+h6/ht/Zqv53aP4j2FWfJ7r8vvC49zntpyTLchzuRsIbaa3yGQubm3/GbcUmlZ1JUIaGh7a+R32x3Fzc1alNiJTkRnkSSOC70ISp04iWDAcR9q619u4LjC8N45g7+1mjvsba+jc7Ub0w29m6OwAPQ6+qen4TtrGlRnEiUYscC2Z4ll5u8pvVlISjieY+pTSbIWFuKz3sEP0PIoP2V1153NKn4pge0KiFvVn4Yk+woRM7hZiUXJ25I6EF9v2bqDVMdxtpFhUj2q2VhcRDmBRJEMwL28qS/6jBv4HWqM4zDxIPVis0oSjmCOtN812sFfVtrmg7lYWcf9GuqqlwKecZfyk/BWQoGeUo9oHxTceS4y3bzyTRkdw0Lr/Eaxy3i2hmSOuJ+xa47VcSyAP8AEPtXKnu37fzc95rfZ+yjx1zYXFtaxQ/OGjhoogj+Vo2oKjXzT1Ha1r2/lXt5gQIiMzE4BsmXbs7SpSpCMo448vtVveymDTg3D5uP3NqIbiTJT3ccOPgeSLZKkYBqiKASUNder9KSnaWpp1yZTMycBKWDBsW6FzdxtZzqasAG4yA+tXELoMPOssKDqDMvpgf7xGvXCsDiQR1hviuSaRGAIPVj8F45zEwrtnyMCsPAOGP2LXVM9wt4Z1I9r/BXQsa88oHsXvzHG3BDW99byV7gSLX7CQdTheUJ+GcT7QoTtK0PFAj2I2KbavRHmHcemNx+zV5lg4c9WKpEXLOB1prvMrawNWSC7iFOpNvJT7aax1L6nT8QkP4T9i1Qsqk/CYn+Ifaho+WYNAEkuZFp/KYn/s1QN7tAcZHsK0fJ7k/hHaElFyfDGUbZ5H69AsTk/YBpR3q1OUj2FI7RcjOI7QnM5WC5VPRgu3BP3jbyKPtYDWoXsKgGkS/lP2LNO0lT8RiP4gjIrq2hiLzTx2/XtKyof3nVvnwiO8QOsgKoUZyLRBPUHTbJnMP6jJ+YwbjWnmqPt7azHcrZ28yL9av+X3BD6Cna3u7OVF9C6hmFK+R1b9wOtdOtTn4ZA9RConRnDxRI6wUJc3OxiWimdfAxxl/4ddFSoIZgnqDohT1cQOssgPz7G2xrcC5hI/v28o/iuskt0oQ8WodcZfYtUNtrT8Ok/wAQ+1YPMMGASt09fD8Nx/yarO/Wn5j2FWDZrr8vvCRTk2Onb8Oa4lJ/uQyN/AalHeaE/CZHqBSltVeOYA65D7U6W956xDCG5VAalpImQfa1NbIXOvFpN0gj4rJK3MczH2EH4KDXHFcdEWM3uHnLQ7zKAmQQMshYkMPKx6Kdu3se5FdTnuFCn4pxHtTha1p+GBPsSkeFxtxgczgRz3ITJmeoyHrrFeWzjZQwyeUgD0+g7dT3rqEN0t5nu1I9rfFTnZV4eKB7E58W4+eNW1/DHyLKcijvZkmVshMs7RbECbYyAOhABNSTXV5ra8R7lmIILHDrT1Lk0gr6sV2oHiIZGH2qDrJUvIw8Qn/KfqV8LWU/CY/zD60A/J8UvlkuJl/0WicfuI1llvdsM5H2grUNouZZAH2hJf1RhKH/ADL/APlt/ZqPzy0/Mewp/J7r8vvCkP5zj/8AvW/3G0fMKHM9hUP0FXkO1KNHIB1HTXVdc5kK9rbOwZ7aJmHZiik/bTVZoU5FzEP1BWCtOIYSPaUsqhRtRQo+Cin8NWAADDBQOOaElx1nMfx7VZT/AKdT/E6zTtKNTxRB61fC5qw8MiEK2P4/bUNzZWUQPjJtX+J1GG00JeGkD1B1Ke6Vo+KqR1laheGnp/8ALK/Aun9ur/kUP8H/AGlVfOpf5v8AuC2ZOHwUctjIqioYSIPsodEdiiT3aH/aUp71Jsa3vC3XMcYjG2DK2kZPh6vT951thtVeGVOQ7VknuVGedSPuSpyWKdN35laSp8fVQj950pWdbIwl2FON1SzEx2hIRXuCR90VzjxIT1KtED9uqxtsolxSI/h+5TO4RkG80fzfen1JLa+j8kiTx/BHqP8AonUKlIs0gR2hWU6nGJHuKBmwWLlqzY+Fz4kru/idYpbfbSzgCtUb64GUyEIMNiFIrjbeg7+TSG223+OPYn+vuP8AJLtRf5DhHWoxlv18dmg7ba/449iPmFx/kl2pCLGWFu4MVokRU/yVX+B1OFlQh4YgdShO8rT8UietPDp+H5SQB17k61DDJZyXQ8cFvMGWa3imH+mgb+I1CdKE/EAesBSjUlDwkjqKaFufQ5PZYyL0ooJsddXTQKqqxeKaBFYUoaAOdZtYhcRpxYAwkWYcDEfWVeYmdEzLkiQHHiCfqTrfW0E5QTR+p8dxNPsrTWirRhU8QftVUK04eEshfyPCiLe2Mt3ahO4p11m+XWv+OPYrxuFx/kl2oePCYl3A/Lrenc+Tw1Ebdbf449iP19x/kPalpsJhUUUxluH+IQakdutf8cexH6+4/wAku1KWthao6iGERU/ukj91dXU7anHwhlTO4qT8RdO7tsH0f3daiCFSmmS3t5ZPUe1iZx2YxqT/AA1QbeEi5gH6grBWmAwkW6yiY4N427dqeIXp/CmrRTcM2Cr1Yuk3xGLlP41nFKfHfVv4nWedlbS8UYnr/wCq0RvK8fDIjqSDYXBoDTFWx+pBqv5ba8KcexT+YXH+SXahWwuJJJ/LLcD4bNI7Xbf4x2J/MLj/ACHtWUxGMj6x2EUf0qu3+GmNtt44imAkb6vLOZKPiiCjZECAPCpP8TrTGIgMFmlIyzRXysbj8ZVkHwYAj9+pGIlgQ6QkY4gst0tbWIUjtoo/9VFH8Bojb04+GIHsCcq85ZyJ9pTltX+4PsGqdKsx5oTvq9VKAe4GV5Hh+PZq847j1kv7eynkxl2VNzW5WJ2iVrWNGkcFwKhep7DqddKwt6FU9+WLHu4j3v7lz72tWpgaBg4xw+H1rg209+P1F5HiXK7bMcCyOM5FhuKx5TGZk4u5VchlDdrFLaxY5UR6xwETiMyh3VlXaJFlVe1b21KMXFMagHfE+4rnXFSRmI+adJkzOBh1hVve+8X6rkbJ2kXtJ699dY5Rxa7+UmEZyLR2HS9WS6AiT/MSzEGSi7XhL7o6tr86qMoDLDDjgs/6WgcTUOeOPDH7PrVi5n3f9ybKbKHGe0eb5HNLb8cvcBjDZ3UAjt8hYGbJRz3YSRDNb3e2D06DZu3v+GjsLpXM45R5cDxWeFlCbapgeIEuOGXHJsVBc971+/10YosF7HZXAxW+Qycd1e3FrLdPc2ttbStaiNGjKQtJJ6dSxYN92PcNxFcryscBAjPmr42FCOdQHAcQM/anvjvv/wA9yPOeKcI5J7Ujh1xyf56QXdzPduVigslubYRRm2Xc7yFom3lUqjeboN043kjOMDFndVT2+ApSqRk+luA4luaiGI96/wBS9xwmJMh7LXEXM8rbTtj84cddw2VrIsMzAz2Z3tuSVERVZl9Td0qq7mrjd1jHwY48Crp2NuJ4T7oZ8Q6mvC/cr3+e5wmC5b7VR3VxfX1rb3/MyLiys44ru8uEkkFtHBJtS2gjX7z7ixBaiOG1Olc1nEZRx55DNVVrO3ETOM8OWBOA6+KbeSe83v383ynGcc9iLy2n43fXUWNy9wZLq0y8UK3aQmJFiV9kjwKx2sDRowG8+nO6q4iMcvfminZUGBlPMDlhknA+6PvwOI82u7b26m/PMNyCKLBXlvj7qR7rC3N3fL6seNcwSSSwR28K0DHyzLKy+Vl0jcVTAkxxBwwfDqTjaUBVjHXgRjiBiG4+36k1ch95f1NiGS44z7RX+CntnubWC2nje8luXW4xqwyuQ8MUO6GW5YbZWj6AF9yEGqdac3Hlj2h3yVtO1oxYmrnyLNn9ym2P/UN+pu/l4rYH2iu8PHf8jxeOy2fa3uLyJcaZ7Nbyc2726tCJYpZnSR3Kxqu1z6w2nDK0oSONJnOblaxUqQBIramiSBhni3X9a+h+Du8hcQK1/ai3JVSkgkDepXx2gDb9WuDd0qVOZFOTjqy9vFdO1qVZwBqRY9efs4J1nShDj9usklqW8TB46H4UOmEklB0cj49KHSCajs9tb/1zi7swRm6TCXkaXJUF1Q3NsSobvTr21z504m8jNhqFOQfj4orXGcv0sovhrjh/DJSOfq6j4Cut5Kxut5jtjAHjTT4JpNSYomlWJp28I0IDH6txA1RcVpUaZnGnKoR+GLaj1ajEe9SiBIsS3SVyX71e/XuL7c8t49Ycd9r7vmXG73EZbIZW6s7a4nuPmrJC1tYRyQlo4XmpQO6uGZlUKBuZfBWPqi7vxcd6nQlTnCMYzGLSLGU+/jp46TwJ6F0pWcIac5OOH1YKsLr9Qnv56Obvbf27Sa1u7WG947DaQX0VxYxNiYMpKl36qMt1Mjzm0CIsNZUepH3Rxri+r1qgEr+rA6iJCOiMZHWaYFPTjCJ0mQlMy7jcVfCjCI/tj2u+T4qP4z9V/u1Hax2/J/ZzL5PLZWTLnAWOIa6sprmPD2SX10gtL+Npm9NWMQmQmOSSip1YDWe8229qnRHc6gi0NWuWXmy0ROqEmAkcREtIRxOCnCdMYmkOOQ5daN5p7++8uNTBXXFPaGfKNm+ELyKTDXcWRlmtMlImQb5ea8gRYQkT2tujRsqzN8wCoG0rrjWvpmlVnVjcXk3p1/K1iQ0yi8cQJS1ajqkQzx7hfmr5XBAGmAxD5Jtxn6kfdrJXsePu/aTI8Yjylktrir/IWt56SchOXMX5fN5wGUYykwdejSBgrEUXTuPS9OhSMxdynEF5CMxjS0OKgD5Gr3Q/AjilG5Mi2gD2cXy7FGsX+pv34jjwk/JPYS6SC7t5DmWsLTIGe0uQlzNBC0JaWgnSFVRg7gMyb9pk2pdc+hrEymKN25BGnUY94YCRfjokccsOouo3s2DwU6f9QfurhsZwTIZX2Vzd9fZ7B/8A4rwGLt7tZMdnbfJSWV3CJglwvpFYqwhh5/UjZpFj3OMVD0tCVavCheaRCXdnqDTpmGuJwlHEv3iCwAlgTgpSuiwMoO/BuLsmLK/qb91L6bF23G/ZLkGIE99koshkcrZ384a2s1uBC8EQt4NrSNHGW9ZloHARXqWXdT9GQpa5V70zAEG0SbGbEuTKWTkBhixJIZlA3ZPhg2eY5KSYP9VHJchzPA8Dvvba84ZyHkdhlb7Hx5LJuzFLPHm9tRBAbWJ7h5W/CZBs2srhWbYdL5Be2FtUu6N/MwpmETp1Dxy0SfvEREeePA4OEefTqSEZUw5f3Jgh/Vh733vFMTHjfZPNWXPMxZ23oXN9DkfyZZ2eWK4uGU2aSiJGjFI3ZX8/Tci727n6G9t7qRnulQ0IyYtKJmzCQDGRGpjmxGHAlhQTTlDCkHKn3tZ+pz3r5Fd8f4zy72WuLPNXtzZxZfk7+vY4yOK7gub2WWNJYZJCLeOFYRVqvL0b06rXp7hv11ttua1O7p1KcdbCcNVUmBjECWiUB3pSz092LPqxKphawqyYwIOGRw94K7jxeRnvoVkmtGj3V/HXb6Z+oFi2vQelPUN1utCM69uYv+MafL9jzM354LJeWsKUiIyfo4/BlIunx16RUug9WqteBp2qNJCSngguo2huYUuIn+9HIoZTTqKg6nCpKBeJIPQoThGYaQBCZG4tx1qk4iAH/RDD9wNNbBud0P8AyFZTt1sfwBAXXCsDN1SzaE/CGRlH2EkauhvN1D8T9YCqntFtL8LdRTG/E+LxuVa7lUr0Km4Xp+7Vvz65/Z7PvVXyW36e37km/F+LOBsv3iIBFRcK3fv94HRHfrjjpPs+9EtloNgZD2pD+k+OAk/m8p+j1Y//AGdTPqCv+WPv+1VjY6P5pe77EdHxbiBWj3shc/zm5UH+FNQ+fXP7PZ96s+S2/wC12/clo+IcSJH+elf4L8wv/Iumd+ueGns+9A2S3/a7fuTsvDcBClEsBPXruldnP7DXWee73Ui+tuplfDa7aIbQ/W6AmtOGYudYr38psZyu8Q3c8UbFSTQ7JXBI6d6apluV1L/yS+nUrBt9uPwBP0XJOLhFVORYeNVFAi31sAAOlBSTWQmUs3WsRAyCGl5DxxW6ckxFO/8A7/bf+pqJiU0uvJeNOpVuSYitP/j7b/1NNihIR8k46km3+o8RT4m/tv8A1NIAoThBf46+cvj8ha36RkCV7WeOcIT2DGNmoT9OosXQma6t685xN0LiYbcHep8sGpC1bm28xWnVh8a6xVIf+9hJz/blhw8UMW5rZGbWsosPHHHj4ZKTTdZVH0a3FYeKQu54EkRHmRCB91mAPX69DEqSy13apEALmL/fX+3U2LISUNza7tzXMVPpdev79VzpRn4og9YB+KYcZIS6jwcshLC2aRjV3DgEk9fAjXn7v0htF1IzqW0DI5kDST/KQtMbuvAMJFA/lGBmlErJbiZVKJcCT8RVJBKqxJIBIBI+jWGXoDZpUzTFAxicTplMYjI+JuJzCmNwrgvq9wRQ47inG9JZitakrKCK/YdcyX+q9nOP9Qfxj64q35tX6OxDScexrUH4zbSCrM9aEdqdNA/1hs4BA81zx1//AMWR81rdHYkPyC0r0u5x/tL4/s1jl/qfbDlUq9sf/lU/nFXkPf8AaiIuOWR+9NMajuXA+jwGr6X+q9pj4jVl/EB8IqJ3etwYexEDjWN/76c18PVH9mrB/qnZ+dX+Yf8AypHd63R2Lw4px75mO9lsY7m9hRo4LyajSxo5qyo/RlBp1AOutaf6+2i3pyp6ZyhLOMqktJPMxiYgnkSqJ7nWkXcA9SN/KcOlSbZCD33Ox/i2roegtip4i1gesyPxkl8wuD+M+5Eo9rBH6UEcaRr2VQKVOu7a7ba2kBChShCIyAiPsVE6s5F5SJ9q0eRm6lq/CmtjlQTlU6zKxBC5bxUa0O6qZKieM03VU/bocJpUEN2IOmMULNNCFvGAZEBFeo/jpIX5j/en3h/UXgs3yzkdlzpIOOxX00ltZhb31Uia6MKDd8uIiRUdpKfTrpRpRZSAUQ90Pd/3/wDbbDWeXl94bbkCT3qWLWtpaZK1kVmjeXeWvLeFCoCUoGJ69qV1LyYpiLqjf/zj++x6/wBZ3BH+uf7dLy48k9C2H6w/fkiq8vuiB4gsaaPLjyRoUy4B+r/3yu+Ycesrrl1xJb3N5HHLGWPUFhXx0jTikYsv1kYec3GJxMzGsstjbSSHxLPErE/adc7ioLjb339quY835/ns1x7jcOSx9lhsdb3GXmuLGEQSKkrN/wC9Sxnyhga0pr2vpzdre0tZQqPqMiQwfgF57dtsr3VaM6bMAzEtxXPd3+m/3dMiwW2OsrX11hFksl5hpJmG4AE0ulDbyaVA+GutPfaB8M5Afuh/iskNluB4oxJ/e+7gnO3/AE7+5+2yH9IW2Y9XLbI5lvMO+ysUhWI+ncUFKE9dXw9Q2kRjqOL+EZcs1TPYbs5aRh+Y5o7kP6cPdWLHbm4fbYCsyAX73mIAPc+n1uR97RW9Q2k4tEyieekfalR2K7hJ5aZDlqP2IWy/Tz7n5DLQ3tjxiyvbG5tnSPFw32IdWeIgPKpFz4FhX69L/kNr5mp5aWy0jPnmmdiuvL0913z1HsyXU36fuAcl9v7znNjyfAJx66v48Rc2tukltKJYx86hettJIooRTqa68p6nv6N5UpypOAIkFw3FdrZ7GraU5RqkEkvgX4K8rp7r+tsMFgjNmcHemS4MlHEgubWiiPb1FPGuvEVJT/WwDDT5csXxfVHh9br0kRH9LIvjrjg37MuKk7CtwB9Gt7YrGqM9xeU2+D5DFaztMvzioI2SNnWtAOpHbXa2+xnXgZRbBYLvdKVrKMZv3uh1E35dYrfLhmuJfmmG0J6bePUealNbRtk9GvBlH5vQ87ysdXUUPHzKxu7i4sY7qUy2as0sZjYUEffrTrqFTbKkYiRZirKO70JzMA7jPAoa35zjryC5vI7yVosf5pm9JhSvTtTrpS2qrGQBZzkinvVvOEph2jngURHzrHGyXLC8mFvv9ES+m1a96UpqfyuqJ6GDqo71bml5rnS7ZFXxxC/XI4K3u43MkU53xuwIJFB4HXCuqZp1DE5hbqVaNaAnHIp6yaNJjciFFa2sw/8AqzrOxOAVgTXyHjV4I8Zb219Ycclnu1L3MkNtK80cakmCNJRt85pU9wK0665kNnuhmQf4ir9YVTR4X3NlvXim5vwuygtUu3u4Ioop51EhAtWZWijoEZgp6jw6k11p+UzA5nD8XalrVyWvG708ft5bu2sb+6OOVrq8t0iEc0npVZ4xQdGPUaynZ7rVgQz/AJinrCXyeGjsLGWa4t7HH+pG0cF5OIhGkpjYqzEigApXroGz3b5j+Yp6wqpfE8vTimIA5hxt89b5FZ8tmBBbtBdWBdlEaosR2V2kbwvcEBtaPlNXWT+FsBqOaWsK2sZjLLOY+1y+Is7S9xl+gmsrpUjAeM9iAwB+0ay/J7v8w7SnrCFxcPy65OD0xF6OSul9NaUXzA0FOnjrpUaM6MBCeYVMi5Uo1WpJqGrwq1nTZCyCR2NNCFuJXHjX69CEVDP546r/ADDqPr+Gk6S/Il7+Zfi5y3OMenEZI86MncCTkPqzbXYXhJfZ6pTqvl+7rrx8KsioTyHk3Exe8cusZx6/44LHMRzXV2xuMh+EIXBVba6k9N2qQaEg01JMJtl5px6Tk8GQmyzvaLipbd55+O2Y/FeZXC/K/iIegr6ncdtDptgvYXnWNx2Q5LJa8nssbbZK5tXgE+KWNZlihKFlhgsbhY9pJFBtr3odDpEKWe1fMYI77D43+pMQJLnKXchx81pMbljcTMwKOMeUHqAgr+IKV/k7BSyRIL9dOEr+R4MGtRjbT/8AcJrkKtI3WLvbiXKGDNG0s8zFHFkLB7SK4R/TT0wQzFWFV8P2jV1OuYBgh0FBxOeOdLuLNRGeJQsUr46KQoA5cBQ8hAAbqNWfqpcgm6xFxvK44xCw5Ctkkd2L3bDjoKNKqNGCQznwY9qaRu5cgh05XuOzmZtWsslyWK/tXIZ7W4xds6EqaqSu7rQ9dP8AVy5BJ03YzjN1iLyS7xuWtcfeSR+k1xDibdSI++xfN0Bp1A0/1cuQQ6e7KyvkyGQvsplmyt7d28FsrmCO3VI7dpnUBY61JMxqSfhqipWNTNCap7pP6zxFmY5jI+EvpBMI2MQAubUUMnYHp21zKlQC9hBi/lyOWHihx59C2Rgf0spOPHHjj4ZcFKq0lkc/yDvreFjVM85vXtsvbquKlyCzBazRqCE7d667e2UhOBOoBV1Dlg6izXn/AMyW0OFmNf8A+e2DZ2+Ot+j+nq1jqUABq8PtQUN8Zbq6h/I5oTCrETsigPTwB8a6hUpgRB1jFWQAJPdQdrkTJb3k39P3EPoAf5dkUNL18B46jOkBOI8wF+lMAMe6jI8gDjVuTx646ybfkti7/wDWpqflDzNPmDrdVltPh9ivXiCCbC28xga1D9RbsKFenYga4N1D+qQ79KsDAZMn/Jqi4vJdTGvyk+5waED0zUg+FNVQABCYUb5XecWkXFhsj/U8Qmcy0ykYa2X0yC6hepLDp/z0103CmobHc8d+YyWzj8Xo+mzRXcmXh9S4b1I6gq43DcPNWtelD46HCFYuPyHGTx6Af1QcUfkyBijk4yYfIaRmvWo0OEJPkGS4ytnavHmxyKVbhGisjk4Pw22PSWrghaHpU/HQ4Qorc5fCCykkjxqTXIRGNp+a2dGPrPVAyjqU/wAXwHm6ebpocIT/AMSzeJmtb22vsivFbfH3BhxlomViZJYNob1FAVAo3Eig0OEJxxEcEiZOW3uzfW8uSumguy4k9Rdw8wcdCPq1zrjxqJUm9LWFTYpm2sO6nVwDKCxpuhe0Ohe00LeL/Ej/ANYfx0iEL8YvvrkLhvdLn9mUt/RTN3gVhbwiXpOx6yhN5+3XVjkrIKA4fkE9tmsTfyQ2yfIXInBgsYyxIUjqkLW7OOvb1F+vUnUmU3/r5RyNMu+2i4xrPzWN4gq0of8Aw0yYfw+96tPDZ46HS0pug5fYfOZu4uY7J/zG6imT11yEZ2pEE8qrNOQOnXezH4GnTQ6GUl9r85ilzfG7F7Wwa8a+ekjPN6wMsrFaA2zJ0BFPOPpodI5JSC/ZPhUU4PB1H/8ArbTr/wDQJrlFVlGtb9CVPX4aSEiN8ZNDt+OkUIgShgA46nUkLRkKeZDXSZCx/iivZx4aELP3gjDuvRhodkKPzEDllglRX8nvCBXrT5m18NYpf/dx/wD65f8AqitQ/wDtpfvx+ElIGr+LT+ZgBrYsqrLltzdwZZIrexa5jKqHkU0p015zed7vrGtThb2xqxlnIEDStdvSjKOMmTA91e/MiEY5/RJ/x6+H1apPqLcf1go/pJeX+dw3YrBQhpfVjyQS3N+8kyvjWRUBKPUeYjt9us9v6j3OpWqQnZmMYg6TqHebIe1WeTAAHUhorvItHMz4xkkT/DTcPNrPbepd2nRqTnZkTj4Y6h3lZKjTBAEkZFdZH5b1BjG9XdT0t3h8dWD1JuxtPNFkfM1No1DL8zqo0aeptWCtjjlzJ+VwmWAwynq0ZNaHXqtvu61ehGpWhomRjF3b2rDViBJhiE8tIWNST9A1sVSTp9Ghk0osLMK7emhCVFv/AHjoZCVEEY8K6s08knW4RQOw0tBQ62/joESh17VigjNZFpQQJP7NaNCodVlnPdLEcfGYlv8AC5YWmJvEsIskYEW2vZizJItrKz0f0ipDA07akKIKkmdferiLrlW/Lcqi4y4jgRmt1VboyTTRb4H37SoWFpPMRVaUq3TQaJTZW1B6N1Es0YZUYsoBIPVGKHsSO4+OqSGSS6QLvQ1Iow/joQvyde8f6U/evK+5/NslYcRubizvsvdTW8wRqMrysQR0+GulGcWUxJlXVr+kn31guYZn4bkY0jarPbVSUD/QYjodPzI809adV/Sv74Leet/TXIkQw+mJQ+6eta7S3QbPGnx0eZHmlrScX6VvfNWumbjeZT1pd6kxLIz0FN0hZh5vDpo8yPNGoKVe3/6W/emy5Hx+W647kIY7e6VpYjaoYwu+p/EJ3de9aaUqkWzSMnX6tsQ00GIxMD9GhsbaN1PgViUEfaNcwEqKdVnr94fZpoSm6Nx16V+Oh0LV4Vb7nTQyEkN8dRSq6ELYBXqyHa/iuhC94k9h/ONDJKMz2tu3M8XeGBGu4sHfRR3RA3iM3VqdoPw66wypRN7Cbd4U5B+jVBbYzl+llF8NccP4ZKTtTvTopJA+JPbW5ljURy0LNet0qKDc3001bCIKuhkm42rU6Ifs1aaQQCELJbOP5D9VNVGnFWApEWz1+4dR8sKerBEJbv8A3DqQphVEqZ4m3b5UFunmNBquUcVTM4p2ECD41+OhmUUqEQCgUDTjikVsAB2GpGKTr37KaNICHWCyr3YD69SMgkyTMyA9GB0tQQywZ4wOlTpGYCbLX5lf7p0vMRpR/qL8NZdauTba3QnDAjY6/eU62grMExXud4+PRtr22FxFJJOFQ26zxrJDL6LVUBqMzN0NOxqaabKYBQ1lyXjt/cR2qY+aK5luRZxRz2JSp3MoYNtK7KhiDXt18dBCbFZteZYufj91n7XH5A2Nn64+VS1KyuYH2sEU7Vqx7VYV0aMWQxQae4eIe4a3GNyq7ZrOH15LYRxH52P1I2V2cBgv3Wp1B8PHRoQxTcec8VkrI+AvlLR3Mvnsl3kWoJcbdxarU8vTrp6EMU8YTNcbzt1PaW2HltZIljaN7y09FJvUjWT8JjXdQN1+kH4aRiyCCpR+WY3/AO77f/y1/s1CQwSBWDi8bTrj7f8A8tf7NVqS1GKxgNVsLdSPERr0/dpoRPoJ27fCmkhe9Ba9GOgpLT0G8H/ZpMmtRHKD000lsHnHVk3L9Wm5TWpMZNSrIdJ0LIJ6GocDxHf9umCkVGZ7ctzTF3IuZlRMHfIbMEekxN1ancwIruFfjrnzif1sJOf7csOHihj1rXCbWkgw8ccePhkpT3oT379PjroLHqUWz/ILPC3WKtZcVkstPlpGSNMdb/MehGhQPPP5gUjUyLVuvfTAJyUgVAIfejhl1Nj7ZLW/JyV61lE8UMciIVlhhEkjLIaKxmBFKmgb4as8ubJ4qc8X5LgOWwT3OMWb0YZpod8yqgb0Sg3LRmNGEistQDTuAemqyDHNJSoRWY6BAfoArpahxQ5Xv8qP+z/dqWoJut/XVQAibR8NGtRIdam5fwUD9+oGRdNlqZ5fiB9IH9ulqKFp6snix0nKFoST3JP7dI4oXiBqMULw1YELOpIWNJCdNZmViZTIVuLWVAPxgwcfHpXWjUsirTPZ70L3CRPzy9xRe8yqfK2lo8nzAhV2eGQneF9BR5G8afAjVol0K4JlblCHHXUq+5+RhHyFi3zc1ixMQluREktAAC0rVQj+zTfoTUzvry5xl1ZpdcxvA97NeXFoixLIsieiE9Jn20URGrKKg7voB1HU/BDumWDn+JxjwZPJcqvZ7SWwsqi4tJPQY3M7qH2IKrJJ5VFR0ANa108eAQpNLis5cSw3VhzW8itjeXNzLD0kR45U2JArbvKsLCoHx1HzOhJ0iuB5QEMZ53fEGzit/V9JC4mjlaRp/OXG5wQjClKDR5nQhwn6xtMnanKLcZya/jyEkklt6iBXtQ6hVSJlbsvU9u/amkZujUFHLnjXJn3rac9yFtF8lFbxB0EjieOTe07PuBYuPKR01LWOSNQUgktc26sq57090k0ikQAlRJEY1QEt91CfUHSu7/R6ajqCNSFjxWa/p4YW45TdS3yqgHIo0EV2Srl2LUJXqPL0HbRrD5I1ISPCcjFyZpOX3MkCX811DbhCo9CRSEt383VUNOvwr2PUPUOSbumY8U5p8uYh7k3yyi1ECXHoIzLKJjJ6xJNCSnkoR209XQhO9tguUQ3ZuZeZ3NzD8/8AOCzMNFMOzb8qx3H8Pd5jtAPhXxKfoTdLXWB5NdKwi5jeWh+S+VWWKFK+qHDC4Kk037RtNKA10xLoSdNicS5suVnvz7jXjWb3j3EGMe3QRpE0exYejdVVvN9egyHJDqYYmzv7K1Ftf5T83dCfSvJIwsrAsT+IwIUkCg6AaTg5ITdMLv8ArXFskkPyX5FfCRCreqZPmbWhDV27aeFNc6ev9bBm0+XLrfVD2MtcTD9LJ3fXHq8MlKB010FhwTTkpL6Mh7KzW4k+XmC3EhXYjgoVRjuVtrdSafAal1qaihivrYzw2nCsVJEwDpDDJbwqZQGk/EOwgUKqKlR1IIr4PDmms3svIbGf/wDD/HcK0BF4r77mO3lYxITAFCdPO6gPX7vfw0gBzQtUyfPBa21w/HsRHJMLH1YjkAdjTE/NjdXaREB5CD5vho0BCKku+dLHIYcBi7qYRXRjEd6dhlRqW6FiARvX73TpUduulpjzSZKXFzzcTQiy4/YyQm5hW5Nxc+mVt3QGV0KF9zI1QAQK6bDmmg3vPcNLVmTjOOnvRbB1iF1sQzmShSrNWgj61Pj00NHmknrHTcolXIfmuGt7SRDIcYYJxKjqpb0xJVgQzeXsKd+2kQEKPvfe5SyALxnFMi29uzkXLVadnpcKlXXyolSte5p9NG0eaFst77keqQ3G8U8Ie8FRcsrbEUm0pViKyMAHJ7VrTQ0eaETHe867zcbsUHq2wZVuizCNlHzDClQSjEhR4gV+jUdI5prAv+cslf6as1f07k7TcVq6MRbLQGlJBQsa+X6dNhzSThNd8lC4M22HgJuJQvIRNJT5ePau5odrHd5i1K/DroZCkJHfSQnSh1mVjKOQsZblFFTHaqVVviW//Vq5Yw5UMvcikQtZrnlePtkabJFHFsoMiwljtAYOQ1sKBv79K6kB0K5Rq5zST4xpbXnGNdBYWVy1wcZ6ykNcKnrBUhqRMQyFaGhowpqQjjkmyf44M5kPnpbPmWPuoMfe3omQ2Uai2Hp+SLcVY1hJqW8fGvbUcOSSjLZi6gtHluvcXC0XG2kkskuPCBJJJxS4p6YLLIPLtIFD9WpN0JspNjZM/lZpRh+YWM8OLv7uDLQLZldpZT6cKVVR+EWB3da/HSLDgkpBisdym3vY5slnosnZLbRwS2foLGTKreecMqg7mXuv3a/DUSQUik48RzL5wyzcjtvkjfSSi1S2BPybKFjh3kdGUgsW8SfhqQY8EYJOfBc3eR/luVwW8DWUMUZazSR1ukfdLNSgBDqStD2oDTUhEckOEY2I5d6ti8fIbZo4rmWS+ie22+rC9PTiUgHbs+PjpaQhI32E5rJjXgsuT2dtkflookv3tNymZZKySlAem5OlOoB+qplpCME8WGPzsIygvMnb3pummfGy+l6Ztty0jTaoo6qepr1+vUSAFIKPR4Xn8dvbpPzDHm6WApdXC2YCtKYnXesZU0AkKsPN2FPrkdKaVusbzVqmz5XbwuXsj57RZFCwH/MqAAprOPGvl8NBnHkhegxXPUil3cshuZDJdGISW0aKFlWkAZkjr+FStKdT3NNLUOCFKcdHfQ2dtHl7iG6yEaKtxLb7gjsAKtRgKVOoyZ0I+jfACvZfh9elFCjFxNKvNcXb/LSPE2EvWa9BXYrfNWo2EV3VPfoKawTkRewGkt5cseHijhzWuEB+lkXx1xw/hlipRUdfo10GWFkw50wzWlzi5rS6uLXIWk5lktd6nybaR70U7WetB9R6akFIBVrMtkJ5beb22ztxArWUCZGOYgSpcxIkh2qyOBAFAfco6iupe1SSv9OY70hdwe3d281qMnfRCS7pOtxcqPVWMtUVuAx6g0B0nL5pIS/43iZEjsJeEZM2s91YWVxAl3KkUcdv+Ik6mFCCIiKE7hu7dtSc80Onyyy9zgLa7uMZwrLOk8ct9NjxKWd7iSUK0aoVKhqANWvY9AeuonHMoUgtOX5O5luI5OGZK3jt55oVnZkpIkcYdZUBCkq7HYPGvhpMAhkpPynLwWSXy8SubjesZNpFNumUtM0bBkMQPkVd/TuCNIAE5oWbflmSk9f1OH5KIRTzRpso5eOJ1USiqqKMGJArXp0rqWjpTZLS8oyEdu06cSyjENCogdVDkyEh+i7+kdBU9uvTRp6UmUtR1kRZFDBXFV3qVan0qeo1BsULbVukKDlZ0Mh1ig+A0MEOV6gHYaYCHRusi0qDSZRLVatiMoF+KWjP/wBQnWSd4I5wn/K/wUoWRlgJw/mb4qNXHLeHwsPnLGaB0dpB62PZSHYEM1WUdSCQTrJLfbaHi1DriQtsNjupeHSeqQKFHJ/bu5LIMetwZFWN0XHB6qhqi0CnopFQPDSj6gtTkZH2FM7DdjMR/mCk1le4i6DmzwGRKzBxI35c0asJKb9xYKDu2ivxoNbKd/Gr4YVD/CR8VkqWE6finD+YH4IyW14tDGz31pjbHfGsUq3a26MyI25EYVNQrdQD2PXWo3NOAechHrIH1qgW1WRaIMuoE/UgF5NwOxmJgyNhDNLX1JoIz1qBXc6JTrtHj4ayT3ezBbzB71qjtF3IP5Z932p+tc7hL2gtMvZz/BVmQH7CQdaaV7b1PBOJ9oWepZV6fihIewo2a4MA3izubpP71uiyfu3A6unU0YiJPUH+tVQpasHA68PqTDdcxxliSLyxytvTuXsZafbSmsVXd6VLxxmP4Ct1PaqtTwygf4gmpvc7iSmnzF0D4g27gjWX/klnzPYVo/4/d8h2hEQc8w975bO3yNwT29Oylf8AgNWw3yjU8AmeqJKpqbPXp+IwHXIJ1TLrKA0ltdWaH+e6RYF+vzsDrSLrViYkDpGn4lZTbEYCQkf2S/wCDuOT8ctCfmM5ZoR3VZBI32JuOqp7la0/FUj2v8FdT225qeGnLsb4re05Xxa5oYs5aFj2SR/SP2SBdOG62k/DUj7S3xZOptl1DOnL2B/gnxb2K4XdZst0oH/YMrk/VRqa1ipGQeOPUxWQ05RLSw63CarnPQY/d6+Mym4fzLaPIB+1C2stW9jT8UJ/yk/BaKdmanhnD+YD4phk9w+NW5KTvewOT5xJayIR+w01jlv9rAsdQ64lbI7HdSy0n+IIJeb8Xu8rBkYJr6WaG1ltFgitHcFZXjk3dKmoMYH7dVR3q0nVEwZEgEMIk5kH6lZLZrqFMwIiA4PiHAEfWpXa56G6UGDF5UqRVXezeNftcrrp074VMRCbdMSPiudVsjDxTh/MD8ETLmMXaLW8v7ezDiuyaaNWU/SNx1Od3Sh4pAdZH2qEbWrMtCJPUD9iaf644qsny75uBvhIN5T/AHgtP36y/OLN28we/wCLLV8ou2fyz7vg6drbL4m6o1jlrS5B6gRzIT9la6007ujU8E4n2hZalrWp+KEh7Cl5sn6A89jd3CeL28YkH2Bq/u1OdYwHhkeoP9ajClrw1RHWW+pMN1zPCWtRdWeUt/iXsZh++lNYam8UafjjMdcSt1Paa1TwmB6pBNJ9xuJVIF3dVr0X5d66z/8AIbPmexXfILvkO1HWvL8bekCztMpc17GOxmYfbSmtFLd6NXwRmeqBVFTaatPxmA65BO65WCm64jmsF/vXmyD9zvX92tYuo5yBj+80fiVlNtLKJEv3XP1ICfmPHLOokztvuHdYmMh/6AbVFTdrSGdQezH4K+ntd1PKmfbh8UTa8twV1QW+atJGPZXkCH7H2nU6e6W8/DUj2t8VCpt1xDxU5dj/AATz+YDYJIozdr4/LlXP8QNajVwcY9WKyiGLHDrw+pNVzyqzs6/NY3KxAd2FlI4+1KjWae5wpeKFT+U/UtUNvlU8M4fzD60zv7l8UjO2Sa8jb+69q6n9+sp9R2gzMv5StQ9P3ZyEe0LdPcji8il43vpFHdktJGH2jTj6htDlqP8ACUpbDcxz0j+IKSf1XiPhdf8A2d9P5nS5S7Cq/wBDU5x/mCd/HXX0LmOvMglXbIglXxVhuH2HQYPmmJNkmqXIYPEsYZLuyx7r3hBSNhX4qvUaqanTwDD3KNS4D9+XaU03mb4hdIzXl/aXYUdVbc9fqUDrqqp5NTxEFKF/Gn4Zt1KNPlfbcMf/AJLDKa/fFkvX/eodZfIsf8cf5QpnfqvCrPtKx+be3FCfyOGo7L8ktT/yafkWX+KP8oS+fVP8s+0oRs17f+HFom+BNrD/AO1qBo2f+KP8oS/5BV/yT7fvRlpyXh8Brb4045h2McG3/qMdTpi3h4YAdQZRlvJqeOUj14pxPOsGf57r6/SP9utJuodKz/rqXT2LeLknF7tw7TQxyr1D3EO1h9TFT/HUddGRcgP0hXQv4MwkQPanRc1x64X0mzFqUbp6Zk2j99NWmpCQZwnG5pguJB0V/TfHLpFmbEWV2rjcszRrICD4hjXVXy+3niYRPsdb439wB3ZyboKQfjvGF8q4CwqOn+An9mofL7Yf+OPYFP5hc/5JdpSacX4/If8A/BWO3/wE/s0Hbrb/ABx7Al8wuf8AJLtKIHHOO2/WHC2Ucng6wqpH7Rpjb7aOVOI9gQb+4OdSR9qc7eBLdKouxB91RX/lOtUIiIYLLKRkXKzIiSRt68aT+qaUkUMKfUa6DESwliiJMciy2iijt2VIY0iVUPlRQo+wU0ACI7obqRKRkcS6DuMdj7zY17aR3VTRvVG4Gv0HVVWhTqeKIPWrKdepT8MiOpRHPDgvGxbDK4S3Vr9pFtTb2PrMTGAzV2KaABh31VHbLaRwpR7AnW3itRDzqyA6yolNzj2htJDb3tlDaT+kZvTlx5RvTBoXoRXaD0rqz5TQ/wAUewLOPUEjlWl70jFzz2daf5dbW2ln3iP0hYVfe3Zdo61PgNA2igM6UewJ/wDIJ/5pf9yfE557d2MtvDb2t5Zz3Bb5dIsfOob013N2FOg1dCwhT8EQOpUT3unUHeqE9b/Ylrn3X4bYKkl3e3lnHK4ijea1kjDO3ZQWoCTTtq40pqgbjbyyl7j9i9H7qcAe/ltAZXysCCSe3WxJuEQ0ozKBuANR11D9Ni+kPzwVnzWlp8Zb2sj5fcjh9yoimXIyIegQ2U9P3alO3MwxDqMN1oRLibew/YnvH4niOdx9jmLPD2k9nkoEuLWaS3CuySCoJVxUH6DrBLbrcnGnF+oLrQ3GuQDGpJj0lEHiXHv5cJY/V6Cf2aXy62/xx7ApfMLn/JLtKRbi2AXp+Q2LD/wE/s0jt1t/jj2BHzC5/wAku0rMXH8LA1YcTawMPGOMIf8Ao01KFjQiXFOI6goyvq8h3pyPWUabi1tSImnjiYdoy3Ufv1f5sI4OAsspOcUy39zBdNseKOZEP3mUN/GuuBuF2Kh0kYBdC3gYxcEjqTdfSRSxLBE7QRr1IQ7RX6h01lNz+XAKc7YVc808+gP+/k+3WnzTzVH6YJ5sMmmThn+VHo3MYpSUbgrHsSARUft16sgrCxZVZyjF8ymubySKCTISCNvlXtyyW7yBfINnqMVFaA9tcytCoZY49S5delWMsXI6F88rnkP6xbHIrFjuJLlbRIME6pn7azsZZJntbZ8qk0gZZE/Ha4RTtIUKlOhq18qNAeIscePYpSpUR4ixx+5WjxjK+90nthzG7ytgl17m21lanj9nc28FvDJkjjLRr1IIhIqNCl2ZvR3uAT5C+wbtZpxp+YB+Hr6T9SzyjT1gcPvUBl5x+qr5SM2vtXEBivlpoZbye0e8ywMd2rx3cdu0UMAaQQl1iCug7FtzUvNGg/j+5WmjR/MiOQcx/Va5lx2N9tcXZ/L597ZeQY545/mMbbtDtlWG7udsa3KtI287mSnp7Q3n0o0aGerhkiNKjmZcFzxf8u/XtDhoXGIy02VmuzSKyw+Pq1qbARHYZIqxst0NwMo6t5qemdaxRtXzHatIo2z5jtUgzPMv1tS33KrbB8cy8MZ49GcLey4vGtAuQZQ7SwhjHKrh42j2ujJtJ8tTGWj5NswxHao+TbsMR2qzbTkv6obdlx17iryXI22YRb2eK0x9x6+LN2qXMsJVPQUwxbBGoLFt7nrtqtJpUCcDh19CqNOiTgcOtVh7gcp/XRHjrCTA4i8s7t8vloHjxeLxs8pxyi2NrPIjCVQEJkC9Qz1PeldW0qNrxIyHFWQpW/E8BxU45Tyf9VXH35VObPIciN+l5Z8StOL4WGWG1miy7QrcyPcuzhfkwjxBkb1AzGqlNV06VvJve56FCFOhJvrPQuhPYS+98OSWFvc8345yPEelg7aO7GUtUsnfKR399G80CwrGNk1qsLsOoU7aGrNqq4o6T3OfDkwSrW8gf6YLPg3Jdx4GzysVpEMpOktEGyPawlX4iRy77jq2nGQGK30IzEe8U+u6xDaO/wANWq9JxqXO5h276YQsufVYRr90d9KWKFs3mdVBFF0gELCtWSQjwB66TuhJ94yf7p76aSifJ+PYbkuU47bZrKzYi2ihv5o7iGaGEtIPl12kzI4PRiaAV1qtIuSqbi1hcBp5BVtyj2w9qxcz2WSyuWyMd7Zbpb6K7tDURF2WAPHbFlqyioBFdwrXW3QFnhtdGOT9qhuP9rvaKxlusjbYzkNrcQXsUhupLy0dnaKORlmQtAzdNtCAOpPWvSppCnLbqcsC/arQyPthwNc1xtF5pfMkj3e9vnrDp+AT/wDD6NAVPyi3bI9qbOae1Hti2Ltnv8xluQpDeRvBZ21/ZepHIFbbKNkAPl8aeB0aQpQ2qjAuH7U18b9vfa3MclyGSS8zuIzjWvpZbJXd1ZRqwQxenEG+X2uSpB6dttNGkJnaqOnTi3WrFHtZwAEH+tb/AL9P89Yf/wBvo0hQ+T2/I9qduD+la8R45aROZoLaxjihnZgxdEqqsSoANQK1A1y6haR610IxEQAMhgperK/VTqCks6EIO9cW9pcXAXrDGzfZqMy0CUiqhN8RNPPTeZQQN3x+OvPGqRIlZ1i2vWhLmdvTipuLmu0ft+nVU7WtXxhAnqC6NhULkHJVvmfcP07m6tY4HQW7lV6lelAQTSnf6+mvY7T6cpQpiVXGRz5DoTr3MtXdwCn/APU7/wB0/wC839urfltLkOxV+bLmregjjtqi2iWLf94qOp1iNSRVEUsyyEmqsfE9NQUkm8IkoJYRJXsHUN2+saAEiAc0JJj8fKrJJYW7o3RlMSdf3aegclE04nMBN7cZwDGpxUNT8Nw/gdQ8iHJVfpaX5QlBxTBMpX8phCt4+av21ro8iHJH6Wl+ULH9EccJq1k31LLIB/1tAtoHgom0o8kRHxDjcYoMVHJ/4jO38W1IW0OSP0tIcFk8T40vU4mEDuQWen2btM0KQ4I/S0/yhKRYvEWm5bTF20O7ox9NWJH1tU6joiMgrY0YRyiEslrbofw7aFD8VjUfwGjT0KYiBwCcY4SKFjX4DVkIpkst3k2dFpu60GnItkhDKjSP5u3idQBTRErhFCqaE6kTgyS0jG2Mv8e306E16IU3ua/GukM0LEXUSPToR0OogIXoxuikA1MB0JquAqZDF3s2DfO2ttDdxTQItuzRvN6JR6XMkY/7Nh0NdX21QRclMJnyl9lJMhDJhOFpHj1hK3FpcRY1HMpDgOHEknaqn9h+OtX6mHNDqPLNziOC5EvHbF7kzK1qVtMcoEe196s3qN3YrTynt377g3MBxQ4UuuZbW5yOBu4/b+ZobA3BvSYsYCfUhKLQfM9fNp/qIc0OkORX11PZJHxrhxxuQWYGSa6tsY8bRbWDLQTtQ1IINO461HQr9TDmh0y4265cGjTI8TsLiOL00eRLWwDSgurSvt9dQp21VB2r1auj9RDmh1LsZexxY+zjyvBJLnIxxKt5cQwYxUeQd2A+YFK/UNH6iHNN0HgLKfHYLFWdzb/KT21uEktQVIjNSdlUJXoDToaa58yDInpUU7glTUGhHjqKEQlwR9/qPj46AhbTJHd281uzeSdGjY+NCKV0ECUSDxUZKj5bK4F1PZKwZ4twDr2IH8w158Wx1aVso7POpHVIsojkb2+twyTS1td59ONWqD49fp17jb6lGUAIYNwWydp5EQFrd4C55fb/ADGLxcdrGqbIbueiqxHdQT1Ir8NW1tzo2smmceQWaVF1Of6Lzf8Adtf9/wD5tcr5pR6VDylZ2Ttp7zG5Cztbj5S5u7aWCC76/hPIhUOKdarWo1QM1jiqivvajJ21zx1OL8suLTF4KV7ho8tLNe3LyyyIzkSjaNu2NaKex3f3jqwVM3Ckm+z9nuQ2OMkxNvz2+lgku7a8d55Z2YtawRxRrUEMAClSNxBoNwJro8wHghX1ZWk0UGydw0hkkclS7CjyM4AMjM3QEDvT4ACgFaEesSKagV0ISv7qaEL3YddTiWCiQkHnA6L1Px0pSTAQrOW76gmvIhc0H26aEakaqPAn46cUlrLIEFB949tOUuSAEKlXf4k+Oqs00bRUQmtKd21ZpZJBqDLJ++vw1FNLTttUIP26CULNdkNSOrDt9eg5JLEP+E3jWugIXrf7rjxJ/wCbQmtYCVYr2B0ghat+HIfAaaSWlTeu5e+iWKEjG5Q7SemgYIREkYcVHf46aaC8yn4EaSEWk27oeh+Oh0JYgEU710IQskJ6lfs0IQ/bQhCZB5I8ffPESJFt5CpXvUKTqusWgSM2KlSANSIOThc4yZW7mkeRZGNxO21Qnc7uwGvNwupGQAxkV7yVOEI44ABOMPG7++ktEumX5T10a+O8bkUA1H017dNent6NzaRlVz7pw6V5qtvNtcHy4Eu+ZGBVrRRokYjRVjiRQsUaigVR2A15GVYzkZSOJUgFKtutWpUJaUSelKYyFcRsUZuiggGhNfAHvr0q5MVDb++5HBfQrDkcNDC+FedbOaaESSXo6LKhZl/Br/NWg+nVgiFJC5HKc0+RyK4a/wCOxZMYu1uLE3c8RiS4Zh6zSqkhPpuppGa0r+zTiA/FCkPIb3kNribK4xd5irTIfNwpdtfyKls8TLR40dmFGZiAtOv0alpBOKQOKZoMjzE3jo+b49c235q1vGsLIHMQCVgILn8VfOSO/wBGjTFDrWyy3MTc435zJYKaOdrwyWltJEzyxr6ny5RzKOooA+0eB7ajIRATREt/y75fe9ziAyYt5XmVwsDXS1CyKWckRMSvU9ux1WWQlbzKXS4ieODN4i2zVtFbmS+mmjNud6oWkaMkbA5YhQT16GumAhM6XnM5r3LQxZXBG3gytrHYkSxMyWsn+JHKobcJaEMoIBYdqakAE0ib33Ka6hjtslxuKGbNyxJE8sbSvYIkZEUe0ndMKOWFAeo8B1bR6UYL1ve+6dnLio83d4Aj5a5/NdskcLvMFYwNEpr5agbu3QHR3eDowSi5nlEuMAXKceOaNh6rP8yhhEwnNZQFZvwvS8tSfv8AXtUarID8WQkrfJ86ha7abMcZ9JLW0MUrzxALM6VkLbWFFlNPTr0oa6sEYhJSXKZu7ngs1xmSx1vdwX8UGYT5m3kUID+JGC56SMOqr3+nx1Hihkw4+59yJ7yxZclx2axGSlTJxwSK7ta+kjRxxU6iQHcWBNafRTUgItxQtrm750s9jbPe4SC5e3u5LxJXRZXdVlNuYkJp6a+Xee/lOod0lCDucn7hyRmKHMcZWWXDma1f1k6XRdQszLVyYdviop1+I6zIiMMUI27yvMbewvVhy/HYJoILBxd3E0axxyPt+YMgMlaSddhIXwpXtpRjFC2srvnN1d5GGxyuEvxa5aJHhgZGa3sdzmSKYVJEtF2ivj8KHS7qAhrLMcwN3ai4znGZFuLm+ijgjuFZ5gjRmBI2AALxrv8AUUL8OvjpkAc0Lz5HmrR4oyZ7jssz2V7JeLDJEBLJGj+m8VXP4cbgbz8O/joIDOhONhce4MtqJ1mxd8JcbE1v6QjCNd1QSMJA5DIw3lfLTt20gYoTpcry8pI0YsYJHa19Hd5yoqnzO6hoaAtSniOldIshLYyTly5IDI/l9xi3WUbYSUmRjcP6TVIIYLBtqO5aujBkKUyRh+vZh46ihBmqmnbQyESkp6BhUf3tCER0PX7NNC0aNXp4fDSQhGT0924VWhr8DqMg+aRVMZPg9xZZL8xxTLJYkyStbGoeEAE+X+8K9vHWCysRSu4S/D8F1L3dDWspUz42A602R3bxbghbaCC1O1R8deqv7inbUjOZyHavK2NrUuKohDnieScUzl3Ri21ga7AfAfs18yhV6AvowtIAMp7+Yy/Bf366HmDksP6eKmdwgNtcrtZg0TjahZWNVPRSnmB+BHX4a9OQXXnIqpMxjor0paXftzd5WyfjZhMs0sz7Tt3HHEbGNaqPN3Jpq2PWppov8BbLHmVHtTcZJ5MHjraKCK8nZLuKKSIiyBdUCegfNWtTtNdSfpQpxyqztLnjuOhuuK3WchjvrZ1xSPNvhKqKTMUG4hB0p2r9ogC3FIZpnxNrcwSzfL8D/Lklz000rSXRfepjcC+AdBQuCaqOxPeuoyl0puoni8aRHhZh7TSWL4/8ze1aS6czWjUcRhCyVrc1J79Kg9TTQT0pI+3MrWVpFL7WXcC/k0vq40yMY4TFNSOx6IQ28AkAfy9KddL2oCUi47a3b3t5d+3EyetZ42Z3ae4pNLEsK+j6fp1rbUA7ddp6dDp4800XJhrJMjl/l/bK6ZLzK2lxf3kM00aXXy6PsuyrKm5koARXqTXVgPShKribTH3EM0PApop2z9xNDcpcTysu/a3ztXjJjD0Hk6AfHvqEp9KSb5b7KZebAy5L2xv3uZ8XdLcTTzM7WpjhOy2lanm9Yuwqep6Hr1pDqKAmd7GW2illj9ocjLLFhBHa2i3MoV0e4JlsyACoYABxXuOnbUx1poq7g6XMre0F2bhrfFCQrK67h6cYZFKrRza1KsAOu0aZlh4kOn/J8Ww8VrG1hwgZNsvm0lyULNOpjk6q17VUY+WnU0p9J1XEknNJEY+w3mQwcEmxsdrmriMPcTzRO0Zg6XsG5R0YrtA3CjUI66sllmmUBcNcZTJ4mW/9ub64nlxV5bXORE8oe1VEmUQeoqVJmqQp6HzV1WA3FJMksUkGPjQe1GQuG/I2SW1kuJXJAkVvkfxV3EkljUitB8CNTOeaacrnHBMZlp/+GNxey5HH4+S5h+ZO6WZAtIVQqCjQbfvAdTXxOgHpQnbH/O4PLXuRsOBXMMmWy8S39xBebxLGwZfmnhRSKIG+6egr3quojHMpKPHE265LAl/a6VV/M8lMbtp5JFsjKkUZuaMhNLhOu0fdoR946ZPSmpFj8FipeIx3R4NLBkrDGXcVpgS8pkMd0zK9uZXRTuc1Yih213aCS7OkVrjctmcHj5YcZwe7WO0xwuLWykuncGZJCnyqVRipCUaoHWvjqJxOaalmK5Fk8lk7rG5Hi19ireOG3ls8m6mSGZ503uhIUBDGQQ1T8PjpSiGzSZP9SjfSNQdCNjfeO/UdzqSFiSIOKgUYaSEGVI76HQlY5dvfqNCSMDVFR1+GmmsOAV20Hm6dfh46cQ6E2XCGpEfUv/L2IHh/bolFkKE8rxtxcWMAsbf1BbO0k6RgVpSlaDudcbdaNSrEacWXT2qvClMiWDqr6urNGY5KgdVVSSP2U1wIwIzC9GZDmFZfX+5L/uHW9lzdQ5qybsqtpdM7yRIsMheSL/EUBTUpX+YeH069avMBUpk5eOQ5vH3N1yrPzbOLsVtICfRltESnqysjqfmGr4UJI76krEy5jI8cayy96OU8qS2usNZGQ2QQTpErQlJoiGr6h2+fp2J0OXyCFYzbeT2FjFY5DI46KC8guLbIuopcFENYqiSrAU83YV+OqXIKSr9o+PW+UFwM9yGGa7zzRRwAs0ImlUBkKeqfwQAOp7dOmpYtkm6b8JdcdH9MWg5RymZ7iDKW9nPcRmMSpCoaVppd7KjgD8Nia/QNMg44BJO8OV43YC1uW5dmjHZ8fmmLtDWI23rk+rLvk3GVPSKjr266bHlxTZOuPxWIzGTy9xb8uz/42EsZpBEDBGIkjicTW7MXJLKo3qa9WrU6HI4IQ+ay3FHuL1Zs9n7CaPOWG+VGDJ6+0pHFGVY1jf02L0HWvidMkgIT5w42Nm2Xs7bPZLLlb6+e+OQVXZHX03McbgkhIxJRfj1HgNUzc4lChEV7xvJz8ekt+V8hgtr62zNvYH0CEl2q/qvNL6gCPGP8OoHbsK6sAPJCKiuOM46yt7ifm3Ip7XHYB5Z53IBaCSVmErgkn1gd3cfdHhTUseQzQnq0/LsxNmPkuR5SMQ4myldvReNfRjjSVZYSXqzMAN4+mgPWuoHqSTTMeN2uVyU11yzNWk95yCzSSExn0kndXKQQkSUMTVJNKmv7NTiDyTTli8HY5TKXU1vy3NTnG5e9ubi3ZjFH6gFtvh8shJjQBdlPL97pqMpdCENmLfDYmbD4695VnVmu8Xkbi2a0QurwGGZy5YP0kRekZFakKO9SWD0ICfMFyTE4fjlrJ87lMri7bGxXkF/dQhpjA8pirI+8lnLkkg9gO/TUJAkpIy892OI2UGRaY3//AMtgtpriOO1Z3KXUe+Mqikn6DUCh6aBTkmy3h9y+NDIXFgvzks9rfQ46XZCCPXnBKUO/qvTqfq6aBApMsN7m8ZuLvG2sC37nJ3l1YW0/y49L1rREkk9Q76oCH8pYCtDoMCEMlE9zeORQWbyxX0T3ttdXcNu0IWQR2gJkDgvQMdp2ivX6NAgSgBIXHuXxeJZ7hzeRxw2CZKQtABSCRkShq/RgXAK+GjyyEMsJ7tcUSzyF28eSMOLksorkpaGQ1v1VomUIxJUBxuJoB176BTKGUrtc9i8pd3lrZzFrixuTazqwoDIELnaa0YUB7aiYtihMFvz/AAb3OOtlS8SfKXbWVpG0QqZVWN/MAxoCJFodPSUMnKPnfHmihkmmntmuLM3qQywkOIgxVa0qAXIO0V66egoZawc041fzxW8V5JFPNIsUYniaNSzQmcHeRt27VI3VpXpWukYHNNlvkuTYbEzT217d7Lq3CtJbKpL0YAilaA9DXv8Aw0AEpJouvcrjGOt764nubnZjlka5iW3ff+E8aMAG21JMi0Feoqew0CBQyMl9xOMKZllnuYjbpI8m63kKn01RmCsoYMaOKU79adtTjEhDJCy5zx/IXBiguJpWGUbE3EqQlkjuVFaOwNAv0/8AJqRgUKeRrDJGkkLrJHIoaOVCCGB6ggjvXVZgokpB02ddgJ+PjqrQyknGp+Gs7KTpBpFoaioPSnx1uMlUMUC20tuKLUdjtFR9R1Al1NJ+hECD6EYIG1TsUGnwHTtodJ03TZnB2r+jcZbH2zxmnpPcRIVPw2lhTUxTkcgexaoWVeYeNORHRE/YhZuQ8UjYG7zmJQsQ4aSeFiSKAN3PUUpXTFGoconsVsNsu5+GlM/wn7Efbci4pOlYM/ipkioelzDRSelQC3T4amKMxmCo1Ntu4YGlMfwn7Ebb5XAXUipa5PG3MtNqJFPA7/UArV/ZoMCMwVTO0uKYeVOQHTEj6kc4jjLSJEnqsu0uFG7aPAkCtB8NUykOCzuyACRqSViRSe+1QP4DVbqSVhhUtURqtfvEAAn7NAxQjhFEAFEMYVTuUbR0NKVHTvTpXV4iouhZliqFWKMFRQnataDw7dtVSUgsxWyu/qJbjcwo0qoKkDsCQK00BJGGD0wzC2oadwnw/Zpum6bhAdzEQUL9GITqQfj01EITgtsVVALb/DWijZ2A7U6dNSSdNwtySf8ALAB/KwCUBFT07dup6aghHvaL6cn+VU7x5/wx5qdq9OupJoKO1UyKTaqWJpX0xXsfo03Qip7byEi2Fd1SQn7z00pHBCQhg8xBtxRiSRsHUnv4eOh0JaayUqWFoo296RjrXvXpodCGigCEj5UbHFJFEYAYfA9Oo6DQ6SP+WqK/L0PUiiUNSKd6fDTdCBe2Ku34HUtvJ2d2+Nad/p0k1tDGUIX5fyABVGzoB4AdO2h0I/0X209I0IpTb0p8NN0Iaa0ZiXNuST3O2p/hoQhWhZqq0JZSezLUV/aNJ0llInTbthKhabQFoBTtTppgsmilWGQANDHVGqFKA0YeIqOh1MSSIKWAAAAAUDoAOg1JwossEAjUZBMIyg+GsauZMOtCpiqN5/kfc23yfp4S3uocYE/ClxcZnDdTQyMYtyvTuAaa6VrGgY95n6V7jYLfaZ0nrGJm/wCM6ezFiOnNfNv3B5N+oi292SuCF/c+3qy4svKIFuTJuFL7e2ySVaMxrTzCgoO1d5BB7owXYvqt7QuRGhT/AKPdyiCGbHIHimHj8f6ms7Zw4bKZT+jsxLe3F3Jyi8srO5t0sILdFs4XSGB1aW4kIklUEMrCVTtUptAZlVW1xvVeOjwTzcxYaWHQcSeGeeSNw/Jve/8A4n8hxeQ45nTxGO3u7bFZH8vs3sPXto4RFdROWtXkE7wylUaRB+KOvkA09UnV9HcNw/VzhOMtABA7rjVFsXYOCXYPxT17wXnvfacpwQ9tLa7uONzixTJtb2tjcIkwuZmuTIbg+qEMIQMQtPBTuOnOUgcFo3i5v6VeItwTAs7R1cS+PUufpuS/rJGMyS2uIzEV7aX8M1tkJcXjiZLYCX1YYkKKfKDGalSSe1KHUNU1wzuO8kSYSwI/B1vw6l257PZj3Cm4Nwq95Zc3tvz6W1U5mJaxTi6ErqA0UdBuIC1AFD+3U9IMe8AvVWMPPsoyuohzHvagBzzwDYLtD24vfce+vZ05FDM+MVVBlyMZt5FNe8W2Ibz8QxA1y7qFADuZ9GK8R6hobXTgP0xGv9g6h/FjgOpXoq7VC/DWSMWXjiVpI+wV8fDRIoAQJNfr1WpKieTHCnmPJEyrwNNE9ksaTPQpGbKFqKCegJJP167FiImni2ZXXsBT8vvM78WVSZBuSwiNcfb8YyDyRTyM7yGCOKRv8CJg0jM+ynmZaBq9hTWkxjyHuWgiHDR7k88bWRmmbla4CNGtbVreKwYkpcFP8yrMWO4Bh5SPDTjCHED3KURT46fcjuUHi8XHsu8ElpHKsHkdJKMDuXsQ1dMxp8gpSFFvw+5SB4+Ih3p8jTcaUYfH69MRp8gmBR/Z9yh1+Lz8zzAxowBxP5a/5H6zH1PzDam0T0frHu3dh8NRMY8h7lWfLctoZujNPeGGJbFWD52PFxZkxf8AzGO1esIkBI8h3HoRQ99MRg2ICnHyWx0v7Elef0uM1go1ktBFLFfGWP1KKxVYtu4VoaVNNBjTwwCYFF/w+5PHpcR//of94f26einyCP6PKPuXvT4l/esv98f26NNPkPcj+j+z7lj0uI/Gx/3h/bo0U+Q9yP6P7PuSc6cYEE5tvkDciN/l1ZwFMlDsDGvatK6DCnyHuR/R/Z9yru/g5Sge3xtxxa5dbRdmUnX00e531b8AOzKNnlHWlev0ahojyHuVR0cNHuUrwcdqwvzyJMMjGYflqWj1Ah2gEOSxJbcK/tpqUYQ4ge5Tj5XEQ9yfvT4lTvZf74/t09NPkFL+j+z7l70+JfGy/wB//n0aKfIe5H9H9n3LHpcR8fkf94f26NFPkPcj+j+z7lgxcRoa/I0of5h/bo0U+Q9yP6P7PuV2cMkZuIcUkLl2fDWDGQksWrbxmpJ6muvPVPEesrzs/EetS+OUt977dIKCW1YC6iQyN1mdaFH9TVEV4V8NNSXjirGdvUubG2nbvukhRz9rKdTi/NWRuKkMIykOokJln4Fwq5cyTcXxzOTVmWEJU/SEoNXitUH4it0N9voBhWm3W6HuPbjgtzT1OL2S0AA9INF0H/hstdMXFQfiKsp+otwhlWl7WPxCSHt5wO2jZE4vZNvFD6geQ/azEj9moTu6n5inL1BuEi5rS9jD4BeteGcSsZVmteN2EUqGqSGEOQfo37tVSuassDIqurvN7VDTrTI62+CfoLKzgattZW8DV+9FEiH7VA1UZE5lYJ1qk/FInrJKeIkCitak9zqcAqSlCaCp7DvqwlkgHQEj72Pwr01USprMKbmqR0GhCQxOYtcPf8rjvTcW8l5ewz2Ti0uJo3X5C2j3Boo2UgOhB6+Gt9CUYxYlMHBRocw5r6aVyGF3U/EHyOT39COxFuUqRXwoK+NKm3zYcwmpJieZXZv5mzE8RxrQj0Ba2d6XWYCOobdbioJ36PNhzCFty3lOHvOO5O1tXvJbiaNRFEtjebmIdSafg/AaPNhzCFIhzXjpNBc3JP0WN5/6OjzYcwhV23NeX214ZWFle455Qgt0tL1ZkjLH8QsYUUkCnQH49+mn5keYQnrinL76KHJLy/Jx3dw97IcU1hYXiotpQCMODADv7k6Xmw5hDo2+5Rh5c/gbpGvGt7WK9WeUWF5RTIsW0H8HxodPzI8whPn9a8d/+Kuf/sV3/wCjpedDmELb+suPkVFxdEHx+RvP/R0/MjzQqFOc94zNdCTmGJhgL5AWLpjrkNskQfJNIGx79Y3ruArUfHQaseYQp5JyvkJ4/hbaHNWsfI4DGubv3sLySGdRHR3RRax7SX67Qvbx0vNhzCHUEfJe83oSAe4OHM7Wk0aFcLdptuHkQwy1NlIKIgYEU6mmn5keYQpbmuT80nteJfkucsMbeW0lOYfMWF7MlzGFVQ0H+TWhJ3MQNvgAdHmR5hCYouR+6CQOs3KMRLOtr6ayjG3o33C3Ab1afKAKrQgrTr5jXw0vNhzCHRFtyP3KjysFzNyPFX+JjyNzNNjRYXsLvYtGot4DKLFzvV9xZhTp8dHmx5hCuL+ssB/391/9hvP/AEdPzI8whatzPj4Vv8xdDoaf5G8/9HR5sOYQoBxaGa34xxyC4ieCeHF2aTQyKVdHWFAysp6gg9CDrlz8R61FP4NDXUUIiOfuHqenQ6kJMkQ6c96fTrPqVyZljZiKD9urlRFFxxhO46/HU4hMpXVigvaEJCaTaKA+Y6rlJTAQZJPc11UmsaEIuKMijMOp1IJInpqyCUkNO/8AIvf+bUZSdPJNN1kcfYqzX2QtrNV+8Z5kj/6xGgQkcgVXOvTh4pAdZCjk/ub7fY1GNzy7HFvFIZDO1fqiVtaoWFeeUSsFTerKn4qsfYX+CjV37+e3VvvSK/vbwgHrBaSU/YZNmtI2q4lgwHtWCfqmxhlInqCi0/6ieKISLfEZa5p2YrFGP3udSjs1biQsk/WNqMoyPYEG/wCpXFxjbbcUvJP/ABLqNf8Aqq2rfkkuMgs8vWlLhSl2hN036lfUoY+HsAPBr3r+6LUvkr5y9yrPrUcKXv8AuSafqTlQ7hw8Gnh86R//AAtHyUfm9yX/ADX/AOl7/uRJ/UwWBV+HEAilVva/xi0zs74a/cj/AJp/9H3/AHJWD9SGOqDccVu1Hj6d1G38UXUTschlIK2PrOkfFSPaE+236kOJuQLjC5e2HiwEMn8JBqs7LVHELTD1hbHOEh2H606we+3t5csPUvL+z3n/ALa0eg+soX1nns9cZMfatMPVVkc5EdYKl2N90/b+8FIuW2MRJAVLh2gJr9EoXVYsa8c4lbae+WNUYVY+3D4qZQ5DH5OIPjsja3ynqrW8ySV/3GOs9SnIZgrpUq0JjuyB6i6z5q9SRXVJKsRsbkoOpqO+mE15wWWm41PbQhAkMO57d9DoW0cjI3RiPjoQjw5YAg6aF49eh0IQbx7TXuDpISGmhe0ITprMrHSagU6dNapKkLfU45JFe1JJISy7aqv3tVykpgIImvfVSa937Cuk6FBuTe6XtpwZivL+dYXBXI6DHz3cZuifot0LSf8AR1po206uQWWteUaIech8fgqru/1Y+2tzM9pxScckugdqfjxWysadNqsWkPfwXXUpbVKXiIC4F36pp0gdFOUukhgoRlf1C84vC6Y63x+EQggFIjPIP9qUkV/2db6W00o5uV56v6tu6ngEY+x/iqzynP8Am2ZLfmXKMhMrfehSUwx/7sW0a1wsqMMohcWvu13WPfqy7W+CiUjNKxeaR5pD3eQlz9pqdaQAMlzpSMsySvVH0fVoBSwRdljshk5ZIcdam7liXe8avGhCnx/Eda9vDXF3Tf7bbpxjWd5BwwfBeq9P+jb/AHylOrb6BGB0kyLY5tgCt1xGUd7yKOxklmsGSO7giaOV1eQ0RAsbMWY07LWnjTXP/wCZbewLyx/Zyb2/B13B/q3edUg1PAA+LAvyccBiXZbphcrJeTY9bJ1vLeY288MpWIq6qzmvqFegVC1f7vXtp1vWG30xEvI6g7AYjoPIqFv/AKx3itKYAgBAgOZYSdmlFgXGIHXgkI8ffyQXF0to/o2dwtrcsxRdk7GgiO5h5q9KasrertvpaXkSJB3AdnyB6ehVWv8ArTerjW0IgxkYsZMS2co8DHi/FbRWN5PeNj4Lf1b1JGiNvvjUl1bYVBdlBO7oADUntq+t6htKNtC4mZaZ+HDHsWG19D7jc31aypiJnRAMy/dAOIxb6kZFgsxNdpYQWPzF5JG8qwRzQN5I2COSfUoNpPUVr49tYI+stvlEyeWeWnE+9dip/q3eachE+WxDvqLDrcP2BaXHH85a3i4+bFz/ADrqzpBHtlJRXMZesRYBQwPU/Xq+Hq3b5QMzIhuBBc9TOslT/Wu8xqxpiMJA/iEhpAwxOpiM8mdIpi8k12+PWzf5xFaRoWKp5FbYWDMQpBbopB6ntqVT1bt8KIq6iXLMB3uwtknb/wCt95qXMqBhGLB9RPcI4MQ5c8mdnJZYvbG9xly9lkLZrS7jAZ4GZGIBJAqUZh3B8db9r3WhuUZSov3SxcMuJv8A6Zu9knCFwYnWHiYlww6wEGxUKS3RVFWJ7Aa31qkKEJVKkhGMQSScAAMySuJRt6lepGnTiZTkQAAHJJyACD+ea32vCjpNKaW6xsUcj+8SvUDXhty9bG1px00DKrWkBQpO1SpD/JOLHy4y/AC8iMS2Le92r0IbmpN7gQpUYk16oxp05/46cnHmSj+Mhog4R1YPNsVzzm2HCfI8mv7cLT8Fp2mjH0bZdw/dr19GzFWlE16cY1CO8IlwDyEmDtzZeVnuVa3qyFtWmaYPdMsCRzMXkA/J1ZGI/UDzfHlBkIbDNxDo3qxGCQj/AFoiBX/Z1VPZqJycLo0PVl3DxiMvd8FauH/Ubxm62Jm8Ne4eQ0DzwlbqIH49Nr0/2dYquzzj4SCu5b+sLeTCrAx6RiPtVq4rm3EOSBWwnILO8kYVNt6npzD64pNrfu1za1rUpZgrv2u6Wtz/AG6gPRkewqRFSO/TWZ1vSkTlDTuDoQjAfHTQvGhFCK1r00IQckRXrTppISOmhOmsysWAKA01t0hUAr2nkhISy7RRe5/dqEpJjBR7L5zD4G3N3msnb4yClRJcSBS3+qv3m/YNKnSnVLRBJVNxdUreOqrIRHSqJ5H+oLGW5e34tiJcpL1CX93WGGte6xirt+3brsUNkmcahboGJXlL31fThhQjq6TgPtXzV/UR+rv3Ay8t/wAS41zaPAiImPJ3VqflolUq5ahiYSbfIQtCS569EpvvqU6NrICNMyft4Dq49GCv2uldbpCVSvWFOIIwyGROOLnLkcS2eXzQzNnk7u/s2ynKYMhc5Ny13cNceokIZQ4eTaSKMKnoK/brXRv9UJmNOQEcgzGWLMOlbK2zClOnE1abzzLuIBnBkccCEfY4TPYlrW9xXK7K2W4YizeO82rIQu5d0bjbtbt5x/Zqn5xCRMTTm8c+67fa3QtEvTU9MZCrSIl4e8z4Py7r9LfUuz/Zr3yvDkBwzmWTtb67t4RLHe2ztJH6KirPG7gN+EBukj6gJV4yArJrba3ArQ1iMojlLA9fHBeQ33Yv0dTTGUZH9guOrIY9XUcS67JIH161ryjArG0aEaQs0GhkaQnvEZ67wcNytjEhnuZld7iSrBUjXyBYwygsr+fzdOm3sW14rf8A0zX3K5NWMwAIARHSMceh+K+p+jvXFnsdjG3qUpSJqEzIYNEsHGZJYM2HN3ATnb8vu7S6yUtpbItrlr62nvLeYCYvbW0JhEBMhah2moIPTrUt01xY+h7kwDzi+nLhqfAZZNmea9TP/a1h5halMgSYSyOggapMCO9qGAybkUhZcne3/NTf4i0yz5lNt3HJWGJaRpEgjWKhFFTpUmh7DqdFf0JX1NCcTFhm+bYnD3KVt/tuz0PVp1IzEiRpY4P3QTI4kjxZY4PksLyi9Fvc2kkIu7e/ypyWR9d5N0w2CJYz6boBSOqkfdPcg9KP/gteUSJVB4enGfI/s9PuUP8A9t2cJiUKM/Fp4d2nnqAx77th0eLFAWOWks8lfZL0Pxb9bhHSJ/TES3RJkKA7qsKjZuJAPUhumuvuXpi4r2VC2pzj/TBd3xkeR5DFl53ZPXtlabpdXtalM+dKOnS2EIZagTjIsNTdIBCeYOWehmJssuPalzZLZS2fqAqilt0ojboaNSgqa9SfALrhf8IvRFtUHfmcuxeuP+1dqlIPCqzZ6Rnicn6ssMPamm7zUt7k3zLw/LZE28VvBJDsYQUiMMsibxV22EhN3avUmg1rPpC8jQ8nXAx1ajniQGiMsBn9AubH/ZW1Suv1Jp1RIR0DLCMpa5FnYl24cODlF4jkK4rI3t8LJ5re6EC/Io8cIcW8bRAylU27mruLBD1r8a6rq+irnyKUIGGoatWOGOXDFurNW0f9pWJubipVjU0y0ingCe7mWJDOTk+TJryuRny2QuMhcyPLLPtG50RCFFTt2x+WgJP1+OvXenNqnt1sYVG1mRJI48l849b+oaO9XsalvqFKMBGIkGI4niXx4prkjWVCjVoexHcEdjrobnttLcbeVCq+ksXGcZRLxkODxIBxcHiGXntr3OtttxG4otqDhjlKMg0oni0okgsxHAugJILkSC4jANxH0Y1G2Rfj9B1873L0/u0buO528Ym8pERliPLuabNqiCf6c9OE4lg+MDk/0bbPUW0StJbVcykLKqDKOBNS1qO+iRAarDV3oSDlsJgYs4qSVBZdpI6qfDX0y1qzq0oznAwkRjEkExPJ4uD1jNfMLqlClVlCExOIOEgCBIcC0mI6jkttXqhe0IXgOqkdCpqD4j6joUTzCn/H/c3m/GyiWGcmubWOlLG9/wAzDQeAD1Zf9kjWStttCtiYseYwXVs9+vLXCMyRyOPxV4cd/UJjbjZDynFPjJDQNf2dZoa/Foz51/Zu1x6+yVB/bL9ea9TZ+sKcsK8TE8xiPtXQOC5HheQ2ousLk7fJQU6tA4Yr9Dp95T9Y1yKlGdItMEFertrylcx1UpCQ6E/9x/y6gtKwQGBB8dJCDkiIJI7HTQjtp1mZTWNb1Qo/yHk+D4zZte5vJw46DsjSHzOfhGgqzH6ANOFKdU6YByqLm7pWsddSQiPpkuW+W+/2Qu2ks+I2Zx1vUj83uwHnb6Ui6qn+1U67Nts8c6hc8l4ncPVspkxtw37Rz9g+1UDkcnkMrcve5W/nyN5IfPc3DtIx+onsPoGuwKYgGiAB0LyNevUrS1VJEnpUM5fkpMVxnN30MhimjtzHBKtao8zLCriniu+o+rU5YBFtDXViD9GxXxyNpe8vvczmt4WSe4V1DdQBM+1E71ARKAdOwprRRpGZaK+r7J6Zrblb1atMgCmYDHiZlusNnkXyXsjxaTHNGj3qMXhedj6UlAI9pYVAP97xprdV2wwZ5cCcjw6nWTc9plYzEDIEtyIRA4XMZsfEt/FTJTQxQzvDIkdJlLg72FCdo+73J6DV9TZ5QMRrB1EAYEDEPmejhmuDKsACWyCsKy9ss1xfDD3GsM9b/McWcZX8vMEgYxW+1wGoSPPUqwI20r1OlV2aUKJqmQLYsxyXMnu9OVcWxge9g7hnK+n3Cbz5zjWPbzlLbfb27P8AeMCNW3JPifRKVPx1w45LlXMWmenH28fe6lepKhe0JJ1GGuji2yfqKKdVsQjGVoyFIcVp0oSxIBAA6mvTUdY1afevq9L/AFmTYebKofPMdQiANOTiHN+DvmckTHx6eTGDKG6WONoGm9ExEkUR5Am7eOpVVPbx0jWAlpZb6H+r7c0AalafmaXLAaQfiwOGfBIW2Ge5w19mzeLDBYpvMJj3+oVAZgrpIV6AjvQg9CBpmoBPSyUP9X25oxJry1Si+Q0gt2kHhilJeP38ON/NWlia3ESyvGo84JQOVBZlQ7Qwr5q0r5aimkKsTLSykf8AV9tCmTK4nqEScg2A+D8+1I4vET5bf6M6Q7Jo4NrLuJeXqP5lp0r305zEMwuJ6U9C2+7WX6mtVkHMgBEDDTzzz5IzC8cuc0Lt4ruOGO0nEHqBBIJDTzMtJFHTp0BNfDppVKgg2GYXWtf9Z2spVPMryIEiI6WxAZ9WBxdxwZk3W+OnufninrbLESN6sdv6qyCNxH0IlWhJYUH79SlIRbpRZf6vo1TU8ytIATMY4RxiOPxfJEYjC3GZmnht7lIGti4kWaN91RTb5QSOorXzVWnY1GirMQZ+Krs/9a21bWTXm0ZSh4QMRkccx1Z8wxTQVdGZJF2SRsySJ32spKsKj4Eakvl+52M7G6qW88TCRD8+R9oxW0cbyuEQVJ6/QAO5J8ANRlIAOUtv2+tf1hRoh5F88BGIxlKRyjGIxlI5BOMVpb7GuJWYWsYI39jK3+iPAfDVMqkn0jP4L6JtvpPazQluF1OYsaQMdb6Z3VXL+lFu5TB7sM5TZy2OlsYqWYqu1SfKpNaD69XhfNbmdOdWUqUTGBPdiTqIHAGXE8ysaFSvaELB1IJFY1JQXjoQi8dkshibqO9xd9PjryLrHdW8jRuP2r3+o6olCNQNIA9anRr1KMtVORieYXQ/D/1DZSzMNnzK0GUt60OXtVCXKj4vH0R/2UP1649ztEZEmmW6F7DbvV1SLRuRqH5hn2cV1Hx/kuB5TZfP4HKQZK36eoIzSSM/CSM0ZT9Y1wqtCdItMMV7e1vKN1HVSkCPeOtPbU/mHTVTLUjaL8NUK1cvcv8A1C4uC1ltuGWct9fvVVyV7GY4IwR95Y67nPwBoPr16WhtBJepl0Lw1/6tpRiRbgmR4kMB7MyuWMvmspn76XJZrITZG9k+9LM1aD+6i9lH0Aa7cKUaQ0wDBeFubqrcT11JEnpTZur0pqURxVMVqRXUkzF1E+d20dxw/PpLMkCLAsgkkcRrujkSRUDMQNzldqjxJA1CYYLRZgirH6Zhl8draY8Zu8vjrmBpbu1uI4Uj7KWtpq1qCCKgVUj6NaaNUUy+eS+p7DvdOwpVnhqlPyzEcHhPWXIII6GfHNO83Jobm5t7r8vupoLe2mhlQM3mabysrMSwKqn79dX5tTE4kgsIkM+erBupu0qrdNw/Wz1xjJgDzOJ4O5yDcubJe15PaWt5j7qyivTdDKQ31yzRRtvjVTH6aKGI8sZIWgHxrqyW7UYkShqfWJSJAyAZs+EcAvNztp1HDO4YDFWI/uHY5rAXHA8bhcmmT5BGcNYWrpbqqy3DrHG7uQWoDSqBARUnf0GitvFKpQNOAOIbg3W/1NzxXJqbPUhcxrTIGg6j4gcMw32nlgvpPwW1NrxjHjcXjnLy2rHxt67Lduw+9EiN+3Xno5Oubcl6h6MPbx96l2pKhe0JIn528NoLA3LfIio+UH3CKqRVe3QrUH4k/HQwfU2K99X/ANiX9W1/T6KYGnQZAF9LacMcCyTNxcm3Nr8w/wAuU2GLpTZSMbR8B+Gvb6fjpsHdsVCX+w9zlai3aGWnU3e0szZt7UQ2TyDWU2ONz/kJ4zFJahFC7CytRaDp90D6hpCMQdTYrXV/2Xf1KUqYp04uGBDvHg+bZcFibI5C4hMFxdvPEa19SjNQ08oJ7KKdAPp0hGILsqKv+xdxq2s7ecYEzBiZMxaXQMPavWuQvbIobSYRBZvX2lFYGQKFBavU0A6DRKIlmFl2H1xdbPbxt6dOEoAyOLudXSOX3LFnf3uPiENnOsMe8SE+mrMWFOpLV7hQPq7U05RjIuQttl/se9taXlxpUyTIyfHEyJlJwDxdArGio8aogWRFjcbQfKrrIFBPhuQakZOuHS9VXdKN1GDD9QXOJ7jkk6McHcoy3vb2zVltLqS1VozF+ExQqpfexXaR1JFCxqadO2okCWJC6ln/ALA3C1tP08BDCLRkRjE/m46pdfHFCgAAAdAOw014qvXnXqSqVCZSkSSTxJzK3jkeNg6NtZexGokAhirbO8rWdaNajIxnEuD9R4EHIg4EYFefkmFs0vxd3cMVpabRlEZwFt5JPujcexboad9MWNaZjpiTI+HDMD6Zr6BtnrWyoRnbVqEpWlaJNSiGanV/Pbkl4xke9pLaJeElsR4Lm1vYY7uxmFxZzjdbzjs6+BGpzpypkxmGkMwvndwKQqS8kyMHOnUwk3DUzh+bYJbUFUvaELGpBIrGpKC8e2hC01UorOk6E6YbN5bj9/HksNkJsbexEbZ4GKkgfysOzA+III1GrTjVjpkHCvtrmpbT105GJ6F1Vw39QuKurU23OIji7yBfLlbWNpIJ/jujWrRt49Kj6tcG52eQL0sRyXvds9XU5jTdDSeYxB9nBXX/AMQ+G/8A3x/9TL/7OuP+iq8l6X5va/n9xXzcYmo6695FfGFrQEdT1PfSISZe29tvUk0AGmAnkqZ5R7xWNnmbjhft/hp/c73Bgot3gsZIiWOM3dBJlsiaw2yj+7VpD2C6pnWAOmIc/DrK6lvtspQ82tLy6fM5y/cjmevJNuK9o8nyTJWPKvevPR82zNhKt1heG2SvBxjESr1VobVjuu5VP/bXFfoUaI0DIvMueXAKdTco0omnax0ROBkcakus/hHRHtVLe9Xsje4vkkfuRxDHNkrSFzNl8NAFMi0B+6GVgAB0DgVUUFVKqxruqBnTlAYA8ccPp2cDguz6d3qNvXhKoHMT0d7tBY+/jHFcwf8AESHHW/LLB+OSW8vIJJWj9V4kMIeNUCOvojeFIPWoJr/e665R2eUpUpa/A3A44vzw+nDBfQKfqynCncQjR/vEtiO64AY93Fm6CevFN+O55dzZC0aDAR380Uc0KW8ILSyLLFbxLuZQWJX5cHpTv4auntIMSNRDsewyP/xLLT9UyhUEzSiWBHJ3EIhz0aH9uDLrL2h9oslyPMQ845VYSY21X1mx9m7h2VLjpJskCrvkdBsaQVCjcQxkP4euztPJhpd8nOWXL6dC8j6m9Qi8qd0NiSzvmeJYchnjIhzhn22AFCqihEQBURQAqgdAAB2AGt7BeIdZ6/HQwQkbiX0YJpSaemhavQdh8T0+3VlKnrmI8yp04mcgOZSc0XofkheTdFlpoo5r6C9LtGvqQmV1hZnFWh9VlVl6eVuq9W7Qt6UtXdGD4N18etvgvXy2ygABoGPF0r8vcepEsF98wgjvZr292pLbwxRsxs1JR0O54opGkYbgGBFBt60ys6RGRGI449Ob5EhujrWeey0pDukjPH4LW3t7y6IMN3CLhb6GwltpQU2s8cHqFYw7M8cMtyqyS0HUBQvmGiVnSjFiDk78ePsxAwHtfBRjstMw0iRd8/q+9CS3MpjiMFyJvmJfSi227RsqhYN7NukajK85TaAwO0ncBpCxpRId+3r6OQd8Fmq7VTpSiNROos3xTtd2FpbXVhALi7Rb/Kx2TTG4HoxW8aRNPIJCjE+oXZVJWodSF6asjRhIE6Y4B8uPAfb0ZrqT2y3DDTmU27IPTwMnqZKKHL293dTSzbYz6afMCD/EZFSpjWhJUlfMyANqw29MmXdi8SBh0s/Xn7DkVE7bbvHu5v8AQp55JjrCyu7O149cz3aW+Olvs5dXFwzbVjuoYGaQx1WEKPU6UWoBp5gNVUaUJRJnEDFhh0E+3gpz2u3cAR+nSgsZbWeRyVwsk15ZYyJLeVrWd5YbqFLj15AZ23yqlIolqxeg3fcHUrKpQhCIOmJOPBwWbL2n70R222MvD7MVvKLdL3IRWTSfIxSqLUSs7uA0ayEbpAGIBagqO2uddwjExwALYt1lee3alTpVtNMMGTdlY8jLjryPFXCW2ReMi1mkHQN49aGhI6AkGh60Oqrfy41AagePH6fEcVzHVMZ0Wsc+Euby1mfhuJnCZrC9fmbW9bq8l71Jl3k7g9aMOg79fUWmoxnGJHnSHdl+GUOUPytk3A55KY96vG2nt7m3guLOVJrWVFa2liIKFCPLtp0pTXlJ0zCRjIEEZvm6gluvx1Bghe/boYIde02Q69oSXj20IWuqVFY00L2hC1k+4/8Aqn+GgZpHJdGU+nXCcr1656JqdehAZeTVQZ73Qu8O9wtvxc5Rra8Wzlihuj6odprmHzIsDgf+7FujGoYeOqZVm4Lp0bCNRnmzh8sMgefSmrI+6eOycGew2U4vkLTET4dZnv5LhrYXFreqqOYpEVZF6S9HQ1BBPSmkazuCOCsp7fKBjOMwTq5OxHP7CnLh9/xPhftrBc8V4nbYDDWEFvK2CspEX8Wd/Tdp5vMzMrV3SSVLUrp0zGMMAyruoVa9yRUmZEvieQ5D6hkn+09wrK7yDY+PGzllW+3Ojq5V7OR49rIo8obZ5mJpGWUN3rqYqOWZUSszGOp+Xv8Ap7WLJi/4v2EaWjthpZHuI4XmS1uFnMDyxzSek+1Ad/4VEoCrhgwYLoFQ8lb8vOPeyf25Y+/HiOSg2YzHtzySY3Gb9sLW7lbY0t9ujUv6sEkiMjQqpl3FOhp0QiRto0mBxZaadOtTDRqYfYRzyz7cA6NwL+2uIspMtheAYy2a0ucfbyj1knaM3y79xEgfzRgghVUlgVI8QsxTBDtyUKhryOmUziDwbLq5qTn3gsjII48PLdbvS9KS3nWSOVXlkiBgfYFYHYNgJUsTtA6E6kCFR+gLZ+7LAZ/XmsWnu5DdSWyHBy2wuWgWN5bhAKSvJGzfc6AGOq7qF1qyjaK6cWPBE7ExB7wwfh1H6csk7Se40MWH49mZbFLeDO+v6nr3KotsIFdtzOEYupKfeVaBfMdWaQIg81WLUmcoPjFuGb/T6kwP7xWrK6/kN0zAVKesqnpbrcBgwWlBU9QahVMlOwMYz0lwC4V0bKUSCJAdPtb6dOCTX3Uxu2eZ+L3e7ZLM1ujetdTBLcXCbolUlnYuQyklox5npWmrv1VTnL6D6ZKw0axP9zNnL4Ztm/8A14Kz7WazvLa1ultI1W8hjlVClCFkUOFYUHavYjvq6JqthIt1rn+fUgTESOGGar+X3JxEEiWt/g9t8Z2i+UicTGWL1Jo1e2IjVpnPoMxjCghdp7sgaj9RUH4pP1/BbY0aucZ4c+nA444Z58+otrce59jDh0yVvxPIXr3cVi35ei0mMl4xojkqWG2h2swAYg0p0JhKvUwk5cM3tTFCcqjGpiCcX5cVGh702a5Y4t+H3McctjNfrIL2rSelBI5UhV2liBtJLdmPfqCjf1nZz7vsW0UK2jUKxzbjzbmnCH3bx7Li3ueFX0EOQgmuL0erv+WkLSoUaIoKtI0KA9B3G77ul+vrMMT9Pp7FUbaqRIea7HtdulTThHLrHmPzDx4uTETWt1JAoe6BlpDHCVfyMHXyz0AWoUdCRupqUL6tLiVRdGvbkHzCcBz6R9Sa4PcG0vmWS3xIkjCxSzX02VI9NNtx6kjSKklBCsL/AHiCRXaKd4fMavP4fYrSK4LmqX6j0Nx4uvP7mJZWkFweOhILobrULfxktW0jvGZ6xigVZApILeagFSaapncykdUsT1qg2cqki83PHDpISre6Votu835QzSxzGOSzF3H6ojE4h9RV2VckMpCpU1Ow0ZWpHzuhR+Xl21e7of6dvJTfAZO35Hh7bM/IC2GSV1kglCuSIpGjoW2jetVqpp2OroVCQCHCx1qXlzMXdlHOac1j4OuKjhwMmSjv/XZltm9JYFhMdXYLG4CkydT0A/bqFWqQXOJK0Wlp5795mb3+1Lca51a8ku7+yTGz2FxjrsWc6zyRA7yJmBC7gxBWIMKDs1ewJ0oVNSVxZmiAXcEP8PtQl37ocbs726x8trlnurS8NhKsdi7KbjcyKitWh3FWAPboeukawBbFSjYVJREgYsQ+fBCTe7HHltLa+trW+uba5a5io0PpTLJAkbr+C3nZZBJ0ZQexNKBqLzgpR26oSQSOHv6ehbN7scbWOWb5HLvBDG0ksyWqsq7TSnSUmpqAQPu9m2lW2nnBHy6pk8e37vpw4IW5928RF80YcXdTJCWSNZHjilZ09IPui87Kq+rVieoA3baEVDWHJMbdIs5H0f7ETbe6eBlsfnbi0u7Y+tcRi2/DL7IJI4xIfUeKm/1AQO4AatApOq/MBCrlt8xJgRw58e36MpHx3l2N5NJcxWNpf2xt4lmVr2AQiSNzQMg3MR4VDAEV7d6TjPUqK9tKizkHqLqU6ks61f7j/wCqf4aAkcl0Z01wcV7Bc8a9GvJLB29d1K081advp+jQmseSo+7u2Hb2rs8afRoQknIESmKmynk2020+inTTizoTVK8vWgbua0H263UxHoSZA+pL02qa9KUH2eGtIjHoUUiZZQRtRu/Si+NPq+GrRCHMJEpFppq9I37jrt8fDw1MU4cx2qJJSJnuQPLHIRXwQ/H6tWinT5jtUTIoc3F3Q7IpaUHZD8Onh8O2ro0qXMdqgZS5FIeveGnkkC08vkPanh0+GtMKNHiY9oVJlPpSoa5MRbzhadqdO3Xw+GtHk23OPaFDVU5FapLe1ICy9Ca+U9/Hw1RUo0RkY9oUhOfIpdJbuvVZP90/2ayyp0uY7VYJy5FLCe4BA9OTv5fIe/Tt01QadPmO1WiRSsc0xeQIj+rQettTzUp03dK9u1dVmnDmO1S1Flok8PhHHXatKIv3em3w7dqarMIcwpvLpRKy1P3ADXwUVrX6vjqBhDmEOUbbuxJ2qa/z0HX9tBrPUjDoUsU9W56Gvbx6awzAfBSS/kp/LSnTtSmoIWfLUdt1enata/2/v0IWRSgp2oKU7U8NCFq2yjb9u3b591Kba+NfCuhAde8m96bfV/7Ttu/b46EJTzfToSWD369/D4+P/PoQsfH4da/vroQtTt/0e30fD+zQgrB7mtK1Na/HrX/l1U5UVk1qa99DIWNBQtX/AMN/9U/w0cUjkujtcBevX//Z\"></p><p><img src=\"data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABQAAD/4QPzaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjMtYzAxMSA2Ni4xNDU2NjEsIDIwMTIvMDIvMDYtMTQ6NTY6MjcgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0idXVpZDo1RDIwODkyNDkzQkZEQjExOTE0QTg1OTBEMzE1MDhDOCIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDpBOUQwQUY4NDVDRjMxMUU5QkUyRjgwNDRFQ0EwQURFNiIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDpBOUQwQUY4MzVDRjMxMUU5QkUyRjgwNDRFQ0EwQURFNiIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBJbGx1c3RyYXRvciBDUzYgKFdpbmRvd3MpIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6QjI2REZGODI1Q0NFMTFFOThERTg4RDlEMjE3NkE4RTYiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6QjI2REZGODM1Q0NFMTFFOThERTg4RDlEMjE3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\"></p>', 'https://yanxuan.nosdn.127.net/14942967243991290.png', 'https://yanxuan.nosdn.127.net/14942996754171334.jpg', '博迈德Marker条带清晰，背景干净，买Marker就找博迈德！', 0, 59.90, '7.8k', 'https://www.wangcong.fun:8002/static/upload/topic/76c8af95-3a55-4248-a1c9-d7cd8680f337.jpg', 0, 0, 1, 1);
INSERT INTO `nideshop_topic` VALUES (315, 'df', '<p><img src=\"https://www.wangcong.fun:8002/static/upload/richText/92de937e-86f3-4bc0-ae6a-02c7dad91373.png\"></p>', '', '', 'hfdh', 0, 0.00, '0', 'https://www.wangcong.fun:8002/static/upload/topic/2ee3ba9d-8a6a-438e-aa1f-3e8bea1522c4.jpg', 0, 0, 100, 1);
COMMIT;

-- ----------------------------
-- Table structure for nideshop_topic_category
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_topic_category`;
CREATE TABLE `nideshop_topic_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pic_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of nideshop_topic_category
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_topic_category` VALUES (1, '严选幕后', 'https://yanxuan.nosdn.127.net/dc1b671ad54e16339f1b26cfeec6a1ea.jpg');
INSERT INTO `nideshop_topic_category` VALUES (2, '丁磊私物推荐', 'https://yanxuan.nosdn.127.net/1de4da49367dd7c01af1f7a2b23b0237.jpg');
INSERT INTO `nideshop_topic_category` VALUES (3, '特色系列', 'https://yanxuan.nosdn.127.net/14939888170021096.png');
INSERT INTO `nideshop_topic_category` VALUES (4, '明星商品', 'https://yanxuan.nosdn.127.net/14939888168151095.png');
INSERT INTO `nideshop_topic_category` VALUES (5, '严选推荐', 'https://yanxuan.nosdn.127.net/d943675462a06f817d33062d4eb059f5.jpg');
COMMIT;

-- ----------------------------
-- Table structure for nideshop_user
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_user`;
CREATE TABLE `nideshop_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `birthday` int(11) unsigned NOT NULL DEFAULT '0',
  `register_time` int(11) unsigned NOT NULL DEFAULT '0',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0',
  `last_login_ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_level_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `nickname` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `register_ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weixin_openid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for nideshop_user_coupon
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_user_coupon`;
CREATE TABLE `nideshop_user_coupon` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `coupon_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `used_time` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of nideshop_user_coupon
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_user_coupon` VALUES (1, 3, '0', 1, 1242142681, 4);
INSERT INTO `nideshop_user_coupon` VALUES (2, 4, '1000003379', 1, 1242976699, 14);
INSERT INTO `nideshop_user_coupon` VALUES (3, 4, '1000018450', 0, 0, 0);
INSERT INTO `nideshop_user_coupon` VALUES (4, 4, '1000023774', 0, 0, 0);
INSERT INTO `nideshop_user_coupon` VALUES (5, 4, '1000039394', 0, 0, 0);
INSERT INTO `nideshop_user_coupon` VALUES (6, 4, '1000049305', 0, 0, 0);
INSERT INTO `nideshop_user_coupon` VALUES (7, 4, '1000052248', 0, 0, 0);
INSERT INTO `nideshop_user_coupon` VALUES (8, 4, '1000061542', 0, 0, 0);
INSERT INTO `nideshop_user_coupon` VALUES (9, 4, '1000070278', 0, 0, 0);
INSERT INTO `nideshop_user_coupon` VALUES (10, 4, '1000080588', 0, 0, 0);
INSERT INTO `nideshop_user_coupon` VALUES (11, 4, '1000091405', 0, 0, 0);
INSERT INTO `nideshop_user_coupon` VALUES (24, 3, '0', 1, 0, 0);
INSERT INTO `nideshop_user_coupon` VALUES (25, 3, '0', 1, 0, 0);
INSERT INTO `nideshop_user_coupon` VALUES (26, 3, '0', 1, 0, 0);
INSERT INTO `nideshop_user_coupon` VALUES (27, 3, '0', 1, 0, 0);
INSERT INTO `nideshop_user_coupon` VALUES (28, 3, '0', 1, 0, 0);
INSERT INTO `nideshop_user_coupon` VALUES (29, 3, '0', 1, 0, 0);
INSERT INTO `nideshop_user_coupon` VALUES (30, 3, '0', 1, 0, 0);
INSERT INTO `nideshop_user_coupon` VALUES (31, 3, '0', 1, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for nideshop_user_level
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_user_level`;
CREATE TABLE `nideshop_user_level` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of nideshop_user_level
-- ----------------------------
BEGIN;
INSERT INTO `nideshop_user_level` VALUES (1, '普通用户', '0');
INSERT INTO `nideshop_user_level` VALUES (2, 'vip', '10000');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
