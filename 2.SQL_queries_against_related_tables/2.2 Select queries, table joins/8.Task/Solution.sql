SELECT book.title AS Название, name_author AS Автор, sum(book.amount + supply.amount) AS Количество
FROM author 
    INNER JOIN book USING (author_id)
    INNER JOIN supply ON book.title = supply.title 
                         AND author.name_author = supply.author
WHERE book.price = supply.price
GROUP BY book.title, name_author;