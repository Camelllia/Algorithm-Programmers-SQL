SELECT 
    A.ANIMAL_ID,
    A.NAME
FROM 
    ANIMAL_OUTS AS A
WHERE 
    NOT EXISTS 
        (SELECT
            * 
        FROM 
            ANIMAL_INS AS B
        WHERE 
            B.ANIMAL_ID = A.ANIMAL_ID
        ORDER BY
            A.ANIMAL_ID 
        );