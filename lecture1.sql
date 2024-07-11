create table cat(
namr varchar(100),
age int);

insert into cat(namr,age) value('ree',12);
select * from cat;
desc cat;


insert into cat(namr,age)values("romn",09),("rot",23);

create table people(
first_name varchar(30),
last_name varchar(30),
age int);

insert into people(first_name,last_name,age)values("linda","bechler",42),("phipls","ford",32);
select * from people;
drop table people