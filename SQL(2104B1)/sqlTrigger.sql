-------------TRIGGER EXAMPLES--------------
create database db_trigger
use db_trigger
-----main Table-------
create table Empl_table
(EmpId int primary key identity (1,1),
emp_Name varchar(225),
Emp_Salary bigint)
insert into Empl_table values ('Ali',60000)
select * from Empl_table
----audit Table-------
create table Emp_tbl_audit(
a_empId int primary key identity (1,1),
a_empName varchar(225),
a_empSal bigint,
audit_action varchar(225),
backupId int)
select * from Emp_tbl_audit
--------Trigger Start----------------
create trigger after_instrig on Empl_table for INSERT
as
declare @backupId int;
declare @varname varchar (225);
declare @varsal bigint;
declare @varaction varchar (225)

select @backupId = i.EmpId from inserted i
select @varname = i.emp_Name  from Empl_table i
select @varsal = i.Emp_Salary  from Empl_table i
select @varaction = 'Inserted Record ---After Insert trigger'

insert into Emp_tbl_audit(a_empName,a_empSal,audit_action,backupId) values (@varname,@varsal,@varaction,@backupId)
--------trigger end-----------
select * from Empl_table
select * from Emp_tbl_audit

insert into Empl_table values ('xyz',70000)
