/*
CITY와 COUNTRY 테이블이 주어졌을 때, 각 대륙의 이름(COUNTRY.Continent)과 해당 대륙에 속한 도시들의 평균 인구(CITY.Population)를 각각 조회하세요.
평균 인구는 가장 가까운 정수 값으로 내림하여 표시하세요.
*/

SELECT T.CONTINENT, FLOOR(AVG(C.POPULATION)) FROM CITY C 
JOIN COUNTRY T ON C.COUNTRYCODE = T.CODE
GROUP BY T.CONTINENT
