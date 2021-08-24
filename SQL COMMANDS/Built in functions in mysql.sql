# String functions - operate on string data types
# Numeric functions - operate on numeric data types
# Date functions - operate on date data type
# Aggregate functions - operate on all of the data types and produce summarized result sets


#STRING FUNCTIONS
-- upper() - convert into upper case letters
-- lower() - convert into lower case letters
-- length() - return length of the string
-- trim() - removes teh specified characteres from both sides
-- instr() - returns the position of the character within a string
-- substr() - returns the substring of the string
-- concat() - join two strings

use hr;

select first_name from employees;
select upper('smith');
select upper(first_name) from employees;  #upper() usage

select lower(first_name) from employees;  #lower() usage

select length('Welcome');
select length(first_name) from employees;  #length of all first names in the column
select * from employees where length(first_name)=4; #selects the first names whose lengths are 4

select trim('    welcome     '); #removes spaces in the string
select trim('z' from 'zzoraclezz'); #removes character from the string

select instr('welcome','e'); #return position of a character

select substr('oracle',2,3); -- RAC from 2 to 3 characters
select substr('oracle',3,3); -- ACL

select substring('oracle',2,3);
select substring('oracle',4,3);

select substring(first_name,1,3) from employees;

select concat('oracle','training');
select concat(first_name," ",last_name) fullname from employees; -- joining first name and last name


#NUMERIC FUNCTIONS
-- abs() - return absolute value
-- sqrt() - return square root value
-- mod() - return modulus
-- power() - power opertations
-- truncate() - fucntion truncates a number to the specified number of decimal places
-- greatest() and least() - returns greatest and least values in the provided values

select abs(-40);
select abs(40) absolute;

select sqrt(25);

select mod(5,2);

select power(2,5);

select truncate(40.234543,3); -- return 40.123 - 3 decimal numbers
select truncate(40.455,1); -- 40.4
select truncate(6876,-1); -- 6870 last one digit become 0
select truncate(6785,-2); -- 6700 last two digits become 0s

select greatest(100,200,300,400,500);
select least(100,200,300);


#DATE FUNCTIONS
-- curdate()/current_date()- returns the current date
-- curtime()/current_time()- returns the current time
-- now() - returns the current date and time
-- sysdate() - returns the current date and tie
-- month() returns the month part for a given date
-- year() - returns the year part for a given date
-- day() returns the day of the month for a given date

select curdate();
select current_date();

select curtime();
select current_time();

select now();

select sysdate();

select month("2019-05-19");-- 05
select year("2019-05-19");-- 2019
select day("2019-05-19");-- 19

#QUERIES ON DATE FUNCTIONS

select * from employees where year(hire_date)="1987"; -- employees joined in 1987
select * from employees where month(hire_date)="6";-- employees hired in 6th month
select * from employees where monthname(hire_date)="july";-- employees hire in july month

#AGGREGATE FUNCTIONS
-- avg()
-- sum()
-- min()
-- max()
-- count()

select avg(salary) from employees;
select sum(salary) from employees;
select min(salary) from employees;
select max(salary) from employees;
select count(*) from employees;