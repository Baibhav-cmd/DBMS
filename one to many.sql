create database relation;
use relation;

create table customer(
id int auto_increment not null,
first_name varchar(50),
last_name varchar(50),
email varchar(50),
primary key (id)
);
create table orders(
id int primary key auto_increment ,
order_date date,
amount decimal(5,2),
coustmer_id int,
foreign key(coustmer_id) references customer(id) on delete cascade
);


INSERT INTO customer (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
       
INSERT INTO orders (order_date, amount, coustmer_id)
VALUES ('2016-02-10', 99.99, 1),
       ('2017-11-11', 35.50, 1),
       ('2014-12-12', 800.67, 2),
       ('2015-01-03', 12.50, 2),
       ('1999-04-11', 450.25, 5);

select * from customer,orders;
desc customer;

select * from customer 
join orders 
on customer.id = orders.coustmer_id;

select first_name,last_name,sum(Amount) as total,max(amount)
 from
customer left join orders
 on customer.id=orders.coustmer_id 
 group by first_name,last_name
 order by total asc;
 
 select first_name, last_name,order_date from customer
 left join orders  
 on customer.id=orders.coustmer_id;
  
  select first_name,last_name,order_date from customer right join
  orders on
  customer.id=orders.coustmer_id;
  
  
  create table student(
  id int auto_increment primary key,
  first_name varchar(100)
  );
  
  create table papers(
  title varchar(100),
  grade varchar(10),
  student_id int,
  foreign key(student_id) references student(id) on delete cascade
  
  );
  
  
  INSERT INTO student(first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

select first_name,title,grade from student join papers on student.id=papers.student_id order by grade desc;
select first_name,ifnull(title,'missing'),ifnull(grade,'0') from student left join papers on student.id=papers.student_id;
select first_name,ifnull(avg(grade),0),case
when ifnull(avg(grade),0)=0 then 'failing'
else 'passing'
end as status
 from student
 left join
 papers on student.id=papers.student_id group by first_name;
 
 select first_name,avg(grade), case
 when 
 
