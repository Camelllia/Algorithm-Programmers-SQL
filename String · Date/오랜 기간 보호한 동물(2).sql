SELECT
    A.ANIMAL_ID,
    A.NAME
FROM
    (SELECT
        ANIMAL_ID,
        NAME,
        DATETIME
    FROM
        ANIMAL_INS
    ) AS A,
    (SELECT
        ANIMAL_ID,
        NAME,
        DATETIME
    FROM
        ANIMAL_OUTS
    ) AS B
WHERE 
    A.ANIMAL_ID = B.ANIMAL_ID
ORDER BY
    (B.DATETIME - A.DATETIME) DESC
LIMIT 2 OFFSET 0