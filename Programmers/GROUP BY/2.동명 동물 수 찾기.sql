-- [Intended approach]
--SELECT NAME, COUNT(*) FROM ANIMAL_INS
--WHERE NAME NAME IS NOT NULL 

-- ORDER BY NAME

-- [Corrected Approach with Reference] [HAVING]
-- SELECT NAME, COUNT(NAME) FROM ANIMAL_INS 
-- WHERE NAME IS NOT NULL
-- GROUP BY NAME HAVING COUNT (NAME) >= 2 -- 1일 경우, 거의 모든 동물의 이름
                                        -- 2일 경우, 2번 이상 겹치는 동물의 이름이 출력
--ORDER BY NAME;

-- [Corrected Approach with Reference] [Alias]

SELECT NAME, CTable.COUNT
    FROM(
        SELECT NAME, COUNT(ANIMAL_ID) AS COUNT
        FROM ANIMAL_INS
        WHERE NAME IS NOT NULL
        GROUP BY NAME
        ) CTable
    WHERE CTable.COUNT >=2
ORDER BY NAME;