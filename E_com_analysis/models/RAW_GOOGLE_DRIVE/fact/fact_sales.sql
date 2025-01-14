WITH sales AS (
    SELECT
        TRANSACTION_ID,
        PRODUCT_ID,
        TRANSACTION_DATE::DATE AS TRANSACTION_DATE,
        SUM(TOTAL_PRICE) AS TOTAL_SALES,
        SUM(QUANTITY) AS TOTAL_QUANTITY,
        STATUS
    
    FROM {{ ref("stg_transactional_sales") }}
    GROUP BY 1, 2, 3, 6
)
SELECT
    *
FROM
    sales
