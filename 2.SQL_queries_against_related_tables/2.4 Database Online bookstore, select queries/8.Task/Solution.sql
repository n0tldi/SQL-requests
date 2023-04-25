select DISTINCT name_client
from client
JOIN buy USING (client_id)
JOIN buy_book USING (buy_id)
JOIN book USING (book_id)
JOIN author USING (author_id)
WHERE name_author LIKE 'Достоевский%'
order by name_client;