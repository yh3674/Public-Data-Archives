-- https://school.programmers.co.kr/learn/courses/30/lessons/59410

-- 동물의 생물 종, 이름, 성별 및 중성화 여부를 아이디 순으로 조회하는 SQL문을 작성해주세요.
-- 이름이 없는 동물의 이름은 "No name"으로 표시

--[Attempted Approach]

SELECT ANIMAL_INS.ANIMAL_TYPE
         WHEN ANIMAL_INS IS NULL THEN "No Name"
         ELSE NAME
         END AS NAME,
       ANIMAL_INS.SEX_UPON_INTAKE
FROM ANIMAL_INS

--[Correct Approach]



SELECT A.ANIMAL_TYPE,
       CASE 
            WHEN A.NAME IS NULL THEN 'No Name'
            ELSE NAME
       END AS NAME,
       A.SEX_UPON_INTAKE
FROM ANIMAL_INS A