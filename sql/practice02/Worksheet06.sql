-- 집계

select employee_id, avg(salary) from  employees;   -- 직원당 평균 월급은 말이 안됨...따로 써줘야함 

select avg(salary) from employees;
select avg(salary) from employees order by avg(salary) asc;

select department_id,avg(salary) from employess;    -- 부서별 평균 연봉은 이렇게 뽑아낼수 없다.
select avg(salary) from employees group by department_id;  -- group by 로 표기가능
select department_id,avg(salary) from employees group by department_id;  -- group by 에 포함된 칼럼은 앞에 표기가능
select department_id,avg(salary) from employees group by department_id order by department_id asc;  -- 마지막엔 역시 order by 사용가능

select department_id,avg(salary),max(salary),min(salary) from employees group by department_id;  -- 집계함수 여러개 이용가능

select department_id,avg(salary) from employees group by department_id having avg(salary)>5000;  -- where 절은 group by 이전에 처리 되므로 having 으로 조건 설정
