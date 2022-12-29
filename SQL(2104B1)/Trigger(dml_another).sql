use db_trigger
--------SALES-------------
CREATE TABLE Sales (SalesId int IDENTITY (1,1) NOT NULL, 
SalesDate datetime, Itemcount int, price money);

------------SALES HISTORY-------------
CREATE TABLE SalesHistory (SalesId int IDENTITY (1,1) NOT NULL, 
SalesDate datetime, Itemcount int, price money, ChangeType varchar(10), 
ChangeDate datetime DEFAULT GETDATE(), ChangedUser varchar(100) DEFAULT SUSER_NAME());

insert into Sales(SalesDate,Itemcount,price) values('2-mar-2022',15,40000)

create trigger tr_ins_sale on sales for insert
as
begin
	insert into SalesHistory(SalesDate,Itemcount,price,ChangeType)
	SELECT
    	SalesDate
	,Itemcount
	,price
	,'INSERT'
  FROM inserted
end

select * from Sales
select * from SalesHistory

insert into Sales(SalesDate,Itemcount,price) values('2-mar-2022',15,40000)
-------UPDATE TRIGGER----------
create trigger tr_ins_sale_up on sales for update
as
  INSERT INTO SalesHistory(SalesDate,Itemcount,price,ChangeType)
  SELECT 
    SalesDate
	,Itemcount
	,price
	,'UPDATE'
  FROM inserted 

insert into Sales values('4-march-2021',10,45000)
insert into Sales values('6-may-2021',105,555000)

update Sales set Itemcount = 50 where price = 45000
select * from Sales
select * from SalesHistory

--------DELETE TRIGGER--------------
create trigger tr_ins_sale_del on sales after delete
as
  INSERT INTO SalesHistory(SalesDate,Itemcount,price,ChangeType)
  SELECT 
    SalesDate
	,Itemcount
	,price
	,'DELETE'
FROM inserted 
------DELETE EFFECT WITH VARIABLE----------------
create trigger AfterDeleted on sales after delete
as declare
	@salesDate date,
	@itemCount int,
	@price int, 
	@changeType varchar(10)
---------
select @salesDate = d.SalesDate from deleted d
select @itemCount = d.itemCount from deleted d
select @price = d.price from deleted d
select @changeType = 'DELTED'
---------
insert into SalesHistory(SalesDate,Itemcount,price,ChangeType) 
values (@salesDate,@itemCount,@price,@changeType)

drop trigger tr_ins_sale_del


delete from Sales where Itemcount = 10

select * from Sales
select * from SalesHistory

