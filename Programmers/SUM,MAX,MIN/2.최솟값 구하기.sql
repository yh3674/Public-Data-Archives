-- 동물 보호소에 가장 먼저 들어온 동물은 언제 들어왔는지 조회하는 SQL 문을 작성해주세요.
SELECT DATETIME AS '시간' FROM ANIMAL_INS

-- 가장 먼저 들어온 동물은 Jack이고, Jack은 2013-10-14 15:38:00에 들어왔습니다.
WHERE DATETIME = (SELECT MIN(DATETIME) FROM ANIMAL_INS) ;