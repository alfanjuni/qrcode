/*
Navicat MySQL Data Transfer

Source Server         : LOKAL
Source Server Version : 100134
Source Host           : localhost:3306
Source Database       : qrvalidasi

Target Server Type    : MYSQL
Target Server Version : 100134
File Encoding         : 65001

Date: 2018-12-09 01:50:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `idadmin` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `namalengkap` varchar(40) NOT NULL,
  PRIMARY KEY (`idadmin`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Dadung Awuk');
INSERT INTO `admin` VALUES ('4', 'basuki', 'b4e364bb5eab14eedd9ae3d54437d52f', 'Basuki Oke');

-- ----------------------------
-- Table structure for mahasiswa
-- ----------------------------
DROP TABLE IF EXISTS `mahasiswa`;
CREATE TABLE `mahasiswa` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `npm` varchar(10) DEFAULT NULL,
  `nama_mhs` varchar(40) DEFAULT NULL,
  `prodi` varchar(40) DEFAULT NULL,
  `tgl_lulus` date DEFAULT NULL,
  `no_ijazah` varchar(40) DEFAULT NULL,
  `ipk` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mahasiswa
-- ----------------------------
INSERT INTO `mahasiswa` VALUES ('1', '10010001', 'Dadung Awuk', 'Teknik Informatika', '2018-12-05', '2018/IJ/LI-COM/XII/090', '3.56');
INSERT INTO `mahasiswa` VALUES ('2', '10010002', 'Angling Dharma', 'Teknik Informatika', '2018-12-14', '2018/IJ/LI-COM/XII/091', '3.45');
INSERT INTO `mahasiswa` VALUES ('3', '10010003', 'Kamandanau', 'Teknik Informatika', '2018-12-11', '2018/IJ/LI-COM/XII/092', '3.00');
INSERT INTO `mahasiswa` VALUES ('4', '10010004', 'Mak Lampir', 'Teknik Informatika', '2018-12-18', '2018/IJ/LI-COM/XII/093', '3.40');
INSERT INTO `mahasiswa` VALUES ('5', '10010005', 'Grandong', 'Teknik Informatika', '2018-12-04', '2018/IJ/LI-COM/XII/094', '3.20');
INSERT INTO `mahasiswa` VALUES ('7', '10010006', 'AGUS SUSANTO', 'Teknik Informatika', '2018-11-22', '2018/IJ/LI-COM/XII/095', '3.53');
INSERT INTO `mahasiswa` VALUES ('8', '1001007', 'Basuki', 'Teknik Informatika', '2018-11-13', '2018/IJ/LI-COM/XII/096', '3.61');
INSERT INTO `mahasiswa` VALUES ('9', '10010007', 'Ronggo Lawe', 'Teknik Informatika', '2018-11-22', '2018/IJ/LI-COM/XII/097', '3.32');
