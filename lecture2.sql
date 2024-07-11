create table cat2(
name varchar(40) not null,
age int not null);
-- insert into cat2() values();
desc cat2;

create table cat3(
id int not null primary key ,
name varchar(30)
);


create table cat4(
id int not null primary key auto_increment ,
name varchar(30)
);
desc cat4;
insert into cat4(name) values("aaa"),("bbb");
select * from cat4;