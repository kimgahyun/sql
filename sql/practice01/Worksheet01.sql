-- 문자열 함수
select lower('Database Management System') from dual;

select lower(first_name) from employees;

select upper('database management system') from dual;

select last_name,upper(last_name) from employees;

select initcap('database management system') from dual;

-- 앞글자만 대문자
select concat(concat(first_name,' '),last_name) from employees;

-- 문자열 합치기 (사이 띄워보기)
select first_name ||' '||last_name from employees;

-- 문자열 합치기2(오라클만 가능)
select substr('Database Management System',2,4) from dual;

-- 2번째부터 4개를 가져온다. 인덱스가 1부터 시작됨
select length('Database Management System') from dual;

-- 길이 출력
select instr ('Database Management System','Sys')from dual;

--문자열 검색
select employee_id,LPAD(salary,10,'*') from employees;

--문자열의 왼쪽 채움
select employee_id,RPAD(salary,10,'*') from employees;

--문자열의 오른쪽 채움
select trim('#' from '###Data###base####') from dual;

-- ????
select ltrim('    Data         base      ',' ') from dual;

-- 문자열 좌측 지정문자 제거
select replace('Database Management System','a','A') from dual;

--문자 치환 치환( a -> A )

--Date 

select *from employees;

select value
  from nls_session_parameters
  where parameter='NLS_DATE_FORMAT';       -- 날짜 표기방법 확인..잘안씀
  
select ADD_MONTHS('15/10/05',2) from dual; -- 달 더해보기

select last_day(SYSDATE) from dual;  -- 마지막날 

select employee_id,job_id,round(months_between(end_date,start_date)) from job_history;  -- 기간 구하기

select next_day('16/10/05',1) from dual;   --날짜로 부터 원하는 다음 요일 찾기 ( 1:sun  7:sat)