#DDL COMMANDS(Data Definition language)
#CREATE
#ALTER
#DROP
#TRUNCATE
#RENAME


#CREATE COMMAND USAGE
create database mydb; #creating database mydb
use mydb;


create table student
(sid int(4),sname varchar(15));  #creats table studnet with two columns with specified datatype

describe student;                #show details about table

insert into student values(101,'David');  # adding records to student table
insert into student values(102,'Smith');
insert into student values(103,'Scott');

commit;                                  # it stores permanently above inserted records

select * from student;                   # here we can see the data uploaded


#ALTER COMMAND USAGE

alter table student add(grade varchar(2)); # adding new column using alter command
describe student;

alter table student drop column grade;     # droping the column

alter table student modify column sname varchar(20); # increasing the datatype size using modify keyword

alter table student rename column sname to stuname;  # changing name of column using rename keyword

set autocommit=0;                 #it stops commiting automatically alter
set sql_safe_updates=0;

select * from student;

delete from student;              # delete the data tempororily

rollback;                         #roll back the deleted data

truncate table student;          # data gets deleted permanently

drop table student;              # delete complete table