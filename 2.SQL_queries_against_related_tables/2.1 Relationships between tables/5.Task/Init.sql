
--Данные занесенные в таблицу 'genre' и 'author' не являются верные, нужны для того что бы образовалась связь между ними.

CREATE TABLE genre
(
  genre_id     INT PRIMARY KEY AUTO_INCREMENT,
  name_genre   VARCHAR(30) 
);

INSERT INTO genre (genre_id, name_genre)    
VALUES (1, 'Лирика');

CREATE TABLE author
(
  author_id    INT PRIMARY KEY AUTO_INCREMENT,
  name_author  VARCHAR(30)
);
INSERT INTO author (author_id, name_author)
VALUES (1, 'Булгаков'),
       (2, 'Пушкин');

CREATE TABLE book (
    book_id INT PRIMARY KEY AUTO_INCREMENT, 
    title VARCHAR(50), 
    author_id INT NOT NULL, 
    genre_id INT,
    price DECIMAL(8,2), 
    amount INT
);

alter table book
    add constraint book_genre_genre_id
        foreign key (genre_id) references genre (genre_id);
        
alter table book
    add constraint book_author_author_id
        foreign key (author_id) references author (author_id);

INSERT INTO book (book_id, title, author_id, genre_id, price, amount)
VALUES (NULL, 'Мастер и Маргарита', 1, 1, 670.99, 3),
       (NULL, 'Белая гвардия', 1, 1, 540.50, 5),
       (NULL, 'Идиот', 2, 1, 460.00, 10),
       (NULL, 'Братья Карамазовы', 2, 1, 799.01, 3),
       (NULL, 'Игрок', 2, 1, 480.50, 10);


