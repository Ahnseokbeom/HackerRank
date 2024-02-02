/*
이 문제는 OCCUPATIONS 테이블에서 직업(Occupation)에 따른 이름(Name)들을 알파벳 순서로 피벗하여 출력하는 것을 요구합니다.
출력 결과의 열 헤더는 Doctor, Professor, Singer, Actor가 되어야 합니다.
피벗 결과에서는 각 직업에 해당하는 이름들이 알파벳 순서로 정렬되어 표시되어야 하며, 만약 한 직업에 해당하는 이름이 더 이상 없다면 NULL을 출력해야 합니다.
즉, 출력 결과는 다음과 같은 형태가 되어야 합니다:
Doctor   Professor   Singer   Actor
-----------------------------------
Name1    NameA       NameX    NameI
Name2    NameB       NameY    NameJ
NULL     NameC       NULL     NULL

이 때, 각 열은 해당 직업에 속하는 이름들을 나타내며, 알파벳 순서로 정렬되어야 합니다.
만약 어떤 직업에 해당하는 이름이 더 이상 없다면 해당 열은 NULL 값으로 채워져야 합니다.
*/

SELECT
    MAX(Doctor) AS Doctor,
    MAX(Professor) AS Professor,
    MAX(Singer) AS Singer,
    MAX(Actor) AS Actor
FROM (
    SELECT
        CASE WHEN OCCUPATION = 'DOCTOR' THEN NAME END AS Doctor,
        CASE WHEN OCCUPATION = 'PROFESSOR' THEN NAME END AS Professor,
        CASE WHEN OCCUPATION = 'SINGER' THEN NAME END AS Singer,
        CASE WHEN OCCUPATION = 'ACTOR' THEN NAME END AS Actor,
        ROW_NUMBER() OVER (PARTITION BY OCCUPATION ORDER BY NAME) AS row_num
    FROM OCCUPATIONS
) AS PIVOT_TABLE
GROUP BY row_num;
