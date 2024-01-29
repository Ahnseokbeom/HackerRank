/* CITY 테이블에서 구역이 California인 도시의 인구 수의 평균을 구하시오. */

SELECT AVG(POPULATION) FROM CITY
WHERE DISTRICT = "California";