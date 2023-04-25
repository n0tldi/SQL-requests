select name, city,
DATEDIFF (date_last, date_first )+1 as Длительность
from trip
WHERE city 
NOT IN ('Москва', 'Санкт-Петербург')
order by Длительность desc, city desc;
