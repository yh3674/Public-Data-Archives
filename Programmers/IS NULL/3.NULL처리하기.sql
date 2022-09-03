

-- [Attempted Approach]
--SELECT ANIMAL_TYPE,NAME,SEX_UPON_INTAKE FROM ANIMAL_INS
--WHERE NAME IS NULL AS 'No Name'

-- [Corrected Approach]
SELECT animal_type,     
    if(name is null,"No name",name), sex_upon_intake
from animal_ins
order by animal_id;