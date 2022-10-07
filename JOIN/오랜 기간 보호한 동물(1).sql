SELECT
    NAME,
    DATETIME
FROM
    ANIMAL_INS AS A
WHERE
    NOT EXISTS
            (SELECT 
                *
             FROM
                ANIMAL_OUTS AS B
             WHERE
                B.ANIMAL_ID = A.ANIMAL_ID
            )
ORDER BY
    A.DATETIME
LIMIT
    3