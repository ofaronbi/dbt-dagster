SELECT 
    fd.FLIGHT_ID,
    fd.FLIGHT_NUMBER,
    ac.AIRCRAFT_NUMBER,
    ac.TAIL_NUMBER,
    ac.CAPACITY,
    AVG(DATEDIFF("minute", fd.ARRIVAL_TIME, fd.DEPARTURE_TIME)) AS avg_flight_duration
FROM {{ ref("stg_flight") }} fd 
INNER JOIN {{ ref("stg_aircraft") }} ac ON fd.AIRCRAFT_NUMBER = ac.AIRCRAFT_NUMBER
GROUP BY 1,2,3,4,5
HAVING avg_flight_duration > 0