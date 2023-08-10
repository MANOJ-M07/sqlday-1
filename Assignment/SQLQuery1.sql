create database OurExerciseDb on primary
(name = 'OurExcerciseDb', filename ='D:\simplilearn\Course-2\Day-1\Assignment\OurExcerciseDb.mdf',
size = 24mb, maxsize = 32mb, filegrowth = 8mb)
log on 
(name = 'OurExcerciseDb_log', filename = 'D:\simplilearn\Course-2\Day-1\Assignment\OurExcerciseDb_log.ldf',
size = 8mb, maxsize = 16mb, filegrowth = 8mb)

collate SQL_Latin1_General_CP1_CI_AS

use OurExerciseDb
create table StudentRegistrations
(StudentID int not null,
CourseCode nvarchar(50) not null,
RegistrationDate date not null,
constraint pk_Sregistration primary key(StudentID,CourseCode))
insert StudentRegistrations values (101,'CSE','07/06/2023')
insert StudentRegistrations values (102,'ECE','03/09/2023')
insert StudentRegistrations values (103,'IT','04/07/2023')

select * from StudentRegistrations
