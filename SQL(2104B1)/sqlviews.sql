use std_2104B1

create view vwEmpDep 
as select  
e.EmpID,e.EmpName,e.Gender,e.phone,e.city, 
d.depid,d.Department
from Employee_Info e Inner Join Department_Info d on e.EmpID = d.Emp_ID


insert into vwEmpDep (EmpID,EmpName,Gender,city,phone,DepID,Department) 
values (202,'Fatima','Female','Karachi',05558757898,220,'xyz')


 EXEC sp_helptext vwEmpDep

select * from vwEmpDep

select * from Employee_Info
select * from Department_Info


insert into vwEmployeeInfo (EmpID,EmpName,Gender,city) values (202,'Fatima','Female','Karachi')
---MODIFY VIEW----
---Update View-----
update vwEmployeeInfo set EmpName = 'xyz' where EmpID = 202
delete from vwEmployeeInfo where EmpID = 202

---ALTER COMMANDS----
alter view vwEmployeeInfo as
select EmpId, EmpName,Gender,Age,City,Email, HireDate from Employee_Info2
---DROP VIEW----
drop view vwEmployeeInfo
select * from vwEmployeeInfo

select * from Employee_Info2
