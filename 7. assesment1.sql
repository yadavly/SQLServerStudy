
--data type, create table and view, constraint, identity

--1. create emp table (id, name) with department (id, name) with PK and FK
--2. add a column called age and gender in employee table and rename name to EmployeeName
--3. create 2 views, for female employees and for employees having name starting with A
--4. put a check constraint on the age column age should be between 0 to 150.
--5. change employee id into identity column keeping all old data intact.
--6. update the view and add Ms. infront of all names of female and Mr. infront of all names of male employees
--7. add date of birth and date of joning with zone information for all employees

--===========================================

3) Create 2 tables, Employee and Project.
--How to set primary key and foreignkey relationship using query
--project (project name, project description, project id)
--one employee can have only 1 project as a time
--one project can have many employees working on it

5)How will you print or save name as 'विकास '?

6)What would be the output of the following script?
DECLARE @Name VARCHAR(20)
SET @Name = 'विकास '
SELECT @Name

8)Lets suppose today is 8th Aug 2023, What will happend when we run this following script?
Is this script through error or not?
SELECT 1 + GETDATE() + 1

11)How large is VARCHAR(MAX)?

12)What can you define with variable length character data types?

13)What is the difference between PRIMARY KEY and FOREIGN KEY? 

14) Is NULL value allowed in the FOREIGN KEY column?

15)Can you make the FOREIGN KEY column an identity column???