-- 숫자 -> 문자열
SELECT EMPLOYEE_ID, SALARY FROM EMPLOYEES;
SELECT EMPLOYEE_ID, TO_CHAR(SALARY, '99999') FROM EMPLOYEES;

-- #이 나오면 자리수가 적게 포맷해서 더 늘려주면 됨
SELECT EMPLOYEE_ID, TO_CHAR(SALARY, '9999') FROM EMPLOYEES;

-- 빈 앞자리에 0이 출력됨
SELECT EMPLOYEE_ID, TO_CHAR(SALARY, '09999') FROM EMPLOYEES;

-- , 찍을때
SELECT EMPLOYEE_ID, TO_CHAR(SALARY, '99,999') FROM EMPLOYEES;

-- 소수점 찍을때
SELECT TO_CHAR(3.14158921, '9.99') FROM DUAL;
SELECT TO_CHAR(3.14158921, '9.9999') FROM DUAL;

-- 앞에 공백 없앨때FM
SELECT EMPLOYEE_ID, TO_CHAR(SALARY, 'FM99999') FROM EMPLOYEES;

-- $ 마크 찍을떄 
SELECT EMPLOYEE_ID, TO_CHAR(SALARY, '$99999') FROM EMPLOYEES;

-- 현재 Local의 화폐단위
SELECT EMPLOYEE_ID, TO_CHAR(SALARY, 'L99999') FROM EMPLOYEES;

-- 음수부호 찍을때 MI 앞에 붙이면 에러남 뒤에 붙여야됨
SELECT TO_CHAR(-12345, '99999MI') FROM DUAL;

-- 부호기호 S
SELECT TO_CHAR(-12345, 'S99999') FROM DUAL;
SELECT TO_CHAR(12345, 'S99999') FROM DUAL;

-- 음수에 괄호 PR
SELECT TO_CHAR(-12345, '99999PR') FROM DUAL;

-- 로마자 대문자RN
SELECT TO_CHAR(1234, 'RN') FROM DUAL;

-- 로마자 소문자RN
SELECT TO_CHAR(1234, 'rn') FROM DUAL;

--16진수
SELECT TO_CHAR(3234, 'XXXX') FROM DUAL;

