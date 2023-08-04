/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[firstname]
      ,[lastname]
      ,[salary]
      ,[joiningdate]
      ,[dept]
      ,[gender]
  FROM [Swapnali_PracticeDB].[dbo].[employeeDetail]

 -- write a query to find joining year of empl

 --dateadd,datediff,year,month???
 select joiningdate,DATEPART(year,joiningdate) from employeeDetail

 --write a query to find joining month of empl
 select joiningdate,DATEPART(month,joiningdate) from employeeDetail

 select YEAR(joiningdate) from employeeDetail
  select month(joiningdate) from employeeDetail

  select joiningdate,DATENAME(dw,joiningdate) from employeeDetail

  select joiningdate, DATENAME(month,joiningdate) from employeeDetail


--find tenure of emp?
select * from employeeDetail

select joiningdate, DATEDIFF(month,joiningdate,getdate()) from employeeDetail


--3 months notice 90days 

--get previous day of today?

select DATEADD(day, -1,getdate())

select DATEADD(day,-8,getdate())--2023-07-26 19:20:38.447

select DATEADD(day,10, getdate())--2023-08-13 19:22:04.517

select dateadd(day,90,GETDATE())

--get last day of previous month

select EOMONTH(getdate())--2023-08-31

------identity--------

create table person(pId int, name varchar(50))

select * from person--IDENTITY_INSERT is already ON for table 'Swapnali_PracticeDB.dbo.person'. Cannot perform SET operation for table 'p1'.

set IDENTITY_INSERT person off

insert into person (pid,name)  values(2,'xyz')

--An explicit value for the identity column in table 'person' can only be specified 
---when a column list is used and IDENTITY_INSERT is ON.

create table p1(id int identity(5,5) not null, name varchar(50))

insert into p1 (name)values('sur99')

set IDENTITY_INSERT p1 off
select * from p1

--what is identity in sql server:

create table #emp (id int identity (1,1), name varchar(50))

--the indentity in sql is a property that can applied on column whose value automatically created by sql server. 
--whenever you marked column as indentty
--that column will be automatically filled in an auto increment way
--syantax: identity(seed, increment)

--identity ch w3 var check kara 5 min headphone arrange karte 
--guys plz take 15 min break 

drop table emp5
create table emp5(id int primary key identity(100,2), name varchar(300))
insert into emp5 values('suraj')
insert into emp5(name) values('sonali')
select * from emp5

set identity_insert emp5 on 
insert into emp5 values(1,'surajjjjj')--ERROR: An explicit value for the identity column in table 'emp5' can only be specified when a column list is used and IDENTITY_INSERT is ON
insert into emp5(id,name) values(1,'surajjjjj')

select * from emp5

insert into emp5 values('hi')--Explicit value must be specified for identity column in table 'emp5' either when IDENTITY_INSERT is set to ON or when a replication user is inserting into a NOT FOR REPLICATION identity column.

insert into emp5(id,name) values(1,'hi')--ERROR: Violation of PRIMARY KEY constraint 'PK__emp5__3213E83FBE1E3113'. Cannot insert duplicate key in object 'dbo.emp5'. The duplicate key value is (1).

set identity_insert emp5 off

insert into emp5 values('hi')
select @@IDENTITY--106
set identity_insert emp5 on 

insert into emp5(id,name) values(2,'hi')

select @@IDENTITY--2
set identity_insert emp5 off

select @@IDENTITY--2

insert into emp5 values('hi2')

select @@IDENTITY --108

select * from emp5

set identity_insert emp5 on 

insert into emp5(id,name) values(112,'sur')

set identity_insert emp5 off

select * from emp5

insert into emp5 values('shweta')

set identity_insert emp5 on 

insert into emp5(id,name) values(121,'sur')

set identity_insert emp5 off

select * from emp5

insert into emp5 values('shweta')

set identity_insert emp5 on 
insert into emp5(id,name) values(101,'sur')
set identity_insert emp5 off
select * from emp5

insert into emp5 values('shweta')

--when manual insert is on then WE manully insert value in identity column.
--when manual insert is off (identity chi automatic functionality on ahe) then it takes MAX value and adds 2(increment value) in it.

sp_help 'emp5'

alter table emp5--The object 'PK__emp5__3213E83FBE1E3113' is dependent on column 'id'. ALTER TABLE DROP COLUMN id failed because one or more objects access this column.
drop column id

alter table emp5
drop constraint PK__emp5__3213E83FBE1E3113

--now we dont have PK but we have identity in the table
alter table emp5--ok we can drop identity column (even if Identity is on (i.e. identity_insert Off))
drop column id

