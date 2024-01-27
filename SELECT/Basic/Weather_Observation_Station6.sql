/*
STATION에서 모음(예: a, e, i, o 또는 u)으로 시작하는 도시 이름 목록을 쿼리합니다.
결과에는 중복된 내용이 포함될 수 없습니다.
*/

SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[aeiouAEIOU]';