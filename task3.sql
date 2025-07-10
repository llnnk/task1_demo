SELECT departure_airport, arrival_airport, AVG (actual_departure - scheduled_departure ) AS average_delay
FROM flights
WHERE actual_departure -  scheduled_departure IS NOT NULL
GROUP BY departure_airport, arrival_airport
ORDER BY average_delay DESC