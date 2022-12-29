use std_2104B1
create table customer3(CustID int not null primary key identity(500,1),
CustName varchar(225),
Gender varchar (225),
Education varchar (225),
Age int,
Salary bigint,
phone bigint,
city varchar(225))

insert into customer3(custName,Gender,Education,Salary,Age,phone,city)
					values('Ahmed','Male','inter',20000,22,03350987654,'Karachi'),
					('Fahad','Male','Graduate',30000,25,03345673218,'Lahore'),
					('Ayesha','Female','inter',22000,23,03224569032,'Islamabad'),
					('Saad','Male','Master',40000,29,03317865043,'Karachi'),
					('Fatima','Female','Graduate',25000,24,03335643908,'Lahore'),
					('Zahid','Male','inter',25000,22,03340981235,'Islamabad'),
					('Faisal','Male',NULL,5000,20,03360598746,'Karachi'),
					('Faizan','Male',NULL,3000,19,03321589634,'Islamabad'),
					('Zunaira','Female',NULL,3000,19,03361299634,'Islamabad'),
					('Neha','Female',NULL,5000,23,03300098746,'Karachi') 
--GROUP BY WITH ROLLUP AND CUBE
select COALESCE(city, 'City_GrandTotal') as city, sum(salary) as totalSum 
from customer3 group by city with rollup
select COALESCE(city, 'City_GrandTotal') as city, sum(salary) as totalSum 
from customer3 group by city with cube
select * from customer3
select COALESCE(city, 'City_GrandTotal') as city,  COALESCE(gender, 'GrandTotal') as gender, 
sum(salary) as Salary_Sum
from customer3 group by city, gender with rollup
