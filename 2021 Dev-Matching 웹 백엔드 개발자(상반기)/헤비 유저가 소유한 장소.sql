SELECT
    A.ID,
    A.NAME,
    A.HOST_ID
FROM
    PLACES AS A,
    (SELECT
        ID,
        HOST_ID,
        COUNT(*) AS CNT
    FROM
        PLACES
    GROUP BY
        HOST_ID
    ) AS B
WHERE 
    B.CNT >= 2
AND 
    A.HOST_ID = B.HOST_ID
ORDER BY
    A.ID ASC