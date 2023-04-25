SELECT author,title, price
FROM book
WHERE price < any (
    SELECT min(price) 
    FROM book
    GROUP BY author );
