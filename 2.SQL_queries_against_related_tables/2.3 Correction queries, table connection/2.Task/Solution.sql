INSERT INTO author (name_author)
SELECT supply.author
FROM supply
    LEFT JOIN author on supply.author = author.name_author
WHERE name_author is NULL; 
SELECT*FROM author;