CREATE TABLE book 
(
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50),
    author VARCHAR(30),
    price DECIMAL(8, 2),
    amount INT
);
INSERT INTO book (book_id, title, author, price, amount)
VALUES (NULL, 'Мастер и Маргарита', 'Булгаков М.А.', 670.99, 3),
       (NULL, 'Белая гвардия', 'Булгаков М.А.', 540.50, 5),
       (NULL, 'Идиот', 'Достоевский Ф.М.', 460.00, 10),
       (NULL, 'Братья Карамазовы', 'Достоевский Ф.М.', 799.01, 3),
       (NULL, 'Игрок', 'Достоевский Ф.М.', 480.50, 10),
       (NULL, 'Стихотворения и поэмы', 'Есенин С.А.', 650.00, 15);


 CREATE TABLE supply 
(
    supply_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50),
    author VARCHAR(30),
    price DECIMAL(8, 2),
    amount INT
);
INSERT INTO supply (supply_id, title, author, price, amount)
VALUES (NULL, 'Лирика', 'Пастернак Б.Л.', 518.99, 2),
       (NULL, 'Черный человек', 'Есенин С.А.', 570.20, 6),
       (NULL, 'Белая гвардия', 'Булгаков М.А..', 540.50, 7),
       (NULL, 'Идиот', 'Достоевский Ф.М.', 360.80, 3);
       
       
