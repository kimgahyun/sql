-- 문제1
SELECT MAX(SALARY) AS "최고임금", 
	   MIN(SALARY) AS "최저임금",
	   MAX(SALARY)-MIN(SALARY) AS "최고임금 - 최저임금" 
FROM EMPLOYEES;

-- 문제2 머야ㅡㅡ
SELECT TO_CHAR( MAX( HIRE_DATE), 'YYYY"년" MM"월" DD"일"') FROM EMPLOYEES;

-- 문제3
SELECT DEPARTMENT_ID, AVG(SALARY) AS "평균임금", MAX(SALARY) AS "최고임금", MIN(SALARY) AS "최저임금"
 FROM EMPLOYEES 
 GROUP BY DEPARTMENT_ID 
 ORDER BY AVG(SALARY) DESC, MAX(SALARY) DESC, MIN(SALARY) DESC;

-- 문제4
SELECT JOB_ID, AVG(SALARY) AS "평균임금", MAX(SALARY) AS "최고임금", MIN(SALARY) AS "최저임금"
 FROM EMPLOYEES 
 GROUP BY JOB_ID 
 ORDER BY AVG(SALARY) DESC, MAX(SALARY) DESC, MIN(SALARY) DESC;

-- 문제5
SELECT TO_CHAR( MIN( HIRE_DATE), 'YYYY"년" MM"월" DD"일"') FROM EMPLOYEES;

-- 문제6
SELECT DEPARTMENT_ID, AVG(SALARY) AS "평균임금", MIN(SALARY) AS "최저임금", AVG(SALARY) - MIN(SALARY) AS "평균임금-최저임금"
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING AVG(SALARY) - MIN(SALARY) < 2000
ORDER BY AVG(SALARY) - MIN(SALARY) DESC;

-- 문제7
SELECT JOB_TITLE, MAX_SALARY-MIN_SALARY AS "차이가장큼" FROM JOBS;
SELECT JOB_TITLE, MAX(MAX_SALARY-MIN_SALARY) FROM JOBS group by job_title having max(max_salary-min_salary) = 	max(max_salary-min_salary);

 SELECT JOB_TITLE, MAX(MAX_SALARY-MIN_SALARY) 
 FROM JOBS where rownum = 1 
 group by job_title 
 order by MAX(MAX_SALARY-MIN_SALARY) desc;                                                 

Select department_id,avg(salary) from employees group by department_id having avg(salary)>5000;
