/*
STATION 테이블에서 137.2345보다 작은 LAT_N 값 중 가장 큰 LAT_N에 해당하는 LONG_W 값을 조회하세요.
그리고 그 결과를 소수점 이하 어디까지 나타낼 것인지에 따라 반올림하여 표시하세요.
*/

SELECT ROUND(LONG_W,4) FROM STATION WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC LIMIT 1