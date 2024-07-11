CREATE TABLE contacts (
	name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE
);

INSERT INTO contacts (name, phone)
VALUES ('billybob', '8781213455');


create table user(
name varchar(40),
age int check(age>17)
);
	insert into user(name,age) values('Ram',18);
    
    create table pal(
    word varchar(40),
    constraint word_pal check(reverse(word)=word)
    );
    insert into pal(word) values('moma');

select * from pal;   
rename table pal to num; 
    alter table num 
    add column value int;
    -- rename column aa to vv;
    select * from num;
    
    alter table num 
-- add constraint value1 check(value>0);-- 
drop constraint value1;
alter table num
modify column value varchar(20);