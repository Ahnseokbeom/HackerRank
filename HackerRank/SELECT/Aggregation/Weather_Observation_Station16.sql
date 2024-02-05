/*
STATION 테이블에서 38.7780보다 큰 LAT_N 값 중 가장 작은 LAT_N 값을 조회하세요.
그리고 그 결과를 소수점 이하 어디까지 나타낼 것인지에 따라 반올림하여 표시하세요.
*/

SELECT MIN(ROUND(LAT_N,4)) FROM STATION
WHERE LAT_N > 38.7780
