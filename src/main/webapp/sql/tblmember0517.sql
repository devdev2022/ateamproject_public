-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
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

-- 테이블 데이터 ateamdb.tblmember:~8 rows (대략적) 내보내기
/*!40000 ALTER TABLE `tblmember` DISABLE KEYS */;
INSERT INTO `tblmember` (`id`, `pwd`, `name`, `email1`, `email2`, `phonecorp`, `phone1`, `phone2`, `phone3`, `grade`, `imgname`, `imgsize`) VALUES
	('aaa', '1234', '주전모', 'choryee', 'naver.com', '0', '8', '2568', '1586', '1', NULL, 0),
	('aaa1', '1234', '김세경', 'abc', 'naver.com', 'SKT', '010', '2555', '9875', '0', 'tech014.jpg', 360623),
	('aaa2', '1234', '김세경', 'simba222', 'naver.com', 'SKT', '010', '2555', '9875', '0', 'tech01.jpg', 360623),
	('aaa44', '1234', 'asdf', 'abc', 'naver.com', 'KT', '010', '2555', '9875', NULL, NULL, 0),
	('admin', '1234', '주진모', 'kim', 'naver.com', 'skt', '8', '2568', '1586', '1', 'hah.jsp', 454),
	('bbb', '1234', '김세경', 'takga123', 'naver.com', 'SKT', '10', '1111', '2222', '0', NULL, NULL),
	('ccc', '1234', '홍길동11', 'abc', 'naver.com', 'SKT', '010', '2555', '9875', NULL, '입실 qr.jpg', 176088),
	('eee', '1234', '민주222', 'gyqls234', 'naver.com', '0', '010', '2555', '9875', NULL, NULL, 0);
/*!40000 ALTER TABLE `tblmember` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
