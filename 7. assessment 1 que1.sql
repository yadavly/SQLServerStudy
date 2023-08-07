--select * from Employee
--select * into Employee2 from Employee
----select * from Department order by deptid
--select * from Department2 order by deptid
--go
--create 

--ALter table Department
--ADD EmpID tinyint foreign key references Employee(ID)

--Go

--ALter table Department
--ADD EmpID tinyint

--ALter table Department
--ADD foreign key(EmpID) references Employee(ID)

--Go

--update Department 
--set EmpID = 1
--where DeptID = 101

--insert into Department
--values (101,'IT',2),(101,'IT',3)

select * from Employee
select * from Department order by deptid
select * from Employee2
select * from Department2 order by deptid

--alter table Employee
--add DID tinyint foreign key references Department(DeptId)--ERROR: There are no primary or candidate keys in the referenced table 'Department' 
----that match the referencing column list in the foreign key 'FK__Employee__DID__3B75D760'
----Could not create constraint or index. See previous errors.

--alter table Department2
--alter column DeptID tinyint not null

--alter table Department2
--add primary key(DeptID)

--alter table Employee2
--add DepIdendity tinyint foreign key references Department2(DeptId)

--insert into Department2(DeptID,DeptName) values(101,'IT'), (102,'HR')
--alter table Department2 drop column EmpID


