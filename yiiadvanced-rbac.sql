/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : yiiadvanced

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-06-26 11:08:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_assignment`
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------
INSERT INTO `auth_assignment` VALUES ('管理员1', '2', '1466824436');

-- ----------------------------
-- Table structure for `auth_item`
-- ----------------------------
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_item
-- ----------------------------
INSERT INTO `auth_item` VALUES ('/*', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/*', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/assignment/*', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/assignment/assign', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/assignment/index', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/assignment/revoke', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/assignment/view', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/default/*', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/default/index', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/menu/*', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/menu/create', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/menu/delete', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/menu/index', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/menu/update', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/menu/view', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/permission/*', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/permission/assign', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/permission/create', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/permission/delete', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/permission/index', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/permission/remove', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/permission/update', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/permission/view', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/role/*', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/role/assign', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/role/create', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/role/delete', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/role/index', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/role/remove', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/role/update', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/role/view', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/route/*', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/route/assign', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/route/create', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/route/index', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/route/refresh', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/route/remove', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/rule/*', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/rule/create', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/rule/delete', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/rule/index', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/rule/update', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/rule/view', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/user/*', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/user/activate', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/user/change-password', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/user/delete', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/user/index', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/user/login', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/user/logout', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/user/request-password-reset', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/user/reset-password', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/user/signup', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/admin/user/view', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/debug/*', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/debug/default/*', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/debug/default/db-explain', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/debug/default/download-mail', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/debug/default/index', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/debug/default/toolbar', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/debug/default/view', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/gii/*', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/gii/default/*', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/gii/default/action', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/gii/default/diff', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/gii/default/index', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/gii/default/preview', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/gii/default/view', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/site/*', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/site/error', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/site/index', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/site/login', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('/site/logout', '2', null, null, null, '1466823808', '1466823808');
INSERT INTO `auth_item` VALUES ('aaa', '1', 'aaa', null, null, '1466827252', '1466827252');
INSERT INTO `auth_item` VALUES ('test', '1', 'test', null, null, '1466826920', '1466826920');
INSERT INTO `auth_item` VALUES ('用户管理', '2', '用户管理', null, null, '1466824190', '1466824190');
INSERT INTO `auth_item` VALUES ('管理员1', '1', '管理员1', null, null, '1466824343', '1466824343');

-- ----------------------------
-- Table structure for `auth_item_child`
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/assignment/*');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/assignment/assign');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/assignment/index');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/assignment/revoke');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/assignment/view');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/default/*');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/default/index');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/menu/*');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/menu/create');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/menu/delete');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/menu/index');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/menu/update');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/menu/view');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/permission/*');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/permission/assign');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/permission/create');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/permission/delete');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/permission/index');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/permission/remove');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/permission/update');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/permission/view');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/route/*');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/route/assign');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/route/create');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/route/index');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/route/refresh');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/route/remove');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/rule/*');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/rule/create');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/rule/delete');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/rule/index');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/rule/update');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/rule/view');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/user/*');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/user/activate');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/user/change-password');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/user/delete');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/user/index');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/user/login');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/user/logout');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/user/request-password-reset');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/user/reset-password');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/user/signup');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/user/view');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/debug/*');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/debug/default/*');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/debug/default/db-explain');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/debug/default/download-mail');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/debug/default/index');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/debug/default/toolbar');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/debug/default/view');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/gii/*');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/gii/default/*');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/gii/default/action');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/gii/default/diff');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/gii/default/index');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/gii/default/preview');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/gii/default/view');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/site/*');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/site/error');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/site/index');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/site/login');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/site/logout');
INSERT INTO `auth_item_child` VALUES ('管理员1', '用户管理');

-- ----------------------------
-- Table structure for `auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------
INSERT INTO `auth_rule` VALUES ('文章', 'O:30:\"backend\\components\\ArticleRule\":3:{s:4:\"name\";s:6:\"文章\";s:9:\"createdAt\";i:1466909172;s:9:\"updatedAt\";i:1466909172;}', '1466909172', '1466909172');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(256) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '权限管理', null, '/admin/default/index', '1', 0x7B2269636F6E223A202266612066612D75736572222C202276697369626C65223A20747275657D);
INSERT INTO `menu` VALUES ('2', '路由', '1', '/admin/route/index', '2', 0x7B2269636F6E223A202266612066612D75736572222C202276697369626C65223A20747275657D);
INSERT INTO `menu` VALUES ('3', '角色管理', '1', '/admin/role/index', '2', null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(256) NOT NULL,
  `password_reset_token` varchar(256) DEFAULT NULL,
  `email` varchar(256) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '8BBAlCQXOPZ2GT6WRE8HVBD_bfi_9ELM', '$2y$13$Wi84aF/Jd0f1L9Y7DUPqRO23K9YRwVp1ZrLTRaSEp3uEoxWrlYwyO', null, '123456@qq.com', '10', '1466822044', '1466822044');
INSERT INTO `user` VALUES ('2', 'demo', 'vFVBJQ7zByzDqLFL8HrLBosRUDm8ZQRK', '$2y$13$f/snKaAOBd9z/DOsKV2h0.GVcgqxdIYKzLd5CQ3WE5yO1nlaYJ29i', null, 'demo@qq.com', '10', '1466822063', '1466822063');
