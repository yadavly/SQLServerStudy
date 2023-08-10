use Swapnali_PracticeDB

---select ---used for cols filter
--top
--distinct-- it will give unique records(remove duplicates value)
--where ---used for row filter
--in --list of values for filter
--<,>,<=,<>
--not in---
--between
-----join-----
--like
--computed column
--order by
--null values
--isnull coalesce

--Not
select   * from employeeDetail
where salary <> 100000

select * from employeeDetail
where gender <> 'female'

--between

select * from employeeDetail
where salary between 50000 and 65000

--Not In
select * from employeeDetail
where dept not in('IT', 'Admin')

--in

select * from employeeDetail
where dept  in('IT', 'Admin')

---or

select * from employeeDetail
where dept = 'IT' or dept = 'HR'

--and

select * from employeeDetail
where (dept = 'IT') and (dept = 'HR')

--like

select * from employeeDetail
where firstname like 'a%'

select * from employeeDetail
where firstname like '%a%'

select * from employeeDetail
where firstname like '__i'


--not like
select * from employeeDetail
where dept not like 'Hr'

---null

select * from employeeDetail
where gender = null------syx wrong

select * from employeeDetail
where gender is null

select * from employeeDetail 
where gender is not null


SELECT 15 --15

select '%'--'%'

select $ --0.000
--'+' = concate
select 'abc' + 'xyz'

select 'abc' + 1 --Conversion failed when converting the varchar value 'abc' to data type int.

select 'abc' + '1'


select * from EMPLOYEE-- all data from emp

select * from EMP2,EMPLOYEE--

select 1 from EMPLOYEE

select null + 1

select null * 2

select 1 ----1
where 1 = 1

select 1 ----blank tbl
where 1 = 2


select 1
where null = null ---- blank null is not equal null

select 10/2

select 6/0 ---Divide by zero error encountered.

--computed column

--select *, FIRSTNAME +' '+ LASTNAME as fullname from EMPLOYEE

--order by used for sorting data by default asc

select * from EMPLOYEE
order by firstname asc

select * from EMPLOYEE
order by firstname desc



---Temp tables --
--1) local temp table --scop only for current session

create table #emp(id int)
select * from #emp
--2) global temp table
create table ##empglob(id int)
select * from ##empglob -----another session

--






