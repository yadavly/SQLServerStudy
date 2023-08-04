

--what is database and its types?
/*Ans: Data : statistics it is raw and unprocessed . ex- name , class , marks etc.

information : when data is processed . ” record is also information “. example – pass or fail table etc.

Database : an organized collection of data and information or interrelated data collected at one place.
*/


--what is relational database?
--what is schema?
--what is normalization
--denormalization

create database Aug23;
use Aug23;
create table Emp(id int)

go
create schema hr;
go

create table Emp(id int, age tinyint)--There is already an object named 't1' in the database.
create table hr.Emp(id int)

SELECT TOP (1000) [BusinessEntityID]
      ,[PersonType]
FROM [AdventureWorks2019].[Person].[Person]

--Data Types:
https://learn.microsoft.com/en-us/sql/t-sql/data-types/data-types-transact-sql?view=sql-server-ver16
--=============================================
93543 --Data Types(int), Memory(4 bytes), Range(-2b to +2b)
'93543' -- 5 bytes

'9'1byte
'99' 2byte

99

1234asdASF


00110010 = '2'
97 = 'a'
65 = 'A'

--tinyint 0-255 1byte=8bit

--CHAR vs NCHAR(unicode)
declare @a as char(1)--ansi char (256 symbol - 1 byte)
set @a = '2'

declare @b as nchar(1)--unicode char (65536 - 2 bytes)
set @b = N'म'

select @a, @b
select datalength(@a), datalength(@b)
--=========================================

--variable char
declare @a as char(2)
set @a = '2'
select @a 
select datalength(@a)

go
declare @a as varchar(100)
set @a = 'suraj yadavhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh777777777777777777777777999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999'
select datalength(@a)
select @a
set @a = '22'
select datalength(@a)
set @a = '200'
select datalength(@a)

--===============================
go
declare @a as char(5)
declare @b as nchar(5)
declare @c as varchar(5)
declare @d as nvarchar(5)

set @a = 'suraj'; select DATALENGTH(@a);--5
set @b = 'suraj'; select DATALENGTH(@b);--10
set @c = 'suraj'; select DATALENGTH(@c);--5
set @d = 'suraj'; select DATALENGTH(@d);--10
set @a = 'sur'; select DATALENGTH(@a);--5
set @b = 'sur'; select DATALENGTH(@b);--10
set @c = 'sur'; select DATALENGTH(@c);--3
set @d = 'sur'; select DATALENGTH(@d);--6

--============
go
declare @a as bit--1byte
set @a = 0
select DATALENGTH(@a)

dec

declare @b as tinyint--1byte
set @b = 0
select DATALENGTH(@b)
--==============================================

-- types of queries
--ddl
--dml

--=========================================
-- order by execution

select 
	name as EmpName , id
from
	Emp
where name = 'suraj'--X
GROUP by
having
order by EmpName

--================================

go
--create view
create view myView as 
select * from Emp
go
--use view
select * from myView
go
--=================
select --parent query
	firstname 
from ( 
	select top 1 title, firstname from [Person].[Person] --sub / child query
	) as t



