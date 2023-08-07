
--What is object in database?
--what is identifier and its rules? (start: alphabets, _), (alphabets, _, numbers)
-- space not allowed, reservered words not allowed 

create table [the table ]

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



