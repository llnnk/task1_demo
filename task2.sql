SELECT model
FROM aircrafts_data AS A
LEFT JOIN flights AS F ON A.aircraft_code = F.aircraft_code
WHERE F.aircraft_code IS NULL