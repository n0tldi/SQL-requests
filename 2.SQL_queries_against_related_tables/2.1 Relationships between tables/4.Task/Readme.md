## Задание

Создать таблицу `book` той же структуры, что и на предыдущем шаге. Будем считать, что при удалении автора из таблицы `author`, должны удаляться все записи о книгах из таблицы `book`, написанные этим автором. А при удалении жанра из таблицы `genre` для соответствующей записи `book` установить значение `Null` в столбце `genre_id`. 