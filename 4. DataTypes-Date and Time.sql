--============== DataTypes - DATE and TIME ===============--

declare @a as time			--(hh:mm:ss.xxxyyyz)					--
declare @b as date			--(yyyy-mm-dd)							--
declare @c as smalldatetime --(yyyy-mm-dd hh:mm:ss)					--
declare @d as datetime		--(yyyy-mm-dd hh:mm:ss.xxx)				-- 1753-01-01 to 9999-12-31	-- 1900-01-01 00:00:00
declare @e as datetime2		--(yyyy-mm-dd hh:mm:ss.xxxyyyz)			-- 0001-01-01 to 9999-12-31 -- 1900-01-01 00:00:00
declare @f as datetimeoffset--(yyyy-mm-dd hh:mm:ss.xxxyyyz +00:00)	--

select GETDATE();
select @a = GETDATE(); select @a
select @b = GETDATE(); select @b
select @c = GETDATE(); select @c
select @d = GETDATE(); select @d
select @e = GETDATE(); select @e
select @f = GETDATE(); select @f
select @e = '2023-08-03 01:55:45.3766667 +05:30'; select @e
select @f = '2023-08-03 01:55:45.3766667'; select @f

select datalength(@a)--5
select datalength(@b)--3
select datalength(@c)--4
select datalength(@d)--8
select datalength(@e)--8
select datalength(@f)--10

--Date--2023-08-03 ---1900-01-01 --3 byte
--time--00:59:35
--smalldatetime --2023-08-03 00:59:35-- 4 byte 
--datetime--2023-08-03 00:59:35.143 --8 byte 
--datetime2--2023-08-03 00:59:35.143000 8byte 
--datetimeoffset  2023-08-03 00:59:35.143000  +5:30

DECLARE @date date= '1912-10-25';  
select datalength(@date)

DECLARE @smalldatetime smalldatetime = '2023-08-02 00:09:00';  
select DATALENGTH(@smalldatetime)
--select GETDATE()--2023-08-03 00:59:35.143

select SYSDATETIME()

create table emp1 (id int, name varchar (50), age int, dateofjoining date)

insert into emp1 values(2, 'abc', 20, '2023-01-08')

select * from emp1

select name, ID, age, dateofjoining, DATEDIFF(mm,dateofjoining,getdate())as tenure from emp1

select ID, name, YEAR(dateofjoining) as year from emp1

select ID, name, month(dateofjoining) as year from emp1
select ID, name,dateofjoining, day(dateofjoining) as year from emp1
select ID, name,dateofjoining, DATENAME(dw,dateofjoining) as day from emp1
--[Dateadd()] ?
--[Datediff()] ?
--[Datepart()] ?
--where YEAR(dateofjoining)

