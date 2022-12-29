use practice
create table Employee(EmpID int not null primary key,
EmpName varchar(225),
Gender varchar (225),
Age int,
Salary bigint,
phone bigint,
city varchar(225))

insert into employee(EmpID,EmpName,Gender,Salary,Age,phone,city)
					values(101,'Ahmed','Male',20000,22,03350987654,'Karachi'),
					(102,'Fahad','Male',30000,25,03345673218,'Lahore'),
					(103,'Ayesha','Female',22000,23,03224569032,'Islamabad'),
					(104,'Saad','Male',40000,29,03317865043,'Karachi'),
					(105,'Fatima','Female',25000,24,03335643908,'Lahore'),
					(106,'Zahid','Male',25000,22,03340981235,'Islamabad'),
					(107,'Faisal','Male',5000,20,03360598746,'Karachi'),
					(108,'Faizan','Male',3000,19,03321589634,'Islamabad'),
					(109,'Zunaira','Female',3000,19,03361299634,'Islamabad'),
					(200,'Neha','Female',5000,23,03300098746,'Karachi'),
					(201,'Sheeza','Female',6500,24,03311198746,'Karachi')
select * from Employee

-------------Department Table----------
use practice
create table Department(DepID int primary key,
Emp_ID int foreign key references employee(EmpID),
Department varchar (225),
city varchar(225),
PinCode bigint)
-------------------INSERT ROWS VALUES----------------
insert into department (DepID,Emp_ID,Department,city,PinCode) 
					values(201,102,'HR','Karachi',90556),
					(202,104,'Developer','Karachi',60523),
					(203,106,'Analyst','Islamabad',78968),
					(204,108,'Sales','Lahore',24789),
					(205,200,'Quality Assurance','Islamabad',36974),
					(206,108,'Maintenance','Karachi',02367),
					(207,101,'Developer','Lahore',12536),
					(208,102,'Tester','Islamabad',79635),
					(209,109,'Maintenance','Karachi',95647),
					(210,200,'Tester','Karachi',32785)
select * from department
------------------INNER JOIN QUERY-------------------
select * from Employee
select * from department
select *from Employee Emp 
INNER JOIN department dep ON Emp.EmpID = dep.Emp_ID
select *from Employee Emp 
LEFT JOIN department dep ON Emp.EmpID = dep.Emp_ID
select *from Employee Emp 
RIGHT JOIN department dep ON Emp.EmpID = dep.Emp_ID
select *from Employee Emp 
FULL JOIN department dep ON Emp.EmpID = dep.Emp_ID