--Data Types:
https://learn.microsoft.com/en-us/sql/t-sql/data-types/data-types-transact-sql?view=sql-server-ver16
--=============================================
93543 --Data Types(int), Memory(4 bytes), Range(-2b to +2b)

declare @a as int;	set @a = 5;	select DATALENGTH(@a)	--		int	:	4bytes	:	-2,147,483,648 to 2,147,483,647
tiny int => age
bigint => phone number (or characters)
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

declare @a as varchar(9000)--ERROR: The size (9000) given to the type 'varchar' exceeds the maximum allowed for any data type (8000)
set @a = 'suraj yadav'; select @a

declare @a as nvarchar(4001)--ERROR: The size (4001) given to the parameter '@a' exceeds the maximum allowed (4000)
set @a = N'suraj'; select @a
select DATALENGTH(@a)


declare @a as nvarchar(4000)
set @a = N'suraj'; select @a;select DATALENGTH(@a)
set @a = N'Prajwal'; select @a;select DATALENGTH(@a)

declare @a as nchar(4000)
select DATALENGTH(@a)--NULL

declare @a as nchar(4000);set @a = ''
select DATALENGTH(@a)--NULL

declare @a as nchar(max);set @a = ''--ERROR: Incorrect syntax near the keyword 'nchar'

declare @a as nvarchar(max);
set @a = '';		select DATALENGTH(@a)
set @a = N'suraj';	select DATALENGTH(@a)


declare @a as varchar(max)
set @a = 'suraj'; select @a

--============================
select REPLICATE('Omkar',2)

--=====================================
go

declare @a as varchar(max)
set @a = REPLICATE('s',50000)
--select @a; 
select DATALENGTH(@a);  -- 8000

--===============================
declare @smallstring as varchar(max)
set @smallstring = 's'

declare @a as varchar(max)--1,987,654,321

--set @a = REPLICATE(@smallstring,1987654321);select DATALENGTH(@a);--ok

--set @a = REPLICATE(@smallstring,2147483647);select DATALENGTH(@a);--ok, 10 secs

set @a = REPLICATE(@smallstring,5147483648);select DATALENGTH(@a);--ok, 28 secs

go

DECLARE @y text = REPLICATE(CAST('X' AS VARCHAR(MAX)),92681); 
SET @y = REPLICATE(@y,92681);
SELECT LEN(@y)--8589767761 -- 43 sec on 32 gb ram
--https://stackoverflow.com/questions/7611394/maximum-size-of-a-varcharmax-variable

--============================
declare @x as varchar(max) = 'Suraj Yadav'
select SUBSTRING(@x,1,5)
select SUBSTRING(@X,7,5)

select CHARINDEX('Yadav',@x,1)--This T-SQL string function returns the position of a substring in a string.

select ASCII('A')--65
select ASCII('a')--97
select ASCII(N'म')--63
select ASCII('?')--63
select ASCII('1')--49
select ASCII('AURAJ')--65

select CHAR(65)--A
select CHAR(97)--a
select CHAR(63)--?

select 'a' + 'b'
select CONCAT('a','b')
select CONCAT('a',N'b')
select CONCAT('a',N'म')
select CONCAT_WS('i','a','b','c','d')

select replaCE('Suraj Yadav',' ','-')
select REPLACE('suraj the yadav',' ', '-')

select STUFF('suraj yadav',7,5,'the coach')

create table #employee (name varchar(30))

insert into #employee values('Ms. Sonali Jaware')
insert into #employee values('Ms. Shweta Selokar')
insert into #employee values('Mr. Akshay Takale')

select * from #employee

select stuff('Ms. Sonali Jaware',1,3,'Emp Name: ')
select stuff('Mr. Akshay Takale',1,3,'Emp Name: ')
select STUFF(name,1,3,'Emp Name: ') from #employee

select name from #employee
select replace(name,'Ms.','') from #employee
select stuff(name,1,3,'') from #employee

--================================

declare @a as varchar(max) = 'HTML SQL JAVA'
select STUFF(@a,10,4,'DotNet')

declare @a as varchar(max) = 'JAVA HTML SQL'
select STUFF(@a,10,4,'DotNet')

declare @a as varchar(max) = 'HTML SQL JAVA'
select REPLACE(@a,'JAVA','DotNet')
set @a = 'JAVA HTML SQL'
select REPLACE(@a,'JAVA','DotNet')

left, right, len, select LOWER('Suraj'), TRIM, 

select CHAR(255)

select NCHAR(256)
select NCHAR(20146)--亲 -- 4Eb2 hex

select ASCII('a')
select UNICODE(N'म')--2350
select NCHAR(2350)--म
select NCHAR(2340)

select REVERSE('Prajwal')

declare @a as varchar(max) = 'https://google.com/id=4&page=5&video=12345'
--select CHARINDEX('=',@a)
--select REVERSE(@a)
--select REVERSE(CHARINDEX('=',@a))
--select LEFT('suraj',2)
--select CHARINDEX('=',REVERSE(@a))--6
select REVERSE(left(REVERSE(@a),CHARINDEX('=',REVERSE(@a))-1))
