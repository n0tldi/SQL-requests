Select 
    sub.title,
    sum(Количество) as Количество,
    sum(Сумма) as Сумма
From (SELECT 
    book.title,
    sum(buy_book.amount) as Количество,
    sum(buy_book.amount * book.price) as Сумма
From buy_book
JOIN buy using(buy_id)
JOIN buy_step using(buy_id)
Join book using(book_id)
join step using(step_id)
where step.name_step = 'Оплата' and buy_step.date_step_end is not null
group by book.title
Union all
select 
    book.title,
    sum(buy_archive.amount) as Количество,
    sum(buy_archive.amount * buy_archive.price) as Сумма
from buy_archive
join book using(book_id)
group by book.title) as sub
group by sub.title
order by Сумма desc