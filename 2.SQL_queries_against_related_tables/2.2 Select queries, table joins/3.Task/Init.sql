
CREATE TABLE genre
(
  genre_id     INT PRIMARY KEY AUTO_INCREMENT,
  name_genre   VARCHAR(30) 
);

INSERT INTO genre (genre_id, name_genre)
VALUES (1, 'Роман'),
       (2, 'Поэзия'),
       (3, 'Приключения');

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
       (5, 'Лермонтов М.Ю.');

CREATE TABLE city
(
  city_id     INT PRIMARY KEY AUTO_INCREMENT,
  name_city   VARCHAR(30) 
);

INSERT INTO city (city_id, name_city)
VALUES (1, 'Москва'),
       (2, 'Санкт-Петербург'),
       (3, 'Владивосток');




