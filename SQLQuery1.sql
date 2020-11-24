create database vani;
use vani;

create table guddu
(sno int,
name char(20),
address varchar(30),
phno int,
email varchar(30),
pincode int);

insert into guddu
values(1,'aaaa','a-12,saket',7410,'aaaa@gmail.com',110017);
insert into guddu
values(2,'bbbb','b-23,munirka',7410,'bbbb@gmail.com',110067);
insert into guddu
values(3,'cccc','c-34,dwarka',7410,'cccc@gmail.com',110079);
insert into guddu
values(4,'dddd','d-45,nehru place',7410,'dddd@gmail.com',110019);
insert into guddu
values(5,'eeee','e-56,lajpat nagar',7410,'eeee@gmail.com',110024);
insert into guddu
values(6,'ffff','f-67,green park',7410,'ffff@gmail.com',110016);
insert into guddu
values(7,'gggg','g-78,rk puram',7410,'gggg@gmail.com',110066);
insert into guddu
values(8,'hhhh','h-89,karkarduma',7410,'hhhh@gmail.com',110092);
insert into guddu
values(9,'iiii','i-90,okhla',7410,'iiii@gmail.com',110020);
insert into guddu
values(10,'jjjj','j-16,andrews ganj',7410,'jjjj@gmail.com',110049);

select * from guddu;

select name,email,pincode from guddu;

select name from guddu
where phno = 7410;

select address from guddu
where name like '%d';

select * from guddu
where sno>=5 and pincode like '_____6';

select * from guddu
where sno<=5 or pincode like '_____7';

select * from guddu
where not sno>=5;

select address, pincode from guddu
where pincode between 110017 and 110049;

select name, phno from guddu
where pincode not between 110017 and 110049;

select address, pincode from guddu
where pincode in ('110017','110049');

select address, pincode from guddu
where pincode not in ('110017','110049');