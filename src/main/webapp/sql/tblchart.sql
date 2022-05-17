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
CREATE DATABASE IF NOT EXISTS `ateamdb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ateamdb`;

-- 테이블 ateamdb.tblchart 구조 내보내기
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
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
