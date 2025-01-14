WITH raw_sales AS(
    SELECT
        ROW_NUMBER() OVER (ORDER BY TRANSACTION_ID) AS TRANSACTION_ID,
        TRANSACTION_ID AS PRODUCT_ID,
        STATUS,
        QUANTITY,
        UNIT_PRICE,
        TOTAL_PRICE,
        TRANSACTION_DATE::TIMESTAMP AS TRANSACTION_DATE,
        SHIPPING_ADDRESS,
        _FIVETRAN_SYNCED AS FIVETRAN_SYNCED_DATE
    FROM 
        {{ source('RAW_GOOGLE_DRIVE', 'TRANSACTIONAL_SALES_DATA') }}
)
SELECT
    TRANSACTION_ID,
    PRODUCT_ID,
    STATUS,
    QUANTITY,
    UNIT_PRICE,
    TOTAL_PRICE,
    CAST(REPLACE(TRANSACTION_DATE, '0021', '2023') AS TIMESTAMP) AS TRANSACTION_DATE,
    SHIPPING_ADDRESS,
    FIVETRAN_SYNCED_DATE
FROM 
    raw_sales