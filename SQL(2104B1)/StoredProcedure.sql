use std_2104B1
---SYSTEM STORED PROCEDURE-----
EXEC sp_help
sp_tables
EXEC Sp_who

EXEC sp_changedbowner 'xyz'
 use std_2104B1
select * from customer3
create procedure sp_customer
As
BEGIN 
select * from customer3 where gender = 'Male' select Education , sum (salary) as Sum_Salary  from customer3 
where city = 'Karachi' group by education
END
exec sp_customer 
----------INPUT PARAMETER-------------
create procedure sp_customers
@custID int,
@Education varchar(225)
As
BEGIN 
select * from customer3 where CustID = @custID
select * from customer3 where Education = @Education
END
EXEC sp_customers 503, 'inter'
EXEC sp_customers 500, 'matric'
--------------2nd Example with insert values---------------
create procedure sp_customer1
@custName varchar (225),
@Education varchar(225),
@Age int,
@Salary bigint
AS
BEGIN
insert into customer3 (CustName, Education,Age,Salary)
values (@custName,@Education,@Age,@Salary)
END
EXEC sp_customer1 'Abid', 'Graduate',22, 24000
EXEC sp_customer1 'Ali', 'Graduate',28, 28000
select * from customer3

----STORED PROCEDURE USING IF ELSE-----
create proc customer_proc
@CustName varchar(225),
@Salary bigint
as
begin
	if @CustName is null
	begin
		print 'Name is passing null value'
	end
	else
	begin
		insert into customer3(CustName,Salary) values (@CustName,@Salary)
	end
end

exec customer_proc 'abc',70000
select * from customer3