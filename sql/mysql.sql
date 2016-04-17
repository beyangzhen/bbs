create database bbs;
use bbs;
create table tb_category(
	id int primary key auto_increment,
	name varchar(50),
	description varchar(200)
);