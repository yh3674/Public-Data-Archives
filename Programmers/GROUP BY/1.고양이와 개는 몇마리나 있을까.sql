
SELECT ANIMAL_TYPE, COUNT(*) AS count -- 고양이와 개가 각각 몇 마리인지 조회
FROM ANIMAL_INS
WHERE ANIMAL_TYPE IN ('Cat', 'Dog') -- 
GROUP BY 1 -- 1번 고양이  그룹
ORDER BY 1; -- 1번 고양이 순서대로