SELECT departure_airport, arrival_airport, AVG (actual_departure - scheduled_departure ) AS average_delay -- Выбираем столбцы 
FROM flights
where flights.status in ('Departed', 'Arrived') and actual_departure IS NOT null -- Выбираем только те рейсы, которые вылетили и прибыли и исключаем записи у которых нет даты вылета
GROUP BY departure_airport, arrival_airport
ORDER BY average_delay desc -- сортируем по убыванию 
