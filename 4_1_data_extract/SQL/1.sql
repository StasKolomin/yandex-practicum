/*
Найдите количество рейсов на каждой модели самолёта с вылетом в сентябре 2018 года. Назовите получившееся поле flights_amount и выведите его. Также напечатайте на экране поле model. Столбцы в таблице должны быть выведены в следующем порядке:
- model
- flights_amount
*/

SELECT aircrafts.model, count(*) AS flights_amount
FROM flights 
INNER JOIN aircrafts ON flights.aircraft_code = aircrafts.aircraft_code
WHERE DATE_TRUNC('month', flights.departure_time) = '2018-09-01'
GROUP BY flights.aircraft_code, aircrafts.model