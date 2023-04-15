/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : luun_db

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2023-04-15 04:12:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `commentID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `photoID` int(11) NOT NULL,
  `content` text NOT NULL,
  `timeComment` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`commentID`),
  KEY `userID` (`userID`),
  KEY `photoID` (`photoID`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`photoID`) REFERENCES `photos` (`photoID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('6', '13', '6', 'Bla bla bla', '2019-04-11 16:46:28');
INSERT INTO `comments` VALUES ('8', '13', '6', 'Ok bla bla bla again', '2019-04-11 16:52:47');
INSERT INTO `comments` VALUES ('9', '13', '6', 'inner html checking', '2019-04-11 16:53:33');
INSERT INTO `comments` VALUES ('11', '13', '6', 'Test arranged', '2019-04-11 17:13:07');
INSERT INTO `comments` VALUES ('12', '13', '6', 'Bla blas bla bla', '2019-04-11 17:19:11');
INSERT INTO `comments` VALUES ('13', '13', '6', 'Testing', '2019-04-11 17:19:47');
INSERT INTO `comments` VALUES ('15', '15', '8', 'Beautiful!!!', '2019-04-11 19:33:11');
INSERT INTO `comments` VALUES ('16', '15', '8', 'I love it!', '2019-04-11 19:47:07');
INSERT INTO `comments` VALUES ('17', '14', '10', 'Awwww....', '2019-04-11 19:53:09');
INSERT INTO `comments` VALUES ('18', '14', '8', 'Beautiful!', '2019-04-11 19:56:56');
INSERT INTO `comments` VALUES ('19', '16', '13', 'tewsr', '2023-04-13 20:41:45');
INSERT INTO `comments` VALUES ('20', '16', '13', 'test', '2023-04-13 20:41:46');
INSERT INTO `comments` VALUES ('21', '25', '12', 'dfsdf', '2023-04-14 10:29:55');
INSERT INTO `comments` VALUES ('22', '25', '12', 'sdfsdf', '2023-04-14 10:30:00');
INSERT INTO `comments` VALUES ('23', '25', '8', 'sdfdsf', '2023-04-14 10:35:43');
INSERT INTO `comments` VALUES ('24', '25', '8', 'sdfdsfdsf', '2023-04-14 10:39:26');
INSERT INTO `comments` VALUES ('25', '25', '8', 'sdfsdf', '2023-04-14 10:39:34');
INSERT INTO `comments` VALUES ('26', '25', '8', 'dfssdf', '2023-04-14 11:05:01');
INSERT INTO `comments` VALUES ('27', '25', '15', 'asd', '2023-04-14 11:07:07');
INSERT INTO `comments` VALUES ('28', '25', '12', 'asdsad', '2023-04-14 11:07:46');

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `subject` varchar(64) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES ('1', 'a', 'a@gmail.com', 'sdf', 'sdf');
INSERT INTO `contacts` VALUES ('2', 'asd', 'asd@gmail.com', 'sd', 'dsf');
INSERT INTO `contacts` VALUES ('3', 'sad', 'a@gmail.com', 'as', 'as');
INSERT INTO `contacts` VALUES ('4', 'dd', 'dd@gmail.com', 'dd', 'ddd');
INSERT INTO `contacts` VALUES ('5', 'asd', 'asd@gmail.com', 'asd', 'asd');
INSERT INTO `contacts` VALUES ('6', 'asd', 'asd@gmail.com', 'asd', 'asdasd');
INSERT INTO `contacts` VALUES ('7', 'asd', 'asd@gmail.com', 'asd', 'asdasd');
INSERT INTO `contacts` VALUES ('8', 'asd', 'asd@gamil.com', 'asd', 'asd');
INSERT INTO `contacts` VALUES ('9', 'sdf', 'sdf@gmail.com', 'sdf', 'asd');

-- ----------------------------
-- Table structure for photos
-- ----------------------------
DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
  `photoID` int(11) NOT NULL AUTO_INCREMENT,
  `caption` varchar(512) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `likeCount` int(11) NOT NULL DEFAULT 0,
  `cmtCount` int(11) NOT NULL DEFAULT 0,
  `thumb` varchar(2083) DEFAULT NULL,
  `url` varchar(2083) NOT NULL,
  `timeUpload` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`photoID`),
  KEY `userID` (`userID`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of photos
-- ----------------------------
INSERT INTO `photos` VALUES ('6', 'First Image', 'Test', '13', '5', '7', null, 'public/images/user12024_181822Dreamweaver.jpg', '2019-04-08 18:18:22');
INSERT INTO `photos` VALUES ('8', 'Atlas Mountain', 'In Imlil', '13', '3', '7', null, 'public/images/user12027_184257pic2.jpg', '2019-04-11 18:42:57');
INSERT INTO `photos` VALUES ('10', 'Just chilling', 'Me, just chilling on a nice spring day', '15', '1', '1', null, 'public/images/user32027_195133bronson.jpg', '2019-04-11 19:51:33');
INSERT INTO `photos` VALUES ('11', 'Nice day', 'Still me, waiting for some hoomans', '15', '0', '0', null, 'public/images/user32027_19527more bronson.jpg', '2019-04-11 19:52:07');
INSERT INTO `photos` VALUES ('12', 'Friends in Hanoi', 'Dinner at Mau Dich', '14', '0', '3', null, 'public/images/user22027_201636pic.jpg', '2019-04-11 20:16:36');
INSERT INTO `photos` VALUES ('13', 't', 'e', '16', '0', '2', null, 'public/images/test2031_204122Coins_Base.png', '2023-04-13 20:41:22');
INSERT INTO `photos` VALUES ('14', 'undefined', 's', '25', '0', '0', null, 'public/images/mmm2032_84128Coins_Emission.png', '2023-04-14 08:41:28');
INSERT INTO `photos` VALUES ('15', 'undefined', 's', '25', '3', '1', null, 'public/images/mmm2032_84412Coins_Emission.png', '2023-04-14 08:44:32');
INSERT INTO `photos` VALUES ('16', 'undefined', 's', '25', '0', '0', null, 'public/images/mmm2032_84454Coins_Emission.png', '2023-04-14 08:44:54');
INSERT INTO `photos` VALUES ('18', 's', 's', '25', '0', '0', null, 'public/images/mmm2032_84841Coins_Emission.png', '2023-04-14 08:48:41');
INSERT INTO `photos` VALUES ('19', 's', 's', '25', '2', '0', null, 'public/images/mmm2032_85143Coins_Normal.png', '2023-04-14 08:51:43');
INSERT INTO `photos` VALUES ('20', 's', 's', '25', '0', '0', null, 'public/images/mmm2032_85213Coins_Normal.png', '2023-04-14 08:52:13');
INSERT INTO `photos` VALUES ('21', 's', 's', '25', '0', '0', null, 'public/images/mmm2032_85347Coins_Normal.png', '2023-04-14 08:53:47');
INSERT INTO `photos` VALUES ('22', 'asd', 'asd', '25', '0', '0', null, 'public/images/mmm2032_92823Coins_Occlusion.png', '2023-04-14 09:28:23');
INSERT INTO `photos` VALUES ('24', 'asd', 'asd', '28', '0', '0', null, 'public/images/hhh2032_144520Coins_Metallic.png', '2023-04-14 14:45:20');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(256) NOT NULL,
  `username` varchar(512) NOT NULL,
  `email` varchar(512) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `picURL` varchar(512) DEFAULT NULL,
  `intro` text DEFAULT NULL,
  `location` varchar(128) DEFAULT NULL,
  `startdate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`userID`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('13', '$2b$10$5BhVGAMN2CJpFYKTOidzHuypV5GElxiVhCGmM5Oe.6IRweUtQOSnC', 'user1', 'bla@bla.com', 'Nhung', 'Luu', 'public/images/user12024_181822pic.jpg', null, null, '2019-04-08 16:39:16');
INSERT INTO `users` VALUES ('14', '$2b$10$SWHCQJPWvilkmdV8I28OaObsoPfWtYE9ITU/oI1MCp4zfC1gm.X1S', 'user2', 'user2@gmail.com', 'David', 'McCaskey', 'public/users/undefineddavid.jpg', null, null, '2019-04-11 18:24:52');
INSERT INTO `users` VALUES ('15', '$2b$10$TiMl1ob8.DHbv5USnh74Tesm2pLZZBrMWQhsRzDUS4pTFetVVFjoy', 'user3', 'user3@gmail.com', 'Mimi', 'The Cat', 'public/users/undefinedpic4.jpg', null, null, '2019-04-11 19:05:08');
INSERT INTO `users` VALUES ('16', '$2b$10$tdZY1TXBtVR.u7lZR/hFb.tHbGh5atQD0RWMoA85sfaZNCUbZ4cLK', 'test', 'test@gmail.com', 'test', 'test', '', null, null, '2023-04-13 20:14:04');
INSERT INTO `users` VALUES ('24', '$2b$10$LnzEQ0b7V3t2qfRGxvUy9OK2oHUp.SCmHS5pQHUc0zx7q0DULKttG', 'ministar', 'ministar@gmail.com', '', '', '', null, null, '2023-04-14 07:35:58');
INSERT INTO `users` VALUES ('25', '$2b$10$5BhVGAMN2CJpFYKTOidzHuypV5GElxiVhCGmM5Oe.6IRweUtQOSnC', '.mmm', '.undefined', '', '', 'undefined', 'sdfsdfsdf', 'undefined', '2023-04-14 07:47:43');
INSERT INTO `users` VALUES ('26', '$2b$10$2CrdpjbAYcIsf5fAWjmo6.buTpKslUdoVajxRjR94nc4FZwxu2uwu', 'Labmen04', '128384728@gmail.com', '', '', '', null, null, '2023-04-14 11:51:14');
INSERT INTO `users` VALUES ('27', '$2b$10$vnqoGj/FRe18cfl4f0/TJOT3zQT5AnRGqHWY4Qv1SzcWyjXwAMBT2', '.ttt', '.ttt@gmail.com', '', '', 'undefined', 'asdasdasd', 'asdsad', '2023-04-14 12:57:11');
INSERT INTO `users` VALUES ('28', '$2b$10$OP1hC09C/JFn4HpyKTmF8.kLLRyirXn/fCYmQuNVMzdHhMcg8VPxa', 'hhh', 'hhh@gmail.com', '', '', 'public/users/hhhCoins_Base.png', 'dffffffffffffffffffffffffffdddddddd', 'dfg', '2023-04-14 13:01:32');
