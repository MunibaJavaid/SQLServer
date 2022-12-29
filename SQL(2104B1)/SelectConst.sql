use std_2104B1
create table students(Std_ID int not null primary key identity (500,1),
s_name varchar(225),
eduaction varchar (225),
age int not null unique,
city varchar (225),
fess int not null)
--Add Current date table
alter table students add CurrentDate date not null default GETDATE()
insert into students(s_name,eduaction,age,city,fess) values ('salman','matric',18,'karachi',2000)
insert into students(s_name,eduaction,age,city,fess) values ('Taha','inter',19,'Islamabad',5000)
insert into students(s_name,eduaction,age,city,fess) values ('Arshad','graduate',20,'lahore',25000)
insert into students(s_name,eduaction,age,city,fess) values ('Noman','Master',21,'Pindi',35000)
insert into students(s_name,eduaction,age,city,fess) values ('Saad','MPhill',22,'Peshawar',45000)
insert into students(s_name,eduaction,age,city,fess) values ('Zubair','Doctor',23,'Hyderabad',55000)
insert into students(s_name,eduaction,age,city,fess) values ('Fahad','matric',24,'karachi',2500)
--Select Without From
select LEFT('karachi',5)
--Selected Column Display
select eduaction,s_name from students
--Select Constant Result
select [s_name]+ ':'+ city + '->'+[eduaction] from students
--Renaming Result Column
select eduaction as education from students
--Computing Values Result
select fess * 0.05 as newFee, fess from students
--Retrived Duplicate Record
select distinct eduaction from students
--Top Keyword
select top 5 Std_ID from students
select top 50 PERCENT * from students
--Select With Into
select std_ID,s_name,city into students2 from students
select * from students2
select * from students