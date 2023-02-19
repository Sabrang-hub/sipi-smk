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
('2ha1arqhrppq5mdi1l8sl3jd1oj4cgf3','127.0.0.1',1676463141,'__ci_last_regenerate|i:1676463083;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-12 22:40:54\";last_logout|s:19:\"2023-02-12 22:40:05\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('i1fs7nhq50gaahb3niksl9u3u28of5k7','127.0.0.1',1676463974,'__ci_last_regenerate|i:1676463974;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-12 22:40:54\";last_logout|s:19:\"2023-02-12 22:40:05\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('0bos5mbstph36gtkstc59t4cqbgl50ju','127.0.0.1',1676464961,'__ci_last_regenerate|i:1676464704;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-15 20:11:29\";last_logout|s:19:\"2023-02-15 20:38:24\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('kjqnkaa0perst9fd0m3ic0sjkabjqrjc','127.0.0.1',1676465187,'__ci_last_regenerate|i:1676465020;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-15 20:11:29\";last_logout|s:19:\"2023-02-15 20:38:24\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('skea10d2judbrmbob6kf1hnf3ku2cmui','127.0.0.1',1676465629,'__ci_last_regenerate|i:1676465355;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-15 20:11:29\";last_logout|s:19:\"2023-02-15 20:38:24\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('2ff8mr8p8h93ngdtthnpv620enql1fs4','127.0.0.1',1676465955,'__ci_last_regenerate|i:1676465665;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-15 20:11:29\";last_logout|s:19:\"2023-02-15 20:38:24\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('vpaeicvorvag0c0jpka0ucfhfd4tk24n','127.0.0.1',1676467439,'__ci_last_regenerate|i:1676467154;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-15 20:11:29\";last_logout|s:19:\"2023-02-15 20:38:24\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('d8o0pjnt2iou0f39b204ft73752kg6r6','127.0.0.1',1676467790,'__ci_last_regenerate|i:1676467496;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-15 20:11:29\";last_logout|s:19:\"2023-02-15 20:38:24\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('42jammsbgic2ji5tjkpavco9loaiapgq','127.0.0.1',1676467732,'__ci_last_regenerate|i:1676467732;'),
('ifvia9a9kjm0eo9s88op08fepge720nm','127.0.0.1',1676467732,'__ci_last_regenerate|i:1676467732;'),
('48vm0mknamkeg7airqffgnfpmlo23g8u','127.0.0.1',1676468086,'__ci_last_regenerate|i:1676467799;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-15 20:11:29\";last_logout|s:19:\"2023-02-15 20:38:24\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('kjrcdf5csb6s7i4870jct10ok16j343o','127.0.0.1',1676468407,'__ci_last_regenerate|i:1676468193;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-15 20:11:29\";last_logout|s:19:\"2023-02-15 20:38:24\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('3tldkuk0od624q30o7i70fek4j5vsku8','127.0.0.1',1676468788,'__ci_last_regenerate|i:1676468504;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-15 20:11:29\";last_logout|s:19:\"2023-02-15 20:38:24\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('afqjboo1rqpc7nk3rdfb31opp63cp7jc','127.0.0.1',1676469149,'__ci_last_regenerate|i:1676468913;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-15 20:11:29\";last_logout|s:19:\"2023-02-15 20:38:24\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('plito4vbfhcgfukdbir6mh5hg9qtsroi','127.0.0.1',1676469574,'__ci_last_regenerate|i:1676469276;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-15 20:11:29\";last_logout|s:19:\"2023-02-15 20:38:24\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('23u6uo7viurti0e0lu1h2hfjgr121q9s','127.0.0.1',1676469937,'__ci_last_regenerate|i:1676469728;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-15 20:11:29\";last_logout|s:19:\"2023-02-15 20:38:24\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('0rq6in7snfvcmo1qh8u0sgvkqgn0ghtp','127.0.0.1',1676470033,'__ci_last_regenerate|i:1676470033;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-15 20:11:29\";last_logout|s:19:\"2023-02-15 20:38:24\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('j1qn173hnmafu5rigcovigdeqql7m31f','127.0.0.1',1676473785,'__ci_last_regenerate|i:1676473544;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-15 20:11:29\";last_logout|s:19:\"2023-02-15 20:38:24\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('hkj3mjafo14kvgdunkk006sss18rlhce','127.0.0.1',1676473783,'__ci_last_regenerate|i:1676473783;'),
('kr01ct8nic49m084cc0g8ioo3kar0v9l','127.0.0.1',1676474765,'__ci_last_regenerate|i:1676474521;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-15 20:11:29\";last_logout|s:19:\"2023-02-15 20:38:24\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('teadll4qvr6eluqn6jioutqiicb8oams','127.0.0.1',1676475113,'__ci_last_regenerate|i:1676474876;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-15 20:11:29\";last_logout|s:19:\"2023-02-15 20:38:24\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('jj7p5ddcvej2a7qico2un9o2b2aoq4fe','127.0.0.1',1676475489,'__ci_last_regenerate|i:1676475282;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-15 20:11:29\";last_logout|s:19:\"2023-02-15 20:38:24\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('n6r09uo6k2orglsbetrn0t3p15j7o2ck','127.0.0.1',1676475724,'__ci_last_regenerate|i:1676475693;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-15 20:11:29\";last_logout|s:19:\"2023-02-15 20:38:24\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('1q7rrdfaolp1ju091i30jtlso0kabedl','127.0.0.1',1676476287,'__ci_last_regenerate|i:1676476018;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-15 20:11:29\";last_logout|s:19:\"2023-02-15 20:38:24\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('cid5e35s3q07vo0f50p4275qd58j83ts','127.0.0.1',1676476678,'__ci_last_regenerate|i:1676476384;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-15 20:11:29\";last_logout|s:19:\"2023-02-15 20:38:24\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('hm8jr3ej6a7588rmobe5gnthmf8p63d9','127.0.0.1',1676477107,'__ci_last_regenerate|i:1676476829;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-15 20:11:29\";last_logout|s:19:\"2023-02-15 20:38:24\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('541ciebrrvuuj5f3h3lrqudk573k64jn','127.0.0.1',1676477185,'__ci_last_regenerate|i:1676477181;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-15 20:11:29\";last_logout|s:19:\"2023-02-15 20:38:24\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('bq64akq1ct3m547g3arbqr3dso65q7as','127.0.0.1',1676732181,'__ci_last_regenerate|i:1676732175;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-15 20:39:02\";last_logout|s:19:\"2023-02-15 20:38:24\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('20lr1v7npkdneh5rhl178d9f6o2nd3ts','127.0.0.1',1676732600,'__ci_last_regenerate|i:1676732574;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-15 20:39:02\";last_logout|s:19:\"2023-02-15 20:38:24\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('tiaaeahsi3ijf525gqsb9rccgd6bea7u','127.0.0.1',1676732592,'__ci_last_regenerate|i:1676732592;'),
('e32pgqkl5ov7la3u1so4ij5cb6bu6io0','127.0.0.1',1676733107,'__ci_last_regenerate|i:1676733033;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-15 20:39:02\";last_logout|s:19:\"2023-02-15 20:38:24\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('kugha2gq0sk68j5la5s77t0g8sq6ci0a','127.0.0.1',1676733604,'__ci_last_regenerate|i:1676733604;'),
('h2irnon9pdbtc0mn8c7kblseegacqpef','127.0.0.1',1676733889,'__ci_last_regenerate|i:1676733627;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-18 22:56:20\";last_logout|s:19:\"2023-02-18 23:19:29\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('2jpt0lfi35o49gaunb60nbvg29chub7v','127.0.0.1',1676734249,'__ci_last_regenerate|i:1676733965;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-18 22:56:20\";last_logout|s:19:\"2023-02-18 23:19:29\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('vf54f695nd2s3t8s6j3g7tmrv179a47g','127.0.0.1',1676734525,'__ci_last_regenerate|i:1676734309;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-18 22:56:20\";last_logout|s:19:\"2023-02-18 23:19:29\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('fsie9m8hc35ded9q49ckth1s3qmuqh8d','127.0.0.1',1676735266,'__ci_last_regenerate|i:1676734983;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-18 22:56:20\";last_logout|s:19:\"2023-02-18 23:19:29\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('j9jt6t3fps51dn3ma544ta7tdb8rchh2','127.0.0.1',1676735591,'__ci_last_regenerate|i:1676735317;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-18 22:56:20\";last_logout|s:19:\"2023-02-18 23:19:29\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('89d3elg1851tmng9dqbmh1gfqptfuuua','127.0.0.1',1676735911,'__ci_last_regenerate|i:1676735624;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-18 22:56:20\";last_logout|s:19:\"2023-02-18 23:19:29\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('ff39opdlv08sseb797v3nvkev0ej7cci','127.0.0.1',1676736208,'__ci_last_regenerate|i:1676735930;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-18 22:56:20\";last_logout|s:19:\"2023-02-18 23:19:29\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('ds4k54iu290afcc4m774277nmlotj0ld','127.0.0.1',1676736440,'__ci_last_regenerate|i:1676736361;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-18 22:56:20\";last_logout|s:19:\"2023-02-18 23:19:29\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('4233gcstral4t34ssdbvgmo3v6iaqmt7','127.0.0.1',1676736972,'__ci_last_regenerate|i:1676736736;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-18 22:56:20\";last_logout|s:19:\"2023-02-18 23:19:29\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('i1dv82utv56h7b960pju92oiir695o72','127.0.0.1',1676737579,'__ci_last_regenerate|i:1676737280;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-18 22:56:20\";last_logout|s:19:\"2023-02-18 23:19:29\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('l511lon3d8otq5fs850g60f74upo8kt3','127.0.0.1',1676737907,'__ci_last_regenerate|i:1676737630;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-18 22:56:20\";last_logout|s:19:\"2023-02-18 23:19:29\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('sd8nua5oiobnr4ade5kfe7nb7ofqu032','127.0.0.1',1676738712,'__ci_last_regenerate|i:1676738067;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-18 22:56:20\";last_logout|s:19:\"2023-02-18 23:19:29\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";foto|s:33:\"assets/images/users/avatar-11.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('43hja8k44qrfnlp5kuvkk5mr3riabpa6','127.0.0.1',1676739426,'__ci_last_regenerate|i:1676738964;id|s:10:\"1429041001\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-18 23:20:30\";last_logout|s:19:\"2023-02-18 23:19:29\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:50:\"data/20230219/c67795994187633acad7c6b9f5a05df3.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-19 00:46:40\";updated_by|s:7:\"Sabrang\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('cujdjda7o8u8mu0dntmf67mfikn908ap','127.0.0.1',1676739501,'__ci_last_regenerate|i:1676739479;id|s:10:\"1429041001\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-18 23:20:30\";last_logout|s:19:\"2023-02-18 23:19:29\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:50:\"data/20230219/c67795994187633acad7c6b9f5a05df3.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-19 00:46:40\";updated_by|s:7:\"Sabrang\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('deu8tn04o14pghkvq64cpabj5udckliu','127.0.0.1',1676740194,'__ci_last_regenerate|i:1676739955;id|s:10:\"1429041001\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-18 23:20:30\";last_logout|s:19:\"2023-02-18 23:19:29\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:50:\"data/20230219/c67795994187633acad7c6b9f5a05df3.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-19 00:46:40\";updated_by|s:7:\"Sabrang\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('4c2pt2j71jj6gum8jlbsdqaudvegir46','127.0.0.1',1676740288,'__ci_last_regenerate|i:1676740288;'),
('2c1deap115ts64g4u87fpptsonmi3r99','127.0.0.1',1676740288,'__ci_last_regenerate|i:1676740288;'),
('b3jj41bav4v6tb0m011i5gs4mpv5jltv','127.0.0.1',1676740493,'__ci_last_regenerate|i:1676740493;'),
('1dbmsf1phq1tuaplugh516tcjcdugi53','127.0.0.1',1676740706,'__ci_last_regenerate|i:1676740706;'),
('4vcqi96j0b3h3huaqsv6f38bgq562hhk','127.0.0.1',1676807797,'__ci_last_regenerate|i:1676807790;id|s:10:\"1429041001\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-19 01:17:35\";last_logout|s:19:\"2023-02-19 01:18:26\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:50:\"data/20230219/c67795994187633acad7c6b9f5a05df3.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-19 00:57:06\";updated_by|s:7:\"Sabrang\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('l9tfmfq0ef97cg27koj0mjnih99erhg9','127.0.0.1',1676809192,'__ci_last_regenerate|i:1676808959;id|s:10:\"1429041001\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-19 19:56:36\";last_logout|s:19:\"2023-02-19 20:15:14\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:50:\"data/20230219/c67795994187633acad7c6b9f5a05df3.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-19 00:57:06\";updated_by|s:7:\"Sabrang\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('ff97k5l63o7hkaff2eg4h3ah1157s23u','127.0.0.1',1676810768,'__ci_last_regenerate|i:1676810493;id|s:10:\"1429041001\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-19 19:56:36\";last_logout|s:19:\"2023-02-19 20:15:14\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:50:\"data/20230219/c67795994187633acad7c6b9f5a05df3.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-19 00:57:06\";updated_by|s:7:\"Sabrang\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('pu04c9ldsfk66t2pkd9bekonk7bqhj6p','127.0.0.1',1676810745,'__ci_last_regenerate|i:1676810745;'),
('vrd8k77v843hkqquto3sct85drmeavbm','127.0.0.1',1676810746,'__ci_last_regenerate|i:1676810746;'),
('7kfaqklcicflmrit6piut9kc6m4hlcpv','127.0.0.1',1676811091,'__ci_last_regenerate|i:1676810798;id|s:10:\"1429041001\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-19 19:56:36\";last_logout|s:19:\"2023-02-19 20:15:14\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:50:\"data/20230219/c67795994187633acad7c6b9f5a05df3.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-19 00:57:06\";updated_by|s:7:\"Sabrang\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('n0kaen0su8lsjnatlasgvrlj9v0qlc75','127.0.0.1',1676811313,'__ci_last_regenerate|i:1676811108;id|s:10:\"1429041001\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-19 19:56:36\";last_logout|s:19:\"2023-02-19 20:15:14\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:50:\"data/20230219/c67795994187633acad7c6b9f5a05df3.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-19 00:57:06\";updated_by|s:7:\"Sabrang\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('r6ej9949to7oa8u8anenqv73ucng5ao8','127.0.0.1',1676811707,'__ci_last_regenerate|i:1676811561;id|s:10:\"1429041001\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-19 19:56:36\";last_logout|s:19:\"2023-02-19 20:15:14\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:50:\"data/20230219/c67795994187633acad7c6b9f5a05df3.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-19 00:57:06\";updated_by|s:7:\"Sabrang\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('ldnvqt4djsm6s5ksq37ckp6c4uktjbfe','127.0.0.1',1676812139,'__ci_last_regenerate|i:1676811899;id|s:10:\"1429041001\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-19 19:56:36\";last_logout|s:19:\"2023-02-19 20:15:14\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:50:\"data/20230219/c67795994187633acad7c6b9f5a05df3.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-19 00:57:06\";updated_by|s:7:\"Sabrang\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('d715ae86ncdspmo990k7r5di9hvqf8uq','127.0.0.1',1676812492,'__ci_last_regenerate|i:1676812203;id|s:10:\"1429041001\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-19 19:56:36\";last_logout|s:19:\"2023-02-19 20:15:14\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:50:\"data/20230219/c67795994187633acad7c6b9f5a05df3.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-19 00:57:06\";updated_by|s:7:\"Sabrang\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('12cg3avbko0ufid9cijqdkjmri1bsmn9','127.0.0.1',1676812811,'__ci_last_regenerate|i:1676812541;id|s:10:\"1429041001\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-19 19:56:36\";last_logout|s:19:\"2023-02-19 20:15:14\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:50:\"data/20230219/c67795994187633acad7c6b9f5a05df3.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-19 00:57:06\";updated_by|s:7:\"Sabrang\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('jof00i2oj869fsp54oca375m5k417ut7','127.0.0.1',1676813111,'__ci_last_regenerate|i:1676812952;id|s:10:\"1429041001\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-19 19:56:36\";last_logout|s:19:\"2023-02-19 20:15:14\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:50:\"data/20230219/c67795994187633acad7c6b9f5a05df3.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-19 00:57:06\";updated_by|s:7:\"Sabrang\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('3pvqm4tnc5v3puesteloc6e50ptpktj9','127.0.0.1',1676813333,'__ci_last_regenerate|i:1676813255;id|s:10:\"1429041001\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-19 19:56:36\";last_logout|s:19:\"2023-02-19 20:15:14\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:50:\"data/20230219/c67795994187633acad7c6b9f5a05df3.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-19 00:57:06\";updated_by|s:7:\"Sabrang\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('bcgvfm5u11ie260r5u51ut4kqk51kvv6','127.0.0.1',1676814916,'__ci_last_regenerate|i:1676814273;id|s:10:\"1429041001\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-19 19:56:36\";last_logout|s:19:\"2023-02-19 20:15:14\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|N;created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-19 00:57:06\";updated_by|s:7:\"Sabrang\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('esdbguhug50385nkfeu3c9k0fodtbt7b','127.0.0.1',1676815541,'__ci_last_regenerate|i:1676815251;id|s:10:\"1429041001\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-02-19 20:19:52\";last_logout|s:19:\"2023-02-19 22:00:51\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";file_foto|s:50:\"data/20230219/c67795994187633acad7c6b9f5a05df3.png\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-02-19 00:57:06\";updated_by|s:7:\"Sabrang\";is_login|b:1;nama_group|s:5:\"Siswa\";');

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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(100) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UNIQ` (`nip`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `m_guru` */

insert  into `m_guru`(`id`,`nip`,`nama`,`golongan_id`,`nama_golongan`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(3,'195801081987032001','Dr. Ir. Mustari S. Lamada, M.T.',1,'I/a','2023-01-17 23:24:33','Administrator',NULL,'');

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
(1,'admin','/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==',1,'','Administrator','sabrang@gmail.com','','Administrator','2023-02-19 01:14:30','2023-02-19 01:17:32',1,0,'assets/images/users/avatar-11.png','2023-01-07 21:34:10','','2023-01-08 21:07:36','Administrator'),
(8,'195801081987032001','VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==',2,'195801081987032001','Dr. Ir. Mustari S. Lamada, M.T.','','','','2023-02-18 23:19:35','2023-02-18 23:20:26',1,1,'assets/images/users/avatar-11.png','2023-01-17 23:24:33','Administrator',NULL,''),
(9,'rido','k9rzsvs0/VCCQWbpblz9LdotGtSgezscx4aq3KjwDYLdjkpfYMPYhWTOCZdXmSVKzU55n3YDpCgXWRVqAoKDOQ==',4,'9','Rido','rido@gmail.com','PT. Murfa Surya Mahardika','User Industri','2023-02-19 20:15:21','2023-02-19 20:15:58',1,8,'assets/images/users/avatar-11.png','2023-01-18 00:33:01','Dr. Ir. Mustari S. Lamada, M.T.',NULL,''),
(1429041001,'1429041001','H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==',3,'1429041001','Sabrang','','','','2023-02-19 22:00:54','2023-02-19 22:00:51',1,1,'data/20230219/c67795994187633acad7c6b9f5a05df3.png','2023-01-17 23:17:08','','2023-02-19 00:57:06','Sabrang');

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
  `status` int(11) NOT NULL COMMENT '0 Tampa Keterangan\r\n1 Hadir\r\n2 Izin\r\n3 Sakit',
  `keterangan_siswa` text NOT NULL,
  `verifikasi_stat` int(11) DEFAULT NULL,
  `verifikasi_at` timestamp(6) NULL DEFAULT NULL,
  `verifikasi_by` varchar(100) NOT NULL DEFAULT '',
  `verifikasi_ket` text,
  `created_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  `created_by` varchar(100) NOT NULL DEFAULT '',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbl_absen` */

insert  into `tbl_absen`(`id`,`siswa_id`,`nama_siswa`,`tanggal`,`waktu_masuk`,`waktu_pulang`,`absen_masuk`,`absen_pulang`,`status`,`keterangan_siswa`,`verifikasi_stat`,`verifikasi_at`,`verifikasi_by`,`verifikasi_ket`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(10,'1429041001','Sabrang','2023-02-19','07:30:00.000000','16:00:00.000000','00:06:17.000000','00:07:19.000000',1,'',NULL,NULL,'',NULL,'2023-02-19 00:06:19.000000','Sabrang','2023-02-19 00:07:19','Sabrang');

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
(3,'1429041001','Sabrang','2023-01-28','Anda bisa memberikan alasan tersebut kepada teman yang ingin utang kepadamu. Cukup berkata, &quot;Maaf, belum bisa. Soalnya duit saya lagi dipinjam orang, sampai sekarang belum dikatakan.&quot;','data/20230128/1c904f006a927406902baf7e1fd10ecb.JPG','0','2023-02-19 20:15:19','Rido','2023-01-28 20:50:28','Sabrang','2023-01-29 20:15:29','Sabrang');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
