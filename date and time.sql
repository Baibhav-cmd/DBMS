create table people(
name varchar(30),
birthdate date,
birthtime time,
burthdt datetime
);

desc people;
insert into people(name,birthdate,birthtime,burthdt)values('ram','1111-12-30','08:22:33','1111-12-30 06:22:33'),
("ram",current_date(),current_time(),current_timestamp());
select * from people;
select now() as fulldate;
select date_format(birthdate, '%a %b') from people;