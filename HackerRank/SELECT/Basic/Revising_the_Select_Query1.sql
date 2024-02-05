/*
인구가 100,000명 이상인 CITY 테이블의 모든 미국 도시에 대한 모든 필드를 쿼리합니다.
미국의 국가 코드는 USA입니다.
*/

SELECT * FROM CITY
WHERE POPULATION >= 100000 AND COUNTRYCODE = "USA"
