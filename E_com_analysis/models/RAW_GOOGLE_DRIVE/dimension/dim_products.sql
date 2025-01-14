SELECT
    PRODUCT_ID,
    PRODUCT_NAME,
    PRICE,
    BRAND,
    CATEGORY,
    WEIGHT,
    QUANTITY_IN_STOCK,
    COUNTRY_OF_ORIGIN,
    EXPIRATION_DATE
FROM 
    {{ ref("stg_product_catalog") }}