SELECT city, COUNT (airport_code) AS airports_count
FROM airports_data 
group by city
HAVING COUNT (airport_code) > 1
