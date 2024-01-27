/*
A,B,C의 값이 주어집니다.
3개의 변 길이가 모두 같을 때는 Equilateral
2개의 변 길이가 같을 때는 Isosceles
3개의 변 길이가 모두 다를 때는 Scalene
2개의 변 합이 나머지 변의 크기보다 작거나 같으면 Not A Triangle
출력되게 하세요.
*/

SELECT 
    CASE
    WHEN A+B <= C OR A+C <= B OR B+C <= A THEN 'Not A Triangle'
    WHEN A = B AND A = C AND B = C THEN'Equilateral'
    WHEN A = B OR A = C OR B = C THEN 'Isosceles'
    ELSE 'Scalene'
END
FROM TRIANGLES