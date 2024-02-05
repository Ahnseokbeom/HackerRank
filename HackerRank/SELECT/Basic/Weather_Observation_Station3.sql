/* 
ID 번호가 짝수인 도시에 대해 STATION에서 CITY 이름 목록을 쿼리합니다.
결과를 어떤 순서로든 인쇄하되, 답에서 중복된 내용은 제외하세요.
*/

SELECT DISTINCT(CITY) FROM STATION
WHERE MOD(ID,2)=0;









