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

-- 테이블 ateamDB.tblmember 구조 내보내기
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

-- 내보낼 데이터가 선택되어 있지 않습니다.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
