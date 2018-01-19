create database asjava4

use asjava4

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bill
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill` (
  `bill_id` bigint(20) NOT NULL,
  `user_id` bigint(20) default NULL,
  `total` double default NULL,
  `payment` varchar(255) collate utf8_unicode_ci default NULL,
  `address` longtext collate utf8_unicode_ci,
  `date` timestamp NULL default NULL on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`bill_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bill
-- ----------------------------
INSERT INTO `bill` VALUES ('1463295350519', '1463056081952', '13', 'Live', '123 - Son Tra - Da Nang', '2016-10-15 13:55:50');
INSERT INTO `bill` VALUES ('1463297481103', '1463056081950', '7', 'Bank transfer', '123 - Lien Chieu - Da Nang', '2016-10-18 14:31:21');

-- ----------------------------
-- Table structure for bill_detail
-- ----------------------------
DROP TABLE IF EXISTS `bill_detail`;
CREATE TABLE `bill_detail` (
  `bill_detail_id` bigint(20) NOT NULL auto_increment,
  `bill_id` bigint(20) default NULL,
  `product_id` bigint(20) default NULL,
  `price` double default NULL,
  `quantity` int(11) default NULL,
  PRIMARY KEY  (`bill_detail_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of bill_detail
-- ----------------------------
INSERT INTO `bill_detail` VALUES ('4', '1463295350519', '1', '200', '1');
INSERT INTO `bill_detail` VALUES ('5', '1463295350519', '2', '300', '1');
INSERT INTO `bill_detail` VALUES ('6', '1463295350519', '3', '400', '2');
INSERT INTO `bill_detail` VALUES ('7', '1463297481103', '1', '200', '2');
INSERT INTO `bill_detail` VALUES ('8', '1463297481103', '2', '300', '1');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` bigint(11) NOT NULL,
  `category_name` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'SMARTPHONE');
INSERT INTO `category` VALUES ('2', 'LAPTOP');
INSERT INTO `category` VALUES ('3', 'ACCESSORIES');

-- ----------------------------
-- Table structure for product
-- ----------------------------
use asjava4

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `product_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `product_description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '1', 'iphone 5', 'images/ip5s.jpg', '200', 'Màn hình:	LED-backlit IPS LCD, 4.7", Retina HD, Hệ điều hành:	iOS 9, Camera sau:	8 MP, Camera trước:	1.2 MP, CPU:	Apple A8 2 nhân 64-bit, 1.4 GHz, RAM:	1 GB, Bộ nhớ trong:	16 GB, Hỗ trợ thẻ nhớ:	Không, Không, Thẻ SIM:	1 Sim, Nano SIM, Kết nối:	WiFi, 3G, 4G LTE Cat 4.');
INSERT INTO `product` VALUES ('2', '1', 'iphone 5c', 'images/ipse.jpg', '250', 'Màn hình:	LED-backlit IPS LCD, 4.7", Retina HD, Hệ điều hành:	iOS 9, Camera sau:	8 MP, Camera trước:	1.2 MP, CPU:	Apple A8 2 nhân 64-bit, 1.4 GHz, RAM:	1 GB, Bộ nhớ trong:	16 GB, Hỗ trợ thẻ nhớ:	Không, Không, Thẻ SIM:	1 Sim, Nano SIM, Kết nối:	WiFi, 3G, 4G LTE Cat 4.');
INSERT INTO `product` VALUES ('3', '1', 'iphone 5s', 'images/ip5s.jpg', '300', 'Màn hình:	LED-backlit IPS LCD, 4.7", Retina HD, Hệ điều hành:	iOS 9, Camera sau:	8 MP, Camera trước:	1.2 MP, CPU:	Apple A8 2 nhân 64-bit, 1.4 GHz, RAM:	1 GB, Bộ nhớ trong:	16 GB, Hỗ trợ thẻ nhớ:	Không, Không, Thẻ SIM:	1 Sim, Nano SIM, Kết nối:	WiFi, 3G, 4G LTE Cat 4.');
INSERT INTO `product` VALUES ('4', '1', 'iphone 5', 'images/ipse.jpg', '250', 'Màn hình:	LED-backlit IPS LCD, 4.7", Retina HD, Hệ điều hành:	iOS 9, Camera sau:	8 MP, Camera trước:	1.2 MP, CPU:	Apple A8 2 nhân 64-bit, 1.4 GHz, RAM:	1 GB, Bộ nhớ trong:	16 GB, Hỗ trợ thẻ nhớ:	Không, Không, Thẻ SIM:	1 Sim, Nano SIM, Kết nối:	WiFi, 3G, 4G LTE Cat 4.');
INSERT INTO `product` VALUES ('5', '1', 'iphone 6 plus', 'images/ip6.jpg', '450', 'Màn hình:	LED-backlit IPS LCD, 4.7", Retina HD, Hệ điều hành:	iOS 9, Camera sau:	8 MP, Camera trước:	1.2 MP, CPU:	Apple A8 2 nhân 64-bit, 1.4 GHz, RAM:	1 GB, Bộ nhớ trong:	16 GB, Hỗ trợ thẻ nhớ:	Không, Không, Thẻ SIM:	1 Sim, Nano SIM, Kết nối:	WiFi, 3G, 4G LTE Cat 4.');
INSERT INTO `product` VALUES ('6', '1', 'iphone 6s', 'images/ip6s.jpg', '600', 'Màn hình:	LED-backlit IPS LCD, 4.7", Retina HD, Hệ điều hành:	iOS 9, Camera sau:	8 MP, Camera trước:	1.2 MP, CPU:	Apple A8 2 nhân 64-bit, 1.4 GHz, RAM:	1 GB, Bộ nhớ trong:	16 GB, Hỗ trợ thẻ nhớ:	Không, Không, Thẻ SIM:	1 Sim, Nano SIM, Kết nối:	WiFi, 3G, 4G LTE Cat 4.');
INSERT INTO `product` VALUES ('7', '1', 'iphone 6s plus', 'images/ip6s.jpg', '650', 'Màn hình:	LED-backlit IPS LCD, 4.7", Retina HD, Hệ điều hành:	iOS 9, Camera sau:	8 MP, Camera trước:	1.2 MP, CPU:	Apple A8 2 nhân 64-bit, 1.4 GHz, RAM:	1 GB, Bộ nhớ trong:	16 GB, Hỗ trợ thẻ nhớ:	Không, Không, Thẻ SIM:	1 Sim, Nano SIM, Kết nối:	WiFi, 3G, 4G LTE Cat 4.');
INSERT INTO `product` VALUES ('8', '1', 'iphone SE', 'images/ipse.jpg', '450', 'Màn hình:	LED-backlit IPS LCD, 4.7", Retina HD, Hệ điều hành:	iOS 9, Camera sau:	8 MP, Camera trước:	1.2 MP, CPU:	Apple A8 2 nhân 64-bit, 1.4 GHz, RAM:	1 GB, Bộ nhớ trong:	16 GB, Hỗ trợ thẻ nhớ:	Không, Không, Thẻ SIM:	1 Sim, Nano SIM, Kết nối:	WiFi, 3G, 4G LTE Cat 4.');
INSERT INTO `product` VALUES ('9', '1', 'iphone 7', 'images/ip6s.jpg', '700', 'Màn hình:	LED-backlit IPS LCD, 4.7", Retina HD, Hệ điều hành:	iOS 9, Camera sau:	8 MP, Camera trước:	1.2 MP, CPU:	Apple A8 2 nhân 64-bit, 1.4 GHz, RAM:	1 GB, Bộ nhớ trong:	16 GB, Hỗ trợ thẻ nhớ:	Không, Không, Thẻ SIM:	1 Sim, Nano SIM, Kết nối:	WiFi, 3G, 4G LTE Cat 4.');
INSERT INTO `product` VALUES ('10', '1', 'iphone7 plus', 'images/ip6s.jpg', '750', 'Màn hình:	LED-backlit IPS LCD, 4.7", Retina HD, Hệ điều hành:	iOS 9, Camera sau:	8 MP, Camera trước:	1.2 MP, CPU:	Apple A8 2 nhân 64-bit, 1.4 GHz, RAM:	1 GB, Bộ nhớ trong:	16 GB, Hỗ trợ thẻ nhớ:	Không, Không, Thẻ SIM:	1 Sim, Nano SIM, Kết nối:	WiFi, 3G, 4G LTE Cat 4.');
INSERT INTO `product` VALUES ('11', '2', 'Macbook Air MJVM2ZP/A ', 'images/mac.png', '2000', 'U:	Intel, Core i5 Broadwell, 5250U, 1.60 GHz, RAM:	DDR3L(On board), 4 GB, 1600 MHz, Đĩa cứng:	SSD, 128 GB, Màn hình rộng:	11.6 inch, HD (1366 x 768 pixels), Cảm ứng:	Không, Đồ họa:	Intel HD Graphics 6000, Share (Dùng chung bộ nhớ với RAM), Đĩa quang:	Không, Webcam:	1.3 MP, Chất liệu vỏ:	Vỏ kim loại nguyên khối, Cổng giao tiếp:	MagSafe 2, 2 x USB 3.0, Thunderbolt 2');
INSERT INTO `product` VALUES ('12', '2', 'Macbook Pro MF839ZP/A ', 'images/mac1.png', '2300', 'U:	Intel, Core i5 Broadwell, 5250U, 1.60 GHz, RAM:	DDR3L(On board), 4 GB, 1600 MHz, Đĩa cứng:	SSD, 128 GB, Màn hình rộng:	11.6 inch, HD (1366 x 768 pixels), Cảm ứng:	Không, Đồ họa:	Intel HD Graphics 6000, Share (Dùng chung bộ nhớ với RAM), Đĩa quang:	Không, Webcam:	1.3 MP, Chất liệu vỏ:	Vỏ kim loại nguyên khối, Cổng giao tiếp:	MagSafe 2, 2 x USB 3.0, Thunderbolt 2');
INSERT INTO `product` VALUES ('13', '2', 'Macbook Pro MF896DSA ', 'images/mac3.png', '2500', 'U:	Intel, Core i5 Broadwell, 5250U, 1.60 GHz, RAM:	DDR3L(On board), 4 GB, 1600 MHz, Đĩa cứng:	SSD, 128 GB, Màn hình rộng:	11.6 inch, HD (1366 x 768 pixels), Cảm ứng:	Không, Đồ họa:	Intel HD Graphics 6000, Share (Dùng chung bộ nhớ với RAM), Đĩa quang:	Không, Webcam:	1.3 MP, Chất liệu vỏ:	Vỏ kim loại nguyên khối, Cổng giao tiếp:	MagSafe 2, 2 x USB 3.0, Thunderbolt 2');
INSERT INTO `product` VALUES ('14', '2', 'Macbook Air MJVM2ZP/A ', 'images/mac1.png', '2000', 'U:	Intel, Core i5 Broadwell, 5250U, 1.60 GHz, RAM:	DDR3L(On board), 4 GB, 1600 MHz, Đĩa cứng:	SSD, 128 GB, Màn hình rộng:	11.6 inch, HD (1366 x 768 pixels), Cảm ứng:	Không, Đồ họa:	Intel HD Graphics 6000, Share (Dùng chung bộ nhớ với RAM), Đĩa quang:	Không, Webcam:	1.3 MP, Chất liệu vỏ:	Vỏ kim loại nguyên khối, Cổng giao tiếp:	MagSafe 2, 2 x USB 3.0, Thunderbolt 2');
-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `user_email` varchar(255) collate utf8_unicode_ci default NULL,
  `user_pass` varchar(255) collate utf8_unicode_ci default NULL,
  `user_role` bit(1) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'caocong@gmail.com', '12345', '\0');
INSERT INTO `users` VALUES ('2', 'congcvpd01564@fpt.edu.vn', '12345', '\0');
