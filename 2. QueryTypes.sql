
--=========QUERY TYPES==============--

--DDL-- create, alter, drop, truncate
--DML-- insert, update, delete
--DQL-- select
--TCL-- commit, savepoint, rollback, (begin transaction, etc.)
--DCL-- grant, revoke

--====================================DDL=======================================
create table stud(id int, name varchar(50))
go
create view vw_studentnames as 
select name from stud
go
select * from vw_studentnames

--alter table stud add mark int;
alter table stud
add salary money

alter table stud
drop column salary

alter table stud
alter column id varchar(300)

execute sp_rename 'stud.id', 'id2'--ok
execute sp_rename 'id', 'id2'--wrong
execute sp_rename 'stud.id2', 'stud.id3'--undesired result

drop table stud
drop view vw_studentnames

--====================================DML=======================================
insert into  stud values(1 ,'abc', 40)

---abc xyz??
--====================================DQL=======================================

select * from stud
--mark 

