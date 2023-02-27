/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 5.7.39-log : Database - sipt7266_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `ci_sessions` */

DROP TABLE IF EXISTS `ci_sessions`;

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `ci_sessions` */

insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values 
('h8uatdejurmqqj7r77clko3ghhtokf2o','127.0.0.1',1677507318,'__ci_last_regenerate|i:1677507097;id|s:2:\"17\";username|s:10:\"0088977654\";password|s:88:\"k/h9ZVvl6xw9/x7ARw8kcRUdQVoFL9wSE1AZNiArRRJvrgKLNe1SBABJuPiZs5/pBl5npR/fZVPSsSygWoJtEQ==\";group_id|s:1:\"3\";kode|s:10:\"0088977654\";nama|s:6:\"Hairul\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-27 21:16:29\";last_logout|s:19:\"2023-02-27 21:39:03\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-02-27 11:10:43\";created_by|s:13:\"Administrator\";updated_at|s:19:\"2023-02-27 11:32:56\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('gutb8fnlbdjpqtlukl813jis43mjt3mo','127.0.0.1',1677509100,'__ci_last_regenerate|i:1677507493;id|s:2:\"17\";username|s:10:\"0088977654\";password|s:88:\"k/h9ZVvl6xw9/x7ARw8kcRUdQVoFL9wSE1AZNiArRRJvrgKLNe1SBABJuPiZs5/pBl5npR/fZVPSsSygWoJtEQ==\";group_id|s:1:\"3\";kode|s:10:\"0088977654\";nama|s:6:\"Hairul\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-27 21:16:29\";last_logout|s:19:\"2023-02-27 21:39:03\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-02-27 11:10:43\";created_by|s:13:\"Administrator\";updated_at|s:19:\"2023-02-27 11:32:56\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('68500pv67bp6k058t2t9qbtrdjl3th3u','127.0.0.1',1677509312,'__ci_last_regenerate|i:1677509118;id|s:2:\"17\";username|s:10:\"0088977654\";password|s:88:\"k/h9ZVvl6xw9/x7ARw8kcRUdQVoFL9wSE1AZNiArRRJvrgKLNe1SBABJuPiZs5/pBl5npR/fZVPSsSygWoJtEQ==\";group_id|s:1:\"3\";kode|s:10:\"0088977654\";nama|s:6:\"Hairul\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-27 21:16:29\";last_logout|s:19:\"2023-02-27 21:39:03\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-02-27 11:10:43\";created_by|s:13:\"Administrator\";updated_at|s:19:\"2023-02-27 11:32:56\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('3mfefjroujar8midegad2verl3ud27ss','127.0.0.1',1677509682,'__ci_last_regenerate|i:1677509445;id|s:2:\"17\";username|s:10:\"0088977654\";password|s:88:\"k/h9ZVvl6xw9/x7ARw8kcRUdQVoFL9wSE1AZNiArRRJvrgKLNe1SBABJuPiZs5/pBl5npR/fZVPSsSygWoJtEQ==\";group_id|s:1:\"3\";kode|s:10:\"0088977654\";nama|s:6:\"Hairul\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-27 21:16:29\";last_logout|s:19:\"2023-02-27 21:39:03\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-02-27 11:10:43\";created_by|s:13:\"Administrator\";updated_at|s:19:\"2023-02-27 11:32:56\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('hpgd89i3cb5ihig9fu7djluqa51bbihb','127.0.0.1',1677510128,'__ci_last_regenerate|i:1677509844;id|s:2:\"17\";username|s:10:\"0088977654\";password|s:88:\"k/h9ZVvl6xw9/x7ARw8kcRUdQVoFL9wSE1AZNiArRRJvrgKLNe1SBABJuPiZs5/pBl5npR/fZVPSsSygWoJtEQ==\";group_id|s:1:\"3\";kode|s:10:\"0088977654\";nama|s:6:\"Hairul\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-27 21:16:29\";last_logout|s:19:\"2023-02-27 21:39:03\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-02-27 11:10:43\";created_by|s:13:\"Administrator\";updated_at|s:19:\"2023-02-27 11:32:56\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('rncpt4au8ahgthqfplr6fggv3i4nelc8','127.0.0.1',1677510251,'__ci_last_regenerate|i:1677510178;id|s:2:\"17\";username|s:10:\"0088977654\";password|s:88:\"k/h9ZVvl6xw9/x7ARw8kcRUdQVoFL9wSE1AZNiArRRJvrgKLNe1SBABJuPiZs5/pBl5npR/fZVPSsSygWoJtEQ==\";group_id|s:1:\"3\";kode|s:10:\"0088977654\";nama|s:6:\"Hairul\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-27 21:16:29\";last_logout|s:19:\"2023-02-27 21:39:03\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-02-27 11:10:43\";created_by|s:13:\"Administrator\";updated_at|s:19:\"2023-02-27 11:32:56\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('e3nmbfqlnr2spgduuae1hc04mbpnr7ps','127.0.0.1',1677510881,'__ci_last_regenerate|i:1677510726;id|s:2:\"17\";username|s:10:\"0088977654\";password|s:88:\"k/h9ZVvl6xw9/x7ARw8kcRUdQVoFL9wSE1AZNiArRRJvrgKLNe1SBABJuPiZs5/pBl5npR/fZVPSsSygWoJtEQ==\";group_id|s:1:\"3\";kode|s:10:\"0088977654\";nama|s:6:\"Hairul\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-27 21:16:29\";last_logout|s:19:\"2023-02-27 21:39:03\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-02-27 11:10:43\";created_by|s:13:\"Administrator\";updated_at|s:19:\"2023-02-27 11:32:56\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('1j7vgve6ue3rgp5qvceiiavhipncie9t','127.0.0.1',1677511522,'__ci_last_regenerate|i:1677511522;'),
('dh6dp1j3mjaki2oka1g750bbmq14f0gn','::1',1677513430,'__ci_last_regenerate|i:1677511593;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"T5qYNDjSVXkXvvSAE61sjmXAdbwUbn6RRbeKobM83dBqL4uQYYvjdODh4cg4DXwF4+R5btnbW7c0lDCvj6esKg==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-02-27 23:22:18\";last_logout|s:19:\"2023-02-27 23:22:41\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:50:\"data/20230227/84cefca17e7418a52dda5988fdc7e85f.png\";created_at|s:19:\"2023-01-07 22:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-27 20:47:47\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('8nraingvta3nc5cda77g6ok0i904e9jl','127.0.0.1',1677512202,'__ci_last_regenerate|i:1677511934;id|s:2:\"16\";username|s:18:\"199610212019031002\";password|s:88:\"jkQpWK1VwWfpyHj8iT8Te7ceiNsEitngJ15EFSyBTrhxkB7dokI2lsctNs+xFH2Mt8ixsC9hfMhmdJclTGZPMw==\";group_id|s:1:\"2\";kode|s:18:\"199610212019031002\";nama|s:26:\"Miftahur Risky Jufri, S.Pd\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-27 23:27:51\";last_logout|s:19:\"2023-02-27 23:31:37\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-02-27 11:06:45\";created_by|s:13:\"Administrator\";updated_at|s:19:\"2023-02-27 11:13:26\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('3bs1tpfgs6qq50u2oulmj2mms7lnd2bu','127.0.0.1',1677512918,'__ci_last_regenerate|i:1677512383;id|s:2:\"16\";username|s:18:\"199610212019031002\";password|s:88:\"jkQpWK1VwWfpyHj8iT8Te7ceiNsEitngJ15EFSyBTrhxkB7dokI2lsctNs+xFH2Mt8ixsC9hfMhmdJclTGZPMw==\";group_id|s:1:\"2\";kode|s:18:\"199610212019031002\";nama|s:26:\"Miftahur Risky Jufri, S.Pd\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-27 23:32:24\";last_logout|s:19:\"2023-02-27 23:39:19\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-02-27 11:06:45\";created_by|s:13:\"Administrator\";updated_at|s:19:\"2023-02-27 11:13:26\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('f82cs3gsjvqfldit292uctn2g1bo7vmc','127.0.0.1',1677513192,'__ci_last_regenerate|i:1677513192;'),
('sqcsm1mvq9trdc8a0gfs76tlqijadubh','127.0.0.1',1677513465,'__ci_last_regenerate|i:1677513436;id|s:2:\"16\";username|s:18:\"199610212019031002\";password|s:88:\"jkQpWK1VwWfpyHj8iT8Te7ceiNsEitngJ15EFSyBTrhxkB7dokI2lsctNs+xFH2Mt8ixsC9hfMhmdJclTGZPMw==\";group_id|s:1:\"2\";kode|s:18:\"199610212019031002\";nama|s:26:\"Miftahur Risky Jufri, S.Pd\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-27 23:39:51\";last_logout|s:19:\"2023-02-27 23:52:32\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-02-27 11:06:45\";created_by|s:13:\"Administrator\";updated_at|s:19:\"2023-02-27 11:13:26\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('idhs4jo949fp6n6ntl12mek01s9sq95t','::1',1677513491,'__ci_last_regenerate|i:1677513484;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"T5qYNDjSVXkXvvSAE61sjmXAdbwUbn6RRbeKobM83dBqL4uQYYvjdODh4cg4DXwF4+R5btnbW7c0lDCvj6esKg==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-02-27 23:22:18\";last_logout|s:19:\"2023-02-27 23:22:41\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:50:\"data/20230227/84cefca17e7418a52dda5988fdc7e85f.png\";created_at|s:19:\"2023-01-07 22:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-27 20:47:47\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";');

/*Table structure for table `m_client_setting` */

DROP TABLE IF EXISTS `m_client_setting`;

CREATE TABLE `m_client_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `host` varchar(255) NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `nama_instansi` varchar(100) NOT NULL,
  `npsn` varchar(50) NOT NULL,
  `no_telp` varchar(30) NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `kab_kota` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kelurahan_desa` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `logo_instansi` varchar(255) NOT NULL,
  `bg_login` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(100) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UNIQUE` (`host`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `m_client_setting` */

insert  into `m_client_setting`(`id`,`host`,`site_name`,`nama_instansi`,`npsn`,`no_telp`,`provinsi`,`kab_kota`,`kecamatan`,`kelurahan_desa`,`alamat`,`logo_instansi`,`bg_login`,`updated_at`,`updated_by`) values 
(1,'localhost:8056','SIP-PKL','SMK Negeri 7 Jeneponto','40312510','085395619423','Sulawesi Selatan','Jeneponto','Arungkeke','Arungkeke Pallantikang','Jl. Pendidikan','data/20230108/26a275d2a048835b9d807bcf97b64fd2.jpg','data/20230107/3.jpg','2023-01-08 04:10:59','Administrator');

/*Table structure for table `m_deskripsi` */

DROP TABLE IF EXISTS `m_deskripsi`;

CREATE TABLE `m_deskripsi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `m_deskripsi` */

/*Table structure for table `m_golongan` */

DROP TABLE IF EXISTS `m_golongan`;

CREATE TABLE `m_golongan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `pangkat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idgol` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `m_golongan` */

insert  into `m_golongan`(`id`,`nama`,`pangkat`) values 
(1,'I/a','Juru Muda'),
(2,'I/b','Juru Muda Tingkat I'),
(3,'I/c','Juru'),
(4,'I/d','Juru Tingkat I'),
(5,'II/a','Pengatur Muda'),
(6,'II/b','Pengatur Muda Tingkat I'),
(7,'II/c','Pengatur'),
(8,'II/d','Pengatur Tingkat I'),
(9,'III/a','Penata Muda'),
(10,'III/b','Penata Muda Tingkat I'),
(11,'III/c','Penata'),
(12,'III/d','Penata Tingkat I'),
(13,'IV/a','Pembina'),
(14,'IV/b','Pembina Tingkat I'),
(15,'IV/c','Pembina Utama Muda'),
(16,'IV/d','Pembina Utama Madya'),
(17,'IV/e','Pembina Utama');

/*Table structure for table `m_group` */

DROP TABLE IF EXISTS `m_group`;

CREATE TABLE `m_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `m_group` */

insert  into `m_group`(`id`,`nama`) values 
(1,'Admin'),
(2,'Guru'),
(3,'Siswa'),
(4,'Pembimbing Lapangan');

/*Table structure for table `m_guru` */

DROP TABLE IF EXISTS `m_guru`;

CREATE TABLE `m_guru` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `golongan_id` int(11) NOT NULL DEFAULT '0',
  `nama_golongan` varchar(50) NOT NULL,
  `file_foto` varchar(255) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(100) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UNIQ` (`nip`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `m_guru` */

insert  into `m_guru`(`id`,`nip`,`nama`,`golongan_id`,`nama_golongan`,`file_foto`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(1,'199610212019031002','Miftahur Risky Jufri, S.Pd',10,'III/b','','2023-02-27 11:06:45','Administrator',NULL,''),
(2,'198005192010012027','Rahmawati, S.Pd., M.Pd',11,'III/c','','2023-02-27 20:32:35','Administrator',NULL,''),
(3,'197710252014122001','Ihsan Naskah, S.Kom., M.T',13,'IV/a','','2023-02-27 20:33:08','Administrator','2023-02-27 20:33:14','Administrator');

/*Table structure for table `m_hari` */

DROP TABLE IF EXISTS `m_hari`;

CREATE TABLE `m_hari` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `m_hari` */

insert  into `m_hari`(`id`,`nama`) values 
(1,'Senin'),
(2,'Selasa'),
(3,'Rabu'),
(4,'Kamis'),
(5,'Jumat'),
(6,'Sabtu'),
(7,'Minggu');

/*Table structure for table `m_hari_kerja` */

DROP TABLE IF EXISTS `m_hari_kerja`;

CREATE TABLE `m_hari_kerja` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `industri_id` bigint(20) NOT NULL DEFAULT '0',
  `nama_industri` varchar(255) NOT NULL DEFAULT '',
  `hari_id` int(11) NOT NULL DEFAULT '0',
  `nama_hari` varchar(30) NOT NULL DEFAULT '',
  `waktu_masuk` time(6) NOT NULL,
  `waktu_pulang` time(6) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `created_by` varchar(100) NOT NULL DEFAULT '',
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `updated_by` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `m_hari_kerja` */

insert  into `m_hari_kerja`(`id`,`industri_id`,`nama_industri`,`hari_id`,`nama_hari`,`waktu_masuk`,`waktu_pulang`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(6,2,'Kominfo',1,'Senin','07:30:00.000000','16:00:00.000000','2023-02-27 20:58:05.000000','Administrator',NULL,''),
(7,2,'Kominfo',2,'Selasa','07:30:00.000000','16:00:00.000000','2023-02-27 20:58:05.000000','Administrator',NULL,''),
(8,2,'Kominfo',3,'Rabu','07:30:00.000000','16:00:00.000000','2023-02-27 20:58:05.000000','Administrator',NULL,''),
(9,2,'Kominfo',4,'Kamis','07:30:00.000000','16:00:00.000000','2023-02-27 20:58:05.000000','Administrator',NULL,''),
(10,2,'Kominfo',5,'Jumat','07:30:00.000000','15:30:00.000000','2023-02-27 20:58:05.000000','Administrator',NULL,''),
(11,3,'Pengadilan Agama',1,'Senin','07:30:00.000000','16:00:00.000000','2023-02-27 20:58:52.000000','Administrator',NULL,''),
(12,3,'Pengadilan Agama',2,'Selasa','07:30:00.000000','16:00:00.000000','2023-02-27 20:58:52.000000','Administrator',NULL,''),
(13,3,'Pengadilan Agama',3,'Rabu','07:30:00.000000','16:00:00.000000','2023-02-27 20:58:52.000000','Administrator',NULL,''),
(14,3,'Pengadilan Agama',4,'Kamis','07:30:00.000000','16:00:00.000000','2023-02-27 20:58:52.000000','Administrator',NULL,''),
(15,3,'Pengadilan Agama',5,'Jumat','07:30:00.000000','16:00:00.000000','2023-02-27 20:58:52.000000','Administrator',NULL,''),
(23,1,'Pegadaian',1,'Senin','07:30:00.000000','16:00:00.000000','2023-02-27 21:39:33.000000','Administrator',NULL,''),
(24,1,'Pegadaian',2,'Selasa','07:30:00.000000','16:00:00.000000','2023-02-27 21:39:33.000000','Administrator',NULL,''),
(25,1,'Pegadaian',3,'Rabu','07:30:00.000000','16:00:00.000000','2023-02-27 21:39:33.000000','Administrator',NULL,''),
(26,1,'Pegadaian',4,'Kamis','07:30:00.000000','16:00:00.000000','2023-02-27 21:39:33.000000','Administrator',NULL,''),
(27,1,'Pegadaian',5,'Jumat','07:03:00.000000','15:30:00.000000','2023-02-27 21:39:33.000000','Administrator',NULL,'');

/*Table structure for table `m_industri` */

DROP TABLE IF EXISTS `m_industri`;

CREATE TABLE `m_industri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `nama_pimpinan` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_telp` varchar(30) NOT NULL,
  `jenis_usaha_id` int(11) NOT NULL DEFAULT '0',
  `nama_jenis_usaha` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(100) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `m_industri` */

insert  into `m_industri`(`id`,`nama`,`nama_pimpinan`,`alamat`,`email`,`no_telp`,`jenis_usaha_id`,`nama_jenis_usaha`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(1,'Pegadaian','Muh Alwi Hamka, SE','Bontosunggu','alwihamka@gmail.com','08233876877',10,'Usaha Perdagangan','2023-02-27 11:08:47','Administrator','2023-02-27 20:31:41','Administrator'),
(2,'Kominfo','Mirzah Pujawati, ST','Bontosunggu','mirzahpuajawati@gmail.com','',1,'Bidang Teknologi, Informasi, dan Komunikasi','2023-02-27 11:19:00','Administrator','2023-02-27 20:31:31','Administrator'),
(3,'Pengadilan Agama','Muhammad Salehuddin, SE., M.Si','Pakkaterang','saleh77@gmail.com','',2,'Bidang Usaha Formal','2023-02-27 20:31:03','Administrator',NULL,'');

/*Table structure for table `m_jenis_usaha` */

DROP TABLE IF EXISTS `m_jenis_usaha`;

CREATE TABLE `m_jenis_usaha` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `m_jenis_usaha` */

insert  into `m_jenis_usaha`(`id`,`nama`) values 
(5,'Bidang Usaha Pertanian'),
(6,'Bidang Usaha Peternakan'),
(4,'Bidang Usaha Perikanan'),
(10,'Usaha Perdagangan'),
(11,'Usaha Perindustrian'),
(12,'Usaha Pertambangan'),
(7,'Bisnis Trasnportasi'),
(9,'Sektor Pariwisata'),
(1,'Bidang Teknologi, Informasi, dan Komunikasi'),
(8,'Sektor Jasa'),
(2,'Bidang Usaha Formal'),
(3,'Bidang Usaha Informal');

/*Table structure for table `m_jurusan` */

DROP TABLE IF EXISTS `m_jurusan`;

CREATE TABLE `m_jurusan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) NOT NULL DEFAULT '',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UNIQ` (`nama`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `m_jurusan` */

insert  into `m_jurusan`(`id`,`nama`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(1,'Teknik Komputer dan Jaringan','2023-02-27 11:04:31','Administrator',NULL,''),
(2,'Multimedia','2023-02-27 11:04:37','Administrator',NULL,''),
(3,'Teknik dan Bisnis Sepeda Motor','2023-02-27 11:04:45','Administrator',NULL,'');

/*Table structure for table `m_kelas` */

DROP TABLE IF EXISTS `m_kelas`;

CREATE TABLE `m_kelas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) NOT NULL DEFAULT '',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UNIQ` (`nama`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `m_kelas` */

insert  into `m_kelas`(`id`,`nama`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(2,'11','2023-02-27 11:05:22','Administrator',NULL,''),
(3,'10','2023-02-27 11:05:28','Administrator','2023-02-27 11:06:09','Administrator'),
(4,'12','2023-02-27 11:05:35','Administrator',NULL,'');

/*Table structure for table `m_siswa` */

DROP TABLE IF EXISTS `m_siswa`;

CREATE TABLE `m_siswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nis` varchar(50) NOT NULL DEFAULT '',
  `nama` varchar(100) NOT NULL DEFAULT '',
  `jurusan_id` int(11) NOT NULL DEFAULT '0',
  `nama_jurusan` varchar(100) NOT NULL DEFAULT '',
  `kelas_id` int(11) NOT NULL DEFAULT '0',
  `nama_kelas` varchar(100) NOT NULL DEFAULT '',
  `tahun_masuk` year(4) NOT NULL,
  `file_foto` varchar(200) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(100) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UNIQ` (`nis`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `m_siswa` */

insert  into `m_siswa`(`id`,`nis`,`nama`,`jurusan_id`,`nama_jurusan`,`kelas_id`,`nama_kelas`,`tahun_masuk`,`file_foto`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(1,'0088977654','Hairul',1,'Teknik Komputer dan Jaringan',3,'10',2020,'','2023-02-27 11:10:43','Administrator',NULL,''),
(2,'0099838887','Hamsah',2,'Multimedia',4,'12',2020,'','2023-02-27 11:21:51','Administrator',NULL,''),
(3,'0088977655','Nurpadillah',2,'Multimedia',4,'12',2020,'','2023-02-27 20:39:56','Administrator',NULL,''),
(4,'0088977657','Nur Awal',3,'Teknik dan Bisnis Sepeda Motor',4,'12',2020,'','2023-02-27 20:40:27','Administrator',NULL,'');

/*Table structure for table `m_status_user` */

DROP TABLE IF EXISTS `m_status_user`;

CREATE TABLE `m_status_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `m_status_user` */

insert  into `m_status_user`(`id`,`nama`) values 
(1,'Aktif'),
(2,'Blokir'),
(3,'Non Aktif');

/*Table structure for table `m_user` */

DROP TABLE IF EXISTS `m_user`;

CREATE TABLE `m_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `kode` varchar(50) NOT NULL DEFAULT '',
  `nama` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `nama_industri` varchar(100) NOT NULL DEFAULT '',
  `keterangan` varchar(255) NOT NULL DEFAULT '',
  `last_login` timestamp NULL DEFAULT NULL,
  `last_logout` timestamp NULL DEFAULT NULL,
  `status_user_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `file_foto` varchar(255) NOT NULL DEFAULT 'assets/images/users/avatar-11.png',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) NOT NULL DEFAULT '',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `m_user` */

insert  into `m_user`(`id`,`username`,`password`,`group_id`,`kode`,`nama`,`email`,`nama_industri`,`keterangan`,`last_login`,`last_logout`,`status_user_id`,`user_id`,`file_foto`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(1,'admin','T5qYNDjSVXkXvvSAE61sjmXAdbwUbn6RRbeKobM83dBqL4uQYYvjdODh4cg4DXwF4+R5btnbW7c0lDCvj6esKg==',1,'','Administrator','','','Administrator','2023-02-27 23:26:42','2023-02-27 23:22:41',1,1,'data/20230227/84cefca17e7418a52dda5988fdc7e85f.png','2023-01-07 22:34:10','','2023-02-27 20:47:47','Administrator'),
(16,'199610212019031002','jkQpWK1VwWfpyHj8iT8Te7ceiNsEitngJ15EFSyBTrhxkB7dokI2lsctNs+xFH2Mt8ixsC9hfMhmdJclTGZPMw==',2,'199610212019031002','Miftahur Risky Jufri, S.Pd','','','','2023-02-27 23:57:22','2023-02-27 23:52:32',1,1,'assets/images/users/avatar-11.png','2023-02-27 11:06:45','Administrator','2023-02-27 11:13:26','Administrator'),
(17,'0088977654','D2gzupl9yYOgRvY/J+0Dw5G4hs88WO5fgfcrFzbu+Q13m49bXebCGeA2bH/KZRzEj7XId3bcEwuebU7psOB3kQ==',3,'0088977654','Hairul','','','','2023-02-27 23:39:25','2023-02-27 23:39:42',1,1,'assets/images/users/avatar-11.png','2023-02-27 11:10:43','Administrator','2023-02-27 23:31:49','Administrator'),
(18,'april','NBDW1dUo6ziX5YAx/THodoNL6iL5s97XZHb+xq7arpsq6lSK9QroP9vlb058JkwdUMVwah8C2TAkEbCRHwquwQ==',4,'1','Apriliana','','Pegadaian','','2023-02-27 23:52:39','2023-02-27 23:57:16',1,1,'assets/images/users/avatar-11.png','2023-02-27 11:11:46','Administrator',NULL,''),
(19,'reski','yql2P0STRonfWnu8jWDEH3IvkOm+XLT6T2FRGiWJMzmnleIJPoHMm2pNdzhyekxq41eK8NYMU3T7meYhgAnNtg==',4,'1','Reski','','Pegadaian','','2023-02-27 11:16:55','2023-02-27 11:17:20',1,1,'assets/images/users/avatar-11.png','2023-02-27 11:16:10','Miftahur Risky Jufri, S.Pd','2023-02-27 11:30:42','Administrator'),
(20,'0099838887','8rLS4ZT3NyhycoLsqZsenadw+blrUlnsUpqJB/QJE2hxMOPxA2PSqsmV+ccTTf5xXEtZnVmNmEXkEIPvXirlrg==',3,'0099838887','Hamsah','','','',NULL,NULL,1,1,'assets/images/users/avatar-11.png','2023-02-27 11:21:51','Administrator',NULL,''),
(21,'murni','xxqJ9Qp5fQLiELRz1m7lnTPbZwF52wqWqoiqjQXxfcjo4EZplWllpi7XBjFRiabFOmzgDTdQHo8OvE2bupCJYA==',4,'2','Murniati','','KOMINFO KAB. JENEPONTO','','2023-02-27 11:25:42','2023-02-27 11:26:23',1,1,'assets/images/users/avatar-11.png','2023-02-27 11:23:17','Administrator',NULL,''),
(22,'198005192010012027','I6FypI+pXAB8/JELt2m8VpHUz5skZPD67qnQLRIflk5/5DrM3CAHIM/YcE3ObEmesDqfwZ6D0H2rl4LAPRToVQ==',2,'198005192010012027','Rahmawati, S.Pd., M.Pd','','','',NULL,NULL,1,1,'assets/images/users/avatar-11.png','2023-02-27 20:32:35','Administrator',NULL,''),
(23,'197710252014122001','LAXITCBbgI6gW8iawHCwwEzn4GyfZ/0B7A56qN+JUVOuo2C44OtKeEqSG16dEUSEJOdYByrSVLlJ/S86GjK0oQ==',2,'197710252014122001','Ihsan Naskah, S.Kom., M.T','','','','2023-02-27 20:49:59','2023-02-27 20:53:12',1,1,'assets/images/users/avatar-11.png','2023-02-27 20:33:08','Administrator',NULL,''),
(24,'susanto','FzXKJrLM8xyW90Hpi/6XxWXBI7Ph/vNx2aCxihm0+uZLmzYqb0szTuvvGbYXHSatTJNPN4OR9CzmTgm3mKoqmQ==',4,'3','Susanto Widoyo, SH','','Pengadilan Agama','','2023-02-27 21:04:39','2023-02-27 21:03:17',1,1,'assets/images/users/avatar-11.png','2023-02-27 20:37:27','Administrator',NULL,''),
(25,'0088977655','BtvCZGySp5IuxfKQ9q2sS7arl1aB98/8fZy621FQxe29lyrLexpAWN3etStuGPGXQgYKhanB4SY4yNcApJbtMw==',3,'0088977655','Nurpadillah','','','','2023-02-27 20:59:48','2023-02-27 20:55:23',1,1,'assets/images/users/avatar-11.png','2023-02-27 20:39:56','Administrator',NULL,''),
(26,'0088977657','ZN5I6hHBJOoK5AEbkt+QjIlB5H3RLx5jJO8Mj3pqimyDmTh58rCxkgHv95fq+RKf3kn0vU7syhXh2L0qLglwWA==',3,'0088977657','Nur Awal','','','',NULL,NULL,1,1,'assets/images/users/avatar-11.png','2023-02-27 20:40:27','Administrator',NULL,'');

/*Table structure for table `tbl_absen` */

DROP TABLE IF EXISTS `tbl_absen`;

CREATE TABLE `tbl_absen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `siswa_id` varchar(30) NOT NULL DEFAULT '',
  `nama_siswa` varchar(200) NOT NULL DEFAULT '',
  `tanggal` date DEFAULT NULL,
  `waktu_masuk` time(6) DEFAULT NULL,
  `waktu_pulang` time(6) DEFAULT NULL,
  `absen_masuk` time(6) DEFAULT NULL,
  `absen_pulang` time(6) DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT '0 Belum Absen \r\n1 Hadir \r\n2 Izin\r\n 3 Sakit 4 Alpa 5 Terlambat',
  `keterangan_siswa` text NOT NULL,
  `verifikasi_stat` int(11) NOT NULL DEFAULT '0',
  `verifikasi_at` timestamp(6) NULL DEFAULT NULL,
  `verifikasi_by` varchar(100) NOT NULL DEFAULT '',
  `verifikasi_ket` text,
  `created_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  `created_by` varchar(100) NOT NULL DEFAULT '',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_absen` */

insert  into `tbl_absen`(`id`,`siswa_id`,`nama_siswa`,`tanggal`,`waktu_masuk`,`waktu_pulang`,`absen_masuk`,`absen_pulang`,`status`,`keterangan_siswa`,`verifikasi_stat`,`verifikasi_at`,`verifikasi_by`,`verifikasi_ket`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(81,'0088977654','Hairul','2023-02-01','07:30:00.000000','16:00:00.000000',NULL,NULL,2,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(82,'0088977654','Hairul','2023-02-02','07:30:00.000000','16:00:00.000000',NULL,NULL,3,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(83,'0088977654','Hairul','2023-02-03','07:03:00.000000','15:30:00.000000',NULL,NULL,4,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(84,'0088977654','Hairul','2023-02-06','07:30:00.000000','16:00:00.000000',NULL,NULL,4,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(85,'0088977654','Hairul','2023-02-07','07:30:00.000000','16:00:00.000000',NULL,NULL,4,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(86,'0088977654','Hairul','2023-02-08','07:30:00.000000','16:00:00.000000',NULL,NULL,4,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(87,'0088977654','Hairul','2023-02-09','07:30:00.000000','16:00:00.000000',NULL,NULL,4,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(88,'0088977654','Hairul','2023-02-10','07:03:00.000000','15:30:00.000000',NULL,NULL,4,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(89,'0088977654','Hairul','2023-02-13','07:30:00.000000','16:00:00.000000',NULL,NULL,4,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(90,'0088977654','Hairul','2023-02-14','07:30:00.000000','16:00:00.000000',NULL,NULL,4,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(91,'0088977654','Hairul','2023-02-15','07:30:00.000000','16:00:00.000000',NULL,NULL,4,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(92,'0088977654','Hairul','2023-02-16','07:30:00.000000','16:00:00.000000',NULL,NULL,4,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(93,'0088977654','Hairul','2023-02-17','07:03:00.000000','15:30:00.000000',NULL,NULL,4,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(94,'0088977654','Hairul','2023-02-20','07:30:00.000000','16:00:00.000000',NULL,NULL,4,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(95,'0088977654','Hairul','2023-02-21','07:30:00.000000','16:00:00.000000',NULL,NULL,4,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(96,'0088977654','Hairul','2023-02-22','07:30:00.000000','16:00:00.000000',NULL,NULL,4,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(97,'0088977654','Hairul','2023-02-23','07:30:00.000000','16:00:00.000000',NULL,NULL,4,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(98,'0088977654','Hairul','2023-02-24','07:03:00.000000','15:30:00.000000',NULL,NULL,4,'',1,'2023-02-27 23:57:27.000000','Apriliana',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(99,'0088977654','Hairul','2023-02-27','07:30:00.000000','16:00:00.000000','07:30:00.000000','20:30:00.000000',1,'',1,'2023-02-27 23:57:27.000000','Apriliana',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)','2023-02-27 23:56:27','Apriliana'),
(100,'0099838887','Hamsah','2023-02-01','07:30:00.000000','16:00:00.000000',NULL,NULL,2,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(101,'0099838887','Hamsah','2023-02-02','07:30:00.000000','16:00:00.000000',NULL,NULL,3,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(102,'0099838887','Hamsah','2023-02-03','07:30:00.000000','15:30:00.000000',NULL,NULL,3,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(103,'0099838887','Hamsah','2023-02-06','07:30:00.000000','16:00:00.000000',NULL,NULL,4,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(104,'0099838887','Hamsah','2023-02-07','07:30:00.000000','16:00:00.000000',NULL,NULL,4,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(105,'0099838887','Hamsah','2023-02-08','07:30:00.000000','16:00:00.000000',NULL,NULL,4,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(106,'0099838887','Hamsah','2023-02-09','07:30:00.000000','16:00:00.000000',NULL,NULL,4,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(107,'0099838887','Hamsah','2023-02-10','07:30:00.000000','15:30:00.000000',NULL,NULL,4,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(108,'0099838887','Hamsah','2023-02-13','07:30:00.000000','16:00:00.000000',NULL,NULL,4,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(109,'0099838887','Hamsah','2023-02-14','07:30:00.000000','16:00:00.000000',NULL,NULL,4,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(110,'0099838887','Hamsah','2023-02-15','07:30:00.000000','16:00:00.000000',NULL,NULL,4,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(111,'0099838887','Hamsah','2023-02-16','07:30:00.000000','16:00:00.000000',NULL,NULL,4,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(112,'0099838887','Hamsah','2023-02-17','07:30:00.000000','15:30:00.000000',NULL,NULL,4,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(113,'0099838887','Hamsah','2023-02-20','07:30:00.000000','16:00:00.000000',NULL,NULL,4,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(114,'0099838887','Hamsah','2023-02-21','07:30:00.000000','16:00:00.000000',NULL,NULL,4,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(115,'0099838887','Hamsah','2023-02-22','07:30:00.000000','16:00:00.000000',NULL,NULL,4,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(116,'0099838887','Hamsah','2023-02-23','07:30:00.000000','16:00:00.000000',NULL,NULL,4,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(117,'0099838887','Hamsah','2023-02-24','07:30:00.000000','15:30:00.000000',NULL,NULL,4,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)',NULL,''),
(118,'0099838887','Hamsah','2023-02-27','07:30:00.000000','16:00:00.000000','07:30:00.000000','08:30:00.000000',1,'',0,NULL,'',NULL,'2023-02-27 23:38:50.000000','Miftahur Risky Jufri, S.Pd (Auto)','2023-02-27 23:50:27','Miftahur Risky Jufri, S.Pd');

/*Table structure for table `tbl_kelompok` */

DROP TABLE IF EXISTS `tbl_kelompok`;

CREATE TABLE `tbl_kelompok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `industri_id` int(11) NOT NULL DEFAULT '0',
  `nama_industri` varchar(100) NOT NULL DEFAULT '',
  `guru_id` varchar(30) NOT NULL DEFAULT '',
  `nama_guru` varchar(100) NOT NULL DEFAULT '',
  `siswa_id` varchar(30) NOT NULL DEFAULT '',
  `nama_siswa` varchar(100) NOT NULL DEFAULT '',
  `tanggal_awal` date DEFAULT NULL,
  `tanggal_akhir` date DEFAULT NULL,
  `pembimbing_id` int(11) NOT NULL DEFAULT '0',
  `nama_pembimbing` varchar(100) NOT NULL DEFAULT '',
  `file_nilai` varchar(255) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) NOT NULL DEFAULT '',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_kelompok` */

insert  into `tbl_kelompok`(`id`,`industri_id`,`nama_industri`,`guru_id`,`nama_guru`,`siswa_id`,`nama_siswa`,`tanggal_awal`,`tanggal_akhir`,`pembimbing_id`,`nama_pembimbing`,`file_nilai`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(1,1,'Pegadaian','199610212019031002','Miftahur Risky Jufri, S.Pd','0088977654','Hairul','2023-02-01','2023-02-28',18,'Apriliana','','2023-02-27 11:12:27','Administrator','2023-02-27 11:14:27','Miftahur Risky Jufri, S.Pd'),
(2,2,'Kominfo','199610212019031002','Miftahur Risky Jufri, S.Pd','0099838887','Hamsah','2023-02-01','2023-02-28',21,'Murniati','','2023-02-27 11:23:27','Administrator','2023-02-27 23:24:27','Miftahur Risky Jufri, S.Pd'),
(3,3,'Pengadilan Agama','197710252014122001','Ihsan Naskah, S.Kom., M.T','0088977655','Nurpadillah','2023-02-01','2023-02-28',24,'Susanto Widoyo, SH','','2023-02-27 20:41:27','Administrator','2023-02-27 20:41:27','Administrator'),
(4,3,'Pengadilan Agama','197710252014122001','Ihsan Naskah, S.Kom., M.T','0088977657','Nur Awal','2023-02-01','2023-02-28',24,'Susanto Widoyo, SH','','2023-02-27 20:43:27','Administrator','2023-02-27 20:44:27','Administrator');

/*Table structure for table `tbl_keterangan` */

DROP TABLE IF EXISTS `tbl_keterangan`;

CREATE TABLE `tbl_keterangan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `logbook_id` bigint(20) NOT NULL DEFAULT '0',
  `keterangan` text NOT NULL,
  `jenis` int(11) NOT NULL DEFAULT '0' COMMENT '1:Guru 2:Pembimbing',
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) NOT NULL DEFAULT '',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(100) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_keterangan` */

/*Table structure for table `tbl_logbook` */

DROP TABLE IF EXISTS `tbl_logbook`;

CREATE TABLE `tbl_logbook` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `siswa_id` varchar(30) NOT NULL DEFAULT '',
  `nama_siswa` varchar(100) NOT NULL DEFAULT '',
  `tanggal` date DEFAULT NULL,
  `uraian` text NOT NULL,
  `file_foto` varchar(255) NOT NULL DEFAULT '',
  `verifikasi_stat` enum('0','1','2','3','4') NOT NULL DEFAULT '0' COMMENT '0:idle; 1:verified; 2:perlu perbaikan; 3:sudah di perbaiki; 4:tolak;',
  `verifikasi_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `verifikasi_by` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) NOT NULL DEFAULT '',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(100) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_logbook` */

insert  into `tbl_logbook`(`id`,`siswa_id`,`nama_siswa`,`tanggal`,`uraian`,`file_foto`,`verifikasi_stat`,`verifikasi_at`,`verifikasi_by`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(2,'0088977655','Nurpadillah','2023-02-01','Mengerjakan Laporan Harian','data/20230227/be561e348e0da81df9ec76a79bb8823a.jpg','1','2023-02-27 21:04:27','Administrator','2023-02-27 21:01:27','Nurpadillah',NULL,'');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
