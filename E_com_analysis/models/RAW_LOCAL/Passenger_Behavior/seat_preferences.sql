SELECT 
    SEAT_NUMBER,
    COUNT(SEAT_NUMBER) AS SEAT_COUNT
FROM 
    {{ ref("stg_booking") }}
GROUP BY 1