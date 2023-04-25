SELECT 
ROUND(AVG(price),2) AS Средняя_цена, 
ROUND(SUM(price*amount),2) AS Стоимость
FROM book
WHERE 5 <= amount AND amount <= 14;
