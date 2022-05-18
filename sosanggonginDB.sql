drop database if exists sosanggongin;
create database sosanggongin default charset=utf8 collate=utf8_bin;

use sosanggongin;

drop table if exists member;
drop table if exists cafe;
drop table if exists food;
drop table if exists place;

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
    open_date date,
    sns varchar(20),
    primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

create table cafe(
	cafe_keyword varchar(100) not null,
	primary key (cafe_keyword)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

create table food(
	eat_keyword varchar(100) not null,
	primary key (eat_keyword)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

create table place(
	place_keyword varchar(100) not null,
	primary key (place_keyword)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
