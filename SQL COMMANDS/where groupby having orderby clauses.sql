use hr;

# grouping the sum of each department salaries separately
select department_id,sum(salary) from employees group by department_id;

#average salaries of each department
select department_id, avg(salary) from employees group by department_id;

#in each department minimum and maximum salaries
select department_id, min(salary),max(salary) from employees group by department_id;

#counting number of employees under different job_id
select job_id,count(*) from employees group by job_id;


select job_id,department_id, count(*) from employees group by job_id;
select job_id,department_id, count(*) from employees group by job_id, department_id;

-- having usage

#filter the different job_id where number of employees are greater than 10
select job_id, count(*) from employees group by job_id having count(*)>10;

-- filtering the sum of salaries of each department where sum >20000
select department_id, sum(salary) from employees group by department_id having sum(salary)>20000;

#filtering the sum of salaries of each department where department_id =50 is removed
select department_id, sum(salary) from employees where department_id <> 50 group by department_id;

#filtering the sum of salaries of each department where sum >20000 and department id 50 is removed
select department_id, sum(salary) from employees where department_id <> 50 group by department_id having sum(salary)>20000;


#order by clasue
select * from employees order by department_id ;

select * from employees order by salary;

select * from employees order by salary desc;


-- ORDER OF EXECUTION
#WHERE-->GROUP BY-->HAVING-->ORDER BY


select department_id,sum(salary) from employees group by department_id having sum(salary)>20000 order by sum(salary);

select department_id,sum(salary) from employees where department_id<>100 group by department_id having sum(salary)>20000 order by sum(salary);



