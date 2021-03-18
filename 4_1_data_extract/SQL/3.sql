/*
Посчитайте среднее количество прибывающих рейсов в день для каждого города за август 2018 года. Назовите получившееся поле average_flights, вместе с ним выведите столбец city.
Выводите столбцы в таком порядке:
- city,
- average_flights.
*/

WITH subq
AS (
    SELECT airports.city, COUNT(*) AS average_flights
    FROM flights
    JOIN airports ON flights.arrival_airport = airports.airport_code
    WHERE CAST(flights.departure_time AS date) BETWEEN '2018-08-01' AND '2018-08-31'
    GROUP BY EXTRACT(day FROM flights.arrival_time), airports.city
)
SELECT city, AVG(average_flights) AS average_flights
FROM subq
GROUP BY city
ORDER BY 1