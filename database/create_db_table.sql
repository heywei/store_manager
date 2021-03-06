-- drop db
drop database if exists storemanager;

-- create db
create database storemanager;

use storemanager;

-- table tables
create table pm_group(

	id int(20) NOT NULL AUTO_INCREMENT,
	name varchar(100),
	PRIMARY KEY (id)
);

create table pm_user(
	id int(20) primary key NOT NULL AUTO_INCREMENT,
	name varchar(100),
	email varchar(100)
);

create table pm_user_group(
	user_id int(20),
	group_id int(20),
	FOREIGN KEY(user_id) REFERENCES pm_user(id),
	FOREIGN KEY(group_id) REFERENCES pm_group(id)
);

-- date for Junit
insert pm_user(name,email) values('xiang', 'xiangireland@gmail.com');
insert pm_group(name) values('group1');