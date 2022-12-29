use std_2104B1
CREATE TABLE Persons(
ID int NOT NULL,
LastName varchar (225) NOT NULL,
FirstName varchar(225) NOT NULL,
age int);

insert into Persons(FirstName,LastName) values ('xyz','abc');
insert into Persons (ID,FirstName,LastName) values (1,'abc','xyz');

Alter table persons
Alter column Age int not null
update Persons set age = 13 where Age is null

insert into Persons (ID,FirstName,LastName,age) values (1,'abc','xyz',14);

select * from Persons