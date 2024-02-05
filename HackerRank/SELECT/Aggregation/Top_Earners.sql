/*
직원의 총 수입은 그들이 한 달 동안 일한 시간으로 정의하며, 최대 총 수입은 Employee 테이블에서 어떤 직원이든 가장 많이 벌어들이는 총 수입입니다.
모든 직원 중에서 최대 총 수입을 찾고, 최대 총 수입을 가진 직원의 수를 찾아서 이 값을 공백으로 구분된 정수로 출력하는 쿼리를 작성하세요.
*/

SELECT MAX(MONTHS * SALARY) , COUNT(*) FROM EMPLOYEE
WHERE MONTHS * SALARY = (SELECT MAX(MONTHS * SALARY) FROM EMPLOYEE)