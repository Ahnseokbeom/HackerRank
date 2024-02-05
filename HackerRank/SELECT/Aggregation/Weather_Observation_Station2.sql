/*
LAT_N의 모든 값의 합계는 소수점 이하 2자릿수로 반올림됩니다.
LONG_W의 모든 값의 합계는 소수점 이하 2자릿수로 반올림됩니다.
*/

SELECT ROUND(SUM(LAT_N),2), ROUND(SUM(LONG_W),2) FROM STATION