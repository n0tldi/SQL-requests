select buy_id, 
ABS(DATEDIFF(date_step_end, date_step_beg)) + 0 AS Количество_дней,
IF(ABS(DATEDIFF(date_step_end, date_step_beg)) + 0 > days_delivery,
ABS(DATEDIFF(date_step_end, date_step_beg)) + 0 - days_delivery,
0) AS Опоздание
FROM city
     JOIN client USING (city_id)
     JOIN buy USING (client_id)
     JOIN buy_step USING (buy_id)
     JOIN step USING (step_id)
WHERE name_step LIKE 'Транспортировка' AND date_step_end IS NOT NULL;