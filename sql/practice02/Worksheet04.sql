-- NULL관련 함수

-- NULL이면 0으로 대체
SELECT NVL( NULL, 0 ) FROM DUAL;
SELECT NVL( 1, 0 ) FROM DUAL;

SELECT EMPLOYEE_ID, NVL(COMMISSION_PCT, 0), NVL(COMMISSION_PCT, 0)*SALARY FROM EMPLOYEES;

-- NULL이 아니면 10이고 NULL이면 0
SELECT NVL2( NULL, 10, 0 ) FROM DUAL;
SELECT NVL2( 1, 10, 0 ) FROM DUAL;

-- NULL이아니면 2번째거 , NULL이면 3번째거 
SELECT EMPLOYEE_ID, NVL2(COMMISSION_PCT, COMMISSION_PCT*SALARY, 0) FROM EMPLOYEES;
SELECT EMPLOYEE_ID, NVL2(COMMISSION_PCT, SALARY+COMMISSION_PCT*SALARY, SALARY) AS"이번달지급할월급" FROM EMPLOYEES;

-- 두 식이 같으면 NULL 같지않으면 앞에 인수 
SELECT NULLIF( 5, 3+2 ) FROM DUAL;
SELECT NULLIF( 6, 3+2 ) FROM DUAL;

-- 순서대로 보다가 NULL이 아닌 첫번째값출력
SELECT COALESCE( NULL, NULL, 3, 4, 5 ) FROM DUAL;
SELECT COALESCE( 1, NULL, 3, 4, 5 ) FROM DUAL;

--SELECT EMPLOYEE_ID, NVL( MANAGER_ID, '매니저 없음' ) FROM EMPLOYEES;
SELECT EMPLOYEE_ID, NVL( TO_CHAR(MANAGER_ID), '매니저 없음' ) FROM EMPLOYEES;
