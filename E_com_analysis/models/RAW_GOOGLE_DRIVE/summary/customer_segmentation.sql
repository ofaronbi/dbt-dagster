SELECT
    c.CUSTOMER_ID,
    c.FIRST_NAME,
    c.LAST_NAME,
    c.PHONE_NUMBER,
    c.EMAIL,
    SUM(f.total_sales) AS lifetime_value,
    COUNT(f.TRANSACTION_ID) AS transaction_count
FROM 
    {{ ref("dim_customers") }} c
JOIN 
    {{ ref("fact_sales") }} f 
    ON c.PRODUCT_ID = f.PRODUCT_ID 
GROUP BY 1, 2, 3, 4, 5 
    