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

 Date: 07/11/2024 16:20:45
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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '文件资源表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of file_info
-- ----------------------------
INSERT INTO `file_info` VALUES (1, 1, 'demo', NULL, 'folder', NULL, NULL, -1, -1, b'0', b'0', b'1', NULL, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', NULL, 'C:/Users/admin/documents/demo', 'C:/Users/admin/documents/demo');
INSERT INTO `file_info` VALUES (2, 1, '2022', 1, 'folder', NULL, NULL, -1, -1, b'0', b'0', b'1', NULL, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-10-23 16:29:43', NULL, 'C:/Users/admin/documents/demo/2022', 'C:/Users/admin/documents/demo/2022');
INSERT INTO `file_info` VALUES (3, 1, '2023', 1, 'folder', NULL, NULL, -1, -1, b'0', b'0', b'1', NULL, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-10-24 16:29:43', NULL, 'C:/Users/admin/documents/demo/2023', 'C:/Users/admin/documents/demo/2023');
INSERT INTO `file_info` VALUES (4, 1, 'Bodhi', 1, 'folder', NULL, NULL, -1, -1, b'0', b'0', b'1', NULL, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-10-25 16:29:43', NULL, 'C:/Users/admin/documents/demo/Bodhi', 'C:/Users/admin/documents/demo/Bodhi');
INSERT INTO `file_info` VALUES (5, 1, 'fgraph-demo', 1, 'folder', NULL, NULL, -1, -1, b'0', b'0', b'1', NULL, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-10-26 16:29:43', NULL, 'C:/Users/admin/documents/demo/fgraph-demo', 'C:/Users/admin/documents/demo/fgraph-demo');
INSERT INTO `file_info` VALUES (6, 1, 'index.md', 1, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/index.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-10-27 16:29:43', NULL, 'C:/Users/admin/documents/demo/index.md', 'C:/Users/admin/documents/demo/index.md');
INSERT INTO `file_info` VALUES (7, 1, 'markdown tutorials.md', 1, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/markdown%20tutorials.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-10-28 16:29:43', NULL, 'C:/Users/admin/documents/demo/markdown tutorials.md', 'C:/Users/admin/documents/demo/markdown tutorials.md');
INSERT INTO `file_info` VALUES (8, 1, 'Mathematical', 2, 'folder', NULL, NULL, -1, -1, b'0', b'0', b'1', NULL, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-10-29 16:29:43', NULL, 'C:/Users/admin/documents/demo/2022/Mathematical', 'C:/Users/admin/documents/demo/2022/Mathematical');
INSERT INTO `file_info` VALUES (9, 1, 'Office Tool-LaTeX', 2, 'folder', NULL, NULL, -1, -1, b'0', b'0', b'1', NULL, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-10-30 16:29:43', NULL, 'C:/Users/admin/documents/demo/2022/Office Tool-LaTeX', 'C:/Users/admin/documents/demo/2022/Office Tool-LaTeX');
INSERT INTO `file_info` VALUES (10, 1, 'Office Tool-PPT', 2, 'folder', NULL, NULL, -1, -1, b'0', b'0', b'1', NULL, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-10-31 16:29:43', NULL, 'C:/Users/admin/documents/demo/2022/Office Tool-PPT', 'C:/Users/admin/documents/demo/2022/Office Tool-PPT');
INSERT INTO `file_info` VALUES (11, 1, 'Office Tools-Write Paper using Word', 2, 'folder', NULL, NULL, -1, -1, b'0', b'0', b'1', NULL, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-11-01 16:29:43', NULL, 'C:/Users/admin/documents/demo/2022/Office Tools-Write Paper using Word', 'C:/Users/admin/documents/demo/2022/Office Tools-Write Paper using Word');
INSERT INTO `file_info` VALUES (12, 1, 'Office Tools-vscode', 2, 'folder', NULL, NULL, -1, -1, b'0', b'0', b'1', NULL, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-11-02 16:29:43', NULL, 'C:/Users/admin/documents/demo/2022/Office Tools-vscode', 'C:/Users/admin/documents/demo/2022/Office Tools-vscode');
INSERT INTO `file_info` VALUES (13, 1, 'University Physic-Fluctuating Optics', 2, 'folder', NULL, NULL, -1, -1, b'0', b'0', b'1', NULL, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-11-03 16:29:43', NULL, 'C:/Users/admin/documents/demo/2022/University Physic-Fluctuating Optics', 'C:/Users/admin/documents/demo/2022/University Physic-Fluctuating Optics');
INSERT INTO `file_info` VALUES (14, 1, 'University Physic-Wave-Particle Duality', 2, 'folder', NULL, NULL, -1, -1, b'0', b'0', b'1', NULL, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-11-04 16:29:43', NULL, 'C:/Users/admin/documents/demo/2022/University Physic-Wave-Particle Duality', 'C:/Users/admin/documents/demo/2022/University Physic-Wave-Particle Duality');
INSERT INTO `file_info` VALUES (15, 1, 'Mathematical Analysis-Fourier series.md', 2, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2022/Mathematical%20Analysis-Fourier%20series.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-11-05 16:29:43', NULL, 'C:/Users/admin/documents/demo/2022/Mathematical Analysis-Fourier series.md', 'C:/Users/admin/documents/demo/2022/Mathematical Analysis-Fourier series.md');
INSERT INTO `file_info` VALUES (16, 1, 'Mathematical Analysis-Function Term Levels and Function Columns.md', 2, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2022/Mathematical%20Analysis-Function%20Term%20Levels%20and%20Function%20Columns.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-11-06 16:29:43', NULL, 'C:/Users/admin/documents/demo/2022/Mathematical Analysis-Function Term Levels and Function Columns.md', 'C:/Users/admin/documents/demo/2022/Mathematical Analysis-Function Term Levels and Function Columns.md');
INSERT INTO `file_info` VALUES (17, 1, 'Mathematical Analysis-Integration of Multiple Functions (2).md', 2, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2022/Mathematical%20Analysis-Integration%20of%20Multiple%20Functions%20%282%29.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-11-07 16:29:43', NULL, 'C:/Users/admin/documents/demo/2022/Mathematical Analysis-Integration of Multiple Functions (2).md', 'C:/Users/admin/documents/demo/2022/Mathematical Analysis-Integration of Multiple Functions (2).md');
INSERT INTO `file_info` VALUES (18, 1, 'Mathematical Analysis-Integration of Multiple Functions.md', 2, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2022/Mathematical%20Analysis-Integration%20of%20Multiple%20Functions.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-11-08 16:29:43', NULL, 'C:/Users/admin/documents/demo/2022/Mathematical Analysis-Integration of Multiple Functions.md', 'C:/Users/admin/documents/demo/2022/Mathematical Analysis-Integration of Multiple Functions.md');
INSERT INTO `file_info` VALUES (19, 1, 'Mathematical Analysis-Limits and Continuity of Multivariate Functions.md', 2, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2022/Mathematical%20Analysis-Limits%20and%20Continuity%20of%20Multivariate%20Functions.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-11-09 16:29:43', NULL, 'C:/Users/admin/documents/demo/2022/Mathematical Analysis-Limits and Continuity of Multivariate Functions.md', 'C:/Users/admin/documents/demo/2022/Mathematical Analysis-Limits and Continuity of Multivariate Functions.md');
INSERT INTO `file_info` VALUES (20, 1, 'Mathematical Analysis-Multivariate Functional Differential.md', 2, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2022/Mathematical%20Analysis-Multivariate%20Functional%20Differential.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-11-10 16:29:43', NULL, 'C:/Users/admin/documents/demo/2022/Mathematical Analysis-Multivariate Functional Differential.md', 'C:/Users/admin/documents/demo/2022/Mathematical Analysis-Multivariate Functional Differential.md');
INSERT INTO `file_info` VALUES (21, 1, 'Office Tools-LaTeX.md', 2, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2022/Office%20Tools-LaTeX.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-11-11 16:29:43', NULL, 'C:/Users/admin/documents/demo/2022/Office Tools-LaTeX.md', 'C:/Users/admin/documents/demo/2022/Office Tools-LaTeX.md');
INSERT INTO `file_info` VALUES (22, 1, 'Office Tools-PPT.md', 2, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2022/Office%20Tools-PPT.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-11-12 16:29:43', NULL, 'C:/Users/admin/documents/demo/2022/Office Tools-PPT.md', 'C:/Users/admin/documents/demo/2022/Office Tools-PPT.md');
INSERT INTO `file_info` VALUES (23, 1, 'Office Tools-Write Paper using Word.md', 2, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2022/Office%20Tools-Write%20Paper%20using%20Word.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-11-13 16:29:43', NULL, 'C:/Users/admin/documents/demo/2022/Office Tools-Write Paper using Word.md', 'C:/Users/admin/documents/demo/2022/Office Tools-Write Paper using Word.md');
INSERT INTO `file_info` VALUES (24, 1, 'Office Tools-vscode.md', 2, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2022/Office%20Tools-vscode.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-11-14 16:29:43', NULL, 'C:/Users/admin/documents/demo/2022/Office Tools-vscode.md', 'C:/Users/admin/documents/demo/2022/Office Tools-vscode.md');
INSERT INTO `file_info` VALUES (25, 1, '微信图片_20210513192620.jpg', 8, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2022/Mathematical%20Analysis-Limits%20and%20Continuity%20of%20Multivariate%20Functions/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20210513192620.jpg', '.jpg', -1, -1, b'0', b'1', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-11-15 16:29:43', NULL, 'C:/Users/admin/documents/demo/Mathematical/微信图片_20210513192620.jpg', 'C:/Users/admin/documents/demo/Mathematical/微信图片_20210513192620.jpg');
INSERT INTO `file_info` VALUES (26, 1, 'image-20220203154503232.png', 8, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2022/Office%20Tools-LaTeX/image-20220203154503232.png', '.jpg', -1, -1, b'0', b'1', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-11-16 16:29:43', NULL, 'C:/Users/admin/documents/demo/Mathematical/image-20220203154503232.png', 'C:/Users/admin/documents/demo/Mathematical/image-20220203154503232.png');
INSERT INTO `file_info` VALUES (27, 1, 'image-20220203155115443.png', 8, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2022/Office%20Tools-LaTeX/image-20220203155115443.png', '.jpg', -1, -1, b'0', b'1', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-11-17 16:29:43', NULL, 'C:/Users/admin/documents/demo/Mathematical/image-20220203155115443.png', 'C:/Users/admin/documents/demo/Mathematical/image-20220203155115443.png');
INSERT INTO `file_info` VALUES (28, 1, 'image-20220203163430873.png', 8, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2022/Office%20Tools-LaTeX/image-20220203163430873.png', '.jpg', -1, -1, b'0', b'1', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-11-18 16:29:43', NULL, 'C:/Users/admin/documents/demo/Mathematical/image-20220203163430873.png', 'C:/Users/admin/documents/demo/Mathematical/image-20220203163430873.png');
INSERT INTO `file_info` VALUES (29, 1, 'image-20220203174423800.png', 8, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2022/Office%20Tools-LaTeX/image-20220203174423800.png', '.jpg', -1, -1, b'0', b'1', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-11-19 16:29:43', NULL, 'C:/Users/admin/documents/demo/Mathematical/image-20220203174423800.png', 'C:/Users/admin/documents/demo/Mathematical/image-20220203174423800.png');
INSERT INTO `file_info` VALUES (30, 1, 'image-20220203174434037.png', 8, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2022/Office%20Tools-LaTeX/image-20220203174434037.png', '.jpg', -1, -1, b'0', b'1', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-11-20 16:29:43', NULL, 'C:/Users/admin/documents/demo/Mathematical/image-20220203174434037.png', 'C:/Users/admin/documents/demo/Mathematical/image-20220203174434037.png');
INSERT INTO `file_info` VALUES (31, 1, 'CPP Design-C Advanced', 3, 'folder', NULL, NULL, -1, -1, b'0', b'0', b'1', NULL, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-11-21 16:29:43', NULL, 'C:/Users/admin/documents/demo/2023/CPP Design-C Advanced', 'C:/Users/admin/documents/demo/2023/CPP Design-C Advanced');
INSERT INTO `file_info` VALUES (32, 1, 'CPP Design-JSON', 3, 'folder', NULL, NULL, -1, -1, b'0', b'0', b'1', NULL, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-11-22 16:29:43', NULL, 'C:/Users/admin/documents/demo/2023/CPP Design-JSON', 'C:/Users/admin/documents/demo/2023/CPP Design-JSON');
INSERT INTO `file_info` VALUES (33, 1, 'IEArch-Basics', 3, 'folder', NULL, NULL, -1, -1, b'0', b'0', b'1', NULL, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-11-23 16:29:43', NULL, 'C:/Users/admin/documents/demo/2023/IEArch-Basics', 'C:/Users/admin/documents/demo/2023/IEArch-Basics');
INSERT INTO `file_info` VALUES (34, 1, 'IEArch-Convolutional Neural Network', 3, 'folder', NULL, NULL, -1, -1, b'0', b'0', b'1', NULL, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-11-24 16:29:43', NULL, 'C:/Users/admin/documents/demo/2023/IEArch-Convolutional Neural Network', 'C:/Users/admin/documents/demo/2023/IEArch-Convolutional Neural Network');
INSERT INTO `file_info` VALUES (35, 1, 'IEArch-Matrix Multiplication Module', 3, 'folder', NULL, NULL, -1, -1, b'0', b'0', b'1', NULL, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-11-25 16:29:43', NULL, 'C:/Users/admin/documents/demo/2023/IEArch-Matrix Multiplication Module', 'C:/Users/admin/documents/demo/2023/IEArch-Matrix Multiplication Module');
INSERT INTO `file_info` VALUES (36, 1, 'IEArch-Multilayer Perceptron', 3, 'folder', NULL, NULL, -1, -1, b'0', b'0', b'1', NULL, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-11-26 16:29:43', NULL, 'C:/Users/admin/documents/demo/2023/IEArch-Multilayer Perceptron', 'C:/Users/admin/documents/demo/2023/IEArch-Multilayer Perceptron');
INSERT INTO `file_info` VALUES (37, 1, 'IEArch-NaiveTPU', 3, 'folder', NULL, NULL, -1, -1, b'0', b'0', b'1', NULL, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-11-27 16:29:43', NULL, 'C:/Users/admin/documents/demo/2023/IEArch-NaiveTPU', 'C:/Users/admin/documents/demo/2023/IEArch-NaiveTPU');
INSERT INTO `file_info` VALUES (38, 1, 'Ruby Design-Advanced Grammar', 3, 'folder', NULL, NULL, -1, -1, b'0', b'0', b'1', NULL, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-11-28 16:29:43', NULL, 'C:/Users/admin/documents/demo/2023/Ruby Design-Advanced Grammar', 'C:/Users/admin/documents/demo/2023/Ruby Design-Advanced Grammar');
INSERT INTO `file_info` VALUES (39, 1, 'Ruby Design-Function Demo', 3, 'folder', NULL, NULL, -1, -1, b'0', b'0', b'1', NULL, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-11-29 16:29:43', NULL, 'C:/Users/admin/documents/demo/2023/Ruby Design-Function Demo', 'C:/Users/admin/documents/demo/2023/Ruby Design-Function Demo');
INSERT INTO `file_info` VALUES (40, 1, 'CPP Design-C Advanced.md', 3, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2023/CPP%20Design-C%20Advanced.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-11-30 16:29:43', NULL, 'C:/Users/admin/documents/demo/2023/CPP Design-C Advanced.md', 'C:/Users/admin/documents/demo/2023/CPP Design-C Advanced.md');
INSERT INTO `file_info` VALUES (41, 1, 'CPP Design-JSON.md', 3, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2023/CPP%20Design-JSON.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-12-01 16:29:43', NULL, 'C:/Users/admin/documents/demo/2023/CPP Design-JSON.md', 'C:/Users/admin/documents/demo/2023/CPP Design-JSON.md');
INSERT INTO `file_info` VALUES (42, 1, 'CPP Design-STL.md', 3, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2023/CPP%21Design-JSON.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-12-02 16:29:43', NULL, 'C:/Users/admin/documents/demo/2023/CPP Design-STL.md', 'C:/Users/admin/documents/demo/2023/CPP Design-STL.md');
INSERT INTO `file_info` VALUES (43, 1, 'CPP Design-Template.md', 3, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2023/CPP%22Design-JSON.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-12-03 16:29:43', NULL, 'C:/Users/admin/documents/demo/2023/CPP Design-Template.md', 'C:/Users/admin/documents/demo/2023/CPP Design-Template.md');
INSERT INTO `file_info` VALUES (44, 1, 'CPP Design-object-oriented.md', 3, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2023/CPP%23Design-JSON.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-12-04 16:29:43', NULL, 'C:/Users/admin/documents/demo/2023/CPP Design-object-oriented.md', 'C:/Users/admin/documents/demo/2023/CPP Design-object-oriented.md');
INSERT INTO `file_info` VALUES (45, 1, 'CPP Design-string.md', 3, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2023/CPP%24Design-JSON.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-12-05 16:29:43', NULL, 'C:/Users/admin/documents/demo/2023/CPP Design-string.md', 'C:/Users/admin/documents/demo/2023/CPP Design-string.md');
INSERT INTO `file_info` VALUES (46, 1, 'CPP Design-unable move a single step.md', 3, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2023/CPP%25Design-JSON.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-12-06 16:29:43', NULL, 'C:/Users/admin/documents/demo/2023/CPP Design-unable move a single step.md', 'C:/Users/admin/documents/demo/2023/CPP Design-unable move a single step.md');
INSERT INTO `file_info` VALUES (47, 1, 'English-Writing Vocabulary.md', 3, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2023/CPP%26Design-JSON.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-12-07 16:29:43', NULL, 'C:/Users/admin/documents/demo/2023/English-Writing Vocabulary.md', 'C:/Users/admin/documents/demo/2023/English-Writing Vocabulary.md');
INSERT INTO `file_info` VALUES (48, 1, 'English-Writing.md', 3, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2023/CPP%27Design-JSON.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-12-08 16:29:43', NULL, 'C:/Users/admin/documents/demo/2023/English-Writing.md', 'C:/Users/admin/documents/demo/2023/English-Writing.md');
INSERT INTO `file_info` VALUES (49, 1, 'IEArch-Basics.md', 3, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2023/CPP%28Design-JSON.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-12-09 16:29:43', NULL, 'C:/Users/admin/documents/demo/2023/IEArch-Basics.md', 'C:/Users/admin/documents/demo/2023/IEArch-Basics.md');
INSERT INTO `file_info` VALUES (50, 1, 'IEArch-Convolutional Neural Network.md', 3, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2023/CPP%29Design-JSON.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-12-10 16:29:43', NULL, 'C:/Users/admin/documents/demo/2023/IEArch-Convolutional Neural Network.md', 'C:/Users/admin/documents/demo/2023/IEArch-Convolutional Neural Network.md');
INSERT INTO `file_info` VALUES (51, 1, 'IEArch-Matrix Multiplication Module.md', 3, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2023/CPP%30Design-JSON.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-12-11 16:29:43', NULL, 'C:/Users/admin/documents/demo/2023/IEArch-Matrix Multiplication Module.md', 'C:/Users/admin/documents/demo/2023/IEArch-Matrix Multiplication Module.md');
INSERT INTO `file_info` VALUES (52, 1, 'IEArch-Multilayer Perceptron.md', 3, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2023/CPP%31Design-JSON.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-12-12 16:29:43', NULL, 'C:/Users/admin/documents/demo/2023/IEArch-Multilayer Perceptron.md', 'C:/Users/admin/documents/demo/2023/IEArch-Multilayer Perceptron.md');
INSERT INTO `file_info` VALUES (53, 1, 'IEArch-NaiveTPU.md', 3, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2023/CPP%32Design-JSON.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-12-13 16:29:43', NULL, 'C:/Users/admin/documents/demo/2023/IEArch-NaiveTPU.md', 'C:/Users/admin/documents/demo/2023/IEArch-NaiveTPU.md');
INSERT INTO `file_info` VALUES (54, 1, 'Ruby Design-Advanced Grammar.md', 3, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2023/CPP%33Design-JSON.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-12-14 16:29:43', NULL, 'C:/Users/admin/documents/demo/2023/Ruby Design-Advanced Grammar.md', 'C:/Users/admin/documents/demo/2023/Ruby Design-Advanced Grammar.md');
INSERT INTO `file_info` VALUES (55, 1, 'Ruby Design-Basics.md', 3, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2023/CPP%34Design-JSON.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-12-15 16:29:43', NULL, 'C:/Users/admin/documents/demo/2023/Ruby Design-Basics.md', 'C:/Users/admin/documents/demo/2023/Ruby Design-Basics.md');
INSERT INTO `file_info` VALUES (56, 1, 'Ruby Design-Function Demo.md', 3, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/2023/CPP%35Design-JSON.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-12-16 16:29:43', NULL, 'C:/Users/admin/documents/demo/2023/Ruby Design-Function Demo.md', 'C:/Users/admin/documents/demo/2023/Ruby Design-Function Demo.md');
INSERT INTO `file_info` VALUES (57, 1, 'tree-demo.md', 4, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/Bodhi/tree-demo.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-12-17 16:29:43', NULL, 'C:/Users/admin/documents/demo/Bodhi/tree-demo.md', 'C:/Users/admin/documents/demo/Bodhi/tree-demo.md');
INSERT INTO `file_info` VALUES (58, 1, 'dir1', 5, 'folder', NULL, NULL, -1, -1, b'0', b'0', b'1', NULL, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-12-18 16:29:43', NULL, 'C:/Users/admin/documents/demo/fgraph-demo/dir1', 'C:/Users/admin/documents/demo/fgraph-demo/dir1');
INSERT INTO `file_info` VALUES (59, 1, 'dir2', 5, 'folder', NULL, NULL, -1, -1, b'0', b'0', b'1', NULL, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-12-19 16:29:43', NULL, 'C:/Users/admin/documents/demo/fgraph-demo/dir2', 'C:/Users/admin/documents/demo/fgraph-demo/dir2');
INSERT INTO `file_info` VALUES (60, 1, 'doc2.md', 58, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/fgraph-demo/dir1/doc2.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-12-20 16:29:43', NULL, 'C:/Users/admin/documents/demo/fgraph-demo/dir1/doc2.md', 'C:/Users/admin/documents/demo/fgraph-demo/dir1/doc2.md');
INSERT INTO `file_info` VALUES (61, 1, 'doc3.md', 58, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/fgraph-demo/dir1/doc3.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-12-21 16:29:43', NULL, 'C:/Users/admin/documents/demo/fgraph-demo/dir1/doc3.md', 'C:/Users/admin/documents/demo/fgraph-demo/dir1/doc3.md');
INSERT INTO `file_info` VALUES (62, 1, 'doc4.md', 59, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/fgraph-demo/dir2/doc4.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-12-22 16:29:43', NULL, 'C:/Users/admin/documents/demo/fgraph-demo/dir2/doc4.md', 'C:/Users/admin/documents/demo/fgraph-demo/dir2/doc4.md');
INSERT INTO `file_info` VALUES (63, 1, 'doc5.md', 59, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/fgraph-demo/dir2/doc5.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-12-23 16:29:43', NULL, 'C:/Users/admin/documents/demo/fgraph-demo/dir2/doc5.md', 'C:/Users/admin/documents/demo/fgraph-demo/dir2/doc5.md');
INSERT INTO `file_info` VALUES (64, 1, 'doc6.md', 59, 'file', 'https://bodhi-filessystem.oss-ap-southeast-1.aliyuncs.com/demo/fgraph-demo/dir2/doc6.md', '.md', -1, -1, b'1', b'0', b'0', 1, '2024-10-22 16:29:43', 'jojo', '2024-10-22 16:29:43', 'jojo', '2024-12-24 16:29:43', NULL, 'C:/Users/admin/documents/demo/fgraph-demo/dir2/doc6.md', 'C:/Users/admin/documents/demo/fgraph-demo/dir2/doc6.md');

SET FOREIGN_KEY_CHECKS = 1;
