# UNION - will select all the rows without duplicates
# UNION ALL - will select all the rows including duplicates



use mydb;
create table A(sname varchar(10),num int(2));
create table B(num int(2),grade varchar(3));
insert into A values('ABC',10);
insert into A values('XYZ',11);
insert into A values('PQR',12);
insert into A values('MNO',13);
commit;
insert into B values(11,'A');
insert into B values(12,'B');
insert into B values(13,'C');
insert into B values(15,'B');
commit;

select * from A;
select * from B;

select num from A union select  num from B;

select num from A union all select num from B;