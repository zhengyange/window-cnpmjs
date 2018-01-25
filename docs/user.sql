/*
Navicat MySQL Data Transfer

Source Server         : dev
Source Server Version : 50634
Source Host           : 192.168.1.112:3306
Source Database       : cnpmjs

Target Server Type    : MYSQL
Target Server Version : 50634
File Encoding         : 65001

Date: 2018-01-24 15:54:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `salt` varchar(100) NOT NULL,
  `password_sha` varchar(100) NOT NULL,
  `ip` varchar(64) NOT NULL,
  `roles` varchar(200) NOT NULL DEFAULT '[]',
  `rev` varchar(40) NOT NULL,
  `email` varchar(400) NOT NULL,
  `json` text,
  `npm_user` tinyint(1) NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`name`),
  KEY `user_gmt_modified` (`gmt_modified`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='user base info';
