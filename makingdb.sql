create database database_name; //데이터베이스 생성

use database_name; //데이터베이스 사용
create table family ( //패밀리 테이블 생성
	emp_name varchar(15) not null,
    emp_id varchar(15) not null,
    emp_passwd varchar(15) not null,
    emp_birth int,
    emp_mail varchar(35),
    
    primary key(emp_name)
);

insert into family values('아버지','joesph','aaa',670316,'joesph@naver.com');//데이터 집어넣기
insert into family values('어머니','jina','bbb',710314,'jina@naver.com');
insert into family values('아들','julian','ccc',990414,'julian@naver.com');

select * from family; //family데이터베이스 선택
