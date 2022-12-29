use std_2104B1
CREATE TABLE table_3
(
id INT,
employee VARCHAR(32)
)
go
INSERT INTO table_3 VALUES
(1, 'Matt'),(2, 'Joseph'),(3, 'Renny'),(4, 'Daisy');

select * from table_3
go
DECLARE @updatedTable TABLE
(
id INT, olddata_employee VARCHAR(32), newdata_employee VARCHAR(32)
);
UPDATE table_3 Set employee= UPPER(employee)
OUTPUT
inserted.id,
deleted.employee,
inserted.employee
INTO @updatedTable
SELECT * FROM @updatedTable