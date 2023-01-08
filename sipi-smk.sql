/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 5.7.39-log : Database - sipi-smk
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
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ci_sessions` */

insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`) values 
('entolcemlac6h6odjupgi1kvads6e54f','127.0.0.1',1673156030,'__ci_last_regenerate|i:1673155809;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 10:00:50\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('bj2imbch52nem57og5n0m2s15gn89f2e','127.0.0.1',1673156487,'__ci_last_regenerate|i:1673156235;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 10:00:50\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('vs751ku12g2ssu7ipqfn6uabueacm02e','127.0.0.1',1673156356,'__ci_last_regenerate|i:1673156356;'),
('m3qng92kp1a29bh2q2ku4uvahtqtumm7','127.0.0.1',1673156356,'__ci_last_regenerate|i:1673156356;'),
('hd9hs3qjb9mlfi3vcj0a5giub46mcaa3','127.0.0.1',1673156970,'__ci_last_regenerate|i:1673156897;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 10:00:50\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('niql1qii1pncpvdhvojjcimjpev25q95','127.0.0.1',1673157600,'__ci_last_regenerate|i:1673157290;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 10:00:50\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('hq5st3ud0efcn6nqvq05jokujibql8vb','127.0.0.1',1673157744,'__ci_last_regenerate|i:1673157622;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 10:00:50\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('b80rig9lb4jspcmdno2ad0juqpr9r45g','127.0.0.1',1673158363,'__ci_last_regenerate|i:1673158174;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 10:00:50\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('9kqb0dujm974ce3eht7lno1mbqscu4ir','127.0.0.1',1673158669,'__ci_last_regenerate|i:1673158548;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 10:00:50\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('b7tonfbkhdvbj1v71naahmgrl0s6efpg','127.0.0.1',1673159518,'__ci_last_regenerate|i:1673159238;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 10:00:50\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('0i1aql1nefuo114ug8a8dcipe6resmt3','127.0.0.1',1673159812,'__ci_last_regenerate|i:1673159624;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 10:00:50\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('eji2t0fu5n0bhn9fcn9gr5dsdd7hfqdg','127.0.0.1',1673159991,'__ci_last_regenerate|i:1673159991;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 10:00:50\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('3sao9klgi9mghikp7fdee5bjud9aam0b','127.0.0.1',1673161418,'__ci_last_regenerate|i:1673161124;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 10:00:50\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('tcu0qujb4vctflqgspeg3n74nsjenuts','127.0.0.1',1673161241,'__ci_last_regenerate|i:1673161241;'),
('mmqj6n31lsgqf3uqd5a9tnfddua6egcs','127.0.0.1',1673161517,'__ci_last_regenerate|i:1673161517;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 10:00:50\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('1rqaoif8str43bsaktb0gbeit57q1reh','127.0.0.1',1673163101,'__ci_last_regenerate|i:1673163084;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 10:00:50\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('hjdrjksadr4d1haauhnkk6h3sntpd9qq','127.0.0.1',1673163938,'__ci_last_regenerate|i:1673163462;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 10:00:50\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('q0mr5h7at0cmcbe9o7uh72dfviruqlu9','127.0.0.1',1673179911,'__ci_last_regenerate|i:1673179543;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";kelas_id|s:1:\"0\";nama_kelas|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 13:30:32\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('a7oirc1t3n7pke99t927e63229266kbl','127.0.0.1',1673180622,'__ci_last_regenerate|i:1673180343;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";kelas_id|s:1:\"0\";nama_kelas|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 13:30:32\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('ds0g5oh262tps87gs8h40fv67du7lu3h','127.0.0.1',1673181002,'__ci_last_regenerate|i:1673180699;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";kelas_id|s:1:\"0\";nama_kelas|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 13:30:32\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('mhdjqj3h8g5ccs7lk9nhm5s67b4ts28h','127.0.0.1',1673180715,'__ci_last_regenerate|i:1673180715;'),
('6d5c56kp9r8md64h6o4r4v073ml1c3o1','127.0.0.1',1673180716,'__ci_last_regenerate|i:1673180716;'),
('fkalsi2c3g39a086c706uk2i5qr4mun7','127.0.0.1',1673180937,'__ci_last_regenerate|i:1673180937;'),
('tdircjphq4vh7fn1nie9mddo66jpjd33','127.0.0.1',1673181143,'__ci_last_regenerate|i:1673181025;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";kelas_id|s:1:\"0\";nama_kelas|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 13:30:32\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('3pqofcqp863r9a3gb46k4bu17cnmbnmi','127.0.0.1',1673181458,'__ci_last_regenerate|i:1673181360;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";kelas_id|s:1:\"0\";nama_kelas|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 13:30:32\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('h0mio3pg292mlnu7mok8gj3f8qpsp43c','127.0.0.1',1673181969,'__ci_last_regenerate|i:1673181706;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";kelas_id|s:1:\"0\";nama_kelas|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 13:30:32\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('r39pft8db7c2qjgdrhf3qk95gs3c92sm','127.0.0.1',1673182235,'__ci_last_regenerate|i:1673182015;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";kelas_id|s:1:\"0\";nama_kelas|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 13:30:32\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('vji2sprtdrch8fn2a42epo3a865mr946','127.0.0.1',1673182816,'__ci_last_regenerate|i:1673182447;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";kelas_id|s:1:\"0\";nama_kelas|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 13:30:32\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('7rc35ajrrumrt61fc04gejbg1ham84im','127.0.0.1',1673183441,'__ci_last_regenerate|i:1673183186;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";kelas_id|s:1:\"0\";nama_kelas|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 13:30:32\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('fm76uvful5ajie7lkikeekrnt3kheegs','127.0.0.1',1673183685,'__ci_last_regenerate|i:1673183494;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";kelas_id|s:1:\"0\";nama_kelas|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 13:30:32\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('92fiaru8saifpqjc833aq7bqfnc7u5e6','127.0.0.1',1673186121,'__ci_last_regenerate|i:1673186121;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";kelas_id|s:1:\"0\";nama_kelas|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 13:30:32\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('n8rkih0v3ivpubq85u4b9ke73d1bk5r8','127.0.0.1',1673186903,'__ci_last_regenerate|i:1673186587;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";kelas_id|s:1:\"0\";nama_kelas|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 13:30:32\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('640sbmf9borf7qqp2840jvcgdf7kg9e1','127.0.0.1',1673187220,'__ci_last_regenerate|i:1673186945;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";kelas_id|s:1:\"0\";nama_kelas|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 13:30:32\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('avmja3jgkmjucqkl29ee6pu7s6doknl8','127.0.0.1',1673187216,'__ci_last_regenerate|i:1673187216;'),
('0lf0g59157mgt91ll9tcmsv6li4fom8n','127.0.0.1',1673189424,'__ci_last_regenerate|i:1673189115;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";kelas_id|s:1:\"0\";nama_kelas|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 13:30:32\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('gon7pt5lu9nm8i4k75vop5lfbts9ecpr','127.0.0.1',1673189445,'__ci_last_regenerate|i:1673189440;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";kelas_id|s:1:\"0\";nama_kelas|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 13:30:32\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('8hti428p44kb2lkt01gd6urp8fr1klqt','127.0.0.1',1673190384,'__ci_last_regenerate|i:1673190174;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";kelas_id|s:1:\"0\";nama_kelas|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 13:30:32\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('7355vm98b5un9788dshgchqr7s4km9e6','127.0.0.1',1673190616,'__ci_last_regenerate|i:1673190492;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";kelas_id|s:1:\"0\";nama_kelas|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 13:30:32\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('7lq4mi47nnhh4qn5oaqh16qdlhjsrhnl','127.0.0.1',1673190945,'__ci_last_regenerate|i:1673190872;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"2Hs6QhcAdvcfH7Ea4tKHl0L94ddIpYIFjIRBFarF4bN3SoT4ZKi3D/QEzLmCsmCdhWNPo9BBfOZbYNn4yc60nA==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";jurusan_id|s:1:\"0\";nama_jurusan|s:0:\"\";kelas_id|s:1:\"0\";nama_kelas|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-08 13:30:32\";last_logout|N;status_user_id|s:1:\"1\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 00:04:17\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";');

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
(1,'localhost:8056','SIPI-SMK','SMK Negeri 7 Jeneponto','40312510','085395619423','Sulawesi Selatan','Jeneponto','Arungkeke','Arungkeke Pallantikang','Jl. Pendidikan','data/20230108/26a275d2a048835b9d807bcf97b64fd2.jpg','data/20230107/3.jpg','2023-01-08 03:10:59','Administrator');

/*Table structure for table `m_deskripsi` */

DROP TABLE IF EXISTS `m_deskripsi`;

CREATE TABLE `m_deskripsi` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `nama` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_deskripsi` */

/*Table structure for table `m_golongan` */

DROP TABLE IF EXISTS `m_golongan`;

CREATE TABLE `m_golongan` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `pangkat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idgol` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

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
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `m_group` */

insert  into `m_group`(`id`,`nama`) values 
(1,'Admin'),
(2,'Guru'),
(3,'Siswa'),
(4,'Pembimbing Lapangan');

/*Table structure for table `m_guru` */

DROP TABLE IF EXISTS `m_guru`;

CREATE TABLE `m_guru` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `nip` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `golongan_id` int(64) NOT NULL DEFAULT '0',
  `nama_golongan` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ` (`nip`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `m_guru` */

insert  into `m_guru`(`id`,`nip`,`nama`,`golongan_id`,`nama_golongan`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(1,'197505052005011001','Dr. Ir. Mustari S. Lamada, M.T.',11,'III/c','2023-01-08 15:39:24','Administrator','2023-01-08 15:42:04','Administrator'),
(2,'195801081987032001','Dr. Satria Gunawan Zain, M.T.',11,'III/c','2023-01-08 20:29:38','Administrator',NULL,'');

/*Table structure for table `m_industri` */

DROP TABLE IF EXISTS `m_industri`;

CREATE TABLE `m_industri` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `nama_pimpinan` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_telp` varchar(30) NOT NULL,
  `jenis_usaha_id` int(64) NOT NULL DEFAULT '0',
  `nama_jenis_usaha` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `m_industri` */

insert  into `m_industri`(`id`,`nama`,`nama_pimpinan`,`alamat`,`email`,`no_telp`,`jenis_usaha_id`,`nama_jenis_usaha`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(1,'PT. Murfa Surya Mahardika','Sabrang','Jl. BTN Timurama Blok A12/11','example@gmail.com','(0421) 1111 1111',1,'Bidang Teknologi, Informasi, dan Komunikasi','2023-01-08 13:39:06','Administrator','2023-01-08 13:56:31','Administrator');

/*Table structure for table `m_jenis_usaha` */

DROP TABLE IF EXISTS `m_jenis_usaha`;

CREATE TABLE `m_jenis_usaha` (
  `id` int(64) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) NOT NULL DEFAULT '',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ` (`nama`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `m_jurusan` */

insert  into `m_jurusan`(`id`,`nama`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(1,'Teknik Otomotif','2023-01-08 00:43:15','Administrator',NULL,'');

/*Table structure for table `m_kelas` */

DROP TABLE IF EXISTS `m_kelas`;

CREATE TABLE `m_kelas` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) NOT NULL DEFAULT '',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ` (`nama`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `m_kelas` */

insert  into `m_kelas`(`id`,`nama`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(1,'I','2023-01-08 14:17:24','Administrator',NULL,''),
(2,'II','2023-01-08 14:17:30','Administrator',NULL,''),
(3,'III','2023-01-08 14:17:39','Administrator',NULL,'');

/*Table structure for table `m_siswa` */

DROP TABLE IF EXISTS `m_siswa`;

CREATE TABLE `m_siswa` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `nis` varchar(50) NOT NULL DEFAULT '',
  `nama` varchar(100) NOT NULL DEFAULT '',
  `jurusan_id` int(64) NOT NULL DEFAULT '0',
  `nama_jurusan` varchar(100) NOT NULL DEFAULT '',
  `kelas_id` int(64) NOT NULL DEFAULT '0',
  `nama_kelas` varchar(100) NOT NULL DEFAULT '',
  `tahun_masuk` year(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ` (`nis`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `m_siswa` */

insert  into `m_siswa`(`id`,`nis`,`nama`,`jurusan_id`,`nama_jurusan`,`kelas_id`,`nama_kelas`,`tahun_masuk`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(1,'1429041001','Sabrang',1,'Teknik Otomotif',1,'I',2011,'2023-01-08 22:07:44','Administrator',NULL,''),
(2,'1429040037','Rachmaniar',1,'Teknik Otomotif',1,'I',2011,'2023-01-08 22:08:22','Administrator',NULL,''),
(3,'1429041002','Zainuddin',1,'Teknik Otomotif',1,'I',2011,'2023-01-08 22:50:12','Administrator','2023-01-08 22:50:24','Administrator');

/*Table structure for table `m_status_user` */

DROP TABLE IF EXISTS `m_status_user`;

CREATE TABLE `m_status_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `m_status_user` */

insert  into `m_status_user`(`id`,`nama`) values 
(0,'Non Aktif'),
(1,'Aktif'),
(2,'Blokir');

/*Table structure for table `m_user` */

DROP TABLE IF EXISTS `m_user`;

CREATE TABLE `m_user` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `group_id` int(3) NOT NULL DEFAULT '0',
  `kode` varchar(50) NOT NULL DEFAULT '',
  `nama` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `jurusan_id` int(64) NOT NULL DEFAULT '0',
  `nama_jurusan` varchar(50) NOT NULL DEFAULT '',
  `kelas_id` int(64) NOT NULL DEFAULT '0',
  `nama_kelas` varchar(50) NOT NULL DEFAULT '',
  `keterangan` varchar(255) NOT NULL DEFAULT '',
  `last_login` timestamp NULL DEFAULT NULL,
  `last_logout` timestamp NULL DEFAULT NULL,
  `status_user_id` int(2) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) NOT NULL DEFAULT '',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ` (`username`,`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `m_user` */

insert  into `m_user`(`id`,`username`,`password`,`group_id`,`kode`,`nama`,`email`,`jurusan_id`,`nama_jurusan`,`kelas_id`,`nama_kelas`,`keterangan`,`last_login`,`last_logout`,`status_user_id`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(1,'admin','/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==',1,'','Administrator','sabrang@gmail.com',0,'',0,'','Administrator','2023-01-08 20:05:52',NULL,1,'2023-01-07 21:34:10','','2023-01-08 21:07:36','Administrator'),
(4,'satria','686i7gzm1WBUD0dQcqVm0OGtu4jim2XFGwph+SB9DP64zrKagDV3kEK07kAzxnTt97sGtLn5GIyKWeVyw7IuIA==',2,'195801081987032001','Dr. Satria Gunawan Zain, M.T.','example@gmail.com',0,'',0,'','Guru',NULL,NULL,1,'2023-01-08 20:56:38','Administrator',NULL,''),
(5,'1429041001','PLpNLnnkkewrCAC9bBbi4ujwL2TUW1WUGOADKAazAi+DNsQKMprLgbFEV7UikKccZA01xVb/m1PHz++UKGqy4g==',3,'1429041001','Sabrang','example@gmail.com',1,'Teknik Otomotif',1,'I','Siswa',NULL,NULL,1,'2023-01-08 20:59:29','Administrator','2023-01-08 23:15:45','Administrator'),
(6,'sutami','/dZ042mlaoOeqcyJDpGSwKqXocq+rPmkxaw02scX5tqRxSvOGk6JB/1rkGkbW+/u0wIW53X6biQVPa1+p3AmDw==',4,'1','PT. Murfa Surya Mahardika','example@gmail.com',0,'',0,'','Industri',NULL,NULL,1,'2023-01-08 21:00:16','Administrator',NULL,'');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
