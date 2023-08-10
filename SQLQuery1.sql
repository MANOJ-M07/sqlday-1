--create object objectName
--create database databaseName
create database FirstDb
use FirstDb
create table Emps
(Id int primary key,
Name nvarchar(50) not null,
Salary float)
select * from Emps
insert into Emps values (1,'Sam',98005.50)
insert into Emps values (2,'Raj',89250.50)
insert into Emps values (5,'Arsh',88964.50),(7,'Niraj',88825.50),(8,'Jai',55000.50)
select * from Emps

