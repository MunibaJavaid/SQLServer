use std_2104B1

create table customer(
ID int Primary key,
Name varchar (225),
Age int not null,
Address char (225)
)
insert into customer(ID,Name,Age,Address) values (101,'abc',19,'xyz')
insert into customer(ID,Name,Age,Address) values (102,'xyz',20,'abc')
insert into customer(ID,Name,Age,Address) values (102,'xyz',20,'abc')
insert into customer(Name,Age,Address) values ('xyz',20,'abc')

Alter table customer Drop constraint PK__customer__3214EC274A5A5518
Alter table customer drop column ID

delete from customer where id is NULL

Alter table customer
Add ID  int not null
--Exsisting table column to convert primary key
alter table customer add PRIMARY KEY(ID)
alter table customer Add Constraint Pk_custID PRIMARY KEY (ID);

select * from customer