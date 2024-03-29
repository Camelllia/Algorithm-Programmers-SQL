SELECT
    A.MEMBER_ID,
    A.MEMBER_NAME,
    A.GENDER,
    A.DATE_OF_BIRTH
FROM
    (SELECT
        MEMBER_ID,
        MEMBER_NAME,
        GENDER,
        DATE_OF_BIRTH,
        DATE_FORMAT(DATE_OF_BIRTH, '%c') AS MONTH
    FROM
        MEMBER_PROFILE
    WHERE
        TLNO IS NOT NULL
    ) AS A
WHERE
    A.MONTH = 3
AND
    A.GENDER = 'W'
ORDER BY
    A.MEMBER_ID