SELECT title, author
FROM book
WHERE (price BETWEEN 540.5 AND 800.00)
AND amount 
IN (2, 3, 5, 7);