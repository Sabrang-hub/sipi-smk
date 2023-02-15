/*
 Navicat Premium Data Transfer

 Source Server         : Localhost MySQL
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : sipt7266_db

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 13/02/2023 01:47:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ci_sessions
-- ----------------------------
DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions`  (
  `id` VARCHAR(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ip_address` VARCHAR(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `timestamp` INT UNSIGNED NOT NULL DEFAULT 0,
  `data` BLOB NOT NULL,
  INDEX `ci_sessions_timestamp`(`timestamp`) USING BTREE
) ENGINE = INNODB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ci_sessions
-- ----------------------------

-- ----------------------------
-- Table structure for m_client_setting
-- ----------------------------
DROP TABLE IF EXISTS `m_client_setting`;
CREATE TABLE `m_client_setting`  (
  `id` INT NOT NULL AUTO_INCREMENT,
  `host` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `site_name` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_instansi` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `npsn` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_telp` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `provinsi` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kab_kota` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kecamatan` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kelurahan_desa` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `logo_instansi` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `bg_login` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_by` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UNIQUE`(`host`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of m_client_setting
-- ----------------------------
INSERT INTO `m_client_setting` VALUES (1, 'localhost:8056', 'SIP-PKL', 'SMK Negeri 7 Jeneponto', '40312510', '085395619423', 'Sulawesi Selatan', 'Jeneponto', 'Arungkeke', 'Arungkeke Pallantikang', 'Jl. Pendidikan', 'data/20230108/26a275d2a048835b9d807bcf97b64fd2.jpg', 'data/20230107/3.jpg', '2023-01-08 03:10:59', 'Administrator');

-- ----------------------------
-- Table structure for m_deskripsi
-- ----------------------------
DROP TABLE IF EXISTS `m_deskripsi`;
CREATE TABLE `m_deskripsi`  (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nama` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of m_deskripsi
-- ----------------------------

-- ----------------------------
-- Table structure for m_golongan
-- ----------------------------
DROP TABLE IF EXISTS `m_golongan`;
CREATE TABLE `m_golongan`  (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nama` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pangkat` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idgol`(`id`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 18 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of m_golongan
-- ----------------------------
INSERT INTO `m_golongan` VALUES (1, 'I/a', 'Juru Muda');
INSERT INTO `m_golongan` VALUES (2, 'I/b', 'Juru Muda Tingkat I');
INSERT INTO `m_golongan` VALUES (3, 'I/c', 'Juru');
INSERT INTO `m_golongan` VALUES (4, 'I/d', 'Juru Tingkat I');
INSERT INTO `m_golongan` VALUES (5, 'II/a', 'Pengatur Muda');
INSERT INTO `m_golongan` VALUES (6, 'II/b', 'Pengatur Muda Tingkat I');
INSERT INTO `m_golongan` VALUES (7, 'II/c', 'Pengatur');
INSERT INTO `m_golongan` VALUES (8, 'II/d', 'Pengatur Tingkat I');
INSERT INTO `m_golongan` VALUES (9, 'III/a', 'Penata Muda');
INSERT INTO `m_golongan` VALUES (10, 'III/b', 'Penata Muda Tingkat I');
INSERT INTO `m_golongan` VALUES (11, 'III/c', 'Penata');
INSERT INTO `m_golongan` VALUES (12, 'III/d', 'Penata Tingkat I');
INSERT INTO `m_golongan` VALUES (13, 'IV/a', 'Pembina');
INSERT INTO `m_golongan` VALUES (14, 'IV/b', 'Pembina Tingkat I');
INSERT INTO `m_golongan` VALUES (15, 'IV/c', 'Pembina Utama Muda');
INSERT INTO `m_golongan` VALUES (16, 'IV/d', 'Pembina Utama Madya');
INSERT INTO `m_golongan` VALUES (17, 'IV/e', 'Pembina Utama');

-- ----------------------------
-- Table structure for m_group
-- ----------------------------
DROP TABLE IF EXISTS `m_group`;
CREATE TABLE `m_group`  (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nama` VARCHAR(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of m_group
-- ----------------------------
INSERT INTO `m_group` VALUES (1, 'Admin');
INSERT INTO `m_group` VALUES (2, 'Guru');
INSERT INTO `m_group` VALUES (3, 'Siswa');
INSERT INTO `m_group` VALUES (4, 'Pembimbing Lapangan');

-- ----------------------------
-- Table structure for m_guru
-- ----------------------------
DROP TABLE IF EXISTS `m_guru`;
CREATE TABLE `m_guru`  (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nip` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `golongan_id` INT NOT NULL DEFAULT 0,
  `nama_golongan` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_by` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UNIQ`(`nip`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of m_guru
-- ----------------------------
INSERT INTO `m_guru` VALUES (3, '195801081987032001', 'Dr. Ir. Mustari S. Lamada, M.T.', 1, 'I/a', '2023-01-17 23:24:33', 'Administrator', NULL, '');

-- ----------------------------
-- Table structure for m_hari
-- ----------------------------
DROP TABLE IF EXISTS `m_hari`;
CREATE TABLE `m_hari`  (
  `id` INT NOT NULL,
  `nama` VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = INNODB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of m_hari
-- ----------------------------
INSERT INTO `m_hari` VALUES (1, 'Senin');
INSERT INTO `m_hari` VALUES (2, 'Selasa');
INSERT INTO `m_hari` VALUES (3, 'Rabu');
INSERT INTO `m_hari` VALUES (4, 'Kamis');
INSERT INTO `m_hari` VALUES (5, 'Jumat');
INSERT INTO `m_hari` VALUES (6, 'Sabtu');
INSERT INTO `m_hari` VALUES (7, 'Minggu');

-- ----------------------------
-- Table structure for m_hari_kerja
-- ----------------------------
DROP TABLE IF EXISTS `m_hari_kerja`;
CREATE TABLE `m_hari_kerja`  (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `industri_id` BIGINT NOT NULL DEFAULT 0,
  `nama_industri` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `hari_id` INT NOT NULL DEFAULT 0,
  `nama_hari` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `waktu_masuk` TIME(6) NOT NULL,
  `waktu_pulang` TIME(6) NOT NULL,
  `created_at` TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `created_by` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `updated_at` TIMESTAMP(6) NULL DEFAULT NULL,
  `updated_by` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of m_hari_kerja
-- ----------------------------
INSERT INTO `m_hari_kerja` VALUES (13, 1, 'PT. Murfa Surya Mahardika', 1, 'Senin', '07:00:00.000000', '16:00:00.000000', '2023-02-12 22:40:45.000000', 'Administrator', NULL, '');
INSERT INTO `m_hari_kerja` VALUES (14, 1, 'PT. Murfa Surya Mahardika', 2, 'Selasa', '07:00:00.000000', '16:00:00.000000', '2023-02-12 22:40:45.000000', 'Administrator', NULL, '');
INSERT INTO `m_hari_kerja` VALUES (15, 1, 'PT. Murfa Surya Mahardika', 4, 'Kamis', '00:00:00.000000', '00:00:00.000000', '2023-02-12 22:40:45.000000', 'Administrator', NULL, '');
INSERT INTO `m_hari_kerja` VALUES (16, 1, 'PT. Murfa Surya Mahardika', 6, 'Sabtu', '00:00:00.000000', '00:00:00.000000', '2023-02-12 22:40:45.000000', 'Administrator', NULL, '');
INSERT INTO `m_hari_kerja` VALUES (17, 1, 'PT. Murfa Surya Mahardika', 7, 'Minggu', '07:30:00.000000', '16:00:00.000000', '2023-02-12 22:40:45.000000', 'Administrator', NULL, '');

-- ----------------------------
-- Table structure for m_industri
-- ----------------------------
DROP TABLE IF EXISTS `m_industri`;
CREATE TABLE `m_industri`  (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nama` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_pimpinan` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_telp` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jenis_usaha_id` INT NOT NULL DEFAULT 0,
  `nama_jenis_usaha` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_by` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of m_industri
-- ----------------------------
INSERT INTO `m_industri` VALUES (1, 'PT. Murfa Surya Mahardika', 'Sabrang', 'Jl. BTN Timurama Blok A12/11', 'example@gmail.com', '(0421) 1111 1111', 1, 'Bidang Teknologi, Informasi, dan Komunikasi', '2023-01-08 13:39:06', 'Administrator', '2023-01-08 13:56:31', 'Administrator');

-- ----------------------------
-- Table structure for m_jenis_usaha
-- ----------------------------
DROP TABLE IF EXISTS `m_jenis_usaha`;
CREATE TABLE `m_jenis_usaha`  (
  `id` INT NOT NULL,
  `nama` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = INNODB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of m_jenis_usaha
-- ----------------------------
INSERT INTO `m_jenis_usaha` VALUES (5, 'Bidang Usaha Pertanian');
INSERT INTO `m_jenis_usaha` VALUES (6, 'Bidang Usaha Peternakan');
INSERT INTO `m_jenis_usaha` VALUES (4, 'Bidang Usaha Perikanan');
INSERT INTO `m_jenis_usaha` VALUES (10, 'Usaha Perdagangan');
INSERT INTO `m_jenis_usaha` VALUES (11, 'Usaha Perindustrian');
INSERT INTO `m_jenis_usaha` VALUES (12, 'Usaha Pertambangan');
INSERT INTO `m_jenis_usaha` VALUES (7, 'Bisnis Trasnportasi');
INSERT INTO `m_jenis_usaha` VALUES (9, 'Sektor Pariwisata');
INSERT INTO `m_jenis_usaha` VALUES (1, 'Bidang Teknologi, Informasi, dan Komunikasi');
INSERT INTO `m_jenis_usaha` VALUES (8, 'Sektor Jasa');
INSERT INTO `m_jenis_usaha` VALUES (2, 'Bidang Usaha Formal');
INSERT INTO `m_jenis_usaha` VALUES (3, 'Bidang Usaha Informal');

-- ----------------------------
-- Table structure for m_jurusan
-- ----------------------------
DROP TABLE IF EXISTS `m_jurusan`;
CREATE TABLE `m_jurusan`  (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nama` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_by` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UNIQ`(`nama`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of m_jurusan
-- ----------------------------
INSERT INTO `m_jurusan` VALUES (1, 'Teknik Otomotif', '2023-01-08 00:43:15', 'Administrator', NULL, '');

-- ----------------------------
-- Table structure for m_kelas
-- ----------------------------
DROP TABLE IF EXISTS `m_kelas`;
CREATE TABLE `m_kelas`  (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nama` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_by` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UNIQ`(`nama`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of m_kelas
-- ----------------------------
INSERT INTO `m_kelas` VALUES (1, 'I', '2023-01-08 14:17:24', 'Administrator', NULL, '');
INSERT INTO `m_kelas` VALUES (2, 'II', '2023-01-08 14:17:30', 'Administrator', NULL, '');
INSERT INTO `m_kelas` VALUES (3, 'III', '2023-01-08 14:17:39', 'Administrator', NULL, '');

-- ----------------------------
-- Table structure for m_siswa
-- ----------------------------
DROP TABLE IF EXISTS `m_siswa`;
CREATE TABLE `m_siswa`  (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nis` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `nama` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `jurusan_id` INT NOT NULL DEFAULT 0,
  `nama_jurusan` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `kelas_id` INT NOT NULL DEFAULT 0,
  `nama_kelas` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `tahun_masuk` YEAR NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_by` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UNIQ`(`nis`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of m_siswa
-- ----------------------------
INSERT INTO `m_siswa` VALUES (4, '1429041001', 'Sabrang', 1, 'Teknik Otomotif', 3, 'III', 2011, '2023-01-17 23:17:08', 'Administrator', NULL, '');

-- ----------------------------
-- Table structure for m_status_user
-- ----------------------------
DROP TABLE IF EXISTS `m_status_user`;
CREATE TABLE `m_status_user`  (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nama` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of m_status_user
-- ----------------------------
INSERT INTO `m_status_user` VALUES (0, 'Non Aktif');
INSERT INTO `m_status_user` VALUES (1, 'Aktif');
INSERT INTO `m_status_user` VALUES (2, 'Blokir');

-- ----------------------------
-- Table structure for m_user
-- ----------------------------
DROP TABLE IF EXISTS `m_user`;
CREATE TABLE `m_user`  (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `password` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `group_id` INT NOT NULL DEFAULT 0,
  `kode` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `nama` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `email` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `nama_industri` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `keterangan` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `last_login` TIMESTAMP NULL DEFAULT NULL,
  `last_logout` TIMESTAMP NULL DEFAULT NULL,
  `status_user_id` INT NOT NULL DEFAULT 0,
  `user_id` INT NOT NULL DEFAULT 0,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_by` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UNIQ`(`username`, `group_id`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of m_user
-- ----------------------------
INSERT INTO `m_user` VALUES (1, 'admin', '/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==', 1, '', 'Administrator', 'sabrang@gmail.com', '', 'Administrator', '2023-02-12 22:40:08', '2023-02-12 22:40:51', 1, 0, '2023-01-07 21:34:10', '', '2023-01-08 21:07:36', 'Administrator');
INSERT INTO `m_user` VALUES (7, '1429041001', 'H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==', 3, '1429041001', 'Sabrang', '', '', '', '2023-02-12 22:40:54', '2023-02-12 22:40:05', 1, 1, '2023-01-17 23:17:08', '', '2023-01-28 18:46:32', 'Administrator');
INSERT INTO `m_user` VALUES (8, '195801081987032001', 'VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==', 2, '195801081987032001', 'Dr. Ir. Mustari S. Lamada, M.T.', '', '', '', '2023-02-12 19:19:58', '2023-02-12 19:20:35', 1, 1, '2023-01-17 23:24:33', 'Administrator', NULL, '');
INSERT INTO `m_user` VALUES (9, 'rido', 'k9rzsvs0/VCCQWbpblz9LdotGtSgezscx4aq3KjwDYLdjkpfYMPYhWTOCZdXmSVKzU55n3YDpCgXWRVqAoKDOQ==', 4, '9', 'Rido', 'rido@gmail.com', 'PT. Murfa Surya Mahardika', 'User Industri', '2023-02-12 17:29:53', '2023-02-12 17:31:46', 1, 8, '2023-01-18 00:33:01', 'Dr. Ir. Mustari S. Lamada, M.T.', NULL, '');

-- ----------------------------
-- Table structure for tbl_absen
-- ----------------------------
DROP TABLE IF EXISTS `tbl_absen`;
CREATE TABLE `tbl_absen`  (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `siswa_id` VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `nama_siswa` VARCHAR(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `tanggal` DATE,
  `waktu_masuk` TIME(6) NULL DEFAULT NULL,
  `waktu_pulang` TIME(6) NULL DEFAULT NULL,
  `status` INT NOT NULL COMMENT '0 Tampa Keterangan\r\n1 Hadir\r\n2 Izin\r\n3 Sakit',
  `keterangan_siswa` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `verifikasi_stat` INT NULL DEFAULT NULL,
  `verifikasi_at` TIMESTAMP(6) NULL DEFAULT NULL,
  `verifikasi_by` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `verifikasi_ket` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` TIMESTAMP(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  `created_by` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_by` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_absen
-- ----------------------------
INSERT INTO `tbl_absen` VALUES (8, '1429041001', 'Sabrang', '2023-02-13', '01:05:05.000000', '01:05:05.000000', 3, '', NULL, NULL, '', NULL, '2023-02-13 01:05:13.000000', 'Sabrang', NULL, '');

-- ----------------------------
-- Table structure for tbl_kelompok
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kelompok`;
CREATE TABLE `tbl_kelompok`  (
  `id` INT NOT NULL AUTO_INCREMENT,
  `industri_id` INT NOT NULL DEFAULT 0,
  `nama_industri` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `guru_id` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `nama_guru` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `siswa_id` VARCHAR(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `nama_siswa` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `tanggal_awal` DATE NULL DEFAULT NULL,
  `tanggal_akhir` DATE NULL DEFAULT NULL,
  `pembimbing_id` INT NOT NULL DEFAULT 0,
  `nama_pembimbing` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  `updated_by` VARCHAR(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_kelompok
-- ----------------------------
INSERT INTO `tbl_kelompok` VALUES (4, 1, 'PT. Murfa Surya Mahardika', '195801081987032001', 'Dr. Ir. Mustari S. Lamada, M.T.', '1429041001', 'Sabrang', '2023-02-01', '2023-02-28', 9, 'Rido', '2023-01-17 22:49:17', 'Administrator', '2023-02-12 19:20:12', 'Dr. Ir. Mustari S. Lamada, M.T.');

-- ----------------------------
-- Table structure for tbl_keterangan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_keterangan`;
CREATE TABLE `tbl_keterangan`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `logbook_id` bigint NOT NULL DEFAULT 0,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jenis` int NOT NULL DEFAULT 0 COMMENT '1:Guru 2:Pembimbing',
  `status` int NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp,
  `created_by` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_keterangan
-- ----------------------------
INSERT INTO `tbl_keterangan` VALUES (1, 3, 'tes keterangan siswa', 1, 0, '2023-01-29 00:40:29', 'Dr. Ir. Mustari S. Lamada, M.T.', NULL, '');

-- ----------------------------
-- Table structure for tbl_logbook
-- ----------------------------
DROP TABLE IF EXISTS `tbl_logbook`;
CREATE TABLE `tbl_logbook`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `siswa_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `nama_siswa` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `tanggal` date NULL DEFAULT NULL,
  `uraian` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `file_foto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `verifikasi_stat` enum('0','1','2','3','4') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0' COMMENT '0:idle; 1:verified; 2:perlu perbaikan; 3:sudah di perbaiki; 4:tolak;',
  `verifikasi_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `verifikasi_by` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp,
  `created_by` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_logbook
-- ----------------------------
INSERT INTO `tbl_logbook` VALUES (3, '1429041001', 'Sabrang', '2023-01-28', 'Anda bisa memberikan alasan tersebut kepada teman yang ingin utang kepadamu. Cukup berkata, &quot;Maaf, belum bisa. Soalnya duit saya lagi dipinjam orang, sampai sekarang belum dikatakan.&quot;', 'data/20230128/1c904f006a927406902baf7e1fd10ecb.JPG', '0', '2023-02-12 17:32:12', 'Administrator', '2023-01-28 20:50:28', 'Sabrang', '2023-01-29 20:15:29', 'Sabrang');

SET FOREIGN_KEY_CHECKS = 1;
