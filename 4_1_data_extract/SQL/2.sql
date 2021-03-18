/*
Посчитайте отправленные в сентябре рейсы самолётов следующих моделей:
- Boeing,
- Airbus,
- другие (“other”).
Назовите получившуюся переменную flights_amount и выведите её значение на экран.
*/

SELECT 
    CASE
        WHEN aircrafts.model LIKE '%Boeing%' THEN 'Boeing'
        WHEN aircrafts.model LIKE '%Airbus%' THEN 'Airbus'
        ELSE 'other'
    END AS type_aircraft,
    count(*) AS flights_amount
FROM flights
JOIN aircrafts ON flights.aircraft_code = aircrafts.aircraft_code
WHERE
    DATE_TRUNC('month', flights.departure_time) = '2018-09-01'
GROUP BY type_aircraft