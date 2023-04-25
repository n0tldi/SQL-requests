CREATE TABLE supply
(
  supply_id    INT PRIMARY KEY AUTO_INCREMENT,
  title        VARCHAR(50),
  author       VARCHAR(50),
  price        DECIMAL(8,2),
  amount       INT
);

INSERT INTO supply (supply_id, title, author, price, amount)
VALUES (1, 'Доктор Живаго', 'Пастернак Б.Л.', 380.00, 4),
       (2, 'Черный человек', 'Есенин С.А.', 570.20, 12),
       (3, 'Белая гвардия', 'Булгаков М.А.', 540.50, 7),
       (4, 'Идиот', 'Достоевский Ф.М.', 360.80, 3),
       (5, 'Стихотворения и поэмы', 'Лермонтов М.Ю.', 255.90, 4),
       (6, 'Остров сокровищ', 'Стивенсон Р.Л.', 599.99, 5);


CREATE TABLE author
(
  author_id    INT PRIMARY KEY AUTO_INCREMENT,
  name_author  VARCHAR(30)
);

INSERT INTO author (author_id, name_author)
VALUES (1, 'Булгаков М.А.'),
       (2, 'Достоевский Ф.М.'),
       (3, 'Есенин С.А.'),
       (4, 'Пастернак Б.Л.'),
       (5, 'Лермонтов М.Ю.'),
       (6, 'Стивенсон Р.Л.');


CREATE TABLE genre
(
  genre_id    INT PRIMARY KEY AUTO_INCREMENT,
  name_genre  VARCHAR(30)
);

INSERT INTO genre (genre_id, name_genre)
VALUES (1, 'Роман'),
       (2, 'Поэзия'),
       (3, 'Приключения');  


CREATE TABLE book (
    book_id INT PRIMARY KEY AUTO_INCREMENT, 
    title VARCHAR(50), 
    author_id INT NOT NULL, 
    genre_id INT,
    price DECIMAL(8,2), 
    amount INT
);

INSERT INTO book (book_id, title, author_id, genre_id, price, amount)
VALUES (NULL, 'Мастер и Маргарита', 1, 1, 670.99, 3),
       (NULL, 'Белая гвардия', 1, 1, 540.50, 12),
       (NULL, 'Идиот', 2, 1 ,460.00, 13),
       (NULL, 'Братья Карамазовы', 2, 1, 799.01, 3),
       (NULL, 'Игрок', 2, 1, 480.50, 10),
       (NULL, 'Стихотворения и поэмы', 3, 2, 650.00, 15), 
       (NULL, 'Черный человек', 3, 2, 570.20, 12), 
       (NULL, 'Лирика', 4, 2, 518.99, 2);      
   





