SELECT
    fd.DEPARTURE_TIME, 
    fd.ARRIVAL_TIME,
    AVG(DATEDIFF("minute", fd.DEPARTURE_TIME, fd.ARRIVAL_TIME)) AS Avg_Duration
FROM
    {{ ref('stg_flight') }} fd
GROUP BY 1, 2
HAVING AVG(DATEDIFF("minute", fd.DEPARTURE_TIME, fd.ARRIVAL_TIME)) > 0