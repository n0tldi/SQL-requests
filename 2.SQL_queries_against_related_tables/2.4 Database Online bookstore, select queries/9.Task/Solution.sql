SELECT genre.name_genre, SUM(buy_book.amount) AS Количество
FROM genre
    JOIN book USING (genre_id)
    JOIN buy_book USING (book_id)
GROUP BY genre.name_genre
HAVING SUM(buy_book.amount) = (SELECT MAX(Количество) AS Максимум
                               FROM (SELECT genre.name_genre, SUM(buy_book.amount) AS Количество
                                     FROM genre
                                         JOIN book USING (genre_id)
                                         JOIN buy_book USING (book_id)
                                     GROUP BY genre.name_genre) SOS);