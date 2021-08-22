use hr;                                                     #useing schema


select * from employees ;


select * from employees where salary>3000;                  # usage of where
select * from employees where salary<=3000;
select * from employees where department_id=30;
select * from employees where first_name="Jennifer";


select distinct department_id from employees;               #usage of distinct
select distinct * from employees;


select * from employees where commission_pct is null;         #usage of null

select * from employees where salary>15000 and job_id='ad_vp';       #usage of AND

select * from employees where salary>15000 or job_id='ad_vp';        #usage of OR

select * from employees where not first_name='David';                #usage of not

select * from employees where salary between 10000 and 12000;        #between

select * from employees where salary not between 10000 and 12000;    #not between

select * from employees where salary=3400 or salary=2500 or salary=3000;   # rows whose salarys are 3400 or 2500 or 3000
select * from employees where salary in(3400,2500,3000);                   #using in keyword
select * from employees where salary not in(3400,2500,3000);               #other than 3400,2500,3000

#Regular Expressions
select first_name from employees;

select first_name from employees where first_name like "s%";   #select only name which starts with s
select * from employees where first_name like "s%";            #               ""
select * from employees where first_name like "%r";            #select only namw which ends with r
select * from employees where first_name like "s%r";           #select only names which starts with s and end with r
select * from employees where first_name like "%m%";           #select any name where m is present between start and end of name

select * from employees where first_name not like "s%";        #select all names expect which start with s
select * from employees where first_name like "%e_";     
select * from employees where first_name like "___";