CREATE TABLE fine
(
    fine_id        INT PRIMARY KEY AUTO_INCREMENT,
    name           VARCHAR(30),
    number_plate   VARCHAR(6),
    violation      VARCHAR(50),
    sum_fine       DECIMAL(8, 2),
    date_violation DATE,
    date_payment   DATE
);

INSERT INTO fine (fine_id, name, number_plate, violation, sum_fine, date_violation, date_payment)
VALUES
  (NULL, 'Баранов П.Е.', 'Р523ВТ', 'Превышение скорости(от 40 до 60)', '500.00', '2020-01-12', '2020-01-17'),
  (NULL, 'Абрамова К.А.', 'О111АВ', 'Проезд на запрещающий сигнал', '1000.00', '2020-01-14', '2020-02-27'),
  (NULL, 'Яковлев Г.Р.', 'Т330ТТ', 'Превышение скорости(от 20 до 40)', '500.00', '2020-01-23', '2020-02-23'),
  (NULL, 'Яковлев Г.Р.', 'М701АА', 'Превышение скорости(от 20 до 40)', NULL, '2020-01-12',  NULL),
  (NULL, 'Колесов С.П.', 'К892АХ', 'Превышение скорости(от 20 до 40)', NULL, '2020-02-01',  NULL),
  (NULL,'Баранов П.Е.', 'Р523ВТ', 'Превышение скорости(от 40 до 60)', null, '2020-02-14', null),
  (NULL,'Абрамова К.А.', 'О111АВ', 'Проезд на запрещающий сигнал', null, '2020-02-23', null),
  (NULL,'Яковлев Г.Р.', 'Т330ТТ', 'Проезд на запрещающий сигнал', null, '2020-03-03', null);

CREATE TABLE traffic_violation
(
    violation_id        INT PRIMARY KEY AUTO_INCREMENT,
    violation           VARCHAR(50),
    sum_fine            DECIMAL(8, 2)
);

INSERT INTO traffic_violation (violation_id, violation, sum_fine)
VALUES
  (NULL, 'Превышение скорости(от 20 до 40)', 500.00),
  (NULL, 'Превышение скорости(от 40 до 60)', 1000.00),
  (NULL, 'Проезд на запрещающий сигнал', 1000.00);


       
       
