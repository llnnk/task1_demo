select passenger_name, amount -- Выбираем столбцы
-- Объединяем таблицы по номеру билета (ticket_no)
from ticket_flights AS tf 
inner join tickets t on tf.ticket_no = t.ticket_no
where fare_conditions in ('Business') -- Оставляем только те строки, где пассажиры из бизнес-класса
group by passenger_name, amount
-- Оставляеис строки где стоимость билета бизнес-класса меньше среднней стоимости билета эконом-класса
having  amount < ( select AVG(amount)
from ticket_flights
where fare_conditions in ('Economy')
)
order by amount -- сортируем по цене