/*
 Navicat Premium Data Transfer

 Source Server         : 111
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : 192.168.2.201:3306
 Source Schema         : online-school

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 24/11/2020 18:56:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_id` int(11) NULL DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` enum('default','menu','button') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 122 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, '用户管理', 0, 'user:manage', 'default');
INSERT INTO `auth_permission` VALUES (3, '用户增加', 1, 'user:add', 'button');
INSERT INTO `auth_permission` VALUES (4, '用户删除', 1, 'user:delete', 'button');
INSERT INTO `auth_permission` VALUES (5, '用户更新', 1, 'user:update', 'button');
INSERT INTO `auth_permission` VALUES (6, '角色管理', 0, 'role:manage', 'default');
INSERT INTO `auth_permission` VALUES (7, '角色增加', 6, 'role:add', 'button');
INSERT INTO `auth_permission` VALUES (8, '角色删除', 6, 'role:delete', 'button');
INSERT INTO `auth_permission` VALUES (9, '角色更新', 6, 'role:update', 'button');
INSERT INTO `auth_permission` VALUES (11, '权限管理', 0, 'permission:manage', 'default');
INSERT INTO `auth_permission` VALUES (12, '权限增加', 11, 'permission:add', 'button');
INSERT INTO `auth_permission` VALUES (13, '权限删除', 11, 'permission:delete', 'button');
INSERT INTO `auth_permission` VALUES (14, '权限更新', 11, 'permission:update', 'button');
INSERT INTO `auth_permission` VALUES (31, '用户查看', 1, 'user:view', 'menu');
INSERT INTO `auth_permission` VALUES (32, '角色查看', 6, 'role:view', 'menu');
INSERT INTO `auth_permission` VALUES (33, '权限查看', 11, 'permission:view', 'menu');
INSERT INTO `auth_permission` VALUES (34, '用户专属', 0, 'normal:special', 'default');
INSERT INTO `auth_permission` VALUES (35, '链接管理', 0, 'link:management', 'default');
INSERT INTO `auth_permission` VALUES (36, '链接查看', 35, 'link:view', 'menu');
INSERT INTO `auth_permission` VALUES (37, '链接增加', 35, 'link:add', 'button');
INSERT INTO `auth_permission` VALUES (38, '链接删除', 35, 'link:delete', 'button');
INSERT INTO `auth_permission` VALUES (39, '链接更新', 35, 'link:update', 'button');
INSERT INTO `auth_permission` VALUES (42, '班级管理', 0, 'klass:manage', 'default');
INSERT INTO `auth_permission` VALUES (43, '班级添加', 42, 'klass:add', 'button');
INSERT INTO `auth_permission` VALUES (44, '班级删除', 42, 'klass:delete', 'button');
INSERT INTO `auth_permission` VALUES (45, '班级更新', 42, 'klass:update', 'button');
INSERT INTO `auth_permission` VALUES (46, '班级查看', 42, 'klass:view', 'menu');
INSERT INTO `auth_permission` VALUES (47, '班级学生管理', 0, 'classStudents:manage', 'default');
INSERT INTO `auth_permission` VALUES (48, '查看学生', 47, 'classStudents:view', 'button');
INSERT INTO `auth_permission` VALUES (49, '创建学生', 47, 'classStudents:add', 'button');
INSERT INTO `auth_permission` VALUES (50, '更新学生', 47, 'classStudents:update', 'button');
INSERT INTO `auth_permission` VALUES (51, '删除学生', 47, 'classStudents:delete', 'button');
INSERT INTO `auth_permission` VALUES (52, '班级课程管理', 0, 'ClassCourse:mange', 'default');
INSERT INTO `auth_permission` VALUES (53, '创建班级课程', 52, 'ClassCourse:add', 'button');
INSERT INTO `auth_permission` VALUES (54, '班级课程更新', 52, 'ClassCourse:update', 'button');
INSERT INTO `auth_permission` VALUES (55, '班级课程删除', 52, 'ClassCourse:delete', 'button');
INSERT INTO `auth_permission` VALUES (56, '资源管理', 0, 'resource:manage', 'default');
INSERT INTO `auth_permission` VALUES (57, '媒体库查看', 56, 'resource:view', 'menu');
INSERT INTO `auth_permission` VALUES (58, '资源上传', 56, 'resource:upload', 'menu');
INSERT INTO `auth_permission` VALUES (59, '付费课程管理', 0, 'course:manage', 'default');
INSERT INTO `auth_permission` VALUES (60, '课程新增', 59, 'course:add', 'button');
INSERT INTO `auth_permission` VALUES (62, '课程更新', 59, 'course:update', 'button');
INSERT INTO `auth_permission` VALUES (63, '课程删除', 59, 'course:delete', 'button');
INSERT INTO `auth_permission` VALUES (64, '课程视频管理', 0, 'coursevideo:manage', 'default');
INSERT INTO `auth_permission` VALUES (65, '课程视频查看', 64, 'coursevideo:view', 'button');
INSERT INTO `auth_permission` VALUES (66, '课程视频新增', 64, 'coursevideo:add', 'button');
INSERT INTO `auth_permission` VALUES (67, '课程视频更新', 64, 'coursevideo:update', 'button');
INSERT INTO `auth_permission` VALUES (68, '课程视频删除', 64, 'coursevideo:delete', 'button');
INSERT INTO `auth_permission` VALUES (70, '查看课程', 59, 'course:view', 'menu');
INSERT INTO `auth_permission` VALUES (71, '班级课程查看', 52, 'ClassCourse:view', 'menu');
INSERT INTO `auth_permission` VALUES (73, '学习时长管理', 0, 'resource:manage', 'default');
INSERT INTO `auth_permission` VALUES (74, '班级学习时长查看', 73, 'classStudy:view', 'button');
INSERT INTO `auth_permission` VALUES (75, '课程学习情况查看', 73, 'courseStudy:view', 'button');
INSERT INTO `auth_permission` VALUES (76, '视频学习时长查看', 73, 'videoStudy:view', 'button');
INSERT INTO `auth_permission` VALUES (77, '菜单管理', 0, 'menu:manage', 'default');
INSERT INTO `auth_permission` VALUES (78, '菜单查看', 77, 'menu:view', 'menu');
INSERT INTO `auth_permission` VALUES (79, '菜单添加', 77, 'menu:add', 'button');
INSERT INTO `auth_permission` VALUES (80, '菜单更新', 77, 'menu:update', 'button');
INSERT INTO `auth_permission` VALUES (81, '菜单删除', 77, 'menu:delete', 'button');
INSERT INTO `auth_permission` VALUES (82, '默认图片管理', 0, 'defaultimg:manage', 'default');
INSERT INTO `auth_permission` VALUES (83, '默认图片查看', 82, 'defaultimg:view', 'menu');
INSERT INTO `auth_permission` VALUES (84, '默认图片添加', 82, 'defaultimg:add', 'button');
INSERT INTO `auth_permission` VALUES (85, '默认图片更新', 82, 'defaultimg:update', 'button');
INSERT INTO `auth_permission` VALUES (86, '默认图片删除', 82, 'defaultimg:delete', 'button');
INSERT INTO `auth_permission` VALUES (87, '分类管理', 0, 'assortment:manage', 'default');
INSERT INTO `auth_permission` VALUES (88, '分类查看', 87, 'assortment:view', 'menu');
INSERT INTO `auth_permission` VALUES (89, '分类添加', 87, 'assortment:add', 'button');
INSERT INTO `auth_permission` VALUES (90, '分类更新', 87, 'assortment:update', 'button');
INSERT INTO `auth_permission` VALUES (91, '分类删除', 87, 'assortment:delete', 'button');
INSERT INTO `auth_permission` VALUES (92, '班级批量删除', 42, 'klass:batchdelete', 'button');
INSERT INTO `auth_permission` VALUES (93, '学生密码修改', 47, 'classStudents:password', 'button');
INSERT INTO `auth_permission` VALUES (94, '资源删除', 56, 'resource:delete', 'button');
INSERT INTO `auth_permission` VALUES (95, '订单管理', 0, 'order:manage', 'default');
INSERT INTO `auth_permission` VALUES (96, '订单查看', 95, 'order:view', 'menu');
INSERT INTO `auth_permission` VALUES (97, '订单编辑', 95, 'order:update', 'button');
INSERT INTO `auth_permission` VALUES (98, '订单删除', 95, 'order:delete', 'button');
INSERT INTO `auth_permission` VALUES (99, '订单添加', 95, 'order:add', 'button');
INSERT INTO `auth_permission` VALUES (100, '文章管理', 0, 'article:manage', 'default');
INSERT INTO `auth_permission` VALUES (101, '文章删除', 100, 'article:delete', 'default');
INSERT INTO `auth_permission` VALUES (102, '更新文章', 100, 'article:update', 'default');
INSERT INTO `auth_permission` VALUES (103, '添加文章', 100, 'article:add', 'default');
INSERT INTO `auth_permission` VALUES (104, '异常登录管理', 0, 'exception:manage', 'default');
INSERT INTO `auth_permission` VALUES (105, '异常登录查看', 104, 'exception:view', 'menu');
INSERT INTO `auth_permission` VALUES (106, '异常登录删除', 104, 'exception:delete', 'default');
INSERT INTO `auth_permission` VALUES (107, '学生管理', 0, 'student:manage', 'default');
INSERT INTO `auth_permission` VALUES (108, '学生查看', 107, 'student:view', 'default');
INSERT INTO `auth_permission` VALUES (109, '学生状态修改', 107, 'student:update', 'default');
INSERT INTO `auth_permission` VALUES (110, '学生信息删除', 107, 'user:delete', 'default');
INSERT INTO `auth_permission` VALUES (113, '文章查看', 100, 'article:view', 'menu');
INSERT INTO `auth_permission` VALUES (117, 'Seo管理', 0, 'Seo:manage', 'default');
INSERT INTO `auth_permission` VALUES (118, 'Seo查看', 117, 'Seo:view', 'menu');
INSERT INTO `auth_permission` VALUES (119, '普通用户管理', 0, 'nomalUser:manage', 'default');
INSERT INTO `auth_permission` VALUES (120, '普通用户查看', 119, 'nomaluser:view', 'default');
INSERT INTO `auth_permission` VALUES (121, '资源修改', 56, 'resource:update', 'default');

-- ----------------------------
-- Table structure for auth_role
-- ----------------------------
DROP TABLE IF EXISTS `auth_role`;
CREATE TABLE `auth_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_lc1sij60969nsgl5cy8bfgbsm`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_role
-- ----------------------------
INSERT INTO `auth_role` VALUES (1, 'admin', '管理员');
INSERT INTO `auth_role` VALUES (2, 'user', '用户');
INSERT INTO `auth_role` VALUES (3, 'vip', 'VIP用户');
INSERT INTO `auth_role` VALUES (4, 'operator', '运营人员');
INSERT INTO `auth_role` VALUES (5, 'teacher', '教师');
INSERT INTO `auth_role` VALUES (6, 'class_teacher', '班主任');

-- ----------------------------
-- Table structure for auth_role__permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_role__permission`;
CREATE TABLE `auth_role__permission`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`) USING BTREE,
  INDEX `FKftwnvejhwwa5h6k4bbqa5ht32`(`role_id`) USING BTREE,
  CONSTRAINT `FKftwnvejhwwa5h6k4bbqa5ht32` FOREIGN KEY (`role_id`) REFERENCES `auth_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKkxwk1yfjofe0kd7lghsuo5lum` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_role__permission
-- ----------------------------
INSERT INTO `auth_role__permission` VALUES (1, 3);
INSERT INTO `auth_role__permission` VALUES (1, 4);
INSERT INTO `auth_role__permission` VALUES (1, 5);
INSERT INTO `auth_role__permission` VALUES (1, 7);
INSERT INTO `auth_role__permission` VALUES (1, 8);
INSERT INTO `auth_role__permission` VALUES (1, 9);
INSERT INTO `auth_role__permission` VALUES (1, 12);
INSERT INTO `auth_role__permission` VALUES (1, 13);
INSERT INTO `auth_role__permission` VALUES (1, 14);
INSERT INTO `auth_role__permission` VALUES (1, 31);
INSERT INTO `auth_role__permission` VALUES (1, 32);
INSERT INTO `auth_role__permission` VALUES (1, 33);
INSERT INTO `auth_role__permission` VALUES (1, 34);
INSERT INTO `auth_role__permission` VALUES (1, 36);
INSERT INTO `auth_role__permission` VALUES (1, 37);
INSERT INTO `auth_role__permission` VALUES (1, 38);
INSERT INTO `auth_role__permission` VALUES (1, 39);
INSERT INTO `auth_role__permission` VALUES (1, 43);
INSERT INTO `auth_role__permission` VALUES (1, 44);
INSERT INTO `auth_role__permission` VALUES (1, 45);
INSERT INTO `auth_role__permission` VALUES (1, 46);
INSERT INTO `auth_role__permission` VALUES (1, 48);
INSERT INTO `auth_role__permission` VALUES (1, 49);
INSERT INTO `auth_role__permission` VALUES (1, 50);
INSERT INTO `auth_role__permission` VALUES (1, 51);
INSERT INTO `auth_role__permission` VALUES (1, 53);
INSERT INTO `auth_role__permission` VALUES (1, 54);
INSERT INTO `auth_role__permission` VALUES (1, 55);
INSERT INTO `auth_role__permission` VALUES (1, 57);
INSERT INTO `auth_role__permission` VALUES (1, 58);
INSERT INTO `auth_role__permission` VALUES (1, 60);
INSERT INTO `auth_role__permission` VALUES (1, 62);
INSERT INTO `auth_role__permission` VALUES (1, 63);
INSERT INTO `auth_role__permission` VALUES (1, 65);
INSERT INTO `auth_role__permission` VALUES (1, 66);
INSERT INTO `auth_role__permission` VALUES (1, 67);
INSERT INTO `auth_role__permission` VALUES (1, 68);
INSERT INTO `auth_role__permission` VALUES (1, 70);
INSERT INTO `auth_role__permission` VALUES (1, 71);
INSERT INTO `auth_role__permission` VALUES (1, 74);
INSERT INTO `auth_role__permission` VALUES (1, 75);
INSERT INTO `auth_role__permission` VALUES (1, 76);
INSERT INTO `auth_role__permission` VALUES (1, 78);
INSERT INTO `auth_role__permission` VALUES (1, 79);
INSERT INTO `auth_role__permission` VALUES (1, 80);
INSERT INTO `auth_role__permission` VALUES (1, 81);
INSERT INTO `auth_role__permission` VALUES (1, 83);
INSERT INTO `auth_role__permission` VALUES (1, 84);
INSERT INTO `auth_role__permission` VALUES (1, 85);
INSERT INTO `auth_role__permission` VALUES (1, 86);
INSERT INTO `auth_role__permission` VALUES (1, 88);
INSERT INTO `auth_role__permission` VALUES (1, 89);
INSERT INTO `auth_role__permission` VALUES (1, 90);
INSERT INTO `auth_role__permission` VALUES (1, 91);
INSERT INTO `auth_role__permission` VALUES (1, 92);
INSERT INTO `auth_role__permission` VALUES (1, 93);
INSERT INTO `auth_role__permission` VALUES (1, 94);
INSERT INTO `auth_role__permission` VALUES (1, 96);
INSERT INTO `auth_role__permission` VALUES (1, 97);
INSERT INTO `auth_role__permission` VALUES (1, 98);
INSERT INTO `auth_role__permission` VALUES (1, 99);
INSERT INTO `auth_role__permission` VALUES (1, 101);
INSERT INTO `auth_role__permission` VALUES (1, 102);
INSERT INTO `auth_role__permission` VALUES (1, 103);
INSERT INTO `auth_role__permission` VALUES (1, 105);
INSERT INTO `auth_role__permission` VALUES (1, 106);
INSERT INTO `auth_role__permission` VALUES (1, 108);
INSERT INTO `auth_role__permission` VALUES (1, 109);
INSERT INTO `auth_role__permission` VALUES (1, 110);
INSERT INTO `auth_role__permission` VALUES (1, 113);
INSERT INTO `auth_role__permission` VALUES (1, 118);
INSERT INTO `auth_role__permission` VALUES (1, 120);
INSERT INTO `auth_role__permission` VALUES (1, 121);
INSERT INTO `auth_role__permission` VALUES (4, 35);
INSERT INTO `auth_role__permission` VALUES (4, 36);
INSERT INTO `auth_role__permission` VALUES (4, 37);
INSERT INTO `auth_role__permission` VALUES (4, 38);
INSERT INTO `auth_role__permission` VALUES (4, 39);
INSERT INTO `auth_role__permission` VALUES (4, 56);
INSERT INTO `auth_role__permission` VALUES (4, 57);
INSERT INTO `auth_role__permission` VALUES (4, 58);
INSERT INTO `auth_role__permission` VALUES (4, 59);
INSERT INTO `auth_role__permission` VALUES (4, 60);
INSERT INTO `auth_role__permission` VALUES (4, 62);
INSERT INTO `auth_role__permission` VALUES (4, 63);
INSERT INTO `auth_role__permission` VALUES (4, 70);
INSERT INTO `auth_role__permission` VALUES (4, 77);
INSERT INTO `auth_role__permission` VALUES (4, 78);
INSERT INTO `auth_role__permission` VALUES (4, 79);
INSERT INTO `auth_role__permission` VALUES (4, 80);
INSERT INTO `auth_role__permission` VALUES (4, 81);
INSERT INTO `auth_role__permission` VALUES (4, 82);
INSERT INTO `auth_role__permission` VALUES (4, 83);
INSERT INTO `auth_role__permission` VALUES (4, 84);
INSERT INTO `auth_role__permission` VALUES (4, 85);
INSERT INTO `auth_role__permission` VALUES (4, 86);
INSERT INTO `auth_role__permission` VALUES (4, 87);
INSERT INTO `auth_role__permission` VALUES (4, 88);
INSERT INTO `auth_role__permission` VALUES (4, 89);
INSERT INTO `auth_role__permission` VALUES (4, 90);
INSERT INTO `auth_role__permission` VALUES (4, 91);
INSERT INTO `auth_role__permission` VALUES (4, 94);
INSERT INTO `auth_role__permission` VALUES (4, 95);
INSERT INTO `auth_role__permission` VALUES (4, 96);
INSERT INTO `auth_role__permission` VALUES (4, 97);
INSERT INTO `auth_role__permission` VALUES (4, 98);
INSERT INTO `auth_role__permission` VALUES (4, 99);
INSERT INTO `auth_role__permission` VALUES (4, 100);
INSERT INTO `auth_role__permission` VALUES (4, 101);
INSERT INTO `auth_role__permission` VALUES (4, 102);
INSERT INTO `auth_role__permission` VALUES (4, 103);
INSERT INTO `auth_role__permission` VALUES (4, 104);
INSERT INTO `auth_role__permission` VALUES (4, 105);
INSERT INTO `auth_role__permission` VALUES (4, 106);
INSERT INTO `auth_role__permission` VALUES (4, 113);
INSERT INTO `auth_role__permission` VALUES (5, 46);
INSERT INTO `auth_role__permission` VALUES (5, 48);
INSERT INTO `auth_role__permission` VALUES (5, 54);
INSERT INTO `auth_role__permission` VALUES (5, 56);
INSERT INTO `auth_role__permission` VALUES (5, 57);
INSERT INTO `auth_role__permission` VALUES (5, 58);
INSERT INTO `auth_role__permission` VALUES (5, 64);
INSERT INTO `auth_role__permission` VALUES (5, 65);
INSERT INTO `auth_role__permission` VALUES (5, 66);
INSERT INTO `auth_role__permission` VALUES (5, 67);
INSERT INTO `auth_role__permission` VALUES (5, 68);
INSERT INTO `auth_role__permission` VALUES (5, 71);
INSERT INTO `auth_role__permission` VALUES (6, 42);
INSERT INTO `auth_role__permission` VALUES (6, 43);
INSERT INTO `auth_role__permission` VALUES (6, 44);
INSERT INTO `auth_role__permission` VALUES (6, 45);
INSERT INTO `auth_role__permission` VALUES (6, 46);
INSERT INTO `auth_role__permission` VALUES (6, 47);
INSERT INTO `auth_role__permission` VALUES (6, 48);
INSERT INTO `auth_role__permission` VALUES (6, 49);
INSERT INTO `auth_role__permission` VALUES (6, 50);
INSERT INTO `auth_role__permission` VALUES (6, 51);
INSERT INTO `auth_role__permission` VALUES (6, 52);
INSERT INTO `auth_role__permission` VALUES (6, 53);
INSERT INTO `auth_role__permission` VALUES (6, 54);
INSERT INTO `auth_role__permission` VALUES (6, 55);
INSERT INTO `auth_role__permission` VALUES (6, 56);
INSERT INTO `auth_role__permission` VALUES (6, 57);
INSERT INTO `auth_role__permission` VALUES (6, 58);
INSERT INTO `auth_role__permission` VALUES (6, 64);
INSERT INTO `auth_role__permission` VALUES (6, 65);
INSERT INTO `auth_role__permission` VALUES (6, 66);
INSERT INTO `auth_role__permission` VALUES (6, 67);
INSERT INTO `auth_role__permission` VALUES (6, 68);
INSERT INTO `auth_role__permission` VALUES (6, 71);
INSERT INTO `auth_role__permission` VALUES (6, 73);
INSERT INTO `auth_role__permission` VALUES (6, 74);
INSERT INTO `auth_role__permission` VALUES (6, 75);
INSERT INTO `auth_role__permission` VALUES (6, 76);
INSERT INTO `auth_role__permission` VALUES (6, 92);
INSERT INTO `auth_role__permission` VALUES (6, 93);
INSERT INTO `auth_role__permission` VALUES (6, 94);

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `head_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `sex` tinyint(1) NULL DEFAULT 0,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '介绍',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` tinyint(4) NOT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `wxid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `study_time` int(20) NULL DEFAULT NULL,
  `poster_id` int(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_ku77d0yw2eqklxynf8py22kx9`(`phone`) USING BTREE,
  UNIQUE INDEX `UK_idbal341aer6t4dwjcq6le7r2`(`wxid`) USING BTREE,
  INDEX `FKhrr6g8weru6d3up4pwmxh533n`(`poster_id`) USING BTREE,
  CONSTRAINT `FKhrr6g8weru6d3up4pwmxh533n` FOREIGN KEY (`poster_id`) REFERENCES `sys_resource` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 191 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (15, '2020-05-11 10:38:47', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-10-29/u=1180991607,2645758304&fm=26&gp=0.jpg', 0, NULL, 'admin', '24d140f3e682463cdf4c951575d6f480', '13880797448', 0, '2020-07-10 17:38:36', NULL, NULL, NULL);
INSERT INTO `auth_user` VALUES (136, '2020-11-03 17:28:18', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/u=3874067489,2447793058&fm=11&gp=0.jpg', NULL, NULL, '测试班主任', '24d140f3e682463cdf4c951575d6f480', '13334444444', 0, '2020-11-16 11:34:17', NULL, NULL, NULL);
INSERT INTO `auth_user` VALUES (137, '2020-11-03 17:28:48', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/u=3874067489,2447793058&fm=11&gp=0.jpg', NULL, NULL, '测试教师', '24d140f3e682463cdf4c951575d6f480', '13335555555', 0, '2020-11-09 10:57:52', NULL, NULL, NULL);
INSERT INTO `auth_user` VALUES (138, '2020-11-06 15:41:44', 'https://admin.lieweiai.net/file/1d8e43cd-9602-40c1-8101-d5aa5ed66bd7.jpg', NULL, '', '伍浩', '24d140f3e682463cdf4c951575d6f480', '15061119362', 0, '2020-11-18 11:18:35', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', NULL, NULL);
INSERT INTO `auth_user` VALUES (139, '2020-11-09 09:41:08', 'https://admin.lieweiai.net/file/ce4f097f-8bdb-4d0b-8c96-dd4358eacf5d.jpg', 2, '441', '苟梦雨', '24d140f3e682463cdf4c951575d6f480', '18728190843', 0, '2020-11-16 11:37:36', 'o1NFYwO9w4vlM0VoTbqJk7Rfe3M8', NULL, NULL);
INSERT INTO `auth_user` VALUES (152, '2020-11-10 09:58:12', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/u=1492040398,1740972543&fm=11&gp=0.jpg', NULL, NULL, '张三', '24d140f3e682463cdf4c951575d6f480', '18728190841', 0, '2020-11-10 09:58:12', NULL, NULL, NULL);
INSERT INTO `auth_user` VALUES (163, '2020-11-11 21:27:57', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/u=1492040398,1740972543&fm=11&gp=0.jpg', NULL, NULL, 'kairui', '24d140f3e682463cdf4c951575d6f480', '17378730381', 0, '2020-11-16 11:33:44', 'o1NFYwPr1GAEFKjLnr7bBV6PoslA', NULL, NULL);
INSERT INTO `auth_user` VALUES (165, '2020-11-12 09:59:50', NULL, NULL, NULL, '王麻子', '8c026c29f3b423360023aea299992ad7', '18128190841', 0, '2020-11-12 09:59:50', NULL, NULL, NULL);
INSERT INTO `auth_user` VALUES (166, '2020-11-12 10:07:49', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/u=1492040398,1740972543&fm=11&gp=0.jpg', NULL, NULL, '杨M', 'a8d3bdd0561f4daa33e29b94b7294070', '19150186953', 0, '2020-11-12 14:58:15', 'o1NFYwIkViL0U_-ssL0jaE9zHFqk', NULL, NULL);
INSERT INTO `auth_user` VALUES (171, '2020-11-12 17:37:44', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/u=1492040398,1740972543&fm=11&gp=0.jpg', NULL, NULL, '黄玲', '948c04744101bc2d92ea80f7942b003c', '18783144337', 0, '2020-11-12 18:28:11', NULL, NULL, NULL);
INSERT INTO `auth_user` VALUES (172, '2020-11-12 17:46:49', NULL, NULL, NULL, '测试', '24d140f3e682463cdf4c951575d6f480', '18128190843', 0, '2020-11-18 11:17:10', NULL, NULL, NULL);
INSERT INTO `auth_user` VALUES (173, '2020-11-13 11:30:14', NULL, NULL, NULL, '黄玲', 'aac7eff46d9dd8fe2cd208fcfc54de8b', '19180636542', 0, '2020-11-13 11:30:14', NULL, NULL, NULL);
INSERT INTO `auth_user` VALUES (180, '2020-11-17 18:02:51', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/u=1492040398,1740972543&fm=11&gp=0.jpg', NULL, NULL, '张阳', '24d140f3e682463cdf4c951575d6f480', '18380108657', 0, '2020-11-17 18:02:51', NULL, NULL, NULL);
INSERT INTO `auth_user` VALUES (181, '2020-11-17 18:07:56', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/u=1492040398,1740972543&fm=11&gp=0.jpg', NULL, NULL, '杨盟', '948c04744101bc2d92ea80f7942b003c', '15583981581', 0, '2020-11-17 18:07:56', NULL, NULL, NULL);
INSERT INTO `auth_user` VALUES (184, '2020-11-19 10:10:37', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-18/202011181742418640539..jpeg', NULL, NULL, '黄岚馨', '24d140f3e682463cdf4c951575d6f480', '15211163016', 0, '2020-11-19 10:10:37', NULL, NULL, NULL);
INSERT INTO `auth_user` VALUES (188, '2020-11-19 11:45:46', NULL, NULL, NULL, '张一', '2e8c53a7a55af48c1578c657244c9d04', '18228190843', 0, '2020-11-19 11:45:46', NULL, NULL, NULL);
INSERT INTO `auth_user` VALUES (189, '2020-11-19 11:50:28', NULL, NULL, NULL, '李三', '8c026c29f3b423360023aea299992ad7', '18228190841', 0, '2020-11-19 11:50:28', NULL, NULL, NULL);
INSERT INTO `auth_user` VALUES (190, '2020-11-19 11:50:28', NULL, NULL, NULL, '王五', '24d140f3e682463cdf4c951575d6f480', '18228190842', 0, '2020-11-19 11:50:28', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for auth_user__role
-- ----------------------------
DROP TABLE IF EXISTS `auth_user__role`;
CREATE TABLE `auth_user__role`  (
  `u_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  INDEX `FK2nsbeyoghjutsw6t0jeudkxj1`(`role_id`) USING BTREE,
  INDEX `FKi813m2fjexrm1q5cfmmtyg313`(`u_id`) USING BTREE,
  CONSTRAINT `FK2nsbeyoghjutsw6t0jeudkxj1` FOREIGN KEY (`role_id`) REFERENCES `auth_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKi813m2fjexrm1q5cfmmtyg313` FOREIGN KEY (`u_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user__role
-- ----------------------------
INSERT INTO `auth_user__role` VALUES (15, 1);
INSERT INTO `auth_user__role` VALUES (136, 6);
INSERT INTO `auth_user__role` VALUES (137, 5);
INSERT INTO `auth_user__role` VALUES (139, 3);
INSERT INTO `auth_user__role` VALUES (152, 3);
INSERT INTO `auth_user__role` VALUES (165, 3);
INSERT INTO `auth_user__role` VALUES (163, 4);
INSERT INTO `auth_user__role` VALUES (171, 6);
INSERT INTO `auth_user__role` VALUES (166, 3);
INSERT INTO `auth_user__role` VALUES (173, 3);
INSERT INTO `auth_user__role` VALUES (180, 5);
INSERT INTO `auth_user__role` VALUES (181, 3);
INSERT INTO `auth_user__role` VALUES (172, 2);
INSERT INTO `auth_user__role` VALUES (138, 2);
INSERT INTO `auth_user__role` VALUES (184, 4);
INSERT INTO `auth_user__role` VALUES (188, 3);
INSERT INTO `auth_user__role` VALUES (189, 3);
INSERT INTO `auth_user__role` VALUES (190, 3);

-- ----------------------------
-- Table structure for cms_about
-- ----------------------------
DROP TABLE IF EXISTS `cms_about`;
CREATE TABLE `cms_about`  (
  `id` int(10) NOT NULL,
  `video_id` int(10) NULL DEFAULT NULL,
  `video_img` int(10) NULL DEFAULT NULL,
  `comment` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img_id1` int(10) NULL DEFAULT NULL,
  `img_id2` int(10) NULL DEFAULT NULL,
  `img_id3` int(10) NULL DEFAULT NULL,
  `img_id4` int(10) NULL DEFAULT NULL,
  `img_id5` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKky9fq7x4xth16etyh0va1xys0`(`video_id`) USING BTREE,
  CONSTRAINT `FKky9fq7x4xth16etyh0va1xys0` FOREIGN KEY (`video_id`) REFERENCES `sys_resource` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_about
-- ----------------------------
INSERT INTO `cms_about` VALUES (1, 19, 1, '关于我们', 1, 1, 1, 1, 1);

-- ----------------------------
-- Table structure for cms_category
-- ----------------------------
DROP TABLE IF EXISTS `cms_category`;
CREATE TABLE `cms_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `priority` int(11) NULL DEFAULT NULL,
  `type` enum('course','article','classcourse') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `front_state` int(2) NULL DEFAULT NULL,
  `coursecenter_state` int(2) NULL DEFAULT NULL,
  `path` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接地址',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `NewIndex1`(`name`, `type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 185 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_category
-- ----------------------------
INSERT INTO `cms_category` VALUES (142, '后置提升课程', 10, 'course', 1, 1, 'qwe');
INSERT INTO `cms_category` VALUES (148, '深度学习课程', 9, 'course', 1, 1, '/hk');
INSERT INTO `cms_category` VALUES (149, '机器学习课程', 8, 'course', 1, 1, '/ss');
INSERT INTO `cms_category` VALUES (167, '基础知识', 0, 'article', 1, 0, '');
INSERT INTO `cms_category` VALUES (168, '干货分享', 0, 'article', 1, 0, '');
INSERT INTO `cms_category` VALUES (169, '学习技巧', 0, 'article', 1, 0, '');
INSERT INTO `cms_category` VALUES (171, '强化学习课程', 7, 'course', 1, 1, '/150');
INSERT INTO `cms_category` VALUES (172, 'AI行业资讯', 0, 'article', 1, 0, '');
INSERT INTO `cms_category` VALUES (173, '进阶教程', 0, 'article', 1, 0, '');
INSERT INTO `cms_category` VALUES (174, '师资团队', 0, 'article', 1, 0, '');
INSERT INTO `cms_category` VALUES (175, '猎维教育动态', 0, 'article', 1, 0, '');
INSERT INTO `cms_category` VALUES (177, '猎维教育预习（前置）基础课程', 11, 'course', 1, 1, '1');
INSERT INTO `cms_category` VALUES (181, '人工智能21期班课程', 6, 'course', 1, 1, '1');
INSERT INTO `cms_category` VALUES (182, '人工智能22期班课程', 5, 'course', 1, 1, '1');
INSERT INTO `cms_category` VALUES (183, NULL, NULL, 'classcourse', 0, 0, NULL);
INSERT INTO `cms_category` VALUES (184, NULL, NULL, 'classcourse', 0, 0, NULL);

-- ----------------------------
-- Table structure for cms_category__course
-- ----------------------------
DROP TABLE IF EXISTS `cms_category__course`;
CREATE TABLE `cms_category__course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `priority` int(11) NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  `course_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKe2cfglov9d80medwqdm6tqwu1`(`category_id`) USING BTREE,
  INDEX `FKrtr9yelrgn2dgcgdpnofo9x8a`(`course_id`) USING BTREE,
  CONSTRAINT `FKe2cfglov9d80medwqdm6tqwu1` FOREIGN KEY (`category_id`) REFERENCES `cms_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKrtr9yelrgn2dgcgdpnofo9x8a` FOREIGN KEY (`course_id`) REFERENCES `t_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 371 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_category__course
-- ----------------------------
INSERT INTO `cms_category__course` VALUES (342, NULL, 181, 119);
INSERT INTO `cms_category__course` VALUES (349, NULL, 181, 115);
INSERT INTO `cms_category__course` VALUES (350, NULL, 181, 112);
INSERT INTO `cms_category__course` VALUES (351, NULL, 181, 120);
INSERT INTO `cms_category__course` VALUES (352, NULL, 181, 111);
INSERT INTO `cms_category__course` VALUES (357, NULL, 177, 133);
INSERT INTO `cms_category__course` VALUES (358, NULL, 177, 131);
INSERT INTO `cms_category__course` VALUES (359, NULL, 177, 126);
INSERT INTO `cms_category__course` VALUES (360, NULL, 177, 125);
INSERT INTO `cms_category__course` VALUES (361, NULL, 181, 110);
INSERT INTO `cms_category__course` VALUES (362, NULL, 181, 109);
INSERT INTO `cms_category__course` VALUES (363, NULL, 181, 124);
INSERT INTO `cms_category__course` VALUES (365, NULL, 181, 118);
INSERT INTO `cms_category__course` VALUES (366, NULL, 181, 136);
INSERT INTO `cms_category__course` VALUES (367, NULL, 148, 137);
INSERT INTO `cms_category__course` VALUES (368, NULL, 177, 138);
INSERT INTO `cms_category__course` VALUES (369, NULL, 177, 139);
INSERT INTO `cms_category__course` VALUES (370, NULL, 177, 140);

-- ----------------------------
-- Table structure for cms_category_article
-- ----------------------------
DROP TABLE IF EXISTS `cms_category_article`;
CREATE TABLE `cms_category_article`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `priority` int(20) NULL DEFAULT NULL,
  `category_id` int(20) NULL DEFAULT NULL,
  `article_id` int(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_eoknmqssivgw3mlo0lbrj6h5y`(`article_id`) USING BTREE,
  INDEX `FK_cms_category_article`(`article_id`) USING BTREE,
  INDEX `FK_cms_category_article2`(`category_id`) USING BTREE,
  CONSTRAINT `FK_cms_category_article2` FOREIGN KEY (`category_id`) REFERENCES `cms_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKjouexsou3af8aok03k72g6oem` FOREIGN KEY (`article_id`) REFERENCES `t_article` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_category_article
-- ----------------------------

-- ----------------------------
-- Table structure for cms_contact
-- ----------------------------
DROP TABLE IF EXISTS `cms_contact`;
CREATE TABLE `cms_contact`  (
  `id` int(10) NOT NULL,
  `titile1` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `titile2` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `suffix1` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `suffix2` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name2` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone2` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wechat1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wechat2` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email2` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address1` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address2` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `poster_id` int(200) NULL DEFAULT NULL,
  `map` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_contact
-- ----------------------------
INSERT INTO `cms_contact` VALUES (1, 'AI课程', 'AI课程', '咨询', '定制', '郭女士', '唐先生', '180-0058-5380', '180-8111-1075', '180-0058-5380', '180-8111-1075', NULL, 'tangshi@lieweiai.com', NULL, '猎维科技总部地址：成都市高新区益州大道599号航天科创中心20层', 1, '$(function() {\r\n        var map = new BMap.Map(\"container\")\r\n        var point = new BMap.Point(104.064177,30.562844)\r\n        new BMap.Marker(point)\r\n        map.centerAndZoom(point, 20)\r\n        var infoWindow = new BMap.InfoWindow(\"\", {\r\n            width: 8,\r\n            height: 8,\r\n            title: \'<p style=\"white-space: normal;\">成都市高新区益州大道599号航天城上城20层</p>\'\r\n        })\r\n        map.openInfoWindow(infoWindow, point)\r\n    })\r\n');

-- ----------------------------
-- Table structure for cms_default_image
-- ----------------------------
DROP TABLE IF EXISTS `cms_default_image`;
CREATE TABLE `cms_default_image`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_ayfq60796hlha57rffblx9jdi`(`type`) USING BTREE,
  UNIQUE INDEX `NewIndex1`(`type`) USING BTREE,
  INDEX `FKatp4ogqnmloegrjqaos8pvd3n`(`img_id`) USING BTREE,
  CONSTRAINT `FKatp4ogqnmloegrjqaos8pvd3n` FOREIGN KEY (`img_id`) REFERENCES `sys_resource` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_default_image
-- ----------------------------
INSERT INTO `cms_default_image` VALUES (4, 'logo', 'Logo设置', 295);
INSERT INTO `cms_default_image` VALUES (5, 'copyright', 'copyright', 299);
INSERT INTO `cms_default_image` VALUES (6, 'defaultCourseVideoPoster', '默认课程视频封面', 299);
INSERT INTO `cms_default_image` VALUES (7, 'defaultCoursePoster', '默认付费课程封面', 299);
INSERT INTO `cms_default_image` VALUES (8, 'defaultClassCoursePoster', '默认班级课程封面', 297);
INSERT INTO `cms_default_image` VALUES (9, 'defaultCourseArticlePoster', '默认文章封面', 297);
INSERT INTO `cms_default_image` VALUES (11, 'defaultUserPoster', '用户默认头像', 334);

-- ----------------------------
-- Table structure for cms_link
-- ----------------------------
DROP TABLE IF EXISTS `cms_link`;
CREATE TABLE `cms_link`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `priority` int(11) NULL DEFAULT NULL,
  `state` tinyint(4) NULL DEFAULT NULL,
  `img_id` int(11) NULL DEFAULT NULL,
  `type` enum('anchor','friend','partner','banner','newsbanner','copyright') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `partnertype` int(1) NULL DEFAULT NULL,
  `icp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备案号',
  `sortid` int(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK6e95wnjrmgk0cd38llx4dcyyg`(`img_id`) USING BTREE,
  CONSTRAINT `FK6e95wnjrmgk0cd38llx4dcyyg` FOREIGN KEY (`img_id`) REFERENCES `sys_resource` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_link
-- ----------------------------
INSERT INTO `cms_link` VALUES (27, 'www.lieweiai.cn', '新闻的banner', 20, 0, NULL, 'newsbanner', NULL, NULL, NULL);
INSERT INTO `cms_link` VALUES (36, '', 'MTCNN精品课程', 30, 0, 285, 'banner', NULL, NULL, NULL);
INSERT INTO `cms_link` VALUES (38, '', '猎维教育在线学习平台', 58, 0, 294, 'banner', NULL, NULL, NULL);
INSERT INTO `cms_link` VALUES (42, 'https://www.lieweiai.net/', '猎维教育', 70, 2, NULL, 'friend', NULL, NULL, NULL);
INSERT INTO `cms_link` VALUES (46, 'https://www.lieweiai.net/', '猎维教育', 36, 0, NULL, 'anchor', NULL, NULL, NULL);
INSERT INTO `cms_link` VALUES (47, 'https://www.lieweiai.net/center', '课程中心', 37, 0, NULL, 'anchor', NULL, NULL, NULL);
INSERT INTO `cms_link` VALUES (56, '', '华西口腔医院', 43, 1, 206, 'partner', 2, NULL, NULL);
INSERT INTO `cms_link` VALUES (57, '', '英伟达', 63, 1, 209, 'partner', 1, NULL, NULL);
INSERT INTO `cms_link` VALUES (58, '', '四川农业大学', 45, 1, 351, 'partner', 3, NULL, NULL);
INSERT INTO `cms_link` VALUES (61, '', '亚马逊', 61, 1, 204, 'partner', 1, NULL, NULL);
INSERT INTO `cms_link` VALUES (62, 'https://beian.miit.gov.cn/', 'Copyright © 2020成都猎维科技有限公司', 47, 1, NULL, 'copyright', 1, ' 蜀ICP备15027741号-5', NULL);
INSERT INTO `cms_link` VALUES (66, '', '四川大学', 53, 1, 366, 'partner', 3, '', NULL);
INSERT INTO `cms_link` VALUES (68, '', '腾讯', 50, 1, 308, 'partner', 1, '', NULL);
INSERT INTO `cms_link` VALUES (69, '', '四川大学华西医院', 44, 1, 304, 'partner', 2, '', NULL);
INSERT INTO `cms_link` VALUES (71, '', '航天科工', 62, 1, 303, 'partner', 1, '', NULL);
INSERT INTO `cms_link` VALUES (72, '', '阿里云', 59, 1, 307, 'partner', 1, '', NULL);
INSERT INTO `cms_link` VALUES (73, '', '谷歌', 67, 1, 256, 'partner', 1, '', NULL);
INSERT INTO `cms_link` VALUES (83, '', '阿里巴巴', 60, 1, 306, 'partner', 1, '', NULL);
INSERT INTO `cms_link` VALUES (89, '', '强化学习提升课程', 28, 1, 292, 'banner', 1, '', NULL);
INSERT INTO `cms_link` VALUES (90, '', '西南石油大学', 52, 1, 367, 'partner', 3, '', NULL);
INSERT INTO `cms_link` VALUES (91, '', '百度', 56, 1, 325, 'partner', 1, '', NULL);
INSERT INTO `cms_link` VALUES (92, '', '铁皮人', 46, 1, 323, 'partner', 1, '', NULL);
INSERT INTO `cms_link` VALUES (93, '', '中科创达', 54, 1, 326, 'partner', 1, '', NULL);
INSERT INTO `cms_link` VALUES (94, '', '京东', 57, 1, 327, 'partner', 1, '', NULL);
INSERT INTO `cms_link` VALUES (95, '', '成都轨道交通', 55, 1, 328, 'partner', 1, '', NULL);
INSERT INTO `cms_link` VALUES (96, '', '四川省人民医院', 65, 1, 368, 'partner', 2, '', NULL);
INSERT INTO `cms_link` VALUES (104, '', '电子科技大学', 66, 1, 370, 'partner', 3, '', NULL);
INSERT INTO `cms_link` VALUES (105, '', '中国科学院', 69, 1, 371, 'partner', 2, '', NULL);
INSERT INTO `cms_link` VALUES (106, '', '重庆交通大学', 68, 1, 372, 'partner', 3, '', NULL);
INSERT INTO `cms_link` VALUES (107, '', '四川大学锦城学院', 64, 1, 373, 'partner', 3, '', NULL);
INSERT INTO `cms_link` VALUES (108, 'https://www.lieweiai.com/', '猎维科技', 32, 1, NULL, 'friend', 1, '', NULL);
INSERT INTO `cms_link` VALUES (109, 'https://www.lieweiai.net/ainews', '人工智能行业资讯', 71, 1, NULL, 'anchor', 1, '', NULL);

-- ----------------------------
-- Table structure for cms_menu
-- ----------------------------
DROP TABLE IF EXISTS `cms_menu`;
CREATE TABLE `cms_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `template` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模板位置',
  `verify` tinyint(1) NULL DEFAULT 0 COMMENT '是否需要登录，1需要，0不需要',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `priority` int(11) NULL DEFAULT NULL,
  `parent_id` int(11) NULL DEFAULT NULL,
  `type` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 88 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_menu
-- ----------------------------
INSERT INTO `cms_menu` VALUES (1, '/center', NULL, 1, '课程中心', 10, 0, 2);
INSERT INTO `cms_menu` VALUES (14, '/share', NULL, 0, '干货分享', 3, 0, 1);
INSERT INTO `cms_menu` VALUES (42, '/teachers', '', 0, '师资团队', 4, 0, 1);
INSERT INTO `cms_menu` VALUES (63, '/', NULL, 0, '首页', 9, 0, 0);
INSERT INTO `cms_menu` VALUES (69, '/share/basic', '', 0, '基础知识', 0, 14, 1);
INSERT INTO `cms_menu` VALUES (70, '/share/learn', '', 0, '学习技巧', 0, 14, 1);
INSERT INTO `cms_menu` VALUES (71, '/share/ac', '', 0, '进阶教程', 0, 14, 1);
INSERT INTO `cms_menu` VALUES (72, '/ainews', '', 0, '资讯', 5, 0, 1);
INSERT INTO `cms_menu` VALUES (78, '/lw', '', 0, '猎维教育动态', 0, 0, 1);
INSERT INTO `cms_menu` VALUES (81, 'https://www.lieweiai.net/center/177', '', 0, '预习基础课程', 0, 1, 2);
INSERT INTO `cms_menu` VALUES (82, 'https://www.lieweiai.net/center/142', '', 0, '后置提升课程', 0, 1, 2);
INSERT INTO `cms_menu` VALUES (83, 'https://www.lieweiai.net/center/148', '', 0, '深度学习课程', 0, 1, 2);
INSERT INTO `cms_menu` VALUES (84, 'https://www.lieweiai.net/center/149', '', 0, '机器学习课程', 0, 1, 2);
INSERT INTO `cms_menu` VALUES (85, 'https://www.lieweiai.net/center/171', '', 0, '强化学习课程', 0, 1, 2);
INSERT INTO `cms_menu` VALUES (86, 'https://www.lieweiai.net/center/181', '', 0, '21期班课程', 0, 1, 2);

-- ----------------------------
-- Table structure for cms_menu_category
-- ----------------------------
DROP TABLE IF EXISTS `cms_menu_category`;
CREATE TABLE `cms_menu_category`  (
  `menu_id` int(20) NULL DEFAULT NULL,
  `category_id` int(20) NULL DEFAULT NULL,
  INDEX `menu_id`(`menu_id`) USING BTREE,
  INDEX `category_id`(`category_id`) USING BTREE,
  CONSTRAINT `cms_menu_category_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `cms_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `cms_menu_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `cms_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_menu_category
-- ----------------------------
INSERT INTO `cms_menu_category` VALUES (14, 168);
INSERT INTO `cms_menu_category` VALUES (70, 169);
INSERT INTO `cms_menu_category` VALUES (69, 167);
INSERT INTO `cms_menu_category` VALUES (72, 172);
INSERT INTO `cms_menu_category` VALUES (71, 173);
INSERT INTO `cms_menu_category` VALUES (42, 174);
INSERT INTO `cms_menu_category` VALUES (78, 175);

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
  `next_val` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES (11);
INSERT INTO `hibernate_sequence` VALUES (11);

-- ----------------------------
-- Table structure for menucolumn
-- ----------------------------
DROP TABLE IF EXISTS `menucolumn`;
CREATE TABLE `menucolumn`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `columnName` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `menuid` int(10) NULL DEFAULT NULL,
  `categoryid` int(10) NULL DEFAULT NULL,
  `column_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  `menu_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menucolumn
-- ----------------------------
INSERT INTO `menucolumn` VALUES (1, NULL, NULL, NULL, '教育动态', NULL, NULL);
INSERT INTO `menucolumn` VALUES (2, NULL, NULL, NULL, '123', NULL, NULL);
INSERT INTO `menucolumn` VALUES (6, NULL, NULL, NULL, '为您推荐', 167, 14);
INSERT INTO `menucolumn` VALUES (7, NULL, NULL, NULL, '为您推荐', 175, 78);

-- ----------------------------
-- Table structure for p_back_notice
-- ----------------------------
DROP TABLE IF EXISTS `p_back_notice`;
CREATE TABLE `p_back_notice`  (
  `resp_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `resp_msg` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `version` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `resp_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `acc_logon_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `external_product_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pay_time` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pl_mid_fee` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `settle_amount` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `card_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `special_free` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `credit_flag` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `disc_amount` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `clearDate` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trade_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remittance_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `acc_no` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mid_fee` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `extend` varchar(264) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total_amount` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `buyer_pay_amount` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bankserial` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `txn_complete_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pay_order_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `extra_fee` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of p_back_notice
-- ----------------------------

-- ----------------------------
-- Table structure for p_order
-- ----------------------------
DROP TABLE IF EXISTS `p_order`;
CREATE TABLE `p_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `order_number` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `payment` int(11) NULL DEFAULT NULL,
  `state` tinyint(1) NULL DEFAULT NULL,
  `payment_time` datetime(0) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `course_id` int(11) NULL DEFAULT NULL,
  `ordertype` int(4) NULL DEFAULT NULL,
  `order_amount` int(11) NULL DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `vipprice` int(11) NULL DEFAULT NULL,
  `userprice` int(11) NULL DEFAULT NULL,
  `trade_no` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `order_number_UNIQUE`(`order_number`) USING BTREE,
  INDEX `FK_p_order`(`course_id`) USING BTREE,
  INDEX `FK_p_order2`(`user_id`) USING BTREE,
  CONSTRAINT `FK_p_order` FOREIGN KEY (`course_id`) REFERENCES `t_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_p_order2` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 78 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of p_order
-- ----------------------------
INSERT INTO `p_order` VALUES (57, 'LIEVPAY2020111011354853', 1, 3, '2020-11-10 11:37:25', '2020-11-10 11:37:07', '2020-11-10 11:37:07', 139, 115, 1, 1, '用户购买课程：生物', 100, 1, 1, '20201110001362400000000000020605');
INSERT INTO `p_order` VALUES (58, 'LIEVPAY2020111011380532', 1, 3, '2020-11-10 11:38:22', '2020-11-10 11:38:06', '2020-11-10 11:38:06', 138, 111, 1, 1, '用户购买课程：英语', 1, 1, 1, '20201110001375100000000000020721');
INSERT INTO `p_order` VALUES (59, 'LIEVPAY2020111011405364', 1, 3, '2020-11-10 11:41:07', '2020-11-10 11:40:53', '2020-11-10 11:40:53', 139, 109, 1, 1, '用户购买课程：语文', 100, 1, 100, '20201110001369600000000000020762');
INSERT INTO `p_order` VALUES (60, 'LIEVPAY2020111011420357', 1, 3, '2020-11-10 11:42:14', '2020-11-10 11:42:03', '2020-11-10 11:42:03', 139, 111, 1, 1, '用户购买课程：英语', 1, 1, 1, '20201110001395800000000000020786');
INSERT INTO `p_order` VALUES (61, 'LIEVPAY2020111011424665', 1, 3, '2020-11-10 11:43:00', '2020-11-10 11:42:46', '2020-11-10 11:42:46', 139, 112, 1, 1, '用户购买课程：化学', 2900, 1, 1, '20201110001321100000000000020957');
INSERT INTO `p_order` VALUES (62, 'LIEVPAY2020111011452972', 1, 3, '2020-11-10 11:45:41', '2020-11-10 11:45:29', '2020-11-10 11:45:29', 139, 118, 1, 1, '用户购买课程：历史', 100, 1, 0, '20201110001340400000000000021244');
INSERT INTO `p_order` VALUES (64, 'LIEVPAY2020111121281963', 0, 1, NULL, '2020-11-11 21:28:20', '2020-11-11 21:28:20', 163, 118, 1, 0, '用户购买课程：历史', 100, 1, 0, NULL);
INSERT INTO `p_order` VALUES (69, 'LIEVPAY2020111613504915', 1, 3, '2020-11-16 13:51:20', '2020-11-16 13:50:49', '2020-11-16 13:50:49', 138, 119, 1, 1, '用户购买课程：地理', 100, 1, 0, '20201116001360000000000000031203');
INSERT INTO `p_order` VALUES (73, 'LIEVPAY2020111811011568', 0, 1, NULL, '2020-11-18 11:01:15', '2020-11-18 11:01:15', 152, NULL, 2, 0, '测试', 9900, 6900, 0, NULL);
INSERT INTO `p_order` VALUES (74, 'LIEVPAY2020111815231541', 0, 2, NULL, '2020-11-19 14:46:34', '2020-11-19 14:46:34', 138, 112, 1, 0, '用户购买课程：化学', 2900, 1, 1, NULL);
INSERT INTO `p_order` VALUES (75, 'LIEVPAY202011181817061', 1, 3, '2020-11-18 18:17:53', '2020-11-18 18:17:07', '2020-11-18 18:17:07', 166, 133, 1, 1, '用户购买课程：AI人工智能开发环境搭建', 50, 1, 2, '20201118001369700000000000060562');
INSERT INTO `p_order` VALUES (76, 'LIEVPAY2020111910575916', 1, 3, '2020-11-19 10:58:17', '2020-11-19 10:57:59', '2020-11-19 10:57:59', 138, 133, 1, 1, '用户购买课程：AI人工智能开发环境搭建', 1, 1, 1, '20201119001399800000000000019217');
INSERT INTO `p_order` VALUES (77, 'LIEVPAY2020111911010529', 1, 3, '2020-11-19 11:01:21', '2020-11-19 11:01:05', '2020-11-19 11:01:05', 139, 133, 1, 1, '用户购买课程：AI人工智能开发环境搭建', 1, 1, 1, '20201119001374800000000000019096');

-- ----------------------------
-- Table structure for smscode
-- ----------------------------
DROP TABLE IF EXISTS `smscode`;
CREATE TABLE `smscode`  (
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `timeout` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`phone`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of smscode
-- ----------------------------
INSERT INTO `smscode` VALUES ('18380108657', '645892', 1605694564695);
INSERT INTO `smscode` VALUES ('18483688888', '123456', NULL);
INSERT INTO `smscode` VALUES ('18728190842', '968540', NULL);
INSERT INTO `smscode` VALUES ('18728190843', '871927', 1605505976201);

-- ----------------------------
-- Table structure for student_exception
-- ----------------------------
DROP TABLE IF EXISTS `student_exception`;
CREATE TABLE `student_exception`  (
  `id` int(6) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名字',
  `logintime` datetime(0) NULL DEFAULT NULL COMMENT '登录时间',
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录ip',
  `ipaddress` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ip归属地',
  `isexception` int(1) NULL DEFAULT NULL COMMENT '是否登陆异常',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 234 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_exception
-- ----------------------------
INSERT INTO `student_exception` VALUES (12, '15061119362', '伍浩', '2020-10-10 16:30:04', '192.168.3.243', '四川省成都市', 0);
INSERT INTO `student_exception` VALUES (13, '15061119362', '伍浩', '2020-10-12 16:30:04', '192.168.3.243', '四川省成都市', 0);
INSERT INTO `student_exception` VALUES (21, '13588885555', 'vip用户', '2020-10-14 17:07:58', '0:0:0:0:0:0:0:1', '四川省-成都市', 0);
INSERT INTO `student_exception` VALUES (22, '13588885555', 'vip用户', '2020-10-14 17:11:20', '0:0:0:0:0:0:0:1', '四川省-成都市', 0);
INSERT INTO `student_exception` VALUES (24, '18783144337', '黄玲', '2020-10-19 18:15:06', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (25, '18608055875', '李伟', '2020-10-19 18:16:07', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (26, '18783144337', '黄玲', '2020-10-20 10:20:09', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (27, '18608055875', '李伟', '2020-10-20 10:20:43', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (28, '18608055875', '李伟', '2020-10-20 10:29:55', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (29, '18608055875', '李伟', '2020-10-20 16:00:07', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (30, '18608055875', '李伟', '2020-10-21 09:41:55', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (31, '18608055875', '李伟', '2020-10-21 12:05:00', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (32, '18608055875', '李伟', '2020-10-21 15:22:28', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (33, '18783144337', '黄玲', '2020-10-21 16:09:07', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (34, '18608055875', '李伟', '2020-10-21 16:23:03', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (35, '19100000005', '测试学生1020', '2020-10-21 17:03:45', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (36, '19100000005', '测试学生1020', '2020-10-21 20:55:31', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (37, '18608055875', '李伟', '2020-10-22 09:42:35', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (38, '18608055875', '李伟', '2020-10-23 09:35:32', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (39, '18608055875', '李伟', '2020-10-23 13:46:25', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (40, '18608055875', '李伟', '2020-10-23 14:16:15', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (41, '18608055875', '李伟', '2020-10-23 15:22:16', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (42, '18608055875', '李伟', '2020-10-23 16:56:43', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (43, '18608055875', '李伟', '2020-10-26 09:35:40', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (44, '18608055875', '李伟', '2020-10-26 11:45:40', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (46, '13588885555', 'vip用户', '2020-10-28 13:41:33', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (47, '13588885555', 'vip用户', '2020-10-28 13:41:33', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (48, '13588885555', 'vip用户', '2020-10-28 13:41:33', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (49, '13588885555', 'vip用户', '2020-10-28 14:46:56', '0:0:0:0:0:0:0:1', NULL, 0);
INSERT INTO `student_exception` VALUES (50, '15012122323', '李四', '2020-10-28 14:48:04', '0:0:0:0:0:0:0:1', NULL, 0);
INSERT INTO `student_exception` VALUES (51, '13588885555', 'vip用户', '2020-10-29 10:44:49', '0:0:0:0:0:0:0:1', NULL, 0);
INSERT INTO `student_exception` VALUES (52, '13588885555', 'vip用户', '2020-10-29 14:15:40', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (53, '13588884444', '普通用户', '2020-10-29 14:18:09', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (54, '13588884444', '普通用户', '2020-10-29 14:44:33', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (55, '13588884444', '普通用户', '2020-10-29 15:47:25', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (56, '13588884444', '普通用户', '2020-10-29 15:49:32', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (57, '18728190843', '用户', '2020-10-29 17:47:53', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (58, '18728190843', '用户', '2020-10-30 09:25:55', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (59, '18728190843', '用户', '2020-10-30 09:37:04', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (60, '18728190843', '用户', '2020-10-30 09:37:24', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (61, '18608055875', '李伟', '2020-10-30 09:38:10', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (62, '13588884444', '普通用户', '2020-10-30 10:25:22', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (63, '13588885555', '订单', '2020-10-30 11:47:25', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (65, '18608055875', '李伟', '2020-10-30 14:31:26', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (66, '18608055875', '李伟', '2020-10-30 14:31:32', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (68, '15061119362', 'wuhao', '2020-10-30 16:38:46', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (69, '18581556020', 'czm', '2020-10-30 17:05:08', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (70, '18581556020', 'czm', '2020-10-30 17:06:01', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (71, '18581556020', 'czm', '2020-10-30 17:13:47', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (72, '18581556020', 'czm', '2020-10-30 17:40:08', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (73, '18581556020', 'czm', '2020-10-30 18:49:19', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (74, '18581556020', 'czm', '2020-10-30 19:51:15', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (75, '18581556020', 'czm', '2020-10-30 19:53:20', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (76, '18581556020', 'czm', '2020-10-30 19:59:12', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (77, '18581556021', 'czm', '2020-10-30 20:08:55', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (78, '18581556020', 'czm', '2020-11-01 09:25:01', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (79, '18581556021', 'czm', '2020-11-01 09:26:57', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (80, '15061119362', 'wuhao', '2020-11-01 10:43:38', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (81, '15061119362', 'wuhao', '2020-11-01 11:46:45', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (82, '15061119362', 'wuhao', '2020-11-01 11:51:30', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (83, '18581556021', 'czm', '2020-11-01 14:05:06', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (84, '15061119362', 'wuhao', '2020-11-01 15:09:34', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (85, '15061119362', 'wuhao', '2020-11-01 16:41:12', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (86, '18728190843', '苟梦雨', '2020-11-02 10:39:32', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (87, '18581556021', 'czm', '2020-11-02 15:40:35', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (88, '18581556021', 'czm', '2020-11-02 15:41:36', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (89, '15583981581', '测试学生', '2020-11-02 15:51:06', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (90, '18581556021', 'czm', '2020-11-02 15:53:54', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (91, '18581556021', 'czm', '2020-11-02 15:54:48', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (92, '18581556021', 'czm', '2020-11-02 15:56:49', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (93, '18783144337', '黄玲', '2020-11-02 16:17:25', '110.184.71.103', '四川省-成都市', 0);
INSERT INTO `student_exception` VALUES (94, '18581556021', 'czm', '2020-11-02 18:16:22', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (95, '15061119362', 'wuhao', '2020-11-02 19:07:34', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (97, '18581556021', 'czm', '2020-11-03 13:49:33', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (98, '18581556021', 'czm', '2020-11-03 13:49:37', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (99, '18581556021', 'czm', '2020-11-03 13:50:55', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (100, '18581556021', 'czm', '2020-11-03 13:55:19', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (102, '13699999999', '测试普通用户', '2020-11-06 14:31:09', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (104, '15061119362', 'wuhao', '2020-11-06 17:05:18', '127.0.0.1', NULL, 0);
INSERT INTO `student_exception` VALUES (105, '18728190843', '苟梦雨', '2020-11-09 10:19:01', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (106, '18728190843', '苟梦雨', '2020-11-09 11:33:01', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (107, '18728190843', '苟梦雨1', '2020-11-09 11:40:21', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (108, '18728190843', '苟梦雨', '2020-11-09 11:43:30', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (109, '13699999999', '测试普通用户', '2020-11-09 14:11:53', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (110, '18728190843', '苟梦雨', '2020-11-09 14:13:10', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (111, '18728190843', '苟梦雨', '2020-11-09 14:52:37', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (112, '18728190843', '苟梦雨', '2020-11-09 16:58:42', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (113, '18728190843', '苟梦雨', '2020-11-09 16:58:42', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (114, '15061119362', '123', '2020-11-09 17:19:17', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (115, '15061119362', '123', '2020-11-09 17:19:17', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (116, '18728190843', '苟梦雨', '2020-11-10 09:40:39', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (117, '18728190843', '苟梦雨', '2020-11-10 09:40:39', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (118, '15061119362', '123', '2020-11-10 09:45:00', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (119, '15061119362', '123', '2020-11-10 09:45:00', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (120, '15061119362', '123', '2020-11-10 10:00:22', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (121, '15061119362', '123', '2020-11-10 10:00:22', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (122, '15061119362', '李四', '2020-11-10 10:01:43', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (123, '15061119362', '李四', '2020-11-10 10:01:43', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (124, '15061119362', '李四', '2020-11-10 11:04:52', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (125, '15061119362', '李四', '2020-11-10 11:04:53', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (126, '18728190843', '苟梦雨', '2020-11-10 11:28:05', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (127, '18728190843', '苟梦雨', '2020-11-10 11:28:05', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (128, '18728190843', '苟梦雨', '2020-11-10 11:35:09', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (129, '18728190843', '苟梦雨', '2020-11-10 11:35:09', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (130, '18728190843', '苟梦雨', '2020-11-10 11:37:42', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (131, '18728190843', '苟梦雨', '2020-11-10 11:37:42', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (132, '18728190843', '苟梦雨', '2020-11-10 11:41:55', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (133, '18728190843', '苟梦雨', '2020-11-10 11:41:55', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (134, '18728190843', '苟梦雨', '2020-11-10 11:42:37', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (135, '18728190843', '苟梦雨', '2020-11-10 11:42:37', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (136, '18728190843', '苟梦雨', '2020-11-10 11:44:41', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (137, '18728190843', '苟梦雨', '2020-11-10 11:44:41', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (138, '18728190843', '苟梦雨', '2020-11-10 11:53:12', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (139, '18728190843', '苟梦雨', '2020-11-10 11:53:12', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (140, '15061119362', '李四', '2020-11-10 13:47:49', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (141, '15061119362', '李四', '2020-11-10 13:47:49', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (142, '18728190843', '苟梦雨', '2020-11-10 14:18:37', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (143, '18728190843', '苟梦雨', '2020-11-10 14:18:37', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (144, '15061119362', '李四', '2020-11-10 16:08:57', '110.184.67.252', '四川省-成都市', 1);
INSERT INTO `student_exception` VALUES (145, '18728190844', '王麻子', '2020-11-10 16:40:08', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (146, '18728190844', '王麻子', '2020-11-10 16:40:08', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (147, '18728190843', '苟梦雨', '2020-11-10 16:40:45', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (148, '18728190843', '苟梦雨', '2020-11-10 16:40:45', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (149, '15061119362', '李四', '2020-11-10 16:50:17', '39.107.81.89', '北京市-北京市', 1);
INSERT INTO `student_exception` VALUES (150, '15061119362', '李四', '2020-11-10 16:50:17', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (151, '18728190843', '苟梦雨', '2020-11-10 17:42:08', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (152, '18728190843', '苟梦雨', '2020-11-10 17:42:08', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (153, '18728190843', '苟梦雨', '2020-11-10 17:51:55', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (154, '18728190843', '苟梦雨', '2020-11-10 17:51:55', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (155, '18728190843', '苟梦雨', '2020-11-10 17:57:14', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (156, '18728190843', '苟梦雨', '2020-11-10 17:57:14', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (157, '18728190843', '苟梦雨', '2020-11-10 17:59:23', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (158, '18728190843', '苟梦雨', '2020-11-10 17:59:23', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (159, '15061119362', '李四', '2020-11-10 17:59:49', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (160, '15061119362', '李四', '2020-11-10 17:59:49', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (161, '15061119362', '李四', '2020-11-11 09:58:32', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (162, '18728190843', '苟梦雨', '2020-11-11 14:09:37', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (163, '18728190843', '苟梦雨', '2020-11-11 15:33:08', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (164, '18728190843', '苟梦雨', '2020-11-11 16:40:41', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (165, '15061119362', '李四', '2020-11-11 16:48:28', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (166, '18728190841', '张三', '2020-11-11 16:50:15', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (167, '18728190843', '苟梦雨', '2020-11-11 17:26:47', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (168, '18728190843', '苟梦雨', '2020-11-11 17:42:40', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (169, '18728190843', '苟梦雨', '2020-11-12 10:15:38', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (170, '18728190843', '苟梦雨', '2020-11-12 10:49:04', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (171, '17378730381', '13', '2020-11-12 11:20:17', '110.184.70.122', '四川省-成都市', 0);
INSERT INTO `student_exception` VALUES (172, '18728190843', '苟梦雨', '2020-11-12 15:55:55', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (173, '18728190843', '苟梦雨', '2020-11-12 16:45:00', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (174, '18728190843', '苟梦雨', '2020-11-12 16:49:35', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (175, '18608055875', '1860805587', '2020-11-12 16:56:32', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (176, '15061119362', '李四', '2020-11-12 17:14:02', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (177, '18728190843', '苟梦雨', '2020-11-13 09:38:38', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (178, '15061119362', '李四', '2020-11-13 10:43:43', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (179, '15061119362', '李四', '2020-11-13 10:46:26', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (180, '15061119362', '李四', '2020-11-13 10:51:35', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (181, '15061119362', '小四', '2020-11-13 11:08:30', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (182, '18728190843', '苟梦雨', '2020-11-13 11:16:35', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (183, '15061119362', '李四', '2020-11-13 11:21:21', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (184, '18728190841', '张三', '2020-11-13 11:41:00', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (185, '18728190843', '苟梦雨', '2020-11-13 11:41:35', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (186, '18728190843', '苟梦雨', '2020-11-13 11:42:49', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (187, '15061119362', '李四', '2020-11-13 11:42:52', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (188, '18728190843', '苟梦雨', '2020-11-13 11:43:53', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (189, '18728190843', '苟梦雨', '2020-11-13 11:51:15', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (190, '18728190843', '苟梦雨', '2020-11-13 12:31:18', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (191, '15061119363', '123', '2020-11-13 12:51:23', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (192, '15061119362', '李四', '2020-11-13 14:16:15', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (193, '18728190843', '苟梦雨', '2020-11-16 09:47:16', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (194, '15061119362', '李四', '2020-11-16 10:03:34', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (195, '15061119362', '李四', '2020-11-16 10:06:17', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (196, '15061119362', '李四', '2020-11-16 10:08:40', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (197, '15061119362', '李四', '2020-11-16 11:11:02', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (198, '15061119362', '李四', '2020-11-16 11:11:30', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (199, '18728190843', '苟梦雨', '2020-11-16 11:11:38', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (200, '18728190843', '苟梦雨', '2020-11-16 11:12:00', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (201, '15061119362', '李四', '2020-11-16 11:12:18', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (202, '15061119362', '李四', '2020-11-16 11:13:36', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (203, '15061119362', '李四', '2020-11-16 11:14:15', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (204, '15061119362', '李四', '2020-11-16 11:14:27', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (205, '15061119362', '李四', '2020-11-16 11:14:45', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (206, '15061119362', '李四', '2020-11-16 11:15:04', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (207, '18728190843', '苟梦雨', '2020-11-16 11:15:38', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (208, '15061119362', '李四', '2020-11-16 11:16:03', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (209, '18728190843', '苟梦雨', '2020-11-16 11:16:25', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (210, '18728190843', '苟梦雨', '2020-11-16 11:37:45', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (211, '18728190843', '苟梦雨', '2020-11-16 13:52:13', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (212, '18728190843', '苟梦雨', '2020-11-16 13:53:31', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (213, '18728190843', '苟梦雨', '2020-11-17 17:58:56', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (214, '15583981581', '杨盟', '2020-11-17 18:08:54', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (215, '18728190843', '苟梦雨', '2020-11-18 10:58:21', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (216, '18728190843', '苟梦雨', '2020-11-18 14:12:32', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (217, '18728190843', '苟梦雨', '2020-11-18 14:21:23', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (218, '18728190843', '苟梦雨', '2020-11-18 15:01:44', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (219, '15061119362', '伍浩', '2020-11-18 15:14:12', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (220, '15061119362', '伍浩', '2020-11-18 16:41:03', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (221, '15061119362', '伍浩', '2020-11-18 17:45:03', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (222, '18728190843', '苟梦雨', '2020-11-18 17:56:59', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (223, '15061119362', '伍浩', '2020-11-19 09:37:41', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (224, '18728190843', '苟梦雨', '2020-11-19 10:14:58', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (225, '15061119362', '伍浩', '2020-11-19 10:56:07', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (226, '15061119362', '伍浩', '2020-11-19 10:57:51', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (227, '15061119362', '伍浩', '2020-11-19 14:26:14', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (228, '18728190843', '苟梦雨', '2020-11-19 15:32:08', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (229, '15061119362', '伍浩', '2020-11-19 16:58:18', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (230, '18728190843', '苟梦雨', '2020-11-20 10:12:13', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (231, '15061119362', '伍浩', '2020-11-20 11:32:41', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (232, '18728190843', '苟梦雨', '2020-11-23 09:58:00', '39.107.81.89', '北京市-北京市', 0);
INSERT INTO `student_exception` VALUES (233, '15583981581', '杨盟', '2020-11-24 11:40:37', '39.107.81.89', '北京市-北京市', 0);

-- ----------------------------
-- Table structure for sys_resource
-- ----------------------------
DROP TABLE IF EXISTS `sys_resource`;
CREATE TABLE `sys_resource`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `size` bigint(20) NULL DEFAULT NULL,
  `state` tinyint(4) NOT NULL,
  `type` enum('video','image','pdf','ppt','code','excel','word','txt') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `UK_bulu7u37pkgnce9f17q1yl820`(`url`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 533 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_resource
-- ----------------------------
INSERT INTO `sys_resource` VALUES (13, '2020-05-11 17:20:29', '数据1.pdf', 8978882, 0, 'pdf', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-05-11/数据1.pdf');
INSERT INTO `sys_resource` VALUES (19, '2020-05-19 14:22:58', 'gan图像分类.mp4', 82092517, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-05-19/gan%E5%9B%BE%E5%83%8F%E5%88%86%E7%B1%BB.mp4');
INSERT INTO `sys_resource` VALUES (20, '2020-05-19 14:38:32', 'logistic分类.mp4', 8992271, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-05-19/logistic%E5%88%86%E7%B1%BB.mp4');
INSERT INTO `sys_resource` VALUES (21, '2020-05-19 16:22:38', 'sine.mp4', 36922810, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-05-19/sine.mp4');
INSERT INTO `sys_resource` VALUES (22, '2020-05-19 16:22:43', '线性回归1.mp4', 32978898, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-05-19/%E7%BA%BF%E6%80%A7%E5%9B%9E%E5%BD%921.mp4');
INSERT INTO `sys_resource` VALUES (32, '2020-06-02 13:47:43', 'changes.txt', 57631, 0, 'txt', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-06-02/changes.txt');
INSERT INTO `sys_resource` VALUES (33, '2020-06-02 15:47:53', '1111.jpg', 51799, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-06-02/1111.jpg');
INSERT INTO `sys_resource` VALUES (36, '2020-06-04 10:33:58', 'banner (2).png', 1529871, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-06-04/banner (2).png');
INSERT INTO `sys_resource` VALUES (40, '2020-06-04 17:43:45', '20190819_react前端发展.mp4', 78778079, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-06-04/20190819_react前端发展.mp4');
INSERT INTO `sys_resource` VALUES (41, '2020-06-04 18:14:58', '20190819_react前端发展.mp4', 146099807, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-06-04/20190819_react%E5%89%8D%E7%AB%AF%E5%8F%91%E5%B1%95.mp4');
INSERT INTO `sys_resource` VALUES (42, '2020-06-08 15:42:09', '20190819_react组件props.mp4', 146099807, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-06-12/20190821_refs与portals.mp4');
INSERT INTO `sys_resource` VALUES (43, '2020-06-10 13:50:40', '20190821_状态提升.mp4', 163067242, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-06-12/20190821_refs与portals.mp4');
INSERT INTO `sys_resource` VALUES (44, '2020-06-10 13:52:04', '微信图片_20200106102721.png', 4702, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-06-10/微信图片_20200106102721.png');
INSERT INTO `sys_resource` VALUES (46, '2020-06-10 13:56:36', 'timg (1).jpg', 58783, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-06-10/timg (1).jpg');
INSERT INTO `sys_resource` VALUES (47, '2020-06-12 15:49:00', '20190821_render属性其他.mp4', 212885639, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-06-12/20190821_render属性其他.mp4');
INSERT INTO `sys_resource` VALUES (48, '2020-06-12 15:49:28', '20190821_refs与portals.mp4', 199360749, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-06-12/20190821_refs与portals.mp4');
INSERT INTO `sys_resource` VALUES (49, '2020-06-12 16:19:50', '猫猫.jpg', 84776, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-06-12/猫猫.jpg');
INSERT INTO `sys_resource` VALUES (54, '2020-07-02 12:00:34', '62473d95d6eab2005914747c3382dbc7.mp4', 19633497, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-07-02/62473d95d6eab2005914747c3382dbc7.mp4');
INSERT INTO `sys_resource` VALUES (55, '2020-07-02 12:01:06', '1ebd91d6b4bba5fd1108f2f42a0488f3.mp4', 3523378, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-07-02/1ebd91d6b4bba5fd1108f2f42a0488f3.mp4');
INSERT INTO `sys_resource` VALUES (60, '2020-07-07 18:28:51', '9f7739a641690318d846d5f585624da3.mp4', 221687, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-07-07/9f7739a641690318d846d5f585624da3.mp4');
INSERT INTO `sys_resource` VALUES (63, '2020-07-07 19:45:44', '4d315a5faf62a24afa32257b2870bf9c.mp4', 1913655, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-07-07/4d315a5faf62a24afa32257b2870bf9c.mp4');
INSERT INTO `sys_resource` VALUES (65, '2020-07-09 14:38:08', '20200702_134647.mp4', 1266889, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-07-09/20200702_134647.mp4');
INSERT INTO `sys_resource` VALUES (66, '2020-07-09 14:39:15', '20200702_135140.mp4', 39008247, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-07-09/20200702_135140.mp4');
INSERT INTO `sys_resource` VALUES (68, '2020-07-09 15:25:53', '2020-06-22-14-00-36_2020-06-22-16-02-27.mp4', 1042693743, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-07-09/2020-06-22-14-00-36_2020-06-22-16-02-27.mp4');
INSERT INTO `sys_resource` VALUES (69, '2020-07-09 16:17:21', '20200628_111626.mp4', 9373173, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-07-09/20200628_111626.mp4');
INSERT INTO `sys_resource` VALUES (70, '2020-07-09 16:17:57', '20200709_103450.mp4', 10572247, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-07-09/20200709_103450.mp4');
INSERT INTO `sys_resource` VALUES (71, '2020-07-09 16:39:13', '1231231231232133.mp4', 1913655, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-07-09/1231231231232133.mp4');
INSERT INTO `sys_resource` VALUES (74, '2020-07-09 20:49:37', 'Python中的数据类型转换.mp4', 20161576, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-07-09/Python中的数据类型转换.mp4');
INSERT INTO `sys_resource` VALUES (75, '2020-07-09 21:14:34', 'Python标准类型之字典类型.mp4', 29899105, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-07-09/Python标准类型之字典类型.mp4');
INSERT INTO `sys_resource` VALUES (76, '2020-07-10 21:41:10', 'MTCNN certer-loss理论课上3合.mp4', 122554072, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-07-10/MTCNN certer-loss理论课上3合.mp4');
INSERT INTO `sys_resource` VALUES (78, '2020-07-29 10:50:43', 'u=2462742663,2266201766&fm=26&gp=0.jpg', 29203, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-07-29/u=2462742663,2266201766&fm=26&gp=0.jpg');
INSERT INTO `sys_resource` VALUES (79, '2020-07-29 10:50:49', 'u=2130102705,2144989578&fm=26&gp=0.jpg', 34625, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-07-29/u=2130102705,2144989578&fm=26&gp=0.jpg');
INSERT INTO `sys_resource` VALUES (82, '2020-10-19 08:18:39', 'f30c1dcf9d174c7fad06359406474a5f.jpg', 24698, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-10-19/f30c1dcf9d174c7fad06359406474a5f.jpg');
INSERT INTO `sys_resource` VALUES (83, '2020-10-19 08:20:38', 'cf07d79bfa9a49a4b9f37fdb0631f013.jpg', 31947, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-10-19/cf07d79bfa9a49a4b9f37fdb0631f013.jpg');
INSERT INTO `sys_resource` VALUES (84, '2020-10-19 08:23:40', 'f789594ffafc40709750dd257f5ec9fd.jpeg', 88703, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-10-19/f789594ffafc40709750dd257f5ec9fd.jpeg');
INSERT INTO `sys_resource` VALUES (85, '2020-10-20 06:00:24', '课程附件.jpg', 32511, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-10-20/课程附件.jpg');
INSERT INTO `sys_resource` VALUES (89, '2020-10-21 12:52:07', '20200616_111358.mp4', 1062294, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-10-21/20200616_111358.mp4');
INSERT INTO `sys_resource` VALUES (90, '2020-10-21 12:58:05', '20200616_112732.mp4', 1253832, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-10-21/20200616_112732.mp4');
INSERT INTO `sys_resource` VALUES (94, '2020-10-22 15:09:10', 'banner02.jpg', 134809, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-10-22/banner02.jpg');
INSERT INTO `sys_resource` VALUES (96, '2020-10-22 09:27:55', 'test.mp4', 1848773, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-10-22/test.mp4');
INSERT INTO `sys_resource` VALUES (98, '2020-10-22 17:56:31', '1b27a3381157411d9766cfe3e6401eea.jpeg', 65462, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-10-22/1b27a3381157411d9766cfe3e6401eea.jpeg');
INSERT INTO `sys_resource` VALUES (104, '2020-10-23 10:09:45', 'timg.jpg', 35295, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-10-23/timg.jpg');
INSERT INTO `sys_resource` VALUES (106, '2020-10-23 11:38:47', 'timg (1).jpg', 31961, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-10-23/timg (1).jpg');
INSERT INTO `sys_resource` VALUES (113, '2020-10-29 15:22:02', 'u=1180991607,2645758304&fm=26&gp=0.jpg', 14927, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-10-29/u=1180991607,2645758304&fm=26&gp=0.jpg');
INSERT INTO `sys_resource` VALUES (114, '2020-10-29 16:12:21', 'login-logo.png', 22927, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-10-29/login-logo.png');
INSERT INTO `sys_resource` VALUES (115, '2020-10-29 17:50:57', '350 (2).jpg', 138531, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-10-29/350 (2).jpg');
INSERT INTO `sys_resource` VALUES (116, '2020-10-30 09:36:12', '350 (8).jpg', 789774, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-10-30/350 (8).jpg');
INSERT INTO `sys_resource` VALUES (117, '2020-11-01 10:42:09', 'banner03.jpg', 129635, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-01/banner03.jpg');
INSERT INTO `sys_resource` VALUES (118, '2020-11-01 10:42:36', 'banner01.jpg', 110960, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-01/banner01.jpg');
INSERT INTO `sys_resource` VALUES (120, '2020-11-02 10:58:41', 'u=1224964438,1411415055&fm=26&gp=0.jpg', 17514, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-02/u=1224964438,1411415055&fm=26&gp=0.jpg');
INSERT INTO `sys_resource` VALUES (122, '2020-11-02 10:59:03', '9119.jpg_wh1200.jpg', 118664, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-02/9119.jpg_wh1200.jpg');
INSERT INTO `sys_resource` VALUES (123, '2020-11-02 10:59:16', 'u=3494825549,811177962&fm=26&gp=0.jpg', 39524, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-02/u=3494825549,811177962&fm=26&gp=0.jpg');
INSERT INTO `sys_resource` VALUES (125, '2020-11-02 11:00:12', '1 (7).mp4', 11257138, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-02/1 (7).mp4');
INSERT INTO `sys_resource` VALUES (126, '2020-11-02 11:00:19', '1 (8).mp4', 19550625, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-02/1 (8).mp4');
INSERT INTO `sys_resource` VALUES (127, '2020-11-02 11:00:32', '5690cdca4262ed942dce98b94cde3c15.mp4', 4422474, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-02/5690cdca4262ed942dce98b94cde3c15.mp4');
INSERT INTO `sys_resource` VALUES (128, '2020-11-02 11:00:50', '3 (3).mp4', 8949631, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-02/3 (3).mp4');
INSERT INTO `sys_resource` VALUES (129, '2020-11-02 11:15:49', 'Java语言发展史-超清720P.mp4', 8885361, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-02/Java语言发展史-超清720P.mp4');
INSERT INTO `sys_resource` VALUES (131, '2020-11-02 15:47:14', '983999871193f720dc0143aef9792219.mp4', 16526505, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-02/983999871193f720dc0143aef9792219.mp4');
INSERT INTO `sys_resource` VALUES (133, '2020-11-02 15:54:34', '420f6a2b29b2c65726bdb6b8b656d1bd.mp4', 15132653, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-02/420f6a2b29b2c65726bdb6b8b656d1bd.mp4');
INSERT INTO `sys_resource` VALUES (134, '2020-11-02 16:12:19', '周末班直播回放.jpg', 37012, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-02/周末班直播回放.jpg');
INSERT INTO `sys_resource` VALUES (135, '2020-11-02 16:19:32', 'python前置课.jpg', 374478, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-02/python前置课.jpg');
INSERT INTO `sys_resource` VALUES (138, '2020-11-03 09:10:30', '21期20201030_opencv (1).mp4', 1088490, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-03/21期20201030_opencv (1).mp4');
INSERT INTO `sys_resource` VALUES (139, '2020-11-03 09:11:16', '21期20201030_opencv (4).mp4', 204595844, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-03/21期20201030_opencv (4).mp4');
INSERT INTO `sys_resource` VALUES (141, '2020-11-03 09:23:31', '20200915_140255.mp4', 300321868, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-03/20200915_140255.mp4');
INSERT INTO `sys_resource` VALUES (142, '2020-11-09 09:33:41', '350 (4).jpg', 133882, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/350 (4).jpg');
INSERT INTO `sys_resource` VALUES (146, '2020-11-09 09:39:03', 'u=3444815961,2641821041&fm=26&gp=0.jpg', 38946, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/u=3444815961,2641821041&fm=26&gp=0.jpg');
INSERT INTO `sys_resource` VALUES (147, '2020-11-09 09:40:39', '1 (1).mp4', 16872090, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/1 (1).mp4');
INSERT INTO `sys_resource` VALUES (148, '2020-11-09 09:59:46', '350 (3).jpg', 115130, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/350 (3).jpg');
INSERT INTO `sys_resource` VALUES (149, '2020-11-09 10:20:38', '1 (4).mp4', 12579635, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/1 (4).mp4');
INSERT INTO `sys_resource` VALUES (150, '2020-11-09 10:26:59', '1 (9).mp4', 12335486, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/1 (9).mp4');
INSERT INTO `sys_resource` VALUES (153, '2020-11-09 13:51:06', '350 (5).jpg', 92733, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/350 (5).jpg');
INSERT INTO `sys_resource` VALUES (154, '2020-11-09 13:51:12', '350 (7).jpg', 76808, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/350 (7).jpg');
INSERT INTO `sys_resource` VALUES (156, '2020-11-09 13:51:23', '350 (11).jpg', 246228, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/350 (11).jpg');
INSERT INTO `sys_resource` VALUES (157, '2020-11-09 13:51:28', '350.jpg', 162332, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/350.jpg');
INSERT INTO `sys_resource` VALUES (158, '2020-11-09 13:51:40', 'u=383545493,123779768&fm=26&gp=0.jpg', 47764, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/u=383545493,123779768&fm=26&gp=0.jpg');
INSERT INTO `sys_resource` VALUES (160, '2020-11-09 13:51:50', 'u=1492040398,1740972543&fm=11&gp=0.jpg', 51630, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/u=1492040398,1740972543&fm=11&gp=0.jpg');
INSERT INTO `sys_resource` VALUES (163, '2020-11-09 13:52:29', '科技图片素材_图片ID：133169768.jpg', 96264, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/科技图片素材_图片ID：133169768.jpg');
INSERT INTO `sys_resource` VALUES (164, '2020-11-09 13:52:36', '下载 (1).jpg', 54228, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/下载 (1).jpg');
INSERT INTO `sys_resource` VALUES (165, '2020-11-09 14:10:37', '科技图片图片素材_图片ID：168781265.jpg', 96499, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/科技图片图片素材_图片ID：168781265.jpg');
INSERT INTO `sys_resource` VALUES (166, '2020-11-09 14:22:03', '科技图片图片素材_图片ID：349396093.jpg', 58772, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/科技图片图片素材_图片ID：349396093.jpg');
INSERT INTO `sys_resource` VALUES (167, '2020-11-09 14:22:07', '科技图片图片素材_图片ID：312835738.jpg', 81770, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/科技图片图片素材_图片ID：312835738.jpg');
INSERT INTO `sys_resource` VALUES (168, '2020-11-09 14:22:13', '科技图片图片素材_图片ID：310323059.jpg', 51575, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/科技图片图片素材_图片ID：310323059.jpg');
INSERT INTO `sys_resource` VALUES (169, '2020-11-09 14:22:19', '科技图片图片素材_图片ID：167349938.jpg', 133962, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/科技图片图片素材_图片ID：167349938.jpg');
INSERT INTO `sys_resource` VALUES (170, '2020-11-09 14:22:24', '科技图片图片素材_图片ID：131315503.jpg', 60085, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/科技图片图片素材_图片ID：131315503.jpg');
INSERT INTO `sys_resource` VALUES (171, '2020-11-09 14:22:39', '科技图片矢量图素材_图片ID：307326893.jpg', 63216, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/科技图片矢量图素材_图片ID：307326893.jpg');
INSERT INTO `sys_resource` VALUES (172, '2020-11-09 14:22:47', '科技矢量图素材_图片ID：312049071.jpg', 69548, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/科技矢量图素材_图片ID：312049071.jpg');
INSERT INTO `sys_resource` VALUES (174, '2020-11-09 14:44:27', '350 (4).jpg', 133882, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/350 (4).jpg');
INSERT INTO `sys_resource` VALUES (176, '2020-11-09 17:04:18', '下载.jpg44.jpg', 17905, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-09/下载.jpg44.jpg');
INSERT INTO `sys_resource` VALUES (177, '2020-11-10 09:46:38', '1 (5).mp4', 13881139, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-10/1 (5).mp4');
INSERT INTO `sys_resource` VALUES (179, '2020-11-10 10:06:24', '350 (12).jpg', 91200, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-10/350 (12).jpg');
INSERT INTO `sys_resource` VALUES (180, '2020-11-10 10:22:28', '350 (7).jpg', 76808, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-10/350 (7).jpg');
INSERT INTO `sys_resource` VALUES (181, '2020-11-10 10:26:25', '1 (7).mp4', 11257138, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-10/1 (7).mp4');
INSERT INTO `sys_resource` VALUES (182, '2020-11-10 10:45:22', '350 (5).jpg', 92733, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-10/350 (5).jpg');
INSERT INTO `sys_resource` VALUES (184, '2020-11-10 11:21:07', '1 (41).mp4', 12753956, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-10/1 (41).mp4');
INSERT INTO `sys_resource` VALUES (185, '2020-11-10 14:12:19', '350 (9).jpg', 192988, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-10/350 (9).jpg');
INSERT INTO `sys_resource` VALUES (186, '2020-11-10 17:56:34', 'u=3874067489,2447793058&fm=11&gp=0.jpg', 42504, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-10/u=3874067489,2447793058&fm=11&gp=0.jpg');
INSERT INTO `sys_resource` VALUES (187, '2020-11-10 17:59:00', 'u=1492040398,1740972543&fm=11&gp=0.jpg', 51630, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-10/u=1492040398,1740972543&fm=11&gp=0.jpg');
INSERT INTO `sys_resource` VALUES (188, '2020-11-11 10:06:23', '科技图片图片素材_图片ID：131315503.jpg', 60085, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-11/科技图片图片素材_图片ID：131315503.jpg');
INSERT INTO `sys_resource` VALUES (190, '2020-11-11 11:32:14', '数据1.mp4', 4898015, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-11/数据1.mp4');
INSERT INTO `sys_resource` VALUES (193, '2020-11-11 14:05:35', '科技图片矢量图素材_图片ID：307326893.jpg', 63216, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-11/科技图片矢量图素材_图片ID：307326893.jpg');
INSERT INTO `sys_resource` VALUES (200, '2020-11-12 10:48:51', '3756.jpg_wh1200.jpg', 150149, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-12/3756.jpg_wh1200.jpg');
INSERT INTO `sys_resource` VALUES (201, '2020-11-12 14:33:38', '阿里巴巴.jpg', 90952, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-12/阿里巴巴.jpg');
INSERT INTO `sys_resource` VALUES (202, '2020-11-12 14:33:52', '阿里云.jpg', 11074, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-12/阿里云.jpg');
INSERT INTO `sys_resource` VALUES (203, '2020-11-12 14:35:52', '航天科工.jpg', 10313, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-12/航天科工.jpg');
INSERT INTO `sys_resource` VALUES (204, '2020-11-12 14:36:07', '亚马逊.jpg', 11007, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-12/亚马逊.jpg');
INSERT INTO `sys_resource` VALUES (205, '2020-11-12 14:37:34', '华西.png', 16060, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-12/华西.png');
INSERT INTO `sys_resource` VALUES (206, '2020-11-12 14:37:59', '华西口腔.jpg', 50479, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-12/华西口腔.jpg');
INSERT INTO `sys_resource` VALUES (207, '2020-11-12 14:44:25', '猎维教育logo.jpg', 62664, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-12/猎维教育logo.jpg');
INSERT INTO `sys_resource` VALUES (208, '2020-11-12 14:54:39', '图怪兽_179c57e533bbc4b6731d83637af82ac0_49325.jpg', 363458, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-12/图怪兽_179c57e533bbc4b6731d83637af82ac0_49325.jpg');
INSERT INTO `sys_resource` VALUES (209, '2020-11-12 14:56:44', '英伟达.jpg', 62615, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-12/英伟达.jpg');
INSERT INTO `sys_resource` VALUES (215, '2020-11-12 18:29:28', '111.mp4', 26417545, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-12/111.mp4');
INSERT INTO `sys_resource` VALUES (216, '2020-11-12 18:29:51', '983999871193f720dc0143aef9792219.mp4', 16526505, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-12/983999871193f720dc0143aef9792219.mp4');
INSERT INTO `sys_resource` VALUES (217, '2020-11-12 18:31:22', 'sdfa.jpg', 8114, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-12/sdfa.jpg');
INSERT INTO `sys_resource` VALUES (218, '2020-11-12 18:31:29', '21053225_1200x1000_0.jpg', 186820, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-12/21053225_1200x1000_0.jpg');
INSERT INTO `sys_resource` VALUES (221, '2020-11-13 09:58:46', 'u=3545368197,3996351990&fm=26&gp=0.jpg', 22502, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-13/u=3545368197,3996351990&fm=26&gp=0.jpg');
INSERT INTO `sys_resource` VALUES (222, '2020-11-13 09:58:56', '350 (10).jpg', 227736, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-13/350 (10).jpg');
INSERT INTO `sys_resource` VALUES (224, '2020-11-13 10:18:05', '1 (42).mp4', 15292801, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-13/1 (42).mp4');
INSERT INTO `sys_resource` VALUES (226, '2020-11-13 10:45:15', '211.jpg', 227736, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-13/211.jpg');
INSERT INTO `sys_resource` VALUES (227, '2020-11-13 10:59:00', '10dfa9ec8a13632710754f96908fa0ec09fac7ff.jpg', 73000, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-13/10dfa9ec8a13632710754f96908fa0ec09fac7ff.jpg');
INSERT INTO `sys_resource` VALUES (228, '2020-11-13 11:07:57', '19期.jpg', 46236, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-13/19期.jpg');
INSERT INTO `sys_resource` VALUES (229, '2020-11-13 11:11:04', '19期20200922_GAN (2).mp4', 177964307, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-13/19期20200922_GAN (2).mp4');
INSERT INTO `sys_resource` VALUES (230, '2020-11-13 11:13:13', '198813.mp4', 1256506654, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-13/198813.mp4');
INSERT INTO `sys_resource` VALUES (231, '2020-11-13 11:24:26', '19期20200922_GAN (4).mp4', 537615058, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-13/19期20200922_GAN (4).mp4');
INSERT INTO `sys_resource` VALUES (235, '2020-11-13 14:09:49', '请回答1988第13集-蓝光1080P.mp4', 1256506654, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-13/202011131408111639881..mp4');
INSERT INTO `sys_resource` VALUES (236, '2020-11-13 18:30:44', 'mtcnn.jpg', 363458, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-13/202011131830432332351..jpg');
INSERT INTO `sys_resource` VALUES (237, '2020-11-13 18:45:27', '强化学习.jpg', 244950, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-13/202011131845262305586..jpg');
INSERT INTO `sys_resource` VALUES (238, '2020-11-16 09:41:53', '1 (25).mp4', 13465786, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-16/202011160941522985413..mp4');
INSERT INTO `sys_resource` VALUES (239, '2020-11-16 09:42:03', '1 (25).mp4', 13465786, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-16/202011160942026005396..mp4');
INSERT INTO `sys_resource` VALUES (240, '2020-11-16 18:50:27', 'banner03.jpg', 129635, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-16/202011161850262387695..jpg');
INSERT INTO `sys_resource` VALUES (241, '2020-11-17 10:03:59', 'timg.jpg', 46323, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-17/202011171003590403244..jpg');
INSERT INTO `sys_resource` VALUES (242, '2020-11-17 18:03:49', 'sdfa.jpg', 8114, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-17/202011171803484809199..jpg');
INSERT INTO `sys_resource` VALUES (243, '2020-11-17 18:04:22', 'Kazam_screencast_00000（复件）.mp4', 66485275, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-17/202011171804171190342..mp4');
INSERT INTO `sys_resource` VALUES (245, '2020-11-18 11:42:24', '2f88892e5b1f4bb33c754d77991cd5c5.mp4', 4443546, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-18/202011181142231291971..mp4');
INSERT INTO `sys_resource` VALUES (246, '2020-11-18 13:44:04', '请回答1988第17集-蓝光4K.mp4', 107687779, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-18/202011181343557587177..mp4');
INSERT INTO `sys_resource` VALUES (247, '2020-11-18 14:30:41', '1.jpg', 112471, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-18/202011181430403383317..jpg');
INSERT INTO `sys_resource` VALUES (249, '2020-11-18 15:27:10', '7b0c7ba9b3504bdca75495ee5af542ff.jpg', 86561, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-18/202011181527094875158..jpg');
INSERT INTO `sys_resource` VALUES (250, '2020-11-18 16:03:51', '350 (10).jpg', 150264, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-18/202011181603507115711..jpg');
INSERT INTO `sys_resource` VALUES (251, '2020-11-18 16:07:41', '780.jpg', 34696, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-18/202011181607405594846..jpg');
INSERT INTO `sys_resource` VALUES (252, '2020-11-18 16:08:31', '780.jpg', 34696, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-18/202011181608307358054..jpg');
INSERT INTO `sys_resource` VALUES (254, '2020-11-18 16:11:38', '下载.jpg', 17546, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-18/202011181611379337228..jpg');
INSERT INTO `sys_resource` VALUES (255, '2020-11-18 16:15:01', 'timg.jpg', 23666, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-18/202011181615012406363..jpg');
INSERT INTO `sys_resource` VALUES (256, '2020-11-18 16:15:16', 'u=1874359078,2847204558&fm=26&gp=0.jpg', 12920, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-18/202011181615162877671..jpg');
INSERT INTO `sys_resource` VALUES (258, '2020-11-18 16:31:52', '350 (5).jpg', 92733, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-18/202011181631519064073..jpg');
INSERT INTO `sys_resource` VALUES (262, '2020-11-18 17:42:42', '53b737283687f0ea2eb790fb5aecdc03.jpeg', 12189, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-18/202011181742418640539..jpeg');
INSERT INTO `sys_resource` VALUES (263, '2020-11-18 17:44:48', '53b737283687f0ea2eb790fb5aecdc03.jpeg', 12189, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-18/202011181744475826742..jpeg');
INSERT INTO `sys_resource` VALUES (264, '2020-11-18 17:52:32', '780 (1).jpg', 71884, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-18/202011181752320763900..jpg');
INSERT INTO `sys_resource` VALUES (265, '2020-11-18 17:58:52', '图怪兽_a83e887b03628668cf78cf2375d04635_24998.jpg', 11568, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-18/202011181758519583688..jpg');
INSERT INTO `sys_resource` VALUES (266, '2020-11-18 18:02:55', '环境搭建（前置）.mp4', 475935936, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-18/202011181802180255564..mp4');
INSERT INTO `sys_resource` VALUES (267, '2020-11-18 18:13:37', '录制_2020_01_18_11_44_54_263.mp4', 397410271, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-18/202011181813063329008..mp4');
INSERT INTO `sys_resource` VALUES (268, '2020-11-19 09:24:50', '优客得.png', 3874, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011190924496078685.png');
INSERT INTO `sys_resource` VALUES (269, '2020-11-19 09:25:07', '航天科工.jpg', 10313, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011190925064891857.jpg');
INSERT INTO `sys_resource` VALUES (270, '2020-11-19 09:25:23', '华西.png', 16060, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011190925230766839.png');
INSERT INTO `sys_resource` VALUES (271, '2020-11-19 09:38:30', '1111222.jpg', 4074, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011190938299857761.jpg');
INSERT INTO `sys_resource` VALUES (272, '2020-11-19 10:20:07', '5.jpg', 40566, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191020069512690.jpg');
INSERT INTO `sys_resource` VALUES (273, '2020-11-19 11:11:28', '350 (6).jpg', 92382, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191111274827319.jpg');
INSERT INTO `sys_resource` VALUES (274, '2020-11-19 11:11:48', '350 (6).jpg', 92382, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191111473410546.jpg');
INSERT INTO `sys_resource` VALUES (275, '2020-11-19 11:12:11', '350 (4).jpg', 133882, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191112107032951.jpg');
INSERT INTO `sys_resource` VALUES (276, '2020-11-19 11:15:41', '350 (8).jpg', 789774, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191115405703059.jpg');
INSERT INTO `sys_resource` VALUES (277, '2020-11-19 11:18:57', '350 (4).jpg', 133882, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191118569386319.jpg');
INSERT INTO `sys_resource` VALUES (278, '2020-11-19 11:19:14', '350 (4).jpg', 133882, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191119133975276.jpg');
INSERT INTO `sys_resource` VALUES (279, '2020-11-19 11:23:58', '2 (21).mp4', 2814169, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191123576009195.mp4');
INSERT INTO `sys_resource` VALUES (280, '2020-11-19 11:26:30', '2 (27).mp4', 9079808, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191126295106403.mp4');
INSERT INTO `sys_resource` VALUES (281, '2020-11-19 11:38:07', '图怪兽_11a9ac44973672096e2a167341d9ec1b_70585.png', 566221, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191138062063320.png');
INSERT INTO `sys_resource` VALUES (282, '2020-11-19 11:38:39', '图怪兽_11a9ac44973672096e2a167341d9ec1b_70585.png', 566221, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191138382435574.png');
INSERT INTO `sys_resource` VALUES (283, '2020-11-19 11:48:39', '2 (40).mp4', 3181622, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191148377495260.mp4');
INSERT INTO `sys_resource` VALUES (284, '2020-11-19 11:49:27', '图怪兽_f809145e96408bf6a8d674cd2529a96d_39625.png', 122167, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191149269928446.png');
INSERT INTO `sys_resource` VALUES (285, '2020-11-19 11:49:41', '图怪兽_f809145e96408bf6a8d674cd2529a96d_39625.png', 122167, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191149406336365.png');
INSERT INTO `sys_resource` VALUES (286, '2020-11-19 11:55:45', 'Studio1-44227秦先生_副本.jpg', 95506, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191155443305010.jpg');
INSERT INTO `sys_resource` VALUES (287, '2020-11-19 12:09:45', '图怪兽_5de09ffe0b360c75fe2b2725fd69b12d_12913.png', 245302, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191209441256936.png');
INSERT INTO `sys_resource` VALUES (288, '2020-11-19 13:53:51', '350 (7).jpg', 76808, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191353508812565.jpg');
INSERT INTO `sys_resource` VALUES (289, '2020-11-19 13:56:22', '350 (6).jpg', 92382, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191356221829142.jpg');
INSERT INTO `sys_resource` VALUES (290, '2020-11-19 14:35:35', '图怪兽_5de09ffe0b360c75fe2b2725fd69b12d_12913.png', 245302, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191435348991895.png');
INSERT INTO `sys_resource` VALUES (291, '2020-11-19 14:44:15', '图怪兽_483b6eafb5b660bf8241c359932340e7_42079.png', 297345, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191444144359625.png');
INSERT INTO `sys_resource` VALUES (292, '2020-11-19 14:46:52', '图怪兽_e9d3362bf14b5ec03f0c2ec817d7ddd1_85450.png', 295891, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191446519392584.png');
INSERT INTO `sys_resource` VALUES (293, '2020-11-19 14:49:42', '张阳_副本_副本.jpg', 33301, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191449421724814.jpg');
INSERT INTO `sys_resource` VALUES (294, '2020-11-19 14:53:07', '图怪兽_e37c8c7e42f195fa6d15ef0ff2b25095_38387.png', 153356, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191453064482498.png');
INSERT INTO `sys_resource` VALUES (295, '2020-11-19 15:00:29', '微信图片_20201119101843.png', 136031, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191500287648469.png');
INSERT INTO `sys_resource` VALUES (296, '2020-11-19 15:15:09', '图怪兽_e37c8c7e42f195fa6d15ef0ff2b25095_38387.png', 153356, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191515090351209.png');
INSERT INTO `sys_resource` VALUES (297, '2020-11-19 15:16:26', '图怪兽_80fb18b4145203429093d4f9a51a3cb4_31827.png', 120209, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191516254381328.png');
INSERT INTO `sys_resource` VALUES (298, '2020-11-19 15:20:21', '53b737283687f0ea2eb790fb5aecdc03.jpeg', 12189, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191520209524050.jpeg');
INSERT INTO `sys_resource` VALUES (299, '2020-11-19 15:37:49', '图怪兽_4a21ee54ab0521df2953f2144e3c9ed5_58637.png', 428021, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191537486619317.png');
INSERT INTO `sys_resource` VALUES (300, '2020-11-19 16:06:08', 'u=302537951,2318234966&fm=26&gp=0.jpg', 25960, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191606077275668.jpg');
INSERT INTO `sys_resource` VALUES (301, '2020-11-19 16:12:03', '阿里巴巴.jpg', 90952, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191612032559557.jpg');
INSERT INTO `sys_resource` VALUES (302, '2020-11-19 16:12:20', '阿里云.jpg', 11074, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191612201487186.jpg');
INSERT INTO `sys_resource` VALUES (303, '2020-11-19 16:12:37', '航天科工.jpg', 10313, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191612371125558.jpg');
INSERT INTO `sys_resource` VALUES (304, '2020-11-19 16:15:47', '华西.png', 16060, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191615468944551.png');
INSERT INTO `sys_resource` VALUES (305, '2020-11-19 16:16:03', '腾讯.jpg', 9420, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191616029361251.jpg');
INSERT INTO `sys_resource` VALUES (306, '2020-11-19 16:41:38', '阿里巴巴.jpg', 90952, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191641374667784.jpg');
INSERT INTO `sys_resource` VALUES (307, '2020-11-19 16:41:47', '腾讯.jpg', 9420, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191641466866217.jpg');
INSERT INTO `sys_resource` VALUES (308, '2020-11-19 16:41:55', '优客得.png', 3874, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191641552545744.png');
INSERT INTO `sys_resource` VALUES (309, '2020-11-19 17:35:05', '图怪兽_80c4744f9db4d9a6066b740c2140845f_68365.png', 73195, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191735044576613.png');
INSERT INTO `sys_resource` VALUES (310, '2020-11-19 17:36:24', '图怪兽_13f49cb556953d09102c75759fb58e20_81205.png', 72916, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191736234293868.png');
INSERT INTO `sys_resource` VALUES (311, '2020-11-19 17:37:48', '图怪兽_e4f346b43902df3e150dd74af43d64a7_17423.png', 71993, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191737479132107.png');
INSERT INTO `sys_resource` VALUES (312, '2020-11-19 17:40:24', '录制_2020_01_18_11_44_54_263.mp4', 397410271, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191739533807076.mp4');
INSERT INTO `sys_resource` VALUES (313, '2020-11-19 17:49:46', '图怪兽_4807d52280b8d32345d416dcf3a97934_75517.png', 72058, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191749457943501.png');
INSERT INTO `sys_resource` VALUES (314, '2020-11-19 17:51:39', '录制_2020_01_18_12_41_56_904.mp4', 301062940, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191751160839277.mp4');
INSERT INTO `sys_resource` VALUES (315, '2020-11-19 17:55:30', '图怪兽_f77182632b9130c0fd3b33920b44986b_86170.png', 72096, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191755302073373.png');
INSERT INTO `sys_resource` VALUES (316, '2020-11-19 17:57:32', '录制_2020_01_18_13_27_26_479.mp4', 372294472, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191757028579953.mp4');
INSERT INTO `sys_resource` VALUES (317, '2020-11-19 18:19:38', 'logo.png', 12613, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191819378032357.png');
INSERT INTO `sys_resource` VALUES (318, '2020-11-19 18:20:43', 'logo.png', 12613, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191820426518808.png');
INSERT INTO `sys_resource` VALUES (319, '2020-11-19 18:22:49', 'Image 035.png', 117967, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191822488925808.png');
INSERT INTO `sys_resource` VALUES (320, '2020-11-19 18:23:55', 'u=2949128661,4204119460&fm=26&gp=0.jpg', 29846, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191823544341841.jpg');
INSERT INTO `sys_resource` VALUES (321, '2020-11-19 18:30:08', 'Image 036.png', 40819, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191830077187062.png');
INSERT INTO `sys_resource` VALUES (322, '2020-11-20 10:17:05', '百度.jpg', 4648, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201017048640377.jpg');
INSERT INTO `sys_resource` VALUES (323, '2020-11-20 10:19:44', 'Image 040.png', 69241, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201019442049835.png');
INSERT INTO `sys_resource` VALUES (324, '2020-11-20 10:24:21', 'Image 041.png', 65986, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201024206506458.png');
INSERT INTO `sys_resource` VALUES (325, '2020-11-20 10:25:42', 'Image 042.png', 17598, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201025422550586.png');
INSERT INTO `sys_resource` VALUES (326, '2020-11-20 10:25:53', 'Image 041.png', 65986, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201025531704843.png');
INSERT INTO `sys_resource` VALUES (327, '2020-11-20 10:28:46', 'Image 043.png', 47846, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201028461302495.png');
INSERT INTO `sys_resource` VALUES (328, '2020-11-20 10:33:44', 'Image 044.png', 192661, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201033441624110.png');
INSERT INTO `sys_resource` VALUES (329, '2020-11-20 10:38:12', 'Image 045.png', 70489, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201038121655589.png');
INSERT INTO `sys_resource` VALUES (330, '2020-11-20 10:38:31', 'Image 045.png', 70489, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201038306278085.png');
INSERT INTO `sys_resource` VALUES (331, '2020-11-20 10:44:25', '4212245496.png', 51034, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201044245626129.png');
INSERT INTO `sys_resource` VALUES (332, '2020-11-20 10:44:35', '4212245496.png', 51034, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201044344437823.png');
INSERT INTO `sys_resource` VALUES (333, '2020-11-20 10:49:53', '4212245496.png', 51034, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201049530857529.png');
INSERT INTO `sys_resource` VALUES (334, '2020-11-20 11:12:17', '53b737283687f0ea2eb790fb5aecdc03.jpeg', 12189, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201112165307745.jpeg');
INSERT INTO `sys_resource` VALUES (335, '2020-11-20 11:12:36', '1.jpg', 112471, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201112359798456.jpg');
INSERT INTO `sys_resource` VALUES (336, '2020-11-20 11:13:35', '211.jpg', 227736, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201113342281374.jpg');
INSERT INTO `sys_resource` VALUES (337, '2020-11-20 11:13:52', '211.jpg', 227736, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201113512162527.jpg');
INSERT INTO `sys_resource` VALUES (338, '2020-11-20 11:14:05', '7b0c7ba9b3504bdca75495ee5af542ff.jpg', 86561, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201114050201466.jpg');
INSERT INTO `sys_resource` VALUES (339, '2020-11-20 11:16:29', 'z19_logo.png', 16429, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201116290057289.png');
INSERT INTO `sys_resource` VALUES (340, '2020-11-20 11:16:41', '航天科工.jpg', 10313, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201116406868880.jpg');
INSERT INTO `sys_resource` VALUES (341, '2020-11-20 11:16:56', '阿里云.jpg', 11074, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201116555715514.jpg');
INSERT INTO `sys_resource` VALUES (342, '2020-11-20 11:17:46', '4212245496.png', 51034, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201117461009353.png');
INSERT INTO `sys_resource` VALUES (343, '2020-11-20 11:18:19', '百度.jpg', 4648, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201118183897989.jpg');
INSERT INTO `sys_resource` VALUES (344, '2020-11-20 11:19:03', '211.jpg', 227736, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201119026370561.jpg');
INSERT INTO `sys_resource` VALUES (345, '2020-11-20 11:19:36', '211.jpg', 227736, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201119358141597.jpg');
INSERT INTO `sys_resource` VALUES (346, '2020-11-20 11:20:30', '350 (7).jpg', 76808, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201120295989771.jpg');
INSERT INTO `sys_resource` VALUES (347, '2020-11-20 11:20:53', '350 (8).jpg', 789774, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201120523741395.jpg');
INSERT INTO `sys_resource` VALUES (348, '2020-11-20 11:45:49', '350 (6).jpg', 92382, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201145484409092.jpg');
INSERT INTO `sys_resource` VALUES (349, '2020-11-20 11:46:04', '350 (6).jpg', 92382, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201146040264974.jpg');
INSERT INTO `sys_resource` VALUES (350, '2020-11-20 11:53:38', '350 (7).jpg', 76808, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201153374867410.jpg');
INSERT INTO `sys_resource` VALUES (351, '2020-11-20 11:53:42', '四川农业大学.png', 21002, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201153417729604.png');
INSERT INTO `sys_resource` VALUES (352, '2020-11-20 11:53:58', '350 (6).jpg', 92382, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201153580689318.jpg');
INSERT INTO `sys_resource` VALUES (353, '2020-11-20 11:54:06', '350 (7).jpg', 76808, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201154058492118.jpg');
INSERT INTO `sys_resource` VALUES (354, '2020-11-20 11:55:39', 'u=2513539719,1581894780&fm=26&gp=0.jpg', 33403, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201155384660640.jpg');
INSERT INTO `sys_resource` VALUES (355, '2020-11-20 11:55:53', '21053226_1200x1000_0.jpg', 180092, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201155522324409.jpg');
INSERT INTO `sys_resource` VALUES (356, '2020-11-20 11:56:01', '1231232342134.jpg', 35295, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201156008595064.jpg');
INSERT INTO `sys_resource` VALUES (357, '2020-11-20 11:56:04', '21053226_1200x1000_0.jpg', 180092, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201156036998000.jpg');
INSERT INTO `sys_resource` VALUES (358, '2020-11-20 11:58:23', '350 (6).jpg', 92382, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201158226870714.jpg');
INSERT INTO `sys_resource` VALUES (359, '2020-11-20 11:58:34', '350 (4).jpg', 133882, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201158339338535.jpg');
INSERT INTO `sys_resource` VALUES (360, '2020-11-20 11:58:41', '350 (3).jpg', 115130, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201158410116149.jpg');
INSERT INTO `sys_resource` VALUES (361, '2020-11-20 11:59:12', '350 (7).jpg', 76808, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201159119498248.jpg');
INSERT INTO `sys_resource` VALUES (362, '2020-11-20 11:59:16', '350 (8).jpg', 789774, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201159158739285.jpg');
INSERT INTO `sys_resource` VALUES (363, '2020-11-20 11:59:57', '350 (7).jpg', 76808, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201159562953174.jpg');
INSERT INTO `sys_resource` VALUES (364, '2020-11-20 12:00:00', '350 (5).jpg', 92733, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201159599663360.jpg');
INSERT INTO `sys_resource` VALUES (365, '2020-11-20 12:00:12', '53b737283687f0ea2eb790fb5aecdc03.jpeg', 12189, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201200120742047.jpeg');
INSERT INTO `sys_resource` VALUES (366, '2020-11-20 12:02:31', '四川大学.png', 23430, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201202306914171.png');
INSERT INTO `sys_resource` VALUES (367, '2020-11-20 12:12:22', '西南石油大学.png', 16927, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201212213085233.png');
INSERT INTO `sys_resource` VALUES (368, '2020-11-20 12:15:08', '四川省人民医院.png', 10425, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201215079100454.png');
INSERT INTO `sys_resource` VALUES (369, '2020-11-20 12:47:42', '电子科技大学.png', 20320, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201247416266406.png');
INSERT INTO `sys_resource` VALUES (370, '2020-11-20 12:48:02', '电子科技大学.png', 20320, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201248020884301.png');
INSERT INTO `sys_resource` VALUES (371, '2020-11-20 12:53:44', '中国科学院.png', 19286, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201253443073905.png');
INSERT INTO `sys_resource` VALUES (372, '2020-11-20 13:01:17', '重庆交通大学.png', 21808, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201301171105590.png');
INSERT INTO `sys_resource` VALUES (373, '2020-11-20 13:02:41', '锦城学院.png', 14350, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201302408658399.png');
INSERT INTO `sys_resource` VALUES (374, '2020-11-20 13:52:31', '350 (8).jpg', 789774, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201352304745374.jpg');
INSERT INTO `sys_resource` VALUES (375, '2020-11-20 13:52:50', '350 (8).jpg', 789774, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201352498166948.jpg');
INSERT INTO `sys_resource` VALUES (376, '2020-11-20 13:53:42', '350 (7).jpg', 76808, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201353417168247.jpg');
INSERT INTO `sys_resource` VALUES (377, '2020-11-20 13:55:54', '350 (7).jpg', 76808, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201355541753268.jpg');
INSERT INTO `sys_resource` VALUES (378, '2020-11-20 13:57:06', '350 (8).jpg', 789774, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201357053691310.jpg');
INSERT INTO `sys_resource` VALUES (379, '2020-11-20 13:58:29', '53b737283687f0ea2eb790fb5aecdc03.jpeg', 12189, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201358291825139.jpeg');
INSERT INTO `sys_resource` VALUES (380, '2020-11-20 14:05:05', '53b737283687f0ea2eb790fb5aecdc03.jpeg', 12189, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201405050642591.jpeg');
INSERT INTO `sys_resource` VALUES (381, '2020-11-20 14:05:16', '53b737283687f0ea2eb790fb5aecdc03.jpeg', 12189, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201405159411168.jpeg');
INSERT INTO `sys_resource` VALUES (382, '2020-11-20 14:21:20', '53b737283687f0ea2eb790fb5aecdc03.jpeg', 12189, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201421203000836.jpeg');
INSERT INTO `sys_resource` VALUES (383, '2020-11-20 15:10:14', '53b737283687f0ea2eb790fb5aecdc03.jpeg', 12189, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201510136702765.jpeg');
INSERT INTO `sys_resource` VALUES (384, '2020-11-20 15:21:28', '53b737283687f0ea2eb790fb5aecdc03.jpeg', 12189, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201521277229111.jpeg');
INSERT INTO `sys_resource` VALUES (385, '2020-11-20 15:22:04', '211.jpg', 227736, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201522032838913.jpg');
INSERT INTO `sys_resource` VALUES (386, '2020-11-20 15:24:15', '53b737283687f0ea2eb790fb5aecdc03.jpeg', 12189, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201524146024317.jpeg');
INSERT INTO `sys_resource` VALUES (387, '2020-11-20 15:24:20', '211.jpg', 227736, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201524200664828.jpg');
INSERT INTO `sys_resource` VALUES (388, '2020-11-20 15:24:25', '350 (5).jpg', 92733, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201524249504866.jpg');
INSERT INTO `sys_resource` VALUES (389, '2020-11-20 16:52:38', '4212245496.png', 51034, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201652375620909.png');
INSERT INTO `sys_resource` VALUES (390, '2020-11-20 18:57:28', '20200915_100458.mp4', 593902324, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201856408610025.mp4');
INSERT INTO `sys_resource` VALUES (391, '2020-11-20 19:02:58', '20200915_140255.mp4', 300321868, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201902342101216.mp4');
INSERT INTO `sys_resource` VALUES (392, '2020-11-20 19:06:33', '20200915_152206.mp4', 714754818, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201905347627330.mp4');
INSERT INTO `sys_resource` VALUES (393, '2020-11-20 19:09:55', '20200915_165158.mp4', 292903379, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201909322407410.mp4');
INSERT INTO `sys_resource` VALUES (394, '2020-11-20 19:38:03', '20200917_100135.mp4', 296773249, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-20/202011201937397526335.mp4');
INSERT INTO `sys_resource` VALUES (395, '2020-11-23 10:45:38', '20200922_100158.mp4', 203279570, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231045214259094.mp4');
INSERT INTO `sys_resource` VALUES (396, '2020-11-23 10:53:27', '20200922_111330.mp4', 140944636, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231053153529793.mp4');
INSERT INTO `sys_resource` VALUES (397, '2020-11-23 11:00:44', '20200922_140245.mp4', 163114123, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231100304945346.mp4');
INSERT INTO `sys_resource` VALUES (398, '2020-11-23 11:04:48', '20200922_151311.mp4', 231416512, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231104305711602.mp4');
INSERT INTO `sys_resource` VALUES (399, '2020-11-23 11:08:30', '20200927_095311.mp4', 2358464, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231108294068121.mp4');
INSERT INTO `sys_resource` VALUES (400, '2020-11-23 11:10:18', '20200927_100031.mp4', 305100476, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231109539191449.mp4');
INSERT INTO `sys_resource` VALUES (401, '2020-11-23 11:13:24', '20200927_111231.mp4', 210073858, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231113065773288.mp4');
INSERT INTO `sys_resource` VALUES (402, '2020-11-23 11:14:59', '20200927_140225.mp4', 241932548, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231114403857847.mp4');
INSERT INTO `sys_resource` VALUES (403, '2020-11-23 11:17:38', '20200927_151821.mp4', 394698957, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231117066580202.mp4');
INSERT INTO `sys_resource` VALUES (404, '2020-11-23 11:24:47', '20201013_100142.mp4', 145005278, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231124352486744.mp4');
INSERT INTO `sys_resource` VALUES (405, '2020-11-23 11:26:58', '20201013_111344.mp4', 97061193, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231126505616287.mp4');
INSERT INTO `sys_resource` VALUES (406, '2020-11-23 11:28:24', '20201013_140504.mp4', 137048977, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231128123849221.mp4');
INSERT INTO `sys_resource` VALUES (407, '2020-11-23 11:29:43', '20201013_151859.mp4', 128163063, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231129332133965.mp4');
INSERT INTO `sys_resource` VALUES (408, '2020-11-23 11:30:56', '20201015_100448.mp4', 111426112, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231130466916046.mp4');
INSERT INTO `sys_resource` VALUES (409, '2020-11-23 11:32:33', '20201015_111603.mp4', 92596547, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231132261609276.mp4');
INSERT INTO `sys_resource` VALUES (410, '2020-11-23 11:42:16', '20201015_140119.mp4', 175740217, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231142019872215.mp4');
INSERT INTO `sys_resource` VALUES (411, '2020-11-23 11:45:02', '20201015_152516.mp4', 185859234, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231144467688464.mp4');
INSERT INTO `sys_resource` VALUES (412, '2020-11-23 11:50:23', '20201020_100347.mp4', 122087079, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231150131702450.mp4');
INSERT INTO `sys_resource` VALUES (413, '2020-11-23 13:40:48', '20201020_111621.mp4', 108500050, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231340388546269.mp4');
INSERT INTO `sys_resource` VALUES (414, '2020-11-23 13:43:16', '20201020_140312.mp4', 131148242, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231343058330150.mp4');
INSERT INTO `sys_resource` VALUES (415, '2020-11-23 13:47:02', '20201020_151533.mp4', 159371566, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231346486830787.mp4');
INSERT INTO `sys_resource` VALUES (416, '2020-11-23 13:58:05', '20201023_100324.mp4', 122830762, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231357553568351.mp4');
INSERT INTO `sys_resource` VALUES (417, '2020-11-23 13:59:52', '20201023_111650.mp4', 104361667, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231359444400534.mp4');
INSERT INTO `sys_resource` VALUES (418, '2020-11-23 14:00:58', '20201023_140338.mp4', 133336117, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231400469721377.mp4');
INSERT INTO `sys_resource` VALUES (419, '2020-11-23 14:02:13', '20201023_151804.mp4', 167423929, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231401598816487.mp4');
INSERT INTO `sys_resource` VALUES (420, '2020-11-23 14:03:54', '20201023_161751.mp4', 307751600, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231403302761496.mp4');
INSERT INTO `sys_resource` VALUES (421, '2020-11-23 14:44:55', '20201027_171936.mp4', 106406704, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231444437568528.mp4');
INSERT INTO `sys_resource` VALUES (422, '2020-11-23 14:45:03', '20201027_100335.mp4', 106949301, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231444486262929.mp4');
INSERT INTO `sys_resource` VALUES (423, '2020-11-23 14:49:13', '20201027_100335.mp4', 106949301, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231449045587376.mp4');
INSERT INTO `sys_resource` VALUES (424, '2020-11-23 14:59:26', '20201027_111548.mp4', 178364621, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231459115701185.mp4');
INSERT INTO `sys_resource` VALUES (425, '2020-11-23 15:00:47', '20201027_143338.mp4', 199100969, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231500312688548.mp4');
INSERT INTO `sys_resource` VALUES (426, '2020-11-23 15:01:43', '20201027_155833.mp4', 164933315, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231501302930013.mp4');
INSERT INTO `sys_resource` VALUES (427, '2020-11-23 15:02:57', '20201027_171936.mp4', 106406704, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231502488778683.mp4');
INSERT INTO `sys_resource` VALUES (428, '2020-11-23 15:18:22', '20200917_111151.mp4', 116642810, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231518129691780.mp4');
INSERT INTO `sys_resource` VALUES (429, '2020-11-23 15:30:49', '20200917_140001.mp4', 176684099, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231530351343234.mp4');
INSERT INTO `sys_resource` VALUES (430, '2020-11-23 15:50:59', '20200917_151748.mp4', 225555774, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231550413809123.mp4');
INSERT INTO `sys_resource` VALUES (431, '2020-11-23 16:09:54', '20201030_100236.mp4', 948162, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231609537293866.mp4');
INSERT INTO `sys_resource` VALUES (432, '2020-11-23 16:10:21', '20201030_100409.mp4', 1088490, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231610202724684.mp4');
INSERT INTO `sys_resource` VALUES (433, '2020-11-23 16:11:11', '20201030_101125.mp4', 180487723, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231610569316546.mp4');
INSERT INTO `sys_resource` VALUES (434, '2020-11-23 16:15:59', '20201030_140206.mp4', 204595844, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231615394343170.mp4');
INSERT INTO `sys_resource` VALUES (435, '2020-11-23 16:17:49', '20201030_151855.mp4', 176113037, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231617341674600.mp4');
INSERT INTO `sys_resource` VALUES (436, '2020-11-23 16:18:56', '20201103_102048.mp4', 108063125, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231618475612866.mp4');
INSERT INTO `sys_resource` VALUES (437, '2020-11-23 16:20:37', '20201103_111916.mp4', 131092481, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231620267836475.mp4');
INSERT INTO `sys_resource` VALUES (438, '2020-11-23 16:21:52', '20201103_140221.mp4', 178645655, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231621377045440.mp4');
INSERT INTO `sys_resource` VALUES (439, '2020-11-23 16:23:29', '20201103_151503.mp4', 230283977, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231623112990624.mp4');
INSERT INTO `sys_resource` VALUES (440, '2020-11-23 16:25:52', '20201106_100332.mp4', 183489900, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231625371099215.mp4');
INSERT INTO `sys_resource` VALUES (441, '2020-11-23 16:28:04', '20201106_111714.mp4', 198279580, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231627478311822.mp4');
INSERT INTO `sys_resource` VALUES (442, '2020-11-23 16:30:36', '20201106_140229.mp4', 213740103, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231630188229488.mp4');
INSERT INTO `sys_resource` VALUES (443, '2020-11-23 16:32:29', '20201106_152005.mp4', 175269493, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231632148719317.mp4');
INSERT INTO `sys_resource` VALUES (444, '2020-11-23 16:34:18', '20201110_100325.mp4', 178852159, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231634037848965.mp4');
INSERT INTO `sys_resource` VALUES (445, '2020-11-23 16:37:04', '20201110_111109.mp4', 167860728, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231636499757649.mp4');
INSERT INTO `sys_resource` VALUES (446, '2020-11-23 16:39:53', '20201110_152057.mp4', 191560929, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231639362700307.mp4');
INSERT INTO `sys_resource` VALUES (447, '2020-11-23 16:42:27', '20201113_100234.mp4', 128738026, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231642166527459.mp4');
INSERT INTO `sys_resource` VALUES (448, '2020-11-23 16:43:44', '20201113_111328.mp4', 176501920, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231643302608320.mp4');
INSERT INTO `sys_resource` VALUES (449, '2020-11-23 16:46:04', '20201113_140301.mp4', 156460649, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231645509453799.mp4');
INSERT INTO `sys_resource` VALUES (450, '2020-11-23 16:48:09', '20201113_150159.mp4', 178803144, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231647543832945.mp4');
INSERT INTO `sys_resource` VALUES (451, '2020-11-23 16:53:51', '20201117_100805.mp4', 161369062, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231653379557738.mp4');
INSERT INTO `sys_resource` VALUES (452, '2020-11-23 17:00:26', '20201117_111801.mp4', 119958294, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231700167382206.mp4');
INSERT INTO `sys_resource` VALUES (453, '2020-11-23 17:08:04', '20201117_140312.mp4', 178591274, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231707500980454.mp4');
INSERT INTO `sys_resource` VALUES (454, '2020-11-23 17:10:36', '20201117_160110.mp4', 59252050, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231710321560068.mp4');
INSERT INTO `sys_resource` VALUES (455, '2020-11-23 17:12:27', '20201120_100709.mp4', 169348768, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231712118558211.mp4');
INSERT INTO `sys_resource` VALUES (456, '2020-11-23 17:13:49', '20201120_111757.mp4', 167461537, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231713364140785.mp4');
INSERT INTO `sys_resource` VALUES (457, '2020-11-23 17:21:14', '20201120_140119.mp4', 198332924, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231720586589242.mp4');
INSERT INTO `sys_resource` VALUES (458, '2020-11-23 17:23:21', '20201120_151837.mp4', 141592015, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231723089113696.mp4');
INSERT INTO `sys_resource` VALUES (459, '2020-11-23 17:35:29', '01_单目标检测原理分析.mp4', 50076718, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231735253655720.mp4');
INSERT INTO `sys_resource` VALUES (460, '2020-11-23 17:36:59', '02_单目标检测数据处理.mp4', 133419375, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231736490272167.mp4');
INSERT INTO `sys_resource` VALUES (461, '2020-11-23 17:38:51', '03_单目标检测数据集制作.mp4', 81660897, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231738448889781.mp4');
INSERT INTO `sys_resource` VALUES (462, '2020-11-23 17:39:12', '04_单目标检测模型搭建.mp4', 28728383, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231739097478224.mp4');
INSERT INTO `sys_resource` VALUES (463, '2020-11-23 17:39:30', '05_单目标检测模型训练原理.mp4', 32655975, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231739278362256.mp4');
INSERT INTO `sys_resource` VALUES (464, '2020-11-23 17:40:09', '06_单目标检测模型训练与测试.mp4', 34949555, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231740064402228.mp4');
INSERT INTO `sys_resource` VALUES (465, '2020-11-23 17:42:55', '07_多目标检测算法思路.mp4', 254456318, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231742348663499.mp4');
INSERT INTO `sys_resource` VALUES (466, '2020-11-23 17:45:01', '08_多目标检测中存在的问题及解决思路.mp4', 347301395, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231744332478695.mp4');
INSERT INTO `sys_resource` VALUES (467, '2020-11-23 17:46:34', '09_MTCNN架构思想解读.mp4', 293310533, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231746107553780.mp4');
INSERT INTO `sys_resource` VALUES (468, '2020-11-23 17:50:08', '10_MTCNN网络参数解读.mp4', 498849996, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231749285656505.mp4');
INSERT INTO `sys_resource` VALUES (469, '2020-11-23 17:52:03', '11_MTCNN的反算过程.mp4', 430324094, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231751295523506.mp4');
INSERT INTO `sys_resource` VALUES (470, '2020-11-23 17:53:03', '12_使用NMS解决多框问题.mp4', 176720937, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231752487924307.mp4');
INSERT INTO `sys_resource` VALUES (471, '2020-11-23 17:56:01', '13_MTCNN的侦测过程.mp4', 474418186, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231755240669412.mp4');
INSERT INTO `sys_resource` VALUES (472, '2020-11-23 17:57:48', '14_MTCNN训练数据解读.mp4', 406703772, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231757157572724.mp4');
INSERT INTO `sys_resource` VALUES (473, '2020-11-23 17:59:27', '15_代码实现IOU.mp4', 227404647, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231759097653065.mp4');
INSERT INTO `sys_resource` VALUES (474, '2020-11-23 17:59:55', '16_代码实现NMS.mp4', 44982808, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231759514057440.mp4');
INSERT INTO `sys_resource` VALUES (475, '2020-11-23 18:00:30', '17_CelebA数据观察.mp4', 47527112, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231800262890233.mp4');
INSERT INTO `sys_resource` VALUES (476, '2020-11-23 18:03:30', '18_人脸侦测数据集制作.mp4', 414991464, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231802572288883.mp4');
INSERT INTO `sys_resource` VALUES (477, '2020-11-23 18:04:48', '19_MTCNN网络训练过程.mp4', 276185571, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231804266207665.mp4');
INSERT INTO `sys_resource` VALUES (478, '2020-11-23 18:07:00', '20_MTCNN网络侦测过程.mp4', 478513236, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231806228231749.mp4');
INSERT INTO `sys_resource` VALUES (479, '2020-11-23 18:30:02', '图怪兽_291f81089fd6b5911ff5b04c55912662_37861.png', 118715, 0, 'image', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-23/202011231830015651263.png');
INSERT INTO `sys_resource` VALUES (480, '2020-11-24 09:09:51', '环境搭建.mp4', 376789732, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011240909215533466.mp4');
INSERT INTO `sys_resource` VALUES (481, '2020-11-24 09:12:00', 'PYthon前置课（一）.mp4', 501793278, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011240911200550946.mp4');
INSERT INTO `sys_resource` VALUES (482, '2020-11-24 09:14:38', 'PYthon前置课（二）.mp4', 762797403, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011240913386913676.mp4');
INSERT INTO `sys_resource` VALUES (483, '2020-11-24 09:17:36', 'PYthon前置课（三）.mp4', 676904341, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011240916434042021.mp4');
INSERT INTO `sys_resource` VALUES (484, '2020-11-24 09:19:33', 'PYthon前置课（四）.mp4', 501884950, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011240918545308790.mp4');
INSERT INTO `sys_resource` VALUES (485, '2020-11-24 09:22:39', 'PYthon前置课（五）.mp4', 771079119, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011240921384199248.mp4');
INSERT INTO `sys_resource` VALUES (486, '2020-11-24 09:24:51', 'PYthon前置课（六）.mp4', 577407314, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011240924053225180.mp4');
INSERT INTO `sys_resource` VALUES (487, '2020-11-24 09:29:55', 'PYthon前置课（八）.mp4', 455556388, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011240929190626623.mp4');
INSERT INTO `sys_resource` VALUES (488, '2020-11-24 09:35:05', 'PYthon前置课（九）.mp4', 432375101, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011240934314944412.mp4');
INSERT INTO `sys_resource` VALUES (489, '2020-11-24 09:38:38', 'PYthon前置课（七）.mp4', 533278321, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011240937561657918.mp4');
INSERT INTO `sys_resource` VALUES (490, '2020-11-24 09:40:28', 'PYthon前置课（十）.mp4', 445538792, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011240939538289634.mp4');
INSERT INTO `sys_resource` VALUES (491, '2020-11-24 10:16:24', 'PYthon前置课（十一）.mp4', 554266599, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241015414770943.mp4');
INSERT INTO `sys_resource` VALUES (492, '2020-11-24 10:27:31', 'PYthon前置课（十二）.mp4', 440616935, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241026561998370.mp4');
INSERT INTO `sys_resource` VALUES (493, '2020-11-24 10:33:05', 'PYthon前置课（十三）.mp4', 432683044, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241032310326602.mp4');
INSERT INTO `sys_resource` VALUES (494, '2020-11-24 10:40:23', 'PYthon前置课（十四）.mp4', 493256413, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241039419182838.mp4');
INSERT INTO `sys_resource` VALUES (495, '2020-11-24 10:41:57', 'PYthon前置课（十五）.mp4', 388620697, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241041261887151.mp4');
INSERT INTO `sys_resource` VALUES (496, '2020-11-24 10:50:47', 'PYthon前置课（十六）.mp4', 390607704, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241050161915880.mp4');
INSERT INTO `sys_resource` VALUES (497, '2020-11-24 14:51:33', 'PYthon前置课（十七）.mp4', 633112735, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241450440032172.mp4');
INSERT INTO `sys_resource` VALUES (498, '2020-11-24 14:55:12', 'PYthon前置课（十八）.mp4', 353249859, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241454443554533.mp4');
INSERT INTO `sys_resource` VALUES (499, '2020-11-24 15:03:25', 'PYthon前置课（十九）.mp4', 394547093, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241502534191084.mp4');
INSERT INTO `sys_resource` VALUES (500, '2020-11-24 15:08:10', 'PYthon前置课（二十）.mp4', 493263768, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241507316312596.mp4');
INSERT INTO `sys_resource` VALUES (501, '2020-11-24 15:23:12', 'PYthon前置课（二十一）.mp4', 442620144, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241522371200140.mp4');
INSERT INTO `sys_resource` VALUES (502, '2020-11-24 15:26:32', 'PYthon前置课（二十二）.mp4', 493163579, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241525528414396.mp4');
INSERT INTO `sys_resource` VALUES (503, '2020-11-24 16:08:46', 'PYthon前置课（二十三）.mp4', 451916914, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241608114077948.mp4');
INSERT INTO `sys_resource` VALUES (504, '2020-11-24 16:14:03', 'PYthon前置课（二十四）.mp4', 471686782, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241613265627709.mp4');
INSERT INTO `sys_resource` VALUES (505, '2020-11-24 16:16:01', 'PYthon前置课（二十五）.mp4', 406534899, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241615296147499.mp4');
INSERT INTO `sys_resource` VALUES (506, '2020-11-24 16:20:19', 'PYthon前置课（二十六）.mp4', 413890990, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241619460540899.mp4');
INSERT INTO `sys_resource` VALUES (507, '2020-11-24 16:22:22', 'PYthon前置课（二十七）.mp4', 481521545, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241621450515730.mp4');
INSERT INTO `sys_resource` VALUES (508, '2020-11-24 16:25:41', 'PYthon前置课（二十八）.mp4', 486012538, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241625029541364.mp4');
INSERT INTO `sys_resource` VALUES (509, '2020-11-24 16:28:30', 'PYthon前置课（二十九）.mp4', 555388798, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241627460061556.mp4');
INSERT INTO `sys_resource` VALUES (510, '2020-11-24 16:31:15', 'PYthon前置课（三十）.mp4', 591654978, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241630276112249.mp4');
INSERT INTO `sys_resource` VALUES (511, '2020-11-24 16:32:58', 'PYthon前置课（三十一）.mp4', 367059507, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241632288195238.mp4');
INSERT INTO `sys_resource` VALUES (512, '2020-11-24 16:36:33', 'PYthon前置课（三十二）.mp4', 317799887, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241636074816780.mp4');
INSERT INTO `sys_resource` VALUES (513, '2020-11-24 16:41:27', 'PYthon前置课（三十三）.mp4', 646658394, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241640362859679.mp4');
INSERT INTO `sys_resource` VALUES (514, '2020-11-24 16:44:28', 'PYthon前置课（三十四）.mp4', 590611834, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241643416980641.mp4');
INSERT INTO `sys_resource` VALUES (515, '2020-11-24 16:48:45', 'PYthon前置课（三十五）.mp4', 393864948, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241648136130573.mp4');
INSERT INTO `sys_resource` VALUES (516, '2020-11-24 16:51:05', 'PYthon前置课（三十六）.mp4', 386929560, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241650341298233.mp4');
INSERT INTO `sys_resource` VALUES (517, '2020-11-24 16:53:25', 'PYthon前置课（三十七）.mp4', 539817191, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241652422420906.mp4');
INSERT INTO `sys_resource` VALUES (518, '2020-11-24 16:55:16', 'PYthon前置课（三十八）.mp4', 420242229, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241654434386581.mp4');
INSERT INTO `sys_resource` VALUES (519, '2020-11-24 17:04:51', 'PYthon前置课（三十九）.mp4', 664608625, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241703593456581.mp4');
INSERT INTO `sys_resource` VALUES (520, '2020-11-24 17:12:10', 'PYthon前置课（四十）.mp4', 501990401, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241711308702079.mp4');
INSERT INTO `sys_resource` VALUES (521, '2020-11-24 17:18:09', 'PYthon前置课（四十一）.mp4', 629396560, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241717195237568.mp4');
INSERT INTO `sys_resource` VALUES (522, '2020-11-24 17:20:49', 'PYthon前置课（四十二）.mp4', 645052649, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241719578872968.mp4');
INSERT INTO `sys_resource` VALUES (523, '2020-11-24 17:28:18', 'PYthon前置课（四十三）.mp4', 652311938, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241727273382312.mp4');
INSERT INTO `sys_resource` VALUES (524, '2020-11-24 17:30:52', 'PYthon前置课（四十四）.mp4', 441999087, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241730178357423.mp4');
INSERT INTO `sys_resource` VALUES (525, '2020-11-24 17:33:31', 'PYthon前置课（四十五）.mp4', 473919200, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241732542531230.mp4');
INSERT INTO `sys_resource` VALUES (526, '2020-11-24 17:39:13', 'PYthon前置课（四十六）.mp4', 358682267, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241738452009117.mp4');
INSERT INTO `sys_resource` VALUES (527, '2020-11-24 17:44:21', 'PYthon前置课（四十七）.mp4', 475433732, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241743446906691.mp4');
INSERT INTO `sys_resource` VALUES (528, '2020-11-24 17:52:39', 'PYthon前置课（四十八）.mp4', 801960522, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241751363064114.mp4');
INSERT INTO `sys_resource` VALUES (529, '2020-11-24 17:54:58', 'PYthon前置课（四十九）.mp4', 546774094, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241754151214810.mp4');
INSERT INTO `sys_resource` VALUES (530, '2020-11-24 18:00:38', 'PYthon前置课（五十）.mp4', 500256992, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241759582156787.mp4');
INSERT INTO `sys_resource` VALUES (531, '2020-11-24 18:04:37', 'PYthon前置课（五十一）.mp4', 571196007, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241803513780403.mp4');
INSERT INTO `sys_resource` VALUES (532, '2020-11-24 18:09:12', 'PYthon前置课（五十二）.mp4', 561708140, 0, 'video', 'https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-24/202011241808283736673.mp4');

-- ----------------------------
-- Table structure for t_article
-- ----------------------------
DROP TABLE IF EXISTS `t_article`;
CREATE TABLE `t_article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `author_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者名字',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章摘要',
  `text` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '文章内容',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `open_time` datetime(0) NULL DEFAULT NULL COMMENT '发布时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `issupport` int(1) NULL DEFAULT NULL COMMENT '是否置顶',
  `isoriginal` int(1) NULL DEFAULT NULL COMMENT '是否原创',
  `poster_id` int(11) NULL DEFAULT NULL COMMENT '文章关联的媒体',
  `category_id` int(11) NULL DEFAULT NULL COMMENT '所属类别',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `poster_id`(`poster_id`) USING BTREE,
  INDEX `FKllj4cixhym6u9u9vxgf3l7msu`(`category_id`) USING BTREE,
  CONSTRAINT `FKllj4cixhym6u9u9vxgf3l7msu` FOREIGN KEY (`category_id`) REFERENCES `cms_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKsjn1iypqo5mq2eqsk8pcx7ha3` FOREIGN KEY (`poster_id`) REFERENCES `sys_resource` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 123 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_article
-- ----------------------------
INSERT INTO `t_article` VALUES (110, '猎维教育', '全球热点丨半亿，千万……这一超高加速度，让人忧心！', '新华社北京11月10日电 世界卫生组织9日发布的最新数据显示。全球累计新冠确诊病例已超5000万例。美国约翰斯·霍普金斯大学发布的新冠疫情最新统计数据显示。美国累计确诊病例超过1000万例。全球累计新冠确诊病例已达50030121例。美国、印度、巴西的累计确诊病例数位列全球前三。累计确诊病例数和累计死亡病例数全球排名第一。美国约翰斯·霍普金斯大学9日发布的新冠疫情最新统计数据显示。累计死亡病例237742例。', '<p>新华社北京11月10日电 世界卫生组织9日发布的最新数据显示，全球累计新冠确诊病例已超5000万例。同一天，美国约翰斯·霍普金斯大学发布的新冠疫情最新统计数据显示，美国累计确诊病例超过1000万例。两个“里程悲”数字同一天到来。</p><p><img src=\"https://m1-1253159997.image.myqcloud.com/imageDir/eac27ba3595eb3667730ec5b3016688c.png\"></p><p>随着秋冬季节到来，全球疫情再次出现快速上涨趋势。专家警告，如果新冠传播得不到控制，等到美国感恩节、圣诞节人口大量聚集和流动之际，疫情数字或将“指数型”上涨。世卫组织当天呼吁，要抗击疫情，须全球团结一致、科学抗疫。</p><h2><strong>秋冬季“激增潮”来袭</strong></h2><p>根据世卫组织的数据，截至欧洲中部时间9日10时45分（北京时间9日17时45分），全球累计新冠确诊病例已达50030121例，累计死亡1252072例。美国、印度、巴西的累计确诊病例数位列全球前三。</p><p><img src=\"https://m1-1253159997.image.myqcloud.com/imageDir/dd576122fbd5eab537ffc131a336fd24.png\"></p><p>这其中，美国疫情尤为引人瞩目，累计确诊病例数和累计死亡病例数全球排名第一。美国约翰斯·霍普金斯大学9日发布的新冠疫情最新统计数据显示，截至美国东部时间9日13时25分（北京时间10日2时25分），美国累计确诊病例10018278例，累计死亡病例237742例。</p><p><img src=\"https://m1-1253159997.image.myqcloud.com/imageDir/78165b6e6fb1ab266b5cffcb925d690d.png\"></p><p>此外，美国不仅新冠病例增幅连续刷新世界纪录，增速也创下疫情暴发以来最高纪录。从10月30日确诊超900万例到11月9日超1000万例仅用时10天。</p><p>第73届世界卫生大会续会9日开幕，世界卫生组织总干事谭德塞呼吁各国团结一致、科学抗疫。他致开幕辞时说：“我们唯一的希望是科学、找到解决办法和团结。”</p><p><strong>专家：忧心！</strong></p><p>美国艾奥瓦大学微生物学和免疫学教授斯坦利·珀尔曼在接受新华社记者采访时表示，导致近期疫情形势急剧恶化的原因包括天气转冷使更多人群聚集活动在室内进行，许多人对疫情产生“疲劳”感，即便因新冠死亡的人数还在持续上升，仍有大量公众没认清现实，没有紧迫感。</p><p>“疫情发展到如此糟糕的阶段，如果不采取大规模防控措施，很难看到病例增幅降下来。”珀尔曼认为，更严格的防控措施应包括广泛的“口罩令”、严格的社交距离政策、高危地区部分“封闭”、对确诊患者密切接触者进行更有效追踪等。</p><p>目前，欧洲、亚洲等多个国家已开始采用严格的防疫措施，防止秋冬季节疫情加剧。</p><p><strong>应对凶猛疫情须凝聚合力</strong></p><p>面对凶猛疫情，各国唯有更加坚定地凝聚起合力。</p><p>开展国际联防联控，需要各国增进广泛交流与合作。不论是疫情信息通报、防控和诊疗经验分享、药物和疫苗科研攻关，还是边境口岸管控、维护畅通贸易和全球产业链供应链稳定，都需要各国积极协调行动。任何一国、尤其是大国“掉链子”，都有可能使国际联防联控功亏一篑。</p>', '2020-11-13 09:56:20', '2020-11-13 17:55:10', '2020-11-19 18:33:18', 0, 1, 221, 175);
INSERT INTO `t_article` VALUES (111, '猎维教育', '全球疫情全球日增确诊超49万例 累计逾5475万例', '全球累计确诊新冠肺炎病例54757305例。美国单日新增确诊病例逾11万例 累计确诊超1134万例根据Worldometer实时统计数据。美国累计确诊新冠肺炎病例11341380例。美国新增确诊病例113250例。美国的新冠肺炎疫情已经达到了。巴西单日新增确诊病例逾1.4万例 累计确诊超586万例截至当地时间11月15日晚。巴西单日新增新冠肺炎确诊病例14134例。俄罗斯新增22572例新冠肺炎确诊病例。', '<p class=\"ql-align-justify\">海外网11月16日电&nbsp;Worldometer网站实时统计数据显示，截至北京时间11月16日6时30分左右，全球累计确诊新冠肺炎病例54757305例，累计死亡病例1323388例，57个国家累计确诊均超10万例。与前一日相比，全球单日新增确诊病例499216例，新增死亡病例6784例。中国以外新增确诊病例逾49万例，累计确诊病例逾5467万例，累计死亡病例逾131万例。</p><p class=\"ql-align-justify\">美国单日新增确诊病例逾11万例 累计确诊超1134万例</p><p class=\"ql-align-justify\">根据Worldometer实时统计数据，截至北京时间11月16日6时30分左右，美国累计确诊新冠肺炎病例11341380例，累计死亡251773例。与前一日6时30分数据相比，美国新增确诊病例113250例，新增死亡病例514例。</p><h2 class=\"ql-align-justify\">美国《外交政策》杂志网站发文指出，</h2><p class=\"ql-align-justify\">美国的新冠肺炎疫情已经达到了“巨大灾难”的级别，而美国政府在防控疫情方面的重视却并不足够。文章说，美国的新冠病毒蔓延已经失控，美国凯泽家庭基金会一直在绘制美国新冠肺炎疫情地图，他们将疫情严重的地区标为红色。根据最新公布的地图显示，全美50个州中已经有49个州被标为红色。</p><p class=\"ql-align-justify\">巴西单日新增确诊病例逾1.4万例 累计确诊超586万例</p><p class=\"ql-align-justify\">截至当地时间11月15日晚，巴西单日新增新冠肺炎确诊病例14134例，累计确诊5863093例；新增死亡病例125例，累计死亡165798例。</p><p class=\"ql-align-justify\">巴西公共卫生研究机构——奥斯瓦尔多·克鲁斯基金会指出，全国27座首府城市中，目前有9城的新冠肺炎确诊人数呈现上升趋势。圣保罗市爱因斯坦医院于同日发布一份公告指出，近期新冠肺炎入院治疗的患者数量及该院新冠病毒检测阳性率均呈上升态势，院方提醒这种趋势值得警惕。</p><p class=\"ql-align-justify\">俄罗斯单日新增确诊病例逾2.2万例 累计确诊超192万例</p><p class=\"ql-align-justify\">据俄罗斯新冠病毒防疫官网11月15日公布的最新数据，俄罗斯新增22572例新冠肺炎确诊病例，累计确诊达1925825例，新增新冠肺炎死亡病例352例，累计死亡33186例。</p><p class=\"ql-align-justify\">据俄罗斯卫星通讯社15日报道，瑞士瑞信银行（Credit Suisse）的分析报告称，俄罗斯在研发“卫星-V”新冠病毒疫苗时使用两种人类腺病毒载体，这提高了疫苗的有效性。瑞信银行的分析师强调：“卫星-V’疫苗与众不同的地方在于，对第一剂（rAd5）和第二剂（rAd26）疫苗使用两种不同的腺病毒载体。显然，这就可以克服人身上存在对这种载体的原有免疫力问题。”</p><p class=\"ql-align-justify\">法国单日新增确诊病例逾2.7万例 累计确诊超198万例</p><p class=\"ql-align-justify\">法国公共卫生部门11月15日公布的数据显示，截至当天14时，法国累计新冠肺炎确诊病例达1981827例，较前一日新增27228例。累计报告死亡病例达到44548例，较前一日新增302人。</p><p class=\"ql-align-justify\">美联社表示，虽然法国疫情当前仍然严重，住院患者数量要高于4月的第一波疫情，但是全法各地的医院承受住了当前疫情的冲击。法国卫生官员称：“医疗系统现在接近满负荷，但我们看到了一丝希望的曙光。”（海外网 杨佳）</p>', '2020-11-16 11:27:10', '2020-11-16 19:24:58', '2020-11-19 15:44:37', 0, 0, 33, 175);
INSERT INTO `t_article` VALUES (113, '猎维教育', '羊羊羊终于到武汉了！这趟“中国行”历程笔记来了', '@武汉人您的第一批羊羊羊已送达。今天（15日）。10辆满载12000只蒙古羊儿的集装箱卡车抵达武汉。再按方案在全省进行分配。中国行。羊羊羊如约而至这趟。首批接运蒙古国羊的车队从武汉出发。10辆集装箱冷链车满载首批加工完毕的12000万只羊离开二连浩特。它们顺利抵达武汉。具体的分配方案。12000只羊是如何安全。实现冷链运输全程。每天行驶8小时。每行驶3.5小时休息半小时。首批羊羊羊已送达。这份疫情之下两国间的守望相助礼重。', '<p>@武汉人</p><p>您的第一批羊羊羊已送达！</p><p>今天（15日），据武汉市文化和旅游局官方微信消息称，10辆满载<strong>12000只</strong>蒙古羊儿的集装箱卡车<strong>抵达武汉</strong>，暂存在阳逻港仓库，再按方案在全省进行分配。</p><p><img src=\"https://m1-1253159997.image.myqcloud.com/imageDir/3ff857801865cf99ba0dfacc38a6f13c.jpeg\"></p><p>羊羊“中国行”历程笔记来了</p><p>从2月宣布赠羊至今</p><p>3万只羊羊们的行动轨迹</p><p>一直牵动着全国人民的胃心</p><p>如今，羊羊羊如约而至</p><p>这趟“中国行”历程笔记来了→</p><p><img src=\"https://m1-1253159997.image.myqcloud.com/imageDir/70cd4e684525782a4c66f297f6b00321.gif\"></p><p>穿山越岭 羊羊如何安全抵汉？</p><p><img src=\"https://m1-1253159997.image.myqcloud.com/imageDir/e104b567b9125f19e85832411893c9a6.jpeg\"></p><p>11月9日上午，首批接运蒙古国羊的车队从武汉出发。11月12日，10辆集装箱冷链车满载首批加工完毕的12000万只羊离开二连浩特，前往湖北武汉。今天，它们顺利抵达武汉，具体的分配方案，要等进一步的安排。</p><p>这一路颠簸，12000只羊是如何安全“新鲜”回武汉的？</p><p>车辆低温保鲜不易腐</p><p>这次接运蒙古国羊的是45英尺特种冷藏集装箱，具有良好隔热性，箱内温度都在<strong>零下18℃以下。</strong>是适用于各类易腐烂食品的运送、贮存的特殊集装箱。每台冷链箱预计装载1200只经过检疫检验过的羊。</p><p>运输全程手机可视可控</p><p>随箱配备北斗导航，实现24小时全天候箱体位置全球定位，运用移动互联网技术远程控制冷机的运行状态，实现冷链运输全程<strong>“可视化、可控化”</strong>。</p><p>运送安全有保障</p><p>对每位驾驶员都进行了核酸检测及食品安全培训；</p><p>对每台车都进行了严格的消毒；</p><p>每天行驶8小时，每行驶<strong>3.5小时休息半小时</strong>。</p><p>行驶1800公里，首批羊羊羊已送达，内蒙古也将继续做好后续18000只羊的加工运输工作。</p><p>这份疫情之下两国间的守望相助</p><p><strong>礼重，情义更重！</strong></p><p><img src=\"https://m1-1253159997.image.myqcloud.com/imageDir/53b737283687f0ea2eb790fb5aecdc03.jpeg\"></p>', '2020-11-16 17:06:03', '2020-11-17 01:05:27', '2020-11-18 17:48:58', 0, 1, 263, 175);
INSERT INTO `t_article` VALUES (114, '1', '神鸟教育：留守儿童成绩提高不再是梦', '爷爷奶奶带的孩子就可以通过网络来提升他们的成绩。大大提高孩子的学习效率。他们创办教育机构的初衷已经不再是帮助孩子提升成绩。在教学方面未能根据孩子的个性进行教学。提高孩子的学习效率。不仅提升孩子的学习成绩。神鸟教育与一般的教学机构不同。并十分关注教学资源分配不足地区的教育。神鸟教育所提供的培优/补弱课+辅导课+伴学服务三位一体的教学辅导服务体系更是为留守儿童以及父母忙于工作无暇照料孩子的家庭带来莫大的帮助。', '<p>在当今的中国，很多家庭为了谋求出路，夫妻两人去外地打工，孩子留在家乡给爷爷奶奶带。然而，众所周知，上一辈的知识文化有限，有的甚至是文盲，无法对孩子的功课进行辅导和帮助。</p><p>在当今的中国，很多家庭为了谋求出路，夫妻两人去外地打工，孩子留在家乡给爷爷奶奶带。然而，众所周知，上一辈的知识文化有限，有的甚至是文盲，无法对孩子的功课进行辅导和帮助。加上欠发达地区的教育资源较为欠缺，很多留守儿童的学习成绩就成为很大的问题。由于成绩不好，这些孩子又是走上了老一辈的道路，早早就辍学外出打工。因此，在中国弥补不同地区的教育差距，改变这些孩子的命运至关重要。</p><p><img src=\"https://res.cngoldres.com/upload/usercenter/2020/1118/cbd57944b72f2db8116af70576acac24.jpg\" height=\"281\" width=\"412\"></p><p><strong>留守儿童成绩亟待提高，突破点在哪?</strong></p><p>那么，留守儿童的成绩该如何提高呢?在科技飞速发展的今天，网络已经十分普及，即便是在一些落后的地区也有了网络的覆盖，这就为孩子的学习提供非常好的条件。对于这些父母外出打工，爷爷奶奶带的孩子就可以通过网络来提升他们的成绩，开发他们的潜能。</p><p>其实，不管是哪个地区的孩子，他们身上都有着巨大的潜力等着来发掘，只要给他们机会，很快就可以看到惊喜。而通过网络这种媒介，进行远程教育则是一种非常好的方式。这样的远程教育没有时间、地点的限制，能够利用课后的闲暇时间进行有针对性地辅导和加强，大大提高孩子的学习效率。</p><p><strong>网络远程教育好的教师和教学理念是关键</strong></p><p>不过，这种远程教育的质量如何还需要看网络另一端的教师质量和教学理念，只有认真负责的老师，采取科学的教学方式才能真正对孩子起到帮助。在经济飞速发展的今天，很多教学机构和培训机构越发的商业化，他们创办教育机构的初衷已经不再是帮助孩子提升成绩，减轻父母的负担，为中国的教育事业贡献一份力。他们的教学理念受限于营销概念，在教学方面未能根据孩子的个性进行教学，导致效率低下，不能真正帮助到孩子们。</p><p><img src=\"https://res.cngoldres.com/upload/usercenter/2020/1118/835938d112a8e4060ec0cf1e0fbdb100.jpg\" height=\"238\" width=\"432\"></p><p><strong>教学机构以人为本很重要</strong></p><p>神鸟教育在这样的背景下应运而生，这家由北京大学、中科大毕业生协助创办的新概念教培服务商从创办以来就有着以大力发展网络教育事业为己任的自觉，在课程辅导方面向来以人为本，根据每个孩子的不同情况制定不同的教程，使用不同的教学方法，提高孩子的学习效率，发掘孩子的亮点，给孩子带来自信，不仅提升孩子的学习成绩，也让孩子更加热爱学习，从而养成自发自觉的学习态度。</p><p>神鸟教育与一般的教学机构不同，它定位“陪读家长的专家帮手和孩子学习的私家保姆”，并十分关注教学资源分配不足地区的教育。考虑到三四线城市以及偏远地区广大学生和家长的需求，也同时提供价格亲民的在线答疑、小班辅导、月租付费等服务，为消除教育资源不均衡做贡献。神鸟教育研发的基础课程是在专家团队指导下研发设计的，讲述的是与实际相结合的和高效提分关系密切的最新的知识和技巧，针对每个孩子独特性，神鸟教育在实践中采用小班定制、个人定制的方式灵活设计课程，用“课程适配学生”，让每一个追求进步的学生都能够在课程中受益，提升自己的成绩。</p><p>神鸟教育所提供的培优/补弱课+辅导课+伴学服务三位一体的教学辅导服务体系更是为留守儿童以及父母忙于工作无暇照料孩子的家庭带来莫大的帮助，不仅重视孩子的个性化，也十分关注孩子的学习效率，在这样的服务体系下，孩子的变化是非常明显的。</p><p>根据相关数据显示，我国目前已有超过700万的留守儿童，而这些孩子的成绩如何提高，这些孩子的教育如何保障，不仅仅需要父母的重视，更需要全社会给予关注和支持。而类似神鸟教育这样的教学机构以小而精为概念，针对性教学，整合优质教学、辅导资源服务教育资源分配不均衡地区的学生和家长，实现学习效率的提升。毫无疑问，这样的教学机构也将对包括一二线城市在内的很多地区普遍存在的留守儿童带来巨大的帮助。</p><p>“人人皆学霸”并不只是一句口号，而是很多家长的期待，更是神鸟教育的最终目标，而我们不难看出，只有好的教学机构才能真正帮助孩子提升成绩，也相信在未来，将会有更多的孩子在神鸟教育的帮助和辅导下，成绩获得突飞猛进，成为父母骄傲的孩子。</p>', '2020-11-18 14:38:54', '2020-11-18 22:37:32', '2020-11-18 15:16:06', 0, 1, 247, 175);
INSERT INTO `t_article` VALUES (115, '猎维教育', '深夜落马的原副省长受审，最后6年“收手”了？', '北京市第一中级人民法院今天一审公开开庭审理了河北省人民政府原党组成员、副省长李谦受贿一案。李谦利用担任保定市委常委、市委副书记、保定市政府常务副市长、代理市长、市长。衡水市委书记等职务上的便利。为有关单位和个人在重点建设项目申报、房地产开发建设、工程项目承揽等事项上提供帮助。非法收受相关单位和个人给予的财物共计折合人民币5048万余元。李谦（中）受审。检方指控李谦最后的受贿行为发生在2013年10月。李谦是。', '<p>北京市高级人民法院17日通报，北京市第一中级人民法院今天一审公开开庭审理了河北省人民政府原党组成员、副省长李谦受贿一案。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">北京市人民检察院第一分院起诉指控：2006年9月至2013年10月，李谦利用担任保定市委常委、市委副书记、保定市政府常务副市长、代理市长、市长，衡水市委书记等职务上的便利，为有关单位和个人在重点建设项目申报、房地产开发建设、工程项目承揽等事项上提供帮助，非法收受相关单位和个人给予的财物共计折合人民币5048万余元。</p><p><img src=\"https://p6-tt.byteimg.com/origin/pgc-image/7b0c7ba9b3504bdca75495ee5af542ff?from=pc\" alt=\"深夜落马的原副省长受审，最后6年“收手”了？\">李谦（中）受审。图源：京法网事</p><p class=\"ql-align-justify\">长安街知事注意到，检方指控李谦最后的受贿行为发生在2013年10月，当时他上任衡水市委书记不久，距2019年8月其在河北省副省长任上落马，中间隔了6年。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">这6年间，李谦是“金盆洗手”了吗？中国刑法学研究会副秘书长、北京师范大学教授彭新林告诉知事，从以往职务犯罪案件的办理经验来看，这种情况比较罕见，不排除李谦在这6年间的确没有受贿行为，但也存在另一种可能性，即缺乏足够的证据证实。</p><p class=\"ql-align-justify\">彭新林指出，进入起诉审判程序的案件必须确保案件事实清楚、证据确实充分，如果达不到此一证明要求，例如证据不够充分、行为不符合法律认定的标准，是不能被提起公诉的。</p><p class=\"ql-align-justify\">一般来说，行贿受贿的行为多发生在两个人之间，过程比较隐秘，更多依靠言词证据定案，客观证据相对稀缺，取证难度很大。若在调查阶段，其中一方已经死亡，或者一方否认罪行而又没有其他客观证据予以佐证，那就会影响定罪。</p><p class=\"ql-align-justify\">因此，可能李谦在这6年间有过受贿的行为，但是目前掌握的证据不足以起诉。最终检方将其受贿的时间定在2006年9月至2013年10月，正是坚持了实事求是的法治精神。</p><p><img src=\"https://p3-tt.byteimg.com/origin/pgc-image/a4d826403a3a42638e5a7cfd3f35e36b?from=pc\" alt=\"深夜落马的原副省长受审，最后6年“收手”了？\"></p><p><br></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">李谦出生于1960年3月，河北省石家庄人，曾在石家庄工作多年，2001年赴保定任职，历任市委常委、宣传部长、常务副市长，2010年1月出任保定市市长，2012年12月转任衡水市委书记。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">2017年3月，李谦晋升河北省副省长，4月卸任衡水市委书记。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">2019年8月27日深夜，李谦官宣“落马”。当时，中央纪委国家监委连续“打虎”，4天内有3名省部级干部被查，除李谦外还有安徽省高级人民法院原院长张坚和河南省原副省长徐光。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">2020年1月，李谦被开除党籍和公职。经查——</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">他丧失理想信念，背弃初心使命，蜕化变质，自甘堕落，对党不忠诚不老实，不按规定报告个人有关事项、组织谈话时不如实说明问题；</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">违反中央八项规定精神，违规安排并参加超标准公务接待；</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">收受礼品、礼金，违规从事营利活动，甘于被“围猎”，在房地产开发建设、工程建设项目承揽等方面利用职务上的便利为他人谋利，并非法收受巨额财物；</p><p><br></p>', '2020-11-18 15:27:27', '2020-11-18 23:25:56', '2020-11-18 15:27:27', 0, 1, 249, 175);
INSERT INTO `t_article` VALUES (116, '猎维教育', '人工智能 （计算机科学的一个分支）', '它是研究、开发用于模拟、延伸和扩展人的智能的理论、方法、技术及应用系统的一门新的技术科学。人工智能是计算机科学的一个分支。并生产出一种新的能以人类智能相似的方式做出反应的智能机器。人工智能从诞生以来。人工智能可以对人的意识、思维的信息过程的模拟。人工智能不是人的智能。人工智能是一门极富挑战性的科学。从事这项工作的人必须懂得计算机知识。人工智能是包括十分广泛的科学。它由不同的领域组成。但不同的时代、不同的人对这种。', '<p>人工智能（Artificial Intelligence），<a href=\"https://baike.baidu.com/item/%E8%8B%B1%E6%96%87/3079091\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">英文</a>缩写为AI。它是<a href=\"https://baike.baidu.com/item/%E7%A0%94%E7%A9%B6/1883844\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">研究</a>、<a href=\"https://baike.baidu.com/item/%E5%BC%80%E5%8F%91/9400971\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">开发</a>用于<a href=\"https://baike.baidu.com/item/%E6%A8%A1%E6%8B%9F/7698898\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">模拟</a>、<a href=\"https://baike.baidu.com/item/%E5%BB%B6%E4%BC%B8/7834264\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">延伸</a>和扩展人的<a href=\"https://baike.baidu.com/item/%E6%99%BA%E8%83%BD/66637\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">智能</a>的理论、方法、技术及应用系统的一门新的技术科学。</p><p>人工智能是<a href=\"https://baike.baidu.com/item/%E8%AE%A1%E7%AE%97%E6%9C%BA\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">计算机</a>科学的一个分支，它企图了解智能的实质，并生产出一种新的能以<a href=\"https://baike.baidu.com/item/%E4%BA%BA%E7%B1%BB%E6%99%BA%E8%83%BD/2287229\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">人类智能</a>相似的方式做出反应的智能机器，该领域的研究包括机器人、语言识别、图像识别、自然语言处理和<a href=\"https://baike.baidu.com/item/%E4%B8%93%E5%AE%B6%E7%B3%BB%E7%BB%9F/267819\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">专家系统</a>等。人工智能从诞生以来，理论和技术日益成熟，应用领域也不断扩大，可以设想，未来人工智能带来的科技产品，将会是人类<a href=\"https://baike.baidu.com/item/%E6%99%BA%E6%85%A7/129438\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">智慧</a>的“容器”。人工智能可以对人的意识、思维的信息过程的模拟。人工智能不是人的智能，但能像人那样思考、也可能超过人的智能。</p><p>人工智能是一门极富挑战性的科学，从事这项工作的人必须懂得计算机知识，心理学和哲学。人工智能是包括十分广泛的科学，它由不同的领域组成，如机器学习，计算机视觉等等，总的说来，人工智能研究的一个主要目标是使机器能够胜任一些通常需要人类智能才能完成的复杂工作。但不同的时代、不同的人对这种“复杂工作”的理解是不同的。<span style=\"color: rgb(51, 102, 204);\">&nbsp;[1]</span><span style=\"color: rgb(19, 110, 194);\">&nbsp;</span>&nbsp;2017年12月，人工智能入选“2017年度中国媒体十大流行语”。</p>', '2020-11-18 16:32:48', '2020-11-14 00:34:07', '2020-11-18 17:52:35', 0, 1, 264, 167);
INSERT INTO `t_article` VALUES (117, '猎维教育', '人工智能在营销和广告中的应用', '谷歌的图像识别、微软的小冰、苹果的 Siri、亚马逊的 Alexa，作为人工智能的第一块敲门砖，早已被广泛使用。事实上，AI在创意方面的表现也很出色。', '<p>人工智能诞生于上世纪40年代，但直到2016年AlphaGo VS 李世石的世纪人机大战，才开始被更多人关注。在这之前，很多人对AI的第一印象还停留在科幻电影的人形机器人上。上个月，AlphaGo重出江湖，以3:0的成绩横扫人类顶尖围棋选手柯洁，人工智能再次成为全球关注焦点。</p><p>与此同时，国际互联网巨头纷纷入场。谷歌的图像识别、微软的小冰、苹果的 Siri、亚马逊的 Alexa，作为人工智能的第一块敲门砖，早已被广泛使用。</p><h2>充满魔性的创意高手</h2><p>在广告营销领域，关于AI价值有一个巨大的误区，即它只会为数据和分析带来好处。事实上，AI在创意方面的表现也很出色。</p><p>之前，日本麦肯推出了“人工智能创意总监”，为了证明它在创意方面的实力，特意举办了一场广告大赛，正面PK人类创意总监。</p><p>两位创意总监的拿到的brief是为某个口香糖品牌策划一支TVC，要求体现出“即刻清新感受，持久到10分钟”的产品特点。两个参赛作品分别被匿名放在网上，邀请大众进行投票。最终，人工智能机器人以46% VS 54% 挑战失败，但它呈现的创意却充满魔性：穿着西服套装的“上班狗”吃下一粒口香糖，立刻变得活力四射，飞上了天！并且还拿着秒表计算时间，表明这种神奇的感觉持续长达10分钟。这样的水平，绝对不是来打酱油的。</p><p class=\"ql-align-center\"><img src=\"https://liev-test-edu.oss-cn-chengdu.aliyuncs.com/upload/2020-11-19/202011191020069512690.jpg\"></p><h3 class=\"ql-align-center\">AI在创意方面的表现也很出色</h3><p>人工智能在广告领域的另一个应用是“快速判断”。通过对用户各种数据进行过滤、判断，有针对性地向他们投放广告。原先，当用户逛体育类网站时产生了购买行为，我们就会向他投放体育有关的广告。如今，人工智能可以将这一步骤进行得更为深入：AI经过学习，能够识别这些用户当中谁是某类运动(比如足球)的爱好者，从而进一步提升对目标受众的定位精度，提升有效转化。</p><p>一旦AI有了更多的数据积累，加上这样的决策速度，未来全自动广告投放将变得可行。</p>', '2020-11-19 10:21:45', '2020-11-19 18:15:57', '2020-11-20 16:56:35', 0, 1, 272, 172);
INSERT INTO `t_article` VALUES (118, '猎维教育', ' 秦院长', '离开阿里后2011年主导北京联通863网络智能监控项目。开发车辆智能调度系统。2015年主导中国移动流量智能分析平台TSM。对流量的来源违规行为进行智能分析。2016年主导中国电信数据中心能耗智能调控系统。2018年主导中国科学院无人机蜂群算法研究及无线电波识别与分离核心算法研究。2019年为国内多个机场提供FOD机场异物检测核心算法。2019年主导监狱的行为智能分析检测系统并提供核心算法。拥有十余年算法研究经验。', '<p class=\"ql-align-justify\">曾就职于谷歌和阿里巴巴等大型公司，并担任高级算法工程师。离开阿里后2011年主导北京联通863网络智能监控项目;</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">2013年联合创立北京最早打车公司96106，开发车辆智能调度系统;</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">2015年主导中国移动流量智能分析平台TSM，对流量的来源违规行为进行智能分析，异常流量监测;</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">2016年主导中国电信数据中心能耗智能调控系统：为IDC机房节约上亿的能耗;</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">2018年主导中国科学院无人机蜂群算法研究及无线电波识别与分离核心算法研究;</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">2019年为国内多个机场提供FOD机场异物检测核心算法;</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">2019年主导监狱的行为智能分析检测系统并提供核心算法。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong>拥有十余年算法研究经验，精通算法架构的设计，多年在搭建算法工厂领域有着丰富的经验，在算法领域有自己独到的见解，并发明出属于自己的AI核心算法。</strong></p><p class=\"ql-align-justify\"><strong>主攻方向：深度强化学习，知识推理与图模型，AutoDL，生成模型;</strong></p><p class=\"ql-align-justify\"><strong>其他方向：信号分析，控制理论，3D点云。</strong></p>', '2020-11-19 11:57:01', '2020-11-19 19:55:10', '2020-11-19 16:55:45', 0, 1, 286, 174);
INSERT INTO `t_article` VALUES (119, '猎维教育', ' 张老师', '6年深度学习算法研发经验。精通深度学习框架。 具备丰富的C++、Java、python编程经验。有丰富的GPU模型加速。移动端模型加速。模型优化。模型部署经验。在CV领域的目标检测、目标分类、姿态估计、三维重建方面、NLP、知识图谱领域的问答、多轮对话方面都有自己的核心算法。讲课氛围轻松。对讲课内容有着独特的见解。参与或主导过的部分项目。物体识别跟踪算法智能股票系统算法开发智能鉴黄系统。', '<p class=\"ql-align-justify\">6年深度学习算法研发经验，精通深度学习框架，如TensorFlow，caffe，Keras, Pytorch等; 具备丰富的C++、Java、python编程经验;有丰富的GPU模型加速，移动端模型加速，模型优化，模型部署经验;在CV领域的目标检测、目标分类、姿态估计、三维重建方面、NLP、知识图谱领域的问答、多轮对话方面都有自己的核心算法。</p><p class=\"ql-align-justify\">讲课氛围轻松，注重寓教于乐，善于剖析原理，对讲课内容有着独特的见解，深受学生的好评。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><br></p><h2><strong>参与或主导过的部分项目：</strong></h2><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong>物体识别跟踪算法</strong></p><p class=\"ql-align-justify\"><strong>智能股票系统算法开发</strong></p><p class=\"ql-align-justify\"><strong>智能鉴黄系统</strong></p>', '2020-11-19 14:49:53', '2020-11-19 22:49:15', '2020-11-19 15:42:09', 0, 1, 293, 174);
INSERT INTO `t_article` VALUES (120, '猎维教育', '揭秘 | 百慕大三角很神秘吗？', '围绕着百慕大三角。纽约邮报发文\"百慕大三角之谜或许终于解开了\"[1]。\"百慕大三角之谜没有解开。纽约邮报说在百慕大三角上空形成的奇怪的云彩。很容易就会使船只和飞机沉没六角形空气炸弹看到这条新闻。纽约邮报科学频道关于百慕大三角的报道引发了热议。那这个考文尼到底有没有说过空气炸弹说呢。百慕大三角还有个别名。不神秘的失事上一节我们说到美国 19 中队的 5 架战斗机在百慕大坠毁了。详尽地描写了百慕大三角的神秘事件。', '<h6 class=\"ql-align-center\"><img src=\"https://p1-tt.byteimg.com/origin/pgc-image/e297c0cbe961418fbee46e8abb17d7d1?from=pc\" alt=\"揭秘 | 百慕大三角很神秘吗？\">科学声音 LOGO 墙</h6><p><br></p><p><img src=\"http://sf3-ttcdn-tos.pstatp.com/img/mosaic-legacy/dc0f000227964a66f896~339x222.png\">专栏</p><p>真假世界未解之谜丨第二季</p><p>作者：科学有故事汪诘</p><p><strong>29币</strong></p><p>3,107人已购</p><p>查看</p><p><br></p><h1><strong>空气炸弹</strong></h1><p>神秘的百慕大三角似乎已经是一个老掉牙的话题了，可是，你可能不知道，就在2016 年年末，围绕着百慕大三角，西方各大主流媒体一阵躁动，闹出了个大新闻。2016 年10 月 21 日，纽约邮报发文\"<strong>百慕大三角之谜或许终于解开了</strong>\"[1]，</p><p><img src=\"https://p1-tt.byteimg.com/origin/pgc-image/1c463dde5003439c9553e18fcb5ca085?from=pc\" alt=\"揭秘 | 百慕大三角很神秘吗？\"></p><p><br></p><p>4 天之后的 25 号，华盛顿邮报怼了回去，\"<strong>百慕大三角之谜没有解开，科学家原话被歪解\"</strong>[2]。</p><p><img src=\"https://p1-tt.byteimg.com/origin/pgc-image/956023379b0e4dd8a922a955ac93058e?from=pc\" alt=\"揭秘 | 百慕大三角很神秘吗？\"></p><p><br></p><p>这里说的是纽约邮报 New York Post，不是纽约时报 New York Times。虽然名气略逊纽约时报一筹，但也是历史悠久，1801 年就创刊了，2009 年发行量全美排第六[3]。媒体和媒体的互怼一向很精彩。一会解开，一会没有解开，这到底是怎么回事呢？科学家又说了些什么呢？</p><p><img src=\"https://p1-tt.byteimg.com/origin/pgc-image/146e79c0b6b54e60a03bc59c5fb6e7ac?from=pc\" alt=\"揭秘 | 百慕大三角很神秘吗？\"></p><p><br></p><p><strong>让我们根据发布时间，分别来看看这两篇新闻。</strong></p><p><br></p><p><strong>纽约邮报说</strong></p><p><br></p><blockquote class=\"ql-align-justify\">在百慕大三角上空形成的奇怪的云彩，可以解释为什么历史上会有几十艘船只和飞机在这块区域无故失踪。这个理论很引人瞩目，他说云彩或许能形成 270 公里时速的空气炸弹，从而击落飞机和船只。270 公里差不多是 F1 赛车的平均时速。这个理论是气象学家兰迪·考文尼在接受科学频道\"究竟是怎么回事\"（What on Earth）节目采访时透露的[4]考文尼在视频里表示\"云层的六角形状在卫星图像中真的很奇怪。</blockquote><p><img src=\"https://p1-tt.byteimg.com/origin/pgc-image/172a8e2cfa1a46559f73c4b4cf6decfa?from=pc\" alt=\"揭秘 | 百慕大三角很神秘吗？\">“空气炸弹”</p><blockquote class=\"ql-align-justify\">海洋上这些六角形的云本质上是空气炸弹。它们由所谓的微型爆炸物形成，会引发空气爆炸。\"纽约邮报还表示，空气爆炸威力巨大，是飓风级别的能量，很容易就会使船只和飞机沉没</blockquote><p><img src=\"https://p1-tt.byteimg.com/origin/pgc-image/20f3d1a1dc9a4cb787a80b3d53462445?from=pc\" alt=\"揭秘 | 百慕大三角很神秘吗？\">六角形空气炸弹</p><p>看到这条新闻，那真是勾起我童年的记忆啊，自打我对世界未解之谜好奇以来，各种围绕百慕大失踪的假说，就是层出不穷，</p><p><br></p><ul><li>次声波振动说</li><li>海底水桥说</li><li>天然气水合物说</li><li>磁偏角异常说</li><li>虫洞说</li><li>时空奇点说</li><li>等等等等。</li></ul><p>现在又来了一个云朵空气炸弹说。</p><p><br></p><p>当然，现在再看这样的假说，和小时候的感觉已经完全不一样了。其实，对于任何一个学说，与关注这个学说本身同样重要的是，关注一下同行的评价。<strong>科学研究特别看重同行评价，一个理论出来，就要接受全世界同行的挑战和挑刺，因为科学不讲究求同存异，只有真假之分。</strong></p><p><br></p><p><strong>果然，四天后，华盛顿邮报出手了</strong></p><p><br></p><p>它开门见山这样说：</p><p><br></p><blockquote class=\"ql-align-justify\">这周，纽约邮报科学频道关于百慕大三角的报道引发了热议，科学频道的言下之意似乎是谜题已解，但接受采访的科学家却根本没有这个想法。</blockquote><blockquote class=\"ql-align-justify\"><br></blockquote><p><img src=\"https://p6-tt.byteimg.com/origin/pgc-image/e8d569eee5bf41f5bb1b72520681fc44?from=pc\" alt=\"揭秘 | 百慕大三角很神秘吗？\"></p><p><br></p><p>科学频道\"究竟是怎么回事\"采访了亚利桑那州立大学气象系主任考文尼，把他塑造成了解开百慕大之谜的科学家。或者说，至少考文尼认为自己有了答案。<strong>但实际上，这位专家对百慕大压根不感兴趣。</strong>考文尼在接受我们采访时表示，剪辑太可怕了，我看到科学频道的节目时真的很不安。</p><p><br></p><p>接着，华盛顿邮报把矛头对准了同时报道这起事件的同行，来了一番获胜者似的冷嘲热讽。</p><p><br></p><p>除了纽约邮报，总部位于英国的太阳报也在线发表了一篇文章，标题很长，\"科学家宣称时速 270 公里的空气炸弹可以击落飞机击沉船只，臭名昭著的百慕大，围绕它的失踪之谜已经解开\"。类似这样报道的媒体还不只这两家，水怪时候我们经常提到的《每日邮报》也转载了，还有《热门机械》、《印度时报》，除了纸媒，知名电视节目《今日》也进行了报道。</p><p><br></p><p>这么一来，影响很大，百慕大的神秘形象又被树立起来了。</p><p><img src=\"https://p6-tt.byteimg.com/origin/pgc-image/8f438e2c913a4ddba91267174b075e90?from=pc\" alt=\"揭秘 | 百慕大三角很神秘吗？\"></p><p><br></p><p><strong>那这个考文尼到底有没有说过空气炸弹说呢？考文尼自己的说法是，这全是剪辑的错！这里也提个醒，剪辑师确实是可以做到完全歪解采访者本意的。</strong></p><p><br></p><p>为科学频道制作这期节目的 WAG TV 的首席运营官就很为考文尼的\"变卦\"感到愤怒。他说，我们看了卫星摄像机拍摄的奇怪图像，然后让专家来解读背后的原理，最后再找到最有可能的答案。他的意思是，频道的流程是规范的，并没有胡说八道。</p><p><br></p><p>那剪辑出来的片子里到底是怎么样的呢？实际上，片子里考文尼的镜头并不多，更多的是旁白，但加在一起表达的差不多就是纽约邮报报道的那些夸张原理。</p><p><br></p><blockquote class=\"ql-align-justify\">考文尼表示，他确实是说过云朵会引发空气爆炸，但是是把这个作为反面教材，用来讽刺那些鼓吹神秘说的人的，结果节目一播出，完全颠倒黑白了。考文尼说他没有在节目播出前看过成片。最后，他表示，自己对研究百慕大完全不感兴趣。</blockquote><p><br></p><p><strong>云朵能形成空气炸弹，所以百慕大可以把飞机和船弄沉没，这么耸人听闻的新闻，怎么能一下子，好像都不用考证似的就登上了主流媒体的头条呢？</strong></p><p><br></p><p>别奇怪，这其实是大众媒体的常态。在我看来，几乎每一个科学新闻，都存在媒体过度解读的问题。在如今的各种媒体上，各种夸大和歪解科学发现、科学理论是泛滥成灾的。想要了解科学，盯住几个靠谱的专业科普媒体、避开大众媒体是最好的选择。</p><p><br></p><h1 class=\"ql-align-center\"><strong class=\"ql-size-huge\"><em>百慕大三角的“神秘历史”</em></strong></h1><p><br></p><p>百慕大三角是位于迈阿密、波多黎各和百慕大岛之间的一块三角地带，每边的边长约 2000 公里，大致相当于上海到北京一个来回的空中距离。</p><p><img src=\"https://p1-tt.byteimg.com/origin/pgc-image/afab0e64802e43028f4c73c2302ae4a8?from=pc\" alt=\"揭秘 | 百慕大三角很神秘吗？\"></p><p><br></p><p>不过关于它的具体划定范围，一直有争议，但它的面积至少有 130 万平方公里，大致相当于中国国土面积的 1/7 。很大一片海区了。百慕大三角还有个别名，叫\"死亡三角\"，因为据传它能吞掉船只和飞机。</p><p><br></p><p>上世纪发生的比较早也是最为著名的一起失踪事件是&nbsp;<strong>1945 年 12 月 5 日的\"美国海军第 19 鱼雷机中队失踪事件\"[5]。</strong></p><p><img src=\"https://p3-tt.byteimg.com/origin/pgc-image/232ad76c29aa41bcb430dc2274af0f6e?from=pc\" alt=\"揭秘 | 百慕大三角很神秘吗？\"></p><p><br></p><p>那天一开始还算风和日丽，19 鱼雷机中队的 5 架\"复仇者\"攻击机在中尉<strong>查尔斯·泰勒</strong>的率领下，沿着佛罗里达海岸进行例行的飞行训练。战机起飞前刚刚进行过全面检测，每架战机都加满了足够飞 5 个半小时的油料，飞行员的情绪也不错。总之，一切安好，没有要出事的样子。</p><p class=\"ql-align-center\"><img src=\"https://p3-tt.byteimg.com/origin/pgc-image/19ee67e9d77344539fdc96fd19bab858?from=pc\" alt=\"揭秘 | 百慕大三角很神秘吗？\"><strong>查尔斯·泰勒</strong></p><p>下午 2 点半，五架战机从基地起飞。1 个半小时后，第 19 中队顺利完成了当天的鱼雷轰炸训练任务，开始向基地返航。突然间，领飞的泰勒中尉与基地指挥所进行了紧急联系：\"我们迷航了，我们看不见陆地了！\"基地的空中交通管制官立即让 19 中队的飞行员们报告他们所在的方位。指挥所还想向飞行员们下指令，但因为相互之间的联络断断续续的，所以只能根据雷达上的位置下令他们朝西飞，而无法下达更精准的命令。</p><p><br></p><p>最后，这五架战斗机因燃料耗尽，全部坠入海中。随后美军便派出了大量飞机和船舰进行救援搜索。但是结果却更悲惨，不但没有搜救成功，其中一架 PBM-5 水上飞机还在救援任务中出事，机上13名乘员无一生还。</p><p><br></p><p>关于此事的官方调查报告，足足有 500 页，<strong>最初的说法是队长泰勒应该为这次事故负主要责任。</strong></p><p><br></p><p>泰勒虽然有着近 2000 小时的飞行时间，但他并不是一位优秀的飞行员，性格固执，而且以马虎著称。二战期间，他就曾经两次在海上迷航，不得不放弃飞机跳伞逃生。在这次致命的飞行训练中，泰勒居然还忘记携带基本的导航仪和手表。</p><p><br></p><p>更重要的是，基地在发现泰勒迷航后，就要求他把指挥权交给其他人。但刚愎自用的泰勒却宁愿相信自己多年的飞行经验，而不愿意接受指挥中心的提议，继续带队往错误的方向飞去。通讯记录显示，有至少不下两位学生飞行员发现泰勒的判断有误，并要求改变航向。但泰勒仍然一意孤行，带着一行人飞向了死亡的深渊。</p><p><img src=\"https://p6-tt.byteimg.com/origin/pgc-image/22f1c77360594adebd1fe12dab48daa3?from=pc\" alt=\"揭秘 | 百慕大三角很神秘吗？\"></p><p><br></p><p>19 中队事件还有着怎样的内情，百慕大的谜题到底解开了吗，我们下节揭晓答案。</p><p><br></p><h1><strong>不神秘的失事</strong></h1><p><br></p><p>上一节我们说到美国 19 中队的 5 架战斗机在百慕大坠毁了，就连救援它们的飞机也出事了。这究竟是怎么回事呢？</p><p><br></p><p><strong>综合我检索到的各种资料，就不难发现，这次救援飞机的空难事故并不神秘，该有的迹象和证据一点都不缺。</strong></p><p>例如，</p><ul><li>根据气象资料，出事的那天，也就是 1945 年 12 月 5 日，早上是晴朗，但很快就晴转阴，到了救援飞机出动的时候，气象环境已经非常恶劣了。</li><li>而当时参加救援的 PBM-5 水上飞机是历史上频繁出现油气外泄、且常因小火花导致爆炸的机型，所以这种飞机也一直有一个非常倒霉的外号，叫\"飞行中的油箱\"，可见名声有多差。</li><li>而且，根据当时在该海域经过的一艘邮轮上的乘客们的证言，当晚曾经听到过上空有爆炸声，并看见了闪光，海面上也拖着一条长长的油带。</li></ul><p>所有这些证据都表明这是一起由于<strong>恶劣天气</strong>引发的空难事故。</p><p><br></p><p>其实呢，在19 中队的事故发生后没多久，海军的官方报告就已经做出了明确的责任认定，<strong>19 中队失事的直接原因就是队长泰勒迷航了</strong>，他带着 13 名乘员，总共驾驶了 5 架飞机，耗尽燃料不幸丧命。</p><p><br></p><p>但是，泰勒的亲属对这样的调查结果却极度不满，多次向美国海军高层投诉。可能是一些当局的领导被弄得不胜其烦，很有可能军方高层就是为了摆脱亲属的纠缠，在事故原因中，除了写上\"糟糕的天气\"还加了一句\"未知因素\"。</p><p><br></p><p><strong>但军方万万没有想到，原本只是为了应付一下家属写上的\"未知因素\"这四个字，却激起了神秘主义爱好者的浮想联翩，从此诞生了\"神秘的百慕大三角\"、\"魔鬼三角\"之类的名称。此后，各种谣言和辟谣就再也没有断过。</strong></p><p><br></p><p>如果仔细追溯历史，我们会发现，1950 年，有一位叫爱德华·琼斯（Edward Jones）的人在美联社的发文中，第一次把 19 中队空难事故的发生原因，引向了\"百慕大三角\"那片海域。</p><p><img src=\"https://p6-tt.byteimg.com/origin/pgc-image/ad7b163e7f4c448dabfb6bd740eba3bd?from=pc\" alt=\"揭秘 | 百慕大三角很神秘吗？\"></p><p><br></p><p>正是他，第一次把\"失踪\"和\"百慕大三角\"联系在了一起。他也被称为\"百慕大三角之父\"。到了 60 年代，另一个叫<strong>文森特·盖迪斯</strong>（Vincent Gaddis）的人给自己发表的文章取了一个引人入胜的标题，他就是我们现在所说的\"标题党\"，</p><p><img src=\"https://p3-tt.byteimg.com/origin/pgc-image/ac6333ef61b944918135fd0b2113c4e7?from=pc\" alt=\"揭秘 | 百慕大三角很神秘吗？\">文森特·盖迪斯</p><p>他起的标题是\"死亡百慕大三角（The Deadly Bermuda Triangle）\"，这篇文章为他赚足了眼球。他在文中没有提供可靠的数据，但却摆出了一副言之凿凿的样子。他说，这个地区海难频发，远远超过其他的海域。后来他又出了一本书《隐形的视角》（Invisible Horizons），详尽地描写了百慕大三角的神秘事件。就这样，套路成型了。挖掘过去的海难事件，加上个人的解读，最后把灾难的帽子扣在\"百慕大三角\"上，文章就可以吸引无数人的注意。百慕大三角就这样变成了\"死亡三角\"。</p><p><img src=\"https://p3-tt.byteimg.com/origin/pgc-image/bf53c93ab4dd458b8d48a05d96b42963?from=pc\" alt=\"揭秘 | 百慕大三角很神秘吗？\"></p><p><br></p><p>所以，这一切的源头还是要归结到美国海军当初那份调查报告中的\"未知因素\"四个字。19 中队的灾难事故，经过一轮轮发酵，谣言也是此起彼伏，没有停过，这都是\"未知因素\"惹出的祸。</p><p><br></p><p>关于百慕大三角很神秘的新闻报道，一直会时不时地出现在媒体上。比如 2003 年12月3日，在搜狐新闻上就有这样的一条国际要闻《美国教授揭开 20 世纪最离奇的战机集体失踪事件》，这条新闻又是搜狐援引中新网发的，而中新网又是翻译自俄罗斯的《真理报》。这条新闻说，加州大学的教授米切尔·克莱恩对百慕大的离奇失踪事件做出了新的解释。</p><p><br></p><p>他认为，地球上存在一些\"<strong>时空异区</strong>\"，一旦不小心误入这些异区的话，那么时间就会变快或者变慢，空间也会相差几千公里。他认为，19 中队一定是飞进了\"时空异区\"，才会错过了加州的海岸线，而飞到了墨西哥湾的上空。这时候，如果飞行员往西找陆地的话，只能是越飞越远，因为墨西哥湾的陆地在东北方向，最后他们油料用尽坠入海中[6]。</p><p><img src=\"https://p1-tt.byteimg.com/origin/pgc-image/c1ae71bff1dc41f99897137069e90a08?from=pc\" alt=\"揭秘 | 百慕大三角很神秘吗？\"></p><p><br></p><p><img src=\"https://p3-tt.byteimg.com/origin/pgc-image/ce3fa984c5c24e18ae212393f49559e9?from=pc\" alt=\"揭秘 | 百慕大三角很神秘吗？\"></p><p><br></p><p><strong>我希望通过我的文章，让你以后一看到这样的新闻，马上就给它一个\"呵呵</strong>\"。我检索了一下，不出所料啊，这个所谓的教授的信息根本查不到。如果你发现有一条新闻，从头到尾都没有给出可供你去查证的内容，比如给出里面提到的重要人物的准确背景信息，还有时间地点、数据来源等等。你基本上已经可以把它认定为假新闻了。</p><p><br></p><p>我们再来看另外两起比较出名的百慕大飞机失事事件，我的资料来源是 BBC 的记者汤姆·曼戈尔德做的一份调查报告[7]。</p><p><br></p><p>第一起事故发生在 1948 年 1 月 30日。</p><p><br></p><blockquote class=\"ql-align-justify\">一架英国南美航空公司（BSAA）的客机从伦敦飞往百慕大的途中消失了，基本没有留下任何飞机的残骸。当时的官方调查报告上说：这是我们遇过的最令人困惑的问题，中间发生的一切可能永远都无法获知了，这将成为一个未解之谜。但是，事实上是南美航空公司的安全记录惨不忍睹。三年里有 11 起严重事故，造成 5 架飞机失踪，73 名乘客和 22 名机组人员遇难。我想听到这里，你对它的搪塞之词也就不会意外了。</blockquote><p><br></p><p>调查记者细究了当时的调查报告，有了新的发现。</p><p><br></p><blockquote class=\"ql-align-justify\">这架客机在到达中途加油站之前就遇到了问题。这架客机的加热器在航线中失灵了，其中的一个指南针也发生了错误。而当时为了暖和些，飞行员决定在 600 米的低空飞行，这会大大增加燃料的燃烧速度。记者由此推断，导致客机坠毁的原因是机械故障，或者燃料提前耗尽，又或者两者兼而有之。</blockquote><p><br></p><p>第二起事故发生在一年后，同样的航空公司，同样的机型。</p><p><br></p><blockquote class=\"ql-align-justify\">这架客机在从百慕大离开一小时后，飞行员例行报告了他的位置，然后就在 5500 米的高空失踪了。根据专家的说法，这是一场突如其来的灾难。和第一起事故一样，没有残骸、碎片和尸体。不像燃料提前耗尽，不是天气突然变化，飞行员操作失误的可能也被排除。</blockquote><p><br></p><p>看上去很像一起神秘的失踪事件，不过，仔细调查后就发现，</p><p><br></p><blockquote class=\"ql-align-justify\">这架飞机的设计有严重缺陷。机舱加热器被安装在了副驾驶座的地板下方，如果液压蒸汽发生了泄漏，就会导致爆炸，所以飞机才会突然从雷达上消失。</blockquote><p><br></p><p>在 1975 年出版的《百慕大三角秘密已解》一书中，作者库舍挨个调查了神秘现象鼓吹者们提到的全部 50 多起事件，查阅了各方的调查报告，得出了 6 条到现在也没有过时的结论[8]。</p><p>他说：</p><p><br></p><ol><li>按比例来说，该地区失踪的船只和飞机的数量并不比其他海区多</li><li>作为一个经常受到热带气旋影响的地区，它发生的失踪事件的数量是合理的，也并不神秘</li><li>很多作家都没有还原事实真相，那就是失踪事件发生时，气象条件很糟糕</li><li>失踪的数量被人为夸大了，比如一艘船失踪时会被记录下来，平安返回港口后，总的失踪数量却不会减少</li><li>一些失踪事件是谎报的，事实上从未发生。</li><li>围绕百慕大三角之谜的炒作一直存在，作家会使用错误的推理制造耸人听闻的故事。</li></ol><p><br></p><p>其实，有一份证据足以说明百慕大不神秘，垄断英国海洋保险的伦敦劳埃德保险公司声明[9]：</p><p><br></p><blockquote class=\"ql-align-justify\">根据劳埃德记录，自 1955 年以来，在世界范围内有 428 艘船只被报失踪，而我们没有发现任何证据，支持\"百慕大三角比其他地方有更多失踪案\"的说法。</blockquote><p><br></p><p>也就是说，途经百慕大的船只的保险费并不会额外提高。</p><p><br></p><p>2013 年，世界自然基金会确定了世界上十个最危险的航运水域，其中并没有百慕大三角。</p><p><br></p><p><strong>我想，百慕大并不神秘的证据已经足够多了，真相早就被还原。关键在于你更愿意相信证据还是传说。</strong></p><p><br></p><p>比如，自从科学家们创造了暗物质一词后，很快就出来一些神秘主义者，他们把百慕大三角的神秘归因到暗物质上。像这样用科学术语来编造的谎言，在生活中实在是太多了，人们也很容易被这些包装着科学术语的谣言所骗。<strong>不被谣言欺骗的方法除了拥有科学精神外，更直接的方法，当然就是学习这些科学术语的真正含义。</strong>虽然暗物质与百慕大三角没有半毛钱关系，但是，它的确是真正的宇宙未解之谜。怎么回事呢？</p>', '2020-11-20 10:33:45', '2020-11-20 18:32:22', '2020-11-20 16:02:10', 0, 1, 297, 175);

-- ----------------------------
-- Table structure for t_class
-- ----------------------------
DROP TABLE IF EXISTS `t_class`;
CREATE TABLE `t_class`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `class_teacher_id` int(11) NULL DEFAULT NULL,
  `teacher_id` int(11) NULL DEFAULT NULL,
  `state` int(1) NULL DEFAULT NULL,
  `category_id` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_qpro2pfqoxy2b8xlbl267vr7s`(`name`) USING BTREE,
  INDEX `FKhmwieyxejt54w7wh48nwi4jj`(`class_teacher_id`) USING BTREE,
  INDEX `FKre1o5gkmx16jyhmv5de2ilhde`(`teacher_id`) USING BTREE,
  CONSTRAINT `FK_t_class` FOREIGN KEY (`teacher_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_t_class1` FOREIGN KEY (`class_teacher_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_class
-- ----------------------------
INSERT INTO `t_class` VALUES (39, '2020-11-03 17:29:02', '2020', '2020-11-11 17:24:08', 136, 137, 0, 183);
INSERT INTO `t_class` VALUES (44, '2020-11-13 11:07:13', '周末班级', '2020-11-17 18:03:24', 171, 180, 0, 184);

-- ----------------------------
-- Table structure for t_class_students
-- ----------------------------
DROP TABLE IF EXISTS `t_class_students`;
CREATE TABLE `t_class_students`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `class_id` int(20) NULL DEFAULT NULL,
  `student_id` int(20) NULL DEFAULT NULL,
  `created` datetime(0) NULL DEFAULT NULL,
  `state` int(10) NULL DEFAULT NULL,
  `updated` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `NewIndex1`(`student_id`) USING BTREE,
  INDEX `FK_class_students`(`class_id`) USING BTREE,
  CONSTRAINT `FK_class_student` FOREIGN KEY (`student_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_class_students` FOREIGN KEY (`class_id`) REFERENCES `t_class` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 133 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_class_students
-- ----------------------------
INSERT INTO `t_class_students` VALUES (106, 39, 139, '2020-11-09 17:52:50', 0, '2020-11-09 17:52:50');
INSERT INTO `t_class_students` VALUES (108, 39, 152, '2020-11-10 09:59:22', 0, '2020-11-10 09:59:22');
INSERT INTO `t_class_students` VALUES (119, 39, 165, '2020-11-12 09:59:50', 0, '2020-11-12 09:59:50');
INSERT INTO `t_class_students` VALUES (122, 39, 172, '2020-11-12 17:46:49', 0, '2020-11-12 17:46:49');
INSERT INTO `t_class_students` VALUES (125, 44, 173, '2020-11-13 11:30:14', 0, '2020-11-13 11:30:14');
INSERT INTO `t_class_students` VALUES (126, 44, 181, '2020-11-17 18:07:56', 0, '2020-11-17 18:07:56');
INSERT INTO `t_class_students` VALUES (131, 39, 189, '2020-11-19 11:50:28', 0, '2020-11-19 11:50:28');
INSERT INTO `t_class_students` VALUES (132, 39, 190, '2020-11-19 11:50:28', 0, '2020-11-19 11:50:28');

-- ----------------------------
-- Table structure for t_course
-- ----------------------------
DROP TABLE IF EXISTS `t_course`;
CREATE TABLE `t_course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `course_time` datetime(0) NULL DEFAULT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `vip_price` int(11) NULL DEFAULT NULL,
  `state` tinyint(4) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `class_id` int(11) NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `poster_id` int(11) NULL DEFAULT NULL,
  `user_price` int(11) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `course_categorize` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recommend` int(1) NULL DEFAULT NULL COMMENT '是否推荐',
  `exist_vedio` int(11) NULL DEFAULT NULL COMMENT '视频上传状态',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKgc6a71wrlv955ym8q8d6kd7rp`(`class_id`) USING BTREE,
  INDEX `FKa92h02kepqc9m7kuqk383iyjk`(`poster_id`) USING BTREE,
  CONSTRAINT `FK_t_course` FOREIGN KEY (`class_id`) REFERENCES `t_class` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKa92h02kepqc9m7kuqk383iyjk` FOREIGN KEY (`poster_id`) REFERENCES `sys_resource` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 141 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_course
-- ----------------------------
INSERT INTO `t_course` VALUES (21, '奥术大师', NULL, 0, 0, 0, 1, NULL, '', 44, 0, '2020-08-03 16:50:48', NULL, NULL, NULL);
INSERT INTO `t_course` VALUES (23, '0', NULL, 0, 0, 0, 1, NULL, '', 44, 0, '2020-08-03 16:50:48', NULL, NULL, NULL);
INSERT INTO `t_course` VALUES (24, '', NULL, 0, 0, 1, 1, NULL, '', 44, 0, '2020-08-03 16:50:48', NULL, NULL, NULL);
INSERT INTO `t_course` VALUES (25, '哈哈哈', NULL, 0, 0, 1, 1, NULL, '', 44, 0, '2020-08-03 16:50:48', NULL, NULL, NULL);
INSERT INTO `t_course` VALUES (28, '12321321', NULL, 0, 0, 1, 1, NULL, '', 46, 0, '2020-08-03 16:50:48', NULL, NULL, NULL);
INSERT INTO `t_course` VALUES (29, '2132', NULL, 0, 0, 0, 1, NULL, '', 46, 0, '2020-08-03 16:50:48', NULL, NULL, NULL);
INSERT INTO `t_course` VALUES (30, 'java', NULL, 0, 0, 0, 1, NULL, '', 46, 0, '2020-08-03 16:50:48', NULL, NULL, NULL);
INSERT INTO `t_course` VALUES (108, '语文', '2020-11-09 00:00:00', 0, 0, 0, 1, 39, '111', 297, 0, NULL, NULL, NULL, NULL);
INSERT INTO `t_course` VALUES (109, '人工智能OpenCV课程（10月30日）', '2020-11-23 16:09:31', 1200000, 0, 0, 0, NULL, '人工智能OpenCV课程', 297, 1000000, NULL, '人工智能21期班课程', 0, 1);
INSERT INTO `t_course` VALUES (110, '人工智能Numpy课程（10月27日）', '2020-11-23 16:07:43', 1200000, 0, 0, 0, NULL, '人工智能Numpy课程', 297, 1000000, NULL, '人工智能21期班课程', 1, 1);
INSERT INTO `t_course` VALUES (111, '人工智能概率统计课程（10月23日）', '2020-11-23 16:07:19', 1200000, 0, 0, 0, NULL, '人工智能概率统计课程', 297, 1000000, NULL, '人工智能21期班课程', 0, 1);
INSERT INTO `t_course` VALUES (112, '第二阶段线性代数课程（10月20日）', '2020-11-23 16:06:52', 1200000, 0, 0, 0, NULL, '第二阶段线性代数', 297, 1000000, NULL, '人工智能21期班课程', 0, 1);
INSERT INTO `t_course` VALUES (113, '化学', '2020-11-12 00:00:00', 0, 0, 0, 1, 39, '', 297, 0, NULL, NULL, NULL, NULL);
INSERT INTO `t_course` VALUES (115, '第二阶段人工智能数学基础课程（10月13日）', '2020-11-23 16:06:32', 1200000, 0, 0, 0, NULL, '第二阶段人工智能数学基础课程', 297, 1000000, NULL, '人工智能21期班课程', 0, 1);
INSERT INTO `t_course` VALUES (118, '第一阶段人工智能的应用场景（9月27日）', '2020-11-23 16:06:00', 1200000, 0, 0, 0, NULL, '第一阶段人工智能的应用场景', 297, 1000000, NULL, '人工智能21期班课程', 0, 1);
INSERT INTO `t_course` VALUES (119, '第一阶段人工智能产品的研发流程（9月22日）', '2020-11-23 16:05:36', 1200000, 0, 0, 0, NULL, '第一阶段人工智能产品的研发流程', 297, 1000000, NULL, '人工智能21期班课程', 0, 1);
INSERT INTO `t_course` VALUES (120, '第一阶段人工智能普及和介绍（9月17日）', '2020-11-23 15:09:46', 1200000, 0, 0, 0, NULL, '第一阶段人工智能普及和介绍（9月15日）', 297, 1000000, NULL, '人工智能21期班课程', 0, 1);
INSERT INTO `t_course` VALUES (124, '第一阶段开班课程（9月15日）', '2020-11-23 15:09:32', 1200000, 0, 0, 0, NULL, '第一阶段开班课程与AI普及课程', 297, 1000000, NULL, '人工智能21期班课程', 0, 1);
INSERT INTO `t_course` VALUES (125, 'Python基础课程（第三部分）', '2020-11-24 16:09:55', 0, 0, 0, 0, NULL, 'Python基础课程第三节', 315, 0, NULL, '猎维教育预习（前置）基础课程', 0, 1);
INSERT INTO `t_course` VALUES (126, 'Python基础课程（第二部分）', '2020-11-24 14:48:39', 0, 0, 0, 0, NULL, 'Python基础课程第二节', 313, 0, NULL, '猎维教育预习（前置）基础课程', 0, 1);
INSERT INTO `t_course` VALUES (129, 'python基础', '2020-10-26 00:00:00', 0, 0, 0, 1, 44, '', 242, 0, NULL, NULL, NULL, 1);
INSERT INTO `t_course` VALUES (131, 'Python基础课程（第一部分）', '2020-11-24 09:28:10', 0, 0, 0, 0, NULL, 'Python基础课程第一部分', 311, 0, NULL, '猎维教育预习（前置）基础课程', 0, 1);
INSERT INTO `t_course` VALUES (132, '生物', '2020-11-18 00:00:00', 0, 0, 1, 1, 39, '', 120, 0, NULL, NULL, NULL, 1);
INSERT INTO `t_course` VALUES (133, 'AI人工智能开发环境搭建', '2020-11-19 17:36:32', 0, 0, 0, 0, NULL, 'AI人工智能开发环境搭建', 310, 0, NULL, '猎维教育预习（前置）基础课程', 0, 1);
INSERT INTO `t_course` VALUES (134, 'kllkjkl', '2020-11-03 00:00:00', 0, 0, 1, 1, 39, '', 120, 0, NULL, NULL, NULL, 1);
INSERT INTO `t_course` VALUES (136, '人工智能机器学习课程（11月17日）', '2020-11-23 16:52:31', 1200000, 0, 0, 0, NULL, '人工智能机器学习课程', 297, 1000000, NULL, '人工智能21期班课程', 0, 1);
INSERT INTO `t_course` VALUES (137, 'MTCNN进阶课程', '2020-11-23 18:30:04', 69900, 0, 0, 0, NULL, 'MTCNN进阶课程', 479, 49900, NULL, '深度学习课程', 0, 1);
INSERT INTO `t_course` VALUES (138, 'Python基础课程（第四部分）', '2020-11-24 16:11:12', 0, 0, 0, 0, NULL, 'Python基础课程（第四部分）', 297, 0, NULL, '猎维教育预习（前置）基础课程', 0, 1);
INSERT INTO `t_course` VALUES (139, 'Python基础课程（第五部分）', '2020-11-24 16:38:24', 0, 0, 0, 0, NULL, 'Python基础课程（第四部分）', 297, 0, NULL, '猎维教育预习（前置）基础课程', 0, 1);
INSERT INTO `t_course` VALUES (140, 'Python基础课程（第六部分）', '2020-11-24 17:25:37', 0, 0, 0, 0, NULL, 'Python基础课程（第六部分）', 297, 0, NULL, '猎维教育预习（前置）基础课程', 0, 1);

-- ----------------------------
-- Table structure for t_course__video
-- ----------------------------
DROP TABLE IF EXISTS `t_course__video`;
CREATE TABLE `t_course__video`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `priority` int(11) NULL DEFAULT NULL,
  `state` tinyint(4) NULL DEFAULT NULL,
  `course_id` int(11) NULL DEFAULT NULL,
  `video_id` int(11) NULL DEFAULT NULL,
  `creator` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `poster_id` int(11) NULL DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` tinyint(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK9lke46pwh18br6ccdmnct65nd`(`course_id`) USING BTREE,
  INDEX `FK8d6qxui7dycht85eq0q4y36qn`(`video_id`) USING BTREE,
  INDEX `FK_t_course__video2`(`poster_id`) USING BTREE,
  CONSTRAINT `FK_t_course__video` FOREIGN KEY (`course_id`) REFERENCES `t_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_t_course__video1` FOREIGN KEY (`video_id`) REFERENCES `sys_resource` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_t_course__video2` FOREIGN KEY (`poster_id`) REFERENCES `sys_resource` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 358 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_course__video
-- ----------------------------
INSERT INTO `t_course__video` VALUES (14, 14, 0, 21, 41, '普通教师', NULL, 36, NULL, 0);
INSERT INTO `t_course__video` VALUES (21, 16, 0, 21, 22, '普通教师', '2020-06-12 15:43:21', 36, NULL, 0);
INSERT INTO `t_course__video` VALUES (171, 27, 0, 113, 184, 'admin', '2020-11-10 11:21:09', 146, '1 (41).mp4', 0);
INSERT INTO `t_course__video` VALUES (190, 41, 0, 113, 235, 'admin', '2020-11-13 14:16:03', 148, '请回答1988第13集-蓝光1080P.mp4', 0);
INSERT INTO `t_course__video` VALUES (191, 42, 0, 108, 239, 'admin', '2020-11-16 09:42:05', 148, '1 (25).mp4', 0);
INSERT INTO `t_course__video` VALUES (197, 48, 0, 129, 19, 'admin', '2020-11-17 18:03:59', 148, 'gan图像分类.mp4', 0);
INSERT INTO `t_course__video` VALUES (198, 49, 0, 129, 22, 'admin', '2020-11-17 18:04:04', 148, '线性回归1.mp4', 0);
INSERT INTO `t_course__video` VALUES (199, 50, 0, 129, 243, 'admin', '2020-11-17 18:07:32', 148, 'Kazam_screencast_00000（复件）.mp4', 0);
INSERT INTO `t_course__video` VALUES (204, 54, 0, 132, 231, '测试班主任', '2020-11-18 16:55:32', 148, '19期20200922_GAN (4).mp4', 0);
INSERT INTO `t_course__video` VALUES (209, 58, 0, 132, 22, 'admin', '2020-11-19 11:37:18', 148, '线性回归1.mp4', 0);
INSERT INTO `t_course__video` VALUES (210, 59, 0, 134, 20, 'admin', '2020-11-19 11:38:03', 148, 'logistic分类.mp4', 0);
INSERT INTO `t_course__video` VALUES (211, 60, 0, 132, 283, 'admin', '2020-11-19 11:48:40', 148, '2 (40).mp4', 0);
INSERT INTO `t_course__video` VALUES (212, 61, 0, 132, 43, 'admin', '2020-11-19 11:48:52', 148, '20190821_状态提升.mp4', 0);
INSERT INTO `t_course__video` VALUES (216, 65, 0, 124, 390, 'admin', '2020-11-20 18:57:43', 299, '20200915第一节.mp4', 0);
INSERT INTO `t_course__video` VALUES (217, 66, 0, 124, 391, 'admin', '2020-11-20 19:03:02', 299, '20200915第二节.mp4', 0);
INSERT INTO `t_course__video` VALUES (218, 67, 0, 124, 392, 'admin', '2020-11-20 19:07:59', 299, '20200915第三节.mp4', 0);
INSERT INTO `t_course__video` VALUES (219, 68, 0, 124, 393, 'admin', '2020-11-20 19:10:24', 299, '20200915第四节.mp4', 0);
INSERT INTO `t_course__video` VALUES (220, 69, 0, 120, 394, 'admin', '2020-11-20 19:40:06', 299, '20200917第一节.mp4', 0);
INSERT INTO `t_course__video` VALUES (221, 70, 0, 119, 395, 'admin', '2020-11-23 10:45:42', 299, '20200922第一节.mp4', 0);
INSERT INTO `t_course__video` VALUES (222, 71, 0, 119, 396, 'admin', '2020-11-23 10:55:45', 299, '20200922第二节.mp4', 0);
INSERT INTO `t_course__video` VALUES (223, 72, 0, 119, 397, 'admin', '2020-11-23 11:02:44', 299, '20200922第三节.mp4', 0);
INSERT INTO `t_course__video` VALUES (224, 73, 0, 119, 398, 'admin', '2020-11-23 11:05:57', 299, '20200922第四节.mp4', 0);
INSERT INTO `t_course__video` VALUES (226, 74, 0, 118, 400, 'admin', '2020-11-23 11:10:26', 299, '20200927第一节.mp4', 0);
INSERT INTO `t_course__video` VALUES (227, 75, 0, 118, 401, 'admin', '2020-11-23 11:13:28', 299, '20200927第二节.mp4', 0);
INSERT INTO `t_course__video` VALUES (228, 76, 0, 118, 402, 'admin', '2020-11-23 11:15:04', 299, '20200927第三节.mp4', 0);
INSERT INTO `t_course__video` VALUES (229, 77, 0, 118, 403, 'admin', '2020-11-23 11:19:19', 299, '20200927第四节.mp4', 0);
INSERT INTO `t_course__video` VALUES (230, 78, 0, 115, 404, 'admin', '2020-11-23 11:24:58', 299, '20201013数学第一节.mp4', 0);
INSERT INTO `t_course__video` VALUES (231, 79, 0, 115, 405, 'admin', '2020-11-23 11:27:02', 299, '20201013数学第二节.mp4', 0);
INSERT INTO `t_course__video` VALUES (232, 80, 0, 115, 406, 'admin', '2020-11-23 11:28:31', 299, '20201013第三节.mp4', 0);
INSERT INTO `t_course__video` VALUES (233, 81, 0, 115, 407, 'admin', '2020-11-23 11:29:45', 299, '20201013第四节.mp4', 0);
INSERT INTO `t_course__video` VALUES (234, 82, 0, 115, 408, 'admin', '2020-11-23 11:31:30', 299, '20201015第五节.mp4', 0);
INSERT INTO `t_course__video` VALUES (235, 83, 0, 115, 409, 'admin', '2020-11-23 11:40:55', 299, '20201015第六节.mp4', 0);
INSERT INTO `t_course__video` VALUES (236, 84, 0, 115, 410, 'admin', '2020-11-23 11:43:48', 299, '20201015第七节.mp4', 0);
INSERT INTO `t_course__video` VALUES (237, 85, 0, 115, 411, 'admin', '2020-11-23 11:45:05', 299, '20201015第八节.mp4', 0);
INSERT INTO `t_course__video` VALUES (238, 86, 0, 112, 412, 'admin', '2020-11-23 11:52:38', 299, '20201020第一节.mp4', 0);
INSERT INTO `t_course__video` VALUES (239, 87, 0, 112, 413, 'admin', '2020-11-23 13:42:30', 299, '20201020第二节.mp4', 0);
INSERT INTO `t_course__video` VALUES (240, 88, 0, 112, 414, 'admin', '2020-11-23 13:43:19', 299, '20201020第三节.mp4', 0);
INSERT INTO `t_course__video` VALUES (241, 89, 0, 112, 415, 'admin', '2020-11-23 13:47:25', 299, '20201020第四节.mp4', 0);
INSERT INTO `t_course__video` VALUES (242, 90, 0, 111, 416, 'admin', '2020-11-23 13:59:03', 299, '20201023第一节.mp4', 0);
INSERT INTO `t_course__video` VALUES (243, 91, 0, 111, 417, 'admin', '2020-11-23 14:00:11', 299, '20201023第二节.mp4', 0);
INSERT INTO `t_course__video` VALUES (244, 92, 0, 111, 418, 'admin', '2020-11-23 14:01:26', 299, '20201023第三节.mp4', 0);
INSERT INTO `t_course__video` VALUES (245, 93, 0, 111, 419, 'admin', '2020-11-23 14:02:15', 299, '20201023第四节.mp4', 0);
INSERT INTO `t_course__video` VALUES (246, 94, 0, 111, 420, 'admin', '2020-11-23 14:03:56', 299, '20201023第五节.mp4', 0);
INSERT INTO `t_course__video` VALUES (249, 95, 0, 110, 423, 'admin', '2020-11-23 14:58:27', 299, '20201027第一节.mp4', 0);
INSERT INTO `t_course__video` VALUES (250, 96, 0, 110, 424, 'admin', '2020-11-23 14:59:44', 299, '20201027第二节.mp4', 0);
INSERT INTO `t_course__video` VALUES (251, 97, 0, 110, 425, 'admin', '2020-11-23 15:00:50', 299, '20201027第三节.mp4', 0);
INSERT INTO `t_course__video` VALUES (252, 98, 0, 110, 426, 'admin', '2020-11-23 15:02:14', 299, '20201027第四节.mp4', 0);
INSERT INTO `t_course__video` VALUES (253, 99, 0, 110, 427, 'admin', '2020-11-23 15:03:07', 299, '20201027第五节.mp4', 0);
INSERT INTO `t_course__video` VALUES (254, 100, 0, 120, 428, 'admin', '2020-11-23 15:21:29', 299, '20200917第二节.mp4', 0);
INSERT INTO `t_course__video` VALUES (255, 101, 0, 120, 429, 'admin', '2020-11-23 15:39:50', 299, '20200917第三节.mp4', 0);
INSERT INTO `t_course__video` VALUES (256, 102, 0, 120, 430, 'admin', '2020-11-23 16:04:18', 299, '20200917第四节.mp4', 0);
INSERT INTO `t_course__video` VALUES (259, 103, 0, 109, 433, 'admin', '2020-11-23 16:14:53', 299, '20201030第一节.mp4', 0);
INSERT INTO `t_course__video` VALUES (260, 104, 0, 109, 434, 'admin', '2020-11-23 16:16:50', 299, '20201030第二节.mp4', 0);
INSERT INTO `t_course__video` VALUES (261, 105, 0, 109, 435, 'admin', '2020-11-23 16:18:07', 299, '20201030第三节.mp4', 0);
INSERT INTO `t_course__video` VALUES (262, 106, 0, 109, 436, 'admin', '2020-11-23 16:19:24', 299, '20201103第四节.mp4', 0);
INSERT INTO `t_course__video` VALUES (263, 107, 0, 109, 437, 'admin', '2020-11-23 16:20:42', 299, '20201103第五节.mp4', 0);
INSERT INTO `t_course__video` VALUES (264, 108, 0, 109, 438, 'admin', '2020-11-23 16:22:16', 299, '20201103第六节.mp4', 0);
INSERT INTO `t_course__video` VALUES (265, 109, 0, 109, 439, 'admin', '2020-11-23 16:24:32', 299, '20201103第七节.mp4', 0);
INSERT INTO `t_course__video` VALUES (266, 110, 0, 109, 440, 'admin', '2020-11-23 16:26:48', 299, '20201106第八节.mp4', 0);
INSERT INTO `t_course__video` VALUES (267, 111, 0, 109, 441, 'admin', '2020-11-23 16:28:08', 299, '20201106第九节.mp4', 0);
INSERT INTO `t_course__video` VALUES (268, 112, 0, 109, 442, 'admin', '2020-11-23 16:31:29', 299, '20201106第十节.mp4', 0);
INSERT INTO `t_course__video` VALUES (269, 113, 0, 109, 443, 'admin', '2020-11-23 16:33:03', 299, '20201106第十一节.mp4', 0);
INSERT INTO `t_course__video` VALUES (270, 114, 0, 109, 444, 'admin', '2020-11-23 16:36:01', 299, '20201110第十二节.mp4', 0);
INSERT INTO `t_course__video` VALUES (271, 115, 0, 109, 445, 'admin', '2020-11-23 16:38:41', 299, '20201110第十三节.mp4', 0);
INSERT INTO `t_course__video` VALUES (272, 116, 0, 109, 446, 'admin', '2020-11-23 16:41:19', 299, '20201110第十四节.mp4', 0);
INSERT INTO `t_course__video` VALUES (273, 117, 0, 109, 447, 'admin', '2020-11-23 16:42:39', 299, '20201113第十五节.mp4', 0);
INSERT INTO `t_course__video` VALUES (274, 118, 0, 109, 448, 'admin', '2020-11-23 16:44:43', 299, '20201113第十六节.mp4', 0);
INSERT INTO `t_course__video` VALUES (275, 119, 0, 109, 449, 'admin', '2020-11-23 16:46:50', 299, '20201113第十七节.mp4', 0);
INSERT INTO `t_course__video` VALUES (276, 120, 0, 109, 450, 'admin', '2020-11-23 16:49:12', 299, '20201113第十八节.mp4', 0);
INSERT INTO `t_course__video` VALUES (277, 121, 0, 136, 451, 'admin', '2020-11-23 16:59:39', 299, '20201117第一节.mp4', 0);
INSERT INTO `t_course__video` VALUES (278, 122, 0, 136, 452, 'admin', '2020-11-23 17:06:56', 299, '20201117第二节.mp4', 0);
INSERT INTO `t_course__video` VALUES (279, 123, 0, 136, 453, 'admin', '2020-11-23 17:08:12', 299, '20201117第三节.mp4', 0);
INSERT INTO `t_course__video` VALUES (280, 124, 0, 136, 454, 'admin', '2020-11-23 17:10:45', 299, '20201117第四节.mp4', 0);
INSERT INTO `t_course__video` VALUES (281, 125, 0, 136, 455, 'admin', '2020-11-23 17:12:48', 299, '20201120第五节.mp4', 0);
INSERT INTO `t_course__video` VALUES (282, 126, 0, 136, 456, 'admin', '2020-11-23 17:18:58', 299, '20201120第六节.mp4', 0);
INSERT INTO `t_course__video` VALUES (283, 127, 0, 136, 457, 'admin', '2020-11-23 17:21:52', 299, '20201120第七节.mp4', 0);
INSERT INTO `t_course__video` VALUES (284, 128, 0, 136, 458, 'admin', '2020-11-23 17:23:25', 299, '20201120第八节.mp4', 0);
INSERT INTO `t_course__video` VALUES (285, 129, 0, 137, 459, 'admin', '2020-11-23 17:35:31', 299, '01_单目标检测原理分析.mp4', 0);
INSERT INTO `t_course__video` VALUES (286, 130, 0, 137, 460, 'admin', '2020-11-23 17:38:10', 299, '02_单目标检测数据处理.mp4', 0);
INSERT INTO `t_course__video` VALUES (287, 131, 0, 137, 461, 'admin', '2020-11-23 17:38:54', 299, '03_单目标检测数据集制作.mp4', 0);
INSERT INTO `t_course__video` VALUES (288, 132, 0, 137, 462, 'admin', '2020-11-23 17:39:15', 299, '04_单目标检测模型搭建.mp4', 0);
INSERT INTO `t_course__video` VALUES (289, 133, 0, 137, 463, 'admin', '2020-11-23 17:39:31', 299, '05_单目标检测模型训练原理.mp4', 0);
INSERT INTO `t_course__video` VALUES (290, 134, 0, 137, 464, 'admin', '2020-11-23 17:40:17', 299, '06_单目标检测模型训练与测试.mp4', 0);
INSERT INTO `t_course__video` VALUES (291, 135, 0, 137, 465, 'admin', '2020-11-23 17:43:20', 299, '07_多目标检测算法思路.mp4', 0);
INSERT INTO `t_course__video` VALUES (292, 136, 0, 137, 466, 'admin', '2020-11-23 17:45:08', 299, '08_多目标检测中存在的问题及解决思路.mp4', 0);
INSERT INTO `t_course__video` VALUES (293, 137, 0, 137, 467, 'admin', '2020-11-23 17:48:07', 299, '09_MTCNN架构思想解读.mp4', 0);
INSERT INTO `t_course__video` VALUES (294, 138, 0, 137, 468, 'admin', '2020-11-23 17:50:11', 299, '10_MTCNN网络参数解读.mp4', 0);
INSERT INTO `t_course__video` VALUES (295, 139, 0, 137, 469, 'admin', '2020-11-23 17:52:17', 299, '11_MTCNN的反算过程.mp4', 0);
INSERT INTO `t_course__video` VALUES (296, 140, 0, 137, 470, 'admin', '2020-11-23 17:53:49', 299, '12_使用NMS解决多框问题.mp4', 0);
INSERT INTO `t_course__video` VALUES (297, 141, 0, 137, 471, 'admin', '2020-11-23 17:56:05', 299, '13_MTCNN的侦测过程.mp4', 0);
INSERT INTO `t_course__video` VALUES (298, 142, 0, 137, 472, 'admin', '2020-11-23 17:58:21', 299, '14_MTCNN训练数据解读.mp4', 0);
INSERT INTO `t_course__video` VALUES (299, 143, 0, 137, 473, 'admin', '2020-11-23 17:59:31', 299, '15_代码实现IOU.mp4', 0);
INSERT INTO `t_course__video` VALUES (300, 144, 0, 137, 474, 'admin', '2020-11-23 17:59:58', 299, '16_代码实现NMS.mp4', 0);
INSERT INTO `t_course__video` VALUES (301, 145, 0, 137, 475, 'admin', '2020-11-23 18:01:24', 299, '17_CelebA数据观察.mp4', 0);
INSERT INTO `t_course__video` VALUES (302, 146, 0, 137, 476, 'admin', '2020-11-23 18:03:39', 299, '18_人脸侦测数据集制作.mp4', 0);
INSERT INTO `t_course__video` VALUES (303, 147, 0, 137, 477, 'admin', '2020-11-23 18:05:08', 299, '19_MTCNN网络训练过程.mp4', 0);
INSERT INTO `t_course__video` VALUES (304, 148, 0, 137, 478, 'admin', '2020-11-23 18:07:23', 299, '20_MTCNN网络侦测过程.mp4', 0);
INSERT INTO `t_course__video` VALUES (305, 149, 0, 133, 480, 'admin', '2020-11-24 09:09:58', 299, '环境搭建.mp4', 0);
INSERT INTO `t_course__video` VALUES (306, 150, 0, 131, 481, 'admin', '2020-11-24 09:12:03', 299, 'PYthon前置课（一）.mp4', 0);
INSERT INTO `t_course__video` VALUES (307, 151, 0, 131, 482, 'admin', '2020-11-24 09:15:26', 299, 'PYthon前置课（二）.mp4', 0);
INSERT INTO `t_course__video` VALUES (308, 152, 0, 131, 483, 'admin', '2020-11-24 09:17:59', 299, 'PYthon前置课（三）.mp4', 0);
INSERT INTO `t_course__video` VALUES (309, 153, 0, 131, 484, 'admin', '2020-11-24 09:20:14', 299, 'PYthon前置课（四）.mp4', 0);
INSERT INTO `t_course__video` VALUES (310, 154, 0, 131, 485, 'admin', '2020-11-24 09:23:00', 299, 'PYthon前置课（五）.mp4', 0);
INSERT INTO `t_course__video` VALUES (311, 155, 0, 131, 486, 'admin', '2020-11-24 09:24:56', 299, 'PYthon前置课（六）.mp4', 0);
INSERT INTO `t_course__video` VALUES (312, 157, 0, 126, 487, 'admin', '2020-11-24 09:33:22', 299, 'PYthon前置课（八）.mp4', 0);
INSERT INTO `t_course__video` VALUES (313, 158, 0, 126, 488, 'admin', '2020-11-24 09:36:21', 299, 'PYthon前置课（九）.mp4', 0);
INSERT INTO `t_course__video` VALUES (314, 156, 0, 126, 489, 'admin', '2020-11-24 09:38:57', 299, 'PYthon前置课（七）.mp4', 0);
INSERT INTO `t_course__video` VALUES (315, 159, 0, 126, 490, 'admin', '2020-11-24 09:41:30', 299, 'PYthon前置课（十）.mp4', 0);
INSERT INTO `t_course__video` VALUES (316, 160, 0, 126, 491, 'admin', '2020-11-24 10:25:35', 299, 'PYthon前置课（十一）.mp4', 0);
INSERT INTO `t_course__video` VALUES (317, 161, 0, 126, 492, 'admin', '2020-11-24 10:27:52', 299, 'PYthon前置课（十二）.mp4', 0);
INSERT INTO `t_course__video` VALUES (318, 162, 0, 126, 493, 'admin', '2020-11-24 10:38:23', 299, 'PYthon前置课（十三）.mp4', 0);
INSERT INTO `t_course__video` VALUES (319, 163, 0, 126, 494, 'admin', '2020-11-24 10:40:25', 299, 'PYthon前置课（十四）.mp4', 0);
INSERT INTO `t_course__video` VALUES (320, 164, 0, 126, 495, 'admin', '2020-11-24 10:49:08', 299, 'PYthon前置课（十五）.mp4', 0);
INSERT INTO `t_course__video` VALUES (321, 165, 0, 126, 496, 'admin', '2020-11-24 10:51:05', 299, 'PYthon前置课（十六）.mp4', 0);
INSERT INTO `t_course__video` VALUES (322, 166, 0, 125, 497, 'admin', '2020-11-24 14:53:33', 299, 'PYthon前置课（十七）.mp4', 0);
INSERT INTO `t_course__video` VALUES (323, 167, 0, 125, 498, 'admin', '2020-11-24 15:01:44', 299, 'PYthon前置课（十八）.mp4', 0);
INSERT INTO `t_course__video` VALUES (324, 168, 0, 125, 499, 'admin', '2020-11-24 15:06:02', 299, 'PYthon前置课（十九）.mp4', 0);
INSERT INTO `t_course__video` VALUES (325, 169, 0, 125, 500, 'admin', '2020-11-24 15:09:35', 299, 'PYthon前置课（二十）.mp4', 0);
INSERT INTO `t_course__video` VALUES (326, 170, 0, 125, 501, 'admin', '2020-11-24 15:24:14', 299, 'PYthon前置课（二十一）.mp4', 0);
INSERT INTO `t_course__video` VALUES (327, 171, 0, 125, 502, 'admin', '2020-11-24 15:32:28', 299, 'PYthon前置课（二十二）.mp4', 0);
INSERT INTO `t_course__video` VALUES (328, 172, 0, 125, 503, 'admin', '2020-11-24 16:09:31', 299, 'PYthon前置课（二十三）.mp4', 0);
INSERT INTO `t_course__video` VALUES (329, 173, 0, 138, 504, 'admin', '2020-11-24 16:14:24', 299, 'PYthon前置课（二十四）.mp4', 0);
INSERT INTO `t_course__video` VALUES (330, 174, 0, 138, 505, 'admin', '2020-11-24 16:18:30', 299, 'PYthon前置课（二十五）.mp4', 0);
INSERT INTO `t_course__video` VALUES (331, 175, 0, 138, 506, 'admin', '2020-11-24 16:20:20', 299, 'PYthon前置课（二十六）.mp4', 0);
INSERT INTO `t_course__video` VALUES (332, 176, 0, 138, 507, 'admin', '2020-11-24 16:23:31', 299, 'PYthon前置课（二十七）.mp4', 0);
INSERT INTO `t_course__video` VALUES (333, 177, 0, 138, 508, 'admin', '2020-11-24 16:25:57', 299, 'PYthon前置课（二十八）.mp4', 0);
INSERT INTO `t_course__video` VALUES (334, 178, 0, 138, 509, 'admin', '2020-11-24 16:28:36', 299, 'PYthon前置课（二十九）.mp4', 0);
INSERT INTO `t_course__video` VALUES (335, 179, 0, 138, 510, 'admin', '2020-11-24 16:31:28', 299, 'PYthon前置课（三十）.mp4', 0);
INSERT INTO `t_course__video` VALUES (336, 180, 0, 138, 511, 'admin', '2020-11-24 16:35:10', 299, 'PYthon前置课（三十一）.mp4', 0);
INSERT INTO `t_course__video` VALUES (337, 181, 0, 138, 512, 'admin', '2020-11-24 16:36:34', 299, 'PYthon前置课（三十二）.mp4', 0);
INSERT INTO `t_course__video` VALUES (338, 182, 0, 139, 513, 'admin', '2020-11-24 16:41:30', 299, 'PYthon前置课（三十三）.mp4', 0);
INSERT INTO `t_course__video` VALUES (339, 183, 0, 139, 514, 'admin', '2020-11-24 16:44:35', 299, 'PYthon前置课（三十四）.mp4', 0);
INSERT INTO `t_course__video` VALUES (340, 184, 0, 139, 515, 'admin', '2020-11-24 16:48:54', 299, 'PYthon前置课（三十五）.mp4', 0);
INSERT INTO `t_course__video` VALUES (341, 185, 0, 139, 516, 'admin', '2020-11-24 16:51:10', 299, 'PYthon前置课（三十六）.mp4', 0);
INSERT INTO `t_course__video` VALUES (342, 186, 0, 139, 517, 'admin', '2020-11-24 16:53:33', 299, 'PYthon前置课（三十七）.mp4', 0);
INSERT INTO `t_course__video` VALUES (343, 187, 0, 139, 518, 'admin', '2020-11-24 16:56:39', 299, 'PYthon前置课（三十八）.mp4', 0);
INSERT INTO `t_course__video` VALUES (344, 188, 0, 139, 519, 'admin', '2020-11-24 17:09:45', 299, 'PYthon前置课（三十九）.mp4', 0);
INSERT INTO `t_course__video` VALUES (345, 189, 0, 139, 520, 'admin', '2020-11-24 17:15:29', 299, 'PYthon前置课（四十）.mp4', 0);
INSERT INTO `t_course__video` VALUES (346, 190, 0, 139, 521, 'admin', '2020-11-24 17:18:12', 299, 'PYthon前置课（四十一）.mp4', 0);
INSERT INTO `t_course__video` VALUES (347, 191, 0, 139, 522, 'admin', '2020-11-24 17:21:19', 299, 'PYthon前置课（四十二）.mp4', 0);
INSERT INTO `t_course__video` VALUES (348, 192, 0, 140, 523, 'admin', '2020-11-24 17:28:58', 299, 'PYthon前置课（四十三）.mp4', 0);
INSERT INTO `t_course__video` VALUES (349, 193, 0, 140, 524, 'admin', '2020-11-24 17:31:29', 299, 'PYthon前置课（四十四）.mp4', 0);
INSERT INTO `t_course__video` VALUES (350, 194, 0, 140, 525, 'admin', '2020-11-24 17:33:53', 299, 'PYthon前置课（四十五）.mp4', 0);
INSERT INTO `t_course__video` VALUES (351, 195, 0, 140, 526, 'admin', '2020-11-24 17:41:47', 299, 'PYthon前置课（四十六）.mp4', 0);
INSERT INTO `t_course__video` VALUES (352, 196, 0, 140, 527, 'admin', '2020-11-24 17:49:08', 299, 'PYthon前置课（四十七）.mp4', 0);
INSERT INTO `t_course__video` VALUES (353, 197, 0, 140, 528, 'admin', '2020-11-24 17:52:46', 299, 'PYthon前置课（四十八）.mp4', 0);
INSERT INTO `t_course__video` VALUES (354, 198, 0, 140, 529, 'admin', '2020-11-24 17:58:32', 299, 'PYthon前置课（四十九）.mp4', 0);
INSERT INTO `t_course__video` VALUES (355, 199, 0, 140, 530, 'admin', '2020-11-24 18:01:43', 299, 'PYthon前置课（五十）.mp4', 0);
INSERT INTO `t_course__video` VALUES (356, 200, 0, 140, 531, 'admin', '2020-11-24 18:04:39', 299, 'PYthon前置课（五十一）.mp4', 0);
INSERT INTO `t_course__video` VALUES (357, 201, 0, 140, 532, 'admin', '2020-11-24 18:10:48', 299, 'PYthon前置课（五十二）.mp4', 0);

-- ----------------------------
-- Table structure for verifycode
-- ----------------------------
DROP TABLE IF EXISTS `verifycode`;
CREATE TABLE `verifycode`  (
  `phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`phone`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of verifycode
-- ----------------------------
INSERT INTO `verifycode` VALUES ('13334444444', '7Z6U');
INSERT INTO `verifycode` VALUES ('13335555555', 'JtQw');
INSERT INTO `verifycode` VALUES ('13588884444', '24CM');
INSERT INTO `verifycode` VALUES ('13588885555', 'xjxf');
INSERT INTO `verifycode` VALUES ('13666665555', 'RT2T');
INSERT INTO `verifycode` VALUES ('13699999999', '1rLg');
INSERT INTO `verifycode` VALUES ('13852554444', 'a58n');
INSERT INTO `verifycode` VALUES ('13880797448', 'scJL');
INSERT INTO `verifycode` VALUES ('15061119362', 'Sh4b');
INSERT INTO `verifycode` VALUES ('15061119363', 'mfWs');
INSERT INTO `verifycode` VALUES ('15211136013', 'j6hl');
INSERT INTO `verifycode` VALUES ('15211163016', 'W9VU');
INSERT INTO `verifycode` VALUES ('15583981581', 'ucY2');
INSERT INTO `verifycode` VALUES ('17378730381', 'qqGw');
INSERT INTO `verifycode` VALUES ('17721884259', 'AwD9');
INSERT INTO `verifycode` VALUES ('18380108657', 'wGRR');
INSERT INTO `verifycode` VALUES ('18581556020', 'mGbW');
INSERT INTO `verifycode` VALUES ('18581556021', 'bWxJ');
INSERT INTO `verifycode` VALUES ('18608055875', 'uUqJ');
INSERT INTO `verifycode` VALUES ('18728190841', '95uU');
INSERT INTO `verifycode` VALUES ('18728190842', 'hJuR');
INSERT INTO `verifycode` VALUES ('18728190843', 'AQFD');
INSERT INTO `verifycode` VALUES ('18728190844', 'TNGS');
INSERT INTO `verifycode` VALUES ('18783144337', '7gh4');
INSERT INTO `verifycode` VALUES ('19000000000', 'pPFG');
INSERT INTO `verifycode` VALUES ('19000000001', 'K6hk');
INSERT INTO `verifycode` VALUES ('19100000000', 'ML8U');
INSERT INTO `verifycode` VALUES ('19100000001', 'stj3');
INSERT INTO `verifycode` VALUES ('19100000002', 'GXch');
INSERT INTO `verifycode` VALUES ('19100000003', 'YE1A');
INSERT INTO `verifycode` VALUES ('19150186953', 'ndkZ');
INSERT INTO `verifycode` VALUES ('19180636542', 'cDyY');
INSERT INTO `verifycode` VALUES ('result.user', 'jwvc');
INSERT INTO `verifycode` VALUES ('undefined', 'GHkn');

-- ----------------------------
-- Table structure for web_seo
-- ----------------------------
DROP TABLE IF EXISTS `web_seo`;
CREATE TABLE `web_seo`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `page_id` bigint(20) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_seo
-- ----------------------------
INSERT INTO `web_seo` VALUES (5, '猎维教育是猎维科技旗下人工智能高端教育品牌;专注人工智能领域人才培养,为各行业人才和企业提供机器学习✔深度学习✔强化学习✔工程部署等专业课程以及核心算法设计课程。', '人工智能,人工智能算法,人工智能学习,猎维教育', 'https://www.lieweiai.net/', '首页', 63, '猎维教育-人工智能核心算法设计学习平台', 0);
INSERT INTO `web_seo` VALUES (6, '师资团队', '师资团队', 'https://www.lieweiai.net/teachers', '师资团队', 42, '师资团队-猎维教育', 1);
INSERT INTO `web_seo` VALUES (7, '干货分享', '干货分享', 'https://www.lieweiai.net/share', '干货分享', 14, '干货分享-猎维教育', 1);
INSERT INTO `web_seo` VALUES (11, '课程中心', '课程中心', 'https://www.lieweiai.net/center', '课程中心', 1, '课程中心-猎维教育', 2);
INSERT INTO `web_seo` VALUES (16, '机器学习课程', '机器学习课程', 'https://www.lieweiai.net/center/149', '机器学习课程', 149, '机器学习课程-猎维教育', 2);
INSERT INTO `web_seo` VALUES (25, '基础知识', '基础知识', 'https://www.lieweiai.net/share/basic', '基础知识', 69, '基础知识-猎维教育', 1);
INSERT INTO `web_seo` VALUES (26, '学习技巧', '学习技巧', 'https://www.lieweiai.net/share/learn', '学习技巧', 70, '学习技巧-猎维教育', 1);
INSERT INTO `web_seo` VALUES (27, '进阶教程', '进阶教程', 'https://www.lieweiai.net/share/ac', '进阶教程', 71, '进阶教程-猎维教育', 1);
INSERT INTO `web_seo` VALUES (28, '人工智能行业资讯', '人工智能行业资讯', 'https://www.lieweiai.net/ainews', '资讯', 72, '人工智能行业资讯-猎维教育', 1);
INSERT INTO `web_seo` VALUES (34, '强化学习课程', '强化学习课程', 'https://www.lieweiai.net/center/171', '强化学习课程', 171, '强化学习课程-猎维教育', 2);
INSERT INTO `web_seo` VALUES (35, '猎维教育动态', '猎维教育动态', 'https://www.lieweiai.net/lw', '猎维教育动态', 78, '猎维教育动态', 1);
INSERT INTO `web_seo` VALUES (38, '预习（前置）基础课程', '预习（前置）基础课程', 'https://www.lieweiai.net/center/177', '预习（前置）基础课程', 177, '预习（前置）基础课程-猎维教育', 2);
INSERT INTO `web_seo` VALUES (39, '后置提升课程', '后置提升课程', 'https://www.lieweiai.net/center/142', '精品课程', 142, '后置提升课程-猎维教育', 2);
INSERT INTO `web_seo` VALUES (43, '前置基础课程', '前置基础课程', 'https://www.lieweiai.net/center/177', '前置基础课程', 81, '前置基础课程-猎维教育', 1);
INSERT INTO `web_seo` VALUES (44, '后置提升课程', '后置提升课程', 'https://www.lieweiai.net/center/142', '后置提升课程', 82, '后置提升课程-猎维教育', 1);
INSERT INTO `web_seo` VALUES (45, '深度学习课程', '深度学习课程', 'https://www.lieweiai.net/center/148', '深度学习课程', 83, '深度学习课程-猎维教育', 1);
INSERT INTO `web_seo` VALUES (46, '机器学习课程', '机器学习课程', 'https://www.lieweiai.net/center/149', '机器学习课程', 84, '机器学习课程-猎维教育', 1);
INSERT INTO `web_seo` VALUES (47, '强化学习课程', '强化学习课程', 'https://www.lieweiai.net/center/171', '强化学习课程', 85, '强化学习课程-猎维教育', 1);
INSERT INTO `web_seo` VALUES (48, '人工智能21期班课程', '人工智能21期班课程', 'https://www.lieweiai.net/center/181', '人工智能21期班课程', 181, '人工智能21期班课程-猎维教育', 2);
INSERT INTO `web_seo` VALUES (49, '21期班课程', '21期班课程', 'https://www.lieweiai.net/center/181', '21期班课程', 86, '21期班课程-猎维教育', 1);
INSERT INTO `web_seo` VALUES (50, '人工智能22期班课程', '人工智能22期班课程', 'https://www.lieweiai.net/center/182', '人工智能22期班课程', 182, '人工智能22期班课程-猎维教育', 2);
INSERT INTO `web_seo` VALUES (52, '猎维科技网校平台 - 稀有课程', '猎维科技网校平台 - 稀有课程', 'https://www.lieweiai.net/adsa', '稀有课程', 87, '猎维科技网校平台 - 稀有课程', 1);

-- ----------------------------
-- Table structure for wxstate
-- ----------------------------
DROP TABLE IF EXISTS `wxstate`;
CREATE TABLE `wxstate`  (
  `uuid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `scan_state` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `open_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `binding_state` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wxstate
-- ----------------------------
INSERT INTO `wxstate` VALUES ('100728085', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('101030424', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('101454347', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('101692269', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('101728178', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('101972394', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('102946817', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('103339992', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('103577458', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('103604829', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('104038292', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('104536790', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('104744441', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('105492000', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('105514575', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('106154031', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('106876690', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('107299335', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('107396923', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('107512918', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('107630866', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('107740791', '3', 'oEBowwGW2F4wwDc7bT2C2sdxtICs', '2');
INSERT INTO `wxstate` VALUES ('107761770', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('108189404', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('108304994', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('108378162', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('108400252', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('109012434', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('109232701', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('109551060', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('109667820', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '2');
INSERT INTO `wxstate` VALUES ('110138836', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('110418229', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('110426229', '3', 'o1NFYwIkViL0U_-ssL0jaE9zHFqk', '1');
INSERT INTO `wxstate` VALUES ('111934684', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('112506703', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('112625586', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('112920505', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('113752424', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('113769578', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '2');
INSERT INTO `wxstate` VALUES ('113800285', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('113986929', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('114018781', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('114242577', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('114386121', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('114424770', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('114610072', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('114880925', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('114892083', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('114906804', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('115280527', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('115691953', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('116061608', '3', 'o1NFYwOZJN3tnAk37oWHPuoveN7U', '2');
INSERT INTO `wxstate` VALUES ('116292890', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('116342125', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('116614397', '3', 'oEBowwE952d0U4bqYryPKB8IvWLw', '1');
INSERT INTO `wxstate` VALUES ('116754524', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('116974954', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('117563957', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('117908880', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '1');
INSERT INTO `wxstate` VALUES ('118034354', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('118206052', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('118468597', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('118721165', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('118975710', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('119431107', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('119452463', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('119624648', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('119685614', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('119780885', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('120605255', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('120651774', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('120677117', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('120855445', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('121370085', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('121454305', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('121557456', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('121644686', '3', 'o1NFYwPr1GAEFKjLnr7bBV6PoslA', '2');
INSERT INTO `wxstate` VALUES ('121792689', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('121940737', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('122112583', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('122117426', '3', 'o1NFYwIkViL0U_-ssL0jaE9zHFqk', '1');
INSERT INTO `wxstate` VALUES ('122540817', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('122619631', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('122668004', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('122963158', '3', 'oEBowwGW2F4wwDc7bT2C2sdxtICs', '2');
INSERT INTO `wxstate` VALUES ('123867502', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('124095885', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('124207201', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('124330724', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('124367191', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('124503000', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('125844104', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('126188156', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('126500716', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('127209815', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('127225835', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('127326688', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('128154944', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('128281255', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('128865771', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('128881929', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('129384183', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('129485898', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('129864053', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('129886859', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('130033699', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('130185737', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('130221101', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('130469260', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('130493687', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('131750475', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('132038174', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('132787801', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('132882595', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '2');
INSERT INTO `wxstate` VALUES ('133277662', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('133492113', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('133577578', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('134205577', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('134433496', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('134983963', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('135344430', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('135501285', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('135880027', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('136568156', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('136815951', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('137313164', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('137777861', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('137997911', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('138568617', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('138615159', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('138708555', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('138766993', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('139654487', '3', 'o1NFYwPr1GAEFKjLnr7bBV6PoslA', '2');
INSERT INTO `wxstate` VALUES ('139678110', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('139722594', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('139938350', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('140752575', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('140862535', '3', 'o1NFYwIkViL0U_-ssL0jaE9zHFqk', '2');
INSERT INTO `wxstate` VALUES ('140880164', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('140923366', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('141159772', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('141649850', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('142024982', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '2');
INSERT INTO `wxstate` VALUES ('142131219', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('142536967', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('142769812', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('143405920', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('143427550', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('143567997', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('143654230', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('143680289', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('143934988', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('144188095', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('144498821', '3', 'o1NFYwOZJN3tnAk37oWHPuoveN7U', '2');
INSERT INTO `wxstate` VALUES ('144570921', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('144572993', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('144795572', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('144803361', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('144823479', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('144910423', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('145088670', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('145292678', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('145453125', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('146574171', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('146783168', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('146857840', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('147876285', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('147995393', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('148052940', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('148663698', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('148938598', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('148954725', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('149288507', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('149387189', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('149387955', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('149622188', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('149676635', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('149678433', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('149792496', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '1');
INSERT INTO `wxstate` VALUES ('149839710', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('149988929', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('149989913', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('150165611', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('150183953', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('150472471', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('151916919', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('152210984', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('152463079', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('152710351', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('152790159', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('153116269', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('153434903', '3', 'o1NFYwPr1GAEFKjLnr7bBV6PoslA', '1');
INSERT INTO `wxstate` VALUES ('153555185', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('153962356', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('153992982', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('154900450', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('155086733', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('155219833', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('155469588', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('155585461', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('155638620', '3', 'o1NFYwCTOt68CD7yQzUdtbjsUjGQ', '2');
INSERT INTO `wxstate` VALUES ('155726646', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('155780131', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('155925157', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('155986871', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('156194019', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('156395547', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('156777017', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('157147550', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('157309027', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('157313104', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('157414592', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('157455434', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('157705942', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('157733517', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('157867070', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('158028169', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('158182762', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('158680269', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('158830124', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('159239876', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('159383649', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('159531936', '3', 'oEBowwGW2F4wwDc7bT2C2sdxtICs', '2');
INSERT INTO `wxstate` VALUES ('159627605', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('159690831', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('159830770', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('159841861', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('160181325', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('160277093', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('160708720', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('160839664', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('162265473', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('162661919', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('162800861', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('162829550', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('162853097', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('162961907', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('163109376', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('164030523', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('164121499', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('164246285', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('165037246', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('165311714', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('166092094', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('166130422', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('166139711', '3', 'o1NFYwN_Nt_rwy6Nj6KI147Q_Low', '1');
INSERT INTO `wxstate` VALUES ('166388313', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('166474306', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('166522957', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('167150870', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('167817762', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('167983275', '3', 'o1NFYwCTOt68CD7yQzUdtbjsUjGQ', '2');
INSERT INTO `wxstate` VALUES ('168260405', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('168577062', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('168603884', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('168662163', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('168766496', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('168835621', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('169833854', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('169955055', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('169964718', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('170381181', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('170801129', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('170964726', '3', 'oEBowwGW2F4wwDc7bT2C2sdxtICs', '2');
INSERT INTO `wxstate` VALUES ('171310105', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('171990641', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('172454130', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('172674122', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('173651570', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('174037123', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('174673912', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('175416993', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('175426255', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('176128210', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('176604504', '3', 'o1NFYwMNPJNn3YX5fbXkgXpg1DWY', '1');
INSERT INTO `wxstate` VALUES ('176605131', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('176694154', '3', 'o1NFYwPr1GAEFKjLnr7bBV6PoslA', '2');
INSERT INTO `wxstate` VALUES ('176740199', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('176893366', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('177191045', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('177510899', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '2');
INSERT INTO `wxstate` VALUES ('177635606', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('177656333', '3', 'o1NFYwN_Nt_rwy6Nj6KI147Q_Low', '1');
INSERT INTO `wxstate` VALUES ('178112749', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '2');
INSERT INTO `wxstate` VALUES ('178286528', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('178518323', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('178648873', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('178826820', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('179027248', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('179075366', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('179470101', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('179948342', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('179994748', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('180443214', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('181409812', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('181747980', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('182277273', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('183383254', '3', 'o1NFYwIkViL0U_-ssL0jaE9zHFqk', '1');
INSERT INTO `wxstate` VALUES ('183541337', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('183738382', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('183914579', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('184205296', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('184802904', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('184822307', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('184919878', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('185169055', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('185458859', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('185538327', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('185829853', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('186710107', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('187032485', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('187383467', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('187507537', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('187884158', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('188227834', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('188375844', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('189364630', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('189375401', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('189401805', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('189493443', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('189857692', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('190196983', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('190219946', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('190371095', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('190455901', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('190746839', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('191024517', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('191096190', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('191123550', '3', 'o1NFYwL4MFbT-PxIGVg_svwHbiuI', '2');
INSERT INTO `wxstate` VALUES ('191224139', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('191630077', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('191998034', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('192822611', '3', 'o1NFYwPr1GAEFKjLnr7bBV6PoslA', '2');
INSERT INTO `wxstate` VALUES ('192861027', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '2');
INSERT INTO `wxstate` VALUES ('193006642', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('193304773', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('193501048', '3', 'o1NFYwL4MFbT-PxIGVg_svwHbiuI', '1');
INSERT INTO `wxstate` VALUES ('193767090', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('193950226', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('194063480', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('194252681', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('194565249', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('194567500', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('194569982', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('194916381', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('195284084', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('195316514', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('196726879', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('196958289', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('197074320', '3', 'o1NFYwCTOt68CD7yQzUdtbjsUjGQ', '2');
INSERT INTO `wxstate` VALUES ('197090278', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('197303313', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('197303454', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('197406234', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('197440216', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('198522088', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('198614580', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('198764416', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('198999150', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('199786229', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('200009282', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('200090619', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('200106342', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('200482848', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('200806318', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('200867287', '3', 'oEBowwGW2F4wwDc7bT2C2sdxtICs', '2');
INSERT INTO `wxstate` VALUES ('201375673', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('201547014', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('201741359', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('201870380', '3', 'oEBowwGW2F4wwDc7bT2C2sdxtICs', '1');
INSERT INTO `wxstate` VALUES ('201896060', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('202478683', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('202572557', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('202865843', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('203259826', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('203747479', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('203778023', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('204364097', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('204820181', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('205095044', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('205676679', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('205739629', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('205792089', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('206029601', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('206157657', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('206422185', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('207786023', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('209117493', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('209262798', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('209546758', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('209810457', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('210032863', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('210520226', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('210848108', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '2');
INSERT INTO `wxstate` VALUES ('210966894', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('211182721', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('211530661', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('211745287', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('212259882', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('212459030', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('213494771', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('215560994', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('215675804', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('215697021', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('216035963', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('216123501', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('216158710', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('216312120', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('216343537', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('216675388', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('217188930', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('218110287', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('218271728', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('218566274', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('218692518', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('219036475', '3', 'o1NFYwOZJN3tnAk37oWHPuoveN7U', '1');
INSERT INTO `wxstate` VALUES ('219225812', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('219867385', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('222015748', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('222369727', '3', 'oEBowwE952d0U4bqYryPKB8IvWLw', '2');
INSERT INTO `wxstate` VALUES ('222485005', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('222530152', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('223065111', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('224296460', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('224642056', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('224786599', '3', 'o1NFYwO9w4vlM0VoTbqJk7Rfe3M8', '2');
INSERT INTO `wxstate` VALUES ('224960740', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('225004075', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('225843476', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('226028254', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('226076305', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('226320507', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('226439337', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('226977797', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('227418096', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '1');
INSERT INTO `wxstate` VALUES ('228128319', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('228718487', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('229036293', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('229353845', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('230030645', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('230287196', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('230591928', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('230627157', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('230989415', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('231195276', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('231620968', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('231904576', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('231999624', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('232008424', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('232018495', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('232126083', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('232820814', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('233011377', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('233080659', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('234864266', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('234945204', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('236047764', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('236547433', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('236886644', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('237313489', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('237719925', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('238022522', '3', 'o1NFYwL4MFbT-PxIGVg_svwHbiuI', '2');
INSERT INTO `wxstate` VALUES ('238331458', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('238966205', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('239107821', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '2');
INSERT INTO `wxstate` VALUES ('239119459', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('239192824', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('239221899', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('240113479', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('240296735', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('240660790', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('240693984', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('242195941', '3', 'oEBowwE952d0U4bqYryPKB8IvWLw', '2');
INSERT INTO `wxstate` VALUES ('242200521', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('242331166', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('243672816', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('243970121', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('244605162', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('244984959', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('246015577', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('246712423', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('246928002', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('247224277', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('247660841', '3', 'o1NFYwIkViL0U_-ssL0jaE9zHFqk', '1');
INSERT INTO `wxstate` VALUES ('247668502', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('247882454', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('248242144', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('249538314', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('249742356', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('249998793', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('251364143', '3', 'oEBowwGW2F4wwDc7bT2C2sdxtICs', '1');
INSERT INTO `wxstate` VALUES ('251513507', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('251642355', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('251789596', '3', 'o1NFYwPr1GAEFKjLnr7bBV6PoslA', '1');
INSERT INTO `wxstate` VALUES ('252621048', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('253347607', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('253949689', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('254385982', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('254837470', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('255996024', '3', 'o1NFYwOZJN3tnAk37oWHPuoveN7U', '2');
INSERT INTO `wxstate` VALUES ('256423126', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('256464629', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('256479709', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('257444124', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('258689616', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('258879174', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('259197858', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('260128739', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('261495107', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('262502710', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('263850519', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('264279046', '3', 'o1NFYwL4MFbT-PxIGVg_svwHbiuI', '1');
INSERT INTO `wxstate` VALUES ('265181857', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('265459719', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('265462734', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('266032017', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('266270863', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('266458276', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('266542544', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('267411976', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '1');
INSERT INTO `wxstate` VALUES ('268575634', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('268927653', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('270155369', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('270820422', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('271428099', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('271987813', '3', 'oEBowwGW2F4wwDc7bT2C2sdxtICs', '2');
INSERT INTO `wxstate` VALUES ('272022709', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('272041112', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('272928448', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('273135373', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('273141521', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('273840065', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('274434914', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('274917478', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('275359902', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('275901065', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('277069570', '3', 'oEBowwGW2F4wwDc7bT2C2sdxtICs', '1');
INSERT INTO `wxstate` VALUES ('277190512', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('278137253', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('279141586', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('279740426', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('280491521', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('281161846', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('281934714', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('282182032', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('282546082', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('282883637', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('283706716', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('284048269', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('284592908', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('285097210', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('285495324', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('285681121', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('286079140', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('286745822', '3', 'o1NFYwO9w4vlM0VoTbqJk7Rfe3M8', '1');
INSERT INTO `wxstate` VALUES ('287454928', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('287974063', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('287984665', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('288770659', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('288813173', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('289027214', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('289116410', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('289360622', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('289708388', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('289843697', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('290672618', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('291152980', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('291318840', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('292258560', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('293598888', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('293751601', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('293898745', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('294691867', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('295164776', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('296012903', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('297165725', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('297390387', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('297448169', '3', 'o1NFYwCTOt68CD7yQzUdtbjsUjGQ', '2');
INSERT INTO `wxstate` VALUES ('297550689', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('297814019', '3', 'o1NFYwPr1GAEFKjLnr7bBV6PoslA', '2');
INSERT INTO `wxstate` VALUES ('298184670', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('298432481', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('298862952', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('299497274', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('299889415', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('302225695', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('303406899', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('303497403', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('303598976', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('303842248', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('304436359', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('304867476', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('304956647', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('305145506', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('305329030', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('306270175', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('306566634', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('306744535', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('306896111', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('306994588', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('307339456', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('307833323', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('307888419', '3', 'o1NFYwIkViL0U_-ssL0jaE9zHFqk', '2');
INSERT INTO `wxstate` VALUES ('308104736', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('308216878', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('308654328', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('308927798', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('309053986', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('309058491', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('310091797', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '2');
INSERT INTO `wxstate` VALUES ('310483918', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('310485525', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('310774680', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('311127051', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('311311974', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('312508047', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('313137179', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('313146002', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('313156261', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('313452205', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('313518496', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('313637270', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('313644569', '3', 'o1NFYwDUvUf11kTc0cEM0G1N60HU', '1');
INSERT INTO `wxstate` VALUES ('314563151', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('315186141', '3', 'o1NFYwCTOt68CD7yQzUdtbjsUjGQ', '2');
INSERT INTO `wxstate` VALUES ('315605665', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('315948063', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('317317373', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('317834176', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('318432044', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('318544659', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('318655605', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('318681218', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '2');
INSERT INTO `wxstate` VALUES ('318782672', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('318897720', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('318993002', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('319209449', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('319661199', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('319736010', '3', 'oEBowwGW2F4wwDc7bT2C2sdxtICs', '2');
INSERT INTO `wxstate` VALUES ('319830203', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('320063402', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('320469075', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('321472389', '3', 'oEBowwGW2F4wwDc7bT2C2sdxtICs', '2');
INSERT INTO `wxstate` VALUES ('322218925', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('322238282', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('322871669', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('323328929', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('323444955', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('323462745', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('323890786', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('324295773', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('324434430', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('325281787', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('326133816', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('326356200', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('326619911', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('326757328', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('327185725', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('328244724', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('329962220', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('330418184', '3', 'o1NFYwGCFVpvxx-GKWbxzleZBZo0', '1');
INSERT INTO `wxstate` VALUES ('330710609', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('330715995', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('331963045', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('332174173', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('333118717', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('333614352', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('333628261', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('334056939', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '1');
INSERT INTO `wxstate` VALUES ('334597890', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('334867500', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('335091995', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('335518948', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('335953895', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('336940569', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('337121303', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('337409455', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('337608919', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('338045603', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('338687815', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('339121335', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('339261459', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('339394666', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('340176709', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('340212484', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('341138935', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('341382131', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('341497776', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('341652145', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('342095307', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('342536746', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('342585822', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('342786706', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('343221735', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('343679465', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('343824567', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('344292563', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('344628515', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('345174321', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('345661676', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('346943934', '3', 'o1NFYwIkViL0U_-ssL0jaE9zHFqk', '1');
INSERT INTO `wxstate` VALUES ('347937744', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('348647418', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('350665718', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('351086740', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('351377912', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('351751661', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('352040754', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('352192149', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('352271787', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('352398049', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('352471667', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('352826946', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('353178857', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('353636716', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('354443559', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('354654162', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('355068430', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('355196927', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('355792372', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('357702300', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('358285332', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('358318116', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('358822526', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('359688200', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('359920235', '3', 'oEBowwE952d0U4bqYryPKB8IvWLw', '2');
INSERT INTO `wxstate` VALUES ('360034103', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('360404573', '3', 'o1NFYwIkViL0U_-ssL0jaE9zHFqk', '2');
INSERT INTO `wxstate` VALUES ('360446530', '3', 'oEBowwGW2F4wwDc7bT2C2sdxtICs', '2');
INSERT INTO `wxstate` VALUES ('360627100', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('360806222', '3', 'o1NFYwBTciFzDSc4JAjR4y63Sojc', '1');
INSERT INTO `wxstate` VALUES ('361014829', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('361036972', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('361193877', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('361289494', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('361751058', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('362310282', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('362690014', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('363989873', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('364074371', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('364159381', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('365770149', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('366418721', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('366426841', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('366589953', '3', 'o1NFYwDUvUf11kTc0cEM0G1N60HU', '1');
INSERT INTO `wxstate` VALUES ('367005227', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('367164164', '3', 'o1NFYwIkViL0U_-ssL0jaE9zHFqk', '2');
INSERT INTO `wxstate` VALUES ('368136780', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('368187973', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('368277724', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('369359773', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('369986441', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('370058574', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('370582701', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('370884492', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('370940986', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('372987040', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('374711051', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('374958953', '3', 'o1NFYwO9w4vlM0VoTbqJk7Rfe3M8', '2');
INSERT INTO `wxstate` VALUES ('375141925', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('375480862', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('376432375', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('376667249', '3', 'oEBowwGW2F4wwDc7bT2C2sdxtICs', '2');
INSERT INTO `wxstate` VALUES ('376724301', '3', 'oEBowwE952d0U4bqYryPKB8IvWLw', '2');
INSERT INTO `wxstate` VALUES ('376780661', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('378315123', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('378549225', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('378691891', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('379190193', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('379542243', '3', 'oEBowwGW2F4wwDc7bT2C2sdxtICs', '2');
INSERT INTO `wxstate` VALUES ('380517977', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('380636663', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('380726746', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('380850475', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('380887428', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('381724125', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('381866676', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '1');
INSERT INTO `wxstate` VALUES ('383200968', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('383602598', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('383684604', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('384066194', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('384390913', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('384804378', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('386103959', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('386163562', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('386205904', '3', 'o1NFYwMNPJNn3YX5fbXkgXpg1DWY', '2');
INSERT INTO `wxstate` VALUES ('386610139', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('386887265', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('387241671', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('387457135', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('389101103', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('389318094', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('389838497', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('389841113', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('389893277', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('389929015', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('390460179', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('390468133', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('390554321', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('390628784', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('390953780', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('391559589', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('392107261', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('392758259', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('392953529', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('393648630', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('394419427', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('394812112', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('395225163', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('395649835', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('396263620', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('396718181', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('397272373', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('398131473', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('399374888', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('400067580', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('401105700', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('401809616', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('401945756', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('402882209', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('403011347', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('403362692', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('403961312', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('404015370', '3', 'oEBowwGW2F4wwDc7bT2C2sdxtICs', '1');
INSERT INTO `wxstate` VALUES ('404296836', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('404814218', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('405005589', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('405457206', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('406526774', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('407861486', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('408464047', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('409423790', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('411652753', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('411919869', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('412935852', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('413670959', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('414373693', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('414573619', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('416024411', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('416089489', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('416385858', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('416436139', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('416441416', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('416735306', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('417398825', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('418422593', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('418723236', '3', 'o1NFYwN_Nt_rwy6Nj6KI147Q_Low', '1');
INSERT INTO `wxstate` VALUES ('419743150', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('419967685', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('420579708', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('420674876', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('421000192', '3', 'o1NFYwL4MFbT-PxIGVg_svwHbiuI', '1');
INSERT INTO `wxstate` VALUES ('421033619', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('421163208', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('421502662', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('422351031', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('423047107', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('424804134', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('425319747', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('425471484', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('425632355', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('426266767', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('426684593', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('427950169', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('429471157', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('429551130', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('430021210', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('430241437', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('430402322', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('430973235', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('431324860', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('432038703', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('432800876', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('433381443', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('433647600', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('435980918', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('436088099', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('436260778', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('436279382', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('437147835', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('438784095', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('439216458', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('439632303', '3', 'o1NFYwN_Nt_rwy6Nj6KI147Q_Low', '1');
INSERT INTO `wxstate` VALUES ('440375639', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('440514774', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('441894596', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('442272323', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('443474360', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('443833984', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('443880109', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('444548215', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('444650918', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('445162167', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('445165072', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('446172199', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('446522684', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('446999865', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('448202528', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('448961906', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('449329334', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('449559301', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('449873299', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('450443456', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('450568453', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('451700928', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('452409439', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('452977241', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('453336397', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('453938075', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('454920087', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('455089234', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('455486409', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('455600477', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('455824473', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('456032182', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('456052767', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('456090250', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('458278060', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('458545507', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('458595011', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('459203488', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('459297100', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('460306749', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('460552747', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('460854961', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('461039245', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('461199075', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('462335713', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('462537691', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('462883065', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('464263890', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('464302493', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('464889237', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('465276090', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('465553962', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('467090579', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('467368505', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('469307425', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('469644981', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('469914464', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('471289204', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('471454055', '3', 'o1NFYwOZJN3tnAk37oWHPuoveN7U', '2');
INSERT INTO `wxstate` VALUES ('471468264', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('473407260', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('473589660', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('474233583', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('474317353', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('474426843', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('474663567', '3', 'oEBowwGW2F4wwDc7bT2C2sdxtICs', '2');
INSERT INTO `wxstate` VALUES ('474732984', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('474940589', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('474942950', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '2');
INSERT INTO `wxstate` VALUES ('476694879', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('477153142', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('478793134', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('479346995', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('479800457', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('481024181', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('481437030', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('482738294', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('484547039', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('484920999', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('485023910', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('486097203', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('486308916', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('487089879', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('487425204', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('488155979', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('488304539', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('489439627', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('489889252', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('490261027', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '2');
INSERT INTO `wxstate` VALUES ('490603702', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('491786045', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('492555635', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('493053036', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('493332925', '3', 'oEBowwE952d0U4bqYryPKB8IvWLw', '1');
INSERT INTO `wxstate` VALUES ('493376653', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('493476817', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('493665526', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('493698503', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '2');
INSERT INTO `wxstate` VALUES ('495048354', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('495142325', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('495185025', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('495683102', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('496340018', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('496905273', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('497267958', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('497335199', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('497570502', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('497582123', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('497636709', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('499001996', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('499197029', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('499356459', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('499441116', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('499458916', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('501062749', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('501134132', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('501281716', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('501670498', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('501706044', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('502970461', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('504848074', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('506603105', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('507509733', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('508066023', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('508548917', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('508724806', '3', 'o1NFYwGCFVpvxx-GKWbxzleZBZo0', '1');
INSERT INTO `wxstate` VALUES ('510048535', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('510484589', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '2');
INSERT INTO `wxstate` VALUES ('511255260', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('511511081', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('511896788', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('511977663', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('512115855', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('512316808', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('514365233', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('514550180', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('514559616', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('516419706', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('517863996', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('518027079', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('518576450', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('521074215', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('522461991', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('522521757', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('522958058', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('523345901', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('523797475', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('524092837', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('524130077', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('524134605', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('524347655', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('524642168', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('525325234', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('525333658', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('525512360', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('525542032', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('525818634', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('525939858', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('526334263', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('526415235', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('526568463', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('527129079', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('527506181', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('528183782', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('528576953', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('528612646', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('528730393', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('530511625', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('530869567', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('530923473', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('531446459', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('531618490', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('532128938', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('532986067', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('533165242', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('533310962', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('536935925', '3', 'o1NFYwCTOt68CD7yQzUdtbjsUjGQ', '2');
INSERT INTO `wxstate` VALUES ('536994058', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('537357154', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('537436569', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('537616723', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('538046024', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('539433119', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('539741097', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('540151065', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('540276090', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('540437671', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('540443927', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('540581251', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('540818827', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('541224602', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('541830040', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('541878073', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('542213878', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('543187937', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('543263440', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('543344714', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('543725860', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('545397560', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('546664482', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('546693614', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('547310802', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('548750954', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('550347300', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('550677243', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('551360547', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('551552609', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('551675929', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('551846619', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('552920665', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('553827406', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('553873494', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('554241551', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('554504813', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('554573875', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('555356871', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('555378007', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('557425427', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('557763293', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('557874932', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('558177731', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('558822774', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('558936275', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('559284110', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('559474229', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('560277498', '3', 'o1NFYwN_Nt_rwy6Nj6KI147Q_Low', '1');
INSERT INTO `wxstate` VALUES ('560294527', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('560389505', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('560410555', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('560818747', '3', 'o1NFYwIkViL0U_-ssL0jaE9zHFqk', '2');
INSERT INTO `wxstate` VALUES ('561173974', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('561267361', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('562118318', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('562492461', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('562797736', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('563860498', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('563959987', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('564262500', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('565061905', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('565116261', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('565171396', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('565555676', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('565591836', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('565940786', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('566797122', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('567069995', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('567632968', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('568181107', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('568618884', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('568788691', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('569633198', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('569647086', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('569979996', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('570748405', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('571152088', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('572718512', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('574958474', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('575116451', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('575579729', '3', 'o1NFYwMNPJNn3YX5fbXkgXpg1DWY', '2');
INSERT INTO `wxstate` VALUES ('576064979', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('577098223', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('578083267', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('578933506', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('579426893', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('580198426', '3', 'o1NFYwIkViL0U_-ssL0jaE9zHFqk', '2');
INSERT INTO `wxstate` VALUES ('581008218', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('581425004', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('581623012', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('582181598', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('582265021', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('583231531', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('583885791', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('584117780', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('585233604', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('585418988', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('585623345', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('585643585', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('585896186', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('586866757', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('586994184', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('589105763', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('589665355', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '1');
INSERT INTO `wxstate` VALUES ('589998040', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('590086050', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '1');
INSERT INTO `wxstate` VALUES ('590377367', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('591647543', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('592453756', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('592631368', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('593305073', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('593614414', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('593668025', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('593780215', '3', 'o1NFYwBTciFzDSc4JAjR4y63Sojc', '1');
INSERT INTO `wxstate` VALUES ('594334329', '3', 'oEBowwGW2F4wwDc7bT2C2sdxtICs', '2');
INSERT INTO `wxstate` VALUES ('594374597', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('594386578', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('594613122', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('594772196', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('594945354', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('595665096', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('595934507', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('596480407', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('596486949', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('597187305', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('598328169', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('598622995', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('599727178', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('599846397', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('600301314', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '2');
INSERT INTO `wxstate` VALUES ('600846539', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '2');
INSERT INTO `wxstate` VALUES ('601006833', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('601372720', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('601625060', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('602037111', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('602662701', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('603057056', '3', 'o1NFYwDUvUf11kTc0cEM0G1N60HU', '2');
INSERT INTO `wxstate` VALUES ('603633806', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('603769638', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('604480906', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('605167884', '3', 'o1NFYwL4MFbT-PxIGVg_svwHbiuI', '1');
INSERT INTO `wxstate` VALUES ('606301818', '3', 'o1NFYwPr1GAEFKjLnr7bBV6PoslA', '2');
INSERT INTO `wxstate` VALUES ('606426237', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('607452793', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('608868577', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('609154516', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('609234294', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('609815842', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('610116774', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('610234580', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('610593442', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('610664003', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('611018485', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('612275526', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('612276120', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('612769760', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('613113841', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('613234327', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('613249524', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('613285373', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('613977242', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('614577504', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('615561597', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('615650210', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('615673275', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('615844989', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('616481699', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('616858936', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('616873071', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('617123282', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('617299456', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('617378422', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('617592287', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('618511083', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('619401419', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('619563381', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('621117306', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('621621823', '3', 'o1NFYwIkViL0U_-ssL0jaE9zHFqk', '1');
INSERT INTO `wxstate` VALUES ('621766231', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('622721772', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('623180740', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('623458575', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('623572876', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('623938428', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('624885839', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('624914000', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('624919279', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('625390386', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('625393345', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('626123711', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('626251962', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('626555566', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('627346500', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('627452034', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('627592493', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('627625912', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('628794137', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('629619453', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('630125639', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('630297477', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('630978048', '3', 'o1NFYwDUvUf11kTc0cEM0G1N60HU', '1');
INSERT INTO `wxstate` VALUES ('631010031', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('631794942', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('632065420', '3', 'o1NFYwOZJN3tnAk37oWHPuoveN7U', '2');
INSERT INTO `wxstate` VALUES ('632839748', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('633949293', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('634495427', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('635134404', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('635774962', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('636211696', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('636265822', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('637013963', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('637618618', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('638007469', '3', 'o1NFYwCTOt68CD7yQzUdtbjsUjGQ', '2');
INSERT INTO `wxstate` VALUES ('638880495', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('638966111', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('639665351', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('639776755', '3', 'o1NFYwCTOt68CD7yQzUdtbjsUjGQ', '2');
INSERT INTO `wxstate` VALUES ('639949577', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('640359330', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('641011820', '3', 'o1NFYwIkViL0U_-ssL0jaE9zHFqk', '2');
INSERT INTO `wxstate` VALUES ('641250268', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('641867596', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('642153807', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('642399730', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('643040121', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('643210242', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('644079228', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('644109896', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('644200739', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('644564140', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('644640063', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('646872070', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('646935295', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('647858461', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('648470401', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('648673573', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('650591248', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('651933413', '3', 'oEBowwGW2F4wwDc7bT2C2sdxtICs', '2');
INSERT INTO `wxstate` VALUES ('652272590', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('652378527', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('652678076', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('653229289', '3', 'o1NFYwBTciFzDSc4JAjR4y63Sojc', '2');
INSERT INTO `wxstate` VALUES ('653589188', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('653691384', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('654541397', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('655636507', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('655831380', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('657101089', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('657210824', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('657496989', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('657788503', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('658596615', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('658888381', '3', 'o1NFYwCTOt68CD7yQzUdtbjsUjGQ', '2');
INSERT INTO `wxstate` VALUES ('659066869', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('659173278', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('659380603', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('660097834', '3', 'o1NFYwGCFVpvxx-GKWbxzleZBZo0', '1');
INSERT INTO `wxstate` VALUES ('661073644', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('661604227', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('663846729', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('663896051', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('664801326', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('664946079', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('665572971', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('665619998', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('666346662', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('667049297', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('667602512', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('667856358', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('668393618', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('668713417', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('670150695', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('670821577', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('673305579', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('673423743', '3', 'o1NFYwCTOt68CD7yQzUdtbjsUjGQ', '2');
INSERT INTO `wxstate` VALUES ('675210187', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('675254267', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('675759715', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('676078796', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('676182299', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('676190287', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('676967250', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('678390239', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('678993330', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('679710140', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('680383998', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('681218993', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('681625675', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('684154878', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('685083845', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('685258009', '3', 'o1NFYwL4MFbT-PxIGVg_svwHbiuI', '2');
INSERT INTO `wxstate` VALUES ('685533182', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('685884449', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('685959504', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('686649690', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('686749319', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('687526821', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('687649653', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('687905265', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('688250151', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('688718229', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('688926751', '3', 'o1NFYwMNPJNn3YX5fbXkgXpg1DWY', '2');
INSERT INTO `wxstate` VALUES ('691121639', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('691556721', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('692197016', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('692286473', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('692983793', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('693051265', '3', 'o1NFYwIkViL0U_-ssL0jaE9zHFqk', '2');
INSERT INTO `wxstate` VALUES ('693570322', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('694451495', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('694507306', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('694509359', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('695133792', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('695486286', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('697163704', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('697345286', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('698580623', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('698596893', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '2');
INSERT INTO `wxstate` VALUES ('698861468', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('698885400', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('699406252', '3', 'o1NFYwPr1GAEFKjLnr7bBV6PoslA', '2');
INSERT INTO `wxstate` VALUES ('700223171', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('700611048', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('700987316', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('701180792', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('701483170', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('702995632', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('703244497', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('703554295', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('703775367', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('704099021', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('704213811', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('704494941', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('704572360', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('705202549', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('706386930', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('706992508', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('707701102', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('708171121', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('709262772', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('710201119', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('710894259', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('710984639', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('711179348', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('711801136', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('712180405', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('713009129', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('713068033', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('713117269', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('713236295', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('713402686', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('713578970', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('713666415', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('713977114', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('714005832', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('714228179', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('714565981', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('714869099', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('716373438', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('716992463', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('718220763', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('718292867', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('718443023', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('718512505', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('719001803', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('719240468', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('720080704', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('720275381', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('720302765', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('721820142', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('721820447', '3', 'o1NFYwOZJN3tnAk37oWHPuoveN7U', '2');
INSERT INTO `wxstate` VALUES ('722130656', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('722592364', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('722862491', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('723350789', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('723680765', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('723834014', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('724202186', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('725114970', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('725160827', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('725215897', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('725571935', '3', 'oEBowwGW2F4wwDc7bT2C2sdxtICs', '2');
INSERT INTO `wxstate` VALUES ('725928055', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('727129104', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('727586774', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('727693312', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('728224252', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('728557976', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('729422173', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('730349100', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('730733051', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('731115415', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('731671024', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('732463274', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('733084289', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('733100880', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('733401234', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('733701047', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('734128072', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('734262281', '3', 'o1NFYwIkViL0U_-ssL0jaE9zHFqk', '1');
INSERT INTO `wxstate` VALUES ('734957462', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('735256379', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('735456872', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('737584880', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('737894412', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('738098287', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('738263689', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('739194096', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '2');
INSERT INTO `wxstate` VALUES ('740411569', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('740457698', '3', 'o1NFYwOZJN3tnAk37oWHPuoveN7U', '2');
INSERT INTO `wxstate` VALUES ('741219252', '3', 'o1NFYwOZJN3tnAk37oWHPuoveN7U', '2');
INSERT INTO `wxstate` VALUES ('741457051', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('741836535', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('742300607', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('742783570', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('742979866', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('743742950', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('744164241', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('744814582', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('745045061', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('745421941', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('745655363', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('745993692', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('746542797', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('746609598', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('746641005', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('746756711', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('747186405', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('748563945', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('749039324', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('751342970', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('751911712', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('752244439', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('752512995', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('752726855', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('752846387', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('752906285', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('753732905', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('754922495', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('757029350', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('757131248', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('757327796', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('757367259', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('758034501', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('759343745', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('759625991', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('759910969', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('760039187', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('760811933', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('760995998', '3', 'oEBowwGW2F4wwDc7bT2C2sdxtICs', '2');
INSERT INTO `wxstate` VALUES ('761388643', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('761743584', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('762174918', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('762620619', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('762638932', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('762841042', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('763255694', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('763366141', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('763842663', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('764555976', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('766054355', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('766097990', '3', 'oEBowwE952d0U4bqYryPKB8IvWLw', '1');
INSERT INTO `wxstate` VALUES ('766312620', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('767237127', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('767536953', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('768121264', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('769213133', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('769612907', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('770698376', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('771118064', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('771355023', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('772412700', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('772762711', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('772781029', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('773568181', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('774175338', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('774713477', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('775644799', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('775707499', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('775903183', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('776706043', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('776892293', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('776895406', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('777457840', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('777565725', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('777590428', '3', 'o1NFYwMNPJNn3YX5fbXkgXpg1DWY', '1');
INSERT INTO `wxstate` VALUES ('777696020', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('778433381', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('779234501', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('779638992', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('779676453', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('780423361', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('781423217', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('782005324', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('782728240', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('782761921', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('783184776', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('783576241', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('783834893', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('784510276', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('784562988', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('785007437', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('785286443', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('785516464', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('785928585', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('786010972', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('786321588', '3', 'o1NFYwGCFVpvxx-GKWbxzleZBZo0', '1');
INSERT INTO `wxstate` VALUES ('786682952', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '2');
INSERT INTO `wxstate` VALUES ('787281009', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '2');
INSERT INTO `wxstate` VALUES ('787326775', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('788252795', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('788538012', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('789221538', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('789422092', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('789486154', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('789501947', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('789590095', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('789969913', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('790555729', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('790972563', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('791231505', '3', 'oEBowwGW2F4wwDc7bT2C2sdxtICs', '2');
INSERT INTO `wxstate` VALUES ('791348495', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('791699374', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('791797451', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('792067720', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '2');
INSERT INTO `wxstate` VALUES ('792508343', '3', 'o1NFYwCTOt68CD7yQzUdtbjsUjGQ', '2');
INSERT INTO `wxstate` VALUES ('792822156', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('792834808', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('795040260', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('795475444', '3', 'o1NFYwCTOt68CD7yQzUdtbjsUjGQ', '2');
INSERT INTO `wxstate` VALUES ('795977605', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('796011556', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('796825201', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('797506570', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('799471192', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('800356401', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('800395111', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('801629443', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('801727915', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('801836051', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('804544126', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('804710062', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('805253763', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('805607815', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('806294691', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('806894984', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('807730873', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('807768204', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('807793015', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('809286751', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('810358453', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('810610135', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('811193464', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('811641329', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('811853902', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('812923701', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('813697327', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('814232822', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('814405656', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('815008617', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('815412418', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('815717829', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('815754363', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('816615875', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('816925434', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('816930946', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('817225879', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('817288864', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('817438731', '3', 'o1NFYwOZJN3tnAk37oWHPuoveN7U', '2');
INSERT INTO `wxstate` VALUES ('817910335', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('818006193', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('818012016', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('818072928', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('818799286', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('818999511', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '2');
INSERT INTO `wxstate` VALUES ('819078094', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('819628426', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('820052813', '3', 'o1NFYwIkViL0U_-ssL0jaE9zHFqk', '1');
INSERT INTO `wxstate` VALUES ('820071052', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('820386392', '3', 'oEBowwGW2F4wwDc7bT2C2sdxtICs', '2');
INSERT INTO `wxstate` VALUES ('821279826', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('821624307', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('822074079', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('822949518', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('823106215', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('823634520', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('824107434', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('825652805', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('825692569', '3', 'o1NFYwCTOt68CD7yQzUdtbjsUjGQ', '2');
INSERT INTO `wxstate` VALUES ('827499479', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('829226144', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('829302923', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('829667171', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('829759409', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('830138309', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('830715399', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('830760724', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('830861673', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('831336318', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('832079356', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('832175187', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('832595146', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('833925051', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('834047554', '3', 'oEBowwGW2F4wwDc7bT2C2sdxtICs', '1');
INSERT INTO `wxstate` VALUES ('834248838', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('835103236', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('835110372', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('835177810', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('835685199', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('835737563', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('836611067', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('837199500', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('838219323', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('838402974', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('839453804', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('839653796', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('840359005', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('840861503', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('841089892', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('841186503', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('841347182', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('841383608', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('841451855', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('841510444', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('841871658', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('842201410', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('842624610', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('843905757', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('843936499', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('845455836', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('847586570', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('848819997', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('848840367', '3', 'oEBowwGW2F4wwDc7bT2C2sdxtICs', '2');
INSERT INTO `wxstate` VALUES ('849167006', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('850369299', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('850713105', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('851187355', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('851622085', '3', 'o1NFYwL4MFbT-PxIGVg_svwHbiuI', '2');
INSERT INTO `wxstate` VALUES ('851999843', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('852033133', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('852638764', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('852682418', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('853092461', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('854565236', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('855889994', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('857189487', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('857219167', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('857666499', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('857701318', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('858147505', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('858319821', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('859780370', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('859836003', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('860479580', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('861165158', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('861308351', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('861321635', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '2');
INSERT INTO `wxstate` VALUES ('861393100', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('862152725', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('863531417', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('864129912', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('864448736', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('865024900', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('866462794', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('866720170', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('867313211', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('867582286', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('867895903', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('868745565', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('868996513', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('869421575', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('869653332', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('869700360', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('870379265', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('871080369', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('871358922', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('871913083', '3', 'o1NFYwO9w4vlM0VoTbqJk7Rfe3M8', '1');
INSERT INTO `wxstate` VALUES ('872199411', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('872914110', '3', 'o1NFYwIkViL0U_-ssL0jaE9zHFqk', '1');
INSERT INTO `wxstate` VALUES ('873504253', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('873581414', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('873638295', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('874367660', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('874384523', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('874489937', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('874989415', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('875066213', '3', 'o1NFYwK352y5NbtlsGtdCQlG2L20', '1');
INSERT INTO `wxstate` VALUES ('875347486', '3', 'o1NFYwPr1GAEFKjLnr7bBV6PoslA', '2');
INSERT INTO `wxstate` VALUES ('875917545', '3', 'o1NFYwCTOt68CD7yQzUdtbjsUjGQ', '2');
INSERT INTO `wxstate` VALUES ('876233215', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('876746855', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('876869579', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('876897723', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('877300498', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('877329259', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('877797034', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('877878827', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('878041073', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('878771632', '3', 'o1NFYwMNPJNn3YX5fbXkgXpg1DWY', '2');
INSERT INTO `wxstate` VALUES ('879004115', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('879670694', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('880436162', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('880888439', '3', 'o1NFYwO9w4vlM0VoTbqJk7Rfe3M8', '1');
INSERT INTO `wxstate` VALUES ('880908518', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('881891407', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('883430471', '3', 'o1NFYwIMWvbnbhamjMHaAO2lHIvk', '2');
INSERT INTO `wxstate` VALUES ('883676098', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('884473265', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('884600617', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('884693635', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('884695487', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('885106222', '3', 'oEBowwIJS7xPHvUj7BQskgtDk_Hc', '1');
INSERT INTO `wxstate` VALUES ('887458197', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('887594253', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('887800961', '3', 'oEBowwGW2F4wwDc7bT2C2sdxtICs', '2');
INSERT INTO `wxstate` VALUES ('889105404', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('889358462', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('889569150', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('889674636', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('889749324', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('890348113', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('890518261', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('891135455', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('891582040', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('892483350', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('892627520', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('892922064', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('893347015', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('893483364', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('893602670', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('893735572', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('894720928', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('894755667', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('895067325', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('895318426', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('895452590', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('895484920', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('895645669', '3', 'o1NFYwO9w4vlM0VoTbqJk7Rfe3M8', '2');
INSERT INTO `wxstate` VALUES ('895749376', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('896042249', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('896069925', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('896448919', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('896660179', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('897467189', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('897774913', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('898249299', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('898457100', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('898787490', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('899340935', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('899803369', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('899982882', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('900798928', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('900975940', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('901282572', '3', 'o1NFYwCTOt68CD7yQzUdtbjsUjGQ', '1');
INSERT INTO `wxstate` VALUES ('901579729', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('901887382', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('902220948', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('905302707', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('905563865', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('905740195', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('905779922', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('906472219', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('907152433', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('907457539', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('908929849', '3', 'o1NFYwO9w4vlM0VoTbqJk7Rfe3M8', '2');
INSERT INTO `wxstate` VALUES ('909023025', '3', 'o1NFYwIkViL0U_-ssL0jaE9zHFqk', '1');
INSERT INTO `wxstate` VALUES ('909441309', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('909475671', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('909512081', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('909604972', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('909704174', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('909921921', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('910796582', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('911334170', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('911779233', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('912153746', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('913175358', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('913688952', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('914123129', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('914930526', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('915076002', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('916411904', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('917284447', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('918319604', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('919315593', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('919408358', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('920576758', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('920905800', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('920909102', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('921147049', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('921734050', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('921740419', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('922159631', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('922317977', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('922597270', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('922683026', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('924059131', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('924518038', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('925265009', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('927199210', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('927237761', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('927900796', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('928447860', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('928601172', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('929204146', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('931064759', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('932200280', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('934031528', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('934441326', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('934699789', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('934801575', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('935697200', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('936129049', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('936275546', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('936854744', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('937425635', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('937557005', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('938287731', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('939218488', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('939239515', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('940287693', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('940491200', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('940744221', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('941829184', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('942103742', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('942838339', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('942960651', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('943236961', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('943606917', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('943678981', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('944605520', '3', 'o1NFYwCTOt68CD7yQzUdtbjsUjGQ', '2');
INSERT INTO `wxstate` VALUES ('945585534', '3', 'o1NFYwL4MFbT-PxIGVg_svwHbiuI', '2');
INSERT INTO `wxstate` VALUES ('947101493', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('948640614', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('949369882', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('949399432', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('950403489', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('950837929', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('951941857', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('952895079', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('952949968', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('954718646', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('954808080', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('954942713', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('955390566', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('955585326', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('956103545', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('956260515', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('956364999', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('956505315', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('956793711', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('956901936', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('957225393', '3', 'o1NFYwCTOt68CD7yQzUdtbjsUjGQ', '2');
INSERT INTO `wxstate` VALUES ('957384483', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('958081515', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('958382267', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('958801062', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('959388655', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('959826423', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('960066015', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('960468562', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('961473980', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('961684321', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('961812625', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('963534322', '3', 'o1NFYwDUvUf11kTc0cEM0G1N60HU', '2');
INSERT INTO `wxstate` VALUES ('963811318', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('963860366', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('964209259', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('964230122', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('964298125', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('964488393', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('964497985', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('964625314', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('965149515', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('965325797', '3', 'o1NFYwIkViL0U_-ssL0jaE9zHFqk', '1');
INSERT INTO `wxstate` VALUES ('965445619', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('965902409', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('965915406', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('966847085', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('967288207', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('968106288', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('968672211', '3', 'o1NFYwPr1GAEFKjLnr7bBV6PoslA', '2');
INSERT INTO `wxstate` VALUES ('969136448', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('969266441', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('969279175', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('969444698', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('969694733', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('970598822', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('971455315', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('971998406', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('972100668', '3', 'oEBowwGW2F4wwDc7bT2C2sdxtICs', '2');
INSERT INTO `wxstate` VALUES ('972453048', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('972554383', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('972787164', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('973448081', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('973665427', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('974113694', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('974508957', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('974692454', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('975571729', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('976705251', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('978063545', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('978265329', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('978564356', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('978924557', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('978991718', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('979698576', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('981377052', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('981407695', '3', 'o1NFYwMNPJNn3YX5fbXkgXpg1DWY', '1');
INSERT INTO `wxstate` VALUES ('981629279', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('982108551', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('982477032', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('982551738', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('983990140', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('984030101', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('985919680', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('986111085', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('987453203', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('987528856', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('987605369', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('987992785', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('988082627', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('990780328', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('990847678', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('991927956', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('993074602', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('993271382', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('993918710', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('994374651', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('995647746', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('995833815', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('996449307', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('996541289', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('996596385', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('997407994', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('998793865', '1', NULL, '0');
INSERT INTO `wxstate` VALUES ('999578565', '1', NULL, '0');

SET FOREIGN_KEY_CHECKS = 1;
