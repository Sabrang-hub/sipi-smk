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
('pb4r4fqqic4je75p9o3hn0lf16abqsja','127.0.0.1',1674975851,'__ci_last_regenerate|i:1674975783;id|s:1:\"8\";username|s:18:\"195801081987032001\";password|s:88:\"VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==\";group_id|s:1:\"2\";kode|s:18:\"195801081987032001\";nama|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-28 22:31:46\";last_logout|s:19:\"2023-01-29 01:08:25\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";created_at|s:19:\"2023-01-17 23:24:33\";created_by|s:13:\"Administrator\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('00cmo7t6t3qit5g33k9fo332apdmskfj','127.0.0.1',1674976340,'__ci_last_regenerate|i:1674976145;id|s:1:\"8\";username|s:18:\"195801081987032001\";password|s:88:\"VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==\";group_id|s:1:\"2\";kode|s:18:\"195801081987032001\";nama|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-29 15:04:11\";last_logout|s:19:\"2023-01-29 15:09:05\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";created_at|s:19:\"2023-01-17 23:24:33\";created_by|s:13:\"Administrator\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('sav8pk9ib816qqen8qpmb97tqpljri8b','127.0.0.1',1674976793,'__ci_last_regenerate|i:1674976507;id|s:1:\"8\";username|s:18:\"195801081987032001\";password|s:88:\"VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==\";group_id|s:1:\"2\";kode|s:18:\"195801081987032001\";nama|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-29 15:04:11\";last_logout|s:19:\"2023-01-29 15:09:05\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";created_at|s:19:\"2023-01-17 23:24:33\";created_by|s:13:\"Administrator\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('fjuch3alui5tjd6ug977ei0a1b5q8961','127.0.0.1',1674976939,'__ci_last_regenerate|i:1674976827;id|s:1:\"8\";username|s:18:\"195801081987032001\";password|s:88:\"VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==\";group_id|s:1:\"2\";kode|s:18:\"195801081987032001\";nama|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-29 15:04:11\";last_logout|s:19:\"2023-01-29 15:09:05\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";created_at|s:19:\"2023-01-17 23:24:33\";created_by|s:13:\"Administrator\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('nk4vi4humuqo6e96iikdokicird7t8bm','127.0.0.1',1674977031,'__ci_last_regenerate|i:1674977031;'),
('am9ug89njg37aqum4s42tuskhfolc5l4','127.0.0.1',1674977032,'__ci_last_regenerate|i:1674977031;'),
('s9j425rofuoa2msk5e88e8hrrpbkc5um','127.0.0.1',1674977537,'__ci_last_regenerate|i:1674977270;id|s:1:\"8\";username|s:18:\"195801081987032001\";password|s:88:\"VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==\";group_id|s:1:\"2\";kode|s:18:\"195801081987032001\";nama|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-29 15:04:11\";last_logout|s:19:\"2023-01-29 15:09:05\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";created_at|s:19:\"2023-01-17 23:24:33\";created_by|s:13:\"Administrator\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('nra1j3jo4f9gevf2gm38e5o6ej5n5ev3','127.0.0.1',1674978135,'__ci_last_regenerate|i:1674977859;id|s:1:\"8\";username|s:18:\"195801081987032001\";password|s:88:\"VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==\";group_id|s:1:\"2\";kode|s:18:\"195801081987032001\";nama|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-29 15:04:11\";last_logout|s:19:\"2023-01-29 15:09:05\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";created_at|s:19:\"2023-01-17 23:24:33\";created_by|s:13:\"Administrator\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('aln4q1j3ufqceni7r918vueci7bk988q','127.0.0.1',1674979125,'__ci_last_regenerate|i:1674978904;id|s:1:\"8\";username|s:18:\"195801081987032001\";password|s:88:\"VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==\";group_id|s:1:\"2\";kode|s:18:\"195801081987032001\";nama|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-29 15:04:11\";last_logout|s:19:\"2023-01-29 15:09:05\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";created_at|s:19:\"2023-01-17 23:24:33\";created_by|s:13:\"Administrator\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('sq9fijjeup50a95mjelilhvvaua5dv7a','127.0.0.1',1674979448,'__ci_last_regenerate|i:1674979218;id|s:1:\"8\";username|s:18:\"195801081987032001\";password|s:88:\"VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==\";group_id|s:1:\"2\";kode|s:18:\"195801081987032001\";nama|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-29 15:04:11\";last_logout|s:19:\"2023-01-29 15:09:05\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";created_at|s:19:\"2023-01-17 23:24:33\";created_by|s:13:\"Administrator\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('5akms05oaicp4mu59t2khikj0jqg36hq','127.0.0.1',1674980018,'__ci_last_regenerate|i:1674979727;id|s:1:\"8\";username|s:18:\"195801081987032001\";password|s:88:\"VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==\";group_id|s:1:\"2\";kode|s:18:\"195801081987032001\";nama|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-29 15:04:11\";last_logout|s:19:\"2023-01-29 15:09:05\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";created_at|s:19:\"2023-01-17 23:24:33\";created_by|s:13:\"Administrator\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('bfrlpmcqgtpl66gpjnc37lpt17qsfg49','127.0.0.1',1674980355,'__ci_last_regenerate|i:1674980059;id|s:1:\"8\";username|s:18:\"195801081987032001\";password|s:88:\"VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==\";group_id|s:1:\"2\";kode|s:18:\"195801081987032001\";nama|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-29 15:04:11\";last_logout|s:19:\"2023-01-29 15:09:05\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";created_at|s:19:\"2023-01-17 23:24:33\";created_by|s:13:\"Administrator\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('8im5vfar6u1o7v70m62j6lf2169s50g6','127.0.0.1',1674980532,'__ci_last_regenerate|i:1674980477;id|s:1:\"8\";username|s:18:\"195801081987032001\";password|s:88:\"VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==\";group_id|s:1:\"2\";kode|s:18:\"195801081987032001\";nama|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-29 15:04:11\";last_logout|s:19:\"2023-01-29 15:09:05\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";created_at|s:19:\"2023-01-17 23:24:33\";created_by|s:13:\"Administrator\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('7jd2adfp2inq494mbbt8onpvcup7jhfb','127.0.0.1',1674981219,'__ci_last_regenerate|i:1674980938;id|s:1:\"8\";username|s:18:\"195801081987032001\";password|s:88:\"VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==\";group_id|s:1:\"2\";kode|s:18:\"195801081987032001\";nama|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-29 15:04:11\";last_logout|s:19:\"2023-01-29 15:09:05\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";created_at|s:19:\"2023-01-17 23:24:33\";created_by|s:13:\"Administrator\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('mgqsm8ga4ni4fo00h3mtbrv5uls8gifv','127.0.0.1',1674981312,'__ci_last_regenerate|i:1674981298;id|s:1:\"8\";username|s:18:\"195801081987032001\";password|s:88:\"VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==\";group_id|s:1:\"2\";kode|s:18:\"195801081987032001\";nama|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-29 15:04:11\";last_logout|s:19:\"2023-01-29 15:09:05\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";created_at|s:19:\"2023-01-17 23:24:33\";created_by|s:13:\"Administrator\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('9rb36rnchnq8159ut55nn1s9gtrpcf6i','127.0.0.1',1674991141,'__ci_last_regenerate|i:1674990862;id|s:1:\"8\";username|s:18:\"195801081987032001\";password|s:88:\"VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==\";group_id|s:1:\"2\";kode|s:18:\"195801081987032001\";nama|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-29 15:09:15\";last_logout|s:19:\"2023-01-29 15:09:05\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";created_at|s:19:\"2023-01-17 23:24:33\";created_by|s:13:\"Administrator\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('5sbakv8najabvfgfdvsqqqs4nj762991','127.0.0.1',1674991420,'__ci_last_regenerate|i:1674991241;id|s:1:\"8\";username|s:18:\"195801081987032001\";password|s:88:\"VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==\";group_id|s:1:\"2\";kode|s:18:\"195801081987032001\";nama|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-29 15:09:15\";last_logout|s:19:\"2023-01-29 15:09:05\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";created_at|s:19:\"2023-01-17 23:24:33\";created_by|s:13:\"Administrator\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('li5tbi0q4skes7o7pvkususnodhnk89t','127.0.0.1',1674992035,'__ci_last_regenerate|i:1674991737;id|s:1:\"8\";username|s:18:\"195801081987032001\";password|s:88:\"VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==\";group_id|s:1:\"2\";kode|s:18:\"195801081987032001\";nama|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-29 15:09:15\";last_logout|s:19:\"2023-01-29 15:09:05\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";created_at|s:19:\"2023-01-17 23:24:33\";created_by|s:13:\"Administrator\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('1i9gd70iqg1r399r0rcr0kogi9hhf81o','127.0.0.1',1674991976,'__ci_last_regenerate|i:1674991976;'),
('bn2rcpbcsribhd5u0nhusf1d4ruqbqql','127.0.0.1',1674991976,'__ci_last_regenerate|i:1674991976;'),
('ki8mfibig57c0r7qq2onrj26j1lqks3a','127.0.0.1',1674992704,'__ci_last_regenerate|i:1674992396;id|s:1:\"8\";username|s:18:\"195801081987032001\";password|s:88:\"VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==\";group_id|s:1:\"2\";kode|s:18:\"195801081987032001\";nama|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-29 15:09:15\";last_logout|s:19:\"2023-01-29 15:09:05\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";created_at|s:19:\"2023-01-17 23:24:33\";created_by|s:13:\"Administrator\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('n3ani9kavu3sn3p9j7bhkjem61umi25d','127.0.0.1',1674992701,'__ci_last_regenerate|i:1674992701;'),
('q0ri0p26o4t459i0eq7v50jsciobe82v','127.0.0.1',1674992985,'__ci_last_regenerate|i:1674992757;id|s:1:\"8\";username|s:18:\"195801081987032001\";password|s:88:\"VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==\";group_id|s:1:\"2\";kode|s:18:\"195801081987032001\";nama|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-29 15:09:15\";last_logout|s:19:\"2023-01-29 15:09:05\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";created_at|s:19:\"2023-01-17 23:24:33\";created_by|s:13:\"Administrator\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('6g8fqf5rbf38353kes3osvcm6v21jtof','127.0.0.1',1674994508,'__ci_last_regenerate|i:1674993138;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-29 01:08:33\";last_logout|s:19:\"2023-01-28 22:31:31\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('9vv1o72kn04g4t4cu3o98bddkhaol9j8','127.0.0.1',1674994557,'__ci_last_regenerate|i:1674994550;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-29 19:52:21\";last_logout|s:19:\"2023-01-29 20:15:14\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('50iepg193vb6mk6smtbj8l91f5ed5b1p','127.0.0.1',1674995316,'__ci_last_regenerate|i:1674995079;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-29 19:52:21\";last_logout|s:19:\"2023-01-29 20:15:14\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('9861be10k2fvsqraa3622giimb07pmpj','127.0.0.1',1674995343,'__ci_last_regenerate|i:1674995343;'),
('uqc1smb81gfdmbc58523bpicro87lqqn','127.0.0.1',1674995921,'__ci_last_regenerate|i:1674995688;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-01-28 18:44:33\";last_logout|s:19:\"2023-01-28 18:46:42\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 21:07:36\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('jqb5t7mmh6btok75l12to94q5c346iq8','127.0.0.1',1674996211,'__ci_last_regenerate|i:1674996211;'),
('go6buqojnj5of2tb9tv0gq7rlbb9sa20','127.0.0.1',1674997307,'__ci_last_regenerate|i:1674997307;'),
('i058l0pn467vj2ql99at2028q75hp38j','127.0.0.1',1675171176,'__ci_last_regenerate|i:1675170883;'),
('0f8lal51uuqj53bnf3t6k4d32kdss88h','127.0.0.1',1675171507,'__ci_last_regenerate|i:1675171215;'),
('fppqk42rnaqjgcsrsngafaagggur5f7g','127.0.0.1',1675171804,'__ci_last_regenerate|i:1675171526;'),
('22ihgk65frnhvg3apeba5dldbfabfk16','127.0.0.1',1675172078,'__ci_last_regenerate|i:1675171855;'),
('vnhctge5ln03o30ap9krqe35u7su14pa','127.0.0.1',1675171870,'__ci_last_regenerate|i:1675171870;'),
('j4rgq8egujg0h3nm03ld6b9g238t2f90','127.0.0.1',1675172535,'__ci_last_regenerate|i:1675172161;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-01-29 20:59:12\";last_logout|s:19:\"2023-01-29 21:01:46\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 21:07:36\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('91th0fc012esjo57ml0d4h9ma1mmcn0l','127.0.0.1',1675172821,'__ci_last_regenerate|i:1675172536;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-01-29 20:59:12\";last_logout|s:19:\"2023-01-29 21:01:46\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 21:07:36\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('po2o9ae43ndutl01sc68544kqvlmdjpp','127.0.0.1',1675172655,'__ci_last_regenerate|i:1675172655;'),
('akrmh02cl31sdksfna9nbk5ugriruojj','127.0.0.1',1675173153,'__ci_last_regenerate|i:1675172853;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-01-29 20:59:12\";last_logout|s:19:\"2023-01-29 21:01:46\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 21:07:36\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('g5v5oirc95982ob2thiadr6eibp921a9','127.0.0.1',1675173458,'__ci_last_regenerate|i:1675173163;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-01-29 20:59:12\";last_logout|s:19:\"2023-01-29 21:01:46\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 21:07:36\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('736hs4klmn4628ocpe5v2l0ninjhmabf','127.0.0.1',1675173775,'__ci_last_regenerate|i:1675173538;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-01-29 20:59:12\";last_logout|s:19:\"2023-01-29 21:01:46\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 21:07:36\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('jrl23khff7ha1v75c3jqvv0ot5hp6238','127.0.0.1',1675174050,'__ci_last_regenerate|i:1675173883;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-01-29 20:59:12\";last_logout|s:19:\"2023-01-29 21:01:46\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 21:07:36\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('jq367je634s0l94lan1oeje28n5kpdqt','127.0.0.1',1675174083,'__ci_last_regenerate|i:1675174083;'),
('dtm1gvot1o67jehrvj3oul4ng7g4aaqb','127.0.0.1',1675174589,'__ci_last_regenerate|i:1675174311;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-01-29 20:59:12\";last_logout|s:19:\"2023-01-29 21:01:46\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 21:07:36\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('p2niapaea7kgq43824du57jjffh3g2u1','127.0.0.1',1675174944,'__ci_last_regenerate|i:1675174645;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-01-29 20:59:12\";last_logout|s:19:\"2023-01-29 21:01:46\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 21:07:36\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('44npsefmb61m7759b47rapd94929mb4d','127.0.0.1',1675175533,'__ci_last_regenerate|i:1675175259;id|s:1:\"8\";username|s:18:\"195801081987032001\";password|s:88:\"VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==\";group_id|s:1:\"2\";kode|s:18:\"195801081987032001\";nama|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-29 20:31:11\";last_logout|s:19:\"2023-01-29 20:34:47\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";created_at|s:19:\"2023-01-17 23:24:33\";created_by|s:13:\"Administrator\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('rcnsso5rceiqcopurgebahlo7jr9fq9e','127.0.0.1',1675176050,'__ci_last_regenerate|i:1675175782;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-29 20:15:54\";last_logout|s:19:\"2023-01-29 20:31:06\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('qpaar70t3h4aa7onrlp9nimd70ls8ib2','127.0.0.1',1675176344,'__ci_last_regenerate|i:1675176098;id|s:1:\"7\";username|s:10:\"1429041001\";password|s:88:\"H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==\";group_id|s:1:\"3\";kode|s:10:\"1429041001\";nama|s:7:\"Sabrang\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-29 20:15:54\";last_logout|s:19:\"2023-01-29 20:31:06\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";created_at|s:19:\"2023-01-17 23:17:08\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-28 18:46:32\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Siswa\";'),
('mig5hprnuhj155bdcnea74q74pnmkcpd','127.0.0.1',1675176419,'__ci_last_regenerate|i:1675176419;'),
('3jvjuilm7gjac5jc4p8lo3up7g3vs655','127.0.0.1',1675176998,'__ci_last_regenerate|i:1675176814;id|s:1:\"8\";username|s:18:\"195801081987032001\";password|s:88:\"VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==\";group_id|s:1:\"2\";kode|s:18:\"195801081987032001\";nama|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-31 22:27:43\";last_logout|s:19:\"2023-01-31 22:36:22\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";created_at|s:19:\"2023-01-17 23:24:33\";created_by|s:13:\"Administrator\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('7of3e77nsf1rqnpr5mqi8e64j40g9qn0','127.0.0.1',1675177528,'__ci_last_regenerate|i:1675177528;'),
('rcfdle5oht76ah5picqi1cjkvo91sovp','127.0.0.1',1675181981,'__ci_last_regenerate|i:1675181951;'),
('cupgvt8f9cl94pptdu470u2fr6so464t','127.0.0.1',1675182620,'__ci_last_regenerate|i:1675182343;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-01-31 23:04:43\";last_logout|s:19:\"2023-02-01 00:25:43\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 21:07:36\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('f8njtmtf77ge53brkb6khd8rhtamkjni','127.0.0.1',1675182478,'__ci_last_regenerate|i:1675182478;'),
('borm2m5425eqia6kk9cbe5lk0o6nush0','127.0.0.1',1675182899,'__ci_last_regenerate|i:1675182670;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-01-31 23:04:43\";last_logout|s:19:\"2023-02-01 00:25:43\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 21:07:36\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('rfeu29j8p0f4ekgk6ut4hhbcdm7idu7n','127.0.0.1',1675182994,'__ci_last_regenerate|i:1675182991;id|s:1:\"8\";username|s:18:\"195801081987032001\";password|s:88:\"VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==\";group_id|s:1:\"2\";kode|s:18:\"195801081987032001\";nama|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";email|s:0:\"\";nama_industri|s:0:\"\";keterangan|s:0:\"\";last_login|s:19:\"2023-01-31 22:53:39\";last_logout|s:19:\"2023-01-31 23:00:55\";status_user_id|s:1:\"1\";user_id|s:1:\"1\";created_at|s:19:\"2023-01-17 23:24:33\";created_by|s:13:\"Administrator\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:4:\"Guru\";'),
('ugfmv5en3f9uk93c32133d71q642304e','127.0.0.1',1675497270,'__ci_last_regenerate|i:1675492617;id|s:1:\"9\";username|s:4:\"rido\";password|s:88:\"k9rzsvs0/VCCQWbpblz9LdotGtSgezscx4aq3KjwDYLdjkpfYMPYhWTOCZdXmSVKzU55n3YDpCgXWRVqAoKDOQ==\";group_id|s:1:\"4\";kode|s:1:\"1\";nama|s:4:\"Rido\";email|s:14:\"rido@gmail.com\";nama_industri|s:25:\"PT. Murfa Surya Mahardika\";keterangan|s:13:\"User Industri\";last_login|s:19:\"2023-02-01 00:25:25\";last_logout|N;status_user_id|s:1:\"1\";user_id|s:1:\"8\";created_at|s:19:\"2023-01-18 00:33:01\";created_by|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:19:\"Pembimbing Lapangan\";'),
('ujia3bkl70rg1gi24902bmqoic4b1gte','127.0.0.1',1675497461,'__ci_last_regenerate|i:1675497270;id|s:1:\"9\";username|s:4:\"rido\";password|s:88:\"k9rzsvs0/VCCQWbpblz9LdotGtSgezscx4aq3KjwDYLdjkpfYMPYhWTOCZdXmSVKzU55n3YDpCgXWRVqAoKDOQ==\";group_id|s:1:\"4\";kode|s:1:\"1\";nama|s:4:\"Rido\";email|s:14:\"rido@gmail.com\";nama_industri|s:25:\"PT. Murfa Surya Mahardika\";keterangan|s:13:\"User Industri\";last_login|s:19:\"2023-02-01 00:25:25\";last_logout|N;status_user_id|s:1:\"1\";user_id|s:1:\"8\";created_at|s:19:\"2023-01-18 00:33:01\";created_by|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:19:\"Pembimbing Lapangan\";'),
('2d2hkjirkvcrjkdj7ddhon28kd71fcno','127.0.0.1',1675497740,'__ci_last_regenerate|i:1675497575;id|s:1:\"9\";username|s:4:\"rido\";password|s:88:\"k9rzsvs0/VCCQWbpblz9LdotGtSgezscx4aq3KjwDYLdjkpfYMPYhWTOCZdXmSVKzU55n3YDpCgXWRVqAoKDOQ==\";group_id|s:1:\"4\";kode|s:1:\"1\";nama|s:4:\"Rido\";email|s:14:\"rido@gmail.com\";nama_industri|s:25:\"PT. Murfa Surya Mahardika\";keterangan|s:13:\"User Industri\";last_login|s:19:\"2023-02-01 00:25:25\";last_logout|N;status_user_id|s:1:\"1\";user_id|s:1:\"8\";created_at|s:19:\"2023-01-18 00:33:01\";created_by|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:19:\"Pembimbing Lapangan\";'),
('nj7qdngdo2so2jgua94gtsa8vt1pterk','127.0.0.1',1675498246,'__ci_last_regenerate|i:1675497939;id|s:1:\"9\";username|s:4:\"rido\";password|s:88:\"k9rzsvs0/VCCQWbpblz9LdotGtSgezscx4aq3KjwDYLdjkpfYMPYhWTOCZdXmSVKzU55n3YDpCgXWRVqAoKDOQ==\";group_id|s:1:\"4\";kode|s:1:\"9\";nama|s:4:\"Rido\";email|s:14:\"rido@gmail.com\";nama_industri|s:25:\"PT. Murfa Surya Mahardika\";keterangan|s:13:\"User Industri\";last_login|s:19:\"2023-02-04 15:54:30\";last_logout|s:19:\"2023-02-04 16:05:39\";status_user_id|s:1:\"1\";user_id|s:1:\"8\";created_at|s:19:\"2023-01-18 00:33:01\";created_by|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:19:\"Pembimbing Lapangan\";'),
('ajp29rfvsjtinftqtt80rlfa7kt2019v','127.0.0.1',1675498466,'__ci_last_regenerate|i:1675498308;id|s:1:\"9\";username|s:4:\"rido\";password|s:88:\"k9rzsvs0/VCCQWbpblz9LdotGtSgezscx4aq3KjwDYLdjkpfYMPYhWTOCZdXmSVKzU55n3YDpCgXWRVqAoKDOQ==\";group_id|s:1:\"4\";kode|s:1:\"9\";nama|s:4:\"Rido\";email|s:14:\"rido@gmail.com\";nama_industri|s:25:\"PT. Murfa Surya Mahardika\";keterangan|s:13:\"User Industri\";last_login|s:19:\"2023-02-04 15:54:30\";last_logout|s:19:\"2023-02-04 16:05:39\";status_user_id|s:1:\"1\";user_id|s:1:\"8\";created_at|s:19:\"2023-01-18 00:33:01\";created_by|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:19:\"Pembimbing Lapangan\";'),
('kaahnvtpilbd2pbopbqsjssuifurptp7','127.0.0.1',1675498866,'__ci_last_regenerate|i:1675498802;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-02-04 14:36:09\";last_logout|s:19:\"2023-02-04 14:36:57\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 21:07:36\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('mlo5p9kg3qjh8kdcno48sf77r9n38ep6','127.0.0.1',1675507899,'__ci_last_regenerate|i:1675506020;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-02-04 18:19:41\";last_logout|s:19:\"2023-02-04 18:20:19\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 21:07:36\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('n9dabq9p4dhshu5nl57fiuc4k0n03uhu','127.0.0.1',1675507899,'__ci_last_regenerate|i:1675507899;id|s:1:\"1\";username|s:5:\"admin\";password|s:88:\"/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==\";group_id|s:1:\"1\";kode|s:0:\"\";nama|s:13:\"Administrator\";email|s:17:\"sabrang@gmail.com\";nama_industri|s:0:\"\";keterangan|s:13:\"Administrator\";last_login|s:19:\"2023-02-04 18:19:41\";last_logout|s:19:\"2023-02-04 18:20:19\";status_user_id|s:1:\"1\";user_id|s:1:\"0\";created_at|s:19:\"2023-01-07 21:34:10\";created_by|s:0:\"\";updated_at|s:19:\"2023-01-08 21:07:36\";updated_by|s:13:\"Administrator\";is_login|b:1;nama_group|s:5:\"Admin\";'),
('6h18pefn4329p0a6bk76hm368aao9nol','127.0.0.1',1675508366,'__ci_last_regenerate|i:1675508256;id|s:1:\"9\";username|s:4:\"rido\";password|s:88:\"k9rzsvs0/VCCQWbpblz9LdotGtSgezscx4aq3KjwDYLdjkpfYMPYhWTOCZdXmSVKzU55n3YDpCgXWRVqAoKDOQ==\";group_id|s:1:\"4\";kode|s:1:\"9\";nama|s:4:\"Rido\";email|s:14:\"rido@gmail.com\";nama_industri|s:25:\"PT. Murfa Surya Mahardika\";keterangan|s:13:\"User Industri\";last_login|s:19:\"2023-02-04 18:19:16\";last_logout|s:19:\"2023-02-04 18:19:37\";status_user_id|s:1:\"1\";user_id|s:1:\"8\";created_at|s:19:\"2023-01-18 00:33:01\";created_by|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:19:\"Pembimbing Lapangan\";'),
('s0afv1id49ffmgsv17jn9ldb5b5tkqmt','127.0.0.1',1675509236,'__ci_last_regenerate|i:1675508952;id|s:1:\"9\";username|s:4:\"rido\";password|s:88:\"k9rzsvs0/VCCQWbpblz9LdotGtSgezscx4aq3KjwDYLdjkpfYMPYhWTOCZdXmSVKzU55n3YDpCgXWRVqAoKDOQ==\";group_id|s:1:\"4\";kode|s:1:\"9\";nama|s:4:\"Rido\";email|s:14:\"rido@gmail.com\";nama_industri|s:25:\"PT. Murfa Surya Mahardika\";keterangan|s:13:\"User Industri\";last_login|s:19:\"2023-02-04 18:19:16\";last_logout|s:19:\"2023-02-04 18:19:37\";status_user_id|s:1:\"1\";user_id|s:1:\"8\";created_at|s:19:\"2023-01-18 00:33:01\";created_by|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:19:\"Pembimbing Lapangan\";'),
('1kl5plm35aflalatmcuduab22mo1fboo','127.0.0.1',1675510018,'__ci_last_regenerate|i:1675509735;id|s:1:\"9\";username|s:4:\"rido\";password|s:88:\"k9rzsvs0/VCCQWbpblz9LdotGtSgezscx4aq3KjwDYLdjkpfYMPYhWTOCZdXmSVKzU55n3YDpCgXWRVqAoKDOQ==\";group_id|s:1:\"4\";kode|s:1:\"9\";nama|s:4:\"Rido\";email|s:14:\"rido@gmail.com\";nama_industri|s:25:\"PT. Murfa Surya Mahardika\";keterangan|s:13:\"User Industri\";last_login|s:19:\"2023-02-04 18:19:16\";last_logout|s:19:\"2023-02-04 18:19:37\";status_user_id|s:1:\"1\";user_id|s:1:\"8\";created_at|s:19:\"2023-01-18 00:33:01\";created_by|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:19:\"Pembimbing Lapangan\";'),
('u9poek7pkkd393sc00g0u25309k9nkvu','127.0.0.1',1675509747,'__ci_last_regenerate|i:1675509747;'),
('5oiei1734a7f330iespc8rulg2unr849','127.0.0.1',1675509748,'__ci_last_regenerate|i:1675509748;'),
('c1a95utof45ceuj1t46jr5b29e1375jg','127.0.0.1',1675511027,'__ci_last_regenerate|i:1675510767;id|s:1:\"9\";username|s:4:\"rido\";password|s:88:\"k9rzsvs0/VCCQWbpblz9LdotGtSgezscx4aq3KjwDYLdjkpfYMPYhWTOCZdXmSVKzU55n3YDpCgXWRVqAoKDOQ==\";group_id|s:1:\"4\";kode|s:1:\"9\";nama|s:4:\"Rido\";email|s:14:\"rido@gmail.com\";nama_industri|s:25:\"PT. Murfa Surya Mahardika\";keterangan|s:13:\"User Industri\";last_login|s:19:\"2023-02-04 19:35:02\";last_logout|s:19:\"2023-02-04 19:35:41\";status_user_id|s:1:\"1\";user_id|s:1:\"8\";created_at|s:19:\"2023-01-18 00:33:01\";created_by|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:19:\"Pembimbing Lapangan\";'),
('bhcmuvg0spcackgkhtefc41m0e2e1nuu','127.0.0.1',1675511395,'__ci_last_regenerate|i:1675511213;id|s:1:\"9\";username|s:4:\"rido\";password|s:88:\"k9rzsvs0/VCCQWbpblz9LdotGtSgezscx4aq3KjwDYLdjkpfYMPYhWTOCZdXmSVKzU55n3YDpCgXWRVqAoKDOQ==\";group_id|s:1:\"4\";kode|s:1:\"9\";nama|s:4:\"Rido\";email|s:14:\"rido@gmail.com\";nama_industri|s:25:\"PT. Murfa Surya Mahardika\";keterangan|s:13:\"User Industri\";last_login|s:19:\"2023-02-04 19:35:02\";last_logout|s:19:\"2023-02-04 19:35:41\";status_user_id|s:1:\"1\";user_id|s:1:\"8\";created_at|s:19:\"2023-01-18 00:33:01\";created_by|s:31:\"Dr. Ir. Mustari S. Lamada, M.T.\";updated_at|N;updated_by|s:0:\"\";is_login|b:1;nama_group|s:19:\"Pembimbing Lapangan\";');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `m_guru` */

insert  into `m_guru`(`id`,`nip`,`nama`,`golongan_id`,`nama_golongan`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(3,'195801081987032001','Dr. Ir. Mustari S. Lamada, M.T.',1,'I/a','2023-01-17 23:24:33','Administrator',NULL,'');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `m_siswa` */

insert  into `m_siswa`(`id`,`nis`,`nama`,`jurusan_id`,`nama_jurusan`,`kelas_id`,`nama_kelas`,`tahun_masuk`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(4,'1429041001','Sabrang',1,'Teknik Otomotif',3,'III',2011,'2023-01-17 23:17:08','Administrator',NULL,'');

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
  `nama_industri` varchar(100) NOT NULL DEFAULT '',
  `keterangan` varchar(255) NOT NULL DEFAULT '',
  `last_login` timestamp NULL DEFAULT NULL,
  `last_logout` timestamp NULL DEFAULT NULL,
  `status_user_id` int(2) NOT NULL DEFAULT '0',
  `user_id` int(64) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) NOT NULL DEFAULT '',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ` (`username`,`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `m_user` */

insert  into `m_user`(`id`,`username`,`password`,`group_id`,`kode`,`nama`,`email`,`nama_industri`,`keterangan`,`last_login`,`last_logout`,`status_user_id`,`user_id`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(1,'admin','/ZthFL9VBx2NQYcnpiVAPa/Z/9zdeURJzWaRZRpwg/+IBGjD02K2G7BQpKDYr1R3QieOHBsI/cRBZciojXC4hQ==',1,'','Administrator','sabrang@gmail.com','','Administrator','2023-02-04 19:35:44','2023-02-04 19:39:27',1,0,'2023-01-07 21:34:10','','2023-01-08 21:07:36','Administrator'),
(7,'1429041001','H45ZY43s1F88rcLnClw/Z/d3cSlN/gUPyBBDWAmKVeKgIM1daXNK0GLqshvENvlPNNmfWQs5XV2Itg1KR7knUw==',3,'1429041001','Sabrang','','','','2023-01-31 22:36:25','2023-01-31 22:53:34',1,1,'2023-01-17 23:17:08','','2023-01-28 18:46:32','Administrator'),
(8,'195801081987032001','VFgcnrT8mPoVdgSmifkH2aiokb1MhyFZOH5bONBRCw4tG/XgRkSo9L69z5XtzLOTIDUV5/+VscsZTetWp4Kb/w==',2,'195801081987032001','Dr. Ir. Mustari S. Lamada, M.T.','','','','2023-02-01 00:36:34','2023-01-31 23:00:55',1,1,'2023-01-17 23:24:33','Administrator',NULL,''),
(9,'rido','k9rzsvs0/VCCQWbpblz9LdotGtSgezscx4aq3KjwDYLdjkpfYMPYhWTOCZdXmSVKzU55n3YDpCgXWRVqAoKDOQ==',4,'9','Rido','rido@gmail.com','PT. Murfa Surya Mahardika','User Industri','2023-02-04 19:39:30','2023-02-04 19:35:41',1,8,'2023-01-18 00:33:01','Dr. Ir. Mustari S. Lamada, M.T.',NULL,'');

/*Table structure for table `tbl_kelompok` */

DROP TABLE IF EXISTS `tbl_kelompok`;

CREATE TABLE `tbl_kelompok` (
  `id` int(64) NOT NULL AUTO_INCREMENT,
  `industri_id` int(64) NOT NULL DEFAULT '0',
  `nama_industri` varchar(100) NOT NULL DEFAULT '',
  `guru_id` varchar(30) NOT NULL DEFAULT '',
  `nama_guru` varchar(100) NOT NULL DEFAULT '',
  `siswa_id` varchar(30) NOT NULL DEFAULT '',
  `nama_siswa` varchar(100) NOT NULL DEFAULT '',
  `tanggal_awal` date DEFAULT NULL,
  `tanggal_akhir` date DEFAULT NULL,
  `pembimbing_id` int(64) NOT NULL DEFAULT '0',
  `nama_pembimbing` varchar(100) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) NOT NULL DEFAULT '',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_kelompok` */

insert  into `tbl_kelompok`(`id`,`industri_id`,`nama_industri`,`guru_id`,`nama_guru`,`siswa_id`,`nama_siswa`,`tanggal_awal`,`tanggal_akhir`,`pembimbing_id`,`nama_pembimbing`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(4,1,'PT. Murfa Surya Mahardika','195801081987032001','Dr. Ir. Mustari S. Lamada, M.T.','1429041001','Sabrang','2023-01-01','2023-01-31',9,'Rido','2023-01-17 22:49:17','Administrator','2023-01-29 19:49:29','Dr. Ir. Mustari S. Lamada, M.T.');

/*Table structure for table `tbl_keterangan` */

DROP TABLE IF EXISTS `tbl_keterangan`;

CREATE TABLE `tbl_keterangan` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `logbook_id` bigint(64) NOT NULL DEFAULT '0',
  `keterangan` text NOT NULL,
  `jenis` int(11) NOT NULL DEFAULT '0' COMMENT '1:Guru 2:Pembimbing',
  `status` int(2) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) NOT NULL DEFAULT '',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_keterangan` */

insert  into `tbl_keterangan`(`id`,`logbook_id`,`keterangan`,`jenis`,`status`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(1,3,'tes keterangan siswa',1,0,'2023-01-29 00:40:29','Dr. Ir. Mustari S. Lamada, M.T.',NULL,''),
(2,3,'Epcot is a theme park at Walt Disney World Resort featuring exciting attractions, international pavilions, award-winning fireworks and seasonal special events',1,0,'2023-01-29 00:45:29','Dr. Ir. Mustari S. Lamada, M.T.',NULL,''),
(3,3,'sdfasdfas adfdsfc',1,0,'2023-01-29 00:47:29','Dr. Ir. Mustari S. Lamada, M.T.',NULL,''),
(4,3,'keterangan pembimbing',2,0,'2023-02-04 16:14:04','',NULL,'');

/*Table structure for table `tbl_logbook` */

DROP TABLE IF EXISTS `tbl_logbook`;

CREATE TABLE `tbl_logbook` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_logbook` */

insert  into `tbl_logbook`(`id`,`siswa_id`,`nama_siswa`,`tanggal`,`uraian`,`file_foto`,`verifikasi_stat`,`verifikasi_at`,`verifikasi_by`,`created_at`,`created_by`,`updated_at`,`updated_by`) values 
(3,'1429041001','Sabrang','2023-01-28','Anda bisa memberikan alasan tersebut kepada teman yang ingin utang kepadamu. Cukup berkata, &quot;Maaf, belum bisa. Soalnya duit saya lagi dipinjam orang, sampai sekarang belum dikatakan.&quot;','data/20230128/1c904f006a927406902baf7e1fd10ecb.JPG','0','2023-02-04 19:34:04','Administrator','2023-01-28 20:50:28','Sabrang','2023-01-29 20:15:29','Sabrang');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
