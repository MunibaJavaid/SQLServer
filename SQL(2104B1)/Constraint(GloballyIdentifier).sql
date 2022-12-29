use std_2104B1
create table emp (empID uniqueidentifier default newid() Not null, empName varchar(225))
insert into emp (empName) values ('abc');
insert into emp (empName) values ('xyz');
select * from emp

