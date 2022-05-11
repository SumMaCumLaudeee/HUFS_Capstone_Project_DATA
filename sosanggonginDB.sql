drop database if exists sosanggongin;
create database sosanggongin default charset=utf8 collate=utf8_bin;

use sosanggongin;

drop table if exists member;
drop table if exists trend_crolling;

create table member(
	id varchar(20) not null,
    pw varchar(20) not null,
    email varchar(50) not null,
    test_result int,
    result_1 int,
    result_2 int,
    result_3 int,
    result_4 int,
    name varchar(20),
    store_name varchar(20),
    category varchar(20),
    open_date varchar(20),
    sns varchar(20),
    primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

create table trend_crolling(
	keyword varchar(100) not null,
	crolling_date date not null,
    likes int not null,
	primary key (Keyword) # 수정필요
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into member values
("yewon", "0522", "luck5892@hufs.ac.kr",0,0,0,0,0,null,null,null,null,null),
("yoongyo", "1234", "201902723@hufs.ac.kr",0,0,0,0,0,null,null,null,null,null);

select * from member;