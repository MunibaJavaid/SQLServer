use std_2104B1
CREATE TABLE NewEmployees (EmployeeID smallint,FirstName char(10),
LastName char(10), Department varchar(50), HiredDate datetime, Salary
money );
INSERT INTO NewEmployees VALUES(11,'Kevin','Blaine', 'Research', '2012-07-31', 54000);
--CTE (COMMON TABLE EXPRESSION)
WITH EmployeeTemp (EmployeeID,FirstName)
AS
(
SELECT EmployeeID,FirstName FROM NewEmployees
)
SELECT * FROM EmployeeTemp