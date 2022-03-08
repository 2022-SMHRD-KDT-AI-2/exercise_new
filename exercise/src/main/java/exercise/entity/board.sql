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

drop table board;

create sequence board_idx;

insert into board(idx, title, content, writer)
values(board_idx.nextval, '�Խ��� ����', '�Խ��� ����', '������');

insert into board(idx, title, content, writer)
values(board_idx.nextval, '�Խ��� ����', '�Խ��� ����', '���߿�');

insert into board(idx, title, content, writer)
values(board_idx.nextval, '�Խ��� ����', '�Խ��� ����', '������');

select * from board;

delete from board;

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