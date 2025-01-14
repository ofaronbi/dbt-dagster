SELECT 
    fd.FLIGHT_NUMBER,
    fd.AIRCRAFT_NUMBER,
    AVG(bd.TICKET_PRICE) AS AVG_TICKET_PRICE
FROM {{ ref("stg_flight") }} fd 
INNER JOIN {{ ref("stg_booking") }} bd ON fd.FLIGHT_NUMBER = bd.BOOKING_ID
GROUP BY 1, 2