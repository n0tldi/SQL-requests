SELECT buy.buy_id, title, price, buy_book.amount 
FROM client INNER JOIN buy USING(client_id)
    INNER JOIN buy_book USING(buy_id)
    INNER JOIN book USING(book_id)
WHERE name_client ='Баранов Павел'
ORDER BY buy_id, book.title;