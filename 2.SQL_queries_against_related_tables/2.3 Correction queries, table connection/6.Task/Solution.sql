DELETE FROM genre
WHERE genre_id in (select genre_id 
                          from book 
                   group by genre_id 
                   having count(amount) < 4);