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
('qp63d5lot7llm2tvslnq02pn252h09oa','127.0.0.1',1677333937,'__ci_last_regenerate|i:1677333678;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-02-25 15:41:30\";last_logout|s:19:\"2023-02-25 15:40:48\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";file_foto|s:50:\"data/20230225/b993ea89c674ef3a04484947f99db139.png\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-25 17:22:55\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('6vdgr6h7vl35djrolj2luugs07sb2922','127.0.0.1',1677333950,'__ci_last_regenerate|i:1677333950;'),
('2k9dt6ccmu4e2bbh6elshfumlha4cr8g','127.0.0.1',1677333950,'__ci_last_regenerate|i:1677333950;'),
('qh6jjbgpde25g2a8i2oictnv8il5ceou','127.0.0.1',1677334094,'__ci_last_regenerate|i:1677334005;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-02-25 15:41:30\";last_logout|s:19:\"2023-02-25 15:40:48\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";file_foto|s:50:\"data/20230225/b993ea89c674ef3a04484947f99db139.png\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-25 17:22:55\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('l86mdac8hstlumnatnidhmh08ks61bst','127.0.0.1',1677334650,'__ci_last_regenerate|i:1677334324;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-02-25 15:41:30\";last_logout|s:19:\"2023-02-25 15:40:48\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";file_foto|s:50:\"data/20230225/b993ea89c674ef3a04484947f99db139.png\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-25 17:22:55\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('9d5i7g4ceq8qqfh9odk39c2pav4d31vj','127.0.0.1',1677334676,'__ci_last_regenerate|i:1677334676;'),
('ei7lng8u7tnei71votd9bjbnca1qe6e1','127.0.0.1',1677334868,'__ci_last_regenerate|i:1677334773;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-02-25 15:41:30\";last_logout|s:19:\"2023-02-25 15:40:48\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";file_foto|s:50:\"data/20230225/b993ea89c674ef3a04484947f99db139.png\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-25 17:22:55\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('a680n5p75virqm1dc9b3878hq475htf0','127.0.0.1',1677335330,'__ci_last_regenerate|i:1677335294;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-02-25 15:41:30\";last_logout|s:19:\"2023-02-25 15:40:48\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";file_foto|s:50:\"data/20230225/b993ea89c674ef3a04484947f99db139.png\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-25 17:22:55\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('b1meslmjc9jdbu8chafv8up9d48f01b9','127.0.0.1',1677335924,'__ci_last_regenerate|i:1677335619;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-02-25 15:41:30\";last_logout|s:19:\"2023-02-25 15:40:48\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";file_foto|s:50:\"data/20230225/b993ea89c674ef3a04484947f99db139.png\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-25 17:22:55\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('ifemcgm5tmt1km0acr1pcrnuaspvknmh','127.0.0.1',1677336292,'__ci_last_regenerate|i:1677335926;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-02-25 15:41:30\";last_logout|s:19:\"2023-02-25 15:40:48\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";file_foto|s:50:\"data/20230225/b993ea89c674ef3a04484947f99db139.png\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-25 17:22:55\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('keo7no6f6eqvnc41bvkip2qdeq2dullj','127.0.0.1',1677336592,'__ci_last_regenerate|i:1677336296;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-02-25 15:41:30\";last_logout|s:19:\"2023-02-25 15:40:48\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";file_foto|s:50:\"data/20230225/b993ea89c674ef3a04484947f99db139.png\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-25 17:22:55\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('2he71cocnb52napehkbpva6mksaqov6d','127.0.0.1',1677336534,'__ci_last_regenerate|i:1677336534;'),
('ubbbhdmfte30k6e4dhulku25ka12jlpl','127.0.0.1',1677336872,'__ci_last_regenerate|i:1677336642;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-02-25 15:41:30\";last_logout|s:19:\"2023-02-25 15:40:48\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";file_foto|s:50:\"data/20230225/b993ea89c674ef3a04484947f99db139.png\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-25 17:22:55\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('9hu068jmt3neimvhaq1s7ukk8ev5s8qk','127.0.0.1',1677337734,'__ci_last_regenerate|i:1677337121;id|s:2:\"10\";username|s:9:\"123456789\";password|s:88:\"ZvBO3vIvUDAcZka38UR//qcKHRPG65UNksX9ghmzasiS6kibQ2EGpAena2YwL5EdO31gKNC4FHpuejyBrq06yQ==\";group_id|s:1:\"2\";kode|s:9:\"123456789\";nama|s:4:\"Udin\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|N;last_logout|N;status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:50:\"data/20230225/f3d54dc7c20a5c26b99503008b1a34b9.png\";created_at|s:19:\"2023-02-25 22:39:08\";created_by|s:13:\"Administrator\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('dcsmrrpk6rtm5tjgeet092tmmp6d81on','127.0.0.1',1677337456,'__ci_last_regenerate|i:1677337456;'),
('n5gea4qa30rrkpfjf9u9bbo2ui5k6874','127.0.0.1',1677337917,'__ci_last_regenerate|i:1677337905;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-02-25 22:01:27\";last_logout|s:19:\"2023-02-25 22:58:41\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";file_foto|s:50:\"data/20230225/b993ea89c674ef3a04484947f99db139.png\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-25 17:22:55\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";');

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
(1,'localhost:8056','SIP-PKL','SMK Negeri 7 Jeneponto','40312510','085395619423','Sulawesi Selatan','Jeneponto','Arungkeke','Arungkeke Pallantikang','Jl. Pendidikan','data/20230108/26a275d2a048835b9d807bcf97b64fd2.jpg','data/20230107/3.jpg','2023-01-08 03:10:59','Administrator');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `m_guru` */

insert  into `m_guru`(`id`,`nip`,`nama`,`golongan_id`,`nama_golongan`,`file_foto`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(1,'123456789','Udin',4,'I/d','data/20230225/f3d54dc7c20a5c26b99503008b1a34b9.png','2023-02-25 22:39:08','Administrator','2023-02-25 23:08:54','Udin');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `m_hari_kerja` */

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
(3,'PT. Murfa Surya Mahardika','Risky','asdf','example@gmail.com','213421312',5,'Bidang Usaha Pertanian','2023-02-25 22:49:51','Administrator',NULL,'');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `m_jurusan` */

insert  into `m_jurusan`(`id`,`nama`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(1,'Teknik Otomotif','2023-02-25 22:37:44','Administrator','2023-02-25 22:37:48','Administrator');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `m_kelas` */

insert  into `m_kelas`(`id`,`nama`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(2,'I','2023-02-25 22:38:44','Administrator',NULL,'');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `m_siswa` */

insert  into `m_siswa`(`id`,`nis`,`nama`,`jurusan_id`,`nama_jurusan`,`kelas_id`,`nama_kelas`,`tahun_masuk`,`file_foto`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(1,'12341','Risky',1,'Teknik Otomotif',2,'I',2021,'','2023-02-25 22:43:41','Administrator','2023-02-25 22:44:16','Administrator'),
(3,'12342','Suti',1,'Teknik Otomotif',2,'I',2022,'','2023-02-25 22:44:52','Administrator',NULL,'');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `m_user` */

insert  into `m_user`(`id`,`username`,`password`,`group_id`,`kode`,`nama`,`email`,`nama_industri`,`keterangan`,`last_login`,`last_logout`,`status_user_id`,`user_id`,`file_foto`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(1,'admin','/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==',1,'','Administrator','sabrang@gmail.com','','Administrator','2023-02-25 23:11:56','2023-02-25 22:58:41',1,0,'data/20230225/b993ea89c674ef3a04484947f99db139.png','2023-01-07 21:34:10','','2023-02-25 17:22:55','Administrator'),
(12,'12345','B7HT8PywPeNz5GkzUfsm7IxVCKErPri/1756RiBcdR8jOZjZsL3ybp2pGEdu24958d+FknR7Tc3ZTfUqyIdpZQ==',3,'12345','Risky','','','',NULL,NULL,1,1,'assets/images/users/avatar-11.png','2023-02-25 22:43:41','Administrator',NULL,''),
(13,'12346','fbRk0ZkVxVeij72xU6jrVcL7ADVUrT/JEf2P/HG299Tb6IQxSc2tDRMq1aOEGh9JzRsJUw4TJE2mOFewVlovvA==',3,'12346','Suti','','','',NULL,NULL,1,1,'assets/images/users/avatar-11.png','2023-02-25 22:44:07','Administrator',NULL,''),
(14,'12342','ZEhFyNZfOy3tSgu8UPOc6yrO8yLO+ybREywYhjBWRrFI7jCWu5qZOl7Fij0Z5gNZWHOIWxMjoDVNcNmSBQkXHg==',3,'12342','Suti','','','',NULL,NULL,1,1,'assets/images/users/avatar-11.png','2023-02-25 22:44:52','Administrator',NULL,''),
(15,'123456789','ZvBO3vIvUDAcZka38UR//qcKHRPG65UNksX9ghmzasiS6kibQ2EGpAena2YwL5EdO31gKNC4FHpuejyBrq06yQ==',2,'123456789','Udin','','','','2023-02-25 22:58:49',NULL,1,1,'data/20230225/f3d54dc7c20a5c26b99503008b1a34b9.png','2023-02-25 22:39:08','Administrator','2023-02-25 23:08:54','Udin');

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
  `status` int(11) NOT NULL COMMENT '0 Tampa Keterangan\r\n1 Hadir\r\n2 Izin\r\n3 Sakit 4 Alpa',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_absen` */

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_kelompok` */

insert  into `tbl_kelompok`(`id`,`industri_id`,`nama_industri`,`guru_id`,`nama_guru`,`siswa_id`,`nama_siswa`,`tanggal_awal`,`tanggal_akhir`,`pembimbing_id`,`nama_pembimbing`,`file_nilai`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(2,3,'PT. Murfa Surya Mahardika','123456789','Udin','12341','Risky','2023-02-01','2023-02-28',0,'','','2023-02-25 22:57:25','Administrator',NULL,'');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_logbook` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
