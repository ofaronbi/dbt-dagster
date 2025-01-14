SELECT
    pd.passenger_id,
    CONCAT(pd.first_name, ' ', pd.last_name) AS FULL_NAME,
    COUNT(bd.BOOKING_ID) AS TOTAL_BOOKINGS,
    SUM(bd.TICKET_PRICE) AS TOTAL_SPENT
FROM {{ ref("stg_passenger") }} pd 
INNER JOIN {{ ref("stg_booking") }} bd 
    ON CAST(pd.booking_id as varchar) = CAST(bd.booking_id as varchar)
GROUP BY 1, 2
