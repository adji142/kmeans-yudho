/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100406
 Source Host           : localhost:3306
 Source Schema         : pemetaanfcm

 Target Server Type    : MySQL
 Target Server Version : 100406
 File Encoding         : 65001

 Date: 12/09/2020 09:36:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hasil
-- ----------------------------
DROP TABLE IF EXISTS `hasil`;
CREATE TABLE `hasil`  (
  `Nomor` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `NamaAnggota` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Keanggotaan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Sts` int(255) NOT NULL DEFAULT 1
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hasil
-- ----------------------------
INSERT INTO `hasil` VALUES ('11000001', 'Batubata', 'C2', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Tas Anyaman', 'C2', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Penyalur Gas', 'C3', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Ternak Ayam', 'C2', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Las', 'C2', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Karak', 'C3', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Bengkel Motor', 'C3', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Sembako', 'C3', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Rambak', 'C3', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Batubata', 'C2', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Keripik', 'C3', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Sangkar Burung', 'C2', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Kelontong', 'C2', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Ternak Ayam', 'C2', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Warung Soto', 'C3', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Bengkel', 'C2', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Penjahit', 'C2', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Mebel', 'C3', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Ternak Puyuh', 'C2', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Catering', 'C3', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Counter', 'C3', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Rambak Kulit', 'C1', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Salon & Rias', 'C3', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Foto Copy', 'C2', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Loundry', 'C2', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Es Tebu', 'C2', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Warung Makan', 'C3', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Photo & Shooting', 'C3', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Ayam Bakar', 'C3', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Toko kaca & figura', 'C3', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Potong Rambut', 'C2', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Counter Pulsa', 'C3', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Apotek', 'C3', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Bengkel', 'C2', 1);
INSERT INTO `hasil` VALUES ('11000001', 'Es Cincau', 'C2', 1);

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
INSERT INTO `permission` VALUES (2, 'Daftar UMKM', 'umkm', 'fa-pencil-square-o', '0', b'0', b'0', 2, b'1', NULL, NULL, NULL);
INSERT INTO `permission` VALUES (3, 'Daftar Kriteria', 'kriteria', 'fa-pencil-square-o', '0', b'0', b'0', 3, b'1', NULL, NULL, NULL);
INSERT INTO `permission` VALUES (4, 'Nilai', 'nilai', 'fa-check-square-o', '0', b'0', b'0', 5, b'1', NULL, NULL, NULL);
INSERT INTO `permission` VALUES (5, 'Perhitungan', 'proses', 'fa-spinner', '0', b'0', b'0', 6, b'1', NULL, NULL, NULL);
INSERT INTO `permission` VALUES (6, 'Daftar Jenis Usaha', 'jenisusaha', 'fa-bell-o', '0', b'0', b'0', 1, b'1', NULL, NULL, NULL);

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
-- Table structure for tjenisusaha
-- ----------------------------
DROP TABLE IF EXISTS `tjenisusaha`;
CREATE TABLE `tjenisusaha`  (
  `ID` int(255) NOT NULL AUTO_INCREMENT,
  `JenisUsaha` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 129 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tjenisusaha
-- ----------------------------
INSERT INTO `tjenisusaha` VALUES (1, 'Tas Anyaman');
INSERT INTO `tjenisusaha` VALUES (2, 'Penyalur Gas');
INSERT INTO `tjenisusaha` VALUES (3, 'Las');
INSERT INTO `tjenisusaha` VALUES (4, 'Karak');
INSERT INTO `tjenisusaha` VALUES (5, 'Bengkel Motor');
INSERT INTO `tjenisusaha` VALUES (6, 'Sembako');
INSERT INTO `tjenisusaha` VALUES (7, 'Rambak');
INSERT INTO `tjenisusaha` VALUES (8, 'Batubata');
INSERT INTO `tjenisusaha` VALUES (9, 'Keripik');
INSERT INTO `tjenisusaha` VALUES (10, 'Sangkar Burung');
INSERT INTO `tjenisusaha` VALUES (11, 'Kelontong');
INSERT INTO `tjenisusaha` VALUES (12, 'Ternak Ayam');
INSERT INTO `tjenisusaha` VALUES (13, 'Warung Soto');
INSERT INTO `tjenisusaha` VALUES (14, 'Penjahit');
INSERT INTO `tjenisusaha` VALUES (15, 'Mebel');
INSERT INTO `tjenisusaha` VALUES (16, 'Ternak Puyuh');
INSERT INTO `tjenisusaha` VALUES (17, 'Catering');
INSERT INTO `tjenisusaha` VALUES (18, 'Counter');
INSERT INTO `tjenisusaha` VALUES (19, 'Rambak Kulit');
INSERT INTO `tjenisusaha` VALUES (20, 'Salon & Rias');
INSERT INTO `tjenisusaha` VALUES (21, 'Foto Copy');
INSERT INTO `tjenisusaha` VALUES (22, 'Loundry');
INSERT INTO `tjenisusaha` VALUES (23, 'Es Tebu');
INSERT INTO `tjenisusaha` VALUES (24, 'Warung Makan');
INSERT INTO `tjenisusaha` VALUES (25, 'Photo & Shooting');
INSERT INTO `tjenisusaha` VALUES (26, 'Ayam Bakar');
INSERT INTO `tjenisusaha` VALUES (27, 'Toko kaca & figura');
INSERT INTO `tjenisusaha` VALUES (28, 'Potong Rambut');
INSERT INTO `tjenisusaha` VALUES (29, 'Counter Pulsa');
INSERT INTO `tjenisusaha` VALUES (30, 'Apotek');
INSERT INTO `tjenisusaha` VALUES (31, 'Bengkel');
INSERT INTO `tjenisusaha` VALUES (32, 'Es Cincau');

-- ----------------------------
-- Table structure for tkriteria
-- ----------------------------
DROP TABLE IF EXISTS `tkriteria`;
CREATE TABLE `tkriteria`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NamaKriteria` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tkriteria
-- ----------------------------
INSERT INTO `tkriteria` VALUES (2, 'Asset');
INSERT INTO `tkriteria` VALUES (3, 'Omset per Tahun');
INSERT INTO `tkriteria` VALUES (4, 'Jumlah Tenaga Kerja');

-- ----------------------------
-- Table structure for tnilai
-- ----------------------------
DROP TABLE IF EXISTS `tnilai`;
CREATE TABLE `tnilai`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `KodeUMKM` int(255) NOT NULL,
  `KodeKriteria` int(255) NOT NULL,
  `Nilai` double(22, 2) NOT NULL,
  `Indexs` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tnilai
-- ----------------------------
INSERT INTO `tnilai` VALUES (1, 1, 2, 7000.00, '10000001');
INSERT INTO `tnilai` VALUES (2, 1, 3, 70000.00, '10000001');
INSERT INTO `tnilai` VALUES (3, 1, 4, 3.00, '10000001');
INSERT INTO `tnilai` VALUES (4, 2, 2, 200.00, '10000002');
INSERT INTO `tnilai` VALUES (5, 2, 3, 40000.00, '10000002');
INSERT INTO `tnilai` VALUES (6, 2, 4, 2.00, '10000002');
INSERT INTO `tnilai` VALUES (7, 3, 2, 5000.00, '10000003');
INSERT INTO `tnilai` VALUES (8, 3, 3, 300000.00, '10000003');
INSERT INTO `tnilai` VALUES (9, 3, 4, 1.00, '10000003');
INSERT INTO `tnilai` VALUES (10, 4, 2, 15000.00, '10000004');
INSERT INTO `tnilai` VALUES (11, 4, 3, 100000.00, '10000004');
INSERT INTO `tnilai` VALUES (12, 4, 4, 1.00, '10000004');
INSERT INTO `tnilai` VALUES (13, 5, 2, 10000.00, '10000005');
INSERT INTO `tnilai` VALUES (14, 5, 3, 80000.00, '10000005');
INSERT INTO `tnilai` VALUES (15, 5, 4, 2.00, '10000005');
INSERT INTO `tnilai` VALUES (16, 6, 2, 2000.00, '10000006');
INSERT INTO `tnilai` VALUES (17, 6, 3, 150000.00, '10000006');
INSERT INTO `tnilai` VALUES (18, 6, 4, 2.00, '10000006');
INSERT INTO `tnilai` VALUES (19, 7, 2, 15000.00, '10000007');
INSERT INTO `tnilai` VALUES (20, 7, 3, 200000.00, '10000007');
INSERT INTO `tnilai` VALUES (21, 7, 4, 2.00, '10000007');
INSERT INTO `tnilai` VALUES (22, 8, 2, 5000.00, '10000008');
INSERT INTO `tnilai` VALUES (23, 8, 3, 150000.00, '10000008');
INSERT INTO `tnilai` VALUES (24, 8, 4, 1.00, '10000008');
INSERT INTO `tnilai` VALUES (25, 9, 2, 10000.00, '10000009');
INSERT INTO `tnilai` VALUES (26, 9, 3, 300000.00, '10000009');
INSERT INTO `tnilai` VALUES (27, 9, 4, 4.00, '10000009');
INSERT INTO `tnilai` VALUES (28, 10, 2, 3000.00, '10000010');
INSERT INTO `tnilai` VALUES (29, 10, 3, 36000.00, '10000010');
INSERT INTO `tnilai` VALUES (30, 10, 4, 1.00, '10000010');
INSERT INTO `tnilai` VALUES (31, 11, 2, 1000.00, '10000011');
INSERT INTO `tnilai` VALUES (32, 11, 3, 150000.00, '10000011');
INSERT INTO `tnilai` VALUES (33, 11, 4, 3.00, '10000011');
INSERT INTO `tnilai` VALUES (34, 12, 2, 1000.00, '10000012');
INSERT INTO `tnilai` VALUES (35, 12, 3, 60000.00, '10000012');
INSERT INTO `tnilai` VALUES (36, 12, 4, 2.00, '10000012');
INSERT INTO `tnilai` VALUES (37, 13, 2, 10000.00, '10000013');
INSERT INTO `tnilai` VALUES (38, 13, 3, 120000.00, '10000013');
INSERT INTO `tnilai` VALUES (39, 13, 4, 1.00, '10000013');
INSERT INTO `tnilai` VALUES (40, 14, 2, 15000.00, '10000014');
INSERT INTO `tnilai` VALUES (41, 14, 3, 120000.00, '10000014');
INSERT INTO `tnilai` VALUES (42, 14, 4, 1.00, '10000014');
INSERT INTO `tnilai` VALUES (43, 15, 2, 1000.00, '10000015');
INSERT INTO `tnilai` VALUES (44, 15, 3, 200000.00, '10000015');
INSERT INTO `tnilai` VALUES (45, 15, 4, 2.00, '10000015');
INSERT INTO `tnilai` VALUES (46, 16, 2, 5000.00, '10000016');
INSERT INTO `tnilai` VALUES (47, 16, 3, 120000.00, '10000016');
INSERT INTO `tnilai` VALUES (48, 16, 4, 2.00, '10000016');
INSERT INTO `tnilai` VALUES (49, 17, 2, 5000.00, '10000017');
INSERT INTO `tnilai` VALUES (50, 17, 3, 70000.00, '10000017');
INSERT INTO `tnilai` VALUES (51, 17, 4, 2.00, '10000017');
INSERT INTO `tnilai` VALUES (52, 18, 2, 15000.00, '10000018');
INSERT INTO `tnilai` VALUES (53, 18, 3, 200000.00, '10000018');
INSERT INTO `tnilai` VALUES (54, 18, 4, 2.00, '10000018');
INSERT INTO `tnilai` VALUES (55, 19, 2, 15000.00, '10000019');
INSERT INTO `tnilai` VALUES (56, 19, 3, 70000.00, '10000019');
INSERT INTO `tnilai` VALUES (57, 19, 4, 1.00, '10000019');
INSERT INTO `tnilai` VALUES (58, 20, 2, 10000.00, '10000020');
INSERT INTO `tnilai` VALUES (59, 20, 3, 200000.00, '10000020');
INSERT INTO `tnilai` VALUES (60, 20, 4, 3.00, '10000020');
INSERT INTO `tnilai` VALUES (61, 21, 2, 10000.00, '10000021');
INSERT INTO `tnilai` VALUES (62, 21, 3, 150000.00, '10000021');
INSERT INTO `tnilai` VALUES (63, 21, 4, 1.00, '10000021');
INSERT INTO `tnilai` VALUES (64, 22, 2, 50000.00, '10000022');
INSERT INTO `tnilai` VALUES (65, 22, 3, 600000.00, '10000022');
INSERT INTO `tnilai` VALUES (66, 22, 4, 5.00, '10000022');
INSERT INTO `tnilai` VALUES (67, 23, 2, 15000.00, '10000023');
INSERT INTO `tnilai` VALUES (68, 23, 3, 200000.00, '10000023');
INSERT INTO `tnilai` VALUES (69, 23, 4, 2.00, '10000023');
INSERT INTO `tnilai` VALUES (70, 24, 2, 10000.00, '10000024');
INSERT INTO `tnilai` VALUES (71, 24, 3, 75000.00, '10000024');
INSERT INTO `tnilai` VALUES (72, 24, 4, 1.00, '10000024');
INSERT INTO `tnilai` VALUES (73, 25, 2, 10000.00, '10000025');
INSERT INTO `tnilai` VALUES (74, 25, 3, 100000.00, '10000025');
INSERT INTO `tnilai` VALUES (75, 25, 4, 2.00, '10000025');
INSERT INTO `tnilai` VALUES (76, 26, 2, 6000.00, '10000026');
INSERT INTO `tnilai` VALUES (77, 26, 3, 45000.00, '10000026');
INSERT INTO `tnilai` VALUES (78, 26, 4, 1.00, '10000026');
INSERT INTO `tnilai` VALUES (79, 27, 2, 2000.00, '10000027');
INSERT INTO `tnilai` VALUES (80, 27, 3, 200000.00, '10000027');
INSERT INTO `tnilai` VALUES (81, 27, 4, 2.00, '10000027');
INSERT INTO `tnilai` VALUES (82, 28, 2, 15000.00, '10000028');
INSERT INTO `tnilai` VALUES (83, 28, 3, 200000.00, '10000028');
INSERT INTO `tnilai` VALUES (84, 28, 4, 3.00, '10000028');
INSERT INTO `tnilai` VALUES (85, 29, 2, 1000.00, '10000029');
INSERT INTO `tnilai` VALUES (86, 29, 3, 200000.00, '10000029');
INSERT INTO `tnilai` VALUES (87, 29, 4, 2.00, '10000029');
INSERT INTO `tnilai` VALUES (88, 30, 2, 10000.00, '10000030');
INSERT INTO `tnilai` VALUES (89, 30, 3, 150000.00, '10000030');
INSERT INTO `tnilai` VALUES (90, 30, 4, 1.00, '10000030');
INSERT INTO `tnilai` VALUES (91, 31, 2, 2000.00, '10000031');
INSERT INTO `tnilai` VALUES (92, 31, 3, 40000.00, '10000031');
INSERT INTO `tnilai` VALUES (93, 31, 4, 1.00, '10000031');
INSERT INTO `tnilai` VALUES (94, 32, 2, 10000.00, '10000032');
INSERT INTO `tnilai` VALUES (95, 32, 3, 150000.00, '10000032');
INSERT INTO `tnilai` VALUES (96, 32, 4, 1.00, '10000032');
INSERT INTO `tnilai` VALUES (97, 33, 2, 50000.00, '10000033');
INSERT INTO `tnilai` VALUES (98, 33, 3, 300000.00, '10000033');
INSERT INTO `tnilai` VALUES (99, 33, 4, 2.00, '10000033');
INSERT INTO `tnilai` VALUES (100, 34, 2, 5000.00, '10000034');
INSERT INTO `tnilai` VALUES (101, 34, 3, 90000.00, '10000034');
INSERT INTO `tnilai` VALUES (102, 34, 4, 2.00, '10000034');
INSERT INTO `tnilai` VALUES (103, 35, 2, 2000.00, '10000035');
INSERT INTO `tnilai` VALUES (104, 35, 3, 120000.00, '10000035');
INSERT INTO `tnilai` VALUES (105, 35, 4, 1.00, '10000035');

-- ----------------------------
-- Table structure for tumkm
-- ----------------------------
DROP TABLE IF EXISTS `tumkm`;
CREATE TABLE `tumkm`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NamaPerusahaa` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `NamaPemilik` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `GPS` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `JenisUsaha` int(255) NOT NULL,
  `Pemasaran` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tumkm
-- ----------------------------
INSERT INTO `tumkm` VALUES (1, 'Batubata', 'Suyadi', 'Doplang RT 04/02, Doplang', '-7.583749, 110.656500', 8, 'Lokal');
INSERT INTO `tumkm` VALUES (2, 'Tas Anyaman', 'Pardi', 'Plumutan, Salakan', '-7.556382, 110.675451', 1, 'Lokal');
INSERT INTO `tumkm` VALUES (3, 'Penyalur Gas', 'Mursito', 'Teguhrejo, Mojolegi', '-7.535988, 110.660778', 2, 'Lokal');
INSERT INTO `tumkm` VALUES (4, 'Ternak Ayam', 'Wursini', 'Weden, Mojolegi', '-7.524595, 110.661790', 12, 'Lokal');
INSERT INTO `tumkm` VALUES (5, 'Las', 'Deni', 'Mungup, Kemasan', '-7.573903, 110.680928', 3, 'Lokal');
INSERT INTO `tumkm` VALUES (6, 'Karak', 'Paimin', 'Pomah, Randusari', '-7.538303, 110.639886', 4, 'Lokal');
INSERT INTO `tumkm` VALUES (7, 'Bengkel Motor', 'M. Salim', 'Puluhkadang, Mojolegi', '-7.528141, 110.657848', 5, 'Lokal');
INSERT INTO `tumkm` VALUES (8, 'Sembako', 'Srimulyani', 'Puluhkadang, Mojolegi', '-7.532242, 110.657127', 6, 'Lokal');
INSERT INTO `tumkm` VALUES (9, 'Rambak', 'Yuli', 'Bendosari RT02/01, Doplang', '-7.584558, 110.639711', 7, 'Regional');
INSERT INTO `tumkm` VALUES (10, 'Batubata', 'Triyono', 'Kerten RT 06/02, Doplang', '-7.583738, 110.657540', 8, 'Lokal');
INSERT INTO `tumkm` VALUES (11, 'Keripik', 'Wiji', 'Banaran, Salakan', '-7.551719, 110.665914', 9, 'Lokal');
INSERT INTO `tumkm` VALUES (12, 'Sangkar Burung', 'Teguh', 'Dodogan Gede, Salakan', '-7.561502, 110.653392', 10, 'Lokal');
INSERT INTO `tumkm` VALUES (13, 'Kelontong', 'Tuwarji', 'Klodran, Salakan', '-7.551431, 110.661805', 11, 'Lokal');
INSERT INTO `tumkm` VALUES (14, 'Ternak Ayam', 'Bejo', 'Teguhrejo, Mojolegi', '-7.531118, 110.661935', 12, 'Lokal');
INSERT INTO `tumkm` VALUES (15, 'Warung Soto', 'Sami', 'Mojolegi, Mojolegi', '-7.531676, 110.659912', 13, 'Lokal');
INSERT INTO `tumkm` VALUES (16, 'Bengkel', 'Tasmani', 'Mojolegi, Mojolegi', '-7.535148, 110.664977', 31, 'Lokal');
INSERT INTO `tumkm` VALUES (17, 'Penjahit', 'Sarmin', 'Mojolegi, Mojolegi', '-7.535578, 110.656485', 14, 'Lokal');
INSERT INTO `tumkm` VALUES (18, 'Mebel', 'Untung Santoso', 'Teras, Mojolegi', '-7.535620, 110.661448', 15, 'Lokal');
INSERT INTO `tumkm` VALUES (19, 'Ternak Puyuh', 'Sutardi', 'Teras, Mojolegi', '-7.533997, 110.659380', 16, 'Lokal');
INSERT INTO `tumkm` VALUES (20, 'Catering', 'Sri Hartono', 'Teras, Mojolegi', '-7.531339, 110.660117', 17, 'Lokal');
INSERT INTO `tumkm` VALUES (21, 'Counter', 'Triyono', 'Minten, Mojolegi', '-7.533692, 110.659133', 18, 'Lokal');
INSERT INTO `tumkm` VALUES (22, 'Rambak Kulit', 'Agus Wibowo', 'Taruban, Mojolegi', '-7.532385, 110.659365', 19, 'Lokal');
INSERT INTO `tumkm` VALUES (23, 'Salon & Rias', 'Sutadji', 'Mangun Rejan, Mojolegi', '-7.538075, 110.655045', 20, 'Lokal');
INSERT INTO `tumkm` VALUES (24, 'Foto Copy', 'Sunardi', 'Mangun Rejan, Mojolegi', '-7.535128, 110.655163', 21, 'Lokal');
INSERT INTO `tumkm` VALUES (25, 'Loundry', 'Sunarto', 'Mangun Rejan, Mojolegi', '-7.536034, 110.654801', 22, 'Lokal');
INSERT INTO `tumkm` VALUES (26, 'Es Tebu', 'Yulianto', 'Jambean, Mojolegi', '-7.534955, 110.656815', 23, 'Lokal');
INSERT INTO `tumkm` VALUES (27, 'Warung Makan', 'Kamidi (gawe lego)', 'Mangun Rejan, Mojolegi', '-7.536015, 110.655165', 24, 'Lokal');
INSERT INTO `tumkm` VALUES (28, 'Photo & Shooting', 'Suyadi (Lawu indah)', 'Mangun Rejan, Mojolegi', '-7.536048, 110.655719', 25, 'Lokal');
INSERT INTO `tumkm` VALUES (29, 'Ayam Bakar', 'Ngatemi (RM.sanur)', 'Puluhkadang, Mojolegi', '-7.527487, 110.657748', 26, 'Lokal');
INSERT INTO `tumkm` VALUES (30, 'Toko kaca & figura', 'Wagiyo (toko barokah)', 'Puluhkadang, Mojolegi', '-7.531624, 110.657345', 27, 'Lokal');
INSERT INTO `tumkm` VALUES (31, 'Potong Rambut', 'Slamet Raharjo (Rambut Gaul)', 'Maloan Teras, Mojolegi', '-7.527877, 110.657847', 28, 'Lokal');
INSERT INTO `tumkm` VALUES (32, 'Counter Pulsa', 'Evi (Dica Cell)', 'Sidorejo, Mojolegi', '-7.525353, 110.657422', 29, 'Lokal');
INSERT INTO `tumkm` VALUES (33, 'Apotek', 'Ana (Apotik Pulokadang)', 'Sidorejo, Mojolegi', '-7.528416, 110.657792', 30, 'Lokal');
INSERT INTO `tumkm` VALUES (34, 'Bengkel', 'Kinono', 'Randusari', '-7.536811, 110.647085', 31, 'Lokal');
INSERT INTO `tumkm` VALUES (35, 'Es Cincau', 'Evi (Dica Capucino)', 'Sidorejo, Mojolegi', '-7.527917, 110.657850', 32, 'Lokal');

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

SET FOREIGN_KEY_CHECKS = 1;
