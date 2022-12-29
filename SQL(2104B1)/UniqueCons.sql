use std_2104B1
create table Student3(
std_id int,
name varchar (225),
age int not null unique
);
insert into Student3 (std_id,name,age) values (1,'abc',17);
insert into Student3 (std_id,name,age) values (1,'abc',19);
insert into Student3 (std_id,name,age) values (4,'abc',20);

Alter table Student3
Add constraint myunique UNIQUE(std_id)

update Student3 set std_id = 2 where age = 18
update Student3 set std_id = 3 where age = 19


alter table student3 drop constraint UQ__Student3__DE509E6B3CEDC8C9
Alter table student3 drop column age

alter table student3 drop constraint myunique
Alter table student3 drop column std_id




select * from Student3