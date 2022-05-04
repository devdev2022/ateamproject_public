/*게시글 데이터 테이블*/
CREATE TABLE tblboard (
	num int NOT NULL AUTO_INCREMENT,   				/*게시글 번호*/
	id VARCHAR(20)  NULL,    							/*작성자 아이디*/
 	subject CHAR(40)  NULL, 							/*제목*/
 	content TEXT,											/*내용*/
 	pos SMALLINT UNSIGNED  NULL,			/*답변글들의 정렬값*/
 	ref SMALLINT(10)  NULL,							/*원글인 경우 자기 자신의 번호,
																답글인 경우 원글의 번호*/
	depth smallint unsigned  NULL,					/*몇 번째 답글인지 나타냄*/
 	regdate date  NULL,									/*작성일자*/
 	ip VARCHAR(15)  NULL,								/*ip주소*/
 	count smallint unsigned  NULL,					/*조회수*/

  	type_board varchar(5)   ,					/*게시판 분류 ex)자유, 공지, 등... */
 	type_cat varchar(5)  ,  					/*게시글 카테고리 분류 ex)힙합, 발라드, 등...*/
  PRIMARY KEY (`num`)
)


/*파일 업로드*/
CREATE TABLE tblupfile(
	num INT ,										/*게시판 번호*/
	filename CHAR(40) , 						/*파일이름*/
	filesize INT(40)  							/*파일크기*/
)

/*댓글 데이터 테이블*/
CREATE TABLE tblcomment (	
  cnum INT(10) NOT NULL AUTO_INCREMENT,			/*댓글별 고유 번호*/
  num int(10) DEFAULT NULL,							/*해당 댓글이 달린 게시글 번호*/
  id varchar(20) DEFAULT NULL,						/*작성자 id*/
  comment text DEFAULT NULL,							/*댓글 내용*/
  regdate date DEFAULT NULL,							/*작성 날짜*/
  PRIMARY KEY (`cnum`)
)

/*tblmember : 회원정보 데이터 테이블 */
CREATE TABLE tblmember (
  id VARCHAR(20) NOT NULL,
  pwd char(20) NOT NULL,
  name VARCHAR(20) NOT NULL,
  pimg_name CHAR(100) NULL,							/*프로필 이미지 이름*/
  pimg_size char(100) NULL,							/*프로필 이미지 크기*/
  gender char(1) NOT NULL,
  birthday char(100) NOT NULL,
  email CHAR(40) NULL,
  zipcode CHAR(5) NOT NULL,
  address CHAR(40) NOT NULL,
  grade smallint unsigned DEFAULT 0,				/*0: 일반회원, 1: 관리자*/
  can INT(2) DEFAULT 1,									/*0: 계정비활성화 1:활성화*/ 
  PRIMARY KEY (id)
) 

/*tblBlikes : 게시글 좋아요+게시글 저장 테이블*/
CREATE TABLE tblLikes (
  num INT(10) NOT NULL,									/*게시글 번호*/
  id varchar(20) NOT NULL UNIQUE,					/*이용자 ID*/
  type smallint unsigned DEFAULT NULL,				/*0: 좋아요, 1: 게시글 저장*/
  PRIMARY KEY (`num`)
)
/*코멘트 좋아요 테이블*/
CREATE TABLE tblCmtLikes (
  cnum INT(10) NOT NULL,								/*댓글별 고유 번호*/
  num INT(10) NOT NULL,									/*게시글 번호*/
  id CHAR(20) NOT NULL,									/*이용자 ID*/
  PRIMARY KEY (num)
) 


