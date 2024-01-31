/*
Ketty는 Eve에게 세 개의 열(Name, Grade, Mark)을 포함하는 보고서를 생성하는 작업을 부탁했습니다.
Ketty는 8보다 낮은 학점을 받은 학생들의 이름을 원하지 않습니다. 보고서는 학점을 기준으로 내림차순으로 정렬되어야 합니다.
즉, 높은 학점이 먼저 표시되어야 합니다. 만약 동일한 학점을 받은 학생들이 여러 명 있다면,
그 학생들을 이름의 알파벳 순으로 정렬해야 합니다. 마지막으로, 학점이 8보다 낮으면 이름을 "NULL"로 사용하고,
해당 학생들을 학점을 기준으로 내림차순으로 나열해야 합니다. 만약 동일한 학점을 받은 학생들이 여러 명 있다면,
그 학생들을 점수를 오름차순으로 정렬해야 합니다.
*/

SELECT
  CASE
    WHEN G.GRADE >= 8 THEN S.NAME
    ELSE 'NULL'
  END AS Name, G.GRADE,S.MARKS
FROM STUDENTS S
LEFT JOIN GRADES G ON S.MARKS BETWEEN G.MIN_MARK AND G.MAX_MARK
ORDER BY G.GRADE DESC,NAME;
