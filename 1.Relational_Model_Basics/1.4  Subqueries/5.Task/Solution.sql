SELECT
    title,
    author,
    amount,
    ((SELECT 
      max(amount)
      FROM book    
    ) - amount) AS Заказ
FROM book
WHERE amount != (SELECT max(amount) FROM book LIMIT 1) 
