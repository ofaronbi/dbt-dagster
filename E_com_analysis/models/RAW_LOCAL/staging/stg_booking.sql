SELECT
    BOOKING_ID,
    PASSENGER_ID,
    BOOKING_DATE,
    SEAT_NUMBER,
    TICKET_PRICE
FROM 
    {{ source('RAW_LOCAL', 'BOOKINGS_DATA') }}