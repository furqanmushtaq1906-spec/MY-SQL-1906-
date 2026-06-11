

--SQL(structured query language):is a standard language used to store,retrieve,manage and manipulate data in relational database.
--DATABASE:is an organised collection of related data that is stored electronically and can be easily accessed,managed and updated.
--four basic operations performed on data in a database--
--1-CREATE
--2-READ
--3-UPDATE
--4-DELETE

--categories  of SQL commonds

--1DATA MANUPLATION LANGUAGE(DML)--
--2DATA DEFINITION LANGUAGE(DDL)--
--3TRANSACTION CONTROL LANGUAGE(TCL)--

/* data definition language(DDL):- DDL is use to define the structure
DDL commands as follows:-
CREATE :- CREATE A TABLE
ALTER :- MAKE CHANGE IN EXISTING TABLE OR WE CAN SAY IT MODIFY THE TABLE
TRUNCATE :- IT DELETES INTERNAL CONTENT OF TABLE 
DROP:- DROP MEANS WHEN WE WANT TO DELETE WHOLE TABLE WITH DATA AND ITS CONTENT


/*DATA MANUPLATION LANGUAGE(DML):- DML DEALS WITH EXISTING TABLE OR WE CAN SAY EXISTING INSTANCE
DML commands
1 . SELECT   IT RETRIVES DATA FROM DATABASE.
2 . INSERT   adding data in particular table. 
3 . UPDATE   it updates existing data that are presented in table.
4 . DELETE   it deletes a particular value inside a table.
*/

--DATA type tell which type a data a particular holds--

--char -- holds textual value
--varchar holds textual value
-- int holds numerical value
-- boolean holds true/false
--ENUM holds gender values('male','female','other')
--DATE holds data values eg date_of_birth

create table employee
(
id int,
name varchar(50)
);

alter table employee
add department varchar(30)

alter table employee  
add salary int


insert into employee(id,name,department,salary) values(100,'aslam','IT',20000)
insert into employee(id,name,department,salary) values(101,'maaya','IT',20000)
insert into employee(id,name,department,salary) values(103,'rahul','DATA ANALYST',20000)
insert into employee(id,name,department,salary) values(104,'tilak verma','DATA ANALYST',20000)
--clause in sql means to filter data ,order data etc it uses some keywords that are as follows
-- from
--where 
--order by
--having

update employee
set name='sahil'
where id = 103
update employee
set department='DATA ANALYST' 
where id=100
update employee
set department='DATA ANALYST'
where id=101

truncate table employee

create table students
(
roll_no int,
name  varchar(50),
section varchar(20)
);

--truncate-
truncate table students -- here truncate delete data not table
 
 
 --here we alter--
alter table students
add class varchar(30)



--here we insert data into table--

insert into students(roll_no,name,section,class) values(1,'sahil','A','12th')
insert into students(roll_no,name,section,class) values(2,'aadil','A','12th')
insert into students(roll_no,name,section,class) values(3,'momin','A','12th')
insert into students(roll_no,name,section,class) values(4,'adnan','A','12th')
insert into students(roll_no,name,section,class) values(5,'aquib','A','12th')

--here we updare and delete in data
delete from students
where roll_no=4
update students
set name='wasiq' 
where roll_no=5


select * from students



drop database employee if exists;



/*
constraints are rule that are applied to table
1. primary key ---unique identifies each row in table.
2. not null --- null values are not allowed.
3. unique ---duplicate values are not allowed in table
4. default--- pre-defined
5. foreign key -- establish relation between two tables.
6. check -- to apply conditions
*/


create table adnan
(
id int primary key,
name varchar(30) not null,
address varchar(40) default 'srinagar',
salary int
)

insert into adnan(id,name,salary) values(100,'sahil',20000)
insert into adnan(id,name,address,salary) values(101,'adil','pulwama',30000)
insert into adnan(id,name,salary) values(103,'furkan',40000)

update adnan
set id=102
where id=103

select * from adnan




--filter--
select * from adnan
where salary=40000

select * from adnan
where address='srinagar'

select * from adnan
where salary > 20000

select * from adnan
where salary < 30000


--aggregate functions--are SQL functions that perform a calculation on multiple rows of data and return a single summarized value

select max(salary) as maximum from adnan
select min(salary) as minimum from adnan
select sum(salary) as total_salary from adnan
select AVG(salary) as total_avg from adnan
select count(*) from adnan


select top 2 * from adnan

select top 1 * from adnan
order by salary desc

select * from adnan
where name='furkan' and salary=40000


select * from adnan 
order by name desc
select * from adnan
where name like '%n'

select * from adnan
where name like 'f%'

