/*
급여가 2000보다 높고 개월 수가 10개월 미만인 직원 이름을 출력하시오
정렬기준은 직원번호 오름차순입니다.
*/

SELECT NAME FROM EMPLOYEE
WHERE SALARY > 2000 AND MONTHS < 10)
ORDER BY EMPLOYEE_ID