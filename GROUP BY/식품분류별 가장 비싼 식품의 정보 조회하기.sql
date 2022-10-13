SELECT
    A.CATEGORY,
    B.MAX_PRICE,
    A.PRODUCT_NAME
FROM
    (SELECT
        *
     FROM
        FOOD_PRODUCT
    ) AS A,
    (SELECT
        PRODUCT_ID,
        CATEGORY,
        MAX(PRICE) AS MAX_PRICE
     FROM
        FOOD_PRODUCT
     WHERE 
        CATEGORY
            IN ('국', '과자', '김치', '식용유')
     GROUP BY
        CATEGORY
    ) AS B
WHERE
    A.CATEGORY = B.CATEGORY
AND
    A.PRICE = B.MAX_PRICE
ORDER BY
    MAX_PRICE DESC