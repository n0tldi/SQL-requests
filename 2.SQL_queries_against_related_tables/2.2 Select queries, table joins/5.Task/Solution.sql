SELECT name_author, SUM(amount) AS Количество
FROM 
    author LEFT JOIN book
    on author.author_id = book.author_id
GROUP BY name_author
HAVING SUM(amount) < 10 OR SUM(amount) IS NULL
ORDER BY 2;



