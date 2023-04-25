select city, count(*) as Количество
from trip
group by city
order by city asc;
