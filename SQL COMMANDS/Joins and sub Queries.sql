
#TYPES OF JOINS
-- Inner Join ---> Matched Records
-- Left Join ---> Matched Records + Unmatched Records from left table
-- Right Join ---> Matched Records + Unmatched Records from Right table
-- Full Join ---> Matched Records + Unmatched Records from left table + Unmatched Records from Right table
-- self join


use hr;

select * from departments;
select * from employees;

select * from employees inner join departments on employees.department_id=departments.department_id;

select first_name,salary,departments.department_id from employees inner join departments on employees.department_id=departments.department_id;

select first_name,salary,departments.department_id from employees left join departments on employees.department_id=departments.department_id;

select first_name,salary,departments.department_id from employees right join departments on employees.department_id=departments.department_id;

select E.employee_id,M.manager_id,E.first_name from employees E,employees M where E.employee_id=M.manager_id;


#SUB QUERIES
-- Sub Query contains 2 parts.
-- 1.Outer Query
-- 2.Inner Query

-- The output of inner query becomes input of outer query.

#2 Types of Sub Queries:
-- 1.Single row sub Query,<=,>=,!=
-- 2.Multi row Sub Query IN,ANY,ALL

############## Single row Queries
-- SALARY LESS THEN ELLEN'S SALARY
select salary from employees where salary < (select salary from employees where first_name='ellen');

-- SECOND MAXIMUM SALARY FROM EMPLOYEE TABLE
select max(salary) from employees where salary< (select max(salary) from employees);

-- THIRD MAXIMUM SALARY FROM EMPLOYEES
select max(salary) from employees where salary< 
	(select max(salary) from employees where salary<
		(select max(salary) from employees));

-- EMPLOYEES WHOSE SALARY IS GREATER THAN SALARY OF EMPLOYEE ID=150
select salary from employees where salary >(select salary from employees where employee_id=150);

############## MULTI ROW QUERIES
 
-- Display employees whose salary is equal to the salary of at least one employee in department id=30
select * from employees where salary in (select salary from employees where department_id=30);

-- Display employees whose salary is less than the any salary of employees whose department id=30
select * from employees where salary <any(select salary from employees where department_id=30);

-- DISPLAY THE EMPLOYEES WHO ALL ARE EARNING THE HIGHEST SALARY
select * from employees where salary=(select max(salary) from employees);

-- Query to get department name of the employee.
select first_name,employee_id,department_id,
(select department_name from departments where employees.department_id=departments.department_id) dname
from employees;

-- List out the employees
-- who are having salary less than the maximum salary
-- and also having hire date greater than the hire date
-- of an employee who is having maximum salary.
select employee_id,first_name,salary,hire_date from employees where salary<
	(select max(salary) from employees) and hire_date>
		(select hire_date from employees where salary=
			(select max(salary) from employees));