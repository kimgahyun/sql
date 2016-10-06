-- 1번
select first_name || ' ' || last_name as "이름", salary as "연봉", phone_number as "전화번호" 
from employees order by hire_date ASC;

-- 2번
select job_title, max_salary from jobs order by max_salary desc;

-- 3번 
select count(*) FROM EMPLOYEES WHERE MANAGER_ID IS NULL;

-- 4번
select job_id, salary from employees order by salary desc;

--select * from jobs where job_id = 'AD_PRES';

-- 5번
SELECT DISTINCT  COUNT(*) DEPARTMENT_ID FROM DEPARTMENTS;

-- 6번
select last_name, length(last_name) from employees;

-- 7번
select count(*)from DEPARTMENTS where manager_id is null;

-- 8번
select department_name, upper(department_name) from departments;

-- 9번
select length(country_name) FROM  countries ORDER BY  length(country_name)desc ;

-- 10번
select lower(city) from locations order by city asc;