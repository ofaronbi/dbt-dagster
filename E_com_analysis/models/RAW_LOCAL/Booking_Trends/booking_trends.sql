SELECT 
    MONTHNAME(BOOKING_DATE) AS booking_month,
    COUNT(*) AS total_bookings
FROM {{ ref('stg_booking') }}
GROUP BY 1