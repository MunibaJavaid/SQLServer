USE std_2104B1

CREATE TABLE table_5
(
Employee_role VARCHAR(max),
Summary VARCHAR(max)
)


INSERT INTO table_5(Employee_role, Summary) VALUES ('Research', 'This a very long non-unicode string')

INSERT INTO table_5(Employee_role, Summary) VALUES ('Xyz', 'This a very long non-unicode string')



UPDATE table_5 SET Summary .WRITE('n incredibly', 6,5) WHERE Employee_role LIKE 'Research'



SELECT *FROM table_5
