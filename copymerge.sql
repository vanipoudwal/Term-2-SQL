create database qwerty
use qwerty

create table qwe
(name char(20),
address char(20),
phone int)

insert into qwe
values('abcd','delhi',1234)
insert into qwe
values('efgh','punjab',5678)
insert into qwe
values('ijkl','up',9012)
insert into qwe
values('mnop','uk',3456)
insert into qwe
values('qrst','goa',7890)

select * from qwe

update qwe
set address = 'haryana'
where phone = 9012

delete from qwe
where name = 'mnop'

select * into vani from qwe
select * from vani

MERGE qwe AS TARGET
USING vani AS SOURCE
ON (TARGET.qwe = SOURCE.vani)
WHEN MATCHED AND TARGET.name <> SOURCE.name
THEN UPDATE SET TARGET.name = SOURCE.name
WHEN NOT MATCHED THEN
INSERT VALUES(SOURCE.name, SOURCE.name)
WHEN NOT MATCHED BY SOURCE THEN
DELETE;