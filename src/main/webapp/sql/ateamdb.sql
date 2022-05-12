-- --------------------------------------------------------
-- 호스트:                          10.100.204.23
-- 서버 버전:                        8.0.21 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- ateamdb 데이터베이스 구조 내보내기
DROP DATABASE IF EXISTS `ateamdb`;
CREATE DATABASE IF NOT EXISTS `ateamdb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ateamdb`;

-- 테이블 ateamdb.tblboard 구조 내보내기
CREATE TABLE IF NOT EXISTS `tblboard` (
  `num` int NOT NULL AUTO_INCREMENT,
  `id` varchar(20) DEFAULT NULL,
  `subject` char(40) DEFAULT NULL,
  `content` text,
  `pos` int unsigned DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `depth` int unsigned DEFAULT NULL,
  `regdate` date DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `count` int unsigned DEFAULT NULL,
  `type_board` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type_cat` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`num`),
  KEY `id` (`id`),
  CONSTRAINT `tblboard_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tblmember` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1275 DEFAULT CHARSET=utf8;

-- 테이블 데이터 ateamdb.tblboard:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `tblboard` DISABLE KEYS */;
INSERT INTO `tblboard` (`num`, `id`, `subject`, `content`, `pos`, `ref`, `depth`, `regdate`, `ip`, `count`, `type_board`, `type_cat`) VALUES
	(930, NULL, '가사해석', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'base', '가사해석'),
	(933, NULL, '음악', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'base', '음악'),
	(934, NULL, '리뷰', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'base', '리뷰'),
	(935, NULL, '일반', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'base', '일반'),
	(936, NULL, '공지', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'base', '공지'),
	(1010, NULL, '인증/후기', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'base', 'certification/review'),
	(1031, NULL, '그림/아트웍', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'base', 'painting/artwork'),
	(1217, NULL, '인증/후기', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'base', 'certification/review'),
	(1243, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'base', '인증/후기'),
	(1244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'base', '그림/아트웍'),
	(1246, 'aaa', 'ㅁㄴㅇㄹ', 'ㅁㄴㅇㄹ', 0, 1245, 0, '2022-05-12', '127.0.0.1', 0, 'board1', '가사해석'),
	(1247, 'aaa', 'ㅁㄴㅇㄹ', 'ㅁㄴㅇㄹ', 0, 1247, 0, '2022-05-12', '127.0.0.1', 0, 'board1', '음악'),
	(1248, 'aaa', 'ㅁㄴㅇㄹ', 'ㅁㄴㅇㄹ', 0, 1248, 0, '2022-05-12', '127.0.0.1', 0, 'board1', '리뷰'),
	(1249, 'aaa', 'ㅁㅇㄴㄹ', 'ㅁㄴㅇㄹ', 0, 1249, 0, '2022-05-12', '127.0.0.1', 0, 'board1', '공지'),
	(1250, 'aaa', 'ㅁㄴㅇㄹ', 'ㅁㄴㅇㄹ', 0, 1250, 0, '2022-05-12', '127.0.0.1', 0, 'board1', '인증/후기'),
	(1251, 'aaa', 'ㅁㄴㅇㄹ', 'ㅁㄴㄹㅇ', 0, 1251, 0, '2022-05-12', '127.0.0.1', 0, 'board1', '그림/아트웍'),
	(1252, 'aaa', 'ㅁㄴㅇㄹ', 'ㅁㄴㅇㄹ', 0, 1252, 0, '2022-05-12', '127.0.0.1', 0, 'board1', '일반'),
	(1253, 'aaa', 'ㅁㄴㅇㄹ', 'ㅁㄴㅇㄹ', 0, 1259, 0, '2022-05-12', '127.0.0.1', 2, 'board1', '일반'),
	(1254, 'aaa', 'ㅁㄴㅇㄹ', 'ㅁㄴㄹㅇ', 0, 1258, 0, '2022-05-12', '127.0.0.1', 3, 'board1', '그림/아트웍'),
	(1255, 'aaa', 'ㅁㄴㅇㄹ', 'ㅁㄴㅇㄹ', 0, 1257, 0, '2022-05-12', '127.0.0.1', 0, 'board1', '인증/후기'),
	(1256, 'aaa', 'ㅁㅇㄴㄹ', 'ㅁㄴㅇㄹ', 0, 1256, 0, '2022-05-12', '127.0.0.1', 0, 'board1', '공지'),
	(1257, 'aaa', 'ㅁㄴㅇㄹ', 'ㅁㄴㅇㄹ', 0, 1255, 0, '2022-05-12', '127.0.0.1', 0, 'board1', '리뷰'),
	(1258, 'aaa', 'ㅁㄴㅇㄹ', 'ㅁㄴㅇㄹ', 0, 1254, 0, '2022-05-12', '127.0.0.1', 0, 'board1', '음악'),
	(1259, 'aaa', 'ㅁㄴㅇㄹ', 'ㅁㄴㅇㄹ', 0, 1253, 0, '2022-05-12', '127.0.0.1', 0, 'board1', '가사해석'),
	(1260, 'aaa', 'adf', 'asdf', 0, 1260, 0, '2022-05-12', '127.0.0.1', 0, 'board1', '리뷰'),
	(1261, 'aaa', 'adsf', 'asdf', 0, 1261, 0, '2022-05-12', '127.0.0.1', 0, 'board1', '음악'),
	(1263, 'aaa', 'ㅁㄴㅇㄹ', 'ㅁㅇㄴㄹ', 0, 1262, 0, '2022-05-12', '127.0.0.1', 1, 'board1', '리뷰'),
	(1264, 'aaa', '└ ㅁㄴㅇㄹ', 'ㅁㄴㅇㄹ', 1, 1259, 1, '2022-05-12', '127.0.0.1', 9, 'board1', '일반'),
	(1265, 'aaa', 'ㅁㅇㄴㄹ', 'ㅁㄴㅇㄹ', 0, 1265, 0, '2022-05-12', '127.0.0.1', 67, 'board1', '공지'),
	(1266, 'aaa', 'ㅁㄴㅇㄹ', 'ㅁㅇㄴㄹ', 0, 1266, 0, '2022-05-12', '127.0.0.1', 4, 'board1', '리뷰'),
	(1267, 'aaa', '└ ㅁㄴㅇㄹ', 'ㄴㅇㅁ', 1, 1265, 1, '2022-05-12', '127.0.0.1', 36, 'board1', '리뷰'),
	(1268, 'aaa', 'asdf', 'asdf', 0, 1268, 0, '2022-05-12', '127.0.0.1', 21, 'board1', '음악'),
	(1269, 'aaa', '└ ㅁㄴㅇㄹ', 'ㅁㄴㅇㄹ', 1, 1268, 1, '2022-05-12', '127.0.0.1', 1, 'board1', '음악'),
	(1270, 'aaa', 'ㅁㄴㅇㄹ', '1:12', 0, 1270, 0, '2022-05-12', '127.0.0.1', 31, 'board1', '리뷰'),
	(1271, 'aaa', 'ㅁㄴㅇㄹ', 'ㅁㄴㅇㄹ', 0, 1271, 0, '2022-05-12', '127.0.0.1', 12, 'board1', '리뷰'),
	(1272, 'aaa', 'aaa', 'ㅁㄴㅇㄹ', 0, 1272, 0, '2022-05-12', '127.0.0.1', 1, 'board1', '공지'),
	(1273, 'aaa', 'adsf', 'asdf', 0, 1273, 0, '2022-05-12', '127.0.0.1', 11, 'board1', '리뷰'),
	(1274, 'aaa', 'asdf', 'asdf', 0, 1274, 0, '2022-05-12', '127.0.0.1', 0, 'board1', '음악');
/*!40000 ALTER TABLE `tblboard` ENABLE KEYS */;

-- 테이블 ateamdb.tblcmtlikes 구조 내보내기
CREATE TABLE IF NOT EXISTS `tblcmtlikes` (
  `cnum` int NOT NULL,
  `num` int NOT NULL,
  `id` char(20) NOT NULL,
  PRIMARY KEY (`cnum`,`id`,`num`),
  KEY `id` (`id`),
  KEY `num` (`num`),
  CONSTRAINT `tblcmtlikes_ibfk_1` FOREIGN KEY (`cnum`) REFERENCES `tblcomment` (`cnum`) ON DELETE CASCADE,
  CONSTRAINT `tblcmtlikes_ibfk_2` FOREIGN KEY (`id`) REFERENCES `tblmember` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tblcmtlikes_ibfk_3` FOREIGN KEY (`num`) REFERENCES `tblboard` (`num`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ateamdb.tblcmtlikes:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `tblcmtlikes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcmtlikes` ENABLE KEYS */;

-- 테이블 ateamdb.tblcomment 구조 내보내기
CREATE TABLE IF NOT EXISTS `tblcomment` (
  `cnum` int NOT NULL AUTO_INCREMENT,
  `num` int NOT NULL,
  `id` varchar(20) DEFAULT NULL,
  `comment` text,
  `regdate` date DEFAULT NULL,
  PRIMARY KEY (`cnum`),
  KEY `num` (`num`),
  CONSTRAINT `tblcomment_ibfk_1` FOREIGN KEY (`num`) REFERENCES `tblboard` (`num`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- 테이블 데이터 ateamdb.tblcomment:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `tblcomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcomment` ENABLE KEYS */;

-- 테이블 ateamdb.tbllikes 구조 내보내기
CREATE TABLE IF NOT EXISTS `tbllikes` (
  `num` int NOT NULL,
  `id` varchar(20) NOT NULL,
  `likes` int DEFAULT '0',
  PRIMARY KEY (`num`,`id`),
  KEY `id` (`id`),
  CONSTRAINT `tbllikes_ibfk_1` FOREIGN KEY (`num`) REFERENCES `tblboard` (`num`) ON DELETE CASCADE,
  CONSTRAINT `tbllikes_ibfk_2` FOREIGN KEY (`id`) REFERENCES `tblmember` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ateamdb.tbllikes:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `tbllikes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbllikes` ENABLE KEYS */;

-- 테이블 ateamdb.tblmember 구조 내보내기
CREATE TABLE IF NOT EXISTS `tblmember` (
  `id` varchar(20) NOT NULL,
  `pwd` char(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `pimg_name` char(100) DEFAULT NULL,
  `pimg_size` char(100) DEFAULT NULL,
  `gender` char(1) NOT NULL,
  `birthday` char(100) NOT NULL,
  `email` char(40) DEFAULT NULL,
  `zipcode` char(5) NOT NULL,
  `address` char(40) NOT NULL,
  `grade` int unsigned DEFAULT NULL,
  `can` int DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ateamdb.tblmember:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `tblmember` DISABLE KEYS */;
INSERT INTO `tblmember` (`id`, `pwd`, `name`, `pimg_name`, `pimg_size`, `gender`, `birthday`, `email`, `zipcode`, `address`, `grade`, `can`) VALUES
	('aaa', '123', 'asd', NULL, NULL, 's', 's', NULL, 's', 's', 0, 1),
	('sd', '123', '123', NULL, NULL, 's', 's', 's', 's', 's', 1, 1);
/*!40000 ALTER TABLE `tblmember` ENABLE KEYS */;

-- 테이블 ateamdb.tblsavepost 구조 내보내기
CREATE TABLE IF NOT EXISTS `tblsavepost` (
  `num` int NOT NULL,
  `id` varchar(20) NOT NULL,
  `savepost` int DEFAULT '0',
  PRIMARY KEY (`num`,`id`),
  KEY `id` (`id`),
  CONSTRAINT `tblsavepost_ibfk_1` FOREIGN KEY (`num`) REFERENCES `tblboard` (`num`) ON DELETE CASCADE,
  CONSTRAINT `tblsavepost_ibfk_2` FOREIGN KEY (`id`) REFERENCES `tblmember` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ateamdb.tblsavepost:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `tblsavepost` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsavepost` ENABLE KEYS */;

-- 테이블 ateamdb.tblupfile 구조 내보내기
CREATE TABLE IF NOT EXISTS `tblupfile` (
  `fnum` int NOT NULL AUTO_INCREMENT,
  `num` int NOT NULL,
  `filename` char(100) NOT NULL,
  `filesize` int NOT NULL,
  PRIMARY KEY (`fnum`,`num`),
  KEY `num` (`num`),
  CONSTRAINT `tblupfile_ibfk_1` FOREIGN KEY (`num`) REFERENCES `tblboard` (`num`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- 테이블 데이터 ateamdb.tblupfile:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `tblupfile` DISABLE KEYS */;
INSERT INTO `tblupfile` (`fnum`, `num`, `filename`, `filesize`) VALUES
	(3, 1264, 'i013716801018.gif', 4863281),
	(4, 1265, 'i013672560417.gif', 2788304),
	(5, 1266, 'i137233510431.jpg', 206657),
	(6, 1266, 'i0137168010181.gif', 4863281),
	(7, 1267, 'i0136622667471.gif', 597826),
	(8, 1267, 'i013360698305.gif', 2113648),
	(9, 1267, 'i13737571332.jpg', 51636),
	(10, 1268, 'i013542692711.gif', 1476163),
	(11, 1268, 'Blossoms - 113004.mp4', 2448287),
	(12, 1269, 'eclipse.exe', 531152),
	(13, 1269, 'ChatServer2.bat', 40),
	(14, 1269, 'Blossoms - 1130041.mp4', 2448287),
	(15, 1269, 'i0135426927111.gif', 1476163),
	(16, 1270, 'Blossoms - 1130042.mp4', 2448287),
	(17, 1271, 'i013520671051.gif', 7635),
	(18, 1272, 'i13650752433.jpg', 28970),
	(19, 1273, 'i013917784114.gif', 5493936),
	(20, 1274, 'i13671858921.jpg', 36122);
/*!40000 ALTER TABLE `tblupfile` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
