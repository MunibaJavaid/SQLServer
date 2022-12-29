use std_2104B1

--ADD COLUMN WITH DEFAULT CONSTRAINT
alter table Persons
Add city varchar (225) not null default 'sandnes'
--INSERT VALUES
insert into Persons (ID,FirstName,LastName,age) values (3,'john','david',16);
insert into Persons (ID,FirstName,LastName,age,city) values (3,'john','david',16,'north');
--DROP DEFAULT CONSTRAINT
alter table persons drop constraint DF__Persons__city__35BCFE0A;
alter table Persons drop column city
--ADD SIMPLE COLUMN
Alter table persons
Add OrderDate date
--ADD exsisting column to add default Constraint
Alter table Persons Add Constraint df_date default getdate() for OrderDate

update persons set OrderDate = getdate() where OrderDate is NULL

select * from Persons