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
DROP TABLE IF EXISTS `tblboard`;
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
) ENGINE=InnoDB AUTO_INCREMENT=1354 DEFAULT CHARSET=utf8;

-- 테이블 데이터 ateamdb.tblboard:~69 rows (대략적) 내보내기
/*!40000 ALTER TABLE `tblboard` DISABLE KEYS */;
INSERT INTO `tblboard` (`num`, `id`, `subject`, `content`, `pos`, `ref`, `depth`, `regdate`, `ip`, `count`, `type_board`, `type_cat`) VALUES
	(1282, 'aaa', 'aaa', 'asdf', 0, 1282, 0, '2022-05-16', '127.0.0.1', 0, 'Hip-Hop', '그림/아트웍'),
	(1283, 'aaa', 'ddd', 'ddd', 0, 1283, 0, '2022-05-16', '127.0.0.1', 0, 'Hip-Hop', '인증/후기'),
	(1284, 'aaa', 'asdf', 'asdf', 0, 1284, 0, '2022-05-16', '127.0.0.1', 2, 'Hip-Hop', '공지'),
	(1285, 'aaa', 'asdf', 'asdf', 0, 1285, 0, '2022-05-16', '127.0.0.1', 0, 'Hip-Hop', '일반'),
	(1286, 'aaa', 'asdf', 'adsf', 0, 1286, 0, '2022-05-16', '127.0.0.1', 0, 'Hip-Hop', '음악'),
	(1289, 'aaa', 'qewr', 'qwer', 0, 1287, 0, '2022-05-16', '127.0.0.1', 1, 'Hip-Hop', '가사해석'),
	(1290, 'aaa', 'asdf', 'asdf', 0, 1290, 0, '2022-05-16', '127.0.0.1', 4, 'Hip-Hop', '가사해석'),
	(1291, 'aaa', 'asdf', 'asdf', 0, 1291, 0, '2022-05-16', '127.0.0.1', 3, 'Hip-Hop', '가사해석'),
	(1292, 'aaa', '└ asdf', 'asdf', 1, 1290, 1, '2022-05-16', '127.0.0.1', 0, 'Hip-Hop', '가사해석'),
	(1293, 'aaa', '└ asdf', 'asdf', 1, 1291, 1, '2022-05-16', '127.0.0.1', 0, 'Hip-Hop', '가사해석'),
	(1294, 'aaa', '└ asdf', 'asdf', 1, 1291, 1, '2022-05-16', '127.0.0.1', 0, 'Hip-Hop', '가사해석'),
	(1295, 'aaa', 'asdf', 'asdf', 0, 1295, 0, '2022-05-17', '127.0.0.1', 0, 'Hip-Hop', '가사해석'),
	(1296, 'aaa', 'sss', 'sss', 0, 1296, 0, '2022-05-17', '127.0.0.1', 0, 'Hip-Hop', '가사해석'),
	(1297, 'aaa', 'asdf', 'asdf', 0, 1297, 0, '2022-05-17', '127.0.0.1', 0, 'Pop', '가사해석'),
	(1298, 'aaa', 'adf', 'asdf', 0, 1298, 0, '2022-05-17', '127.0.0.1', 24, 'EDM', '가사해석'),
	(1299, 'aaa1', 'asdf', 'asdf', 0, 1299, 0, '2022-05-17', '127.0.0.1', 11, 'Hip-Hop', '음악'),
	(1301, 'aaa', 'RnB게시글', 'RnB게시글', 0, 1300, 0, '2022-05-17', '127.0.0.1', 3, 'RnB', '그림/아트웍'),
	(1302, 'bbb', 'Hip-Hop게시물입니다', 'Hip-Hop게시물입니다', 0, 1302, 0, '2022-05-17', '127.0.0.1', 43, 'Hip-Hop', '그림/아트웍'),
	(1303, 'aaa', 'aaa', 'asdf', 0, 1303, 0, '2022-05-16', '127.0.0.1', 3, 'Hip-Hop', '리뷰'),
	(1304, 'aaa', 'RnB게시글', 'RnB게시글 ', 0, 1304, 0, '2022-05-17', '127.0.0.1', 0, 'RnB', '인증/후기'),
	(1305, 'aaa', 'RnB게시글', 'RnB게시글 ', 0, 1305, 0, '2022-05-17', '127.0.0.1', 1, 'RnB', '공지'),
	(1306, 'aaa', 'RnB게시글', 'RnB게시글 ', 0, 1306, 0, '2022-05-17', '127.0.0.1', 0, 'RnB', '가사해석'),
	(1307, 'aaa', 'RnB게시글', 'RnB게시글 ', 0, 1307, 0, '2022-05-17', '127.0.0.1', 0, 'RnB', '일반'),
	(1308, 'aaa', 'RnB게시글', 'RnB게시글 ', 0, 1308, 0, '2022-05-17', '127.0.0.1', 19, 'RnB', '리뷰'),
	(1309, 'aaa', 'RnB게시글', 'RnB게시글 ', 0, 1309, 0, '2022-05-17', '127.0.0.1', 3, 'RnB', '음악'),
	(1310, 'aaa', 'pop게시글', 'pop게시글 ', 0, 1310, 0, '2022-05-17', '127.0.0.1', 0, 'Pop', '그림/아트웍'),
	(1311, 'aaa', 'pop게시글', 'pop게시글 ', 0, 1311, 0, '2022-05-17', '127.0.0.1', 0, 'Pop', '인증/후기'),
	(1312, 'aaa', 'pop게시글', 'pop게시글 ', 0, 1312, 0, '2022-05-17', '127.0.0.1', 0, 'Pop', '가사해석'),
	(1313, 'aaa', 'pop게시글', 'pop게시글 ', 0, 1313, 0, '2022-05-17', '127.0.0.1', 0, 'Pop', '리뷰'),
	(1314, 'aaa', 'pop게시글', 'pop게시글 ', 0, 1314, 0, '2022-05-17', '127.0.0.1', 0, 'Pop', '공지'),
	(1315, 'aaa', 'pop게시글', 'pop게시글 ', 0, 1315, 0, '2022-05-17', '127.0.0.1', 0, 'Pop', '일반'),
	(1316, 'aaa', 'pop게시글', 'pop게시글 ', 0, 1316, 0, '2022-05-17', '127.0.0.1', 0, 'Pop', '음악'),
	(1317, 'aaa', 'EDM게시글', 'EDM게시글', 0, 1317, 0, '2022-05-17', '127.0.0.1', 0, 'EDM', '그림/아트웍'),
	(1318, 'aaa', 'EDM게시글', 'EDM게시글', 0, 1318, 0, '2022-05-17', '127.0.0.1', 0, 'EDM', '인증/후기'),
	(1319, 'aaa', 'EDM게시글', 'EDM게시글', 0, 1319, 0, '2022-05-17', '127.0.0.1', 0, 'EDM', '일반'),
	(1320, 'aaa', 'EDM게시글', 'EDM게시글', 0, 1320, 0, '2022-05-17', '127.0.0.1', 0, 'EDM', '공지'),
	(1321, 'aaa', 'EDM게시글', 'EDM게시글', 0, 1321, 0, '2022-05-17', '127.0.0.1', 0, 'EDM', '음악'),
	(1322, 'aaa', 'EDM게시글', 'EDM게시글', 0, 1322, 0, '2022-05-17', '127.0.0.1', 4, 'EDM', '리뷰'),
	(1323, 'bbb', 'Hip-Hop게시물입니다', 'Hip-Hop게시물입니다', 0, 1323, 0, '2022-05-17', '10.100.204.23', 0, 'Hip-Hop', '그림/아트웍'),
	(1324, 'bbb', 'Hip-Hop게시물입니다', 'Hip-Hop게시물입니다', 0, 1324, 0, '2022-05-17', '10.100.204.23', 0, 'Hip-Hop', '인증/후기'),
	(1325, 'bbb', 'Hip-Hop게시물입니다', 'Hip-Hop게시물입니다', 0, 1325, 0, '2022-05-17', '10.100.204.23', 0, 'Hip-Hop', '공지'),
	(1326, 'bbb', 'Hip-Hop게시물입니다', 'Hip-Hop게시물입니다', 0, 1326, 0, '2022-05-17', '10.100.204.23', 0, 'Hip-Hop', '일반'),
	(1327, 'bbb', 'Hip-Hop게시물입니다', 'Hip-Hop게시물입니다', 0, 1327, 0, '2022-05-17', '10.100.204.23', 0, 'Hip-Hop', '음악'),
	(1328, 'bbb', 'Hip-Hop게시물입니다', 'Hip-Hop게시물입니다', 0, 1328, 0, '2022-05-17', '10.100.204.23', 0, 'Hip-Hop', '가사해석'),
	(1329, 'bbb', 'Hip-Hop게시물입니다', 'Hip-Hop게시물입니다', 0, 1329, 0, '2022-05-17', '10.100.204.23', 4, 'Hip-Hop', '리뷰'),
	(1330, 'bbb', 'RnB게시글', 'RnB게시글 ', 0, 1330, 0, '2022-05-17', '10.100.204.23', 0, 'RnB', '그림/아트웍'),
	(1331, 'bbb', 'RnB게시글', 'RnB게시글 ', 0, 1331, 0, '2022-05-17', '10.100.204.23', 0, 'RnB', '인증/후기'),
	(1332, 'bbb', 'RnB게시글', 'RnB게시글 ', 0, 1332, 0, '2022-05-17', '10.100.204.23', 6, 'RnB', '공지'),
	(1333, 'bbb', 'RnB게시글', 'RnB게시글 ', 0, 1333, 0, '2022-05-17', '10.100.204.23', 0, 'RnB', '일반'),
	(1334, 'bbb', 'RnB게시글', 'RnB게시글 ', 0, 1334, 0, '2022-05-17', '10.100.204.23', 0, 'RnB', '가사해석'),
	(1335, 'bbb', 'RnB게시글', 'RnB게시글 ', 0, 1335, 0, '2022-05-17', '10.100.204.23', 0, 'RnB', '음악'),
	(1336, 'bbb', 'RnB게시글', 'RnB게시글 ', 0, 1336, 0, '2022-05-17', '10.100.204.23', 0, 'RnB', '가사해석'),
	(1337, 'bbb', 'RnB게시글', 'RnB게시글 ', 0, 1337, 0, '2022-05-17', '10.100.204.23', 0, 'RnB', '리뷰'),
	(1338, 'bbb', 'RnB게시글', 'RnB게시글 ', 0, 1338, 0, '2022-05-17', '10.100.204.23', 13, 'RnB', '리뷰'),
	(1339, 'bbb', 'pop게시글', 'pop게시글', 0, 1339, 0, '2022-05-17', '10.100.204.23', 0, 'Pop', '그림/아트웍'),
	(1340, 'bbb', 'pop게시글', 'pop게시글', 0, 1340, 0, '2022-05-17', '10.100.204.23', 2, 'Pop', '인증/후기'),
	(1341, 'bbb', 'pop게시글', 'pop게시글', 0, 1341, 0, '2022-05-17', '10.100.204.23', 0, 'Pop', '공지'),
	(1342, 'bbb', 'pop게시글', 'pop게시글', 0, 1342, 0, '2022-05-17', '10.100.204.23', 0, 'Pop', '일반'),
	(1343, 'bbb', 'pop게시글', 'pop게시글', 0, 1343, 0, '2022-05-17', '10.100.204.23', 0, 'Pop', '리뷰'),
	(1344, 'bbb', 'pop게시글', 'pop게시글', 0, 1344, 0, '2022-05-17', '10.100.204.23', 0, 'Pop', '음악'),
	(1345, 'bbb', 'EDM게시글', 'EDM게시글', 0, 1345, 0, '2022-05-17', '10.100.204.23', 0, 'EDM', '그림/아트웍'),
	(1346, 'bbb', 'EDM게시글', 'EDM게시글', 0, 1346, 0, '2022-05-17', '10.100.204.23', 0, 'EDM', '인증/후기'),
	(1347, 'bbb', 'EDM게시글', 'EDM게시글', 0, 1347, 0, '2022-05-17', '10.100.204.23', 0, 'EDM', '공지'),
	(1348, 'bbb', 'EDM게시글', 'EDM게시글', 0, 1348, 0, '2022-05-17', '10.100.204.23', 2, 'EDM', '공지'),
	(1349, 'bbb', 'EDM게시글', 'EDM게시글', 0, 1349, 0, '2022-05-17', '10.100.204.23', 0, 'EDM', '음악'),
	(1350, 'bbb', 'EDM게시글', 'EDM게시글', 0, 1350, 0, '2022-05-17', '10.100.204.23', 0, 'EDM', '가사해석'),
	(1351, 'bbb', 'EDM게시글', 'EDM게시글', 0, 1351, 0, '2022-05-17', '10.100.204.23', 0, 'EDM', '리뷰'),
	(1352, 'bbb', 'EDM게시글', 'EDM게시글', 0, 1352, 0, '2022-05-17', '10.100.204.23', 0, 'EDM', '일반'),
	(1353, 'aaa1', '발표용 게시글을 작성합니다.', '발표용 게시글을 작성합니다.', 0, 1353, 0, '2022-05-17', '10.100.204.26', 1, 'Pop', '음악');
/*!40000 ALTER TABLE `tblboard` ENABLE KEYS */;

-- 테이블 ateamdb.tblchart 구조 내보내기
DROP TABLE IF EXISTS `tblchart`;
CREATE TABLE IF NOT EXISTS `tblchart` (
  `chnum` int NOT NULL AUTO_INCREMENT,
  `ranking` char(50) DEFAULT NULL,
  `artist` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `title` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `albumimg` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `albumName` text,
  `getDate` datetime DEFAULT NULL,
  `menuId` char(30) DEFAULT NULL,
  `songId` char(30) DEFAULT NULL,
  `lyric` text,
  `video` text,
  `videoInfo` text,
  PRIMARY KEY (`chnum`)
) ENGINE=InnoDB AUTO_INCREMENT=18142 DEFAULT CHARSET=utf8;


-- 테이블 ateamdb.tblcmtlikes 구조 내보내기
DROP TABLE IF EXISTS `tblcmtlikes`;
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

-- 테이블 데이터 ateamdb.tblcmtlikes:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `tblcmtlikes` DISABLE KEYS */;
INSERT INTO `tblcmtlikes` (`cnum`, `num`, `id`) VALUES
	(105, 1299, 'aaa1'),
	(107, 1308, 'aaa');
/*!40000 ALTER TABLE `tblcmtlikes` ENABLE KEYS */;

-- 테이블 ateamdb.tblcomment 구조 내보내기
DROP TABLE IF EXISTS `tblcomment`;
CREATE TABLE IF NOT EXISTS `tblcomment` (
  `cnum` int NOT NULL AUTO_INCREMENT,
  `num` int NOT NULL,
  `id` varchar(20) DEFAULT NULL,
  `comment` text,
  `regdate` date DEFAULT NULL,
  PRIMARY KEY (`cnum`),
  KEY `num` (`num`),
  CONSTRAINT `tblcomment_ibfk_1` FOREIGN KEY (`num`) REFERENCES `tblboard` (`num`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

-- 테이블 데이터 ateamdb.tblcomment:~5 rows (대략적) 내보내기
/*!40000 ALTER TABLE `tblcomment` DISABLE KEYS */;
INSERT INTO `tblcomment` (`cnum`, `num`, `id`, `comment`, `regdate`) VALUES
	(105, 1299, 'aaa', 'asdf', '2022-05-17'),
	(106, 1302, 'aaa', 'asdf', '2022-05-17'),
	(107, 1308, 'aaa', 'asdfasdf', '2022-05-17'),
	(108, 1308, 'aaa', 'asdf', '2022-05-17'),
	(109, 1329, 'aaa', '새 댓글을 작성합니다.', '2022-05-17');
/*!40000 ALTER TABLE `tblcomment` ENABLE KEYS */;

-- 테이블 ateamdb.tbllikes 구조 내보내기
DROP TABLE IF EXISTS `tbllikes`;
CREATE TABLE IF NOT EXISTS `tbllikes` (
  `num` int NOT NULL,
  `id` varchar(20) NOT NULL,
  `likes` int DEFAULT '0',
  PRIMARY KEY (`num`,`id`),
  KEY `id` (`id`),
  CONSTRAINT `tbllikes_ibfk_1` FOREIGN KEY (`num`) REFERENCES `tblboard` (`num`) ON DELETE CASCADE,
  CONSTRAINT `tbllikes_ibfk_2` FOREIGN KEY (`id`) REFERENCES `tblmember` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ateamdb.tbllikes:~9 rows (대략적) 내보내기
/*!40000 ALTER TABLE `tbllikes` DISABLE KEYS */;
INSERT INTO `tbllikes` (`num`, `id`, `likes`) VALUES
	(1299, 'aaa1', 1),
	(1302, 'aaa', 1),
	(1302, 'aaa1', 1),
	(1303, 'aaa', 1),
	(1308, 'aaa', 1),
	(1309, 'aaa', 1),
	(1322, 'aaa', 1),
	(1332, 'aaa1', 1),
	(1340, 'aaa1', 1);
/*!40000 ALTER TABLE `tbllikes` ENABLE KEYS */;

-- 테이블 ateamdb.tblmember 구조 내보내기
DROP TABLE IF EXISTS `tblmember`;
CREATE TABLE IF NOT EXISTS `tblmember` (
  `id` char(20) NOT NULL,
  `pwd` char(20) NOT NULL,
  `name` char(20) DEFAULT NULL,
  `email1` char(20) DEFAULT NULL,
  `email2` char(20) DEFAULT NULL,
  `phonecorp` char(10) DEFAULT NULL,
  `phone1` char(5) DEFAULT NULL,
  `phone2` char(5) DEFAULT NULL,
  `phone3` char(5) DEFAULT NULL,
  `grade` char(50) DEFAULT NULL,
  `imgname` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `imgsize` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ateamdb.tblmember:~9 rows (대략적) 내보내기
/*!40000 ALTER TABLE `tblmember` DISABLE KEYS */;
INSERT INTO `tblmember` (`id`, `pwd`, `name`, `email1`, `email2`, `phonecorp`, `phone1`, `phone2`, `phone3`, `grade`, `imgname`, `imgsize`) VALUES
	('aaa', '1234', '주전모', 'choryee', 'naver.com', '0', '8', '2568', '1586', '1', '입실 qr.jpg', 176088),
	('aaa1', '1234', '김세경', 'abc', 'naver.com', 'SKT', '010', '2555', '9875', '0', 'tech014.jpg', 360623),
	('aaa2', '1234', '김세경', 'simba222', 'naver.com', 'SKT', '010', '2555', '9875', '0', 'tech01.jpg', 360623),
	('aaa44', '1234', 'asdf', 'abc', 'naver.com', 'KT', '010', '2555', '9875', NULL, NULL, 0),
	('admin', '1234', '주진모', 'kim', 'naver.com', 'skt', '8', '2568', '1586', '1', 'hah.jsp', 454),
	('bbb', '1234', '김세경', 'takga123', 'naver.com', 'SKT', '10', '1111', '2222', '0', NULL, NULL),
	('ccc', '1234', '홍길동11', 'abc', 'naver.com', 'SKT', '010', '2555', '9875', NULL, '입실 qr.jpg', 176088),
	('eee', '1234', '민주222', 'gyqls234', 'naver.com', '0', '010', '2555', '9875', NULL, NULL, 0),
	('kkk', '1234', '최효빈', 'gyqls234', 'gmail.com', '0', '010', '2555', '9875', NULL, NULL, 0);
/*!40000 ALTER TABLE `tblmember` ENABLE KEYS */;

-- 테이블 ateamdb.tblsavepost 구조 내보내기
DROP TABLE IF EXISTS `tblsavepost`;
CREATE TABLE IF NOT EXISTS `tblsavepost` (
  `num` int NOT NULL,
  `id` varchar(20) NOT NULL,
  `savepost` int DEFAULT '0',
  PRIMARY KEY (`num`,`id`),
  KEY `id` (`id`),
  CONSTRAINT `tblsavepost_ibfk_1` FOREIGN KEY (`num`) REFERENCES `tblboard` (`num`) ON DELETE CASCADE,
  CONSTRAINT `tblsavepost_ibfk_2` FOREIGN KEY (`id`) REFERENCES `tblmember` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ateamdb.tblsavepost:~8 rows (대략적) 내보내기
/*!40000 ALTER TABLE `tblsavepost` DISABLE KEYS */;
INSERT INTO `tblsavepost` (`num`, `id`, `savepost`) VALUES
	(1299, 'aaa1', 0),
	(1302, 'aaa', 0),
	(1302, 'aaa1', 0),
	(1303, 'aaa', 0),
	(1308, 'aaa', 0),
	(1309, 'aaa', 0),
	(1322, 'aaa', 0),
	(1332, 'aaa1', 0);
/*!40000 ALTER TABLE `tblsavepost` ENABLE KEYS */;

-- 테이블 ateamdb.tblupfile 구조 내보내기
DROP TABLE IF EXISTS `tblupfile`;
CREATE TABLE IF NOT EXISTS `tblupfile` (
  `fnum` int NOT NULL AUTO_INCREMENT,
  `num` int NOT NULL,
  `filename` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `filesize` int NOT NULL,
  PRIMARY KEY (`fnum`,`num`),
  KEY `num` (`num`),
  CONSTRAINT `tblupfile_ibfk_1` FOREIGN KEY (`num`) REFERENCES `tblboard` (`num`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- 테이블 데이터 ateamdb.tblupfile:~44 rows (대략적) 내보내기
/*!40000 ALTER TABLE `tblupfile` DISABLE KEYS */;
INSERT INTO `tblupfile` (`fnum`, `num`, `filename`, `filesize`) VALUES
	(30, 1282, 'i13671858921.jpg', 36122),
	(31, 1283, 'i013662266747.gif', 597826),
	(32, 1284, 'i136718589211.jpg', 36122),
	(33, 1285, 'i013405357615.gif', 876403),
	(35, 1290, 'i13723351043.jpg', 206657),
	(36, 1299, 'i13639679635.jpg', 125426),
	(37, 1302, 'photo11.jpg', 25730),
	(38, 1304, 'photo14.jpg', 52747),
	(39, 1305, 'Jellyfish.mp4', 797977),
	(40, 1306, 'photo17.jpg', 71795),
	(41, 1307, 'Bird.mp4', 2602846),
	(42, 1308, 'photo2.jpg', 33738),
	(43, 1308, 'photo1.jpg', 132728),
	(44, 1308, 'Jellyfish1.mp4', 797977),
	(45, 1310, 'photo171.jpg', 71795),
	(46, 1311, 'Cat.mp4', 3059477),
	(47, 1312, 'photo9.jpg', 151686),
	(48, 1313, 'photo48.jpg', 240615),
	(49, 1313, 'photo22.jpg', 36816),
	(50, 1317, 'photo40.jpg', 90567),
	(51, 1318, 'photo44.jpg', 55115),
	(52, 1319, 'photo59.jpg', 170484),
	(53, 1322, 'photo54.jpg', 156131),
	(54, 1330, 'photo26.jpg', 34920),
	(55, 1331, 'HighlandCows.mp4', 7979382),
	(56, 1332, 'photo8.jpg', 70668),
	(57, 1333, 'photo61.jpg', 41046),
	(58, 1336, 'photo6.jpg', 58137),
	(59, 1337, 'Bird1.mp4', 2602846),
	(60, 1338, 'LP1607180062.mp3', 729386),
	(61, 1339, 'LP16071800621.mp3', 729386),
	(62, 1340, 'photo5.jpg', 145113),
	(63, 1341, 'photo15.jpg', 545568),
	(64, 1343, 'photo37.jpg', 77863),
	(65, 1345, 'photo53.jpg', 96937),
	(66, 1347, 'LP16071800622.mp3', 729386),
	(67, 1348, 'LP16071800623.mp3', 729386),
	(68, 1348, 'Jellyfish2.mp4', 797977),
	(69, 1349, 'Bird2.mp4', 2602846),
	(70, 1349, 'Cat1.mp4', 3059477),
	(71, 1350, 'photo75.jpg', 31542),
	(72, 1351, 'photo36.jpg', 158390),
	(73, 1353, 'LP16071800624.mp3', 729386),
	(74, 1353, 'star.PNG', 241373);
/*!40000 ALTER TABLE `tblupfile` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

