/*
 Navicat Premium Data Transfer

 Source Server         : AISServer
 Source Server Type    : MySQL
 Source Server Version : 100240
 Source Host           : localhost:3306
 Source Schema         : kmeans

 Target Server Type    : MySQL
 Target Server Version : 100240
 File Encoding         : 65001

 Date: 15/06/2022 16:56:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionname` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ico` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `menusubmenu` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `multilevel` bit(1) NULL DEFAULT NULL,
  `separator` bit(1) NULL DEFAULT NULL,
  `order` int(255) NULL DEFAULT NULL,
  `status` bit(1) NULL DEFAULT NULL,
  `AllowMobile` bit(1) NULL DEFAULT NULL,
  `MobileRoute` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `MobileLogo` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (2, 'Daftar Variable', 'data', 'fa-pencil-square-o', '0', b'0', b'0', 2, b'1', NULL, NULL, NULL);
INSERT INTO `permission` VALUES (3, 'Daftar Centroid Awal', 'centroidawal', 'fa-pencil-square-o', '0', b'0', b'0', 3, b'1', NULL, NULL, NULL);
INSERT INTO `permission` VALUES (5, 'Perhitungan', 'proses', 'fa-spinner', '0', b'0', b'0', 6, b'1', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for permissionrole
-- ----------------------------
DROP TABLE IF EXISTS `permissionrole`;
CREATE TABLE `permissionrole`  (
  `roleid` int(11) NOT NULL,
  `permissionid` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissionrole
-- ----------------------------
INSERT INTO `permissionrole` VALUES (1, 1);
INSERT INTO `permissionrole` VALUES (1, 2);
INSERT INTO `permissionrole` VALUES (1, 3);
INSERT INTO `permissionrole` VALUES (1, 4);
INSERT INTO `permissionrole` VALUES (1, 5);
INSERT INTO `permissionrole` VALUES (2, 2);
INSERT INTO `permissionrole` VALUES (1, 6);
INSERT INTO `permissionrole` VALUES (2, 6);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'Admin');
INSERT INTO `roles` VALUES (2, 'Operator');

-- ----------------------------
-- Table structure for tcentroid
-- ----------------------------
DROP TABLE IF EXISTS `tcentroid`;
CREATE TABLE `tcentroid`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `KodeData` int(255) NOT NULL,
  `Centroid` int(11) NOT NULL,
  `Pekerjaan` double(16, 4) NOT NULL,
  `Penghasilan` double(16, 4) NOT NULL,
  `Pendidikan` double(16, 4) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tcentroid
-- ----------------------------
INSERT INTO `tcentroid` VALUES (1, 11, 1, 0.0000, 0.0000, 0.0000);
INSERT INTO `tcentroid` VALUES (2, 15, 2, 0.3333, 0.7500, 1.0000);
INSERT INTO `tcentroid` VALUES (3, 19, 3, 1.0000, 0.7500, 0.6666);

-- ----------------------------
-- Table structure for tdata
-- ----------------------------
DROP TABLE IF EXISTS `tdata`;
CREATE TABLE `tdata`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Pekerjaan` double(16, 4) NOT NULL,
  `Penghasilan` double(16, 4) NOT NULL,
  `Pendidikan` double(16, 4) NULL DEFAULT NULL,
  `Koordinat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tdata
-- ----------------------------
INSERT INTO `tdata` VALUES (1, 'Wagiyati', 'Kecamatan Kalijambe, Sragen Regency, Central Java, Indonesia', 4.0000, 1820000.0000, 5.0000, '-7.4354026,110.8195292');
INSERT INTO `tdata` VALUES (2, 'Lanjar Sutopo', 'Kecamatan Plupuh, Sragen Regency, Central Java, Indonesia', 3.0000, 1650000.0000, 3.0000, '-7.4319067,110.8910556');
INSERT INTO `tdata` VALUES (3, 'Supardi', 'Kecamatan Masaran, Sragen Regency, Central Java, Indonesia', 3.0000, 1520000.0000, 3.0000, '-7.470387199999999,110.9387418');
INSERT INTO `tdata` VALUES (4, 'Tukiman Citro', 'Kecamatan Kedawung, Sragen Regency, Central Java, Indonesia', 2.0000, 1000000.0000, 2.0000, '-7.4860782,111.0341183');
INSERT INTO `tdata` VALUES (5, 'Sutanto', 'Kecamatan Sambirejo, Sragen Regency, Central Java, Indonesia', 4.0000, 1600000.0000, 4.0000, '-7.502921799999999,111.1056539');
INSERT INTO `tdata` VALUES (6, 'Joko Susilo', 'Kecamatan Gondang, Sragen Regency, Central Java, Indonesia', 4.0000, 1300000.0000, 4.0000, '-7.4417327,111.1056539');
INSERT INTO `tdata` VALUES (7, 'Kevin', 'Sambung Macan, Sragen Regency, Central Java, Indonesia', 5.0000, 2200000.0000, 5.0000, '-7.380601700000001,111.1056539');
INSERT INTO `tdata` VALUES (8, 'Mulyono', 'Ngrampal, Sragen Regency, Central Java, Indonesia', 3.0000, 1550000.0000, 3.0000, '-7.3883305,111.052002');
INSERT INTO `tdata` VALUES (9, 'Samidi', 'Karangmalang, Sragen Regency, Central Java, Indonesia', 2.0000, 1300000.0000, 3.0000, '-7.468032399999998,110.9864294');
INSERT INTO `tdata` VALUES (10, 'Juri', 'Kecamatan Sragen, Sragen Regency, Central Java, Indonesia', 4.0000, 1750000.0000, 3.0000, '-7.430520199999999,111.0090622');

-- ----------------------------
-- Table structure for tdata_copy1_copy1
-- ----------------------------
DROP TABLE IF EXISTS `tdata_copy1_copy1`;
CREATE TABLE `tdata_copy1_copy1`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `LuasPanen` double(16, 4) NOT NULL,
  `Produksi` double(16, 4) NOT NULL,
  `xother` double(16, 4) NULL DEFAULT NULL,
  `Koordinat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `TahunPanen` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tdata_copy1_copy1
-- ----------------------------
INSERT INTO `tdata_copy1_copy1` VALUES (1, 'Kalijambe', 'Kecamatan Kalijambe, Sragen Regency, Central Java, Indonesia', 4255.0000, 26536.0000, 0.0000, '-7.4354026,110.8195292', '2019');
INSERT INTO `tdata_copy1_copy1` VALUES (2, 'Plupuh', 'Kecamatan Plupuh, Sragen Regency, Central Java, Indonesia', 6409.0000, 39830.0000, 0.0000, '-7.4319067,110.8910556', '2019');
INSERT INTO `tdata_copy1_copy1` VALUES (3, 'Masaran', 'Kecamatan Masaran, Sragen Regency, Central Java, Indonesia', 7794.0000, 52697.0000, 0.0000, '-7.470387199999999,110.9387418', '2019');
INSERT INTO `tdata_copy1_copy1` VALUES (4, 'Kedawung', 'Kecamatan Kedawung, Sragen Regency, Central Java, Indonesia', 5354.0000, 34261.0000, 0.0000, '-7.4860782,111.0341183', '2019');
INSERT INTO `tdata_copy1_copy1` VALUES (5, 'Sambirejo', 'Kecamatan Sambirejo, Sragen Regency, Central Java, Indonesia', 3015.0000, 19278.0000, 0.0000, '-7.502921799999999,111.1056539', '2019');
INSERT INTO `tdata_copy1_copy1` VALUES (6, 'Gondang', 'Kecamatan Gondang, Sragen Regency, Central Java, Indonesia', 7217.0000, 45500.0000, 0.0000, '-7.4417327,111.1056539', '2019');
INSERT INTO `tdata_copy1_copy1` VALUES (7, 'Sambung Macan', 'Sambung Macan, Sragen Regency, Central Java, Indonesia', 6469.0000, 40885.0000, 0.0000, '-7.380601700000001,111.1056539', '2019');
INSERT INTO `tdata_copy1_copy1` VALUES (8, 'Ngrampal', 'Ngrampal, Sragen Regency, Central Java, Indonesia', 6850.0000, 43338.0000, 0.0000, '-7.3883305,111.052002', '2019');
INSERT INTO `tdata_copy1_copy1` VALUES (9, 'Karangmalang', 'Karangmalang, Sragen Regency, Central Java, Indonesia', 6894.0000, 43568.0000, 0.0000, '-7.468032399999998,110.9864294', '2019');
INSERT INTO `tdata_copy1_copy1` VALUES (10, 'Sragen', 'Kecamatan Sragen, Sragen Regency, Central Java, Indonesia', 4340.0000, 29227.0000, 0.0000, '-7.430520199999999,111.0090622', '2019');
INSERT INTO `tdata_copy1_copy1` VALUES (11, 'Sidoharjo', 'Sidoharjo, Sragen Regency, Central Java, Indonesia', 9161.0000, 61790.0000, 0.0000, '-7.4283992,110.9625854', '2019');
INSERT INTO `tdata_copy1_copy1` VALUES (12, 'Tanon', 'Tanon, Sragen Regency, Central Java, Indonesia', 7064.0000, 43982.0000, 0.0000, '-7.389940899999999,110.9148985', '2019');
INSERT INTO `tdata_copy1_copy1` VALUES (13, 'Gemolong', 'Gemolong, Sragen Regency, Central Java, Indonesia', 4224.0000, 26241.0000, 0.0000, '-7.393421899999999,110.8433709', '2019');
INSERT INTO `tdata_copy1_copy1` VALUES (14, 'Miri', 'Kecamatan Miri, Sragen Regency, Central Java, Indonesia', 2485.0000, 15377.0000, 0.0000, '-7.348972299999999,110.8135688', '2019');
INSERT INTO `tdata_copy1_copy1` VALUES (15, 'Sumberlawang', 'Sumberlawang, Sragen Regency, Central Java, Indonesia', 3724.0000, 22902.0000, 0.0000, '-7.3310958,110.8672131', '2019');
INSERT INTO `tdata_copy1_copy1` VALUES (16, 'Mondokan', 'Mondokan, Sragen Regency, Central Java, Indonesia', 2374.0000, 14621.0000, 0.0000, '-7.307272599999998,110.9387418', '2019');
INSERT INTO `tdata_copy1_copy1` VALUES (17, 'Sukodono', 'Sukodono, Sidoarjo Regency, East Java, Indonesia', 3780.0000, 23225.0000, 0.0000, '-7.394667,112.6737856', '2019');
INSERT INTO `tdata_copy1_copy1` VALUES (18, 'Gesi', 'Gesi, Sragen Regency, Central Java, Indonesia', 1744.0000, 10754.0000, 0.0000, '-7.3241711,111.0102737', '2019');
INSERT INTO `tdata_copy1_copy1` VALUES (19, 'Tangen', 'Tangen, Sragen Regency, Central Java, Indonesia', 1699.0000, 10386.0000, 0.0000, '-7.2811574,111.0579632', '2019');
INSERT INTO `tdata_copy1_copy1` VALUES (20, 'Jenar', 'Jenar, Sragen Regency, Central Java, Indonesia', 1814.0000, 11311.0000, 0.0000, '-7.3195291,111.1056539', '2019');

-- ----------------------------
-- Table structure for thasil
-- ----------------------------
DROP TABLE IF EXISTS `thasil`;
CREATE TABLE `thasil`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `KodeData` int(255) NOT NULL,
  `Keanggotaan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `iterasi` int(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of thasil
-- ----------------------------
INSERT INTO `thasil` VALUES (1, 1, 'C1', 3);
INSERT INTO `thasil` VALUES (2, 2, 'C3', 3);
INSERT INTO `thasil` VALUES (3, 3, 'C3', 3);
INSERT INTO `thasil` VALUES (4, 4, 'C3', 3);
INSERT INTO `thasil` VALUES (5, 5, 'C2', 3);
INSERT INTO `thasil` VALUES (6, 6, 'C2', 3);
INSERT INTO `thasil` VALUES (7, 7, 'C1', 3);
INSERT INTO `thasil` VALUES (8, 8, 'C3', 3);
INSERT INTO `thasil` VALUES (9, 9, 'C3', 3);
INSERT INTO `thasil` VALUES (10, 10, 'C2', 3);

-- ----------------------------
-- Table structure for userrole
-- ----------------------------
DROP TABLE IF EXISTS `userrole`;
CREATE TABLE `userrole`  (
  `userid` int(11) NOT NULL,
  `roleid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userrole
-- ----------------------------
INSERT INTO `userrole` VALUES (14, 1);
INSERT INTO `userrole` VALUES (43, 2);
INSERT INTO `userrole` VALUES (52, 1);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(75) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(75) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `createdby` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `createdon` datetime(0) NULL DEFAULT NULL,
  `HakAkses` int(255) NULL DEFAULT NULL,
  `token` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `verified` bit(1) NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `browser` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (14, 'admin', 'admin', 'a9bdd47d7321d4089b3b00561c9c621848bd6f6e2f745a53d54913d613789c23945b66de6ded1eb336a7d526f9349a9d964d6f6c3a40e2ac90b4b16c0121f7895Xg53McbkyQ/NmW60Sf4cu3wJsi/8cyZXxeXV7g6b04=', 'mnl', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (43, 'operator', 'Operator', 'a9bdd47d7321d4089b3b00561c9c621848bd6f6e2f745a53d54913d613789c23945b66de6ded1eb336a7d526f9349a9d964d6f6c3a40e2ac90b4b16c0121f7895Xg53McbkyQ/NmW60Sf4cu3wJsi/8cyZXxeXV7g6b04=', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- View structure for vw_normalisasidata
-- ----------------------------
DROP VIEW IF EXISTS `vw_normalisasidata`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vw_normalisasidata` AS SELECT 
	a.id, a.Nama,
	(a.Pekerjaan-(SELECT MAX(Pekerjaan) FROM tdata))/((SELECT MIN(Pekerjaan) FROM tdata) - (SELECT MAX(Pekerjaan) FROM tdata)) ND_Pekerjaan,
	(a.Penghasilan-(SELECT MAX(Penghasilan) FROM tdata))/((SELECT MIN(Penghasilan) FROM tdata) - (SELECT MAX(Penghasilan) FROM tdata)) ND_Penghasilan,
	(a.Pendidikan-(SELECT MAX(Pendidikan) FROM tdata))/((SELECT MIN(Pendidikan) FROM tdata) - (SELECT MAX(Pendidikan) FROM tdata)) ND_Pendidikan
FROM tdata a ;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Wagiyati', 0.33333333, 0.31666667, -0.00000000);
INSERT INTO `users` VALUES (2, 'Lanjar Sutopo', 0.66666667, 0.45833333, 0.66666667);
INSERT INTO `users` VALUES (3, 'Supardi', 0.66666667, 0.56666667, 0.66666667);
INSERT INTO `users` VALUES (4, 'Tukiman Citro', 1.00000000, 1.00000000, 1.00000000);
INSERT INTO `users` VALUES (5, 'Sutanto', 0.33333333, 0.50000000, 0.33333333);
INSERT INTO `users` VALUES (6, 'Joko Susilo', 0.33333333, 0.75000000, 0.33333333);
INSERT INTO `users` VALUES (7, 'Kevin', -0.00000000, -0.00000000, -0.00000000);
INSERT INTO `users` VALUES (8, 'Mulyono', 0.66666667, 0.54166667, 0.66666667);
INSERT INTO `users` VALUES (9, 'Samidi', 1.00000000, 0.75000000, 0.66666667);
INSERT INTO `users` VALUES (10, 'Juri', 0.33333333, 0.37500000, 0.66666667);

SET FOREIGN_KEY_CHECKS = 1;
