SELECT 
    fd.FLIGHT_NUMBER,
    fd.AIRCRAFT_NUMBER,
    SUM(bd.TICKET_PRICE) AS Revenue
FROM {{ ref("stg_flight") }} fd 
INNER JOIN {{ ref("stg_booking") }} bd ON fd.FLIGHT_NUMBER = bd.BOOKING_ID
GROUP BY 1, 2