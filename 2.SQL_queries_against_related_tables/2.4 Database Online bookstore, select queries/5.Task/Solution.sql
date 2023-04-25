select buy_id,name_client,sum(book.price*buy_book.amount) as Стоимость
from buy_book
join buy using(buy_id)
JOIN client using(client_id)
join book using(book_id)
Group BY buy_id,name_client
  ORDER BY buy_id;