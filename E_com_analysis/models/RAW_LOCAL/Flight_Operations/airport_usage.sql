SELECT 
    DEPARTURE_AIRPORT,
    COUNT(DEPARTURE_AIRPORT) AS USAGE
FROM {{ ref('stg_flight') }}
GROUP BY 1