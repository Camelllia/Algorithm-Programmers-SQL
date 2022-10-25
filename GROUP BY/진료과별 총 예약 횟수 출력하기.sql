SELECT
    A.*
FROM
    (SELECT 
        MCDP_CD,
        COUNT(*) AS '5월예약건수'
     FROM
        APPOINTMENT
     WHERE
        YEAR(APNT_YMD) = 2022
     AND
        MONTH(APNT_YMD) = 5
     GROUP BY
        MCDP_CD
    ) AS A
ORDER BY
    A.5월예약건수 ASC,
    MCDP_CD ASC