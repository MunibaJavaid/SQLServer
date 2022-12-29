use std_2104B1
create table student(std_id int not null,std_name varchar (225) null,eduaction varchar (225))

create table student2(stud_id int default (3), stude_name varchar (225))
insert into student2(stude_name)values('John')

alter table student2
drop stud_id
select * from student2

alter table student
add salary int null

alter table student
add phone int not null default (0987657890)

alter table Student
drop column salary

insert into student values(1,'xyz','inter')
insert into student(std_id, eduaction) values (2,'matric')
insert into student (std_name,eduaction) values ('abc','graduate')

insert into student(std_id,std_name,eduaction,salary,phone) values (3,'abc','matric',2000,889785665)

select * from student