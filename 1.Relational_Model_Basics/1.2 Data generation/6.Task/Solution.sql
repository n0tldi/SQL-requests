SELECT author, title, 
ROUND(
    price * 
    IF(author = 'Булгаков М.А.', 1.1, 
        IF(author = 'Есенин С.А.', 1.05, 1)), 2) 
        AS new_price
FROM book;