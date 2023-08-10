create database CustsDb on primary
(name = 'Custs_Db', filename ='D:\simplilearn\Course-2\Day-1\MCusts_Db.mdf')
log on 
(name = 'MCusts_log', filename = 'D:\simplilearn\Course-2\Day-1\MCuts_log.ldf')

collate SQL_Latin1_General_CP1_CI_AS



create database CustsDb on primary
(name = 'Custs_Db', filename ='D:\simplilearn\Course-2\Day-1\MCusts_Db.mdf',
size = 16mb, maxsize = 32mb, filegrowth = 8mb)
log on 
(name = 'MCusts_log', filename = 'D:\simplilearn\Course-2\Day-1\MCuts_log.ldf',
size = 8mb, maxsize = 16mb, filegrowth = 4mb)

collate SQL_Latin1_General_CP1_CI_AS
drop database CustsDb

create database CustsDb on primary
(name = 'Custs_Db', filename ='D:\simplilearn\Course-2\Day-1\Custs_Db.mdf',
size = 16mb, maxsize = 32mb, filegrowth = 8mb)
log on 
(name = 'Custs_log', filename = 'D:\simplilearn\Course-2\Day-1\Cuts_log.ldf',
size = 8mb, maxsize = 16mb, filegrowth = 4mb)

collate SQL_Latin1_General_CP1_CI_AS

-------------------------------------------------------
--Constraint in SQL
--------------------------------------------------------
--primary key :not null unique, one primary key per table, You can create composite primary key
use CustsDb
create table Customers
(CID int primary key,
CName nVarchar(50) not null,
CODLimit float,
CCity nvarchar(50))
insert into Customers values (1,'Sam',8532.20,'Delhi')
insert into Customers values (2,'Raj',9852.20,'Delhi')
insert into Customers(CID,CName) values (4,'Deep')
select * from Customers
insert into Customers(CID,CODLimit,CCity) values(4,70256,'Noida')
--cannot insert the value null into collumn 'CName', table 'CustDb.dbo.Customers'; column does not allow nulls. INSERT Fails.
create table Fee
(Roll int not null,
Fee float not null,
Fmonth int not null,
Fyear int not null,
FSDate date not null,
constraint pk_fee primary key (Roll,Fmonth,Fyear))

insert into Fee values  (1,50000,1,2023,'03/03/2023')
insert into Fee values  (1,50000,1,2023,'03/03/2023')
insert into Fee values  (1,50000,1,2023,'03/03/2023')
select * from Fee
insert into Fee values  (1,50000,1,2023,'03/03/2023')
--Violation of Primary Key Constraint 'pk_fee'.c
--cannot insert duplicate key in object 'dbo.fee'. The dupplicate key value is (1,3,2023).


