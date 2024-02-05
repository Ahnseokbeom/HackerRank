/*
Samantha는 EMPLOYEES 테이블의 모든 직원에 대한 월 평균 급여를 계산하는 업무를 맡았지만,
계산을 마친 후에야 키보드의 '0' 키가 고장났다는 것을 깨달았습니다.
그녀는 0을 제외한 급여를 사용하여 실수한 결과와 실제 평균 급여 간의 차이를 계산하는 데 도움을 청하고 있습니다.
실제 평균 급여와의 차이를 계산하고, 그 값을 다음 정수로 올림 처리하는 쿼리를 작성하세요.
*/

SELECT CEIL(AVG(SALARY) - AVG(REPLACE(CAST(SALARY AS CHAR),'0',''))) FROM EMPLOYEES