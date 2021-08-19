create database MYDataBase
use Mydatabase
create table G
(
G_Id int primary key,
G_Name nvarchar(10)
)

create table E
(
E_Id int primary key,
E_Name nvarchar(30),
E_City nvarchar(30),,
E_G_Id int references G(G_Id)
)

insert into G values(1,'Male')
insert into G values(2, 'Female')


insert into E values(1,'Pawan','Delhi',1)
select * from g
select * from E

--rename database--
exec sp_renamedb 'MYDataBase', 'MyDb'
--rename table--
exec sp_rename 'Emp', 'Employee'
exec sp_rename 'Employee.E_City' , 'Emp_City'

alter table Employee add E_Salary money
alter table Employee alter column E_Salary int
alter table Employee drop column E_Salary

