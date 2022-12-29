use std_2104B1
create table employee(Emp_Id int, Emp_Name varchar (225), Education varchar (225), Phone_no bigint, Salary int)
--1st way
insert into employee values (1,'xyz','matric',06675678905,20000)
insert into employee values (3,'xyz','matric',06675678905,20000)
insert into employee values (4,'xyz','matric',06675678905,20000)
--2nd way
insert into employee(Emp_Name,Education,Emp_Id,Salary,Phone_no) values ('abc','inter',2,30000,0998765435)

insert into employee(Emp_Name,Education,Emp_Id,Salary) values ('abcde','inter',2,30000)

update employee set Education = 'Graduate' where Emp_Name = 'xyz'
update employee set Emp_Name = 'abc' where Emp_Id = 4

delete from employee
where Emp_Name = 'abc'

truncate table employee

select * from employee