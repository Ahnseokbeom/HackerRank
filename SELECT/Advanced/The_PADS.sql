/*
1. OCCUPATIONS의 모든 이름을 알파벳순으로 정렬한 목록을 쿼리하고 바로 뒤에 각 직업의 첫 글자를 괄호로 묶습니다.
예: AnActorName(A), ADoctorName(D), AProfessorName(P) 및 ASingerName(S).

2. OCCUPATIONS 테이블에서 각 직업의 발생 횟수를 조회하는 쿼리를 작성하라. 발생 횟수를 오름차순으로 정렬하고,
다음의 형식으로 출력하라
There are a total of [occupation_count] [occupation]s.
*/

SELECT CONCAT(NAME,'(',SUBSTRING(UPPER(OCCUPATION),1,1),')')
FROM OCCUPATIONS
ORDER BY NAME;

SELECT CONCAT('There are a total of ',COUNT(*),' ',LOWER(OCCUPATION),'s.')
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(*),OCCUPATION;