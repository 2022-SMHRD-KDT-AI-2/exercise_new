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
values(board_idx.nextval, '�Խ��� ����', '�Խ��� ����', '������');

insert into board(idx, title, content, writer)
values(board_idx.nextval, '�Խ��� ����', '�Խ��� ����', '���߿�');

insert into board(idx, title, content, writer)
values(board_idx.nextval, '�Խ��� ����', '�Խ��� ����', '������');

select * from tbl_goods;

delete from tbl_goods;

create table member(
   memId varchar2(50) not null,
   memPwd varchar2(50) not null,
   memUser varchar2(50) not null,
   primary key(memId)
);

insert into MEMBER values('smhrd01','smhrd01', '������');
insert into MEMBER values('smhrd02','smhrd02', '���߿�');
insert into MEMBER values('smhrd03','smhrd03', '������');

select * from MEMBER;
delete from MEMBER
drop table member;
create sequence article_seq;
select * from TBL_RUNNING_COURSE;
create sequence request_seq;

select * from TBL_goods;
create sequence g_seq;


INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (1,'������ Ǯ����� �׸� ���� [�Ŀ� �ΰ��� ö�� �ｺ �� �ٷ� ���� Ʃ�� � ��...',10600.0,'��ۺ� 3,000��');
--�� 2
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (2,'�䰡��/��������/�䰡��Ʈ/�ʶ��׽�/�䰡���/Ʃ�����/�䰡��ǰ/���Ƹ� ��������',6900.0,'��ۺ� 3,000��');
--�� 3
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (3,'������ ���ѷ� EPP EVA �ʶ��׽� 90cm 60cm 45cm ������ ���÷� Ȩ...',13500.0,'��ۺ� 3,000��');
--�� 4
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (4,'������ ���̵� TPE �䰡��Ʈ 10mm �а� �ȹи��� �ʶ��׽� ���Ʈ',27600.0,'��ۺ� 3,000��');
--�� 5
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (5,'��ƮȨƮ��ǰ ������ ���Ƹ� �䰡�� 1+1 / ������� 5����Ʈ / ��������',1800.0,'��ۺ� 2,500��\n(10,000�� �̻� ������)');
--�� 6
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (6,'��ƮȨƮ��ǰ ���Ƹ� �䰡�� 1+1 �� ������',1800.0,'��ۺ� 2,500��\n(10,000�� �̻� ������)');
--�� 7
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (7,'������ ��ƼƩ����� Ǯ��Ʈ / � �ｺ �ٷ� ���ؽ� Ǯ�� ��ǰ ��Ʈ��Ī �ⱸ',10900.0,'��ۺ� 3,000��');
--�� 8
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (8,'������ ��ƼƩ����� Ǯ��Ʈ (150LB) �������� [���ؽ� Ǯ�� � �ｺ �ٷ� ...',30900.0,'��ۺ� 3,000��');
--�� 9
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (9,'������ ��Ƽ Ʃ����� ��Ʈ (100LB) �ｺ �ٷ� ���ؽ� � ��Ʈ��Ī �����',21900.0,'��ۺ� 3,000��');
--�� 10
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (10,'��Ų������ ���ѷ� �䰡��Ʈ �䰡��ǰ ������',4300.0,'��ۺ� 3,000��');
--�� 11
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (11,'(�Ŀ�ġ ����������) ��ƮȨƮ ���Ƹ� �䰡�� ���� �ϵ� 1+1 +������ + ���Ϲ��',6900.0,'��ۺ� ����');
--�� 12
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (12,'��ƮȨƮ ���Ƹ� �䰡�� ���� �ϵ� 1+1 +������ + ���Ϲ��',6900.0,'��ۺ� ����');
--�� 13
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (13,'������ ���� �̿� �Ʒ� ��Ʈ 0.5kg, 1kg, 1.5kg, 2kg, 3kg, 4...',2800.0,'��ۺ� 2,500��\n(50,000�� �̻� ������)');
--�� 14
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (14,'K-FEEL ȨƮ�� ���ǿ� ��ƼǪ������ Į��Ʒ� ���ָӴ�',4500.0,'��ۺ� 2,500��\n(50,000�� �̻� ������)');
--�� 15
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (15,'���� ȨƮ �ٷ� ��ⱸ �ｺ��ǰ ����',4900.0,'��ۺ� ����');
--�� 16
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (16,'[��ȭ������] ���ؽ����/�������/Ʃ����� ������',3600.0,'��ۺ� 2,000��\n(20,000�� �̻� ������)');
--�� 17
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (17,'��Ų �䰡��Ʈ NBR TPE �ڸ�ũ �β��� �ʶ��׽� ȨƮ 6 8 10 20mm',25000.0,'��ۺ� 3,000��');
--�� 18
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (18,'������ ���ؽ���� ������� Ʃ�� ��Ʈ��Ī �ʶ��׽� �ｺ �䰡 �ٷ� �� �',2300.0,'��ۺ� 3,000��');
--�� 19
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (19,'���� ȨƮ���̴� ���̾�Ʈ �ｺ��ǰ',6900.0,'��ۺ� ����');
--�� 20
INSERT INTO TBL_GOODS (G_SEQ, G_NAME, G_PRICE, G_DELIVERY) VALUES (20,'�䰡�� 1+1 �ϵ��� �ʶ��׽� ���� ��Ʈ��Ī ���Ƹ��� �Ľ���',2300.0,'��ۺ� 2,500��');



commit
