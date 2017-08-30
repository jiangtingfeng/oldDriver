/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50628
Source Host           : localhost:3306
Source Database       : springboot

Target Server Type    : MYSQL
Target Server Version : 50628
File Encoding         : 65001

Date: 2017-08-29 14:34:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'YangJK', '250');
INSERT INTO `user` VALUES ('2', '隔壁老王', '100000');
INSERT INTO `user` VALUES ('3', 'shisheng', '100000');
INSERT INTO `user` VALUES ('4', '老姜', '100000');
INSERT INTO `user` VALUES ('5', '司洪凯', '1000000');
INSERT INTO `user` VALUES ('6', '小黑妮', '1000000');
INSERT INTO `user` VALUES ('7', 'happily晔', '18');


/*
Navicat MySQL Data Transfer

Source Server         : mysql_chat
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : springboot

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-08-30 16:00:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `chat_user_identity`
-- ----------------------------
DROP TABLE IF EXISTS `chat_user_identity`;
CREATE TABLE `chat_user_identity` (
  `identityID` varchar(40) NOT NULL,
  `createTime` date DEFAULT NULL,
  `updateTime` date DEFAULT NULL,
  PRIMARY KEY (`identityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chat_user_identity
-- ----------------------------