/* CITY 테이블에서 구역이 California인 도시의 인구 수를 더하여 출력하시오. */

SELECT SUM(POPULATION) FROM CITY
WHERE DISTRICT = "California"