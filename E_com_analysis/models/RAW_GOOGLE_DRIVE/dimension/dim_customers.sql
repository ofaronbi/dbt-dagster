SELECT 
    CUSTOMER_ID,
    PRODUCT_ID,
    FIRST_NAME,
    LAST_NAME,
    PHONE_NUMBER,
    EMAIL,
    ADDRESS,
    CITY,
    STATE,
    POSTAL_CODE,
    COUNTRY	
FROM
    {{ ref("stg_customer_details") }}