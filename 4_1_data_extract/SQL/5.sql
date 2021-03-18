/*
Для каждой недели с 23 июля по 30 сентября 2018 года посчитайте билеты, которые купили на рейсы в Москву (номер недели week_number и количество билетов ticket_amount). Получите таблицу:
- с количеством купленных за неделю билетов;
- отметкой, проходил ли в эту неделю фестиваль;
- название фестиваля festival_name;
- номер недели week_number.
Выводите столбцы в таком порядке: - week_number - ticket_amount - festival_week - festival_name
*/

WITH fest_msk AS
(
    SELECT festival_name, EXTRACT(week FROM festival_date) AS festival_week
    FROM festivals
    WHERE festival_date::date BETWEEN '2018-07-23' AND '2018-09-30' AND
        festival_city = 'Москва'
)
SELECT
    EXTRACT(week FROM flights.arrival_time) AS week_number,
    COUNT(*) AS ticket_amount,
    fest_msk.festival_week,
    fest_msk.festival_name
FROM ticket_flights
    JOIN flights ON ticket_flights.flight_id = flights.flight_id
    LEFT OUTER JOIN fest_msk ON fest_msk.festival_week = EXTRACT(week FROM flights.arrival_time)
WHERE flights.arrival_time::date BETWEEN '2018-07-23' AND '2018-09-30' AND
    flights.arrival_airport IN (SELECT airport_code FROM airports WHERE city = 'Москва')
GROUP BY week_number, fest_msk.festival_week, fest_msk.festival_name
ORDER BY 1