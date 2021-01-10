/*
 Navicat Premium Data Transfer

 Source Server         : do_so_ujicoba
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3306
 Source Schema         : ppt_dev

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 09/01/2021 10:48:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ref_classs
-- ----------------------------
DROP TABLE IF EXISTS `ref_classs`;
CREATE TABLE `ref_classs`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `jenjang` int(9) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `keterangan` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ordering` int(9) NOT NULL,
  `user_added` int(32) NOT NULL,
  `user_modified` int(9) NOT NULL,
  `date_added` datetime(0) NOT NULL,
  `date_modified` datetime(0) NOT NULL,
  `hidden` int(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jenjang_2`(`jenjang`) USING BTREE,
  INDEX `ordering`(`ordering`) USING BTREE,
  INDEX `hidden`(`hidden`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ref_classs
-- ----------------------------
INSERT INTO `ref_classs` VALUES (1, 1, 'Kelas 1 SD', 'Kelas I', '', 1, 1, 1048, '2017-01-20 12:06:37', '2018-10-31 10:07:02', 0);
INSERT INTO `ref_classs` VALUES (2, 1, 'Kelas 2 SD', 'Kelas II', '', 2, 1, 1048, '2017-01-20 12:06:58', '2018-10-31 10:07:12', 0);
INSERT INTO `ref_classs` VALUES (3, 1, 'Kelas 3 SD', 'Kelas III', '', 3, 1, 1048, '2017-01-20 12:07:12', '2018-10-31 10:07:23', 0);
INSERT INTO `ref_classs` VALUES (4, 1, 'Kelas 4 SD', 'Kelas IV', '', 4, 1, 1048, '2017-01-20 12:07:18', '2018-10-31 10:07:39', 0);
INSERT INTO `ref_classs` VALUES (5, 1, 'Kelas 5 SD', 'Kelas V', '', 5, 1, 1048, '2017-01-20 12:07:42', '2018-10-31 10:07:54', 0);
INSERT INTO `ref_classs` VALUES (6, 1, 'Kelas 6 SD', 'Kelas VI', '', 6, 1, 1048, '2017-01-20 12:07:55', '2018-10-31 10:08:21', 0);
INSERT INTO `ref_classs` VALUES (7, 2, 'Kelas 1 SMP', 'Kelas VII', '', 7, 1, 1048, '2017-01-20 12:08:06', '2018-10-31 10:08:48', 0);
INSERT INTO `ref_classs` VALUES (8, 2, 'Kelas 2 SMP', 'Kelas VIII', '', 8, 1, 1048, '2017-01-20 12:08:24', '2018-10-31 10:09:09', 0);
INSERT INTO `ref_classs` VALUES (9, 2, 'Kelas 3 SMP', 'Kelas IX', '', 9, 1, 1048, '2017-01-20 12:08:35', '2018-10-31 10:09:33', 0);
INSERT INTO `ref_classs` VALUES (10, 3, 'Kelas 1 SMA', 'Kelas X', '', 10, 1, 1, '2017-01-20 12:08:50', '2017-01-20 21:18:04', 0);
INSERT INTO `ref_classs` VALUES (11, 3, 'Kelas 2 SMA', 'Kelas XI', '', 11, 1, 1, '2017-01-20 12:09:02', '2017-01-20 21:18:10', 0);
INSERT INTO `ref_classs` VALUES (12, 3, 'Kelas 3 SMA', 'Kelas XII', '', 12, 1, 1, '2017-01-20 12:09:14', '2017-01-20 21:18:18', 0);
INSERT INTO `ref_classs` VALUES (13, 7, 'Umum', 'Umum', '', 21, 1070, 1048, '2018-04-12 23:19:02', '2018-10-31 08:59:34', 0);
INSERT INTO `ref_classs` VALUES (14, 8, 'Ujian Masuk PT', 'UMPT', 'Tes Potensi Akademik masuk Perguruan Tinggi atau Sekolah Kedinasan', 19, 1048, 1048, '2018-08-11 18:05:15', '2018-11-14 10:04:14', 0);
INSERT INTO `ref_classs` VALUES (15, 9, 'Prodi Teknik SIpil', 'T. Sipil', '', 20, 1, 1048, '2018-09-05 13:14:59', '2018-10-31 08:59:26', 0);
INSERT INTO `ref_classs` VALUES (16, 4, 'Kelas 1 SMK', 'Kelas X SMK', '', 13, 1048, 1048, '2018-10-27 20:40:16', '2018-10-27 20:45:29', 0);
INSERT INTO `ref_classs` VALUES (17, 4, 'Kelas 2 SMK', 'Kelas XI SMK', '', 14, 1048, 1048, '2018-10-27 20:40:34', '2018-10-27 20:45:38', 0);
INSERT INTO `ref_classs` VALUES (18, 4, 'Kelas 3 SMK', 'Kelas XII SMK', '', 15, 1048, 1048, '2018-10-27 20:41:02', '2018-10-27 20:45:47', 0);
INSERT INTO `ref_classs` VALUES (19, 10, 'Kelas 1 MA', 'Kelas X MA', '', 16, 1048, 0, '2018-10-31 08:58:20', '2018-10-31 08:58:20', 0);
INSERT INTO `ref_classs` VALUES (20, 10, 'Kelas 2 MA', 'Kelas XI MA', '', 17, 1048, 0, '2018-10-31 08:58:38', '2018-10-31 08:58:38', 0);
INSERT INTO `ref_classs` VALUES (21, 10, 'Kelas 3 MA', 'Kelas XII MA', '', 18, 1048, 0, '2018-10-31 08:58:55', '2018-10-31 08:58:55', 0);
INSERT INTO `ref_classs` VALUES (22, 11, 'Ekstrakurikuler', 'Extra', '', 0, 1048, 1048, '2018-11-19 22:20:54', '2018-11-19 23:12:54', 0);
INSERT INTO `ref_classs` VALUES (23, 12, 'Budaya Daerah', 'BD', '', 0, 1048, 1048, '2019-01-30 12:03:04', '2019-01-31 19:53:09', 0);
INSERT INTO `ref_classs` VALUES (24, 12, 'Budaya Komering', 'BK', '', 0, 1048, 0, '2019-01-30 12:09:02', '2019-01-30 12:09:02', 1);
INSERT INTO `ref_classs` VALUES (25, 13, 'Ujian Perusahaan', 'UMP', '', 24, 1048, 0, '2019-07-11 19:58:37', '2019-07-11 19:58:37', 0);

-- ----------------------------
-- Table structure for ref_jenjangs
-- ----------------------------
DROP TABLE IF EXISTS `ref_jenjangs`;
CREATE TABLE `ref_jenjangs`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `keterangan` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ordering` int(9) NOT NULL,
  `user_added` int(32) NOT NULL,
  `user_modified` int(9) NOT NULL,
  `date_added` datetime(0) NOT NULL,
  `date_modified` datetime(0) NOT NULL,
  `hidden` int(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ordering_2`(`ordering`) USING BTREE,
  INDEX `hidden`(`hidden`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ref_jenjangs
-- ----------------------------
INSERT INTO `ref_jenjangs` VALUES (1, 'Sekolah Dasar', 'SD', '', 6, 1, 1048, '2017-01-20 20:59:14', '2020-07-08 12:54:17', 0);
INSERT INTO `ref_jenjangs` VALUES (2, 'Sekolah Menengah Pertama', 'SMP', '', 8, 1, 1048, '2017-01-20 20:59:37', '2020-07-08 12:54:39', 0);
INSERT INTO `ref_jenjangs` VALUES (3, 'Sekolah Menengah Atas', 'SMA', '', 10, 1, 1048, '2017-01-20 20:59:49', '2020-07-08 12:54:51', 0);
INSERT INTO `ref_jenjangs` VALUES (4, 'Sekolah Menengah Kejuruan', 'SMK', '', 12, 1, 1048, '2017-01-20 21:00:08', '2020-07-08 12:55:07', 0);
INSERT INTO `ref_jenjangs` VALUES (7, 'Training', 'Training', '', 15, 1070, 1048, '2018-04-12 23:17:08', '2020-07-08 12:55:24', 0);
INSERT INTO `ref_jenjangs` VALUES (8, 'UM Perguruan Tinggi', 'UMPT', 'Lulus SMA menuju kuliah. Bisa SBMPTN atau sekolah kedinasan.', 13, 1048, 1048, '2018-08-11 18:03:33', '2020-07-08 12:55:13', 0);
INSERT INTO `ref_jenjangs` VALUES (9, 'S1', 'S1', '', 14, 1, 1048, '2018-09-05 13:14:22', '2020-07-08 12:55:18', 0);
INSERT INTO `ref_jenjangs` VALUES (10, 'Madrasah Aliyah', 'MA', '', 11, 1048, 1048, '2018-10-31 08:56:28', '2020-07-08 12:55:01', 0);
INSERT INTO `ref_jenjangs` VALUES (11, 'Ekstrakurikuler', 'EX', '', 17, 1048, 1048, '2018-11-19 22:20:00', '2020-07-08 12:55:34', 0);
INSERT INTO `ref_jenjangs` VALUES (12, 'Budaya Daerah', 'BD', '', 1, 1048, 1048, '2019-01-30 12:02:16', '2019-10-07 18:18:36', 0);
INSERT INTO `ref_jenjangs` VALUES (13, 'Tes Perusahaan', 'TP', 'Ujian di lingkungan perusahaan, baik untuk ujian masuk karyawan maupun untuk kenaikan jenjang', 16, 1048, 1048, '2019-07-11 19:55:19', '2020-07-08 12:55:30', 0);
INSERT INTO `ref_jenjangs` VALUES (14, 'Madrasah Tsanawiyah', 'MTs', '', 9, 1048, 1048, '2019-10-07 18:18:20', '2020-07-08 12:58:23', 0);
INSERT INTO `ref_jenjangs` VALUES (15, 'Madrasah Ibtidaiyah', 'MI', '', 7, 1048, 1048, '2019-10-07 20:06:03', '2020-07-08 12:58:45', 0);
INSERT INTO `ref_jenjangs` VALUES (16, 'Ujian Kompetensi Guru', 'UKG', 'Khusus untuk persiapan-persiapan bagi guru mengikuti ujian kompetensi guru, yang rutin dilaksanakan setiap tahun.', 2, 1048, 1048, '2019-11-13 20:21:01', '2020-07-08 12:53:55', 0);
INSERT INTO `ref_jenjangs` VALUES (17, 'PAUD', 'PAUD', '', 3, 1048, 1048, '2020-07-08 12:34:23', '2020-07-08 12:54:01', 0);
INSERT INTO `ref_jenjangs` VALUES (18, 'TK A', 'TKA', '', 4, 1048, 1048, '2020-07-08 12:34:37', '2020-07-08 12:54:07', 0);
INSERT INTO `ref_jenjangs` VALUES (19, 'TK B', 'TKB', '', 5, 1048, 1048, '2020-07-08 12:34:47', '2020-07-08 12:54:12', 0);
INSERT INTO `ref_jenjangs` VALUES (20, 'Podcast', 'pod', '', 18, 1048, 0, '2020-07-23 14:03:08', '2020-07-23 14:03:08', 0);

-- ----------------------------
-- Table structure for ref_kurikulums
-- ----------------------------
DROP TABLE IF EXISTS `ref_kurikulums`;
CREATE TABLE `ref_kurikulums`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `jenjang` int(9) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `keterangan` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ordering` int(9) NOT NULL,
  `user_added` int(32) NOT NULL,
  `user_modified` int(9) NOT NULL,
  `date_added` datetime(0) NOT NULL,
  `date_modified` datetime(0) NOT NULL,
  `hidden` int(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jenjang`(`jenjang`, `ordering`, `hidden`) USING BTREE,
  INDEX `jenjang_2`(`jenjang`) USING BTREE,
  INDEX `ordering`(`ordering`) USING BTREE,
  INDEX `hidden`(`hidden`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ref_kurikulums
-- ----------------------------
INSERT INTO `ref_kurikulums` VALUES (2, 1, 'Kurikulum 2006 (KTSP)', 'KTSP', '', 5, 1, 1048, '2017-02-05 13:56:23', '2018-11-07 19:19:32', 0);
INSERT INTO `ref_kurikulums` VALUES (3, 2, 'Kurikulum 2006 (KTSP)', 'KTSP', '', 6, 1, 1048, '2017-02-05 13:56:38', '2018-11-07 19:19:39', 0);
INSERT INTO `ref_kurikulums` VALUES (4, 3, 'Kurikulum 2006 (KTSP)', 'KTSP', '', 7, 1, 1048, '2017-02-05 13:56:47', '2018-11-07 19:19:46', 0);
INSERT INTO `ref_kurikulums` VALUES (5, 4, 'Kurikulum 2006 (KTSP)', 'KTSP', '', 8, 1, 1048, '2017-02-05 13:56:57', '2018-11-07 19:19:52', 0);
INSERT INTO `ref_kurikulums` VALUES (6, 1, 'Kurikulum 2004 (KBK)', 'KBK', '', 1, 1, 1048, '2017-02-05 13:57:41', '2018-11-07 19:18:23', 0);
INSERT INTO `ref_kurikulums` VALUES (7, 2, 'Kurikulum 2004 (KBK)', 'KBK', '', 2, 1, 1048, '2017-02-05 13:57:56', '2018-11-07 19:18:59', 0);
INSERT INTO `ref_kurikulums` VALUES (8, 3, 'Kurikulum 2004 (KBK)', 'KBK', '', 3, 1, 1048, '2017-02-05 13:58:06', '2018-11-07 19:19:11', 0);
INSERT INTO `ref_kurikulums` VALUES (9, 4, 'Kurikulum 2004 (KBK)', 'KBK', '', 4, 1, 1048, '2017-02-05 13:58:15', '2018-11-07 19:19:19', 0);
INSERT INTO `ref_kurikulums` VALUES (10, 1, 'Kurikulum 2013 (K-13)', 'K-13', '', 9, 1, 1048, '2017-02-05 13:59:30', '2018-11-07 19:20:10', 0);
INSERT INTO `ref_kurikulums` VALUES (11, 2, 'Kurikulum 2013 (K-13)', 'K-13', '', 10, 1, 1048, '2017-02-05 13:59:41', '2018-11-07 19:20:16', 0);
INSERT INTO `ref_kurikulums` VALUES (12, 3, 'Kurikulum 2013 (K-13)', 'K-13', '', 11, 1, 1048, '2017-02-05 13:59:49', '2018-11-07 19:20:23', 0);
INSERT INTO `ref_kurikulums` VALUES (13, 4, 'Kurikulum 2013 (K-13)', 'K-13', '', 12, 1, 1048, '2017-02-05 14:00:00', '2018-11-07 19:20:28', 0);
INSERT INTO `ref_kurikulums` VALUES (14, 7, 'Umum', 'Umum', '', 21, 1070, 1048, '2018-04-12 23:20:42', '2018-11-07 19:27:12', 0);
INSERT INTO `ref_kurikulums` VALUES (15, 8, 'Tes Potensi Akademik', 'TPA', 'Kurikulum TPA', 19, 1048, 1048, '2018-08-11 18:06:09', '2018-11-07 19:27:00', 0);
INSERT INTO `ref_kurikulums` VALUES (16, 9, 'Nasional', '', '', 20, 1, 1048, '2018-09-18 07:54:40', '2018-11-07 19:27:06', 0);
INSERT INTO `ref_kurikulums` VALUES (17, 4, 'Kurikulum 2013 Revisi (K-13 Rev)', 'K-13 Rev', '', 17, 1048, 1048, '2018-11-02 18:21:24', '2018-11-07 19:26:32', 0);
INSERT INTO `ref_kurikulums` VALUES (18, 10, 'Kurikulum 2013 (K-13)', 'K-13', '', 13, 1048, 1048, '2018-11-07 19:17:53', '2018-11-07 19:20:54', 0);
INSERT INTO `ref_kurikulums` VALUES (19, 1, 'Kurikulum 2013 Revisi (K-13 Rev)', 'K-13 Rev', '', 14, 1048, 0, '2018-11-07 19:21:33', '2018-11-07 19:21:33', 0);
INSERT INTO `ref_kurikulums` VALUES (20, 2, 'Kurikulum 2013 Revisi (K-13 Rev)', 'K-13 Rev', '', 15, 1048, 0, '2018-11-07 19:21:59', '2018-11-07 19:21:59', 0);
INSERT INTO `ref_kurikulums` VALUES (21, 3, 'Kurikulum 2013 Revisi (K-13 Rev)', 'K-13 Rev', '', 16, 1048, 1048, '2018-11-07 19:22:20', '2018-11-07 19:22:33', 0);
INSERT INTO `ref_kurikulums` VALUES (22, 4, 'Kurikulum 2013 Revisi (K-13 Rev)', 'K-13 Rev', '', 17, 1048, 0, '2018-11-07 19:23:01', '2018-11-07 19:23:01', 1);
INSERT INTO `ref_kurikulums` VALUES (23, 10, 'Kurikulum 2013 Revisi (K-13 Rev)', 'K-13 Rev', '', 18, 1048, 1048, '2018-11-07 19:23:32', '2018-11-07 19:26:42', 0);
INSERT INTO `ref_kurikulums` VALUES (24, 11, 'Ekstrakurikuler', 'Ex', '', 0, 1048, 0, '2018-11-19 22:21:24', '2018-11-19 22:21:24', 0);
INSERT INTO `ref_kurikulums` VALUES (25, 12, 'Kebudayaan', '', '', 0, 1048, 0, '2019-01-30 12:03:27', '2019-01-30 12:03:27', 0);
INSERT INTO `ref_kurikulums` VALUES (26, 13, 'Ujian Masuk', 'UM', 'Ujian Masuk Perusahaan', 24, 1048, 0, '2019-07-11 20:08:26', '2019-07-11 20:08:26', 0);

-- ----------------------------
-- Table structure for ref_lessons
-- ----------------------------
DROP TABLE IF EXISTS `ref_lessons`;
CREATE TABLE `ref_lessons`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `religion` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `religion_lesson` int(1) NOT NULL,
  `class_lesson` int(9) NOT NULL,
  `kurikulum` int(9) NOT NULL,
  `lesson_group_id` int(4) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `keterangan` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hide_icon` int(1) NOT NULL,
  `user_added` int(32) NOT NULL,
  `user_modified` int(9) NOT NULL,
  `date_added` datetime(0) NOT NULL,
  `date_modified` datetime(0) NOT NULL,
  `hidden` int(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `religion_2`(`religion`) USING BTREE,
  INDEX `religion_lesson`(`religion_lesson`) USING BTREE,
  INDEX `class_lesson`(`class_lesson`) USING BTREE,
  INDEX `kurikulum`(`kurikulum`) USING BTREE,
  INDEX `hidden`(`hidden`) USING BTREE,
  INDEX `name`(`name`) USING BTREE,
  INDEX `lesson_group`(`lesson_group_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1130 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ref_lessons
-- ----------------------------
INSERT INTO `ref_lessons` VALUES (1, '', 0, 10, 12, NULL, 'Bahasa Indonesia', 'BI', '', '9dg6a4ra93ggzpbazx1vh72u1kaclaqh.png', 0, 1, 1048, '2017-01-20 11:54:57', '2019-01-22 22:21:47', 0);
INSERT INTO `ref_lessons` VALUES (2, '', 0, 10, 12, NULL, 'Bahasa Inggris', 'ENG', '', 'wdt4kc1oa1v4evaxqtkoed65aftgfbyo.png', 0, 1, 1048, '2017-01-20 11:55:26', '2019-01-22 21:46:46', 0);
INSERT INTO `ref_lessons` VALUES (3, '', 0, 10, 12, NULL, 'Kimia', 'KIM', '', '95xjeinawwh9tf3rp1fq5dgs8ksf183i.png', 0, 1, 1048, '2017-01-20 11:55:38', '2019-01-22 21:49:49', 0);
INSERT INTO `ref_lessons` VALUES (4, '', 0, 10, 12, NULL, 'Fisika', 'FIS', '', 'qcza5h5itd76lgr2lf30i3bp2buoc8ld.png', 0, 1, 1048, '2017-01-20 11:55:46', '2019-01-22 21:51:29', 0);
INSERT INTO `ref_lessons` VALUES (5, '', 0, 10, 12, NULL, 'Matematika', 'MTK', '', 'xl7kuhkcgozjszmkohrr6nyk4f7m20hm.png', 0, 1, 1048, '2017-01-20 11:55:54', '2019-01-22 21:49:16', 0);
INSERT INTO `ref_lessons` VALUES (6, '', 0, 10, 12, NULL, 'Biologi', 'BIO', '', '0gedblvthcroc89k8ogg351nru3rdxyx.png', 0, 1, 1048, '2017-01-20 11:56:01', '2019-01-22 21:50:54', 0);
INSERT INTO `ref_lessons` VALUES (8, 'ISLAM', 1, 1, 10, 7, 'Pendidikan Agama Islam', '', '', 'l0g33uxvp4688g6u61170b6dm7t1h4bq.png', 0, 1, 1048, '2017-01-20 22:42:58', '2020-03-17 20:03:29', 0);
INSERT INTO `ref_lessons` VALUES (9, '', 0, 1, 10, 2, 'Bahasa Indonesia', '', '', 'x48wuh2z4g6ls5ozkrbruru0nc7lfk9y.png', 0, 1, 1048, '2017-01-20 22:43:08', '2020-03-17 20:03:30', 0);
INSERT INTO `ref_lessons` VALUES (10, '', 0, 1, 10, 3, 'PPKn', '', '', 'esn5xgqjk4v07beage6ag1ppx4robys0.png', 0, 1, 1048, '2017-01-20 22:43:16', '2020-08-03 15:52:09', 0);
INSERT INTO `ref_lessons` VALUES (11, '', 0, 1, 10, 1, 'Matematika', '', '', 'mnl33lhtiwhcb3qatkdl3opwtbg4omuu.png', 0, 1, 1048, '2017-01-20 22:43:22', '2020-08-03 15:52:08', 0);
INSERT INTO `ref_lessons` VALUES (12, '', 0, 1, 10, 6, 'Kesenian', '', '', '9nwdngwqmaizy04f3fcmnr84wrj04had.png', 0, 1, 1048, '2017-01-20 22:43:32', '2020-03-17 20:03:36', 0);
INSERT INTO `ref_lessons` VALUES (13, '', 0, 1, 10, 8, 'Pendidikan Jasmani dan Olahraga Kesehatan', '', '', 'gwcbz3zjsybvriocss1lu589uy2iqzzs.png', 0, 1, 1048, '2017-01-20 22:43:39', '2020-03-17 20:03:35', 0);
INSERT INTO `ref_lessons` VALUES (14, '', 0, 1, 10, NULL, 'Pengetahuan Umum', '', '', 'sbe4dslbms6b9qk7eep8gm2td98rqkvj.png', 0, 1, 1048, '2017-01-20 22:43:46', '2019-04-15 09:43:28', 0);
INSERT INTO `ref_lessons` VALUES (15, 'ISLAM', 1, 2, 19, 7, 'Pendidikan Agama Islam', '', '', 'aytqxh023juyw6hn8bgc3bdd13zibgjt.png', 0, 1, 1048, '2017-01-20 23:07:08', '2020-04-29 13:55:41', 0);
INSERT INTO `ref_lessons` VALUES (16, '', 0, 2, 19, 2, 'Bahasa Indonesia', '', '', '2jvzzdo4qizialzmz4fw8hy3t2snijrz.png', 0, 1, 1048, '2017-01-20 23:07:08', '2020-04-29 13:55:34', 0);
INSERT INTO `ref_lessons` VALUES (17, '', 0, 2, 19, 3, 'PPKn', '', '', 'l94obfohk2xzmn16xlvypv0elmk7br8s.png', 0, 1, 1048, '2017-01-20 23:07:08', '2020-04-29 13:55:28', 0);
INSERT INTO `ref_lessons` VALUES (18, '', 0, 2, 19, 1, 'Matematika', '', '', '9jy7pp9bfwnz0bpv02h1prho0qytukjq.png', 0, 1, 1048, '2017-01-20 23:07:08', '2020-04-29 13:55:22', 0);
INSERT INTO `ref_lessons` VALUES (19, '', 0, 2, 19, 6, 'Kesenian', '', '', 'q7h6n4ddv40kux0y96n7lprgigbc0rt0.png', 0, 1, 1048, '2017-01-20 23:07:08', '2020-04-29 13:55:16', 0);
INSERT INTO `ref_lessons` VALUES (20, '', 0, 2, 19, 8, 'Pendidikan Jasmani dan Olahraga Kesehatan', '', '', 'f7o7ljtl5tsmzs04nu0slk0vwljy99ys.png', 0, 1, 1048, '2017-01-20 23:07:08', '2020-04-29 13:55:10', 0);
INSERT INTO `ref_lessons` VALUES (21, '', 0, 2, 19, NULL, 'Pengetahuan Umum', '', '', 'b0opp9yzwadiz18brn0r26pqbf6s0kac.png', 0, 1, 1048, '2017-01-20 23:07:08', '2020-04-29 13:55:02', 0);
INSERT INTO `ref_lessons` VALUES (22, 'ISLAM', 1, 3, 19, 7, 'Pendidikan Agama Islam', '', '', '3bao17f25jihtm0a5dxk9kdq7wa84eof.png', 0, 1, 1048, '2017-01-20 23:07:21', '2020-04-29 13:46:42', 0);
INSERT INTO `ref_lessons` VALUES (23, '', 0, 3, 19, 2, 'Bahasa Indonesia', '', '', '4pbtv22174wxhwozovzujvrbc5jwvyyq.png', 0, 1, 1048, '2017-01-20 23:07:21', '2020-04-29 13:46:32', 0);
INSERT INTO `ref_lessons` VALUES (24, '', 0, 3, 19, 3, 'PPKn', '', '', 'waukjgwqbq16lbm12v2azj2cx96p41dl.png', 0, 1, 1048, '2017-01-20 23:07:21', '2020-04-29 13:46:26', 0);
INSERT INTO `ref_lessons` VALUES (25, '', 0, 3, 19, 1, 'Matematika', '', '', 'k7jqv8wff3rylrjc7l21wlqq2zr5afje.png', 0, 1, 1048, '2017-01-20 23:07:21', '2020-04-29 13:46:20', 0);
INSERT INTO `ref_lessons` VALUES (26, '', 0, 3, 19, 6, 'Kesenian', '', '', '18iju9nijdqdqrsiz93qzudzifsw5w38.png', 0, 1, 1048, '2017-01-20 23:07:21', '2020-04-29 13:46:07', 0);
INSERT INTO `ref_lessons` VALUES (27, '', 0, 3, 19, 8, 'Pendidikan Jasmani dan Olahraga Kesehatan', '', '', 'pbpp0jl0x5k49nvsnuzvomsd135trupp.png', 0, 1, 1048, '2017-01-20 23:07:21', '2020-04-29 13:46:14', 0);
INSERT INTO `ref_lessons` VALUES (28, '', 0, 3, 19, NULL, 'Pengetahuan Umum', '', '', '3vonfzy6f00cjb22ffqwzb60y65f4lsr.png', 0, 1, 1048, '2017-01-20 23:07:21', '2020-04-29 13:46:00', 0);
INSERT INTO `ref_lessons` VALUES (29, 'ISLAM', 1, 4, 10, 7, 'Pendidikan Agama Islam', '', '', '4jk1gufknwp0kjpx6pxdeslsu47b32fz.png', 0, 1, 1, '2017-01-20 23:07:25', '2020-09-04 15:02:16', 0);
INSERT INTO `ref_lessons` VALUES (30, '', 0, 4, 10, 2, 'Bahasa Indonesia', '', '', '5v34d63ckteb5agr548msye6a592238k.png', 0, 1, 1, '2017-01-20 23:07:25', '2020-09-04 14:59:54', 0);
INSERT INTO `ref_lessons` VALUES (31, '', 0, 4, 10, 3, 'PPKn', '', '', '8sksbezkfi6km7zu82qbeg7sc271120r.png', 0, 1, 1, '2017-01-20 23:07:25', '2020-09-04 15:02:33', 0);
INSERT INTO `ref_lessons` VALUES (32, '', 0, 4, 10, 1, 'Matematika', '', '', 'bxwz7hu31iu1g3b5xdm42v1vw401wd5r.png', 0, 1, 1, '2017-01-20 23:07:25', '2020-09-10 22:18:38', 0);
INSERT INTO `ref_lessons` VALUES (33, '', 0, 4, 10, 6, 'Kesenian', '', '', 'ggrmfn4zirt6tmqj2o3nzqvta0w0pz6i.png', 0, 1, 1, '2017-01-20 23:07:25', '2020-09-10 22:19:15', 0);
INSERT INTO `ref_lessons` VALUES (34, '', 0, 4, 10, 8, 'Pendidikan Jasmani dan Olahraga Kesehatan', '', '', '4q0bgc345axhx36tnhjtkwu30q7r1x5w.png', 0, 1, 1, '2017-01-20 23:07:25', '2020-09-10 22:18:57', 0);
INSERT INTO `ref_lessons` VALUES (35, '', 0, 4, 19, NULL, 'Pengetahuan Umum', '', '', '8juigucouc2hyqekx04uotkhxnodgq7d.png', 0, 1, 1048, '2017-01-20 23:07:25', '2020-04-29 14:09:11', 0);
INSERT INTO `ref_lessons` VALUES (36, 'ISLAM', 1, 5, 10, 7, 'Pendidikan Agama Islam', '', '', '1636lgu2hybz09e7zrdhu3fj10ndukpg.png', 0, 1, 1, '2017-01-20 23:07:27', '2020-09-10 22:05:23', 0);
INSERT INTO `ref_lessons` VALUES (37, '', 0, 5, 10, 2, 'Bahasa Indonesia', '', '', 'ggh2r0v80khhndzvj19xqbe0l6ej8q9f.png', 0, 1, 1, '2017-01-20 23:07:27', '2020-09-04 14:56:31', 0);
INSERT INTO `ref_lessons` VALUES (38, '', 0, 5, 10, 3, 'PPKn', '', '', '1gln4kzlq4a54c97zpybinep8pjvg6s1.png', 0, 1, 1, '2017-01-20 23:07:27', '2020-09-10 22:05:41', 0);
INSERT INTO `ref_lessons` VALUES (39, '', 0, 5, 10, 1, 'Matematika', '', '', '6nu4g0otab07abgpxovkvrbkbmyje86j.png', 0, 1, 1, '2017-01-20 23:07:27', '2020-09-10 22:06:06', 0);
INSERT INTO `ref_lessons` VALUES (40, '', 0, 5, 10, 6, 'Kesenian', '', '', 'ulclb9u6da7vnhanmkcu93g5iu529d67.png', 0, 1, 1, '2017-01-20 23:07:27', '2020-09-10 22:06:22', 0);
INSERT INTO `ref_lessons` VALUES (41, '', 0, 5, 10, 8, 'Pendidikan Jasmani dan Olahraga Kesehatan', '', '', 'vkaermny8ddkvj389qtsrmb6saba98tk.png', 0, 1, 1, '2017-01-20 23:07:27', '2020-09-10 22:06:39', 0);
INSERT INTO `ref_lessons` VALUES (42, '', 0, 5, 10, NULL, 'Pengetahuan Umum', '', '', 'kdzxce0cj6zof96staibiz9pnwmtqyfo.png', 0, 1, 1, '2017-01-20 23:07:27', '2020-09-10 22:06:59', 0);
INSERT INTO `ref_lessons` VALUES (43, 'ISLAM', 1, 6, 10, 7, 'Pendidikan Agama Islam', '', '', 'x0xceq07hgwsyxv11x2mfte3q30yh9yb.png', 0, 1, 1, '2017-01-20 23:07:31', '2020-09-10 21:56:12', 0);
INSERT INTO `ref_lessons` VALUES (44, '', 0, 6, 10, 2, 'Bahasa Indonesia', '', '', 'g8e3i0rfd5yrsee816aa1i1oe4wk57xi.png', 0, 1, 1048, '2017-01-20 23:07:31', '2018-10-09 00:23:56', 0);
INSERT INTO `ref_lessons` VALUES (45, '', 0, 6, 10, 3, 'PPKn', '', '', 'a9toj08jxgudk8zpoufsytxzvq7e7xxj.png', 0, 1, 1048, '2017-01-20 23:07:31', '2019-07-13 14:06:37', 0);
INSERT INTO `ref_lessons` VALUES (46, '', 0, 6, 10, 1, 'Matematika', '', '', 'ws1rcmz3qs1xa5r0opzgz9le933kowl1.png', 0, 1, 1048, '2017-01-20 23:07:31', '2018-10-09 08:51:51', 0);
INSERT INTO `ref_lessons` VALUES (47, '', 0, 6, 10, 6, 'Kesenian', '', '', 'ttimte8v2r9qy7ip4tqh5iu7xtrv7dzc.png', 0, 1, 1048, '2017-01-20 23:07:31', '2020-03-17 20:03:49', 0);
INSERT INTO `ref_lessons` VALUES (48, '', 0, 6, 10, 8, 'Pendidikan Jasmani dan Olahraga Kesehatan', '', '', '2fmsh8mi1hjjoscrfr8m5zufk10kc05o.png', 0, 1, 1048, '2017-01-20 23:07:31', '2018-10-09 08:55:33', 0);
INSERT INTO `ref_lessons` VALUES (49, '', 0, 6, 10, NULL, 'Pengetahuan Umum', '', '', 'nxk83cfh7n838bkl9mj5ir5btxf0kmid.png', 0, 1, 1, '2017-01-20 23:07:31', '2020-09-15 00:50:25', 0);
INSERT INTO `ref_lessons` VALUES (50, '', 0, 11, 12, NULL, 'Bahasa Indonesia', 'BI', '', '7h43a39fxcl3twdekzxi1cgim3nl3jve.png', 0, 1, 1048, '2017-01-20 23:07:43', '2019-01-22 22:22:02', 0);
INSERT INTO `ref_lessons` VALUES (51, '', 0, 11, 12, NULL, 'Bahasa Inggris', 'ENG', '', 'kiw4gu38i2di5cy1dbm2btjlmed2jr0b.png', 0, 1, 1048, '2017-01-20 23:07:43', '2019-01-22 21:32:59', 0);
INSERT INTO `ref_lessons` VALUES (52, '', 0, 11, 12, NULL, 'Kimia', 'KIM', '', 'kcmq9vgib0va7io25dc8bl0bah2oognd.png', 0, 1, 1048, '2017-01-20 23:07:43', '2019-01-22 21:42:41', 0);
INSERT INTO `ref_lessons` VALUES (53, '', 0, 11, 12, NULL, 'Fisika', 'FIS', '', 'eq2hcnsybg7fimvtfcrj5529eynf05j4.png', 0, 1, 1048, '2017-01-20 23:07:43', '2019-01-22 21:40:15', 0);
INSERT INTO `ref_lessons` VALUES (54, '', 0, 11, 12, NULL, 'Matematika', 'MTK', '', 'ghf6sp9m0s9kjtfmdqf3zdl1iqp50r8v.png', 0, 1, 1048, '2017-01-20 23:07:43', '2019-01-22 22:24:31', 0);
INSERT INTO `ref_lessons` VALUES (55, '', 0, 11, 12, NULL, 'Biologi', 'BIO', '', 'dbcv0ifnx1ayy460s2xbwhmtguduckbe.png', 0, 1, 1048, '2017-01-20 23:07:43', '2019-01-22 21:34:31', 0);
INSERT INTO `ref_lessons` VALUES (56, '', 0, 12, 12, NULL, 'Bahasa Indonesia', 'BI', '', 'gwega0jv4igx1tlu9cpodky22g0m4xpz.png', 0, 1, 1048, '2017-01-20 23:07:48', '2019-01-22 22:22:15', 0);
INSERT INTO `ref_lessons` VALUES (57, '', 0, 12, 12, NULL, 'Bahasa Inggris', 'ENG', '', 'whfzbzkh3c0we4b4i4vsnb982tgzdbfh.png', 0, 1, 1048, '2017-01-20 23:07:48', '2019-01-22 21:33:16', 0);
INSERT INTO `ref_lessons` VALUES (58, '', 0, 12, 12, NULL, 'Kimia', 'KIM', '', '542uzt8kzzktsv04ovmgq79hkfwzubxr.png', 0, 1, 1048, '2017-01-20 23:07:48', '2019-01-22 17:57:44', 0);
INSERT INTO `ref_lessons` VALUES (59, '', 0, 12, 12, NULL, 'Fisika', 'FIS', '', 'tz6zculrklrvyacwb9a8i82nuhg3nycc.png', 0, 1, 1048, '2017-01-20 23:07:48', '2019-01-22 18:26:07', 0);
INSERT INTO `ref_lessons` VALUES (60, '', 0, 12, 12, NULL, 'Matematika', 'MTK', '', '0vsh5x4pstbggfc5kj9lu1ixm8x5vhie.png', 0, 1, 1048, '2017-01-20 23:07:48', '2019-01-22 17:56:08', 0);
INSERT INTO `ref_lessons` VALUES (61, '', 0, 12, 12, NULL, 'Biologi', 'BIO', '', 'co4ie30pwlct1q6fqnasp14i5o2tbxp3.png', 0, 1, 1048, '2017-01-20 23:07:48', '2019-01-22 18:14:33', 0);
INSERT INTO `ref_lessons` VALUES (62, '', 0, 7, 11, NULL, 'Pendidikan Agama dan Budi Pekerti', '', '', 'dre8josv77uzkf4x7d0h2q3dxnncpk1m.png', 1, 1, 1048, '2017-01-20 23:09:36', '2019-07-18 08:46:07', 1);
INSERT INTO `ref_lessons` VALUES (63, '', 0, 7, 11, 14, 'Pendidikan Pancasila dan Kewarganegaraan', '', '', 'pzkl6f2uc2po084x3xdja1hmrwrqfkaf.png', 0, 1, 1048, '2017-01-20 23:09:44', '2018-11-02 20:41:13', 0);
INSERT INTO `ref_lessons` VALUES (64, '', 0, 7, 11, 12, 'Bahasa Indonesia', '', '', 'xszgkbwudfiigww3cnn8rhddbokz27hu.png', 0, 1, 1048, '2017-01-20 23:09:53', '2018-11-02 19:27:17', 0);
INSERT INTO `ref_lessons` VALUES (65, '', 0, 7, 11, 9, 'Matematika', '', '', 'z9kjlum19svyhk46f46npsws1lzbp7pv.png', 0, 1, 1048, '2017-01-20 23:10:01', '2018-11-02 19:28:13', 0);
INSERT INTO `ref_lessons` VALUES (66, '', 0, 7, 11, 10, 'Ilmu Pengetahuan Alam', '', '', '7qkr2raeyhqqfw2b8or63poqfa3b3wik.png', 0, 1, 1048, '2017-01-20 23:10:11', '2018-11-02 19:27:49', 0);
INSERT INTO `ref_lessons` VALUES (67, '', 0, 7, 11, 11, 'Ilmu Pengetahuan Sosial', '', '', 'ouxh95d0wd2mbd9tqx5zrihiu17lnitc.png', 0, 1, 1048, '2017-01-20 23:10:19', '2018-11-02 19:28:01', 0);
INSERT INTO `ref_lessons` VALUES (68, '', 0, 7, 11, 13, 'Bahasa Inggris', '', '', 'y97b9docyokzravpgmt4ssnyh9kf1smz.png', 0, 1, 1048, '2017-01-20 23:10:25', '2018-11-02 19:27:32', 0);
INSERT INTO `ref_lessons` VALUES (70, '', 0, 8, 11, NULL, 'Pendidikan Agama dan Budi Pekerti', '', '', 'kzpgmvm3popt6yic8eeq6b156h67bho3.png', 1, 1, 1, '2017-01-20 23:11:23', '2019-01-31 08:01:42', 1);
INSERT INTO `ref_lessons` VALUES (71, '', 0, 8, 20, 14, 'Pendidikan Pancasila dan Kewarganegaraan', '', '', '57enxx0n0p4xt7r7x958t5vfd0i0jrzt.png', 0, 1, 1048, '2017-01-20 23:11:23', '2020-03-21 11:27:46', 0);
INSERT INTO `ref_lessons` VALUES (72, '', 0, 8, 20, NULL, 'Bahasa Indonesia', '', '', 'l2ensz1rg48ga8xe16udbimn1lz0c2lk.png', 0, 1, 1048, '2017-01-20 23:11:23', '2020-03-21 11:27:57', 0);
INSERT INTO `ref_lessons` VALUES (73, '', 0, 8, 20, 9, 'Matematika', '', '', 'zl40w6sllgbc9p72624cygm94demlbdh.png', 0, 1, 1048, '2017-01-20 23:11:23', '2020-03-21 11:28:04', 0);
INSERT INTO `ref_lessons` VALUES (74, '', 0, 8, 20, 10, 'Ilmu Pengetahuan Alam', '', '', '3x3qcqkriijgxyrckpo6pwqfvoaqdx0a.png', 0, 1, 1048, '2017-01-20 23:11:23', '2020-03-21 11:28:11', 0);
INSERT INTO `ref_lessons` VALUES (75, '', 0, 8, 20, 11, 'Ilmu Pengetahuan Sosial', '', '', 'cfdphiefb794c71msm9tbcyn9aaxree5.png', 0, 1, 1048, '2017-01-20 23:11:23', '2020-03-21 11:28:24', 0);
INSERT INTO `ref_lessons` VALUES (76, '', 0, 8, 20, 13, 'Bahasa Inggris', '', '', 'vfzwc16yu7wv3ve7o56u381s0l9fbhg8.png', 0, 1, 1048, '2017-01-20 23:11:23', '2020-03-21 11:28:35', 0);
INSERT INTO `ref_lessons` VALUES (77, '', 0, 9, 11, NULL, 'Pendidikan Agama dan Budi Pekerti', '', '', '77naavbse5kru1813kg4802rlukhhf29.png', 1, 1, 1, '2017-01-20 23:11:29', '2019-02-06 00:26:39', 0);
INSERT INTO `ref_lessons` VALUES (78, '', 0, 9, 11, 14, 'Pendidikan Pancasila dan Kewarganegaraan', '', '', '3tswd9szvie5vp6g1fpfjgmyr93jur2z.png', 0, 1, 1048, '2017-01-20 23:11:29', '2018-11-02 19:34:51', 0);
INSERT INTO `ref_lessons` VALUES (79, '', 0, 9, 11, 12, 'Bahasa Indonesia', '', '', '2ew0yb7bgnvuj7sn1d2zphjjgp0d87vg.png', 0, 1, 1048, '2017-01-20 23:11:29', '2018-11-02 19:35:02', 0);
INSERT INTO `ref_lessons` VALUES (80, '', 0, 9, 11, 9, 'Matematika', '', '', 'bim7bfzsnsd88dp39ebxbhsmxgob41ez.png', 0, 1, 1048, '2017-01-20 23:11:29', '2018-11-02 19:35:15', 0);
INSERT INTO `ref_lessons` VALUES (81, '', 0, 9, 11, 10, 'Ilmu Pengetahuan Alam', '', '', '5olga26mjhox1bs4w77jceyd6a7xzfq3.png', 0, 1, 1048, '2017-01-20 23:11:29', '2018-11-02 19:35:27', 0);
INSERT INTO `ref_lessons` VALUES (82, '', 0, 9, 11, 11, 'Ilmu Pengetahuan Sosial', '', '', 'wislj6ehxhn37po4ixtriu1gg1yozmne.png', 0, 1, 1048, '2017-01-20 23:11:29', '2018-11-02 19:35:38', 0);
INSERT INTO `ref_lessons` VALUES (83, '', 0, 9, 11, 13, 'Bahasa Inggris', '', '', 'rrbd6et4cg41lm9ccasknnkhl8ptb6xm.png', 0, 1, 1048, '2017-01-20 23:11:29', '2018-11-02 19:35:51', 0);
INSERT INTO `ref_lessons` VALUES (85, '', 0, 10, 12, NULL, 'Pendidikan Pancasila dan Kewarganegaraan', '', '', 'x41yssn0gozt0dqszcvkfkwcnulnwrzw.png', 0, 1, 1048, '2017-01-20 23:13:10', '2019-01-22 21:49:01', 0);
INSERT INTO `ref_lessons` VALUES (88, '', 0, 10, 12, NULL, 'Geografi', '', '', 'o4z8y3opug1iu8w0g9dsah57moh4305l.png', 0, 1, 1048, '2017-01-20 23:15:34', '2019-01-22 21:51:41', 0);
INSERT INTO `ref_lessons` VALUES (89, '', 0, 10, 12, NULL, 'Sejarah', '', '', '0e65cmm0a8t81t64wdov6isl2hdexqxj.png', 0, 1, 1048, '2017-01-20 23:15:42', '2019-01-24 19:28:24', 0);
INSERT INTO `ref_lessons` VALUES (90, '', 0, 10, 12, NULL, 'Sosiologi dan Anthropologi', '', '', 'ezxj4zs53hcirztdko4zys4a4yvqipr1.png', 0, 1, 1048, '2017-01-20 23:15:49', '2019-01-22 21:52:40', 0);
INSERT INTO `ref_lessons` VALUES (91, '', 0, 10, 12, NULL, 'Ekonomi', '', '', 'g8dlzkxknjzrycubwy79y2820b93895t.png', 0, 1, 1048, '2017-01-20 23:15:58', '2019-01-22 21:47:10', 0);
INSERT INTO `ref_lessons` VALUES (92, '', 0, 10, 12, NULL, 'Sejarah Indonesia', '', '', 'fjtq3anoq2ojfli1mil5b6xlcd0sydur.png', 1, 1, 1048, '2017-01-20 23:17:00', '2019-10-27 21:25:59', 1);
INSERT INTO `ref_lessons` VALUES (93, 'ISLAM', 1, 10, 21, NULL, 'Pendidikan Agama Islam', 'PAI', '', 'i272849q2i1qwmqhwemt1chrwy862fze.png', 0, 1, 1048, '2017-01-20 23:17:36', '2020-03-16 12:53:20', 0);
INSERT INTO `ref_lessons` VALUES (94, '', 0, 11, 12, NULL, 'Sosiologi dan Anthropologi', '', '', '6espz9b1cclha3b790w8umz0xxkt72mn.png', 0, 1, 1048, '2017-01-21 00:49:04', '2019-01-22 21:41:16', 0);
INSERT INTO `ref_lessons` VALUES (95, '', 0, 11, 12, NULL, 'Pendidikan Pancasila dan Kewarganegaraan', '', '', '1j4lef8qam42n24l5owyrtacw41p5zju.png', 0, 1, 1048, '2017-01-21 00:49:04', '2019-01-22 21:43:19', 0);
INSERT INTO `ref_lessons` VALUES (96, '', 0, 11, 12, NULL, 'Geografi', '', '', 'pxqu0y1acx1quh8uu9okodxoi0nrhvku.png', 0, 1, 1048, '2017-01-21 00:49:04', '2019-01-22 21:40:25', 0);
INSERT INTO `ref_lessons` VALUES (97, '', 0, 11, 12, NULL, 'Sejarah', '', '', 'yn4m0qzi0tw1dbbquy1sezwhub1cig9b.png', 0, 1, 1048, '2017-01-21 00:49:04', '2019-01-24 19:28:02', 0);
INSERT INTO `ref_lessons` VALUES (98, '', 0, 11, 12, NULL, 'Ekonomi', '', '', 'r2oq24uuixtywjw9bgsmgbla9pfq6uug.png', 0, 1, 1048, '2017-01-21 00:49:04', '2019-01-22 21:39:29', 0);
INSERT INTO `ref_lessons` VALUES (99, '', 0, 11, 12, NULL, 'Sejarah Indonesia', '', '', 'cq2l45s73xoy4tx4vsrzec5yenlvf5pw.png', 1, 1, 1048, '2017-01-21 00:49:04', '2019-10-27 21:25:41', 1);
INSERT INTO `ref_lessons` VALUES (100, 'ISLAM', 1, 11, 12, NULL, 'Pendidikan Agama Islam', 'PAI', '', 'mh54mjjs017z5qefwitmw6oicjmuf190.png', 0, 1, 1048, '2017-01-21 00:49:04', '2019-01-22 21:41:32', 0);
INSERT INTO `ref_lessons` VALUES (101, '', 0, 12, 12, NULL, 'Sosiologi dan Anthropologi', '', '', 'xjp56q3skm4l1gtem7iv8iml80gbom0p.png', 0, 1, 0, '2017-01-21 00:49:09', '2019-01-22 20:54:09', 0);
INSERT INTO `ref_lessons` VALUES (102, '', 0, 12, 12, NULL, 'Pendidikan Pancasila dan Kewarganegaraan', '', '', 'gzcg8uxm50363fwtuug16qo1unebxuvd.png', 0, 1, 1048, '2017-01-21 00:49:09', '2019-11-06 11:40:11', 0);
INSERT INTO `ref_lessons` VALUES (103, '', 0, 12, 12, NULL, 'Geografi', '', '', 'l8c3lcr6dzpykdwwbkhlpiukq4myktu7.png', 0, 1, 1048, '2017-01-21 00:49:09', '2019-01-22 18:27:23', 0);
INSERT INTO `ref_lessons` VALUES (104, '', 0, 12, 12, NULL, 'Sejarah', '', '', '5p9w2lf6mp2wtdfne6d2otjtb3yxol49.png', 0, 1, 1048, '2017-01-21 00:49:09', '2019-01-24 19:26:57', 0);
INSERT INTO `ref_lessons` VALUES (105, '', 0, 12, 12, NULL, 'Ekonomi', '', '', '8ygnoxptmkofjepx1t9b8jrm3weetuib.png', 0, 1, 1048, '2017-01-21 00:49:09', '2019-01-22 21:39:46', 0);
INSERT INTO `ref_lessons` VALUES (106, '', 0, 12, 12, NULL, 'Sejarah Indonesia', '', '', 'area2suybc9fxef9uwahhqiscxjteiz5.png', 1, 1, 1048, '2017-01-21 00:49:09', '2019-10-27 21:23:01', 1);
INSERT INTO `ref_lessons` VALUES (107, 'KRISTEN', 1, 12, 12, NULL, 'Pendidikan Agama Kristen', '', '', 'o1rahm2yl70asbhw61u3eks4qiitu79m.png', 0, 1, 1048, '2017-01-21 00:49:09', '2019-11-06 11:40:16', 0);
INSERT INTO `ref_lessons` VALUES (108, '', 0, 1, 10, NULL, 'Tema 1', '', '', '3pn4tnawetzlh0dv9ejvopa8mc75rrze.png', 0, 1, 1048, '2017-05-07 11:22:34', '2018-10-09 19:31:30', 0);
INSERT INTO `ref_lessons` VALUES (109, '', 0, 1, 10, NULL, 'Tema 2', '', '', '8cfqskd0tk9t15nfmmi8euxg0g24kvsn.png', 0, 1, 1048, '2017-05-07 11:22:51', '2018-10-09 21:33:39', 0);
INSERT INTO `ref_lessons` VALUES (110, '', 0, 1, 10, NULL, 'Tema 3', '', '', 'jngl3qcbu700qaeggd1evzcoikdy12lw.png', 0, 1, 1048, '2017-05-07 11:23:20', '2018-10-09 21:39:52', 0);
INSERT INTO `ref_lessons` VALUES (111, '', 0, 1, 10, NULL, 'Tema 4', '', '', 'nlacz8elwov0gpjeg2fd6ujwwt7pnfnp.png', 0, 1, 1048, '2017-05-07 11:24:30', '2018-10-09 21:40:16', 0);
INSERT INTO `ref_lessons` VALUES (112, '', 0, 1, 10, NULL, 'Tema 5', '', '', 'q93hr2hxclp92l0y0u6eiyr9vhqnxb8j.png', 0, 1, 1048, '2017-05-07 11:24:44', '2018-10-09 21:44:32', 0);
INSERT INTO `ref_lessons` VALUES (113, '', 0, 1, 10, NULL, 'Tema 6', '', '', 'wgv5w7fwny0x6cit732g8rlri55p1wab.png', 0, 1, 1048, '2017-05-07 11:24:59', '2018-10-11 21:20:27', 0);
INSERT INTO `ref_lessons` VALUES (114, '', 0, 1, 10, NULL, 'Tema 7', '', '', '1zcekcqdj8oerwpi6il6b0anmbpjyfop.gif', 0, 1, 1048, '2017-05-07 11:25:12', '2018-10-11 21:21:30', 0);
INSERT INTO `ref_lessons` VALUES (115, '', 0, 1, 10, NULL, 'Tema 8', '', '', 'ykl6uv9ynkafpecbj93lytt2dkv9bpan.png', 0, 1, 1048, '2017-05-07 11:25:24', '2018-10-11 21:25:17', 0);
INSERT INTO `ref_lessons` VALUES (116, 'ISLAM', 1, 1, 10, NULL, 'Kemuhammadiyahan', '', '', 's9dj5m716vltj9epf9a0vh7e4ruvouhv.png', 0, 1, 1048, '2017-05-07 11:26:01', '2018-10-09 21:48:02', 0);
INSERT INTO `ref_lessons` VALUES (117, 'ISLAM', 1, 1, 10, NULL, 'PAI - Akhlaq', '', '', 'ive383jdwn623cd0ljasjegyuyyzp7uv.png', 0, 1, 1048, '2017-05-07 11:26:15', '2018-10-14 19:59:08', 0);
INSERT INTO `ref_lessons` VALUES (118, 'ISLAM', 1, 1, 10, NULL, 'PAI - Aqidah', '', '', '9x6h3aw02qdj3l1o020sh1pxv64jani2.png', 0, 1, 1048, '2017-05-07 11:26:28', '2018-10-14 19:58:41', 0);
INSERT INTO `ref_lessons` VALUES (119, 'ISLAM', 1, 1, 10, NULL, 'PAI - Ibadah', '', '', 'dsfdtrzn2r0rh45e8a6czz06osf6mknz.png', 0, 1, 1048, '2017-05-07 11:26:41', '2018-10-14 19:58:08', 0);
INSERT INTO `ref_lessons` VALUES (120, 'ISLAM', 1, 1, 10, NULL, 'PAI - Tarikh', '', '', '2e5hnaaueh7o2sz8gihyfip4hyzf0ti2.png', 0, 1, 1048, '2017-05-07 11:26:52', '2018-10-14 19:58:26', 0);
INSERT INTO `ref_lessons` VALUES (121, '', 0, 1, 10, NULL, 'Bahasa Inggris', '', '', 'edpz7871dzv15am6i9uh9ae8wprf4vnr.png', 0, 1, 1048, '2017-05-07 11:28:43', '2018-10-09 00:18:41', 0);
INSERT INTO `ref_lessons` VALUES (122, 'ISLAM', 1, 1, 10, NULL, 'Bahasa Arab', '', '', 'watz6vkvp06l7e3dthj60j83286txb7p.png', 0, 1, 1048, '2017-05-07 11:29:00', '2020-04-29 13:56:10', 0);
INSERT INTO `ref_lessons` VALUES (123, '', 0, 1, 10, NULL, 'Bahasa Jawa', '', '', 'ho6yrnx0qan7rejyxxlox1lahjxud720.png', 0, 1, 1048, '2017-05-07 11:29:24', '2018-10-11 21:15:40', 0);
INSERT INTO `ref_lessons` VALUES (124, 'ISLAM', 1, 1, 10, NULL, 'PAI - Al Quran', '', '', 'ucii6qitqihdvk4xx13rx468g9awvsph.png', 0, 1, 1048, '2017-05-07 11:30:40', '2020-04-29 13:56:11', 0);
INSERT INTO `ref_lessons` VALUES (125, '', 0, 1, 10, NULL, 'TIK', '', '', 'hxxpid1wde5szpp9w8nlxqaecyezvmlj.png', 0, 1, 1048, '2017-05-07 11:31:02', '2018-10-09 08:49:07', 0);
INSERT INTO `ref_lessons` VALUES (126, 'ISLAM', 1, 2, 19, NULL, 'Kemuhammadiyahan', '', '', 'ehflm8qbeafr43bq12b0ct3j6c2jmnn4.png', 0, 1, 1048, '2017-08-06 20:44:18', '2020-04-29 13:54:54', 0);
INSERT INTO `ref_lessons` VALUES (127, 'ISLAM', 1, 2, 19, NULL, 'PAI - Tarikh', '', '', 'e7jpddyxo9ylk3i61aubxfmo0stt11yb.png', 0, 1, 1048, '2017-08-06 20:45:36', '2020-04-29 13:54:46', 0);
INSERT INTO `ref_lessons` VALUES (128, 'ISLAM', 1, 2, 19, NULL, 'PAI - Akhlaq', '', '', '2dmf802sxp1zlglp1sdkfqorvlmofd0f.png', 0, 1, 1048, '2017-08-06 20:46:04', '2020-04-29 13:54:38', 0);
INSERT INTO `ref_lessons` VALUES (129, 'ISLAM', 1, 2, 19, NULL, 'PAI - Ibadah', '', '', 'es87gqceudvr9d4f77tsbdspnfzamb68.png', 0, 1, 1048, '2017-08-06 20:46:24', '2020-04-29 13:54:32', 0);
INSERT INTO `ref_lessons` VALUES (130, 'ISLAM', 1, 2, 19, NULL, 'PAI - Aqidah', '', '', '4ko41zpje64e22y9j997yo3kn1jnm1wa.png', 0, 1, 1048, '2017-08-06 20:46:41', '2020-04-29 13:54:25', 0);
INSERT INTO `ref_lessons` VALUES (131, 'ISLAM', 1, 2, 19, NULL, 'PAI - Al Qur\'an', '', '', 'scfczxlemcg2xh6q0z39pclse5bfq78t.png', 0, 1, 1048, '2017-08-06 20:47:02', '2020-04-29 13:54:16', 0);
INSERT INTO `ref_lessons` VALUES (132, '', 0, 2, 19, NULL, 'Bahasa Inggris', '', '', '7unbd6rdslpzfej3druuqviedl4nd5ul.png', 0, 1, 1048, '2017-08-06 20:47:32', '2020-04-29 13:54:08', 0);
INSERT INTO `ref_lessons` VALUES (133, '', 0, 2, 19, NULL, 'Bahasa Jawa', '', '', 'lpzhqgqidqmz0miu9c2konjul931gwes.png', 0, 1, 1048, '2017-08-06 20:47:53', '2020-04-29 13:54:00', 0);
INSERT INTO `ref_lessons` VALUES (134, '', 0, 2, 19, NULL, 'Tema 1', '', '', 't9pu7latupgayir6bdhflei61n39i4xd.png', 0, 1, 1048, '2017-08-06 20:48:24', '2020-04-29 13:53:47', 0);
INSERT INTO `ref_lessons` VALUES (135, '', 0, 2, 19, NULL, 'Tema 2', '', '', 'hhl4l66w61iom8pm2qcxjpnk280kvby0.png', 0, 1, 1048, '2017-08-06 20:48:45', '2020-04-29 13:53:38', 0);
INSERT INTO `ref_lessons` VALUES (136, '', 0, 2, 19, NULL, 'Tema 3', '', '', 'maqx3qgws5xnjokb9vm8hrn1aiij08go.png', 0, 1, 1048, '2017-08-06 20:49:53', '2020-04-29 13:53:28', 0);
INSERT INTO `ref_lessons` VALUES (137, '', 0, 2, 19, NULL, 'Teknologi informasi dan Komunikasi', '', '', 'cmo5dwi82hzgd3no0o8iqsqryy9mwhxm.png', 0, 1, 1048, '2017-08-06 20:50:24', '2020-04-29 13:53:19', 0);
INSERT INTO `ref_lessons` VALUES (138, '', 0, 6, 10, 4, 'Ilmu Pengetahuan Alam', '', '', 'tfw1yz13k0ve2ype71wyaijk3ih28mw6.png', 0, 1, 1048, '2017-08-06 21:00:05', '2018-10-09 00:15:45', 0);
INSERT INTO `ref_lessons` VALUES (139, 'ISLAM', 1, 4, 19, NULL, 'Kemuhammadiyahan', 'KEMUH', '', '2a4wpyxjy3c3h8rjjrqvtwgl28ftpzg6.png', 0, 1, 1048, '2017-08-06 21:00:55', '2020-04-29 14:08:05', 0);
INSERT INTO `ref_lessons` VALUES (140, 'ISLAM', 1, 4, 19, NULL, 'PAI - Aqidah', '', '', 'rp97bhpx74g0ntsllf5vdb9gdbqsosel.png', 0, 1, 1048, '2017-08-06 21:01:25', '2020-04-29 14:09:33', 0);
INSERT INTO `ref_lessons` VALUES (141, 'ISLAM', 1, 4, 19, NULL, 'PAI - Akhlaq', '', '', '2j316kdqz319cf4x21cmn6r6axlde7ge.png', 0, 1, 1048, '2017-08-06 21:01:41', '2020-04-29 14:09:58', 0);
INSERT INTO `ref_lessons` VALUES (142, 'ISLAM', 1, 4, 19, NULL, 'PAI - Ibadah', '', '', '32dmlqoop7c7tw2ott6y7e0nfmi9ja4x.png', 0, 1, 1048, '2017-08-06 21:01:59', '2020-04-29 14:10:17', 0);
INSERT INTO `ref_lessons` VALUES (143, 'ISLAM', 1, 4, 19, NULL, 'PAI - Tarikh', '', '', '5rnoeir14pw3a5k9f31jjfds8y6mpjlh.png', 0, 1, 1048, '2017-08-06 21:02:39', '2020-04-29 14:10:25', 0);
INSERT INTO `ref_lessons` VALUES (144, 'ISLAM', 1, 4, 19, NULL, 'PAI - Al Qur\'an', '', '', 't6dogindet2snnfyivkn795nnou7fa4b.png', 0, 1, 1048, '2017-08-06 21:03:02', '2020-04-29 14:10:38', 0);
INSERT INTO `ref_lessons` VALUES (145, '', 0, 4, 19, NULL, 'Bahasa Inggris', '', '', 'sgy4lko64uftivajpdei2ubp9mvytsuv.png', 0, 1, 1048, '2017-08-06 21:03:49', '2020-04-29 14:10:47', 0);
INSERT INTO `ref_lessons` VALUES (146, '', 0, 4, 19, NULL, 'Bahasa Jawa', '', '', 'a9tb0pw0q929eq2x4gz0j8c8fabn7uae.png', 0, 1, 1048, '2017-08-06 21:03:59', '2020-04-29 14:10:55', 0);
INSERT INTO `ref_lessons` VALUES (147, 'ISLAM', 1, 4, 19, NULL, 'Bahasa Arab', '', '', '8wu60bv7wzpld3jyt1iuzg2crw0t2t0o.png', 0, 1, 1048, '2017-08-06 21:04:09', '2020-04-29 14:11:03', 0);
INSERT INTO `ref_lessons` VALUES (148, '', 0, 4, 19, NULL, 'Tema 1', '', '', 'guuval2zgvb4vyj4bb0fbig8oox4quz0.png', 0, 1, 1048, '2017-08-06 21:04:39', '2020-04-29 14:11:13', 0);
INSERT INTO `ref_lessons` VALUES (149, '', 0, 4, 19, NULL, 'Tema 2', '', '', 'aarhgi1m0roubp6aznjirjm6ox12g6ap.png', 0, 1, 1048, '2017-08-06 21:04:56', '2020-04-29 14:19:06', 0);
INSERT INTO `ref_lessons` VALUES (150, '', 0, 4, 19, NULL, 'Tema 3', '', '', 'd41l456t2lg94otcype6o5jpumtgke28.png', 0, 1, 1048, '2017-08-06 21:05:11', '2020-04-29 14:18:57', 0);
INSERT INTO `ref_lessons` VALUES (151, '', 0, 4, 19, NULL, 'Tema 4', '', '', '3flryh9e4n4leu61rc8xn54ya6kygx2y.png', 0, 1, 1048, '2017-08-06 21:05:32', '2020-04-29 14:18:49', 0);
INSERT INTO `ref_lessons` VALUES (152, '', 0, 4, 19, NULL, 'Teknologi informasi dan Komunikasi', 'TIK', '', 'tejurx8utmeyl33demc5wdsxmua2hyme.png', 0, 1, 1048, '2017-08-06 21:06:36', '2020-04-29 14:18:40', 0);
INSERT INTO `ref_lessons` VALUES (153, '', 0, 4, 19, NULL, 'Tema 5', '', '', 'apgl9v3pfuxwdv96na6ie30cy2opmqc4.png', 0, 1, 1048, '2017-11-26 23:15:29', '2020-04-29 14:18:31', 0);
INSERT INTO `ref_lessons` VALUES (154, '', 0, 4, 19, NULL, 'Tema 6', 'T6', '', 'z28dg29t65o9tm5h325ctog46oluer13.png', 0, 1, 1048, '2017-11-26 23:15:55', '2020-04-29 14:15:16', 0);
INSERT INTO `ref_lessons` VALUES (155, '', 0, 4, 19, NULL, 'Tema 7', 'T7', '', '5v5nts18gyeugswx8ahj7er2wt1uwwrk.gif', 0, 1, 1048, '2017-11-26 23:16:10', '2020-04-29 14:15:07', 0);
INSERT INTO `ref_lessons` VALUES (156, '', 0, 4, 19, NULL, 'Tema 8', 'T8', '', 'm5fqv9g49lx0d0jyu49okxramu2q9pyw.png', 0, 1, 1048, '2017-11-26 23:16:25', '2020-04-29 14:14:59', 0);
INSERT INTO `ref_lessons` VALUES (157, '', 0, 4, 19, NULL, 'Tema 9', 'T9', '', 'q71x5qjguls3dmpqdpjlqdzt9u29dz2p.png', 0, 1, 1048, '2017-11-26 23:16:40', '2020-04-29 14:14:52', 0);
INSERT INTO `ref_lessons` VALUES (158, '', 0, 4, 19, NULL, 'Tema 10', 'T10', '', 'ojx5fun5c30q24i0dcgpduxsr0kts9ap.png', 0, 1, 1048, '2017-11-26 23:16:54', '2020-04-29 14:14:41', 0);
INSERT INTO `ref_lessons` VALUES (159, '', 0, 2, 19, NULL, 'Tema 4', 'T4', '', 'w167rlicdtlvckmx4zc7eginbiey8t9d.png', 0, 1, 1048, '2017-11-26 23:17:43', '2020-04-29 13:53:10', 0);
INSERT INTO `ref_lessons` VALUES (160, '', 0, 2, 19, NULL, 'Tema 5', 'T5', '', 'b9k6d5mg0x2c8lxxb4pnugj23lnxpyyk.png', 0, 1, 1048, '2017-11-26 23:17:56', '2020-04-29 13:53:01', 0);
INSERT INTO `ref_lessons` VALUES (161, '', 0, 2, 19, NULL, 'Tema 6', 'T6', '', 'uk1gk5o1b0os6drx62ox29kpk774mlp9.png', 0, 1, 1048, '2017-11-26 23:18:09', '2020-04-29 13:52:50', 0);
INSERT INTO `ref_lessons` VALUES (162, '', 0, 2, 19, NULL, 'Tema 7', 'T7', '', 'rnvslcm12dwevalw5ce93tb11scpx18r.gif', 0, 1, 1048, '2017-11-26 23:18:21', '2020-04-29 13:52:38', 0);
INSERT INTO `ref_lessons` VALUES (163, '', 0, 2, 19, NULL, 'Tema 8', 'T8', '', '166m0smv3r4burznztq3nfs6y1ww78bd.png', 0, 1, 1048, '2017-11-26 23:18:34', '2020-04-29 13:52:29', 0);
INSERT INTO `ref_lessons` VALUES (165, '', 0, 6, 10, NULL, 'Bahasa Inggris', 'BI', '', 'rv157tkoy11rq35lix3bbl1ms4wlg266.png', 0, 1, 1048, '2018-01-24 15:55:44', '2019-07-13 14:06:33', 0);
INSERT INTO `ref_lessons` VALUES (166, '', 0, 3, 19, NULL, 'Tema 1', '', '', 'a6plir4trmtei6oqdtvgcv3rozmnrjfl.png', 0, 1, 1048, '2018-03-15 12:04:58', '2020-04-29 13:45:53', 0);
INSERT INTO `ref_lessons` VALUES (167, '', 0, 3, 19, NULL, 'Tema 2', '', '', '3gq9c1p8mliwqzwvszq1iutyb0se8p62.png', 0, 1, 1048, '2018-03-15 12:05:17', '2020-04-29 13:45:46', 0);
INSERT INTO `ref_lessons` VALUES (168, '', 0, 3, 19, NULL, 'Tema 3', '', '', 'tj1m7ftq7qtq7h2u3tadp1z9hyfzmkd4.png', 0, 1, 1048, '2018-03-15 12:05:33', '2020-04-29 13:45:39', 0);
INSERT INTO `ref_lessons` VALUES (169, '', 0, 3, 19, NULL, 'Tema 4', '', '', '2jhyn2on2mm1s79pn3vc3lzrh8ak3dwk.png', 0, 1, 1048, '2018-03-15 12:05:47', '2020-04-29 13:45:33', 0);
INSERT INTO `ref_lessons` VALUES (170, '', 0, 3, 19, NULL, 'Tema 5', '', '', 'b25xlg6lfnfi81b4nep1sqxuz84kxiq0.png', 0, 1, 1048, '2018-03-15 12:06:04', '2020-04-29 13:45:26', 0);
INSERT INTO `ref_lessons` VALUES (171, '', 0, 3, 19, NULL, 'Tema 6', '', '', 'zs5ukeawh0i09y4vrbu41kbh1fp6aord.png', 0, 1, 1048, '2018-03-15 12:06:21', '2020-04-29 13:45:16', 0);
INSERT INTO `ref_lessons` VALUES (172, '', 0, 3, 19, NULL, 'Tema 7', '', '', 'tk6t63j0q2eteuy5ii4bj4bantf12i7w.gif', 0, 1, 1048, '2018-03-15 12:06:34', '2020-04-29 13:45:05', 0);
INSERT INTO `ref_lessons` VALUES (173, '', 0, 3, 19, NULL, 'Tema 8', '', '', '2zdey8f25kwjnlalewsw0x8m38jk154y.png', 0, 1, 1048, '2018-03-15 12:07:20', '2020-04-29 13:44:57', 0);
INSERT INTO `ref_lessons` VALUES (174, '', 0, 5, 19, NULL, 'Tema 1', '', '', '01a9tpp46il4s3ckwvajh686vbrg5fmt.png', 0, 1, 1048, '2018-03-15 12:14:52', '2020-04-29 14:39:30', 0);
INSERT INTO `ref_lessons` VALUES (175, '', 0, 5, 19, NULL, 'Tema 2', '', '', '34dzldkss3p7eqdl5g9j47nrqlym9wwi.png', 0, 1, 1048, '2018-03-15 12:15:07', '2020-04-29 14:39:22', 0);
INSERT INTO `ref_lessons` VALUES (176, '', 0, 5, 19, NULL, 'Tema 3', '', '', 'cpm2v80v7eu3z44kmzym1ic54umxrjp2.png', 0, 1, 1048, '2018-03-15 12:18:16', '2020-04-29 14:39:14', 0);
INSERT INTO `ref_lessons` VALUES (177, '', 0, 5, 19, NULL, 'Tema 4', '', '', '6uucso3enn3ehzzcxdrazm23erxo0hes.png', 0, 1, 1048, '2018-03-15 12:18:31', '2020-04-29 14:39:06', 0);
INSERT INTO `ref_lessons` VALUES (178, '', 0, 5, 19, NULL, 'Tema 5', '', '', '1xqbtd7cy8ucfnbat3agvhxfg4zdn4fu.png', 0, 1, 1048, '2018-03-15 12:19:19', '2020-04-29 14:38:59', 0);
INSERT INTO `ref_lessons` VALUES (179, '', 0, 5, 19, NULL, 'Tema 6', '', '', '79p8ivx79e1buy7wwp0yxuwyphb1ni4j.png', 0, 1, 1048, '2018-03-15 12:19:51', '2020-04-29 14:38:51', 0);
INSERT INTO `ref_lessons` VALUES (180, '', 0, 5, 19, NULL, 'Tema 7', '', '', '93hi5eclssa1vlkztqofx68g69tdh26c.gif', 0, 1, 1048, '2018-03-15 12:20:11', '2020-04-29 14:38:39', 0);
INSERT INTO `ref_lessons` VALUES (181, '', 0, 5, 19, NULL, 'Tema 8', '', '', 'h8na6wlwtc20evpmwsetr86r8nuro9ca.png', 0, 1, 1048, '2018-03-15 12:20:26', '2020-04-29 14:38:31', 0);
INSERT INTO `ref_lessons` VALUES (182, '', 0, 5, 19, NULL, 'Tema 9', '', '', '9gfnnbsgk1r0oydhp2b3litzwwdn0snn.png', 0, 1, 1048, '2018-03-15 12:20:40', '2020-04-29 14:38:21', 0);
INSERT INTO `ref_lessons` VALUES (183, '', 0, 5, 19, NULL, 'Tema 10', '', '', 'kpc2xmbbn4x3usavqo1pmhjywj04lgw5.png', 0, 1, 1048, '2018-03-15 12:20:58', '2020-04-29 14:38:12', 0);
INSERT INTO `ref_lessons` VALUES (184, '', 0, 6, 10, NULL, 'Tema 1', '', '', 'e494la6tvpwsgslplk0k5aqrar83lq8g.png', 0, 1, 1048, '2018-03-15 12:23:22', '2020-03-17 20:04:55', 0);
INSERT INTO `ref_lessons` VALUES (185, '', 0, 6, 10, NULL, 'Tema 2', '', '', 'f1zqgdrwyrlhxhyp1ys31d1fcqz76bim.png', 0, 1, 1048, '2018-03-15 12:23:55', '2020-03-17 20:04:56', 0);
INSERT INTO `ref_lessons` VALUES (186, '', 0, 6, 10, NULL, 'Tema 3', '', '', 'lkg0rnwehotz5cfkjn40pxaj253cetlx.png', 0, 1, 1048, '2018-03-15 12:24:07', '2020-03-17 20:04:57', 0);
INSERT INTO `ref_lessons` VALUES (187, '', 0, 6, 10, NULL, 'Tema 4', '', '', '9vum9mmtt31bn0llxih849yfitiyfkg6.png', 0, 1, 1048, '2018-03-15 12:24:54', '2020-03-17 20:04:58', 0);
INSERT INTO `ref_lessons` VALUES (188, '', 0, 6, 10, NULL, 'Tema 5', '', '', '1bijcwspa1f2b0rsi6p0hnp1b08k6m67.png', 0, 1, 1048, '2018-03-15 12:25:08', '2020-03-17 20:04:59', 0);
INSERT INTO `ref_lessons` VALUES (189, '', 0, 6, 10, NULL, 'Tema 6', '', '', 'fwj7xthtne0542foqg96ly6b0n0hh6rz.png', 0, 1, 1048, '2018-03-15 12:25:25', '2020-03-17 20:05:01', 0);
INSERT INTO `ref_lessons` VALUES (190, '', 0, 6, 10, NULL, 'Tema 7', '', '', 'inye76mqgnvja07ye3ibboc9s39ve92v.gif', 0, 1, 1048, '2018-03-15 12:25:43', '2020-03-17 20:05:02', 0);
INSERT INTO `ref_lessons` VALUES (191, '', 0, 6, 10, NULL, 'Tema 8', '', '', 'yfrieezpeq1un03777ec5kf0a3k4km19.png', 0, 1, 1048, '2018-03-15 12:27:24', '2020-03-17 20:05:03', 0);
INSERT INTO `ref_lessons` VALUES (192, '', 0, 6, 10, NULL, 'Tema 9', '', '', 'qus4g44sr399ke65il7r7easfrvf37g2.png', 0, 1, 1048, '2018-03-15 12:28:43', '2020-03-17 20:05:05', 0);
INSERT INTO `ref_lessons` VALUES (193, '', 0, 13, 0, NULL, 'TOEFL', '', '', 'uhf67lvkxg93bz4nwwoy1cgf981re63i.jpg', 0, 1, 1, '2018-04-14 08:45:55', '2018-04-14 18:27:03', 0);
INSERT INTO `ref_lessons` VALUES (194, '', 0, 13, 0, NULL, 'IELTS', '', '', 'ojdkuf19z4sbkvuvq4z92o2anosoan82.png', 1, 1, 1, '2018-04-14 08:46:33', '2019-01-31 08:09:56', 0);
INSERT INTO `ref_lessons` VALUES (195, '', 0, 13, 0, NULL, 'CPNS Simulasi Tes', '', '', 'soxyakqskct4gxs97zkvguxbj2189vdk.png', 0, 1, 1048, '2018-04-14 08:47:07', '2018-07-13 02:10:04', 0);
INSERT INTO `ref_lessons` VALUES (196, '', 0, 6, 10, 5, 'Ilmu Pengetahuan Sosial', '', '', '23pubnstu1z01s922o9peb10adzr7m3d.png', 0, 1, 1048, '2018-04-19 00:26:42', '2019-07-13 14:06:27', 0);
INSERT INTO `ref_lessons` VALUES (197, '', 0, 5, 10, 4, 'Ilmu Pengetahuan Alam', 'IPA', '', 'we9kqbwzxxftjvj65ug9h3m7x55vpdk2.png', 0, 1048, 1, '2018-05-18 03:38:39', '2020-09-10 22:09:21', 0);
INSERT INTO `ref_lessons` VALUES (198, '', 0, 5, 10, 5, 'Ilmu Pengetahuan Sosial', 'IPS', '', 'slfzicp3aeyaqnf87jlgu03ng7ov5002.png', 0, 1048, 1, '2018-05-18 08:45:36', '2020-09-10 22:09:42', 0);
INSERT INTO `ref_lessons` VALUES (199, '', 0, 3, 19, NULL, 'Bahasa Inggris', '', '', '1w1fob70wt1un6rbzqkhsrzs0njdcd5q.png', 0, 1, 1048, '2018-06-10 09:59:00', '2020-04-29 13:44:46', 0);
INSERT INTO `ref_lessons` VALUES (200, 'ISLAM', 1, 3, 19, NULL, 'PAI-Ibadah', '', '', '1toduqe3oyq0ufukq0487pt0352nbec0.png', 0, 1, 1048, '2018-06-10 10:02:25', '2020-04-29 13:44:35', 0);
INSERT INTO `ref_lessons` VALUES (211, '', 0, 13, 0, NULL, 'CPNS2018 - Agama Islam', '', '', 'obv4h97se9bzbtm7wikwonx9i4u3qrh1.png', 0, 1048, 1048, '2018-06-13 14:40:01', '2018-07-13 23:32:46', 0);
INSERT INTO `ref_lessons` VALUES (215, '', 0, 12, 12, NULL, 'Ilmu Pengetahuan Alam', 'IPA', '', '314dqr74n6stze3m8uoj2fpgceloe7jy.png', 1, 1, 1, '2018-06-21 05:33:53', '2019-01-31 08:03:50', 1);
INSERT INTO `ref_lessons` VALUES (216, '', 0, 11, 12, NULL, 'Ilmu Pengetahuan Alam', '', '', 'xp2neqelqfuyj7t4iucwbw7qnbofvek6.png', 1, 1, 1, '2018-06-21 05:37:53', '2019-01-31 08:03:12', 1);
INSERT INTO `ref_lessons` VALUES (217, '', 0, 10, 11, NULL, 'Ilmu Pengetahuan Alam', '', '', 'nh2lzvvat4gsibis958psqmr4qip52t2.png', 1, 1, 1, '2018-06-21 05:38:24', '2019-01-31 08:02:48', 1);
INSERT INTO `ref_lessons` VALUES (218, 'ISLAM', 1, 3, 19, NULL, 'Kemuhammadiyahan', '', '', 'ggd2je5hzri88ypb6bt1yycn1aaj3khg.png', 0, 1, 1048, '2018-06-27 17:16:44', '2020-04-29 13:44:20', 0);
INSERT INTO `ref_lessons` VALUES (219, '', 0, 13, 0, NULL, 'CPNS-TWK', '', '', '1mfdlu0p49e6hjvm3vkl6kuo8u6cnh9t.png', 0, 1048, 0, '2018-07-13 02:11:13', '2018-07-13 02:11:13', 0);
INSERT INTO `ref_lessons` VALUES (220, '', 0, 13, 0, NULL, 'CPNS-TIU', '', '', 'nbdoycjjdb08gbxtgecetqad1h69q6a4.png', 0, 1048, 0, '2018-07-13 02:11:34', '2018-07-13 02:11:34', 0);
INSERT INTO `ref_lessons` VALUES (221, '', 0, 13, 0, NULL, 'CPNS-TKP', '', '', 'as4fd6x8kr938k8f8l41ecmdf5febda2.png', 0, 1048, 1048, '2018-07-13 19:26:52', '2018-07-13 19:27:35', 0);
INSERT INTO `ref_lessons` VALUES (222, '', 0, 14, 15, NULL, 'Tes Kemampuan Kuantitatif', 'TKK', 'Deret Angka, Deret Huruf, Matematika Hitung Cepat, Matematika Soal Cerita', 'oius9vpkoma6si6yyxof0gaqy9r4ssr9.png', 0, 1048, 1048, '2018-08-11 18:13:20', '2018-12-19 11:37:18', 0);
INSERT INTO `ref_lessons` VALUES (223, '', 0, 14, 15, NULL, 'Tes Kemampuan Verbal', 'TKV', 'Analogi, Sinonim, Antonim, Pengelompokan Kata, Pemahaman Bacaan', 'baqxlqmmrylc4926n8ycpw5d4gzgtbru.png', 0, 1048, 1048, '2018-08-11 18:16:53', '2018-12-19 11:36:49', 0);
INSERT INTO `ref_lessons` VALUES (224, '', 0, 14, 15, NULL, 'Tes Kemampuan Penalaran', 'TKP', 'Penalaran Logis, Penalaran Analitis', '71qe3tuxs7fabc6uafxl97bx7f7uyjvp.png', 0, 1048, 1048, '2018-08-11 18:18:11', '2018-12-19 11:37:06', 0);
INSERT INTO `ref_lessons` VALUES (225, '', 0, 14, 0, NULL, 'Tes Kemampuan Spasial', 'TKS', 'Deret Gambar, Perbedaan Gambar, Cermin dan Rotasi, Irama Gambar, Dimensi 3, Variasi', 'ly65kaytm3ytluhpcec55jh12ssphp64.png', 0, 1048, 1048, '2018-08-11 18:19:16', '2018-08-11 18:26:49', 0);
INSERT INTO `ref_lessons` VALUES (226, '', 0, 12, 13, NULL, 'Teknologi Informasi dan Komputer', 'TIK', '', 'u4fomh63pxko97o44o8664506xd7sxow.png', 0, 1048, 1048, '2018-08-14 13:46:04', '2019-11-06 11:40:19', 0);
INSERT INTO `ref_lessons` VALUES (227, '', 0, 11, 13, NULL, 'Teknologi Informasi dan Komputer', 'TIK', '', '5xafvexhc60rlgap3heliz4ldy163fm6.png', 0, 1048, 1048, '2018-08-14 13:46:33', '2020-03-27 08:47:38', 0);
INSERT INTO `ref_lessons` VALUES (228, '', 0, 10, 13, NULL, 'TIK', 'TIK', '', 't0jv4iwgrmp2duxfb9u4tpp034wgzc5v.png', 0, 1048, 1048, '2018-08-14 13:47:04', '2019-01-22 21:47:36', 0);
INSERT INTO `ref_lessons` VALUES (229, '', 0, 12, 12, NULL, 'Seni Budaya', '', '', 'mlvr8ckrbj5quz32h2cuac76kmq4775k.png', 0, 1048, 1048, '2018-08-17 16:57:30', '2019-01-22 20:55:23', 0);
INSERT INTO `ref_lessons` VALUES (230, '', 0, 12, 12, NULL, 'Pendidikan Lingkungan Hidup', 'PLH', '', 'iofsq3ciaqw7le1bxxkyb63ng3vld7p9.png', 0, 1048, 1048, '2018-08-17 16:58:13', '2019-11-06 11:40:20', 0);
INSERT INTO `ref_lessons` VALUES (231, 'ISLAM', 1, 12, 13, NULL, 'Pendidikan Agama Islam', 'PAI', '', '9i80rhl5pfzfs0x89ifovs6dj22by7hx.png', 0, 1048, 1048, '2018-08-19 17:12:18', '2019-01-22 21:23:53', 0);
INSERT INTO `ref_lessons` VALUES (232, '', 0, 12, 13, NULL, 'Pendidikan Jasmani, Olahraga dan Kesehatan', 'PJOK', '', '95gkzid7b6b4ephfwl8vxkxrqy8dnfay.png', 0, 1048, 1048, '2018-08-19 17:37:19', '2019-01-22 18:48:56', 0);
INSERT INTO `ref_lessons` VALUES (233, '', 0, 5, 19, NULL, 'Bahasa Jawa', 'BJW', '', 'c309cuvmctdf520369jgvdsungpgn2kc.png', 0, 1, 1048, '2018-09-11 13:39:08', '2020-04-29 14:37:43', 0);
INSERT INTO `ref_lessons` VALUES (234, 'ISLAM', 1, 5, 19, NULL, 'Kemuhammadiyahan', 'kemuh', '', 'rqjhdyus1ssaw6rgqt5lbvrqkis79tti.png', 0, 1, 1048, '2018-09-15 17:34:16', '2020-04-29 14:20:46', 0);
INSERT INTO `ref_lessons` VALUES (235, '', 0, 3, 19, 5, 'Ilmu Pengetahuan Sosial', 'IPS', '', '9drljs21r04q9xvj3hagljnyyu60u678.png', 0, 1, 1048, '2018-09-17 18:18:11', '2020-04-29 13:44:10', 0);
INSERT INTO `ref_lessons` VALUES (236, '', 0, 3, 19, 4, 'Ilmu Pengetahuan Alam', '', '', '729bg9umwa1ir19sxg0n3sn7imy0mqnt.png', 0, 1, 1048, '2018-09-17 18:18:26', '2020-04-29 13:44:01', 0);
INSERT INTO `ref_lessons` VALUES (237, '', 0, 15, 16, NULL, 'Struktur Baja I', '', '', 'tjcrb4edmdo2j32ye95i2vka77ewybnt.png', 1, 1, 1, '2018-09-18 07:57:37', '2019-04-10 14:15:04', 0);
INSERT INTO `ref_lessons` VALUES (238, '', 0, 15, 16, NULL, 'Struktur Baja II', '', '', 'au2aqtsoar9sppcxs0do7etnpy9r3vvp.png', 1, 1, 1, '2018-09-18 07:57:54', '2019-04-10 14:15:07', 0);
INSERT INTO `ref_lessons` VALUES (239, '', 0, 15, 16, NULL, 'Struktur Baja Lanjut', '', '', '9iy23vgn7xfi0clzwuuw6tqkmkh71af6.png', 1, 1, 1, '2018-09-18 07:58:10', '2019-04-10 14:15:10', 0);
INSERT INTO `ref_lessons` VALUES (240, '', 0, 3, 19, NULL, 'Teknologi informasi dan Komunikasi', '', '', 'b7cz5liretujujljdo3lk2xx3nsczd38.png', 0, 1, 1048, '2018-09-24 17:07:29', '2020-04-29 13:43:50', 0);
INSERT INTO `ref_lessons` VALUES (241, '', 0, 5, 19, NULL, 'Bahasa Inggris', '', '', 'hatng06refhvsaz91ed6s14qq2d5i9v5.png', 0, 1048, 1048, '2018-09-26 23:09:31', '2020-04-29 14:37:35', 0);
INSERT INTO `ref_lessons` VALUES (242, '', 0, 4, 10, 4, 'Ilmu Pengetahuan Alam', '', '', 'fleomc7fida8nziey79bg8ogian75pkg.png', 0, 1048, 1, '2018-09-26 23:22:51', '2020-09-10 22:19:46', 0);
INSERT INTO `ref_lessons` VALUES (243, '', 0, 2, 19, 4, 'Ilmu Pengetahuan Alam', '', '', 'hb3yhxpefrk24l766dxp7jqstzr9m4r4.png', 0, 1048, 1048, '2018-09-26 23:24:34', '2020-04-29 13:52:20', 0);
INSERT INTO `ref_lessons` VALUES (244, '', 0, 1, 2, 4, 'Ilmu Pengetahuan Alam', '', '', 'tr648157yjrmcqmgbbiga5d2m6l6cgl0.png', 0, 1048, 1048, '2018-09-26 23:25:31', '2019-04-15 09:50:56', 0);
INSERT INTO `ref_lessons` VALUES (245, '', 0, 7, 11, NULL, 'Prakarya', '', '', '3fv11v4q9vko3rjhwqoyolof5rv683u2.png', 0, 1048, 1048, '2018-10-01 10:42:27', '2019-08-28 23:37:01', 0);
INSERT INTO `ref_lessons` VALUES (246, '', 0, 8, 20, NULL, 'Prakarya', '', '', 'g010345bebp6fq2xzccjy3g2dbb2sqno.png', 0, 1048, 1048, '2018-10-01 10:42:55', '2020-03-21 11:28:50', 0);
INSERT INTO `ref_lessons` VALUES (247, '', 0, 9, 11, NULL, 'Prakarya', '', '', '4tkktcevnhajjqrlfa2ccrdy0nxdoy5j.png', 0, 1048, 1048, '2018-10-01 10:43:25', '2019-08-28 23:37:13', 0);
INSERT INTO `ref_lessons` VALUES (248, '', 0, 10, 20, NULL, 'Prakarya dan Kewirausahaan (PKWU)', 'PKWU', '', '9q8nhzuajq03xvgbrmyc0h57tg07mhpq.png', 0, 1048, 1048, '2018-10-01 10:45:14', '2019-11-12 09:53:14', 0);
INSERT INTO `ref_lessons` VALUES (249, '', 0, 11, 20, NULL, 'Prakarya dan Kewirausahaan (PKWU)', 'PKWU', '', 'ysqpcz7y73qwp7lcrakzn6btf2un6ixd.png', 0, 1048, 1048, '2018-10-01 10:45:32', '2019-11-12 09:53:46', 0);
INSERT INTO `ref_lessons` VALUES (251, '', 0, 5, 19, NULL, 'Teknologi Informasi dan Komunikasi', '', '', 'zs8pyb9ftign6l0h5iu8rfioc1m7ghuc.png', 0, 1048, 1048, '2018-10-09 08:50:57', '2020-04-29 14:37:24', 0);
INSERT INTO `ref_lessons` VALUES (252, '', 0, 6, 10, NULL, 'Teknologi Informasi dan Komunikasi', '', '', 'vgi00rzjb8r9cra4vyho3crqbxd63jc8.png', 0, 1048, 1048, '2018-10-09 08:51:23', '2020-03-17 20:05:06', 0);
INSERT INTO `ref_lessons` VALUES (253, 'ISLAM', 1, 6, 10, NULL, 'Kemuhammadiyahan', '', '', '9kwab8361cqu70dzatgctblm5o8wgpy4.png', 0, 1048, 1048, '2018-10-09 21:49:54', '2020-03-17 20:05:07', 0);
INSERT INTO `ref_lessons` VALUES (254, '', 0, 3, 19, NULL, 'Bahasa Jawa', '', '', 'wkzldb41tyefvs3fk58ofhsrx728j7ro.png', 0, 1048, 1048, '2018-10-11 21:16:41', '2020-04-29 13:43:38', 0);
INSERT INTO `ref_lessons` VALUES (255, '', 0, 6, 10, NULL, 'Bahasa Jawa', '', '', 'ovgn3ltzs3ti9x2xl7q962pyqfhfyq8k.png', 0, 1048, 1048, '2018-10-11 21:18:12', '2020-03-17 20:05:10', 0);
INSERT INTO `ref_lessons` VALUES (256, '', 0, 4, 10, 5, 'Ilmu Pengetahuan Sosial', 'IPS', '', 'tbp3szijxwon5df6ncxnbzi7avepi00e.png', 0, 1048, 1, '2018-10-12 20:15:30', '2020-09-15 00:51:36', 0);
INSERT INTO `ref_lessons` VALUES (257, '', 0, 2, 19, 5, 'Ilmu Pengetahuan Sosial', 'IPS', '', 'cymt497ww7x5byvvi0zrd0rkvu9jfrd5.png', 0, 1048, 1048, '2018-10-12 20:16:54', '2020-04-29 13:52:11', 0);
INSERT INTO `ref_lessons` VALUES (258, '', 0, 1, 2, 5, 'Ilmu Pengetahuan Sosial', 'IPS', '', '6ffw36yzvxzsdw4bfv93lj22zwt2eq8r.png', 0, 1048, 1048, '2018-10-12 20:17:27', '2020-04-29 13:56:12', 0);
INSERT INTO `ref_lessons` VALUES (259, 'ISLAM', 1, 2, 19, NULL, 'Bahasa Arab', '', '', 'dmitmiqw8oehu3u709vik6rih56pz091.png', 0, 1048, 1048, '2018-10-12 20:19:27', '2020-04-29 13:52:01', 0);
INSERT INTO `ref_lessons` VALUES (260, 'ISLAM', 1, 3, 19, NULL, 'Bahasa Arab', '', '', '2yqkt6m1ql0bs48ymk91jh1w6qbhu2n8.png', 0, 1048, 1048, '2018-10-12 20:19:54', '2020-04-29 13:43:25', 0);
INSERT INTO `ref_lessons` VALUES (261, 'ISLAM', 1, 5, 19, NULL, 'Bahasa Arab', '', '', 'c7kt8hevsz7imib8w3hffxqmygcytkmv.png', 0, 1048, 1048, '2018-10-12 20:20:55', '2020-04-29 14:37:13', 0);
INSERT INTO `ref_lessons` VALUES (262, 'ISLAM', 1, 6, 10, NULL, 'Bahasa Arab', '', '', 'hr56sd19w6ur3d73yjnh67cdvibs8f6k.png', 0, 1048, 1048, '2018-10-12 20:21:25', '2020-03-17 20:05:11', 0);
INSERT INTO `ref_lessons` VALUES (263, '', 0, 6, 10, NULL, 'Tema 10', '', '', 'glu2x7k145h0odfvky7bx9r7trygth9n.png', 0, 1048, 1048, '2018-10-14 19:49:26', '2020-03-17 20:05:13', 0);
INSERT INTO `ref_lessons` VALUES (264, '', 0, 3, 19, NULL, 'Tema 9', '', '', 'm54f040vsq1a30u7l792m99q5iwdnkzu.png', 0, 1048, 1048, '2018-10-14 19:54:40', '2020-04-29 13:43:13', 0);
INSERT INTO `ref_lessons` VALUES (265, '', 0, 3, 19, NULL, 'Tema 10', '', '', '6ggkkgbxxhxz3pkojeks1t1u138zkqmq.png', 0, 1048, 1048, '2018-10-14 19:55:20', '2020-04-29 13:43:03', 0);
INSERT INTO `ref_lessons` VALUES (266, '', 0, 18, 13, NULL, 'Bahasa Indonesia', '', '', 'igolapaxzy9jfzznc4mqf97v2ju2xzks.png', 0, 1048, 1048, '2018-10-27 20:52:40', '2019-01-22 22:23:17', 0);
INSERT INTO `ref_lessons` VALUES (267, '', 0, 17, 13, NULL, 'Bahasa Indonesia', '', '', 'bm0t6q16ie4f062iyk0qgbuwwnknx9du.png', 0, 1048, 1048, '2018-10-27 20:54:22', '2020-03-17 12:33:29', 0);
INSERT INTO `ref_lessons` VALUES (268, '', 0, 16, 13, NULL, 'Bahasa Indonesia', '', '', 'jxlpjq5empy7rcy6q8fjyfgv5boq8fci.png', 0, 1048, 1048, '2018-10-27 20:54:39', '2020-03-17 12:39:17', 0);
INSERT INTO `ref_lessons` VALUES (269, '', 0, 18, 13, NULL, 'Bahasa Inggris', '', '', '7y22cuvgfdojnfwv2wm423dm158v2adq.png', 0, 1048, 1048, '2018-10-27 20:58:23', '2019-01-22 21:34:08', 0);
INSERT INTO `ref_lessons` VALUES (270, '', 0, 17, 13, NULL, 'Bahasa Inggris', '', '', '5b97tbu10mr1aemxyua4t4i6gxn3upf5.png', 0, 1048, 1048, '2018-10-27 21:27:20', '2019-01-22 21:33:53', 0);
INSERT INTO `ref_lessons` VALUES (271, '', 0, 16, 13, NULL, 'Bahasa Inggris', '', '', 'bfmsm8an9s050q3te8zepkkgl4bn9syf.png', 0, 1048, 1048, '2018-10-27 21:27:55', '2020-07-08 13:12:57', 0);
INSERT INTO `ref_lessons` VALUES (272, '', 0, 18, 13, NULL, 'Produk Kreatif dan Kewirausahaan', '', '', 'moxjvjkjofdjlxsvdxmktx23kak2q8ci.png', 0, 1048, 1048, '2018-10-27 21:28:57', '2019-01-20 21:08:33', 0);
INSERT INTO `ref_lessons` VALUES (273, '', 0, 17, 13, NULL, 'Produk Kreatif dan Kewirausahaan', '', '', 'r59bgvo9ycdqy34x0sesntpvnqfpwv2p.png', 0, 1048, 1048, '2018-10-27 21:29:28', '2020-03-17 12:33:31', 0);
INSERT INTO `ref_lessons` VALUES (274, '', 0, 16, 13, NULL, 'Produk Kreatif dan Kewirausahaan', '', '', '88xgjaeov1pg4m9feroiitg5k9nnzi8i.png', 0, 1048, 1048, '2018-10-27 21:29:47', '2020-03-17 12:39:18', 0);
INSERT INTO `ref_lessons` VALUES (275, '', 0, 16, 13, NULL, 'Simulasi & Komunikasi Digital', '', '', 'jnw3tqr32ukumocnubq1aicbsz2wc4wd.png', 0, 1048, 1048, '2018-10-30 09:32:02', '2020-07-08 13:13:01', 0);
INSERT INTO `ref_lessons` VALUES (276, '', 0, 16, 13, NULL, 'Spreadsheet', '', '', 'gy2jyssxp3mzciloges4pdozyaesgjgq.png', 0, 1048, 1048, '2018-10-30 09:32:29', '2020-03-17 12:39:19', 0);
INSERT INTO `ref_lessons` VALUES (277, '', 0, 16, 13, NULL, 'Pendidikan Agama dan Budi Pekerti', '', '', 'xnic3fcylefdvmshty2bk3g71zbyoelf.png', 0, 1048, 1048, '2018-10-30 10:21:24', '2020-03-17 12:40:42', 0);
INSERT INTO `ref_lessons` VALUES (278, '', 0, 16, 13, NULL, 'Pendidikan Pancasila dan Kewarganegaraan', 'PPKn', '', 'xf0h4ztjc22mhpto1sfw8iqk89d8qr0i.png', 0, 1048, 1048, '2018-10-30 10:21:59', '2020-03-17 12:40:40', 0);
INSERT INTO `ref_lessons` VALUES (279, '', 0, 16, 13, NULL, 'Matematika', '', '', 'ltqxlbjd38qlza98e6cipr85m5jz0m1q.png', 0, 1048, 1048, '2018-10-30 10:22:16', '2020-03-17 12:40:40', 0);
INSERT INTO `ref_lessons` VALUES (280, '', 0, 16, 13, NULL, 'Sejarah Indonesia', '', '', '49ot0hos82hbo17tad24vs2r5x1al537.png', 0, 1048, 1048, '2018-10-30 10:22:29', '2020-03-17 12:40:39', 0);
INSERT INTO `ref_lessons` VALUES (281, '', 0, 16, 13, NULL, 'Seni Budaya', '', '', 'v0mkq9uondqqwtq090fxn0dgzkmh5s79.png', 0, 1048, 1048, '2018-10-30 10:22:46', '2020-03-17 12:40:37', 0);
INSERT INTO `ref_lessons` VALUES (284, '', 0, 16, 13, NULL, 'Pengantar Akuntansi', '', '', '7yy4greanbbnl60ix742xmtpc2h7dw54.png', 0, 1048, 1048, '2018-10-30 10:23:47', '2020-03-17 12:40:36', 0);
INSERT INTO `ref_lessons` VALUES (286, '', 0, 16, 13, NULL, 'Etika Profesi', '', '', '8m4t56cxpwx5y9vy0dv5t1vm77ibbmir.png', 0, 1048, 1048, '2018-10-30 10:24:18', '2019-01-19 23:31:07', 0);
INSERT INTO `ref_lessons` VALUES (287, '', 0, 16, 13, NULL, 'Dasar-dasar Perbankan', '', '', '97eyxmlenfbv599dsude80jgzc3n7q96.png', 0, 1048, 1048, '2018-10-30 10:24:29', '2020-03-17 12:40:35', 0);
INSERT INTO `ref_lessons` VALUES (288, '', 0, 16, 13, NULL, 'Akuntansi Perusahaan Jasa', '', '', 'gcd1m0q6m069gf7vhmj6isxk5qe9u5mg.png', 0, 1048, 1048, '2018-10-30 10:25:05', '2020-03-17 12:40:30', 0);
INSERT INTO `ref_lessons` VALUES (289, '', 0, 16, 13, NULL, 'Akuntansi Perusahaan Dagang', '', '', '8bleoxdiuie2udpoiexj1l2nfifvny5s.png', 0, 1048, 1048, '2018-10-30 10:25:18', '2020-03-17 12:40:33', 0);
INSERT INTO `ref_lessons` VALUES (290, '', 0, 16, 13, NULL, 'Akuntansi Keuangan', '', '', 'hcie55qkfs76wrulvwy69cytaymsti4g.png', 0, 1048, 1048, '2018-10-30 10:25:35', '2020-03-17 12:40:28', 0);
INSERT INTO `ref_lessons` VALUES (291, '', 0, 16, 13, NULL, 'Komputer Akuntansi', '', '', 'f5eb5s1dpvwrfn67zbs133zjfpktes1k.png', 0, 1048, 1048, '2018-10-30 10:25:52', '2020-03-17 12:40:27', 0);
INSERT INTO `ref_lessons` VALUES (292, '', 0, 16, 13, NULL, 'Administrasi Pajak', '', '', 'v7r6mg3eozkwswchknebmq5yplyypwe7.png', 0, 1048, 1048, '2018-10-30 10:26:06', '2020-03-17 12:40:26', 0);
INSERT INTO `ref_lessons` VALUES (293, '', 0, 16, 13, NULL, 'Akuntansi Perusahaan / Pemerintah', '', '', 'ys4r08n80kolalevz3edvuqbfi6h8a8q.png', 0, 1048, 1048, '2018-10-30 10:26:26', '2020-03-17 12:40:24', 0);
INSERT INTO `ref_lessons` VALUES (294, '', 0, 17, 13, NULL, 'Pendidikan Agama dan Budi Pekerti', '', '', 'ce9pfynixjt2xyijx155mt91e316ogwv.png', 0, 1048, 1048, '2018-10-30 10:30:09', '2020-03-17 12:33:32', 0);
INSERT INTO `ref_lessons` VALUES (295, '', 0, 17, 13, NULL, 'Pendidikan Pancasila dan Kewarganegaraan', 'PPKn', '', 'rfzwm19wvojhm3it9h77p8n4v8xclhd5.png', 0, 1048, 1048, '2018-10-30 10:30:35', '2020-03-17 12:33:33', 0);
INSERT INTO `ref_lessons` VALUES (296, '', 0, 17, 13, NULL, 'Matematika', '', '', 'uaxahusewcuru3b399i6wtdslzf0l7tb.png', 0, 1048, 1048, '2018-10-30 10:30:49', '2020-03-17 12:33:35', 0);
INSERT INTO `ref_lessons` VALUES (297, '', 0, 17, 13, NULL, 'Sejarah Indonesia', '', '', 'inss2lpjs6u9or39zy0zbq96o6ei5vtc.png', 0, 1048, 1048, '2018-10-30 10:30:58', '2020-03-17 12:33:36', 0);
INSERT INTO `ref_lessons` VALUES (298, '', 0, 17, 13, NULL, 'Seni Budaya', '', '', 'mxk3xt0e2pn9zehsz5s81066tm1hiqkp.png', 0, 1048, 1048, '2018-10-30 10:31:11', '2020-03-17 12:33:38', 0);
INSERT INTO `ref_lessons` VALUES (301, '', 0, 17, 13, NULL, 'Pengantar Akuntansi', '', '', 'hwzhol0nbo96aelfdvrhi9pk0g1gpm5a.png', 0, 1048, 1048, '2018-10-30 10:34:45', '2020-03-17 12:33:40', 0);
INSERT INTO `ref_lessons` VALUES (303, '', 0, 17, 13, NULL, 'Simulasi & Komunikasi Digital', '', '', 'onk1hf0du8hyhbq4qa7ccxwqgn2341u6.png', 0, 1048, 1048, '2018-10-30 10:35:19', '2020-03-17 12:33:45', 0);
INSERT INTO `ref_lessons` VALUES (304, '', 0, 17, 13, NULL, 'Etika Profesi', '', '', 't6e23esbx9huzrz6oj2e7hwftxlqxgot.png', 0, 1048, 1048, '2018-10-30 10:35:31', '2020-03-17 12:33:44', 0);
INSERT INTO `ref_lessons` VALUES (305, '', 0, 17, 13, NULL, 'Dasar-dasar Perbankan', '', '', 'k56l9s5v68l0d8jx6uwv2ynm31tcy79b.png', 0, 1048, 1048, '2018-10-30 10:35:43', '2020-03-17 12:33:48', 0);
INSERT INTO `ref_lessons` VALUES (306, '', 0, 17, 13, NULL, 'Spreadsheet', '', '', 'l8d3wzyg3mfd5yoqpw0ju91ygb7npjxj.png', 0, 1048, 1048, '2018-10-30 10:36:11', '2020-03-17 12:33:48', 0);
INSERT INTO `ref_lessons` VALUES (307, '', 0, 17, 13, NULL, 'Akuntansi Perusahaan Jasa', '', '', 'g9l60xdfm41pkca6br3si7gyshbh5v7u.png', 0, 1048, 1048, '2018-10-30 10:36:30', '2020-03-17 12:33:49', 0);
INSERT INTO `ref_lessons` VALUES (308, '', 0, 17, 13, NULL, 'Akuntansi Perusahaan Dagang', '', '', 'cyv18bjpf3880ptf3ysyo6z9s9z59ix5.png', 0, 1048, 1048, '2018-10-30 10:36:42', '2020-03-17 12:33:51', 0);
INSERT INTO `ref_lessons` VALUES (309, '', 0, 17, 13, NULL, 'Akuntansi Keuangan', '', '', 'hn5sj4kpti3zhdo4y7dk9d2hi47a224o.png', 0, 1048, 1048, '2018-10-30 10:36:53', '2020-03-17 12:33:52', 0);
INSERT INTO `ref_lessons` VALUES (310, '', 0, 17, 13, NULL, 'Komputer Akuntansi', '', '', 'j74rnyuvj9pd1yhn0831ceor7h226zxm.png', 0, 1048, 1048, '2018-10-30 10:37:11', '2020-03-17 12:33:54', 0);
INSERT INTO `ref_lessons` VALUES (311, '', 0, 17, 13, NULL, 'Administrasi Pajak', '', '', 'jm4859mej6oentoizg2simxfc43ww7ny.png', 0, 1048, 1048, '2018-10-30 10:37:22', '2019-01-19 21:56:44', 0);
INSERT INTO `ref_lessons` VALUES (312, '', 0, 17, 13, NULL, 'Akuntansi Perusahaan / Pemerintah', '', '', '80yycopc26enk4x0cm86a9hle7i67owe.png', 0, 1048, 1048, '2018-10-30 10:37:35', '2020-03-17 12:33:55', 0);
INSERT INTO `ref_lessons` VALUES (313, '', 0, 18, 13, NULL, 'Pendidikan Agama dan Budi Pekerti', '', '', 'b90jakncrgn3q62suhzqols0ilnh7y4l.png', 0, 1048, 1048, '2018-10-30 10:38:34', '2020-03-17 12:42:01', 0);
INSERT INTO `ref_lessons` VALUES (314, '', 0, 18, 13, NULL, 'Pendidikan Pancasila dan Kewarganegaraan', 'PPKn', '', '6kj13ydgnrjc0135pkzu1vir3zt6u4v9.png', 0, 1048, 1048, '2018-10-30 10:38:54', '2019-01-20 21:03:03', 0);
INSERT INTO `ref_lessons` VALUES (316, '', 0, 18, 13, NULL, 'Matematika', '', '', '1skti4om1xur3fdu5tbleb2wlxcn1jq1.png', 0, 1048, 1, '2018-10-30 10:39:52', '2019-01-30 17:11:58', 0);
INSERT INTO `ref_lessons` VALUES (317, '', 0, 18, 13, NULL, 'Sejarah Indonesia', '', '', '8if4jhxxx5khtrbfrg1g1yj5pca74grs.png', 0, 1048, 1048, '2018-10-30 10:40:11', '2020-03-17 12:41:59', 0);
INSERT INTO `ref_lessons` VALUES (318, '', 0, 18, 13, NULL, 'Seni Budaya', '', '', 'l2yw5o1942i0762lxym06lydu2jmxf4d.png', 0, 1048, 1048, '2018-10-30 10:40:24', '2019-01-20 21:09:41', 0);
INSERT INTO `ref_lessons` VALUES (322, '', 0, 18, 13, NULL, 'Pengantar Akuntansi', '', '', 'zb9ve9axepsocs75wz15t2v9z27h2q78.png', 0, 1048, 1048, '2018-10-30 10:41:26', '2020-03-17 12:41:58', 0);
INSERT INTO `ref_lessons` VALUES (324, '', 0, 18, 13, NULL, 'Simulasi & Komunikasi Digital', '', '', '0zd0pt86ipsdad7w4yjxlyelfw487jom.png', 0, 1048, 1048, '2018-10-30 10:41:54', '2020-03-17 12:41:58', 0);
INSERT INTO `ref_lessons` VALUES (325, '', 0, 18, 13, NULL, 'Etika Profesi', '', '', '8d0ivo4ft86u1ec75sg8om0b0gukk96y.png', 0, 1048, 1048, '2018-10-30 10:42:03', '2019-01-20 16:30:28', 0);
INSERT INTO `ref_lessons` VALUES (326, '', 0, 18, 13, NULL, 'Dasar-dasar Perbankan', '', '', '74h8q2q1u8w4kkqi1n1xn5ihx5opvuxb.png', 0, 1048, 1048, '2018-10-30 10:42:15', '2020-03-17 12:41:57', 0);
INSERT INTO `ref_lessons` VALUES (327, '', 0, 18, 13, NULL, 'Spreadsheet', '', '', '019n9ojoruhil6dupcykkjr0uo2x7iqa.png', 0, 1048, 1048, '2018-10-30 10:42:27', '2020-03-17 12:41:56', 0);
INSERT INTO `ref_lessons` VALUES (328, '', 0, 18, 13, NULL, 'Akuntansi Perusahaan Jasa', '', '', 'pa5ht4egg3raxwtrso8urxtv102y0r61.png', 0, 1048, 1048, '2018-10-30 10:42:39', '2020-03-17 12:41:54', 0);
INSERT INTO `ref_lessons` VALUES (329, '', 0, 18, 13, NULL, 'Akuntansi Perusahaan Dagang', '', '', 'hehxfqp1oq8km4olwmve7gmn7qqzrzmo.png', 0, 1048, 1048, '2018-10-30 10:42:51', '2020-03-17 12:41:54', 0);
INSERT INTO `ref_lessons` VALUES (330, '', 0, 18, 13, NULL, 'Akuntansi Keuangan', '', '', 'yhouf689m8f1w56ehuem2futlk61j3b7.png', 0, 1048, 1, '2018-10-30 10:43:02', '2019-01-30 17:11:56', 0);
INSERT INTO `ref_lessons` VALUES (331, '', 0, 18, 13, NULL, 'Komputer Akuntansi', '', '', 'ueux3fdqfxgtctggueg8s5x7fy1mft3h.png', 0, 1048, 1048, '2018-10-30 10:43:16', '2020-03-17 12:41:53', 0);
INSERT INTO `ref_lessons` VALUES (332, '', 0, 18, 13, NULL, 'Administrasi Pajak', '', '', '44in9pdup41406erbqrs1kwno7hxr1d8.png', 0, 1048, 1048, '2018-10-30 10:43:29', '2019-01-19 21:56:58', 0);
INSERT INTO `ref_lessons` VALUES (333, '', 0, 18, 13, NULL, 'Akuntansi Perusahaan / Pemerintah', '', '', 'zkyry8xk9hvayvkd8nndzwm7phfxvpyo.png', 0, 1048, 1048, '2018-10-30 10:43:48', '2020-03-17 12:41:52', 0);
INSERT INTO `ref_lessons` VALUES (334, '', 0, 16, 13, NULL, 'Ilmu Pengetahuan Alam', 'IPA', '', 'ax496i7nww1q541z602p6tzec1g95pl3.png', 0, 1048, 1048, '2018-10-31 12:50:48', '2020-03-17 12:40:23', 0);
INSERT INTO `ref_lessons` VALUES (335, '', 0, 17, 13, NULL, 'Ilmu Pengetahuan Alam', 'IPA', '', 'aps8ce7xm1ypq0rsxme71utvcmwochzr.png', 0, 1048, 1048, '2018-10-31 12:51:13', '2020-03-17 12:33:56', 0);
INSERT INTO `ref_lessons` VALUES (336, '', 0, 18, 13, NULL, 'Ilmu Pengetahuan Alam', 'IPA', '', 'x0gmivfpqt7zhh90uq9jp0aq8fp5bb5o.png', 0, 1048, 1048, '2018-10-31 12:51:36', '2020-03-17 12:41:51', 0);
INSERT INTO `ref_lessons` VALUES (337, '', 0, 18, 13, NULL, 'Keterampilan Komputer dan Pengelolaan Informasi', 'KKPI', '', 'o45jm7usktz1g8831ojdvn6qelnucdh7.png', 0, 1048, 1048, '2018-10-31 12:54:57', '2019-01-20 20:48:00', 0);
INSERT INTO `ref_lessons` VALUES (338, '', 0, 17, 13, NULL, 'Keterampilan Komputer dan Pengelolaan Informasi', 'KKPI', '', 'hrkljk5e05c9wk6j2doa0vqsfmyhiylx.png', 0, 1048, 1048, '2018-10-31 12:57:47', '2019-01-20 15:36:36', 0);
INSERT INTO `ref_lessons` VALUES (339, '', 0, 16, 13, NULL, 'Keterampilan Komputer dan Pengelolaan Informasi', 'KKPI', '', 'l7jwlwgzlf1qilw1ax24by1rs7ucwovt.png', 0, 1048, 1048, '2018-10-31 12:58:46', '2020-03-17 12:40:23', 0);
INSERT INTO `ref_lessons` VALUES (340, '', 0, 16, 13, NULL, 'Pendidikan Lingkungan Hidup', 'PLH', '', 'gxegdzcib3nd9f323g23e6b4pxvl5diw.png', 0, 1048, 1048, '2018-10-31 13:20:42', '2020-03-17 12:40:22', 0);
INSERT INTO `ref_lessons` VALUES (341, '', 0, 17, 13, NULL, 'Pendidikan Lingkungan Hidup', 'PLH', '', 'o6eape1ir7lbaziv868ndb7zizl6jkg5.png', 0, 1048, 1048, '2018-10-31 13:21:05', '2020-03-17 12:33:58', 0);
INSERT INTO `ref_lessons` VALUES (342, '', 0, 18, 13, NULL, 'Pendidikan Lingkungan Hidup', 'PLH', '', 'mo8ke7t5r3v6zgfbrhvce4jmaepxowlj.png', 0, 1048, 1048, '2018-10-31 13:23:41', '2019-01-20 21:02:50', 0);
INSERT INTO `ref_lessons` VALUES (343, '', 0, 18, 13, NULL, 'Pendidikan Jasmani, Olahraga dan Kesehatan', 'PJOK', '', 'yw6kcqhtyy20tpkgs3zy3u7wyjmio0r5.png', 0, 1048, 1048, '2018-10-31 13:31:32', '2019-01-20 21:02:36', 0);
INSERT INTO `ref_lessons` VALUES (344, '', 0, 17, 13, NULL, 'Pendidikan Jasmani Olahraga dan Kesehatan', 'PJOK', '', 't2avvrrdaycv5p8l47201kgh559etxck.png', 0, 1048, 1048, '2018-10-31 13:32:21', '2019-01-20 16:17:48', 0);
INSERT INTO `ref_lessons` VALUES (345, '', 0, 16, 13, NULL, 'Pendidikan Jasmani, Olahraga dan Kesehatan', 'PJOK', '', '5lgp3y2qu5wser4akpyqqo9n9pob9xcu.png', 0, 1048, 1048, '2018-10-31 13:32:43', '2019-01-20 12:39:39', 0);
INSERT INTO `ref_lessons` VALUES (346, '', 0, 18, 13, NULL, 'Kearsipan', '', '', 'vsnwxs4dnhoqaru1w0h29y7xnf6mpr87.png', 0, 1048, 1048, '2018-10-31 13:33:10', '2020-03-17 12:41:49', 0);
INSERT INTO `ref_lessons` VALUES (348, '', 0, 16, 13, NULL, 'Kearsipan', '', '', 'egjm3mgqbbjmf13hwlfskl6kcbkjpnhc.png', 0, 1048, 1048, '2018-10-31 13:33:34', '2020-03-17 12:40:20', 0);
INSERT INTO `ref_lessons` VALUES (349, '', 0, 16, 13, NULL, 'Menangani Surat / Dokumen Kantor', 'MS/DK', '', 'jcoc17830ya43tjr47t8mpebwt72z48y.png', 0, 1048, 1048, '2018-10-31 13:37:57', '2020-03-17 12:40:19', 0);
INSERT INTO `ref_lessons` VALUES (350, '', 0, 17, 13, NULL, 'Menangani Surat / Dokumen Kantor', 'MS/DK', '', 'bm78ywwh5yr81gv0h6v40s25dls5ci7x.png', 0, 1048, 1048, '2018-10-31 13:38:10', '2020-03-17 12:33:58', 0);
INSERT INTO `ref_lessons` VALUES (351, '', 0, 18, 13, NULL, 'Menangani Surat / Dokumen Kantor', 'MS/DK', '', 'eudcmcgl2fwxe519yd627gbrpp1q7hjq.png', 0, 1048, 1048, '2018-10-31 13:44:33', '2020-03-17 12:41:49', 0);
INSERT INTO `ref_lessons` VALUES (352, '', 0, 18, 13, NULL, 'Mengatur Perjalanan Dinas', '', '', 'w6oaqrnx7ce78sjm9hoc5bm2lvkbbn0t.png', 0, 1048, 1048, '2018-10-31 13:44:52', '2020-03-17 12:41:48', 0);
INSERT INTO `ref_lessons` VALUES (353, '', 0, 17, 13, NULL, 'Mengatur Perjalanan Dinas', '', '', 'r31e9h40gcbv3rk6w6ungjpvkc2azdkg.png', 0, 1048, 1048, '2018-10-31 13:45:07', '2020-03-17 12:34:01', 0);
INSERT INTO `ref_lessons` VALUES (354, '', 0, 16, 13, NULL, 'Mengatur Perjalanan Dinas', '', '', '989slsp7rry600bar103dgqq8g1c1dd6.png', 0, 1048, 1048, '2018-10-31 13:45:23', '2020-03-17 12:40:18', 0);
INSERT INTO `ref_lessons` VALUES (355, '', 0, 18, 13, NULL, 'Mengoperasikan Aplikasi Presentasi', '', '', '1nmjdhz72z8otea72y35qw3oo0fxybso.png', 0, 1048, 1048, '2018-10-31 13:51:37', '2020-03-17 12:41:47', 0);
INSERT INTO `ref_lessons` VALUES (356, '', 0, 17, 13, NULL, 'Mengoperasikan Aplikasi Presentasi', '', '', '0dc01rqoiseu3jaizcetjer27fqf5w99.png', 0, 1048, 1048, '2018-10-31 13:51:59', '2020-03-17 12:34:03', 0);
INSERT INTO `ref_lessons` VALUES (357, '', 0, 16, 13, NULL, 'Mengoperasikan Aplikasi Presentasi', '', '', 'upmo24qt20kvxrrsd09qtj0pevv2v19e.png', 0, 1048, 1048, '2018-10-31 13:52:28', '2020-03-17 12:40:17', 0);
INSERT INTO `ref_lessons` VALUES (358, '', 0, 16, 13, NULL, 'Mengoperasikan Perangkat Lunak', '', '', '2kp1upr7p7terayvua20wardy3wxrua3.png', 0, 1048, 1048, '2018-10-31 13:54:17', '2020-03-17 12:40:16', 0);
INSERT INTO `ref_lessons` VALUES (359, '', 0, 17, 13, NULL, 'Mengoperasikan Perangkat Lunak', '', '', 'qtxrmx61c58a5fpoxiexrxekgbfw1i41.png', 0, 1048, 1048, '2018-10-31 13:54:40', '2020-03-17 12:34:04', 0);
INSERT INTO `ref_lessons` VALUES (360, '', 0, 18, 13, NULL, 'Mengoperasikan Perangkat Lunak', '', '', 'lu9yh2blukdgyybx5h40qdgmmdyt7n11.png', 0, 1048, 1048, '2018-10-31 13:55:00', '2020-03-17 12:41:45', 0);
INSERT INTO `ref_lessons` VALUES (361, '', 0, 18, 13, NULL, 'Otomatisasi Humas dan Keprotokolan', '', '', '5c4n80qd54rxtvib9ie3vwxz8o5w2ge7.png', 0, 1048, 1048, '2018-10-31 13:55:45', '2020-03-17 12:41:44', 0);
INSERT INTO `ref_lessons` VALUES (362, '', 0, 17, 13, NULL, 'Otomatisasi Humas dan Keprotokolan', '', '', 's7oyf0ks8ky56yedcgko0y2lka9rsbdf.png', 0, 1048, 1048, '2018-10-31 13:56:16', '2020-03-17 12:34:09', 0);
INSERT INTO `ref_lessons` VALUES (363, '', 0, 16, 13, NULL, 'Otomatisasi Humas dan Keprotokolan', '', '', 'kfmq77k29h04poaa30swgxpdmo0mefwh.png', 0, 1048, 1048, '2018-10-31 13:56:34', '2020-03-17 12:40:15', 0);
INSERT INTO `ref_lessons` VALUES (364, '', 0, 16, 13, NULL, 'Korespondensi', '', '', 'ig0t4bh3p59sqstzkif0hlzrw0bp4fc9.png', 0, 1048, 1048, '2018-10-31 13:57:19', '2020-03-17 12:40:14', 0);
INSERT INTO `ref_lessons` VALUES (365, '', 0, 17, 13, NULL, 'Korespondensi', '', '', 'wofi1f6iflofijmj12jrdqt588k1lg7u.png', 0, 1048, 1048, '2018-10-31 13:57:35', '2020-03-17 12:34:10', 0);
INSERT INTO `ref_lessons` VALUES (366, '', 0, 18, 13, NULL, 'Korespondensi', '', '', '8xwd8ovl5bw1lmpii39vo6sg0r9ao43f.png', 0, 1048, 1048, '2018-10-31 13:57:53', '2020-03-17 12:41:43', 0);
INSERT INTO `ref_lessons` VALUES (367, '', 0, 18, 13, NULL, 'Pengantar Administrasi Perkantoran', '', '', '14qmbuuw7ufd2dn5dmfnat5005oxmf56.png', 0, 1048, 1048, '2018-10-31 13:58:57', '2020-03-17 12:41:43', 0);
INSERT INTO `ref_lessons` VALUES (368, '', 0, 17, 13, NULL, 'Pengantar Administrasi Perkantoran', '', '', 's3zr2qvd495u0dyb2cq33t30f2p0dc9h.png', 0, 1048, 1048, '2018-10-31 13:59:16', '2020-03-17 12:34:12', 0);
INSERT INTO `ref_lessons` VALUES (369, '', 0, 16, 13, NULL, 'Pengantar Administrasi Perkantoran', '', '', 'vff8ueqgf1qflb6ac1gooyerx5jon9sa.png', 0, 1048, 1048, '2018-10-31 13:59:50', '2020-03-17 12:40:12', 0);
INSERT INTO `ref_lessons` VALUES (370, '', 0, 18, 13, NULL, 'Pengantar Ekononi Bisnis', '', '', 'hs8agtavhwwg3ryi5njrpx9d1j7y55mr.png', 0, 1048, 1048, '2018-10-31 14:01:12', '2020-03-17 12:41:42', 0);
INSERT INTO `ref_lessons` VALUES (371, '', 0, 17, 13, NULL, 'Pengantar Ekononi Bisnis', '', '', 'ee96hg5okw56adl3um14drb9cszwxkij.png', 0, 1048, 1048, '2018-10-31 14:02:00', '2020-03-17 12:34:13', 0);
INSERT INTO `ref_lessons` VALUES (372, '', 0, 16, 13, NULL, 'Pengantar Ekononi Bisnis', '', '', 'jyly402d8il23bonjgi2za0trq359mk8.png', 0, 1048, 1048, '2018-10-31 14:02:16', '2020-03-17 12:40:11', 0);
INSERT INTO `ref_lessons` VALUES (373, '', 0, 16, 13, NULL, 'Transaksi Keuangan', '', '', 'oeyc2svcql4zn5ewzjv89tqhp26zigut.png', 0, 1048, 1048, '2018-10-31 14:05:01', '2020-03-17 12:40:10', 0);
INSERT INTO `ref_lessons` VALUES (374, '', 0, 17, 13, NULL, 'Transaksi Keuangan', '', '', 'bapr4vkhyxznmuibj89xcyprao7jbt37.png', 0, 1048, 1048, '2018-10-31 14:12:18', '2020-03-17 12:34:14', 0);
INSERT INTO `ref_lessons` VALUES (375, '', 0, 18, 13, NULL, 'Transaksi Keuangan', '', '', 'i9ezozaju389uwl1grfl7h3yxllkv3dk.png', 0, 1048, 1048, '2018-10-31 14:12:49', '2020-03-17 12:41:40', 0);
INSERT INTO `ref_lessons` VALUES (376, '', 0, 18, 13, NULL, 'Otomatisasi Keuangan', '', '', 'wr9apsuk7pdd7pmxjmvrt4zwmr5c9liu.png', 0, 1048, 1048, '2018-10-31 14:13:43', '2020-03-17 12:41:39', 0);
INSERT INTO `ref_lessons` VALUES (377, '', 0, 17, 13, NULL, 'Otomatisasi Keuangan', '', '', 'gn6cwwj2rs9g6yadrf2c8p54e0l3qetl.png', 0, 1048, 1048, '2018-10-31 14:14:12', '2020-03-17 12:34:15', 0);
INSERT INTO `ref_lessons` VALUES (378, '', 0, 16, 13, NULL, 'Otomatisasi Keuangan', '', '', 'k7lrvi6x0degx11gna5lmomf5c7h0o4g.png', 0, 1048, 1048, '2018-10-31 14:14:29', '2020-03-17 12:40:09', 0);
INSERT INTO `ref_lessons` VALUES (381, '', 0, 17, 13, NULL, 'Kearsipan', '', '', 'ujenoem1p06v07h2j3uanj85scroq827.png', 0, 1048, 1048, '2018-10-31 14:16:52', '2020-03-17 12:34:18', 0);
INSERT INTO `ref_lessons` VALUES (383, '', 0, 7, 11, NULL, 'Pendidikan Jasmani, Olahraga dan Kesehatan', 'PJOK', '', '37bcoek4k6jyrww0ag4bjlj0jya546fu.png', 0, 1048, 1048, '2018-11-02 08:43:35', '2019-03-11 23:45:03', 0);
INSERT INTO `ref_lessons` VALUES (384, '', 0, 7, 11, NULL, 'Bahasa Sunda', '', '', 'p82od6cr60gwysvj1qvki4xzoq9jphrk.png', 0, 1048, 1048, '2018-11-02 08:43:49', '2019-07-15 09:56:30', 0);
INSERT INTO `ref_lessons` VALUES (385, '', 0, 7, 11, NULL, 'Seni Budaya', '', '', 'sm3wvqc8gcm5nu4nuki45ib7te21xhbh.png', 0, 1048, 1048, '2018-11-02 08:44:00', '2019-08-17 15:00:53', 0);
INSERT INTO `ref_lessons` VALUES (386, 'ISLAM', 1, 7, 11, NULL, 'Pendidikan Agama Islam', 'PAI', '', 'j59ufhovgeqii3bqzzsd6am714lyyuzf.png', 0, 1048, 1048, '2018-11-02 08:44:15', '2019-08-31 21:41:21', 0);
INSERT INTO `ref_lessons` VALUES (388, '', 0, 8, 20, NULL, 'Pendidikan Jasmani, Olahraga dan Kesehatan', 'PJOK', '', 'wwqku3xwo8opatxnpm3fucchmoza7s2c.png', 0, 1048, 1048, '2018-11-02 08:46:03', '2020-03-21 11:28:58', 0);
INSERT INTO `ref_lessons` VALUES (389, '', 0, 8, 20, NULL, 'Bahasa Sunda', '', '', 'ljuqrtqdsw8n74o0o2hbdv3wlgvysy3p.png', 0, 1048, 1048, '2018-11-02 08:46:11', '2020-03-21 11:29:15', 0);
INSERT INTO `ref_lessons` VALUES (390, '', 0, 8, 20, NULL, 'Seni Budaya', '', '', 'po19lf1otkbeimqpwuold5mv09jz3vvp.png', 0, 1048, 1048, '2018-11-02 08:46:21', '2020-03-21 11:29:23', 0);
INSERT INTO `ref_lessons` VALUES (391, 'ISLAM', 1, 8, 20, NULL, 'Pendidikan Agama Islam', 'PAI', '', '4l42oys0gssuidd5s3suffi9kbze7d5z.png', 0, 1048, 1048, '2018-11-02 08:46:32', '2020-03-21 11:29:31', 0);
INSERT INTO `ref_lessons` VALUES (392, '', 0, 9, 11, NULL, 'Bahasa Sunda', '', '', '1zqdkmv6n59di18n6ayawtwkm9oz5cvx.png', 0, 1048, 1048, '2018-11-02 08:46:57', '2020-02-25 22:19:27', 0);
INSERT INTO `ref_lessons` VALUES (393, '', 0, 9, 11, NULL, 'Pendidikan Jasmani, Olahraga dan Kesehatan', 'PJOK', '', 'yamwgtal2abv1kf5nrk1lvo4nrk859nv.png', 0, 1048, 1048, '2018-11-02 08:47:16', '2019-07-15 07:47:53', 0);
INSERT INTO `ref_lessons` VALUES (394, '', 0, 9, 11, NULL, 'Seni Budaya', '', '', 'r11pi0yc5x4a7h80i0s6ojdfsb5sdkjm.png', 0, 1048, 1048, '2018-11-02 08:47:25', '2019-07-15 08:32:16', 0);
INSERT INTO `ref_lessons` VALUES (395, 'ISLAM', 1, 9, 11, NULL, 'Pendidikan Agama Islam', 'PAI', '', 'g6o9rskf2bo8sk7bpjkwr2t3s4892q6h.png', 0, 1048, 1048, '2018-11-02 08:47:38', '2019-08-31 21:43:32', 0);
INSERT INTO `ref_lessons` VALUES (396, '', 0, 16, 17, NULL, 'Gambar Teknik Listrik', '', 'Gambar Garis, Simbol Listrik dan Elektronika Dasar', 't937r4zt89hwusi26z67wjbg9deuhopx.png', 0, 1048, 1048, '2018-11-02 18:23:12', '2020-03-17 12:40:08', 0);
INSERT INTO `ref_lessons` VALUES (397, '', 0, 16, 17, NULL, 'Fisika', '', '', 'sddagzpla0c9a9l41r19ae5x3hm7ygdg.png', 0, 1048, 1048, '2018-11-02 18:23:27', '2020-03-17 12:40:07', 0);
INSERT INTO `ref_lessons` VALUES (398, '', 0, 16, 17, NULL, 'Kimia', '', '', 'uz2o0n5zkld8aycsfqfkcmn053ppqcmb.png', 0, 1048, 1048, '2018-11-02 18:23:37', '2020-03-17 12:40:06', 0);
INSERT INTO `ref_lessons` VALUES (399, '', 0, 16, 17, NULL, 'Dasar Desain Grafis', '', '', 'a4x65rkkigv53plja8qi2laywnk8vjfa.png', 0, 1048, 1048, '2018-11-02 18:24:27', '2020-03-17 12:40:04', 0);
INSERT INTO `ref_lessons` VALUES (400, '', 0, 16, 17, NULL, 'Pekerjaan Dasar Elektromekanik', '', '', 'v3z3uqd01jg7x0bo6esnzvak9rkudnyl.png', 0, 1048, 1048, '2018-11-02 18:24:50', '2019-01-20 11:12:51', 0);
INSERT INTO `ref_lessons` VALUES (401, '', 0, 16, 17, NULL, 'Instalasi Motor Listrik', '', '', '5f4laq7qhbhiv92079wrewcr7nv9c2hm.png', 0, 1048, 1048, '2018-11-02 18:25:09', '2020-03-17 12:40:03', 0);
INSERT INTO `ref_lessons` VALUES (402, '', 0, 17, 17, NULL, 'Gambar Teknik Listrik', '', 'Gambar Garis, Simbol Listrik dan Elektronika Dasar', 'n0b9ri38r9lzm810xd7ves7av3mthi56.png', 0, 1048, 1048, '2018-11-02 18:27:55', '2020-03-17 12:34:19', 0);
INSERT INTO `ref_lessons` VALUES (403, '', 0, 17, 17, NULL, 'Fisika', '', '', 'f5q4pc42mj81dlivdoin8df26kjp97hq.png', 0, 1048, 1048, '2018-11-02 18:28:14', '2020-03-17 12:34:20', 0);
INSERT INTO `ref_lessons` VALUES (404, '', 0, 17, 17, NULL, 'Kimia', '', '', '2xviq2hzuf9c507hhlsv3drbmumoc0nf.png', 0, 1048, 1048, '2018-11-02 18:28:31', '2020-03-17 12:34:21', 0);
INSERT INTO `ref_lessons` VALUES (405, '', 0, 18, 17, NULL, 'Gambar Teknik Listrik', '', '', 'pk1i8ery9e415j25stwrm65dmy63fuej.png', 0, 1048, 1048, '2018-11-02 18:29:01', '2020-03-17 12:41:39', 0);
INSERT INTO `ref_lessons` VALUES (406, '', 0, 18, 17, NULL, 'Fisika', '', '', 'v79s5uvtlf2uvoybhpsbs6d9ftf7a8hc.png', 0, 1048, 1048, '2018-11-02 18:29:07', '2020-03-17 12:41:37', 0);
INSERT INTO `ref_lessons` VALUES (407, '', 0, 18, 17, NULL, 'Kimia', '', '', 'eaner146q821boxj48ju53v7bhcaeq4o.png', 0, 1048, 1048, '2018-11-02 18:29:19', '2020-03-17 12:41:36', 0);
INSERT INTO `ref_lessons` VALUES (408, '', 0, 17, 17, NULL, 'Dasar Desain Grafis', '', '', 'j14dtawhsmyekxvtrtqs22rvrm6wi098.png', 0, 1048, 1048, '2018-11-02 18:29:49', '2020-03-17 12:34:22', 0);
INSERT INTO `ref_lessons` VALUES (409, '', 0, 18, 17, NULL, 'Dasar Desain Grafis', '', '', 't4fxtef9ofolgxxn96ccesntmtde4i35.png', 0, 1048, 1048, '2018-11-02 18:30:11', '2020-03-17 12:41:36', 0);
INSERT INTO `ref_lessons` VALUES (410, '', 0, 17, 17, NULL, 'Pekerjaan Dasar Elektromekanik', '', '', '3x0emjcvq39e2lbj0asoyjujkkx99kpz.png', 0, 1048, 1048, '2018-11-02 18:30:40', '2020-03-17 12:34:23', 0);
INSERT INTO `ref_lessons` VALUES (411, '', 0, 18, 17, NULL, 'Pekerjaan Dasar Elektromekanik', '', '', 'b2v7mtr6nzr9e046byhx9ldv5drk6xwp.png', 0, 1048, 1048, '2018-11-02 18:30:58', '2020-03-17 12:41:34', 0);
INSERT INTO `ref_lessons` VALUES (412, '', 0, 17, 17, NULL, 'Instalasi Motor Listrik', '', '', 'wn83mp0mvum6zvd067orn4navht7puah.png', 0, 1048, 1048, '2018-11-02 18:31:15', '2020-03-17 12:34:24', 0);
INSERT INTO `ref_lessons` VALUES (413, '', 0, 18, 17, NULL, 'Instalasi Motor Listrik', '', '', '1nh4gb0cdeni2bqtuwip1fv85s7cw9od.png', 0, 1048, 1048, '2018-11-02 18:31:37', '2019-01-20 16:32:30', 0);
INSERT INTO `ref_lessons` VALUES (414, '', 0, 10, 12, NULL, 'Pendidikan Jasmani, Olahraga dan Kesehatan', 'PJOK', '', 'w2e08q0w90ruzae0z7fbkxnx0xoc4bq4.png', 0, 1048, 1048, '2018-11-02 20:01:17', '2019-01-22 21:49:28', 0);
INSERT INTO `ref_lessons` VALUES (415, '', 0, 11, 12, NULL, 'Pendidikan Jasmani, Olahraga dan Kesehatan', 'PJOK', '', 'ig3x4i8mu5k4ukw903rntrtxb3809f7w.png', 0, 1048, 1048, '2018-11-02 20:01:49', '2019-01-22 21:42:59', 0);
INSERT INTO `ref_lessons` VALUES (422, 'ISLAM', 1, 19, 18, NULL, 'Sejarah kebudayaan Islam', '', '', 'i9dq0ytnhx31ti0f85j26dquwstk42z3.png', 0, 1048, 1048, '2018-11-11 20:47:30', '2020-03-27 08:31:53', 0);
INSERT INTO `ref_lessons` VALUES (423, 'ISLAM', 1, 20, 18, NULL, 'Sejarah kebudayaan Islam', '', '', 'qrodah2s0ljl2pelq2d9ik2d4ggbl4x5.png', 0, 1048, 1048, '2018-11-11 20:47:47', '2020-03-27 08:33:55', 0);
INSERT INTO `ref_lessons` VALUES (424, 'ISLAM', 1, 21, 18, NULL, 'Sejarah Kebudayaan Islam', '', '', 'qa6lxwmlictpn44b7mu3ey949maqiuqs.png', 0, 1048, 1048, '2018-11-11 20:51:15', '2020-03-27 08:34:36', 0);
INSERT INTO `ref_lessons` VALUES (425, 'ISLAM', 1, 19, 18, NULL, 'Aqidah ahlak', '', '', 'fg36kvd2h4k3t94h71kskj2krzr0bf68.png', 0, 1048, 1048, '2018-11-11 20:52:00', '2020-03-27 08:31:55', 0);
INSERT INTO `ref_lessons` VALUES (426, 'ISLAM', 1, 20, 18, NULL, 'Aqidah ahlak', '', '', '9m8tz2jdjnxtywrgsip2d5jrv9y0imzc.png', 0, 1048, 1048, '2018-11-11 20:52:59', '2020-03-27 08:33:56', 0);
INSERT INTO `ref_lessons` VALUES (427, 'ISLAM', 1, 21, 18, NULL, 'Aqidah ahlak', '', '', 'lhlo6lvpd2oqm3fp115j7qjbon6dbk1t.png', 0, 1048, 1048, '2018-11-11 20:53:23', '2020-03-27 08:34:37', 0);
INSERT INTO `ref_lessons` VALUES (428, 'ISLAM', 1, 19, 18, NULL, 'Bahasa Arab', '', '', 'ece3ebqizl0284bps0nefixw4ybsb6bn.png', 0, 1048, 1048, '2018-11-11 20:53:51', '2020-03-27 08:31:55', 0);
INSERT INTO `ref_lessons` VALUES (429, 'ISLAM', 1, 20, 18, NULL, 'Bahasa Arab', '', '', 'uteqsu69dbykvbzrkuwbmxvx0imc2zxv.png', 0, 1048, 1048, '2018-11-11 20:54:14', '2020-03-27 08:33:57', 0);
INSERT INTO `ref_lessons` VALUES (430, 'ISLAM', 1, 21, 18, NULL, 'Bahasa Arab', '', '', 'l2njvb5gqt8rboxhx9e6rc7frd8vxl7s.png', 0, 1048, 1048, '2018-11-11 20:54:37', '2020-03-27 08:34:40', 0);
INSERT INTO `ref_lessons` VALUES (431, '', 0, 19, 18, NULL, 'Matematika', '', '', 'xl7kuhkcgozjszmkohrr6nyk4f7m20hm.png', 0, 1048, 1048, '2018-11-11 20:55:27', '2019-01-22 22:24:53', 0);
INSERT INTO `ref_lessons` VALUES (432, '', 0, 20, 18, NULL, 'Matematika', '', '', 'ghf6sp9m0s9kjtfmdqf3zdl1iqp50r8v.png', 0, 1048, 1048, '2018-11-11 20:55:47', '2020-03-27 08:33:58', 0);
INSERT INTO `ref_lessons` VALUES (433, '', 0, 21, 18, NULL, 'Matematika', '', '', '0vsh5x4pstbggfc5kj9lu1ixm8x5vhie.png', 0, 1048, 1048, '2018-11-11 20:56:04', '2020-03-27 08:34:39', 0);
INSERT INTO `ref_lessons` VALUES (434, '', 0, 19, 18, NULL, 'Bhs Inggris', '', '', 'bg40gpvvqoqcx2g2jhpvwxaoblzpefvo.png', 0, 1048, 1048, '2018-11-11 20:56:38', '2019-01-22 22:23:48', 0);
INSERT INTO `ref_lessons` VALUES (435, '', 0, 20, 18, NULL, 'Bhs Inggris', '', '', 'ajx9u9b6bt4rw160y52kcwqrsftf132n.png', 0, 1048, 1048, '2018-11-11 20:56:59', '2019-01-22 22:54:00', 0);
INSERT INTO `ref_lessons` VALUES (436, '', 0, 21, 18, NULL, 'Bhs Inggris', '', '', 'byvl8hulifeahyqdzn2pwf9m5swi74dz.png', 0, 1048, 1048, '2018-11-11 20:57:19', '2020-03-27 08:34:41', 0);
INSERT INTO `ref_lessons` VALUES (437, '', 0, 19, 18, NULL, 'Bhs Indonesia', '', '', 'shoj1c1guyq8y5e0q896xnafpqnzoh72.png', 0, 1048, 1048, '2018-11-11 20:58:12', '2020-03-27 08:31:56', 1);
INSERT INTO `ref_lessons` VALUES (438, '', 0, 20, 18, NULL, 'Bhs Indonesia', '', '', 'opwio8fzlnloz042pao90e5sz0y0qsci.png', 0, 1048, 1048, '2018-11-11 20:58:30', '2020-03-27 08:33:59', 0);
INSERT INTO `ref_lessons` VALUES (439, '', 0, 21, 18, NULL, 'Bhs Indonesia', '', '', 'kmxv6bu7axas33wg1btx93uqzc92nvbi.png', 0, 1048, 1048, '2018-11-11 20:58:49', '2019-01-22 23:02:51', 0);
INSERT INTO `ref_lessons` VALUES (440, '', 0, 21, 18, NULL, 'Sejarah Indonesia', '', '', 'area2suybc9fxef9uwahhqiscxjteiz5.png', 0, 1048, 1048, '2018-11-11 20:59:26', '2020-03-27 08:34:42', 0);
INSERT INTO `ref_lessons` VALUES (441, '', 0, 20, 18, NULL, 'Sejarah Indonesia', '', '', 'cq2l45s73xoy4tx4vsrzec5yenlvf5pw.png', 0, 1048, 1048, '2018-11-11 20:59:44', '2020-03-27 08:34:00', 0);
INSERT INTO `ref_lessons` VALUES (442, '', 0, 19, 18, NULL, 'Sejarah Indonesia', '', '', 'fjtq3anoq2ojfli1mil5b6xlcd0sydur.png', 0, 1048, 1048, '2018-11-11 21:00:03', '2020-03-27 08:31:57', 0);
INSERT INTO `ref_lessons` VALUES (443, '', 0, 21, 18, NULL, 'Tata Boga', '', '', '1q4ow74wg0i7xdfoinki33cwinabek0g.png', 1, 1048, 1, '2018-11-11 21:01:17', '2019-01-31 08:09:03', 0);
INSERT INTO `ref_lessons` VALUES (444, '', 0, 20, 18, NULL, 'Tata Boga', '', '', 'y0vlcygd0h6bl3yit13eri4lbeknllhy.png', 1, 1048, 1, '2018-11-11 21:01:34', '2019-01-31 08:08:07', 0);
INSERT INTO `ref_lessons` VALUES (445, '', 0, 19, 18, NULL, 'Tata Boga', '', '', 'qpb6ct0x14zeyzzuw410zt2i45d639ib.png', 1, 1048, 1048, '2018-11-11 21:01:56', '2020-03-27 08:32:07', 0);
INSERT INTO `ref_lessons` VALUES (446, '', 0, 19, 18, NULL, 'Tata Busana', '', '', 'e6m8bqem2nl6izkxgyclbju25zna35ao.png', 1, 1048, 1048, '2018-11-11 21:02:24', '2020-03-27 08:32:04', 0);
INSERT INTO `ref_lessons` VALUES (447, '', 0, 20, 18, NULL, 'Tata Busana', '', '', 'jhfbqr6m4z4nc7d2if46yt06o0ntn29d.png', 1, 1048, 1, '2018-11-11 21:03:19', '2019-01-31 08:08:08', 0);
INSERT INTO `ref_lessons` VALUES (448, '', 0, 21, 18, NULL, 'Tata Busana', '', '', 'cz1cwbe4nvcyvu4dra16umbk2sbnovjj.png', 1, 1048, 1, '2018-11-11 21:03:38', '2019-01-31 08:09:05', 0);
INSERT INTO `ref_lessons` VALUES (449, 'ISLAM', 1, 21, 18, NULL, 'Ilmu Fiqh', '', '', 'g51gr0a5m12adylc9ako3wvna9h5bnqb.png', 0, 1048, 1048, '2018-11-11 21:04:16', '2020-03-27 08:34:45', 0);
INSERT INTO `ref_lessons` VALUES (450, 'ISLAM', 1, 20, 18, NULL, 'Ilmu Fiqh', '', '', '9e6n9wp4ljp5yxfc99niai5u95cqzobn.png', 0, 1048, 1048, '2018-11-11 21:04:36', '2020-03-27 08:34:02', 0);
INSERT INTO `ref_lessons` VALUES (451, 'ISLAM', 1, 19, 18, NULL, 'Ilmu Fiqh', '', '', '21a2hzrm8e43su3ed01d5jq6jw0fztvu.png', 0, 1048, 1048, '2018-11-11 21:04:59', '2020-03-27 08:32:10', 0);
INSERT INTO `ref_lessons` VALUES (452, 'ISLAM', 1, 19, 18, NULL, 'Ilmu Hadist', '', '', 'di558sse3er3nmab915fj7vk3urvckcc.png', 0, 1048, 1048, '2018-11-11 21:05:32', '2020-03-27 08:32:11', 0);
INSERT INTO `ref_lessons` VALUES (453, 'ISLAM', 1, 20, 18, NULL, 'Ilmu Hadist', '', '', 'rri06qcw7wxsnvnw347r2i6w7bm86ewm.png', 0, 1048, 1048, '2018-11-11 21:06:04', '2020-03-27 08:34:04', 0);
INSERT INTO `ref_lessons` VALUES (454, 'ISLAM', 1, 21, 18, NULL, 'Ilmu Hadist', '', '', 'ib5z2v55a701e5z6vccangr6efbtqhyg.png', 0, 1048, 1048, '2018-11-11 21:06:24', '2020-03-27 08:34:46', 0);
INSERT INTO `ref_lessons` VALUES (455, 'ISLAM', 1, 19, 18, NULL, 'Ilmu Kalam', '', '', '7s1t22fnm8veh2vcu66544cekwvm3qst.png', 0, 1048, 1048, '2018-11-11 21:07:01', '2020-03-27 08:32:12', 0);
INSERT INTO `ref_lessons` VALUES (456, 'ISLAM', 1, 20, 18, NULL, 'Ilmu Kalam', '', '', '9tugmktwq7gunk1dxu7cph3c9gg1orv8.png', 0, 1048, 1048, '2018-11-11 21:07:18', '2020-03-27 08:34:04', 0);
INSERT INTO `ref_lessons` VALUES (457, 'ISLAM', 1, 21, 18, NULL, 'Ilmu Kalam', '', '', 'p3iuurq7alycmqbg29b79d5kyt8zml2d.png', 0, 1048, 1048, '2018-11-11 21:08:21', '2020-03-27 08:34:47', 0);
INSERT INTO `ref_lessons` VALUES (458, 'ISLAM', 1, 19, 18, NULL, 'Ilmu Tafsir', '', '', 'jy8c9eir7b9dwmnnj2tsk4lzy7c8v7k5.png', 0, 1048, 1048, '2018-11-12 04:37:15', '2020-03-27 08:32:12', 0);
INSERT INTO `ref_lessons` VALUES (459, 'ISLAM', 1, 20, 18, NULL, 'Ilmu Tafsir', '', '', '7e3tq1bqp8dwdyrq4h6ylgf2vhs94fk9.png', 0, 1048, 1048, '2018-11-12 04:37:42', '2020-03-27 08:34:05', 0);
INSERT INTO `ref_lessons` VALUES (460, 'ISLAM', 1, 21, 18, NULL, 'Ilmu Tafsir', '', '', '0hjwyymdmquw6k0i3fiqni8irp9rm6yn.png', 0, 1048, 1048, '2018-11-12 04:38:07', '2020-03-27 08:34:48', 0);
INSERT INTO `ref_lessons` VALUES (461, '', 0, 21, 18, NULL, 'Kimia', '', '', '542uzt8kzzktsv04ovmgq79hkfwzubxr.png', 0, 1048, 1048, '2018-11-12 04:38:39', '2020-03-27 08:34:50', 0);
INSERT INTO `ref_lessons` VALUES (462, '', 0, 21, 18, NULL, 'Fisika', '', '', 'tz6zculrklrvyacwb9a8i82nuhg3nycc.png', 0, 1048, 1048, '2018-11-12 04:38:56', '2020-03-27 08:34:51', 0);
INSERT INTO `ref_lessons` VALUES (463, '', 0, 20, 18, NULL, 'Kimia', '', '', 'kcmq9vgib0va7io25dc8bl0bah2oognd.png', 0, 1048, 1048, '2018-11-12 04:39:16', '2019-01-22 23:41:11', 0);
INSERT INTO `ref_lessons` VALUES (464, '', 0, 20, 18, NULL, 'Fisika', '', '', 'eq2hcnsybg7fimvtfcrj5529eynf05j4.png', 0, 1048, 1048, '2018-11-12 04:39:32', '2019-01-22 22:41:06', 0);
INSERT INTO `ref_lessons` VALUES (465, '', 0, 19, 18, NULL, 'Kimia', '', '', '95xjeinawwh9tf3rp1fq5dgs8ksf183i.png', 0, 1048, 1048, '2018-11-12 04:39:54', '2020-03-27 08:32:14', 0);
INSERT INTO `ref_lessons` VALUES (466, '', 0, 19, 18, NULL, 'Fisika', '', '', 'qcza5h5itd76lgr2lf30i3bp2buoc8ld.png', 0, 1048, 1048, '2018-11-12 04:40:11', '2020-03-27 08:32:15', 0);
INSERT INTO `ref_lessons` VALUES (467, '', 0, 19, 18, NULL, 'Desain Grafis', '', '', 'pej9lq72gd0wl71ucx9gmg8hwjeupfs2.png', 0, 1048, 1048, '2018-11-12 04:40:43', '2020-03-27 08:32:16', 0);
INSERT INTO `ref_lessons` VALUES (468, '', 0, 20, 18, NULL, 'Desain Grafis', '', '', 'ekezs1zcxn13dk4ynx862bzy43zeev4j.png', 0, 1048, 1048, '2018-11-12 04:41:04', '2020-03-27 08:34:08', 0);
INSERT INTO `ref_lessons` VALUES (469, '', 0, 21, 18, NULL, 'Desain Grafis', '', '', 'pt6vbf4u5nbkcfrvcey1ptu34tkz10e9.png', 0, 1048, 1048, '2018-11-12 04:41:28', '2020-03-27 08:34:51', 0);
INSERT INTO `ref_lessons` VALUES (470, '', 0, 21, 18, NULL, 'Seni Budaya Keterampilan', 'SBK', '', 'bblkr85m8qs2r9zm2ylf8o2dzwa5ippt.png', 0, 1048, 1048, '2018-11-12 04:42:39', '2019-01-22 23:04:57', 0);
INSERT INTO `ref_lessons` VALUES (471, '', 0, 20, 18, NULL, 'Seni Budaya Keterampilan', 'SBK', '', 'cz3ejfrbw04hsqa5s83q4na8xk3bp8xq.png', 0, 1048, 1048, '2018-11-12 04:43:05', '2020-03-27 08:34:09', 0);
INSERT INTO `ref_lessons` VALUES (472, '', 0, 19, 18, NULL, 'Seni Budaya Keterampilan', 'SBK', '', 'rn9asok7n8dp9d0ukkbfcc6naalkvkp5.png', 0, 1048, 1048, '2018-11-12 04:43:27', '2020-03-27 08:32:17', 0);
INSERT INTO `ref_lessons` VALUES (473, '', 0, 19, 18, NULL, 'Pendidikan Jasmani Olahraga dan Kesehatan', 'PJOK', '', 'uxv8fw659pnf4uxl3ay6cc3rhr7k7euc.png', 0, 1048, 1048, '2018-11-12 04:44:14', '2019-01-22 22:25:21', 0);
INSERT INTO `ref_lessons` VALUES (474, '', 0, 20, 18, NULL, 'Pendidikan Jasmani Olahraga dan Kesehatan', 'PJOK', '', 'ngpwg83mhui747hmcj5ncx1g13yym6qm.png', 0, 1048, 1048, '2018-11-12 04:44:33', '2019-01-22 22:49:08', 0);
INSERT INTO `ref_lessons` VALUES (475, '', 0, 21, 18, NULL, 'Pendidikan Jasmani Olahraga dan Kesehatan', 'PJOK', '', '52ee7yacm612p1yu7ijsgz1qll310o23.png', 0, 1048, 1048, '2018-11-12 04:44:53', '2019-01-22 23:04:16', 0);
INSERT INTO `ref_lessons` VALUES (476, '', 0, 21, 18, NULL, 'Biologi', '', '', 'co4ie30pwlct1q6fqnasp14i5o2tbxp3.png', 0, 1048, 1048, '2018-11-12 04:45:18', '2020-03-27 08:34:54', 0);
INSERT INTO `ref_lessons` VALUES (477, '', 0, 20, 18, NULL, 'Biologi', '', '', 'dbcv0ifnx1ayy460s2xbwhmtguduckbe.png', 0, 1048, 1048, '2018-11-12 04:45:35', '2020-03-27 08:34:10', 0);
INSERT INTO `ref_lessons` VALUES (478, '', 0, 19, 18, NULL, 'Biologi', '', '', '0gedblvthcroc89k8ogg351nru3rdxyx.png', 0, 1048, 1048, '2018-11-12 04:45:53', '2019-01-22 22:38:15', 0);
INSERT INTO `ref_lessons` VALUES (479, '', 0, 19, 18, NULL, 'Sejarah Dunia', '', '', 'kilcth1cyff9omrng1k6utddfpyt0anv.png', 0, 1048, 1048, '2018-11-12 04:46:23', '2020-03-27 08:32:19', 0);
INSERT INTO `ref_lessons` VALUES (480, '', 0, 20, 18, NULL, 'Sejarah Dunia', '', '', 'aaapn5k2n75ljnz6ftvyn5af6ligsa4a.png', 0, 1048, 1048, '2018-11-12 04:46:43', '2020-03-27 08:34:12', 0);
INSERT INTO `ref_lessons` VALUES (481, '', 0, 21, 18, NULL, 'Sejarah Dunia', '', '', 'w88dcak5jqg912w1dqxh5fcbgihuwtw9.png', 0, 1048, 1048, '2018-11-12 04:47:05', '2020-03-27 08:34:54', 0);
INSERT INTO `ref_lessons` VALUES (482, '', 0, 19, 18, NULL, 'Geografi', '', '', 'o4z8y3opug1iu8w0g9dsah57moh4305l.png', 0, 1048, 1048, '2018-11-12 04:47:36', '2020-03-27 08:32:20', 0);
INSERT INTO `ref_lessons` VALUES (483, '', 0, 20, 18, NULL, 'Geografi', '', '', 'pxqu0y1acx1quh8uu9okodxoi0nrhvku.png', 0, 1048, 1048, '2018-11-12 04:47:54', '2020-03-27 08:34:13', 0);
INSERT INTO `ref_lessons` VALUES (484, '', 0, 21, 18, NULL, 'Geografi', '', '', 'l8c3lcr6dzpykdwwbkhlpiukq4myktu7.png', 0, 1048, 1048, '2018-11-12 04:48:13', '2020-03-27 08:34:55', 0);
INSERT INTO `ref_lessons` VALUES (485, '', 0, 21, 18, NULL, 'Sosiologi', '', '', 'i33c199o9xebgg7cq05xg58l19blxuaf.png', 0, 1048, 1048, '2018-11-12 04:48:39', '2019-01-22 23:05:16', 0);
INSERT INTO `ref_lessons` VALUES (486, '', 0, 20, 18, NULL, 'Sosiologi', '', '', 'tv244o8rq1k5rpljmo82ri2n1p7t6kuo.png', 0, 1048, 1048, '2018-11-12 04:49:10', '2019-01-22 22:41:59', 0);
INSERT INTO `ref_lessons` VALUES (487, '', 0, 19, 18, NULL, 'Sosiologi', '', '', 'ridion240g4aai0ks1ddbznoy28i0z9f.png', 0, 1048, 1048, '2018-11-12 04:49:39', '2019-01-22 22:34:56', 0);
INSERT INTO `ref_lessons` VALUES (488, '', 0, 19, 18, NULL, 'Ekonomi', '', '', 'g8dlzkxknjzrycubwy79y2820b93895t.png', 0, 1048, 1048, '2018-11-12 04:50:15', '2020-03-27 08:32:21', 0);
INSERT INTO `ref_lessons` VALUES (489, '', 0, 20, 18, NULL, 'Ekonomi', '', '', 'r2oq24uuixtywjw9bgsmgbla9pfq6uug.png', 0, 1048, 1048, '2018-11-12 04:50:38', '2020-03-27 08:34:14', 0);
INSERT INTO `ref_lessons` VALUES (490, '', 0, 21, 18, NULL, 'Ekonomi', '', '', '8ygnoxptmkofjepx1t9b8jrm3weetuib.png', 0, 1048, 1048, '2018-11-12 04:50:57', '2020-03-27 08:34:56', 0);
INSERT INTO `ref_lessons` VALUES (491, '', 0, 19, 18, NULL, 'Pancasila dan Kewarganegaraan', '', '', 'vosp6vh6mu837d9ku0ch3o09i2wtpaog.png', 0, 1048, 1048, '2018-11-12 04:52:01', '2020-03-27 08:32:22', 0);
INSERT INTO `ref_lessons` VALUES (492, '', 0, 20, 18, NULL, 'Pancasila dan Kewarganegaraan', '', '', 'wgbszmbapi5ocauuhzv05vz3fl4hpamr.png', 0, 1048, 1048, '2018-11-12 04:52:20', '2020-03-27 08:34:15', 0);
INSERT INTO `ref_lessons` VALUES (493, '', 0, 21, 18, NULL, 'Pancasila dan Kewarganegaraan', '', '', 'sqsupmq1tep5emw7fxq0ljhictoddpzf.png', 0, 1048, 1048, '2018-11-12 04:52:38', '2020-03-27 08:34:57', 0);
INSERT INTO `ref_lessons` VALUES (494, '', 0, 14, 15, NULL, 'Ujian Masuk STAN', 'STAN', '', 'le20rcw131f868hhjim2bdczlaju08as.jpg', 0, 1048, 0, '2018-11-14 10:09:36', '2018-11-14 10:09:36', 0);
INSERT INTO `ref_lessons` VALUES (495, '', 0, 14, 15, NULL, 'Politeknik Negeri Jakarta', 'PNJ', '', 'd093ys2x1upv2cvmawto73hk0ec7405w.', 0, 1048, 0, '2018-11-14 12:11:30', '2018-11-14 12:11:30', 0);
INSERT INTO `ref_lessons` VALUES (496, '', 0, 14, 15, NULL, 'Poltekes Jakarta III', 'Poltekjak III', '', 'xsax31q6ahd211ssn8pb4kl42za8788v.', 0, 1048, 1048, '2018-11-14 12:14:34', '2020-04-16 19:02:38', 0);
INSERT INTO `ref_lessons` VALUES (497, '', 0, 14, 15, NULL, 'Poltekes Jakarta I', '', '', 'kifl659se4hjwsit9pkfgnieo60riyii.jpeg', 0, 1048, 0, '2018-11-14 12:22:30', '2018-11-14 12:22:30', 0);
INSERT INTO `ref_lessons` VALUES (498, '', 0, 14, 15, NULL, 'Poltekes Jakarta II', '', '', 'ld3ramousdvgsrucw0qgxgyh7vgqpxbo.jpg', 0, 1048, 1048, '2018-11-14 12:24:44', '2020-04-16 19:02:37', 0);
INSERT INTO `ref_lessons` VALUES (499, '', 0, 21, 18, NULL, 'Pendidikan Lingkungan Hidup', 'PLH', '', 'iofsq3ciaqw7le1bxxkyb63ng3vld7p9.png', 0, 1048, 1048, '2018-11-18 21:30:41', '2019-01-22 23:04:29', 0);
INSERT INTO `ref_lessons` VALUES (500, '', 0, 22, 24, NULL, 'Computational Thinking', '', '', '4niwai2yirwikwop503dmfalysq8e1g4.png', 0, 1048, 1048, '2018-11-19 22:25:46', '2019-12-17 13:42:25', 0);
INSERT INTO `ref_lessons` VALUES (501, '', 0, 22, 24, NULL, 'Drone', '', '', 'rnycdq8gaewsknd23ctpa9ib0ri2utf4.png', 1, 1048, 1, '2018-11-19 23:13:33', '2019-04-10 14:15:41', 0);
INSERT INTO `ref_lessons` VALUES (502, '', 0, 16, 17, NULL, 'Administrasi Umum', '', '', 'llhh8w3w8ohrijfy7iwphbtprszvafca.png', 0, 1048, 1048, '2018-11-21 09:27:30', '2019-01-19 21:58:56', 0);
INSERT INTO `ref_lessons` VALUES (503, '', 0, 17, 17, NULL, 'Administrasi Umum', '', '', 'iz9rexu1u083vhgwtrozbhinepv66ko4.png', 0, 1048, 1048, '2018-11-21 09:28:32', '2020-03-17 12:34:25', 0);
INSERT INTO `ref_lessons` VALUES (504, '', 0, 18, 17, NULL, 'Administrasi Umum', '', '', '632o6fsowa5bvym98kedexvkht4y4g6w.png', 0, 1048, 1048, '2018-11-21 09:28:49', '2020-03-17 12:41:33', 0);
INSERT INTO `ref_lessons` VALUES (505, '', 0, 16, 17, NULL, 'Animasi Digital', '', '', 'k8ikmhgyvy768usk5h7efjjp01ie2el3.png', 0, 1048, 1048, '2018-11-21 11:23:00', '2020-03-17 12:40:03', 0);
INSERT INTO `ref_lessons` VALUES (506, '', 0, 16, 17, NULL, 'Desain Multimedia', '', '', 'wkl2xqf10c31qgb27euw4v05nr584rnv.png', 0, 1048, 1048, '2018-11-21 11:23:23', '2020-03-17 12:40:00', 0);
INSERT INTO `ref_lessons` VALUES (507, '', 0, 16, 17, NULL, 'Pemrograman Web', '', '', 'ivijkm64lk87u4s8c3slvqottcqr4cxx.png', 0, 1048, 1048, '2018-11-21 11:23:38', '2020-03-17 12:39:59', 0);
INSERT INTO `ref_lessons` VALUES (508, '', 0, 16, 17, NULL, 'Sistem Operasi', '', '', 'gc1k69ws8kkae0awv553yshisey7pgv8.png', 0, 1048, 1048, '2018-11-21 11:23:45', '2019-01-20 15:13:51', 0);
INSERT INTO `ref_lessons` VALUES (509, '', 0, 16, 17, NULL, 'Pengolahan Citra Digital', '', '', '8wbxg0b4vxcyub1l9oq75v1pbakw7x3p.png', 0, 1048, 1048, '2018-11-21 11:23:55', '2020-03-17 12:39:58', 0);
INSERT INTO `ref_lessons` VALUES (510, '', 0, 16, 17, NULL, 'Audio Visual', '', '', 'pjijw2pxzohbgfckemvn8h8rn00xv9ev.png', 0, 1048, 1048, '2018-11-21 11:24:02', '2020-03-17 12:39:57', 0);
INSERT INTO `ref_lessons` VALUES (511, '', 0, 16, 17, NULL, 'Ketehnikan Videografi', '', '', 'pfch8pbco4sacdcgv11mcoqmh1cdsr20.png', 0, 1048, 1048, '2018-11-21 11:24:16', '2020-03-17 12:39:55', 0);
INSERT INTO `ref_lessons` VALUES (512, '', 0, 16, 17, NULL, 'Perakitan Komputer', '', '', '5ka33btdaw0gp8f6yrchb095mhokq2ru.png', 0, 1048, 1048, '2018-11-21 11:24:25', '2020-03-17 12:39:54', 0);
INSERT INTO `ref_lessons` VALUES (513, '', 0, 16, 17, NULL, 'Desain Media Interaktif', '', '', '603ojxqhbuvvli88dk0i9rob6m8t835y.png', 0, 1048, 1048, '2018-11-21 11:24:37', '2020-03-17 12:39:54', 0);
INSERT INTO `ref_lessons` VALUES (514, '', 0, 16, 17, NULL, 'Jaringan Dasar', '', '', '0wfuhka7y87o4unxvdu0nz51kbdn8mqq.png', 0, 1048, 1048, '2018-11-21 11:24:45', '2019-01-19 23:56:04', 0);
INSERT INTO `ref_lessons` VALUES (515, '', 0, 17, 17, NULL, 'Animasi Digital', '', '', 'iar79wll23hudnbg10hbf3lqi4467dcq.png', 0, 1048, 1048, '2018-11-21 11:25:02', '2019-01-20 00:05:50', 0);
INSERT INTO `ref_lessons` VALUES (516, '', 0, 17, 17, NULL, 'Desain Multimedia', '', '', 'kngoytz6onytyg26mfokvvpzxaupg2lt.png', 0, 1048, 1048, '2018-11-21 11:27:14', '2020-03-17 12:34:27', 0);
INSERT INTO `ref_lessons` VALUES (517, '', 0, 17, 17, NULL, 'Pemorgraman Web', '', '', '3a6vcscirqxx0ckr08a7frdn1pxo160m.png', 0, 1048, 1048, '2018-11-21 11:27:23', '2020-03-17 12:34:28', 0);
INSERT INTO `ref_lessons` VALUES (518, '', 0, 17, 17, NULL, 'Sistem Operasi', '', '', 'lo3ui4up0t01ipd89gsvgc48hb2463pj.png', 0, 1048, 1048, '2018-11-21 11:27:29', '2019-01-20 16:24:40', 0);
INSERT INTO `ref_lessons` VALUES (519, '', 0, 17, 17, NULL, 'Pengolahan Citra Digital', '', '', 's3w9dscasd9renhgymwubi8m5d59z0mj.png', 0, 1048, 1048, '2018-11-21 11:27:37', '2020-03-17 12:34:29', 0);
INSERT INTO `ref_lessons` VALUES (520, '', 0, 17, 17, NULL, 'Audio Visual', '', '', 'xr8tg394orml66wx7pzrr96y977389vd.png', 0, 1048, 1048, '2018-11-21 11:27:57', '2020-03-17 12:34:31', 0);
INSERT INTO `ref_lessons` VALUES (521, '', 0, 17, 17, NULL, 'Ketehnikan Videografi', '', '', '0wona4fyw5mtb5br2kmu1xqmybffgc9t.png', 0, 1048, 1048, '2018-11-21 11:28:05', '2020-03-17 12:34:32', 0);
INSERT INTO `ref_lessons` VALUES (522, '', 0, 17, 17, NULL, 'Perakitan Komputer', '', '', 'vso4wqs2d9pp9lx9fsk5wofyq7x1igd5.png', 0, 1048, 1048, '2018-11-21 11:28:11', '2020-03-17 12:34:37', 0);
INSERT INTO `ref_lessons` VALUES (523, '', 0, 17, 17, NULL, 'Desain Media Interaktif', '', '', '6123mn2q9n2tk9wdk4pncf4v0igjvepw.png', 0, 1048, 1048, '2018-11-21 11:28:19', '2020-03-17 12:34:36', 0);
INSERT INTO `ref_lessons` VALUES (524, '', 0, 17, 17, NULL, 'Jaringan Dasar', '', '', 'hu8w2iyuhce242n50xw2b8pr6xqc14j1.png', 0, 1048, 1048, '2018-11-21 11:28:24', '2019-01-20 15:29:59', 0);
INSERT INTO `ref_lessons` VALUES (525, '', 0, 18, 17, NULL, 'Animasi Digital', '', '', '1yf5780j8gtupirxmyi62gdt983isk8u.png', 0, 1048, 1048, '2018-11-21 12:09:10', '2019-01-20 16:27:40', 0);
INSERT INTO `ref_lessons` VALUES (526, '', 0, 18, 17, NULL, 'Desain Multimedia', '', '', 'cw42lqbd84k428ceoingt19ipvbki02b.png', 0, 1048, 1048, '2018-11-21 12:09:18', '2020-03-17 12:41:29', 0);
INSERT INTO `ref_lessons` VALUES (527, '', 0, 18, 17, NULL, 'Pemrograman Web', '', '', 'ifx6iabwapv6j36b5w1e9vrs56adzbhm.png', 0, 1048, 1048, '2018-11-21 12:09:25', '2020-03-17 12:41:28', 0);
INSERT INTO `ref_lessons` VALUES (528, '', 0, 18, 17, NULL, 'Sistem Operasi', '', '', 'hd4copieccj23jotmeoktryu989kcp2i.png', 0, 1048, 1048, '2018-11-21 12:09:32', '2019-01-20 21:10:34', 0);
INSERT INTO `ref_lessons` VALUES (529, '', 0, 18, 17, NULL, 'Pengolahan CItra Digital', '', '', '2o6ksq3tuvbx5w13opdcq6u9sqg8q0at.png', 0, 1048, 1048, '2018-11-21 12:09:41', '2020-03-17 12:41:27', 0);
INSERT INTO `ref_lessons` VALUES (530, '', 0, 18, 17, NULL, 'Audio Visual', '', '', '8v3cmn8hsbwbad5riglfihjhvq1e6dqf.png', 0, 1048, 1048, '2018-11-21 12:09:50', '2020-03-17 12:41:26', 0);
INSERT INTO `ref_lessons` VALUES (531, '', 0, 18, 17, NULL, 'Ketehnikan Videografi', '', '', '8mjfuyzp8w1lbi1bdgundknjf4veub1v.png', 0, 1048, 1048, '2018-11-21 12:10:01', '2020-03-17 12:41:25', 0);
INSERT INTO `ref_lessons` VALUES (532, '', 0, 18, 17, NULL, 'Perakitan Komputer', '', '', '3u6gwsq41z8sg7q07vsrbr7lb40kkb79.png', 0, 1048, 1048, '2018-11-21 12:10:09', '2020-03-17 12:41:24', 0);
INSERT INTO `ref_lessons` VALUES (533, '', 0, 18, 17, NULL, 'Desain Media Interaktif', '', '', 'cngzhp105vdppqk8909lukyseeoh0cv4.png', 0, 1048, 1048, '2018-11-21 12:10:16', '2020-03-17 12:41:23', 0);
INSERT INTO `ref_lessons` VALUES (534, '', 0, 18, 17, NULL, 'Jaringan Dasar', '', '', '90n8ixu3delmprvxy9qsc70pbjqpsdup.png', 0, 1048, 1048, '2018-11-21 12:10:22', '2019-01-20 16:32:47', 0);
INSERT INTO `ref_lessons` VALUES (535, '', 0, 22, 24, NULL, 'StartUp', '', '', 'g4qpfxvejkzxccyhb3hzlencuroopvwi.png', 1, 1048, 1, '2018-11-21 21:41:37', '2019-04-10 14:15:44', 0);
INSERT INTO `ref_lessons` VALUES (536, '', 0, 22, 24, NULL, '2D Animation', '', '', 'ze6gn5lh75g15mtg7wbdvl7lb7kv4hy9.png', 1, 1048, 1, '2018-11-21 21:41:50', '2019-04-10 14:15:47', 0);
INSERT INTO `ref_lessons` VALUES (537, '', 0, 16, 13, NULL, 'Bahasa Jepang', '', '', '9035ygu8khsw8y8wom3i2zuy9vmof53z.png', 0, 1048, 1048, '2018-11-28 11:02:08', '2020-03-17 12:39:52', 0);
INSERT INTO `ref_lessons` VALUES (538, '', 0, 17, 13, NULL, 'Bahasa Jepang', '', '', 'zzrqljq4viohygcjjo1ewe2rhruw7k5e.png', 0, 1048, 1048, '2018-11-28 11:02:30', '2020-03-17 12:34:38', 0);
INSERT INTO `ref_lessons` VALUES (539, '', 0, 18, 13, NULL, 'Bahasa Jepang', '', '', 'ke7zt7z7yzr1oofyfnnxq2neruf7tw04.png', 0, 1048, 1048, '2018-11-28 11:02:56', '2020-03-17 12:41:22', 0);
INSERT INTO `ref_lessons` VALUES (540, '', 0, 10, 21, NULL, 'Sinematografi', '', '', '9qf8ns9xjkr6t3ltzfm2f9col3pucdaz.png', 1, 1048, 1048, '2018-11-28 14:36:40', '2019-11-06 11:39:45', 1);
INSERT INTO `ref_lessons` VALUES (541, '', 0, 11, 21, NULL, 'Sinematografi', '', '', 'idgryem32cl6k7ql30ak8bnx63vpzenu.png', 1, 1048, 1, '2018-11-28 14:39:25', '2019-01-31 08:03:17', 1);
INSERT INTO `ref_lessons` VALUES (542, '', 0, 12, 21, NULL, 'Sinematografi', '', '', 'yl9ykt6vfu1r2egbzenlo8l74ngc6uqn.png', 1, 1048, 1, '2018-11-28 14:41:10', '2019-01-31 08:03:55', 1);
INSERT INTO `ref_lessons` VALUES (543, 'ISLAM', 1, 7, 20, NULL, 'Sejarah Kebudayaan Islam', '', '', '', 1, 1048, 1, '2018-11-30 12:04:18', '2019-01-31 08:01:24', 1);
INSERT INTO `ref_lessons` VALUES (544, 'ISLAM', 1, 8, 20, NULL, 'Sejarah Kebudayaan Islam', '', '', 'o6tio4q0c2s3huxapkohksbq6k1v6au5.png', 1, 1048, 1048, '2018-11-30 12:04:38', '2019-11-18 07:58:53', 1);
INSERT INTO `ref_lessons` VALUES (545, 'ISLAM', 1, 9, 20, NULL, 'Sejarah Kebudayaan Islam', '', '', 'aile2q1iuvaij2azyjiqapxn09vhn7x7.png', 1, 1048, 1048, '2018-11-30 12:04:58', '2019-11-18 07:58:36', 1);
INSERT INTO `ref_lessons` VALUES (546, '', 0, 6, 19, NULL, 'RPUL', 'RPUL', '', '', 0, 1048, 0, '2018-12-03 18:03:07', '2018-12-03 18:03:07', 1);
INSERT INTO `ref_lessons` VALUES (547, '', 0, 14, 15, NULL, 'SIMAK UI', '', '', 'em3yxqg840vgpm9nld2ymg4mocnycgck.png', 0, 1048, 1048, '2018-12-04 14:01:08', '2020-04-16 19:02:36', 0);
INSERT INTO `ref_lessons` VALUES (548, '', 0, 10, 21, NULL, 'Seni Budaya', '', '', 'vpjrww2t6xx1awjf31brqda9ow1cf90o.png', 0, 1048, 1048, '2018-12-05 23:16:32', '2019-01-22 21:47:50', 0);
INSERT INTO `ref_lessons` VALUES (549, '', 0, 11, 21, NULL, 'Seni Budaya', '', '', 'yqv2mkcb0cyn5rv04nvqg4i40x0njdk9.png', 0, 1048, 1048, '2018-12-05 23:16:59', '2019-01-22 21:44:26', 0);
INSERT INTO `ref_lessons` VALUES (551, '', 0, 16, 17, NULL, 'Teknik Pengambilan Gambar', 'TPG', '', '9ne2jcducar9i98jbpecr6p1by1s5on3.png', 0, 1048, 1048, '2018-12-12 12:42:46', '2020-03-17 12:39:52', 0);
INSERT INTO `ref_lessons` VALUES (552, '', 0, 16, 17, NULL, 'Penyusunan Proposal Penawaran', 'PPP', '', 'rprz0pat1rt7s6bigf0t70wkupb9cgsd.png', 0, 1048, 1048, '2018-12-12 12:44:21', '2020-03-17 12:39:51', 0);
INSERT INTO `ref_lessons` VALUES (553, '', 0, 16, 17, NULL, 'Muatan Lokal', 'Mulok', '', 'mdp7qpya5cr51fv8zn6j0t4osfzs8frj.png', 0, 1048, 1048, '2018-12-12 12:44:35', '2020-03-17 12:39:49', 0);
INSERT INTO `ref_lessons` VALUES (554, 'ISLAM', 1, 16, 17, NULL, 'Baca Tulis Alquran', 'BTQ', '', 'xhyc23z2wlnahnlgb5ak6ik7dog5b2v2.png', 0, 1048, 1048, '2018-12-12 12:44:58', '2020-03-17 12:39:48', 0);
INSERT INTO `ref_lessons` VALUES (555, '', 0, 17, 17, NULL, 'Teknik Pengambilan Gambar', 'TPG', '', 'dmb1pj68sqiz7t0hpk8vhtjnwe9lzp4x.png', 0, 1048, 1048, '2018-12-12 12:45:34', '2020-03-17 12:34:39', 0);
INSERT INTO `ref_lessons` VALUES (556, '', 0, 17, 17, NULL, 'Penyusunan Proposal Penawaran', 'PPP', '', 'vozgx2yby0wc6nuyseck5kz51b5p2yam.png', 0, 1048, 1048, '2018-12-12 12:45:53', '2020-03-17 12:34:40', 0);
INSERT INTO `ref_lessons` VALUES (557, '', 0, 17, 17, NULL, 'Muatan Lokal', 'Mulok', '', 'dei5e9aotx8rby189dcak2mi1hio6fop.png', 0, 1048, 1048, '2018-12-12 12:46:07', '2020-03-17 12:34:43', 0);
INSERT INTO `ref_lessons` VALUES (558, 'ISLAM', 1, 17, 17, NULL, 'Baca Tulis Alquran', 'BTQ', '', 'nlmdhc3ph2nmr8kfun7qydy42ohw90j8.png', 0, 1048, 1048, '2018-12-12 12:46:20', '2020-03-17 12:34:42', 0);
INSERT INTO `ref_lessons` VALUES (559, '', 0, 18, 17, NULL, 'Teknik Pengambilan Gambar', 'TPG', '', 'b45lrzr7m9xsdxqturlp6vekiydi4yl7.png', 0, 1048, 1048, '2018-12-12 12:46:44', '2020-03-17 12:41:20', 0);
INSERT INTO `ref_lessons` VALUES (560, '', 0, 18, 17, NULL, 'Penyusunan Proposal Penawaran', 'PPP', '', 'jq6exvro81nnheslh1fhw7tvawggpquk.png', 0, 1048, 1048, '2018-12-12 12:47:00', '2020-03-17 12:41:19', 0);
INSERT INTO `ref_lessons` VALUES (561, '', 0, 18, 17, NULL, 'Muatan Lokal', 'Mulok', '', 'bnzbg7gubisbi11v6012o3q1186htcao.png', 0, 1048, 1048, '2018-12-12 12:47:14', '2020-03-17 12:41:18', 0);
INSERT INTO `ref_lessons` VALUES (562, 'ISLAM', 1, 18, 17, NULL, 'Baca Tulis Alquran', 'BTQ', '', 'nmlecu6ftp6peqehrnz2cr1z51jlqkwt.png', 0, 1048, 1048, '2018-12-12 12:47:29', '2020-03-17 12:41:18', 0);
INSERT INTO `ref_lessons` VALUES (563, '', 0, 16, 17, NULL, 'Anatomi Fisiologi', '', '', 'lkute9r0jqucfa205z77ciyuba5pl4im.png', 0, 1048, 1048, '2018-12-18 20:42:16', '2020-03-17 12:39:48', 0);
INSERT INTO `ref_lessons` VALUES (564, '', 0, 16, 17, NULL, 'Tindakan Keperawatan', '', '', '698d004fwbnq77jyj49m30uid3j6grak.png', 0, 1048, 1048, '2018-12-18 20:42:31', '2020-03-17 12:39:47', 0);
INSERT INTO `ref_lessons` VALUES (565, '', 0, 14, 15, NULL, 'TKD Saintek', '', '', 'x1lugoy26t2d5fw1rgqsx4sf9f58mmld.png', 0, 1048, 1048, '2018-12-19 11:17:43', '2018-12-19 11:36:35', 0);
INSERT INTO `ref_lessons` VALUES (566, '', 0, 14, 15, NULL, 'TKD Soshum', '', '', 'xh7c2b65lb94p2tvzx3xo9e82lorpxwc.png', 0, 1048, 1048, '2018-12-19 11:17:55', '2018-12-19 11:36:25', 0);
INSERT INTO `ref_lessons` VALUES (567, '', 0, 14, 15, NULL, 'STMKG', '', 'Sekolah Tinggi Meteorologi Klimatologi dan Geofisika', '68ebhle9avsb01es8kb1jcqgrwgfhmvy.jpg', 0, 1048, 1048, '2018-12-19 11:18:58', '2018-12-22 18:00:30', 0);
INSERT INTO `ref_lessons` VALUES (568, '', 0, 14, 15, NULL, 'TKPA Saintek & Soshum', '', '', 'cf52425yo6v1eddss2w2dk4ty590yp92.png', 0, 1048, 1048, '2018-12-19 11:20:11', '2018-12-19 17:09:38', 0);
INSERT INTO `ref_lessons` VALUES (570, '', 0, 22, 24, NULL, 'Naruto Lesson', '', '', 'mqbxwsxr0nb3s74vs2phyyfdu3ibah6w.png', 0, 1048, 1048, '2018-12-19 16:17:28', '2019-10-02 12:20:00', 0);
INSERT INTO `ref_lessons` VALUES (571, 'ISLAM', 1, 21, 18, NULL, 'Hadist', '', '', 'kv1p43pxoxu39cajs8529p6c7wvo1o4d.png', 0, 1048, 1048, '2019-01-02 14:08:11', '2020-03-27 08:34:59', 0);
INSERT INTO `ref_lessons` VALUES (572, 'ISLAM', 1, 21, 18, NULL, 'Ahlak', '', '', '2f8kfcqnno209iyevt4m646qmnroy1p7.png', 0, 1048, 1048, '2019-01-02 14:10:41', '2020-03-27 08:35:00', 0);
INSERT INTO `ref_lessons` VALUES (573, 'ISLAM', 1, 21, 18, NULL, 'Al-Quran', '', '', 'v6fzle8acn798lg9pf8pvy8shjvqsw6f.png', 0, 1048, 1048, '2019-01-02 14:11:28', '2020-03-27 08:35:01', 0);
INSERT INTO `ref_lessons` VALUES (574, '', 0, 14, 15, NULL, 'Sekolah Tinggi Ilmu Statistika', 'STIS', '', 'fcyaizv76en5eliqas9zes51g2pqvgu6.png', 0, 1048, 0, '2019-01-02 16:50:16', '2019-01-02 16:50:16', 0);
INSERT INTO `ref_lessons` VALUES (575, 'KRISTEN', 1, 10, 12, NULL, 'Pendidikan Agama Kristen', '', '', '14bofhtybdm5lcax1ojbkl4e0jv0chko.png', 0, 1048, 1048, '2019-01-11 10:35:04', '2019-07-26 15:09:29', 0);
INSERT INTO `ref_lessons` VALUES (576, 'KRISTEN', 1, 11, 21, NULL, 'Pendidikan Agama Kristen', 'PAK', '', 'jb0q5grqkwq5e2b2anepsditzdg0ggah.png', 0, 1048, 1048, '2019-01-11 10:35:28', '2019-07-26 15:10:11', 0);
INSERT INTO `ref_lessons` VALUES (577, '', 0, 16, 17, NULL, 'Kerja Bengkel dan Gambar Teknik', '', '', 'm9jgbl73db6jn91s4kf8hs62krhyrmy0.png', 0, 1048, 1048, '2019-01-14 10:07:11', '2020-03-17 12:39:45', 0);
INSERT INTO `ref_lessons` VALUES (578, '', 0, 16, 17, NULL, 'Dasar Listrik dan Elektronika', '', '', '5yz53sr29mgxvca8dysk8w2mda3oyhuy.png', 0, 1048, 1048, '2019-01-14 10:49:53', '2020-03-17 12:39:44', 0);
INSERT INTO `ref_lessons` VALUES (579, '', 0, 16, 17, NULL, 'Dasar Pemrograman', '', '', 'hgrf20osoylr6poyrrbjunif9ajdzj9x.png', 0, 1048, 1048, '2019-01-14 10:56:47', '2020-03-17 12:39:43', 0);
INSERT INTO `ref_lessons` VALUES (580, '', 0, 16, 17, NULL, 'Pemrograman, Mikroprosesor dan Mikrokontroller', '', '', 'fsdqd3yfjb9att0lnasamomkhowmbhpe.png', 0, 1048, 1048, '2019-01-14 11:07:59', '2020-03-17 12:39:41', 0);
INSERT INTO `ref_lessons` VALUES (581, '', 0, 16, 17, NULL, 'Penerapan Rangkaian Elektronika', '', '', 'lihqr7ihufy839h77l0wqa0nfnwqapmq.png', 0, 1048, 1048, '2019-01-14 11:08:27', '2020-03-17 12:39:41', 0);
INSERT INTO `ref_lessons` VALUES (582, '', 0, 16, 17, NULL, 'Sistem Pengendali Elektronika', '', '', 'scvr7ks7tj93h0vl03rhx9tfgcrfvx0v.png', 0, 1048, 1048, '2019-01-14 11:08:44', '2020-03-17 12:39:40', 0);
INSERT INTO `ref_lessons` VALUES (583, '', 0, 16, 17, NULL, 'Pengendali Sistem Robotik', '', '', 'k1n54kztupu65ngrjnh51jhhs0124h31.png', 0, 1048, 1048, '2019-01-14 11:08:58', '2020-03-17 12:39:39', 0);
INSERT INTO `ref_lessons` VALUES (584, '', 0, 16, 17, NULL, 'Pembuatan, Perbaikan, dan Pemeliharaan Perangkat Elektronika', '', '', 'u634yxnpt81dwewd6rtt27kosovp7nne.png', 0, 1048, 1048, '2019-01-14 11:09:31', '2020-03-17 12:39:38', 0);
INSERT INTO `ref_lessons` VALUES (585, '', 0, 16, 17, NULL, 'Gambar Teknik Otomotif', '', '', 'crsh42x9zwewpzv9im0ujsgpk3q0nde5.png', 0, 1048, 1048, '2019-01-14 11:11:01', '2020-03-17 12:39:36', 0);
INSERT INTO `ref_lessons` VALUES (586, '', 0, 16, 17, NULL, 'Teknik Dasar Otomotif', '', '', 'r5j3yqohuuozqxgiatidggsykr00h32b.png', 0, 1048, 1048, '2019-01-14 11:15:50', '2020-07-08 13:13:19', 0);
INSERT INTO `ref_lessons` VALUES (587, '', 0, 16, 17, NULL, 'Pekerjaan Dasar Teknik Otomotif', '', '', 'axzedp10cvth9gxpim1j896xwaer31l1.png', 0, 1048, 1048, '2019-01-14 11:16:22', '2020-04-27 15:36:37', 0);
INSERT INTO `ref_lessons` VALUES (588, '', 0, 16, 17, NULL, 'Pemeliharaan Mesin Sepeda Motor', '', '', '8ijryjnlnu9prkim5vdq9bzv0vcrtc09.png', 0, 1048, 1048, '2019-01-14 11:16:53', '2020-03-17 12:39:33', 0);
INSERT INTO `ref_lessons` VALUES (589, '', 0, 16, 17, NULL, 'Pemeliharaan Sasis Sepeda Motor', '', '', '7a8dm6wm0wfjzb3zdtn7lftcuu7u2p1b.png', 0, 1048, 1048, '2019-01-14 11:17:24', '2020-03-17 12:39:32', 0);
INSERT INTO `ref_lessons` VALUES (590, '', 0, 16, 17, NULL, 'Pemeliharaan Listrik Sepeda Motor', '', '', 'onpnqs9qkyv5wzvz220oaj7rbajuf5ti.png', 0, 1048, 1048, '2019-01-14 11:17:46', '2020-03-17 12:39:31', 0);
INSERT INTO `ref_lessons` VALUES (591, '', 0, 16, 17, NULL, 'Perencanaan dan Instalasi Sistem Audio Video', '', '', '01olo12mycderr7vetdyw02zqmc2oe6u.png', 0, 1048, 1048, '2019-01-14 11:29:07', '2020-03-17 12:39:30', 0);
INSERT INTO `ref_lessons` VALUES (592, '', 0, 16, 17, NULL, 'Penerapan Sistem Radio dan Televisi', '', '', '8zudnt4raftiwdx8oyodxkjxso1mdy94.png', 0, 1048, 1048, '2019-01-14 11:29:30', '2020-03-17 12:39:28', 0);
INSERT INTO `ref_lessons` VALUES (593, '', 0, 16, 17, NULL, 'Perawatan dan Perbaikan Peralatan Audio dan Video', '', '', 'bibsv6h0iwivl1o9p7was430d22kbhd1.png', 0, 1048, 1048, '2019-01-14 11:32:46', '2020-03-17 12:39:28', 0);
INSERT INTO `ref_lessons` VALUES (594, '', 0, 17, 17, NULL, 'Anatomi Fisiologi', '', '', 's9ub02a6j3qgdv57o2fj9gcvpqn21k76.png', 0, 1048, 1048, '2019-01-14 11:37:43', '2020-03-17 12:34:45', 0);
INSERT INTO `ref_lessons` VALUES (595, '', 0, 17, 17, NULL, 'Dasar Listrik dan Elektronika', '', '', 'z3zjxb242ha60lw7ei2ng0a7xotk3l1d.png', 0, 1048, 1048, '2019-01-14 11:38:28', '2020-03-17 12:34:46', 0);
INSERT INTO `ref_lessons` VALUES (596, '', 0, 17, 17, NULL, 'Dasar Pemrograman', '', '', '5qduqt2k678md5onfer5uqwj2outa9x2.png', 0, 1048, 1048, '2019-01-14 11:38:49', '2020-03-17 12:34:54', 0);
INSERT INTO `ref_lessons` VALUES (597, '', 0, 17, 17, NULL, 'Gambar Teknik Otomotif', '', '', 'sp9h560ci2gykeglupeuux42z1tyhqyn.png', 0, 1048, 1048, '2019-01-14 11:39:34', '2020-03-17 12:34:55', 0);
INSERT INTO `ref_lessons` VALUES (598, '', 0, 17, 17, NULL, 'Kerja Bengkel dan Gambar Teknik', '', '', 'gxldt1wogrsyybowfehqrr4p9mhe7kmg.png', 0, 1048, 1048, '2019-01-14 11:46:32', '2020-03-17 12:34:56', 0);
INSERT INTO `ref_lessons` VALUES (599, '', 0, 17, 17, NULL, 'Pekerjaan Dasar Otomotif', '', '', 'wm9ysnca6q6ny5tkop67tey3w87bq9a4.png', 0, 1048, 1048, '2019-01-14 11:47:28', '2020-03-17 12:34:57', 0);
INSERT INTO `ref_lessons` VALUES (600, '', 0, 17, 17, NULL, 'Pembuatan, Perbaikan, dan Pemeliharaan Perangkat Elektronika', '', '', '0jjl91b3a8rurqknnaftp1mkvfwfguuj.png', 0, 1048, 1048, '2019-01-14 11:47:43', '2020-03-17 12:34:58', 0);
INSERT INTO `ref_lessons` VALUES (601, '', 0, 17, 17, NULL, 'Pemeliharaan Listrik Sepeda Motor', '', '', 'rn3jcuqdepwuj59kono303js1u5yrjk7.png', 0, 1048, 1048, '2019-01-14 11:47:57', '2020-03-17 12:34:59', 0);
INSERT INTO `ref_lessons` VALUES (602, '', 0, 17, 17, NULL, 'Pemeliharaan Mesin Sepeda Motor', '', '', 'swco1dv2i95mvcwfdipcm8yxfd0bjv5x.png', 0, 1048, 1048, '2019-01-14 11:48:17', '2020-03-17 12:35:00', 0);
INSERT INTO `ref_lessons` VALUES (603, '', 0, 17, 17, NULL, 'Pemeliharaan Sasis dan Pemindah Tenaga Kendaraan Ringan', 'PSPTKR', '', '2ajhcwvmqgoz26ly6iit9clo7nq1q3tr.png', 0, 1048, 1048, '2019-01-14 11:48:33', '2020-04-09 15:42:10', 0);
INSERT INTO `ref_lessons` VALUES (604, '', 0, 17, 17, NULL, 'Pemrograman, Mikroprosesor dan Mikrokontroller', '', '', 'oypj9orceaw3s2zgxbgctnz4cea2mapl.png', 0, 1048, 1048, '2019-01-14 11:48:54', '2020-03-17 12:35:05', 0);
INSERT INTO `ref_lessons` VALUES (605, '', 0, 17, 17, NULL, 'Penerapan Rangkaian Elektronika', '', '', 'akv8pjqn9m1cteytaqakn19sk9zulj9g.png', 0, 1048, 1048, '2019-01-14 11:50:57', '2020-03-17 12:35:06', 0);
INSERT INTO `ref_lessons` VALUES (606, '', 0, 17, 17, NULL, 'Penerapan Sistem Radio dan Televisi', '', '', 'kewndtaw5i6ui5nfgabnaoi16qstkh9y.png', 0, 1048, 1048, '2019-01-14 11:53:01', '2020-03-17 12:35:07', 0);
INSERT INTO `ref_lessons` VALUES (607, '', 0, 17, 17, NULL, 'Pengendali Sistem Robotik', '', '', 'lhybxfuzvf7gcd8xov01av12o4jfo6r1.png', 0, 1048, 1048, '2019-01-14 11:54:45', '2020-03-17 12:35:08', 0);
INSERT INTO `ref_lessons` VALUES (608, '', 0, 17, 17, NULL, 'Perawatan dan Perbaikan Peralatan Audio dan Video', '', '', 'sm6yyqpey4j2klupljiuy6sk4763wpfd.png', 0, 1048, 1048, '2019-01-14 11:55:39', '2020-03-17 12:35:10', 0);
INSERT INTO `ref_lessons` VALUES (609, '', 0, 17, 17, NULL, 'Perencanaan dan Instalasi Sistem Audio Video', '', '', 'yoqu7w47lwjymnov8giynd2ggv85rgbh.png', 0, 1048, 1048, '2019-01-14 11:56:53', '2020-03-17 12:35:11', 0);
INSERT INTO `ref_lessons` VALUES (610, '', 0, 17, 17, NULL, 'Sistem Pengendali Elektronika', '', '', 'lv3cdwixu0t55tfnzb8o6rht5rflmo0i.png', 0, 1048, 1048, '2019-01-14 11:58:40', '2020-03-17 12:35:12', 0);
INSERT INTO `ref_lessons` VALUES (612, '', 0, 17, 17, NULL, 'Teknologi Dasar Otomotif', '', '', 'nztozflu79bjhndu008cu4m8meydfq0m.png', 0, 1048, 1048, '2019-01-14 12:00:22', '2020-03-17 12:35:14', 0);
INSERT INTO `ref_lessons` VALUES (613, '', 0, 17, 17, NULL, 'Tindakan Keperawatan', '', '', '92dzivhylw0a5empa8b6730ufykn0t79.png', 0, 1048, 1048, '2019-01-14 12:00:40', '2020-03-17 12:35:15', 0);
INSERT INTO `ref_lessons` VALUES (614, '', 0, 18, 17, NULL, 'Anatomi Fisiologi', '', '', '945exm9kzf2cdmn0b4z87l841i5idox4.png', 0, 1048, 1048, '2019-01-14 12:02:42', '2020-03-17 12:41:16', 0);
INSERT INTO `ref_lessons` VALUES (615, '', 0, 18, 17, NULL, 'Dasar Listrik dan Elektronika', '', '', '5a4jduzej6denglrhdbz6v4ght2ifxhe.png', 0, 1048, 1, '2019-01-14 12:03:25', '2019-03-14 09:09:15', 0);
INSERT INTO `ref_lessons` VALUES (616, '', 0, 18, 17, NULL, 'Dasar Pemrograman', '', '', 'amfhfbwg58gvdk0eqquqi355siwbmeeh.png', 0, 1048, 1048, '2019-01-14 12:03:42', '2020-03-17 12:41:15', 0);
INSERT INTO `ref_lessons` VALUES (617, '', 0, 18, 17, NULL, 'Gambar Teknik Otomotif', '', '', '58441bo23x8zk8j8xk2zrte5xfl5lvjr.png', 0, 1048, 1048, '2019-01-14 12:04:15', '2020-03-17 12:41:15', 0);
INSERT INTO `ref_lessons` VALUES (618, '', 0, 18, 17, NULL, 'Kerja Bengkel dan Gambar Teknik', '', '', 'xdpqpzqtjz096vq4whoml57kn896qor2.png', 0, 1048, 1048, '2019-01-14 12:04:42', '2020-03-17 12:41:14', 0);
INSERT INTO `ref_lessons` VALUES (619, '', 0, 18, 17, NULL, 'Pekerjaan Dasar Otomotif', '', '', '3kig2lo0znwu7orzc4plftnzp8zwyer3.png', 0, 1048, 1048, '2019-01-14 12:05:31', '2020-03-17 12:41:12', 0);
INSERT INTO `ref_lessons` VALUES (620, '', 0, 18, 17, NULL, 'Pembuatan, Perbaikan, dan Pemeliharaan Perangkat Elektronika', '', '', '4xe9gxronv6qnt5z7z9isvm49y1txzii.png', 0, 1048, 1048, '2019-01-14 12:05:46', '2020-03-17 12:41:11', 0);
INSERT INTO `ref_lessons` VALUES (621, '', 0, 18, 17, NULL, 'Pemeliharaan Listrik Sepeda Motor', '', '', '7n9747a78af6rq4a8iferqcf4b7kvapf.png', 0, 1048, 1048, '2019-01-14 12:06:03', '2020-03-17 12:41:10', 0);
INSERT INTO `ref_lessons` VALUES (622, '', 0, 18, 17, NULL, 'Pemeliharaan Mesin Sepeda Motor', '', '', 'xw2qik7o23d84y0s01lbewwwtqoro0ft.png', 0, 1048, 1048, '2019-01-14 12:06:19', '2020-03-17 12:41:08', 0);
INSERT INTO `ref_lessons` VALUES (623, '', 0, 18, 17, NULL, 'Pemeliharaan Sasis Sepda Motor', '', '', '7dagyghlso0r60cwq2ehbjhpxd4k0v1o.png', 0, 1048, 1048, '2019-01-14 12:07:07', '2020-03-17 12:41:08', 0);
INSERT INTO `ref_lessons` VALUES (624, '', 0, 18, 17, NULL, 'Pemrograman, Mikroprosesor dan Mikrokontroller', '', '', '2qqushoylmcx8y8ir0si3oujms4ufxyv.png', 0, 1048, 1048, '2019-01-14 12:07:37', '2020-03-17 12:41:07', 0);
INSERT INTO `ref_lessons` VALUES (625, '', 0, 18, 17, NULL, 'Penerapan Rangkaian Elektronika', '', '', '35969fgozemurxt9te21zeb47zf1o160.png', 0, 1048, 1048, '2019-01-14 12:08:08', '2020-03-17 12:41:05', 0);
INSERT INTO `ref_lessons` VALUES (626, '', 0, 18, 17, NULL, 'Penerapan Sistem Radio dan Televisi', '', '', 'trll1bo1mrqdxtpv22dvxa2gm5lfm7yw.png', 0, 1048, 1048, '2019-01-14 12:08:23', '2020-03-17 12:41:04', 0);
INSERT INTO `ref_lessons` VALUES (627, '', 0, 18, 17, NULL, 'Pengendali Sistem Robotik', '', '', 'eaxjgfalwmv35yz6qr5zfari77tx6uun.png', 0, 1048, 1048, '2019-01-14 12:08:52', '2020-03-17 12:41:03', 0);
INSERT INTO `ref_lessons` VALUES (628, '', 0, 18, 17, NULL, 'Perawatan dan Perbaikan Peralatan Audio dan Video', '', '', 'fadlrdzk1bfeykprm1odi8woj7cdfnlh.png', 0, 1048, 1048, '2019-01-14 12:09:06', '2020-03-17 12:41:03', 0);
INSERT INTO `ref_lessons` VALUES (629, '', 0, 18, 17, NULL, 'Perencanaan dan Instalasi Sistem Audio Video', '', '', 'yo96n9linnvanqo8wwhs44eg20otib03.png', 0, 1048, 1048, '2019-01-14 12:09:21', '2020-03-17 12:41:02', 0);
INSERT INTO `ref_lessons` VALUES (630, '', 0, 18, 17, NULL, 'Sistem Pengendali Elektronika', '', '', '2fkjegz9fl6w8vt76s3z1pleyt4vzfdb.png', 0, 1048, 1, '2019-01-14 12:10:23', '2019-03-14 08:58:12', 0);
INSERT INTO `ref_lessons` VALUES (631, '', 0, 18, 17, NULL, 'Teknologi Dasar Otomotif', '', '', 'xwrvlij1yr6xlc07hdv74dt5gd73s6ue.png', 0, 1048, 1048, '2019-01-14 12:10:38', '2020-03-17 12:40:59', 0);
INSERT INTO `ref_lessons` VALUES (632, '', 0, 18, 17, NULL, 'Tindakan Keperawatan', '', '', '1y94a1km9xgad4ivyr86jzyz9i0bkb6s.png', 0, 1048, 1048, '2019-01-14 12:10:53', '2020-03-17 12:40:56', 0);
INSERT INTO `ref_lessons` VALUES (633, '', 0, 16, 17, NULL, 'Agribisnis Tanaman Pangan dan Holtikultura', 'ATPH', '', 'e61m5k5t3rmk42vutoq396b6p550mogd.png', 0, 1048, 1048, '2019-01-19 11:56:45', '2020-03-17 12:39:26', 0);
INSERT INTO `ref_lessons` VALUES (634, '', 0, 17, 17, NULL, 'Agribisnis Tanaman Pangan dan Holtikultura', 'ATPH', '', '2gft93uvl5bx1bmxi88f9fxwg3dqq7oo.png', 0, 1048, 1048, '2019-01-19 11:58:34', '2020-03-17 12:35:16', 0);
INSERT INTO `ref_lessons` VALUES (635, '', 0, 18, 17, NULL, 'Agribisnis Tanaman Pangan dan Holtikultura', 'ATPH', '', 'vbmisabfuc4pq2whx325ju3pkgxrcb73.png', 0, 1048, 1048, '2019-01-19 11:59:23', '2020-03-17 12:40:55', 0);
INSERT INTO `ref_lessons` VALUES (636, '', 0, 22, 24, NULL, 'Bahasa Daerah', '', '', 'b2i6ej4ntb71ygfbayfv198oa4c4vh9u.png', 0, 1048, 1048, '2019-01-23 10:31:57', '2019-01-23 10:48:11', 1);
INSERT INTO `ref_lessons` VALUES (637, '', 0, 22, 24, NULL, 'Karakter Wayang', '', '', 'kl6030c8wi3vgnabq0sblqgqesal68d1.png', 0, 1048, 1048, '2019-01-23 10:33:37', '2019-01-23 10:43:06', 1);
INSERT INTO `ref_lessons` VALUES (638, '', 0, 22, 24, NULL, 'Hobi Diecast', '', '', '813dk21a8tyevpjo8c40jjmha4iqnald.png', 1, 1048, 1, '2019-01-23 11:32:59', '2019-04-10 14:15:38', 0);
INSERT INTO `ref_lessons` VALUES (639, '', 0, 22, 24, NULL, 'Tari Jawa', '', '', '6y6k8wdri18zws5d3p7594wu492kco2p.png', 0, 1048, 1048, '2019-01-23 11:37:26', '2019-01-23 11:54:16', 1);
INSERT INTO `ref_lessons` VALUES (640, 'HINDU', 1, 6, 10, NULL, 'Pendidikan Agama Hindu', '', '', 'ngkb02rfcwdcogrga1jkexs7kk5tyify.png', 0, 1048, 1, '2019-01-27 10:45:06', '2020-09-10 21:56:53', 0);
INSERT INTO `ref_lessons` VALUES (641, 'HINDU', 1, 5, 19, NULL, 'Agama Hindu', '', '', '', 0, 1048, 1048, '2019-01-27 10:47:15', '2020-04-29 14:20:39', 1);
INSERT INTO `ref_lessons` VALUES (642, 'HINDU', 1, 4, 19, NULL, 'Agama Hindu', '', '', '', 0, 1048, 1048, '2019-01-27 10:47:50', '2020-04-29 14:07:58', 1);
INSERT INTO `ref_lessons` VALUES (643, 'HINDU', 1, 7, 20, NULL, 'Pendidikan Agama Hindu', '', '', 'yuplfldxm9b8if0snn7zguyuyf92jxnc.png', 0, 1048, 1048, '2019-01-27 10:48:23', '2019-11-18 07:59:20', 0);
INSERT INTO `ref_lessons` VALUES (644, 'HINDU', 1, 8, 20, NULL, 'Pendidikan Agama Hindu', '', '', 'jdqhku07nvtxvaczbff3k2gu60mdnqei.png', 0, 1048, 1048, '2019-01-27 10:48:58', '2020-02-25 22:16:40', 0);
INSERT INTO `ref_lessons` VALUES (645, 'HINDU', 1, 9, 20, NULL, 'Pendidikan Agama Hindu', '', '', '88xun9k7q5935b63pisiss7ywvnobly6.png', 0, 1048, 1048, '2019-01-27 10:49:49', '2020-02-25 22:19:32', 0);
INSERT INTO `ref_lessons` VALUES (646, 'HINDU', 1, 10, 21, NULL, 'Pendidikan Agama Hindu', 'PAH', '', 'vten2v6folrt5yd3dwrktd11vbh69fta.png', 0, 1048, 1048, '2019-01-27 10:50:17', '2020-03-27 08:40:46', 0);
INSERT INTO `ref_lessons` VALUES (647, 'HINDU', 1, 11, 21, NULL, 'Pendidikan Agama Hindu', '', '', '8wdte1b07xn0kc7tz8mi9a1qjy2kgfru.png', 0, 1048, 1048, '2019-01-27 10:50:39', '2020-03-27 08:45:00', 0);
INSERT INTO `ref_lessons` VALUES (648, 'HINDU', 1, 12, 21, NULL, 'Pendidikan Agama Hindu', '', '', 'mpzoaunozlc95mnp0tqo94iw8vo3r9lc.png', 0, 1048, 1048, '2019-01-27 10:51:03', '2020-03-27 08:40:01', 0);
INSERT INTO `ref_lessons` VALUES (649, 'HINDU', 1, 16, 17, NULL, 'Agama Hindu', '', '', '0pq7ykzwzyp3mbxsd10e1b7nh4w64pib.png', 0, 1048, 1048, '2019-01-27 10:51:32', '2020-07-08 13:13:47', 0);
INSERT INTO `ref_lessons` VALUES (650, 'HINDU', 1, 17, 17, NULL, 'Agama Hindu', '', '', 'yp07houdge9ck5abtkre0z2miob75ma9.png', 0, 1048, 1048, '2019-01-27 10:51:56', '2020-07-08 13:17:33', 0);
INSERT INTO `ref_lessons` VALUES (651, 'HINDU', 1, 18, 17, NULL, 'Agama Hindu', '', '', 'rro0g1eny98nxulr8ye93atjrhcjj87y.png', 0, 1048, 1048, '2019-01-27 10:52:19', '2020-07-08 13:20:30', 0);
INSERT INTO `ref_lessons` VALUES (652, '', 0, 22, 24, NULL, 'Bahasa Dunia', '', '', '', 0, 1048, 0, '2019-01-27 18:48:30', '2019-01-27 18:48:30', 1);
INSERT INTO `ref_lessons` VALUES (653, '', 0, 16, 17, NULL, 'Otomatisasi dan Tata Kelola Kepegawaian', '', '', '78v8jqrlputo2l3zmu5ei4lsrxnf05b9.png', 0, 1048, 1048, '2019-01-30 11:54:54', '2020-07-08 13:14:31', 0);
INSERT INTO `ref_lessons` VALUES (654, '', 0, 17, 17, NULL, 'Otomatisasi dan Tata Kelola Sarana dan Prasarana', '', '', '', 0, 1048, 1048, '2019-01-30 11:56:11', '2020-07-01 11:28:44', 0);
INSERT INTO `ref_lessons` VALUES (655, '', 0, 18, 17, NULL, 'Otomatisasi dan Tata Kelola Kepegawaian', '', '', 'bdj878ps6we74a8yhybzndhd42ll169b.png', 0, 1048, 1048, '2019-01-30 11:56:46', '2020-07-08 13:20:43', 0);
INSERT INTO `ref_lessons` VALUES (656, '', 0, 16, 17, NULL, 'Administrasi Transaksi', '', '', '2f9h7due7t2zxcavlqisd7oe3api2od1.png', 0, 1048, 1048, '2019-01-30 11:57:30', '2020-07-08 13:14:45', 0);
INSERT INTO `ref_lessons` VALUES (657, '', 0, 17, 17, NULL, 'Administrasi Transaksi', '', '', 'agv1bq4yu1dd3e8sledpkc3qw7dfiucb.png', 0, 1048, 1048, '2019-01-30 11:57:45', '2020-04-03 15:30:58', 0);
INSERT INTO `ref_lessons` VALUES (658, '', 0, 18, 17, NULL, 'Administrasi Transaksi', '', '', 'f9x6jhupcftxm3lb5kfvfdvyfpkbo3s9.png', 0, 1048, 1048, '2019-01-30 11:58:02', '2020-07-08 13:20:58', 0);
INSERT INTO `ref_lessons` VALUES (659, '', 0, 18, 17, NULL, 'Marketing', '', '', '2pl2dkofv3iwgog88eth31z65qrvob3r.png', 0, 1048, 1048, '2019-01-30 11:58:22', '2020-07-08 13:21:11', 0);
INSERT INTO `ref_lessons` VALUES (660, '', 0, 17, 17, NULL, 'Marketing', '', '', 'jmexy0rtzrafvlvnefaqivlodyqjs21p.png', 0, 1048, 1048, '2019-01-30 11:58:39', '2020-07-08 13:17:21', 0);
INSERT INTO `ref_lessons` VALUES (661, '', 0, 16, 17, NULL, 'Marketing', '', '', 'd7jqmv3rt03s6os2pwrr70m9ypwwfcxb.png', 0, 1048, 1048, '2019-01-30 11:58:53', '2020-07-08 13:14:57', 0);
INSERT INTO `ref_lessons` VALUES (662, '', 0, 16, 17, NULL, 'Penataan Produk', '', '', 'tksxnx3gp6s8dmxiyul8px1l0vxxg7kz.png', 0, 1048, 1048, '2019-01-30 12:00:05', '2020-07-08 13:15:08', 0);
INSERT INTO `ref_lessons` VALUES (663, '', 0, 17, 17, NULL, 'Penataan Produk', '', '', 'vc4iyc6h274s8sg8z7s1nk1iuxuqlpyv.png', 0, 1048, 1048, '2019-01-30 12:00:22', '2020-07-08 13:17:11', 0);
INSERT INTO `ref_lessons` VALUES (664, '', 0, 18, 17, NULL, 'Penataan Produk', '', '', 'p144g2g40lf36bhdjaxeuj08pjlyg1qd.png', 0, 1048, 1048, '2019-01-30 12:00:38', '2020-07-08 13:21:27', 0);
INSERT INTO `ref_lessons` VALUES (665, '', 0, 23, 25, NULL, 'Kawruh Basa Jawa', '', '', 'jwghsy926n0bqxbuiwe71moxw98egb8p.png', 0, 1048, 1048, '2019-01-30 12:06:33', '2019-02-03 21:59:08', 0);
INSERT INTO `ref_lessons` VALUES (666, '', 0, 23, 25, NULL, 'Kosakata Bahasa Komering', '', '', '7qhlqikc4s1aygps3ofktb5x7z0fbvnn.png', 0, 1048, 1048, '2019-01-30 12:12:30', '2019-01-31 19:53:44', 0);
INSERT INTO `ref_lessons` VALUES (667, '', 0, 23, 25, NULL, 'Mengenal Wayang', '', '', '0mlepdj2dqogkm06adb0xkaqkcj72w05.png', 0, 1048, 1048, '2019-01-30 12:22:08', '2019-01-30 12:39:08', 0);
INSERT INTO `ref_lessons` VALUES (668, '', 0, 23, 25, NULL, 'Tari Jawa', '', '', 'x1gxa5cye8znkhv1d8xvx3w960qdnyue.png', 0, 1048, 1048, '2019-01-30 12:44:04', '2019-01-30 12:44:31', 0);
INSERT INTO `ref_lessons` VALUES (669, '', 0, 23, 25, NULL, 'Kosakata Bahasa Bali', '', '', '0bmhsu7uww252f6ikx4hlszhx1z3ma62.png', 0, 1048, 0, '2019-02-01 18:46:33', '2019-02-01 18:46:33', 0);
INSERT INTO `ref_lessons` VALUES (670, '', 0, 23, 25, NULL, 'Basa Sunda', '', '', 'tmalr3g7hsit89tow94ftt50ckq6i94f.png', 0, 1048, 1048, '2019-02-03 21:59:53', '2019-08-19 20:18:02', 0);
INSERT INTO `ref_lessons` VALUES (671, '', 0, 13, 14, NULL, 'RPUL', '', 'Rangkuman Pengetahuan Umum Lengkap', 'g015ee9no2nept91lcu4fk50vr8x0kax.png', 0, 1048, 1048, '2019-02-19 16:02:44', '2019-02-19 16:05:08', 0);
INSERT INTO `ref_lessons` VALUES (672, '', 0, 13, 14, NULL, 'Math Fundamental', '', '', '', 1, 1048, 1048, '2019-04-13 15:58:18', '2019-07-12 00:11:27', 0);
INSERT INTO `ref_lessons` VALUES (673, 'KATOLIK', 1, 9, 20, NULL, 'Pendidikan Agama Katolik', 'PAK', '', '724larseenn0vsx2p14jzmav32noxhpg.png', 0, 1048, 1048, '2019-06-11 12:13:02', '2020-02-25 22:19:30', 0);
INSERT INTO `ref_lessons` VALUES (674, 'KRISTEN', 1, 9, 20, NULL, 'Pendidikan Agama Kristen', 'PAKris', '', 'koaypkt605gruau3m29yv8xkr1p6b9f6.png', 0, 1048, 1048, '2019-06-11 12:14:36', '2019-08-17 15:02:36', 0);
INSERT INTO `ref_lessons` VALUES (675, 'BUDHA', 1, 9, 20, NULL, 'Pendidikan Agama Budha', 'PAB', '', 'l4pphjw0rymjcd5huglr5pkx2omibfqf.png', 0, 1048, 1048, '2019-06-11 12:15:29', '2020-02-25 22:19:36', 0);
INSERT INTO `ref_lessons` VALUES (676, '', 0, 25, 26, NULL, 'PT Jasa Peralatan Pelabuhan Indonesia', '', '', '7zgqgpxbhgucn8azxb3c618v5r1i4zrd.jpg', 0, 1048, 0, '2019-07-11 20:09:20', '2019-07-11 20:09:20', 0);
INSERT INTO `ref_lessons` VALUES (677, '', 0, 7, 20, NULL, 'Geografi', '', '', '6b6zws5vwad3mcea7kytjv263yi5jilk.png', 1, 1048, 1048, '2019-07-18 08:21:54', '2019-08-17 15:00:45', 1);
INSERT INTO `ref_lessons` VALUES (678, 'KRISTEN', 1, 4, 19, NULL, 'Pendidikan Agama Kristen', 'PAK', '', 'r6ik0j6e6brkm94xpyxktbyev0omu4rd.png', 0, 1048, 1048, '2019-07-26 15:04:23', '2020-04-29 14:14:11', 0);
INSERT INTO `ref_lessons` VALUES (679, 'KRISTEN', 1, 5, 19, NULL, 'Pendidikan Agama Kristen', 'PAK', '', 'vy39ic2q21aghihf1tdibrv8iav7iq5q.png', 0, 1048, 1048, '2019-07-26 15:05:14', '2020-04-29 14:34:39', 0);
INSERT INTO `ref_lessons` VALUES (680, 'KRISTEN', 1, 6, 10, NULL, 'Pendidikan Agama Kristen', 'PAK', '', 'bvb6ruj4f9886ng9zwinmthvq0ng8lk3.png', 0, 1048, 1, '2019-07-26 15:05:50', '2020-09-10 21:57:32', 0);
INSERT INTO `ref_lessons` VALUES (681, 'KRISTEN', 1, 7, 19, NULL, 'Pendidikan Agama Kristen', 'PAKris', '', 'rqgmpr19sk7kucrfkl07kq4fwufkhbed.png', 0, 1048, 1048, '2019-07-26 15:07:53', '2019-08-17 15:01:57', 0);
INSERT INTO `ref_lessons` VALUES (682, 'KRISTEN', 1, 8, 19, NULL, 'Pendidikan Agama Kristen', 'PAKris', '', 'k4phre8tpwjj0c2wz7qrehl7x1fw1o2w.png', 0, 1048, 1048, '2019-07-26 15:08:34', '2020-02-25 22:18:52', 0);
INSERT INTO `ref_lessons` VALUES (683, '', 0, 13, 14, NULL, 'Nihongo', '', '', 'sc0mhpzgextsj6dxaeu8ctgqcpi5v1q5.png', 0, 1048, 0, '2019-08-02 16:26:41', '2019-08-02 16:26:41', 0);
INSERT INTO `ref_lessons` VALUES (684, '', 0, 23, 25, NULL, 'Kosakata Bahasa Simeulue', '', '', '1crhxwxkr7d78yaze21j3cd9xdvrzfpz.png', 0, 1048, 1048, '2019-08-04 11:00:06', '2019-11-18 07:57:15', 0);
INSERT INTO `ref_lessons` VALUES (685, '', 0, 13, 14, NULL, 'Vocabulary', '', '', '9cuziqn8kkdcqnc22m8vrjk14yskt6rd.png', 0, 1048, 1048, '2019-08-04 19:59:06', '2019-08-04 20:18:15', 0);
INSERT INTO `ref_lessons` VALUES (686, '', 0, 23, 25, NULL, 'Morris Swadesh Project', '', '', '6nx3klc0qj964riof2kx4a4dsfrrjb1t.png', 0, 1048, 0, '2019-08-04 20:28:18', '2019-08-04 20:28:18', 0);
INSERT INTO `ref_lessons` VALUES (687, '', 0, 7, 20, NULL, 'Teknik Informatika', '', '', 'amnr7ippri6mo60t898bsk7vdw9c3ysw.png', 0, 1048, 1048, '2019-10-01 06:55:25', '2019-11-18 07:59:32', 0);
INSERT INTO `ref_lessons` VALUES (688, '', 0, 22, 24, NULL, 'Pramuka', '', '', '', 0, 1048, 0, '2019-10-02 12:20:15', '2019-10-02 12:20:15', 0);
INSERT INTO `ref_lessons` VALUES (689, 'ISLAM', 1, 26, 27, NULL, 'Sejarah Kebudayaan Islam', 'SKI', '', '11wox7qk1o0rpbgltr7jb2z4wv3im8f3.png', 0, 1048, 0, '2019-10-07 18:44:51', '2019-10-07 18:44:51', 0);
INSERT INTO `ref_lessons` VALUES (690, 'ISLAM', 1, 26, 27, NULL, 'AlQur\'an Hadits', 'QH', '', 'zwnm7rvnbb7g629kkjfofwmfamdxjhbq.png', 0, 1048, 1048, '2019-10-07 18:45:43', '2020-03-17 11:35:17', 0);
INSERT INTO `ref_lessons` VALUES (691, 'ISLAM', 1, 26, 27, NULL, 'Aqidah Akhlak', '', '', '89kwyl4wmru64c9bdna85e9fwgi4pxkr.png', 0, 1048, 1048, '2019-10-07 18:46:14', '2020-03-17 11:35:29', 0);
INSERT INTO `ref_lessons` VALUES (692, 'ISLAM', 1, 26, 27, NULL, 'Fiqih', '', '', '48akvui4nwbd3ejlgamx8ia0h1zqcowp.png', 0, 1048, 0, '2019-10-07 18:46:28', '2019-10-07 18:46:28', 0);
INSERT INTO `ref_lessons` VALUES (693, 'ISLAM', 1, 26, 27, NULL, 'Bahasa Arab', '', '', 'efwhiz38ge3ip2bzed4onhx5d9aexyzr.png', 0, 1048, 0, '2019-10-07 18:46:47', '2019-10-07 18:46:47', 0);
INSERT INTO `ref_lessons` VALUES (694, 'ISLAM', 1, 27, 27, NULL, 'Sejarah Kebudayaan Islam', 'SKI', '', '32872pf21drad3thtuwqwdci7r2x47xu.png', 0, 1048, 1048, '2019-10-07 18:48:49', '2020-03-17 12:01:09', 0);
INSERT INTO `ref_lessons` VALUES (695, 'ISLAM', 1, 27, 27, NULL, 'AlQur\'an Hadits', 'QH', '', '2l83b3g82tw4lhgwyfkh52mybjjbxiac.png', 0, 1048, 1048, '2019-10-07 18:49:12', '2020-03-17 11:46:52', 0);
INSERT INTO `ref_lessons` VALUES (696, 'ISLAM', 1, 27, 27, NULL, 'Aqidah Akhlak', '', '', 'pxiv57whfmul0mlz19eaw8w4ycdpomts.png', 0, 1048, 1048, '2019-10-07 18:49:31', '2020-03-17 11:47:03', 0);
INSERT INTO `ref_lessons` VALUES (697, 'ISLAM', 1, 27, 27, NULL, 'Fiqih', '', '', 'h4nsoma0eqbgmiidv68eyoca1w7x64n7.png', 0, 1048, 0, '2019-10-07 18:49:46', '2019-10-07 18:49:46', 0);
INSERT INTO `ref_lessons` VALUES (698, 'ISLAM', 1, 27, 27, NULL, 'Bahasa Arab', '', '', '5wquuzndyf2yf24oytlgn9fnr319feqa.png', 0, 1048, 0, '2019-10-07 18:50:04', '2019-10-07 18:50:04', 1);
INSERT INTO `ref_lessons` VALUES (699, 'ISLAM', 1, 28, 27, NULL, 'Sejarah Kebudayaan Islam', 'SKI', '', 'z0p5wrawpt9mhyuhck50mio6u60tsdaz.png', 0, 1048, 1048, '2019-10-07 18:50:42', '2020-03-17 12:05:12', 0);
INSERT INTO `ref_lessons` VALUES (700, 'ISLAM', 1, 28, 27, NULL, 'AlQur\'an Hadits', 'QH', '', '2b8cxe9txl4k8g1pw2xd13j0dwypxptf.png', 0, 1048, 1048, '2019-10-07 18:51:03', '2020-03-17 12:03:02', 0);
INSERT INTO `ref_lessons` VALUES (701, 'ISLAM', 1, 28, 27, NULL, 'Aqidah Akhlak', '', '', 'bq3k5v9oswcmrf9blewqfvb2r3xhkim1.png', 0, 1048, 1048, '2019-10-07 18:51:17', '2020-03-17 12:03:15', 0);
INSERT INTO `ref_lessons` VALUES (702, 'ISLAM', 1, 28, 27, NULL, 'Fiqih', '', '', '6ogiftrkuut2348dfqf6rcju2zog0mh1.png', 0, 1048, 0, '2019-10-07 18:51:33', '2019-10-07 18:51:33', 0);
INSERT INTO `ref_lessons` VALUES (703, 'ISLAM', 1, 28, 27, NULL, 'Bahasa Arab', '', '', '9mnmku7azz3ri34hye1v0l8vlrzy64hk.png', 0, 1048, 0, '2019-10-07 18:51:48', '2019-10-07 18:51:48', 0);
INSERT INTO `ref_lessons` VALUES (704, 'ISLAM', 1, 29, 31, NULL, 'Sejarah Kebudayaan Islam', 'SKI', '', '11wox7qk1o0rpbgltr7jb2z4wv3im8f3.png', 0, 1048, 0, '2019-10-07 21:29:34', '2019-10-07 21:29:34', 0);
INSERT INTO `ref_lessons` VALUES (705, 'ISLAM', 1, 29, 31, NULL, 'Qur\'an Hadits', 'QH', '', 'zwnm7rvnbb7g629kkjfofwmfamdxjhbq.png', 0, 1048, 1048, '2019-10-07 21:33:00', '2019-10-07 21:41:32', 0);
INSERT INTO `ref_lessons` VALUES (706, 'ISLAM', 1, 29, 31, NULL, 'Aqidah', '', '', '89kwyl4wmru64c9bdna85e9fwgi4pxkr.png', 0, 1048, 1048, '2019-10-07 21:33:00', '2019-10-07 21:41:41', 0);
INSERT INTO `ref_lessons` VALUES (707, 'ISLAM', 1, 29, 31, NULL, 'Fiqih', '', '', '48akvui4nwbd3ejlgamx8ia0h1zqcowp.png', 0, 1048, 1048, '2019-10-07 21:33:00', '2019-10-07 21:42:31', 0);
INSERT INTO `ref_lessons` VALUES (708, 'ISLAM', 1, 29, 31, NULL, 'Bahasa Arab', '', '', 'watz6vkvp06l7e3dthj60j83286txb7p.png', 0, 1048, 1048, '2019-10-07 21:33:00', '2019-10-07 21:42:44', 0);
INSERT INTO `ref_lessons` VALUES (709, 'ISLAM', 1, 30, 31, NULL, 'Sejarah Kebudayaan Islam', 'SKI', '', '11wox7qk1o0rpbgltr7jb2z4wv3im8f3.png', 0, 1048, 1048, '2019-10-07 21:37:04', '2019-10-07 21:42:58', 0);
INSERT INTO `ref_lessons` VALUES (710, 'ISLAM', 1, 30, 31, NULL, 'Qur\'an Hadits', 'QH', '', 'zwnm7rvnbb7g629kkjfofwmfamdxjhbq.png', 0, 1048, 1048, '2019-10-07 21:37:04', '2019-10-07 21:43:07', 0);
INSERT INTO `ref_lessons` VALUES (711, 'ISLAM', 1, 30, 31, NULL, 'Aqidah', '', '', '89kwyl4wmru64c9bdna85e9fwgi4pxkr.png', 0, 1048, 1048, '2019-10-07 21:37:04', '2019-10-07 21:43:19', 0);
INSERT INTO `ref_lessons` VALUES (712, 'ISLAM', 1, 30, 31, NULL, 'Fiqih', '', '', '48akvui4nwbd3ejlgamx8ia0h1zqcowp.png', 0, 1048, 1048, '2019-10-07 21:37:04', '2019-10-07 21:43:28', 0);
INSERT INTO `ref_lessons` VALUES (713, 'ISLAM', 1, 30, 31, NULL, 'Bahasa Arab', '', '', 'watz6vkvp06l7e3dthj60j83286txb7p.png', 0, 1048, 1048, '2019-10-07 21:37:04', '2019-10-07 21:43:45', 0);
INSERT INTO `ref_lessons` VALUES (714, 'ISLAM', 1, 31, 31, NULL, 'Sejarah Kebudayaan Islam', 'SKI', '', '11wox7qk1o0rpbgltr7jb2z4wv3im8f3.png', 0, 1048, 1048, '2019-10-07 21:37:21', '2019-10-07 21:44:02', 0);
INSERT INTO `ref_lessons` VALUES (715, 'ISLAM', 1, 31, 31, NULL, 'Qur\'an Hadits', 'QH', '', 'zwnm7rvnbb7g629kkjfofwmfamdxjhbq.png', 0, 1048, 1048, '2019-10-07 21:37:21', '2019-10-07 21:44:30', 0);
INSERT INTO `ref_lessons` VALUES (716, 'ISLAM', 1, 31, 31, NULL, 'Aqidah', '', '', '89kwyl4wmru64c9bdna85e9fwgi4pxkr.png', 0, 1048, 1048, '2019-10-07 21:37:21', '2019-10-07 21:44:43', 0);
INSERT INTO `ref_lessons` VALUES (717, 'ISLAM', 1, 31, 31, NULL, 'Fiqih', '', '', '48akvui4nwbd3ejlgamx8ia0h1zqcowp.png', 0, 1048, 1048, '2019-10-07 21:37:21', '2019-10-07 21:44:52', 0);
INSERT INTO `ref_lessons` VALUES (718, 'ISLAM', 1, 31, 31, NULL, 'Bahasa Arab', '', '', 'watz6vkvp06l7e3dthj60j83286txb7p.png', 0, 1048, 1048, '2019-10-07 21:37:21', '2019-10-07 21:45:08', 0);
INSERT INTO `ref_lessons` VALUES (719, 'ISLAM', 1, 32, 31, NULL, 'Sejarah Kebudayaan Islam', 'SKI', '', '11wox7qk1o0rpbgltr7jb2z4wv3im8f3.png', 0, 1048, 1048, '2019-10-07 21:37:34', '2019-10-07 21:45:26', 0);
INSERT INTO `ref_lessons` VALUES (720, 'ISLAM', 1, 32, 31, NULL, 'Qur\'an Hadits', 'QH', '', 'zwnm7rvnbb7g629kkjfofwmfamdxjhbq.png', 0, 1048, 1048, '2019-10-07 21:37:34', '2019-10-07 21:45:38', 0);
INSERT INTO `ref_lessons` VALUES (721, 'ISLAM', 1, 32, 31, NULL, 'Aqidah', '', '', '89kwyl4wmru64c9bdna85e9fwgi4pxkr.png', 0, 1048, 1048, '2019-10-07 21:37:34', '2019-10-07 21:45:47', 0);
INSERT INTO `ref_lessons` VALUES (722, 'ISLAM', 1, 32, 31, NULL, 'Fiqih', '', '', '48akvui4nwbd3ejlgamx8ia0h1zqcowp.png', 0, 1048, 1048, '2019-10-07 21:37:34', '2019-10-07 21:46:00', 0);
INSERT INTO `ref_lessons` VALUES (723, 'ISLAM', 1, 32, 31, NULL, 'Bahasa Arab', '', '', 'watz6vkvp06l7e3dthj60j83286txb7p.png', 0, 1048, 1048, '2019-10-07 21:37:34', '2019-10-07 21:46:12', 0);
INSERT INTO `ref_lessons` VALUES (724, '', 0, 12, 21, NULL, 'Prakarya dan Kewirausahaan (PKWU)', 'PKWU', '', 'gbsslo7xp577ni52bqlspmmf52gzqt14.png', 0, 1048, 1048, '2019-11-12 09:54:38', '2020-03-27 08:39:11', 0);
INSERT INTO `ref_lessons` VALUES (725, '', 0, 33, 37, NULL, 'Uji Kompetensi Guru', 'UKG', '', 'p6w35x9ilbfmb284jjqx1d8sce640ef4.png', 0, 1048, 1048, '2019-11-13 21:22:51', '2019-11-18 07:56:50', 0);
INSERT INTO `ref_lessons` VALUES (726, '', 0, 33, 37, NULL, 'Perangkat Pembelajaran', 'PP', '', 'd40ll1uvpmjb9ns95fhzw02xvirfqqt3.png', 0, 1048, 1048, '2019-11-13 21:23:11', '2019-11-18 07:57:00', 0);
INSERT INTO `ref_lessons` VALUES (727, 'KATOLIK', 1, 7, 20, NULL, 'Pendidikan Agama Katolik', 'PAKat', '', '21msv2gz48luokljuuzlhenus8wxcrub.png', 0, 1048, 0, '2020-02-25 22:15:41', '2020-02-25 22:15:41', 0);
INSERT INTO `ref_lessons` VALUES (728, 'BUDHA', 1, 7, 20, NULL, 'Pendidikan Agama Budha', 'PAB', '', 'g554jfvr7vfv60jc4u65az10yeglzwwm.png', 0, 1048, 0, '2020-02-25 22:16:27', '2020-02-25 22:16:27', 0);
INSERT INTO `ref_lessons` VALUES (729, 'KATOLIK', 1, 8, 20, NULL, 'Pendidikan Agama Katolik', 'PAKat', '', 'h1n9dfq6ik3j4ibc4nspogayyoye84qm.png', 0, 1048, 1048, '2020-02-25 22:17:34', '2020-02-25 22:19:05', 0);
INSERT INTO `ref_lessons` VALUES (730, 'BUDHA', 1, 8, 20, NULL, 'Pendidikan Agama Budha', 'PAB', '', 'y1ulbskgao5gnxteb0xiimi6zyfkp09e.png', 0, 1048, 1048, '2020-02-25 22:18:00', '2020-02-25 22:19:16', 0);
INSERT INTO `ref_lessons` VALUES (731, 'ISLAM', 1, 10, 21, NULL, 'Bahasa Arab', '', '', '', 1, 1048, 1048, '2020-03-16 20:55:05', '2020-03-27 08:42:03', 0);
INSERT INTO `ref_lessons` VALUES (732, 'ISLAM', 1, 26, 27, NULL, 'Baca Tulis Quran', 'btq', '', 'b6v8xz04lo9nq232oovl7qb9qqm4es5g.png', 0, 1048, 1048, '2020-03-17 11:29:14', '2020-03-17 11:45:16', 0);
INSERT INTO `ref_lessons` VALUES (733, '', 0, 26, 27, NULL, 'Pendidikan Pancasila dan Kewarganegaraan', 'PPKn', '', 'pzkl6f2uc2po084x3xdja1hmrwrqfkaf.png', 0, 1048, 0, '2020-03-17 11:36:20', '2020-03-17 11:36:20', 0);
INSERT INTO `ref_lessons` VALUES (734, '', 0, 26, 27, NULL, 'Bahasa Indonesia', '', '', 'xszgkbwudfiigww3cnn8rhddbokz27hu.png', 0, 1048, 0, '2020-03-17 11:36:39', '2020-03-17 11:36:39', 0);
INSERT INTO `ref_lessons` VALUES (735, '', 0, 26, 27, NULL, 'Bahasa Inggris', '', '', 'y97b9docyokzravpgmt4ssnyh9kf1smz.png', 0, 1048, 0, '2020-03-17 11:39:57', '2020-03-17 11:39:57', 0);
INSERT INTO `ref_lessons` VALUES (736, '', 0, 26, 20, NULL, 'Matematika', '', '', 'z9kjlum19svyhk46f46npsws1lzbp7pv.png', 0, 1048, 0, '2020-03-17 11:40:13', '2020-03-17 11:40:13', 0);
INSERT INTO `ref_lessons` VALUES (737, '', 0, 26, 27, NULL, 'Ilmu Pengetahuan Alam', '', '', '7qkr2raeyhqqfw2b8or63poqfa3b3wik.png', 0, 1048, 0, '2020-03-17 11:41:12', '2020-03-17 11:41:12', 0);
INSERT INTO `ref_lessons` VALUES (738, '', 0, 26, 27, NULL, 'Ilmu Pengetahuan Sosial', '', '', 'ouxh95d0wd2mbd9tqx5zrihiu17lnitc.png', 0, 1048, 0, '2020-03-17 11:41:30', '2020-03-17 11:41:30', 0);
INSERT INTO `ref_lessons` VALUES (739, '', 0, 26, 27, NULL, 'Seni Budaya', '', '', 'sm3wvqc8gcm5nu4nuki45ib7te21xhbh.png', 0, 1048, 0, '2020-03-17 11:41:44', '2020-03-17 11:41:44', 0);
INSERT INTO `ref_lessons` VALUES (740, '', 0, 26, 27, NULL, 'Pendidikan Jasmani, Olahraga dan Kesehatan', '', '', '37bcoek4k6jyrww0ag4bjlj0jya546fu.png', 0, 1048, 0, '2020-03-17 11:42:25', '2020-03-17 11:42:25', 0);
INSERT INTO `ref_lessons` VALUES (741, '', 0, 26, 27, NULL, 'Prakarya', '', '', '3fv11v4q9vko3rjhwqoyolof5rv683u2.png', 0, 1048, 0, '2020-03-17 11:42:35', '2020-03-17 11:42:35', 0);
INSERT INTO `ref_lessons` VALUES (742, 'ISLAM', 1, 26, 27, NULL, 'Tahfidz', '', '', 'kcxk0moad808wqnp3lf4v17s4krlbszo.png', 0, 1048, 1048, '2020-03-17 11:42:49', '2020-03-17 11:45:27', 0);
INSERT INTO `ref_lessons` VALUES (743, '', 0, 27, 20, NULL, 'Pendidikan Pancasila dan Kewarganegaraan', 'PPKn', '', '57enxx0n0p4xt7r7x958t5vfd0i0jrzt.png', 0, 1048, 0, '2020-03-17 11:47:32', '2020-03-17 11:47:32', 0);
INSERT INTO `ref_lessons` VALUES (744, '', 0, 27, 27, NULL, 'Bahasa Indonesia', '', '', 'l2ensz1rg48ga8xe16udbimn1lz0c2lk.png', 0, 1048, 0, '2020-03-17 11:47:46', '2020-03-17 11:47:46', 0);
INSERT INTO `ref_lessons` VALUES (745, 'ISLAM', 1, 27, 27, NULL, 'Bahasa Arab', '', '', '1l980vtk95nj4csk494qhzupi3auwuah.png', 0, 1048, 1048, '2020-03-17 11:48:05', '2020-03-17 12:00:01', 0);
INSERT INTO `ref_lessons` VALUES (746, '', 0, 27, 27, NULL, 'Bahasa Inggris', '', '', 'vfzwc16yu7wv3ve7o56u381s0l9fbhg8.png', 0, 1048, 0, '2020-03-17 11:48:20', '2020-03-17 11:48:20', 0);
INSERT INTO `ref_lessons` VALUES (747, '', 0, 27, 27, NULL, 'Matematika', '', '', 'zl40w6sllgbc9p72624cygm94demlbdh.png', 0, 1048, 0, '2020-03-17 11:48:33', '2020-03-17 11:48:33', 0);
INSERT INTO `ref_lessons` VALUES (748, '', 0, 27, 27, NULL, 'Ilmu Pengetahuan Alam', '', '', '3x3qcqkriijgxyrckpo6pwqfvoaqdx0a.png', 0, 1048, 0, '2020-03-17 11:49:00', '2020-03-17 11:49:00', 0);
INSERT INTO `ref_lessons` VALUES (749, '', 0, 27, 27, NULL, 'Ilmu Pengetahuan Sosial', '', '', 'cfdphiefb794c71msm9tbcyn9aaxree5.png', 0, 1048, 0, '2020-03-17 11:53:39', '2020-03-17 11:53:39', 0);
INSERT INTO `ref_lessons` VALUES (750, '', 0, 27, 27, NULL, 'Seni Budaya', '', '', 'po19lf1otkbeimqpwuold5mv09jz3vvp.png', 0, 1048, 0, '2020-03-17 11:53:51', '2020-03-17 11:53:51', 0);
INSERT INTO `ref_lessons` VALUES (751, '', 0, 27, 27, NULL, 'Pendidikan Jasmani, Olahraga dan Kesehatan', '', '', 'wwqku3xwo8opatxnpm3fucchmoza7s2c.png', 0, 1048, 0, '2020-03-17 11:54:12', '2020-03-17 11:54:12', 0);
INSERT INTO `ref_lessons` VALUES (752, '', 0, 27, 27, NULL, 'Prakarya', '', '', 'g010345bebp6fq2xzccjy3g2dbb2sqno.png', 0, 1048, 0, '2020-03-17 11:56:40', '2020-03-17 11:56:40', 0);
INSERT INTO `ref_lessons` VALUES (753, '', 0, 27, 27, NULL, 'Tahfidz', '', '', '99idkdr859uh47scit58kah72xjshlte.png', 0, 1048, 1048, '2020-03-17 11:56:57', '2020-03-17 12:00:40', 0);
INSERT INTO `ref_lessons` VALUES (754, '', 0, 28, 0, NULL, 'Pendidikan Agama dan Budi Pekerti', '', '', '77naavbse5kru1813kg4802rlukhhf29.png', 0, 1048, 0, '2020-03-17 11:57:41', '2020-03-17 11:57:41', 1);
INSERT INTO `ref_lessons` VALUES (755, '', 0, 28, 0, NULL, 'Pendidikan Pancasila dan Kewarganegaraan', '', '', '3tswd9szvie5vp6g1fpfjgmyr93jur2z.png', 0, 1048, 0, '2020-03-17 11:57:41', '2020-03-17 11:57:41', 0);
INSERT INTO `ref_lessons` VALUES (756, '', 0, 28, 0, NULL, 'Bahasa Indonesia', '', '', '2ew0yb7bgnvuj7sn1d2zphjjgp0d87vg.png', 0, 1048, 0, '2020-03-17 11:57:41', '2020-03-17 11:57:41', 0);
INSERT INTO `ref_lessons` VALUES (757, '', 0, 28, 0, NULL, 'Matematika', '', '', 'bim7bfzsnsd88dp39ebxbhsmxgob41ez.png', 0, 1048, 0, '2020-03-17 11:57:41', '2020-03-17 11:57:41', 0);
INSERT INTO `ref_lessons` VALUES (758, '', 0, 28, 0, NULL, 'Ilmu Pengetahuan Alam', '', '', '5olga26mjhox1bs4w77jceyd6a7xzfq3.png', 0, 1048, 0, '2020-03-17 11:57:41', '2020-03-17 11:57:41', 0);
INSERT INTO `ref_lessons` VALUES (759, '', 0, 28, 0, NULL, 'Ilmu Pengetahuan Sosial', '', '', 'wislj6ehxhn37po4ixtriu1gg1yozmne.png', 0, 1048, 0, '2020-03-17 11:57:41', '2020-03-17 11:57:41', 0);
INSERT INTO `ref_lessons` VALUES (760, '', 0, 28, 0, NULL, 'Bahasa Inggris', '', '', 'rrbd6et4cg41lm9ccasknnkhl8ptb6xm.png', 0, 1048, 0, '2020-03-17 11:57:41', '2020-03-17 11:57:41', 0);
INSERT INTO `ref_lessons` VALUES (761, '', 0, 28, 0, NULL, 'Prakarya', '', '', '4tkktcevnhajjqrlfa2ccrdy0nxdoy5j.png', 0, 1048, 0, '2020-03-17 11:57:41', '2020-03-17 11:57:41', 0);
INSERT INTO `ref_lessons` VALUES (762, '', 0, 28, 0, NULL, 'Bahasa Sunda', '', '', '1zqdkmv6n59di18n6ayawtwkm9oz5cvx.png', 0, 1048, 0, '2020-03-17 11:57:41', '2020-03-17 11:57:41', 1);
INSERT INTO `ref_lessons` VALUES (763, '', 0, 28, 0, NULL, 'Pendidikan Jasmani, Olahraga dan Kesehatan', 'PJOK', '', 'yamwgtal2abv1kf5nrk1lvo4nrk859nv.png', 0, 1048, 0, '2020-03-17 11:57:41', '2020-03-17 11:57:41', 0);
INSERT INTO `ref_lessons` VALUES (764, '', 0, 28, 0, NULL, 'Seni Budaya', '', '', 'r11pi0yc5x4a7h80i0s6ojdfsb5sdkjm.png', 0, 1048, 0, '2020-03-17 11:57:41', '2020-03-17 11:57:41', 0);
INSERT INTO `ref_lessons` VALUES (765, '', 0, 28, 0, NULL, 'Pendidikan Agama Islam', 'PAI', '', 'g6o9rskf2bo8sk7bpjkwr2t3s4892q6h.png', 0, 1048, 0, '2020-03-17 11:57:41', '2020-03-17 11:57:41', 1);
INSERT INTO `ref_lessons` VALUES (766, '', 0, 28, 0, NULL, 'Pendidikan Agama Hindu', '', '', '88xun9k7q5935b63pisiss7ywvnobly6.png', 0, 1048, 0, '2020-03-17 11:57:41', '2020-03-17 11:57:41', 1);
INSERT INTO `ref_lessons` VALUES (767, '', 0, 28, 0, NULL, 'Pendidikan Agama Katolik', 'PAK', '', '724larseenn0vsx2p14jzmav32noxhpg.png', 0, 1048, 0, '2020-03-17 11:57:41', '2020-03-17 11:57:41', 1);
INSERT INTO `ref_lessons` VALUES (768, '', 0, 28, 0, NULL, 'Pendidikan Agama Kristen', 'PAKris', '', 'koaypkt605gruau3m29yv8xkr1p6b9f6.png', 0, 1048, 0, '2020-03-17 11:57:41', '2020-03-17 11:57:41', 1);
INSERT INTO `ref_lessons` VALUES (769, '', 0, 28, 0, NULL, 'Pendidikan Agama Budha', 'PAB', '', 'l4pphjw0rymjcd5huglr5pkx2omibfqf.png', 0, 1048, 0, '2020-03-17 11:57:41', '2020-03-17 11:57:41', 1);
INSERT INTO `ref_lessons` VALUES (770, '', 0, 28, 27, NULL, 'Tahfidz', '', '', '6jkwvpsv1jsb05ihfxxnoonhmgutwr2t.png', 0, 1048, 1048, '2020-03-17 12:05:26', '2020-03-17 12:05:59', 0);
INSERT INTO `ref_lessons` VALUES (771, 'ISLAM', 1, 6, 10, NULL, 'Sejarah Kebudayaan Islam', 'SKI', '', 'wdgi1lohjpv4g7vb9o9kd7i5ui8pwbow.png', 0, 1048, 1, '2020-03-17 20:06:24', '2020-09-10 21:59:01', 0);
INSERT INTO `ref_lessons` VALUES (772, 'ISLAM', 1, 6, 19, NULL, 'AlQuran Hadits', '', '', 'llsg0hehqmmuybgisthjrykxv09rg2xv.png', 0, 1048, 1048, '2020-03-18 05:47:53', '2020-03-18 05:48:51', 0);
INSERT INTO `ref_lessons` VALUES (773, '', 0, 7, 20, NULL, 'Bahasa Lampung', 'balam', '', '6ptmgipy1wt4gkfkexnn5668kqnouc7b.png', 0, 1048, 0, '2020-03-21 10:40:24', '2020-03-21 10:40:24', 0);
INSERT INTO `ref_lessons` VALUES (774, '', 0, 8, 20, NULL, 'Bahasa Lampung', 'balam', '', 'c5ybxh3yoh6oemsjpxnqb5d7184yalh0.png', 0, 1048, 0, '2020-03-21 10:40:57', '2020-03-21 10:40:57', 0);
INSERT INTO `ref_lessons` VALUES (775, '', 0, 9, 20, NULL, 'Bahasa Lampung', 'balam', '', 'rn6ydtrogur8y93eze2hr32m6k6mq4pu.png', 0, 1048, 0, '2020-03-21 10:41:19', '2020-03-21 10:41:19', 0);
INSERT INTO `ref_lessons` VALUES (776, '', 0, 8, 20, NULL, 'Teknik Informatika', '', '', 'bfc2w9t0kedtewvpdprmn9edmuuugja3.png', 0, 1048, 0, '2020-03-23 12:40:02', '2020-03-23 12:40:02', 0);
INSERT INTO `ref_lessons` VALUES (777, '', 0, 9, 20, NULL, 'Teknik Informatika', '', '', '1qbep9d6pbq35o7sr2vdtqiixem9smxs.png', 0, 1048, 0, '2020-03-23 12:40:51', '2020-03-23 12:40:51', 0);
INSERT INTO `ref_lessons` VALUES (778, '', 0, 17, 22, NULL, 'Pemodelan Perangkat Lunak', '', '', 'zvodx1yrjy6f5gpbx2sg0affdxy2a7bq.png', 0, 1048, 0, '2020-03-26 08:42:44', '2020-03-26 08:42:44', 0);
INSERT INTO `ref_lessons` VALUES (779, '', 0, 19, 0, NULL, 'Bahasa Indonesia', 'BI', '', '9dg6a4ra93ggzpbazx1vh72u1kaclaqh.png', 0, 1048, 0, '2020-03-27 08:30:26', '2020-03-27 08:30:26', 0);
INSERT INTO `ref_lessons` VALUES (780, '', 0, 19, 0, NULL, 'Bahasa Inggris', 'ENG', '', 'wdt4kc1oa1v4evaxqtkoed65aftgfbyo.png', 0, 1048, 0, '2020-03-27 08:30:26', '2020-03-27 08:30:26', 1);
INSERT INTO `ref_lessons` VALUES (781, '', 0, 19, 0, NULL, 'Pendidikan Pancasila dan Kewarganegaraan', '', '', 'x41yssn0gozt0dqszcvkfkwcnulnwrzw.png', 0, 1048, 0, '2020-03-27 08:30:26', '2020-03-27 08:30:26', 0);
INSERT INTO `ref_lessons` VALUES (782, '', 0, 19, 0, NULL, 'Sejarah', '', '', '0e65cmm0a8t81t64wdov6isl2hdexqxj.png', 0, 1048, 0, '2020-03-27 08:30:26', '2020-03-27 08:30:26', 0);
INSERT INTO `ref_lessons` VALUES (783, '', 0, 19, 0, NULL, 'Sosiologi dan Anthropologi', '', '', 'ezxj4zs53hcirztdko4zys4a4yvqipr1.png', 0, 1048, 0, '2020-03-27 08:30:26', '2020-03-27 08:30:26', 0);
INSERT INTO `ref_lessons` VALUES (784, '', 0, 19, 0, NULL, 'Pendidikan Agama Islam', 'PAI', '', 'i272849q2i1qwmqhwemt1chrwy862fze.png', 0, 1048, 0, '2020-03-27 08:30:26', '2020-03-27 08:30:26', 0);
INSERT INTO `ref_lessons` VALUES (785, '', 0, 19, 0, NULL, 'Ilmu Pengetahuan Alam', '', '', 'nh2lzvvat4gsibis958psqmr4qip52t2.png', 0, 1048, 0, '2020-03-27 08:30:26', '2020-03-27 08:30:26', 0);
INSERT INTO `ref_lessons` VALUES (786, '', 0, 19, 0, NULL, 'TIK', 'TIK', '', 't0jv4iwgrmp2duxfb9u4tpp034wgzc5v.png', 0, 1048, 0, '2020-03-27 08:30:26', '2020-03-27 08:30:26', 0);
INSERT INTO `ref_lessons` VALUES (787, '', 0, 19, 0, NULL, 'Prakarya dan Kewirausahaan (PKWU)', 'PKWU', '', '9q8nhzuajq03xvgbrmyc0h57tg07mhpq.png', 0, 1048, 0, '2020-03-27 08:30:26', '2020-03-27 08:30:26', 0);
INSERT INTO `ref_lessons` VALUES (788, '', 0, 19, 0, NULL, 'Pendidikan Jasmani, Olahraga dan Kesehatan', 'PJOK', '', 'w2e08q0w90ruzae0z7fbkxnx0xoc4bq4.png', 0, 1048, 0, '2020-03-27 08:30:26', '2020-03-27 08:30:26', 0);
INSERT INTO `ref_lessons` VALUES (789, '', 0, 19, 0, NULL, 'Sinematografi', '', '', '9qf8ns9xjkr6t3ltzfm2f9col3pucdaz.png', 0, 1048, 0, '2020-03-27 08:30:26', '2020-03-27 08:30:26', 0);
INSERT INTO `ref_lessons` VALUES (790, '', 0, 19, 0, NULL, 'Seni Budaya', '', '', 'vpjrww2t6xx1awjf31brqda9ow1cf90o.png', 0, 1048, 0, '2020-03-27 08:30:26', '2020-03-27 08:30:26', 0);
INSERT INTO `ref_lessons` VALUES (791, '', 0, 19, 0, NULL, 'Pendidikan Agama Kristen', '', '', '14bofhtybdm5lcax1ojbkl4e0jv0chko.png', 0, 1048, 0, '2020-03-27 08:30:26', '2020-03-27 08:30:26', 1);
INSERT INTO `ref_lessons` VALUES (792, '', 0, 19, 0, NULL, 'Pendidikan Agama Hindu', 'PAH', '', '', 0, 1048, 0, '2020-03-27 08:30:26', '2020-03-27 08:30:26', 1);
INSERT INTO `ref_lessons` VALUES (793, '', 0, 20, 0, NULL, 'Bahasa Indonesia', 'BI', '', '7h43a39fxcl3twdekzxi1cgim3nl3jve.png', 0, 1048, 0, '2020-03-27 08:30:39', '2020-03-27 08:30:39', 1);
INSERT INTO `ref_lessons` VALUES (794, '', 0, 20, 0, NULL, 'Bahasa Inggris', 'ENG', '', 'kiw4gu38i2di5cy1dbm2btjlmed2jr0b.png', 0, 1048, 0, '2020-03-27 08:30:39', '2020-03-27 08:30:39', 1);
INSERT INTO `ref_lessons` VALUES (795, '', 0, 20, 0, NULL, 'Sosiologi dan Anthropologi', '', '', '6espz9b1cclha3b790w8umz0xxkt72mn.png', 0, 1048, 0, '2020-03-27 08:30:39', '2020-03-27 08:30:39', 0);
INSERT INTO `ref_lessons` VALUES (796, '', 0, 20, 0, NULL, 'Pendidikan Pancasila dan Kewarganegaraan', '', '', '1j4lef8qam42n24l5owyrtacw41p5zju.png', 0, 1048, 0, '2020-03-27 08:30:39', '2020-03-27 08:30:39', 0);
INSERT INTO `ref_lessons` VALUES (797, '', 0, 20, 0, NULL, 'Sejarah', '', '', 'yn4m0qzi0tw1dbbquy1sezwhub1cig9b.png', 0, 1048, 0, '2020-03-27 08:30:39', '2020-03-27 08:30:39', 0);
INSERT INTO `ref_lessons` VALUES (798, '', 0, 20, 0, NULL, 'Pendidikan Agama Islam', 'PAI', '', 'mh54mjjs017z5qefwitmw6oicjmuf190.png', 0, 1048, 0, '2020-03-27 08:30:39', '2020-03-27 08:30:39', 0);
INSERT INTO `ref_lessons` VALUES (799, '', 0, 20, 0, NULL, 'Ilmu Pengetahuan Alam', '', '', 'xp2neqelqfuyj7t4iucwbw7qnbofvek6.png', 0, 1048, 0, '2020-03-27 08:30:39', '2020-03-27 08:30:39', 0);
INSERT INTO `ref_lessons` VALUES (800, '', 0, 20, 0, NULL, 'Teknologi Informasi dan Komputer', 'TIK', '', '5xafvexhc60rlgap3heliz4ldy163fm6.png', 0, 1048, 0, '2020-03-27 08:30:39', '2020-03-27 08:30:39', 0);
INSERT INTO `ref_lessons` VALUES (801, '', 0, 20, 0, NULL, 'Prakarya dan Kewirausahaan (PKWU)', 'PKWU', '', 'ysqpcz7y73qwp7lcrakzn6btf2un6ixd.png', 0, 1048, 0, '2020-03-27 08:30:39', '2020-03-27 08:30:39', 0);
INSERT INTO `ref_lessons` VALUES (802, '', 0, 20, 0, NULL, 'Pendidikan Jasmani, Olahraga dan Kesehatan', 'PJOK', '', 'ig3x4i8mu5k4ukw903rntrtxb3809f7w.png', 0, 1048, 0, '2020-03-27 08:30:39', '2020-03-27 08:30:39', 0);
INSERT INTO `ref_lessons` VALUES (803, '', 0, 20, 0, NULL, 'Sinematografi', '', '', 'idgryem32cl6k7ql30ak8bnx63vpzenu.png', 0, 1048, 0, '2020-03-27 08:30:39', '2020-03-27 08:30:39', 0);
INSERT INTO `ref_lessons` VALUES (804, '', 0, 20, 0, NULL, 'Seni Budaya', '', '', 'yqv2mkcb0cyn5rv04nvqg4i40x0njdk9.png', 0, 1048, 0, '2020-03-27 08:30:39', '2020-03-27 08:30:39', 0);
INSERT INTO `ref_lessons` VALUES (805, '', 0, 20, 0, NULL, 'Pendidikan Agama Kristen', 'PAK', '', 'jb0q5grqkwq5e2b2anepsditzdg0ggah.png', 0, 1048, 0, '2020-03-27 08:30:39', '2020-03-27 08:30:39', 1);
INSERT INTO `ref_lessons` VALUES (806, '', 0, 20, 0, NULL, 'Agama Hindu', '', '', '', 0, 1048, 0, '2020-03-27 08:30:39', '2020-03-27 08:30:39', 1);
INSERT INTO `ref_lessons` VALUES (807, '', 0, 21, 0, NULL, 'Bahasa Indonesia', 'BI', '', 'gwega0jv4igx1tlu9cpodky22g0m4xpz.png', 0, 1048, 0, '2020-03-27 08:30:54', '2020-03-27 08:30:54', 1);
INSERT INTO `ref_lessons` VALUES (808, '', 0, 21, 0, NULL, 'Bahasa Inggris', 'ENG', '', 'whfzbzkh3c0we4b4i4vsnb982tgzdbfh.png', 0, 1048, 0, '2020-03-27 08:30:54', '2020-03-27 08:30:54', 1);
INSERT INTO `ref_lessons` VALUES (809, '', 0, 21, 0, NULL, 'Sosiologi dan Anthropologi', '', '', 'xjp56q3skm4l1gtem7iv8iml80gbom0p.png', 0, 1048, 0, '2020-03-27 08:30:54', '2020-03-27 08:30:54', 0);
INSERT INTO `ref_lessons` VALUES (810, '', 0, 21, 0, NULL, 'Pendidikan Pancasila dan Kewarganegaraan', '', '', 'gzcg8uxm50363fwtuug16qo1unebxuvd.png', 0, 1048, 0, '2020-03-27 08:30:54', '2020-03-27 08:30:54', 0);
INSERT INTO `ref_lessons` VALUES (811, '', 0, 21, 0, NULL, 'Sejarah', '', '', '5p9w2lf6mp2wtdfne6d2otjtb3yxol49.png', 0, 1048, 0, '2020-03-27 08:30:54', '2020-03-27 08:30:54', 0);
INSERT INTO `ref_lessons` VALUES (812, '', 0, 21, 0, NULL, 'Pendidikan Agama Kristen', '', '', 'o1rahm2yl70asbhw61u3eks4qiitu79m.png', 0, 1048, 0, '2020-03-27 08:30:54', '2020-03-27 08:30:54', 1);
INSERT INTO `ref_lessons` VALUES (813, '', 0, 21, 0, NULL, 'Ilmu Pengetahuan Alam', 'IPA', '', '314dqr74n6stze3m8uoj2fpgceloe7jy.png', 0, 1048, 0, '2020-03-27 08:30:54', '2020-03-27 08:30:54', 0);
INSERT INTO `ref_lessons` VALUES (814, '', 0, 21, 0, NULL, 'Teknologi Informasi dan Komputer', 'TIK', '', 'u4fomh63pxko97o44o8664506xd7sxow.png', 0, 1048, 0, '2020-03-27 08:30:54', '2020-03-27 08:30:54', 0);
INSERT INTO `ref_lessons` VALUES (815, '', 0, 21, 0, NULL, 'Seni Budaya', '', '', 'mlvr8ckrbj5quz32h2cuac76kmq4775k.png', 0, 1048, 0, '2020-03-27 08:30:54', '2020-03-27 08:30:54', 0);
INSERT INTO `ref_lessons` VALUES (816, '', 0, 21, 0, NULL, 'Pendidikan Agama Islam', 'PAI', '', '9i80rhl5pfzfs0x89ifovs6dj22by7hx.png', 0, 1048, 0, '2020-03-27 08:30:54', '2020-03-27 08:30:54', 0);
INSERT INTO `ref_lessons` VALUES (817, '', 0, 21, 0, NULL, 'Pendidikan Jasmani, Olahraga dan Kesehatan', 'PJOK', '', '95gkzid7b6b4ephfwl8vxkxrqy8dnfay.png', 0, 1048, 0, '2020-03-27 08:30:54', '2020-03-27 08:30:54', 0);
INSERT INTO `ref_lessons` VALUES (818, '', 0, 21, 0, NULL, 'Sinematografi', '', '', 'yl9ykt6vfu1r2egbzenlo8l74ngc6uqn.png', 0, 1048, 0, '2020-03-27 08:30:54', '2020-03-27 08:30:54', 0);
INSERT INTO `ref_lessons` VALUES (819, '', 0, 21, 0, NULL, 'Agama Hindu', '', '', '', 0, 1048, 0, '2020-03-27 08:30:54', '2020-03-27 08:30:54', 1);
INSERT INTO `ref_lessons` VALUES (820, '', 0, 21, 0, NULL, 'Prakarya dan Kewirausahaan (PKWU)', 'PKWU', '', '9g5att9uqzrbjw9iig8n7k6f64b5k9ww.png', 0, 1048, 1048, '2020-03-27 08:30:54', '2020-03-27 08:38:26', 0);
INSERT INTO `ref_lessons` VALUES (821, 'KATOLIK', 1, 10, 21, NULL, 'Pendidikan Agama Katolik', '', '', 'yzts8kkku8obyft4yz4qi1149asl4crc.png', 0, 1048, 0, '2020-03-27 08:41:43', '2020-03-27 08:41:43', 0);
INSERT INTO `ref_lessons` VALUES (822, 'BUDHA', 1, 10, 21, NULL, 'Pendidikan Agama Budha', '', '', 'k1zgt713mxp19ru42l4thwjvvnx82zug.png', 0, 1048, 0, '2020-03-27 08:42:53', '2020-03-27 08:42:53', 0);
INSERT INTO `ref_lessons` VALUES (823, 'KATOLIK', 1, 11, 21, NULL, 'Pendidikan Agama Katolik', '', '', 'z7mjaoz9jj0ayjp4vhepznybwodmjqy3.png', 0, 1048, 0, '2020-03-27 08:44:08', '2020-03-27 08:44:08', 0);
INSERT INTO `ref_lessons` VALUES (824, 'BUDHA', 1, 11, 21, NULL, 'Pendidikan Agama Budha', '', '', 'eibabysrwrqgd9dx308pt6vteboskf83.png', 0, 1048, 0, '2020-03-27 08:44:37', '2020-03-27 08:44:37', 0);
INSERT INTO `ref_lessons` VALUES (825, 'KATOLIK', 1, 12, 21, NULL, 'Pendidikan Agama Katolik', '', '', 'dqp0i9obkkggyplm070e4otmpmhyqmht.png', 0, 1048, 0, '2020-03-27 08:46:08', '2020-03-27 08:46:08', 0);
INSERT INTO `ref_lessons` VALUES (826, 'BUDHA', 1, 12, 21, NULL, 'Pendidikan Agama Budha', '', '', 'dligmlp4w9snb7xzkebfj5qewi8uhxiq.png', 0, 1048, 0, '2020-03-27 08:46:33', '2020-03-27 08:46:33', 0);
INSERT INTO `ref_lessons` VALUES (827, 'KRISTEN', 1, 1, 19, NULL, 'Pendidikan Agama Kristen', '', '', 'as950u0s62rkgdxx7snm4gztw6t086v0.png', 0, 1048, 0, '2020-03-27 11:03:35', '2020-03-27 11:03:35', 0);
INSERT INTO `ref_lessons` VALUES (828, 'KATOLIK', 1, 1, 19, NULL, 'Pendidikan Agama Katolik', '', '', '718acsbfjfl37k1d01g3r2u443goezhz.png', 0, 1048, 0, '2020-03-27 11:04:22', '2020-03-27 11:04:22', 0);
INSERT INTO `ref_lessons` VALUES (829, 'HINDU', 1, 1, 19, NULL, 'Pendidikan Agama Hindu', '', '', 'sn2zz1sl7c7npva48yb1jscclitua6oj.png', 0, 1048, 0, '2020-03-27 11:04:48', '2020-03-27 11:04:48', 0);
INSERT INTO `ref_lessons` VALUES (830, 'BUDHA', 1, 1, 19, NULL, 'Pendidikan Agama Budha', '', '', 'af1ymau2v0e58g497i07d3vhec8guuin.png', 0, 1048, 0, '2020-03-27 11:05:21', '2020-03-27 11:05:21', 0);
INSERT INTO `ref_lessons` VALUES (831, 'Kong Hu Cu', 1, 1, 19, NULL, 'Pendidikan Agama Konghucu', '', '', 'nwj1n15eeeu6jxn1blbrzbpp33grmfwp.png', 0, 1048, 0, '2020-03-27 11:05:56', '2020-03-27 11:05:56', 0);
INSERT INTO `ref_lessons` VALUES (832, '', 0, 17, 22, NULL, 'Administrasi Infrastruktur Jaringan', '', '', 'c5hdmma699wnvqgxt30reo551zsiguki.png', 0, 1048, 1048, '2020-04-03 15:30:18', '2020-04-03 15:30:37', 0);
INSERT INTO `ref_lessons` VALUES (833, '', 0, 10, 21, NULL, 'Bahasa dan Budaya Lampung', 'BBL', '', 'wcj83rznmzm19ncmirlfbvfivhiiox30.png', 0, 1048, 0, '2020-04-04 10:50:44', '2020-04-04 10:50:44', 0);
INSERT INTO `ref_lessons` VALUES (834, '', 0, 11, 21, NULL, 'Bahasa dan Budaya Lampung', 'BBL', '', '4jtr0no6unvcfh4hs8qgpwsdozty5vhx.png', 0, 1048, 0, '2020-04-04 10:51:14', '2020-04-04 10:51:14', 0);
INSERT INTO `ref_lessons` VALUES (835, '', 0, 12, 21, NULL, 'Bahasa dan Budaya Lampung', 'BBL', '', '949g1uo8br27c5ugvuogswl3qvew48av.png', 0, 1048, 0, '2020-04-04 10:51:50', '2020-04-04 10:51:50', 0);
INSERT INTO `ref_lessons` VALUES (836, '', 0, 10, 21, NULL, 'Bimbingan Konseling Teknik Komputer', 'BKTI', '', 'nw94btuv4ek8oav60utaplwdrieahs67.png', 0, 1048, 0, '2020-04-04 10:53:07', '2020-04-04 10:53:07', 0);
INSERT INTO `ref_lessons` VALUES (837, '', 0, 11, 21, NULL, 'Bimbingan Konseling Teknik Komputer', 'BKTI', '', 'qo4wkcshz77mrzupwk5yyvwx1pgqar9e.png', 0, 1048, 0, '2020-04-04 10:53:35', '2020-04-04 10:53:35', 0);
INSERT INTO `ref_lessons` VALUES (838, '', 0, 12, 21, NULL, 'Bimbingan dan Konseling Teknik Komputer', 'BKTI', '', 'x3me7vg35d72zmw45l4mkcfsd6d61r6d.png', 0, 1048, 0, '2020-04-04 10:54:08', '2020-04-04 10:54:08', 0);
INSERT INTO `ref_lessons` VALUES (839, 'KATOLIK', 1, 6, 19, NULL, 'Pendidikan Agama Katolik', '', '', '7r8h2ywqpwg4qqceav8hoba45lwdf9nq.png', 0, 1048, 0, '2020-04-10 16:25:27', '2020-04-10 16:25:27', 0);
INSERT INTO `ref_lessons` VALUES (840, 'BUDHA', 1, 6, 19, NULL, 'Pendidikan Agama Budha', '', '', 'nutr3na4ne7jm5kkn29htza96qzdscz1.png', 0, 1048, 0, '2020-04-10 16:26:01', '2020-04-10 16:26:01', 0);
INSERT INTO `ref_lessons` VALUES (841, 'Kong Hu Cu', 1, 6, 19, NULL, 'Pendidikan Agama Konghucu', '', '', 'nedw9byt35nwpadw6k5o88jx75obcj55.png', 0, 1048, 0, '2020-04-10 16:26:29', '2020-04-10 16:26:29', 0);
INSERT INTO `ref_lessons` VALUES (842, '', 0, 14, 15, NULL, 'Tes Potensi Skolastik', 'TPS', '', 'u816xxa6w2nw8t4xacyilh4njwloy4pe.png', 0, 1048, 0, '2020-04-16 19:03:43', '2020-04-16 19:03:43', 0);
INSERT INTO `ref_lessons` VALUES (843, '', 0, 34, 0, NULL, 'Sejarah Kebudayaan Islam', 'SKI', '', '11wox7qk1o0rpbgltr7jb2z4wv3im8f3.png', 0, 1048, 0, '2020-04-29 13:10:58', '2020-04-29 13:10:58', 0);
INSERT INTO `ref_lessons` VALUES (844, '', 0, 34, 0, NULL, 'Qur\'an Hadits', 'QH', '', 'zwnm7rvnbb7g629kkjfofwmfamdxjhbq.png', 0, 1048, 0, '2020-04-29 13:10:58', '2020-04-29 13:10:58', 0);
INSERT INTO `ref_lessons` VALUES (845, '', 0, 34, 0, NULL, 'Aqidah', '', '', '89kwyl4wmru64c9bdna85e9fwgi4pxkr.png', 0, 1048, 0, '2020-04-29 13:10:58', '2020-04-29 13:10:58', 0);
INSERT INTO `ref_lessons` VALUES (846, '', 0, 34, 0, NULL, 'Fiqih', '', '', '48akvui4nwbd3ejlgamx8ia0h1zqcowp.png', 0, 1048, 0, '2020-04-29 13:10:58', '2020-04-29 13:10:58', 0);
INSERT INTO `ref_lessons` VALUES (847, '', 0, 34, 0, NULL, 'Bahasa Arab', '', '', 'watz6vkvp06l7e3dthj60j83286txb7p.png', 0, 1048, 0, '2020-04-29 13:10:58', '2020-04-29 13:10:58', 0);
INSERT INTO `ref_lessons` VALUES (848, '', 0, 35, 31, NULL, 'Sejarah Kebudayaan Islam', 'SKI', '', '11wox7qk1o0rpbgltr7jb2z4wv3im8f3.png', 0, 1048, 1048, '2020-04-29 13:11:10', '2020-04-29 13:14:23', 0);
INSERT INTO `ref_lessons` VALUES (849, '', 0, 35, 31, NULL, 'Qur\'an Hadits', 'QH', '', 'zwnm7rvnbb7g629kkjfofwmfamdxjhbq.png', 0, 1048, 1048, '2020-04-29 13:11:11', '2020-04-29 13:14:32', 0);
INSERT INTO `ref_lessons` VALUES (850, '', 0, 35, 31, NULL, 'Aqidah', '', '', '89kwyl4wmru64c9bdna85e9fwgi4pxkr.png', 0, 1048, 1048, '2020-04-29 13:11:11', '2020-04-29 13:14:39', 0);
INSERT INTO `ref_lessons` VALUES (851, '', 0, 35, 31, NULL, 'Fiqih', '', '', '48akvui4nwbd3ejlgamx8ia0h1zqcowp.png', 0, 1048, 1048, '2020-04-29 13:11:11', '2020-04-29 13:14:47', 0);
INSERT INTO `ref_lessons` VALUES (852, '', 0, 35, 31, NULL, 'Bahasa Arab', '', '', 'watz6vkvp06l7e3dthj60j83286txb7p.png', 0, 1048, 1048, '2020-04-29 13:11:11', '2020-04-29 13:14:59', 0);
INSERT INTO `ref_lessons` VALUES (853, '', 0, 35, 31, NULL, 'Pendidikan Agama Islam', '', '', 'l0g33uxvp4688g6u61170b6dm7t1h4bq.png', 0, 1048, 1048, '2020-04-29 13:11:45', '2020-04-29 13:15:17', 1);
INSERT INTO `ref_lessons` VALUES (854, '', 0, 35, 31, NULL, 'Bahasa Indonesia', '', '', 'x48wuh2z4g6ls5ozkrbruru0nc7lfk9y.png', 0, 1048, 1048, '2020-04-29 13:11:45', '2020-04-29 13:15:26', 0);

-- ----------------------------
-- Table structure for ref_tahun_ajarans
-- ----------------------------
DROP TABLE IF EXISTS `ref_tahun_ajarans`;
CREATE TABLE `ref_tahun_ajarans`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `keterangan` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ordering` int(9) NOT NULL,
  `user_added` int(10) NOT NULL,
  `user_modified` int(10) NOT NULL,
  `date_added` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `date_modified` datetime(0) NOT NULL,
  `hidden` int(1) NOT NULL,
  `start_date` date NULL DEFAULT NULL,
  `end_date` date NULL DEFAULT NULL,
  `date_deleted` datetime(0) NULL DEFAULT NULL,
  `user_deleted` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ordering_2`(`ordering`) USING BTREE,
  INDEX `hidden`(`hidden`) USING BTREE,
  INDEX `name`(`name`) USING BTREE,
  INDEX `end`(`end_date`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ref_tahun_ajarans
-- ----------------------------

-- ----------------------------
-- Table structure for soal_attachment_questions
-- ----------------------------
DROP TABLE IF EXISTS `soal_attachment_questions`;
CREATE TABLE `soal_attachment_questions`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `attachment` int(9) NOT NULL,
  `question` int(9) NOT NULL,
  `user_added` int(32) NOT NULL,
  `user_modified` int(9) NOT NULL,
  `date_added` datetime(0) NOT NULL,
  `date_modified` datetime(0) NOT NULL,
  `hidden` int(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `attachment`(`attachment`, `question`, `hidden`) USING BTREE,
  INDEX `attachment_2`(`attachment`) USING BTREE,
  INDEX `question`(`question`) USING BTREE,
  INDEX `user_added`(`user_added`) USING BTREE,
  INDEX `hidden`(`hidden`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of soal_attachment_questions
-- ----------------------------

-- ----------------------------
-- Table structure for soal_attachment_relations
-- ----------------------------
DROP TABLE IF EXISTS `soal_attachment_relations`;
CREATE TABLE `soal_attachment_relations`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` enum('TEXT','IMAGE') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'TEXT',
  `attachment` int(9) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `translate` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ordering` int(9) NOT NULL,
  `user_added` int(32) NOT NULL,
  `user_modified` int(9) NOT NULL,
  `date_added` datetime(0) NOT NULL,
  `date_modified` datetime(0) NOT NULL,
  `hidden` int(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type`(`type`, `attachment`, `ordering`, `hidden`) USING BTREE,
  INDEX `type_2`(`type`) USING BTREE,
  INDEX `attachment`(`attachment`) USING BTREE,
  INDEX `ordering`(`ordering`) USING BTREE,
  INDEX `user_added`(`user_added`) USING BTREE,
  INDEX `hidden`(`hidden`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of soal_attachment_relations
-- ----------------------------

-- ----------------------------
-- Table structure for soal_attachments
-- ----------------------------
DROP TABLE IF EXISTS `soal_attachments`;
CREATE TABLE `soal_attachments`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `subject` int(9) NOT NULL,
  `user_added` int(32) NOT NULL,
  `user_modified` int(9) NOT NULL,
  `date_added` datetime(0) NOT NULL,
  `date_modified` datetime(0) NOT NULL,
  `hidden` int(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `subject`(`subject`, `hidden`) USING BTREE,
  INDEX `subject_2`(`subject`) USING BTREE,
  INDEX `hidden`(`hidden`) USING BTREE,
  INDEX `user_added`(`user_added`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of soal_attachments
-- ----------------------------

-- ----------------------------
-- Table structure for soal_choice_relations
-- ----------------------------
DROP TABLE IF EXISTS `soal_choice_relations`;
CREATE TABLE `soal_choice_relations`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` enum('TEXT','IMAGE') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'TEXT',
  `question` int(9) NOT NULL,
  `choice` int(9) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `translate` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ordering` int(9) NOT NULL,
  `user_added` int(32) NOT NULL,
  `user_modified` int(9) NOT NULL,
  `date_added` datetime(0) NOT NULL,
  `date_modified` datetime(0) NOT NULL,
  `hidden` int(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type`(`type`, `question`, `choice`, `ordering`, `hidden`) USING BTREE,
  INDEX `type_2`(`type`) USING BTREE,
  INDEX `question`(`question`) USING BTREE,
  INDEX `choice`(`choice`) USING BTREE,
  INDEX `ordering`(`ordering`) USING BTREE,
  INDEX `hidden`(`hidden`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of soal_choice_relations
-- ----------------------------

-- ----------------------------
-- Table structure for soal_choices
-- ----------------------------
DROP TABLE IF EXISTS `soal_choices`;
CREATE TABLE `soal_choices`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `question` int(9) NOT NULL,
  `is_answer` int(1) NOT NULL,
  `ordering` int(9) NOT NULL,
  `user_added` int(32) NOT NULL,
  `user_modified` int(9) NOT NULL,
  `date_added` datetime(0) NOT NULL,
  `date_modified` datetime(0) NOT NULL,
  `hidden` int(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `question`(`question`, `is_answer`, `ordering`, `hidden`) USING BTREE,
  INDEX `question_2`(`question`) USING BTREE,
  INDEX `is_answer`(`is_answer`) USING BTREE,
  INDEX `ordering`(`ordering`) USING BTREE,
  INDEX `user_added`(`user_added`) USING BTREE,
  INDEX `hidden`(`hidden`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of soal_choices
-- ----------------------------

-- ----------------------------
-- Table structure for soal_explaination_relations
-- ----------------------------
DROP TABLE IF EXISTS `soal_explaination_relations`;
CREATE TABLE `soal_explaination_relations`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` enum('TEXT','IMAGE') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'TEXT',
  `subject` int(9) NOT NULL,
  `question` int(9) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `translate` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ordering` int(9) NOT NULL,
  `user_added` int(32) NOT NULL,
  `user_modified` int(9) NOT NULL,
  `date_added` datetime(0) NOT NULL,
  `date_modified` datetime(0) NOT NULL,
  `hidden` int(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type`(`type`, `subject`, `question`, `ordering`, `hidden`) USING BTREE,
  INDEX `type_2`(`type`) USING BTREE,
  INDEX `subject`(`subject`) USING BTREE,
  INDEX `question`(`question`) USING BTREE,
  INDEX `ordering`(`ordering`) USING BTREE,
  INDEX `hidden`(`hidden`) USING BTREE,
  INDEX `user_added`(`user_added`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of soal_explaination_relations
-- ----------------------------

-- ----------------------------
-- Table structure for soal_question_relations
-- ----------------------------
DROP TABLE IF EXISTS `soal_question_relations`;
CREATE TABLE `soal_question_relations`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` enum('TEXT','IMAGE') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'TEXT',
  `subject` int(9) NOT NULL,
  `question` int(9) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `translate` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ordering` int(9) NOT NULL,
  `user_added` int(32) NOT NULL,
  `user_modified` int(9) NOT NULL,
  `date_added` datetime(0) NOT NULL,
  `date_modified` datetime(0) NOT NULL,
  `hidden` int(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type`(`type`, `subject`, `question`, `ordering`, `hidden`) USING BTREE,
  INDEX `type_2`(`type`) USING BTREE,
  INDEX `subject`(`subject`) USING BTREE,
  INDEX `question`(`question`) USING BTREE,
  INDEX `ordering`(`ordering`) USING BTREE,
  INDEX `hidden`(`hidden`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of soal_question_relations
-- ----------------------------

-- ----------------------------
-- Table structure for soal_questions
-- ----------------------------
DROP TABLE IF EXISTS `soal_questions`;
CREATE TABLE `soal_questions`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` enum('MULTIPLE_CHOICE','ESSAY','MATCH') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'MULTIPLE_CHOICE',
  `subject` int(9) NOT NULL,
  `audio_question` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `audio_explanation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ordering` int(9) NOT NULL,
  `photo_reviewed` int(1) NOT NULL,
  `katex_reviewed` int(1) NOT NULL,
  `bobot` decimal(10, 2) NOT NULL,
  `user_added` int(32) NOT NULL,
  `user_modified` int(9) NOT NULL,
  `date_added` datetime(0) NOT NULL,
  `date_modified` datetime(0) NOT NULL,
  `hidden` int(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type_2`(`type`) USING BTREE,
  INDEX `subject`(`subject`) USING BTREE,
  INDEX `ordering`(`ordering`) USING BTREE,
  INDEX `hidden`(`hidden`) USING BTREE,
  INDEX `photo_reviewed`(`photo_reviewed`) USING BTREE,
  INDEX `katex_reviewed`(`katex_reviewed`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of soal_questions
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
