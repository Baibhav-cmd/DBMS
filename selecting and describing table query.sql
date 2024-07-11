create table employees(
id int auto_increment,
last_name varchar(30) not null,
first_name varchar(30) not null,
middle_name varchar(30)  null,
age int not null,
current_status varchar(30) not null default"employed" ,
primary key (id)
);

desc employees;

show tables;

create table cats(
cat_id int auto_increment,
name varchar(30),
breed varchar(30),
age int,
primary key(cat_id)

);


INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
       
       
       
		select * from cats where age <=4;
        --  cat id for all rows--
        
        select cat_id from cats;
        
        -- name and breed in all the rows-- 
        
        select name , breed from cats;
        
        
        select name ,age from cats where breed='tabby';
        
        
        select cat_id as id from cats