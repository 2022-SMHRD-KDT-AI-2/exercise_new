create table board(
	idx number not null,
	memId varchar2(50) not null,
	title varchar2(1000) not null,
	content varchar2(4000) not null,
	writer varchar2(50) not null,
	indate date default sysdate,
	count number default 0,
	primary key(idx)
);


  CREATE TABLE "CGI_5_0216_2"."TBL_GOODS" 
   (	"G_SEQ" NUMBER(12,0), 
	"G_NAME" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"G_PRICE" NUMBER(12,1) NOT NULL ENABLE, 
	"G_IMAGE" BLOB DEFAULT NULL, 
	"G_DELIVERY" VARCHAR2(100 BYTE), 
	"G_URL" VARCHAR2(100 BYTE), 
	 PRIMARY KEY ("G_SEQ")



drop table tbl_goods;

create sequence board_idx;

insert into board(idx, title, content, writer)
values(board_idx.nextval, '게시판 연습', '게시판 연습', '관리자');

insert into board(idx, title, content, writer)
values(board_idx.nextval, '게시판 연습', '게시판 연습', '윤중열');

insert into board(idx, title, content, writer)
values(board_idx.nextval, '게시판 연습', '게시판 연습', '서대희');

select * from tbl_goods;

delete from tbl_goods;

create table member(
   memId varchar2(50) not null,
   memPwd varchar2(50) not null,
   memUser varchar2(50) not null,
   primary key(memId)
);

insert into MEMBER values('smhrd01','smhrd01', '관리자');
insert into MEMBER values('smhrd02','smhrd02', '윤중열');
insert into MEMBER values('smhrd03','smhrd03', '서대희');

select * from MEMBER;
delete from MEMBER
drop table member;
create sequence article_seq;
select * from TBL_RUNNING_COURSE;
create sequence request_seq;

select * from TBL_goods;
create sequence g_seq;


INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (1,'고무나라 풀업밴드 그린 투톤 [파워 턱걸이 철봉 헬스 고무 근력 저항 튜빙 운동 라...',10600.0,'배송비 3,000원');
--행 2
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (2,'요가링/마사지링/요가매트/필라테스/요가밴드/튜빙밴드/요가용품/종아리 마사지링',6900.0,'배송비 3,000원');
--행 3
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (3,'고무나라 폼롤러 EPP EVA 필라테스 90cm 60cm 45cm 마사지 폼플러 홈...',13500.0,'배송비 3,000원');
--행 4
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (4,'고무나라 와이드 TPE 요가매트 10mm 넓고 안밀리는 필라테스 운동매트',27600.0,'배송비 3,000원');
--행 5
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (5,'뮤트홈트제품 모음전 종아리 요가링 1+1 / 루프밴드 5종세트 / 마사지볼',1800.0,'배송비 2,500원\n(10,000원 이상 무료배송)');
--행 6
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (6,'뮤트홈트제품 종아리 요가링 1+1 외 모음전',1800.0,'배송비 2,500원\n(10,000원 이상 무료배송)');
--행 7
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (7,'고무나라 멀티튜빙밴드 풀세트 / 운동 헬스 근력 라텍스 풀업 용품 스트레칭 기구',10900.0,'배송비 3,000원');
--행 8
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (8,'고무나라 멀티튜빙밴드 풀세트 (150LB) 전문가용 [라텍스 풀업 운동 헬스 근력 ...',30900.0,'배송비 3,000원');
--행 9
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (9,'고무나라 멀티 튜빙밴드 세트 (100LB) 헬스 근력 라텍스 운동 스트레칭 고무밴드',21900.0,'배송비 3,000원');
--행 10
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (10,'멜킨스포츠 폼롤러 요가매트 요가용품 모음전',4300.0,'배송비 3,000원');
--행 11
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (11,'(파우치 선착순증정) 뮤트홈트 종아리 요가링 젠링 하드 1+1 +무료배송 + 당일배송',6900.0,'배송비 무료');
--행 12
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (12,'뮤트홈트 종아리 요가링 젠링 하드 1+1 +무료배송 + 당일배송',6900.0,'배송비 무료');
--행 13
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (13,'케이필 덤벨 미용 아령 세트 0.5kg, 1kg, 1.5kg, 2kg, 3kg, 4...',2800.0,'배송비 2,500원\n(50,000원 이상 무료배송)');
--행 14
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (14,'K-FEEL 홈트의 끝판왕 멀티푸쉬업바 칼라아령 모래주머니',4500.0,'배송비 2,500원\n(50,000원 이상 무료배송)');
--행 15
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (15,'남자 홈트 근력 운동기구 헬스용품 모음',4900.0,'배송비 무료');
--행 16
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (16,'[동화스포츠] 라텍스밴드/루프밴드/튜빙밴드 모음전',3600.0,'배송비 2,000원\n(20,000원 이상 무료배송)');
--행 17
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (17,'멜킨 요가매트 NBR TPE 코르크 두꺼운 필라테스 홈트 6 8 10 20mm',25000.0,'배송비 3,000원');
--행 18
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (18,'고무나라 라텍스밴드 루프밴드 튜빙 스트레칭 필라테스 헬스 요가 근력 고무 운동',2300.0,'배송비 3,000원');
--행 19
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (19,'빼다 홈트레이닝 다이어트 헬스용품',6900.0,'배송비 무료');
--행 20
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (20,'요가링 1+1 하드형 필라테스 젠링 스트레칭 종아리링 파스텔',2300.0,'배송비 2,500원');



commit
