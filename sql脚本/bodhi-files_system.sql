/*
 Navicat Premium Data Transfer

 Source Server         : jojo
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : bodhi-files_system

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 23/10/2024 16:22:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for file_info
-- ----------------------------
DROP TABLE IF EXISTS `file_info`;
CREATE TABLE `file_info`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL COMMENT '用户id',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文件或文件夹名称',
  `parent_id` int NULL DEFAULT NULL,
  `type` enum('file','folder') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型是文件或文件夹',
  `url` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资源路径',
  `suffix` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '后缀名',
  `cur_child` int NULL DEFAULT NULL COMMENT '当前子文件夹的索引',
  `offset` int NULL DEFAULT NULL COMMENT '偏移量',
  `is_md` bit(1) NULL DEFAULT NULL COMMENT '是否为Markdown文件',
  `is_img` bit(1) NULL DEFAULT NULL COMMENT '是否图片',
  `is_dir` bit(1) NULL DEFAULT NULL COMMENT '是否目录',
  `size` int NULL DEFAULT NULL COMMENT '尺寸',
  `put_time` datetime NULL DEFAULT NULL COMMENT '上传时间',
  `created_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `created_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updated_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新人',
  `updated_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `source` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '来源',
  `path` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文件或文件夹的路径',
  `absolute_path` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文件或文件夹的绝对路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '文件资源表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file_info
-- ----------------------------
INSERT INTO `file_info` VALUES (1, 1, '17-无人机相关组件-1140', NULL, 'folder', '', '', -1, -1, b'0', b'0', b'1', NULL, '2024-10-22 16:29:34', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:54', NULL, '/Users/cheng-xuanzhu/Downloads/17-无人机相关组件-1140', '/Users/cheng-xuanzhu/Downloads/17-无人机相关组件-1140');
INSERT INTO `file_info` VALUES (2, 1, '17-无人机相关组件-1140.jpg', 1, 'file', 'www.baidu.com/1', '.jpg', -1, -1, b'0', b'1', b'0', 512, '2024-10-22 16:32:32', 'jojo', '2024-10-22 16:32:39', 'jojo', '2024-10-22 16:32:45', NULL, '/Users/cheng-xuanzhu/Downloads/17-无人机相关组件-1140/17-无人机相关组件-1140.jpg', '/Users/cheng-xuanzhu/Downloads/17-无人机相关组件-1140/17-无人机相关组件-1140.jpg');
INSERT INTO `file_info` VALUES (3, 1, '子文件夹', 1, 'folder', NULL, NULL, -1, -1, b'0', b'0', b'1', NULL, '2024-10-22 16:39:27', 'jojo', '2024-10-22 16:39:33', 'jojo', '2024-10-22 16:39:41', NULL, '/Users/cheng-xuanzhu/Downloads/17-无人机相关组件-1140/子文件夹\', \'Users/cheng-xuanzhu/Downloads/17-无人机相关组件-1140/子文件夹', '/Users/cheng-xuanzhu/Downloads/17-无人机相关组件-1140/子文件夹\', \'Users/cheng-xuanzhu/Downloads/17-无人机相关组件-1140/子文件夹');
INSERT INTO `file_info` VALUES (4, 3, '子文件.jpg', NULL, 'file', 'www.baidu.com/1', '.jpg', -1, -1, b'0', b'1', b'0', 512, '2024-10-22 16:41:12', 'jojo', '2024-10-22 16:41:18', 'jojo', '2024-10-22 16:41:24', NULL, '/Users/cheng-xuanzhu/Downloads/17-无人机相关组件-1140/子文件夹/子文件.jpg', '/Users/cheng-xuanzhu/Downloads/17-无人机相关组件-1140/子文件夹/子文件.jpg');
INSERT INTO `file_info` VALUES (5, 1, '\r\nCPP设计-C高阶.md\r\n', 1, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/CPP%E8%AE%BE%E8%AE%A1-C%E9%AB%98%E9%98%B6.md', '.md', -1, -1, b'1', b'0', b'0', NULL, '2024-10-23 16:15:23', 'jojo', '2024-10-23 16:15:29', 'jojo', '2024-10-23 16:15:34', NULL, NULL, NULL);
INSERT INTO `file_info` VALUES (6, 1, 'CPP设计-JSON.md', 1, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/CPP%E8%AE%BE%E8%AE%A1-JSON.md', '.md', -1, -1, b'1', b'0', b'0', NULL, '2024-10-23 16:17:20', 'jojo', '2024-10-23 16:17:27', 'jojo', '2024-10-23 16:17:32', NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
