SELECT name_author
FROM book b INNER JOIN author a
ON b.author_id=a.author_id
GROUP BY name_author
HAVING COUNT(DISTINCT(genre_id))=1



