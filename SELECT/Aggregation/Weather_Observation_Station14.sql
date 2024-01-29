/*
LAT_N 값 중에서 137.2345보다 작은 값 중 최댓값을 구하시오.
출력 값은 소수점 이하 4자리에서 반올림 하시오.
*/

SELECT ROUND(MAX(LAT_N),4) FROM STATION
WHERE LAT_N < 137.2345