WITH iarport AS (
    SELECT
        AIRPORT_ID,
        AIRPORT_CODE,
        AIRPORT_NAME,
        CITY,
        COUNTRY
    FROM {{ source('RAW_LOCAL', 'AIRPORTS_DATA') }}
),
add_FLIGHT_NUMBER AS(
    SELECT 
        AIRCRAFT_ID,
        FLIGHT_NUMBER 
    FROM {{ source('RAW_LOCAL', 'AIRCRAFT_DATA') }}
)
SELECT 
    i.*,
    a.FLIGHT_NUMBER
FROM iarport i
left join add_FLIGHT_NUMBER a ON i.AIRPORT_ID = a.AIRCRAFT_ID
