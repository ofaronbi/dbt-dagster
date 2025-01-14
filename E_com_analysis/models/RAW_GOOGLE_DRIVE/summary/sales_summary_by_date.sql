SELECT 
    transaction_date,
    SUM(total_sales)::NUMBER(8,3) AS total_sales,
    SUM(TOTAL_QUANTITY) as total_quantity
FROM {{ ref("fact_sales") }}
GROUP BY 1
ORDER BY 1