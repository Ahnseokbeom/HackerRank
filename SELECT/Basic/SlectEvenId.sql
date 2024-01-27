/* 
ID 번호가 짝수인 도시에 대해 STATION에서 CITY 이름 목록을 쿼리합니다.
결과를 어떤 순서로든 인쇄하되, 답에서 중복된 내용은 제외하세요.
*/

SELECT DISTINCT(CITY) FROM STATION
WHERE MOD(ID,2)=0; 


/*Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.*/
SELECT COUNT(CITY) - COUNT(DISTINCT(CITY))
FROM STATION;

/*가장 짧고 긴 CITY 이름과 각각의 길이(예: 이름의 문자 수)를 사용하여 STATION에서 두 도시를 쿼리합니다. 가장 작은 도시나 가장 큰 도시가 두 개 이상인 경우 알파벳 순서로 가장 먼저 나오는 도시를 선택하세요.*/

SELECT CITY, LENGTH(CITY) AS CITY_LENGTH
FROM STATION
ORDER BY CITY_LENGTH, CITY
LIMIT 1;

SELECT CITY, LENGTH(CITY) AS CITY_LENGTH
FROM STATION
ORDER BY CITY_LENGTH DESC, CITY
LIMIT 1;

/* STATION에서 모음(예: a, e, i, o 또는 u)으로 시작하는 도시 이름 목록을 쿼리합니다. 결과에는 중복된 내용이 포함될 수 없습니다. */
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[aeiouAEIOU]';

/* STATION에서 모음(a, e, i, o, u)으로 끝나는 CITY 이름 목록을 쿼리합니다. 결과에는 중복된 내용이 포함될 수 없습니다. */

SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '[aeiouAEIOU]$';

/* 첫 번째 문자와 마지막 문자가 모두 모음(예: a, e, i, o 및 u)인 STATION의 CITY 이름 목록을 쿼리합니다. 결과에는 중복된 내용이 포함될 수 없습니다. */
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[aeiouAEIOU].*[aeiouAEIOU]$';

/* STATION에서 모음으로 시작하지 않는 CITY 이름 목록을 쿼리합니다. 결과에는 중복된 내용이 포함될 수 없습니다. */

SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP '^[aeiouAEIOU]';

/* STATION에서 모음으로 끝나지 않는 CITY 이름 목록을 쿼리합니다. 결과에는 중복된 내용이 포함될 수 없습니다. */

SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP '[aeiouAEIOU]$';

