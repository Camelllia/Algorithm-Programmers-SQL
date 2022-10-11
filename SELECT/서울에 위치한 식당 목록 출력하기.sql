SELECT
    A.*,
    B.SCORE
FROM
    (SELECT
        REST_ID,
        REST_NAME,
        FOOD_TYPE,
        FAVORITES,
        ADDRESS
     FROM
        REST_INFO
    ) AS A,
    (SELECT
        REST_ID,
        ROUND(AVG(REVIEW_SCORE), 2) AS SCORE
     FROM
        REST_REVIEW
     GROUP BY
        REST_ID
    ) AS B
WHERE
    ADDRESS
        LIKE '서울%'
AND
    A.REST_ID = B.REST_ID
ORDER BY
    B.SCORE DESC, 
    A.FAVORITES DESC