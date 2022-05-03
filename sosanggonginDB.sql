drop database if exists sosanggongin;
create database sosanggongin default charset=utf8 collate=utf8_bin;

use sosanggongin;

drop table if exists login;

drop table if exists trend_crolling;
drop table if exists crolling_cafe;
drop table if exists corlling_restaurant;

drop table if exists score;

create table login(
	Id varchar(20) not null,
	Password varchar(20) not null,
	-- CompanyRegistrationNumber varchar(20) not null,
	primary key (Id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

create table trend_crolling(
	# 조회수, 좋아요수
	Num int unsigned not null auto_increment,
	Keyword varchar(100) not null,
	Date date not null,
	primary key (Num, Keyword)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- create table crolling_cafe(
-- 	# 조회수, 좋아요수
-- 	Num int unsigned not null auto_increment,
-- 	Keyword varchar(100) not null,
--     CafeKeyword varchar(100) not null,
-- 	primary key (Num),
--     constraint Keyword
--     foreign key (Keyword) 
-- 		references trend_crolling(Keyword) 
-- 			on delete cascade
--             on update cascade
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- create table crolling_restaurant(
-- 	# 조회수, 좋아요수
-- 	Num int unsigned not null auto_increment,
-- 	Keyword varchar(100) not null,
--     RestaurantKeyword varchar(100) not null,
-- 	primary key (Num),
--     foreign key (Keyword) references trend_crolling(Keyword)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

create table score(
	Id varchar(20) not null,
	Date date not null,
	FinalScore varchar(20) not null,
	-- CompanyRegistrationNumber varchar(20) not null,
	primary key (Id, Date),
    foreign key (Id) references login(Id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

