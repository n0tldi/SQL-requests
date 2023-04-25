SELECT title, author       
FROM book 
WHERE title LIKE '_% _%'
    AND (author LIKE "% С._." OR author LIKE "% _.С.")
ORDER BY title; 