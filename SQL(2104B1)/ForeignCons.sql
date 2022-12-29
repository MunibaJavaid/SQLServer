use std_2104B1

create table customer2 (cust_id int primary key, name varchar (225));

create table orderr (Order_ID int primary key, item varchar (225) not null, 
cust_id int Foreign key References customer2 (cust_id))

alter table orderr drop constraint FK__orderr__cust_id__5070F446
alter table orderr drop column cust_id

alter table orderr 
add constraint FK_custID FOREIGN KEY(cust_id) References customer2 (cust_id)

select * from customer2
select * from orderr