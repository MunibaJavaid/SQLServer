use std_2104B1
create table customer1(CustID int not null primary key identity(500,1),
CustName varchar(225),
Education varchar (225),
Age int,
Salary bigint,
phone bigint,
city varchar(225))

insert into customer1(custName,Education,Salary,Age,phone,city)
					values('Ahmed','inter',20000,22,03350987654,'Karachi'),
					('Fahad','Graduate',30000,25,03345673218,'Lahore'),
					('Sajid','inter',22000,23,03224569032,'Islamabad'),
					('Saad','Master',40000,29,03317865043,'Karachi'),
					('Zaid','Graduate',25000,24,03335643908,'Lahore'),
					('Zahid','inter',25000,22,03340981235,'Islamabad')
insert into customer1(custName,Education,Salary,Age,phone,city) 
values('Faisal',NULL,5000,20,03360598746,'Karachi') 
insert into customer1(custName,Education,Salary,Age,phone,city) 
values('Faizan',NULL,3000,19,03321589634,'Islamabad')
insert into customer1(custName,Education,Salary,Age,phone,city) 
values('Ahmed',NULL,3000,19,03361299634,'Islamabad')
insert into customer1(custName,Education,Salary,Age,phone,city) 
values('Zubair',NULL,5000,23,03300098746,'Karachi') 

select * from customer1

--GROUP BY NULL
 select city, sum(age) from customer1 
 where Education is null group by city





 select * from customer1 where  custName like 'A%' OR custName like 'S%'
 select * from customer1 where  custName like 'F%' OR custName like 'Z%'

 --GROUP BY WITH ALL
 select city, count(salary) as salaryCount from customer1
 where custName like 'F%' OR custName like 'Z%' group by All city