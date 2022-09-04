-- https://school.programmers.co.kr/learn/courses/30/lessons/59044

-- 아직 입양을 못 간 동물 중, 가장 오래 보호소에 있었던 동물 3마리의 이름과 보호 시작일을 조회하는 SQL문을 작성해주세요. 
-- 이때 결과는 보호 시작일 순으로 조회해야 합니다.

-- [Attempted Approach]
SELECT ANIMAL_OUTS.NAME, ANIMAL_INS.DATETIME
FROM ANIMAL_OUTS INNER JOIN ANIMAL_INS
                    ON ANIMAL_OUTS.ANIMAL_ID  = ANIMAL_INS.ANIMAL_ID
WHERE ANIMAL_INS.DATETIME  >= 3 
ORDER BY DATETIME ASC                    
;

-- [Corrected Approach]
SELECT 
A.NAME, A.DATETIME
FROM ANIMAL_INS A
    LEFT JOIN ANIMAL_OUTS B
    ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE B.ANIMAL_ID IS NULL 
ORDER BY A.DATETIME ASC LIMIT 3