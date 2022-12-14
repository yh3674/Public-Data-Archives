-- [Intedned Approach]

-- SELECT HOUR(DATETIME), COUNT(DATETIME) AS Count
-- FROM ANIMAL_OUTS
-- ORDER BY DATETIME;       ===> HOUR(DATETIME)	Count
 --                                   11	    100

 -- [Corrected Approach]

SELECT HOUR(DATETIME) as Hour, COUNT(DATETIME)
FROM ANIMAL_OUTS
WHERE Hour(DATETIME) BETWEEN 9 AND 19
GROUP BY Hour
ORDER BY HOUR ASC;