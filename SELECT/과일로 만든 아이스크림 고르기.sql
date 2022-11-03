SELECT
    A.FLAVOR
FROM
    (SELECT
        FLAVOR,
        TOTAL_ORDER
    FROM
        FIRST_HALF
    WHERE
        TOTAL_ORDER > 3000
    ) AS A,
    (SELECT
        *
    FROM
        ICECREAM_INFO
     WHERE
        INGREDIENT_TYPE = 'fruit_based'
    ) AS B
WHERE
    A.FLAVOR = B.FLAVOR
ORDER BY
    A.TOTAL_ORDER DESC