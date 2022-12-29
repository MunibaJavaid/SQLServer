create database std_2104B1
use std_2104B1
------JSON VALUE------
DECLARE @JSONData AS NVARCHAR(max)
SET @JSONData = N'{
    "EmployeeInfo":{
        "FirstName":"Jignesh",
        "LastName":"Trivedi",
        "Code":"CCEEDD",
        "Addresses":[
            { "Address":"Test 0", "City":"Gandhinagar", "State":"Gujarat"},
            { "Address":"Test 1", "City":"Gandhinagar", "State":"Gujarat"}
        ]
    }
}'
SELECT JSON_VALUE(@JSONData,'$.EmployeeInfo.Addresses[0].Address')
------JSON QUERY------------
DECLARE @JSONData AS NVARCHAR(max)
SET @JSONData = N'{
    "EmployeeInfo":{
        "FirstName":"Jignesh",
        "LastName":"Trivedi",
        "Code":"CCEEDD",
        "Addresses":[
            { "Address":"Test 0", "City":"Gandhinagar", "State":"Gujarat"},
            { "Address":"Test 1", "City":"Gandhinagar", "State":"Gujarat"}
        ]
    }
}'
SELECT JSON_QUERY(@JSONData,'$.EmployeeInfo.Addresses')
SELECT JSON_QUERY(@JSONData,'$.EmployeeInfo.Addresses[1]')
----------JSON MODIFY------------
DECLARE @JSONData AS NVARCHAR(max)
SET @JSONData = N'{
    "EmployeeInfo":{
        "FirstName":"Jignesh",
        "LastName":"Trivedi",
        "Code":"CCEEDD",
        "Addresses":[
            { "Address":"Test 0", "City":"Gandhinagar", "State":"Gujarat"},
            { "Address":"Test 1", "City":"Gandhinagar", "State":"Gujarat"}
        ]
    }
}'
SET @JSONData = JSON_MODIFY(@JSONData,'$.EmployeeInfo.FirstName', 'Rakesh')
SELECT JSON_VALUE(@JSONData,'$.EmployeeInfo.FirstName')

---------JSON OPEN------------
DECLARE @JSONData AS NVARCHAR(4000)
SET @JSONData = N'{
        "FirstName":"Jignesh",
        "LastName":"Trivedi",
        "Code":"CCEEDD"
    }'

SELECT * FROM OPENJSON(@JSONData)
WITH (FirstName VARCHAR(50),
LastName VARCHAR(50),
Code VARCHAR(50))