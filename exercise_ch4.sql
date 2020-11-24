--1
create database NarrowFabrics
use NarrowFabrics

--2
create table recipient
(ordernumber char(6),
firstname varchar(20),
lastname varchar(20),
address varchar(50),
city char(15),
state char(15),
countrycode char(3),
zipcode char(10),
phone char(15))

--3
create table country
(countryid varchar(2),
country char(25))

--4
create database PictureLibrary
use PictureLibrary

--5
create table officelocation
(officeid int not null,
officemanager varchar(30) not null,
officelocation geography not null)

--6
create database empdetail
use empdetail

ON Primary
(Name = 'empdetail_Primary',
FileName = 'D:\Data\empdetail_Prm.mdf',
size = 5MB,
MaxSize = 10MB,
FILEGrowth = 1MB),
FileGroup empdetail_FG
(Name = 'empdetail_Log',
FileName = 'D:\Data\empdetail_ldf',
size = 5MB,
MaxSize = 10MB,
FILEGrowth = 1MB)
GO

--7
alter database empdetail
modify filegroup empdetail_FG default
GO

--8
use NarrowFabrics
alter table recipient
sp_rename countrycode, countryid, column

--9
delete from recipient

--10
create table NewProductTable
(productid char(6) primary key,
productname varchar(20) not null,
productdescription varchar(250) not null,
categoryid char(3),
productrate money,
brandid char(3),
photo image,
qoh smallint,
productimgpath varchar(50) null)

create table Category
(categoryid char(3) primary key,
catyegory char(20),
description varchar(100) null)

create table ProductBrandTable
(brandid char(3) primary key,
brandname char(20))

--11
delete from category

--12
use PictureLibrary

create table picturedetails
(eventpicid uniqueidentifier not null,
eventname varchar(30) not null,
pic varbinary not null)

--13
use AdventureWorks

create table leavedetail
(name varchar(50) not null,
reason varchar(100) not null,
number_of_boys int)

--15
select * from department

--16
select * from salesperson

--18
create table qua
(quality varchar(100) not null)

--19
use NarrowFabrics

create table student
(studentid uniqueidentifier,
name varchar(10),
age int,
address varchar(30),
phone nvarchar(15),
studentphoto varbinary(max))

--20
create table inventory
(itemid int,
itemname varchar(10),
perunitcost int,
availability int)

insert into inventory
values(1,'pen',5,50)
insert into inventory
values(2,'pencil',3,100)
insert into inventory
values(3,'notepad',15,0)
insert into inventory
values(4,'eraser',2,25)
insert into inventory
values(5,'marker',10,20)

select * from inventory

alter table inventory
add category char(15)

--21
create table empolyee
(employeeid int unique,
name varchar(10) not null,
salary money)