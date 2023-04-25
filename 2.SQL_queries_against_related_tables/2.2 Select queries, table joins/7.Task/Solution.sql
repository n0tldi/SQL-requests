SELECT title, name_author, name_genre, price, amount FROM
author INNER JOIN book ON author.author_id = book.author_id
INNER JOIN ( 
  SELECT genre_id FROM book 
  GROUP BY genre_id 
  HAVING SUM(amount) >= ALL ( 
     SELECT SUM(amount)
     FROM book
     GROUP BY genre_id)) query_in 
ON book.genre_id = query_in.genre_id 
INNER JOIN genre ON query_in.genre_id = genre.genre_id 
ORDER BY 1;


