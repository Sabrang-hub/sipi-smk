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
('d715ae86ncdspmo990k7r5di9hvqf8uq','127.0.0.1',1676812492,'__ci_last_regenerate|i:1676812203;id|s:10:\"1429041001\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-19 19:56:36\";last_logout|s:19:\"2023-02-19 20:15:14\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:50:\"data/20230219/c67795994187633acad7c6b9f5a05df3.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-19 00:57:06\";updated_by|s:7:\"Sabrang\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('12cg3avbko0ufid9cijqdkjmri1bsmn9','127.0.0.1',1676812811,'__ci_last_regenerate|i:1676812541;id|s:10:\"1429041001\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-19 19:56:36\";last_logout|s:19:\"2023-02-19 20:15:14\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:50:\"data/20230219/c67795994187633acad7c6b9f5a05df3.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-19 00:57:06\";updated_by|s:7:\"Sabrang\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('jof00i2oj869fsp54oca375m5k417ut7','127.0.0.1',1676813111,'__ci_last_regenerate|i:1676812952;id|s:10:\"1429041001\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-19 19:56:36\";last_logout|s:19:\"2023-02-19 20:15:14\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:50:\"data/20230219/c67795994187633acad7c6b9f5a05df3.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-19 00:57:06\";updated_by|s:7:\"Sabrang\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('3pvqm4tnc5v3puesteloc6e50ptpktj9','127.0.0.1',1676813333,'__ci_last_regenerate|i:1676813255;id|s:10:\"1429041001\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-19 19:56:36\";last_logout|s:19:\"2023-02-19 20:15:14\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:50:\"data/20230219/c67795994187633acad7c6b9f5a05df3.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-19 00:57:06\";updated_by|s:7:\"Sabrang\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('bcgvfm5u11ie260r5u51ut4kqk51kvv6','127.0.0.1',1676814916,'__ci_last_regenerate|i:1676814273;id|s:10:\"1429041001\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-19 19:56:36\";last_logout|s:19:\"2023-02-19 20:15:14\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|N;created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-19 00:57:06\";updated_by|s:7:\"Sabrang\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('esdbguhug50385nkfeu3c9k0fodtbt7b','127.0.0.1',1676815541,'__ci_last_regenerate|i:1676815251;id|s:10:\"1429041001\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-19 20:19:52\";last_logout|s:19:\"2023-02-19 22:00:51\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:50:\"data/20230219/c67795994187633acad7c6b9f5a05df3.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-19 00:57:06\";updated_by|s:7:\"Sabrang\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('o0a49o6nc79s23ptrt3eavjc86k8b22u','127.0.0.1',1676816096,'__ci_last_regenerate|i:1676816077;id|s:1:\"8\";username|s:18:\"195801081987032001\";password|s:88:\"VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==\";group_id|s:1:\"2\";kode|s:18:\"195801081987032001\";nama|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-18 23:19:35\";last_logout|s:19:\"2023-02-18 23:20:26\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:24:33\";created_by|s:13:\"Administrator\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('l9aviai8eu4hh91h5gcmavfi9221setu','127.0.0.1',1676816093,'__ci_last_regenerate|i:1676816093;'),
('dqg21e91ig2sqqh05a8m8fvjfehf3aep','127.0.0.1',1676816712,'__ci_last_regenerate|i:1676816449;id|s:1:\"8\";username|s:18:\"195801081987032001\";password|s:88:\"VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==\";group_id|s:1:\"2\";kode|s:18:\"195801081987032001\";nama|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-18 23:19:35\";last_logout|s:19:\"2023-02-18 23:20:26\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:24:33\";created_by|s:13:\"Administrator\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('qtpuuju8lkcm74fuds7e3sa88nu0b326','127.0.0.1',1676817057,'__ci_last_regenerate|i:1676816780;id|s:1:\"8\";username|s:18:\"195801081987032001\";password|s:88:\"VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==\";group_id|s:1:\"2\";kode|s:18:\"195801081987032001\";nama|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-18 23:19:35\";last_logout|s:19:\"2023-02-18 23:20:26\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:24:33\";created_by|s:13:\"Administrator\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('81j5du2t6lc2kkkimp3cdnd6q4mo8cpn','127.0.0.1',1676817472,'__ci_last_regenerate|i:1676817339;id|s:1:\"9\";username|s:4:\"rido\";password|s:88:\"k9rzsvs0/VCCQWbpblz9LdotGtSgezscx4aq3KjwDYLdjkpfYMPYhWTOCZdXmSVKzU55n3YDpCgXWRVqAoKDOQ==\";group_id|s:1:\"4\";kode|s:1:\"9\";nama|s:4:\"Rido\";email|s:14:\"rido@gmail.com\";nama_industri|s:25:\"PT. Murfa Surya Mahardika\";keterangan|s:13:\"User Industri\";last_login|s:19:\"2023-02-19 20:15:21\";last_logout|s:19:\"2023-02-19 20:15:58\";status_user_id|s:1:\"1\";user_id|s:1:\"8\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-18 00:33:01\";created_by|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:19:\"Pembimbing Lapangan\";'),
('2ekl0mu0i0ppq0at8hkg22lqvbc2f1ok','127.0.0.1',1676818086,'__ci_last_regenerate|i:1676818080;id|s:10:\"1429041001\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-19 22:00:54\";last_logout|s:19:\"2023-02-19 22:14:37\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:50:\"data/20230219/c67795994187633acad7c6b9f5a05df3.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-19 00:57:06\";updated_by|s:7:\"Sabrang\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('gs13uua9t6kdb77jnih52nd0qn76rpnh','127.0.0.1',1676818083,'__ci_last_regenerate|i:1676818083;'),
('oplphghhk6p7h88996799krqo4l32and','127.0.0.1',1676818083,'__ci_last_regenerate|i:1676818083;'),
('elivvflfqdn4rl15t726svbravi3m6k4','127.0.0.1',1676818684,'__ci_last_regenerate|i:1676818491;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-02-19 22:45:54\";last_logout|s:19:\"2023-02-19 22:47:59\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 21:07:36\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('dmm36cjs4hn206iq83tu28n20d5r7te6','127.0.0.1',1676819101,'__ci_last_regenerate|i:1676818848;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-02-19 22:45:54\";last_logout|s:19:\"2023-02-19 22:47:59\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 21:07:36\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('e32s971en9fg1aljvqsdf19bqkest0op','127.0.0.1',1676819392,'__ci_last_regenerate|i:1676819155;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-02-19 22:45:54\";last_logout|s:19:\"2023-02-19 22:47:59\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 21:07:36\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('id2acl0v7mgc63sh4i85th2c4a8698ji','127.0.0.1',1676819186,'__ci_last_regenerate|i:1676819186;'),
('j0nparsk8ll477n7df3muictp40n6b9t','127.0.0.1',1676819695,'__ci_last_regenerate|i:1676819488;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-02-19 22:45:54\";last_logout|s:19:\"2023-02-19 22:47:59\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 21:07:36\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('df5ullun6d18iegdtlr7rund0s2qa7od','127.0.0.1',1676820677,'__ci_last_regenerate|i:1676820404;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-02-19 22:45:54\";last_logout|s:19:\"2023-02-19 22:47:59\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 21:07:36\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('6r5ecfhnp1akrqago5l2u9498gi0fvth','127.0.0.1',1676821022,'__ci_last_regenerate|i:1676820725;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-02-19 22:45:54\";last_logout|s:19:\"2023-02-19 22:47:59\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 21:07:36\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('occuq9b7q45qeepuaull824qur4jg713','127.0.0.1',1676821369,'__ci_last_regenerate|i:1676821073;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-02-19 22:45:54\";last_logout|s:19:\"2023-02-19 22:47:59\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 21:07:36\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('93bu17u6r36pr8o34jn00uae6dl03ohu','127.0.0.1',1676821690,'__ci_last_regenerate|i:1676821425;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-02-19 22:45:54\";last_logout|s:19:\"2023-02-19 22:47:59\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 21:07:36\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('mv6slo1f38gchl0kmr22dsvqn4djo85r','127.0.0.1',1676821977,'__ci_last_regenerate|i:1676821731;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-02-19 22:45:54\";last_logout|s:19:\"2023-02-19 22:47:59\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 21:07:36\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('k155so2ojpakrdiuckjnibit7losfq2e','127.0.0.1',1676822541,'__ci_last_regenerate|i:1676822263;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-02-19 22:45:54\";last_logout|s:19:\"2023-02-19 22:47:59\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 21:07:36\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('lo2pf9mg4gfboh4ndr99kk8ki4nhsgq4','127.0.0.1',1676823127,'__ci_last_regenerate|i:1676822863;id|s:1:\"8\";username|s:18:\"195801081987032001\";password|s:88:\"VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==\";group_id|s:1:\"2\";kode|s:18:\"195801081987032001\";nama|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-19 22:14:40\";last_logout|s:19:\"2023-02-19 22:34:20\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:24:33\";created_by|s:13:\"Administrator\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('l5g5g5b0jr8lsmdblb9aetm30hg14sa8','127.0.0.1',1676823727,'__ci_last_regenerate|i:1676823427;id|s:1:\"9\";username|s:4:\"rido\";password|s:88:\"k9rzsvs0/VCCQWbpblz9LdotGtSgezscx4aq3KjwDYLdjkpfYMPYhWTOCZdXmSVKzU55n3YDpCgXWRVqAoKDOQ==\";group_id|s:1:\"4\";kode|s:1:\"9\";nama|s:4:\"Rido\";email|s:14:\"rido@gmail.com\";nama_industri|s:25:\"PT. Murfa Surya Mahardika\";keterangan|s:13:\"User Industri\";last_login|s:19:\"2023-02-19 22:35:42\";last_logout|s:19:\"2023-02-19 22:45:50\";status_user_id|s:1:\"1\";user_id|s:1:\"8\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-18 00:33:01\";created_by|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:19:\"Pembimbing Lapangan\";'),
('ur9k40af1asqr7j74ossrb3i6da31mbp','127.0.0.1',1676823959,'__ci_last_regenerate|i:1676823729;id|s:1:\"9\";username|s:4:\"rido\";password|s:88:\"k9rzsvs0/VCCQWbpblz9LdotGtSgezscx4aq3KjwDYLdjkpfYMPYhWTOCZdXmSVKzU55n3YDpCgXWRVqAoKDOQ==\";group_id|s:1:\"4\";kode|s:1:\"9\";nama|s:4:\"Rido\";email|s:14:\"rido@gmail.com\";nama_industri|s:25:\"PT. Murfa Surya Mahardika\";keterangan|s:13:\"User Industri\";last_login|s:19:\"2023-02-19 22:35:42\";last_logout|s:19:\"2023-02-19 22:45:50\";status_user_id|s:1:\"1\";user_id|s:1:\"8\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-18 00:33:01\";created_by|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:19:\"Pembimbing Lapangan\";'),
('rl0l0h1hlc5eelcsm3je9g8cjs3e7ia1','127.0.0.1',1676823965,'__ci_last_regenerate|i:1676823965;'),
('s0iqmft26lj884th3atngeleru1nloql','127.0.0.1',1676824172,'__ci_last_regenerate|i:1676824167;id|s:1:\"9\";username|s:4:\"rido\";password|s:88:\"k9rzsvs0/VCCQWbpblz9LdotGtSgezscx4aq3KjwDYLdjkpfYMPYhWTOCZdXmSVKzU55n3YDpCgXWRVqAoKDOQ==\";group_id|s:1:\"4\";kode|s:1:\"9\";nama|s:4:\"Rido\";email|s:14:\"rido@gmail.com\";nama_industri|s:25:\"PT. Murfa Surya Mahardika\";keterangan|s:13:\"User Industri\";last_login|s:19:\"2023-02-19 22:35:42\";last_logout|s:19:\"2023-02-19 22:45:50\";status_user_id|s:1:\"1\";user_id|s:1:\"8\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-18 00:33:01\";created_by|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:19:\"Pembimbing Lapangan\";'),
('ucdk1pjtv6s77jgrfbob3m9t6rv6f3mt','127.0.0.1',1676824959,'__ci_last_regenerate|i:1676824904;id|s:1:\"9\";username|s:4:\"rido\";password|s:88:\"k9rzsvs0/VCCQWbpblz9LdotGtSgezscx4aq3KjwDYLdjkpfYMPYhWTOCZdXmSVKzU55n3YDpCgXWRVqAoKDOQ==\";group_id|s:1:\"4\";kode|s:1:\"9\";nama|s:4:\"Rido\";email|s:14:\"rido@gmail.com\";nama_industri|s:25:\"PT. Murfa Surya Mahardika\";keterangan|s:13:\"User Industri\";last_login|s:19:\"2023-02-19 22:35:42\";last_logout|s:19:\"2023-02-19 22:45:50\";status_user_id|s:1:\"1\";user_id|s:1:\"8\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-18 00:33:01\";created_by|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:19:\"Pembimbing Lapangan\";'),
('v2drs1jpa1a542sg4pqvf28t790dg6mf','127.0.0.1',1676825380,'__ci_last_regenerate|i:1676825213;id|s:1:\"9\";username|s:4:\"rido\";password|s:88:\"k9rzsvs0/VCCQWbpblz9LdotGtSgezscx4aq3KjwDYLdjkpfYMPYhWTOCZdXmSVKzU55n3YDpCgXWRVqAoKDOQ==\";group_id|s:1:\"4\";kode|s:1:\"9\";nama|s:4:\"Rido\";email|s:14:\"rido@gmail.com\";nama_industri|s:25:\"PT. Murfa Surya Mahardika\";keterangan|s:13:\"User Industri\";last_login|s:19:\"2023-02-19 22:35:42\";last_logout|s:19:\"2023-02-19 22:45:50\";status_user_id|s:1:\"1\";user_id|s:1:\"8\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-18 00:33:01\";created_by|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:19:\"Pembimbing Lapangan\";'),
('8bfo8tobpoc0hajqf6m0desqn6ooglnn','127.0.0.1',1676825686,'__ci_last_regenerate|i:1676825658;id|s:1:\"9\";username|s:4:\"rido\";password|s:88:\"k9rzsvs0/VCCQWbpblz9LdotGtSgezscx4aq3KjwDYLdjkpfYMPYhWTOCZdXmSVKzU55n3YDpCgXWRVqAoKDOQ==\";group_id|s:1:\"4\";kode|s:1:\"9\";nama|s:4:\"Rido\";email|s:14:\"rido@gmail.com\";nama_industri|s:25:\"PT. Murfa Surya Mahardika\";keterangan|s:13:\"User Industri\";last_login|s:19:\"2023-02-19 22:35:42\";last_logout|s:19:\"2023-02-19 22:45:50\";status_user_id|s:1:\"1\";user_id|s:1:\"8\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-18 00:33:01\";created_by|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:19:\"Pembimbing Lapangan\";'),
('b3agf4gfu95i2l7algpqb7n63obpnbn1','127.0.0.1',1676827268,'__ci_last_regenerate|i:1676827264;id|s:1:\"8\";username|s:18:\"195801081987032001\";password|s:88:\"VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==\";group_id|s:1:\"2\";kode|s:18:\"195801081987032001\";nama|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-20 01:16:50\";last_logout|s:19:\"2023-02-20 01:16:59\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:24:33\";created_by|s:13:\"Administrator\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('d06mb9bmf40okdbrj38lsturt5j8s4dn','127.0.0.1',1676828210,'__ci_last_regenerate|i:1676827919;id|s:1:\"8\";username|s:18:\"195801081987032001\";password|s:88:\"VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==\";group_id|s:1:\"2\";kode|s:18:\"195801081987032001\";nama|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-20 01:16:50\";last_logout|s:19:\"2023-02-20 01:16:59\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:24:33\";created_by|s:13:\"Administrator\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('ofrlr6bkl669tede06fa3qeqr90u90q1','127.0.0.1',1676828733,'__ci_last_regenerate|i:1676828464;id|s:1:\"8\";username|s:18:\"195801081987032001\";password|s:88:\"VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==\";group_id|s:1:\"2\";kode|s:18:\"195801081987032001\";nama|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-20 01:16:50\";last_logout|s:19:\"2023-02-20 01:16:59\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:50:\"data/20230220/f8d0bba11f28fd50c52e3c1236ec1644.png\";created_at|s:19:\"2023-01-17 23:24:33\";created_by|s:13:\"Administrator\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('0r1r1po63gb8krkhp3krhfm0ikjjkedd','127.0.0.1',1676829084,'__ci_last_regenerate|i:1676828890;id|s:1:\"9\";username|s:4:\"rido\";password|s:88:\"k9rzsvs0/VCCQWbpblz9LdotGtSgezscx4aq3KjwDYLdjkpfYMPYhWTOCZdXmSVKzU55n3YDpCgXWRVqAoKDOQ==\";group_id|s:1:\"4\";kode|s:1:\"9\";nama|s:4:\"Rido\";email|s:14:\"rido@gmail.com\";nama_industri|s:25:\"PT. Murfa Surya Mahardika\";keterangan|s:13:\"User Industri\";last_login|s:19:\"2023-02-20 01:17:02\";last_logout|s:19:\"2023-02-20 01:19:42\";status_user_id|s:1:\"1\";user_id|s:1:\"8\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-18 00:33:01\";created_by|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:19:\"Pembimbing Lapangan\";'),
('eqd6r5553uaqkbkst9864i21gqunq6vk','127.0.0.1',1676829314,'__ci_last_regenerate|i:1676829285;id|s:1:\"9\";username|s:4:\"rido\";password|s:88:\"k9rzsvs0/VCCQWbpblz9LdotGtSgezscx4aq3KjwDYLdjkpfYMPYhWTOCZdXmSVKzU55n3YDpCgXWRVqAoKDOQ==\";group_id|s:1:\"4\";kode|s:1:\"9\";nama|s:4:\"Rido\";email|s:14:\"rido@gmail.com\";nama_industri|s:25:\"PT. Murfa Surya Mahardika\";keterangan|s:13:\"User Industri\";last_login|s:19:\"2023-02-20 01:17:02\";last_logout|s:19:\"2023-02-20 01:19:42\";status_user_id|s:1:\"1\";user_id|s:1:\"8\";file_foto|s:50:\"data/20230220/0fb2f0673173f9dc8377b8a38eee4bdc.png\";created_at|s:19:\"2023-01-18 00:33:01\";created_by|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:19:\"Pembimbing Lapangan\";'),
('2qh83k1nfb2h8oae8kmdjtgvjg81341e','127.0.0.1',1676829731,'__ci_last_regenerate|i:1676829727;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-02-20 01:16:07\";last_logout|s:19:\"2023-02-20 01:16:45\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";file_foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 21:07:36\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `m_guru` */

insert  into `m_guru`(`id`,`nip`,`nama`,`golongan_id`,`nama_golongan`,`file_foto`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(2147483647,'195801081987032001','Dr. Ir. Mustari S. Lamada, M.T.',1,'I/a','data/20230220/f8d0bba11f28fd50c52e3c1236ec1644.png','2023-01-17 23:24:33','Administrator','2023-02-20 01:42:19','Dr. Ir. Mustari S. Lamada, M.T.');

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `m_hari_kerja` */

insert  into `m_hari_kerja`(`id`,`industri_id`,`nama_industri`,`hari_id`,`nama_hari`,`waktu_masuk`,`waktu_pulang`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(13,1,'PT. Murfa Surya Mahardika',1,'Senin','07:00:00.000000','16:00:00.000000','2023-02-12 22:40:45.000000','Administrator',NULL,''),
(14,1,'PT. Murfa Surya Mahardika',2,'Selasa','07:00:00.000000','16:00:00.000000','2023-02-12 22:40:45.000000','Administrator',NULL,''),
(15,1,'PT. Murfa Surya Mahardika',4,'Kamis','00:00:00.000000','00:00:00.000000','2023-02-12 22:40:45.000000','Administrator',NULL,''),
(16,1,'PT. Murfa Surya Mahardika',6,'Sabtu','00:00:00.000000','00:00:00.000000','2023-02-12 22:40:45.000000','Administrator',NULL,''),
(17,1,'PT. Murfa Surya Mahardika',7,'Minggu','07:30:00.000000','16:00:00.000000','2023-02-12 22:40:45.000000','Administrator',NULL,'');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `m_industri` */

insert  into `m_industri`(`id`,`nama`,`nama_pimpinan`,`alamat`,`email`,`no_telp`,`jenis_usaha_id`,`nama_jenis_usaha`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(1,'PT. Murfa Surya Mahardika','Sabrang','Jl. BTN Timurama Blok A12/11','example@gmail.com','(0421) 1111 1111',1,'Bidang Teknologi, Informasi, dan Komunikasi','2023-01-08 13:39:06','Administrator','2023-01-08 13:56:31','Administrator');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `m_jurusan` */

insert  into `m_jurusan`(`id`,`nama`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(1,'Teknik Otomotif','2023-01-08 00:43:15','Administrator',NULL,'');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `m_kelas` */

insert  into `m_kelas`(`id`,`nama`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(1,'I','2023-01-08 14:17:24','Administrator',NULL,''),
(2,'II','2023-01-08 14:17:30','Administrator',NULL,''),
(3,'III','2023-01-08 14:17:39','Administrator',NULL,'');

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
) ENGINE=InnoDB AUTO_INCREMENT=1429041002 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `m_siswa` */

insert  into `m_siswa`(`id`,`nis`,`nama`,`jurusan_id`,`nama_jurusan`,`kelas_id`,`nama_kelas`,`tahun_masuk`,`file_foto`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(1429041001,'1429041001','Sabrang',1,'Teknik Otomotif',3,'III',2011,'data/20230219/c67795994187633acad7c6b9f5a05df3.png','2023-01-17 23:17:08','Administrator','2023-02-19 00:57:06','Sabrang');

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
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UNIQ` (`username`,`group_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1429041002 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `m_user` */

insert  into `m_user`(`id`,`username`,`password`,`group_id`,`kode`,`nama`,`email`,`nama_industri`,`keterangan`,`last_login`,`last_logout`,`status_user_id`,`user_id`,`file_foto`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(1,'admin','/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==',1,'','Administrator','sabrang@gmail.com','','Administrator','2023-02-20 02:02:10','2023-02-20 01:16:45',1,0,'assets/images/users/avatar-11.png','2023-01-07 21:34:10','','2023-01-08 21:07:36','Administrator'),
(9,'rido','k9rzsvs0/VCCQWbpblz9LdotGtSgezscx4aq3KjwDYLdjkpfYMPYhWTOCZdXmSVKzU55n3YDpCgXWRVqAoKDOQ==',4,'9','Rido','rido@gmail.com','PT. Murfa Surya Mahardika','User Industri','2023-02-20 01:48:13','2023-02-20 02:01:54',1,8,'data/20230220/0fb2f0673173f9dc8377b8a38eee4bdc.png','2023-01-18 00:33:01','Dr. Ir. Mustari S. Lamada, M.T.','2023-02-20 01:55:14','Rido'),
(1429041001,'1429041001','H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==',3,'1429041001','Sabrang','','','','2023-02-20 01:19:45','2023-02-20 01:21:04',1,1,'data/20230219/c67795994187633acad7c6b9f5a05df3.png','2023-01-17 23:17:08','','2023-02-19 00:57:06','Sabrang'),
(2147483647,'195801081987032001','VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==',2,'195801081987032001','Dr. Ir. Mustari S. Lamada, M.T.','','','','2023-02-20 02:01:59','2023-02-20 02:02:06',1,1,'data/20230220/f8d0bba11f28fd50c52e3c1236ec1644.png','2023-01-17 23:24:33','Administrator','2023-02-20 01:42:19','Dr. Ir. Mustari S. Lamada, M.T.');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_absen` */

insert  into `tbl_absen`(`id`,`siswa_id`,`nama_siswa`,`tanggal`,`waktu_masuk`,`waktu_pulang`,`absen_masuk`,`absen_pulang`,`status`,`keterangan_siswa`,`verifikasi_stat`,`verifikasi_at`,`verifikasi_by`,`verifikasi_ket`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(10,'1429041001','Sabrang','2023-02-19','07:30:00.000000','16:00:00.000000',NULL,NULL,2,'saya tidak bisa hadir krn sakit',0,NULL,'',NULL,'2023-02-19 00:06:19.000000','Sabrang','2023-02-19 23:52:19','Administrator'),
(11,'1429041001','Sabrang','2023-02-18','00:00:00.000000','00:00:00.000000',NULL,NULL,4,'tdk ada keterangan yang sampai',0,NULL,'',NULL,'2023-02-19 23:59:19.000000','Administrator','2023-02-20 00:00:20','Administrator'),
(12,'1429041001','Sabrang','2023-02-20','07:00:00.000000','16:00:00.000000','00:16:11.000000','16:00:00.000000',1,'',0,NULL,'',NULL,'2023-02-20 00:11:20.000000','Dr. Ir. Mustari S. Lamada, M.T.','2023-02-20 00:16:20','Dr. Ir. Mustari S. Lamada, M.T.'),
(13,'1429041001','Sabrang','2023-02-17',NULL,NULL,NULL,NULL,4,'',1,'2023-02-20 01:08:20.000000','Rido',NULL,'2023-02-20 01:07:20.000000','Rido',NULL,'');

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
(4,1,'PT. Murfa Surya Mahardika','195801081987032001','Dr. Ir. Mustari S. Lamada, M.T.','1429041001','Sabrang','2023-02-01','2023-02-28',9,'Rido','data/20230219/6aa92cf683bf3837eca3d4b2dbf5f637.pdf','2023-01-17 22:49:17','Administrator','2023-02-19 22:01:02','Sabrang');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_keterangan` */

insert  into `tbl_keterangan`(`id`,`logbook_id`,`keterangan`,`jenis`,`status`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(1,3,'tes keterangan siswa',1,0,'2023-01-29 00:40:29','Dr. Ir. Mustari S. Lamada, M.T.',NULL,'');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_logbook` */

insert  into `tbl_logbook`(`id`,`siswa_id`,`nama_siswa`,`tanggal`,`uraian`,`file_foto`,`verifikasi_stat`,`verifikasi_at`,`verifikasi_by`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(3,'1429041001','Sabrang','2023-01-28','Anda bisa memberikan alasan tersebut kepada teman yang ingin utang kepadamu. Cukup berkata, &quot;Maaf, belum bisa. Soalnya duit saya lagi dipinjam orang, sampai sekarang belum dikatakan.&quot;','data/20230128/1c904f006a927406902baf7e1fd10ecb.JPG','0','2023-02-20 00:49:20','Rido','2023-01-28 20:50:28','Sabrang','2023-01-29 20:15:29','Sabrang');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
