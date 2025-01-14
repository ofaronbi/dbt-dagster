WITH passenger AS (
    SELECT 
        C1 AS passenger_id, 
        C2 AS first_name,
        C3 AS last_name,
        C4 AS email,
        C5 AS phone_number,
        C6 AS booking_id,
        ROW_NUMBER() OVER (ORDER BY C1) as ROW_NUMBER
    FROM {{ source('RAW_LOCAL', 'PASSENGERS_DATA') }}
)
SELECT 
    passenger_id,
    first_name,
    last_name,
    email,
    phone_number,
    booking_id
FROM passenger
WHERE ROW_NUMBER > 1

					
