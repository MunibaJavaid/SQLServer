create database std_2104B1


--DDL (DATA DEFINITION LANGUAGE)
use std_2104B1


create table std(std_id int, std_name varchar (225), education varchar (225))

--DROP COMMAND
ALTER table std
DROP COLUMN education
--MODIFY COMMAND
ALTER table std
ALTER COLUMN std_name char (220)
--ADD COLUMN
ALTER table std
ADD Address varchar (225)

Alter table std
add education varchar(225)


drop table std


select * from std