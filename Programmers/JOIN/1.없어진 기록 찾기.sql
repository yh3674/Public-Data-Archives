-- [Attempted Approach]

--SELECT ANIMAL_INS.ANIMAL_ID, ANIMAL_OUTS.ANIMAL_ID, NAME 
--FROM ANIMAL_OUTS
--INNER JOIN ANIMAL_INS
--ON 

-- [Correct Approach] ANIMAL_ID, NAME 

SELECT ANIMAL_OUTS.ANIMAL_ID, ANIMAL_OUTS.NAME
FROM ANIMAL_OUTS 
    LEFT JOIN ANIMAL_INS
        ON ANIMAL_OUTS.ANIMAL_ID = ANIMAL_INS.ANIMAL_ID
WHERE ANIMAL_INS.NAME IS NULL
ORDER BY ANIMAL_OUTS ASC
;