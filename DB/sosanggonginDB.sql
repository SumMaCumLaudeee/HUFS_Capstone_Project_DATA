drop database if exists sosanggongin;
create database sosanggongin default charset=utf8 collate=utf8_bin;

use sosanggongin;

drop table if exists login;
drop table if exists community;
drop table if exists crolling;
drop table if exists score;

create table login(
	Id varchar(20) not null,
	Password varchar(20) not null,
	CompanyRegistrationNumber varchar(20) not null,
	primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table community(
	Id varchar(20) not null,
	primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table trend_crolling(
	# 조회수, 좋아요수
	id int unsigned not null auto_increment,
	keyword varchar(100) not null,
	to_date date not null,
	primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table score(
	to_date date not null,
	FinalScore varchar(20) not null,
	CompanyRegistrationNumber varchar(20) not null,
	primary key (CompanyRegistrationNumber, to_date)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

