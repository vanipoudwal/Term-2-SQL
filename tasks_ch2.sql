create database sales
use sales

--TASK 1

create table salesperson
(ID int,
territoryID int,
salesquota int,
bonus int,
commission int,
salesYTD int,
saleslastyear int,
rowguid int)

insert into salesperson
values(275,2,30000,4100,012,4557045,1750406,17274)
insert into salesperson
values(280,1,25000,5000,01,0,1927059,9415)
insert into salesperson
values(282,6,2500,5000,015,3189356,2038234,3178)

select * from salesperson

select top 3 * from salesperson
where bonus between 4000 and 6000

--TASK 2

create table employee
(employeeID int,
designation char(40),
age int)

insert into employee
values(6,'marketing manager',45)
insert into employee
values(46,'marketing specialist',33)
insert into employee
values(106,'marketing specialist',58)
insert into employee
values(119,'marketing specialist',41)
insert into employee
values(203,'marketing specialist',34)
insert into employee
values(271,'marketing specialist',42)

select * from employee

select employeeID, upper(Title) AS designation, (yy,birthdate,getdate()) AS age
from employee where Title = 'Marketing Manager' or Title = 'Marketing Specialist'

--TASK 3

create table salesorderdetails
(salesorderID int,
productID int,
averageorderquantity int)

insert into salesorderdetails
values(43662,758,6)
insert into salesorderdetails
values(49865,853,2)
insert into salesorderdetails
values(53615,896,3)
insert into salesorderdetails
values(59440,934,1)
insert into salesorderdetails
values(69415,962,1)
insert into salesorderdetails
values(69985,708,1)
insert into salesorderdetails
values(71627,921,1)
insert into salesorderdetails
values(72016,923,1)
insert into salesorderdetails
values(73872,715,1)

select * from salesorderdetails

select salesorderID, productID, 'Average Order Quantity' = avg(averageorderquantity) from salesorderdetails
group by productID, salesorderID

--TASK 4

create table employe
(EmployeeID int,
NationalIDNumber int,
ManagerID int)

insert into employe
values(1,14417807,16)
insert into employe
values(2,253022876,6)
insert into employe
values(3,509647174,12)
insert into employe
values(4,112457891,3)
insert into employe
values(5,480168528,263)
insert into employe
values(6,24756624,109)
insert into employe
values(7,309738752,21)

select * from employe

select EmployeeID, NationalIDNumber, ManagerID from employe
where EmployeeID < 8