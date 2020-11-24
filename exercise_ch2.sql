create database AdventureWorks
use AdventureWorks

--1
create table customer
(id int,
name char(30),
designation char(30))

insert into customer
values(101,'abcd','xyz')

select * from customer
--------------------------------------------------
--2
create table result
(creditcardID int,
creditcardtype char(30),
creditcardno int,
expirydate varchar(20))

insert into result
values(001,'mastercard',100,'2024-05-21')
insert into result
values(002,'visa',200,'2023-06-22')
insert into result
values(003,'rupay',300,'2022-07-23')
insert into result
values(004,'chip',400,'2021-08-24')

select * from result
--------------------------------------------------
--3
create table customerdetail
(customerID int,
accountno int,
territoryID int
)

insert into customerdetail
values(11,1900123,4)
insert into customerdetail
values(22,1900456,3)
insert into customerdetail
values(33,1900789,2)
insert into customerdetail
values(44,1900408,1)

select customerID, accountno from customerdetail
where territoryID = 4
--------------------------------------------------
--4
create table sales
(orderID int,
cost int)

insert into sales
values(1234,1000)
insert into sales
values(5678,6000)

select * from sales
where cost>2000
--------------------------------------------------
--5
create table cablelock
(salesorder char(10),
productID int)

insert into cablelock
values('hey',621)
insert into cablelock
values('bye',732)
insert into cablelock
values('yay',843)
insert into cablelock
values('nay',954)

select salesorder from cablelock
where productID = 843
--------------------------------------------------
--6
create table list
(orderID int,
ordername char(10),
dateofplaced varchar(20))

insert into list
values(1,'pizza','2004-06-06')
insert into list
values(2,'pasta','2005-07-08')
insert into list
values(3,'choco','2006-08-07')
insert into list
values(4,'coffee','2007-09-09')

select ordername from list
where dateofplaced = '2004-06-06'
--------------------------------------------------
--7
create table repo
(orderID int,
orderquantity int,
unitprice int,
totalcost int)

select * from repo
--------------------------------------------------
--8
create table product
(sales char(10),
unitprice int)

insert into product
values('a',1900)
insert into product
values('b',2000)
insert into product
values('c',2100)
insert into product
values('d',2200)

select * from product
where unitprice between 2000 and 2100
--------------------------------------------------
--9
create table date
(name char(30),
countrycode int,
salesyear varchar(30),
territoryID int)

insert into date
values('a',101,'qwerty',1)
insert into date
values('a',101,'dzcybxa',2)
insert into date
values('a',101,'axbyczd',3)
insert into date
values('a',101,'ytrewq',4)

select name, countrycode, salesyear from date
where territoryID = 1
--------------------------------------------------
--10
create table order1
(ordername char(10),
taxamt int)

insert into order1
values('aaaa',5000)
insert into order1
values('bbbb',10000)
insert into order1
values('cccc',15000)
insert into order1
values('dddd',20000)

select * from order1
where taxamt > 10000
--------------------------------------------------
--11
create table territory
(territoryID int,
country char(20))

insert into territory
values(1122,'india')
insert into territory
values(2233,'germany')
insert into territory
values(3344,'brazil')
insert into territory
values(4455,'canada')
insert into territory
values(5566,'dubai')
insert into territory
values(6677,'pkmkb')
insert into territory
values(7788,'france')
insert into territory
values(8899,'china')
insert into territory
values(9900,'japan')

select territoryID from territory
where country IN ('canada','france','germany')
--------------------------------------------------
--12
create table abcd
(salespersonID int,
territortID int)

select * from abcd
--------------------------------------------------
--13
create table xyz
(name char(20),
birthdate varchar(20),
expirydate varchar(20))

insert into xyz
values('qwe','2007-01-01','2006-12-31')
insert into xyz
values('abc','2006-01-01','2005-12-31')
insert into xyz
values('mno','2005-01-01','2004-12-31')
insert into xyz
values('jkl','2004-01-01','2003-12-31')

select * from xyz
where expirydate like '2006%'
--------------------------------------------------
--14
create table ship
(shipID int,
shipdate varchar(20))

insert into ship
values(1,'2004-7-12')
insert into ship
values(2,'2005-6-11')
insert into ship
values(3,'2006-5-10')
insert into ship
values(4,'2007-4-9')

select * from ship
where shipdate >'2004-7-12'
--------------------------------------------------
--15
create table order2
(orderno int,
orderdate varchar(20),
status char(20),
totalcost int)

insert into order2
values(1,'july-01-2001','high',3500)
insert into order2
values(1,'oct-04-2002','below high',7000)
insert into order2
values(1,'jan-07-2003','above low',10500)
insert into order2
values(1,'apl-10-2004','low',14000)

select * from order2
where totalcost > 10000
--------------------------------------------------
--16
create table cust
(custon char(10),
custoff char(10))

insert into cust
values('abcd','hey')
insert into cust
values('qwerty','bye')
insert into cust
values('jkl','yay')
insert into cust
values('xyz','nay')

select custon from cust
--------------------------------------------------
--17
create table res
(orderID int,
totaldue int)

select * from res
--------------------------------------------------
--18
create table tax
(orderID int,
sales int,
taxamt int)

insert into tax
values(1,10000,1000)
insert into tax
values(2,20000,2000)
insert into tax
values(3,30000,3000)

select orderID, taxamt from tax
where sales < 2000
order by orderID, taxamt
--------------------------------------------------
--19
create table currency
(name char(20),
value char(10))

insert into currency
values('rupee','RS.')
insert into currency
values('dollar','$')
insert into currency
values('pound','P')
insert into currency
values('yaen','Y')

select name, value from currency
--------------------------------------------------
--20
select * from currency
where value like '$%'
--------------------------------------------------
--21
select * from currency
where name like 'r%'
--------------------------------------------------
--22
create table tablenaam
(salespersonID int,
territoryID int,
salesquota varchar(20))

insert into tablenaam
values(101,1,'hey')
insert into tablenaam
values(202,2,'bye')
insert into tablenaam
values(303,3,'yay')
insert into tablenaam
values(404,4,'nay')

select * from tablenaam
--------------------------------------------------
--23
select top 3 percent salespersonID from tablenaam
--------------------------------------------------
--24
create table tablenaanu
(ID int,
name char(20),
product char(20),
salesorder int)

insert into tablenaanu
values(1,'motor bike','purchasing',101)
insert into tablenaanu
values(2,'railway','selling',202)
insert into tablenaanu
values(3,'delhi metro','marketing',303)
insert into tablenaanu
values(4,'toyota car','prouction',404)

select * from tablenaanu
where name like '%bike%'
--------------------------------------------------
--25
select * from tablenaanu
where product='purchasing'
--------------------------------------------------
--26
create table ID
(employeeID int,
loginID int,
title char(20))

insert into ID
values(1,1111,'one')
insert into ID
values(2,2222,'two')
insert into ID
values(3,3333,'three')
insert into ID
values(4,4444,'four')
insert into ID
values(5,5555,'five')
insert into ID
values(6,6666,'six')
insert into ID
values(7,7777,'seven')
insert into ID
values(8,8888,'eight')
insert into ID
values(9,9999,'nine')
insert into ID
values(10,1010,'ten')

select top 5 * from ID
--------------------------------------------------
--27
select max(loginID) from ID
select min(loginID) from ID
select avg(loginID) from ID
--------------------------------------------------
--28
select * from ID
--------------------------------------------------
--29
create table tabledaadu
(orderID int,
totalamt int,
duedate varchar(20))

insert into tabledaadu
values(101,10101,'2017')
insert into tabledaadu
values(102,20202,'2019')
insert into tabledaadu
values(103,30303,'2001')
insert into tabledaadu
values(104,40404,'1998')
insert into tabledaadu
values(105,50505,'1991')
insert into tabledaadu
values(106,60606,'1980')
insert into tabledaadu
values(107,70707,'2008')
insert into tabledaadu
values(108,80808,'1986')
insert into tabledaadu
values(109,90909,'1995')
insert into tabledaadu
values(110,11111,'2000')

select top 5 * from tabledaadu
where duedate > '2001'
--------------------------------------------------
--30
select orderID, sum(totalamt), duedate from tabledaadu
group by orderID
--------------------------------------------------
--31
create table prod
(productID int,
productname char(20),
totalcost int)

insert into prod
values(1,'hey',1000)
insert into prod
values(2,'bye',7500)
insert into prod
values(3,'yay',10000)
insert into prod
values(4,'nay',17500)

select productID from prod
where  totalcost > 10000
--------------------------------------------------
--32
select productID, totalcost from prod
group by rollup(productID)
--------------------------------------------------
--33
select totalcost from prod
--------------------------------------------------
--34
create table unit
(unitprice int,
product char(10),
totalamt int)

insert into unit
values(1,'774',200)
insert into unit
values(2,'777',400)

select totalamt from unit
--------------------------------------------------
--35
create table contain
(salesorderID int,
amount int)

insert into contain
values(101,2500)
insert into contain
values(202,5000)
insert into contain
values(303,7500)
insert into contain
values(404,10000)

select max(amount) from contain
where amount > 5000
select min(amount) from contain
where amount > 5000
--------------------------------------------------
--36
create table report
(salesorderID int,
totalamt int,
averagevalue int
)

insert into report
values(101,100000,6000)
insert into report
values(202,200000,5000)
insert into report
values(303,300000,4000)

select salesorderID from report
where totalamt > 5000
--------------------------------------------------
--37
create table store
(customerID int,
name char(30),
salespersonID int)

insert into store
values(12345678,'qwertyuiopasdfghjkl',1234)
insert into store
values(89012345,'asdfghjklzxcvbnm',5678)
insert into store
values(09876542,'zxcvbnmqwertyuiop',9012)

select name from store
where name like '_______________%'
--------------------------------------------------
--38
create table resul
(orderno int,
totaldue int,
dayoforder date,
weekday int)

select * from resul
--------------------------------------------------
--39
create table salesorderdetails
(salesorderID int primary key,
orderqty int,
unitprice int)

select salesorderID from salesorderdetails
--------------------------------------------------
--40
create table employee
(employeeID int,
hiredate varchar(20))

insert into employee
values(11,'12-2-2001')
insert into employee
values(22,'24-4-2005')
insert into employee
values(33,'18-6-2009')
insert into employee
values(44,'30-8-2013')
insert into employee
values(55,'6-10-2017')
insert into employee
values(66,'16-12-1998')

select hiredate from employee
--------------------------------------------------
--41
create table locality
(prodname char(20),
prodlocation char(20),
cost int)

insert into locality
values('assets','delhi',8)
insert into locality
values('margin','mumbai',15)
insert into locality
values('operating','kolkata',12)
insert into locality
values('net','chennai',6)
insert into locality
values('gross','goa',14)
insert into locality
values('investment','banglore',16)

select * from locality
where cost > 12
--------------------------------------------------
--42
create table num
(id int,
name char(20),
price float)

insert into num
values(1,'abcd',120.00)
insert into num
values(2,'efgh',200.00)
insert into num
values(3,'ijkl',400.00)
insert into num
values(4,'mnop',445.00)
insert into num
values(5,'qrst',673.00)
insert into num
values(6,'uvwx',356.00)
insert into num
values(7,'yz',549.00)

select * from num
where price between 360.00 and 490.00
--------------------------------------------------
--43
select ProductID, LineTotal AS 'Total' from sales.salesOrderDetail
Group By Cube(LineTotal)
--------------------------------------------------
--44
select sum(price) from num
--------------------------------------------------
--45
create table yoo
(productID int,
availability char(10))

select * from yoo
--------------------------------------------------
--46
insert into yoo
values(1,'yes')
insert into yoo
values(2,'yes')
insert into yoo
values(3,'yes')
insert into yoo
values(4,'no')
insert into yoo
values(5,'no')

select GETDATE() from yoo
--------------------------------------------------
--47
select availability as 'person name' from yoo
--------------------------------------------------
--48
create table emptab
(empid int,
ename char(20),
eproject char(20))

insert into emptab
values(1,'tom','database')
insert into emptab
values(2,'steve','java')
insert into emptab
values(3,'john','.net')
insert into emptab
values(4,'michel','database')

select ename from emptab
where empid between 2 and 4
--------------------------------------------------
--49
create table tabemp
(srollno int,
sname char(20),
class char(20))

insert into tabemp
values(1,'tom','VIII')
insert into tabemp
values(2,'steve','IX')
insert into tabemp
values(3,'michel','VIII')
insert into tabemp
values(4,'stella','IX')
insert into tabemp
values(5,'sherlin','VII')

select sname, class from tabemp
where sname like 's%'
--------------------------------------------------
--50
create table studentrecords
(srollno int,
sname char(20),
smarks  int)

insert into studentrecords
values(1,'tom',39)
insert into studentrecords
values(2,'tony',48)
insert into studentrecords
values(21,'jony',48)
insert into studentrecords
values(32,'steve',50)
insert into studentrecords
values(43,'john',42)

select * from studentrecords
--------------------------------------------------